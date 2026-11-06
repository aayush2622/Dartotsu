import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;

import '../../../../Core/NetworkManager/NetworkManager.dart';
import '../../../../Core/Preferences/StorageManager.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/State/State.dart';
import '../../../../Model/SearchResults.dart';
import '../Data/Mapper.dart';

const _baseUrl =
    'https://raw.githubusercontent.com/itsmechinmoy/dartotsu-media-index/main';
const _maxAge = Duration(days: 7);
const _metaAge = Duration(days: 1);
const _candidates = 90;
const _searchShards = 3;
const _lookupShards = 6;
const _defaultShards = {'anime': 5, 'manga': 27};

class MediaIndexClient {
  NetworkManager get _net => find();

  final _shardOf = <String, Map<int, int>>{};
  final _loadedIds = <String, Future<void>>{};
  final _inflight = <String, Future<File?>>{};
  Future<Directory>? _dir;

  static bool canServe(SearchResults r) =>
      (r.search?.trim().isNotEmpty ?? false) &&
      r.id == null &&
      r.onList == null &&
      r.season == null &&
      r.source == null &&
      (r.tags?.isEmpty ?? true) &&
      (r.excludedTags?.isEmpty ?? true);

  Future<Media?> findById(int id) async {
    for (final kind in const ['anime', 'manga']) {
      await _loadIds(kind);
    }
    for (final kind in const ['anime', 'manga']) {
      if (_shardOf[kind]!.containsKey(id)) return _byId(kind, id, 0);
    }
    for (final kind in const ['anime', 'manga']) {
      final found = await _byId(kind, id, _lookupShards);
      if (found != null) return found;
    }
    return null;
  }

  Future<({List<Media> media, bool hasNext})?> search(
    SearchResults r, {
    required bool allowAdult,
  }) async {
    final kind = _kindOf(r);
    final titles = await _fetch('search/${kind}_titles.json', _maxAge);
    if (titles == null) return null;

    final List<int> ids;
    try {
      ids = await compute(
        _rank,
        _RankJob(titles.path, r.search!.trim(), _candidates),
      );
    } catch (_) {
      await _discard(titles);
      return null;
    }

    final records = await _records(kind, ids, _searchShards);
    final filter = _Filter(r, allowAdult);
    final matched = [
      for (final id in ids)
        if (records[id] case final rec? when filter.accepts(rec)) rec,
    ];

    final per = r.perPage ?? 30;
    final start = ((r.page ?? 1) - 1) * per;
    return (
      media: [
        for (final rec in matched.skip(start).take(per)) _toMedia(rec, kind),
      ],
      hasNext: matched.length > start + per,
    );
  }

  Future<Media?> _byId(String kind, int id, int budget) async {
    final records = await _records(kind, [id], budget);
    final rec = records[id];
    return rec == null ? null : _toMedia(rec, kind);
  }

  Media _toMedia(Map<String, dynamic> rec, String kind) =>
      mapAnilistMedia({...rec, 'type': kind == 'anime' ? 'ANIME' : 'MANGA'});

  String _kindOf(SearchResults r) =>
      r.type == SearchType.MANGA || r.type == SearchType.NOVEL
      ? 'manga'
      : 'anime';

  Future<Map<int, Map<String, dynamic>>> _records(
    String kind,
    List<int> ids,
    int budget,
  ) async {
    await _loadIds(kind);
    final shardOf = _shardOf[kind]!;
    final pending = ids.where((id) => !shardOf.containsKey(id)).toSet();

    if (pending.isNotEmpty && budget > 0) {
      final total = await _shardCount(kind);
      final known = shardOf.values.toSet();
      for (var shard = 0; shard < total && budget > 0; shard++) {
        if (known.contains(shard)) continue;
        budget--;
        await _shardFile(kind, shard);
        pending.removeWhere(shardOf.containsKey);
        if (pending.isEmpty) break;
      }
    }

    final byShard = <int, List<int>>{};
    for (final id in ids) {
      final shard = shardOf[id];
      if (shard != null) byShard.putIfAbsent(shard, () => []).add(id);
    }

    final wanted = <String, List<int>>{};
    for (final entry in byShard.entries) {
      final file = await _shardFile(kind, entry.key);
      if (file != null) wanted[file.path] = entry.value;
    }
    if (wanted.isEmpty) return const {};
    try {
      final picked = await compute(_pick, wanted);
      return {for (final rec in picked) rec['id'] as int: rec};
    } catch (_) {
      return const {};
    }
  }

  Future<File?> _shardFile(String kind, int shard) {
    final name = shard.toString().padLeft(4, '0');
    return _fetch(
      'data/$kind/$name.json',
      _maxAge,
      onDownloaded: (file) async {
        final ids = await compute(_shardIds, file.path);
        final map = _shardOf[kind] ??= {};
        map.removeWhere((_, s) => s == shard);
        for (final id in ids) {
          map[id] = shard;
        }
        await _saveIds(kind);
      },
    );
  }

  Future<int> _shardCount(String kind) async {
    final meta = await _fetch('data/meta.json', _metaAge);
    if (meta != null) {
      try {
        final json = jsonDecode(await meta.readAsString()) as Map;
        final count = (json['${kind}_shards'] as num?)?.toInt();
        if (count != null && count > 0) return count;
      } catch (_) {}
    }
    return _defaultShards[kind]!;
  }

  Future<void> _loadIds(String kind) => _loadedIds[kind] ??= () async {
    final map = _shardOf[kind] ??= {};
    final file = File(p.join((await _directory()).path, 'ids_$kind.json'));
    if (!await file.exists()) return;
    try {
      final shards = await compute(_readIds, file.path);
      for (final entry in shards.entries) {
        for (final id in entry.value) {
          map[id] = entry.key;
        }
      }
    } catch (_) {
      await file.delete();
    }
  }();

  Future<void> _saveIds(String kind) async {
    final byShard = <int, List<int>>{};
    for (final entry in _shardOf[kind]!.entries) {
      byShard.putIfAbsent(entry.value, () => []).add(entry.key);
    }
    final file = File(p.join((await _directory()).path, 'ids_$kind.json'));
    final temp = File('${file.path}.part');
    await temp.writeAsString(
      jsonEncode({for (final e in byShard.entries) '${e.key}': e.value}),
    );
    await temp.rename(file.path);
  }

  Future<Directory> _directory() => _dir ??= () async {
    final dir = await StorageManager.getDirectory(subPath: 'mediaIndex');
    return dir!;
  }();

  Future<File?> _fetch(
    String path,
    Duration maxAge, {
    Future<void> Function(File file)? onDownloaded,
  }) => _inflight[path] ??= _download(
    path,
    maxAge,
    onDownloaded,
  ).whenComplete(() => _inflight.remove(path));

  Future<File?> _download(
    String path,
    Duration maxAge,
    Future<void> Function(File file)? onDownloaded,
  ) async {
    final file = File(
      p.join((await _directory()).path, path.replaceAll('/', '_')),
    );
    final exists = await file.exists();
    if (exists &&
        DateTime.now().difference(await file.lastModified()) < maxAge) {
      return file;
    }
    try {
      final res = await _net.get('$_baseUrl/$path', decodeJson: false);
      if (res.statusCode == 200 && res.data is String) {
        final temp = File('${file.path}.part');
        await temp.writeAsString(res.data as String);
        await temp.rename(file.path);
        await onDownloaded?.call(file);
        return file;
      }
    } catch (_) {}
    return exists ? file : null;
  }

  Future<void> _discard(File file) async {
    try {
      await file.delete();
    } catch (_) {}
  }
}

class _Filter {
  final bool allowAdult;
  final String? format;
  final String? status;
  final String? country;
  final int? year;
  final List<String> genres;
  final List<String> excluded;

  _Filter(SearchResults r, this.allowAdult)
    : format = r.format?.replaceAll(' ', '_'),
      status = r.status?.replaceAll(' ', '_'),
      country = r.countryOfOrigin,
      year = r.seasonYear ?? r.startYear,
      genres = r.genres ?? const [],
      excluded = r.excludedGenres ?? const [];

  bool accepts(Map<String, dynamic> rec) {
    if (rec['isAdult'] == true && !allowAdult) return false;
    if (format != null && rec['format'] != format) return false;
    if (status != null && rec['status'] != status) return false;
    if (country != null && rec['countryOfOrigin'] != country) return false;
    if (year != null && (rec['startDate'] as Map?)?['year'] != year) {
      return false;
    }
    final own = (rec['genres'] as List?)?.cast<String>() ?? const <String>[];
    if (genres.any((g) => !own.contains(g))) return false;
    if (excluded.any(own.contains)) return false;
    return true;
  }
}

class _RankJob {
  final String path;
  final String query;
  final int limit;
  const _RankJob(this.path, this.query, this.limit);
}

List<int> _rank(_RankJob job) {
  final titles = jsonDecode(File(job.path).readAsStringSync()) as List;
  final phrase = job.query.toLowerCase();
  final words = phrase.split(RegExp(r'\s+')).where((w) => w.isNotEmpty);
  final hits = <(int, int, int)>[];
  final seen = <int>{};
  for (final entry in titles) {
    final map = entry as Map;
    if (!seen.add(map['id'] as int)) continue;
    var best = 9;
    var length = 0;
    for (final key in const ['romaji', 'english', 'native']) {
      final raw = map[key];
      if (raw is! String || raw.isEmpty) continue;
      final title = raw.toLowerCase();
      final at = title.indexOf(phrase);
      final int score;
      if (at >= 0) {
        score = title == phrase
            ? 0
            : at == 0
            ? 1
            : title[at - 1] == ' '
            ? 2
            : 3;
      } else if (words.every(title.contains)) {
        score = 4;
      } else {
        continue;
      }
      if (score < best || (score == best && title.length < length)) {
        best = score;
        length = title.length;
      }
    }
    if (best < 9) hits.add((best, length, map['id'] as int));
  }
  hits.sort((a, b) {
    final byScore = a.$1.compareTo(b.$1);
    if (byScore != 0) return byScore;
    final byLength = a.$2.compareTo(b.$2);
    return byLength != 0 ? byLength : a.$3.compareTo(b.$3);
  });
  return [for (final hit in hits.take(job.limit)) hit.$3];
}

List<int> _shardIds(String path) => [
  for (final rec in jsonDecode(File(path).readAsStringSync()) as List)
    (rec as Map)['id'] as int,
];

List<Map<String, dynamic>> _pick(Map<String, List<int>> wanted) {
  final out = <Map<String, dynamic>>[];
  for (final entry in wanted.entries) {
    final ids = entry.value.toSet();
    for (final rec in jsonDecode(File(entry.key).readAsStringSync()) as List) {
      final map = rec as Map<String, dynamic>;
      if (ids.contains(map['id'])) out.add(map);
    }
  }
  return out;
}

Map<int, List<int>> _readIds(String path) {
  final json = jsonDecode(File(path).readAsStringSync()) as Map;
  return {
    for (final entry in json.entries)
      int.parse(entry.key as String): (entry.value as List).cast<int>(),
  };
}
