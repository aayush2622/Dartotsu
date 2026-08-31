import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Wraps a backup payload with an integrity envelope and verifies it on restore.
class Validator {
  Validator._();

  static Map<String, dynamic> wrap(Map<String, dynamic> data) {
    return {
      '_meta': {
        'app': 'Dartotsu',
        'schema': 1,
        'checksum': _checksum(data),
      },
      ...data,
    };
  }

  static void validate(Map<String, dynamic> json) {
    final meta = json['_meta'];
    if (meta == null || meta['app'] != 'Dartotsu') {
      throw Exception('Invalid backup');
    }

    final body = Map.of(json)..remove('_meta');
    if (_checksum(body) != meta['checksum']) {
      throw Exception('Backup corrupted');
    }
  }

  /// SHA-256 over a canonical (recursively key-sorted) JSON encoding so a
  /// round-trip through a file that reorders keys still verifies.
  static String _checksum(Object? value) {
    return sha256.convert(utf8.encode(jsonEncode(_canonical(value)))).toString();
  }

  static Object? _canonical(Object? value) {
    if (value is Map) {
      final keys = value.keys.map((k) => k.toString()).toList()..sort();
      return {for (final k in keys) k: _canonical(value[k])};
    }
    if (value is List) {
      return value.map(_canonical).toList();
    }
    return value;
  }
}
