part of '../Queries.dart';

extension on AnilistQueries {
  Future<List<ServiceNotification>> _getNotifications(int page) async {
    if (userId() == null) return const [];
    final data = await client.query(
      _queryNotifications,
      variables: {'page': page, 'reset': page == 1},
    );
    if (page == 1) unawaited(refreshUser());
    final list =
        ((data['Page'] as Map<String, dynamic>?)?['notifications'] as List?) ??
        const [];
    return list
        .cast<Map<String, dynamic>>()
        .map(parseAnilistNotification)
        .whereType<ServiceNotification>()
        .toList();
  }
}

const _queryNotifications = r'''
query ($page: Int, $reset: Boolean) {
  Page(page: $page, perPage: 30) {
    notifications(resetNotificationCount: $reset) {
      __typename
      ... on AiringNotification { id type episode createdAt media { id title { userPreferred } coverImage { large } } }
      ... on RelatedMediaAdditionNotification { id type createdAt media { id title { userPreferred } coverImage { large } } }
      ... on FollowingNotification { id type userId context createdAt user { id name avatar { large } } }
      ... on ActivityMessageNotification { id type userId activityId context createdAt user { id name avatar { large } } }
      ... on ActivityMentionNotification { id type userId activityId context createdAt user { id name avatar { large } } }
      ... on ActivityReplyNotification { id type userId activityId context createdAt user { id name avatar { large } } }
      ... on ActivityReplySubscribedNotification { id type userId activityId context createdAt user { id name avatar { large } } }
      ... on ActivityLikeNotification { id type userId activityId context createdAt user { id name avatar { large } } }
      ... on ActivityReplyLikeNotification { id type userId activityId context createdAt user { id name avatar { large } } }
    }
  }
}
''';
