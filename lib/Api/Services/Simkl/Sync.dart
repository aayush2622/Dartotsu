import 'dart:convert';

import '../../../Logger.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Detail/Watch/Data/EpisodeMeta.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'IdLookup.dart';
import 'Queries.dart';

class SimklSync extends SyncAdapter {
  final SimklQueries queries;
  final SimklClient client;

  SimklSync(this.queries, this.client);

  @override
  String get key => SyncKey.simkl;

  @override
  bool supports({required bool anime}) => anime;

  @override
  int get batchSize => 40;

  @override
  bool get syncsDates => false;

  @override
  bool get syncsRepeat => false;

  @override
  int get requestsPerBatch => 4;

  @override
  List<SyncLimit> get limits => const [
    SyncLimit(50, Duration(minutes: 1)),
    SyncLimit(450, Duration(days: 1)),
  ];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary(full: true);
      final all = await queries.library();
      final kinds = <String, int>{};
      for (final id in all.keys) {
        kinds.update(id.split('/').first, (n) => n + 1, ifAbsent: () => 1);
      }
      logger(
        'Simkl sync library $kinds, 36703=${[for (final k in all.keys)
          if (k.endsWith('/36703') || k.endsWith('/1973554')) k]}',
        tag: 'SYNC',
      );
      return [
        for (final m in all.values)
          if (parseSimklMediaId(m.id) case (SimklKind.anime, final id))
            SyncItem.fromMedia(m, {SyncKey.simkl: id, SyncKey.mal: ?m.malId}),
      ];
    } on SimklException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) => 'anime/$native';

  @override
  int? nativeId(String id) => parseSimklMediaId(id)?.$2;

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    final requests = simklRequests(batch);
    try {
      for (final r in requests) {
        final answer = await client.post(r.$1, r.$2);
        logger(
          'Simkl ${r.$1} ${jsonEncode(r.$2)} -> ${jsonEncode(answer)}',
          tag: 'SYNC',
        );
        final missing = simklNotFound(answer);
        if (missing != null) {
          logger(
            'Simkl ${r.$1} could not find $missing',
            logLevel: LogLevel.error,
            tag: 'SYNC',
          );
          throw Exception('Simkl could not find $missing');
        }
      }
    } on SimklException catch (e) {
      throw syncError(e, status: e.status);
    }
    return requests.length;
  }

  @override
  void contributeIds(Media media, MetaIds ids) {
    final extras = simklExtras[media];
    if (extras == null) return;
    ids
      ..tvdb ??= extras.tvdbId
      ..tmdb ??= extras.tmdbId
      ..imdb ??= extras.imdbId
      ..mal ??= extras.malId;
  }

  @override
  bool get canResolve => true;

  @override
  Future<(Map<int, int>, int)> resolve(
    List<int> mal, {
    required bool anime,
  }) async {
    final out = <int, int>{};
    var used = 0;
    for (final id in mal) {
      used++;
      try {
        final found = await simklIdFromRedirect(mal: id);
        if (found != null) out[id] = found;
      } catch (e) {
        throw syncError(e);
      }
    }
    return (out, used);
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary(full: true);
}

String? simklNotFound(Object? answer) {
  if (answer is! Map) return null;
  final missing = answer['not_found'];
  if (missing is! Map) return null;
  final found = <String>[];
  for (final list in missing.values) {
    if (list is! List) continue;
    for (final item in list) {
      final ids = item is Map ? item['ids'] : null;
      found.add('${ids ?? item}');
    }
  }
  return found.isEmpty ? null : found.join(', ');
}

Map<String, Object> _ids(String targetId) => {
  'simkl': parseSimklMediaId(targetId)!.$2,
};

List<(String, Map<String, Object>)> simklRequests(List<SyncOp> batch) {
  final remove = <Map<String, Object>>[];
  final history = <Map<String, Object>>[];
  final lists = <String, List<Map<String, Object>>>{};
  final ratings = <Map<String, Object>>[];
  for (final op in batch) {
    if (parseSimklMediaId(op.targetId) == null) continue;
    final want = op.want;
    final have = op.have;
    final old = have?.progress ?? 0;
    final movie = want.isMovie || (have?.isMovie ?? false);
    final status = simklStatusOut(
      want.status,
      movie ? SimklKind.movies : SimklKind.anime,
    );
    final progress = status == 'completed'
        ? [
            want.progress,
            want.total ?? 0,
            have?.total ?? 0,
            1,
          ].reduce((a, b) => a > b ? a : b)
        : want.progress;
    final score = (want.score / 10).round().clamp(0, 10);
    final rate = score > 0 && score != ((have?.score ?? 0) / 10).round();
    if (progress < old) {
      remove.add({
        'ids': _ids(op.targetId),
        'episodes': [
          for (var n = progress + 1; n <= old; n++) {'number': n},
        ],
      });
    }
    if (progress > old) {
      history.add({
        'ids': _ids(op.targetId),
        'episodes': [
          for (var n = old + 1; n <= progress; n++) {'number': n},
        ],
        'status': ?status,
      });
    }
    final moved =
        status != null &&
        (have == null ||
            status !=
                simklStatusOut(
                  have.status,
                  movie ? SimklKind.movies : SimklKind.anime,
                ));
    if (moved) {
      lists.putIfAbsent(status, () => []).add({'ids': _ids(op.targetId)});
    }
    if (rate) ratings.add({'ids': _ids(op.targetId), 'rating': score});
  }
  return [
    if (remove.isNotEmpty) ('/sync/history/remove', {'anime': remove}),
    if (history.isNotEmpty) ('/sync/history', {'anime': history}),
    for (final e in lists.entries)
      (
        '/sync/add-to-list',
        {
          'anime': [
            for (final item in e.value) {...item, 'to': e.key},
          ],
        },
      ),
    if (ratings.isNotEmpty) ('/sync/ratings', {'anime': ratings}),
  ];
}
