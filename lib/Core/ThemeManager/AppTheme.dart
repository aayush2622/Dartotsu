import 'package:flutter/material.dart';

import 'Themes/catppuccin.dart';
import 'Themes/dracula.dart';
import 'Themes/everforest.dart';
import 'Themes/github.dart';
import 'Themes/gruvbox.dart';
import 'Themes/kanagawa.dart';
import 'Themes/monokai.dart';
import 'Themes/nord.dart';
import 'Themes/onedark.dart';
import 'Themes/oriax.dart';
import 'Themes/rosepine.dart';
import 'Themes/saikou.dart';
import 'Themes/solarized.dart';
import 'Themes/tokyonight.dart';

/// The single source of truth for the built-in colour palettes. The theme
/// resolver and the theme picker both iterate [AppTheme.values].
enum AppTheme {
  oriax,
  saikou,
  rosePine,
  catppuccin,
  oneDark,
  gruvbox,
  nord,
  dracula,
  tokyoNight,
  github,
  everforest,
  kanagawa,
  monokai,
  solarized;

  String get label => switch (this) {
    AppTheme.rosePine => 'Rosé Pine',
    AppTheme.oneDark => 'One Dark',
    AppTheme.tokyoNight => 'Tokyo Night',
    AppTheme.github => 'GitHub',
    _ => name[0].toUpperCase() + name.substring(1),
  };

  ThemeData themeFor(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    return switch (this) {
      AppTheme.oriax => dark ? oriaxDarkTheme : oriaxLightTheme,
      AppTheme.saikou => dark ? saikouDarkTheme : saikouLightTheme,
      AppTheme.rosePine => dark ? rosePineDarkTheme : rosePineLightTheme,
      AppTheme.catppuccin => dark ? catppuccinDarkTheme : catppuccinLightTheme,
      AppTheme.oneDark => dark ? oneDarkDarkTheme : oneDarkLightTheme,
      AppTheme.gruvbox => dark ? gruvboxDarkTheme : gruvboxLightTheme,
      AppTheme.nord => dark ? nordDarkTheme : nordLightTheme,
      AppTheme.dracula => dark ? draculaDarkTheme : draculaLightTheme,
      AppTheme.tokyoNight => dark ? tokyonightDarkTheme : tokyonightLightTheme,
      AppTheme.github => dark ? githubDarkTheme : githubLightTheme,
      AppTheme.everforest => dark ? everforestDarkTheme : everforestLightTheme,
      AppTheme.kanagawa => dark ? kanagawaDarkTheme : kanagawaLightTheme,
      AppTheme.monokai => dark ? monokaiDarkTheme : monokaiLightTheme,
      AppTheme.solarized => dark ? solarizedDarkTheme : solarizedLightTheme,
    };
  }

  static AppTheme byName(String name) =>
      values.firstWhere((e) => e.name == name, orElse: () => AppTheme.oneDark);
}
