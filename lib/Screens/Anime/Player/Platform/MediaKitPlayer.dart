import 'dart:io';

import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

class MPVDecoder {
  final String id;
  final String name;
  final String androidDecoder;
  final String iosDecoder;
  //maybe split in to Linux, MacOS and Windows later?
  final String desktopDecoder;

  MPVDecoder(
      {required this.id,
      required this.name,
      required this.androidDecoder,
      required this.iosDecoder,
      required this.desktopDecoder});

  String getDecoderForPlatform() {
    if (Platform.isAndroid) {
      return androidDecoder;
    } else if (Platform.isIOS) {
      return iosDecoder;
    } else {
      return desktopDecoder;
    }
  }
}

class MediaKitPlayer extends GetxController {
  Rx<BoxFit> resizeMode;
  PlayerSettings settings;

  late Player player;
  late VideoController videoController;

  Rx<Duration> currentTime = Duration.zero.obs;
  Rx<Duration> currentPosition = Duration.zero.obs;
  Rx<Duration> maxTime = Duration.zero.obs;
  Rx<Duration> bufferingTime = Duration.zero.obs;
  RxBool isBuffering = true.obs;
  RxBool isPlaying = false.obs;
  RxList<SubtitleTrack> subtitles = <SubtitleTrack>[].obs;
  RxList<AudioTrack> audios = <AudioTrack>[].obs;
  RxList<String> subtitle = <String>[].obs;
  RxList<Chapter> chapters = <Chapter>[].obs;
  Rx<double> currentSpeed = 1.0.obs;
  Rx<String?> currentSubtitleLanguage = Rx<String?>(null);
  Rx<String?> currentSubtitleUri = Rx<String?>(null);

  late final List<MPVDecoder>? supportedDecoders;
  Rx<MPVDecoder?> currentDecoder = Rx<MPVDecoder?>(null);

  VideoControllerConfiguration getPlatformConfig() {
    if (Platform.isAndroid) {
      return VideoControllerConfiguration(
        androidAttachSurfaceAfterVideoParameters: true,
        vo: settings.useGpuNext ? "gpu-next" : "gpu",
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

    if (player.platform is NativePlayer) {
      final auto = MPVDecoder(
        id: "auto",
        name: "Auto",
        androidDecoder: "auto",
        iosDecoder: "auto",
        desktopDecoder: "auto",
      );
      final autoSafe = MPVDecoder(
        id: "auto-safe",
        name: "Auto Safe",
        androidDecoder: "auto-safe",
        iosDecoder: "auto-safe",
        desktopDecoder: "auto-safe",
      );
      final sw = MPVDecoder(
        id: "sw",
        name: "Software",
        androidDecoder: "no",
        iosDecoder: "no",
        desktopDecoder: "no",
      );
      final hw = MPVDecoder(
        id: "hw",
        name: "Hardware",
        androidDecoder: "mediacodec-copy",
        iosDecoder: "videotoolbox-copy",
        //there is a lot of decoders for desktop, could be reduced if split by OS
        desktopDecoder: "auto-copy",
      );
      final hwPlus = MPVDecoder(
        id: "hw-plus",
        name: "Hardware Plus",
        androidDecoder: "mediacodec",
        iosDecoder: "videotoolbox",
        //there is a lot of decoders for desktop, could be reduced if split by OS
        desktopDecoder: "auto",
      );

      supportedDecoders = [
        autoSafe,
        auto,
        sw,
        hw,
        hwPlus,
      ];
      //enforcing media-kit default decoders
      useDecoder(Platform.isAndroid ? autoSafe : auto);
    }
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
    videoController.player.stream.position.listen((e) => currentTime.value = e);
    videoController.player.stream.duration.listen((e) => maxTime.value = e);
    videoController.player.stream.buffer.listen((e) => bufferingTime.value = e);
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

  //TODO: add some actual user interface to change decoder
  Future<void> useDecoder(MPVDecoder decoder) {
    if (supportedDecoders == null || !supportedDecoders!.contains(decoder)) {
      throw ArgumentError('Decoder ${decoder.id} is not supported');
    }

    return setNativePropertyString("hwdec", decoder.getDecoderForPlatform())
        .then((_) {
      currentDecoder.value = decoder;
    });
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
      _getNativeProperty(property).then((value) => value == 'yes');

  Future<void> setNativePropertyString(String property, String value) =>
      _setNativeProperty(property, value);

  Future<void> setNativePropertyDouble(String property, double value) =>
      _setNativeProperty(property, value.toString());

  Future<void> setNativePropertyInt(String property, int value) =>
      _setNativeProperty(property, value.toString());

  Future<void> setNativePropertyBool(String property, bool value) =>
      _setNativeProperty(property, value ? 'yes' : 'no');

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
      _observeNativeProperty(property, (value) => listener(value == 'yes'),
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
