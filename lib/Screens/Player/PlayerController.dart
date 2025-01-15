import 'dart:io';

import 'package:dantotsu/Adaptor/Episode/EpisodeAdaptor.dart';
import 'package:dantotsu/DataClass/Episode.dart';
import 'package:dantotsu/DataClass/Media.dart' as m;
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Functions/string_extensions.dart';
import 'package:dantotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dantotsu/Widgets/CustomBottomDialog.dart';
import 'package:dantotsu/api/Mangayomi/Eval/dart/model/video.dart' as v;
import 'package:dantotsu/api/Mangayomi/Model/Source.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:window_manager/window_manager.dart';

import '../../../../../../Services/ServiceSwitcher.dart';
import '../../../../../../api/Discord/Discord.dart';
import '../../../../../../api/Discord/DiscordService.dart';
import '../../../../../../api/EpisodeDetails/Aniskip/Aniskip.dart';
import '../Settings/SettingsPlayerScreen.dart';
import 'Platform/BasePlayer.dart';
import 'Player.dart';

class PlayerController extends StatefulWidget {
  final MediaPlayerState player;

  const PlayerController({
    super.key,
    required this.player,
  });

  @override
  State<PlayerController> createState() => _PlayerControllerState();
}

class _PlayerControllerState extends State<PlayerController> {
  late m.Media media;
  late List<v.Video> videos;
  late Episode currentEpisode;
  late Rx<BoxFit> resizeMode;
  late Source source;
  late RxBool showEpisodes;
  late BasePlayer _controller;
  late v.Video currentQuality;
  late PlayerSettings settings;
  late int fitType;
  final timeStamps = <Stamp>[].obs;
  final timeStampsText = ''.obs;
  final isFullScreen = false.obs;
  final isControlsLocked = false.obs;

  @override
  void initState() {
    super.initState();
    media = widget.player.widget.media;
    videos = widget.player.widget.videos;
    currentEpisode = widget.player.widget.currentEpisode;
    source = widget.player.widget.source;
    showEpisodes = widget.player.showEpisodes;
    resizeMode = widget.player.resizeMode;

    settings = media.anime!.playerSettings!;
    fitType = settings.resizeMode;
    WakelockPlus.enable();
    if (!widget.player.isMobile) initFullScreen();
    _controller = widget.player.videoPlayerController;
    currentQuality = videos[widget.player.widget.index];
    _controller.listenToPlayerStream();
    _onInit(context);
  }

  Future<void> _onInit(BuildContext context) async {
    var sourceName = Provider.of<MediaServiceProvider>(context, listen: false)
        .currentService
        .getName;
    var currentProgress = PrefManager.getCustomVal<int>(
      "${media.id}-${currentEpisode.number}-$sourceName-current",
    );
    while (_controller.maxTime.value == '00:00') {
      await Future.delayed(const Duration(milliseconds: 100));
    }
    _controller.pause();
    _controller.isBuffering.value = true;
    setDiscordRpc();
    setTimeStamps();

    _controller.seek(Duration(seconds: currentProgress ?? 0));
    var list = List<int>.from(
      PrefManager.getCustomVal<List<int>>("continueAnimeList") ?? [],
    );
    if (list.contains(media.id)) {
      list.remove(media.id);
    }

    list.add(media.id);
    PrefManager.setCustomVal<List<int>>("continueAnimeList", list);

    void processTracks(List<v.Track>? tracks, controllerTracks, String type) {
      for (var track in controllerTracks) {
        if (track.id == 'auto' || track.id == 'no') continue;
        final trackEntry = v.Track(
          file: track.id,
          label: track.title ?? track.language ?? "Unknown",
        );
        tracks ??= [];
        tracks.add(trackEntry);
      }
    }

    currentQuality.subtitles ??= [];
    processTracks(currentQuality.subtitles, _controller.subtitles, "subtitle");

    currentQuality.audios ??= [];
    processTracks(currentQuality.audios, _controller.audios, "audio");

    var defaultSub = currentQuality.subtitles?.firstWhereOrNull(
      (element) => element.label == 'English',
    );
    var defaultAudio = currentQuality.audios?.firstWhereOrNull(
      (element) => element.label == 'English',
    );
    if (defaultAudio!= null) {
      await _controller.setAudio(
        defaultAudio.file ?? "",
        defaultAudio.label ?? "",
        defaultAudio.file?.toNullInt() == null,
      );
    }
    if (defaultSub!= null) {
      _controller.setSubtitle(
        defaultSub.file ?? "",
        defaultSub.label ?? "",
        defaultSub.file?.toNullInt() == null,
      );
    }
    _controller.isBuffering.value = false;
    _controller.play();
  }

  Future<void> _saveProgress(int currentProgress) async {
    if (!mounted) return;
    var sourceName = Provider.of<MediaServiceProvider>(context, listen: false)
        .currentService
        .getName;
    var maxProgress = _controller.maxTime.value;
    PrefManager.setCustomVal<int>(
        "${media.id}-${currentEpisode.number}-$sourceName-current",
        currentProgress);
    PrefManager.setCustomVal<int>(
        "${media.id}-${currentEpisode.number}-$sourceName-max",
        _timeStringToSeconds(maxProgress).toInt());
  }

  Future<void> setTimeStamps() async {
    timeStamps.value = await AniSkip.getResult(
          malId: media.idMAL,
          episodeNumber: currentEpisode.number.toInt(),
          episodeLength:
              _timeStringToSeconds(_controller.maxTime.value).toInt(),
          useProxyForTimeStamps: false,
        ) ??
        [];

    _controller.currentPosition.listen((v) {
      if (v.inSeconds > 0) {
        _saveProgress(v.inSeconds);
        timeStampsText.value = timeStamps
            .firstWhereOrNull((e) =>
        e.interval.startTime <= v.inSeconds &&
            e.interval.endTime >= v.inSeconds,
        )?.getType() ?? '';
      }
      },
    );
  }

  Future<void> setDiscordRpc() async {
    Discord.setRpc(
      media,
      episode: currentEpisode,
      eTime: _timeStringToSeconds(
        _controller.maxTime.value,
      ).toInt(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (DiscordService.isInitialized) DiscordService.stopRPC();
    WakelockPlus.disable();
  }

  Future initFullScreen() async =>
      isFullScreen.value = await WindowManager.instance.isFullScreen();

  String _formatTime(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;
    return [
      if (hours > 0) hours.toString().padLeft(2, '0'),
      minutes.toString().padLeft(2, '0'),
      secs.toString().padLeft(2, '0'),
    ].join(":");
  }

  double _timeStringToSeconds(String time) {
    final parts = time.split(':').map(int.parse).toList();
    if (parts.length == 2) return (parts[0] * 60 + parts[1]).toDouble();
    if (parts.length == 3) {
      return (parts[0] * 3600 + parts[1] * 60 + parts[2]).toDouble();
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          _buildTopControls(),
          _buildCenterControls(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildTimeInfo(),
              Transform.scale(
                scaleX: 1.01,
                child: _buildProgressBar(),
              ),
              _buildBottomControls(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeInfo() {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                _controller.currentTime.value,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                " / ",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              Text(
                _controller.maxTime.value,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              Obx(
                () => timeStampsText.value != '' ? Text(
                  "  • $timeStampsText",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ) : const SizedBox(),
              ),
            ],
          ),
          if (!isControlsLocked.value) _buildSkipButton(),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return SizedBox(
      height: 18,
      child: Column(
        children: [
          IgnorePointer(
            ignoring: isControlsLocked.value,
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: 5.8,

                thumbColor: Theme.of(context).colorScheme.primary,
                activeTrackColor: Theme.of(context).colorScheme.primary,
                inactiveTrackColor: const Color.fromARGB(255, 121, 121, 121),
                secondaryActiveTrackColor:
                    const Color.fromARGB(255, 167, 167, 167),
                thumbShape: SliderComponentShape.noThumb,
                overlayShape: SliderComponentShape.noOverlay,
                trackShape: RoundedRectSliderTrackShape(),
              ),
              child: Obx(
                () {
                  var bufferingValue =
                      _timeStringToSeconds(_controller.bufferingTime.value);
                  var currentValue =
                      _timeStringToSeconds(_controller.currentTime.value);
                  var maxValue =
                      _timeStringToSeconds(_controller.maxTime.value);

                  return Stack(
                    children: [
                      Slider(
                        min: 0,
                        max: maxValue > 0 ? maxValue : 1,
                        value: currentValue.clamp(0.0, maxValue),
                        secondaryTrackValue:
                            bufferingValue.clamp(0.0, maxValue),
                        secondaryActiveColor: Colors.white,
                        onChangeEnd: (val) async {
                          _controller.seek(Duration(seconds: val.toInt()));
                        },
                        onChanged: (double value) => _controller
                            .currentTime.value = _formatTime(value.toInt()),
                      ),
                      Positioned.fill(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 3.0,
                            right: 5.0,
                            top: 4.4,
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              var trackWidth = constraints.maxWidth;
                              return Stack(
                                children: timeStamps.map(
                                  (timestamp) {
                                    var startPosition =
                                        (timestamp.interval.startTime /
                                                maxValue) *
                                            trackWidth;
                                    var endPosition =
                                        (timestamp.interval.endTime /
                                                maxValue) *
                                            trackWidth;

                                    return Positioned(
                                      left:
                                          startPosition.clamp(0.0, trackWidth),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: endPosition - startPosition,
                                            child: _buildLine(),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ).toList(),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLine() {
    return Container(
      height: 3.4,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 56, 192, 41),
        shape: BoxShape.rectangle,
      ),
    );
  }

  Widget _buildTopControls() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(child: Obx(() {
          if (isControlsLocked.value) {
            return const SizedBox(height: 24);
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Episode ${currentEpisode.number}: ${currentEpisode.title}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  media.mainName(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 190, 190, 190),
                    fontSize: 13,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          );
        })),
        _buildControlButton(
          icon: Icons.video_collection,
          color: Colors.white,
          onPressed: () => showEpisodes.value = !showEpisodes.value,
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.slow_motion_video,
          onPressed: () => _playBackSpeedDialog(),
        ),
        const SizedBox(width: 24),
        Obx(
          () {
            return _buildControlButton(
              icon: isControlsLocked.value
                  ? Icons.lock_rounded
                  : Icons.lock_open_rounded,
              onPressed: () => isControlsLocked.value = !isControlsLocked.value,
              shouldLock: false,
            );
          },
        ),
      ],
    );
  }

  Widget _buildBottomControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLeftBottomControls(),
        _buildRightBottomControls(),
      ],
    );
  }

  Widget _buildLeftBottomControls() {
    return Row(
      children: [
        _buildControlButton(
          icon: Icons.video_settings,
          onPressed: () {
            _controller.pause();
            showCustomBottomDialog(
              context,
              CustomBottomDialog(
                title: 'Player Settings',
                viewList: [
                  StatefulBuilder(
                    builder: (context, setState) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: playerSettings(context, setState),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.source,
          onPressed: () => _sourceDialog(),
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.subtitles,
          onPressed: () => _subtitleDialog(),
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.audiotrack,
          onPressed: () => _audioDialog(),
        ),
      ],
    );
  }

  Widget _buildRightBottomControls() {
    return Row(
      children: [
        _buildControlButton(
          icon: Icons.fit_screen,
          onPressed: () => switchAspectRatio(),
        ),
        if (!Platform.isAndroid && !Platform.isIOS) ...[
          const SizedBox(width: 24),
          Obx(
            () => _buildControlButton(
              icon: isFullScreen.value
                  ? Icons.fullscreen_exit_rounded
                  : Icons.fullscreen_rounded,
              onPressed: _toggleFullScreen,
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildCenterControls() {
    var episodeList = media.anime!.episodes!.values.toList();
    var index = episodeList.indexOf(currentEpisode);

    bool hasNextEpisode = index + 1 < episodeList.length;

    bool hasPreviousEpisode = index - 1 >= 0;
    return Positioned.fill(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (hasPreviousEpisode
              ? _buildControlButton(
                  icon: Icons.skip_previous_rounded,
                  size: 42,
                  onPressed: () {
                    _controller.pause();
                    onEpisodeClick(
                      context,
                      episodeList[index - 1],
                      source,
                      media,
                      () => Get.back(),
                    );
                  },
                )
              : const SizedBox(width: 42)),
          const SizedBox(width: 36),
          Obx(
            () => _controller.isBuffering.value
                ? const CircularProgressIndicator(color: Colors.white)
                : _buildControlButton(
                    icon: _controller.isPlaying.value
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    size: 42,
                    onPressed: _togglePlayPause,
                  ),
          ),
          const SizedBox(width: 36),
          hasNextEpisode
              ? _buildControlButton(
                  icon: Icons.skip_next_rounded,
                  size: 42,
                  onPressed: () {
                    _controller.pause();
                    onEpisodeClick(
                      context,
                      episodeList[index + 1],
                      source,
                      media,
                      () => Get.back(),
                    );
                  },
                )
              : const SizedBox(width: 42),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 24,
    Color color = Colors.white,
    bool shouldLock = true,
  }) {
    if (shouldLock) {
      return Obx(() => isControlsLocked.value
          ? const SizedBox(height: 24)
          : _buildButton(icon, onPressed, size, color));
    } else {
      return _buildButton(icon, onPressed, size, color);
    }
  }

  Widget _buildButton(
      IconData icon, VoidCallback onPressed, double size, Color color) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onPressed,
      child: Icon(icon, color: color, size: size),
    );
  }

  void _playBackSpeedDialog() {
    var cursed = PrefManager.getVal(PrefName.cursedSpeed);
    var selectedItemIndex = speedMap(cursed).indexOf(settings.speed);
    AlertDialogBuilder(context)
      ..setTitle("Speed")
      ..singleChoiceItems(speedMap(cursed), selectedItemIndex, (index) {
        settings.speed = speedMap(cursed)[index];
        PrefManager.setCustomVal('${media.id}-PlayerSettings', settings);
        _controller.setRate(
            double.parse(speedMap(cursed)[index].replaceFirst("x", "")));
      })
      ..show();
  }

  void _subtitleDialog() {
    _controller.pause();
    var sub =
        currentQuality.subtitles == null || currentQuality.subtitles!.isEmpty;
    var subtitlesDialog = CustomBottomDialog(
      title: "Subtitles",
      viewList: [_buildSubtitleList(sub)],
      negativeText: "Add Subtitle",
      negativeCallback: () async {
        var file = (await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: subMap,
        ))?.files.single;
        if (file == null || file.path == null) return;
        currentQuality.subtitles ??= [];
        currentQuality.subtitles!.add(
          v.Track(
            file: file.path,
            label: file.name,
          ),
        );
        _controller.setSubtitle(
          file.path ?? "",
          file.name,
          file.path?.toNullInt() == null
        );
        Get.back();
        _controller.play();
      },
    );
    showCustomBottomDialog(context, subtitlesDialog);
  }

  void _audioDialog() {
    _controller.pause();
    var audioDialog = CustomBottomDialog(
      title: "Audio",
      viewList: [_buildAudioList(currentQuality.audios == null)],
        negativeText: "Add Audio",
        negativeCallback: () async {
          var file = (await FilePicker.platform.pickFiles(
            type: FileType.custom,
            allowedExtensions: audioMap,
          ))?.files.single;
          if (file == null || file.path == null) return;
          currentQuality.audios ??= [];
          currentQuality.audios!.add(
            v.Track(
              file: file.path,
              label: file.name,
            ),
          );
          await _controller.setAudio(
            file.path ?? "",
            file.name,
            file.path?.toNullInt() == null,
          );
          Get.back();
          _controller.play();
        },
    );
    showCustomBottomDialog(context, audioDialog);
  }

  Widget _buildSubtitleList(bool sub) {
    if (sub) {
      return const Center(
        child: Text("No subtitles available"),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: currentQuality.subtitles!.length,
        itemBuilder: (context, index) {
          var sub = currentQuality.subtitles![index];
          return ListTile(
            title: Text(sub.label ?? ""),
            onTap: () {
              _controller.setSubtitle(
                sub.file ?? "",
                sub.label ?? "",
                sub.file?.toNullInt() == null,
              );
              Get.back();
              _controller.play();
            },
          );
        },
      );
    }
  }

  Widget _buildAudioList(bool audio) {
    if (audio) {
      return const Center(
        child: Text("No audio available"),
      );
    } else {
      return ListView.builder(
        shrinkWrap: true,
        itemCount: currentQuality.audios!.length,
        itemBuilder: (context, index) {
          var sub = currentQuality.audios![index];
          return ListTile(
            title: Text(sub.label ?? ""),
            onTap: () {
              _controller.setAudio(
                sub.file ?? "",
                sub.label ?? "",
                sub.file?.toNullInt() == null,
              );
              Get.back();
              _controller.play();
            },
          );
        },
      );
    }
  }
  Widget _buildSkipButton() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _fastForward(settings.skipDuration);
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            backgroundColor: Colors.black.withValues(alpha: 0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          child: SizedBox(
            height: 46,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () {
                    return Text(
                      timeStampsText.value != ''
                          ? timeStamps
                              .firstWhere(
                                  (e) => e.getType() == timeStampsText.value)
                              .getType()
                          : "+${settings.skipDuration}s",
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                const Icon(
                  Icons.fast_forward_rounded,
                  size: 24,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }

  void _fastForward(int seconds) {
    if (timeStampsText.value != '') {
      var current = timeStamps
          .firstWhere((element) => element.getType() == timeStampsText.value);
      _controller.seek(Duration(seconds: current.interval.endTime.toInt()));
      return;
    }
    var currentTime = _timeStringToSeconds(_controller.currentTime.value);
    var maxTime = _timeStringToSeconds(_controller.maxTime.value);
    var newTime = currentTime + seconds;
    if (newTime > maxTime) {
      newTime = maxTime;
    }
    _controller.seek(Duration(seconds: newTime.toInt()));
  }

  void _toggleFullScreen() {
    isFullScreen.value = !isFullScreen.value;
    WindowManager.instance.setFullScreen(isFullScreen.value);
  }

  void switchAspectRatio() {
    fitType = (fitType < 2) ? fitType + 1 : 0;
    resizeMode.value = resizeMap[fitType] ?? BoxFit.contain;
    settings.resizeMode = fitType;
    PrefManager.setCustomVal('${media.id}-PlayerSettings', settings);
    snackString(resizeStringMap[fitType]);
  }

  void _sourceDialog() {
    var episodeDialog = CustomBottomDialog(
      title: "Sources",
      viewList: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: videos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(videos[index].quality),
              onTap: () {
                if (currentQuality == videos[index]) {
                  Get.back();
                  return;
                }
                currentQuality = videos[index];
                _controller.open(
                    currentQuality.url, _controller.currentPosition.value);
                Get.back();
              },
            );
          },
        ),
      ],
    );
    showCustomBottomDialog(context, episodeDialog);
  }

  void _togglePlayPause() =>
      _controller.isPlaying.value ? _controller.pause() : _controller.play();
}
