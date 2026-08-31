class AnilistNotification {
  final int id;
  final String text;
  final String? imageUrl;
  final int createdAt;
  final int? mediaId;

  const AnilistNotification({
    required this.id,
    required this.text,
    this.imageUrl,
    required this.createdAt,
    this.mediaId,
  });

  static AnilistNotification? fromJson(Map<String, dynamic> json) {
    final type = json['__typename'] as String?;
    final id = (json['id'] as num?)?.toInt() ?? 0;
    final createdAt = (json['createdAt'] as num?)?.toInt() ?? 0;

    String title(Map<String, dynamic>? media) =>
        (media?['title'] as Map?)?['userPreferred'] as String? ?? 'a title';
    String? cover(Map<String, dynamic>? media) =>
        (media?['coverImage'] as Map?)?['large'] as String?;
    String? avatar(Map<String, dynamic>? user) =>
        (user?['avatar'] as Map?)?['large'] as String?;

    final media = json['media'] as Map<String, dynamic>?;
    final user = json['user'] as Map<String, dynamic>?;

    switch (type) {
      case 'AiringNotification':
        final episode = (json['episode'] as num?)?.toInt();
        return AnilistNotification(
          id: id,
          text: 'Episode $episode of ${title(media)} aired',
          imageUrl: cover(media),
          createdAt: createdAt,
          mediaId: (media?['id'] as num?)?.toInt(),
        );
      case 'RelatedMediaAdditionNotification':
        return AnilistNotification(
          id: id,
          text: '${title(media)} was added to AniList',
          imageUrl: cover(media),
          createdAt: createdAt,
          mediaId: (media?['id'] as num?)?.toInt(),
        );
      case 'FollowingNotification':
      case 'ActivityMentionNotification':
      case 'ActivityReplyNotification':
      case 'ActivityLikeNotification':
      case 'ActivityReplyLikeNotification':
        final name = user?['name'] as String? ?? 'Someone';
        final context = (json['context'] as String? ?? '').trim();
        return AnilistNotification(
          id: id,
          text: '$name $context'.trim(),
          imageUrl: avatar(user),
          createdAt: createdAt,
        );
      default:
        return null;
    }
  }
}
