class ServiceNotification {
  final String id;
  final String text;
  final String? imageUrl;
  final DateTime createdAt;
  final String? mediaId;
  final String? userId;
  final String? activityId;

  const ServiceNotification({
    required this.id,
    required this.text,
    this.imageUrl,
    required this.createdAt,
    this.mediaId,
    this.userId,
    this.activityId,
  });
}
