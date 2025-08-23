import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/DropdownMenu.dart';
import 'Colors.dart';
import 'ThemeProvider.dart';
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

ThemeData getTheme(ColorScheme? material, ThemeNotifier themeManager) {
  final isOled = themeManager.isOled;
  final theme = themeManager.theme;
  final useMaterial = themeManager.useMaterialYou;
  final useCustomColor = themeManager.useCustomColor;
  final customColor = themeManager.customColor;
  final isDarkMode = themeManager.isDarkMode;
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
    /*case AppTheme.monochrome:
      baseTheme = isDarkMode ? monochromeDarkTheme : monochromeLightTheme;
      break;*/
    default:
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
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
  return baseTheme.copyWith(
    scaffoldBackgroundColor:
        isOled ? Colors.black : baseTheme.scaffoldBackgroundColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      surface: isOled ? Colors.black : baseTheme.colorScheme.surface,
      surfaceContainerHighest:
          isOled ? greyNavDark : baseTheme.colorScheme.surfaceContainerHighest,
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

Widget themeDropdown(BuildContext context) {
  final themeNotifier = Provider.of<ThemeNotifier>(context);
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
  return buildDropdownMenu(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    currentValue: themeNotifier.theme.toUpperCase(),
    options: themeOptions.map((e) => e.toUpperCase()).toList(),
    onChanged: (String newValue) =>
        themeNotifier.setTheme(newValue.toLowerCase()),
    prefixIcon: Icons.color_lens,
  );
}

Widget ThemedWidget({
  required BuildContext context,
  required Widget materialWidget,
  Widget? glassWidget,
}) {
  var themeManager = Provider.of<ThemeNotifier>(context);
  final isGlassMode = themeManager.useGlassMode;

  return isGlassMode ? glassWidget ?? materialWidget : materialWidget;
}

Widget ThemedContainer({
  required BuildContext context,
  required Widget child,
  Widget? glassWidget,
  BorderRadiusGeometry? borderRadius,
  EdgeInsetsGeometry? padding,
}) {
  final themeManager = Provider.of<ThemeNotifier>(context, listen: false);
  final isGlassMode = themeManager.useGlassMode;
  final theme = Theme.of(context).colorScheme;

  final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(64);
  final effectivePadding = padding ?? const EdgeInsets.all(8);

  if (isGlassMode) {
    return BlurBox(
      blur: 12.0,
      padding: effectivePadding,
      color: theme.surfaceContainerLow.withOpacity(0.2),
      border: Border.all(
        color: theme.onSurface.withOpacity(0.2),
        width: 1,
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
    decoration: BoxDecoration(
      color: theme.surfaceContainerLow,
      border: Border.all(
        color: theme.outlineVariant,
        width: 1,
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
}
