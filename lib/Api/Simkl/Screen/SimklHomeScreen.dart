import 'dart:math';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Services/Screens/BaseHomeScreen.dart';
import '../../../Theme/LanguageSwitcher.dart';
import '../../../main.dart';
import '../Simkl.dart';

class SimklHomeScreen extends BaseHomeScreen {
  final SimklController Simkl;

  SimklHomeScreen(this.Simkl);

  var animeContinue = Rx<List<Media>?>(null);
  var animePlanned = Rx<List<Media>?>(null);
  var animeDropped = Rx<List<Media>?>(null);
  var animeOnHold = Rx<List<Media>?>(null);
  var showContinue = Rx<List<Media>?>(null);
  var showPlanned = Rx<List<Media>?>(null);
  var showDropped = Rx<List<Media>?>(null);
  var showOnHold = Rx<List<Media>?>(null);
  var moviePlanned = Rx<List<Media>?>(null);
  var movieDropped = Rx<List<Media>?>(null);

  Future<void> getUserId() async {
    if (Simkl.token.isNotEmpty) {
      await Simkl.query!.getUserData();
    }
  }

  @override
  get firstInfoString => 'Anime Episode Count';

  @override
  get secondInfoString => 'Series Episode Count';

  @override
  get paging => false;

  @override
  Future<void> loadAll() async {
    resetPageData();
    await getUserId();
    var list = await Simkl.query!.initHomePage();
    _setMediaList(list!);
  }

  void _setMediaList(Map<String, List<Media>> res) {
    var listImage = <String?>[];
    animeContinue.value = res['watchingAnime'] ?? [];
    animePlanned.value = res['plannedAnime'] ?? [];
    animeDropped.value = res['droppedAnime'] ?? [];
    animeOnHold.value = res['onHoldAnime'] ?? [];
    showContinue.value = res['watchingShows'] ?? [];
    showPlanned.value = res['plannedShows'] ?? [];
    showDropped.value = res['droppedShows'] ?? [];
    showOnHold.value = res['onHoldShows'] ?? [];
    moviePlanned.value = res['plannedMovies'] ?? [];
    movieDropped.value = res['droppedMovies'] ?? [];

    if (animeContinue.value != null && animeContinue.value!.isNotEmpty) {
      listImage.add((List.from(animeContinue.value ?? [])..shuffle(Random()))
          .first
          .cover);
    }
    if (showContinue.value != null && showContinue.value!.isNotEmpty) {
      listImage.add(
          (List.from(showContinue.value ?? [])..shuffle(Random())).first.cover);
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
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: getString.continueWatching,
        pairTitle: 'Continue Watching Anime',
        list: animeContinue.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.anime),
        emptyButtonOnPressed: () => navbar.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.anime),
        pairTitle: 'Planned Anime',
        list: animePlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.anime),
        emptyButtonOnPressed: () => navbar.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.droppedAnime,
        pairTitle: 'Dropped Anime',
        list: animeDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noDropped(getString.anime),
      ),
      MediaSectionData(
        type: 0,
        title: getString.onHold(getString.anime),
        pairTitle: 'On Hold Anime',
        list: animeOnHold.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noOnHold,
      ),
      MediaSectionData(
        type: 0,
        title: getString.continueWatching,
        pairTitle: 'Continue Watching Series',
        list: showContinue.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.series),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.series),
        pairTitle: 'Planned Series',
        list: showPlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.series),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: 'Dropped Series',
        pairTitle: 'Dropped Series',
        list: showDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noDropped(getString.series),
      ),
      MediaSectionData(
        type: 0,
        title: 'On Hold Series',
        pairTitle: 'On Hold Series',
        list: showOnHold.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noOnHold,
      ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.movie(2)),
        pairTitle: 'Planned Movies',
        list: moviePlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.movie(2)),
        emptyButtonOnPressed: () => navbar.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: 'Dropped Movies',
        pairTitle: 'Dropped Movies',
        list: movieDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noDropped(getString.movie(2)),
      ),
    ];

    final homeLayoutMap = loadData(PrefName.simklHomeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.pairTitle: section
    };
    final sectionWidgets = homeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .toList();

    final result = sectionWidgets.map((section) {
      return MediaSection(
        context: context,
        type: section.type,
        title: section.title,
        mediaList: section.list,
        isLarge: section.isLarge,
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

    return [
      Obx(
        () {
          final allSections = List<Widget>.from(result);

          return LayoutBuilder(
            builder: (context, constraints) {
              final spacing = 16.0;
              final horizontalPadding = context.isPhone ? 0.0 : 16.0;
              final maxWidth = constraints.maxWidth - horizontalPadding;

              final columns = context.isPhone ? 1 : 2;
              final width = (maxWidth - ((columns - 1) * spacing)) / columns;
              final useColumnLayout = width < 480;

              final children = allSections.map((section) {
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

  @override
  int get refreshID => RefreshId.Simkl.homePage;

  void resetPageData() {
    animeContinue.value = null;
    animePlanned.value = null;
    animeDropped.value = null;
    animeOnHold.value = null;
    showContinue.value = null;
    showPlanned.value = null;
    showDropped.value = null;
    showOnHold.value = null;
    moviePlanned.value = null;
    movieDropped.value = null;
  }
}
