import 'package:flutter/material.dart';

import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

Set<PrefLocation> chosenLocations(Map<PrefLocation, bool> map) => {
  for (final e in map.entries)
    if (e.value) e.key,
};

class SelectAllButton extends StatelessWidget {
  final Map<PrefLocation, bool> selection;

  const SelectAllButton({super.key, required this.selection});

  @override
  Widget build(BuildContext context) {
    final all = selection.isNotEmpty && selection.values.every((v) => v);
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          for (final k in selection.keys.toList()) {
            selection[k] = !all;
          }
        },
        child: Text(all ? getString.backupClearAll : getString.backupSelectAll),
      ),
    );
  }
}
