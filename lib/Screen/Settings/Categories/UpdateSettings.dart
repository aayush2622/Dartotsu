import 'package:flutter/material.dart';

import '../../../Api/Updater/AppUpdater.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../Widgets/SegmentedSetting.dart';
import '../../../Core/State/State.dart';

List<Setting> updateSettings(BuildContext context) => [
  Setting.header(getString.channel),
  Setting.switchType(
    name: getString.checkForUpdates,
    description: getString.checkForUpdatesDesc,
    icon: Icons.system_update_rounded,
    isChecked: PrefName.checkForUpdates.rx.value,
    onSwitchChange: (v) => PrefName.checkForUpdates.value = v,
  ),
  segmentedSetting<UpdateChannel>(
    name: getString.updateChannel,
    icon: Icons.science_rounded,
    label: getString.channel,
    value: PrefName.updateChannel.rx.value,
    onChanged: (v) => PrefName.updateChannel.value = v,
    segments: [
      AppSegment(UpdateChannel.stable, label: getString.stable),
      AppSegment(UpdateChannel.prerelease, label: getString.preRelease),
      AppSegment(UpdateChannel.alpha, label: getString.alpha),
    ],
  ),
  Setting.normal(
    name: getString.checkNow,
    icon: Icons.refresh_rounded,
    trailingIcon: Icons.chevron_right_rounded,
    onClick: () => find<AppUpdater>().checkForUpdate(force: true),
  ),
];
