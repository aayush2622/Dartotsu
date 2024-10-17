import 'dart:async';

import 'package:dantotsu/DataClass/Episode.dart';
import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Preferences/HiveDataClasses/ShowResponse/ShowResponse.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Screens/Info/Tabs/Watch/Widgets/WrongTitle.dart';
import 'package:dantotsu/api/EpisodeDetails/Anify/Anify.dart';
import 'package:dantotsu/api/Mangayomi/Eval/dart/model/m_chapter.dart';
import 'package:dantotsu/api/Mangayomi/Search/get_detail.dart';
import 'package:flutter/material.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

import '../../../../Widgets/CustomBottomDialog.dart';
import '../../../../api/EpisodeDetails/Jikan/Jikan.dart';
import '../../../../api/EpisodeDetails/Kitsu/Kitsu.dart';
import '../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import '../../../../api/Mangayomi/Search/search.dart';
import 'Functions/ParseChapterNumber.dart';

class WatchPageViewModel extends GetxController {
  var selectedMedia = Rxn<MManga?>(null);
  var status = Rxn<String>(null);
  var episodeList = Rxn<Map<String, Episode>>(null);
  var anifyEpisodeList = Rxn<Map<String, Episode>>(null);
  var kitsuEpisodeList = Rxn<Map<String, Episode>>(null);
  var fillerEpisodesList = Rxn<Map<String, Episode>>(null);

  reset() {
    selectedMedia.value = null;
    status.value = null;
    episodeList.value = null;
    anifyEpisodeList.value = null;
    kitsuEpisodeList.value = null;
    fillerEpisodesList.value = null;
    episodeDataLoaded.value = false;
  }

  Future<void> searchMedia(Source source, media mediaData) async {
    selectedMedia.value = null;
    var saved = _loadShowResponse(source, mediaData);
    if (saved != null) {
      var response = MManga(
        name: saved.name,
        imageUrl: saved.coverUrl,
        link: saved.link,
      );
      selectedMedia.value = response;
      _saveShowResponse(mediaData, response, source, selected: true);
      _getEpisode(selectedMedia.value!, source);
      return;
    }
    MManga? response;
    debugPrint("Searching : ${mediaData.mainName()}");
    status.value = "Searching : ${mediaData.mainName()}";
    final mediaFuture = search(
      source: source,
      page: 1,
      query: mediaData.mainName(),
      filterList: [],
    );

    final media = await mediaFuture;

    List<MManga> sortedResults = media!.list.isNotEmpty
        ? (media.list
          ..sort((a, b) {
            final aRatio = ratio(
                a.name!.toLowerCase(), mediaData.mainName().toLowerCase());
            final bRatio = ratio(
                b.name!.toLowerCase(), mediaData.mainName().toLowerCase());
            return bRatio.compareTo(aRatio);
          }))
        : [];
    sortedResults.firstOrNull;
    response = sortedResults.firstOrNull;

    if (response == null ||
        ratio(response.name!.toLowerCase(),
                mediaData.mainName().toLowerCase()) <
            100) {
      debugPrint("Searching : ${mediaData.nameRomaji}");
      status.value = "Searching : ${mediaData.nameRomaji}";
      final mediaFuture = search(
        source: source,
        page: 1,
        query: mediaData.nameRomaji,
        filterList: [],
      );
      final media = await mediaFuture;
      List<MManga> sortedRomajiResults = media!.list.isNotEmpty
          ? (media.list
            ..sort((a, b) {
              final aRatio = ratio(
                  a.name!.toLowerCase(), mediaData.nameRomaji.toLowerCase());
              final bRatio = ratio(
                  b.name!.toLowerCase(), mediaData.nameRomaji.toLowerCase());
              return bRatio.compareTo(aRatio);
            }))
          : [];
      var closestRomaji = sortedRomajiResults.firstOrNull;
      if (response == null) {
        debugPrint(
            "No exact match found in results. Using closest match from RomajiResults.");
        response = closestRomaji;
      } else {
        var romajiRatio = ratio(closestRomaji?.name?.toLowerCase() ?? '',
            mediaData.nameRomaji.toLowerCase());
        var mainNameRatio = ratio(
            response.name!.toLowerCase(), mediaData.mainName().toLowerCase());
        if (romajiRatio > mainNameRatio) {
          debugPrint(
              "Romaji match is better than main name match. Using Romaji match.");
          response = closestRomaji;
        }
      }
    }
    _saveShowResponse(mediaData, response, source);
    selectedMedia.value = response;
    if (response != null) {
      _getEpisode(response, source);
    }
  }

  _loadShowResponse(Source source, media mediaData) {
    return PrefManager.getCustomVal<ShowResponse?>(
        "${source.name}_${mediaData.id}_source");
  }

  _saveShowResponse(media mediaData, MManga? response, Source source,
      {bool selected = false}) {
    if (response != null) {
      status.value =
          selected ? "Selected : ${response.name}" : "Found : ${response.name}";
      var show = ShowResponse(
          name: response.name!,
          link: response.link!,
          coverUrl: response.imageUrl!);
      PrefManager.setCustomVal<ShowResponse>(
          "${source.name}_${mediaData.id}_source", show);
    }
  }

  void _getEpisode(MManga media, Source source) async {
    if (media.link == null) return;
    var m = await getDetail(url: media.link!, source: source);

    var chapters = m.chapters;
    episodeList.value = Map.fromEntries(
      chapters?.reversed.map((e) {
            final episode = MChapterToEpisode(e, media);
            return MapEntry(episode.number, episode);
          }) ?? [],
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

  Future<void> wrongTitle(
      BuildContext context, Source source, media mediaData) async {
    var dialog = WrongTitleDialog(
        source: source,
        mediaData: mediaData,
        selectedMedia: selectedMedia,
        saveShowResponse: _saveShowResponse,
        episodeList: episodeList,
        getEpisode: _getEpisode);

    showCustomBottomDialog(context, dialog);
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
