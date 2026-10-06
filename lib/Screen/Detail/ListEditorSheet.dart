import 'package:flutter/material.dart';

import '../../Core/Services/Api/Mutations.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/Services/Screens/ServiceScreens.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/ScreenWidgetView.dart';

void showListEditor(
  BuildContext context, {
  required Media media,
  required ListEditorScreenView view,
  required Mutations mutations,
  required Future<void> Function() onSaved,
}) {
  final draft = ListEditorDraft(media, customLists: view.customLists(media));

  Future<void> run(Future<void> Function() action, String done) async {
    if (context.mounted) Navigator.pop(context);
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
