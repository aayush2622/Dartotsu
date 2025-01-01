import 'dart:io';

import 'package:dantotsu/StorageProvider.dart';

class Logger {
  static File? _logFile;
  static List<String> logs = [];
  static Future<void> init() async {
    final directory = await StorageProvider().getDefaultDirectory();
    if (directory != null) {
      _logFile = File('${directory.path}\\appLogs.txt');
      if (await _logFile!.exists()) {
        await _logFile!.delete();
      }
      await _logFile!.create();
    }
  }

  static Future<void> log(String message) async {
    final now = DateTime.now().toLocal();
    final timestamp =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(4, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    final logMessage = '[$timestamp] $message\n';
    logs.add(logMessage);
    await _logFile!.writeAsString(logs.join());
  }
}