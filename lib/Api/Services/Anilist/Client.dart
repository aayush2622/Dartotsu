import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

class AnilistException implements Exception {
  final String message;
  AnilistException(this.message);
  @override
  String toString() => message;
}

/// Decodes an AniList GraphQL response envelope and returns its `data` node.
/// Top-level so it can run inside a parse isolate.
Map<String, dynamic> anilistData(String body) {
  final map = jsonDecode(body) as Map<String, dynamic>;
  final errors = map['errors'];
  if (errors is List && errors.isNotEmpty) {
    throw AnilistException(
      (errors.first as Map)['message']?.toString() ?? 'Unknown error',
    );
  }
  final data = map['data'];
  if (data is! Map<String, dynamic>) {
    throw AnilistException('Malformed response');
  }
  return data;
}

class AnilistClient {
  static const _endpoint = 'https://graphql.anilist.co/';

  final String Function() _tokenProvider;
  int _rateLimitResetEpoch = 0;

  AnilistClient(this._tokenProvider);

  NetworkManager get _network => find();

  static const _slots = 6;
  static const _maxWait = 70;
  int _active = 0;
  final _queue = Queue<Completer<void>>();

  Future<void> _acquire() async {
    if (_active < _slots) {
      _active++;
      return;
    }
    final turn = Completer<void>();
    _queue.add(turn);
    await turn.future;
  }

  void _release() {
    if (_queue.isNotEmpty) {
      _queue.removeFirst().complete();
    } else {
      _active--;
    }
  }

  Future<void> _waitForWindow() async {
    final left =
        _rateLimitResetEpoch - DateTime.now().millisecondsSinceEpoch ~/ 1000;
    if (left <= 0) return;
    if (left > _maxWait) {
      throw AnilistException('Rate limited, wait ${left}s');
    }
    await Future<void>.delayed(Duration(seconds: left));
  }

  Map<String, String> _headers(bool useToken) {
    final token = _tokenProvider();
    return {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      if (useToken && token.isNotEmpty) 'Authorization': 'Bearer $token',
    };
  }

  bool _handle429(NetworkResponse res, int nowSec) {
    if (res.statusCode != 429) return false;
    final retryAfter =
        int.tryParse(res.headers['retry-after']?.first ?? '') ?? 60;
    final reset = nowSec + retryAfter;
    if (reset > _rateLimitResetEpoch) _rateLimitResetEpoch = reset;
    return true;
  }

  /// Raw response body — no decode. [query] decodes it on the caller's
  /// thread; the large list queries decode + parse inside an isolate via
  /// [anilistData].
  Future<String> _send(
    String gql,
    Map<String, dynamic> variables,
    bool useToken,
  ) async {
    await _acquire();
    try {
      for (var attempt = 0; ; attempt++) {
        await _waitForWindow();
        final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
        final res = await _network.post(
          _endpoint,
          headers: _headers(useToken),
          data: {'query': gql.trim(), 'variables': variables},
          decodeJson: false,
        );
        if (!_handle429(res, nowSec)) return res.data as String;
        if (attempt >= 2) {
          throw AnilistException('Rate limited, try again shortly');
        }
      }
    } finally {
      _release();
    }
  }

  /// Decoded `data` node. Use for light queries and mutations.
  Future<Map<String, dynamic>> query(
    String gql, {
    Map<String, dynamic> variables = const {},
    bool useToken = true,
    bool showErrors = true,
  }) async {
    try {
      return anilistData(await _send(gql, variables, useToken));
    } on AnilistException {
      rethrow;
    } catch (e) {
      if (showErrors) {
        snackString(getString.serviceError(getString.anilist, e.toString()));
      }
      throw AnilistException(e.toString());
    }
  }

  /// Raw response body for the large list queries.
  Future<String> queryRaw(
    String gql, {
    Map<String, dynamic> variables = const {},
    bool useToken = true,
  }) => _send(gql, variables, useToken);
}
