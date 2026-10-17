import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartotsu_extension_bridge/ExtensionBridge.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rhttp/rhttp.dart';
import 'package:webview_all/webview_all.dart' show OffscreenWebViewSession;

import '../Preferences/PrefManager.dart';
import 'CookieManager.dart';
import 'DnsManager.dart';
import 'LogInterceptor.dart';
import '../State/State.dart';
import '../../Logger.dart';

class NetworkManager extends AppController implements BridgeNetwork {
  late RhttpClient _client;

  RhttpClient get client => _client;

  RhttpCompatibleClient? _httpClient;
  RhttpCompatibleClient? _downloadClient;

  @override
  RhttpCompatibleClient get httpClient =>
      _httpClient ??= RhttpCompatibleClient.of(_client);

  @override
  RhttpCompatibleClient get downloadClient =>
      _downloadClient ??= RhttpCompatibleClient.of(streamClient);

  @override
  String? get dns => dnsUrl;

  @override
  String? get proxy => proxyUrl;

  @override
  Future<String?> getCookies(String url) async {
    final cookies = cookieManager.getValidCookies(Uri.parse(url));
    if (cookies.isEmpty) return null;
    return jsonEncode(cookies.map((c) => c.toJson()).toList());
  }

  @override
  Future<void> setCookies(String url, List<String> cookies) async {
    final uri = Uri.parse(url);
    cookieManager.setCookies([
      for (final header in cookies) ?cookieManager.parseSingleCookie(header, uri),
    ]);
  }

  @override
  Future<bool> presentChallenge(Widget page) async {
    final navigator = appNavigator;
    if (navigator == null) return false;
    await navigator.push(MaterialPageRoute<void>(builder: (_) => page));
    return true;
  }

  @override
  String get userAgent {
    final custom = PrefName.customUserAgent.value;
    return custom.isNotEmpty ? custom : defaultUserAgent;
  }

  String get defaultUserAgent {
    final fetched = PrefName.fetchedUserAgent.value;
    return fetched.isNotEmpty ? fetched : _buildUserAgent();
  }

  String get dnsUrl {
    final custom = PrefName.customDnsUrl.value;
    return custom.isNotEmpty ? custom : DohProvider.cloudflare.url;
  }

  String? get proxyUrl {
    final v = PrefName.proxyUrl.value;
    return v.isEmpty ? null : v;
  }

  @override
  void onInit() {
    cookieManager.clearanceAgent = () => userAgent;
    _initClient();
    unawaited(_captureWebViewUserAgent());
    super.onInit();
  }


  Future<void> _captureWebViewUserAgent() async {
    if (PrefName.fetchedUserAgent.value.isNotEmpty) return;
    OffscreenWebViewSession? session;
    try {
      session = await OffscreenWebViewSession.create();
      final ua = await session.controller.getUserAgent();
      if (ua == null || ua.isEmpty) return;
      PrefName.fetchedUserAgent.value = ua;
      reinitialize();
    } catch (e, st) {
      logError('NetworkManager', e, st);
    } finally {
      try {
        await session?.close();
      } catch (_) {}
    }
  }

  final cookieManager = CookieManager();

  void reinitialize() {
    _initClient();
    unawaited(DartotsuExtensionBridge.networkChanged());
  }

  RhttpClient? _streamClient;

  RhttpClient get streamClient => _streamClient ??= _build(timeout: null);

  RhttpClient _initClient() {
    _streamClient = null;
    _httpClient = null;
    _downloadClient = null;
    try {
      return _client = _build(timeout: const Duration(seconds: 30));
    } catch (e, st) {
      logError('NetworkManager', e, st);
      rethrow;
    }
  }

  RhttpClient _build({required Duration? timeout}) {
    final settings = ClientSettings(
      userAgent: userAgent,
      throwOnStatusCode: false,
      tlsSettings: TlsSettings(
        rootCertSource: RootCertSource.webpki,
        verifyCertificates: PrefName.verifyTls.value,
      ),
      timeoutSettings: TimeoutSettings(
        connectTimeout: const Duration(seconds: 15),
        timeout: timeout,
      ),
      dnsSettings: DnsSettings.dynamic(
        resolver: (host) async {
          try {
            return await DnsManager.resolveWithDoh(
              host,
              dnsUrl,
              bootstrapIps:
                  DohProvider.forUrl(dnsUrl)?.bootstrapIps ?? const [],
            );
          } catch (e) {
            logger(
              'DoH failed for $host → fallback: $e',
              logLevel: LogLevel.error,
            );
            final res = await InternetAddress.lookup(host);
            return res.map((e) => e.address).toList();
          }
        },
      ),
      proxySettings: proxyUrl == null ? null : _buildProxySettings(proxyUrl!),
    );
    return RhttpClient.createSync(
      interceptors: [LogInterceptor(), cookieManager],
      settings: settings,
    );
  }

  static ProxySettings _buildProxySettings(String proxy) {
    if (!proxy.contains('://')) return ProxySettings.proxy('http://$proxy');
    return ProxySettings.proxy(proxy);
  }

  Future<NetworkResponse<dynamic>> get(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
    bool decodeJson = true,
  }) async {
    final res = await client.get(
      url,
      query: query,
      headers: _mapHeaders(headers),
      cancelToken: cancelToken,
    );

    return _wrap(res, decodeJson: decodeJson);
  }

  Future<NetworkResponse<dynamic>> post(
    String url, {
    Object? data,
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
    bool decodeJson = true,
  }) async {
    final res = await client.post(
      url,
      query: query,
      headers: _mapHeaders(headers),
      body: _mapBody(data),
      cancelToken: cancelToken,
    );

    return _wrap(res, decodeJson: decodeJson);
  }

  Future<NetworkResponse<dynamic>> put(
    String url, {
    Object? data,
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.put(
      url,
      query: query,
      headers: _mapHeaders(headers),
      body: _mapBody(data),
      cancelToken: cancelToken,
    );
    return _wrap(res);
  }

  Future<NetworkResponse<dynamic>> patch(
    String url, {
    Object? data,
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.patch(
      url,
      query: query,
      headers: _mapHeaders(headers),
      body: _mapBody(data),
      cancelToken: cancelToken,
    );
    return _wrap(res);
  }

  Future<NetworkResponse<dynamic>> delete(
    String url, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) async {
    final res = await client.delete(
      url,
      query: query,
      headers: _mapHeaders(headers),
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

  Future<HttpStreamResponse> stream(
    String url, {
    Map<String, String>? headers,
    CancelToken? cancelToken,
  }) => streamClient.getStream(
    url,
    headers: _mapHeaders(headers),
    cancelToken: cancelToken,
  );

  Future<void> download(
    String url,
    String savePath, {
    Map<String, String>? query,
    Map<String, String>? headers,
    CancelToken? cancelToken,
    void Function(int received, int total)? onProgress,
  }) async {
    final res = await streamClient.getStream(
      url,
      cancelToken: cancelToken,
      headers: _mapHeaders(headers),
      query: query,
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

  Future<NetworkResponse<dynamic>> _wrap(
    HttpTextResponse res, {
    bool decodeJson = true,
  }) async {
    final data = decodeJson
        ? await _decodeIfJson(res.body, res.headerMapList)
        : res.body;

    return NetworkResponse(
      statusCode: res.statusCode,
      statusMessage: _statusMessages[res.statusCode],
      data: data,
      headers: res.headerMapList,
      body: res.body,
    );
  }

  static const _isolateThreshold = 32 * 1024;

  static Future<dynamic> _decodeIfJson(
    String body,
    Map<String, List<String>> headers,
  ) async {
    final contentType =
        (headers['content-type'] ?? headers['Content-Type'])?.first ?? '';
    if (!contentType.contains('json')) return body;
    try {
      return body.length > _isolateThreshold
          ? await compute(_decodeBody, body)
          : jsonDecode(body);
    } catch (e, st) {
      logError('NetworkManager', e, st);
      return body;
    }
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
    return 'Dartotsu ($platform $os)';
  }

  @override
  void onClose() {
    cookieManager.dispose();
    _client.dispose();
    super.onClose();
  }
}

class NetworkResponse<T> {
  final int statusCode;
  final String? statusMessage;
  final T data;
  final Map<String, List<String>> headers;
  final String? body;

  NetworkResponse({
    required this.statusCode,
    required this.data,
    this.statusMessage,
    required this.headers,
    this.body,
  });

  Uint8List? _bytes;

  Uint8List? get rawBytes =>
      body == null ? null : (_bytes ??= Uint8List.fromList(utf8.encode(body!)));

  bool get isOk => statusCode >= 200 && statusCode < 300;
}

class NetworkException implements Exception {
  final int statusCode;
  final String? message;
  final dynamic data;

  NetworkException({required this.statusCode, this.message, this.data});

  @override
  String toString() =>
      'NetworkException($statusCode): ${message ?? 'Unknown error'}';
}

dynamic _decodeBody(String body) => jsonDecode(body);
