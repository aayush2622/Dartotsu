import 'package:flutter/material.dart';

import 'package:dartotsu/DataClass/Media.dart';
import '../../../Api/Sources/Eval/dart/model/page.dart';
import '../../../Api/Sources/Model/Source.dart';
import '../../../DataClass/Chapter.dart';
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
    source = widget.reader.widget.source;
    pages = widget.reader.widget.pages;
    currentChapter = widget.reader.widget.currentChapter;
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
