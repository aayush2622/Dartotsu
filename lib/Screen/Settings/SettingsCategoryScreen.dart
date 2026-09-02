import 'package:flutter/material.dart';

import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Settings/SettingsListView.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.category.title),
      ),
      body: SettingsListView(
        searchable: widget.category.build,
        hint: 'Search ${widget.category.title.toLowerCase()}',
      ),
    );
  }
}
