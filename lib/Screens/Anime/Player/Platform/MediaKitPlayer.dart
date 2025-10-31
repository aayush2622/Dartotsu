import 'dart:io';

import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

class MediaKitPlayer extends GetxController {
  Rx<BoxFit> resizeMode;
  PlayerSettings settings;

  late Player player;
  late VideoController videoController;

  RxString currentTime = "00:00".obs;
  Rx<Duration> currentPosition = const Duration(seconds: 0).obs;
  RxString maxTime = "00:00".obs;
  RxString bufferingTime = "00:00".obs;
  RxBool isBuffering = true.obs;
  RxBool isPlaying = false.obs;
  RxList<SubtitleTrack> subtitles = <SubtitleTrack>[].obs;
  RxList<AudioTrack> audios = <AudioTrack>[].obs;
  RxList<String> subtitle = <String>[].obs;
  RxList<Chapter> chapters = <Chapter>[].obs;
  Rx<double> currentSpeed = 1.0.obs;
  Rx<String?> currentSubtitleLanguage = Rx<String?>(null);
  Rx<String?> currentSubtitleUri = Rx<String?>(null);

  VideoControllerConfiguration getPlatformConfig() {
    if (Platform.isAndroid) {
      return const VideoControllerConfiguration(
        androidAttachSurfaceAfterVideoParameters: true,
      );
    }
    return const VideoControllerConfiguration();
  }

  MediaKitPlayer(this.resizeMode, this.settings) {
    final useCustomConfig = loadData(PrefName.useCustomMpvConfig);
    final mpvConfPath = loadData(PrefName.mpvConfigDir);

    player = Player(
      configuration: PlayerConfiguration(
        bufferSize: 1024 * 1024 * 64,
        // Config Options thanks to snitchel
        config: useCustomConfig,
        configDir: mpvConfPath,
        libass: settings.useLibass,
        libassAndroidFontName: "Poppins",
        libassAndroidFont: "assets/fonts/poppins.ttf",
      ),
    );
    videoController =
        VideoController(player, configuration: getPlatformConfig());
  }

  Future<void> pause() => videoController.player.pause();

  Future<void> play() => videoController.player.play();

  Future<void> playOrPause() => videoController.player.playOrPause();

  Future<void> seek(Duration duration) => videoController.player.seek(duration);

  Future<void> setRate(double rate) => videoController.player.setRate(rate);

  Future<void> setVolume(double volume) =>
      videoController.player.setVolume(volume);

  Future<void> open(v.Video video, Duration duration) async =>
      videoController.player.open(
        Media(
          video.url,
          start: duration,
          httpHeaders: video.headers,
        ),
      );

  Future<void> setSubtitle(String subtitleUri, String language, bool isUri) =>
      videoController.player.setSubtitleTrack(isUri
          ? SubtitleTrack.uri(subtitleUri, title: language)
          : SubtitleTrack(
              subtitleUri,
              language,
              language,
              uri: false,
              data: false,
            ));

  Future<void> resetSubtitle() =>
      videoController.player.setSubtitleTrack(SubtitleTrack.no());

  Future<void> setAudio(String audioUri, String language, bool isUri) =>
      videoController.player.setAudioTrack(isUri
          ? AudioTrack.uri(audioUri, title: language)
          : AudioTrack(
              audioUri,
              language,
              language,
              uri: false,
            ));

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  void listenToPlayerStream() {
    videoController.player.stream.position
        .listen((e) => currentTime.value = _formatTime(e.inSeconds));
    videoController.player.stream.duration
        .listen((e) => maxTime.value = _formatTime(e.inSeconds));
    videoController.player.stream.buffer
        .listen((e) => bufferingTime.value = _formatTime(e.inSeconds));
    videoController.player.stream.position
        .listen((e) => currentPosition.value = e);
    videoController.player.stream.buffering.listen(isBuffering.call);
    videoController.player.stream.playing.listen(isPlaying.call);
    videoController.player.stream.tracks.listen((e) {
      subtitles.value = e.subtitle;
      _updateSubtitleTrack(videoController.player.state.track.subtitle);
    });
    videoController.player.stream.subtitle.listen((e) => subtitle.value = e);
    videoController.player.stream.tracks.listen((e) => audios.value = e.audio);
    videoController.player.stream.rate.listen((e) => currentSpeed.value = e);
    videoController.player.stream.track.listen((e) {
      _updateSubtitleTrack(e.subtitle);
    });

    if (videoController.player.platform is NativePlayer) {
      observeNativePropertyInt("chapter-list/count", (value) async {
        final chapterList = <Chapter>[];

        for (int i = 0; i < value; i++) {
          final title = await getNativePropertyString("chapter-list/$i/title");
          final startTime =
              await getNativePropertyDouble("chapter-list/$i/time");

          chapterList.add(Chapter(title: title, startTime: startTime));
        }

        chapters.value = chapterList;
      });
    }
  }

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

  void _updateSubtitleTrack(SubtitleTrack track) {
    if (track == SubtitleTrack.no()) {
      currentSubtitleLanguage.value = null;
      currentSubtitleUri.value = null;
      //Auto always select the first subtitle track
    } else if (track == SubtitleTrack.auto()) {
      final track = subtitles
          .where((element) =>
              element != SubtitleTrack.auto() && element != SubtitleTrack.no())
          .firstOrNull;

      currentSubtitleLanguage.value = track?.title;
      currentSubtitleUri.value = track?.id;
    } else {
      currentSubtitleLanguage.value = track.title;
      currentSubtitleUri.value = track.id;
    }
  }

  Widget playerWidget() {
    return Video(
      filterQuality: FilterQuality.medium,
      subtitleViewConfiguration: const SubtitleViewConfiguration(
        visible: false,
      ),
      controller: videoController,
      controls: null,
      fit: resizeMode.value,
    );
  }

  Future<String> _getNativeProperty(String property) {
    assert(videoController.player.platform is NativePlayer);

    return (videoController.player.platform as NativePlayer)
        .getProperty(property);
  }

  Future<void> _setNativeProperty(String property, String value) {
    assert(videoController.player.platform is NativePlayer);

    return (videoController.player.platform as NativePlayer)
        .setProperty(property, value);
  }

  Future<void> _observeNativeProperty(
      String property, Future<void> Function(String) listener,
      {bool waitForInitialization = true}) {
    assert(videoController.player.platform is NativePlayer);

    return (videoController.player.platform as NativePlayer).observeProperty(
        property, listener,
        waitForInitialization: waitForInitialization);
  }

  Future<String> getNativePropertyString(String property) =>
      _getNativeProperty(property);

  Future<double> getNativePropertyDouble(String property) =>
      _getNativeProperty(property).then((value) => double.parse(value));

  Future<int> getNativePropertyInt(String property) =>
      _getNativeProperty(property).then((value) => int.parse(value));

  Future<bool> getNativePropertyBool(String property) =>
      _getNativeProperty(property)
          .then((value) => value == 'true' || value == '1');

  Future<void> setNativePropertyString(String property, String value) =>
      _setNativeProperty(property, value);

  Future<void> setNativePropertyDouble(String property, double value) =>
      _setNativeProperty(property, value.toString());

  Future<void> setNativePropertyInt(String property, int value) =>
      _setNativeProperty(property, value.toString());

  Future<void> setNativePropertyBool(String property, bool value) =>
      _setNativeProperty(property, value ? '1' : '0');

  Future<void> observeNativePropertyString(
          String property, Future<void> Function(String) listener,
          {bool waitForInitialization = true}) =>
      _observeNativeProperty(property, listener,
          waitForInitialization: waitForInitialization);

  Future<void> observeNativePropertyDouble(
          String property, Future<void> Function(double) listener,
          {bool waitForInitialization = true}) =>
      _observeNativeProperty(property, (value) => listener(double.parse(value)),
          waitForInitialization: waitForInitialization);

  Future<void> observeNativePropertyInt(
          String property, Future<void> Function(int) listener,
          {bool waitForInitialization = true}) =>
      _observeNativeProperty(property, (value) => listener(int.parse(value)),
          waitForInitialization: waitForInitialization);

  Future<void> observeNativePropertyBool(
          String property, Future<void> Function(bool) listener,
          {bool waitForInitialization = true}) =>
      _observeNativeProperty(
          property, (value) => listener(value == 'true' || value == '1'),
          waitForInitialization: waitForInitialization);

  Future<void> unobserveNativeProperty(String property,
      {bool waitForInitialization = true}) {
    assert(videoController.player.platform is NativePlayer);

    return (videoController.player.platform as NativePlayer).unobserveProperty(
        property,
        waitForInitialization: waitForInitialization);
  }

  Future<void> nativeCommand(List<String> command,
      {bool waitForInitialization = true}) {
    assert(videoController.player.platform is NativePlayer);

    return (videoController.player.platform as NativePlayer)
        .command(command, waitForInitialization: waitForInitialization);
  }
}

class Chapter {
  final String title;
  final double startTime;

  Chapter({required this.title, required this.startTime});
}
