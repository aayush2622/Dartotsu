import 'dart:io';

import 'package:dartotsu/Adaptor/Episode/EpisodeAdaptor.dart';
import 'package:dartotsu/Api/Sources/Eval/dart/model/video.dart' as v;
import 'package:dartotsu/Api/Sources/Model/Source.dart';
import 'package:dartotsu/DataClass/Episode.dart';
import 'package:dartotsu/DataClass/Media.dart' as m;
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Screens/Anime/Player/Platform/WindowsPlayer.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu/Widgets/AlertDialogBuilder.dart';
import 'package:dartotsu/Widgets/CustomBottomDialog.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:window_manager/window_manager.dart';

import '../../../../../../Api/Discord/Discord.dart';
import '../../../../../../Api/Discord/DiscordService.dart';
import '../../../../../../Api/EpisodeDetails/Aniskip/Aniskip.dart';
import '../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import '../../Settings/SettingsPlayerScreen.dart';
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
  late BasePlayer controller;
  late v.Video currentQuality;
  late PlayerSettings settings;
  late int fitType;
  final timeStamps = <Stamp>[].obs;
  final timeStampsText = ''.obs;
  final isFullScreen = false.obs;
  final isControlsLocked = false.obs;
  int? currentProgress;
  int? maxProgress;

  @override
  void initState() {
    super.initState();
    media = widget.player.widget.media;
    currentEpisode = widget.player.widget.currentEpisode;
    var sourceName = context.currentService(listen: false).getName;
    var key = "${media.id}-${currentEpisode.number}-$sourceName";

    videos = widget.player.widget.videos;
    source = widget.player.widget.source;
    showEpisodes = widget.player.showEpisodes;
    resizeMode = widget.player.resizeMode;

    settings = media.settings.playerSettings;
    fitType = settings.resizeMode;
    WakelockPlus.enable();
    if (!widget.player.isMobile) initFullScreen();
    controller = widget.player.videoPlayerController;
    currentQuality = videos[widget.player.widget.index];
    controller.listenToPlayerStream();
    currentProgress = loadCustomData<int>("$key-current");
    maxProgress = loadCustomData<int>("$key-max");
    _init();
  }

  Future<void> _init() async {
    while (controller.maxTime.value == '00:00') {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    setDiscordRpc();
    setTimeStamps();

    var list = List<int>.from(
      loadCustomData<List<int>>("continueAnimeList") ?? [],
    );

    if (list.contains(media.id)) {
      list.remove(media.id);
    }

    list.add(media.id);

    saveCustomData<List<int>>("continueAnimeList", list);

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
    processTracks(currentQuality.subtitles, controller.subtitles, "subtitle");

    currentQuality.audios ??= [];
    processTracks(currentQuality.audios, controller.audios, "audio");

    var defaultSub = currentQuality.subtitles?.firstWhereOrNull(
      (element) => element.label == 'English',
    );
    if (defaultSub != null) {
      controller.setSubtitle(
        defaultSub.file ?? "Unknown",
        defaultSub.label ?? "",
        defaultSub.file?.toNullInt() == null,
      );
    }
  }

  Future<void> setDiscordRpc() async {
    Discord.setRpc(
      media,
      episode: currentEpisode,
      eTime: _timeStringToSeconds(
        controller.maxTime.value,
      ).toInt(),
      currentTime: currentProgress ?? 0,
    );
  }

  Future<void> setTimeStamps() async {
    timeStamps.value = await AniSkip.getResult(
          malId: media.idMAL,
          episodeNumber: currentEpisode.number.toInt(),
          episodeLength: _timeStringToSeconds(controller.maxTime.value).toInt(),
          useProxyForTimeStamps: false,
        ) ??
        [];

    controller.currentPosition.listen(
      (v) {
        if (v.inSeconds > 0) {
          _saveProgress(v.inSeconds);
          timeStampsText.value = timeStamps
                  .firstWhereOrNull(
                    (e) =>
                        (e.interval.startTime <= v.inSeconds) &&
                        (e.interval.endTime >= v.inSeconds),
                  )
                  ?.getType() ??
              '';
        }
      },
    );
  }

  Future<void> _saveProgress(int currentProgress) async {
    if (!mounted) return;
    var sourceName = context.currentService(listen: false).getName;
    var key = "${media.id}-${currentEpisode.number}-$sourceName";
    var maxProgress = controller.maxTime.value;
    saveCustomData<int>("$key-current", currentProgress);
    saveCustomData<int>("$key-max", _timeStringToSeconds(maxProgress).toInt());
  }

  @override
  void dispose() {
    super.dispose();
    if (DiscordService.isInitialized) DiscordService.stopRPC();
    WakelockPlus.disable();
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

  Widget _buildTimeInfo() {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                controller.currentTime.value == '00:00' &&
                        currentProgress != null
                    ? _formatTime(currentProgress!)
                    : controller.currentTime.value,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                " / ",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              Text(
                controller.maxTime.value == '00:00' && maxProgress != null
                    ? _formatTime(maxProgress!)
                    : controller.maxTime.value,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
              ),
              Obx(
                () => timeStampsText.value != ''
                    ? Text(
                        "  • $timeStampsText",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Poppins-SemiBold',
                        ),
                      )
                    : const SizedBox(),
              ),
            ],
          ),
          if (!isControlsLocked.value) _buildSkipButton(),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    var thumbLess = loadData(PrefName.thumbLessSeekBar);
    return SizedBox(
      height: 18,
      child: Column(
        children: [
          IgnorePointer(
            ignoring: isControlsLocked.value,
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: thumbLess ? 5.8 : 2,
                thumbColor: Theme.of(context).colorScheme.primary,
                activeTrackColor: Theme.of(context).colorScheme.primary,
                inactiveTrackColor: const Color.fromARGB(255, 121, 121, 121),
                secondaryActiveTrackColor:
                    const Color.fromARGB(255, 167, 167, 167),
                thumbShape: thumbLess
                    ? SliderComponentShape.noThumb
                    : const RoundSliderThumbShape(enabledThumbRadius: 6),
                overlayShape: SliderComponentShape.noOverlay,
                trackShape: const RoundedRectSliderTrackShape(),
              ),
              child: Obx(
                () {
                  var bufferingValue =
                      _timeStringToSeconds(controller.bufferingTime.value);
                  var currentValue = controller.currentTime.value == '00:00' &&
                          currentProgress != null
                      ? currentProgress!.toDouble()
                      : _timeStringToSeconds(controller.currentTime.value);

                  var maxValue =
                      controller.maxTime.value == '00:00' && maxProgress != null
                          ? maxProgress!.toDouble()
                          : _timeStringToSeconds(controller.maxTime.value);

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
                          controller.seek(Duration(seconds: val.toInt()));
                        },
                        onChanged: (double value) => controller
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
      decoration: const BoxDecoration(
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
        Expanded(
          child: Obx(
            () {
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
            },
          ),
        ),
        _buildControlButton(
          icon: Icons.video_collection_rounded,
          onPressed: () => showEpisodes.value = !showEpisodes.value,
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.slow_motion_video_rounded,
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
          icon: Icons.video_settings_rounded,
          onPressed: () {
            controller.pause();
            showCustomBottomDialog(
              context,
              CustomBottomDialog(
                title: getString.playerSettingsTitle,
                viewList: [
                  Builder(
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: playerSettings(
                            context, widget.player.setState,
                            media: media),
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
          icon: Icons.source_rounded,
          onPressed: () => _sourceDialog(),
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.subtitles_rounded,
          onPressed: () => _subtitleDialog(),
        ),
        const SizedBox(width: 24),
        _buildControlButton(
          icon: Icons.audiotrack_rounded,
          onPressed: () => _audioDialog(),
        ),
      ],
    );
  }

  Widget _buildRightBottomControls() {
    return Row(
      children: [
        _buildControlButton(
          icon: Icons.fit_screen_rounded,
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
                    controller.pause();
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
            () => controller.isBuffering.value
                ? const CircularProgressIndicator(color: Colors.white)
                : _buildControlButton(
                    icon: controller.isPlaying.value
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    size: 42,
                    onPressed: controller.playOrPause,
                  ),
          ),
          const SizedBox(width: 36),
          hasNextEpisode
              ? _buildControlButton(
                  icon: Icons.skip_next_rounded,
                  size: 42,
                  onPressed: () {
                    controller.pause();
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
    var cursed = loadData(PrefName.cursedSpeed);
    var selectedItemIndex = speedMap(cursed).indexOf(settings.speed);
    AlertDialogBuilder(context)
      ..setTitle("Speed")
      ..singleChoiceItems(speedMap(cursed), selectedItemIndex, (index) {
        settings.speed = speedMap(cursed)[index];
        MediaSettings.saveMediaSettings(
            media..settings.playerSettings.speed = settings.speed);
        controller.setRate(
            double.parse(speedMap(cursed)[index].replaceFirst("x", "")));
      })
      ..show();
  }

  void _subtitleDialog() {
    controller.pause();

    final noSubtitles = currentQuality.subtitles?.isEmpty ?? true;

    final subtitlesDialog = CustomBottomDialog(
      title: "Subtitles",
      viewList: [_buildSubtitleList(noSubtitles)],
      negativeText: "Add Subtitle",
      negativeCallback: () async {
        final pickedFile = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: subMap,
        );

        if (pickedFile?.files.single.path == null) return;

        final file = pickedFile!.files.single;
        currentQuality.subtitles ??= [];
        currentQuality.subtitles!.add(
          v.Track(
            file: file.path!,
            label: file.name,
          ),
        );

        controller.setSubtitle(
          file.path!,
          file.name,
          file.path?.toNullInt() == null,
        );

        Get.back();
        controller.play();
      },
    );

    showCustomBottomDialog(context, subtitlesDialog);
  }

  void _audioDialog() {
    controller.pause();
    var audioDialog = CustomBottomDialog(
      title: "Audio",
      viewList: [_buildAudioList(currentQuality.audios?.isEmpty ?? true)],
      negativeText: "Add Audio",
      negativeCallback: () async {
        final pickedFile = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: audioMap,
        );

        if (pickedFile?.files.single.path == null) return;

        final file = pickedFile!.files.single;
        currentQuality.audios ??= [];
        currentQuality.audios!.add(
          v.Track(
            file: file.path,
            label: file.name,
          ),
        );
        await controller.setAudio(
          file.path!,
          file.name,
          file.path?.toNullInt() == null,
        );

        Get.back();
        controller.play();
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
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                controller.setSubtitle(
                  sub.file ?? "",
                  sub.label ?? "",
                  sub.file?.toNullInt() == null,
                );
                Get.back();
                controller.play();
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  sub.label ?? "",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: (controller as WindowsPlayer).currentSubtitle ==
                            sub.label
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
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
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                controller.setAudio(
                  sub.file ?? "",
                  sub.label ?? "",
                  sub.file?.toNullInt() == null,
                );
                Get.back();
                controller.play();
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  sub.label ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
      controller.seek(Duration(seconds: current.interval.endTime.toInt()));
      return;
    }
    var currentTime = _timeStringToSeconds(controller.currentTime.value);
    var maxTime = _timeStringToSeconds(controller.maxTime.value);
    var newTime = currentTime + seconds;
    if (newTime > maxTime) {
      newTime = maxTime;
    }
    controller.seek(Duration(seconds: newTime.toInt()));
  }

  Future<void> _toggleFullScreen() async {
    isFullScreen.value = !isFullScreen.value;
    await WindowManager.instance.setFullScreen(isFullScreen.value);
  }

  void switchAspectRatio() {
    fitType = (fitType < 2) ? fitType + 1 : 0;
    resizeMode.value = resizeMap[fitType] ?? BoxFit.contain;
    settings.resizeMode = fitType;
    MediaSettings.saveMediaSettings(
        media..settings.playerSettings.resizeMode = fitType);
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
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  if (currentQuality == videos[index]) {
                    Get.back();
                    return;
                  }
                  currentQuality = videos[index];
                  controller.open(
                    currentQuality,
                    controller.currentPosition.value,
                  );
                  Get.back();
                },
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          videos[index].quality,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      Icon(
                        Icons.play_arrow,
                        size: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
    showCustomBottomDialog(context, episodeDialog);
  }
}
