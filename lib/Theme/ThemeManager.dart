import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/DropdownMenu.dart';
import '../prefManager.dart';
import 'Colors.dart';
import 'Themes/blue.dart';
import 'Themes/green.dart';
import 'Themes/lavender.dart';
import 'Themes/ocean.dart';
import 'Themes/oriax.dart';
import 'Themes/pink.dart';
import 'Themes/purple.dart';
import 'Themes/red.dart';
import 'Themes/saikou.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;
  bool _isOled = false;
  String _theme = 'purple';
  bool _useMaterialYou = false;

  bool get isDarkMode => _isDarkMode;
  bool get isOled => _isOled;
  String get theme => _theme;
  bool get useMaterialYou => _useMaterialYou;

  ThemeNotifier() {
    _initialize();
  }

  Future<void> _initialize() async {
    _isDarkMode = PrefManager.getVal("isDarkTheme") ?? false;
    _isOled = PrefManager.getVal("isOled") ?? false;
    _theme = PrefManager.getVal("theme") ?? 'purple';
    _useMaterialYou = PrefManager.getVal("useMaterialYou") ?? false;
    notifyListeners();
  }

  Future<void> setDarkMode(bool isDarkMode) async {
    _isDarkMode = isDarkMode;
    PrefManager.setVal("isDarkTheme", isDarkMode);
    if (!isDarkMode) {
      _isOled = false;
      PrefManager.setVal("isOled", false);
    }
    notifyListeners();
  }

  Future<void> setOled(bool isOled) async {
    _isOled = isOled;
    PrefManager.setVal("isOled", isOled);
    if (isOled) {
      _isDarkMode = true;
     PrefManager.setVal("isDarkTheme", true);
    }
    notifyListeners();
  }

  Future<void> setTheme(String theme) async {
    _theme = theme;
    PrefManager.setVal("theme", theme);
    notifyListeners();
  }

  Future<void> setMaterialYou(bool useMaterialYou) async {
    _useMaterialYou = useMaterialYou;
    PrefManager.setVal("useMaterialYou", useMaterialYou);
    notifyListeners();
  }
}

ThemeData getTheme(String theme, bool isOled, bool isDarkMode) {
  ThemeData baseTheme;

  switch (theme) {
    case 'blue':
      baseTheme = isDarkMode ? cyanDarkTheme : cyanLightTheme;
      break;
    case 'green':
      baseTheme = isDarkMode ? greenDarkTheme : greenLightTheme;
      break;
    case 'purple':
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
    case 'pink':
      baseTheme = isDarkMode ? pinkDarkTheme : pinkLightTheme;
      break;
    case 'oriax':
      baseTheme = isDarkMode ? oriaxDarkTheme : oriaxLightTheme;
      break;
    case 'saikou':
      baseTheme = isDarkMode ? saikouDarkTheme : saikouLightTheme;
      break;
    case 'red':
      baseTheme = isDarkMode ? redDarkTheme : redLightTheme;
      break;
    case 'lavender':
      baseTheme = isDarkMode ? lavenderDarkTheme : lavenderLightTheme;
      break;
    case 'ocean':
      baseTheme = isDarkMode ? oceanDarkTheme : oceanLightTheme;
      break;
    /*case AppTheme.monochrome:
      baseTheme = isDarkMode ? monochromeDarkTheme : monochromeLightTheme;
      break;*/
    default:
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
  }

  return baseTheme.copyWith(
    scaffoldBackgroundColor: isOled ? Colors.black : baseTheme.scaffoldBackgroundColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      surface: isOled ? Colors.black : baseTheme.colorScheme.surface,
      surfaceContainerHighest: isOled ? greyNavDark : baseTheme.colorScheme.surfaceContainerHighest,
    ),
  );
}

class ThemeDropdown extends StatelessWidget {
  const ThemeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeOptions = [
      'blue',
      'green',
      'purple',
      'pink',
      'oriax',
      'saikou',
      'red',
      'lavender',
      'ocean'
    ];
    return buildDropdownMenu(
      context: context,
      currentValue: themeNotifier.theme,
      options: themeOptions,
      onChanged: (String newValue) {
        themeNotifier.setTheme(newValue.toLowerCase());
      },
      prefixIcon: Icons.color_lens,
    );
  }
}