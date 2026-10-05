import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import 'Feed.dart';

class AnilistMangaFeed extends AnilistTypeFeed {
  @override
  MediaType get type => MediaType.manga;

  @override
  SearchResults? sectionQuery(SearchResults base, String section) =>
      switch (section) {
        'Popular Manga' => base..sort = 'POPULARITY_DESC',
        'Top Rated Manga' => base..sort = 'SCORE_DESC',
        'Most Favourite Manga' => base..sort = 'FAVOURITES_DESC',
        'Trending Manhwa' =>
          base
            ..sort = 'TRENDING_DESC'
            ..countryOfOrigin = 'KR',
        'Trending Novels' =>
          base
            ..sort = 'TRENDING_DESC'
            ..format = 'NOVEL',
        _ => null,
      };
}
