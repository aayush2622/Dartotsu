import 'dart:async';
import 'dart:io';

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Logger.dart';
import '../../../Utils/Functions/AppWindow.dart';

const kAuthPort = 43721;

bool get _desktop => Platform.isLinux || Platform.isWindows;

String authClientId({required String mobile, String desktop = ''}) =>
    _desktop && desktop.isNotEmpty ? desktop : mobile;

String authRedirect(String name, {String scheme = 'dartotsu'}) =>
    _desktop ? 'http://localhost:$kAuthPort/$name' : '$scheme://$name';

const _forwardPage =
    '''<!doctype html><meta charset="utf-8"><title>Dartotsu</title>
<body style="font-family:sans-serif;text-align:center;margin-top:20vh">
<p id="m">Finishing sign-in…</p>
<script>
var h = location.hash.slice(1);
if (h) { location.replace(location.pathname + '?' + h); }
else { document.getElementById('m').textContent = 'No sign-in data was received. You can close this tab.'; }
</script>''';

const _donePage =
    '''<!doctype html><meta charset="utf-8"><title>Dartotsu</title>
<body style="font-family:sans-serif;text-align:center;margin-top:20vh">
<p>Signed in. You can close this tab and return to Dartotsu.</p>''';

Future<HttpServer> _bind() async {
  try {
    return await HttpServer.bind(
      InternetAddress.loopbackIPv6,
      kAuthPort,
      v6Only: false,
    );
  } on SocketException {
    return HttpServer.bind(InternetAddress.loopbackIPv4, kAuthPort);
  }
}

Future<String> _viaLoopback(Uri url, Uri callback, Duration timeout) async {
  final server = await _bind();
  final done = Completer<String>();

  void respond(HttpRequest request, String body) {
    request.response
      ..headers.contentType = ContentType.html
      ..write(body);
    unawaited(request.response.close());
  }

  final sub = server.listen((request) {
    final uri = request.uri;
    if (uri.path != callback.path) {
      request.response.statusCode = HttpStatus.notFound;
      unawaited(request.response.close());
      return;
    }
    if (uri.queryParameters.isEmpty) {
      return respond(request, _forwardPage);
    }
    respond(request, _donePage);
    if (!done.isCompleted) {
      done.complete(callback.replace(query: uri.query).toString());
    }
  });

  try {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw StateError('Could not open the browser');
    }
    final result = await done.future.timeout(timeout);
    try {
      appWindow
        ?..show()
        ..focus();
    } catch (e, st) {
      logError('BrowserAuth', e, st);
    }
    return result;
  } finally {
    await sub.cancel();
    await server.close(force: true);
  }
}

Completer<String>? _pendingLink;
String? _pendingRedirect;

bool completeAuthLink(Uri uri) {
  final pending = _pendingLink;
  final redirect = _pendingRedirect;
  if (pending == null || redirect == null || pending.isCompleted) return false;
  final expected = Uri.parse(redirect);
  if (uri.scheme != expected.scheme || uri.host != expected.host) return false;
  pending.complete(uri.toString());
  return true;
}

Future<String> _viaSession(String url, Uri callback, Duration timeout) async {
  final link = Completer<String>();
  _pendingLink = link;
  _pendingRedirect = callback.toString();
  final session = FlutterWebAuth2.authenticate(
    url: url,
    callbackUrlScheme: callback.scheme,
    options: const FlutterWebAuth2Options(windowName: 'Dartotsu'),
  );
  unawaited(
    session.then<void>(
      (result) {
        if (!link.isCompleted) link.complete(result);
      },
      onError: (Object e, StackTrace st) async {
        await Future<void>.delayed(const Duration(seconds: 60));
        if (!link.isCompleted) link.completeError(e, st);
      },
    ),
  );
  try {
    return await link.future.timeout(timeout);
  } finally {
    if (identical(_pendingLink, link)) {
      _pendingLink = null;
      _pendingRedirect = null;
    }
  }
}

Future<String> browserAuthenticate({
  required String url,
  required String redirect,
  Duration timeout = const Duration(minutes: 5),
}) {
  final callback = Uri.parse(redirect);
  if (_desktop) return _viaLoopback(Uri.parse(url), callback, timeout);
  return _viaSession(url, callback, timeout);
}
