import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:media_kit/media_kit.dart';

abstract class BasePlayer extends GetxController {
  RxString currentTime = "00:00".obs;
  Rx<Duration> currentPosition = const Duration(seconds: 0).obs;
  RxString maxTime = "00:00".obs;
  RxString bufferingTime = "00:00".obs;
  RxBool isBuffering = true.obs;
  RxBool isPlaying = false.obs;
  RxList<SubtitleTrack> subtitles = <SubtitleTrack>[].obs;
  RxList<AudioTrack> audios = <AudioTrack>[].obs;
  Future<void> seek(Duration duration);
  Future<void> play();
  Future<void> pause();
  Future<void> playOrPause();
  Future<void> setVolume(double volume);
  Future<void> setRate(double rate);
  Future<void> open(String url,Duration duration);
  Future<void> setSubtitle(String subtitleUri,String language, bool isUri);
  Future<void> setAudio(String audioUri,String language, bool isUri);
  void listenToPlayerStream();

  Widget playerWidget();
}