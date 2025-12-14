import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Functions/Functions/GetXFunctions.dart';
import '../Widgets/DropdownMenu.dart';
import 'Colors.dart';
import 'ThemeController.dart';
import 'Themes/blue.dart';
import 'Themes/fromCode.dart';
import 'Themes/green.dart';
import 'Themes/lavender.dart';
import 'Themes/material.dart';
import 'Themes/ocean.dart';
import 'Themes/oriax.dart';
import 'Themes/pink.dart';
import 'Themes/purple.dart';
import 'Themes/red.dart';
import 'Themes/saikou.dart';

ThemeData getTheme(ColorScheme? material, ThemeController themeManager) {
  final isOled = themeManager.isOled.value;
  final theme = themeManager.theme.value;
  final useMaterial = themeManager.useMaterialYou.value;
  final useCustomColor = themeManager.useCustomColor.value;
  final customColor = themeManager.customColor.value;
  final isDarkMode = themeManager.isDarkMode.value;

  ThemeData baseTheme;

  switch (theme) {
    case 'blue':
      baseTheme = isDarkMode ? cyanDarkTheme : cyanLightTheme;
      break;
    case 'green':
      baseTheme = isDarkMode ? greenDarkTheme : greenLightTheme;
      break;
    case 'purple':
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
    case 'pink':
      baseTheme = isDarkMode ? pinkDarkTheme : pinkLightTheme;
      break;
    case 'oriax':
      baseTheme = isDarkMode ? oriaxDarkTheme : oriaxLightTheme;
      break;
    case 'saikou':
      baseTheme = isDarkMode ? saikouDarkTheme : saikouLightTheme;
      break;
    case 'red':
      baseTheme = isDarkMode ? redDarkTheme : redLightTheme;
      break;
    case 'lavender':
      baseTheme = isDarkMode ? lavenderDarkTheme : lavenderLightTheme;
      break;
    case 'ocean':
      baseTheme = isDarkMode ? oceanDarkTheme : oceanLightTheme;
      break;
    default:
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
  }

  if (useMaterial && material != null) {
    baseTheme =
        isDarkMode ? materialThemeDark(material) : materialThemeLight(material);
  }

  if (useCustomColor) {
    baseTheme = isDarkMode
        ? getCustomDarkTheme(customColor)
        : getCustomLightTheme(customColor);
  }

  const fontFamily = "Poppins";

  return baseTheme.copyWith(
    scaffoldBackgroundColor:
        isOled ? Colors.black : baseTheme.scaffoldBackgroundColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      surface: isOled ? Colors.black : baseTheme.colorScheme.surface,
      surfaceContainerHighest:
          isOled ? greyNavDark : baseTheme.colorScheme.surfaceContainerHighest,
    ),
    textTheme: baseTheme.textTheme.copyWith(
      labelLarge: baseTheme.textTheme.labelLarge?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w800,
        fontSize: 16,
      ),
      labelMedium: baseTheme.textTheme.labelMedium?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      labelSmall: baseTheme.textTheme.labelSmall?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      bodyLarge: baseTheme.textTheme.bodyLarge?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
      bodyMedium: baseTheme.textTheme.bodyMedium?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
      bodySmall: baseTheme.textTheme.bodySmall?.copyWith(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
        fontSize: 10,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? baseTheme.colorScheme.surface
            : baseTheme.colorScheme.primary;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        return states.contains(WidgetState.selected)
            ? baseTheme.colorScheme.primary
            : baseTheme.colorScheme.surfaceContainerHighest;
      }),
      overlayColor: WidgetStateProperty.all(
        baseTheme.colorScheme.primary.withValues(alpha: 0.2),
      ),
    ),
  );
}

Widget themeDropdown() {
  final controller = find<ThemeController>();

  final themeOptions = [
    'blue',
    'green',
    'purple',
    'pink',
    'oriax',
    'saikou',
    'red',
    'lavender',
    'ocean'
  ];

  return Obx(() {
    return buildDropdownMenu(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      currentValue: controller.theme.value.toUpperCase(),
      options: themeOptions.map((e) => e.toUpperCase()).toList(),
      onChanged: (String newValue) =>
          controller.setTheme(newValue.toLowerCase()),
      prefixIcon: Icons.color_lens,
    );
  });
}

Widget ThemedWidget({
  required Widget materialWidget,
  Widget? glassWidget,
}) {
  final controller = Get.find<ThemeController>();

  return Obx(() {
    return controller.useGlassMode.value
        ? glassWidget ?? materialWidget
        : materialWidget;
  });
}

Widget ThemedContainer({
  required BuildContext context,
  required Widget child,
  Widget? glassWidget,
  Border? border,
  BorderRadiusGeometry? borderRadius,
  EdgeInsetsGeometry? padding,
  AlignmentGeometry? alignment,
}) {
  final controller = find<ThemeController>();
  final theme = Theme.of(context).colorScheme;

  return Obx(() {
    final isGlassMode = controller.useGlassMode.value;

    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(64);
    final effectivePadding = padding ?? const EdgeInsets.all(8);

    if (isGlassMode) {
      return BlurBox(
        blur: 12.0,
        alignment: alignment,
        padding: effectivePadding,
        color: theme.surfaceContainerLow.withOpacity(0.2),
        border: border ??
            Border.all(
              color: theme.onSurface.withOpacity(0.2),
              width: 0.5,
            ),
        borderRadius: effectiveBorderRadius,
        boxShadow: [
          BoxShadow(
            color: theme.surface.withOpacity(0.2),
            blurRadius: 6.0,
            spreadRadius: 0.5,
          ),
        ],
        child: glassWidget ?? child,
      );
    }

    return Container(
      padding: effectivePadding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: theme.surfaceContainerLow,
        border: border ??
            Border.all(
              color: theme.onSurface.withOpacity(0.6),
              width: 0.5,
            ),
        borderRadius: effectiveBorderRadius,
        boxShadow: [
          BoxShadow(
            color: theme.shadow.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: child,
    );
  });
}
