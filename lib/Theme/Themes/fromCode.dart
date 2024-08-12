import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

ThemeData getCustomLightTheme(int color) {
  final corePalette = CorePalette.of(color);

  final colorScheme = ColorScheme(
    primary: Color(corePalette.primary.get(40)),
    onPrimary: Color(corePalette.primary.get(100)),
    primaryContainer: Color(corePalette.primary.get(90)),
    onPrimaryContainer: Color(corePalette.primary.get(10)),
    secondary: Color(corePalette.secondary.get(40)),
    onSecondary: Color(corePalette.secondary.get(100)),
    secondaryContainer: Color(corePalette.secondary.get(90)),
    onSecondaryContainer: Color(corePalette.secondary.get(10)),
    tertiary: Color(corePalette.tertiary.get(40)),
    onTertiary: Color(corePalette.tertiary.get(100)),
    tertiaryContainer: Color(corePalette.tertiary.get(90)),
    onTertiaryContainer: Color(corePalette.tertiary.get(10)),
    error: Color(corePalette.error.get(40)),
    onError: Color(corePalette.error.get(100)),
    errorContainer: Color(corePalette.error.get(90)),
    onErrorContainer: Color(corePalette.error.get(10)),
    surface: Color(corePalette.neutral.get(98)),
    onSurface: Color(corePalette.neutral.get(20)),
    onSurfaceVariant: Color(corePalette.neutralVariant.get(30)),
    outline: Color(corePalette.neutralVariant.get(50)),
    inverseSurface: Color(corePalette.neutral.get(20)),
    onInverseSurface: Color(corePalette.neutral.get(95)),
    inversePrimary: Color(corePalette.primary.get(80)),
    brightness: Brightness.light,
  );

  return ThemeData(
    brightness: Brightness.light,
    primaryColor: colorScheme.primary,
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      color: colorScheme.primary,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(color: colorScheme.onPrimary, fontSize: 20, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: colorScheme.onSurface),
    ),
    fontFamily: 'Poppins',
  );
}

ThemeData getCustomDarkTheme(int color) {
  final corePalette = CorePalette.of(color);
  final colorScheme = ColorScheme(
    primary: Color(corePalette.primary.get(80)),
    onPrimary: Color(corePalette.primary.get(20)),
    primaryContainer: Color(corePalette.primary.get(30)),
    onPrimaryContainer: Color(corePalette.primary.get(90)),
    secondary: Color(corePalette.secondary.get(80)),
    onSecondary: Color(corePalette.secondary.get(20)),
    secondaryContainer: Color(corePalette.secondary.get(30)),
    onSecondaryContainer: Color(corePalette.secondary.get(90)),
    tertiary: Color(corePalette.tertiary.get(80)),
    onTertiary: Color(corePalette.tertiary.get(20)),
    tertiaryContainer: Color(corePalette.tertiary.get(30)),
    onTertiaryContainer: Color(corePalette.tertiary.get(90)),
    error: Color(corePalette.error.get(80)),
    onError: Color(corePalette.error.get(20)),
    errorContainer: Color(corePalette.error.get(30)),
    onErrorContainer: Color(corePalette.error.get(90)),
    surface: Color(corePalette.neutral.get(8)),
    onSurface: Color(corePalette.neutral.get(90)),
    onSurfaceVariant: Color(corePalette.neutralVariant.get(80)),
    outline: Color(corePalette.neutralVariant.get(60)),
    inverseSurface: Color(corePalette.neutral.get(90)),
    onInverseSurface: Color(corePalette.neutral.get(20)),
    inversePrimary: Color(corePalette.primary.get(40)),
    brightness: Brightness.dark,
  );

  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: colorScheme.primary,
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      color: colorScheme.primary,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(color: colorScheme.onPrimary, fontSize: 20, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(color: colorScheme.onSurface),
    ),
    fontFamily: 'Poppins',
  );
}


