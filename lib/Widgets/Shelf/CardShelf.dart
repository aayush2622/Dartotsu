import 'dart:ui';

import '../../Utils/Nav/DpadLayers.dart';
import '../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/ScrollConfig.dart';
import 'CardShelfState.dart';
import 'PosterCard.dart';
import 'ShelfFrame.dart';
import '../../Core/State/State.dart';

class CardShelf extends StatefulWidget {
  final String? title;
  final IconData? trailingIcon;
  final void Function()? onTrailingIconTap;
  final void Function()? onTrailingIconLongPress;
  final void Function()? onTitleTap;
  final void Function()? onTitleLongPress;
  final List<ShelfCardItem>? items;
  final Future<List<ShelfCardItem>?> Function()? onLoadMore;
  final ScrollController? scrollController;

  final Object? dataKey;

  final CardStyle? styleOverride;

  const CardShelf({
    super.key,
    this.title,
    this.trailingIcon,
    this.onTrailingIconTap,
    this.onTrailingIconLongPress,
    this.onTitleTap,
    this.onTitleLongPress,
    required this.items,
    this.onLoadMore,
    this.scrollController,
    this.dataKey,
    this.styleOverride,
  });

  @override
  State<CardShelf> createState() => _CardShelfState();
}

class _CardShelfState extends State<CardShelf> {
  final state = CardShelfState();
  int _direction = 1;
  bool _scrolled = false;

  bool get _loading => widget.items == null;

  ThemeData get theme => Theme.of(context);

  CardStyle get _style =>
      widget.styleOverride ??
      tryFind<CardStyleController>()?.current ??
      CardStyle.cozy;

  double get _cardW => _style.itemWidth;

  double get _cardH => _style.imageHeight;

  double get _railH => _style.itemHeightFor(context);

  double get _gap => Dimens.cardGap;

  static const _pop = 4.0;

  @override
  void initState() {
    super.initState();
    state.updateItems(widget.items);
  }

  @override
  void didUpdateWidget(covariant CardShelf oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.dataKey, widget.dataKey)) {
      state.updateItems(widget.items);
    }
  }

  @override
  Widget build(BuildContext context) {
    final frame = ShelfFrame(
      title: _loading ? 'Loading' : widget.title,
      onTitleTap: widget.onTitleTap,
      onTitleLongPress: widget.onTitleLongPress,
      trailing: _trailingButton(),
      onHeaderSelect:
          widget.onTrailingIconTap ?? widget.onTrailingIconLongPress,
      child: _buildBody(),
    );
    return _loading ? Skeletonizer(child: frame) : frame;
  }

  Widget? _trailingButton() {
    final icon = widget.trailingIcon;
    if (icon == null || _loading) return null;
    return IconButton(
      icon: Icon(icon, size: 24, color: theme.colorScheme.onSurface),
      onPressed: widget.onTrailingIconTap,
      onLongPress: widget.onTrailingIconLongPress,
    );
  }

  double get _inset => Dimens.cardPad + 8;

  EdgeInsetsDirectional _horizontalPadding(int index, int length) =>
      EdgeInsetsDirectional.only(start: index == 0 ? _inset : _gap, end: _gap);

  Widget _stretchBubble(double progress) {
    return AnimatedContainer(
      duration: animDuration(140),
      curve: Curves.easeOutCubic,
      width: lerpDouble(34, 64, progress),
      height: 42,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: Transform.translate(
          offset: Offset(progress * 10, 0),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: theme.colorScheme.onPrimary,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return SizedBox(
        height: _railH + _pop * 2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: _inset, top: _pop),
          itemCount: 8,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: _gap),
            child: _cardFor(index, ShelfCardItem.skeleton()),
          ),
        ),
      );
    }
    return DpadRow(
      child: SizedBox(
        height: _railH + _pop * 2,
        child: NotificationListener<ScrollNotification>(
          onNotification: (scroll) {
            if (scroll is ScrollUpdateNotification &&
                (scroll.scrollDelta ?? 0) != 0) {
              _scrolled = true;
              _direction = scroll.scrollDelta! > 0 ? 1 : -1;
            }
            return state.scrollListener(scroll, widget.onLoadMore);
          },
          child: CustomScrollConfig(
            context,
            scrollDirection: Axis.horizontal,
            controller: widget.scrollController,
            physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast,
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              Watch(() {
                final list = state.items;
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == list.length) return _loadMoreTrailer();

                      final item = list[index];
                      return RepaintBoundary(
                        key: ValueKey('item:${item.id}'),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: _horizontalPadding(
                              index,
                              list.length,
                            ).add(const EdgeInsets.only(top: _pop)),
                            child: _cardFor(index, item),
                          ),
                        ),
                      );
                    },
                    childCount: list.length + 1,
                    findChildIndexCallback: (key) {
                      final id = (key as ValueKey<String>).value.substring(5);
                      final i = list.indexWhere((it) => it.id == id);
                      return i < 0 ? null : i;
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadMoreTrailer() {
    if (widget.onLoadMore == null) return const SizedBox(width: 17.5);
    return Watch(() {
      final canLoadMore = state.canLoadMore.value;
      final isLoadingMore = state.isLoadingMore.value;
      final overscroll = state.overscrollProgress.value;
      if (!canLoadMore) return const SizedBox(width: 17.5);

      return Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 6.5, right: _inset, top: Dimens.gapSm),
          child: SizedBox(
            width: _cardW,
            height: _cardH,
            child: DpadFocusable(
              onFocusChange: (focused) {
                state.overscrollProgress.value = focused ? 1 : 0;
              },
              onSelect: () => state.loadMore(widget.onLoadMore),
              child: Center(
                child: AnimatedSwitcher(
                  duration: animDuration(180),
                  child: (overscroll == 0 && !isLoadingMore)
                      ? const SizedBox.shrink()
                      : isLoadingMore
                      ? Skeletonizer(
                          child: OverflowBox(
                            alignment: Alignment.topCenter,
                            minHeight: 0,
                            maxHeight: double.infinity,
                            child: _cardFor(0, ShelfCardItem.skeleton()),
                          ),
                        )
                      : _stretchBubble(overscroll),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _cardFor(int index, ShelfCardItem item) {
    final defaultCard = PosterCard(
      style: widget.styleOverride,
      heroTag: item.heroTag,
      imageUrl: item.imageUrl,
      overlay: item.overlay,
      title: item.title,
      subtitle: item.subtitle,
      progress: item.progress,
      progressText: item.progressText,
      score: item.score,
      scoreHighlight: item.scoreHighlight,
      airing: item.airing,
      onTap: item.onTap,
      onLongPress: item.onLongPress,
      focusable: item.focusable,
    );
    final card = item.cardBuilder?.call(defaultCard) ?? defaultCard;
    return card.animateHorizontalEntrance(
      index: index,
      direction: _direction,
      stagger: !_scrolled,
    );
  }
}
