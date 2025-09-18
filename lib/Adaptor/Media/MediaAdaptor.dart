import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart' hide ShimmerEffect;
import 'package:skeletonizer/skeletonizer.dart';

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
  final bool sliver;
  final Function(int index, Media media)? onMediaTap;

  const MediaAdaptor({
    super.key,
    required this.type,
    required this.mediaList,
    this.isLarge = false,
    this.scrollController,
    this.skeletonObjects,
    this.customNullListIndicator,
    this.sliver = false,
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

    final child =
        _mediaList.isEmpty && !isLoading ? _buildEmptyState() : _buildChild();

    final shimmerEffect = ShimmerEffect(
      baseColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
      begin: (widget.type == 2 || widget.type == 3)
          ? Alignment.centerLeft
          : const AlignmentDirectional(-1.0, -0.3),
      end: (widget.type == 2 || widget.type == 3)
          ? Alignment.centerRight
          : const AlignmentDirectional(1.0, 0.3),
    );

    if (widget.sliver) {
      return SliverSkeletonizer(
        enabled: isLoading,
        effect: shimmerEffect,
        child: child,
      );
    }

    return Skeletonizer(
      enabled: isLoading,
      effect: shimmerEffect,
      child: child,
    );
  }

  Widget _buildChild() {
    switch (widget.type) {
      case 0:
        return _buildHorizontalList();
      case 1:
        return _buildCarouselView();
      case 2:
        return _buildVerticalList();
      case 3:
        return _buildGrid();
      case 4:
        return _buildExpandedHorizontalList();
      default:
        return const SizedBox();
    }
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
    if (widget.onMediaTap != null) {
      widget.onMediaTap!(index, media);
    } else {
      navigateToPage(context, MediaInfoPage(media, tag));
    }
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
    return GestureDetector(
      onTap: () => _handleTap(index, media, tag),
      onLongPress: () => _handleLongPress(media),
      child: child,
    )
        .animate()
        .slide(
          begin: initialOffset,
          end: Offset.zero,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 200),
        )
        .scale(
          begin: const Offset(0.1, 0.1),
          end: const Offset(1.0, 1.0),
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400),
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

  Widget _buildGrid() {
    const sidePadding = 16.0;
    Widget itemBuilder(BuildContext context, int index) {
      final media = _mediaList[index];
      final tag = _generateTag(media);
      return GestureDetector(
        onTap: () => _handleTap(index, media, tag),
        onLongPress: () => _handleLongPress(media),
        child: RepaintBoundary(
          child: MediaViewHolder(
            mediaInfo: media,
            isLarge: widget.isLarge,
            tag: tag,
          ),
        ),
      );
    }

    if (!widget.sliver) {
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: sidePadding, vertical: sidePadding),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final delegate = makeDelegate(constraints.maxWidth);
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _mediaList.length,
              gridDelegate: delegate,
              itemBuilder: itemBuilder,
            );
          },
        ),
      );
    } else {
      return SliverPadding(
        padding: const EdgeInsets.symmetric(
            horizontal: sidePadding, vertical: sidePadding),
        sliver: SliverLayoutBuilder(
          builder: (context, constraints) {
            final delegate = makeDelegate(constraints.crossAxisExtent);
            return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                itemBuilder,
                childCount: _mediaList.length,
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: true,
              ),
              gridDelegate: delegate,
            );
          },
        ),
      );
    }
  }

  SliverGridDelegateWithFixedCrossAxisCount makeDelegate(double maxWidth) {
    final height = widget.isLarge ? 270.0 : 250.0;
    final itemWidth = 108.0;
    const minGap = 2.0;
    final crossAxisCount = max(1, (maxWidth / (itemWidth + minGap)).floor());

    final totalItemWidth = crossAxisCount * itemWidth;
    final totalGapSpace = maxWidth - totalItemWidth;
    final gap = crossAxisCount > 1 ? totalGapSpace / (crossAxisCount - 1) : 0.0;

    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: 16,
      crossAxisSpacing: gap,
      childAspectRatio: itemWidth / height,
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
            autoPlay: widget.mediaList != null,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
