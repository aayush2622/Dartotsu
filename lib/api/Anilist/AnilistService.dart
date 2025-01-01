import 'package:dartotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dartotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dartotsu/api/Anilist/Screen/AnilistAnimeScreen.dart';
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
  BaseAnimeScreen get animeScreen => Get.put(AnilistAnimeScreen(Anilist));

  @override
  BaseHomeScreen get homeScreen => Get.put(AnilistHomeScreen(Anilist));

  @override
  BaseMangaScreen get mangaScreen => Get.put(AnilistMangaScreen(Anilist));

  @override
  BaseLoginScreen get loginScreen => Get.put(AnilistLoginScreen(Anilist));
}

class AnilistLoginScreen extends BaseLoginScreen {
  final AnilistController Anilist;

  AnilistLoginScreen(this.Anilist);
  @override
  void login(BuildContext context) => Anilist.login(context);
}
