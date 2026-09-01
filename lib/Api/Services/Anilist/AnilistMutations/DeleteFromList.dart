part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _deleteFromList(Media media) async {
    media.userListId ??= await _mediaListId(media);
    final id = media.userListId;
    if (id == null) return;

    await client.query(
      r'mutation ($id: Int) { DeleteMediaListEntry(id: $id) { deleted } }',
      variables: {'id': id},
    );
    media.userListId = null;
    media.userStatus = null;
    media.userProgress = null;
    snackString('Removed ${media.mainName} from your list');
  }

  Future<int?> _mediaListId(Media media) async {
    final data = await client.query(
      '{ Media(id: ${media.id}) { id mediaListEntry { id } } }',
    );
    return ((data['Media'] as Map<String, dynamic>?)?['mediaListEntry']
            as Map<String, dynamic>?)?['id']
        as int?;
  }
}
