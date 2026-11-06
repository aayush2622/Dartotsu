import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;

import '../../Logger.dart';
import 'PrefManager.dart';
import 'StorageManager.dart';

class SafFolder {
  final String tree;
  final String root;
  final String name;

  const SafFolder({required this.tree, required this.root, required this.name});

  Map<String, Object?> toJson() => {'tree': tree, 'root': root, 'name': name};

  static SafFolder? fromJson(Object? json) {
    if (json is! Map) return null;
    final tree = json['tree'];
    final root = json['root'];
    if (tree is! String || root is! String) return null;
    return SafFolder(tree: tree, root: root, name: '${json['name'] ?? ''}');
  }
}

class SafStorage {
  static const _channel = MethodChannel('dartotsu/saf');

  static const _tag = 'STORAGE';
  static const _maxFailures = 5;

  static bool _legacyAccess = false;
  static bool _unusable = false;
  static int _failures = 0;

  static Future<void> init() async {
    if (!Platform.isAndroid) return;
    try {
      _legacyAccess = await StorageManager.hasStoragePermission();
      final target = folder;
      logger(
        'Storage: all-files access=$_legacyAccess, chosen folder=${target?.name ?? 'none'}',
        tag: _tag,
      );
      if (!_legacyAccess && target != null) {
        final ok = await _channel.invokeMethod<bool>('check', {
          'tree': target.tree,
          'root': target.root,
        });
        if (ok != true) {
          _unusable = true;
          logger(
            'The chosen folder ${target.name} is not reachable any more, keeping files in app storage only',
            tag: _tag,
            logLevel: LogLevel.warning,
          );
        }
      }
    } catch (e) {
      _unusable = true;
      logger(
        'Storage check failed, keeping files in app storage only: $e',
        tag: _tag,
        logLevel: LogLevel.warning,
      );
    }
  }

  static SafFolder? get folder {
    if (!Platform.isAndroid) return null;
    final raw = PrefName.safFolder.value;
    if (raw.isEmpty) return null;
    try {
      return SafFolder.fromJson(jsonDecode(raw));
    } catch (_) {
      return null;
    }
  }

  static bool get active =>
      Platform.isAndroid && !_legacyAccess && !_unusable && folder != null;

  static Future<SafFolder?> pick() async {
    try {
      final result = await _channel.invokeMapMethod<String, String>('pick');
      if (result == null) return null;
      final picked = SafFolder.fromJson(result);
      if (picked != null) {
        PrefName.safFolder.rx.value = jsonEncode(picked.toJson());
        _unusable = false;
        _failures = 0;
        logger('Chosen folder set to ${picked.name}', tag: _tag);
      }
      return picked;
    } catch (e) {
      logger(
        'Picking a folder failed: $e',
        tag: _tag,
        logLevel: LogLevel.warning,
      );
      return null;
    }
  }

  static void clear() {
    PrefName.safFolder.rx.value = '';
    logger('Chosen folder cleared', tag: _tag);
  }

  static void _fail(String what) {
    if (++_failures < _maxFailures || _unusable) return;
    _unusable = true;
    logger(
      'Giving up on the chosen folder after $_failures failures ($what)',
      tag: _tag,
      logLevel: LogLevel.warning,
    );
  }

  static String relative(String path, String base) =>
      p.relative(path, from: base).replaceAll(r'\', '/');

  static Future<int> exportPath(String path, {required String base}) async {
    final target = folder;
    if (!active || target == null) return 0;
    var count = 0;
    try {
      final type = FileSystemEntity.typeSync(path);
      final files = <File>[];
      if (type == FileSystemEntityType.file) {
        files.add(File(path));
      } else if (type == FileSystemEntityType.directory) {
        for (final e in Directory(path).listSync(recursive: true)) {
          if (e is File && !e.path.endsWith('.part')) files.add(e);
        }
      }
      for (final file in files) {
        final ok = await _channel.invokeMethod<bool>('export', {
          'tree': target.tree,
          'root': target.root,
          'relative': relative(file.path, base),
          'source': file.path,
        });
        if (ok == true) {
          count++;
          _failures = 0;
        } else {
          logger(
            'Could not copy ${file.path} to the chosen folder',
            tag: _tag,
            logLevel: LogLevel.warning,
          );
          _fail(file.path);
        }
      }
    } catch (e) {
      logger(
        'Export to the chosen folder failed: $e',
        tag: _tag,
        logLevel: LogLevel.warning,
      );
      _fail('$e');
    }
    return count;
  }

  static Future<void> remove(String path, {required String base}) async {
    final target = folder;
    if (!active || target == null) return;
    try {
      await _channel.invokeMethod<bool>('delete', {
        'tree': target.tree,
        'root': target.root,
        'relative': relative(path, base),
      });
    } catch (e) {
      logger(
        'Removing from the chosen folder failed: $e',
        tag: _tag,
        logLevel: LogLevel.warning,
      );
    }
  }
}
