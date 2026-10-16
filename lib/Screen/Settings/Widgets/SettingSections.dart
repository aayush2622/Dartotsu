import 'package:flutter/material.dart';

import '../../../Model/Setting.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../SubSettingsScreen.dart';

class SettingSection {
  final String title;
  final IconData icon;
  final String? description;

  const SettingSection(this.title, this.icon, {this.description});
}

List<Setting> sectionRows(List<Setting> rows, String title) {
  final out = <Setting>[];
  var inside = false;
  for (final row in rows) {
    if (row.type == SettingType.header) {
      if (inside) break;
      inside = row.name == title;
      continue;
    }
    if (inside) out.add(row);
  }
  return out;
}

List<Setting> foldSections(
  BuildContext context,
  List<Setting> Function(BuildContext context) build,
  List<SettingSection> sections,
) {
  final byTitle = {for (final s in sections) s.title: s};
  final rows = build(context);
  final out = <Setting>[];
  var skipping = false;
  for (final row in rows) {
    if (row.type == SettingType.header) {
      final section = byTitle[row.name];
      skipping = section != null;
      if (section != null) {
        out.add(
          Setting.normal(
            name: section.title,
            description: section.description,
            icon: section.icon,
            isActivity: true,
            onClick: () => navigateToPage(
              context,
              SubSettingsScreen(
                title: section.title,
                settings: (c) => sectionRows(build(c), section.title),
              ),
            ),
          ),
        );
        continue;
      }
    }
    if (!skipping) out.add(row);
  }
  return out;
}
