import 'Media.dart';

extension MediaListEntry on Media {
  void takeListEntry(Media from) {
    userStatus = from.userStatus;
    userProgress = from.userProgress;
    userVolume = from.userVolume;
    userScore = from.userScore;
    userUpdatedAt = from.userUpdatedAt;
    userAddedAt = from.userAddedAt;
    userWatchedAt = from.userWatchedAt;
    userListId = from.userListId;
  }
}
