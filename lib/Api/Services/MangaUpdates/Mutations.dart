import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Queries.dart';

class MangaUpdatesMutations extends Mutations {
  final MangaUpdatesClient client;
  final MangaUpdatesQueries queries;

  MangaUpdatesMutations(this.client, this.queries);

  int _listIdFor(String? status) => switch (status) {
    'CURRENT' => 0,
    'PLANNING' => 1,
    'COMPLETED' => 2,
    'DROPPED' => 3,
    'PAUSED' => 4,
    'REPEATING' => 0,
    _ => 0,
  };

  int? _idOf(Media media) {
    final raw = media.id;
    final clean = raw.contains('/') ? raw.split('/').last : raw;
    return int.tryParse(clean);
  }

  void _done() {
    queries.invalidateLibrary();
    tryFind<RefreshController>()?.all();
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
    } on MangaUpdatesException catch (e) {
      snackString(getString.serviceError(getString.mangaUpdates, e.message));
    }
  }

  @override
  Future<void> saveEntry(Media media, {bool? exists}) async {
    final id = _idOf(media);
    if (id == null) return;

    final listId = _listIdFor(media.userStatus);
    final chapter = media.userProgress ?? 0;

    final entryBody = [
      {
        'series': {'id': id},
        'list_id': listId,
        'status': {
          'chapter': chapter,
        },
        'priority': 0,
      }
    ];

    try {
      await client.post('/lists/series/update', entryBody);
    } catch (_) {
      try {
        await client.post('/lists/series', entryBody);
      } catch (e, st) {
        logError('Mutations', e, st);
      }
    }

    final score = media.userScore ?? 0;
    if (score > 0) {
      final rating = (score / 10).round().clamp(1, 10);
      try {
        await client.put('/series/$id/rating', {'rating': rating});
      } catch (e, st) {
        logError('Mutations', e, st);
      }
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final id = _idOf(media);
    if (id == null) return;
    try {
      await client.post('/lists/series/delete', [id]);
      try {
        await client.delete('/series/$id/rating');
      } catch (_) {}
      clearListEntry(media);
      _done();
    } on MangaUpdatesException catch (e) {
      snackString(getString.serviceError(getString.mangaUpdates, e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (incognitoBlocksEdits) return;
    final total = media.totalUnits;
    final done = total != null && total > 0 && progress >= total;
    media.userProgress = progress;
    if (done) {
      media.userStatus = 'COMPLETED';
    } else if (media.userStatus == null || media.userStatus == 'PLANNING') {
      media.userStatus = 'CURRENT';
    }
    try {
      await saveEntry(media);
      _done();
    } on MangaUpdatesException catch (e) {
      snackString(getString.serviceError(getString.mangaUpdates, e.message));
    }
  }
}
