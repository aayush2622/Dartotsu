part of '../AnilistMutations.dart';


extension on AnilistMutations {
  Future<void> _setProgress(Media media, String episode) async {
    if (Anilist.userid == null) return;

    media.userProgress = episode.toDouble().toInt();
    await _editList(media);
    Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
    snackString("Setting progress to ${media.userProgress}");
  }
}
