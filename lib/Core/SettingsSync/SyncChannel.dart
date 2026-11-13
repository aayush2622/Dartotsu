import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart' show compute;

import '../Preferences/IsarDataClasses/KeyValue/KeyValues.dart';
import '../Preferences/PrefManager.dart';
import 'SettingsMerge.dart';

class RemoteFile {
  final Map<String, SyncEntry> entries;
  final int at;
  final String device;
  final String platform;
  final bool stale;

  const RemoteFile(
    this.entries,
    this.at,
    this.device,
    this.platform, {
    this.stale = false,
  });

  static const empty = RemoteFile({}, 0, '', '');
}

class SyncChannel {
  final String file;
  final String stampsKey;
  final bool Function() active;
  final bool Function(String key) syncable;
  final bool Function(String key) includes;
  final Map<String, dynamic> Function(String key, Map<String, dynamic> json)
  strip;
  final KeyValue Function(String key, Map<String, dynamic> json) restore;
  final Combine? combine;
  final bool secret;
  final Future<String> Function(String plain)? seal;
  final Future<String> Function(String sealed)? unseal;
  final Duration delay;
  final bool throttle;
  final void Function() applied;

  SyncChannel({
    required this.file,
    required this.stampsKey,
    required this.active,
    required this.syncable,
    required this.includes,
    required this.strip,
    required this.restore,
    required this.delay,
    this.combine,
    this.secret = false,
    this.seal,
    this.unseal,
    this.throttle = false,
    this.applied = _none,
  });

  static void _none() {}

  Map<String, int> stamps = {};
  Timer? timer;
  Timer? _saveTimer;

  static const _stampSaveDelay = Duration(seconds: 2);
  static const _isolateFrom = 200;

  void load() {
    final stored = loadCustomData<String>(stampsKey);
    if (stored == null) return;
    stamps = (jsonDecode(stored) as Map).cast<String, int>()
      ..removeWhere((key, _) => !syncable(key));
  }

  void save() {
    _saveTimer?.cancel();
    _saveTimer = null;
    saveCustomData(stampsKey, jsonEncode(stamps));
  }

  void flush() {
    if (_saveTimer != null) save();
  }

  void stamp(String key) {
    stamps[key] = DateTime.now().millisecondsSinceEpoch;
    _saveTimer ??= Timer(_stampSaveDelay, save);
  }

  static bool _blank(Map<String, dynamic> json) => json['value'] == '';

  Map<String, SyncEntry> local([Iterable<KeyValue>? scanned]) {
    final result = <String, SyncEntry>{};
    for (final kv in scanned ?? PrefManager.allEntries()) {
      if (!includes(kv.key)) continue;
      final json = strip(kv.key, kv.toJson());
      result[kv.key] = SyncEntry(
        stamps[kv.key] ?? 0,
        secret && _blank(json) ? null : json,
      );
    }
    for (final e in stamps.entries) {
      if (result.containsKey(e.key) || !includes(e.key)) continue;
      result[e.key] = SyncEntry(e.value, null);
    }
    return result;
  }

  RemoteFile decode(String raw) => _fromRoot(_parse(raw));

  RemoteFile _fromRoot(Map<String, dynamic> root) {
    if (root['app'] != 'Dartotsu') {
      throw const FormatException('Not a Dartotsu settings file');
    }
    final entries = (root['entries'] as Map).cast<String, dynamic>();
    var stale = false;
    final kept = <String, SyncEntry>{};
    for (final e in entries.entries) {
      if (!syncable(e.key)) {
        stale = true;
        continue;
      }
      final entry = SyncEntry.fromJson(
        (e.value as Map).cast<String, dynamic>(),
      );
      var json = entry.json == null ? null : strip(e.key, entry.json!);
      if (secret && json != null && _blank(json)) json = null;
      if (json != null && jsonEncode(json) != jsonEncode(entry.json)) {
        stale = true;
      }
      kept[e.key] = SyncEntry(entry.stamp, json);
    }
    return RemoteFile(
      kept,
      root['at'] as int? ?? 0,
      root['device'] as String? ?? '',
      root['platform'] as String? ?? '',
      stale: stale,
    );
  }

  Future<RemoteFile> decodeAsync(String raw) async {
    final text = unseal == null ? raw : await unseal!(raw);
    final root = text.length > _isolateFrom * 256
        ? await compute(_parse, text)
        : _parse(text);
    return _fromRoot(root);
  }

  Future<String> encodeAsync(
    Map<String, SyncEntry> entries,
    int at,
    String device,
  ) async {
    final root = _root(entries, at, device);
    final plain = entries.length > _isolateFrom
        ? await compute(_encodeRoot, root)
        : jsonEncode(root);
    return seal == null ? plain : seal!(plain);
  }

  String encode(Map<String, SyncEntry> entries, int at, String device) =>
      jsonEncode(_root(entries, at, device));

  Map<String, dynamic> _root(
    Map<String, SyncEntry> entries,
    int at,
    String device,
  ) => {
    'app': 'Dartotsu',
    'device': device,
    'platform': Platform.operatingSystem,
    'at': at,
    'entries': {for (final e in entries.entries) e.key: e.value.toJson()},
  };
}

Map<String, dynamic> _parse(String raw) =>
    jsonDecode(raw) as Map<String, dynamic>;

String _encodeRoot(Map<String, dynamic> root) => jsonEncode(root);
