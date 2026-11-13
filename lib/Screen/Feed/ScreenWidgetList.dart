import '../../Model/SectionLayout.dart';

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ServiceScreens.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/IntExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/RefreshController.dart' show routeObserver;
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Shelf/MediaSection.dart';
import '../Widgets/ScreenWidgetView.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ScreenWidgetListState.dart';

class ScreenWidgetList extends StatefulWidget {
  final Stream<List<ScreenWidget>> Function() loader;
  final String? cacheId;
  final Widget? header;
  final void Function(Media media, String? heroTag)? onMediaTap;
  final void Function(Media media)? onMediaLongPress;
  final Stream<Object?>? reloadOn;
  final SectionLayout Function(String title)? sectionTypeOf;
  final bool Function(String title)? isHidden;
  final List<FeedChip> chips;
  final Future<List<Media>?> Function(FeedChip chip)? onChip;
  final List<SectionLayout> skeleton;
  final bool verticalTail;
  final Future<void> Function()? onPull;

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
    this.skeleton = const [],
    this.verticalTail = false,
    this.onPull,
  });

  @override
  State<ScreenWidgetList> createState() => _ScreenWidgetListState();
}

class _ScreenWidgetListState extends State<ScreenWidgetList>
    with
        AutomaticKeepAliveClientMixin,
        RouteAware,
        ScreenStateHost<ScreenWidgetList, ScreenWidgetListState> {
  @override
  ScreenWidgetListState buildState() => ScreenWidgetListState(
    loader: widget.loader,
    cacheId: widget.cacheId,
    reloadOn: widget.reloadOn,
    sectionTypeOf: widget.sectionTypeOf,
    isHiddenFn: widget.isHidden,
    chips: widget.chips,
    onChipFn: widget.onChip,
    isVisible: () => _visibleNow,
    verticalTail: widget.verticalTail,
  );

  List<SectionLayout> get _skeleton => widget.skeleton.isEmpty
      ? const [
          SectionLayout.shelf,
          SectionLayout.shelf,
          SectionLayout.shelf,
          SectionLayout.shelf,
        ]
      : widget.skeleton;

  String get _heroPrefix => widget.cacheId ?? identityHashCode(this).toString();

  @override
  bool get wantKeepAlive => true;

  ValueListenable<bool>? _tickers;
  ModalRoute<void>? _route;

  bool get _visibleNow =>
      mounted && (_tickers?.value ?? true) && (_route?.isCurrent ?? true);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final tickers = TickerMode.getNotifier(context);
    if (!identical(tickers, _tickers)) {
      _tickers?.removeListener(_flush);
      _tickers = tickers..addListener(_flush);
    }
    final route = ModalRoute.of(context);
    if (route != null && !identical(route, _route)) {
      routeObserver.unsubscribe(this);
      _route = route;
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void didPopNext() => _flush();

  bool _waiting = false;

  void _flush() {
    if (!mounted) return;
    final animation = ModalRoute.of(context)?.secondaryAnimation;
    if (animation == null || animation.isDismissed) {
      state.flushDirty();
      return;
    }
    if (_waiting) return;
    _waiting = true;
    void settle(AnimationStatus status) {
      if (status != AnimationStatus.dismissed) return;
      animation.removeStatusListener(settle);
      _waiting = false;
      if (mounted) state.flushDirty();
    }

    animation.addStatusListener(settle);
  }

  @override
  void dispose() {
    _tickers?.removeListener(_flush);
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _list(context);
  }

  Widget _list(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => Future.wait([state.pull(), ?widget.onPull?.call()]),
      child: Watch(() {
        final list = state.current;
        final empty = list.isEmpty;
        final showError = state.error.value != null && empty;
        final showEmpty = empty && !showError && state.loaded.value;
        final showSkeleton = empty && !showError && !showEmpty;

        state.tailTitle = null;
        return NotificationListener<ScrollNotification>(
          onNotification: state.onScroll,
          child: CustomScrollConfig(
            context,
            controller: state.scroll,
            physics: const AlwaysScrollableScrollPhysics(),
            cacheExtent: MediaQuery.sizeOf(context).height * 1.5,
            children: [
              if (widget.header != null)
                SliverToBoxAdapter(child: widget.header!),
              if (showSkeleton && _skeleton.contains(SectionLayout.carousel))
                const SliverToBoxAdapter(
                  child: MediaSection(
                    data: MediaSectionData(
                      type: SectionLayout.carousel,
                      loading: true,
                    ),
                  ),
                ),
              for (final item in list.where((e) => e.isCarousel))
                if (item.media!.isNotEmpty)
                  SliverToBoxAdapter(
                    key: ValueKey('spotlight-${item.title}'),
                    child: state.chipLoading.value
                        ? const MediaSection(
                            data: MediaSectionData(
                              type: SectionLayout.carousel,
                              loading: true,
                            ),
                          )
                        : MediaSection(
                            data: MediaSectionData(
                              type: SectionLayout.carousel,
                              title: item.title,
                              mediaList: (state.chipMedia.value ?? item.media!)
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
                for (
                  var i = 0;
                  i <
                      _skeleton
                          .where((t) => t != SectionLayout.carousel)
                          .length;
                  i++
                )
                  SliverToBoxAdapter(
                    key: ValueKey('skeleton-$i'),
                    child: const MediaSection(data: MediaSectionData.loading()),
                  )
              else if (showError)
                SliverToBoxAdapter(child: _errorBox(state.error.value!))
              else if (showEmpty)
                SliverToBoxAdapter(child: _emptyBox())
              else
                ..._sections(state.visible(list)),
              SliverToBoxAdapter(child: SizedBox(height: 120.bottomBar())),
            ],
          ),
        );
      }),
    );
  }

  List<Widget> _sections(List<ScreenWidget> sections) {
    final hidden = [
      for (final item in sections)
        if (state.isHidden(item.title)) item,
    ];
    final out = <Widget>[];
    var chunk = <ScreenWidget>[];
    var chunkIndex = 0;
    void flush() {
      if (chunk.isEmpty) return;
      out.add(_sectionList(chunk, key: ValueKey('feed-sections-$chunkIndex')));
      chunkIndex++;
      chunk = [];
    }

    void add(ScreenWidget item) {
      if (state.isPaged(item)) {
        flush();
        out.addAll(_paged(item));
      } else {
        chunk.add(item);
      }
    }

    hidden.forEach(add);
    flush();
    for (final item in sections) {
      if (!hidden.contains(item)) add(item);
    }
    flush();
    return out;
  }

  List<Widget> _paged(ScreenWidget item) {
    final title = item.title!;
    final media = item.media!;
    final banner = item.sectionType == SectionLayout.banner;
    state.tailTitle = state.tailDone.contains(title) ? null : title;
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
            onLongPress: state.titleLongPress(title),
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
      if (state.tailTitle == title)
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

  Widget _chipRow() {
    if (widget.chips.isEmpty || widget.onChip == null) {
      return const SizedBox.shrink();
    }
    return Watch(
      () => Padding(
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          Dimens.gapSm,
          Dimens.pagePad,
          0,
        ),
        child: AppChoiceChips<String?>(
          value: state.chip.value,
          onChanged: state.selectChip,
          options: [
            for (final c in widget.chips)
              AppSegment<String?>(c.id, label: c.label),
          ],
        ),
      ),
    );
  }

  Widget _sectionList(List<ScreenWidget> sections, {required Key key}) {
    String keyOf(int i) =>
        sections[i].isMedia ? 'section-${sections[i].title}' : 'extra-$i';
    return SliverList(
      key: key,
      delegate: SliverChildBuilderDelegate((context, i) {
        final item = sections[i];
        return item.isMedia
            ? _section(i, item)
            : KeyedSubtree(
                key: ValueKey(keyOf(i)),
                child: ScreenWidgetView(item),
              );
      }, childCount: sections.length),
    );
  }

  Widget _section(int index, ScreenWidget item) {
    final title = item.title!;
    final firstSeen = state.seen.add(title) && index < 4;
    final data = MediaSectionData(
      type: item.sectionType,
      title: title,
      mediaList: item.media,
      heroPrefix: _heroPrefix,
      onMediaTap: (ctx, idx, m, tag) => widget.onMediaTap?.call(m, tag),
      onMediaLongPress: widget.onMediaLongPress == null
          ? null
          : (ctx, idx, m) => widget.onMediaLongPress!(m),
      onTitleTap: state.titleLongPress(title),
      onTitleLongPress: state.titleLongPress(title),
      onLoadMore: state.loadMoreFns[title] == null
          ? null
          : () => state.loadMoreSection(title),
    );
    final section =
        state.sectionBuilders[title]?.call(data) ?? MediaSection(data: data);
    return KeyedSubtree(
      key: ValueKey('section-$title'),
      child: section.animateFadeUp(
        begin: firstSeen ? 0.15 : 0.0,
        delay: firstSeen ? Duration(milliseconds: 40 * index) : Duration.zero,
        duration: firstSeen ? 400 : 0,
      ),
    );
  }

  Widget _emptyBox() => _messageCard(
    icon: Icons.auto_awesome_motion_rounded,
    title: getString.nothingToShowYet,
    body: getString.addTitlesHint,
    action: getString.refresh,
  );

  Widget _errorBox(String text) => _messageCard(
    icon: Icons.cloud_off_rounded,
    title: getString.couldntLoad,
    body: text,
    action: getString.retry,
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
          FilledButton.tonal(onPressed: state.refresh, child: Text(action)),
        ],
      ),
    ),
  );
}
