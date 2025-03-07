import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartotsu/Widgets/ScrollConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  var showControls = true.obs;
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildWebtoonMode(),
            _buildOverlay(),
          ],
        ),
      ),
    );
  }

  ScrollController scrollController = ScrollController();
  Widget _buildWebtoonMode() {
    return ScrollConfig(
      context,
      child: ListView.builder(
        controller: scrollController,
        itemCount: widget.pages.length,
        itemBuilder: (context, index) {
          final page = widget.pages[index];
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
              child: CachedNetworkImage(
                imageUrl: page.url,
                fit: BoxFit.fitWidth,
                placeholder: (context, url) => SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Text(
                    'Failed to load image: $error',
                    style: TextStyle(color: Colors.red),
                  )
                ),
              ),
            ),
          );
        },
      ),
    );
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
