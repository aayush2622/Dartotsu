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
import '../Widgets/ThemeDropdown.dart';

List<Setting> appearanceSettings(BuildContext context) {
  final t = find<ThemeController>();
  return [
    Setting.header(getString.sectionColors),
    Setting(
      type: SettingType.custom,
      name: getString.settingsAppearance,
      builder: (_) => themeDropdown(),
    ),
    Setting(
      type: SettingType.switchType,
      name: getString.materialYou,
      description: getString.materialYouDesc,
      icon: Icons.color_lens_outlined,
      isChecked: t.useMaterialYou.value,
      onSwitchChange: t.setMaterialYou,
    ),
    if (Platform.isLinux)
      Setting(
        type: SettingType.switchType,
        name: getString.jsonTheme,
        description: getString.jsonThemeDesc,
        icon: Icons.insert_drive_file_outlined,
        isChecked: t.useJsonTheme.value,
        onSwitchChange: t.setUseJsonTheme,
      ),
    Setting.header(getString.sectionDisplay),
    Setting(
      type: SettingType.custom,
      name: getString.themeMode,
      builder: (context) => Row(
        children: [
          Icon(
            Icons.brightness_6_rounded,
            size: 22,
            color: context.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              getString.mode,
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          AppSegmented<ThemeModePref>(
            expand: false,
            value: t.mode.value,
            onChanged: t.setThemeMode,
            segments: const [
              AppSegment(
                ThemeModePref.system,
                icon: Icons.brightness_auto_rounded,
              ),
              AppSegment(ThemeModePref.light, icon: Icons.light_mode_rounded),
              AppSegment(ThemeModePref.dark, icon: Icons.dark_mode_rounded),
            ],
          ),
        ],
      ),
    ),
    Setting(
      type: SettingType.switchType,
      name: getString.amoledBlack,
      description: getString.amoledBlackDesc,
      icon: Icons.brightness_3_rounded,
      isChecked: t.isOled.value,
      onSwitchChange: t.setOled,
    ),
    Setting(
      type: SettingType.switchType,
      name: getString.glassMode,
      description: getString.glassModeDesc,
      icon: Icons.blur_on_rounded,
      isChecked: t.useGlassMode.value,
      onSwitchChange: t.setGlassEffect,
    ),
    Setting.header(getString.sectionStyle),
    Setting(
      type: SettingType.normal,
      name: getString.cardStyle,
      description: getString.cardStyleDesc,
      icon: Icons.dashboard_customize_rounded,
      isActivity: true,
      onClick: () => navigateToPage(context, const CardStyleScreen()),
    ),
    Setting(
      type: SettingType.normal,
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
