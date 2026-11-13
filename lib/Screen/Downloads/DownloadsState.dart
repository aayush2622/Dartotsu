import 'dart:async';
import 'dart:isolate';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Api/Services/Extension/Services.dart';
import '../../Core/Downloads/DownloadEngine.dart';

import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../Core/Downloads/DownloadScanner.dart';
import '../../Core/Downloads/DownloadTask.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import '../../Core/Offline/OfflineMode.dart';
import '../../Core/Offline/PendingWrites.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/State/State.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Feed/FeedNavigation.dart';
import '../Player/Engine/PlayRequest.dart';
import '../Player/Engine/PlayerPlaylist.dart';
import '../Player/PlayerLauncher.dart';
import '../Reader/Engine/ReaderRequest.dart';
import '../Reader/ReaderLauncher.dart';

class DownloadsState extends ScreenState {
  final engine = find<DownloadEngine>();
  final pending = find<PendingWrites>();
  final offline = find<OfflineMode>();
  final bytes = 0.live;
  final selected = <String>{}.live;

  bool get selecting => selected.value.isNotEmpty;

  void toggle(DownloadTask task) {
    final next = {...selected.value};
    if (!next.remove(task.id)) next.add(task.id);
    selected.value = next;
  }

  void clearSelection() => selected.value = {};

  void selectAll() {
    final tasks = tabs.index == 2 ? failed : done;
    selected.value = {for (final t in tasks) t.id};
  }

  List<DownloadTask> get selectedTasks => [
    for (final t in engine.tasks)
      if (selected.value.contains(t.id)) t,
  ];

  late final tabs = TabController(
    length: 3,
    vsync: vsync,
    animationDuration: animDuration(300),
  );

  Disposer? _watch;

  @override
  void onInit() {
    _measure();
    _watch = onAnyChange([engine.tasks], _measure);
  }

  @override
  void onClose() {
    _watch?.dispose();
    tabs.dispose();
    bytes.close();
    selected.close();
  }

  List<DownloadTask> get queue => [
    for (final t in engine.tasks)
      if (t.state.value != DownloadState.done &&
          t.state.value != DownloadState.failed)
        t,
  ];

  List<DownloadTask> get done => [
    for (final t in engine.tasks)
      if (t.isDone) t,
  ];

  List<DownloadTask> get failed => [
    for (final t in engine.tasks)
      if (t.state.value == DownloadState.failed) t,
  ];

  Map<String, List<DownloadTask>> get grouped {
    final out = <String, List<DownloadTask>>{};
    for (final t in done) {
      out.putIfAbsent(t.mediaSlot, () => []).add(t);
    }
    for (final list in out.values) {
      list.sort((a, b) => a.number.compareTo(b.number));
    }
    return out;
  }

  int _measureRun = 0;

  Future<void> _measure() async {
    final run = ++_measureRun;
    final paths = [
      for (final t in done)
        if (t.path != null) t.path!,
    ];
    final total = await Isolate.run(
      () => paths.fold<int>(0, (sum, path) => sum + pathSize(path)),
    );
    if (run == _measureRun) bytes.value = total;
  }

  Future<void> refresh() => engine.scanner.scan();

  MediaService? _serviceOf(DownloadTask task) {
    final services = find<MediaServiceController>().services;
    if (task.serviceId == localServiceId) return services.firstOrNull;
    return services.where((s) => s.id == task.serviceId).firstOrNull;
  }

  void openTitle(DownloadTask task) {
    if (task.serviceId == localServiceId) return;
    final service = _serviceOf(task);
    if (service == null) return;
    openDetail(
      context,
      service,
      Media.fromJson(Map<String, dynamic>.from(task.media)),
    );
  }

  Future<void> playLocal(LocalGroup group, int index) => openPlayer(
    PlayRequest(
      items: [for (final (i, f) in group.files.indexed) localItem(f, i)],
      index: index,
    ),
    context: context,
  );

  Future<void> read(DownloadTask task) async {
    final service = _serviceOf(task);
    if (service == null) return;
    final media = Media.fromJson(Map<String, dynamic>.from(task.media));
    if (task.serviceId == localServiceId) {
      final record = MediaRecords.of(service, media);
      if (record.saveProgress) {
        record.saveProgress = false;
        MediaRecords.save(service, media);
      }
    }
    final siblings = grouped[task.mediaSlot] ?? [task];
    final units = <WatchUnit>[];
    for (final t in siblings) {
      final json = t.episode;
      units.add(
        WatchUnit(
          raw: json == null
              ? DEpisode(episodeNumber: unitKeyOf(t.number))
              : DEpisode.fromJson(Map<String, dynamic>.from(json)),
          number: unitKeyOf(t.number),
          key: t.unitKey,
          value: t.number,
          title: t.title,
        ),
      );
    }
    final index = units.indexWhere((u) => u.key == task.unitKey);
    if (index < 0) return;
    final sourceId = task.sourceId;
    await openReader(
      ReaderRequest(
        service: service,
        media: media,
        source: sourceId == null ? null : installedSourceById(sourceId),
        units: units,
        index: index,
      ),
      context: context,
    );
  }

  Future<void> play(DownloadTask task) async {
    if (task.kind == DownloadKind.chapter) return read(task);
    final siblings = grouped[task.mediaSlot] ?? [task];
    final service = find<MediaServiceController>().services
        .where((s) => s.id == task.serviceId)
        .firstOrNull;
    final media = Media.fromJson(Map<String, dynamic>.from(task.media));
    final items = <PlayItem>[];
    for (final t in siblings) {
      final video = engine.localVideo(t.serviceId, t.mediaId, t.unitKey);
      if (video == null) continue;
      items.add(
        PlayItem(
          key: t.unitKey,
          title: t.title.isEmpty ? '${t.mediaTitle} ${t.unitKey}' : t.title,
          number: t.number,
          fixed: [video],
        ),
      );
    }
    final index = items.indexWhere((e) => e.key == task.unitKey);
    if (items.isEmpty || index < 0) return;
    await openPlayer(
      PlayRequest(
        service: service,
        media: service == null ? null : media,
        items: items,
        index: index,
      ),
      context: context,
    );
  }
}
