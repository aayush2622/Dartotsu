import 'package:collection/collection.dart';
import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Watch/BaseParser.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../Api/EpisodeDetails/Anify/Anify.dart';
import '../../../../../Api/EpisodeDetails/Jikan/Jikan.dart';
import '../../../../../Api/EpisodeDetails/Kitsu/Kitsu.dart';
import '../../../../../Api/Sources/Eval/dart/model/m_chapter.dart';
import '../../../../../Api/Sources/Eval/dart/model/m_manga.dart';
import '../../../../../Api/Sources/Model/Source.dart';
import '../../../../../Api/Sources/Search/get_detail.dart';
import '../../../../../DataClass/Episode.dart';
import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
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
    viewType.value = mediaData.settings.viewType;
    reversed.value = mediaData.settings.isReverse;
  }

  void settingsDialog(BuildContext context, Media media) =>
      AnimeCompactSettings(
        context,
        media,
        source.value,
        (s) {
          viewType.value = s.viewType;
          reversed.value = s.isReverse;
          MediaSettings.saveMediaSettings(
            media
              ..settings.viewType = s.viewType
              ..settings.isReverse = s.isReverse,
          );
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

  void getEpisode(MManga? media, Source source) async {
    if (media == null || media.link == null) {
      episodeList.value = <String, Episode>{};
      errorType.value = ErrorType.NotFound;
      return;
    }

    MManga? m;
    try {
      m = await getDetail(url: media.link!, source: source);
    } catch (e) {
      errorType.value = ErrorType.NoResult;
      return;
    }

    dataLoaded.value = true;
    var chapters = m.chapters;
    if (chapters == null) {
      episodeList.value = <String, Episode>{};
      errorType.value = ErrorType.NoResult;
      return;
    }

    var isFirst = true;
    var shouldNormalize = false;
    var additionalIndex = 0;
    var episodeNumbers = <String, int>{};

    episodeList.value = Map.fromEntries(
      chapters.reversed.mapIndexed((index, chapter) {
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
            var remainder =
                (episode.number.toDouble() % 1).toStringAsFixed(2).toDouble();
            episode.number =
                (index + 1 + remainder + additionalIndex).toString();
          } else {
            episode.number = (index + 1 + additionalIndex).toString();
          }
        }

        var baseNumber = episode.number;
        if (episodeNumbers.containsKey(baseNumber)) {
          episodeNumbers[baseNumber] = episodeNumbers[baseNumber]! + 1;
          episode.number = '$baseNumber.${episodeNumbers[baseNumber]}';
        } else {
          episodeNumbers[baseNumber] = 1;
        }

        return MapEntry(episode.number, episode);
      }),
    );
  }

  var episodeDataLoaded = false.obs;

  Future<void> getEpisodeData(Media mediaData) async {
    Future.delayed(const Duration(seconds: 5), () {
      episodeDataLoaded.value = true;
    });
    var data = await Future.wait([
      Anify.fetchAndParseMetadata(mediaData),
      Kitsu.getKitsuEpisodesDetails(mediaData)
    ]);
    anifyEpisodeList.value ??= data[0];
    kitsuEpisodeList.value ??= data[1];
  }

  Future<void> getFillerEpisodes(Media mediaData) async {
    var res = await Jikan.getEpisodes(mediaData);
    fillerEpisodesList.value ??= res;
  }
}

Episode MChapterToEpisode(MChapter chapter, MManga? selectedMedia) {
  var episodeNumber = ChapterRecognition.parseChapterNumber(
      selectedMedia?.name ?? '', chapter.name ?? '');
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
