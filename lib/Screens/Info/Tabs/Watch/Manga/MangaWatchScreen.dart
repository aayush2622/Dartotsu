import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseParser.dart';
import 'package:dantotsu/Widgets/AlertDialogBuilder.dart';
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
    widget.mediaData.selected = _viewModel.loadSelected(widget.mediaData);
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
          if (chapterList == null || chapterList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
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
                  List<List<Chapter>> reversed;
                  if (_viewModel.reversed.value) {
                    reversed = chunks
                        .map((element) => element.reversed.toList())
                        .toList();
                  } else {
                    reversed = chunks;
                  }
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
              getString.chapters,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            onPressed: () => toggleScanlators(),
            icon: Icon(
              Icons.filter_list,
            ),
          ),
          Obx(() {
            return IconButton(
              onPressed: () {
                _viewModel.reversed.value = !_viewModel.reversed.value;
                var type = _viewModel.loadSelected(mediaData);
                type.recyclerReversed = _viewModel.reversed.value;
                _viewModel.saveSelected(mediaData.id, type);
              },
              icon: Icon(
                _viewModel.reversed.value
                    ? Icons.arrow_downward
                    : Icons.arrow_upward,
              ),
            );
          }),
          _buildIconButtons(),
        ],
      ),
    );
  }

  Widget _buildIconButtons() {
    final theme = Theme.of(context).colorScheme;
    final icons = [
      Icons.view_list_sharp,
      Icons.view_comfy_rounded,
    ];
    var viewType = _viewModel.viewType;

    return Obx(() {
      return Row(
        children: List.generate(icons.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Transform(
                alignment: Alignment.center,
                transform: index == 0
                    ? Matrix4.rotationY(3.14159)
                    : Matrix4.identity(),
                child: Icon(icons[index]),
              ),
              iconSize: 24,
              color: viewType.value == index
                  ? theme.onSurface
                  : theme.onSurface.withValues(alpha: 0.33),
              onPressed: () => changeViewType(viewType, index),
            ),
          );
        }),
      );
    });
  }

  void changeViewType(RxInt viewType, int index) {
    var type = _viewModel.loadSelected(mediaData);
    viewType.value = index;
    type.recyclerStyle = index;
    _viewModel.saveSelected(mediaData.id, type);
  }

  var chapters = <Chapter>[];
  var selectedScanlators = <bool>[];
  var init = true;

  void toggleScanlators() {
    var chapterList = init ? _viewModel.chapterList.value : chapters;
    if (chapterList == null || chapterList.isEmpty) return;

    if (init) {
      chapters = chapterList;
      init = false;
    }

    var uniqueScanlators = {
      for (var element in chapters)
        if (element.mChapter?.scanlator != null) element.mChapter!.scanlator!
    };
    var allScanlators = uniqueScanlators.toList();

    if (allScanlators.isEmpty || allScanlators.length == 1) return;

    selectedScanlators = selectedScanlators.isEmpty
        ? List<bool>.filled(allScanlators.length, true)
        : selectedScanlators;

    var tempList = <bool>[];
    AlertDialogBuilder(context)
      ..setTitle('Scanlators')
      ..multiChoiceItems(
        allScanlators,
        selectedScanlators,
        (selected) {
          tempList = selected;
        },
      )
      ..setPositiveButton(getString.ok, () {
        selectedScanlators = tempList;
        _viewModel.chapterList.value = chapters.where((element) {
          var scanlator = element.mChapter?.scanlator;
          return scanlator == null ||
              selectedScanlators[allScanlators.indexOf(scanlator)];
        }).toList();
      })
      ..setNegativeButton(getString.cancel, () {})
      ..show();
  }
}
