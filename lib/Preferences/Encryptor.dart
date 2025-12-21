import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'dart:io';
import 'package:cryptography/cryptography.dart';

class Crypto {
  static final _algo = AesGcm.with256bits();
  static final _secureRandom = Random.secure();
  static Future<Map<String, dynamic>> encrypt(
    String plaintext, {
    String? password,
  }) async {
    final compressed = gzip.encode(utf8.encode(plaintext));

    final compressedBase64 = base64Encode(compressed);

    final salt = _randomBytes(16);
    final nonce = _randomBytes(12);

    final key = await Pbkdf2(
      macAlgorithm: Hmac.sha256(),
      iterations: 100000,
      bits: 256,
    ).deriveKey(
      secretKey: SecretKey(utf8.encode(password ?? 'dartotsu')),
      nonce: salt,
    );

    final encrypted = await _algo.encrypt(
      utf8.encode(compressedBase64),
      secretKey: key,
      nonce: nonce,
    );

    return {
      'version': 1,
      'salt': base64Encode(salt),
      'nonce': base64Encode(nonce),
      'cipherText': base64Encode(encrypted.cipherText),
      'mac': base64Encode(encrypted.mac.bytes),
      'compression': 'gzip',
      'encoding': 'utf8',
      'password_hint': password != 'dartotsu' ? 'custom' : 'default',
    };
  }

  static Future<String> decrypt(
    Map<String, dynamic> json, {
    String? password,
  }) async {
    if (json['version'] != 1) {
      throw Exception('Unsupported backup version');
    }
    final salt = base64Decode(json['salt']);
    final nonce = base64Decode(json['nonce']);

    final key = await Pbkdf2(
      macAlgorithm: Hmac.sha256(),
      iterations: 100000,
      bits: 256,
    ).deriveKey(
      secretKey: SecretKey(utf8.encode(password ?? 'dartotsu')),
      nonce: salt,
    );

    final secretBox = SecretBox(
      base64Decode(json['cipherText']),
      nonce: nonce,
      mac: Mac(base64Decode(json['mac'])),
    );

    final decryptedBytes = await _algo.decrypt(
      secretBox,
      secretKey: key,
    );

    final compressedBytes = base64Decode(utf8.decode(decryptedBytes));

    final jsonBytes = gzip.decode(compressedBytes);

    return utf8.decode(jsonBytes);
  }

  static Uint8List _randomBytes(int length) {
    final bytes = Uint8List(length);
    for (int i = 0; i < length; i++) {
      bytes[i] = _secureRandom.nextInt(256);
    }
    return bytes;
  }
}
