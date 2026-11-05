import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Utils/Functions/SnackBar.dart';
import '../../Widgets/Components/BaseScreen.dart';
import 'SettingsListView.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ExtensionSourceSettingsState.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';

void openExtensionSettings(BuildContext context, Extension extension) {
  if (extension.settings(context).isEmpty) {
    snackString(getString.extensionNoSettings(extension.name));
    return;
  }
  navigateToPage(context, ExtensionSourceSettingsScreen(extension: extension));
}

Widget? extensionSettingsButton(BuildContext context, Extension extension) {
  if (extension.settings(context).isEmpty) return null;
  return IconButton(
    tooltip: getString.extensionSettingsTitle(extension.name),
    icon: const Icon(Icons.settings_rounded, size: 20),
    onPressed: () => openExtensionSettings(context, extension),
  );
}

class ExtensionSourceSettingsScreen extends StatefulWidget {
  final Extension extension;

  const ExtensionSourceSettingsScreen({super.key, required this.extension});

  @override
  State<ExtensionSourceSettingsScreen> createState() =>
      _ExtensionSourceSettingsScreenState();
}

class _ExtensionSourceSettingsScreenState
    extends BaseScreen<ExtensionSourceSettingsScreen>
    with
        ScreenStateHost<
          ExtensionSourceSettingsScreen,
          ExtensionSourceSettingsState
        > {
  @override
  ExtensionSourceSettingsState buildState() =>
      ExtensionSourceSettingsState(widget.extension);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(title: state.title, searchable: state.settings),
    );
  }
}
