import 'dart:io';

import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'BasePlayer.dart';

class WindowsPlayer extends BasePlayer {
  Rx<BoxFit> resizeMode;
  PlayerSettings settings;

  late Player player;
  late VideoController videoController;

  VideoControllerConfiguration getPlatformConfig() {
    if (Platform.isAndroid) {
      return const VideoControllerConfiguration(
        androidAttachSurfaceAfterVideoParameters: true,
      );
    }
    return const VideoControllerConfiguration();
  }

  WindowsPlayer(this.resizeMode, this.settings) {
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

  @override
  Future<void> pause() async => videoController.player.pause();

  @override
  Future<void> play() async => videoController.player.play();

  @override
  Future<void> playOrPause() async => videoController.player.playOrPause();

  @override
  Future<void> seek(Duration duration) async {
    videoController.player.seek(duration);
  }

  @override
  Future<void> setRate(double rate) async =>
      videoController.player.setRate(rate);

  @override
  Future<void> setVolume(double volume) async =>
      videoController.player.setVolume(volume);

  @override
  Future<void> open(v.Video video, Duration duration) async {
    videoController.player.open(
      Media(
        video.url,
        start: duration,
        httpHeaders: video.headers,
      ),
    );
  }

  @override
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

  @override
  Future<void> resetSubtitle() =>
      videoController.player.setSubtitleTrack(SubtitleTrack.no());

  @override
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

  @override
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
      currentSubtitleLangage.value = null;
      currentSubtitleUri.value = null;
      //Auto always select the first subtitle track
    } else if (track == SubtitleTrack.auto()) {
      final track = subtitles
          .where((element) =>
              element != SubtitleTrack.auto() && element != SubtitleTrack.no())
          .firstOrNull;

      currentSubtitleLangage.value = track?.title;
      currentSubtitleUri.value = track?.id;
    } else {
      currentSubtitleLangage.value = track.title;
      currentSubtitleUri.value = track.id;
    }
  }

  @override
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
}
