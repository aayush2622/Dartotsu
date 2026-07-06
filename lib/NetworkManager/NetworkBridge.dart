import 'package:dartotsu_extension_bridge/ExtensionBridge.dart';

import 'CookieManager.dart';
import 'DnsManager.dart';

class AppBridgeNetwork implements BridgeNetwork {
  final CookieManager cookieManager;

  AppBridgeNetwork(this.cookieManager);

  @override
  String? get dns => DohProvider.cloudflare.url;

  @override
  String? get proxy => null;

  @override
  Future<String?> getCookies(String url) async {
    final cookies = cookieManager.getValidCookies(Uri.parse(url));

    if (cookies.isEmpty) {
      return null;
    }

    return cookies.map((c) => '${c.name}=${c.value}').join('; ');
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
