import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../Preferences/Incognito.dart';
import '../Api/Progress.dart';
import '../MediaService.dart';
import '../Model/Media.dart';
import '../../State/State.dart';
import '../../ThemeManager/LanguageSwitcher.dart';

class LocalMutations extends Mutations {
  final MediaService service;

  LocalMutations(this.service);

  LocalListStore _store(Media media) =>
      service.localStore(anime: media.isAnime);

  bool has(Media media) => _store(media).read().any((m) => m.id == media.id);

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    media.userStatus ??= 'CURRENT';
    _store(media).upsert(media);
    _signal();
  }

  @override
  Future<void> deleteFromList(Media media) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    _store(media).remove(media.id);
    clearListEntry(media);
    _signal();
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (skipForIncognito(getString.incognitoProgressNotSaved)) return;
    if (!applyProgress(media, progress)) return;
    _store(media).touch(media);
    snackString(getString.progressSet(progress));
    _signal();
  }

  void _signal() => findBuilt<RefreshController>()?.all();
}
