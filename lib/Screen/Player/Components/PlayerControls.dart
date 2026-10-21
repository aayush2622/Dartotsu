import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../Engine/AniSkip.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../Engine/Pip.dart';
import '../PlayerState.dart';
import 'PlayerSeekBar.dart';
import 'PlayerSheets.dart';

class PlayerControls extends StatelessWidget {
  final PlayerState state;
  final bool compact;

  const PlayerControls({super.key, required this.state, this.compact = false});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final locked = state.locked.value;
    final engine = state.engine;
    final stamp = state.activeStamp.value;
    final position = state.shownPosition;
    final duration = engine.duration.value;
    final chapters = engine.chapters.value;
    final chapterText =
        chapters
            .where((c) => c.start <= position.inSeconds)
            .lastOrNull
            ?.title ??
        '';
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
          child: _top(context, locked),
        ),
        if (!locked) Positioned.fill(child: _center(context)),
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 0,
          child: _bottom(
            context,
            locked,
            stamp,
            position,
            duration,
            chapterText,
          ),
        ),
      ],
    );
  }

  Widget? _preview(BuildContext context, PlayerState state) {
    final at = state.previewAt.value;
    if (at == null) return null;
    final controller = state.settings.seekPreview
        ? state.seekPreview.controller
        : null;
    final frame = state.settings.seekPreview
        ? state.seekPreview.strip.nearest(at)
        : null;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (frame != null || controller != null)
          Container(
            width: 176,
            height: 99,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white24),
            ),
            clipBehavior: Clip.antiAlias,
            child: frame != null
                ? RawImage(image: frame, fit: BoxFit.cover)
                : Video(
                    controller: controller!,
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

  EdgeInsets _side(BuildContext context) {
    if (compact) return EdgeInsets.zero;
    final p = MediaQuery.paddingOf(context);
    return EdgeInsets.only(left: p.left / 2, right: p.right / 2);
  }

  Widget _top(BuildContext context, bool locked) {
    final item = state.item;
    final media = state.request.media;
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
            if (!locked &&
                compact &&
                (state.videos.length > 1 || state.request.tracked))
              _icon(
                Icons.source_rounded,
                () => _streams(context),
                tooltip: getString.playerStreams,
              ),
            if (!locked && state.engine.videoVariants.value.length > 1)
              _icon(
                Icons.hd_rounded,
                () => showQualitySheet(context, state),
                tooltip: getString.playerQuality,
              ),
            if (!locked && !compact) ...[
              if (state.items.length > 1)
                _icon(
                  Icons.video_collection_rounded,
                  () => state.panel.value = !state.panel.value,
                  tooltip: getString.playerEpisodes,
                ),
              _icon(
                Icons.slow_motion_video_rounded,
                () => showSpeedSheet(context, state),
                tooltip: getString.playerSpeed,
              ),
            ],
            if (!compact)
              _icon(
                locked ? Icons.lock_rounded : Icons.lock_open_rounded,
                state.toggleLock,
                tooltip: getString.playerLock,
              ),
            if (!locked) _qualityTag(context),
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
      margin: const EdgeInsets.only(left: 4, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(
        '${height}p',
        style: context.textTheme.labelMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    return several
        ? GestureDetector(
            onTap: () => showQualitySheet(context, state),
            child: tag,
          )
        : tag;
  }

  Widget _pipButton() => _icon(
    Icons.picture_in_picture_alt_rounded,
    state.enterPip,
    tooltip: getString.playerPip,
  );

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
                  state.engine.playing.value
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  state.engine.toggle,
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
                    state.engine.playing.value
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    state.engine.toggle,
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

  Widget _bottom(
    BuildContext context,
    bool locked,
    SkipStamp? stamp,
    Duration position,
    Duration duration,
    String chapterText,
  ) {
    final scheme = context.colorScheme;
    final engine = state.engine;
    final label = stamp?.name ?? chapterText;
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8) + _side(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
                if (compact && PlayerPip.supported) _pipButton(),
                if (compact)
                  _icon(
                    Icons.fullscreen_rounded,
                    state.toggleFullscreen,
                    tooltip: getString.playerFullscreen,
                  ),
              ],
            ),
            IgnorePointer(
              ignoring: locked,
              child: PlayerSeekBar(
                position: position,
                buffer: engine.buffer.value,
                duration: duration,
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
                  state.scrubPosition.value = engine.position.value;
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
            if (!locked && !compact)
              Row(
                children: [
                  _icon(
                    Icons.video_settings_rounded,
                    () => showPlayerOptions(context, state),
                    tooltip: getString.playerSettingsTitle,
                  ),
                  if (state.videos.length > 1 || state.request.tracked)
                    _icon(
                      Icons.source_rounded,
                      () => _streams(context),
                      tooltip: getString.playerStreams,
                    ),
                  _icon(
                    Icons.subtitles_rounded,
                    () => showTracksSheet(context, state, audio: false),
                    tooltip: getString.playerSubtitles,
                  ),
                  _icon(
                    Icons.audiotrack_rounded,
                    () => showTracksSheet(context, state, audio: true),
                    tooltip: getString.playerAudio,
                  ),
                  _icon(
                    Icons.photo_filter_rounded,
                    () => showPictureSheet(context, state),
                    tooltip: getString.playerPicture,
                  ),
                  if (state.hasChapters)
                    _icon(
                      Icons.list_alt_rounded,
                      () => showChaptersSheet(context, state),
                      tooltip: getString.playerChapters,
                    ),
                  const Spacer(),
                  if (PlayerPip.supported) _pipButton(),
                  _icon(
                    Icons.fit_screen_rounded,
                    state.cycleFit,
                    tooltip: getString.playerResize,
                  ),
                  _icon(
                    Icons.fullscreen_exit_rounded,
                    state.toggleFullscreen,
                    tooltip: getString.playerFullscreen,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _streams(BuildContext context) async {
    state.holdControls();
    final wasPlaying = state.engine.playing.value;
    if (wasPlaying) await state.engine.pause();
    if (!context.mounted) return;
    final picked = await showStreamSheet(
      context,
      state,
      state.videos.toList(),
      selected: state.videoIndex.value,
    );
    if (picked != null && picked != state.videoIndex.value) {
      await state.selectStream(picked);
    }
    if (wasPlaying) await state.engine.play();
    state.showControls();
  }
}
