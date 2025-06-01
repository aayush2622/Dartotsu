import 'package:dartotsu/DataClass/Media.dart';

abstract class Mutations {
  /// Edit user list.
  Future<void> editList(
    Media media, {
    List<String>? customList,
  });

  /// Delete media from user list.
  Future<void> deleteFromList(Media media);

  /// Set progress for a media episode or chapter.
  Future<void> setProgress(Media media, String episodeNumber);
}
