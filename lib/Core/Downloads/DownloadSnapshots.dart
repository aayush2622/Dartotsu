import 'dart:convert';
import 'dart:io';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:path/path.dart' as p;

import '../../Logger.dart';
import '../NetworkManager/NetworkManager.dart';
import '../Services/Model/Media.dart';
import '../State/State.dart';
import 'DownloadEngine.dart';

import 'package:dartotsu_extension_bridge/downloads.dart';

class DownloadSnapshot {
  final Media media;
  final List<DEpisode> episodes;
  final String? sourceId;

  const DownloadSnapshot(this.media, this.episodes, this.sourceId);
}

class DownloadSnapshots {
  DownloadSnapshots._();

  static Future<File?> _file(
    String serviceId,
    String mediaId, [
    String? fallbackTitle,
  ]) async {
    final task = find<DownloadEngine>().tasks
        .where((t) => t.serviceId == serviceId && t.mediaId == mediaId)
        .firstOrNull;
    final title = task?.mediaTitle ?? fallbackTitle;
    if (title == null) return null;
    final dir = await DownloadPaths.mediaDir(serviceId, mediaId, title);
    return File(p.join(dir.path, 'media.json'));
  }

  static Future<Map<String, Object?>?> _readJson(File file) async {
    try {
      if (!await file.exists()) return null;
      final json = jsonDecode(await file.readAsString());
      return json is Map ? Map<String, Object?>.from(json) : null;
    } catch (e) {
      logger('Snapshot read failed: $e', tag: 'DOWNLOAD');
      return null;
    }
  }

  static Future<DownloadSnapshot?> read(
    String serviceId,
    String mediaId,
  ) async {
    final file = await _file(serviceId, mediaId);
    if (file == null) return null;
    final json = await _readJson(file);
    final media = json?['media'];
    if (media is! Map) return null;
    try {
      final episodes = <DEpisode>[
        for (final e in (json?['episodes'] as List?) ?? const [])
          if (e is Map) DEpisode.fromJson(Map<String, dynamic>.from(e)),
      ];
      return DownloadSnapshot(
        Media.fromJson(Map<String, dynamic>.from(media)),
        episodes,
        json?['source'] as String?,
      );
    } catch (e) {
      logger('Snapshot parse failed: $e', tag: 'DOWNLOAD');
      return null;
    }
  }

  static Future<void> write(
    String serviceId,
    String mediaId, {
    Map<String, Object?>? media,
    String? title,
    List<DEpisode>? episodes,
    String? sourceId,
    bool create = false,
  }) async {
    try {
      final file = await _file(serviceId, mediaId, create ? title : null);
      if (file == null) return;
      final json = await _readJson(file) ?? <String, Object?>{};
      json
        ..['service'] = serviceId
        ..['id'] = mediaId
        ..['at'] = DateTime.now().millisecondsSinceEpoch;
      if (title != null) json['title'] = title;
      if (media != null) json['media'] = media;
      if (episodes != null) {
        json['episodes'] = [for (final e in episodes) e.toJson()];
      }
      if (sourceId != null) json['source'] = sourceId;
      await file.writeAsString(jsonEncode(json));
      final cover = (json['media'] as Map?)?['cover'] as String?;
      final target = File(p.join(file.parent.path, 'cover.jpg'));
      final marker = File(p.join(file.parent.path, '.cover'));
      final known = await marker.exists() ? await marker.readAsString() : '';
      if (cover != null &&
          cover.startsWith('http') &&
          (known != cover || !await target.exists())) {
        await find<NetworkManager>().download(cover, target.path);
        await marker.writeAsString(cover);
      }
    } catch (e) {
      logger('Snapshot write failed: $e', tag: 'DOWNLOAD');
    }
  }

  static Future<String?> folderOf(
    String serviceId,
    String mediaId,
    String title,
  ) async => (await _file(serviceId, mediaId, title))?.parent.path;
}
