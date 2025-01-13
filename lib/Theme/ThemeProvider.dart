import 'package:flutter/material.dart';

import '../Preferences/PrefManager.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;
  bool _isOled = false;
  String _theme = 'purple';
  bool _useMaterialYou = false;
  bool _useCustomColor = false;
  int _customColor = 4280391411;

  bool get isDarkMode => _isDarkMode;

  bool get isOled => _isOled;

  String get theme => _theme;

  bool get useMaterialYou => _useMaterialYou;

  bool get useCustomColor => _useCustomColor;

  int get customColor => _customColor;

  ThemeNotifier() {
    _initialize();
  }

  void _initialize() {
    var darkMode = PrefManager.getVal(PrefName.isDarkMode);
    bool isDark;

    if (darkMode == 0) {
      isDark = WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
      PrefManager.setVal(PrefName.isDarkMode, isDark ? 1 : 2);
    } else if (darkMode == 1) {
      isDark = true;
    } else{
      isDark = false;
    }

    _isDarkMode = isDark;
    _isOled = PrefManager.getVal(PrefName.isOled);
    _theme = PrefManager.getVal(PrefName.theme);
    _useMaterialYou = PrefManager.getVal(PrefName.useMaterialYou);
    _useCustomColor = PrefManager.getVal(PrefName.useCustomColor);
    _customColor = PrefManager.getVal(PrefName.customColor);
    notifyListeners();
  }

  Future<void> setDarkMode(bool isDarkMode) async {
    _isDarkMode = isDarkMode;
    PrefManager.setVal(PrefName.isDarkMode, _isDarkMode ? 1 : 2);
    if (!isDarkMode) {
      _isOled = false;
      PrefManager.setVal(PrefName.isOled, false);
    }
    notifyListeners();
  }

  Future<void> setOled(bool isOled) async {
    _isOled = isOled;
    PrefManager.setVal(PrefName.isOled, isOled);
    if (isOled) {
      _isDarkMode = true;
      PrefManager.setVal(PrefName.isDarkMode, _isDarkMode ? 1 : 2);
    }
    notifyListeners();
  }

  Future<void> setTheme(String theme) async {
    _theme = theme;
    useCustomTheme(false);
    setMaterialYou(false);
    PrefManager.setVal(PrefName.theme, theme);
    notifyListeners();
  }

  Future<void> setMaterialYou(bool useMaterialYou) async {
    _useMaterialYou = useMaterialYou;
    PrefManager.setVal(PrefName.useMaterialYou, useMaterialYou);
    if (useMaterialYou) {
      _useCustomColor = false;
      PrefManager.setVal(PrefName.useCustomColor, false);
    }
    notifyListeners();
  }

  Future<void> useCustomTheme(bool useCustomTheme) async {
    _useCustomColor = useCustomTheme;
    PrefManager.setVal(PrefName.useCustomColor, useCustomTheme);
    if (useCustomTheme) {
      _useMaterialYou = false;
      PrefManager.setVal(PrefName.useMaterialYou, false);
    }
    notifyListeners();
  }

  Future<void> setCustomColor(Color color) async {
    _customColor = color.value;
    PrefManager.setVal(PrefName.customColor, color.value);
    notifyListeners();
  }
}
