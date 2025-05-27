import 'package:dartotsu/Api/Anilist/Data/fuzzyData.dart';
import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';

part 'AnilistMutations/SetUserList.dart';

class AnilistMutations extends Mutations {
  final Future<T?> Function<T>(
    String query, {
    String variables,
    bool force,
    bool useToken,
    bool show,
  }) executeQuery;

  AnilistMutations(this.executeQuery);

  @override
  Future<void> editList(Media media, {List<String>? customList}) =>
      _editList(media, customList: customList);
}
