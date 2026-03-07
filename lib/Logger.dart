import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Core/Preferences/StorageManager.dart';
import 'Utils/Functions/SnackBar.dart';

void logger(
  String message, {
  LogLevel logLevel = LogLevel.info,
  String? tag,
}) =>
    Logger.log(message, logLevel: logLevel, tag: tag);

class Logger {
  static late File _logFile;
  static late IOSink _sink;

  static bool _initialized = false;
  static bool _disposed = false;
  static bool _writerActive = false;

  static const int _maxLogSizeBytes = 5 * 1024 * 1024;
  static const int _maxPreInitLogs = 200;

  static final Queue<String> _queue = Queue();
  static final List<String> _preInitBuffer = [];

  static Future<void> init() async {
    final directory = await StorageManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );

    _logFile = File('${directory?.path}/appLogs.txt'.fixSeparator);

    if (await _logFile.exists()) {
      if (await _logFile.length() > _maxLogSizeBytes) {
        await _rotateLogs();
      }
    } else {
      await _logFile.create(recursive: true);
    }

    _sink = _logFile.openWrite(mode: FileMode.append);
    _sink.writeln('[Dartotsu] Logger initialized\n');
    _sink.writeln(await _collectDeviceInfo());

    final javaCrash = await NativeLogger.importJavaCrashLogs();
    if (javaCrash != null) {
      _sink
        ..writeln('==== JAVA CRASH DETECTED ====')
        ..writeln(javaCrash)
        ..writeln('============================\n');
    }

    for (final log in _preInitBuffer) {
      _enqueue(log);
    }
    _preInitBuffer.clear();

    _initialized = true;
    _startWriter();

    unawaited(NativeLogger.startLogStream());

    DartotsuExtensionBridge.onLog = (log, show) {
      debugPrint('[ExtensionBridge] $log');
      if (show) snackString(log);
    };
  }

  static void log(
    String message, {
    LogLevel logLevel = LogLevel.info,
    String? tag,
  }) {
    if (_disposed) return;

    final formatted = _formatLog(
      time: DateTime.now(),
      level: logLevel,
      message: message,
      tag: tag,
    );

    if (_initialized) {
      _enqueue(formatted);
    } else {
      _bufferPreInit(formatted);
    }
  }

  static void _enqueue(String log) {
    _queue.add(log);
    _startWriter();
  }

  static void _startWriter() {
    if (_writerActive) return;
    _writerActive = true;

    scheduleMicrotask(() async {
      while (_queue.isNotEmpty && !_disposed) {
        _sink.writeln(_queue.removeFirst());
      }
      _writerActive = false;
    });
  }

  static void _bufferPreInit(String log) {
    if (_preInitBuffer.length >= _maxPreInitLogs) {
      _preInitBuffer.removeAt(0);
    }
    _preInitBuffer.add(log);
  }

  static Future<void> _rotateLogs() async {
    final backup = File('${_logFile.path}.old');
    if (await backup.exists()) {
      await backup.delete();
    }
    await _logFile.rename(backup.path);
    await _logFile.create(recursive: true);
  }

  static const _levelStrings = {
    LogLevel.debug: 'DEBUG',
    LogLevel.info: 'INFO',
    LogLevel.warning: 'WARN',
    LogLevel.error: 'ERROR',
  };

  static String _formatLog({
    required DateTime time,
    required LogLevel level,
    required String message,
    String? tag,
  }) {
    final ts = '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}:'
        '${time.second.toString().padLeft(2, '0')}.'
        '${time.millisecond.toString().padLeft(3, '0')}';

    final prefix = '[$ts] [${_levelStrings[level]}] [${tag ?? 'APP'}]: ';

    final lines = message.split('\n');
    if (lines.length == 1) return '$prefix${lines.first}';

    final b = StringBuffer('$prefix${lines.first}');
    for (var i = 1; i < lines.length; i++) {
      b.writeln();
      b.write('│ ${lines[i]}');
    }
    return b.toString();
  }

  static Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;

    while (_queue.isNotEmpty) {
      _sink.writeln(_queue.removeFirst());
    }

    await _sink.flush();
    await _sink.close();
  }

  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static Future<String> _collectDeviceInfo() async {
    final buffer = StringBuffer();

    buffer
      ..writeln('==== DEVICE INFO ====')
      ..writeln('OS            : ${Platform.operatingSystem}')
      ..writeln('OS Version    : ${Platform.operatingSystemVersion}')
      ..writeln('Locale        : ${Platform.localeName}')
      ..writeln('Dart Version  : ${Platform.version}')
      ..writeln('Processors    : ${Platform.numberOfProcessors}')
      ..writeln('Executable    : ${Platform.resolvedExecutable}')
      ..writeln('');

    try {
      if (Platform.isAndroid) {
        final info = await _deviceInfo.androidInfo;
        buffer
          ..writeln('---- ANDROID ----')
          ..writeln('Brand         : ${info.brand}')
          ..writeln('Manufacturer  : ${info.manufacturer}')
          ..writeln('Model         : ${info.model}')
          ..writeln('Device        : ${info.device}')
          ..writeln('Product       : ${info.product}')
          ..writeln('SDK           : ${info.version.sdkInt}')
          ..writeln('Release       : ${info.version.release}')
          ..writeln('Fingerprint   : ${info.fingerprint}');
      } else if (Platform.isLinux) {
        final info = await _deviceInfo.linuxInfo;
        buffer
          ..writeln('---- LINUX ----')
          ..writeln('Name          : ${info.name}')
          ..writeln('Version       : ${info.version ?? info.buildId}')
          ..writeln('ID            : ${info.id}')
          ..writeln('Machine ID    : ${info.machineId}');
      } else if (Platform.isWindows) {
        final info = await _deviceInfo.windowsInfo;
        buffer
          ..writeln('---- WINDOWS ----')
          ..writeln('Product Name  : ${info.productName}')
          ..writeln('Build         : ${info.buildNumber}')
          ..writeln('Release ID    : ${info.releaseId}')
          ..writeln('Device ID     : ${info.deviceId}');
      } else if (Platform.isMacOS) {
        final info = await _deviceInfo.macOsInfo;
        buffer
          ..writeln('---- MACOS ----')
          ..writeln('Model         : ${info.model}')
          ..writeln('OS Version    : ${info.osRelease}')
          ..writeln('Kernel        : ${info.kernelVersion}')
          ..writeln('Arch          : ${info.arch}');
      } else if (Platform.isIOS) {
        final info = await _deviceInfo.iosInfo;
        buffer
          ..writeln('---- IOS ----')
          ..writeln('Name          : ${info.name}')
          ..writeln('System        : ${info.systemName}')
          ..writeln('Version       : ${info.systemVersion}')
          ..writeln('Model         : ${info.model}')
          ..writeln('Machine       : ${info.utsname.machine}');
      } else {
        buffer.writeln('Unsupported platform for detailed device info.');
      }
    } catch (e) {
      buffer.writeln('DEVICE INFO ERROR: $e');
    }

    buffer.writeln('=====================');

    return buffer.toString();
  }
}

enum LogLevel {
  debug,
  info,
  warning,
  error,
}

class NativeLogger {
  static const _channel = MethodChannel('native_logger');
  static bool _started = false;

  static Future<void> startLogStream() async {
    if (!Platform.isAndroid || _started) return;
    _started = true;

    _channel.setMethodCallHandler((call) async {
      if (call.method == 'onLogs') {
        final logs = (call.arguments as List).cast<String>();
        for (final log in logs) {
          Logger.log(log, tag: 'native');
        }
      }
    });

    await _channel.invokeMethod('startLogs');
  }

  static Future<String?> importJavaCrashLogs() async {
    if (!Platform.isAndroid) return null;

    final dir = await getAndroidFilesDir();
    final file = File(dir.path);

    if (!await file.exists()) return null;

    final crashLog = await file.readAsString();
    if (crashLog.trim().isEmpty) return null;

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
