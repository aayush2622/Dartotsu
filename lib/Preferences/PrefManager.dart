import 'dart:async';
import 'dart:convert';

import 'package:dartotsu/Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/ShowResponse/ShowResponse.dart';
import 'package:dartotsu/logger.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:isar/isar.dart';

import '../StorageProvider.dart';
import 'IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal(pref);

T? loadCustomData<T>(String key) => PrefManager.getCustomVal(key);

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
  final Location location;
  final String key;
  final T defaultValue;

  const Pref(this.location, this.key, this.defaultValue);
}

enum Location {
  General,
  Irrelevant,
}

class PrefManager {
  static late Isar _generalPreferences;
  static late Isar _irrelevantPreferences;

  static final Map<Location, Map<String, dynamic>> cache = {
    Location.General: {},
    Location.Irrelevant: {}, // add more and ios will crash
  };

  static Future<void> init() async {
    try {
      final path = await StorageProvider.getDirectory(subPath: 'settings');
      _generalPreferences = await _open('generalSettings', path!.path);
      _irrelevantPreferences = await _open('irrelevantSettings', path.path);
      await _populateCache();
    } catch (e) {
      Logger.log('Error initializing preferences: $e');
    }
  }

  static Future<Isar> _open(String name, String directory) async {
    final isar = await Isar.open(
      [
        KeyValueSchema,
        ResponseTokenSchema,
        MediaSettingsSchema,
        ShowResponseSchema
      ],
      directory: directory,
      name: name,
      inspector: false,
    );
    return isar;
  }

  static Future<void> _populateCache() async {
    for (var location in Location.values) {
      final isar = _getPrefBox(location);
      final keyValues = await isar.keyValues.where().findAll();
      for (var item in keyValues) {
        cache[location]?[item.key] = item.value;
      }
      final selected = await isar.mediaSettings.where().findAll();
      for (var item in selected) {
        cache[location]?[item.key] = item;
      }
      final responseToken = await isar.responseTokens.where().findAll();
      for (var item in responseToken) {
        cache[location]?[item.key] = item;
      }
      final showResponse = await isar.showResponses.where().findAll();
      for (var item in showResponse) {
        cache[location]?[item.key] = item;
      }
    }
  }

  static void setVal<T>(Pref<T> pref, T value) {
    cache[pref.location]?[pref.key] = value;
    final isar = _getPrefBox(pref.location);
    return _writeToIsar(isar, pref.key, value);
  }

  static T getVal<T>(Pref<T> pref) {
    if (cache[pref.location]?.containsKey(pref.key) == true) {
      return cache[pref.location]![pref.key] as T;
    }
    return pref.defaultValue;
  }

  static void setCustomVal<T>(
    String key,
    T value, {
    Location location = Location.Irrelevant,
  }) {
    final isar = _getPrefBox(location);
    cache[location]?[key] = value;
    return _writeToIsar(isar, key, value);
  }

  static T? getCustomVal<T>(
    String key, {
    Location location = Location.Irrelevant,
  }) {
    if (cache[location]?.containsKey(key) == true) {
      return cache[location]![key] as T;
    }
    return null;
  }

  static void setLiveCustomVal<T>(
    String key,
    T value, {
    Location location = Location.Irrelevant,
  }) async {
    cache[location]?[key] = value;
    final isar = _getPrefBox(location);
    final keyValue = KeyValue()
      ..key = key
      ..value = value;
    isar.keyValues.putSync(keyValue);
  }

  static Future<Rx<T>?> getLiveCustomVal<T>(
    String key, {
    Location location = Location.Irrelevant,
  }) async {
    final isar = _getPrefBox(location);
    final stream = Rx(isar.keyValues.getByKeySync(key)?.value as T);
    return stream;
  }

  static void removeVal(Pref<dynamic> pref) async {
    cache[pref.location]?.remove(pref.key);
    final isar = _getPrefBox(pref.location);
    return isar.writeTxn(() => isar.keyValues.deleteByKey(pref.key));
  }

  static void removeCustomVal(
    String key, {
    Location location = Location.Irrelevant,
  }) async {
    cache[location]?.remove(key);
    final isar = _getPrefBox(location);
    return isar.writeTxn(() => isar.keyValues.deleteByKey(key));
  }

  static void removeEverything() async {}

  static void addEverything(Map<Location, Map<String, dynamic>> cache) async {
    for (var location in Location.values) {
      final isar = _getPrefBox(location);
      for (var key in cache[location]!.keys) {
        final value = cache[location]![key];
        cache[location]?[key] = value;
        _writeToIsar(isar, key, value);
      }
    }
  }

  static void _writeToIsar<T>(Isar? isar, String key, T value) {
    if (isar == null) return;

    isar.writeTxn(() async {
      if (value is MediaSettings) {
        value.key = key;
        isar.mediaSettings.put(value);
      } else if (value is ResponseToken) {
        value.key = key;
        isar.responseTokens.put(value);
      } else if (value is ShowResponse) {
        value.key = key;
        isar.showResponses.put(value);
      } else {
        final keyValue = KeyValue()
          ..key = key
          ..value = value;
        isar.keyValues.put(keyValue);
      }
    });
  }

  static Isar _getPrefBox(Location location) {
    switch (location.name) {
      case 'General':
        return _generalPreferences;
      case 'Irrelevant':
        return _irrelevantPreferences;
      default:
        return _generalPreferences;
    }
  }
}
