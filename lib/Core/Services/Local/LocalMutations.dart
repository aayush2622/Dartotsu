import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../Api/Progress.dart';
import '../MediaService.dart';
import '../Model/Media.dart';

class LocalMutations extends Mutations {
  final MediaService service;

  LocalMutations(this.service);

  LocalListStore _store(Media media) =>
      service.localStore(anime: media.isAnime);

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    media.userStatus ??= 'CURRENT';
    _store(media).upsert(media);
    _signal();
  }

  @override
  Future<void> deleteFromList(Media media) async {
    _store(media).remove(media.id);
    _signal();
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (!applyProgress(media, progress)) return;
    _store(media).touch(media);
    snackString('Progress set to $progress');
    _signal();
  }

  void _signal() => tryFind<RefreshController>()?.all();
}
