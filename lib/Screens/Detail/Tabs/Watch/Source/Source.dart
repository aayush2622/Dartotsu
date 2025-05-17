import 'package:dartotsu/DataClass/Media.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Adaptor/Chapter/ChapterAdaptor.dart';
import '../../../../../Adaptor/Episode/EpisodeAdaptor.dart';
import '../../../../../DataClass/Chapter.dart';
import '../../../../../Theme/LanguageSwitcher.dart';
import '../../../../../Widgets/ScrollConfig.dart';
import '../Anime/Widget/AnimeCompactSettings.dart' as a;
import '../Anime/Widget/BuildChunkSelector.dart' as a;
import '../Manga/Widget/BuildChunkSelector.dart' as m;
import '../Manga/Widget/MangaCompactSettings.dart' as m;

class Source extends StatefulWidget {
  final Media media;
  final bool isManga;

  Source({super.key, required this.media}) : isManga = media.anime == null;

  @override
  SourceState createState() => SourceState();
}

class SourceState extends State<Source> {
  var viewType = 0.obs;
  var reverse = false.obs;
  var scanlator = Rxn<List<String>>(null);
  var toggledScanlators = Rxn<List<bool>>(null);
  var unModifiedChapterList = Rxn<List<Chapter>>(null);
  var chapterList = Rxn<List<Chapter>>(null);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(),
      child: widget.isManga ? _buildChapterList() : _buildEpisodeList(),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.isManga) {
      chapterList.value = widget.media.manga?.chapters ?? [];
      unModifiedChapterList.value = chapterList.value;
      var uniqueScanlators = {
        for (var element in chapterList.value!)
          if (element.mChapter?.scanlator != null) element.mChapter!.scanlator!
      };

      scanlator.value = uniqueScanlators.toList();
      toggledScanlators.value =
          List<bool>.filled(uniqueScanlators.length, true);
    }
  }

  Widget _buildChapterList() {
    if (chapterList.value!.isEmpty) return Container();
    var (chunks, initChunkIndex) = m.buildChunks(
        context, chapterList.value!, widget.media.userProgress.toString());

    RxInt selectedChunkIndex = (-1).obs;
    selectedChunkIndex =
        selectedChunkIndex.value == -1 ? initChunkIndex : selectedChunkIndex;
    return ScrollConfig(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTitle(),
          m.buildChunkSelector(
            context,
            chunks,
            selectedChunkIndex,
            reverse,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 4),
            child: Obx(() {
              List<List<Chapter>> reversed = reverse.value
                  ? chunks.map((element) => element.reversed.toList()).toList()
                  : chunks;

              return ChapterAdaptor(
                type: viewType.value,
                source: widget.media.sourceData!,
                chapterList: reversed[selectedChunkIndex.value],
                mediaData: widget.media,
              );
            }),
          )
        ],
      ),
    );
  }

  Widget _buildEpisodeList() {
    var episodeList = widget.media.anime?.episodes ?? {};
    if (episodeList.isEmpty) return Container();
    var (chunk, initChunkIndex) = a.buildChunks(
        context, episodeList, widget.media.userProgress.toString());

    RxInt selectedChunkIndex = (-1).obs;
    selectedChunkIndex =
        selectedChunkIndex.value == -1 ? initChunkIndex : selectedChunkIndex;

    return ScrollConfig(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildTitle(),
          a.ChunkSelector(
            context,
            chunk,
            selectedChunkIndex,
            reverse,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: Obx(
              () {
                var reversed = reverse.value
                    ? chunk.map((element) => element.reversed.toList()).toList()
                    : chunk;
                return EpisodeAdaptor(
                  type: viewType.value,
                  source: widget.media.sourceData!,
                  episodeList: reversed[selectedChunkIndex.value],
                  mediaData: widget.media,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.isManga
                ? getString.chapter(widget.media.manga?.chapters?.length ?? 1)
                : getString.episode(widget.media.anime?.episodes?.length ?? 1),
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          IconButton(
            onPressed: () =>
                widget.isManga ? mangaSettingsDialog() : animeSettingsDialog(),
            icon: Icon(
              Icons.menu_rounded,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }

  void animeSettingsDialog() => a.AnimeCompactSettings(
        context,
        widget.media,
        widget.media.sourceData,
        (i) {
          viewType.value = i.viewType;
          reverse.value = i.isReverse;
        },
      ).showDialog();

  void mangaSettingsDialog() => m.MangaCompactSettings(
        context,
        widget.media,
        widget.media.sourceData,
        scanlator.value,
        toggledScanlators.value,
        (i, t) {
          viewType.value = i.viewType;
          reverse.value = i.isReverse;
          toggledScanlators.value = t;
          chapterList.value = unModifiedChapterList.value?.where((element) {
            var scanlator = element.mChapter?.scanlator;
            return scanlator == null ||
                toggledScanlators
                    .value![this.scanlator.value?.indexOf(scanlator) ?? 0];
          }).toList();
        },
      ).showDialog();
}
