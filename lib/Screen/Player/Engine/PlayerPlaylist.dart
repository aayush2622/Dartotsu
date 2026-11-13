import 'dart:io';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:path/path.dart' as p;

import 'PlayRequest.dart';

const videoExtensions = {
  '.mp4',
  '.mkv',
  '.avi',
  '.mov',
  '.webm',
  '.m4v',
  '.flv',
  '.wmv',
  '.ts',
  '.m2ts',
  '.mpg',
  '.mpeg',
  '.3gp',
  '.ogv',
};

const subtitleExtensions = ['srt', 'ass', 'ssa', 'vtt', 'sub'];

const audioExtensions = [
  'mka',
  'aac',
  'ac3',
  'flac',
  'mp3',
  'm4a',
  'ogg',
  'opus',
  'wav',
];

bool isVideoPath(String path) =>
    videoExtensions.contains(p.extension(path).toLowerCase());

int naturalCompare(String a, String b) {
  final left = RegExp(r'\d+|\D+')
      .allMatches(a.toLowerCase())
      .map((m) => m[0]!)
      .toList();
  final right = RegExp(r'\d+|\D+')
      .allMatches(b.toLowerCase())
      .map((m) => m[0]!)
      .toList();
  for (var i = 0; i < left.length && i < right.length; i++) {
    final x = left[i];
    final y = right[i];
    final nx = int.tryParse(x);
    final ny = int.tryParse(y);
    final c = nx != null && ny != null ? nx.compareTo(ny) : x.compareTo(y);
    if (c != 0) return c;
  }
  return left.length.compareTo(right.length);
}

List<String> videosIn(String folder) {
  final dir = Directory(folder);
  if (!dir.existsSync()) return const [];
  final files =
      [
        for (final e in dir.listSync(recursive: true, followLinks: false))
          if (e is File && isVideoPath(e.path)) e.path,
      ]..sort(
        (a, b) => naturalCompare(
          p.relative(a, from: folder),
          p.relative(b, from: folder),
        ),
      );
  return files;
}

PlayItem localItem(String path, int index) => PlayItem(
  key: path,
  title: p.basenameWithoutExtension(path),
  subtitle: p.basename(p.dirname(path)),
  number: index + 1.0,
  fixed: [v.Video(p.basename(path), path, 'Local')],
);

PlayItem networkItem(
  String url, {
  Map<String, String>? headers,
  String? title,
}) {
  final uri = Uri.tryParse(url);
  final name = title?.trim().isNotEmpty == true
      ? title!.trim()
      : (uri != null &&
                uri.pathSegments.isNotEmpty &&
                uri.pathSegments.last.isNotEmpty
            ? uri.pathSegments.last
            : url);
  return PlayItem(
    key: url,
    title: name,
    subtitle: uri?.host,
    fixed: [v.Video(name, url, 'Stream', headers: headers)],
  );
}

Map<String, String> refererHeaders(String host) {
  final value = host.trim();
  if (value.isEmpty) return const {};
  final uri = Uri.tryParse(value);
  return {
    'Referer': value,
    if (uri != null && uri.hasScheme) 'Origin': uri.origin,
  };
}
