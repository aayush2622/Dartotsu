import 'package:dartotsu/Api/Simkl/SimklService.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Services/Screens/BaseLoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Api/Anilist/AnilistService.dart';
import '../Api/Extensions/ExtensionsService.dart';
import '../Api/MyAnimeList/MalService.dart';
import '../Preferences/PrefManager.dart';
import 'Model/Media.dart';
import '../Screens/HomeNavBar.dart';
import '../Theme/LanguageSwitcher.dart';
import 'BaseServiceData.dart';
import 'Screens/BaseAnimeScreen.dart';
import 'Screens/BaseHomeScreen.dart';
import 'Screens/BaseMangaScreen.dart';
import 'Screens/BaseSearchScreen.dart';

abstract class MediaService {
  String get getName;
  String get iconPath;
  BaseServiceData get data;
  BaseHomeScreen? get homeScreen;
  BaseAnimeScreen? get animeScreen;
  BaseMangaScreen? get mangaScreen;
  BaseLoginScreen? get loginScreen;
  BaseSearchScreen? get searchScreen;

  List<NavItem> get navBarItem => [
        NavItem(
            index: 0,
            icon: Icons.movie_filter_rounded,
            label: getString.anime.toUpperCase()),
        NavItem(
            index: 1,
            icon: Icons.home_rounded,
            label: getString.home.toUpperCase()),
        NavItem(
            index: 2,
            icon: Icons.import_contacts,
            label: getString.manga.toUpperCase()),
      ];

  void listEditor(BuildContext context, Media media) {}
  void compactListEditor(BuildContext context, Media media) {}

  Widget notImplemented(String name) =>
      Center(child: Text("$name not implemented on $getName"));
}

class MediaServiceController extends GetxController {
  final services = <MediaService>[].obs;

  late final Rx<MediaService> currentService;

  @override
  void onInit() {
    super.onInit();

    services.assignAll([
      AnilistService(),
      MalService(),
      SimklService(),
      ExtensionsService(),
    ]);

    final preferred = loadData(PrefName.service);

    currentService = Rx<MediaService>(
      _findService(preferred) ?? services.first,
    );
  }

  void switchService(String serviceName) {
    final newService = _findService(serviceName);

    if (newService != null) {
      currentService.value = newService;
      saveData(PrefName.service, serviceName);
    } else {
      snackString("Service with name $serviceName not found");
    }
  }

  MediaService? _findService(String serviceName) {
    return services.firstWhereOrNull(
      (s) => s.runtimeType.toString() == serviceName,
    );
  }
}
