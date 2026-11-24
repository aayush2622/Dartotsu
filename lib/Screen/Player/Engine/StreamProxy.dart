import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';

class StreamProxy {
  HttpServer? _server;
  Map<String, String> _headers = const {};

  bool get running => _server != null;

  Future<String> wrap(String url, Map<String, String> headers) async {
    _headers = {...headers};
    final server = _server ??= await _bind();
    return _local(server, url);
  }

  Future<HttpServer> _bind() async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen(_handle);
    return server;
  }

  String _local(HttpServer server, String url) =>
      'http://127.0.0.1:${server.port}/p?u=${Uri.encodeQueryComponent(url)}';

  Future<void> stop() async {
    final server = _server;
    _server = null;
    try {
      await server?.close(force: true);
    } catch (_) {}
  }

  Future<void> _handle(HttpRequest request) async {
    final response = request.response;
    final target = request.uri.queryParameters['u'];
    if (target == null) {
      response.statusCode = HttpStatus.badRequest;
      await response.close();
      return;
    }
    try {
      final out = {..._headers};
      final range = request.headers.value('range');
      if (range != null) out['Range'] = range;
      final reply = await find<NetworkManager>().stream(target, headers: out);
      final type = reply.headerMap['content-type'] ?? '';
      final playlist =
          type.toLowerCase().contains('mpegurl') ||
          Uri.parse(target).path.toLowerCase().endsWith('.m3u8');
      response.statusCode = reply.statusCode;
      if (playlist && reply.statusCode == HttpStatus.ok) {
        final bytes = <int>[];
        await for (final chunk in reply.body) {
          bytes.addAll(chunk);
        }
        final body = utf8.decode(bytes, allowMalformed: true);
        final text = body.trimLeft().startsWith('#EXTM3U')
            ? _rewrite(body, Uri.parse(target))
            : body;
        response.headers.contentType = ContentType(
          'application',
          'vnd.apple.mpegurl',
          charset: 'utf-8',
        );
        response.write(text);
        await response.close();
        return;
      }
      for (final name in const [
        'content-type',
        'content-length',
        'content-range',
        'accept-ranges',
      ]) {
        final value = reply.headerMap[name];
        if (value != null) response.headers.set(name, value);
      }
      await for (final chunk in reply.body) {
        response.add(chunk);
      }
      await response.close();
    } catch (e) {
      logger('Stream proxy $target: $e', tag: 'PLAYER');
      try {
        response.statusCode = HttpStatus.badGateway;
        await response.close();
      } catch (_) {}
    }
  }

  String _rewrite(String manifest, Uri base) {
    final server = _server;
    if (server == null) return manifest;
    String proxied(String url) => _local(server, base.resolve(url).toString());
    final out = <String>[];
    for (final raw in manifest.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty) continue;
      if (line.startsWith('#')) {
        final uri = RegExp(r'URI="([^"]+)"').firstMatch(line)?.group(1);
        out.add(
          uri == null
              ? line
              : line.replaceFirst('URI="$uri"', 'URI="${proxied(uri)}"'),
        );
      } else {
        out.add(proxied(line));
      }
    }
    return out.join('\n');
  }
}
