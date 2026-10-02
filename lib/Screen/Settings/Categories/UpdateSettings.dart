import 'package:flutter/material.dart';

import '../../../Api/Updater/AppUpdater.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Widgets/Components/AppControls.dart';

List<Setting> updateSettings(BuildContext context) => [
  Setting.header(getString.channel),
  Setting(
    type: SettingType.switchType,
    name: getString.checkForUpdates,
    description: getString.checkForUpdatesDesc,
    icon: Icons.system_update_rounded,
    isChecked: PrefName.checkForUpdates.rx.value,
    onSwitchChange: (v) => PrefName.checkForUpdates.value = v,
  ),
  Setting(
    type: SettingType.custom,
    name: getString.updateChannel,
    builder: (context) => Row(
      children: [
        Icon(
          Icons.science_rounded,
          size: 22,
          color: context.colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            getString.channel,
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        AppSegmented<UpdateChannel>(
          expand: false,
          value: PrefName.updateChannel.rx.value,
          onChanged: (v) => PrefName.updateChannel.value = v,
          segments: [
            AppSegment(UpdateChannel.stable, label: getString.stable),
            AppSegment(UpdateChannel.prerelease, label: getString.preRelease),
            AppSegment(UpdateChannel.alpha, label: getString.alpha),
          ],
        ),
      ],
    ),
  ),
  Setting(
    type: SettingType.normal,
    name: getString.checkNow,
    icon: Icons.refresh_rounded,
    trailingIcon: Icons.chevron_right_rounded,
    onClick: () => find<AppUpdater>().checkForUpdate(force: true),
  ),
];
