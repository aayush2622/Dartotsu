import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:intl/intl.dart';

import '../../../../Core/Preferences/PrefBackup.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaServiceController.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/GetXFunctions.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Widgets/Components/CustomBottomDialog.dart';
import 'BackupPanel.dart';
import 'BackupTab.dart';
import 'RestoreTab.dart';

void showBackupSheet(BuildContext context) {
  showCustomBottomDialog(context, const _BackupSheet());
}

class _BackupSheet extends StatefulWidget {
  const _BackupSheet();

  @override
  State<_BackupSheet> createState() => _BackupSheetState();
}

class _BackupSheetState extends State<_BackupSheet> {
  final _restoreTab = false.obs;
  final _keys = PrefBackup.currentKeys();

  @override
  Widget build(BuildContext context) {
    return CustomBottomDialog(
      title: getString.backupAndRestore,
      viewList: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _summary(context),
              const SizedBox(height: 12),
              Obx(
                () => AppSegmented<bool>(
                  value: _restoreTab.value,
                  onChanged: (v) => _restoreTab.value = v,
                  segments: [
                    AppSegment(
                      false,
                      label: getString.backupTabBackup,
                      icon: Icons.backup_outlined,
                    ),
                    AppSegment(
                      true,
                      label: getString.backupTabRestore,
                      icon: Icons.settings_backup_restore_rounded,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => _restoreTab.value
                    ? const RestoreTab()
                    : BackupTab(keys: _keys),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _summary(BuildContext context) {
    final scheme = context.colorScheme;
    final accounts = find<MediaServiceController>().accounts;
    final total = _keys.values.fold<int>(0, (n, k) => n + k.length);
    final last = DateTime.tryParse(PrefName.lastBackupAt.value);
    final muted = context.textTheme.bodySmall?.copyWith(
      color: scheme.onSurfaceVariant,
    );
    return BackupPanel(
      child: Row(
        children: [
          Icon(Icons.cloud_done_outlined, color: scheme.primary, size: 28),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accounts.isEmpty
                      ? getString.backupAndRestore
                      : accounts.entries
                            .map((e) => '${e.value} · ${e.key}')
                            .join('\n'),
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  getString.backupSummary(total, _keys.length),
                  style: muted,
                ),
                Text(
                  last == null
                      ? getString.backupNever
                      : getString.backupLastBackup(
                          DateFormat('dd MMM yyyy, hh:mm a').format(last),
                        ),
                  style: muted,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
