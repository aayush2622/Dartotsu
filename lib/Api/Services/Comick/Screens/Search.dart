import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Queries.dart';

class ComickSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.manga, MediaType.anime];

  @override
  Future<SearchResults?> search(SearchResults query) =>
      comickAuth.queries.search(query);

  @override
  Future<void> prepare() async {
    await comickAuth.queries.getGenresAndTags();
  }

  @override
  List<SearchType> get searchTypes =>
      const [SearchType.MANGA, SearchType.ANIME];

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec(
    sorts: comickSearchSorts,
    formats: type == MediaType.anime
        ? const ['TV', 'MOVIE', 'OVA', 'ONA', 'SPECIAL']
        : const ['MANGA', 'MANHWA', 'MANHUA'],
    statuses: const [
      'RELEASING',
      'FINISHED',
      'NOT YET RELEASED',
      'HIATUS',
      'CANCELLED',
    ],
    genres: comickGenres(),
    tags: comickTags(),
    adult: true,
    onList: comickAuth.isLoggedIn,
  );
}
