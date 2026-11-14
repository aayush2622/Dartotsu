import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/ListOverlay.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Api/SharedRequests.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/Model/Calendar.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';

const comickPageSize = 20;

class ComickSection {
  final String title;
  final String endpoint;
  final Map<String, String> query;

  const ComickSection(this.title, this.endpoint, this.query);

  bool get anime => query['media_type'] == 'anime';

  bool get paged => endpoint == '/v1.0/search/';
}

const _schedule = '/anime/schedule';

const comickMangaSections = [
  ComickSection('Trending Now', '/top', {
    'type': 'trending',
    'day': '7',
    'media_type': 'manga',
  }),
  ComickSection('Top Rated', '/v1.0/search/', {
    'sort': 'rating',
    'media_type': 'manga',
  }),
  ComickSection('Most Followed', '/top', {
    'type': 'follow',
    'day': '30',
    'media_type': 'manga',
  }),
  ComickSection('Latest Updates', '/v1.0/search/', {
    'sort': 'uploaded',
    'media_type': 'manga',
  }),
];

const comickAnimeSections = [
  ComickSection('Weekly Schedule', _schedule, {'media_type': 'anime'}),
  ComickSection('Trending Anime', '/top', {
    'type': 'trending',
    'day': '7',
    'media_type': 'anime',
  }),
  ComickSection('Top Rated Anime', '/v1.0/search/', {
    'sort': 'rating',
    'media_type': 'anime',
  }),
  ComickSection('Most Followed Anime', '/top', {
    'type': 'follow',
    'day': '30',
    'media_type': 'anime',
  }),
];

List<ComickSection> comickSectionsFor(MediaType type) =>
    type == MediaType.anime ? comickAnimeSections : comickMangaSections;

Map<String, String> get comickSearchSorts => {
  'user_follow_count': getString.sortMostFollowed,
  'rating': getString.sortTopRated,
  'view': getString.sortMostViewed,
  'uploaded': getString.sortLatestUpdates,
  'created_at': getString.sortNewest,
};

const _genreKey = 'comick_genres';
const _genreIdKey = 'comick_genre_ids';
const _tagKey = 'comick_tags';

const _fallbackGenres = [
  'Action',
  'Adventure',
  'Comedy',
  'Drama',
  'Ecchi',
  'Fantasy',
  'Harem',
  'Historical',
  'Horror',
  'Isekai',
  'Josei',
  'Martial Arts',
  'Mecha',
  'Mystery',
  'Psychological',
  'Romance',
  'School Life',
  'Sci-Fi',
  'Seinen',
  'Shoujo',
  'Shounen',
  'Slice of Life',
  'Sports',
  'Supernatural',
  'Thriller',
  'Tragedy',
];

String _slug(String name) =>
    name.toLowerCase().trim().replaceAll(RegExp(r'[\s_]+'), '-');

Map<String, String> comickGenreSlugs() {
  final saved = loadCustomData<Map<String, dynamic>>(_genreKey);
  if (saved == null || saved.isEmpty) {
    return {for (final g in _fallbackGenres) g: _slug(g)};
  }
  return {for (final e in saved.entries) e.key: '${e.value}'};
}

List<String> comickGenres() => comickGenreSlugs().keys.toList();

List<String> comickTags() => loadCustomData<List<String>>(_tagKey) ?? const [];

const _statuses = {
  'RELEASING': '1',
  'FINISHED': '2',
  'CANCELLED': '3',
  'HIATUS': '4',
};

const _active = {'CURRENT', 'REPEATING'};

const _countries = {'MANHWA': 'kr', 'MANHUA': 'cn'};

class ComickQueries extends Queries {
  final ComickClient client;
  final void Function(bool anime, int progress)? onProgress;

  ComickQueries(this.client, {this.onProgress}) {
    comickGenreNames = {
      for (final e
          in (loadCustomData<Map<String, dynamic>>(_genreIdKey) ?? const {})
              .entries)
        ?int.tryParse(e.key): '${e.value}',
    };
  }

  late final _manga = LibraryCache<List<Media>>(
    load: (_) => _loadLibrary(anime: false),
  );

  late final _anime = LibraryCache<List<Media>>(
    load: (_) => _loadLibrary(anime: true),
  );

  LibraryCache<List<Media>> _cache(bool anime) => anime ? _anime : _manga;

  void invalidateLibrary() {
    _manga.expire();
    _anime.expire();
  }

  void clearLibrary() {
    _manga.clear();
    _anime.clear();
  }

  Future<List<Media>> library({bool anime = false}) =>
      client.hasToken ? _cache(anime).get() : Future.value(const []);

  Future<List<Media>> _loadLibrary({required bool anime}) async {
    final out = <Media>[];
    String? cursor;
    do {
      final body = await client.get(
        '/me/library',
        query: {
          'media_type': anime ? 'anime' : 'manga',
          'limit': '100',
          'cursor': ?cursor,
        },
      );
      if (body is! Map) break;
      out.addAll(jsonRows(body['data']).map(mapComickLibraryEntry));
      cursor = body['next_cursor'] as String?;
    } while (cursor != null && cursor.isNotEmpty);
    onProgress?.call(
      anime,
      out.fold(0, (sum, m) => sum + (m.userProgress ?? 0)),
    );
    return out;
  }

  Future<List<Media>> _withList(List<Media> items, {bool anime = false}) =>
      client.hasToken
      ? overlayEntries(items, () => library(anime: anime))
      : Future.value(items);

  List<Media> _visible(List<Media> items) => ComickPref.hideNsfw.value
      ? [
          for (final m in items)
            if (!m.isAdult) m,
        ]
      : items;

  List<Media> _media(Object? body, {String? day}) {
    final list = body is List
        ? body
        : body is Map
        ? (body['data'] ??
                  body[day] ??
                  body.values.whereType<List>().firstOrNull)
              as List?
        : null;
    final seen = <String>{};
    return [
      for (final item in jsonRows(list))
        if (seen.add('${item['hid'] ?? item['id']}')) mapComickSearchItem(item),
    ];
  }

  Future<List<Media>> sectionPage(ComickSection section, {int page = 1}) async {
    if (section.endpoint == _schedule) {
      if (page > 1) return const [];
      return _withList([
        for (final e in await schedule()) e.media,
      ], anime: true);
    }
    final body = await client.get(
      section.endpoint,
      query: {
        ...section.query,
        if (section.paged) ...{'page': '$page', 'limit': '$comickPageSize'},
      },
      cache: const Duration(minutes: 10),
    );
    var items = _media(body, day: section.query['day']);
    if (!section.paged) {
      final from = (page - 1) * comickPageSize;
      items = from >= items.length
          ? const []
          : items.sublist(from, (from + comickPageSize).clamp(0, items.length));
    }
    return _withList(_visible(items), anime: section.anime);
  }

  Future<List<Media>> countryPicks(String country) async {
    final body = await client.get(
      '/v1.0/search/',
      query: {'country': country, 'media_type': 'manga', 'limit': '15'},
      cache: const Duration(minutes: 10),
    );
    return _withList(_visible(_media(body)));
  }

  Future<List<CalendarEntry>> schedule() async {
    final data = await client.get(
      _schedule,
      cache: const Duration(minutes: 15),
    );
    final out = <CalendarEntry>[];
    for (final item in jsonRows(data is Map ? data['entries'] : null)) {
      final slot = (item['schedule'] as Map?) ?? const {};
      final when = DateTime.tryParse('${slot['occurrenceAt'] ?? ''}');
      if (when == null) continue;
      out.add(
        CalendarEntry(
          media: mapComickScheduleItem(item),
          episode: (slot['episode'] as num?)?.toInt(),
          airingAt: when.toLocal(),
        ),
      );
    }
    return out;
  }

  List<ComickSection> shownSections(MediaType type) => applyLayout(
    comickSectionsFor(type),
    (s) => s.title,
    ComickPref.feedLayoutFor(type).value,
  );

  List<SectionJob> browseJobsFor(MediaType type) => [
    for (final section in shownSections(type))
      () async => titledSection(section.title, await sectionPage(section)),
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      browseJobsFor(anime ? MediaType.anime : MediaType.manga);

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    final hide = ComickPref.hideNsfw.value;

    Future<List<Media>> shelf(
      Iterable<bool> kinds,
      bool Function(Media) keep,
    ) async => [
      for (final anime in kinds)
        for (final m in await library(anime: anime))
          if (keep(m)) m,
    ];

    SectionJob job(String title, Set<String> statuses, {bool? anime}) =>
        () async => titledSection(
          title,
          await shelf(
            anime == null ? const [true, false] : [anime],
            (m) => statuses.contains(m.userStatus) && !(hide && m.isAdult),
          ),
        );

    return layoutJobs({
      'Continue Watching': job('Continue Watching', _active, anime: true),
      'Continue Reading': job('Continue Reading', _active, anime: false),
      'Planned': job('Planned', {'PLANNING'}),
      'On Hold': job('On Hold', {'PAUSED'}),
      'Dropped': job('Dropped', {'DROPPED'}),
      if (hide)
        kHiddenMediaTitle: () async => titledSection(
          kHiddenMediaTitle,
          await shelf(const [true, false], (m) => m.isAdult),
        ),
    }, ComickPref.homeLayout.value);
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    final all = await library(anime: anime);
    return groupByStatus(all, {
      'CURRENT': anime ? getString.watching : getString.reading,
      'PLANNING': getString.planning,
      'COMPLETED': getString.completed,
      'PAUSED': getString.paused,
      'DROPPED': getString.dropped,
    });
  }

  Future<Media?> _lookup(
    String key, {
    required bool anime,
    String? title,
  }) async {
    final text = title ?? key.replaceAll('-', ' ');
    final body = await client.get(
      '/v1.0/search/',
      query: {
        'q': text,
        'media_type': anime ? 'anime' : 'manga',
        'limit': '20',
      },
      cache: const Duration(minutes: 10),
    );
    for (final media in _media(body)) {
      final extras = comickExtras[media];
      if (media.id == key || extras?.slug == key) return media;
    }
    return null;
  }

  Future<Media?> _detail(
    String id, {
    required bool anime,
    String? title,
  }) async {
    Media? media;
    try {
      final body = await client.get(
        '/v1.0/comic/$id/',
        query: {'media_type': anime ? 'anime' : 'manga'},
        cache: const Duration(minutes: 10),
      );
      if (body is Map && body['comic'] is Map) {
        media = mapComickComicDetail(body.cast<String, dynamic>());
      }
    } on ComickException catch (e) {
      if (e.status != 404 && e.status != 403) rethrow;
    }
    media ??= await _lookup(id, anime: anime, title: title);
    if (media == null) return null;
    if (client.hasToken) {
      final id = media.id;
      final mine = (await library(anime: media.isAnime))
          .where((m) => m.id == id)
          .firstOrNull;
      if (mine != null) media.takeListEntry(mine);
    }
    return media;
  }

  @override
  Future<Media?> getMedia(String id) async {
    for (final anime in [false, true]) {
      try {
        final media = await _detail(id, anime: anime);
        if (media != null && media.isAnime == anime) return media;
      } on ComickException catch (e) {
        if (e.status != 404) rethrow;
      }
    }
    return null;
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final slug = comickExtras[media]?.slug;
    try {
      final full = await _detail(
        slug == null || slug.isEmpty ? media.id : slug,
        anime: media.isAnime,
        title: media.name,
      );
      if (full == null) return media;
      return full
        ..cameFromContinue = media.cameFromContinue
        ..relations = media.relations;
    } on ComickException catch (e, st) {
      logError('Queries', e, st);
      return media;
    }
  }

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    final anime = results.type == SearchType.ANIME;
    if (!anime && results.type != SearchType.MANGA) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    if (results.onList == true) {
      return searchLibrary(await library(anime: anime), results);
    }
    final slugs = comickGenreSlugs();
    final text = results.search?.trim() ?? '';
    final country =
        results.countryOfOrigin ?? _countries[results.format?.toUpperCase()];
    final limit = (results.perPage ?? comickPageSize).clamp(1, 50);
    final multi = <String, List<String>>{
      'genres': [
        for (final g in results.genres ?? const <String>[])
          slugs[g] ?? _slug(g),
      ],
      'excludes': [
        for (final g in results.excludedGenres ?? const <String>[])
          slugs[g] ?? _slug(g),
      ],
      'tags': [for (final t in results.tags ?? const <String>[]) _slug(t)],
    }..removeWhere((_, v) => v.isEmpty);
    final body = await client.get(
      '/v1.0/search/',
      query: {
        'media_type': anime ? 'anime' : 'manga',
        'limit': '$limit',
        'page': '${results.page ?? 1}',
        'q': ?(text.isEmpty ? null : text),
        'sort': ?results.sort,
        'status':
            ?_statuses[results.status?.toUpperCase().replaceAll(' ', '_')],
        'country': ?country?.toLowerCase(),
      },
      multi: multi,
    );
    final found = _media(body);
    final shown = results.isAdult == true ? found : _visible(found);
    return results
      ..results = await _withList(shown, anime: anime)
      ..hasNextPage = found.length >= limit;
  }

  @override
  Future<List<Media>> getCalendarData() async => [
    for (final e in await schedule()) e.media,
  ];

  @override
  Future<bool> getGenresAndTags() async {
    if (loadCustomData<Map<String, dynamic>>(_genreKey) != null &&
        loadCustomData<List<String>>(_tagKey) != null) {
      return true;
    }
    try {
      await _loadGenres();
      await _loadTags();
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return true;
  }

  Future<void> _loadGenres() async {
    final genres = jsonRows(
      await client.get('/genre/', cache: const Duration(days: 7)),
    ).where((g) => g['name'] is String).toList();
    final slugs = {
      for (final g in genres)
        if (g['group'] != 'Format')
          g['name'] as String: '${g['slug'] ?? _slug(g['name'] as String)}',
    };
    if (slugs.isNotEmpty) saveCustomData(_genreKey, slugs);
    final ids = {
      for (final g in genres)
        if (g['id'] is num) '${g['id']}': g['name'] as String,
    };
    if (ids.isEmpty) return;
    saveCustomData(_genreIdKey, ids);
    comickGenreNames = {for (final e in ids.entries) int.parse(e.key): e.value};
  }

  Future<void> _loadTags() async {
    final tags = jsonRows(
      await client.get('/category/popular', cache: const Duration(days: 7)),
    );
    final names = [
      for (final c in tags)
        if (c['title'] is String) c['title'] as String,
    ];
    if (names.isNotEmpty) saveCustomData(_tagKey, names);
  }
}
