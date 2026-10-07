import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/LocaleController.dart';
import '../../../Core/ThemeManager/language.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/LinkSettings.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/Backup/BackupSheet.dart';
import '../Widgets/SegmentedSetting.dart';
import 'NetworkSettings.dart';
import '../../../Core/State/State.dart';

List<Setting> generalSettings(BuildContext context) => [
  Setting.normal(
    name: getString.linkOpenInApp,
    description: getString.linkOpenInAppDesc,
    icon: Icons.link_rounded,
    isVisible: canOpenLinkSettings,
    onClick: openLinkSettings,
  ),
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
  segmentedSetting<double>(
    name: getString.animationSpeed,
    description: getString.animationSpeedDesc,
    icon: Icons.animation_rounded,
    label: getString.animationSpeed,
    value: PrefName.animationSpeed.rx.value,
    onChanged: (v) => PrefName.animationSpeed.rx.value = v,
    segments: [
      AppSegment(0.0, label: getString.animationSpeedOff),
      const AppSegment(1.0, label: '1x'),
      const AppSegment(1.75, label: '1.75x'),
    ],
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
  Setting.header(getString.sectionBackup),
  Setting.normal(
    name: getString.backupAndRestore,
    description: getString.backupAndRestoreDesc,
    icon: Icons.settings_backup_restore_rounded,
    isActivity: true,
    onClick: () => showBackupSheet(context),
  ),
  ...networkSettings(context),
];
