import 'package:dartotsu_extension_bridge/AddonManager.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import 'BaseSettingsScreen.dart';

class SettingsAddonsScreen extends StatefulWidget {
  const SettingsAddonsScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsAddonsScreenState();
}

class SettingsAddonsScreenState extends BaseSettingsScreen {
  @override
  String title() => "Addons";

  @override
  Widget icon() => Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Icon(
      Icons.add_rounded,
      size: 52,
      color: Theme.of(context).colorScheme.onSurface,
    ),
  );

  @override
  List<Widget> get settingsList => [
    Obx(() => SettingsAdaptor(settings: _addonSettings(context))),
  ];

  List<Setting> _addonSettings(BuildContext context) {
    final manager = Get.find<AddonManager>();

    return manager.addons.map((addon) {
      return Setting(
        type: SettingType.normal,
        name: addon.name,
        description: addon.downloading.value
            ? "${(addon.progress.value * 100).toStringAsFixed(0)}%"
            : addon.installed.value
            ? (addon.hasUpdate.value ? "Update available" : "Installed")
            : "Not installed",
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
      );
    }).toList();
  }
}
