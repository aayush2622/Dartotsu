import '../Model/Media.dart';

/// Write surface. `MediaService.getMutations == null` => list editing disabled.
/// Each call takes a [Media] carrying the desired user-list fields
/// (`userStatus`, `userProgress`, `userScore`, `userRepeat`, `notes`, …).
abstract class Mutations {
  /// Create or update the user's list entry for [media].
  Future<void> editList(Media media, {List<String>? customList});

  /// Remove [media] from the user's list.
  Future<void> deleteFromList(Media media);

  /// Set watched/read progress, deriving the status transition.
  Future<void> setProgress(Media media, int progress);
}
