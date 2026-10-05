import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/ThemeController.dart';
import '../../../Core/ThemeManager/ThemeMode.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../CardStyleScreen.dart';
import '../Widgets/FontPickerSheet.dart';
import '../Widgets/SegmentedSetting.dart';
import '../Widgets/ThemeDropdown.dart';

List<Setting> appearanceSettings(BuildContext context) {
  final t = find<ThemeController>();
  return [
    Setting.header(getString.sectionColors),
    Setting.normal(
      name: getString.settingsAppearance,
      icon: Icons.color_lens_rounded,
      trailing: Icon(
        Icons.chevron_right_rounded,
        size: 18,
        color: context.colorScheme.onSurfaceVariant,
      ),
      description: themeLabel(t),
      onClick: () => openThemePicker(context),
    ),
    Setting.switchType(
      name: getString.materialYou,
      description: getString.materialYouDesc,
      icon: Icons.color_lens_outlined,
      isChecked: t.useMaterialYou.value,
      onSwitchChange: t.setMaterialYou,
    ),
    if (Platform.isLinux)
      Setting.switchType(
        name: getString.jsonTheme,
        description: getString.jsonThemeDesc,
        icon: Icons.insert_drive_file_outlined,
        isChecked: t.useJsonTheme.value,
        onSwitchChange: t.setUseJsonTheme,
      ),
    Setting.header(getString.sectionDisplay),
    segmentedSetting<ThemeModePref>(
      name: getString.themeMode,
      icon: Icons.brightness_6_rounded,
      label: getString.mode,
      value: t.mode.value,
      onChanged: t.setThemeMode,
      segments: const [
        AppSegment(ThemeModePref.system, icon: Icons.brightness_auto_rounded),
        AppSegment(ThemeModePref.light, icon: Icons.light_mode_rounded),
        AppSegment(ThemeModePref.dark, icon: Icons.dark_mode_rounded),
      ],
    ),
    Setting.switchType(
      name: getString.amoledBlack,
      description: getString.amoledBlackDesc,
      icon: Icons.brightness_3_rounded,
      isChecked: t.isOled.value,
      onSwitchChange: t.setOled,
    ),
    Setting.switchType(
      name: getString.glassMode,
      description: getString.glassModeDesc,
      icon: Icons.blur_on_rounded,
      isChecked: t.useGlassMode.value,
      onSwitchChange: t.setGlassEffect,
    ),
    Setting.header(getString.sectionStyle),
    Setting.normal(
      name: getString.cardStyle,
      description: getString.cardStyleDesc,
      icon: Icons.dashboard_customize_rounded,
      isActivity: true,
      onClick: () => navigateToPage(context, const CardStyleScreen()),
    ),
    Setting.normal(
      name: getString.customFont,
      description: t.useCustomFont.value
          ? p.basenameWithoutExtension(t.customFontPath.value)
          : getString.customFontDesc,
      icon: Icons.text_fields_rounded,
      isActivity: true,
      onClick: () => showFontPicker(context),
    ),
  ];
}
