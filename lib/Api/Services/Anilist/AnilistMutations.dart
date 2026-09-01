import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'AnilistClient.dart';

part 'AnilistMutations/DeleteFromList.dart';
part 'AnilistMutations/EditList.dart';
part 'AnilistMutations/SetProgress.dart';

class AnilistMutations extends Mutations {
  final AnilistClient client;
  final int? Function() userId;

  AnilistMutations(this.client, {required this.userId});

  @override
  Future<void> editList(Media media, {List<String>? customList}) =>
      _editList(media, customList: customList);

  @override
  Future<void> deleteFromList(Media media) => _deleteFromList(media);

  @override
  Future<void> setProgress(Media media, int progress) =>
      _setProgress(media, progress);
}

Date _currentDate() {
  final now = DateTime.now();
  return Date(year: now.year, month: now.month, day: now.day);
}

/// Tell every subscribed screen to revalidate after a successful write.
void _signalRefresh() => tryFind<RefreshController>()?.all();
