import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ScreenWidget.dart';
import '../../Core/Services/SectionCache.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/RefreshController.dart' show RefreshController;
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../Widgets/ScreenWidgetView.dart';
import 'Widgets/StackedCarousel.dart';

class ScreenWidgetList extends StatefulWidget {
  final Stream<List<ScreenWidget>> Function() loader;
  final String? cacheId;
  final Widget? header;
  final void Function(Media media, String? heroTag)? onMediaTap;
  final Stream<Object?>? reloadOn;

  const ScreenWidgetList({
    super.key,
    required this.loader,
    this.cacheId,
    this.header,
    this.onMediaTap,
    this.reloadOn,
  });

  @override
  State<ScreenWidgetList> createState() => _ScreenWidgetListState();
}

class _ScreenWidgetListState extends State<ScreenWidgetList>
    with AutomaticKeepAliveClientMixin {
  final _current = <ScreenWidget>[].obs;
  final _error = RxnString();

  final _seen = <String>{};
  final _mediaByTitle = <String, List<Media>>{};
  final _pages = <String, int>{};
  final _sectionBuilders = <String, MediaSection Function(MediaSectionData)>{};
  final _spotlight = <String>{};
  final _loadMoreFns = <String, Future<List<Media>?> Function(int)>{};

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
        _refresh();
      });
    }
  }

  Future<void> _paintCached() async {
    final cached = await _cache?.read();
    if (!mounted || cached == null || cached.isEmpty || _loaded.value) return;
    _mediaByTitle.addAll(cached);
    _order.addAll(cached.keys);
    _current.value = [
      for (final e in cached.entries) ScreenWidget.media(e.key, e.value),
    ];
  }

  @override
  void dispose() {
    _composeTimer?.cancel();
    _cacheTimer?.cancel();
    _reloadSub?.cancel();
    _signalWorker?.dispose();
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
      _remember(_loadMoreFns, title, item.onLoadMore);
      _remember(_sectionBuilders, title, item.section);
      if (item.spotlight) {
        _spotlight.add(title);
      } else {
        _spotlight.remove(title);
      }
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
    _spotlight.removeWhere((t) => !keep.contains(t));
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
          spotlight: _spotlight.contains(title),
        ),
    ];
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
    return RefreshIndicator(
      onRefresh: _refresh,
      child: Obx(() {
        final list = _current;
        final empty = list.isEmpty;
        final showError = _error.value != null && empty;
        final showEmpty = empty && !showError && _loaded.value;
        final showSkeleton = empty && !showError && !showEmpty;

        return CustomScrollConfig(
          context,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            if (widget.header != null)
              SliverToBoxAdapter(child: widget.header!),
            for (final item in list.where((e) => e.spotlight))
              if (item.media!.isNotEmpty)
                SliverToBoxAdapter(
                  key: ValueKey('spotlight-${item.title}'),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: Dimens.gapSm),
                    child: StackedCarousel(
                      items: item.media!.take(10).toList(),
                      heroPrefix: _heroPrefix,
                      onTap: (m, tag) => widget.onMediaTap?.call(m, tag),
                    ),
                  ),
                ),
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
              _sectionList(list.where((e) => !e.spotlight).toList()),
            SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
          ],
        );
      }),
    );
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
      type: 0,
      title: title,
      mediaList: item.media,
      heroPrefix: _heroPrefix,
      onMediaTap: (ctx, idx, m, tag) => widget.onMediaTap?.call(m, tag),
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
