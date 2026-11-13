import '../../../../Model/SectionLayout.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';
import '../Prefs.dart';
import 'Feed.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class AnilistAnimeFeed extends AnilistTypeFeed {
  @override
  MediaType get type => MediaType.anime;

  @override
  List<FeedChip> get chips => [
    FeedChip('previous', getString.previousSeason),
    FeedChip('current', getString.thisSeason),
    FeedChip('next', getString.nextSeason),
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
        onList: AnilistPref.excludeListActive ? false : null,
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
  SectionLayout typeOf(String title) => switch (title) {
    'Trending Now' => SectionLayout.carousel,
    'Popular Anime' => SectionLayout.banner,
    _ => SectionLayout.shelf,
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
