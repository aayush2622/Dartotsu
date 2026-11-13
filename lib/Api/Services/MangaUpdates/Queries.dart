import '../../../Core/Services/Api/ListOverlay.dart';

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
import '../../../Logger.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Prefs.dart';

const mangaUpdatesPageSize = 20;
const _listsPerPage = 100;
const _readingTypes = ['Manga', 'Manhwa', 'Manhua'];
const _adultGenres = ['Adult', 'Hentai', 'Smut', 'Lolicon', 'Shotacon'];

const _formatNames = {
  'MANGA': 'Manga',
  'NOVEL': 'Novel',
  'MANHWA': 'Manhwa',
  'MANHUA': 'Manhua',
  'OEL': 'OEL',
  'DOUJINSHI': 'Doujinshi',
  'ARTBOOK': 'Artbook',
};

class MangaUpdatesSection {
  final String title;
  final Map<String, dynamic> request;

  const MangaUpdatesSection(this.title, this.request);
}

const mangaSections = [
  MangaUpdatesSection('Trending Now', {
    'type': _readingTypes,
    'orderby': 'week_pos',
  }),
  MangaUpdatesSection('Most Popular', {
    'type': _readingTypes,
    'orderby': 'year_pos',
  }),
  MangaUpdatesSection('Top Rated', {
    'type': _readingTypes,
    'orderby': 'rating',
  }),
  MangaUpdatesSection('Latest Releases', {
    'type': _readingTypes,
    'orderby': 'date_added',
  }),
  MangaUpdatesSection('Top Manhwa', {
    'type': ['Manhwa'],
    'orderby': 'year_pos',
  }),
  MangaUpdatesSection('Top Manhua', {
    'type': ['Manhua'],
    'orderby': 'year_pos',
  }),
];

const novelSections = [
  MangaUpdatesSection('Trending Now', {
    'type': ['Novel'],
    'orderby': 'week_pos',
  }),
  MangaUpdatesSection('Most Popular', {
    'type': ['Novel'],
    'orderby': 'year_pos',
  }),
  MangaUpdatesSection('Top Rated', {
    'type': ['Novel'],
    'orderby': 'rating',
  }),
  MangaUpdatesSection('Latest Releases', {
    'type': ['Novel'],
    'orderby': 'date_added',
  }),
];

List<MangaUpdatesSection> mangaUpdatesSectionsFor(MediaType type) =>
    type == MediaType.novel ? novelSections : mangaSections;

MangaUpdatesSection mangaUpdatesTypeSection(String format) =>
    MangaUpdatesSection('Top ${_formatNames[format.toUpperCase()] ?? format}', {
      'type': [_formatNames[format.toUpperCase()] ?? format],
      'orderby': 'year_pos',
    });

const _defaultGenres = [
  'Action',
  'Adult',
  'Adventure',
  'Comedy',
  'Doujinshi',
  'Drama',
  'Ecchi',
  'Fantasy',
  'Gender Bender',
  'Harem',
  'Hentai',
  'Historical',
  'Horror',
  'Josei',
  'Lolicon',
  'Martial Arts',
  'Mature',
  'Mecha',
  'Mystery',
  'Psychological',
  'Romance',
  'School Life',
  'Sci-fi',
  'Seinen',
  'Shotacon',
  'Shoujo',
  'Shoujo Ai',
  'Shounen',
  'Shounen Ai',
  'Slice of Life',
  'Smut',
  'Sports',
  'Supernatural',
  'Tragedy',
  'Yaoi',
  'Yuri',
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
  final void Function(int chapters)? onChapters;

  MangaUpdatesQueries(this.client, {this.onChapters});

  static int? cleanId(String rawId) =>
      int.tryParse(rawId.contains('/') ? rawId.split('/').last : rawId);

  Map<String, dynamic> _record(Object? raw) =>
      raw is Map ? raw.cast<String, dynamic>() : const {};

  List<Media> _parseResults(Map<String, dynamic> body) => [
    for (final r in (body['results'] as List?) ?? const [])
      if (r is Map && r['record'] is Map)
        mapMangaUpdatesSeries(_record(r['record'])),
  ];

  Future<List<Media>> _withList(List<Media> items) async =>
      client.hasToken ? overlayEntries(items, library) : items;

  Map<String, dynamic> _filters(Map<String, dynamic> body) => {
    ...body,
    if (MangaUpdatesPref.hideNsfw.value) 'exclude_genre': _adultGenres,
  };

  Future<List<Media>> sectionPage(
    MangaUpdatesSection section, {
    int page = 1,
  }) async {
    final res = await client.post(
      '/series/search',
      _filters({
        ...section.request,
        'perpage': mangaUpdatesPageSize,
        'page': page,
      }),
    );
    return _withList(_parseResults(res));
  }

  late final _library = LibraryCache<List<Media>>(load: (_) => _loadLibrary());

  Future<List<Media>> library() =>
      client.hasToken ? _library.get() : Future.value(const []);

  void invalidateLibrary() => _library.expire();

  void clearLibrary() => _library.clear();

  Future<List<Media>> _loadList(int listId) async {
    final out = <Media>[];
    var page = 1;
    while (true) {
      final res = await client.post('/lists/$listId/search', {
        'page': page,
        'perpage': _listsPerPage,
      });
      final results = (res['results'] as List?) ?? const [];
      for (final item in results) {
        if (item is! Map || item['record'] is! Map) continue;
        final record = _record(item['record']);
        final metadata = item['metadata'] is Map
            ? _record(item['metadata'])
            : null;
        final seriesMap = metadata?['series'];
        final ref = _record(record['series']);
        final media = mapMangaUpdatesSeries({
          ...ref,
          if (seriesMap is Map)
            for (final e in _record(seriesMap).entries)
              if (e.value != null) e.key: e.value,
        });
        applyMangaUpdatesEntry(media, record, metadata: metadata);
        out.add(media);
      }
      final total = (res['total_hits'] as num?)?.toInt() ?? 0;
      if (results.isEmpty || out.length >= total) break;
      page++;
    }
    return out;
  }

  Future<List<Media>> _loadLibrary() async {
    final lists = await Future.wait([
      for (var listId = 0; listId <= 4; listId++) _loadList(listId),
    ]);
    final seen = <String>{};
    final out = [
      for (final list in lists)
        for (final m in list)
          if (seen.add(m.id)) m,
    ];
    onChapters?.call(out.fold(0, (sum, m) => sum + (m.userProgress ?? 0)));
    return out;
  }

  @override
  Future<Media?> getMedia(String id) async {
    final series = cleanId(id);
    if (series == null) return null;
    try {
      final res = await client.get(
        '/series/$series',
        cache: const Duration(minutes: 5),
      );
      if (res['series_id'] == null) return null;
      final full = mapMangaUpdatesSeries(res);
      if (client.hasToken) {
        final mine = (await library())
            .where((m) => m.id == full.id)
            .firstOrNull;
        if (mine != null) full.takeListEntry(mine);
      }
      return full;
    } on MangaUpdatesException catch (e) {
      if (e.status == 404) return null;
      rethrow;
    } catch (e, st) {
      logError('Queries', e, st);
      return null;
    }
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final full = await getMedia(media.id);
    return full == null
        ? media
        : (full..cameFromContinue = media.cameFromContinue);
  }

  @override
  Future<List<Review>> getReviews(String mediaId, {int page = 1}) async {
    final id = cleanId(mediaId);
    if (id == null) return const [];
    try {
      final res = await client.post('/reviews/search', {
        'series_id': id,
        'page': page,
        'perpage': 20,
      });
      return [
        for (final r in (res['results'] as List?) ?? const [])
          if (r is Map && r['record'] is Map)
            mapMangaUpdatesReview(_record(r['record'])),
      ];
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  Future<List<Review>> reviews(Media media) => getReviews(media.id);

  Future<List<MangaUpdatesRelease>> releases(Media media) async {
    final id = cleanId(media.id);
    if (id == null) return const [];
    try {
      final res = await client.post('/releases/search', {
        'search': '$id',
        'search_type': 'series',
        'perpage': 50,
      });
      return [
        for (final r in (res['results'] as List?) ?? const [])
          if (r is Map && r['record'] is Map)
            mapMangaUpdatesRelease(_record(r['record'])),
      ];
    } catch (e, st) {
      logError('Queries', e, st);
      return const [];
    }
  }

  @override
  Future<SearchResults?> search(SearchResults? results) async {
    if (results == null) return null;
    if (results.type != SearchType.MANGA && results.type != SearchType.NOVEL) {
      return results
        ..results = const []
        ..hasNextPage = false;
    }
    if (results.onList == true) {
      return searchLibrary(await library(), results);
    }
    final text = results.search?.trim() ?? '';
    final perPage = (results.perPage ?? mangaUpdatesPageSize).clamp(1, 100);
    final page = results.page ?? 1;
    final format =
        _formatNames[results.format?.toUpperCase().replaceAll(' ', '')];
    final types = results.type == SearchType.NOVEL
        ? const ['Novel']
        : format != null
        ? [format]
        : [..._readingTypes, 'OEL'];
    final year = results.seasonYear ?? results.startYear;
    final orderby = switch (results.sort) {
      'SCORE_DESC' => 'rating',
      'START_DATE_DESC' => 'date_added',
      'TITLE_ROMAJI' => 'title',
      _ => text.isEmpty ? 'year_pos' : 'score',
    };
    final excluded = {
      if (MangaUpdatesPref.hideNsfw.value && results.isAdult != true)
        ..._adultGenres,
      ...?results.excludedGenres,
    };
    final res = await client.post('/series/search', {
      'search': ?(text.isEmpty ? null : text),
      'type': types,
      'orderby': orderby,
      if ((results.genres ?? const []).isNotEmpty) 'genre': results.genres,
      if (excluded.isNotEmpty) 'exclude_genre': excluded.toList(),
      'year': ?(year == null ? null : '$year'),
      'perpage': perPage,
      'page': page,
    });
    final total = (res['total_hits'] as num?)?.toInt() ?? 0;
    return results
      ..results = await _withList(_parseResults(res))
      ..hasNextPage = page * perPage < total;
  }

  @override
  Future<bool> getGenresAndTags() async {
    if (loadCustomData<List<String>>(_genreKey) != null) return true;
    try {
      final res = await client.get('/genres', cache: const Duration(days: 1));
      final genres = <String>[
        for (final g in (res['data'] as List?) ?? const [])
          if (g is Map && g['genre'] is String) g['genre'] as String,
      ]..sort();
      if (genres.isNotEmpty) saveCustomData(_genreKey, genres);
    } catch (e, st) {
      logError('Queries', e, st);
    }
    return true;
  }

  @override
  List<SectionJob> homeJobs() {
    if (!client.hasToken) return const [];
    final hide = MangaUpdatesPref.hideNsfw.value;
    SectionJob job(String title, Set<String> statuses) => () async {
      final items = [
        for (final m in await library())
          if (statuses.contains(m.userStatus) && !(hide && m.isAdult)) m,
      ];
      return items.isEmpty ? <String, List<Media>>{} : {title: items};
    };
    final jobs = <(String, SectionJob)>[
      ('Continue Reading', job('Continue Reading', {'CURRENT', 'REPEATING'})),
      ('Planned Manga', job('Planned Manga', {'PLANNING'})),
      ('On Hold', job('On Hold', {'PAUSED'})),
      ('Dropped', job('Dropped', {'DROPPED'})),
      if (hide)
        (
          'Hidden Media',
          () async {
            final items = [
              for (final m in await library())
                if (m.isAdult) m,
            ];
            return items.isEmpty
                ? <String, List<Media>>{}
                : {'Hidden Media': items};
          },
        ),
    ];
    return [
      for (final j in applyLayout(
        jobs,
        (j) => j.$1,
        MangaUpdatesPref.homeLayout.value,
      ))
        j.$2,
    ];
  }

  List<SectionJob> browseJobsFor(MediaType type) => [
    for (final section in applyLayout(
      mangaUpdatesSectionsFor(type),
      (s) => s.title,
      MangaUpdatesPref.feedLayout.value,
    ))
      () async => {section.title: await sectionPage(section)},
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      anime ? const [] : browseJobsFor(MediaType.manga);

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    if (anime) return {};
    final all = await library();
    return groupByStatus(all, {
      'CURRENT': getString.reading,
      'PLANNING': getString.planning,
      'COMPLETED': getString.completed,
      'PAUSED': getString.paused,
      'DROPPED': getString.unfinished,
    });
  }

  @override
  Future<List<Media>> getCalendarData() async => const [];
}
