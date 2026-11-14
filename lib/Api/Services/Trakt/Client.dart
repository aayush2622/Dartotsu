import 'dart:async';
import 'dart:convert';

import 'package:package_info_plus/package_info_plus.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Services/Api/SharedRequests.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';

const traktApi = 'https://api.trakt.tv';
const traktAuthUrl = 'https://auth.trakt.tv';
const traktAppName = 'Dartotsu';
const traktClientId = 'gMkRIMvbNw8ie4wGwQtT101vsenOVV4R0VGQu_AH_mw';

String _appVersion = '';

Future<String> _version() async {
  if (_appVersion.isNotEmpty) return _appVersion;
  try {
    _appVersion = (await PackageInfo.fromPlatform()).version;
  } catch (e, st) {
    logError('Trakt', e, st);
  }
  return _appVersion;
}

class TraktException implements Exception {
  final String message;
  final int? status;
  TraktException(this.message, [this.status]);

  @override
  String toString() => message;
}

dynamic _decode(NetworkResponse<dynamic> res) {
  final data = res.data;
  final body = data is String && data.isNotEmpty ? jsonDecode(data) : data;
  if (res.statusCode >= 400) throw _failure(res.statusCode, body);
  return body;
}

TraktException _failure(int status, Object? body) {
  final message = body is Map
      ? body['error_description'] ?? body['message'] ?? body['error']
      : null;
  return TraktException('${message ?? 'HTTP $status'}', status);
}

class TraktClient {
  final String Function() _token;
  final Future<bool> Function() _refresh;

  TraktClient(this._token, this._refresh) {
    unawaited(_version());
  }

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  Future<Map<String, String>> _headers({
    required bool auth,
    bool json = true,
  }) async {
    final version = await _version();
    return {
      'User-Agent': version.isEmpty ? traktAppName : '$traktAppName/$version',
      'trakt-api-version': '2',
      'trakt-api-key': traktClientId,
      if (json) 'Content-Type': 'application/json',
      if (auth && hasToken) 'Authorization': 'Bearer ${_token()}',
    };
  }

  Future<Map<String, dynamic>> token(
    String path,
    Map<String, dynamic> body,
  ) async {
    final res = await _net.post(
      '$traktApi$path',
      data: jsonEncode(body),
      headers: await _headers(auth: false, json: true),
    );
    final decoded = _decode(res);
    return decoded is Map<String, dynamic> ? decoded : <String, dynamic>{};
  }

  Future<NetworkResponse<dynamic>> _getRaw(
    String url,
    Map<String, String>? query,
    bool auth,
  ) async {
    for (var attempt = 0; ; attempt++) {
      final res = await _net.get(
        url,
        query: query,
        headers: await _headers(auth: auth, json: false),
      );
      if ((res.statusCode == 429 || res.statusCode >= 500) && attempt < 2) {
        final after = int.tryParse(res.headers['retry-after']?.first ?? '');
        await Future<void>.delayed(
          Duration(seconds: (after ?? (attempt + 1) * 2).clamp(1, 10)),
        );
        continue;
      }
      return res;
    }
  }

  final _catalog = ResponseCache(30);

  Future<dynamic> get(
    String path, {
    Map<String, String>? query,
    bool auth = true,
  }) {
    Future<dynamic> load() async => _decode(await _fetch(path, query, auth));
    if (auth) return load();
    final key =
        '$path?${query?.entries.map((e) => '${e.key}=${e.value}').join('&')}';
    return _catalog.fetch(key, load, ttl: const Duration(minutes: 10));
  }

  Future<NetworkResponse<dynamic>> _fetch(
    String path,
    Map<String, String>? query,
    bool auth,
  ) async {
    final url = path.startsWith('http') ? path : '$traktApi$path';
    var res = await _getRaw(url, query, auth);
    if (res.statusCode == 401 && auth && hasToken && await _refresh()) {
      res = await _getRaw(url, query, auth);
    }
    return res;
  }

  DateTime _nextWrite = DateTime.fromMillisecondsSinceEpoch(0);
  Future<void> _writeTail = Future.value();

  Future<dynamic> post(String path, Object body) => _write(
    (headers) =>
        _net.post('$traktApi$path', data: jsonEncode(body), headers: headers),
  );

  Future<dynamic> delete(String path) =>
      _write((headers) => _net.delete('$traktApi$path', headers: headers));

  Future<dynamic> _write(
    Future<NetworkResponse<dynamic>> Function(Map<String, String> headers) call,
  ) {
    final done = Completer<dynamic>();
    _writeTail = _writeTail.then((_) async {
      try {
        final wait = _nextWrite.difference(DateTime.now());
        if (wait > Duration.zero) await Future<void>.delayed(wait);
        done.complete(await _signed(call));
      } catch (e, s) {
        done.completeError(e, s);
      } finally {
        _nextWrite = DateTime.now().add(const Duration(seconds: 1));
      }
    });
    return done.future;
  }

  Future<dynamic> _signed(
    Future<NetworkResponse<dynamic>> Function(Map<String, String> headers) call,
  ) async {
    var res = await call(await _headers(auth: true, json: true));
    if (res.statusCode == 401 && hasToken && await _refresh()) {
      res = await call(await _headers(auth: true, json: true));
    }
    return _decode(res);
  }
}
