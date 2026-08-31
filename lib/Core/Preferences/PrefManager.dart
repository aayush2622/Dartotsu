import 'dart:convert';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:isar_community/isar.dart';

import '../../Logger.dart';
import 'Encryptor.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'StorageManager.dart';
import 'Validator.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal(pref);

T? loadCustomData<T>(String key, {T? defaultValue}) =>
    PrefManager.getCustomVal(key, defaultValue: defaultValue);

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal(pref, value);

void saveCustomData<T>(String key, T value) =>
    PrefManager.setCustomVal(key, value);

void removeData(Pref<dynamic> pref) => PrefManager.removeVal(pref);

void removeCustomData(String key) => PrefManager.removeCustomVal(key);

class Pref<T> {
  final String key;
  final T defaultValue;
  final PrefLocation location;

  const Pref(this.key, this.defaultValue, this.location);
}

enum PrefLocation { THEME, COMMON, PLAYER, READER, PROTECTED, OTHER }

class PrefManager {
  PrefManager._();

  static late Isar dartotsuPreferences;

  static IsarCollection<KeyValue> get _keyValues =>
      dartotsuPreferences.keyValues;

  static final Map<String, Object?> _cache = {};

  static final Map<String, PrefLocation> _locationMap = {
    for (final e in PrefLocation.values) e.name: e,
  };

  static String _cacheKey(String key, PrefLocation location) =>
      '$key|${location.index}';

  static Future<void> init() async {
    try {
      final path = await StorageManager.getDirectory(subPath: 'settings');

      dartotsuPreferences = await _open('DartotsuSettings', path!.path);

      await deleteAllStoredPreferences();
    } catch (e) {
      logger('Error initializing preferences: $e');
    }
  }

  static Future<Isar> _open(String name, String directory) {
    return Isar.open(
      [KeyValueSchema, ...DartotsuExtensionBridge.isarSchema],
      directory: directory,
      name: name,
      inspector: false,
    );
  }

  static KeyValue? _find(String key, PrefLocation location) {
    return _keyValues
        .where()
        .filter()
        .keyEqualTo(key)
        .locationEqualTo(location)
        .findFirstSync();
  }

  static T getVal<T>(Pref<T> pref) =>
      _getFromIsarSync(pref.key, pref.location) ?? pref.defaultValue;

  static T? getCustomVal<T>(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
    T? defaultValue,
  }) {
    return _getFromIsarSync(key, location) ?? defaultValue;
  }

  static T? getCustomType<T>(
    String key,
    T Function(Map<String, dynamic>) fromJson, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    final map = getCustomVal<Map<String, dynamic>>(key, location: location);

    if (map == null) {
      return null;
    }

    return fromJson(map);
  }

  static void setVal<T>(Pref<T> pref, T value) {
    _writeToIsar(pref.key, value, pref.location);
  }

  static void setCustomVal<T>(
    String key,
    T value, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    _writeToIsar(key, value, location);
  }

  static void setCustomType<T>(
    String key,
    T value,
    Map<String, dynamic> Function(T) toJson, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    setCustomVal<Map<String, dynamic>>(key, toJson(value), location: location);
  }

  static void removeVal(Pref<dynamic> pref) {
    _removeFromIsar(pref.key, pref.location);
  }

  static void removeCustomVal(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    _removeFromIsar(key, location);
  }

  static T? _getFromIsarSync<T>(String key, PrefLocation location) {
    final cacheKey = _cacheKey(key, location);

    if (_cache.containsKey(cacheKey)) {
      return _cache[cacheKey] as T?;
    }

    final kv = _find(key, location);

    final value = kv?.value;

    if (value != null) {
      _cache[cacheKey] = value;
    }

    return value as T?;
  }

  static void _writeToIsar<T>(String key, T value, PrefLocation location) {
    final cacheKey = _cacheKey(key, location);

    dartotsuPreferences.writeTxnSync(() {
      final existing = _find(key, location);

      if (existing != null) {
        if (existing.value == value) {
          return;
        }

        existing.value = value;
        _keyValues.putSync(existing);
      } else {
        _keyValues.putSync(
          KeyValue()
            ..key = key
            ..location = location
            ..value = value,
        );
      }

      _cache[cacheKey] = value;
    });
  }

  static Future<void> _removeFromIsar(String key, PrefLocation location) async {
    final cacheKey = _cacheKey(key, location);

    await dartotsuPreferences.writeTxn(() async {
      final existing = _find(key, location);

      if (existing != null) {
        await _keyValues.delete(existing.id);
      }
    });

    _cache.remove(cacheKey);
  }

  static Future<void> deleteAllStoredPreferences() async {
    if (!(getCustomVal<bool>("cleanSettings") ?? true)) {
      return;
    }

    await dartotsuPreferences.writeTxn(() async {
      await _keyValues.clear();
    });

    _cache.clear();

    setCustomVal("cleanSettings", false);
  }

  static Future<void> restoreBackup({
    required Map<String, dynamic> json,
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final decrypted = await Crypto.decrypt(json, password: password);

    Validator.validate(decrypted);

    final selected = locations ?? PrefLocation.values.toSet();

    final kvList = <KeyValue>[];

    for (final section in decrypted.entries) {
      if (section.key == "_meta") {
        continue;
      }

      final location = _locationMap[section.key] ?? PrefLocation.OTHER;

      if (!selected.contains(location)) {
        continue;
      }

      final values = (section.value as Map).cast<String, dynamic>();

      for (final value in values.values) {
        kvList.add(KeyValue.fromJson(value as Map<String, dynamic>));
      }
    }

    await dartotsuPreferences.writeTxn(() async {
      if (kvList.isNotEmpty) {
        await _keyValues.putAll(kvList);
      }
    });

    _cache.clear();

    for (final kv in kvList) {
      _cache[_cacheKey(kv.key, kv.location)] = kv.value;
    }
  }

  static Future<Map<String, dynamic>> exportBackup({
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final selected = locations ?? PrefLocation.values.toSet();

    final result = <String, Map<String, dynamic>>{};

    for (final location in selected) {
      result[location.name] = {};
    }

    final all = await _keyValues.where().findAll();

    for (final kv in all) {
      if (!selected.contains(kv.location)) {
        continue;
      }

      result[kv.location.name]![kv.key] = kv.toJson();
    }

    result.removeWhere((_, value) => value.isEmpty);

    return Crypto.encrypt(
      jsonEncode(Validator.wrap(result)),
      password: password,
    );
  }
}
