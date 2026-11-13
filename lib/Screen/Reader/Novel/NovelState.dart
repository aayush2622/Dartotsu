import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../../Core/Downloads/DownloadEngine.dart';

import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../../../Core/Preferences/Incognito.dart';
import '../Engine/NovelLocate.dart';
import '../Engine/NovelPaginate.dart';
import '../Engine/NovelSpeech.dart';
import '../Engine/NovelText.dart';
import '../Engine/NovelTranslate.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../Engine/ReaderRequest.dart';
import '../Engine/ReaderSettings.dart';
import '../Engine/VolumeKeys.dart';
import '../../Detail/Watch/Data/TrackConfirm.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Detail/Watch/Data/EpisodeUnits.dart';
import '../../../Logger.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Detail/Watch/Components/UnitTile.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Functions/Wakelock.dart';

const _scale = 10000;

typedef PageSlot = ({GlobalKey key, int start, int prefix});

class NovelState extends ScreenState {
  final ReaderRequest request;

  NovelState(this.request);

  late ReaderSettings settings;

  final index = 0.live;
  final original = <NovelBlock>[].liveList;
  final translated = Live<List<NovelBlock>?>(null);
  final translating = false.live;
  final translateProgress = 0.0.live;
  final speaking = false.live;
  final speechPaused = false.live;
  final autoPaused = false.live;
  final speakingAt = (-1).live;
  final _translator = NovelTranslator();
  final _speech = NovelSpeech();
  int _speakRun = 0;
  final blockKeys = <int, GlobalKey>{};
  final scrollKey = GlobalKey();
  final speakingWord = Live<(int, int)?>(null);

  final pages = Live<List<NovelPage>>(const []);
  final page = 0.live;
  final paginating = false.live;
  final pageSlots = <int, Map<int, PageSlot>>{};
  final pageController = PageController(keepPage: false);
  PageLayout? _layout;
  int _stamp = 0;
  int _pagedStamp = -1;
  int _pageRun = 0;
  int _jumpRun = 0;
  NovelLocator? _pendingLocator;
  NovelLocator? _lastLocator;
  double? _pendingFraction;

  final highlightTick = 0.live;
  final searchQuery = ''.live;
  final searchMatches = Live<List<NovelMatch>>(const []);
  final searchIndex = (-1).live;
  String selectedText = '';
  Map<int, List<NovelHighlight>>? _highlightIndex;
  Object? _highlightKey;

  bool get paged => settings.novelPaged;

  List<NovelBlock> get blocks => translated.value ?? original;
  final loading = true.live;
  final error = Live<String?>(null);
  final controlsVisible = false.live;
  final settingsVersion = 0.live;
  final fraction = 0.0.live;
  final perTitle = false.live;
  final scroll = ScrollController();

  final autoScrolling = false.live;
  Timer? _saveTimer;
  Timer? _autoTimer;
  int _run = 0;
  bool _marked = false;
  bool _closed = false;
  bool _restoring = false;
  double? _restore;

  MediaRecord get record => MediaRecords.of(request.service, request.media);

  List<WatchUnit> get units => request.units;

  WatchUnit get unit => units[index.value];

  String get title => unitTitle(unit, false);

  bool get hasNext => nextUnitIndex(units, index.value) < units.length;

  bool get hasPrevious => index.value > 0;

  @override
  void onInit() {
    final overrides = record.reader;
    final base = ReaderPrefs.global.value;
    settings = overrides.isEmpty ? base.copy() : base.merged(overrides);
    perTitle.value = overrides.isNotEmpty;
    index.value = request.index;
    scroll.addListener(_onScroll);
    _applySystem();
    unawaited(_open(request.index));
  }

  @override
  void onClose() {
    _closed = true;
    find<DownloadEngine>().sweepFinished();
    _saveTimer?.cancel();
    _autoTimer?.cancel();
    _pageRun++;
    _jumpRun++;
    pageController.dispose();
    _speakRun++;
    unawaited(_speech.dispose());
    unawaited(VolumeKeys.disable());
    _save();
    scroll.dispose();
    unawaited(setWakelock(false));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  void _applySystem() {
    if (settings.volumeKeys) {
      unawaited(VolumeKeys.enable((d) => pageBy(d.toDouble())));
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
  }

  Future<void> _open(int target, {double? jump, NovelLocator? at}) async {
    final run = ++_run;
    _save();
    loading.value = true;
    error.value = null;
    index.value = target;
    _marked = false;
    fraction.value = 0;
    _pageRun++;
    _jumpRun++;
    pages.value = const [];
    page.value = 0;
    pageSlots.clear();
    _layout = null;
    _pagedStamp = -1;
    _lastLocator = null;
    paginating.value = false;
    clearSearch();
    try {
      final file = request.file;
      final local = file != null
          ? await readBookText(file, cacheDir: await bookCacheDir(file))
          : request.online
          ? null
          : await find<DownloadEngine>().localNovel(
              request.service.id,
              request.media.id,
              units[target].key,
            );
      final source = request.source;
      if (local == null && source == null) {
        throw StateError(getString.downloadSourceMissing);
      }
      final text =
          local ?? await source!.methods.getNovelContent(units[target].raw);
      if (run != _run || _closed) return;
      final parsed = parseNovel(text ?? '');
      if (parsed.isEmpty) throw StateError(getString.readerNoText);
      stopSpeaking();
      blockKeys.clear();
      translated.value = null;
      original.value = parsed;
      _stamp++;
      _highlightIndex = null;
      final saved = record.playback[unit.number];
      final hasSaved = saved != null && !saved.finished && saved.position > 0;
      _restore = jump ?? (hasSaved ? saved.position / _scale : null);
      _restoreLocator = at ?? (jump == null && hasSaved ? saved.locator : null);
      loading.value = false;
      _scheduleRestore();
      final resume = _resumeSpeakingAfterOpen;
      _resumeSpeakingAfterOpen = false;
      if (settings.translateTo.isNotEmpty) {
        if (resume) {
          await translate();
        } else {
          unawaited(translate());
        }
      }
      if (resume && run == _run && !_closed) {
        Future<void>.delayed(
          const Duration(milliseconds: 400),
          () => unawaited(startSpeaking(from: 0)),
        );
      }
    } catch (e, st) {
      if (run != _run || _closed) return;
      logger(
        'Novel load failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
      error.value = e.toString();
      loading.value = false;
    }
  }

  NovelLocator? _restoreLocator;

  void _scheduleRestore() {
    final target = _restore;
    final locator = _restoreLocator;
    _restoreLocator = null;
    if (!paged && scroll.hasClients) scroll.jumpTo(0);
    final block = locator == null ? null : resolveLocator(original, locator);
    if (paged) {
      _pendingLocator = block == null
          ? null
          : NovelLocator(block, locator!.within, locator.snippet);
      _pendingFraction = block == null ? target : null;
      return;
    }
    if (block != null) {
      _scrollToBlock(block, locator!.within);
      return;
    }
    if (target == null) return;
    _restoring = true;
    var tries = 0;
    void attempt() {
      if (_closed) return;
      if (scroll.hasClients && scroll.position.maxScrollExtent > 0) {
        scroll.jumpTo(scroll.position.maxScrollExtent * target);
        _restoring = false;
        return;
      }
      if (++tries > 20) {
        _restoring = false;
        return;
      }
      Future<void>.delayed(const Duration(milliseconds: 80), attempt);
    }

    attempt();
  }

  bool _isBlockBuilt(int block) {
    final box = blockKeys[block]?.currentContext?.findRenderObject();
    return box is RenderBox && box.attached;
  }

  void _scrollToBlock(int block, double within) {
    final run = ++_jumpRun;
    _restoring = true;
    var tries = 0;
    void finish() {
      _restoring = false;
      _onScroll();
    }

    void step() {
      if (_closed || run != _jumpRun) return;
      if (!scroll.hasClients || scroll.position.maxScrollExtent <= 0) {
        if (++tries > 40) return finish();
        WidgetsBinding.instance.addPostFrameCallback((_) => step());
        return;
      }
      final box = blockKeys[block]?.currentContext?.findRenderObject();
      if (box is RenderBox && box.attached) {
        final viewport = RenderAbstractViewport.of(box);
        final base = viewport.getOffsetToReveal(box, 0.0).offset;
        final target = (base + box.size.height * within).clamp(
          0.0,
          scroll.position.maxScrollExtent,
        );
        scroll.jumpTo(target);
        return finish();
      }
      if (++tries > 60) return finish();
      final max = scroll.position.maxScrollExtent;
      int? nearest;
      for (final e in blockKeys.entries) {
        if (!_isBlockBuilt(e.key)) continue;
        if (nearest == null ||
            (e.key - block).abs() < (nearest - block).abs()) {
          nearest = e.key;
        }
      }
      final view = scroll.position.viewportDimension;
      final double next;
      if (nearest == null) {
        next = max * (block / blocks.length).clamp(0.0, 1.0);
      } else {
        next = scroll.offset + (nearest < block ? view * 0.85 : -view * 0.85);
      }
      scroll.jumpTo(next.clamp(0.0, max));
      WidgetsBinding.instance.addPostFrameCallback((_) => step());
    }

    step();
  }

  NovelLocator? currentLocator() {
    if (original.isEmpty) return null;
    if (paged) {
      final list = pages.value;
      if (list.isEmpty) return null;
      final slice =
          list[page.value.clamp(0, list.length - 1)].slices.firstOrNull;
      if (slice == null) return null;
      final b = original[slice.block.clamp(0, original.length - 1)];
      final length = b is NovelParagraph ? b.text.length : 0;
      return locatorFor(
        original,
        slice.block,
        length == 0 ? 0 : slice.start / length,
      );
    }
    final top = (scrollKey.currentContext?.findRenderObject() as RenderBox?)
        ?.localToGlobal(Offset.zero)
        .dy;
    if (top == null) return null;
    int? found;
    double within = 0;
    for (final e in blockKeys.entries) {
      final box = e.value.currentContext?.findRenderObject();
      if (box is! RenderBox || !box.attached) continue;
      final y = box.localToGlobal(Offset.zero).dy;
      if (y + box.size.height <= top + 1) continue;
      if (found == null || e.key < found) {
        found = e.key;
        within = box.size.height <= 0 ? 0 : ((top - y) / box.size.height);
      }
    }
    if (found == null) return null;
    return locatorFor(original, found, within);
  }

  int get firstVisibleBlock {
    final at = currentLocator()?.block;
    if (at != null) return at;
    if (original.isEmpty) return 0;
    return (fraction.value * original.length).floor().clamp(
      0,
      original.length - 1,
    );
  }

  void jumpToBlock(int block, {double within = 0}) {
    if (block < 0 || block >= blocks.length) return;
    if (paged) {
      _pendingLocator = NovelLocator(block, within, '');
      _applyPending(final_: !paginating.value);
      return;
    }
    _scrollToBlock(block, within);
  }

  final bookmarkTick = 0.live;

  bool _atBookmark(Bookmark b, int at) {
    if (b.unit != unit.number) return false;
    final locator = b.locator;
    if (paged && locator != null && pages.value.isNotEmpty) {
      final block = resolveLocator(original, locator);
      if (block == null) return false;
      return pageOfBlock(pages.value, original, block, locator.within) ==
          page.value;
    }
    return (b.position - at).abs() <= _scale ~/ 100;
  }

  bool get bookmarked {
    bookmarkTick.value;
    page.value;
    final at = (fraction.value * _scale).round();
    return record.bookmarks.any((b) => _atBookmark(b, at));
  }

  void toggleBookmark() {
    final key = unit.number;
    final at = (fraction.value * _scale).round();
    final near = record.bookmarks.where((b) => _atBookmark(b, at)).toList();
    if (near.isNotEmpty) {
      record.bookmarks.removeWhere(near.contains);
    } else {
      record.bookmarks.add(
        Bookmark(
          unit: key,
          position: at,
          total: _scale,
          label: title,
          at: DateTime.now().millisecondsSinceEpoch,
          locator: currentLocator(),
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
    final index = units.indexWhere((u) => u.number == b.unit);
    if (index < 0) return;
    final target = b.position / _scale;
    final locator = b.locator;
    if (index == this.index.value && !loading.value) {
      final block = locator == null ? null : resolveLocator(original, locator);
      if (block != null) {
        jumpToBlock(block, within: locator!.within);
      } else {
        seekTo(target);
      }
    } else {
      unawaited(_open(index, jump: target, at: locator));
    }
  }

  void retry() => unawaited(_open(index.value));

  void openChapter(int target) {
    if (target < 0 || target >= units.length) return;
    unawaited(_open(target));
  }

  void next() => openChapter(nextUnitIndex(units, index.value));

  void previous() => openChapter(index.value - 1);

  void _onScroll() {
    if (!scroll.hasClients || _restoring) return;
    final max = scroll.position.maxScrollExtent;
    fraction.value = max <= 0 ? 1.0 : (scroll.offset / max).clamp(0.0, 1.0);
    _progressChanged();
  }

  void _progressChanged() {
    _saveTimer?.cancel();
    _saveTimer = Timer(const Duration(seconds: 1), _save);
    if (!_marked && fraction.value >= 0.9) {
      _marked = true;
      find<DownloadEngine>().markFinished(
        request.service.id,
        request.media.id,
        unit.key,
      );
      unawaited(_track());
    }
  }

  void seekTo(double value) {
    if (paged) {
      final count = pages.value.length;
      if (count > 0) goToPage((value.clamp(0.0, 1.0) * (count - 1)).round());
      return;
    }
    if (!scroll.hasClients) return;
    scroll.jumpTo(scroll.position.maxScrollExtent * value);
  }

  void pageBy(double direction) {
    if (paged) {
      final count = pages.value.length;
      final target = page.value + (direction >= 0 ? 1 : -1);
      if (target >= count) {
        if (hasNext && !paginating.value) next();
        return;
      }
      if (target < 0) {
        if (hasPrevious && page.value == 0) previous();
        return;
      }
      goToPage(target, animate: true);
      return;
    }
    if (!scroll.hasClients) return;
    final target =
        (scroll.offset + scroll.position.viewportDimension * 0.9 * direction)
            .clamp(0.0, scroll.position.maxScrollExtent);
    unawaited(
      scroll.animateTo(
        target,
        duration: animDuration(220),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  final _unsaved = <String>{};

  void _discard(WatchUnit unit) {
    _unsaved.add(unit.number);
    record.playback.remove(unit.number);
    MediaRecords.save(request.service, request.media);
  }

  void _save() {
    if (_unsaved.contains(unit.number)) return;
    if (original.isEmpty || !settings.saveProgress || isIncognito) return;
    if (paginating.value && paged) return;
    record.playback[unit.number] = Playback(
      position: (fraction.value * _scale).round(),
      duration: _scale,
      locator: _lastLocator = currentLocator() ?? _lastLocator,
    );
    MediaRecords.save(request.service, request.media);
  }

  Future<void> _track() async {
    final media = request.media;
    final mutations = request.service.getMutations;
    if (!record.saveProgress || isIncognito || mutations == null) return;
    final target = unit.value.floor();
    if (target <= 0 || target <= (media.userProgress ?? 0)) return;
    final choice = await confirmTracking(
      context,
      anime: false,
      name: media.mainName,
      service: request.service,
      media: media,
    );
    if (choice == TrackChoice.none) {
      _discard(unit);
      return;
    }
    if (choice == TrackChoice.local) return;
    try {
      await mutations.setProgress(media, target);
      media.userProgress = target;
    } catch (e) {
      logger(
        'Novel progress failed: $e',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
    }
  }

  void updateSettings(void Function(ReaderSettings s) change) {
    final before = settings.translateTo;
    final wasPaged = settings.novelPaged;
    final where = original.isEmpty ? null : currentLocator();
    change(settings);
    if (wasPaged != settings.novelPaged && where != null) {
      _pageRun++;
      pages.value = const [];
      _layout = null;
      _pagedStamp = -1;
      _restoreLocator = where;
      _restore = null;
      if (!settings.novelPaged) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!_closed) _scheduleRestore();
        });
      } else {
        _scheduleRestore();
      }
    }
    if (before != settings.translateTo) {
      translated.value = null;
      _stamp++;
      if (settings.translateTo.isNotEmpty) unawaited(translate());
    }
    if (perTitle.value) {
      record.reader = settings.diff(ReaderPrefs.global.value);
      MediaRecords.save(request.service, request.media);
    } else {
      ReaderPrefs.update(change);
    }
    _applySystem();
    settingsVersion.value++;
    if (autoScrolling.value && !autoPaused.value) {
      setAutoScroll(true, hide: false);
    }
  }

  Object? _countedKey;
  int _words = 0;

  int get wordsLeft {
    final list = blocks;
    final key = (
      list,
      list.length,
      list.isEmpty ? null : list.first,
      list.isEmpty ? null : list.last,
    );
    if (key != _countedKey) {
      _countedKey = key;
      _words = 0;
      for (final b in list) {
        if (b is NovelParagraph) _words += b.text.split(_space).length;
      }
    }
    return (_words * (1 - fraction.value)).round();
  }

  static final _space = RegExp(r'\s+');

  void toggleAutoScroll() => setAutoScroll(!autoScrolling.value);

  void toggleAutoPause() {
    if (!autoScrolling.value) return;
    if (autoPaused.value) {
      setAutoScroll(true, hide: false);
    } else {
      _autoTimer?.cancel();
      autoPaused.value = true;
    }
  }

  void setAutoScroll(bool on, {bool hide = true}) {
    _autoTimer?.cancel();
    autoPaused.value = false;
    autoScrolling.value = on;
    if (!on) return;
    if (hide) controlsVisible.value = false;
    final speed = settings.autoScrollSpeed.clamp(1, 10);
    if (paged) {
      _autoTimer = Timer.periodic(
        Duration(seconds: (13 - speed).clamp(3, 12)),
        (_) {
          if (loading.value || paginating.value) return;
          if (page.value >= pages.value.length - 1) {
            if (settings.autoNext && hasNext) {
              next();
            } else {
              setAutoScroll(false);
            }
            return;
          }
          pageBy(1);
        },
      );
      return;
    }
    const frame = Duration(milliseconds: 16);
    final pixels = (10 + speed * 12) * frame.inMilliseconds / 1000;
    _autoTimer = Timer.periodic(frame, (_) {
      if (!scroll.hasClients || loading.value) return;
      final max = scroll.position.maxScrollExtent;
      if (scroll.offset >= max) {
        if (settings.autoNext && hasNext) {
          next();
        } else {
          setAutoScroll(false);
        }
        return;
      }
      scroll.jumpTo((scroll.offset + pixels).clamp(0.0, max));
    });
  }

  void setPerTitle(bool value) {
    perTitle.value = value;
    if (value) {
      record.reader = settings.diff(ReaderPrefs.global.value);
      if (record.reader.isEmpty) {
        record.reader = {'novelSize': settings.novelSize};
      }
    } else {
      record.reader = {};
      settings = ReaderPrefs.global.value.copy();
    }
    MediaRecords.save(request.service, request.media);
    _applySystem();
    settingsVersion.value++;
  }

  Future<void> translate() async {
    final to = settings.translateTo;
    if (to.isEmpty || original.isEmpty || translating.value) return;
    final run = _run;
    final source = original.toList();
    translating.value = true;
    translateProgress.value = 0;
    try {
      final result = await _translator.translate(
        source,
        to,
        cancelled: () => _closed || run != _run,
        onProgress: (p) => translateProgress.value = p,
      );
      if (_closed || run != _run) return;
      _dropPages();
      translated.value = result;
      _stamp++;
    } catch (e, st) {
      logger(
        'Novel translate failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'READER',
      );
      if (!_closed) snackString(getString.novelTranslateFailed(e.toString()));
    } finally {
      translating.value = false;
    }
  }

  void showOriginal() {
    _dropPages();
    translated.value = null;
    _stamp++;
    stopSpeaking();
  }

  void toggleTranslation() {
    if (translated.value != null) {
      showOriginal();
    } else {
      if (settings.translateTo.isEmpty) {
        snackString(getString.novelTranslateOff);
        return;
      }
      unawaited(translate());
    }
  }

  bool get canSpeak => NovelSpeech.supported;

  void toggleSpeaking() {
    if (speaking.value) {
      stopSpeaking();
    } else {
      unawaited(startSpeaking());
    }
  }

  void pauseSpeaking() {
    if (!speaking.value || speechPaused.value) return;
    _speakRun++;
    speechPaused.value = true;
    unawaited(_speech.stop());
  }

  void resumeSpeaking() {
    if (!speaking.value || !speechPaused.value) return;
    final at = speakingAt.value;
    unawaited(startSpeaking(from: at < 0 ? null : at));
  }

  void toggleSpeechPause() =>
      speechPaused.value ? resumeSpeaking() : pauseSpeaking();

  void restartSpeaking() {
    if (!speaking.value || speechPaused.value) return;
    final at = speakingAt.value;
    unawaited(startSpeaking(from: at < 0 ? null : at));
  }

  void stopSpeaking() {
    _speakRun++;
    speechPaused.value = false;
    speaking.value = false;
    speakingAt.value = -1;
    speakingWord.value = null;
    unawaited(_speech.stop());
  }

  Future<void> startSpeaking({int? from}) async {
    if (!canSpeak || blocks.isEmpty) {
      snackString(getString.novelSpeechUnavailable);
      return;
    }
    final run = ++_speakRun;
    await _speech.stop();
    if (run != _speakRun) return;
    speechPaused.value = false;
    speaking.value = true;
    controlsVisible.value = false;
    var i = from ?? _firstVisible();
    final language = translated.value != null ? settings.translateTo : null;
    while (run == _speakRun && !_closed) {
      final list = blocks;
      while (i < list.length && !_speakable(list[i])) {
        i++;
      }
      if (i >= list.length) {
        if (settings.autoNext && hasNext) {
          speaking.value = false;
          speakingAt.value = -1;
          _resumeSpeakingAfterOpen = true;
          next();
        } else {
          stopSpeaking();
        }
        return;
      }
      speakingAt.value = i;
      _follow(i);
      speakingWord.value = null;
      final ok = await _speech.speak(
        (list[i] as NovelParagraph).text,
        rate: settings.speechRate,
        pitch: settings.speechPitch,
        language: language,
        voice: settings.speechVoice,
        onWord: (a, b) {
          if (run == _speakRun) speakingWord.value = (a, b);
        },
      );
      speakingWord.value = null;
      if (run != _speakRun) return;
      if (!ok) {
        stopSpeaking();
        snackString(getString.novelSpeechUnavailable);
        return;
      }
      i++;
    }
  }

  bool _resumeSpeakingAfterOpen = false;

  void speakStep(int direction) {
    final list = blocks;
    var i = speakingAt.value + direction;
    while (i >= 0 && i < list.length && !_speakable(list[i])) {
      i += direction;
    }
    if (i < 0 || i >= list.length) return;
    unawaited(startSpeaking(from: i));
  }

  int? blockAt(Offset global) {
    if (paged) {
      final slots = pageSlots[page.value];
      if (slots == null) return null;
      for (final e in slots.entries) {
        final box = e.value.key.currentContext?.findRenderObject();
        if (box is! RenderBox || !box.attached) continue;
        if ((box.localToGlobal(Offset.zero) & box.size).contains(global)) {
          return e.key;
        }
      }
      return null;
    }
    for (final e in blockKeys.entries) {
      final box = e.value.currentContext?.findRenderObject();
      if (box is! RenderBox || !box.attached) continue;
      final rect = box.localToGlobal(Offset.zero) & box.size;
      if (rect.contains(global)) return e.key;
    }
    return null;
  }

  bool _speakable(NovelBlock b) =>
      b is NovelParagraph && b.text.trim().isNotEmpty;

  int _firstVisible() {
    final list = blocks;
    if (list.isEmpty) return 0;
    return firstVisibleBlock.clamp(0, list.length - 1);
  }

  void _follow(int i) {
    if (paged) {
      final list = pages.value;
      if (list.isEmpty) return;
      final at = pageOfBlock(list, blocks, i, 0);
      if (at != page.value) goToPage(at, animate: true);
      return;
    }
    final context = blockKeys[i]?.currentContext;
    if (context != null) {
      unawaited(
        Scrollable.ensureVisible(
          context,
          alignment: 0.3,
          duration: animDuration(250),
          curve: Curves.easeOutCubic,
        ),
      );
      return;
    }
    if (!scroll.hasClients) return;
    final max = scroll.position.maxScrollExtent;
    scroll.jumpTo(max * (i / blocks.length).clamp(0.0, 1.0));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final c = blockKeys[i]?.currentContext;
      if (c != null && !_closed) {
        unawaited(
          Scrollable.ensureVisible(
            c,
            alignment: 0.3,
            duration: animDuration(200),
          ),
        );
      }
    });
  }

  void _dropPages() {
    if (!paged || pages.value.isEmpty) return;
    if (_pendingLocator == null && _pendingFraction == null) {
      _pendingLocator = currentLocator();
    }
    _pageRun++;
    pages.value = const [];
    pageSlots.clear();
  }

  void ensurePages(PageLayout layout) {
    if (!paged || loading.value || original.isEmpty) return;
    if (_layout == layout && _pagedStamp == _stamp) return;
    if (_pendingLocator == null &&
        _pendingFraction == null &&
        pages.value.isNotEmpty) {
      _pendingLocator = currentLocator();
    }
    _layout = layout;
    _pagedStamp = _stamp;
    final run = ++_pageRun;
    pages.value = const [];
    pageSlots.clear();
    paginating.value = true;
    unawaited(_paginate(run, layout));
  }

  Future<void> _paginate(int run, PageLayout layout) async {
    final list = blocks.toList();
    final result = await paginate(
      list,
      layout,
      cancelled: () => _closed || run != _pageRun,
      onPartial: (partial) {
        if (run != _pageRun || _closed) return;
        pages.value = partial;
        _applyPending(final_: false);
      },
    );
    if (_closed || run != _pageRun) return;
    pages.value = result;
    paginating.value = false;
    _applyPending(final_: true);
    onPage(page.value.clamp(0, result.length));
  }

  void _applyPending({required bool final_}) {
    final list = pages.value;
    if (list.isEmpty) return;
    var target = -1;
    final locator = _pendingLocator;
    if (locator != null) {
      final block = resolveLocator(original, locator);
      if (block == null) {
        _pendingLocator = null;
        return;
      }
      final covered = final_ || list.last.slices.any((s) => s.block > block);
      if (!covered) return;
      target = pageOfBlock(list, blocks, block, locator.within);
    } else if (_pendingFraction != null) {
      if (!final_) return;
      target = (_pendingFraction! * (list.length - 1)).round();
    } else {
      return;
    }
    _pendingLocator = null;
    _pendingFraction = null;
    goToPage(target);
  }

  void goToPage(int target, {bool animate = false}) {
    final count = pages.value.length;
    if (count == 0) return;
    final to = target.clamp(0, count);
    var tries = 0;
    void go() {
      if (_closed) return;
      if (!pageController.hasClients) {
        if (++tries < 30) {
          WidgetsBinding.instance.addPostFrameCallback((_) => go());
        }
        return;
      }
      if (animate) {
        unawaited(
          pageController.animateToPage(
            to,
            duration: animDuration(260),
            curve: Curves.easeOutCubic,
          ),
        );
      } else {
        pageController.jumpToPage(to);
      }
    }

    page.value = to;
    onPage(to);
    go();
  }

  void onPage(int value) {
    page.value = value;
    final count = pages.value.length;
    if (paginating.value || count == 0) return;
    fraction.value = (value / count).clamp(0.0, 1.0);
    _progressChanged();
  }

  List<NovelHighlight> highlightsOf(int block) {
    final tick = highlightTick.value;
    final key = (unit.number, tick, record.highlights.length);
    if (_highlightIndex == null || _highlightKey != key) {
      final index = <int, List<NovelHighlight>>{};
      for (final h in record.highlights) {
        if (h.unit == unit.number) (index[h.block] ??= []).add(h);
      }
      _highlightIndex = index;
      _highlightKey = key;
    }
    return _highlightIndex![block] ?? const [];
  }

  List<NovelHighlight> get allHighlights {
    highlightTick.value;
    return record.highlights.toList()..sort((a, b) => b.at.compareTo(a.at));
  }

  void _saveHighlights() {
    MediaRecords.save(request.service, request.media);
    highlightTick.value++;
  }

  NovelHighlight? addHighlightFromSelection({int color = 0}) {
    if (translated.value != null || original.isEmpty) {
      snackString(getString.novelHighlightFailed);
      return null;
    }
    final ranges = locateSelection(
      original,
      selectedText,
      near: firstVisibleBlock,
    );
    if (ranges.isEmpty) {
      snackString(getString.novelHighlightFailed);
      return null;
    }
    final now = DateTime.now().microsecondsSinceEpoch;
    NovelHighlight? first;
    for (var i = 0; i < ranges.length; i++) {
      final r = ranges[i];
      final b = original[r.block];
      if (b is! NovelParagraph || r.end <= r.start) continue;
      record.highlights.removeWhere(
        (h) =>
            h.unit == unit.number &&
            h.block == r.block &&
            h.start >= r.start &&
            h.end <= r.end &&
            h.note.isEmpty,
      );
      final h = NovelHighlight(
        id: '$now-$i',
        unit: unit.number,
        block: r.block,
        start: r.start,
        end: r.end,
        text: b.text.substring(r.start, r.end),
        color: color,
        at: now,
      );
      record.highlights.add(h);
      first ??= h;
    }
    _saveHighlights();
    return first;
  }

  void updateHighlight(NovelHighlight h, {int? color, String? note}) {
    if (color != null) h.color = color;
    if (note != null) h.note = note.trim();
    _saveHighlights();
  }

  void removeHighlight(NovelHighlight h) {
    record.highlights.remove(h);
    _saveHighlights();
  }

  void openHighlight(NovelHighlight h) {
    final list = units.indexWhere((u) => u.number == h.unit);
    if (list < 0) return;
    final b = h.block < original.length ? original[h.block] : null;
    final length = b is NovelParagraph ? b.text.length : 0;
    final within = length == 0 ? 0.0 : h.start / length;
    if (list == index.value && !loading.value) {
      jumpToBlock(h.block, within: within);
    } else {
      unawaited(
        _open(
          list,
          at: NovelLocator(h.block, within, b == null ? '' : snippetOf(b)),
        ),
      );
    }
  }

  int? charAt(int block, Offset global) {
    PageSlot? slot;
    if (paged) {
      slot = pageSlots[page.value]?[block];
    } else {
      final key = blockKeys[block];
      final b = block < original.length ? original[block] : null;
      if (key != null) {
        final prefix =
            settings.novelIndent && b is NovelParagraph && b.heading == 0
            ? novelIndent.length
            : 0;
        slot = (key: key, start: 0, prefix: prefix);
      }
    }
    final root = slot?.key.currentContext?.findRenderObject();
    if (slot == null || root == null) return null;
    RenderParagraph? paragraph;
    void visit(RenderObject o) {
      if (paragraph != null) return;
      if (o is RenderParagraph) {
        paragraph = o;
        return;
      }
      o.visitChildren(visit);
    }

    visit(root);
    final found = paragraph;
    if (found == null) return null;
    final offset = found
        .getPositionForOffset(found.globalToLocal(global))
        .offset;
    return (offset - slot.prefix + slot.start).clamp(0, 1 << 30);
  }

  NovelHighlight? highlightAt(Offset global) {
    if (translated.value != null) return null;
    final block = blockAt(global);
    if (block == null) return null;
    final list = highlightsOf(block);
    if (list.isEmpty) return null;
    final char = charAt(block, global);
    if (char == null) return null;
    return list.where((h) => char >= h.start && char < h.end).firstOrNull;
  }

  void search(String query) {
    searchQuery.value = query;
    searchMatches.value = searchBlocks(blocks, query);
    searchIndex.value = -1;
  }

  void openMatch(int i) {
    final list = searchMatches.value;
    if (i < 0 || i >= list.length) return;
    final m = list[i];
    searchIndex.value = i;
    final b = blocks[m.block];
    final length = b is NovelParagraph ? b.text.length : 0;
    jumpToBlock(m.block, within: length == 0 ? 0 : m.start / length);
  }

  void stepMatch(int direction) {
    final count = searchMatches.value.length;
    if (count == 0) return;
    final from = searchIndex.value;
    openMatch(
      from < 0 ? (direction > 0 ? 0 : count - 1) : (from + direction) % count,
    );
  }

  void clearSearch() {
    searchQuery.value = '';
    searchMatches.value = const [];
    searchIndex.value = -1;
  }

  List<NovelTocEntry> get toc => buildToc(original);

  void toggleControls() => controlsVisible.value = !controlsVisible.value;
}
