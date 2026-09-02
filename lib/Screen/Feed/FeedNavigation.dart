import 'package:flutter/widgets.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Detail/DetailScreen.dart';
import '../Notifications/NotificationsScreen.dart';
import '../Search/SearchScreen.dart';

void openDetail(BuildContext context, MediaService service, Media media) {
  final queries = service.getQueries;
  navigateToPage(
    context,
    queries == null
        ? NotImplemented(service: service.name, area: 'Details')
        : DetailScreen(
            media: media,
            queries: queries,
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
  final queries = service.getQueries;
  navigateToPage(
    context,
    queries == null
        ? NotImplemented(service: service.name, area: 'Search')
        : SearchScreen(queries: queries, anime: anime, query: query),
  );
}

void openNotifications(BuildContext context, MediaService service) {
  final queries = service.getQueries;
  navigateToPage(
    context,
    queries == null
        ? NotImplemented(service: service.name, area: 'Notifications')
        : NotificationsScreen(queries: queries),
  );
}
