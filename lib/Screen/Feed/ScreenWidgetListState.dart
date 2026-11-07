import 'dart:async';

import 'package:collection/collection.dart';

import '../../Logger.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ServiceScreens.dart';
import '../../Core/Services/SectionCache.dart';
import '../../Core/State/State.dart';
import '../../Utils/Functions/RefreshController.dart' show RefreshController;
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Shelf/MediaSection.dart';

class ScreenWidgetListState extends ScreenState {
  final Stream<List<ScreenWidget>> Function() loader;
  final String? cacheId;
  final Stream<Object?>? reloadOn;
  final int Function(String title)? sectionTypeOf;
  final bool Function(String title)? isHiddenFn;
  final List<FeedChip> chips;
  final Future<List<Media>?> Function(FeedChip chip)? onChipFn;
  final bool Function() isVisible;
  final bool verticalTail;

  ScreenWidgetListState({
    required this.loader,
    required this.cacheId,
    required this.reloadOn,
    required this.sectionTypeOf,
    required this.isHiddenFn,
    required this.chips,
    required this.onChipFn,
    required this.isVisible,
    required this.verticalTail,
  });

  bool dirty = false;
  bool tailReady = false;

  int typeFor(String title) {
    final raw = types[title] ?? 0;
    if (raw == 1) return 1;
    if (!verticalTail || !tailReady) return 0;
    final last = order.lastWhereOrNull((t) => (types[t] ?? 0) != 1);
    if (title != last) return 0;
    return raw == 3 ? 3 : 2;
  }

  late final SectionCache? cache = cacheId == null
      ? null
      : SectionCache(cacheId!);

  @override
  void onInit() {
    unawaited(paintCached());
    refresh();
    reloadSub = reloadOn?.listen((_) {
      if (isVisible()) {
        unawaited(refresh());
      } else {
        dirty = true;
      }
    });

    final key = cacheId;
    if (key != null) {
      final flag = find<RefreshController>().getOrPut(key, false);
      signalSub = onChange(flag, (v) {
        if (!v) return;
        flag.value = false;
        if (isVisible()) {
          refresh();
        } else {
          dirty = true;
        }
      });
    }
  }

  void flushDirty() {
    if (!dirty || !isVisible()) return;
    dirty = false;
    unawaited(refresh());
  }

  @override
  void onClose() {
    composeTimer?.cancel();
    cacheTimer?.cancel();
    reloadSub?.cancel();
    signalSub?.dispose();
    scroll.dispose();
  }

  final current = <ScreenWidget>[].liveList;
  final error = Live<String?>(null);
  final scroll = ScrollController();
  final chip = Live<String?>(null);
  final chipMedia = Live<List<Media>?>(null);
  final chipLoading = false.live;
  final showHidden = false.live;
  String? firstTitle;

  final seen = <String>{};
  final mediaByTitle = <String, List<Media>>{};
  final pages = <String, int>{};
  final sectionBuilders = <String, MediaSection Function(MediaSectionData)>{};
  final types = <String, int>{};
  final loadMoreFns = <String, Future<List<Media>?> Function(int)>{};
  final tailDone = <String>{};
  bool tailLoading = false;
  String? tailTitle;

  StreamSubscription<Object?>? reloadSub;
  Disposer? signalSub;
  bool refreshing = false;
  bool queued = false;
  final loaded = false.live;

  final order = <String>[];
  Timer? cacheTimer;
  Timer? composeTimer;
  List<ScreenWidget>? pendingCompose;

  Future<void> paintCached() async {
    final cached = await cache?.read();
    if (!mounted || cached == null || cached.isEmpty || loaded.value) return;
    tailReady = true;
    mediaByTitle.addAll(cached);
    order.addAll(cached.keys);
    for (final title in cached.keys) {
      types[title] = sectionTypeOf?.call(title) ?? 0;
    }
    current.value = [
      for (final e in cached.entries)
        ScreenWidget.media(e.key, e.value, sectionType: typeFor(e.key)),
    ];
  }

  Future<void> pull() async {
    SectionReload.manual = true;
    try {
      await refresh();
    } finally {
      SectionReload.manual = false;
    }
  }

  Future<void> refresh() async {
    if (refreshing) {
      queued = true;
      return;
    }
    refreshing = true;
    error.value = null;
    List<ScreenWidget>? last;
    try {
      await for (final list in loader()) {
        last = list;
        patch(list);
        loaded.value = true;
      }
      if (last != null) prune(last);
    } catch (e, st) {
      logger(
        'Feed ${cacheId ?? ''} load failed: $e\n$st',
        logLevel: LogLevel.error,
      );
      if (current.isEmpty) error.value = e.toString();
    } finally {
      refreshing = false;
      if (queued && mounted) {
        queued = false;
        unawaited(refresh());
      }
    }
  }

  void patch(List<ScreenWidget> list) {
    String? previous;
    for (final item in list) {
      if (!item.isMedia) continue;
      final title = item.title!;
      if (!order.contains(title)) {
        final at = previous == null ? -1 : order.indexOf(previous);
        order.insert(at < 0 ? 0 : at + 1, title);
      }
      previous = title;
      final incoming = item.media!;
      mediaByTitle[title] = incoming;
      pages.remove(title);
      tailDone.remove(title);
      remember(loadMoreFns, title, item.onLoadMore);
      remember(sectionBuilders, title, item.section);
      types[title] = item.sectionType;
    }
    composeThrottled(list);
    cacheTimer?.cancel();
    cacheTimer = Timer(const Duration(milliseconds: 900), () {
      if (mounted && mediaByTitle.isNotEmpty) {
        unawaited(cache?.write(mediaByTitle));
      }
    });
  }

  void remember<T>(Map<String, T> map, String title, T? value) {
    if (value == null) {
      map.remove(title);
    } else {
      map[title] = value;
    }
  }

  void prune(List<ScreenWidget> finalList) {
    tailReady = true;
    final keep = {
      for (final item in finalList)
        if (item.isMedia) item.title!,
    };
    order
      ..clear()
      ..addAll([
        for (final item in finalList)
          if (item.isMedia) item.title!,
      ]);
    mediaByTitle.removeWhere((t, _) => !keep.contains(t));
    loadMoreFns.removeWhere((t, _) => !keep.contains(t));
    sectionBuilders.removeWhere((t, _) => !keep.contains(t));
    types.removeWhere((t, _) => !keep.contains(t));
    composeTimer?.cancel();
    composeTimer = null;
    pendingCompose = null;
    cacheTimer?.cancel();
    compose(finalList);
    if (mediaByTitle.isNotEmpty) unawaited(cache?.write(mediaByTitle));
  }

  void composeThrottled(List<ScreenWidget> latest) {
    if (current.isEmpty) {
      compose(latest);
      return;
    }
    pendingCompose = latest;
    composeTimer ??= Timer(const Duration(milliseconds: 120), () {
      composeTimer = null;
      final pending = pendingCompose;
      pendingCompose = null;
      if (mounted && pending != null) compose(pending);
    });
  }

  void compose(List<ScreenWidget> latest) {
    current.value = [
      for (final item in latest)
        if (!item.isMedia) item,
      for (final title in order)
        ScreenWidget.media(
          title,
          mediaByTitle[title]!,
          sectionType: typeFor(title),
        ),
    ];
  }

  Future<void> loadTail(String title) async {
    if (tailLoading || tailDone.contains(title)) return;
    tailLoading = true;
    try {
      final more = await loadMoreSection(title);
      if (!mounted) return;
      final known = {
        for (final m in mediaByTitle[title] ?? const <Media>[]) m.id,
      };
      final fresh = [
        for (final m in more ?? const <Media>[])
          if (known.add(m.id)) m,
      ];
      if (fresh.isEmpty) {
        tailDone.add(title);
      } else {
        mediaByTitle[title] = [...?mediaByTitle[title], ...fresh];
      }
      compose(current.toList());
    } finally {
      tailLoading = false;
    }
  }

  Future<List<Media>?> loadMoreSection(String title) async {
    final fn = loadMoreFns[title];
    if (fn == null) return null;
    final page = (pages[title] ?? 1) + 1;
    pages[title] = page;
    try {
      final more = await fn(page);
      return more == null || more.isEmpty ? null : more;
    } catch (e, st) {
      logError('ScreenWidgetListState', e, st);
      if (pages[title] == page) pages[title] = page - 1;
      rethrow;
    }
  }

  List<ScreenWidget> visible(List<ScreenWidget> list) {
    final visible = [
      for (final e in list)
        if (!e.isCarousel && (showHidden.value || !isHidden(e.title))) e,
    ];
    final shown = [
      ...visible.where((e) => isHidden(e.title)),
      ...visible.where((e) => !isHidden(e.title)),
    ];
    firstTitle = shown.firstWhereOrNull((e) => e.title != null)?.title;
    return shown;
  }

  bool isPaged(ScreenWidget item) =>
      loaded.value &&
      item.isMedia &&
      item.isRows &&
      loadMoreFns[item.title] != null;

  bool isHidden(String? title) =>
      title != null && (isHiddenFn?.call(title) ?? false);

  void toggleHidden() {
    showHidden.value = !showHidden.value;
    unawaited(HapticFeedback.mediumImpact());
  }

  VoidCallback? titleLongPress(String title) {
    if (!current.any((e) => isHidden(e.title))) return null;
    return title == firstTitle || isHidden(title) ? toggleHidden : null;
  }

  Future<void> selectChip(String? id) async {
    final onChip = onChipFn;
    if (onChip == null) return;
    if (id == null || id == chip.value) {
      chip.value = null;
      chipMedia.value = null;
      return;
    }
    chip.value = id;
    chipLoading.value = true;
    try {
      final picked = chips.firstWhere((c) => c.id == id);
      final media = await onChip(picked);
      if (chip.value == id) chipMedia.value = media;
    } catch (e, st) {
      logError('ScreenWidgetListState', e, st);
      if (chip.value == id) chipMedia.value = null;
    } finally {
      if (chip.value == id) chipLoading.value = false;
    }
  }

  bool _scrollingDown = true;

  bool onScroll(ScrollNotification n) {
    if (n is ScrollUpdateNotification && n.depth == 0) {
      final delta = n.scrollDelta ?? 0;
      if (delta != 0) _scrollingDown = delta > 0;
    }
    final title = tailTitle;
    if (title != null &&
        _scrollingDown &&
        n.depth == 0 &&
        n.metrics.extentAfter < 600 &&
        (n is ScrollUpdateNotification || n is ScrollEndNotification)) {
      unawaited(loadTail(title));
    }
    return false;
  }
}
