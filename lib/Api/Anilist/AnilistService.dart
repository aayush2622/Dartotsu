import '../../Core/Services/BaseServiceData.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Screens/BaseAnimeScreen.dart';
import '../../Core/Services/Screens/BaseHomeScreen.dart';
import '../../Core/Services/Screens/BaseLoginScreen.dart';
import '../../Core/Services/Screens/BaseMangaScreen.dart';
import '../../Core/Services/Screens/BaseSearchScreen.dart';
import 'AnilistData.dart';

class AnilistService extends MediaService {
  @override
  String get name => "Anilist";

  @override
  BaseServiceData get data => AnilistData();

  @override
  String get iconPath => throw UnimplementedError();

  @override
  BaseAnimeScreen? get animeScreen => throw UnimplementedError();

  @override
  BaseHomeScreen? get homeScreen => throw UnimplementedError();

  @override
  BaseLoginScreen? get loginScreen => throw UnimplementedError();

  @override
  BaseMangaScreen? get mangaScreen => throw UnimplementedError();

  @override
  BaseSearchScreen? get searchScreen => throw UnimplementedError();
}
