import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';
import 'CustomFontLoader.dart';
import 'ThemeManager.dart';

/// Reactive theme state. Every field is a shared auto-persisting [Pref.rx];
/// [light] / [dark] are memoized and only rebuilt when an input changes.
class ThemeController extends GetxController {
  final useGlassMode = PrefName.useGlassMode.rx;
  final isOled = PrefName.isOled.rx;
  final themeName = PrefName.theme.rx;
  final useMaterialYou = PrefName.useMaterialYou.rx;
  final useCustomColor = PrefName.useCustomColor.rx;
  final customColor = PrefName.customColor.rx; // ARGB int
  final mode = PrefName.themeMode.rx;

  final useCustomFont = PrefName.useCustomFont.rx;
  final customFontPath = PrefName.customFontPath.rx;

  /// Engine-registered family name for [customFontPath], once loaded. `null`
  /// until the async [FontLoader] call completes, even if [useCustomFont] is
  /// already true (e.g. right after a cold start restoring a saved pick).
  String? _loadedFontFamily;
  final _fontLoadTick = 0.obs;

  ColorScheme? _dynamicLight;
  ColorScheme? _dynamicDark;

  @override
  void onInit() {
    super.onInit();
    if (useCustomFont.value && customFontPath.value.isNotEmpty) {
      unawaited(_loadFont(customFontPath.value));
    }
  }

  Future<String?> _loadFont(String path) async {
    final family = await CustomFontLoader.load(path);
    if (family != null) {
      _loadedFontFamily = family;
      _fontLoadTick.value++;
    }
    return family;
  }

  /// Opens a system file picker for a `.ttf`/`.otf` file and applies it live.
  /// Returns `false` if the user cancelled or the file couldn't be loaded.
  Future<bool> pickCustomFont() async {
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['ttf', 'otf'],
    );
    final path = file?.path;
    if (path == null) return false;
    return setCustomFont(path);
  }

  /// Loads the font at [path] and, if successful, enables it immediately.
  Future<bool> setCustomFont(String path) async {
    final family = await _loadFont(path);
    if (family == null) return false;
    customFontPath.value = path;
    useCustomFont.value = true;
    return true;
  }

  void clearCustomFont() {
    useCustomFont.value = false;
    customFontPath.value = '';
    _loadedFontFamily = null;
  }

  /// Fed by `DynamicColorBuilder` in `MyApp`.
  void setDynamicSchemes(ColorScheme? light, ColorScheme? dark) {
    if (_dynamicLight == light && _dynamicDark == dark) return;
    _dynamicLight = light;
    _dynamicDark = dark;
    _cacheKey = null;
  }

  ThemeMode get themeMode => mode.value.themeMode;

  bool get isDarkModeActive => switch (mode.value) {
    ThemeModePref.dark => true,
    ThemeModePref.light => false,
    ThemeModePref.system =>
      WidgetsBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark,
  };

  // -- memoized theme data --------------------------------------------------

  List<Object?>? _cacheKey;
  ThemeData? _light;
  ThemeData? _dark;

  ThemeData get light {
    _ensure();
    return _light!;
  }

  ThemeData get dark {
    _ensure();
    return _dark!;
  }

  void _ensure() {
    final key = <Object?>[
      themeName.value,
      isOled.value,
      useGlassMode.value,
      useMaterialYou.value,
      useCustomColor.value,
      customColor.value,
      useCustomFont.value,
      _fontLoadTick.value,
      _dynamicLight,
      _dynamicDark,
    ];
    if (_cacheKey != null && _listEquals(_cacheKey!, key)) return;
    _cacheKey = key;
    _light = _build(Brightness.light);
    _dark = _build(Brightness.dark);
  }

  ThemeData _build(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    final dynamicScheme = dark ? _dynamicDark : _dynamicLight;

    ThemeData base;
    if (useCustomColor.value) {
      base = dark
          ? getCustomDarkTheme(customColor.value)
          : getCustomLightTheme(customColor.value);
    } else if (useMaterialYou.value && dynamicScheme != null) {
      base = dark
          ? materialThemeDark(dynamicScheme)
          : materialThemeLight(dynamicScheme);
    } else {
      base = AppTheme.byName(themeName.value).themeFor(brightness);
    }

    final fontFamily = useCustomFont.value ? _loadedFontFamily : null;
    return buildAppTheme(
      base,
      isOled: isOled.value,
      glass: useGlassMode.value,
      fontFamily: fontFamily,
    );
  }

  // -- mutations (guarded combos) -----------------------------------------

  void setGlassEffect(bool value) => useGlassMode.value = value;

  void setThemeMode(ThemeModePref value) {
    mode.value = value;
    if (value == ThemeModePref.light) isOled.value = false;
  }

  void toggleDarkMode() =>
      setThemeMode(isDarkModeActive ? ThemeModePref.light : ThemeModePref.dark);

  void setOled(bool value) {
    isOled.value = value;
    if (value && mode.value != ThemeModePref.dark) {
      mode.value = ThemeModePref.dark;
    }
  }

  void setTheme(String name) {
    useCustomColor.value = false;
    useMaterialYou.value = false;
    themeName.value = name;
  }

  void setMaterialYou(bool value) {
    if (value) useCustomColor.value = false;
    useMaterialYou.value = value;
  }

  void setUseCustomColor(bool value) {
    if (value) useMaterialYou.value = false;
    useCustomColor.value = value;
  }

  void setCustomColor(Color color) => customColor.value = color.toARGB32();
}

bool _listEquals(List<Object?> a, List<Object?> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
