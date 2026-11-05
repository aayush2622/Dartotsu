import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../Settings/Layout/BarLayout.dart';
import '../PlayerState.dart';
import 'PlayerActions.dart';
import 'PlayerSeekBar.dart';
import 'PlayerSheets.dart';
import '../../../Widgets/Components/Clickable.dart';

class PlayerControls extends StatelessWidget {
  final PlayerState state;
  final bool compact;

  const PlayerControls({super.key, required this.state, this.compact = false});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final locked = state.locked.value;
    return Stack(
      children: [
        const Positioned.fill(
          child: IgnorePointer(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xCC000000),
                    Color(0x00000000),
                    Color(0x00000000),
                    Color(0xCC000000),
                  ],
                  stops: [0, 0.3, 0.6, 1],
                ),
              ),
            ),
          ),
        ),
        PositionedDirectional(
          top: 0,
          start: 0,
          end: 0,
          child: Watch(() => _top(context, locked)),
        ),
        if (!locked) Positioned.fill(child: Watch(() => _center(context))),
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 0,
          child: _bottom(context, locked),
        ),
      ],
    );
  }

  Duration _position() {
    final awake = state.controlsVisible.value || state.scrubbing.value;
    return awake
        ? (state.heldPosition = state.shownPosition)
        : state.heldPosition;
  }

  Widget? _preview(BuildContext context, PlayerState state) {
    final at = state.previewAt.value;
    if (at == null) return null;
    final controller =
        state.settings.seekPreview && state.seekPreview.covered.value
        ? state.seekPreview.controller
        : null;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (controller != null)
          Container(
            width: 176,
            height: 99,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white24),
            ),
            clipBehavior: Clip.antiAlias,
            child: Video(
              controller: controller,
              controls: null,
              fit: BoxFit.cover,
              subtitleViewConfiguration: const SubtitleViewConfiguration(
                visible: false,
              ),
            ),
          ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            formatClock(at.inSeconds),
            style: context.textTheme.bodySmall?.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _icon(
    IconData icon,
    VoidCallback onTap, {
    double size = 24,
    String? tooltip,
  }) => IconButton(
    onPressed: onTap,
    tooltip: tooltip,
    iconSize: size,
    color: Colors.white,
    icon: Icon(icon),
  );

  List<Widget> _actions(
    BuildContext context,
    Iterable<String> ids, {
    double size = 24,
  }) => [
    for (final id in ids)
      if (playerAction(context, state, id, compact: compact) case final a?)
        _icon(a.icon, a.onTap, size: size, tooltip: a.label),
  ];

  List<String> _compactBar(List<String> wanted, BarLayout layout) => [
    for (final id in wanted)
      if (layout.zoneOf(id) != hiddenZone) id,
  ];

  EdgeInsets _side(BuildContext context) {
    if (compact) return EdgeInsets.zero;
    final p = MediaQuery.paddingOf(context);
    return EdgeInsets.only(left: p.left / 2, right: p.right / 2);
  }

  Widget _top(BuildContext context, bool locked) {
    final item = state.item;
    final media = state.request.media;
    final layout = LayoutSurface.player.layout;
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0) + _side(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!locked)
              _icon(
                compact
                    ? Icons.arrow_back_ios_new_rounded
                    : Icons.keyboard_arrow_down_rounded,
                compact ? () => popPage(context) : state.exitFullscreen,
                size: compact ? 24 : 32,
              ),
            if (!locked && !compact)
              ..._actions(context, layout.zone(topStartZone)),
            Expanded(
              child: locked || compact
                  ? const SizedBox(height: 40)
                  : Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          if ((media?.mainName ?? item.subtitle) != null)
                            Text(
                              media?.mainName ?? item.subtitle!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.bodySmall?.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                        ],
                      ),
                    ),
            ),
            if (!locked)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: _actions(
                      context,
                      compact
                          ? _compactBar(['streams', 'quality'], layout)
                          : layout.zone(topEndZone),
                    ),
                  ),
                  _qualityTag(context),
                ],
              )
            else if (!compact)
              _icon(
                Icons.lock_rounded,
                state.toggleLock,
                tooltip: getString.playerLock,
              ),
          ],
        ),
      ),
    );
  }

  Widget _qualityTag(BuildContext context) {
    final height = state.engine.videoHeight.value;
    if (height == null || height <= 0) return const SizedBox.shrink();
    final several = state.engine.videoVariants.value.length > 1;
    final tag = Container(
      margin: const EdgeInsetsDirectional.only(start: 4, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Text(
        '${height}p',
        style: context.textTheme.labelMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    return several
        ? Clickable(onTap: () => showQualitySheet(context, state), child: tag)
        : tag;
  }

  Widget _center(BuildContext context) {
    final busy = state.loading.value || state.engine.buffering.value;
    if (compact) {
      return Center(
        child: SizedBox(
          width: 72,
          height: 72,
          child: busy
              ? const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(color: Colors.white),
                )
              : _icon(
                  state.isPlaying
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  state.togglePlayback,
                  size: 48,
                ),
        ),
      );
    }
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (state.hasPrevious)
            _icon(Icons.skip_previous_rounded, state.openPrevious, size: 44)
          else
            const SizedBox(width: 56),
          const SizedBox(width: 28),
          SizedBox(
            width: 72,
            height: 72,
            child: busy
                ? const Padding(
                    padding: EdgeInsets.all(16),
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : _icon(
                    state.isPlaying
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    state.togglePlayback,
                    size: 56,
                  ),
          ),
          const SizedBox(width: 28),
          if (state.hasNext)
            _icon(Icons.skip_next_rounded, state.openNext, size: 44)
          else
            const SizedBox(width: 56),
        ],
      ),
    );
  }

  Widget _bottom(BuildContext context, bool locked) {
    final scheme = context.colorScheme;
    final engine = state.engine;
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8) + _side(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Watch(() {
              final stamp = state.activeStamp.value;
              final position = _position();
              final duration = state.duration;
              final label =
                  stamp?.name ??
                  engine.chapters.value
                      .where((c) => c.start <= position.inSeconds)
                      .lastOrNull
                      ?.title ??
                  '';
              return Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: formatClock(position.inSeconds)),
                          TextSpan(
                            text: ' / ${formatClock(duration.inSeconds)}',
                            style: context.textTheme.bodySmall?.copyWith(
                              color: Colors.white54,
                            ),
                          ),
                          if (label.isNotEmpty) TextSpan(text: '  •  $label'),
                        ],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  if (!locked && (!compact || stamp != null))
                    FilledButton.tonalIcon(
                      onPressed: state.skipStamp,
                      onLongPress: stamp != null && state.canRememberSkip
                          ? () => state.toggleRememberedSkip(stamp)
                          : null,
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.black.withValues(alpha: 0.35),
                        foregroundColor: Colors.white,
                        side: BorderSide(color: scheme.primary),
                      ),
                      icon: Icon(
                        stamp != null && state.skipRemembered(stamp)
                            ? Icons.autorenew_rounded
                            : Icons.fast_forward_rounded,
                      ),
                      label: Text(
                        stamp?.name ?? '+${state.settings.skipDuration}s',
                      ),
                    ),
                  if (compact)
                    ..._actions(
                      context,
                      _compactBar([
                        'pip',
                        'fullscreen',
                      ], LayoutSurface.player.layout),
                    ),
                ],
              );
            }),
            RepaintBoundary(
              child: Watch(
                () => IgnorePointer(
                  ignoring: locked,
                  child: PlayerSeekBar(
                    position: _position(),
                    buffer: state.controlsVisible.value
                        ? (state.heldBuffer = engine.buffer.value)
                        : state.heldBuffer,
                    duration: state.duration,
                    stamps: state.stamps.toList(),
                    chapters: engine.chapters.value,
                    thumbless: state.settings.thumbLessSeekBar,
                    enabled: !locked,
                    previewAt: state.previewAt.value,
                    preview: _preview(context, state),
                    onHover: (d) {
                      if (!state.scrubbing.value) state.previewTo(d);
                    },
                    onScrubStart: () {
                      state.holdControls();
                      state.scrubbing.value = true;
                      state.scrubPosition.value = state.shownPosition;
                    },
                    onScrub: (d) {
                      state.scrubPosition.value = d;
                      state.previewTo(d);
                    },
                    onSeek: (d) {
                      state.scrubbing.value = false;
                      state.previewTo(null);
                      state.seekTo(d);
                      state.showControls();
                    },
                  ),
                ),
              ),
            ),
            if (!locked && !compact)
              Watch(() {
                final layout = LayoutSurface.player.layout;
                return Row(
                  children: [
                    ..._actions(context, layout.zone(bottomStartZone)),
                    const Spacer(),
                    ..._actions(context, layout.zone(bottomEndZone)),
                  ],
                );
              }),
          ],
        ),
      ),
    );
  }
}
