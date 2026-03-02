import 'dart:async';
import 'dart:io';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Core/Preferences/StorageManager.dart';

void logger(String message, {LogLevel logLevel = LogLevel.info}) =>
    Logger.log(message, logLevel: logLevel);

class Logger {
  static late File _logFile;
  static late IOSink _sink;
  static bool _initialized = false;

  static final _logQueue = StreamController<String>.broadcast();
  static final List<String> _preInitBuffer = [];

  static Future<void> init() async {
    final directory = await StorageManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );

    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);

    if (await _logFile.exists() && await _logFile.length() > 100 * 512) {
      await _logFile.delete();
    }

    if (!await _logFile.exists()) {
      await _logFile.create(recursive: true);
    }

    _sink = _logFile.openWrite(mode: FileMode.append);
    _sink.writeln('\n\n[Dartotsu] Logger initialized\n');

    _logQueue.stream.listen(_sink.writeln);
    unawaited(NativeLogger.startLogStream());

    var androidLogs = await NativeLogger.importJavaCrashLogs();

    _sink.writeln(androidLogs);

    for (final log in _preInitBuffer) {
      _sink.writeln(log);
    }
    _preInitBuffer.clear();

    DartotsuExtensionBridge.onLog =
        (log) => debugPrint('[DartotsuExtensionBridge] $log');

    _initialized = true;
  }

  static void log(
    String message, {
    LogLevel logLevel = LogLevel.info,
  }) {
    final now = DateTime.now();
    final timestamp = '${now.day.toString().padLeft(2, '0')}/'
        '${now.month.toString().padLeft(2, '0')}/'
        '${now.year.toString().padLeft(4, '0')} '
        '${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}';

    final logMessage = '[$timestamp] [${logLevel.toString()}] $message';

    if (_initialized) {
      _logQueue.add(logMessage);
    } else {
      _preInitBuffer.add(logMessage);
    }
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

class NativeLogger {
  static const _channel = MethodChannel('native_logger');

  static Future<void> startLogStream() async {
    if (!Platform.isAndroid) return;

    _channel.setMethodCallHandler((call) async {
      if (call.method == 'onLogs') {
        final List<dynamic> rawLogs = call.arguments;
        final logs = rawLogs.cast<String>();

        for (final log in logs) {
          logger('[KOTLIN LOGS] $log');
        }
      }
    });

    await _channel.invokeMethod('startLogs');
  }

  static Future<String> importJavaCrashLogs() async {
    if (!Platform.isAndroid) return '';

    final filesDir = await getAndroidFilesDir();
    final file = File(filesDir.path);

    if (!await file.exists()) return '';

    final crashLog = await file.readAsString();
    if (crashLog.trim().isEmpty) return '';

    Logger.log(
      '\n==== JAVA CRASH DETECTED ====\n$crashLog\n============================',
      logLevel: LogLevel.error,
    );
    try {
      await file.rename('${file.path}.consumed');
    } catch (_) {
      await file.writeAsString('');
    }
    return crashLog;
  }

  static Future<Directory> getAndroidFilesDir() async {
    final path = await _channel.invokeMethod<String>('getCrashLogFileDir');
    return Directory(path!);
  }
}
