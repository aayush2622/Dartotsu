import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Queries.dart';
import '../../../Core/Services/Api/Progress.dart';

class MangaBakaMutations extends Mutations {
  final MangaBakaClient client;
  final MangaBakaQueries queries;

  MangaBakaMutations(this.client, this.queries);

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    try {
      await saveEntry(media);
      _done();
    } on MangaBakaException catch (e) {
      snackString(getString.serviceError(getString.mangaBaka, e.message));
    }
  }

  @override
  Future<void> saveEntry(Media media, {bool? exists}) async {
    final score = media.userScore ?? 0;
    final body = <String, dynamic>{
      'state': mangaBakaStateOut(media.userStatus),
      'rating': score <= 0 ? null : (score / queries.ratingScale).round(),
      if (media.userProgress != null) 'progress_chapter': media.userProgress,
      'number_of_rereads': media.userRepeat,
      'note': media.notes ?? '',
      'start_date': mangaBakaDateOut(media.userStartedAt),
      'finish_date': mangaBakaDateOut(media.userCompletedAt),
      if (exists != true || media.isListPrivate)
        'is_private': media.isListPrivate,
    };
    if (exists == true) {
      body.removeWhere((k, v) => v == null || v == '');
      if (media.userRepeat == 0) body.remove('number_of_rereads');
    }
    await _write(media, body, exists: exists);
  }

  @override
  Future<void> deleteFromList(Media media) async {
    try {
      await client.delete('/my/library/${media.id}');
      clearListEntry(media);
      _done();
    } on MangaBakaException catch (e) {
      snackString(getString.serviceError(getString.mangaBaka, e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final done = reachesEnd(media, progress);
    final status = media.userStatus;
    await _save(media, {
      'progress_chapter': progress,
      'state': done
          ? 'completed'
          : status == null || status == 'PLANNING'
          ? 'reading'
          : mangaBakaStateOut(status),
    });
  }

  Future<void> _save(Media media, Map<String, dynamic> body) async {
    try {
      await _write(media, body);
      _done();
    } on MangaBakaException catch (e) {
      snackString(getString.serviceError(getString.mangaBaka, e.message));
    }
  }

  Future<void> _write(
    Media media,
    Map<String, dynamic> body, {
    bool? exists,
  }) async {
    final path = '/my/library/${media.id}';
    final known = exists ?? media.userListId != null;
    if (known) {
      await client.write('PUT', path, body);
      return;
    }
    try {
      await client.write('POST', path, {'state': 'reading', ...body});
    } on MangaBakaException catch (e) {
      if (e.status != 409) rethrow;
      await client.write('PUT', path, body);
    }
  }

  void _done() {
    queries.invalidateLibrary();
    tryFind<RefreshController>()?.all();
  }
}
