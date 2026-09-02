import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Home/HomeHeader.dart';
import 'FeedHeader.dart';
import 'FeedNavigation.dart';
import 'MediaSectionsScreen.dart';

class HomeFeed extends StatelessWidget {
  final MediaService service;
  const HomeFeed({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final view = service.homeView;
    if (view == null) {
      return NotImplemented(service: service.name, area: 'Home');
    }
    return MediaSectionsScreen(
      header: const HomeHeader(),
      loader: view.sections,
      cacheId: '${service.id}/home',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
    );
  }
}

class BrowseFeed extends StatelessWidget {
  final MediaService service;
  final bool anime;
  const BrowseFeed({super.key, required this.service, required this.anime});

  String get _area => anime ? 'Anime' : 'Manga';

  FeedScreenView? get _view => anime ? service.animeView : service.mangaView;

  @override
  Widget build(BuildContext context) {
    final view = _view;
    if (view == null) {
      return NotImplemented(service: service.name, area: _area);
    }
    return MediaSectionsScreen(
      header: FeedHeader(
        title: _area,
        onSearch: service.searchView == null
            ? null
            : () => openSearch(context, service, anime: anime),
      ),
      loader: () async {
        final results = await Future.wait([view.userLists(), view.browse()]);
        return {...results[0], ...results[1]};
      },
      cacheId: '${service.id}/${anime ? 'anime' : 'manga'}',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
    );
  }
}
