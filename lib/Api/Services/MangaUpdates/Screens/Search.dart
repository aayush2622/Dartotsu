import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Queries.dart';

class MangaUpdatesSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.manga, MediaType.novel];

  @override
  Future<SearchResults?> search(SearchResults query) =>
      mangaUpdatesAuth.queries.search(query);

  @override
  Future<void> prepare() async {
    await mangaUpdatesAuth.queries.getGenresAndTags();
  }

  @override
  List<SearchType> get searchTypes => const [SearchType.MANGA];

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec(
    sorts: mangaUpdatesSearchSorts,
    formats: const [
      'MANGA',
      'NOVEL',
      'MANHWA',
      'MANHUA',
      'OEL',
      'DOUJINSHI',
      'ARTBOOK',
    ],
    statuses: const [
      'RELEASING',
      'FINISHED',
      'HIATUS',
      'CANCELLED',
    ],
    genres: mangaUpdatesGenres(),
    adult: true,
    onList: mangaUpdatesAuth.isLoggedIn,
  );
}
