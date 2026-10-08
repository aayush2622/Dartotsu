import 'dart:async';
import 'dart:convert';

import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';

const simklApi = 'https://api.simkl.com';
const simklData = 'https://data.simkl.in';
const simklWeb = 'https://simkl.com';
const simklAppName = 'dartotsu';
const simklAppVersion = '1.0';

class SimklException implements Exception {
  final String message;
  final int? status;
  SimklException(this.message, [this.status]);

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
    throw SimklException('$message', res.statusCode);
  }
  return body;
}

class SimklClient {
  final Future<String> Function() _clientId;
  final String Function() _token;
  final Future<bool> Function() _refresh;

  SimklClient(this._clientId, this._token, this._refresh);

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  Future<Map<String, String>> _query(Map<String, String>? extra) async => {
    'client_id': await _clientId(),
    'app-name': simklAppName,
    'app-version': simklAppVersion,
    ...?extra,
  };

  Map<String, String> _headers({required bool auth, bool json = false}) => {
    'User-Agent': '$simklAppName/$simklAppVersion',
    if (json) 'Content-Type': 'application/json',
    if (auth && hasToken) 'Authorization': 'Bearer ${_token()}',
  };

  Future<Map<String, dynamic>> token(
    String path,
    Map<String, String> fields, {
    bool json = false,
  }) async {
    final res = await _net.post(
      '$simklApi$path',
      data: json ? jsonEncode(fields) : HttpBody.form(fields),
      query: await _query(null),
      headers: _headers(auth: false, json: json),
    );
    final body = _decode(res);
    return body is Map<String, dynamic> ? body : <String, dynamic>{};
  }

  Future<NetworkResponse<dynamic>> _getRaw(
    String url,
    Map<String, String> query,
    bool auth,
    bool decode,
  ) async {
    for (var attempt = 0; ; attempt++) {
      final res = await _net.get(
        url,
        query: query,
        headers: _headers(auth: auth),
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

  Future<dynamic> get(
    String path, {
    Map<String, String>? query,
    bool auth = true,
  }) async {
    final url = path.startsWith('http') ? path : '$simklApi$path';
    var res = await _getRaw(url, await _query(query), auth, true);
    if (res.statusCode == 401 && auth && hasToken && await _refresh()) {
      res = await _getRaw(url, await _query(query), auth, true);
    }
    return _decode(res);
  }

  Future<String> getText(String url) async {
    final res = await _getRaw(url, await _query(null), false, false);
    if (res.statusCode >= 400) {
      throw SimklException('HTTP ${res.statusCode}', res.statusCode);
    }
    return '${res.data}';
  }

  Future<void> _postTurn() async {
    final wait = _nextPost.difference(DateTime.now());
    _nextPost = DateTime.now().add(const Duration(milliseconds: 1100));
    if (!wait.isNegative && wait.inMilliseconds > 0) {
      await Future<void>.delayed(wait);
    }
  }

  DateTime _nextPost = DateTime.fromMillisecondsSinceEpoch(0);
  Future<void> _postTail = Future.value();

  Future<dynamic> post(String path, Object body) {
    final done = Completer<dynamic>();
    _postTail = _postTail.then((_) async {
      try {
        await _postTurn();
        done.complete(await _send(path, body));
      } catch (e, s) {
        done.completeError(e, s);
      }
    });
    return done.future;
  }

  Future<dynamic> _send(String path, Object body) async {
    Future<NetworkResponse<dynamic>> send() async => _net.post(
      '$simklApi$path',
      data: jsonEncode(body),
      query: await _query(null),
      headers: _headers(auth: true, json: true),
    );
    var res = await send();
    if (res.statusCode == 401 && hasToken && await _refresh()) {
      res = await send();
    }
    return _decode(res);
  }
}
