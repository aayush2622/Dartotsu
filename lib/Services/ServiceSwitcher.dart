import 'package:dantotsu/Preferences/PrefManager.dart';
import 'package:dantotsu/api/Anilist/AnilistService.dart';
import 'package:flutter/material.dart';

import '../Preferences/Preferences.dart';
import '../api/Kitsu/KitsuService.dart';
import '../api/MyAnimeList/MalService.dart';
import '../api/Other/OtherService.dart';
import 'MediaService.dart';

class MediaServiceProvider with ChangeNotifier {
  late MediaService _currentService;

  MediaService get currentService => _currentService;

  MediaService get Anilist => AnilistService();

  MediaService get Kitsu => KitsuService();

  MediaService get Mal => MalService();

  MediaService get Other => OtherService();

  MediaServiceProvider() {
    var type = _stringToType(PrefManager.getVal(PrefName.source));
    _currentService = _type(type);
  }

  void switchService(MediaServiceType type) {
    _type(type);
    PrefManager.setVal(PrefName.source, type.name);
    _currentService = _type(type);
    notifyListeners();
  }

  MediaService _type(MediaServiceType type) {
    switch (type) {
      case MediaServiceType.KITSU:
        return Kitsu;
      case MediaServiceType.MAL:
        return Mal;
      case MediaServiceType.ANILIST:
        return Anilist;
      case MediaServiceType.Other:
        return Other;
      default:
        return Anilist;
    }
  }

  MediaServiceType _stringToType(String type) {
    switch (type) {
      case 'KITSU':
        return MediaServiceType.KITSU;
      case 'MAL':
        return MediaServiceType.MAL;
      case 'ANILIST':
        return MediaServiceType.ANILIST;
      case 'Other':
        return MediaServiceType.Other;
      default:
        return MediaServiceType.ANILIST;
    }
  }
}
