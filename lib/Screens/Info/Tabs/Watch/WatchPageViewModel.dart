import 'dart:async';

import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/Preferences/Hive%20DataClasses/ShowResponse/ShowResponse.dart';
import 'package:dantotsu/api/Mangayomi/Search/get_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

import '../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import '../../../../api/Mangayomi/Search/search.dart';


class WatchPageViewModel extends GetxController {
  var selectedMedia = Rxn<MManga?>(null);
  var status = Rxn<String>(null);

  reset() {
    selectedMedia.value = null;
    status.value = null;
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
    final mediaFuture = searchTest(
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
      final mediaFuture = searchTest(
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
    var mediaFuture = getDetailTest(url: media.link!, source: source);
    var mediaD = await mediaFuture;

    var mediaData = MManga(
      name: media.name,
      imageUrl: media.imageUrl,
      link: media.link,
      chapters: mediaD.chapters?.reversed.toList(),
      description: mediaD.description,
    );
    selectedMedia.value = mediaData;
  }
}
