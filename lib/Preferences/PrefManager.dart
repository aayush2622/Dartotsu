import 'package:dantotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dantotsu/Preferences/IsarDataClasses/Selected/Selected.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../StorageProvider.dart';
import 'IsarDataClasses/MalToken/MalToken.dart';
import 'IsarDataClasses/ShowResponse/ShowResponse.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref)=> PrefManager.getVal(pref);

T? loadCustomData<T>(String key)=> PrefManager.getCustomVal(key);

void saveData<T>(Pref<T> pref, T value)=> PrefManager.setVal(pref, value);

void saveCustomData<T>(String key, T value)=> PrefManager.setCustomVal(key, value);

void removeData(Pref<dynamic> pref)=> PrefManager.removeVal(pref);

void removeCustomData(String key)=> PrefManager.removeCustomVal(key);
Rx<T?> loadLiveCustomData<T>(String key)=> PrefManager.getLiveCustomVal(key);

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
  static Box? _generalPreferences;
  static Box? _uiPreferences;
  static Box? _playerPreferences;
  static Box? _readerPreferences;
  static Box? _irrelevantPreferences;
  static Box? _protectedPreferences;

  // Call this method at the start of the app
  static Future<void> init() async {
    _hiveAdapters;
    if (_generalPreferences != null) return;
    final path = await StorageProvider().getDirectory(subPath: 'preferences');
    await Hive.initFlutter(path?.path);
    _generalPreferences = await Hive.openBox('generalPreferences');
    _uiPreferences = await Hive.openBox('uiPreferences');
    _playerPreferences = await Hive.openBox('playerPreferences');
    _readerPreferences = await Hive.openBox('readerPreferences');
    _irrelevantPreferences = await Hive.openBox('irrelevantPreferences');
    _protectedPreferences = await Hive.openBox('protectedPreferences');
  }

  static void _hiveAdapters() {
    Hive.registerAdapter(ShowResponseAdapter());
    Hive.registerAdapter(SelectedAdapter());
    Hive.registerAdapter(ResponseTokenAdapter());
    Hive.registerAdapter(PlayerSettingsAdapter());
  }

  static void setVal<T>(Pref<T> pref, T value) {
    _checkInitialization();
    final box = _getPrefBox(pref.location);
    box.put(pref.key, value);
  }

  static T getVal<T>(Pref<T> pref) {
    _checkInitialization();
    final box = _getPrefBox(pref.location);
    final value = box.get(pref.key, defaultValue: pref.defaultValue);
    if (value is T) {
      return value;
    } else if (value is Map) {
      if (T == Map<String, bool>) {
        return Map<String, bool>.from(value) as T;
      }
    }
    return pref.defaultValue;
  }


  static void setCustomVal<T>(String key, T value) {
    _checkInitialization();
    final box = _getPrefBox(Location.Irrelevant);
    box.put(key, value);
  }

  static T? getCustomVal<T>(String key) {
    _checkInitialization();
    final box = _getPrefBox(Location.Irrelevant);
    final value = box.get(key);
    if (value is T) {
      return value;
    } else if (value is Map) {
      if (T == Map<String, bool>) {
        return Map<String, bool>.from(value) as T;
      }
      if (T == Map<String, String>) {
        return Map<String, String>.from(value) as T;
      }
    }
    return null;
  }

  static void removeVal(Pref<dynamic> pref) {
    _checkInitialization();
    final box = _getPrefBox(pref.location);
    box.delete(pref.key);
  }
  static void removeCustomVal(String key) {
    _checkInitialization();
    final box = _getPrefBox(Location.Irrelevant);
    box.delete(key);
  }
  static Rx<T?> getLiveCustomVal<T>(String key) {
    _checkInitialization();
    final box = _getPrefBox(Location.Irrelevant);
    final value = getCustomVal<T>(key);
    final observable = Rx<T?>(value);


    box.listenable(keys: [key]).addListener(() {
      final value = getCustomVal<T>(key);
      observable.value = value;
    });
    return observable;
  }

  static void _checkInitialization() {
    if (_generalPreferences == null) {
      throw Exception('Hive not initialized. Call PrefManager.init() first.');
    }
  }

  static Box _getPrefBox(Location location) {
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
