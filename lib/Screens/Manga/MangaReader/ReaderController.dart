import 'package:collection/collection.dart';
import 'package:dartotsu/Adaptor/Chapter/ChapterAdaptor.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';

import 'package:dartotsu/DataClass/Media.dart';
import 'package:get/get.dart';
import '../../../Api/Sources/Eval/dart/model/page.dart';
import '../../../Api/Sources/Model/Source.dart';
import '../../../DataClass/Chapter.dart';
import '../../../Preferences/PrefManager.dart';
import 'Reader.dart';

class ReaderController extends StatefulWidget {
  final MediaReaderState reader;

  const ReaderController({
    super.key,
    required this.reader,
  });

  @override
  State<ReaderController> createState() => _ReaderControllerState();
}

class _ReaderControllerState extends State<ReaderController> {
  late Media media;
  late Source source;
  late List<PageUrl> pages;
  late Chapter currentChapter;

  @override
  void initState() {
    super.initState();
    media = widget.reader.widget.media;
    currentChapter = widget.reader.widget.currentChapter;
    var sourceName = context.currentService(listen: false).getName;
    var key = "${media.id}-${currentChapter.number}-$sourceName";
    pages = widget.reader.widget.pages;
    source = widget.reader.widget.source;
    var page = loadCustomData<int>("$key-current") ?? 1;

    Future.delayed(Duration(milliseconds: 100), () {
      //widget.reader.pageController.jumpTo(page.toDouble());
      widget.reader.itemScrollController.jumpTo(index: page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 124,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
          padding: EdgeInsets.all(16),
          child: _buildTopControls(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 124,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.9),
                  ],
                ),
              ),
              padding: EdgeInsets.all(16),
              child: _buildBottomControls(),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTopControls() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Chapter ${currentChapter.number}: ${currentChapter.title}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  media.mainName(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 190, 190, 190),
                    fontSize: 13,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        _buildControlButton(
          icon: Icons.collections_bookmark_rounded,
          color: Colors.white,
          onPressed: () {},
        ),
        const SizedBox(width: 12),
        _buildControlButton(
          icon: Icons.settings,
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBottomControls() {
    var chapterList = media.manga!.chapters!.toList();
    var index = chapterList.indexOf(currentChapter);

    var sortedList = chapterList.toList()
      ..sort((a, b) => a.number.toDouble().compareTo(b.number.toDouble()));

    var previous = sortedList.lastWhereOrNull((c) => c.number.toDouble() < currentChapter.number.toDouble())
        ?? (index > 0 ? chapterList[index - 1] : null);

    var next = sortedList.firstWhereOrNull((c) => c.number.toDouble() > currentChapter.number.toDouble())
        ?? (index < chapterList.length - 1 ? chapterList[index + 1] : null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: previous != null,
                child: Row(
                  children: [
                    _buildControlButton(
                      icon: Icons.skip_previous_rounded,
                      color: Colors.white,
                      onPressed: () {
                        onChapterClick(
                          context,
                          previous!,
                          source,
                          media,
                          () => Get.back(),
                        );
                      },
                    ),
                    SizedBox(width: 12),
                    Text(
                      previous?.title.toString() ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: next != null,
                child: Row(
                  children: [
                    Text(
                      next?.title.toString() ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 12),
                    _buildControlButton(
                      icon: Icons.skip_next_rounded,
                      color: Colors.white,
                      onPressed: () {
                        onChapterClick(
                          context,
                          next!,
                          source,
                          media,
                          () => Get.back(),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Obx(
          () {
            return Center(
              child: Text(
                "${widget.reader.currentPage}/${pages.length}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    double size = 24,
    Color color = Colors.white,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onPressed,
      child: Icon(icon, color: color, size: size),
    );
  }
}
