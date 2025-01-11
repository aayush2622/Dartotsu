import 'dart:async';

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

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal(pref, value);

void saveCustomData<T>(String key, T value) => PrefManager.setCustomVal(key, value);

void removeData(Pref<dynamic> pref) => PrefManager.removeVal(pref);

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
  static Completer<Isar>? _generalPreferences;
  static Completer<Isar>? _uiPreferences;
  static Completer<Isar>? _playerPreferences;
  static Completer<Isar>? _readerPreferences;
  static Completer<Isar>? _irrelevantPreferences;
  static Completer<Isar>? _protectedPreferences;

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
    await _populateCache();
  }

  static Future<Completer<Isar>> _open(String name, String directory) async {
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
    return Completer<Isar>()..complete(isar);
  }

  static Future<void> _populateCache() async {
    for (var location in Location.values) {
      final box = _getPrefBox(location);
      final isar = await box?.future;
      if (isar != null) {
        _cacheData<KeyValue>(isar.keyValues.where().findAll(), location);
        _cacheData<ShowResponse>(isar.showResponses.where().findAll(), location);
        _cacheData<Selected>(isar.selecteds.where().findAll(), location);
        _cacheData<ResponseToken>(isar.responseTokens.where().findAll(), location);
        _cacheData<PlayerSettings>(isar.playerSettings.where().findAll(), location);
      }
    }
  }

  static Future<void> _cacheData<T>(
      Future<List<T>> itemsFuture, Location location) async {
    final items = await itemsFuture;
    for (var item in items) {
      final key = (item as dynamic).key;
      _cache[location]?[key] = item;
    }
  }

  static void setVal<T>(Pref<T> pref, T value) async {
    _checkInitialization();
    _cache[pref.location]?[pref.key] = value;

    final box = _getPrefBox(pref.location);
    final isar = await box?.future;

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
      {Location location = Location.Irrelevant}) async {
    _checkInitialization();
    final box = _getPrefBox(location);
    final isar = await box?.future;
    _cache[location]?[key] = value;
    return _writeToIsar(isar, key, value);
  }

  static T? getCustomVal<T>(String key, {Location location = Location.Irrelevant}) {
    _checkInitialization();
    if (_cache[location]?.containsKey(key) == true) {
      return _cache[location]![key] as T;
    }
    return null;
  }

  /*static void setLiveVal<T>(Pref<T> pref, T value) async {
    _checkInitialization();
    _cache[pref.location]?[pref.key] = value;
    final box = _getPrefBox(pref.location);
    final isar = await box?.future;
    final keyValue = KeyValue()
      ..key = pref.key
      ..value = value;
    isar?.keyValues.putSync(keyValue);
  }

  static Future<T?> getLiveVal<T>(Pref<T> pref, void Function(T) onData) async {
    _checkInitialization();
    final box = _getPrefBox(pref.location);
    final isar = await box?.future;
    final stream = isar?.keyValues.getByKeySync(pref.key);
    return stream?.value as T;
  }*/

  static void removeVal(Pref<dynamic> pref) async {
    _checkInitialization();
    final box = _getPrefBox(pref.location);
    final isar = await box?.future;
    return isar?.writeTxn(() => isar.keyValues.deleteByKey(pref.key));
  }

  static Future<void> _writeToIsar<T>(Isar? isar, String key, T value) async {
    if (isar == null) return;

    await isar.writeTxn(() async {
      if (value is ShowResponse) {
        value.key = key;
        await isar.showResponses.put(value);
      } else if (value is Selected) {
        value.key = key;
        await isar.selecteds.put(value);
      } else if (value is ResponseToken) {
        value.key = key;
        await isar.responseTokens.put(value);
      } else if (value is PlayerSettings) {
        value.key = key;
        await isar.playerSettings.put(value);
      } else {
        final keyValue = KeyValue()..key = key..value = value;
        await isar.keyValues.put(keyValue);
      }
    });
  }
  static void _checkInitialization() {
    if (_generalPreferences == null) {
      throw Exception(
          'Preferences not initialized. Call PrefManager2.init() first.',);
    }
  }

  static Completer<Isar>? _getPrefBox(Location location) {
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
