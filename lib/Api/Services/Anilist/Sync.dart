import '../../../Core/Services/Model/Date.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Media.dart';
import 'Mutations.dart';
import 'Queries.dart';

const _statuses = {
  'CURRENT',
  'PLANNING',
  'COMPLETED',
  'DROPPED',
  'PAUSED',
  'REPEATING',
};

class AnilistSync extends SyncAdapter {
  final AnilistQueries queries;
  final AnilistMutations mutations;

  AnilistSync(this.queries, this.mutations);

  @override
  String get key => SyncKey.anilist;

  @override
  bool get syncsPrivate => true;

  @override
  bool supports({required bool anime}) => true;

  @override
  int get batchSize => 10;

  @override
  List<SyncLimit> get limits => const [SyncLimit(30, Duration(minutes: 1))];

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      final media = await queries.syncLibrary(anime: anime);
      return [
        for (final m in media)
          SyncItem.fromMedia(m, {
            SyncKey.anilist: int.parse(m.id),
            if (m is AnilistMedia && m.idMal != null) SyncKey.mal: m.idMal!,
          }),
      ];
    } on AnilistException catch (e) {
      throw _wrap(e);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) => '$native';

  @override
  int? nativeId(String id) => int.tryParse(id);

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    final query = anilistSaveBatch(batch);
    if (query == null) return 0;
    try {
      await mutations.client.query(query, showErrors: false);
    } on AnilistException catch (e) {
      throw _wrap(e);
    }
    return 1;
  }

  @override
  Map<String, int> idsOf(Media media) => {
    ...super.idsOf(media),
    if (media is AnilistMedia) SyncKey.mal: ?media.idMal,
  };

  @override
  bool get canResolve => true;

  @override
  int get resolveBatch => 50;

  @override
  Future<(Map<int, int>, int)> resolve(
    List<int> mal, {
    required bool anime,
  }) async {
    try {
      final body = await mutations.client.queryRaw(
        '{Page(perPage: 50){media(idMal_in: [${mal.join(',')}], type: ${anime ? 'ANIME' : 'MANGA'}){id idMal}}}',
      );
      final data = anilistData(body)['Page'] as Map<String, dynamic>?;
      return (
        {
          for (final m in (data?['media'] as List?) ?? const [])
            if (m is Map && m['idMal'] is int && m['id'] is int)
              m['idMal'] as int: m['id'] as int,
        },
        1,
      );
    } on AnilistException catch (e) {
      throw _wrap(e);
    }
  }

  @override
  Future<void> finish() async {}

  Object _wrap(AnilistException e) {
    final m = e.message;
    if (m.startsWith('Rate limited')) {
      final secs = int.tryParse(
        RegExp(r'wait (\d+)s').firstMatch(m)?.group(1) ?? '',
      );
      return SyncRateLimited(Duration(seconds: secs ?? 60), m);
    }
    if (m.contains('Invalid token') || m.contains('401')) return SyncFatal(m);
    return e;
  }
}

String _date(Date d) =>
    '{year: ${d.year}, month: ${d.month ?? 1}, day: ${d.day ?? 1}}';

String? anilistSaveBatch(List<SyncOp> batch) {
  final calls = <String>[];
  for (var i = 0; i < batch.length; i++) {
    final w = batch[i].want;
    final id = int.tryParse(batch[i].targetId);
    if (id == null) continue;
    final args = [
      'mediaId: $id',
      if (_statuses.contains(w.status)) 'status: ${w.status}',
      'progress: ${w.progress}',
      if (w.score > 0) 'scoreRaw: ${w.score.clamp(0, 100)}',
      if (w.repeat > 0) 'repeat: ${w.repeat}',
      if (w.isPrivate) 'private: true',
      if (w.started?.year != null) 'startedAt: ${_date(w.started!)}',
      if (w.completed?.year != null) 'completedAt: ${_date(w.completed!)}',
    ];
    calls.add('m$i: SaveMediaListEntry(${args.join(', ')}) { id }');
  }
  return calls.isEmpty ? null : 'mutation { ${calls.join('\n')} }';
}
