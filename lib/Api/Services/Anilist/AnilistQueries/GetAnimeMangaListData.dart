part of '../AnilistQueries.dart';

class _BrowseRail {
  final String title;
  final String alias;
  final String fragment;

  final String kind;

  const _BrowseRail(
    this.title,
    this.alias,
    this.fragment, {
    this.kind = 'page',
  });

  List<String> get args => [title, alias, kind];
}

extension on AnilistQueries {
  List<SectionJob> _browseJobs({required bool anime}) {
    final rails = anime ? _animeRails() : _mangaRails();
    if (AnilistPref.queryLoadMode.value == QueryLoadMode.stacked) {
      return [() => _fetchRails(rails)];
    }
    return [
      for (final rail in rails) () => _fetchRails([rail]),
    ];
  }

  Future<Map<String, List<Media>>> _fetchRails(List<_BrowseRail> rails) async {
    final gql = rails.map((r) => r.fragment).join('\n');
    return compute(_parseBrowse, {
      'body': await client.queryRaw('{$gql}'),
      'rails': [for (final rail in rails) rail.args],
    });
  }
}

Map<String, List<Media>> _parseBrowse(Map<String, dynamic> args) {
  final data = anilistData(args['body'] as String);
  final out = <String, List<Media>>{};
  for (final rail in (args['rails'] as List).cast<List>()) {
    final [title, alias, kind] = rail.cast<String>();
    out[title] = kind == 'airing'
        ? _recentUpdates(data[alias])
        : _pageMedia(data[alias] as Map<String, dynamic>?);
  }
  return _nonEmpty(out);
}

List<_BrowseRail> _animeRails() {
  final now = DateTime.now();
  final (season, seasonYear) = currentAnilistSeason();
  final cutoff = now.millisecondsSinceEpoch ~/ 1000 - 10000;
  return [
    _BrowseRail('Recent Updates', 'recentUpdates', '''
  recentUpdates: Page(page: 1, perPage: 50) {
    airingSchedules(airingAt_greater: 0, airingAt_lesser: $cutoff, sort: TIME_DESC) {
      episode airingAt media { $anilistMediaFragment }
    }
  }''', kind: 'airing'),
    _BrowseRail(
      'Trending Now',
      'trendingAnime',
      _browseQuery('trendingAnime', 'TRENDING_DESC', 'ANIME', perPage: 20),
    ),
    _BrowseRail(
      'Popular This Season',
      'season',
      _browseQuery(
        'season',
        'POPULARITY_DESC',
        'ANIME',
        season: season,
        seasonYear: seasonYear,
      ),
    ),
    _BrowseRail(
      'Trending Movies',
      'movies',
      _browseQuery('movies', 'POPULARITY_DESC', 'ANIME', format: 'MOVIE'),
    ),
    _BrowseRail(
      'Top Rated Series',
      'topRated',
      _browseQuery('topRated', 'SCORE_DESC', 'ANIME', format: 'TV'),
    ),
    _BrowseRail(
      'Most Favourite Series',
      'mostFav',
      _browseQuery('mostFav', 'FAVOURITES_DESC', 'ANIME', format: 'TV'),
    ),
    _BrowseRail(
      'Popular Anime',
      'popular',
      _browseQuery('popular', 'POPULARITY_DESC', 'ANIME'),
    ),
  ];
}

List<_BrowseRail> _mangaRails() => [
  _BrowseRail(
    'Trending Now',
    'trending',
    _browseQuery(
      'trending',
      'TRENDING_DESC',
      'MANGA',
      country: 'JP',
      perPage: 20,
    ),
  ),
  _BrowseRail(
    'Trending Manhwa',
    'manhwa',
    _browseQuery('manhwa', 'POPULARITY_DESC', 'MANGA', country: 'KR'),
  ),
  _BrowseRail(
    'Trending Novels',
    'novels',
    _browseQuery(
      'novels',
      'POPULARITY_DESC',
      'MANGA',
      format: 'NOVEL',
      country: 'JP',
    ),
  ),
  _BrowseRail(
    'Top Rated Manga',
    'topRated',
    _browseQuery('topRated', 'SCORE_DESC', 'MANGA'),
  ),
  _BrowseRail(
    'Most Favourite Manga',
    'mostFav',
    _browseQuery('mostFav', 'FAVOURITES_DESC', 'MANGA'),
  ),
  _BrowseRail(
    'Popular Manga',
    'popular',
    _browseQuery('popular', 'POPULARITY_DESC', 'MANGA', country: 'JP'),
  ),
];

List<Media> _recentUpdates(Object? page) {
  final seen = <String>{};
  return (((page as Map<String, dynamic>?)?['airingSchedules'] as List?) ??
          const [])
      .cast<Map<String, dynamic>>()
      .map((s) => s['media'] as Map<String, dynamic>?)
      .whereType<Map<String, dynamic>>()
      .where((m) => m['isAdult'] != true && seen.add(m['id'].toString()))
      .map((m) => mapAnilistMedia(m))
      .toList();
}

String _browseQuery(
  String alias,
  String sort,
  String type, {
  String? format,
  String? country,
  String? season,
  int? seasonYear,
  int perPage = 40,
}) {
  final filters = [
    'sort: $sort',
    'type: $type',
    'isAdult: false',
    if (format != null) 'format: $format',
    if (country != null) 'countryOfOrigin: $country',
    if (season != null) 'season: $season',
    if (seasonYear != null) 'seasonYear: $seasonYear',
  ].join(', ');
  return '''
  $alias: Page(page: 1, perPage: $perPage) {
    media($filters) { $anilistMediaFragment }
  }''';
}
