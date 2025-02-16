import 'package:dantotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dantotsu/api/Simkl/SimklService.dart';
import 'package:flutter/material.dart';

import '../Screens/HomeNavbar.dart';
import '../Theme/LanguageSwitcher.dart';
import '../api/Anilist/AnilistService.dart';
import '../api/Extensions/ExtensionsService.dart';
import '../api/MyAnimeList/MalService.dart';
import 'BaseServiceData.dart';
import 'Screens/BaseAnimeScreen.dart';
import 'Screens/BaseHomeScreen.dart';
import 'Screens/BaseMangaScreen.dart';
import 'Screens/BaseSearchScreen.dart';

abstract class MediaService {
  static final List<MediaService> _instances = [];

  MediaService() {
    _instances.add(this);
  }

  String get getName;

  List<NavItem> get navBarItem =>  [
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
        icon: Icons.import_contacts,
        label: getString.manga.toUpperCase()),
  ];

  static List<MediaService> get allServices => List.unmodifiable(_instances);

  String get iconPath;

  BaseServiceData get data;

  BaseHomeScreen? homeScreen;

  BaseAnimeScreen? animeScreen;

  BaseMangaScreen? mangaScreen;

  BaseLoginScreen? loginScreen;

  BaseSearchScreen? searchScreen;

  Widget notImplemented(String name) {
    return Center(
      child: Text(
        "$name not implemented on $getName",
      ),
    );
  }
}

void initializeMediaServices() {
  AnilistService();
  MalService();
  SimklService();
  ExtensionsService();
}
