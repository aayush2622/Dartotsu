import 'dart:convert';
import 'dart:io';

import 'package:dartotsu_extension_bridge/Settings/KvStore.dart';
import 'package:path/path.dart' as p;

import 'Encryptor.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'PrefManager.dart';
import 'Validator.dart';

/// Encrypted export / import of stored preferences, grouped by [PrefLocation].
class PrefBackup {
  PrefBackup._();

  static const _bridgePrefix = 'bridge.';
  static final _bridgeKey = RegExp(r'(Repos|ActiveRepo|Languages|Manager)$');

  static List<KeyValue> _bridgeEntries() {
    final out = <KeyValue>[];
    KvStore.entriesWithPrefix('').forEach((key, value) {
      if (!_bridgeKey.hasMatch(key)) return;
      if (value is! String && value is! List<String> && value is! List) return;
      try {
        out.add(
          KeyValue()
            ..key = '${PrefLocation.OTHER.name}/$_bridgePrefix$key'
            ..value = value is List ? List<String>.from(value) : value,
        );
      } catch (_) {}
    });
    return out;
  }

  static List<KeyValue> _all() => [
    ...PrefManager.allEntries(),
    ..._bridgeEntries(),
  ];

  static Map<PrefLocation, List<String>> currentKeys() {
    final result = <PrefLocation, List<String>>{};
    for (final kv in _all()) {
      if (kv.location == PrefLocation.CACHE || isInternal(kv.key)) continue;
      (result[kv.location] ??= []).add(_name(kv.key));
    }
    for (final keys in result.values) {
      keys.sort();
    }
    return result;
  }

  static Future<Map<String, dynamic>> export({
    Set<PrefLocation>? locations,
    String? password,
    Map<String, dynamic> info = const {},
  }) async {
    final selected = _backable(locations);
    if (selected.contains(PrefLocation.PROTECTED) &&
        (password == null || password.isEmpty)) {
      throw Exception('A password is required to back up account data');
    }

    final result = <String, Map<String, dynamic>>{};

    for (final kv in _all()) {
      if (!selected.contains(kv.location) || isInternal(kv.key)) continue;
      (result[kv.location.name] ??= {})[kv.key] = kv.toJson();
    }

    final envelope = await Crypto.encrypt(
      jsonEncode(Validator.wrap(result)),
      password: password,
    );
    return {
      ...envelope,
      ...info,
      'keyCount': result.values.fold<int>(0, (n, m) => n + m.length),
      'categories': {for (final e in result.entries) e.key: e.value.length},
    };
  }

  static Future<String> create({
    required String directory,
    required Set<PrefLocation> locations,
    String? password,
    Map<String, String> accounts = const {},
    String? service,
  }) async {
    final data = await export(
      locations: locations,
      password: password,
      info: {'accounts': accounts, 'service': ?service},
    );
    final name =
        'dartotsu_backup_${DateTime.now().millisecondsSinceEpoch}.json';
    await File(p.join(directory, name)).writeAsString(jsonEncode(data));
    PrefName.lastBackupAt.value = DateTime.now().toIso8601String();
    return name;
  }

  static Future<Map<PrefLocation, List<String>>> inspect({
    required Map<String, dynamic> json,
    String? password,
  }) async {
    final decrypted = await Crypto.decrypt(json, password: password);
    Validator.validate(decrypted);
    final result = <PrefLocation, List<String>>{};
    for (final section in decrypted.entries) {
      if (section.key == '_meta') continue;
      final location = PrefLocation.values.firstWhere(
        (e) => e.name == section.key,
        orElse: () => PrefLocation.OTHER,
      );
      final values = (section.value as Map).cast<String, dynamic>();
      if (location == PrefLocation.CACHE) continue;
      result[location] = [
        for (final k in values.keys)
          if (!isInternal(k)) _name(k),
      ]..sort();
    }
    return result;
  }

  static Set<PrefLocation> _backable(Set<PrefLocation>? locations) =>
      {...(locations ?? PrefLocation.values)}..remove(PrefLocation.CACHE);

  static bool isInternal(String storageKey) =>
      _name(storageKey).startsWith('__');

  static String _name(String storageKey) => storageKey.contains('/')
      ? storageKey.substring(storageKey.indexOf('/') + 1)
      : storageKey;

  static Future<void> restore({
    required Map<String, dynamic> json,
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final decrypted = await Crypto.decrypt(json, password: password);
    Validator.validate(decrypted);

    final selected = _backable(locations);
    if (json['passwordType'] == 'default') {
      selected.remove(PrefLocation.PROTECTED);
    }
    final entries = <KeyValue>[];

    for (final section in decrypted.entries) {
      if (section.key == '_meta') continue;

      final location = PrefLocation.values.firstWhere(
        (e) => e.name == section.key,
        orElse: () => PrefLocation.OTHER,
      );
      if (!selected.contains(location)) continue;

      final values = (section.value as Map).cast<String, dynamic>();
      for (final value in values.values) {
        final entry = KeyValue.fromJson(value as Map<String, dynamic>);
        entry.key = PrefManager.renamed(entry.key);
        if (!isInternal(entry.key)) entries.add(entry);
      }
    }

    final bridge = <KeyValue>[];
    entries.removeWhere((e) {
      final isBridge = _name(e.key).startsWith(_bridgePrefix);
      if (isBridge) bridge.add(e);
      return isBridge;
    });
    await PrefManager.putEntries(entries);
    for (final e in bridge) {
      await KvStore.set(_name(e.key).substring(_bridgePrefix.length), e.value);
    }
  }
}
