import 'package:flutter/widgets.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Detail/DetailScreen.dart';
import '../Notifications/NotificationsScreen.dart';
import '../Search/SearchScreen.dart';

void openDetail(BuildContext context, MediaService service, Media media) {
  final view = service.detailView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Details')
        : DetailScreen(
            media: media,
            view: view,
            mutations: service.getMutations,
          ),
  );
}

void openSearch(
  BuildContext context,
  MediaService service, {
  bool anime = true,
  String? query,
}) {
  final view = service.searchView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Search')
        : SearchScreen(view: view, anime: anime, query: query),
  );
}

void openNotifications(BuildContext context, MediaService service) {
  final view = service.notificationView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Notifications')
        : NotificationsScreen(view: view),
  );
}
