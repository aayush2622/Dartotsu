import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Widgets/Components/AlertDialogBuilder.dart';

Future<bool?> askSyncPrivate(BuildContext context, int count) {
  final answer = Completer<bool?>();
  AlertDialogBuilder(context)
      .setTitle(getString.syncPrivateTitle)
      .setMessage(getString.syncPrivateAsk(count))
      .setPositiveButton(getString.syncPrivateInclude, () {
        PrefName.syncPrivate.rx.value = 'sync';
        answer.complete(true);
      })
      .setNeutralButton(getString.syncPrivateSkip, () {
        PrefName.syncPrivate.rx.value = 'skip';
        answer.complete(false);
      })
      .setNegativeButton(getString.cancel, () => answer.complete(null))
      .setOnDismissListener(() {
        if (!answer.isCompleted) answer.complete(null);
      })
      .show<void>();
  return answer.future;
}

Future<bool> askSyncDelete(BuildContext context, int count) {
  final answer = Completer<bool>();
  AlertDialogBuilder(context)
      .setTitle(getString.syncDeleteTitle)
      .setMessage(getString.syncDeleteConfirm(count))
      .setPositiveButton(
        getString.syncDeleteAction,
        () => answer.complete(true),
      )
      .setNegativeButton(getString.cancel, () => answer.complete(false))
      .setOnDismissListener(() {
        if (!answer.isCompleted) answer.complete(false);
      })
      .show<void>();
  return answer.future;
}
