import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';

AnilistAuth get _auth => find<AnilistAuth>();

class AnilistHomeView implements HomeScreenView {
  @override
  Sections sections() => _auth.queries.initHomePage();

  @override
  Future<List<String?>> bannerImages() => _auth.queries.getBannerImages();
}

class AnilistAnimeView extends AnimeScreenView {
  @override
  Sections userLists() => _auth.queries.getMediaLists(anime: true);

  @override
  Sections browse() => _auth.queries.getAnimeList();
}

class AnilistMangaView extends MangaScreenView {
  @override
  Sections userLists() => _auth.queries.getMediaLists(anime: false);

  @override
  Sections browse() => _auth.queries.getMangaList();
}

class AnilistSearchView implements SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      _auth.queries.search(query);

  @override
  List<SearchType> get types => const [SearchType.ANIME, SearchType.MANGA];
}

class AnilistDetailView implements DetailScreenView {
  @override
  Future<Media?> details(Media media) => _auth.queries.mediaDetails(media);
}

class AnilistNotificationView implements NotificationScreenView {
  @override
  Future<List<ServiceNotification>> notifications({int page = 1}) =>
      _auth.queries.getNotifications(page: page);
}

class AnilistSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = _auth.user.value;
    return [
      Setting(
        type: SettingType.normal,
        name: 'AniList profile',
        description: user?.name ?? 'Not signed in',
        icon: Icons.open_in_new_rounded,
        isVisible: user != null,
        onClick: () =>
            openLinkInBrowser('https://anilist.co/user/${user?.name}'),
      ),
      Setting(
        type: SettingType.normal,
        name: 'Refresh from AniList',
        description: 'Re-pull your profile and counts',
        icon: Icons.refresh_rounded,
        isVisible: _auth.isLoggedIn,
        onClick: _auth.refreshUser,
      ),
    ];
  }
}
