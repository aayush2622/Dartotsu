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
    return Obx(() {
      return Stack(alignment: Alignment.center, children: [
        Center(
          child: Text('Media Reader'),
        ),
        KeyboardListener(
          focusNode: focusNode,
          child: GestureDetector(
            onTap: () => showControls.value = !showControls.value,
            child: AnimatedOpacity(
              opacity: showControls.value ? 0.3 : 0.0,
              duration: const Duration(milliseconds: 300),
              child: Container(color: Colors.black),
            ),
          ),
        ),
        _buildVideoOverlay(),
      ]);
    });
  }

  Widget _buildVideoOverlay() {
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
