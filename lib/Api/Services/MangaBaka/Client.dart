import '../../../Logger.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Lru.dart';

const mangaBakaHost = 'https://api.mangabaka.org';
const mangaBakaApi = '$mangaBakaHost/v1';
const mangaBakaOAuth = 'https://mangabaka.org/auth/oauth2';

class MangaBakaException implements Exception {
  final String message;
  final int? status;
  MangaBakaException(this.message, [this.status]);

  @override
  String toString() => message;
}

Map<String, dynamic> _body(NetworkResponse<dynamic> res) {
  final data = res.data;
  final body = data is String && data.isNotEmpty ? _tryJson(data) : data;
  return body is Map<String, dynamic> ? body : <String, dynamic>{};
}

Object? _tryJson(String text) {
  try {
    return jsonDecode(text);
  } catch (e, st) {
    logError('Client', e, st);
    return null;
  }
}

String _message(Map<String, dynamic> body, int status) {
  final issues = body['issues'];
  if (issues is List && issues.isNotEmpty && issues.first is Map) {
    final first = issues.first as Map;
    return '${first['message'] ?? first['code'] ?? body['message']}';
  }
  return '${body['message'] ?? 'HTTP $status'}';
}

class MangaBakaClient {
  final String Function() _token;
  final Future<bool> Function() _refresh;

  MangaBakaClient(this._token, this._refresh);

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  final _cache = Lru<String, (DateTime, Map<String, dynamic>)>(120);
  final _inflight = <String, Future<Map<String, dynamic>>>{};
  Future<void> _searchGate = Future.value();

  Map<String, String> _headers({bool json = false}) => {
    'Accept': 'application/json',
    if (json) 'Content-Type': 'application/json',
    if (hasToken) 'Authorization': 'Bearer ${_token()}',
  };

  String _url(String path) => path.startsWith('http')
      ? path
      : path.startsWith('/v2/')
      ? '$mangaBakaHost$path'
      : '$mangaBakaApi$path';

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

  Map<String, dynamic> _checked(NetworkResponse<dynamic> res) {
    final body = _body(res);
    if (res.statusCode >= 400) {
      throw MangaBakaException(_message(body, res.statusCode), res.statusCode);
    }
    return body;
  }

  Future<Map<String, dynamic>> get(
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
    return _inflight[key] ??= _fetch(url, path.startsWith('/series/search'))
        .then((data) {
          if (cache > Duration.zero) _cache[key] = (DateTime.now(), data);
          return data;
        })
        .whenComplete(() {
          _inflight.remove(key);
        });
  }

  Future<Map<String, dynamic>> _fetch(String url, bool search) async {
    if (!search) {
      return _checked(await _send((h) => _net.get(url, headers: h)));
    }
    final turn = _searchGate;
    final done = Completer<void>();
    _searchGate = done.future;
    await turn;
    var hit = false;
    try {
      final res = await _send((h) => _net.get(url, headers: h));
      hit = res.headers['cf-cache-status']?.first.toUpperCase() == 'HIT';
      return _checked(res);
    } finally {
      unawaited(
        Future<void>.delayed(
          hit ? Duration.zero : const Duration(milliseconds: 2100),
        ).then((_) => done.complete()),
      );
    }
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
      throw MangaBakaException(
        _message(_body(res), res.statusCode),
        res.statusCode,
      );
    }
    return compute(parse, '${res.data}');
  }

  Future<Map<String, dynamic>> write(
    String method,
    String path,
    Map<String, dynamic> body,
  ) async {
    final res = await _send(
      (h) => switch (method) {
        'POST' => _net.post(_url(path), data: jsonEncode(body), headers: h),
        _ => _net.put(_url(path), data: jsonEncode(body), headers: h),
      },
      json: true,
    );
    return _checked(res);
  }

  Future<void> delete(String path) async {
    final res = await _send((h) => _net.delete(_url(path), headers: h));
    if (res.statusCode >= 400 && res.statusCode != 404) {
      throw MangaBakaException(
        _message(_body(res), res.statusCode),
        res.statusCode,
      );
    }
  }
}
