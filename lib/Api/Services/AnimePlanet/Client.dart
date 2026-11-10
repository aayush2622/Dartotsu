import 'dart:async';
import 'dart:convert';

import 'package:rhttp/rhttp.dart' show HttpBody, RhttpException;

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Utils/Lru.dart';

class AnimePlanetException implements Exception {
  final String message;
  final int? status;

  AnimePlanetException(this.message, [this.status]);

  @override
  String toString() => message;
}

class AnimePlanetClient {
  static const _agent =
      'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0 Safari/537.36';

  static const _spacing = Duration(milliseconds: 250);

  NetworkManager get _net => find();

  final _cache = Lru<String, (DateTime, String)>(80);
  final _inflight = <String, Future<String>>{};
  Future<void> _gate = Future.value();

  void clear() => _cache.clear();

  Future<String> page(
    String path, {
    Map<String, String>? query,
    Duration cache = const Duration(minutes: 10),
  }) {
    final url = Uri.parse(
      'https://www.anime-planet.com$path',
    ).replace(queryParameters: query == null || query.isEmpty ? null : query);
    final key = url.toString();
    final hit = _cache[key];
    if (hit != null && DateTime.now().difference(hit.$1) < cache) {
      return Future.value(hit.$2);
    }
    return _inflight[key] ??= _fetch(url.toString())
        .then((body) {
          _cache[key] = (DateTime.now(), body);
          return body;
        })
        .whenComplete(() {
          _inflight.remove(key);
        });
  }

  Future<String> postForm(String path, Map<String, String> fields) {
    final turn = _gate;
    final next = Completer<void>();
    _gate = next.future;
    return turn.then((_) async {
      try {
        final res = await _net.post(
          'https://www.anime-planet.com$path',
          data: HttpBody.form(fields),
          decodeJson: false,
          headers: const {
            'User-Agent': _agent,
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'X-Requested-With': 'XMLHttpRequest',
          },
        );
        if (res.statusCode >= 400) {
          throw AnimePlanetException('HTTP ${res.statusCode}', res.statusCode);
        }
        final data = res.data;
        return data is String ? data.trim() : '$data';
      } finally {
        Timer(_spacing, next.complete);
      }
    });
  }

  Future<List<dynamic>> jsonList(String path) {
    final turn = _gate;
    final next = Completer<void>();
    _gate = next.future;
    return turn.then((_) async {
      try {
        final res = await _net.get(
          'https://www.anime-planet.com$path',
          decodeJson: false,
          headers: const {
            'User-Agent': _agent,
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'X-Requested-With': 'XMLHttpRequest',
          },
        );
        if (res.statusCode >= 400) {
          throw AnimePlanetException('HTTP ${res.statusCode}', res.statusCode);
        }
        final data = res.data;
        final json = data is String ? jsonDecode(data) : data;
        if (json is List) return json;
        throw AnimePlanetException('Unexpected answer', res.statusCode);
      } on FormatException {
        throw AnimePlanetException('Unexpected answer');
      } finally {
        Timer(_spacing, next.complete);
      }
    });
  }

  Future<Map<String, dynamic>> action(String path) {
    final turn = _gate;
    final next = Completer<void>();
    _gate = next.future;
    return turn.then((_) async {
      try {
        final res = await _net.get(
          'https://www.anime-planet.com$path',
          decodeJson: false,
          headers: const {
            'User-Agent': _agent,
            'Accept': 'application/json, text/javascript, */*; q=0.01',
            'X-Requested-With': 'XMLHttpRequest',
          },
        );
        if (res.statusCode == 403) {
          throw AnimePlanetException(
            'Anime-Planet asked for a browser check (HTTP 403)',
            403,
          );
        }
        if (res.statusCode >= 400) {
          throw AnimePlanetException('HTTP ${res.statusCode}', res.statusCode);
        }
        final data = res.data;
        try {
          final json = data is String ? jsonDecode(data) : data;
          if (json is Map<String, dynamic>) return json;
        } catch (_) {}
        final text = '$data'.trim();
        throw AnimePlanetException(
          text.isEmpty || text.length > 80
              ? 'Unexpected answer'
              : 'Anime-Planet answered: $text',
          res.statusCode,
        );
      } finally {
        Timer(_spacing, next.complete);
      }
    });
  }

  Future<String> _fetch(String url) {
    final turn = _gate;
    final next = Completer<void>();
    _gate = next.future;
    return turn.then((_) async {
      try {
        return await _request(url);
      } finally {
        Timer(_spacing, next.complete);
      }
    });
  }

  Future<String> _request(String url) async {
    NetworkResponse<dynamic>? res;
    for (var attempt = 0; attempt < 3; attempt++) {
      try {
        res = await _net.get(
          url,
          decodeJson: false,
          headers: const {
            'User-Agent': _agent,
            'Accept': 'text/html,application/xhtml+xml',
            'Accept-Language': 'en-US,en;q=0.9',
          },
        );
      } on RhttpException {
        if (attempt == 2) rethrow;
        await Future<void>.delayed(Duration(seconds: attempt + 1));
        continue;
      }
      final retry = res.statusCode == 429 || res.statusCode >= 500;
      if (!retry) break;
      final after = int.tryParse(res.headers['retry-after']?.first ?? '');
      await Future<void>.delayed(
        Duration(seconds: (after ?? (attempt + 1) * 2).clamp(1, 15)),
      );
    }
    final status = res!.statusCode;
    if (status == 404 || status == 410) {
      throw AnimePlanetException('Not found', status);
    }
    if (status == 403) {
      throw AnimePlanetException(
        'Anime-Planet asked for a browser check (HTTP 403)',
        status,
      );
    }
    if (status >= 400) {
      throw AnimePlanetException('HTTP $status', status);
    }
    final data = res.data;
    return data is String ? data : '$data';
  }
}
