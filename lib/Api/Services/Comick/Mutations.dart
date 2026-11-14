import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Api/Progress.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Queries.dart';

class ComickMutations extends Mutations {
  final ComickClient client;
  final ComickQueries queries;

  ComickMutations(this.client, this.queries);

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    await _run(() => saveEntry(media));
  }

  @override
  Future<void> saveEntry(Media media, {bool? exists}) {
    final score = media.userScore ?? 0;
    final progress = media.userProgress;
    return _upsert(comickHid(media), {
      'status': comickStatusOut(media.userStatus),
      if (score > 0) 'rating': (score / 10).round().clamp(1, 10),
      if (progress != null) 'progress': {'number': '$progress'},
    }, patch: exists == true);
  }

  @override
  Future<void> deleteFromList(Media media) => _run(() async {
    await client.delete('/me/library/${comickHid(media)}');
    clearListEntry(media);
  });

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final done = reachesEnd(media, progress);
    final started = media.userStatus != null && media.userStatus != 'PLANNING';
    final entry = {
      'progress': {'number': '$progress'},
    };
    await _run(
      () => _upsert(
        comickHid(media),
        {...entry, if (done) 'status': 2 else if (!started) 'status': 1},
        create: {...entry, 'status': done ? 2 : 1},
      ),
    );
  }

  Future<void> _upsert(
    String hid,
    Map<String, dynamic> body, {
    Map<String, dynamic>? create,
    bool patch = true,
  }) async {
    final path = '/me/library/$hid';
    if (patch) {
      try {
        await client.write('PATCH', path, body);
        return;
      } on ComickException catch (e) {
        if (e.status != 404) rethrow;
      }
    }
    await client.write('PUT', path, create ?? body);
  }

  Future<void> _run(Future<void> Function() action) async {
    try {
      await action();
      queries.invalidateLibrary();
      findBuilt<RefreshController>()?.all();
    } on ComickException catch (e) {
      snackString(getString.serviceError(getString.comick, e.message));
    }
  }
}
