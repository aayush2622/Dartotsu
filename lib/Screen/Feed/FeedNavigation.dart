import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/NotImplemented.dart';
import '../../Core/Services/Screens/DetailCache.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../Detail/DetailScreen.dart';
import '../Detail/ListEditorSheet.dart';
import '../Notifications/NotificationsScreen.dart';
import '../Search/SearchScreen.dart';

void openDetail(
  BuildContext context,
  MediaService service,
  Media media, {
  String? heroTag,
}) {
  navigateToPage(
    context,
    DetailScreen(
      media: media,
      view: service.detailView,
      mutations: service.getMutations,
      heroTag: heroTag,
    ),
    hero: true,
  );
}

void openSearch(
  BuildContext context,
  MediaService service, {
  MediaType? type,
  String? query,
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
          ),
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

Future<void> showQuickListEditor(
  BuildContext context,
  MediaService service,
  Media media,
) async {
  final mutations = service.getMutations;
  if (mutations == null) {
    snackString('${service.name} has no list to edit');
    return;
  }
  unawaited(HapticFeedback.mediumImpact());
  final key = '${service.id}/${media.id}';
  var full = DetailCache.get(key);
  if (full == null) {
    snackString('Loading…', simple: true);
    try {
      full = await service.getQueries?.mediaDetails(media);
      if (full != null) DetailCache.put(key, full);
    } catch (_) {}
  }
  if (!context.mounted) return;
  showListEditor(
    context,
    media: full ?? media,
    view: service.detailView.listEditor,
    mutations: mutations,
    onSaved: () async => DetailCache.remove(key),
  );
}
