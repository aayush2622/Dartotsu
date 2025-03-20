import '../../DataClass/Media.dart';
import '../../DataClass/SearchResults.dart';

abstract class Queries {
  /// Fetches user data and returns a [bool] indicating success.
  Future<bool>? getUserData();

  /// Retrieves media details for the given [id].
  ///
  /// If [mal] is true, it will use MyAnimeList's mapping for the ID.
  /// Returns a [Media] object if found.
  Future<Media?>? getMedia(int id, {bool mal = true});

  /// Fetches additional media details for the provided [media] object.
  /// Returns an updated [media] object.
  Future<Media?>? mediaDetails(Media media);

  /// Initializes and returns media data for the homepage in the form of a map.
  /// The keys are section names, and values are lists of [Media] objects.
  Future<Map<String, List<Media>>>? initHomePage();

  /// Fetches Genres and Tags data.
  /// Returns a [bool] indicating success.
  Future<bool>? getGenresAndTags();

  /// Fetches the user's media lists.
  ///
  /// Required:
  /// - [anime]: If true, fetches anime lists. If false, fetches manga lists.
  /// - [userId]: The user's ID.
  /// - [sortOrder]: Sort order for the lists.
  /// Returns a map where the keys are list categories and values are lists of [Media] objects.
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    required int userId,
    String? sortOrder,
  });

  /// Retrieves a list of banner image URLs for the homepage.
  /// Returns a list of [String] representing the URLs.
  Future<List<String?>> getBannerImages() => Future.value([]);

  /// Fetches the anime list.
  /// Returns a map where the keys are list categories and values are lists of [Media] objects.
  Future<Map<String, List<Media>>> getAnimeList();

  /// Fetches the manga list.
  /// Returns a map where the keys are list categories and values are lists of [Media] objects.
  Future<Map<String, List<Media>>> getMangaList();

  /// Fetches the calender data.
  /// Returns a list of [Media] objects.
  Future<List<Media>> getCalendarData();

  /// Searches for media based on various parameters.
  ///
  /// Required:
  /// - [type]: Type of media (e.g., anime, manga).
  ///
  /// Optional:
  /// - [page], [perPage]: Pagination options.
  /// - [search]: Search query.
  /// - [sort]: Sorting method.
  /// - [genres], [tags]: Filters by genre or tag.
  /// - [status], [source], [format], [countryOfOrigin]: Additional filters.
  /// - [isAdult]: Include adult content if true.
  /// - [onList]: If true, only media on the user's list is included.
  /// - [excludedGenres], [excludedTags]: Exclude specific genres or tags.
  /// - [startYear], [seasonYear], [season]: Filter by year or season.
  /// - [id]: Specific media ID.
  /// - [hd], [adultOnly]: Additional display and filtering options.
  ///
  /// Returns a [SearchResults] object containing the search results.
  Future<SearchResults?> search(SearchResults? searchResults);
}
