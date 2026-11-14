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
  int? nativeId(String id) =>
      int.tryParse(id) ?? _keyOf(id);

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
    final out = <int, int>{};
    var used = 0;
    try {
      for (final id in ids) {
        used++;
        try {
          final results = await queries.client.get(
            '/v1.0/search/',
            query: {
              'q': '$id',
              'media_type': anime ? 'anime' : 'manga',
              'limit': '5',
            },
          );
          if (results is List) {
            for (final r in results) {
              if (r is Map) {
                final ext = (r['external_ids'] as Map?)?.cast<String, dynamic>();
                final matched = switch (from) {
                  SyncKey.mal => ext?['myanimelist'] == '$id',
                  SyncKey.anilist => ext?['anilist'] == '$id',
                  _ => false,
                };
                if (matched) {
                  final hid = r['hid'] as String? ?? '${r['id']}';
                  final k = _keyOf(hid);
                  if (k != null) {
                    _hids[k] = hid;
                    out[id] = k;
                  }
                  break;
                }
              }
            }
          }
        } on ComickException catch (e) {
          if (e.status != 404) rethrow;
        }
      }
    } on ComickException catch (e) {
      throw syncError(e, status: e.status);
    }
    return (out, used);
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
