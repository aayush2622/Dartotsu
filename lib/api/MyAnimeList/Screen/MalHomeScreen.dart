import 'dart:math';

import 'package:dantotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Preferences/Preferences.dart';
import '../../../Services/Screens/BaseHomeScreen.dart';
import '../../../Widgets/CustomElevatedButton.dart';
import '../../../main.dart';
import '../Mal.dart';

class MalHomeScreen extends BaseHomeScreen {
  final MalController Mal;

  MalHomeScreen(this.Mal);

  var animeContinue = Rx<List<Media>?>(null);
  var animeOnHold = Rx<List<Media>?>(null);
  var animePlanned = Rx<List<Media>?>(null);
  var animeDropped = Rx<List<Media>?>(null);
  var mangaContinue = Rx<List<Media>?>(null);
  var mangaPlanned = Rx<List<Media>?>(null);
  var mangaDropped = Rx<List<Media>?>(null);
  var mangaOnHold = Rx<List<Media>?>(null);
  var hidden = Rx<List<Media>?>(null);

  Future<void> getUserId() async {
    if (Mal.token.isNotEmpty) {
      await Mal.query!.getUserData();
    }
  }

  @override
  get paging => false;

  @override
  int get refreshID => RefreshId.Mal.homePage;

  @override
  void resetPageData() {
    animeContinue.value = null;
    animeOnHold.value = null;
    animePlanned.value = null;
    animeDropped.value = null;
    mangaContinue.value = null;
    mangaPlanned.value = null;
    mangaDropped.value = null;
    mangaOnHold.value = null;
    hidden.value = null;
  }

  @override
  Future<void> loadAll() async {
    resetPageData();
    await getUserId();
    await Future.wait([loadList()]);
  }

  Future<void> loadList() async {
    final res = await Mal.query!.initHomePage();
    _setMediaList(res!);
  }

  void _setMediaList(Map<String, List<Media>> res) {
    var listImage = <String?>[];
    animeContinue.value = res["Watching"] ?? [];
    animeOnHold.value = res["OnHold"] ?? [];
    animeDropped.value = res["Dropped"] ?? [];
    animePlanned.value = res["PlanToWatch"] ?? [];
    mangaContinue.value = res["Reading"] ?? [];
    mangaOnHold.value = res["OnHoldReading"] ?? [];
    mangaDropped.value = res["DroppedReading"] ?? [];
    mangaPlanned.value = res["PlanToRead"] ?? [];
    hidden.value = res["hidden"] ?? [];

    listImage.add(
        (List.from(res["Watching"] ?? [])..shuffle(Random())).first.banner);
    listImage
        .add((List.from(res["Reading"] ?? [])..shuffle(Random())).first.banner);
    if (listImage.isNotEmpty) {
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
        list: animeContinue.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browseAnime,
        emptyButtonOnPressed: () => navbar?.onClick(0),
        onLongPressTitle: () => showHidden.value = !showHidden.value,
      ),
      MediaSectionData(
        type: 0,
        title: getString.onHoldAnime,
        pairTitle: 'OnHold Anime',
        list: animeOnHold.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage:
            'Looks like you haven\'t put anything on hold.',
      ),
      MediaSectionData(
        type: 0,
        title: getString.plannedAnime,
        pairTitle: 'Planned Anime',
        list: animePlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browseAnime,
        emptyButtonOnPressed: () => navbar?.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.droppedAnime,
        pairTitle: 'Dropped Anime',
        list: animeDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: 'You haven\'t dropped any anime yet.',
      ),
      MediaSectionData(
        type: 0,
        title: getString.continueReading,
        pairTitle: 'Continue Reading',
        list: mangaContinue.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browseAnime,
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.onHoldManga,
        pairTitle: 'OnHold Manga',
        list: mangaOnHold.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage:
            'Looks like you haven\'t put anything on hold.',
      ),
      MediaSectionData(
        type: 0,
        title: getString.plannedManga,
        pairTitle: 'Planned Manga',
        list: mangaPlanned.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browseAnime,
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: getString.droppedManga,
        pairTitle: 'Dropped Manga',
        list: mangaDropped.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: 'You haven\'t dropped any manga yet.',
      ),
    ];

    final homeLayoutMap = PrefManager.getVal(PrefName.malHomeLayout);
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
        isLarge: section.isLarge,
        onLongPressTitle: section.onLongPressTitle,
        customNullListIndicator: _buildNullIndicator(
          context,
          section.emptyIcon,
          section.emptyMessage,
          section.emptyButtonText,
          section.emptyButtonOnPressed,
        ),
      );
    }).toList()
      ..add(const SizedBox(height: 128));

    var hiddenMedia = MediaSection(
      context: context,
      type: 0,
      title: getString.hiddenMedia,
      mediaList: hidden.value,
      onLongPressTitle: () => showHidden.value = !showHidden.value,
      customNullListIndicator: _buildNullIndicator(
        context,
        Icons.visibility_off,
        getString.noHiddenMediaFound,
        null,
        null,
      ),
    );

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

  List<Widget> _buildNullIndicator(BuildContext context, IconData? icon,
      String? message, String? buttonLabel, void Function()? onPressed) {
    var theme = Theme.of(context).colorScheme;

    return [
      Icon(
        icon,
        color: theme.onSurface.withValues(alpha: 0.58),
        size: 32,
      ),
      Text(
        message ?? '',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: theme.onSurface.withValues(alpha: 0.58),
        ),
      ),
      if (buttonLabel != null) ...[
        const SizedBox(height: 24.0),
        CustomElevatedButton(
          context: context,
          onPressed: onPressed,
          label: buttonLabel,
        ),
      ]
    ];
  }
}
