import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../Feed/FeedNavigation.dart';
import 'ActivityFeedScreen.dart';
import 'FollowScreen.dart';
import 'ProfileScreen.dart';

void navigateToList(BuildContext context, Widget screen) =>
    navigateToPage(context, screen);

void openProfile(
  BuildContext context,
  MediaService service, {
  String? id,
  String? name,
  UserBrief? user,
  int tab = 0,
}) => unawaited(
  pushProfile(context, service, id: id, name: name, user: user, tab: tab),
);

Future<void> pushProfile(
  BuildContext context,
  MediaService service, {
  String? id,
  String? name,
  UserBrief? user,
  int tab = 0,
}) {
  if (service.socialView == null) {
    return navigateToPage(
      context,
      NotImplemented(service: service.name, area: 'Profiles'),
    );
  }
  return navigateToPage(
    context,
    ProfileScreen(
      service: service,
      id: id ?? user?.id,
      name: name ?? user?.name,
      seed: user,
      initialTab: tab,
    ),
  );
}

void openFollows(
  BuildContext context,
  MediaService service,
  String userId, {
  required bool followers,
  String? title,
}) {
  if (service.socialView == null) return;
  navigateToPage(
    context,
    FollowScreen(
      service: service,
      userId: userId,
      followers: followers,
      userName: title,
    ),
  );
}

void openActivityFeed(
  BuildContext context,
  MediaService service, {
  String? activityId,
}) {
  if (service.socialView == null) {
    navigateToPage(
      context,
      NotImplemented(service: service.name, area: 'Activity'),
    );
    return;
  }
  navigateToPage(
    context,
    ActivityFeedScreen(service: service, activityId: activityId),
  );
}

Future<void> openAppLink(
  BuildContext context,
  MediaService service,
  String url,
) async {
  final link = service.socialView?.parseLink(url);
  if (link == null) return openLinkInBrowser(url);
  switch (link.kind) {
    case AppLinkKind.anime:
    case AppLinkKind.manga:
      final media = await service.getQueries?.getMedia(link.value);
      if (!context.mounted) return;
      if (media == null) return snackString('Could not open this title');
      openDetail(context, service, media);
    case AppLinkKind.user:
      openProfile(
        context,
        service,
        id: int.tryParse(link.value) == null ? null : link.value,
        name: int.tryParse(link.value) == null ? link.value : null,
      );
    case AppLinkKind.character:
      openEntity(context, service, EntityKind.character, link.value);
    case AppLinkKind.staff:
      openEntity(context, service, EntityKind.staff, link.value);
    case AppLinkKind.studio:
      openEntity(context, service, EntityKind.studio, link.value);
    case AppLinkKind.activity:
      openActivityFeed(context, service, activityId: link.value);
  }
}
