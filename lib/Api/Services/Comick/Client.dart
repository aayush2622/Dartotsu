import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Lru.dart';

const comickHost = 'https://api.comick.dev';
const comickOAuth = 'https://comick.dev/api/auth/oauth2';
const comickResource = 'https://api.comick.dev/integrations/v1';

class ComickException implements Exception {
  final String message;
  final int? status;
  ComickException(this.message, [this.status]);

  @override
  String toString() => message;
}

dynamic _body(NetworkResponse<dynamic> res) {
  final data = res.data;
  final body = data is String && data.isNotEmpty ? _tryJson(data) : data;
  return body;
}

Object? _tryJson(String text) {
  try {
    return jsonDecode(text);
  } catch (e, st) {
    logError('ComickClient', e, st);
    return null;
  }
}

String _message(dynamic body, int status) {
  if (body is Map) {
    final msg = body['message'] ?? body['error'] ?? body['error_description'];
    if (msg != null) return '$msg';
  }
  return 'HTTP $status';
}

class ComickClient {
  final String Function() _token;
  final Future<bool> Function() _refresh;

  ComickClient(this._token, this._refresh);

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  final _cache = Lru<String, (DateTime, dynamic)>(120);
  final _inflight = <String, Future<dynamic>>{};

  Map<String, String> _headers({bool json = false}) => {
    'Accept': 'application/json',
    if (json) 'Content-Type': 'application/json',
    if (hasToken) 'Authorization': 'Bearer ${_token()}',
  };

  String _url(String path) {
    if (path.startsWith('http')) return path;
    if (path.startsWith('/me')) return '$comickResource$path';
    return '$comickHost$path';
  }

  Future<NetworkResponse<dynamic>> _send(
    Future<NetworkResponse<dynamic>> Function(Map<String, String> headers)
    call, {
    bool json = false,
  }) async {
    var res = await call(_headers(json: json));
    for (var attempt = 0; res.statusCode == 429 && attempt < 3; attempt++) {
      final after = int.tryParse(res.headers['retry-after']?.first ?? '');
      await Future<void>.delayed(
        Duration(seconds: (after ?? (attempt + 1) * 3).clamp(1, 20)),
      );
      res = await call(_headers(json: json));
    }
    final unauthorized = res.statusCode == 401 || res.statusCode == 403;
    if (unauthorized && hasToken && await _refresh()) {
      res = await call(_headers(json: json));
    }
    return res;
  }

  dynamic _checked(NetworkResponse<dynamic> res) {
    final body = _body(res);
    if (res.statusCode >= 400) {
      throw ComickException(_message(body, res.statusCode), res.statusCode);
    }
    return body;
  }

  Future<dynamic> get(
    String path, {
    Map<String, String>? query,
    Map<String, List<String>>? multi,
    Duration cache = Duration.zero,
  }) {
    final params = [
      for (final e in (query ?? const <String, String>{}).entries)
        '${e.key}=${Uri.encodeQueryComponent(e.value)}',
      for (final e in (multi ?? const <String, List<String>>{}).entries)
        for (final v in e.value) '${e.key}=${Uri.encodeQueryComponent(v)}',
    ];
    final url = params.isEmpty
        ? _url(path)
        : '${_url(path)}?${params.join('&')}';
    final key = '${hasToken ? 'u' : 'a'}|$url';
    if (cache > Duration.zero) {
      final hit = _cache[key];
      if (hit != null && DateTime.now().difference(hit.$1) < cache) {
        return Future.value(hit.$2);
      }
    }
    return _inflight[key] ??= _send((h) => _net.get(url, headers: h))
        .then((res) {
          final data = _checked(res);
          if (cache > Duration.zero) _cache[key] = (DateTime.now(), data);
          return data;
        })
        .whenComplete(() {
          _inflight.remove(key);
        });
  }

  Future<R> getParsed<R>(
    String path,
    R Function(String body) parse, {
    Map<String, String>? query,
  }) async {
    final res = await _send(
      (h) => _net.get(_url(path), query: query, headers: h, decodeJson: false),
    );
    if (res.statusCode >= 400) {
      throw ComickException(
        _message(_body(res), res.statusCode),
        res.statusCode,
      );
    }
    return compute(parse, '${res.data}');
  }

  Future<dynamic> write(
    String method,
    String path,
    Map<String, dynamic> body,
  ) async {
    final res = await _send(
      (h) => switch (method) {
        'POST' => _net.post(_url(path), data: jsonEncode(body), headers: h),
        'PATCH' => _net.patch(_url(path), data: jsonEncode(body), headers: h),
        _ => _net.put(_url(path), data: jsonEncode(body), headers: h),
      },
      json: true,
    );
    return _checked(res);
  }

  Future<void> delete(String path) async {
    final res = await _send((h) => _net.delete(_url(path), headers: h));
    if (res.statusCode >= 400 && res.statusCode != 404 && res.statusCode != 204) {
      throw ComickException(
        _message(_body(res), res.statusCode),
        res.statusCode,
      );
    }
  }
}
