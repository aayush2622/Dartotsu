import 'dart:async';

import '../../Logger.dart';
import '../State/State.dart';
import '../ThemeManager/LanguageSwitcher.dart';
import 'CastDevice.dart';
import 'CastDiscovery.dart';
import 'CastHttp.dart';
import 'CastProxy.dart';
import 'CastV2Client.dart';
import 'DlnaClient.dart';

export 'CastDevice.dart';
export 'CastProxy.dart' show CastSubtitle;

class CastTrack {
  final int id;
  final String label;

  const CastTrack(this.id, this.label);
}

class CastService extends AppController {
  final devices = <CastDevice>[].liveList;
  final searching = false.live;
  final device = Live<CastDevice?>(null);
  final playing = false.live;
  final position = Duration.zero.live;
  final duration = Duration.zero.live;
  final failure = Live<String?>(null);
  final volume = 1.0.live;
  final muted = false.live;
  final rate = 1.0.live;
  final tracks = <CastTrack>[].live;
  final activeTrack = Live<int?>(null);
  final ended = 0.live;

  final _proxy = CastProxy();
  late final _discovery = CastDiscovery(_found);
  CastV2Client? _chromecast;
  DlnaClient? _dlna;
  int? _session;
  StreamSubscription<Map<String, dynamic>>? _messages;
  StreamSubscription<bool>? _state;
  Timer? _poll;
  int _request = 100;
  bool _finished = false;

  bool get active => device.value != null;

  bool get sharing => !active && _proxy.running;

  Future<({String url, List<String> subtitles})?> share({
    required String url,
    Map<String, String>? headers,
    List<CastSubtitle> subtitles = const [],
  }) async {
    if (active) return null;
    try {
      await _proxy.start(video: url, headers: headers, subtitles: subtitles);
      return (url: _proxy.videoUrl!, subtitles: _proxy.subtitleUrls);
    } catch (e, st) {
      logError('Cast', e, st);
      await _proxy.stop();
      return null;
    }
  }

  @override
  void onClose() {
    unawaited(stop());
    _discovery.stop();
    _proxy.dispose();
  }

  void _found(CastDevice found) {
    final i = devices.indexWhere(
      (d) => d.host == found.host && d.protocol == found.protocol,
    );
    if (i == -1) {
      devices.add(found);
    } else {
      devices[i] = found;
    }
  }

  Future<void> discover() async {
    if (searching.value) return;
    devices.clear();
    searching.value = true;
    try {
      await _discovery.run();
    } catch (e, st) {
      logError('Cast', e, st);
    } finally {
      searching.value = false;
    }
  }

  Future<bool> cast({
    required CastDevice target,
    required String url,
    required String title,
    Map<String, String>? headers,
    List<CastSubtitle> subtitles = const [],
    int? subtitle,
    Duration start = Duration.zero,
  }) async {
    failure.value = null;
    _finished = false;
    await _release();
    try {
      await _proxy.start(
        video: url,
        headers: headers,
        subtitles: subtitles,
        towards: (host: target.host, port: target.port),
      );
      final media = _proxy.videoUrl!;
      final hls = _proxy.isHls;
      device.value = target;
      position.value = start;
      duration.value = Duration.zero;
      playing.value = true;
      rate.value = 1.0;
      final urls = _proxy.subtitleUrls;
      tracks.value = [
        if (target.protocol == CastProtocol.chromecast)
          for (var i = 0; i < urls.length; i++)
            CastTrack(i + 1, subtitles[i].label),
      ];
      activeTrack.value =
          subtitle != null && subtitle >= 0 && subtitle < tracks.value.length
          ? subtitle + 1
          : null;
      switch (target.protocol) {
        case CastProtocol.chromecast:
          await _loadChromecast(target, media, title, start);
        case CastProtocol.dlna:
          await _loadDlna(target, media, title, hls, start);
        case CastProtocol.roku:
          await _loadRoku(target, media, hls);
      }
      return true;
    } catch (e, st) {
      logError('Cast', e, st);
      failure.value = '$e';
      await stop();
      return false;
    }
  }

  Future<void> _loadChromecast(
    CastDevice target,
    String media,
    String title,
    Duration start,
  ) async {
    final client = _chromecast = await CastV2Client.connect(
      target.host,
      target.port,
    );
    _state = client.stateStream.listen((connected) {
      if (!connected) unawaited(stop());
    });
    _messages = client.messageStream.listen(_onCastMessage);
    client.sendMessage(
      namespace: CastV2Client.kNamespaceReceiver,
      payload: {
        'type': 'LAUNCH',
        'appId': kDefaultMediaReceiver,
        'requestId': 1,
      },
    );
    if (await client.awaitTransport() == null) {
      throw StateError(getString.castReceiverFailed);
    }
    final urls = _proxy.subtitleUrls;
    final active = activeTrack.value;
    client.sendMessage(
      namespace: CastV2Client.kNamespaceMedia,
      payload: {
        'type': 'LOAD',
        'autoPlay': true,
        'currentTime': start.inMilliseconds / 1000.0,
        'media': {
          'contentId': media,
          'contentType': _proxy.contentType,
          'streamType': 'BUFFERED',
          'metadata': {'type': 0, 'metadataType': 0, 'title': title},
          if (urls.isNotEmpty)
            'tracks': [
              for (final (i, url) in urls.indexed)
                {
                  'trackId': i + 1,
                  'type': 'TEXT',
                  'trackContentId': url,
                  'trackContentType': 'text/vtt',
                  'name': tracks.value[i].label,
                  'language': 'en-US',
                  'subtype': 'SUBTITLES',
                },
            ],
        },
        if (active != null) 'activeTrackIds': [active],
        'requestId': 2,
      },
    );
    client.sendMessage(
      namespace: CastV2Client.kNamespaceReceiver,
      destinationId: 'receiver-0',
      payload: {'type': 'GET_STATUS', 'requestId': _request++},
    );
    _poll = Timer.periodic(const Duration(seconds: 1), (_) {
      final session = _session;
      if (session == null) return;
      _chromecast?.sendMessage(
        namespace: CastV2Client.kNamespaceMedia,
        payload: {
          'type': 'GET_STATUS',
          'mediaSessionId': session,
          'requestId': _request++,
        },
      );
    });
  }

  void _onCastMessage(Map<String, dynamic> message) {
    final type = message['type'];
    if (type == 'RECEIVER_STATUS') {
      final level = ((message['status'] as Map?)?['volume'] as Map?);
      if (level != null) {
        final now = (level['level'] as num?)?.toDouble();
        if (now != null) volume.value = now.clamp(0.0, 1.0);
        muted.value = level['muted'] == true;
      }
      return;
    }
    if (type == 'LOAD_FAILED' || type == 'INVALID_REQUEST') {
      failure.value = '${message['reason'] ?? type}';
      return;
    }
    if (type != 'MEDIA_STATUS') return;
    final list = message['status'];
    if (list is! List || list.isEmpty) return;
    final status = list.first as Map<String, dynamic>;
    _session = status['mediaSessionId'] as int? ?? _session;
    final state = status['playerState'] as String?;
    if (state != null) {
      playing.value = state == 'PLAYING' || state == 'BUFFERING';
      if (state == 'IDLE' && status['idleReason'] == 'FINISHED') {
        playing.value = false;
        _markEnded();
      }
      if (state == 'IDLE' && status['idleReason'] == 'ERROR') {
        playing.value = false;
        failure.value = getString.castPlaybackFailed;
      }
    }
    final now = (status['currentTime'] as num?)?.toDouble();
    if (now != null) {
      position.value = Duration(milliseconds: (now * 1000).round());
    }
    final speed = (status['playbackRate'] as num?)?.toDouble();
    if (speed != null && speed > 0) rate.value = speed;
    final active = status['activeTrackIds'];
    if (active is List && tracks.value.isNotEmpty) {
      activeTrack.value = active.isEmpty ? null : (active.first as num).toInt();
    }
    final total = ((status['media'] as Map?)?['duration'] as num?)?.toDouble();
    if (total != null && total > 0) {
      duration.value = Duration(milliseconds: (total * 1000).round());
    }
  }

  void _markEnded() {
    if (_finished) return;
    _finished = true;
    ended.value++;
  }

  Future<void> _loadDlna(
    CastDevice target,
    String media,
    String title,
    bool hls,
    Duration start,
  ) async {
    final client = _dlna = DlnaClient(
      target.controlUrl!,
      volumeUrl: target.volumeUrl,
    );
    final loaded = await client.load(
      url: media,
      title: title,
      hls: hls,
      mime: _proxy.contentType,
      subtitle: _proxy.subtitleUrls.firstOrNull,
    );
    if (!loaded) throw StateError('The TV refused the stream');
    if (!await client.playWhenReady()) {
      throw StateError('The TV did not start the stream');
    }
    if (start > Duration.zero) {
      await Future<void>.delayed(const Duration(seconds: 1));
      await client.seek(start);
    }
    _poll = Timer.periodic(const Duration(seconds: 1), (_) async {
      final info = await _dlna?.poll();
      if (info == null || _dlna == null) return;
      if (info.position > Duration.zero) position.value = info.position;
      if (info.duration > Duration.zero) duration.value = info.duration;
      if (info.state.isNotEmpty) playing.value = info.state == 'PLAYING';
      if (info.state == 'STOPPED' &&
          info.duration > Duration.zero &&
          info.position >= info.duration - const Duration(seconds: 3)) {
        _markEnded();
      }
    });
    final level = await client.volume();
    if (level != null) volume.value = level;
  }

  Future<void> _loadRoku(CastDevice target, String media, bool hls) async {
    final query =
        'u=${Uri.encodeComponent(media)}&videoFormat=${hls ? 'hls' : 'mp4'}&t=v';
    final base = 'http://${target.host}:${target.port}';
    final launched = await castPost('$base/launch/15985?$query');
    if (launched == null) {
      final input = await castPost('$base/input/15985?$query');
      if (input == null) throw StateError('The Roku did not respond');
    }
    _poll = Timer.periodic(const Duration(seconds: 1), (_) {
      if (playing.value) position.value += const Duration(seconds: 1);
    });
  }

  Future<void> play() async {
    final target = device.value;
    if (target == null) return;
    playing.value = true;
    switch (target.protocol) {
      case CastProtocol.chromecast:
        _media('PLAY');
      case CastProtocol.dlna:
        await _dlna?.play();
      case CastProtocol.roku:
        await _rokuKey(target, 'Play');
    }
  }

  Future<void> pause() async {
    final target = device.value;
    if (target == null) return;
    playing.value = false;
    switch (target.protocol) {
      case CastProtocol.chromecast:
        _media('PAUSE');
      case CastProtocol.dlna:
        await _dlna?.pause();
      case CastProtocol.roku:
        await _rokuKey(target, 'Play');
    }
  }

  Future<void> toggle() => playing.value ? pause() : play();

  Future<void> seek(Duration to) async {
    final target = device.value;
    if (target == null) return;
    final max = duration.value;
    var at = to < Duration.zero ? Duration.zero : to;
    if (max > Duration.zero && at > max) at = max;
    position.value = at;
    switch (target.protocol) {
      case CastProtocol.chromecast:
        _media('SEEK', {'currentTime': at.inMilliseconds / 1000.0});
      case CastProtocol.dlna:
        await _dlna?.seek(at);
      case CastProtocol.roku:
        break;
    }
  }

  Future<void> seekBy(Duration by) => seek(position.value + by);

  bool get canSeek => device.value?.protocol != CastProtocol.roku;

  bool get canVolume {
    final target = device.value;
    return switch (target?.protocol) {
      CastProtocol.chromecast => true,
      CastProtocol.dlna => target?.volumeUrl != null,
      _ => false,
    };
  }

  bool get canRate => device.value?.protocol == CastProtocol.chromecast;

  bool get canTrack =>
      device.value?.protocol == CastProtocol.chromecast &&
      tracks.value.isNotEmpty;

  Future<void> setVolume(double level) async {
    final target = device.value;
    if (target == null) return;
    final at = level.clamp(0.0, 1.0);
    volume.value = at;
    switch (target.protocol) {
      case CastProtocol.chromecast:
        muted.value = false;
        _chromecast?.sendMessage(
          namespace: CastV2Client.kNamespaceReceiver,
          destinationId: 'receiver-0',
          payload: {
            'type': 'SET_VOLUME',
            'volume': {'level': at, 'muted': false},
            'requestId': _request++,
          },
        );
      case CastProtocol.dlna:
        await _dlna?.setVolume(at);
      case CastProtocol.roku:
        break;
    }
  }

  void toggleMute() {
    if (device.value?.protocol != CastProtocol.chromecast) return;
    muted.value = !muted.value;
    _chromecast?.sendMessage(
      namespace: CastV2Client.kNamespaceReceiver,
      destinationId: 'receiver-0',
      payload: {
        'type': 'SET_VOLUME',
        'volume': {'muted': muted.value},
        'requestId': _request++,
      },
    );
  }

  void setRate(double speed) {
    if (!canRate) return;
    rate.value = speed;
    _media('SET_PLAYBACK_RATE', {'playbackRate': speed});
  }

  void setTrack(int? id) {
    if (!canTrack) return;
    activeTrack.value = id;
    _media('EDIT_TRACKS_INFO', {
      'activeTrackIds': id == null ? <int>[] : [id],
    });
  }

  void _media(String type, [Map<String, Object?> extra = const {}]) {
    _chromecast?.sendMessage(
      namespace: CastV2Client.kNamespaceMedia,
      payload: {
        'type': type,
        if (_session != null) 'mediaSessionId': _session,
        'requestId': _request++,
        ...extra,
      },
    );
  }

  Future<void> _rokuKey(CastDevice target, String key) =>
      castPost('http://${target.host}:${target.port}/keypress/$key')
          .then((_) {});

  Future<Duration> stop() async {
    final target = device.value;
    final last = position.value;
    if (target != null) {
      try {
        switch (target.protocol) {
          case CastProtocol.chromecast:
            _media('STOP');
          case CastProtocol.dlna:
            await _dlna?.stop();
          case CastProtocol.roku:
            await _rokuKey(target, 'Home');
        }
      } catch (_) {}
    }
    await _release();
    device.value = null;
    playing.value = false;
    position.value = Duration.zero;
    duration.value = Duration.zero;
    tracks.value = const [];
    activeTrack.value = null;
    rate.value = 1.0;
    return last;
  }

  Future<void> _release() async {
    _poll?.cancel();
    _poll = null;
    await _messages?.cancel();
    await _state?.cancel();
    _messages = null;
    _state = null;
    final client = _chromecast;
    _chromecast = null;
    _session = null;
    _dlna = null;
    if (client != null) {
      try {
        await client.close();
      } catch (_) {}
    }
    await _proxy.stop();
  }
}
