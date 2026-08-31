part of 'PrefManager.dart';

class PrefName {
  //theme
  static const useGlassMode = Pref('useGlassMode', false, PrefLocation.THEME);
  static const isDarkMode = Pref('isDarkMode', 0, PrefLocation.THEME);
  static const isOled = Pref('isOled', false, PrefLocation.THEME);
  static const useMaterialYou = Pref(
    'useMaterialYou',
    false,
    PrefLocation.THEME,
  );
  static const theme = Pref('Theme', 'purple', PrefLocation.THEME);
  static const customColor = Pref(
    'customColor',
    4280391411,
    PrefLocation.THEME,
  );
  static const useCustomColor = Pref(
    'useCustomColor',
    false,
    PrefLocation.THEME,
  );
  static const cardSize = Pref('cardSize', 1.0, PrefLocation.THEME);
  static const service = Pref('service', 'ANILIST', PrefLocation.COMMON);
  static const defaultLanguage = Pref(
    'defaultLanguage',
    'en',
    PrefLocation.COMMON,
  );
  static const customPath = Pref('customPath', '', PrefLocation.COMMON);
}
