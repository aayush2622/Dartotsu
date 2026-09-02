import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Home/HomeHeader.dart';
import 'FeedHeader.dart';
import 'FeedNavigation.dart';
import 'MediaSectionsScreen.dart';

/// The Home tab — the viewer's dashboard, plus a spotlight carousel and the
/// service's editorial rows.
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
      spotlight: 'Trending Anime',
    );
  }
}

/// One browse tab for a [MediaType] the service declares — the viewer's lists
/// folded above the browse rows, per-section pagination, no carousel.
class BrowseFeed extends StatelessWidget {
  final MediaService service;
  final MediaType type;
  const BrowseFeed({super.key, required this.service, required this.type});

  @override
  Widget build(BuildContext context) {
    final view = service.feedView;
    if (view == null) {
      return NotImplemented(service: service.name, area: type.label);
    }
    return MediaSectionsScreen(
      header: FeedHeader(
        title: type.label,
        onSearch: service.searchView == null
            ? null
            : () => openSearch(context, service, type: type),
      ),
      loader: () async {
        final results = await Future.wait([
          view.userLists(type),
          view.browse(type),
        ]);
        return {...results[0], ...results[1]};
      },
      cacheId: '${service.id}/${type.name}',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onSectionLoadMore: (section, page) => view.loadMore(type, section, page),
    );
  }
}
