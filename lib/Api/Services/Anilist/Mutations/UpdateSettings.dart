part of '../Mutations.dart';

const _updateSettingsTypes = {
  'timezone': 'String',
  'titleLanguage': 'UserTitleLanguage',
  'staffNameLanguage': 'UserStaffNameLanguage',
  'activityMergeTime': 'Int',
  'airingNotifications': 'Boolean',
  'displayAdultContent': 'Boolean',
  'restrictMessagesToFollowing': 'Boolean',
  'scoreFormat': 'ScoreFormat',
  'rowOrder': 'String',
};

extension on AnilistMutations {
  Future<bool> _updateSettings(Map<String, dynamic> changes) async {
    final keys = changes.keys.where(_updateSettingsTypes.containsKey).toList();
    if (keys.isEmpty) return false;
    final declared = [for (final k in keys) '\$$k: ${_updateSettingsTypes[k]}'];
    final passed = [for (final k in keys) '$k: \$$k'];
    try {
      await client.query(
        'mutation (${declared.join(', ')}) '
        '{ UpdateUser(${passed.join(', ')}) { id } }',
        variables: {for (final k in keys) k: changes[k]},
        showErrors: true,
      );
      _signalRefresh();
      return true;
    } on AnilistException {
      return false;
    }
  }

  Future<bool> _updateCustomLists({
    List<String>? anime,
    List<String>? manga,
  }) async {
    try {
      await client.query(
        r'''
mutation ($animeListOptions: MediaListOptionsInput, $mangaListOptions: MediaListOptionsInput) {
  UpdateUser(animeListOptions: $animeListOptions, mangaListOptions: $mangaListOptions) { id }
}''',
        variables: {
          'animeListOptions': ?(anime == null ? null : {'customLists': anime}),
          'mangaListOptions': ?(manga == null ? null : {'customLists': manga}),
        },
        showErrors: true,
      );
      return true;
    } on AnilistException {
      return false;
    }
  }

  Future<bool> _deleteCustomList(String name, {required bool anime}) async {
    try {
      await client.query(
        r'''
mutation ($name: String, $type: MediaType) {
  DeleteCustomList(customList: $name, type: $type) { deleted }
}''',
        variables: {'name': name, 'type': anime ? 'ANIME' : 'MANGA'},
        showErrors: true,
      );
      return true;
    } on AnilistException {
      return false;
    }
  }
}
