import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Feed/FeedNavigation.dart';
import '../Feed/MediaSectionsScreen.dart';
import 'HomeHeader.dart';

/// The Home tab — the viewer's dashboard, a spotlight carousel and the
/// service's editorial rows. `HomeScreenView` supplies the data.
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
