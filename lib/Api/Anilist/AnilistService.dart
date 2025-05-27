import 'package:dartotsu/Api/Anilist/Screen/AnilistAnimeScreen.dart';
import 'package:dartotsu/Api/Anilist/Screen/AnilistSearchScreen.dart';
import 'package:dartotsu/Services/Screens/BaseAnimeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseHomeScreen.dart';
import 'package:dartotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:dartotsu/Services/Screens/BaseMangaScreen.dart';
import 'package:dartotsu/Services/Screens/BaseSearchScreen.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'Anilist.dart';
import 'ListEditor.dart' as l;
import 'Screen/AnilistHomeScreen.dart';
import 'Screen/AnilistMangaScreen.dart';

class AnilistService extends MediaService {
  AnilistService() {
    Anilist.getSavedToken();
  }

  @override
  String get getName => getString.anilist;

  @override
  String get iconPath => "assets/svg/anilist.svg";

  @override
  BaseServiceData get data => Anilist;

  @override
  BaseAnimeScreen get animeScreen =>
      Get.put(AnilistAnimeScreen(Anilist), tag: "AnilistAnimeScreen");

  @override
  BaseHomeScreen get homeScreen =>
      Get.put(AnilistHomeScreen(Anilist), tag: "AnilistHomeScreen");

  @override
  BaseMangaScreen get mangaScreen =>
      Get.put(AnilistMangaScreen(Anilist), tag: "AnilistMangaScreen");

  @override
  BaseLoginScreen get loginScreen =>
      Get.put(AnilistLoginScreen(Anilist), tag: "AnilistLoginScreen");

  @override
  BaseSearchScreen get searchScreen => AnilistSearchScreen(Anilist);

  @override
  void compactListEditor(context, media) =>
      showCustomBottomDialog(context, l.ListEditorDialog(media: media));

  @override
  void listEditor(context, media) => showCustomBottomDialog(
      context, l.ListEditorDialog(media: media, isCompact: false));
}

class AnilistLoginScreen extends BaseLoginScreen {
  final AnilistController Anilist;

  AnilistLoginScreen(this.Anilist);

  @override
  void login(BuildContext context) => Anilist.login(context);
}
