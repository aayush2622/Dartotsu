import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Api/SharedRequests.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/CommunityList.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';

const traktPageSize = 20;

class TraktSection {
  final String title;
  final String endpoint;
  final Map<String, String> query;

  const TraktSection(this.title, this.endpoint, [this.query = const {}]);

  bool get paged => endpoint != '/movies/boxoffice';
}

List<TraktSection> traktSections(MediaType type) => switch (type) {
  MediaType.movie => const [
    TraktSection('Trending Movies', '/movies/trending'),
    TraktSection('Popular Movies', '/movies/popular'),
    TraktSection('Anticipated Movies', '/movies/anticipated'),
    TraktSection('Most Watched This Week', '/movies/watched/weekly'),
    TraktSection('Most Watched Movies This Month', '/movies/watched/monthly'),
    TraktSection('Box Office', '/movies/boxoffice'),
  ],
  _ => const [
    TraktSection('Trending Shows', '/shows/trending'),
    TraktSection('Popular Shows', '/shows/popular'),
    TraktSection('Anticipated Shows', '/shows/anticipated'),
    TraktSection('Most Watched This Week', '/shows/watched/weekly'),
    TraktSection('Most Watched Shows This Month', '/shows/watched/monthly'),
    TraktSection('Trending Anime', '/shows/trending', {'genres': 'anime'}),
    TraktSection('Popular Anime', '/shows/popular', {'genres': 'anime'}),
  ],
};

const _searchEndpoints = {
  'TRENDING_DESC': 'trending',
  'POPULARITY_DESC': 'popular',
};

Map<String, Media> _decodeLibrary(Map<String, dynamic> raw) => {
  for (final e in (raw['items'] as Map).entries)
    '${e.key}': Media.fromJson(Map<String, dynamic>.from(e.value as Map)),
};

Map<String, dynamic> _encodeLibrary(Map<String, dynamic> args) => {
  'all': args['all'],
  'items': {
    for (final e in (args['library'] as Map<String, Media>).entries)
      e.key: e.value.toJson(),
  },
};

int? _epoch(Object? iso) =>
    iso is String ? DateTime.tryParse(iso)?.millisecondsSinceEpoch : null;

List<Media> _byStatus(Iterable<Media> all, String status) => [
  for (final m in all)
    if (m.userStatus == status) m,
]..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));

class TraktQueries extends Queries {
  final TraktClient client;
  final void Function(int episodes)? onEpisodes;

  TraktQueries(this.client, {this.onEpisodes});

  String? _seen;

  late final _library = LibraryCache<Map<String, Media>>(
    load: _sync,
    ttl: const Duration(minutes: 15),
  );

  static const _diskKey = 'traktLibrary';

  void clearLibrary() {
    _seen = null;
    _library.clear();
    removeCustomData(_diskKey, location: PrefLocation.CACHE);
  }

  void invalidateLibrary() => _library.expire();

  Future<Map<String, Media>?> _readDisk() async {
    final raw = loadCustomData<Map<String, dynamic>>(
      _diskKey,
      location: PrefLocation.CACHE,
    );
    if (raw == null || raw.isEmpty) return null;
    try {
      final items = await compute(_decodeLibrary, raw);
      _seen = '${raw['all']}';
      return items;
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  Future<void> _writeDisk(Map<String, Media> library, String stamp) async {
    try {
      final blob = await compute(_encodeLibrary, {
        'all': stamp,
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

  Future<Map<String, Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const {});

  Future<String> _activity() async {
    final data = await client.get('/sync/last_activities');
    return data is Map ? '${data['all'] ?? ''}' : '';
  }

  Future<Map<String, Media>> _sync(Map<String, Media>? first) async {
    final previous = first ?? await _readDisk();
    final String stamp;
    try {
      stamp = await _activity();
    } catch (e, st) {
      logError('Queries', e, st);
      return previous ?? const {};
    }
    if (previous != null && stamp == _seen) {
      return _publish(previous, persist: false);
    }
    return _fullSync(stamp);
  }

  Future<T> _safe<T>(T fallback, Future<T> Function() load) async {
    try {
      return await load();
    } on TraktException catch (e, st) {
      logError('Queries', e, st);
      return fallback;
    }
  }

  Future<List<Map<String, dynamic>>> _rows(
    String path, {
    Map<String, String>? query,
  }) => _safe(
    const [],
    () async => jsonRows(await client.get(path, query: query)).toList(),
  );

  Future<Map<String, Media>> _fullSync(String stamp) async {
    const full = {'extended': 'full'};
    final [
      watchedMovies,
      watchedShows,
      listedMovies,
      listedShows,
      ratedMovies,
      ratedShows,
    ] = await Future.wait([
      _rows('/sync/watched/movies', query: full),
      _rows('/sync/watched/shows', query: full),
      _rows('/sync/watchlist/movies', query: full),
      _rows('/sync/watchlist/shows', query: full),
      _rows('/sync/ratings/movies'),
      _rows('/sync/ratings/shows'),
    ]);
    final library = <String, Media>{};

    for (final item in watchedMovies) {
      final m = _entry(
        item,
        TraktKind.movies,
        'COMPLETED',
        1,
        'last_watched_at',
      );
      if (m == null) continue;
      m.userCompletedAt = parseTraktDate(item['last_watched_at']);
      library[m.id] = m;
    }
    for (final item in watchedShows) {
      final watched = _watchedEpisodes(item);
      final m = _entry(
        item,
        TraktKind.shows,
        'CURRENT',
        watched,
        'last_watched_at',
      );
      if (m == null) continue;
      final total = m.anime?.totalEpisodes ?? 0;
      final ended = m.status == 'FINISHED' || m.status == 'CANCELLED';
      if (ended && total > 0 && watched >= total) m.userStatus = 'COMPLETED';
      library[m.id] = m;
    }
    for (final (kind, rows) in [
      (TraktKind.movies, listedMovies),
      (TraktKind.shows, listedShows),
    ]) {
      for (final item in rows) {
        final m = _entry(item, kind, 'PLANNING', 0, 'listed_at');
        if (m != null) library.putIfAbsent(m.id, () => m);
      }
    }
    for (final (kind, rows) in [
      (TraktKind.movies, ratedMovies),
      (TraktKind.shows, ratedShows),
    ]) {
      for (final r in rows) {
        final id = ((r[kind.itemKey] as Map?)?['ids'] as Map?)?['trakt'];
        final rating = (r['rating'] as num?)?.toInt();
        if (id != null && rating != null) {
          library[traktMediaId(kind, id)]?.userScore = rating * 10;
        }
      }
    }

    _seen = stamp;
    return _publish(library);
  }

  Media? _entry(
    Map<String, dynamic> item,
    TraktKind kind,
    String status,
    int progress,
    String stampField,
  ) => mapTraktItem(item, kind: kind)
    ?..userStatus = status
    ..userProgress = progress
    ..userUpdatedAt = _epoch(item[stampField]);

  int _watchedEpisodes(Map<String, dynamic> item) {
    var watched = 0;
    for (final season in jsonRows(item['seasons'])) {
      if (((season['number'] as num?) ?? 0) > 0) {
        watched += ((season['episodes'] as List?) ?? const []).length;
      }
    }
    return watched;
  }

  Map<String, Media> _publish(
    Map<String, Media> library, {
    bool persist = true,
  }) {
    onEpisodes?.call(
      library.values.fold<int>(0, (sum, m) => sum + (m.userProgress ?? 0)),
    );
    final stamp = _seen;
    if (persist && stamp != null) unawaited(_writeDisk(library, stamp));
    return library;
  }

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

  Future<List<Media>> _withList(List<Media> items) async {
    if (!client.hasToken || items.isEmpty) return items;
    try {
      final mine = await library();
      for (final m in items) {
        final entry = mine[m.id];
        if (entry != null) m.takeListEntry(entry);
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return items;
  }

  List<Media> _media(Object? body, {TraktKind? kind}) => [
    for (final item in jsonRows(body)) ?mapTraktItem(item, kind: kind),
  ];

  Future<List<Media>> sectionPage(TraktSection section, {int page = 1}) async {
    if (!section.paged && page > 1) return const [];
    final body = await client.get(
      section.endpoint,
      query: {
        'extended': 'full',
        ...section.query,
        if (section.paged) ...{'page': '$page', 'limit': '$traktPageSize'},
      },
      auth: false,
    );
    return _withList(_media(body));
  }

  List<TraktSection> shownSections(MediaType type) => applyLayout(
    traktSections(type),
    (s) => s.title,
    TraktPref.feedLayoutFor(type).value,
  );

  List<SectionJob> browseJobsFor(MediaType type) => [
    for (final section in shownSections(type))
      () async => titledSection(section.title, await sectionPage(section)),
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      browseJobsFor(anime ? MediaType.series : MediaType.movie);

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    recheckLibrary();

    SectionJob listed(String title, String status) =>
        () async =>
            titledSection(title, _byStatus((await library()).values, status));

    SectionJob recommended(String title, TraktKind kind) =>
        () async => titledSection(
          title,
          await _withList(
            _media(
              await client.get(
                '/recommendations/${kind.path}',
                query: {
                  'extended': 'full',
                  'limit': '$traktPageSize',
                  'ignore_watchlisted': 'true',
                },
              ),
              kind: kind,
            ),
          ),
        );

    return layoutJobs({
      'Continue Watching': listed('Continue Watching', 'CURRENT'),
      'Watchlist': listed('Watchlist', 'PLANNING'),
      'Completed': listed('Completed', 'COMPLETED'),
      'Recommended Shows': recommended('Recommended Shows', TraktKind.shows),
      'Recommended Movies': recommended('Recommended Movies', TraktKind.movies),
    }, TraktPref.homeLayout.value);
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    if (!anime) return {};
    final all = (await library()).values.toList()
      ..sort((a, b) => (b.userUpdatedAt ?? 0).compareTo(a.userUpdatedAt ?? 0));
    return groupByStatus(all, {
      'CURRENT': getString.watching,
      'PLANNING': getString.planToWatch,
      'COMPLETED': getString.completed,
    });
  }

  Future<Media?> _detail(TraktKind kind, int id) async {
    final body = await client.get(
      '/${kind.path}/$id',
      query: {'extended': 'full,images'},
      auth: false,
    );
    if (body is! Map) return null;
    final media = mapTraktItem(body.cast<String, dynamic>(), kind: kind);
    if (media == null) return null;
    await _withList([media]);
    return media;
  }

  @override
  Future<Media?> getMedia(String id) async {
    final ref = parseTraktMediaId(id);
    if (ref == null) return null;
    try {
      return await _detail(ref.$1, ref.$2);
    } on TraktException catch (e) {
      if (e.status == 404) return null;
      rethrow;
    }
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    try {
      final full = await getMedia(media.id);
      return full == null
          ? media
          : (full..cameFromContinue = media.cameFromContinue);
    } on TraktException catch (e, st) {
      logError('Queries', e, st);
      return media;
    }
  }

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    final kind = switch (results.type) {
      SearchType.MOVIES => TraktKind.movies,
      SearchType.SERIES => TraktKind.shows,
      _ => null,
    };
    if (kind == null) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    if (results.onList == true) {
      final mine = (await library()).values.where(
        (m) => m.id.startsWith('${kind.path}/'),
      );
      return searchLibrary(mine.toList(), results);
    }
    final term = results.search?.trim() ?? '';
    final year = results.seasonYear ?? results.startYear;
    final limit = (results.perPage ?? traktPageSize).clamp(1, 50);
    final listing = _searchEndpoints[results.sort] ?? 'popular';
    final body = await client.get(
      term.isEmpty ? '/${kind.path}/$listing' : '/search/${kind.itemKey}',
      query: {
        'extended': 'full',
        'page': '${results.page ?? 1}',
        'limit': '$limit',
        'query': ?(term.isEmpty ? null : term),
        'genres': ?_genreFilter(results),
        'years': ?(year == null ? null : '$year'),
        'countries': ?_country(results),
      },
      auth: false,
    );
    final found = _media(body, kind: kind);
    return results
      ..results = await _withList(found)
      ..hasNextPage = found.length >= limit;
  }

  String? _country(SearchResults results) {
    final code = results.countryOfOrigin?.toLowerCase();
    return code == null || code.isEmpty ? null : code;
  }

  String? _genreFilter(SearchResults results) {
    final genres = [
      for (final g in results.genres ?? const <String>[])
        g.toLowerCase().replaceAll(' ', '-'),
    ];
    return genres.isEmpty ? null : genres.join(',');
  }

  @override
  Future<List<Media>> getCalendarData() async => [
    for (final batch in await schedule().toList())
      for (final e in batch) e.media,
  ];

  @override
  Future<bool> getGenresAndTags() async => true;

  Future<(List<CommunityList>, bool)> communityLists(
    String source, {
    int page = 1,
    required String Function(int count) countLabel,
  }) async {
    final owned = source == 'mine' || source == 'liked';
    if (owned && !client.hasToken) return (const <CommunityList>[], false);
    if (source == 'mine' && page > 1) return (const <CommunityList>[], false);
    final body = await client.get(
      switch (source) {
        'mine' => '/users/me/lists',
        'liked' => '/users/likes/lists',
        _ => '/lists/$source',
      },
      query: {
        if (source != 'mine') ...{'page': '$page', 'limit': '$traktPageSize'},
      },
      auth: owned,
    );
    final lists = [
      for (final row in jsonRows(body)) ?mapTraktList(row, countLabel),
    ];
    return (lists, source != 'mine' && lists.length >= traktPageSize);
  }

  Future<List<Media>> listTitles(String id) async {
    final body = await client.get(
      '/lists/$id/items/movie,show',
      query: {'extended': 'full,images'},
      auth: client.hasToken,
    );
    return _withList(_media(body));
  }

  Future<Map<String, dynamic>> _people(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const {};
    final body = await client.get(
      '/${ref.$1.path}/${ref.$2}/people',
      auth: false,
    );
    return body is Map ? body.cast<String, dynamic>() : const {};
  }

  Future<List<Character>> characters(Media media) => _safe(const [], () async {
    final out = <Character>[];
    for (final c in jsonRows((await _people(media))['cast'])) {
      final person = (c['person'] as Map?)?.cast<String, dynamic>();
      final personId = (person?['ids'] as Map?)?['trakt'];
      if (personId == null) continue;
      final actor = '${person?['name'] ?? ''}';
      final roles = [
        for (final r in (c['characters'] as List?) ?? [c['character']])
          if (r is String && r.isNotEmpty) r,
      ];
      final image = traktHeadshot(personId);
      out.add(
        Character(
          id: '$personId',
          name: roles.isEmpty ? actor : roles.join(' / '),
          role: roles.isEmpty ? null : actor,
          image: image,
          voiceActor: [Author(id: '$personId', name: actor, image: image)],
        ),
      );
    }
    return out;
  });

  static const _crewOrder = [
    'created by',
    'directing',
    'writing',
    'production',
    'sound',
    'art',
  ];

  Future<List<Author>> staff(Media media) => _safe(const [], () async {
    final crew = (await _people(media))['crew'];
    if (crew is! Map) return const [];
    final seen = <Object>{};
    final out = <Author>[];
    for (final department in _crewOrder) {
      for (final m in jsonRows(crew[department])) {
        final person = (m['person'] as Map?)?.cast<String, dynamic>();
        final personId = (person?['ids'] as Map?)?['trakt'];
        final name = person?['name'];
        if (personId == null || name is! String || !seen.add(personId)) {
          continue;
        }
        final jobs = m['jobs'] as List?;
        out.add(
          Author(
            id: '$personId',
            name: name,
            role: jobs != null && jobs.isNotEmpty
                ? '${jobs.first}'
                : '${m['job'] ?? department}',
            image: traktHeadshot(personId),
          ),
        );
      }
    }
    return out.take(24).toList();
  });

  Future<List<Media>> recommendations(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return const [];
    return _safe(const [], () async {
      final body = await client.get(
        '/${ref.$1.path}/${ref.$2}/related',
        query: {'extended': 'full', 'limit': '15'},
        auth: false,
      );
      return _withList(_media(body, kind: ref.$1));
    });
  }

  @override
  Future<List<Review>> getReviews(String mediaId, {int page = 1}) async {
    final ref = parseTraktMediaId(mediaId);
    if (ref == null) return const [];
    return _safe(const [], () async {
      final body = await client.get(
        '/${ref.$1.path}/${ref.$2}/comments/likes',
        query: {'page': '$page', 'limit': '10'},
        auth: false,
      );
      return [
        for (final item in jsonRows(body))
          if (item['spoiler'] != true) _review(item, ref),
      ];
    });
  }

  Review _review(Map<String, dynamic> item, (TraktKind, int) ref) {
    final user = (item['user'] as Map?)?.cast<String, dynamic>() ?? const {};
    final rating = (item['user_rating'] as num?)?.toInt();
    return Review(
      id: (item['id'] as num?)?.toInt() ?? 0,
      mediaId: ref.$2,
      mediaType: ref.$1.path,
      body: item['comment'] as String? ?? '',
      score: rating == null ? null : rating * 10,
      rating: (item['likes'] as num?)?.toInt(),
      createdAt: _epoch(item['created_at']),
      user: User(
        id: ((user['ids'] as Map?)?['trakt'] as num?)?.toInt() ?? 0,
        name: '${user['name'] ?? user['username'] ?? ''}',
        pfp:
            (((user['images'] as Map?)?['avatar']) as Map?)?['full'] as String?,
      ),
    );
  }

  Stream<List<CalendarEntry>> schedule() async* {
    final now = DateTime.now();
    final start = '${now.year}-${_two(now.month)}-${_two(now.day)}';
    final scope = client.hasToken ? 'my' : 'all';
    yield await _safe(const <CalendarEntry>[], () async {
      final body = await client.get(
        '/calendars/$scope/shows/$start/7',
        query: {'extended': 'full'},
        auth: client.hasToken,
      );
      final out = <CalendarEntry>[];
      for (final item in jsonRows(body)) {
        final show = (item['show'] as Map?)?.cast<String, dynamic>();
        final episode = (item['episode'] as Map?)?.cast<String, dynamic>();
        final at = DateTime.tryParse(
          '${item['first_aired'] ?? episode?['first_aired'] ?? ''}',
        );
        final media = show == null
            ? null
            : mapTraktItem(show, kind: TraktKind.shows);
        if (media == null || at == null) continue;
        out.add(
          CalendarEntry(
            media: media,
            episode: (episode?['number'] as num?)?.toInt(),
            airingAt: at.toLocal(),
          ),
        );
      }
      return out..sort((a, b) => a.airingAt.compareTo(b.airingAt));
    });
  }

  String _two(int n) => n.toString().padLeft(2, '0');
}
