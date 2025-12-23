import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Preferences/PrefManager.dart';

class ThemeController extends GetxController {
  // Reactive variables
  final isDarkMode = false.obs;
  final isOled = false.obs;
  final theme = 'purple'.obs;
  final useMaterialYou = false.obs;
  final useCustomColor = false.obs;
  final customColor = 4280391411.obs;
  final useGlassMode = false.obs;
  final local = "en".obs;
  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  void _initialize() {
    var darkMode = loadData(PrefName.isDarkMode);
    bool isDark;

    if (darkMode == 0) {
      isDark =
          WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
      saveData(PrefName.isDarkMode, isDark ? 1 : 2);
    } else if (darkMode == 1) {
      isDark = true;
    } else {
      isDark = false;
    }

    isDarkMode.value = isDark;
    isOled.value = loadData(PrefName.isOled);
    theme.value = loadData(PrefName.theme);
    useMaterialYou.value = loadData(PrefName.useMaterialYou);
    useCustomColor.value = loadData(PrefName.useCustomColor);
    customColor.value = loadData(PrefName.customColor);
    useGlassMode.value = loadData(PrefName.useGlassMode);
    local.value = loadData(PrefName.defaultLanguage);
  }

  Future<void> setGlassEffect(bool value) async {
    useGlassMode.value = value;
    saveData(PrefName.useGlassMode, value);
  }

  Future<void> setDarkMode(bool value) async {
    isDarkMode.value = value;
    saveData(PrefName.isDarkMode, value ? 1 : 2);

    if (!value) {
      setOled(false);
    }
  }

  Future<void> setOled(bool value) async {
    isOled.value = value;
    saveData(PrefName.isOled, value);

    if (value) {
      setDarkMode(true);
    }
  }

  Future<void> setTheme(String value) async {
    theme.value = value;
    useCustomTheme(false);
    setMaterialYou(false);
    saveData(PrefName.theme, value);
  }

  Future<void> setMaterialYou(bool value) async {
    useMaterialYou.value = value;
    saveData(PrefName.useMaterialYou, value);

    if (value) {
      useCustomTheme(false);
    }
  }

  Future<void> useCustomTheme(bool value) async {
    useCustomColor.value = value;
    saveData(PrefName.useCustomColor, value);

    if (value) {
      setMaterialYou(false);
    }
  }

  Future<void> setCustomColor(Color color) async {
    customColor.value = color.value;
    saveData(PrefName.customColor, color.value);
  }

  Future<void> setLocale(Locale locale) async {
    local.value = locale.languageCode;
    Get.updateLocale(locale);
    saveData(PrefName.defaultLanguage, locale.languageCode);
  }
}
