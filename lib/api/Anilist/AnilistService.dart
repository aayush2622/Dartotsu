import 'package:dantotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dantotsu/api/Anilist/Screen/AnilistAnimeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Screens/Login/LoginScreen.dart';
import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import 'Anilist.dart';
import 'Screen/AnilistHomeScreen.dart';
import 'Screen/AnilistMangaScreen.dart';

class AnilistService extends MediaService {
  @override
  MediaServiceType get type => MediaServiceType.ANILIST;

  @override
  BaseServiceData get data => Anilist;

  @override
  BaseAnimeScreen get animeScreen => Get.put(AnilistAnimeScreen(Anilist));

  @override
  BaseHomeScreen get homeScreen => Get.put(AnilistHomeScreen(Anilist));

  @override
  BaseMangaScreen get mangaScreen => Get.put(AnilistMangaScreen(Anilist));


  @override
  Widget LoginScreen() => const LoginScreenAnilist();
}
