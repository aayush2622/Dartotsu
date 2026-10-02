part of 'PrefManager.dart';

enum UpdateChannel { stable, prerelease, alpha }

class PrefName {
  PrefName._();

  static const useGlassMode = Pref('useGlassMode', false, PrefLocation.THEME);
  static const isOled = Pref('isOled', false, PrefLocation.THEME);
  static const useMaterialYou = Pref(
    'useMaterialYou',
    false,
    PrefLocation.THEME,
  );
  static const theme = Pref('theme', 'purple', PrefLocation.THEME);
  static const customColor = Pref(
    'customColor',
    0xFF6200EE,
    PrefLocation.THEME,
  );
  static const useCustomColor = Pref(
    'useCustomColor',
    false,
    PrefLocation.THEME,
  );
  static const useCustomFont = Pref('useCustomFont', false, PrefLocation.THEME);
  static const customFontPath = Pref('customFontPath', '', PrefLocation.THEME);

  static final themeMode = enumPref(
    'themeMode',
    ThemeModePref.system,
    ThemeModePref.values,
    PrefLocation.THEME,
  );

  static final cardStyle = jsonPref<CardStyle>(
    'cardStyle',
    const CardStyle(),
    PrefLocation.THEME,
    toJson: (v) => v.toJson(),
    fromJson: CardStyle.fromJson,
  );

  static const service = Pref('service', 'anilist', PrefLocation.COMMON);
  static const appLocale = Pref('appLocale', 'en', PrefLocation.COMMON);
  static const customPath = Pref('customPath', '', PrefLocation.COMMON);
  static const hasCompletedOnboarding = Pref(
    'hasCompletedOnboarding',
    false,
    PrefLocation.COMMON,
  );

  static const anilistToken = Pref('anilistToken', '', PrefLocation.PROTECTED);

  static const checkForUpdates = Pref(
    'checkForUpdates',
    true,
    PrefLocation.COMMON,
  );
  static final updateChannel = enumPref(
    'updateChannel',
    UpdateChannel.stable,
    UpdateChannel.values,
    PrefLocation.COMMON,
  );
  static const skippedUpdates = Pref<List<String>>(
    'skippedUpdates',
    [],
    PrefLocation.COMMON,
  );

  static const loadExtensionIcon = Pref(
    'loadExtensionIcon',
    true,
    PrefLocation.COMMON,
  );
  static const useDifferentCacheManager = Pref(
    'useDifferentCacheManager',
    false,
    PrefLocation.COMMON,
  );

  static Pref<List<String>> extensionOrder(String extension, String itemType) =>
      Pref<List<String>>(
        'extensionOrder/$extension/$itemType',
        const [],
        PrefLocation.COMMON,
      );

  static const customUserAgent = Pref(
    'customUserAgent',
    '',
    PrefLocation.COMMON,
  );
  static const customDnsUrl = Pref('customDnsUrl', '', PrefLocation.COMMON);
  static const proxyUrl = Pref('proxyUrl', '', PrefLocation.COMMON);
}
