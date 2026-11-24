import 'dart:io';

import 'package:flutter/services.dart';

const _channel = MethodChannel('dartotsu/orientation');

Future<bool> _native(String method) async {
  if (!Platform.isAndroid) return false;
  return _channel
      .invokeMethod<bool>(method)
      .then<bool>((done) => done ?? false, onError: (Object _) => false);
}

Future<void> lockLandscape() async {
  if (await _native('sensorLandscape')) return;
  await SystemChrome.setPreferredOrientations(const [
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
}

Future<void> followGravity() async {
  if (await _native('sensorAll')) return;
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
}
