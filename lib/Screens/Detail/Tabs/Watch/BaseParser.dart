import 'dart:async';

import 'package:async/async.dart';
import 'package:dartotsu/Downloader/AnimeLocalSource.dart';
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
  var error = Rxn<ParserError>();
  final Rx<List<Source>> sourceList = Rx([]);
  final RxBool sourcesLoaded = false.obs;

  StreamSubscription<List<Source>>? _sourceListSubscription;
  Worker? _managerWorker;

  void initSourceList(Media media) {
    final isAnime = media.anime != null;
    final itemType = isAnime
        ? ItemType.anime
        : media.format?.toLowerCase() == 'novel'
        ? ItemType.novel
        : ItemType.manga;

    final extensionManager = Get.find<ExtensionManager>();
    String orderKey =
        '${extensionManager[itemType].name}_${itemType.name}_order';

    void updateSourceList(List<Source> sources) {
      final sortedSources = [
        ...applySavedOrder(List<Source>.from(sources), orderKey),
        AnimeLocalSource(),
      ];

      sourceList.value = sortedSources;

      if (!sourcesLoaded.value) {
        if (sortedSources.isEmpty) {
          sourcesLoaded.value = true;
          return;
        }

        String nameAndLang(Source source) {
          final isDuplicateName =
              sortedSources.where((s) => s.name == source.name).length > 1;

          return isDuplicateName
              ? '${source.name!} - ${completeLanguageName(source.lang!.toLowerCase())}'
              : source.name!;
        }

        var lastUsedSource = media.settings.lastUsedSource;
        if (lastUsedSource == null ||
            !sortedSources.any((e) => nameAndLang(e) == lastUsedSource)) {
          lastUsedSource = nameAndLang(sortedSources.first);
        }

        final selectedSource =
            sortedSources.firstWhereOrNull(
              (e) => nameAndLang(e) == lastUsedSource,
            ) ??
            sortedSources.first;

        source.value = selectedSource;
        searchMedia(selectedSource, media);
        sourcesLoaded.value = true;
      }
    }

    void subscribeToCurrentManager() {
      _sourceListSubscription?.cancel();

      final manager = extensionManager[itemType];
      final installedRx = manager.state(itemType).installed;

      updateSourceList(installedRx.value);

      _sourceListSubscription = installedRx.listen(updateSourceList);
    }

    _sourceListSubscription?.cancel();
    _managerWorker?.dispose();

    subscribeToCurrentManager();

    _managerWorker = ever(extensionManager.current, (_) {
      subscribeToCurrentManager();
    });
  }

  List<Source> applySavedOrder(List<Source> list, String orderKey) {
    final saved = loadCustomData<List<String>>(
      orderKey,
      defaultValue: const [],
    );

    if (saved == null || saved.isEmpty) return list;

    final order = <String, int>{
      for (var i = 0; i < saved.length; i++) saved[i]: i,
    };

    list.sort((a, b) {
      final ai = order[a.id] ?? 1 << 30;
      final bi = order[b.id] ?? 1 << 30;
      return ai.compareTo(bi);
    });

    return list;
  }

  @override
  void dispose() {
    _currentOperation?.cancel();
    _sourceListSubscription?.cancel();
    _managerWorker?.dispose();
    super.dispose();
  }

  CancelableOperation? _currentOperation;

  Future<void> searchMedia(
    Source source,
    Media mediaData, {
    Function(DMedia? response)? onFinish,
  }) async {
    _currentOperation?.cancel();

    _currentOperation = CancelableOperation.fromFuture(
      _performSearch(source, mediaData, onFinish),
      onCancel: () {
        status.value = "Search canceled";
      },
    );

    await _currentOperation?.valueOrCancellation();
  }

  Future<void> _performSearch(
    Source source,
    Media mediaData,
    Function(DMedia? response)? onFinish,
  ) async {
    try {
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
      final mediaFuture = source.methods.search(mediaData.mainName(), 1, []);

      final media = await mediaFuture;

      List<DMedia> sortedResults = media.list.isNotEmpty
          ? (media.list..sort((a, b) {
              final aRatio = ratio(
                a.title!.toLowerCase(),
                mediaData.mainName().toLowerCase(),
              );
              final bRatio = ratio(
                b.title!.toLowerCase(),
                mediaData.mainName().toLowerCase(),
              );
              return bRatio.compareTo(aRatio);
            }))
          : [];
      response = sortedResults.firstOrNull;

      if (response == null ||
          ratio(
                response.title!.toLowerCase(),
                mediaData.mainName().toLowerCase(),
              ) <
              100) {
        status.value = "Searching : ${mediaData.nameRomaji}";
        final mediaFuture = source.methods.search(mediaData.nameRomaji, 1, []);
        final media = await mediaFuture;
        List<DMedia> sortedRomajiResults = media.list.isNotEmpty
            ? (media.list..sort((a, b) {
                final aRatio = ratio(
                  a.title!.toLowerCase(),
                  mediaData.nameRomaji.toLowerCase(),
                );
                final bRatio = ratio(
                  b.title!.toLowerCase(),
                  mediaData.nameRomaji.toLowerCase(),
                );
                return bRatio.compareTo(aRatio);
              }))
            : [];
        var closestRomaji = sortedRomajiResults.firstOrNull;
        if (response == null) {
          response = closestRomaji;
        } else {
          var romajiRatio = ratio(
            closestRomaji?.title?.toLowerCase() ?? '',
            mediaData.nameRomaji.toLowerCase(),
          );
          var mainNameRatio = ratio(
            response.title!.toLowerCase(),
            mediaData.mainName().toLowerCase(),
          );
          if (romajiRatio > mainNameRatio) {
            response = closestRomaji;
          }
        }
      }
      if (response == null) {
        for (var synonym in mediaData.synonyms) {
          if (_isEnglish(synonym)) {
            status.value = "Searching : $synonym";
            final mediaFuture = source.methods.search(synonym, 1, []);
            final media = await mediaFuture;
            List<DMedia> sortedResults = media.list.isNotEmpty
                ? (media.list..sort((a, b) {
                    final aRatio = ratio(
                      a.title!.toLowerCase(),
                      synonym.toLowerCase(),
                    );
                    final bRatio = ratio(
                      b.title!.toLowerCase(),
                      synonym.toLowerCase(),
                    );
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
        error.value = null;
        _saveShowResponse(mediaData, response, source);
        selectedMedia.value = response;
        onFinish?.call(response);
      } else {
        status.value = "Nothing Found";
        error.value = ParserError(
          ErrorType.NotFound,
          "No matching media found",
        );
        onFinish?.call(response);
      }
    } catch (e, c) {
      status.value = "Error during search";
      error.value = ParserError(ErrorType.Error, e.toString());
      debugPrint("Error during search: $e \n$c");
      onFinish?.call(null);
    }
  }

  bool _isEnglish(String name) {
    final englishRegex = RegExp(r'^[a-zA-Z0-9\s]+$');
    return englishRegex.hasMatch(name);
  }

  ShowResponse? _loadShowResponse(Source source, Media mediaData) {
    return loadCustomData<ShowResponse?>(
      "${source.name}_${mediaData.id}_source",
    );
  }

  void _saveShowResponse(
    Media mediaData,
    DMedia response,
    Source source, {
    bool selected = false,
  }) {
    status.value = selected
        ? "${getString.selected} : ${response.title}"
        : "${getString.found} : ${response.title}";
    var show = ShowResponse(
      name: response.title,
      link: response.url,
      coverUrl: response.cover,
    );
    saveCustomData<ShowResponse>("${source.name}_${mediaData.id}_source", show);
  }

  void clearResponseCache(Source source, Media mediaData) {
    removeCustomData("${source.name}_${mediaData.id}_source");
    searchMedia(source, mediaData);
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
      },
    );
    showCustomBottomDialog(context, dialog);
  }
}

class ParserError {
  final ErrorType type;
  final String message;

  ParserError(this.type, this.message);
}

enum ErrorType { None, NotFound, NoResult, Error }
