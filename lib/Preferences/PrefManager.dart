import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartotsu_extension_bridge/Mangayomi/Eval/dart/model/source_preference.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:isar_community/isar.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../Logger.dart';
import '../Theme/LanguageSwitcher.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';
import 'IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'IsarDataClasses/ShowResponse/ShowResponse.dart';

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

  String get label {
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

  static Future<void> init() async {
    try {
      final path = await getDirectory(subPath: 'settings');
      dartotsuPreferences = _open('DartotsuSettings', path!.path);
      await deleteAllStoredPreferences();
    } catch (e) {
      Logger.log('Error initializing preferences: $e');
    }
  }

  static Isar _open(String name, String directory) {
    return Isar.openSync(
      [
        KeyValueSchema,
        ResponseTokenSchema,
        MediaSettingsSchema,
        ShowResponseSchema,
        // bridge related schemas
        MSourceSchema,
        SourcePreferenceSchema,
        SourcePreferenceStringValueSchema,
        BridgeSettingsSchema
      ],
      directory: directory,
      name: name,
      inspector: false,
    );
  }

  static void setVal<T>(Pref<T> pref, T value) {
    _writeToIsar<T>(pref.key, value, pref.location);
  }

  static T getVal<T>(Pref<T> pref) {
    return _getFromIsarSync<T>(pref.key, pref.location) ?? pref.defaultValue;
  }

  static T? getCustomVal<T>(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
    T? defaultValue,
  }) {
    return _getFromIsarSync<T>(key, location) ?? defaultValue;
  }

  static void setCustomVal<T>(
    String key,
    T value, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    _writeToIsar(key, value, location);
  }

  static void removeVal<T>(Pref<dynamic> pref) async {
    _removeFromIsar<T>(pref.key);
  }

  static void removeCustomVal<T>(
    String key,
  ) async {
    _removeFromIsar<T>(key);
  }

  static T? _getFromIsarSync<T>(
    String key,
    PrefLocation location,
  ) {
    if (T == MediaSettings) {
      return dartotsuPreferences.mediaSettings.getByKeySync(key) as T?;
    }
    if (T == ResponseToken) {
      return dartotsuPreferences.responseTokens.getByKeySync(key) as T?;
    }
    if (T == ShowResponse) {
      return dartotsuPreferences.showResponses.getByKeySync(key) as T?;
    }

    final kv = dartotsuPreferences.keyValues.getByKeySync(key);
    return kv?.value as T?;
  }

  static void _writeToIsar<T>(
    String key,
    T value,
    PrefLocation loc,
  ) {
    dartotsuPreferences.writeTxnSync(() {
      if (value is MediaSettings) {
        value.key = key;
        value.location = loc;
        dartotsuPreferences.mediaSettings.putSync(value);
      } else if (value is ShowResponse) {
        value.key = key;
        value.location = loc;
        dartotsuPreferences.showResponses.putSync(value);
      } else if (value is ResponseToken) {
        value.key = key;
        value.location = loc;
        dartotsuPreferences.responseTokens.putSync(value);
      } else {
        final obj = KeyValue()
          ..key = key
          ..value = value
          ..location = loc;

        dartotsuPreferences.keyValues.putSync(obj);
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

  static Future<void> deleteAllStoredPreferences() async {
    if (getCustomVal("cleanSettings") ?? true) {
      final isar = dartotsuPreferences;
      await isar.writeTxn(() async {
        await isar.keyValues.clear();
        await isar.mediaSettings.clear();
        await isar.showResponses.clear();
        await isar.responseTokens.clear();
      });
      setCustomVal("cleanSettings", false);
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
    final defaultDirectory = await getDirectory();
    String dbDir = path.join(defaultDirectory!.path, 'tmp');
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
    final customPath = useCustomPath ? loadData(PrefName.customPath) : '';
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
