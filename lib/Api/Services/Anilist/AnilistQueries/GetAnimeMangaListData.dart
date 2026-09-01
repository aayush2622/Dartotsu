part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Map<String, List<Media>>> _getAnimeList() async =>
      compute(_parseAnimeList, await client.queryRaw(_queryAnimeList()));

  Future<Map<String, List<Media>>> _getMangaList() async =>
      compute(_parseMangaList, await client.queryRaw(_queryMangaList()));
}

Map<String, List<Media>> _parseAnimeList(String body) {
  final data = anilistData(body);
  return _nonEmpty({
    'Recent Updates': _recentUpdates(data['recentUpdates']),
    'Trending Now': _pageMedia(data['trendingAnime'] as Map<String, dynamic>?),
    'Popular This Season': _pageMedia(data['season'] as Map<String, dynamic>?),
    'Trending Movies': _pageMedia(data['movies'] as Map<String, dynamic>?),
    'Top Rated Series': _pageMedia(data['topRated'] as Map<String, dynamic>?),
    'Most Favourite Series': _pageMedia(
      data['mostFav'] as Map<String, dynamic>?,
    ),
    'Popular Anime': _pageMedia(data['popular'] as Map<String, dynamic>?),
  });
}

Map<String, List<Media>> _parseMangaList(String body) {
  final data = anilistData(body);
  return _nonEmpty({
    'Trending Now': _pageMedia(data['trending'] as Map<String, dynamic>?),
    'Trending Manhwa': _pageMedia(data['manhwa'] as Map<String, dynamic>?),
    'Trending Novels': _pageMedia(data['novels'] as Map<String, dynamic>?),
    'Top Rated Manga': _pageMedia(data['topRated'] as Map<String, dynamic>?),
    'Most Favourite Manga': _pageMedia(
      data['mostFav'] as Map<String, dynamic>?,
    ),
    'Popular Manga': _pageMedia(data['popular'] as Map<String, dynamic>?),
  });
}

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

String _queryAnimeList() {
  final now = DateTime.now();
  final season = ['WINTER', 'SPRING', 'SUMMER', 'FALL'][(now.month - 1) ~/ 3];
  final cutoff = now.millisecondsSinceEpoch ~/ 1000 - 10000;
  return '''
{
  recentUpdates: Page(page: 1, perPage: 50) {
    airingSchedules(airingAt_greater: 0, airingAt_lesser: $cutoff, sort: TIME_DESC) {
      episode airingAt media { $anilistMediaFragment }
    }
  }
${_browseQuery('trendingAnime', 'TRENDING_DESC', 'ANIME', perPage: 20)}
${_browseQuery('season', 'POPULARITY_DESC', 'ANIME', season: season, seasonYear: now.year)}
${_browseQuery('movies', 'POPULARITY_DESC', 'ANIME', format: 'MOVIE')}
${_browseQuery('topRated', 'SCORE_DESC', 'ANIME', format: 'TV')}
${_browseQuery('mostFav', 'FAVOURITES_DESC', 'ANIME', format: 'TV')}
${_browseQuery('popular', 'POPULARITY_DESC', 'ANIME')}
}''';
}

String _queryMangaList() =>
    '''
{
${_browseQuery('trending', 'TRENDING_DESC', 'MANGA', country: 'JP', perPage: 20)}
${_browseQuery('manhwa', 'POPULARITY_DESC', 'MANGA', country: 'KR')}
${_browseQuery('novels', 'POPULARITY_DESC', 'MANGA', format: 'NOVEL', country: 'JP')}
${_browseQuery('topRated', 'SCORE_DESC', 'MANGA')}
${_browseQuery('mostFav', 'FAVOURITES_DESC', 'MANGA')}
${_browseQuery('popular', 'POPULARITY_DESC', 'MANGA', country: 'JP')}
}''';
