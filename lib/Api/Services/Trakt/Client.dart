import '../../../Utils/Lru.dart';
import 'dart:async';
import 'dart:convert';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';

const traktApi = 'https://api.trakt.tv';
const traktWeb = 'https://trakt.tv';
const traktAuthUrl = 'https://auth.trakt.tv';
const traktAppName = 'Dartotsu';

String _appVersion = '';

Future<String> traktAppVersion() async {
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
  if (res.statusCode >= 400) {
    final message = body is Map
        ? (body['error_description'] ??
              body['message'] ??
              body['error'] ??
              'HTTP ${res.statusCode}')
        : 'HTTP ${res.statusCode}';
    throw TraktException('$message', res.statusCode);
  }
  return body;
}

class TraktClient {
  final Future<String> Function() _clientId;
  final String Function() _token;
  final Future<bool> Function() _refresh;

  TraktClient(this._clientId, this._token, this._refresh) {
    unawaited(traktAppVersion());
  }

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  Future<Map<String, String>> _headers({
    required bool auth,
    bool json = true,
  }) async {
    final clientId = await _clientId();
    final version = await traktAppVersion();
    return {
      'User-Agent': version.isEmpty
          ? traktAppName
          : '$traktAppName/$version',
      'trakt-api-version': '2',
      'trakt-api-key': clientId,
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
    bool decode,
  ) async {
    for (var attempt = 0; ; attempt++) {
      final headers = await _headers(auth: auth, json: false);
      final res = await _net.get(
        url,
        query: query,
        headers: headers,
        decodeJson: decode,
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

  final _catalog = Lru<String, (DateTime, dynamic)>(30);
  final _inflight = <String, Future<dynamic>>{};

  Future<dynamic> get(
    String path, {
    Map<String, String>? query,
    bool auth = true,
  }) {
    if (auth) return _fetch(path, query, auth);
    final key =
        '$path?${query?.entries.map((e) => '${e.key}=${e.value}').join('&')}';
    final hit = _catalog[key];
    if (hit != null &&
        DateTime.now().difference(hit.$1) < const Duration(minutes: 10)) {
      return Future.value(hit.$2);
    }
    return _inflight[key] ??= _fetch(path, query, auth)
        .then((data) {
          _catalog[key] = (DateTime.now(), data);
          return data;
        })
        .whenComplete(() {
          _inflight.remove(key);
        });
  }

  Future<dynamic> _fetch(
    String path,
    Map<String, String>? query,
    bool auth,
  ) async {
    final url = path.startsWith('http') ? path : '$traktApi$path';
    var res = await _getRaw(url, query, auth, true);
    if (res.statusCode == 401 && auth && hasToken && await _refresh()) {
      res = await _getRaw(url, query, auth, true);
    }
    return _decode(res);
  }

  Future<String> getBody(String path, {Map<String, String>? query}) async {
    final url = path.startsWith('http') ? path : '$traktApi$path';
    var res = await _getRaw(url, query, true, false);
    if (res.statusCode == 401 && hasToken && await _refresh()) {
      res = await _getRaw(url, query, true, false);
    }
    if (res.statusCode >= 400) {
      throw TraktException('HTTP ${res.statusCode}', res.statusCode);
    }
    return '${res.data}';
  }

  DateTime _nextPost = DateTime.fromMillisecondsSinceEpoch(0);
  Future<void> _postTail = Future.value();

  Future<dynamic> post(String path, Object body) {
    final done = Completer<dynamic>();
    _postTail = _postTail.then((_) async {
      try {
        final wait = _nextPost.difference(DateTime.now());
        if (!wait.isNegative && wait.inMilliseconds > 0) {
          await Future<void>.delayed(wait);
        }
        done.complete(await _send(path, body));
      } catch (e, s) {
        done.completeError(e, s);
      } finally {
        _nextPost = DateTime.now().add(const Duration(milliseconds: 1000));
      }
    });
    return done.future;
  }

  Future<dynamic> _send(String path, Object body) async {
    Future<NetworkResponse<dynamic>> send() async => _net.post(
      '$traktApi$path',
      data: jsonEncode(body),
      headers: await _headers(auth: true, json: true),
    );
    var res = await send();
    if (res.statusCode == 401 && hasToken && await _refresh()) {
      res = await send();
    }
    return _decode(res);
  }
}
