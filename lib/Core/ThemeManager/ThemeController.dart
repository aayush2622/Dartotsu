import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';
import 'CustomFontLoader.dart';
import 'CustomJsonTheme.dart';
import 'FollowCoverTheme.dart';
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

  final useJsonTheme = PrefName.useJsonTheme.rx;

  final cover = FollowCoverTheme();

  String? _loadedFontFamily;
  final _fontLoadTick = 0.obs;

  ColorScheme? _dynamicLight;
  ColorScheme? _dynamicDark;

  ColorScheme? _jsonLight;
  ColorScheme? _jsonDark;
  StreamSubscription<void>? _jsonWatchSub;
  final _jsonThemeTick = 0.obs;

  @override
  void onInit() {
    super.onInit();
    if (useCustomFont.value && customFontPath.value.isNotEmpty) {
      unawaited(_loadFont(customFontPath.value));
    }
    if (Platform.isLinux) _startJsonWatch();
    cover.init();
  }

  @override
  void onClose() {
    _jsonWatchSub?.cancel();
    cover.dispose();
    super.onClose();
  }

  void _startJsonWatch() {
    _jsonWatchSub?.cancel();
    final seedLight = AppTheme.oneDark.themeFor(Brightness.light).colorScheme;
    final seedDark = AppTheme.oneDark.themeFor(Brightness.dark).colorScheme;
    _jsonWatchSub = CustomJsonTheme.watch().listen((_) async {
      var schemes = await CustomJsonTheme.read();
      if (schemes == null) {
        await CustomJsonTheme.seedIfMissing(seedLight, seedDark);
        schemes = await CustomJsonTheme.read();
      }
      _jsonLight = schemes?.$1;
      _jsonDark = schemes?.$2;
      _jsonThemeTick.value++;
    });
  }

  void setUseJsonTheme(bool value) {
    if (!Platform.isLinux) return;
    if (value) {
      useCustomColor.value = false;
      useMaterialYou.value = false;
    }
    useJsonTheme.value = value;
  }

  Future<String?> _loadFont(String path) async {
    final family = await CustomFontLoader.load(path);
    if (family != null) {
      _loadedFontFamily = family;
      _fontLoadTick.value++;
    }
    return family;
  }

  Future<bool> pickCustomFont() async {
    final file = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['ttf', 'otf'],
    );
    final path = file?.path;
    if (path == null) return false;
    final imported = await CustomFontLoader.importFont(path);
    return setCustomFont(imported);
  }

  Future<bool> pickGoogleFont(String family) async {
    final path = await CustomFontLoader.downloadGoogleFont(family);
    if (path == null) return false;
    return setCustomFont(path);
  }

  Future<bool> setCustomFont(String path) async {
    final family = await _loadFont(path);
    if (family == null) return false;
    customFontPath.value = path;
    useCustomFont.value = true;
    return true;
  }

  Future<List<String>> listSavedFonts() => CustomFontLoader.listSavedFonts();

  Future<void> deleteSavedFont(String path) async {
    await CustomFontLoader.deleteSavedFont(path);
    if (customFontPath.value == path) clearCustomFont();
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
      useJsonTheme.value,
      _jsonThemeTick.value,
      cover.enabled.value,
      cover.tick.value,
    ];
    if (_cacheKey != null && _listEquals(_cacheKey!, key)) return;
    _cacheKey = key;
    _light = _build(Brightness.light);
    _dark = _build(Brightness.dark);
  }

  ThemeData _build(Brightness brightness) {
    final dark = brightness == Brightness.dark;
    final dynamicScheme = dark ? _dynamicDark : _dynamicLight;

    final jsonScheme = dark ? _jsonDark : _jsonLight;

    final imageScheme = cover.schemeFor(brightness);

    ThemeData base;
    if (imageScheme != null) {
      base = dark
          ? materialThemeDark(imageScheme)
          : materialThemeLight(imageScheme);
    } else if (useJsonTheme.value && jsonScheme != null) {
      base = dark
          ? materialThemeDark(jsonScheme)
          : materialThemeLight(jsonScheme);
    } else if (useCustomColor.value) {
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
    if (useJsonTheme.value) setUseJsonTheme(false);
    themeName.value = name;
  }

  void setMaterialYou(bool value) {
    if (value) {
      useCustomColor.value = false;
      if (useJsonTheme.value) setUseJsonTheme(false);
    }
    useMaterialYou.value = value;
  }

  void setUseCustomColor(bool value) {
    if (value) {
      useMaterialYou.value = false;
      if (useJsonTheme.value) setUseJsonTheme(false);
    }
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
