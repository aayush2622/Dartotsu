import 'package:flutter/material.dart';

import '../../Api/Services/Anilist/AnilistApi.dart';
import '../../Api/Services/Anilist/AnilistAuth.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../Detail/DetailScreen.dart';
import '../Search/SearchScreen.dart';
import 'HomeHeader.dart';
import 'MediaRailsScreen.dart';

AnilistApi get _api => AnilistApi(find<AnilistAuth>().client);

void _openDetail(BuildContext context, Media media) =>
    navigateToPage(context, DetailScreen(media: media));

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = find<AnilistAuth>();
    return MediaRailsScreen(
      header: const HomeHeader(),
      loader: () => _api.dashboard(userId: auth.user.value?.id),
      onMediaTap: (m) => _openDetail(context, m),
    );
  }
}

class AnimeTab extends StatelessWidget {
  const AnimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = find<AnilistAuth>();
    return MediaRailsScreen(
      loader: () => _api.home(anime: true, userId: auth.user.value?.id),
      onMediaTap: (m) => _openDetail(context, m),
      onSearch: () => navigateToPage(context, const SearchScreen(anime: true)),
    );
  }
}

class MangaTab extends StatelessWidget {
  const MangaTab({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = find<AnilistAuth>();
    return MediaRailsScreen(
      loader: () => _api.home(anime: false, userId: auth.user.value?.id),
      onMediaTap: (m) => _openDetail(context, m),
      onSearch: () => navigateToPage(context, const SearchScreen(anime: false)),
    );
  }
}
