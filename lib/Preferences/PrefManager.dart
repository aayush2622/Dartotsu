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
  static Isar? _uiPreferences;
  static Isar? _playerPreferences;
  static Isar? _readerPreferences;
  static Isar? _irrelevantPreferences;
  static Isar? _protectedPreferences;

  static final Map<Location, Map<String, dynamic>> _cache = {
    Location.General: {},
    Location.UI: {},
    Location.Player: {},
    Location.Reader: {},
    Location.Irrelevant: {},
    Location.Protected: {},
  };

  static Future<void> init() async {
    if (_generalPreferences != null) return;
    final path = await StorageProvider().getDirectory(subPath: 'settings');

    _generalPreferences = await _open('generalSettings', path!.path);
    _uiPreferences = await _open('uiSettings', path.path);
    _playerPreferences = await _open('playerSettings', path.path);
    _readerPreferences = await _open('readerSettings', path.path);
    _irrelevantPreferences = await _open('irrelevantSettings', path.path);
    _protectedPreferences = await _open('protectedSettings', path.path);
    removePref();
    await _populateCache();
  }

  static Future<Isar> _open(String name, String directory) async {
    final isar = await Isar.open(
      [
        KeyValueSchema,
        PlayerSettingsSchema,
        ResponseTokenSchema,
        SelectedSchema,
        ShowResponseSchema,
      ],
      directory: directory,
      name: name,
      inspector: false,
    );
    Logger.log('loaded $name');
    return isar;
  }

  static Future<void> _populateCache() async {
    for (var location in Location.values) {
      final isar = _getPrefBox(location);
      if (isar != null) {
        final keyValues = await isar.keyValues.where().findAll();
        for (var item in keyValues) {
          _cache[location]?[item.key] = item.value;
        }
        final showResponse = await isar.showResponses.where().findAll();
        for (var item in showResponse) {
          _cache[location]?[item.key] = item;
        }
        final selected = await isar.selecteds.where().findAll();
        for (var item in selected) {
          _cache[location]?[item.key] = item;
        }
        final responseToken = await isar.responseTokens.where().findAll();
        for (var item in responseToken) {
          _cache[location]?[item.key] = item;
        }
        final playerSettings = await isar.playerSettings.where().findAll();
        for (var item in playerSettings) {
          _cache[location]?[item.key] = item;
        }
      }
    }
    Logger.log('Populated cache');
  }

  static void setVal<T>(Pref<T> pref, T value) {
    _checkInitialization();
    _cache[pref.location]?[pref.key] = value;
    final isar = _getPrefBox(pref.location);
    return _writeToIsar(isar, pref.key, value);
  }

  static T getVal<T>(Pref<T> pref) {
    _checkInitialization();
    if (_cache[pref.location]?.containsKey(pref.key) == true) {
      return _cache[pref.location]![pref.key] as T;
    }
    return pref.defaultValue;
  }

  static void setCustomVal<T>(String key, T value,
      {Location location = Location.Irrelevant}) {
    _checkInitialization();
    final isar = _getPrefBox(location);
    _cache[location]?[key] = value;
    return _writeToIsar(isar, key, value);
  }

  static T? getCustomVal<T>(String key,
      {Location location = Location.Irrelevant}) {
    _checkInitialization();
    if (_cache[location]?.containsKey(key) == true) {
      return _cache[location]![key] as T;
    }
    return null;
  }

  static void setLiveCustomVal<T>(String key, T value,
      {Location location = Location.Irrelevant}) async {
    _checkInitialization();
    _cache[location]?[key] = value;
    final isar = _getPrefBox(location);
    final keyValue = KeyValue()
      ..key = key
      ..value = value;
    isar?.keyValues.putSync(keyValue);
  }

  static Future<Rx<T>?> getLiveCustomVal<T>(String key,
      {Location location = Location.Irrelevant}) async {
    _checkInitialization();
    final isar = _getPrefBox(location);
    final stream = Rx(isar?.keyValues.getByKeySync(key)?.value as T);
    return stream;
  }

  static void removeVal(Pref<dynamic> pref) async {
    _checkInitialization();
    _cache[pref.location]?.remove(pref.key);
    final isar = _getPrefBox(pref.location);
    return isar?.writeTxn(() => isar.keyValues.deleteByKey(pref.key));
  }

  static void removeCustomVal(String key,
      {Location location = Location.Irrelevant}) async {
    _checkInitialization();
    _cache[location]?.remove(key);
    final isar = _getPrefBox(location);
    return isar?.writeTxn(() => isar.keyValues.deleteByKey(key));
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

  static Isar? _getPrefBox(Location location) {
    switch (location.name) {
      case 'General':
        return _generalPreferences!;
      case 'UI':
        return _uiPreferences!;
      case 'Player':
        return _playerPreferences!;
      case 'Reader':
        return _readerPreferences!;
      case 'Irrelevant':
        return _irrelevantPreferences!;
      case 'Protected':
        return _protectedPreferences!;
      default:
        throw Exception("Invalid box name");
    }
  }
}

void removePref() {
  if (loadCustomData('once1') ?? true) {
    removeData(PrefName.simklHomeLayout);
    saveCustomData('once1', false);
  }
}
