import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu/Core/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';

import 'Anilist.dart';
import 'Data/data.dart';
import 'Data/fuzzyData.dart';

part 'AnilistMutations/DeleteFromList.dart';

part 'AnilistMutations/SetProgress.dart';

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

  @override
  Future<void> deleteFromList(Media media) => _deleteFromList(media);

  @override
  Future<void> setProgress(Media media, String episode) =>
      _setProgress(media, episode);
}
