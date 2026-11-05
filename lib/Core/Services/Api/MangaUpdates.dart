import 'dart:convert';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import '../../NetworkManager/NetworkManager.dart';
import '../../State/State.dart';

class MuRelease {
  final String title;
  final String? chapter;
  final String? volume;
  final List<MuGroup> groups;
  final DateTime? date;

  const MuRelease({
    required this.title,
    this.chapter,
    this.volume,
    this.groups = const [],
    this.date,
  });

  String get number => [
    if (volume != null && volume!.isNotEmpty) 'Vol $volume',
    if (chapter != null && chapter!.isNotEmpty) 'Ch $chapter',
  ].join(' · ');
}

class MuGroup {
  final String name;
  final String? url;

  const MuGroup(this.name, [this.url]);
}

class MuSeries {
  final int id;
  final String title;
  final String url;
  final String? type;
  final String? year;
  final double? rating;
  final int? votes;
  final int? latestChapter;
  final String? status;
  final bool licensed;
  final bool completed;
  final List<String> genres;
  final List<String> publishers;

  const MuSeries({
    required this.id,
    required this.title,
    required this.url,
    this.type,
    this.year,
    this.rating,
    this.votes,
    this.latestChapter,
    this.status,
    this.licensed = false,
    this.completed = false,
    this.genres = const [],
    this.publishers = const [],
  });
}

class MuInfo {
  final MuSeries series;
  final List<MuRelease> releases;

  const MuInfo(this.series, this.releases);
}

String? _statusLine(Object? raw) {
  if (raw is! String) return null;
  final line = raw.split('\n').first.trim();
  return line.isEmpty ? null : line;
}

MuSeries parseMuSeries(Map record) => MuSeries(
  id: (record['series_id'] as num).toInt(),
  title: '${record['title']}',
  url: '${record['url'] ?? ''}',
  type: record['type'] as String?,
  year: record['year'] as String?,
  rating: (record['bayesian_rating'] as num?)?.toDouble(),
  votes: (record['rating_votes'] as num?)?.toInt(),
  latestChapter: (record['latest_chapter'] as num?)?.toInt(),
  status: _statusLine(record['status']),
  licensed: record['licensed'] == true,
  completed: record['completed'] == true,
  genres: [
    for (final g in (record['genres'] as List? ?? const []))
      if (g is Map && g['genre'] is String) g['genre'] as String,
  ],
  publishers: [
    for (final p in (record['publishers'] as List? ?? const []))
      if (p is Map && p['publisher_name'] is String)
        p['publisher_name'] as String,
  ],
);

MuRelease parseMuRelease(Map record) {
  final added = record['time_added'];
  final stamp = added is Map ? (added['timestamp'] as num?)?.toInt() : null;
  return MuRelease(
    title: '${record['title']}',
    chapter: record['chapter'] as String?,
    volume: record['volume'] as String?,
    groups: [
      for (final g in (record['groups'] as List? ?? const []))
        if (g is Map) MuGroup('${g['name']}', g['url'] as String?),
    ],
    date: stamp != null
        ? DateTime.fromMillisecondsSinceEpoch(stamp * 1000)
        : DateTime.tryParse('${record['release_date']}'),
  );
}

class MangaUpdates {
  MangaUpdates._();

  static const _base = 'https://api.mangaupdates.com/v1';
  static const _headers = {'Content-Type': 'application/json'};
  static final _cache = <String, MuInfo?>{};
  static final _pending = <String, Future<MuInfo?>>{};

  static Future<MuInfo?> lookup(
    List<String?> titles, {
    int? year,
    int? knownId,
    void Function(int id)? onMatched,
  }) {
    final key = knownId?.toString() ?? titles.whereType<String>().join('|');
    if (_cache.containsKey(key)) return Future.value(_cache[key]);
    return _pending[key] ??= _load(titles, year, knownId, onMatched)
        .then((r) => _cache[key] = r)
        .whenComplete(() {
          _pending.remove(key);
        });
  }

  static Future<MuInfo?> _load(
    List<String?> titles,
    int? year,
    int? knownId,
    void Function(int id)? onMatched,
  ) async {
    MuSeries? series;
    if (knownId != null) {
      series = await _series(knownId);
    } else {
      series = await _match(titles, year);
      if (series != null) onMatched?.call(series.id);
    }
    if (series == null) return null;
    final releases = await _releases(series.id);
    return MuInfo(series, releases);
  }

  static Future<MuSeries?> _series(int id) async {
    final res = await find<NetworkManager>().get(
      '$_base/series/$id',
      decodeJson: false,
    );
    if (!res.isOk) return null;
    final data = jsonDecode(res.body ?? '{}');
    return data is Map && data['series_id'] != null
        ? parseMuSeries(data)
        : null;
  }

  static Future<MuSeries?> _match(List<String?> titles, int? year) async {
    final names = <String>[
      for (final t in titles)
        if (t != null && t.trim().isNotEmpty) t.trim(),
    ];
    MuSeries? best;
    var bestScore = 0;
    for (final name in names.take(3)) {
      final res = await find<NetworkManager>().post(
        '$_base/series/search',
        data: jsonEncode({'search': name, 'perpage': 8}),
        headers: _headers,
        decodeJson: false,
      );
      if (!res.isOk) continue;
      final data = jsonDecode(res.body ?? '{}');
      final results = data is Map ? data['results'] as List? : null;
      for (final r in results ?? const []) {
        final record = r is Map ? r['record'] : null;
        if (record is! Map || record['series_id'] == null) continue;
        final candidate = parseMuSeries(record);
        var score = bestTitleRatio([candidate.title], names);
        if (year != null && candidate.year == '$year') score += 8;
        if (score > bestScore) {
          bestScore = score;
          best = candidate;
        }
      }
      if (bestScore >= 100) break;
    }
    return bestScore >= 85 ? best : null;
  }

  static Future<List<MuRelease>> _releases(int id) async {
    final res = await find<NetworkManager>().post(
      '$_base/releases/search',
      data: jsonEncode({
        'search': '$id',
        'search_type': 'series',
        'perpage': 50,
      }),
      headers: _headers,
      decodeJson: false,
    );
    if (!res.isOk) return const [];
    final data = jsonDecode(res.body ?? '{}');
    final results = data is Map ? data['results'] as List? : null;
    return [
      for (final r in results ?? const [])
        if (r is Map && r['record'] is Map) parseMuRelease(r['record'] as Map),
    ];
  }
}
