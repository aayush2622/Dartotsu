import 'dart:async';
import 'dart:math';

import 'package:dantotsu/Preferences/HiveDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Preferences/Preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../../DataClass/Episode.dart';
import '../../../../../../DataClass/Media.dart' as m;
import '../../../../../../Preferences/HiveDataClasses/Selected/Selected.dart';
import '../../../../../../Services/ServiceSwitcher.dart';
import '../../../../../../Widgets/ScrollConfig.dart';
import '../../../../../../api/Mangayomi/Eval/dart/model/video.dart' as v;
import '../../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../../Settings/SettingsPlayerScreen.dart';

import '../../Widgets/BuildChunkSelector.dart';
import 'Platform/BasePlayer.dart';
import 'Platform/WindowsPlayer.dart';
import 'PlayerController.dart';

class MediaPlayer extends StatefulWidget {
  final m.Media media;
  final int index;
  final List<v.Video> videos;
  final Episode currentEpisode;

  final Source source;

  const MediaPlayer({
    super.key,
    required this.media,
    required this.index,
    required this.videos,
    required this.currentEpisode,
    required this.source,
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
  var showControls = true;
  var viewType = 0.obs;
  var showEpisodes = false.obs;
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    _configureSystemSettings();
    _loadPlayerSettings();
    _initializePlayer();
    _leftAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _rightAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
  }

  void _configureSystemSettings() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void _initializePlayer() {
    currentQuality = widget.videos[widget.index];

    videoPlayerController = WindowsPlayer(resizeMode, settings);

    videoPlayerController.open(currentQuality.url);
  }

  void _loadPlayerSettings() {
    settings = PrefManager.getVal(PrefName.playerSettings);

    widget.media.anime?.playerSettings = settings;

    resizeMode = (resizeMap[settings.resizeMode] ?? BoxFit.contain).obs;
    var type = loadSelected(widget.media).recyclerStyle ??
        PrefManager.getVal(PrefName.AnimeDefaultView) ??
        0;
    viewType = type.obs;
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          const double minWidth = 250;
          final double availableWidth = constraints.maxWidth;

          double episodePanelWidth =
              (availableWidth / 3).clamp(minWidth, availableWidth);

          return StatefulBuilder(
            builder: (context, setState) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildVideoPlayer(availableWidth, episodePanelWidth),
                  Obx(() {
                    if (!showEpisodes.value) {
                      return const SizedBox();
                    }
                    return GestureDetector(
                      onHorizontalDragUpdate: (details) {
                        setState(() => episodePanelWidth =
                            (episodePanelWidth - details.delta.dx)
                                .clamp(minWidth, availableWidth));
                      },
                      child: SizedBox(
                        width: episodePanelWidth,
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.all(8.0),
                          child: _buildEpisodeList(),
                        ),
                      ),
                    );
                  }),
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
          children: [
            videoPlayerController.playerWidget(),
            KeyboardListener(
              focusNode: focusNode,
              onKeyEvent: _handleKeyPress,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapDown: (_) => setState(() => showControls = !showControls),
                onDoubleTapDown: (t) => _handleDoubleTap(t),
                child: AnimatedOpacity(
                  opacity: showControls ? 0.5 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(color: Colors.black),
                ),
              ),
            ),
            _buildVideoOverlay(),
            _buildRippleEffect()
          ],
        ),
      );
    });
  }

  Widget _buildVideoOverlay() {
    return Positioned.fill(
      child: AnimatedOpacity(
        opacity: showControls ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: IgnorePointer(
          ignoring: !showControls,
          child: PlayerController(player: this),
        ),
      ),
    );
  }

  final doubleTapLabel = 0.obs;
  Timer? doubleTapTimeout;
  final isLeftSide = false.obs;
  final skipDuration = 0.obs;

  void _handleDoubleTap(TapDownDetails details) {
    final screenWidth = MediaQuery.of(context).size.width;
    final tapPosition = details.globalPosition;
    final isLeft = tapPosition.dx < screenWidth / 2;
    _skipSegments(isLeft);
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

    doubleTapTimeout = Timer(const Duration(milliseconds: 1000), () {
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
      left: isLeftSide.value ? 0 : MediaQuery.of(context).size.width / 1.5,
      width: MediaQuery.of(context).size.width / 2.5,
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
    Map<String, Episode> episodeList = widget.media.anime?.episodes ?? {};
    var (chunk, selected) =
        buildChunks(context, episodeList, widget.media.userProgress.toString());
    return ScrollConfig(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTitle(),
          buildChunkSelector(context, chunk, selected),
          Obx(
            () => EpisodeAdaptor(
              type: viewType.value,
              source: widget.source,
              episodeList: chunk[selected.value],
              mediaData: widget.media,
              onEpisodeClick: () => Get.back(),
            ),
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
          const Text(
            'Episodes',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          _buildIconButtons(),
        ],
      ),
    );
  }

  Widget _buildIconButtons() {
    final theme = Theme.of(context).colorScheme;
    final icons = [
      Icons.view_list_sharp,
      Icons.grid_view_rounded,
      Icons.view_comfy_rounded,
    ];
    return Obx(() {
      return Wrap(
        spacing: 8.0,
        children: List.generate(icons.length, (index) {
          return IconButton(
            icon: Transform(
              alignment: Alignment.center,
              transform:
                  index == 0 ? Matrix4.rotationY(3.14159) : Matrix4.identity(),
              child: Icon(icons[index]),
            ),
            iconSize: 24,
            color: viewType.value == index
                ? theme.onSurface
                : theme.onSurface.withValues(alpha: 0.33),
            onPressed: () => changeViewType(viewType, index),
          );
        }),
      );
    });
  }

  void _handleKeyPress(KeyEvent event) {
    if (event is KeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _skipSegments(true);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        _skipSegments(false);
      } else if (event.logicalKey == LogicalKeyboardKey.space) {
        videoPlayerController.playOrPause();
      }
    }
  }

  void changeViewType(RxInt viewType, int index) {
    var type = loadSelected(widget.media);
    viewType.value = index;
    type.recyclerStyle = index;
    saveSelected(widget.media.id, type);
  }

  void saveSelected(int id, Selected data) {
    var sourceName =
        Provider.of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    PrefManager.setCustomVal("Selected-$id-$sourceName", data);
  }

  Selected loadSelected(m.Media mediaData) {
    var sourceName =
        Provider.of<MediaServiceProvider>(Get.context!, listen: false)
            .currentService
            .getName;
    return PrefManager.getCustomVal("Selected-${mediaData.id}-$sourceName") ??
        Selected();
  }
}
