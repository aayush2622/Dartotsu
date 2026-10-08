import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Api/Progress.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Queries.dart';
import '../../../Core/State/State.dart';

class SimklMutations extends Mutations {
  final SimklClient client;
  final SimklQueries queries;

  SimklMutations(this.client, this.queries);

  Map<String, Object> _entry(
    SimklKind kind,
    int id, [
    Map<String, Object>? extra,
  ]) => {
    'ids': {'simkl': id},
    ...?extra,
  };

  Map<String, Object> _body(
    SimklKind kind,
    int id, [
    Map<String, Object>? extra,
  ]) => {
    kind.syncKey: [_entry(kind, id, extra)],
  };

  Future<void> _episodes(
    SimklKind kind,
    int id,
    int from,
    int to, {
    required bool add,
  }) async {
    if (kind != SimklKind.anime || to < from) return;
    await client.post(add ? '/sync/history' : '/sync/history/remove', {
      'anime': [
        _entry(kind, id, {
          'episodes': [
            for (var n = from; n <= to; n++) {'number': n},
          ],
        }),
      ],
    });
  }

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString('Incognito: list edits are blocked');
      return;
    }
    final ref = parseSimklMediaId(media.id);
    if (ref == null) return;
    final (kind, id) = ref;
    try {
      final before = (await queries.library())[media.id];
      final old = before?.userProgress ?? 0;
      final progress = media.userProgress ?? 0;
      final status = simklStatusOut(media.userStatus, kind);
      final score = ((media.userScore ?? 0) / 10).round().clamp(0, 10);
      final oldScore = ((before?.userScore ?? 0) / 10).round();
      final rate = score > 0 && score != oldScore;

      if (kind == SimklKind.anime && progress < old) {
        await _episodes(kind, id, progress + 1, old, add: false);
      }
      if (kind == SimklKind.anime && progress > old) {
        await client.post('/sync/history', {
          kind.syncKey: [
            _entry(kind, id, {
              'episodes': [
                for (var n = old + 1; n <= progress; n++) {'number': n},
              ],
              'status': ?status,
              if (rate) 'rating': score,
            }),
          ],
        });
      } else {
        if (status != null &&
            status != simklStatusOut(before?.userStatus, kind)) {
          await client.post(
            '/sync/add-to-list',
            _body(kind, id, {'to': status}),
          );
        }
        if (rate) {
          await client.post(
            '/sync/ratings',
            _body(kind, id, {'rating': score}),
          );
        }
      }
      if (score == 0 && oldScore > 0) {
        await client.post('/sync/ratings/remove', _body(kind, id));
      }
      _done();
    } on SimklException catch (e) {
      snackString('Simkl: ${e.message}');
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final ref = parseSimklMediaId(media.id);
    if (ref == null) return;
    try {
      await client.post('/sync/history/remove', _body(ref.$1, ref.$2));
      _done();
    } on SimklException catch (e) {
      snackString('Simkl: ${e.message}');
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (skipForIncognito('Incognito: progress not saved')) return;
    if (!applyProgress(media, progress)) return;
    await editList(media);
    snackString('Progress set to $progress');
  }

  void _done() {
    queries.invalidateLibrary();
    tryFind<RefreshController>()?.all();
  }
}
