import 'dart:math';

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
    if (res["Watching"] != null) {
      animeContinue.value = res["Watching"] ?? [] ;
    }
    if (res["OnHold"] != null) {
      animeOnHold.value = res["OnHold"] ?? [];
    }
    if (res["Dropped"] != null) {
      animeDropped.value = res["Dropped"] ?? [];
    }
    if (res["PlanToWatch"] != null) {
      animePlanned.value = res["PlanToWatch"] ?? [];
    }

    if (res["Reading"] != null) {
      mangaContinue.value = res["Reading"] ?? [] ;
    }
    if (res["OnHoldReading"] != null) {
      mangaOnHold.value = res["OnHoldReading"] ?? [];
    }
    if (res["DroppedReading"] != null) {
      mangaDropped.value = res["DroppedReading"] ?? [];
    }
    if (res["PlanToRead"] != null) {
      mangaPlanned.value = res["PlanToRead"] ?? [];
    }
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
    final mediaSections = [
      MediaSectionData(
        type: 0,
        title: 'Continue Watching',
        list: animeContinue.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nAnime',
        emptyButtonOnPressed: () => navbar?.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: 'OnHold Anime',
        list: animeOnHold.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage:
            'Looks like you haven\'t put anything on hold,\nTry putting a show on hold to keep it here.',
      ),
      MediaSectionData(
        type: 0,
        title: 'Planned Anime',
        list: animePlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nAnime',
        emptyButtonOnPressed: () => navbar?.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: 'Dropped Anime',
        list: animeDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nAnime',
        emptyButtonOnPressed: () => navbar?.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: 'Continue Reading',
        list: mangaContinue.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nManga',
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: 'OnHold Manga',
        list: mangaOnHold.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage:
            'Looks like you haven\'t put anything on hold,\nTry putting a show on hold to keep it here.',
      ),
      MediaSectionData(
        type: 0,
        title: 'Planned Manga',
        list: mangaPlanned.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nManga',
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: 'Dropped Manga',
        list: mangaDropped.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nManga',
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
    ];

    final homeLayoutMap = PrefManager.getVal(PrefName.malHomeLayout);
    final sectionMap = {
      for (var section in mediaSections) section.title: section
    };

    final sectionWidgets = homeLayoutMap.entries
        .where((entry) => entry.value)
        .map((entry) => sectionMap[entry.key])
        .whereType<MediaSectionData>()
        .map((section) => MediaSection(
              context: context,
              type: section.type,
              title: section.title,
              mediaList: section.list,
              isLarge: section.isLarge,
              customNullListIndicator: _buildNullIndicator(
                context,
                section.emptyIcon,
                section.emptyMessage,
                section.emptyButtonText,
                section.emptyButtonOnPressed,
              ),
            ))
        .toList()
      ..add(const SizedBox(height: 128));

    return sectionWidgets;
  }

  List<Widget> _buildNullIndicator(BuildContext context, IconData? icon,
      String? message, String? buttonLabel, void Function()? onPressed) {
    var theme = Theme.of(context).colorScheme;

    return [
      Icon(
        icon,
        color: theme.onSurface.withOpacity(0.58),
        size: 32,
      ),
      Text(
        message ?? '',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          color: theme.onSurface.withOpacity(0.58),
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
