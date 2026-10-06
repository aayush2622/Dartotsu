import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Api/Progress.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'AnilistService.dart';

part 'Mutations/DeleteFromList.dart';
part 'Mutations/EditList.dart';
part 'Mutations/SetProgress.dart';
part 'Mutations/UpdateSettings.dart';

class AnilistMutations extends Mutations {
  final AnilistClient client;
  final int? Function() userId;

  AnilistMutations(this.client, {required this.userId});

  @override
  Future<void> editList(Media media, {List<String>? customList}) =>
      _editList(media, customList: customList);

  @override
  Future<void> deleteFromList(Media media) => _deleteFromList(media);

  Future<bool> updateSettings(Map<String, dynamic> changes) =>
      _updateSettings(changes);

  Future<bool> updateCustomLists({List<String>? anime, List<String>? manga}) =>
      _updateCustomLists(anime: anime, manga: manga);

  Future<bool> deleteCustomList(String name, {required bool anime}) =>
      _deleteCustomList(name, anime: anime);

  @override
  Future<void> setProgress(Media media, int progress) =>
      _setProgress(media, progress);
}

/// Tell every subscribed screen to revalidate after a successful write.
void _signalRefresh() => tryFind<RefreshController>()?.all();
