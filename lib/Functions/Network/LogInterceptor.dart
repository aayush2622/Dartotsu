import 'package:flutter/cupertino.dart';
import 'package:rhttp/rhttp.dart';

class LogInterceptor extends Interceptor {
  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    request.additionalData['startTime'] = DateTime.now();
    debugPrint('→ ${request.method.value} ${request.url}');
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
