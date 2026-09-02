import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/NotImplemented.dart';
import 'FeedHeader.dart';
import 'FeedNavigation.dart';
import 'MediaSectionsScreen.dart';

/// One browse tab for a [MediaType] the service declares — a spotlight
/// carousel, the viewer's lists folded above the browse rows, and per-section
/// pagination.
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
      spotlight: 'Trending Now',
    );
  }
}
