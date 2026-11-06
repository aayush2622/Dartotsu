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

  static bool _legacyAccess = false;

  static Future<void> init() async {
    if (!Platform.isAndroid) return;
    _legacyAccess = await StorageManager.hasStoragePermission();
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
      Platform.isAndroid && !_legacyAccess && folder != null;

  static Future<SafFolder?> pick() async {
    final result = await _channel.invokeMapMethod<String, String>('pick');
    if (result == null) return null;
    final picked = SafFolder.fromJson(result);
    if (picked != null) {
      PrefName.safFolder.rx.value = jsonEncode(picked.toJson());
    }
    return picked;
  }

  static void clear() => PrefName.safFolder.rx.value = '';

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
        if (ok == true) count++;
      }
    } catch (e) {
      logger(
        'Export to the chosen folder failed: $e',
        logLevel: LogLevel.warning,
      );
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
        logLevel: LogLevel.warning,
      );
    }
  }
}
