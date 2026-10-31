import '../../Logger.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:webview_all/webview_all.dart' as webview;
import 'package:rhttp/rhttp.dart';

import '../Preferences/PrefManager.dart';

class CookieManager extends Interceptor {
  static const _storageKey = "cookies";
  static const _flushDelay = Duration(seconds: 2);
  static const _webViewLifetime = Duration(days: 30);

  String Function()? clearanceAgent;

  static const clearanceName = "cf_clearance";

  bool isStaleClearance(StoredCookie cookie) {
    if (cookie.name != clearanceName) return false;
    final earned = cookie.agent;
    final current = clearanceAgent?.call();
    return earned != null && current != null && earned != current;
  }

  StoredCookie _stamped(StoredCookie cookie, StoredCookie? old) {
    if (cookie.name != clearanceName) return cookie;
    final changed =
        old == null || old.value != cookie.value || isStaleClearance(old);
    if (changed) {
      return cookie.copyWith(
        agent: clearanceAgent?.call(),
        issued: DateTime.now(),
      );
    }
    return cookie.copyWith(agent: old.agent, issued: old.issued);
  }

  Map<String, StoredCookie>? _cache;

  final Map<String, StoredCookie> _sessionCookies = {};

  Timer? _flushTimer;
  bool _dirty = false;

  /// Marks the persistent store dirty and coalesces disk writes — cookie reads
  /// happen on every request, but `lastAccessed` churn does not need to hit
  /// disk synchronously.
  void _scheduleFlush() {
    _dirty = true;
    _flushTimer ??= Timer(_flushDelay, flush);
  }

  /// Writes pending cookie changes to disk now.
  void flush() {
    _flushTimer?.cancel();
    _flushTimer = null;
    if (!_dirty || _cache == null) return;
    _dirty = false;
    saveCustomData<String>(
      _storageKey,
      jsonEncode(_cache!.map((k, v) => MapEntry(k, v.toJson()))),
    );
  }

  void dispose() => flush();

  void reload() {
    _flushTimer?.cancel();
    _flushTimer = null;
    _dirty = false;
    _cache = null;
  }

  Map<String, StoredCookie> _loadAll() {
    if (_cache != null) {
      return _cache!;
    }

    final raw = loadCustomData<String>(_storageKey);

    if (raw == null || raw.isEmpty) {
      return _cache = {};
    }

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;

      final cookies = decoded.map(
        (k, v) =>
            MapEntry(k, StoredCookie.fromJson(Map<String, dynamic>.from(v))),
      );

      cookies.removeWhere((_, cookie) => cookie.isExpired);

      _cache = cookies;

      return cookies;
    } catch (e, st) {
      logError('CookieManager', e, st);
      return _cache = {};
    }
  }

  void _saveAll(Map<String, StoredCookie> cookies) {
    cookies.removeWhere((_, cookie) => cookie.isExpired);
    _cache = cookies;
    _scheduleFlush();
  }

  /// Prune expired cookies from memory. Persistence is deferred.
  void _cleanup() {
    final persistent = _loadAll();
    final before = persistent.length + _sessionCookies.length;

    persistent.removeWhere((_, cookie) => cookie.isExpired);
    _sessionCookies.removeWhere((_, cookie) => cookie.isExpired);

    if (persistent.length + _sessionCookies.length != before) {
      _scheduleFlush();
    }
  }

  Iterable<StoredCookie> get _allCookies sync* {
    yield* _loadAll().values;
    yield* _sessionCookies.values;
  }

  List<StoredCookie> get allCookies {
    _cleanup();

    return _allCookies.toList();
  }

  List<StoredCookie> getValidCookies(Uri uri) {
    _cleanup();

    final path = uri.path.isEmpty ? "/" : uri.path;

    final result = <StoredCookie>[];

    for (final cookie in _allCookies) {
      if (cookie.isExpired) continue;

      if (isStaleClearance(cookie)) continue;

      if (!domainMatches(uri.host, cookie.domain, cookie.hostOnly)) {
        continue;
      }

      if (!pathMatches(path, cookie.path)) {
        continue;
      }

      if (cookie.secure && uri.scheme != "https") {
        continue;
      }

      final touched = cookie.touch();
      result.add(touched);
      (cookie.session ? _sessionCookies : _cache)?[cookie.id] = touched;
    }

    result.sort((a, b) {
      final cmp = b.path.length.compareTo(a.path.length);
      if (cmp != 0) return cmp;
      return a.created.compareTo(b.created);
    });

    if (result.isNotEmpty) _scheduleFlush();

    return result;
  }

  void setCookies(Iterable<StoredCookie> cookies) {
    final persistent = _loadAll();

    for (final cookie in cookies) {
      if (cookie.isExpired) {
        persistent.remove(cookie.id);
        _sessionCookies.remove(cookie.id);
        continue;
      }

      if (cookie.session) {
        final old = _sessionCookies[cookie.id];

        final next = _stamped(cookie, old);
        _sessionCookies[cookie.id] = old == null
            ? next
            : next.copyWith(created: old.created);
        persistent.remove(cookie.id);
      } else {
        final old = persistent[cookie.id];

        final next = _stamped(cookie, old);
        persistent[cookie.id] = old == null
            ? next
            : next.copyWith(created: old.created);
        _sessionCookies.remove(cookie.id);
      }
    }

    _saveAll(persistent);
  }

  void clear() {
    _cache = {};
    _sessionCookies.clear();
    _dirty = true;
    flush();
  }

  Future<void> deleteCookiesForDomain(String domain) async {
    domain = normalizeDomain(domain);

    final persistent = _loadAll();

    persistent.removeWhere(
      (_, cookie) => normalizeDomain(cookie.domain) == domain,
    );

    _sessionCookies.removeWhere(
      (_, cookie) => normalizeDomain(cookie.domain) == domain,
    );

    _saveAll(persistent);
    flush();

    await webview.WebViewCookieManager().clearCookies();
    await applyCookiesToWebView();
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

    final header = cookies.map((e) => "${e.name}=${e.value}").join("; ");

    var headers = (request.headers ?? HttpHeaders.empty)
        .copyWithoutRaw("cookie")
        .copyWithRaw(name: "cookie", value: header);

    final agent = clearanceAgent?.call();
    if (agent != null && cookies.any((c) => c.name == "cf_clearance")) {
      headers = headers
          .copyWithoutRaw("user-agent")
          .copyWithRaw(name: "user-agent", value: agent);
    }

    return Interceptor.next(request.copyWith(headers: headers));
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async {
    final uri = Uri.parse(response.request.url);

    final headers =
        response.headerMapList["set-cookie"] ??
        response.headerMapList["Set-Cookie"] ??
        const <String>[];

    if (headers.isEmpty) {
      return Interceptor.next();
    }

    final parsed = <StoredCookie>[];

    for (final header in headers) {
      final cookie = parseSingleCookie(header, uri);

      if (cookie != null) {
        parsed.add(cookie);
      }
    }

    if (parsed.isNotEmpty) {
      setCookies(parsed);
    }

    return Interceptor.next();
  }

  StoredCookie? parseSingleCookie(String header, Uri requestUri) {
    final parts = header.split(";");

    if (parts.isEmpty) {
      return null;
    }

    final first = parts.first.trim();

    final eq = first.indexOf("=");

    if (eq <= 0) {
      return null;
    }

    final name = first.substring(0, eq).trim();
    if (name.isEmpty) {
      return null;
    }
    var value = first.substring(eq + 1).trim();

    if (value.length >= 2 && value.startsWith('"') && value.endsWith('"')) {
      value = value.substring(1, value.length - 1);
    }
    var domain = normalizeDomain(requestUri.host);

    var hostOnly = true;

    var path = defaultCookiePath(requestUri);

    DateTime? expires;

    Duration? maxAge;

    var secure = false;

    var httpOnly = false;

    CookieSameSite? sameSite;

    var priority = CookiePriority.medium;

    var partitioned = false;

    for (final attribute in parts.skip(1)) {
      final text = attribute.trim();

      if (text.isEmpty) {
        continue;
      }

      final idx = text.indexOf("=");

      final key = idx == -1
          ? text.toLowerCase()
          : text.substring(0, idx).trim().toLowerCase();

      final valuePart = idx == -1 ? "" : text.substring(idx + 1).trim();

      switch (key) {
        case "domain":
          if (valuePart.isEmpty) {
            break;
          }

          final normalized = normalizeDomain(valuePart);

          if (!isDomainAllowed(requestUri.host, normalized)) {
            return null;
          }

          domain = normalized;

          hostOnly = false;

          break;

        case "path":
          if (valuePart.startsWith("/")) {
            path = valuePart;
          } else {
            path = "/";
          }
          break;
        case "expires":
          expires = _parseCookieDate(valuePart);
          if (expires == null) {
            logWarn(
              'Unreadable cookie expiry: $valuePart',
              tag: 'CookieManager',
            );
          }

          break;

        case "max-age":
          final seconds = int.tryParse(valuePart);

          if (seconds != null) {
            if (seconds <= 0) {
              expires = DateTime.fromMillisecondsSinceEpoch(0);
            } else {
              maxAge = Duration(seconds: seconds);
            }
          }

          break;

        case "secure":
          secure = true;

          break;

        case "httponly":
          httpOnly = true;

          break;

        case "samesite":
          switch (valuePart.toLowerCase()) {
            case "none":
              sameSite = CookieSameSite.none;
              break;

            case "strict":
              sameSite = CookieSameSite.strict;
              break;

            default:
              sameSite = CookieSameSite.lax;
          }

          break;

        case "priority":
          switch (valuePart.toLowerCase()) {
            case "high":
              priority = CookiePriority.high;
              break;

            case "low":
              priority = CookiePriority.low;
              break;

            default:
              priority = CookiePriority.medium;
          }

          break;

        case "partitioned":
          partitioned = true;

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
      sameSite: sameSite,
      priority: priority,
      partitioned: partitioned,
      session: expires == null && maxAge == null,
      created: DateTime.now(),
      lastAccessed: DateTime.now(),
    );
  }

  Future<void> readCookiesFromWebView(Uri uri) async {
    final cookies = await webview.WebViewCookieManager().getCookies(
      domain: uri,
    );

    final now = DateTime.now();
    final converted = <StoredCookie>[];
    for (final c in cookies) {
      final domain = normalizeDomain(c.domain.isEmpty ? uri.host : c.domain);
      final known = getCookie(domain, c.name);
      if (known != null && known.value == c.value && !isStaleClearance(known)) {
        continue;
      }
      converted.add(
        StoredCookie(
          name: c.name,
          value: c.value,
          domain: domain,
          hostOnly: c.domain.isEmpty,
          path: c.path.isNotEmpty ? c.path : defaultCookiePath(uri),
          expires: known?.expires ?? now.add(_webViewLifetime),
          secure: known?.secure ?? false,
          httpOnly: known?.httpOnly ?? false,
          sameSite: known?.sameSite,
          priority: CookiePriority.medium,
          partitioned: false,
          session: known?.session ?? false,
          created: DateTime.now(),
          lastAccessed: DateTime.now(),
        ),
      );
    }
    if (converted.isNotEmpty) setCookies(converted);
  }

  Future<void> applyCookiesToWebView() async {
    final manager = webview.WebViewCookieManager();
    for (final cookie in allCookies) {
      if (cookie.isExpired) continue;
      await manager.setCookie(
        webview.WebViewCookie(
          name: cookie.name,
          value: cookie.value,
          domain: cookie.domain,
          path: cookie.path,
        ),
      );
    }
  }

  List<StoredCookie> getCookiesForDomain(String domain) {
    domain = normalizeDomain(domain);

    return _allCookies.where((cookie) {
      return domainMatches(domain, cookie.domain, cookie.hostOnly);
    }).toList();
  }

  bool hasCookie(String domain, String name) {
    domain = normalizeDomain(domain);

    return _allCookies.any(
      (cookie) =>
          cookie.name == name &&
          domainMatches(domain, cookie.domain, cookie.hostOnly),
    );
  }

  StoredCookie? getCookie(String domain, String name) {
    domain = normalizeDomain(domain);

    for (final cookie in _allCookies) {
      if (cookie.name == name &&
          domainMatches(domain, cookie.domain, cookie.hostOnly)) {
        return cookie;
      }
    }
    return null;
  }

  Future<void> deleteAll() async {
    _cache = {};
    _sessionCookies.clear();
    _dirty = true;
    flush();

    await webview.WebViewCookieManager().clearCookies();
  }
}

enum CookieSameSite { none, lax, strict }

enum CookiePriority { low, medium, high }

class StoredCookie {
  final String name;
  final String value;

  final String domain;
  final bool hostOnly;

  final String path;

  final DateTime? expires;

  final bool secure;
  final bool httpOnly;

  final CookieSameSite? sameSite;
  final CookiePriority priority;
  final bool partitioned;

  /// null = persistent
  final bool session;

  final DateTime created;

  final DateTime lastAccessed;

  /// The User-Agent a `cf_clearance` cookie was earned with, and when.
  final String? agent;
  final DateTime? issued;

  const StoredCookie({
    required this.name,
    required this.value,
    required this.domain,
    required this.hostOnly,
    required this.path,
    required this.created,
    required this.lastAccessed,
    this.expires,
    this.secure = false,
    this.httpOnly = false,
    this.sameSite,
    this.priority = CookiePriority.medium,
    this.partitioned = false,
    this.session = false,
    this.agent,
    this.issued,
  });

  bool get isExpired {
    if (expires == null) return false;
    return !expires!.isAfter(DateTime.now());
  }

  String get id => "$domain|$path|$name";

  StoredCookie touch() => copyWith(lastAccessed: DateTime.now());

  Map<String, dynamic> toJson() => {
    "name": name,
    "value": value,
    "domain": domain,
    "hostOnly": hostOnly,
    "path": path,
    "expires": expires?.toIso8601String(),
    "secure": secure,
    "httpOnly": httpOnly,
    "sameSite": sameSite?.name,
    "priority": priority.name,
    "partitioned": partitioned,
    "session": session,
    "created": created.toIso8601String(),
    "lastAccessed": lastAccessed.toIso8601String(),
    if (agent != null) "agent": agent,
    if (issued != null) "issued": issued!.toIso8601String(),
  };

  factory StoredCookie.fromJson(Map<String, dynamic> json) {
    return StoredCookie(
      name: json["name"],
      value: json["value"],
      domain: json["domain"],
      hostOnly: json["hostOnly"] ?? false,
      path: json["path"] ?? "/",
      expires: json["expires"] == null
          ? null
          : DateTime.tryParse(json["expires"]),
      secure: json["secure"] ?? false,
      httpOnly: json["httpOnly"] ?? false,
      sameSite: json["sameSite"] == null
          ? null
          : CookieSameSite.values.firstWhere(
              (e) => e.name == json["sameSite"],
              orElse: () => CookieSameSite.lax,
            ),
      priority: CookiePriority.values.firstWhere(
        (e) => e.name == json["priority"],
        orElse: () => CookiePriority.medium,
      ),
      partitioned: json["partitioned"] ?? false,
      session: json["session"] ?? false,
      created: json["created"] == null
          ? DateTime.now()
          : DateTime.parse(json["created"]),
      lastAccessed: json["lastAccessed"] == null
          ? DateTime.now()
          : DateTime.parse(json["lastAccessed"]),
      agent: json["agent"],
      issued: json["issued"] == null ? null : DateTime.tryParse(json["issued"]),
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
    CookieSameSite? sameSite,
    CookiePriority? priority,
    bool? partitioned,
    bool? session,
    DateTime? created,
    DateTime? lastAccessed,
    String? agent,
    DateTime? issued,
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
      sameSite: sameSite ?? this.sameSite,
      priority: priority ?? this.priority,
      partitioned: partitioned ?? this.partitioned,
      session: session ?? this.session,
      created: created ?? this.created,
      lastAccessed: lastAccessed ?? this.lastAccessed,
      agent: agent ?? this.agent,
      issued: issued ?? this.issued,
    );
  }
}

String normalizeDomain(String domain) {
  return domain.trim().toLowerCase().replaceFirst(RegExp(r'^\.'), '');
}

bool domainMatches(String host, String cookieDomain, bool hostOnly) {
  host = normalizeDomain(host);
  cookieDomain = normalizeDomain(cookieDomain);

  if (hostOnly) {
    return host == cookieDomain;
  }

  return host == cookieDomain || host.endsWith(".$cookieDomain");
}

bool pathMatches(String requestPath, String cookiePath) {
  if (requestPath == cookiePath) {
    return true;
  }

  if (!requestPath.startsWith(cookiePath)) {
    return false;
  }

  if (cookiePath.endsWith("/")) {
    return true;
  }

  return requestPath.length > cookiePath.length &&
      requestPath[cookiePath.length] == "/";
}

String defaultCookiePath(Uri uri) {
  final path = uri.path;

  if (path.isEmpty || !path.startsWith("/")) {
    return "/";
  }

  final index = path.lastIndexOf("/");

  if (index <= 0) {
    return "/";
  }

  return path.substring(0, index);
}

bool isDomainAllowed(String requestHost, String cookieDomain) {
  requestHost = normalizeDomain(requestHost);
  cookieDomain = normalizeDomain(cookieDomain);

  return requestHost == cookieDomain || requestHost.endsWith(".$cookieDomain");
}

const _months = {
  'jan': 1,
  'feb': 2,
  'mar': 3,
  'apr': 4,
  'may': 5,
  'jun': 6,
  'jul': 7,
  'aug': 8,
  'sep': 9,
  'oct': 10,
  'nov': 11,
  'dec': 12,
};

DateTime? _parseCookieDate(String value) {
  try {
    return HttpDate.parse(value);
  } catch (_) {}
  final m = RegExp(
    r'(\d{1,2})[ -]([A-Za-z]{3})[A-Za-z]*[ -](\d{2,4})\s+(\d{1,2}):(\d{2}):(\d{2})',
  ).firstMatch(value);
  final month = m == null ? null : _months[m.group(2)!.toLowerCase()];
  if (m == null || month == null) return null;
  var year = int.parse(m.group(3)!);
  if (year < 70) {
    year += 2000;
  } else if (year < 100) {
    year += 1900;
  }
  return DateTime.utc(
    year,
    month,
    int.parse(m.group(1)!),
    int.parse(m.group(4)!),
    int.parse(m.group(5)!),
    int.parse(m.group(6)!),
  );
}
