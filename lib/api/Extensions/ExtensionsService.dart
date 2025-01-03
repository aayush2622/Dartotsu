import 'package:dantotsu/Services/BaseServiceData.dart';
import 'package:dantotsu/api/Extensions/ExtensionsAnimeScreen.dart';
import 'package:get/get.dart';

import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import 'ExtensionsData.dart';

class ExtensionsService extends MediaService {
  @override
  BaseServiceData get data => ExtensionsC;

  @override
  BaseAnimeScreen? get animeScreen => Get.put(ExtensionsAnimeScreen());

  @override
  String get iconPath => "assets/svg/discord.svg";
}