import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/LocaleController.dart';
import '../../../Core/ThemeManager/language.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Core/Preferences/PrefBackup.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/SegmentedSetting.dart';

List<Setting> generalSettings(BuildContext context) => [
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
    onClick: () => _showBackupDialog(context),
  ),
];

void _showBackupDialog(BuildContext context) {
  final locations = PrefLocation.values;
  var checked = List<bool>.filled(locations.length, false);

  Set<PrefLocation>? selected() {
    final chosen = {
      for (var i = 0; i < locations.length; i++)
        if (checked[i]) locations[i],
    };
    if (chosen.isEmpty) {
      snackString('Select at least one category');
      return null;
    }
    return chosen;
  }

  AlertDialogBuilder(context)
    ..setTitle(getString.backupAndRestore)
    ..multiChoiceItems(
      [
        for (final l in locations)
          l.name[0] + l.name.substring(1).toLowerCase(),
      ],
      checked,
      (next) => checked = next,
    )
    ..setPositiveButton(getString.restore, () async {
      final chosen = selected();
      if (chosen == null) return;
      final picked = await FilePicker.pickFile(dialogTitle: getString.restore);
      final path = picked?.path;
      if (path == null) return;
      try {
        final json = jsonDecode(await File(path).readAsString());
        await PrefBackup.restore(
          json: (json as Map).cast<String, dynamic>(),
          locations: chosen,
        );
        snackString('Preferences restored. Restart the app');
      } catch (e) {
        snackString('Failed to restore: $e');
      }
    })
    ..setNegativeButton(getString.backup, () async {
      final chosen = selected();
      if (chosen == null) return;
      try {
        final dir = await FilePicker.getDirectoryPath(
          dialogTitle: getString.selectDirectory,
        );
        if (dir == null) return;
        final data = await PrefBackup.export(locations: chosen);
        final name =
            'dartotsu_backup_${DateTime.now().millisecondsSinceEpoch}.json';
        await File(p.join(dir, name)).writeAsString(jsonEncode(data));
        snackString('Backup saved to $name');
      } catch (e) {
        snackString('Backup failed: $e');
      }
    })
    ..setNeutralButton(getString.cancel, null)
    ..show();
}
