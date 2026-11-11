import 'package:rhttp/rhttp.dart';

import '../../Logger.dart';

class LogInterceptor extends Interceptor {
  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    request.additionalData['startTime'] = DateTime.now();
    logger('→ ${request.method.value} ${request.url}');
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

    final type = response.headerMap['content-type']?.split(';').first;
    final length = response.headerMap['content-length'];
    logger(
      '← ${response.statusCode} ${response.request.url}'
      '${ms != null ? ' (${ms}ms)' : ''}'
      '${type != null ? ' [$type${length != null ? ', $length B' : ''}]' : ''}',
    );

    if (response.headerMap['cf-mitigated']?.toLowerCase() == 'challenge') {
      logger('Cloudflare challenge on ${response.request.url}');
    }

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

    logger(
      '× ${req.method.value} ${req.url}'
      '${ms != null ? ' (${ms}ms)' : ''}\n'
      '  $exception',
    );

    return Interceptor.next();
  }
}
