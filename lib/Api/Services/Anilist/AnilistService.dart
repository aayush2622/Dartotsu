import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

class AnilistService extends MediaService implements NavBarProvider {
  @override
  String get id => "anilist";

  @override
  String get name => "AniList";

  @override
  String get iconPath => "assets/svg/anilist.svg";

  @override
  List<NavItem> get navBarItems => [
    NavItem(
      index: 1,
      icon: Icons.home_rounded,
      label: getString.home.toUpperCase(),
    ),
    NavItem(
      index: 0,
      icon: Icons.movie_filter_rounded,
      label: getString.anime.toUpperCase(),
    ),
    NavItem(
      index: 3,
      icon: Icons.search_rounded,
      label: getString.manga.toUpperCase(),
    ),
  ];
}
