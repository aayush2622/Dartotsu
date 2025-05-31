import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Services/Api/Mutations.dart';
import 'package:flutter/cupertino.dart';

import 'Data/data.dart';


part 'AnilistMutations/SetUserList.dart';
part 'AnilistMutations/DeleteFromList.dart';

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

}
