import 'dart:async';

import 'package:flutter/foundation.dart';
import '../Model/Media.dart';
import '../Screens/ScreenWidget.dart';

typedef SectionMap = Map<String, List<Media>>;

typedef SectionJob = Future<SectionMap> Function();

/// Runs [jobs] and yields `(jobIndex, patch)` as each one finishes — in
/// completion order when [parallel], so a slow source never blocks the fast
/// ones behind it.
Stream<(int, SectionMap)> runSectionJobsIndexed(
  List<SectionJob> jobs, {
  bool parallel = true,
}) async* {
  if (jobs.isEmpty) return;

  Object? failure;
  StackTrace? failureStack;
  var delivered = false;

  Future<SectionMap> guarded(SectionJob job) async {
    try {
      return await job();
    } catch (e, s) {
      failure ??= e;
      failureStack ??= s;
      debugPrint('Section job failed: $e');
      return const {};
    }
  }

  if (parallel) {
    final controller = StreamController<(int, SectionMap)>();
    var pending = jobs.length;
    for (var i = 0; i < jobs.length; i++) {
      unawaited(
        guarded(jobs[i]).then((patch) {
          if (patch.isNotEmpty) {
            delivered = true;
            controller.add((i, patch));
          }
          if (--pending == 0) unawaited(controller.close());
        }),
      );
    }
    yield* controller.stream;
  } else {
    for (var i = 0; i < jobs.length; i++) {
      final patch = await guarded(jobs[i]);
      if (patch.isEmpty) continue;
      delivered = true;
      yield (i, patch);
    }
  }

  if (!delivered && failure != null) {
    Error.throwWithStackTrace(failure!, failureStack!);
  }
}

Stream<SectionMap> runSectionJobs(
  List<SectionJob> jobs, {
  bool parallel = true,
}) => runSectionJobsIndexed(jobs, parallel: parallel).map((e) => e.$2);

Stream<List<ScreenWidget>> sectionWidgets(
  List<SectionJob> jobs, {
  bool parallel = true,
  required ScreenWidget Function(String title, List<Media> media) build,
}) async* {
  final slots = List<SectionMap?>.filled(jobs.length, null);
  await for (final (index, patch) in runSectionJobsIndexed(
    jobs,
    parallel: parallel,
  )) {
    slots[index] = patch;
    yield [
      for (final slot in slots)
        if (slot != null)
          for (final e in slot.entries) build(e.key, e.value),
    ];
  }
}
