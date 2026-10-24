import '../../../Core/Services/Api/MangaUpdates.dart' as mu_match;
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
  List<SyncLimit> get limits => const [SyncLimit(60, Duration(minutes: 1))];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final media = await queries.library();
      return [
        for (final m in media)
          if (int.tryParse(m.id) case final id?)
            SyncItem.fromMedia(m, {
              SyncKey.mangaupdates: id,
            }),
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
      for (final op in batch) {
        await mutations.saveEntry(
          op.want.toMedia(anime: anime, idOverride: op.targetId)
            ..userListId = op.have?.listId,
          exists: op.exists,
        );
      }
    } on MangaUpdatesException catch (e) {
      throw syncError(e, status: e.status);
    }
    return batch.length;
  }

  @override
  Map<String, int> idsOf(Media media) {
    final base = super.idsOf(media);
    final id = int.tryParse(media.id);
    return {
      ...base,
      if (id != null) SyncKey.mangaupdates: id,
    };
  }

  @override
  bool get canResolve => true;

  @override
  List<String> get resolveKeys => const [SyncKey.mal, SyncKey.anilist];

  @override
  Future<(Map<int, int>, int)> resolve(List<int> mal, {required bool anime}) async {
    return (const <int, int>{}, 0);
  }

  @override
  Future<(Map<int, int>, int)> resolveBy(
    String from,
    List<int> ids, {
    required bool anime,
  }) async {
    return (const <int, int>{}, 0);
  }
}
