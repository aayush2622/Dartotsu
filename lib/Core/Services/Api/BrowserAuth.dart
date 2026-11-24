import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Logger.dart';
import '../../../Utils/Functions/AppWindow.dart';

const kAuthPort = 43721;

const _channel = MethodChannel('dartotsu/auth');

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

Future<List<HttpServer>> _bind() async {
  final v4 = await HttpServer.bind(InternetAddress.loopbackIPv4, kAuthPort);
  final v6 = await HttpServer.bind(
    InternetAddress.loopbackIPv6,
    kAuthPort,
    v6Only: true,
  ).then<HttpServer?>((server) => server, onError: (Object _) => null);
  return [v4, ?v6];
}

Future<void> Function()? _abortLoopback;

Future<String> _viaLoopback(Uri url, Uri callback, Duration timeout) async {
  await _abortLoopback?.call();
  final servers = await _bind();
  final done = Completer<String>();

  void respond(HttpRequest request, String body) {
    request.response
      ..headers.contentType = ContentType.html
      ..write(body);
    unawaited(request.response.close());
  }

  void handle(HttpRequest request) {
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
  }

  final subs = [for (final server in servers) server.listen(handle)];
  var closed = false;

  Future<void> close() async {
    if (closed) return;
    closed = true;
    for (final sub in subs) {
      await sub.cancel();
    }
    for (final server in servers) {
      await server.close(force: true);
    }
  }

  Future<void> abort() async {
    if (!done.isCompleted) done.completeError(const AuthCancelled());
    await close();
  }

  _abortLoopback = abort;
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
    if (identical(_abortLoopback, abort)) _abortLoopback = null;
    await close();
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
  if (expected.host.isEmpty && uri.path != expected.path) return false;
  pending.complete(uri.toString());
  return true;
}

class AuthCancelled implements Exception {
  const AuthCancelled();

  @override
  String toString() => 'Sign-in cancelled';
}

Future<String?> _awaitLink(
  Uri callback,
  Duration timeout,
  Future<bool> Function() open,
) async {
  final link = Completer<String>();
  _pendingLink = link;
  _pendingRedirect = callback.toString();
  var away = false;
  Timer? grace;
  final lifecycle = AppLifecycleListener(
    onHide: () {
      away = true;
      grace?.cancel();
    },
    onResume: () {
      if (!away) return;
      grace?.cancel();
      grace = Timer(const Duration(milliseconds: 2500), () {
        if (!link.isCompleted) link.completeError(const AuthCancelled());
      });
    },
  );
  try {
    if (!await open()) return null;
    return await link.future.timeout(timeout);
  } finally {
    grace?.cancel();
    lifecycle.dispose();
    if (identical(_pendingLink, link)) {
      _pendingLink = null;
      _pendingRedirect = null;
    }
  }
}

Future<bool> _openApp(String url) => launchUrl(
  Uri.parse(url),
  mode: LaunchMode.externalNonBrowserApplication,
).catchError((Object _) => false);

Future<bool> _openTab(String url) async {
  try {
    final opened = await _channel.invokeMethod<bool>('openTab', {'url': url});
    if (opened ?? false) return true;
  } catch (e, st) {
    logError('BrowserAuth', e, st);
  }
  return launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
}

Future<String> _viaTab(String url, Uri callback, Duration timeout) async {
  final result = await _awaitLink(callback, timeout, () => _openTab(url));
  if (result == null) throw StateError('Could not open the browser');
  return result;
}

Future<String> _viaWebSession(
  String url,
  Uri callback,
  Duration timeout,
) async {
  try {
    final result = await _channel
        .invokeMethod<String>('authenticate', {
          'url': url,
          'scheme': callback.scheme,
        })
        .timeout(
          timeout,
          onTimeout: () {
            unawaited(_cancelSession());
            throw const AuthCancelled();
          },
        );
    if (result == null || result.isEmpty) throw const AuthCancelled();
    return result;
  } on PlatformException catch (e) {
    if (e.code == 'CANCELED') throw const AuthCancelled();
    rethrow;
  }
}

Future<void> _cancelSession() async {
  try {
    await _channel.invokeMethod<void>('cancel');
  } catch (e, st) {
    logError('BrowserAuth', e, st);
  }
}

Future<String> browserAuthenticate({
  required String url,
  required String redirect,
  Duration timeout = const Duration(minutes: 5),
  bool preferApp = false,
}) async {
  final callback = Uri.parse(redirect);
  if (_desktop) return _viaLoopback(Uri.parse(url), callback, timeout);
  if (preferApp && (Platform.isAndroid || Platform.isIOS)) {
    final result = await _awaitLink(callback, timeout, () => _openApp(url));
    if (result != null) return result;
  }
  if (Platform.isAndroid) return _viaTab(url, callback, timeout);
  return _viaWebSession(url, callback, timeout);
}
