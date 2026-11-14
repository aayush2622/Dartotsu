import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Detail/Watch/Data/EpisodeMeta.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'IdLookup.dart';
import 'Queries.dart';

class TraktSync extends SyncAdapter {
  final TraktQueries queries;
  final TraktClient client;

  TraktSync(this.queries, this.client);

  @override
  String get key => SyncKey.trakt;

  @override
  bool supports({required bool anime}) => anime;

  @override
  int get batchSize => 40;

  @override
  bool get syncsDates => false;

  @override
  bool get syncsRepeat => false;

  @override
  int get requestsPerBatch => 2;

  @override
  List<SyncLimit> get limits => const [
    SyncLimit(50, Duration(minutes: 1)),
    SyncLimit(500, Duration(days: 1)),
  ];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final all = await queries.library();
      return [
        for (final m in all.values)
          if (parseTraktMediaId(m.id) case (final kind, final id))
            SyncItem.fromMedia(m, {SyncKey.trakt: id, SyncKey.mal: ?m.malId}),
      ];
    } on TraktException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) => 'shows/$native';

  @override
  int? nativeId(String id) => parseTraktMediaId(id)?.$2;

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    final history = <Map<String, Object>>[];
    final watchlist = <Map<String, Object>>[];
    final ratings = <Map<String, Object>>[];

    for (final op in batch) {
      final ref = parseTraktMediaId(op.targetId);
      if (ref == null) continue;
      final (_, id) = ref;
      final want = op.want;

      if (want.status == 'COMPLETED') {
        history.add({'ids': {'trakt': id}});
      } else if (want.status == 'PLANNING') {
        watchlist.add({'ids': {'trakt': id}});
      } else if (want.progress > 0) {
        history.add({'ids': {'trakt': id}});
      }

      if (want.score > 0) {
        final score = (want.score / 10).round().clamp(1, 10);
        ratings.add({'ids': {'trakt': id}, 'rating': score});
      }
    }

    var sent = 0;
    try {
      if (history.isNotEmpty) {
        await client.post('/sync/history', {'shows': history});
        sent++;
      }
      if (watchlist.isNotEmpty) {
        await client.post('/sync/watchlist', {'shows': watchlist});
        sent++;
      }
      if (ratings.isNotEmpty) {
        await client.post('/sync/ratings', {'shows': ratings});
        sent++;
      }
    } on TraktException catch (e) {
      throw syncError(e, status: e.status);
    }
    return sent;
  }

  @override
  void contributeIds(Media media, MetaIds ids) {
    final extras = traktExtras[media];
    if (extras == null) return;
    ids
      ..tvdb ??= extras.tvdbId
      ..tmdb ??= extras.tmdbId
      ..imdb ??= extras.imdbId
      ..trakt ??= extras.traktId;
  }

  @override
  bool get canResolve => true;

  @override
  Future<(Map<int, int>, int)> resolveBy(
    String from,
    List<int> ids, {
    required bool anime,
  }) async {
    final out = <int, int>{};
    var used = 0;
    for (final id in ids) {
      used++;
      try {
        final found = await traktIdLookup(
          client,
          tmdb: from == 'tmdb' ? id : null,
          tvdb: from == 'tvdb' ? id : null,
        );
        if (found != null) out[id] = found;
      } catch (e) {
        throw syncError(e);
      }
    }
    return (out, used);
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
