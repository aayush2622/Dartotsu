import '../../../Widgets/Components/ChoiceSheet.dart';
import '../../../Core/Offline/OfflineMode.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Player/Engine/PlayRequest.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import 'Data/EpisodeMetaService.dart';
import 'Data/EpisodeUnits.dart';
import 'Data/WatchPrefs.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Player/PlayerLauncher.dart';
import '../../Reader/ReaderLauncher.dart';
import 'Components/ContinueCard.dart';
import 'Components/RangeBar.dart';
import 'Components/SourceBar.dart';
import 'Components/SourceToolsSheet.dart';
import '../../../Core/Downloads/DownloadEngine.dart';
import '../../Downloads/DownloadPicker.dart';
import 'Components/StreamSheet.dart';
import 'Components/UnitSheet.dart';
import 'Components/UnitLayout.dart';
import 'Components/UnitTile.dart';
import 'Components/WatchOptionsSheet.dart';
import 'Components/WrongTitleSheet.dart';
import 'Data/LocalProgress.dart';
import 'WatchState.dart';

class WatchSection extends StatefulWidget {
  final MediaService service;
  final Live<Media> media;
  final Mutations? mutations;

  const WatchSection({
    super.key,
    required this.service,
    required this.media,
    this.mutations,
  });

  @override
  State<WatchSection> createState() => _WatchSectionState();
}

class _WatchSectionState extends State<WatchSection>
    with ScreenStateHost<WatchSection, WatchState> {
  @override
  WatchState buildState() => WatchState(
    service: widget.service,
    media: widget.media,
    mutations: widget.mutations,
  );

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final phase = state.phase.value;
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!find<OfflineMode>().isOffline.value) ...[
                  SourceBar(
                    source: state.source.value,
                    status: state.status.value,
                    busy:
                        phase == WatchPhase.searching ||
                        phase == WatchPhase.loading,
                    canFix: state.source.value != null,
                    selectable: !state.fixedSource,
                    onPick: _pickSource,
                    onWrongTitle: _wrongTitle,
                    onReset: state.resetMatch,
                    onTools: _tools,
                  ),
                  SizedBox(height: Dimens.gap),
                ],
                _titleRow(context),
                SizedBox(height: Dimens.gapSm),
              ],
            ),
          ),
          SliverMainAxisGroup(
            key: ValueKey(phase),
            slivers: _phase(context, phase),
          ),
        ],
      ),
    );
  }

  List<Widget> _phase(BuildContext context, WatchPhase phase) {
    Widget box(Widget child) => SliverToBoxAdapter(child: child);
    return switch (phase) {
      WatchPhase.sources ||
      WatchPhase.searching ||
      WatchPhase.loading => [box(_skeleton(context))],
      WatchPhase.ready => _units(context),
      WatchPhase.noSource => [
        box(
          EmptyState(
            icon: Icons.extension_off_rounded,
            title: state.fixedSource
                ? getString.watchSourceMissing
                : getString.watchInstallSource(
                    state.anime ? getString.watching : getString.reading,
                  ),
          ),
        ),
      ],
      WatchPhase.empty => [
        box(
          EmptyState(
            icon: Icons.search_off_rounded,
            title: state.match.value == null
                ? getString.watchNothingFound
                : (state.anime
                      ? getString.watchNoEpisodes
                      : getString.watchNoChapters),
            actionLabel: state.fixedSource ? null : getString.watchWrongTitle,
            onAction: state.fixedSource ? null : _wrongTitle,
          ),
        ),
      ],
      WatchPhase.failed => [
        box(
          EmptyState(
            icon: Icons.cloud_off_rounded,
            failed: true,
            title: getString.watchLoadFailed,
            message: state.failure.value,
            actionLabel: getString.retry,
            onAction: state.start,
          ),
        ),
      ],
    };
  }

  Widget _titleRow(BuildContext context) {
    final scheme = context.colorScheme;
    final count = state.units.length;
    return Row(
      children: [
        Expanded(
          child: Text(
            state.anime
                ? getString.watchEpisodeCount(count)
                : getString.watchChapterCount(count),
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        if (state.metaLoading.value)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: scheme.primary,
              ),
            ),
          ),
        IconButton(
          tooltip: getString.downloadTitle,
          onPressed: () => downloadMenu(context, state),
          icon: const Icon(Icons.download_rounded),
        ),
        if (state.anime)
          IconButton(
            tooltip: getString.watchMetaSource,
            onPressed: _pickMeta,
            icon: Icon(
              state.settings.value.metaSource == null
                  ? Icons.auto_awesome_rounded
                  : state.settings.value.metaSource == 'off'
                  ? Icons.hide_image_outlined
                  : Icons.image_search_rounded,
            ),
          ),
        IconButton(
          tooltip: getString.watchOptions,
          onPressed: () => showCustomBottomDialog<void>(
            context,
            WatchOptionsSheet(state: state),
          ),
          icon: const Icon(Icons.tune_rounded),
        ),
      ],
    );
  }

  List<Widget> _units(BuildContext context) {
    final chunks = state.chunks;
    if (chunks.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: EmptyState(
            icon: Icons.search_off_rounded,
            title: state.anime
                ? getString.watchNoEpisodes
                : getString.watchNoChapters,
          ),
        ),
      ];
    }
    final settings = state.settings.value;
    final index = state.chunk.value.clamp(0, chunks.length - 1);
    final shown = settings.reverse
        ? chunks[index].reversed.toList()
        : chunks[index];
    final next = state.next;
    final progress = state.progress;
    return [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (next != null) ...[
              ContinueCard(
                unit: next,
                anime: state.anime,
                started: progress > 0,
                media: state.current,
                progress: progress,
                playback: state.playbackOf(next),
                onTap: () => state.anime ? _play(next) : _read(next),
              ),
              SizedBox(height: Dimens.gap),
            ],
            if (chunks.length > 1) ...[
              RangeBar(
                selected: index,
                onChanged: state.selectChunk,
                labels: [
                  for (final c in chunks) '${c.first.number}-${c.last.number}',
                ],
              ),
              SizedBox(height: Dimens.gap),
            ],
          ],
        ),
      ),
      UnitSliver(
        units: shown,
        view: settings.view,
        builder: (u) => _tile(u, settings.view, progress, next),
      ),
    ];
  }

  Widget _tile(WatchUnit u, int view, int progress, WatchUnit? next) =>
      UnitTile(
        key: ValueKey('unit-${u.number}-${u.scanlator}'),
        unit: u,
        anime: state.anime,
        view: view,
        watched: u.isWatched(progress),
        progress: partialFraction(state.playbackOf(u)),
        next: identical(u, next),
        blur: watchBlurUnwatchedPref.rx.value,
        showDescription: watchShowDescriptionPref.rx.value,
        downloadId: downloadIdOf(state, u),
        onTap: () => state.anime ? _play(u) : _read(u),
        onInfo: view == 0 ? () => _open(u) : null,
        onLongPress: watchMarkOnLongPressPref.rx.value
            ? () => u.isWatched(progress)
                  ? state.markUnwatched(u)
                  : state.markWatched(u)
            : null,
      );

  void _open(WatchUnit unit) => showCustomBottomDialog<void>(
    context,
    UnitSheet(
      state: state,
      unit: unit,
      onPlay: state.anime ? () => _play(unit) : () => _read(unit),
    ),
  );

  Future<void> _read(WatchUnit unit) async {
    var online = false;
    final downloaded = find<DownloadEngine>().hasLocalUnit(
      state.service.id,
      state.current.id,
      unit.key,
    );
    if (downloaded &&
        state.source.value != null &&
        !find<OfflineMode>().isOffline.value) {
      final picked = await showChoiceSheet<String>(
        context,
        title: getString.downloadReadChoice,
        icon: Icons.menu_book_rounded,
        selected: 'local',
        options: [
          ChoiceOption(
            'local',
            getString.downloadDownloaded,
            subtitle: getString.downloadReadLocalDesc,
            icon: Icons.download_done_rounded,
          ),
          ChoiceOption(
            'online',
            getString.downloadReadOnline,
            subtitle: getString.downloadReadOnlineDesc,
            icon: Icons.cloud_queue_rounded,
          ),
        ],
      );
      if (picked == null || !mounted) return;
      online = picked == 'online';
    }
    final request = state.readRequest(unit, online: online);
    if (request == null) {
      return snackString(
        find<OfflineMode>().isOffline.value
            ? getString.downloadNotOffline
            : getString.watchSourceMissing,
      );
    }
    await openReader(request, context: context);
    state.afterSession();
  }

  Future<void> _play(WatchUnit unit) async {
    final local = find<DownloadEngine>().localVideo(
      state.service.id,
      state.current.id,
      unit.key,
    );
    if (local != null) {
      var useLocal = true;
      if (state.source.value != null && !find<OfflineMode>().isOffline.value) {
        final picked = await showChoiceSheet<String>(
          context,
          title: getString.downloadPlayChoice,
          icon: Icons.play_circle_outline_rounded,
          selected: 'local',
          options: [
            ChoiceOption(
              'local',
              getString.downloadDownloaded,
              subtitle: getString.downloadPlayLocalDesc,
              icon: Icons.download_done_rounded,
            ),
            ChoiceOption(
              'stream',
              getString.downloadPlayStream,
              subtitle: getString.downloadPlayStreamDesc,
              icon: Icons.cloud_queue_rounded,
            ),
          ],
        );
        if (picked == null || !mounted) return;
        useLocal = picked == 'local';
      }
      if (useLocal) {
        await openPlayer(state.playRequest(unit, [local], 0), context: context);
        state.afterSession();
        return;
      }
    }
    if (find<OfflineMode>().isOffline.value) {
      return snackString(getString.downloadNotOffline);
    }
    final auto = await state.autoStream(unit).catchError((_) => null);
    if (!mounted) return;
    final pick =
        auto ??
        await showCustomBottomDialog<StreamPick>(
          context,
          StreamSheet(state: state, unit: unit),
        );
    if (pick == null || !mounted) return;
    final chosen = pick.videos[pick.index];
    final src = state.source.value;
    if (src?.id != null) {
      state.record.streams.last[src!.id!] = streamLabel(chosen);
      state.saveRecord();
    }
    await openPlayer(
      state.playRequest(unit, pick.videos, pick.index),
      context: context,
    );
    state.afterSession();
  }

  Future<void> _pickSource() async {
    final list = state.sources.toList();
    final current = state.source.value;
    if (list.isEmpty) return;
    final names = <String, int>{};
    for (final s in list) {
      names[s.name ?? ''] = (names[s.name ?? ''] ?? 0) + 1;
    }
    final picked = await showChoiceSheet<String>(
      context,
      title: getString.watchSource,
      icon: Icons.extension_rounded,
      selected: current?.id ?? '',
      options: [
        for (final s in list)
          ChoiceOption(
            s.id ?? '',
            (names[s.name ?? ''] ?? 0) > 1
                ? '${s.name} (${(s.lang ?? '').toUpperCase()})'
                : (s.name ?? ''),
            imageUrl: s.iconUrl,
          ),
      ],
    );
    if (picked == null || picked == current?.id) return;
    final next = list.where((s) => s.id == picked).firstOrNull;
    if (next != null) await state.selectSource(next);
  }

  Future<void> _pickMeta() async {
    final current = state.settings.value.metaSource ?? 'auto';
    final picked = await showChoiceSheet<String>(
      context,
      title: getString.watchMetaSource,
      icon: Icons.dataset_rounded,
      selected: current,
      options: [
        ChoiceOption('auto', getString.watchMetaAuto),
        for (final p in EpisodeMetaService.ordered())
          if (EpisodeMetaService.enabled(p.id)) ChoiceOption(p.id, p.name),
        ChoiceOption('off', getString.watchMetaOff),
      ],
    );
    if (picked == null || picked == current) return;
    await state.setMetaSource(picked == 'auto' ? null : picked);
  }

  void _tools() {
    final source = state.source.value ?? state.current.sourceData;
    if (source == null) return;
    showCustomBottomDialog<void>(context, SourceToolsSheet(source: source));
  }

  void _wrongTitle() =>
      showCustomBottomDialog<void>(context, WrongTitleSheet(state: state));

  Widget _skeleton(BuildContext context) {
    final view = state.settings.value.view;
    final anime = state.anime;
    final count = switch (view) {
      1 => 6,
      2 => 16,
      _ => 5,
    };
    final units = [
      for (var i = 1; i <= count; i++)
        WatchUnit(
          raw: DEpisode(episodeNumber: '$i'),
          number: '$i',
          value: i.toDouble(),
          title: 'A loading ${anime ? 'episode' : 'chapter'} title goes here',
          description: 'A short description of the episode while it loads.',
        ),
    ];
    return Skeletonizer(
      child: UnitLayout(
        units: units,
        view: view,
        builder: (u) => UnitTile(
          unit: u,
          anime: anime,
          view: view,
          watched: false,
          next: false,
          blur: false,
          showDescription: watchShowDescriptionPref.rx.value,
          onTap: () {},
          onInfo: view == 0 ? () {} : null,
        ),
      ),
    );
  }
}
