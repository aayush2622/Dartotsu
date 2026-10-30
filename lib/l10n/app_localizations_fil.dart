// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Ang BAGONG Pinakamagandang App Para sa\nPag-track ng Anime & Manga';

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
  String get loadMore => 'Magload pa';

  @override
  String get login => 'Mag-login';

  @override
  String get continueAsGuest => 'Tuloy bilang guest';

  @override
  String get getStarted => 'Simulan na';

  @override
  String get loginWithToken => 'Mag-login gamit ang token';

  @override
  String get pasteTokenHint => 'I-paste ang access token mo';

  @override
  String loginTo(String service) {
    return 'Mag-login sa $service';
  }

  @override
  String get settings => 'Settings';

  @override
  String get account => 'Account';

  @override
  String get about => 'Tungkol';

  @override
  String get language => 'Wika';

  @override
  String get animationSpeed => 'Mga animation';

  @override
  String get animationSpeedDesc =>
      'Bilis ng mga transition at entrance effect sa buong app';

  @override
  String get animationSpeedOff => 'Off';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Extension',
      one: 'Extension',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Hindi kilalang source';

  @override
  String get install => 'I-install';

  @override
  String get update => 'I-update';

  @override
  String get uninstall => 'I-uninstall';

  @override
  String get updateInstallCancelled =>
      'Na-cancel ang install. Kung sinabi ng Android na nagko-conflict ang app sa naka-install, iba ang signature: i-uninstall muna ang kasalukuyang version, tapos i-install ang update';

  @override
  String updateInstallFailed(String error) {
    return 'Hindi na-update: $error';
  }

  @override
  String get appLock => 'App lock';

  @override
  String get appLockDesc =>
      'Humingi ng passcode kapag binuksan ang app o bumalik pagkalipas ng ilang sandali';

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
  String get appLockUnlock => 'Ilagay ang passcode mo';

  @override
  String get appLockWrong => 'Mali ang passcode';

  @override
  String appLockWait(String seconds) {
    return 'Masyadong maraming try, maghintay ng ${seconds}s';
  }

  @override
  String get appLockNew => 'Pumili ng passcode';

  @override
  String get appLockNewHint => '4 hanggang 8 digits';

  @override
  String get appLockConfirm => 'Ilagay ulit';

  @override
  String get appLockMismatch => 'Hindi magkapareho ang mga passcode';

  @override
  String get appLockOn => 'Naka-set na ang passcode';

  @override
  String get appLockRemoveTitle => 'Ilagay ang passcode mo para i-off ang lock';

  @override
  String get installFailed => 'Hindi na-install';

  @override
  String get updateFailed => 'Hindi na-update';

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
  String get noSourceSettings => 'Walang settings ang source na ito';

  @override
  String get addPluginRepository => 'Magdagdag ng plugin repository';

  @override
  String get pluginIndexUrlHint => 'URL ng plugin index';

  @override
  String get addRepository => 'Idagdag ang repository';

  @override
  String get pluginRepoUpdated => 'Na-update na ang plugin repository';

  @override
  String get pluginRepoUpdateFailed => 'Hindi ma-refresh ang plugin repository';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Hindi';

  @override
  String get save => 'I-save';

  @override
  String get reset => 'I-reset';

  @override
  String get clear => 'I-clear';

  @override
  String get test => 'I-test';

  @override
  String get testing => 'Nagte-test…';

  @override
  String get resolving => 'Nire-resolve…';

  @override
  String get none => 'Wala';

  @override
  String get selectMediaService => 'Pumili ng media service';

  @override
  String get pickColor => 'Pumili ng kulay';

  @override
  String get colorPickerCustom => 'Custom';

  @override
  String get colorPickerTransparent => 'Transparent';

  @override
  String get ltr => 'Kaliwa Pakanan';

  @override
  String get searchSettings => 'Maghanap sa settings';

  @override
  String nothingMatches(String query) {
    return 'Walang tumutugma sa \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Maghanap sa $category';
  }

  @override
  String get settingsAppearance => 'Itsura';

  @override
  String get settingsAppearanceDesc => 'Theme, mga kulay, glass mode';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsGeneralDesc => 'Wika at behavior';

  @override
  String get settingsNetwork => 'Network';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS at proxy';

  @override
  String get settingsAccountDesc => 'Tracking service at sign-in';

  @override
  String get settingsUpdates => 'Mga update';

  @override
  String get amoledBlack => 'AMOLED black';

  @override
  String get amoledBlackDesc => 'Purong itim na surface sa dark mode';

  @override
  String get glassMode => 'Glass mode';

  @override
  String get glassModeDesc =>
      'Frosted na surface sa ibabaw ng art ng library mo';

  @override
  String get shelfFrame => 'Frame sa paligid ng mga section';

  @override
  String get shelfFrameDesc =>
      'Magpakita ng card sa likod ng bawat shelf, o hayaang nakapatong lang ang mga row sa page';

  @override
  String get settingsExtensionsDesc =>
      'Mga source manager, repository at opsyon ng extension';

  @override
  String get settingsAddons => 'Mga addon';

  @override
  String get customPath => 'Custom na storage path';

  @override
  String get customPathDesc =>
      'Kung saan nakalagay ang data ng app. Pindutin nang matagal para i-reset';

  @override
  String get selectDirectory => 'Pumili ng directory';

  @override
  String get differentCacheManager => 'Alternatibong image cache';

  @override
  String get differentCacheManagerDesc =>
      'Gumamit ng ibang cache manager para sa mga image';

  @override
  String get backupAndRestore => 'Backup at restore';

  @override
  String get backupAndRestoreDesc => 'I-save o i-load ang mga preference mo';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get loadExtensionsIcon => 'I-load ang mga icon ng extension';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Ipakita ang mga icon ng source sa mga listahan ng extension';

  @override
  String get sectionStorage => 'Storage';

  @override
  String get sectionManagers => 'Mga manager';

  @override
  String get sectionOptions => 'Mga opsyon';

  @override
  String get backupTabBackup => 'I-back up';

  @override
  String get backupTabRestore => 'I-restore';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys settings sa $categories kategorya';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Huling backup: $time';
  }

  @override
  String get backupNever => 'Wala pang backup';

  @override
  String get backupSelectAll => 'Piliin lahat';

  @override
  String get backupClearAll => 'I-clear';

  @override
  String backupKeys(Object count) {
    return '$count settings';
  }

  @override
  String get backupPassword => 'Password (optional)';

  @override
  String get backupPasswordHint => 'Iwanang blangko para gamitin ang default';

  @override
  String get backupSensitive =>
      'May kasamang mga login token. Ilihim ang file na ito';

  @override
  String get backupCreate => 'Gumawa ng backup';

  @override
  String backupSaved(Object name) {
    return 'Na-save ang backup sa $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Pumalya ang backup: $error';
  }

  @override
  String get backupPickFile => 'Pumili ng backup file';

  @override
  String get backupPickFileDesc => 'Pumili ng .json file na ginawa ng Dartotsu';

  @override
  String get backupChooseAnother => 'Pumili ng ibang file';

  @override
  String get backupCreatedAt => 'Ginawa';

  @override
  String get backupAppVersion => 'Version ng app';

  @override
  String get backupDevice => 'Device';

  @override
  String get backupAccounts => 'Mga account';

  @override
  String get backupSize => 'Laki';

  @override
  String get backupEncrypted => 'May password';

  @override
  String get backupUnlock => 'I-unlock';

  @override
  String get backupWrongPassword =>
      'Hindi mabasa ang file na ito. I-check ang password';

  @override
  String get backupRestoreSelected => 'I-restore ang napili';

  @override
  String backupRestoreConfirm(Object count) {
    return 'I-restore ang $count settings? Papalitan ang mga kasalukuyang value sa mga kategoryang ito.';
  }

  @override
  String get backupRestored =>
      'Na-restore na. I-restart ang app para ma-apply lahat';

  @override
  String backupRestoreFailed(Object error) {
    return 'Pumalya ang restore: $error';
  }

  @override
  String get backupSelectOne => 'Pumili ng kahit isang kategorya';

  @override
  String get backupCatTheme => 'Itsura';

  @override
  String get backupCatThemeDesc =>
      'Theme, mga kulay, glass, mga font at card style';

  @override
  String get backupCatCommon => 'General';

  @override
  String get backupCatCommonDesc =>
      'Wika, storage, network at mga opsyon ng extension';

  @override
  String get backupCatPlayer => 'Player';

  @override
  String get backupCatPlayerDesc => 'Mga preference ng player';

  @override
  String get backupCatReader => 'Reader';

  @override
  String get backupCatReaderDesc => 'Mga preference ng reader';

  @override
  String get backupCatProtected => 'Mga account';

  @override
  String get backupCatProtectedDesc => 'Mga login token at sign-in data';

  @override
  String get backupCatOther => 'Mga service at feed';

  @override
  String get backupCatOtherDesc =>
      'Mga layout ng feed, listahan at opsyon ng service';

  @override
  String get logFile => 'Log file';

  @override
  String get logFileDesc =>
      'I-share ang log ng app, o kopyahin ang path nito sa Linux';

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
  String get logFileCopied => 'Nakopya ang log path';

  @override
  String get donateSheetTitle => 'Nag-eenjoy ka ba sa Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Isang tao lang ang gumagawa at nagmementena ng Dartotsu. Kung nakakatulong ito sa\'yo, pwede mong suportahan ang development.';

  @override
  String get donateLater => 'Mamaya na lang';

  @override
  String get glassBackground => 'Glass background';

  @override
  String get glassBackgroundDesc =>
      'Ang profile banner mo, maliban kung maglagay ka ng image link';

  @override
  String get glassBackgroundHint =>
      'Image link (iwanang blangko para sa banner mo)';

  @override
  String get followCover => 'Sundan ang cover';

  @override
  String get followCoverDesc =>
      'Sumusunod ang mga kulay sa background, at sa cover sa mga detail page';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Card style';

  @override
  String get cardStyleDesc => 'Pwesto ng title, laki, progress at mga badge';

  @override
  String get customFont => 'Font';

  @override
  String get customFontDesc =>
      'Default, file mula sa device mo, o Google Fonts';

  @override
  String get customFontError => 'Hindi ma-load ang font file na iyon';

  @override
  String get googleFontError => 'Hindi ma-download ang font na iyon';

  @override
  String get yourFonts => 'Mga font mo';

  @override
  String get addFontFile => 'Magdagdag ng font file…';

  @override
  String get browseGoogleFonts => 'Mag-browse sa Google Fonts…';

  @override
  String get searchGoogleFonts => 'Maghanap sa Google Fonts';

  @override
  String get defaultFont => 'Default';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dynamic na kulay mula sa system';

  @override
  String get jsonTheme => 'Custom theme file';

  @override
  String get jsonThemeDesc =>
      'Live na mga kulay mula sa ~/.config/dartotsu/theme.json (custom script, o sarili mong edit)';

  @override
  String get themeMode => 'Theme mode';

  @override
  String get mode => 'Mode';

  @override
  String get trackingService => 'Tracking service';

  @override
  String get signOut => 'Mag-sign out';

  @override
  String get signIn => 'Mag-sign in';

  @override
  String get notSignedIn => 'Hindi naka-sign in';

  @override
  String signOutOf(String service) {
    return 'Mag-sign out sa $service?';
  }

  @override
  String get checkForUpdates => 'Tingnan kung may update';

  @override
  String get checkForUpdatesDesc => 'I-notify kapag may bagong GitHub release';

  @override
  String get updateChannel => 'Update channel';

  @override
  String get channel => 'Channel';

  @override
  String get stable => 'Stable';

  @override
  String get preRelease => 'Pre-release';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'I-check ngayon';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Default';

  @override
  String currentlyUsing(String value) {
    return 'Ngayon: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Default (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Uri';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Username';

  @override
  String get proxyPassword => 'Password';

  @override
  String get optional => 'Optional';

  @override
  String get clearCookies => 'I-clear ang mga cookie';

  @override
  String get clearCookiesDesc => 'Tanggalin ang lahat ng naka-store na cookie';

  @override
  String notImplementedArea(String area) {
    return '$area — parating na';
  }

  @override
  String notImplementedService(String service) {
    return 'Hindi pa sinusuportahan ng $service ito.';
  }

  @override
  String get couldNotLoadResults => 'Hindi ma-load ang mga resulta';

  @override
  String get updateCheckFailed => 'Hindi makapag-check ng update';

  @override
  String get highRefreshRate => 'Mataas na refresh rate';

  @override
  String get highRefreshRateDesc =>
      'Gamitin ang pinakamataas na refresh rate na kaya ng screen mo';

  @override
  String get imageSave => 'I-save ang image';

  @override
  String imageSavedTo(String path) {
    return 'Na-save sa $path';
  }

  @override
  String get imageActionFailed => 'Hindi ma-download ang image';

  @override
  String get imageTitleCover => 'Cover';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Profile picture';

  @override
  String get verifyTls => 'I-verify ang mga certificate';

  @override
  String get verifyTlsDesc =>
      'Tanggihan ang mga server na may invalid na HTTPS certificate. I-off lang para sa source na gumagamit ng self-signed';

  @override
  String get clearCookiesConfirm =>
      'Tanggalin ang lahat ng naka-store na cookie? Pwede kang ma-sign out sa ilang source.';

  @override
  String get version => 'Version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Source, mga issue at release';

  @override
  String get discordDesc => 'Komunidad at suporta';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Suportahan ang development';

  @override
  String get contributors => 'Mga contributor';

  @override
  String get contributorsDesc => 'Ang mga taong gumawa ng Dartotsu';

  @override
  String get contributorsLoadFailed => 'Hindi ma-load ang mga contributor';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Mga proyektong ginawa batay sa Dartotsu';

  @override
  String get forksEmpty => 'Walang nakitang fork';

  @override
  String get sectionColors => 'Mga kulay';

  @override
  String get sectionDisplay => 'Display';

  @override
  String get sectionStyle => 'Style';

  @override
  String get sectionCommunity => 'Komunidad';

  @override
  String get sectionAppInfo => 'Info ng app';

  @override
  String get sectionRequests => 'Mga request';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Balik';

  @override
  String get onboardingNext => 'Susunod';

  @override
  String get onboardingSkip => 'Laktawan';

  @override
  String get onboardingPaletteTitle => 'Gawin mong sa\'yo';

  @override
  String get onboardingPaletteBody =>
      'Pumili ng palette. Susunod dito lahat ng accent, mula sa mga card hanggang sa player.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Light';

  @override
  String get themeModeDark => 'Dark';

  @override
  String get onboardingSyncTitle => 'I-sync ang library mo';

  @override
  String get onboardingSyncBody =>
      'Mag-sign in gamit ang AniList para madala ang mga listahan, progress at score mo. O laktawan at mag-browse bilang guest.';

  @override
  String get onboardingOpenLinks =>
      'Buksan sa Dartotsu ang mga AniList at repo link';

  @override
  String get onboardingPermsTitle => 'Mga permission';

  @override
  String get onboardingPermsBody =>
      'I-allow na ngayon para gumana nang walang abala ang mga download, update at alert. Pwede mo itong baguhin mamaya sa system settings.';

  @override
  String get permNotifications => 'Mga notification';

  @override
  String get permNotificationsDesc =>
      'Progress ng download, mga bagong episode at mga reply';

  @override
  String get permStorage => 'Access sa lahat ng file';

  @override
  String get permStorageDesc =>
      'I-save ang mga download sa pampublikong Dartotsu folder';

  @override
  String get permInstall => 'Mag-install ng mga update';

  @override
  String get permInstallDesc =>
      'Hayaang i-install ng Dartotsu ang sarili nitong mga update';

  @override
  String get permBattery => 'Unrestricted na battery';

  @override
  String get permBatteryDesc =>
      'Panatilihing tumatakbo sa background ang mahahabang download';

  @override
  String get permGrant => 'I-allow';

  @override
  String get linkOpenInApp => 'Buksan ang mga link sa Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Hayaang magbukas ng app ang mga AniList at repo link';

  @override
  String get reviewsTitle => 'Mga review';

  @override
  String get reviewsEmpty => 'Wala pang review';

  @override
  String get reviewsFailed => 'Hindi ma-load ang mga review';

  @override
  String get reviewHelpfulQuestion => 'Nakatulong ba ang review na ito?';

  @override
  String get reviewVoteFailed => 'Hindi ma-save ang boto mo';

  @override
  String reviewHelpful(int n, int total) {
    return '$n sa $total ang nakitang nakatulong ito';
  }

  @override
  String get calendarTitle => 'Airing schedule';

  @override
  String get calendarToday => 'Ngayon';

  @override
  String get calendarEmpty => 'Walang ipapalabas sa araw na ito';

  @override
  String get calendarFailed => 'Hindi ma-load ang schedule';

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
    return 'Episode $n';
  }

  @override
  String get shareAnalytics => 'Magbahagi ng anonymous na usage data';

  @override
  String get shareAnalyticsDesc =>
      'Anonymous na bilang ng user at crash report. Walang account o personal na data';

  @override
  String get linkOpenAnilist => 'Buksan sa Dartotsu ang mga AniList link';

  @override
  String get linkOpenAnilistDesc =>
      'I-on ang link handling para magbukas ng app ang mga anilist.co link';

  @override
  String get linkSettingsFailed => 'Hindi mabuksan ang system settings';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Ipakita sa Discord profile mo ang ginagawa mo. Kailangan ang Discord token mo.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Ipakita sa Discord profile mo ang ginagawa mo. Kailangang tumatakbo ang Discord desktop app.';

  @override
  String get discordBrowsing => 'Ipakita ang browsing activity';

  @override
  String get discordBrowsingDesc =>
      'Ipakita rin ang tab, page o profile na tinitingnan mo, hindi lang ang pinapanood o binabasa mo.';

  @override
  String get discordLookHeader => 'Itsura ng presence';

  @override
  String get discordActivityType => 'Uri ng activity';

  @override
  String get discordActivityTypeDesc =>
      'Kung paano ito isinusulat ng Discord: \"Watching …\" o \"Playing …\". Ang Auto ay gumagamit ng Watching para sa anime at Playing para sa iba pa.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'Ipakita ang mga cover';

  @override
  String get discordCoversDesc => 'Cover art at ang Dartotsu icon sa card.';

  @override
  String get discordTimer => 'Ipakita ang timer';

  @override
  String get discordTimerDesc =>
      'Lumipas o natitirang oras sa ilalim ng title.';

  @override
  String get discordButtons => 'Ipakita ang mga button';

  @override
  String get discordButtonsDesc =>
      'Mga button na \"View anime / manga\" at \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Itago ang mga title';

  @override
  String get discordHideTitlesDesc =>
      'Palitan ng \"Something private\" ang mga pangalan ng anime at manga (pati cover at link).';

  @override
  String get discordConnectionHeader => 'Koneksyon';

  @override
  String get listSearchHint => 'Hanapin sa listahang ito';

  @override
  String get listSort => 'Ayusin';

  @override
  String get listFilter => 'I-filter';

  @override
  String get listRandom => 'Random na title';

  @override
  String get listReverse => 'Baligtarin ang order';

  @override
  String get listSortDefault => 'Order ng listahan';

  @override
  String get listSortScore => 'Score mo';

  @override
  String get listSortTitle => 'Title';

  @override
  String get listSortUpdated => 'Huling na-update';

  @override
  String get listSortProgress => 'Progress';

  @override
  String get listSortReleased => 'Petsa ng release';

  @override
  String get listSortAverage => 'Average na score';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Mga genre';

  @override
  String get listFilterClear => 'I-clear ang mga filter';

  @override
  String get listNoMatches => 'Walang tumutugma sa listahang ito';

  @override
  String get discordLogin => 'Mag-login sa Discord';

  @override
  String get discordToken => 'Discord token';

  @override
  String get discordTokenSaved =>
      'Na-save. I-tap para palitan, pindutin nang matagal para tanggalin.';

  @override
  String get discordTokenNotSet => 'Wala pa. I-tap para magdagdag.';

  @override
  String get discordTokenSavedSnack => 'Na-save ang Discord token';

  @override
  String get discordTokenRemovedSnack => 'Natanggal ang Discord token';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'On · i-tap para baguhin ang itsura';

  @override
  String get discordRichPresenceRowOff =>
      'Ipakita sa Discord profile mo ang ginagawa mo';

  @override
  String get loginCancelled => 'Kinansela ang login';

  @override
  String get invalidToken => 'Invalid na token';

  @override
  String loginFailed(String error) {
    return 'Pumalya ang login: $error';
  }

  @override
  String get malLoginFailed => 'Pumalya ang login sa MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'Pumalya ang login sa Kitsu. I-check ang email at password mo.';

  @override
  String get kitsuLoginTitle => 'Mag-sign in sa Kitsu';

  @override
  String get emailOrUsername => 'Email o username';

  @override
  String get password => 'Password';

  @override
  String get kitsuProfile => 'Kitsu profile';

  @override
  String get mangaBakaLoginFailed => 'Pumalya ang login sa MangaBaka';

  @override
  String get mangaBakaProfile => 'MangaBaka profile';

  @override
  String get refreshFromMangaBaka => 'I-refresh mula sa MangaBaka';

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
  String get artistsLabel => 'Mga artist';

  @override
  String get authorsLabel => 'Mga author';

  @override
  String get publishersLabel => 'Mga publisher';

  @override
  String get licensedLabel => 'Licensed';

  @override
  String get contentRatingLabel => 'Content rating';

  @override
  String get yesLabel => 'Oo';

  @override
  String get noLabel => 'Hindi';

  @override
  String get ratingSteps => 'Mga hakbang ng rating';

  @override
  String get hideNsfw => 'Itago ang NSFW';

  @override
  String get hideNsfwDesc =>
      'Ilayo ang mga pang-adult na title sa mga feed at search, at ilista ang sarili mong pang-adult na entry sa Hidden Media.';

  @override
  String get kitsuAccountOptions => 'Mga opsyon ng Kitsu account';

  @override
  String get mangaBakaAccountOptions => 'Mga option ng MangaBaka account';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Hindi ma-update ang Kitsu settings mo';

  @override
  String get titleCanonical => 'Canonical';

  @override
  String get titleRomanized => 'Romanized';

  @override
  String get titleLocalized => 'Localized';

  @override
  String get ratingSystem => 'Rating system';

  @override
  String get ratingSimple => 'Simple (3 mukha)';

  @override
  String get ratingRegular => 'Regular (5 bituin)';

  @override
  String get ratingAdvanced => 'Advanced (10 puntos)';

  @override
  String get contentFilter => 'Content filter';

  @override
  String get contentSfw => 'Safe for work lang';

  @override
  String get contentSometimes => 'Mature content sa mga search';

  @override
  String get contentEverywhere => 'Mature content kahit saan';

  @override
  String get shareToGlobal => 'I-share sa global feed';

  @override
  String get shareToGlobalDesc =>
      'Hayaang lumabas ang activity mo sa global feed ng Kitsu.';

  @override
  String get memberSince => 'Miyembro mula';

  @override
  String get location => 'Lokasyon';

  @override
  String get accountType => 'Uri ng account';

  @override
  String get accountSupporter => 'Supporter';

  @override
  String get accountFree => 'Libre';

  @override
  String get accountDetails => 'Mga detalye ng account';

  @override
  String get refreshFromKitsu => 'I-refresh mula sa Kitsu';

  @override
  String get simklReadOnly => 'Read-only access ang binigay ng Simkl';

  @override
  String get incognitoEditsBlocked => 'Incognito: bawal mag-edit ng listahan';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Incognito: hindi na-save ang progress';

  @override
  String progressSet(int progress) {
    return 'Na-set ang progress sa $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Inalis ang $title sa listahan mo';
  }

  @override
  String get following => 'Sinusundan';

  @override
  String get homeSections => 'Mga home section';

  @override
  String get homeSectionsHint =>
      'I-drag para ayusin ang pagkakasunod. Hindi kailanman fina-fetch ang mga nakatagong section.';

  @override
  String get customListDeleteFailed => 'Hindi matanggal ang custom list';

  @override
  String get customListsSaveFailed => 'Hindi ma-save ang mga custom list';

  @override
  String get customListsSaved => 'Na-save ang mga custom list';

  @override
  String get listName => 'Pangalan ng listahan';

  @override
  String get addList => 'Magdagdag ng listahan';

  @override
  String voiceActorsIn(String name) {
    return 'Mga voice actor · $name';
  }

  @override
  String get animeAppearances => 'Mga lumabas sa anime';

  @override
  String get mangaAppearances => 'Mga lumabas sa manga';

  @override
  String get voicedCharacters => 'Mga tinig na karakter';

  @override
  String get animeCredits => 'Mga credit sa anime';

  @override
  String get mangaCredits => 'Mga credit sa manga';

  @override
  String get mainProductions => 'Mga pangunahing production';

  @override
  String get otherWorks => 'Iba pang gawa';

  @override
  String get prequelSequel => 'Prequel & Sequel';

  @override
  String get previousSeason => 'Nakaraang season';

  @override
  String get thisSeason => 'Season na ito';

  @override
  String get nextSeason => 'Susunod na season';

  @override
  String get voiceRoles => 'Mga voice role';

  @override
  String get staffPositions => 'Mga posisyon sa staff';

  @override
  String get mangaWorks => 'Mga gawang manga';

  @override
  String get malProfile => 'MyAnimeList profile';

  @override
  String get refreshFromMal => 'I-refresh mula sa MyAnimeList';

  @override
  String get repullProfileCounts => 'I-pull ulit ang profile at mga bilang mo';

  @override
  String get refreshed => 'Na-refresh';

  @override
  String get simklProfile => 'Simkl profile';

  @override
  String get refreshFromSimkl => 'I-refresh mula sa Simkl';

  @override
  String get repullProfileLibrary => 'I-pull ulit ang profile at library mo';

  @override
  String get simklSignInToSearch => 'Mag-sign in sa Simkl para maghanap';

  @override
  String get dropRate => 'Drop rate';

  @override
  String get simklAttribution =>
      'Data at artwork mula sa Simkl. Tingnan sa Simkl';

  @override
  String get onHold => 'On hold';

  @override
  String get scoredBy => 'Na-score ng';

  @override
  String get planToWatch => 'Planong panoorin';

  @override
  String get planToRead => 'Planong basahin';

  @override
  String get timesRewatched => 'Ilang beses na-rewatch';

  @override
  String get timesReread => 'Ilang beses na-reread';

  @override
  String get comments => 'Mga komento';

  @override
  String get moviesAndSeries => 'Mga Pelikula & Serye';

  @override
  String get trackingOnly => 'Tracking lang';

  @override
  String get signedIn => 'Naka-sign in';

  @override
  String get searchLanguage => 'Wika ng paghahanap';

  @override
  String get savedToList => 'Na-save sa listahan mo';

  @override
  String get removedFromYourList => 'Inalis sa listahan mo';

  @override
  String get retry => 'Subukan ulit';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get details => 'Mga detalye';

  @override
  String get addToList => 'Idagdag sa listahan';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Nakopya ang title';

  @override
  String get linkCopied => 'Nakopya ang link';

  @override
  String get watchTrailer => 'Panoorin ang trailer';

  @override
  String get copyTitle => 'Kopyahin ang title';

  @override
  String get copyLink => 'Kopyahin ang link';

  @override
  String get openInBrowser => 'Buksan sa browser';

  @override
  String viewOnSource(String source) {
    return 'Tingnan sa $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Mapapalabas ang episode $ep sa loob ng $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Susunod na episode sa loob ng $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Chapter $chapter ay inaasahan sa mga $time';
  }

  @override
  String get logPathCopied => 'Nakopya sa clipboard ang path ng log file';

  @override
  String get animeSource => 'Anime source';

  @override
  String get mangaSource => 'Manga source';

  @override
  String get popular => 'Sikat';

  @override
  String get latest => 'Pinakabago';

  @override
  String get saved => 'Naka-save';

  @override
  String get nothingMatched => 'Walang tumugma';

  @override
  String get nothingSavedFromSource =>
      'Wala pang naka-save mula sa source na ito';

  @override
  String get sourceReturnedNothing => 'Walang ibinalik ang source na ito';

  @override
  String get checkConnectionOrSource =>
      'I-check ang koneksyon mo o subukan ang ibang source.';

  @override
  String get tryDifferentSearch => 'Subukan ang ibang search term.';

  @override
  String get savedTitlesAppearHere =>
      'Dito lalabas ang mga title na idinagdag mo sa listahan.';

  @override
  String get tryOtherFeed => 'Subukan na lang ang kabilang feed o ang search.';

  @override
  String searchSource(String source) {
    return 'Maghanap sa $source';
  }

  @override
  String get animeExtensions => 'Mga anime extension';

  @override
  String get mangaExtensions => 'Mga manga extension';

  @override
  String get nothingHereYet => 'Wala pa rito';

  @override
  String get savedOnDeviceUntilLogin =>
      'Lahat ng nasa ibaba ay naka-save sa device na ito hanggang sa gawin mo.';

  @override
  String get yourProfile => 'Profile mo';

  @override
  String get activity => 'Activity';

  @override
  String get extensions => 'Mga extension';

  @override
  String get logOut => 'Mag-log out';

  @override
  String get logIn => 'Mag-log in';

  @override
  String get logOutConfirm => 'Sigurado ka bang gusto mong mag-log out?';

  @override
  String get incognitoMode => 'Incognito mode';

  @override
  String get alsoBlockListEdits => 'I-block din ang pag-edit ng listahan';

  @override
  String get offlineMode => 'Offline mode';

  @override
  String get switchService => 'Palitan ang service';

  @override
  String logOutOf(String name) {
    return 'Mag-log out sa $name';
  }

  @override
  String get loggedIn => 'Naka-login';

  @override
  String get notifications => 'Mga notification';

  @override
  String get nothingNew => 'Walang bago';

  @override
  String get thisWeek => 'Linggong ito';

  @override
  String get listOnly => 'Listahan lang';

  @override
  String get filter => 'I-filter';

  @override
  String get searchResults => 'Mga resulta ng paghahanap';

  @override
  String get recentSearches => 'Mga huling hinanap';

  @override
  String get searchOrSetFilter => 'Maghanap o magtakda ng filter';

  @override
  String get filters => 'Mga filter';

  @override
  String get showLess => 'Ipakita nang kaunti';

  @override
  String get showAll => 'Ipakita lahat';

  @override
  String get apply => 'I-apply';

  @override
  String get preview => 'Preview';

  @override
  String get preset => 'Preset';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'Nasa card';

  @override
  String get cardInCard => 'Sa loob ng card';

  @override
  String get size => 'Laki';

  @override
  String get cardWidth => 'Lapad ng card';

  @override
  String get compact => 'Compact';

  @override
  String get coverAndTitleOnly => 'Cover at title lang';

  @override
  String get titleLines => 'Mga linya ng title';

  @override
  String get shape => 'Hugis';

  @override
  String get posterShape => 'Hugis ng poster';

  @override
  String get cornerRadius => 'Bilog ng sulok';

  @override
  String get off => 'Off';

  @override
  String get topLeft => 'Itaas kaliwa';

  @override
  String get topRight => 'Itaas kanan';

  @override
  String get bottomLeft => 'Ibaba kaliwa';

  @override
  String get bottomRight => 'Ibaba kanan';

  @override
  String get overlays => 'Mga overlay';

  @override
  String get progressCount => 'Progress / bilang';

  @override
  String get pill => 'Pill';

  @override
  String get bar => 'Bar';

  @override
  String get outside => 'Sa labas';

  @override
  String get scoreBadge => 'Score badge';

  @override
  String get airingDot => 'Airing dot';

  @override
  String get updateAvailable => 'May update';

  @override
  String get notInstalled => 'Hindi naka-install';

  @override
  String get done => 'Tapos na';

  @override
  String get searchOrEnterUrl => 'Maghanap o maglagay ng URL';

  @override
  String get refresh => 'I-refresh';

  @override
  String get share => 'I-share';

  @override
  String get characters => 'Mga karakter';

  @override
  String get staff => 'Staff';

  @override
  String get readMore => 'Magbasa pa';

  @override
  String get couldNotLoadList => 'Hindi ma-load ang listahan';

  @override
  String get logInToFavourite => 'Mag-log in para makapagdagdag ng favorite';

  @override
  String get alsoKnownAs => 'Kilala rin bilang';

  @override
  String get hideSpoilerNames => 'Itago ang mga pangalang spoiler';

  @override
  String get showSpoilerNames => 'Ipakita ang mga pangalang spoiler';

  @override
  String get favourited => 'Naka-favorite';

  @override
  String get favourite => 'Favorite';

  @override
  String get couldNotOpenTitle => 'Hindi mabuksan ang title na ito';

  @override
  String get nobodyHereYet => 'Wala pang tao rito';

  @override
  String get noMatches => 'Walang tugma';

  @override
  String get gridView => 'Grid view';

  @override
  String get fullWidth => 'Buong lapad';

  @override
  String get userNotFound => 'Hindi nahanap ang user';

  @override
  String get couldNotUpdateFollow => 'Hindi ma-update ang follow';

  @override
  String followedUser(String name) {
    return 'Finollow mo si $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Ina-unfollow mo na si $name';
  }

  @override
  String get messages => 'Mga mensahe';

  @override
  String get logInToSeeMessages => 'Mag-log in para makita ang mga mensahe mo';

  @override
  String get editActivity => 'I-edit ang activity';

  @override
  String get newActivity => 'Bagong activity';

  @override
  String get editMessage => 'I-edit ang mensahe';

  @override
  String get writeMessage => 'Magsulat ng mensahe';

  @override
  String get editReply => 'I-edit ang reply';

  @override
  String get posted => 'Na-post';

  @override
  String get couldNotPost => 'Hindi ma-post';

  @override
  String get nothingToPreview => 'Walang ipe-preview';

  @override
  String get writeSomethingHint =>
      'Magsulat ng kahit ano… gumagana rito ang AniList markdown';

  @override
  String get privateMessage => 'Private message';

  @override
  String get post => 'I-post';

  @override
  String get nothingHere => 'Wala rito';

  @override
  String get noAnimeProgress => 'Walang anime progress';

  @override
  String get noMangaProgress => 'Walang manga progress';

  @override
  String get noMessages => 'Walang mensahe';

  @override
  String get writeMessageHint => 'Magsulat ng mensahe…';

  @override
  String get shareSomethingHint => 'Mag-share ng kahit ano…';

  @override
  String get all => 'Lahat';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Bilang';

  @override
  String get hoursWatched => 'Oras na pinanood';

  @override
  String get chaptersRead => 'Mga chapter na nabasa';

  @override
  String get meanScore => 'Mean score';

  @override
  String get noStatsYet => 'Wala pang stats';

  @override
  String get totalEntries => 'Kabuuang entry';

  @override
  String get episodesWatched => 'Mga episode na napanood';

  @override
  String get daysWatched => 'Araw na pinanood';

  @override
  String get volumesRead => 'Mga volume na nabasa';

  @override
  String get standardDeviation => 'Standard deviation';

  @override
  String get showMore => 'Ipakita pa';

  @override
  String get followsYou => 'Finofollow ka';

  @override
  String get nobodyYet => 'Wala pa';

  @override
  String get logInToLike => 'Mag-log in para mag-like';

  @override
  String get failedToLikeActivity => 'Hindi na-like ang activity';

  @override
  String get deleteActivityConfirm => 'Tanggalin ang activity?';

  @override
  String get deletedActivity => 'Natanggal ang activity';

  @override
  String get failedToDeleteActivity => 'Hindi natanggal ang activity';

  @override
  String get subscribed => 'Naka-subscribe';

  @override
  String get unsubscribed => 'Naka-unsubscribe';

  @override
  String get failedToUpdateSubscription => 'Hindi na-update ang subscription';

  @override
  String get edit => 'I-edit';

  @override
  String get delete => 'Tanggalin';

  @override
  String get likedBy => 'Na-like ni';

  @override
  String get follow => 'I-follow';

  @override
  String get nameCopied => 'Nakopya ang pangalan';

  @override
  String get followsEachOther => 'Magka-follow kayo';

  @override
  String get unfollow => 'I-unfollow';

  @override
  String get userIdCopied => 'Nakopya ang user id';

  @override
  String get shareProfile => 'I-share ang profile';

  @override
  String get copyUserId => 'Kopyahin ang user id';

  @override
  String get failedToDelete => 'Hindi natanggal';

  @override
  String get failedToLike => 'Hindi na-like';

  @override
  String get replies => 'Mga reply';

  @override
  String get reply => 'Mag-reply';

  @override
  String get noRepliesYet => 'Wala pang reply';

  @override
  String get favouriteAnime => 'Mga paboritong anime';

  @override
  String get favouriteManga => 'Mga paboritong manga';

  @override
  String get favouriteCharacters => 'Mga paboritong karakter';

  @override
  String get favouriteStaff => 'Paboritong staff';

  @override
  String get favouriteStudios => 'Mga paboritong studio';

  @override
  String get noFavouritesYet => 'Wala pang favorite';

  @override
  String get yourStory => 'Kwento mo';

  @override
  String get copiedToClipboard => 'Nakopya sa clipboard';

  @override
  String get justNow => 'Ngayon lang';

  @override
  String get openImage => 'Buksan ang image';

  @override
  String get hideSpoiler => 'Itago ang spoiler';

  @override
  String get showSpoiler => 'Ipakita ang spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Score';

  @override
  String get started => 'Nagsimula';

  @override
  String get completed => 'Natapos';

  @override
  String get private => 'Private';

  @override
  String get hideFromStatusLists => 'Itago sa mga status list';

  @override
  String get totalRepeats => 'Kabuuang repeat';

  @override
  String get other => 'Iba pa';

  @override
  String get customLists => 'Mga custom list';

  @override
  String get activeDays => 'Mga aktibong araw';

  @override
  String get longestStreak => 'Pinakamahabang streak';

  @override
  String get currentStreak => 'Kasalukuyang streak';

  @override
  String get tapOrHoverDay => 'I-tap o i-hover ang isang araw';

  @override
  String get less => 'Kaunti';

  @override
  String get more => 'Marami';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep sa loob ng $time';
  }

  @override
  String get sectionLoading => 'Naglo-load';

  @override
  String get querySize => 'Laki ng query';

  @override
  String get querySizeDesc =>
      'Ang one big query ay nilo-load ang lahat ng row (at buong profile) sa isang request. Ang split query ay nagpapadala ng maliit na request kada row o parte ng profile: mabilis ang bawat isa at lumalabas ang mga parte habang dumarating.';

  @override
  String get oneBig => 'One big';

  @override
  String get split => 'Split';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'Mga system notification';

  @override
  String get feedLayout => 'Layout ng feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown sa $total ang nakikita — i-tap para pumili at mag-reorder';
  }

  @override
  String labelSections(String label) {
    return 'Mga section ng $label';
  }

  @override
  String get accountOptions => 'Mga opsyon ng account';

  @override
  String get anilistAccountOptions => 'Mga opsyon ng AniList account';

  @override
  String get sectionPrivacy => 'Privacy';

  @override
  String get hidePrivateEntries => 'Itago ang mga private na entry';

  @override
  String get hidePrivateEntriesDesc =>
      'Ilayo sa feed ang mga entry na naka-private sa AniList';

  @override
  String get anilistExcludeList => 'Huwag isama ang list mo';

  @override
  String get anilistExcludeListDesc =>
      'Itago sa anime at manga pages ang mga title na nasa AniList mo na';

  @override
  String get anilistProfile => 'AniList profile';

  @override
  String get refreshFromAnilist => 'I-refresh mula sa AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Hindi ma-update ang AniList settings';

  @override
  String get sectionNames => 'Mga pangalan';

  @override
  String get titleLanguage => 'Wika ng title';

  @override
  String get titleLanguageDesc =>
      'Kung paano isinusulat ang mga title saanman, hal. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Mga pangalan ng staff at karakter';

  @override
  String get sectionLists => 'Mga listahan';

  @override
  String get scoreFormat => 'Score format';

  @override
  String get sortListsBy => 'Ayusin ang mga listahan ayon sa';

  @override
  String labelCustomLists(String label) {
    return 'Mga custom list ng $label';
  }

  @override
  String customListsCount(int count) {
    return '$count listahan — i-tap para magdagdag o mag-alis';
  }

  @override
  String get mergeActivities => 'I-merge ang mga activity';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Timezone';

  @override
  String get notSet => 'Hindi naka-set';

  @override
  String get airingNotifications => 'Mga airing notification';

  @override
  String get airingNotificationsDesc =>
      'Ma-notify kapag may umere nang episode ng sinusundan mong palabas';

  @override
  String get displayAdultContent => 'Ipakita ang adult content';

  @override
  String get displayAdultContentDesc =>
      'Isama ang mga 18+ na title sa browse, search at mga feed';

  @override
  String get restrictMessages => 'Limitahan ang mga mensahe sa mga sinusundan';

  @override
  String get restrictMessagesDesc =>
      'Ang mga sinusundan mo lang ang pwedeng mag-message sa\'yo';

  @override
  String get sectionServices => 'Mga service';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return '$label service';
  }

  @override
  String nameSettings(String name) {
    return 'Settings ng $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Mga opsyon mula sa extension bridge ng $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return 'Hindi nakapagsimula ang $name: $error';
  }

  @override
  String get importLists => 'Mag-import ng mga listahan';

  @override
  String get importListsDesc =>
      'Mula sa mga backup ng Aniyomi, Mihon / Tachiyomi o Kotatsu';

  @override
  String get exportLists => 'Mag-export ng mga listahan';

  @override
  String get exportListsDesc => 'Papunta sa backup ng Aniyomi, Mihon o Kotatsu';

  @override
  String get sectionBrowse => 'Browse';

  @override
  String get readingTab => 'Reading tab';

  @override
  String get readingTabDesc =>
      'Aling mga extension ang ipapakita ng ikatlong tab';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Default na feed';

  @override
  String get defaultFeedDesc => 'Aling listahan ang bubuksan ng isang source';

  @override
  String noServiceSupports(String type) {
    return 'Walang service na sumusuporta sa $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded sa $installed source ang naglo-load';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Walang extension service na sumusuporta sa $type dito.';
  }

  @override
  String get loadDataFrom => 'I-load ang data mula sa';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Wala pang naka-install na $type source.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Hindi naka-install ang extension para sa $name';
  }

  @override
  String get thisSource => 'source na ito';

  @override
  String failedToAddRepository(String error) {
    return 'Hindi maidagdag ang repository: $error';
  }

  @override
  String installedType(String type) {
    return 'Naka-install na $type';
  }

  @override
  String availableType(String type) {
    return 'Available na $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Walang naka-install na $type extension';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Walang available na $type extension';
  }

  @override
  String get nothingToShowYet => 'Wala pang maipapakita';

  @override
  String get addTitlesHint =>
      'Magdagdag ng ilang title sa listahan mo at lalabas dito ang mga iyon.';

  @override
  String get couldntLoad => 'Hindi ma-load';

  @override
  String get progressStyleHint =>
      'Ang pill at bar ay nakapatong sa poster; ang outside ay nagpapakita ng parehong bilang bilang plain text — pumili ng isa.';

  @override
  String get nixManagedUpdate =>
      'Pinamamahalaan ng Nix ang build na ito — patakbuhin ang \"nix flake update\" sa flake mo at mag-rebuild imbes na mag-update dito';

  @override
  String autoUpdateFailed(String error) {
    return 'Pumalya ang automatic update ($error) — bubuksan na lang ang download page';
  }

  @override
  String get unknownPreference => 'Hindi kilalang preference';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Hindi suportadong uri ng preference: $type';
  }

  @override
  String get notYetReleased => 'Hindi pa nailalabas';

  @override
  String get notStarted => 'Hindi pa nasimulan';

  @override
  String get country => 'Bansa';

  @override
  String get sort => 'Ayusin';

  @override
  String get chooseBackupDialog =>
      'Pumili ng backup ng Aniyomi, Mihon o Kotatsu';

  @override
  String get importListsHint =>
      'Dalhin ang library mo mula sa Aniyomi, Mihon / Tachiyomi o Kotatsu. Mananatili ang mga title, cover, progress at kategorya.';

  @override
  String get chooseBackupFile => 'Pumili ng backup file';

  @override
  String importAnimeCount(int count) {
    return 'Mag-import ng $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Mag-import ng $count manga';
  }

  @override
  String get mergeWithExisting => 'I-merge sa mga kasalukuyang listahan';

  @override
  String get mergeWithExistingDesc =>
      'Pinapanatili ang mayroon ka na; kapag off, papalitan ang mga tumutugmang title';

  @override
  String get chooseAnother => 'Pumili ng iba';

  @override
  String get import => 'I-import';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Pumili kung saan ise-save ang backup';

  @override
  String savedPath(String path) {
    return 'Na-save ang $path';
  }

  @override
  String exportFailed(String error) {
    return 'Pumalya ang export: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Wala pang laman ang mga lokal na listahan mo.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Ine-export ang $anime anime at $manga manga mula sa mga lokal na listahan mo. Manga lang ang sinusuportahan ng Kotatsu.';
  }

  @override
  String get saveToFolder => 'I-save sa folder';

  @override
  String get formatAnimeManga => 'Anime at manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga lang · .tachibk';

  @override
  String get formatMangaZip => 'Manga lang · .zip';

  @override
  String get genres => 'Mga genre';

  @override
  String get relations => 'Mga relasyon';

  @override
  String get recommendations => 'Mga rekomendasyon';

  @override
  String get openings => 'Mga opening';

  @override
  String get endings => 'Mga ending';

  @override
  String get background => 'Background';

  @override
  String get links => 'Mga link';

  @override
  String get rank => 'Rank';

  @override
  String get members => 'Mga miyembro';

  @override
  String get favorites => 'Mga favorite';

  @override
  String get episodes => 'Mga episode';

  @override
  String get chapters => 'Mga chapter';

  @override
  String get volumes => 'Mga volume';

  @override
  String get format => 'Format';

  @override
  String get source => 'Source';

  @override
  String get duration => 'Haba';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min kada ep';
  }

  @override
  String get rating => 'Rating';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialization';

  @override
  String get season => 'Season';

  @override
  String get broadcast => 'Broadcast';

  @override
  String get aired => 'Umere';

  @override
  String get published => 'Na-publish';

  @override
  String get popularity => 'Popularidad';

  @override
  String get community => 'Komunidad';

  @override
  String get watching => 'Pinapanood';

  @override
  String get reading => 'Binabasa';

  @override
  String get dropped => 'Dropped';

  @override
  String get planned => 'Planned';

  @override
  String get trailers => 'Mga trailer';

  @override
  String get ratings => 'Mga rating';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Title';

  @override
  String get votes => 'Mga boto';

  @override
  String get watchedStat => 'Napanood';

  @override
  String get runtime => 'Runtime';

  @override
  String get director => 'Direktor';

  @override
  String get network => 'Network';

  @override
  String get certification => 'Certification';

  @override
  String get airs => 'Umeere';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Kita';

  @override
  String get released => 'Inilabas';

  @override
  String get tags => 'Mga tag';

  @override
  String get author => 'Author';

  @override
  String get born => 'Ipinanganak';

  @override
  String get website => 'Website';

  @override
  String get established => 'Itinatag';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Mga novel';

  @override
  String get thisMonth => 'Buwang ito';

  @override
  String get movies => 'Mga pelikula';

  @override
  String get shows => 'Mga palabas';

  @override
  String get rewatching => 'Rinerewatch';

  @override
  String get rereading => 'Rinereread';

  @override
  String get watchedStatus => 'Napanood';

  @override
  String get planning => 'Planned';

  @override
  String get paused => 'Naka-pause';

  @override
  String get watch => 'Panoorin';

  @override
  String get read => 'Basahin';

  @override
  String get finished => 'Tapos na';

  @override
  String get releasing => 'Umeere pa';

  @override
  String get cancelled => 'Kinansela';

  @override
  String get hiatus => 'Hiatus';

  @override
  String get remove => 'Alisin';

  @override
  String syncToService(String service) {
    return 'I-sync sa $service';
  }

  @override
  String syncedToService(String service) {
    return 'Na-sync sa $service';
  }

  @override
  String get latestReleases => 'Pinakabagong release';

  @override
  String get topRated => 'Pinakamataas ang rating';

  @override
  String localSection(String title) {
    return '$title · Local';
  }

  @override
  String get localEntryNote =>
      'Nasa lokal na listahan lang sa device na ito ang title na ito. Naka-off dito ang pag-edit dahil baka mag-clash ito sa listahan ng account mo; pwede mo pa rin itong alisin.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Card';

  @override
  String get cardPresetCozy => 'Cozy';

  @override
  String get sortTopRated => 'Pinakamataas ang rating';

  @override
  String get sortMostPopular => 'Pinakasikat';

  @override
  String get sortTrending => 'Trending';

  @override
  String get sortNewest => 'Pinakabago';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Pinakamaraming favorite';

  @override
  String get anyCountry => 'Kahit anong bansa';

  @override
  String get orderScore => 'Score';

  @override
  String get orderTitle => 'Title';

  @override
  String get orderLastUpdated => 'Huling na-update';

  @override
  String get orderLastAdded => 'Huling idinagdag';

  @override
  String get never => 'Hindi kailanman';

  @override
  String get always => 'Palagi';

  @override
  String get scorePoint100 => '100 Point';

  @override
  String get scorePoint10Decimal => '10 Point Decimal';

  @override
  String get scorePoint10 => '10 Point';

  @override
  String get scorePoint5 => '5 Star';

  @override
  String get scorePoint3 => '3 Point Smiley';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oras',
      one: '1 oras',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw',
      one: '1 araw',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count linggo',
      one: '1 linggo',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Ituloy';

  @override
  String get resumeSourceMissing =>
      'I-install ang source ng title na ito para maituloy';

  @override
  String get resumeRemove => 'Alisin sa resume';

  @override
  String resumeAt(String time) {
    return '$time na lang';
  }

  @override
  String resumePage(int page, int total) {
    return 'Page $page sa $total';
  }

  @override
  String get continueWatching => 'Ituloy ang panonood';

  @override
  String get continueReading => 'Ituloy ang pagbabasa';

  @override
  String get favouriteAnimeSection => 'Paboritong anime';

  @override
  String get favouriteMangaSection => 'Paboritong manga';

  @override
  String get plannedAnime => 'Planned na anime';

  @override
  String get plannedManga => 'Planned na manga';

  @override
  String get completedAnime => 'Natapos na anime';

  @override
  String get completedManga => 'Natapos na manga';

  @override
  String get hiddenMedia => 'Hidden Media';

  @override
  String get recentUpdates => 'Mga huling update';

  @override
  String get trendingNow => 'Trending ngayon';

  @override
  String get popularThisSeason => 'Sikat ngayong season';

  @override
  String get trendingMovies => 'Trending na pelikula';

  @override
  String get topRatedSeries => 'Pinakamataas ang rating na serye';

  @override
  String get mostFavouriteSeries => 'Pinakamaraming favorite na serye';

  @override
  String get popularAnime => 'Sikat na anime';

  @override
  String get trendingManhwa => 'Trending na manhwa';

  @override
  String get trendingNovels => 'Trending na novel';

  @override
  String get topRatedManga => 'Pinakamataas ang rating na manga';

  @override
  String get mostFavouriteManga => 'Pinakamaraming favorite na manga';

  @override
  String get popularManga => 'Sikat na manga';

  @override
  String get topMovies => 'Top na pelikula';

  @override
  String get topOna => 'Top ONA';

  @override
  String get topOva => 'Top OVA';

  @override
  String get mostPopular => 'Pinakasikat';

  @override
  String get mostFavourite => 'Pinakamaraming favorite';

  @override
  String get upcoming => 'Paparating';

  @override
  String get topManga => 'Top na manga';

  @override
  String get topManhwa => 'Top na manhwa';

  @override
  String get topManhua => 'Top na manhua';

  @override
  String get topNovels => 'Top na novel';

  @override
  String get topOneShots => 'Top na one-shot';

  @override
  String get trendingMoviesToday => 'Trending na pelikula ngayong araw';

  @override
  String get trendingShowsToday => 'Trending na palabas ngayong araw';

  @override
  String get trendingMoviesWeek => 'Trending na pelikula ngayong linggo';

  @override
  String get trendingShowsWeek => 'Trending na palabas ngayong linggo';

  @override
  String get mostWatchedMoviesMonth =>
      'Pinakapinanood na pelikula ngayong buwan';

  @override
  String get mostWatchedShowsMonth => 'Pinakapinanood na palabas ngayong buwan';

  @override
  String get trendingThisWeek => 'Trending ngayong linggo';

  @override
  String get mostWatchedThisMonth => 'Pinakapinanood ngayong buwan';

  @override
  String get repoLinksAdded => 'Matagumpay na naidagdag ang mga repo link!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'May error sa pagkuha ng data mula sa AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'MGA KOMENTO';

  @override
  String get playerNotAvailable => 'Hindi pa available ang player';

  @override
  String deepLinkInitialError(String error) {
    return 'May error sa pagkuha ng initial deep link: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'May error sa pagbukas ng link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Hindi mabuksan ang link na ito: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'May error sa pagbukas ng link: $error';
  }

  @override
  String get forReleasingTitles => 'para sa mga title na kasalukuyang umeere';

  @override
  String get progress => 'Progress';

  @override
  String get notes => 'Mga tala';

  @override
  String serviceNotFound(String id) {
    return 'Hindi nahanap ang service na \"$id\"';
  }

  @override
  String get glassEffectEnabled => 'Naka-on na ang glass effect';

  @override
  String get glassEffectDisabled => 'Naka-off na ang glass effect';

  @override
  String get materialYouEnabled => 'Naka-on na ang Material You';

  @override
  String get materialYouDisabled => 'Naka-off na ang Material You';

  @override
  String get darkModeEnabled => 'Naka-on na ang dark mode';

  @override
  String get darkModeDisabled => 'Naka-off na ang dark mode';

  @override
  String get animeList => 'Anime list';

  @override
  String get mangaList => 'Manga list';

  @override
  String ownerAnimeList(String owner) {
    return 'Anime list ni $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Manga list ni $owner';
  }

  @override
  String get loadingList => 'Nilo-load ang listahan';

  @override
  String get earlier => 'Mas nauna';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count araw ang nakalipas',
      one: '1 araw ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oras ang nakalipas',
      one: '1 oras ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuto ang nakalipas',
      one: '1 minuto ang nakalipas',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}m ang nakalipas';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}h ang nakalipas';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}d ang nakalipas';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}w ang nakalipas';
  }

  @override
  String get couldntLoadSource => 'Hindi ma-load ang source na ito';

  @override
  String get followers => 'Mga follower';

  @override
  String couldntLoadTitle(String title) {
    return 'Hindi ma-load ang $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Hindi ma-load ang profile na ito';

  @override
  String get profile => 'Profile';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Stats';

  @override
  String get received => 'Natanggap';

  @override
  String get sent => 'Naipadala';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Hindi ma-load ang page na ito';

  @override
  String get couldntLoadAllDetails => 'Hindi ma-load ang lahat ng detalye';

  @override
  String get series => 'Serye';

  @override
  String get studios => 'Mga studio';

  @override
  String get users => 'Mga user';

  @override
  String repositoriesTitle(String type) {
    return 'Mga $type repository';
  }

  @override
  String get repositoryUrl => 'URL ng repository';

  @override
  String get downloadingRepository => 'Dina-download ang repository…';

  @override
  String get noRepositories => 'Walang naidagdag na repository';

  @override
  String repoExtensionsCount(String count) {
    return '$count extension';
  }

  @override
  String get searchExtensions => 'Maghanap ng mga extension...';

  @override
  String deletePluginTitle(String name) {
    return 'Tanggalin ang $name?';
  }

  @override
  String get deletePluginMessage =>
      'Sigurado ka bang gusto mong tanggalin ang plugin na ito?';

  @override
  String pluginDeleted(String name) {
    return 'Natanggal ang $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'Hindi available ang $name sa naka-configure na repo';
  }

  @override
  String get pluginFetchFailed => 'Hindi makuha ang info ng plugin';

  @override
  String installPluginTitle(String name) {
    return 'I-install ang $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Laki: $size';
  }

  @override
  String get installedState => 'Naka-install';

  @override
  String get errorLabel => 'Error:';

  @override
  String get stackTraceDetails => 'Mga detalye (stack trace)';

  @override
  String get shareLogFile => 'I-share ang log file';

  @override
  String get copyLogs => 'Kopyahin ang mga log';

  @override
  String noListToEdit(String service) {
    return 'Walang listahang ie-edit ang $service';
  }

  @override
  String get couldNotReadFile => 'Hindi mabasa ang file na iyon';

  @override
  String importedSummary(int anime, int manga) {
    return 'Na-import ang $anime anime at $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count ang nandoon na';
  }

  @override
  String get airingNow => 'Umeere ngayon';

  @override
  String get topRatedMovies => 'Mga pelikulang pinakamataas ang rating';

  @override
  String get koreanDramas => 'Korean Dramas';

  @override
  String get chineseDramas => 'Chinese Dramas';

  @override
  String get japaneseDramas => 'Japanese Dramas';

  @override
  String get thaiDramas => 'Thai Dramas';

  @override
  String get turkishDramas => 'Turkish Dramas';

  @override
  String get miniSeries => 'Mini Series';

  @override
  String get topRatedShows => 'Mga palabas na pinakamataas ang rating';

  @override
  String get recommendedSection => 'Inirerekomenda';

  @override
  String get syncRow => 'I-sync ang mga listahan';

  @override
  String get syncRowDesc =>
      'I-mirror ang listahan ng isang service sa iba mong account';

  @override
  String get syncTitle => 'Sync';

  @override
  String get syncMainService => 'Pangunahing service';

  @override
  String get syncMainServiceDesc =>
      'Ang listahan nito ang batayan; ina-update ang lahat ng iba pang naka-sign in na service para tumugma';

  @override
  String get syncAuto => 'Auto sync';

  @override
  String get syncAutoDesc =>
      'Mag-fetch at mag-sync sa background kapag binubuksan ang app at kada 30 minuto';

  @override
  String get syncAddMissing => 'Idagdag ang mga kulang na entry';

  @override
  String get syncAddMissingDesc =>
      'Idagdag din ang mga entry na wala pa sa kabilang service';

  @override
  String get syncOnlyForward => 'Panatilihin ang mas mataas na progress';

  @override
  String get syncOnlyForwardDesc =>
      'Huwag babaan ang progress ng service na mas nauuna na';

  @override
  String get syncFetch => 'Fetch';

  @override
  String get syncFetchAgain => 'Mag-fetch ulit';

  @override
  String get syncAll => 'I-sync lahat';

  @override
  String get syncStop => 'Ihinto';

  @override
  String get syncResume => 'Ituloy';

  @override
  String get syncNothingToSync =>
      'Hindi ma-sync ang service na ito para sa ganitong uri';

  @override
  String get syncNoTargets => 'Mag-sign in sa ibang service para may ma-sync';

  @override
  String get syncLoadingMap => 'Nilo-load ang ID mapping';

  @override
  String get syncComparing => 'Kinukumpara ang mga listahan';

  @override
  String get syncIntro =>
      'Pumili ng pangunahing service at pindutin ang Fetch. Isang beses kukunin ang listahan mo sa bawat service, tapos ikukumpara sa pangunahin.';

  @override
  String get syncStateSynced => 'Naka-sync';

  @override
  String get syncStateOutdated => 'Hindi naka-sync';

  @override
  String get syncStateMissing => 'Wala sa listahan';

  @override
  String get syncStateUnmapped => 'Walang tugma';

  @override
  String syncPaused(String time) {
    return 'Naghihintay sa rate limit, magpapatuloy sa loob ng $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count ang nasa $name lang, hindi ginalaw';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done sa $total';
  }

  @override
  String get syncNothingHere => 'Walang maipapakita';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used sa $max request ang nagamit kada $window';
  }

  @override
  String get syncMinute => 'minuto';

  @override
  String get syncDay => 'araw';

  @override
  String get syncNotInList => 'Wala pa sa listahan';

  @override
  String get syncCleared => 'Na-clear ang plano';

  @override
  String get syncClear => 'I-clear';

  @override
  String get syncOptions => 'Mga opsyon';

  @override
  String get syncShared => 'Kapareho ng entry ng ibang item';

  @override
  String syncNotFound(String service) {
    return 'Hindi nahanap sa $service';
  }

  @override
  String syncService(String service, int count) {
    return 'I-sync ang $service ($count)';
  }

  @override
  String get syncOnEdit => 'I-sync agad ang mga pagbabago';

  @override
  String get syncOnEditDesc =>
      'Ipadala agad ang bawat progress update at pag-edit ng listahan sa iba mong naka-sign in na service';

  @override
  String syncPushed(String services) {
    return 'Na-sync sa $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Na-rate limit, subukan ulit mamaya';

  @override
  String get syncAhead => 'Kung sino ang mas nauuna';

  @override
  String get syncAheadDesc =>
      'Two-way: sa bawat title, ang entry na pinakamalayo na ang progress ang mananalo at kokopyahin sa lahat ng iba mong service';

  @override
  String syncAheadFrom(String service) {
    return 'Mula sa $service';
  }

  @override
  String get syncConfirm => 'I-review bago mag-sync';

  @override
  String get syncConfirmDesc =>
      'Ipakita kung ano ang babaguhin ng Sync all at ilang request ang kailangan';

  @override
  String get syncPreviewTitle => 'Handa nang mag-sync';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates update, $adds idadagdag';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Mga $count request';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count id ang kailangang hanapin muna';
  }

  @override
  String get syncPreviewNothing => 'Walang babaguhin';

  @override
  String get syncStart => 'Simulan';

  @override
  String get syncRetry => 'Subukan ulit';

  @override
  String get syncSkip => 'Laktawan ang item na ito';

  @override
  String get syncInclude => 'Isama ulit ang item na ito';

  @override
  String get syncSkippedLabel => 'Nilaktawan';

  @override
  String get syncChanges => 'Mga pagkakaiba';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Progress';

  @override
  String get syncChangeScore => 'Score';

  @override
  String get syncChangeDates => 'Mga petsa';

  @override
  String get syncChangeRepeat => 'Bilang ng rewatch';

  @override
  String get syncFailedReason => 'Bakit pumalya';

  @override
  String get syncSkippedHint =>
      'Hindi ginagalaw ang mga nilaktawang item, kahit mag-fetch ulit';

  @override
  String get commentsRules => 'Mga patakaran sa pag-comment';

  @override
  String get commentsRulesBody =>
      'SUWAY SA KAHIT ANONG RULE = BAN KA\n\n1. Bawal ang racism, diskriminasyon o hate speech\n2. Bawal ang spam o self-promotion\n3. Bawal na bawal ang NSFW na content\n4. English lang, walang exception\n5. Bawal ang panggagaya, harassment o pang-aabuso\n6. Bawal ang illegal na content o sobrang kawalan ng respeto sa kahit anong fandom\n7. Huwag mag-request o mag-share ng mga repository o extension\n8. Spoiler lang kung may spoiler tag at babala\n9. Bawal ang sexualizing o hindi angkop na komento tungkol sa mga menor de edad na karakter\n10. Kung mali, huwag i-post!';

  @override
  String get commentsRulesAccept => 'Gets ko';

  @override
  String get commentsSortNewest => 'Pinakabago';

  @override
  String get commentsSortOldest => 'Pinakaluma';

  @override
  String get commentsSortHighest => 'Pinakamataas ang rating';

  @override
  String get commentsSortLowest => 'Pinakamababa ang rating';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Ch $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'I-filter ayon sa episode';

  @override
  String get commentsFilterChapterTitle => 'I-filter ayon sa chapter';

  @override
  String get commentsFilterTagTitle => 'Maglagay ng episode o chapter number';

  @override
  String get commentsFilterHint => 'Numero';

  @override
  String get commentsFilterApply => 'I-filter';

  @override
  String get commentsFilterClear => 'Ipakita lahat';

  @override
  String get commentsPlaceholder => 'Magdagdag ng komento…';

  @override
  String commentsReplyingTo(String name) {
    return 'Nagre-reply kay $name';
  }

  @override
  String get commentsSend => 'Ipadala';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag na $label (optional)';
  }

  @override
  String get commentsTagEpisode => 'episode';

  @override
  String get commentsTagChapter => 'chapter';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Numero ng $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Hindi pwedeng lumampas sa kabuuan ($total) ang tag';
  }

  @override
  String get commentsNoTag => 'Walang tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Maghanap ng GIF';

  @override
  String get commentsGifEmpty => 'Walang nahanap na GIF';

  @override
  String get commentsEmptyText => 'Hindi pwedeng walang laman ang komento';

  @override
  String get commentsBannedYou => 'Bawal ka nang mag-comment';

  @override
  String get commentsEdited => 'Na-edit ang komento';

  @override
  String get commentsDeleted => 'Natanggal ang komento';

  @override
  String get commentsDeletedPlaceholder => '[tinanggal]';

  @override
  String get commentsReported => 'Na-report ang komento';

  @override
  String get commentsUserBanned => 'Na-ban ang user';

  @override
  String get commentsReport => 'I-report';

  @override
  String get commentsReportAsk =>
      'I-report ang komentong ito sa mga moderator?';

  @override
  String get commentsDelete => 'Tanggalin';

  @override
  String get commentsDeleteAsk =>
      'Matatanggal ang komentong ito para sa lahat.';

  @override
  String get commentsBan => 'I-ban';

  @override
  String get commentsBanAsk => 'I-ban ang user na ito sa pag-comment?';

  @override
  String get commentsCopy => 'Kopyahin';

  @override
  String get commentsViewReply => 'Tingnan ang 1 reply';

  @override
  String commentsViewReplies(int count) {
    return 'Tingnan ang $count reply';
  }

  @override
  String get commentsHideReplies => 'Itago ang mga reply';

  @override
  String get commentsLoadMore => 'Mag-load pa ng komento';

  @override
  String get commentsEmpty => 'Wala pang komento. Ikaw ang una!';

  @override
  String get commentsEmptyFiltered => 'Walang komento para sa filter na ito';

  @override
  String get commentsSignIn =>
      'Mag-sign in sa AniList para magbasa at magsulat ng komento';

  @override
  String get commentsSignInMessage =>
      'Shared sa lahat ng service ang mga komento at gumagamit ng AniList account mo.';

  @override
  String get commentsUnavailable =>
      'Hindi available ang mga komento para sa title na ito';

  @override
  String get commentsUnavailableMessage =>
      'Hindi ito natugma sa isang AniList entry.';

  @override
  String get commentsDisabled => 'Naka-off ang mga komento';

  @override
  String get commentsDisabledMessage =>
      'Pwede mo itong i-on ulit sa Settings › General.';

  @override
  String get commentsOffline => 'Hindi ma-load ang mga komento';

  @override
  String get commentsSingleTitle => 'Isang komento ang ipinapakita';

  @override
  String get commentsShowAll => 'Ipakita ang lahat ng komento';

  @override
  String get commentsSettingsHeader => 'Mga komento';

  @override
  String get commentsSettingEnabled => 'Mga komento';

  @override
  String get commentsSettingEnabledDesc =>
      'Ipakita ang Comments tab sa mga title at mag-sign in sa comment server gamit ang AniList account mo';

  @override
  String get commentsSettingAlerts => 'Mga notification ng reply';

  @override
  String get commentsSettingAlertsDesc =>
      'I-notify ako kapag may nag-reply sa mga komento ko';

  @override
  String get commentsNoticeReplyTitle => 'Bagong reply sa komento';

  @override
  String commentsNoticeReply(String name) {
    return 'Nag-reply si $name sa komento mo';
  }

  @override
  String get commentsNoticeWarningTitle => 'May natanggap kang babala';

  @override
  String get commentsNoticeWarning => 'Mag-isip muna bago mag-comment';

  @override
  String get commentsNoticeUpdateTitle => 'Update mula sa Dantotsu';

  @override
  String get barcodeTitle => 'Mag-scan ng barcode';

  @override
  String get barcodeTooltip =>
      'Maghanap ng manga o novel gamit ang barcode nito';

  @override
  String get barcodeIntro =>
      'Itutok ang camera sa barcode sa likod ng volume, o i-type ang ISBN nito.';

  @override
  String get barcodeIntroManual =>
      'I-type ang ISBN na nakaimprenta sa ibabaw ng barcode sa likod ng volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Hindi valid na ISBN iyan';

  @override
  String barcodeNotFound(String isbn) {
    return 'Walang nahanap na libro para sa $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Hindi available ang camera. I-allow ang camera access o i-type na lang ang ISBN.';

  @override
  String get themesTitle => 'Mga opening & ending';

  @override
  String get themesPlayVideo => 'I-play ang video';

  @override
  String get themesPlayAudio => 'Audio lang ang i-play';

  @override
  String get themesOpenSite => 'Buksan sa AnimeThemes';

  @override
  String get themesCredit => 'Mga theme mula sa AnimeThemes';

  @override
  String get themesVersions => 'Mga version';

  @override
  String get sauceTitle => 'Hanapin ang source';

  @override
  String get sauceIntro =>
      'Mag-upload ng manga page o artwork, o i-paste ang link nito, para malaman kung saan galing.';

  @override
  String get sauceKeyTitle => 'SauceNAO API key';

  @override
  String get sauceKeyHint => 'Optional, pinapataas ang daily search limit';

  @override
  String get sauceKeyDesc => 'Kumuha ng libreng key sa saucenao.com/user.php';

  @override
  String get sauceOpen => 'Buksan ang source';

  @override
  String get sauceCredit => 'Image search ng SauceNAO';

  @override
  String get sauceEmpty => 'Walang nahanap na tugma';

  @override
  String get sauceTooltip => 'Hanapin ang source ng manga page o artwork';

  @override
  String get trendzTitle => 'Mga anime chart';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Mga babaeng karakter';

  @override
  String get trendzMale => 'Mga lalaking karakter';

  @override
  String get trendzCouple => 'Mga couple';

  @override
  String get trendzCredit => 'Mga weekly chart ng AniTrendz';

  @override
  String get trendzNew => 'BAGO';

  @override
  String get trendzEmpty => 'Walang laman ang chart';

  @override
  String get shareCard => 'Share card';

  @override
  String get shareCardList => 'I-share ang list card';

  @override
  String get shareCardSaved => 'Na-save ang card';

  @override
  String get shareCardFailed => 'Hindi magawa ang card';

  @override
  String get shareCardListEmpty => 'Wala pang maishare sa listahan mo';

  @override
  String get shareCardTop => 'Mga top pick ko';

  @override
  String themesEpisodes(String eps) {
    return 'Mga episode: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% tugma';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Linggo $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count boto';
  }

  @override
  String trendzPeak(String rank) {
    return 'Peak #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count linggo sa top ten';
  }

  @override
  String get imageSearchTitle => 'Search gamit ang image';

  @override
  String get imageSearchTooltip => 'Maghanap ng anime gamit ang screenshot';

  @override
  String get imageSearchIntro =>
      'Pumili ng screenshot o mag-paste ng image link at hahanapin ng trace.moe ang episode at eksaktong sandali kung saan ito galing.';

  @override
  String get imageSearchPick => 'Pumili ng image';

  @override
  String get imageSearchLinkHint => 'Mag-paste ng image link';

  @override
  String get imageSearchGo => 'Maghanap';

  @override
  String get imageSearchEmpty => 'Walang nahanap na tugma';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episode $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'sa $time';
  }

  @override
  String get imageSearchPreview => 'Preview clip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% tugma';
  }

  @override
  String get imageSearchCredit => 'Powered by trace.moe';

  @override
  String get imageSearchOpenFailed => 'Hindi mabuksan ang title na ito';

  @override
  String get groups => 'Mga grupo';

  @override
  String get groupsYours => 'Mga grupo mo';

  @override
  String get groupsPopular => 'Sikat';

  @override
  String get groupsNew => 'Bago';

  @override
  String get groupsFeatured => 'Featured';

  @override
  String get groupsSearch => 'Maghanap ng grupo';

  @override
  String get groupsAll => 'Lahat';

  @override
  String get groupsEmpty => 'Walang nahanap na grupo';

  @override
  String get groupsEmptyYours => 'Wala ka pang sinalihang grupo';

  @override
  String get groupsSignIn =>
      'Mag-sign in para makita ang mga grupong sinalihan mo';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count miyembro',
      one: '1 miyembro',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Sumali';

  @override
  String get groupsJoined => 'Sumali na';

  @override
  String get groupsLeave => 'Umalis sa grupo';

  @override
  String get groupsLeaveAsk =>
      'Hindi mo na makikita sa feed mo ang mga post ng grupong ito.';

  @override
  String get groupsJoinFailed =>
      'Hindi makasali sa grupong ito, baka invite only';

  @override
  String get groupsLeaveFailed => 'Hindi makaalis sa grupong ito';

  @override
  String get groupsPosts => 'Mga post';

  @override
  String get groupsMembersTab => 'Mga miyembro';

  @override
  String get groupsAbout => 'Tungkol';

  @override
  String get groupsRules => 'Mga rule';

  @override
  String get groupsPrivacyOpen => 'Bukas';

  @override
  String get groupsPrivacyRestricted => 'Restricted';

  @override
  String get groupsPrivacyClosed => 'Sarado';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Hindi ma-load ang grupong ito';

  @override
  String get groupsNewPost => 'Mag-post sa grupo';

  @override
  String get groupsPostHint => 'Magbahagi ng kahit ano sa grupo';

  @override
  String get groupsOpenInBrowser => 'Buksan sa browser';

  @override
  String get groupsCategory => 'Kategorya';

  @override
  String get groupsLanguage => 'Wika';

  @override
  String get groupsCreated => 'Ginawa';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leader',
      one: '1 leader',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacy';

  @override
  String get notificationsAll => 'Lahat';

  @override
  String get notificationsAiring => 'Umeere';

  @override
  String get notificationsMedia => 'Mga bagong title';

  @override
  String get notificationsReplies => 'Mga reply';

  @override
  String get notificationsMentions => 'Mga mention';

  @override
  String get notificationsMessages => 'Mga mensahe';

  @override
  String get notificationsLikes => 'Mga like';

  @override
  String get notificationsFollows => 'Mga follow';

  @override
  String get notificationsNoServices =>
      'Walang naka-sign in na service na may notification';

  @override
  String get notificationsNoServicesMessage =>
      'Mag-sign in sa service na nagpapadala ng notification at dito lalabas ang mga iyon.';

  @override
  String get notificationsEmptyKind => 'Wala pa sa kategoryang ito';

  @override
  String get notificationsCommentsEmpty => 'Walang notification ng komento';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Dito lalabas ang mga reply sa mga komento mo at mga anunsyo mula sa Dantotsu.';

  @override
  String get notificationsSettings => 'Settings ng notification';

  @override
  String get notificationsPollTitle => 'Tingnan kung may bagong notification';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Kada $minutes minuto habang bukas ang app';
  }

  @override
  String get notificationsNotifyAbout => 'I-notify ako tungkol sa';

  @override
  String get notificationsCommentsHeader => 'Mga notification ng komento';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Magpakita ng system notification para sa bawat hindi pa nababasang $service notification habang tumatakbo ang app.';
  }

  @override
  String get notificationsTestSent => 'Naipadala ang test notification';

  @override
  String get notificationsTestDenied =>
      'Hindi pinapayagan ang mga notification para sa Dartotsu. I-on ang mga ito sa system settings.';

  @override
  String get notificationsTestHint =>
      'Pindutin nang matagal para magpadala ng test notification';

  @override
  String get notificationsTestSample => 'Ito ay isang test notification';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return 'Nag-reply si $name sa komento mo sa $media';
  }

  @override
  String get imageSearchNotLink => 'Mukhang hindi iyan link';

  @override
  String get imageSearchQuota => 'Lampas na sa search quota';

  @override
  String get imageSearchBusy =>
      'Masyadong maraming request, subukan ulit mamaya';

  @override
  String imageSearchFailed(int code) {
    return 'Pumalya ang search ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count bagong notification';
  }

  @override
  String get reactionsTitle => 'Mga reaksyon';

  @override
  String get reactionsNeedEntry =>
      'Idagdag muna ang title na ito sa listahan mo bago mag-react';

  @override
  String get reactionsAdd => 'Magdagdag ng reaksyon';

  @override
  String get reactionsHint => 'Ano sa tingin mo? (maikli at walang spoiler)';

  @override
  String get reactionsPost => 'I-post';

  @override
  String get reactionsFailed => 'Hindi ma-update ang reaksyon';

  @override
  String get settingsWatch => 'Manood & magbasa';

  @override
  String get settingsWatchDesc =>
      'Mga listahan ng episode, source matching at detalye ng episode';

  @override
  String get watchSettingsLayout => 'Listahan ng episode';

  @override
  String get watchSettingsSources => 'Mga source';

  @override
  String get watchSettingsMetadata => 'Mga detalye ng episode';

  @override
  String get watchLayout => 'Layout';

  @override
  String get watchListView => 'Listahan';

  @override
  String get watchGridView => 'Grid';

  @override
  String get watchCompactView => 'Compact';

  @override
  String get watchDefaultLayoutDesc =>
      'Kung paano inaayos ang mga episode at chapter hangga\'t hindi mo binabago para sa isang title';

  @override
  String get watchChunkSize => 'Laki ng range';

  @override
  String get watchChunkSizeDesc =>
      'Ilang episode o chapter ang laman ng bawat range tab';

  @override
  String get watchShowDescription => 'Ipakita ang mga description';

  @override
  String get watchShowDescriptionDesc =>
      'Ipakita ang buod ng episode sa ilalim ng bawat title sa list layout';

  @override
  String get watchShowFiller => 'Ipakita ang mga filler episode';

  @override
  String get watchShowFillerDesc =>
      'I-off para itago ang mga episode na naka-mark na filler';

  @override
  String get watchBlurUnwatched => 'Itago ang mga spoiler thumbnail';

  @override
  String get watchBlurUnwatchedDesc =>
      'I-blur ang thumbnail ng mga episode na hindi mo pa napapanood';

  @override
  String get watchResumeShelf => 'Resume shelf';

  @override
  String get watchResumeShelfDesc => 'Ipakita ang Resume row sa Home';

  @override
  String get watchMarkOnLongPress =>
      'Pindutin nang matagal para i-mark ang progress';

  @override
  String get watchMarkOnLongPressDesc =>
      'Pindutin nang matagal ang episode o chapter para i-mark na napanood o hindi pa';

  @override
  String get watchMatching => 'Source matching';

  @override
  String get watchMatchingDesc =>
      'Kinukuha ng Closest ang pinakamagandang search result. Tinatanggap lang ng Exact only ang halos magkaparehong title at ikaw na ang pipili sa iba.';

  @override
  String get watchMatchClosest => 'Pinakamalapit na tugma';

  @override
  String get watchMatchExact => 'Eksaktong tugma lang';

  @override
  String get watchMetadataDesc =>
      'Kung saan galing ang mga title ng episode, buod, thumbnail, petsa ng pagpapalabas at filler flag. I-drag para itakda ang priority; ang unang source na may value ang masusunod.';

  @override
  String get watchMetaAniZipDesc =>
      'Mga title ng episode, buod, still at petsa ng pagpapalabas';

  @override
  String get watchMetaKitsuDesc =>
      'Mga title ng episode, description at thumbnail';

  @override
  String get watchMetaSimklDesc =>
      'Mga title ng episode, description, still at petsa ng pagpapalabas';

  @override
  String get watchMetaAniListDesc =>
      'Mga title ng streaming episode, thumbnail at airing schedule';

  @override
  String get watchMetaTenraiDesc =>
      'Mga title ng episode sa MyAnimeList, petsa ng pagpapalabas, filler at recap flag sa pamamagitan ng Tenrai';

  @override
  String get watchClearMetadata => 'I-refresh ang detalye ng episode';

  @override
  String get watchClearMetadataDesc =>
      'Kalimutan ang naka-cache na detalye ng episode para ma-fetch ulit';

  @override
  String get watchMetadataCleared => 'Fe-fetch ulit ang detalye ng episode';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Episode',
      one: '1 Episode',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Chapter',
      one: '1 Chapter',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episode $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Chapter $number';
  }

  @override
  String get watchSearching => 'Naghahanap…';

  @override
  String watchSearchingFor(String term) {
    return 'Naghahanap: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Napili: $title';
  }

  @override
  String watchFound(String title) {
    return 'Nahanap: $title';
  }

  @override
  String get watchNothingFound => 'Walang nahanap sa source na ito';

  @override
  String get watchSearchFailed => 'Pumalya ang paghahanap sa source';

  @override
  String get watchLoadFailed => 'Hindi ma-load ang listahan';

  @override
  String get watchSignInToTrack => 'Mag-sign in para ma-track ang progress mo';

  @override
  String watchInstallSource(String action) {
    return 'Mag-install ng extension para makapagsimulang $action';
  }

  @override
  String get watchSourceMissing => 'Hindi naka-install ang source na ito';

  @override
  String get watchWrongTitle => 'Maling title?';

  @override
  String get watchSearchAgain => 'Maghanap ulit';

  @override
  String watchSearchSource(String source) {
    return 'Maghanap sa $source';
  }

  @override
  String get watchSource => 'Source';

  @override
  String get watchOptions => 'Mga opsyon';

  @override
  String get watchReverse => 'Baligtarin ang order';

  @override
  String get watchScanlators => 'Mga grupo';

  @override
  String get watchResetOptions => 'I-reset ang mga opsyong ito';

  @override
  String get watchContinue => 'Magpatuloy';

  @override
  String get watchStart => 'Simulan';

  @override
  String get watchPlay => 'I-play';

  @override
  String get watchRead => 'Basahin';

  @override
  String get watchMarkWatched => 'I-mark na napanood';

  @override
  String get watchMarkUnwatched => 'I-mark na hindi pa napapanood';

  @override
  String get watchMarkRead => 'I-mark na nabasa';

  @override
  String get watchMarkUnread => 'I-mark na hindi pa nababasa';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Walang nahanap na episode';

  @override
  String get watchNoChapters => 'Walang nahanap na chapter';

  @override
  String get watchSourceTools => 'Mga tool ng source';

  @override
  String get watchSourceSettings => 'Settings ng source';

  @override
  String get watchOpenWebView => 'Buksan sa web view';

  @override
  String get watchOpenWebViewDesc =>
      'Lutasin ang Cloudflare check o mag-log in; shared ang mga cookie sa mga request ng source';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookie ang naka-save para sa $host',
      one: '1 cookie ang naka-save para sa $host',
      zero: 'Walang naka-save na cookie para sa $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Aktibo ang Cloudflare clearance, $time';
  }

  @override
  String get watchClearanceMissing => 'Walang Cloudflare clearance cookie';

  @override
  String get watchClearanceSession => 'tatagal hanggang magsara ang app';

  @override
  String get watchAgentShared =>
      'Gumagamit ang mga request ng user agent ng web view, na chine-check ng Cloudflare';

  @override
  String get watchAgentCustom =>
      'May naka-set na custom user agent, kaya baka tanggihan ang Cloudflare clearance mula sa web view';

  @override
  String get watchTestConnection => 'I-test ang koneksyon';

  @override
  String get watchSolveChallenge => 'Lutasin';

  @override
  String watchProbeOk(int code) {
    return 'Naaabot (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Humihingi pa rin ng check ang Cloudflare';

  @override
  String watchProbeBlocked(int code) {
    return 'Na-block ng site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Hindi maabot ang site';

  @override
  String get watchClearCookies => 'I-clear ang mga cookie para sa site na ito';

  @override
  String get watchCookiesCleared => 'Na-clear ang mga cookie';

  @override
  String get watchMetaSource => 'Detalye ng episode mula sa';

  @override
  String get watchMetaAuto => 'Automatic';

  @override
  String get watchMetaOff => 'Off';

  @override
  String get playerSettingsTitle => 'Settings ng player';

  @override
  String get playerSectionPlayback => 'Playback';

  @override
  String get playerSectionSkip => 'Pag-skip';

  @override
  String get playerSectionGestures => 'Mga kontrol';

  @override
  String get playerSectionSubtitles => 'Mga subtitle';

  @override
  String get playerSectionShaders => 'Mga shader';

  @override
  String get playerSectionEngine => 'Engine';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Bilis ng playback';

  @override
  String get playerCursedSpeed => 'Dagdag na bilis';

  @override
  String get playerCursedSpeedDesc =>
      'Magdagdag ng mga bilis hanggang 10x sa listahan';

  @override
  String get playerResize => 'Resize mode';

  @override
  String get playerFitFit => 'Fit';

  @override
  String get playerFitCover => 'Cover';

  @override
  String get playerFitStretch => 'Stretch';

  @override
  String get playerSkipDuration => 'Haba ng skip button';

  @override
  String get playerSkipDurationDesc =>
      'Segundong lalaktawan ng skip button sa labas ng mga opening at ending';

  @override
  String get playerSeekDuration => 'Double tap seek';

  @override
  String get playerSeekDurationDesc =>
      'Segundong lalaktawan sa double tap o arrow key';

  @override
  String get playerAutoPlay => 'Awtomatikong i-play ang susunod';

  @override
  String get playerAutoPlayDesc =>
      'Simulan ang susunod na episode kapag natapos ang kasalukuyan';

  @override
  String get playerResume => 'Ituloy kung saan ka tumigil';

  @override
  String get playerResumeDesc =>
      'Ituloy ang episode mula sa huling posisyon nito';

  @override
  String get playerOrientation => 'Orientation';

  @override
  String get playerOrientationAuto => 'Sundan ang device';

  @override
  String get playerOrientationLandscape => 'Landscape';

  @override
  String get playerOrientationPortrait => 'Portrait';

  @override
  String get playerAutoSkipOpening => 'I-skip ang mga opening';

  @override
  String get playerAutoSkipEnding => 'I-skip ang mga ending';

  @override
  String get playerAutoSkipRecap => 'I-skip ang mga recap';

  @override
  String get playerAutoSkipDesc =>
      'Lumaktaw agad pagkasimula nito, gamit ang AniSkip at mga timestamp ng stream';

  @override
  String get playerSkipOnce => 'Isang beses lang mag-skip';

  @override
  String get playerSkipOnceDesc =>
      'Huwag nang laktawan ulit ang parehong parte kung mag-seek ka pabalik dito';

  @override
  String get playerAdjustBrightness => 'Brightness gesture';

  @override
  String get playerAdjustBrightnessDesc =>
      'Mag-swipe pataas at pababa sa kanang kalahati ng screen';

  @override
  String get playerAdjustVolume => 'Volume gesture';

  @override
  String get playerAdjustVolumeDesc =>
      'Mag-swipe pataas at pababa sa kaliwang kalahati ng screen';

  @override
  String get playerHoldToSpeed => 'Hawakan para bumilis';

  @override
  String get playerHoldToSpeedDesc =>
      'Pindutin at hawakan ang video para mas bumilis ang play, mag-drag pagilid para baguhin ang bilis';

  @override
  String get playerThumbless => 'Mas makapal na seek bar';

  @override
  String get playerThumblessDesc => 'Makapal na bar na walang thumb';

  @override
  String get playerShowSubtitles => 'Ipakita ang mga subtitle';

  @override
  String get playerShowSubtitlesDesc =>
      'I-off para itago ang lahat ng subtitle track';

  @override
  String get playerSubtitleLanguage => 'Gustong wika ng subtitle';

  @override
  String get playerSubtitleSize => 'Laki ng subtitle';

  @override
  String get playerSubtitleWeight => 'Bigat ng subtitle';

  @override
  String get playerSubtitleBottom => 'Bottom padding ng subtitle';

  @override
  String get playerSubtitleFont => 'Font ng subtitle';

  @override
  String get playerSubtitleColor => 'Kulay ng subtitle';

  @override
  String get playerSubtitleBackground => 'Background ng subtitle';

  @override
  String get playerSubtitleOutline => 'Outline ng subtitle';

  @override
  String get playerLibass => 'Gamitin ang libass';

  @override
  String get playerLibassDesc =>
      'I-render ang mga styled na .ass subtitle. Hindi na ia-apply ang laki, kulay at font sa itaas';

  @override
  String get playerShaders => 'Mga shader';

  @override
  String get playerShadersEnable => 'I-enable ang mga shader';

  @override
  String get playerShadersEnableDesc =>
      'I-upscale at linisin ang picture gamit ang mga GLSL shader tulad ng Anime4K';

  @override
  String get playerShadersOff => 'Naka-off ang mga shader';

  @override
  String get playerShadersMissing => 'Hindi naka-install ang Anime4K';

  @override
  String get playerShadersMissingDesc =>
      'I-download ang Anime4K shader pack (mga 0.8 MB) para magamit ang mga built-in mode.';

  @override
  String get playerShadersDownload => 'I-download ang Anime4K';

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
  String get playerShadersPreview => 'I-preview sa frame na ito';

  @override
  String get playerShadersUse => 'Gamitin ito';

  @override
  String get playerPicture => 'Picture';

  @override
  String get playerColors => 'Mga kulay';

  @override
  String get playerColorDefault => 'Default';

  @override
  String get playerColorVivid => 'Vivid';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Soft';

  @override
  String get playerColorCinematic => 'Cinematic';

  @override
  String get playerColorBright => 'Bright';

  @override
  String get playerColorNight => 'Night';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Custom';

  @override
  String get playerColorBrightness => 'Brightness';

  @override
  String get playerColorContrast => 'Contrast';

  @override
  String get playerColorSaturation => 'Saturation';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'I-reset';

  @override
  String get playerColorAdjust => 'I-adjust';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed =>
      'Hindi makakuha ng frame para sa preview';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Mga shader mo';

  @override
  String get playerShadersCustom => 'Mga custom shader';

  @override
  String get playerShadersImport => 'Mag-import ng .glsl';

  @override
  String get playerShadersNone =>
      'Mag-import ng sarili mong .glsl o .hook file at lagyan ng check para i-chain ang mga ito';

  @override
  String get playerShadersBadFile => 'Pumili ng .glsl o .hook shader file';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (safe)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Video output';

  @override
  String get playerAudioChannels => 'Mga audio channel';

  @override
  String get playerBuffer => 'Laki ng buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memorya na pwedeng gamitin ng player para i-buffer ang stream';

  @override
  String get playerUseMpvConf => 'Gamitin ang mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'I-apply ang mga opsyon sa mpv.conf mo kapag nagsimula ang playback';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'I-edit ang mpv configuration';

  @override
  String get playerMpvConfDesc =>
      'Isang opsyon kada linya, tulad ng --hwdec=auto sa karaniwang mpv.conf. Hindi pinapansin ang mga profile na nasa [bracket].';

  @override
  String get playerMpvConfSaved => 'Na-save ang mpv.conf';

  @override
  String get playerUseScripts => 'Gamitin ang mga mpv script';

  @override
  String get playerUseScriptsDesc =>
      'I-load ang mga plugin mula sa scripts folder. Kailangan nila ng libmpv build na may Lua o JavaScript support';

  @override
  String get playerScripts => 'Mga mpv script';

  @override
  String get playerScriptsManage =>
      'Magdagdag, mag-alis at mag-switch ng mga plugin';

  @override
  String get playerScriptsAdd => 'Magdagdag ng script';

  @override
  String get playerScriptsDesc =>
      'Nilo-load kapag nagsimula ang playback ang mga Lua, JavaScript at native plugin na nakalagay dito.';

  @override
  String get playerScriptsNone => 'Wala pang script';

  @override
  String get playerScriptsBadFile => 'Pumili ng .lua, .js o native plugin file';

  @override
  String get playerTuning => 'Advanced na video tuning';

  @override
  String get playerTuningDesc =>
      'I-override ang sync, caching, scaling at tone mapping. Maaaring makasira sa playback ang maling value';

  @override
  String get playerVideoSync => 'Video sync';

  @override
  String get playerInterpolation => 'Frame interpolation';

  @override
  String get playerInterpolationDesc =>
      'Smooth na galaw, kailangan ng display-resample sync';

  @override
  String get playerPitch => 'Pitch correction';

  @override
  String get playerPitchDesc => 'Panatilihing natural ang boses sa ibang bilis';

  @override
  String get playerCacheSeconds => 'Cache (segundo)';

  @override
  String get playerReadahead => 'Read ahead (segundo)';

  @override
  String get playerThreads => 'Mga decoder thread';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Bawasan ang colour banding sa mga gradient';

  @override
  String get playerDebandIterations => 'Mga iteration ng deband';

  @override
  String get playerDebandThreshold => 'Threshold ng deband';

  @override
  String get playerCorrectDownscaling => 'Tamang downscaling';

  @override
  String get playerSigmoid => 'Sigmoid upscaling';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Chroma upscaler';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Target peak';

  @override
  String get playerOpenFiles => 'Magbukas ng mga video file';

  @override
  String get playerOpenFilesDesc =>
      'Mag-play ng mga file mula sa device na ito';

  @override
  String get playerOpenFolder => 'Magbukas ng folder';

  @override
  String get playerOpenFolderDesc =>
      'I-play bilang playlist ang bawat video sa isang folder';

  @override
  String get playerNetworkStream => 'Network stream';

  @override
  String get playerNetworkStreamDesc =>
      'Magbukas ng direktang video o HLS link';

  @override
  String get playerStreamUrl => 'Stream URL';

  @override
  String get playerStreamReferer => 'Referer (optional)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'I-stream ang magnet link o .torrent file';

  @override
  String get playerMagnetLink => 'Magnet link o torrent URL';

  @override
  String get playerPickTorrent => 'Pumili ng .torrent file';

  @override
  String get playerTorrentMissing =>
      'I-install muna ang torrent addon sa Settings > Addons';

  @override
  String get playerNoVideos => 'Walang nahanap na mapapanood na video';

  @override
  String get playerReset => 'I-reset ang settings ng player';

  @override
  String get playerResetDesc => 'Ibalik sa default ang bawat opsyon ng player';

  @override
  String get playerResetConfirm => 'I-reset ang lahat ng settings ng player?';

  @override
  String get playerResetDone => 'Na-reset ang settings ng player';

  @override
  String get playerQuality => 'Quality';

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
  String get playerStreams => 'Mga stream';

  @override
  String get playerAutoSelect => 'Auto select ng stream';

  @override
  String get playerAutoSelectDesc =>
      'Piliin ang stream na pinakakahawig ng huli mong pinili para sa title na ito';

  @override
  String get playerLoadingStreams => 'Naghahanap ng mga stream…';

  @override
  String get playerNoStreams => 'Walang stream ang episode na ito';

  @override
  String get playerNoStreamsTitle => 'Walang nahanap na stream';

  @override
  String get playerFailed => 'Pumalya ang playback';

  @override
  String get playerTorrentNeeded => 'Torrent ang stream na ito';

  @override
  String get playerTorrentNeededDesc =>
      'I-install ang torrent addon para makapag-play ng mga magnet link at .torrent file';

  @override
  String get playerOpenAddons => 'Buksan ang mga addon';

  @override
  String get playerTryAnotherStream => 'Subukan ang ibang stream';

  @override
  String get playerEpisodes => 'Mga episode';

  @override
  String get playerLock => 'I-lock ang mga kontrol';

  @override
  String get playerFullscreen => 'Fullscreen';

  @override
  String get readerChapters => 'Mga chapter';

  @override
  String get readerSettingsTitle => 'Settings ng reader';

  @override
  String get readerPreviousChapter => 'Nakaraang chapter';

  @override
  String get readerNextChapter => 'Susunod na chapter';

  @override
  String get readerFirstChapter => 'Ito ang unang chapter';

  @override
  String get readerLastChapter => 'Updated ka na';

  @override
  String get readerFailed => 'Hindi mabuksan ang chapter na ito';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Walang text ang chapter na ito';

  @override
  String get readerPerTitle => 'Para sa title na ito lang';

  @override
  String get readerPerTitleDesc =>
      'Panatilihin ang mga reader settings na ito para sa title na ito lang';

  @override
  String get readerSectionReading => 'Pagbabasa';

  @override
  String get readerSectionControls => 'Mga kontrol';

  @override
  String get readerSectionDisplay => 'Display';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Reading mode';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Kanan pakaliwa';

  @override
  String get readerModeLtr => 'Kaliwa pakanan';

  @override
  String get readerModeVertical => 'Vertical na pages';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Tuloy-tuloy na scroll';

  @override
  String get readerScale => 'Image scale';

  @override
  String get readerScaleFit => 'Fit screen';

  @override
  String get readerScaleWidth => 'Fit width';

  @override
  String get readerScaleHeight => 'Fit height';

  @override
  String get readerScaleOriginal => 'Orihinal na laki';

  @override
  String get readerScaleSmart => 'Smart fit';

  @override
  String get readerDoublePage => 'Double pages';

  @override
  String get readerDoublePageDesc =>
      'Magpakita ng dalawang page nang magkatabi sa landscape';

  @override
  String get readerDoubleTapZoom => 'Double tap para mag-zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Mag-zoom in at out sa page gamit ang double tap';

  @override
  String get readerAnimate => 'Animation ng page';

  @override
  String get readerAnimateDesc => 'I-animate ang pagpapalit ng page';

  @override
  String get readerSidePadding => 'Side padding';

  @override
  String get readerSidePaddingDesc =>
      'Espasyo sa tabi ng mga page sa porsyento';

  @override
  String get readerPageGap => 'Gap ng page';

  @override
  String get readerPageGapDesc => 'Espasyo sa pagitan ng mga page';

  @override
  String get readerAutoNext => 'Magpatuloy sa susunod na chapter';

  @override
  String get readerAutoNextDesc =>
      'I-load ang susunod na chapter habang binabasa mo ang dulo nito';

  @override
  String get readerPreload => 'I-preload ang mga page';

  @override
  String get readerPreloadDesc => 'Ilang page ang ida-download nang maaga';

  @override
  String get readerTapZones => 'Mga tap zone';

  @override
  String get readerTapDefault => 'Default';

  @override
  String get readerTapLShaped => 'L-shaped';

  @override
  String get readerTapKindle => 'Kindle-like';

  @override
  String get readerTapEdge => 'Mga gilid lang';

  @override
  String get readerTapOff => 'Naka-disable';

  @override
  String get readerInvertTaps => 'Baligtarin ang mga tap zone';

  @override
  String get readerInvertTapsDesc =>
      'Palitan ang mga area ng nakaraan at susunod';

  @override
  String get readerBackground => 'Background';

  @override
  String get readerBackgroundBlack => 'Itim';

  @override
  String get readerBackgroundGray => 'Gray';

  @override
  String get readerBackgroundWhite => 'Puti';

  @override
  String get readerBackgroundTheme => 'Theme ng app';

  @override
  String get readerFilter => 'Color filter';

  @override
  String get readerFilterNone => 'Wala';

  @override
  String get readerFilterGrayscale => 'Grayscale';

  @override
  String get readerFilterInvert => 'Invert';

  @override
  String get readerFilterSepia => 'Sepia';

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
  String get readerDim => 'Dim';

  @override
  String get readerDimDesc => 'Padilimin ang mga page';

  @override
  String get readerPageNumber => 'Numero ng page';

  @override
  String get readerPageNumberDesc =>
      'Ipakita ang numero ng page habang nagbabasa';

  @override
  String get readerFullscreen => 'Fullscreen';

  @override
  String get readerFullscreenDesc => 'Itago ang mga system bar';

  @override
  String get readerCropBorders => 'I-crop ang mga gilid';

  @override
  String get readerCropBordersDesc =>
      'Alisin ang blangkong puti o itim na margin sa mga page';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Pang-turn ng page ang volume keys';

  @override
  String get readerVolumeKeysDesc =>
      'Volume down para sa susunod, volume up para sa nakaraan';

  @override
  String get readerBookmarks => 'Mga bookmark';

  @override
  String get readerBookmarkAdd => 'Magdagdag ng bookmark';

  @override
  String get readerBookmarkRemove => 'Alisin ang bookmark';

  @override
  String get readerBookmarksEmpty => 'Wala pang bookmark';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Page $page sa $total';
  }

  @override
  String get readerAutoScroll => 'Auto scroll';

  @override
  String get readerAutoScrollStop => 'Ihinto ang auto scroll';

  @override
  String get readerAutoScrollSpeed => 'Bilis ng auto scroll';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Gaano kabilis mag-scroll o magpalit ng page nang kusa';

  @override
  String get readerKeepOn => 'Panatilihing naka-on ang screen';

  @override
  String get readerKeepOnDesc =>
      'Pigilan ang pag-off ng screen habang nagbabasa';

  @override
  String get readerOrientation => 'Orientation';

  @override
  String get readerOrientationFree => 'Free';

  @override
  String get readerOrientationPortrait => 'Portrait';

  @override
  String get readerOrientationLandscape => 'Landscape';

  @override
  String get readerSaveProgress => 'I-save ang progress';

  @override
  String get readerSaveProgressDesc =>
      'Tandaan ang page mo at i-mark na nabasa ang mga chapter';

  @override
  String get readerReset => 'I-reset ang reader settings';

  @override
  String get readerResetDesc => 'Ibalik sa default';

  @override
  String get novelSize => 'Laki ng text';

  @override
  String get novelFont => 'Font';

  @override
  String get novelLineHeight => 'Taas ng linya';

  @override
  String get novelParagraph => 'Espasyo ng talata';

  @override
  String get novelMargin => 'Mga margin';

  @override
  String get novelTheme => 'Reader theme';

  @override
  String get novelThemeApp => 'Theme ng app';

  @override
  String get novelThemeLight => 'Light';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Dark';

  @override
  String get novelThemeBlack => 'Black';

  @override
  String get novelJustify => 'I-justify ang text';

  @override
  String get novelJustifyDesc => 'I-align ang text sa magkabilang gilid';

  @override
  String get trackProgressTitle => 'I-save ang progress?';

  @override
  String trackProgressAnime(String name) {
    return 'I-track ang $name sa listahan mo habang nanonood ka? Piliin ang \"This device only\" para manatiling lokal, o Hindi para walang ma-save.';
  }

  @override
  String trackProgressManga(String name) {
    return 'I-track ang $name sa listahan mo kapag natapos mo ang isang chapter? Piliin ang \"This device only\" para manatiling lokal, o Hindi para walang ma-save.';
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
  String get trackProgressYes => 'I-save';

  @override
  String get trackProgressReset =>
      'Na-reset ang save progress prompt para sa uring ito, magtatanong ulit';

  @override
  String get trackProgressNo => 'Hindi';

  @override
  String get trackProgressOff => 'Off';

  @override
  String get trackProgressLocal => 'Sa device na ito lang';

  @override
  String get trackProgressSettingAnime => 'I-track ang anime progress';

  @override
  String get trackProgressSettingManga => 'I-track ang manga at novel progress';

  @override
  String get trackProgressSettingDesc =>
      'Ano ang gagawin kapag nagbukas ka ng episode o nakatapos ng chapter';

  @override
  String get trackProgressAsk => 'Magtanong';

  @override
  String get trackProgressAlways => 'Palagi';

  @override
  String get dantotsuImport => 'Mag-import mula sa Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Magbasa ng Dantotsu settings backup (.ani, o encrypted na .sani)';

  @override
  String get dantotsuPick => 'Pumili ng Dantotsu backup';

  @override
  String get dantotsuNothing => 'Walang puwedeng i-import sa file na ito';

  @override
  String get dantotsuApply => 'I-import ang napili';

  @override
  String dantotsuDone(int done, int total) {
    return 'Na-import ang $done sa $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Mga account';

  @override
  String get dantotsuGroupAppearance => 'Itsura';

  @override
  String get dantotsuGroupExtensions => 'Mga extension';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Player';

  @override
  String get dantotsuAnilist => 'AniList login';

  @override
  String get dantotsuMal => 'MyAnimeList login';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence token';

  @override
  String get dantotsuTheme => 'Theme';

  @override
  String get dantotsuReposAnime => 'Mga repository ng anime extension';

  @override
  String get dantotsuReposManga => 'Mga repository ng manga extension';

  @override
  String get dantotsuReposNovel => 'Mga repository ng novel extension';

  @override
  String get dantotsuUpdates => 'Update check';

  @override
  String get dantotsuComments => 'Mga komento';

  @override
  String get dantotsuActivity => 'AniList notification polling';

  @override
  String get dantotsuDns => 'DNS provider';

  @override
  String get dantotsuPlayer => 'Bilis ng player at mga kulay ng subtitle';

  @override
  String get dantotsuWarning =>
      'May laman na mga login token ang file na ito. Ilihim ito.';

  @override
  String get novelIndent => 'Indent ng mga talata';

  @override
  String get novelIndentDesc => 'Simulan ang bawat talata sa first-line indent';

  @override
  String get novelLetterSpacing => 'Letter spacing';

  @override
  String get novelSectionTranslate => 'Pagsasalin';

  @override
  String get sectionExperimental => 'Experimental';

  @override
  String get kitsuGraphqlDetail => 'Mas mabilis na detail page (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'I-load ang title kasama ang mga karakter, staff at entry mo sa isang request';

  @override
  String get togetherTitle => 'Sabay-sabay manood';

  @override
  String get togetherIntro =>
      'I-paste ang room link na ipinadala ng kaibigan mo. Agad kang sasali at magbubukas ang player kapag nagsimula na silang manood.';

  @override
  String get togetherName => 'Pangalan mo';

  @override
  String get togetherConnecting => 'Kumokonekta…';

  @override
  String get togetherLeave => 'Umalis sa room';

  @override
  String get togetherYou => 'Ikaw';

  @override
  String get togetherNoChat => 'Wala pang mensahe';

  @override
  String get togetherChatHint => 'Mensahe';

  @override
  String get togetherCopyInvite => 'Kopyahin ang invite';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Nakopya ang server at room';

  @override
  String get togetherConnectionLost => 'Nawala ang koneksyon';

  @override
  String togetherConnectedTo(String room) {
    return 'Nakakonekta sa $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Hindi makakonekta: $error';
  }

  @override
  String togetherJoined(String name) {
    return 'Sumali si $name';
  }

  @override
  String togetherLeft(String name) {
    return 'Umalis si $name';
  }

  @override
  String togetherPaused(String name) {
    return 'Nag-pause si $name';
  }

  @override
  String togetherResumed(String name) {
    return 'Nag-resume si $name';
  }

  @override
  String togetherSeeked(String name, String time) {
    return 'Lumaktaw si $name sa $time';
  }

  @override
  String get togetherFollowFailed =>
      'Hindi mabuksan ang episode ng host. Buksan mo na lang mismo.';

  @override
  String get togetherJoinRole => 'Sumali sa room';

  @override
  String get togetherOpenHost => 'Buksan ang episode ng host';

  @override
  String get togetherShowChat => 'Ipakita ang live chat';

  @override
  String get togetherWaitingHost =>
      'Naghihintay na magsimula ng episode ang host';

  @override
  String get togetherRoomLink => 'Room link';

  @override
  String get togetherBadLink => 'Hindi iyan room link';

  @override
  String get togetherHostClosed => 'Isinara ng host ang room';

  @override
  String get togetherNowPlaying => 'Ngayon nagpe-play';

  @override
  String togetherWatchingCount(int count) {
    return '$count ang nanonood';
  }

  @override
  String togetherWantsPause(String user) {
    return 'Gustong mag-pause ni $user';
  }

  @override
  String togetherWantsResume(String user) {
    return 'Gustong mag-resume ni $user';
  }

  @override
  String get togetherChip => 'Magkasama';

  @override
  String get togetherSettingsDesc =>
      'Sumali sa room ng kaibigan gamit ang link';

  @override
  String get novelBilingual => 'Ipakita ang orihinal at pagsasalin';

  @override
  String get novelBilingualDesc =>
      'Ipinapakita ng bawat talata ang orihinal na text na may pagsasalin sa ilalim';

  @override
  String get novelTranslateTo => 'Isalin sa';

  @override
  String get novelTranslateOff => 'Off';

  @override
  String get novelSectionSpeech => 'Text to speech';

  @override
  String get novelSpeechRate => 'Bilis ng speech';

  @override
  String get novelSpeechPitch => 'Pitch ng speech';

  @override
  String get novelSpeak => 'Basahin nang malakas';

  @override
  String get novelSpeakStop => 'Ihinto ang pagbabasa nang malakas';

  @override
  String get novelTranslate => 'Isalin ang chapter';

  @override
  String get novelTranslateShowOriginal => 'Ipakita ang orihinal';

  @override
  String novelTranslateFailed(String error) {
    return 'Pumalya ang pagsasalin: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Hindi available ang text to speech sa device na ito';

  @override
  String get novelSpeechVoice => 'Boses';

  @override
  String get novelSpeechVoiceDefault => 'System default';

  @override
  String get novelSpeakPrevious => 'Nakaraang linya';

  @override
  String get novelSpeakNext => 'Susunod na linya';

  @override
  String get novelTapPaging => 'I-tap ang mga gilid para magpalit ng page';

  @override
  String get novelTapPagingDesc =>
      'I-tap ang kaliwa o kanang bahagi para mag-scroll ng isang page, ang gitna ang nagpapakita ng mga kontrol';

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
    return '$count min na lang';
  }

  @override
  String get novelBold => 'Bold na text';

  @override
  String get novelBoldDesc => 'Gumamit ng mas makapal na weight';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Tapos na ang $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Susunod: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Nakaraan: $chapter';
  }

  @override
  String get readerNoPages => 'Walang page ang chapter na ito';

  @override
  String get readerLoadingPages => 'Nilo-load ang mga page…';

  @override
  String get readerSlowPage => 'Nilo-load pa ang page na ito…';

  @override
  String get readerPageFailed => 'Hindi ma-load ang page na ito';

  @override
  String get playerShowComments => 'Ipakita ang mga komento';

  @override
  String get playerHideComments => 'Itago ang mga komento';

  @override
  String get playerSubtitles => 'Mga subtitle';

  @override
  String get playerSubtitlesOff => 'Naka-off ang mga subtitle';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Magdagdag ng subtitle file';

  @override
  String get playerAddAudio => 'Magdagdag ng audio file';

  @override
  String get playerChapters => 'Mga chapter';

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
  String get playerNoChapters => 'Walang chapter';

  @override
  String get playerTimestamp => 'Timestamp';

  @override
  String get playerAutoPlayDelay => 'Countdown ng susunod na episode';

  @override
  String get playerWatchedAt => 'Bilangin bilang napanood sa';

  @override
  String playerNextIn(int seconds) {
    return 'Susunod na episode sa loob ng ${seconds}s';
  }

  @override
  String get playerPlayNow => 'I-play na ngayon';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: kusang lalaktawan para sa title na ito';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: hindi kusang lalaktawan para sa title na ito';
  }

  @override
  String get playerAudioLanguage => 'Gustong wika ng audio';

  @override
  String get playerLanguageOrderHint =>
      'Paghiwalayin ang mga wika gamit ang kuwit. Ang unang makita ang gagamitin.';

  @override
  String get playerPip => 'Picture in picture';

  @override
  String get playerAutoPip => 'Picture in picture kapag umalis';

  @override
  String get playerAutoPipDesc =>
      'Magpatuloy sa pag-play sa maliit na window kapag umalis ka sa app';

  @override
  String playerAutoPlaying(String title) {
    return 'Susunod na i-play ang $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Hindi ma-install ang mga shader: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Chapter $number';
  }

  @override
  String get playerPerTitle => 'Para sa title na ito lang';

  @override
  String get playerPerTitleDesc =>
      'Panatilihin ang mga opsyong ito para sa title na ito at huwag galawin ang mga default mo';

  @override
  String get playerSwapGestures => 'Ipalit ang gilid ng swipe';

  @override
  String get playerSwapGesturesDesc =>
      'Brightness sa kaliwa at volume sa kanan';

  @override
  String get playerOpenBig => 'Buksan sa malaking view';

  @override
  String get playerOpenBigDesc =>
      'I-start ang player nang fullscreen imbes na may episode list';

  @override
  String get playerPauseOnBlur => 'I-pause kapag wala sa focus';

  @override
  String get playerPauseOnBlurDesc =>
      'Mag-pause kapag natatakpan ang app, tulad ng notification panel, at magpatuloy kapag bumalik ka';

  @override
  String get playerAudioOutput => 'Audio output';

  @override
  String get fontAppDefault => 'Font ng app';

  @override
  String get fontImport => 'Mag-import ng font';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Delay ng subtitle';

  @override
  String get playerAudioDelay => 'Delay ng audio';

  @override
  String get playerDelayReset => 'I-reset';

  @override
  String get playerOnlineSubtitles => 'Mga online subtitle';

  @override
  String get playerOnlineSearchHint => 'Title at episode';

  @override
  String get playerOnlineNone => 'Walang nahanap na subtitle';

  @override
  String playerOnlineFailed(String error) {
    return 'Pumalya ang paghahanap ng subtitle: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Hindi ma-download ang subtitle na ito: $error';
  }

  @override
  String get playerOnlineMatch => 'Tugma sa file na ito';

  @override
  String get playerOnlineEpisode => 'Tugma sa episode';

  @override
  String playerOnlineDownloads(int count) {
    return '$count download';
  }

  @override
  String get playerSeekPreview => 'Seek preview';

  @override
  String get playerSeekPreviewDesc =>
      'Magpakita ng maliit na frame preview sa ibabaw ng seek bar habang nag-i-scrub. Nagbubukas ito ng pangalawang low resolution decoder, kaya gagamit ng dagdag na data sa mga stream.';

  @override
  String get playerSettingsChip => 'Settings';

  @override
  String get playerAudioDevice => 'Audio device';

  @override
  String get settingsDownloads => 'Mga download';

  @override
  String get settingsDownloadsDesc =>
      'Mga offline na episode, queue at offline mode';

  @override
  String get downloadsTitle => 'Mga download';

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
      'Tingnan ang queue at lahat ng naka-save sa device na ito';

  @override
  String get downloadTitle => 'I-download';

  @override
  String get downloadAlready => 'Na-download na o nasa queue';

  @override
  String get downloadPickStream => 'Aling stream ang ida-download?';

  @override
  String get downloadPickSubtitle => 'Aling subtitle ang ida-download?';

  @override
  String get downloadPickAudio => 'Aling audio track ang ida-download?';

  @override
  String get downloadNoAudio => 'Walang dagdag na audio';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Walang subtitle';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'HLS playlist ang stream na ito. Kailangan ng FFmpeg addon para ma-download ito.';

  @override
  String get downloadSourceMissing =>
      'Hindi naka-install ang source para sa episode na ito';

  @override
  String get downloadWaitingConnection => 'Naghihintay ng koneksyon';

  @override
  String get downloadSubtitles => 'Mga subtitle';

  @override
  String get downloadDownloaded => 'Na-download';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Tanggalin ang download';

  @override
  String get downloadCancel => 'Cancel';

  @override
  String get downloadPause => 'I-pause';

  @override
  String get downloadPaused => 'Naka-pause';

  @override
  String get downloadResume => 'Ituloy';

  @override
  String get downloadPauseAll => 'I-pause lahat';

  @override
  String get downloadResumeAll => 'Ituloy lahat';

  @override
  String get downloadQueuedState => 'Naghihintay sa queue';

  @override
  String get downloadResolving => 'Kinukuha ang stream…';

  @override
  String get downloadUsedFallback =>
      'Walang tumutugmang stream, ginamit ang una';

  @override
  String get downloadTabQueue => 'Queue';

  @override
  String get downloadTabDone => 'Tapos na';

  @override
  String get downloadTabFailed => 'Pumalya';

  @override
  String get downloadEmptyQueue => 'Walang dina-download';

  @override
  String get downloadEmptyDone => 'Wala pang na-download';

  @override
  String get downloadEmptyFailed => 'Walang pumalyang download';

  @override
  String get downloadNext => 'Susunod na episode';

  @override
  String downloadNextN(int count) {
    return 'Susunod na $count episode';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Lahat ng hindi pa napapanood ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Range na ito ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Lahat ng episode ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episode ang nasa queue',
      one: '1 episode ang nasa queue',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'Na-download ang $name';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Hindi na-download ang $name';
  }

  @override
  String downloadStorage(String size) {
    return '$size ang gamit ng mga download';
  }

  @override
  String get downloadQueueHeader => 'Queue';

  @override
  String get downloadParallel => 'Sabay-sabay na download';

  @override
  String get downloadParallelDesc =>
      'Magpatakbo ng isang download lang o ilan nang sabay-sabay';

  @override
  String get downloadOneByOne => 'Isa-isa';

  @override
  String get downloadNotifications => 'Mga notification ng download';

  @override
  String get downloadNotificationsDesc =>
      'Live na progress kung sinusuportahan ng system, kung hindi, abiso kapag natapos ang download';

  @override
  String get downloadNotifyLive => 'Live';

  @override
  String get downloadNotifyDone => 'Kapag tapos na';

  @override
  String get downloadNotifyOff => 'Off';

  @override
  String get downloadInfoFile =>
      'Magsulat ng info file sa tabi ng bawat download';

  @override
  String get downloadInfoFileDesc =>
      'Sine-save ang stream, quality, subtitle at skip time bilang maliit na .json file';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Ang Auto ay mag-o-offline lang kapag nagsimula ang app nang walang koneksyon. Ang Always ay mananatiling offline hangga\'t hindi mo binabago.';

  @override
  String get offlineModeOff => 'Off';

  @override
  String get offlineModeAlways => 'Palagi';

  @override
  String get offlineModeOn =>
      'Naka-on ang offline mode. Sine-save dito ang mga pagbabago at ipapadala kapag online ka na ulit.';

  @override
  String get offlineSaved =>
      'Na-save sa device na ito, magsi-sync kapag online ka na';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagbabago ang na-sync',
      one: '1 pagbabago ang na-sync',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pagbabago ang naghihintay mag-sync',
      one: '1 pagbabago ang naghihintay mag-sync',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Mga pagbabagong naghihintay mag-sync';

  @override
  String get offlinePendingNone => 'Walang naghihintay';

  @override
  String get offlineSyncNow => 'I-sync ngayon';

  @override
  String get offlineDiscard => 'Itapon';

  @override
  String get downloadNotOffline =>
      'Hindi pa na-download ang episode na ito, kaya hindi ito available offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Susunod na chapter';

  @override
  String downloadNextChapters(int count) {
    return 'Susunod na $count chapter';
  }

  @override
  String downloadUnread(int count) {
    return 'Lahat ng hindi pa nababasa ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Lahat ng chapter ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total pages';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count pages';
  }

  @override
  String get downloadFfmpegTitle => 'Kailangan ng FFmpeg addon';

  @override
  String get downloadFfmpegBody =>
      'HLS playlist ang stream na ito. Pinagdudugtong ng FFmpeg addon ang mga piraso nito sa iisang mp4 file. Kung wala ito, itatago ang mga piraso sa isang episode folder at doon ipe-play.';

  @override
  String get downloadFfmpegInstall => 'I-install';

  @override
  String get downloadFfmpegInstalling =>
      'Ini-install ang FFmpeg, matagal-tagal ito…';

  @override
  String get downloadFinishing =>
      'Pinagdudugtong ang mga piraso sa iisang file…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total parte';
  }

  @override
  String get downloadTorrentNoFile =>
      'Walang video file na ida-download sa torrent';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Dina-download ang $count item',
      one: 'Dina-download ang 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Tanggalin ang mga napanood nang download';

  @override
  String get downloadAutoDeleteDesc =>
      'Inaalis ang download kapag umabot na ang progress mo sa episode o chapter na iyon';

  @override
  String get downloadConnections => 'Mga koneksyon kada download';

  @override
  String get downloadConnectionsDesc =>
      'Hinahati sa mga parte ang malaking file na sabay-sabay kinukuha. May limit ito sa ilang server.';

  @override
  String get downloadPlayChoice => 'I-play mula sa';

  @override
  String get downloadPlayLocalDesc => 'Ang file na naka-save sa device na ito';

  @override
  String get downloadPlayStream => 'I-stream online';

  @override
  String get downloadPlayStreamDesc => 'I-load ang episode mula sa source';

  @override
  String get offlineFeedTitle => 'Na-download sa device na ito';

  @override
  String get offlineFeedEmpty =>
      'Mag-download ng kahit ano habang online ka at lalabas ito rito';

  @override
  String get offlineEnabled => 'Naka-on ang offline mode';

  @override
  String get offlineDisabled => 'Naka-off ang offline mode';

  @override
  String get downloadReadChoice => 'Basahin mula sa';

  @override
  String get downloadReadLocalDesc =>
      'Ang mga page na naka-save sa device na ito';

  @override
  String get downloadReadOnline => 'Magbasa online';

  @override
  String get downloadReadOnlineDesc => 'I-load ang chapter mula sa source';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Tanggalin ang $name sa device na ito?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Kanselahin ang download ng $name? Matatanggal ang na-download na.';
  }

  @override
  String get downloadFfmpegFolder => 'Panatilihin bilang folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Itapon ang $count pagbabagong hindi pa naipadala? Hindi na ito mababawi.',
      one: 'Itapon ang pagbabagong hindi pa naipadala? Hindi na ito mababawi.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Naghihintay ng Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Naka-pause sa metered na koneksyon';

  @override
  String get downloadWifiOnly => 'Wi-Fi lang';

  @override
  String get downloadWifiOnlyDesc =>
      'Naghihintay ang mga download kapag nasa mobile data ka';

  @override
  String get downloadMetered => 'I-pause sa mga metered na koneksyon';

  @override
  String get downloadMeteredDesc =>
      'Naghihintay din sa Wi-Fi na minarkahan ng device mo bilang metered';

  @override
  String get downloadSpeedLimit => 'Speed limit';

  @override
  String get downloadSpeedLimitDesc =>
      'Nililimitahan ang kabuuang bilis ng download';

  @override
  String get downloadUnlimited => 'Walang limit';

  @override
  String get downloadMoveToTop => 'Ilipat sa itaas';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'Aling file?';

  @override
  String get downloadTorrentAuto => 'Awtomatikong i-match ang episode';

  @override
  String get downloadTorrentLoading => 'Binabasa ang torrent…';

  @override
  String get watchAutoSource => 'Awtomatikong lumipat sa susunod na source';

  @override
  String get watchAutoSourceDesc =>
      'Kung hindi mahanap ng source ang title o hindi mag-load, subukan ang susunod na naka-install na source';

  @override
  String get extensionTest => 'I-test ang mga extension';

  @override
  String get extensionTestCopy =>
      'Kopyahin ang mga pumalya at ang mga log nila';

  @override
  String get extensionTestQuery => 'Search term';

  @override
  String get extensionTestRun => 'Patakbuhin';

  @override
  String get extensionTestStop => 'Ihinto';

  @override
  String get extensionTestNone =>
      'Walang naka-install na extension ng uring ito';

  @override
  String get extensionTestNotRun => 'Hindi pa na-test';

  @override
  String get extensionTestSearch => 'Maghanap';

  @override
  String get extensionTestDetail => 'Mga detalye';

  @override
  String get extensionTestUnits => 'Mga episode / chapter';

  @override
  String get extensionTestLinks => 'Mga stream / page';

  @override
  String extensionTestFailedAt(String step) {
    return 'Pumalya sa $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done sa $total ang na-test · $passed pumasa · $failed pumalya';
  }

  @override
  String get extensionTestCopyLogs => 'Kopyahin lahat kasama ang buong log';

  @override
  String get onboardingFeaturesTitle => 'Lahat ng iyan sa iisang lugar';

  @override
  String get onboardingFeaturesBody =>
      'Lahat ng tina-track, pinapanood at binabasa mo, nang hindi nagpapalipat-lipat ng app.';

  @override
  String get onboardingFeatureTrack => 'I-track lahat';

  @override
  String get onboardingFeatureTrackDesc =>
      'Mga listahan, progress at score sa AniList, MyAnimeList, Simkl, Kitsu at MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Manood at magbasa';

  @override
  String get onboardingFeatureWatchDesc =>
      'Mag-install ng mga extension at mag-stream ng anime o magbasa ng manga at novel mismo sa app.';

  @override
  String get onboardingFeatureOffline => 'Dalhin ito offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Mag-download ng mga episode at chapter, at ituloy lang kahit walang koneksyon.';

  @override
  String get onboardingFeatureSync => 'Panatilihing naka-sync ang mga listahan';

  @override
  String get onboardingFeatureSyncDesc =>
      'I-mirror ang listahan mo sa iba\'t ibang service, o hayaang manalo ang mas nauuna.';

  @override
  String get onboardingServices => 'Gumagana sa';

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
      'Hold and drag a button to move it. Tap one to cut it, move it or hide it';

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
