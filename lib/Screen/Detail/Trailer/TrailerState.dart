import 'package:dartotsu_extension_bridge/player.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    show Mpv;

import 'dart:async';

import 'package:flutter/material.dart' show Colors;
import 'package:webview_all/webview_all.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../Watch/Data/WatchPrefs.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Player/Engine/PlayerEngine.dart';
import '../../Player/Engine/StreamProxy.dart';

const _agent =
    'com.google.ios.youtube/20.10.4 (iPhone16,2; U; CPU iOS 18_3_2 like Mac OS X;)';

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

List<TrailerQuality> trailerQualities(StreamManifest manifest) {
  final audio =
      (manifest.hls.whereType<AudioStreamInfo>().toList()
            ..sort((a, b) => b.bitrate.compareTo(a.bitrate)))
          .firstOrNull;
  final byHeight = <int, VideoStreamInfo>{};
  for (final s in manifest.hls.whereType<VideoStreamInfo>()) {
    final h = s.videoResolution.height;
    final current = byHeight[h];
    if (current == null ||
        (!current.videoCodec.startsWith('avc1') &&
            s.videoCodec.startsWith('avc1'))) {
      byHeight[h] = s;
    }
  }
  final heights = byHeight.keys.toList()..sort((a, b) => b.compareTo(a));
  return [
    for (final h in heights)
      TrailerQuality(h, byHeight[h]!.url.toString(), audio?.url.toString()),
  ];
}

List<TrailerQuality> trailerMuxed(StreamManifest manifest) {
  final byHeight = <int, MuxedStreamInfo>{};
  for (final s in manifest.muxed) {
    final h = s.videoResolution.height;
    final current = byHeight[h];
    if (current == null || s.bitrate.compareTo(current.bitrate) > 0) {
      byHeight[h] = s;
    }
  }
  final heights = byHeight.keys.toList()..sort((a, b) => b.compareTo(a));
  return [
    for (final h in heights)
      TrailerQuality(h, byHeight[h]!.url.toString(), null),
  ];
}

class TrailerState extends ScreenState {
  final String url;
  final String videoId;

  TrailerState(this.url) : videoId = youtubeId(url) ?? '';

  final started = false.live;
  final loading = false.live;
  final embed = false.live;
  WebViewController? web;
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
  final _proxy = StreamProxy();

  final _subs = <StreamSubscription<Object?>>[];

  String get thumbnail =>
      'https://img.youtube.com/vi/$videoId/maxresdefault.jpg';

  String get fallbackThumbnail =>
      'https://img.youtube.com/vi/$videoId/hqdefault.jpg';

  Future<List<TrailerQuality>> _find(YoutubeExplode yt) async {
    final streams = yt.videos.streamsClient;
    try {
      final hls = trailerQualities(
        await streams.getManifest(videoId, ytClients: [YoutubeApiClient.ios]),
      );
      if (hls.isNotEmpty) return hls;
    } catch (e) {
      logger('Trailer: iOS client failed: $e', tag: 'PLAYER');
    }
    try {
      return trailerMuxed(
        await streams.getManifest(
          videoId,
          ytClients: [YoutubeApiClient.androidSdkless],
        ),
      );
    } catch (e) {
      logger('Trailer: Android client failed: $e', tag: 'PLAYER');
      return const [];
    }
  }

  Future<void> _embed() async {
    final c = WebViewController();
    await c.setJavaScriptMode(JavaScriptMode.unrestricted);
    await c.setBackgroundColor(Colors.black);
    await c.loadHtmlString(
      '<!DOCTYPE html><html><head>'
      '<meta name="viewport" content="width=device-width,initial-scale=1">'
      '<style>html,body{margin:0;height:100%;background:#000}'
      'iframe{border:0;width:100%;height:100%}</style></head><body>'
      '<iframe src="https://www.youtube.com/embed/$videoId'
      '?autoplay=1&playsinline=1&rel=0&modestbranding=1" '
      'allow="autoplay; encrypted-media; picture-in-picture; fullscreen" '
      'allowfullscreen></iframe></body></html>',
      baseUrl: 'https://www.youtube.com',
    );
    web = c;
    embed.value = true;
    loading.value = false;
  }

  Future<void> start() async {
    if (started.value) return;
    started.value = true;
    loading.value = true;
    failed.value = false;
    if (!await Mpv.ensureIfInstalled()) {
      await _fallback();
      return;
    }
    final yt = YoutubeExplode(httpClient: _ProbeFreeHttp());
    try {
      final found = await _find(yt);
      if (found.isEmpty) {
        await _fallback();
        return;
      }
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
      await _fallback();
    } finally {
      yt.close();
    }
  }

  Future<void> _fallback() async {
    try {
      await _embed();
    } catch (e, st) {
      logError('Trailer', e, st);
      loading.value = false;
      failed.value = true;
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
    const headers = {'User-Agent': _agent};
    await p.open(
      Media(await _proxy.wrap(q.url, headers), start: start),
      play: false,
    );
    final audio = q.audio;
    if (audio != null) {
      await p.setAudioTrack(AudioTrack.uri(await _proxy.wrap(audio, headers)));
    }
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
    unawaited(_proxy.stop());
  }
}

class _ProbeFreeHttp extends YoutubeHttpClient {
  @override
  head(Uri url, {Map<String, String>? headers}) => super.head(
    url.host.endsWith('googlevideo.com')
        ? Uri.https('www.google.com', '/generate_204')
        : url,
    headers: headers,
  );
}
