part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _deleteFromList(Media media) async {
    if (media.userListId == null) {
      var id = await getMediaListId(media);
      if (id == null) {
        debugPrint('MediaListId not found for media: ${media.name}');
        return;
      }
      media.userListId = id;
    }
    var query = '''
        mutation(\$id: Int) {
            DeleteMediaListEntry(id: \$id) {
                deleted
            }
        }
    '''.trim();
    var variables = '{''"id": ${media.userListId}''}';
    await executeQuery<Map<String, dynamic>>(query, variables: variables);
    snackString('Removed ${media.mainName()} from your list');
  }
  Future<int?> getMediaListId(Media media) async {
    var query = '''{Media(id:${media.id}){id,mediaListEntry{id}}}''';
    var res = await executeQuery<MediaResponse>(query, useToken: true);
    return res?.data?.media?.mediaListEntry?.id;
  }
}

