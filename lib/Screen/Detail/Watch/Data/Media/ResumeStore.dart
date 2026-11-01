import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:path/path.dart' as path;

import '../../../../../Logger.dart';
import '../../../../../Core/Preferences/StorageManager.dart';
import '../../../../../Core/Preferences/PrefManager.dart';
import '../../../../../Core/Services/MediaService.dart';
import '../../../../../Core/Services/Model/Media.dart';
import '../../../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../../../Core/State/State.dart';

enum ResumeKind { watch, read }

class ResumeEntry {
  final ResumeKind kind;
  final String serviceId;
  final Map<String, Object?> media;
  final String? sourceId;
  final String unitKey;
  final double number;
  final String title;
  final String? thumbnail;
  final int position;
  final int duration;
  final int at;
  final int? progress;
  final Map<String, Object?>? episode;

  const ResumeEntry({
    required this.kind,
    required this.serviceId,
    required this.media,
    required this.sourceId,
    required this.unitKey,
    required this.number,
    required this.title,
    required this.thumbnail,
    required this.position,
    required this.duration,
    required this.at,
    this.progress,
    this.episode,
  });

  String get mediaId => '${media['id']}';

  String get slot => '$serviceId/${kind.name}/$mediaId';

  String? get image {
    final shot = thumbnail;
    if (shot != null && shot.isNotEmpty) return shot;
    final cover = media['cover'];
    return cover is String && cover.isNotEmpty ? cover : null;
  }

  String get mediaTitle =>
      (media['userPreferredName'] ??
              media['name'] ??
              media['nameRomaji'] ??
              mediaId)
          as String;

  double get fraction => duration <= 0 ? 0 : position / duration;

  bool get isWatch => kind == ResumeKind.watch;

  Media buildMedia() => Media.fromJson(Map<String, dynamic>.from(media));

  ResumeEntry withThumbnail(String? value) => ResumeEntry(
    kind: kind,
    serviceId: serviceId,
    media: media,
    sourceId: sourceId,
    unitKey: unitKey,
    number: number,
    title: title,
    thumbnail: value,
    position: position,
    duration: duration,
    at: at,
    progress: progress,
    episode: episode,
  );

  ResumeEntry withProgress(int? value) => ResumeEntry(
    kind: kind,
    serviceId: serviceId,
    media: media,
    sourceId: sourceId,
    unitKey: unitKey,
    number: number,
    title: title,
    thumbnail: thumbnail,
    position: position,
    duration: duration,
    at: at,
    progress: value,
    episode: episode,
  );

  Map<String, Object?> toJson() => {
    'kind': kind.name,
    'service': serviceId,
    'media': media,
    'source': sourceId,
    'unit': unitKey,
    'number': number,
    'title': title,
    'thumb': thumbnail,
    'position': position,
    'duration': duration,
    'at': at,
    'progress': progress,
    'episode': episode,
  };

  static ResumeEntry? fromJson(Object? json) {
    if (json is! Map) return null;
    final media = json['media'];
    final service = json['service'];
    final unit = json['unit'];
    if (media is! Map || media['id'] == null) return null;
    if (service is! String || unit is! String) return null;
    return ResumeEntry(
      kind: json['kind'] == 'read' ? ResumeKind.read : ResumeKind.watch,
      serviceId: service,
      media: {
        for (final e in media.entries)
          if (!(e.key == 'manga' || e.key == 'anime') || e.value is Map)
            '${e.key}': e.value,
      },
      sourceId: json['source'] as String?,
      unitKey: unit,
      number: (json['number'] as num?)?.toDouble() ?? 0,
      title: json['title'] as String? ?? '',
      thumbnail: json['thumb'] as String?,
      position: (json['position'] as num?)?.toInt() ?? 0,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      at: (json['at'] as num?)?.toInt() ?? 0,
      progress: (json['progress'] as num?)?.toInt(),
      episode: json['episode'] is Map
          ? Map<String, Object?>.from(json['episode'] as Map)
          : null,
    );
  }
}

class ResumeStore {
  ResumeStore._();

  static const _key = 'resume';
  static const _limit = 30;
  static const _minSeconds = 10;
  static const _finished = 0.9;
  static const _verifyEvery = Duration(minutes: 15);

  static final entries = <ResumeEntry>[].liveList;
  static final _verified = <String, DateTime>{};
  static bool _loaded = false;
  static final sessionTick = 0.live;
  static String? sessionKey;

  static void endSession(MediaService service, Media media) {
    sessionKey = '${service.id}/${media.id}';
    sessionTick.value++;
  }

  static void reload() {
    _loaded = false;
    entries.value = [];
    _load();
  }

  static void _load() {
    if (_loaded) return;
    _loaded = true;
    final raw = PrefManager.getCustomVal<Map>(_key);
    final list = raw?['items'];
    if (list is! List) return;
    entries.value = [for (final item in list) ?ResumeEntry.fromJson(item)];
    unawaited(_pruneShots());
  }

  static Future<void> _pruneShots() async {
    try {
      final dir = await StorageManager.getDirectory(subPath: 'resume');
      if (dir == null) return;
      final used = {for (final e in entries) ?e.thumbnail};
      await for (final f in dir.list()) {
        if (f is File && !used.contains(f.path)) await f.delete();
      }
    } catch (e, st) {
      logError('ResumeStore', e, st);
    }
  }

  static void _persist() {
    PrefManager.setCustomVal<Map>(_key, {
      'items': [for (final e in entries) e.toJson()],
    });
  }

  static Map<String, Object?> slim(Media media) => _slim(media);

  static Map<String, Object?> _slim(Media media) {
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

  static bool hides(ResumeEntry entry, int? progress) =>
      progress != null && entry.number <= progress;

  static void record({
    required ResumeKind kind,
    required MediaService service,
    required Media media,
    required String? sourceId,
    required String unitKey,
    required double number,
    required String title,
    required String? thumbnail,
    required int position,
    required int duration,
    Map<String, Object?>? episode,
  }) {
    _load();
    final slot = '${service.id}/${kind.name}/${media.id}';
    if (service.isHiddenMedia(media)) {
      _drop(slot);
      return;
    }
    final done = duration > 0 && position / duration >= _finished;
    final started = kind == ResumeKind.watch
        ? position >= _minSeconds
        : position >= 1;
    if (done || !started) {
      if (done) _drop(slot);
      return;
    }
    final previous = entries.where((e) => e.slot == slot).firstOrNull;
    final keepShot =
        previous != null &&
        previous.unitKey == unitKey &&
        previous.thumbnail != null &&
        File(previous.thumbnail!).isAbsolute;
    if (previous != null && !keepShot) _deleteShot(previous.thumbnail);
    final entry = ResumeEntry(
      kind: kind,
      serviceId: service.id,
      media: _slim(media),
      sourceId: sourceId,
      unitKey: unitKey,
      number: number,
      title: title,
      thumbnail: keepShot ? previous.thumbnail : thumbnail,
      position: position,
      duration: duration,
      at: DateTime.now().millisecondsSinceEpoch,
      progress: media.userProgress,
      episode: episode,
    );
    entries.value = [
      entry,
      for (final e in entries)
        if (e.slot != slot) e,
    ].take(_limit).toList();
    _persist();
  }

  static void _deleteShot(String? thumbnail) {
    if (thumbnail == null || !thumbnail.endsWith('.img')) return;
    try {
      final file = File(thumbnail);
      if (file.isAbsolute && file.existsSync()) file.deleteSync();
      unawaited(FileImage(file).evict());
    } catch (e, st) {
      logError('ResumeStore', e, st);
    }
  }

  static void _drop(String slot) {
    if (!entries.any((e) => e.slot == slot)) return;
    for (final e in entries) {
      if (e.slot == slot) _deleteShot(e.thumbnail);
    }
    entries.value = [
      for (final e in entries)
        if (e.slot != slot) e,
    ];
    _persist();
  }

  static void remove(ResumeEntry entry) => _drop(entry.slot);

  static Future<void> snapshot({
    required ResumeKind kind,
    required MediaService service,
    required Media media,
    required List<int> bytes,
  }) async {
    if (bytes.isEmpty) return;
    final slot = '${service.id}/${kind.name}/${media.id}';
    try {
      final dir = await StorageManager.getDirectory(subPath: 'resume');
      if (dir == null) return;
      final name = slot.replaceAll(RegExp(r'[^A-Za-z0-9]'), '_');
      final file = File(
        path.join(
          dir.path,
          '${name}_${DateTime.now().millisecondsSinceEpoch}.img',
        ),
      );
      await file.writeAsBytes(bytes, flush: true);
      _load();
      for (final e in entries) {
        if (e.slot == slot) _deleteShot(e.thumbnail);
      }
      final next = [
        for (final e in entries)
          if (e.slot == slot) e.withThumbnail(file.path) else e,
      ];
      entries.value = next;
      _persist();
    } catch (e) {
      logger('Resume snapshot failed: $e', tag: 'RESUME');
    }
  }

  static void noteProgress(MediaService service, Media media, int? progress) {
    _load();
    find<SourceSubscriptions>().noteProgress(service, media, progress);
    if (service.isHiddenMedia(media)) {
      _drop('${service.id}/${ResumeKind.watch.name}/${media.id}');
      _drop('${service.id}/${ResumeKind.read.name}/${media.id}');
    }
    if (progress == null) return;
    var changed = false;
    final next = <ResumeEntry>[];
    for (final e in entries) {
      if (e.serviceId == service.id && e.mediaId == media.id) {
        changed = true;
        if (hides(e, progress)) {
          _deleteShot(e.thumbnail);
          continue;
        }
        next.add(e.withProgress(progress));
      } else {
        next.add(e);
      }
    }
    if (!changed) return;
    entries.value = next;
    _persist();
  }

  static List<ResumeEntry> visible(MediaService service) {
    _load();
    return [
      for (final e in entries)
        if (e.serviceId == service.id &&
            !hides(e, e.progress) &&
            !service.isHiddenMedia(e.buildMedia()))
          e,
    ];
  }

  static Future<void> verify(MediaService service) async {
    _load();
    final queries = service.getQueries;
    if (queries == null || !service.isLoggedIn) return;
    final now = DateTime.now();
    final due = [
      for (final e in visible(service).take(8))
        if (now.difference(_verified[e.slot] ?? DateTime(2000)) > _verifyEvery)
          e,
    ];
    for (final entry in due) {
      _verified[entry.slot] = now;
      try {
        final fresh = await queries.getMedia(entry.mediaId);
        if (fresh == null) continue;
        noteProgress(service, fresh, fresh.userProgress);
      } catch (e) {
        logger('Resume check failed: $e', tag: 'RESUME');
      }
    }
  }
}
