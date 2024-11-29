import 'package:dantotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dantotsu/api/Other/OtherService.dart';
import 'package:flutter/material.dart';

import '../api/Anilist/AnilistService.dart';
import '../api/Kitsu/KitsuService.dart';
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

  static List<MediaService> get allServices => List.unmodifiable(_instances);

  String get iconPath;

  BaseServiceData get data;

  BaseHomeScreen? homeScreen;

  BaseAnimeScreen? animeScreen;

  BaseMangaScreen? mangaScreen;

  BaseLoginScreen? loginScreen;

  notImplemented(String name) {
    return Center(
      child: Text(
          "$name not implemented on ${runtimeType.toString().replaceAll('Service', '')}"),
    );
  }
}

void initializeMediaServices() {
  AnilistService();
  MalService();
  KitsuService();
  OtherService();
}
