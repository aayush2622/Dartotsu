// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'এনিমে আৰু মাংগা ট্ৰেকিংৰ\nবাবে শ্ৰেষ্ঠ নতুন এপ';

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
  String get login => 'লগইন';

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
    return '$service ত লগইন কৰক';
  }

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get account => 'একাউণ্ট';

  @override
  String get about => 'সম্পৰ্কীয়';

  @override
  String get language => 'ভাষা';

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
      other: 'এক্সটেনশ্যনসমূহ',
      one: 'এক্সটেনশ্যন',
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
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

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
  String get selectMediaService => 'মিডিয়া সেৱা বাছক';

  @override
  String get pickColor => 'ৰঙ বাছক';

  @override
  String get colorPickerDefault => 'ডিফল্ট';

  @override
  String get colorPickerCustom => 'কাষ্টম';

  @override
  String get utd => 'ওপৰৰ পৰা তললৈ';

  @override
  String get dtu => 'তলৰ পৰা ওপৰলৈ';

  @override
  String get rtl => 'সোঁফালৰ পৰা বাওঁফাললৈ';

  @override
  String get ltr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

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
  String get customPath => 'কাষ্টম পথ';

  @override
  String get customPathDesc => 'Where app data is kept. Long-press to reset';

  @override
  String get selectDirectory => 'ডাইৰেক্টৰি বাছক';

  @override
  String get differentCacheManager => 'বেলেগ কেশ্ব মেনেজাৰ';

  @override
  String get differentCacheManagerDesc => 'বেলেগ ছবি কেশ্ব মেনেজাৰ ব্যৱহাৰ কৰক';

  @override
  String get backupAndRestore => 'Backup and restore';

  @override
  String get backupAndRestoreDesc => 'Save or load your preferences';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get loadExtensionsIcon => 'এক্সটেনশ্যনৰ আইকন লোড কৰক';

  @override
  String get loadExtensionsIconDesc => 'এক্সটেনশ্যন পৃষ্ঠা লেগ কৰিলে অক্ষম কৰক';

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
  String get logFile => 'লগ ফাইল';

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

  @override
  String get onboardingBack => 'Back';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingPaletteTitle => 'Make it yours';

  @override
  String get onboardingPaletteBody =>
      'Pick a palette. Every accent, from cards to the player, follows it.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Light';

  @override
  String get themeModeDark => 'Dark';

  @override
  String get onboardingSyncTitle => 'Sync your library';

  @override
  String get onboardingSyncBody =>
      'Sign in with AniList to bring your lists, progress and scores with you. Or skip and browse as a guest.';

  @override
  String get onboardingOpenLinks => 'Open AniList and repo links in Dartotsu';

  @override
  String get linkOpenInApp => 'Open links in Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Let AniList and repo links open the app';

  @override
  String get linkOpenAnilist => 'Open AniList links in Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Turn on link handling so anilist.co links open the app';

  @override
  String get linkSettingsFailed => 'Could not open the system settings';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Show what you are doing on your Discord profile. Needs your Discord token.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Show what you are doing on your Discord profile. Needs the Discord desktop app running.';

  @override
  String get discordBrowsing => 'Show browsing activity';

  @override
  String get discordBrowsingDesc =>
      'Also show the tab, page or profile you are looking at, not only what you watch or read.';

  @override
  String get discordLookHeader => 'Presence look';

  @override
  String get discordActivityType => 'Activity type';

  @override
  String get discordActivityTypeDesc =>
      'How Discord words it: \"Watching …\" or \"Playing …\". Auto uses Watching for anime and Playing for everything else.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'Show covers';

  @override
  String get discordCoversDesc =>
      'Cover art and the Dartotsu icon on the card.';

  @override
  String get discordTimer => 'Show timer';

  @override
  String get discordTimerDesc => 'Elapsed or remaining time under the title.';

  @override
  String get discordButtons => 'Show buttons';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" and \"Open Dartotsu\" buttons.';

  @override
  String get discordHideTitles => 'Hide titles';

  @override
  String get discordHideTitlesDesc =>
      'Replace anime and manga names (and their cover and link) with \"Something private\".';

  @override
  String get discordConnectionHeader => 'Connection';

  @override
  String get discordToken => 'Discord token';

  @override
  String get discordTokenSaved =>
      'Saved. Tap to replace, long press to remove.';

  @override
  String get discordTokenNotSet => 'Not set. Tap to add.';

  @override
  String get discordTokenPrompt =>
      'Paste the token of the Discord account to show the presence on. It stays on this device.';

  @override
  String get discordTokenHint => 'Token';

  @override
  String get discordTokenSavedSnack => 'Discord token saved';

  @override
  String get discordTokenRemovedSnack => 'Discord token removed';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'On · tap to change how it looks';

  @override
  String get discordRichPresenceRowOff =>
      'Show what you are doing on your Discord profile';
}
