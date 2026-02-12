import 'dart:io';

import 'package:flutter/services.dart';

class AndroidNetwork {
  static const MethodChannel _channel = MethodChannel('network_bridge');

  static Future<void> initialize(String dns, String proxy) async {
    if (!Platform.isAndroid) return;
    await _channel.invokeMethod('initClient', {
      'dns': dns,
    });
  }
}
