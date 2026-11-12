import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Mutations.dart';
import 'Queries.dart';

class MangaUpdatesSync extends SyncAdapter {
  final MangaUpdatesQueries queries;
  final MangaUpdatesMutations mutations;

  MangaUpdatesSync(this.queries, this.mutations);

  @override
  String get key => SyncKey.mangaupdates;

  @override
  bool supports({required bool anime}) => !anime;

  @override
  bool get syncsDates => false;

  @override
  bool get syncsRepeat => false;

  @override
  int get batchSize => 25;

  @override
  int get requestsPerBatch => 2;

  @override
  List<SyncLimit> get limits => const [SyncLimit(10, Duration(minutes: 1))];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final media = await queries.library();
      return [
        for (final m in media)
          if (int.tryParse(m.id) case final id?)
            SyncItem.fromMedia(m, {SyncKey.mangaupdates: id}),
      ];
    } on MangaUpdatesException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) => '$native';

  @override
  int? nativeId(String id) => int.tryParse(id);

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    try {
      return await mutations.saveEntries([
        for (final op in batch)
          (
            op.want.toMedia(anime: anime, idOverride: op.targetId)
              ..userListId = op.have?.listId,
            op.existsHint,
            op.want.score > 0 &&
                (op.have == null ||
                    (op.want.score / 10).round() !=
                        (op.have!.score / 10).round()),
          ),
      ]);
    } on MangaUpdatesException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  Map<String, int> idsOf(Media media) {
    final base = super.idsOf(media);
    final id = int.tryParse(media.id);
    return {...base, SyncKey.mangaupdates: ?id};
  }
}
