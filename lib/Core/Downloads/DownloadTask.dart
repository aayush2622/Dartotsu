import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

import '../State/State.dart';

import 'package:dartotsu_extension_bridge/downloads.dart';

enum DownloadState { queued, resolving, downloading, paused, done, failed }

enum DownloadKind { video, chapter }

class StreamProfile {
  final String label;
  final List<String> subtitles;
  final int? height;
  final List<String> audios;

  const StreamProfile(
    this.label,
    this.subtitles, {
    this.height,
    this.audios = const [],
  });

  Map<String, Object?> toJson() => {
    'label': label,
    'subtitles': subtitles,
    'height': height,
    'audios': audios,
  };

  static StreamProfile? fromJson(Object? json) {
    if (json is! Map || json['label'] is! String) return null;
    return StreamProfile(
      json['label'] as String,
      [
        if (json['subtitles'] is List)
          for (final s in json['subtitles'] as List) '$s'
        else if (json['subtitle'] is String)
          json['subtitle'] as String,
      ],
      height: (json['height'] as num?)?.toInt(),
      audios: [
        if (json['audios'] is List)
          for (final a in json['audios'] as List) '$a'
        else if (json['audio'] is String)
          json['audio'] as String,
      ],
    );
  }
}

class DownloadTask {
  final String id;
  final DownloadKind kind;
  final String serviceId;
  final String mediaId;
  final String mediaTitle;
  final String? cover;
  final String? sourceId;
  final String unitKey;
  final double number;
  final String title;
  final Map<String, Object?> media;
  final Map<String, Object?>? episode;
  final StreamProfile? profile;
  final int createdAt;

  Map<String, Object?>? video;
  List<Map<String, Object?>> subtitles;
  List<Map<String, Object?>> audios;
  String? path;
  List<String> subtitlePaths;
  List<String> audioPaths;
  bool fallback;
  bool segmented;
  bool folder;
  String? safPath;
  int savedBytes;
  int? height;
  int? torrentFile;
  final swarm = Live<String?>(null);

  int? _size;

  int get size => safPath != null
      ? savedBytes
      : _size ??= path == null ? 0 : pathSize(path!);

  void forgetSize() => _size = null;

  int _reported = 0;

  void report(int bytes, int size) {
    final now = DateTime.now().millisecondsSinceEpoch;
    if (now - _reported < 250 && !(size > 0 && bytes >= size)) return;
    _reported = now;
    received.value = bytes;
    total.value = size;
  }

  final finishing = false.live;
  final state = DownloadState.queued.live;
  final received = 0.live;
  final total = 0.live;
  final speed = 0.0.live;
  final error = Live<String?>(null);

  DownloadTask({
    required this.id,
    required this.kind,
    required this.serviceId,
    required this.mediaId,
    required this.mediaTitle,
    required this.cover,
    required this.sourceId,
    required this.unitKey,
    required this.number,
    required this.title,
    required this.media,
    required this.episode,
    required this.profile,
    required this.createdAt,
    this.video,
    List<Map<String, Object?>>? subtitles,
    List<Map<String, Object?>>? audios,
    this.path,
    List<String>? subtitlePaths,
    List<String>? audioPaths,
    this.fallback = false,
    this.segmented = false,
    this.folder = false,
    this.safPath,
    this.savedBytes = 0,
    this.height,
    this.torrentFile,
  }) : subtitles = subtitles ?? [],
       subtitlePaths = subtitlePaths ?? [],
       audios = audios ?? [],
       audioPaths = audioPaths ?? [];

  static String idOf(String serviceId, String mediaId, String unitKey) =>
      '$serviceId/$mediaId/$unitKey';

  String get mediaSlot => '$serviceId/$mediaId';

  bool get isNovel {
    if (kind != DownloadKind.chapter) return false;
    final file = path;
    if (file != null) {
      if (isBookFile(file)) return true;
      if (isComicArchive(file) || isPdfFile(file)) return false;
    }
    return '${media['format']}'.toLowerCase() == 'novel';
  }

  bool get isDone => state.value == DownloadState.done;

  bool get isActive =>
      state.value == DownloadState.resolving ||
      state.value == DownloadState.downloading;

  double get fraction {
    final t = total.value;
    return t <= 0 ? 0 : (received.value / t).clamp(0, 1).toDouble();
  }

  v.Video? get chosenVideo {
    final json = video;
    return json == null
        ? null
        : v.Video.fromJson(Map<String, dynamic>.from(json));
  }

  List<v.Track> get chosenSubtitles => [
    for (final json in subtitles)
      v.Track.fromJson(Map<String, dynamic>.from(json)),
  ];

  List<v.Track> get chosenAudios => [
    for (final json in audios)
      v.Track.fromJson(Map<String, dynamic>.from(json)),
  ];

  Map<String, Object?> toJson() => {
    'id': id,
    'kind': kind.name,
    'service': serviceId,
    'mediaId': mediaId,
    'mediaTitle': mediaTitle,
    'cover': cover,
    'source': sourceId,
    'unit': unitKey,
    'number': number,
    'title': title,
    'media': media,
    'episode': episode,
    'profile': profile?.toJson(),
    'created': createdAt,
    'video': video,
    'subtitles': subtitles,
    'audios': audios,
    'path': path,
    'subtitlePaths': subtitlePaths,
    'audioPaths': audioPaths,
    'fallback': fallback,
    'segmented': segmented,
    'folder': folder,
    'safPath': safPath,
    'savedBytes': savedBytes,
    'height': height,
    'torrentFile': torrentFile,
    'state': state.value.name,
    'received': received.value,
    'total': total.value,
    'error': error.value,
  };

  static DownloadTask? fromJson(Object? json) {
    if (json is! Map) return null;
    final id = json['id'];
    final service = json['service'];
    final mediaId = json['mediaId'];
    final unit = json['unit'];
    if (id is! String ||
        service is! String ||
        mediaId is! String ||
        unit is! String) {
      return null;
    }
    Map<String, Object?>? map(Object? o) =>
        o is Map ? Map<String, Object?>.from(o) : null;
    final task = DownloadTask(
      id: id,
      kind: DownloadKind.values.firstWhere(
        (e) => e.name == json['kind'],
        orElse: () => DownloadKind.video,
      ),
      serviceId: service,
      mediaId: mediaId,
      mediaTitle: json['mediaTitle'] as String? ?? mediaId,
      cover: json['cover'] as String?,
      sourceId: json['source'] as String?,
      unitKey: unit,
      number: (json['number'] as num?)?.toDouble() ?? 0,
      title: json['title'] as String? ?? '',
      media: map(json['media']) ?? {},
      episode: map(json['episode']),
      profile: StreamProfile.fromJson(json['profile']),
      createdAt: (json['created'] as num?)?.toInt() ?? 0,
      video: map(json['video']),
      subtitles: [
        if (json['subtitles'] is List)
          for (final s in json['subtitles'] as List)
            if (map(s) != null)
              map(s)!
            else if (map(json['subtitle']) != null)
              map(json['subtitle'])!,
      ],
      audios: [
        if (json['audios'] is List)
          for (final a in json['audios'] as List)
            if (map(a) != null)
              map(a)!
            else if (map(json['audio']) != null)
              map(json['audio'])!,
      ],
      path: json['path'] as String?,
      subtitlePaths: [
        if (json['subtitlePaths'] is List)
          for (final s in json['subtitlePaths'] as List) '$s'
        else if (json['subtitlePath'] is String)
          json['subtitlePath'] as String,
      ],
      audioPaths: [
        if (json['audioPaths'] is List)
          for (final a in json['audioPaths'] as List) '$a'
        else if (json['audioPath'] is String)
          json['audioPath'] as String,
      ],
      fallback: json['fallback'] == true,
      segmented: json['segmented'] == true,
      folder: json['folder'] == true,
      safPath: json['safPath'] as String?,
      savedBytes: (json['savedBytes'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt(),
      torrentFile: (json['torrentFile'] as num?)?.toInt(),
    );
    final saved = DownloadState.values.firstWhere(
      (e) => e.name == json['state'],
      orElse: () => DownloadState.paused,
    );
    task.state.value = switch (saved) {
      DownloadState.resolving ||
      DownloadState.downloading ||
      DownloadState.queued => DownloadState.paused,
      _ => saved,
    };
    task.received.value = (json['received'] as num?)?.toInt() ?? 0;
    task.total.value = (json['total'] as num?)?.toInt() ?? 0;
    task.error.value = json['error'] as String?;
    return task;
  }
}

String unitBaseName(DownloadTask task) => unitFileName(
  video: task.kind == DownloadKind.video,
  number: task.number,
  unitKey: task.unitKey,
  title: task.title,
);
