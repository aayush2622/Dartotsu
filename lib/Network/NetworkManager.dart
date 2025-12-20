import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' hide Response;

class NetworkManager extends GetxController {
  late final Dio dio;

  late final LogInterceptor _logInterceptor;

  bool _loggingEnabled = true;

  @override
  void onInit() {
    super.onInit();

    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 30),
        validateStatus: (s) => s != null && s < 500,
      ),
    );

    _setupLogging();
    _setupHeaders();
    _setupDns();
  }

  void _setupLogging() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.extra['startTime'] = DateTime.now();
          debugPrint('→ ${options.method} ${options.uri}');
          handler.next(options);
        },
        onResponse: (response, handler) {
          final start = response.requestOptions.extra['startTime'];
          int? ms;

          if (start is DateTime) {
            ms = DateTime.now().difference(start).inMilliseconds;
          }

          debugPrint(
            '← ${response.statusCode} ${response.requestOptions.uri}'
            '${ms != null ? ' (${ms}ms)' : ''}',
          );
          handler.next(response);
        },
        onError: (error, handler) {
          final start = error.requestOptions.extra['startTime'];
          int? ms;

          if (start is DateTime) {
            ms = DateTime.now().difference(start).inMilliseconds;
          }

          debugPrint(
            '× ${error.requestOptions.method} '
            '${error.requestOptions.uri}'
            '${ms != null ? ' (${ms}ms)' : ''}\n'
            '  ${error.message}',
          );
          handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.extra['startTime'] = DateTime.now();
          handler.next(options);
        },
      ),
    );
  }

  void _setupHeaders() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['User-Agent'] ??= _buildUserAgent();
          return handler.next(options);
        },
      ),
    );
  }

  String _buildUserAgent() {
    final platform = Platform.operatingSystem;
    final osVersion = Platform.operatingSystemVersion;
    final arch = Platform.version.split(' ').first;
    const appName = 'Dartotsu';
    return '$appName ($platform; $osVersion; $arch) Flutter/Dio';
  }

  void _setupDns() {
    // one day
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();

        return client;
      },
    );
  }

  void setLoggingEnabled(bool enabled) {
    if (_loggingEnabled == enabled) return;
    _loggingEnabled = enabled;

    dio.interceptors.remove(_logInterceptor);
    if (enabled) {
      dio.interceptors.add(_logInterceptor);
    }
  }

  bool get isLoggingEnabled => _loggingEnabled;

  Future<Response<T>> get<T>(
    String url, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return dio.get<T>(
      url,
      queryParameters: query,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<Response<T>> post<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return dio.post<T>(
      url,
      data: data,
      queryParameters: query,
      options: options,
      cancelToken: cancelToken,
    );
  }

  Future<void> download(
    String url,
    String savePath, {
    void Function(int received, int total)? onProgress,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    await dio.download(
      url,
      savePath,
      cancelToken: cancelToken,
      onReceiveProgress: onProgress,
      options: options ??
          Options(
            responseType: ResponseType.stream,
            followRedirects: true,
          ),
    );
  }

  CancelToken newCancelToken() => CancelToken();

  bool isCancelError(Object error) =>
      error is DioException && error.type == DioExceptionType.cancel;
}
