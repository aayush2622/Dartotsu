import '../Preferences/PrefManager.dart';

class SettingsScope {
  SettingsScope._();

  static const categories = [
    PrefLocation.THEME,
    PrefLocation.COMMON,
    PrefLocation.PLAYER,
    PrefLocation.READER,
    PrefLocation.OTHER,
  ];

  static const _otherPortable = {
    'searchResultView',
    'watchMetaOrder',
    'watchMetaDisabled',
    'watchDefaultView',
    'watchAutoMatch',
    'watchAutoSource',
    'watchChunkSize',
    'watchBlurUnwatched',
    'watchShowDescription',
    'watchShowFiller',
    'watchMarkOnLongPress',
    'watchResumeShelf',
    'trackProgressAnime',
    'trackProgressManga',
    'anilistHidePrivate',
    'anilistExcludeList',
  };

  static const _mapDeviceFields = {
    'playerSettings': {
      'decoder',
      'videoOutput',
      'audioOutput',
      'audioDevice',
      'audioChannels',
      'autoPip',
      'orientation',
      'adjustBrightness',
      'openBig',
      'pauseOnBlur',
      'shaders',
      'shaderProfile',
      'shader',
      'customShaders',
      'useMpvConfig',
      'useScripts',
      'disabledScripts',
      'tuning',
      'videoSync',
      'interpolation',
      'cacheSeconds',
      'readahead',
      'bufferMb',
      'decoderThreads',
      'subtitleFont',
    },
    'readerSettings': {
      'orientation',
      'fullscreen',
      'keepOn',
      'volumeKeys',
      'speechVoice',
      'novelFont',
    },
  };

  static const _deviceOnly = {
    'service',
    'incognito',
    'incognitoBlockEdits',
    'customPath',
    'customFontPath',
    'customUserAgent',
    'customDnsUrl',
    'proxyUrl',
    'verifyTls',
    'windowState',
    'highRefreshRate',
    'useMaterialYou',
    'useDifferentCacheManager',
    'loadExtensionIcon',
    'hasCompletedOnboarding',
    'skippedUpdates',
    'checkForUpdates',
    'updateChannel',
    'alphaUpdates',
    'lastBackupAt',
    'fetchedUserAgent',
    'commentsPollMinutes',
    'commentsAlerts',
    'commentsRulesSeen',
    'playerVolume',
    'playerSoftwareRender',
    'analyticsClientId',
  };

  static const _devicePrefixes = [
    '__',
    'settingsSync',
    'extensionOrder',
    'discord',
    'activity',
    'sync',
    'offline',
    'download',
    'github',
  ];

  static final _secret = RegExp(
    r'token|secret|password|hash|cookie|key$',
    caseSensitive: false,
  );

  static Set<PrefLocation> get enabled {
    final names = PrefName.settingsSyncCategories.rx.value;
    return {
      for (final c in categories)
        if (names.contains(c.name)) c,
    };
  }

  static PrefLocation? locationOf(String storageKey) {
    final slash = storageKey.indexOf('/');
    if (slash < 0) return null;
    final prefix = storageKey.substring(0, slash);
    for (final c in categories) {
      if (c.name == prefix) return c;
    }
    return null;
  }

  static const _secretLocal = {'analyticsClientId', 'appLockBiometric'};

  static bool secret(String storageKey) {
    if (!storageKey.startsWith('PROTECTED/')) return false;
    final name = nameOf(storageKey);
    return !_secretLocal.contains(name) &&
        !name.startsWith('settingsSync') &&
        !name.startsWith('github');
  }

  static String nameOf(String storageKey) =>
      storageKey.substring(storageKey.indexOf('/') + 1);

  static bool syncable(String storageKey) {
    final location = locationOf(storageKey);
    if (location == null) return false;
    final name = nameOf(storageKey);
    if (location == PrefLocation.OTHER &&
        !_otherPortable.contains(name) &&
        !name.endsWith('Layout') &&
        !name.endsWith('HideNsfw')) {
      return false;
    }
    return !_devicePrefixes.any(name.startsWith) &&
        !_deviceOnly.contains(name) &&
        !_secret.hasMatch(name);
  }

  static Set<String> deviceFields(String storageKey) =>
      _mapDeviceFields[nameOf(storageKey)] ?? const {};

  static bool splitsFields(String storageKey) =>
      _mapDeviceFields.containsKey(nameOf(storageKey));

  static Map<String, dynamic> portable(
    String storageKey,
    Map<String, dynamic> map,
  ) {
    final skip = deviceFields(storageKey);
    return skip.isEmpty
        ? map
        : {
            for (final e in map.entries)
              if (!skip.contains(e.key)) e.key: e.value,
          };
  }

  static Map<String, dynamic> withLocalFields(
    String storageKey,
    Map<String, dynamic> remote,
    Map<dynamic, dynamic>? local,
  ) {
    final keep = deviceFields(storageKey);
    return {
      ...portable(storageKey, remote),
      if (local != null)
        for (final f in keep)
          if (local.containsKey(f)) f: local[f],
    };
  }

  static bool includes(String storageKey) =>
      syncable(storageKey) && enabled.contains(locationOf(storageKey));
}
