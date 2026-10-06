import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ServiceScreens.dart';
import '../../Core/Services/SectionCache.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/RefreshController.dart'
    show RefreshController, routeObserver;
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../Widgets/ScreenWidgetView.dart';

class ScreenWidgetList extends StatefulWidget {
  final Stream<List<ScreenWidget>> Function() loader;
  final String? cacheId;
  final Widget? header;
  final void Function(Media media, String? heroTag)? onMediaTap;
  final void Function(Media media)? onMediaLongPress;
  final Stream<Object?>? reloadOn;
  final int Function(String title)? sectionTypeOf;
  final bool Function(String title)? isHidden;
  final List<FeedChip> chips;
  final Future<List<Media>?> Function(FeedChip chip)? onChip;

  const ScreenWidgetList({
    super.key,
    required this.loader,
    this.cacheId,
    this.header,
    this.onMediaTap,
    this.onMediaLongPress,
    this.reloadOn,
    this.sectionTypeOf,
    this.isHidden,
    this.chips = const [],
    this.onChip,
  });

  @override
  State<ScreenWidgetList> createState() => _ScreenWidgetListState();
}

class _ScreenWidgetListState extends State<ScreenWidgetList>
    with AutomaticKeepAliveClientMixin, RouteAware {
  final _current = <ScreenWidget>[].obs;
  final _error = RxnString();
  final _scroll = ScrollController();
  final _showTop = false.obs;
  final _chip = RxnString();
  final _chipMedia = Rxn<List<Media>>();
  final _chipLoading = false.obs;
  final _showHidden = false.obs;
  String? _firstTitle;

  final _seen = <String>{};
  final _mediaByTitle = <String, List<Media>>{};
  final _pages = <String, int>{};
  final _sectionBuilders = <String, MediaSection Function(MediaSectionData)>{};
  final _types = <String, int>{};
  final _loadMoreFns = <String, Future<List<Media>?> Function(int)>{};
  final _tailDone = <String>{};
  bool _tailLoading = false;
  String? _tailTitle;

  String get _heroPrefix => widget.cacheId ?? identityHashCode(this).toString();

  late final SectionCache? _cache = widget.cacheId == null
      ? null
      : SectionCache(widget.cacheId!);

  StreamSubscription<Object?>? _reloadSub;
  Worker? _signalWorker;
  bool _refreshing = false;
  bool _queued = false;
  final _loaded = false.obs;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    unawaited(_paintCached());
    _refresh();
    _reloadSub = widget.reloadOn?.listen((_) => _refresh());

    final key = widget.cacheId;
    if (key != null) {
      final flag = find<RefreshController>().getOrPut(key, false);
      _signalWorker = ever<bool>(flag, (v) {
        if (!v) return;
        flag.value = false;
        if (_visibleNow) {
          _refresh();
        } else {
          _dirty = true;
        }
      });
    }
  }

  bool _dirty = false;
  ValueListenable<bool>? _tickers;
  ModalRoute<void>? _route;

  bool get _visibleNow =>
      mounted && (_tickers?.value ?? true) && (_route?.isCurrent ?? true);

  void _flushDirty() {
    if (!_dirty || !_visibleNow) return;
    _dirty = false;
    unawaited(_refresh());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final tickers = TickerMode.getNotifier(context);
    if (!identical(tickers, _tickers)) {
      _tickers?.removeListener(_flushDirty);
      _tickers = tickers..addListener(_flushDirty);
    }
    final route = ModalRoute.of(context);
    if (route != null && !identical(route, _route)) {
      routeObserver.unsubscribe(this);
      _route = route;
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void didPopNext() => _flushDirty();

  Future<void> _paintCached() async {
    final cached = await _cache?.read();
    if (!mounted || cached == null || cached.isEmpty || _loaded.value) return;
    _mediaByTitle.addAll(cached);
    _order.addAll(cached.keys);
    for (final title in cached.keys) {
      _types[title] = widget.sectionTypeOf?.call(title) ?? 0;
    }
    _current.value = [
      for (final e in cached.entries)
        ScreenWidget.media(e.key, e.value, sectionType: _types[e.key] ?? 0),
    ];
  }

  @override
  void dispose() {
    _composeTimer?.cancel();
    _cacheTimer?.cancel();
    _reloadSub?.cancel();
    _signalWorker?.dispose();
    _scroll.dispose();
    _tickers?.removeListener(_flushDirty);
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  final _order = <String>[];

  Future<void> _refresh() async {
    if (_refreshing) {
      _queued = true;
      return;
    }
    _refreshing = true;
    _error.value = null;
    List<ScreenWidget>? last;
    try {
      await for (final list in widget.loader()) {
        last = list;
        _patch(list);
        _loaded.value = true;
      }
      if (last != null) _prune(last);
    } catch (e) {
      if (_current.isEmpty) _error.value = e.toString();
    } finally {
      _refreshing = false;
      if (_queued && mounted) {
        _queued = false;
        unawaited(_refresh());
      }
    }
  }

  void _patch(List<ScreenWidget> list) {
    String? previous;
    for (final item in list) {
      if (!item.isMedia) continue;
      final title = item.title!;
      if (!_order.contains(title)) {
        final at = previous == null ? -1 : _order.indexOf(previous);
        _order.insert(at < 0 ? 0 : at + 1, title);
      }
      previous = title;
      final incoming = item.media!;
      _mediaByTitle[title] = incoming;
      _pages.remove(title);
      _tailDone.remove(title);
      _remember(_loadMoreFns, title, item.onLoadMore);
      _remember(_sectionBuilders, title, item.section);
      _types[title] = item.sectionType;
    }
    _composeThrottled(list);
    _cacheTimer?.cancel();
    _cacheTimer = Timer(const Duration(milliseconds: 900), () {
      if (mounted && _mediaByTitle.isNotEmpty) {
        unawaited(_cache?.write(_mediaByTitle));
      }
    });
  }

  void _remember<T>(Map<String, T> map, String title, T? value) {
    if (value == null) {
      map.remove(title);
    } else {
      map[title] = value;
    }
  }

  void _prune(List<ScreenWidget> finalList) {
    final keep = {
      for (final item in finalList)
        if (item.isMedia) item.title!,
    };
    _order
      ..clear()
      ..addAll([
        for (final item in finalList)
          if (item.isMedia) item.title!,
      ]);
    _mediaByTitle.removeWhere((t, _) => !keep.contains(t));
    _loadMoreFns.removeWhere((t, _) => !keep.contains(t));
    _sectionBuilders.removeWhere((t, _) => !keep.contains(t));
    _types.removeWhere((t, _) => !keep.contains(t));
    _composeTimer?.cancel();
    _composeTimer = null;
    _pendingCompose = null;
    _cacheTimer?.cancel();
    _compose(finalList);
    if (_mediaByTitle.isNotEmpty) unawaited(_cache?.write(_mediaByTitle));
  }

  Timer? _cacheTimer;
  Timer? _composeTimer;
  List<ScreenWidget>? _pendingCompose;

  void _composeThrottled(List<ScreenWidget> latest) {
    if (_current.isEmpty) {
      _compose(latest);
      return;
    }
    _pendingCompose = latest;
    _composeTimer ??= Timer(const Duration(milliseconds: 120), () {
      _composeTimer = null;
      final pending = _pendingCompose;
      _pendingCompose = null;
      if (mounted && pending != null) _compose(pending);
    });
  }

  void _compose(List<ScreenWidget> latest) {
    _current.value = [
      for (final item in latest)
        if (!item.isMedia) item,
      for (final title in _order)
        ScreenWidget.media(
          title,
          _mediaByTitle[title]!,
          sectionType: _types[title] ?? 0,
        ),
    ];
  }

  Future<void> _loadTail(String title) async {
    if (_tailLoading || _tailDone.contains(title)) return;
    _tailLoading = true;
    try {
      final more = await _loadMoreSection(title);
      if (!mounted) return;
      final known = {
        for (final m in _mediaByTitle[title] ?? const <Media>[]) m.id,
      };
      final fresh = [
        for (final m in more ?? const <Media>[])
          if (known.add(m.id)) m,
      ];
      if (fresh.isEmpty) {
        _tailDone.add(title);
      } else {
        _mediaByTitle[title] = [...?_mediaByTitle[title], ...fresh];
      }
      _compose(_current.toList());
    } finally {
      _tailLoading = false;
    }
  }

  Future<List<Media>?> _loadMoreSection(String title) async {
    final fn = _loadMoreFns[title];
    if (fn == null) return null;
    final page = (_pages[title] ?? 1) + 1;
    final more = await fn(page);
    if (more == null || more.isEmpty) return null;
    _pages[title] = page;
    return more;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(children: [_list(context), _topButton(context)]);
  }

  Widget _topButton(BuildContext context) {
    return Positioned(
      bottom: context.isPhone ? 72.0 + 32.bottomBar() : 64,
      left: 0,
      right: 0,
      child: Obx(
        () => _showTop.value
            ? Center(
                child: ThemedContainer(
                  borderRadius: BorderRadius.circular(64),
                  padding: const EdgeInsets.all(4),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_upward_rounded),
                    onPressed: () => _scroll.animateTo(
                      0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }

  Widget _list(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: Obx(() {
        final list = _current;
        final empty = list.isEmpty;
        final showError = _error.value != null && empty;
        final showEmpty = empty && !showError && _loaded.value;
        final showSkeleton = empty && !showError && !showEmpty;

        _tailTitle = null;
        return NotificationListener<ScrollNotification>(
          onNotification: _onScroll,
          child: CustomScrollConfig(
            context,
            controller: _scroll,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              if (widget.header != null)
                SliverToBoxAdapter(child: widget.header!),
              for (final item in list.where((e) => e.isCarousel))
                if (item.media!.isNotEmpty)
                  SliverToBoxAdapter(
                    key: ValueKey('spotlight-${item.title}'),
                    child: _chipLoading.value
                        ? const MediaSection(
                            data: MediaSectionData(type: 1, loading: true),
                          )
                        : MediaSection(
                            data: MediaSectionData(
                              type: 1,
                              title: item.title,
                              mediaList: (_chipMedia.value ?? item.media!)
                                  .take(10)
                                  .toList(),
                              heroPrefix: _heroPrefix,
                              onMediaTap: (_, _, m, tag) =>
                                  widget.onMediaTap?.call(m, tag),
                              onMediaLongPress: widget.onMediaLongPress == null
                                  ? null
                                  : (_, _, m) => widget.onMediaLongPress!(m),
                            ),
                          ),
                  ),
              SliverToBoxAdapter(child: _chipRow()),
              const SliverToBoxAdapter(child: SizedBox(height: 8)),
              if (showSkeleton)
                for (var i = 0; i < 4; i++)
                  SliverToBoxAdapter(
                    key: ValueKey('skeleton-$i'),
                    child: const MediaSection(data: MediaSectionData.loading()),
                  )
              else if (showError)
                SliverToBoxAdapter(child: _errorBox(_error.value!))
              else if (showEmpty)
                SliverToBoxAdapter(child: _emptyBox())
              else
                ..._sections(_visible(list)),
              SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
            ],
          ),
        );
      }),
    );
  }

  List<ScreenWidget> _visible(List<ScreenWidget> list) {
    final visible = [
      for (final e in list)
        if (!e.isCarousel && (_showHidden.value || !_isHidden(e.title))) e,
    ];
    final shown = [
      ...visible.where((e) => _isHidden(e.title)),
      ...visible.where((e) => !_isHidden(e.title)),
    ];
    _firstTitle = shown.firstWhereOrNull((e) => e.title != null)?.title;
    return shown;
  }

  bool _isPaged(ScreenWidget item) =>
      _loaded.value &&
      item.isMedia &&
      item.isRows &&
      _loadMoreFns[item.title] != null;

  List<Widget> _sections(List<ScreenWidget> sections) {
    final out = <Widget>[];
    var chunk = <ScreenWidget>[];
    void flush() {
      if (chunk.isEmpty) return;
      out.add(_sectionList(chunk));
      chunk = [];
    }

    for (final item in sections) {
      if (_isPaged(item)) {
        flush();
        out.addAll(_paged(item));
      } else {
        chunk.add(item);
      }
    }
    flush();
    return out;
  }

  List<Widget> _paged(ScreenWidget item) {
    final title = item.title!;
    final media = item.media!;
    final banner = item.sectionType == 3;
    _tailTitle = _tailDone.contains(title) ? null : title;
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapSm,
          ),
          child: SectionHeader(
            title: title,
            onLongPress: _titleLongPress(title),
          ),
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
        sliver: SliverList.separated(
          itemCount: media.length,
          separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
          itemBuilder: (context, i) {
            final m = media[i];
            final tag = 'row:$_heroPrefix:$title:${m.id}';
            void tap() => widget.onMediaTap?.call(m, tag);
            void hold() => widget.onMediaLongPress?.call(m);
            return banner
                ? MediaBannerTile(
                    media: m,
                    tag: tag,
                    onTap: tap,
                    onLongPress: hold,
                  )
                : MediaListTile(
                    media: m,
                    tag: tag,
                    onTap: tap,
                    onLongPress: hold,
                  );
          },
        ),
      ),
      if (_tailTitle == title)
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(Dimens.gapLg),
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        ),
    ];
  }

  bool _isHidden(String? title) =>
      title != null && (widget.isHidden?.call(title) ?? false);

  void _toggleHidden() {
    _showHidden.value = !_showHidden.value;
    unawaited(HapticFeedback.mediumImpact());
  }

  VoidCallback? _titleLongPress(String title) {
    if (!_current.any((e) => _isHidden(e.title))) return null;
    return title == _firstTitle || _isHidden(title) ? _toggleHidden : null;
  }

  Future<void> _selectChip(String? id) async {
    final onChip = widget.onChip;
    if (onChip == null) return;
    if (id == null || id == _chip.value) {
      _chip.value = null;
      _chipMedia.value = null;
      return;
    }
    _chip.value = id;
    _chipLoading.value = true;
    try {
      final chip = widget.chips.firstWhere((c) => c.id == id);
      final media = await onChip(chip);
      if (_chip.value == id) _chipMedia.value = media;
    } catch (_) {
      if (_chip.value == id) _chipMedia.value = null;
    } finally {
      if (_chip.value == id) _chipLoading.value = false;
    }
  }

  Widget _chipRow() {
    if (widget.chips.isEmpty || widget.onChip == null) {
      return const SizedBox.shrink();
    }
    return Obx(
      () => Padding(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          0,
        ),
        child: AppChoiceChips<String?>(
          value: _chip.value,
          onChanged: _selectChip,
          options: [
            for (final c in widget.chips)
              AppSegment<String?>(c.id, label: c.label),
          ],
        ),
      ),
    );
  }

  bool _onScroll(ScrollNotification n) {
    if (n.depth == 0 && n.metrics.axis == Axis.vertical) {
      _showTop.value = n.metrics.pixels > 700;
    }
    final title = _tailTitle;
    if (title != null &&
        n.depth == 0 &&
        n.metrics.extentAfter < 600 &&
        (n is ScrollUpdateNotification || n is ScrollEndNotification)) {
      unawaited(_loadTail(title));
    }
    return false;
  }

  Widget _sectionList(List<ScreenWidget> sections) {
    String keyOf(int i) =>
        sections[i].isMedia ? 'section-${sections[i].title}' : 'extra-$i';
    final indexByKey = {for (var i = 0; i < sections.length; i++) keyOf(i): i};
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, i) {
          final item = sections[i];
          return item.isMedia
              ? _section(i, item)
              : KeyedSubtree(
                  key: ValueKey(keyOf(i)),
                  child: ScreenWidgetView(item),
                );
        },
        childCount: sections.length,
        findChildIndexCallback: (key) =>
            key is ValueKey<String> ? indexByKey[key.value] : null,
      ),
    );
  }

  Widget _section(int index, ScreenWidget item) {
    final title = item.title!;
    final firstSeen = _seen.add(title) && index < 4;
    final data = MediaSectionData(
      type: item.sectionType,
      title: title,
      mediaList: item.media,
      heroPrefix: _heroPrefix,
      onMediaTap: (ctx, idx, m, tag) => widget.onMediaTap?.call(m, tag),
      onMediaLongPress: widget.onMediaLongPress == null
          ? null
          : (ctx, idx, m) => widget.onMediaLongPress!(m),
      onTitleLongPress: _titleLongPress(title),
      onLoadMore: _loadMoreFns[title] == null
          ? null
          : () => _loadMoreSection(title),
    );
    final section =
        _sectionBuilders[title]?.call(data) ?? MediaSection(data: data);
    return KeyedSubtree(
      key: ValueKey('section-$title'),
      child: section,
    ).animateFadeUp(
      begin: firstSeen ? 0.15 : 0.0,
      delay: firstSeen ? Duration(milliseconds: 40 * index) : Duration.zero,
      duration: firstSeen ? 400 : 0,
    );
  }

  Widget _emptyBox() => _messageCard(
    icon: Icons.auto_awesome_motion_rounded,
    title: 'Nothing to show yet',
    body: 'Add some titles to your list and they\'ll appear here.',
    action: 'Refresh',
  );

  Widget _errorBox(String text) => _messageCard(
    icon: Icons.cloud_off_rounded,
    title: 'Couldn\'t load',
    body: text,
    action: 'Retry',
  );

  Widget _messageCard({
    required IconData icon,
    required String title,
    required String body,
    required String action,
  }) => Padding(
    padding: EdgeInsets.fromLTRB(
      Dimens.gap,
      Dimens.gapXl,
      Dimens.gap,
      Dimens.gap,
    ),
    child: SectionCard(
      child: Column(
        children: [
          Icon(icon, size: 42, color: context.colorScheme.onSurfaceVariant),
          SizedBox(height: Dimens.gap),
          Text(title, style: context.textTheme.titleMedium),
          SizedBox(height: Dimens.gapXs),
          Text(
            body,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
          SizedBox(height: Dimens.gap),
          FilledButton.tonal(onPressed: _refresh, child: Text(action)),
        ],
      ),
    ),
  );
}
