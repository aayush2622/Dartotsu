import '../../../Model/SearchResults.dart';
import '../Model/Media.dart';
import '../Model/Review.dart';
import '../ServiceNotification.dart';
import 'SectionJobs.dart';

abstract class Queries {
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

/// Splits [all] into one list per status in [names] (status key -> shown
/// title, in display order), followed by an `All` list.
Map<String, List<Media>> groupByStatus(
  List<Media> all,
  Map<String, String> names,
) {
  final buckets = <String, List<Media>>{};
  for (final m in all) {
    if (m.userStatus case final status?) (buckets[status] ??= []).add(m);
  }
  return {
    for (final e in names.entries) e.value: ?buckets[e.key],
    if (all.isNotEmpty) 'All': all,
  };
}
