import 'dart:async';

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
  final folder = simklKindOfType(type).path;
  return [
    SimklSection('Trending Now · Powered by Simkl', '$folder/today_100'),
    SimklSection('Trending This Week on Simkl', '$folder/week_100'),
    SimklSection('Most Watched This Month on Simkl', '$folder/month_100'),
  ];
}

class SimklQueries extends Queries {
  final SimklClient client;
  final Future<bool> Function() refreshUser;

  SimklQueries(this.client, {required this.refreshUser});

  Map<String, Media>? _library;
  DateTime? _libraryAt;
  Future<Map<String, Media>>? _loading;

  void clearLibrary() {
    _library = null;
    _libraryAt = null;
    _loading = null;
  }

  Future<Map<String, Media>> library() {
    if (!client.hasToken) return Future.value(const {});
    final fresh =
        _library != null &&
        _libraryAt != null &&
        DateTime.now().difference(_libraryAt!) < const Duration(minutes: 5);
    if (fresh) return Future.value(_library!);
    return _loading ??= _loadLibrary().whenComplete(() => _loading = null);
  }

  Future<Map<String, Media>> _loadLibrary() async {
    final data = await client.get('/sync/all-items/all/all');
    final out = <String, Media>{};
    if (data is Map<String, dynamic>) {
      for (final kind in SimklKind.values) {
        for (final e in (data[kind.syncKey] as List?) ?? const []) {
          final media = mapSimklListEntry(
            (e as Map).cast<String, dynamic>(),
            kind,
          );
          if (media != null) out[media.id] = media;
        }
      }
    }
    _library = out;
    _libraryAt = DateTime.now();
    return out;
  }

  Future<List<Media>> trending(SimklSection section) async {
    final data = await client.get(
      '$simklData/discover/trending/${section.file}.json',
      auth: false,
    );
    return [
      for (final item in (data as List?) ?? const [])
        ?mapSimklItem(
          (item as Map).cast<String, dynamic>(),
          kind: SimklKind.fromName((section.file.split('/').first)),
        ),
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
    if (ref == null) return null;
    return _detail(ref.$1, ref.$2);
  }

  Future<Media?> _detail(SimklKind kind, int id) async {
    final data = await client.get(
      '/${kind.path}/$id',
      query: {'extended': 'full'},
      auth: false,
    );
    if (data is! Map<String, dynamic>) return null;
    final media = mapSimklDetail(data, kind);
    if (media == null) return null;
    final mine = (await _safeLibrary())[media.id];
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

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    return [
      () async {
        final all = (await library()).values;
        final watching =
            [
              for (final m in all)
                if (m.userStatus == 'CURRENT') m,
            ]..sort(
              (a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0),
            );
        return {'Continue Watching': watching};
      },
      () async {
        final planned = [
          for (final m in (await library()).values)
            if (m.userStatus == 'PLANNING') m,
        ];
        return {'Plan to Watch': planned};
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

  Future<List<CalendarEntry>> schedule() async {
    final files = await Future.wait([
      client.get('$simklData/calendar/v2/anime.json', auth: false),
      client.get('$simklData/calendar/v2/tv.json', auth: false),
    ]);
    final start = DateTime.now().subtract(const Duration(days: 2));
    final end = DateTime.now().add(const Duration(days: 7));
    final out = <CalendarEntry>[];
    for (var i = 0; i < files.length; i++) {
      final file = files[i];
      if (file is! Map) continue;
      final kind = i == 0 ? SimklKind.anime : SimklKind.tv;
      final meta = (file['metadata'] as Map?) ?? const {};
      final cache = <String, Media?>{};
      for (final e in (file['calendar'] as List?) ?? const []) {
        final at = DateTime.tryParse('${(e as Map)['date']}')?.toLocal();
        if (at == null || at.isBefore(start) || at.isAfter(end)) continue;
        final id = '${e['simkl_id']}';
        final node = meta[id];
        if (node is! Map) continue;
        final media = cache[id] ??= mapSimklItem(
          node.cast<String, dynamic>(),
          kind: kind,
        );
        if (media == null) continue;
        out.add(
          CalendarEntry(
            media: media,
            episode: ((e['episode'] as Map?)?['episode'] as num?)?.toInt(),
            airingAt: at,
          ),
        );
      }
    }
    out.sort((a, b) => a.airingAt.compareTo(b.airingAt));
    return out;
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
      query: {'q': query, 'limit': '50', 'extended': 'full'},
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
