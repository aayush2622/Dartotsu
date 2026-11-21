import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../../Core/Cast/CastService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../Engine/AniSkip.dart';
import '../Engine/PlayRequest.dart';
import '../Engine/PlayerEngine.dart';
import '../PlayerState.dart';
import 'PlayerSeekBar.dart';

Future<void> showCastSheet(BuildContext context, PlayerState state) {
  final cast = state.cast;
  if (!cast.active) unawaited(cast.discover());
  return showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.castTitle,
      heightFactor: cast.active ? 0.9 : null,
      child: _CastPanel(state: state),
    ),
  );
}

String _protocolLabel(CastProtocol protocol) => switch (protocol) {
  CastProtocol.chromecast => getString.castProtocolChromecast,
  CastProtocol.dlna => getString.castProtocolDlna,
  CastProtocol.roku => getString.castProtocolRoku,
};

class _CastPanel extends StatefulWidget {
  final PlayerState state;

  const _CastPanel({required this.state});

  @override
  State<_CastPanel> createState() => _CastPanelState();
}

class _CastPanelState extends State<_CastPanel> {
  final tab = 0.live;

  PlayerState get state => widget.state;

  CastService get cast => state.cast;

  @override
  Widget build(BuildContext context) =>
      Watch(() => cast.active ? _controls(context) : _devices(context));

  Widget _devices(BuildContext context) {
    final scheme = context.colorScheme;
    final list = cast.devices.toList();
    final searching = cast.searching.value;
    return ListView(
      shrinkWrap: true,
      padding: Dimens.sheetInsets,
      children: [
        if (searching)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    getString.castSearching,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ],
            ),
          ),
        for (final device in list)
          SheetTile(
            tinted: true,
            leading: Icon(
              device.protocol == CastProtocol.roku
                  ? Icons.live_tv_rounded
                  : Icons.cast_rounded,
              color: scheme.primary,
            ),
            title: Text(device.name),
            subtitle: Text(_protocolLabel(device.protocol)),
            onTap: () {
              Navigator.of(context).pop();
              unawaited(state.castTo(device));
            },
          ),
        if (!searching && list.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              getString.castNoDevices,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
        if (Platform.isAndroid)
          SheetTile(
            tinted: true,
            leading: Icon(Icons.cast_connected_rounded, color: scheme.primary),
            title: Text(getString.externalWebVideoCast),
            subtitle: Text(getString.castViaAppHint),
            onTap: () {
              Navigator.of(context).pop();
              unawaited(state.castWithWebVideoCast());
            },
          ),
        if (!searching)
          Align(
            child: TextButton.icon(
              onPressed: () => unawaited(cast.discover()),
              icon: const Icon(Icons.refresh_rounded),
              label: Text(getString.castRefresh),
            ),
          ),
      ],
    );
  }

  Widget _controls(BuildContext context) {
    final scheme = context.colorScheme;
    final device = cast.device.value!;
    final failure = cast.failure.value;
    final chapters = state.engine.chapters.value;
    final stamps = state.stamps.toList();
    final episodes = state.items.length > 1;
    final hasChapters = chapters.isNotEmpty || stamps.isNotEmpty;
    final tabs = <(int, String)>[
      (0, getString.castControls),
      if (episodes) (1, getString.playerEpisodes),
      if (hasChapters) (2, getString.playerChapters),
    ];
    final shown = tabs.any((t) => t.$1 == tab.value) ? tab.value : 0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: scheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.cast_connected_rounded,
                  color: scheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${device.name} · ${_protocolLabel(device.protocol)}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton.filledTonal(
                tooltip: getString.castStop,
                onPressed: () {
                  Navigator.of(context).pop();
                  unawaited(state.stopCasting());
                },
                icon: const Icon(Icons.cast_rounded),
              ),
            ],
          ),
        ),
        if (failure != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
            child: Text(
              failure,
              style: context.textTheme.bodySmall?.copyWith(color: scheme.error),
            ),
          ),
        if (tabs.length > 1)
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
            child: AppSegmented<int>(
              value: shown,
              onChanged: (v) => tab.value = v,
              segments: [for (final t in tabs) AppSegment(t.$1, label: t.$2)],
            ),
          ),
        Expanded(
          child: switch (shown) {
            1 => _episodes(context),
            2 => _chapters(context, chapters, stamps),
            _ => _main(context),
          },
        ),
      ],
    );
  }

  Widget _main(BuildContext context) {
    final scheme = context.colorScheme;
    final position = cast.position.value;
    final total = cast.duration.value;
    final seekable = cast.canSeek && total > Duration.zero;
    final stamp = state.activeStamp.value;
    final videos = state.videos.toList();
    final subtitles = cast.tracks.value;
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      children: [
        if (!cast.canSeek)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              getString.castRokuNote,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ),
        Slider(
          value: seekable
              ? position.inSeconds.clamp(0, total.inSeconds).toDouble()
              : 0,
          max: seekable ? total.inSeconds.toDouble() : 1,
          onChanged: seekable
              ? (v) => unawaited(cast.seek(Duration(seconds: v.round())))
              : null,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatClock(position.inSeconds)),
              Text(total > Duration.zero ? formatClock(total.inSeconds) : ''),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 32,
              onPressed: state.hasPrevious ? state.openPrevious : null,
              icon: const Icon(Icons.skip_previous_rounded),
            ),
            IconButton(
              iconSize: 32,
              onPressed: cast.canSeek
                  ? () => state.seekBy(
                      Duration(seconds: -state.settings.seekDuration),
                    )
                  : null,
              icon: const Icon(Icons.replay_10_rounded),
            ),
            const SizedBox(width: 4),
            IconButton.filled(
              iconSize: 40,
              onPressed: () => unawaited(cast.toggle()),
              icon: Icon(
                cast.playing.value
                    ? Icons.pause_rounded
                    : Icons.play_arrow_rounded,
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              iconSize: 32,
              onPressed: cast.canSeek
                  ? () => state.seekBy(
                      Duration(seconds: state.settings.seekDuration),
                    )
                  : null,
              icon: const Icon(Icons.forward_10_rounded),
            ),
            IconButton(
              iconSize: 32,
              onPressed: state.hasNext ? state.openNext : null,
              icon: const Icon(Icons.skip_next_rounded),
            ),
          ],
        ),
        if (stamp != null) ...[
          const SizedBox(height: 8),
          FilledButton.tonalIcon(
            onPressed: state.skipStamp,
            icon: const Icon(Icons.fast_forward_rounded),
            label: Text(getString.castSkipPart(stamp.name)),
          ),
        ],
        if (cast.canVolume) ...[
          const SizedBox(height: 16),
          _heading(context, getString.castVolume),
          Row(
            children: [
              IconButton(
                onPressed:
                    cast.device.value?.protocol == CastProtocol.chromecast
                    ? cast.toggleMute
                    : null,
                icon: Icon(
                  cast.muted.value || cast.volume.value == 0
                      ? Icons.volume_off_rounded
                      : Icons.volume_up_rounded,
                ),
              ),
              Expanded(
                child: Slider(
                  value: cast.muted.value ? 0 : cast.volume.value,
                  onChanged: (v) => unawaited(cast.setVolume(v)),
                ),
              ),
            ],
          ),
        ],
        if (cast.canRate) ...[
          const SizedBox(height: 8),
          _heading(context, getString.playerSpeed),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final speed in _speeds)
                ChoiceChip(
                  label: Text('${speed}x'),
                  selected: (cast.rate.value - speed).abs() < 0.01,
                  onSelected: (_) => cast.setRate(speed),
                ),
            ],
          ),
        ],
        if (videos.length > 1) ...[
          const SizedBox(height: 16),
          _heading(context, getString.playerQuality),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final (i, video) in videos.indexed)
                ChoiceChip(
                  label: Text(streamLabel(video)),
                  selected: i == state.videoIndex.value,
                  onSelected: (_) {
                    if (i != state.videoIndex.value) {
                      unawaited(state.selectStream(i));
                    }
                  },
                ),
            ],
          ),
        ],
        if (cast.canTrack) ...[
          const SizedBox(height: 16),
          _heading(context, getString.playerSubtitles),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ChoiceChip(
                label: Text(getString.off),
                selected: cast.activeTrack.value == null,
                onSelected: (_) => cast.setTrack(null),
              ),
              for (final track in subtitles)
                ChoiceChip(
                  label: Text(track.label),
                  selected: cast.activeTrack.value == track.id,
                  onSelected: (_) => cast.setTrack(track.id),
                ),
            ],
          ),
        ],
      ],
    );
  }

  static const _speeds = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0];

  Widget _heading(BuildContext context, String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(
      text,
      style: context.textTheme.labelLarge?.copyWith(
        color: context.colorScheme.onSurfaceVariant,
      ),
    ),
  );

  Widget _episodes(BuildContext context) {
    final items = state.items.toList();
    final current = state.index.value;
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      itemCount: items.length,
      itemBuilder: (context, i) => SheetTile(
        tinted: true,
        selected: i == current,
        radius: BorderRadius.vertical(
          top: Radius.circular(i == 0 ? 20 : 6),
          bottom: Radius.circular(i == items.length - 1 ? 20 : 6),
        ),
        leading: Icon(
          i == current ? Icons.play_arrow_rounded : Icons.movie_outlined,
        ),
        title: Text(
          items[i].title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: items[i].subtitle == null ? null : Text(items[i].subtitle!),
        onTap: i == current ? null : () => unawaited(state.loadItem(i)),
      ),
    );
  }

  Widget _chapters(
    BuildContext context,
    List<PlayerChapter> chapters,
    List<SkipStamp> stamps,
  ) {
    final entries = <(double, String)>[
      for (final c in chapters) (c.start, c.title),
      for (final s in stamps) (s.start, s.name),
    ]..sort((a, b) => a.$1.compareTo(b.$1));
    final now = cast.position.value.inSeconds;
    final current = entries.lastIndexWhere((e) => e.$1 <= now);
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      itemCount: entries.length,
      itemBuilder: (context, i) => SheetTile(
        tinted: true,
        selected: i == current,
        radius: BorderRadius.vertical(
          top: Radius.circular(i == 0 ? 20 : 6),
          bottom: Radius.circular(i == entries.length - 1 ? 20 : 6),
        ),
        title: Text(entries[i].$2),
        trailing: Text(formatClock(entries[i].$1.round())),
        onTap: () => state.seekTo(Duration(seconds: entries[i].$1.round())),
      ),
    );
  }
}
