import '../../../Logger.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import 'Data/Browse.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/State/State.dart';
import '../MyAnimeList/Auth.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Preferences/PrefManager.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

enum SimklSort { none, rating, watching }

class SimklSection {
  final String title;
  final String file;
  final String? type;
  final bool airing;
  final SimklSort sort;
  final List<String> moreFiles;
  final String? country;
  final String? genre;

  const SimklSection(
    this.title,
    this.file, {
    this.type,
    this.airing = false,
    this.sort = SimklSort.none,
    this.moreFiles = const [],
    this.country,
    this.genre,
  });

  const SimklSection.country(this.title, this.country)
    : file = 'tv/month_500',
      moreFiles = const ['tv/week_500', 'tv/today_500'],
      type = null,
      airing = false,
      sort = SimklSort.watching,
      genre = null;

  const SimklSection.tvGenre(this.title, this.genre)
    : file = 'tv/month_500',
      moreFiles = const ['tv/week_500', 'tv/today_500'],
      type = null,
      airing = false,
      sort = SimklSort.watching,
      country = null;

  bool matches(Map<String, dynamic> item) =>
      (type == null || item['anime_type'] == type) &&
      (!airing || item['status'] == 'ongoing') &&
      (country == null || item['country'] == country) &&
      (genre == null ||
          ((item['genres'] as List?) ?? const []).contains(genre));

  num _rating(Map<String, dynamic> item) {
    final simkl = (item['ratings'] as Map?)?['simkl'] as Map?;
    return ((simkl?['votes'] as num?) ?? 0) < 30
        ? 0
        : (simkl?['rating'] as num?) ?? 0;
  }

  void order(List<Map<String, dynamic>> items) => switch (sort) {
    SimklSort.none => null,
    SimklSort.rating => items.sort((a, b) => _rating(b).compareTo(_rating(a))),
    SimklSort.watching => items.sort(
      (a, b) => ((b['watching'] as num?) ?? 0).compareTo(
        (a['watching'] as num?) ?? 0,
      ),
    ),
  };
}

const _simklAnimeOnSeries = [
  SimklSection('Trending Anime', 'anime/today_100'),
  SimklSection('Airing Now', 'anime/today_500', airing: true),
];

List<SimklSection> simklSections(MediaType type) {
  if (SimklPref.moviesOnly.rx.value && type != MediaType.anime) {
    final all = _simklMovieSections;
    return type == MediaType.movie
        ? [
            for (final s in all)
              if (s.file.startsWith('movies/')) s,
          ]
        : [
            for (final s in all)
              if (!s.file.startsWith('movies/')) s,
            ..._simklAnimeOnSeries,
          ];
  }
  if (type != MediaType.anime) return _simklMovieSections;
  return _simklAnimeSections;
}

const _simklMovieSections = [
  SimklSection('Trending Shows Today', 'tv/today_100'),
  SimklSection('Trending Movies This Week', 'movies/week_100'),
  SimklSection('Trending Shows This Week', 'tv/week_100'),
  SimklSection('Most Watched Movies This Month', 'movies/month_100'),
  SimklSection('Most Watched Shows This Month', 'tv/month_100'),
  SimklSection('Top Rated Movies', 'movies/month_500', sort: SimklSort.rating),
  SimklSection('Top Rated Shows', 'tv/month_500', sort: SimklSort.rating),
  SimklSection.country('Korean Dramas', 'kr'),
  SimklSection.country('Chinese Dramas', 'cn'),
  SimklSection.country('Japanese Dramas', 'jp'),
  SimklSection.country('Thai Dramas', 'th'),
  SimklSection.country('Turkish Dramas', 'tr'),
  SimklSection.tvGenre('Mini Series', 'Mini-Series'),
  SimklSection('Trending Movies Today', 'movies/today_100'),
];

const _simklAnimeSections = [
  SimklSection('Trending Now', 'anime/today_100'),
  SimklSection('Trending This Week', 'anime/week_100'),
  SimklSection('Most Watched This Month', 'anime/month_100'),
  SimklSection('Airing Now', 'anime/today_500', airing: true),
  SimklSection(
    'Top Rated Series',
    'anime/month_500',
    type: 'tv',
    sort: SimklSort.rating,
  ),
  SimklSection(
    'Top Movies',
    'anime/month_500',
    type: 'movie',
    sort: SimklSort.rating,
  ),
  SimklSection(
    'Top ONA',
    'anime/month_500',
    type: 'ona',
    sort: SimklSort.rating,
  ),
  SimklSection('Most Popular', 'anime/month_500', sort: SimklSort.watching),
];

List<SimklSection> simklLayoutSections(MediaType type) => applyLayout(
  simklSections(type),
  (s) => s.title,
  switch (type) {
    MediaType.anime => SimklPref.animeLayout,
    _ when !SimklPref.moviesOnly.rx.value => SimklPref.movieLayout,
    MediaType.movie => SimklPref.movieOnlyLayout,
    _ => SimklPref.seriesLayout,
  }.value,
);

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

Map<String, Media> parseSimklLibrary(String body) {
  final data = body.isEmpty ? null : jsonDecode(body);
  final out = <String, Media>{};
  if (data is! Map<String, dynamic>) return out;
  for (final kind in SimklKind.values) {
    for (final e in (data[kind.syncKey] as List?) ?? const []) {
      final media = mapSimklListEntry((e as Map).cast<String, dynamic>(), kind);
      if (media != null) out[media.id] = media;
    }
  }
  return out;
}

Set<String> parseSimklIds(String body) {
  final data = body.isEmpty ? null : jsonDecode(body);
  final out = <String>{};
  if (data is! Map<String, dynamic>) return out;
  for (final kind in SimklKind.values) {
    for (final e in (data[kind.syncKey] as List?) ?? const []) {
      if (e is! Map) continue;
      final node = e['show'] ?? e['movie'] ?? e['anime'];
      if (node is! Map) continue;
      final id = (node['ids'] as Map?)?['simkl'];
      if (id != null) out.add(simklMediaId(kind, id));
    }
  }
  return out;
}

Map<String, dynamic> _encodeLibrary(Map<String, Object> args) => {
  'all': args['all'],
  'removed': args['removed'],
  'lang': args['lang'],
  'facts': args['facts'] == true,
  'items': {
    for (final e in (args['library'] as Map<String, Media>).entries)
      e.key: jsonDecode(jsonEncode(e.value.toJson())),
  },
};

Map<String, Media> _decodeLibrary(Map<String, dynamic> raw) => {
  for (final e in (raw['items'] as Map).entries)
    '${e.key}': Media.fromJson(Map<String, dynamic>.from(e.value as Map)),
};

class SimklQueries extends Queries {
  final SimklClient client;
  final Future<bool> Function() refreshUser;
  final void Function(int episodes)? onEpisodes;

  SimklQueries(this.client, {required this.refreshUser, this.onEpisodes});

  _Activity? _seen;
  bool _facts = false;
  DateTime? _factsTried;

  bool get _factsDue =>
      _factsTried == null ||
      DateTime.now().difference(_factsTried!) > const Duration(hours: 6);

  late final _library = LibraryCache<Map<String, Media>>(
    load: _sync,
    ttl: const Duration(minutes: 15),
  );

  static const _diskKey = 'simklLibraryEn';
  static const _oldDiskKey = 'simklLibrary';

  void clearLibrary() {
    _seen = null;
    _facts = false;
    _library.clear();
    removeCustomData(_diskKey, location: PrefLocation.CACHE);
  }

  Future<Map<String, Media>?> _readDisk() async {
    removeCustomData(_oldDiskKey, location: PrefLocation.CACHE);
    final raw = loadCustomData<Map<String, dynamic>>(
      _diskKey,
      location: PrefLocation.CACHE,
    );
    if (raw == null || raw.isEmpty) return null;
    try {
      final items = await compute(_decodeLibrary, raw);
      _seen = _Activity('${raw['all']}', '${raw['removed']}');
      _facts = raw['facts'] == true;
      if (raw['lang'] != SimklPref.titleLanguage.value) {
        _seen = null;
        _facts = false;
        return null;
      }
      return items;
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  Future<void> _writeDisk(Map<String, Media> library, _Activity seen) async {
    try {
      final blob = await compute(_encodeLibrary, {
        'all': seen.all,
        'removed': seen.removed,
        'lang': SimklPref.titleLanguage.value,
        'facts': _facts,
        'library': library,
      });
      saveCustomData<Map<String, dynamic>>(
        _diskKey,
        blob,
        location: PrefLocation.CACHE,
      );
    } catch (e, st) {
      logError('Queries', e, st);
    }
  }

  Map<String, String> get _titleQuery =>
      SimklPref.titleLanguage.value == 'romaji'
      ? const {}
      : const {'language': 'en'};

  void invalidateLibrary({bool full = false}) {
    if (full) _seen = null;
    _library.expire();
  }

  Future<Map<String, Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const {});

  Future<_Activity> _activity() async => _Activity.fromJson(
    (await client.get('/sync/activities')) as Map<String, dynamic>,
  );

  Future<Map<String, Media>> _sync(Map<String, Media>? first) async {
    final previous = first ?? await _readDisk();
    final now = await _activity();
    final before = _seen;
    if (previous == null || before == null) return _fullSync(now);
    if (now.all == before.all) {
      if (_facts || !_factsDue) return _publish(previous, persist: false);
      return _publish(await _withFacts(previous));
    }
    var library = previous;
    if (now.removed != before.removed) {
      final ids = await compute(
        parseSimklIds,
        await client.getBody(
          '/sync/all-items',
          query: {'extended': 'simkl_ids_only'},
        ),
      );
      library = {
        for (final e in library.entries)
          if (ids.contains(e.key)) e.key: e.value,
      };
    }
    final fetched = await Future.wait([
      client.getBody(
        '/sync/all-items',
        query: {'date_from': before.all, ..._titleQuery},
      ),
      _factsBody(),
    ]);
    _seen = now;
    library = {
      ...library,
      ...await compute(parseSimklLibrary, fetched[0] as String),
    };
    _keepFacts(library, fetched[1]);
    return _publish(library);
  }

  Future<Map<String, Media>> _fullSync(_Activity now) async {
    final library = <String, Media>{};
    for (final type in const ['shows', 'movies', 'anime']) {
      final body = await client.getBody(
        '/sync/all-items/$type',
        query: _titleQuery,
      );
      library.addAll(await compute(parseSimklLibrary, body));
    }
    _keepFacts(library, await _factsBody());
    _seen = now;
    return _publish(library);
  }

  Future<Object?> _factsBody() async {
    try {
      return await client.get(
            '/ratings/all',
            query: const {
              'user_watchlist': '1',
              'fields': 'simkl,release_status',
            },
          ) ??
          const [];
    } catch (e, st) {
      _factsTried = DateTime.now();
      logError('Queries', e, st);
      return null;
    }
  }

  Future<Map<String, Media>> _withFacts(Map<String, Media> library) async {
    _keepFacts(library, await _factsBody());
    return library;
  }

  void _keepFacts(Map<String, Media> library, Object? body) {
    _facts = applySimklFacts(library, body);
  }

  Map<String, Media> _publish(
    Map<String, Media> library, {
    bool persist = true,
  }) {
    onEpisodes?.call(
      library.values.fold<int>(0, (sum, m) => sum + (m.userProgress ?? 0)),
    );
    final seen = _seen;
    if (persist && seen != null) unawaited(_writeDisk(library, seen));
    return library;
  }

  Future<List<Media>> trending(SimklSection section, {int page = 1}) async {
    final files = [section.file, ...section.moreFiles];
    final datas = await Future.wait([
      for (final file in files)
        client.get('$simklData/discover/trending/$file.json', auth: false),
    ]);
    final kind = SimklKind.fromName(section.file.split('/').first);
    final seen = <Object?>{};
    final items = [
      for (final data in datas)
        for (final item in (data as List?) ?? const [])
          if (item is Map &&
              section.matches(item.cast<String, dynamic>()) &&
              seen.add((item['ids'] as Map?)?['simkl_id'] ?? item['url']))
            item.cast<String, dynamic>(),
    ];
    section.order(items);
    return _withList([
      for (final item in items.skip((page - 1) * 30).take(30))
        ?mapSimklItem(item, kind: kind),
    ]);
  }

  Future<List<Media>> _withList(List<Media> items) async {
    if (!client.hasToken) return items;
    final mine = await _safeLibrary();
    for (final m in items) {
      final entry = mine[m.id];
      if (entry != null) m.takeListEntry(entry);
    }
    return items;
  }

  List<SectionJob> jobs(MediaType type) => [
    for (final section in simklLayoutSections(type))
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
    if (mine != null) media.takeListEntry(mine);
    return media;
  }

  Future<Map<String, Media>> _safeLibrary() async {
    try {
      return await library();
    } catch (e, st) {
      logError('Queries', e, st);
      return const {};
    }
  }

  Future<List<Character>> characters(Media media) async {
    final mal = simklExtras[media]?.malId;
    if (mal == null || !media.isAnime) return const [];
    return find<MalAuth>().queries.characters(
      Media(id: 'anime/$mal', shareLink: ''),
    );
  }

  Future<List<Author>> staff(Media media) async {
    final mal = simklExtras[media]?.malId;
    if (mal == null || !media.isAnime) return const [];
    return find<MalAuth>().queries.staff(
      Media(id: 'anime/$mal', shareLink: ''),
    );
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

  DateTime? _checkedAt;

  void recheckLibrary() {
    final at = _checkedAt;
    if (at != null &&
        DateTime.now().difference(at) < const Duration(seconds: 20)) {
      return;
    }
    _checkedAt = DateTime.now();
    _library.expire();
  }

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    recheckLibrary();
    const lists = [
      ('Continue Watching', 'CURRENT'),
      ('Plan to Watch', 'PLANNING'),
      ('On Hold', 'PAUSED'),
      ('Dropped', 'DROPPED'),
    ];
    final jobs = <(String, SectionJob)>[
      for (final (title, status) in lists)
        (
          title,
          () async {
            final items = _byStatus((await library()).values, status);
            return items.isEmpty ? <String, List<Media>>{} : {title: items};
          },
        ),
    ];
    return [
      for (final j in applyLayout(
        jobs,
        (j) => j.$1,
        SimklPref.homeLayout.value,
      ))
        j.$2,
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
    return groupByStatus(all, {
      'CURRENT': getString.watching,
      'PLANNING': getString.planToWatch,
      'COMPLETED': getString.completed,
      'PAUSED': getString.onHold,
      'DROPPED': getString.dropped,
    });
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
      } catch (e, st) {
        logError('Queries', e, st);
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
    if (type == null) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    final kind = SimklKind.fromName(type)!;
    if (results.onList == true) {
      final mine = (await library()).values.where(
        (m) => m.id.startsWith('${kind.path}/'),
      );
      return searchLibrary(mine.toList(), results);
    }
    final browse = simklBrowsePath(kind, results);
    if (query.isEmpty && browse == null) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    final limit = (results.perPage ?? (query.isEmpty ? 60 : 30)).clamp(
      1,
      query.isEmpty ? 60 : 50,
    );
    final data = await client.get(
      query.isEmpty ? browse! : '/search/$type',
      query: {
        if (query.isNotEmpty) 'q': query,
        'limit': '$limit',
        'page': '${results.page ?? 1}',
      },
    );
    final found = (data as List?) ?? const [];
    var items = [
      for (final item in found)
        ?mapSimklItem((item as Map).cast<String, dynamic>(), kind: kind),
    ];
    if (query.isNotEmpty && (results.seasonYear ?? results.startYear) != null) {
      items = [
        for (final m in items)
          if (m.startDate?.year == (results.seasonYear ?? results.startYear)) m,
      ];
    }
    return results
      ..results = items
      ..hasNextPage = found.length >= limit;
  }
}

List<Map<String, Object?>> _parseCalendar(Map<String, Object?> args) {
  final file = jsonDecode(args['body'] as String);
  final start = args['start'] as int;
  final end = args['end'] as int;
  final meta = (file['metadata'] as Map?) ?? const {};
  final rows = <Map<String, Object?>>[];
  for (final e in (file['calendar'] as List?) ?? const []) {
    final at = DateTime.tryParse('${(e as Map)['date']}')
        ?.millisecondsSinceEpoch;
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
