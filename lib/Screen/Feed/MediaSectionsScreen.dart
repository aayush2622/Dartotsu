import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/SectionCache.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/RefreshController.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/MediaSection.dart';

class MediaSectionsScreen extends StatefulWidget {
  final SectionsLoader loader;
  final String? cacheId;
  final Widget? header;
  final void Function(Media media)? onMediaTap;
  final VoidCallback? onSearch;

  final Stream<Object?>? reloadOn;

  const MediaSectionsScreen({
    super.key,
    required this.loader,
    this.cacheId,
    this.header,
    this.onMediaTap,
    this.onSearch,
    this.reloadOn,
  });

  @override
  State<MediaSectionsScreen> createState() => _MediaSectionsScreenState();
}

class _MediaSectionsScreenState extends State<MediaSectionsScreen>
    with AutomaticKeepAliveClientMixin, RouteAware {
  final _sections = <String, List<Media>>{}.obs;
  final _error = RxnString();

  final _seen = <String>{};

  late final SectionCache? _cache = widget.cacheId == null
      ? null
      : SectionCache(widget.cacheId!, widget.loader);

  StreamSubscription<Object?>? _reloadSub;
  Worker? _signalWorker;
  bool _subscribed = false;
  bool _refreshing = false;
  final _loaded = false.obs;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    final cached = _cache?.read();
    if (cached != null && cached.isNotEmpty) _sections.value = cached;
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (!_subscribed && route is PageRoute) {
      routeObserver.subscribe(this, route);
      _subscribed = true;
    }
  }

  @override
  void didPopNext() => _refresh();

  @override
  void dispose() {
    _reloadSub?.cancel();
    _signalWorker?.dispose();
    if (_subscribed) routeObserver.unsubscribe(this);
    super.dispose();
  }

  Future<void> _refresh() async {
    if (_refreshing) return;
    _refreshing = true;
    _error.value = null;
    try {
      final fresh = await (_cache?.fetch() ?? widget.loader());
      _apply(fresh);
      _loaded.value = true;
    } catch (e) {
      if (_sections.isEmpty) _error.value = e.toString();
    } finally {
      _refreshing = false;
    }
  }

  void _apply(Map<String, List<Media>> fresh) {
    var changed = _sections.length != fresh.length;
    fresh.forEach((title, media) {
      final current = _sections[title];
      if (current == null || !_sameOrder(current, media)) {
        _sections[title] = media;
        changed = true;
      }
    });
    _sections.removeWhere((title, _) {
      final gone = !fresh.containsKey(title);
      if (gone) changed = true;
      return gone;
    });
    if (changed) _sections.refresh();
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
    final list = _list(context);
    if (widget.onSearch == null) return list;
    return Stack(
      children: [
        list,
        Positioned(
          right: 16,
          bottom: 120.bottomBar(),
          child: FloatingActionButton.small(
            onPressed: widget.onSearch,
            child: const Icon(Icons.search_rounded),
          ),
        ),
      ],
    );
  }

  Widget _list(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: Obx(() {
        final empty = _sections.isEmpty;
        final showError = _error.value != null && empty;
        final showEmpty = empty && !showError && _loaded.value;
        final showSkeleton = empty && !showError && !showEmpty;
        final entries = _sections.entries.toList();

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
              for (final (i, section) in entries.indexed)
                SliverToBoxAdapter(
                  key: ValueKey('section-${section.key}'),
                  child: _section(i, section.key, section.value),
                ),
            SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
          ],
        );
      }),
    );
  }

  Widget _section(int index, String title, List<Media> media) {
    final section = MediaSection(
      key: ValueKey('section-$title'),
      data: MediaSectionData(
        type: 0,
        title: title,
        mediaList: media,
        onMediaTap: (ctx, idx, m) => widget.onMediaTap?.call(m),
      ),
    );
    if (!_seen.add(title)) return section;
    return section.animateFadeUp(
      begin: 0.15,
      delay: Duration(milliseconds: 40 * index),
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
