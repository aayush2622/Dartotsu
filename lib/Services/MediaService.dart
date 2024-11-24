import 'package:flutter/material.dart';

import 'BaseServiceData.dart';
import 'Screens/BaseAnimeScreen.dart';
import 'Screens/BaseHomeScreen.dart';
import 'Screens/BaseMangaScreen.dart';

abstract class MediaService {
  MediaServiceType get type;

  BaseServiceData get data;

  BaseHomeScreen? homeScreen;

  BaseAnimeScreen? animeScreen;

  BaseMangaScreen? mangaScreen;

  Widget LoginScreen() => notImplemented("LoginScreen"); // not like this

  notImplemented(String name) {
    return Center(
      child: Text("$name not implemented on ${type.name}"),
    );
  }
}

enum MediaServiceType {
  ANILIST,
  KITSU,
  MAL,
  Other;

  Icon get iconUrl {
    switch (this) {
      case MediaServiceType.ANILIST:
        return const Icon(Icons.tv);
      case MediaServiceType.KITSU:
        return const Icon(Icons.calendar_month);
      case MediaServiceType.MAL:
        return const Icon(Icons.calendar_today);
      default:
        return const Icon(Icons.ac_unit);
    }
  }
}
