part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _setProgress(Media media, String episode) async {
    if (Anilist.userid == null) return;

    final progress = episode.toDouble().toInt();

    final isCompleted =
        media.anime?.totalEpisodes == progress ||
        media.manga?.totalChapters == progress;
    final isRewatch =
        media.userStatus == "REPEATING" ||
        (media.userStatus == "COMPLETED" &&
            progress < (media.userProgress ?? 0));

    final isFinishingCurrentRewatch = isRewatch && isCompleted;
    if (media.userProgress == progress && !isFinishingCurrentRewatch) return;

    media.userProgress = progress;
    media.userStatus = isRewatch ? "REPEATING" : "CURRENT";

    if (!isRewatch && media.userStartedAt?.year == null) {
      media.userStartedAt = _currentFuzzyDate();
    }

    if (isCompleted) {
      media.userStatus = "COMPLETED";
      if (isRewatch) {
        media.userRepeat++;
      } else if (media.userCompletedAt?.year == null) {
        media.userCompletedAt = _currentFuzzyDate();
      }
    }

    await _editList(media);
    Refresh.activity[RefreshId.Anilist.homePage]?.value = true;
    Refresh.activity[media.id]?.value = true;
    snackString("Setting progress to ${media.userProgress}");
  }
}

FuzzyDate _currentFuzzyDate() {
  final currentDate = DateTime.now();
  return FuzzyDate(
    year: currentDate.year,
    month: currentDate.month,
    day: currentDate.day,
  );
}
