import 'package:flutter/services.dart';

import '../../Logger.dart';

const _channel = MethodChannel('dartotsu/content');

Future<String?> copyContentToCache(String uri) async {
  try {
    return await _channel.invokeMethod<String>('copyToCache', {'uri': uri});
  } catch (e) {
    logger(
      'Could not copy $uri: $e',
      tag: 'STORAGE',
      logLevel: LogLevel.warning,
    );
    return null;
  }
}
