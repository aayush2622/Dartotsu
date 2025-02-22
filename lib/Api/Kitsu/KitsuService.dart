import 'package:dantotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dantotsu/Api/Kitsu/KitsuData.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Theme/LanguageSwitcher.dart';

class KitsuService extends MediaService {
  @override
  String get getName => getString.kitsu;

  @override
  String get iconPath => "assets/svg/kitsu.svg";

  @override
  BaseServiceData get data => KitsuController();

  @override
  BaseHomeScreen? get homeScreen => null;

  @override
  BaseAnimeScreen? get animeScreen => null;

  @override
  BaseMangaScreen? get mangaScreen => null;
}
