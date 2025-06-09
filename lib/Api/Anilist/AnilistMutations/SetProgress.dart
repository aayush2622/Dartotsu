part of '../AnilistMutations.dart';


extension on AnilistMutations {
  Future<void> _setProgress(Media media, String episode) async {
    if (Anilist.userid == null) return;

    if (media.userProgress == episode.toDouble().toInt()) return;

    media.userProgress = episode.toDouble().toInt();
    media.status = media.status == "REPEATING" ? "REPEATING" : "CURRENT";
    if (media.startDate == null) {
      var currentDate = DateTime.now();
      media.startDate = FuzzyDate(
        year: currentDate.year,
        month: currentDate.month,
        day: currentDate.day,
      );
    }
    if (media.anime?.totalEpisodes == media.userProgress ||
        media.manga?.totalChapters == media.userProgress) {
      media.userStatus = "COMPLETED";
      var currentDate = DateTime.now();
      media.userCompletedAt = FuzzyDate(
        year: currentDate.year,
        month: currentDate.month,
        day: currentDate.day,
      );
    }

    await _editList(media);
    Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
    Refresh.activity[media.id]?.value = true;
    snackString("Setting progress to ${media.userProgress}");

  }
}
