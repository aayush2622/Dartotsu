import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import 'Feed.dart';

class AnilistAnimeFeed extends AnilistTypeFeed {
  @override
  MediaType get type => MediaType.anime;

  @override
  List<FeedChip> get chips => const [
    FeedChip('previous', 'Previous season'),
    FeedChip('current', 'This season'),
    FeedChip('next', 'Next season'),
  ];

  @override
  Future<List<Media>?> chipMedia(FeedChip chip) async {
    final (season, year) = _shiftedSeason(switch (chip.id) {
      'previous' => -1,
      'next' => 1,
      _ => 0,
    });
    final results = await anilistAuth.queries.search(
      SearchResults(
        type: SearchType.ANIME,
        perPage: 12,
        sort: 'TRENDING_DESC',
        season: season,
        seasonYear: year,
      ),
    );
    return results?.results;
  }

  (String, int) _shiftedSeason(int offset) {
    const order = ['WINTER', 'SPRING', 'SUMMER', 'FALL'];
    final (season, year) = currentAnilistSeason();
    final index = order.indexOf(season) + offset;
    final wraps = (index / 4).floor();
    return (order[index % 4], year + wraps);
  }

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
