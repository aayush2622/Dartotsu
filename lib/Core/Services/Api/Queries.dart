import '../../../Model/SearchResults.dart';
import '../Model/Media.dart';
import '../Model/Review.dart';
import '../ServiceNotification.dart';
import 'SectionJobs.dart';

abstract class Queries {
  Future<bool> getUserData();

  Future<Media?> getMedia(String id);

  Future<Media?> mediaDetails(Media media);

  List<SectionJob> homeJobs();

  List<SectionJob> browseJobs({required bool anime});

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

  Future<List<Review>> getReviews(String mediaId, {int page = 1}) =>
      Future.value(const []);

  Future<SearchResults?> search(SearchResults? results);
}
