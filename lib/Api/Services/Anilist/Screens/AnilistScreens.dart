import 'package:flutter/material.dart';

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/ServiceScreens.dart';
import '../../../../Screen/Common/DetailScreen.dart';
import '../../../../Screen/Common/HomeHeader.dart';
import '../../../../Screen/Common/MediaSectionsScreen.dart';
import '../../../../Screen/Common/NotificationsScreen.dart';
import '../../../../Screen/Common/SearchScreen.dart';
import '../../../../Utils/Functions/GetXFunctions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../AnilistAuth.dart';

AnilistAuth get _auth => find<AnilistAuth>();

void _openDetail(BuildContext context, Media media) => navigateToPage(
  context,
  DetailScreen(
    media: media,
    queries: _auth.queries,
    mutations: _auth.mutations,
  ),
);

Future<Map<String, List<Media>>> _mediaTab({required bool anime}) async {
  final results = await Future.wait([
    _auth.queries.getMediaLists(anime: anime),
    anime ? _auth.queries.getAnimeList() : _auth.queries.getMangaList(),
  ]);
  return {...results[0], ...results[1]};
}

class AnilistHomeScreen implements HomeScreenView {
  @override
  Widget build(BuildContext context) => MediaSectionsScreen(
    header: const HomeHeader(),
    loader: _auth.queries.initHomePage,
    cacheId: 'anilist/home',
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
  );
}

class AnilistAnimeScreen implements AnimeScreenView {
  @override
  Widget build(BuildContext context) => MediaSectionsScreen(
    loader: () => _mediaTab(anime: true),
    cacheId: 'anilist/anime',
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
    onSearch: () => navigateToPage(
      context,
      SearchScreen(queries: _auth.queries, anime: true),
    ),
  );
}

class AnilistMangaScreen implements MangaScreenView {
  @override
  Widget build(BuildContext context) => MediaSectionsScreen(
    loader: () => _mediaTab(anime: false),
    cacheId: 'anilist/manga',
    reloadOn: _auth.user.stream,
    onMediaTap: (m) => _openDetail(context, m),
    onSearch: () => navigateToPage(
      context,
      SearchScreen(queries: _auth.queries, anime: false),
    ),
  );
}

class AnilistSearchScreen implements SearchScreenView {
  @override
  Widget build(BuildContext context, {required bool anime, String? query}) =>
      SearchScreen(queries: _auth.queries, anime: anime, query: query);
}

class AnilistDetailScreen implements DetailScreenView {
  @override
  Widget build(BuildContext context, Media media) => DetailScreen(
    media: media,
    queries: _auth.queries,
    mutations: _auth.mutations,
  );
}

class AnilistNotificationScreen implements NotificationScreenView {
  @override
  Widget build(BuildContext context) =>
      NotificationsScreen(queries: _auth.queries);
}
