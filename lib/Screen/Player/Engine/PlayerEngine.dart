import 'dart:async';
import 'dart:typed_data';
import 'dart:io';

import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';
import 'package:path/path.dart' as p;

import '../../../Logger.dart';
import '../../../Core/Fonts/AppFonts.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import 'MpvFiles.dart';
import 'PlayerSettings.dart';
import 'TorrentStream.dart';

class PlayerChapter {
  final String title;
  final double start;
  const PlayerChapter(this.title, this.start);
}

class PlayerTrack {
  final String id;
  final String? title;
  final String? language;
  final bool external;
  const PlayerTrack(
    this.id,
    this.title,
    this.language, {
    this.external = false,
  });

  String get label {
    final t = title?.trim();
    final l = language?.trim();
    if (t != null && t.isNotEmpty && l != null && l.isNotEmpty && t != l) {
      return '$t ($l)';
    }
    if (t != null && t.isNotEmpty) return t;
    if (l != null && l.isNotEmpty) return l;
    return id;
  }
}

class VideoVariant {
  final String id;
  final int? width;
  final int? height;
  final int? bitrate;
  const VideoVariant(this.id, this.width, this.height, this.bitrate);

  String get label {
    final h = height;
    final b = bitrate;
    final kbps = b == null || b <= 0 ? null : '${(b / 1000).round()} kbps';
    if (h != null && h > 0) return kbps == null ? '${h}p' : '${h}p • $kbps';
    return kbps ?? id;
  }
}

String decoderValue(String id) {
  final android = Platform.isAndroid;
  final ios = Platform.isIOS;
  return switch (id) {
    'sw' => 'no',
    'hw' =>
      android ? 'mediacodec-copy' : (ios ? 'videotoolbox-copy' : 'auto-copy'),
    'hw-plus' => android ? 'mediacodec' : (ios ? 'videotoolbox' : 'auto'),
    'auto-safe' => 'auto-safe',
    _ => 'auto',
  };
}

class PlayerEngine {
  final PlayerSettings settings;

  late final Player player;
  late final VideoController video;

  final position = Duration.zero.live;
  final duration = Duration.zero.live;
  final buffer = Duration.zero.live;
  final playing = false.live;
  final shaderProblem = Live<String?>(null);
  final subtitleDelay = 0.0.live;
  final audioDelay = 0.0.live;
  String? source;
  String? previewTarget;
  Map<String, String> previewHeaders = const {};
  final buffering = true.live;
  final completed = false.live;
  final rate = 1.0.live;
  final error = Live<String?>(null);
  final subtitleLines = <String>[].live;
  final subtitleTracks = <PlayerTrack>[].live;
  final audioTracks = <PlayerTrack>[].live;
  final activeSubtitle = Live<String?>(null);
  final activeAudio = Live<String?>(null);
  final videoVariants = <VideoVariant>[].live;
  final activeVariant = Live<String?>(null);
  final chapters = <PlayerChapter>[].live;
  final videoHeight = Live<int?>(null);
  final scriptReport = <String>[].live;
  final assActive = false.live;
  String? _subtitleCodec;

  final _subs = <StreamSubscription<Object?>>[];
  bool _disposed = false;
  bool _torrent = false;

  static const _softwareKey = 'playerSoftwareRender';

  static bool? _software;

  static bool get softwareRender => _software ??=
      PrefManager.getCustomVal<bool>(
        _softwareKey,
        location: PrefLocation.PLAYER,
      ) ??
      false;

  static set softwareRender(bool value) {
    _software = value;
    PrefManager.setCustomVal<bool>(
      _softwareKey,
      value,
      location: PrefLocation.PLAYER,
    );
  }

  static VideoController previewController(Player player) => VideoController(
    player,
    configuration: VideoControllerConfiguration(
      hwdec: 'no',
      enableHardwareAcceleration: !softwareRender,
      vo: Platform.isAndroid ? 'gpu' : null,
      androidAttachSurfaceAfterVideoParameters: Platform.isAndroid
          ? true
          : null,
    ),
  );

  PlayerEngine(this.settings) {
    final software = softwareRender;
    logger(
      'Video output: ${software ? 'software' : 'hardware'} rendering',
      tag: 'PLAYER',
    );
    player = Player(
      configuration: PlayerConfiguration(
        logLevel: MPVLogLevel.warn,
        bufferSize: settings.bufferMb * 1024 * 1024,
        libass: true,
        libassAndroidFontName: 'Manrope',
        libassAndroidFont: 'assets/fonts/manrope_medium.ttf',
      ),
    );
    video = VideoController(
      player,
      configuration: VideoControllerConfiguration(
        hwdec: decoderValue(settings.decoder),
        enableHardwareAcceleration: !software,
        vo: Platform.isAndroid
            ? (settings.videoOutput == 'gpu-next' ? 'gpu-next' : 'gpu')
            : null,
        androidAttachSurfaceAfterVideoParameters: Platform.isAndroid
            ? true
            : null,
      ),
    );
    _listen();
  }

  NativePlayer? get native =>
      player.platform is NativePlayer ? player.platform as NativePlayer : null;

  void _listen() {
    final s = player.stream;
    _subs.addAll([
      s.position.listen((v) => position.value = v),
      s.duration.listen((v) => duration.value = v),
      s.buffer.listen((v) => buffer.value = v),
      s.playing.listen((v) => playing.value = v),
      s.buffering.listen((v) => buffering.value = v),
      s.completed.listen((v) => completed.value = v),
      s.rate.listen((v) => rate.value = v),
      s.subtitle.listen((v) {
        final lines = [
          for (final l in v)
            if (l.trim().isNotEmpty) l,
        ];
        final shown = lines.length > 6
            ? lines.sublist(lines.length - 6)
            : lines;
        final old = subtitleLines.value;
        if (old.length == shown.length) {
          var same = true;
          for (var i = 0; i < shown.length; i++) {
            if (old[i] != shown[i]) {
              same = false;
              break;
            }
          }
          if (same) return;
        }
        subtitleLines.value = shown;
      }),
      s.height.listen((v) => videoHeight.value = v),
      s.log.listen((v) {
        if (v.level == 'error' || v.level == 'fatal' || v.level == 'warn') {
          final text = v.text.toLowerCase();
          if (text.contains('shader') ||
              text.contains('glsl') ||
              text.contains('hook')) {
            shaderProblem.value = v.text.trim();
          }
          logger('mpv ${v.level} ${v.prefix}: ${v.text.trim()}', tag: 'MPV');
        }
      }),
      s.error.listen((v) {
        logger('Player error: $v', logLevel: LogLevel.error, tag: 'PLAYER');
        error.value = v;
      }),
      s.tracks.listen((tracks) {
        subtitleTracks.value = [
          for (final t in tracks.subtitle)
            if (t.id != 'auto' && t.id != 'no')
              PlayerTrack(t.id, t.title, t.language, external: t.uri),
        ];
        audioTracks.value = [
          for (final t in tracks.audio)
            if (t.id != 'auto' && t.id != 'no')
              PlayerTrack(t.id, t.title, t.language, external: t.uri),
        ];
      }),
      s.tracks.listen((tracks) {
        final variants = [
          for (final t in tracks.video)
            if (t.id != 'auto' &&
                t.id != 'no' &&
                t.image != true &&
                t.albumart != true &&
                (t.h ?? 0) > 0)
              VideoVariant(t.id, t.w, t.h, t.bitrate),
        ]..sort((a, b) => (b.height ?? 0).compareTo(a.height ?? 0));
        videoVariants.value = variants;
      }),
      s.track.listen((t) {
        activeVariant.value = t.video.id;
        activeSubtitle.value = t.subtitle.id == 'no' ? null : t.subtitle.id;
        _subtitleCodec = t.subtitle.codec?.toLowerCase();
        unawaited(_syncAss());
        activeAudio.value = t.audio.id == 'no' ? null : t.audio.id;
      }),
    ]);
  }

  Future<void> configure() async {
    final mpv = native;
    if (mpv == null) return;
    Future<void> set(String key, Object value) async {
      try {
        await mpv.setProperty(key, '$value');
      } catch (e) {
        logger('mpv $key=$value failed: $e', tag: 'MPV');
      }
    }

    try {
      final cache = await StorageManager.getDirectory(subPath: 'cache/mpv');
      if (cache != null) {
        await set('demuxer-cache-dir', cache.path);
      } else {
        await set('cache-on-disk', 'no');
      }
    } catch (e, st) {
      logError('PlayerEngine', e, st);
      await set('cache-on-disk', 'no');
    }
    await set('hwdec', decoderValue(settings.decoder));
    await set('af', 'scaletempo2=max-speed=8');
    await set(
      'audio-pitch-correction',
      settings.pitchCorrection ? 'yes' : 'no',
    );
    await applyAudioOutput(initial: true);
    await set('network-timeout', 60);
    if (settings.tuning) {
      await set('video-sync', settings.videoSync);
      await set('interpolation', settings.interpolation ? 'yes' : 'no');
      await set('cache-secs', settings.cacheSeconds);
      await set('demuxer-readahead-secs', settings.readahead);
      await set('vd-lavc-threads', settings.decoderThreads);
      await set('deband', settings.deband ? 'yes' : 'no');
      await set('deband-iterations', settings.debandIterations);
      await set('deband-threshold', settings.debandThreshold);
      await set(
        'correct-downscaling',
        settings.correctDownscaling ? 'yes' : 'no',
      );
      await set('sigmoid-upscaling', settings.sigmoidUpscaling ? 'yes' : 'no');
      await set('scale', settings.scale);
      await set('cscale', settings.cscale);
      await set('dscale', settings.dscale);
      await set('tone-mapping', settings.toneMapping);
      await set('target-peak', settings.targetPeak);
    }
    if (settings.useMpvConfig) {
      try {
        for (final line in parseMpvConf(await MpvFiles.readConf())) {
          await set(line.key, line.value);
        }
      } catch (e) {
        logger('mpv.conf failed: $e', logLevel: LogLevel.error, tag: 'MPV');
      }
    }
    await applySubtitleStyle();
    if (settings.useScripts) await _loadScripts(mpv);
    if (settings.shaders) await applyShaderFiles(_profileFiles());
  }

  List<String> _shaderFiles = const [];
  Future<void> applyAudioOutput({bool initial = false}) async {
    final mpv = native;
    if (mpv == null) return;
    Future<void> set(String key, String value) async {
      try {
        await mpv.setProperty(key, value);
      } catch (e, st) {
        logError('PlayerEngine', e, st, 'mpv $key=$value failed');
      }
    }

    if (settings.audioOutput != 'auto' || !initial) {
      await set(
        'ao',
        settings.audioOutput == 'auto' ? '' : settings.audioOutput,
      );
    }
    if (settings.audioDevice != 'auto' || !initial) {
      await set('audio-device', settings.audioDevice);
    }
    if (settings.audioChannels != 'auto' || !initial) {
      await set('audio-channels', settings.audioChannels);
    }
  }

  Map<String, String> subtitleProps() {
    if (!settings.useLibass) return const {};
    String argb(int v) =>
        '#${v.toRadixString(16).padLeft(8, '0').toUpperCase()}';
    final background = settings.subtitleBackgroundColor;
    final props = <String, String>{
      'sub-font-size': '${settings.subtitleSize}',
      'sub-color': argb(settings.subtitleColor),
      'sub-border-color': argb(settings.subtitleOutlineColor),
      'sub-bold': settings.subtitleWeight >= 6 ? 'yes' : 'no',
      'sub-margin-y': '${settings.subtitleBottomPadding}',
      'sub-back-color': argb(background),
      'sub-border-style': background >>> 24 > 0
          ? 'background-box'
          : 'outline-and-shadow',
    };
    final font = settings.subtitleFont;
    if (font.isNotEmpty) {
      var family = font;
      if (isFontFile(font)) {
        family = fontInternalName(font) ?? p.basenameWithoutExtension(font);
        props['sub-fonts-dir'] = p.dirname(font);
      }
      props['sub-font'] = family;
    }
    return props;
  }

  Future<void> _syncAss() async {
    final styled = _subtitleCodec == 'ass' || _subtitleCodec == 'ssa';
    final active = settings.useLibass && styled;
    assActive.value = active;
    try {
      await native?.setProperty('sub-visibility', active ? 'yes' : 'no');
    } catch (e) {
      logger('mpv sub-visibility failed: $e', tag: 'MPV');
    }
  }

  Future<void> applySubtitleStyle() async {
    final mpv = native;
    if (mpv == null) return;
    await _syncAss();
    for (final e in subtitleProps().entries) {
      try {
        await mpv.setProperty(e.key, e.value);
      } catch (err) {
        logger('mpv ${e.key} failed: $err', tag: 'MPV');
      }
    }
  }

  static bool blankPng(Uint8List? png) => _blankFrame(png);

  static bool _blankFrame(Uint8List? png) {
    if (png == null || png.length < 33) return true;
    final data = ByteData.sublistView(png);
    final pixels = data.getUint32(16) * data.getUint32(20);
    return png.length < pixels / 64;
  }

  Future<Uint8List?> captureFrame({bool plain = false}) async {
    final mpv = native;
    if (!plain || mpv == null) return _capture();
    String active = '';
    try {
      active = await mpv.getProperty('glsl-shaders');
      if (active.isNotEmpty) {
        await mpv.setProperty('glsl-shaders', '');
        await Future<void>.delayed(const Duration(milliseconds: 80));
      }
      return await _capture();
    } finally {
      if (active.isNotEmpty) {
        try {
          await mpv.setProperty('glsl-shaders', active);
        } catch (e) {
          logger('mpv glsl-shaders restore failed: $e', tag: 'MPV');
        }
      }
    }
  }

  Future<Uint8List?> _capture() async {
    Uint8List? shot;
    try {
      shot = await player.screenshot(format: 'image/png');
    } catch (e) {
      logger('mpv screenshot failed: $e', tag: 'MPV');
    }
    final blank = _blankFrame(shot);
    logger(
      'Frame capture: ${shot?.length ?? 0} bytes, ${blank ? 'blank' : 'ok'}',
      tag: 'MPV',
    );
    final mpv = native;
    if (!blank || !Platform.isAndroid || mpv == null) return shot;
    // screenshot-raw reads the GL framebuffer. hwdec=mediacodec keeps the
    // frame in an opaque Surface, so the PNG is black. A seek to the current
    // position is a no-op and never redecodes, so nudge off the frame and back.
    final decoder = decoderValue(settings.decoder);
    final at = position.value;
    final wasPlaying = playing.value;
    try {
      if (wasPlaying) await pause();
      for (final hw in const ['no', 'mediacodec-copy']) {
        await mpv.setProperty('hwdec', hw);
        await _redecode(mpv, at);
        final copy = await player.screenshot(format: 'image/png');
        logger(
          'Frame capture ($hw): ${copy?.length ?? 0} bytes, '
          '${_blankFrame(copy) ? 'blank' : 'ok'}',
          tag: 'MPV',
        );
        if (copy != null && !_blankFrame(copy)) {
          shot = copy;
          break;
        }
      }
    } catch (e) {
      logger('mpv copy screenshot failed: $e', tag: 'MPV');
    } finally {
      try {
        await mpv.setProperty('hwdec', decoder);
        await mpv.command([
          'seek',
          (at.inMilliseconds / 1000).toStringAsFixed(3),
          'absolute+exact',
        ]);
      } catch (_) {}
      if (wasPlaying) {
        try {
          await play();
        } catch (_) {}
      }
    }
    return _blankFrame(shot) ? null : shot;
  }

  Future<void> _redecode(NativePlayer mpv, Duration at) async {
    final seconds = at.inMilliseconds / 1000;
    final nudge = seconds > 0.08 ? seconds - 0.05 : seconds + 0.05;
    await mpv.command(['seek', nudge.toStringAsFixed(3), 'absolute+exact']);
    await _seekSettled(mpv);
    await mpv.command(['seek', seconds.toStringAsFixed(3), 'absolute+exact']);
    await _seekSettled(mpv);
  }

  Future<void> _seekSettled(NativePlayer mpv) async {
    await Future<void>.delayed(const Duration(milliseconds: 60));
    final end = DateTime.now().add(const Duration(milliseconds: 1500));
    while (DateTime.now().isBefore(end)) {
      try {
        if (await mpv.getProperty('seeking') == 'no') break;
      } catch (_) {
        break;
      }
      await Future<void>.delayed(const Duration(milliseconds: 40));
    }
    await Future<void>.delayed(const Duration(milliseconds: 80));
  }

  Future<double?> videoFps() async {
    final mpv = native;
    if (mpv == null || _disposed) return null;
    try {
      for (final name in const ['container-fps', 'estimated-vf-fps']) {
        final fps = double.tryParse(await mpv.getProperty(name));
        if (fps != null && fps > 0) return fps;
      }
    } catch (_) {}
    return null;
  }

  Timer? _redrawTimer;

  Future<void> redraw() async {
    _redrawTimer?.cancel();
    _redrawTimer = Timer(const Duration(milliseconds: 120), () async {
      final mpv = native;
      if (mpv == null || _disposed || duration.value <= Duration.zero) return;
      try {
        if (await mpv.getProperty('pause') != 'yes') return;
        await mpv.command(['seek', '0', 'relative+exact']);
      } catch (e) {
        logger('mpv redraw failed: $e', tag: 'MPV');
      }
    });
  }

  Future<void> _loadScripts(NativePlayer mpv) async {
    final report = <String>[];
    try {
      for (final path in await MpvFiles.scriptPaths(settings.disabledScripts)) {
        try {
          await mpv.command(['load-script', path]);
          report.add('ok ${p.basename(path)}');
        } catch (e) {
          report.add('failed ${p.basename(path)}');
          logger('mpv script ${p.basename(path)} failed: $e', tag: 'MPV');
        }
      }
    } catch (e) {
      logger('mpv scripts failed: $e', tag: 'MPV');
    }
    scriptReport.value = report;
  }

  List<String> _profileFiles() => shaderFilesOf(
    settings.shaderProfile,
    settings.shader,
    settings.customShaders,
  );

  Future<void> applyShaderFiles(List<String> files) async {
    _shaderFiles = files;
    shaderProblem.value = null;
    await _commitShaders();
  }

  Future<void> _commitShaders() async {
    final mpv = native;
    if (mpv == null) return;
    if (softwareRender && _shaderFiles.isNotEmpty) {
      shaderProblem.value = getString.playerShadersSoftware;
      logger('Shaders requested while software rendering is on', tag: 'PLAYER');
    }
    final dir = await MpvFiles.shadersDir();
    final paths = shaderPaths(dir.path, _shaderFiles);
    try {
      await mpv.setProperty('glsl-shaders', joinShaders(paths));
    } catch (e) {
      logger('mpv glsl-shaders failed: $e', tag: 'MPV');
    }
    await redraw();
  }

  static const _defaultAgent =
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36';

  Future<void> open(
    String url, {
    Map<String, String>? headers,
    Duration start = Duration.zero,
    String? title,
    bool autoplay = true,
  }) async {
    error.value = null;
    var target = url;
    if (isTorrentSource(url)) {
      _torrent = true;
      target = await startTorrentStream(url, title: title);
      logger('Torrent stream ready: $target', tag: 'PLAYER');
      for (final (key, value) in const [
        ('cache', 'yes'),
        ('cache-pause-initial', 'yes'),
        ('cache-pause-wait', '8'),
        ('demuxer-max-bytes', '256MiB'),
        ('force-seekable', 'yes'),
        (
          'stream-lavf-o',
          'reconnect=1,reconnect_at_eof=1,reconnect_streamed=1,reconnect_on_network_error=1,reconnect_delay_max=10',
        ),
      ]) {
        try {
          await native?.setProperty(key, value);
        } catch (e) {
          logger('mpv $key failed: $e', tag: 'MPV');
        }
      }
    } else if (!_isUri(url)) {
      target = Uri.file(url).toString();
    }
    source = url;
    subtitleDelay.value = 0;
    audioDelay.value = 0;
    for (final key in const ['sub-delay', 'audio-delay']) {
      try {
        await native?.setProperty(key, '0');
      } catch (e, st) {
        logError('PlayerEngine', e, st, 'mpv $key reset failed');
      }
    }
    final sent = {...?headers};
    String? agent;
    for (final key in sent.keys.toList()) {
      if (key.toLowerCase() == 'user-agent') agent = sent.remove(key);
    }
    previewTarget = target;
    previewHeaders = {...sent, 'User-Agent': agent ?? _defaultAgent};
    try {
      await native?.setProperty('user-agent', agent ?? _defaultAgent);
    } catch (e) {
      logger('mpv user-agent failed: $e', tag: 'MPV');
    }
    await player.open(
      Media(target, start: start, httpHeaders: sent.isEmpty ? null : sent),
      play: autoplay,
    );
    _watchChapters();
  }

  bool _isUri(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null || !uri.hasScheme) return false;
    if (Platform.isWindows && RegExp(r'^[a-zA-Z]:[\\/]').hasMatch(url)) {
      return false;
    }
    return true;
  }

  bool _chaptersWatched = false;

  void _watchChapters() {
    final mpv = native;
    if (mpv == null || _chaptersWatched) return;
    _chaptersWatched = true;
    unawaited(
      mpv.observeProperty('chapter-list/count', (value) async {
        final count = int.tryParse(value) ?? 0;
        final list = <PlayerChapter>[];
        for (var i = 0; i < count; i++) {
          try {
            final title = await mpv.getProperty('chapter-list/$i/title');
            final time = await mpv.getProperty('chapter-list/$i/time');
            list.add(PlayerChapter(title, double.tryParse(time) ?? 0));
          } catch (e, st) {
            logError('PlayerEngine', e, st);
          }
        }
        if (!_disposed) chapters.value = list;
      }),
    );
  }

  Future<void> play() => player.play();

  Future<void> pause() => player.pause();

  Future<void> toggle() => player.playOrPause();

  Future<void> seek(Duration to) => player.seek(to);

  Future<void> seekBy(Duration by) {
    final max = duration.value;
    var next = position.value + by;
    if (next < Duration.zero) next = Duration.zero;
    if (max > Duration.zero && next > max) next = max;
    return seek(next);
  }

  Future<void> setRate(double value) => player.setRate(value);

  Future<void> setSubtitle(String id) async {
    final track = player.state.tracks.subtitle
        .where((t) => t.id == id)
        .firstOrNull;
    if (track != null) await player.setSubtitleTrack(track);
  }

  Future<void> setSubtitleDelay(double seconds) =>
      _delay('sub-delay', subtitleDelay, seconds);

  Future<void> setAudioDelay(double seconds) =>
      _delay('audio-delay', audioDelay, seconds);

  Future<void> _delay(String key, Live<double> live, double seconds) async {
    final value = (seconds.clamp(-60.0, 60.0) * 10).round() / 10;
    live.value = value;
    try {
      await native?.setProperty(key, '$value');
    } catch (e, st) {
      logError('PlayerEngine', e, st, 'mpv $key failed');
    }
  }

  Future<void> addSubtitle(String uri, String title) =>
      player.setSubtitleTrack(SubtitleTrack.uri(uri, title: title));

  Future<void> noSubtitle() => player.setSubtitleTrack(SubtitleTrack.no());

  Future<void> setVariant(String id) async {
    final track = player.state.tracks.video
        .where((t) => t.id == id)
        .firstOrNull;
    if (track != null) await player.setVideoTrack(track);
  }

  Future<void> setAudio(String id) async {
    final track = player.state.tracks.audio
        .where((t) => t.id == id)
        .firstOrNull;
    if (track != null) await player.setAudioTrack(track);
  }

  Future<Map<String, String>> audioProbe() async {
    final mpv = native;
    if (mpv == null || _disposed) return const {};
    final out = <String, String>{};
    for (final key in const [
      'aid',
      'sid',
      'mute',
      'volume',
      'current-ao',
      'audio-params/format',
      'audio-params/channel-count',
      'af',
    ]) {
      try {
        out[key] = await mpv.getProperty(key);
      } catch (_) {
        out[key] = '';
      }
    }
    return out;
  }

  Future<void> reselectAudio(String id) async {
    final mpv = native;
    if (mpv == null || _disposed) return;
    try {
      if (await mpv.getProperty('mute') == 'yes') {
        await mpv.setProperty('mute', 'no');
      }
      await mpv.setProperty('aid', 'no');
      await mpv.setProperty('aid', id);
    } catch (e, st) {
      logError('PlayerEngine', e, st, 'mpv audio reselect failed');
    }
  }

  Future<void> addAudio(String uri, String title) =>
      player.setAudioTrack(AudioTrack.uri(uri, title: title));

  Future<void> command(List<String> args) async => native?.command(args);

  Future<void> dispose() async {
    _disposed = true;
    _redrawTimer?.cancel();
    for (final s in _subs) {
      unawaited(s.cancel());
    }
    _subs.clear();
    if (_torrent) unawaited(stopTorrentStream());
    await player.dispose();
  }
}
