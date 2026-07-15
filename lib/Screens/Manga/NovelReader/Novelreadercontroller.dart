import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Chapter/ChapterAdaptor.dart';
import '../../../DataClass/Media.dart';
import '../../../Functions/string_extensions.dart';
import '../../../Widgets/CustomBottomDialog.dart';
import 'Novelreader.dart';

class NovelReaderController extends StatefulWidget {
  final NovelReaderState reader;

  const NovelReaderController({super.key, required this.reader});

  @override
  State<NovelReaderController> createState() => _NovelReaderControllerState();
}

class _NovelReaderControllerState extends State<NovelReaderController> {
  late Media media;
  late Source source;
  late DEpisode currentChapter;

  @override
  void initState() {
    super.initState();
    media = widget.reader.widget.media;
    currentChapter = widget.reader.widget.currentChapter;
    source = widget.reader.widget.source;
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
          padding: const EdgeInsets.all(16),
          child: _buildTopControls(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
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
              padding: const EdgeInsets.all(16),
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
            child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chapter ${currentChapter.episodeNumber}: ${currentChapter.name ?? currentChapter.episodeNumber}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                media.mainName(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 190, 190, 190),
                  fontSize: 13,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        _buildControlButton(
          icon: Icons.text_fields_rounded,
          onPressed: _showTextSettingsDialog,
        ),
      ],
    );
  }

  Widget _buildBottomControls() {
    // NOTE: assumes Media exposes a `novel` field with a `chapters` list,
    // mirroring `media.manga!.chapters` / `media.anime!.episodes`.
    // Point this at whatever your actual novel chapter source is.
    var chapterList = media.manga?.chapters?.toList() ?? <DEpisode>[];
    var index = chapterList.indexOf(currentChapter);

    var sortedList = chapterList.toList()
      ..sort(
        (a, b) =>
            a.episodeNumber.toDouble().compareTo(b.episodeNumber.toDouble()),
      );

    var previous =
        sortedList.lastWhereOrNull(
          (c) =>
              c.episodeNumber.toDouble() <
              currentChapter.episodeNumber.toDouble(),
        ) ??
        (index > 0 ? chapterList[index - 1] : null);

    var next =
        sortedList.firstWhereOrNull(
          (c) =>
              c.episodeNumber.toDouble() >
              currentChapter.episodeNumber.toDouble(),
        ) ??
        (index < chapterList.length - 1 ? chapterList[index + 1] : null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(() {
          return SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: Theme.of(context).colorScheme.primary,
              activeTrackColor: Theme.of(context).colorScheme.primary,
              inactiveTrackColor: const Color.fromARGB(255, 121, 121, 121),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
              overlayShape: SliderComponentShape.noOverlay,
              trackShape: const RoundedRectSliderTrackShape(),
            ),
            child: Slider(
              value: widget.reader.scrollProgress.value.clamp(0.0, 1.0),
              min: 0,
              max: 1,
              onChanged: (value) {
                widget.reader.scrollProgress.value = value;
                widget.reader.jumpToProgress(value);
              },
            ),
          );
        }),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 42,
              child: Visibility(
                visible: previous != null,
                child: _buildControlButton(
                  icon: Icons.skip_previous_rounded,
                  onPressed: () => onChapterClick(
                    context,
                    previous!,
                    source,
                    media,
                    () => Get.back(),
                  ),
                ),
              ),
            ),
            Obx(
              () => Text(
                "${(widget.reader.scrollProgress.value * 100).toStringAsFixed(0)}%",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 42,
              child: Visibility(
                visible: next != null,
                child: _buildControlButton(
                  icon: Icons.skip_next_rounded,
                  onPressed: () => onChapterClick(
                    context,
                    next!,
                    source,
                    media,
                    () => Get.back(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showTextSettingsDialog() {
    showCustomBottomDialog(
      context,
      CustomBottomDialog(
        title: 'Reader Settings',
        viewList: [
          StatefulBuilder(
            builder: (context, setState) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Font Size",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            widget.reader.fontSize =
                                (widget.reader.fontSize - 1).clamp(10, 40);
                          });
                          widget.reader.setState(() {});
                          widget.reader.saveSettings();
                        },
                      ),
                      Text(widget.reader.fontSize.toStringAsFixed(0)),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.reader.fontSize =
                                (widget.reader.fontSize + 1).clamp(10, 40);
                          });
                          widget.reader.setState(() {});
                          widget.reader.saveSettings();
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Line Height",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            widget.reader.lineHeight =
                                (widget.reader.lineHeight - 0.1).clamp(
                                  1.0,
                                  3.0,
                                );
                          });
                          widget.reader.setState(() {});
                          widget.reader.saveSettings();
                        },
                      ),
                      Text(widget.reader.lineHeight.toStringAsFixed(1)),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.reader.lineHeight =
                                (widget.reader.lineHeight + 0.1).clamp(
                                  1.0,
                                  3.0,
                                );
                          });
                          widget.reader.setState(() {});
                          widget.reader.saveSettings();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Theme",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _themeSwatch(setState, Colors.black, Colors.white),
                      _themeSwatch(
                        setState,
                        const Color(0xFFF5EEDC),
                        Colors.black,
                      ),
                      _themeSwatch(setState, Colors.white, Colors.black),
                      _themeSwatch(
                        setState,
                        const Color(0xFF1B1B1B),
                        const Color(0xFFCCCCCC),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _themeSwatch(
    void Function(void Function()) setState,
    Color bg,
    Color fg,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.reader.backgroundColor = bg;
          widget.reader.textColor = fg;
        });
        widget.reader.setState(() {});
        widget.reader.saveSettings();
      },
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: bg,
          shape: BoxShape.circle,
          border: Border.all(
            color: widget.reader.backgroundColor == bg
                ? Theme.of(context).colorScheme.primary
                : Colors.grey,
            width: 2,
          ),
        ),
        child: Center(child: Icon(Icons.text_fields, size: 16, color: fg)),
      ),
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
