import 'dart:async';

import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Player/Engine/PlayerEngine.dart';

String? youtubeId(String url) {
  final uri = Uri.tryParse(url.trim());
  if (uri == null) return null;
  final host = uri.host.toLowerCase().replaceFirst('www.', '');
  String? id;
  if (host == 'youtu.be') {
    id = uri.pathSegments.firstOrNull;
  } else if (host.endsWith('youtube.com') ||
      host.endsWith('youtube-nocookie.com')) {
    final segments = uri.pathSegments;
    if (uri.queryParameters['v'] != null) {
      id = uri.queryParameters['v'];
    } else if (segments.length >= 2 &&
        const {'embed', 'shorts', 'v', 'live'}.contains(segments.first)) {
      id = segments[1];
    }
  }
  return id != null && RegExp(r'^[\w-]{6,20}$').hasMatch(id) ? id : null;
}

class TrailerQuality {
  final String label;
  final String url;

  const TrailerQuality(this.label, this.url);
}

class TrailerState extends ScreenState {
  final String url;
  final String videoId;

  TrailerState(this.url) : videoId = youtubeId(url) ?? '';

  final started = false.live;
  final loading = false.live;
  final failed = false.live;
  final playing = false.live;
  final position = Duration.zero.live;
  final duration = Duration.zero.live;
  final qualities = <TrailerQuality>[].liveList;
  final quality = 0.live;

  Player? player;
  VideoController? video;
  final _subs = <StreamSubscription<Object?>>[];

  String get thumbnail =>
      'https://img.youtube.com/vi/$videoId/maxresdefault.jpg';

  String get fallbackThumbnail =>
      'https://img.youtube.com/vi/$videoId/hqdefault.jpg';

  Future<void> start() async {
    if (started.value) return;
    started.value = true;
    loading.value = true;
    failed.value = false;
    final yt = YoutubeExplode();
    try {
      final manifest = await yt.videos.streamsClient.getManifest(videoId);
      final streams = manifest.muxed.toList()
        ..sort(
          (a, b) =>
              b.videoResolution.height.compareTo(a.videoResolution.height),
        );
      if (streams.isEmpty) throw StateError('No playable stream');
      qualities
        ..clear()
        ..addAll([
          for (final s in streams)
            TrailerQuality('${s.videoResolution.height}p', s.url.toString()),
        ]);
      if (!mounted) return;
      final p = player = Player();
      video = PlayerEngine.previewController(p);
      _subs
        ..add(p.stream.playing.listen((v) => playing.value = v))
        ..add(p.stream.position.listen((v) => position.value = v))
        ..add(p.stream.duration.listen((v) => duration.value = v))
        ..add(
          p.stream.error.listen((e) => logger('Trailer: $e', tag: 'PLAYER')),
        );
      quality.value = 0;
      await p.open(Media(qualities.first.url));
      loading.value = false;
    } catch (e, st) {
      logError('Trailer', e, st);
      loading.value = false;
      failed.value = true;
    } finally {
      yt.close();
    }
  }

  Future<void> setQuality(int index) async {
    final p = player;
    if (p == null || index == quality.value) return;
    final at = p.state.position;
    final wasPlaying = p.state.playing;
    quality.value = index;
    await p.open(Media(qualities[index].url, start: at), play: wasPlaying);
  }

  void toggle() => player?.playOrPause();

  void seek(Duration to) => player?.seek(to);

  Future<void> openBrowser() => openLinkInBrowser(url);

  @override
  void onClose() {
    for (final s in _subs) {
      unawaited(s.cancel());
    }
    unawaited(player?.dispose());
  }
}
