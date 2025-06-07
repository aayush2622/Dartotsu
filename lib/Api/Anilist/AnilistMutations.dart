import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Screens/Detail/Tabs/Watch/Anime/AnimeParser.dart';
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
  Future<void> setProgress(Media media, String episode) => _setProgress(media, episode);
}
