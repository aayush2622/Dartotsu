import 'package:dartotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dartotsu/api/Kitsu/KitsuData.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';

class KitsuService extends MediaService {
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
