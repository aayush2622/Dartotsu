
import 'package:dantotsu/Screens/Info/Tabs/Watch/Anime/Player/Platform/BasePlayer.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:fvp/fvp.dart' as fvp;

class AndroidPlayer extends BasePlayer{

  late VideoPlayer player;
  late VideoPlayerController videoController;
  @override
  Future<void> open(String url, Duration duration) async {
    videoController = VideoPlayerController.network(url);
    player = VideoPlayer(videoController);
    await videoController.initialize();
    await videoController.seekTo(duration);
    videoController.play();
  }

  @override
  Future<void> pause() => videoController.pause();


  @override
  Future<void> play() => videoController.play();

  @override
  Future<void> playOrPause() {
    if (videoController.value.isPlaying) {
      return videoController.pause();
    } else {
      return videoController.play();
    }
  }

  @override
  void listenToPlayerStream() {
    videoController.addListener(() {
      isBuffering.value = videoController.value.isBuffering;
      isPlaying.value = videoController.value.isPlaying;
      bufferingTime.value = _formatTime(videoController.value.buffered.first.end.inSeconds);
      currentPosition.value = videoController.value.position;
      currentTime.value = _formatTime(videoController.value.position.inSeconds);
      maxTime.value = _formatTime(videoController.value.duration.inSeconds);
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

  @override
  Widget playerWidget() {
    return player;
  }

  @override
  Future<void> seek(Duration duration) async =>
    videoController.seekTo(duration);


  @override
  Future<void> setRate(double rate) async => videoController.setPlaybackSpeed(rate);


  @override
  Future<void> setSubtitle(String subtitleUri, String language) async => videoController.setExternalSubtitle(subtitleUri);


  @override
  Future<void> setVolume(double volume) async => videoController.setVolume(volume);

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }
}