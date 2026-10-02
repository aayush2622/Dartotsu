import 'package:flutter/material.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/BaseScreen.dart';
import 'Widgets/SettingsListView.dart';
import 'SettingsCategories.dart';

class SettingsCategoryScreen extends StatefulWidget {
  final SettingsCategory category;

  const SettingsCategoryScreen({super.key, required this.category});

  @override
  State<SettingsCategoryScreen> createState() => _SettingsCategoryScreenState();
}

class _SettingsCategoryScreenState extends BaseScreen<SettingsCategoryScreen> {
  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(
        title: widget.category.title,
        searchable: widget.category.build,
        hint: getString.searchCategory(widget.category.title.toLowerCase()),
      ),
    );
  }
}
