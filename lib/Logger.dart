import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'Core/Preferences/StorageManager.dart';
import 'Utils/Function.dart';

final DebugPrintCallback _consolePrint = debugPrint;

void logger(String message, {LogLevel logLevel = LogLevel.info, String? tag}) {
  Logger.log(message, logLevel: logLevel, tag: tag);
  final level = switch (logLevel) {
    LogLevel.warning => 'WARN ',
    LogLevel.error => 'ERROR ',
    _ => '',
  };
  Zone.root.run(
    () =>
        _consolePrint(tag == null ? '$level$message' : '[$tag] $level$message'),
  );
}

void logWarn(String message, {String? tag}) =>
    logger(message, logLevel: LogLevel.warning, tag: tag);

void logError(String tag, Object error, [StackTrace? stack, String? message]) {
  final b = StringBuffer(message == null ? '$error' : '$message: $error');
  if (stack != null) {
    final frames = stack
        .toString()
        .split('\n')
        .where((l) => l.trim().isNotEmpty)
        .take(6);
    for (final f in frames) {
      b
        ..writeln()
        ..write('  $f');
    }
  }
  logger(b.toString(), logLevel: LogLevel.warning, tag: tag);
}

String _field(String label, Object? Function() read) {
  String value;
  try {
    value = '${read()}';
  } catch (_) {
    value = 'unavailable';
  }
  return '${label.padRight(13)} : $value';
}

class Logger {
  static File? _logFile;

  static String get filePath => _logFile?.path ?? '';
  static IOSink? _sink;

  static bool _initialized = false;
  static bool _disposed = false;
  static bool _writerActive = false;

  static const int _maxLogSizeBytes = 1 * 1024 * 1024;
  static const int _maxPreInitLogs = 200;

  static final Queue<String> _queue = Queue();
  static final List<String> _preInitBuffer = [];

  static void captureDebugPrint() {
    final console = _consolePrint;
    debugPrint = (String? message, {int? wrapWidth}) {
      if (message == null) return;
      log(message);
      Zone.root.run(() => console(message, wrapWidth: wrapWidth));
    };
  }

  static Future<File?> _openLogFile(Directory? directory) async {
    if (directory == null) return null;
    try {
      final file = File('${directory.path}/appLogs.txt'.fixSeparator);
      await file.parent.create(recursive: true);
      if (await file.exists()) {
        _logFile = file;
        if (await file.length() > _maxLogSizeBytes) await _rotateLogs();
      } else {
        await file.create(recursive: true);
      }
      return file;
    } catch (e) {
      _bufferPreInit(
        _formatLog(
          time: DateTime.now(),
          level: LogLevel.warning,
          message: 'Log file unavailable in ${directory.path}: $e',
        ),
      );
      return null;
    }
  }

  static Future<void> init() async {
    final preferred = await StorageManager.getDirectory(
      useSystemPath: false,
      useCustomPath: true,
    );
    var file = await _openLogFile(preferred);
    file ??= await _openLogFile(
      await StorageManager.getDirectory(useSystemPath: true),
    );
    _logFile = file;

    if (file != null) {
      try {
        _sink = file.openWrite(mode: FileMode.append)
          ..writeln('[Dartotsu] Logger initialized\n')
          ..writeln(await _collectDeviceInfo());
      } catch (e) {
        _sink = null;
      }
    }

    final javaCrash = await NativeLogger.importJavaCrashLogs();
    if (javaCrash != null) {
      _sink
        ?..writeln('==== JAVA CRASH DETECTED ====')
        ..writeln(javaCrash)
        ..writeln('============================\n');
    }

    final lastExit = await NativeLogger.lastExit();
    if (lastExit != null) {
      _sink
        ?..writeln('==== PREVIOUS RUN ENDED ABNORMALLY ====')
        ..writeln(lastExit)
        ..writeln('=======================================\n');
    }

    for (final log in _preInitBuffer) {
      _enqueue(log);
    }
    _preInitBuffer.clear();

    _initialized = true;
    _startWriter();

    unawaited(NativeLogger.startLogStream());
  }

  static final List<List<String>> _captures = [];
  static const int _maxCaptured = 30000;

  static List<String> beginCapture() {
    final lines = <String>[];
    _captures.add(lines);
    return lines;
  }

  static void endCapture(List<String> lines) => _captures.remove(lines);

  static void log(
    String message, {
    LogLevel logLevel = LogLevel.info,
    String? tag,
  }) {
    if (_disposed) return;

    for (final c in _captures) {
      if (c.length < _maxCaptured) c.add(message);
    }

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
        final line = _queue.removeFirst();
        try {
          _sink?.writeln(line);
        } catch (_) {
          _sink = null;
        }
      }
      _writerActive = false;
    });
  }

  static Future<int> clearFiles() async {
    final current = _logFile;
    if (current == null) return 0;
    final backup = File('${current.path}.old');
    var freed = 0;
    final sink = _sink;
    _sink = null;
    try {
      await sink?.flush();
      await sink?.close();
      if (await backup.exists()) {
        freed += await backup.length();
        await backup.delete();
      }
      if (await current.exists()) {
        freed += await current.length();
        await current.writeAsString('');
      }
    } catch (e) {
      _bufferPreInit(
        _formatLog(
          time: DateTime.now(),
          level: LogLevel.warning,
          message: 'Clearing the log files failed: $e',
        ),
      );
    }
    try {
      _sink = current.openWrite(mode: FileMode.append);
    } catch (_) {
      _sink = null;
    }
    return freed;
  }

  static void _bufferPreInit(String log) {
    if (_preInitBuffer.length >= _maxPreInitLogs) {
      _preInitBuffer.removeAt(0);
    }
    _preInitBuffer.add(log);
  }

  static Future<void> _rotateLogs() async {
    final current = _logFile;
    if (current == null) return;
    final backup = File('${current.path}.old');
    if (await backup.exists()) {
      await backup.delete();
    }
    await current.rename(backup.path);
    await current.create(recursive: true);
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
    final ts =
        '${time.hour.toString().padLeft(2, '0')}:'
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

    final sink = _sink;
    while (_queue.isNotEmpty) {
      sink?.writeln(_queue.removeFirst());
    }

    await sink?.flush();
    await sink?.close();
  }

  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static Future<String> _appVersion() async {
    try {
      final info = await PackageInfo.fromPlatform();
      final hash = (await loadEnv('hash')) ?? '';
      final short = hash.length > 7 ? hash.substring(0, 7) : hash;
      final base = '${info.version}+${info.buildNumber}';
      return short.isEmpty ? base : '$base ($short)';
    } catch (e) {
      return 'unknown ($e)';
    }
  }

  static Future<String> _collectDeviceInfo() async {
    final buffer = StringBuffer();

    final version = await _appVersion();

    buffer
      ..writeln('==== DEVICE INFO ====')
      ..writeln('App Version   : $version')
      ..writeln(_field('OS', () => Platform.operatingSystem))
      ..writeln(_field('OS Version', () => Platform.operatingSystemVersion))
      ..writeln(_field('Locale', () => Platform.localeName))
      ..writeln(_field('Dart Version', () => Platform.version))
      ..writeln(_field('Processors', () => Platform.numberOfProcessors))
      ..writeln(_field('Executable', () => Platform.resolvedExecutable))
      ..writeln('');

    try {
      if (Platform.isAndroid) {
        final info = await _deviceInfo.androidInfo;
        buffer
          ..writeln('---- ANDROID ----')
          ..writeln(_field('Brand', () => info.brand))
          ..writeln(_field('Manufacturer', () => info.manufacturer))
          ..writeln(_field('Model', () => info.model))
          ..writeln(_field('Device', () => info.device))
          ..writeln(_field('Product', () => info.product))
          ..writeln(_field('SDK', () => info.version.sdkInt))
          ..writeln(_field('Release', () => info.version.release))
          ..writeln(_field('Fingerprint', () => info.fingerprint));
      } else if (Platform.isLinux) {
        final info = await _deviceInfo.linuxInfo;
        buffer
          ..writeln('---- LINUX ----')
          ..writeln(_field('Name', () => info.name))
          ..writeln(_field('Version', () => info.version ?? info.buildId))
          ..writeln(_field('ID', () => info.id))
          ..writeln(_field('Machine ID', () => info.machineId));
      } else if (Platform.isWindows) {
        final info = await _deviceInfo.windowsInfo;
        buffer
          ..writeln('---- WINDOWS ----')
          ..writeln(_field('Product Name', () => info.productName))
          ..writeln(_field('Build', () => info.buildNumber))
          ..writeln(_field('Release ID', () => info.releaseId))
          ..writeln(_field('Device ID', () => info.deviceId));
      } else if (Platform.isMacOS) {
        final info = await _deviceInfo.macOsInfo;
        buffer
          ..writeln('---- MACOS ----')
          ..writeln(_field('Model', () => info.model))
          ..writeln(_field('OS Version', () => info.osRelease))
          ..writeln(_field('Kernel', () => info.kernelVersion))
          ..writeln(_field('Arch', () => info.arch));
      } else if (Platform.isIOS) {
        final info = await _deviceInfo.iosInfo;
        buffer
          ..writeln('---- IOS ----')
          ..writeln(_field('Name', () => info.name))
          ..writeln(_field('System', () => info.systemName))
          ..writeln(_field('Version', () => info.systemVersion))
          ..writeln(_field('Model', () => info.model))
          ..writeln(_field('Machine', () => info.utsname.machine));
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

enum LogLevel { debug, info, warning, error }

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
          logger(log, tag: 'native');
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

  static Future<String?> lastExit() async {
    if (!Platform.isAndroid) return null;
    try {
      return await _channel.invokeMethod<String>('getLastExit');
    } catch (_) {
      return null;
    }
  }

  static Future<Directory> getAndroidFilesDir() async {
    final path = await _channel.invokeMethod<String>('getCrashLogFileDir');
    return Directory(path!);
  }
}
