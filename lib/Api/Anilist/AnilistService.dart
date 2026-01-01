import 'package:dartotsu/Core/Services/BaseServiceData.dart';

import 'package:dartotsu/Core/Services/Screens/BaseAnimeScreen.dart';

import 'package:dartotsu/Core/Services/Screens/BaseHomeScreen.dart';

import 'package:dartotsu/Core/Services/Screens/BaseLoginScreen.dart';

import 'package:dartotsu/Core/Services/Screens/BaseMangaScreen.dart';

import 'package:dartotsu/Core/Services/Screens/BaseSearchScreen.dart';
import '../../Core/Services/MediaService.dart';
import 'AnilistData.dart';

class AnilistService extends MediaService {
  @override
  BaseAnimeScreen? get animeScreen => throw UnimplementedError();

  @override
  BaseServiceData get data => AnilistData();

  @override
  String get getName => "Anilist";

  @override
  BaseHomeScreen? get homeScreen => throw UnimplementedError();

  @override
  String get iconPath => throw UnimplementedError();

  @override
  BaseLoginScreen? get loginScreen => throw UnimplementedError();

  @override
  BaseMangaScreen? get mangaScreen => throw UnimplementedError();

  @override
  BaseSearchScreen? get searchScreen => throw UnimplementedError();
}
