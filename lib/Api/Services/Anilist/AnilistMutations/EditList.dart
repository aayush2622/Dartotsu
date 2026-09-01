part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _editList(Media media, {List<String>? customList}) async {
    final start = media.userStartedAt;
    final completed = media.userCompletedAt;

    final query = '''
mutation (
  \$mediaId: Int, \$progress: Int, \$private: Boolean, \$repeat: Int,
  \$notes: String, \$customLists: [String], \$scoreRaw: Int,
  \$status: MediaListStatus, \$startedAt: FuzzyDateInput, \$completedAt: FuzzyDateInput
) {
  SaveMediaListEntry(
    mediaId: \$mediaId, progress: \$progress, repeat: \$repeat, notes: \$notes,
    private: \$private, scoreRaw: \$scoreRaw, status: \$status,
    startedAt: \$startedAt, completedAt: \$completedAt, customLists: \$customLists
  ) {
    id status progress
  }
}''';

    final variables = <String, dynamic>{
      'mediaId': int.parse(media.id),
      'private': media.isListPrivate,
      if (media.userProgress != null) 'progress': media.userProgress,
      if (media.userScore != null && media.userScore != 0)
        'scoreRaw': media.userScore,
      if (media.userRepeat != 0) 'repeat': media.userRepeat,
      if (media.notes != null) 'notes': media.notes,
      if (media.userStatus != null) 'status': media.userStatus,
      'customLists': ?customList,
      if (start?.year != null) 'startedAt': _fuzzy(start!),
      if (completed?.year != null) 'completedAt': _fuzzy(completed!),
    };

    await client.query(query, variables: variables, showErrors: true);
  }
}

Map<String, int?> _fuzzy(Date d) => {
  'year': d.year,
  'month': d.month,
  'day': d.day,
};
