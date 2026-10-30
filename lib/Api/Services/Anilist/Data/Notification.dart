import '../../../../Core/Services/ServiceNotification.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

ServiceNotification? parseAnilistNotification(Map<String, dynamic> json) {
  final type = json['__typename'] as String?;
  final id = (json['id'] as num?)?.toInt() ?? 0;
  final createdAt = DateTime.fromMillisecondsSinceEpoch(
    ((json['createdAt'] as num?)?.toInt() ?? 0) * 1000,
  );

  String title(Map<String, dynamic>? media) =>
      (media?['title'] as Map?)?['userPreferred'] as String? ??
      getString.notificationATitle;
  String? cover(Map<String, dynamic>? media) =>
      (media?['coverImage'] as Map?)?['large'] as String?;
  String? avatar(Map<String, dynamic>? user) =>
      (user?['avatar'] as Map?)?['large'] as String?;

  bool? isAnime(Map<String, dynamic>? media) {
    final kind = media?['type'] as String?;
    return kind == null ? null : kind == 'ANIME';
  }

  final media = json['media'] as Map<String, dynamic>?;
  final user = json['user'] as Map<String, dynamic>?;

  switch (type) {
    case 'AiringNotification':
      final episode = (json['episode'] as num?)?.toInt();
      return ServiceNotification(
        id: '$id',
        text: getString.notificationAired('$episode', title(media)),
        imageUrl: cover(media),
        createdAt: createdAt,
        mediaId: (media?['id'] as num?)?.toInt().toString(),
        kind: NotificationKind.airing,
        title: title(media),
        detail: getString.notificationAiredDetail('$episode'),
        mediaIsAnime: true,
      );
    case 'RelatedMediaAdditionNotification':
      return ServiceNotification(
        id: '$id',
        text: getString.notificationAdded(title(media)),
        imageUrl: cover(media),
        createdAt: createdAt,
        mediaId: (media?['id'] as num?)?.toInt().toString(),
        kind: NotificationKind.media,
        title: title(media),
        detail: getString.notificationAddedDetail,
        mediaIsAnime: isAnime(media),
      );
    case 'FollowingNotification':
    case 'ActivityMessageNotification':
    case 'ActivityMentionNotification':
    case 'ActivityReplySubscribedNotification':
    case 'ActivityReplyNotification':
    case 'ActivityLikeNotification':
    case 'ActivityReplyLikeNotification':
      final name = user?['name'] as String? ?? getString.notificationSomeone;
      final context = (json['context'] as String? ?? '').trim();
      return ServiceNotification(
        id: '$id',
        text: '$name $context'.trim(),
        imageUrl: avatar(user),
        createdAt: createdAt,
        userId:
            (json['userId'] as num?)?.toInt().toString() ??
            (user?['id'] as num?)?.toInt().toString(),
        activityId: (json['activityId'] as num?)?.toInt().toString(),
        title: name,
        detail: context.isEmpty ? null : context,
        kind: switch (type) {
          'FollowingNotification' => NotificationKind.follow,
          'ActivityMessageNotification' => NotificationKind.message,
          'ActivityMentionNotification' => NotificationKind.mention,
          'ActivityLikeNotification' ||
          'ActivityReplyLikeNotification' => NotificationKind.like,
          _ => NotificationKind.reply,
        },
      );
    default:
      return null;
  }
}
