import 'package:collection/collection.dart';
import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu/Screens/Detail/Tabs/Watch/BaseParser.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../Api/EpisodeDetails/Anify/Anify.dart';
import '../../../../../Api/EpisodeDetails/Jikan/Jikan.dart';
import '../../../../../Api/EpisodeDetails/Kitsu/Kitsu.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import 'Widget/AnimeCompactSettings.dart';

class AnimeParser extends BaseParser {
  var episodeList = Rxn<Map<String, DEpisode>>(null);
  var anifyEpisodeList = Rxn<Map<String, DEpisode>>(null);
  var kitsuEpisodeList = Rxn<Map<String, DEpisode>>(null);
  var fillerEpisodesList = Rxn<Map<String, DEpisode>>(null);
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

  void getEpisode(DMedia? media, Source source) async {
    if (media == null || media.url == null) {
      episodeList.value = <String, DEpisode>{};
      errorType.value = ErrorType.NotFound;
      return;
    }

    DMedia? m;
    try {
      m = await source.methods.getDetail(media);
    } catch (e) {
      errorType.value = ErrorType.NoResult;
      return;
    }

    dataLoaded.value = true;
    var chapters = m.episodes;
    if (chapters == null) {
      episodeList.value = <String, DEpisode>{};
      errorType.value = ErrorType.NoResult;
      return;
    }

    var isFirst = true;
    var shouldNormalize = false;
    var additionalIndex = 0;
    var episodeNumbers = <String, int>{};

    episodeList.value = Map.fromEntries(
      chapters.reversed.mapIndexed((index, chapter) {
        final episode = chapter;
        if (isFirst) {
          isFirst = false;
          if (episode.episodeNumber.toDouble() > 3.0) {
            shouldNormalize = true;
          }
        }

        if (shouldNormalize) {
          if (episode.episodeNumber.toDouble() % 1 != 0) {
            additionalIndex--;
            var remainder = (episode.episodeNumber.toDouble() % 1)
                .toStringAsFixed(2)
                .toDouble();
            episode.episodeNumber =
                (index + 1 + remainder + additionalIndex).toString();
          } else {
            episode.episodeNumber = (index + 1 + additionalIndex).toString();
          }
        }

        var baseNumber = episode.episodeNumber;
        if (episodeNumbers.containsKey(baseNumber)) {
          episodeNumbers[baseNumber] = episodeNumbers[baseNumber]! + 1;
          episode.episodeNumber = '$baseNumber.${episodeNumbers[baseNumber]}';
        } else {
          episodeNumbers[baseNumber] = 1;
        }

        return MapEntry(episode.episodeNumber, episode);
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
