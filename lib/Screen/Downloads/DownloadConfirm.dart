import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Downloads/DownloadEngine.dart';
import '../../Core/Downloads/DownloadTask.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/AlertDialogBuilder.dart';

Future<bool> confirmRemove(
  BuildContext context,
  DownloadEngine engine,
  DownloadTask task,
) async {
  final name = '${task.mediaTitle} · ${unitBaseName(task)}';
  final confirmed = await AlertDialogBuilder(context)
      .setTitle(
        task.isDone ? getString.downloadDelete : getString.downloadCancel,
      )
      .setMessage(
        task.isDone
            ? getString.downloadDeleteConfirm(name)
            : getString.downloadCancelConfirm(name),
      )
      .confirm(getString.delete, getString.cancel);
  if (confirmed) unawaited(engine.remove(task));
  return confirmed;
}

void confirmClearQueue(
  BuildContext context,
  DownloadEngine engine,
  int count,
) => unawaited(
  AlertDialogBuilder(context)
      .setTitle(getString.downloadClearQueue)
      .setMessage(getString.downloadClearQueueConfirm(count))
      .setPositiveButton(getString.delete, () => unawaited(engine.clearQueue()))
      .setNegativeButton(getString.cancel, null)
      .show<void>(),
);

void confirmRemoveMany(
  BuildContext context,
  DownloadEngine engine,
  List<DownloadTask> tasks,
  VoidCallback onDone,
) => unawaited(
  AlertDialogBuilder(context)
      .setTitle(getString.downloadDeleteSelected)
      .setMessage(getString.downloadDeleteSelectedConfirm(tasks.length))
      .setPositiveButton(getString.delete, () {
        onDone();
        for (final task in tasks) {
          unawaited(engine.remove(task));
        }
      })
      .setNegativeButton(getString.cancel, null)
      .show<void>(),
);
