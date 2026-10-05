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

class HomeScreenList extends StatefulWidget {
  final Stream<List<ScreenWidget>> Function() loader;
  final String? cacheId;
  final Widget? header;
  final void Function(Media media, String? heroTag)? onMediaTap;
  final Stream<Object?>? reloadOn;

  const HomeScreenList({
    super.key,
    required this.loader,
    this.cacheId,
    this.header,
    this.onMediaTap,
    this.reloadOn,
  });

  @override
  State<HomeScreenList> createState() => _HomeScreenListState();
}

class _HomeScreenListState extends State<HomeScreenList>
    with AutomaticKeepAliveClientMixin {
  final _current = <ScreenWidget>[].obs;
  final _error = RxnString();

  final _seen = <String>{};
  final _mediaByTitle = <String, List<Media>>{};
  final _pages = <String, int>{};
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
    final cached = _cache?.read();
    if (cached != null && cached.isNotEmpty) {
      _mediaByTitle.addAll(cached);
      _order.addAll(cached.keys);
      _current.value = [
        for (final e in cached.entries) ScreenWidget.media(e.key, e.value),
      ];
    }
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

  @override
  void dispose() {
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
    final extras = [
      for (final item in list)
        if (!item.isMedia) item,
    ];
    for (final item in list) {
      if (!item.isMedia) continue;
      final title = item.title!;
      if (!_order.contains(title)) _order.add(title);
      final incoming = item.media!;
      final previous = _mediaByTitle[title];
      _mediaByTitle[title] =
          (previous != null && _sameOrder(previous, incoming))
          ? previous
          : incoming;
      if (item.onLoadMore != null) _loadMoreFns[title] = item.onLoadMore!;
    }
    _current.value = [
      ...extras,
      for (final title in _order)
        ScreenWidget.media(title, _mediaByTitle[title]!),
    ];
  }

  void _prune(List<ScreenWidget> finalList) {
    final keep = {
      for (final item in finalList)
        if (item.isMedia) item.title!,
    };
    _order.removeWhere((t) => !keep.contains(t));
    _mediaByTitle.removeWhere((t, _) => !keep.contains(t));
    _loadMoreFns.removeWhere((t, _) => !keep.contains(t));
    final extras = [
      for (final item in finalList)
        if (!item.isMedia) item,
    ];
    _current.value = [
      ...extras,
      for (final title in _order)
        ScreenWidget.media(title, _mediaByTitle[title]!),
    ];
    if (_mediaByTitle.isNotEmpty) _cache?.write(_mediaByTitle);
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

  bool _sameOrder(List<Media> a, List<Media> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i].id != b[i].id ||
          a[i].userProgress != b[i].userProgress ||
          a[i].userStatus != b[i].userStatus ||
          a[i].userScore != b[i].userScore) {
        return false;
      }
    }
    return true;
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
              for (final (i, item) in list.indexed)
                SliverToBoxAdapter(
                  key: ValueKey(
                    item.isMedia ? 'section-${item.title}' : 'extra-$i',
                  ),
                  child: item.isMedia ? _section(i, item) : item.widget!,
                ),
            SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
          ],
        );
      }),
    );
  }

  Widget _section(int index, ScreenWidget item) {
    final title = item.title!;
    final firstSeen = _seen.add(title);
    final section = MediaSection(
      key: ValueKey('section-$title'),
      data: MediaSectionData(
        type: 0,
        title: title,
        mediaList: item.media,
        heroPrefix: _heroPrefix,
        onMediaTap: (ctx, idx, m, tag) => widget.onMediaTap?.call(m, tag),
        onLoadMore: item.onLoadMore == null
            ? null
            : () => _loadMoreSection(title),
      ),
    );
    return section.animateFadeUp(
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
