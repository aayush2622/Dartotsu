import '../../../Model/SearchResults.dart';
import '../Model/Media.dart';
import '../ServiceNotification.dart';

/// Read surface a service exposes. `MediaService.getQueries == null` => that
/// service's screens fall back to "not implemented".
///
/// The list-shaped getters return an insertion-ordered map: the key is the
/// section title to render, the value the media in that section.
abstract class Queries {
  /// Fetch + cache the signed-in user. Returns success.
  Future<bool> getUserData();

  /// A single media by id (native id in string form).
  Future<Media?> getMedia(String id);

  /// Fill [media] with detail-page data (characters, relations, …) and return it.
  Future<Media?> mediaDetails(Media media);

  /// Home dashboard sections.
  Future<Map<String, List<Media>>> initHomePage();

  /// Anime tab sections.
  Future<Map<String, List<Media>>> getAnimeList();

  /// Manga tab sections.
  Future<Map<String, List<Media>>> getMangaList();

  /// The signed-in user's own lists. [userId] defaults to the current user.
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  });

  /// Airing calendar.
  Future<List<Media>> getCalendarData();

  /// Genre + tag vocabulary; caches to prefs. Returns success.
  Future<bool> getGenresAndTags();

  /// One banner image url per type (`ANIME`, `MANGA`) for the home header.
  Future<List<String?>> getBannerImages() => Future.value([null, null]);

  /// Activity / airing notifications.
  Future<List<ServiceNotification>> getNotifications({int page = 1}) =>
      Future.value(const []);

  /// Search. Mutates and returns [results] with `.results` / `.hasNextPage`.
  Future<SearchResults?> search(SearchResults? results);
}
