import 'package:flutter/material.dart';

import '../../../Model/Setting.dart';
import '../../ThemeManager/LanguageSwitcher.dart';
import '../NotificationKindInfo.dart';
import 'ServiceScreens.dart';

Set<String> mutedKinds(NotificationScreenView view) => {
  for (final k in (view.mutedPref?.rx.value ?? '').split(','))
    if (k.isNotEmpty) k,
};

List<Setting> notificationAlertSettings(
  NotificationScreenView view, {
  required String serviceName,
}) {
  final alerts = view.alertsPref;
  if (alerts == null) return const [];
  final poll = view.pollPref;
  final mutedPref = view.mutedPref;
  final on = alerts.rx.value;
  final muted = mutedKinds(view);
  return [
    Setting.switchType(
      name: getString.systemNotifications,
      description: getString.systemNotificationsDescFor(serviceName),
      icon: Icons.notifications_active_rounded,
      isChecked: on,
      onSwitchChange: (v) => alerts.rx.value = v,
    ),
    if (poll != null)
      Setting.slider(
        name: getString.notificationsPollTitle,
        description: getString.notificationsPollDesc(poll.rx.value),
        icon: Icons.schedule_rounded,
        isVisible: on,
        minValue: 1,
        maxValue: 60,
        initialValue: poll.rx.value,
        onSliderChange: (v) => poll.rx.value = v,
      ),
    if (on && mutedPref != null && view.kinds.isNotEmpty) ...[
      Setting.header('${getString.notificationsNotifyAbout} · $serviceName'),
      for (final kind in view.kinds)
        Setting.switchType(
          name: kind.label,
          icon: kind.icon,
          isChecked: !muted.contains(kind.name),
          onSwitchChange: (enabled) {
            final next = mutedKinds(view);
            enabled ? next.remove(kind.name) : next.add(kind.name);
            mutedPref.rx.value = next.join(',');
          },
        ),
    ],
  ];
}
