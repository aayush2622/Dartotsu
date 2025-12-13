import 'package:dartotsu/Logger.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import '../BaseParser.dart';
import 'Widget/MangaCompactSettings.dart';

class MangaParser extends BaseParser {
  var unModifiedChapterList = Rxn<List<DEpisode>>(null);
  var chapterList = Rxn<List<DEpisode>>(null);
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
            var scanlator = element.scanlator;
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

  void getChapter(DMedia? media, Source source) async {
    if (media == null || media.url == null) {
      chapterList.value = <DEpisode>[];
      errorType.value = ErrorType.NotFound;
      return;
    }

    DMedia? m;
    try {
      m = await source.methods.getDetail(media);
    } catch (e) {
      Logger.log(e.toString());
      errorType.value = ErrorType.NoResult;
      m = null;
      return;
    }

    dataLoaded.value = true;
    if (m.episodes == null) {
      chapterList.value = <DEpisode>[];
      errorType.value = ErrorType.NoResult;
      return;
    }
    chapterList.value = m.episodes?.reversed.toList();
    unModifiedChapterList.value = chapterList.value;
    var uniqueScanlators = {
      for (var element in chapterList.value!)
        if (element.scanlator != null) element.scanlator!
    };

    scanlator.value = uniqueScanlators.toList();
    toggledScanlators.value = List<bool>.filled(uniqueScanlators.length, true);
  }
}
