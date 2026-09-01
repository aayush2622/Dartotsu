part of '../AnilistMutations.dart';

extension on AnilistMutations {
  Future<void> _setProgress(Media media, int progress) async {
    if (userId() == null) return;

    final isCompleted = media.totalUnits == progress;
    final isRewatch =
        media.userStatus == 'REPEATING' ||
        (media.userStatus == 'COMPLETED' &&
            progress < (media.userProgress ?? 0));

    final finishingRewatch = isRewatch && isCompleted;
    if (media.userProgress == progress && !finishingRewatch) return;

    media.userProgress = progress;
    media.userStatus = isRewatch ? 'REPEATING' : 'CURRENT';

    if (!isRewatch && media.userStartedAt?.year == null) {
      media.userStartedAt = _currentDate();
    }

    if (isCompleted) {
      media.userStatus = 'COMPLETED';
      if (isRewatch) {
        media.userRepeat++;
      } else if (media.userCompletedAt?.year == null) {
        media.userCompletedAt = _currentDate();
      }
    }

    await _editList(media);
    snackString('Progress set to $progress');
  }
}
