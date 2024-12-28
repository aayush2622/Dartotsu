import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../DataClass/Chapter.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/PrefManager.dart';
import '../../../../../Preferences/Preferences.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_chapter.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../../api/Mangayomi/Search/get_detail.dart';
import '../BaseParser.dart';
import '../Functions/ParseChapterNumber.dart';

class MangaParser extends BaseParser {
  var chapterList = Rxn<List<Chapter>>(null);
  var viewType = 0.obs;
  var dataLoaded = false.obs;
  var reversed = false.obs;
  void init(Media mediaData) async {
    if (dataLoaded.value) return;
    viewType.value = mediaData.selected?.recyclerStyle ??
        PrefManager.getVal(PrefName.MangaDefaultView);
    reversed.value = mediaData.selected?.recyclerReversed ?? false;
  }

  @override
  Future<void> wrongTitle(
      context,
      mediaData,
      onChange,
      ) async {
    super.wrongTitle(context, mediaData, (
        m,
        ) {
      chapterList.value = null;
      getChapter(m, source.value!);
    });
  }
  @override
  Future<void> searchMedia(
      source,
      mediaData, {
        onFinish,
      }) async {
    chapterList.value = null;
    super.searchMedia(
      source,
      mediaData,
      onFinish: (r) => getChapter(r, source),
    );
  }
  void getChapter(MManga media, Source source) async {
    if (media.link == null) return;
    var m = await getDetail(url: media.link!, source: source);
    dataLoaded.value = true;
    chapterList.value = m.chapters?.reversed.map((e) => MChapterToChapter(e, media)).toList();
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
}
