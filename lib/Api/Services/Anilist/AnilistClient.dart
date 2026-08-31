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

class AnilistClient {
  static const _endpoint = 'https://graphql.anilist.co/';

  final String Function() _tokenProvider;
  int _rateLimitResetEpoch = 0;

  AnilistClient(this._tokenProvider);

  NetworkManager get _network => find();

  Future<Map<String, dynamic>> query(
    String gql, {
    Map<String, dynamic> variables = const {},
    bool useToken = true,
    bool showErrors = true,
  }) async {
    final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    if (_rateLimitResetEpoch > nowSec) {
      throw AnilistException('Rate limited, wait ${_rateLimitResetEpoch - nowSec}s');
    }

    final token = _tokenProvider();

    try {
      final res = await _network.post(
        _endpoint,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          if (useToken && token.isNotEmpty) 'Authorization': 'Bearer $token',
        },
        data: {'query': gql.trim(), 'variables': variables},
      );

      if (res.statusCode == 429) {
        final retryAfter =
            int.tryParse(res.headers['retry-after']?.first ?? '') ?? 60;
        _rateLimitResetEpoch = nowSec + retryAfter;
        throw AnilistException('Rate limited, retry in ${retryAfter}s');
      }

      final body = res.data;
      final map = body is Map<String, dynamic>
          ? body
          : jsonDecode(body.toString()) as Map<String, dynamic>;

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
    } on AnilistException {
      rethrow;
    } catch (e) {
      if (showErrors) snackString('AniList: $e');
      throw AnilistException(e.toString());
    }
  }
}
