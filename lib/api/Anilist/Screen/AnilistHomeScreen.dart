import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/MediaSection.dart';
import '../../../DataClass/User.dart';
import '../../../Functions/Function.dart';
import '../../../Preferences/PrefManager.dart';
import '../../../Preferences/Preferences.dart';
import '../../../Widgets/CustomElevatedButton.dart';
import '../../../main.dart';
import '../Anilist.dart';

class AnilistHomeScreen extends BaseHomeScreen {
  final AnilistController Anilist;

  AnilistHomeScreen(this.Anilist);

  var animeContinue = Rx<List<Media>?>(null);
  var animeFav = Rx<List<Media>?>(null);
  var animePlanned = Rx<List<Media>?>(null);
  var mangaContinue = Rx<List<Media>?>(null);
  var mangaFav = Rx<List<Media>?>(null);
  var mangaPlanned = Rx<List<Media>?>(null);
  var recommendation = Rx<List<Media>?>(null);
  var userStatus = Rx<List<userData>?>(null);
  var hidden = Rx<List<Media>?>(null);

  @override
  get paging => false;

  Future<void> getUserId() async {
    if (Anilist.token.isNotEmpty) {
      await Anilist.query!.getUserData();
    }
  }

  @override
  Future<void> loadAll() async {
    await getUserId();
    await Future.wait([
      loadList(),
      setListImages(),
    ]);
  }

  Future<void> setListImages() async {
    listImages.value = await Anilist.query!.getBannerImages();
  }

  Future<void> loadList() async {
    resetPageData();
    final res = await Anilist.query!.initHomePage();
    _setMediaList(res!);
  }

  void _setMediaList(Map<String, List<Media>> res) {
    if (res["currentAnime"] != null) {
      animeContinue.value = res["currentAnime"];
    }
    if (res["favoriteAnime"] != null) {
      animeFav.value = res["favoriteAnime"];
    }
    if (res["currentAnimePlanned"] != null) {
      animePlanned.value = res["currentAnimePlanned"];
    }
    if (res["currentManga"] != null) {
      mangaContinue.value = res["currentManga"];
    }
    if (res["favoriteManga"] != null) {
      mangaFav.value = res["favoriteManga"];
    }
    if (res["currentMangaPlanned"] != null) {
      mangaPlanned.value = res["currentMangaPlanned"];
    }
    if (res["recommendations"] != null) {
      recommendation.value = res["recommendations"];
    }
    if (res["hidden"] != null) {
      hidden.value = res["hidden"];
    }
  }

  @override
  int get refreshID => RefreshId.Anilist.homePage;

  @override
  void resetPageData() {
    animeContinue.value = null;
    animeFav.value = null;
    animePlanned.value = null;
    mangaContinue.value = null;
    mangaFav.value = null;
    mangaPlanned.value = null;
    recommendation.value = null;
    hidden.value = null;
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
        title: 'Favourite Anime',
        list: animeFav.value,
        emptyIcon: Icons.heart_broken,
        emptyMessage:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
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
        title: 'Continue Reading',
        list: mangaContinue.value,
        emptyIcon: Icons.import_contacts,
        emptyMessage: 'All caught up, when New?',
        emptyButtonText: 'Browse\nManga',
        emptyButtonOnPressed: () => navbar?.onClick(2),
      ),
      MediaSectionData(
        type: 0,
        title: 'Favourite Manga',
        list: mangaFav.value,
        emptyIcon: Icons.heart_broken,
        emptyMessage:
            'Looks like you don\'t like anything,\nTry liking a show to keep it here.',
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
        title: 'Recommended',
        list: recommendation.value,
        emptyIcon: Icons.auto_awesome,
        isLarge: true,
        emptyMessage: 'Watch/Read some Anime or Manga to get Recommendations',
      ),
    ];

    final homeLayoutMap = PrefManager.getVal(PrefName.anilistHomeLayout);
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
