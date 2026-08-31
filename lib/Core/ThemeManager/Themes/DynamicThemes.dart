import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

ThemeData getCustomLightTheme(int color) {
  var theme = ColorScheme.fromSeed(
    seedColor: Color(color),
    brightness: Brightness.light,
    dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
  );
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: theme.primary,
    colorScheme: theme,
    appBarTheme: AppBarTheme(
      color: theme.primary,
      iconTheme: IconThemeData(color: theme.onPrimary),
    ),
    scaffoldBackgroundColor: theme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: theme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: theme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}

ThemeData getCustomDarkTheme(int color) {
  var theme = ColorScheme.fromSeed(
    seedColor: Color(color),
    brightness: Brightness.dark,
    dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
  );
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: theme.primary,
    colorScheme: theme,
    appBarTheme: AppBarTheme(
      color: theme.primary,
      iconTheme: IconThemeData(color: theme.onPrimary),
    ),
    scaffoldBackgroundColor: theme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: theme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: theme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}

Future<ThemeData> getImageDarkTheme(String imageUrl) async {
  var colorScheme = await getImageMainColor(imageUrl, Brightness.dark);
  colorScheme = colorScheme.copyWith(brightness: Brightness.dark);

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
      headlineLarge: TextStyle(
        color: colorScheme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: colorScheme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}

Future<ThemeData> getImageLightTheme(String imageUrl) async {
  var colorScheme = await getImageMainColor(imageUrl, Brightness.light);
  colorScheme = colorScheme.copyWith(brightness: Brightness.light);

  return ThemeData(
    brightness: Brightness.light,
    primaryColor: colorScheme.primary,
    colorScheme: colorScheme,
    appBarTheme: AppBarTheme(
      color: colorScheme.primary,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: colorScheme.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        color: colorScheme.onSurface,
      ),
    ),
    fontFamily: 'Poppins',
  );
}

Future<ColorScheme> getImageMainColor(
    String imageUrl, Brightness brightness) async {
  return await ColorScheme.fromImageProvider(
    provider: CachedNetworkImageProvider(imageUrl),
    brightness: brightness,
    dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
  );
}
