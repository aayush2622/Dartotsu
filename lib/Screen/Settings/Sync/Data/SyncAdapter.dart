import '../../../Detail/Watch/Data/EpisodeMeta.dart';
import '../../../../Core/Services/Model/Media.dart';
import 'SyncModels.dart';

abstract class SyncAdapter {
  String get key;

  bool supports({required bool anime});

  int get batchSize => 1;

  bool get syncsDates => true;

  bool get syncsRepeat => true;

  bool get syncsPrivate => false;

  Set<String> get statusesWithoutProgress => const {};

  List<SyncLimit> get limits;

  int get requestsPerBatch => 1;

  Future<List<SyncItem>> library({required bool anime});

  String? targetId(int native, {required bool anime});

  int? nativeId(String id);

  Future<int> write(List<SyncOp> batch, {required bool anime});

  Future<void> finish() async {}

  Map<String, int> idsOf(Media media) => {
    key: ?nativeId(media.id),
    SyncKey.mal: ?media.malId,
  };

  void contributeIds(Media media, MetaIds ids) {}

  Future<Map<String, int>> foreignIds(Media media) async => const {};

  bool get canResolve => false;

  int get resolveBatch => 1;

  List<String> get resolveKeys => const [SyncKey.mal];

  Future<(Map<int, int>, int)> resolveBy(
    String from,
    List<int> ids, {
    required bool anime,
  }) async => from == SyncKey.mal
      ? await resolve(ids, anime: anime)
      : (const <int, int>{}, 0);

  Future<(Map<int, int>, int)> resolve(
    List<int> mal, {
    required bool anime,
  }) async => (const <int, int>{}, 0);
}

Object syncError(Object e, {int? status, Duration? retryAfter}) {
  if (status == 429) {
    return SyncRateLimited(retryAfter ?? const Duration(minutes: 1), '$e');
  }
  if (status == 401 || status == 403) return SyncFatal('$e');
  return e;
}
