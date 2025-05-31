import 'package:dartotsu/DataClass/Media.dart';

abstract class Mutations {
  /// Edit user list.
  Future<void> editList(
    Media media, {
    List<String>? customList,
  });

  Future<void> deleteFromList(Media media);
}
