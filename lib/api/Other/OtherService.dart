import 'package:dantotsu/Services/BaseServiceData.dart';
import 'package:dantotsu/api/Other/OtherAnimeScreen.dart';
import 'package:get/get.dart';

import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import 'OtherData.dart';

class OtherService extends MediaService {
  @override
  BaseServiceData get data => Other;

  @override
  MediaServiceType get type => MediaServiceType.Other;

  @override
  BaseAnimeScreen? get animeScreen => Get.put(OtherAnimeScreen());
}