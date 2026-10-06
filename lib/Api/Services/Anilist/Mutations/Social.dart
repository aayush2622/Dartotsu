part of '../Mutations.dart';

extension on AnilistMutations {
  Future<bool> _run(String query, Map<String, dynamic> variables) async {
    try {
      await client.query(query, variables: variables, showErrors: true);
      return true;
    } on AnilistException {
      return false;
    }
  }

  Future<bool?> _toggleFollow(String userId) async {
    try {
      final data = await client.query(
        r'''
mutation ($id: Int) {
  ToggleFollow(userId: $id) { id isFollowing isFollower }
}''',
        variables: {'id': int.parse(userId)},
        showErrors: true,
      );
      return (data['ToggleFollow'] as Map?)?['isFollowing'] as bool?;
    } on AnilistException {
      return null;
    }
  }

  Future<bool> _toggleLike(String id, bool reply) => _run(
    r'''
mutation ($id: Int, $type: LikeableType) {
  ToggleLikeV2(id: $id, type: $type) { __typename }
}''',
    {'id': int.parse(id), 'type': reply ? 'ACTIVITY_REPLY' : 'ACTIVITY'},
  );

  Future<bool> _toggleSubscription(String activityId, bool subscribe) => _run(
    r'''
mutation ($id: Int, $subscribe: Boolean) {
  ToggleActivitySubscription(activityId: $id, subscribe: $subscribe) { __typename }
}''',
    {'id': int.parse(activityId), 'subscribe': subscribe},
  );

  Future<bool> _postActivity(String text, String? edit) => _run(
    r'''
mutation ($id: Int, $text: String) {
  SaveTextActivity(id: $id, text: $text) { id }
}''',
    {'id': ?_int(edit), 'text': text},
  );

  Future<bool> _postMessage(
    String userId,
    String text,
    String? edit,
    bool isPrivate,
  ) => _run(
    r'''
mutation ($id: Int, $recipient: Int, $message: String, $private: Boolean) {
  SaveMessageActivity(id: $id, recipientId: $recipient, message: $message, private: $private) { id }
}''',
    {
      'id': ?_int(edit),
      'recipient': int.parse(userId),
      'message': text,
      'private': isPrivate,
    },
  );

  Future<bool> _postReply(String activityId, String text, String? edit) => _run(
    r'''
mutation ($id: Int, $activityId: Int, $text: String) {
  SaveActivityReply(id: $id, activityId: $activityId, text: $text) { id }
}''',
    {'id': ?_int(edit), 'activityId': int.parse(activityId), 'text': text},
  );

  Future<bool> _deleteActivity(String id) => _run(
    r'''
mutation ($id: Int) { DeleteActivity(id: $id) { deleted } }''',
    {'id': int.parse(id)},
  );

  Future<bool> _deleteReply(String id) => _run(
    r'''
mutation ($id: Int) { DeleteActivityReply(id: $id) { deleted } }''',
    {'id': int.parse(id)},
  );

  int? _int(String? value) => value == null ? null : int.tryParse(value);
}
