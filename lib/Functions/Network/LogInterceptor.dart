import 'package:dartotsu/Functions/Function.dart';
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

    final cloudflare = [403, 503].contains(response.statusCode) &&
        ["cloudflare-nginx", "cloudflare"]
            .contains(response.headerMap['server']?.toLowerCase());

    if (cloudflare) snackString('  ⚠️ Detected Cloudflare protection');

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
      '× ${req.method.value} ${req.url}'
      '${ms != null ? ' (${ms}ms)' : ''}\n'
      '  $exception',
    );

    return Interceptor.next();
  }
}
