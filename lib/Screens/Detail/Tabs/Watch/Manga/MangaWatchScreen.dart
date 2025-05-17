import 'package:dartotsu/Screens/Detail/Tabs/Watch/BaseParser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Adaptor/Chapter/ChapterAdaptor.dart';
import '../../../../../DataClass/Chapter.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Theme/LanguageSwitcher.dart';
import '../BaseWatchScreen.dart';
import 'MangaParser.dart';
import 'Widget/BuildChunkSelector.dart';
import 'Widget/ContinueCard.dart';

class MangaWatchScreen extends StatefulWidget {
  final Media mediaData;

  const MangaWatchScreen({super.key, required this.mediaData});

  @override
  MangaWatchScreenState createState() => MangaWatchScreenState();
}

class MangaWatchScreenState extends BaseWatchScreen<MangaWatchScreen> {
  late MangaParser _viewModel;

  @override
  Media get mediaData => widget.mediaData;

  @override
  BaseParser get viewModel => _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Get.put(MangaParser(), tag: widget.mediaData.id.toString());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.init(widget.mediaData);
    });
  }

  @override
  get widgetList => [_buildChapterList()];

  Widget _buildChapterList() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        Obx(() {
          var chapterList = _viewModel.chapterList.value;
          if (chapterList == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (chapterList.isEmpty) {
            return Column(
              children: [
                Center(
                  child: Text(
                    _viewModel.errorType.value == ErrorType.NotFound
                        ? getString.mediaNotFound
                        : getString.noChapterFound,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          }
          widget.mediaData.manga?.chapters = chapterList;
          var (chunks, initChunkIndex) = buildChunks(
              context, chapterList, widget.mediaData.userProgress.toString());

          var selectedChapter = chapterList.firstWhereOrNull((element) =>
              element.number ==
              ((widget.mediaData.userProgress ?? 0) + 1).toString());

          RxInt selectedChunkIndex = (-1).obs;
          selectedChunkIndex = selectedChunkIndex.value == -1
              ? initChunkIndex
              : selectedChunkIndex;

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContinueCard(
                mediaData: widget.mediaData,
                chapter: selectedChapter,
                source: _viewModel.source.value!,
              ),
              buildChunkSelector(
                context,
                chunks,
                selectedChunkIndex,
                _viewModel.reversed,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                child: Obx(() {
                  List<List<Chapter>> reversed = _viewModel.reversed.value
                      ? chunks
                          .map((element) => element.reversed.toList())
                          .toList()
                      : chunks;

                  return ChapterAdaptor(
                    type: _viewModel.viewType.value,
                    source: _viewModel.source.value!,
                    chapterList: reversed[selectedChunkIndex.value],
                    mediaData: widget.mediaData,
                  );
                }),
              )
            ],
          );
        })
      ],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              getString.chapter(_viewModel.chapterList.value?.length ?? 1),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            onPressed: () => _viewModel.settingsDialog(context, mediaData),
            icon: Icon(
              Icons.menu_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
