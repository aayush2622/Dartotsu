import 'dart:isolate';

import 'SyncAhead.dart';
import 'SyncIdIndex.dart';
import 'SyncModels.dart';
import 'SyncPlanner.dart';

class SyncPrepared {
  final List<SyncItem> items;
  final int fingerprint;

  const SyncPrepared(this.items, this.fingerprint);
}

class SyncPlanned {
  final Map<String, SyncTargetPlan> plans;
  final int mainCount;

  const SyncPlanned(this.plans, this.mainCount);
}

typedef SyncLibrary = (SyncTarget, List<SyncItem>);

Future<SyncPrepared> syncPrepareMain(
  List<SyncItem> items,
  List<int>? flat,
  String key, {
  bool anime = true,
}) => Isolate.run(() {
  final expanded = expandItems(
    items,
    flat == null ? null : SyncIdIndex(flat, anime: anime),
    key,
  );
  return SyncPrepared(expanded, syncFingerprint(expanded));
});

Future<SyncPlanned> syncPlanFromMain({
  required List<SyncItem> main,
  required Map<String, SyncLibrary> targets,
  required List<int>? flat,
  required bool mainDates,
  required bool mainRepeat,
  required bool onlyForward,
  required Set<String> failed,
  bool anime = true,
}) => Isolate.run(() {
  final index = flat == null ? null : SyncIdIndex(flat, anime: anime);
  final out = <String, SyncTargetPlan>{};
  for (final e in targets.entries) {
    if (failed.contains(e.key)) continue;
    out[e.key] = planWith(
      main: main,
      target: expandItems(e.value.$2, index, e.value.$1.key),
      spec: e.value.$1,
      mainDates: mainDates,
      mainRepeat: mainRepeat,
      onlyForward: onlyForward,
      collectRemovals: true,
    );
  }
  return SyncPlanned(out, main.length);
});

Future<SyncPlanned> syncPlanAhead({
  required Map<String, SyncLibrary> libraries,
  required List<int>? flat,
  required Set<String> failed,
  bool anime = true,
}) => Isolate.run(() {
  final index = flat == null ? null : SyncIdIndex(flat, anime: anime);
  final expanded = {
    for (final e in libraries.entries)
      if (!failed.contains(e.key))
        e.key: expandItems(e.value.$2, index, e.value.$1.key),
  };
  final winners = mergeAhead([
    for (final e in expanded.entries) (e.key, e.value),
  ]);
  return SyncPlanned({
    for (final e in expanded.entries)
      e.key: planWith(
        main: winners,
        target: e.value,
        spec: libraries[e.key]!.$1,
        onlyForward: false,
      ),
  }, winners.length);
});
