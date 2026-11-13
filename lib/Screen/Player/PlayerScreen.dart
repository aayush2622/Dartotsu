import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Discord/PresenceScope.dart';
import 'Engine/ColorPresets.dart';
import 'Engine/PlayRequest.dart';
import '../../Core/Shortcuts/KeyBindings.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Settings/Categories/AddonSettings.dart';
import '../Settings/SubSettingsScreen.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Detail/Comments/CommentsSection.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'Components/EpisodePanel.dart';
import 'Components/PlayerActions.dart';
import 'Components/PlayerControls.dart';
import '../Settings/Layout/BarLayout.dart';
import 'Components/PlayerEpisodes.dart';
import 'Components/PlayerIndicators.dart';
import '../Together/TogetherRoomView.dart';
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
  Size? _stageSize;
  Offset _holdStart = Offset.zero;
  bool _edgeDrag = false;
  Offset? _lastTapDown;

  @override
  PlayerState buildState() => PlayerState(widget.request);

  @override
  void initState() {
    super.initState();
    FocusManager.instance.addListener(_guardFocus);
    state.videoRect = _videoRect;
    state.askStream = (list) =>
        showStreamSheet(context, state, list, selected: -1);
    state.askPendingStream = (feed) =>
        showPendingStreamSheet(context, state, feed);
  }

  @override
  void dispose() {
    FocusManager.instance.removeListener(_guardFocus);
    super.dispose();
  }

  Rect? _videoRect() {
    final box = _videoKey.currentContext?.findRenderObject();
    if (box is! RenderBox || !box.attached || !box.hasSize) return null;
    final ratio = View.of(context).devicePixelRatio;
    final origin = box.localToGlobal(Offset.zero);
    return Rect.fromLTWH(
      origin.dx * ratio,
      origin.dy * ratio,
      box.size.width * ratio,
      box.size.height * ratio,
    );
  }

  void _guardFocus() {
    if (!mounted) return;
    final route = ModalRoute.of(context);
    if (route == null || !route.isCurrent) return;
    final owner = FocusManager.instance.primaryFocus?.context;
    if (owner != null && ModalRoute.of(owner) == route) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && route.isCurrent) state.focus.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    state.settingsVersion.value;
    return _build(context);
  });

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
    final wrapped = Focus(
      focusNode: state.focus,
      autofocus: true,
      onKeyEvent: (_, event) =>
          _key(event) ? KeyEventResult.handled : KeyEventResult.ignored,
      child: body,
    );
    if (media == null) return wrapped;
    return Watch(() {
      final (positionSeconds, anchorMs) = state.presenceClock.value;
      final duration = state.duration.inSeconds;
      return PresenceScope(
        presence: DiscordPresence.consuming(
          media,
          number: item.number,
          total: media.totalUnits,
          thumbnail: item.unit?.thumbnail,
          positionSeconds: positionSeconds,
          anchorMs: anchorMs,
          durationSeconds: duration > 0 ? duration : null,
          rate: state.engine.rate.value,
          paused: !state.isPlaying,
        ),
        child: wrapped,
      );
    });
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
          Watch(
            () => engine.assActive.value
                ? const SizedBox.shrink()
                : PlayerSubtitleView(
                    lines: engine.subtitleLines.value,
                    settings: state.settings,
                    controlsVisible: false,
                  ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => unawaited(state.togglePlayback()),
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

  Widget _stage(BuildContext context, {required bool compact}) {
    final video = KeyedSubtree(
      key: _videoKey,
      child: LayoutBuilder(
        builder: (context, box) {
          if (box.biggest != _stageSize) {
            _stageSize = box.biggest;
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => mounted ? state.syncPip() : null,
            );
          }
          return Watch(() => _video(context, box.maxWidth, compact: compact));
        },
      ),
    );
    return Watch(
      () => MouseRegion(
        onEnter: (_) => state.pointerOnStage = true,
        onExit: (_) => state.pointerOnStage = false,
        onHover: (_) => state.showControls(),
        cursor: state.controlsVisible.value
            ? SystemMouseCursors.basic
            : SystemMouseCursors.none,
        child: video,
      ),
    );
  }

  double _stageExtent = 0;

  Widget _stageSliver(Widget stage) => state.settings.stickyStage
      ? SliverPersistentHeader(
          pinned: true,
          delegate: _PinnedStage(_stageExtent, stage),
        )
      : SliverToBoxAdapter(child: stage);

  Widget _page(BuildContext context) {
    final scheme = context.colorScheme;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: MouseRegion(
        onEnter: (_) => state.pointerOnPage = true,
        onExit: (_) => state.pointerOnPage = false,
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
            _stageExtent = top + height;
            final together = state.together;
            if (together.following) return _guest(context, scheme, stage);
            if (state.chatOpen.value && together.connected) {
              return _chat(context, scheme, stage);
            }
            if (!state.commentsOpen.value || widget.request.service == null) {
              return _episodes(context, scheme, stage);
            }
            return _comments(context, scheme, stage);
          }),
        ),
      ),
    );
  }

  Widget _heading(BuildContext context, ColorScheme scheme) {
    final item = state.item;
    final media = widget.request.media;
    return Padding(
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
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
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
    );
  }

  Widget _guest(BuildContext context, ColorScheme scheme, Widget stage) {
    final together = state.together;
    return Material(
      color: scheme.surface,
      child: TogetherRoomView.inline(
        session: together,
        stage: stage,
        leading: [_heading(context, scheme), _tools(context)],
        scroll: state.pageScroll,
      ),
    );
  }

  Widget _chat(BuildContext context, ColorScheme scheme, Widget stage) =>
      Material(
        color: scheme.surface,
        child: TogetherRoomView.inline(
          session: state.together,
          stage: stage,
          scroll: state.pageScroll,
          onClose: () => state.chatOpen.value = false,
        ),
      );

  Widget _episodes(BuildContext context, ColorScheme scheme, Widget stage) {
    final tracked = widget.request.media != null;
    return CustomScrollView(
      controller: state.pageScroll,
      slivers: [
        _stageSliver(stage),
        SliverToBoxAdapter(child: _heading(context, scheme)),
        SliverToBoxAdapter(child: _tools(context)),
        if (tracked || state.together.connected)
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.pagePad,
                Dimens.gapSm,
                Dimens.pagePad,
                Dimens.gapSm,
              ),
              child: Column(
                children: [
                  if (tracked)
                    _tile(
                      context,
                      scheme,
                      Icons.forum_rounded,
                      getString.playerShowComments,
                      () => state.commentsOpen.value = true,
                    ),
                  if (state.together.connected) ...[
                    if (tracked) SizedBox(height: Dimens.gapSm),
                    _tile(
                      context,
                      scheme,
                      state.together.unread.value > 0
                          ? Icons.mark_unread_chat_alt_rounded
                          : Icons.chat_rounded,
                      getString.togetherShowChat,
                      () => state.chatOpen.value = true,
                    ),
                  ],
                ],
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

  Widget _tile(
    BuildContext context,
    ColorScheme scheme,
    IconData icon,
    String label,
    VoidCallback onTap,
  ) => Material(
    color: scheme.surfaceContainerHigh,
    borderRadius: Dimens.borderSm,
    clipBehavior: Clip.antiAlias,
    child: ListTile(
      onTap: onTap,
      leading: Icon(icon, color: scheme.primary),
      title: Text(
        label,
        style: context.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right_rounded,
        color: scheme.onSurfaceVariant,
      ),
    ),
  );

  Widget _tools(BuildContext context) {
    Widget chip(IconData icon, String label, VoidCallback onTap) => Padding(
      padding: EdgeInsetsDirectional.only(end: Dimens.gapSm),
      child: ActionChip(
        avatar: Icon(icon, size: 18),
        label: Text(label),
        onPressed: onTap,
        side: BorderSide.none,
        backgroundColor: context.colorScheme.surfaceContainerHigh,
      ),
    );
    Widget row(List<Widget> children) => SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
        children: children,
      ),
    );
    return Watch(() {
      final layout = LayoutSurface.player.layout;
      Widget? built(String id) {
        final a = playerAction(context, state, id, compact: true);
        return a == null ? null : chip(a.icon, a.label, a.onTap);
      }

      final selected = [
        for (final id in playerChipOrder)
          if (layout.zoneOf(id) != hiddenZone) ?built(id),
      ];
      final second = [
        for (final id in layout.hidden)
          if (!playerFullscreenOnly.contains(id)) ?built(id),
      ];
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (selected.isNotEmpty) row(selected),
          if (second.isNotEmpty) row(second),
        ],
      );
    });
  }

  Widget _comments(BuildContext context, ColorScheme scheme, Widget stage) {
    final service = widget.request.service!;
    return Material(
      color: scheme.surface,
      child: CustomScrollView(
        controller: state.commentsScroll,
        slivers: [
          _stageSliver(stage),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
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
            sliver: CommentsSection(
              key: ValueKey('player-comments-${widget.request.media!.id}'),
              service: service,
              media: state.mediaLive,
              scroll: state.commentsScroll,
              episode: state.episodeTag,
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
    final controls = RepaintBoundary(
      child: PlayerControls(state: state, compact: compact),
    );
    return Stack(
      alignment: Alignment.center,
      children: [
        Watch(
          () => _tinted(
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
        ),
        Watch(
          () => engine.assActive.value
              ? const SizedBox.shrink()
              : PlayerSubtitleView(
                  lines: engine.subtitleLines.value,
                  settings: state.settings,
                  controlsVisible: state.controlsVisible.value,
                ),
        ),
        Positioned.fill(child: Watch(() => _gestures(context, width))),
        Positioned.fill(
          child: Watch(() {
            final visible = state.controlsVisible.value;
            return AnimatedOpacity(
              opacity: visible ? 1 : 0,
              duration: animDuration(220),
              child: IgnorePointer(ignoring: !visible, child: controls),
            );
          }),
        ),
        Watch(
          () => PlayerSeekRipple(
            seconds: state.seekLabelBackward.value,
            forward: false,
          ),
        ),
        Watch(
          () => PlayerSeekRipple(
            seconds: state.seekLabelForward.value,
            forward: true,
          ),
        ),
        Watch(
          () => state.hasNext
              ? PlayerNextCard(
                  seconds: state.nextCountdown.value,
                  title: state.items[state.index.value + 1].title,
                  onCancel: state.cancelCountdown,
                  onPlay: state.playNextNow,
                )
              : const SizedBox.shrink(),
        ),
        Watch(
          () => PlayerLevelIndicator(
            value: state.volume.value,
            icon: Icons.volume_up_rounded,
            shown: state.volumeShown.value,
            left: state.settings.swapGestures,
          ),
        ),
        if (supportsBrightness)
          Watch(
            () => PlayerLevelIndicator(
              value: state.brightness.value,
              icon: Icons.brightness_6_rounded,
              shown: state.brightnessShown.value,
              left: !state.settings.swapGestures,
            ),
          ),
        Watch(
          () => PlayerChip(
            text: state.cast.active
                ? getString.castNowCasting(state.cast.device.value!.name)
                : null,
            icon: Icons.cast_connected_rounded,
            alignment: AlignmentDirectional.bottomCenter,
            margin: const EdgeInsets.only(bottom: 96),
          ),
        ),
        Watch(
          () => PlayerChip(
            text: state.holdActive.value
                ? '${state.holdSpeedValue.value}x'
                : null,
            icon: Icons.fast_forward_rounded,
          ),
        ),
        Watch(
          () => PlayerChip(
            text: state.shaderOsd.value,
            icon: Icons.photo_filter_rounded,
            alignment: AlignmentDirectional.topEnd,
            margin: const EdgeInsetsDirectional.only(top: 72, end: 24),
          ),
        ),
        Watch(() {
          final error = state.loadError.value;
          if (error != null) return _failure(context, error);
          if (!state.loading.value) return const SizedBox.shrink();
          return const IgnorePointer(
            child: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        }),
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
        unawaited(state.togglePlayback());
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
          unawaited(state.togglePlayback());
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
      onVerticalDragStart: (d) {
        _edgeDrag = isMobilePlatform && d.localPosition.dy < 56;
      },
      onVerticalDragUpdate: (d) {
        if (state.locked.value || _edgeDrag) return;
        final delta = -d.delta.dy / 300;
        final x = d.localPosition.dx;
        final swap = state.settings.swapGestures;
        if (x < width * 0.25) {
          if (swap) {
            if (supportsBrightness) state.changeBrightness(delta);
          } else {
            state.changeVolume(delta);
          }
        } else if (x > width * 0.75) {
          if (swap) {
            state.changeVolume(delta);
          } else if (supportsBrightness) {
            state.changeBrightness(delta);
          }
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

  String? _lastSubtitle;

  static final _digits = {
    for (var i = 0; i < 10; i++) ...{
      LogicalKeyboardKey.findKeyByKeyId(LogicalKeyboardKey.digit0.keyId + i)!:
          i,
      LogicalKeyboardKey.findKeyByKeyId(LogicalKeyboardKey.numpad0.keyId + i)!:
          i,
    },
  };

  static int? _digitOf(LogicalKeyboardKey key) => _digits[key];

  bool _key(KeyEvent event) {
    if (event is KeyUpEvent || !state.ownsKeys) return false;
    final typing =
        FocusManager.instance.primaryFocus?.context
            ?.findAncestorWidgetOfExactType<EditableText>() !=
        null;
    if (typing) return false;
    final action = KeyBindings.match(BindingGroup.player, event);
    if (action == null) {
      final digit = _digitOf(event.logicalKey);
      final total = state.duration;
      if (digit == null || !KeyBindings.enabled(BindingGroup.player)) {
        return false;
      }
      if (event is KeyDownEvent && total > Duration.zero) {
        state.seekTo(total * (digit / 10));
      }
      return true;
    }
    if (event is KeyRepeatEvent && !action.repeat) return true;
    _run(action.id);
    return true;
  }

  void _run(String id) {
    final engine = state.engine;
    switch (id) {
      case 'playerPlayPause':
        unawaited(state.togglePlayback());
        state.showControls();
      case 'playerSeekForward':
        state.doubleTapSeek(true);
      case 'playerSeekBack':
        state.doubleTapSeek(false);
      case 'playerSeekForwardLong':
        state.seekBy(const Duration(seconds: 30));
      case 'playerSeekBackLong':
        state.seekBy(const Duration(seconds: -30));
      case 'playerFrameForward':
        unawaited(_frameStep('frame-step'));
      case 'playerFrameBack':
        unawaited(_frameStep('frame-back-step'));
      case 'playerVolumeUp':
        state.changeVolume(0.05, keyboard: true);
      case 'playerVolumeDown':
        state.changeVolume(-0.05, keyboard: true);
      case 'playerMute':
        state.toggleMute();
      case 'playerFullscreen':
        unawaited(state.toggleFullscreen());
      case 'playerNext':
        state.openNext();
      case 'playerPrevious':
        state.openPrevious();
      case 'playerSkip':
        state.skipStamp();
      case 'playerPanel':
        state.panel.value = !state.panel.value;
      case 'playerSpeedUp':
        _speed(engine.rate.value + 0.25);
      case 'playerSpeedDown':
        _speed(engine.rate.value - 0.25);
      case 'playerSpeedReset':
        _speed(1);
      case 'playerSubtitleToggle':
        _toggleSubtitle();
      case 'playerSubtitleCycle':
        _cycleSubtitle();
      case 'playerAudioCycle':
        _cycleAudio();
      case 'playerStreamCycle':
        final count = state.videos.length;
        if (count > 1) {
          unawaited(state.selectStream((state.videoIndex.value + 1) % count));
        }
      case 'playerFit':
        state.cycleFit();
    }
  }

  void _speed(double value) {
    final next = value.clamp(0.25, 4.0).toDouble();
    state.setSpeed(next);
    snackString('${next}x');
  }

  Future<void> _frameStep(String command) => state.engine.frameStep(command);

  void _toggleSubtitle() {
    final engine = state.engine;
    final active = engine.activeSubtitle.value;
    if (active != null) {
      _lastSubtitle = active;
      unawaited(engine.chooseSubtitle(null));
      snackString(getString.off);
      return;
    }
    final tracks = engine.subtitleTracks.value;
    if (tracks.isEmpty) return;
    final id = tracks.any((t) => t.id == _lastSubtitle)
        ? _lastSubtitle!
        : tracks.first.id;
    unawaited(engine.chooseSubtitle(id));
    snackString(tracks.firstWhere((t) => t.id == id).label);
  }

  void _cycleSubtitle() {
    final engine = state.engine;
    final tracks = engine.subtitleTracks.value;
    if (tracks.isEmpty) return;
    final at = tracks.indexWhere((t) => t.id == engine.activeSubtitle.value);
    if (at == tracks.length - 1) {
      _lastSubtitle = engine.activeSubtitle.value;
      unawaited(engine.chooseSubtitle(null));
      snackString(getString.off);
      return;
    }
    final next = tracks[at + 1];
    unawaited(engine.chooseSubtitle(next.id));
    snackString(next.label);
  }

  void _cycleAudio() {
    final engine = state.engine;
    final tracks = engine.audioTracks.value;
    if (tracks.length < 2) return;
    final at = tracks.indexWhere((t) => t.id == engine.activeAudio.value);
    final next = tracks[(at + 1) % tracks.length];
    unawaited(engine.chooseAudio(next.id));
    snackString(next.label);
  }
}

class _PinnedStage extends SliverPersistentHeaderDelegate {
  final double extent;
  final Widget child;

  const _PinnedStage(this.extent, this.child);

  @override
  double get minExtent => extent;

  @override
  double get maxExtent => extent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) => child;

  @override
  bool shouldRebuild(_PinnedStage old) =>
      old.extent != extent || old.child != child;
}
