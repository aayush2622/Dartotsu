import 'package:dantotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

import 'BasePlayer.dart';

class WindowsPlayer extends BasePlayer {
  Rx<BoxFit> resizeMode;
  PlayerSettings settings;

  late Player player;
  late VideoController videoController;

  WindowsPlayer(this.resizeMode, this.settings) {
    player = Player(
      configuration: const PlayerConfiguration(bufferSize: 1024 * 1024 * 64),
    );
    videoController = VideoController(player);
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
  Future<void> open(String url, Duration duration) async {
    videoController.player.open(Media(url, start: duration));
  }

  @override
  Future<void> setSubtitle(String subtitleUri, String language, bool isUri) =>
      videoController.player.setSubtitleTrack(isUri
          ? SubtitleTrack.uri(subtitleUri, title: language)
          : SubtitleTrack(subtitleUri, language, language,
              uri: false, data: false));

  @override
  Future<void> setAudio(String audioUri, String language, bool isUri) async =>
      await videoController.player.setAudioTrack(isUri
          ? AudioTrack.uri(audioUri, title: language)
          : AudioTrack(audioUri, language, language, uri: false));

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
    videoController.player.stream.tracks
        .listen((e) => subtitles.value = e.subtitle);
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

  @override
  Widget playerWidget() {
    return Video(
      filterQuality: FilterQuality.medium,
      subtitleViewConfiguration: SubtitleViewConfiguration(
        visible: settings.showSubtitle,
        style: TextStyle(
          fontSize: settings.subtitleSize.toDouble(),
          fontWeight: FontWeight.values[settings.subtitleWeight.toInt()],
          fontFamily: settings.subtitleFont,
          backgroundColor: Color(settings.subtitleBackgroundColor),
          color: Color(settings.subtitleColor),
          shadows: [
            Shadow(
              color: Color(settings.subtitleOutlineColor),
              offset: const Offset(0.5, 0.5),
            ),
            Shadow(
              color: Color(settings.subtitleOutlineColor),
              offset: const Offset(-0.5, -0.5),
            ),
          ],
        ),
        padding:
            EdgeInsets.only(bottom: settings.subtitleBottomPadding.toDouble()),
      ),
      controller: videoController,
      controls: null,
      fit: resizeMode.value,
    );
  }
}
