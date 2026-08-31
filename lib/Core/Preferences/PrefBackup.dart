import 'dart:convert';

import 'Encryptor.dart';
import 'IsarDataClasses/KeyValue/KeyValues.dart';
import 'PrefManager.dart';
import 'Validator.dart';

/// Encrypted export / import of stored preferences, grouped by [PrefLocation].
class PrefBackup {
  PrefBackup._();

  static Future<Map<String, dynamic>> export({
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final selected = locations ?? PrefLocation.values.toSet();

    final result = <String, Map<String, dynamic>>{};

    for (final kv in PrefManager.allEntries()) {
      if (!selected.contains(kv.location)) continue;
      (result[kv.location.name] ??= {})[kv.key] = kv.toJson();
    }

    return Crypto.encrypt(
      jsonEncode(Validator.wrap(result)),
      password: password,
    );
  }

  static Future<void> restore({
    required Map<String, dynamic> json,
    Set<PrefLocation>? locations,
    String? password,
  }) async {
    final decrypted = await Crypto.decrypt(json, password: password);
    Validator.validate(decrypted);

    final selected = locations ?? PrefLocation.values.toSet();
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
        entries.add(KeyValue.fromJson(value as Map<String, dynamic>));
      }
    }

    await PrefManager.putEntries(entries);
  }
}
