import 'package:dantotsu/Services/BaseServiceData.dart';
import 'package:dantotsu/api/Extensions/Screens/ExtensionsAnimeScreen.dart';
import 'package:get/get.dart';

import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../../Services/Screens/BaseMangaScreen.dart';
import 'ExtensionsData.dart';
import 'Screens/ExtensionsMangaScreen.dart';

class ExtensionsService extends MediaService {
  @override
  BaseServiceData get data => ExtensionsC;

  @override
  BaseAnimeScreen? get animeScreen => Get.put(ExtensionsAnimeScreen(),tag: "ExtensionsAnimeScreen");

  @override
  BaseMangaScreen? get mangaScreen => Get.put(ExtensionsMangaScreen(),tag: "ExtensionsMangaScreen");
  @override
  String get iconPath => "assets/svg/discord.svg";
}