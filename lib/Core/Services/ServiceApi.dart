import 'Model/Media.dart';

class MediaRail {
  final String title;
  final List<Media> media;
  const MediaRail(this.title, this.media);
}

class ServiceNotification {
  final String id;
  final String text;
  final String? imageUrl;
  final DateTime createdAt;
  final String? mediaId;

  const ServiceNotification({
    required this.id,
    required this.text,
    this.imageUrl,
    required this.createdAt,
    this.mediaId,
  });
}

/// Read surface a service exposes. `MediaService.api == null` means the service
/// has no query layer yet — screens fall back to "not implemented".
abstract class ServiceApi {
  Future<List<MediaRail>> getHomeRails();

  Future<List<MediaRail>> getAnimeRails();

  Future<List<MediaRail>> getMangaRails();

  Future<Media> getMediaDetails(String id);

  Future<List<Media>> search({
    required bool anime,
    required String term,
    int page = 1,
  });

  Future<List<ServiceNotification>> getNotifications({int page = 1}) async =>
      const [];
}

/// Write surface. `MediaService.mutations == null` => list editing disabled.
abstract class ServiceMutations {
  Future<void> saveListEntry({
    required String mediaId,
    String? status,
    int? progress,
    num? score,
    bool? private,
  });

  Future<void> deleteListEntry(String entryId);
}
