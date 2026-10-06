// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'අලුත්ම හොඳම ඇප් එක\nඅනිමේ සහ මංගා අනුගමනය කිරීම සඳහා';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Load more';

  @override
  String get login => 'ඉන්ටර්නෙට් පිවිසීම';

  @override
  String get continueAsGuest => 'Continue as guest';

  @override
  String get getStarted => 'Get Started';

  @override
  String get loginWithToken => 'Login with token';

  @override
  String get pasteTokenHint => 'Paste your access token';

  @override
  String loginTo(String service) {
    return '$service වෙත පුරනය වන්න';
  }

  @override
  String get settings => 'සැකසුම්';

  @override
  String get account => 'ගිණුම';

  @override
  String get about => 'ගැටලුව';

  @override
  String get language => 'භාෂාව';

  @override
  String get animationSpeed => 'Animations';

  @override
  String get animationSpeedDesc =>
      'Speed of transitions and entrance effects across the app';

  @override
  String get animationSpeedOff => 'Off';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අනුවාද',
      one: 'අනුවාදය',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Unknown Source';

  @override
  String get install => 'Install';

  @override
  String get update => 'Update';

  @override
  String get uninstall => 'Uninstall';

  @override
  String get installFailed => 'Install failed';

  @override
  String get updateFailed => 'Update failed';

  @override
  String get noSourceSettings => 'Source doesn\'t have any settings';

  @override
  String get addPluginRepository => 'Add Plugin Repository';

  @override
  String get pluginIndexUrlHint => 'Plugin index URL';

  @override
  String get addRepository => 'Add Repository';

  @override
  String get pluginRepoUpdated => 'Plugin repository updated';

  @override
  String get pluginRepoUpdateFailed => 'Failed to refresh plugin repository';

  @override
  String get ok => 'හරි';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get yes => 'ඔව්';

  @override
  String get no => 'නැත';

  @override
  String get save => 'Save';

  @override
  String get reset => 'Reset';

  @override
  String get clear => 'Clear';

  @override
  String get test => 'Test';

  @override
  String get testing => 'Testing…';

  @override
  String get resolving => 'Resolving…';

  @override
  String get none => 'None';

  @override
  String get selectMediaService => 'මාධ්ය සේවාව තෝරන්න';

  @override
  String get pickColor => 'රටාවක් තෝරන්න';

  @override
  String get colorPickerDefault => 'පෙරනිමි';

  @override
  String get colorPickerCustom => 'අභිරුචි';

  @override
  String get utd => 'ඉහළින් පහළට';

  @override
  String get dtu => 'Down To Up';

  @override
  String get rtl => 'Right To Left';

  @override
  String get ltr => 'Left To Right';

  @override
  String get searchSettings => 'Search settings';

  @override
  String nothingMatches(String query) {
    return 'Nothing matches \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Search $category';
  }

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsAppearanceDesc => 'Theme, colours, glass mode';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsGeneralDesc => 'Language and behaviour';

  @override
  String get settingsAccountDesc => 'Tracking service and sign-in';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get settingsUpdatesDesc => 'Release channel and checks';

  @override
  String get settingsNetwork => 'Network';

  @override
  String get settingsNetworkDesc => 'User-Agent, DNS, proxy, cookies';

  @override
  String get settingsAboutDesc => 'Version, links, support';

  @override
  String get amoledBlack => 'AMOLED black';

  @override
  String get amoledBlackDesc => 'Pure black surfaces on dark mode';

  @override
  String get glassMode => 'Glass mode';

  @override
  String get glassModeDesc => 'Frosted surfaces over your library art';

  @override
  String get settingsExtensionsDesc =>
      'Source managers, repositories and extension options';

  @override
  String get settingsAddons => 'Addons';

  @override
  String get settingsAddonsDesc =>
      'Optional components such as the torrent server';

  @override
  String get customPath => 'අභිරුචි මාර්ගය';

  @override
  String get customPathDesc => 'Where app data is kept. Long-press to reset';

  @override
  String get selectDirectory => 'නාමාවලියක් තෝරන්න';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get backupAndRestore => 'Backup and restore';

  @override
  String get backupAndRestoreDesc => 'Save or load your preferences';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get loadExtensionsIcon => 'දීර්ඝකරණ අයිකනය පූරණය කරන්න';

  @override
  String get loadExtensionsIconDesc => 'දීර්ඝකරණ පිටුව මන්දගාමී නම් අබල කරන්න';

  @override
  String get sectionStorage => 'Storage';

  @override
  String get sectionBackup => 'Backup';

  @override
  String get sectionManagers => 'Managers';

  @override
  String get sectionOptions => 'Options';

  @override
  String get backupTabBackup => 'Back up';

  @override
  String get backupTabRestore => 'Restore';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys settings in $categories categories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Last backup $time';
  }

  @override
  String get backupNever => 'No backup yet';

  @override
  String get backupSelectAll => 'Select all';

  @override
  String get backupClearAll => 'Clear';

  @override
  String backupKeys(Object count) {
    return '$count settings';
  }

  @override
  String get backupShowKeys => 'Show settings';

  @override
  String get backupPassword => 'Password (optional)';

  @override
  String get backupPasswordHint => 'Leave empty to use the default';

  @override
  String get backupSensitive => 'Includes login tokens. Keep this file private';

  @override
  String get backupCreate => 'Create backup';

  @override
  String backupSaved(Object name) {
    return 'Backup saved to $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Backup failed: $error';
  }

  @override
  String get backupPickFile => 'Choose a backup file';

  @override
  String get backupPickFileDesc => 'Pick a .json file made by Dartotsu';

  @override
  String get backupChooseAnother => 'Choose another file';

  @override
  String get backupCreatedAt => 'Created';

  @override
  String get backupAppVersion => 'App version';

  @override
  String get backupDevice => 'Device';

  @override
  String get backupAccounts => 'Accounts';

  @override
  String get backupSize => 'Size';

  @override
  String get backupEncrypted => 'Password protected';

  @override
  String get backupUnlock => 'Unlock';

  @override
  String get backupWrongPassword =>
      'Could not read this file. Check the password';

  @override
  String get backupRestoreSelected => 'Restore selected';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Restore $count settings? Existing values in these categories are overwritten.';
  }

  @override
  String get backupRestored => 'Restored. Restart the app to apply everything';

  @override
  String backupRestoreFailed(Object error) {
    return 'Restore failed: $error';
  }

  @override
  String get backupSelectOne => 'Select at least one category';

  @override
  String get backupCatTheme => 'Appearance';

  @override
  String get backupCatThemeDesc => 'Theme, colors, glass, fonts and card style';

  @override
  String get backupCatCommon => 'General';

  @override
  String get backupCatCommonDesc =>
      'Language, storage, network and extension options';

  @override
  String get backupCatPlayer => 'Player';

  @override
  String get backupCatPlayerDesc => 'Player preferences';

  @override
  String get backupCatReader => 'Reader';

  @override
  String get backupCatReaderDesc => 'Reader preferences';

  @override
  String get backupCatProtected => 'Accounts';

  @override
  String get backupCatProtectedDesc => 'Login tokens and sign-in data';

  @override
  String get backupCatOther => 'Services and feeds';

  @override
  String get backupCatOtherDesc => 'Feed layouts, lists and service options';

  @override
  String get logFile => 'ලඝු ගොනුව';

  @override
  String get logFileDesc => 'Share the app log, or copy its path on Linux';

  @override
  String get logFileCopied => 'Log path copied';

  @override
  String get donateSheetTitle => 'Enjoying Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu is built and maintained by one person. If it is useful to you, consider supporting development.';

  @override
  String get donateLater => 'Maybe later';

  @override
  String get glassBackground => 'Glass background';

  @override
  String get glassBackgroundDesc =>
      'Your profile banner unless you set an image link';

  @override
  String get glassBackgroundHint => 'Image link (leave empty for your banner)';

  @override
  String get followCover => 'Follow cover';

  @override
  String get followCoverDesc =>
      'Colors follow the background, and the cover on detail pages';

  @override
  String get cardStyle => 'Card style';

  @override
  String get cardStyleDesc => 'Title placement, size, progress and badges';

  @override
  String get customFont => 'Font';

  @override
  String get customFontDesc =>
      'Default, a file from your device, or Google Fonts';

  @override
  String get customFontError => 'Couldn\'t load that font file';

  @override
  String get googleFontError => 'Couldn\'t download that font';

  @override
  String get yourFonts => 'Your fonts';

  @override
  String get addFontFile => 'Add font file…';

  @override
  String get browseGoogleFonts => 'Browse Google Fonts…';

  @override
  String get searchGoogleFonts => 'Search Google Fonts';

  @override
  String get defaultFont => 'Default';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dynamic colour from the system';

  @override
  String get customAccent => 'Custom accent colour';

  @override
  String get customAccentDesc => 'Pick your own primary colour';

  @override
  String get jsonTheme => 'Custom theme file';

  @override
  String get jsonThemeDesc =>
      'Live colours from ~/.config/dartotsu/theme.json (a custom script, or your own edits)';

  @override
  String get customAccentDisabledDesc =>
      'Turn off Material You to use a custom colour';

  @override
  String get themeMode => 'Theme mode';

  @override
  String get mode => 'Mode';

  @override
  String get trackingService => 'Tracking service';

  @override
  String get signOut => 'Sign out';

  @override
  String get signIn => 'Sign in';

  @override
  String get notSignedIn => 'Not signed in';

  @override
  String signOutOf(String service) {
    return 'Sign out of $service?';
  }

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get checkForUpdatesDesc => 'Notify on a new GitHub release';

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
  String get checkNow => 'Check now';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Default';

  @override
  String currentlyUsing(String value) {
    return 'Currently: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Default (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Type';

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
  String get clearCookies => 'Clear cookies';

  @override
  String get clearCookiesDesc => 'Remove every stored cookie';

  @override
  String get clearCookiesConfirm =>
      'Remove all stored cookies? This may sign you out of some sources.';

  @override
  String get version => 'Version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Source, issues and releases';

  @override
  String get discordDesc => 'Community and support';

  @override
  String get donate => 'Buy me a coffee';

  @override
  String get donateDesc => 'Support development';

  @override
  String get contributors => 'Contributors';

  @override
  String get contributorsDesc => 'The people who built Dartotsu';

  @override
  String get contributorsLoadFailed => 'Couldn\'t load contributors';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projects built on top of Dartotsu';

  @override
  String get forksEmpty => 'No forks found';

  @override
  String get sectionColors => 'Colors';

  @override
  String get sectionDisplay => 'Display';

  @override
  String get sectionStyle => 'Style';

  @override
  String get sectionCommunity => 'Community';

  @override
  String get sectionAppInfo => 'App Info';

  @override
  String get sectionCache => 'Cache';

  @override
  String get sectionRequests => 'Requests';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';
}
