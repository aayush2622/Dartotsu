import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Screens/DetailCache.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/ScreenWidgetView.dart';
import '../../Utils/Functions/NavigateToScreen.dart';

void showListEditor(
  BuildContext context, {
  required Media media,
  required ListEditorScreenView view,
  required Mutations mutations,
  required Future<void> Function() onSaved,
}) {
  final draft = ListEditorDraft(media, customLists: view.customLists(media));

  Future<void> run(Future<void> Function() action, String done) async {
    if (context.mounted) popPage(context);
    try {
      await action();
      await onSaved();
      snackString(done);
    } catch (e) {
      snackString('$e');
    }
  }

  showCustomBottomDialog(
    context,
    CustomBottomDialog(
      title: media.mainName,
      viewList: [
        for (final w in view.build(media, draft)) ScreenWidgetView(w),
        const SizedBox(height: 12),
      ],
      positiveText: 'Save',
      positiveCallback: () => run(() async {
        draft.applyTo(media);
        await mutations.editList(
          media,
          customList: view.advanced ? draft.selectedCustomLists : null,
        );
      }, 'Saved to your list'),
      negativeText: media.userListId == null ? null : 'Remove',
      negativeCallback: () =>
          run(() => mutations.deleteFromList(media), 'Removed from your list'),
    ),
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
