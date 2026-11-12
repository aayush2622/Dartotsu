import '../Model/Media.dart';

/// Write surface. `MediaService.getMutations == null` => list editing disabled.
/// Each call takes a [Media] carrying the desired user-list fields
/// (`userStatus`, `userProgress`, `userScore`, `userRepeat`, `notes`, …).
abstract class Mutations {
  /// Create or update the user's list entry for [media].
  Future<void> editList(Media media, {List<String>? customList});

  /// Throwing variant of [editList] used by the list syncer: no snackbars, the
  /// caller decides what a failure means. [exists] says whether the entry is known
  /// to be on the list already (null = unknown), so a service can skip its
  /// own lookup and leave untouched fields alone.
  Future<void> saveEntry(Media media, {bool? exists}) => editList(media);

  /// Remove [media] from the user's list.
  Future<void> deleteFromList(Media media);

  /// Set watched/read progress, deriving the status transition.
  Future<void> setProgress(Media media, int progress);

  bool canFavourite(Media media) => false;

  Future<bool> isFavourite(Media media) async => media.isFav;

  Future<bool?> toggleFavourite(Media media) async => null;
}

void clearListEntry(Media media) {
  media.userListId = null;
  media.userStatus = null;
  media.userProgress = null;
  media.userScore = null;
  media.userRepeat = 0;
  media.userUpdatedAt = null;
  media.userAddedAt = null;
  media.userWatchedAt = null;
  media.userStartedAt = null;
  media.userCompletedAt = null;
}
