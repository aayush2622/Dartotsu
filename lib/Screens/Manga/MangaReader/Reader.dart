import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Widgets/ScrollConfig.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../../../DataClass/Chapter.dart';
import '../../../DataClass/Media.dart';
import '../../../Api/Sources/Eval/dart/model/page.dart';
import '../../../Api/Sources/Model/Source.dart';
import 'ReaderController.dart';

class MediaReader extends StatefulWidget {
  final Media media;
  final Chapter currentChapter;
  final List<PageUrl> pages;
  final Source source;
  final bool isOffline;

  const MediaReader({
    super.key,
    required this.media,
    required this.currentChapter,
    required this.pages,
    required this.source,
    this.isOffline = false,
  });

  @override
  State<MediaReader> createState() => MediaReaderState();
}

class MediaReaderState extends State<MediaReader> {
  late final FocusNode focusNode = FocusNode();
  late final ItemScrollController itemScrollController = ItemScrollController();
  late final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  late final PageController pageController = PageController();

  final showControls = true.obs;
  final currentPage = 1.obs;
  final transformationController = TransformationController();
  double currentScale = 1.0;

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
    itemPositionsListener.itemPositions.addListener(_updateCurrentPage);
    pageController.addListener(_onPageChanged);
    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    itemPositionsListener.itemPositions.removeListener(_updateCurrentPage);
    pageController.removeListener(_onPageChanged);
    if (Platform.isAndroid || Platform.isIOS) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildReader(),
    );
  }

  Widget _buildReader() {
    return KeyboardListener(
      focusNode: focusNode,
      child: GestureDetector(
        onTap: () => showControls.value = !showControls.value,
        onDoubleTap: _toggleZoom,
        child: Listener(
          onPointerSignal: (event) {
            if (event is PointerScrollEvent &&
                HardwareKeyboard.instance.isControlPressed) {
              _zoomOnScroll(event.scrollDelta.dy);
            }
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              InteractiveViewer(
                transformationController: transformationController,
                minScale: 0.5,
                maxScale: 4,
                panEnabled: true,
                scaleEnabled: Platform.isAndroid || Platform.isIOS,
                child: _buildUPDMode(),
              ),
              _buildOverlay(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUPDMode() {
    return ScrollConfig(
      context,
      child: ScrollablePositionedList.builder(
        itemCount: widget.pages.length,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
        itemBuilder: (context, index) {
          return _buildPageImage(widget.pages[index]);
        },
      ),
    );
  }

  Widget _buildLTRMode() {
    return ScrollConfig(
      context,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: widget.pages.length,
        itemBuilder: (context, index) {
          return _buildPageImage(widget.pages[index]);
        },
      ),
    );
  }

  Widget _buildPageImage(PageUrl page) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
        ),
        child: CachedNetworkImage(
          imageUrl: page.url,
          fit: BoxFit.fitWidth,
          errorWidget: (context, url, error) => Center(
            child: Text(
              'Failed to load image',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onPageChanged() {
    final page = (pageController.page?.round() ?? 0) + 1;
    if (page != currentPage.value) {
      currentPage.value = page;
    }
  }

  void _updateCurrentPage() {
    final positions = itemPositionsListener.itemPositions.value;

    int mostVisiblePage = currentPage.value;
    double maxVisibleFraction = 0;

    for (final position in positions) {
      final visibleFraction = _calculateVisibleFraction(position);

      if (visibleFraction > maxVisibleFraction) {
        maxVisibleFraction = visibleFraction;
        mostVisiblePage = position.index + 1;
      }
    }

    if (mostVisiblePage != currentPage.value && maxVisibleFraction >= 0.6) {
      currentPage.value = mostVisiblePage;
    }
  }

  double _calculateVisibleFraction(ItemPosition position) {
    final viewportHeight = MediaQuery.of(context).size.height;
    final itemTop = position.itemLeadingEdge * viewportHeight;
    final itemBottom = position.itemTrailingEdge * viewportHeight;
    final visibleTop = itemTop.clamp(0, viewportHeight);
    final visibleBottom = itemBottom.clamp(0, viewportHeight);

    return (visibleBottom - visibleTop) / (itemBottom - itemTop);
  }

  void _toggleZoom() {
    currentScale = (currentScale < 2.0) ? 2.0 : 1.0;
    transformationController.value = Matrix4.identity()..scale(currentScale);
  }

  void _zoomOnScroll(double scrollDelta) {
    final zoomFactor = (scrollDelta < 0) ? 1.1 : 0.9;
    currentScale = (currentScale * zoomFactor).clamp(1, 4.0);
    transformationController.value = Matrix4.identity()..scale(currentScale);
  }

  Widget _buildOverlay() {
    return Obx(() {
      return Positioned.fill(
        child: AnimatedOpacity(
          opacity: showControls.value ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: IgnorePointer(
            ignoring: !showControls.value,
            child: ReaderController(reader: this),
          ),
        ),
      );
    });
  }
}
