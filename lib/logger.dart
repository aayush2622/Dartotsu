import 'dart:io';

import 'Preferences/PrefManager.dart';

class Logger {
  static late File _logFile;

  static Future<void> init() async {
    var directory = await PrefManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );
    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);

    if (await _logFile.exists() && await _logFile.length() > 1024 * 1024) {
      await _logFile.delete();
    }
    if (!await _logFile.exists()) {
      await _logFile.create();
    }
    log('\n\n\n\n\nLogger initialized\n\n\n\n\n');
  }

  static void log(String message) {
    final now = DateTime.now().toLocal();
    final timestamp =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(4, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    final logMessage = '[$timestamp] $message\n';
    _logFile.writeAsStringSync(logMessage, mode: FileMode.append);
  }
}
