import 'dart:convert';

import 'package:rhttp/rhttp.dart';

import '../Preferences/PrefManager.dart';

class CookieManager extends Interceptor {
  static const _storageKey = 'cookies';

  Map<String, Map<String, String>> _loadCookies() {
    final raw = loadCustomData<String>(_storageKey);
    if (raw == null || raw.isEmpty) return {};

    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;

      return decoded.map(
        (k, v) => MapEntry(
          k,
          Map<String, String>.from(v as Map),
        ),
      );
    } catch (_) {
      return {};
    }
  }

  /*void _saveCookies(Map<String, Map<String, String>> cookies) {
    saveCustomData<String>(
      _storageKey,
      jsonEncode(cookies),
    );
  }*/

  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    final uri = Uri.parse(request.url);
    final host = uri.host;

    final cookieStore = _loadCookies();
    final domainCookies = cookieStore[host];

    if (domainCookies == null || domainCookies.isEmpty) {
      return Interceptor.next(request);
    }

    final cookieHeader =
        domainCookies.entries.map((e) => '${e.key}=${e.value}').join('; ');

    final headers = (request.headers ?? HttpHeaders.empty)
        .copyWithoutRaw('cookie')
        .copyWithRaw(name: 'cookie', value: cookieHeader);

    return Interceptor.next(
      request.copyWith(headers: headers),
    );
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async =>
      Interceptor.next();
}
