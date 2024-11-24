import 'package:dantotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dantotsu/Services/Screens/BaseMangaScreen.dart';

import '../../Services/MediaService.dart';
import '../../Services/BaseServiceData.dart';

class KitsuService extends MediaService {
  @override
  MediaServiceType get type => MediaServiceType.KITSU;

  @override
  BaseServiceData get data => throw UnimplementedError();

  @override
  BaseHomeScreen? get homeScreen => null;

  @override
  BaseAnimeScreen? get animeScreen => null;

  @override
  BaseMangaScreen? get mangaScreen => null;
}
