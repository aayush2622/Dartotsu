import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Core/State/State.dart';

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
            ? (addon.hasUpdate.value ? 'Update available' : 'Installed')
            : 'Not installed',
        icon: addon.icon,
        trailingIcon: addon.hasUpdate.value
            ? Icons.update_rounded
            : addon.installed.value
            ? Icons.delete_rounded
            : Icons.download_rounded,
        onClick: () async {
          if (addon.downloading.value) return;
          if (addon.hasUpdate.value) {
            await addon.update();
          } else if (addon.installed.value) {
            await addon.uninstall();
          } else {
            await addon.install();
          }
        },
      ),
  ];
}
