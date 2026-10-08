import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../Auth.dart';
import '../Queries.dart';

class MalSearchView extends SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      malAuth.queries.search(query);

  @override
  Future<void> prepare() async {
    await malAuth.queries.getGenresAndTags();
  }

  @override
  List<SearchType> get searchTypes => const [
    SearchType.ANIME,
    SearchType.MANGA,
  ];

  @override
  SearchFilterSpec filters(MediaType type) {
    final anime = type.isVideo;
    return SearchFilterSpec(
      sorts: malSearchSorts,
      formats: anime
          ? const ['TV', 'MOVIE', 'OVA', 'ONA', 'SPECIAL', 'MUSIC']
          : const ['MANGA', 'NOVEL', 'ONE SHOT', 'MANHWA', 'MANHUA'],
      statuses: const [
        'RELEASING',
        'FINISHED',
        'NOT YET RELEASED',
        'HIATUS',
        'CANCELLED',
      ],
      genres: malGenres(anime: anime),
      year: true,
      adult: true,
    );
  }
}
