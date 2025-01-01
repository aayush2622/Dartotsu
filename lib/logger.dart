import 'dart:io';

import 'package:dantotsu/StorageProvider.dart';

class Logger {
  static File? _logFile;
  static IOSink? _logSink;

  static Future<void> init() async {
    final directory = await StorageProvider().getDefaultDirectory();
    if (directory != null) {
      _logFile = File('${directory.path}/appLogs.txt');

      if (await _logFile!.exists()) {
        await _logFile!.delete();
      }
      _logSink = _logFile?.openWrite(mode: FileMode.append);

    }
  }

  static void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    final logMessage = '[$timestamp] $message\n';
    _logSink?.write(logMessage);
    _logSink?.flush();
  }

  static Future<void> dispose() async {
    await _logSink?.close();
  }
}