import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    hide isar;
import 'package:isar_community/isar.dart';

import '../../Model/CardStyle.dart';
import '../ThemeManager/ThemeMode.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'Pref.dart';
import 'StorageManager.dart';

export 'Pref.dart' show Pref, PrefLocation, enumPref, jsonPref;
import '../State/State.dart';
import '../../Logger.dart';

part 'Preferences.dart';

T loadData<T>(Pref<T> pref) => PrefManager.getVal(pref);

void saveData<T>(Pref<T> pref, T value) => PrefManager.setVal(pref, value);

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
  static final Map<String, Live<dynamic>> _rx = {};
  static final Map<String, void Function()> _reloadRx = {};
  static final List<void Function()> restoreHooks = [];
  static final Map<String, void Function()> customReloaders = {};
  static final Map<String, _Pending> _pending = {};
  static bool _flushScheduled = false;
  static bool _applying = false;

  static void Function(String storageKey, bool deleted)? onLocalChange;

  static Future<void> init() async {
    try {
      final path = await StorageManager.getDirectory(subPath: 'settings');
      dartotsuPreferences = await _open('DartotsuSettings', path!.path);
      _migrate();
    } catch (e) {
      logger('Error initializing preferences: $e', logLevel: LogLevel.error);
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
    _migrateSchema();
    _moveLegacyCaches();
    _moveSettingsKeys();
  }

  static const _moved = {
    'OTHER/playerSettings': 'PLAYER/playerSettings',
    'OTHER/readerSettings': 'READER/readerSettings',
    'OTHER/playerSoftwareRender': 'PLAYER/playerSoftwareRender',
  };
  static const _settingsMovedKey = 'OTHER/__settingsMoved';

  static String renamed(String storageKey) => _moved[storageKey] ?? storageKey;

  static void _moveSettingsKeys() {
    if (_kv.getByKeySync(_settingsMovedKey) != null) return;
    dartotsuPreferences.writeTxnSync(() {
      for (final e in _moved.entries) {
        final old = _kv.getByKeySync(e.key);
        if (old == null) continue;
        if (_kv.getByKeySync(e.value) == null) {
          _kv.putByKeySync(
            KeyValue()
              ..key = e.value
              ..value = old.value,
          );
        }
        _kv.deleteByKeySync(e.key);
      }
      _kv.putByKeySync(
        KeyValue()
          ..key = _settingsMovedKey
          ..value = true,
      );
    });
  }

  static const _cachesMovedKey = 'OTHER/__cachesMoved';
  static const _legacyCachePrefixes = [
    'OTHER/sections/',
    'OTHER/search_history/',
    'OTHER/banner_',
    'OTHER/anilist_genres',
    'OTHER/anilist_tags_',
    'OTHER/anilistUser',
  ];

  static void _moveLegacyCaches() {
    if (_kv.getByKeySync(_cachesMovedKey) != null) return;
    final stale = [
      for (final kv in _kv.where().findAllSync())
        if (_legacyCachePrefixes.any(kv.key.startsWith)) kv.key,
    ];
    dartotsuPreferences.writeTxnSync(() {
      _kv.deleteAllByKeySync(stale);
      _kv.putByKeySync(
        KeyValue()
          ..key = _cachesMovedKey
          ..value = true,
      );
    });
  }

  static void _migrateSchema() {
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
    if (rx is Live<T> && rx.value != value) rx.value = value;
  }

  static void removeVal<T>(Pref<T> pref) {
    _cache[pref.storageKey] = null;
    _enqueue(pref.storageKey, null, delete: true);
    onLocalChange?.call(pref.storageKey, true);

    final rx = _rx[pref.storageKey];
    if (rx is Live<T>) rx.value = pref.defaultValue;
  }

  /// Shared [Live] for [pref]. Assigning to it persists automatically.
  static Live<T> watch<T>(Pref<T> pref) {
    final existing = _rx[pref.storageKey];
    if (existing is Live<T>) return existing;

    final rx = getVal(pref).live;
    _rx[pref.storageKey] = rx;
    _reloadRx[pref.storageKey] = () {
      final fresh = getVal(pref);
      if (rx.value != fresh) rx.value = fresh;
    };
    onChange(rx, (v) => setVal(pref, v));
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
    onLocalChange?.call(storageKey, true);
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
    for (final e in entries) {
      _reloadRx[e.key]?.call();
      customReloaders[e.key]?.call();
      onLocalChange?.call(e.key, false);
    }
    for (final hook in restoreHooks) {
      try {
        hook();
      } catch (err, st) {
        logError('PrefManager', err, st);
      }
    }
  }

  static void applyRemote(List<KeyValue> upserts, List<String> deletes) {
    if (upserts.isEmpty && deletes.isEmpty) return;
    flush();
    dartotsuPreferences.writeTxnSync(() {
      for (final e in upserts) {
        _kv.putByKeySync(e);
      }
      _kv.deleteAllByKeySync(deletes);
    });
    _applying = true;
    try {
      for (final e in upserts) {
        _cache[e.key] = e.value;
      }
      for (final key in deletes) {
        _cache[key] = null;
      }
      for (final key in [...upserts.map((e) => e.key), ...deletes]) {
        _reloadRx[key]?.call();
        customReloaders[key]?.call();
      }
    } finally {
      _applying = false;
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
    if (_applying) return;
    _enqueue(storageKey, raw);
    onLocalChange?.call(storageKey, false);
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
      logger('PrefManager flush failed: $e', logLevel: LogLevel.error);
    }
  }
}
