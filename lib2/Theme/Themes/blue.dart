import 'package:flutter/material.dart';

// Light Cyan Theme
final ThemeData cyanLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFF00658E),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF00658E),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFC7E7FF),
    onPrimaryContainer: Color(0xFF001E2E),
    secondary: Color(0xFF4F616E),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD2E5F5),
    onSecondaryContainer: Color(0xFF0B1D29),
    tertiary: Color(0xFF62597C),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFE8DDFF),
    onTertiaryContainer: Color(0xFF1E1635),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    surface: Color(0xFFFCFCFF),
    onSurface: Color(0xFF191C1E),
    surfaceContainerHighest: Color(0xFFDDE3EA),
    onSurfaceVariant: Color(0xFF41484D),
    outline: Color(0xFF71787E),
    inverseSurface: Color(0xFF2E3133),
    onInverseSurface: Color(0xFFF0F1F3),
    inversePrimary: Color(0xFF84CFFF),
  ),
  scaffoldBackgroundColor: const Color(0xFFFCFCFF),
  appBarTheme: const AppBarTheme(
    color: Color(0xFF00658E),
    iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFFFFFFFF), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF191C1E)),
  ),
  fontFamily: 'Poppins',
);

// Dark Cyan Theme
final ThemeData cyanDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF84CFFF),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF84CFFF),
    onPrimary: Color(0xFF00344C),
    primaryContainer: Color(0xFF004C6C),
    onPrimaryContainer: Color(0xFFC7E7FF),
    secondary: Color(0xFFB6C9D8),
    onSecondary: Color(0xFF21323E),
    secondaryContainer: Color(0xFF374955),
    onSecondaryContainer: Color(0xFFD2E5F5),
    tertiary: Color(0xFFCCC0E9),
    onTertiary: Color(0xFF342B4B),
    tertiaryContainer: Color(0xFF4A4263),
    onTertiaryContainer: Color(0xFFE8DDFF),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    surface: Color(0xFF191C1E),
    onSurface: Color(0xFFE2E2E5),
    surfaceContainerHighest: Color(0xFF41484D),
    onSurfaceVariant: Color(0xFFC1C7CE),
    outline: Color(0xFF8B9198),
    inverseSurface: Color(0xFFE2E2E5),
    onInverseSurface: Color(0xFF191C1E),
    inversePrimary: Color(0xFF00658E),
  ),
  scaffoldBackgroundColor: const Color(0xFF191C1E),
  appBarTheme: const AppBarTheme(
    color: Color(0xFF84CFFF),
    iconTheme: IconThemeData(color: Color(0xFF00344C)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFF00344C), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFE2E2E5)),
  ),
  fontFamily: 'Poppins',
);
