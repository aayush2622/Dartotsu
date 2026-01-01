import 'package:flutter/material.dart';

// Light Theme
final ThemeData saikouLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFFFF007F),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFFF007F),
    onPrimary: Color(0xFFEEEEEE),
    primaryContainer: Color(0xFFFFC1DD),
    onPrimaryContainer: Color(0xFF3A001E),
    secondary: Color(0xFF91A6FF),
    onSecondary: Color(0xFF0B1B4A),
    secondaryContainer: Color(0xFFDDE2FF),
    onSecondaryContainer: Color(0xFF101A43),
    surface: Color(0xFFEEEEEE),
    onSurface: Color(0xFF1C1B20),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    outline: Color(0xFF78757C),
    outlineVariant: Color(0xFFD1CED4),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF2F2F34),
    inversePrimary: Color(0xFFFF5DAE),
    surfaceTint: Color(0xFFFF007F),
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
    onPrimary: Color(0xFF3A001E),
    primaryContainer: Color(0xFF5A0030),
    onPrimaryContainer: Color(0xFFFFC1DD),
    secondary: Color(0xFF91A6FF),
    onSecondary: Color(0xFF101A43),
    secondaryContainer: Color(0xFF283177),
    onSecondaryContainer: Color(0xFFDDE2FF),
    surface: Color(0xFF1C1B20),
    onSurface: Color(0xFFEEEEEE),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    outline: Color(0xFF928F98),
    outlineVariant: Color(0xFF45464F),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFE6E1E5),
    inversePrimary: Color(0xFFFF007F),
    surfaceTint: Color(0xFFFF5DAE),
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
