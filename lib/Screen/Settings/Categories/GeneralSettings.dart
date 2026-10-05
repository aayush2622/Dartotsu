import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Core/ThemeManager/LocaleController.dart';
import '../../../Core/ThemeManager/language.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../Widgets/SegmentedSetting.dart';

List<Setting> generalSettings(BuildContext context) => [
  Setting.normal(
    name: getString.language,
    icon: Icons.translate,
    trailing: Icon(
      Icons.chevron_right_rounded,
      size: 18,
      color: context.colorScheme.onSurfaceVariant,
    ),
    description: completeLanguageName(
      find<LocaleController>().code.value.toUpperCase(),
    ),
    onClick: () => showCustomBottomDialog<void>(context, const LanguageSheet()),
  ),
  segmentedSetting<double>(
    name: getString.animationSpeed,
    description: getString.animationSpeedDesc,
    icon: Icons.animation_rounded,
    label: getString.animationSpeed,
    value: PrefName.animationSpeed.rx.value,
    onChanged: (v) => PrefName.animationSpeed.rx.value = v,
    segments: [
      AppSegment(0.0, label: getString.animationSpeedOff),
      const AppSegment(1.0, label: '1x'),
      const AppSegment(1.75, label: '1.75x'),
    ],
  ),
];
