import 'package:collection/collection.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Screens/Info/Tabs/Watch/BaseParser.dart';
import 'package:flutter/cupertino.dart';
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
import 'Widget/AnimeCompactSettings.dart';

class AnimeParser extends BaseParser {
  var episodeList = Rxn<Map<String, Episode>>(null);
  var anifyEpisodeList = Rxn<Map<String, Episode>>(null);
  var kitsuEpisodeList = Rxn<Map<String, Episode>>(null);
  var fillerEpisodesList = Rxn<Map<String, Episode>>(null);
  var viewType = 0.obs;

  void init(Media mediaData) async {
    if (dataLoaded.value) return;

    initSettings(mediaData);
    await Future.wait([
      getEpisodeData(mediaData),
      getFillerEpisodes(mediaData),
    ]);
  }

  var dataLoaded = false.obs;
  var reversed = false.obs;
  void initSettings(Media mediaData) {
    var selected = loadSelected(mediaData);
    viewType.value = selected.recyclerStyle!;
    reversed.value = selected.recyclerReversed;
  }
  void settingsDialog(BuildContext context, Media media) =>
      AnimeCompactSettings(
        context,
        media,
        (s) {
          viewType.value = s.recyclerStyle!;
          reversed.value = s.recyclerReversed;
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
      episodeList.value = null;
      getEpisode(m, source.value!);
    });
  }

  @override
  Future<void> searchMedia(
    source,
    mediaData, {
    onFinish,
  }) async {
    episodeList.value = null;
    super.searchMedia(
      source,
      mediaData,
      onFinish: (r) => getEpisode(r, source),
    );
  }

  void getEpisode(MManga media, Source source) async {
    if (media.link == null) return;
    var m = await getDetail(url: media.link!, source: source);

    dataLoaded.value = true;
    var chapters = m.chapters;
    var isFirst = true;
    var shouldNormalize = false;
    var additionalIndex = 0;
    episodeList.value = Map.fromEntries(
      chapters?.reversed.mapIndexed((index, chapter) {
            final episode = MChapterToEpisode(chapter, media);

            if (isFirst) {
              isFirst = false;
              if (episode.number.toDouble() > 3.0) {
                shouldNormalize = true;
              }
            }

            if (shouldNormalize) {
              if (episode.number.toDouble() % 1 != 0) {
                additionalIndex--;
                var remainder = (episode.number.toDouble() % 1)
                    .toStringAsFixed(2)
                    .toDouble();
                episode.number =
                    (index + 1 + remainder + additionalIndex).toString();
              } else {
                episode.number = (index + 1 + additionalIndex).toString();
              }
            }

            return MapEntry(episode.number, episode);
          }) ??
          [],
    );
  }

  var episodeDataLoaded = false.obs;

  Future<void> getEpisodeData(Media mediaData) async {
    var a = await Anify.fetchAndParseMetadata(mediaData);
    var k = await Kitsu.getKitsuEpisodesDetails(mediaData);
    anifyEpisodeList.value ??= a;
    kitsuEpisodeList.value ??= k;
    episodeDataLoaded.value = true;
  }

  Future<void> getFillerEpisodes(Media mediaData) async {
    var res = await Jikan.getEpisodes(mediaData);
    fillerEpisodesList.value ??= res;
  }

  Episode MChapterToEpisode(MChapter chapter, MManga? selectedMedia) {
    var episodeNumber = ChapterRecognition.parseChapterNumber(
        selectedMedia?.name ?? '', chapter.name ?? '');
    return Episode(
      number:
          episodeNumber != -1 ? episodeNumber.toString() : chapter.name ?? '',
      link: chapter.url,
      title: chapter.name,
      thumb: null,
      desc: null,
      filler: false,
      mChapter: chapter,
    );
  }
}
