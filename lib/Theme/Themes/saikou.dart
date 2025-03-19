import 'package:flutter/material.dart';

// Light Theme
final ThemeData saikouLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFFFF007F),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFF007F),
    onPrimary: Color(0xFFEEEEEE),
    primaryContainer: Color(0xFF000000),
    onPrimaryContainer: Color(0xFFFF007F),
    secondary: Color(0xFF91A6FF),
    onSecondary: Color(0xFFEEEEEE),
    secondaryContainer: Color(0xFF91A6FF),
    onSecondaryContainer: Color(0xFFEEEEEE),
    tertiary: Color(0xFF91A6FF),
    onTertiary: Color(0xFF00FF00),
    tertiaryContainer: Color(0xFF00FF00),
    onTertiaryContainer: Color(0xFF00FF00),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    surface: Color(0xFFEEEEEE),
    onSurface: Color(0xFF1C1B20),
    outline: Color(0xFF78757C),
    inverseSurface: Color(0xFF00FF00),
    inversePrimary: Color(0xFF00FF00),
    shadow: Color(0xFF00FF00),
    surfaceTint: Color(0xFF00FF00),
    outlineVariant: Color(0xFF00FF00),
    scrim: Color(0xFF00FF00),
  ),
  scaffoldBackgroundColor: const Color(0xFFEEEEEE),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFFF007F),
    iconTheme: IconThemeData(color: Color(0xFFEEEEEE)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFF1C1B20), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF1C1B20)),
  ),
  fontFamily: 'Poppins',
);

// Dark Theme
final ThemeData saikouDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFFFF5DAE),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFFF5DAE),
    onPrimary: Color(0xFFEEEEEE),
    primaryContainer: Color(0xFFEEEEEE),
    onPrimaryContainer: Color(0xFFFF5DAE),
    secondary: Color(0xFF91A6FF),
    onSecondary: Color(0xFFEEEEEE),
    secondaryContainer: Color(0xFF91A6FF),
    onSecondaryContainer: Color(0xFFEEEEEE),
    tertiary: Color(0xFF91A6FF),
    onTertiary: Color(0xFF00FF00),
    tertiaryContainer: Color(0xFF00FF00),
    onTertiaryContainer: Color(0xFF00FF00),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    surface: Color(0xFF1C1B20),
    onSurface: Color(0xFFEEEEEE),
    outline: Color(0xFF928F98),
    inverseSurface: Color(0xFF00FF00),
    inversePrimary: Color(0xFF00FF00),
    shadow: Color(0xFF00FF00),
    surfaceTint: Color(0xFF00FF00),
    outlineVariant: Color(0xFF00FF00),
    scrim: Color(0xFF00FF00),
  ),
  scaffoldBackgroundColor: const Color(0xFF1C1B1E),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFFF5DAE),
    iconTheme: IconThemeData(color: Color(0xFFEEEEEE)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFFEEEEEE), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFEEEEEE)),
  ),
  fontFamily: 'Poppins',
);
