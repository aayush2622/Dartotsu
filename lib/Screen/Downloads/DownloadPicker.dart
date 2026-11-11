import 'dart:math';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Core/Downloads/DownloadEngine.dart';
import '../../Core/Downloads/DownloadSnapshots.dart';
import '../../Core/Downloads/DownloadQueue.dart';
import '../../Core/Downloads/DownloadTask.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/ChoiceSheet.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../Detail/Watch/WatchState.dart';
import '../Player/Engine/PlayRequest.dart';
import '../Player/Engine/TorrentStream.dart';
import 'Components/DownloadStreamSheet.dart';
import 'Components/TorrentFileSheet.dart';
import 'FfmpegPrompt.dart';

String downloadIdOf(WatchState state, WatchUnit unit) =>
    DownloadTask.idOf(state.service.id, state.current.id, unit.key);

Future<void> downloadUnits(
  BuildContext context,
  WatchState state,
  List<WatchUnit> requested,
) async {
  BuildContext live() =>
      context.mounted ? context : (appOverlayContext ?? appContext)!;
  final source = state.source.value;
  if (source == null) return snackString(getString.watchSourceMissing);
  final engine = find<DownloadEngine>();
  final fresh = engine
      .notQueued(
        state.service,
        state.current,
        _asDownloadUnits(
          state.anime || requested.length < 2
              ? requested
              : withoutDuplicateChapters(requested),
        ),
      )
      .map((u) => u.key)
      .toSet();
  final units = [
    for (final u in requested)
      if (fresh.contains(u.key)) u,
  ];
  if (units.isEmpty) return snackString(getString.downloadAlready);
  if (!state.anime) return _downloadChapters(state, source, units);
  final pick = await showCustomBottomDialog<StreamPick>(
    live(),
    DownloadStreamSheet(source: source, unit: units.first),
  );
  if (pick == null) return;
  final video = pick.videos[pick.index];
  logger(
    'Download picked: ${streamLabel(video)} ${video.url.length > 120 ? video.url.substring(0, 120) : video.url}',
    tag: 'DOWNLOAD',
  );
  int? height;
  var hlsAudios = const <HlsAudio>[];
  var folder = false;
  int? torrentFile;
  if (isTorrentSource(video.url)) {
    final addon = engine.torrentAddon();
    if (addon == null || !addon.installed.value) {
      return snackString(getString.playerTorrentMissing);
    }
    final chosen = await showCustomBottomDialog<int>(
      live(),
      TorrentFileSheet(
        addon: addon,
        url: video.url,
        title: state.current.mainName,
      ),
    );
    if (chosen == null) return;
    if (chosen != torrentFileAuto) torrentFile = chosen;
  }
  final hls = await isHlsStream(video.url, video.headers);
  final dash = !hls && await isDashStream(video.url, video.headers);
  if (dash) {
    final mode = await chooseHlsMode(live());
    if (mode == HlsMode.cancel) return;
    try {
      final manifest = await loadDash(video.url, headers: video.headers);
      if (manifest.protected) {
        throw const DashUnsupported('This stream is DRM protected');
      }
      if (manifest.videos.isEmpty) {
        throw const DashUnsupported('The DASH manifest has no video');
      }
      final sorted = [...manifest.videos]
        ..sort((a, b) => b.bandwidth.compareTo(a.bandwidth));
      var chosen = sorted.first;
      if (sorted.length > 1) {
        final picked = await showChoiceSheet<int>(
          live(),
          title: getString.playerQuality,
          icon: Icons.hd_rounded,
          selected: 0,
          options: [
            for (final (i, r) in sorted.indexed) ChoiceOption(i, r.quality),
          ],
        );
        if (picked == null) return;
        chosen = sorted[picked];
        height = chosen.height;
      }
      if (!chosen.isMuxed) {
        hlsAudios = [
          for (final (i, a) in dashAudioOptions(manifest.audios).indexed)
            HlsAudio(null, a.audioLabel, a.language, 'audio', i == 0),
        ];
      }
    } catch (e) {
      return snackString('$e');
    }
  }
  if (hls) {
    final mode = await chooseHlsMode(live());
    if (mode == HlsMode.cancel) return;
    folder = mode == HlsMode.folder;
    try {
      final master = await loadMaster(video.url, headers: video.headers);
      final variants = master.variants;
      HlsVariant? chosen = variants.length == 1 ? variants.first : null;
      if (variants.length > 1) {
        final sorted = [...variants]
          ..sort((a, b) => b.bandwidth.compareTo(a.bandwidth));
        final picked = await showChoiceSheet<int>(
          live(),
          title: getString.playerQuality,
          icon: Icons.hd_rounded,
          selected: 0,
          options: [
            for (final (i, v) in sorted.indexed) ChoiceOption(i, v.label),
          ],
        );
        if (picked == null) return;
        chosen = sorted[picked];
        height = chosen.height;
      }
      hlsAudios = audiosFor(master.audios, chosen);
    } catch (e) {
      return snackString('$e');
    }
  }
  final subs = [
    for (final t in video.subtitles ?? const <v.Track>[])
      if ((t.file ?? '').isNotEmpty) t,
  ];
  var subtitles = <v.Track>[];
  if (subs.isNotEmpty) {
    final picked = await showMultiChoiceSheet<int>(
      live(),
      title: getString.downloadPickSubtitle,
      icon: Icons.subtitles_rounded,
      options: [
        for (final (i, t) in subs.indexed)
          ChoiceOption(i, t.label ?? t.file ?? ''),
      ],
    );
    if (picked == null) return;
    subtitles = [for (final i in picked) subs[i]];
  }
  final audios = [
    for (final a in hlsAudios) v.Track(label: a.label),
    for (final t in video.audios ?? const <v.Track>[])
      if ((t.file ?? '').isNotEmpty) t,
  ];
  var pickedAudios = <v.Track>[];
  if (audios.isNotEmpty) {
    final required = hlsAudios.isNotEmpty;
    final defaultIndex = required
        ? max(0, hlsAudios.indexWhere((a) => a.isDefault))
        : (hls && video.audios?.isNotEmpty == true ? 0 : -1);
    final picked = await showMultiChoiceSheet<int>(
      live(),
      title: getString.downloadPickAudio,
      icon: Icons.audiotrack_rounded,
      initial: defaultIndex >= 0 ? {defaultIndex} : const {},
      options: [
        for (final (i, t) in audios.indexed)
          ChoiceOption(i, t.label ?? t.file ?? ''),
      ],
    );
    if (picked == null) return;
    final indexes = picked.isEmpty && required ? [defaultIndex] : picked;
    pickedAudios = [for (final i in indexes) audios[i]];
  }
  final profile = StreamProfile(
    streamLabel(video),
    [for (final t in subtitles) ?t.label],
    height: height,
    audios: [for (final t in pickedAudios) ?t.label],
  );
  engine.queueVideos(
    service: state.service,
    media: state.current,
    source: source,
    units: _asDownloadUnits(units),
    profile: profile,
    video: video,
    height: height,
    subtitles: subtitles,
    audios: pickedAudios,
    folder: folder,
    torrentFile: torrentFile,
  );
  logger('Download queued: ${units.length}', tag: 'DOWNLOAD');
  snackString(getString.downloadQueued(units.length));
}

void _downloadChapters(WatchState state, Source source, List<WatchUnit> units) {
  find<DownloadEngine>().queueChapters(
    service: state.service,
    media: state.current,
    source: source,
    units: _asDownloadUnits(units),
  );
  logger('Download queued: ${units.length}', tag: 'DOWNLOAD');
  snackString(getString.downloadQueued(units.length));
}

List<DownloadUnit> _asDownloadUnits(List<WatchUnit> units) => [
  for (final u in units)
    DownloadUnit(key: u.key, number: u.value, title: u.title, raw: u.raw),
];

const _metaOnly = 'metaOnly';

Future<void> _saveMetadata(WatchState state) async {
  final media = state.current;
  final title = media.mainName;
  final engine = find<DownloadEngine>();
  await DownloadSnapshots.write(
    state.service.id,
    media.id,
    media: engine.slim(media),
    title: title,
    episodes: [for (final u in state.units) u.raw],
    sourceId: state.source.value?.id,
    create: true,
  );
  final folder = await DownloadSnapshots.folderOf(
    state.service.id,
    media.id,
    title,
  );
  if (folder == null) return snackString(getString.downloadMetaFailed);
  snackString(getString.downloadMetaSaved(folder), clipboard: folder);
}

Future<void> downloadMenu(BuildContext context, WatchState state) async {
  final next = state.next;
  final all = state.anime
      ? state.units.toList()
      : withoutDuplicateChapters(state.units.toList());
  final unwatched = [
    for (final u in all)
      if (!u.isWatched(state.progress)) u,
  ];
  final chunks = state.chunks;
  final shown = chunks.isEmpty
      ? const <WatchUnit>[]
      : chunks[state.chunk.value.clamp(0, chunks.length - 1)];
  final from = next == null ? 0 : all.indexWhere((u) => u.value >= next.value);
  final upcoming = from < 0 ? const <WatchUnit>[] : all.sublist(from);
  final options = <String, List<WatchUnit>>{
    if (next != null) 'next': [next],
    if (upcoming.length > 5) 'next5': upcoming.take(5).toList(),
    if (upcoming.length > 10) 'next10': upcoming.take(10).toList(),
    if (unwatched.isNotEmpty) 'unwatched': unwatched,
    if (shown.length > 1) 'range': shown.toList(),
    'all': all,
  };
  String label(String key) => switch (key) {
    'next' =>
      state.anime ? getString.downloadNext : getString.downloadNextChapter,
    'next5' =>
      state.anime
          ? getString.downloadNextN(5)
          : getString.downloadNextChapters(5),
    'next10' =>
      state.anime
          ? getString.downloadNextN(10)
          : getString.downloadNextChapters(10),
    'unwatched' =>
      state.anime
          ? getString.downloadUnwatched(options[key]!.length)
          : getString.downloadUnread(options[key]!.length),
    'range' => getString.downloadRange(options[key]!.length),
    _ =>
      state.anime
          ? getString.downloadAll(options[key]!.length)
          : getString.downloadAllChapters(options[key]!.length),
  };
  final picked = await showChoiceSheet<String>(
    context,
    title: getString.downloadTitle,
    icon: Icons.download_rounded,
    selected: '',
    options: [
      ChoiceOption(
        _metaOnly,
        getString.downloadMetaOnly,
        icon: Icons.folder_open_rounded,
      ),
      for (final key in options.keys)
        ChoiceOption(key, label(key), icon: Icons.download_rounded),
    ],
  );
  if (picked == null) return;
  if (picked == _metaOnly) return _saveMetadata(state);
  await downloadUnits(
    context.mounted ? context : (appOverlayContext ?? appContext)!,
    state,
    options[picked]!,
  );
}
