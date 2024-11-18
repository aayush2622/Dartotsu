import 'dart:async';

import 'package:dantotsu/Adaptor/Media/MediaLargeViewHolder.dart';
import 'package:dantotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../Animation/ScaleAnimation.dart';
import '../../DataClass/Media.dart';
import '../../Functions/Function.dart';
import '../../Screens/Info/MediaScreen.dart';
import '../../Widgets/ScrollConfig.dart';
import 'MediaPageSmallViewHolder.dart';
import 'MediaViewHolder.dart';

class MediaAdaptor extends StatefulWidget {
  final int type;
  final List<Media> mediaList;
  final bool isLarge;
  final ScrollController? scrollController;
  final Function(int index)? onMediaTap;

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
    switch (widget.type) {
      case 0:
        return _buildGridLayout();
      case 1:
        return _buildLargeView();
      case 2:
        return _buildListLayout();
      case 3:
        return _buildStaggeredGrid();
      default:
        return const SizedBox();
    }
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
                return GestureDetector(
                  onTap: () {
                    if (widget.onMediaTap != null) {
                      widget.onMediaTap!(index);
                    } else {
                      navigateToPage(context, MediaInfoPage(_mediaList[index]));
                    }
                  },
                  onLongPress: () {},
                  child: SizedBox(
                    width: 108,
                    height: height,
                    child: MediaViewHolder(
                      mediaInfo: _mediaList[index],
                      isLarge: widget.isLarge,
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

  Widget _buildListLayout() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: Container(
        constraints: const BoxConstraints(maxHeight: double.infinity),
        child: PrimaryScrollController(
          controller: widget.scrollController ?? ScrollController(),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _mediaList.length,
            itemBuilder: (context, index) {
              return SlideAndScaleAnimation(
                initialScale: 0.0,
                finalScale: 1.0,
                initialOffset: const Offset(0.0, -1.0),
                finalOffset: const Offset(0.0, 0.0),
                duration: const Duration(milliseconds: 200),
                child: GestureDetector(
                  onTap: () {
                    if (widget.onMediaTap != null) {
                      widget.onMediaTap!(index);
                    } else {
                      navigateToPage(context, MediaInfoPage(_mediaList[index]));
                    }
                  },
                  onLongPress:() {},
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                    child: MediaPageLargeViewHolder(_mediaList[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildGridLayout() {
    var height = widget.isLarge ? 270.0 : 250.0;
    return SizedBox(
      height: height,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: ListView.builder(
            controller: widget.scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: _mediaList.length,
            itemBuilder: (context, index) {
              final isFirst = index == 0;
              final isLast = index == _mediaList.length - 1;
              final margin = EdgeInsets.only(
                left: isFirst ? 24.0 : 6.5,
                right: isLast ? 24.0 : 6.5,
              );
              return SlideAndScaleAnimation(
                initialScale: 0.0,
                finalScale: 1.0,
                initialOffset: const Offset(1.0, 0.0),
                finalOffset: Offset.zero,
                duration: const Duration(milliseconds: 200),
                child: GestureDetector(
                  onTap: () {
                    if (widget.onMediaTap != null) {
                      widget.onMediaTap!(index);
                    } else {
                      navigateToPage(context, MediaInfoPage(_mediaList[index]));
                    }
                  },
                  onLongPress: () {},
                  child: Container(
                    width: 102,
                    margin: margin,
                    child: MediaViewHolder(
                        mediaInfo: _mediaList[index], isLarge: widget.isLarge),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLargeView() {
    return LargeView(mediaList: _mediaList);
  }
}

class LargeView extends StatefulWidget {
  final List<Media> mediaList;

  const LargeView({super.key, required this.mediaList});

  @override
  LargeViewState createState() => LargeViewState();
}

class LargeViewState extends State<LargeView> {
  late PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    if (widget.mediaList.isNotEmpty) _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_pageController.hasClients) {
        final page = _pageController.page?.toInt() ?? 0;
        final nextPage = (page + 1) % widget.mediaList.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 464 + (0.statusBar() * 2),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: ScrollConfig(
          context,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.mediaList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => navigateToPage(
                    context, MediaInfoPage(widget.mediaList[index])),
                onLongPress: () {},
                child: MediaPageSmallViewHolder(widget.mediaList[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
