import 'dart:async';
import 'dart:convert';
import 'dart:math';
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
    return _local(
      server,
      url,
      Uri.parse(url).path.toLowerCase().endsWith('.m3u8') ? '.m3u8' : '',
    );
  }

  Future<HttpServer> _bind() async {
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen(_handle);
    return server;
  }

  String _local(HttpServer server, String url, [String extension = '']) =>
      'http://127.0.0.1:${server.port}/p$extension?u=${Uri.encodeQueryComponent(url)}'
      '${extension.isEmpty ? '' : '&e=$extension'}';

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
      final uri = Uri.parse(target);
      if (uri.host.endsWith('googlevideo.com') &&
          uri.path == '/videoplayback' &&
          uri.queryParameters.containsKey('clen')) {
        await _chunked(request, target);
        return;
      }
      final out = {..._headers};
      final range = request.headers.value('range');
      if (range != null) out['Range'] = range;
      final reply = await find<NetworkManager>().stream(target, headers: out);
      final type = reply.headerMap['content-type'] ?? '';
      final playlist =
          type.toLowerCase().contains('mpegurl') ||
          Uri.parse(target).path.toLowerCase().endsWith('.m3u8');
      final whole =
          reply.statusCode == HttpStatus.ok ||
          reply.statusCode == HttpStatus.partialContent;
      response.statusCode = playlist && whole
          ? HttpStatus.ok
          : reply.statusCode;
      if (playlist && whole) {
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

  Future<void> _chunked(HttpRequest request, String target) async {
    final response = request.response;
    final range = request.headers.value('range');
    final match = RegExp(r'bytes=(\d*)-(\d*)').firstMatch(range ?? '');
    final start = int.tryParse(match?.group(1) ?? '') ?? 0;
    final wanted = int.tryParse(match?.group(2) ?? '');
    const size = 4 << 20;
    final network = find<NetworkManager>();
    final length = int.tryParse(
      Uri.parse(target).queryParameters['clen'] ?? '',
    );
    var gone = false;
    unawaited(
      response.done
          .then((_) {}, onError: (_) {})
          .whenComplete(() => gone = true),
    );
    var position = start;
    int? last;
    while (!gone) {
      var stop = wanted == null
          ? position + size - 1
          : min(wanted, position + size - 1);
      if (length != null) stop = min(stop, length - 1);
      final reply = await network.stream(
        target,
        headers: {..._headers, 'Range': 'bytes=$position-$stop'},
      );
      if (last == null) {
        final total = int.tryParse(
          RegExp(r'/(\d+)')
                  .firstMatch(reply.headerMap['content-range'] ?? '')
                  ?.group(1) ??
              '',
        );
        if (reply.statusCode != HttpStatus.partialContent || total == null) {
          response.statusCode = reply.statusCode;
          final type = reply.headerMap['content-type'];
          if (type != null) response.headers.set('content-type', type);
          await for (final chunk in reply.body) {
            response.add(chunk);
          }
          await response.close();
          return;
        }
        last = wanted == null ? total - 1 : min(wanted, total - 1);
        response.statusCode = range == null
            ? HttpStatus.ok
            : HttpStatus.partialContent;
        response.headers
          ..set('content-type', reply.headerMap['content-type'] ?? 'video/mp4')
          ..set('accept-ranges', 'bytes')
          ..set('content-length', '${last - start + 1}');
        if (range != null) {
          response.headers.set('content-range', 'bytes $start-$last/$total');
        }
      }
      await for (final chunk in reply.body) {
        if (gone) break;
        response.add(chunk);
      }
      position = stop + 1;
      if (position > last) break;
    }
    if (!gone) await response.close();
  }

  String _rewrite(String manifest, Uri base) {
    final server = _server;
    if (server == null) return manifest;
    String proxied(String url, String extension) =>
        _local(server, base.resolve(url).toString(), extension);
    final out = <String>[];
    for (final raw in manifest.split('\n')) {
      final line = raw.trim();
      if (line.isEmpty) continue;
      if (line.startsWith('#')) {
        final uri = RegExp(r'URI="([^"]+)"').firstMatch(line)?.group(1);
        final extension = line.startsWith('#EXT-X-MAP') ? '.mp4' : '.key';
        out.add(
          uri == null
              ? line
              : line.replaceFirst(
                  'URI="$uri"',
                  'URI="${proxied(uri, extension)}"',
                ),
        );
      } else {
        out.add(
          proxied(
            line,
            Uri.parse(line).path.toLowerCase().endsWith('.m3u8')
                ? '.m3u8'
                : '.ts',
          ),
        );
      }
    }
    return out.join('\n');
  }
}
