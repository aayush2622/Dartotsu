import 'dart:io';

import 'package:dartotsu/StorageProvider.dart';

import 'Preferences/PrefManager.dart';

class Logger {
  static late File _logFile;
  static final List<String> _logs = [];

  static Future<void> init() async {
    var path = loadData(PrefName.customPath);
    final directory = await StorageProvider.getDirectory(
        useCustomPath: true, customPath: path);

    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);

    if (await _logFile.exists() && await _logFile.length() > 1024 * 1024) {
      await _logFile.delete();
    }
    if (!await _logFile.exists()) {
      await _logFile.create();
    }
  }

  static Future<void> log(String message) async {
    final now = DateTime.now().toLocal();
    final timestamp =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(4, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    final logMessage = '[$timestamp] $message\n';
    _logs.add(logMessage);
    await _logFile.writeAsString(_logs.join());
  }
}
