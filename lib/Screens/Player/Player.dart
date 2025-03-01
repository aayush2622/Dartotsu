import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:volume_controller/volume_controller.dart';

import '../../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../../Api/Sources/Eval/dart/model/video.dart' as v;
import '../../../../../../Api/Sources/Model/Source.dart';
import '../../../../../../DataClass/Episode.dart';
import '../../../../../../DataClass/Media.dart' as m;
import '../../../../../../Preferences/IsarDataClasses/Selected/Selected.dart';
import '../../../../../../Services/ServiceSwitcher.dart';
import '../../../../../../Widgets/ScrollConfig.dart';
import '../Detail/Tabs/Watch/Anime/Widget/AnimeCompactSettings.dart';
import '../Detail/Tabs/Watch/Anime/Widget/BuildChunkSelector.dart';
import '../Settings/SettingsPlayerScreen.dart';
import 'Platform/BasePlayer.dart';
import 'Platform/WindowsPlayer.dart';
import 'PlayerController.dart';
import 'Widgets/Indicator.dart';

class MediaPlayer extends StatefulWidget {
  final m.Media media;
  final int index;
  final List<v.Video> videos;
  final Episode currentEpisode;
  final Source source;
  final bool isOffline;

  const MediaPlayer({
    super.key,
    required this.media,
    required this.index,
    required this.videos,
    required this.currentEpisode,
    required this.source,
    this.isOffline = false,
  });

  @override
  State<MediaPlayer> createState() => MediaPlayerState();
}

class MediaPlayerState extends State<MediaPlayer>
    with TickerProviderStateMixin {
  late BasePlayer videoPlayerController;
  late v.Video currentQuality;
  late Rx<BoxFit> resizeMode;
  late PlayerSettings settings;
  late AnimationController _leftAnimationController;
  late AnimationController _rightAnimationController;
  var showControls = true.obs;
  var viewType = 0.obs;
  var reverse = false.obs;
  var showEpisodes = false.obs;
  var isMobile = Platform.isAndroid || Platform.isIOS;
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    if (!widget.isOffline) {
      _loadPlayerSettings();
    } else {
      resizeMode = BoxFit.contain.obs;
      settings = widget.media.anime!.playerSettings!;
    }
    _initializePlayer();
    _leftAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _rightAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    if (isMobile) {
      _setLandscapeMode(true);
      _handleVolumeAndBrightness();
    }
  }

  Timer? _hideCursorTimer;

  void _onMouseMoved() {
    if (!showControls.value) showControls.value = true;
    _hideCursorTimer?.cancel();
    _hideCursorTimer = Timer(const Duration(seconds: 2), () {
      showControls.value = false;
    });
  }

  void _initializePlayer() {
    currentQuality = widget.videos[widget.index];
    videoPlayerController = WindowsPlayer(resizeMode, settings);
    var sourceName = context
        .currentService(listen: false)
        .getName;
    var currentProgress = loadCustomData<int>(
      "${widget.media.id}-${widget.currentEpisode.number}-$sourceName-current",
    );
    videoPlayerController.open(
        currentQuality, Duration(seconds: currentProgress ?? 0));
    _onMouseMoved();
  }

  void _loadPlayerSettings() {
    settings = loadCustomData('${widget.media.id}-${context
        .currentService(listen: false)
        .getName}-PlayerSettings') ?? loadData(PrefName.playerSettings);
    widget.media.anime?.playerSettings = settings;
    resizeMode = (resizeMap[settings.resizeMode] ?? BoxFit.contain).obs;
    viewType = loadSelected(widget.media).recyclerStyle.obs;
    reverse = loadSelected(widget.media).recyclerReversed.obs;
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    _hideCursorTimer?.cancel();
    _leftAnimationController.dispose();
    _rightAnimationController.dispose();
    focusNode.dispose();
    if (Platform.isAndroid || Platform.isIOS) {
      ScreenBrightness().setApplicationScreenBrightness(_defaultBrightness);
      _setLandscapeMode(false);
    }
  }

  void _setLandscapeMode(bool state) {
    if (state) {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  double? episodePanelWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          const double minWidth = 250;
          final double availableWidth = constraints.maxWidth;

          episodePanelWidth ??=
              (availableWidth / 3).clamp(minWidth, availableWidth);

          return StatefulBuilder(
            builder: (context, setState) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                        () {
                      return MouseRegion(
                        onHover: (_) => _onMouseMoved(),
                        cursor: showControls.value
                            ? SystemMouseCursors.basic
                            : SystemMouseCursors.none,
                        child: _buildVideoPlayer(
                            availableWidth, episodePanelWidth!),
                      );
                    },
                  ),
                  Obx(
                        () {
                      if (!showEpisodes.value) {
                        return const SizedBox();
                      }
                      return GestureDetector(
                        onHorizontalDragUpdate: (details) {
                          setState(
                                () =>
                            episodePanelWidth =
                                (episodePanelWidth! - details.delta.dx)
                                    .clamp(minWidth, availableWidth),
                          );
                        },
                        child: SizedBox(
                          width: episodePanelWidth,
                          height: constraints.maxHeight,
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(8.0),
                            child: _buildEpisodeList(),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildVideoPlayer(double availableWidth, double episodePanelWidth) {
    return Obx(() {
      return SizedBox(
        width: showEpisodes.value
            ? availableWidth - episodePanelWidth
            : availableWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            videoPlayerController.playerWidget(),
            _buildSubtitle(),
            if (isLongPress.value)
              AnimatedAlign(
                alignment: Alignment.topCenter,
                duration: const Duration(milliseconds: 300),
                child: Card(
                  color: Colors.black.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Text(
                      '${videoPlayerController.currentSpeed.value}x ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            KeyboardListener(
              focusNode: focusNode,
              onKeyEvent: _handleKeyPress,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapDown: (_) => showControls.value = !showControls.value,
                onPanUpdate: (_) => _onMouseMoved(),
                onDoubleTapDown: (t) => _handleDoubleTap(t),
                onLongPressStart: _handleLongPressStart,
                onLongPressMoveUpdate: _handleLongPressMove,
                onLongPressEnd: _handleLongPressEnd,
                onVerticalDragUpdate: (e) async {
                  final delta = e.delta.dy;
                  final Offset position = e.localPosition;
                  if (position.dx <= MediaQuery
                      .of(context)
                      .size
                      .width / 2) {
                    final brightness = _brightnessValue.value - delta / 500;
                    final result = brightness.clamp(0.0, 1.0);
                    setBrightness(result);
                  } else {
                    final volume = _volumeValue.value - delta / 500;
                    final result = volume.clamp(0.0, 1.0);
                    setVolume(result);
                  }
                },
                child: AnimatedOpacity(
                  opacity: showControls.value ? 0.5 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(color: Colors.black),
                ),
              ),
            ),
            _buildVideoOverlay(),
            _buildRippleEffect(),
            AnimatedOpacity(
              curve: Curves.easeInOut,
              opacity: _volumeIndicator.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: MediaIndicatorBuilder(
                value: _volumeValue,
                isVolumeIndicator: true,
              ),
            ),
            AnimatedOpacity(
              curve: Curves.easeInOut,
              opacity: _brightnessIndicator.value ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: MediaIndicatorBuilder(
                value: _brightnessValue,
                isVolumeIndicator: false,
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildSubtitle() {
    if (videoPlayerController.subtitle.isEmpty) {
      return const SizedBox();
    }
    return Obx(
          () =>
          AnimatedPositioned(
            right: 0,
            left: 0,
            top: 0,
            duration: const Duration(milliseconds: 100),
            bottom: showControls.value
                ? 100
                : (24 + settings.subtitleBottomPadding.toDouble()),
            child: AnimatedContainer(
              alignment: Alignment.bottomCenter,
              duration: const Duration(milliseconds: 300),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: videoPlayerController.subtitle[0].isEmpty
                          ? Colors.transparent
                          : Color(
                        settings.subtitleBackgroundColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      [
                        for (final line in videoPlayerController.subtitle)
                          if (line
                              .trim()
                              .isNotEmpty) line.trim(),
                      ].join('\n'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: settings.subtitleSize.toDouble(),
                        fontWeight:
                        FontWeight.values[settings.subtitleWeight.toInt()],
                        fontFamily: settings.subtitleFont,
                        color: Color(settings.subtitleColor),
                        shadows: [
                          Shadow(
                            offset: const Offset(1.0, 1.0),
                            blurRadius: 10.0,
                            color: Color(settings.subtitleOutlineColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  Widget _buildVideoOverlay() {
    return Obx(() {
      return Positioned.fill(
        child: AnimatedOpacity(
          opacity: showControls.value ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: IgnorePointer(
            ignoring: !showControls.value,
            child: PlayerController(player: this),
          ),
        ),
      );
    });
  }

  var _volumeInterceptEventStream = false;
  final _volumeValue = 0.0.obs;
  final _brightnessValue = 0.0.obs;
  var _defaultBrightness = 0.0;

  Future<void> _handleVolumeAndBrightness() async {
    VolumeController().showSystemUI = false;
    _volumeValue.value = await VolumeController().getVolume();
    VolumeController().listener((value) {
      if (mounted && !_volumeInterceptEventStream) {
        _volumeValue.value = value;
      }
    });
    _defaultBrightness = await ScreenBrightness().system;
    _brightnessValue.value = await ScreenBrightness().application;
    ScreenBrightness().onCurrentBrightnessChanged.listen((value) {
      if (mounted) {
        _brightnessValue.value = value;
      }
    });
  }

  final _volumeIndicator = false.obs;
  final _brightnessIndicator = false.obs;
  Timer? _volumeTimer;
  Timer? _brightnessTimer;

  Future<void> setVolume(double value) async {
    if (!isMobile) return;
    try {
      VolumeController().setVolume(value);
    } catch (_) {}
    _volumeValue.value = value;
    _volumeIndicator.value = true;
    _volumeInterceptEventStream = true;
    _volumeTimer?.cancel();
    _volumeTimer = Timer(const Duration(milliseconds: 200), () {
      if (mounted) {
        _volumeIndicator.value = false;
        _volumeInterceptEventStream = false;
      }
    });
  }

  Future<void> setBrightness(double value) async {
    if (!isMobile) return;
    try {
      await ScreenBrightness().setApplicationScreenBrightness(value);
    } catch (_) {}
    _brightnessIndicator.value = true;
    _brightnessTimer?.cancel();
    _brightnessTimer = Timer(const Duration(milliseconds: 200), () {
      if (mounted) {
        _brightnessIndicator.value = false;
      }
    });
  }

  final doubleTapLabel = 0.obs;
  Timer? doubleTapTimeout;
  final isLeftSide = false.obs;
  final skipDuration = 0.obs;

  void _handleDoubleTap(TapDownDetails details) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final tapPosition = details.globalPosition;
    final isLeft = tapPosition.dx < screenWidth / 2;
    _skipSegments(isLeft);
  }

  double initialSpeed = 1.0;
  double currentSpeed = 2.0;
  Offset? longPressStartPosition;
  RxBool isLongPress = false.obs;

  void _handleLongPressStart(LongPressStartDetails details) {
    isLongPress.value = true;
    initialSpeed = videoPlayerController.currentSpeed.value;
    currentSpeed = initialSpeed * 2.0;
    longPressStartPosition = details.localPosition;
    videoPlayerController.setRate(currentSpeed);
  }

  void _handleLongPressMove(LongPressMoveUpdateDetails details) {
    if (longPressStartPosition == null) return;
    final double deltaX = details.localPosition.dx - longPressStartPosition!.dx;
    const double sensitivity = 0.01;
    currentSpeed = (2.0 + deltaX * sensitivity).clamp(0.25, 16.0);
    currentSpeed = double.parse(currentSpeed.toStringAsFixed(2));
    videoPlayerController.setRate(currentSpeed);
  }

  void _handleLongPressEnd(LongPressEndDetails details) {
    videoPlayerController.setRate(initialSpeed);
    longPressStartPosition = null;
    isLongPress.value = false;
  }

  void _skipSegments(bool isLeft) {
    if (isLeftSide.value != isLeft) {
      doubleTapLabel.value = 0;
      skipDuration.value = 0;
    }
    isLeftSide.value = isLeft;
    doubleTapLabel.value += 10;
    skipDuration.value += 10;
    isLeft
        ? _leftAnimationController.forward(from: 0)
        : _rightAnimationController.forward(from: 0);

    doubleTapTimeout?.cancel();

    doubleTapTimeout = Timer(const Duration(milliseconds: 900), () {
      final currentPosition = videoPlayerController.currentPosition.value;
      if (currentPosition == const Duration(seconds: 0)) return;
      if (isLeft) {
        videoPlayerController.seek(
          Duration(
            seconds: max(0, currentPosition.inSeconds - skipDuration.value),
          ),
        );
      } else {
        videoPlayerController.seek(
          Duration(
            seconds: currentPosition.inSeconds + skipDuration.value,
          ),
        );
      }
      _leftAnimationController.stop();
      _rightAnimationController.stop();
      doubleTapLabel.value = 0;
      skipDuration.value = 0;
    });
  }

  Widget _buildRippleEffect() {
    if (doubleTapLabel.value == 0) {
      return const SizedBox();
    }
    return AnimatedPositioned(
      left: isLeftSide.value ? 0 : MediaQuery
          .of(context)
          .size
          .width / 1.5,
      width: MediaQuery
          .of(context)
          .size
          .width / 2.5,
      top: 0,
      bottom: 0,
      duration: const Duration(milliseconds: 1000),
      child: AnimatedBuilder(
        animation: isLeftSide.value
            ? _leftAnimationController
            : _rightAnimationController,
        builder: (context, child) {
          final scale = Tween<double>(begin: 1.5, end: 1).animate(
            CurvedAnimation(
              parent: isLeftSide.value
                  ? _leftAnimationController
                  : _rightAnimationController,
              curve: Curves.bounceInOut,
            ),
          );

          return GestureDetector(
            onDoubleTapDown: (t) => _handleDoubleTap(t),
            child: Opacity(
              opacity: 1.0 -
                  (isLeftSide.value
                      ? _leftAnimationController.value
                      : _rightAnimationController.value),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isLeftSide.value ? 0 : 500),
                    topRight: Radius.circular(isLeftSide.value ? 500 : 0),
                    bottomLeft: Radius.circular(isLeftSide.value ? 0 : 500),
                    bottomRight: Radius.circular(isLeftSide.value ? 500 : 0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ScaleTransition(
                      scale: scale,
                      child: Icon(
                        isLeftSide.value
                            ? Icons.fast_rewind_rounded
                            : Icons.fast_forward_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "${doubleTapLabel.value}s",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEpisodeList() {
    var episodeList = widget.media.anime?.episodes ?? {};
    var (chunk, initChunkIndex) =
    buildChunks(context, episodeList, widget.media.userProgress.toString());

    RxInt selectedChunkIndex = (-1).obs;
    selectedChunkIndex =
    selectedChunkIndex.value == -1 ? initChunkIndex : selectedChunkIndex;

    return ScrollConfig(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTitle(),
          ChunkSelector(
            context,
            chunk,
            selectedChunkIndex,
            reverse,
          ),
          Obx(
                () {
              var reversed = reverse.value
                  ? chunk.map((element) => element.reversed.toList()).toList()
                  : chunk;
              return EpisodeAdaptor(
                type: viewType.value,
                source: widget.source,
                episodeList: reversed[selectedChunkIndex.value],
                mediaData: widget.media,
                onEpisodeClick: () => Get.back(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            getString.episode(widget.media.anime?.episodes?.length ?? 1),
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          IconButton(
            onPressed: () => settingsDialog(),
            icon: Icon(
              Icons.menu_rounded,
              color: Theme
                  .of(context)
                  .colorScheme
                  .onSurface,
            ),
          ),
        ],
      ),
    );
  }

  void settingsDialog() =>
      AnimeCompactSettings(
        context,
        widget.media,
        widget.source,
            (i) {
          viewType.value = i.recyclerStyle;
          reverse.value = i.recyclerReversed;
        },
      ).showDialog();

  void _handleKeyPress(KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _skipSegments(true);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        _skipSegments(false);
      } else if (event.logicalKey == LogicalKeyboardKey.space) {
        videoPlayerController.playOrPause();
      } else if (event.logicalKey == LogicalKeyboardKey.enter) {
        showEpisodes.value = !showEpisodes.value;
      } else if (RegExp(r'^[0-9]$').hasMatch(event.logicalKey.keyLabel)) {
        var keyNumber = int.parse(event.logicalKey.keyLabel);

        var videoDurationSeconds =
        _timeStringToSeconds(videoPlayerController.maxTime.value);
        var targetSeconds = (keyNumber / 10) * videoDurationSeconds;

        if (keyNumber == 1) {
          targetSeconds = 0;
        } else if (keyNumber == 0) {
          targetSeconds = videoDurationSeconds.toDouble();
        } else {
          targetSeconds = (keyNumber / 10) * videoDurationSeconds;
        }

        videoPlayerController.seek(Duration(seconds: targetSeconds.toInt()));
      }
    }
  }

  int _timeStringToSeconds(String time) {
    final parts = time.split(':').map(int.parse).toList();
    if (parts.length == 2) return parts[0] * 60 + parts[1];
    if (parts.length == 3) {
      return parts[0] * 3600 + parts[1] * 60 + parts[2];
    }
    return 0;
  }

  void changeViewType(RxInt viewType, int index) {
    var type = loadSelected(widget.media);
    viewType.value = index;
    type.recyclerStyle = index;
    saveSelected(widget.media.id, type);
  }

  void saveSelected(int id, Selected data) {
    var sourceName =
        Provider
            .of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    saveCustomData("Selected-$id-$sourceName", data);
  }

  Selected loadSelected(m.Media mediaData) {
    var sourceName =
        Provider
            .of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    return loadCustomData("Selected-${mediaData.id}-$sourceName") ?? Selected();
  }
}
