import '../../Core/Cast/CastService.dart';
import '../../Core/Downloads/DownloadEngine.dart';
import '../../Utils/Functions/DisplayMode.dart';
import 'dart:async';
import 'dart:io';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:volume_controller/volume_controller.dart';
import 'package:window_manager/window_manager.dart';

import '../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Detail/Watch/Data/EpisodeMeta.dart';
import '../Detail/Watch/Data/EpisodeMetaService.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../../Core/Services/Api/IdMapper.dart';
import '../Detail/Watch/Data/UnitLoader.dart';
import '../Detail/Watch/Data/TrackConfirm.dart';
import '../Detail/Watch/Data/WatchPrefs.dart';
import '../Detail/Watch/Data/Media/ResumeStore.dart';
import 'Engine/AniSkip.dart';
import 'Engine/IntroDb.dart';
import 'Engine/LocalPlayback.dart';
import 'Engine/MpvFiles.dart';
import 'Engine/Pip.dart';
import 'Engine/TrackPick.dart';
import 'Engine/SeekPreview.dart';
import 'Engine/PlayRequest.dart';
import 'Engine/ColorPresets.dart';
import 'Engine/PlayerEngine.dart';
import 'Engine/PlayerSettings.dart';
import 'Engine/TorrentStream.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Preferences/Incognito.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Logger.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'PlayerMediaSession.dart';
import '../Together/TogetherController.dart';
import '../../Utils/Functions/DesktopFullscreen.dart';
import '../../Utils/Functions/Wakelock.dart';

const resizeFits = [BoxFit.contain, BoxFit.cover, BoxFit.fill];

bool get isMobilePlatform => Platform.isAndroid || Platform.isIOS;
bool _linuxBacklight = false;

bool get supportsBrightness => !Platform.isLinux || _linuxBacklight;

class PlayerState extends ScreenState {
  static int openCount = 0;

  final PlayRequest request;

  PlayerState(this.request);

  late PlayerSettings settings;
  late final colorValues = settings.color.live;
  late PlayerEngine engine;
  final engineTick = 0.live;
  final cast = find<CastService>();

  final index = 0.live;
  final videos = <v.Video>[].liveList;
  final videoIndex = 0.live;
  final loading = true.live;
  final loadError = Live<String?>(null);
  final torrentMissing = false.live;
  final controlsVisible = true.live;
  final locked = false.live;
  final fullscreen = false.live;
  final panel = false.live;
  final panelWidth = 0.0.live;
  final fit = BoxFit.contain.live;
  final stamps = <SkipStamp>[].liveList;
  SkipDraft? _skipDraft;

  SkipDraft skipDraft() {
    final draft = _skipDraft;
    if (draft != null && draft.key == item.key) return draft;
    return _skipDraft = SkipDraft(
      item.key,
      engine.position.value.inMilliseconds.toDouble(),
    );
  }

  void clearSkipDraft() => _skipDraft = null;
  final activeStamp = Live<SkipStamp?>(null);
  final holdActive = false.live;
  final holdSpeedValue = 2.0.live;
  final volume = 0.5.live;
  final brightness = 0.5.live;
  final volumeShown = false.live;
  final brightnessShown = false.live;
  final seekLabelForward = 0.live;
  final seekLabelBackward = 0.live;
  final shaderOsd = Live<String?>(null);
  final settingsVersion = 0.live;
  late final perTitle = (record?.player.isNotEmpty ?? false).live;
  final scrubbing = false.live;
  final scrubPosition = Duration.zero.live;
  Duration heldPosition = Duration.zero;
  Duration heldBuffer = Duration.zero;
  final previewAt = Live<Duration?>(null);
  late final seekPreview = SeekPreview(
    () => engine.player,
    () => engine.previewTarget,
    () => engine.previewHeaders,
  );
  final commentsOpen = false.live;
  final chatOpen = false.live;
  final episodeTag = Live<int?>(null);
  final pageScroll = ScrollController();
  final commentsScroll = ScrollController();
  final chunk = Live<int?>(null);
  Live<Media>? _mediaLive;

  final focus = FocusNode();

  Timer? _hideTimer;
  Timer? _volumeTimer;
  Timer? _brightnessTimer;
  Timer? _seekForwardTimer;
  Timer? _seekBackwardTimer;
  Timer? _osdTimer;
  Timer? _saveTimer;
  Timer? _busyTimer;
  bool _busy = false;
  bool _closed = false;
  Disposer? _positionSub;
  Disposer? _completedSub;
  Disposer? _playingSub;
  Disposer? _castPositionSub;
  Disposer? _castEndedSub;
  int _generation = 0;
  late final mediaSession = PlayerMediaSession(this);
  TogetherController get together => find<TogetherController>();
  int _lastSave = -1;
  bool _watchedMarked = false;
  bool _tracking = true;
  bool _localSave = true;
  bool _preloading = false;
  List<v.Video>? _nextStreams;
  int? _nextFor;
  final _skipped = <SkipKind>{};
  double _speedBeforeHold = 1.0;
  bool keepOrientation = false;

  MediaRecord? get record => request.tracked
      ? MediaRecords.of(request.service!, request.media!)
      : null;

  Live<Media> get mediaLive => _mediaLive ??= request.media!.live;

  final progressTick = 0.live;
  final pip = false.live;

  final nextCountdown = Live<int?>(null);
  Timer? _countdownTimer;
  final metaLoading = false.live;
  int _metaGeneration = 0;
  StreamSubscription<Map<String, EpisodeMeta>>? _metaSub;

  bool get canPickMeta => record != null && request.media?.isAnime == true;

  Future<void> loadMeta() async {
    final rec = record;
    final media = request.media;
    final service = request.service;
    if (rec == null || media == null || service == null || !media.isAnime) {
      return;
    }
    final generation = ++_metaGeneration;
    await _metaSub?.cancel();
    final choice = rec.watch.metaSource;
    if (choice == 'off') {
      _applyMeta(const {});
      return;
    }
    metaLoading.value = true;
    try {
      final ids = await IdMapper.resolve(service, media);
      if (generation != _metaGeneration || _closed) return;
      final done = Completer<void>();
      _metaSub = EpisodeMetaService.load(ids, only: choice).listen(
        (merged) {
          if (generation == _metaGeneration && !_closed) _applyMeta(merged);
        },
        onError: (Object e) => logger(
          'Player metadata failed: $e',
          logLevel: LogLevel.error,
          tag: 'PLAYER',
        ),
        onDone: done.complete,
      );
      await done.future;
    } catch (e) {
      logger(
        'Player metadata failed: $e',
        logLevel: LogLevel.error,
        tag: 'PLAYER',
      );
    } finally {
      if (generation == _metaGeneration) metaLoading.value = false;
    }
  }

  void _applyMeta(Map<String, EpisodeMeta> meta) {
    final media = request.media;
    if (media == null) return;
    final fallback = media.banner ?? media.cover ?? '';
    for (var i = 0; i < items.length; i++) {
      final old = items[i];
      final unit = old.unit;
      if (unit == null) continue;
      refreshUnit(
        unit,
        meta[episodeKey(unit.number)],
        fallbackThumb: fallback,
        anime: true,
      );
      items[i] = PlayItem(
        key: old.key,
        title: playTitleOf(unit),
        subtitle: old.subtitle,
        number: old.number,
        episode: old.episode,
        unit: unit,
        fixed: old.fixed,
      );
    }
    progressTick.value++;
  }

  Future<void> setMetaSource(String? choice) async {
    final rec = record;
    if (rec == null) return;
    updateWatchSettings(rec.watch.copy()..metaSource = choice);
    await loadMeta();
  }

  void updateWatchSettings(MediaWatchSettings next) {
    final rec = record;
    if (rec == null) return;
    rec.watch = next;
    MediaRecords.save(request.service!, request.media!);
    progressTick.value++;
  }

  late final items = request.items.toList().liveList;

  PlayItem get item => items[index.value];

  bool get hasNext => index.value + 1 < items.length;

  bool get hasPrevious => index.value > 0;

  v.Video? get video =>
      videoIndex.value < videos.length ? videos[videoIndex.value] : null;

  String get itemKey => item.key;

  PlayerSettings _effective() {
    final base = PlayerPrefs.global.value;
    final overrides = record?.player;
    return overrides == null || overrides.isEmpty
        ? base.copy()
        : base.merged(overrides);
  }

  @override
  void onInit() {
    openCount++;
    settings = _effective();
    engine = PlayerEngine(settings);
    unawaited(SeekPreview.sweep());
    together.attach(this);
    fit.value = resizeFits[settings.resizeMode.clamp(0, 2)];
    index.value = request.index;
    _tagEpisode(request.index);
    unawaited(setWakelock(true));
    if (isMobilePlatform) {
      SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      unawaited(_initVolumeAndBrightness());
    } else {
      unawaited(_initFullscreen());
      unawaited(_initVolumeAndBrightness());
    }
    if (settings.openBig && isMobilePlatform) unawaited(enterFullscreen());
    _lifecycle = AppLifecycleListener(
      onInactive: _blur,
      onHide: _blur,
      onResume: _focusBack,
    );
    _bindEngine();
    _castPositionSub = cast.position.listen((at) {
      if (cast.active && !loading.value) _onPosition(at);
    });
    _castEndedSub = cast.ended.listen((_) {
      if (cast.active) _onCompleted();
    });
    focus.requestFocus();
    unawaited(mediaSession.start());
    unawaited(_initPip());
    unawaited(_begin());
  }

  AppLifecycleListener? _lifecycle;
  bool _pausedByBlur = false;

  Timer? _blurTimer;

  void _blur() {
    if (_closed || !settings.pauseOnBlur || _pausedByBlur) return;
    final wait = Platform.isAndroid && settings.autoPip
        ? const Duration(milliseconds: 300)
        : Duration.zero;
    _blurTimer?.cancel();
    _blurTimer = Timer(wait, _pauseForBlur);
  }

  void _pauseForBlur() {
    if (_closed || pip.value || _pausedByBlur) return;
    if (cast.active || !engine.playing.value) return;
    _pausedByBlur = true;
    unawaited(engine.pause());
  }

  void _focusBack() {
    _blurTimer?.cancel();
    if (!_pausedByBlur) return;
    _pausedByBlur = false;
    if (!_closed && !engine.playing.value) unawaited(engine.play());
  }

  Future<void> _initPip() async {
    await PlayerPip.init((active) {
      if (_closed) return;
      pip.value = active;
      if (active) {
        controlsVisible.value = false;
        commentsOpen.value = false;
        chatOpen.value = false;
        panel.value = false;
      }
    });
  }

  Future<void> enterPip() async {
    if (!PlayerPip.supported || pip.value) return;
    final state = engine.player.state;
    await PlayerPip.enter(width: state.width ?? 16, height: state.height ?? 9);
  }

  Future<void> exitPip() => PlayerPip.exit();

  void _syncPipRatio() {
    final state = engine.player.state;
    final width = state.width;
    final height = state.height;
    if (width != null && height != null && width > 0 && height > 0) {
      unawaited(PlayerPip.setRatio(width, height));
    }
  }

  void previewTo(Duration? at) {
    previewAt.value = at;
    if (at == null || !settings.seekPreview) {
      seekPreview.stop();
      return;
    }
    if (engine.duration.value <= Duration.zero) return;
    seekPreview.seek(at);
  }

  void _bindEngine() {
    _positionSub?.dispose();
    _completedSub?.dispose();
    _playingSub?.dispose();
    _errorSub?.dispose();
    _errorSub = engine.error.listen((e) {
      if (e != null) unawaited(_recover());
    });
    _positionSub = engine.position.listen(_onPosition);
    _completedSub = engine.completed.listen((done) {
      if (done) _onCompleted();
    });
    _rateSub?.dispose();
    _rateSub = engine.rate.listen((_) => _anchorPresence());
    _fpsSub?.dispose();
    _fpsSub = engine.videoHeight.listen((h) {
      if (h != null) unawaited(_matchDisplay());
    });
    _playingSub = engine.playing.listen((playing) {
      _anchorPresence();
      _scheduleHide();
      unawaited(PlayerPip.setAuto(playing && settings.autoPip));
    });
    mediaSession.rebind();
  }

  Future<void> _matchDisplay() async {
    final fps = await engine.videoFps();
    if (fps != null) await matchRefreshRate(fps);
  }

  Future<void> _watchRender(int generation) async {
    if (PlayerEngine.softwareRender || isMobilePlatform) return;
    var waited = 0;
    while (engine.duration.value == Duration.zero && waited < 300) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
      waited++;
      if (generation != _generation) return;
    }
    if (engine.duration.value == Duration.zero) return;
    var rendered = false;
    unawaited(
      engine.video.waitUntilFirstFrameRendered.then((_) => rendered = true),
    );
    var stuck = Duration.zero;
    var waitedFor = Duration.zero;
    const step = Duration(milliseconds: 250);
    while (!rendered && waitedFor < const Duration(minutes: 2)) {
      await Future<void>.delayed(step);
      waitedFor += step;
      if (generation != _generation) return;
      if (engine.buffering.value || !engine.playing.value) continue;
      stuck += step;
      if (stuck >= const Duration(seconds: 6)) {
        await _fallbackToSoftware();
        return;
      }
    }
  }

  Future<void> _fallbackToSoftware() async {
    logger(
      'Hardware rendering failed, switching to software rendering',
      logLevel: LogLevel.error,
      tag: 'PLAYER',
    );
    PlayerEngine.fallBackToSoftware();
    final at = engine.position.value;
    final old = engine;
    engine = PlayerEngine(settings);
    _bindEngine();
    engineTick.value++;
    unawaited(old.dispose());
    await engine.configure();
    await selectStream(videoIndex.value, startAt: at);
  }

  @override
  void onClose() {
    openCount--;
    _closed = true;
    if (cast.active) unawaited(cast.stop());
    _castPositionSub?.dispose();
    _castEndedSub?.dispose();
    _blurTimer?.cancel();
    _lifecycle?.dispose();
    together.detach(this);
    find<DownloadEngine>().sweepFinished();
    _generation++;
    _busyTimer?.cancel();
    pageScroll.dispose();
    commentsScroll.dispose();
    _hideTimer?.cancel();
    _volumeTimer?.cancel();
    _countdownTimer?.cancel();
    _brightnessTimer?.cancel();
    _seekForwardTimer?.cancel();
    _seekBackwardTimer?.cancel();
    _osdTimer?.cancel();
    _saveTimer?.cancel();
    unawaited(_metaSub?.cancel());
    _positionSub?.dispose();
    _completedSub?.dispose();
    _playingSub?.dispose();
    _errorSub?.dispose();
    _rateSub?.dispose();
    _fpsSub?.dispose();
    if (Platform.isAndroid) unawaited(applyRefreshRate());
    _saveProgress(force: true);
    _commitWatched();
    unawaited(PlayerPip.setAuto(false));
    PlayerPip.detach();
    unawaited(seekPreview.dispose());
    unawaited(mediaSession.dispose());
    unawaited(_snapshotAndDispose());
    focus.dispose();
    if (isMobilePlatform && !keepOrientation) {
      unawaited(ScreenBrightness.instance.resetApplicationScreenBrightness());
      SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
    if (Platform.isLinux && _linuxBacklight) {
      unawaited(ScreenBrightness.instance.resetApplicationScreenBrightness());
    }
    if (!keepOrientation) unawaited(setWakelock(false));
    if (!isMobilePlatform && fullscreen.value) {
      unawaited(setDesktopFullscreen(false));
    }
  }

  Future<void> _extendItems() async {
    final load = request.loadItems;
    if (load == null) return;
    try {
      final list = await load();
      if (list == null || list.isEmpty || _closed) return;
      final at = list.indexWhere((e) => e.key == item.key);
      if (at < 0) return;
      items.value = list;
      index.value = at;
      _tagEpisode(at);
    } catch (e) {
      logger('Player episode list failed: $e', tag: 'PLAYER');
    }
  }

  Future<void> _begin() async {
    unawaited(_extendItems().then((_) => request.resume ? loadMeta() : null));
    await engine.configure();
    await loadItem(
      request.index,
      preset: request.videos.isEmpty ? null : request.videos,
      presetIndex: request.videoIndex,
    );
  }

  Future<List<v.Video>> fetchStreams(PlayItem target) async {
    if (target.hasFixedStreams) return target.fixed;
    final svc = request.service;
    final med = request.media;
    if (svc != null && med != null) {
      final local = find<DownloadEngine>().localVideo(
        svc.id,
        med.id,
        target.downloadKey,
      );
      if (local != null) return [local];
    }
    final source = request.source;
    final episode = target.episode;
    if (source == null || episode == null) return const [];
    final list = await source.methods.getVideoList(episode);
    shareSubtitles(list);
    return list;
  }

  Future<void> loadItem(
    int next, {
    List<v.Video>? preset,
    int? presetIndex,
  }) async {
    if (next < 0 || next >= items.length) return;
    final key = items[next].key;
    final generation = ++_generation;
    cancelCountdown();
    _saveProgress(force: true);
    _commitWatched();
    loading.value = true;
    loadError.value = null;
    _preloading = false;
    try {
      final Future<List<v.Video>> loaded;
      var cached = false;
      if (preset != null) {
        loaded = Future.value(preset);
      } else if (_nextFor == next && _nextStreams != null) {
        loaded = Future.value(_nextStreams!);
        cached = true;
      } else {
        loaded = fetchStreams(items[next]);
      }
      unawaited(loaded.then((_) {}, onError: (_) {}));
      final early =
          preset == null &&
          !cached &&
          askPendingStream != null &&
          !_remembersStream();
      final Future<int?>? sheet = early ? askPendingStream!(loaded) : null;
      final list = await loaded;
      if (generation != _generation) return;
      if (sheet == null) await _confirmTracking();
      if (generation != _generation) return;
      _nextStreams = null;
      _nextFor = null;
      if (list.isEmpty) {
        loadError.value = getString.playerNoStreams;
        loading.value = false;
        return;
      }
      videos.value = list;
      final chosen =
          presetIndex ??
          (sheet != null ? await sheet : await _chooseStream(list));
      if (generation != _generation) return;
      if (sheet != null && chosen != null) await _confirmTracking();
      if (generation != _generation) return;
      if (chosen == null) {
        if (engine.duration.value == Duration.zero) pop();
        loading.value = false;
        return;
      }
      _commitWatched();
      final moved = items.indexWhere((e) => e.key == key);
      if (moved >= 0) next = moved;
      index.value = next;
      chunk.value = null;
      _tagEpisode(next);
      stamps.clear();
      activeStamp.value = null;
      _skipped.clear();
      _watchedMarked = false;
      _lastSave = -1;
      _lastGood = Duration.zero;
      _recoveries = 0;
      await selectStream(chosen, fromStart: false);
    } catch (e, st) {
      if (generation != _generation) return;
      logger(
        'Player load failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'PLAYER',
      );
      loadError.value = e.toString();
      loading.value = false;
    }
  }

  Future<int?> _chooseStream(List<v.Video> list) async {
    if (list.length == 1) return 0;
    final rec = record;
    final src = request.source;
    if (rec != null && src != null && (rec.streams.auto || request.resume)) {
      final last = rec.streams.last[src.id];
      if (last != null) {
        final best = bestStreamIndex(list, last);
        if (best != null) return best;
      }
    }
    return askStream?.call(list);
  }

  Future<int?> Function(List<v.Video> list)? askStream;
  Future<int?> Function(Future<List<v.Video>> pending)? askPendingStream;

  bool _remembersStream() {
    final rec = record;
    final src = request.source;
    if (rec == null || src == null) return false;
    return (rec.streams.auto || request.resume) &&
        rec.streams.last[src.id] != null;
  }

  void rememberStream(v.Video chosen) {
    final rec = record;
    final src = request.source;
    if (rec == null || src == null || src.id == null) return;
    rec.streams.last[src.id!] = streamLabel(chosen);
    MediaRecords.save(request.service!, request.media!);
  }

  Future<void> selectStream(
    int choice, {
    bool fromStart = false,
    Duration? startAt,
  }) async {
    if (choice < 0 || choice >= videos.length) return;
    final generation = _generation;
    final keep = _watchPosition;
    final casting = cast.device.value;
    final switching = _watchDuration > Duration.zero && !loading.value;
    videoIndex.value = choice;
    final chosen = videos[choice];
    rememberStream(chosen);
    loading.value = true;
    loadError.value = null;
    Duration start = Duration.zero;
    if (startAt != null) {
      start = startAt;
    } else if (switching && keep > const Duration(seconds: 1)) {
      start = keep;
    } else if (!fromStart && (settings.resume || switching)) {
      final saved = _savedPlayback();
      if (saved != null && !saved.finished) {
        start = Duration(seconds: saved.position);
      }
    }
    torrentMissing.value = false;
    logger(
      'Player open: ${chosen.title ?? ''} ${chosen.quality} ${chosen.url}',
      tag: 'PLAYER',
    );
    try {
      await engine.open(
        chosen.url,
        headers: chosen.headers,
        start: start,
        title: item.title,
        autoplay: casting == null,
      );
      if (generation != _generation) return;
      await engine.setRate(settings.speed);
      if (casting != null) {
        await _sendToCast(casting, start: start, hand: false);
        if (generation != _generation) return;
      }
      loading.value = false;
      unawaited(_afterOpen(chosen, generation));
      unawaited(_watchRender(generation));
    } catch (e, st) {
      if (generation != _generation) return;
      logger(
        'Player open failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'PLAYER',
      );
      torrentMissing.value = e is TorrentUnavailable;
      loadError.value = e.toString();
      loading.value = false;
    }
  }

  Playback? _savedPlayback() {
    final rec = record;
    return rec != null ? rec.playback[itemKey] : LocalPlayback.get(itemKey);
  }

  Future<void> _afterOpen(v.Video chosen, int generation) async {
    var waited = 0;
    while (engine.duration.value == Duration.zero && waited < 150) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
      waited++;
      if (generation != _generation) return;
    }
    if (generation != _generation) return;
    final own = <SkipStamp>[
      for (final t in chosen.timeStamps ?? const <v.TimeStamp>[])
        SkipStamp(
          t.name ?? 'Skip',
          skipKindOf(t.name ?? ''),
          t.startTime,
          t.endTime,
        ),
    ];
    stamps.value = own;
    await _pickDefaultSubtitle(chosen);
    unawaited(_verifyAudio(generation));
    _syncPipRatio();
    final skipMedia = request.media;
    final skipService = request.service;
    var malId = skipMedia?.malId;
    if (own.isEmpty &&
        malId == null &&
        skipMedia != null &&
        skipService != null &&
        skipMedia.isAnime) {
      malId = (await IdMapper.resolve(skipService, skipMedia)).mal;
      if (generation != _generation) return;
    }
    if (own.isEmpty && malId != null && skipMedia!.isAnime) {
      final stamp = await AniSkip.fetch(
        malId: malId,
        episode: item.number.floor(),
        lengthSeconds: engine.duration.value.inSeconds,
      );
      if (generation != _generation) return;
      if (stamp.isNotEmpty) stamps.value = stamp;
    }
    if (own.isEmpty && stamps.value.isEmpty) {
      final media = request.media;
      final service = request.service;
      if (media != null && service != null) {
        final ids = await IdMapper.resolve(service, media);
        if (generation != _generation) return;
        final introStamps = await IntroDb.fetch(
          imdbId: ids.imdb,
          tvdbId: ids.tvdb,
          tmdbId: ids.tmdb,
          episode: item.number.floor(),
          durationMs: engine.duration.value.inMilliseconds,
          isMovie: media.format == 'MOVIE',
        );
        if (generation != _generation) return;
        if (introStamps.isNotEmpty) stamps.value = introStamps;
      }
    }
  }

  Future<void> _pickDefaultSubtitle(v.Video chosen) async {
    await _pickDefaultAudio();
    if (!settings.showSubtitle) {
      await engine.noSubtitle();
      return;
    }
    final priority = languageList(settings.subtitleLanguage);
    final external = _externalSubtitle(chosen);
    if (external?.file != null) {
      await engine.addSubtitle(
        external!.file!,
        external.label ?? (priority.firstOrNull ?? ''),
      );
      return;
    }
    for (var i = 0; i < 10 && engine.subtitleTracks.value.isEmpty; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
    }
    final embedded = pickTrack(
      engine.subtitleTracks.value,
      priority,
      avoidSigns: true,
    );
    if (embedded != null) {
      await engine.setSubtitle(embedded.id);
    } else if (engine.activeSubtitle.value == null &&
        engine.subtitleTracks.value.isNotEmpty) {
      await engine.setSubtitle(engine.subtitleTracks.value.first.id);
    }
  }

  Future<void> _verifyAudio(int generation) async {
    for (var attempt = 0; attempt < 3; attempt++) {
      await Future<void>.delayed(const Duration(milliseconds: 2000));
      if (_closed || generation != _generation) return;
      final tracks = engine.audioTracks.value;
      if (tracks.isEmpty || !engine.playing.value) continue;
      final probe = await engine.audioProbe();
      final aid = probe['aid'] ?? '';
      final silent =
          aid == 'no' ||
          aid == 'false' ||
          aid.isEmpty ||
          (probe['current-ao'] ?? '').isEmpty ||
          (probe['audio-params/format'] ?? '').isEmpty ||
          probe['mute'] == 'yes';
      logger(
        'Audio check ${attempt + 1}: $probe tracks=${tracks.map((t) => t.id).toList()} silent=$silent',
        tag: 'PLAYER',
      );
      if (!silent) return;
      final wanted = tracks.where((t) => t.id == aid).followedBy(tracks).first;
      await engine.reselectAudio(wanted.id);
    }
  }

  v.Track? _externalSubtitle(v.Video chosen) {
    final tracks = [
      for (final t in chosen.subtitles ?? const <v.Track>[])
        if (t.file != null && t.file!.isNotEmpty) t,
    ];
    for (final wanted in languageList(settings.subtitleLanguage)) {
      final pattern = languagePattern(wanted);
      if (pattern == null) continue;
      final found = tracks
          .where((t) => languageMatches(pattern, title: t.label))
          .toList();
      if (found.isEmpty) continue;
      return found.where((t) => !labelIsSigns(t.label ?? '')).firstOrNull ??
          found.first;
    }
    return null;
  }

  Future<void> _pickDefaultAudio() async {
    final priority = languageList(settings.audioLanguage);
    var tracks = engine.audioTracks.value;
    for (var i = 0; i < 20 && tracks.isEmpty; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      tracks = engine.audioTracks.value;
    }
    if (tracks.isEmpty) return;
    final pick = priority.isEmpty ? null : pickTrack(tracks, priority);
    final current = tracks
        .where((t) => t.id == engine.activeAudio.value)
        .firstOrNull;
    await engine.setAudio((pick ?? current ?? tracks.first).id);
  }

  Disposer? _errorSub;
  Disposer? _rateSub;
  Disposer? _fpsSub;
  final presenceClock = Live<(int, int)>((0, 0));
  Duration _lastGood = Duration.zero;
  int _recoveries = 0;
  bool _recovering = false;

  Future<void> _recover() async {
    if (_closed || _recovering || loading.value) return;
    final at = _lastGood;
    if (at < const Duration(seconds: 3) || _recoveries >= 3) return;
    _recovering = true;
    final generation = _generation;
    await Future<void>.delayed(const Duration(milliseconds: 1200));
    final alive =
        engine.duration.value > Duration.zero &&
        engine.position.value > const Duration(seconds: 1);
    if (alive || _closed || loading.value || generation != _generation) {
      _recovering = false;
      return;
    }
    _recoveries++;
    logger('Player recovering at ${at.inSeconds}s', tag: 'PLAYER');
    try {
      var index = videoIndex.value;
      if (request.source != null && !item.hasFixedStreams) {
        final label = index < videos.length ? streamLabel(videos[index]) : null;
        final fresh = await fetchStreams(item);
        if (generation != _generation || _closed) return;
        if (fresh.isNotEmpty) {
          videos.value = fresh;
          index = (label == null ? null : bestStreamIndex(fresh, label)) ?? 0;
        }
      }
      await selectStream(index, startAt: at);
    } catch (e, st) {
      logError('PlayerState', e, st);
    } finally {
      _recovering = false;
    }
  }

  void _anchorPresence() {
    presenceClock.value = (
      engine.position.value.inSeconds,
      DateTime.now().millisecondsSinceEpoch,
    );
  }

  void _syncPresence(Duration position) {
    final now = DateTime.now().millisecondsSinceEpoch;
    final (anchorPosition, anchorAt) = presenceClock.value;
    final playing = engine.playing.value;
    final expected = playing
        ? anchorPosition + (now - anchorAt) / 1000 * engine.rate.value
        : anchorPosition;
    if ((position.inSeconds - expected).abs() > (playing ? 3 : 1)) {
      presenceClock.value = (position.inSeconds, now);
    }
  }

  void _onPosition(Duration position) {
    _syncPresence(position);
    if (position > const Duration(seconds: 2) && !loading.value) {
      if (_recoveries > 0 &&
          position > _lastGood + const Duration(seconds: 30)) {
        _recoveries = 0;
      }
      if (_recoveries == 0 || position > _lastGood) _lastGood = position;
    }
    final seconds = position.inSeconds.toDouble();
    SkipStamp? current;
    for (final s in stamps) {
      if (s.covers(seconds)) {
        current = s;
        break;
      }
    }
    if (activeStamp.value != current) activeStamp.value = current;
    if (current != null) _autoSkip(current);
    final total = _watchDuration.inSeconds;
    if (total > 0) {
      final fraction = position.inSeconds / total;
      final remaining = _watchDuration - position;
      if (fraction > 0.6 || remaining < const Duration(minutes: 3)) {
        _preloadNext();
      }
    }
    if (position.inSeconds >= _lastSave + 5 || position.inSeconds < _lastSave) {
      _saveProgress();
    }
  }

  bool _wantsSkip(SkipKind kind) =>
      record?.skips[kind.name] ??
      switch (kind) {
        SkipKind.opening => settings.autoSkipOpening,
        SkipKind.ending => settings.autoSkipEnding,
        SkipKind.recap => settings.autoSkipRecap,
        SkipKind.other => false,
      };

  void toggleRememberedSkip(SkipStamp stamp) {
    final rec = record;
    if (rec == null || stamp.kind == SkipKind.other) return;
    final next = !_wantsSkip(stamp.kind);
    rec.skips[stamp.kind.name] = next;
    MediaRecords.save(request.service!, request.media!);
    progressTick.value++;
    flashOsd(
      next
          ? getString.playerAutoSkipOn(stamp.name)
          : getString.playerAutoSkipOff(stamp.name),
    );
  }

  bool get canRememberSkip => record != null;

  bool skipRemembered(SkipStamp stamp) =>
      record?.skips[stamp.kind.name] == true;

  void _autoSkip(SkipStamp stamp) {
    if (!_wantsSkip(stamp.kind)) return;
    if (settings.skipOnce && !_skipped.add(stamp.kind)) return;
    seekTo(Duration(seconds: stamp.end.ceil()));
  }

  void skipStamp() {
    final stamp = activeStamp.value;
    if (stamp != null) {
      seekTo(Duration(seconds: stamp.end.ceil()));
    } else {
      seekBy(Duration(seconds: settings.skipDuration));
    }
  }

  void _preloadNext() {
    if (_preloading || !hasNext || request.source == null) return;
    _preloading = true;
    final target = index.value + 1;
    unawaited(() async {
      try {
        final list = await fetchStreams(items[target]);
        if (index.value + 1 == target) {
          _nextStreams = list;
          _nextFor = target;
        }
      } catch (e, st) {
        logError('PlayerState', e, st);
      }
    }());
  }

  void _onCompleted() {
    if (!settings.autoPlay || !hasNext || loading.value) return;
    final delay = settings.autoPlayDelay;
    if (delay <= 0) {
      playNextNow();
      return;
    }
    nextCountdown.value = delay;
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final left = (nextCountdown.value ?? 1) - 1;
      if (left <= 0) {
        playNextNow();
      } else {
        nextCountdown.value = left;
      }
    });
  }

  void cancelCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
    nextCountdown.value = null;
  }

  void playNextNow() {
    cancelCountdown();
    if (!hasNext || loading.value) return;
    snackString(getString.playerAutoPlaying(items[index.value + 1].title));
    unawaited(loadItem(index.value + 1));
  }

  Future<void> _snapshotAndDispose() async {
    final rec = record;
    final service = request.service;
    final media = request.media;
    try {
      if (rec != null &&
          service != null &&
          media != null &&
          rec.saveProgress &&
          !isIncognito &&
          engine.duration.value > Duration.zero) {
        final bytes = await engine.player
            .screenshot(format: 'image/jpeg')
            .timeout(const Duration(seconds: 2));
        if (bytes != null) {
          await ResumeStore.snapshot(
            kind: ResumeKind.watch,
            service: service,
            media: media,
            bytes: bytes,
          );
        }
      }
    } catch (e) {
      logger('Player snapshot failed: $e', tag: 'PLAYER');
    }
    await engine.dispose();
  }

  Duration get _watchPosition =>
      cast.active ? cast.position.value : engine.position.value;

  Duration get duration => _watchDuration;

  Duration get _watchDuration =>
      cast.active ? cast.duration.value : engine.duration.value;

  Future<void> castTo(CastDevice target) async {
    final start = engine.position.value;
    await engine.pause();
    final ok = await _sendToCast(target, start: start);
    if (!ok) await engine.play();
  }

  Future<bool> _sendToCast(
    CastDevice target, {
    required Duration start,
    bool hand = true,
  }) async {
    final list = videos.toList();
    final at = videoIndex.value;
    final chosen = at >= 0 && at < list.length ? list[at] : null;
    final url = engine.previewTarget ?? chosen?.url;
    if (url == null) return false;
    final subs = [
      for (final t in chosen?.subtitles ?? const <v.Track>[])
        if (t.file != null && t.file!.isNotEmpty)
          CastSubtitle(t.file!, t.label ?? 'Subtitles'),
    ];
    final wanted = settings.showSubtitle && chosen != null
        ? _externalSubtitle(chosen)
        : null;
    final active = wanted == null
        ? null
        : subs.indexWhere((s) => s.source == wanted.file);
    final ok = await cast.cast(
      target: target,
      url: url,
      title: item.title,
      headers: engine.previewHeaders,
      subtitles: subs,
      subtitle: active != null && active >= 0 ? active : null,
      start: start,
    );
    if (!ok) snackString(cast.failure.value ?? getString.castFailed);
    return ok;
  }

  Future<void> saveFrame(Uint8List? original, {required bool processed}) async {
    try {
      final bytes = processed ? await engine.captureFrame() : original;
      if (bytes == null) throw StateError('no frame');
      final at = engine.position.value.inSeconds;
      final name = '${item.title} ${at}s'.replaceAll(
        RegExp(r'[\\/:*?"<>|]'),
        '',
      );
      final saved = await FilePicker.saveFile(
        fileName: '$name.png',
        bytes: bytes,
        mimeType: 'image/png',
        type: FileType.image,
      );
      if (saved != null) snackString(getString.playerPictureSaved);
    } catch (e, st) {
      logError('PlayerState', e, st);
      snackString(getString.playerPictureSaveFailed);
    }
  }

  Future<void> stopCasting() async {
    final at = await cast.stop();
    if (_closed) return;
    if (at > const Duration(seconds: 1)) await engine.seek(at);
    await engine.play();
  }

  void _saveProgress({bool force = false}) {
    final position = _watchPosition.inSeconds;
    final total = _watchDuration.inSeconds;
    if (total <= 0 || position <= 0 || !_localSave) return;
    if (!force && position == _lastSave) return;
    _lastSave = position;
    final entry = Playback(position: position, duration: total);
    final rec = record;
    if (rec != null) {
      rec.playback[itemKey] = entry;
      MediaRecords.save(request.service!, request.media!);
      progressTick.value++;
      if (rec.saveProgress && !isIncognito) {
        final media = request.media!;
        ResumeStore.record(
          kind: ResumeKind.watch,
          service: request.service!,
          media: media,
          sourceId: request.source?.id,
          unitKey: itemKey,
          number: item.number,
          title: item.title,
          thumbnail: item.unit?.thumbnail ?? media.banner ?? media.cover,
          position: position,
          duration: total,
          episode: item.episode?.toJson().cast<String, Object?>(),
        );
      }
    } else {
      LocalPlayback.put(itemKey, entry);
    }
  }

  Future<void> _confirmTracking() async {
    final rec = record;
    final media = request.media;
    if (rec == null ||
        media == null ||
        !media.isAnime ||
        !rec.saveProgress ||
        isIncognito ||
        request.service?.getMutations == null) {
      _tracking = true;
      _localSave = true;
      return;
    }
    if (trackAnimePref.value == 'ask') unawaited(engine.pause());
    final choice = await confirmTracking(
      context,
      anime: true,
      name: media.mainName,
      service: request.service,
      media: media,
    );
    _tracking = choice == TrackChoice.service;
    _localSave = choice != TrackChoice.none;
  }

  void _commitWatched() {
    if (_watchedMarked) return;
    final total = _watchDuration.inSeconds;
    if (total <= 0) return;
    final fraction = _watchPosition.inSeconds / total;
    if (fraction * 100 < settings.watchedAt) return;
    _watchedMarked = true;
    final svc = request.service;
    final med = request.media;
    if (svc != null && med != null) {
      find<DownloadEngine>().markFinished(svc.id, med.id, item.downloadKey);
    }
    unawaited(_trackProgress());
  }

  Future<void> _trackProgress() async {
    if (!_tracking) return;
    final rec = record;
    final media = request.media;
    final mutations = request.service?.getMutations;
    if (rec == null || media == null || mutations == null) return;
    if (!rec.saveProgress || isIncognito || !media.isAnime) return;
    final target = item.number.floor();
    if (target <= (media.userProgress ?? 0)) return;
    try {
      await mutations.setProgress(media, target);
      media.userProgress = target;
      ResumeStore.noteProgress(request.service!, media, target);
    } catch (e) {
      logger(
        'Player progress failed: $e',
        logLevel: LogLevel.error,
        tag: 'PLAYER',
      );
    }
  }

  void setSpeed(double value) {
    updateSettings((s) => s.speed = value);
    unawaited(engine.setRate(value));
  }

  void updateSettings(void Function(PlayerSettings s) change) {
    final before = settings.toJson();
    change(settings);
    final after = settings.toJson();
    final changed = {
      for (final k in {...before.keys, ...after.keys})
        if (before[k] != after[k]) k,
    };
    if (changed.any((k) => k.startsWith('subtitle') || k == 'useLibass')) {
      unawaited(engine.applySubtitleStyle());
    }
    if (changed.any((k) => k.startsWith('audio'))) {
      unawaited(engine.applyAudioOutput());
    }
    final rec = record;
    if (rec != null && perTitle.value) {
      rec.player = settings.diff(PlayerPrefs.global.value);
      MediaRecords.save(request.service!, request.media!);
    } else {
      PlayerPrefs.update(change);
    }
  }

  void setPerTitle(bool value) {
    final rec = record;
    if (rec == null) return;
    perTitle.value = value;
    if (value) {
      rec.player = settings.diff(PlayerPrefs.global.value);
      if (rec.player.isEmpty) rec.player = {'speed': settings.speed};
    } else {
      rec.player = {};
      settings = PlayerPrefs.global.value.copy();
      colorValues.value = settings.color;
    }
    MediaRecords.save(request.service!, request.media!);
    settingsVersion.value++;
  }

  void cycleFit() {
    final next = (settings.resizeMode + 1) % resizeFits.length;
    updateSettings((s) => s.resizeMode = next);
    fit.value = resizeFits[next];
    snackString(
      [
        getString.playerFitFit,
        getString.playerFitCover,
        getString.playerFitStretch,
      ][next],
    );
  }

  void showControls() {
    if (!controlsVisible.value) controlsVisible.value = true;
    _scheduleHide();
  }

  void toggleControls() {
    if (controlsVisible.value) {
      controlsVisible.value = false;
      _hideTimer?.cancel();
    } else {
      showControls();
    }
  }

  void _scheduleHide() {
    _hideTimer?.cancel();
    if (!engine.playing.value) return;
    _hideTimer = Timer(const Duration(seconds: 3), () {
      if (!panel.value) controlsVisible.value = false;
    });
  }

  void holdControls() => _hideTimer?.cancel();

  Future<T?> whilePaused<T>(Future<T?> Function() open) async {
    final wasPlaying = !cast.active && engine.playing.value;
    holdControls();
    if (wasPlaying) await engine.pause();
    final result = await open();
    if (wasPlaying) await engine.play();
    showControls();
    return result;
  }

  void toggleLock() => locked.value = !locked.value;

  Future<void> _initFullscreen() async {
    try {
      fullscreen.value = await windowManager.isFullScreen();
    } catch (e, st) {
      logError('PlayerState', e, st);
    }
  }

  void _tagEpisode(int at) {
    final unit = items[at];
    episodeTag.value = request.media != null && unit.episode != null
        ? unit.number.floor()
        : null;
  }

  Future<void> toggleFullscreen() async {
    if (fullscreen.value) {
      await exitFullscreen();
    } else {
      await enterFullscreen();
    }
  }

  void _hold() {
    _busy = true;
    _busyTimer?.cancel();
    _busyTimer = Timer(const Duration(milliseconds: 900), () => _busy = false);
  }

  bool _manualExit = false;

  bool get _tablet {
    try {
      return MediaQuery.sizeOf(context).shortestSide >= 600;
    } catch (_) {
      return false;
    }
  }

  Future<void> enterFullscreen({bool rotate = true}) async {
    if (fullscreen.value) return;
    _manualExit = false;
    fullscreen.value = true;
    commentsOpen.value = false;
    if (isMobilePlatform) {
      _hold();
      if (rotate) {
        await SystemChrome.setPreferredOrientations(_fullscreenOrientations());
      }
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      await setDesktopFullscreen(true);
    }
    showControls();
  }

  Future<void> exitFullscreen({bool rotate = true}) async {
    if (!fullscreen.value) return;
    fullscreen.value = false;
    locked.value = false;
    panel.value = false;
    if (isMobilePlatform) {
      _hold();
      if (rotate) _manualExit = true;
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      if (rotate && _tablet) {
        await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      } else if (rotate) {
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        await Future<void>.delayed(const Duration(milliseconds: 600));
        if (!_closed) {
          await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
        }
      }
    } else {
      await setDesktopFullscreen(false);
    }
    showControls();
  }

  void followOrientation(Orientation orientation) {
    if (!isMobilePlatform || _busy || _closed) return;
    if (orientation == Orientation.landscape && !fullscreen.value) {
      if (_manualExit) return;
      unawaited(enterFullscreen(rotate: false));
    } else if (orientation == Orientation.portrait) {
      _manualExit = false;
      if (fullscreen.value && settings.orientation != 'portrait') {
        unawaited(exitFullscreen(rotate: false));
      }
    }
  }

  List<DeviceOrientation> _fullscreenOrientations() =>
      switch (settings.orientation) {
        'portrait' => [DeviceOrientation.portraitUp],
        'auto' => DeviceOrientation.values,
        _ => [
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ],
      };

  Future<void> _initVolumeAndBrightness() async {
    try {
      if (isMobilePlatform) {
        VolumeController.instance.showSystemUI = false;
        volume.value = await VolumeController.instance.getVolume();
      } else {
        volume.value = playerVolumePref.value.clamp(0.0, 1.0);
        await engine.player.setVolume(volume.value * 100);
      }
    } catch (e, st) {
      logError('PlayerState', e, st);
    }
    try {
      if (Platform.isLinux) {
        _linuxBacklight =
            await ScreenBrightness.instance.canChangeSystemBrightness;
      }
      if (supportsBrightness) {
        brightness.value = await ScreenBrightness.instance.application;
      }
    } catch (e, st) {
      logError('PlayerState', e, st);
    }
  }

  void changeVolume(double delta, {bool keyboard = false}) {
    if (!keyboard && !settings.adjustVolume) return;
    final next = (volume.value + delta).clamp(0.0, 1.0);
    volume.value = next;
    volumeShown.value = true;
    try {
      if (isMobilePlatform) {
        VolumeController.instance.setVolume(next);
      } else {
        unawaited(engine.player.setVolume(next * 100));
        playerVolumePref.value = next;
      }
    } catch (e, st) {
      logError('PlayerState', e, st);
    }
    _volumeTimer?.cancel();
    _volumeTimer = Timer(
      const Duration(milliseconds: 700),
      () => volumeShown.value = false,
    );
  }

  double _beforeMute = 1;

  void toggleMute() {
    if (volume.value > 0) {
      _beforeMute = volume.value;
      changeVolume(-volume.value, keyboard: true);
    } else {
      changeVolume(_beforeMute, keyboard: true);
    }
  }

  void changeBrightness(double delta) {
    if (!supportsBrightness || !settings.adjustBrightness) return;
    final next = (brightness.value + delta).clamp(0.0, 1.0);
    brightness.value = next;
    brightnessShown.value = true;
    unawaited(
      ScreenBrightness.instance
          .setApplicationScreenBrightness(next)
          .catchError(
            (Object e, StackTrace st) => logError('PlayerState', e, st),
          ),
    );
    _brightnessTimer?.cancel();
    _brightnessTimer = Timer(
      const Duration(milliseconds: 700),
      () => brightnessShown.value = false,
    );
  }

  void doubleTapSeek(bool forward) {
    final step = settings.seekDuration;
    seekBy(Duration(seconds: forward ? step : -step));
    if (forward) {
      seekLabelForward.value += step;
      _seekForwardTimer?.cancel();
      _seekForwardTimer = Timer(
        const Duration(milliseconds: 800),
        () => seekLabelForward.value = 0,
      );
    } else {
      seekLabelBackward.value += step;
      _seekBackwardTimer?.cancel();
      _seekBackwardTimer = Timer(
        const Duration(milliseconds: 800),
        () => seekLabelBackward.value = 0,
      );
    }
  }

  void holdStart() {
    if (!settings.holdToSpeed) return;
    _speedBeforeHold = engine.rate.value;
    holdSpeedValue.value = double.parse(
      (_speedBeforeHold * settings.holdSpeed)
          .clamp(0.25, 16.0)
          .toStringAsFixed(2),
    );
    holdActive.value = true;
    unawaited(engine.setRate(holdSpeedValue.value));
  }

  void holdMove(double dx) {
    if (!holdActive.value) return;
    final next = (_speedBeforeHold * (settings.holdSpeed + dx * 0.01)).clamp(
      0.25,
      16.0,
    );
    holdSpeedValue.value = double.parse(next.toStringAsFixed(2));
    unawaited(engine.setRate(holdSpeedValue.value));
  }

  void holdEnd() {
    if (!holdActive.value) return;
    holdActive.value = false;
    unawaited(engine.setRate(_speedBeforeHold));
  }

  Future<void> setShaderMode(
    String profile,
    String name, {
    List<String>? custom,
  }) async {
    updateSettings((s) {
      s.shaderProfile = profile;
      s.shader = name;
      s.shaders = name.isNotEmpty;
      if (custom != null) s.customShaders = custom;
    });
    await engine.applyShaderFiles(
      name.isEmpty
          ? const []
          : shaderFilesOf(profile, name, settings.customShaders),
    );
    flashOsd(name.isEmpty ? getString.playerShadersOff : name);
  }

  bool get canSubmitSkips =>
      request.media?.isAnime == true && request.service != null;

  bool get hasChapters => engine.chapters.value.isNotEmpty || stamps.isNotEmpty;

  Future<void> setColor(ColorValues values) async {
    updateSettings((s) => s.color = values);
    colorValues.value = values;
  }

  void flashOsd(String text) {
    shaderOsd.value = text;
    _osdTimer?.cancel();
    _osdTimer = Timer(const Duration(seconds: 2), () => shaderOsd.value = null);
  }

  void openNext() {
    if (hasNext) unawaited(loadItem(index.value + 1));
  }

  void openPrevious() {
    if (hasPrevious) unawaited(loadItem(index.value - 1));
  }

  void seekTo(Duration to) =>
      unawaited(cast.active ? cast.seek(to) : engine.seek(to));

  void seekBy(Duration by) =>
      unawaited(cast.active ? cast.seekBy(by) : engine.seekBy(by));

  bool get isPlaying => cast.active ? cast.playing.value : engine.playing.value;

  Future<void> togglePlayback() =>
      cast.active ? cast.toggle() : engine.toggle();

  Duration get shownPosition =>
      scrubbing.value ? scrubPosition.value : _watchPosition;
}
