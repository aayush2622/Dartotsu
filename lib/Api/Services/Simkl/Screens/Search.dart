import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../Auth.dart';

class SimklSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [
    MediaType.anime,
    MediaType.movie,
    MediaType.series,
  ];

  @override
  Future<SearchResults?> search(SearchResults query) async {
    if (!simklAuth.isLoggedIn) {
      snackString('Sign in to Simkl to search');
      return query
        ..results = const []
        ..hasNextPage = false;
    }
    return simklAuth.queries.search(query);
  }
}
