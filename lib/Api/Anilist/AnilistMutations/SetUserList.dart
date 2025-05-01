part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _editList(
    Media media, {
    List<String>? customList,
  }) async {
    final startVar = '';
    final completedVar = '';

    var query = '''
      mutation (
        \$mediaID: Int,
        \$progress: Int,
        \$private: Boolean,
        \$repeat: Int,
        \$notes: String,
        \$customLists: [String],
        \$scoreRaw: Int,
        \$status: MediaListStatus,
        \$start: FuzzyDateInput$startVar,
        \$completed: FuzzyDateInput$completedVar
      ) {
        SaveMediaListEntry(
          mediaId: \$mediaID,
          progress: \$progress,
          repeat: \$repeat,
          notes: \$notes,
          private: \$private,
          scoreRaw: \$scoreRaw,
          status: \$status,
          startedAt: \$start,
          completedAt: \$completed,
          customLists: \$customLists
        ) {
          score(format: POINT_10_DECIMAL)
          startedAt {
            year
            month
            day
          }
          completedAt {
            year
            month
            day
          }
        }
      }
    '''
        .trim();

    String variables = '{'
        '"mediaID": ${media.id}'
        '${',"private": ${media.isListPrivate}'}'
        '${media.userProgress != null ? ',"progress": ${media.userProgress}' : ''}'
        '${media.userScore != null ? ',"scoreRaw": ${media.userScore}' : ''}'
        '${media.userRepeat != 0 ? ',"repeat": ${media.userRepeat}' : ''}'
        '${media.notes != null ? ',"notes": "${media.notes!.replaceAll('\n', r'\n')}"' : ''}'
        '${media.userStatus != null ? ',"status": "${media.userStatus}"' : ''}'
        '${customList != null ? ',"customLists": [${customList.map((e) => '"$e"').join(', ')}]' : ''}'
        '}';
    debugPrint(variables);
    executeQuery<Map<String, dynamic>>(query, variables: variables, show: true);
  }
}
