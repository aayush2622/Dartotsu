import 'package:dartotsu/Api/Kitsu/KitsuData.dart';
import 'package:dartotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseMangaScreen.dart';

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
