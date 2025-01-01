import 'package:dartotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:flutter/material.dart';

import '../api/Anilist/AnilistService.dart';
import '../api/MyAnimeList/MalService.dart';
import 'BaseServiceData.dart';
import 'Screens/BaseAnimeScreen.dart';
import 'Screens/BaseHomeScreen.dart';
import 'Screens/BaseMangaScreen.dart';

abstract class MediaService {
  static final List<MediaService> _instances = [];

  MediaService() {
    _instances.add(this);
  }
  String get getName => runtimeType.toString().replaceAll('Service', '');

  static List<MediaService> get allServices => List.unmodifiable(_instances);

  String get iconPath;

  BaseServiceData get data;

  BaseHomeScreen? homeScreen;

  BaseAnimeScreen? animeScreen;

  BaseMangaScreen? mangaScreen;

  BaseLoginScreen? loginScreen;

  Widget notImplemented(String name) {
    return Center(
      child: Text(
          "$name not implemented on $getName"),
    );
  }
}

void initializeMediaServices() {
  AnilistService();
  MalService();
  //KitsuService();
  //OtherService();
}
