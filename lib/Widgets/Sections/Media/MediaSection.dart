import 'dart:ui';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../Components/ThemedContainer.dart';
import '../../Components/CachedNetworkImage.dart';
import '../../Components/ScrollConfig.dart';
import 'MediaSectionState.dart';

class MediaSectionData {
  final int type;
  final String? title;
  final IconData? trailingIcon;

  final List<Media>? mediaList;

  /// Renders shimmering placeholder cards instead of real content.
  final bool loading;

  final ScrollController? scrollController;

  final List<Widget>? customNullListIndicator;

  final void Function()? onTrailingIconTap;

  final void Function()? onTrailingIconLongPress;

  final void Function()? onTitleTap;

  final void Function()? onTitleLongPress;

  final void Function(BuildContext context, int index, Media media)? onMediaTap;

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

  double multiplicationFactor = loadData(PrefName.cardSize);

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
    return RepaintBoundary(
      child: ThemedContainer(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.only(),
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(width: 0, color: Colors.transparent),
        child: Skeletonizer(
          enabled: data.loading,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleRow(),
              const SizedBox(height: 8),
              _buildHorizontalSliverList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleRow() {
    final title = data.title;
    if (data.loading) {
      return const Padding(
        padding: EdgeInsets.fromLTRB(28, 16, 16, 0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Loading section',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      );
    }
    if (title == null || title.isEmpty) return const SizedBox.shrink();

    final trailing = data.trailingIcon;

    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 16, 16, 0),
      child: Row(
        children: [
          Expanded(
            child: DpadFocusable(
              enabled: data.onTitleTap != null || data.onTitleLongPress != null,
              onSelect: data.onTitleTap ?? data.onTitleLongPress,
              child: GestureDetector(
                onLongPress: data.onTitleLongPress,
                onTap: data.onTitleTap,
                behavior: HitTestBehavior.translucent,
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.labelLarge?.copyWith(fontSize: 18),
                ),
              ),
            ),
          ),
          if (trailing != null)
            DpadFocusable(
              enabled:
                  data.onTrailingIconTap != null ||
                  data.onTrailingIconLongPress != null,
              onSelect: data.onTrailingIconTap ?? data.onTrailingIconLongPress,
              child: IconButton(
                icon: Icon(
                  trailing,
                  size: 24,
                  color: theme.colorScheme.onSurface,
                ),
                onPressed: data.onTrailingIconTap,
                onLongPress: data.onTrailingIconLongPress,
              ),
            ),
        ],
      ),
    );
  }

  EdgeInsetsDirectional _horizontalPadding(int index, int length) =>
      EdgeInsetsDirectional.only(
        start: index == 0 ? 24 : 6.5 * multiplicationFactor,
        end: 6.5 * multiplicationFactor,
        top: 8 * multiplicationFactor,
        bottom: 6,
      );

  Widget _stretchBubble(double progress) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 140),
      curve: Curves.easeOutCubic,
      width: lerpDouble(34, 64, progress),
      height: 42,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(16 * multiplicationFactor),
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
        height: 272 * multiplicationFactor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.only(left: 24),
          itemCount: 8,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: 13 * multiplicationFactor, top: 8),
            child: _mediaItem(index, Media.skeleton()),
          ),
        ),
      );
    }
    return SizedBox(
      height: 272 * multiplicationFactor,
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
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index == list.length) return _loadMoreTrailer();

                  final media = list[index];
                  return RepaintBoundary(
                    key: ValueKey(index),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: _horizontalPadding(index, list.length),
                        child: DpadFocusable(
                          onSelect: () =>
                              data.onMediaTap?.call(context, index, media),
                          child: _mediaItem(index, media),
                          builder: (context, state, child) {
                            return AnimatedScale(
                              scale: state.focused ? 1.07 : 1.0,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeOut,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ),
                  );
                }, childCount: list.length + 1),
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
            right: 24,
            top: 8 * multiplicationFactor,
          ),
          child: SizedBox(
            width: 108 * multiplicationFactor,
            height: 160 * multiplicationFactor,
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
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              color: Colors.white12,
                              width: 108 * multiplicationFactor,
                              height: 160 * multiplicationFactor,
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
    return _HoverScale(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => data.onMediaTap?.call(context, index, media),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 108 * multiplicationFactor,
              height: 160 * multiplicationFactor,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    cachedNetworkImage(
                      imageUrl: media.cover ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          Container(color: Colors.white12),
                      errorWidget: (context, url, error) => Icon(
                        Icons.broken_image_rounded,
                        color: theme.colorScheme.error,
                        size: 32,
                      ),
                    ),
                    if (_progressLabel(media) case final label?)
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 6,
                          ),
                          color: Colors.black.withValues(alpha: 0.55),
                          child: Text(
                            label,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildMediaTitle(media.mainName),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaTitle(String title) {
    return SizedBox(
      width: 108,
      child: Text(
        title,
        style: theme.textTheme.bodyLarge,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  static String? _progressLabel(Media media) {
    final progress = media.userProgress;
    if (progress == null || media.userStatus == null) return null;
    final total = media.anime?.totalEpisodes ?? media.manga?.totalChapters;
    return total != null ? '$progress / $total' : '$progress';
  }
}

class _HoverScale extends StatefulWidget {
  final Widget child;

  const _HoverScale({required this.child});

  @override
  State<_HoverScale> createState() => _HoverScaleState();
}

class _HoverScaleState extends State<_HoverScale> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedScale(
        scale: _hover ? 1.07 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: widget.child,
      ),
    );
  }
}
