import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Preferences/SafStorage.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';

Future<bool> ensureStorageFolder([BuildContext? context]) async {
  if (!SafStorage.needsFolder) return true;
  context ??= appOverlayContext ?? appContext;
  if (context == null || !context.mounted) return false;
  final done = Completer<bool>();
  unawaited(
    AlertDialogBuilder(context)
        .setTitle(getString.storageFolderRequiredTitle)
        .setMessage(getString.storageFolderRequiredMessage)
        .setPositiveButton(getString.storageFolderChoose, () async {
          final picked = await SafStorage.pick();
          if (picked != null) {
            snackString(getString.storageFolderSet(picked.name));
          }
          if (!done.isCompleted) done.complete(picked != null);
        })
        .setNegativeButton(getString.cancel, () {
          if (!done.isCompleted) done.complete(false);
        })
        .setOnDismissListener(() {
          if (!done.isCompleted) done.complete(false);
        })
        .show<void>(),
  );
  return done.future;
}

Future<bool> saveToChosenFolder(String path, {required String base}) async {
  if (!await ensureStorageFolder()) return false;
  return await SafStorage.exportPath(path, base: base) > 0;
}
