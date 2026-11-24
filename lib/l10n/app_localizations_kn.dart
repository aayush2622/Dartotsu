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
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

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
  String get appLockBiometric => 'ಬಯೋಮೆಟ್ರಿಕ್‌ಗಳೊಂದಿಗೆ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String get appLockBiometricDesc =>
      'ಪಾಸ್‌ಕೋಡ್ ಟೈಪ್ ಮಾಡುವ ಬದಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖವನ್ನು ಬಳಸಿ';

  @override
  String get appLockBiometricReason => 'ಡಾರ್ಟೊಟ್ಸು ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get appLockDelay => 'ನಿಷ್ಕ್ರಿಯವಾಗಿರುವಾಗ ಲಾಕ್ ಮಾಡಿ';

  @override
  String get appLockDelayAlways => 'ಯಾವಾಗಲೂ';

  @override
  String get appLockDelayNever => 'ಎಂದಿಗೂ ಇಲ್ಲ';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ನಿಮಿಷಗಳು',
      one: '1 ನಿಮಿಷ',
    );
    return 'ನಂತರ $_temp0';
  }

  @override
  String get appLockUseBiometric => 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಬಳಸಿ';

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
      other: '$count ನವೀಕರಣಗಳು ಲಭ್ಯವಿದೆ',
      one: '1 ನವೀಕರಣ ಲಭ್ಯವಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'ಎಲ್ಲವನ್ನೂ ನವೀಕರಿಸಿ';

  @override
  String extensionsUpdated(int done, int total) {
    return '$total ರಲ್ಲಿ $done ವಿಸ್ತರಣೆಗಳನ್ನು ನವೀಕರಿಸಲಾಗಿದೆ';
  }

  @override
  String get updateConflictTitle => 'ನವೀಕರಣವನ್ನು ಸ್ಥಾಪಿಸಲಾಗಿಲ್ಲ';

  @override
  String updateConflictBody(String names) {
    return '$names ಅನ್ನು ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಆವೃತ್ತಿಯಲ್ಲಿ ಸ್ಥಾಪಿಸಲಾಗಲಿಲ್ಲ. ಇದರರ್ಥ ಸಾಮಾನ್ಯವಾಗಿ ಸ್ಥಾಪಿಸಲಾದ ನಕಲನ್ನು ವಿಭಿನ್ನವಾಗಿ ಸಹಿ ಮಾಡಲಾಗಿದೆ. ಅದನ್ನು ಅನ್‌ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ ಮತ್ತು ಹೊಸ ಆವೃತ್ತಿಯನ್ನು ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡುವುದೇ?';
  }

  @override
  String get updateConflictAction => 'ಅಸ್ಥಾಪಿಸಿ ಮತ್ತು ಮರುಸ್ಥಾಪಿಸಿ';

  @override
  String get noSourceSettings => 'ಈ ಸೋರ್ಸ್‌ಗೆ ಯಾವುದೇ ಸೆಟ್ಟಿಂಗ್ಸ್ ಇಲ್ಲ';

  @override
  String get addPluginRepository => 'ಪ್ಲಗಿನ್ ರೆಪೊಸಿಟರಿ ಸೇರಿಸು';

  @override
  String get pluginIndexUrlHint => 'ಪ್ಲಗಿನ್ ಇಂಡೆಕ್ಸ್ URL';

  @override
  String get addRepository => 'ರೆಪೊಸಿಟರಿ ಸೇರಿಸು';

  @override
  String get importRepositoryFile => 'ಫೈಲ್ ಅನ್ನು ಆಮದು ಮಾಡಿ';

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
  String get manageServices => 'ಮಾಧ್ಯಮ ಸೇವೆಗಳು';

  @override
  String get manageServicesDesc =>
      'ಸೇವೆಗಳನ್ನು ಮರುಕ್ರಮಗೊಳಿಸಿ ಮತ್ತು ಪಿಕರ್‌ನಲ್ಲಿ ಯಾವುದನ್ನು ತೋರಿಸಬೇಕೆಂದು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get manageServicesHint =>
      'ಮರುಕ್ರಮಗೊಳಿಸಲು ಎಳೆಯಿರಿ, ನೀವು ಬಳಸದಿರುವದನ್ನು ಸ್ವಿಚ್ ಆಫ್ ಮಾಡಿ';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'ಕಥೆಗಳು';

  @override
  String get watchOrder => 'ವಾಚ್ ಆರ್ಡರ್';

  @override
  String get watchOrderOpenSite => 'chiaki.site ನಲ್ಲಿ ತೆರೆಯಿರಿ';

  @override
  String get watchOrderUnavailable =>
      'ಈ ಶೀರ್ಷಿಕೆಗಾಗಿ ಯಾವುದೇ ವಾಚ್ ಆರ್ಡರ್ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get watchOrderOpenFailed => 'ಆ ಶೀರ್ಷಿಕೆಯನ್ನು ತೆರೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get watchOrderCurrent => 'ನೀವು ಇಲ್ಲಿದ್ದೀರಿ';

  @override
  String get watchOrderCredit => 'chiaki.site ಮೂಲಕ ಆದೇಶಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

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
  String get settingsSync => 'ಸಿಂಕ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settingsSyncDesc =>
      'ಪ್ರತಿ ಸಾಧನದಲ್ಲಿ ನಿಮ್ಮ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಒಂದೇ ರೀತಿ ಇರಿಸಿಕೊಳ್ಳಿ. ಅವುಗಳನ್ನು ನಿಮ್ಮ GitHub ಖಾತೆಯಲ್ಲಿ ಖಾಸಗಿ ಸಾರಾಂಶದಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ';

  @override
  String get settingsSyncSwitch => 'ಬದಲಾವಣೆಯ ಮೇಲೆ ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'GitHub ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get settingsSyncSignInDesc =>
      'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ನಿಮ್ಮ ಖಾತೆಯಲ್ಲಿ ಖಾಸಗಿ ಸಾರಾಂಶದಲ್ಲಿ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ';

  @override
  String get settingsSyncToken => 'ವೈಯಕ್ತಿಕ ಪ್ರವೇಶ ಟೋಕನ್ ಬಳಸಿ';

  @override
  String get settingsSyncTokenDesc =>
      'ಕೇವಲ ಸಾರಾಂಶ ಅನುಮತಿಯೊಂದಿಗೆ github.com/settings/tokens ನಲ್ಲಿ ಒಂದನ್ನು ರಚಿಸಿ';

  @override
  String get settingsSyncTokenField => 'ಟೋಕನ್';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user ನಂತೆ ಸೈನ್ ಇನ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get settingsSyncSignOut => 'ಸೈನ್ ಔಟ್ ಮಾಡಿ';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub ನಲ್ಲಿ $code ನಮೂದಿಸಿ';
  }

  @override
  String get settingsSyncCodeDesc =>
      'ನಿಮ್ಮ ಬ್ರೌಸರ್‌ನಲ್ಲಿ GitHub ಪುಟವನ್ನು ತೆರೆಯಲಾಗಿದೆ. ಕೋಡ್ ನಕಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ ಅಥವಾ ರದ್ದುಗೊಳಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ ಮತ್ತು ಹಿಡಿದುಕೊಳ್ಳಿ.';

  @override
  String get settingsSyncSignInFailed =>
      'GitHub ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get dcPreview => 'ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get dcSampleWatching => 'ನೋಡುತ್ತಿದ್ದೇನೆ';

  @override
  String get dcSampleReading => 'ಓದುವುದು';

  @override
  String get dcSampleBrowsing => 'ಬ್ರೌಸಿಂಗ್';

  @override
  String get dcSampleLive => 'ಇದೀಗ';

  @override
  String get dcLiveNothing =>
      'ಇದೀಗ ಏನನ್ನೂ ತೋರಿಸುತ್ತಿಲ್ಲ. ಶೀರ್ಷಿಕೆಯನ್ನು ತೆರೆಯಿರಿ, ಸಂಚಿಕೆ ಅಥವಾ ಅಧ್ಯಾಯವನ್ನು ಪ್ರಾರಂಭಿಸಿ ಮತ್ತು ಅದು ಇಲ್ಲಿ ಗೋಚರಿಸುತ್ತದೆ.';

  @override
  String get dcMemberList => 'ಸದಸ್ಯರ ಪಟ್ಟಿಯಲ್ಲಿ';

  @override
  String get dcAccount => 'ಖಾತೆ';

  @override
  String get dcSignIn => 'ಅಪಶ್ರುತಿಯೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get dcSignOut => 'ಸೈನ್ ಔಟ್ ಮಾಡಿ';

  @override
  String get dcDesktopHint =>
      'ಸಂಪರ್ಕಿಸದೆಯೇ, ಡಿಸ್ಕಾರ್ಡ್ ಡೆಸ್ಕ್‌ಟಾಪ್ ಅಪ್ಲಿಕೇಶನ್ ಮೂಲಕ \"ಡಾರ್ಟೊಟ್ಸು ವೀಕ್ಷಿಸುವುದನ್ನು\" ತೋರಿಸುತ್ತದೆ. ಮೊಬೈಲ್ ಸೇರಿದಂತೆ ನಿಮ್ಮ ಶೀರ್ಷಿಕೆಯ ನಂತರ ಚಟುವಟಿಕೆಯನ್ನು ಹೆಸರಿಸಲು ಡಿಸ್ಕಾರ್ಡ್ ಅನ್ನು ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get dcMobileHint =>
      'ನೀವು ಏನನ್ನು ವೀಕ್ಷಿಸುತ್ತಿರುವಿರಿ ಅಥವಾ ಓದುತ್ತಿರುವಿರಿ ಎಂಬುದನ್ನು ತೋರಿಸಲು ಡಿಸ್ಕಾರ್ಡ್ ಅನ್ನು ಸಂಪರ್ಕಿಸಿ. ಇದು ಡಿಸ್ಕಾರ್ಡ್‌ನ ಅಧಿಕೃತ ಪುಟವನ್ನು ಬಳಸುತ್ತದೆ, ನಿಮ್ಮ ಖಾತೆಯ ಟೋಕನ್ ಅಲ್ಲ.';

  @override
  String get dcConnect => 'ಡಿಸ್ಕಾರ್ಡ್ ಅನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get dcConnectDesc =>
      'ಡಿಸ್ಕಾರ್ಡ್‌ನ ಅಧಿಕೃತ ಪುಟವನ್ನು ತೆರೆಯುತ್ತದೆ ಮತ್ತು ಅಧಿಕೃತ ಅಪ್ಲಿಕೇಶನ್‌ಗಳ ಅಡಿಯಲ್ಲಿ ಡಾರ್ಟೊಟ್ಸು ಅನ್ನು ಸೇರಿಸುತ್ತದೆ. ಡಿಸ್ಕಾರ್ಡ್ ನಿಮ್ಮ ಉಪಸ್ಥಿತಿಯನ್ನು ನವೀಕರಿಸಲು ಕೇಳುತ್ತದೆ. ರಿಫ್ರೆಶ್ ಟೋಕನ್ ಅನ್ನು ಮಾತ್ರ ಉಳಿಸಲಾಗಿದೆ, ನಿಮ್ಮ ಖಾತೆಯ ಟೋಕನ್ ಅಲ್ಲ.';

  @override
  String get dcConnectFailed => 'ಡಿಸ್ಕಾರ್ಡ್ ಅನ್ನು ಸಂಪರ್ಕಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get dcConnectedSnack => 'ಅಪಶ್ರುತಿ ಸಂಪರ್ಕಗೊಂಡಿದೆ';

  @override
  String get dcDisconnect => 'ಸಂಪರ್ಕ ಕಡಿತಗೊಳಿಸಿ';

  @override
  String get dcDisconnectedSnack => 'ಅಪಶ್ರುತಿ ಸಂಪರ್ಕ ಕಡಿತಗೊಂಡಿದೆ';

  @override
  String get dcUseToken => 'ಬದಲಿಗೆ ಟೋಕನ್ ಬಳಸಿ';

  @override
  String get dcRouteDesktop => 'ಡಿಸ್ಕಾರ್ಡ್ ಡೆಸ್ಕ್‌ಟಾಪ್ ಅಪ್ಲಿಕೇಶನ್ ಮೂಲಕ';

  @override
  String get dcRouteHeadless => 'ನಿಮ್ಮ ಖಾತೆಯ ಮೂಲಕ';

  @override
  String get dcRouteGateway => 'ನಿಮ್ಮ ಖಾತೆಯ ಮೂಲಕ, ಲೈವ್';

  @override
  String get dcRouteLinked => 'ಸಂಪರ್ಕಿತ ಅಪ್ಲಿಕೇಶನ್';

  @override
  String get dcRouteNone => 'ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ';

  @override
  String get dcStatusNeedsToken =>
      'ಡಿಸ್ಕಾರ್ಡ್ ಟೋಕನ್ ಅಗತ್ಯವಿದೆ. ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಸಂಪರ್ಕಿಸುವುದರಿಂದ ನಿಮ್ಮ ಆನ್‌ಲೈನ್ ಸ್ಥಿತಿಯನ್ನು ಹೊಂದಿಸುವುದಿಲ್ಲ.';

  @override
  String get dcAccountOnly => 'ಸೈನ್ ಇನ್ ಮಾಡಿದ ಖಾತೆಯ ಅಗತ್ಯವಿದೆ';

  @override
  String get dcStatusSection => 'ಸ್ಥಿತಿ';

  @override
  String get dcControlStatus => 'ನನ್ನ ಸ್ಥಿತಿಯನ್ನು ನಿಯಂತ್ರಿಸಿ';

  @override
  String get dcControlStatusDesc =>
      'ರಿಚ್ ಪ್ರೆಸೆನ್ಸ್ ಆನ್ ಆಗಿರುವಾಗ ಡಿಸ್ಕಾರ್ಡ್‌ಗೆ ಲೈವ್ ಸಂಪರ್ಕವನ್ನು ಇರಿಸುತ್ತದೆ, ಆದ್ದರಿಂದ ಡಾರ್ಟೊಟ್ಸು ನಿಮ್ಮ ಸ್ಥಿತಿಯನ್ನು ಹೊಂದಿಸಬಹುದು.';

  @override
  String get dcStatusOnline => 'ಆನ್ಲೈನ್';

  @override
  String get dcStatusIdle => 'ಐಡಲ್';

  @override
  String get dcStatusDnd => 'ಅಡಚಣೆ ಮಾಡಬೇಡಿ';

  @override
  String get dcStatusInvisible => 'ಅದೃಶ್ಯ';

  @override
  String get dcCustomStatus => 'ಕಸ್ಟಮ್ ಸ್ಥಿತಿ';

  @override
  String get dcCustomStatusHint => 'ನೀವು ಏನು ಮಾಡುತ್ತಿರುವಿರಿ?';

  @override
  String get dcActivitySection => 'ಚಟುವಟಿಕೆ';

  @override
  String get dcShowWatching => 'ನೋಡುವಾಗ ತೋರಿಸು';

  @override
  String get dcShowReading => 'ಓದುವಾಗ ತೋರಿಸು';

  @override
  String get dcListening => 'ಕೇಳುತ್ತಿದೆ';

  @override
  String get dcCompeting => 'ಸ್ಪರ್ಧಿಸುತ್ತಿದ್ದಾರೆ';

  @override
  String get dcActivityName => 'ಚಟುವಟಿಕೆಯ ಹೆಸರು';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get dcNameCustom => 'ಕಸ್ಟಮ್';

  @override
  String get dcCustomNameHint => '\"ವೀಕ್ಷಿಸುವಿಕೆ\" ನಂತರ ಹೆಸರನ್ನು ತೋರಿಸಲಾಗಿದೆ';

  @override
  String get dcStatusText => 'ಸ್ಥಿತಿ ಪಠ್ಯ';

  @override
  String get dcStatusTextDesc =>
      'ಸದಸ್ಯರ ಪಟ್ಟಿಯು ನಿಮ್ಮ ಹೆಸರಿನ ಮುಂದೆ ಏನನ್ನು ತೋರಿಸುತ್ತದೆ';

  @override
  String get dcDisplayName => 'ಹೆಸರು';

  @override
  String get dcDisplayState => 'ರಾಜ್ಯ';

  @override
  String get dcDisplayDetails => 'ವಿವರಗಳು';

  @override
  String get dcTextSection => 'ಪಠ್ಯ';

  @override
  String get dcDetails => 'ಮೇಲಿನ ಸಾಲು';

  @override
  String get dcState => 'ಬಾಟಮ್ ಲೈನ್';

  @override
  String get dcTemplateHint => 'ಖಾಲಿ ಡೀಫಾಲ್ಟ್ ಅನ್ನು ಬಳಸುತ್ತದೆ';

  @override
  String get dcVariables => 'ಮೌಲ್ಯವನ್ನು ಸೇರಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get dcImagesSection => 'ಚಿತ್ರಗಳು';

  @override
  String get dcLargeImage => 'ದೊಡ್ಡ ಚಿತ್ರ';

  @override
  String get dcLargeAuto => 'ಆಟೋ';

  @override
  String get dcLargeCover => 'ಕವರ್';

  @override
  String get dcLargeLogo => 'ಲೋಗೋ';

  @override
  String get dcSmallImage => 'ಚಿಕ್ಕ ಚಿತ್ರ';

  @override
  String get dcSmallAuto => 'ಲೋಗೋ';

  @override
  String get dcSmallNone => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get dcTimerStyle => 'ಟೈಮರ್ ಶೈಲಿ';

  @override
  String get dcTimerAuto => 'ಆಟೋ';

  @override
  String get dcTimerElapsed => 'ಕಳೆಯಿತು';

  @override
  String get dcTimerRemaining => 'ಉಳಿದಿದೆ';

  @override
  String get dcButtonsSection => 'ಗುಂಡಿಗಳು';

  @override
  String get dcButtonMedia => 'ಶೀರ್ಷಿಕೆಗೆ ಲಿಂಕ್';

  @override
  String get dcButtonApp => 'ಡಾರ್ಟೊಟ್ಸುಗೆ ಲಿಂಕ್ ಮಾಡಿ';

  @override
  String get dcButtonCustom => 'ಕಸ್ಟಮ್ ಬಟನ್';

  @override
  String get dcButtonLabel => 'ಲೇಬಲ್';

  @override
  String get dcButtonUrl => 'ಲಿಂಕ್';

  @override
  String get dcPrivacySection => 'ಗೌಪ್ಯತೆ';

  @override
  String get dcPrivateText => 'ಖಾಸಗಿ ಪಠ್ಯ';

  @override
  String get dcPrivateHint => 'ಯಾವುದೋ ಖಾಸಗಿ';

  @override
  String get dcTokenWarning =>
      'ಸೈನ್ ಇನ್ ಮಾಡುವುದು ನಿಮ್ಮ ಖಾತೆಯ ಟೋಕನ್ ಅನ್ನು ಬಳಸುತ್ತದೆ. ಅಪಶ್ರುತಿಯ ನಿಯಮಗಳು ಇದನ್ನು ನಿರುತ್ಸಾಹಗೊಳಿಸುತ್ತವೆ, ಆದ್ದರಿಂದ ಅದನ್ನು ನಿಮ್ಮ ಸ್ವಂತ ಅಪಾಯದಲ್ಲಿ ಬಳಸಿ.';

  @override
  String get dcConnected => 'ಸಂಪರ್ಕಗೊಂಡಿದೆ';

  @override
  String get dcConnection => 'ಸಂಪರ್ಕ';

  @override
  String get dcMethodDesktop => 'ಡಿಸ್ಕಾರ್ಡ್ ಡೆಸ್ಕ್‌ಟಾಪ್ ಅಪ್ಲಿಕೇಶನ್';

  @override
  String get dcMethodDesktopDesc =>
      'ಬೇರೆ ಯಾವುದನ್ನೂ ಸಂಪರ್ಕಿಸದಿದ್ದಾಗ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಬಳಸಲಾಗುತ್ತದೆ. ಈ ಕಂಪ್ಯೂಟರ್‌ನಲ್ಲಿ ಅಪಶ್ರುತಿಯು ತೆರೆದಿರಬೇಕು.';

  @override
  String get dcMethodToken => 'ಖಾತೆ ಟೋಕನ್';

  @override
  String get dcInUse => 'ಬಳಕೆಯಲ್ಲಿದೆ';

  @override
  String get dcRecommended => 'ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ';

  @override
  String get dcConnecting => 'ಸಂಪರ್ಕಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get dcDisconnected => 'ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ';

  @override
  String dcSignedInAs(String name) {
    return '$name ನಂತೆ ಸೈನ್ ಇನ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get settingsSyncOn => 'ಆನ್';

  @override
  String get settingsSyncCustom => 'ಕಸ್ಟಮ್';

  @override
  String get settingsSyncChangedHeader => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಬದಲಾಯಿಸಲಾಗಿದೆ';

  @override
  String get settingsSyncNoneChanged =>
      'ನೀವು ಇನ್ನೂ ಇವುಗಳಲ್ಲಿ ಯಾವುದನ್ನೂ ಬದಲಾಯಿಸಿಲ್ಲ, ಆದ್ದರಿಂದ ಸಿಂಕ್ ಮಾಡಲು ಏನೂ ಇಲ್ಲ.';

  @override
  String get settingsSyncChangedOnly =>
      'ನೀವು ಬದಲಾಯಿಸಿದ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಮಾತ್ರ ಸಂಗ್ರಹಿಸಲಾಗಿದೆ. ಉಳಿದಂತೆ ಪ್ರತಿ ಸಾಧನದಲ್ಲಿ ಅದರ ಡೀಫಾಲ್ಟ್ ಅನ್ನು ಬಳಸುತ್ತದೆ. ಕ್ಲೌಡ್ ಐಕಾನ್ ಸರ್ವರ್‌ನಲ್ಲಿ ಈಗಾಗಲೇ ಏನಿದೆ ಎಂಬುದನ್ನು ತೋರಿಸುತ್ತದೆ.';

  @override
  String get settingsSyncOffCategory =>
      'ಸಿಂಕ್ ಆಗುತ್ತಿಲ್ಲ. ಇವುಗಳು ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಯುತ್ತವೆ ಮತ್ತು ಸರ್ವರ್ ನಕಲನ್ನು ಹಾಗೆಯೇ ಬಿಡಲಾಗುತ್ತದೆ.';

  @override
  String get settingsSyncPartsNote =>
      'ಪ್ರತಿ ಸಾಧನಕ್ಕೆ. ಪ್ರತಿ ಸಾಧನದ ಸ್ವಂತ ಮೌಲ್ಯವನ್ನು ಆಫ್ ಇರಿಸುತ್ತದೆ, ಆದ್ದರಿಂದ ಫೋನ್ ಮತ್ತು ಟಿವಿ ಭಿನ್ನವಾಗಿರಬಹುದು.';

  @override
  String get settingsSyncPartSubtitles => 'ಉಪಶೀರ್ಷಿಕೆ ಗಾತ್ರ ಮತ್ತು ಬಣ್ಣಗಳು';

  @override
  String get settingsSyncPartSubtitlesDesc => 'ಗಾತ್ರ, ತೂಕ, ಬಣ್ಣಗಳು ಮತ್ತು ಸ್ಥಾನ';

  @override
  String get settingsSyncPartPictureColors => 'ಚಿತ್ರದ ಬಣ್ಣಗಳು';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'ಹೊಳಪು, ಕಾಂಟ್ರಾಸ್ಟ್, ಶುದ್ಧತ್ವ, ಗಾಮಾ, ವರ್ಣ ಮತ್ತು HDR';

  @override
  String get settingsSyncPartPalette => 'ಥೀಮ್ ಬಣ್ಣಗಳು';

  @override
  String get settingsSyncPartPaletteDesc =>
      'ಥೀಮ್, ಉಚ್ಚಾರಣಾ ಬಣ್ಣ ಮತ್ತು OLED ಕಪ್ಪು';

  @override
  String get settingsSyncCatOther => 'ವೀಕ್ಷಿಸಿ, ಓದಿ ಮತ್ತು ಸೇವೆಗಳು';

  @override
  String get settingsSyncTitles => 'ಪ್ರಗತಿ ಮತ್ತು ಶೀರ್ಷಿಕೆಗಳನ್ನು ವೀಕ್ಷಿಸಿ';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return 'ಸರ್ವರ್‌ನಲ್ಲಿ $records ಶೀರ್ಷಿಕೆಗಳು ಮತ್ತು $resume ಪುನರಾರಂಭದ ನಮೂದುಗಳು';
  }

  @override
  String get settingsSyncTitlesNone => 'ಇನ್ನೂ ಏನನ್ನೂ ಅಪ್‌ಲೋಡ್ ಮಾಡಿಲ್ಲ';

  @override
  String get settingsSyncTitlesNote =>
      'ಸ್ಥಾನಗಳು, ಪುನರಾರಂಭದ ಶೆಲ್ಫ್, ನಿಮ್ಮ ಸ್ಥಳೀಯ ಪಟ್ಟಿಗಳು, ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳು, ಮುಖ್ಯಾಂಶಗಳು ಮತ್ತು ಪ್ರತಿ ಶೀರ್ಷಿಕೆಯ ಆಯ್ಕೆಗಳನ್ನು ವೀಕ್ಷಿಸಿ ಮತ್ತು ಓದಿ. ಮೂಲ ಹೊಂದಾಣಿಕೆಗಳು ಮತ್ತು ಸ್ಟ್ರೀಮ್‌ಗಳು ಪ್ರತಿ ಸಾಧನದಲ್ಲಿ ಉಳಿಯುತ್ತವೆ ಏಕೆಂದರೆ ಅವುಗಳು ನಿಮ್ಮ ವಿಸ್ತರಣೆಗಳನ್ನು ಅವಲಂಬಿಸಿರುತ್ತದೆ. ಪ್ರತಿ 45 ಸೆಕೆಂಡ್‌ಗಳಿಗೆ ಶೀರ್ಷಿಕೆಗಳು ಅಪ್‌ಲೋಡ್ ಆಗುತ್ತವೆ.';

  @override
  String get settingsSyncConnect => 'ಸಂಪರ್ಕಗೊಂಡಿಲ್ಲ';

  @override
  String get settingsSyncConnectDesc =>
      'ಪ್ರತಿಯೊಂದು ಸಾಧನದಲ್ಲೂ ನಿಮ್ಮ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಒಂದೇ ರೀತಿ ಇರಿಸಿಕೊಳ್ಳಲು GitHub ನೊಂದಿಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get settingsSyncFailedTitle => 'ಸಿಂಕ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get settingsSyncPaused => 'ವಿರಾಮಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get settingsSyncPausedDesc =>
      'ಇದು ಆಫ್ ಆಗಿರುವಾಗ ಯಾವುದನ್ನೂ ಅಪ್‌ಲೋಡ್ ಮಾಡಲಾಗುವುದಿಲ್ಲ ಅಥವಾ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get settingsSyncUpToDate => 'ನವೀಕೃತವಾಗಿದೆ';

  @override
  String get settingsSyncRetry => 'ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get settingsSyncAccount => 'GitHub ಖಾತೆ';

  @override
  String get settingsSyncAccountDesc =>
      'ನಿಮ್ಮ ಡೇಟಾ ನಿಮ್ಮ ಸ್ವಂತ ಖಾತೆಯಲ್ಲಿ ಖಾಸಗಿ ಸಾರಾಂಶಕ್ಕೆ ಹೋಗುತ್ತದೆ.';

  @override
  String get settingsSyncWaiting =>
      'GitHub ನಲ್ಲಿ ನೀವು ಅನುಮೋದಿಸಲು ನಿರೀಕ್ಷಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get settingsSyncCopyCode => 'ಅದನ್ನು ನಕಲಿಸಲು ಕೋಡ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get settingsSyncCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get settingsSyncStatSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get settingsSyncStatTitles => 'ಶೀರ್ಷಿಕೆಗಳು';

  @override
  String get settingsSyncStatShelf => 'ಪುನರಾರಂಭಿಸಿ';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$device ರಿಂದ $time ಅಪ್‌ಲೋಡ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಬದಲಾಗಿದೆ',
      one: '1 ಬದಲಾಗಿದೆ',
      zero: 'ಇನ್ನೂ ಏನೂ ಬದಲಾಗಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'ಖಾತೆಗಳು ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್‌ಗಳು';

  @override
  String get settingsSyncSecretsDesc =>
      'ನಿಮ್ಮ ಸಾಧನಗಳ ನಡುವೆ ನಿಮ್ಮ ಸೈನ್-ಇನ್‌ಗಳನ್ನು (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API ಕೀಗಳು ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್ ಅನ್ನು ಸಿಂಕ್ ಮಾಡಿ. ನಿಮ್ಮ ಸಾಧನಗಳಲ್ಲಿ ಉಳಿಯುವ ಪಾಸ್‌ಫ್ರೇಸ್‌ನೊಂದಿಗೆ ಅವುಗಳನ್ನು ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಲಾಗಿದೆ, ಆದ್ದರಿಂದ GitHub ಅವುಗಳನ್ನು ಎಂದಿಗೂ ನೋಡುವುದಿಲ್ಲ.';

  @override
  String get settingsSyncSecretsOn =>
      'ಖಾತೆಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಲಾಗಿದೆ ಮತ್ತು ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get settingsSyncSecretsOnDesc =>
      'ಒಂದು ಸಾಧನದಲ್ಲಿ ಸೈನ್ ಔಟ್ ಮಾಡುವುದರಿಂದ ಇತರ ಸಾಧನಗಳಲ್ಲಿ ಸೈನ್ ಔಟ್ ಆಗುವುದಿಲ್ಲ.';

  @override
  String get settingsSyncSecretsBroken =>
      'ಪಾಸ್‌ಫ್ರೇಸ್ ಇನ್ನು ಮುಂದೆ ಸರ್ವರ್‌ನಲ್ಲಿರುವ ಒಂದಕ್ಕೆ ಹೊಂದಿಕೆಯಾಗುವುದಿಲ್ಲ. ಖಾತೆಗಳನ್ನು ಸಿಂಕ್ ಮಾಡುವುದನ್ನು ಮುಂದುವರಿಸಲು ಅದನ್ನು ಮತ್ತೆ ನಮೂದಿಸಿ.';

  @override
  String get settingsSyncPassphraseSet => 'ಪಾಸ್‌ಫ್ರೇಸ್ ಹೊಂದಿಸಿ';

  @override
  String get settingsSyncPassphraseEnter => 'ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಿ';

  @override
  String get settingsSyncPassphraseField => 'ಪಾಸ್ಫ್ರೇಸ್';

  @override
  String get settingsSyncPassphraseConfirm => 'ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ಪುನರಾವರ್ತಿಸಿ';

  @override
  String get settingsSyncPassphraseNew =>
      'ಕನಿಷ್ಠ 6 ಅಕ್ಷರಗಳ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ಆಯ್ಕೆಮಾಡಿ. ಇದನ್ನು ಎಲ್ಲಿಯೂ ಸಂಗ್ರಹಿಸಲಾಗಿಲ್ಲ ಆದರೆ ನಿಮ್ಮ ಸಾಧನಗಳನ್ನು ಮರುಪಡೆಯಲಾಗುವುದಿಲ್ಲ. ನೀವು ಅದನ್ನು ಮರೆತರೆ, ಸರ್ವರ್ ನಕಲನ್ನು ಅಳಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get settingsSyncPassphraseExisting =>
      'ನಿಮ್ಮ ಇತರ ಸಾಧನದಲ್ಲಿ ನೀವು ಆಯ್ಕೆಮಾಡಿದ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಿ. ಈ ಸಾಧನದಲ್ಲಿನ ಖಾತೆಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಲಾದ ಖಾತೆಗಳಿಂದ ಬದಲಾಯಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get settingsSyncPassphraseWrong => 'ತಪ್ಪಾದ ಪಾಸ್‌ಫ್ರೇಸ್';

  @override
  String get settingsSyncPassphraseMismatch =>
      'ಪಾಸ್‌ಫ್ರೇಸ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುವುದಿಲ್ಲ';

  @override
  String get settingsSyncPassphraseShort => 'ಕನಿಷ್ಠ 6 ಅಕ್ಷರಗಳನ್ನು ಬಳಸಿ';

  @override
  String get settingsSyncSecretsStop => 'ಖಾತೆಗಳನ್ನು ಸಿಂಕ್ ಮಾಡುವುದನ್ನು ನಿಲ್ಲಿಸಿ';

  @override
  String get settingsSyncSecretsDelete => 'GitHub ನಿಂದ ಅಳಿಸಿ';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'ಇದು ನಿಮ್ಮ ಸಾರಾಂಶದಿಂದ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿದ ಖಾತೆಗಳ ಫೈಲ್ ಅನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ. ಇತರ ಸಾಧನಗಳು ತಮ್ಮ ಸೈನ್-ಇನ್‌ಗಳನ್ನು ಇಟ್ಟುಕೊಳ್ಳುತ್ತವೆ ಮತ್ತು ಹೊಸ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ಹೊಂದಿಸಬಹುದು.';

  @override
  String get settingsSyncWhat => 'ಏನು ಸಿಂಕ್ ಮಾಡಬೇಕು';

  @override
  String get settingsSyncServer => 'ಸರ್ವರ್‌ನಲ್ಲಿ';

  @override
  String get settingsSyncServerEmpty => 'ಇನ್ನೂ ಏನನ್ನೂ ಅಪ್‌ಲೋಡ್ ಮಾಡಿಲ್ಲ';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count ಸೆಟ್ಟಿಂಗ್‌ಗಳು, $device ನಿಂದ $time ಅಪ್‌ಲೋಡ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get settingsSyncThisDevice => 'ಈ ಸಾಧನ';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ಸರ್ವರ್‌ನಲ್ಲಿ $count ಸೆಟ್ಟಿಂಗ್‌ಗಳು',
      one: 'ಸರ್ವರ್‌ನಲ್ಲಿ 1 ಸೆಟ್ಟಿಂಗ್',
      zero: 'ಸರ್ವರ್‌ನಲ್ಲಿ ಏನೂ ಇಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'ಈಗ ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get settingsSyncRunning => 'ಸಿಂಕ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get settingsSyncNever => 'ಇನ್ನೂ ಸಿಂಕ್ ಆಗಿಲ್ಲ';

  @override
  String settingsSyncLast(Object time) {
    return 'ಕೊನೆಯದಾಗಿ ಸಿಂಕ್ ಮಾಡಿದ್ದು $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'ಸಿಂಕ್ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get settingsSyncScope =>
      'ಎಲ್ಲೆಡೆ ಒಂದೇ ರೀತಿ ಕಾರ್ಯನಿರ್ವಹಿಸುವ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಮಾತ್ರ ಸಿಂಕ್ ಮಾಡಲಾಗುತ್ತದೆ. ಖಾತೆಗಳು, ಟೋಕನ್‌ಗಳು, ಫೋಲ್ಡರ್‌ಗಳು, ವಿಸ್ತರಣೆಗಳು, ಅಧಿಸೂಚನೆಗಳು, ಅಪಶ್ರುತಿ, ನವೀಕರಣಗಳು ಮತ್ತು ವಿಂಡೋ ಗಾತ್ರವು ಪ್ರತಿ ಸಾಧನದಲ್ಲಿ ಉಳಿಯುತ್ತದೆ.';

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
  String get autoUpdateRuntimes =>
      'ವಿಸ್ತರಣೆ ರನ್ಟೈಮ್ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ನವೀಕರಿಸಿ';

  @override
  String get autoUpdateRuntimesDesc =>
      'ಹಿನ್ನೆಲೆಯಲ್ಲಿ ಹೊಸ Aniyomi, CloudStream ಮತ್ತು ಇತರ ರನ್‌ಟೈಮ್ ಆವೃತ್ತಿಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ. ಆಫ್, ಬದಲಿಗೆ ಮ್ಯಾನೇಜರ್‌ನ ಪಕ್ಕದಲ್ಲಿ ಅಪ್‌ಡೇಟ್ ಐಕಾನ್ ಕಾಣಿಸಿಕೊಳ್ಳುತ್ತದೆ.';

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
  String get backupPasswordRequired => 'ಪಾಸ್ವರ್ಡ್ (ಖಾತೆ ಡೇಟಾಗೆ ಅಗತ್ಯವಿದೆ)';

  @override
  String get backupProtectedNeedsPassword =>
      'ಖಾತೆ ಡೇಟಾವನ್ನು ಬ್ಯಾಕಪ್ ಮಾಡಲು ಪಾಸ್‌ವರ್ಡ್ ಹೊಂದಿಸಿ ಅಥವಾ ಅದನ್ನು ಅನ್‌ಟಿಕ್ ಮಾಡಿ';

  @override
  String get backupProtectedSkipped =>
      'ಈ ಬ್ಯಾಕಪ್ ಯಾವುದೇ ಪಾಸ್‌ವರ್ಡ್ ಅನ್ನು ಹೊಂದಿಲ್ಲ, ಆದ್ದರಿಂದ ಅದರ ಖಾತೆಯ ಡೇಟಾವನ್ನು ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ';

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
  String get logDelete => 'ಲಾಗ್ ಫೈಲ್‌ಗಳನ್ನು ಅಳಿಸಿ';

  @override
  String get logDeleteDesc =>
      'ಜಾಗವನ್ನು ಮುಕ್ತಗೊಳಿಸಲು ಉಳಿಸಿದ ಅಪ್ಲಿಕೇಶನ್ ಲಾಗ್‌ಗಳನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String logDeleted(String size) {
    return 'ಲಾಗ್‌ಗಳ $size ಅಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get missingSequel => 'ಸೀಕ್ವೆಲ್ ಕಾಣೆಯಾಗಿದೆ';

  @override
  String get rising => 'ರೈಸಿಂಗ್';

  @override
  String get stacks => 'ರಾಶಿಗಳು';

  @override
  String get stacksAll => 'ಎಲ್ಲಾ';

  @override
  String get stacksFeatured => 'ವೈಶಿಷ್ಟ್ಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get stacksMine => 'ನಿಮ್ಮದು';

  @override
  String get stacksSaved => 'ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get stacksFollowing => 'ಅನುಸರಿಸುತ್ತಿದೆ';

  @override
  String get stacksEmpty => 'ಇಲ್ಲಿ ಇನ್ನೂ ಯಾವುದೇ ಸ್ಟಾಕ್‌ಗಳಿಲ್ಲ';

  @override
  String get stacksSignIn =>
      'ನಿಮ್ಮ ಸ್ಟ್ಯಾಕ್‌ಗಳನ್ನು ನೋಡಲು MangaBaka ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get stacksScopeNeeded =>
      'ನಿಮ್ಮ ಸ್ಟ್ಯಾಕ್‌ಗಳಿಗೆ ಹೊಸ ಅನುಮತಿಯ ಅಗತ್ಯವಿದೆ. ಅದನ್ನು ಅನುಮತಿಸಲು ಮತ್ತೊಮ್ಮೆ MangaBaka ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get stacksSignInAgain => 'ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get stacksCouldntLoad => 'ಸ್ಟ್ಯಾಕ್‌ಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸರಣಿ',
      one: '1 ಸರಣಿ',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಉಳಿಸುತ್ತದೆ',
      one: '1 ಉಳಿಸಿ',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return '$name ಮೂಲಕ';
  }

  @override
  String get stackSpoilers => 'ಸ್ಪಾಯ್ಲರ್ಗಳು';

  @override
  String get stackEmptyEntries => 'ಈ ಸ್ಟಾಕ್ ಖಾಲಿಯಾಗಿದೆ';

  @override
  String get stackSave => 'ಸ್ಟಾಕ್ ಉಳಿಸಿ';

  @override
  String get stackUnsave => 'ಉಳಿಸಿದವರಿಂದ ತೆಗೆದುಹಾಕಿ';

  @override
  String get stackSavedToast => 'ನಿಮ್ಮ ಸ್ಟ್ಯಾಕ್‌ಗಳಲ್ಲಿ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get stackRemovedToast => 'ನಿಮ್ಮ ಉಳಿಸಿದ ಸ್ಟಾಕ್‌ಗಳಿಂದ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String userStacks(String name) {
    return '$name ಮೂಲಕ ಸ್ಟ್ಯಾಕ್‌ಗಳು';
  }

  @override
  String get newsTitle => 'ಸುದ್ದಿ';

  @override
  String get newsEmpty => 'ಸದ್ಯಕ್ಕೆ ಸುದ್ದಿ ಇಲ್ಲ';

  @override
  String get newsCouldntLoad => 'ಸುದ್ದಿಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

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
  String get followCoverMediaOnly => 'ಮಾಧ್ಯಮಗಳಿಗೆ ಮಾತ್ರ';

  @override
  String get followCoverMediaOnlyDesc =>
      'ಮಾಧ್ಯಮ ಪುಟಗಳಲ್ಲಿ ಕವರ್ ಅನ್ನು ಮಾತ್ರ ಅನುಸರಿಸಿ, ಎಲ್ಲೆಡೆ ಸಾಮಾನ್ಯ ಬಣ್ಣಗಳನ್ನು ಇರಿಸುತ್ತದೆ';

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
  String get imageTitlePage => 'ಪುಟ';

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
  String get supportDeveloper => 'ಡೆವಲಪರ್ ಅನ್ನು ಬೆಂಬಲಿಸಿ';

  @override
  String get buyMeCoffee => 'ನನಗೆ ಕಾಫಿ ಖರೀದಿಸಿ';

  @override
  String get upiId => 'UPI ಐಡಿ';

  @override
  String get upiCopied => 'UPI ಐಡಿಯನ್ನು ನಕಲಿಸಲಾಗಿದೆ';

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
  String get onboardingLanguageBody =>
      'ಡಾರ್ಟೊಟ್ಸು ತೋರಿಸಿರುವ ಭಾಷೆಯನ್ನು ಆರಿಸಿ. ನೀವು ಅದನ್ನು ನಂತರ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

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
    return 'ಅಧ್ಯಾಯ $n';
  }

  @override
  String get calendarExpected => 'ನಿರೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get castReceiverFailed =>
      'Chromecast ತನ್ನ ಪ್ಲೇಯರ್ ಅನ್ನು ಪ್ರಾರಂಭಿಸಲಿಲ್ಲ';

  @override
  String get castPlaybackFailed =>
      'ಸಾಧನವು ಈ ಸ್ಟ್ರೀಮ್ ಅನ್ನು ಪ್ಲೇ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get shortcutNothingToContinue => 'ಇನ್ನೂ ಏನನ್ನೂ ಮುಂದುವರಿಸಲು ಇಲ್ಲ';

  @override
  String shortcutNoCalendar(String service) {
    return '$service ಯಾವುದೇ ಕ್ಯಾಲೆಂಡರ್ ಅನ್ನು ಹೊಂದಿಲ್ಲ';
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
  String get comickLoginFailed => 'ಕಾಮಿಕ್ ಲಾಗಿನ್ ವಿಫಲವಾಗಿದೆ';

  @override
  String get tagline => 'ಅಡಿಬರಹ';

  @override
  String get trending => 'ಟ್ರೆಂಡಿಂಗ್';

  @override
  String get anticipated => 'ನಿರೀಕ್ಷಿತ';

  @override
  String get watchlist => 'ವೀಕ್ಷಣೆ ಪಟ್ಟಿ';

  @override
  String get recommendedShows => 'ಶಿಫಾರಸು ಮಾಡಲಾದ ಪ್ರದರ್ಶನಗಳು';

  @override
  String get recommendedMovies => 'ಶಿಫಾರಸು ಮಾಡಿದ ಚಲನಚಿತ್ರಗಳು';

  @override
  String get boxOffice => 'ಬಾಕ್ಸ್ ಆಫೀಸ್';

  @override
  String get popularMovies => 'ಜನಪ್ರಿಯ ಚಲನಚಿತ್ರಗಳು';

  @override
  String get popularShows => 'ಜನಪ್ರಿಯ ಪ್ರದರ್ಶನಗಳು';

  @override
  String get anticipatedMovies => 'ನಿರೀಕ್ಷಿತ ಚಲನಚಿತ್ರಗಳು';

  @override
  String get anticipatedShows => 'ನಿರೀಕ್ಷಿತ ಪ್ರದರ್ಶನಗಳು';

  @override
  String get trendingShows => 'ಟ್ರೆಂಡಿಂಗ್ ಶೋಗಳು';

  @override
  String get mostWatchedThisWeek => 'ಈ ವಾರ ಹೆಚ್ಚು ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get sortMostViewed => 'ಹೆಚ್ಚು ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get sortMostFollowed => 'ಹೆಚ್ಚಿನವರು ಅನುಸರಿಸಿದರು';

  @override
  String get sortLatestUpdates => 'ಇತ್ತೀಚಿನ ನವೀಕರಣಗಳು';

  @override
  String get translationStatusLabel => 'ಅನುವಾದ';

  @override
  String get weeklySchedule => 'ಸಾಪ್ತಾಹಿಕ ವೇಳಾಪಟ್ಟಿ';

  @override
  String get mostFollowed => 'ಹೆಚ್ಚು ಅನುಸರಿಸಲಾಗಿದೆ';

  @override
  String get latestUpdates => 'ಇತ್ತೀಚಿನ ನವೀಕರಣಗಳು';

  @override
  String get trendingAnime => 'ಟ್ರೆಂಡಿಂಗ್ ಅನಿಮೆ';

  @override
  String get topRatedAnime => 'ಉನ್ನತ ದರ್ಜೆಯ ಅನಿಮೆ';

  @override
  String get mostFollowedAnime => 'ಹೆಚ್ಚು ಅನುಸರಿಸಿದ ಅನಿಮೆ';

  @override
  String get comickProfile => 'ಕಾಮಿಕ್ ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromComick => 'ಕಾಮಿಕ್‌ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get mangaBakaProfile => 'MangaBaka ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromMangaBaka => 'MangaBaka ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates ಪ್ರೊಫೈಲ್';

  @override
  String get mangaUpdatesAnimeStart => 'ಅನಿಮೆ ಅಳವಡಿಕೆ ಪ್ರಾರಂಭವಾಗುತ್ತದೆ';

  @override
  String get mangaUpdatesAnimeEnd => 'ಅನಿಮೆ ರೂಪಾಂತರವು ಕೊನೆಗೊಳ್ಳುತ್ತದೆ';

  @override
  String get refreshFromMangaUpdates => 'MangaUpdates ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get usernameOnly => 'ಬಳಕೆದಾರ ಹೆಸರು';

  @override
  String get releases => 'ಬಿಡುಗಡೆ ಮಾಡುತ್ತದೆ';

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
  String get hideNsfwSourcesDesc =>
      'ಫೀಡ್‌ಗಳು ಮತ್ತು ಮೂಲ ಪಿಕ್ಕರ್‌ನಿಂದ 18+ ಎಂದು ಗುರುತಿಸಲಾದ ಮೂಲಗಳನ್ನು ಮರೆಮಾಡಿ. ಅವರು ಇನ್ಸ್ಟಾಲ್ ಆಗಿರುತ್ತಾರೆ.';

  @override
  String get hideNsfwDesc =>
      'ವಯಸ್ಕರ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಫೀಡ್ ಮತ್ತು ಹುಡುಕಾಟದಿಂದ ಹೊರಗಿಡು, ಮತ್ತು ನಿನ್ನ ವಯಸ್ಕರ ಎಂಟ್ರಿಗಳನ್ನು ಮರೆಮಾಡಿದ ಮೀಡಿಯಾ ಅಡಿಯಲ್ಲಿ ತೋರಿಸು.';

  @override
  String get kitsuAccountOptions => 'Kitsu ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka ಖಾತೆಯ ಆಯ್ಕೆಗಳು';

  @override
  String get comickAccountOptions => 'ಕಾಮಿಕ್ ಖಾತೆ ಆಯ್ಕೆಗಳು';

  @override
  String get comickClientId => 'ಕಾಮಿಕ್ ಕ್ಲೈಂಟ್ ಐಡಿ';

  @override
  String get comickClientIdDesc =>
      'ಕಸ್ಟಮ್ ಕ್ಲೈಂಟ್ ಐಡಿ ಕಾಮಿಕ್.ಡೆವ್ ನಲ್ಲಿ ನೋಂದಾಯಿಸಲಾಗಿದೆ';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

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
  String get traktReadOnly => 'ಟ್ರ್ಯಾಕ್ಟ್ ಓದಲು-ಮಾತ್ರ ಪ್ರವೇಶವನ್ನು ನೀಡಿದೆ';

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
  String get followsMutual => 'ಪರಸ್ಪರ';

  @override
  String get followsNotMutual => 'ಪರಸ್ಪರ ಅಲ್ಲ';

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
  String get voiceActors => 'ಧ್ವನಿ ನಟರು';

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
  String get prequel => 'ಪ್ರೀಕ್ವೆಲ್';

  @override
  String get sequel => 'ಉತ್ತರಭಾಗ';

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
  String get traktProfile => 'ಟ್ರ್ಯಾಕ್ಟ್ ಪ್ರೊಫೈಲ್';

  @override
  String get refreshFromSimkl => 'Simkl ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡು';

  @override
  String get refreshFromTrakt => 'ಟ್ರ್ಯಾಕ್ಟ್‌ನಿಂದ ರಿಫ್ರೆಶ್ ಮಾಡಿ';

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
  String get traktAttribution =>
      'ಟ್ರ್ಯಾಕ್ಟ್ ಒದಗಿಸಿದ ಡೇಟಾ ಮತ್ತು ಕಲಾಕೃತಿ. ಟ್ರ್ಯಾಕ್ಟ್‌ನಲ್ಲಿ ವೀಕ್ಷಿಸಿ';

  @override
  String get listsLiked => 'ಇಷ್ಟವಾಯಿತು';

  @override
  String get listsYours => 'ನಿಮ್ಮದು';

  @override
  String get traktVip => 'ವಿಐಪಿ';

  @override
  String get traktVipMember => 'ಟ್ರ್ಯಾಕ್ಟ್ ವಿಐಪಿ ಸದಸ್ಯ';

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
  String get simklMoviesOnly => 'ಚಲನಚಿತ್ರಗಳು ಮತ್ತು ಸರಣಿಗಳು ಮಾತ್ರ';

  @override
  String get simklMoviesOnlyDesc =>
      'ಅನಿಮೆ ಟ್ಯಾಬ್ ಅನ್ನು ಬದಲಾಯಿಸುತ್ತದೆ: ಮೊದಲು ಚಲನಚಿತ್ರಗಳು, ನಂತರ ಒಂದೆರಡು ಅನಿಮೆ ಸಾಲುಗಳೊಂದಿಗೆ ತೋರಿಸುತ್ತದೆ';

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
  String get trailerQuality => 'ಟ್ರೈಲರ್ ಗುಣಮಟ್ಟ';

  @override
  String get titleCopied => 'ಶೀರ್ಷಿಕೆ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get linkCopied => 'ಲಿಂಕ್ ಕಾಪಿ ಆಯ್ತು';

  @override
  String get watchTrailer => 'ಟ್ರೈಲರ್ ನೋಡು';

  @override
  String get copyTitle => 'ಶೀರ್ಷಿಕೆ ಕಾಪಿ ಮಾಡು';

  @override
  String get detailStale =>
      'ಅನಿಲಿಸ್ಟ್ ಅನ್ನು ತಲುಪಲಾಗಲಿಲ್ಲ. ಇದು ಉಳಿಸಿದ ಮಾಹಿತಿಯಾಗಿದೆ ಮತ್ತು ಹಳೆಯದಾಗಿರಬಹುದು.';

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
  String get allCustomLists => 'ಎಲ್ಲಾ ಕಸ್ಟಮ್ ಪಟ್ಟಿಗಳು';

  @override
  String get simklTitleLanguage => 'ಅನಿಮೆ ಶೀರ್ಷಿಕೆ ಭಾಷೆ';

  @override
  String get titleLanguageEnglish => 'ಇಂಗ್ಲೀಷ್';

  @override
  String get titleLanguageRomaji => 'ರೋಮಾಜಿ';

  @override
  String get simklListsTrending => 'ಟ್ರೆಂಡಿಂಗ್';

  @override
  String get simklListsMostLiked => 'ಹೆಚ್ಚು ಇಷ್ಟವಾಯಿತು';

  @override
  String get simklListsMostFollowed => 'ಹೆಚ್ಚಿನವರು ಅನುಸರಿಸಿದರು';

  @override
  String get simklListsOfficial => 'ಅಧಿಕೃತ';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಶೀರ್ಷಿಕೆಗಳು',
      one: '1 ಶೀರ್ಷಿಕೆ',
    );
    return '$_temp0';
  }

  @override
  String get people => 'ಜನರು';

  @override
  String get mostComments => 'ಹೆಚ್ಚಿನ ಕಾಮೆಂಟ್‌ಗಳು';

  @override
  String get alphabetical => 'ವರ್ಣಮಾಲೆಯ';

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
  String get notInList => 'ಪಟ್ಟಿಯಲ್ಲಿಲ್ಲ';

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
  String get animePlanetRank => 'ಶ್ರೇಣಿ';

  @override
  String get animePlanetMagazine => 'ಪತ್ರಿಕೆ';

  @override
  String get animePlanetRefreshLists => 'ನಿಮ್ಮ ಪಟ್ಟಿಗಳನ್ನು ರಿಫ್ರೆಶ್ ಮಾಡಿ';

  @override
  String get animePlanetRefreshListsDesc =>
      'ನಿಮ್ಮ ಅನಿಮೆ-ಪ್ಲಾನೆಟ್ ಪಟ್ಟಿಗಳನ್ನು ಮತ್ತೊಮ್ಮೆ ಓದಿ';

  @override
  String get animePlanetLocalNote =>
      'ನಿಮ್ಮ ಅನಿಮೆ-ಪ್ಲಾನೆಟ್ ಖಾತೆಗೆ ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಲು ಸೈನ್ ಇನ್ ಮಾಡಿ. ಅಲ್ಲಿಯವರೆಗೆ ಅವರು ಈ ಸಾಧನದಲ್ಲಿ ಇರುತ್ತಾರೆ';

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
  String get firstTab => 'ಮೊದಲ ಟ್ಯಾಬ್';

  @override
  String get firstTabDesc =>
      'ಮೊದಲ ಟ್ಯಾಬ್ ಯಾವ ವಿಸ್ತರಣೆಗಳನ್ನು ತೋರಿಸುತ್ತದೆ. ಬಾರ್‌ನಿಂದ ಅನಿಮೆಯನ್ನು ಬಿಡಲು ಮಂಗಾವನ್ನು ಇಲ್ಲಿ ಮತ್ತು ಓದುವ ಟ್ಯಾಬ್‌ನಲ್ಲಿ ಕಾದಂಬರಿಯನ್ನು ಆರಿಸಿ';

  @override
  String get novelExtensions => 'ಕಾದಂಬರಿ ವಿಸ್ತರಣೆಗಳು';

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
  String get year => 'ವರ್ಷ';

  @override
  String get filterAny => 'ಯಾವುದೇ';

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
  String get unfinished => 'ಅಪೂರ್ಣ';

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
  String get died => 'ನಿಧನರಾದರು';

  @override
  String get birthplace => 'ಜನ್ಮಸ್ಥಳ';

  @override
  String get department => 'ಇಲಾಖೆ';

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
  String get moviesWatched => 'ಚಲನಚಿತ್ರಗಳನ್ನು ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get showsWatched => 'ಪ್ರದರ್ಶನಗಳನ್ನು ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get moviesCollected => 'ಚಲನಚಿತ್ರಗಳನ್ನು ಸಂಗ್ರಹಿಸಲಾಗಿದೆ';

  @override
  String get showsCollected => 'ಪ್ರದರ್ಶನಗಳನ್ನು ಸಂಗ್ರಹಿಸಲಾಗಿದೆ';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return 'ಈ ಭಂಡಾರವನ್ನು ಸೇರಿಸುವುದೇ?\n\n$url\n\nನೀವು ನಂಬುವ ಮೂಲಗಳಿಂದ ಮಾತ್ರ ರೆಪೊಸಿಟರಿಗಳನ್ನು ಸೇರಿಸಿ.';
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
  String updatePluginTitle(String name) {
    return '$name ನವೀಕರಿಸಿ';
  }

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
  String syncServiceOn(String name) {
    return '$name ನೊಂದಿಗೆ ಸಿಂಕ್ ಮಾಡಿ';
  }

  @override
  String get syncDelete => 'ಮುಖ್ಯ ಸೇವೆಯು ಹೊಂದಿಲ್ಲ ಎಂಬುದನ್ನು ಅಳಿಸಿ';

  @override
  String get syncDeleteDesc =>
      'ಮುಖ್ಯ ಪಟ್ಟಿಯಲ್ಲಿಲ್ಲದ ಇತರ ಸೇವೆಗಳಿಂದ ನಮೂದುಗಳನ್ನು ತೆಗೆದುಹಾಕಿ. ಶೀರ್ಷಿಕೆಗೆ ಹೊಂದಿಕೆಯಾಗಬಹುದಾದ ನಮೂದುಗಳನ್ನು ಮಾತ್ರ ತೆಗೆದುಹಾಕಲಾಗುತ್ತದೆ, ಆದ್ದರಿಂದ Simkl ಚಲನಚಿತ್ರಗಳು ಮತ್ತು ಸರಣಿಗಳು ಉಳಿಯುತ್ತವೆ';

  @override
  String get syncDeleteTitle => 'ನಮೂದುಗಳನ್ನು ಅಳಿಸುವುದೇ?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ನಮೂದುಗಳು',
      one: '1 ನಮೂದು',
    );
    return '$_temp0 ನಿಮ್ಮ ಮುಖ್ಯ ಪಟ್ಟಿಯಲ್ಲಿಲ್ಲದ ಇತರ ಸೇವೆಗಳಿಂದ ಅಳಿಸಲಾಗುತ್ತದೆ. ಇದನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';
  }

  @override
  String get syncDeleteAction => 'ಅಳಿಸಿ';

  @override
  String get syncToDelete => 'ಅಳಿಸಲು';

  @override
  String get syncDeletedNote => 'ಅಳಿಸಲಾಗುವುದು';

  @override
  String syncWillRemove(int count, String name) {
    return '$count ಅನ್ನು $name ನಿಂದ ಅಳಿಸಲಾಗುತ್ತದೆ';
  }

  @override
  String get syncOnlyForward => 'ಮುಂದಿರುವ ಪ್ರಗತಿ ಉಳಿಸು';

  @override
  String get syncOnlyForwardDesc =>
      'ಈಗಾಗಲೇ ಮುಂದಿರುವ ಸರ್ವಿಸ್‌ನ ಪ್ರಗತಿಯನ್ನು ಕಡಿಮೆ ಮಾಡಬೇಡ';

  @override
  String get animePlanetWontWatch => 'ವೀಕ್ಷಿಸುವುದಿಲ್ಲ';

  @override
  String get animePlanetWontRead => 'ಓದುವುದಿಲ್ಲ';

  @override
  String get animePlanetAlreadyOnList => 'ಈಗಾಗಲೇ ಈ ಪಟ್ಟಿಯಲ್ಲಿದೆ';

  @override
  String get animePlanetNewList => 'ಹೊಸ ಪಟ್ಟಿಯ ಹೆಸರು';

  @override
  String get syncPrivate => 'ಖಾಸಗಿ ನಮೂದುಗಳು';

  @override
  String get syncPrivateDesc =>
      'ನೀವು ಖಾಸಗಿಯಾಗಿ ಇರಿಸಿರುವ ನಮೂದುಗಳೊಂದಿಗೆ ಏನು ಮಾಡಬೇಕು. ಖಾಸಗಿ ಆಯ್ಕೆಯನ್ನು ಹೊಂದಿರುವ ಸೇವೆಯು ಅವುಗಳನ್ನು ಖಾಸಗಿಯಾಗಿ ಪಡೆಯುತ್ತದೆ; ಇತರರು ಅವುಗಳನ್ನು ಸಾರ್ವಜನಿಕವಾಗಿ ತೋರಿಸುತ್ತಾರೆ';

  @override
  String get syncPrivateModeAsk => 'ಕೇಳು';

  @override
  String get syncPrivateModeSync => 'ಅವುಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get syncPrivateModeSkip => 'ಅವುಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get syncPrivateTitle => 'ಖಾಸಗಿ ನಮೂದುಗಳು';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ನಮೂದುಗಳು ಖಾಸಗಿಯಾಗಿವೆ',
      one: '1 ನಮೂದು ಖಾಸಗಿಯಾಗಿದೆ',
    );
    return '$_temp0. ಖಾಸಗಿ ಆಯ್ಕೆಯನ್ನು ಹೊಂದಿರುವ ಸೇವೆಗಳು (AniList, Kitsu, MangaBaka) ಅವುಗಳನ್ನು ಖಾಸಗಿಯಾಗಿ ಪಡೆಯುತ್ತವೆ; ಇತರ ಸೇವೆಗಳು ಯಾವುದೇ ಖಾಸಗಿ ಆಯ್ಕೆಯನ್ನು ಹೊಂದಿಲ್ಲ ಮತ್ತು ಅವುಗಳನ್ನು ಸಾರ್ವಜನಿಕವಾಗಿ ತೋರಿಸುತ್ತವೆ. ಅವುಗಳನ್ನು ಸಿಂಕ್ ಮಾಡುವುದೇ? ನಿಮ್ಮ ಉತ್ತರ ನೆನಪಿದೆ; ಸಿಂಕ್ ಆಯ್ಕೆಗಳ ಅಡಿಯಲ್ಲಿ ಅದನ್ನು ಬದಲಾಯಿಸಿ.';
  }

  @override
  String get syncPrivateInclude => 'ಅವುಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಿ';

  @override
  String get syncPrivateSkip => 'ಅವುಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

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
  String syncRemoved(String services) {
    return '$services ನಿಂದ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
  }

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
    return '1–__ಪಿ0__';
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
  String get trendzNew => 'ಹೊಸ';

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
  String get sourceTags => 'ಟ್ಯಾಗ್‌ಗಳು';

  @override
  String get sourceTagsHint =>
      'ಈ ಮೂಲ ಯಾವುದಕ್ಕಾಗಿ ಎಂಬುದನ್ನು ಟ್ಯಾಗ್ ಮಾಡಿ. ಶೀರ್ಷಿಕೆಯು ಮೊದಲು ಅದಕ್ಕೆ ಟ್ಯಾಗ್ ಮಾಡಲಾದ ಮೂಲಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡುತ್ತದೆ, ನಂತರ ಅನ್ಟ್ಯಾಗ್ ಮಾಡಲಾದವುಗಳನ್ನು ಪಟ್ಟಿ ಮಾಡುತ್ತದೆ. 18+ ಮೂಲಗಳು ವಯಸ್ಕ ಶೀರ್ಷಿಕೆಗಳಿಗೆ ಮಾತ್ರ ತೋರಿಸುತ್ತವೆ.';

  @override
  String get sourceTagAnime => 'ಅನಿಮೆ';

  @override
  String get sourceTagMovies => 'ಚಲನಚಿತ್ರಗಳು ಮತ್ತು ಸರಣಿಗಳು';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'ಟ್ಯಾಗ್‌ಗಳಿಂದ ಮರೆಮಾಡಲಾಗಿದೆ';

  @override
  String get watchOptions => 'ಆಯ್ಕೆಗಳು';

  @override
  String get watchSelect => 'Select';

  @override
  String get watchSelectAll => 'Select all';

  @override
  String watchSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get watchNoneDownloaded => 'None of the selected items are downloaded';

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
  String get watchFailTimeout => 'ಚೆಕ್ ಸಮಯಕ್ಕೆ ಮುಗಿಯಲಿಲ್ಲ';

  @override
  String get watchFailBlocked =>
      'ಸೈಟ್ ಈ ಸಾಧನವನ್ನು ನಿರ್ಬಂಧಿಸಿದೆ (ಪ್ರವೇಶ ನಿರಾಕರಿಸಲಾಗಿದೆ). ಚೆಕ್ ಸಹಾಯ ಮಾಡುವುದಿಲ್ಲ';

  @override
  String get watchFailTurnstile =>
      'ಈ ಚೆಕ್‌ಗೆ ಬ್ಯಾಕ್‌ಗ್ರೌಂಡ್ ಸಾಲ್ವರ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗದ ಟ್ಯಾಪ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get watchFailLoad =>
      'ಪುಟ ಲೋಡ್ ಆಗಲಿಲ್ಲ. ಸಂಪರ್ಕ ಮತ್ತು ಸೈಟ್ ವಿಳಾಸವನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get watchFailRejected =>
      'ಸೈಟ್ ಇದೀಗ ನೀಡಿದ ಕ್ಲಿಯರೆನ್ಸ್ ಅನ್ನು ತಿರಸ್ಕರಿಸಿದೆ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಕುಕೀಗಳನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get watchFailDismissed => 'ಚೆಕ್ ಮುಗಿಯುವ ಮೊದಲು ಮುಚ್ಚಲಾಯಿತು';

  @override
  String get watchFailCooldown =>
      'ನೀವು ಸ್ವಲ್ಪ ಸಮಯದ ಹಿಂದೆ ಚೆಕ್ ಅನ್ನು ಮುಚ್ಚಿದ್ದೀರಿ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಲು ಅದನ್ನು ಪರಿಹರಿಸು ಒತ್ತಿರಿ';

  @override
  String get watchFailQuiet =>
      'ಚೆಕ್‌ಗೆ ನಿಮ್ಮ ಅಗತ್ಯವಿದೆ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್ ತನ್ನದೇ ಆದ ಕೆಲಸ ಮಾಡುತ್ತಿದೆ';

  @override
  String get watchFailWebView => 'ಹಿನ್ನೆಲೆ ವೆಬ್ ವೀಕ್ಷಣೆಯನ್ನು ಪ್ರಾರಂಭಿಸಲಾಗಲಿಲ್ಲ';

  @override
  String get watchFailUnavailable => 'ಚೆಕ್ ಅನ್ನು ತೋರಿಸಲು ಯಾವುದೇ ಪರದೆಯಿಲ್ಲ';

  @override
  String get watchStatusReady => 'ಸಿದ್ಧವಾಗಿದೆ';

  @override
  String get watchStatusChallenge => 'ಕ್ಲೌಡ್‌ಫ್ಲೇರ್ ಪರಿಶೀಲನೆ ಅಗತ್ಯವಿದೆ';

  @override
  String get watchStatusBlocked => 'ಸೈಟ್‌ನಿಂದ ನಿರ್ಬಂಧಿಸಲಾಗಿದೆ';

  @override
  String get watchStatusOffline => 'ಸೈಟ್ ತಲುಪಲು ಸಾಧ್ಯವಿಲ್ಲ';

  @override
  String get watchStatusUntested => 'ಇನ್ನೂ ಪರೀಕ್ಷೆ ಮಾಡಿಲ್ಲ';

  @override
  String get watchStatusTesting => 'ಸಂಪರ್ಕವನ್ನು ಪರೀಕ್ಷಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get watchStatusSolving =>
      'ಕ್ಲೌಡ್‌ಫ್ಲೇರ್ ಚೆಕ್ ಅನ್ನು ರವಾನಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'ಕ್ಲೌಡ್‌ಫ್ಲೇರ್ ಪರಿಶೀಲನೆಯನ್ನು ಹಿನ್ನೆಲೆಯಲ್ಲಿ ರವಾನಿಸಲಾಗಿದೆ ($seconds ಸೆ)';
  }

  @override
  String get watchSolvedByUser => 'ಕ್ಲೌಡ್‌ಫ್ಲೇರ್ ಚೆಕ್ ಪಾಸ್ ಆಗಿದೆ';

  @override
  String watchClearanceIssued(String time) {
    return 'ಗಳಿಸಿದ $time';
  }

  @override
  String get watchClearanceStale =>
      'ಮತ್ತೊಂದು ಬಳಕೆದಾರ ಏಜೆಂಟ್‌ನೊಂದಿಗೆ ಕ್ಲಿಯರೆನ್ಸ್ ಗಳಿಸಲಾಗಿದೆ, ಆದ್ದರಿಂದ ಅದನ್ನು ಕಳುಹಿಸಲಾಗಿಲ್ಲ. ಹೊಸದನ್ನು ಪಡೆಯಲು ಸಂಪರ್ಕವನ್ನು ಪರೀಕ್ಷಿಸಿ';

  @override
  String get watchSectionConnection => 'ಸಂಪರ್ಕ';

  @override
  String get watchSectionSession => 'ಅಧಿವೇಶನ';

  @override
  String get watchSectionTools => 'ಪರಿಕರಗಳು';

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
  String get localSource => 'ಸ್ಥಳೀಯ ಫೈಲ್‌ಗಳು';

  @override
  String get localMissing =>
      'ಈ ಫೈಲ್ ಅಥವಾ ಫೋಲ್ಡರ್ ಇನ್ನು ಮುಂದೆ ನಿಮ್ಮ ಸ್ಥಳೀಯ ಫೋಲ್ಡರ್‌ನಲ್ಲಿ ಇರುವುದಿಲ್ಲ';

  @override
  String get playerStickyStage => 'ಅಂಟಿಕೊಳ್ಳುವ ವೀಡಿಯೊ';

  @override
  String get playerStickyStageDesc =>
      'ನೀವು ಕೆಳಗಿನ ಸಂಚಿಕೆಗಳು ಮತ್ತು ಕಾಮೆಂಟ್‌ಗಳನ್ನು ಸ್ಕ್ರಾಲ್ ಮಾಡುವಾಗ ವೀಡಿಯೊವನ್ನು ಮೇಲ್ಭಾಗದಲ್ಲಿ ಸ್ಥಿರವಾಗಿರಿಸಿಕೊಳ್ಳಿ';

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
  String get playerDisableSkips => 'ಸ್ಕಿಪ್‌ಗಳನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get playerDisableSkipsDesc =>
      'ಪ್ಲೇಯರ್‌ನಲ್ಲಿ ಯಾವುದೇ ಅನಿಸ್ಕಿಪ್ ಅಥವಾ ಸ್ಟ್ರೀಮ್ ಟೈಮ್‌ಸ್ಟ್ಯಾಂಪ್‌ಗಳು, ಅಧ್ಯಾಯ ಗುರುತುಗಳು ಅಥವಾ ಸಲ್ಲಿಕೆಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

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
  String get playerSubtitleOutlineWidth => 'ಉಪಶೀರ್ಷಿಕೆ ರೂಪರೇಖೆಯ ಅಗಲ';

  @override
  String get playerSubtitlePreview => 'ಉಪಶೀರ್ಷಿಕೆ ಪೂರ್ವವೀಕ್ಷಣೆ';

  @override
  String get playerSubtitlePreviewText => 'ಉಪಶೀರ್ಷಿಕೆ ಪೂರ್ವವೀಕ್ಷಣೆ ಪಠ್ಯ';

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
  String get playerPictureSave => 'ಈ ಚೌಕಟ್ಟನ್ನು ಉಳಿಸಿ';

  @override
  String get playerPictureOriginal => 'ಮೂಲ';

  @override
  String get playerPictureOriginalDesc =>
      'ಶೇಡರ್‌ಗಳು ಅಥವಾ ಬಣ್ಣಗಳಿಲ್ಲದೆಯೇ ವೀಡಿಯೊ ಹೊಂದಿರುವ ಫ್ರೇಮ್';

  @override
  String get playerPictureProcessed => 'ಛಾಯೆಗಳು ಮತ್ತು ಬಣ್ಣಗಳೊಂದಿಗೆ';

  @override
  String get playerPictureProcessedDesc => 'ನೀವು ಈಗ ನೋಡುತ್ತಿರುವಂತೆ ಫ್ರೇಮ್';

  @override
  String get playerPictureSaved => 'ಫ್ರೇಮ್ ಉಳಿಸಲಾಗಿದೆ';

  @override
  String get playerPictureSaveFailed => 'ಫ್ರೇಮ್ ಅನ್ನು ಉಳಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

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
      'ಶೇಡರ್‌ಗಳಿಗೆ ಹಾರ್ಡ್‌ವೇರ್ ರೆಂಡರಿಂಗ್ ಅಗತ್ಯವಿದೆ, ಮತ್ತು ಪ್ಲೇಯರ್ ಸಾಫ್ಟ್‌ವೇರ್ ರೆಂಡರಿಂಗ್ ಅನ್ನು ಬಳಸುತ್ತಿದ್ದಾರೆ. ಪ್ಲೇಯರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಸಾಫ್ಟ್‌ವೇರ್ ರೆಂಡರಿಂಗ್ ಅನ್ನು ಆಫ್ ಮಾಡಿ.';

  @override
  String get playerSoftwareRender => 'ಸಾಫ್ಟ್ವೇರ್ ರೆಂಡರಿಂಗ್';

  @override
  String get playerSoftwareRenderDesc =>
      'ಕಪ್ಪು ವೀಡಿಯೊಗೆ ಮಾತ್ರ. ಶೇಡರ್‌ಗಳು ಅದರೊಂದಿಗೆ ಕೆಲಸ ಮಾಡುವುದಿಲ್ಲ. ಮುಂದಿನ ಬಾರಿ ಆಟಗಾರನು ತೆರೆದಾಗ ಅನ್ವಯಿಸುತ್ತದೆ';

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
  String get streamGroupSub => 'ಉಪ';

  @override
  String get streamGroupHardSub => 'ಹಾರ್ಡ್ ಉಪ';

  @override
  String get streamGroupSoftSub => 'ಮೃದು ಉಪ';

  @override
  String get streamGroupDub => 'ಡಬ್';

  @override
  String get streamGroupRaw => 'ಕಚ್ಚಾ';

  @override
  String get streamGroupOther => 'ಇತರೆ';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಸ್ಟ್ರೀಮ್‌ಗಳು',
      one: '1 ಸ್ಟ್ರೀಮ್',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ಸ್ಟ್ರೀಮ್‌ಗಳು';

  @override
  String get playerStreamFailedNext =>
      'ಆ ಸ್ಟ್ರೀಮ್ ಪ್ಲೇ ಆಗುವುದಿಲ್ಲ, ಮುಂದಿನದನ್ನು ಪ್ರಯತ್ನಿಸುತ್ತದೆ';

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
  String get readerOpenBook => 'ಪುಸ್ತಕ ತೆರೆಯಿರಿ';

  @override
  String get readerOpenBookDesc =>
      'ನಿಮ್ಮ ಫೈಲ್‌ಗಳಿಂದ ಎಪಬ್ (ಕಾದಂಬರಿ ರೀಡರ್) ಅಥವಾ ಪಿಡಿಎಫ್ (ಮಂಗಾ ರೀಡರ್) ಅನ್ನು ಓದಿ';

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
  String get readerModeAuto => 'ಸ್ವಯಂ (ಸರಣಿ ಪ್ರಕಾರ)';

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
  String get readerFilterQuality => 'ಚಿತ್ರದ ಫಿಲ್ಟರ್ ಗುಣಮಟ್ಟ';

  @override
  String get readerFilterQualityNone => 'ಯಾವುದೂ ಇಲ್ಲ (ಹತ್ತಿರದ ನೆರೆಹೊರೆಯವರು)';

  @override
  String get readerFilterQualityLow => 'ಕಡಿಮೆ (ಬಿಲಿನಿಯರ್)';

  @override
  String get readerFilterQualityMedium => 'ಮಧ್ಯಮ (ಟ್ರೈಲಿನಿಯರ್)';

  @override
  String get readerFilterQualityHigh => 'ಹೈ (ಬಿಕ್ಯುಬಿಕ್)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (ತುಕ್ಕು ಉತ್ತಮ ಗುಣಮಟ್ಟದ)';

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
  String get readerLongPressSave => 'ಅದನ್ನು ಉಳಿಸಲು ಪುಟವನ್ನು ಹಿಡಿದುಕೊಳ್ಳಿ';

  @override
  String get readerLongPressSaveDesc =>
      'ಉಳಿಸಲು, ಹಂಚಿಕೊಳ್ಳಲು ಮತ್ತು ನಕಲು ಆಯ್ಕೆಗಳನ್ನು ತೆರೆಯಲು ಪುಟವನ್ನು ದೀರ್ಘವಾಗಿ ಒತ್ತಿರಿ';

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
  String get readerResetConfirm =>
      'ಪ್ರತಿ ರೀಡರ್ ಸೆಟ್ಟಿಂಗ್ ಅನ್ನು ಅದರ ಡೀಫಾಲ್ಟ್‌ಗೆ ಮರುಹೊಂದಿಸುವುದೇ?';

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
    return 'ನೀವು ವೀಕ್ಷಿಸುತ್ತಿರುವಂತೆ ಈ ಸಾಧನದಲ್ಲಿನ ನಿಮ್ಮ ಪಟ್ಟಿಗೆ $name ನಲ್ಲಿ ನಿಮ್ಮ ಪ್ರಗತಿಯನ್ನು ಉಳಿಸುವುದೇ?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'ನೀವು ಅಧ್ಯಾಯವನ್ನು ಪೂರ್ಣಗೊಳಿಸಿದಾಗ ಈ ಸಾಧನದಲ್ಲಿನ ನಿಮ್ಮ ಪಟ್ಟಿಗೆ $name ನಲ್ಲಿ ನಿಮ್ಮ ಪ್ರಗತಿಯನ್ನು ಉಳಿಸುವುದೇ?';
  }

  @override
  String get downloadClearQueue => 'ಕ್ಯೂ ತೆರವುಗೊಳಿಸಿ';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'ಸರದಿಯಲ್ಲಿರುವ ಎಲ್ಲಾ $count ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ರದ್ದುಗೊಳಿಸುವುದೇ? ಈಗಾಗಲೇ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿರುವುದನ್ನು ಅಳಿಸಲಾಗಿದೆ.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get downloadSelectAll => 'ಎಲ್ಲವನ್ನೂ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get downloadDeleteSelected => 'ಆಯ್ಕೆಮಾಡಿದ ಅಳಿಸು';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ಅಳಿಸುವುದೇ? ಅವರ ಫೈಲ್‌ಗಳನ್ನು ಸಾಧನದಿಂದ ತೆಗೆದುಹಾಕಲಾಗುತ್ತದೆ.';
  }

  @override
  String get castTitle => 'ಸಾಧನಕ್ಕೆ ಬಿತ್ತರಿಸು';

  @override
  String get castSearching =>
      'ನಿಮ್ಮ ನೆಟ್‌ವರ್ಕ್‌ನಲ್ಲಿ ಸಾಧನಗಳನ್ನು ಹುಡುಕಲಾಗುತ್ತಿದೆ...';

  @override
  String get castNoDevices =>
      'ಯಾವುದೇ ಸಾಧನಗಳು ಕಂಡುಬಂದಿಲ್ಲ. ಟಿವಿ ಅಥವಾ ಕ್ರೋಮ್‌ಕಾಸ್ಟ್ ಒಂದೇ ವೈ-ಫೈನಲ್ಲಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ, ನಂತರ ಮತ್ತೆ ಹುಡುಕಿ.';

  @override
  String get castRefresh => 'ಮತ್ತೆ ಹುಡುಕಿ';

  @override
  String get castFailed => 'ಬಿತ್ತರಿಸುವಿಕೆಯನ್ನು ಪ್ರಾರಂಭಿಸಲಾಗಲಿಲ್ಲ';

  @override
  String get castStop => 'ಬಿತ್ತರಿಸುವುದನ್ನು ನಿಲ್ಲಿಸಿ';

  @override
  String castNowCasting(String name) {
    return '$name ಗೆ ಬಿತ್ತರಿಸಲಾಗುತ್ತಿದೆ';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / ಸ್ಮಾರ್ಟ್ ಟಿವಿ';

  @override
  String get castProtocolRoku => 'ರೋಕು';

  @override
  String get castRokuNote =>
      'Roku ವರದಿ ಮಾಡಲು ಅಥವಾ ಸ್ಥಾನವನ್ನು ಬದಲಾಯಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ';

  @override
  String get castControls => 'ನಿಯಂತ್ರಣಗಳು';

  @override
  String get castVolume => 'ಟಿವಿ ಪರಿಮಾಣ';

  @override
  String castSkipPart(String name) {
    return '$name ಬಿಟ್ಟುಬಿಡಿ';
  }

  @override
  String get trackProgressRememberSeries => 'ಈ ಸರಣಿಗಾಗಿ ನೆನಪಿಡಿ';

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
  String get themePickerTitle => 'ಥೀಮ್';

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
  String togetherLinkConfirm(String room) {
    return '$room ಕೊಠಡಿಗೆ ಸೇರುವುದೇ? ಆತಿಥೇಯರು ಏನು ಆಡುತ್ತಾರೆ ಎಂಬುದನ್ನು ಆಯ್ಕೆ ಮಾಡುತ್ತಾರೆ ಮತ್ತು ಅವರು ವೀಕ್ಷಿಸಲು ಪ್ರಾರಂಭಿಸಿದಾಗ ಆಟಗಾರನು ಸ್ವತಃ ತೆರೆಯುತ್ತಾನೆ.';
  }

  @override
  String get togetherJoin => 'ಸೇರಿಕೊಳ್ಳಿ';

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
  String get togetherShareInvite => 'ಆಹ್ವಾನವನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String togetherShareText(String link) {
    return 'ಡಾರ್ಟೊಟ್ಸು ನಲ್ಲಿ ನನ್ನೊಂದಿಗೆ ವೀಕ್ಷಿಸಿ: $link';
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
  String get novelPaged => 'ಪುಟ ತಿರುಗಿಸುತ್ತಿದೆ';

  @override
  String get novelPagedDesc =>
      'ಅಧ್ಯಾಯವನ್ನು ಪುಟಗಳಾಗಿ ವಿಭಜಿಸಿ ಮತ್ತು ಸ್ಕ್ರೋಲಿಂಗ್ ಮಾಡುವ ಬದಲು ಅವುಗಳನ್ನು ತಿರುಗಿಸಲು ಸ್ವೈಪ್ ಮಾಡಿ ಅಥವಾ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String novelPageOf(int current, int total) {
    return '$total ರಲ್ಲಿ $current ಪುಟ';
  }

  @override
  String get novelPaginating => 'ಪುಟಗಳನ್ನು ಹಾಕುವುದು';

  @override
  String get novelTools => 'ವಿಷಯಗಳು, ಹುಡುಕಾಟ ಮತ್ತು ಮುಖ್ಯಾಂಶಗಳು';

  @override
  String get novelContents => 'ಪರಿವಿಡಿ';

  @override
  String get novelContentsEmpty => 'ಈ ಅಧ್ಯಾಯವು ಯಾವುದೇ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಹೊಂದಿಲ್ಲ';

  @override
  String get novelSearch => 'ಹುಡುಕು';

  @override
  String get novelSearchHint => 'ಈ ಅಧ್ಯಾಯದಲ್ಲಿ ಹುಡುಕಿ';

  @override
  String get novelSearchNone => 'ಯಾವುದೇ ಹೊಂದಾಣಿಕೆಗಳಿಲ್ಲ';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಹೊಂದಾಣಿಕೆಗಳು',
      one: '1 ಪಂದ್ಯ',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'ಮುಖ್ಯಾಂಶಗಳು';

  @override
  String get novelHighlightsEmpty =>
      'ಕೆಲವು ಪಠ್ಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ಅದನ್ನು ಇಲ್ಲಿ ಇರಿಸಲು ಹೈಲೈಟ್ ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get novelHighlight => 'ಹೈಲೈಟ್';

  @override
  String get novelHighlightNote => 'ಗಮನಿಸಿ';

  @override
  String get novelHighlightNoteHint => 'ಟಿಪ್ಪಣಿ ಸೇರಿಸಿ';

  @override
  String get novelHighlightRemove => 'ಹೈಲೈಟ್ ತೆಗೆದುಹಾಕಿ';

  @override
  String get novelHighlightFailed =>
      'ಆ ಆಯ್ಕೆಯನ್ನು ಪಠ್ಯಕ್ಕೆ ಹೊಂದಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

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
  String get playerSkipSubmit => 'ಸ್ಕಿಪ್ ಬಾರಿ ಸಲ್ಲಿಸಿ';

  @override
  String get playerSkipSubmitDesc =>
      'ಈ ಸಂಚಿಕೆಯಲ್ಲಿ ಪ್ರಾರಂಭ, ಅಂತ್ಯ ಅಥವಾ ರೀಕ್ಯಾಪ್ ಎಲ್ಲಿ ಪ್ರಾರಂಭವಾಗುತ್ತದೆ ಮತ್ತು ಕೊನೆಗೊಳ್ಳುತ್ತದೆ ಎಂಬುದನ್ನು ಗುರುತಿಸಿ ಮತ್ತು ಅದನ್ನು AniSkip ನೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳಿ, ಆದ್ದರಿಂದ ಪ್ರತಿಯೊಬ್ಬರೂ ಸ್ಕಿಪ್ ಬಟನ್ ಅನ್ನು ಪಡೆಯುತ್ತಾರೆ.';

  @override
  String get playerSkipStart => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get playerSkipEnd => 'ಅಂತ್ಯ';

  @override
  String get playerSkipUseNow => 'ಪ್ರಸ್ತುತ ಸ್ಥಾನವನ್ನು ಬಳಸಿ';

  @override
  String get playerSkipSend => 'AniSkip ಗೆ ಸಲ್ಲಿಸಿ';

  @override
  String get playerSkipSent =>
      'AniSkip ಗೆ ಸಲ್ಲಿಸಿದ ಸಮಯವನ್ನು ಬಿಟ್ಟುಬಿಡಿ, ಧನ್ಯವಾದಗಳು';

  @override
  String playerSkipFailed(String error) {
    return 'ಆನಿಸ್ಕಿಪ್ ಸ್ಕಿಪ್ ಸಮಯವನ್ನು ನಿರಾಕರಿಸಿದೆ: $error';
  }

  @override
  String get playerUnsupported =>
      'ಈ ಸಾಧನದಲ್ಲಿ ವೀಡಿಯೊ ಪ್ಲೇಯರ್ ರನ್ ಆಗುವುದಿಲ್ಲ (ಬಂಡಲ್ ಮಾಡಿದ ಪ್ಲೇಯರ್ ಲೈಬ್ರರಿಗೆ ಅದರ Android ಆವೃತ್ತಿಯು ತುಂಬಾ ಹಳೆಯದಾಗಿದೆ). ವಿವರಗಳನ್ನು ನಕಲಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get playerSkipNoMal =>
      'ಈ ಶೀರ್ಷಿಕೆಯು ಯಾವುದೇ MyAnimeList ಐಡಿಯನ್ನು ಹೊಂದಿಲ್ಲ, AniSkip ಅದನ್ನು ತೆಗೆದುಕೊಳ್ಳಲು ಸಾಧ್ಯವಿಲ್ಲ';

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
  String get playerPipPlay => 'ಪ್ಲೇ ಮಾಡಿ';

  @override
  String get playerPipPause => 'ವಿರಾಮ';

  @override
  String get playerPipBack => 'ರಿವೈಂಡ್';

  @override
  String get playerPipForward => 'ಮುಂದಕ್ಕೆ';

  @override
  String get playerPipRestore => 'ಆಟಗಾರನಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get playerPipActive => 'ಸಣ್ಣ ಕಿಟಕಿಯಲ್ಲಿ ಆಡಲಾಗುತ್ತಿದೆ';

  @override
  String get listDateAdded => 'ಪಟ್ಟಿಗೆ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get listDateLastWatched => 'ಕೊನೆಯದಾಗಿ ವೀಕ್ಷಿಸಲಾಗಿದೆ';

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
  String get widgetContinue => 'ಮುಂದುವರಿಸಿ';

  @override
  String get widgetReleases => 'ಶೀಘ್ರದಲ್ಲೇ ಬಿಡುಗಡೆಯಾಗುತ್ತಿದೆ';

  @override
  String get widgetMore => 'ಸಹ ಪ್ರಗತಿಯಲ್ಲಿದೆ';

  @override
  String get widgetNothing => 'ಇನ್ನೂ ಏನನ್ನೂ ಮುಂದುವರಿಸಲು ಇಲ್ಲ';

  @override
  String get downloadStorageTitle => 'ಸಂಗ್ರಹಣೆ';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಡೌನ್‌ಲೋಡ್‌ಗಳು',
      one: '1 ಡೌನ್‌ಲೋಡ್',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size ಈಗಾಗಲೇ ವೀಕ್ಷಿಸಲಾಗಿದೆ ಅಥವಾ ಓದಿದೆ';
  }

  @override
  String get downloadFreeUp => 'ಜಾಗವನ್ನು ಮುಕ್ತಗೊಳಿಸಿ';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ವೀಕ್ಷಿಸಲಾಗಿದೆ',
      one: '1 ಡೌನ್‌ಲೋಡ್ ವೀಕ್ಷಿಸಲಾಗಿದೆ',
    );
    return 'ಅಳಿಸಿ $_temp0 ಮತ್ತು ಉಚಿತ $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'ಮುಕ್ತಗೊಳಿಸಲಾಗಿದೆ $size';
  }

  @override
  String get downloadDeleteWatched => 'ಅಳಿಸಿ ವೀಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get downloadDeleteAll => 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title ನ ಪ್ರತಿ ಡೌನ್‌ಲೋಡ್ ಅಳಿಸುವುದೇ?';
  }

  @override
  String get downloadNothingWatched =>
      'ನೀವು ಪೂರ್ಣಗೊಳಿಸಿದ ಯಾವುದನ್ನೂ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗಿಲ್ಲ';

  @override
  String get downloadStorageEmpty =>
      'ಯಾವುದೇ ಡೌನ್‌ಲೋಡ್‌ಗಳು ಸ್ಥಳಾವಕಾಶವನ್ನು ಬಳಸುತ್ತಿಲ್ಲ';

  @override
  String get downloadsOpenDesc =>
      'ಕ್ಯೂ ಮತ್ತು ಈ ಡಿವೈಸ್‌ನಲ್ಲಿ ಉಳಿಸಿದ ಎಲ್ಲವನ್ನೂ ನೋಡು';

  @override
  String get downloadTitle => 'ಡೌನ್‌ಲೋಡ್';

  @override
  String get downloadMetaOnly => 'ಮೆಟಾಡೇಟಾ ಮಾತ್ರ';

  @override
  String get downloadMetaFailed => 'ಶೀರ್ಷಿಕೆ ಫೋಲ್ಡರ್ ರಚಿಸಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String downloadMetaSaved(String path) {
    return 'ಉಳಿಸಲಾಗಿದೆ. ನಿಮ್ಮ ಫೈಲ್‌ಗಳನ್ನು $path ನಲ್ಲಿ ಇರಿಸಿ';
  }

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
  String get downloadDashDrm => 'ಈ ಸ್ಟ್ರೀಮ್ DRM ರಕ್ಷಿತವಾಗಿದೆ';

  @override
  String get downloadDashNoVideo =>
      'DASH ಮ್ಯಾನಿಫೆಸ್ಟ್ ಯಾವುದೇ ವೀಡಿಯೊವನ್ನು ಹೊಂದಿಲ್ಲ';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
    return '$source ಹೊಸದನ್ನು ಹೊಂದಿರುವಾಗ ನಿಮಗೆ ತಿಳಿಸಲಾಗುವುದು';
  }

  @override
  String get sourceNotifyOff => 'ಅಧಿಸೂಚನೆಗಳನ್ನು ಬಿಡುಗಡೆ ಮಾಡಿ';

  @override
  String get sourceNotifyNeedsSource => 'ಮೊದಲು ಹೊಂದಾಣಿಕೆಯೊಂದಿಗೆ ಮೂಲವನ್ನು ಆರಿಸಿ';

  @override
  String sourceNotifyAllOut(int count) {
    return 'ಎಲ್ಲವೂ ($count) ಈಗಾಗಲೇ ಮುಗಿದಿದೆ, ಕಾಯಲು ಏನೂ ಇಲ್ಲ';
  }

  @override
  String get sourceNotifyTooltipOn => 'ಬಿಡುಗಡೆ ಅಧಿಸೂಚನೆಗಳನ್ನು ನಿಲ್ಲಿಸಿ';

  @override
  String get sourceNotifyTooltipOff => 'ಹೊಸ ಬಿಡುಗಡೆಗಳ ಕುರಿತು ನನಗೆ ಸೂಚಿಸಿ';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'ಸಂಚಿಕೆ $number $source ರಂದು ಹೊರಬಂದಿದೆ';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'ಸಂಚಿಕೆಗಳು $from–$to $source ರಂದು ಹೊರಬಂದಿವೆ';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'ಅಧ್ಯಾಯ $number $source ರಂದು ಹೊರಬಂದಿದೆ';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'ಅಧ್ಯಾಯಗಳು $from–$to $source ರಂದು ಹೊರಬಂದಿವೆ';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count ಶೀರ್ಷಿಕೆಗಳು ಹೊಸದನ್ನು ಹೊಂದಿವೆ';
  }

  @override
  String get navSources => 'ಮೂಲಗಳು';

  @override
  String sourceInactiveOpen(String manager) {
    return 'ಈ ಮೂಲವು $manager ಗೆ ಸೇರಿದೆ, ಇದು ಸಕ್ರಿಯ ವಿಸ್ತರಣೆ ಸೇವೆಯಲ್ಲ';
  }

  @override
  String get sourceAlertsHeader => 'ಅಧಿಸೂಚನೆಗಳನ್ನು ಬಿಡುಗಡೆ ಮಾಡಿ';

  @override
  String get sourceAlertsSwitch => 'ಚಂದಾದಾರರಾದ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get sourceAlertsSwitchDesc =>
      'ಪ್ರತಿ ಬಾರಿ ಅಪ್ಲಿಕೇಶನ್ ತೆರೆದಾಗ, ಶೀರ್ಷಿಕೆಗಳಿಗಾಗಿ ನೀವು ಬೆಲ್ ಅನ್ನು ಆನ್ ಮಾಡಿ';

  @override
  String get sourceSkipUnstarted => 'ನೀವು ಪ್ರಾರಂಭಿಸದ ಶೀರ್ಷಿಕೆಗಳನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get sourceSkipUnstartedDesc =>
      'ಇನ್ನೂ ಏನನ್ನೂ ವೀಕ್ಷಿಸಿಲ್ಲ ಅಥವಾ ಓದಿಲ್ಲ, ಆದರೆ ಸಂಚಿಕೆಗಳು ಈಗಾಗಲೇ ಅಸ್ತಿತ್ವದಲ್ಲಿವೆ';

  @override
  String get sourceSkipUnseen =>
      'ನೀವು ನೋಡದ ಸಂಚಿಕೆಗಳನ್ನು ಹೊಂದಿರುವಾಗ ಸ್ಕಿಪ್ ಮಾಡಿ';

  @override
  String get sourceSkipUnseenDesc =>
      'ನೀವು ಇನ್ನೂ ಎಪಿಸೋಡ್‌ಗಳನ್ನು ಬಿಡುಗಡೆ ಮಾಡಿದ್ದೀರಿ';

  @override
  String get sourceManage => 'ಚಂದಾದಾರಿಕೆಗಳು';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಶೀರ್ಷಿಕೆಗಳು',
      one: '1 ಶೀರ್ಷಿಕೆ',
      zero: 'ಶೀರ್ಷಿಕೆಗಳಿಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'ಈಗ ಪರಿಶೀಲಿಸಿ';

  @override
  String get sourceCheckNowDesc =>
      'ವೇಳಾಪಟ್ಟಿ ಮತ್ತು ಸ್ಕಿಪ್ ನಿಯಮಗಳನ್ನು ನಿರ್ಲಕ್ಷಿಸುತ್ತದೆ';

  @override
  String get sourceChecking => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಶೀರ್ಷಿಕೆಗಳು ಹೊಸದನ್ನು ಹೊಂದಿವೆ',
      one: '1 ಶೀರ್ಷಿಕೆಯು ಹೊಸದನ್ನು ಹೊಂದಿದೆ',
      zero: 'ಹೊಸದೇನೂ ಇಲ್ಲ',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'ಇನ್ನೂ ಯಾವುದೇ ಚಂದಾದಾರಿಕೆಗಳಿಲ್ಲ';

  @override
  String get sourceEmptyMessage =>
      'ಹೊಸದನ್ನು ಕುರಿತು ಹೇಳಲು ಶೀರ್ಷಿಕೆಯ ಸಂಚಿಕೆಗಳ ಮೇಲಿನ ಬೆಲ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get sourceAll => 'ಎಲ್ಲಾ';

  @override
  String sourceInactive(String manager) {
    return 'ನಿಷ್ಕ್ರಿಯ: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return 'ಈ ವಿಸ್ತರಣೆ ಸೇವೆಯಲ್ಲಿ $source ಅನ್ನು ಸ್ಥಾಪಿಸಲಾಗಿಲ್ಲ';
  }

  @override
  String get sourceUnreachable => 'ಮೂಲವು ಪ್ರತಿಕ್ರಿಯಿಸುತ್ತಿಲ್ಲ';

  @override
  String get sourceFinished => 'ಮುಗಿದಿದೆ';

  @override
  String get sourceSkippedCompleted => 'ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ: ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String get sourceSkippedUnstarted => 'ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ: ಪ್ರಾರಂಭಿಸಲಾಗಿಲ್ಲ';

  @override
  String get sourceSkippedUnseen => 'ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ: ನೋಡದ ಸಂಚಿಕೆಗಳು';

  @override
  String get sourceWaiting => 'ಮುಂದಿನ ಬಿಡುಗಡೆಗಾಗಿ ಕಾಯಲಾಗುತ್ತಿದೆ';

  @override
  String sourceNextCheck(String when) {
    return 'ಮುಂದಿನ ಚೆಕ್ $when';
  }

  @override
  String get sourceSoon => 'ಶೀಘ್ರದಲ್ಲೇ';

  @override
  String sourceInHours(int count) {
    return '${count}h ನಲ್ಲಿ';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d ನಲ್ಲಿ';
  }

  @override
  String sourceLatest(String number) {
    return 'ಇತ್ತೀಚಿನದು: $number';
  }

  @override
  String get sourceMute => 'ಮ್ಯೂಟ್ ಮಾಡಿ';

  @override
  String get sourceUnmute => 'ಅನ್‌ಮ್ಯೂಟ್ ಮಾಡಿ';

  @override
  String get sourceMuted => 'ಮ್ಯೂಟ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get sourceUnsubscribe => 'ಅನ್‌ಸಬ್‌ಸ್ಕ್ರೈಬ್ ಮಾಡಿ';

  @override
  String get sourcePickAnother => 'ಇನ್ನೊಂದು ಮೂಲವನ್ನು ಆರಿಸಿ';

  @override
  String get sourceOpenExtensions => 'ವಿಸ್ತರಣೆಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get sourceNoticesEmpty => 'ಇನ್ನೂ ಯಾವುದೇ ಬಿಡುಗಡೆ ಸೂಚನೆಗಳಿಲ್ಲ';

  @override
  String get sourceNoticesEmptyMessage =>
      'ನಿಮ್ಮ ಚಂದಾದಾರಿಕೆ ಶೀರ್ಷಿಕೆಗಳಿಂದ ಹೊಸ ಸಂಚಿಕೆಗಳು ಮತ್ತು ಅಧ್ಯಾಯಗಳು ಇಲ್ಲಿ ತೋರಿಸುತ್ತವೆ';

  @override
  String get sourceOpenTitle => 'ಶೀರ್ಷಿಕೆ ತೆರೆಯಿರಿ';

  @override
  String get extensionsLoading => 'ವಿಸ್ತರಣೆಗಳನ್ನು ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get updateWhatsNew => 'ಹೊಸತೇನಿದೆ';

  @override
  String get updateLater => 'ನಂತರ';

  @override
  String get updateSkipVersion => 'ಈ ಆವೃತ್ತಿಯನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get updatePreparing => 'ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get updateDownloading => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ';

  @override
  String get updateInstalling => 'ಸ್ಥಾಪಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String updateSizeOf(String done, String total) {
    return '$total ರಲ್ಲಿ $done';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'ಬಿಡುಗಡೆ $date';
  }

  @override
  String get updateNoAsset =>
      'ಈ ಬಿಡುಗಡೆಯು ನಿಮ್ಮ ಸಾಧನಕ್ಕೆ ಯಾವುದೇ ಡೌನ್‌ಲೋಡ್ ಅನ್ನು ಹೊಂದಿಲ್ಲ';

  @override
  String get updateUpToDate => 'ನೀವು ಇತ್ತೀಚಿನ ಆವೃತ್ತಿಯಲ್ಲಿರುವಿರಿ';

  @override
  String get updateIosHint =>
      'iOS ಬಿಲ್ಡ್‌ಗಳು ಆಪ್ ಸ್ಟೋರ್‌ನಲ್ಲಿಲ್ಲ. ಬಿಡುಗಡೆ ಪುಟದಿಂದ .ipa ಅನ್ನು ಪಡೆದುಕೊಳ್ಳಿ ಮತ್ತು ಅದನ್ನು AltStore ಅಥವಾ SideStore ನೊಂದಿಗೆ ಸೈಡ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get updateOpenedBrowser => 'ನಿಮ್ಮ ಬ್ರೌಸರ್ ಪರಿಶೀಲಿಸಿ';

  @override
  String get updateTryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get settingsNotifications => 'ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get settingsNotificationsDesc =>
      'ನಿಮ್ಮ ಪಟ್ಟಿಗಳು, ಹೊಸ ಸಂಚಿಕೆಗಳು ಮತ್ತು ಅಧ್ಯಾಯಗಳು ಮತ್ತು ಕಾಮೆಂಟ್ ಪ್ರತ್ಯುತ್ತರಗಳಿಗಾಗಿ ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get settingsAboutUpdates => 'ಬಗ್ಗೆ ಮತ್ತು ನವೀಕರಣಗಳು';

  @override
  String get settingsAboutUpdatesDesc =>
      'ಅಪ್ಲಿಕೇಶನ್ ನವೀಕರಣಗಳು, ಆವೃತ್ತಿ, ಲಾಗ್‌ಗಳು, ಲಿಂಕ್‌ಗಳು ಮತ್ತು ಬೆಂಬಲ';

  @override
  String get settingsGroupAccount => 'ನಿಮ್ಮ ಖಾತೆ';

  @override
  String get settingsGroupContent => 'ವಿಷಯ';

  @override
  String get settingsGroupApp => 'ಅಪ್ಲಿಕೇಶನ್';

  @override
  String get settingsAnimeDesc =>
      'ಪ್ಲೇಯರ್, ಉಪಶೀರ್ಷಿಕೆಗಳು, ಸ್ಕಿಪ್ಪಿಂಗ್, ಸಂಚಿಕೆ ಪಟ್ಟಿ ಮತ್ತು ಸಂಚಿಕೆ ವಿವರಗಳು';

  @override
  String get settingsMangaDesc =>
      'ರೀಡರ್ ಮೋಡ್, ನಿಯಂತ್ರಣಗಳು, ಪ್ರದರ್ಶನ ಮತ್ತು ಅಧ್ಯಾಯ ಟ್ರ್ಯಾಕಿಂಗ್';

  @override
  String get settingsNovelDesc =>
      'ಪಠ್ಯ, ಪುಟ ತಿರುವು, ಅನುವಾದ ಮತ್ತು ಗಟ್ಟಿಯಾಗಿ ಓದಿ';

  @override
  String get settingsLocalPlay => 'ಸ್ಥಳೀಯ ಆಟ';

  @override
  String get settingsLocalPlayDesc =>
      'ಫೈಲ್‌ಗಳು, ಫೋಲ್ಡರ್‌ಗಳು, ನೆಟ್‌ವರ್ಕ್ ಸ್ಟ್ರೀಮ್‌ಗಳು ಮತ್ತು ಟೊರೆಂಟ್‌ಗಳನ್ನು ಪ್ಲೇ ಮಾಡಿ ಅಥವಾ ಪುಸ್ತಕವನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get settingsLocalPlayVideo => 'ವೀಡಿಯೊ';

  @override
  String get settingsLocalPlayBooks => 'ಪುಸ್ತಕಗಳು';

  @override
  String get settingsWatchSections => 'ವಿಭಾಗಗಳು';

  @override
  String get settingsSectionLists => 'ಸಂಚಿಕೆ ಮತ್ತು ಅಧ್ಯಾಯ ಪಟ್ಟಿಗಳು';

  @override
  String get settingsSectionProgress => 'ಪ್ರಗತಿ ಟ್ರ್ಯಾಕಿಂಗ್';

  @override
  String get updateChannelDesc =>
      'ಪರೀಕ್ಷೆಯ ಬಿಡುಗಡೆಯು ಸ್ಥಿರವಾಗಿದೆ. ಪ್ರೀ-ರಿಲೀಸ್ ಮತ್ತು ಆಲ್ಫಾ ಹೊಸ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಬೇಗ ಪಡೆಯುತ್ತವೆ ಆದರೆ ಮುರಿದು ಹೋಗಬಹುದು';

  @override
  String get checkNowDesc => 'ಈಗಿನಿಂದಲೇ ಹೊಸ ಆವೃತ್ತಿಯನ್ನು ನೋಡಿ';

  @override
  String get generalSectionBasics => 'ಭಾಷೆ ಮತ್ತು ನಡವಳಿಕೆ';

  @override
  String get generalSectionSecurity => 'ಭದ್ರತೆ';

  @override
  String get generalSectionPrivacy => 'ಗೌಪ್ಯತೆ';

  @override
  String notificationsOtherService(String service) {
    return 'ಇದನ್ನು ತೆರೆಯಲು $service ಗೆ ಬದಲಿಸಿ';
  }

  @override
  String get secPlayerPlayback =>
      'ಡೀಫಾಲ್ಟ್ ವೇಗ, ಸ್ವಯಂ ಪ್ಲೇ, ವೀಡಿಯೊ ಫಿಟ್, ದೃಷ್ಟಿಕೋನ ಮತ್ತು ಚಿತ್ರದಲ್ಲಿ ಚಿತ್ರ';

  @override
  String get secPlayerSkip =>
      'ತೆರೆಯುವಿಕೆಗಳು, ಅಂತ್ಯಗಳು ಮತ್ತು ರೀಕ್ಯಾಪ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get secPlayerControls =>
      'ಗೆಸ್ಚರ್‌ಗಳನ್ನು ಸ್ವೈಪ್ ಮಾಡಿ, ಹಿಡಿದುಕೊಳ್ಳಿ ಮತ್ತು ಟ್ಯಾಪ್ ಮಾಡಿ ಮತ್ತು ಪೂರ್ವವೀಕ್ಷಣೆಯನ್ನು ಹುಡುಕಿ';

  @override
  String get secPlayerSubtitles => 'ಭಾಷೆಗಳು, ನೋಟ ಮತ್ತು ಉಪಶೀರ್ಷಿಕೆ ರೆಂಡರಿಂಗ್';

  @override
  String get secPlayerShaders =>
      'ಅನಿಮೆ ಅಪ್‌ಸ್ಕೇಲಿಂಗ್ ಮತ್ತು ನಿಮ್ಮ ಸ್ವಂತ ಶೇಡರ್‌ಗಳು';

  @override
  String get secPlayerEngine =>
      'ಡಿಕೋಡರ್, ವಿಡಿಯೋ ಮತ್ತು ಆಡಿಯೋ ಔಟ್‌ಪುಟ್, ಬಫರಿಂಗ್. ಪ್ಲೇಬ್ಯಾಕ್ ಸಮಸ್ಯೆಗಳಿದ್ದರೆ ಮಾತ್ರ ಇವುಗಳನ್ನು ಬದಲಾಯಿಸಿ';

  @override
  String get secPlayerMpv => 'mpv.conf, ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು ಮತ್ತು ಸುಧಾರಿತ ಶ್ರುತಿ';

  @override
  String get secAnimeList => 'ಫಿಲ್ಲರ್ ಸಂಚಿಕೆಗಳು ಮತ್ತು ವೀಕ್ಷಿಸದ ಥಂಬ್‌ನೇಲ್‌ಗಳು';

  @override
  String get secProgress =>
      'ನೀವು ವೀಕ್ಷಿಸಿದಾಗ ಅಥವಾ ಓದಿದ ಪ್ರಗತಿಯನ್ನು ನಿಮ್ಮ ಪಟ್ಟಿಗೆ ಉಳಿಸಿದಾಗ';

  @override
  String get secAnimeDetails =>
      'ಸಂಚಿಕೆ ಶೀರ್ಷಿಕೆಗಳು, ಥಂಬ್‌ನೇಲ್‌ಗಳು ಮತ್ತು ಸಾರಾಂಶಗಳು ಎಲ್ಲಿಂದ ಬರುತ್ತವೆ';

  @override
  String get secReaderReading =>
      'ಓದುವ ಮೋಡ್, ಪುಟವನ್ನು ತಿರುಗಿಸುವುದು, ಜೂಮ್ ಮತ್ತು ಮುಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String get secReaderControls =>
      'ವಲಯಗಳು, ವಾಲ್ಯೂಮ್ ಕೀಗಳು ಮತ್ತು ಸ್ವಯಂ ಸ್ಕ್ರಾಲ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get secReaderDisplay => 'ಹಿನ್ನೆಲೆ, ಹೊಳಪು, ಪೂರ್ಣಪರದೆ ಮತ್ತು ಪುಟ ಸಂಖ್ಯೆ';

  @override
  String get secNovelText =>
      'ಫಾಂಟ್, ಗಾತ್ರ, ಅಂತರ, ಅಂಚುಗಳು ಮತ್ತು ಪುಟವನ್ನು ತಿರುಗಿಸುವುದು';

  @override
  String get secNovelTranslate => 'ನೀವು ಓದುವಾಗ ಅಧ್ಯಾಯಗಳನ್ನು ಅನುವಾದಿಸಿ';

  @override
  String get secNovelSpeech => 'ಗಟ್ಟಿಯಾಗಿ ಓದಲು ಧ್ವನಿ, ವೇಗ ಮತ್ತು ಪಿಚ್';

  @override
  String get secNotifyAbout =>
      'ಯಾವ ರೀತಿಯ ಚಟುವಟಿಕೆಯು ಎಚ್ಚರಿಕೆಯನ್ನು ಕಳುಹಿಸುತ್ತದೆ ಎಂಬುದನ್ನು ಆರಿಸಿ';

  @override
  String get layoutTitle => 'ಲೇಔಟ್';

  @override
  String get layoutDesc =>
      'ಬಾರ್‌ಗಳಲ್ಲಿನ ಬಟನ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ, ಸರಿಸಿ ಮತ್ತು ಮರೆಮಾಡಿ';

  @override
  String get layoutHint =>
      'ಅದನ್ನು ಸರಿಸಲು ಬಟನ್ ಅನ್ನು ಎಳೆಯಿರಿ (ಟಚ್ ಸ್ಕ್ರೀನ್‌ನಲ್ಲಿ ಮೊದಲು ಹಿಡಿದುಕೊಳ್ಳಿ). ಕತ್ತರಿಸಲು, ಸರಿಸಲು ಅಥವಾ ಮರೆಮಾಡಲು ಒಂದನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String layoutDropInto(String zone) {
    return 'ಡ್ರಾಪ್ ಇನ್: $zone';
  }

  @override
  String layoutCutting(String name) {
    return '$name ಚಲಿಸುತ್ತಿದೆ. ಅದನ್ನು ಇರಿಸಲು ಪೇಸ್ಟ್ ಬಟನ್ ಒತ್ತಿರಿ';
  }

  @override
  String get layoutTitleFixed => 'ಶೀರ್ಷಿಕೆ';

  @override
  String get layoutZoneTopStart => 'ಟಾಪ್ ಬಾರ್, ಶೀರ್ಷಿಕೆಯ ಮೊದಲು';

  @override
  String get layoutZoneTopEnd => 'ಶೀರ್ಷಿಕೆಯ ನಂತರ ಟಾಪ್ ಬಾರ್';

  @override
  String get layoutZoneBottomStart => 'ಕೆಳಗಿನ ಬಾರ್, ಎಡಕ್ಕೆ';

  @override
  String get layoutZoneBottomEnd => 'ಕೆಳಗಿನ ಬಾರ್, ಬಲ';

  @override
  String get layoutZoneSecondRow =>
      'ಮರೆಮಾಡಲಾಗಿದೆ: ಸಾಮಾನ್ಯ ವೀಕ್ಷಣೆಯಲ್ಲಿ ಎರಡನೇ ಸಾಲು';

  @override
  String get layoutZoneOverflow => 'ಮರೆಮಾಡಲಾಗಿದೆ: ಹೆಚ್ಚಿನ ಮೆನುವಿನಲ್ಲಿ';

  @override
  String get layoutEmptyZone => 'ಇಲ್ಲಿ ಡ್ರಾಪ್ ಬಟನ್';

  @override
  String get layoutCut => 'ಕತ್ತರಿಸಿ';

  @override
  String get layoutPaste => 'ಇಲ್ಲಿ ಅಂಟಿಸಿ';

  @override
  String get layoutHide => 'ಮರೆಮಾಡಿ';

  @override
  String layoutMoveTo(String zone) {
    return '$zone ಗೆ ಸರಿಸಿ';
  }

  @override
  String get layoutReset => 'ಡೀಫಾಲ್ಟ್‌ಗೆ ಮರುಹೊಂದಿಸಿ';

  @override
  String get layoutMore => 'ಇನ್ನಷ್ಟು';

  @override
  String get sourceWhyAction => 'ಏಕೆ ಎಚ್ಚರಿಕೆ ಇಲ್ಲ?';

  @override
  String get sourceWhyStatus => 'ಸ್ಥಿತಿ';

  @override
  String get sourceWhyLastCheck => 'ಕೊನೆಯದಾಗಿ ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get sourceWhyNever => 'ಇನ್ನೂ ಆಗಿಲ್ಲ';

  @override
  String get sourceWhyNextCheck => 'ಮುಂದಿನ ಪರಿಶೀಲನೆ';

  @override
  String get sourceWhyNewest => 'ಮೂಲದಲ್ಲಿ ಹೊಸತು';

  @override
  String get sourceWhyProgress => 'ನಿಮ್ಮ ಪ್ರಗತಿ';

  @override
  String get sourceWhyListStatus => 'ಪಟ್ಟಿ ಸ್ಥಿತಿ';

  @override
  String get sourceWhyFailures => 'ಸತತವಾಗಿ ವಿಫಲವಾದ ಪರಿಶೀಲನೆಗಳು';

  @override
  String get sourceWhyLastRelease => 'ಕೊನೆಯ ಹೊಸ ಬಿಡುಗಡೆಯನ್ನು ನೋಡಲಾಗಿದೆ';

  @override
  String get sourceWhyVerdictNew =>
      'ಮೂಲವು ಅದನ್ನು ಪಟ್ಟಿ ಮಾಡಿದ ತಕ್ಷಣ ಹೊಸ ಬಿಡುಗಡೆಯು ಇಲ್ಲಿ ಕಾಣಿಸಿಕೊಳ್ಳುತ್ತದೆ ಮತ್ತು ಮುಂದಿನ ಚೆಕ್ ರನ್ ಆಗುತ್ತದೆ.';

  @override
  String get sourceWhyVerdictAhead =>
      'ಮೂಲವು ಈಗಾಗಲೇ ನಿಮ್ಮ ಪ್ರಗತಿಗಿಂತ ಮುಂದಿದೆ, ಆದ್ದರಿಂದ ನಿಮಗೆ ಅದರ ಬಗ್ಗೆ ಒಮ್ಮೆ ಹೇಳಲಾಗಿದೆ. ಮುಂದಿನ ಎಚ್ಚರಿಕೆಯನ್ನು ಪಡೆಯಲು ಅದನ್ನು ಓದಿ ಅಥವಾ ವೀಕ್ಷಿಸಿ.';

  @override
  String get sourceWhyVerdictSkipped =>
      'ಮೇಲಿನ ನಿಯಮಗಳಿಂದ ಈ ಶೀರ್ಷಿಕೆಯನ್ನು ಬಿಟ್ಟುಬಿಡಲಾಗಿದೆ. ಅಧಿಸೂಚನೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಅವುಗಳನ್ನು ಬದಲಾಯಿಸಿ ಅಥವಾ ಹೇಗಾದರೂ ಅದನ್ನು ಚಲಾಯಿಸಲು ಈಗಲೇ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get sourceWhyVerdictBroken =>
      'ಮೂಲವನ್ನು ತಲುಪಲು ಸಾಧ್ಯವಿಲ್ಲ ಅಥವಾ ತೆಗೆದುಹಾಕಲಾಗಿದೆ, ಆದ್ದರಿಂದ ಏನನ್ನೂ ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿಲ್ಲ.';

  @override
  String get sourceWhyVerdictMuted => 'ಈ ಚಂದಾದಾರಿಕೆಯನ್ನು ಮ್ಯೂಟ್ ಮಾಡಲಾಗಿದೆ.';

  @override
  String get externalPlayerTitle => 'ಬೇರೆಡೆ ಸ್ಟ್ರೀಮ್ ತೆರೆಯಿರಿ';

  @override
  String get externalCopyUrl => 'ಸ್ಟ್ರೀಮ್ ಲಿಂಕ್ ಅನ್ನು ನಕಲಿಸಿ';

  @override
  String get externalCopied => 'ಸ್ಟ್ರೀಮ್ ಲಿಂಕ್ ಅನ್ನು ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get externalChooser => 'ಮತ್ತೊಂದು ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ ತೆರೆಯಿರಿ';

  @override
  String get externalVlc => 'VLC ನಲ್ಲಿ ತೆರೆಯಿರಿ';

  @override
  String get externalMpv => 'mpv ನಲ್ಲಿ ತೆರೆಯಿರಿ';

  @override
  String get externalWebVideoCast => 'ವೆಬ್ ವೀಡಿಯೊ ಕ್ಯಾಸ್ಟ್';

  @override
  String get castViaAppHint =>
      'ವೆಬ್ ವೀಡಿಯೊ ಕ್ಯಾಸ್ಟ್ ಅಪ್ಲಿಕೇಶನ್‌ಗೆ ಸ್ಟ್ರೀಮ್ ಅನ್ನು ಕಳುಹಿಸಿ';

  @override
  String get externalFailed =>
      'ಸ್ಟ್ರೀಮ್ ತೆರೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಪ್ಲೇಯರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಲಾಗಿದೆಯೇ?';

  @override
  String get addonInstalled => 'ಸ್ಥಾಪಿಸಲಾಗಿದೆ';

  @override
  String get loadFailedActivity => 'ಚಟುವಟಿಕೆಯನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get loadFailedFavourites =>
      'ಮೆಚ್ಚಿನವುಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ. ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get loadFailedStats => 'ಅಂಕಿಅಂಶಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get loadFailedReplies => 'ಪ್ರತ್ಯುತ್ತರಗಳನ್ನು ಲೋಡ್ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get cantBeUndone => 'ಇದನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get searchTags => 'ಟ್ಯಾಗ್‌ಗಳನ್ನು ಹುಡುಕಿ';

  @override
  String get spoilerTapToView => 'ಸ್ಪಾಯ್ಲರ್, ವೀಕ್ಷಿಸಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get mediaVideo => 'ವೀಡಿಯೊ';

  @override
  String get notificationSomeone => 'ಯಾರೋ';

  @override
  String get notificationATitle => 'ಒಂದು ಶೀರ್ಷಿಕೆ';

  @override
  String get notificationAddedDetail => 'ಅನಿಲಿಸ್ಟ್‌ಗೆ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get updateNoReleases => 'ಯಾವುದೇ ಬಿಡುಗಡೆಗಳು ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get updateInvalidResponse => 'ಅಮಾನ್ಯವಾದ ನವೀಕರಣ ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get commentsRateLimited => 'ದರ ಸೀಮಿತವಾಗಿದೆ';

  @override
  String get commentsConnectFailed => 'ಸಂಪರ್ಕಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String get dnsNoRecords => 'ಯಾವುದೇ A ದಾಖಲೆಗಳನ್ನು ಹಿಂತಿರುಗಿಸಲಾಗಿಲ್ಲ';

  @override
  String get importTokenRejected => 'ಟೋಕನ್ ತಿರಸ್ಕರಿಸಲಾಗಿದೆ';

  @override
  String get developerRoleLead => 'ಪ್ರಮುಖ ಡೆವಲಪರ್';

  @override
  String get developerRoleModerator => 'ಡಿಸ್ಕಾರ್ಡ್ ಮಾಡರೇಟರ್';

  @override
  String extensionManagerTitle(String type) {
    return '$type ಮ್ಯಾನೇಜರ್';
  }

  @override
  String extensionsOfType(String type) {
    return '$type ವಿಸ್ತರಣೆಗಳು';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name ಯಾವುದೇ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಒದಗಿಸುವುದಿಲ್ಲ.';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title ರ ಸಂಚಿಕೆ $episode ಪ್ರಸಾರವಾಗಿದೆ';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'ಸಂಚಿಕೆ $episode ಪ್ರಸಾರವಾಗಿದೆ';
  }

  @override
  String notificationAdded(String title) {
    return '$title ಅನ್ನು AnList ಗೆ ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String updateNotFound(String message) {
    return 'ನವೀಕರಣ ಸರ್ವರ್‌ಗೆ ಆ ಬಿಡುಗಡೆಯನ್ನು ಕಂಡುಹಿಡಿಯಲಾಗಲಿಲ್ಲ: $message';
  }

  @override
  String get installStepJre => 'ಜಾವಾ ರನ್ಟೈಮ್';

  @override
  String get installStepCore => 'ರನ್ಟೈಮ್ ಕೋರ್';

  @override
  String installStepsProgress(int current, int total) {
    return '$total ನ $current ಹಂತ';
  }

  @override
  String get stepWaiting => 'ಕಾಯುತ್ತಿದೆ';

  @override
  String get stepChecking => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get stepUpToDate => 'ನವೀಕೃತವಾಗಿದೆ';

  @override
  String stepUpToDateWith(String detail) {
    return 'ನವೀಕೃತ · $detail';
  }

  @override
  String get stepWillInstall => 'ಅಳವಡಿಸಲಾಗುವುದು';

  @override
  String get stepWillUpdate => 'ನವೀಕರಿಸಲಾಗುವುದು';

  @override
  String stepWillUpdateTo(String version) {
    return '$version ಗೆ ನವೀಕರಿಸಲಾಗುತ್ತದೆ';
  }

  @override
  String get stepInstalled => 'ಸ್ಥಾಪಿಸಲಾಗಿದೆ';

  @override
  String get stepNotNeeded => 'ಇಲ್ಲಿ ಅಗತ್ಯವಿಲ್ಲ';

  @override
  String get stepFailed => 'ವಿಫಲವಾಗಿದೆ';

  @override
  String stepFailedWith(String reason) {
    return 'ವಿಫಲವಾಗಿದೆ: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'ಇದು ಜಾವಾ ರನ್‌ಟೈಮ್ ಮತ್ತು ಹಂಚಿದ ರನ್‌ಟೈಮ್ ಕೋರ್‌ನಲ್ಲಿ ಚಲಿಸುತ್ತದೆ. ಅವುಗಳನ್ನು ಮೊದಲು ಸ್ಥಾಪಿಸಲಾಗಿದೆ ಮತ್ತು ಬದಲಾಯಿಸಿದರೆ ನವೀಕರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get installRuntimeNewer =>
      'ಈ ಮ್ಯಾನೇಜರ್ ಚಾಲನೆಯಲ್ಲಿರುವ ರನ್ಟೈಮ್ ನವೀಕರಣವನ್ನು ಹೊಂದಿದೆ.';

  @override
  String get removeJvmTitle => 'Java ರನ್ಟೈಮ್ ಅನ್ನು ತೆಗೆದುಹಾಕುವುದೇ?';

  @override
  String get removeJvmMessage =>
      'ಡೆಸ್ಕ್‌ಟಾಪ್ ಎಕ್ಸ್‌ಟೆನ್ಶನ್ ಮ್ಯಾನೇಜರ್‌ಗಳು ಅದನ್ನು ಮತ್ತೆ ಸ್ಥಾಪಿಸುವವರೆಗೆ ಕೆಲಸ ಮಾಡುವುದನ್ನು ನಿಲ್ಲಿಸುತ್ತಾರೆ. ಮುಂದಿನ ಬಾರಿ ನೀವು ಸ್ಥಾಪಿಸಿದಾಗ ಅಥವಾ ತೆರೆದಾಗ ಅದನ್ನು ಮತ್ತೆ ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತದೆ.';

  @override
  String get runtimePreparing => 'ರನ್ಟೈಮ್ ಅನ್ನು ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get calendarAll => 'ಎಲ್ಲಾ';

  @override
  String get calendarAnime => 'ಅನಿಮೆ';

  @override
  String get calendarManga => 'ಮಂಗಾ';

  @override
  String get readerCloudflare => 'ಬ್ರೌಸರ್‌ನಲ್ಲಿ ತೆರೆಯಿರಿ (ಕ್ಲೌಡ್‌ಫ್ಲೇರ್ ಚೆಕ್)';

  @override
  String get badgeBoardHint =>
      'ಮೊದಲ ಕಾರ್ಡ್‌ನ ಮೂಲೆಯಲ್ಲಿ ಬ್ಯಾಡ್ಜ್ ಅನ್ನು ಎಳೆಯಿರಿ ಅಥವಾ ಅದನ್ನು ಸರಿಸಲು ಈಗಾಗಲೇ ಅದರ ಮೇಲೆ ಬ್ಯಾಡ್ಜ್ ಅನ್ನು ಎಳೆಯಿರಿ. ಬ್ಯಾಡ್ಜ್‌ಗಳು ಸ್ಥಳಗಳನ್ನು ಬದಲಾಯಿಸುತ್ತವೆ, ಆದ್ದರಿಂದ ಯಾವುದೂ ಅತಿಕ್ರಮಿಸುವುದಿಲ್ಲ. ಅದನ್ನು ಆನ್ ಅಥವಾ ಆಫ್ ಮಾಡಲು ಕೆಳಗಿನ ಬ್ಯಾಡ್ಜ್ ಅನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ.';

  @override
  String get statusAuto => 'ಆಟೋ';

  @override
  String get unreadCounter => 'ಓದದ ಕೌಂಟರ್';

  @override
  String get unreadCounterDesc =>
      'ಪೋಸ್ಟರ್‌ಗಳಲ್ಲಿ ಎಷ್ಟು ಸಂಚಿಕೆಗಳು ಅಥವಾ ಅಧ್ಯಾಯಗಳು ಉಳಿದಿವೆ ಎಂಬುದನ್ನು ತೋರಿಸಿ';

  @override
  String get settingsShortcuts => 'ಕೀಬೋರ್ಡ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು';

  @override
  String get settingsShortcutsDesc =>
      'ಪ್ರತಿ ಕೀಲಿಯನ್ನು ನೋಡಿ, ಬದಲಾಯಿಸಿ ಮತ್ತು ಆಫ್ ಮಾಡಿ';

  @override
  String get shortcutGroupApp => 'ಅಪ್ಲಿಕೇಶನ್';

  @override
  String get shortcutGroupPlayer => 'ವೀಡಿಯೊ ಪ್ಲೇಯರ್';

  @override
  String get shortcutGroupReader => 'ಓದುಗ';

  @override
  String get shortcutsEnableApp => 'ಅಪ್ಲಿಕೇಶನ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು';

  @override
  String get shortcutsEnablePlayer => 'ಪ್ಲೇಯರ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು';

  @override
  String get shortcutsEnableReader => 'ರೀಡರ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳು';

  @override
  String get shortcutsEnableDesc =>
      'ಈ ಗುಂಪಿನಲ್ಲಿರುವ ಪ್ರತಿಯೊಂದು ಕೀಲಿಯನ್ನು ಆನ್ ಅಥವಾ ಆಫ್ ಮಾಡಿ';

  @override
  String get shortcutNotSet => 'ಹೊಂದಿಸಿಲ್ಲ';

  @override
  String get shortcutAddKey => 'ಒಂದು ಕೀಲಿಯನ್ನು ಸೇರಿಸಿ';

  @override
  String get shortcutResetOne => 'ಡೀಫಾಲ್ಟ್‌ಗೆ ಮರುಹೊಂದಿಸಿ';

  @override
  String get shortcutClearKeys => 'ಎಲ್ಲಾ ಕೀಲಿಗಳನ್ನು ತೆಗೆದುಹಾಕಿ';

  @override
  String get shortcutResetAll => 'ಎಲ್ಲಾ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳನ್ನು ಮರುಹೊಂದಿಸಿ';

  @override
  String get shortcutResetAllDesc =>
      'ಪ್ರತಿ ಕೀಲಿಯನ್ನು ಅದರ ಪೂರ್ವನಿಯೋಜಿತವಾಗಿ ಇರಿಸಿ';

  @override
  String get shortcutPress => 'ನಿಮಗೆ ಬೇಕಾದ ಕೀ ಅಥವಾ ಸಂಯೋಜನೆಯನ್ನು ಒತ್ತಿರಿ';

  @override
  String get shortcutPressHint =>
      'ಪ್ರತಿಯೊಂದು ಸಂಯೋಜನೆಯು ಕೇವಲ ಒಂದು ಕ್ರಿಯೆಗೆ ಸೇರಿರಬಹುದು, ಆದ್ದರಿಂದ ಒಂದನ್ನು ತೆಗೆದುಕೊಳ್ಳುವುದು ಅದನ್ನು ಚಲಿಸುತ್ತದೆ.';

  @override
  String get shortcutSeekPercent => 'ವೀಡಿಯೊದ ಒಂದು ಹಂತಕ್ಕೆ ಹೋಗು';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'ಹಿಂತಿರುಗಿ';

  @override
  String get shortcutAppFullscreen => 'ಪೂರ್ಣಪರದೆಯನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppGlass => 'ಗಾಜಿನ ಮೋಡ್ ಅನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppMaterialYou => 'ನೀವು ವಸ್ತುವನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppDark => 'ಡಾರ್ಕ್ ಮೋಡ್ ಅನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppOled => 'OLED ಕಪ್ಪು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppSearch => 'ಹುಡುಕಾಟವನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get shortcutAppSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get shortcutAppDownloads => 'ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get shortcutAppNotifications => 'ಅಧಿಸೂಚನೆಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get shortcutAppIncognito => 'ಅಜ್ಞಾತವನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get shortcutAppShortcuts => 'ಕೀಬೋರ್ಡ್ ಶಾರ್ಟ್‌ಕಟ್‌ಗಳನ್ನು ತೋರಿಸಿ';

  @override
  String get shortcutPlayerPlayPause => 'ಪ್ಲೇ ಮಾಡಿ ಅಥವಾ ವಿರಾಮಗೊಳಿಸಿ';

  @override
  String get shortcutPlayerSeekForward => 'ಮುಂದೆ ಹುಡುಕು';

  @override
  String get shortcutPlayerSeekBack => 'ಹಿಂತಿರುಗಿ ನೋಡಿ';

  @override
  String get shortcutPlayerSeekForwardLong =>
      '30 ಸೆಕೆಂಡುಗಳನ್ನು ಮುಂದಕ್ಕೆ ಹುಡುಕುವುದು';

  @override
  String get shortcutPlayerSeekBackLong => '30 ಸೆಕೆಂಡ್ ಹಿಂದಕ್ಕೆ ಹುಡುಕು';

  @override
  String get shortcutPlayerFrameForward => 'ಮುಂದಿನ ಫ್ರೇಮ್';

  @override
  String get shortcutPlayerFrameBack => 'ಹಿಂದಿನ ಫ್ರೇಮ್';

  @override
  String get shortcutPlayerVolumeUp => 'ವಾಲ್ಯೂಮ್ ಅಪ್';

  @override
  String get shortcutPlayerVolumeDown => 'ವಾಲ್ಯೂಮ್ ಡೌನ್';

  @override
  String get shortcutPlayerMute => 'ಮ್ಯೂಟ್ ಮಾಡಿ';

  @override
  String get shortcutPlayerFullscreen => 'ಪೂರ್ಣಪರದೆ';

  @override
  String get shortcutPlayerNext => 'ಮುಂದಿನ ಸಂಚಿಕೆ';

  @override
  String get shortcutPlayerPrevious => 'ಹಿಂದಿನ ಸಂಚಿಕೆ';

  @override
  String get shortcutPlayerSkip => 'ಪರಿಚಯ ಅಥವಾ ಅಂತ್ಯವನ್ನು ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get shortcutPlayerPanel => 'ಸಂಚಿಕೆ ಪಟ್ಟಿ';

  @override
  String get shortcutPlayerSpeedUp => 'ವೇಗವಾದ ಪ್ಲೇಬ್ಯಾಕ್';

  @override
  String get shortcutPlayerSpeedDown => 'ನಿಧಾನವಾದ ಪ್ಲೇಬ್ಯಾಕ್';

  @override
  String get shortcutPlayerSpeedReset => 'ಸಾಮಾನ್ಯ ವೇಗ';

  @override
  String get shortcutPlayerSubtitleToggle => 'ಉಪಶೀರ್ಷಿಕೆಗಳು ಆನ್ ಅಥವಾ ಆಫ್';

  @override
  String get shortcutPlayerSubtitleCycle => 'ಮುಂದಿನ ಉಪಶೀರ್ಷಿಕೆ ಟ್ರ್ಯಾಕ್';

  @override
  String get shortcutPlayerAudioCycle => 'ಮುಂದಿನ ಆಡಿಯೋ ಟ್ರ್ಯಾಕ್';

  @override
  String get shortcutPlayerStreamCycle => 'ಮುಂದಿನ ಸ್ಟ್ರೀಮ್';

  @override
  String get shortcutPlayerFit => 'ವೀಡಿಯೊ ಫಿಟ್ ಅನ್ನು ಬದಲಾಯಿಸಿ';

  @override
  String get shortcutReaderRight => 'ಬಲಕ್ಕೆ ಪುಟ';

  @override
  String get shortcutReaderLeft => 'ಎಡಕ್ಕೆ ಪುಟ';

  @override
  String get shortcutReaderNextPage => 'ಮುಂದಿನ ಪುಟ';

  @override
  String get shortcutReaderPreviousPage => 'ಹಿಂದಿನ ಪುಟ';

  @override
  String get shortcutReaderControls => 'ನಿಯಂತ್ರಣಗಳನ್ನು ತೋರಿಸಿ ಅಥವಾ ಮರೆಮಾಡಿ';

  @override
  String get shortcutReaderNextChapter => 'ಮುಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String get shortcutReaderPreviousChapter => 'ಹಿಂದಿನ ಅಧ್ಯಾಯ';

  @override
  String shortcutTaken(String action) {
    return '$action ನಿಂದ ತೆಗೆದುಕೊಳ್ಳಲಾಗಿದೆ';
  }

  @override
  String get incognitoTurnedOn => 'ಅಜ್ಞಾತ ಮೋಡ್ ಆನ್ ಆಗಿದೆ';

  @override
  String get incognitoTurnedOff => 'ಅಜ್ಞಾತ ಮೋಡ್ ಆಫ್ ಆಗಿದೆ';

  @override
  String get onHoldAnime => 'ಹೋಲ್ಡ್ ಅನಿಮೆ';

  @override
  String get onHoldManga => 'ಹೋಲ್ಡ್ ಮಂಗಾ';

  @override
  String get droppedAnime => 'ಅನಿಮೆ ಕೈಬಿಡಲಾಗಿದೆ';

  @override
  String get droppedManga => 'ಕೈಬಿಟ್ಟ ಮಂಗಾ';

  @override
  String get generalSectionDesktop => 'ಡೆಸ್ಕ್ಟಾಪ್';

  @override
  String get closeAction => 'ಕಿಟಕಿ ಮುಚ್ಚಿದಾಗ';

  @override
  String get closeActionQuit => 'ಅಪ್ಲಿಕೇಶನ್ ತ್ಯಜಿಸಿ';

  @override
  String get closeActionWhenBusy =>
      'ಏನಾದರೂ ಓಡುತ್ತಿರುವಾಗ ಟ್ರೇನಲ್ಲಿ ಓಡುತ್ತಲೇ ಇರಿ';

  @override
  String get closeActionAlways => 'ಯಾವಾಗಲೂ ತಟ್ಟೆಯಲ್ಲಿ ಓಡುತ್ತಲೇ ಇರಿ';

  @override
  String get closeActionNoTray =>
      'ಸಿಸ್ಟಂ ಟ್ರೇ ಇಲ್ಲಿ ಲಭ್ಯವಿಲ್ಲ, ಆದ್ದರಿಂದ ಮುಚ್ಚಿದಾಗ ಅಪ್ಲಿಕೇಶನ್ ತೊರೆಯುತ್ತದೆ';

  @override
  String get gamepadNav => 'ಗೇಮ್ಪ್ಯಾಡ್ ನ್ಯಾವಿಗೇಷನ್';

  @override
  String get gamepadNavDesc =>
      'ಅಪ್ಲಿಕೇಶನ್ ಸುತ್ತಲೂ ಸರಿಸಿ ಮತ್ತು ಆಟದ ನಿಯಂತ್ರಕದೊಂದಿಗೆ ಆಟಗಾರನನ್ನು ನಿಯಂತ್ರಿಸಿ';

  @override
  String get trayShow => 'ಡಾರ್ಟೊಟ್ಸು ತೋರಿಸಿ';

  @override
  String get trayQuit => 'ತ್ಯಜಿಸು';

  @override
  String get trayIdle => 'ಯಾವುದೂ ಓಡುತ್ತಿಲ್ಲ';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಐಟಂಗಳನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ',
      one: '$count ಐಟಂ ಅನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'ನಿಮ್ಮ ಪಟ್ಟಿಗಳನ್ನು ಸಿಂಕ್ ಮಾಡಲಾಗುತ್ತಿದೆ';

  @override
  String get trayUpdating => 'ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ನವೀಕರಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get trayPlaying => 'ಸಣ್ಣ ಕಿಟಕಿಯಲ್ಲಿ ಆಡಲಾಗುತ್ತಿದೆ';

  @override
  String get traySearch => 'ಹುಡುಕು';

  @override
  String get trayPauseDownloads => 'ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ವಿರಾಮಗೊಳಿಸಿ';

  @override
  String get trayResumeDownloads => 'ಡೌನ್‌ಲೋಡ್‌ಗಳನ್ನು ಪುನರಾರಂಭಿಸಿ';

  @override
  String get playerDownloadTitle => 'ಪ್ಲೇಯರ್ ಅನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ';

  @override
  String get playerDownloadBody =>
      'ಡಾರ್ಟೊಟ್ಸು ತನ್ನ ವೀಡಿಯೊ ಎಂಜಿನ್ ಅನ್ನು ಒಮ್ಮೆ ಪಡೆಯುತ್ತದೆ. ಪ್ಲೇಬ್ಯಾಕ್ ಸಿದ್ಧವಾದ ತಕ್ಷಣ ಪ್ರಾರಂಭವಾಗುತ್ತದೆ.';

  @override
  String get playerDownloadStarting => 'ಡೌನ್‌ಲೋಡ್ ಪ್ರಾರಂಭಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get playerDownloadFailedTitle => 'ಆಟಗಾರನನ್ನು ಪಡೆಯಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ';

  @override
  String get playerDownloadFailedBody =>
      'ನಿಮ್ಮ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಹಾಗೂ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ. ಡೌನ್‌ಲೋಡ್ ಎಲ್ಲಿ ನಿಲ್ಲಿಸಿದೆಯೋ ಅಲ್ಲಿ ಪಿಕಪ್ ಆಗುತ್ತದೆ.';

  @override
  String get playerDownloadRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get playerDownloadCopy => 'ವಿವರಗಳನ್ನು ನಕಲಿಸಿ';

  @override
  String get removePlayerTitle => 'ಆಟಗಾರನನ್ನು ತೆಗೆದುಹಾಕುವುದೇ?';

  @override
  String get removePlayerMessage =>
      'ಪ್ಲೇಯರ್ ಅನ್ನು ಮತ್ತೆ ಡೌನ್‌ಲೋಡ್ ಮಾಡುವವರೆಗೆ ವೀಡಿಯೊಗಳನ್ನು ಪ್ಲೇ ಮಾಡಲು ಸಾಧ್ಯವಿಲ್ಲ.';

  @override
  String get trailerLoading => 'ಟ್ರೇಲರ್ ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get trailerFailed =>
      'ಟ್ರೇಲರ್ ಅನ್ನು ಇಲ್ಲಿ ಪ್ಲೇ ಮಾಡಲು ಸಾಧ್ಯವಾಗಲಿಲ್ಲ, ಅದನ್ನು ಬ್ರೌಸರ್‌ನಲ್ಲಿ ತೆರೆಯಲಾಗುತ್ತಿದೆ';
}
