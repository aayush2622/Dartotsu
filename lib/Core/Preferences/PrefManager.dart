import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

import '../../Logger.dart';
import '../ThemeManager/ThemeMode.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'Pref.dart';
import 'StorageManager.dart';

export 'Pref.dart' show Pref, PrefLocation, enumPref, jsonPref;

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal(pref);

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal(pref, value);

void removeData(Pref<dynamic> pref) => PrefManager.removeVal(pref);

T? loadCustomData<T>(
  String key, {
  T? defaultValue,
  PrefLocation location = PrefLocation.OTHER,
}) => PrefManager.getCustomVal<T>(
  key,
  defaultValue: defaultValue,
  location: location,
);

void saveCustomData<T>(
  String key,
  T value, {
  PrefLocation location = PrefLocation.OTHER,
}) => PrefManager.setCustomVal<T>(key, value, location: location);

void removeCustomData(
  String key, {
  PrefLocation location = PrefLocation.OTHER,
}) => PrefManager.removeCustomVal(key, location: location);

class _Pending {
  final Object? raw;
  final bool delete;
  const _Pending(this.raw, {this.delete = false});
}

/// Isar-backed typed key-value store with a synchronous in-memory cache, a
/// shared reactive layer ([Pref.rx]) and microtask-batched writes so callers
/// never block on disk.
class PrefManager {
  PrefManager._();

  static late Isar dartotsuPreferences;

  static IsarCollection<KeyValue> get _kv => dartotsuPreferences.keyValues;

  /// Bump when the on-disk shape changes; triggers a one-time wipe.
  static const _schemaVersion = 2;
  static const _schemaVersionKey = 'OTHER/__prefSchemaVersion';

  static final Map<String, Object?> _cache = {};
  static final Map<String, Rx<dynamic>> _rx = {};
  static final Map<String, _Pending> _pending = {};
  static bool _flushScheduled = false;
  static Future<void> init() async {
    try {
      final path = await StorageManager.getDirectory(subPath: 'settings');
      dartotsuPreferences = await _open('DartotsuSettings', path!.path);
      _migrate();
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

  static void _migrate() {
    final current = _kv.getByKeySync(_schemaVersionKey)?.value as int?;
    if (current == _schemaVersion) return;

    dartotsuPreferences.writeTxnSync(() {
      _kv.clearSync();
      _kv.putByKeySync(
        KeyValue()
          ..key = _schemaVersionKey
          ..value = _schemaVersion,
      );
    });
    _cache.clear();
  }

  /// Wipes every stored preference. Intended for an explicit "reset settings"
  /// action — a restart is expected afterwards.
  static Future<void> resetAll() async {
    await dartotsuPreferences.writeTxn(() => _kv.clear());
    _cache.clear();
    _pending.clear();
    _rx.clear();
  }

  /// Force any queued writes to disk now (call on app pause / shutdown).
  static void flush() {
    if (_pending.isNotEmpty) _flushPending();
  }

  static T getVal<T>(Pref<T> pref) {
    final raw = _readRaw(pref.storageKey);
    if (raw == null) return pref.defaultValue;
    final decode = pref.decode;
    return decode != null ? decode(raw) : raw as T;
  }

  static void setVal<T>(Pref<T> pref, T value) {
    final raw = pref.encode != null ? pref.encode!(value) : value;
    _writeRaw(pref.storageKey, raw);

    final rx = _rx[pref.storageKey];
    if (rx is Rx<T> && rx.value != value) rx.value = value;
  }

  static void removeVal<T>(Pref<T> pref) {
    _cache[pref.storageKey] = null;
    _enqueue(pref.storageKey, null, delete: true);

    final rx = _rx[pref.storageKey];
    if (rx is Rx<T>) rx.value = pref.defaultValue;
  }

  /// Shared [Rx] for [pref]. Assigning to it persists automatically.
  static Rx<T> rxOf<T>(Pref<T> pref) {
    final existing = _rx[pref.storageKey];
    if (existing is Rx<T>) return existing;

    final rx = getVal(pref).obs;
    _rx[pref.storageKey] = rx;
    ever<T>(rx, (v) => setVal(pref, v));
    return rx;
  }

  static T? getCustomVal<T>(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
    T? defaultValue,
  }) {
    return _readRaw('${location.name}/$key') as T? ?? defaultValue;
  }

  static void setCustomVal<T>(
    String key,
    T value, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    _writeRaw('${location.name}/$key', value);
  }

  static void removeCustomVal(
    String key, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    final storageKey = '${location.name}/$key';
    _cache[storageKey] = null;
    _enqueue(storageKey, null, delete: true);
  }

  static T? getCustomType<T>(
    String key,
    T Function(Map<String, dynamic>) fromJson, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    final map = getCustomVal<Map<String, dynamic>>(key, location: location);
    return map == null ? null : fromJson(map);
  }

  static void setCustomType<T>(
    String key,
    T value,
    Map<String, dynamic> Function(T) toJson, {
    PrefLocation location = PrefLocation.OTHER,
  }) {
    setCustomVal<Map<String, dynamic>>(key, toJson(value), location: location);
  }

  static List<KeyValue> allEntries() => _kv.where().findAllSync();

  static Future<void> putEntries(List<KeyValue> entries) async {
    if (entries.isEmpty) return;
    await dartotsuPreferences.writeTxn(() async {
      for (final e in entries) {
        await _kv.putByKey(e);
      }
    });
    for (final e in entries) {
      _cache[e.key] = e.value;
    }
  }

  static Object? _readRaw(String storageKey) {
    if (_cache.containsKey(storageKey)) return _cache[storageKey];
    final value = _kv.getByKeySync(storageKey)?.value;
    _cache[storageKey] = value;
    return value;
  }

  static void _writeRaw(String storageKey, Object? raw) {
    if (_cache.containsKey(storageKey) && _cache[storageKey] == raw) return;
    _cache[storageKey] = raw;
    _enqueue(storageKey, raw);
  }

  static void _enqueue(String key, Object? raw, {bool delete = false}) {
    _pending[key] = _Pending(raw, delete: delete);
    if (!_flushScheduled) {
      _flushScheduled = true;
      scheduleMicrotask(_flushPending);
    }
  }

  static void _flushPending() {
    _flushScheduled = false;
    if (_pending.isEmpty) return;

    final batch = Map<String, _Pending>.of(_pending);
    _pending.clear();

    try {
      dartotsuPreferences.writeTxnSync(() {
        for (final entry in batch.entries) {
          if (entry.value.delete) {
            _kv.deleteByKeySync(entry.key);
          } else {
            _kv.putByKeySync(
              KeyValue()
                ..key = entry.key
                ..value = entry.value.raw,
            );
          }
        }
      });
    } catch (e) {
      logger('PrefManager flush failed: $e');
    }
  }
}
