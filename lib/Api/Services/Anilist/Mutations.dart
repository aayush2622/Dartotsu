import '../../../Core/Preferences/Incognito.dart';
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
part 'Mutations/Social.dart';
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

  Future<bool?> toggleFollow(String userId) => _toggleFollow(userId);

  Future<bool> toggleLike(String id, {bool reply = false}) =>
      _toggleLike(id, reply);

  Future<bool> toggleSubscription(String activityId, bool subscribe) =>
      _toggleSubscription(activityId, subscribe);

  Future<bool> postActivity(String text, {String? edit}) =>
      _postActivity(text, edit);

  Future<bool> postMessage(
    String userId,
    String text, {
    String? edit,
    bool isPrivate = false,
  }) => _postMessage(userId, text, edit, isPrivate);

  Future<bool> postReply(String activityId, String text, {String? edit}) =>
      _postReply(activityId, text, edit);

  Future<bool> deleteActivity(String id) => _deleteActivity(id);

  Future<bool> deleteReply(String id) => _deleteReply(id);

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
