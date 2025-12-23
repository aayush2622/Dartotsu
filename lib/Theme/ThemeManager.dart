import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Functions/Functions/GetXFunctions.dart';
import '../Widgets/DropdownMenu.dart';
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
  final isDark = themeManager.isDarkMode.value;

  ThemeData baseTheme = _resolveBaseTheme(
    theme: themeManager.theme.value,
    isDark: isDark,
  );

  if (themeManager.useMaterialYou.value && material != null) {
    baseTheme =
        isDark ? materialThemeDark(material) : materialThemeLight(material);
  }

  if (themeManager.useCustomColor.value) {
    final color = themeManager.customColor.value;
    baseTheme = isDark ? getCustomDarkTheme(color) : getCustomLightTheme(color);
  }

  const fontFamily = "Poppins";

  return baseTheme.copyWith(
    scaffoldBackgroundColor:
        isOled ? Colors.black : baseTheme.scaffoldBackgroundColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      surface: isOled ? Colors.black : baseTheme.colorScheme.surface,
      surfaceContainerHighest: isOled
          ? const Color(0xFF222222)
          : baseTheme.colorScheme.surfaceContainerHighest,
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

ThemeData _resolveBaseTheme({
  required String theme,
  required bool isDark,
}) {
  final themes = <String, ({ThemeData dark, ThemeData light})>{
    'blue': (dark: cyanDarkTheme, light: cyanLightTheme),
    'green': (dark: greenDarkTheme, light: greenLightTheme),
    'purple': (dark: purpleDarkTheme, light: purpleLightTheme),
    'pink': (dark: pinkDarkTheme, light: pinkLightTheme),
    'oriax': (dark: oriaxDarkTheme, light: oriaxLightTheme),
    'saikou': (dark: saikouDarkTheme, light: saikouLightTheme),
    'red': (dark: redDarkTheme, light: redLightTheme),
    'lavender': (dark: lavenderDarkTheme, light: lavenderLightTheme),
    'ocean': (dark: oceanDarkTheme, light: oceanLightTheme),
  };

  final selected = themes[theme] ?? themes['purple']!;

  return isDark ? selected.dark : selected.light;
}

Widget themeDropdown() {
  final c = find<ThemeController>();

  const options = [
    'blue',
    'green',
    'purple',
    'pink',
    'oriax',
    'saikou',
    'red',
    'lavender',
    'ocean',
  ];
  return ObxValue<RxString>(
    (rx) => BuildDropdownMenu(
      padding: const EdgeInsets.symmetric(vertical: 12),
      value: rx.value.toUpperCase(),
      options: options.map((e) => e.toUpperCase()).toList(),
      onChanged: (v) => c.setTheme(v!.toLowerCase()),
      prefixIcon: Icons.color_lens,
    ),
    c.theme,
  );
}

Widget ThemedWidget({
  required Widget materialWidget,
  Widget? glassWidget,
}) {
  final controller = find<ThemeController>();

  return Obx(() {
    return controller.useGlassMode.value
        ? glassWidget ?? materialWidget
        : materialWidget;
  });
}

Widget ThemedContainer({
  required BuildContext context,
  required Widget child,
  Color? color,
  Widget? glassWidget,
  Border? border,
  BorderRadiusGeometry? borderRadius,
  EdgeInsetsGeometry? padding,
  AlignmentGeometry? alignment,
}) {
  final controller = find<ThemeController>();
  final theme = Theme.of(context).colorScheme;
  final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(64);
  final effectivePadding = padding ?? const EdgeInsets.all(8);
  return Obx(() {
    final isGlassMode = controller.useGlassMode.value;

    if (isGlassMode) {
      return BlurBox(
        blur: 10.0,
        alignment: alignment,
        padding: effectivePadding,
        color: color ?? theme.surfaceContainerLow.withOpacity(0.2),
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
        color: color ?? theme.surfaceContainerLow,
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
