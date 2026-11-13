import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';

List<Setting> addonSettings(BuildContext context) {
  final manager = tryFind<AddonManager>();
  if (manager == null) return const [];
  return [
    Setting.header(getString.settingsAddons),
    for (final addon in manager.addons)
      Setting.normal(
        name: addon.name,
        description: addon.downloading.value
            ? '${(addon.progress.value * 100).toStringAsFixed(0)}%'
            : addon.installed.value
            ? (addon.hasUpdate.value
                  ? getString.updateAvailable
                  : getString.addonInstalled)
            : getString.notInstalled,
        icon: addon.icon,
        trailingIcon: addon.hasUpdate.value
            ? Icons.update_rounded
            : addon.installed.value
            ? Icons.delete_rounded
            : Icons.download_rounded,
        onClick: () async {
          if (addon.downloading.value) return;
          Future<void> run(Future<void> Function() job) async {
            try {
              await job();
            } catch (e, st) {
              logError('Addons', e, st);
              snackString('${addon.name}: $e');
            }
          }

          if (addon.hasUpdate.value) return run(addon.update);
          if (!addon.installed.value) return run(addon.install);
          final (title, message) = switch (addon.id) {
            'jvm' => (getString.removeJvmTitle, getString.removeJvmMessage),
            'mpv' => (
              getString.removePlayerTitle,
              getString.removePlayerMessage,
            ),
            _ => (null, null),
          };
          if (title == null || message == null) return run(addon.uninstall);
          final dialog = AlertDialogBuilder(context)
            ..setTitle(title)
            ..setMessage(message)
            ..setPositiveButton(
              getString.yes,
              () => unawaited(run(addon.uninstall)),
            )
            ..setNegativeButton(getString.no, () {});
          unawaited(dialog.show());
        },
      ),
  ];
}
