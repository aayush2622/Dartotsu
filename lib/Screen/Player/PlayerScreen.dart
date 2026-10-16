import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Discord/PresenceScope.dart';
import 'Engine/ColorPresets.dart';
import 'Engine/PlayRequest.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../Settings/Categories/AddonSettings.dart';
import '../Settings/SubSettingsScreen.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Detail/Comments/CommentsSection.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'Components/EpisodePanel.dart';
import 'Components/PlayerControls.dart';
import 'Components/PlayerEpisodes.dart';
import 'Components/PlayerIndicators.dart';
import 'Components/PlayerSheets.dart';
import 'Components/PlayerSubtitleView.dart';
import 'PlayerState.dart';

class PlayerScreen extends StatefulWidget {
  final PlayRequest request;

  const PlayerScreen({super.key, required this.request});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen>
    with ScreenStateHost<PlayerScreen, PlayerState> {
  final _videoKey = GlobalKey();
  Orientation? _orientation;
  Offset _holdStart = Offset.zero;
  Offset? _lastTapDown;

  @override
  PlayerState buildState() => PlayerState(widget.request);

  @override
  void initState() {
    super.initState();
    state.askStream = (list) =>
        showStreamSheet(context, state, list, selected: -1);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final request = widget.request;
    final item = state.item;
    final media = request.media;
    final fullscreen = state.fullscreen.value;
    final orientation = MediaQuery.orientationOf(context);
    if (orientation != _orientation) {
      _orientation = orientation;
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => mounted ? state.followOrientation(orientation) : null,
      );
    }
    if (state.pip.value) return _pip(context);
    final body = PopScope(
      canPop: !fullscreen,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && fullscreen) unawaited(state.exitFullscreen());
      },
      child: Scaffold(
        backgroundColor: fullscreen
            ? Colors.black
            : context.colorScheme.surface,
        body: fullscreen ? _fullscreen(context) : _page(context),
      ),
    );
    final wrapped = KeyboardListener(
      focusNode: state.focus,
      autofocus: true,
      onKeyEvent: _key,
      child: body,
    );
    if (media == null) return wrapped;
    return PresenceScope(
      presence: DiscordPresence.consuming(
        media,
        number: item.number,
        total: media.totalUnits,
        thumbnail: item.unit?.thumbnail,
      ),
      child: wrapped,
    );
  }

  Widget _pip(BuildContext context) {
    final engine = state.engine;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Video(
            controller: engine.video,
            controls: null,
            fit: BoxFit.contain,
            subtitleViewConfiguration: const SubtitleViewConfiguration(
              visible: false,
            ),
          ),
          if (!state.settings.useLibass)
            PlayerSubtitleView(
              lines: engine.subtitleLines.value,
              settings: state.settings,
              controlsVisible: false,
            ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => unawaited(state.engine.toggle()),
          ),
        ],
      ),
    );
  }

  Widget _fullscreen(BuildContext context) => LayoutBuilder(
    builder: (context, box) => Watch(() {
      final wide = box.maxWidth;
      if (state.panelWidth.value == 0) {
        state.panelWidth.value = (wide / 3).clamp(280.0, wide);
      }
      final panel = state.panel.value;
      return Row(
        children: [
          Expanded(child: _stage(context, compact: false)),
          if (panel)
            GestureDetector(
              onHorizontalDragUpdate: (d) => state.panelWidth.value =
                  (state.panelWidth.value - d.delta.dx).clamp(250.0, wide),
              child: SizedBox(
                width: state.panelWidth.value,
                height: box.maxHeight,
                child: EpisodePanel(state: state),
              ),
            ),
        ],
      );
    }),
  );

  Widget _stage(BuildContext context, {required bool compact}) => MouseRegion(
    onHover: (_) => state.showControls(),
    cursor: state.controlsVisible.value
        ? SystemMouseCursors.basic
        : SystemMouseCursors.none,
    child: KeyedSubtree(
      key: _videoKey,
      child: LayoutBuilder(
        builder: (context, box) =>
            Watch(() => _video(context, box.maxWidth, compact: compact)),
      ),
    ),
  );

  Widget _page(BuildContext context) {
    final scheme = context.colorScheme;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: LayoutBuilder(
        builder: (context, box) => Watch(() {
          final top = MediaQuery.paddingOf(context).top;
          final height = (box.maxWidth * 9 / 16).clamp(
            0.0,
            box.maxHeight * 0.7,
          );
          final stage = ColoredBox(
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.only(top: top),
              child: SizedBox(
                height: height,
                width: double.infinity,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: _stage(context, compact: true),
                ),
              ),
            ),
          );
          if (!state.commentsOpen.value || widget.request.service == null) {
            return _episodes(context, scheme, stage);
          }
          return _comments(context, scheme, stage);
        }),
      ),
    );
  }

  Widget _episodes(BuildContext context, ColorScheme scheme, Widget stage) {
    final tracked = widget.request.media != null;
    final item = state.item;
    final media = widget.request.media;
    return CustomScrollView(
      controller: state.pageScroll,
      slivers: [
        SliverToBoxAdapter(child: stage),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gap,
              Dimens.pagePad,
              Dimens.gapSm,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    height: 1.2,
                  ),
                ),
                if ((media?.mainName ?? item.subtitle) != null) ...[
                  SizedBox(height: Dimens.gapXs),
                  Text(
                    media?.mainName ?? item.subtitle!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: _tools(context)),
        if (tracked)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePad,
                Dimens.gapSm,
                Dimens.pagePad,
                Dimens.gapSm,
              ),
              child: Material(
                color: scheme.surfaceContainerHigh,
                borderRadius: Dimens.borderSm,
                clipBehavior: Clip.antiAlias,
                child: ListTile(
                  onTap: () => state.commentsOpen.value = true,
                  leading: Icon(Icons.forum_rounded, color: scheme.primary),
                  title: Text(
                    getString.playerShowComments,
                    style: context.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapLg,
          ),
          sliver: PlayerEpisodes(state: state),
        ),
      ],
    );
  }

  Widget _tools(BuildContext context) {
    Widget chip(IconData icon, String label, VoidCallback onTap) => Padding(
      padding: EdgeInsets.only(right: Dimens.gapSm),
      child: ActionChip(
        avatar: Icon(icon, size: 18),
        label: Text(label),
        onPressed: onTap,
        side: BorderSide.none,
        backgroundColor: context.colorScheme.surfaceContainerHigh,
      ),
    );
    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
        children: [
          chip(
            Icons.slow_motion_video_rounded,
            getString.playerSpeed,
            () => showSpeedSheet(context, state),
          ),
          chip(
            Icons.subtitles_rounded,
            getString.playerSubtitles,
            () => showTracksSheet(context, state, audio: false),
          ),
          chip(
            Icons.audiotrack_rounded,
            getString.playerAudio,
            () => showTracksSheet(context, state, audio: true),
          ),
          chip(
            Icons.photo_filter_rounded,
            getString.playerPicture,
            () => showPictureSheet(context, state),
          ),
          if (state.hasChapters)
            chip(
              Icons.list_alt_rounded,
              getString.playerChapters,
              () => showChaptersSheet(context, state),
            ),
          chip(
            Icons.fit_screen_rounded,
            getString.playerResize,
            state.cycleFit,
          ),
          chip(
            Icons.video_settings_rounded,
            getString.playerSettingsChip,
            () => showPlayerOptions(context, state),
          ),
        ],
      ),
    );
  }

  Widget _comments(BuildContext context, ColorScheme scheme, Widget stage) {
    final service = widget.request.service!;
    return Material(
      color: scheme.surface,
      child: CustomScrollView(
        controller: state.commentsScroll,
        slivers: [
          SliverToBoxAdapter(child: stage),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePad,
                Dimens.gapSm,
                Dimens.gapSm,
                0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      state.item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelLarge?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: getString.playerHideComments,
                    onPressed: () => state.commentsOpen.value = false,
                    icon: const Icon(Icons.close_rounded),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: Dimens.gapLg),
            sliver: SliverToBoxAdapter(
              child: CommentsSection(
                key: ValueKey('player-comments-${widget.request.media!.id}'),
                service: service,
                media: state.mediaLive,
                scroll: state.commentsScroll,
                episode: state.episodeTag,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tinted(Widget video) {
    final values = state.colorValues.value;
    if (values.isDefault) return video;
    return ColorFiltered(
      colorFilter: ColorFilter.matrix(colorMatrix(values)),
      child: video,
    );
  }

  Widget _video(BuildContext context, double width, {required bool compact}) {
    state.engineTick.value;
    final engine = state.engine;
    final visible = state.controlsVisible.value;
    final error = state.loadError.value;
    final playerError = engine.error.value;
    return Stack(
      alignment: Alignment.center,
      children: [
        _tinted(
          Video(
            controller: engine.video,
            controls: null,
            fit: state.fit.value,
            filterQuality: FilterQuality.medium,
            subtitleViewConfiguration: const SubtitleViewConfiguration(
              visible: false,
            ),
          ),
        ),
        if (!state.settings.useLibass)
          PlayerSubtitleView(
            lines: engine.subtitleLines.value,
            settings: state.settings,
            controlsVisible: visible,
          ),
        Positioned.fill(child: _gestures(context, width)),
        Positioned.fill(
          child: AnimatedOpacity(
            opacity: visible ? 1 : 0,
            duration: animDuration(220),
            child: IgnorePointer(
              ignoring: !visible,
              child: PlayerControls(state: state, compact: compact),
            ),
          ),
        ),
        PlayerSeekRipple(
          seconds: state.seekLabelBackward.value,
          forward: false,
        ),
        PlayerSeekRipple(seconds: state.seekLabelForward.value, forward: true),
        if (state.hasNext)
          PlayerNextCard(
            seconds: state.nextCountdown.value,
            title: state.items[state.index.value + 1].title,
            onCancel: state.cancelCountdown,
            onPlay: state.playNextNow,
          ),
        PlayerLevelIndicator(
          value: state.volume.value,
          icon: Icons.volume_up_rounded,
          shown: state.volumeShown.value,
          left: false,
        ),
        if (supportsBrightness)
          PlayerLevelIndicator(
            value: state.brightness.value,
            icon: Icons.brightness_6_rounded,
            shown: state.brightnessShown.value,
            left: true,
          ),
        PlayerChip(
          text: state.holdActive.value
              ? '${state.holdSpeedValue.value}x'
              : null,
          icon: Icons.fast_forward_rounded,
        ),
        PlayerChip(
          text: state.shaderOsd.value,
          icon: Icons.photo_filter_rounded,
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 72, right: 24),
        ),
        if (state.loading.value && error == null)
          const IgnorePointer(
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          ),
        if (error != null)
          _failure(context, error)
        else if (playerError != null && !state.loading.value)
          _failure(context, playerError),
      ],
    );
  }

  Widget _failure(BuildContext context, String message) {
    final missing = state.torrentMissing.value;
    final several = state.videos.length > 1;
    return Positioned.fill(
      child: ColoredBox(
        color: Colors.black87,
        child: LayoutBuilder(
          builder: (context, box) => FittedBox(
            fit: BoxFit.scaleDown,
            child: SizedBox(
              width: box.maxWidth,
              child: EmptyState(
                icon: missing
                    ? Icons.cloud_download_rounded
                    : Icons.error_outline_rounded,
                failed: !missing,
                title: missing
                    ? getString.playerTorrentNeeded
                    : getString.playerFailed,
                message: missing ? getString.playerTorrentNeededDesc : message,
                actionLabel: missing
                    ? getString.playerOpenAddons
                    : several
                    ? getString.playerTryAnotherStream
                    : getString.retry,
                onAction: () async {
                  if (missing) {
                    await navigateToPage(
                      context,
                      SubSettingsScreen(
                        title: getString.settingsAddons,
                        settings: addonSettings,
                      ),
                    );
                  } else if (several) {
                    final next =
                        (state.videoIndex.value + 1) % state.videos.length;
                    await state.selectStream(next);
                  } else {
                    await state.loadItem(state.index.value);
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gestures(BuildContext context, double width) {
    final pad = GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (isMobilePlatform || state.locked.value) {
          state.toggleControls();
          return;
        }
        unawaited(state.engine.toggle());
        state.showControls();
      },
      onDoubleTapDown: (d) {
        if (state.locked.value) return;
        _lastTapDown = d.localPosition;
      },
      onDoubleTap: () {
        final at = _lastTapDown;
        if (at == null || state.locked.value) return;
        if (at.dx < width * 0.4) {
          state.doubleTapSeek(false);
        } else if (at.dx > width * 0.6) {
          state.doubleTapSeek(true);
        } else {
          unawaited(state.engine.toggle());
        }
      },
      onLongPressStart: (d) {
        if (state.locked.value) return;
        _holdStart = d.localPosition;
        state.holdStart();
      },
      onLongPressMoveUpdate: (d) =>
          state.holdMove(d.localPosition.dx - _holdStart.dx),
      onLongPressEnd: (_) => state.holdEnd(),
      onVerticalDragUpdate: (d) {
        if (state.locked.value) return;
        final delta = -d.delta.dy / 300;
        final x = d.localPosition.dx;
        if (supportsBrightness && x < width * 0.25) {
          state.changeBrightness(delta);
        } else if (x > width * 0.75) {
          state.changeVolume(delta);
        }
      },
      child: const SizedBox.expand(),
    );
    return Listener(
      onPointerSignal: (e) {
        if (e is PointerScrollEvent &&
            !state.locked.value &&
            state.fullscreen.value) {
          state.changeVolume(-e.scrollDelta.dy / 1500);
        }
      },
      child: pad,
    );
  }

  void _key(KeyEvent event) {
    if (event is! KeyDownEvent) return;
    final key = event.logicalKey;
    final shift = HardwareKeyboard.instance.isShiftPressed;
    final engine = state.engine;
    if (key == LogicalKeyboardKey.space || key == LogicalKeyboardKey.keyK) {
      unawaited(engine.toggle());
      state.showControls();
    } else if (key == LogicalKeyboardKey.arrowRight ||
        key == LogicalKeyboardKey.arrowLeft) {
      final forward = key == LogicalKeyboardKey.arrowRight;
      if (shift) {
        unawaited(engine.command([forward ? 'frame-step' : 'frame-back-step']));
      } else {
        state.doubleTapSeek(forward);
      }
    } else if (key == LogicalKeyboardKey.arrowUp ||
        key == LogicalKeyboardKey.arrowDown) {
      final next =
          (engine.player.state.volume +
                  (key == LogicalKeyboardKey.arrowUp ? 5 : -5))
              .clamp(0.0, 100.0);
      state.volume.value = next / 100;
      state.volumeShown.value = true;
      unawaited(engine.player.setVolume(next));
    } else if (key == LogicalKeyboardKey.keyF) {
      unawaited(state.toggleFullscreen());
    } else if (key == LogicalKeyboardKey.keyN) {
      state.openNext();
    } else if (key == LogicalKeyboardKey.keyP) {
      state.openPrevious();
    } else if (key == LogicalKeyboardKey.keyS) {
      state.skipStamp();
    } else if (key == LogicalKeyboardKey.keyM) {
      final muted = engine.player.state.volume == 0;
      unawaited(engine.player.setVolume(muted ? 100 : 0));
    } else if (key == LogicalKeyboardKey.enter) {
      state.panel.value = !state.panel.value;
    } else {
      final digit = int.tryParse(key.keyLabel);
      final total = engine.duration.value;
      if (digit != null && total > Duration.zero) {
        state.seekTo(total * (digit / 10));
      }
    }
  }
}
