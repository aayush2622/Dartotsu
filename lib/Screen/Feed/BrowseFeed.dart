import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    final view = service.feedView;
    if (view == null) {
      return NotImplemented(service: service.name, area: type.label);
    }
    return ScreenWidgetList(
      header: FeedHeader(
        title: type.label,
        onCalendar: type.isVideo && service.calendarView != null
            ? () => openCalendar(context, service)
            : null,
        onSearch: service.searchView == null
            ? null
            : () => openSearch(context, service, type: type),
      ),
      loader: () => view.screenStream(type),
      sectionTypeOf: (title) => view.sectionType(type, title),
      chips: view.chips(type),
      onChip: (chip) => view.chipMedia(type, chip),
      cacheId: '${service.id}/${type.name}',
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onMediaLongPress: (m) => showQuickListEditor(context, service, m),
    );
  }
}
