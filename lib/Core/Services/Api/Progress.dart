import '../Model/Date.dart';
import '../Model/Media.dart';

Date currentDate() {
  final now = DateTime.now();
  return Date(year: now.year, month: now.month, day: now.day);
}

bool applyProgress(Media media, int progress) {
  final total = media.totalUnits;
  final completed = total != null && total > 0 && progress >= total;
  final rewatch =
      media.userStatus == 'REPEATING' ||
      (media.userStatus == 'COMPLETED' && progress < (media.userProgress ?? 0));

  if (media.userProgress == progress && !(rewatch && completed)) return false;

  media.userProgress = progress;
  media.userStatus = rewatch ? 'REPEATING' : 'CURRENT';

  if (!rewatch && media.userStartedAt?.year == null) {
    media.userStartedAt = currentDate();
  }

  if (completed) {
    media.userStatus = 'COMPLETED';
    if (rewatch) {
      media.userRepeat++;
    } else if (media.userCompletedAt?.year == null) {
      media.userCompletedAt = currentDate();
    }
  }
  return true;
}
