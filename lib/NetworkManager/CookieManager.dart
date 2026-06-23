import 'dart:convert';
import 'dart:io';

import 'package:flutter_inappwebview/flutter_inappwebview.dart' as webview;
import 'package:rhttp/rhttp.dart';

import '../Preferences/PrefManager.dart';

class CookieManager extends Interceptor {
  static const _storageKey = 'cookies';

  Map<String, StoredCookie>? _cache;

  Map<String, StoredCookie> _loadAll() {
    if (_cache != null) return _cache!;

    final raw = loadCustomData<String>(_storageKey);

    if (raw == null || raw.isEmpty) {
      _cache = {};

      return _cache!;
    }

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;

      final cookies = decoded.map(
        (k, v) =>
            MapEntry(k, StoredCookie.fromJson(Map<String, dynamic>.from(v))),
      );

      cookies.removeWhere((_, c) => c.isExpired);

      _cache = cookies;

      return cookies;
    } catch (_) {
      _cache = {};

      return _cache!;
    }
  }

  void _saveAll(Map<String, StoredCookie> all) {
    all.removeWhere((_, c) => c.isExpired);

    _cache = all;

    saveCustomData<String>(
      _storageKey,
      jsonEncode(all.map((k, v) => MapEntry(k, v.toJson()))),
    );
  }

  bool _domainMatches(String host, StoredCookie cookie) {
    host = host.toLowerCase();

    if (cookie.hostOnly) {
      return host == cookie.domain;
    }

    return host == cookie.domain || host.endsWith('.${cookie.domain}');
  }

  bool _pathMatches(String requestPath, String cookiePath) {
    return requestPath == cookiePath || requestPath.startsWith(cookiePath);
  }

  List<StoredCookie> getValidCookies(Uri uri) {
    final cookies = _loadAll().values.where((cookie) {
      if (cookie.isExpired) return false;

      if (!_domainMatches(uri.host, cookie)) return false;

      if (!_pathMatches(uri.path.isEmpty ? '/' : uri.path, cookie.path)) {
        return false;
      }

      if (cookie.secure && uri.scheme != 'https') return false;

      return true;
    }).toList();

    cookies.sort((a, b) => b.path.length.compareTo(a.path.length));

    return cookies;
  }

  void setCookies(List<StoredCookie> cookies) {
    final all = _loadAll();

    for (final cookie in cookies) {
      if (cookie.isExpired) {
        all.remove(cookie.id);
      } else {
        all[cookie.id] = cookie;
      }
    }

    _saveAll(all);
  }

  void deleteCookiesForDomain(String domain) {
    final all = _loadAll();

    all.removeWhere((_, c) => c.domain == domain);
    webview.CookieManager.instance().deleteCookies(
      url: webview.WebUri('https://$domain'),
    );
    _saveAll(all);
  }

  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    final uri = Uri.parse(request.url);

    final cookies = getValidCookies(uri);

    if (cookies.isEmpty) {
      return Interceptor.next(request);
    }

    final cookieHeader = cookies.map((c) => '${c.name}=${c.value}').join('; ');

    final headers = (request.headers ?? HttpHeaders.empty)
        .copyWithoutRaw('cookie')
        .copyWithRaw(name: 'cookie', value: cookieHeader);

    return Interceptor.next(request.copyWith(headers: headers));
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async {
    final uri = Uri.parse(response.request.url);

    final setCookieHeaders =
        response.headerMapList['set-cookie'] ??
        response.headerMapList['Set-Cookie'] ??
        [];

    final parsed = <StoredCookie>[];

    for (final header in setCookieHeaders) {
      final cookie = StoredCookie.parse(header, uri.host);

      if (cookie != null) parsed.add(cookie);
    }

    if (parsed.isNotEmpty) {
      setCookies(parsed);
    }

    return Interceptor.next();
  }

  Future<void> readCookiesFromWebView(
    webview.WebUri url,
    webview.InAppWebViewController? controller,
  ) async {
    final manager = webview.CookieManager.instance();

    final cookies = await manager.getCookies(
      url: url,
      webViewController: controller,
    );

    setCookies(
      cookies.map((c) {
        final domain = (c.domain ?? url.host).toLowerCase().replaceFirst(
          RegExp(r'^\.'),
          '',
        );

        return StoredCookie(
          name: c.name,
          value: c.value,
          domain: domain,
          hostOnly: c.domain == null,
          path: c.path ?? '/',
          expires: c.expiresDate != null
              ? DateTime.fromMillisecondsSinceEpoch(c.expiresDate!)
              : null,
          secure: c.isSecure ?? false,
          httpOnly: c.isHttpOnly ?? false,
        );
      }).toList(),
    );
  }

  Future<void> applyCookiesToWebView(
    webview.InAppWebViewController? controller,
  ) async {
    final manager = webview.CookieManager.instance();

    final all = _loadAll().values;

    for (final cookie in all) {
      if (cookie.isExpired) continue;

      await manager.setCookie(
        url: webview.WebUri(
          'https://${cookie.domain.startsWith(".") ? cookie.domain.substring(1) : cookie.domain}',
        ),
        name: cookie.name,
        value: cookie.value,
        domain: cookie.domain,
        path: cookie.path,
        expiresDate: cookie.expires?.millisecondsSinceEpoch,
        isSecure: cookie.secure,
        isHttpOnly: cookie.httpOnly,
        webViewController: controller,
      );
    }
  }
}

class StoredCookie {
  final String name;

  final String value;

  final String domain;

  final bool hostOnly;

  final String path;

  final DateTime? expires;

  final bool secure;

  final bool httpOnly;

  const StoredCookie({
    required this.name,
    required this.value,
    required this.domain,
    required this.hostOnly,
    this.path = '/',
    this.expires,
    this.secure = false,
    this.httpOnly = false,
  });

  bool get isExpired => expires != null && expires!.isBefore(DateTime.now());

  String get id => '$domain|$path|$name';

  Map<String, dynamic> toJson() => {
    'name': name,
    'value': value,
    'domain': domain,
    'hostOnly': hostOnly,
    'path': path,
    'expires': expires?.toIso8601String(),
    'secure': secure,
    'httpOnly': httpOnly,
  };

  factory StoredCookie.fromJson(Map<String, dynamic> json) {
    return StoredCookie(
      name: json['name'],
      value: json['value'],
      domain: json['domain'],
      hostOnly: json['hostOnly'] ?? false,
      path: json['path'] ?? '/',
      expires: json['expires'] != null
          ? DateTime.tryParse(json['expires'])
          : null,
      secure: json['secure'] ?? false,
      httpOnly: json['httpOnly'] ?? false,
    );
  }

  static StoredCookie? parse(String header, String defaultDomain) {
    final parts = header.split(';');

    if (parts.isEmpty) return null;

    final first = parts.first;

    final eq = first.indexOf('=');

    if (eq <= 0) return null;

    final name = first.substring(0, eq).trim();

    final value = first.substring(eq + 1).trim();

    String domain = defaultDomain.toLowerCase();

    bool hostOnly = true;

    String path = '/';

    DateTime? expires;

    Duration? maxAge;

    bool secure = false;

    bool httpOnly = false;

    for (final raw in parts.skip(1)) {
      final attr = raw.trim();

      if (attr.isEmpty) continue;

      final idx = attr.indexOf('=');

      final key = idx == -1
          ? attr.toLowerCase()
          : attr.substring(0, idx).trim().toLowerCase();

      final attrValue = idx == -1 ? '' : attr.substring(idx + 1).trim();

      switch (key) {
        case 'domain':
          if (attrValue.isNotEmpty) {
            domain = attrValue.toLowerCase().replaceFirst(RegExp(r'^\.'), '');

            hostOnly = false;
          }

          break;

        case 'path':
          if (attrValue.isNotEmpty) path = attrValue;

          break;

        case 'expires':
          try {
            expires = HttpDate.parse(attrValue);
          } catch (_) {}

          break;

        case 'max-age':
          final secs = int.tryParse(attrValue);

          if (secs != null) maxAge = Duration(seconds: secs);

          break;

        case 'secure':
          secure = true;

          break;

        case 'httponly':
          httpOnly = true;

          break;
      }
    }

    if (maxAge != null) {
      expires = DateTime.now().add(maxAge);
    }

    return StoredCookie(
      name: name,
      value: value,
      domain: domain,
      hostOnly: hostOnly,
      path: path,
      expires: expires,
      secure: secure,
      httpOnly: httpOnly,
    );
  }

  StoredCookie copyWith({
    String? name,
    String? value,
    String? domain,
    bool? hostOnly,
    String? path,
    DateTime? expires,
    bool? secure,
    bool? httpOnly,
  }) {
    return StoredCookie(
      name: name ?? this.name,
      value: value ?? this.value,
      domain: domain ?? this.domain,
      hostOnly: hostOnly ?? this.hostOnly,
      path: path ?? this.path,
      expires: expires ?? this.expires,
      secure: secure ?? this.secure,
      httpOnly: httpOnly ?? this.httpOnly,
    );
  }
}
