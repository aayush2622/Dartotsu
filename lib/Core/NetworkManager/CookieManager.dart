import 'dart:convert';

import 'package:flutter_inappwebview/flutter_inappwebview.dart' as webview;
import 'package:rhttp/rhttp.dart';

import '../Preferences/PrefManager.dart';

class CookieManager extends Interceptor {
  static const _storageKey = 'cookies';

  Map<String, Map<String, StoredCookie>>? _cache;
  DateTime? _lastLoad;
  static const _cacheTTL = Duration(seconds: 5);

  Map<String, Map<String, StoredCookie>> _loadAll() {
    final now = DateTime.now();

    if (_cache != null &&
        _lastLoad != null &&
        now.difference(_lastLoad!) < _cacheTTL) {
      return _cache!;
    }
    final raw = loadCustomData<String>(_storageKey);
    if (raw == null || raw.isEmpty) {
      _cache = {};
      _lastLoad = now;
      return {};
    }

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      final all = decoded.map(
        (domain, cookies) => MapEntry(
          domain,
          (cookies as Map<String, dynamic>).map(
            (name, data) => MapEntry(
              name,
              StoredCookie.fromJson(Map<String, dynamic>.from(data)),
            ),
          ),
        ),
      );

      all.forEach((_, cookies) {
        cookies.removeWhere((_, c) => c.isExpired);
      });

      _cache = all;
      _lastLoad = now;
      return all;
    } catch (_) {
      _cache = {};
      _lastLoad = now;
      return {};
    }
  }

  List<StoredCookie> getValidCookies(Uri uri) {
    final all = _loadAll();
    final now = DateTime.now();

    final normalizedHost = normalizeDomain(uri.host);

    final cookies = all.entries.expand((entry) {
      final domain = entry.key;
      final matches =
          normalizedHost == domain || normalizedHost.endsWith('.$domain');

      if (!matches) return const <StoredCookie>[];

      return entry.value.values.where((c) {
        if (c.expires != null && c.expires!.isBefore(now)) return false;
        if (!uri.path.startsWith(c.path)) return false;
        if (c.secure && uri.scheme != 'https') return false;
        return true;
      });
    }).toList();

    cookies.sort((a, b) => b.path.length.compareTo(a.path.length));
    return cookies;
  }

  void setCookies(List<StoredCookie> cookies) {
    final all = _loadAll();

    for (final cookie in cookies) {
      final domainKey = normalizeDomain(cookie.domain);

      final domainCookies = all[domainKey] ?? {};

      if (cookie.isExpired) {
        domainCookies.remove(cookie.name);
      } else {
        domainCookies[cookie.name] = cookie.copyWith(domain: domainKey);
      }

      if (domainCookies.isEmpty) {
        all.remove(domainKey);
      } else {
        all[domainKey] = domainCookies;
      }
    }

    _saveAll(all);
  }

  void _saveAll(Map<String, Map<String, StoredCookie>> all) {
    all.forEach((_, cookies) {
      cookies.removeWhere((_, c) => c.isExpired);
    });

    _cache = all;
    _lastLoad = DateTime.now();

    saveCustomData<String>(
      _storageKey,
      jsonEncode(
        all.map(
          (d, cookies) => MapEntry(
            d,
            cookies.map((n, c) => MapEntry(n, c.toJson())),
          ),
        ),
      ),
    );
  }

  Future<void> readCookiesFromWebView(
      webview.WebUri url, webview.InAppWebViewController? controller) async {
    final manager = webview.CookieManager.instance();
    final cookies =
        await manager.getCookies(url: url, webViewController: controller);

    if (cookies.isEmpty) return;

    final parsed = cookies
        .map(
          (c) => StoredCookie(
            name: c.name,
            value: c.value,
            domain: c.domain ?? url.host,
            path: c.path ?? '/',
            expires: c.expiresDate != null
                ? DateTime.fromMillisecondsSinceEpoch(c.expiresDate!)
                : null,
            secure: c.isSecure ?? false,
            httpOnly: c.isHttpOnly ?? false,
          ),
        )
        .toList();

    setCookies(parsed);
  }

  Future<void> applyCookiesToWebView(
      webview.WebUri url, webview.InAppWebViewController? controller) async {
    final allSnapshot = Map<String, Map<String, StoredCookie>>.from(
      _loadAll().map(
        (d, cookies) => MapEntry(d, Map<String, StoredCookie>.from(cookies)),
      ),
    );

    final host = normalizeDomain(url.host);
    final manager = webview.CookieManager.instance();

    for (final entry in allSnapshot.entries) {
      final domain = entry.key;
      final matches = host == domain || host.endsWith('.$domain');

      if (!matches) continue;

      final cookies = List<StoredCookie>.from(entry.value.values);

      for (final c in cookies) {
        if (c.isExpired) continue;

        await manager.setCookie(
          url: url,
          name: c.name,
          value: c.value,
          domain: c.domain,
          path: c.path,
          expiresDate: c.expires?.millisecondsSinceEpoch,
          isSecure: c.secure,
          isHttpOnly: c.httpOnly,
          webViewController: controller,
        );
      }
    }
  }

  String normalizeDomain(String domain) {
    domain = domain.toLowerCase();
    if (domain.startsWith('.')) {
      domain = domain.substring(1);
    }

    if (domain.startsWith('www.')) {
      domain = domain.substring(4);
    }

    return domain;
  }

  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    final uri = Uri.parse(request.url);
    final cookies = getValidCookies(uri);
    if (cookies.isEmpty) return Interceptor.next(request);

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
    final setCookieHeaders = response.headerMapList['set-cookie'] ?? [];

    if (setCookieHeaders.isEmpty) return Interceptor.next();

    final parsed = <StoredCookie>[];

    for (final header in setCookieHeaders) {
      final cookie = StoredCookie.parse(header, uri.host);
      if (cookie != null) parsed.add(cookie);
    }

    if (parsed.isNotEmpty) setCookies(parsed);

    return Interceptor.next();
  }
}

class StoredCookie {
  final String name;
  final String value;
  final String domain;
  final String path;
  final DateTime? expires;
  final bool secure;
  final bool httpOnly;

  const StoredCookie({
    required this.name,
    required this.value,
    required this.domain,
    this.path = '/',
    this.expires,
    this.secure = false,
    this.httpOnly = false,
  });

  bool get isExpired => expires?.isBefore(DateTime.now()) ?? false;

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
        'domain': domain,
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
      path: json['path'] ?? '/',
      expires: json['expires'] != null ? DateTime.parse(json['expires']) : null,
      secure: json['secure'] ?? false,
      httpOnly: json['httpOnly'] ?? false,
    );
  }

  static StoredCookie? parse(String header, String defaultDomain) {
    final parts = header.split(';');
    if (parts.isEmpty) return null;

    final nameValue = parts.first.split('=');
    if (nameValue.length < 2) return null;

    final name = nameValue[0].trim();
    final value = nameValue.sublist(1).join('=').trim();

    String domain = defaultDomain.toLowerCase();
    String path = '/';
    DateTime? expires;
    Duration? maxAge;
    bool secure = false;
    bool httpOnly = false;

    for (final attr in parts.skip(1)) {
      final segment = attr.trim();
      if (segment.isEmpty) continue;

      final kv = segment.split('=');
      final key = kv[0].toLowerCase();

      switch (key) {
        case 'domain':
          if (kv.length > 1) {
            var d = kv[1].trim().toLowerCase();
            if (d.startsWith('.')) {
              d = d.substring(1);
            }
            if (d.isNotEmpty) {
              domain = d;
            }
          }
          break;

        case 'path':
          if (kv.length > 1 && kv[1].isNotEmpty) {
            path = kv[1];
          }
          break;

        case 'expires':
          if (kv.length > 1) {
            expires = DateTime.tryParse(kv[1]);
          }
          break;

        case 'max-age':
          if (kv.length > 1) {
            final seconds = int.tryParse(kv[1]);
            if (seconds != null) {
              maxAge = Duration(seconds: seconds);
            }
          }
          break;

        case 'secure':
          secure = true;
          break;

        case 'httponly':
          httpOnly = true;
          break;
      }
    }

    // RFC: Max-Age overrides Expires
    if (maxAge != null) {
      expires = DateTime.now().add(maxAge);
    }

    return StoredCookie(
      name: name,
      value: value,
      domain: domain,
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
    String? path,
    DateTime? expires,
    bool? secure,
    bool? httpOnly,
  }) {
    return StoredCookie(
      name: name ?? this.name,
      value: value ?? this.value,
      domain: domain ?? this.domain,
      path: path ?? this.path,
      expires: expires ?? this.expires,
      secure: secure ?? this.secure,
      httpOnly: httpOnly ?? this.httpOnly,
    );
  }
}
