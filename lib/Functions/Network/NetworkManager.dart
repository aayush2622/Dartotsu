import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:rhttp/rhttp.dart';
import 'dart:typed_data';

class NetworkManager extends GetxController {
  RhttpClient? _client;
  late final String _userAgent = _buildUserAgent();

  Future<RhttpClient> _ensureClient() async {
    if (_client != null) return _client!;

    _client = await RhttpClient.create(
      settings: ClientSettings(
        timeoutSettings: const TimeoutSettings(
          connectTimeout: Duration(seconds: 15),
          timeout: Duration(seconds: 30),
        ),
        userAgent: _userAgent,
        throwOnStatusCode: false,
        dnsSettings: DnsSettings.dynamic(
          resolver: (host) async {
            try {
              return await resolveWithBinaryDoh(
                host,
                Uri.parse(DohProvider.cloudflare.url),
              );
            } catch (e) {
              debugPrint('DoH resolution failed for $host: $e');
              return [];
            }
          },
        ),
        tlsSettings: const TlsSettings(trustRootCertificates: true),
      ),
      interceptors: kDebugMode ? [_LoggingInterceptor()] : const [],
    );

    return _client!;
  }

  List<String> parseDnsResponse(Uint8List data) {
    // something is  happening here idk myself
    int offset = 12; // skip header

    // Skip question
    while (data[offset] != 0) {
      offset += data[offset] + 1;
    }
    offset += 5;

    final results = <String>[];

    while (offset < data.length) {
      // name (pointer or inline)
      if ((data[offset] & 0xC0) == 0xC0) {
        offset += 2;
      } else {
        while (data[offset] != 0) {
          offset += data[offset] + 1;
        }
        offset++;
      }

      final type = (data[offset] << 8) | data[offset + 1];
      offset += 8; // TYPE + CLASS + TTL
      final rdLength = (data[offset] << 8) | data[offset + 1];
      offset += 2;

      if (type == 1 && rdLength == 4) {
        results.add(
          '${data[offset]}.${data[offset + 1]}.${data[offset + 2]}.${data[offset + 3]}',
        );
      }

      offset += rdLength;
    }

    return results;
  }

  Uint8List buildDnsQuery(String host) {
    // something is  happening here tooo
    final rand = Random.secure();
    final bytes = BytesBuilder();

    // Header
    bytes.add([
      rand.nextInt(256), rand.nextInt(256),
      0x01, 0x00, // standard query, recursion desired
      0x00, 0x01, // QDCOUNT = 1
      0x00, 0x00, // ANCOUNT
      0x00, 0x00, // NSCOUNT
      0x00, 0x00, // ARCOUNT
    ]);

    // Question
    for (final label in host.split('.')) {
      bytes.add([label.length]);
      bytes.add(label.codeUnits);
    }
    bytes.add([0x00]); // end of name
    bytes.add([0x00, 0x01]); // QTYPE = A
    bytes.add([0x00, 0x01]); // QCLASS = IN

    return bytes.toBytes();
  }

  Future<List<String>> resolveWithBinaryDoh(
    String host,
    Uri dohEndpoint,
  ) async {
    final query = buildDnsQuery(host);

    final res = await Rhttp.requestBytes(
      method: HttpMethod.post,
      url: dohEndpoint.toString(),
      headers: const HttpHeaders.map({
        HttpHeaderName.contentType: 'application/dns-message',
        HttpHeaderName.accept: 'application/dns-message',
      }),
      body: HttpBody.bytes(query),
    );

    final bytes = res.body;
    if (bytes.isEmpty) {
      throw Exception('Empty DoH response');
    }

    final answers = parseDnsResponse(bytes);
    if (answers.isEmpty) {
      throw Exception('No A records for $host');
    }

    return answers;
  }

  Future<NetworkResponse<dynamic>> get(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final client = await _ensureClient();

    final res = await client.get(
      url,
      query: query,
      headers: _mapHeaders(headers),
      cancelToken: cancelToken,
    );

    return _wrap(res);
  }

  Future<NetworkResponse<dynamic>> post(
    String url, {
    Object? data,
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final client = await _ensureClient();

    final res = await client.post(
      url,
      query: query,
      headers: _mapHeaders(headers),
      body: _mapBody(data),
      cancelToken: cancelToken,
    );

    return _wrap(res);
  }

  Future<NetworkResponse<void>> head(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final client = await _ensureClient();

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

  Future<void> download(
    String url,
    String savePath, {
    void Function(int received, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final client = await _ensureClient();
    final res = await client.getStream(url, cancelToken: cancelToken);

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
    );
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

  String _buildUserAgent() {
    final platform = Platform.operatingSystem;
    final os = Platform.operatingSystemVersion.split(' ').first;
    final arch = Platform.version.split(' ').first;
    return 'Dartotsu ($platform $os; $arch)';
  }

  @override
  void onClose() {
    _client?.dispose();
    super.onClose();
  }
}

enum DohProvider {
  cloudflare('https://cloudflare-dns.com/dns-query'),
  google('https://dns.google/dns-query'),
  adguard('https://dns-unfiltered.adguard.com/dns-query'),
  quad9('https://dns.quad9.net/dns-query'),
  alidns('https://dns.alidns.com/dns-query'),
  dnspod('https://doh.pub/dns-query'),
  dns360('https://doh.360.cn/dns-query'),
  quad101('https://dns.twnic.tw/dns-query'),
  mullvad('https://doh.mullvad.net/dns-query'),
  controld('https://freedns.controld.com/p0'),
  njalla('https://dns.njal.la/dns-query'),
  shecan('https://free.shecan.ir/dns-query'),
  libredns('https://doh.libredns.gr/dns-query');

  const DohProvider(this.url);
  final String url;
}

class _LoggingInterceptor extends Interceptor {
  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    request.additionalData['startTime'] = DateTime.now();
    debugPrint('→ ${request.method} ${request.url}');
    debugPrint('Headers: ${request.headers}');
    return Interceptor.next(request);
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async {
    final start = response.request.additionalData['startTime'];
    final ms = start is DateTime
        ? DateTime.now().difference(start).inMilliseconds
        : null;

    debugPrint(
      '← ${response.statusCode} ${response.request.url}'
      '${ms != null ? ' (${ms}ms)' : ''}',
    );

    return Interceptor.next();
  }

  @override
  Future<InterceptorResult<RhttpException>> onError(
    RhttpException exception,
  ) async {
    final req = exception.request;
    final start = req.additionalData['startTime'];
    final ms = start is DateTime
        ? DateTime.now().difference(start).inMilliseconds
        : null;

    debugPrint(
      '× ${req.method} ${req.url}'
      '${ms != null ? ' (${ms}ms)' : ''}\n'
      '  $exception',
    );

    return Interceptor.next();
  }
}

class NetworkResponse<T> {
  final int statusCode;
  final String? statusMessage;
  final T data;
  final Map<String, List<String>> headers;

  NetworkResponse({
    required this.statusCode,
    required this.data,
    this.statusMessage,
    required this.headers,
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
