import 'dart:math';

import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Services/Screens/BaseHomeScreen.dart';
import '../../../main.dart';
import '../MangaBaka.dart';

class MangaBakaHomeScreen extends BaseHomeScreen {
  final MangaBakaController controller;

  MangaBakaHomeScreen(this.controller);

  var mangaContinue = Rx<List<Media>?>(null);
  var mangaPlanned = Rx<List<Media>?>(null);
  var mangaCompleted = Rx<List<Media>?>(null);
  var mangaDropped = Rx<List<Media>?>(null);
  var mangaOnHold = Rx<List<Media>?>(null);

  @override
  get paging => false;

  @override
  int get refreshID => RefreshId.MangaBaka.homePage;

  void resetPageData() {
    mangaContinue.value = null;
    mangaPlanned.value = null;
    mangaCompleted.value = null;
    mangaDropped.value = null;
    mangaOnHold.value = null;
  }

  @override
  Future<void> loadAll() async {
    resetPageData();
    await loadList();
  }

  Future<void> loadList() async {
    final res = await controller.query!.initHomePage();
    if (res != null) {
      _setMediaList(res);
    }
  }

  void _setMediaList(Map<String, List<Media>> res) {
    mangaContinue.value = res["Reading"] ?? [];
    mangaPlanned.value = res["PlanToRead"] ?? [];
    mangaCompleted.value = res["Completed"] ?? [];
    mangaDropped.value = res["DroppedReading"] ?? [];
    mangaOnHold.value = res["OnHoldReading"] ?? [];

    List<String?> listImage = [];

    String? pickRandomCover(List<Media>? list) {
      if (list == null || list.isEmpty) return null;
      return (List.of(list)..shuffle(Random())).first.cover;
    }

    final mangaCover = pickRandomCover(mangaContinue.value);
    if (mangaCover != null) {
      listImage.add(mangaCover);
      listImage.add(mangaCover);
      listImages.value = listImage;
    }
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.continueReading,
        pairTitle: 'Continue Reading',
        list: mangaContinue.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.manga),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.manga),
        pairTitle: 'Planned Manga',
        list: mangaPlanned.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.manga),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.completed(getString.manga),
        pairTitle: 'Completed Manga',
        list: mangaCompleted.value,
        emptyIcon: Icons.check_circle_outline,
        emptyMessage: getString.allCaughtUpNew,
      ),
      MediaSectionData(
        type: 0,
        title: getString.onHold(getString.manga),
        pairTitle: 'OnHold Manga',
        list: mangaOnHold.value,
        emptyIcon: Icons.pause_circle_outline,
        emptyMessage: getString.noOnHold,
      ),
      MediaSectionData(
        type: 0,
        title: getString.droppedManga,
        pairTitle: 'Dropped Manga',
        list: mangaDropped.value,
        emptyIcon: Icons.highlight_off,
        emptyMessage: getString.noDropped(getString.manga),
      ),
    ];

    final result = mediaSections.map((section) {
      return MediaSection(
        context: context,
        type: section.type,
        title: section.title,
        mediaList: section.list,
        isLarge: section.isLarge,
        customNullListIndicator: buildNullIndicator(
          context,
          section.emptyIcon,
          section.emptyMessage,
          section.emptyButtonText,
          section.emptyButtonOnPressed,
        ),
      );
    }).toList();

    return [
      Obx(
        () {
          return LayoutBuilder(
            builder: (context, constraints) {
              final spacing = 16.0;
              final horizontalPadding = context.isPhone ? 0.0 : 16.0;
              final maxWidth = constraints.maxWidth - horizontalPadding;

              final columns = context.isPhone ? 1 : 2;
              final width = (maxWidth - ((columns - 1) * spacing)) / columns;
              final useColumnLayout = width < 480;

              final children = result.map((section) {
                return SizedBox(
                  width: useColumnLayout ? null : width,
                  child: section,
                );
              }).toList();

              return Padding(
                padding: EdgeInsets.only(right: horizontalPadding),
                child: Column(
                  children: [
                    useColumnLayout
                        ? Column(
                            children: children
                                .map(
                                  (child) => Padding(
                                    padding: EdgeInsets.only(bottom: spacing),
                                    child: child,
                                  ),
                                )
                                .toList(),
                          )
                        : Wrap(
                            spacing: spacing,
                            runSpacing: spacing,
                            children: children,
                          ),
                    const SizedBox(height: 128),
                  ],
                ),
              );
            },
          );
        },
      ),
    ];
  }
}
