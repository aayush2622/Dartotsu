import 'package:dantotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dantotsu/api/Other/OtherService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../api/Anilist/AnilistService.dart';
import '../api/Kitsu/KitsuService.dart';
import '../api/MyAnimeList/MalService.dart';
import 'BaseServiceData.dart';
import 'Screens/BaseAnimeScreen.dart';
import 'Screens/BaseHomeScreen.dart';
import 'Screens/BaseMangaScreen.dart';
import 'ServiceSwitcher.dart';

abstract class MediaService {
  static final List<MediaService> _instances = [];

  MediaService() {
    _instances.add(this);
  }
  get getName => runtimeType.toString().replaceAll('Service', '');

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

MediaService getService({bool? listen}) => Provider.of<MediaServiceProvider>(Get.context!, listen: listen ?? true).currentService;

void initializeMediaServices() {
  AnilistService();
  MalService();
  KitsuService();
  OtherService();
}
