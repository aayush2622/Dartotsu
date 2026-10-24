import '../../../Logger.dart';
import 'dart:async';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/LibrarySearch.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';

const mangaUpdatesPageSize = 20;

class MangaUpdatesSection {
  final String title;
  final Map<String, dynamic> request;

  const MangaUpdatesSection(this.title, this.request);
}

const mangaSections = [
  MangaUpdatesSection('Trending Now', {'orderby': 'week_pos'}),
  MangaUpdatesSection('Most Popular', {'orderby': 'score'}),
  MangaUpdatesSection('Top Rated', {'orderby': 'rating'}),
  MangaUpdatesSection('Latest Releases', {'orderby': 'date_added'}),
  MangaUpdatesSection('Top Manhwa', {'type': ['Manhwa'], 'orderby': 'score'}),
  MangaUpdatesSection('Top Manhua', {'type': ['Manhua'], 'orderby': 'score'}),
];

const novelSections = [
  MangaUpdatesSection('Trending Now', {'type': ['Novel'], 'orderby': 'week_pos'}),
  MangaUpdatesSection('Most Popular', {'type': ['Novel'], 'orderby': 'score'}),
  MangaUpdatesSection('Top Rated', {'type': ['Novel'], 'orderby': 'rating'}),
  MangaUpdatesSection('Latest Releases', {'type': ['Novel'], 'orderby': 'date_added'}),
];

List<MangaUpdatesSection> mangaUpdatesSectionsFor(MediaType type) =>
    type == MediaType.novel ? novelSections : mangaSections;

const _defaultGenres = [
  'Action', 'Adult', 'Adventure', 'Comedy', 'Doujinshi', 'Drama', 'Ecchi',
  'Fantasy', 'Gender Bender', 'Harem', 'Hentai', 'Historical', 'Horror',
  'Josei', 'Lolicon', 'Martial Arts', 'Mature', 'Mecha', 'Mystery',
  'Psychological', 'Romance', 'School Life', 'Sci-fi', 'Seinen', 'Shotacon',
  'Shoujo', 'Shoujo Ai', 'Shounen', 'Shounen Ai', 'Slice of Life', 'Smut',
  'Sports', 'Supernatural', 'Tragedy', 'Yaoi', 'Yuri'
];

const _genreKey = 'mangaupdates_genres';

List<String> mangaUpdatesGenres() =>
    loadCustomData<List<String>>(_genreKey) ?? _defaultGenres;

Map<String, String> get mangaUpdatesSearchSorts => {
  'POPULARITY_DESC': getString.sortMostPopular,
  'SCORE_DESC': getString.sortTopRated,
  'START_DATE_DESC': getString.sortNewest,
  'TITLE_ROMAJI': getString.sortAz,
};

class MangaUpdatesQueries extends Queries {
  final MangaUpdatesClient client;
  final Future<bool> Function() refreshUser;
  final void Function(int chapters)? onChapters;

  MangaUpdatesQueries(this.client, {required this.refreshUser, this.onChapters});

  int? get _cleanId(String rawId) {
    final cleaned = rawId.contains('/') ? rawId.split('/').last : rawId;
    return int.tryParse(cleaned);
  }

  List<Media> _parseResults(Map<String, dynamic> body) {
    final results = body['results'] as List?;
    if (results == null) return const [];
    final list = <Media>[];
    for (final r in results) {
      if (r is Map && r['record'] is Map) {
        list.add(mapMangaUpdatesSeries((r['record'] as Map).cast<String, dynamic>()));
      }
    }
    return list;
  }

  Future<List<Media>> _withList(List<Media> items) async {
    if (!client.hasToken || items.isEmpty) return items;
    try {
      final mine = {for (final m in await library()) m.id: m};
      for (final m in items) {
        final entry = mine[m.id];
        if (entry != null) m.takeListEntry(entry);
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return items;
  }

  Future<List<Media>> sectionPage(
    MangaUpdatesSection section, {
    int page = 1,
  }) async {
    final body = <String, dynamic>{
      ...section.request,
      'perpage': mangaUpdatesPageSize,
      'page': page,
    };
    if (MangaUpdatesPref.hideNsfw.value) {
      body['exclude_genre'] = ['Adult', 'Hentai', 'Smut', 'Lolicon', 'Shotacon'];
    }
    final res = await client.post('/series/search', body);
    return _withList(_parseResults(res));
  }

  @override
  Future<bool> getUserData() async => refreshUser();

  late final _library = LibraryCache<List<Media>>(load: (_) => _loadLibrary());

  Future<List<Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const []);

  void invalidateLibrary() => _library.expire();

  Future<List<Media>> _loadLibrary() async {
    if (!client.hasToken) return const [];
    try {
      final listsRes = await client.get('/lists');
      final lists = (listsRes['results'] as List?) ?? (listsRes is List ? listsRes as List : null);
      final rawLists = listsRes is Map ? (listsRes['data'] as List?) : null;
      final allLists = lists ?? rawLists ?? const [];

      final out = <Media>[];
      var totalChapters = 0;

      for (var listId = 0; listId <= 4; listId++) {
        try {
          final res = await client.post(
            '/lists/$listId/search',
            {'perpage': 100},
          );
          final results = res['results'] as List?;
          for (final item in results ?? const []) {
            if (item is Map && item['record'] is Map) {
              final record = (item['record'] as Map).cast<String, dynamic>();
              final metadata = item['metadata'] is Map
                  ? (item['metadata'] as Map).cast<String, dynamic>()
                  : null;
              final seriesMap = metadata?['series'] as Map?;
              final series = seriesMap != null
                  ? mapMangaUpdatesSeries(seriesMap.cast<String, dynamic>())
                  : Media(
                      id: '${record['series']?['id'] ?? ''}',
                      name: '${record['series']?['title'] ?? ''}',
                    );
              applyMangaUpdatesEntry(series, record, metadata: metadata);
              out.add(series);
              totalChapters += series.userProgress ?? 0;
            }
          }
        } catch (_) {}
      }

      onChapters?.call(totalChapters);
      return out;
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final id = _cleanId(media.id);
    if (id == null) return null;
    try {
      final res = await client.get('/series/$id');
      if (res['series_id'] == null) return null;
      final full = mapMangaUpdatesSeries(res);
      final list = await library();
      final mine = list.where((m) => m.id == '${full.id}').firstOrNull;
      if (mine != null) full.takeListEntry(mine);
      return full;
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  Future<List<Review>> reviews(Media media) async {
    final id = _cleanId(media.id);
    if (id == null) return const [];
    try {
      final res = await client.post('/reviews/search', {
        'series_id': id,
        'perpage': 20,
      });
      final results = res['results'] as List?;
      if (results == null) return const [];
      return [
        for (final r in results)
          if (r is Map && r['record'] is Map)
            mapMangaUpdatesReview((r['record'] as Map).cast<String, dynamic>()),
      ];
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  Future<List<MangaUpdatesRelease>> releases(Media media) async {
    final id = _cleanId(media.id);
    if (id == null) return const [];
    try {
      final res = await client.post('/releases/search', {
        'search': '$id',
        'search_type': 'series',
        'perpage': 50,
      });
      final results = res['results'] as List?;
      if (results == null) return const [];
      return [
        for (final r in results)
          if (r is Map && r['record'] is Map)
            mapMangaUpdatesRelease((r['record'] as Map).cast<String, dynamic>()),
      ];
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  @override
  Future<SearchResults?> search(SearchResults query) async {
    final search = query.search?.trim();
    final body = <String, dynamic>{
      'perpage': mangaUpdatesPageSize,
      'page': query.page ?? 1,
    };
    if (search != null && search.isNotEmpty) {
      body['search'] = search;
    }
    final sort = query.sort;
    if (sort != null) {
      body['orderby'] = switch (sort) {
        'POPULARITY_DESC' => 'score',
        'SCORE_DESC' => 'rating',
        'START_DATE_DESC' => 'date_added',
        'TITLE_ROMAJI' => 'title',
        _ => 'score',
      };
    }
    final format = query.format;
    if (format != null && format.isNotEmpty) {
      body['type'] = [format[0].toUpperCase() + format.substring(1).toLowerCase()];
    }
    final genres = query.genres;
    if (genres != null && genres.isNotEmpty) {
      body['genre'] = genres;
    }
    if (query.year != null) {
      body['year'] = '${query.year}';
    }
    if (MangaUpdatesPref.hideNsfw.value) {
      body['exclude_genre'] = ['Adult', 'Hentai', 'Smut', 'Lolicon', 'Shotacon'];
    }

    try {
      final res = await client.post('/series/search', body);
      final items = await _withList(_parseResults(res));
      final total = (res['total_hits'] as num?)?.toInt() ?? items.length;
      return query.copyWith(
        results: items,
        hasNextPage: ((query.page ?? 1) * mangaUpdatesPageSize) < total,
      );
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  @override
  Future<void> getGenresAndTags() async {
    try {
      final res = await client.get('/genres');
      final list = res is List ? res : (res['data'] as List?);
      if (list != null) {
        final genres = <String>[
          for (final g in list)
            if (g is Map && g['genre'] is String) g['genre'] as String,
        ];
        if (genres.isNotEmpty) {
          saveCustomData(_genreKey, genres);
        }
      }
    } catch (e, st) {
      logError('Queries', e, st);
    }
  }

  List<SectionJob<List<Media>>> browseJobsFor(MediaType type) {
    final sections = mangaUpdatesSectionsFor(type);
    return [
      for (final s in applyLayout(
        sections,
        (s) => s.title,
        MangaUpdatesPref.feedLayout.value,
      ))
        SectionJob(s.title, () => sectionPage(s)),
    ];
  }

  List<SectionJob<List<Media>>> homeJobs() {
    final sections = [
      SectionJob('Continue Reading', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'CURRENT').take(12).toList();
      }),
      SectionJob('Reading', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'CURRENT').toList();
      }),
      SectionJob('Wish List', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'PLANNING').toList();
      }),
      SectionJob('Complete', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'COMPLETED').toList();
      }),
      SectionJob('On Hold', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'PAUSED').toList();
      }),
      SectionJob('Unfinished', () async {
        final list = await library();
        return list.where((m) => m.userStatus == 'DROPPED').toList();
      }),
      for (final s in mangaSections.take(4))
        SectionJob(s.title, () => sectionPage(s)),
    ];

    return [
      for (final j in applyLayout(
        sections,
        (s) => s.title,
        MangaUpdatesPref.homeLayout.value,
      ))
        j,
    ];
  }
}
