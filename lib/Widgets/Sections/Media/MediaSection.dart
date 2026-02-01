import 'dart:ui';

import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/ThemeManager/ThemeManager.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../Components/CachedNetworkImage.dart';
import '../../Components/ScrollConfig.dart';
import 'MediaSectionState.dart';

class MediaSectionData {
  final int type;
  final String? title;
  final IconData? trailingIcon;

  final List<Media>? mediaList;

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

  MediaSectionData({
    required this.type,
    this.title,
    this.trailingIcon,
    this.mediaList,
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

  factory MediaSectionData.skeleton(int type) {
    return MediaSectionData(
      type: type,
      title: "Title Skeleton",
      mediaList: List.generate(
        20,
        (index) => Media.skeleton(),
      ),
      onMediaTap: (context, index, media) => snackString("Just a skeleton"),
      onLoadMore: () async {
        await Future.delayed(const Duration(seconds: 2));
        return List.generate(10, (_) => Media.skeleton());
      },
    );
  }
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
    state.updateMediaList(data.mediaList);
  }

  @override
  Widget build(BuildContext context) {
    return ThemedContainer(
      margin: const EdgeInsets.all(12),
      context: context,
      padding: const EdgeInsets.only(),
      borderRadius: BorderRadius.circular(30.0),
      border: Border.all(width: 0, color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 8),
          _buildHorizontalSliverList(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    final title = data.title;
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
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          if (trailing != null)
            DpadFocusable(
              enabled: data.onTrailingIconTap != null ||
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
    return SizedBox(
      height: 272 * multiplicationFactor,
      child: Obx(() {
        final canLoadMore = state.canLoadMore.value;
        final isLoadingMore = state.isLoadingMore.value;
        final overscroll = state.overscrollProgress.value;

        return NotificationListener<ScrollNotification>(
          onNotification: (scroll) => state.scrollListener(
            scroll,
            data.onLoadMore,
          ),
          child: CustomScrollConfig(
            context,
            scrollDirection: Axis.horizontal,
            controller: data.scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: [
              SuperSliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final isLast = index == state.mediaList.length;

                    if (isLast) {
                      if (data.onLoadMore == null || !canLoadMore) {
                        return const SizedBox(width: 17.5);
                      }

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
                              onFocus: () => state.overscrollProgress.value = 1,
                              onBlur: () => state.overscrollProgress.value = 0,
                              onSelect: () => state.loadMore(data.onLoadMore),
                              child: Center(
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 180),
                                  child: (overscroll == 0 && !isLoadingMore)
                                      ? const SizedBox.shrink()
                                      : isLoadingMore
                                          ? Skeletonizer(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  16.0,
                                                ),
                                                child: Container(
                                                  color: Colors.white12,
                                                  width: 108 *
                                                      multiplicationFactor,
                                                  height: 160 *
                                                      multiplicationFactor,
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
                    }

                    final media = state.mediaList[index];

                    return Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: _horizontalPadding(
                          index,
                          state.mediaList.length,
                        ),
                        child: DpadFocusable(
                          onSelect: () =>
                              data.onMediaTap?.call(context, index, media),
                          child: _mediaItem(index = index, media),
                          builder: (context, focused, child) {
                            return AnimatedScale(
                              scale: focused ? 1.07 : 1.0,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeOut,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ).animate(
                      effects: [
                        const SlideEffect(
                          begin: Offset(1, 0),
                          end: Offset.zero,
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 200),
                        ),
                        const ScaleEffect(
                          begin: Offset(0.1, 0.1),
                          end: Offset(1, 1),
                          curve: Curves.easeInOut,
                          duration: Duration(milliseconds: 400),
                        ),
                      ],
                    );
                  },
                  childCount: state.mediaList.length + 1,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _mediaItem(int index, Media media) {
    var hover = false.obs;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => hover.value = true,
      onExit: (_) => hover.value = false,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => data.onMediaTap?.call(context, index, media),
        child: Obx(
          () => AnimatedScale(
            scale: hover.value ? 1.07 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 108 * multiplicationFactor,
                  height: 160 * multiplicationFactor,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    clipBehavior: Clip.antiAlias,
                    child: cachedNetworkImage(
                      imageUrl: media.cover ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: Colors.white12,
                      ),
                      errorWidget: (context, url, error) => Icon(
                        Icons.broken_image_rounded,
                        color: theme.colorScheme.error,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                _buildMediaTitle(false, media.mainName),
                const SizedBox(height: 8),
                _buildMediaTitle(false, "1155 | 1155")
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMediaTitle(bool isSkeleton, String title) {
    return SizedBox(
      width: 108,
      child: Text(
        isSkeleton ? 'Loading title' : title,
        style: theme.textTheme.bodyLarge,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
