import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Core/Preferences/PrefBackup.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaServiceController.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/GetXFunctions.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import 'BackupActionButton.dart';
import 'BackupCategoryTile.dart';
import 'BackupSelection.dart';
import 'PasswordField.dart';

class BackupTab extends StatefulWidget {
  final Map<PrefLocation, List<String>> keys;

  const BackupTab({super.key, required this.keys});

  @override
  State<BackupTab> createState() => _BackupTabState();
}

class _BackupTabState extends State<BackupTab> {
  final _busy = false.obs;
  final _selected = <PrefLocation, bool>{}.obs;
  final _password = TextEditingController();
  final _hidden = true.obs;

  @override
  void initState() {
    super.initState();
    for (final l in widget.keys.keys) {
      _selected[l] = true;
    }
  }

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  Future<void> _backup() async {
    final chosen = chosenLocations(_selected);
    if (chosen.isEmpty) {
      snackString(getString.backupSelectOne);
      return;
    }
    final dir = await FilePicker.getDirectoryPath(
      dialogTitle: getString.selectDirectory,
    );
    if (dir == null) return;
    _busy.value = true;
    try {
      final services = find<MediaServiceController>();
      final name = await PrefBackup.create(
        directory: dir,
        locations: chosen,
        password: _password.text.isEmpty ? null : _password.text,
        accounts: services.accounts,
        service: services.currentService.value.id,
      );
      snackString(getString.backupSaved(name));
    } catch (e) {
      snackString(getString.backupFailed('$e'));
    } finally {
      _busy.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(() => SelectAllButton(selection: _selected)),
        for (final entry in widget.keys.entries)
          BackupCategoryTile(
            location: entry.key,
            keys: entry.value,
            selected: _selected,
          ),
        const SizedBox(height: 8),
        PasswordField(
          controller: _password,
          hidden: _hidden,
          hint: getString.backupPasswordHint,
        ),
        Obx(
          () => (_selected[PrefLocation.PROTECTED] ?? false)
              ? Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: 18,
                        color: scheme.error,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          getString.backupSensitive,
                          style: context.textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
        ),
        const SizedBox(height: 16),
        BackupActionButton(
          icon: Icons.save_alt_rounded,
          label: getString.backupCreate,
          busy: _busy,
          onPressed: _backup,
        ),
      ],
    );
  }
}
