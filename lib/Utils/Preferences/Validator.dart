import 'dart:convert';
import 'package:crypto/crypto.dart';

class Validator {
  static Map<String, dynamic> wrap(Map<String, dynamic> data) {
    final payload = jsonEncode(data);
    return {
      '_meta': {
        'app': 'Dartotsu',
        'schema': 1,
        'checksum': sha256.convert(utf8.encode(payload)).toString(),
      },
      ...data,
    };
  }

  static void validate(Map<String, dynamic> json) {
    final meta = json['_meta'];
    if (meta == null || meta['app'] != 'Dartotsu') {
      throw Exception('Invalid backup');
    }

    final copy = Map.of(json)..remove('_meta');
    final checksum = sha256.convert(utf8.encode(jsonEncode(copy))).toString();

    if (checksum != meta['checksum']) {
      throw Exception('Backup corrupted');
    }
  }
}
