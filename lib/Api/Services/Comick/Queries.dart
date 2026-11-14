import 'dart:async';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/ListOverlay.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
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
}

const comickMangaSections = [
  ComickSection('Trending Now', '/top', {'type': 'trending', 'day': '7', 'media_type': 'manga'}),
  ComickSection('Top Ranked', '/top', {'type': 'rank', 'day': '30', 'media_type': 'manga'}),
  ComickSection('Most Followed', '/top', {'type': 'follow', 'day': '30', 'media_type': 'manga'}),
  ComickSection('Latest Updates', '/v1.0/search/', {'sort': 'uploaded', 'media_type': 'manga'}),
];

const comickAnimeSections = [
  ComickSection('Weekly Schedule', '/anime/schedule', {}),
  ComickSection('Trending Anime', '/top', {'type': 'trending', 'day': '7', 'media_type': 'anime'}),
  ComickSection('Top Ranked Anime', '/top', {'type': 'rank', 'day': '30', 'media_type': 'anime'}),
  ComickSection('Most Followed Anime', '/top', {'type': 'follow', 'day': '30', 'media_type': 'anime'}),
];

List<ComickSection> comickSectionsFor(MediaType type) =>
    type == MediaType.anime ? comickAnimeSections : comickMangaSections;

const comickSearchSorts = [
  'trending',
  'view',
  'rating',
  'follow',
  'uploaded',
  'created_at',
];

const _genreKey = 'comick_genres';
const _tagKey = 'comick_tags';

const _fallbackGenres = [
  '4-Koma', 'Action', 'Adaptation', 'Adult', 'Adventure', 'Aliens', 'Animals',
  'Anthology', 'Comedy', 'Cooking', 'Crime', 'Crossdressing', 'Delinquents',
  'Demons', 'Drama', 'Ecchi', 'Fantasy', 'Gender Bender', 'Ghosts', 'Gore',
  'Harem', 'Historical', 'Horror', 'Isekai', 'Josei', 'Magic', 'Magical Girls',
  'Martial Arts', 'Mecha', 'Medical', 'Military', 'Monster Girls', 'Monsters',
  'Music', 'Mystery', 'Ninja', 'Office Workers', 'Philosophical', 'Police',
  'Post-Apocalyptic', 'Psychological', 'Reincarnation', 'Reverse Harem',
  'Romance', 'Samurai', 'School Life', 'Sci-Fi', 'Seinen', 'Shoujo',
  'Shoujo Ai', 'Shounen', 'Shounen Ai', 'Slice of Life', 'Smut', 'Sports',
  'Super Power', 'Superhero', 'Supernatural', 'Survival', 'Thriller',
  'Time Travel', 'Traditional Games', 'Tragedy', 'Vampires', 'Video Games',
  'Villainess', 'Virtual Reality', 'Zombies'
];

List<String> comickGenres() =>
    loadCustomData<List<String>>(_genreKey) ?? _fallbackGenres;

List<String> comickTags() =>
    loadCustomData<List<String>>(_tagKey) ?? const [];

class ComickQueries extends Queries {
  final ComickClient client;

  ComickQueries(this.client);

  late final _library = {
    true: LibraryCache<List<Media>>(load: (_) => _loadLibrary(anime: true)),
    false: LibraryCache<List<Media>>(load: (_) => _loadLibrary(anime: false)),
  };

  void clearLibrary() {
    _library[true]?.invalidate();
    _library[false]?.invalidate();
  }

  void invalidateLibrary() => clearLibrary();

  Future<List<Media>> library({bool anime = false}) =>
      _library[anime]!.get(force: false);

  Future<List<Media>> _loadLibrary({required bool anime}) async {
    if (!client.hasToken) return const [];
    final out = <Media>[];
    String? cursor;
    var first = true;
    while (first || cursor != null) {
      first = false;
      final query = <String, String>{
        'media_type': anime ? 'anime' : 'manga',
        'limit': '100',
        if (cursor != null) 'cursor': cursor,
      };
      final body = await client.get('/me/library', query: query);
      if (body is! Map) break;
      final data = body['data'] as List?;
      if (data != null) {
        for (final item in data) {
          if (item is Map) {
            out.add(mapComickLibraryEntry(item.cast<String, dynamic>()));
          }
        }
      }
      cursor = body['next_cursor'] as String?;
    }
    return out;
  }

  Future<List<Media>> _withList(List<Media> items, {bool anime = false}) async =>
      client.hasToken ? overlayEntries(items, () => library(anime: anime)) : items;

  @override
  Future<Map<String, List<Media>>> initHomePage() async {
    final out = <String, List<Media>>{};
    if (client.hasToken) {
      final userManga = await library(anime: false);
      final current = userManga.where((m) => m.userStatus == 'CURRENT').toList();
      final planning = userManga.where((m) => m.userStatus == 'PLANNING').toList();
      final paused = userManga.where((m) => m.userStatus == 'PAUSED').toList();
      final dropped = userManga.where((m) => m.userStatus == 'DROPPED').toList();

      if (current.isNotEmpty) out['Continue Reading'] = current;
      if (planning.isNotEmpty) out['Planned'] = planning;
      if (paused.isNotEmpty) out['On Hold'] = paused;
      if (dropped.isNotEmpty) out['Dropped'] = dropped;
    }

    try {
      final top = await client.get('/top', query: {'type': 'trending', 'day': '7', 'media_type': 'manga'});
      if (top is List) {
        final media = [
          for (final item in top)
            if (item is Map) mapComickSearchItem(item.cast<String, dynamic>())
        ];
        if (media.isNotEmpty) out['Trending Now'] = await _withList(media);
      }
    } catch (_) {}

    try {
      final ranked = await client.get('/top', query: {'type': 'rank', 'day': '30', 'media_type': 'manga'});
      if (ranked is List) {
        final media = [
          for (final item in ranked)
            if (item is Map) mapComickSearchItem(item.cast<String, dynamic>())
        ];
        if (media.isNotEmpty) out['Top Ranked'] = await _withList(media);
      }
    } catch (_) {}

    return out;
  }

  @override
  Future<Map<String, List<Media>>> getMangaList() async {
    final jobs = browseJobsFor(MediaType.manga);
    final results = await Future.wait(jobs.map((j) => j.run()));
    return {
      for (var i = 0; i < jobs.length; i++)
        if (results[i].isNotEmpty) jobs[i].title: results[i],
    };
  }

  @override
  Future<Map<String, List<Media>>> getAnimeList() async {
    final jobs = browseJobsFor(MediaType.anime);
    final results = await Future.wait(jobs.map((j) => j.run()));
    return {
      for (var i = 0; i < jobs.length; i++)
        if (results[i].isNotEmpty) jobs[i].title: results[i],
    };
  }

  List<SectionJob<Media>> browseJobsFor(MediaType type) => [
    for (final s in applyLayout(
      comickSectionsFor(type),
      (s) => s.title,
      ComickPref.feedLayoutFor(type).value,
    ))
      SectionJob(title: s.title, run: () => sectionPage(s, page: 1)),
  ];

  Future<List<Media>> sectionPage(
    ComickSection section, {
    int page = 1,
  }) async {
    final isAnime = section.query['media_type'] == 'anime';
    if (section.endpoint == '/anime/schedule') {
      if (page > 1) return const [];
      final data = await client.get('/anime/schedule', cache: const Duration(minutes: 15));
      if (data is Map && data['entries'] is List) {
        final media = [
          for (final e in (data['entries'] as List))
            if (e is Map) mapComickScheduleItem(e.cast<String, dynamic>())
        ];
        return _withList(media, anime: true);
      }
      return const [];
    }

    final query = {
      ...section.query,
      if (section.endpoint == '/v1.0/search/') ...{
        'page': '$page',
        'limit': '$comickPageSize',
      },
    };

    final body = await client.get(
      section.endpoint,
      query: query,
      cache: const Duration(minutes: 10),
    );

    final list = body is List ? body : (body is Map ? (body['data'] as List?) : null);
    if (list == null) return const [];

    final media = [
      for (final item in list)
        if (item is Map) mapComickSearchItem(item.cast<String, dynamic>())
    ];

    return _withList(media, anime: isAnime);
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    bool anime = false,
    String? userId,
  }) async {
    final list = await library(anime: anime);
    final out = <String, List<Media>>{
      'CURRENT': [],
      'COMPLETED': [],
      'PAUSED': [],
      'DROPPED': [],
      'PLANNING': [],
    };
    for (final m in list) {
      final s = m.userStatus;
      if (s != null && out.containsKey(s)) {
        out[s]!.add(m);
      }
    }
    return out;
  }

  @override
  Future<Media?> getMedia(String id, {bool anime = false}) async {
    try {
      final comic = await client.get('/v1.0/comic/$id/', query: {'media_type': anime ? 'anime' : 'manga'});
      if (comic is Map && comic['comic'] is Map) {
        return mapComickComicDetail(comic.cast<String, dynamic>());
      }
    } catch (_) {}

    try {
      final results = await client.get('/v1.0/search/', query: {'q': id, 'limit': '1'});
      if (results is List && results.isNotEmpty && results.first is Map) {
        return mapComickSearchItem((results.first as Map).cast<String, dynamic>());
      }
    } catch (_) {}

    return null;
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final extras = comickExtras[media];
    final slug = extras?.slug.isNotEmpty == true ? extras!.slug : media.id;
    final isAnime = media.isAnime;

    try {
      final comic = await client.get(
        '/v1.0/comic/$slug/',
        query: {'media_type': isAnime ? 'anime' : 'manga'},
        cache: const Duration(minutes: 10),
      );
      if (comic is Map && comic['comic'] is Map) {
        final full = mapComickComicDetail(comic.cast<String, dynamic>());
        return full;
      }
    } catch (_) {}

    return media;
  }

  @override
  Future<SearchResults?> search(SearchResults query) async {
    final isAnime = query.type == SearchType.ANIME;
    final params = <String, String>{
      'media_type': isAnime ? 'anime' : 'manga',
      'limit': '$comickPageSize',
      'page': '${query.page ?? 1}',
      if (query.query.isNotEmpty) 'q': query.query,
      if (query.sort != null && query.sort!.isNotEmpty) 'sort': query.sort!,
      if (query.status != null)
        'status': switch (query.status) {
          'RELEASING' => '1',
          'FINISHED' => '2',
          'CANCELLED' => '3',
          'HIATUS' => '4',
          _ => '',
        },
      if (query.country != null) 'country': query.country!.toLowerCase(),
    };

    final body = await client.get('/v1.0/search/', query: params);
    if (body is! List) return query;

    final media = [
      for (final item in body)
        if (item is Map) mapComickSearchItem(item.cast<String, dynamic>())
    ];

    final withLists = await _withList(media, anime: isAnime);
    return SearchResults(
      page: query.page,
      query: query.query,
      type: query.type,
      sort: query.sort,
      format: query.format,
      status: query.status,
      country: query.country,
      results: withLists,
      hasNextPage: media.length >= comickPageSize,
    );
  }

  @override
  Future<List<Media>> getCalendarData() async {
    try {
      final data = await client.get('/anime/schedule', cache: const Duration(minutes: 15));
      if (data is Map && data['entries'] is List) {
        final out = <Media>[];
        for (final e in (data['entries'] as List)) {
          if (e is Map) {
            final m = mapComickScheduleItem(e.cast<String, dynamic>());
            final occurrence = (e['schedule'] as Map?)?['occurrenceAt'] as String?;
            if (occurrence != null) {
              final epoch = DateTime.tryParse(occurrence)?.millisecondsSinceEpoch;
              if (epoch != null) {
                m.relation = '1,${epoch ~/ 1000}';
              }
            }
            out.add(m);
          }
        }
        return _withList(out, anime: true);
      }
    } catch (_) {}
    return const [];
  }

  @override
  Future<void> getGenresAndTags() async {
    try {
      final genresData = await client.get('/genre/', cache: const Duration(days: 7));
      if (genresData is List) {
        final names = [
          for (final g in genresData)
            if (g is Map && g['name'] is String) g['name'] as String
        ];
        if (names.isNotEmpty) setCustomData(_genreKey, names);
      }
    } catch (_) {}

    try {
      final catsData = await client.get('/category/popular', cache: const Duration(days: 7));
      if (catsData is List) {
        final tags = [
          for (final c in catsData)
            if (c is Map && c['title'] is String) c['title'] as String
        ];
        if (tags.isNotEmpty) setCustomData(_tagKey, tags);
      }
    } catch (_) {}
  }
}
