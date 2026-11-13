import '../../Core/Downloads/DownloadEngine.dart';

import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart' show BuildContext, GlobalKey;

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/services.dart';

import '../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Detail/Watch/Data/Media/ResumeStore.dart';
import '../../Core/Preferences/Incognito.dart';
import '../../Widgets/Components/ImageSheet.dart';
import 'Engine/ReaderImageLoader.dart';
import 'Engine/ReaderItems.dart';
import 'Engine/ReaderRequest.dart';
import 'Engine/ReaderSettings.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Detail/Watch/Data/EpisodeUnits.dart';
import '../../Logger.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../Detail/Watch/Components/UnitTile.dart';
import '../../Utils/Functions/Wakelock.dart';
import 'Engine/VolumeKeys.dart';
import '../Detail/Watch/Data/TrackConfirm.dart';

class ReaderState extends ScreenState {
  final ReaderRequest request;

  ReaderState(this.request);

  late ReaderSettings settings;

  final segments = <ReaderSegment>[].liveList;
  final items = <ReaderItem>[].liveList;
  final current = 0.live;
  final loading = true.live;
  final loadingNext = false.live;
  final error = Live<String?>(null);
  final controlsVisible = true.live;
  Timer? _hideTimer;
  final settingsVersion = 0.live;
  final generation = 0.live;
  final spreads = false.live;
  final perTitle = false.live;

  Future<void> Function(int index)? jumper;
  Future<void> Function(double fraction)? scroller;
  void Function(double pixels)? nudger;
  final autoScrolling = false.live;
  Timer? _autoTimer;

  Timer? _saveTimer;
  int _openRun = 0;
  final _marked = <int>{};
  final _failedNext = <int>{};
  bool _closed = false;

  MediaRecord get record => MediaRecords.of(request.service, request.media);

  List<WatchUnit> get units => request.units;

  Future<void> _extend() async {
    final load = request.loadUnits;
    if (load == null) return;
    try {
      final list = await load();
      if (list == null || list.isEmpty || _closed || segments.isEmpty) return;
      final cur = chapter;
      final key = unitKey(units[cur.clamp(0, units.length - 1)]);
      final at = list.indexWhere((u) => unitKey(u) == key);
      if (at < 0) return;
      final shift = at - cur;
      final pg = page;
      request.units = list;
      if (shift != 0) {
        segments.value = [
          for (final s in segments) ReaderSegment(s.chapter + shift, s.pages),
        ];
        final moved = _marked.map((m) => m + shift).toList();
        _marked
          ..clear()
          ..addAll(moved);
        _failedNext.clear();
      }
      _rebuild();
      current.value = _locate(at, pg);
      generation.value++;
    } catch (e) {
      logger('Reader chapter list failed: $e', tag: 'READER');
    }
  }

  int get chapterCount => units.length;

  ReaderItem? get item =>
      current.value < items.length ? items[current.value] : null;

  int get chapter => switch (item) {
    ReaderPage p => p.chapter,
    ReaderSpread s => s.first.chapter,
    ReaderGap g => g.chapter,
    _ => segments.isEmpty ? request.index : segments.first.chapter,
  };

  int get page => switch (item) {
    ReaderPage p => p.page,
    ReaderSpread s => s.first.page,
    ReaderGap g => g.atStart ? 0 : _pagesOf(g.chapter) - 1,
    _ => 0,
  };

  int get pageCount => _pagesOf(chapter);

  int _pagesOf(int chapter) {
    for (final s in segments) {
      if (s.chapter == chapter) return s.pages.length;
    }
    return 0;
  }

  WatchUnit get unit => units[chapter.clamp(0, units.length - 1)];

  String get chapterTitle => unitTitle(unit, false);

  String unitKey(WatchUnit u) => u.slot;

  void openPageSheet(BuildContext context, PageUrl page) {
    final found = items.whereType<ReaderPage>().where(
      (p) => p.url.url == page.url,
    );
    final at = found.isEmpty ? null : found.first;
    final label = at == null
        ? ''
        : ' ${unitLabel(units[at.chapter.clamp(0, units.length - 1)], false)}'
              ' p${at.page + 1}';
    showImageSheet(
      context,
      url: page.url,
      name: '${request.media.mainName}$label',
      title: getString.imageTitlePage,
      file: () => ReaderImageLoader.fileFor(page),
    );
  }

  ReaderSettings _effective() {
    final base = ReaderPrefs.global.value;
    final overrides = record.reader;
    final settings = overrides.isEmpty ? base.copy() : base.merged(overrides);
    return settings..autoMode = _autoMode;
  }

  String get _autoMode => autoReaderMode(
    format: request.media.format,
    country: request.media.countryOfOrigin,
  );

  @override
  void onInit() {
    settings = _effective();
    _first = request.pages;
    perTitle.value = record.reader.isNotEmpty;
    _applySystem();
    unawaited(_open(request.index).then((_) => _extend()));
  }

  @override
  void onClose() {
    _closed = true;
    find<DownloadEngine>().sweepFinished();
    ReaderImageLoader.cancelAll();
    _saveTimer?.cancel();
    _shotTimer?.cancel();
    _hideTimer?.cancel();
    _autoTimer?.cancel();
    unawaited(VolumeKeys.disable());
    _flushProgress();
    unawaited(snapshot());
    unawaited(setWakelock(false));
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void _applySystem() {
    if (settings.volumeKeys) {
      unawaited(VolumeKeys.enable(move));
    } else {
      unawaited(VolumeKeys.disable());
    }
    if (settings.keepOn) {
      unawaited(setWakelock(true));
    } else {
      unawaited(setWakelock(false));
    }
    SystemChrome.setEnabledSystemUIMode(
      settings.fullscreen
          ? SystemUiMode.immersiveSticky
          : SystemUiMode.edgeToEdge,
    );
    SystemChrome.setPreferredOrientations(switch (settings.orientation) {
      'portrait' => [DeviceOrientation.portraitUp],
      'landscape' => [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
      _ => DeviceOrientation.values,
    });
  }

  List<PageUrl>? _first;

  final _lists = <String, Future<List<PageUrl>>>{};
  final _warmed = <String>{};

  Future<List<PageUrl>> _fetch(int index) {
    final key = unitKey(units[index]);
    final preloaded = index == request.index ? _first : null;
    if (preloaded != null) {
      _first = null;
      return _lists[key] = Future.value(preloaded);
    }
    return _lists[key] ??= _loadList(index, key);
  }

  Future<List<PageUrl>> _loadList(int index, String key) async {
    try {
      final local = request.online
          ? null
          : await find<DownloadEngine>().localPages(
              request.service.id,
              request.media.id,
              units[index].key,
            );
      final source = request.source;
      if (local == null && source == null) {
        throw StateError(getString.downloadSourceMissing);
      }
      final pages =
          local ?? await source!.methods.getPageList(units[index].raw);
      if (pages.isEmpty) throw StateError(getString.readerNoPages);
      return pages;
    } catch (e, st) {
      logError('ReaderState', e, st);
      unawaited(_lists.remove(key));
      rethrow;
    }
  }

  bool _isLocal(int index) =>
      !request.online &&
      find<DownloadEngine>().isDownloaded(
        request.service.id,
        request.media.id,
        units[index].key,
      );

  void _warm(int around) {
    for (final n in [_nextOf(around), around - 1]) {
      if (n < 0 || n >= units.length) continue;
      if (_isLocal(n) != _isLocal(around)) continue;
      final key = unitKey(units[n]);
      if (!_warmed.add(key)) continue;
      final forward = n > around;
      unawaited(
        _fetch(n).then((pages) {
          if (_closed) return;
          final picks = forward
              ? pages.take(2)
              : pages.skip(math.max(0, pages.length - 2));
          for (final page in picks) {
            unawaited(ReaderImageLoader.prefetch(page));
          }
        }, onError: (_) => _warmed.remove(key)),
      );
    }
  }

  Future<void> _open(int index, {bool atEnd = false, int? startPage}) async {
    final run = ++_openRun;
    loading.value = true;
    error.value = null;
    try {
      final pages = await _fetch(index);
      if (run != _openRun || _closed) return;
      segments.value = [ReaderSegment(index, pages)];
      _marked.clear();
      _failedNext.clear();
      final saved = record.playback[unitKey(units[index])];
      var start = 0;
      if (startPage != null) {
        start = startPage.clamp(0, pages.length - 1);
      } else if (atEnd) {
        start = pages.length - 1;
      } else if (saved != null && !saved.finished && saved.position > 0) {
        start = saved.position.clamp(0, pages.length - 1);
      }
      _rebuild();
      logger(
        'Reader open: chapter $index, ${pages.length} pages, start $start, ${items.length} items, mode ${settings.mode}, scale ${settings.scale}',
        tag: 'READER',
      );
      current.value = _locate(index, start);
      generation.value++;
      loading.value = false;
      _precache(index, start);
      _warm(index);
      _hideTimer?.cancel();
      _hideTimer = Timer(const Duration(seconds: 3), hideControls);
    } catch (e, st) {
      if (run != _openRun || _closed) return;
      logger(
        'Reader load failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
      error.value = e.toString();
      loading.value = false;
    }
  }

  void retry() => unawaited(_open(chapter));

  void openChapter(int index, {bool atEnd = false, int? startPage}) {
    if (index < 0 || index >= units.length) return;
    _flushProgress();
    unawaited(_open(index, atEnd: atEnd, startPage: startPage));
  }

  final bookmarkTick = 0.live;

  bool get bookmarked {
    bookmarkTick.value;
    final key = unitKey(unit);
    final at = page;
    return record.bookmarks.any((b) => b.unit == key && b.position == at);
  }

  void toggleBookmark() {
    final key = unitKey(unit);
    final at = page;
    final existing = record.bookmarks
        .where((b) => b.unit == key && b.position == at)
        .toList();
    if (existing.isNotEmpty) {
      record.bookmarks.removeWhere((b) => b.unit == key && b.position == at);
    } else {
      record.bookmarks.add(
        Bookmark(
          unit: key,
          position: at,
          total: pageCount,
          label: chapterTitle,
          at: DateTime.now().millisecondsSinceEpoch,
        ),
      );
    }
    MediaRecords.save(request.service, request.media);
    bookmarkTick.value++;
  }

  void removeBookmark(Bookmark b) {
    record.bookmarks.remove(b);
    MediaRecords.save(request.service, request.media);
    bookmarkTick.value++;
  }

  void openBookmark(Bookmark b) {
    final index = units.indexWhere((u) => unitKey(u) == b.unit);
    if (index < 0) return;
    if (index == chapter && _pagesOf(index) > 0) {
      unawaited(go(flatIndexOf(index, b.position)));
    } else {
      openChapter(index, startPage: b.position);
    }
  }

  void openNextChapter() => openChapter(_nextOf(chapter));

  void openPreviousChapter() => openChapter(chapter - 1);

  bool get hasNextChapter => _nextOf(chapter) < units.length;

  bool get hasPreviousChapter => chapter > 0;

  int _nextOf(int chapter) => nextUnitIndex(units, chapter);

  void _rebuild() {
    items.value = buildReaderItems(
      segments.toList(),
      chapterCount: chapterCount,
      spreads: spreads.value && !settings.scrolls,
      startGap: !settings.scrolls,
      nextOf: _nextOf,
    );
  }

  int _locate(int chapter, int page) {
    for (final (i, it) in items.indexed) {
      switch (it) {
        case ReaderPage p when p.chapter == chapter && p.page == page:
          return i;
        case ReaderSpread s
            when s.first.chapter == chapter &&
                (s.first.page == page || s.second.page == page):
          return i;
        default:
      }
    }
    return 0;
  }

  int flatIndexOf(int chapter, int page) => _locate(chapter, page);

  void setSpreads(bool value) {
    if (spreads.value == value) return;
    final chapter = this.chapter;
    final page = this.page;
    spreads.value = value;
    _rebuild();
    current.value = _locate(chapter, page);
    generation.value++;
  }

  void onVisible(int index) {
    if (index < 0 || index >= items.length) return;
    current.value = index;
    final it = items[index];
    if (it is ReaderGap) {
      if (!it.atStart) _maybeMark(it.chapter, force: true);
      _ensureNext();
      return;
    }
    _warm(chapter);
    _scheduleSave();
    _maybeMark(chapter);
    _ensureNext();
    _precache(chapter, page + 1);
  }

  void _maybeMark(int chapterIndex, {bool force = false}) {
    final count = _pagesOf(chapterIndex);
    final reached = force || (count > 0 && page >= count - 1);
    if (!reached || !_marked.add(chapterIndex)) return;
    find<DownloadEngine>().markFinished(
      request.service.id,
      request.media.id,
      units[chapterIndex].key,
    );
    unawaited(_trackProgress(chapterIndex));
  }

  void _ensureNext() {
    if (segments.isEmpty || !settings.autoNext) return;
    final next = _nextOf(segments.last.chapter);
    if (_failedNext.contains(next)) return;
    if (current.value < items.length - 1 - settings.preload - 1) return;
    _appendNext();
  }

  void loadNextNow() {
    _failedNext.clear();
    _appendNext(force: true);
  }

  void _appendNext({bool force = false}) {
    final last = segments.lastOrNull;
    if (last == null || loadingNext.value) return;
    final next = _nextOf(last.chapter);
    if (next >= units.length) return;
    if (!force && _isLocal(next) != _isLocal(last.chapter)) return;
    loadingNext.value = true;
    unawaited(() async {
      try {
        final pages = await _fetch(next);
        if (_closed || segments.last.chapter != last.chapter) return;
        segments.add(ReaderSegment(next, pages));
        _rebuild();
      } catch (e) {
        _failedNext.add(next);
        logger(
          'Reader next chapter failed: $e',
          logLevel: LogLevel.error,
          tag: 'READER',
        );
      } finally {
        loadingNext.value = false;
      }
    }());
  }

  bool nextLoaded(int chapter) {
    final next = _nextOf(chapter);
    return segments.any((s) => s.chapter == next);
  }

  void _precache(int chapterIndex, int from) {
    ReaderSegment? segment;
    for (final s in segments) {
      if (s.chapter == chapterIndex) segment = s;
    }
    if (segment == null) return;
    for (
      var i = from;
      i < from + settings.preload && i < segment.pages.length;
      i++
    ) {
      unawaited(ReaderImageLoader.prefetch(segment.pages[i]));
    }
  }

  final shotKey = GlobalKey();
  Timer? _shotTimer;
  bool _shotBusy = false;

  Future<void> snapshot() async {
    if (_shotBusy || segments.isEmpty || !settings.saveProgress) return;
    if (isIncognito) return;
    final boundary = shotKey.currentContext?.findRenderObject();
    if (boundary is! RenderRepaintBoundary || !boundary.attached) return;
    _shotBusy = true;
    try {
      final image = await boundary.toImage(pixelRatio: 0.6);
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      image.dispose();
      if (data == null) return;
      final bytes = data.buffer.asUint8List();
      await ResumeStore.snapshot(
        kind: ResumeKind.read,
        service: request.service,
        media: request.media,
        bytes: bytes,
      );
      logger('Reader snapshot saved: ${bytes.length} B', tag: 'READER');
    } catch (e) {
      logger('Reader snapshot failed: $e', tag: 'READER');
    } finally {
      _shotBusy = false;
    }
  }

  void _scheduleSave() {
    _saveTimer?.cancel();
    _saveTimer = Timer(const Duration(milliseconds: 800), _flushProgress);
    _shotTimer ??= Timer(const Duration(seconds: 4), () {
      _shotTimer = null;
      unawaited(snapshot());
    });
  }

  final _unsaved = <String>{};

  void _discard(WatchUnit unit) {
    _unsaved.add(unitKey(unit));
    record.playback.remove(unitKey(unit));
    MediaRecords.save(request.service, request.media);
  }

  void _flushProgress() {
    _saveTimer?.cancel();
    if (segments.isEmpty || !settings.saveProgress || isIncognito) return;
    final it = item;
    if (it is! ReaderPage && it is! ReaderSpread) return;
    if (_unsaved.contains(unitKey(unit))) return;
    final count = pageCount;
    if (count <= 0) return;
    record.playback[unitKey(unit)] = Playback(
      position: page + 1 >= count ? count : page,
      duration: count,
    );
    MediaRecords.save(request.service, request.media);
    ResumeStore.record(
      kind: ResumeKind.read,
      service: request.service,
      media: request.media,
      sourceId: request.source?.id,
      unitKey: unitKey(unit),
      number: unit.value,
      title: chapterTitle,
      thumbnail: request.media.banner ?? request.media.cover,
      position: page + 1 >= count ? count : page,
      duration: count,
      episode: unit.raw.toJson().cast<String, Object?>(),
    );
  }

  Future<void> _trackProgress(int chapterIndex) async {
    final media = request.media;
    final mutations = request.service.getMutations;
    if (!record.saveProgress || isIncognito || mutations == null) return;
    final target = units[chapterIndex].value.floor();
    if (target <= 0 || target <= (media.userProgress ?? 0)) return;
    final choice = await confirmTracking(
      context,
      anime: false,
      name: media.mainName,
      service: request.service,
      media: media,
    );
    if (choice == TrackChoice.none) {
      _discard(units[chapterIndex]);
      return;
    }
    if (choice == TrackChoice.local) return;
    try {
      await mutations.setProgress(media, target);
      media.userProgress = target;
      ResumeStore.noteProgress(request.service, media, target);
    } catch (e) {
      logger(
        'Reader progress failed: $e',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
    }
  }

  void updateSettings(void Function(ReaderSettings s) change) {
    final before = settings.mode;
    change(settings);
    if (perTitle.value) {
      record.reader = settings.diff(ReaderPrefs.global.value);
      MediaRecords.save(request.service, request.media);
    } else {
      ReaderPrefs.update(change);
    }
    _applySystem();
    settingsVersion.value++;
    if (settings.scrolls) spreads.value = false;
    _rebuild();
    if (settings.mode != before) generation.value++;
    if (autoScrolling.value) setAutoScroll(true, hide: false);
  }

  void setPerTitle(bool value) {
    perTitle.value = value;
    if (value) {
      record.reader = settings.diff(ReaderPrefs.global.value);
      if (record.reader.isEmpty) record.reader = {'mode': settings.mode};
    } else {
      record.reader = {};
      settings = ReaderPrefs.global.value.copy()..autoMode = _autoMode;
    }
    MediaRecords.save(request.service, request.media);
    _applySystem();
    settingsVersion.value++;
    _rebuild();
    generation.value++;
  }

  void toggleControls() {
    _hideTimer?.cancel();
    controlsVisible.value = !controlsVisible.value;
  }

  void hideControls() => controlsVisible.value = false;

  Future<void> go(int index, {bool animate = true}) async {
    if (index < 0 || index >= items.length) return;
    await jumper?.call(index);
  }

  void move(int direction) {
    if (settings.scrolls) {
      unawaited(scroller?.call(0.85 * direction) ?? Future.value());
    } else {
      step(direction);
    }
  }

  void toggleAutoScroll() => setAutoScroll(!autoScrolling.value);

  void setAutoScroll(bool on, {bool hide = true}) {
    _autoTimer?.cancel();
    autoScrolling.value = on;
    if (!on) return;
    if (hide) hideControls();
    final speed = settings.autoScrollSpeed.clamp(1, 10);
    if (settings.scrolls) {
      const frame = Duration(milliseconds: 16);
      final pixels = (20 + speed * 25) * frame.inMilliseconds / 1000;
      _autoTimer = Timer.periodic(frame, (_) => nudger?.call(pixels));
    } else {
      _autoTimer = Timer.periodic(
        Duration(seconds: 12 - speed),
        (_) => step(1),
      );
    }
  }

  void step(int delta) {
    if (delta > 0 && current.value >= items.length - 1) {
      pullNext();
      return;
    }
    unawaited(go(current.value + delta));
  }

  void nearEnd() {
    if (segments.isEmpty || !settings.autoNext) return;
    final next = _nextOf(segments.last.chapter);
    if (_failedNext.contains(next)) return;
    _appendNext();
  }

  final loadingPrevious = false.live;
  final _failedPrevious = <int>{};

  void nearStart() {
    if (segments.isEmpty || !settings.autoNext || !settings.scrolls) return;
    if (loadingPrevious.value) return;
    final first = segments.first.chapter;
    if (first <= 0 || _failedPrevious.contains(first - 1)) return;
    if (_isLocal(first - 1) != _isLocal(first)) return;
    loadingPrevious.value = true;
    unawaited(() async {
      try {
        final pages = await _fetch(first - 1);
        if (_closed || segments.isEmpty || segments.first.chapter != first) {
          return;
        }
        final before = items.length;
        final at = current.value;
        segments.value = [ReaderSegment(first - 1, pages), ...segments];
        _rebuild();
        current.value = at + items.length - before;
        _precache(first - 1, math.max(0, pages.length - settings.preload));
      } catch (e) {
        _failedPrevious.add(first - 1);
        logger(
          'Reader previous chapter failed: $e',
          logLevel: LogLevel.error,
          tag: 'READER',
        );
      } finally {
        loadingPrevious.value = false;
      }
    }());
  }

  void pullPrevious() {
    if (segments.isEmpty || !settings.scrolls) return;
    final first = segments.first.chapter;
    if (first <= 0) return;
    openChapter(first - 1, atEnd: true);
  }

  void pullNext() {
    if (segments.isEmpty || loadingNext.value) return;
    final last = items.lastOrNull;
    if (last is! ReaderGap || last.atStart || last.target == null) return;
    loadNextNow();
  }
}
