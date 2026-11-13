import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

String randomToken(int length) {
  final random = Random.secure();
  return base64UrlEncode(List<int>.generate(length, (_) => random.nextInt(256)))
      .replaceAll('=', '')
      .substring(0, length);
}

String pkceChallenge(String verifier) =>
    base64UrlEncode(sha256.convert(utf8.encode(verifier)).bytes)
        .replaceAll('=', '');
