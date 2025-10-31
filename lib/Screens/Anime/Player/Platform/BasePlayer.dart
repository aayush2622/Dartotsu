import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:media_kit/media_kit.dart';

class Chapter {
  final String title;
  final double startTime;

  Chapter({required this.title, required this.startTime});
}

abstract class BasePlayer extends GetxController {
  // well kind of useless for now because there is only one player but it's good to have it for future
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

  Future<void> seek(Duration duration);

  Future<void> play();

  Future<void> pause();

  Future<void> playOrPause();

  Future<void> setVolume(double volume);

  Future<void> setRate(double rate);

  Future<void> open(Video video, Duration duration);

  Future<void> setSubtitle(String subtitleUri, String language, bool isUri);

  Future<void> resetSubtitle();

  Future<void> setAudio(String audioUri, String language, bool isUri);

  void listenToPlayerStream();

  Widget playerWidget();
}
