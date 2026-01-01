import 'package:dartotsu/Api/Extensions/Screens/ExtensionsAnimeScreen.dart';
import 'package:dartotsu/Core/Services/BaseServiceData.dart';
import 'package:dartotsu/Core/Services/Screens/BaseHomeScreen.dart';
import 'package:get/get.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Screens/BaseAnimeScreen.dart';
import '../../Core/Services/Screens/BaseMangaScreen.dart';
import '../../Core/Services/Screens/BaseSearchScreen.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'ExtensionsData.dart';
import 'Screens/ExtensionsHomeScreen.dart';
import 'Screens/ExtensionsMangaScreen.dart';
import 'Screens/ExtensionsSearchScreen.dart';

class ExtensionsService extends MediaService {
  @override
  String get getName => getString.extension(1);

  @override
  BaseServiceData get data => ExtensionsC;

  @override
  BaseAnimeScreen? get animeScreen =>
      Get.put(ExtensionsAnimeScreen(), tag: "ExtensionsAnimeScreen");

  @override
  BaseMangaScreen? get mangaScreen =>
      Get.put(ExtensionsMangaScreen(), tag: "ExtensionsMangaScreen");

  @override
  BaseHomeScreen? get homeScreen =>
      Get.put(ExtensionsHomeScreen(), tag: "ExtensionsHomeScreen");

  @override
  BaseSearchScreen? get searchScreen => ExtensionsSearchScreen();

  @override
  String get iconPath => "assets/svg/extensions.svg";
}
