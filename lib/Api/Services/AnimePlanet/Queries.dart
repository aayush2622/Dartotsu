import 'dart:async';
import 'dart:convert';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/LibraryCache.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/CommunityList.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/MediaListEntry.dart';
import '../../../Core/Services/Model/Review.dart';
import '../../../Core/Services/Screens/EntityHost.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import '../../../Core/Services/LayoutPref.dart';
import 'Client.dart';
import 'Data/Parser.dart';
import 'Prefs.dart';

const _facetKey = 'animeplanet_facets';

class AnimePlanetSection {
  final String title;
  final String path;
  final Map<String, String> query;

  const AnimePlanetSection(this.title, this.path, [this.query = const {}]);
}

String animePlanetSeason([DateTime? now]) {
  final at = now ?? DateTime.now();
  final name = switch (at.month) {
    1 || 2 || 3 => 'winter',
    4 || 5 || 6 => 'spring',
    7 || 8 || 9 => 'summer',
    _ => 'fall',
  };
  return '$name-${at.year}';
}

List<AnimePlanetSection> animePlanetSectionsFor(MediaType type) =>
    type == MediaType.anime
    ? [
        const AnimePlanetSection('Trending Now', '/anime/all', {
          'sort': 'status_2',
          'order': 'desc',
        }),
        AnimePlanetSection(
          'Popular This Season',
          '/anime/seasons/${animePlanetSeason()}',
        ),
        const AnimePlanetSection('Top Rated', '/anime/all', {
          'sort': 'average',
          'order': 'desc',
        }),
        const AnimePlanetSection('Most Watched', '/anime/all', {
          'sort': 'status_1',
          'order': 'desc',
        }),
        const AnimePlanetSection('Recently Added', '/anime/all', {
          'sort': 'recent',
          'order': 'desc',
        }),
      ]
    : const [
        AnimePlanetSection('Trending Now', '/manga/all', {
          'sort': 'status_2',
          'order': 'desc',
        }),
        AnimePlanetSection('Top Rated', '/manga/all', {
          'sort': 'average',
          'order': 'desc',
        }),
        AnimePlanetSection('Most Read', '/manga/all', {
          'sort': 'status_1',
          'order': 'desc',
        }),
        AnimePlanetSection('Recently Added', '/manga/all', {
          'sort': 'recent',
          'order': 'desc',
        }),
      ];

List<AnimePlanetSection> animePlanetSectionsShown(MediaType type) =>
    applyLayout(
      animePlanetSectionsFor(type),
      (s) => s.title,
      (type == MediaType.anime
              ? AnimePlanetPref.animeLayout
              : AnimePlanetPref.mangaLayout)
          .value,
    );

const animePlanetSorts = {
  'average': 'Top rated',
  'status_2': 'Most watching',
  'status_1': 'Most watched',
  'recent': 'Date added',
  'year': 'Year',
  'title': 'Name',
};

class AnimePlanetQueries extends Queries {
  final AnimePlanetClient client;
  final String Function() username;
  final void Function(int episodes, int chapters)? onCounts;

  AnimePlanetQueries(this.client, {required this.username, this.onCounts});

  bool get loggedIn => username().isNotEmpty;

  late final _animeLibrary = LibraryCache<List<Media>>(
    load: (_) => _loadLibrary(anime: true),
    ttl: const Duration(minutes: 1),
  );
  late final _mangaLibrary = LibraryCache<List<Media>>(
    load: (_) => _loadLibrary(anime: false),
    ttl: const Duration(minutes: 1),
  );

  late final _animeCustom = LibraryCache<List<(String, List<Media>)>>(
    load: (_) => _loadCustomLists(anime: true),
    ttl: const Duration(minutes: 10),
  );
  late final _mangaCustom = LibraryCache<List<(String, List<Media>)>>(
    load: (_) => _loadCustomLists(anime: false),
    ttl: const Duration(minutes: 10),
  );

  Future<List<(String, List<Media>)>> customLists({required bool anime}) =>
      !loggedIn
      ? Future.value(const [])
      : (anime ? _animeCustom : _mangaCustom).get();

  Future<List<Media>> library({required bool anime}) => !loggedIn
      ? Future.value(const [])
      : (anime ? _animeLibrary : _mangaLibrary).get();

  void invalidateLibrary() {
    _animeLibrary.expire();
    _mangaLibrary.expire();
    _animeCustom.expire();
    _mangaCustom.expire();
  }

  void clearLibrary() {
    _animeLibrary.clear();
    _mangaLibrary.clear();
    _animeCustom.clear();
    _mangaCustom.clear();
  }

  Future<List<(String, List<Media>)>> _loadCustomLists({
    required bool anime,
  }) async {
    final base = '/users/${Uri.encodeComponent(username())}/lists';
    final found = <AnimePlanetCustomList>[];
    var pages = 1;
    for (var page = 1; page <= pages && page <= 10; page++) {
      final body = await client.page(
        base,
        query: page > 1 ? {'page': '$page'} : null,
        cache: Duration.zero,
      );
      if (page == 1) pages = parseAnimePlanetPages(body);
      final got = parseAnimePlanetCustomLists(body);
      if (got.isEmpty) break;
      found.addAll(got);
    }
    logger(
      'Anime-Planet custom lists: ${found.length} found, '
      '${found.where((l) => l.kind == (anime ? 'anime' : 'manga')).length} '
      'of ${anime ? 'anime' : 'manga'}',
      tag: 'ANIMEPLANET',
    );
    final out = <(String, List<Media>)>[];
    for (final list
        in found.where((l) => l.kind == (anime ? 'anime' : 'manga')).take(40)) {
      try {
        final items = <Media>[];
        var listPages = 1;
        for (var page = 1; page <= listPages && page <= 20; page++) {
          final body = await client.page(
            list.path,
            query: page > 1 ? {'page': '$page'} : null,
            cache: Duration.zero,
          );
          if (page == 1) listPages = parseAnimePlanetPages(body);
          final got = parseAnimePlanetCustomList(body);
          if (got.isEmpty) break;
          items.addAll(got);
        }
        if (items.isNotEmpty) {
          out.add((list.title, await _withList(items, anime: anime)));
        }
      } catch (e, st) {
        logError('AnimePlanet', e, st);
      }
    }
    return out;
  }

  Future<List<Media>> _loadLibrary({required bool anime}) async {
    final name = username();
    final path =
        '/users/${Uri.encodeComponent(name)}/${anime ? 'anime' : 'manga'}';
    final out = <Media>[];
    final seen = <String>{};
    var pages = 1;
    for (var page = 1; page <= pages && page <= 80; page++) {
      final body = await client.page(
        path,
        query: page > 1 ? {'page': '$page'} : null,
        cache: Duration.zero,
      );
      if (page == 1) pages = parseAnimePlanetPages(body);
      final items = parseAnimePlanetList(body);
      final withStatus = items.where((m) => m.userStatus != null).length;
      logger(
        'Anime-Planet ${anime ? 'anime' : 'manga'} list page $page: ${items.length} cards, $withStatus with a status',
        tag: 'ANIMEPLANET',
      );
      if (items.isNotEmpty && withStatus == 0) {
        final area = RegExp(
          r'class="statusArea".{0,200}',
          dotAll: true,
        ).firstMatch(body)?.group(0);
        logger('Unrecognised list card: $area', tag: 'ANIMEPLANET');
      }
      if (items.isEmpty) break;
      for (final m in items) {
        if (m.userStatus != null && seen.add(m.id)) out.add(m);
      }
    }
    final progress = out.fold<int>(0, (sum, m) => sum + (m.userProgress ?? 0));
    onCounts?.call(anime ? progress : -1, anime ? -1 : progress);
    return out;
  }

  Future<List<Media>> _withList(
    List<Media> items, {
    required bool anime,
  }) async {
    if (!loggedIn || items.isEmpty) return items;
    try {
      final mine = {for (final m in await library(anime: anime)) m.id: m};
      for (final m in items) {
        final entry = mine[m.id];
        if (entry != null) m.takeListEntry(entry);
      }
    } catch (e, st) {
      logError('AnimePlanet', e, st);
    }
    return items;
  }

  AnimePlanetFacets? _anime;
  AnimePlanetFacets? _manga;

  Future<List<Media>> sectionPage(
    AnimePlanetSection section, {
    int page = 1,
  }) async {
    final isSeason = section.path.contains('/seasons/');
    final body = await client.page(
      section.path,
      query: {...section.query, if (page > 1 && !isSeason) 'page': '$page'},
    );
    if (isSeason && page > 1) return const [];
    return _withList(
      parseAnimePlanetCards(body),
      anime: section.path.startsWith('/anime'),
    );
  }

  List<SectionJob> browseJobsFor(MediaType type) => [
    for (final section in animePlanetSectionsShown(type))
      () async => {section.title: await sectionPage(section)},
  ];

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      browseJobsFor(anime ? MediaType.anime : MediaType.manga);

  @override
  List<SectionJob> homeJobs() {
    if (!loggedIn) return const [];
    SectionJob job(String title, bool anime, Set<String> statuses) => () async {
      if (SectionReload.manual) invalidateLibrary();
      final items = [
        for (final m in await library(anime: anime))
          if (statuses.contains(m.userStatus)) m,
      ];
      return items.isEmpty ? <String, List<Media>>{} : {title: items};
    };
    final jobs = [
      (
        'Continue Watching',
        job('Continue Watching', true, {'CURRENT', 'REPEATING'}),
      ),
      (
        'Continue Reading',
        job('Continue Reading', false, {'CURRENT', 'REPEATING'}),
      ),
      ('Planned Anime', job('Planned Anime', true, {'PLANNING'})),
      ('Planned Manga', job('Planned Manga', false, {'PLANNING'})),
      ('On Hold', job('On Hold', true, {'PAUSED'})),
      ('Dropped', job('Dropped', true, {'DROPPED'})),
    ];
    return [
      for (final j in applyLayout(
        jobs,
        (j) => j.$1,
        AnimePlanetPref.homeLayout.value,
      ))
        j.$2,
    ];
  }

  @override
  Future<bool> getUserData() async => loggedIn;

  @override
  Future<Media?> getMedia(String id) async {
    final ref = splitAnimePlanetId(id);
    if (ref == null) return null;
    try {
      final body = await client.page(
        '/${ref.$1}/${ref.$2}',
        cache: const Duration(minutes: 5),
      );
      return parseAnimePlanetDetail(body, ref.$1, ref.$2);
    } on AnimePlanetException catch (e) {
      if (e.status == 404 || e.status == 410) return null;
      rethrow;
    } catch (e, st) {
      logError('AnimePlanet', e, st);
      return null;
    }
  }

  @override
  Future<List<Review>> getReviews(String mediaId, {int page = 1}) async {
    final ref = splitAnimePlanetId(mediaId);
    if (ref == null) return const [];
    try {
      final body = await client.page(
        '/${ref.$1}/${ref.$2}/reviews',
        query: page > 1 ? {'page': '$page'} : null,
        cache: const Duration(minutes: 10),
      );
      return parseAnimePlanetReviews(body, ref.$1);
    } catch (e, st) {
      logError('AnimePlanet', e, st);
      return const [];
    }
  }

  Future<AnimePlanetEntity?> character(String id) async {
    final body = await client.page('/characters/$id');
    return parseAnimePlanetCharacter(body, id);
  }

  Future<AnimePlanetEntity?> person(String id) async {
    final body = await client.page('/people/$id');
    return parseAnimePlanetPerson(body, id);
  }

  Future<EntityProfile?> studio(String id) async {
    final body = await client.page('/anime/studios/$id');
    return parseAnimePlanetStudio(body, id);
  }

  Future<List<Media>> studioAnime(String id, int page) async {
    final body = await client.page(
      '/anime/studios/$id',
      query: page > 1 ? {'page': '$page'} : null,
    );
    return _withList(parseAnimePlanetCards(body), anime: true);
  }

  @override
  Future<Media?> mediaDetails(Media media) async {
    final full = await getMedia(media.id);
    return full == null
        ? media
        : (full..cameFromContinue = media.cameFromContinue);
  }

  Future<AnimePlanetFacets?> facets({required bool anime}) async {
    final cached = anime ? _anime : _manga;
    if (cached != null) return cached;
    final stored = loadCustomData<String>(
      '$_facetKey/${anime ? 'anime' : 'manga'}',
    );
    if (stored != null) {
      try {
        final json = jsonDecode(stored) as Map;
        List<AnimePlanetFacet> read(String key) => [
          for (final e in (json[key] as List))
            AnimePlanetFacet('${(e as Map)['id']}', '${e['name']}'),
        ];
        final facets = AnimePlanetFacets(read('types'), read('tags'));
        if (anime) {
          _anime = facets;
        } else {
          _manga = facets;
        }
        return facets;
      } catch (_) {}
    }
    try {
      final body = await client.page(
        anime ? '/anime/all' : '/manga/all',
        cache: const Duration(days: 1),
      );
      final facets = parseAnimePlanetFacets(body);
      if (facets.tags.isEmpty) return null;
      if (anime) {
        _anime = facets;
      } else {
        _manga = facets;
      }
      saveCustomData(
        '$_facetKey/${anime ? 'anime' : 'manga'}',
        jsonEncode({
          'types': [
            for (final t in facets.types) {'id': t.id, 'name': t.name},
          ],
          'tags': [
            for (final t in facets.tags) {'id': t.id, 'name': t.name},
          ],
        }),
      );
      return facets;
    } catch (e, st) {
      logError('AnimePlanet', e, st);
      return null;
    }
  }

  @override
  Future<bool> getGenresAndTags() async {
    await Future.wait([facets(anime: true), facets(anime: false)]);
    return true;
  }

  List<String> tagNames({required bool anime}) => [
    for (final t
        in (anime ? _anime : _manga)?.tags ?? const <AnimePlanetFacet>[])
      t.name,
  ];

  List<String> typeNames({required bool anime}) => [
    for (final t
        in (anime ? _anime : _manga)?.types ?? const <AnimePlanetFacet>[])
      t.name,
  ];

  Future<CommunityListPage> communityLists({
    required String kind,
    required String sort,
    int page = 1,
  }) async {
    final body = await client.page(
      '/community/custom-lists',
      query: {
        if (kind.isNotEmpty) 'filter': kind,
        'sort': sort,
        if (page > 1) 'page': '$page',
      },
      cache: const Duration(minutes: 5),
    );
    final pages = parseAnimePlanetPages(body);
    return CommunityListPage([
      for (final h in parseAnimePlanetCommunityLists(body))
        CommunityList(
          id: h.id,
          title: h.title,
          author: h.author,
          description: h.description,
          cover: h.cover,
          count: h.count,
          likes: h.likes,
          kind: RegExp(r'\d+\s+([a-z]+)').firstMatch(h.count)?.group(1) ?? '',
        ),
    ], page < pages);
  }

  Future<List<Media>> customListTitles(String id) async {
    final path =
        '/users/${id.replaceFirst('list/', '').replaceFirst('/', '/lists/')}';
    final out = <Media>[];
    final seen = <String>{};
    var pages = 1;
    for (var page = 1; page <= pages && page <= 20; page++) {
      final body = await client.page(
        path,
        query: page > 1 ? {'page': '$page'} : null,
        cache: const Duration(minutes: 10),
      );
      if (page == 1) pages = parseAnimePlanetPages(body);
      final items = parseAnimePlanetCustomList(body);
      if (items.isEmpty) break;
      for (final m in items) {
        if (seen.add(m.id)) out.add(m);
      }
    }
    return out;
  }

  @override
  Future<SearchResults?> search(SearchResults? query) async {
    final results = query!;
    final anime = results.type == SearchType.ANIME;
    final loaded = await facets(anime: anime);
    String? ids(List<String>? names, List<AnimePlanetFacet> from) {
      final found = [
        for (final n in names ?? const <String>[])
          from
              .where((f) => f.name.toLowerCase() == n.toLowerCase())
              .firstOrNull
              ?.id,
      ].whereType<String>().toList();
      return found.isEmpty ? null : found.join(',');
    }

    final text = results.search?.trim() ?? '';
    final sort = results.sort;
    final page = results.page ?? 1;
    final include = ids(results.genres, loaded?.tags ?? const []);
    final exclude = ids(results.excludedGenres, loaded?.tags ?? const []);
    final type = ids(
      results.format == null ? null : [results.format!],
      loaded?.types ?? const [],
    );
    final season = results.season != null && results.seasonYear != null
        ? '${results.season!.toLowerCase()}-${results.seasonYear}'
        : null;
    final order = (sort == null || sort.isEmpty)
        ? (text.isEmpty ? 'status_2' : null)
        : sort;
    final params = <String, String>{
      if (text.isNotEmpty) 'name': text,
      'sort': ?order,
      if (order != null) 'order': order == 'title' ? 'asc' : 'desc',
      'include_tags': ?include,
      'exclude_tags': ?exclude,
      'include_types': ?type,
      'season': ?season,
      if (results.startYear != null) ...{
        'year': '${results.startYear}',
        'to_year': '${results.startYear}',
      },
      if (page > 1) 'page': '$page',
    };
    final body = await client.page(
      anime ? '/anime/all' : '/manga/all',
      query: params,
      cache: const Duration(minutes: 3),
    );
    final listing = parseAnimePlanetListing(body);
    return results
      ..results = await _withList(listing.items, anime: anime)
      ..hasNextPage = page < listing.pages;
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) async {
    final all = await library(anime: anime);
    final out = groupByStatus(all, {
      'CURRENT': anime ? getString.watching : getString.reading,
      'PLANNING': getString.planning,
      'COMPLETED': getString.completed,
      'PAUSED': getString.paused,
      'DROPPED': getString.dropped,
      'WONT': anime
          ? getString.animePlanetWontWatch
          : getString.animePlanetWontRead,
    });
    try {
      for (final (title, items) in await customLists(anime: anime)) {
        out[out.containsKey(title) ? '$title ' : title] = items;
      }
    } catch (e, st) {
      logError('AnimePlanet', e, st);
    }
    return out;
  }

  @override
  Future<List<Media>> getCalendarData() async => const [];
}
