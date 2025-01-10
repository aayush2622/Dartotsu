import 'dart:math';

import 'package:dantotsu/Functions/Function.dart';
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
    animeContinue.value = res['watching'];
    animePlanned.value = res['planned'];
    animeDropped.value = res['dropped'];

    listImage.add(
        (List.from(res["watching"] ?? [])
          ..shuffle(Random())).first.banner);
    listImage
        .add((List.from(res["watching"] ?? [])
      ..shuffle(Random())).first.banner);
    if (listImage.isNotEmpty) {
      listImages.value = listImage;
    }
  }

  @override
  List<Widget> mediaContent(BuildContext context) {
    final mediaSections = [
    MediaSectionData(
      type: 0,
      title: getString.continueWatching,
      pairTitle: 'Continue Watching',
      list: animeContinue.value,
      emptyIcon: Icons.movie_filter_rounded,
      emptyMessage: getString.allCaughtUpNew,
      emptyButtonText: getString.browse(getString.anime),
      emptyButtonOnPressed: () => navbar?.onClick(0),
    ),
      MediaSectionData(
        type: 0,
        title: getString.planned(getString.anime),
        pairTitle: 'Planned Anime',
        list: animePlanned.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.allCaughtUpNew,
        emptyButtonText: getString.browse(getString.anime),
        emptyButtonOnPressed: () => navbar?.onClick(0),
      ),
      MediaSectionData(
        type: 0,
        title: getString.droppedAnime,
        pairTitle: 'Dropped Anime',
        list: animeDropped.value,
        emptyIcon: Icons.movie_filter_rounded,
        emptyMessage: getString.noDropped(getString.anime),
      ),
    ];
    final result = mediaSections.map((section) {
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
    }).toList()
      ..add(const SizedBox(height: 128));

    return result;
  }

  @override
  int get refreshID => RefreshId.Simkl.homePage;

  @override
  void resetPageData() {
    animeContinue.value = null;
    animePlanned.value = null;
    animeDropped.value = null;
  }

}
