import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';

class SimklSection {
  final String title;
  final String file;

  const SimklSection(this.title, this.file);
}

SimklKind simklKindOfType(MediaType type) => switch (type) {
  MediaType.anime => SimklKind.anime,
  MediaType.movie => SimklKind.movies,
  _ => SimklKind.tv,
};

List<SimklSection> simklSections(MediaType type) {
  if (type != MediaType.anime) {
    return const [
      SimklSection('Trending Movies Today on Simkl', 'movies/today_100'),
      SimklSection('Trending Shows Today on Simkl', 'tv/today_100'),
      SimklSection('Trending Movies This Week on Simkl', 'movies/week_100'),
      SimklSection('Trending Shows This Week on Simkl', 'tv/week_100'),
      SimklSection(
        'Most Watched Movies This Month on Simkl',
        'movies/month_100',
      ),
      SimklSection('Most Watched Shows This Month on Simkl', 'tv/month_100'),
    ];
  }
  return const [
    SimklSection('Trending Now · Powered by Simkl', 'anime/today_100'),
    SimklSection('Trending This Week on Simkl', 'anime/week_100'),
    SimklSection('Most Watched This Month on Simkl', 'anime/month_100'),
  ];
}

class _Activity {
  final String all;
  final String removed;

  const _Activity(this.all, this.removed);

  factory _Activity.fromJson(Map<String, dynamic> json) {
    String removed(String key) =>
        '${(json[key] as Map?)?['removed_from_list'] ?? ''}';
    return _Activity(
      '${json['all'] ?? ''}',
      [removed('tv_shows'), removed('anime'), removed('movies')].join('|'),
    );
  }
}

class SimklQueries extends Queries {
  final SimklClient client;
  final Future<bool> Function() refreshUser;
  final void Function(int episodes)? onEpisodes;

  SimklQueries(this.client, {required this.refreshUser, this.onEpisodes});

  _Activity? _seen;

  late final _library = LibraryCache<Map<String, Media>>(load: _sync);

  void clearLibrary() {
    _seen = null;
    _library.clear();
  }

  void invalidateLibrary() => _library.expire();

  Future<Map<String, Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const {});

  Future<_Activity> _activity() async => _Activity.fromJson(
    (await client.get('/sync/activities')) as Map<String, dynamic>,
  );

  Future<Map<String, Media>> _sync(Map<String, Media>? previous) async {
    final now = await _activity();
    final before = _seen;
    if (previous != null && before != null) {
      if (now.all == before.all) return previous;
      if (now.removed == before.removed) {
        final delta = await client.get(
          '/sync/all-items/all/all',
          query: {'date_from': before.all},
        );
        _seen = now;
        return _publish({...previous, ..._parseLibrary(delta)});
      }
    }
    final full = await client.get('/sync/all-items/all/all');
    _seen = now;
    return _publish(_parseLibrary(full));
  }

  Map<String, Media> _publish(Map<String, Media> library) {
    onEpisodes?.call(
      library.values.fold<int>(0, (sum, m) => sum + (m.userProgress ?? 0)),
    );
    return library;
  }

  Map<String, Media> _parseLibrary(Object? data) {
    final out = <String, Media>{};
    if (data is! Map<String, dynamic>) return out;
    for (final kind in SimklKind.values) {
      for (final e in (data[kind.syncKey] as List?) ?? const []) {
        final media = mapSimklListEntry(
          (e as Map).cast<String, dynamic>(),
          kind,
        );
        if (media != null) out[media.id] = media;
      }
    }
    return out;
  }

  Future<List<Media>> trending(SimklSection section) async {
    final data = await client.get(
      '$simklData/discover/trending/${section.file}.json',
      auth: false,
    );
    final kind = SimklKind.fromName(section.file.split('/').first);
    return [
      for (final item in ((data as List?) ?? const []).take(60))
        ?mapSimklItem((item as Map).cast<String, dynamic>(), kind: kind),
    ];
  }

  List<SectionJob> jobs(MediaType type) => [
    for (final section in simklSections(type))
      () async => {section.title: await trending(section)},
  ];

  @override
  Future<bool> getUserData() async => refreshUser();

  @override
  Future<Media?> getMedia(String id) async {
    final ref = parseSimklMediaId(id);
    return ref == null ? null : _detail(ref.$1, ref.$2);
  }

  Future<Media?> _detail(SimklKind kind, int id) async {
    final results = await Future.wait([
      client.get('/${kind.path}/$id', query: {'extended': 'full'}, auth: false),
      _safeLibrary(),
    ]);
    final data = results[0];
    if (data is! Map<String, dynamic>) return null;
    final media = mapSimklDetail(data, kind);
    if (media == null) return null;
    final mine = (results[1] as Map<String, Media>)[media.id];
    if (mine != null) {
      media
        ..userStatus = mine.userStatus
        ..userProgress = mine.userProgress
        ..userScore = mine.userScore
        ..userUpdatedAt = mine.userUpdatedAt
        ..userListId = mine.userListId;
    }
    return media;
  }

  Future<Map<String, Media>> _safeLibrary() async {
    try {
      return await library();
    } catch (_) {
      return const {};
    }
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final ref = parseSimklMediaId(media.id);
    if (ref == null) return media;
    final full = await _detail(ref.$1, ref.$2);
    return full == null
        ? media
        : (full..cameFromContinue = media.cameFromContinue);
  }

  List<Media> _byStatus(Iterable<Media> all, String status) => [
    for (final m in all)
      if (m.userStatus == status) m,
  ]..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    return [
      () async => {
        'Continue Watching': _byStatus((await library()).values, 'CURRENT'),
      },
      () async => {
        'Plan to Watch': _byStatus((await library()).values, 'PLANNING'),
      },
    ];
  }

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      jobs(anime ? MediaType.anime : MediaType.series);

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    final all = [
      for (final m in (await library()).values)
        if ((parseSimklMediaId(m.id)?.$1 == SimklKind.anime) == anime) m,
    ]..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));
    const names = {
      'CURRENT': 'Watching',
      'PLANNING': 'Plan to Watch',
      'COMPLETED': 'Completed',
      'PAUSED': 'On Hold',
      'DROPPED': 'Dropped',
    };
    final out = <String, List<Media>>{};
    for (final e in names.entries) {
      final items = [
        for (final m in all)
          if (m.userStatus == e.key) m,
      ];
      if (items.isNotEmpty) out[e.value] = items;
    }
    if (all.isNotEmpty) out['All'] = all;
    return out;
  }

  Stream<List<CalendarEntry>> schedule() async* {
    final start = DateTime.now().subtract(const Duration(days: 2));
    final end = DateTime.now().add(const Duration(days: 7));
    final out = <CalendarEntry>[];
    for (final kind in [SimklKind.anime, SimklKind.tv]) {
      try {
        final body = await client.getText(
          '$simklData/calendar/v2/${kind.path}.json',
        );
        final rows = await compute(_parseCalendar, {
          'body': body,
          'start': start.millisecondsSinceEpoch,
          'end': end.millisecondsSinceEpoch,
        });
        final cache = <int, Media?>{};
        for (final row in rows) {
          final id = row['id'] as int;
          final media = cache[id] ??= mapSimklItem(
            (row['meta'] as Map).cast<String, dynamic>(),
            kind: kind,
          );
          if (media == null) continue;
          out.add(
            CalendarEntry(
              media: media,
              episode: row['episode'] as int?,
              airingAt: DateTime.fromMillisecondsSinceEpoch(row['at'] as int),
            ),
          );
        }
        yield [...out]..sort((a, b) => a.airingAt.compareTo(b.airingAt));
      } catch (_) {
        if (out.isEmpty && kind == SimklKind.tv) rethrow;
      }
    }
  }

  @override
  Future<List<Media>> getCalendarData() async => const [];

  @override
  Future<bool> getGenresAndTags() async => true;

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    final query = results.search?.trim() ?? '';
    final type = switch (results.type) {
      SearchType.ANIME => 'anime',
      SearchType.MOVIES => 'movie',
      SearchType.SERIES => 'tv',
      _ => null,
    };
    if (type == null || query.isEmpty) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    final data = await client.get(
      '/search/$type',
      query: {'q': query, 'limit': '50'},
    );
    final kind = SimklKind.fromName(type)!;
    return results
      ..results = [
        for (final item in (data as List?) ?? const [])
          ?mapSimklItem((item as Map).cast<String, dynamic>(), kind: kind),
      ]
      ..hasNextPage = false;
  }
}

List<Map<String, Object?>> _parseCalendar(Map<String, Object?> args) {
  final file = jsonDecode(args['body'] as String);
  final start = args['start'] as int;
  final end = args['end'] as int;
  final meta = (file['metadata'] as Map?) ?? const {};
  final rows = <Map<String, Object?>>[];
  for (final e in (file['calendar'] as List?) ?? const []) {
    final at = DateTime.tryParse(
      '${(e as Map)['date']}',
    )?.millisecondsSinceEpoch;
    if (at == null || at < start || at > end) continue;
    final node = meta['${e['simkl_id']}'];
    if (node is! Map) continue;
    rows.add({
      'id': (e['simkl_id'] as num).toInt(),
      'meta': node,
      'episode': ((e['episode'] as Map?)?['episode'] as num?)?.toInt(),
      'at': at,
    });
  }
  return rows;
}
