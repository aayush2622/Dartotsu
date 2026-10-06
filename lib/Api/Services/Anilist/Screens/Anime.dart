import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../AnilistQueries.dart';
import 'Feed.dart';

class AnilistAnimeFeed extends AnilistTypeFeed {
  @override
  MediaType get type => MediaType.anime;

  @override
  int typeOf(String title) => switch (title) {
    'Trending Now' => 1,
    'Popular Anime' => 3,
    _ => 0,
  };

  @override
  SearchResults? sectionQuery(SearchResults base, String title) =>
      switch (title) {
        'Trending Now' => base..sort = 'TRENDING_DESC',
        'Popular Anime' => base..sort = 'POPULARITY_DESC',
        'Top Rated Series' => base..sort = 'SCORE_DESC',
        'Most Favourite Series' => base..sort = 'FAVOURITES_DESC',
        'Trending Movies' =>
          base
            ..sort = 'TRENDING_DESC'
            ..format = 'MOVIE',
        'Popular This Season' => () {
          final (season, year) = currentAnilistSeason();
          return base
            ..sort = 'POPULARITY_DESC'
            ..season = season
            ..seasonYear = year;
        }(),
        _ => null,
      };
}
