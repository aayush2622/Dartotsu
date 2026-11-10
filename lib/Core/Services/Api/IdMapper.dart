import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;

import '../../../Api/Services/Anilist/Auth.dart';
import '../../../Logger.dart';
import '../../../Screen/Detail/Watch/Data/EpisodeMeta.dart';
import '../../../Screen/Detail/Watch/Data/Media/MediaRecord.dart';
import '../../../Screen/Detail/Watch/Data/Providers/AniZip.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import '../../../Screen/Player/Engine/OnlineSubtitles.dart';
import '../../../Screen/Settings/Sync/Data/SyncIdIndex.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import '../../../Utils/Lru.dart';
import '../../NetworkManager/NetworkManager.dart';
import '../../Preferences/StorageManager.dart';
import '../../State/State.dart';
import '../MediaServiceController.dart';
import '../Model/Media.dart';

const _animeSource =
    'https://raw.githubusercontent.com/Fribb/anime-lists/master/anime-list-mini.json';
const _mangaSource =
    'https://raw.githubusercontent.com/itsmechinmoy/dartotsu_manga_mapper/main/manga-list-mini.json';
const _maxAge = Duration(days: 7);

class IdMapper {
  IdMapper._();

  static final _loaded = <bool, SyncIdIndex>{};
  static final _loading = <bool, Future<SyncIdIndex>>{};
  static final _learned = <bool, Map<String, Map<int, Map<String, int>>>>{
    true: {},
    false: {},
  };
  static final _memo = Lru<String, MetaIds>(120);
  static final _pending = <String, Future<MetaIds>>{};
  static final _tried = <String>{};

  static void warm() {
    for (final anime in const [true, false]) {
      unawaited(
        index(anime: anime).then<void>(
          (_) {},
          onError: (Object e) =>
              logger('Id mapper warm-up failed: $e', tag: 'IDMAP'),
        ),
      );
    }
  }

  static Future<SyncIdIndex> index({bool anime = true, bool force = false}) {
    final ready = _loaded[anime];
    if (ready != null && !force) return Future.value(ready);
    return _loading[anime] ??= _load(
      anime,
      force,
    ).whenComplete(() => _loading.remove(anime));
  }

  static Future<Directory> _dir() async =>
      (await StorageManager.getDirectory(subPath: 'sync'))!;

  static Future<File> _file(bool anime) async {
    final dir = await _dir();
    for (final old in const [
      'manga-ids.json',
      'manga-ids-2.json',
      'anime-ids.json',
    ]) {
      unawaited(_dropLegacy(File(p.join(dir.path, old))));
    }
    return File(
      p.join(dir.path, anime ? 'anime-ids-2.json' : 'manga-ids-3.json'),
    );
  }

  static Future<File> _slugFile(bool anime) async => File(
    p.join(
      (await _dir()).path,
      anime ? 'anime-slugs.json' : 'manga-slugs.json',
    ),
  );

  static Future<void> _dropLegacy(File file) async {
    try {
      if (await file.exists()) await file.delete();
    } catch (_) {}
  }

  static final _slugs = <bool, Map<String, String>>{};

  static Future<String?> animePlanetSlug(int key, {required bool anime}) async {
    var table = _slugs[anime];
    if (table == null) {
      await index(anime: anime);
      final file = await _slugFile(anime);
      table = _slugs[anime] = await file.exists()
          ? Map<String, String>.from(
              jsonDecode(await file.readAsString()) as Map,
            )
          : <String, String>{};
    }
    return table['$key'];
  }

  static Future<SyncIdIndex> _load(bool anime, bool force) async {
    final file = await _file(anime);
    final stale =
        !await file.exists() ||
        DateTime.now().difference(await file.lastModified()) > _maxAge;
    if (stale || force) {
      try {
        final res = await find<NetworkManager>().get(
          anime ? _animeSource : _mangaSource,
          decodeJson: false,
        );
        if (res.statusCode == 200 && res.data is String) {
          final flat = await compute(
            anime ? compactAnimeIndex : compactMangaIndex,
            res.data as String,
          );
          if (flat.isNotEmpty) {
            final slugs = await compute(
              anime ? compactAnimeSlugs : compactMangaSlugs,
              res.data as String,
            );
            await (await _slugFile(anime)).writeAsString(jsonEncode(slugs));
            _slugs[anime] = slugs;
            await file.writeAsString(jsonEncode(flat));
            return _loaded[anime] = SyncIdIndex(flat, anime: anime);
          }
        }
      } catch (e) {
        logger(
          'Id mapper (${anime ? 'anime' : 'manga'}) download failed: $e',
          logLevel: LogLevel.error,
          tag: 'IDMAP',
        );
      }
    }
    if (await file.exists()) {
      final flat = await compute(decodeIndex, await file.readAsString());
      return _loaded[anime] = SyncIdIndex(flat, anime: anime);
    }
    throw SyncFatal(
      'Could not download the ${anime ? 'anime' : 'manga'} ID mapping',
    );
  }

  static void learn(Map<String, int> ids, {required bool anime}) {
    final known = ids.entries.where((e) => e.value > 0).toList();
    if (known.length < 2) return;
    final table = _learned[anime]!;
    final merged = <String, int>{for (final e in known) e.key: e.value};
    for (final e in known) {
      final old = table[e.key]?[e.value];
      if (old != null) {
        for (final o in old.entries) {
          merged.putIfAbsent(o.key, () => o.value);
        }
      }
    }
    for (final e in merged.entries) {
      (table[e.key] ??= {})[e.value] = merged;
    }
  }

  static void learnItems(Iterable<SyncItem> items, {required bool anime}) {
    for (final item in items) {
      learn(item.ids, anime: anime);
    }
  }

  static Map<String, int> _withLearned(Map<String, int> ids, bool anime) {
    final table = _learned[anime]!;
    if (table.isEmpty) return ids;
    for (final e in ids.entries.toList()) {
      final hit = table[e.key]?[e.value];
      if (hit == null) continue;
      final out = {...ids};
      for (final o in hit.entries) {
        out.putIfAbsent(o.key, () => o.value);
      }
      return out;
    }
    return ids;
  }

  static Future<Map<String, int>> expand(
    Map<String, int> ids, {
    required bool anime,
    String? prefer,
  }) async {
    var out = ids;
    try {
      out = (await index(anime: anime)).expand(ids, prefer: prefer);
    } catch (e) {
      logger(
        'Id mapper expand failed: $e',
        logLevel: LogLevel.error,
        tag: 'IDMAP',
      );
    }
    return _withLearned(out, anime);
  }

  static String _key(MediaService service, Media media, Set<String> need) =>
      'ids/${service.id}/${media.id}/${(need.toList()..sort()).join(',')}';

  static Future<MetaIds> resolve(
    MediaService service,
    Media media, {
    Set<String> need = const {},
  }) {
    final key = _key(service, media, need);
    final hit = _memo[key];
    if (hit != null) return Future.value(hit.copy());
    return (_pending[key] ??= _lookup(
      service,
      media,
      need,
      key,
    ).whenComplete(() => _pending.remove(key))).then((ids) => ids.copy());
  }

  static Future<int?> resolveKey(
    MediaService service,
    Media media,
    String key,
  ) async => (await resolve(service, media, need: {key}))[key];

  static List<MediaService> get _services =>
      find<MediaServiceController>().services;

  static Future<MetaIds> _lookup(
    MediaService service,
    Media media,
    Set<String> need,
    String key,
  ) async {
    final anime = media.isAnime || media.id.startsWith('anime/');
    final record = MediaRecords.of(service, media);
    final ids = MetaIds.fromJson(
      Map<String, dynamic>.from(record.ids),
      anime: anime,
    );
    final before = jsonEncode(ids.toJson());
    final first = !ids.known;
    if (first || need.any((k) => ids[k] == null)) {
      await _gather(service, media, ids, anime, first);
      await _fill(service, media, ids, {
        ...need,
        if (first) anime ? SyncKey.simkl : SyncKey.mangabaka,
      }, anime);
    }
    final after = jsonEncode(ids.toJson());
    if (ids.known && after != before) {
      logger('Ids ${service.id}/${media.id} -> $after', tag: 'IDMAP');
      record.ids = Map<String, Object?>.from(ids.toJson());
      MediaRecords.save(service, media);
    }
    learn(ids.syncIds(), anime: anime);
    if (need.every((k) => ids[k] != null)) _memo[key] = ids;
    return ids;
  }

  static Future<void> _gather(
    MediaService service,
    Media media,
    MetaIds ids,
    bool anime,
    bool first,
  ) async {
    var map = <String, int>{...ids.syncIds()};
    final adapter = service.syncAdapter;
    if (adapter != null) {
      map = {...adapter.idsOf(media), ...map};
      adapter.contributeIds(media, ids);
      if (map[SyncKey.anilist] == null && map[SyncKey.mal] == null) {
        try {
          map = {...map, ...await adapter.foreignIds(media)};
        } catch (e) {
          logger(
            'Id mapper foreignIds failed: $e',
            logLevel: LogLevel.error,
            tag: 'IDMAP',
          );
        }
      }
    }
    map = await expand(map, anime: anime, prefer: adapter?.key);
    ids.merge(map);
    ids.mal ??= media.malId;
    if (!first) return;
    if (!ids.known) await _byTitle(media, ids, anime);
    if (anime &&
        (ids.anilist != null || ids.mal != null) &&
        (ids.anilist == null ||
            ids.mal == null ||
            ids.kitsu == null ||
            ids.simkl == null ||
            ids.imdb == null)) {
      final mapped = parseAniZipIds(await AniZipProvider.load(ids));
      ids
        ..anilist ??= mapped.anilist
        ..mal ??= mapped.mal
        ..kitsu ??= mapped.kitsu
        ..simkl ??= mapped.simkl
        ..tvdb ??= mapped.tvdb
        ..tmdb ??= mapped.tmdb
        ..imdb ??= mapped.imdb;
    }
    if (!anime && !ids.known && media.mainName.isNotEmpty) {
      ids.imdb = await imdbIdFor(
        media.mainName,
        movie: media.format == 'MOVIE',
      );
    }
  }

  static Future<void> _fill(
    MediaService service,
    Media media,
    MetaIds ids,
    Set<String> want,
    bool anime,
  ) async {
    for (final key in want) {
      if (ids[key] != null || !ids.known) continue;
      final tag = '${service.id}/${media.id}/$key';
      if (!_tried.add(tag)) continue;
      final owner = _services
          .map((s) => s.syncAdapter)
          .where(
            (a) =>
                a != null &&
                a.key == key &&
                a.canResolve &&
                a.supports(anime: anime),
          )
          .firstOrNull;
      if (owner == null) continue;
      for (final from in owner.resolveKeys) {
        final ref = ids[from];
        if (ref == null) continue;
        try {
          final (found, _) = await owner.resolveBy(from, [ref], anime: anime);
          final native = found[ref];
          if (native != null) {
            ids[key] = native;
            break;
          }
        } catch (e) {
          logger(
            'Id mapper $key lookup failed: $e',
            logLevel: LogLevel.error,
            tag: 'IDMAP',
          );
        }
      }
    }
  }

  static Future<void> _byTitle(Media media, MetaIds ids, bool anime) async {
    final names = <String?>[
      media.name,
      media.nameRomaji,
      media.userPreferredName,
      ...media.synonyms,
    ].where((n) => n != null && n.trim().isNotEmpty).toList();
    final term = media.nameRomaji?.trim().isNotEmpty == true
        ? media.nameRomaji!
        : media.mainName;
    if (term.isEmpty) return;
    try {
      final data = await anilistAuth.client.query(
        '''
query (\$search: String) {
  Page(perPage: 8) {
    media(search: \$search, type: ${anime ? 'ANIME' : 'MANGA'}) {
      id idMal synonyms title { romaji english native }
    }
  }
}''',
        variables: {'search': term},
        useToken: false,
        showErrors: false,
      );
      final list = data['Page']?['media'];
      if (list is! List) return;
      Map? best;
      var bestScore = 0;
      for (final item in list) {
        if (item is! Map) continue;
        final title = item['title'] as Map?;
        final score = bestTitleRatio(
          [
            title?['romaji'],
            title?['english'],
            title?['native'],
            ...((item['synonyms'] as List?) ?? const []),
          ].map((e) => e as String?),
          names,
        );
        if (score > bestScore) {
          bestScore = score;
          best = item;
        }
      }
      if (best != null && bestScore >= 85) {
        ids
          ..anilist = (best['id'] as num?)?.toInt()
          ..mal = (best['idMal'] as num?)?.toInt();
      }
    } catch (e) {
      logger(
        'Id mapper title lookup failed: $e',
        logLevel: LogLevel.error,
        tag: 'IDMAP',
      );
    }
  }

  static int? cachedChapters(String service, String mediaId) {
    final id = int.tryParse(mediaId.split('/').last);
    return id == null ? null : _loaded[false]?.chaptersOf(service, id);
  }
}
