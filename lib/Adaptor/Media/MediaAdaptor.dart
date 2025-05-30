import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
  final List<Media> mediaList;
  final bool isLarge;
  final ScrollController? scrollController;
  final Function(int index, Media media)? onMediaTap;

  const MediaAdaptor({
    super.key,
    required this.type,
    required this.mediaList,
    this.isLarge = false,
    this.scrollController,
    this.onMediaTap,
  });

  @override
  MediaGridState createState() => MediaGridState();
}

class MediaGridState extends State<MediaAdaptor> {
  late List<Media> _mediaList;

  @override
  void initState() {
    super.initState();
    _mediaList = widget.mediaList;
  }

  @override
  void didUpdateWidget(covariant MediaAdaptor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.mediaList != widget.mediaList) {
      setState(() {
        _mediaList = widget.mediaList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_mediaList.isEmpty) {
      return const SizedBox();
    }
    switch (widget.type) {
      case 0:
        return _buildHorizontalList();
      case 1:
        return _buildCarouselView();
      case 2:
        return _buildVerticalList();
      case 3:
        return _buildStaggeredGrid();
      case 4:
        return _buildExpandedHorizontalList();
      default:
        return const SizedBox();
    }
  }

  String _generateTag(int index) =>
      '${_mediaList[index].id}${Random().nextInt(100000)}';

  void _handleMediaTap(int index, Media media, String tag) {
    if (widget.onMediaTap != null) {
      widget.onMediaTap!(index, media);
    } else {
      navigateToPage(context, MediaInfoPage(media, tag));
    }
  }

  void _handleLongTap(BuildContext context, Media media) {
    context.currentService(listen: false).compactListEditor(context, media);
  }

  Widget _buildAnimatedMediaItem({
    required Widget child,
    required String tag,
    required int index,
    Offset initialOffset = Offset.zero,
  }) {
    return SlideAndScaleAnimation(
      initialScale: 0.0,
      finalScale: 1.0,
      initialOffset: initialOffset,
      finalOffset: Offset.zero,
      duration: const Duration(milliseconds: 200),
      child: GestureDetector(
        onTap: () => _handleMediaTap(index, _mediaList[index], tag),
        onLongPress: () => _handleLongTap(context, _mediaList[index]),
        child: child,
      ),
    );
  }

  Widget _buildExpandedHorizontalList() {
    var height = widget.isLarge ? 270.0 : 250.0;
    return SizedBox(
      height: height,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          controller: widget.scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: _mediaList.length,
          itemBuilder: (context, index) {
            final tag = _generateTag(index);
            return Container(
              width: 250,
              margin: const EdgeInsets.symmetric(horizontal: 6.5).copyWith(
                left: Directionality.of(context) == TextDirection.rtl
                    ? (index == _mediaList.length - 1 ? 24.0 : 6.5)
                    : (index == 0 ? 24.0 : 6.5),
                right: Directionality.of(context) == TextDirection.rtl
                    ? (index == 0 ? 24.0 : 6.5)
                    : (index == _mediaList.length - 1 ? 24.0 : 6.5),
              ),
              child: _buildAnimatedMediaItem(
                child: MediaExpandedViewHolder(
                  mediaInfo: _mediaList[index],
                  isLarge: widget.isLarge,
                  tag: tag,
                ),
                tag: tag,
                index: index,
                initialOffset: const Offset(1.0, 0.0),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHorizontalList() {
    var height = widget.isLarge ? 270.0 : 250.0;
    return SizedBox(
      height: height,
      child: ScrollConfig(
        context,
        child: ListView.builder(
          controller: widget.scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: _mediaList.length,
          itemBuilder: (context, index) {
            final tag = _generateTag(index);
            return Container(
              width: 102,
              margin: const EdgeInsets.symmetric(horizontal: 6.5).copyWith(
                left: Directionality.of(context) == TextDirection.rtl
                    ? (index == _mediaList.length - 1 ? 24.0 : 6.5)
                    : (index == 0 ? 24.0 : 6.5),
                right: Directionality.of(context) == TextDirection.rtl
                    ? (index == 0 ? 24.0 : 6.5)
                    : (index == _mediaList.length - 1 ? 24.0 : 6.5),
              ),
              child: _buildAnimatedMediaItem(
                child: MediaViewHolder(
                  mediaInfo: _mediaList[index],
                  isLarge: widget.isLarge,
                  tag: tag,
                ),
                tag: tag,
                index: index,
                initialOffset: const Offset(1.0, 0.0),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCarouselView() {
    return SizedBox(
      height: 464 + (0.statusBar() * 2),
      child: ScrollConfig(
        context,
        child: CarouselSlider.builder(
          itemCount: _mediaList.length,
          itemBuilder: (context, index, realIndex) {
            final tag = _generateTag(index);
            return GestureDetector(
              onTap: () => _handleMediaTap(index, _mediaList[index], tag),
              onLongPress: () => _handleLongTap(context, _mediaList[index]),
              child: MediaPageSmallViewHolder(_mediaList[index], tag),
            );
          },
          options: CarouselOptions(
            height: 464 + (0.statusBar() * 2),
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
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
          final tag = _generateTag(index);
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: _buildAnimatedMediaItem(
              child: MediaPageLargeViewHolder(_mediaList[index], tag),
              tag: tag,
              index: index,
              initialOffset: const Offset(0.0, -1.0),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStaggeredGrid() {
    var height = widget.isLarge ? 270.0 : 250.0;
    return LayoutBuilder(
      builder: (context, constraints) {
        final parentWidth = constraints.maxWidth;
        var crossAxisCount = (parentWidth / 124).floor();
        if (crossAxisCount < 1) crossAxisCount = 1;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: StaggeredGrid.count(
            crossAxisSpacing: 16,
            crossAxisCount: crossAxisCount,
            children: List.generate(
              _mediaList.length,
              (index) {
                final tag = _generateTag(index);
                return GestureDetector(
                  onTap: () => _handleMediaTap(index, _mediaList[index], tag),
                  onLongPress: () => _handleLongTap(context, _mediaList[index]),
                  child: SizedBox(
                    width: 108,
                    height: height,
                    child: MediaViewHolder(
                      mediaInfo: _mediaList[index],
                      isLarge: widget.isLarge,
                      tag: tag,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
