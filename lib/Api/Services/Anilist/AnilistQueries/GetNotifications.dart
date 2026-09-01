part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<ServiceNotification>> _getNotifications(int page) async {
    if (userId() == null) return const [];
    final data = await client.query(
      _queryNotifications,
      variables: {'page': page},
    );
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
query ($page: Int) {
  Page(page: $page, perPage: 30) {
    notifications(resetNotificationCount: true) {
      __typename
      ... on AiringNotification { id type episode createdAt media { id title { userPreferred } coverImage { large } } }
      ... on RelatedMediaAdditionNotification { id type createdAt media { id title { userPreferred } coverImage { large } } }
      ... on FollowingNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityMentionNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityReplyNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityLikeNotification { id type context createdAt user { name avatar { large } } }
      ... on ActivityReplyLikeNotification { id type context createdAt user { name avatar { large } } }
    }
  }
}
''';
