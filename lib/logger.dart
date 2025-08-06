import 'dart:async';
import 'dart:io';

import 'Preferences/PrefManager.dart';

/*class Logger {
  static late File _logFile;
  static var initialize = false;
  static Future<void> init() async {
    var directory = await PrefManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );
    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);
    initialize = true;
    if (await _logFile.exists() && await _logFile.length() > 100 * 1024) {
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
    if (!initialize) return;
    _logFile.writeAsStringSync(logMessage, mode: FileMode.append);
  }
}*/

class Logger {
  static late File _logFile;
  static late IOSink _sink;
  static bool _initialized = false;
  static final _logQueue = StreamController<String>();

  /// Initialize the logger
  static Future<void> init() async {
    final directory = await PrefManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );

    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);

    if (await _logFile.exists() && await _logFile.length() > 100 * 1024) {
      await _logFile.delete();
    }

    if (!await _logFile.exists()) {
      await _logFile.create(recursive: true);
    }

    _sink = _logFile.openWrite(mode: FileMode.append);
    _initialized = true;

    _logQueue.stream.listen((log) {
      _sink.writeln(log);
    });

    log('\n\nLogger initialized\n\n');
  }

  static void log(String message, {LogLevel logLevel = LogLevel.info}) {
    if (!_initialized) return;

    final now = DateTime.now();
    final timestamp =
        '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString().padLeft(4, '0')} '
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';

    final logMessage = '[$timestamp][${logLevel.toString()}] $message';
    _logQueue.add(logMessage);
  }

  static Future<void> dispose() async {
    if (!_initialized) return;
    await _logQueue.close();
    await _sink.flush();
    await _sink.close();
    _initialized = false;
  }
}

enum LogLevel {
  debug,
  info,
  warning,
  error;

  @override
  String toString() {
    switch (this) {
      case LogLevel.debug:
        return 'DEBUG';
      case LogLevel.info:
        return 'INFO';
      case LogLevel.warning:
        return 'WARNING';
      case LogLevel.error:
        return 'ERROR';
    }
  }
}
