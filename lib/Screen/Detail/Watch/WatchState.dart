import '../../../Core/NotificationManager/NotificationManager.dart';
import '../../../Core/Offline/NetStatus.dart';
import '../../../Core/Offline/OfflineMode.dart';
import '../../../Core/SourceAlerts/SourcePrefs.dart';
import '../../../Core/SourceAlerts/SourceSchedule.dart';
import '../../../Core/SourceAlerts/SourceSub.dart';
import '../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../Core/Downloads/DownloadEngine.dart';
import '../../../Core/Downloads/DownloadTask.dart';
import '../../../Core/Downloads/DownloadSnapshots.dart';

import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/foundation.dart';

import '../../../Api/Services/Extension/Services.dart';
import 'Data/Media/MediaRecord.dart';
import 'Data/Media/ResumeStore.dart';
import '../../Player/Engine/PlayRequest.dart';
import '../../Reader/Engine/ReaderRequest.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import 'Data/EpisodeMeta.dart';
import 'Data/EpisodeMetaService.dart';
import 'Data/EpisodeUnits.dart';
import 'Data/LocalProgress.dart';
import 'Data/UnitLoader.dart';
import '../../../Core/Services/Api/IdMapper.dart';
import 'Data/SourceMatcher.dart';
import 'Data/WatchPrefs.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ScreenState.dart';

enum WatchPhase { sources, searching, loading, ready, empty, noSource, failed }

class WatchState extends ScreenState {
  final MediaService service;
  final Live<Media> media;
  final Mutations? mutations;

  WatchState({required this.service, required this.media, this.mutations});

  Media get current => media.value;

  bool get anime => current.isAnime;

  bool get fixedSource => current.sourceData != null;

  ItemType get itemType => anime
      ? ItemType.anime
      : current.format?.toLowerCase() == 'novel'
      ? ItemType.novel
      : ItemType.manga;

  final phase = WatchPhase.sources.live;
  final status = ''.live;
  final failure = Live<String?>(null);
  final sources = <Source>[].liveList;
  final source = Live<Source?>(null);
  final match = Live<DMedia?>(null);
  final settings = Live<MediaWatchSettings>(MediaWatchSettings());
  final episodes = <DEpisode>[].liveList;
  final meta = Live<Map<String, EpisodeMeta>>(const {});
  final metaLoading = false.live;
  final units = <WatchUnit>[].liveList;
  final scanlators = <String>[].liveList;
  final seasons = <String>[].liveList;
  final season = Live<String?>(null);
  final chunk = 0.live;
  int _generation = 0;
  final _tried = <String>{};
  bool _canFallback = false;
  bool _explicitPick = false;
  int _metaGeneration = 0;
  Disposer? _progressSub;
  Disposer? _prefsSub;
  StreamSubscription<Map<String, EpisodeMeta>>? _metaSub;
  bool _chunkPinned = false;

  MediaRecord get record => MediaRecords.of(service, current);

  MediaRecord get _record => record;

  void saveRecord() => MediaRecords.save(service, current);

  void _saveSettings() {
    _record.watch = settings.value.copy();
    MediaRecords.save(service, current);
  }

  final localTick = 0.live;

  int get serviceProgress => current.userProgress ?? 0;

  int get progress {
    localTick.value;
    return effectiveProgress(serviceProgress, units, record.playback);
  }

  Playback? playbackOf(WatchUnit unit) {
    localTick.value;
    return record.playback[unit.slot];
  }

  String get title => anime ? getString.episodes : getString.chapters;

  @override
  void onInit() {
    settings.value = _record.watch.copy();
    _progressSub = onChange(media, (_) => _pickChunk());
    _prefsSub = onAnyChange([
      watchChunkSizePref.rx,
      watchShowFillerPref.rx,
    ], _derive);
    unawaited(start());
  }

  @override
  void onClose() {
    _generation++;
    _metaGeneration++;
    _progressSub?.dispose();
    _prefsSub?.dispose();
    unawaited(_metaSub?.cancel());
  }

  Future<void> start() async {
    final generation = ++_generation;
    _offlineList = false;
    phase.value = WatchPhase.sources;
    failure.value = null;
    if (_noConnection && await _startOffline()) return;
    if (find<OfflineMode>().isOffline.value) {
      if (generation != _generation) return;
      failure.value = getString.watchStatusOffline;
      phase.value = WatchPhase.failed;
      return;
    }
    if (anime) unawaited(_loadMeta());
    if (fixedSource) {
      await ensureSourcesReady(itemType);
      final fixed = liveSource(current.sourceData!);
      if (generation != _generation) return;
      if (!isSourceInstalled(fixed)) {
        phase.value = WatchPhase.noSource;
        return;
      }
      source.value = fixed;
      sources.value = [fixed];
      await _loadEpisodes(DMedia.withUrl(current.shareLink), generation);
      return;
    }
    await ensureSourcesReady(itemType);
    if (generation != _generation) return;
    final list = watchSources(itemType);
    sources.value = list;
    if (list.isEmpty) {
      source.value = null;
      phase.value = WatchPhase.noSource;
      return;
    }
    final wanted = settings.value.sourceId;
    final next = list.where((s) => s.id == wanted).firstOrNull ?? list.first;
    _tried.clear();
    await selectSource(next, remember: false, fallback: true);
  }

  bool get _noConnection =>
      find<OfflineMode>().isOffline.value || !find<NetStatus>().online.value;

  Future<bool> _startOffline([int? generation]) async {
    final snapshot = await DownloadSnapshots.read(service.id, current.id);
    if (generation != null && generation != _generation) return true;
    var episodes = snapshot?.episodes ?? const <DEpisode>[];
    var id = snapshot?.sourceId;
    if (episodes.isEmpty) {
      final done = find<DownloadEngine>().tasks.where(
        (t) =>
            t.serviceId == service.id &&
            t.mediaId == current.id &&
            t.state.value == DownloadState.done &&
            t.episode != null,
      );
      episodes = [
        for (final t in done)
          DEpisode.fromJson(Map<String, dynamic>.from(t.episode!)),
      ];
      id ??= done.firstOrNull?.sourceId;
    }
    if (episodes.isEmpty) return false;
    final offline = _noConnection;
    if (offline) source.value = id == null ? null : installedSourceById(id);
    if (offline) sources.value = [?source.value];
    _offlineList = true;
    _setEpisodes(episodes);
    failure.value = null;
    _chunkPinned = false;
    _derive();
    phase.value = WatchPhase.ready;
    return true;
  }

  String _triedKey(Source s) => s.id ?? s.name ?? '';

  Future<bool> _tryNextSource() async {
    final failed = source.value;
    if (!_canFallback || failed == null || fixedSource || _noConnection) {
      return false;
    }
    if (!watchAutoSourcePref.value) return false;
    _tried.add(_triedKey(failed));
    final next = sources
        .where((s) => !_tried.contains(_triedKey(s)))
        .firstOrNull;
    if (next == null) return false;
    logger(
      'Watch: ${failed.name} gave nothing, trying ${next.name}',
      tag: 'WATCH',
    );
    await selectSource(next, remember: false, fallback: true);
    return true;
  }

  Future<void> selectSource(
    Source next, {
    bool remember = true,
    bool fallback = false,
  }) async {
    final generation = ++_generation;
    _canFallback = fallback;
    _explicitPick = remember;
    if (!fallback) _tried.clear();
    source.value = next;
    if (!fallback) CloudflareSolver.focus(next.baseUrl);
    if (remember) {
      settings.value
        ..sourceId = next.id
        ..sourceName = next.name;
      _saveSettings();
    }
    episodes.clear();
    units.clear();
    match.value = null;
    phase.value = WatchPhase.searching;
    status.value = getString.watchSearching;
    final saved = SourceMatcher.saved(service, next, current);
    if (saved != null) {
      match.value = saved;
      status.value = getString.watchSelected(saved.title ?? '');
      await _loadEpisodes(saved, generation);
      return;
    }
    try {
      final found = await SourceMatcher.find(
        next,
        current,
        mode: settings.value.match,
        onStatus: (term) {
          if (generation == _generation) {
            status.value = getString.watchSearchingFor(term);
          }
        },
      );
      if (generation != _generation) return;
      if (found == null) {
        if (await _tryNextSource()) return;
        status.value = getString.watchNothingFound;
        phase.value = WatchPhase.empty;
        return;
      }
      SourceMatcher.save(service, next, current, found);
      match.value = found;
      status.value = getString.watchFound(found.title ?? '');
      await _loadEpisodes(found, generation);
    } catch (e, st) {
      if (generation != _generation) return;
      logger(
        'Watch search failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'WATCH',
      );
      if (await _tryNextSource()) return;
      failure.value = e.toString();
      status.value = getString.watchSearchFailed;
      phase.value = WatchPhase.failed;
    }
  }

  Future<void> chooseMatch(DMedia picked) async {
    final src = source.value;
    if (src == null) return;
    final generation = ++_generation;
    _explicitPick = true;
    SourceMatcher.save(service, src, current, picked);
    match.value = picked;
    status.value = getString.watchSelected(picked.title ?? '');
    episodes.clear();
    units.clear();
    await _loadEpisodes(picked, generation);
  }

  Future<void> resetMatch() async {
    final src = source.value;
    if (src == null || fixedSource) return;
    SourceMatcher.forget(service, src, current);
    await selectSource(src, remember: false);
  }

  int get _localProgress => effectiveProgress(0, units, record.playback);

  SourceSub? get subscription =>
      find<SourceSubscriptions>().of(service, current);

  DMedia? get _subscribeTarget =>
      fixedSource ? DMedia.withUrl(current.shareLink) : match.value;

  bool get canSubscribe =>
      phase.value == WatchPhase.ready &&
      !_offlineList &&
      source.value != null &&
      _subscribeTarget != null &&
      episodes.isNotEmpty;

  void _noteLatest(List<DEpisode> normalized) {
    final max = latestOf(normalized, season: season.value, anime: anime)?.max;
    final value = max?.floor();
    if (value == null || value <= 0 || record.latestUnit == value) return;
    record.latestUnit = value;
    MediaRecords.save(service, current);
  }

  void _noteSubscription(Source src, DMedia target, List<DEpisode> normalized) {
    final explicit = _explicitPick;
    _explicitPick = false;
    if (find<SourceSubscriptions>().of(service, current) == null) return;
    final manager = extensionServiceFor(itemType);
    final latest = latestOf(normalized, season: season.value, anime: anime);
    if (manager == null || latest == null) return;
    find<SourceSubscriptions>().noteEpisodes(
      service: service,
      media: current,
      source: src,
      manager: manager,
      target: target,
      latest: latest,
      localProgress: _localProgress,
      explicit: explicit,
    );
  }

  Future<void> toggleSubscription() async {
    final store = find<SourceSubscriptions>();
    final existing = store.of(service, current);
    if (existing != null) {
      store.remove(existing);
      snackString(getString.sourceNotifyOff);
      return;
    }
    final src = source.value;
    final target = _subscribeTarget;
    final manager = extensionServiceFor(itemType);
    final latest = latestOf(
      episodes.toList(),
      season: season.value,
      anime: anime,
    );
    if (src == null || target == null || manager == null || latest == null) {
      snackString(getString.sourceNotifyNeedsSource);
      return;
    }
    final result = store.subscribe(
      service: service,
      media: current,
      source: src,
      manager: manager,
      type: itemType,
      target: target,
      latest: latest,
      localProgress: _localProgress,
      season: season.value,
    );
    switch (result) {
      case SubscribeResult.noTarget:
        snackString(getString.sourceNotifyNeedsSource);
      case SubscribeResult.complete:
        snackString(
          getString.sourceNotifyAllOut(
            current.totalUnits ?? latest.values.length,
          ),
        );
      case SubscribeResult.added:
        sourceAlertsPref.rx.value = true;
        unawaited(find<NotificationManager>().requestPermission());
        snackString(getString.sourceNotifyOn(src.name ?? ''));
    }
  }

  Future<void> _loadEpisodes(DMedia target, int generation) async {
    final src = source.value;
    if (src == null) return;
    if (!_canFallback) CloudflareSolver.focus(src.baseUrl);
    phase.value = WatchPhase.loading;
    try {
      final detail = await src.methods.getDetail(target);
      if (generation != _generation) return;
      final raw = detail.episodes ?? const <DEpisode>[];
      if (raw.isEmpty) {
        logger(
          'Watch episodes: ${src.name} returned none for ${target.url}',
          tag: 'WATCH',
        );
        if (await _tryNextSource()) return;
        failure.value = null;
        phase.value = WatchPhase.empty;
        return;
      }
      final normalized = !anime
          ? prepareChapters(raw, current.mainName)
          : raw.length < 50
          ? normalizeAll(raw)
          : await compute(normalizeIsolate, raw);
      if (generation != _generation) return;
      _setEpisodes(normalized);
      failure.value = null;
      _chunkPinned = false;
      _derive();
      phase.value = WatchPhase.ready;
      _noteLatest(normalized);
      _noteSubscription(src, target, normalized);
      final downloads = find<DownloadEngine>();
      if (downloads.hasDownloads(service.id, current.id)) {
        unawaited(
          DownloadSnapshots.write(
            service.id,
            current.id,
            episodes: normalized,
            sourceId: src.id,
          ),
        );
      }
    } catch (e, st) {
      if (generation != _generation) return;
      logger(
        'Watch episodes failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'WATCH',
      );
      if (await _tryNextSource()) return;
      if (await _startOffline(generation)) return;
      failure.value = e.toString();
      phase.value = WatchPhase.failed;
    }
  }

  void afterSession() {
    localTick.value++;
    find<SourceSubscriptions>().noteLocal(service, current, _localProgress);
    if (!_chunkPinned) _pickChunk();
    media.refresh();
    unawaited(_refreshProgress());
  }

  Future<void> _refreshProgress() async {
    final queries = service.getQueries;
    if (queries == null || !service.isLoggedIn) return;
    try {
      final fresh = await queries.getMedia(current.id);
      if (fresh == null) return;
      current
        ..userProgress = fresh.userProgress
        ..userStatus = fresh.userStatus
        ..userScore = fresh.userScore;
      media.refresh();
      ResumeStore.noteProgress(service, current, fresh.userProgress);
    } catch (e) {
      logger('Progress refresh failed: $e', tag: 'WATCH');
    }
  }

  Future<void> _loadMeta() async {
    final generation = ++_metaGeneration;
    await _metaSub?.cancel();
    final choice = settings.value.metaSource;
    if (choice == 'off') {
      meta.value = const {};
      metaLoading.value = false;
      _derive();
      return;
    }
    metaLoading.value = true;
    try {
      final ids = await IdMapper.resolve(service, current);
      if (generation != _metaGeneration) return;
      final stream = EpisodeMetaService.load(ids, only: choice);
      final done = Completer<void>();
      _metaSub = stream.listen(
        (merged) {
          if (generation != _metaGeneration) return;
          meta.value = merged;
          _derive();
        },
        onError: (Object e) => logger(
          'Watch metadata failed: $e',
          logLevel: LogLevel.error,
          tag: 'WATCH',
        ),
        onDone: done.complete,
      );
      await done.future;
    } catch (e) {
      logger(
        'Watch metadata failed: $e',
        logLevel: LogLevel.error,
        tag: 'WATCH',
      );
    } finally {
      if (generation == _metaGeneration) metaLoading.value = false;
    }
  }

  Future<void> setMetaSource(String? choice) async {
    final next = settings.value.copy()..metaSource = choice;
    settings.value = next;
    _saveSettings();
    meta.value = const {};
    _derive();
    await _loadMeta();
  }

  Future<void> reloadMeta() async {
    EpisodeMetaService.clearCache();
    await _loadMeta();
  }

  bool _offlineList = false;

  bool get offlineList => _offlineList;

  void refreshSources() {
    if (fixedSource) return;
    sources.value = watchSources(itemType);
  }

  void _setEpisodes(List<DEpisode> list) {
    episodes.value = list;
    scanlators.value = {
      for (final e in list)
        if (e.scanlator?.isNotEmpty ?? false) e.scanlator!,
    }.toList();
    seasons.value = anime ? seasonNames(list) : const [];
    final saved = settings.value.season;
    season.value = seasons.isEmpty
        ? null
        : seasons.contains(saved)
        ? saved
        : seasons.first;
  }

  void selectSeason(String name) {
    if (season.value == name) return;
    season.value = name;
    settings.value = settings.value.copy()..season = name;
    _saveSettings();
    _chunkPinned = false;
    _derive();
  }

  void _derive() {
    if (episodes.isEmpty) return;
    final hidden = settings.value.hiddenScanlators.toSet();
    final seasoned = seasons.isNotEmpty;
    final visible = [
      for (final e in episodes)
        if (seasoned
            ? seasonOf(e) == season.value
            : e.scanlator == null || !hidden.contains(e.scanlator))
          e,
    ];
    final built = buildUnits(
      visible,
      meta.value,
      fallbackThumb: current.banner ?? current.cover ?? '',
      anime: anime,
      seasoned: seasoned,
      seasonOffsets: seasoned && service.seriesProgress
          ? seasonOffsets(episodes.toList(), seasons.toList())
          : const {},
    );
    final shown = !_offlineList
        ? built
        : [
            for (final u in built)
              if (find<DownloadEngine>().hasLocalUnit(
                service.id,
                current.id,
                u.key,
              ))
                u,
          ];
    units.value = watchShowFillerPref.rx.value
        ? shown
        : [
            for (final u in shown)
              if (!u.filler) u,
          ];
    if (!_chunkPinned) _pickChunk();
    if (chunk.value >= chunks.length) chunk.value = 0;
  }

  List<List<WatchUnit>> get chunks =>
      chunkUnits(units.toList(), watchChunkSizePref.rx.value);

  void _pickChunk() {
    final list = chunks;
    chunk.value = chunkOf(list, progress);
  }

  void selectChunk(int index) {
    _chunkPinned = true;
    chunk.value = index;
  }

  WatchUnit? get next {
    final target = progress + 1;
    for (final u in units) {
      if (u.value == target) return u;
    }
    for (final u in units) {
      if (u.value > progress) return u;
    }
    return null;
  }

  void updateSettings(MediaWatchSettings next) {
    final hiddenChanged = !listEquals(
      next.hiddenScanlators,
      settings.value.hiddenScanlators,
    );
    final matchChanged = next.match != settings.value.match;
    settings.value = next;
    _saveSettings();
    if (hiddenChanged) _derive();
    if (matchChanged && !fixedSource) unawaited(resetMatch());
  }

  void resetSettings() {
    final fresh = MediaWatchSettings(
      sourceId: settings.value.sourceId,
      sourceName: settings.value.sourceName,
    );
    updateSettings(fresh);
  }

  Future<void> markWatched(WatchUnit unit) async {
    final m = mutations;
    if (m == null) {
      snackString(getString.watchSignInToTrack);
      return;
    }
    final target = unit.value.floor();
    try {
      await m.setProgress(current, target);
      media.refresh();
      ResumeStore.noteProgress(service, current, target);
    } catch (e) {
      snackString(e.toString());
    }
  }

  Future<void> markUnwatched(WatchUnit unit) async {
    final m = mutations;
    if (m == null) {
      snackString(getString.watchSignInToTrack);
      return;
    }
    final target = (unit.value.floor() - 1).clamp(0, 1 << 30);
    final byNumber = {for (final u in units) u.slot: u.value};
    record.playback.removeWhere(
      (key, saved) => saved.finished && (byNumber[key] ?? 0) >= unit.value,
    );
    saveRecord();
    localTick.value++;
    try {
      await m.setProgress(current, target);
      media.refresh();
      ResumeStore.noteProgress(service, current, target);
    } catch (e) {
      snackString(e.toString());
    }
  }

  ReaderRequest? readRequest(WatchUnit unit, {bool online = false}) {
    final src = source.value;
    final list = units.toList();
    final at = list.indexOf(unit);
    if (src == null &&
        !find<DownloadEngine>().hasLocalUnit(
          service.id,
          current.id,
          unit.key,
        )) {
      return null;
    }
    return ReaderRequest(
      service: service,
      media: current,
      source: src,
      units: list,
      index: at < 0 ? 0 : at,
      online: online,
    );
  }

  List<PlayItem> get playItems => [
    for (final u in units)
      PlayItem(
        key: u.slot,
        title: playTitleOf(u),
        number: u.value,
        episode: u.raw,
        unit: u,
      ),
  ];

  PlayRequest playRequest(WatchUnit unit, List<Video> videos, int videoIndex) {
    final items = playItems;
    final at = items.indexWhere((e) => e.unit == unit);
    return PlayRequest(
      service: service,
      media: current,
      source: source.value,
      items: items,
      index: at < 0 ? 0 : at,
      videos: videos,
      videoIndex: videoIndex,
    );
  }

  Future<void> refresh() async {
    EpisodeMetaService.clearCache();
    await start();
  }
}
