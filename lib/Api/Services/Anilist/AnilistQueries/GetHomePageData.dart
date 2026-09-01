part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Map<String, List<Media>>> _initHomePage() async {
    final id = userId();
    final data = await executeQuery(_queryHome(id));
    final out = <String, List<Media>>{};

    if (id != null) {
      out['Continue Watching'] = _collectionMedia(
        data['currentAnime'] as Map<String, dynamic>?,
      );
      out['Continue Reading'] = _collectionMedia(
        data['currentManga'] as Map<String, dynamic>?,
      );
      out['Planned Anime'] = _collectionMedia(
        data['plannedAnime'] as Map<String, dynamic>?,
      );
      out['Planned Manga'] = _collectionMedia(
        data['plannedManga'] as Map<String, dynamic>?,
      );
      out['Favourite Anime'] = _favourites(data['favoriteAnime'], anime: true);
      out['Favourite Manga'] = _favourites(data['favoriteManga'], anime: false);
      out['Recommended For You'] = _recommended(data['recommended']);
    } else {
      out['Trending Anime'] = _pageMedia(
        data['trendingAnime'] as Map<String, dynamic>?,
      );
      out['Trending Manga'] = _pageMedia(
        data['trendingManga'] as Map<String, dynamic>?,
      );
      out['Popular Anime'] = _pageMedia(
        data['popularAnime'] as Map<String, dynamic>?,
      );
    }

    return _nonEmpty(out);
  }
}

List<Media> _favourites(Object? user, {required bool anime}) {
  final edges =
      ((user as Map<String, dynamic>?)?['favourites']
              as Map<String, dynamic>?)?[anime ? 'anime' : 'manga']
          as Map<String, dynamic>?;
  return ((edges?['edges'] as List?) ?? const [])
      .cast<Map<String, dynamic>>()
      .map((e) => e['node'] as Map<String, dynamic>?)
      .whereType<Map<String, dynamic>>()
      .map((n) => mapAnilistMedia(n)..isFav = true)
      .toList();
}

List<Media> _recommended(Object? page) {
  final recs =
      ((page as Map<String, dynamic>?)?['recommendations'] as List?) ??
      const [];
  final media = recs
      .cast<Map<String, dynamic>>()
      .map((r) => r['mediaRecommendation'] as Map<String, dynamic>?)
      .whereType<Map<String, dynamic>>()
      .map((m) => mapAnilistMedia(m))
      .toList();
  media.sort((a, b) => (b.meanScore ?? 0).compareTo(a.meanScore ?? 0));
  return media;
}

String _queryHome(int? userId) {
  if (userId == null) {
    return '''
{
  trendingAnime: Page(page: 1, perPage: 25) {
    media(type: ANIME, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  trendingManga: Page(page: 1, perPage: 25) {
    media(type: MANGA, sort: TRENDING_DESC, isAdult: false) { $anilistMediaFragment }
  }
  popularAnime: Page(page: 1, perPage: 25) {
    media(type: ANIME, sort: POPULARITY_DESC, isAdult: false) { $anilistMediaFragment }
  }
}''';
  }

  String continueList(String type) =>
      '''
MediaListCollection(userId: $userId, type: $type, status_in: [CURRENT, REPEATING], sort: UPDATED_TIME_DESC) {
    lists { entries { progress private score(format: POINT_100) status updatedAt media { $anilistMediaFragment } } }
  }''';

  String plannedList(String type) =>
      '''
MediaListCollection(userId: $userId, type: $type, status: PLANNING, sort: MEDIA_POPULARITY_DESC) {
    lists { entries { media { $anilistMediaFragment } } }
  }''';

  String favourites(String field) =>
      '''
User(id: $userId) {
    favourites {
      $field(page: 1) {
        edges { favouriteOrder node { $anilistMediaFragment } }
      }
    }
  }''';

  return '''
{
  currentAnime: ${continueList('ANIME')}
  currentManga: ${continueList('MANGA')}
  plannedAnime: ${plannedList('ANIME')}
  plannedManga: ${plannedList('MANGA')}
  favoriteAnime: ${favourites('anime')}
  favoriteManga: ${favourites('manga')}
  recommended: Page(page: 1, perPage: 30) {
    recommendations(sort: RATING_DESC, onList: true) {
      mediaRecommendation { $anilistMediaFragment }
    }
  }
}''';
}
