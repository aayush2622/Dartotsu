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
  static const theme = Pref('theme', 'oneDark', PrefLocation.THEME);
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
  static const glassBackgroundUrl = Pref(
    'glassBackgroundUrl',
    '',
    PrefLocation.THEME,
  );
  static const followCover = Pref('followCover', false, PrefLocation.THEME);
  static const useJsonTheme = Pref('useJsonTheme', false, PrefLocation.THEME);

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

  static const incognito = Pref('incognito', false, PrefLocation.COMMON);
  static const offlineMode = Pref('offlineMode', false, PrefLocation.COMMON);

  static const lastBackupAt = Pref('lastBackupAt', '', PrefLocation.COMMON);

  static const loadExtensionIcon = Pref(
    'loadExtensionIcon',
    true,
    PrefLocation.COMMON,
  );
  static const animationSpeed = Pref<double>(
    'animationSpeed',
    1.0,
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

  /// The real engine User-Agent fetched from the in-app WebView the first
  /// time it opens - used as [NetworkManager]'s default once known, instead
  /// of the synthetic placeholder string.
  static const fetchedUserAgent = Pref(
    'fetchedUserAgent',
    '',
    PrefLocation.COMMON,
  );
  static const customDnsUrl = Pref('customDnsUrl', '', PrefLocation.COMMON);
  static const proxyUrl = Pref('proxyUrl', '', PrefLocation.COMMON);
}
