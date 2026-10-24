import '../../../Logger.dart';
import 'dart:async';
import 'dart:convert';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Lru.dart';

const mangaUpdatesApi = 'https://api.mangaupdates.com/v1';

class MangaUpdatesException implements Exception {
  final String message;
  final int? status;
  MangaUpdatesException(this.message, [this.status]);

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
  final reason = body['reason'];
  if (reason is String && reason.isNotEmpty) return reason;
  final msg = body['message'];
  if (msg is String && msg.isNotEmpty) return msg;
  return 'HTTP $status';
}

class MangaUpdatesClient {
  final String Function() _token;

  MangaUpdatesClient(this._token);

  NetworkManager get _net => find();

  bool get hasToken => _token().isNotEmpty;

  final _cache = Lru<String, (DateTime, Map<String, dynamic>)>(120);
  final _inflight = <String, Future<Map<String, dynamic>>>{};

  Map<String, String> _headers({bool json = false}) => {
    'Accept': 'application/json',
    'User-Agent': 'Dartotsu/1.0',
    if (json) 'Content-Type': 'application/json',
    if (hasToken) 'Authorization': 'Bearer ${_token()}',
  };

  String _url(String path) =>
      path.startsWith('http') ? path : '$mangaUpdatesApi$path';

  Future<NetworkResponse<dynamic>> _send(
    Future<NetworkResponse<dynamic>> Function(Map<String, String> headers) call, {
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
    // MangaUpdates returns 412 for 5-second update throttle
    if (res.statusCode == 412) {
      await Future<void>.delayed(const Duration(milliseconds: 5200));
      res = await call(_headers(json: json));
    }
    return res;
  }

  Map<String, dynamic> _checked(NetworkResponse<dynamic> res) {
    final body = _body(res);
    if (res.statusCode >= 400) {
      throw MangaUpdatesException(_message(body, res.statusCode), res.statusCode);
    }
    return body;
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? query,
    Duration cache = Duration.zero,
  }) {
    final params = [
      for (final e in (query ?? const <String, String>{}).entries)
        '${e.key}=${Uri.encodeQueryComponent(e.value)}',
    ];
    final url = params.isEmpty ? _url(path) : '${_url(path)}?${params.join('&')}';
    final key = '${hasToken ? 'u' : 'a'}|$url';
    if (cache > Duration.zero) {
      final hit = _cache[key];
      if (hit != null && DateTime.now().difference(hit.$1) < cache) {
        return Future.value(hit.$2);
      }
    }
    return _inflight[key] ??= _fetch(url).then((data) {
      if (cache > Duration.zero) _cache[key] = (DateTime.now(), data);
      return data;
    }).whenComplete(() {
      _inflight.remove(key);
    });
  }

  Future<Map<String, dynamic>> _fetch(String url) async {
    final res = await _send((h) => _net.get(url, headers: h));
    return _checked(res);
  }

  Future<Map<String, dynamic>> post(String path, dynamic body) async {
    final res = await _send(
      (h) => _net.post(_url(path), data: jsonEncode(body), headers: h),
      json: true,
    );
    return _checked(res);
  }

  Future<Map<String, dynamic>> put(String path, dynamic body) async {
    final res = await _send(
      (h) => _net.put(_url(path), data: jsonEncode(body), headers: h),
      json: true,
    );
    return _checked(res);
  }

  Future<Map<String, dynamic>> delete(String path, [dynamic body]) async {
    final res = await _send(
      (h) => _net.delete(
        _url(path),
        data: body != null ? jsonEncode(body) : null,
        headers: h,
      ),
      json: body != null,
    );
    if (res.statusCode >= 400 && res.statusCode != 404) {
      throw MangaUpdatesException(_message(_body(res), res.statusCode), res.statusCode);
    }
    return _body(res);
  }

  Future<String> login(String username, String password) async {
    final res = await _send(
      (h) => _net.put(
        _url('/account/login'),
        data: jsonEncode({'username': username, 'password': password}),
        headers: h,
      ),
      json: true,
    );
    final body = _checked(res);
    final context = body['context'] as Map?;
    final token = context?['session_token'] as String?;
    if (token == null || token.isEmpty) {
      throw MangaUpdatesException(
        body['reason'] as String? ?? 'No session token returned',
      );
    }
    return token;
  }

  Future<void> logout() async {
    if (!hasToken) return;
    try {
      await _send((h) => _net.post(_url('/account/logout'), headers: h));
    } catch (e, st) {
      logError('Client', e, st);
    }
  }
}
