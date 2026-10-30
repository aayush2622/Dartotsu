// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'ಹೊಸ ಅತ್ಯುತ್ತಮ ಆ್ಯಪ್\nಆನಿಮೆ & ಮಂಗಾ ಟ್ರ್ಯಾಕ್ ಮಾಡಲು';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'ಇನ್ನಷ್ಟು ಲೋಡ್ ಮಾಡು';

  @override
  String get login => 'ಲಾಗಿನ್';

  @override
  String get continueAsGuest => 'ಗೆಸ್ಟ್ ಆಗಿ ಮುಂದುವರಿ';

  @override
  String get getStarted => 'ಶುರು ಮಾಡು';

  @override
  String get loginWithToken => 'ಟೋಕನ್‌ನಿಂದ ಲಾಗಿನ್';

  @override
  String get pasteTokenHint => 'ನಿನ್ನ ಆಕ್ಸೆಸ್ ಟೋಕನ್ ಪೇಸ್ಟ್ ಮಾಡು';

  @override
  String loginTo(String service) {
    return '$serviceಗೆ ಲಾಗಿನ್';
  }

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get account => 'ಖಾತೆ';

  @override
  String get about => 'ಬಗ್ಗೆ';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get animationSpeed => 'ಅನಿಮೇಷನ್‌ಗಳು';

  @override
  String get animationSpeedDesc =>
      'ಆ್ಯಪ್ ಉದ್ದಕ್ಕೂ ಟ್ರಾನ್ಸಿಷನ್ ಮತ್ತು ಎಂಟ್ರಿ ಎಫೆಕ್ಟ್‌ಗಳ ವೇಗ';

  @override
  String get animationSpeedOff => 'ಆಫ್';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'ಗೊತ್ತಿಲ್ಲದ ಸೋರ್ಸ್';

  @override
  String get install => 'ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get update => 'ಅಪ್‌ಡೇಟ್ ಮಾಡು';

  @override
  String get uninstall => 'ಅನ್‌ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get updateInstallCancelled =>
      'ಇನ್‌ಸ್ಟಾಲ್ ರದ್ದಾಯಿತು. ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿರುವ ಆ್ಯಪ್‌ನೊಂದಿಗೆ ಕಾನ್ಫ್ಲಿಕ್ಟ್ ಆಗುತ್ತಿದೆ ಎಂದು Android ಹೇಳಿದರೆ, ಸಿಗ್ನೇಚರ್ ಬೇರೆ ಇದೆ: ಮೊದಲು ಈಗಿನ ವರ್ಷನ್ ಅನ್‌ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ, ಆಮೇಲೆ ಅಪ್‌ಡೇಟ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ';

  @override
  String updateInstallFailed(String error) {
    return 'ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ: $error';
  }

  @override
  String get appLock => 'ಆ್ಯಪ್ ಲಾಕ್';

  @override
  String get appLockDesc =>
      'ಆ್ಯಪ್ ತೆರೆದಾಗ ಅಥವಾ ಸ್ವಲ್ಪ ಹೊತ್ತಿನ ನಂತರ ವಾಪಸ್ ಬಂದಾಗ ಪಾಸ್‌ಕೋಡ್ ಕೇಳುತ್ತದೆ';

  @override
  String get appLockBiometric => 'Unlock with biometrics';

  @override
  String get appLockBiometricDesc =>
      'Use your fingerprint or face instead of typing the passcode';

  @override
  String get appLockBiometricReason => 'Unlock Dartotsu';

  @override
  String get appLockDelay => 'Lock when idle';

  @override
  String get appLockDelayAlways => 'Always';

  @override
  String get appLockDelayNever => 'Never';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return 'After $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometrics';

  @override
  String get appLockUnlock => 'ನಿಮ್ಮ ಪಾಸ್‌ಕೋಡ್ ಹಾಕಿ';

  @override
  String get appLockWrong => 'ಪಾಸ್‌ಕೋಡ್ ತಪ್ಪಾಗಿದೆ';

  @override
  String appLockWait(String seconds) {
    return 'ತುಂಬಾ ಸಲ ಟ್ರೈ ಮಾಡಿದ್ದೀರಿ, $seconds ಸೆಕೆಂಡ್ ಕಾಯಿರಿ';
  }

  @override
  String get appLockNew => 'ಒಂದು ಪಾಸ್‌ಕೋಡ್ ಆರಿಸಿ';

  @override
  String get appLockNewHint => '4 ರಿಂದ 8 ಅಂಕಿಗಳು';

  @override
  String get appLockConfirm => 'ಇನ್ನೊಮ್ಮೆ ಹಾಕಿ';

  @override
  String get appLockMismatch => 'ಪಾಸ್‌ಕೋಡ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ';

  @override
  String get appLockOn => 'ಪಾಸ್‌ಕೋಡ್ ಸೆಟ್ ಆಯಿತು';

  @override
  String get appLockRemoveTitle => 'ಲಾಕ್ ಆಫ್ ಮಾಡಲು ಪಾಸ್‌ಕೋಡ್ ಹಾಕಿ';

  @override
  String get installFailed => 'ಇನ್‌ಸ್ಟಾಲ್ ಆಗಲಿಲ್ಲ';

  @override
  String get updateFailed => 'ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count updates available',
      one: '1 update available',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Update all';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done of $total extensions updated';
  }

  @override
  String get updateConflictTitle => 'Update not installed';

  @override
  String updateConflictBody(String names) {
    return '$names could not be installed over the existing version. This usually means the installed copy was signed differently. Uninstall it and install the new version?';
  }

  @override
  String get updateConflictAction => 'Uninstall and reinstall';

  @override
  String get noSourceSettings => 'ಈ ಸೋರ್ಸ್‌ಗೆ ಯಾವುದೇ ಸೆಟ್ಟಿಂಗ್ಸ್ ಇಲ್ಲ';

  @override
  String get addPluginRepository => 'ಪ್ಲಗಿನ್ ರೆಪೊಸಿಟರಿ ಸೇರಿಸು';

  @override
  String get pluginIndexUrlHint => 'ಪ್ಲಗಿನ್ ಇಂಡೆಕ್ಸ್ URL';

  @override
  String get addRepository => 'ರೆಪೊಸಿಟರಿ ಸೇರಿಸು';

  @override
  String get pluginRepoUpdated => 'ಪ್ಲಗಿನ್ ರೆಪೊಸಿಟರಿ ಅಪ್‌ಡೇಟ್ ಆಯ್ತು';

  @override
  String get pluginRepoUpdateFailed => 'ಪ್ಲಗಿನ್ ರೆಪೊಸಿಟರಿ ರಿಫ್ರೆಶ್ ಆಗಲಿಲ್ಲ';

  @override
  String get ok => 'ಸರಿ';

  @override
  String get cancel => 'ರದ್ದುಮಾಡು';

  @override
  String get yes => 'ಹೌದು';

  @override
  String get no => 'ಇಲ್ಲ';

  @override
  String get save => 'ಉಳಿಸು';

  @override
  String get reset => 'ರೀಸೆಟ್';

  @override
  String get clear => 'ಕ್ಲಿಯರ್';

  @override
  String get test => 'ಟೆಸ್ಟ್';

  @override
  String get testing => 'ಟೆಸ್ಟ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get resolving => 'ಪರಿಹರಿಸುತ್ತಿದೆ…';

  @override
  String get none => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get selectMediaService => 'ಮೀಡಿಯಾ ಸರ್ವಿಸ್ ಆಯ್ಕೆ ಮಾಡು';

  @override
  String get pickColor => 'ಬಣ್ಣ ಆರಿಸು';

  @override
  String get colorPickerCustom => 'ಕಸ್ಟಮ್';

  @override
  String get colorPickerTransparent => 'ಪಾರದರ್ಶಕ';

  @override
  String get ltr => 'ಎಡದಿಂದ ಬಲಕ್ಕೆ';

  @override
  String get searchSettings => 'ಸೆಟ್ಟಿಂಗ್ಸ್ ಹುಡುಕು';

  @override
  String nothingMatches(String query) {
    return '\"$query\" ಗೆ ಹೊಂದುವುದು ಏನೂ ಇಲ್ಲ';
  }

  @override
  String searchCategory(String category) {
    return '$category ಹುಡುಕು';
  }

  @override
  String get settingsAppearance => 'ಲುಕ್';

  @override
  String get settingsAppearanceDesc => 'ಥೀಮ್, ಬಣ್ಣಗಳು, ಗ್ಲಾಸ್ ಮೋಡ್';

  @override
  String get settingsGeneral => 'ಸಾಮಾನ್ಯ';

  @override
  String get settingsGeneralDesc => 'ಭಾಷೆ ಮತ್ತು ವರ್ತನೆ';

  @override
  String get settingsNetwork => 'ನೆಟ್‌ವರ್ಕ್';

  @override
  String get settingsNetworkDesc =>
      'ಯೂಸರ್ ಏಜೆಂಟ್, ಸರ್ಟಿಫಿಕೇಟ್‌ಗಳು, DNS ಮತ್ತು ಪ್ರಾಕ್ಸಿ';

  @override
  String get settingsAccountDesc => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಸರ್ವಿಸ್ ಮತ್ತು ಸೈನ್-ಇನ್';

  @override
  String get settingsUpdates => 'ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get amoledBlack => 'AMOLED ಕಪ್ಪು';

  @override
  String get amoledBlackDesc => 'ಡಾರ್ಕ್ ಮೋಡ್‌ನಲ್ಲಿ ಪೂರ್ತಿ ಕಪ್ಪು ಮೇಲ್ಮೈಗಳು';

  @override
  String get glassMode => 'ಗ್ಲಾಸ್ ಮೋಡ್';

  @override
  String get glassModeDesc => 'ನಿನ್ನ ಲೈಬ್ರರಿ ಚಿತ್ರಗಳ ಮೇಲೆ ಫ್ರಾಸ್ಟೆಡ್ ಮೇಲ್ಮೈಗಳು';

  @override
  String get shelfFrame => 'ವಿಭಾಗಗಳ ಸುತ್ತ ಫ್ರೇಮ್';

  @override
  String get shelfFrameDesc =>
      'ಪ್ರತಿ ಶೆಲ್ಫ್ ಹಿಂದೆ ಕಾರ್ಡ್ ತೋರಿಸು, ಅಥವಾ ಸಾಲುಗಳನ್ನು ನೇರವಾಗಿ ಪುಟದ ಮೇಲೆ ಇಡು';

  @override
  String get settingsExtensionsDesc =>
      'ಸೋರ್ಸ್ ಮ್ಯಾನೇಜರ್‌ಗಳು, ರೆಪೊಸಿಟರಿಗಳು ಮತ್ತು ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಆಯ್ಕೆಗಳು';

  @override
  String get settingsAddons => 'ಆಡ್-ಆನ್‌ಗಳು';

  @override
  String get customPath => 'ಕಸ್ಟಮ್ ಸ್ಟೋರೇಜ್ ಪಾತ್';

  @override
  String get customPathDesc =>
      'ಆ್ಯಪ್ ಡೇಟಾ ಎಲ್ಲಿ ಇರುತ್ತದೆ. ರೀಸೆಟ್ ಮಾಡಲು ಒತ್ತಿ ಹಿಡಿ';

  @override
  String get selectDirectory => 'ಡೈರೆಕ್ಟರಿ ಆಯ್ಕೆ ಮಾಡು';

  @override
  String get differentCacheManager => 'ಪರ್ಯಾಯ ಚಿತ್ರ ಕ್ಯಾಶ್';

  @override
  String get differentCacheManagerDesc =>
      'ಚಿತ್ರಗಳಿಗೆ ಬೇರೆ ಕ್ಯಾಶ್ ಮ್ಯಾನೇಜರ್ ಬಳಸು';

  @override
  String get backupAndRestore => 'ಬ್ಯಾಕಪ್ ಮತ್ತು ರಿಸ್ಟೋರ್';

  @override
  String get backupAndRestoreDesc =>
      'ನಿನ್ನ ಪ್ರಾಶಸ್ತ್ಯಗಳನ್ನು ಉಳಿಸು ಅಥವಾ ಲೋಡ್ ಮಾಡು';

  @override
  String get backup => 'ಬ್ಯಾಕಪ್';

  @override
  String get restore => 'ರಿಸ್ಟೋರ್';

  @override
  String get loadExtensionsIcon => 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಐಕಾನ್‌ಗಳನ್ನು ಲೋಡ್ ಮಾಡು';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಪಟ್ಟಿಗಳಲ್ಲಿ ಸೋರ್ಸ್ ಐಕಾನ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get sectionStorage => 'ಸ್ಟೋರೇಜ್';

  @override
  String get sectionManagers => 'ಮ್ಯಾನೇಜರ್‌ಗಳು';

  @override
  String get sectionOptions => 'ಆಯ್ಕೆಗಳು';

  @override
  String get backupTabBackup => 'ಬ್ಯಾಕಪ್ ಮಾಡು';

  @override
  String get backupTabRestore => 'ರಿಸ್ಟೋರ್ ಮಾಡು';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories ವರ್ಗಗಳಲ್ಲಿ $keys ಸೆಟ್ಟಿಂಗ್ಸ್';
  }

  @override
  String backupLastBackup(Object time) {
    return 'ಕೊನೆಯ ಬ್ಯಾಕಪ್ $time';
  }

  @override
  String get backupNever => 'ಇನ್ನೂ ಬ್ಯಾಕಪ್ ಇಲ್ಲ';

  @override
  String get backupSelectAll => 'ಎಲ್ಲವನ್ನೂ ಆಯ್ಕೆ ಮಾಡು';

  @override
  String get backupClearAll => 'ಕ್ಲಿಯರ್';

  @override
  String backupKeys(Object count) {
    return '$count ಸೆಟ್ಟಿಂಗ್ಸ್';
  }

  @override
  String get backupPassword => 'ಪಾಸ್‌ವರ್ಡ್ (ಐಚ್ಛಿಕ)';

  @override
  String get backupPasswordHint => 'ಡೀಫಾಲ್ಟ್ ಬಳಸಲು ಖಾಲಿ ಬಿಡು';

  @override
  String get backupSensitive =>
      'ಲಾಗಿನ್ ಟೋಕನ್‌ಗಳು ಸೇರಿವೆ. ಈ ಫೈಲ್ ಅನ್ನು ಖಾಸಗಿಯಾಗಿ ಇಡು';

  @override
  String get backupCreate => 'ಬ್ಯಾಕಪ್ ರಚಿಸು';

  @override
  String backupSaved(Object name) {
    return 'ಬ್ಯಾಕಪ್ $name ಗೆ ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String backupFailed(Object error) {
    return 'ಬ್ಯಾಕಪ್ ವಿಫಲ: $error';
  }

  @override
  String get backupPickFile => 'ಬ್ಯಾಕಪ್ ಫೈಲ್ ಆರಿಸು';

  @override
  String get backupPickFileDesc => 'Dartotsu ಮಾಡಿದ .json ಫೈಲ್ ಆರಿಸು';

  @override
  String get backupChooseAnother => 'ಬೇರೆ ಫೈಲ್ ಆರಿಸು';

  @override
  String get backupCreatedAt => 'ರಚಿಸಿದ್ದು';

  @override
  String get backupAppVersion => 'ಆ್ಯಪ್ ವರ್ಶನ್';

  @override
  String get backupDevice => 'ಡಿವೈಸ್';

  @override
  String get backupAccounts => 'ಖಾತೆಗಳು';

  @override
  String get backupSize => 'ಗಾತ್ರ';

  @override
  String get backupEncrypted => 'ಪಾಸ್‌ವರ್ಡ್ ರಕ್ಷಣೆ ಇದೆ';

  @override
  String get backupUnlock => 'ಅನ್‌ಲಾಕ್';

  @override
  String get backupWrongPassword => 'ಈ ಫೈಲ್ ಓದಲು ಆಗಲಿಲ್ಲ. ಪಾಸ್‌ವರ್ಡ್ ಚೆಕ್ ಮಾಡು';

  @override
  String get backupRestoreSelected => 'ಆಯ್ಕೆ ಮಾಡಿದ್ದನ್ನು ರಿಸ್ಟೋರ್ ಮಾಡು';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count ಸೆಟ್ಟಿಂಗ್ಸ್ ರಿಸ್ಟೋರ್ ಮಾಡಬೇಕಾ? ಈ ವರ್ಗಗಳಲ್ಲಿರುವ ಈಗಿನ ಮೌಲ್ಯಗಳು ಬದಲಾಗುತ್ತವೆ.';
  }

  @override
  String get backupRestored =>
      'ರಿಸ್ಟೋರ್ ಆಯ್ತು. ಎಲ್ಲವೂ ಅನ್ವಯವಾಗಲು ಆ್ಯಪ್ ಮರುಪ್ರಾರಂಭಿಸು';

  @override
  String backupRestoreFailed(Object error) {
    return 'ರಿಸ್ಟೋರ್ ವಿಫಲ: $error';
  }

  @override
  String get backupSelectOne => 'ಕನಿಷ್ಠ ಒಂದು ವರ್ಗ ಆರಿಸು';

  @override
  String get backupCatTheme => 'ಲುಕ್';

  @override
  String get backupCatThemeDesc =>
      'ಥೀಮ್, ಬಣ್ಣಗಳು, ಗ್ಲಾಸ್, ಫಾಂಟ್‌ಗಳು ಮತ್ತು ಕಾರ್ಡ್ ಸ್ಟೈಲ್';

  @override
  String get backupCatCommon => 'ಸಾಮಾನ್ಯ';

  @override
  String get backupCatCommonDesc =>
      'ಭಾಷೆ, ಸ್ಟೋರೇಜ್, ನೆಟ್‌ವರ್ಕ್ ಮತ್ತು ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಆಯ್ಕೆಗಳು';

  @override
  String get backupCatPlayer => 'ಪ್ಲೇಯರ್';

  @override
  String get backupCatPlayerDesc => 'ಪ್ಲೇಯರ್ ಪ್ರಾಶಸ್ತ್ಯಗಳು';

  @override
  String get backupCatReader => 'ರೀಡರ್';

  @override
  String get backupCatReaderDesc => 'ರೀಡರ್ ಪ್ರಾಶಸ್ತ್ಯಗಳು';

  @override
  String get backupCatProtected => 'ಖಾತೆಗಳು';

  @override
  String get backupCatProtectedDesc => 'ಲಾಗಿನ್ ಟೋಕನ್‌ಗಳು ಮತ್ತು ಸೈನ್-ಇನ್ ಡೇಟಾ';

  @override
  String get backupCatOther => 'ಸರ್ವಿಸ್‌ಗಳು ಮತ್ತು ಫೀಡ್‌ಗಳು';

  @override
  String get backupCatOtherDesc =>
      'ಫೀಡ್ ಲೇಔಟ್‌ಗಳು, ಪಟ್ಟಿಗಳು ಮತ್ತು ಸರ್ವಿಸ್ ಆಯ್ಕೆಗಳು';

  @override
  String get logFile => 'ಲಾಗ್ ಫೈಲ್';

  @override
  String get logFileDesc =>
      'ಆ್ಯಪ್ ಲಾಗ್ ಶೇರ್ ಮಾಡು, ಅಥವಾ Linux ನಲ್ಲಿ ಅದರ ಪಾತ್ ಕಾಪಿ ಮಾಡು';

  @override
  String get logDelete => 'Delete log files';

  @override
  String get logDeleteDesc => 'Clear the saved app logs to free up space';

  @override
  String logDeleted(String size) {
    return 'Deleted $size of logs';
  }

  @override
  String get missingSequel => 'Missing Sequel';

  @override
  String get rising => 'Rising';

  @override
  String get stacks => 'Stacks';

  @override
  String get stacksAll => 'All';

  @override
  String get stacksFeatured => 'Featured';

  @override
  String get stacksMine => 'Yours';

  @override
  String get stacksSaved => 'Saved';

  @override
  String get stacksFollowing => 'Following';

  @override
  String get stacksEmpty => 'No stacks here yet';

  @override
  String get stacksSignIn => 'Sign in to MangaBaka to see your stacks';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it.';

  @override
  String get stacksSignInAgain => 'Sign in again';

  @override
  String get stacksCouldntLoad => 'Couldn\'t load the stacks';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count series',
      one: '1 series',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saves',
      one: '1 save',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'by $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'This stack is empty';

  @override
  String get stackSave => 'Save stack';

  @override
  String get stackUnsave => 'Remove from saved';

  @override
  String get stackSavedToast => 'Saved to your stacks';

  @override
  String get stackRemovedToast => 'Removed from your saved stacks';

  @override
  String userStacks(String name) {
    return 'Stacks by $name';
  }

  @override
  String get newsTitle => 'News';

  @override
  String get newsEmpty => 'No news right now';

  @override
  String get newsCouldntLoad => 'Couldn\'t load the news';

  @override
  String get logFileCopied => 'ಲಾಗ್ ಪಾತ್ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get donateSheetTitle => 'Dartotsu ಇಷ್ಟವಾಗ್ತಿದೆಯಾ?';

  @override
  String get donateSheetMessage =>
      'Dartotsu ಅನ್ನು ಒಬ್ಬರೇ ಮಾಡಿ ನಿರ್ವಹಿಸುತ್ತಿದ್ದಾರೆ. ಇದು ನಿನಗೆ ಉಪಯೋಗವಾದರೆ, ಡೆವಲಪ್‌ಮೆಂಟ್‌ಗೆ ಸಪೋರ್ಟ್ ಮಾಡುವ ಬಗ್ಗೆ ಯೋಚಿಸು.';

  @override
  String get donateLater => 'ಆಮೇಲೆ';

  @override
  String get glassBackground => 'ಗ್ಲಾಸ್ ಹಿನ್ನೆಲೆ';

  @override
  String get glassBackgroundDesc =>
      'ನೀನು ಚಿತ್ರದ ಲಿಂಕ್ ಹಾಕದಿದ್ದರೆ ನಿನ್ನ ಪ್ರೊಫೈಲ್ ಬ್ಯಾನರ್';

  @override
  String get glassBackgroundHint => 'ಚಿತ್ರದ ಲಿಂಕ್ (ನಿನ್ನ ಬ್ಯಾನರ್‌ಗೆ ಖಾಲಿ ಬಿಡು)';

  @override
  String get followCover => 'ಕವರ್ ಅನುಸರಿಸು';

  @override
  String get followCoverDesc =>
      'ಬಣ್ಣಗಳು ಹಿನ್ನೆಲೆಯನ್ನು ಅನುಸರಿಸುತ್ತವೆ, ವಿವರ ಪುಟಗಳಲ್ಲಿ ಕವರ್ ಅನ್ನು';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'ಕಾರ್ಡ್ ಸ್ಟೈಲ್';

  @override
  String get cardStyleDesc =>
      'ಶೀರ್ಷಿಕೆ ಸ್ಥಾನ, ಗಾತ್ರ, ಪ್ರಗತಿ ಮತ್ತು ಬ್ಯಾಡ್ಜ್‌ಗಳು';

  @override
  String get customFont => 'ಫಾಂಟ್';

  @override
  String get customFontDesc =>
      'ಡೀಫಾಲ್ಟ್, ನಿನ್ನ ಡಿವೈಸ್‌ನ ಫೈಲ್, ಅಥವಾ Google Fonts';

  @override
  String get customFontError => 'ಆ ಫಾಂಟ್ ಫೈಲ್ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get googleFontError => 'ಆ ಫಾಂಟ್ ಡೌನ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get yourFonts => 'ನಿನ್ನ ಫಾಂಟ್‌ಗಳು';

  @override
  String get addFontFile => 'ಫಾಂಟ್ ಫೈಲ್ ಸೇರಿಸು…';

  @override
  String get browseGoogleFonts => 'Google Fonts ಬ್ರೌಸ್ ಮಾಡು…';

  @override
  String get searchGoogleFonts => 'Google Fonts ಹುಡುಕು';

  @override
  String get defaultFont => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'ಸಿಸ್ಟಂನ ಡೈನಾಮಿಕ್ ಬಣ್ಣ';

  @override
  String get jsonTheme => 'ಕಸ್ಟಮ್ ಥೀಮ್ ಫೈಲ್';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json ನಿಂದ ಲೈವ್ ಬಣ್ಣಗಳು (ನಿನ್ನ ಸ್ವಂತ ಸ್ಕ್ರಿಪ್ಟ್ ಅಥವಾ ಎಡಿಟ್‌ಗಳು)';

  @override
  String get themeMode => 'ಥೀಮ್ ಮೋಡ್';

  @override
  String get mode => 'ಮೋಡ್';

  @override
  String get trackingService => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಸರ್ವಿಸ್';

  @override
  String get signOut => 'ಸೈನ್ ಔಟ್';

  @override
  String get signIn => 'ಸೈನ್ ಇನ್';

  @override
  String get notSignedIn => 'ಸೈನ್ ಇನ್ ಆಗಿಲ್ಲ';

  @override
  String signOutOf(String service) {
    return '$service ನಿಂದ ಸೈನ್ ಔಟ್ ಆಗಬೇಕಾ?';
  }

  @override
  String get checkForUpdates => 'ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ಚೆಕ್ ಮಾಡು';

  @override
  String get checkForUpdatesDesc => 'ಹೊಸ GitHub ರಿಲೀಸ್ ಬಂದಾಗ ತಿಳಿಸು';

  @override
  String get updateChannel => 'ಅಪ್‌ಡೇಟ್ ಚಾನೆಲ್';

  @override
  String get channel => 'ಚಾನೆಲ್';

  @override
  String get stable => 'ಸ್ಟೇಬಲ್';

  @override
  String get preRelease => 'ಪ್ರೀ-ರಿಲೀಸ್';

  @override
  String get alpha => 'ಆಲ್ಫಾ';

  @override
  String get checkNow => 'ಈಗಲೇ ಚೆಕ್ ಮಾಡು';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ಡೀಫಾಲ್ಟ್';

  @override
  String currentlyUsing(String value) {
    return 'ಈಗ: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ಡೀಫಾಲ್ಟ್ (Cloudflare)';

  @override
  String get proxy => 'ಪ್ರಾಕ್ಸಿ';

  @override
  String get proxyProtocol => 'ವಿಧ';

  @override
  String get proxyHost => 'ಹೋಸ್ಟ್';

  @override
  String get proxyPort => 'ಪೋರ್ಟ್';

  @override
  String get proxyUsername => 'ಬಳಕೆದಾರ ಹೆಸರು';

  @override
  String get proxyPassword => 'ಪಾಸ್‌ವರ್ಡ್';

  @override
  String get optional => 'ಐಚ್ಛಿಕ';

  @override
  String get clearCookies => 'ಕುಕೀಗಳನ್ನು ಕ್ಲಿಯರ್ ಮಾಡು';

  @override
  String get clearCookiesDesc => 'ಉಳಿಸಿರುವ ಎಲ್ಲಾ ಕುಕೀಗಳನ್ನು ತೆಗೆ';

  @override
  String notImplementedArea(String area) {
    return '$area — ಶೀಘ್ರದಲ್ಲೇ ಬರಲಿದೆ';
  }

  @override
  String notImplementedService(String service) {
    return '$service ಇದನ್ನು ಇನ್ನೂ ಸಪೋರ್ಟ್ ಮಾಡುವುದಿಲ್ಲ.';
  }

  @override
  String get couldNotLoadResults => 'ಫಲಿತಾಂಶಗಳು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get updateCheckFailed => 'ಅಪ್‌ಡೇಟ್ ಚೆಕ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ';

  @override
  String get highRefreshRate => 'ಹೈ ರಿಫ್ರೆಶ್ ರೇಟ್';

  @override
  String get highRefreshRateDesc =>
      'ನಿನ್ನ ಸ್ಕ್ರೀನ್ ಸಪೋರ್ಟ್ ಮಾಡುವ ಅತಿ ಹೆಚ್ಚು ರಿಫ್ರೆಶ್ ರೇಟ್ ಬಳಸು';

  @override
  String get imageSave => 'ಚಿತ್ರ ಉಳಿಸು';

  @override
  String imageSavedTo(String path) {
    return '$path ಗೆ ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get imageActionFailed => 'ಚಿತ್ರ ಡೌನ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get imageTitleCover => 'ಕವರ್';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'ಬ್ಯಾನರ್';

  @override
  String get imageTitleAvatar => 'ಪ್ರೊಫೈಲ್ ಚಿತ್ರ';

  @override
  String get verifyTls => 'ಸರ್ಟಿಫಿಕೇಟ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸು';

  @override
  String get verifyTlsDesc =>
      'ಅಮಾನ್ಯ HTTPS ಸರ್ಟಿಫಿಕೇಟ್ ಇರುವ ಸರ್ವರ್‌ಗಳನ್ನು ತಿರಸ್ಕರಿಸು. ಸ್ವಯಂ-ಸಹಿ ಸರ್ಟಿಫಿಕೇಟ್ ಬಳಸುವ ಸೋರ್ಸ್‌ಗೆ ಮಾತ್ರ ಆಫ್ ಮಾಡು';

  @override
  String get clearCookiesConfirm =>
      'ಉಳಿಸಿರುವ ಎಲ್ಲಾ ಕುಕೀಗಳನ್ನು ತೆಗೆಯಬೇಕಾ? ಇದರಿಂದ ಕೆಲವು ಸೋರ್ಸ್‌ಗಳಿಂದ ಸೈನ್ ಔಟ್ ಆಗಬಹುದು.';

  @override
  String get version => 'ವರ್ಶನ್';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'ಸೋರ್ಸ್, ಇಶ್ಯೂಗಳು ಮತ್ತು ರಿಲೀಸ್‌ಗಳು';

  @override
  String get discordDesc => 'ಕಮ್ಯುನಿಟಿ ಮತ್ತು ಸಪೋರ್ಟ್';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'ಡೆವಲಪ್‌ಮೆಂಟ್‌ಗೆ ಸಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get contributors => 'ಕೊಡುಗೆದಾರರು';

  @override
  String get contributorsDesc => 'Dartotsu ಕಟ್ಟಿದ ಜನರು';

  @override
  String get contributorsLoadFailed => 'ಕೊಡುಗೆದಾರರು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu ಮೇಲೆ ಕಟ್ಟಿದ ಪ್ರಾಜೆಕ್ಟ್‌ಗಳು';

  @override
  String get forksEmpty => 'ಯಾವುದೇ ಫೋರ್ಕ್ ಸಿಗಲಿಲ್ಲ';

  @override
  String get sectionColors => 'ಬಣ್ಣಗಳು';

  @override
  String get sectionDisplay => 'ಡಿಸ್‌ಪ್ಲೇ';

  @override
  String get sectionStyle => 'ಸ್ಟೈಲ್';

  @override
  String get sectionCommunity => 'ಕಮ್ಯುನಿಟಿ';

  @override
  String get sectionAppInfo => 'ಆ್ಯಪ್ ಮಾಹಿತಿ';

  @override
  String get sectionRequests => 'ರಿಕ್ವೆಸ್ಟ್‌ಗಳು';

  @override
  String get sectionDnsProxy => 'DNS ಮತ್ತು ಪ್ರಾಕ್ಸಿ';

  @override
  String get onboardingBack => 'ಹಿಂದೆ';

  @override
  String get onboardingNext => 'ಮುಂದೆ';

  @override
  String get onboardingSkip => 'ಬಿಟ್ಟುಬಿಡು';

  @override
  String get onboardingPaletteTitle => 'ನಿನ್ನದಾಗಿಸಿಕೊ';

  @override
  String get onboardingPaletteBody =>
      'ಒಂದು ಪ್ಯಾಲೆಟ್ ಆರಿಸು. ಕಾರ್ಡ್‌ಗಳಿಂದ ಪ್ಲೇಯರ್‌ವರೆಗೆ ಎಲ್ಲಾ ಆಕ್ಸೆಂಟ್‌ಗಳು ಅದನ್ನು ಅನುಸರಿಸುತ್ತವೆ.';

  @override
  String get themeModeAuto => 'ಆಟೋ';

  @override
  String get themeModeLight => 'ಲೈಟ್';

  @override
  String get themeModeDark => 'ಡಾರ್ಕ್';

  @override
  String get onboardingSyncTitle => 'ನಿನ್ನ ಲೈಬ್ರರಿ ಸಿಂಕ್ ಮಾಡು';

  @override
  String get onboardingSyncBody =>
      'ನಿನ್ನ ಪಟ್ಟಿಗಳು, ಪ್ರಗತಿ ಮತ್ತು ಸ್ಕೋರ್‌ಗಳನ್ನು ತರಲು AniList ನಲ್ಲಿ ಸೈನ್ ಇನ್ ಆಗು. ಅಥವಾ ಬಿಟ್ಟು ಗೆಸ್ಟ್ ಆಗಿ ನೋಡು.';

  @override
  String get onboardingOpenLinks =>
      'AniList ಮತ್ತು ರೆಪೊ ಲಿಂಕ್‌ಗಳನ್ನು Dartotsu ನಲ್ಲಿ ತೆರೆ';

  @override
  String get onboardingPermsTitle => 'ಅನುಮತಿಗಳು';

  @override
  String get onboardingPermsBody =>
      'ಇವನ್ನು ಈಗಲೇ ಅನುಮತಿಸಿದರೆ ಡೌನ್‌ಲೋಡ್, ಅಪ್‌ಡೇಟ್ ಮತ್ತು ಅಲರ್ಟ್‌ಗಳು ಅಡೆತಡೆ ಇಲ್ಲದೆ ಕೆಲಸ ಮಾಡುತ್ತವೆ. ನಂತರ ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್ಸ್‌ನಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get permNotifications => 'ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get permNotificationsDesc =>
      'ಡೌನ್‌ಲೋಡ್ ಪ್ರಗತಿ, ಹೊಸ ಎಪಿಸೋಡ್‌ಗಳು ಮತ್ತು ಉತ್ತರಗಳು';

  @override
  String get permStorage => 'ಎಲ್ಲಾ ಫೈಲ್‌ಗಳ ಪ್ರವೇಶ';

  @override
  String get permStorageDesc =>
      'ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ಸಾರ್ವಜನಿಕ Dartotsu ಫೋಲ್ಡರ್‌ಗೆ ಉಳಿಸು';

  @override
  String get permInstall => 'ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get permInstallDesc =>
      'Dartotsu ತನ್ನದೇ ಆ್ಯಪ್ ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಬಿಡು';

  @override
  String get permBattery => 'ನಿರ್ಬಂಧವಿಲ್ಲದ ಬ್ಯಾಟರಿ';

  @override
  String get permBatteryDesc =>
      'ಉದ್ದ ಡೌನ್‌ಲೋಡ್‌ಗಳು ಬ್ಯಾಕ್‌ಗ್ರೌಂಡ್‌ನಲ್ಲಿ ನಡೆಯುತ್ತಿರಲಿ';

  @override
  String get permGrant => 'ಅನುಮತಿಸು';

  @override
  String get linkOpenInApp => 'ಲಿಂಕ್‌ಗಳನ್ನು Dartotsu ನಲ್ಲಿ ತೆರೆ';

  @override
  String get linkOpenInAppDesc => 'AniList ಮತ್ತು ರೆಪೊ ಲಿಂಕ್‌ಗಳು ಆ್ಯಪ್ ತೆರೆಯಲಿ';

  @override
  String get reviewsTitle => 'ವಿಮರ್ಶೆಗಳು';

  @override
  String get reviewsEmpty => 'ಇನ್ನೂ ವಿಮರ್ಶೆಗಳಿಲ್ಲ';

  @override
  String get reviewsFailed => 'ವಿಮರ್ಶೆಗಳು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get reviewHelpfulQuestion => 'ಈ ವಿಮರ್ಶೆ ಉಪಯುಕ್ತವಾಗಿತ್ತಾ?';

  @override
  String get reviewVoteFailed => 'ನಿನ್ನ ವೋಟ್ ಉಳಿಸಲು ಆಗಲಿಲ್ಲ';

  @override
  String reviewHelpful(int n, int total) {
    return '$total ರಲ್ಲಿ $n ಜನರಿಗೆ ಇದು ಉಪಯುಕ್ತ ಅನಿಸಿತು';
  }

  @override
  String get calendarTitle => 'ಪ್ರಸಾರ ವೇಳಾಪಟ್ಟಿ';

  @override
  String get calendarToday => 'ಇಂದು';

  @override
  String get calendarEmpty => 'ಈ ದಿನ ಏನೂ ಪ್ರಸಾರವಾಗುವುದಿಲ್ಲ';

  @override
  String get calendarFailed => 'ವೇಳಾಪಟ್ಟಿ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String calendarChapter(int n) {
    return 'Chapter $n';
  }

  @override
  String get calendarExpected => 'Expected';

  @override
  String get castReceiverFailed => 'The Chromecast did not start its player';

  @override
  String get castPlaybackFailed => 'The device could not play this stream';

  @override
  String get shortcutNothingToContinue => 'Nothing to continue yet';

  @override
  String shortcutNoCalendar(String service) {
    return '$service has no calendar';
  }

  @override
  String calendarEpisode(int n) {
    return 'ಎಪಿಸೋಡ್ $n';
  }

  @override
  String get shareAnalytics => 'ಅನಾಮಧೇಯ ಬಳಕೆಯ ಡೇಟಾ ಶೇರ್ ಮಾಡು';

  @override
  String get shareAnalyticsDesc =>
      'ಅನಾಮಧೇಯ ಬಳಕೆದಾರರ ಸಂಖ್ಯೆ ಮತ್ತು ಕ್ರ್ಯಾಶ್ ವರದಿಗಳು. ಖಾತೆ ಅಥವಾ ವೈಯಕ್ತಿಕ ಡೇಟಾ ಇಲ್ಲ';

  @override
  String get linkOpenAnilist => 'AniList ಲಿಂಕ್‌ಗಳನ್ನು Dartotsu ನಲ್ಲಿ ತೆರೆ';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co ಲಿಂಕ್‌ಗಳು ಆ್ಯಪ್ ತೆರೆಯಲು ಲಿಂಕ್ ಹ್ಯಾಂಡ್ಲಿಂಗ್ ಆನ್ ಮಾಡು';

  @override
  String get linkSettingsFailed => 'ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್ಸ್ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'ನೀನು ಏನು ಮಾಡ್ತಿದ್ದೀಯ ಅಂತ ನಿನ್ನ Discord ಪ್ರೊಫೈಲ್‌ನಲ್ಲಿ ತೋರಿಸು. ನಿನ್ನ Discord ಟೋಕನ್ ಬೇಕು.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'ನೀನು ಏನು ಮಾಡ್ತಿದ್ದೀಯ ಅಂತ ನಿನ್ನ Discord ಪ್ರೊಫೈಲ್‌ನಲ್ಲಿ ತೋರಿಸು. Discord ಡೆಸ್ಕ್‌ಟಾಪ್ ಆ್ಯಪ್ ಚಾಲನೆಯಲ್ಲಿರಬೇಕು.';

  @override
  String get discordBrowsing => 'ಬ್ರೌಸಿಂಗ್ ಚಟುವಟಿಕೆ ತೋರಿಸು';

  @override
  String get discordBrowsingDesc =>
      'ನೀನು ನೋಡುವ ಅಥವಾ ಓದುವುದನ್ನು ಮಾತ್ರವಲ್ಲ, ನೋಡುತ್ತಿರುವ ಟ್ಯಾಬ್, ಪುಟ ಅಥವಾ ಪ್ರೊಫೈಲ್ ಅನ್ನೂ ತೋರಿಸು.';

  @override
  String get discordLookHeader => 'ಪ್ರೆಸೆನ್ಸ್ ಲುಕ್';

  @override
  String get discordActivityType => 'ಚಟುವಟಿಕೆಯ ವಿಧ';

  @override
  String get discordActivityTypeDesc =>
      'Discord ಅದನ್ನು ಹೇಗೆ ಬರೆಯುತ್ತದೆ: \"Watching …\" ಅಥವಾ \"Playing …\". ಆಟೋ ಆನಿಮೆಗೆ Watching ಮತ್ತು ಉಳಿದೆಲ್ಲದಕ್ಕೂ Playing ಬಳಸುತ್ತದೆ.';

  @override
  String get discordWatching => 'ನೋಡುತ್ತಿರುವುದು';

  @override
  String get discordPlaying => 'ಆಡುತ್ತಿರುವುದು';

  @override
  String get discordCovers => 'ಕವರ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get discordCoversDesc =>
      'ಕಾರ್ಡ್‌ನಲ್ಲಿ ಕವರ್ ಆರ್ಟ್ ಮತ್ತು Dartotsu ಐಕಾನ್.';

  @override
  String get discordTimer => 'ಟೈಮರ್ ತೋರಿಸು';

  @override
  String get discordTimerDesc => 'ಶೀರ್ಷಿಕೆಯ ಕೆಳಗೆ ಕಳೆದ ಅಥವಾ ಉಳಿದ ಸಮಯ.';

  @override
  String get discordButtons => 'ಬಟನ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get discordButtonsDesc =>
      '\"ಆನಿಮೆ / ಮಂಗಾ ನೋಡು\" ಮತ್ತು \"Dartotsu ತೆರೆ\" ಬಟನ್‌ಗಳು.';

  @override
  String get discordHideTitles => 'ಶೀರ್ಷಿಕೆಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get discordHideTitlesDesc =>
      'ಆನಿಮೆ ಮತ್ತು ಮಂಗಾ ಹೆಸರುಗಳನ್ನು (ಅವುಗಳ ಕವರ್ ಮತ್ತು ಲಿಂಕ್ ಸಮೇತ) \"ಖಾಸಗಿ ವಿಷಯ\" ಎಂದು ಬದಲಿಸು.';

  @override
  String get discordConnectionHeader => 'ಸಂಪರ್ಕ';

  @override
  String get listSearchHint => 'ಈ ಪಟ್ಟಿಯಲ್ಲಿ ಹುಡುಕು';

  @override
  String get listSort => 'ಸಾರ್ಟ್';

  @override
  String get listFilter => 'ಫಿಲ್ಟರ್';

  @override
  String get listRandom => 'ರ‍್ಯಾಂಡಮ್ ಶೀರ್ಷಿಕೆ';

  @override
  String get listReverse => 'ಕ್ರಮ ಹಿಮ್ಮುಖ ಮಾಡು';

  @override
  String get listSortDefault => 'ಪಟ್ಟಿಯ ಕ್ರಮ';

  @override
  String get listSortScore => 'ನಿನ್ನ ಸ್ಕೋರ್';

  @override
  String get listSortTitle => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get listSortUpdated => 'ಕೊನೆಯ ಅಪ್‌ಡೇಟ್';

  @override
  String get listSortProgress => 'ಪ್ರಗತಿ';

  @override
  String get listSortReleased => 'ಬಿಡುಗಡೆ ದಿನಾಂಕ';

  @override
  String get listSortAverage => 'ಸರಾಸರಿ ಸ್ಕೋರ್';

  @override
  String get listFilterFormat => 'ಫಾರ್ಮ್ಯಾಟ್';

  @override
  String get listFilterStatus => 'ಸ್ಥಿತಿ';

  @override
  String get listFilterGenres => 'ಜಾನರ್‌ಗಳು';

  @override
  String get listFilterClear => 'ಫಿಲ್ಟರ್‌ಗಳನ್ನು ಕ್ಲಿಯರ್ ಮಾಡು';

  @override
  String get listNoMatches => 'ಈ ಪಟ್ಟಿಯಲ್ಲಿ ಹೊಂದುವುದು ಏನೂ ಇಲ್ಲ';

  @override
  String get discordLogin => 'Discord ಗೆ ಲಾಗಿನ್';

  @override
  String get discordToken => 'Discord ಟೋಕನ್';

  @override
  String get discordTokenSaved =>
      'ಉಳಿಸಲಾಗಿದೆ. ಬದಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡು, ತೆಗೆಯಲು ಒತ್ತಿ ಹಿಡಿ.';

  @override
  String get discordTokenNotSet => 'ಹೊಂದಿಸಿಲ್ಲ. ಸೇರಿಸಲು ಟ್ಯಾಪ್ ಮಾಡು.';

  @override
  String get discordTokenSavedSnack => 'Discord ಟೋಕನ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get discordTokenRemovedSnack => 'Discord ಟೋಕನ್ ತೆಗೆಯಲಾಗಿದೆ';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'ಆನ್ · ಹೇಗೆ ಕಾಣಬೇಕೆಂದು ಬದಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡು';

  @override
  String get discordRichPresenceRowOff =>
      'ನೀನು ಏನು ಮಾಡ್ತಿದ್ದೀಯ ಅಂತ ನಿನ್ನ Discord ಪ್ರೊಫೈಲ್‌ನಲ್ಲಿ ತೋರಿಸು';

  @override
  String get loginCancelled => 'ಲಾಗಿನ್ ರದ್ದಾಯ್ತು';

  @override
  String get invalidToken => 'ಅಮಾನ್ಯ ಟೋಕನ್';

  @override
  String loginFailed(String error) {
    return 'ಲಾಗಿನ್ ವಿಫಲ: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList ಲಾಗಿನ್ ವಿಫಲವಾಯ್ತು';

  @override
  String get kitsuLoginFailed =>
      'Kitsu ಲಾಗಿನ್ ವಿಫಲವಾಯ್ತು. ನಿನ್ನ ಇಮೇಲ್ ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್ ಚೆಕ್ ಮಾಡು.';

  @override
  String get kitsuLoginTitle => 'Kitsu ಗೆ ಸೈನ್ ಇನ್';

  @override
  String get emailOrUsername => 'ಇಮೇಲ್ ಅಥವಾ ಬಳಕೆದಾರ ಹೆಸರು';

  @override
  String get password => 'ಪಾಸ್‌ವರ್ಡ್';

  @override
  String get kitsuProfile => 'Kitsu ಪ್ರೊಫೈಲ್';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka ಲಾಗಿನ್ ವಿಫಲವಾಯ್ತು';

  @override
  String get mangaBakaProfile => 'MangaBaka ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromMangaBaka => 'MangaBaka ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get mangaUpdatesLoginTitle => 'Sign in to MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profile';

  @override
  String get mangaUpdatesAnimeStart => 'Anime adaptation starts';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime adaptation ends';

  @override
  String get refreshFromMangaUpdates => 'Refresh from MangaUpdates';

  @override
  String get usernameOnly => 'Username';

  @override
  String get releases => 'Releases';

  @override
  String get artistsLabel => 'ಕಲಾವಿದರು';

  @override
  String get authorsLabel => 'ಲೇಖಕರು';

  @override
  String get publishersLabel => 'ಪ್ರಕಾಶಕರು';

  @override
  String get licensedLabel => 'ಪರವಾನಗಿ ಪಡೆದದ್ದು';

  @override
  String get contentRatingLabel => 'ಕಂಟೆಂಟ್ ರೇಟಿಂಗ್';

  @override
  String get yesLabel => 'ಹೌದು';

  @override
  String get noLabel => 'ಇಲ್ಲ';

  @override
  String get ratingSteps => 'ರೇಟಿಂಗ್ ಹಂತಗಳು';

  @override
  String get hideNsfw => 'NSFW ಮರೆಮಾಡು';

  @override
  String get hideNsfwDesc =>
      'ವಯಸ್ಕರ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಫೀಡ್ ಮತ್ತು ಹುಡುಕಾಟದಿಂದ ಹೊರಗಿಡು, ಮತ್ತು ನಿನ್ನ ವಯಸ್ಕರ ಎಂಟ್ರಿಗಳನ್ನು ಮರೆಮಾಡಿದ ಮೀಡಿಯಾ ಅಡಿಯಲ್ಲಿ ತೋರಿಸು.';

  @override
  String get kitsuAccountOptions => 'Kitsu ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka ಖಾತೆಯ ಆಯ್ಕೆಗಳು';

  @override
  String get couldNotUpdateKitsuSettings =>
      'ನಿನ್ನ Kitsu ಸೆಟ್ಟಿಂಗ್ಸ್ ಅಪ್‌ಡೇಟ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ';

  @override
  String get titleCanonical => 'ಮೂಲ ಹೆಸರು';

  @override
  String get titleRomanized => 'ರೋಮನೈಸ್ಡ್';

  @override
  String get titleLocalized => 'ಸ್ಥಳೀಯ';

  @override
  String get ratingSystem => 'ರೇಟಿಂಗ್ ವ್ಯವಸ್ಥೆ';

  @override
  String get ratingSimple => 'ಸರಳ (3 ಮುಖಗಳು)';

  @override
  String get ratingRegular => 'ಸಾಮಾನ್ಯ (5 ನಕ್ಷತ್ರಗಳು)';

  @override
  String get ratingAdvanced => 'ಅಡ್ವಾನ್ಸ್ಡ್ (10 ಅಂಕಗಳು)';

  @override
  String get contentFilter => 'ಕಂಟೆಂಟ್ ಫಿಲ್ಟರ್';

  @override
  String get contentSfw => 'ಎಲ್ಲರಿಗೂ ಸೂಕ್ತವಾದದ್ದು ಮಾತ್ರ';

  @override
  String get contentSometimes => 'ಹುಡುಕಾಟಗಳಲ್ಲಿ ವಯಸ್ಕರ ವಿಷಯ';

  @override
  String get contentEverywhere => 'ಎಲ್ಲೆಡೆ ವಯಸ್ಕರ ವಿಷಯ';

  @override
  String get shareToGlobal => 'ಗ್ಲೋಬಲ್ ಫೀಡ್‌ಗೆ ಶೇರ್ ಮಾಡು';

  @override
  String get shareToGlobalDesc =>
      'ನಿನ್ನ ಚಟುವಟಿಕೆ Kitsu ಗ್ಲೋಬಲ್ ಫೀಡ್‌ನಲ್ಲಿ ಕಾಣಿಸಲಿ.';

  @override
  String get memberSince => 'ಸದಸ್ಯರಾದ ದಿನ';

  @override
  String get location => 'ಸ್ಥಳ';

  @override
  String get accountType => 'ಖಾತೆಯ ವಿಧ';

  @override
  String get accountSupporter => 'ಸಪೋರ್ಟರ್';

  @override
  String get accountFree => 'ಉಚಿತ';

  @override
  String get accountDetails => 'ಖಾತೆಯ ವಿವರಗಳು';

  @override
  String get refreshFromKitsu => 'Kitsu ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get simklReadOnly => 'Simkl ಓದಲು-ಮಾತ್ರ ಪ್ರವೇಶ ನೀಡಿದೆ';

  @override
  String get incognitoEditsBlocked =>
      'ಇನ್‌ಕಾಗ್ನಿಟೋ: ಪಟ್ಟಿ ಎಡಿಟ್‌ಗಳು ಬ್ಲಾಕ್ ಆಗಿವೆ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ಇನ್‌ಕಾಗ್ನಿಟೋ: ಪ್ರಗತಿ ಉಳಿಯಲಿಲ್ಲ';

  @override
  String progressSet(int progress) {
    return 'ಪ್ರಗತಿ $progress ಗೆ ಹೊಂದಿಸಲಾಗಿದೆ';
  }

  @override
  String removedFromList(String title) {
    return '$title ಅನ್ನು ನಿನ್ನ ಪಟ್ಟಿಯಿಂದ ತೆಗೆಯಲಾಗಿದೆ';
  }

  @override
  String get following => 'ಫಾಲೋ ಮಾಡುತ್ತಿರುವವರು';

  @override
  String get homeSections => 'ಹೋಮ್ ವಿಭಾಗಗಳು';

  @override
  String get homeSectionsHint =>
      'ಕ್ರಮ ಬದಲಿಸಲು ಎಳೆ. ಮರೆಮಾಡಿದ ವಿಭಾಗಗಳು ಎಂದಿಗೂ ಲೋಡ್ ಆಗುವುದಿಲ್ಲ.';

  @override
  String get customListDeleteFailed => 'ಕಸ್ಟಮ್ ಪಟ್ಟಿ ಅಳಿಸಲು ಆಗಲಿಲ್ಲ';

  @override
  String get customListsSaveFailed => 'ಕಸ್ಟಮ್ ಪಟ್ಟಿಗಳು ಉಳಿಯಲಿಲ್ಲ';

  @override
  String get customListsSaved => 'ಕಸ್ಟಮ್ ಪಟ್ಟಿಗಳು ಉಳಿದವು';

  @override
  String get listName => 'ಪಟ್ಟಿಯ ಹೆಸರು';

  @override
  String get addList => 'ಪಟ್ಟಿ ಸೇರಿಸು';

  @override
  String voiceActorsIn(String name) {
    return 'ವಾಯ್ಸ್ ಆ್ಯಕ್ಟರ್‌ಗಳು · $name';
  }

  @override
  String get animeAppearances => 'ಆನಿಮೆ ಪಾತ್ರಗಳು';

  @override
  String get mangaAppearances => 'ಮಂಗಾ ಪಾತ್ರಗಳು';

  @override
  String get voicedCharacters => 'ಧ್ವನಿ ನೀಡಿದ ಪಾತ್ರಗಳು';

  @override
  String get animeCredits => 'ಆನಿಮೆ ಕ್ರೆಡಿಟ್‌ಗಳು';

  @override
  String get mangaCredits => 'ಮಂಗಾ ಕ್ರೆಡಿಟ್‌ಗಳು';

  @override
  String get mainProductions => 'ಪ್ರಮುಖ ನಿರ್ಮಾಣಗಳು';

  @override
  String get otherWorks => 'ಇತರ ಕೃತಿಗಳು';

  @override
  String get prequelSequel => 'ಪ್ರೀಕ್ವೆಲ್ & ಸೀಕ್ವೆಲ್';

  @override
  String get previousSeason => 'ಹಿಂದಿನ ಸೀಸನ್';

  @override
  String get thisSeason => 'ಈ ಸೀಸನ್';

  @override
  String get nextSeason => 'ಮುಂದಿನ ಸೀಸನ್';

  @override
  String get voiceRoles => 'ಧ್ವನಿ ಪಾತ್ರಗಳು';

  @override
  String get staffPositions => 'ಸ್ಟಾಫ್ ಹುದ್ದೆಗಳು';

  @override
  String get mangaWorks => 'ಮಂಗಾ ಕೃತಿಗಳು';

  @override
  String get malProfile => 'MyAnimeList ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromMal => 'MyAnimeList ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get repullProfileCounts =>
      'ನಿನ್ನ ಪ್ರೊಫೈಲ್ ಮತ್ತು ಎಣಿಕೆಗಳನ್ನು ಮತ್ತೆ ತೆಗೆದುಕೊ';

  @override
  String get refreshed => 'ರಿಫ್ರೆಶ್ ಆಯ್ತು';

  @override
  String get simklProfile => 'Simkl ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromSimkl => 'Simkl ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get repullProfileLibrary =>
      'ನಿನ್ನ ಪ್ರೊಫೈಲ್ ಮತ್ತು ಲೈಬ್ರರಿಯನ್ನು ಮತ್ತೆ ತೆಗೆದುಕೊ';

  @override
  String get simklSignInToSearch => 'ಹುಡುಕಲು Simkl ಗೆ ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String get dropRate => 'ಕೈಬಿಟ್ಟ ಪ್ರಮಾಣ';

  @override
  String get simklAttribution =>
      'ಡೇಟಾ ಮತ್ತು ಆರ್ಟ್‌ವರ್ಕ್ Simkl ಒದಗಿಸಿದ್ದು. Simkl ನಲ್ಲಿ ನೋಡು';

  @override
  String get onHold => 'ತಡೆ ಹಿಡಿದಿದೆ';

  @override
  String get scoredBy => 'ಸ್ಕೋರ್ ನೀಡಿದವರು';

  @override
  String get planToWatch => 'ನೋಡಲು ಯೋಜನೆ';

  @override
  String get planToRead => 'ಓದಲು ಯೋಜನೆ';

  @override
  String get timesRewatched => 'ಮತ್ತೆ ನೋಡಿದ ಬಾರಿ';

  @override
  String get timesReread => 'ಮತ್ತೆ ಓದಿದ ಬಾರಿ';

  @override
  String get comments => 'ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get moviesAndSeries => 'ಸಿನಿಮಾಗಳು & ಸೀರೀಸ್';

  @override
  String get trackingOnly => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಮಾತ್ರ';

  @override
  String get signedIn => 'ಸೈನ್ ಇನ್ ಆಗಿದೆ';

  @override
  String get searchLanguage => 'ಹುಡುಕಾಟದ ಭಾಷೆ';

  @override
  String get savedToList => 'ನಿನ್ನ ಪಟ್ಟಿಗೆ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get removedFromYourList => 'ನಿನ್ನ ಪಟ್ಟಿಯಿಂದ ತೆಗೆಯಲಾಗಿದೆ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸು';

  @override
  String get synopsis => 'ಸಾರಾಂಶ';

  @override
  String get details => 'ವಿವರಗಳು';

  @override
  String get addToList => 'ಪಟ್ಟಿಗೆ ಸೇರಿಸು';

  @override
  String get trailer => 'ಟ್ರೈಲರ್';

  @override
  String get titleCopied => 'ಶೀರ್ಷಿಕೆ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get linkCopied => 'ಲಿಂಕ್ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get watchTrailer => 'ಟ್ರೈಲರ್ ನೋಡು';

  @override
  String get copyTitle => 'ಶೀರ್ಷಿಕೆ ಕಾಪಿ ಮಾಡು';

  @override
  String get copyLink => 'ಲಿಂಕ್ ಕಾಪಿ ಮಾಡು';

  @override
  String get openInBrowser => 'ಬ್ರೌಸರ್‌ನಲ್ಲಿ ತೆರೆ';

  @override
  String viewOnSource(String source) {
    return '$source ನಲ್ಲಿ ನೋಡು';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'ಎಪಿಸೋಡ್ $ep $time ನಲ್ಲಿ ಪ್ರಸಾರವಾಗುತ್ತದೆ';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'ಮುಂದಿನ ಎಪಿಸೋಡ್ $time ನಲ್ಲಿ';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'ಅಧ್ಯಾಯ $chapter ಸುಮಾರು $timeರಲ್ಲಿ ಬರುತ್ತದೆ';
  }

  @override
  String get logPathCopied => 'ಲಾಗ್ ಫೈಲ್ ಪಾತ್ ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get animeSource => 'ಆನಿಮೆ ಸೋರ್ಸ್';

  @override
  String get mangaSource => 'ಮಂಗಾ ಸೋರ್ಸ್';

  @override
  String get popular => 'ಜನಪ್ರಿಯ';

  @override
  String get latest => 'ಇತ್ತೀಚಿನ';

  @override
  String get saved => 'ಉಳಿಸಿದ್ದು';

  @override
  String get nothingMatched => 'ಏನೂ ಹೊಂದಲಿಲ್ಲ';

  @override
  String get nothingSavedFromSource => 'ಈ ಸೋರ್ಸ್‌ನಿಂದ ಇನ್ನೂ ಏನೂ ಉಳಿಸಿಲ್ಲ';

  @override
  String get sourceReturnedNothing => 'ಈ ಸೋರ್ಸ್ ಏನನ್ನೂ ಕೊಡಲಿಲ್ಲ';

  @override
  String get checkConnectionOrSource =>
      'ನಿನ್ನ ಕನೆಕ್ಷನ್ ಚೆಕ್ ಮಾಡು ಅಥವಾ ಬೇರೆ ಸೋರ್ಸ್ ಪ್ರಯತ್ನಿಸು.';

  @override
  String get tryDifferentSearch => 'ಬೇರೆ ಹುಡುಕಾಟ ಪದ ಪ್ರಯತ್ನಿಸು.';

  @override
  String get savedTitlesAppearHere =>
      'ನೀನು ಪಟ್ಟಿಗೆ ಸೇರಿಸಿದ ಶೀರ್ಷಿಕೆಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get tryOtherFeed => 'ಬೇರೆ ಫೀಡ್ ಅಥವಾ ಹುಡುಕಾಟ ಪ್ರಯತ್ನಿಸು.';

  @override
  String searchSource(String source) {
    return '$source ಹುಡುಕು';
  }

  @override
  String get animeExtensions => 'ಆನಿಮೆ ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳು';

  @override
  String get mangaExtensions => 'ಮಂಗಾ ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳು';

  @override
  String get nothingHereYet => 'ಇನ್ನೂ ಏನೂ ಇಲ್ಲ';

  @override
  String get savedOnDeviceUntilLogin =>
      'ನೀನು ಬದಲಿಸುವವರೆಗೆ ಕೆಳಗಿರುವ ಎಲ್ಲವೂ ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಯುತ್ತವೆ.';

  @override
  String get yourProfile => 'ನಿನ್ನ ಪ್ರೊಫೈಲ್';

  @override
  String get activity => 'ಚಟುವಟಿಕೆ';

  @override
  String get extensions => 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳು';

  @override
  String get logOut => 'ಲಾಗ್ ಔಟ್';

  @override
  String get logIn => 'ಲಾಗ್ ಇನ್';

  @override
  String get logOutConfirm => 'ನಿಜವಾಗಿಯೂ ಲಾಗ್ ಔಟ್ ಆಗಬೇಕಾ?';

  @override
  String get incognitoMode => 'ಇನ್‌ಕಾಗ್ನಿಟೋ ಮೋಡ್';

  @override
  String get alsoBlockListEdits => 'ಪಟ್ಟಿ ಎಡಿಟ್‌ಗಳನ್ನೂ ಬ್ಲಾಕ್ ಮಾಡು';

  @override
  String get offlineMode => 'ಆಫ್‌ಲೈನ್ ಮೋಡ್';

  @override
  String get switchService => 'ಸರ್ವಿಸ್ ಬದಲಿಸು';

  @override
  String logOutOf(String name) {
    return '$name ನಿಂದ ಲಾಗ್ ಔಟ್';
  }

  @override
  String get loggedIn => 'ಲಾಗ್ ಇನ್ ಆಗಿದೆ';

  @override
  String get notifications => 'ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get nothingNew => 'ಹೊಸದೇನೂ ಇಲ್ಲ';

  @override
  String get thisWeek => 'ಈ ವಾರ';

  @override
  String get listOnly => 'ಪಟ್ಟಿ ಮಾತ್ರ';

  @override
  String get filter => 'ಫಿಲ್ಟರ್';

  @override
  String get searchResults => 'ಹುಡುಕಾಟ ಫಲಿತಾಂಶಗಳು';

  @override
  String get recentSearches => 'ಇತ್ತೀಚಿನ ಹುಡುಕಾಟಗಳು';

  @override
  String get searchOrSetFilter => 'ಹುಡುಕು ಅಥವಾ ಫಿಲ್ಟರ್ ಹೊಂದಿಸು';

  @override
  String get filters => 'ಫಿಲ್ಟರ್‌ಗಳು';

  @override
  String get showLess => 'ಕಡಿಮೆ ತೋರಿಸು';

  @override
  String get showAll => 'ಎಲ್ಲವನ್ನೂ ತೋರಿಸು';

  @override
  String get apply => 'ಅನ್ವಯಿಸು';

  @override
  String get preview => 'ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get preset => 'ಪ್ರೀಸೆಟ್';

  @override
  String get cardNormal => 'ಸಾಮಾನ್ಯ';

  @override
  String get cardOnCard => 'ಕಾರ್ಡ್ ಮೇಲೆ';

  @override
  String get cardInCard => 'ಕಾರ್ಡ್ ಒಳಗೆ';

  @override
  String get size => 'ಗಾತ್ರ';

  @override
  String get cardWidth => 'ಕಾರ್ಡ್ ಅಗಲ';

  @override
  String get compact => 'ಕಾಂಪ್ಯಾಕ್ಟ್';

  @override
  String get coverAndTitleOnly => 'ಕವರ್ ಮತ್ತು ಶೀರ್ಷಿಕೆ ಮಾತ್ರ';

  @override
  String get titleLines => 'ಶೀರ್ಷಿಕೆ ಸಾಲುಗಳು';

  @override
  String get shape => 'ಆಕಾರ';

  @override
  String get posterShape => 'ಪೋಸ್ಟರ್ ಆಕಾರ';

  @override
  String get cornerRadius => 'ಮೂಲೆಯ ದುಂಡಗೆ';

  @override
  String get off => 'ಆಫ್';

  @override
  String get topLeft => 'ಮೇಲೆ ಎಡ';

  @override
  String get topRight => 'ಮೇಲೆ ಬಲ';

  @override
  String get bottomLeft => 'ಕೆಳಗೆ ಎಡ';

  @override
  String get bottomRight => 'ಕೆಳಗೆ ಬಲ';

  @override
  String get overlays => 'ಓವರ್‌ಲೇಗಳು';

  @override
  String get progressCount => 'ಪ್ರಗತಿ / ಎಣಿಕೆ';

  @override
  String get pill => 'ಪಿಲ್';

  @override
  String get bar => 'ಬಾರ್';

  @override
  String get outside => 'ಹೊರಗೆ';

  @override
  String get scoreBadge => 'ಸ್ಕೋರ್ ಬ್ಯಾಡ್ಜ್';

  @override
  String get airingDot => 'ಪ್ರಸಾರ ಚುಕ್ಕೆ';

  @override
  String get updateAvailable => 'ಅಪ್‌ಡೇಟ್ ಲಭ್ಯವಿದೆ';

  @override
  String get notInstalled => 'ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ';

  @override
  String get done => 'ಮುಗಿಯಿತು';

  @override
  String get searchOrEnterUrl => 'ಹುಡುಕು ಅಥವಾ URL ಹಾಕು';

  @override
  String get refresh => 'ರಿಫ್ರೆಶ್';

  @override
  String get share => 'ಶೇರ್';

  @override
  String get characters => 'ಪಾತ್ರಗಳು';

  @override
  String get staff => 'ಸ್ಟಾಫ್';

  @override
  String get readMore => 'ಇನ್ನಷ್ಟು ಓದು';

  @override
  String get couldNotLoadList => 'ಪಟ್ಟಿ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get logInToFavourite => 'ಮೆಚ್ಚಿನವುಗಳಿಗೆ ಸೇರಿಸಲು ಲಾಗಿನ್ ಆಗು';

  @override
  String get alsoKnownAs => 'ಇತರ ಹೆಸರುಗಳು';

  @override
  String get hideSpoilerNames => 'ಸ್ಪಾಯ್ಲರ್ ಹೆಸರುಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get showSpoilerNames => 'ಸ್ಪಾಯ್ಲರ್ ಹೆಸರುಗಳನ್ನು ತೋರಿಸು';

  @override
  String get favourited => 'ಮೆಚ್ಚಿನದಾಗಿದೆ';

  @override
  String get favourite => 'ಮೆಚ್ಚಿನ';

  @override
  String get couldNotOpenTitle => 'ಈ ಶೀರ್ಷಿಕೆ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ';

  @override
  String get nobodyHereYet => 'ಇನ್ನೂ ಯಾರೂ ಇಲ್ಲ';

  @override
  String get noMatches => 'ಹೊಂದುವುದು ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get gridView => 'ಗ್ರಿಡ್ ವ್ಯೂ';

  @override
  String get fullWidth => 'ಪೂರ್ಣ ಅಗಲ';

  @override
  String get userNotFound => 'ಬಳಕೆದಾರ ಸಿಗಲಿಲ್ಲ';

  @override
  String get couldNotUpdateFollow => 'ಫಾಲೋ ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ';

  @override
  String followedUser(String name) {
    return '$name ಅವರನ್ನು ಫಾಲೋ ಮಾಡಿದೆ';
  }

  @override
  String unfollowedUser(String name) {
    return '$name ಅವರನ್ನು ಅನ್‌ಫಾಲೋ ಮಾಡಿದೆ';
  }

  @override
  String get messages => 'ಸಂದೇಶಗಳು';

  @override
  String get logInToSeeMessages => 'ನಿನ್ನ ಸಂದೇಶಗಳನ್ನು ನೋಡಲು ಲಾಗಿನ್ ಆಗು';

  @override
  String get editActivity => 'ಚಟುವಟಿಕೆ ಎಡಿಟ್ ಮಾಡು';

  @override
  String get newActivity => 'ಹೊಸ ಚಟುವಟಿಕೆ';

  @override
  String get editMessage => 'ಸಂದೇಶ ಎಡಿಟ್ ಮಾಡು';

  @override
  String get writeMessage => 'ಸಂದೇಶ ಬರೆ';

  @override
  String get editReply => 'ಉತ್ತರ ಎಡಿಟ್ ಮಾಡು';

  @override
  String get posted => 'ಪೋಸ್ಟ್ ಆಯ್ತು';

  @override
  String get couldNotPost => 'ಪೋಸ್ಟ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ';

  @override
  String get nothingToPreview => 'ಪೂರ್ವವೀಕ್ಷಣೆಗೆ ಏನೂ ಇಲ್ಲ';

  @override
  String get writeSomethingHint =>
      'ಏನಾದರೂ ಬರೆ… AniList ಮಾರ್ಕ್‌ಡೌನ್ ಇಲ್ಲಿ ಕೆಲಸ ಮಾಡುತ್ತದೆ';

  @override
  String get privateMessage => 'ಖಾಸಗಿ ಸಂದೇಶ';

  @override
  String get post => 'ಪೋಸ್ಟ್';

  @override
  String get nothingHere => 'ಇಲ್ಲಿ ಏನೂ ಇಲ್ಲ';

  @override
  String get noAnimeProgress => 'ಆನಿಮೆ ಪ್ರಗತಿ ಇಲ್ಲ';

  @override
  String get noMangaProgress => 'ಮಂಗಾ ಪ್ರಗತಿ ಇಲ್ಲ';

  @override
  String get noMessages => 'ಸಂದೇಶಗಳಿಲ್ಲ';

  @override
  String get writeMessageHint => 'ಸಂದೇಶ ಬರೆ…';

  @override
  String get shareSomethingHint => 'ಏನಾದರೂ ಶೇರ್ ಮಾಡು…';

  @override
  String get all => 'ಎಲ್ಲಾ';

  @override
  String get anime => 'ಆನಿಮೆ';

  @override
  String get manga => 'ಮಂಗಾ';

  @override
  String get count => 'ಎಣಿಕೆ';

  @override
  String get hoursWatched => 'ನೋಡಿದ ಗಂಟೆಗಳು';

  @override
  String get chaptersRead => 'ಓದಿದ ಅಧ್ಯಾಯಗಳು';

  @override
  String get meanScore => 'ಸರಾಸರಿ ಸ್ಕೋರ್';

  @override
  String get noStatsYet => 'ಇನ್ನೂ ಅಂಕಿಅಂಶಗಳಿಲ್ಲ';

  @override
  String get totalEntries => 'ಒಟ್ಟು ಎಂಟ್ರಿಗಳು';

  @override
  String get episodesWatched => 'ನೋಡಿದ ಎಪಿಸೋಡ್‌ಗಳು';

  @override
  String get daysWatched => 'ನೋಡಿದ ದಿನಗಳು';

  @override
  String get volumesRead => 'ಓದಿದ ಸಂಪುಟಗಳು';

  @override
  String get standardDeviation => 'ಪ್ರಮಾಣಿತ ವಿಚಲನ';

  @override
  String get showMore => 'ಇನ್ನಷ್ಟು ತೋರಿಸು';

  @override
  String get followsYou => 'ನಿನ್ನನ್ನು ಫಾಲೋ ಮಾಡುತ್ತಾರೆ';

  @override
  String get nobodyYet => 'ಇನ್ನೂ ಯಾರೂ ಇಲ್ಲ';

  @override
  String get logInToLike => 'ಲೈಕ್ ಮಾಡಲು ಲಾಗಿನ್ ಆಗು';

  @override
  String get failedToLikeActivity => 'ಚಟುವಟಿಕೆ ಲೈಕ್ ಆಗಲಿಲ್ಲ';

  @override
  String get deleteActivityConfirm => 'ಚಟುವಟಿಕೆ ಅಳಿಸಬೇಕಾ?';

  @override
  String get deletedActivity => 'ಚಟುವಟಿಕೆ ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get failedToDeleteActivity => 'ಚಟುವಟಿಕೆ ಅಳಿಸಲು ಆಗಲಿಲ್ಲ';

  @override
  String get subscribed => 'ಚಂದಾದಾರರಾಗಿದ್ದೀರಿ';

  @override
  String get unsubscribed => 'ಚಂದಾ ರದ್ದಾಯ್ತು';

  @override
  String get failedToUpdateSubscription => 'ಚಂದಾದಾರಿಕೆ ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ';

  @override
  String get edit => 'ಎಡಿಟ್';

  @override
  String get delete => 'ಅಳಿಸು';

  @override
  String get likedBy => 'ಲೈಕ್ ಮಾಡಿದವರು';

  @override
  String get follow => 'ಫಾಲೋ';

  @override
  String get nameCopied => 'ಹೆಸರು ಕಾಪಿ ಆಯ್ತು';

  @override
  String get followsEachOther => 'ಪರಸ್ಪರ ಫಾಲೋ ಮಾಡುತ್ತಿದ್ದೀರಿ';

  @override
  String get unfollow => 'ಅನ್‌ಫಾಲೋ';

  @override
  String get userIdCopied => 'ಬಳಕೆದಾರ ಐಡಿ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get shareProfile => 'ಪ್ರೊಫೈಲ್ ಶೇರ್ ಮಾಡು';

  @override
  String get copyUserId => 'ಬಳಕೆದಾರ ಐಡಿ ಕಾಪಿ ಮಾಡು';

  @override
  String get failedToDelete => 'ಅಳಿಸಲು ಆಗಲಿಲ್ಲ';

  @override
  String get failedToLike => 'ಲೈಕ್ ಆಗಲಿಲ್ಲ';

  @override
  String get replies => 'ಉತ್ತರಗಳು';

  @override
  String get reply => 'ಉತ್ತರಿಸು';

  @override
  String get noRepliesYet => 'ಇನ್ನೂ ಉತ್ತರಗಳಿಲ್ಲ';

  @override
  String get favouriteAnime => 'ಮೆಚ್ಚಿನ ಆನಿಮೆ';

  @override
  String get favouriteManga => 'ಮೆಚ್ಚಿನ ಮಂಗಾ';

  @override
  String get favouriteCharacters => 'ಮೆಚ್ಚಿನ ಪಾತ್ರಗಳು';

  @override
  String get favouriteStaff => 'ಮೆಚ್ಚಿನ ಸ್ಟಾಫ್';

  @override
  String get favouriteStudios => 'ಮೆಚ್ಚಿನ ಸ್ಟುಡಿಯೋಗಳು';

  @override
  String get noFavouritesYet => 'ಇನ್ನೂ ಮೆಚ್ಚಿನವುಗಳಿಲ್ಲ';

  @override
  String get yourStory => 'ನಿನ್ನ ಸ್ಟೋರಿ';

  @override
  String get copiedToClipboard => 'ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get justNow => 'ಈಗಷ್ಟೇ';

  @override
  String get openImage => 'ಚಿತ್ರ ತೆರೆ';

  @override
  String get hideSpoiler => 'ಸ್ಪಾಯ್ಲರ್ ಮರೆಮಾಡು';

  @override
  String get showSpoiler => 'ಸ್ಪಾಯ್ಲರ್ ತೋರಿಸು';

  @override
  String get status => 'ಸ್ಥಿತಿ';

  @override
  String get score => 'ಸ್ಕೋರ್';

  @override
  String get started => 'ಶುರುವಾದದ್ದು';

  @override
  String get completed => 'ಮುಗಿದದ್ದು';

  @override
  String get private => 'ಖಾಸಗಿ';

  @override
  String get hideFromStatusLists => 'ಸ್ಥಿತಿ ಪಟ್ಟಿಗಳಿಂದ ಮರೆಮಾಡು';

  @override
  String get totalRepeats => 'ಒಟ್ಟು ಪುನರಾವರ್ತನೆಗಳು';

  @override
  String get other => 'ಇತರೆ';

  @override
  String get customLists => 'ಕಸ್ಟಮ್ ಪಟ್ಟಿಗಳು';

  @override
  String get activeDays => 'ಸಕ್ರಿಯ ದಿನಗಳು';

  @override
  String get longestStreak => 'ಅತಿ ಉದ್ದದ ಸ್ಟ್ರೀಕ್';

  @override
  String get currentStreak => 'ಈಗಿನ ಸ್ಟ್ರೀಕ್';

  @override
  String get tapOrHoverDay => 'ಒಂದು ದಿನದ ಮೇಲೆ ಟ್ಯಾಪ್ ಮಾಡು ಅಥವಾ ಹೋವರ್ ಮಾಡು';

  @override
  String get less => 'ಕಡಿಮೆ';

  @override
  String get more => 'ಹೆಚ್ಚು';

  @override
  String epIn(int ep, String time) {
    return 'ಎಪಿ $ep $time ನಲ್ಲಿ';
  }

  @override
  String get sectionLoading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ';

  @override
  String get querySize => 'ಕ್ವೆರಿ ಗಾತ್ರ';

  @override
  String get querySizeDesc =>
      'ಒಂದು ದೊಡ್ಡ ಕ್ವೆರಿ ಎಲ್ಲಾ ಸಾಲುಗಳನ್ನು (ಮತ್ತು ಪೂರ್ತಿ ಪ್ರೊಫೈಲ್ ಅನ್ನು) ಒಂದೇ ರಿಕ್ವೆಸ್ಟ್‌ನಲ್ಲಿ ಲೋಡ್ ಮಾಡುತ್ತದೆ. ಸ್ಪ್ಲಿಟ್ ಕ್ವೆರಿಗಳು ಪ್ರತಿ ಸಾಲಿಗೆ ಅಥವಾ ಪ್ರೊಫೈಲ್ ಭಾಗಕ್ಕೆ ಒಂದು ಚಿಕ್ಕ ರಿಕ್ವೆಸ್ಟ್ ಕಳಿಸುತ್ತವೆ: ಪ್ರತಿಯೊಂದೂ ವೇಗ, ಭಾಗಗಳು ಬಂದಂತೆ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get oneBig => 'ಒಂದು ದೊಡ್ಡದು';

  @override
  String get split => 'ಸ್ಪ್ಲಿಟ್';

  @override
  String get sectionSocial => 'ಸೋಷಿಯಲ್';

  @override
  String get systemNotifications => 'ಸಿಸ್ಟಂ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get feedLayout => 'ಫೀಡ್ ಲೇಔಟ್';

  @override
  String sectionsShown(int shown, int total) {
    return '$total ರಲ್ಲಿ $shown ತೋರಿಸಲಾಗಿದೆ — ಆರಿಸಲು ಮತ್ತು ಕ್ರಮ ಬದಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡು';
  }

  @override
  String labelSections(String label) {
    return '$label ವಿಭಾಗಗಳು';
  }

  @override
  String get accountOptions => 'ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get anilistAccountOptions => 'AniList ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get sectionPrivacy => 'ಗೌಪ್ಯತೆ';

  @override
  String get hidePrivateEntries => 'ಖಾಸಗಿ ಎಂಟ್ರಿಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList ನಲ್ಲಿ ಖಾಸಗಿ ಎಂದು ಗುರುತಿಸಿದ ಎಂಟ್ರಿಗಳನ್ನು ಫೀಡ್‌ನಿಂದ ಹೊರಗಿಡು';

  @override
  String get anilistExcludeList => 'ನಿಮ್ಮ ಲಿಸ್ಟ್ ಹೊರಗಿಡಿ';

  @override
  String get anilistExcludeListDesc =>
      'ನಿಮ್ಮ AniListನಲ್ಲಿ ಈಗಾಗಲೇ ಇರುವ ಟೈಟಲ್‌ಗಳನ್ನು ಅನಿಮೆ ಮತ್ತು ಮಂಗಾ ಪುಟಗಳಲ್ಲಿ ತೋರಿಸುವುದಿಲ್ಲ';

  @override
  String get anilistProfile => 'AniList ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromAnilist => 'AniList ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList ಸೆಟ್ಟಿಂಗ್ಸ್ ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ';

  @override
  String get sectionNames => 'ಹೆಸರುಗಳು';

  @override
  String get titleLanguage => 'ಶೀರ್ಷಿಕೆ ಭಾಷೆ';

  @override
  String get titleLanguageDesc =>
      'ಎಲ್ಲೆಡೆ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಹೇಗೆ ಬರೆಯಲಾಗುತ್ತದೆ, ಉದಾ. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'ಸ್ಟಾಫ್ ಮತ್ತು ಪಾತ್ರಗಳ ಹೆಸರುಗಳು';

  @override
  String get sectionLists => 'ಪಟ್ಟಿಗಳು';

  @override
  String get scoreFormat => 'ಸ್ಕೋರ್ ಫಾರ್ಮ್ಯಾಟ್';

  @override
  String get sortListsBy => 'ಪಟ್ಟಿಗಳನ್ನು ಹೀಗೆ ಸಾರ್ಟ್ ಮಾಡು';

  @override
  String labelCustomLists(String label) {
    return '$label ಕಸ್ಟಮ್ ಪಟ್ಟಿಗಳು';
  }

  @override
  String customListsCount(int count) {
    return '$count ಪಟ್ಟಿಗಳು — ಸೇರಿಸಲು ಅಥವಾ ತೆಗೆಯಲು ಟ್ಯಾಪ್ ಮಾಡು';
  }

  @override
  String get mergeActivities => 'ಚಟುವಟಿಕೆಗಳನ್ನು ವಿಲೀನಗೊಳಿಸು';

  @override
  String minutesCount(int count) {
    return '$count ನಿಮಿಷ';
  }

  @override
  String get timezone => 'ಟೈಮ್‌ಜೋನ್';

  @override
  String get notSet => 'ಹೊಂದಿಸಿಲ್ಲ';

  @override
  String get airingNotifications => 'ಪ್ರಸಾರ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get airingNotificationsDesc =>
      'ನೀನು ಫಾಲೋ ಮಾಡುವ ಶೋನ ಎಪಿಸೋಡ್ ಪ್ರಸಾರವಾದಾಗ ತಿಳಿಸು';

  @override
  String get displayAdultContent => 'ವಯಸ್ಕರ ವಿಷಯ ತೋರಿಸು';

  @override
  String get displayAdultContentDesc =>
      'ಬ್ರೌಸ್, ಹುಡುಕಾಟ ಮತ್ತು ಫೀಡ್‌ಗಳಲ್ಲಿ 18+ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಸೇರಿಸು';

  @override
  String get restrictMessages => 'ಸಂದೇಶಗಳನ್ನು ಫಾಲೋ ಮಾಡುವವರಿಗೆ ಮಾತ್ರ ಮಿತಿಗೊಳಿಸು';

  @override
  String get restrictMessagesDesc =>
      'ನೀನು ಫಾಲೋ ಮಾಡುವವರು ಮಾತ್ರ ನಿನಗೆ ಸಂದೇಶ ಕಳಿಸಬಹುದು';

  @override
  String get sectionServices => 'ಸರ್ವಿಸ್‌ಗಳು';

  @override
  String get novel => 'ನಾವೆಲ್';

  @override
  String labelService(String label) {
    return '$label ಸರ್ವಿಸ್';
  }

  @override
  String nameSettings(String name) {
    return '$name ಸೆಟ್ಟಿಂಗ್ಸ್';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಬ್ರಿಡ್ಜ್‌ನ ಆಯ್ಕೆಗಳು';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ಶುರುವಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get importLists => 'ಪಟ್ಟಿಗಳನ್ನು ಇಂಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi ಅಥವಾ Kotatsu ಬ್ಯಾಕಪ್‌ಗಳಿಂದ';

  @override
  String get exportLists => 'ಪಟ್ಟಿಗಳನ್ನು ಎಕ್ಸ್‌ಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon ಅಥವಾ Kotatsu ಬ್ಯಾಕಪ್‌ಗೆ';

  @override
  String get sectionBrowse => 'ಬ್ರೌಸ್';

  @override
  String get readingTab => 'ಓದುವ ಟ್ಯಾಬ್';

  @override
  String get readingTabDesc =>
      'ಮೂರನೇ ಟ್ಯಾಬ್ ಯಾವ ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳನ್ನು ತೋರಿಸುತ್ತದೆ';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'ಡೀಫಾಲ್ಟ್ ಫೀಡ್';

  @override
  String get defaultFeedDesc => 'ಸೋರ್ಸ್ ಯಾವ ಪಟ್ಟಿಯೊಂದಿಗೆ ತೆರೆಯುತ್ತದೆ';

  @override
  String noServiceSupports(String type) {
    return '$type ಅನ್ನು ಯಾವ ಸರ್ವಿಸ್ ಸಹ ಸಪೋರ್ಟ್ ಮಾಡುವುದಿಲ್ಲ';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed ರಲ್ಲಿ $loaded ಸೋರ್ಸ್‌ಗಳು ಲೋಡ್ ಆಗುತ್ತಿವೆ';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ಇಲ್ಲಿ $type ಅನ್ನು ಯಾವ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಸರ್ವಿಸ್ ಸಹ ಸಪೋರ್ಟ್ ಮಾಡುವುದಿಲ್ಲ.';
  }

  @override
  String get loadDataFrom => 'ಡೇಟಾ ಲೋಡ್ ಮಾಡುವ ಜಾಗ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ಇನ್ನೂ ಯಾವುದೇ $type ಸೋರ್ಸ್ ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name ಗಾಗಿ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ';
  }

  @override
  String get thisSource => 'ಈ ಸೋರ್ಸ್';

  @override
  String failedToAddRepository(String error) {
    return 'ರೆಪೊಸಿಟರಿ ಸೇರಿಸಲು ಆಗಲಿಲ್ಲ: $error';
  }

  @override
  String installedType(String type) {
    return 'ಇನ್‌ಸ್ಟಾಲ್ ಆದ $type';
  }

  @override
  String availableType(String type) {
    return 'ಲಭ್ಯವಿರುವ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ಇನ್‌ಸ್ಟಾಲ್ ಆದ $type ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳಿಲ್ಲ';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ಲಭ್ಯವಿರುವ $type ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳಿಲ್ಲ';
  }

  @override
  String get nothingToShowYet => 'ತೋರಿಸಲು ಇನ್ನೂ ಏನೂ ಇಲ್ಲ';

  @override
  String get addTitlesHint =>
      'ನಿನ್ನ ಪಟ್ಟಿಗೆ ಕೆಲವು ಶೀರ್ಷಿಕೆಗಳನ್ನು ಸೇರಿಸು, ಅವು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get couldntLoad => 'ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get progressStyleHint =>
      'ಪಿಲ್ ಮತ್ತು ಬಾರ್ ಪೋಸ್ಟರ್ ಮೇಲೆ ಕಾಣಿಸುತ್ತವೆ; ಹೊರಗೆ ಅದೇ ಎಣಿಕೆಯನ್ನು ಸಾದಾ ಪಠ್ಯವಾಗಿ ತೋರಿಸುತ್ತದೆ — ಒಂದನ್ನು ಆರಿಸು.';

  @override
  String get nixManagedUpdate =>
      'ಈ ಬಿಲ್ಡ್ ಅನ್ನು Nix ನಿರ್ವಹಿಸುತ್ತದೆ — ಇಲ್ಲಿಂದ ಅಪ್‌ಡೇಟ್ ಮಾಡುವ ಬದಲು ನಿನ್ನ flake ನಲ್ಲಿ \"nix flake update\" ಚಲಾಯಿಸಿ ಮತ್ತೆ ಬಿಲ್ಡ್ ಮಾಡು';

  @override
  String autoUpdateFailed(String error) {
    return 'ಆಟೋ ಅಪ್‌ಡೇಟ್ ವಿಫಲವಾಯ್ತು ($error) — ಬದಲಿಗೆ ಡೌನ್‌ಲೋಡ್ ಪುಟ ತೆರೆಯುತ್ತಿದ್ದೇನೆ';
  }

  @override
  String get unknownPreference => 'ಗೊತ್ತಿಲ್ಲದ ಪ್ರಾಶಸ್ತ್ಯ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ಬೆಂಬಲವಿಲ್ಲದ ಪ್ರಾಶಸ್ತ್ಯ ವಿಧ $type';
  }

  @override
  String get notYetReleased => 'ಇನ್ನೂ ಬಿಡುಗಡೆಯಾಗಿಲ್ಲ';

  @override
  String get notStarted => 'ಇನ್ನೂ ಶುರುವಾಗಿಲ್ಲ';

  @override
  String get country => 'ದೇಶ';

  @override
  String get sort => 'ಸಾರ್ಟ್';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon ಅಥವಾ Kotatsu ಬ್ಯಾಕಪ್ ಆರಿಸು';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi ಅಥವಾ Kotatsu ನಿಂದ ಲೈಬ್ರರಿ ತಂದುಕೊ. ಶೀರ್ಷಿಕೆಗಳು, ಕವರ್‌ಗಳು, ಪ್ರಗತಿ ಮತ್ತು ವರ್ಗಗಳು ಹಾಗೆಯೇ ಉಳಿಯುತ್ತವೆ.';

  @override
  String get chooseBackupFile => 'ಬ್ಯಾಕಪ್ ಫೈಲ್ ಆರಿಸು';

  @override
  String importAnimeCount(int count) {
    return '$count ಆನಿಮೆ ಇಂಪೋರ್ಟ್ ಮಾಡು';
  }

  @override
  String importMangaCount(int count) {
    return '$count ಮಂಗಾ ಇಂಪೋರ್ಟ್ ಮಾಡು';
  }

  @override
  String get mergeWithExisting => 'ಈಗಿರುವ ಪಟ್ಟಿಗಳೊಂದಿಗೆ ವಿಲೀನಗೊಳಿಸು';

  @override
  String get mergeWithExistingDesc =>
      'ನಿನ್ನ ಬಳಿ ಈಗಾಗಲೇ ಇರುವುದನ್ನು ಉಳಿಸುತ್ತದೆ; ಆಫ್ ಮಾಡಿದರೆ ಹೊಂದುವ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಬದಲಿಸುತ್ತದೆ';

  @override
  String get chooseAnother => 'ಬೇರೆ ಆರಿಸು';

  @override
  String get import => 'ಇಂಪೋರ್ಟ್';

  @override
  String animeCount(int count) {
    return '$count ಆನಿಮೆ';
  }

  @override
  String mangaCount(int count) {
    return '$count ಮಂಗಾ';
  }

  @override
  String get chooseSaveLocation => 'ಬ್ಯಾಕಪ್ ಎಲ್ಲಿ ಉಳಿಸಬೇಕು ಆರಿಸು';

  @override
  String savedPath(String path) {
    return '$path ಉಳಿಸಲಾಗಿದೆ';
  }

  @override
  String exportFailed(String error) {
    return 'ಎಕ್ಸ್‌ಪೋರ್ಟ್ ವಿಫಲ: $error';
  }

  @override
  String get nothingInLocalLists => 'ನಿನ್ನ ಲೋಕಲ್ ಪಟ್ಟಿಗಳಲ್ಲಿ ಇನ್ನೂ ಏನೂ ಇಲ್ಲ.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ನಿನ್ನ ಲೋಕಲ್ ಪಟ್ಟಿಗಳಿಂದ $anime ಆನಿಮೆ ಮತ್ತು $manga ಮಂಗಾ ಎಕ್ಸ್‌ಪೋರ್ಟ್ ಮಾಡುತ್ತದೆ. Kotatsu ಮಂಗಾ ಮಾತ್ರ ಸಪೋರ್ಟ್ ಮಾಡುತ್ತದೆ.';
  }

  @override
  String get saveToFolder => 'ಫೋಲ್ಡರ್‌ಗೆ ಉಳಿಸು';

  @override
  String get formatAnimeManga => 'ಆನಿಮೆ ಮತ್ತು ಮಂಗಾ · .tachibk';

  @override
  String get formatMangaTachibk => 'ಮಂಗಾ ಮಾತ್ರ · .tachibk';

  @override
  String get formatMangaZip => 'ಮಂಗಾ ಮಾತ್ರ · .zip';

  @override
  String get genres => 'ಜಾನರ್‌ಗಳು';

  @override
  String get relations => 'ಸಂಬಂಧಿತ';

  @override
  String get recommendations => 'ಶಿಫಾರಸುಗಳು';

  @override
  String get openings => 'ಓಪನಿಂಗ್‌ಗಳು';

  @override
  String get endings => 'ಎಂಡಿಂಗ್‌ಗಳು';

  @override
  String get background => 'ಹಿನ್ನೆಲೆ';

  @override
  String get links => 'ಲಿಂಕ್‌ಗಳು';

  @override
  String get rank => 'ರ‍್ಯಾಂಕ್';

  @override
  String get members => 'ಸದಸ್ಯರು';

  @override
  String get favorites => 'ಮೆಚ್ಚಿನವುಗಳು';

  @override
  String get episodes => 'ಎಪಿಸೋಡ್‌ಗಳು';

  @override
  String get chapters => 'ಅಧ್ಯಾಯಗಳು';

  @override
  String get volumes => 'ಸಂಪುಟಗಳು';

  @override
  String get format => 'ಫಾರ್ಮ್ಯಾಟ್';

  @override
  String get source => 'ಮೂಲ';

  @override
  String get duration => 'ಅವಧಿ';

  @override
  String minutesPerEpisode(int minutes) {
    return 'ಪ್ರತಿ ಎಪಿಗೆ $minutes ನಿಮಿಷ';
  }

  @override
  String get rating => 'ರೇಟಿಂಗ್';

  @override
  String get studio => 'ಸ್ಟುಡಿಯೋ';

  @override
  String get serialization => 'ಧಾರಾವಾಹಿ';

  @override
  String get season => 'ಸೀಸನ್';

  @override
  String get broadcast => 'ಪ್ರಸಾರ';

  @override
  String get aired => 'ಪ್ರಸಾರವಾದದ್ದು';

  @override
  String get published => 'ಪ್ರಕಟವಾದದ್ದು';

  @override
  String get popularity => 'ಜನಪ್ರಿಯತೆ';

  @override
  String get community => 'ಕಮ್ಯುನಿಟಿ';

  @override
  String get watching => 'ನೋಡುತ್ತಿರುವುದು';

  @override
  String get reading => 'ಓದುತ್ತಿರುವುದು';

  @override
  String get dropped => 'ಕೈಬಿಟ್ಟಿದ್ದು';

  @override
  String get planned => 'ಯೋಜಿಸಿದ್ದು';

  @override
  String get trailers => 'ಟ್ರೈಲರ್‌ಗಳು';

  @override
  String get ratings => 'ರೇಟಿಂಗ್‌ಗಳು';

  @override
  String get originalTitle => 'ಮೂಲ';

  @override
  String get titleLabel => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get votes => 'ವೋಟ್‌ಗಳು';

  @override
  String get watchedStat => 'ನೋಡಿದ್ದು';

  @override
  String get runtime => 'ರನ್‌ಟೈಮ್';

  @override
  String get director => 'ನಿರ್ದೇಶಕ';

  @override
  String get network => 'ನೆಟ್‌ವರ್ಕ್';

  @override
  String get certification => 'ಸರ್ಟಿಫಿಕೇಶನ್';

  @override
  String get airs => 'ಪ್ರಸಾರ';

  @override
  String get budget => 'ಬಜೆಟ್';

  @override
  String get revenue => 'ಆದಾಯ';

  @override
  String get released => 'ಬಿಡುಗಡೆಯಾದದ್ದು';

  @override
  String get tags => 'ಟ್ಯಾಗ್‌ಗಳು';

  @override
  String get author => 'ಲೇಖಕ';

  @override
  String get born => 'ಜನನ';

  @override
  String get website => 'ವೆಬ್‌ಸೈಟ್';

  @override
  String get established => 'ಸ್ಥಾಪನೆ';

  @override
  String get manhwa => 'ಮನ್ಹ್ವಾ';

  @override
  String get manhua => 'ಮನ್ಹುವಾ';

  @override
  String get novels => 'ನಾವೆಲ್‌ಗಳು';

  @override
  String get thisMonth => 'ಈ ತಿಂಗಳು';

  @override
  String get movies => 'ಸಿನಿಮಾಗಳು';

  @override
  String get shows => 'ಶೋಗಳು';

  @override
  String get rewatching => 'ಮತ್ತೆ ನೋಡುತ್ತಿರುವುದು';

  @override
  String get rereading => 'ಮತ್ತೆ ಓದುತ್ತಿರುವುದು';

  @override
  String get watchedStatus => 'ನೋಡಿದ್ದು';

  @override
  String get planning => 'ಯೋಜನೆಯಲ್ಲಿ';

  @override
  String get paused => 'ವಿರಾಮದಲ್ಲಿ';

  @override
  String get watch => 'ನೋಡು';

  @override
  String get read => 'ಓದು';

  @override
  String get finished => 'ಮುಗಿದಿದೆ';

  @override
  String get releasing => 'ಪ್ರಸಾರದಲ್ಲಿದೆ';

  @override
  String get cancelled => 'ರದ್ದಾಗಿದೆ';

  @override
  String get hiatus => 'ವಿರಾಮ';

  @override
  String get remove => 'ತೆಗೆ';

  @override
  String syncToService(String service) {
    return '$service ಗೆ ಸಿಂಕ್ ಮಾಡು';
  }

  @override
  String syncedToService(String service) {
    return '$service ಗೆ ಸಿಂಕ್ ಆಯ್ತು';
  }

  @override
  String get latestReleases => 'ಇತ್ತೀಚಿನ ಬಿಡುಗಡೆಗಳು';

  @override
  String get topRated => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್';

  @override
  String localSection(String title) {
    return '$title · ಲೋಕಲ್';
  }

  @override
  String get localEntryNote =>
      'ಈ ಶೀರ್ಷಿಕೆ ಈ ಡಿವೈಸ್‌ನ ಲೋಕಲ್ ಪಟ್ಟಿಯಲ್ಲಿ ಮಾತ್ರ ಇದೆ. ನಿನ್ನ ಖಾತೆ ಪಟ್ಟಿಯೊಂದಿಗೆ ಘರ್ಷಣೆ ಆಗಬಹುದಾದ್ದರಿಂದ ಇಲ್ಲಿ ಎಡಿಟ್ ಮಾಡುವುದನ್ನು ಆಫ್ ಮಾಡಲಾಗಿದೆ; ಆದರೂ ತೆಗೆಯಬಹುದು.';

  @override
  String get cardPresetPoster => 'ಪೋಸ್ಟರ್';

  @override
  String get cardPresetCard => 'ಕಾರ್ಡ್';

  @override
  String get cardPresetCozy => 'ಕೋಜಿ';

  @override
  String get sortTopRated => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್';

  @override
  String get sortMostPopular => 'ಅತಿ ಜನಪ್ರಿಯ';

  @override
  String get sortTrending => 'ಟ್ರೆಂಡಿಂಗ್';

  @override
  String get sortNewest => 'ಹೊಸದು';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'ಅತಿ ಹೆಚ್ಚು ಮೆಚ್ಚಿದ್ದು';

  @override
  String get anyCountry => 'ಯಾವುದೇ ದೇಶ';

  @override
  String get orderScore => 'ಸ್ಕೋರ್';

  @override
  String get orderTitle => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get orderLastUpdated => 'ಕೊನೆಯ ಅಪ್‌ಡೇಟ್';

  @override
  String get orderLastAdded => 'ಕೊನೆಯ ಸೇರ್ಪಡೆ';

  @override
  String get never => 'ಎಂದಿಗೂ ಇಲ್ಲ';

  @override
  String get always => 'ಯಾವಾಗಲೂ';

  @override
  String get scorePoint100 => '100 ಅಂಕ';

  @override
  String get scorePoint10Decimal => '10 ಅಂಕ ದಶಮಾಂಶ';

  @override
  String get scorePoint10 => '10 ಅಂಕ';

  @override
  String get scorePoint5 => '5 ನಕ್ಷತ್ರ';

  @override
  String get scorePoint3 => '3 ಅಂಕ ಸ್ಮೈಲಿ';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಗಂಟೆ',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನ',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಾರ',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ಮುಂದುವರಿಸು';

  @override
  String get resumeSourceMissing =>
      'ಮುಂದುವರಿಸಲು ಈ ಶೀರ್ಷಿಕೆಯ ಸೋರ್ಸ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get resumeRemove => 'ಮುಂದುವರಿಸುವುದರಿಂದ ತೆಗೆ';

  @override
  String resumeAt(String time) {
    return '$time ಉಳಿದಿದೆ';
  }

  @override
  String resumePage(int page, int total) {
    return '$total ರಲ್ಲಿ ಪುಟ $page';
  }

  @override
  String get continueWatching => 'ನೋಡುವುದನ್ನು ಮುಂದುವರಿಸು';

  @override
  String get continueReading => 'ಓದುವುದನ್ನು ಮುಂದುವರಿಸು';

  @override
  String get favouriteAnimeSection => 'ಮೆಚ್ಚಿನ ಆನಿಮೆ';

  @override
  String get favouriteMangaSection => 'ಮೆಚ್ಚಿನ ಮಂಗಾ';

  @override
  String get plannedAnime => 'ಯೋಜಿತ ಆನಿಮೆ';

  @override
  String get plannedManga => 'ಯೋಜಿತ ಮಂಗಾ';

  @override
  String get completedAnime => 'ಪೂರ್ಣಗೊಂಡ ಆನಿಮೆ';

  @override
  String get completedManga => 'ಪೂರ್ಣಗೊಂಡ ಮಂಗಾ';

  @override
  String get hiddenMedia => 'ಮರೆಮಾಡಿದ ಮೀಡಿಯಾ';

  @override
  String get recentUpdates => 'ಇತ್ತೀಚಿನ ಅಪ್‌ಡೇಟ್‌ಗಳು';

  @override
  String get trendingNow => 'ಈಗ ಟ್ರೆಂಡಿಂಗ್';

  @override
  String get popularThisSeason => 'ಈ ಸೀಸನ್‌ನ ಜನಪ್ರಿಯ';

  @override
  String get trendingMovies => 'ಟ್ರೆಂಡಿಂಗ್ ಸಿನಿಮಾಗಳು';

  @override
  String get topRatedSeries => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್ ಸೀರೀಸ್';

  @override
  String get mostFavouriteSeries => 'ಅತಿ ಹೆಚ್ಚು ಮೆಚ್ಚಿದ ಸೀರೀಸ್';

  @override
  String get popularAnime => 'ಜನಪ್ರಿಯ ಆನಿಮೆ';

  @override
  String get trendingManhwa => 'ಟ್ರೆಂಡಿಂಗ್ ಮನ್ಹ್ವಾ';

  @override
  String get trendingNovels => 'ಟ್ರೆಂಡಿಂಗ್ ನಾವೆಲ್‌ಗಳು';

  @override
  String get topRatedManga => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್ ಮಂಗಾ';

  @override
  String get mostFavouriteManga => 'ಅತಿ ಹೆಚ್ಚು ಮೆಚ್ಚಿದ ಮಂಗಾ';

  @override
  String get popularManga => 'ಜನಪ್ರಿಯ ಮಂಗಾ';

  @override
  String get topMovies => 'ಟಾಪ್ ಸಿನಿಮಾಗಳು';

  @override
  String get topOna => 'ಟಾಪ್ ONA';

  @override
  String get topOva => 'ಟಾಪ್ OVA';

  @override
  String get mostPopular => 'ಅತಿ ಜನಪ್ರಿಯ';

  @override
  String get mostFavourite => 'ಅತಿ ಹೆಚ್ಚು ಮೆಚ್ಚಿದ';

  @override
  String get upcoming => 'ಮುಂಬರುವ';

  @override
  String get topManga => 'ಟಾಪ್ ಮಂಗಾ';

  @override
  String get topManhwa => 'ಟಾಪ್ ಮನ್ಹ್ವಾ';

  @override
  String get topManhua => 'ಟಾಪ್ ಮನ್ಹುವಾ';

  @override
  String get topNovels => 'ಟಾಪ್ ನಾವೆಲ್‌ಗಳು';

  @override
  String get topOneShots => 'ಟಾಪ್ ಒನ್-ಶಾಟ್‌ಗಳು';

  @override
  String get trendingMoviesToday => 'ಇಂದಿನ ಟ್ರೆಂಡಿಂಗ್ ಸಿನಿಮಾಗಳು';

  @override
  String get trendingShowsToday => 'ಇಂದಿನ ಟ್ರೆಂಡಿಂಗ್ ಶೋಗಳು';

  @override
  String get trendingMoviesWeek => 'ಈ ವಾರದ ಟ್ರೆಂಡಿಂಗ್ ಸಿನಿಮಾಗಳು';

  @override
  String get trendingShowsWeek => 'ಈ ವಾರದ ಟ್ರೆಂಡಿಂಗ್ ಶೋಗಳು';

  @override
  String get mostWatchedMoviesMonth => 'ಈ ತಿಂಗಳು ಹೆಚ್ಚು ನೋಡಿದ ಸಿನಿಮಾಗಳು';

  @override
  String get mostWatchedShowsMonth => 'ಈ ತಿಂಗಳು ಹೆಚ್ಚು ನೋಡಿದ ಶೋಗಳು';

  @override
  String get trendingThisWeek => 'ಈ ವಾರ ಟ್ರೆಂಡಿಂಗ್';

  @override
  String get mostWatchedThisMonth => 'ಈ ತಿಂಗಳು ಹೆಚ್ಚು ನೋಡಿದ್ದು';

  @override
  String get repoLinksAdded => 'ರೆಪೊ ಲಿಂಕ್‌ಗಳು ಸೇರಿದವು!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList ನಿಂದ ಡೇಟಾ ತರುವಾಗ ದೋಷ.';

  @override
  String get navInfo => 'ಮಾಹಿತಿ';

  @override
  String get navComments => 'ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get playerNotAvailable => 'ಪ್ಲೇಯರ್ ಇನ್ನೂ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String deepLinkInitialError(String error) {
    return 'ಆರಂಭಿಕ ಡೀಪ್ ಲಿಂಕ್ ಪಡೆಯುವಾಗ ದೋಷ: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'ಲಿಂಕ್ ತೆರೆಯುವಾಗ ದೋಷ: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ಈ ಲಿಂಕ್ ತೆರೆಯಲು ಆಗುವುದಿಲ್ಲ: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'ಲಿಂಕ್ ತೆರೆಯುವಾಗ ದೋಷ: $error';
  }

  @override
  String get forReleasingTitles => 'ಈಗ ಪ್ರಸಾರವಾಗುತ್ತಿರುವ ಶೀರ್ಷಿಕೆಗಳಿಗೆ';

  @override
  String get progress => 'ಪ್ರಗತಿ';

  @override
  String get notes => 'ಟಿಪ್ಪಣಿಗಳು';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" ಸರ್ವಿಸ್ ಸಿಗಲಿಲ್ಲ';
  }

  @override
  String get glassEffectEnabled => 'ಗ್ಲಾಸ್ ಎಫೆಕ್ಟ್ ಆನ್ ಆಯ್ತು';

  @override
  String get glassEffectDisabled => 'ಗ್ಲಾಸ್ ಎಫೆಕ್ಟ್ ಆಫ್ ಆಯ್ತು';

  @override
  String get materialYouEnabled => 'Material You ಆನ್ ಆಯ್ತು';

  @override
  String get materialYouDisabled => 'Material You ಆಫ್ ಆಯ್ತು';

  @override
  String get darkModeEnabled => 'ಡಾರ್ಕ್ ಮೋಡ್ ಆನ್ ಆಯ್ತು';

  @override
  String get darkModeDisabled => 'ಡಾರ್ಕ್ ಮೋಡ್ ಆಫ್ ಆಯ್ತು';

  @override
  String get animeList => 'ಆನಿಮೆ ಪಟ್ಟಿ';

  @override
  String get mangaList => 'ಮಂಗಾ ಪಟ್ಟಿ';

  @override
  String ownerAnimeList(String owner) {
    return '$owner ಅವರ ಆನಿಮೆ ಪಟ್ಟಿ';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner ಅವರ ಮಂಗಾ ಪಟ್ಟಿ';
  }

  @override
  String get loadingList => 'ಪಟ್ಟಿ ಲೋಡ್ ಆಗುತ್ತಿದೆ';

  @override
  String get earlier => 'ಹಿಂದೆ';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ದಿನದ ಹಿಂದೆ',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಗಂಟೆಯ ಹಿಂದೆ',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ನಿಮಿಷದ ಹಿಂದೆ',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count ನಿಮಿ ಹಿಂದೆ';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ಗಂ ಹಿಂದೆ';
  }

  @override
  String daysAgoShort(int count) {
    return '$count ದಿ ಹಿಂದೆ';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count ವಾ ಹಿಂದೆ';
  }

  @override
  String get couldntLoadSource => 'ಈ ಸೋರ್ಸ್ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get followers => 'ಫಾಲೋವರ್‌ಗಳು';

  @override
  String couldntLoadTitle(String title) {
    return '$title ಲೋಡ್ ಆಗಲಿಲ್ಲ';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ಈ ಪ್ರೊಫೈಲ್ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get profile => 'ಪ್ರೊಫೈಲ್';

  @override
  String get feed => 'ಫೀಡ್';

  @override
  String get stats => 'ಅಂಕಿಅಂಶ';

  @override
  String get received => 'ಬಂದದ್ದು';

  @override
  String get sent => 'ಕಳಿಸಿದ್ದು';

  @override
  String get global => 'ಗ್ಲೋಬಲ್';

  @override
  String get couldntLoadPage => 'ಈ ಪುಟ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get couldntLoadAllDetails => 'ಎಲ್ಲಾ ವಿವರಗಳು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get series => 'ಸೀರೀಸ್';

  @override
  String get studios => 'ಸ್ಟುಡಿಯೋಗಳು';

  @override
  String get users => 'ಬಳಕೆದಾರರು';

  @override
  String repositoriesTitle(String type) {
    return '$type ರೆಪೊಸಿಟರಿಗಳು';
  }

  @override
  String get repositoryUrl => 'ರೆಪೊಸಿಟರಿ URL';

  @override
  String get downloadingRepository => 'ರೆಪೊಸಿಟರಿ ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get noRepositories => 'ಯಾವುದೇ ರೆಪೊಸಿಟರಿ ಸೇರಿಸಿಲ್ಲ';

  @override
  String repoExtensionsCount(String count) {
    return '$count ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳು';
  }

  @override
  String get searchExtensions => 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳನ್ನು ಹುಡುಕು...';

  @override
  String deletePluginTitle(String name) {
    return '$name ಅಳಿಸಬೇಕಾ?';
  }

  @override
  String get deletePluginMessage => 'ಈ ಪ್ಲಗಿನ್ ಅನ್ನು ನಿಜವಾಗಿಯೂ ಅಳಿಸಬೇಕಾ?';

  @override
  String pluginDeleted(String name) {
    return '$name ಅಳಿಸಲಾಗಿದೆ';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name ಕಾನ್ಫಿಗರ್ ಮಾಡಿದ ರೆಪೊದಲ್ಲಿ ಲಭ್ಯವಿಲ್ಲ';
  }

  @override
  String get pluginFetchFailed => 'ಪ್ಲಗಿನ್ ಮಾಹಿತಿ ತರಲು ಆಗಲಿಲ್ಲ';

  @override
  String installPluginTitle(String name) {
    return '$name ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';
  }

  @override
  String sizeLabel(String size) {
    return 'ಗಾತ್ರ: $size';
  }

  @override
  String get installedState => 'ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿದೆ';

  @override
  String get errorLabel => 'ದೋಷ:';

  @override
  String get stackTraceDetails => 'ವಿವರಗಳು (ಸ್ಟ್ಯಾಕ್ ಟ್ರೇಸ್)';

  @override
  String get shareLogFile => 'ಲಾಗ್ ಫೈಲ್ ಶೇರ್ ಮಾಡು';

  @override
  String get copyLogs => 'ಲಾಗ್‌ಗಳನ್ನು ಕಾಪಿ ಮಾಡು';

  @override
  String noListToEdit(String service) {
    return '$service ನಲ್ಲಿ ಎಡಿಟ್ ಮಾಡಲು ಪಟ್ಟಿ ಇಲ್ಲ';
  }

  @override
  String get couldNotReadFile => 'ಆ ಫೈಲ್ ಓದಲು ಆಗಲಿಲ್ಲ';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime ಆನಿಮೆ ಮತ್ತು $manga ಮಂಗಾ ಇಂಪೋರ್ಟ್ ಆದವು';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count ಈಗಾಗಲೇ ಇವೆ';
  }

  @override
  String get airingNow => 'ಈಗ ಪ್ರಸಾರದಲ್ಲಿ';

  @override
  String get topRatedMovies => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್ ಸಿನಿಮಾಗಳು';

  @override
  String get koreanDramas => 'ಕೊರಿಯನ್ ಡ್ರಾಮಾಗಳು';

  @override
  String get chineseDramas => 'ಚೈನೀಸ್ ಡ್ರಾಮಾಗಳು';

  @override
  String get japaneseDramas => 'ಜಪಾನೀಸ್ ಡ್ರಾಮಾಗಳು';

  @override
  String get thaiDramas => 'ಥಾಯ್ ಡ್ರಾಮಾಗಳು';

  @override
  String get turkishDramas => 'ಟರ್ಕಿಶ್ ಡ್ರಾಮಾಗಳು';

  @override
  String get miniSeries => 'ಮಿನಿ ಸೀರೀಸ್';

  @override
  String get topRatedShows => 'ಅತ್ಯುತ್ತಮ ರೇಟಿಂಗ್ ಶೋಗಳು';

  @override
  String get recommendedSection => 'ಶಿಫಾರಸು ಮಾಡಿದ್ದು';

  @override
  String get syncRow => 'ಪಟ್ಟಿಗಳನ್ನು ಸಿಂಕ್ ಮಾಡು';

  @override
  String get syncRowDesc =>
      'ಒಂದು ಸರ್ವಿಸ್‌ನ ಪಟ್ಟಿಯನ್ನು ನಿನ್ನ ಇತರ ಖಾತೆಗಳಿಗೆ ಪ್ರತಿಬಿಂಬಿಸು';

  @override
  String get syncTitle => 'ಸಿಂಕ್';

  @override
  String get syncMainService => 'ಮುಖ್ಯ ಸರ್ವಿಸ್';

  @override
  String get syncMainServiceDesc =>
      'ಅದರ ಪಟ್ಟಿಯೇ ಮೂಲ; ಸೈನ್ ಇನ್ ಆಗಿರುವ ಉಳಿದ ಎಲ್ಲಾ ಸರ್ವಿಸ್‌ಗಳು ಅದಕ್ಕೆ ಹೊಂದುವಂತೆ ಅಪ್‌ಡೇಟ್ ಆಗುತ್ತವೆ';

  @override
  String get syncAuto => 'ಆಟೋ ಸಿಂಕ್';

  @override
  String get syncAutoDesc =>
      'ಆ್ಯಪ್ ತೆರೆದಾಗ ಮತ್ತು ಪ್ರತಿ 30 ನಿಮಿಷಕ್ಕೆ ಬ್ಯಾಕ್‌ಗ್ರೌಂಡ್‌ನಲ್ಲಿ ತಂದು ಸಿಂಕ್ ಮಾಡು';

  @override
  String get syncAddMissing => 'ಕಾಣೆಯಾದ ಎಂಟ್ರಿಗಳನ್ನು ಸೇರಿಸು';

  @override
  String get syncAddMissingDesc =>
      'ಇನ್ನೊಂದು ಸರ್ವಿಸ್‌ನಲ್ಲಿ ಇನ್ನೂ ಇಲ್ಲದ ಎಂಟ್ರಿಗಳನ್ನೂ ಸೇರಿಸು';

  @override
  String get syncOnlyForward => 'ಮುಂದಿರುವ ಪ್ರಗತಿ ಉಳಿಸು';

  @override
  String get syncOnlyForwardDesc =>
      'ಈಗಾಗಲೇ ಮುಂದಿರುವ ಸರ್ವಿಸ್‌ನ ಪ್ರಗತಿಯನ್ನು ಕಡಿಮೆ ಮಾಡಬೇಡ';

  @override
  String get syncFetch => 'ತೆಗೆದುಕೊ';

  @override
  String get syncFetchAgain => 'ಮತ್ತೆ ತೆಗೆದುಕೊ';

  @override
  String get syncAll => 'ಎಲ್ಲವನ್ನೂ ಸಿಂಕ್ ಮಾಡು';

  @override
  String get syncStop => 'ನಿಲ್ಲಿಸು';

  @override
  String get syncResume => 'ಮುಂದುವರಿಸು';

  @override
  String get syncNothingToSync =>
      'ಈ ಸರ್ವಿಸ್ ಅನ್ನು ಈ ವಿಧಕ್ಕೆ ಸಿಂಕ್ ಮಾಡಲು ಆಗುವುದಿಲ್ಲ';

  @override
  String get syncNoTargets => 'ಸಿಂಕ್ ಮಾಡಲು ಇನ್ನೊಂದು ಸರ್ವಿಸ್‌ಗೆ ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String get syncLoadingMap => 'ID ಮ್ಯಾಪಿಂಗ್ ಲೋಡ್ ಆಗುತ್ತಿದೆ';

  @override
  String get syncComparing => 'ಪಟ್ಟಿಗಳನ್ನು ಹೋಲಿಸುತ್ತಿದೆ';

  @override
  String get syncIntro =>
      'ಮುಖ್ಯ ಸರ್ವಿಸ್ ಆರಿಸಿ ತೆಗೆದುಕೊ ಒತ್ತು. ಪ್ರತಿ ಸರ್ವಿಸ್‌ನಿಂದ ನಿನ್ನ ಪಟ್ಟಿಯನ್ನು ಒಮ್ಮೆ ಕೇಳಲಾಗುತ್ತದೆ, ನಂತರ ಮುಖ್ಯದೊಂದಿಗೆ ಹೋಲಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get syncStateSynced => 'ಸಿಂಕ್ ಆಗಿದೆ';

  @override
  String get syncStateOutdated => 'ಸಿಂಕ್ ಆಗಿಲ್ಲ';

  @override
  String get syncStateMissing => 'ಪಟ್ಟಿಯಲ್ಲಿ ಇಲ್ಲ';

  @override
  String get syncStateUnmapped => 'ಹೊಂದಾಣಿಕೆ ಇಲ್ಲ';

  @override
  String syncPaused(String time) {
    return 'ರೇಟ್ ಲಿಮಿಟ್‌ಗಾಗಿ ಕಾಯುತ್ತಿದೆ, $time ನಲ್ಲಿ ಮುಂದುವರಿಯುತ್ತದೆ';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$name ನಲ್ಲಿ ಮಾತ್ರ ಇರುವ $count, ಮುಟ್ಟದೆ ಬಿಟ್ಟಿದೆ';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total ರಲ್ಲಿ $done';
  }

  @override
  String get syncNothingHere => 'ತೋರಿಸಲು ಏನೂ ಇಲ್ಲ';

  @override
  String syncLimits(int used, int max, String window) {
    return 'ಈ $window ನಲ್ಲಿ $max ರಲ್ಲಿ $used ರಿಕ್ವೆಸ್ಟ್‌ಗಳು ಬಳಕೆಯಾದವು';
  }

  @override
  String get syncMinute => 'ನಿಮಿಷ';

  @override
  String get syncDay => 'ದಿನ';

  @override
  String get syncNotInList => 'ಇನ್ನೂ ಪಟ್ಟಿಯಲ್ಲಿ ಇಲ್ಲ';

  @override
  String get syncCleared => 'ಯೋಜನೆ ಕ್ಲಿಯರ್ ಆಯ್ತು';

  @override
  String get syncClear => 'ಕ್ಲಿಯರ್';

  @override
  String get syncOptions => 'ಆಯ್ಕೆಗಳು';

  @override
  String get syncShared => 'ಇನ್ನೊಂದು ಐಟಂನೊಂದಿಗೆ ಎಂಟ್ರಿ ಹಂಚಿಕೊಳ್ಳುತ್ತದೆ';

  @override
  String syncNotFound(String service) {
    return '$service ನಲ್ಲಿ ಸಿಗಲಿಲ್ಲ';
  }

  @override
  String syncService(String service, int count) {
    return '$service ಸಿಂಕ್ ಮಾಡು ($count)';
  }

  @override
  String get syncOnEdit => 'ಬದಲಾವಣೆಗಳನ್ನು ತಕ್ಷಣ ಸಿಂಕ್ ಮಾಡು';

  @override
  String get syncOnEditDesc =>
      'ಪ್ರತಿ ಪ್ರಗತಿ ಅಪ್‌ಡೇಟ್ ಮತ್ತು ಪಟ್ಟಿ ಎಡಿಟ್ ಅನ್ನು ಸೈನ್ ಇನ್ ಆಗಿರುವ ನಿನ್ನ ಇತರ ಸರ್ವಿಸ್‌ಗಳಿಗೆ ತಕ್ಷಣ ಕಳಿಸು';

  @override
  String syncPushed(String services) {
    return '$services ಗೆ ಸಿಂಕ್ ಆಯ್ತು';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'ರೇಟ್ ಲಿಮಿಟ್ ಆಗಿದೆ, ಸ್ವಲ್ಪ ಹೊತ್ತಿನ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸು';

  @override
  String get syncAhead => 'ಯಾವುದು ಮುಂದಿದೆಯೋ ಅದು';

  @override
  String get syncAheadDesc =>
      'ಎರಡೂ ಕಡೆ: ಪ್ರತಿ ಶೀರ್ಷಿಕೆಗೆ ಅತಿ ಮುಂದಿರುವ ಎಂಟ್ರಿ ಗೆಲ್ಲುತ್ತದೆ ಮತ್ತು ನಿನ್ನ ಇತರ ಎಲ್ಲಾ ಸರ್ವಿಸ್‌ಗಳಿಗೆ ಕಾಪಿ ಆಗುತ್ತದೆ';

  @override
  String syncAheadFrom(String service) {
    return '$service ನಿಂದ';
  }

  @override
  String get syncConfirm => 'ಸಿಂಕ್ ಮಾಡುವ ಮೊದಲು ಪರಿಶೀಲಿಸು';

  @override
  String get syncConfirmDesc =>
      'ಎಲ್ಲವನ್ನೂ ಸಿಂಕ್ ಮಾಡು ಏನು ಬದಲಿಸುತ್ತದೆ ಮತ್ತು ಎಷ್ಟು ರಿಕ್ವೆಸ್ಟ್‌ಗಳು ಬೇಕು ಎಂದು ತೋರಿಸು';

  @override
  String get syncPreviewTitle => 'ಸಿಂಕ್‌ಗೆ ಸಿದ್ಧ';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates ಅಪ್‌ಡೇಟ್‌ಗಳು, $adds ಸೇರಿಸಲು';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'ಸುಮಾರು $count ರಿಕ್ವೆಸ್ಟ್‌ಗಳು';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ಐಡಿಗಳಿಗೆ ಮೊದಲು ಲುಕಪ್ ಬೇಕು';
  }

  @override
  String get syncPreviewNothing => 'ಬದಲಿಸಲು ಏನೂ ಇಲ್ಲ';

  @override
  String get syncStart => 'ಶುರು';

  @override
  String get syncRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸು';

  @override
  String get syncSkip => 'ಈ ಐಟಂ ಬಿಟ್ಟುಬಿಡು';

  @override
  String get syncInclude => 'ಈ ಐಟಂ ಮತ್ತೆ ಸೇರಿಸು';

  @override
  String get syncSkippedLabel => 'ಬಿಟ್ಟಿದ್ದು';

  @override
  String get syncChanges => 'ವ್ಯತ್ಯಾಸಗಳು';

  @override
  String get syncChangeStatus => 'ಸ್ಥಿತಿ';

  @override
  String get syncChangeProgress => 'ಪ್ರಗತಿ';

  @override
  String get syncChangeScore => 'ಸ್ಕೋರ್';

  @override
  String get syncChangeDates => 'ದಿನಾಂಕಗಳು';

  @override
  String get syncChangeRepeat => 'ಮತ್ತೆ ನೋಡಿದ ಸಂಖ್ಯೆ';

  @override
  String get syncFailedReason => 'ಏಕೆ ವಿಫಲವಾಯ್ತು';

  @override
  String get syncSkippedHint =>
      'ಬಿಟ್ಟ ಐಟಂಗಳನ್ನು ಮತ್ತೆ ತೆಗೆದುಕೊಂಡರೂ ಮುಟ್ಟುವುದಿಲ್ಲ';

  @override
  String get commentsRules => 'ಕಾಮೆಂಟ್ ನಿಯಮಗಳು';

  @override
  String get commentsRulesBody =>
      'ಯಾವುದೇ ನಿಯಮ ಮುರಿದರೆ ನೀನು ಹೊರಗೆ\n\n1. ಜನಾಂಗೀಯ ದ್ವೇಷ, ತಾರತಮ್ಯ ಅಥವಾ ದ್ವೇಷ ಭಾಷಣ ಬೇಡ\n2. ಸ್ಪ್ಯಾಮ್ ಅಥವಾ ಸ್ವ-ಪ್ರಚಾರ ಬೇಡ\n3. NSFW ವಿಷಯ ಖಂಡಿತ ಬೇಡ\n4. ಇಂಗ್ಲಿಷ್ ಮಾತ್ರ, ಯಾವುದೇ ವಿನಾಯಿತಿ ಇಲ್ಲ\n5. ಸೋಗು ಹಾಕುವುದು, ಕಿರುಕುಳ ಅಥವಾ ನಿಂದನೆ ಬೇಡ\n6. ಕಾನೂನುಬಾಹಿರ ವಿಷಯ ಅಥವಾ ಯಾವುದೇ ಫ್ಯಾಂಡಮ್ ಬಗ್ಗೆ ತೀವ್ರ ಅಗೌರವ ಬೇಡ\n7. ರೆಪೊಸಿಟರಿ ಅಥವಾ ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳನ್ನು ಕೇಳಬೇಡ, ಶೇರ್ ಮಾಡಬೇಡ\n8. ಸ್ಪಾಯ್ಲರ್ ಟ್ಯಾಗ್ ಮತ್ತು ಎಚ್ಚರಿಕೆಯೊಂದಿಗೆ ಮಾತ್ರ ಸ್ಪಾಯ್ಲರ್\n9. ಅಪ್ರಾಪ್ತ ಪಾತ್ರಗಳ ಬಗ್ಗೆ ಲೈಂಗಿಕ ಅಥವಾ ಅನುಚಿತ ಕಾಮೆಂಟ್ ಬೇಡ\n10. ತಪ್ಪು ಅನಿಸಿದರೆ, ಪೋಸ್ಟ್ ಮಾಡಬೇಡ!';

  @override
  String get commentsRulesAccept => 'ಅರ್ಥವಾಯ್ತು';

  @override
  String get commentsSortNewest => 'ಹೊಸದು';

  @override
  String get commentsSortOldest => 'ಹಳೆಯದು';

  @override
  String get commentsSortHighest => 'ಹೆಚ್ಚು ರೇಟಿಂಗ್';

  @override
  String get commentsSortLowest => 'ಕಡಿಮೆ ರೇಟಿಂಗ್';

  @override
  String commentsEpisodeShort(int number) {
    return 'ಎಪಿ $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ಅಧ್ಯಾ $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'ಎಪಿಸೋಡ್ ಮೂಲಕ ಫಿಲ್ಟರ್';

  @override
  String get commentsFilterChapterTitle => 'ಅಧ್ಯಾಯದ ಮೂಲಕ ಫಿಲ್ಟರ್';

  @override
  String get commentsFilterTagTitle => 'ಎಪಿಸೋಡ್ ಅಥವಾ ಅಧ್ಯಾಯ ಸಂಖ್ಯೆ ಹಾಕು';

  @override
  String get commentsFilterHint => 'ಸಂಖ್ಯೆ';

  @override
  String get commentsFilterApply => 'ಫಿಲ್ಟರ್';

  @override
  String get commentsFilterClear => 'ಎಲ್ಲವನ್ನೂ ತೋರಿಸು';

  @override
  String get commentsPlaceholder => 'ಕಾಮೆಂಟ್ ಸೇರಿಸು…';

  @override
  String commentsReplyingTo(String name) {
    return '$name ಅವರಿಗೆ ಉತ್ತರಿಸುತ್ತಿದ್ದೀಯ';
  }

  @override
  String get commentsSend => 'ಕಳಿಸು';

  @override
  String get commentsTagButton => 'ಟ್ಯಾಗ್';

  @override
  String commentsTagTitle(String label) {
    return 'ಟ್ಯಾಗ್ $label (ಐಚ್ಛಿಕ)';
  }

  @override
  String get commentsTagEpisode => 'ಎಪಿಸೋಡ್';

  @override
  String get commentsTagChapter => 'ಅಧ್ಯಾಯ';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label ಸಂಖ್ಯೆ';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ಟ್ಯಾಗ್ ಒಟ್ಟು ($total) ಮೀರುವಂತಿಲ್ಲ';
  }

  @override
  String get commentsNoTag => 'ಟ್ಯಾಗ್ ಇಲ್ಲ';

  @override
  String get commentsSpoiler => 'ಸ್ಪಾಯ್ಲರ್';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF ಹುಡುಕು';

  @override
  String get commentsGifEmpty => 'ಯಾವುದೇ GIF ಸಿಗಲಿಲ್ಲ';

  @override
  String get commentsEmptyText => 'ಕಾಮೆಂಟ್ ಖಾಲಿ ಇರುವಂತಿಲ್ಲ';

  @override
  String get commentsBannedYou => 'ನಿನ್ನನ್ನು ಕಾಮೆಂಟ್ ಮಾಡುವುದರಿಂದ ನಿಷೇಧಿಸಲಾಗಿದೆ';

  @override
  String get commentsEdited => 'ಕಾಮೆಂಟ್ ಎಡಿಟ್ ಆಯ್ತು';

  @override
  String get commentsDeleted => 'ಕಾಮೆಂಟ್ ಅಳಿಸಲಾಯ್ತು';

  @override
  String get commentsDeletedPlaceholder => '[ಅಳಿಸಲಾಗಿದೆ]';

  @override
  String get commentsReported => 'ಕಾಮೆಂಟ್ ವರದಿ ಮಾಡಲಾಯ್ತು';

  @override
  String get commentsUserBanned => 'ಬಳಕೆದಾರನನ್ನು ನಿಷೇಧಿಸಲಾಯ್ತು';

  @override
  String get commentsReport => 'ವರದಿ ಮಾಡು';

  @override
  String get commentsReportAsk =>
      'ಈ ಕಾಮೆಂಟ್ ಅನ್ನು ಮಾಡರೇಟರ್‌ಗಳಿಗೆ ವರದಿ ಮಾಡಬೇಕಾ?';

  @override
  String get commentsDelete => 'ಅಳಿಸು';

  @override
  String get commentsDeleteAsk => 'ಈ ಕಾಮೆಂಟ್ ಎಲ್ಲರಿಗೂ ತೆಗೆಯಲ್ಪಡುತ್ತದೆ.';

  @override
  String get commentsBan => 'ನಿಷೇಧಿಸು';

  @override
  String get commentsBanAsk =>
      'ಈ ಬಳಕೆದಾರನನ್ನು ಕಾಮೆಂಟ್ ಮಾಡುವುದರಿಂದ ನಿಷೇಧಿಸಬೇಕಾ?';

  @override
  String get commentsCopy => 'ಕಾಪಿ';

  @override
  String get commentsViewReply => '1 ಉತ್ತರ ನೋಡು';

  @override
  String commentsViewReplies(int count) {
    return '$count ಉತ್ತರಗಳನ್ನು ನೋಡು';
  }

  @override
  String get commentsHideReplies => 'ಉತ್ತರಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get commentsLoadMore => 'ಇನ್ನಷ್ಟು ಕಾಮೆಂಟ್‌ಗಳನ್ನು ಲೋಡ್ ಮಾಡು';

  @override
  String get commentsEmpty => 'ಇನ್ನೂ ಕಾಮೆಂಟ್‌ಗಳಿಲ್ಲ. ಮೊದಲಿಗನಾಗು!';

  @override
  String get commentsEmptyFiltered => 'ಈ ಫಿಲ್ಟರ್‌ಗೆ ಕಾಮೆಂಟ್‌ಗಳಿಲ್ಲ';

  @override
  String get commentsSignIn =>
      'ಕಾಮೆಂಟ್‌ಗಳನ್ನು ಓದಲು ಮತ್ತು ಬರೆಯಲು AniList ಗೆ ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String get commentsSignInMessage =>
      'ಕಾಮೆಂಟ್‌ಗಳು ಎಲ್ಲಾ ಸರ್ವಿಸ್‌ಗಳ ನಡುವೆ ಹಂಚಿಕೆಯಾಗುತ್ತವೆ ಮತ್ತು ನಿನ್ನ AniList ಖಾತೆಯನ್ನು ಬಳಸುತ್ತವೆ.';

  @override
  String get commentsUnavailable => 'ಈ ಶೀರ್ಷಿಕೆಗೆ ಕಾಮೆಂಟ್‌ಗಳು ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get commentsUnavailableMessage =>
      'ಇದನ್ನು AniList ಎಂಟ್ರಿಗೆ ಹೊಂದಿಸಲು ಆಗಲಿಲ್ಲ.';

  @override
  String get commentsDisabled => 'ಕಾಮೆಂಟ್‌ಗಳು ಆಫ್ ಆಗಿವೆ';

  @override
  String get commentsDisabledMessage =>
      'ಸೆಟ್ಟಿಂಗ್ಸ್ › ಸಾಮಾನ್ಯ ನಲ್ಲಿ ಮತ್ತೆ ಆನ್ ಮಾಡಬಹುದು.';

  @override
  String get commentsOffline => 'ಕಾಮೆಂಟ್‌ಗಳು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get commentsSingleTitle => 'ಒಂದು ಕಾಮೆಂಟ್ ತೋರಿಸುತ್ತಿದೆ';

  @override
  String get commentsShowAll => 'ಎಲ್ಲಾ ಕಾಮೆಂಟ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get commentsSettingsHeader => 'ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get commentsSettingEnabled => 'ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get commentsSettingEnabledDesc =>
      'ಶೀರ್ಷಿಕೆಗಳಲ್ಲಿ ಕಾಮೆಂಟ್ಸ್ ಟ್ಯಾಬ್ ತೋರಿಸು ಮತ್ತು ನಿನ್ನ AniList ಖಾತೆಯಿಂದ ಕಾಮೆಂಟ್ ಸರ್ವರ್‌ಗೆ ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String get commentsSettingAlerts => 'ಉತ್ತರ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get commentsSettingAlertsDesc =>
      'ಯಾರಾದರೂ ನನ್ನ ಕಾಮೆಂಟ್‌ಗಳಿಗೆ ಉತ್ತರಿಸಿದಾಗ ತಿಳಿಸು';

  @override
  String get commentsNoticeReplyTitle => 'ಕಾಮೆಂಟ್‌ಗೆ ಹೊಸ ಉತ್ತರ';

  @override
  String commentsNoticeReply(String name) {
    return '$name ನಿನ್ನ ಕಾಮೆಂಟ್‌ಗೆ ಉತ್ತರಿಸಿದ್ದಾರೆ';
  }

  @override
  String get commentsNoticeWarningTitle => 'ನಿನಗೆ ಎಚ್ಚರಿಕೆ ಬಂದಿದೆ';

  @override
  String get commentsNoticeWarning =>
      'ನಿನ್ನ ಕಾಮೆಂಟ್‌ಗಳಲ್ಲಿ ಸ್ವಲ್ಪ ಹೆಚ್ಚು ಯೋಚನೆ ಮಾಡು';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu ನಿಂದ ಅಪ್‌ಡೇಟ್';

  @override
  String get barcodeTitle => 'ಬಾರ್‌ಕೋಡ್ ಸ್ಕ್ಯಾನ್ ಮಾಡು';

  @override
  String get barcodeTooltip => 'ಬಾರ್‌ಕೋಡ್‌ನಿಂದ ಮಂಗಾ ಅಥವಾ ನಾವೆಲ್ ಹುಡುಕು';

  @override
  String get barcodeIntro =>
      'ಸಂಪುಟದ ಹಿಂಭಾಗದ ಬಾರ್‌ಕೋಡ್ ಕಡೆ ಕ್ಯಾಮೆರಾ ಹಿಡಿ, ಅಥವಾ ISBN ಟೈಪ್ ಮಾಡು.';

  @override
  String get barcodeIntroManual =>
      'ಸಂಪುಟದ ಹಿಂಭಾಗದ ಬಾರ್‌ಕೋಡ್ ಮೇಲೆ ಮುದ್ರಿಸಿರುವ ISBN ಟೈಪ್ ಮಾಡು.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'ಇದು ಮಾನ್ಯ ISBN ಅಲ್ಲ';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn ಗೆ ಯಾವುದೇ ಪುಸ್ತಕ ಸಿಗಲಿಲ್ಲ';
  }

  @override
  String get barcodeCameraDenied =>
      'ಕ್ಯಾಮೆರಾ ಲಭ್ಯವಿಲ್ಲ. ಕ್ಯಾಮೆರಾ ಪ್ರವೇಶ ಅನುಮತಿಸು ಅಥವಾ ISBN ಟೈಪ್ ಮಾಡು.';

  @override
  String get themesTitle => 'ಓಪನಿಂಗ್ & ಎಂಡಿಂಗ್';

  @override
  String get themesPlayVideo => 'ವಿಡಿಯೋ ಪ್ಲೇ ಮಾಡು';

  @override
  String get themesPlayAudio => 'ಆಡಿಯೋ ಮಾತ್ರ ಪ್ಲೇ ಮಾಡು';

  @override
  String get themesOpenSite => 'AnimeThemes ನಲ್ಲಿ ತೆರೆ';

  @override
  String get themesCredit => 'AnimeThemes ನಿಂದ ಥೀಮ್‌ಗಳು';

  @override
  String get themesVersions => 'ವರ್ಶನ್‌ಗಳು';

  @override
  String get sauceTitle => 'ಮೂಲ ಹುಡುಕು';

  @override
  String get sauceIntro =>
      'ಮಂಗಾ ಪುಟ ಅಥವಾ ಕಲಾಕೃತಿ ಅಪ್‌ಲೋಡ್ ಮಾಡು, ಅಥವಾ ಅದರ ಲಿಂಕ್ ಪೇಸ್ಟ್ ಮಾಡು, ಅದು ಎಲ್ಲಿಂದ ಬಂದಿದೆ ಎಂದು ಹುಡುಕಲು.';

  @override
  String get sauceKeyTitle => 'SauceNAO API ಕೀ';

  @override
  String get sauceKeyHint => 'ಐಚ್ಛಿಕ, ದೈನಂದಿನ ಹುಡುಕಾಟ ಮಿತಿ ಹೆಚ್ಚಿಸುತ್ತದೆ';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php ನಲ್ಲಿ ಉಚಿತ ಕೀ ಪಡೆ';

  @override
  String get sauceOpen => 'ಮೂಲ ತೆರೆ';

  @override
  String get sauceCredit => 'SauceNAO ಮೂಲಕ ಚಿತ್ರ ಹುಡುಕಾಟ';

  @override
  String get sauceEmpty => 'ಹೊಂದಾಣಿಕೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String get sauceTooltip => 'ಮಂಗಾ ಪುಟ ಅಥವಾ ಕಲಾಕೃತಿಯ ಮೂಲ ಹುಡುಕು';

  @override
  String get trendzTitle => 'ಆನಿಮೆ ಚಾರ್ಟ್‌ಗಳು';

  @override
  String get trendzAnime => 'ಆನಿಮೆ';

  @override
  String get trendzFemale => 'ಹೆಣ್ಣು ಪಾತ್ರಗಳು';

  @override
  String get trendzMale => 'ಗಂಡು ಪಾತ್ರಗಳು';

  @override
  String get trendzCouple => 'ಜೋಡಿಗಳು';

  @override
  String get trendzCredit => 'AniTrendz ನ ವಾರದ ಚಾರ್ಟ್‌ಗಳು';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzEmpty => 'ಚಾರ್ಟ್ ಖಾಲಿ ಇದೆ';

  @override
  String get shareCard => 'ಕಾರ್ಡ್ ಶೇರ್ ಮಾಡು';

  @override
  String get shareCardList => 'ಪಟ್ಟಿ ಕಾರ್ಡ್ ಶೇರ್ ಮಾಡು';

  @override
  String get shareCardSaved => 'ಕಾರ್ಡ್ ಉಳಿಯಿತು';

  @override
  String get shareCardFailed => 'ಕಾರ್ಡ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ';

  @override
  String get shareCardListEmpty => 'ನಿನ್ನ ಪಟ್ಟಿಯಲ್ಲಿ ಇನ್ನೂ ಶೇರ್ ಮಾಡಲು ಏನೂ ಇಲ್ಲ';

  @override
  String get shareCardTop => 'ನನ್ನ ಟಾಪ್ ಆಯ್ಕೆಗಳು';

  @override
  String themesEpisodes(String eps) {
    return 'ಎಪಿಸೋಡ್‌ಗಳು $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ಹೊಂದಾಣಿಕೆ';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'ವಾರ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count ವೋಟ್‌ಗಳು';
  }

  @override
  String trendzPeak(String rank) {
    return 'ಗರಿಷ್ಠ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'ಟಾಪ್ ಟೆನ್‌ನಲ್ಲಿ $count ವಾರಗಳು';
  }

  @override
  String get imageSearchTitle => 'ಚಿತ್ರದಿಂದ ಹುಡುಕು';

  @override
  String get imageSearchTooltip => 'ಸ್ಕ್ರೀನ್‌ಶಾಟ್‌ನಿಂದ ಆನಿಮೆ ಹುಡುಕು';

  @override
  String get imageSearchIntro =>
      'ಒಂದು ಸ್ಕ್ರೀನ್‌ಶಾಟ್ ಆರಿಸು ಅಥವಾ ಚಿತ್ರದ ಲಿಂಕ್ ಪೇಸ್ಟ್ ಮಾಡು, trace.moe ಅದು ಯಾವ ಎಪಿಸೋಡ್ ಮತ್ತು ಯಾವ ಕ್ಷಣದ್ದು ಎಂದು ಹುಡುಕುತ್ತದೆ.';

  @override
  String get imageSearchPick => 'ಚಿತ್ರ ಆರಿಸು';

  @override
  String get imageSearchLinkHint => 'ಚಿತ್ರದ ಲಿಂಕ್ ಪೇಸ್ಟ್ ಮಾಡು';

  @override
  String get imageSearchGo => 'ಹುಡುಕು';

  @override
  String get imageSearchEmpty => 'ಹೊಂದಾಣಿಕೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'ಎಪಿಸೋಡ್ $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time ನಲ್ಲಿ';
  }

  @override
  String get imageSearchPreview => 'ಪೂರ್ವವೀಕ್ಷಣೆ ಕ್ಲಿಪ್';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ಹೊಂದಾಣಿಕೆ';
  }

  @override
  String get imageSearchCredit => 'trace.moe ನಿಂದ ಚಾಲಿತ';

  @override
  String get imageSearchOpenFailed => 'ಈ ಶೀರ್ಷಿಕೆ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ';

  @override
  String get groups => 'ಗುಂಪುಗಳು';

  @override
  String get groupsYours => 'ನಿನ್ನ ಗುಂಪುಗಳು';

  @override
  String get groupsPopular => 'ಜನಪ್ರಿಯ';

  @override
  String get groupsNew => 'ಹೊಸ';

  @override
  String get groupsFeatured => 'ವಿಶೇಷ';

  @override
  String get groupsSearch => 'ಗುಂಪುಗಳನ್ನು ಹುಡುಕು';

  @override
  String get groupsAll => 'ಎಲ್ಲಾ';

  @override
  String get groupsEmpty => 'ಯಾವುದೇ ಗುಂಪು ಸಿಗಲಿಲ್ಲ';

  @override
  String get groupsEmptyYours => 'ನೀನು ಇನ್ನೂ ಯಾವ ಗುಂಪಿಗೂ ಸೇರಿಲ್ಲ';

  @override
  String get groupsSignIn => 'ನೀನು ಸೇರಿದ ಗುಂಪುಗಳನ್ನು ನೋಡಲು ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸದಸ್ಯರು',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ಸೇರು';

  @override
  String get groupsJoined => 'ಸೇರಿದ್ದೀಯ';

  @override
  String get groupsLeave => 'ಗುಂಪು ಬಿಡು';

  @override
  String get groupsLeaveAsk =>
      'ನಿನ್ನ ಫೀಡ್‌ನಲ್ಲಿ ಈ ಗುಂಪಿನ ಪೋಸ್ಟ್‌ಗಳು ಇನ್ನು ಕಾಣಿಸುವುದಿಲ್ಲ.';

  @override
  String get groupsJoinFailed =>
      'ಈ ಗುಂಪಿಗೆ ಸೇರಲು ಆಗಲಿಲ್ಲ, ಇದು ಆಹ್ವಾನ ಮಾತ್ರ ಇರಬಹುದು';

  @override
  String get groupsLeaveFailed => 'ಈ ಗುಂಪನ್ನು ಬಿಡಲು ಆಗಲಿಲ್ಲ';

  @override
  String get groupsPosts => 'ಪೋಸ್ಟ್‌ಗಳು';

  @override
  String get groupsMembersTab => 'ಸದಸ್ಯರು';

  @override
  String get groupsAbout => 'ಬಗ್ಗೆ';

  @override
  String get groupsRules => 'ನಿಯಮಗಳು';

  @override
  String get groupsPrivacyOpen => 'ಮುಕ್ತ';

  @override
  String get groupsPrivacyRestricted => 'ನಿರ್ಬಂಧಿತ';

  @override
  String get groupsPrivacyClosed => 'ಮುಚ್ಚಿದ';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'ಅಡ್ಮಿನ್';

  @override
  String get groupsRoleMod => 'ಮಾಡ್';

  @override
  String get groupsCouldntLoad => 'ಈ ಗುಂಪು ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get groupsNewPost => 'ಗುಂಪಿಗೆ ಪೋಸ್ಟ್ ಮಾಡು';

  @override
  String get groupsPostHint => 'ಗುಂಪಿನೊಂದಿಗೆ ಏನಾದರೂ ಶೇರ್ ಮಾಡು';

  @override
  String get groupsOpenInBrowser => 'ಬ್ರೌಸರ್‌ನಲ್ಲಿ ತೆರೆ';

  @override
  String get groupsCategory => 'ವರ್ಗ';

  @override
  String get groupsLanguage => 'ಭಾಷೆ';

  @override
  String get groupsCreated => 'ರಚಿಸಿದ್ದು';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ನಾಯಕರು',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'ಗೌಪ್ಯತೆ';

  @override
  String get notificationsAll => 'ಎಲ್ಲಾ';

  @override
  String get notificationsAiring => 'ಪ್ರಸಾರದಲ್ಲಿ';

  @override
  String get notificationsMedia => 'ಹೊಸ ಶೀರ್ಷಿಕೆಗಳು';

  @override
  String get notificationsReplies => 'ಉತ್ತರಗಳು';

  @override
  String get notificationsMentions => 'ಉಲ್ಲೇಖಗಳು';

  @override
  String get notificationsMessages => 'ಸಂದೇಶಗಳು';

  @override
  String get notificationsLikes => 'ಲೈಕ್‌ಗಳು';

  @override
  String get notificationsFollows => 'ಫಾಲೋಗಳು';

  @override
  String get notificationsNoServices =>
      'ಸೈನ್ ಇನ್ ಆಗಿರುವ ಯಾವ ಸರ್ವಿಸ್‌ಗೂ ನೋಟಿಫಿಕೇಶನ್‌ಗಳಿಲ್ಲ';

  @override
  String get notificationsNoServicesMessage =>
      'ನೋಟಿಫಿಕೇಶನ್ ಕಳಿಸುವ ಸರ್ವಿಸ್‌ಗೆ ಸೈನ್ ಇನ್ ಆಗು, ಅವು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get notificationsEmptyKind => 'ಈ ವರ್ಗದಲ್ಲಿ ಇನ್ನೂ ಏನೂ ಇಲ್ಲ';

  @override
  String get notificationsCommentsEmpty => 'ಕಾಮೆಂಟ್ ನೋಟಿಫಿಕೇಶನ್‌ಗಳಿಲ್ಲ';

  @override
  String get notificationsCommentsEmptyMessage =>
      'ನಿನ್ನ ಕಾಮೆಂಟ್‌ಗಳಿಗೆ ಬಂದ ಉತ್ತರಗಳು ಮತ್ತು Dantotsu ನ ಘೋಷಣೆಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get notificationsSettings => 'ನೋಟಿಫಿಕೇಶನ್ ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get notificationsPollTitle => 'ಹೊಸ ನೋಟಿಫಿಕೇಶನ್‌ಗಳನ್ನು ಚೆಕ್ ಮಾಡು';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ಆ್ಯಪ್ ತೆರೆದಿರುವಾಗ ಪ್ರತಿ $minutes ನಿಮಿಷಕ್ಕೆ';
  }

  @override
  String get notificationsNotifyAbout => 'ಇವುಗಳ ಬಗ್ಗೆ ತಿಳಿಸು';

  @override
  String get notificationsCommentsHeader => 'ಕಾಮೆಂಟ್ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ಆ್ಯಪ್ ಚಾಲನೆಯಲ್ಲಿರುವಾಗ ಓದದ ಪ್ರತಿ $service ನೋಟಿಫಿಕೇಶನ್‌ಗೆ ಸಿಸ್ಟಂ ನೋಟಿಫಿಕೇಶನ್ ತೋರಿಸು.';
  }

  @override
  String get notificationsTestSent => 'ಟೆಸ್ಟ್ ನೋಟಿಫಿಕೇಶನ್ ಕಳಿಸಲಾಯ್ತು';

  @override
  String get notificationsTestDenied =>
      'Dartotsu ಗೆ ನೋಟಿಫಿಕೇಶನ್‌ಗಳಿಗೆ ಅನುಮತಿ ಇಲ್ಲ. ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್ಸ್‌ನಲ್ಲಿ ಆನ್ ಮಾಡು.';

  @override
  String get notificationsTestHint => 'ಟೆಸ್ಟ್ ನೋಟಿಫಿಕೇಶನ್ ಕಳಿಸಲು ಒತ್ತಿ ಹಿಡಿ';

  @override
  String get notificationsTestSample => 'ಇದು ಒಂದು ಟೆಸ್ಟ್ ನೋಟಿಫಿಕೇಶನ್';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media ನಲ್ಲಿ ನಿನ್ನ ಕಾಮೆಂಟ್‌ಗೆ ಉತ್ತರಿಸಿದ್ದಾರೆ';
  }

  @override
  String get imageSearchNotLink => 'ಇದು ಲಿಂಕ್‌ನಂತೆ ಕಾಣುತ್ತಿಲ್ಲ';

  @override
  String get imageSearchQuota => 'ಹುಡುಕಾಟ ಕೋಟಾ ಮೀರಿದೆ';

  @override
  String get imageSearchBusy =>
      'ತುಂಬಾ ರಿಕ್ವೆಸ್ಟ್‌ಗಳು, ಸ್ವಲ್ಪ ಹೊತ್ತಿನ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸು';

  @override
  String imageSearchFailed(int code) {
    return 'ಹುಡುಕಾಟ ವಿಫಲ ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count ಹೊಸ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';
  }

  @override
  String get reactionsTitle => 'ರಿಯಾಕ್ಷನ್‌ಗಳು';

  @override
  String get reactionsNeedEntry =>
      'ರಿಯಾಕ್ಟ್ ಮಾಡುವ ಮೊದಲು ಈ ಶೀರ್ಷಿಕೆಯನ್ನು ನಿನ್ನ ಪಟ್ಟಿಗೆ ಸೇರಿಸು';

  @override
  String get reactionsAdd => 'ರಿಯಾಕ್ಷನ್ ಸೇರಿಸು';

  @override
  String get reactionsHint => 'ನಿನಗೆ ಹೇಗನಿಸಿತು? (ಚಿಕ್ಕದಾಗಿ, ಸ್ಪಾಯ್ಲರ್ ಇಲ್ಲದೆ)';

  @override
  String get reactionsPost => 'ಪೋಸ್ಟ್';

  @override
  String get reactionsFailed => 'ರಿಯಾಕ್ಷನ್ ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ';

  @override
  String get settingsWatch => 'ನೋಡು & ಓದು';

  @override
  String get settingsWatchDesc =>
      'ಎಪಿಸೋಡ್ ಪಟ್ಟಿಗಳು, ಸೋರ್ಸ್ ಹೊಂದಾಣಿಕೆ ಮತ್ತು ಎಪಿಸೋಡ್ ವಿವರಗಳು';

  @override
  String get watchSettingsLayout => 'ಎಪಿಸೋಡ್ ಪಟ್ಟಿ';

  @override
  String get watchSettingsSources => 'ಸೋರ್ಸ್‌ಗಳು';

  @override
  String get watchSettingsMetadata => 'ಎಪಿಸೋಡ್ ವಿವರಗಳು';

  @override
  String get watchLayout => 'ಲೇಔಟ್';

  @override
  String get watchListView => 'ಪಟ್ಟಿ';

  @override
  String get watchGridView => 'ಗ್ರಿಡ್';

  @override
  String get watchCompactView => 'ಕಾಂಪ್ಯಾಕ್ಟ್';

  @override
  String get watchDefaultLayoutDesc =>
      'ಒಂದು ಶೀರ್ಷಿಕೆಗೆ ಬದಲಿಸುವವರೆಗೆ ಎಪಿಸೋಡ್ ಮತ್ತು ಅಧ್ಯಾಯಗಳನ್ನು ಹೇಗೆ ಜೋಡಿಸಬೇಕು';

  @override
  String get watchChunkSize => 'ರೇಂಜ್ ಗಾತ್ರ';

  @override
  String get watchChunkSizeDesc =>
      'ಪ್ರತಿ ರೇಂಜ್ ಟ್ಯಾಬ್‌ನಲ್ಲಿ ಎಷ್ಟು ಎಪಿಸೋಡ್ ಅಥವಾ ಅಧ್ಯಾಯಗಳು ಇರಬೇಕು';

  @override
  String get watchShowDescription => 'ವಿವರಣೆಗಳನ್ನು ತೋರಿಸು';

  @override
  String get watchShowDescriptionDesc =>
      'ಪಟ್ಟಿ ಲೇಔಟ್‌ನಲ್ಲಿ ಪ್ರತಿ ಶೀರ್ಷಿಕೆಯ ಕೆಳಗೆ ಎಪಿಸೋಡ್ ಸಾರಾಂಶ ತೋರಿಸು';

  @override
  String get watchShowFiller => 'ಫಿಲ್ಲರ್ ಎಪಿಸೋಡ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get watchShowFillerDesc =>
      'ಫಿಲ್ಲರ್ ಎಂದು ಗುರುತಿಸಿದ ಎಪಿಸೋಡ್‌ಗಳನ್ನು ಮರೆಮಾಡಲು ಆಫ್ ಮಾಡು';

  @override
  String get watchBlurUnwatched => 'ಸ್ಪಾಯ್ಲರ್ ಥಂಬ್‌ನೇಲ್‌ಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get watchBlurUnwatchedDesc =>
      'ನೀನು ಇನ್ನೂ ನೋಡದ ಎಪಿಸೋಡ್‌ಗಳ ಥಂಬ್‌ನೇಲ್ ಮಸುಕಾಗಿಸು';

  @override
  String get watchResumeShelf => 'ರೆಸ್ಯೂಮ್ ಶೆಲ್ಫ್';

  @override
  String get watchResumeShelfDesc => 'ಹೋಮ್‌ನಲ್ಲಿ ರೆಸ್ಯೂಮ್ ಸಾಲು ತೋರಿಸು';

  @override
  String get watchMarkOnLongPress => 'ಒತ್ತಿ ಹಿಡಿದರೆ ಪ್ರಗತಿ ಗುರುತಾಗುತ್ತದೆ';

  @override
  String get watchMarkOnLongPressDesc =>
      'ಎಪಿಸೋಡ್ ಅಥವಾ ಅಧ್ಯಾಯವನ್ನು ನೋಡಿದ್ದು ಅಥವಾ ನೋಡದ್ದು ಎಂದು ಗುರುತಿಸಲು ಒತ್ತಿ ಹಿಡಿ';

  @override
  String get watchMatching => 'ಸೋರ್ಸ್ ಹೊಂದಾಣಿಕೆ';

  @override
  String get watchMatchingDesc =>
      '\"ಹತ್ತಿರದ್ದು\" ಅತ್ಯುತ್ತಮ ಹುಡುಕಾಟ ಫಲಿತಾಂಶ ತೆಗೆದುಕೊಳ್ಳುತ್ತದೆ. \"ನಿಖರ ಮಾತ್ರ\" ಬಹುತೇಕ ಒಂದೇ ಶೀರ್ಷಿಕೆಯನ್ನು ಮಾತ್ರ ಒಪ್ಪುತ್ತದೆ, ಉಳಿದದ್ದನ್ನು ನೀನು ಆರಿಸಬೇಕು.';

  @override
  String get watchMatchClosest => 'ಹತ್ತಿರದ ಹೊಂದಾಣಿಕೆ';

  @override
  String get watchMatchExact => 'ನಿಖರ ಹೊಂದಾಣಿಕೆ ಮಾತ್ರ';

  @override
  String get watchMetadataDesc =>
      'ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ಸಾರಾಂಶಗಳು, ಥಂಬ್‌ನೇಲ್‌ಗಳು, ಪ್ರಸಾರ ದಿನಾಂಕಗಳು ಮತ್ತು ಫಿಲ್ಲರ್ ಗುರುತುಗಳು ಎಲ್ಲಿಂದ ಬರುತ್ತವೆ. ಆದ್ಯತೆ ಹೊಂದಿಸಲು ಎಳೆ; ಮೌಲ್ಯ ಇರುವ ಮೊದಲ ಸೋರ್ಸ್ ಗೆಲ್ಲುತ್ತದೆ.';

  @override
  String get watchMetaAniZipDesc =>
      'ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ಸಾರಾಂಶಗಳು, ಸ್ಟಿಲ್‌ಗಳು ಮತ್ತು ಪ್ರಸಾರ ದಿನಾಂಕಗಳು';

  @override
  String get watchMetaKitsuDesc =>
      'ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ವಿವರಣೆಗಳು ಮತ್ತು ಥಂಬ್‌ನೇಲ್‌ಗಳು';

  @override
  String get watchMetaSimklDesc =>
      'ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ವಿವರಣೆಗಳು, ಸ್ಟಿಲ್‌ಗಳು ಮತ್ತು ಪ್ರಸಾರ ದಿನಾಂಕಗಳು';

  @override
  String get watchMetaAniListDesc =>
      'ಸ್ಟ್ರೀಮಿಂಗ್ ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ಥಂಬ್‌ನೇಲ್‌ಗಳು ಮತ್ತು ಪ್ರಸಾರ ವೇಳಾಪಟ್ಟಿ';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai ಮೂಲಕ MyAnimeList ಎಪಿಸೋಡ್ ಶೀರ್ಷಿಕೆಗಳು, ಪ್ರಸಾರ ದಿನಾಂಕಗಳು, ಫಿಲ್ಲರ್ ಮತ್ತು ರೀಕ್ಯಾಪ್ ಗುರುತುಗಳು';

  @override
  String get watchClearMetadata => 'ಎಪಿಸೋಡ್ ವಿವರಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get watchClearMetadataDesc =>
      'ಕ್ಯಾಶ್ ಆದ ಎಪಿಸೋಡ್ ವಿವರಗಳನ್ನು ಮರೆತುಬಿಡು, ಮತ್ತೆ ತರಲಾಗುತ್ತದೆ';

  @override
  String get watchMetadataCleared => 'ಎಪಿಸೋಡ್ ವಿವರಗಳನ್ನು ಮತ್ತೆ ತರಲಾಗುತ್ತದೆ';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಎಪಿಸೋಡ್‌ಗಳು',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಅಧ್ಯಾಯಗಳು',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'ಎಪಿಸೋಡ್ $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'ಅಧ್ಯಾಯ $number';
  }

  @override
  String get watchSearching => 'ಹುಡುಕುತ್ತಿದೆ…';

  @override
  String watchSearchingFor(String term) {
    return 'ಹುಡುಕುತ್ತಿದೆ: $term';
  }

  @override
  String watchSelected(String title) {
    return 'ಆಯ್ಕೆ ಮಾಡಿದ್ದು: $title';
  }

  @override
  String watchFound(String title) {
    return 'ಸಿಕ್ಕಿದ್ದು: $title';
  }

  @override
  String get watchNothingFound => 'ಈ ಸೋರ್ಸ್‌ನಲ್ಲಿ ಏನೂ ಸಿಗಲಿಲ್ಲ';

  @override
  String get watchSearchFailed => 'ಸೋರ್ಸ್ ಹುಡುಕಾಟ ವಿಫಲವಾಯ್ತು';

  @override
  String get watchLoadFailed => 'ಪಟ್ಟಿ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get watchSignInToTrack => 'ನಿನ್ನ ಪ್ರಗತಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಲು ಸೈನ್ ಇನ್ ಆಗು';

  @override
  String watchInstallSource(String action) {
    return '$action ಶುರು ಮಾಡಲು ಒಂದು ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';
  }

  @override
  String get watchSourceMissing => 'ಈ ಸೋರ್ಸ್ ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ';

  @override
  String get watchWrongTitle => 'ತಪ್ಪು ಶೀರ್ಷಿಕೆಯಾ?';

  @override
  String get watchSearchAgain => 'ಮತ್ತೆ ಹುಡುಕು';

  @override
  String watchSearchSource(String source) {
    return '$source ಹುಡುಕು';
  }

  @override
  String get watchSource => 'ಸೋರ್ಸ್';

  @override
  String get watchOptions => 'ಆಯ್ಕೆಗಳು';

  @override
  String get watchReverse => 'ಕ್ರಮ ಹಿಮ್ಮುಖ ಮಾಡು';

  @override
  String get watchScanlators => 'ಗುಂಪುಗಳು';

  @override
  String get watchResetOptions => 'ಈ ಆಯ್ಕೆಗಳನ್ನು ರೀಸೆಟ್ ಮಾಡು';

  @override
  String get watchContinue => 'ಮುಂದುವರಿಸು';

  @override
  String get watchStart => 'ಶುರು';

  @override
  String get watchPlay => 'ಪ್ಲೇ';

  @override
  String get watchRead => 'ಓದು';

  @override
  String get watchMarkWatched => 'ನೋಡಿದ್ದು ಎಂದು ಗುರುತಿಸು';

  @override
  String get watchMarkUnwatched => 'ನೋಡಿಲ್ಲ ಎಂದು ಗುರುತಿಸು';

  @override
  String get watchMarkRead => 'ಓದಿದ್ದು ಎಂದು ಗುರುತಿಸು';

  @override
  String get watchMarkUnread => 'ಓದಿಲ್ಲ ಎಂದು ಗುರುತಿಸು';

  @override
  String get watchFiller => 'ಫಿಲ್ಲರ್';

  @override
  String get watchRecap => 'ರೀಕ್ಯಾಪ್';

  @override
  String get watchNoEpisodes => 'ಎಪಿಸೋಡ್‌ಗಳು ಸಿಗಲಿಲ್ಲ';

  @override
  String get watchNoChapters => 'ಅಧ್ಯಾಯಗಳು ಸಿಗಲಿಲ್ಲ';

  @override
  String get watchSourceTools => 'ಸೋರ್ಸ್ ಟೂಲ್‌ಗಳು';

  @override
  String get watchSourceSettings => 'ಸೋರ್ಸ್ ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get watchOpenWebView => 'ವೆಬ್ ವ್ಯೂನಲ್ಲಿ ತೆರೆ';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare ಚೆಕ್ ಪರಿಹರಿಸು ಅಥವಾ ಲಾಗಿನ್ ಆಗು; ಕುಕೀಗಳು ಸೋರ್ಸ್ ರಿಕ್ವೆಸ್ಟ್‌ಗಳೊಂದಿಗೆ ಹಂಚಿಕೆಯಾಗುತ್ತವೆ';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host ಗೆ $count ಕುಕೀಗಳನ್ನು ಉಳಿಸಲಾಗಿದೆ',
      one: '$host ಗೆ 1 ಕುಕೀ ಉಳಿಸಲಾಗಿದೆ',
      zero: '$host ಗೆ ಯಾವ ಕುಕೀಯೂ ಉಳಿಸಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ಕ್ಲಿಯರೆನ್ಸ್ ಸಕ್ರಿಯ, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ಕ್ಲಿಯರೆನ್ಸ್ ಕುಕೀ ಇಲ್ಲ';

  @override
  String get watchClearanceSession => 'ಆ್ಯಪ್ ಮುಚ್ಚುವವರೆಗೆ ಇರುತ್ತದೆ';

  @override
  String get watchAgentShared =>
      'ರಿಕ್ವೆಸ್ಟ್‌ಗಳು ವೆಬ್ ವ್ಯೂನ ಯೂಸರ್ ಏಜೆಂಟ್ ಬಳಸುತ್ತವೆ, ಇದನ್ನು Cloudflare ಪರಿಶೀಲಿಸುತ್ತದೆ';

  @override
  String get watchAgentCustom =>
      'ಕಸ್ಟಮ್ ಯೂಸರ್ ಏಜೆಂಟ್ ಹೊಂದಿಸಲಾಗಿದೆ, ಹಾಗಾಗಿ ವೆಬ್ ವ್ಯೂನಿಂದ ಬಂದ Cloudflare ಕ್ಲಿಯರೆನ್ಸ್ ತಿರಸ್ಕೃತವಾಗಬಹುದು';

  @override
  String get watchTestConnection => 'ಕನೆಕ್ಷನ್ ಟೆಸ್ಟ್ ಮಾಡು';

  @override
  String get watchSolveChallenge => 'ಪರಿಹರಿಸು';

  @override
  String watchProbeOk(int code) {
    return 'ತಲುಪಬಹುದು (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ಇನ್ನೂ ಚೆಕ್ ಕೇಳುತ್ತಿದೆ';

  @override
  String watchProbeBlocked(int code) {
    return 'ಸೈಟ್ ಬ್ಲಾಕ್ ಮಾಡಿದೆ (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ಸೈಟ್ ತಲುಪಲು ಆಗಲಿಲ್ಲ';

  @override
  String get watchClearCookies => 'ಈ ಸೈಟ್‌ನ ಕುಕೀಗಳನ್ನು ಕ್ಲಿಯರ್ ಮಾಡು';

  @override
  String get watchCookiesCleared => 'ಕುಕೀಗಳು ಕ್ಲಿಯರ್ ಆದವು';

  @override
  String get watchMetaSource => 'ಎಪಿಸೋಡ್ ವಿವರಗಳು ಎಲ್ಲಿಂದ';

  @override
  String get watchMetaAuto => 'ಆಟೋಮ್ಯಾಟಿಕ್';

  @override
  String get watchMetaOff => 'ಆಫ್';

  @override
  String get playerSettingsTitle => 'ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get playerSectionPlayback => 'ಪ್ಲೇಬ್ಯಾಕ್';

  @override
  String get playerSectionSkip => 'ಸ್ಕಿಪ್ ಮಾಡುವುದು';

  @override
  String get playerSectionGestures => 'ಕಂಟ್ರೋಲ್‌ಗಳು';

  @override
  String get playerSectionSubtitles => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳು';

  @override
  String get playerSectionShaders => 'ಶೇಡರ್‌ಗಳು';

  @override
  String get playerSectionEngine => 'ಎಂಜಿನ್';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ಪ್ಲೇಬ್ಯಾಕ್ ವೇಗ';

  @override
  String get playerCursedSpeed => 'ಹೆಚ್ಚುವರಿ ವೇಗಗಳು';

  @override
  String get playerCursedSpeedDesc => 'ಪಟ್ಟಿಗೆ 10x ವರೆಗಿನ ವೇಗಗಳನ್ನು ಸೇರಿಸು';

  @override
  String get playerResize => 'ಗಾತ್ರ ಬದಲಿಸುವ ಮೋಡ್';

  @override
  String get playerFitFit => 'ಫಿಟ್';

  @override
  String get playerFitCover => 'ಕವರ್';

  @override
  String get playerFitStretch => 'ಸ್ಟ್ರೆಚ್';

  @override
  String get playerSkipDuration => 'ಸ್ಕಿಪ್ ಬಟನ್ ಉದ್ದ';

  @override
  String get playerSkipDurationDesc =>
      'ಓಪನಿಂಗ್ ಮತ್ತು ಎಂಡಿಂಗ್ ಹೊರಗೆ ಸ್ಕಿಪ್ ಬಟನ್ ಜಿಗಿಯುವ ಸೆಕೆಂಡುಗಳು';

  @override
  String get playerSeekDuration => 'ಡಬಲ್ ಟ್ಯಾಪ್ ಸೀಕ್';

  @override
  String get playerSeekDurationDesc =>
      'ಡಬಲ್ ಟ್ಯಾಪ್ ಅಥವಾ ಆ್ಯರೋ ಕೀಗೆ ಜಿಗಿಯುವ ಸೆಕೆಂಡುಗಳು';

  @override
  String get playerAutoPlay => 'ಮುಂದಿನದನ್ನು ತಾನಾಗಿ ಪ್ಲೇ ಮಾಡು';

  @override
  String get playerAutoPlayDesc => 'ಈ ಎಪಿಸೋಡ್ ಮುಗಿದಾಗ ಮುಂದಿನ ಎಪಿಸೋಡ್ ಶುರು ಮಾಡು';

  @override
  String get playerResume => 'ನಿಲ್ಲಿಸಿದ ಜಾಗದಿಂದ ಮುಂದುವರಿಸು';

  @override
  String get playerResumeDesc => 'ಎಪಿಸೋಡ್ ಅನ್ನು ಕೊನೆಯ ಸ್ಥಾನದಿಂದ ಮುಂದುವರಿಸು';

  @override
  String get playerOrientation => 'ಓರಿಯೆಂಟೇಶನ್';

  @override
  String get playerOrientationAuto => 'ಡಿವೈಸ್ ಅನುಸರಿಸು';

  @override
  String get playerOrientationLandscape => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್';

  @override
  String get playerOrientationPortrait => 'ಪೋರ್ಟ್ರೇಟ್';

  @override
  String get playerAutoSkipOpening => 'ಓಪನಿಂಗ್ ಸ್ಕಿಪ್ ಮಾಡು';

  @override
  String get playerAutoSkipEnding => 'ಎಂಡಿಂಗ್ ಸ್ಕಿಪ್ ಮಾಡು';

  @override
  String get playerAutoSkipRecap => 'ರೀಕ್ಯಾಪ್ ಸ್ಕಿಪ್ ಮಾಡು';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip ಮತ್ತು ಸ್ಟ್ರೀಮ್ ಟೈಮ್‌ಸ್ಟ್ಯಾಂಪ್‌ಗಳನ್ನು ಬಳಸಿ, ಶುರುವಾದ ತಕ್ಷಣ ಜಿಗಿ';

  @override
  String get playerSkipOnce => 'ಒಮ್ಮೆ ಮಾತ್ರ ಸ್ಕಿಪ್ ಮಾಡು';

  @override
  String get playerSkipOnceDesc =>
      'ನೀನು ಹಿಂದೆ ಸೀಕ್ ಮಾಡಿದರೆ ಅದೇ ಭಾಗವನ್ನು ಮತ್ತೆ ಸ್ಕಿಪ್ ಮಾಡಬೇಡ';

  @override
  String get playerAdjustBrightness => 'ಬ್ರೈಟ್‌ನೆಸ್ ಜೆಸ್ಚರ್';

  @override
  String get playerAdjustBrightnessDesc =>
      'ಸ್ಕ್ರೀನ್‌ನ ಬಲ ಅರ್ಧದಲ್ಲಿ ಮೇಲೆ ಕೆಳಗೆ ಸ್ವೈಪ್ ಮಾಡು';

  @override
  String get playerAdjustVolume => 'ವಾಲ್ಯೂಮ್ ಜೆಸ್ಚರ್';

  @override
  String get playerAdjustVolumeDesc =>
      'ಸ್ಕ್ರೀನ್‌ನ ಎಡ ಅರ್ಧದಲ್ಲಿ ಮೇಲೆ ಕೆಳಗೆ ಸ್ವೈಪ್ ಮಾಡು';

  @override
  String get playerHoldToSpeed => 'ಹಿಡಿದು ವೇಗ ಹೆಚ್ಚಿಸು';

  @override
  String get playerHoldToSpeedDesc =>
      'ವಿಡಿಯೋ ಮೇಲೆ ಒತ್ತಿ ಹಿಡಿದರೆ ವೇಗವಾಗಿ ಪ್ಲೇ ಆಗುತ್ತದೆ, ವೇಗ ಬದಲಿಸಲು ಪಕ್ಕಕ್ಕೆ ಎಳೆ';

  @override
  String get playerThumbless => 'ದಪ್ಪ ಸೀಕ್ ಬಾರ್';

  @override
  String get playerThumblessDesc => 'ಥಂಬ್ ಇಲ್ಲದ ದಪ್ಪ ಬಾರ್';

  @override
  String get playerShowSubtitles => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get playerShowSubtitlesDesc =>
      'ಎಲ್ಲಾ ಸಬ್‌ಟೈಟಲ್ ಟ್ರ್ಯಾಕ್‌ಗಳನ್ನು ಮರೆಮಾಡಲು ಆಫ್ ಮಾಡು';

  @override
  String get playerSubtitleLanguage => 'ಆದ್ಯತೆಯ ಸಬ್‌ಟೈಟಲ್ ಭಾಷೆ';

  @override
  String get playerSubtitleSize => 'ಸಬ್‌ಟೈಟಲ್ ಗಾತ್ರ';

  @override
  String get playerSubtitleWeight => 'ಸಬ್‌ಟೈಟಲ್ ದಪ್ಪ';

  @override
  String get playerSubtitleBottom => 'ಸಬ್‌ಟೈಟಲ್ ಕೆಳಗಿನ ಅಂತರ';

  @override
  String get playerSubtitleFont => 'ಸಬ್‌ಟೈಟಲ್ ಫಾಂಟ್';

  @override
  String get playerSubtitleColor => 'ಸಬ್‌ಟೈಟಲ್ ಬಣ್ಣ';

  @override
  String get playerSubtitleBackground => 'ಸಬ್‌ಟೈಟಲ್ ಹಿನ್ನೆಲೆ';

  @override
  String get playerSubtitleOutline => 'ಸಬ್‌ಟೈಟಲ್ ಔಟ್‌ಲೈನ್';

  @override
  String get playerLibass => 'libass ಬಳಸು';

  @override
  String get playerLibassDesc =>
      'ಸ್ಟೈಲ್ ಇರುವ .ass ಸಬ್‌ಟೈಟಲ್‌ಗಳನ್ನು ರೆಂಡರ್ ಮಾಡು. ಮೇಲಿನ ಗಾತ್ರ, ಬಣ್ಣ ಮತ್ತು ಫಾಂಟ್ ಆಗ ಅನ್ವಯಿಸುವುದಿಲ್ಲ';

  @override
  String get playerShaders => 'ಶೇಡರ್‌ಗಳು';

  @override
  String get playerShadersEnable => 'ಶೇಡರ್‌ಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸು';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K ನಂತಹ GLSL ಶೇಡರ್‌ಗಳಿಂದ ಚಿತ್ರವನ್ನು ಅಪ್‌ಸ್ಕೇಲ್ ಮತ್ತು ಕ್ಲೀನ್ ಮಾಡು';

  @override
  String get playerShadersOff => 'ಶೇಡರ್‌ಗಳು ಆಫ್';

  @override
  String get playerShadersMissing => 'Anime4K ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ';

  @override
  String get playerShadersMissingDesc =>
      'ಅಂತರ್ಗತ ಮೋಡ್‌ಗಳನ್ನು ಬಳಸಲು Anime4K ಶೇಡರ್ ಪ್ಯಾಕ್ (ಸುಮಾರು 0.8 MB) ಡೌನ್‌ಲೋಡ್ ಮಾಡು.';

  @override
  String get playerShadersDownload => 'Anime4K ಡೌನ್‌ಲೋಡ್ ಮಾಡು';

  @override
  String get playerPictureSave => 'Save this frame';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'The frame as the video has it, without shaders or colors';

  @override
  String get playerPictureProcessed => 'With shaders and colors';

  @override
  String get playerPictureProcessedDesc => 'The frame as you see it now';

  @override
  String get playerPictureSaved => 'Frame saved';

  @override
  String get playerPictureSaveFailed => 'Could not save the frame';

  @override
  String get playerShadersPreview => 'ಈ ಫ್ರೇಮ್‌ನಲ್ಲಿ ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get playerShadersUse => 'ಇದನ್ನು ಬಳಸು';

  @override
  String get playerPicture => 'ಚಿತ್ರ';

  @override
  String get playerColors => 'ಬಣ್ಣಗಳು';

  @override
  String get playerColorDefault => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get playerColorVivid => 'ವಿವಿಡ್';

  @override
  String get playerColorPop => 'ಆನಿಮೆ ಪಾಪ್';

  @override
  String get playerColorSoft => 'ಸಾಫ್ಟ್';

  @override
  String get playerColorCinematic => 'ಸಿನಿಮ್ಯಾಟಿಕ್';

  @override
  String get playerColorBright => 'ಬ್ರೈಟ್';

  @override
  String get playerColorNight => 'ನೈಟ್';

  @override
  String get playerColorMono => 'ಮೊನೊ';

  @override
  String get playerColorCustom => 'ಕಸ್ಟಮ್';

  @override
  String get playerColorBrightness => 'ಬ್ರೈಟ್‌ನೆಸ್';

  @override
  String get playerColorContrast => 'ಕಾಂಟ್ರಾಸ್ಟ್';

  @override
  String get playerColorSaturation => 'ಸ್ಯಾಚುರೇಶನ್';

  @override
  String get playerColorGamma => 'ಗ್ಯಾಮಾ';

  @override
  String get playerColorHue => 'ಹ್ಯೂ';

  @override
  String get playerColorReset => 'ರೀಸೆಟ್';

  @override
  String get playerColorAdjust => 'ಹೊಂದಿಸು';

  @override
  String get playerShadersOriginal => 'ಮೂಲ';

  @override
  String get playerShadersPreviewFailed =>
      'ಪೂರ್ವವೀಕ್ಷಣೆಗೆ ಫ್ರೇಮ್ ಹಿಡಿಯಲು ಆಗಲಿಲ್ಲ';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'ನಿನ್ನ ಶೇಡರ್‌ಗಳು';

  @override
  String get playerShadersCustom => 'ಕಸ್ಟಮ್ ಶೇಡರ್‌ಗಳು';

  @override
  String get playerShadersImport => '.glsl ಇಂಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get playerShadersNone =>
      'ನಿನ್ನ ಸ್ವಂತ .glsl ಅಥವಾ .hook ಫೈಲ್‌ಗಳನ್ನು ಇಂಪೋರ್ಟ್ ಮಾಡಿ, ಟಿಕ್ ಮಾಡಿ ಒಂದಕ್ಕೊಂದು ಜೋಡಿಸು';

  @override
  String get playerShadersBadFile => '.glsl ಅಥವಾ .hook ಶೇಡರ್ ಫೈಲ್ ಆರಿಸು';

  @override
  String get playerDecoder => 'ಡಿಕೋಡರ್';

  @override
  String get playerDecoderAuto => 'ಆಟೋ';

  @override
  String get playerDecoderAutoSafe => 'ಆಟೋ (ಸುರಕ್ಷಿತ)';

  @override
  String get playerDecoderSoftware => 'ಸಾಫ್ಟ್‌ವೇರ್';

  @override
  String get playerDecoderHardware => 'ಹಾರ್ಡ್‌ವೇರ್';

  @override
  String get playerDecoderHardwarePlus => 'ಹಾರ್ಡ್‌ವೇರ್+';

  @override
  String get playerVideoOutput => 'ವಿಡಿಯೋ ಔಟ್‌ಪುಟ್';

  @override
  String get playerAudioChannels => 'ಆಡಿಯೋ ಚಾನೆಲ್‌ಗಳು';

  @override
  String get playerBuffer => 'ಬಫರ್ ಗಾತ್ರ (MB)';

  @override
  String get playerBufferDesc => 'ಸ್ಟ್ರೀಮ್ ಬಫರ್ ಮಾಡಲು ಪ್ಲೇಯರ್ ಬಳಸಬಹುದಾದ ಮೆಮೊರಿ';

  @override
  String get playerUseMpvConf => 'mpv.conf ಬಳಸು';

  @override
  String get playerUseMpvConfDesc =>
      'ಪ್ಲೇಬ್ಯಾಕ್ ಶುರುವಾದಾಗ ನಿನ್ನ mpv.conf ನ ಆಯ್ಕೆಗಳನ್ನು ಅನ್ವಯಿಸು';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv ಕಾನ್ಫಿಗರೇಶನ್ ಎಡಿಟ್ ಮಾಡು';

  @override
  String get playerMpvConfDesc =>
      'ಪ್ರತಿ ಸಾಲಿಗೆ ಒಂದು ಆಯ್ಕೆ, ಸಾಮಾನ್ಯ mpv.conf ನಲ್ಲಿರುವ --hwdec=auto ನಂತೆ. [ಬ್ರಾಕೆಟ್]ನಲ್ಲಿರುವ ಪ್ರೊಫೈಲ್‌ಗಳನ್ನು ನಿರ್ಲಕ್ಷಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get playerMpvConfSaved => 'mpv.conf ಉಳಿಯಿತು';

  @override
  String get playerUseScripts => 'mpv ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳನ್ನು ಬಳಸು';

  @override
  String get playerUseScriptsDesc =>
      'ಸ್ಕ್ರಿಪ್ಟ್ಸ್ ಫೋಲ್ಡರ್‌ನಿಂದ ಪ್ಲಗಿನ್‌ಗಳನ್ನು ಲೋಡ್ ಮಾಡು. ಅವಕ್ಕೆ Lua ಅಥವಾ JavaScript ಬೆಂಬಲವಿರುವ libmpv ಬಿಲ್ಡ್ ಬೇಕು';

  @override
  String get playerScripts => 'mpv ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು';

  @override
  String get playerScriptsManage => 'ಪ್ಲಗಿನ್‌ಗಳನ್ನು ಸೇರಿಸು, ತೆಗೆ ಮತ್ತು ಬದಲಿಸು';

  @override
  String get playerScriptsAdd => 'ಸ್ಕ್ರಿಪ್ಟ್ ಸೇರಿಸು';

  @override
  String get playerScriptsDesc =>
      'ಇಲ್ಲಿ ಇಟ್ಟ Lua, JavaScript ಮತ್ತು ನೇಟಿವ್ ಪ್ಲಗಿನ್‌ಗಳು ಪ್ಲೇಬ್ಯಾಕ್ ಶುರುವಾದಾಗ ಲೋಡ್ ಆಗುತ್ತವೆ.';

  @override
  String get playerScriptsNone => 'ಇನ್ನೂ ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳಿಲ್ಲ';

  @override
  String get playerScriptsBadFile => '.lua, .js ಅಥವಾ ನೇಟಿವ್ ಪ್ಲಗಿನ್ ಫೈಲ್ ಆರಿಸು';

  @override
  String get playerTuning => 'ಸುಧಾರಿತ ವಿಡಿಯೋ ಟ್ಯೂನಿಂಗ್';

  @override
  String get playerTuningDesc =>
      'ಸಿಂಕ್, ಕ್ಯಾಶಿಂಗ್, ಸ್ಕೇಲಿಂಗ್ ಮತ್ತು ಟೋನ್ ಮ್ಯಾಪಿಂಗ್ ಬದಲಿಸು. ತಪ್ಪು ಮೌಲ್ಯಗಳು ಪ್ಲೇಬ್ಯಾಕ್‌ಗೆ ತೊಂದರೆ ಕೊಡಬಹುದು';

  @override
  String get playerVideoSync => 'ವಿಡಿಯೋ ಸಿಂಕ್';

  @override
  String get playerInterpolation => 'ಫ್ರೇಮ್ ಇಂಟರ್‌ಪೋಲೇಶನ್';

  @override
  String get playerInterpolationDesc =>
      'ನಯವಾದ ಚಲನೆ, display-resample ಸಿಂಕ್ ಬೇಕು';

  @override
  String get playerPitch => 'ಪಿಚ್ ತಿದ್ದುಪಡಿ';

  @override
  String get playerPitchDesc => 'ಬೇರೆ ವೇಗಗಳಲ್ಲಿ ಧ್ವನಿಗಳನ್ನು ಸಹಜವಾಗಿ ಇಡು';

  @override
  String get playerCacheSeconds => 'ಕ್ಯಾಶ್ (ಸೆಕೆಂಡ್)';

  @override
  String get playerReadahead => 'ಮುಂಚಿತ ಓದು (ಸೆಕೆಂಡ್)';

  @override
  String get playerThreads => 'ಡಿಕೋಡರ್ ಥ್ರೆಡ್‌ಗಳು';

  @override
  String get playerDeband => 'ಡಿಬ್ಯಾಂಡ್';

  @override
  String get playerDebandDesc =>
      'ಗ್ರೇಡಿಯಂಟ್‌ಗಳಲ್ಲಿ ಬಣ್ಣದ ಪಟ್ಟಿಗಳನ್ನು ಕಡಿಮೆ ಮಾಡು';

  @override
  String get playerDebandIterations => 'ಡಿಬ್ಯಾಂಡ್ ಪುನರಾವರ್ತನೆಗಳು';

  @override
  String get playerDebandThreshold => 'ಡಿಬ್ಯಾಂಡ್ ಮಿತಿ';

  @override
  String get playerCorrectDownscaling => 'ಸರಿಯಾದ ಡೌನ್‌ಸ್ಕೇಲಿಂಗ್';

  @override
  String get playerSigmoid => 'ಸಿಗ್ಮಾಯ್ಡ್ ಅಪ್‌ಸ್ಕೇಲಿಂಗ್';

  @override
  String get playerScale => 'ಅಪ್‌ಸ್ಕೇಲರ್';

  @override
  String get playerCscale => 'ಕ್ರೋಮಾ ಅಪ್‌ಸ್ಕೇಲರ್';

  @override
  String get playerDscale => 'ಡೌನ್‌ಸ್ಕೇಲರ್';

  @override
  String get playerToneMapping => 'ಟೋನ್ ಮ್ಯಾಪಿಂಗ್';

  @override
  String get playerTargetPeak => 'ಟಾರ್ಗೆಟ್ ಪೀಕ್';

  @override
  String get playerOpenFiles => 'ವಿಡಿಯೋ ಫೈಲ್‌ಗಳನ್ನು ತೆರೆ';

  @override
  String get playerOpenFilesDesc => 'ಈ ಡಿವೈಸ್‌ನ ಫೈಲ್‌ಗಳನ್ನು ಪ್ಲೇ ಮಾಡು';

  @override
  String get playerOpenFolder => 'ಫೋಲ್ಡರ್ ತೆರೆ';

  @override
  String get playerOpenFolderDesc =>
      'ಫೋಲ್ಡರ್‌ನ ಎಲ್ಲಾ ವಿಡಿಯೋಗಳನ್ನು ಪ್ಲೇಲಿಸ್ಟ್ ಆಗಿ ಪ್ಲೇ ಮಾಡು';

  @override
  String get playerNetworkStream => 'ನೆಟ್‌ವರ್ಕ್ ಸ್ಟ್ರೀಮ್';

  @override
  String get playerNetworkStreamDesc => 'ನೇರ ವಿಡಿಯೋ ಅಥವಾ HLS ಲಿಂಕ್ ತೆರೆ';

  @override
  String get playerStreamUrl => 'ಸ್ಟ್ರೀಮ್ URL';

  @override
  String get playerStreamReferer => 'Referer (ಐಚ್ಛಿಕ)';

  @override
  String get playerTorrent => 'ಟೊರೆಂಟ್';

  @override
  String get playerTorrentDesc =>
      'ಮ್ಯಾಗ್ನೆಟ್ ಲಿಂಕ್ ಅಥವಾ .torrent ಫೈಲ್ ಸ್ಟ್ರೀಮ್ ಮಾಡು';

  @override
  String get playerMagnetLink => 'ಮ್ಯಾಗ್ನೆಟ್ ಲಿಂಕ್ ಅಥವಾ ಟೊರೆಂಟ್ URL';

  @override
  String get playerPickTorrent => '.torrent ಫೈಲ್ ಆರಿಸು';

  @override
  String get playerTorrentMissing =>
      'ಮೊದಲು ಸೆಟ್ಟಿಂಗ್ಸ್ > ಆಡ್-ಆನ್‌ಗಳಿಂದ ಟೊರೆಂಟ್ ಆಡ್-ಆನ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get playerNoVideos => 'ಪ್ಲೇ ಮಾಡಬಹುದಾದ ವಿಡಿಯೋಗಳು ಸಿಗಲಿಲ್ಲ';

  @override
  String get playerReset => 'ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್ಸ್ ರೀಸೆಟ್ ಮಾಡು';

  @override
  String get playerResetDesc =>
      'ಎಲ್ಲಾ ಪ್ಲೇಯರ್ ಆಯ್ಕೆಗಳನ್ನು ಡೀಫಾಲ್ಟ್‌ಗೆ ಮರುಸ್ಥಾಪಿಸು';

  @override
  String get playerResetConfirm => 'ಎಲ್ಲಾ ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್ಸ್ ರೀಸೆಟ್ ಮಾಡಬೇಕಾ?';

  @override
  String get playerResetDone => 'ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್ಸ್ ರೀಸೆಟ್ ಆದವು';

  @override
  String get playerQuality => 'ಕ್ವಾಲಿಟಿ';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Raw';

  @override
  String get streamGroupOther => 'Other';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 stream',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ಸ್ಟ್ರೀಮ್‌ಗಳು';

  @override
  String get playerAutoSelect => 'ಸ್ಟ್ರೀಮ್ ತಾನಾಗಿ ಆರಿಸು';

  @override
  String get playerAutoSelectDesc =>
      'ಈ ಶೀರ್ಷಿಕೆಗೆ ನಿನ್ನ ಕೊನೆಯ ಆಯ್ಕೆಗೆ ಹೆಚ್ಚು ಹೋಲುವ ಸ್ಟ್ರೀಮ್ ಆರಿಸು';

  @override
  String get playerLoadingStreams => 'ಸ್ಟ್ರೀಮ್‌ಗಳನ್ನು ಹುಡುಕುತ್ತಿದೆ…';

  @override
  String get playerNoStreams => 'ಈ ಎಪಿಸೋಡ್‌ಗೆ ಸ್ಟ್ರೀಮ್‌ಗಳಿಲ್ಲ';

  @override
  String get playerNoStreamsTitle => 'ಸ್ಟ್ರೀಮ್‌ಗಳು ಸಿಗಲಿಲ್ಲ';

  @override
  String get playerFailed => 'ಪ್ಲೇಬ್ಯಾಕ್ ವಿಫಲವಾಯ್ತು';

  @override
  String get playerTorrentNeeded => 'ಈ ಸ್ಟ್ರೀಮ್ ಒಂದು ಟೊರೆಂಟ್';

  @override
  String get playerTorrentNeededDesc =>
      'ಮ್ಯಾಗ್ನೆಟ್ ಲಿಂಕ್ ಮತ್ತು .torrent ಫೈಲ್ ಪ್ಲೇ ಮಾಡಲು ಟೊರೆಂಟ್ ಆಡ್-ಆನ್ ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get playerOpenAddons => 'ಆಡ್-ಆನ್‌ಗಳನ್ನು ತೆರೆ';

  @override
  String get playerTryAnotherStream => 'ಬೇರೆ ಸ್ಟ್ರೀಮ್ ಪ್ರಯತ್ನಿಸು';

  @override
  String get playerEpisodes => 'ಎಪಿಸೋಡ್‌ಗಳು';

  @override
  String get playerLock => 'ಕಂಟ್ರೋಲ್‌ಗಳನ್ನು ಲಾಕ್ ಮಾಡು';

  @override
  String get playerFullscreen => 'ಫುಲ್‌ಸ್ಕ್ರೀನ್';

  @override
  String get readerChapters => 'ಅಧ್ಯಾಯಗಳು';

  @override
  String get readerSettingsTitle => 'ರೀಡರ್ ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get readerPreviousChapter => 'ಹಿಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String get readerNextChapter => 'ಮುಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String get readerFirstChapter => 'ಇದು ಮೊದಲ ಅಧ್ಯಾಯ';

  @override
  String get readerLastChapter => 'ನೀನು ಎಲ್ಲವನ್ನೂ ಓದಿ ಮುಗಿಸಿದ್ದೀಯ';

  @override
  String get readerFailed => 'ಈ ಅಧ್ಯಾಯ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'ಈ ಅಧ್ಯಾಯದಲ್ಲಿ ಪಠ್ಯ ಇಲ್ಲ';

  @override
  String get readerPerTitle => 'ಈ ಶೀರ್ಷಿಕೆಗೆ ಮಾತ್ರ';

  @override
  String get readerPerTitleDesc =>
      'ಈ ರೀಡರ್ ಸೆಟ್ಟಿಂಗ್ಸ್ ಅನ್ನು ಈ ಶೀರ್ಷಿಕೆಗೆ ಮಾತ್ರ ಇಡು';

  @override
  String get readerSectionReading => 'ಓದುವಿಕೆ';

  @override
  String get readerSectionControls => 'ಕಂಟ್ರೋಲ್‌ಗಳು';

  @override
  String get readerSectionDisplay => 'ಡಿಸ್‌ಪ್ಲೇ';

  @override
  String get readerSectionNovel => 'ನಾವೆಲ್';

  @override
  String get readerMode => 'ಓದುವ ಮೋಡ್';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'ಬಲದಿಂದ ಎಡಕ್ಕೆ';

  @override
  String get readerModeLtr => 'ಎಡದಿಂದ ಬಲಕ್ಕೆ';

  @override
  String get readerModeVertical => 'ಲಂಬ ಪುಟಗಳು';

  @override
  String get readerModeWebtoon => 'ವೆಬ್‌ಟೂನ್';

  @override
  String get readerModeContinuous => 'ನಿರಂತರ ಸ್ಕ್ರಾಲ್';

  @override
  String get readerScale => 'ಚಿತ್ರದ ಸ್ಕೇಲ್';

  @override
  String get readerScaleFit => 'ಸ್ಕ್ರೀನ್‌ಗೆ ಹೊಂದಿಸು';

  @override
  String get readerScaleWidth => 'ಅಗಲಕ್ಕೆ ಹೊಂದಿಸು';

  @override
  String get readerScaleHeight => 'ಎತ್ತರಕ್ಕೆ ಹೊಂದಿಸು';

  @override
  String get readerScaleOriginal => 'ಮೂಲ ಗಾತ್ರ';

  @override
  String get readerScaleSmart => 'ಸ್ಮಾರ್ಟ್ ಫಿಟ್';

  @override
  String get readerDoublePage => 'ಡಬಲ್ ಪುಟಗಳು';

  @override
  String get readerDoublePageDesc =>
      'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್‌ನಲ್ಲಿ ಎರಡು ಪುಟಗಳನ್ನು ಅಕ್ಕಪಕ್ಕ ತೋರಿಸು';

  @override
  String get readerDoubleTapZoom => 'ಡಬಲ್ ಟ್ಯಾಪ್ ಮಾಡಿ ಜೂಮ್';

  @override
  String get readerDoubleTapZoomDesc =>
      'ಡಬಲ್ ಟ್ಯಾಪ್ ಮಾಡಿ ಪುಟವನ್ನು ಜೂಮ್ ಇನ್ ಮತ್ತು ಔಟ್ ಮಾಡು';

  @override
  String get readerAnimate => 'ಪುಟ ಅನಿಮೇಷನ್';

  @override
  String get readerAnimateDesc => 'ಪುಟ ತಿರುಗಿಸುವಿಕೆಯನ್ನು ಅನಿಮೇಟ್ ಮಾಡು';

  @override
  String get readerSidePadding => 'ಪಕ್ಕದ ಅಂತರ';

  @override
  String get readerSidePaddingDesc => 'ಪುಟಗಳ ಪಕ್ಕದ ಜಾಗ ಶೇಕಡಾದಲ್ಲಿ';

  @override
  String get readerPageGap => 'ಪುಟಗಳ ನಡುವಿನ ಅಂತರ';

  @override
  String get readerPageGapDesc => 'ಪುಟಗಳ ನಡುವಿನ ಜಾಗ';

  @override
  String get readerAutoNext => 'ಮುಂದಿನ ಅಧ್ಯಾಯಕ್ಕೆ ಮುಂದುವರಿ';

  @override
  String get readerAutoNextDesc =>
      'ಈ ಅಧ್ಯಾಯದ ಕೊನೆ ಓದುವಾಗ ಮುಂದಿನ ಅಧ್ಯಾಯ ಲೋಡ್ ಮಾಡು';

  @override
  String get readerPreload => 'ಪುಟಗಳನ್ನು ಮುಂಚಿತ ಲೋಡ್ ಮಾಡು';

  @override
  String get readerPreloadDesc => 'ಎಷ್ಟು ಪುಟಗಳನ್ನು ಮುಂಚಿತ ಡೌನ್‌ಲೋಡ್ ಮಾಡಬೇಕು';

  @override
  String get readerTapZones => 'ಟ್ಯಾಪ್ ವಲಯಗಳು';

  @override
  String get readerTapDefault => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get readerTapLShaped => 'L ಆಕಾರದ';

  @override
  String get readerTapKindle => 'Kindle ತರಹ';

  @override
  String get readerTapEdge => 'ಅಂಚುಗಳು ಮಾತ್ರ';

  @override
  String get readerTapOff => 'ನಿಷ್ಕ್ರಿಯ';

  @override
  String get readerInvertTaps => 'ಟ್ಯಾಪ್ ವಲಯಗಳನ್ನು ಉಲ್ಟಾ ಮಾಡು';

  @override
  String get readerInvertTapsDesc =>
      'ಹಿಂದಿನ ಮತ್ತು ಮುಂದಿನ ಪ್ರದೇಶಗಳನ್ನು ಅದಲುಬದಲು ಮಾಡು';

  @override
  String get readerBackground => 'ಹಿನ್ನೆಲೆ';

  @override
  String get readerBackgroundBlack => 'ಕಪ್ಪು';

  @override
  String get readerBackgroundGray => 'ಬೂದು';

  @override
  String get readerBackgroundWhite => 'ಬಿಳಿ';

  @override
  String get readerBackgroundTheme => 'ಆ್ಯಪ್ ಥೀಮ್';

  @override
  String get readerFilter => 'ಕಲರ್ ಫಿಲ್ಟರ್';

  @override
  String get readerFilterNone => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get readerFilterGrayscale => 'ಗ್ರೇಸ್ಕೇಲ್';

  @override
  String get readerFilterInvert => 'ಉಲ್ಟಾ';

  @override
  String get readerFilterSepia => 'ಸೆಪಿಯಾ';

  @override
  String get readerFilterQuality => 'Image filter quality';

  @override
  String get readerFilterQualityNone => 'None (Nearest neighbor)';

  @override
  String get readerFilterQualityLow => 'Low (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Medium (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'High (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rust high quality)';

  @override
  String get readerDim => 'ಮಂದ';

  @override
  String get readerDimDesc => 'ಪುಟಗಳನ್ನು ಕಪ್ಪಾಗಿಸು';

  @override
  String get readerPageNumber => 'ಪುಟ ಸಂಖ್ಯೆ';

  @override
  String get readerPageNumberDesc => 'ಓದುವಾಗ ಪುಟ ಸಂಖ್ಯೆ ತೋರಿಸು';

  @override
  String get readerFullscreen => 'ಫುಲ್‌ಸ್ಕ್ರೀನ್';

  @override
  String get readerFullscreenDesc => 'ಸಿಸ್ಟಂ ಬಾರ್‌ಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get readerCropBorders => 'ಅಂಚುಗಳನ್ನು ಕತ್ತರಿಸು';

  @override
  String get readerCropBordersDesc =>
      'ಪುಟಗಳ ಖಾಲಿ ಬಿಳಿ ಅಥವಾ ಕಪ್ಪು ಅಂಚುಗಳನ್ನು ಟ್ರಿಮ್ ಮಾಡು';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ವಾಲ್ಯೂಮ್ ಕೀಗಳಿಂದ ಪುಟ ತಿರುಗಿಸು';

  @override
  String get readerVolumeKeysDesc =>
      'ವಾಲ್ಯೂಮ್ ಡೌನ್ ಮುಂದೆ ಹೋಗುತ್ತದೆ, ವಾಲ್ಯೂಮ್ ಅಪ್ ಹಿಂದೆ ಹೋಗುತ್ತದೆ';

  @override
  String get readerBookmarks => 'ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳು';

  @override
  String get readerBookmarkAdd => 'ಬುಕ್‌ಮಾರ್ಕ್ ಸೇರಿಸು';

  @override
  String get readerBookmarkRemove => 'ಬುಕ್‌ಮಾರ್ಕ್ ತೆಗೆ';

  @override
  String get readerBookmarksEmpty => 'ಇನ್ನೂ ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳಿಲ್ಲ';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total ರಲ್ಲಿ ಪುಟ $page';
  }

  @override
  String get readerAutoScroll => 'ಆಟೋ ಸ್ಕ್ರಾಲ್';

  @override
  String get readerAutoScrollStop => 'ಆಟೋ ಸ್ಕ್ರಾಲ್ ನಿಲ್ಲಿಸು';

  @override
  String get readerAutoScrollSpeed => 'ಆಟೋ ಸ್ಕ್ರಾಲ್ ವೇಗ';

  @override
  String get readerAutoScrollSpeedDesc =>
      'ಪುಟಗಳು ತಾನಾಗಿ ಎಷ್ಟು ವೇಗವಾಗಿ ಸ್ಕ್ರಾಲ್ ಆಗುತ್ತವೆ ಅಥವಾ ತಿರುಗುತ್ತವೆ';

  @override
  String get readerKeepOn => 'ಸ್ಕ್ರೀನ್ ಆನ್ ಇಡು';

  @override
  String get readerKeepOnDesc => 'ಓದುವಾಗ ಸ್ಕ್ರೀನ್ ಆಫ್ ಆಗದಂತೆ ತಡೆ';

  @override
  String get readerOrientation => 'ಓರಿಯೆಂಟೇಶನ್';

  @override
  String get readerOrientationFree => 'ಮುಕ್ತ';

  @override
  String get readerOrientationPortrait => 'ಪೋರ್ಟ್ರೇಟ್';

  @override
  String get readerOrientationLandscape => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್';

  @override
  String get readerSaveProgress => 'ಪ್ರಗತಿ ಉಳಿಸು';

  @override
  String get readerSaveProgressDesc =>
      'ನಿನ್ನ ಪುಟ ನೆನಪಿಟ್ಟುಕೊ ಮತ್ತು ಅಧ್ಯಾಯಗಳನ್ನು ಓದಿದ್ದು ಎಂದು ಗುರುತಿಸು';

  @override
  String get readerReset => 'ರೀಡರ್ ಸೆಟ್ಟಿಂಗ್ಸ್ ರೀಸೆಟ್ ಮಾಡು';

  @override
  String get readerResetDesc => 'ಡೀಫಾಲ್ಟ್‌ಗೆ ಮರಳು';

  @override
  String get novelSize => 'ಪಠ್ಯ ಗಾತ್ರ';

  @override
  String get novelFont => 'ಫಾಂಟ್';

  @override
  String get novelLineHeight => 'ಸಾಲಿನ ಎತ್ತರ';

  @override
  String get novelParagraph => 'ಪ್ಯಾರಾಗ್ರಾಫ್ ಅಂತರ';

  @override
  String get novelMargin => 'ಅಂಚುಗಳು';

  @override
  String get novelTheme => 'ರೀಡರ್ ಥೀಮ್';

  @override
  String get novelThemeApp => 'ಆ್ಯಪ್ ಥೀಮ್';

  @override
  String get novelThemeLight => 'ಲೈಟ್';

  @override
  String get novelThemeSepia => 'ಸೆಪಿಯಾ';

  @override
  String get novelThemeDark => 'ಡಾರ್ಕ್';

  @override
  String get novelThemeBlack => 'ಕಪ್ಪು';

  @override
  String get novelJustify => 'ಪಠ್ಯ ಜಸ್ಟಿಫೈ ಮಾಡು';

  @override
  String get novelJustifyDesc => 'ಪಠ್ಯವನ್ನು ಎರಡೂ ಅಂಚುಗಳಿಗೆ ಹೊಂದಿಸು';

  @override
  String get trackProgressTitle => 'ಪ್ರಗತಿ ಉಳಿಸಬೇಕಾ?';

  @override
  String trackProgressAnime(String name) {
    return 'ನೀನು ನೋಡುತ್ತಿರುವಾಗ $name ಅನ್ನು ನಿನ್ನ ಪಟ್ಟಿಯಲ್ಲಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಬೇಕಾ? ಲೋಕಲ್ ಆಗಿ ಇಡಲು \"ಈ ಡಿವೈಸ್ ಮಾತ್ರ\" ಆರಿಸು, ಏನೂ ಉಳಿಸದಿರಲು ಇಲ್ಲ ಆರಿಸು.';
  }

  @override
  String trackProgressManga(String name) {
    return 'ನೀನು ಅಧ್ಯಾಯ ಮುಗಿಸಿದಾಗ $name ಅನ್ನು ನಿನ್ನ ಪಟ್ಟಿಯಲ್ಲಿ ಟ್ರ್ಯಾಕ್ ಮಾಡಬೇಕಾ? ಲೋಕಲ್ ಆಗಿ ಇಡಲು \"ಈ ಡಿವೈಸ್ ಮಾತ್ರ\" ಆರಿಸು, ಏನೂ ಉಳಿಸದಿರಲು ಇಲ್ಲ ಆರಿಸು.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Save your progress on $name to your list on this device as you watch?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Save your progress on $name to your list on this device when you finish a chapter?';
  }

  @override
  String get downloadClearQueue => 'Clear queue';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted.';
  }

  @override
  String get castTitle => 'Cast to device';

  @override
  String get castSearching => 'Looking for devices on your network…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again.';

  @override
  String get castRefresh => 'Search again';

  @override
  String get castFailed => 'Could not start casting';

  @override
  String get castStop => 'Stop casting';

  @override
  String castNowCasting(String name) {
    return 'Casting to $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku can\'t report or change the position';

  @override
  String get castControls => 'Controls';

  @override
  String get castVolume => 'TV volume';

  @override
  String castSkipPart(String name) {
    return 'Skip $name';
  }

  @override
  String get trackProgressRememberSeries => 'Remember for this series';

  @override
  String get trackProgressYes => 'ಉಳಿಸು';

  @override
  String get trackProgressReset =>
      'ಈ ವಿಧಕ್ಕೆ ಪ್ರಗತಿ ಉಳಿಸುವ ಪ್ರಾಂಪ್ಟ್ ರೀಸೆಟ್ ಆಯ್ತು, ಮತ್ತೆ ಕೇಳುತ್ತದೆ';

  @override
  String get trackProgressNo => 'ಇಲ್ಲ';

  @override
  String get trackProgressOff => 'ಆಫ್';

  @override
  String get trackProgressLocal => 'ಈ ಡಿವೈಸ್ ಮಾತ್ರ';

  @override
  String get trackProgressSettingAnime => 'ಆನಿಮೆ ಪ್ರಗತಿ ಟ್ರ್ಯಾಕ್ ಮಾಡು';

  @override
  String get trackProgressSettingManga =>
      'ಮಂಗಾ ಮತ್ತು ನಾವೆಲ್ ಪ್ರಗತಿ ಟ್ರ್ಯಾಕ್ ಮಾಡು';

  @override
  String get trackProgressSettingDesc =>
      'ಎಪಿಸೋಡ್ ತೆರೆದಾಗ ಅಥವಾ ಅಧ್ಯಾಯ ಮುಗಿಸಿದಾಗ ಏನು ಮಾಡಬೇಕು';

  @override
  String get trackProgressAsk => 'ಕೇಳು';

  @override
  String get trackProgressAlways => 'ಯಾವಾಗಲೂ';

  @override
  String get dantotsuImport => 'Dantotsu ನಿಂದ ಇಂಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu ಸೆಟ್ಟಿಂಗ್ಸ್ ಬ್ಯಾಕಪ್ ಓದು (.ani, ಅಥವಾ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಆದ .sani)';

  @override
  String get dantotsuPick => 'Dantotsu ಬ್ಯಾಕಪ್ ಆರಿಸು';

  @override
  String get dantotsuNothing => 'ಈ ಫೈಲ್‌ನಲ್ಲಿ ಇಂಪೋರ್ಟ್ ಮಾಡಲು ಏನೂ ಇಲ್ಲ';

  @override
  String get dantotsuApply => 'ಆಯ್ದದ್ದನ್ನು ಇಂಪೋರ್ಟ್ ಮಾಡು';

  @override
  String dantotsuDone(int done, int total) {
    return '$total ರಲ್ಲಿ $done ಇಂಪೋರ್ಟ್ ಆದವು';
  }

  @override
  String get dantotsuGroupAccounts => 'ಖಾತೆಗಳು';

  @override
  String get dantotsuGroupAppearance => 'ಲುಕ್';

  @override
  String get dantotsuGroupExtensions => 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳು';

  @override
  String get dantotsuGroupApp => 'ಆ್ಯಪ್';

  @override
  String get dantotsuGroupPlayer => 'ಪ್ಲೇಯರ್';

  @override
  String get dantotsuAnilist => 'AniList ಲಾಗಿನ್';

  @override
  String get dantotsuMal => 'MyAnimeList ಲಾಗಿನ್';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence ಟೋಕನ್';

  @override
  String get dantotsuTheme => 'ಥೀಮ್';

  @override
  String get dantotsuReposAnime => 'ಆನಿಮೆ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ರೆಪೊಸಿಟರಿಗಳು';

  @override
  String get dantotsuReposManga => 'ಮಂಗಾ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ರೆಪೊಸಿಟರಿಗಳು';

  @override
  String get dantotsuReposNovel => 'ನಾವೆಲ್ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ರೆಪೊಸಿಟರಿಗಳು';

  @override
  String get dantotsuUpdates => 'ಅಪ್‌ಡೇಟ್ ಚೆಕ್';

  @override
  String get dantotsuComments => 'ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get dantotsuActivity => 'AniList ನೋಟಿಫಿಕೇಶನ್ ಪೋಲಿಂಗ್';

  @override
  String get dantotsuDns => 'DNS ಪ್ರೊವೈಡರ್';

  @override
  String get dantotsuPlayer => 'ಪ್ಲೇಯರ್ ವೇಗ ಮತ್ತು ಸಬ್‌ಟೈಟಲ್ ಬಣ್ಣಗಳು';

  @override
  String get dantotsuWarning =>
      'ಈ ಫೈಲ್‌ನಲ್ಲಿ ಲಾಗಿನ್ ಟೋಕನ್‌ಗಳಿವೆ. ಖಾಸಗಿಯಾಗಿ ಇಡು.';

  @override
  String get novelIndent => 'ಪ್ಯಾರಾಗ್ರಾಫ್‌ಗಳಿಗೆ ಇಂಡೆಂಟ್';

  @override
  String get novelIndentDesc =>
      'ಪ್ರತಿ ಪ್ಯಾರಾಗ್ರಾಫ್ ಅನ್ನು ಮೊದಲ ಸಾಲಿನ ಇಂಡೆಂಟ್‌ನಿಂದ ಶುರು ಮಾಡು';

  @override
  String get novelLetterSpacing => 'ಅಕ್ಷರ ಅಂತರ';

  @override
  String get novelSectionTranslate => 'ಅನುವಾದ';

  @override
  String get sectionExperimental => 'ಪ್ರಾಯೋಗಿಕ';

  @override
  String get kitsuGraphqlDetail => 'ವೇಗದ ವಿವರ ಪುಟಗಳು (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ಶೀರ್ಷಿಕೆಯನ್ನು ಅದರ ಪಾತ್ರಗಳು, ಸ್ಟಾಫ್ ಮತ್ತು ನಿನ್ನ ಎಂಟ್ರಿಯೊಂದಿಗೆ ಒಂದೇ ರಿಕ್ವೆಸ್ಟ್‌ನಲ್ಲಿ ಲೋಡ್ ಮಾಡು';

  @override
  String get togetherTitle => 'ಜೊತೆಗೂಡಿ ನೋಡು';

  @override
  String get togetherIntro =>
      'ನಿನ್ನ ಸ್ನೇಹಿತ ಕಳಿಸಿದ ರೂಮ್ ಲಿಂಕ್ ಪೇಸ್ಟ್ ಮಾಡು. ನೀನು ತಕ್ಷಣ ಸೇರುತ್ತೀಯ ಮತ್ತು ಅವರು ನೋಡಲು ಶುರು ಮಾಡಿದಾಗ ಪ್ಲೇಯರ್ ತೆರೆಯುತ್ತದೆ.';

  @override
  String get togetherName => 'ನಿನ್ನ ಹೆಸರು';

  @override
  String get togetherConnecting => 'ಕನೆಕ್ಟ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get togetherLeave => 'ರೂಮ್ ಬಿಡು';

  @override
  String get togetherYou => 'ನೀನು';

  @override
  String get togetherNoChat => 'ಇನ್ನೂ ಸಂದೇಶಗಳಿಲ್ಲ';

  @override
  String get togetherChatHint => 'ಸಂದೇಶ';

  @override
  String get togetherCopyInvite => 'ಆಹ್ವಾನ ಕಾಪಿ ಮಾಡು';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'ಸರ್ವರ್ ಮತ್ತು ರೂಮ್ ಕಾಪಿ ಆದವು';

  @override
  String get togetherConnectionLost => 'ಕನೆಕ್ಷನ್ ಕಳೆದುಹೋಯ್ತು';

  @override
  String togetherConnectedTo(String room) {
    return '$room ಗೆ ಕನೆಕ್ಟ್ ಆಯ್ತು';
  }

  @override
  String togetherFailed(String error) {
    return 'ಕನೆಕ್ಟ್ ಆಗಲಿಲ್ಲ: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ಸೇರಿದರು';
  }

  @override
  String togetherLeft(String name) {
    return '$name ಬಿಟ್ಟರು';
  }

  @override
  String togetherPaused(String name) {
    return '$name ಪಾಸ್ ಮಾಡಿದರು';
  }

  @override
  String togetherResumed(String name) {
    return '$name ಮತ್ತೆ ಶುರು ಮಾಡಿದರು';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time ಗೆ ಜಿಗಿದರು';
  }

  @override
  String get togetherFollowFailed =>
      'ಹೋಸ್ಟ್‌ನ ಎಪಿಸೋಡ್ ತೆರೆಯಲು ಆಗಲಿಲ್ಲ. ನೀನೇ ತೆರೆ.';

  @override
  String get togetherJoinRole => 'ರೂಮ್ ಸೇರು';

  @override
  String get togetherOpenHost => 'ಹೋಸ್ಟ್‌ನ ಎಪಿಸೋಡ್ ತೆರೆ';

  @override
  String get togetherShowChat => 'ಲೈವ್ ಚಾಟ್ ತೋರಿಸು';

  @override
  String get togetherWaitingHost =>
      'ಹೋಸ್ಟ್ ಎಪಿಸೋಡ್ ಶುರು ಮಾಡುವುದಕ್ಕೆ ಕಾಯುತ್ತಿದೆ';

  @override
  String get togetherRoomLink => 'ರೂಮ್ ಲಿಂಕ್';

  @override
  String get togetherBadLink => 'ಇದು ರೂಮ್ ಲಿಂಕ್ ಅಲ್ಲ';

  @override
  String get togetherHostClosed => 'ಹೋಸ್ಟ್ ರೂಮ್ ಮುಚ್ಚಿದರು';

  @override
  String get togetherNowPlaying => 'ಈಗ ಪ್ಲೇ ಆಗುತ್ತಿದೆ';

  @override
  String togetherWatchingCount(int count) {
    return '$count ಜನ ನೋಡುತ್ತಿದ್ದಾರೆ';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user ಪಾಸ್ ಮಾಡಲು ಬಯಸುತ್ತಾರೆ';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user ಮುಂದುವರಿಸಲು ಬಯಸುತ್ತಾರೆ';
  }

  @override
  String get togetherChip => 'ಜೊತೆಗೂಡಿ';

  @override
  String get togetherSettingsDesc => 'ಲಿಂಕ್ ಮೂಲಕ ಸ್ನೇಹಿತನ ರೂಮ್ ಸೇರು';

  @override
  String get novelBilingual => 'ಮೂಲ ಮತ್ತು ಅನುವಾದ ತೋರಿಸು';

  @override
  String get novelBilingualDesc =>
      'ಪ್ರತಿ ಪ್ಯಾರಾಗ್ರಾಫ್ ಮೂಲ ಪಠ್ಯವನ್ನು ಮತ್ತು ಅದರ ಕೆಳಗೆ ಅನುವಾದವನ್ನು ತೋರಿಸುತ್ತದೆ';

  @override
  String get novelTranslateTo => 'ಇದಕ್ಕೆ ಅನುವಾದಿಸು';

  @override
  String get novelTranslateOff => 'ಆಫ್';

  @override
  String get novelSectionSpeech => 'ಟೆಕ್ಸ್ಟ್ ಟು ಸ್ಪೀಚ್';

  @override
  String get novelSpeechRate => 'ಮಾತಿನ ವೇಗ';

  @override
  String get novelSpeechPitch => 'ಮಾತಿನ ಪಿಚ್';

  @override
  String get novelSpeak => 'ಗಟ್ಟಿಯಾಗಿ ಓದು';

  @override
  String get novelSpeakStop => 'ಗಟ್ಟಿಯಾಗಿ ಓದುವುದನ್ನು ನಿಲ್ಲಿಸು';

  @override
  String get novelTranslate => 'ಅಧ್ಯಾಯ ಅನುವಾದಿಸು';

  @override
  String get novelTranslateShowOriginal => 'ಮೂಲ ತೋರಿಸು';

  @override
  String novelTranslateFailed(String error) {
    return 'ಅನುವಾದ ವಿಫಲವಾಯ್ತು: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಟೆಕ್ಸ್ಟ್ ಟು ಸ್ಪೀಚ್ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get novelSpeechVoice => 'ಧ್ವನಿ';

  @override
  String get novelSpeechVoiceDefault => 'ಸಿಸ್ಟಂ ಡೀಫಾಲ್ಟ್';

  @override
  String get novelSpeakPrevious => 'ಹಿಂದಿನ ಸಾಲು';

  @override
  String get novelSpeakNext => 'ಮುಂದಿನ ಸಾಲು';

  @override
  String get novelTapPaging => 'ಪುಟ ತಿರುಗಿಸಲು ಅಂಚುಗಳನ್ನು ಟ್ಯಾಪ್ ಮಾಡು';

  @override
  String get novelTapPagingDesc =>
      'ಒಂದು ಪುಟ ಸ್ಕ್ರಾಲ್ ಮಾಡಲು ಎಡ ಅಥವಾ ಬಲ ಬದಿ ಟ್ಯಾಪ್ ಮಾಡು, ಮಧ್ಯ ಕಂಟ್ರೋಲ್‌ಗಳನ್ನು ತೋರಿಸುತ್ತದೆ';

  @override
  String get novelPaged => 'Page turning';

  @override
  String get novelPagedDesc =>
      'Split the chapter into pages and swipe or tap to turn them instead of scrolling';

  @override
  String novelPageOf(int current, int total) {
    return 'Page $current of $total';
  }

  @override
  String get novelPaginating => 'Laying out pages';

  @override
  String get novelTools => 'Contents, search and highlights';

  @override
  String get novelContents => 'Contents';

  @override
  String get novelContentsEmpty => 'This chapter has no headings';

  @override
  String get novelSearch => 'Search';

  @override
  String get novelSearchHint => 'Search in this chapter';

  @override
  String get novelSearchNone => 'No matches';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 match',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Highlights';

  @override
  String get novelHighlightsEmpty =>
      'Select some text and tap Highlight to keep it here';

  @override
  String get novelHighlight => 'Highlight';

  @override
  String get novelHighlightNote => 'Note';

  @override
  String get novelHighlightNoteHint => 'Add a note';

  @override
  String get novelHighlightRemove => 'Remove highlight';

  @override
  String get novelHighlightFailed =>
      'Couldn\'t match that selection to the text';

  @override
  String novelMinutesLeft(int count) {
    return '$count ನಿಮಿಷ ಉಳಿದಿದೆ';
  }

  @override
  String get novelBold => 'ದಪ್ಪ ಅಕ್ಷರ';

  @override
  String get novelBoldDesc => 'ಹೆಚ್ಚು ದಪ್ಪ ಬಳಸು';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter ಮುಗಿಯಿತು';
  }

  @override
  String readerNextUp(String chapter) {
    return 'ಮುಂದೆ: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'ಹಿಂದೆ: $chapter';
  }

  @override
  String get readerNoPages => 'ಈ ಅಧ್ಯಾಯದಲ್ಲಿ ಪುಟಗಳಿಲ್ಲ';

  @override
  String get readerLoadingPages => 'ಪುಟಗಳು ಲೋಡ್ ಆಗುತ್ತಿವೆ…';

  @override
  String get readerSlowPage => 'ಈ ಪುಟ ಇನ್ನೂ ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get readerPageFailed => 'ಈ ಪುಟ ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get playerShowComments => 'ಕಾಮೆಂಟ್‌ಗಳನ್ನು ತೋರಿಸು';

  @override
  String get playerHideComments => 'ಕಾಮೆಂಟ್‌ಗಳನ್ನು ಮರೆಮಾಡು';

  @override
  String get playerSubtitles => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳು';

  @override
  String get playerSubtitlesOff => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳು ಆಫ್';

  @override
  String get playerAudio => 'ಆಡಿಯೋ';

  @override
  String get playerAddSubtitle => 'ಸಬ್‌ಟೈಟಲ್ ಫೈಲ್ ಸೇರಿಸು';

  @override
  String get playerAddAudio => 'ಆಡಿಯೋ ಫೈಲ್ ಸೇರಿಸು';

  @override
  String get playerChapters => 'ಅಧ್ಯಾಯಗಳು';

  @override
  String get playerSkipSubmit => 'Submit skip times';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'End';

  @override
  String get playerSkipUseNow => 'Use current position';

  @override
  String get playerSkipSend => 'Submit to AniSkip';

  @override
  String get playerSkipSent => 'Skip times submitted to AniSkip, thank you';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip refused the skip times: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details.';

  @override
  String get playerSkipNoMal =>
      'This title has no MyAnimeList id, AniSkip can\'t take it';

  @override
  String get playerNoChapters => 'ಅಧ್ಯಾಯಗಳಿಲ್ಲ';

  @override
  String get playerTimestamp => 'ಟೈಮ್‌ಸ್ಟ್ಯಾಂಪ್';

  @override
  String get playerAutoPlayDelay => 'ಮುಂದಿನ ಎಪಿಸೋಡ್ ಕೌಂಟ್‌ಡೌನ್';

  @override
  String get playerWatchedAt => 'ನೋಡಿದ್ದು ಎಂದು ಎಣಿಸುವ ಸಮಯ';

  @override
  String playerNextIn(int seconds) {
    return 'ಮುಂದಿನ ಎಪಿಸೋಡ್ $seconds ಸೆಕೆಂಡ್‌ನಲ್ಲಿ';
  }

  @override
  String get playerPlayNow => 'ಈಗಲೇ ಪ್ಲೇ ಮಾಡು';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: ಈ ಶೀರ್ಷಿಕೆಗೆ ತಾನಾಗಿ ಸ್ಕಿಪ್ ಆಗುತ್ತದೆ';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: ಈ ಶೀರ್ಷಿಕೆಗೆ ತಾನಾಗಿ ಸ್ಕಿಪ್ ಆಗುವುದಿಲ್ಲ';
  }

  @override
  String get playerAudioLanguage => 'ಆದ್ಯತೆಯ ಆಡಿಯೋ ಭಾಷೆ';

  @override
  String get playerLanguageOrderHint =>
      'ಭಾಷೆಗಳನ್ನು ಕಾಮಾದಿಂದ ಬೇರ್ಪಡಿಸು. ಮೊದಲು ಸಿಕ್ಕಿದ್ದು ಬಳಕೆಯಾಗುತ್ತದೆ.';

  @override
  String get playerPip => 'ಪಿಕ್ಚರ್ ಇನ್ ಪಿಕ್ಚರ್';

  @override
  String get playerAutoPip => 'ಬಿಟ್ಟು ಹೋದಾಗ ಪಿಕ್ಚರ್ ಇನ್ ಪಿಕ್ಚರ್';

  @override
  String get playerAutoPipDesc =>
      'ನೀನು ಆ್ಯಪ್ ಬಿಟ್ಟು ಹೋದಾಗ ಚಿಕ್ಕ ವಿಂಡೋದಲ್ಲಿ ಪ್ಲೇ ಆಗುತ್ತಲೇ ಇರಲಿ';

  @override
  String playerAutoPlaying(String title) {
    return 'ಮುಂದೆ $title ಪ್ಲೇ ಆಗುತ್ತಿದೆ…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ಶೇಡರ್‌ಗಳನ್ನು ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ: $error';
  }

  @override
  String playerChapter(int number) {
    return 'ಅಧ್ಯಾಯ $number';
  }

  @override
  String get playerPerTitle => 'ಈ ಶೀರ್ಷಿಕೆಗೆ ಮಾತ್ರ';

  @override
  String get playerPerTitleDesc =>
      'ಈ ಆಯ್ಕೆಗಳನ್ನು ಈ ಶೀರ್ಷಿಕೆಗೆ ಇಟ್ಟು ನಿನ್ನ ಡೀಫಾಲ್ಟ್‌ಗಳನ್ನು ಮುಟ್ಟಬೇಡ';

  @override
  String get playerSwapGestures => 'ಸ್ವೈಪ್ ಬದಿ ಅದಲುಬದಲು';

  @override
  String get playerSwapGesturesDesc => 'ಎಡಕ್ಕೆ ಬ್ರೈಟ್‌ನೆಸ್, ಬಲಕ್ಕೆ ವಾಲ್ಯೂಮ್';

  @override
  String get playerOpenBig => 'ದೊಡ್ಡ ವ್ಯೂನಲ್ಲಿ ತೆರೆಯಿರಿ';

  @override
  String get playerOpenBigDesc =>
      'ಎಪಿಸೋಡ್ ಲಿಸ್ಟ್ ಇಲ್ಲದೆ ಪ್ಲೇಯರ್ ನೇರವಾಗಿ ಫುಲ್‌ಸ್ಕ್ರೀನ್‌ನಲ್ಲಿ ಶುರುವಾಗುತ್ತದೆ';

  @override
  String get playerPauseOnBlur => 'ಫೋಕಸ್ ಹೋದರೆ ಪಾಸ್ ಮಾಡಿ';

  @override
  String get playerPauseOnBlurDesc =>
      'ನೋಟಿಫಿಕೇಶನ್ ಪ್ಯಾನೆಲ್‌ನಂತೆ ಆ್ಯಪ್ ಮುಚ್ಚಿಹೋದರೆ ಪಾಸ್ ಆಗುತ್ತದೆ, ವಾಪಸ್ ಬಂದಾಗ ಮುಂದುವರಿಯುತ್ತದೆ';

  @override
  String get playerAudioOutput => 'ಆಡಿಯೋ ಔಟ್‌ಪುಟ್';

  @override
  String get fontAppDefault => 'ಆ್ಯಪ್ ಫಾಂಟ್';

  @override
  String get fontImport => 'ಫಾಂಟ್ ಇಂಪೋರ್ಟ್ ಮಾಡು';

  @override
  String get fontSample => 'ಬೇಗನೆ ಕಂದು ಬಣ್ಣದ ನರಿ ಸೋಮಾರಿ ನಾಯಿಯ ಮೇಲೆ ಹಾರುತ್ತದೆ';

  @override
  String get playerSubtitleDelay => 'ಸಬ್‌ಟೈಟಲ್ ವಿಳಂಬ';

  @override
  String get playerAudioDelay => 'ಆಡಿಯೋ ವಿಳಂಬ';

  @override
  String get playerDelayReset => 'ರೀಸೆಟ್';

  @override
  String get playerOnlineSubtitles => 'ಆನ್‌ಲೈನ್ ಸಬ್‌ಟೈಟಲ್‌ಗಳು';

  @override
  String get playerOnlineSearchHint => 'ಶೀರ್ಷಿಕೆ ಮತ್ತು ಎಪಿಸೋಡ್';

  @override
  String get playerOnlineNone => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳು ಸಿಗಲಿಲ್ಲ';

  @override
  String playerOnlineFailed(String error) {
    return 'ಸಬ್‌ಟೈಟಲ್ ಹುಡುಕಾಟ ವಿಫಲವಾಯ್ತು: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ಈ ಸಬ್‌ಟೈಟಲ್ ಡೌನ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ: $error';
  }

  @override
  String get playerOnlineMatch => 'ಈ ಫೈಲ್‌ಗೆ ಹೊಂದುತ್ತದೆ';

  @override
  String get playerOnlineEpisode => 'ಎಪಿಸೋಡ್ ಹೊಂದಾಣಿಕೆ';

  @override
  String playerOnlineDownloads(int count) {
    return '$count ಡೌನ್‌ಲೋಡ್‌ಗಳು';
  }

  @override
  String get playerSeekPreview => 'ಸೀಕ್ ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get playerSeekPreviewDesc =>
      'ಸ್ಕ್ರಬ್ ಮಾಡುವಾಗ ಸೀಕ್ ಬಾರ್ ಮೇಲೆ ಚಿಕ್ಕ ಫ್ರೇಮ್ ಪೂರ್ವವೀಕ್ಷಣೆ ತೋರಿಸು. ಕಡಿಮೆ ರೆಸಲ್ಯೂಶನ್ ಡಿಕೋಡರ್ ಒಂದು ಹೆಚ್ಚುವರಿ ತೆರೆಯುತ್ತದೆ, ಹಾಗಾಗಿ ಸ್ಟ್ರೀಮ್‌ಗಳಲ್ಲಿ ಹೆಚ್ಚು ಡೇಟಾ ಬಳಕೆಯಾಗುತ್ತದೆ.';

  @override
  String get playerSettingsChip => 'ಸೆಟ್ಟಿಂಗ್ಸ್';

  @override
  String get playerAudioDevice => 'ಆಡಿಯೋ ಡಿವೈಸ್';

  @override
  String get settingsDownloads => 'ಡೌನ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get settingsDownloadsDesc =>
      'ಆಫ್‌ಲೈನ್ ಎಪಿಸೋಡ್‌ಗಳು, ಕ್ಯೂ ಮತ್ತು ಆಫ್‌ಲೈನ್ ಮೋಡ್';

  @override
  String get downloadsTitle => 'ಡೌನ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get widgetContinue => 'Continue';

  @override
  String get widgetReleases => 'Releasing soon';

  @override
  String get widgetMore => 'Also in progress';

  @override
  String get widgetNothing => 'Nothing to continue yet';

  @override
  String get downloadStorageTitle => 'Storage';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 download',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size already watched or read';
  }

  @override
  String get downloadFreeUp => 'Free up space';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count watched downloads',
      one: '1 watched download',
    );
    return 'Delete $_temp0 and free $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Freed $size';
  }

  @override
  String get downloadDeleteWatched => 'Delete watched';

  @override
  String get downloadDeleteAll => 'Delete all';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Delete every download of $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Nothing you have finished is downloaded';

  @override
  String get downloadStorageEmpty => 'No downloads are using space';

  @override
  String get downloadsOpenDesc =>
      'ಕ್ಯೂ ಮತ್ತು ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಸಿದ ಎಲ್ಲವನ್ನೂ ನೋಡು';

  @override
  String get downloadTitle => 'ಡೌನ್‌ಲೋಡ್';

  @override
  String get downloadAlready => 'ಈಗಾಗಲೇ ಡೌನ್‌ಲೋಡ್ ಆಗಿದೆ ಅಥವಾ ಕ್ಯೂನಲ್ಲಿದೆ';

  @override
  String get downloadPickStream => 'ಯಾವ ಸ್ಟ್ರೀಮ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಬೇಕು?';

  @override
  String get downloadPickSubtitle => 'ಯಾವ ಸಬ್‌ಟೈಟಲ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಬೇಕು?';

  @override
  String get downloadPickAudio => 'ಯಾವ ಆಡಿಯೋ ಟ್ರ್ಯಾಕ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಬೇಕು?';

  @override
  String get downloadNoAudio => 'ಹೆಚ್ಚುವರಿ ಆಡಿಯೋ ಇಲ್ಲ';

  @override
  String get downloadAudio => 'ಆಡಿಯೋ';

  @override
  String get downloadNoSubtitle => 'ಸಬ್‌ಟೈಟಲ್ ಇಲ್ಲ';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ಈ ಸ್ಟ್ರೀಮ್ ಒಂದು HLS ಪ್ಲೇಲಿಸ್ಟ್. ಡೌನ್‌ಲೋಡ್ ಮಾಡಲು FFmpeg ಆಡ್-ಆನ್ ಬೇಕು.';

  @override
  String get downloadSourceMissing => 'ಈ ಎಪಿಸೋಡ್‌ನ ಸೋರ್ಸ್ ಇನ್‌ಸ್ಟಾಲ್ ಆಗಿಲ್ಲ';

  @override
  String get downloadWaitingConnection => 'ಕನೆಕ್ಷನ್‌ಗಾಗಿ ಕಾಯುತ್ತಿದೆ';

  @override
  String get downloadSubtitles => 'ಸಬ್‌ಟೈಟಲ್‌ಗಳು';

  @override
  String get downloadDownloaded => 'ಡೌನ್‌ಲೋಡ್ ಆಗಿದೆ';

  @override
  String get downloadOffline => 'ಆಫ್‌ಲೈನ್';

  @override
  String get downloadDelete => 'ಡೌನ್‌ಲೋಡ್ ಅಳಿಸು';

  @override
  String get downloadCancel => 'ರದ್ದುಮಾಡು';

  @override
  String get downloadPause => 'ವಿರಾಮ';

  @override
  String get downloadPaused => 'ವಿರಾಮದಲ್ಲಿದೆ';

  @override
  String get downloadResume => 'ಮುಂದುವರಿಸು';

  @override
  String get downloadPauseAll => 'ಎಲ್ಲವನ್ನೂ ವಿರಾಮ ಮಾಡು';

  @override
  String get downloadResumeAll => 'ಎಲ್ಲವನ್ನೂ ಮುಂದುವರಿಸು';

  @override
  String get downloadQueuedState => 'ಕ್ಯೂನಲ್ಲಿ ಕಾಯುತ್ತಿದೆ';

  @override
  String get downloadResolving => 'ಸ್ಟ್ರೀಮ್ ತರುತ್ತಿದೆ…';

  @override
  String get downloadUsedFallback =>
      'ಹೊಂದುವ ಸ್ಟ್ರೀಮ್ ಇಲ್ಲ, ಮೊದಲನೆಯದನ್ನು ಬಳಸಿದೆ';

  @override
  String get downloadTabQueue => 'ಕ್ಯೂ';

  @override
  String get downloadTabDone => 'ಮುಗಿಯಿತು';

  @override
  String get downloadTabFailed => 'ವಿಫಲವಾದದ್ದು';

  @override
  String get downloadEmptyQueue => 'ಯಾವುದೂ ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತಿಲ್ಲ';

  @override
  String get downloadEmptyDone => 'ಇನ್ನೂ ಏನೂ ಡೌನ್‌ಲೋಡ್ ಆಗಿಲ್ಲ';

  @override
  String get downloadEmptyFailed => 'ವಿಫಲ ಡೌನ್‌ಲೋಡ್‌ಗಳಿಲ್ಲ';

  @override
  String get downloadNext => 'ಮುಂದಿನ ಎಪಿಸೋಡ್';

  @override
  String downloadNextN(int count) {
    return 'ಮುಂದಿನ $count ಎಪಿಸೋಡ್‌ಗಳು';
  }

  @override
  String downloadUnwatched(int count) {
    return 'ನೋಡದ ಎಲ್ಲವೂ ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ಈ ರೇಂಜ್ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'ಎಲ್ಲಾ ಎಪಿಸೋಡ್‌ಗಳು ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಎಪಿಸೋಡ್‌ಗಳು ಕ್ಯೂಗೆ ಸೇರಿದವು',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ಡೌನ್‌ಲೋಡ್ ಆಯ್ತು';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ಡೌನ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ';
  }

  @override
  String downloadStorage(String size) {
    return 'ಡೌನ್‌ಲೋಡ್‌ಗಳು $size ಬಳಸುತ್ತಿವೆ';
  }

  @override
  String get downloadQueueHeader => 'ಕ್ಯೂ';

  @override
  String get downloadParallel => 'ಒಮ್ಮೆಲೇ ಡೌನ್‌ಲೋಡ್‌ಗಳು';

  @override
  String get downloadParallelDesc =>
      'ಒಂದೊಂದಾಗಿ ಅಥವಾ ಹಲವು ಒಟ್ಟಿಗೆ ಡೌನ್‌ಲೋಡ್ ಮಾಡು';

  @override
  String get downloadOneByOne => 'ಒಂದೊಂದಾಗಿ';

  @override
  String get downloadNotifications => 'ಡೌನ್‌ಲೋಡ್ ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get downloadNotificationsDesc =>
      'ಸಿಸ್ಟಂ ಸಪೋರ್ಟ್ ಮಾಡುವಲ್ಲಿ ಲೈವ್ ಪ್ರಗತಿ, ಇಲ್ಲದಿದ್ದರೆ ಡೌನ್‌ಲೋಡ್ ಮುಗಿದಾಗ ಒಂದು ಟಿಪ್ಪಣಿ';

  @override
  String get downloadNotifyLive => 'ಲೈವ್';

  @override
  String get downloadNotifyDone => 'ಮುಗಿದಾಗ';

  @override
  String get downloadNotifyOff => 'ಆಫ್';

  @override
  String get downloadInfoFile => 'ಪ್ರತಿ ಡೌನ್‌ಲೋಡ್ ಪಕ್ಕ ಮಾಹಿತಿ ಫೈಲ್ ಬರೆ';

  @override
  String get downloadInfoFileDesc =>
      'ಸ್ಟ್ರೀಮ್, ಕ್ವಾಲಿಟಿ, ಸಬ್‌ಟೈಟಲ್ ಮತ್ತು ಸ್ಕಿಪ್ ಸಮಯಗಳನ್ನು ಚಿಕ್ಕ .json ಫೈಲ್ ಆಗಿ ಉಳಿಸು';

  @override
  String get offlineHeader => 'ಆಫ್‌ಲೈನ್';

  @override
  String get offlineModeDesc =>
      'ಆಟೋ ಆ್ಯಪ್ ಕನೆಕ್ಷನ್ ಇಲ್ಲದೆ ಶುರುವಾದಾಗ ಮಾತ್ರ ಆಫ್‌ಲೈನ್ ಆಗುತ್ತದೆ. ಯಾವಾಗಲೂ ಎಂದರೆ ನೀನು ಬದಲಿಸುವವರೆಗೆ ಆಫ್‌ಲೈನ್‌ನಲ್ಲೇ ಇರುತ್ತದೆ.';

  @override
  String get offlineModeOff => 'ಆಫ್';

  @override
  String get offlineModeAlways => 'ಯಾವಾಗಲೂ';

  @override
  String get offlineModeOn =>
      'ಆಫ್‌ಲೈನ್ ಮೋಡ್ ಆನ್ ಆಗಿದೆ. ಬದಲಾವಣೆಗಳು ಇಲ್ಲಿ ಉಳಿಯುತ್ತವೆ ಮತ್ತು ನೀನು ಮತ್ತೆ ಆನ್‌ಲೈನ್ ಬಂದಾಗ ಕಳಿಸಲ್ಪಡುತ್ತವೆ.';

  @override
  String get offlineSaved =>
      'ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಸಲಾಗಿದೆ, ನೀನು ಆನ್‌ಲೈನ್ ಇದ್ದಾಗ ಸಿಂಕ್ ಆಗುತ್ತದೆ';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಬದಲಾವಣೆಗಳು ಸಿಂಕ್ ಆದವು',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಬದಲಾವಣೆಗಳು ಸಿಂಕ್‌ಗಾಗಿ ಕಾಯುತ್ತಿವೆ',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'ಸಿಂಕ್‌ಗಾಗಿ ಕಾಯುತ್ತಿರುವ ಬದಲಾವಣೆಗಳು';

  @override
  String get offlinePendingNone => 'ಯಾವುದೂ ಕಾಯುತ್ತಿಲ್ಲ';

  @override
  String get offlineSyncNow => 'ಈಗ ಸಿಂಕ್ ಮಾಡು';

  @override
  String get offlineDiscard => 'ತ್ಯಜಿಸು';

  @override
  String get downloadNotOffline =>
      'ಈ ಎಪಿಸೋಡ್ ಡೌನ್‌ಲೋಡ್ ಆಗಿಲ್ಲ, ಹಾಗಾಗಿ ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get offlineModeChip => 'ಆಫ್‌ಲೈನ್';

  @override
  String get downloadNextChapter => 'ಮುಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String downloadNextChapters(int count) {
    return 'ಮುಂದಿನ $count ಅಧ್ಯಾಯಗಳು';
  }

  @override
  String downloadUnread(int count) {
    return 'ಓದದ ಎಲ್ಲವೂ ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'ಎಲ್ಲಾ ಅಧ್ಯಾಯಗಳು ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total ಪುಟಗಳು';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count ಪುಟಗಳು';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ಆಡ್-ಆನ್ ಬೇಕು';

  @override
  String get downloadFfmpegBody =>
      'ಈ ಸ್ಟ್ರೀಮ್ ಒಂದು HLS ಪ್ಲೇಲಿಸ್ಟ್. FFmpeg ಆಡ್-ಆನ್ ಅದರ ತುಂಡುಗಳನ್ನು ಒಂದೇ mp4 ಫೈಲ್ ಆಗಿ ಸೇರಿಸುತ್ತದೆ. ಅದಿಲ್ಲದಿದ್ದರೆ ತುಂಡುಗಳು ಎಪಿಸೋಡ್ ಫೋಲ್ಡರ್‌ನಲ್ಲಿ ಉಳಿದು ಅಲ್ಲಿಂದಲೇ ಪ್ಲೇ ಆಗುತ್ತವೆ.';

  @override
  String get downloadFfmpegInstall => 'ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡು';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ಇನ್‌ಸ್ಟಾಲ್ ಆಗುತ್ತಿದೆ, ಸ್ವಲ್ಪ ಸಮಯ ಹಿಡಿಯಬಹುದು…';

  @override
  String get downloadFinishing => 'ತುಂಡುಗಳನ್ನು ಒಂದೇ ಫೈಲ್‌ಗೆ ಸೇರಿಸುತ್ತಿದೆ…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total ಭಾಗಗಳು';
  }

  @override
  String get downloadTorrentNoFile =>
      'ಈ ಟೊರೆಂಟ್‌ನಲ್ಲಿ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲು ವಿಡಿಯೋ ಫೈಲ್ ಇಲ್ಲ';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಐಟಂ ಡೌನ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'ನೋಡಿದ ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ಅಳಿಸು';

  @override
  String get downloadAutoDeleteDesc =>
      'ನಿನ್ನ ಪ್ರಗತಿ ಆ ಎಪಿಸೋಡ್ ಅಥವಾ ಅಧ್ಯಾಯ ತಲುಪಿದಾಗ ಡೌನ್‌ಲೋಡ್ ತೆಗೆ';

  @override
  String get downloadConnections => 'ಪ್ರತಿ ಡೌನ್‌ಲೋಡ್‌ಗೆ ಕನೆಕ್ಷನ್‌ಗಳು';

  @override
  String get downloadConnectionsDesc =>
      'ದೊಡ್ಡ ಫೈಲ್ ಅನ್ನು ಒಂದೇ ಸಮಯದಲ್ಲಿ ತರುವ ಭಾಗಗಳಾಗಿ ಒಡೆಯುತ್ತದೆ. ಕೆಲವು ಸರ್ವರ್‌ಗಳು ಇದನ್ನು ಮಿತಿಗೊಳಿಸುತ್ತವೆ.';

  @override
  String get downloadPlayChoice => 'ಇಲ್ಲಿಂದ ಪ್ಲೇ ಮಾಡು';

  @override
  String get downloadPlayLocalDesc => 'ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಸಿದ ಫೈಲ್';

  @override
  String get downloadPlayStream => 'ಆನ್‌ಲೈನ್‌ನಲ್ಲಿ ಸ್ಟ್ರೀಮ್ ಮಾಡು';

  @override
  String get downloadPlayStreamDesc => 'ಸೋರ್ಸ್‌ನಿಂದ ಎಪಿಸೋಡ್ ಲೋಡ್ ಮಾಡು';

  @override
  String get offlineFeedTitle => 'ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಡೌನ್‌ಲೋಡ್ ಆಗಿದೆ';

  @override
  String get offlineFeedEmpty =>
      'ನೀನು ಆನ್‌ಲೈನ್ ಇರುವಾಗ ಏನಾದರೂ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದರೆ ಅದು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ';

  @override
  String get offlineEnabled => 'ಆಫ್‌ಲೈನ್ ಮೋಡ್ ಆನ್ ಆಗಿದೆ';

  @override
  String get offlineDisabled => 'ಆಫ್‌ಲೈನ್ ಮೋಡ್ ಆಫ್ ಆಗಿದೆ';

  @override
  String get downloadReadChoice => 'ಇಲ್ಲಿಂದ ಓದು';

  @override
  String get downloadReadLocalDesc => 'ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಸಿದ ಪುಟಗಳು';

  @override
  String get downloadReadOnline => 'ಆನ್‌ಲೈನ್‌ನಲ್ಲಿ ಓದು';

  @override
  String get downloadReadOnlineDesc => 'ಸೋರ್ಸ್‌ನಿಂದ ಅಧ್ಯಾಯ ಲೋಡ್ ಮಾಡು';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name ಅನ್ನು ಈ ಡಿವೈಸ್‌ನಿಂದ ಅಳಿಸಬೇಕಾ?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name ಡೌನ್‌ಲೋಡ್ ರದ್ದುಮಾಡಬೇಕಾ? ಈಗಾಗಲೇ ಡೌನ್‌ಲೋಡ್ ಆದದ್ದು ಅಳಿಸಲ್ಪಡುತ್ತದೆ.';
  }

  @override
  String get downloadFfmpegFolder => 'ಫೋಲ್ಡರ್ ಆಗಿ ಇಡು';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'ಎಂದಿಗೂ ಕಳಿಸದ $count ಬದಲಾವಣೆಗಳನ್ನು ಬಿಸಾಡಬೇಕಾ? ಇದನ್ನು ಹಿಂತಿರುಗಿಸಲು ಆಗುವುದಿಲ್ಲ.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi ಗಾಗಿ ಕಾಯುತ್ತಿದೆ';

  @override
  String get downloadWaitingMetered => 'ಮೀಟರ್ ಕನೆಕ್ಷನ್‌ನಲ್ಲಿ ವಿರಾಮದಲ್ಲಿದೆ';

  @override
  String get downloadWifiOnly => 'Wi-Fi ಮಾತ್ರ';

  @override
  String get downloadWifiOnlyDesc =>
      'ನೀನು ಮೊಬೈಲ್ ಡೇಟಾದಲ್ಲಿರುವಾಗ ಡೌನ್‌ಲೋಡ್‌ಗಳು ಕಾಯುತ್ತವೆ';

  @override
  String get downloadMetered => 'ಮೀಟರ್ ಕನೆಕ್ಷನ್‌ಗಳಲ್ಲಿ ವಿರಾಮ';

  @override
  String get downloadMeteredDesc =>
      'ನಿನ್ನ ಡಿವೈಸ್ ಮೀಟರ್ ಎಂದು ಗುರುತಿಸಿದ Wi-Fi ನಲ್ಲೂ ಕಾಯುತ್ತದೆ';

  @override
  String get downloadSpeedLimit => 'ವೇಗ ಮಿತಿ';

  @override
  String get downloadSpeedLimitDesc => 'ಒಟ್ಟು ಡೌನ್‌ಲೋಡ್ ವೇಗಕ್ಕೆ ಮಿತಿ ಹಾಕುತ್ತದೆ';

  @override
  String get downloadUnlimited => 'ಮಿತಿ ಇಲ್ಲ';

  @override
  String get downloadMoveToTop => 'ಮೇಲಕ್ಕೆ ಸರಿಸು';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds ಸೀಡ್‌ಗಳು · $peers ಪೀರ್‌ಗಳು';
  }

  @override
  String get downloadTorrentFile => 'ಯಾವ ಫೈಲ್?';

  @override
  String get downloadTorrentAuto => 'ಎಪಿಸೋಡ್ ತಾನಾಗಿ ಹೊಂದಿಸು';

  @override
  String get downloadTorrentLoading => 'ಟೊರೆಂಟ್ ಓದುತ್ತಿದೆ…';

  @override
  String get watchAutoSource => 'ಮುಂದಿನ ಸೋರ್ಸ್‌ಗೆ ತಾನಾಗಿ ಬದಲಿಸು';

  @override
  String get watchAutoSourceDesc =>
      'ಸೋರ್ಸ್‌ಗೆ ಶೀರ್ಷಿಕೆ ಸಿಗದಿದ್ದರೆ ಅಥವಾ ಲೋಡ್ ಆಗದಿದ್ದರೆ, ಇನ್‌ಸ್ಟಾಲ್ ಆದ ಮುಂದಿನ ಸೋರ್ಸ್ ಪ್ರಯತ್ನಿಸು';

  @override
  String get extensionTest => 'ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳನ್ನು ಟೆಸ್ಟ್ ಮಾಡು';

  @override
  String get extensionTestCopy => 'ವಿಫಲತೆಗಳು ಮತ್ತು ಅವುಗಳ ಲಾಗ್‌ಗಳನ್ನು ಕಾಪಿ ಮಾಡು';

  @override
  String get extensionTestQuery => 'ಹುಡುಕಾಟ ಪದ';

  @override
  String get extensionTestRun => 'ರನ್';

  @override
  String get extensionTestStop => 'ನಿಲ್ಲಿಸು';

  @override
  String get extensionTestNone => 'ಈ ವಿಧದ ಇನ್‌ಸ್ಟಾಲ್ ಆದ ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳಿಲ್ಲ';

  @override
  String get extensionTestNotRun => 'ಇನ್ನೂ ಟೆಸ್ಟ್ ಆಗಿಲ್ಲ';

  @override
  String get extensionTestSearch => 'ಹುಡುಕಾಟ';

  @override
  String get extensionTestDetail => 'ವಿವರಗಳು';

  @override
  String get extensionTestUnits => 'ಎಪಿಸೋಡ್‌ಗಳು / ಅಧ್ಯಾಯಗಳು';

  @override
  String get extensionTestLinks => 'ಸ್ಟ್ರೀಮ್‌ಗಳು / ಪುಟಗಳು';

  @override
  String extensionTestFailedAt(String step) {
    return '$step ನಲ್ಲಿ ವಿಫಲ';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total ರಲ್ಲಿ $done ಟೆಸ್ಟ್ ಆದವು · $passed ಪಾಸ್ · $failed ವಿಫಲ';
  }

  @override
  String get extensionTestCopyLogs => 'ಪೂರ್ಣ ಲಾಗ್‌ಗಳೊಂದಿಗೆ ಎಲ್ಲವನ್ನೂ ಕಾಪಿ ಮಾಡು';

  @override
  String get onboardingFeaturesTitle => 'ಎಲ್ಲವೂ ಒಂದೇ ಕಡೆ';

  @override
  String get onboardingFeaturesBody =>
      'ನೀನು ಟ್ರ್ಯಾಕ್ ಮಾಡುವ, ನೋಡುವ, ಓದುವ ಎಲ್ಲವೂ, ಆ್ಯಪ್‌ಗಳ ನಡುವೆ ಹಾರದೆ.';

  @override
  String get onboardingFeatureTrack => 'ಎಲ್ಲವನ್ನೂ ಟ್ರ್ಯಾಕ್ ಮಾಡು';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu ಮತ್ತು MangaBaka ನಲ್ಲಿ ಪಟ್ಟಿಗಳು, ಪ್ರಗತಿ ಮತ್ತು ಸ್ಕೋರ್‌ಗಳು.';

  @override
  String get onboardingFeatureWatch => 'ನೋಡು & ಓದು';

  @override
  String get onboardingFeatureWatchDesc =>
      'ಎಕ್ಸ್‌ಟೆನ್ಶನ್‌ಗಳನ್ನು ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ ಆನಿಮೆ ಸ್ಟ್ರೀಮ್ ಮಾಡು ಅಥವಾ ಮಂಗಾ ಮತ್ತು ನಾವೆಲ್ ಅನ್ನು ಆ್ಯಪ್‌ನಲ್ಲೇ ಓದು.';

  @override
  String get onboardingFeatureOffline => 'ಆಫ್‌ಲೈನ್‌ಗೆ ತೆಗೆದುಕೊಂಡು ಹೋಗು';

  @override
  String get onboardingFeatureOfflineDesc =>
      'ಎಪಿಸೋಡ್ ಮತ್ತು ಅಧ್ಯಾಯಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡು, ಕನೆಕ್ಷನ್ ಇಲ್ಲದೆಯೂ ಮುಂದುವರಿ.';

  @override
  String get onboardingFeatureSync => 'ಪಟ್ಟಿಗಳನ್ನು ಸಿಂಕ್‌ನಲ್ಲಿ ಇಡು';

  @override
  String get onboardingFeatureSyncDesc =>
      'ನಿನ್ನ ಪಟ್ಟಿಯನ್ನು ಸರ್ವಿಸ್‌ಗಳ ನಡುವೆ ಪ್ರತಿಬಿಂಬಿಸು, ಅಥವಾ ಯಾವುದು ಮುಂದಿದೆಯೋ ಅದು ಗೆಲ್ಲಲಿ.';

  @override
  String get onboardingServices => 'ಇವುಗಳೊಂದಿಗೆ ಕೆಲಸ ಮಾಡುತ್ತದೆ';

  @override
  String sourceNotifyOn(String source) {
    return 'You\'ll be told when $source has something new';
  }

  @override
  String get sourceNotifyOff => 'Release notifications off';

  @override
  String get sourceNotifyNeedsSource => 'Pick a source with a match first';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Everything ($count) is already out, nothing to wait for';
  }

  @override
  String get sourceNotifyTooltipOn => 'Stop release notifications';

  @override
  String get sourceNotifyTooltipOff => 'Notify me about new releases';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Episode $number is out on $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Episodes $from–$to are out on $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Chapter $number is out on $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Chapters $from–$to are out on $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titles have something new';
  }

  @override
  String get navSources => 'Sources';

  @override
  String sourceInactiveOpen(String manager) {
    return 'This source belongs to $manager, which isn\'t the active extension service';
  }

  @override
  String get sourceAlertsHeader => 'Release notifications';

  @override
  String get sourceAlertsSwitch => 'Check subscribed titles';

  @override
  String get sourceAlertsSwitchDesc =>
      'Once each time the app opens, for titles you turned the bell on';

  @override
  String get sourceSkipUnstarted => 'Skip titles you haven\'t started';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nothing watched or read yet, but episodes already exist';

  @override
  String get sourceSkipUnseen => 'Skip while you have unseen episodes';

  @override
  String get sourceSkipUnseenDesc =>
      'You still have released episodes to catch up on';

  @override
  String get sourceManage => 'Subscriptions';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles',
      one: '1 title',
      zero: 'No titles',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Check now';

  @override
  String get sourceCheckNowDesc => 'Ignores the schedule and the skip rules';

  @override
  String get sourceChecking => 'Checking…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles have something new',
      one: '1 title has something new',
      zero: 'Nothing new',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'No subscriptions yet';

  @override
  String get sourceEmptyMessage =>
      'Tap the bell above a title\'s episodes to be told about new ones';

  @override
  String get sourceAll => 'All';

  @override
  String sourceInactive(String manager) {
    return 'Inactive: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source isn\'t installed in this extension service';
  }

  @override
  String get sourceUnreachable => 'Source isn\'t responding';

  @override
  String get sourceFinished => 'Finished';

  @override
  String get sourceSkippedCompleted => 'Skipped: completed';

  @override
  String get sourceSkippedUnstarted => 'Skipped: not started';

  @override
  String get sourceSkippedUnseen => 'Skipped: unseen episodes';

  @override
  String get sourceWaiting => 'Waiting for the next release';

  @override
  String sourceNextCheck(String when) {
    return 'Next check $when';
  }

  @override
  String get sourceSoon => 'soon';

  @override
  String sourceInHours(int count) {
    return 'in ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'in ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Latest: $number';
  }

  @override
  String get sourceMute => 'Mute';

  @override
  String get sourceUnmute => 'Unmute';

  @override
  String get sourceMuted => 'Muted';

  @override
  String get sourceUnsubscribe => 'Unsubscribe';

  @override
  String get sourcePickAnother => 'Pick another source';

  @override
  String get sourceOpenExtensions => 'Open extensions';

  @override
  String get sourceNoticesEmpty => 'No release notices yet';

  @override
  String get sourceNoticesEmptyMessage =>
      'New episodes and chapters from your subscribed titles show up here';

  @override
  String get sourceOpenTitle => 'Open title';

  @override
  String get extensionsLoading => 'Loading extensions…';

  @override
  String get updateWhatsNew => 'What\'s new';

  @override
  String get updateLater => 'Later';

  @override
  String get updateSkipVersion => 'Skip this version';

  @override
  String get updatePreparing => 'Preparing…';

  @override
  String get updateDownloading => 'Downloading';

  @override
  String get updateInstalling => 'Installing…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done of $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Released $date';
  }

  @override
  String get updateNoAsset => 'This release has no download for your device';

  @override
  String get updateUpToDate => 'You\'re on the latest version';

  @override
  String get updateIosHint =>
      'iOS builds aren\'t on the App Store. Grab the .ipa from the release page and sideload it with AltStore or SideStore';

  @override
  String get updateOpenedBrowser => 'Check your browser';

  @override
  String get updateTryAgain => 'Try again';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsNotificationsDesc =>
      'Alerts for your lists, new episodes and chapters, and comment replies';

  @override
  String get settingsAboutUpdates => 'About & updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App updates, version, logs, links and support';

  @override
  String get settingsGroupAccount => 'Your account';

  @override
  String get settingsGroupContent => 'Content';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Player, subtitles, skipping, episode list and episode details';

  @override
  String get settingsMangaDesc =>
      'Reader mode, controls, display and chapter tracking';

  @override
  String get settingsNovelDesc =>
      'Text, page turning, translation and read aloud';

  @override
  String get settingsLocalPlay => 'Local play';

  @override
  String get settingsLocalPlayDesc =>
      'Play files, folders, network streams and torrents, or open a book';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Books';

  @override
  String get settingsWatchSections => 'Sections';

  @override
  String get settingsSectionLists => 'Episode and chapter lists';

  @override
  String get settingsSectionProgress => 'Progress tracking';

  @override
  String get updateChannelDesc =>
      'Stable is the tested release. Pre-release and Alpha get new features sooner but may break';

  @override
  String get checkNowDesc => 'Look for a newer version right away';

  @override
  String get generalSectionBasics => 'Language & behaviour';

  @override
  String get generalSectionSecurity => 'Security';

  @override
  String get generalSectionPrivacy => 'Privacy';

  @override
  String notificationsOtherService(String service) {
    return 'Switch to $service to open this';
  }

  @override
  String get secPlayerPlayback =>
      'Default speed, auto play, video fit, orientation and picture in picture';

  @override
  String get secPlayerSkip => 'Skip openings, endings and recaps automatically';

  @override
  String get secPlayerControls =>
      'Swipe, hold and tap gestures and seek preview';

  @override
  String get secPlayerSubtitles =>
      'Languages, appearance and subtitle rendering';

  @override
  String get secPlayerShaders => 'Anime upscaling and your own shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, video and audio output, buffering. Only change these if playback has problems';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts and advanced tuning';

  @override
  String get secAnimeList => 'Filler episodes and unwatched thumbnails';

  @override
  String get secProgress =>
      'When your watched or read progress is saved to your list';

  @override
  String get secAnimeDetails =>
      'Where episode titles, thumbnails and summaries come from';

  @override
  String get secReaderReading =>
      'Reading mode, page turning, zoom and next chapter';

  @override
  String get secReaderControls => 'Tap zones, volume keys and auto scroll';

  @override
  String get secReaderDisplay =>
      'Background, brightness, fullscreen and page number';

  @override
  String get secNovelText => 'Font, size, spacing, margins and page turning';

  @override
  String get secNovelTranslate => 'Translate chapters while you read';

  @override
  String get secNovelSpeech => 'Voice, speed and pitch for read aloud';

  @override
  String get secNotifyAbout => 'Pick which kinds of activity send an alert';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc => 'Choose, move and hide the buttons on the bars';

  @override
  String get layoutHint =>
      'Drag a button to move it (hold first on a touch screen). Tap one to cut, move or hide it';

  @override
  String layoutDropInto(String zone) {
    return 'Drop in: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moving $name. Press a paste button to place it';
  }

  @override
  String get layoutTitleFixed => 'Title';

  @override
  String get layoutZoneTopStart => 'Top bar, before the title';

  @override
  String get layoutZoneTopEnd => 'Top bar, after the title';

  @override
  String get layoutZoneBottomStart => 'Bottom bar, left';

  @override
  String get layoutZoneBottomEnd => 'Bottom bar, right';

  @override
  String get layoutZoneSecondRow => 'Hidden: second row in normal view';

  @override
  String get layoutZoneOverflow => 'Hidden: in the more menu';

  @override
  String get layoutEmptyZone => 'Drop buttons here';

  @override
  String get layoutCut => 'Cut';

  @override
  String get layoutPaste => 'Paste here';

  @override
  String get layoutHide => 'Hide';

  @override
  String layoutMoveTo(String zone) {
    return 'Move to $zone';
  }

  @override
  String get layoutReset => 'Reset to default';

  @override
  String get layoutMore => 'More';

  @override
  String get sourceWhyAction => 'Why no alert?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Last checked';

  @override
  String get sourceWhyNever => 'Not yet';

  @override
  String get sourceWhyNextCheck => 'Next check';

  @override
  String get sourceWhyNewest => 'Newest at the source';

  @override
  String get sourceWhyProgress => 'Your progress';

  @override
  String get sourceWhyListStatus => 'List status';

  @override
  String get sourceWhyFailures => 'Failed checks in a row';

  @override
  String get sourceWhyLastRelease => 'Last new release seen';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs.';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert.';

  @override
  String get sourceWhyVerdictSkipped =>
      'This title is skipped by the rules above. Change them in notification settings, or use Check now to run it anyway.';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked.';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted.';

  @override
  String get externalPlayerTitle => 'Open stream elsewhere';

  @override
  String get externalCopyUrl => 'Copy stream link';

  @override
  String get externalCopied => 'Stream link copied';

  @override
  String get externalChooser => 'Open in another app';

  @override
  String get externalVlc => 'Open in VLC';

  @override
  String get externalMpv => 'Open in mpv';

  @override
  String get externalFailed =>
      'Couldn\'t open the stream. Is the player installed?';

  @override
  String get addonInstalled => 'Installed';

  @override
  String get loadFailedActivity => 'Couldn\'t load activity';

  @override
  String get loadFailedFavourites => 'Couldn\'t load favourites. Retry';

  @override
  String get loadFailedStats => 'Couldn\'t load stats';

  @override
  String get loadFailedReplies => 'Couldn\'t load replies';

  @override
  String get cantBeUndone => 'This can\'t be undone.';

  @override
  String get searchTags => 'Search tags';

  @override
  String get spoilerTapToView => ' Spoiler, tap to view ';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Someone';

  @override
  String get notificationATitle => 'a title';

  @override
  String get notificationAddedDetail => 'Was added to AniList';

  @override
  String get updateNoReleases => 'No releases found';

  @override
  String get updateInvalidResponse => 'Invalid update response';

  @override
  String get commentsRateLimited => 'Rate limited';

  @override
  String get commentsConnectFailed => 'Failed to connect';

  @override
  String get dnsNoRecords => 'No A records returned';

  @override
  String get importTokenRejected => 'Token rejected';

  @override
  String get developerRoleLead => 'Lead Developer';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type manager';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensions';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name settings';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episode $episode of $title aired';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episode $episode aired';
  }

  @override
  String notificationAdded(String title) {
    return '$title was added to AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Update server couldn\'t find that release: $message';
  }
}
