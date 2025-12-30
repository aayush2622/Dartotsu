import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:rhttp/rhttp.dart';

import 'CookieManager.dart';
import 'DnsManager.dart';
import 'LogInterceptor.dart';

class NetworkManager extends GetxController {
  final String _userAgent = _buildUserAgent();
  late RhttpClient _client;

  RhttpClient get client => _client;

  @override
  onInit() {
    _initClient();
    super.onInit();
  }

  RhttpClient _initClient() {
    try {
      _client = RhttpClient.createSync(
        interceptors: [
          LogInterceptor(),
          CookieManager(),
        ],
        settings: ClientSettings(
          userAgent: _userAgent,
          throwOnStatusCode: false,
          tlsSettings: const TlsSettings(
            trustRootCertificates: true,
          ),
          timeoutSettings: const TimeoutSettings(
            connectTimeout: Duration(seconds: 15),
            timeout: Duration(seconds: 30),
          ),
          dnsSettings: DnsSettings.dynamic(
            resolver: (host) async {
              try {
                return await DnsManager.resolveWithDoh(host);
              } catch (e) {
                debugPrint('DoH failed for $host → fallback: $e');
                final res = await InternetAddress.lookup(host);
                return res.map((e) => e.address).toList();
              }
            },
          ),
        ),
      );
      return _client;
    } catch (_) {
      rethrow;
    }
  }

  /// Performs a GET request.
  /// [url]: The URL to send the GET request to.
  /// [query]: Optional query parameters to include in the request.
  /// [headers]: Optional headers to include in the request.
  /// [cancelToken]: Optional token to cancel the request.
  /// Returns a [NetworkResponse] containing the response data.
  Future<NetworkResponse<dynamic>> get(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.get(
      url,
      query: query,
      headers: _mapHeaders(headers),
      cancelToken: cancelToken,
    );

    return _wrap(res);
  }

  /// Performs a POST request.
  /// [url]: The URL to send the POST request to.
  /// [data]: Optional data to include in the request body.
  /// [query]: Optional query parameters to include in the request.
  /// [headers]: Optional headers to include in the request.
  /// [cancelToken]: Optional token to cancel the request.
  /// Returns a [NetworkResponse] containing the response data.
  Future<NetworkResponse<dynamic>> post(
    String url, {
    Object? data,
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.post(
      url,
      query: query,
      headers: _mapHeaders(headers),
      body: _mapBody(data),
      cancelToken: cancelToken,
    );

    return _wrap(res);
  }

  /// Performs a HEAD request.
  /// [url]: The URL to send the HEAD request to.
  /// [query]: Optional query parameters to include in the request.
  /// [headers]: Optional headers to include in the request.
  /// [cancelToken]: Optional token to cancel the request.
  /// Returns a [NetworkResponse] containing the response data.
  Future<NetworkResponse<void>> head(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.request(
      method: HttpMethod.head,
      url: url,
      query: query,
      headers: _mapHeaders(headers),
      cancelToken: cancelToken,
      expectBody: HttpExpectBody.text,
    );

    return NetworkResponse<void>(
      statusCode: res.statusCode,
      statusMessage: _statusMessages[res.statusCode],
      data: null,
      headers: res.headerMapList,
    );
  }

  /// Downloads a file from the specified URL and saves it to the given path.
  /// [url]: The URL of the file to download.
  /// [savePath]: The local path to save the downloaded file.
  /// [onProgress]: Optional callback to report download progress.
  /// [cancelToken]: Optional token to cancel the download.
  /// Returns a [Future] that completes when the download is finished.
  Future<void> download(
    String url,
    String savePath, {
    Map<String, String>? headers,
    CancelToken? cancelToken,
    void Function(int received, int total)? onProgress,
  }) async {
    final res = await client.getStream(
      url,
      cancelToken: cancelToken,
      headers: _mapHeaders(headers),
    );

    final file = File(savePath);
    final sink = file.openWrite();

    final total = int.tryParse(res.headerMap['content-length'] ?? '') ?? -1;

    int received = 0;

    try {
      await for (final chunk in res.body) {
        received += chunk.length;
        sink.add(chunk);
        onProgress?.call(received, total);
      }
    } finally {
      await sink.close();
    }
  }

  NetworkResponse<dynamic> _wrap(HttpTextResponse res) {
    final data = _decodeIfJson(res.body, res.headerMapList);

    return NetworkResponse(
        statusCode: res.statusCode,
        statusMessage: _statusMessages[res.statusCode],
        data: data,
        headers: res.headerMapList,
        rawBytes: utf8.encode(res.body));
  }

  static dynamic _decodeIfJson(
    String body,
    Map<String, List<String>> headers,
  ) {
    final contentType = headers['content-type']?.first;
    if (contentType?.contains('application/json') == true) {
      return jsonDecode(body);
    }
    return body;
  }

  static HttpHeaders? _mapHeaders(Map<String, String>? headers) =>
      headers == null ? null : HttpHeaders.rawMap(headers);

  static HttpBody? _mapBody(Object? data) {
    if (data == null) return null;
    if (data is HttpBody) return data;
    if (data is String) return HttpBody.text(data);
    if (data is Map || data is List) return HttpBody.json(data);
    return HttpBody.text(data.toString());
  }

  CancelToken newCancelToken() => CancelToken();
  bool isCancelError(Object e) => e is RhttpCancelException;

  static const _statusMessages = {
    200: 'OK',
    201: 'Created',
    204: 'No Content',
    400: 'Bad Request',
    401: 'Unauthorized',
    403: 'Forbidden',
    404: 'Not Found',
    500: 'Internal Server Error',
  };

  static String _buildUserAgent() {
    final platform = Platform.operatingSystem;
    final os = Platform.operatingSystemVersion.split(' ').first;
    final arch = Platform.version.split(' ').first;
    return 'Dartotsu ($platform $os; $arch)';
  }

  @override
  void onClose() {
    _client.dispose();
    super.onClose();
  }
}

class NetworkResponse<T> {
  final int statusCode;
  final String? statusMessage;
  final T data;
  final Map<String, List<String>> headers;
  final Uint8List? rawBytes;
  NetworkResponse({
    required this.statusCode,
    required this.data,
    this.statusMessage,
    required this.headers,
    this.rawBytes,
  });

  bool get isOk => statusCode >= 200 && statusCode < 300;
}

class NetworkException implements Exception {
  final int statusCode;
  final String? message;
  final dynamic data;

  NetworkException({
    required this.statusCode,
    this.message,
    this.data,
  });

  @override
  String toString() =>
      'NetworkException($statusCode): ${message ?? 'Unknown error'}';
}
