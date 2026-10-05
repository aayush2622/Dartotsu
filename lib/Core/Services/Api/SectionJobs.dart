import '../../../Logger.dart';
import '../Model/Media.dart';

typedef SectionMap = Map<String, List<Media>>;

typedef SectionJob = Future<SectionMap> Function();

Stream<SectionMap> runSectionJobs(
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
      logger('Section job failed: $e');
      return const {};
    }
  }

  final started = parallel ? [for (final job in jobs) guarded(job)] : null;

  for (var i = 0; i < jobs.length; i++) {
    final patch = await (started?[i] ?? guarded(jobs[i]));
    if (patch.isEmpty) continue;
    delivered = true;
    yield patch;
  }

  if (!delivered && failure != null) {
    Error.throwWithStackTrace(failure!, failureStack!);
  }
}

Future<SectionMap> foldSections(Stream<SectionMap> stream) async {
  final out = <String, List<Media>>{};
  await for (final patch in stream) {
    out.addAll(patch);
  }
  return out;
}
