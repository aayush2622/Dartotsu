import 'dart:io';
import 'package:dantotsu/StorageProvider.dart';
import 'Preferences/PrefManager.dart';

class Logger {
  static File? _logFile;
  static List<String> logs = [];
  static Future<void> init() async {
    var path = PrefManager.getVal(PrefName.customPath);
    final directory = await StorageProvider()
        .getDirectory(useCustomPath: true, customPath: path);

      _logFile = File('${directory?.path}\\appLogs.txt'.fixSeparator);

      if (await _logFile!.exists() && await _logFile!.length() > 1024 * 1024) {
        await _logFile!.delete();
      }
      if (!await _logFile!.exists()) {
        await _logFile?.create();
      }
  }

  static Future<void> log(String message) async {
    final now = DateTime.now().toLocal();
    final timestamp =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(4, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    final logMessage = '[$timestamp] $message\n';
    logs.add(logMessage);
    await _logFile?.writeAsString(logs.join());
  }
}