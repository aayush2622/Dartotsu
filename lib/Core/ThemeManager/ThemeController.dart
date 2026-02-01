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

  void setGlassEffect(bool value) {
    useGlassMode.value = value;
    saveData(PrefName.useGlassMode, value);
  }

  void setDarkMode(bool value) {
    isDarkMode.value = value;
    saveData(PrefName.isDarkMode, value ? 1 : 2);

    if (!value) {
      setOled(false);
    }
  }

  void setOled(bool value) {
    isOled.value = value;
    saveData(PrefName.isOled, value);

    if (value) {
      setDarkMode(true);
    }
  }

  void setTheme(String value) {
    theme.value = value;
    useCustomTheme(false);
    setMaterialYou(false);
    saveData(PrefName.theme, value);
  }

  void setMaterialYou(bool value) {
    useMaterialYou.value = value;
    saveData(PrefName.useMaterialYou, value);

    if (value) {
      useCustomTheme(false);
    }
  }

  void useCustomTheme(bool value) {
    useCustomColor.value = value;
    saveData(PrefName.useCustomColor, value);

    if (value) {
      setMaterialYou(false);
    }
  }

  void setCustomColor(Color color) {
    customColor.value = color.value;
    saveData(PrefName.customColor, color.value);
  }

  void setLocale(Locale locale) {
    local.value = locale.languageCode;
    //Get.updateLocale(locale);
    saveData(PrefName.defaultLanguage, locale.languageCode);
  }
}
