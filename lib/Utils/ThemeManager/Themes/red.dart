import 'package:flutter/material.dart';

// Light Theme
final ThemeData redLightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xFFC0000A),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFC0000A),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDAD5),
    onPrimaryContainer: Color(0xFF410001),
    secondary: Color(0xFF775652),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFFFDAD5),
    onSecondaryContainer: Color(0xFF2C1512),
    tertiary: Color(0xFF705C2E),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFCDFA6),
    onTertiaryContainer: Color(0xFF261A00),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201A19),
    outline: Color(0xFF857370),
    inverseSurface: Color(0xFF362F2E),
    inversePrimary: Color(0xFFFFB4AA),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFC0000A),
    outlineVariant: Color(0xFFD8C2BE),
    scrim: Color(0xFF000000),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFFBFF),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFC0000A),
    iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFF201A19), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF201A19)),
  ),
  fontFamily: 'Poppins',
);

// Dark Theme
final ThemeData redDarkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFFFFB4AA),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFFFB4AA),
    onPrimary: Color(0xFF690003),
    primaryContainer: Color(0xFF930005),
    onPrimaryContainer: Color(0xFFFFDAD5),
    secondary: Color(0xFFE7BDB7),
    onSecondary: Color(0xFF442926),
    secondaryContainer: Color(0xFF5D3F3B),
    onSecondaryContainer: Color(0xFFFFDAD5),
    tertiary: Color(0xFFDFC38C),
    onTertiary: Color(0xFF3E2E04),
    tertiaryContainer: Color(0xFF574419),
    onTertiaryContainer: Color(0xFFFCDFA6),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),
    surface: Color(0xFF201A19),
    onSurface: Color(0xFFEDE0DE),
    outline: Color(0xFFA08C89),
    inverseSurface: Color(0xFFEDE0DE),
    inversePrimary: Color(0xFFC0000A),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB4AA),
    outlineVariant: Color(0xFF534341),
    scrim: Color(0xFF000000),
  ),
  scaffoldBackgroundColor: const Color(0xFF201A19),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFFFB4AA),
    iconTheme: IconThemeData(color: Color(0xFF690003)),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Color(0xFFEDE0DE), fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFEDE0DE)),
  ),
  fontFamily: 'Poppins',
);
