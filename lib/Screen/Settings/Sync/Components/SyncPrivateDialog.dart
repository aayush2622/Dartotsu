import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Widgets/Components/AlertDialogBuilder.dart';

Future<bool?> askSyncPrivate(BuildContext context, int count) {
  final answer = Completer<bool?>();
  AlertDialogBuilder(context)
      .setTitle(getString.syncPrivateTitle)
      .setMessage(getString.syncPrivateAsk(count))
      .setPositiveButton(
        getString.syncPrivateInclude,
        () => answer.complete(true),
      )
      .setNeutralButton(getString.syncPrivateSkip, () => answer.complete(false))
      .setNegativeButton(getString.cancel, () => answer.complete(null))
      .setOnDismissListener(() {
        if (!answer.isCompleted) answer.complete(null);
      })
      .show<void>();
  return answer.future;
}
