part of 'PrefManager.dart';

enum UpdateChannel { stable, prerelease, alpha }

class PrefName {
  PrefName._();

  static const highRefreshRate = Pref(
    'highRefreshRate',
    true,
    PrefLocation.THEME,
  );
  static const useGlassMode = Pref('useGlassMode', false, PrefLocation.THEME);
  static const shelfFrame = Pref('shelfFrame', true, PrefLocation.THEME);
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
  static const followCoverMediaOnly = Pref(
    'followCoverMediaOnly',
    false,
    PrefLocation.THEME,
  );
  static const useJsonTheme = Pref('useJsonTheme', false, PrefLocation.THEME);

  static final themeMode = enumPref(
    'themeMode',
    ThemeModePref.system,
    ThemeModePref.values,
    PrefLocation.THEME,
  );

  static final cardStyle = jsonPref<CardStyle>(
    'cardStyle',
    CardStyle.cozy,
    PrefLocation.THEME,
    toJson: (v) => v.toJson(),
    fromJson: CardStyle.fromJson,
  );

  static const service = Pref('service', 'anilist', PrefLocation.COMMON);
  static const appLocale = Pref('appLocale', 'en', PrefLocation.COMMON);
  static const customPath = Pref('customPath', '', PrefLocation.COMMON);
  static const windowState = Pref('windowState', '', PrefLocation.COMMON);
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

  static const shareAnalytics = Pref(
    'shareAnalytics',
    true,
    PrefLocation.COMMON,
  );
  static const analyticsClientId = Pref(
    'analyticsClientId',
    '',
    PrefLocation.PROTECTED,
  );
  static const incognito = Pref('incognito', false, PrefLocation.COMMON);
  static const incognitoBlockEdits = Pref(
    'incognitoBlockEdits',
    false,
    PrefLocation.COMMON,
  );
  static const activityAlerts = Pref(
    'activityAlerts',
    false,
    PrefLocation.COMMON,
  );
  static const activityPollMinutes = Pref(
    'activityPollMinutes',
    4,
    PrefLocation.COMMON,
  );
  static const activityMutedKinds = Pref(
    'activityMutedKinds',
    '',
    PrefLocation.COMMON,
  );
  static const commentsPollMinutes = Pref(
    'commentsPollMinutes',
    5,
    PrefLocation.COMMON,
  );
  static const commentsEnabled = Pref(
    'commentsEnabled',
    true,
    PrefLocation.COMMON,
  );
  static const commentsSort = Pref(
    'commentsSort',
    'newest',
    PrefLocation.COMMON,
  );
  static const commentsRulesSeen = Pref(
    'commentsRulesSeen',
    false,
    PrefLocation.COMMON,
  );
  static const commentsAlerts = Pref(
    'commentsAlerts',
    true,
    PrefLocation.COMMON,
  );
  static const syncMain = Pref('syncMain', '', PrefLocation.COMMON);
  static const sauceNaoKey = Pref('sauceNaoKey', '', PrefLocation.PROTECTED);
  static const appLockHash = Pref('appLockHash', '', PrefLocation.PROTECTED);
  static const appLockBiometric = Pref(
    'appLockBiometric',
    false,
    PrefLocation.PROTECTED,
  );
  static const appLockDelay = Pref('appLockDelay', 1, PrefLocation.PROTECTED);
  static const syncOnEdit = Pref('syncOnEdit', false, PrefLocation.COMMON);
  static const syncAuto = Pref('syncAuto', false, PrefLocation.COMMON);
  static const syncConfirm = Pref('syncConfirm', true, PrefLocation.COMMON);
  static const syncAddMissing = Pref(
    'syncAddMissing',
    true,
    PrefLocation.COMMON,
  );
  static const syncOnlyForward = Pref(
    'syncOnlyForward',
    true,
    PrefLocation.COMMON,
  );
  static const discordRpc = Pref('discordRpc', false, PrefLocation.COMMON);
  static const discordBrowsing = Pref(
    'discordBrowsing',
    true,
    PrefLocation.COMMON,
  );
  static const discordImages = Pref('discordImages', true, PrefLocation.COMMON);
  static const discordButtons = Pref(
    'discordButtons',
    true,
    PrefLocation.COMMON,
  );
  static const discordTimer = Pref('discordTimer', true, PrefLocation.COMMON);
  static const discordHideTitles = Pref(
    'discordHideTitles',
    false,
    PrefLocation.COMMON,
  );
  static const discordActivity = Pref(
    'discordActivity',
    'auto',
    PrefLocation.COMMON,
  );

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
  static const verifyTls = Pref('verifyTls', true, PrefLocation.COMMON);
}
