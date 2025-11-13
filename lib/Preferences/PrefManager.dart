import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/ShowResponse/ShowResponse.dart';
import 'package:dartotsu/logger.dart';
import 'package:dartotsu_extension_bridge/Mangayomi/Eval/dart/model/source_preference.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:isar_community/isar.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../Theme/LanguageSwitcher.dart';
import '../main.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal<T>(pref);

T? loadCustomData<T>(String key, {T? defaultValue}) =>
    PrefManager.getCustomVal<T>(key, defaultValue: defaultValue);

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal<T>(pref, value);

void saveCustomData<T>(String key, T value) =>
    PrefManager.setCustomVal<T>(key, value);

void removeData<T>(Pref<dynamic> pref) => PrefManager.removeVal<T>(pref);

void removeCustomData<T>(String key) => PrefManager.removeCustomVal<T>(key);

class Pref<T> {
  final String key;
  final T defaultValue;
  final PrefLocation location;

  const Pref(this.key, this.defaultValue, this.location);
}

enum PrefLocation {
  THEME,
  COMMON,
  PLAYER,
  READER,
  PROTECTED,
  OTHER;

  String label(BuildContext context) {
    final s = getString;
    switch (this) {
      case PrefLocation.THEME:
        return s.theme;
      case PrefLocation.COMMON:
        return s.common;
      case PrefLocation.PLAYER:
        return s.playerSettingsTitle;
      case PrefLocation.READER:
        return s.readerSettings;
      case PrefLocation.PROTECTED:
        return "Protected";
      case PrefLocation.OTHER:
        return "Other";
    }
  }
}

class PrefManager {
  static late Isar dartotsuPreferences;

  static final Map<String, dynamic> cache = {};

  static Future<void> init() async {
    try {
      final path = await getDirectory(subPath: 'settings');
      dartotsuPreferences = await _open('DartotsuSettings', path!.path);
      await _populateCache();
    } catch (e) {
      Logger.log('Error initializing preferences: $e');
    }
  }

  static Future<Isar> _open(String name, String directory) async {
    isar = Isar.openSync(
      [
        KeyValueSchema,
        ResponseTokenSchema,
        MediaSettingsSchema,
        ShowResponseSchema,
        MSourceSchema,
        SourcePreferenceSchema,
        SourcePreferenceStringValueSchema,
        BridgeSettingsSchema
      ],
      directory: directory,
      name: name,
      inspector: false,
    );

    return isar;
  }

  static void setVal<T>(Pref<T> pref, T value) {
    cache[pref.key] = value;
    _writeToIsar<T>(pref.key, value, pref.location);
  }

  static T getVal<T>(Pref<T> pref) {
    if (cache.containsKey(pref.key) == true) {
      if (T == Map<String, String>) {
        return (cache[pref.key] as Map<dynamic, dynamic>).cast<String, String>()
            as T;
      }
      return cache[pref.key] as T;
    }
    return pref.defaultValue;
  }

  static void setCustomVal<T>(
    String key,
    T value, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    cache[key] = value;
    _writeToIsar(key, value, location);
  }

  static T? getCustomVal<T>(
    String key, {
    T? defaultValue,
    PrefLocation location = PrefLocation.OTHER,
  }) =>
      cache.containsKey(key) ? cache[key] as T? : defaultValue;

  static void removeVal<T>(Pref<dynamic> pref) async {
    cache.remove(pref.key);
    _removeFromIsar<T>(pref.key);
  }

  static void removeCustomVal<T>(
    String key,
  ) async {
    if (cache.containsKey(key)) {
      cache.remove(key);
    }
    _removeFromIsar<T>(key);
  }

  static Future<void> _writeToIsar<T>(
    String key,
    T value,
    PrefLocation loc,
  ) async {
    await dartotsuPreferences.writeTxn(() async {
      if (value is MediaSettings) {
        value.key = key;
        value.location = loc;
        await dartotsuPreferences.mediaSettings.put(value);
      } else if (value is ShowResponse) {
        value.key = key;
        value.location = loc;
        await dartotsuPreferences.showResponses.put(value);
      } else if (value is ResponseToken) {
        value.key = key;
        value.location = loc;
        await dartotsuPreferences.responseTokens.put(value);
      } else {
        final obj = KeyValue()
          ..key = key
          ..value = value
          ..location = loc;

        await dartotsuPreferences.keyValues.put(obj);
      }
    });
  }

  static Future<void> _removeFromIsar<T>(String key) async {
    await dartotsuPreferences.writeTxn(() async {
      if (T == MediaSettings) {
        await dartotsuPreferences.mediaSettings.deleteByKey(key);
      } else if (T == ResponseToken) {
        await dartotsuPreferences.responseTokens.deleteByKey(key);
      } else if (T == ShowResponse) {
        await dartotsuPreferences.showResponses.deleteByKey(key);
      } else {
        await dartotsuPreferences.keyValues.deleteByKey(key);
      }
    });
  }

  static Future<void> _populateCache() async {
    final isar = dartotsuPreferences;
    final keyValues = await isar.keyValues.where().findAll();
    for (var item in keyValues) {
      cache[item.key] = item.value;
    }
    final selected = await isar.mediaSettings.where().findAll();
    for (var item in selected) {
      cache[item.key] = item;
    }
    final responseToken = await isar.responseTokens.where().findAll();
    for (var item in responseToken) {
      cache[item.key] = item;
    }
    final showResponse = await isar.showResponses.where().findAll();
    for (var item in showResponse) {
      cache[item.key] = item;
    }
  }

  static Future<PrefLocation> getLocationForKey(String key) async {
    final m = await dartotsuPreferences.mediaSettings.getByKey(key);

    if (m != null) return m.location;

    final s = await dartotsuPreferences.showResponses.getByKey(key);

    if (s != null) return s.location;

    final r = await dartotsuPreferences.responseTokens.getByKey(key);
    if (r != null) return r.location;

    final k = await dartotsuPreferences.keyValues.getByKey(key);
    if (k != null) return k.location;

    return PrefLocation.OTHER;
  }

  static dynamic parsePrefObject({
    required String key,
    required PrefLocation location,
    required dynamic value,
  }) {
    if (value is! Map<String, dynamic>) return value;

    try {
      return MediaSettings.fromJson(value);
    } catch (_) {}

    try {
      return ShowResponse.fromJson(value);
    } catch (_) {}

    try {
      return ResponseToken.fromJson(value);
    } catch (_) {}

    return value;
  }

  static Future<bool> requestPermission() async {
    if (!Platform.isAndroid) {
      return true;
    }

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt <= 29) {
      final storagePermission = Permission.storage;
      if (await storagePermission.isGranted) {
        return true;
      }
      final storageStatus = await storagePermission.request();
      return storageStatus.isGranted;
    }

    final manageStoragePermission = Permission.manageExternalStorage;
    if (await manageStoragePermission.isGranted) {
      return true;
    }
    final manageStorageStatus = await manageStoragePermission.request();
    return manageStorageStatus.isGranted;
  }

  static Future<Directory?> getTmpDirectory() async {
    final gefaultDirectory = await getDirectory();
    String dbDir = path.join(gefaultDirectory!.path, 'tmp');
    await Directory(dbDir).create(recursive: true);
    return Directory(dbDir);
  }

/*  static Future<Directory?> getDirectory({
    String? subPath,
    bool? useCustomPath = false,
    bool? useSystemPath = true,
  }) async {
    String basePath;
    final appDir = await getApplicationDocumentsDirectory();
    final customPath = loadData(PrefName.customPath);

    if (Platform.isIOS || Platform.isMacOS) {
      final dbDir =
          path.join(appDir.path, 'Dartotsu', subPath ?? '').fixSeparator;
      await Directory(dbDir).create(recursive: true);
      return Directory(dbDir);
    }

    if (Platform.isAndroid) {
      var hasPermission = await requestPermission();
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;

      if (!hasPermission) {
        return Directory(appDir.path.fixSeparator);
      }
      if (androidInfo.version.sdkInt <= 29) {
        var cDir = customPath.isNotEmpty
            ? (customPath.endsWith('Dartotsu')
                ? customPath
                : path.join(customPath, 'Dartotsu'))
            : '/storage/emulated/0/Dartotsu';
        var dir = Directory(
            (useSystemPath == true ? appDir.path : cDir).fixSeparator);
        dir.createSync(recursive: true);
        return dir;
      } else {
        var cDir = customPath.isNotEmpty
            ? (customPath.endsWith('Dartotsu')
                ? customPath
                : path.join(customPath, 'Dartotsu'))
            : '/storage/emulated/0/Dartotsu';
        basePath = useSystemPath == true ? appDir.path : cDir;
      }
    } else {
      var cDir = customPath.isNotEmpty ? customPath : appDir.path;
      basePath = useSystemPath == true ? appDir.path : cDir;
      basePath = basePath.endsWith('Dartotsu')
          ? basePath
          : path.join(basePath, 'Dartotsu');
    }

    final baseDirectory = Directory(basePath.fixSeparator);
    if (!baseDirectory.existsSync()) {
      baseDirectory.createSync(recursive: true);
    }

    final fullPath = path.join(basePath, subPath ?? '');
    final fullDirectory = Directory(fullPath.fixSeparator);

    if (subPath != null && subPath.isNotEmpty && !fullDirectory.existsSync()) {
      fullDirectory.createSync(recursive: true);
    }

    return fullDirectory;
  }*/
  static Future<Directory?> getDirectory({
    String? subPath,
    bool useCustomPath = false,
    bool useSystemPath = true,
  }) async {
    final appDir = await getApplicationDocumentsDirectory();
    final customPath = loadData(PrefName.customPath);
    final isApple = Platform.isIOS || Platform.isMacOS;

    Future<Directory> ensureDir(String dirPath) async {
      final dir = Directory(dirPath.fixSeparator);
      if (!dir.existsSync()) {
        await dir.create(recursive: true);
      }
      return dir;
    }

    if (isApple) {
      final dbDir = path.join(appDir.path, 'Dartotsu', subPath ?? '');
      return ensureDir(dbDir);
    }

    if (Platform.isAndroid) {
      final hasPermission = await requestPermission();
      final androidInfo = await DeviceInfoPlugin().androidInfo;

      if (!hasPermission) {
        return ensureDir(appDir.path);
      }

      final defaultPath = '/storage/emulated/0/Dartotsu';
      final resolvedCustomPath = customPath.isNotEmpty
          ? (customPath.endsWith('Dartotsu')
              ? customPath
              : path.join(customPath, 'Dartotsu'))
          : defaultPath;

      String basePath;

      if (androidInfo.version.sdkInt <= 29) {
        basePath = useSystemPath ? appDir.path : resolvedCustomPath;
        return ensureDir(basePath);
      } else {
        basePath = useSystemPath ? appDir.path : resolvedCustomPath;
      }

      final fullPath = path.join(basePath, subPath ?? '');
      return ensureDir(fullPath);
    }

    final fallbackPath = (customPath.isNotEmpty ? customPath : appDir.path);
    final basePath = fallbackPath.endsWith('Dartotsu')
        ? fallbackPath
        : path.join(fallbackPath, 'Dartotsu');

    final fullPath = path.join(basePath, subPath ?? '');
    return ensureDir(fullPath);
  }

  static Future<bool> videoPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.videos.isDenied ||
          await Permission.videos.isPermanentlyDenied) {
        final state = await Permission.videos.request();
        if (!state.isGranted) {
          return false;
        }
      }
      return true;
    }
    return true;
  }
}

extension StringPathExtension on String {
  String get fixSeparator {
    if (Platform.isWindows) {
      return replaceAll("/", path.separator);
    } else {
      return replaceAll("\\", "/");
    }
  }
}
