
import 'package:dantotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dantotsu/api/MyAnimeList/Mal.dart';
import 'package:get/get.dart';

import '../../Services/MediaService.dart';
import '../../Services/BaseServiceData.dart';
import 'Screen/MalAnimeScreen.dart';
import 'Screen/MalMangaScreen.dart';

class MalService extends MediaService {

  @override
  MediaServiceType get type => MediaServiceType.MAL;

  @override
  BaseServiceData get data => mal;

  @override
  BaseAnimeScreen? get animeScreen => Get.put(MalAnimeScreen(mal));

  @override
  BaseHomeScreen? get homeScreen => null;

  @override
  BaseMangaScreen? get mangaScreen => Get.put(MalMangaScreen(mal));
}