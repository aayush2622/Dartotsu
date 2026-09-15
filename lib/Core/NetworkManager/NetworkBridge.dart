import 'dart:convert';

import 'package:dartotsu_extension_bridge/ExtensionBridge.dart';

import 'CookieManager.dart';
import 'NetworkManager.dart';

class AppBridgeNetwork implements BridgeNetwork {
  final CookieManager cookieManager;
  final NetworkManager networkManager;

  AppBridgeNetwork(this.cookieManager, this.networkManager);

  @override
  String? get dns => networkManager.dnsUrl;

  @override
  String? get proxy => networkManager.proxyUrl;

  @override
  String? get userAgent => networkManager.userAgent;

  @override
  Future<String?> getCookies(String url) async {
    final cookies = cookieManager.getValidCookies(Uri.parse(url));

    if (cookies.isEmpty) {
      return null;
    }

    return jsonEncode(cookies.map((c) => c.toJson()).toList());
  }

  @override
  Future<void> setCookies(String url, List<String> cookies) async {
    final uri = Uri.parse(url);

    final parsed = <StoredCookie>[];

    for (final header in cookies) {
      final cookie = cookieManager.parseSingleCookie(header, uri);

      if (cookie != null) {
        parsed.add(cookie);
      }
    }

    cookieManager.setCookies(parsed);
  }
}
