import 'package:dartotsu/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../Api/Sources/Eval/dart/model/m_chapter.dart';
import '../../../../../Api/Sources/Eval/dart/model/m_manga.dart';
import '../../../../../Api/Sources/Model/Source.dart';
import '../../../../../Api/Sources/Search/get_detail.dart';
import '../../../../../DataClass/Chapter.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import '../BaseParser.dart';
import '../Functions/ParseChapterNumber.dart';
import 'Widget/MangaCompactSettings.dart';

class MangaParser extends BaseParser {
  var unModifiedChapterList = Rxn<List<Chapter>>(null);
  var chapterList = Rxn<List<Chapter>>(null);
  var dataLoaded = false.obs;

  void init(Media mediaData) async {
    viewType.value = mediaData.settings.viewType;
    reversed.value = mediaData.settings.isReverse;
  }

  var viewType = 0.obs;
  var reversed = false.obs;
  var scanlator = Rxn<List<String>>(null);
  var toggledScanlators = Rxn<List<bool>>(null);

  void settingsDialog(BuildContext context, Media media) =>
      MangaCompactSettings(
        context,
        media,
        source.value,
        scanlator.value,
        toggledScanlators.value,
        (s, t) {
          viewType.value = s.viewType;
          reversed.value = s.isReverse;
          toggledScanlators.value = t;
          chapterList.value = unModifiedChapterList.value?.where((element) {
            var scanlator = element.mChapter?.scanlator;
            return scanlator == null ||
                toggledScanlators
                    .value![this.scanlator.value?.indexOf(scanlator) ?? 0];
          }).toList();
          MediaSettings.saveMediaSettings(media
            ..settings.viewType = s.viewType
            ..settings.isReverse = s.isReverse);
        },
      ).showDialog();

  @override
  Future<void> wrongTitle(
    context,
    mediaData,
    onChange,
  ) async {
    super.wrongTitle(context, mediaData, (
      m,
    ) {
      unModifiedChapterList.value = null;
      chapterList.value = null;
      scanlator.value = null;
      toggledScanlators.value = null;
      getChapter(m, source.value!);
    });
  }

  @override
  Future<void> searchMedia(
    source,
    mediaData, {
    onFinish,
  }) async {
    unModifiedChapterList.value = null;
    chapterList.value = null;
    scanlator.value = null;
    toggledScanlators.value = null;
    super.searchMedia(
      source,
      mediaData,
      onFinish: (r) => getChapter(r, source),
    );
  }

  void getChapter(MManga? media, Source source) async {
    if (media == null || media.link == null) {
      chapterList.value = <Chapter>[];
      errorType.value = ErrorType.NotFound;
      return;
    }

    MManga? m;
    try {
      m = await getDetail(url: media.link!, source: source);
    } catch (e) {
      Logger.log(e.toString());
      errorType.value = ErrorType.NoResult;
      m = null;
      return;
    }

    dataLoaded.value = true;
    if (m.chapters == null) {
      chapterList.value = <Chapter>[];
      errorType.value = ErrorType.NoResult;
      return;
    }
    chapterList.value =
        m.chapters?.reversed.map((e) => MChapterToChapter(e, media)).toList();
    unModifiedChapterList.value = chapterList.value;
    var uniqueScanlators = {
      for (var element in chapterList.value!)
        if (element.mChapter?.scanlator != null) element.mChapter!.scanlator!
    };

    scanlator.value = uniqueScanlators.toList();
    toggledScanlators.value = List<bool>.filled(uniqueScanlators.length, true);
  }
}

Chapter MChapterToChapter(MChapter chapter, MManga? selectedMedia) {
  var episodeNumber = ChapterRecognition.parseChapterNumber(
      selectedMedia?.name ?? '', chapter.name ?? '');
  return Chapter(
    title: chapter.name,
    link: chapter.url,
    number: episodeNumber.toString(),
    date: chapter.dateUpload,
    mChapter: chapter,
  );
}
