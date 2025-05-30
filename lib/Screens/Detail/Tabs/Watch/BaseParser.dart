import 'package:async/async.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

import '../../../../Api/Sources/Eval/dart/model/m_manga.dart';
import '../../../../Api/Sources/Model/Manga.dart';
import '../../../../Api/Sources/Model/Source.dart';
import '../../../../Api/Sources/Search/search.dart';
import '../../../../DataClass/Media.dart';
import '../../../../Functions/GetExtensions.dart';
import '../../../../Preferences/IsarDataClasses/ShowResponse/ShowResponse.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Widgets/CustomBottomDialog.dart';
import '../../../Settings/language.dart';
import 'Widgets/WrongTitle.dart';

abstract class BaseParser extends GetxController {
  var selectedMedia = Rxn<MManga?>(null);
  var status = Rxn<String>(null);
  var source = Rxn<Source>(null);
  var errorType = Rxn<ErrorType>(ErrorType.None);

  var sourceList = <Source>[];
  var sourcesLoaded = false.obs;

  void initSourceList(Media media) async {
    var isAnime = media.anime != null;
    final itemType = isAnime
        ? ItemType.anime
        : media.format?.toLowerCase() == 'novel'
            ? ItemType.novel
            : ItemType.manga;
    final sortedSources = await Extensions.getSortedExtension(itemType);
    if (sortedSources.isEmpty) {
      sourcesLoaded.value = true;
      return;
    }
    sourceList = sortedSources;

    String nameAndLang(Source source) {
      bool isDuplicateName =
          sortedSources.where((s) => s.name == source.name).length > 1;

      return isDuplicateName
          ? '${source.name!} - ${completeLanguageName(source.lang!.toLowerCase())}'
          : source.name!;
    }

    var lastUsedSource = media.settings.server;
    if (lastUsedSource == null ||
        !sortedSources.any((e) => nameAndLang(e) == lastUsedSource)) {
      lastUsedSource = nameAndLang(sortedSources.first);
    }

    Source source = sortedSources
            .firstWhereOrNull((e) => nameAndLang(e) == lastUsedSource!) ??
        sortedSources.first;

    this.source.value = source;
    searchMedia(source, media);
    sourcesLoaded.value = true;
  }

  CancelableOperation? _currentOperation;

  Future<void> searchMedia(Source source, Media mediaData,
      {Function(MManga? response)? onFinish}) async {
    _currentOperation?.cancel();

    _currentOperation = CancelableOperation.fromFuture(
      _performSearch(source, mediaData, onFinish),
      onCancel: () {
        status.value = "Search canceled";
      },
    );

    await _currentOperation?.valueOrCancellation();
  }

  Future<void> _performSearch(Source source, Media mediaData,
      Function(MManga? response)? onFinish) async {
    selectedMedia.value = null;
    status.value = "Searching...";
    var saved = _loadShowResponse(source, mediaData);
    if (saved != null) {
      var response = MManga(
        name: saved.name,
        imageUrl: saved.coverUrl,
        link: saved.link,
      );
      selectedMedia.value = response;
      _saveShowResponse(mediaData, response, source, selected: true);
      onFinish?.call(response);
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
    if (response == null) {
      for (var synonym in mediaData.synonyms) {
        if (_isEnglish(synonym)) {
          status.value = "Searching : $synonym";
          final mediaFuture = search(
            source: source,
            page: 1,
            query: synonym,
            filterList: [],
          );
          final media = await mediaFuture;
          List<MManga> sortedResults = media!.list.isNotEmpty
              ? (media.list
                ..sort((a, b) {
                  final aRatio =
                      ratio(a.name!.toLowerCase(), synonym.toLowerCase());
                  final bRatio =
                      ratio(b.name!.toLowerCase(), synonym.toLowerCase());
                  return bRatio.compareTo(aRatio);
                }))
              : [];
          var closest = sortedResults.firstOrNull;
          if (closest != null) {
            if (ratio(closest.name!.toLowerCase(), synonym.toLowerCase()) >
                90) {
              response = closest;
              break;
            }
          }
        }
      }
    }
    if (response != null) {
      _saveShowResponse(mediaData, response, source);
      selectedMedia.value = response;
      onFinish?.call(response);
    } else {
      status.value = "Nothing Found";
      onFinish?.call(response);
    }
  }

  bool _isEnglish(String name) {
    final englishRegex = RegExp(r'^[a-zA-Z0-9\s]+$');
    return englishRegex.hasMatch(name);
  }

  ShowResponse? _loadShowResponse(Source source, Media mediaData) {
    return loadCustomData<ShowResponse?>(
        "${source.name}_${mediaData.id}_source");
  }

  _saveShowResponse(Media mediaData, MManga response, Source source,
      {bool selected = false}) {
    status.value = selected
        ? "${getString.selected} : ${response.name}"
        : "${getString.found} : ${response.name}";
    var show = ShowResponse(
        name: response.name!,
        link: response.link!,
        coverUrl: response.imageUrl!);
    saveCustomData<ShowResponse>("${source.name}_${mediaData.id}_source", show);
  }

  Future<void> wrongTitle(
    BuildContext context,
    Media mediaData,
    Function(MManga)? onChange,
  ) async {
    var dialog = WrongTitleDialog(
        source: source.value!,
        mediaData: mediaData,
        selectedMedia: selectedMedia,
        onChanged: (m) {
          selectedMedia.value = m;
          _saveShowResponse(mediaData, m, source.value!, selected: true);
          onChange?.call(m);
        });
    showCustomBottomDialog(context, dialog);
  }
}

enum ErrorType { None, NotFound, NoResult }
