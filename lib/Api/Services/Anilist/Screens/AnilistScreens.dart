import 'package:flutter/material.dart';

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/ServiceScreens.dart';
import '../../../../Screen/Common/DetailScreen.dart';
import '../../../../Screen/Common/HomeHeader.dart';
import '../../../../Screen/Common/MediaRailsScreen.dart';
import '../../../../Screen/Common/NotificationsScreen.dart';
import '../../../../Screen/Common/SearchScreen.dart';
import '../../../../Utils/Functions/GetXFunctions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../AnilistAuth.dart';

AnilistAuth get _auth => find<AnilistAuth>();

void _openDetail(BuildContext context, Media media) => navigateToPage(
  context,
  DetailScreen(media: media, api: _auth.api, mutations: _auth.api),
);

class AnilistHomeScreen implements HomeScreenView {
  @override
  Widget build(BuildContext context) => MediaRailsScreen(
    header: const HomeHeader(),
    loader: _auth.api.getHomeRails,
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
  );
}

class AnilistAnimeScreen implements AnimeScreenView {
  @override
  Widget build(BuildContext context) => MediaRailsScreen(
    loader: _auth.api.getAnimeRails,
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
    onSearch: () =>
        navigateToPage(context, SearchScreen(api: _auth.api, anime: true)),
  );
}

class AnilistMangaScreen implements MangaScreenView {
  @override
  Widget build(BuildContext context) => MediaRailsScreen(
    loader: _auth.api.getMangaRails,
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
    onSearch: () =>
        navigateToPage(context, SearchScreen(api: _auth.api, anime: false)),
  );
}

class AnilistSearchScreen implements SearchScreenView {
  @override
  Widget build(BuildContext context, {required bool anime, String? query}) =>
      SearchScreen(api: _auth.api, anime: anime, query: query);
}

class AnilistDetailScreen implements DetailScreenView {
  @override
  Widget build(BuildContext context, Media media) =>
      DetailScreen(media: media, api: _auth.api, mutations: _auth.api);
}

class AnilistNotificationScreen implements NotificationScreenView {
  @override
  Widget build(BuildContext context) => NotificationsScreen(api: _auth.api);
}
