import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Mutations.dart';
import 'Queries.dart';

class ComickSync extends SyncAdapter {
  final ComickQueries queries;
  final ComickMutations mutations;

  ComickSync(this.queries, this.mutations);

  final _hids = <int, String>{};

  @override
  String get key => SyncKey.comick;

  @override
  bool supports({required bool anime}) => true;

  @override
  List<SyncLimit> get limits => const [SyncLimit(50, Duration(minutes: 1))];

  int? _keyOf(String hid) => syncSlugKey(hid);

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final media = await queries.library(anime: anime);
      final out = <SyncItem>[];
      for (final m in media) {
        final hid = comickExtras[m]?.hid.isNotEmpty == true
            ? comickExtras[m]!.hid
            : m.id;
        final k = _keyOf(hid);
        if (k == null) continue;
        _hids[k] = hid;
        out.add(
          SyncItem.fromMedia(m, {
            SyncKey.comick: k,
            SyncKey.anilist: ?comickExtras[m]?.anilistId,
            SyncKey.mal: ?comickExtras[m]?.malId,
            SyncKey.mangabaka: ?comickExtras[m]?.mangabakaId,
          }).copy(id: '$k'),
        );
      }
      return out;
    } on ComickException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) =>
      _hids[native] ?? '$native';

  @override
  int? nativeId(String id) => int.tryParse(id) ?? _keyOf(id);

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    try {
      for (final op in batch) {
        final targetHid = _hids[int.tryParse(op.targetId)] ?? op.targetId;
        await mutations.saveEntry(
          op.want.toMedia(anime: anime, idOverride: targetHid)
            ..userListId = op.have?.listId,
          exists: op.existsHint,
        );
      }
    } on ComickException catch (e) {
      throw syncError(e, status: e.status);
    }
    return batch.length;
  }

  @override
  Map<String, int> idsOf(Media media) => {
    ...super.idsOf(media),
    SyncKey.anilist: ?comickExtras[media]?.anilistId,
    SyncKey.mal: ?comickExtras[media]?.malId,
    SyncKey.mangabaka: ?comickExtras[media]?.mangabakaId,
  };

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
