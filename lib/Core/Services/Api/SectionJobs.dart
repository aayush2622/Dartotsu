import 'dart:async';

import '../Model/Media.dart';
import '../Screens/ScreenWidget.dart';
import '../../../Logger.dart';

typedef SectionMap = Map<String, List<Media>>;

typedef SectionJob = Future<SectionMap> Function();

/// True while the user's own pull-to-refresh is running, so a job that keeps
/// its result for a while can fetch again.
class SectionReload {
  SectionReload._();

  static bool manual = false;
}

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
      logger('Section job failed: $e', logLevel: LogLevel.error);
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
    yield _built(slots, build);
  }
  yield _built(slots, build);
}

List<ScreenWidget> _built(
  List<SectionMap?> slots,
  ScreenWidget Function(String title, List<Media> media) build,
) => [
  for (final slot in slots)
    if (slot != null)
      for (final e in slot.entries) build(e.key, e.value),
];
