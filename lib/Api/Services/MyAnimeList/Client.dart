import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Lru.dart';

const malClientId = '86b35cf02205a0303da3aaea1c9e33f3';
const malApi = 'https://api.myanimelist.net/v2';
const malWeb = 'https://myanimelist.net';

class MalException implements Exception {
  final String message;
  final int? status;
  MalException(this.message, [this.status]);

  @override
  String toString() => message;
}

Map<String, dynamic> _decode(NetworkResponse<dynamic> res) {
  final data = res.data;
  final body = data is String && data.isNotEmpty ? jsonDecode(data) : data;
  if (res.statusCode >= 400) {
    final message = body is Map
        ? (body['message'] ?? body['error'] ?? 'HTTP ${res.statusCode}')
        : 'HTTP ${res.statusCode}';
    throw MalException('$message', res.statusCode);
  }
  return body is Map<String, dynamic> ? body : <String, dynamic>{};
}

Map<String, dynamic> _decodeMap(String body) =>
    jsonDecode(body) as Map<String, dynamic>;

class MalClient {
  final String? Function() _token;
  final Future<bool> Function() _refresh;

  MalClient(this._token, this._refresh);

  NetworkManager get _net => find();

  bool get hasToken => (_token() ?? '').isNotEmpty;

  Map<String, String> _headers() {
    final token = _token();
    return token == null || token.isEmpty
        ? {'X-MAL-CLIENT-ID': malClientId}
        : {'Authorization': 'Bearer $token'};
  }

  Future<NetworkResponse<dynamic>> _run(
    Future<NetworkResponse<dynamic>> Function(Map<String, String> headers) call,
  ) async {
    var res = await call(_headers());
    final hadToken = (_token() ?? '').isNotEmpty;
    if (res.statusCode == 401 && hadToken && await _refresh()) {
      res = await call(_headers());
    }
    return res;
  }

  Future<Map<String, dynamic>> get(String path, {Map<String, String>? query}) =>
      _run(
        (h) => _net.get(
          path.startsWith('http') ? path : '$malApi$path',
          query: query,
          headers: h,
        ),
      ).then(_decode);

  Future<Map<String, dynamic>> getLarge(
    String path, {
    Map<String, String>? query,
  }) async {
    final res = await _run(
      (h) => _net.get(
        path.startsWith('http') ? path : '$malApi$path',
        query: query,
        headers: h,
        decodeJson: false,
      ),
    );
    if (res.statusCode >= 400) {
      throw MalException('HTTP ${res.statusCode}', res.statusCode);
    }
    return compute(_decodeMap, '${res.data}');
  }

  Future<Map<String, dynamic>> put(String path, Map<String, String> form) =>
      _run(
        (h) => _net.put('$malApi$path', data: HttpBody.form(form), headers: h),
      ).then(_decode);

  Future<void> delete(String path) async {
    final res = await _run((h) => _net.delete('$malApi$path', headers: h));
    if (res.statusCode >= 400 && res.statusCode != 404) {
      throw MalException('HTTP ${res.statusCode}', res.statusCode);
    }
  }
}

class TenraiClient {
  static const _base = 'https://api.tenrai.org/v1';
  static const _gap = Duration(milliseconds: 150);
  static const _parallel = 3;

  final _cache = Lru<String, (DateTime, Map<String, dynamic>)>(160);
  final _inflight = <String, Future<Map<String, dynamic>>>{};
  final _waiting = Queue<Completer<void>>();
  var _running = 0;

  NetworkManager get _net => find();

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? query,
    Duration cache = const Duration(minutes: 10),
  }) {
    final key =
        '$path?${query?.entries.map((e) => '${e.key}=${e.value}').join('&')}';
    final hit = _cache[key];
    if (hit != null && DateTime.now().difference(hit.$1) < cache) {
      return Future.value(hit.$2);
    }
    return _inflight[key] ??= _fetch(path, query)
        .then((data) {
          _cache[key] = (DateTime.now(), data);
          return data;
        })
        .whenComplete(() => _inflight.remove(key));
  }

  Future<void> _acquire() async {
    if (_running < _parallel) {
      _running++;
      return;
    }
    final turn = Completer<void>();
    _waiting.add(turn);
    await turn.future;
  }

  void _release() {
    if (_waiting.isEmpty) {
      _running--;
    } else {
      _waiting.removeFirst().complete();
    }
  }

  Future<Map<String, dynamic>> _fetch(
    String path,
    Map<String, String>? query,
  ) async {
    await _acquire();
    try {
      for (var attempt = 0; ; attempt++) {
        final res = await _net.get('$_base$path', query: query);
        final retry = res.statusCode == 429 || res.statusCode >= 500;
        if (retry && attempt < 3) {
          final after = int.tryParse(res.headers['retry-after']?.first ?? '');
          await Future<void>.delayed(
            after != null
                ? Duration(seconds: after.clamp(1, 10))
                : Duration(milliseconds: 900 * (attempt + 1)),
          );
          continue;
        }
        return _decode(res);
      }
    } finally {
      await Future<void>.delayed(_gap);
      _release();
    }
  }
}
