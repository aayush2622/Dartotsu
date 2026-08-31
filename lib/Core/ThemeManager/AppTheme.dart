import 'package:flutter/material.dart';

import 'Themes/blue.dart';
import 'Themes/green.dart';
import 'Themes/lavender.dart';
import 'Themes/ocean.dart';
import 'Themes/oriax.dart';
import 'Themes/pink.dart';
import 'Themes/purple.dart';
import 'Themes/red.dart';
import 'Themes/saikou.dart';

/// The single source of truth for the built-in colour palettes. The theme
/// resolver and the theme picker both iterate [AppTheme.values].
enum AppTheme {
  purple,
  blue,
  green,
  pink,
  oriax,
  saikou,
  red,
  lavender,
  ocean;

  String get label => name[0].toUpperCase() + name.substring(1);

  ThemeData themeFor(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    return switch (this) {
      AppTheme.purple => dark ? purpleDarkTheme : purpleLightTheme,
      AppTheme.blue => dark ? blueDarkTheme : blueLightTheme,
      AppTheme.green => dark ? greenDarkTheme : greenLightTheme,
      AppTheme.pink => dark ? pinkDarkTheme : pinkLightTheme,
      AppTheme.oriax => dark ? oriaxDarkTheme : oriaxLightTheme,
      AppTheme.saikou => dark ? saikouDarkTheme : saikouLightTheme,
      AppTheme.red => dark ? redDarkTheme : redLightTheme,
      AppTheme.lavender => dark ? lavenderDarkTheme : lavenderLightTheme,
      AppTheme.ocean => dark ? oceanDarkTheme : oceanLightTheme,
    };
  }

  static AppTheme byName(String name) =>
      values.firstWhere((e) => e.name == name, orElse: () => AppTheme.purple);
}
