import 'dart:async';
import 'dart:isolate';

import '../../Core/Downloads/DownloadEngine.dart';

import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../Core/Downloads/DownloadScanner.dart';
import '../../Core/Downloads/DownloadTask.dart';
import '../../Core/Downloads/DownloadUsage.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Detail/Watch/Data/Media/MediaRecord.dart';

class DownloadStorageState extends ScreenState {
  final engine = find<DownloadEngine>();
  final usage = <TitleUsage>[].live;
  final loading = true.live;

  Disposer? _watch;
  int _run = 0;

  @override
  void onInit() {
    unawaited(_measure());
    _watch = onAnyChange([engine.tasks], () => unawaited(_measure()));
  }

  @override
  void onClose() {
    _watch?.dispose();
    usage.close();
    loading.close();
  }

  int get total => usage.value.fold(0, (sum, u) => sum + u.bytes);

  List<DownloadTask> get watchedTasks => [
    for (final u in usage.value) ...u.watchedTasks,
  ];

  int get watchedBytes => usage.value.fold(0, (sum, u) => sum + u.watchedBytes);

  int get count => usage.value.fold(0, (sum, u) => sum + u.tasks.length);

  Future<void> _measure() async {
    final run = ++_run;
    final done = [
      for (final t in engine.tasks)
        if (t.isDone) t,
    ];
    final paths = {
      for (final t in done)
        t.id: [?t.path, ...t.subtitlePaths, ...t.audioPaths],
    };
    final sizes = await Isolate.run(
      () => {
        for (final e in paths.entries)
          e.key: e.value.fold<int>(0, (sum, path) => sum + pathSize(path)),
      },
    );
    if (run != _run) return;
    usage.value = downloadUsage(done, sizes, _watched);
    loading.value = false;
  }

  bool _watched(DownloadTask task) {
    final services = find<MediaServiceController>().services;
    final service = services.where((s) => s.id == task.serviceId).firstOrNull;
    if (service == null || task.serviceId == localServiceId) return false;
    try {
      final media = Media.fromJson(Map<String, dynamic>.from(task.media));
      final saved = MediaRecords.of(service, media).playback;
      final played = saved[task.unitKey] ?? saved[unitKeyOf(task.number)];
      if (played != null && played.finished) return true;
      return progressReached(task, media.userProgress);
    } catch (_) {
      return false;
    }
  }

  void freeUp() {
    final tasks = watchedTasks;
    if (tasks.isEmpty) {
      snackString(getString.downloadNothingWatched);
      return;
    }
    _confirm(
      getString.downloadFreeUp,
      getString.downloadFreeUpConfirm(tasks.length, formatBytes(watchedBytes)),
      tasks,
      watchedBytes,
    );
  }

  void deleteWatched(TitleUsage title) {
    final tasks = title.watchedTasks;
    if (tasks.isEmpty) {
      snackString(getString.downloadNothingWatched);
      return;
    }
    _confirm(
      getString.downloadDeleteWatched,
      getString.downloadFreeUpConfirm(
        tasks.length,
        formatBytes(title.watchedBytes),
      ),
      tasks,
      title.watchedBytes,
    );
  }

  void deleteAll(TitleUsage title) => _confirm(
    getString.downloadDeleteAll,
    getString.downloadDeleteAllConfirm(title.title),
    title.tasks,
    title.bytes,
  );

  void _confirm(
    String heading,
    String message,
    List<DownloadTask> tasks,
    int bytes,
  ) {
    final doomed = List.of(tasks);
    unawaited(
      AlertDialogBuilder(context)
          .setTitle(heading)
          .setMessage(message)
          .setPositiveButton(
            getString.delete,
            () => unawaited(_delete(doomed, bytes)),
          )
          .setNegativeButton(getString.cancel, null)
          .show<void>(),
    );
  }

  Future<void> _delete(List<DownloadTask> tasks, int bytes) async {
    for (final t in tasks) {
      await engine.remove(t);
    }
    snackString(getString.downloadFreed(formatBytes(bytes)));
  }
}
