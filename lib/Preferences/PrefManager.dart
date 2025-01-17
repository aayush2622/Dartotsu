import 'dart:async';

import 'package:dantotsu/logger.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:isar/isar.dart';
import '../StorageProvider.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';
import 'IsarDataClasses/Selected/Selected.dart';
import 'IsarDataClasses/ShowResponse/ShowResponse.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal(pref);

T loadCustomData<T>(String key) => PrefManager.getCustomVal(key);

Future<Rx<T>?> loadLiveCustomData<T>(String key) =>
    PrefManager.getLiveCustomVal(key);

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal(pref, value);

void saveCustomData<T>(String key, T value) =>
    PrefManager.setCustomVal(key, value);

void saveLiveCustomData<T>(String key, T value) =>
    PrefManager.setLiveCustomVal(key, value);

void removeData(Pref<dynamic> pref) => PrefManager.removeVal(pref);

void removeCustomData(String key) => PrefManager.removeCustomVal(key);

class Pref<T> {
  @Enumerated(EnumType.name)
  final Location location;
  final String key;
  final T defaultValue;

  const Pref(this.location, this.key, this.defaultValue);
}

enum Location {
  General,
  UI,
  Player,
  Reader,
  Irrelevant,
  Protected,
}

class PrefManager {
  static Isar? _generalPreferences;
  static Isar? _preferences;
  static final Map<String, dynamic> _cache = {};

  static Future<void> init() async {
    try {
      if (_preferences != null) return;
      final path = await StorageProvider().getDirectory(subPath: 'settings');
      _preferences = await Isar.open(
        [
          KeyValueSchema,
          PlayerSettingsSchema,
          ResponseTokenSchema,
          SelectedSchema,
          ShowResponseSchema,
        ],
        directory: path!.path,
        name: 'preferences',
        inspector: false,
      );
      await _populateCache();
    } catch (e) {
      Logger.log('Error initializing preferences: $e');
    }
  }

  static Future<void> _populateCache() async {
    final isar = _preferences;
    if (isar != null) {
      final keyValues = await isar.keyValues.where().findAll();
      for (var item in keyValues) {
        _cache[item.key] = item.value;
      }
      final showResponse = await isar.showResponses.where().findAll();
      for (var item in showResponse) {
        _cache[item.key] = item;
      }
      final selected = await isar.selecteds.where().findAll();
      for (var item in selected) {
        _cache[item.key] = item;
      }
      final responseToken = await isar.responseTokens.where().findAll();
      for (var item in responseToken) {
        _cache[item.key] = item;
      }
      final playerSettings = await isar.playerSettings.where().findAll();
      for (var item in playerSettings) {
        _cache[item.key] = item;
      }
    }
  }

  static void setVal<T>(Pref<T> pref, T value) {
    try {
      _checkInitialization();
      _cache[pref.key] = value;
      final isar = _preferences;
      return _writeToIsar(isar, pref.key, value);
    } catch (e) {
      Logger.log('Error setting preference: $e');
    }
  }

  static T getVal<T>(Pref<T> pref) {
    try {
      _checkInitialization();
      if (_cache.containsKey(pref.key) == true) {
        return _cache[pref.key] as T;
      }
      return pref.defaultValue;
    } catch (e) {
      Logger.log('Error getting preference: $e');
      return pref.defaultValue;
    }
  }

  static void setCustomVal<T>(
    String key,
    T value,
  ) {
    try {
      _checkInitialization();
      final isar = _preferences;
      _cache[key] = value;
      return _writeToIsar(isar, key, value);
    } catch (e) {
      Logger.log('Error setting custom preference: $e');
    }
  }

  static T? getCustomVal<T>(String key,
      {Location location = Location.Irrelevant}) {
    try {
      _checkInitialization();
      if (_cache.containsKey(key) == true) {
        return _cache[key] as T;
      }
      return null;
    } catch (e) {
      Logger.log('Error getting custom preference: $e');
      return null;
    }
  }

  static void setLiveCustomVal<T>(
    String key,
    T value,
  ) async {
    try {
      _checkInitialization();
      _cache[key] = value;
      final isar = _preferences;
      final keyValue = KeyValue()
        ..key = key
        ..value = value;
      isar?.keyValues.putSync(keyValue);
    } catch (e) {
      Logger.log('Error setting live custom preference: $e');
    }
  }

  static Future<Rx<T>?> getLiveCustomVal<T>(String key,
      {Location location = Location.Irrelevant}) async {
    try {
      _checkInitialization();
      final isar = _preferences;
      final stream = Rx(isar?.keyValues.getByKeySync(key)?.value as T);
      return stream;
    } catch (e) {
      Logger.log('Error getting live custom preference: $e');
      return null;
    }
  }

  static void removeVal(Pref<dynamic> pref) async {
    try {
      _checkInitialization();
      _cache.remove(pref.key);
      final isar = _preferences;
      return isar?.writeTxn(() => isar.keyValues.deleteByKey(pref.key));
    } catch (e) {
      Logger.log('Error removing preference: $e');
    }
  }

  static void removeCustomVal(String key,
      {Location location = Location.Irrelevant}) async {
    try {
      _checkInitialization();
      _cache.remove(key);
      final isar = _preferences;
      return isar?.writeTxn(() => isar.keyValues.deleteByKey(key));
    } catch (e) {
      Logger.log('Error removing custom preference: $e');
    }
  }

  static void _writeToIsar<T>(Isar? isar, String key, T value) {
    if (isar == null) return;

    isar.writeTxn(() async {
      if (value is ShowResponse) {
        value.key = key;
        isar.showResponses.put(value);
      } else if (value is Selected) {
        value.key = key;
        isar.selecteds.put(value);
      } else if (value is ResponseToken) {
        value.key = key;
        isar.responseTokens.put(value);
      } else if (value is PlayerSettings) {
        value.key = key;
        isar.playerSettings.put(value);
      } else {
        final keyValue = KeyValue()
          ..key = key
          ..value = value;
        isar.keyValues.put(keyValue);
      }
    });
    Logger.log('Wrote $key to isar');
  }

  static void _checkInitialization() {
    if (_generalPreferences == null) {
      throw Exception(
        'Preferences not initialized. Call PrefManager.init() first.',
      );
    }
  }
}
