import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Auth.dart';
import '../Data/Browse.dart';

class TraktSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [MediaType.movie, MediaType.series];

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec(
    sorts: traktSearchSorts,
    genres: traktGenres,
    countries: {
      '': getString.anyCountry,
      'US': 'United States',
      'GB': 'United Kingdom',
      'JP': 'Japan',
      'KR': 'Korea',
      'CN': 'China',
      'FR': 'France',
      'DE': 'Germany',
      'IN': 'India',
    },
    year: true,
    onList: traktAuth.isLoggedIn,
  );

  @override
  Future<SearchResults?> search(SearchResults query) =>
      traktAuth.queries.search(query);
}
