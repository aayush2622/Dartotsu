import 'dart:async';

import 'package:async/async.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:get/get.dart';

import '../../../../DataClass/Media.dart';
import '../../../../Preferences/IsarDataClasses/ShowResponse/ShowResponse.dart';
import '../../../../Preferences/PrefManager.dart';
import '../../../../Widgets/CustomBottomDialog.dart';
import '../../../Settings/language.dart';
import 'Widgets/WrongTitle.dart';

abstract class BaseParser extends GetxController {
  var selectedMedia = Rxn<DMedia?>(null);
  var status = Rxn<String>(null);
  var source = Rxn<Source>(null);
  var errorType = Rxn<ErrorType>(ErrorType.None);

  final Rx<List<Source>> sourceList = Rx([]);
  final RxBool sourcesLoaded = false.obs;

  StreamSubscription? _sourceListSubscription;

  void initSourceList(Media media) async {
    var isAnime = media.anime != null;
    final itemType = isAnime
        ? ItemType.anime
        : media.format?.toLowerCase() == 'novel'
            ? ItemType.novel
            : ItemType.manga;

    final manager = Get.find<ExtensionManager>().currentManager;
    final Rx<List<Source>> sortedSourcesRx =
        manager.getSortedInstalledExtension(itemType);

    _sourceListSubscription?.cancel();
    _sourceListSubscription = sortedSourcesRx.listen((sortedSources) {
      sourceList.value = sortedSources;
    });

    final List<Source> sortedSources = sortedSourcesRx.value;

    if (sortedSources.isEmpty) {
      sourcesLoaded.value = true;
      return;
    }

    sourceList.value = sortedSources;

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

    final Source source = sortedSources
            .firstWhereOrNull((e) => nameAndLang(e) == lastUsedSource!) ??
        sortedSources.first;

    this.source.value = source;
    searchMedia(source, media);
    sourcesLoaded.value = true;
  }

  @override
  void dispose() {
    super.dispose();
    _currentOperation?.cancel();
    _sourceListSubscription?.cancel();
  }

  CancelableOperation? _currentOperation;

  Future<void> searchMedia(Source source, Media mediaData,
      {Function(DMedia? response)? onFinish}) async {
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
      Function(DMedia? response)? onFinish) async {
    selectedMedia.value = null;
    status.value = "Searching...";
    var saved = _loadShowResponse(source, mediaData);
    if (saved != null) {
      var response = DMedia(
        title: saved.name,
        cover: saved.coverUrl,
        url: saved.link,
      );
      selectedMedia.value = response;
      _saveShowResponse(mediaData, response, source, selected: true);
      onFinish?.call(response);
      return;
    }
    DMedia? response;
    status.value = "Searching : ${mediaData.mainName()}";
    final mediaFuture = source.methods.search(
      mediaData.mainName(),
      1,
      [],
    );

    final media = await mediaFuture;

    List<DMedia> sortedResults = media.list.isNotEmpty
        ? (media.list
          ..sort((a, b) {
            final aRatio = ratio(
                a.title!.toLowerCase(), mediaData.mainName().toLowerCase());
            final bRatio = ratio(
                b.title!.toLowerCase(), mediaData.mainName().toLowerCase());
            return bRatio.compareTo(aRatio);
          }))
        : [];
    response = sortedResults.firstOrNull;

    if (response == null ||
        ratio(response.title!.toLowerCase(),
                mediaData.mainName().toLowerCase()) <
            100) {
      status.value = "Searching : ${mediaData.nameRomaji}";
      final mediaFuture = source.methods.search(
        mediaData.nameRomaji,
        1,
        [],
      );
      final media = await mediaFuture;
      List<DMedia> sortedRomajiResults = media.list.isNotEmpty
          ? (media.list
            ..sort((a, b) {
              final aRatio = ratio(
                  a.title!.toLowerCase(), mediaData.nameRomaji.toLowerCase());
              final bRatio = ratio(
                  b.title!.toLowerCase(), mediaData.nameRomaji.toLowerCase());
              return bRatio.compareTo(aRatio);
            }))
          : [];
      var closestRomaji = sortedRomajiResults.firstOrNull;
      if (response == null) {
        response = closestRomaji;
      } else {
        var romajiRatio = ratio(closestRomaji?.title?.toLowerCase() ?? '',
            mediaData.nameRomaji.toLowerCase());
        var mainNameRatio = ratio(
            response.title!.toLowerCase(), mediaData.mainName().toLowerCase());
        if (romajiRatio > mainNameRatio) {
          response = closestRomaji;
        }
      }
    }
    if (response == null) {
      for (var synonym in mediaData.synonyms) {
        if (_isEnglish(synonym)) {
          status.value = "Searching : $synonym";
          final mediaFuture = source.methods.search(
            synonym,
            1,
            [],
          );
          final media = await mediaFuture;
          List<DMedia> sortedResults = media.list.isNotEmpty
              ? (media.list
                ..sort((a, b) {
                  final aRatio =
                      ratio(a.title!.toLowerCase(), synonym.toLowerCase());
                  final bRatio =
                      ratio(b.title!.toLowerCase(), synonym.toLowerCase());
                  return bRatio.compareTo(aRatio);
                }))
              : [];
          var closest = sortedResults.firstOrNull;
          if (closest != null) {
            if (ratio(closest.title!.toLowerCase(), synonym.toLowerCase()) >
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

  void _saveShowResponse(Media mediaData, DMedia response, Source source,
      {bool selected = false}) {
    status.value = selected
        ? "${getString.selected} : ${response.title}"
        : "${getString.found} : ${response.title}";
    var show = ShowResponse(
        name: response.title, link: response.url, coverUrl: response.cover);
    saveCustomData<ShowResponse>("${source.name}_${mediaData.id}_source", show);
  }

  Future<void> wrongTitle(
    BuildContext context,
    Media mediaData,
    Function(DMedia)? onChange,
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
