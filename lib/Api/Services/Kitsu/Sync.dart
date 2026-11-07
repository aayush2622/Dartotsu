import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Mutations.dart';
import 'Queries.dart';

class KitsuSync extends SyncAdapter {
  final KitsuQueries queries;
  final KitsuMutations mutations;

  KitsuSync(this.queries, this.mutations);

  @override
  String get key => SyncKey.kitsu;

  @override
  bool get syncsPrivate => true;

  @override
  bool supports({required bool anime}) => true;

  @override
  List<SyncLimit> get limits => const [SyncLimit(60, Duration(minutes: 1))];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      final rows = await queries.syncLibrary(anime: anime);
      return [
        for (final (media, foreign) in rows)
          if (parseKitsuMediaId(media.id) case (_, final id))
            SyncItem.fromMedia(media, {SyncKey.kitsu: id, ...foreign}),
      ];
    } on KitsuException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) =>
      kitsuMediaId(anime, native);

  @override
  int? nativeId(String id) => parseKitsuMediaId(id)?.$2;

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    var used = 0;
    try {
      for (final op in batch) {
        await mutations.saveEntry(
          op.want.toMedia(anime: anime, idOverride: op.targetId)
            ..userListId = op.have?.listId,
          exists: op.existsHint,
        );
        used += op.exists && op.have?.listId != null ? 1 : 2;
      }
    } on KitsuException catch (e) {
      throw syncError(e, status: e.status);
    }
    return used;
  }

  @override
  Future<Map<String, int>> foreignIds(Media media) async {
    final parsed = parseKitsuMediaId(media.id);
    if (parsed == null) return const {};
    try {
      final doc = JsonApi(
        await mutations.client.get(
          '/${media.isAnime ? 'anime' : 'manga'}/${parsed.$2}/mappings',
          query: {'fields[mappings]': 'externalSite,externalId'},
        ),
      );
      final out = <String, int>{};
      for (final m in doc.data) {
        final a = attrs(m);
        final n = int.tryParse('${a['externalId']}');
        if (n == null) continue;
        switch (a['externalSite']) {
          case 'myanimelist/anime' || 'myanimelist/manga':
            out[SyncKey.mal] = n;
          case 'anilist/anime' || 'anilist/manga':
            out[SyncKey.anilist] = n;
        }
      }
      return out;
    } on KitsuException {
      return const {};
    }
  }

  @override
  bool get canResolve => true;

  @override
  int get resolveBatch => 20;

  @override
  Future<(Map<int, int>, int)> resolve(
    List<int> mal, {
    required bool anime,
  }) async {
    try {
      final doc = JsonApi(
        await mutations.client.get(
          '/mappings',
          query: {
            'filter[externalSite]': 'myanimelist/${anime ? 'anime' : 'manga'}',
            'filter[externalId]': mal.join(','),
            'include': 'item',
            'page[limit]': '20',
          },
        ),
      );
      final out = <int, int>{};
      for (final m in doc.data) {
        final from = int.tryParse('${attrs(m)['externalId']}');
        final to = int.tryParse('${doc.one(m, 'item')?['id']}');
        if (from != null && to != null) out[from] = to;
      }
      return (out, 1);
    } on KitsuException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
