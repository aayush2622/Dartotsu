import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Screens/Detail/MediaScreen.dart';
import '../../Widgets/ScrollConfig.dart';
import 'MediaExpandedViewHolder.dart';
import 'MediaLargeViewHolder.dart';
import 'MediaPageSmallViewHolder.dart';
import 'MediaViewHolder.dart';

class MediaAdaptor extends StatefulWidget {
  final int type;
  final List<Media>? mediaList;
  final bool isLarge;
  final ScrollController? scrollController;
  final List<Widget>? customNullListIndicator;
  final int? skeletonObjects;
  final Function(int index, Media media)? onMediaTap;

  const MediaAdaptor({
    super.key,
    required this.type,
    required this.mediaList,
    this.isLarge = false,
    this.scrollController,
    this.skeletonObjects,
    this.customNullListIndicator,
    this.onMediaTap,
  });

  @override
  State<MediaAdaptor> createState() => MediaGridState();
}

class MediaGridState extends State<MediaAdaptor> {
  late List<Media> _mediaList;

  @override
  void initState() {
    super.initState();
    _updateMediaList();
  }

  @override
  void didUpdateWidget(covariant MediaAdaptor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mediaList != widget.mediaList) {
      _updateMediaList();
    }
  }

  void _updateMediaList() {
    final random = Random();
    final count = widget.skeletonObjects ?? random.nextInt(11) + 7;
    final mediaList = List.generate(count, (_) => Media.skeleton());
    _mediaList = widget.mediaList ?? mediaList;
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = widget.mediaList == null;

    Widget child;
    switch (widget.type) {
      case 0:
        child = _buildHorizontalList();
        break;
      case 1:
        child = _buildCarouselView();
        break;
      case 2:
        child = _buildVerticalList();
        break;
      case 3:
        child = _buildStaggeredGrid();
        break;
      case 4:
        child = _buildExpandedHorizontalList();
        break;
      default:
        child = const SizedBox();
    }

    return Skeletonizer(
      enabled: isLoading,
      effect: ShimmerEffect(
        baseColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
      ),
      child: _mediaList.isEmpty && !isLoading ? _buildEmptyState() : child,
    );
  }

  Widget _buildEmptyState() {
    return SizedBox(
      height: 250,
      child: Center(
        child: (widget.customNullListIndicator?.isNotEmpty ?? false)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.customNullListIndicator!,
              )
            : const Text(
                'Nothing here',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16),
              ),
      ),
    );
  }

  String _generateTag(Media media) => '${media.id}-${Random().nextInt(100000)}';

  void _handleTap(int index, Media media, String tag) {
    if (widget.mediaList == null) return;
    widget.onMediaTap?.call(index, media) ??
        navigateToPage(context, MediaInfoPage(media, tag));
  }

  void _handleLongPress(Media media) {
    if (widget.mediaList == null) return;
    context.currentService(listen: false).compactListEditor(context, media);
  }

  EdgeInsetsDirectional _horizontalPadding(int index, int length) {
    return EdgeInsetsDirectional.only(
      start: index == 0 ? 24 : 6.5,
      end: index == length - 1 ? 24 : 6.5,
    );
  }

  Widget _buildAnimatedItem({
    required int index,
    required Media media,
    required String tag,
    required Offset initialOffset,
    required Widget child,
  }) {
    return SlideAndScaleAnimation(
      initialOffset: initialOffset,
      finalOffset: Offset.zero,
      initialScale: 0.0,
      finalScale: 1.0,
      duration: const Duration(milliseconds: 200),
      child: GestureDetector(
        onTap: () => _handleTap(index, media, tag),
        onLongPress: () => _handleLongPress(media),
        child: child,
      ),
    );
  }

  Widget _buildHorizontalList() {
    final height = widget.isLarge ? 270.0 : 250.0;
    return SizedBox(
      height: height,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: widget.scrollController,
          itemCount: _mediaList.length,
          itemBuilder: (context, index) {
            final media = _mediaList[index];
            final tag = _generateTag(media);
            return Padding(
              padding: _horizontalPadding(index, _mediaList.length),
              child: SizedBox(
                width: 102,
                child: _buildAnimatedItem(
                  index: index,
                  media: media,
                  tag: tag,
                  initialOffset: const Offset(1, 0),
                  child: MediaViewHolder(
                    mediaInfo: media,
                    isLarge: widget.isLarge,
                    tag: tag,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildExpandedHorizontalList() {
    final height = widget.isLarge ? 270.0 : 250.0;
    return SizedBox(
      height: height,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: widget.scrollController,
          itemCount: _mediaList.length,
          itemBuilder: (context, index) {
            final media = _mediaList[index];
            final tag = _generateTag(media);
            return Padding(
              padding: _horizontalPadding(index, _mediaList.length),
              child: SizedBox(
                width: 250,
                child: _buildAnimatedItem(
                  index: index,
                  media: media,
                  tag: tag,
                  initialOffset: const Offset(1, 0),
                  child: MediaExpandedViewHolder(
                    mediaInfo: media,
                    isLarge: widget.isLarge,
                    tag: tag,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildVerticalList() {
    return ScrollConfig(
      context,
      child: ListView.builder(
        controller: widget.scrollController,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _mediaList.length,
        itemBuilder: (context, index) {
          final media = _mediaList[index];
          final tag = _generateTag(media);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: _buildAnimatedItem(
              index: index,
              media: media,
              tag: tag,
              initialOffset: const Offset(0, -1),
              child: MediaPageLargeViewHolder(media, tag),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStaggeredGrid() {
    final height = widget.isLarge ? 270.0 : 250.0;
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = max(1, (constraints.maxWidth / 124).floor());
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: StaggeredGrid.count(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: List.generate(_mediaList.length, (index) {
              final media = _mediaList[index];
              final tag = _generateTag(media);
              return GestureDetector(
                onTap: () => _handleTap(index, media, tag),
                onLongPress: () => _handleLongPress(media),
                child: SizedBox(
                  width: 108,
                  height: height,
                  child: MediaViewHolder(
                    mediaInfo: media,
                    isLarge: widget.isLarge,
                    tag: tag,
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }

  Widget _buildCarouselView() {
    final height = 464 + (0.statusBar() * 2);
    return SizedBox(
      height: height,
      child: ScrollConfig(
        context,
        child: CarouselSlider.builder(
          itemCount: _mediaList.length,
          itemBuilder: (context, index, realIndex) {
            final media = _mediaList[index];
            final tag = _generateTag(media);
            return GestureDetector(
              onTap: () => _handleTap(index, media, tag),
              onLongPress: () => _handleLongPress(media),
              child: MediaPageSmallViewHolder(media, tag),
            );
          },
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
