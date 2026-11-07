import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Mutations.dart';
import 'Queries.dart';

class MangaBakaSync extends SyncAdapter {
  final MangaBakaQueries queries;
  final MangaBakaMutations mutations;

  MangaBakaSync(this.queries, this.mutations);

  @override
  String get key => SyncKey.mangabaka;

  @override
  bool get syncsPrivate => true;

  @override
  bool supports({required bool anime}) => !anime;

  @override
  List<SyncLimit> get limits => const [SyncLimit(100, Duration(minutes: 1))];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final media = await queries.library();
      return [
        for (final m in media)
          if (int.tryParse(m.id) case final id?)
            SyncItem.fromMedia(m, {
              SyncKey.mangabaka: id,
              SyncKey.anilist: ?mangaBakaExtras[m]?.anilistId,
              SyncKey.mal: ?mangaBakaExtras[m]?.malId,
            }),
      ];
    } on MangaBakaException catch (e) {
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
          exists: op.existsHint,
        );
      }
    } on MangaBakaException catch (e) {
      throw syncError(e, status: e.status);
    }
    return batch.length;
  }

  @override
  Map<String, int> idsOf(Media media) => {
    ...super.idsOf(media),
    SyncKey.anilist: ?mangaBakaExtras[media]?.anilistId,
    SyncKey.mal: ?mangaBakaExtras[media]?.malId,
  };

  @override
  bool get canResolve => true;

  @override
  List<String> get resolveKeys => const [SyncKey.mal, SyncKey.anilist];

  @override
  Future<(Map<int, int>, int)> resolve(List<int> mal, {required bool anime}) =>
      resolveBy(SyncKey.mal, mal, anime: anime);

  @override
  Future<(Map<int, int>, int)> resolveBy(
    String from,
    List<int> ids, {
    required bool anime,
  }) async {
    final path = switch (from) {
      SyncKey.mal => 'my-anime-list',
      SyncKey.anilist => 'anilist',
      _ => null,
    };
    final out = <int, int>{};
    if (path == null) return (out, 0);
    var used = 0;
    try {
      for (final id in ids) {
        used++;
        try {
          final body = await queries.client.get('/source/$path/$id');
          final series = (body['data'] as Map?)?['series'];
          final first = series is List && series.isNotEmpty
              ? series.first
              : null;
          final found = first is Map ? first['id'] : null;
          if (found is int) out[id] = found;
        } on MangaBakaException catch (e) {
          if (e.status != 404) rethrow;
        }
      }
    } on MangaBakaException catch (e) {
      throw syncError(e, status: e.status);
    }
    return (out, used);
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
