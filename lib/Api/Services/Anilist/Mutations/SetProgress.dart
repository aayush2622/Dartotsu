part of '../Mutations.dart';

extension on AnilistMutations {
  Future<void> _setProgress(Media media, int progress) async {
    if (userId() == null) return;
    if (!applyProgress(media, progress)) return;

    anilistContinueOrder.touch(media.id, anime: media.isAnime);
    await _editList(media);
    snackString('Progress set to $progress');
  }
}
