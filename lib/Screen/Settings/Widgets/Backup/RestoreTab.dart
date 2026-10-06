import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Core/Preferences/BackupFile.dart';
import '../../../../Core/Preferences/PrefBackup.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Components/AlertDialogBuilder.dart';
import 'BackupActionButton.dart';
import 'BackupCategoryTile.dart';
import 'BackupPanel.dart';
import 'BackupSelection.dart';
import 'PasswordField.dart';

class RestoreTab extends StatefulWidget {
  const RestoreTab({super.key});

  @override
  State<RestoreTab> createState() => _RestoreTabState();
}

class _RestoreTabState extends State<RestoreTab> {
  final _busy = false.obs;
  final _file = Rxn<BackupFile>();
  final _found = Rxn<Map<PrefLocation, List<String>>>();
  final _selected = <PrefLocation, bool>{}.obs;
  final _password = TextEditingController();
  final _hidden = true.obs;
  final _error = RxnString();

  String? get _passwordOrNull => _password.text.isEmpty ? null : _password.text;

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  Future<void> _pick() async {
    final picked = await FilePicker.pickFile(
      dialogTitle: getString.backupPickFile,
      type: FileType.custom,
      allowedExtensions: ['json'],
    );
    final path = picked?.path;
    if (path == null) return;
    try {
      final file = await BackupFile.open(path);
      _file.value = file;
      _found.value = null;
      _error.value = null;
      _password.clear();
      if (!file.protected) await _unlock();
    } catch (e) {
      _file.value = null;
      _error.value = getString.backupRestoreFailed('$e');
    }
  }

  Future<void> _unlock() async {
    final file = _file.value;
    if (file == null) return;
    _busy.value = true;
    try {
      final found = await PrefBackup.inspect(
        json: file.json,
        password: _passwordOrNull,
      );
      _found.value = found;
      _error.value = null;
      _selected
        ..clear()
        ..addAll({for (final l in found.keys) l: true});
    } catch (_) {
      _found.value = null;
      _error.value = getString.backupWrongPassword;
    } finally {
      _busy.value = false;
    }
  }

  void _restore() {
    final file = _file.value;
    final found = _found.value;
    if (file == null || found == null) return;
    final chosen = chosenLocations(_selected);
    if (chosen.isEmpty) {
      snackString(getString.backupSelectOne);
      return;
    }
    final count = chosen.fold<int>(0, (n, l) => n + (found[l]?.length ?? 0));
    AlertDialogBuilder(context)
      ..setTitle(getString.restore)
      ..setMessage(getString.backupRestoreConfirm(count))
      ..setNegativeButton(getString.cancel, null)
      ..setPositiveButton(getString.restore, () async {
        _busy.value = true;
        try {
          await PrefBackup.restore(
            json: file.json,
            locations: chosen,
            password: _passwordOrNull,
          );
          snackString(getString.backupRestored);
          if (mounted) popPage(context);
        } catch (e) {
          snackString(getString.backupRestoreFailed('$e'));
        } finally {
          _busy.value = false;
        }
      })
      ..show();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Obx(() {
      final file = _file.value;
      final found = _found.value;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (file == null) _empty(context) else _details(context, file),
          if (_error.value != null)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                _error.value!,
                style: context.textTheme.bodySmall?.copyWith(
                  color: scheme.error,
                ),
              ),
            ),
          if (file != null && file.protected && found == null) ...[
            const SizedBox(height: 12),
            PasswordField(
              controller: _password,
              hidden: _hidden,
              onSubmitted: _unlock,
            ),
            const SizedBox(height: 12),
            BackupActionButton(
              icon: Icons.lock_open_rounded,
              label: getString.backupUnlock,
              busy: _busy,
              onPressed: _unlock,
            ),
          ],
          if (found != null) ...[
            const SizedBox(height: 8),
            SelectAllButton(selection: _selected),
            for (final entry in found.entries)
              BackupCategoryTile(
                location: entry.key,
                keys: entry.value,
                selected: _selected,
              ),
            const SizedBox(height: 16),
            BackupActionButton(
              icon: Icons.settings_backup_restore_rounded,
              label: getString.backupRestoreSelected,
              busy: _busy,
              onPressed: _restore,
            ),
          ],
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _pick,
              icon: const Icon(Icons.folder_open_rounded),
              label: Text(
                file == null
                    ? getString.backupPickFile
                    : getString.backupChooseAnother,
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _empty(BuildContext context) {
    final scheme = context.colorScheme;
    return BackupPanel(
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Icon(Icons.upload_file_rounded, size: 40, color: scheme.primary),
            const SizedBox(height: 10),
            Text(
              getString.backupPickFile,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              getString.backupPickFileDesc,
              textAlign: TextAlign.center,
              style: context.textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _details(BuildContext context, BackupFile file) {
    final scheme = context.colorScheme;
    final rows = <(IconData, String, String)>[
      if (file.text('createdAt') != null)
        (
          Icons.schedule_rounded,
          getString.backupCreatedAt,
          file.text('createdAt')!,
        ),
      if (file.text('appVersion') != null)
        (
          Icons.tag_rounded,
          getString.backupAppVersion,
          file.text('appVersion')!,
        ),
      if (file.text('platform') != null)
        (
          Icons.devices_rounded,
          getString.backupDevice,
          '${file.text('platform')} ${file.text('osVersion') ?? ''}'.trim(),
        ),
      if (file.accounts.isNotEmpty)
        (
          Icons.person_outline_rounded,
          getString.backupAccounts,
          file.accounts.entries.map((e) => '${e.value} · ${e.key}').join(', '),
        ),
      (Icons.data_usage_rounded, getString.backupSize, formatBytes(file.size)),
      if (file.protected)
        (Icons.lock_outline_rounded, getString.backupEncrypted, ''),
    ];
    return BackupPanel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.description_outlined, color: scheme.primary),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  file.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          for (final (icon, label, value) in rows)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, size: 16, color: scheme.onSurfaceVariant),
                  const SizedBox(width: 8),
                  Text(
                    label,
                    style: context.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      value,
                      textAlign: TextAlign.end,
                      style: context.textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
