import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/SourceAlerts/SourceAlerts.dart';
import '../../../Core/SourceAlerts/SourcePrefs.dart';
import '../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../Detail/Comments/Data/CommentSettings.dart';
import '../../Notifications/Components/SourceSubsSheet.dart';
import '../Widgets/SettingsGroup.dart';

Future<void> _checkNow() async {
  snackString(getString.sourceChecking);
  final found = await find<SourceAlerts>().run(force: true);
  snackString(getString.sourceCheckResult(found));
}

Map<String, SectionStyle> get notificationSectionIcons => {
  getString.notificationsNotifyAbout: SectionStyle(
    Icons.tune_rounded,
    getString.secNotifyAbout,
  ),
};

List<Setting> notificationSettings(BuildContext context) => [
  for (final service in find<MediaServiceController>().services)
    if (service.notificationView case final view?)
      if (view.settings(context) case final rows when rows.isNotEmpty) ...[
        Setting.header(service.name),
        ...rows,
      ],
  Setting.header(getString.sourceAlertsHeader),
  Setting.switchType(
    name: getString.sourceAlertsSwitch,
    description: getString.sourceAlertsSwitchDesc,
    icon: Icons.notifications_active_rounded,
    isChecked: sourceAlertsPref.rx.value,
    onSwitchChange: (v) => sourceAlertsPref.rx.value = v,
  ),
  Setting.switchType(
    name: getString.sourceSkipUnstarted,
    description: getString.sourceSkipUnstartedDesc,
    icon: Icons.hourglass_empty_rounded,
    isChecked: sourceSkipUnstartedPref.rx.value,
    onSwitchChange: (v) => sourceSkipUnstartedPref.rx.value = v,
  ),
  Setting.switchType(
    name: getString.sourceSkipUnseen,
    description: getString.sourceSkipUnseenDesc,
    icon: Icons.visibility_off_outlined,
    isChecked: sourceSkipUnseenPref.rx.value,
    onSwitchChange: (v) => sourceSkipUnseenPref.rx.value = v,
  ),
  Setting.normal(
    name: getString.sourceManage,
    description: getString.sourceManageDesc(
      find<SourceSubscriptions>().subs.length,
    ),
    icon: Icons.bookmark_added_rounded,
    onClick: () => unawaited(showSourceSubsSheet(context)),
  ),
  Setting.normal(
    name: getString.sourceCheckNow,
    description: getString.sourceCheckNowDesc,
    icon: Icons.refresh_rounded,
    onClick: () => unawaited(_checkNow()),
  ),
  Setting.header(getString.notificationsCommentsHeader),
  ...commentNotificationSettings(),
];
