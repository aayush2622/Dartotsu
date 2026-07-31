import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';
import '../../Services/MediaService.dart';
import '../../Services/Screens/BaseAnimeScreen.dart';
import '../../Services/Screens/BaseHomeScreen.dart';
import '../../Services/Screens/BaseLoginScreen.dart';
import '../../Services/Screens/BaseMangaScreen.dart';
import '../../Widgets/CustomBottomDialog.dart';
import 'MangaBaka.dart';
import 'MangaBakaListEditor.dart';
import 'Screen/MangaBakaAnimeScreen.dart';
import 'Screen/MangaBakaHomeScreen.dart';
import 'Screen/MangaBakaMangaScreen.dart';

class MangaBakaService extends MediaService {
  MangaBakaService() {
    MangaBaka.getSavedToken();
  }

  @override
  String get getName => "MangaBaka";

  @override
  String get iconPath => "assets/svg/mangabaka.svg";

  @override
  BaseServiceData get data => MangaBaka;

  @override
  BaseHomeScreen get homeScreen =>
      Get.put(MangaBakaHomeScreen(MangaBaka), tag: "MangaBakaHomeScreen");

  @override
  BaseMangaScreen get mangaScreen =>
      Get.put(MangaBakaMangaScreen(MangaBaka), tag: "MangaBakaMangaScreen");

  @override
  BaseAnimeScreen get animeScreen =>
      Get.put(MangaBakaAnimeScreen(MangaBaka), tag: "MangaBakaAnimeScreen");

  @override
  BaseLoginScreen get loginScreen =>
      Get.put(MangaBakaLoginScreen(MangaBaka), tag: "MangaBakaLoginScreen");

  @override
  void compactListEditor(context, media) =>
      showCustomBottomDialog(context, MangaBakaListEditorDialog(media: media));

  @override
  void listEditor(context, media) => showCustomBottomDialog(
      context, MangaBakaListEditorDialog(media: media, isCompact: false));
}

class MangaBakaLoginScreen extends BaseLoginScreen {
  final MangaBakaController controller;

  MangaBakaLoginScreen(this.controller);

  @override
  void login(BuildContext context) => controller.login(context);
}
