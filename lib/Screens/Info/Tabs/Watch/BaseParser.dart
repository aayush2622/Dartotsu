import 'package:flutter/cupertino.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

import '../../../../DataClass/Media.dart';
import '../../../../Preferences/HiveDataClasses/Selected/Selected.dart';
import '../../../../Preferences/HiveDataClasses/ShowResponse/ShowResponse.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Widgets/CustomBottomDialog.dart';
import '../../../../api/Mangayomi/Eval/dart/model/m_manga.dart';
import '../../../../api/Mangayomi/Model/Source.dart';
import '../../../../api/Mangayomi/Search/search.dart';
import 'Widgets/WrongTitle.dart';

abstract class BaseParser extends GetxController {
  var selectedMedia = Rxn<MManga?>(null);
  var status = Rxn<String>(null);

  @mustCallSuper
  reset() {
    selectedMedia.value = null;
    status.value = null;
  }

  void saveSelected(int id , Selected data) {
    PrefManager.setCustomVal("Selected-$id", data);
  }

  Selected loadSelected(media mediaData) {
    return PrefManager.getCustomVal("Selected-${mediaData.id}") ?? Selected();
  }

  Future<void> searchMedia(Source source, media mediaData, {Function()? onFinish}) async {
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
      onFinish?.call();
      return;
    }
    MManga? response;
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
        response = closestRomaji;
      } else {
        var romajiRatio = ratio(closestRomaji?.name?.toLowerCase() ?? '',
            mediaData.nameRomaji.toLowerCase());
        var mainNameRatio = ratio(
            response.name!.toLowerCase(), mediaData.mainName().toLowerCase());
        if (romajiRatio > mainNameRatio) {
          response = closestRomaji;
        }
      }
    }
    _saveShowResponse(mediaData, response, source);
    selectedMedia.value = response;
    if (response != null) {
      onFinish?.call();
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

  Future<void> wrongTitle(
      BuildContext context,
      Source source,
      media mediaData,
      Function(MManga)? onChange) async {
    var dialog = WrongTitleDialog(
        source: source,
        selectedMedia: selectedMedia,
        onChanged: (m) {
          selectedMedia.value = m;
          _saveShowResponse(mediaData, m, source, selected: true);
          onChange?.call(m);
        });
    showCustomBottomDialog(context, dialog);
  }
}
