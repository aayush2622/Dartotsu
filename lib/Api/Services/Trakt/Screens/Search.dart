import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Data/Browse.dart';

class TraktSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [
    MediaType.anime,
    MediaType.movie,
    MediaType.series,
  ];

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec(
    sorts: traktSearchSorts,
    genres: traktGenres,
    year: true,
    onList: traktAuth.isLoggedIn,
  );

  @override
  Future<SearchResults?> search(SearchResults query) =>
      traktAuth.queries.search(query);
}
