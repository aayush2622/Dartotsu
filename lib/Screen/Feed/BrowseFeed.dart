import '../../Utils/Functions/NavigateToScreen.dart';
import '../Charts/ChartsScreen.dart';
import '../../Core/Offline/OfflineMode.dart';
import '../../Core/State/State.dart';
import '../Downloads/Components/OfflineFeed.dart';

import 'package:flutter/material.dart';

import '../../Api/Services/Extension/Services.dart' show extensionServiceId;
import '../../Core/Services/MediaService.dart';
import '../../Widgets/Components/NotImplemented.dart';
import 'FeedHeader.dart';
import 'FeedNavigation.dart';
import 'ScreenWidgetList.dart';
import '../Detail/ListEditorSheet.dart';

class BrowseFeed extends StatelessWidget {
  final MediaService service;
  final MediaType type;
  const BrowseFeed({super.key, required this.service, required this.type});

  @override
  Widget build(BuildContext context) => Watch(() {
    if (find<OfflineMode>().isOffline.value) {
      return OfflineFeed(
        service: service,
        type: type,
        header: FeedHeader(title: service.feedLabel(type)),
      );
    }
    return _feed(context);
  });

  Widget _feed(BuildContext context) {
    final view = service.feedView;
    if (view == null) {
      return NotImplemented(service: service.name, area: type.label);
    }
    return ScreenWidgetList(
      header: FeedHeader(
        title: service.feedLabel(type),
        onCalendar: service.calendarView != null
            ? () => openCalendar(context, service)
            : null,
        onNews: service.newsView == null
            ? null
            : () => openNews(context, service),
        onLists: service.communityListsView == null
            ? null
            : () => openCommunityLists(context, service),
        onCharts: type == MediaType.anime
            ? () => navigateToPage(context, ChartsScreen(service: service))
            : null,
        onSearch: service.searchView == null
            ? null
            : () => openSearch(context, service, type: type),
      ),
      loader: () => view.screenStream(type),
      sectionTypeOf: (title) => view.sectionType(type, title),
      chips: view.chips(type),
      skeleton: view.skeleton(type),
      verticalTail: service.id != extensionServiceId,
      onChip: (chip) => view.chipMedia(type, chip),
      cacheId: '${service.id}/${type.name}',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onMediaLongPress: (m) => showQuickListEditor(context, service, m),
    );
  }
}
