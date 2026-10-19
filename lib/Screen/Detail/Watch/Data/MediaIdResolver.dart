import '../../../../Api/Services/Anilist/Auth.dart';
import '../../../../Api/Services/Simkl/Data/Mapper.dart';
import '../../../../Api/Services/Simkl/IdLookup.dart';
import '../../../../Logger.dart';
import '../../../../Utils/Lru.dart';
import 'Media/MediaRecord.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../Player/Engine/OnlineSubtitles.dart';
import '../../../Settings/Sync/Data/SyncIdIndex.dart';
import '../../../Settings/Sync/Data/SyncModels.dart';
import 'EpisodeMeta.dart';
import 'IdMappers.dart';
import 'TitleMatch.dart';

class MediaIdResolver {
  MediaIdResolver._();

  static final _memo = Lru<String, MetaIds>(80);
  static final _pending = <String, Future<MetaIds>>{};

  static String _key(MediaService service, Media media) =>
      'watchIds/${service.id}/${media.id}';

  static Future<MetaIds> resolve(MediaService service, Media media) {
    final key = _key(service, media);
    final hit = _memo[key];
    if (hit != null) return Future.value(hit.copy());
    return (_pending[key] ??= _lookup(service, media, key).then((ids) {
      _pending.remove(key);
      return ids;
    })).then((ids) => ids.copy());
  }

  static Future<MetaIds> _lookup(
    MediaService service,
    Media media,
    String key,
  ) async {
    final anime = media.isAnime;
    final stored = MediaRecords.of(service, media).ids;
    if (stored.isNotEmpty) {
      final ids = MetaIds.fromJson(
        Map<String, dynamic>.from(stored),
        anime: anime,
      );
      if (ids.known) return _remember(key, ids);
    }
    final ids = MetaIds(anime: anime);

    if (service.id == 'simkl') {
      final extras = simklExtras[media];
      if (extras != null) {
        ids.tvdb ??= extras.tvdbId;
        ids.tmdb ??= extras.tmdbId;
        ids.imdb ??= extras.imdbId;
        ids.mal ??= extras.malId;
      }
    }

    var map = <String, int>{};
    final adapter = service.syncAdapter;
    if (adapter != null) {
      map = adapter.idsOf(media);
      if (map[SyncKey.anilist] == null && map[SyncKey.mal] == null) {
        try {
          map = {...map, ...await adapter.foreignIds(media)};
        } catch (e) {
          logger(
            'Watch foreignIds failed: $e',
            logLevel: LogLevel.error,
            tag: 'WATCH',
          );
        }
      }
      try {
        map = (await SyncIdIndex.load()).expand(map, prefer: adapter.key);
      } catch (e) {
        logger(
          'Watch id index failed: $e',
          logLevel: LogLevel.error,
          tag: 'WATCH',
        );
      }
    }
    ids
      ..anilist = map[SyncKey.anilist]
      ..mal = map[SyncKey.mal] ?? media.malId
      ..kitsu = map[SyncKey.kitsu]
      ..simkl = map[SyncKey.simkl];
    if (!ids.known) await _byTitle(media, ids);
    if (ids.simkl == null && ids.known) {
      try {
        ids.simkl = await simklIdFromRedirect(
          mal: ids.mal,
          anilist: ids.anilist,
          kitsu: ids.kitsu,
        );
      } catch (e) {
        logger(
          'Watch simkl id failed: $e',
          logLevel: LogLevel.error,
          tag: 'WATCH',
        );
      }
    }
    if ((ids.tvdb == null || ids.imdb == null) && ids.known) {
      try {
        final mapped = await IdMappers.resolve(
          anilistId: ids.anilist,
          malId: ids.mal,
        );
        if (mapped != null) {
          ids.tvdb ??= mapped.tvdbId;
          ids.tmdb ??= mapped.tmdbId;
          ids.imdb ??= mapped.imdbId;
        }
      } catch (e) {
        logger(
          'Watch id mapper failed: $e',
          logLevel: LogLevel.error,
          tag: 'WATCH',
        );
      }
    }
    if (ids.imdb == null && ids.tvdb == null && ids.tmdb == null && media.mainName.isNotEmpty) {
      try {
        ids.imdb = await imdbIdFor(
          media.mainName,
          movie: media.format == 'MOVIE',
        );
      } catch (_) {}
    }
    logger(
      'Watch ids ${service.id}/${media.id} -> ${ids.toJson()}',
      tag: 'WATCH',
    );
    if (ids.known) {
      MediaRecords.of(service, media).ids = Map<String, Object?>.from(
        ids.toJson(),
      );
      MediaRecords.save(service, media);
    }
    return _remember(key, ids);
  }

  static MetaIds _remember(String key, MetaIds ids) {
    _memo[key] = ids;
    return ids;
  }

  static Future<void> _byTitle(Media media, MetaIds ids) async {
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
    media(search: \$search, type: ANIME) {
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
        'Watch title lookup failed: $e',
        logLevel: LogLevel.error,
        tag: 'WATCH',
      );
    }
  }
}
