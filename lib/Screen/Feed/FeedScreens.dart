import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Widgets/Components/NotImplemented.dart';
import 'MediaSectionsScreen.dart';
import '../Home/HomeHeader.dart';
import 'FeedHeader.dart';
import 'FeedNavigation.dart';

/// The Home tab — the viewer's dashboard plus editorial rows. Works for any
/// [MediaService] that exposes [Queries]; the service supplies only data.
class HomeFeed extends StatelessWidget {
  final MediaService service;
  const HomeFeed({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final queries = service.getQueries;
    if (queries == null) {
      return NotImplemented(service: service.name, area: 'Home');
    }
    return MediaSectionsScreen(
      header: const HomeHeader(),
      loader: queries.initHomePage,
      cacheId: '${service.id}/home',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m) => openDetail(context, service, m),
    );
  }
}

/// The Anime / Manga browse tab — the viewer's own lists folded above the
/// browse sections.
class BrowseFeed extends StatelessWidget {
  final MediaService service;
  final bool anime;
  const BrowseFeed({super.key, required this.service, required this.anime});

  String get _area => anime ? 'Anime' : 'Manga';

  Future<Map<String, List<Media>>> _load(Queries queries) async {
    final results = await Future.wait([
      queries.getMediaLists(anime: anime),
      anime ? queries.getAnimeList() : queries.getMangaList(),
    ]);
    return {...results[0], ...results[1]};
  }

  @override
  Widget build(BuildContext context) {
    final queries = service.getQueries;
    if (queries == null) {
      return NotImplemented(service: service.name, area: _area);
    }
    return MediaSectionsScreen(
      header: FeedHeader(
        title: _area,
        onSearch: () => openSearch(context, service, anime: anime),
      ),
      loader: () => _load(queries),
      cacheId: '${service.id}/${anime ? 'anime' : 'manga'}',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m) => openDetail(context, service, m),
    );
  }
}
