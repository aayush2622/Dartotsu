import 'package:dantotsu/Screens/Info/Tabs/Watch/BaseParser.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../DataClass/Episode.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../api/EpisodeDetails/Anify/Anify.dart';
import '../../../../../api/EpisodeDetails/Jikan/Jikan.dart';
import '../../../../../api/EpisodeDetails/Kitsu/Kitsu.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_chapter.dart';
import '../../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../../api/Mangayomi/Model/Source.dart';
import '../../../../../api/Mangayomi/Search/get_detail.dart';
import '../Functions/ParseChapterNumber.dart';

class AnimeParser extends BaseParser {
  var episodeList = Rxn<Map<String, Episode>>(null);
  var anifyEpisodeList = Rxn<Map<String, Episode>>(null);
  var kitsuEpisodeList = Rxn<Map<String, Episode>>(null);
  var fillerEpisodesList = Rxn<Map<String, Episode>>(null);

  @override
  void reset() {
    super.reset();
    episodeList.value = null;
    anifyEpisodeList.value = null;
    kitsuEpisodeList.value = null;
    fillerEpisodesList.value = null;
  }

  @override
  Future<void> wrongTitle(context, source, mediaData, onChange) async {
    super.wrongTitle(context, source, mediaData, (m) {
      episodeList.value = null;
      getEpisode(m, source);
    });
  }

  @override
  Future<void> searchMedia(source, mediaData,{onFinish}) async {
    episodeList.value = null;
    super.searchMedia(source, mediaData, onFinish: () => getEpisode(selectedMedia.value!, source));
  }

  void getEpisode(MManga media, Source source) async {
    if (media.link == null) return;
    var m = await getDetail(url: media.link!, source: source);

    var chapters = m.chapters;
    episodeList.value = Map.fromEntries(
      chapters?.reversed.map((e) {
            final episode = MChapterToEpisode(e, media);
            return MapEntry(episode.number, episode);
          }) ??
          [],
    );
  }

  var episodeDataLoaded = false.obs;

  Future<void> getEpisodeData(media mediaData) async {
    var a = await Anify.fetchAndParseMetadata(mediaData);
    var k = await Kitsu.getKitsuEpisodesDetails(mediaData);
    anifyEpisodeList.value ??= a;
    kitsuEpisodeList.value ??= k;
    episodeDataLoaded.value = true;
  }

  Future<void> getFillerEpisodes(media mediaData) async {
    var res = await Jikan.getEpisodes(mediaData);
    fillerEpisodesList.value ??= res;
  }
}

Episode MChapterToEpisode(MChapter chapter, MManga? selectedMedia) {
  var episodeNumber = ChapterRecognition()
      .parseChapterNumber(selectedMedia?.name ?? '', chapter.name ?? '');
  return Episode(
    number: episodeNumber != -1 ? episodeNumber.toString() : chapter.name ?? '',
    link: chapter.url,
    title: chapter.name,
    thumb: null,
    desc: null,
    filler: false,
    mChapter: chapter,
  );
}
