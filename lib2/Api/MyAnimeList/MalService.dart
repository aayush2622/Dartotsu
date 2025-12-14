import 'package:dartotsu/Api/MyAnimeList/Mal.dart';
import 'package:dartotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseLoginScreen.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'Screen/MalAnimeScreen.dart';
import 'Screen/MalHomeScreen.dart';
import 'Screen/MalMangaScreen.dart';

class MalService extends MediaService {
  MalService() {
    Mal.getSavedToken();
  }

  @override
  String get getName => getString.mal;

  @override
  String get iconPath => "assets/svg/mal.svg";

  @override
  BaseServiceData get data => Mal;

  @override
  BaseAnimeScreen get animeScreen =>
      Get.put(MalAnimeScreen(Mal), tag: "MalAnimeScreen");

  @override
  BaseHomeScreen get homeScreen =>
      Get.put(MalHomeScreen(Mal), tag: "MalHomeScreen");

  @override
  BaseMangaScreen get mangaScreen =>
      Get.put(MalMangaScreen(Mal), tag: "MalMangaScreen");

  @override
  BaseLoginScreen get loginScreen =>
      Get.put(MalLoginScreen(Mal), tag: "MalLoginScreen");
}

class MalLoginScreen extends BaseLoginScreen {
  final MalController Mal;

  MalLoginScreen(this.Mal);

  @override
  void login(BuildContext context) => Mal.login(context);
}
