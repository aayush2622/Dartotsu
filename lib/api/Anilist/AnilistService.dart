import 'package:dantotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dantotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dantotsu/api/Anilist/Screen/AnilistAnimeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import 'Anilist.dart';
import 'Screen/AnilistHomeScreen.dart';
import 'Screen/AnilistMangaScreen.dart';

class AnilistService extends MediaService {
  AnilistService() {
    Anilist.getSavedToken();
  }

  @override
  String get iconPath => "assets/svg/anilist.svg";

  @override
  BaseServiceData get data => Anilist;

  @override
  BaseAnimeScreen get animeScreen => Get.put(AnilistAnimeScreen(Anilist), tag: "AnilistAnimeScreen");

  @override
  BaseHomeScreen get homeScreen => Get.put(AnilistHomeScreen(Anilist), tag: "AnilistHomeScreen");

  @override
  BaseMangaScreen get mangaScreen => Get.put(AnilistMangaScreen(Anilist), tag: "AnilistMangaScreen");

  @override
  BaseLoginScreen get loginScreen => Get.put(AnilistLoginScreen(Anilist), tag: "AnilistLoginScreen");
}

class AnilistLoginScreen extends BaseLoginScreen {
  final AnilistController Anilist;

  AnilistLoginScreen(this.Anilist);
  @override
  void login(BuildContext context) => Anilist.login(context);
}
