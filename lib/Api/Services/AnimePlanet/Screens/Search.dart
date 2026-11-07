import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../AnimePlanetService.dart';
import '../Queries.dart';

class AnimePlanetSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  @override
  Future<SearchResults?> search(SearchResults query) =>
      animePlanetQueries.search(query);

  @override
  Future<void> prepare() async {
    await animePlanetQueries.getGenresAndTags();
  }

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec(
    sorts: animePlanetSorts,
    formats: animePlanetQueries.typeNames(anime: type == MediaType.anime),
    genres: animePlanetQueries.tagNames(anime: type == MediaType.anime),
    year: true,
    season: type == MediaType.anime,
  );
}
