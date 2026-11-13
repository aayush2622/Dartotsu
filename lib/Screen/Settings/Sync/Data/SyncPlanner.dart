import 'SyncAdapter.dart';
import 'SyncIdIndex.dart';
import 'SyncModels.dart';

List<SyncItem> expandItems(
  List<SyncItem> items,
  SyncIdIndex? index,
  String key,
) => index == null
    ? items
    : [for (final i in items) i.withIds(index.expand(i.ids, prefer: key))];

class SyncTarget {
  final String key;
  final bool canResolve;
  final List<String> resolveKeys;
  final bool syncsDates;
  final bool syncsRepeat;
  final bool syncsPrivate;
  final Set<String> noProgress;
  final String prefix;

  const SyncTarget({
    required this.key,
    required this.canResolve,
    required this.resolveKeys,
    required this.syncsDates,
    required this.syncsRepeat,
    this.syncsPrivate = false,
    this.noProgress = const {},
    required this.prefix,
  });

  factory SyncTarget.of(SyncAdapter adapter, {required bool anime}) {
    final sample = adapter.targetId(0, anime: anime) ?? '0';
    return SyncTarget(
      key: adapter.key,
      canResolve: adapter.canResolve,
      resolveKeys: adapter.resolveKeys,
      syncsDates: adapter.syncsDates,
      syncsRepeat: adapter.syncsRepeat,
      syncsPrivate: adapter.syncsPrivate,
      noProgress: adapter.statusesWithoutProgress,
      prefix: sample.substring(0, sample.length - 1),
    );
  }

  String targetId(int native) => '$prefix$native';
}

SyncTargetPlan planWith({
  required List<SyncItem> main,
  required List<SyncItem> target,
  required SyncTarget spec,
  bool mainDates = true,
  bool mainRepeat = true,
  required bool onlyForward,
  bool collectRemovals = false,
}) {
  final byNative = {for (final t in target) t.id: t};
  final byAny = <String, SyncItem>{};
  for (final t in target) {
    for (final e in t.ids.entries) {
      byAny.putIfAbsent('${e.key}:${e.value}', () => t);
    }
  }
  final matched = <String>{};
  final pairs = <SyncPair>[];
  for (final m in main) {
    final native = m.ids[spec.key];
    SyncItem? found;
    var rejected = false;
    final candidates = [
      if (native != null) byNative[spec.targetId(native)],
      for (final e in m.ids.entries) byAny['${e.key}:${e.value}'],
    ];
    for (final c in candidates) {
      if (c == null) continue;
      if (idsConflict(m, c)) {
        rejected = true;
        continue;
      }
      found = c;
      break;
    }
    final targetId =
        found?.id ??
        (native == null || rejected ? null : spec.targetId(native));
    final shared = found != null && !matched.add(found.id);
    final resolvable =
        targetId == null &&
        spec.canResolve &&
        spec.resolveKeys.any((k) => m.ids[k] != null);
    final pair = SyncPair(
      dates: spec.syncsDates && mainDates,
      repeat: spec.syncsRepeat && mainRepeat,
      privacy: spec.syncsPrivate,
      noProgress: spec.noProgress,
      main: m,
      targetId: targetId,
      target: shared ? null : found,
      error: shared ? syncSharedEntry : null,
      state: (targetId == null && !resolvable) || shared
          ? SyncStatus.unmapped
          : found == null
          ? SyncStatus.missing
          : SyncStatus.synced,
    );
    if (found != null && pair.diffs.isNotEmpty) {
      final ahead =
          onlyForward &&
          syncCanonStatus(m.status) == syncCanonStatus(found.status) &&
          found.progress > m.progress &&
          pair.diffs.every((d) => d == 'progress');
      if (!ahead) pair.state = SyncStatus.outdated;
    }
    pairs.add(pair);
  }
  final extra = target.where((t) => !matched.contains(t.id)).toList();
  List<SyncItem>? removals;
  if (collectRemovals && main.isNotEmpty) {
    final unknown = [
      for (final p in pairs)
        if (p.targetId == null) p.main,
    ];
    removals = [
      for (final t in extra)
        if (t.ids.keys.any((k) => k != spec.key) &&
            unknown.every((m) => m.ids.keys.any(t.ids.containsKey)))
          t,
    ];
  }
  return SyncTargetPlan(pairs, onlyInTarget: extra.length, removals: removals);
}

/// Whether two entries carry a different id for the same service, which makes
/// them two different titles however the id tables pair them (a special
/// listed under its parent show, for instance).
bool idsConflict(SyncItem a, SyncItem b) {
  for (final e in a.ids.entries) {
    final other = b.ids[e.key];
    if (other != null && other != e.value) return true;
  }
  return false;
}

int syncFingerprint(List<SyncItem> items) => Object.hashAllUnordered([
  for (final i in items)
    Object.hash(
      i.id,
      i.status,
      i.progress,
      i.score,
      i.repeat,
      '${i.started?.year}-${i.started?.month}-${i.started?.day}',
      '${i.completed?.year}-${i.completed?.month}-${i.completed?.day}',
    ),
]);
