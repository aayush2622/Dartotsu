import 'package:dartotsu_extension_bridge/player.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    show Mpv;

import 'dart:async';

import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../Watch/Data/WatchPrefs.dart';
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
  final int height;
  final String url;
  final String? audio;

  const TrailerQuality(this.height, this.url, [this.audio]);

  String get label => '${height}p';
}

int _byFormat(StreamInfo a, StreamInfo b) {
  final mp4 =
      (b.container.name == 'mp4' ? 1 : 0) - (a.container.name == 'mp4' ? 1 : 0);
  return mp4 != 0 ? mp4 : b.bitrate.compareTo(a.bitrate);
}

List<TrailerQuality> trailerQualities(StreamManifest manifest) {
  final audio = (manifest.audioOnly.toList()..sort(_byFormat)).firstOrNull;
  final byHeight = <int, TrailerQuality>{};
  if (audio != null) {
    final video =
        manifest.videoOnly
            .where((s) => s.videoResolution.height <= 1080)
            .toList()
          ..sort((a, b) {
            final h = b.videoResolution.height.compareTo(
              a.videoResolution.height,
            );
            return h != 0 ? h : _byFormat(a, b);
          });
    for (final s in video) {
      final h = s.videoResolution.height;
      byHeight.putIfAbsent(
        h,
        () => TrailerQuality(h, s.url.toString(), audio.url.toString()),
      );
    }
  }
  for (final s in manifest.muxed) {
    final h = s.videoResolution.height;
    byHeight.putIfAbsent(h, () => TrailerQuality(h, s.url.toString()));
  }
  final heights = byHeight.keys.toList()..sort((a, b) => b.compareTo(a));
  return [for (final h in heights) byHeight[h]!];
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
  final controlsVisible = true.live;
  Timer? _hide;

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
    if (!await Mpv.ensureIfInstalled()) {
      loading.value = false;
      failed.value = true;
      return;
    }
    final yt = YoutubeExplode();
    try {
      final manifest = await yt.videos.streamsClient.getManifest(videoId);
      final found = trailerQualities(manifest);
      if (found.isEmpty) throw StateError('No playable stream');
      qualities
        ..clear()
        ..addAll(found);
      if (!mounted) return;
      final p = player = Player();
      video = PlayerEngine.previewController(p);
      _subs
        ..add(
          p.stream.playing.listen((v) {
            playing.value = v;
            reveal();
          }),
        )
        ..add(p.stream.position.listen((v) => position.value = v))
        ..add(p.stream.duration.listen((v) => duration.value = v))
        ..add(
          p.stream.error.listen((e) => logger('Trailer: $e', tag: 'PLAYER')),
        );
      final wanted = trailerQualityPref.value;
      final start = found.indexWhere((q) => q.height <= wanted);
      quality.value = start < 0 ? found.length - 1 : start;
      await _open(found[quality.value]);
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
    trailerQualityPref.rx.value = qualities[index].height;
    await _open(qualities[index], start: at, play: wasPlaying);
  }

  Future<void> _open(
    TrailerQuality q, {
    Duration? start,
    bool play = true,
  }) async {
    final p = player;
    if (p == null) return;
    await p.open(Media(q.url, start: start), play: false);
    final audio = q.audio;
    if (audio != null) await p.setAudioTrack(AudioTrack.uri(audio));
    if (play) await p.play();
  }

  void toggle() {
    player?.playOrPause();
    reveal();
  }

  void reveal() {
    _hide?.cancel();
    controlsVisible.value = true;
    if (!playing.value) return;
    _hide = Timer(const Duration(seconds: 3), () {
      if (playing.value) controlsVisible.value = false;
    });
  }

  void tapSurface() {
    if (!playing.value) return toggle();
    if (controlsVisible.value) {
      _hide?.cancel();
      controlsVisible.value = false;
    } else {
      reveal();
    }
  }

  void seek(Duration to) {
    player?.seek(to);
    reveal();
  }

  Future<void> openBrowser() => openLinkInBrowser(url);

  @override
  void onClose() {
    _hide?.cancel();
    for (final s in _subs) {
      unawaited(s.cancel());
    }
    unawaited(player?.dispose());
  }
}
