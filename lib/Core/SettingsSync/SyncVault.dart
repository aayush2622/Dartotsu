import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/foundation.dart';

class WrongPassphrase implements Exception {
  const WrongPassphrase();

  @override
  String toString() => 'The sync passphrase does not match';
}

Future<List<int>> _derive(({String pass, List<int> salt}) args) async {
  final key = await Pbkdf2(
    macAlgorithm: Hmac.sha256(),
    iterations: 150000,
    bits: 256,
  ).deriveKey(secretKey: SecretKey(utf8.encode(args.pass)), nonce: args.salt);
  return key.extractBytes();
}

class SyncVault {
  SyncVault._();

  static final _algo = AesGcm.with256bits();
  static final _random = Random.secure();

  static String? _cachedPass;
  static String? _cachedSalt;
  static SecretKey? _cachedKey;

  static Uint8List _bytes(int length) => Uint8List.fromList([
    for (var i = 0; i < length; i++) _random.nextInt(256),
  ]);

  static Future<SecretKey> _key(String pass, List<int> salt) async {
    final saltText = base64Encode(salt);
    if (_cachedKey != null && _cachedPass == pass && _cachedSalt == saltText) {
      return _cachedKey!;
    }
    final bytes = await compute(_derive, (pass: pass, salt: salt));
    _cachedPass = pass;
    _cachedSalt = saltText;
    return _cachedKey = SecretKey(bytes);
  }

  static void forget() {
    _cachedPass = null;
    _cachedSalt = null;
    _cachedKey = null;
  }

  static Future<String> seal(String plain, String pass) async {
    final salt = _cachedPass == pass && _cachedSalt != null
        ? base64Decode(_cachedSalt!)
        : _bytes(16);
    final key = await _key(pass, salt);
    final nonce = _bytes(12);
    final box = await _algo.encrypt(
      utf8.encode(plain),
      secretKey: key,
      nonce: nonce,
    );
    return jsonEncode({
      'app': 'Dartotsu',
      'vault': 1,
      'salt': base64Encode(salt),
      'nonce': base64Encode(nonce),
      'ct': base64Encode(box.cipherText),
      'mac': base64Encode(box.mac.bytes),
    });
  }

  static Future<String> open(String envelope, String pass) async {
    final json = jsonDecode(envelope) as Map<String, dynamic>;
    if (json['vault'] != 1) throw const FormatException('Not a sync vault');
    final key = await _key(pass, base64Decode(json['salt'] as String));
    try {
      final plain = await _algo.decrypt(
        SecretBox(
          base64Decode(json['ct'] as String),
          nonce: base64Decode(json['nonce'] as String),
          mac: Mac(base64Decode(json['mac'] as String)),
        ),
        secretKey: key,
      );
      return utf8.decode(plain);
    } on SecretBoxAuthenticationError {
      throw const WrongPassphrase();
    }
  }
}
