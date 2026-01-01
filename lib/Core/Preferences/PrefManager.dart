import 'dart:async';
import 'dart:convert';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:isar_community/isar.dart';
import '../../Logger.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'Encryptor.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/DefaultReaderSettings/DefaultReaderSettings.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';
import 'IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'IsarDataClasses/ShowResponse/ShowResponse.dart';
import 'StorageManager.dart';
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
      final path = await StorageManager.getDirectory(subPath: 'settings');
      dartotsuPreferences = _open('DartotsuSettings', path!.path);
      await deleteAllStoredPreferences();
    } catch (e) {
      logger('Error initializing preferences: $e');
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
        ...DartotsuExtensionBridge.isarSchema,
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
    final decryptedJson = jsonDecode(dec) as Map<String, dynamic>;

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
}
