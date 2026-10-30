import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import '../../Logger.dart';
import '../Services/Model/Media.dart';
import '../State/State.dart';
import 'Archives.dart';
import 'DownloadEngine.dart';
import 'DownloadPaths.dart';
import 'DownloadTask.dart';
import 'NameMatch.dart';

const localServiceId = 'local';

class LocalGroup {
  final String title;
  final String directory;
  final List<String> files;

  const LocalGroup(this.title, this.directory, this.files);
}

bool isVideoFile(String path) => videoExtensions.contains(
  p.extension(path).replaceFirst('.', '').toLowerCase(),
);

bool isSubtitleFile(String path) => subtitleExtensions.contains(
  p.extension(path).replaceFirst('.', '').toLowerCase(),
);

class DownloadScanner {
  final DownloadEngine engine;
  final groups = <LocalGroup>[].liveList;
  bool _scanning = false;
  StreamSubscription<FileSystemEvent>? _watch;
  Timer? _debounce;

  DownloadScanner(this.engine);

  Future<void> start() async {
    await scan();
    if (Platform.isIOS) return;
    try {
      final root = await DownloadPaths.root();
      _watch = root.watch(recursive: true).listen((event) {
        if (event.path.endsWith('.part')) return;
        _debounce?.cancel();
        _debounce = Timer(const Duration(seconds: 3), () => unawaited(scan()));
      }, onError: (_) {});
    } catch (e) {
      logger('Watching downloads failed: $e', tag: 'DOWNLOAD');
    }
  }

  void dispose() {
    _debounce?.cancel();
    unawaited(_watch?.cancel());
  }

  Future<void> scan() async {
    if (_scanning) return;
    _scanning = true;
    try {
      final root = await DownloadPaths.root();
      final found = <DownloadTask>[];
      final loose = <LocalGroup>[];
      final rootFiles = <String>[];
      await for (final entity in root.list()) {
        if (entity is File && isVideoFile(entity.path)) {
          rootFiles.add(entity.path);
        } else if (entity is Directory) {
          await _folder(entity, found, loose);
        }
      }
      if (rootFiles.isNotEmpty) {
        rootFiles.sort();
        loose.add(LocalGroup(p.basename(root.path), root.path, rootFiles));
      }
      groups.value = loose;
      engine.adoptScanned(found);
    } catch (e, st) {
      logError('DownloadScanner', e, st);
    } finally {
      _scanning = false;
    }
  }

  Future<Map<String, Object?>?> _info(Directory dir) async {
    final file = File(p.join(dir.path, 'media.json'));
    try {
      if (!await file.exists()) return null;
      final json = jsonDecode(await file.readAsString());
      if (json is! Map || json['media'] is! Map || json['service'] is! String) {
        return null;
      }
      return Map<String, Object?>.from(json);
    } catch (_) {
      return null;
    }
  }

  void _reading(
    Directory dir,
    Map<String, Object?>? info,
    List<File> files,
    List<DownloadTask> found,
  ) {
    final title = info?['title'] as String? ?? p.basename(dir.path);
    final serviceId = info?['service'] as String? ?? localServiceId;
    final media = info == null
        ? engine.slim(
            Media(
              id: '$localServiceId/$title',
              name: title,
              userPreferredName: title,
              shareLink: '',
              format: files.any((f) => isBookFile(f.path)) ? 'NOVEL' : 'MANGA',
            ),
          )
        : Map<String, Object?>.from(info['media'] as Map);
    final mediaId = info == null
        ? '$localServiceId/$title'
        : '${info['id'] ?? media['id']}';
    files.sort((a, b) => naturalCompare(a.path, b.path));
    final used = <String>{};
    var next = 1;
    final now = DateTime.now().millisecondsSinceEpoch;
    for (final file in files) {
      var number = episodeNumberOf(p.basename(file.path));
      if (number == null) {
        if (info != null) continue;
        while (used.contains(unitKeyOf(next.toDouble()))) {
          next++;
        }
        number = next.toDouble();
      }
      final key = unitKeyOf(number);
      if (!used.add(key)) continue;
      found.add(
        DownloadTask(
          id: DownloadTask.idOf(serviceId, mediaId, key),
          kind: DownloadKind.chapter,
          serviceId: serviceId,
          mediaId: mediaId,
          mediaTitle: title,
          cover: media['cover'] as String?,
          sourceId: info?['source'] as String?,
          unitKey: key,
          number: number,
          title: p.basenameWithoutExtension(file.path),
          media: media,
          episode: null,
          profile: null,
          createdAt: now,
          path: file.path,
        )..state.value = DownloadState.done,
      );
    }
  }

  Future<void> _folder(
    Directory dir,
    List<DownloadTask> found,
    List<LocalGroup> loose, {
    int depth = 0,
  }) async {
    final videos = <File>[];
    final subtitles = <File>[];
    final reading = <File>[];
    final folders = <Directory>[];
    await for (final entity in dir.list()) {
      if (entity is Directory) folders.add(entity);
      if (entity is! File) continue;
      if (isVideoFile(entity.path)) videos.add(entity);
      if (isSubtitleFile(entity.path)) subtitles.add(entity);
      if (isComicArchive(entity.path) ||
          isBookFile(entity.path) ||
          isPdfFile(entity.path)) {
        reading.add(entity);
      }
    }
    final info = await _info(dir);
    if (info == null && depth == 0) {
      for (final sub in folders) {
        await _folder(sub, found, loose, depth: 1);
      }
    }
    if (reading.isNotEmpty) _reading(dir, info, reading, found);
    if (videos.isEmpty) return;
    if (info == null) {
      videos.sort((a, b) => a.path.compareTo(b.path));
      loose.add(
        LocalGroup(p.basename(dir.path), dir.path, [
          for (final v in videos) v.path,
        ]),
      );
      return;
    }
    final media = Map<String, Object?>.from(info['media'] as Map);
    final mediaId = '${info['id'] ?? media['id']}';
    final serviceId = info['service'] as String;
    final title = info['title'] as String? ?? p.basename(dir.path);
    final now = DateTime.now().millisecondsSinceEpoch;
    for (final video in videos) {
      final number = episodeNumberOf(p.basename(video.path));
      if (number == null) continue;
      final key = unitKeyOf(number);
      final base = p.basenameWithoutExtension(video.path);
      final sub = subtitles
          .where((s) => p.basename(s.path).startsWith('$base.'))
          .map((s) => s.path)
          .firstOrNull;
      found.add(
        DownloadTask(
          id: DownloadTask.idOf(serviceId, mediaId, key),
          kind: DownloadKind.video,
          serviceId: serviceId,
          mediaId: mediaId,
          mediaTitle: title,
          cover: media['cover'] as String?,
          sourceId: info['source'] as String?,
          unitKey: key,
          number: number,
          title: '',
          media: media,
          episode: null,
          profile: null,
          createdAt: now,
          path: video.path,
          subtitlePath: sub,
        )..state.value = DownloadState.done,
      );
    }
  }
}
