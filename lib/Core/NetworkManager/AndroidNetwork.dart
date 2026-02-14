import 'dart:io';

import 'package:flutter/services.dart';

import '../../Utils/Functions/GetXFunctions.dart';
import 'CookieManager.dart';
import 'NetworkManager.dart';

class AndroidNetwork {
  static const MethodChannel _channel = MethodChannel('network_bridge');

  static Future<void> initialize(String dns, String proxy) async {
    if (!Platform.isAndroid) return;
    await _channel.invokeMethod('initClient', {
      'dns': dns,
    });

    _channel.setMethodCallHandler((call) async {
      var client = find<NetworkManager>().cookieManager;
      switch (call.method) {
        case 'getCookies':
          final url = Uri.parse(call.arguments as String);
          final cookies = client.getValidCookies(url);
          return {
            for (final c in cookies) c.name: c.value,
          };

        case 'setCookies':
          final url = Uri.parse(call.arguments['url']);
          final headers = List<String>.from(call.arguments["cookies"]);

          final parsed = <StoredCookie>[];
          for (final h in headers) {
            final c = StoredCookie.parse(h, url.host);
            if (c != null) parsed.add(c);
          }
          if (parsed.isNotEmpty) client.setCookies(parsed);
          return null;
      }
    });
  }
}
