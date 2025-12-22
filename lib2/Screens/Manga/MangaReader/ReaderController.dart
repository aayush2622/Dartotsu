import 'package:collection/collection.dart';
import 'package:dartotsu/Adaptor/Chapter/ChapterAdaptor.dart';
import 'package:dartotsu/Services/Model/Media.dart';
import 'package:dartotsu/Functions/Extensions/IntExtensions.dart';
import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultReaderSettings/DefaultReaderSettings.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Api/Discord/Discord.dart';
import '../../../Api/Discord/DiscordService.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Widgets/CustomBottomDialog.dart';
import '../../Settings/SettingsReaderScreen.dart';
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
  late DEpisode currentChapter;

  @override
  void initState() {
    super.initState();
    media = widget.reader.widget.media;
    currentChapter = widget.reader.widget.currentChapter;
    var sourceName = context.currentService(listen: false).getName;
    var key = "${media.id}-${currentChapter.episodeNumber}-$sourceName";
    pages = widget.reader.widget.pages;
    source = widget.reader.widget.source;
    var page = loadCustomData<int>("$key-current") ?? 1;

    Future.delayed(const Duration(milliseconds: 100), () {
      media.settings.readerSettings.layoutType == LayoutType.Paged
          ? widget.reader.pageController.jumpToPage(page - 1)
          : widget.reader.itemScrollController.jumpTo(index: page - 1);
    });

    ever(widget.reader.currentPage, (int page) {
      saveCustomData("$key-current", page);
    });
  }

  @override
  void dispose() {
    if (DiscordService.isInitialized) DiscordService.stopRPC();
    super.dispose();
  }

  Future<void> setDiscordRpc() async {
    Discord.setRpc(
      media,
      episode: currentChapter,
    );
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
                  "Chapter ${currentChapter.episodeNumber}: ${currentChapter.episodeNumber}",
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
          onPressed: () {
            showCustomBottomDialog(
              context,
              CustomBottomDialog(
                title: 'Reader Settings',
                viewList: [
                  StatefulBuilder(
                    builder: (context, state) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: readerSettings(
                          context,
                          widget.reader.setState,
                          media: media,
                          dialogSetState: state,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBottomControls() {
    var chapterList = media.manga!.chapters!.toList();
    var index = chapterList.indexOf(currentChapter);

    var sortedList = chapterList.toList()
      ..sort((a, b) =>
          a.episodeNumber.toDouble().compareTo(b.episodeNumber.toDouble()));

    var previous = sortedList.lastWhereOrNull((c) =>
            c.episodeNumber.toDouble() <
            currentChapter.episodeNumber.toDouble()) ??
        (index > 0 ? chapterList[index - 1] : null);

    var next = sortedList.firstWhereOrNull((c) =>
            c.episodeNumber.toDouble() >
            currentChapter.episodeNumber.toDouble()) ??
        (index < chapterList.length - 1 ? chapterList[index + 1] : null);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!media.settings.readerSettings.hideScrollbar == true)
          Obx(
            () {
              return SizedBox(
                height: 42,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Theme.of(context).colorScheme.primary,
                      activeTrackColor: Theme.of(context).colorScheme.primary,
                      inactiveTrackColor:
                          const Color.fromARGB(255, 121, 121, 121),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 6),
                      overlayShape: SliderComponentShape.noOverlay,
                      trackShape: const RoundedRectSliderTrackShape(),
                    ),
                    child: Slider(
                      value: widget.reader.currentPage.value.toDouble(),
                      min: 1,
                      max: pages.length.toDouble(),
                      divisions: pages.length - 1,
                      onChanged: (value) {
                        widget.reader.currentPage.value = value.toInt();
                        if (media.settings.readerSettings.layoutType ==
                            LayoutType.Paged) {
                          widget.reader.pageController
                              .jumpToPage(value.toInt() - 1);
                        } else {
                          widget.reader.itemScrollController.jumpTo(
                            index: value.toInt() - 1,
                          );
                        }
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: (MediaQuery.of(context).size.width - 48) * 0.5,
                child: Visibility(
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
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          previous?.name.toString() ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width - 48) * 0.5,
                child: Visibility(
                  visible: next != null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          next?.name.toString() ?? '',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
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
                ),
              ),
            ],
          ),
        ),
        if (!media.settings.readerSettings.hidePageNumber == true)
          Obx(
            () {
              return Center(
                child: Text(
                  "${widget.reader.currentPage}/${pages.length}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
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
