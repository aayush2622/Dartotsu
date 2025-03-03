import 'dart:math';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Services/Screens/BaseHomeScreen.dart';
import '../../../main.dart';
import '../ExtensionsData.dart';

class ExtensionsHomeScreen extends BaseHomeScreen {
  var continueWatching = Rx<List<Media>?>(null);
  var plannedSeries = Rx<List<Media>?>(null);
  var continueReading = Rx<List<Media>?>(null);
  var plannedManga = Rx<List<Media>?>(null);

  var hidden = Rx<List<Media>?>(null);

  var customLists = Rx<Map<String, List<Media>?>>({});

  @override
  int get refreshID => RefreshId.Extensions.homePage;

  Future<void> getUserId() async => await ExtensionsC.query!.getUserData();

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    resetPageData();
    await getUserId();
    await loadList();
  }

  Future<void> loadList() async {
    var list = await ExtensionsC.query!.initHomePage();
    _setMediaList(list!);
  }

  @override
  String get firstInfoString => 'ANIME:';

  @override
  String get secondInfoString => 'MANGA:';

  void _setMediaList(Map<String, List<Media>> res) {
    var listImage = <String?>[];
    continueWatching.value = res['Continue Watching'] ?? [];
    plannedSeries.value = res['Planned Series'] ?? [];
    continueReading.value = res['Continue Reading'] ?? [];
    plannedManga.value = res['Planned Manga'] ?? [];
    hidden.value = res['hidden'] ?? [];
    customLists.value = res
      ..removeWhere(
        (key, value) =>
            key == 'Continue Watching' ||
            key == 'Planned Series' ||
            key == 'Continue Reading' ||
            key == 'Planned Manga' ||
            key == 'hidden',
      );
    ExtensionsC.episodesWatched = continueWatching.value?.length ?? 0;
    ExtensionsC.chapterRead = continueReading.value?.length ?? 0;
    if (continueWatching.value != null && continueWatching.value!.isNotEmpty) {
      listImage.add((List.from(continueWatching.value ?? [])..shuffle(Random()))
          .first
          .cover);
    }
    if (continueReading.value != null && continueReading.value!.isNotEmpty) {
      listImage.add((List.from(continueReading.value ?? [])..shuffle(Random()))
          .first
          .cover);
    }
    if (listImage.isNotEmpty) {
      if (listImage.length < 2) {
        listImage.add(listImage.first);
      }
      listImages.value = listImage;
    }
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    var showHidden = false.obs;
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.continueWatching,
        pairTitle: 'Continue Watching',
        list: continueWatching.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.anime),
        emptyButtonOnPressed: () => navbar.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.series),
        pairTitle: 'Planned Series',
        list: plannedSeries.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.anime),
        emptyButtonOnPressed: () => navbar.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.continueReading,
        pairTitle: 'Continue Reading',
        list: continueReading.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.manga),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.anime),
        pairTitle: 'Planned Manga',
        list: plannedManga.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.manga),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
    ];
    final homeLayoutMap = loadData(PrefName.extensionsHomeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.pairTitle: section
    };
    final sectionWidgets = homeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .toList();
    if (sectionWidgets.isNotEmpty) {
      sectionWidgets.first.onLongPressTitle =
          () => showHidden.value = !showHidden.value;
    }
    final result = sectionWidgets.map((section) {
      return MediaSection(
        context: context,
        type: section.type,
        title: section.title,
        mediaList: section.list,
        isLarge: true,
        onLongPressTitle: section.onLongPressTitle,
        customNullListIndicator: buildNullIndicator(
          context,
          section.emptyIcon,
          section.emptyMessage,
          section.emptyButtonText,
          section.emptyButtonOnPressed,
        ),
      );
    }).toList();

    var hiddenMedia = MediaSection(
      context: context,
      type: 0,
      title: getString.hiddenMedia,
      mediaList: hidden.value,
      onLongPressTitle: () => showHidden.value = !showHidden.value,
      customNullListIndicator: buildNullIndicator(
        context,
        Icons.visibility_off,
        getString.noHiddenMediaFound,
        null,
        null,
      ),
    );
    if (customLists.value.isNotEmpty) {
      customLists.value.forEach(
        (key, value) {
          result.add(
            MediaSection(
              context: context,
              type: 0,
              title: key,
              mediaList: value,
            ),
          );
        },
      );
    }
    result.add(const SizedBox(height: 128));
    return [
      Obx(() {
        if (showHidden.value) {
          result.insert(0, hiddenMedia);
        } else {
          result.remove(hiddenMedia);
        }
        return Column(
          children: result,
        );
      }),
    ];
  }

  void resetPageData() {
    continueWatching.value = null;
    plannedSeries.value = null;
    continueReading.value = null;
    plannedManga.value = null;
    hidden.value = null;
  }
}
