import 'DownloadCancel.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:path/path.dart' as p;

import '../../Api/Services/Extension/Services.dart';
import '../../Logger.dart';
import '../../Screen/Player/Engine/PlayRequest.dart';
import '../../Screen/Player/Engine/TorrentStream.dart';
import '../NotificationManager/NotificationManager.dart';
import '../Offline/NetStatus.dart';
import '../Preferences/PrefManager.dart';
import '../Services/Model/Media.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'Archives.dart';
import 'BookText.dart';
import 'ChapterFetcher.dart';
import 'DownloadPaths.dart';
import 'PdfPages.dart';
import 'DownloadPrefs.dart';
import 'DownloadQueue.dart';
import 'DownloadScanner.dart';
import 'DownloadService.dart';
import 'DownloadSnapshots.dart';
import 'DownloadTask.dart';
import 'FileFetcher.dart';
import 'Hls.dart';
import 'HlsFetcher.dart';

class DownloadBlocked implements Exception {
  final String message;
  const DownloadBlocked(this.message);

  @override
  String toString() => message;
}

bool isHlsUrl(String url) {
  final lower = url.toLowerCase();
  return lower.contains('.m3u8') || lower.contains('.mpd');
}

Future<bool> isHlsStream(String url, Map<String, String>? headers) async {
  if (isHlsUrl(url)) return true;
  if (isTorrentSource(url)) return false;
  if (videoExtensions.contains(extensionOf(url, fallback: ''))) return false;
  return probeHls(url, headers: headers);
}

class DownloadEngine extends AppController {
  static const _key = 'downloads';

  final tasks = <DownloadTask>[].liveList;

  final _cancels = <String, DownloadCancel>{};
  final _stopped = <String, DownloadState>{};
  final _waiting = <String>{};
  final _ffmpegCancels = <String, FfmpegCancel>{};
  Timer? _saveTimer;
  Disposer? _net;
  Disposer? _indexWatch;
  Map<String, DownloadTask>? _byId;
  final blockedReason = Live<String?>(null);
  late final scanner = DownloadScanner(this);

  void reload() {
    final raw = PrefManager.getCustomVal<Map>(_key);
    final list = raw?['items'];
    tasks.value = list is List
        ? [for (final item in list) ?DownloadTask.fromJson(item)]
        : [];
  }

  @override
  void onInit() {
    reload();
    _indexWatch = onAnyChange([tasks], () => _byId = null);
    final net = find<NetStatus>();
    _net = onAnyChange([
      net.online,
      net.kind,
      net.metered,
      downloadWifiOnlyPref.rx,
      downloadMeteredPref.rx,
    ], _syncNetwork);
    _syncNetwork();
    unawaited(scanner.start());
  }

  String? _policyBlock() {
    final net = find<NetStatus>();
    if (downloadWifiOnlyPref.value && net.kind.value == NetKind.mobile) {
      return getString.downloadWaitingWifi;
    }
    if (downloadMeteredPref.value && net.metered.value) {
      return getString.downloadWaitingMetered;
    }
    return null;
  }

  void _syncNetwork() {
    final net = find<NetStatus>();
    final reason = net.online.value ? _policyBlock() : null;
    blockedReason.value = reason;
    if (reason != null) {
      for (final task in tasks.toList()) {
        if (!task.isActive) continue;
        pause(task);
        _waiting.add(task.id);
        task.error.value = reason;
      }
      return;
    }
    if (!net.online.value) return;
    for (final id in _waiting.toList()) {
      final task = taskById(id);
      if (task != null) resume(task);
    }
    _waiting.clear();
    _pump();
  }

  void adoptScanned(List<DownloadTask> found) {
    var changed = false;
    final onDisk = {for (final t in found) t.id};
    for (final task in tasks.toList()) {
      final path = task.path;
      if (task.isDone && path != null && !pathExists(path)) {
        tasks.remove(task);
        changed = true;
      }
    }
    for (final task in found) {
      final existing = tasks.where((t) => t.id == task.id).firstOrNull;
      if (existing == null) {
        tasks.add(task);
        changed = true;
      } else if (existing.isDone &&
          existing.path != task.path &&
          onDisk.contains(existing.id) &&
          (existing.path == null || !pathExists(existing.path!))) {
        existing.path = task.path;
        existing.subtitlePath = task.subtitlePath;
        existing.audioPath = task.audioPath;
        changed = true;
      } else if (existing.isDone &&
          existing.subtitlePath == null &&
          task.subtitlePath != null) {
        existing.subtitlePath = task.subtitlePath;
        changed = true;
      }
    }
    if (!changed) return;
    tasks.refresh();
    _persist(now: true);
  }

  @override
  void onClose() {
    _net?.dispose();
    _indexWatch?.dispose();
    scanner.dispose();
    _saveTimer?.cancel();
  }

  void _persist({bool now = false}) {
    void write() => PrefManager.setCustomVal<Map>(_key, {
      'items': [for (final t in tasks) t.toJson()],
    });
    _saveTimer?.cancel();
    if (now) return write();
    _saveTimer = Timer(const Duration(seconds: 1), write);
  }

  DownloadTask? taskById(String id) {
    tasks.length;
    return (_byId ??= {for (final t in tasks) t.id: t})[id];
  }

  DownloadTask? taskFor(String serviceId, String mediaId, String unitKey) =>
      taskById(DownloadTask.idOf(serviceId, mediaId, unitKey)) ??
      (mediaId.startsWith('$localServiceId/')
          ? taskById(DownloadTask.idOf(localServiceId, mediaId, unitKey))
          : null);

  bool isDownloaded(String serviceId, String mediaId, String unitKey) =>
      taskFor(serviceId, mediaId, unitKey)?.isDone ?? false;

  v.Video? localVideo(String serviceId, String mediaId, String unitKey) {
    final task = taskFor(serviceId, mediaId, unitKey);
    final root = task?.path;
    if (task == null || !task.isDone || root == null) return null;
    final path = task.folder ? p.join(root, 'index.m3u8') : root;
    if (task.kind != DownloadKind.video || !File(path).existsSync()) {
      return null;
    }
    final sub = task.subtitlePath;
    final subs = sub != null && File(sub).existsSync()
        ? [
            v.Track(
              file: Uri.file(sub).toString(),
              label: task.chosenSubtitle?.label ?? getString.downloadSubtitles,
            ),
          ]
        : <v.Track>[];
    final audio = task.audioPath;
    final audios = audio != null && File(audio).existsSync()
        ? [
            v.Track(
              file: Uri.file(audio).toString(),
              label: task.chosenAudio?.label ?? getString.downloadAudio,
            ),
          ]
        : <v.Track>[];
    return v.Video(
      getString.downloadDownloaded,
      path,
      getString.downloadOffline,
      subtitles: subs,
      audios: audios,
      timeStamps: task.chosenVideo?.timeStamps,
    );
  }

  Future<List<PageUrl>?> localPages(
    String serviceId,
    String mediaId,
    String unitKey,
  ) async {
    final task = taskFor(serviceId, mediaId, unitKey);
    final path = task?.path;
    if (task == null ||
        !task.isDone ||
        path == null ||
        task.kind != DownloadKind.chapter ||
        task.isNovel) {
      return null;
    }
    if (isPdfFile(path)) {
      if (!File(path).existsSync()) return null;
      final pages = await renderPdf(path, archiveCache(path));
      return pages.isEmpty ? null : [for (final f in pages) PageUrl(f)];
    }
    if (isComicArchive(path)) {
      if (!File(path).existsSync()) return null;
      final pages = await extractComic(path, archiveCache(path));
      return pages.isEmpty ? null : [for (final f in pages) PageUrl(f)];
    }
    final files = pageFilesIn(Directory(path));
    return files.isEmpty ? null : [for (final f in files) PageUrl(f.path)];
  }

  Future<String?> localNovel(
    String serviceId,
    String mediaId,
    String unitKey,
  ) async {
    final task = taskFor(serviceId, mediaId, unitKey);
    final path = task?.path;
    if (task == null || !task.isDone || path == null || !task.isNovel) {
      return null;
    }
    final file = File(path);
    if (!file.existsSync()) return null;
    return readBookText(path);
  }

  bool hasLocalUnit(String serviceId, String mediaId, String unitKey) =>
      taskFor(serviceId, mediaId, unitKey)?.isDone ?? false;

  Map<String, Object?> slim(Media media) {
    final json = Map<String, Object?>.from(
      jsonDecode(jsonEncode(media.toJson())) as Map,
    );
    json
      ..remove('description')
      ..remove('tags')
      ..remove('synonyms')
      ..remove('trailer');
    return json;
  }

  void enqueue(List<DownloadTask> list) {
    for (final task in list) {
      final existing = taskFor(task.serviceId, task.mediaId, task.unitKey);
      if (existing != null) {
        if (existing.isDone || existing.isActive) continue;
        tasks.remove(existing);
      }
      tasks.add(task);
    }
    tasks.refresh();
    _persist(now: true);
    for (final task in list) {
      unawaited(_snapshot(task));
    }
    _pump();
  }

  Future<void> _snapshot(DownloadTask task) async {
    await DownloadSnapshots.write(
      task.serviceId,
      task.mediaId,
      media: task.media,
      title: task.mediaTitle,
      sourceId: task.sourceId,
    );
  }

  bool hasDownloads(String serviceId, String mediaId) =>
      tasks.any((t) => t.serviceId == serviceId && t.mediaId == mediaId);

  Future<void> refreshSnapshot(String serviceId, Media media) async {
    final fresh = slim(media);
    for (final t in tasks) {
      if (t.serviceId == serviceId && t.mediaId == media.id) {
        t.media
          ..clear()
          ..addAll(fresh);
      }
    }
    _persist();
    await DownloadSnapshots.write(
      serviceId,
      media.id,
      media: fresh,
      title: media.mainName,
    );
  }

  int get parallel => downloadParallelPref.value.clamp(1, 5);

  void _pump() {
    if (_policyBlock() != null) return;
    var active = tasks.where((t) => t.isActive).length;
    for (final task in tasks.toList()) {
      if (active >= parallel) break;
      if (task.state.value != DownloadState.queued) continue;
      active++;
      unawaited(_run(task));
    }
    _notifyOverall();
  }

  void pause(DownloadTask task) {
    final state = task.state.value;
    if (state == DownloadState.done || state == DownloadState.failed) return;
    _waiting.remove(task.id);
    if (task.isActive) {
      _stopped[task.id] = DownloadState.paused;
      _ffmpegCancels[task.id]?.cancel();
      unawaited(_cancels[task.id]?.cancel() ?? Future<void>.value());
    }
    task.state.value = DownloadState.paused;
    _persist(now: true);
    _pump();
  }

  void resume(DownloadTask task) {
    final state = task.state.value;
    if (state != DownloadState.paused && state != DownloadState.failed) return;
    task.error.value = null;
    task.state.value = DownloadState.queued;
    _persist(now: true);
    _pump();
  }

  void pauseAll() {
    for (final t in tasks.toList()) {
      pause(t);
    }
  }

  void resumeAll() {
    for (final t in tasks.toList()) {
      resume(t);
    }
  }

  Future<void> clearQueue() async {
    for (final t in tasks.toList()) {
      if (!t.isDone) await remove(t);
    }
  }

  void reorderQueue(List<DownloadTask> queue, int from, int to) {
    tasks.value = reorderWithin(tasks.toList(), queue, from, to);
    _persist(now: true);
  }

  void moveToTop(DownloadTask task) {
    final first = tasks.firstWhere(
      (t) => !t.isDone && t.state.value != DownloadState.failed,
      orElse: () => task,
    );
    tasks.value = moveBefore(tasks.toList(), task, first);
    _persist(now: true);
    if (task.state.value == DownloadState.paused) resume(task);
    _pump();
  }

  Future<void> remove(DownloadTask task, {bool deleteFiles = true}) async {
    if (task.isActive) {
      _stopped[task.id] = DownloadState.failed;
      _ffmpegCancels[task.id]?.cancel();
      unawaited(_cancels[task.id]?.cancel() ?? Future<void>.value());
    }
    _waiting.remove(task.id);
    tasks.remove(task);
    tasks.refresh();
    _persist(now: true);
    if (deleteFiles) await _deleteFiles(task);
    _pump();
  }

  final _finished = <String>{};

  void markFinished(String serviceId, String mediaId, String unitKey) {
    if (!downloadAutoDeletePref.value) return;
    if (isDownloaded(serviceId, mediaId, unitKey)) {
      _finished.add(DownloadTask.idOf(serviceId, mediaId, unitKey));
    }
  }

  void sweepFinished() {
    if (_finished.isEmpty) return;
    final ids = _finished.toList();
    _finished.clear();
    for (final id in ids) {
      final task = tasks.where((t) => t.id == id).firstOrNull;
      if (task != null && task.isDone) unawaited(remove(task));
    }
  }

  Future<void> _deleteFiles(DownloadTask task) async {
    for (final path in [task.path, task.subtitlePath, task.audioPath]) {
      if (path == null) continue;
      try {
        final dir = Directory(path);
        if (await dir.exists()) {
          await dir.delete(recursive: true);
          continue;
        }
        for (final f in [
          File(path),
          File('$path.part'),
          File('$path.part.map'),
        ]) {
          if (await f.exists()) await f.delete();
        }
        final files = Directory('${p.withoutExtension(path)}_files');
        if (task.isNovel && await files.exists()) {
          await files.delete(recursive: true);
        }
        final cache = Directory(archiveCache(path));
        if (await cache.exists()) await cache.delete(recursive: true);
      } catch (e) {
        logger('Delete failed: $e', tag: 'DOWNLOAD');
      }
    }
  }

  DEpisode _episodeOf(DownloadTask task) {
    final json = task.episode;
    if (json == null) throw DownloadBlocked(getString.downloadSourceMissing);
    return DEpisode.fromJson(Map<String, dynamic>.from(json));
  }

  Future<Source> _sourceFor(DownloadTask task, ItemType type) async {
    final sourceId = task.sourceId;
    if (sourceId == null) {
      throw DownloadBlocked(getString.downloadSourceMissing);
    }
    var source = installedSourceById(sourceId);
    if (source == null) {
      await ensureSourcesReady(type);
      source = installedSourceById(sourceId);
    }
    if (source == null) throw DownloadBlocked(getString.downloadSourceMissing);
    return source;
  }

  TorrServerAddon? torrentAddon() {
    final manager = tryFind<AddonManager>();
    if (manager == null) return null;
    try {
      return manager.get<TorrServerAddon>();
    } catch (_) {
      return null;
    }
  }

  Future<void> _fetchTorrent(
    DownloadTask task,
    v.Video video,
    Directory dir,
    String base,
    DownloadCancel cancel,
  ) async {
    final addon = torrentAddon();
    if (addon == null || !addon.installed.value) {
      throw DownloadBlocked(getString.playerTorrentMissing);
    }
    task.state.value = DownloadState.resolving;
    logger('Torrent add: ${task.id}', tag: 'DOWNLOAD');
    final info = await addon.addForDownload(
      url: video.url,
      title: task.mediaTitle,
    );
    Timer? poll;
    try {
      logger('Torrent files: ${info.fileStats.length}', tag: 'DOWNLOAD');
      final chosen = task.torrentFile;
      final file = chosen == null
          ? addon.pickFile(info, episode: task.number)
          : info.fileStats.where((f) => f.id == chosen).firstOrNull ??
                addon.pickFile(info, episode: task.number);
      if (file == null) throw DownloadBlocked(getString.downloadTorrentNoFile);
      task.state.value = DownloadState.downloading;
      poll = Timer.periodic(const Duration(seconds: 3), (_) async {
        try {
          final live = await addon.torrentInfo(info.hash);
          task.swarm.value = getString.downloadSwarm(
            live.connectedSeeders,
            live.activePeers,
          );
        } catch (_) {}
      });
      final url = addon.fileUrl(info.hash, file.id).toString();
      final target = File(p.join(dir.path, '$base.${extensionOf(file.path)}'));
      task.path = target.path;
      var tick = DateTime.now();
      var tickBytes = task.received.value;
      var attempt = 0;
      while (true) {
        try {
          await fetchFile(
            url: url,
            target: target,
            cancel: cancel,
            onProgress: (received, total) {
              task.report(received, total);
              final now = DateTime.now();
              final ms = now.difference(tick).inMilliseconds;
              if (ms >= 1000) {
                task.speed.value = (received - tickBytes) * 1000 / ms;
                tick = now;
                tickBytes = received;
                _notifyOverall();
              }
            },
          );
          return;
        } catch (e) {
          if (_stopped.containsKey(task.id)) rethrow;
          if (++attempt > 3) rethrow;
          await Future<void>.delayed(Duration(seconds: 3 * attempt));
        }
      }
    } finally {
      poll?.cancel();
      task.swarm.value = null;
      unawaited(addon.release(info.hash));
    }
  }

  FfmpegAddon? ffmpegAddon() {
    final manager = tryFind<AddonManager>();
    if (manager == null) return null;
    try {
      return manager.get<FfmpegAddon>();
    } catch (_) {
      return null;
    }
  }

  Future<bool> _fetchHls(
    DownloadTask task,
    Directory dir,
    String base,
    DownloadCancel cancel,
  ) async {
    final addon = ffmpegAddon();
    final ffmpeg = !task.folder && addon != null && addon.installed.value
        ? addon
        : null;
    if (ffmpeg == null && !task.folder) {
      throw DownloadBlocked(getString.downloadHlsNeedsFfmpeg);
    }
    final output = File(p.join(dir.path, '$base.mp4'));
    task.path = task.folder ? p.join(dir.path, base) : output.path;
    task.segmented = true;
    var reResolved = false;
    var attempt = 0;
    while (true) {
      final video = task.chosenVideo!;
      final audioFile = task.chosenAudio?.file;
      final audioUrl =
          audioFile != null &&
              audioFile.isNotEmpty &&
              await isHlsStream(audioFile, video.headers)
          ? audioFile
          : null;
      final job = FfmpegCancel();
      _ffmpegCancels[task.id] = job;
      try {
        await downloadHls(
          url: video.url,
          output: output,
          ffmpeg: ffmpeg,
          cancel: cancel,
          ffmpegCancel: job,
          headers: video.headers,
          height: task.height ?? task.profile?.height,
          audioLabel: task.chosenAudio?.label ?? task.profile?.audio,
          audioUrl: audioUrl,
          onProgress: (done, total) {
            task.received.value = done;
            task.total.value = total;
            _notifyOverall();
          },
          onFinishing: () => task.finishing.value = true,
        );
        return audioUrl != null;
      } catch (e) {
        if (_stopped.containsKey(task.id)) rethrow;
        final status = e is DownloadHttpError ? e.status : 0;
        final expired = status == 401 || status == 403 || status == 410;
        if (expired && !reResolved && task.episode != null) {
          reResolved = true;
          await _resolve(
            task,
            previous: StreamProfile(
              streamLabel(video),
              task.chosenSubtitle?.label,
              height: task.height ?? task.profile?.height,
              audio: task.chosenAudio?.label,
            ),
          );
          continue;
        }
        if (e is HlsUnsupported || e is FfmpegFailure) rethrow;
        if (status >= 400 && status < 500) rethrow;
        if (!await find<NetStatus>().check()) rethrow;
        if (++attempt > 3) rethrow;
        await Future<void>.delayed(Duration(seconds: 2 * attempt * attempt));
      } finally {
        _ffmpegCancels.remove(task.id);
        task.finishing.value = false;
      }
    }
  }

  Future<void> _fetchChapter(DownloadTask task, DownloadCancel cancel) async {
    final novel = task.isNovel;
    final source = await _sourceFor(
      task,
      novel ? ItemType.novel : ItemType.manga,
    );
    final episode = _episodeOf(task);
    task.state.value = DownloadState.resolving;
    final dir = await DownloadPaths.mediaDir(
      task.serviceId,
      task.mediaId,
      task.mediaTitle,
    );
    final base = unitBaseName(task);
    if (novel) {
      final text = await source.methods.getNovelContent(episode);
      if (text == null || text.trim().isEmpty) {
        throw DownloadBlocked(getString.readerNoText);
      }
      task.state.value = DownloadState.downloading;
      final html = await localizeNovelImages(
        text,
        Directory(p.join(dir.path, '${base}_files')),
        cancel: cancel,
      );
      final file = File(p.join(dir.path, '$base.html'));
      await file.writeAsString(html);
      task.path = file.path;
      task.total.value = 1;
      task.received.value = 1;
      return;
    }
    final pages = await source.methods.getPageList(episode);
    if (pages.isEmpty) throw DownloadBlocked(getString.readerNoPages);
    final target = Directory(p.join(dir.path, base));
    task.path = target.path;
    task.total.value = pages.length;
    task.state.value = DownloadState.downloading;
    await downloadPages(
      pages,
      target,
      cancel: cancel,
      onProgress: (done, total) {
        task.received.value = done;
        task.total.value = total;
        _notifyOverall();
      },
    );
  }

  Future<void> _resolve(DownloadTask task, {StreamProfile? previous}) async {
    final profile = previous ?? task.profile;
    final source = await _sourceFor(task, ItemType.anime);
    final list = await source.methods.getVideoList(_episodeOf(task));
    shareSubtitles(list);
    if (list.isEmpty) throw DownloadBlocked(getString.playerNoStreams);
    var index = 0;
    if (profile != null) {
      final found = bestStreamIndex(list, profile.label);
      if (found == null) {
        task.fallback = true;
      } else {
        index = found;
      }
    }
    final video = list[index];
    task.video = video.toJson();
    task.subtitle = null;
    final wanted = profile?.subtitle?.toLowerCase();
    if (wanted != null) {
      final track = video.subtitles
          ?.where((t) => (t.label ?? '').toLowerCase() == wanted)
          .firstOrNull;
      task.subtitle = track?.toJson();
    }
    task.audio = null;
    final wantedAudio = profile?.audio?.toLowerCase();
    if (wantedAudio != null) {
      final track = video.audios
          ?.where((t) => (t.label ?? '').toLowerCase() == wantedAudio)
          .firstOrNull;
      task.audio = track?.toJson();
    }
  }

  Future<void> _run(DownloadTask task) async {
    logger('Download start: ${task.id}', tag: 'DOWNLOAD');
    final cancel = DownloadCancel();
    _cancels[task.id] = cancel;
    task.error.value = null;
    var reResolved = false;
    var audioMerged = false;
    try {
      if (task.kind == DownloadKind.chapter) {
        await _fetchChapter(task, cancel);
        if (_stopped.containsKey(task.id)) return;
        task.speed.value = 0;
        task
          ..forgetSize()
          ..state.value = DownloadState.done;
        _persist(now: true);
        unawaited(_notifyDone(task));
        return;
      }
      if (task.video == null) {
        task.state.value = DownloadState.resolving;
        await _resolve(task);
      }
      if (_stopped.containsKey(task.id)) return;
      task.state.value = DownloadState.downloading;
      _persist();
      var video = task.chosenVideo!;
      final dir = await DownloadPaths.mediaDir(
        task.serviceId,
        task.mediaId,
        task.mediaTitle,
      );
      final base = unitBaseName(task);
      if (isTorrentSource(video.url)) {
        await _fetchTorrent(task, video, dir, base, cancel);
      } else if (await isHlsStream(video.url, video.headers)) {
        audioMerged = await _fetchHls(task, dir, base, cancel);
      } else {
        var attempt = 0;
        var tick = DateTime.now();
        var tickBytes = task.received.value;
        while (true) {
          final target = File(
            p.join(dir.path, '$base.${extensionOf(video.url)}'),
          );
          task.path = target.path;
          try {
            await fetchFile(
              url: video.url,
              target: target,
              cancel: cancel,
              headers: video.headers,
              connections: downloadConnectionsPref.value,
              onProgress: (received, total) {
                task.report(received, total);
                final now = DateTime.now();
                final ms = now.difference(tick).inMilliseconds;
                if (ms >= 1000) {
                  task.speed.value = (received - tickBytes) * 1000 / ms;
                  tick = now;
                  tickBytes = received;
                  _notifyOverall();
                }
              },
            );
            break;
          } catch (e) {
            if (_stopped.containsKey(task.id)) rethrow;
            final status = e is DownloadHttpError ? e.status : 0;
            final expired = status == 401 || status == 403 || status == 410;
            if (expired && !reResolved && task.episode != null) {
              reResolved = true;
              final old = task.chosenSubtitle?.label;
              await _resolve(
                task,
                previous: StreamProfile(
                  streamLabel(video),
                  old,
                  audio: task.chosenAudio?.label,
                ),
              );
              video = task.chosenVideo!;
              continue;
            }
            if (status >= 400 && status < 500) rethrow;
            if (!await find<NetStatus>().check()) rethrow;
            if (++attempt > 3) rethrow;
            await Future<void>.delayed(
              Duration(seconds: 2 * attempt * attempt),
            );
          }
        }
      }
      await _fetchSubtitle(task, dir, base, cancel);
      if (!audioMerged) await _fetchAudio(task, dir, base, cancel);
      if (downloadInfoFilePref.value) await _writeInfo(task, dir, base);
      task.speed.value = 0;
      task
        ..forgetSize()
        ..state.value = DownloadState.done;
      _persist(now: true);
      unawaited(_notifyDone(task));
    } catch (e, st) {
      if (_stopped.remove(task.id) != null) return;
      task.speed.value = 0;
      if (!await find<NetStatus>().check() && e is! DownloadBlocked) {
        _waiting.add(task.id);
        task.state.value = DownloadState.paused;
        task.error.value = getString.downloadWaitingConnection;
      } else {
        logger(
          'Download failed ${task.id}: $e\n$st',
          logLevel: LogLevel.error,
          tag: 'DOWNLOAD',
        );
        task.error.value = '$e';
        task.state.value = DownloadState.failed;
        unawaited(_notifyFailed(task));
      }
      _persist(now: true);
    } finally {
      _stopped.remove(task.id);
      _cancels.remove(task.id);
      _pump();
    }
  }

  Future<void> _fetchSubtitle(
    DownloadTask task,
    Directory dir,
    String base,
    DownloadCancel cancel,
  ) async {
    final track = task.chosenSubtitle;
    final url = track?.file;
    if (track == null || url == null || url.isEmpty) return;
    try {
      final label = safeName(track.label ?? 'sub');
      final ext = extensionOf(url, fallback: 'vtt');
      final target = File(p.join(dir.path, '$base.$label.$ext'));
      await fetchFile(
        url: url,
        target: target,
        cancel: cancel,
        headers: task.chosenVideo?.headers,
        onProgress: (_, _) {},
      );
      task.subtitlePath = target.path;
    } catch (e) {
      logger('Subtitle download failed: $e', tag: 'DOWNLOAD');
    }
  }

  Future<void> _fetchAudio(
    DownloadTask task,
    Directory dir,
    String base,
    DownloadCancel cancel,
  ) async {
    final track = task.chosenAudio;
    final url = track?.file;
    if (track == null || url == null || url.isEmpty) return;
    try {
      final label = safeName(track.label ?? 'audio');
      final ext = extensionOf(url, fallback: 'm4a');
      final target = File(p.join(dir.path, '$base.audio.$label.$ext'));
      await fetchFile(
        url: url,
        target: target,
        cancel: cancel,
        headers: task.chosenVideo?.headers,
        onProgress: (_, _) {},
      );
      task.audioPath = target.path;
    } catch (e) {
      logger('Audio download failed: $e', tag: 'DOWNLOAD');
    }
  }

  Future<void> _writeInfo(DownloadTask task, Directory dir, String base) async {
    try {
      final video = task.chosenVideo;
      await File(p.join(dir.path, '$base.json')).writeAsString(
        jsonEncode({
          'source': task.sourceId,
          'stream': video == null ? null : streamLabel(video),
          'quality': video?.quality,
          'subtitle': task.chosenSubtitle?.label,
          'timeStamps': video?.timeStamps?.map((e) => e.toJson()).toList(),
        }),
      );
    } catch (e) {
      logger('Info file failed: $e', tag: 'DOWNLOAD');
    }
  }

  int _lastOverall = 0;

  void _notifyOverall() {
    final notifications = find<NotificationManager>();
    final active = tasks.where((t) => t.isActive).toList();
    if (active.isEmpty) {
      unawaited(DownloadService.sync(active: false, title: '', text: ''));
      unawaited(notifications.cancel(_progressId));
      return;
    }
    final now = DateTime.now().millisecondsSinceEpoch;
    if (now - _lastOverall < 1000) return;
    _lastOverall = now;
    final live = downloadNotifyPref.value == 'live';
    final first = active.first;
    final more = active.length > 1 ? ' +${active.length - 1}' : '';
    final percent = first.total.value <= 0
        ? -1
        : (first.fraction * 100).round();
    final title = '${first.mediaTitle}$more';
    final text = live
        ? '${unitBaseName(first)} · ${percent < 0 ? '…' : '$percent%'}'
        : getString.downloadServiceText(active.length);
    unawaited(
      DownloadService.sync(
        active: true,
        title: title,
        text: text,
        percent: percent,
        sub: getString.downloadServiceText(active.length),
      ).then((ok) async {
        if (ok || !live) return;
        await notifications.showProgress(
          id: _progressId,
          title: title,
          body: text,
          percent: percent,
          payload: 'downloads',
        );
      }),
    );
  }

  static const _progressId = 7001;

  Future<void> _notifyDone(DownloadTask task) async {
    final mode = downloadNotifyPref.value;
    if (mode == 'off') return;
    final notifications = find<NotificationManager>();
    if (!tasks.any((t) => t.isActive)) {
      await notifications.cancel(_progressId);
    }
    await notifications.show(
      title: task.mediaTitle,
      body: getString.downloadFinished(unitBaseName(task)),
      imageUrl: task.cover,
      id: 7100 + task.id.hashCode.abs() % 800,
      payload: 'downloads',
    );
  }

  Future<void> _notifyFailed(DownloadTask task) async {
    if (downloadNotifyPref.value == 'off') return;
    await find<NotificationManager>().show(
      title: task.mediaTitle,
      body: getString.downloadFailedBody(unitBaseName(task)),
      id: 7100 + task.id.hashCode.abs() % 800,
      payload: 'downloads',
    );
  }
}
