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
