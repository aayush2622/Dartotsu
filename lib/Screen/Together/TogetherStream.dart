import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

class TogetherStream {
  final String id;
  final String name;
  final v.Video video;

  const TogetherStream(this.id, this.name, this.video);

  static const _maxEncoded = 7000;

  static String idOf(String url) =>
      md5.convert(utf8.encode(url)).toString().substring(0, 8);

  static bool _remote(String url) {
    final link = url.trim();
    if (link.toLowerCase().startsWith('magnet:')) return true;
    final uri = Uri.tryParse(link);
    if (uri == null || !(uri.scheme == 'http' || uri.scheme == 'https')) {
      return false;
    }
    final host = uri.host.toLowerCase();
    return host.isNotEmpty &&
        host != 'localhost' &&
        !host.endsWith('.local') &&
        !host.endsWith('.localhost') &&
        !RegExp(
          r'^(127\.|10\.|192\.168\.|0\.0\.0\.0|169\.254\.|172\.(1[6-9]|2\d|3[01])\.|::1$|\[?f[cd][0-9a-f]{2}:|\[?fe80:)',
        ).hasMatch(host);
  }

  static List<v.Track>? _remoteTracks(List<v.Track>? list) =>
      list?.where((t) => t.file != null && _remote(t.file!)).toList();

  static bool shareable(String url) => _remote(url);

  static TogetherStream? from(String name, v.Video video) {
    if (!_remote(video.url)) return null;
    final shared = v.Video(
      video.title,
      video.url.trim(),
      video.quality,
      headers: video.headers,
      subtitles: _remoteTracks(video.subtitles),
      audios: _remoteTracks(video.audios),
    );
    var stream = TogetherStream(idOf(shared.url), name, shared);
    if (stream.encode().length > _maxEncoded) {
      shared
        ..subtitles = null
        ..audios = null;
      stream = TogetherStream(stream.id, name, shared);
    }
    return stream.encode().length > _maxEncoded ? null : stream;
  }

  String encode() {
    final json = jsonEncode({
      'i': id,
      'n': name,
      'v': {
        'title': video.title,
        'url': video.url,
        'quality': video.quality,
        'headers': video.headers,
        'subtitles': video.subtitles?.map((e) => e.toJson()).toList(),
        'audios': video.audios?.map((e) => e.toJson()).toList(),
      },
    });
    return base64Url.encode(gzip.encode(utf8.encode(json)));
  }

  static TogetherStream? decode(String payload) {
    try {
      final json = jsonDecode(
        utf8.decode(gzip.decode(base64Url.decode(payload))),
      ) as Map;
      final video = v.Video.fromJson(
        Map<String, dynamic>.from(json['v'] as Map),
      );
      if ('${json['i']}' != idOf(video.url.trim())) return null;
      if (!_remote(video.url)) return null;
      video
        ..subtitles = _remoteTracks(video.subtitles)
        ..audios = _remoteTracks(video.audios);
      return TogetherStream('${json['i']}', '${json['n']}', video);
    } catch (_) {
      return null;
    }
  }
}
