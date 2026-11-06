import 'dart:io';

import 'package:dartotsu_extension_bridge/downloads.dart';
import 'package:path/path.dart' as p;

import '../../Logger.dart';
import '../Preferences/SafStorage.dart';
import 'DownloadTask.dart';

class DownloadExport {
  static List<String> _paths(DownloadTask task) {
    final out = <String>{};
    for (final path in [task.path, ...task.subtitlePaths, ...task.audioPaths]) {
      if (path == null) continue;
      out.add(path);
      if (task.isNovel) out.add('${p.withoutExtension(path)}_files');
    }
    return out.toList();
  }

  static Future<void> finished(DownloadTask task) async {
    if (!SafStorage.active) return;
    try {
      await _finished(task);
    } catch (e) {
      logger(
        'Copying ${task.id} to the chosen folder failed: $e',
        tag: 'DOWNLOAD',
        logLevel: LogLevel.warning,
      );
    }
  }

  static Future<void> _finished(DownloadTask task) async {
    final path = task.path;
    if (path == null) return;
    final base = (await DownloadPaths.root()).path;
    var count = 0;
    for (final target in _paths(task)) {
      count += await SafStorage.exportPath(target, base: base);
    }
    for (final name in const ['media.json', 'cover.jpg']) {
      final file = File(p.join(p.dirname(path), name));
      if (await file.exists()) {
        count += await SafStorage.exportPath(file.path, base: base);
      }
    }
    logger(
      'Exported $count files of ${task.id} to the chosen folder',
      tag: 'DOWNLOAD',
    );
  }

  static Future<void> removed(DownloadTask task) async {
    if (!SafStorage.active) return;
    try {
      final targets = _paths(task);
      final base = (await DownloadPaths.root()).path;
      for (final target in targets) {
        await SafStorage.remove(target, base: base);
      }
    } catch (e) {
      logger(
        'Removing ${task.id} from the chosen folder failed: $e',
        tag: 'DOWNLOAD',
        logLevel: LogLevel.warning,
      );
    }
  }
}
