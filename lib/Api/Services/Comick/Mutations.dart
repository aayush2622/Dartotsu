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

  static String _hid(Media media) {
    final hid = comickExtras[media]?.hid;
    return hid == null || hid.isEmpty ? media.id : hid;
  }

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    try {
      await saveEntry(media);
      _done();
    } on ComickException catch (e) {
      snackString(getString.serviceError(getString.comick, e.message));
    }
  }

  @override
  Future<void> saveEntry(Media media, {bool? exists}) async {
    final score = media.userScore ?? 0;
    final ratingVal = score <= 0 ? null : (score / 10).round().clamp(1, 10);
    final statusVal = comickStatusOut(media.userStatus);

    final body = <String, dynamic>{
      'status': statusVal,
      'rating': ?ratingVal,
      'progress': ?(media.userProgress == null
          ? null
          : {'number': '${media.userProgress}'}),
    };

    final hid = _hid(media);

    final path = '/me/library/$hid';
    try {
      await client.write(exists == true ? 'PATCH' : 'PUT', path, body);
    } on ComickException catch (e) {
      if (e.status == 404 && exists == true) {
        await client.write('PUT', path, body);
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    try {
      final hid = _hid(media);
      await client.delete('/me/library/$hid');
      clearListEntry(media);
      _done();
    } on ComickException catch (e) {
      snackString(getString.serviceError(getString.comick, e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final done = reachesEnd(media, progress);
    final status = media.userStatus;
    final hid = _hid(media);

    final body = <String, dynamic>{
      'progress': {'number': '$progress'},
      if (done)
        'status': 2
      else if (status == null || status == 'PLANNING')
        'status': 1,
    };

    try {
      await client.write('PATCH', '/me/library/$hid', body);
      _done();
    } on ComickException catch (e) {
      if (e.status == 404) {
        body['status'] = done ? 2 : 1;
        await client.write('PUT', '/me/library/$hid', body);
        _done();
      } else {
        snackString(getString.serviceError(getString.comick, e.message));
      }
    }
  }

  void _done() {
    queries.invalidateLibrary();
    findBuilt<RefreshController>()?.all();
  }
}
