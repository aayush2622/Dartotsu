import 'package:flutter/widgets.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Calendar/CalendarScreen.dart';
import '../CommunityLists/CommunityListsScreen.dart';
import '../Detail/DetailScreen.dart';
import '../Entity/EntityScreen.dart';
import '../News/NewsScreen.dart';
import '../Notifications/NotificationsScreen.dart';
import '../Search/SearchScreen.dart';

void openDetail(
  BuildContext context,
  MediaService service,
  Media media, {
  String? heroTag,
  int? commentId,
  bool instant = false,
}) {
  navigateToPage(
    context,
    DetailScreen(
      media: media,
      view: service.detailView,
      mutations: service.getMutations,
      heroTag: heroTag,
      commentId: commentId,
    ),
    hero: !instant,
    instant: instant,
  );
}

void openSearch(
  BuildContext context,
  MediaService service, {
  MediaType? type,
  String? query,
  String? genre,
  String? tag,
}) {
  final view = service.searchView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Search')
        : SearchScreen(
            view: view,
            type: type ?? view.types.first,
            query: query,
            genre: genre,
            tag: tag,
          ),
  );
}

void openCalendar(BuildContext context, MediaService service) {
  final view = service.calendarView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Calendar')
        : CalendarScreen(view: view),
  );
}

void openCommunityLists(BuildContext context, MediaService service) {
  final view = service.communityListsView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'Lists')
        : CommunityListsScreen(view: view),
  );
}

void openNews(BuildContext context, MediaService service) {
  final view = service.newsView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(service: service.name, area: 'News')
        : NewsScreen(view: view),
  );
}

void openNotifications(BuildContext context, MediaService service) {
  navigateToPage(context, NotificationsScreen(service: service));
}

void openEntity(
  BuildContext context,
  MediaService service,
  EntityKind kind,
  String id, {
  String? name,
  String? image,
}) {
  final view = service.entityView;
  navigateToPage(
    context,
    view == null
        ? NotImplemented(
            service: service.name,
            area: switch (kind) {
              EntityKind.character => 'Characters',
              EntityKind.staff => 'Staff',
              EntityKind.studio => 'Studios',
            },
          )
        : EntityScreen(
            view: view,
            kind: kind,
            id: id,
            name: name,
            image: image,
          ),
    hero: kind != EntityKind.studio,
  );
}
