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
import 'Encryptor.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';
import 'IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'IsarDataClasses/ShowResponse/ShowResponse.dart';
import 'Validator.dart';

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

  static void setVal<T>(Pref<T> pref, T value) =>
      _writeToIsar<T>(pref.key, value, pref.location);

  static T getVal<T>(Pref<T> pref) =>
      _getFromIsarSync<T>(pref.key, pref.location) ?? pref.defaultValue;

  static T? getCustomVal<T>(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
    T? defaultValue,
  }) =>
      _getFromIsarSync<T>(key, location) ?? defaultValue;

  static void setCustomVal<T>(
    String key,
    T value, {
    PrefLocation location = PrefLocation.OTHER,
  }) =>
      _writeToIsar(key, value, location);

  static void removeVal<T>(Pref<dynamic> pref) async =>
      _removeFromIsar<T>(pref.key);

  static void removeCustomVal<T>(
    String key,
  ) async =>
      _removeFromIsar<T>(key);

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

  static Future<void> restoreBackup({
    required Map<String, dynamic> json,
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final dec = await Crypto.decrypt(json, password: password);
    final decryptedJson = jsonDecode(dec);

    Validator.validate(decryptedJson);

    final isar = dartotsuPreferences;
    final selected = locations ?? PrefLocation.values.toSet();

    await isar.writeTxn(() async {
      final kvList = <KeyValue>[];
      final mediaList = <MediaSettings>[];
      final showList = <ShowResponse>[];
      final tokenList = <ResponseToken>[];

      for (final section in decryptedJson.entries) {
        if (section.key == '_meta') continue;

        final loc = PrefLocation.values.firstWhere(
          (e) => e.name == section.key,
          orElse: () => PrefLocation.OTHER,
        );

        if (!selected.contains(loc)) continue;

        final values = (section.value as Map).cast<String, dynamic>();

        for (final entry in values.entries) {
          final key = entry.key;
          final raw = entry.value as Map<String, dynamic>;

          switch (raw['type']) {
            case 'KeyValue':
              kvList.add(KeyValue.fromJson(raw));
              break;

            case 'MediaSettings':
              mediaList.add(
                MediaSettings.fromJson(raw)
                  ..key = key
                  ..location = loc,
              );
              break;

            case 'ShowResponse':
              showList.add(
                ShowResponse.fromJson(raw)
                  ..key = key
                  ..location = loc,
              );
              break;

            case 'ResponseToken':
              tokenList.add(
                ResponseToken.fromJson(raw)
                  ..key = key
                  ..location = loc,
              );
              break;
          }
        }
      }

      if (kvList.isNotEmpty) {
        await isar.keyValues.putAll(kvList);
      }
      if (mediaList.isNotEmpty) {
        await isar.mediaSettings.putAll(mediaList);
      }
      if (showList.isNotEmpty) {
        await isar.showResponses.putAll(showList);
      }
      if (tokenList.isNotEmpty) {
        await isar.responseTokens.putAll(tokenList);
      }
    });
  }

  static Future<Map<String, dynamic>> exportBackup({
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final isar = dartotsuPreferences;
    final selected = locations ?? PrefLocation.values.toSet();
    final result = <String, Map<String, dynamic>>{};

    for (final loc in selected) {
      result[loc.name] = {};
    }

    for (final loc in selected) {
      final keyValues =
          await isar.keyValues.where().filter().locationEqualTo(loc).findAll();
      for (final kv in keyValues) {
        result[loc.name]![kv.key] = kv.toJson();
      }

      final media = await isar.mediaSettings
          .where()
          .filter()
          .locationEqualTo(loc)
          .findAll();
      for (final ms in media) {
        result[loc.name]![ms.key] = ms.toJson();
      }

      final shows = await isar.showResponses
          .where()
          .filter()
          .locationEqualTo(loc)
          .findAll();
      for (final sr in shows) {
        result[loc.name]![sr.key] = sr.toJson();
      }

      final tokens = await isar.responseTokens
          .where()
          .filter()
          .locationEqualTo(loc)
          .findAll();
      for (final rt in tokens) {
        result[loc.name]![rt.key] = rt.toJson();
      }
    }

    result.removeWhere((_, v) => v.isEmpty);
    final wrap = Validator.wrap(result);

    final enc = await Crypto.encrypt(
      jsonEncode(wrap),
      password: password,
    );
    return enc;
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
    try {
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

        if (!hasPermission) {
          return ensureDir(appDir.path);
        }

        final defaultPath = '/storage/emulated/0/Dartotsu';
        final resolvedCustomPath = customPath.isNotEmpty
            ? (customPath.endsWith('Dartotsu')
                ? customPath
                : path.join(customPath, 'Dartotsu'))
            : defaultPath;

        return ensureDir(useSystemPath ? appDir.path : resolvedCustomPath);
      }

      final fallbackPath = (customPath.isNotEmpty ? customPath : appDir.path);
      final basePath = fallbackPath.endsWith('Dartotsu')
          ? fallbackPath
          : path.join(fallbackPath, 'Dartotsu');

      final fullPath = path.join(basePath, subPath ?? '');
      return ensureDir(fullPath);
    } catch (e) {
      Logger.log('Error getting directory: $e');
      return null;
    }
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
