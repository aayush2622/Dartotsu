import 'dart:ui';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Components/ScrollConfig.dart';
import 'PosterCard.dart';
import 'ShelfFrame.dart';
import 'MediaSectionState.dart';

class MediaSectionData {
  final int type;
  final String? title;
  final IconData? trailingIcon;

  final List<Media>? mediaList;

  final bool loading;

  final ScrollController? scrollController;

  final List<Widget>? customNullListIndicator;

  final void Function()? onTrailingIconTap;

  final void Function()? onTrailingIconLongPress;

  final void Function()? onTitleTap;

  final void Function()? onTitleLongPress;

  final void Function(
    BuildContext context,
    int index,
    Media media,
    String? heroTag,
  )?
  onMediaTap;

  final void Function(BuildContext context, int index, Media media)?
  onMediaLongPress;

  final Future<List<Media>> Function()? onLoadMore;

  const MediaSectionData({
    required this.type,
    this.title,
    this.trailingIcon,
    this.mediaList,
    this.loading = false,
    this.scrollController,
    this.customNullListIndicator,
    this.onTrailingIconTap,
    this.onTrailingIconLongPress,
    this.onTitleTap,
    this.onTitleLongPress,
    this.onMediaTap,
    this.onMediaLongPress,
    this.onLoadMore,
  });

  const MediaSectionData.loading()
    : type = 0,
      loading = true,
      title = null,
      trailingIcon = null,
      mediaList = null,
      scrollController = null,
      customNullListIndicator = null,
      onTrailingIconTap = null,
      onTrailingIconLongPress = null,
      onTitleTap = null,
      onTitleLongPress = null,
      onMediaTap = null,
      onMediaLongPress = null,
      onLoadMore = null;
}

class MediaSection extends StatefulWidget {
  final MediaSectionData data;

  const MediaSection({super.key, required this.data});

  @override
  createState() => _MediaSectionState();
}

class _MediaSectionState extends State<MediaSection> {
  MediaSectionState state = MediaSectionState();

  MediaSectionData get data => widget.data;

  ThemeData get theme => Theme.of(context);

  CardStyle get _style =>
      tryFind<CardStyleController>()?.current ?? const CardStyle();

  double get _cardW => _style.itemWidth;

  double get _cardH => _style.imageHeight;

  double get _railH => _style.itemHeight;

  double get _gap => Dimens.cardGap;

  @override
  void initState() {
    super.initState();
    state.updateMediaList(data.loading ? null : data.mediaList);
  }

  @override
  void didUpdateWidget(covariant MediaSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data.loading != data.loading ||
        !identical(oldWidget.data.mediaList, data.mediaList)) {
      state.updateMediaList(data.loading ? null : data.mediaList);
    }
  }

  @override
  Widget build(BuildContext context) {
    final frame = ShelfFrame(
      title: data.loading ? 'Loading' : data.title,
      onTitleTap: data.onTitleTap,
      trailing: _trailingButton(),
      child: _buildHorizontalSliverList(),
    );
    return data.loading ? Skeletonizer(child: frame) : frame;
  }

  Widget? _trailingButton() {
    final icon = data.trailingIcon;
    if (icon == null || data.loading) return null;
    return DpadFocusable(
      enabled:
          data.onTrailingIconTap != null ||
          data.onTrailingIconLongPress != null,
      onSelect: data.onTrailingIconTap ?? data.onTrailingIconLongPress,
      child: IconButton(
        icon: Icon(icon, size: 24, color: theme.colorScheme.onSurface),
        onPressed: data.onTrailingIconTap,
        onLongPress: data.onTrailingIconLongPress,
      ),
    );
  }

  EdgeInsetsDirectional _horizontalPadding(int index, int length) =>
      EdgeInsetsDirectional.only(
        start: index == 0 ? Dimens.cardPad + 8 : _gap,
        end: _gap,
      );

  Widget _stretchBubble(double progress) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 140),
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

  Widget _buildHorizontalSliverList() {
    if (data.loading) {
      return SizedBox(
        height: _railH,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: Dimens.cardPad + 8),
          itemCount: 8,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: _gap),
            child: _mediaItem(index, Media.skeleton()),
          ),
        ),
      );
    }
    return SizedBox(
      height: _railH,
      child: NotificationListener<ScrollNotification>(
        onNotification: (scroll) =>
            state.scrollListener(scroll, data.onLoadMore),
        child: CustomScrollConfig(
          context,
          scrollDirection: Axis.horizontal,
          controller: data.scrollController,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Obx(() {
              final list = state.mediaList;
              return SuperSliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index == list.length) return _loadMoreTrailer();

                    final media = list[index];
                    return RepaintBoundary(
                      key: ValueKey('media:${media.id}'),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: _horizontalPadding(index, list.length),
                          child: _mediaItem(index, media),
                        ),
                      ),
                    );
                  },
                  childCount: list.length + 1,
                  findChildIndexCallback: (key) {
                    final id = (key as ValueKey<String>).value.substring(6);
                    final i = list.indexWhere((m) => m.id == id);
                    return i < 0 ? null : i;
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _loadMoreTrailer() {
    if (data.onLoadMore == null) return const SizedBox(width: 17.5);
    return Obx(() {
      final canLoadMore = state.canLoadMore.value;
      final isLoadingMore = state.isLoadingMore.value;
      final overscroll = state.overscrollProgress.value;
      if (!canLoadMore) return const SizedBox(width: 17.5);

      return Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            left: 6.5,
            right: Dimens.cardPad + 8,
            top: Dimens.gapSm,
          ),
          child: SizedBox(
            width: _cardW,
            height: _cardH,
            child: DpadFocusable(
              onFocusChange: (focused) {
                state.overscrollProgress.value = focused ? 1 : 0;
              },
              onSelect: () => state.loadMore(data.onLoadMore),
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 180),
                  child: (overscroll == 0 && !isLoadingMore)
                      ? const SizedBox.shrink()
                      : isLoadingMore
                      ? Skeletonizer(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              Dimens.radiusSm,
                            ),
                            child: Container(
                              color: Colors.white12,
                              width: _cardW,
                              height: _cardH,
                            ),
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

  Widget _mediaItem(int index, Media media) {
    final detailed = !media.minimal;
    final heroTag = detailed ? 'cover:${data.title}:$index:${media.id}' : null;
    return PosterCard(
      heroTag: heroTag,
      imageUrl: media.cover,
      title: media.relation != null
          ? '${media.relation} · ${media.mainName}'
          : media.mainName,
      subtitle: detailed ? _infoText(media) : null,
      progress: detailed ? _progress(media) : null,
      progressText: detailed ? _progressText(media) : null,
      score: detailed ? _score(media) : null,
      scoreHighlight: (media.userScore ?? 0) > 0,
      airing: detailed && media.status == 'RELEASING',
      onTap: () => data.onMediaTap?.call(context, index, media, heroTag),
      onLongPress: data.onMediaLongPress == null
          ? null
          : () => data.onMediaLongPress!(context, index, media),
    );
  }

  static int? _total(Media media) => media.anime != null
      ? media.anime?.totalEpisodes
      : media.manga?.totalChapters;

  static String _infoText(Media media) {
    final left = media.userProgress?.toString() ?? '~';
    final total = _total(media);
    final next = media.anime?.nextAiringEpisode;
    final right = next != null && next > 0
        ? '$next / ${total ?? '~'}'
        : '${total ?? '~'}';
    return '$left  |  $right';
  }

  static String? _progressText(Media media) {
    final done = media.userProgress;
    if (done == null) return null;

    return '$done · ${_total(media) ?? '~'}';
  }

  static double? _score(Media media) {
    final raw = (media.userScore ?? 0) > 0
        ? media.userScore!
        : (media.meanScore ?? 0);
    return raw > 0 ? raw / 10 : null;
  }

  static double? _progress(Media media) {
    final done = media.userProgress ?? 0;
    final total = media.anime?.totalEpisodes ?? media.manga?.totalChapters;
    if (done <= 0 || total == null || total <= 0 || done >= total) return null;
    return done / total;
  }
}
