import 'dart:convert';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/SnackBar.dart';

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

  void _rateGuard(int nowSec) {
    if (_rateLimitResetEpoch > nowSec) {
      throw AnilistException(
        'Rate limited, wait ${_rateLimitResetEpoch - nowSec}s',
      );
    }
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
    _rateLimitResetEpoch = nowSec + retryAfter;
    return true;
  }

  /// Decoded `data` node. Use for light queries and mutations.
  Future<Map<String, dynamic>> query(
    String gql, {
    Map<String, dynamic> variables = const {},
    bool useToken = true,
    bool showErrors = true,
  }) async {
    final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    _rateGuard(nowSec);

    try {
      final res = await _network.post(
        _endpoint,
        headers: _headers(useToken),
        data: {'query': gql.trim(), 'variables': variables},
      );
      if (_handle429(res, nowSec)) {
        throw AnilistException('Rate limited, try again shortly');
      }
      final body = res.data;
      return anilistData(body is String ? body : jsonEncode(body));
    } on AnilistException {
      rethrow;
    } catch (e) {
      if (showErrors) snackString('AniList: $e');
      throw AnilistException(e.toString());
    }
  }

  /// Raw response body — no main-thread decode. The caller decodes + parses
  /// inside an isolate via [anilistData]. Use for the large list queries.
  Future<String> queryRaw(
    String gql, {
    Map<String, dynamic> variables = const {},
    bool useToken = true,
  }) async {
    final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    _rateGuard(nowSec);

    final res = await _network.post(
      _endpoint,
      headers: _headers(useToken),
      data: {'query': gql.trim(), 'variables': variables},
      decodeJson: false,
    );
    if (_handle429(res, nowSec)) {
      throw AnilistException('Rate limited, try again shortly');
    }
    return res.data as String;
  }
}
