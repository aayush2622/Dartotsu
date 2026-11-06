import 'package:flutter/services.dart';

const _channel = MethodChannel('dartotsu/content');

Future<String?> copyContentToCache(String uri) async {
  try {
    return await _channel.invokeMethod<String>('copyToCache', {'uri': uri});
  } catch (_) {
    return null;
  }
}
