import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData getCustomLightTheme(int color) {
  final schemeColor = FlexSchemeColor.from(primary: Color(color));

  final flexThemeData = FlexThemeData.light(
    colors: schemeColor.copyWith(
      primaryLightRef: schemeColor.primary,
    ),
    primary: schemeColor.primary,
    blendLevel: 18,
  );

  return ThemeData(
    brightness: Brightness.light,
    primaryColor: flexThemeData.colorScheme.primary,
    colorScheme: flexThemeData.colorScheme,
    appBarTheme: AppBarTheme(
      color: flexThemeData.colorScheme.primary,
      iconTheme: IconThemeData(color: flexThemeData.colorScheme.onPrimary),
    ),
    scaffoldBackgroundColor: flexThemeData.colorScheme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: flexThemeData.colorScheme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: flexThemeData.colorScheme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}

ThemeData getCustomDarkTheme(int color) {
  final schemeColor = FlexSchemeColor.from(primary: Color(color));
  final flexThemeData = FlexThemeData.dark(
    colors: schemeColor.copyWith(
      primaryLightRef: schemeColor.primary,
    ),
    primary: schemeColor.primary,
    primaryLightRef: schemeColor.primary,
    blendLevel: 18,
  );

  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: flexThemeData.colorScheme.primary,
    colorScheme: flexThemeData.colorScheme,
    appBarTheme: AppBarTheme(
      color: flexThemeData.colorScheme.primary,
      iconTheme: IconThemeData(color: flexThemeData.colorScheme.onPrimary),
    ),
    scaffoldBackgroundColor: flexThemeData.colorScheme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: flexThemeData.colorScheme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: flexThemeData.colorScheme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}
