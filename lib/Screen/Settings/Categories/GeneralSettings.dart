import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Security/AppLock.dart';
import '../../../Core/Security/Biometric.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/LocaleController.dart';
import '../../../Core/ThemeManager/language.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/LinkSettings.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../Lock/PasscodeSheets.dart';
import '../Widgets/Backup/BackupSheet.dart';
import '../Widgets/SettingRows.dart';
import '../../../Core/State/State.dart';

List<Setting> generalSettings(BuildContext context) => [
  Setting.header(getString.generalSectionBasics),
  Setting.normal(
    name: getString.language,
    icon: Icons.translate,
    trailing: Icon(
      Icons.chevron_right_rounded,
      size: 18,
      color: context.colorScheme.onSurfaceVariant,
    ),
    description: completeLanguageName(
      find<LocaleController>().code.value.toUpperCase(),
    ),
    onClick: () => showCustomBottomDialog<void>(context, const LanguageSheet()),
  ),
  Setting.slider(
    name: getString.animationSpeed,
    description: PrefName.animationSpeed.rx.value <= 0
        ? getString.animationSpeedOff
        : getString.animationSpeedDesc,
    icon: Icons.animation_rounded,
    minValue: 0,
    maxValue: 300,
    initialValue: (PrefName.animationSpeed.rx.value * 100).round().clamp(
      0,
      300,
    ),
    onSliderChange: (v) => PrefName.animationSpeed.rx.value = v / 100,
  ),
  Setting.normal(
    name: getString.linkOpenInApp,
    description: getString.linkOpenInAppDesc,
    icon: Icons.link_rounded,
    isVisible: canOpenLinkSettings,
    onClick: openLinkSettings,
  ),
  Setting.header(getString.generalSectionSecurity),
  Setting.switchType(
    name: getString.appLock,
    description: getString.appLockDesc,
    icon: Icons.lock_outline_rounded,
    isChecked: PrefName.appLockHash.rx.value.isNotEmpty,
    onSwitchChange: (on) =>
        on ? showPasscodeSetup(context) : showPasscodeRemove(context),
  ),
  Setting.switchType(
    name: getString.appLockBiometric,
    description: getString.appLockBiometricDesc,
    icon: Icons.fingerprint_rounded,
    isVisible:
        Biometric.available.value && PrefName.appLockHash.rx.value.isNotEmpty,
    isChecked: PrefName.appLockBiometric.rx.value,
    onSwitchChange: (on) async {
      if (on &&
          !await Biometric.authenticate(
            reason: getString.appLockBiometricReason,
            cancel: getString.cancel,
          )) {
        return;
      }
      PrefName.appLockBiometric.rx.value = on;
    },
  ),
  choiceSetting<int>(
    context,
    name: getString.appLockDelay,
    icon: Icons.timer_outlined,
    value: PrefName.appLockDelay.rx.value,
    values: const [0, 1, 2, 5, 10, AppLock.never],
    label: (v) => switch (v) {
      0 => getString.appLockDelayAlways,
      AppLock.never => getString.appLockDelayNever,
      _ => getString.appLockDelayAfter(v),
    },
    onPick: (v) => PrefName.appLockDelay.rx.value = v,
    isVisible: PrefName.appLockHash.rx.value.isNotEmpty,
  ),
  Setting.header(getString.generalSectionPrivacy),
  Setting.switchType(
    name: getString.shareAnalytics,
    description: getString.shareAnalyticsDesc,
    icon: Icons.insights_rounded,
    isChecked: PrefName.shareAnalytics.rx.value,
    onSwitchChange: (v) => PrefName.shareAnalytics.rx.value = v,
  ),
  Setting.header(getString.commentsSettingsHeader),
  Setting.switchType(
    name: getString.commentsSettingEnabled,
    description: getString.commentsSettingEnabledDesc,
    icon: Icons.forum_rounded,
    isChecked: PrefName.commentsEnabled.rx.value,
    onSwitchChange: (v) => PrefName.commentsEnabled.rx.value = v,
  ),
  Setting.switchType(
    name: getString.commentsSettingAlerts,
    description: getString.commentsSettingAlertsDesc,
    icon: Icons.notifications_active_outlined,
    isVisible: PrefName.commentsEnabled.rx.value,
    isChecked: PrefName.commentsAlerts.rx.value,
    onSwitchChange: (v) => PrefName.commentsAlerts.rx.value = v,
  ),
  Setting.header(getString.sectionStorage),
  Setting.normal(
    name: getString.customPath,
    description: PrefName.customPath.rx.value.isEmpty
        ? getString.customPathDesc
        : PrefName.customPath.rx.value,
    icon: Icons.folder_outlined,
    isVisible: !(Platform.isIOS || Platform.isMacOS),
    isActivity: true,
    onLongClick: () => PrefName.customPath.rx.value = '',
    onClick: () async {
      final result = await FilePicker.getDirectoryPath(
        dialogTitle: getString.selectDirectory,
        initialDirectory: PrefName.customPath.value,
      );
      if (result != null) PrefName.customPath.rx.value = result;
    },
  ),
  Setting.switchType(
    name: getString.differentCacheManager,
    description: getString.differentCacheManagerDesc,
    icon: Icons.image_outlined,
    isChecked: PrefName.useDifferentCacheManager.rx.value,
    onSwitchChange: (v) => PrefName.useDifferentCacheManager.rx.value = v,
  ),
  Setting.normal(
    name: getString.backupAndRestore,
    description: getString.backupAndRestoreDesc,
    icon: Icons.settings_backup_restore_rounded,
    isActivity: true,
    onClick: () => showBackupSheet(context),
  ),
];
