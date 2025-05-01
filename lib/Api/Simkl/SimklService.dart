import 'package:dartotsu/Api/Simkl/Screen/SimklAnimeScreen.dart';
import 'package:dartotsu/Api/Simkl/Screen/SimklMovieScreen.dart';
import 'package:dartotsu/Services/BaseServiceData.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Screens/HomeNavbar.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../../Services/Screens/BaseLoginScreen.dart';
import '../../Services/Screens/BaseMangaScreen.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'Screen/SimklHomeScreen.dart';
import 'Simkl.dart';

class SimklService extends MediaService {
  SimklService() {
    Simkl.getSavedToken();
  }

  @override
  String get getName => getString.simkl;

  @override
  List<NavItem> get navBarItem => [
        NavItem(
            index: 0,
            icon: Icons.movie_filter_rounded,
            label: getString.anime.toUpperCase()),
        NavItem(
            index: 1,
            icon: Icons.home_rounded,
            label: getString.home.toUpperCase()),
        NavItem(
            index: 2,
            icon: Icons.movie_creation_rounded,
            label: getString.movie(1).toUpperCase()),
      ];

  @override
  String get iconPath => "assets/svg/simkl.svg";

  @override
  BaseServiceData get data => Simkl;

  @override
  BaseHomeScreen get homeScreen =>
      Get.put(SimklHomeScreen(Simkl), tag: "SimklHomeScreen");

  @override
  BaseLoginScreen get loginScreen =>
      Get.put(SimklLoginScreen(Simkl), tag: "SimklLoginScreen");

  @override
  BaseAnimeScreen? get animeScreen =>
      Get.put(SimklAnimeScreen(Simkl), tag: "SimklAnimeScreen");

  @override
  BaseMangaScreen? get mangaScreen =>
      Get.put(SimklMovieScreen(Simkl), tag: "SimklMovieScreen");
}

class SimklLoginScreen extends BaseLoginScreen {
  final SimklController Simkl;

  SimklLoginScreen(this.Simkl);

  @override
  void login(BuildContext context) => Simkl.login(context);
}
