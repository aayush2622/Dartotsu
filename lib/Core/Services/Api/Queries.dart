import '../../../Model/SearchResults.dart';
import '../Model/Media.dart';
import '../ServiceNotification.dart';
import 'SectionJobs.dart';

abstract class Queries {
  Future<bool> getUserData();

  Future<Media?> getMedia(String id);

  Future<Media?> mediaDetails(Media media);

  Future<Map<String, List<Media>>> initHomePage();

  Future<Map<String, List<Media>>> getAnimeList();

  Future<Map<String, List<Media>>> getMangaList();

  List<SectionJob> homeJobs() => [initHomePage];

  List<SectionJob> browseJobs({required bool anime}) => [
    anime ? getAnimeList : getMangaList,
  ];

  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  });

  Future<List<Media>> getCalendarData();

  Future<bool> getGenresAndTags();

  Future<List<String?>> getBannerImages() => Future.value([null, null]);

  Future<List<ServiceNotification>> getNotifications({int page = 1}) =>
      Future.value(const []);

  Future<SearchResults?> search(SearchResults? results);
}
