// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Nova najbolja aplikacija za\npraćenje animea i mange';

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
  String get discord => 'Discord';

  @override
  String get loadMore => 'Load more';

  @override
  String get login => 'Prijava';

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
    return 'Prijavi se na $service';
  }

  @override
  String get settings => 'Postavke';

  @override
  String get account => 'Račun';

  @override
  String get about => 'O aplikaciji';

  @override
  String get language => 'Jezik';

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
      other: 'Ekstenzije',
      one: 'Ekstenzija',
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
  String get ok => 'U redu';

  @override
  String get cancel => 'Odustani';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';

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
  String get selectMediaService => 'Odaberite Medijska usluga';

  @override
  String get pickColor => 'Odaberi boju';

  @override
  String get colorPickerDefault => 'Zadano';

  @override
  String get colorPickerCustom => 'Prilagođeno';

  @override
  String get colorPickerTransparent => 'Transparent';

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
  String get shelfFrame => 'Frame around sections';

  @override
  String get shelfFrameDesc =>
      'Show a card behind each shelf, or let the rows sit directly on the page';

  @override
  String get settingsExtensionsDesc =>
      'Source managers, repositories and extension options';

  @override
  String get settingsAddons => 'Addons';

  @override
  String get settingsAddonsDesc =>
      'Optional components such as the torrent server';

  @override
  String get customPath => 'Prilagođeni put';

  @override
  String get customPathDesc => 'Where app data is kept. Long-press to reset';

  @override
  String get selectDirectory => 'Odaberite imenik';

  @override
  String get differentCacheManager => 'Drugačiji upravitelj predmemorije';

  @override
  String get differentCacheManagerDesc =>
      'Koristite drugi upravitelj predmemorije slika';

  @override
  String get backupAndRestore => 'Backup and restore';

  @override
  String get backupAndRestoreDesc => 'Save or load your preferences';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get loadExtensionsIcon => 'Učitaj ikonu proširenja';

  @override
  String get loadExtensionsIconDesc =>
      'Onemogući ako stranica proširenja usporava';

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
  String get logFile => 'Dnevnička datoteka';

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
  String get jsonTheme => 'Custom theme file';

  @override
  String get jsonThemeDesc =>
      'Live colours from ~/.config/dartotsu/theme.json (a custom script, or your own edits)';

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
  String notImplementedArea(String area) {
    return '$area — coming soon';
  }

  @override
  String notImplementedService(String service) {
    return '$service doesn\'t support this yet.';
  }

  @override
  String get couldNotLoadResults => 'Couldn\'t load results';

  @override
  String get updateCheckFailed => 'Couldn\'t check for updates';

  @override
  String get highRefreshRate => 'High refresh rate';

  @override
  String get highRefreshRateDesc =>
      'Use the highest refresh rate your screen supports';

  @override
  String get imageSave => 'Save image';

  @override
  String imageSavedTo(String path) {
    return 'Saved to $path';
  }

  @override
  String get imageActionFailed => 'Couldn\'t download the image';

  @override
  String get imageTitleCover => 'Cover';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Profile picture';

  @override
  String get verifyTls => 'Verify certificates';

  @override
  String get verifyTlsDesc =>
      'Reject servers with invalid HTTPS certificates. Turn off only for a source that uses a self-signed one';

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
  String get onboardingPermsTitle => 'Permissions';

  @override
  String get onboardingPermsBody =>
      'Allow these now so downloads, updates and alerts work without interruptions. You can change them later in system settings.';

  @override
  String get permNotifications => 'Notifications';

  @override
  String get permNotificationsDesc =>
      'Download progress, new episodes and replies';

  @override
  String get permStorage => 'All files access';

  @override
  String get permStorageDesc => 'Save downloads to the public Dartotsu folder';

  @override
  String get permInstall => 'Install updates';

  @override
  String get permInstallDesc => 'Let Dartotsu install its own app updates';

  @override
  String get permBattery => 'Unrestricted battery';

  @override
  String get permBatteryDesc => 'Keep long downloads running in the background';

  @override
  String get permGrant => 'Allow';

  @override
  String get permGranted => 'Allowed';

  @override
  String get linkOpenInApp => 'Open links in Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Let AniList and repo links open the app';

  @override
  String get reviewsTitle => 'Reviews';

  @override
  String get reviewsEmpty => 'No reviews yet';

  @override
  String get reviewsFailed => 'Couldn\'t load reviews';

  @override
  String get reviewHelpfulQuestion => 'Was this review helpful?';

  @override
  String get reviewVoteFailed => 'Couldn\'t save your vote';

  @override
  String reviewHelpful(int n, int total) {
    return '$n of $total found this helpful';
  }

  @override
  String get calendarTitle => 'Airing schedule';

  @override
  String get calendarToday => 'Today';

  @override
  String get calendarEmpty => 'Nothing airs this day';

  @override
  String get calendarFailed => 'Couldn\'t load the schedule';

  @override
  String calendarEpisode(int n) {
    return 'Episode $n';
  }

  @override
  String get shareAnalytics => 'Share anonymous usage data';

  @override
  String get shareAnalyticsDesc =>
      'Anonymous user counts and crash reports. No account or personal data';

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
  String get listSearchHint => 'Search this list';

  @override
  String get listSort => 'Sort';

  @override
  String get listFilter => 'Filter';

  @override
  String get listRandom => 'Random title';

  @override
  String get listReverse => 'Reverse order';

  @override
  String get listSortDefault => 'List order';

  @override
  String get listSortScore => 'Your score';

  @override
  String get listSortTitle => 'Title';

  @override
  String get listSortUpdated => 'Last updated';

  @override
  String get listSortProgress => 'Progress';

  @override
  String get listSortReleased => 'Release date';

  @override
  String get listSortAverage => 'Average score';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genres';

  @override
  String get listFilterClear => 'Clear filters';

  @override
  String get listNoMatches => 'Nothing in this list matches';

  @override
  String get discordLogin => 'Log in to Discord';

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

  @override
  String get loginCancelled => 'Login cancelled';

  @override
  String get invalidToken => 'Invalid token';

  @override
  String loginFailed(String error) {
    return 'Login failed: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList login failed';

  @override
  String get kitsuLoginFailed =>
      'Kitsu login failed. Check your email and password.';

  @override
  String get kitsuLoginTitle => 'Sign in to Kitsu';

  @override
  String get emailOrUsername => 'Email or username';

  @override
  String get password => 'Password';

  @override
  String get kitsuProfile => 'Kitsu profile';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka login failed';

  @override
  String get mangaBakaProfile => 'MangaBaka profile';

  @override
  String get refreshFromMangaBaka => 'Refresh from MangaBaka';

  @override
  String get artistsLabel => 'Artists';

  @override
  String get authorsLabel => 'Authors';

  @override
  String get publishersLabel => 'Publishers';

  @override
  String get licensedLabel => 'Licensed';

  @override
  String get contentRatingLabel => 'Content rating';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get ratingSteps => 'Rating steps';

  @override
  String get hideNsfw => 'Hide NSFW';

  @override
  String get hideNsfwDesc =>
      'Keep adult titles out of feeds and search, and list your own adult entries under Hidden Media.';

  @override
  String get kitsuAccountOptions => 'Kitsu account options';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Could not update your Kitsu settings';

  @override
  String get titleCanonical => 'Canonical';

  @override
  String get titleRomanized => 'Romanized';

  @override
  String get titleLocalized => 'Localized';

  @override
  String get ratingSystem => 'Rating system';

  @override
  String get ratingSimple => 'Simple (3 faces)';

  @override
  String get ratingRegular => 'Regular (5 stars)';

  @override
  String get ratingAdvanced => 'Advanced (10 points)';

  @override
  String get contentFilter => 'Content filter';

  @override
  String get contentSfw => 'Safe for work only';

  @override
  String get contentSometimes => 'Mature content in searches';

  @override
  String get contentEverywhere => 'Mature content everywhere';

  @override
  String get shareToGlobal => 'Share to global feed';

  @override
  String get shareToGlobalDesc =>
      'Let your activity appear in Kitsu\'s global feed.';

  @override
  String get memberSince => 'Member since';

  @override
  String get location => 'Location';

  @override
  String get accountType => 'Account type';

  @override
  String get accountSupporter => 'Supporter';

  @override
  String get accountFree => 'Free';

  @override
  String get accountDetails => 'Account details';

  @override
  String get refreshFromKitsu => 'Refresh from Kitsu';

  @override
  String get simklReadOnly => 'Simkl granted read-only access';

  @override
  String get incognitoEditsBlocked => 'Incognito: list edits are blocked';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Incognito: progress not saved';

  @override
  String progressSet(int progress) {
    return 'Progress set to $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Removed $title from your list';
  }

  @override
  String get following => 'Following';

  @override
  String get homeSections => 'Home sections';

  @override
  String get homeSectionsHint =>
      'Drag to reorder. Hidden sections are never fetched.';

  @override
  String get customListDeleteFailed => 'Failed to delete custom list';

  @override
  String get customListsSaveFailed => 'Failed to save custom lists';

  @override
  String get customListsSaved => 'Custom lists saved';

  @override
  String get listName => 'List name';

  @override
  String get addList => 'Add list';

  @override
  String voiceActorsIn(String name) {
    return 'Voice actors · $name';
  }

  @override
  String get animeAppearances => 'Anime appearances';

  @override
  String get mangaAppearances => 'Manga appearances';

  @override
  String get voicedCharacters => 'Voiced characters';

  @override
  String get animeCredits => 'Anime credits';

  @override
  String get mangaCredits => 'Manga credits';

  @override
  String get mainProductions => 'Main productions';

  @override
  String get otherWorks => 'Other works';

  @override
  String get prequelSequel => 'Prequel & Sequel';

  @override
  String get previousSeason => 'Prethodne sezone';

  @override
  String get thisSeason => 'Ove sezone';

  @override
  String get nextSeason => 'Sljedeće sezone';

  @override
  String get voiceRoles => 'Voice roles';

  @override
  String get staffPositions => 'Staff positions';

  @override
  String get mangaWorks => 'Manga works';

  @override
  String get malProfile => 'MyAnimeList profile';

  @override
  String get refreshFromMal => 'Refresh from MyAnimeList';

  @override
  String get repullProfileCounts => 'Re-pull your profile and counts';

  @override
  String get refreshed => 'Refreshed';

  @override
  String get simklProfile => 'Simkl profile';

  @override
  String get refreshFromSimkl => 'Refresh from Simkl';

  @override
  String get repullProfileLibrary => 'Re-pull your profile and library';

  @override
  String get simklSignInToSearch => 'Sign in to Simkl to search';

  @override
  String get dropRate => 'Drop rate';

  @override
  String get simklAttribution =>
      'Data and artwork provided by Simkl. View on Simkl';

  @override
  String get onHold => 'Na čekanju null';

  @override
  String get scoredBy => 'Scored by';

  @override
  String get planToWatch => 'Plan to watch';

  @override
  String get planToRead => 'Plan to read';

  @override
  String get timesRewatched => 'Times rewatched';

  @override
  String get timesReread => 'Times reread';

  @override
  String get comments => 'Komentari';

  @override
  String get moviesAndSeries => 'Movies & Series';

  @override
  String get trackingOnly => 'Tracking only';

  @override
  String get signedIn => 'Signed in';

  @override
  String get searchLanguage => 'Search language';

  @override
  String get savedToList => 'Saved to your list';

  @override
  String get removedFromYourList => 'Removed from your list';

  @override
  String get retry => 'Retry';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get details => 'Details';

  @override
  String get addToList => 'DODAJ NA POPIS';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Title copied';

  @override
  String get linkCopied => 'Link copied';

  @override
  String get watchTrailer => 'Watch trailer';

  @override
  String get copyTitle => 'Copy title';

  @override
  String get copyLink => 'Copy link';

  @override
  String get openInBrowser => 'Open in browser';

  @override
  String viewOnSource(String source) {
    return 'View on $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Episode $ep airs in $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Next episode in $time';
  }

  @override
  String get logPathCopied => 'Log file path copied to clipboard';

  @override
  String get animeSource => 'Anime source';

  @override
  String get mangaSource => 'Manga source';

  @override
  String get popular => 'Popularno null';

  @override
  String get latest => 'Latest';

  @override
  String get saved => 'Saved';

  @override
  String get nothingMatched => 'Nothing matched';

  @override
  String get nothingSavedFromSource => 'Nothing saved from this source yet';

  @override
  String get sourceReturnedNothing => 'This source returned nothing';

  @override
  String get checkConnectionOrSource =>
      'Check your connection or try another source.';

  @override
  String get tryDifferentSearch => 'Try a different search term.';

  @override
  String get savedTitlesAppearHere =>
      'Titles you add to your list appear here.';

  @override
  String get tryOtherFeed => 'Try the other feed or search instead.';

  @override
  String searchSource(String source) {
    return 'Search $source';
  }

  @override
  String get animeExtensions => 'Anime Extensions';

  @override
  String get mangaExtensions => 'Manga Extensions';

  @override
  String get nothingHereYet => 'Nothing here yet';

  @override
  String get savedOnDeviceUntilLogin =>
      'Everything below is saved on this device until you do.';

  @override
  String get yourProfile => 'Your profile';

  @override
  String get activity => 'null';

  @override
  String get extensions => 'Extensions';

  @override
  String get logOut => 'Log out';

  @override
  String get logIn => 'Log in';

  @override
  String get logOutConfirm => 'Are you sure you want to log out?';

  @override
  String get incognitoMode => 'Anonimni način rada';

  @override
  String get alsoBlockListEdits => 'Also block list edits';

  @override
  String get offlineMode => 'Izvanmrežni način rada';

  @override
  String get switchService => 'Switch service';

  @override
  String logOutOf(String name) {
    return 'Log out of $name';
  }

  @override
  String get loggedIn => 'Logged in';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get nothingNew => 'Nothing new';

  @override
  String get thisWeek => 'This week';

  @override
  String get listOnly => 'List Only';

  @override
  String get filter => 'Filter';

  @override
  String get searchResults => 'Search Results';

  @override
  String get recentSearches => 'Recent searches';

  @override
  String get searchOrSetFilter => 'Search or set a filter';

  @override
  String get filters => 'Filters';

  @override
  String get showLess => 'Show less';

  @override
  String get showAll => 'Show all';

  @override
  String get apply => 'Apply';

  @override
  String get preview => 'Preview';

  @override
  String get preset => 'Preset';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'On card';

  @override
  String get cardInCard => 'In card';

  @override
  String get size => 'Size';

  @override
  String get cardWidth => 'Card width';

  @override
  String get compact => 'Compact';

  @override
  String get coverAndTitleOnly => 'Cover and title only';

  @override
  String get titleLines => 'Title lines';

  @override
  String get shape => 'Shape';

  @override
  String get posterShape => 'Poster shape';

  @override
  String get cornerRadius => 'Corner radius';

  @override
  String get off => 'Off';

  @override
  String get topLeft => 'Top left';

  @override
  String get topRight => 'Top right';

  @override
  String get bottomLeft => 'Bottom left';

  @override
  String get bottomRight => 'Bottom right';

  @override
  String get overlays => 'Overlays';

  @override
  String get progressCount => 'Progress / count';

  @override
  String get pill => 'Pill';

  @override
  String get bar => 'Bar';

  @override
  String get outside => 'Outside';

  @override
  String get scoreBadge => 'Score badge';

  @override
  String get airingDot => 'Airing dot';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get notInstalled => 'Not installed';

  @override
  String get done => 'Done';

  @override
  String get searchOrEnterUrl => 'Search or enter URL';

  @override
  String get refresh => 'Refresh';

  @override
  String get share => 'Share';

  @override
  String get characters => 'Likovi';

  @override
  String get staff => 'Osoblje';

  @override
  String get readMore => 'Read more';

  @override
  String get couldNotLoadList => 'Could not load the list';

  @override
  String get logInToFavourite => 'Log in to add favourites';

  @override
  String get alsoKnownAs => 'Also known as';

  @override
  String get hideSpoilerNames => 'Hide spoiler names';

  @override
  String get showSpoilerNames => 'Show spoiler names';

  @override
  String get favourited => 'Favourited';

  @override
  String get favourite => 'Favourite';

  @override
  String get couldNotOpenTitle => 'Could not open this title';

  @override
  String get nobodyHereYet => 'Nobody here yet';

  @override
  String get noMatches => 'No matches';

  @override
  String get gridView => 'Prikaz mreže';

  @override
  String get fullWidth => 'Full width';

  @override
  String get userNotFound => 'User not found';

  @override
  String get couldNotUpdateFollow => 'Could not update follow';

  @override
  String followedUser(String name) {
    return 'Followed $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Unfollowed $name';
  }

  @override
  String get messages => 'Messages';

  @override
  String get logInToSeeMessages => 'Log in to see your messages';

  @override
  String get editActivity => 'Edit activity';

  @override
  String get newActivity => 'New activity';

  @override
  String get editMessage => 'Edit message';

  @override
  String get writeMessage => 'Write a message';

  @override
  String get editReply => 'Edit reply';

  @override
  String get posted => 'Posted';

  @override
  String get couldNotPost => 'Could not post';

  @override
  String get nothingToPreview => 'Nothing to preview';

  @override
  String get writeSomethingHint =>
      'Write something… AniList markdown works here';

  @override
  String get privateMessage => 'Private message';

  @override
  String get post => 'Post';

  @override
  String get nothingHere => 'Nothing here';

  @override
  String get noAnimeProgress => 'No anime progress';

  @override
  String get noMangaProgress => 'No manga progress';

  @override
  String get noMessages => 'No messages';

  @override
  String get writeMessageHint => 'Write a message…';

  @override
  String get shareSomethingHint => 'Share something…';

  @override
  String get all => 'All';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Count';

  @override
  String get hoursWatched => 'Hours watched';

  @override
  String get chaptersRead => 'Chapters read';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get noStatsYet => 'No stats yet';

  @override
  String get totalEntries => 'Total entries';

  @override
  String get episodesWatched => 'Episodes watched';

  @override
  String get daysWatched => 'Days watched';

  @override
  String get volumesRead => 'Volumes read';

  @override
  String get standardDeviation => 'Standard deviation';

  @override
  String get showMore => 'Show more';

  @override
  String get followsYou => 'Follows you';

  @override
  String get nobodyYet => 'Nobody yet';

  @override
  String get logInToLike => 'Log in to like';

  @override
  String get failedToLikeActivity => 'Failed to like activity';

  @override
  String get deleteActivityConfirm => 'Delete activity?';

  @override
  String get deletedActivity => 'Deleted activity';

  @override
  String get failedToDeleteActivity => 'Failed to delete activity';

  @override
  String get subscribed => 'Subscribed';

  @override
  String get unsubscribed => 'Unsubscribed';

  @override
  String get failedToUpdateSubscription => 'Failed to update subscription';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get likedBy => 'Liked by';

  @override
  String get follow => 'Follow';

  @override
  String get nameCopied => 'Name copied';

  @override
  String get followsEachOther => 'Follows each other';

  @override
  String get unfollow => 'Unfollow';

  @override
  String get userIdCopied => 'User id copied';

  @override
  String get shareProfile => 'Share profile';

  @override
  String get copyUserId => 'Copy user id';

  @override
  String get failedToDelete => 'Failed to delete';

  @override
  String get failedToLike => 'Failed to like';

  @override
  String get replies => 'Replies';

  @override
  String get reply => 'Reply';

  @override
  String get noRepliesYet => 'No replies yet';

  @override
  String get favouriteAnime => 'Favourite anime';

  @override
  String get favouriteManga => 'Favourite manga';

  @override
  String get favouriteCharacters => 'Favourite characters';

  @override
  String get favouriteStaff => 'Favourite staff';

  @override
  String get favouriteStudios => 'Favourite studios';

  @override
  String get noFavouritesYet => 'No favourites yet';

  @override
  String get yourStory => 'Your story';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get justNow => 'Just now';

  @override
  String get openImage => 'Open image';

  @override
  String get hideSpoiler => 'Hide spoiler';

  @override
  String get showSpoiler => 'Show spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Score';

  @override
  String get started => 'Started';

  @override
  String get completed => 'Completed';

  @override
  String get private => 'Private';

  @override
  String get hideFromStatusLists => 'Hide from status lists';

  @override
  String get totalRepeats => 'Total repeats';

  @override
  String get other => 'Other';

  @override
  String get customLists => 'Custom lists';

  @override
  String get activeDays => 'Active days';

  @override
  String get longestStreak => 'Longest streak';

  @override
  String get currentStreak => 'Current streak';

  @override
  String get tapOrHoverDay => 'Tap or hover a day';

  @override
  String get less => 'Less';

  @override
  String get more => 'More';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep in $time';
  }

  @override
  String get sectionLoading => 'Loading';

  @override
  String get querySize => 'Query size';

  @override
  String get querySizeDesc =>
      'One big query loads every row (and a whole profile) in a single request. Split queries send a small request per row or per profile part: each is quick and parts appear as they arrive.';

  @override
  String get oneBig => 'One big';

  @override
  String get split => 'Split';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'System notifications';

  @override
  String get feedLayout => 'Feed layout';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown of $total shown — tap to pick and reorder';
  }

  @override
  String labelSections(String label) {
    return '$label sections';
  }

  @override
  String get accountOptions => 'Account options';

  @override
  String get accountOptionsDesc =>
      'Names, score format, list order, notifications and more';

  @override
  String get anilistAccountOptions => 'AniList account options';

  @override
  String get sectionPrivacy => 'Privacy';

  @override
  String get hidePrivateEntries => 'Hide private entries';

  @override
  String get hidePrivateEntriesDesc =>
      'Keep entries marked private on AniList out of the feed';

  @override
  String get anilistProfile => 'AniList profile';

  @override
  String get refreshFromAnilist => 'Refresh from AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Could not update AniList settings';

  @override
  String get sectionNames => 'Names';

  @override
  String get titleLanguage => 'Title language';

  @override
  String get titleLanguageDesc =>
      'How titles are written everywhere, e.g. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Staff and character names';

  @override
  String get sectionLists => 'Lists';

  @override
  String get scoreFormat => 'Score format';

  @override
  String get sortListsBy => 'Sort lists by';

  @override
  String labelCustomLists(String label) {
    return '$label custom lists';
  }

  @override
  String customListsCount(int count) {
    return '$count lists — tap to add or remove';
  }

  @override
  String get mergeActivities => 'Merge activities';

  @override
  String minutesCount(int count) {
    return '$count mins';
  }

  @override
  String get timezone => 'Timezone';

  @override
  String get notSet => 'Not set';

  @override
  String get airingNotifications => 'Airing notifications';

  @override
  String get airingNotificationsDesc =>
      'Get notified when an episode of a followed show airs';

  @override
  String get displayAdultContent => 'Display adult content';

  @override
  String get displayAdultContentDesc =>
      'Include 18+ titles in browse, search and feeds';

  @override
  String get restrictMessages => 'Restrict messages to following';

  @override
  String get restrictMessagesDesc => 'Only people you follow can message you';

  @override
  String get sectionServices => 'Services';

  @override
  String get novel => 'Roman';

  @override
  String labelService(String label) {
    return '$label service';
  }

  @override
  String nameSettings(String name) {
    return '$name settings';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Options from the $name extension bridge';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name could not start: $error';
  }

  @override
  String get importLists => 'Import lists';

  @override
  String get importListsDesc =>
      'From Aniyomi, Mihon / Tachiyomi or Kotatsu backups';

  @override
  String get exportLists => 'Export lists';

  @override
  String get exportListsDesc => 'To an Aniyomi, Mihon or Kotatsu backup';

  @override
  String get sectionBrowse => 'Browse';

  @override
  String get readingTab => 'Reading tab';

  @override
  String get readingTabDesc => 'Which extensions the third tab shows';

  @override
  String get defaultFeed => 'Default feed';

  @override
  String get defaultFeedDesc => 'Which list a source opens with';

  @override
  String noServiceSupports(String type) {
    return 'No service supports $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded of $installed sources loading';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'No extension service supports $type here.';
  }

  @override
  String get loadDataFrom => 'Load data from';

  @override
  String noInstalledSourcesYet(String type) {
    return 'No installed $type sources yet.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'The extension for $name is not installed';
  }

  @override
  String get thisSource => 'this source';

  @override
  String failedToAddRepository(String error) {
    return 'Failed to add repository: $error';
  }

  @override
  String installedType(String type) {
    return 'Installed $type';
  }

  @override
  String availableType(String type) {
    return 'Available $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'No installed $type extensions';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'No available $type extensions';
  }

  @override
  String get nothingToShowYet => 'Nothing to show yet';

  @override
  String get addTitlesHint =>
      'Add some titles to your list and they\'ll appear here.';

  @override
  String get couldntLoad => 'Couldn\'t load';

  @override
  String get progressStyleHint =>
      'Pill and bar overlay the poster; outside shows the same count as plain text instead — pick one.';

  @override
  String get nixManagedUpdate =>
      'This build is managed by Nix — run \"nix flake update\" on your flake and rebuild instead of updating from here';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatic update failed ($error) — opening the download page instead';
  }

  @override
  String get unknownPreference => 'Unknown preference';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Unsupported preference type $type';
  }

  @override
  String get notYetReleased => 'Not Yet Released';

  @override
  String get notStarted => 'Not Started';

  @override
  String get country => 'Country';

  @override
  String get sort => 'Sortiraj';

  @override
  String get chooseBackupDialog => 'Choose an Aniyomi, Mihon or Kotatsu backup';

  @override
  String get importListsHint =>
      'Bring a library over from Aniyomi, Mihon / Tachiyomi or Kotatsu. Titles, covers, progress and categories are kept.';

  @override
  String get chooseBackupFile => 'Choose backup file';

  @override
  String importAnimeCount(int count) {
    return 'Import $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Import $count manga';
  }

  @override
  String get mergeWithExisting => 'Merge with existing lists';

  @override
  String get mergeWithExistingDesc =>
      'Keeps what you already have; off replaces matching titles';

  @override
  String get chooseAnother => 'Choose another';

  @override
  String get import => 'Import';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Choose where to save the backup';

  @override
  String savedPath(String path) {
    return 'Saved $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get nothingInLocalLists => 'Nothing in your local lists yet.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exports $anime anime and $manga manga from your local lists. Kotatsu only supports manga.';
  }

  @override
  String get saveToFolder => 'Save to folder';

  @override
  String get formatAnimeManga => 'Anime and manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga only · .tachibk';

  @override
  String get formatMangaZip => 'Manga only · .zip';

  @override
  String get genres => 'Žanrovi';

  @override
  String get relations => 'Relations';

  @override
  String get recommendations => 'Recommendations';

  @override
  String get openings => 'Openings';

  @override
  String get endings => 'Endings';

  @override
  String get background => 'Background';

  @override
  String get links => 'Links';

  @override
  String get rank => 'Rank';

  @override
  String get members => 'Members';

  @override
  String get favorites => 'Favoriti';

  @override
  String get episodes => 'Episodes';

  @override
  String get chapters => 'Chapters';

  @override
  String get volumes => 'Volumes';

  @override
  String get format => 'Format';

  @override
  String get source => 'Source';

  @override
  String get duration => 'Duration';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min per ep';
  }

  @override
  String get rating => 'Rating';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialization';

  @override
  String get season => 'Sezona';

  @override
  String get broadcast => 'Broadcast';

  @override
  String get aired => 'Aired';

  @override
  String get published => 'Published';

  @override
  String get popularity => 'Popularnost';

  @override
  String get community => 'Community';

  @override
  String get watching => 'Gledanje';

  @override
  String get reading => 'Čitanje';

  @override
  String get dropped => 'Dropped';

  @override
  String get planned => 'Planirano null';

  @override
  String get trailers => 'Trailers';

  @override
  String get ratings => 'Ratings';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Title';

  @override
  String get votes => 'Votes';

  @override
  String get watchedStat => 'Watched';

  @override
  String get runtime => 'Runtime';

  @override
  String get director => 'Director';

  @override
  String get network => 'Network';

  @override
  String get certification => 'Certification';

  @override
  String get airs => 'Airs';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Revenue';

  @override
  String get released => 'Released';

  @override
  String get tags => 'Tags';

  @override
  String get author => 'Author';

  @override
  String get born => 'Born';

  @override
  String get website => 'Website';

  @override
  String get established => 'Established';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novels';

  @override
  String get thisMonth => 'This month';

  @override
  String get movies => 'Movies';

  @override
  String get shows => 'Shows';

  @override
  String get rewatching => 'Rewatching';

  @override
  String get rereading => 'Rereading';

  @override
  String get watchedStatus => 'Watched';

  @override
  String get planning => 'Planning';

  @override
  String get paused => 'Paused';

  @override
  String get watch => 'Gledaj';

  @override
  String get read => 'Čitaj';

  @override
  String get finished => 'Finished';

  @override
  String get releasing => 'Releasing';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get hiatus => 'Hiatus';

  @override
  String get remove => 'Remove';

  @override
  String syncToService(String service) {
    return 'Sync to $service';
  }

  @override
  String syncedToService(String service) {
    return 'Synced to $service';
  }

  @override
  String get latestReleases => 'Latest Releases';

  @override
  String get topRated => 'Najbolje ocijenjeno null';

  @override
  String localSection(String title) {
    return '$title · Local';
  }

  @override
  String get localEntryNote =>
      'This title is only in your local list on this device. Editing is turned off here because it could clash with your account list; you can still remove it.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Card';

  @override
  String get cardPresetCozy => 'Cozy';

  @override
  String get sortTopRated => 'Top rated';

  @override
  String get sortMostPopular => 'Most popular';

  @override
  String get sortTrending => 'Trending';

  @override
  String get sortNewest => 'Newest';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Most favourited';

  @override
  String get anyCountry => 'Any country';

  @override
  String get orderScore => 'Score';

  @override
  String get orderTitle => 'Title';

  @override
  String get orderLastUpdated => 'Last Updated';

  @override
  String get orderLastAdded => 'Last Added';

  @override
  String get never => 'Never';

  @override
  String get always => 'Always';

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
      other: '$count hours',
      one: '1 hour',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weeks',
      one: '1 week',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Resume';

  @override
  String get resumeSourceMissing => 'Install this title\'s source to resume';

  @override
  String get resumeRemove => 'Remove from resume';

  @override
  String resumeMissing(String title) {
    return 'Couldn\'t find $title in this source';
  }

  @override
  String resumeAt(String time) {
    return '$time left';
  }

  @override
  String resumePage(int page, int total) {
    return 'Page $page of $total';
  }

  @override
  String get continueWatching => 'Nastavi gledati';

  @override
  String get continueReading => 'Nastavi čitati';

  @override
  String get favouriteAnimeSection => 'Favourite Anime';

  @override
  String get favouriteMangaSection => 'Favourite Manga';

  @override
  String get plannedAnime => 'Planned Anime';

  @override
  String get plannedManga => 'Planned Manga';

  @override
  String get completedAnime => 'Completed Anime';

  @override
  String get completedManga => 'Completed Manga';

  @override
  String get hiddenMedia => 'Skriveni sadržaj';

  @override
  String get recentUpdates => 'Nedavne izmjene';

  @override
  String get trendingNow => 'Trending Now';

  @override
  String get popularThisSeason => 'Popular This Season';

  @override
  String get trendingMovies => 'Trending Movies';

  @override
  String get topRatedSeries => 'Top Rated Series';

  @override
  String get mostFavouriteSeries => 'Most Favourite Series';

  @override
  String get popularAnime => 'Popular Anime';

  @override
  String get trendingManhwa => 'Trending Manhwa';

  @override
  String get trendingNovels => 'Trending Novels';

  @override
  String get topRatedManga => 'Top Rated Manga';

  @override
  String get mostFavouriteManga => 'Most Favourite Manga';

  @override
  String get popularManga => 'Popular Manga';

  @override
  String get topMovies => 'Top Movies';

  @override
  String get topOna => 'Top ONA';

  @override
  String get topOva => 'Top OVA';

  @override
  String get mostPopular => 'Most Popular';

  @override
  String get mostFavourite => 'Najdraže null';

  @override
  String get upcoming => 'Upcoming';

  @override
  String get topManga => 'Top Manga';

  @override
  String get topManhwa => 'Top Manhwa';

  @override
  String get topManhua => 'Top Manhua';

  @override
  String get topNovels => 'Top Novels';

  @override
  String get topOneShots => 'Top One-shots';

  @override
  String get trendingMoviesToday => 'Trending Movies Today';

  @override
  String get trendingShowsToday => 'Trending Shows Today';

  @override
  String get trendingMoviesWeek => 'Trending Movies This Week';

  @override
  String get trendingShowsWeek => 'Trending Shows This Week';

  @override
  String get mostWatchedMoviesMonth => 'Most Watched Movies This Month';

  @override
  String get mostWatchedShowsMonth => 'Most Watched Shows This Month';

  @override
  String get trendingThisWeek => 'Trending This Week';

  @override
  String get mostWatchedThisMonth => 'Most Watched This Month';

  @override
  String get repoLinksAdded => 'Added Repo Links Successfully!';

  @override
  String get errorGettingAnilistData => 'Error getting data from AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'COMMENTS';

  @override
  String get playerNotAvailable => 'The player is not available yet';

  @override
  String deepLinkInitialError(String error) {
    return 'Error getting initial deep link: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Error Opening link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'This link can\'t be opened: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Error opening link: $error';
  }

  @override
  String get forReleasingTitles => 'for currently releasing titles';

  @override
  String get progress => 'Progress';

  @override
  String get notes => 'Notes';

  @override
  String serviceNotFound(String id) {
    return 'Service \"$id\" not found';
  }

  @override
  String get glassEffectEnabled => 'Glass effect enabled';

  @override
  String get glassEffectDisabled => 'Glass effect disabled';

  @override
  String get materialYouEnabled => 'Material You enabled';

  @override
  String get materialYouDisabled => 'Material You disabled';

  @override
  String get darkModeEnabled => 'Dark mode enabled';

  @override
  String get darkModeDisabled => 'Dark mode disabled';

  @override
  String get animeList => 'Anime list';

  @override
  String get mangaList => 'Manga list';

  @override
  String ownerAnimeList(String owner) {
    return '$owner\'s anime list';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner\'s manga list';
  }

  @override
  String get loadingList => 'Loading list';

  @override
  String get earlier => 'Earlier';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes ago',
      one: '1 minute ago',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}m ago';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}h ago';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}d ago';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}w ago';
  }

  @override
  String get couldntLoadSource => 'Couldn\'t load this source';

  @override
  String get followers => 'Followers';

  @override
  String couldntLoadTitle(String title) {
    return 'Couldn\'t load $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Couldn\'t load this profile';

  @override
  String get profile => 'Profile';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Stats';

  @override
  String get received => 'Received';

  @override
  String get sent => 'Sent';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Couldn\'t load this page';

  @override
  String get couldntLoadAllDetails => 'Couldn\'t load all details';

  @override
  String get series => 'Series';

  @override
  String get studios => 'Studios';

  @override
  String get users => 'Users';

  @override
  String repositoriesTitle(String type) {
    return '$type Repositories';
  }

  @override
  String get repositoryUrl => 'Repository URL';

  @override
  String get downloadingRepository => 'Downloading repository…';

  @override
  String get noRepositories => 'No repositories added';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensions';
  }

  @override
  String get searchExtensions => 'Search extensions...';

  @override
  String deletePluginTitle(String name) {
    return 'Delete $name?';
  }

  @override
  String get deletePluginMessage =>
      'Are you sure you want to delete this plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name deleted';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name is not available in the configured repo';
  }

  @override
  String get pluginFetchFailed => 'Failed to fetch plugin info';

  @override
  String installPluginTitle(String name) {
    return 'Install $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Size: $size';
  }

  @override
  String get installedState => 'Installed';

  @override
  String get errorLabel => 'Error:';

  @override
  String get stackTraceDetails => 'Details (Stack Trace)';

  @override
  String get shareLogFile => 'Share log file';

  @override
  String get copyLogs => 'Copy Logs';

  @override
  String noListToEdit(String service) {
    return '$service has no list to edit';
  }

  @override
  String get couldNotReadFile => 'Could not read that file';

  @override
  String importedSummary(int anime, int manga) {
    return 'Imported $anime anime and $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count already there';
  }

  @override
  String get airingNow => 'Airing now';

  @override
  String get topRatedMovies => 'Top rated movies';

  @override
  String get topRatedShows => 'Top rated shows';

  @override
  String get recommendedSection => 'Recommended';

  @override
  String get syncRow => 'Sync lists';

  @override
  String get syncRowDesc =>
      'Mirror one service\'s list onto your other accounts';

  @override
  String get syncTitle => 'Sync';

  @override
  String get syncMainService => 'Main service';

  @override
  String get syncMainServiceDesc =>
      'Its list is the source of truth; every other signed-in service is updated to match';

  @override
  String get syncAuto => 'Auto sync';

  @override
  String get syncAutoDesc =>
      'Fetch and sync in the background when the app opens and every 30 minutes';

  @override
  String get syncAddMissing => 'Add missing entries';

  @override
  String get syncAddMissingDesc =>
      'Also add entries the other service doesn\'t have yet';

  @override
  String get syncOnlyForward => 'Keep further progress';

  @override
  String get syncOnlyForwardDesc =>
      'Don\'t lower the progress of a service that is already ahead';

  @override
  String get syncFetch => 'Fetch';

  @override
  String get syncFetchAgain => 'Fetch again';

  @override
  String get syncAll => 'Sync all';

  @override
  String get syncStop => 'Stop';

  @override
  String get syncResume => 'Resume';

  @override
  String get syncNothingToSync => 'This service can\'t be synced for this type';

  @override
  String get syncNoTargets => 'Sign in to another service to sync with';

  @override
  String get syncLoadingMap => 'Loading ID mapping';

  @override
  String get syncComparing => 'Comparing lists';

  @override
  String get syncIntro =>
      'Pick a main service and press Fetch. Each service is queried once for your list, then compared with the main one.';

  @override
  String get syncStateSynced => 'Synced';

  @override
  String get syncStateOutdated => 'Out of sync';

  @override
  String get syncStateMissing => 'Not in list';

  @override
  String get syncStateUnmapped => 'No match';

  @override
  String syncPaused(String time) {
    return 'Waiting for the rate limit, resumes in $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count only on $name, left untouched';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done of $total';
  }

  @override
  String get syncNothingHere => 'Nothing to show';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used of $max requests used this $window';
  }

  @override
  String get syncMinute => 'minute';

  @override
  String get syncDay => 'day';

  @override
  String get syncNotInList => 'Not in list yet';

  @override
  String get syncCleared => 'Plan cleared';

  @override
  String get syncClear => 'Clear';

  @override
  String get syncOptions => 'Options';

  @override
  String get syncShared => 'Shares its entry with another item';

  @override
  String syncNotFound(String service) {
    return 'Not found on $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sync $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sync changes instantly';

  @override
  String get syncOnEditDesc =>
      'Push every progress update and list edit to your other signed-in services right away';

  @override
  String syncPushed(String services) {
    return 'Synced to $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Rate limited, try again in a moment';

  @override
  String get syncAhead => 'Whichever is ahead';

  @override
  String get syncAheadDesc =>
      'Two-way: for every title the entry that is furthest along wins and is copied to all your other services';

  @override
  String syncAheadFrom(String service) {
    return 'From $service';
  }

  @override
  String get syncConfirm => 'Review before syncing';

  @override
  String get syncConfirmDesc =>
      'Show what Sync all will change and how many requests it needs';

  @override
  String get syncPreviewTitle => 'Ready to sync';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates updates, $adds to add';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'About $count requests';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ids need a lookup first';
  }

  @override
  String get syncPreviewNothing => 'Nothing to change';

  @override
  String get syncStart => 'Start';

  @override
  String get syncRetry => 'Retry';

  @override
  String get syncSkip => 'Skip this item';

  @override
  String get syncInclude => 'Include this item again';

  @override
  String get syncSkippedLabel => 'Skipped';

  @override
  String get syncChanges => 'Differences';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Progress';

  @override
  String get syncChangeScore => 'Score';

  @override
  String get syncChangeDates => 'Dates';

  @override
  String get syncChangeRepeat => 'Rewatch count';

  @override
  String get syncFailedReason => 'Why it failed';

  @override
  String get syncSkippedHint =>
      'Skipped items are left alone, even after fetching again';

  @override
  String get commentsRules => 'Commenting rules';

  @override
  String get commentsRulesBody =>
      'BREAK ANY RULE = YOU\'RE GONE\n\n1. No racism, discrimination or hate speech\n2. No spamming or self-promotion\n3. Absolutely no NSFW content\n4. English only, no exceptions\n5. No impersonation, harassment or abuse\n6. No illegal content or extreme disrespect towards any fandom\n7. Do not request or share repositories or extensions\n8. Spoilers only with spoiler tags and a warning\n9. No sexualising or inappropriate comments about minor characters\n10. If it\'s wrong, don\'t post it!';

  @override
  String get commentsRulesAccept => 'I understand';

  @override
  String get commentsSortNewest => 'Newest';

  @override
  String get commentsSortOldest => 'Oldest';

  @override
  String get commentsSortHighest => 'Highest rated';

  @override
  String get commentsSortLowest => 'Lowest rated';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Ch $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filter by episode';

  @override
  String get commentsFilterChapterTitle => 'Filter by chapter';

  @override
  String get commentsFilterTagTitle => 'Enter an episode or chapter number';

  @override
  String get commentsFilterHint => 'Number';

  @override
  String get commentsFilterApply => 'Filter';

  @override
  String get commentsFilterClear => 'Show all';

  @override
  String get commentsPlaceholder => 'Add a comment…';

  @override
  String commentsReplyingTo(String name) {
    return 'Replying to $name';
  }

  @override
  String get commentsSend => 'Send';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (optional)';
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
    return '$label number';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag cannot exceed the total ($total)';
  }

  @override
  String get commentsNoTag => 'No tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Search GIFs';

  @override
  String get commentsGifEmpty => 'No GIFs found';

  @override
  String get commentsEmptyText => 'Comment cannot be empty';

  @override
  String get commentsBannedYou => 'You are banned from commenting';

  @override
  String get commentsEdited => 'Comment edited';

  @override
  String get commentsDeleted => 'Comment deleted';

  @override
  String get commentsDeletedPlaceholder => '[deleted]';

  @override
  String get commentsReported => 'Comment reported';

  @override
  String get commentsUserBanned => 'User banned';

  @override
  String get commentsReport => 'Report';

  @override
  String get commentsReportAsk => 'Report this comment to the moderators?';

  @override
  String get commentsDelete => 'Delete';

  @override
  String get commentsDeleteAsk => 'This comment will be removed for everyone.';

  @override
  String get commentsBan => 'Ban';

  @override
  String get commentsBanAsk => 'Ban this user from commenting?';

  @override
  String get commentsCopy => 'Copy';

  @override
  String get commentsViewReply => 'View 1 reply';

  @override
  String commentsViewReplies(int count) {
    return 'View $count replies';
  }

  @override
  String get commentsHideReplies => 'Hide replies';

  @override
  String get commentsLoadMore => 'Load more comments';

  @override
  String get commentsEmpty => 'No comments yet. Be the first!';

  @override
  String get commentsEmptyFiltered => 'No comments for this filter';

  @override
  String get commentsSignIn => 'Sign in to AniList to read and write comments';

  @override
  String get commentsSignInMessage =>
      'Comments are shared between every service and use your AniList account.';

  @override
  String get commentsUnavailable => 'Comments aren\'t available for this title';

  @override
  String get commentsUnavailableMessage =>
      'It couldn\'t be matched to an AniList entry.';

  @override
  String get commentsDisabled => 'Comments are turned off';

  @override
  String get commentsDisabledMessage =>
      'You can turn them back on in Settings › General.';

  @override
  String get commentsOffline => 'Couldn\'t load comments';

  @override
  String get commentsSingleTitle => 'Showing one comment';

  @override
  String get commentsShowAll => 'Show all comments';

  @override
  String get commentsSettingsHeader => 'Comments';

  @override
  String get commentsSettingEnabled => 'Comments';

  @override
  String get commentsSettingEnabledDesc =>
      'Show the Comments tab on titles and sign in to the comment server with your AniList account';

  @override
  String get commentsSettingAlerts => 'Reply notifications';

  @override
  String get commentsSettingAlertsDesc =>
      'Notify me when someone replies to my comments';

  @override
  String get commentsNoticeReplyTitle => 'New comment reply';

  @override
  String commentsNoticeReply(String name) {
    return '$name replied to your comment';
  }

  @override
  String get commentsNoticeWarningTitle => 'You received a warning';

  @override
  String get commentsNoticeWarning => 'Be more thoughtful with your comments';

  @override
  String get commentsNoticeUpdateTitle => 'Update from Dantotsu';

  @override
  String get barcodeTitle => 'Scan a barcode';

  @override
  String get barcodeTooltip => 'Find a manga or novel from its barcode';

  @override
  String get barcodeIntro =>
      'Point the camera at the barcode on the back of a volume, or type its ISBN.';

  @override
  String get barcodeIntroManual =>
      'Type the ISBN printed above the barcode on the back of a volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'That is not a valid ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'No book found for $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'The camera is not available. Allow camera access or type the ISBN instead.';

  @override
  String get themesTitle => 'Openings & endings';

  @override
  String get themesOpening => 'Opening';

  @override
  String get themesEnding => 'Ending';

  @override
  String get themesPlayVideo => 'Play video';

  @override
  String get themesPlayAudio => 'Play audio only';

  @override
  String get themesOpenSite => 'Open on AnimeThemes';

  @override
  String get themesCredit => 'Themes from AnimeThemes';

  @override
  String get themesVersions => 'Versions';

  @override
  String get muTitle => 'MangaUpdates';

  @override
  String get muReleases => 'Recent releases';

  @override
  String get muNoReleases => 'No recent releases';

  @override
  String get muLicensed => 'Licensed';

  @override
  String get muOpen => 'View on MangaUpdates';

  @override
  String get muCredit => 'Data from MangaUpdates';

  @override
  String get muPublishers => 'Publishers';

  @override
  String get sauceTitle => 'Find the source';

  @override
  String get sauceIntro =>
      'Upload a manga page or an artwork, or paste its link, to find where it comes from.';

  @override
  String get sauceKeyTitle => 'SauceNAO API key';

  @override
  String get sauceKeyHint => 'Optional, raises the daily search limit';

  @override
  String get sauceKeyDesc => 'Get a free key at saucenao.com/user.php';

  @override
  String get sauceSearchTitle => 'Search this title';

  @override
  String get sauceOpen => 'Open source';

  @override
  String get sauceCredit => 'Image search by SauceNAO';

  @override
  String get sauceEmpty => 'No match found';

  @override
  String get sauceTooltip => 'Find the source of a manga page or artwork';

  @override
  String get sauceLowMatch => 'Low match';

  @override
  String get trendzTitle => 'Anime charts';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Female characters';

  @override
  String get trendzMale => 'Male characters';

  @override
  String get trendzCouple => 'Couples';

  @override
  String get trendzCredit => 'Weekly charts by AniTrendz';

  @override
  String get trendzNew => 'NEW';

  @override
  String get trendzSearch => 'Search this title';

  @override
  String get trendzEmpty => 'The chart is empty';

  @override
  String get shareCard => 'Share card';

  @override
  String get shareCardList => 'Share list card';

  @override
  String get muNotFound => 'No MangaUpdates match for this title';

  @override
  String get shareCardWorking => 'Making the card…';

  @override
  String get shareCardSaved => 'Card saved';

  @override
  String get shareCardFailed => 'Could not make the card';

  @override
  String get shareCardListEmpty => 'Your list has nothing to share yet';

  @override
  String get shareCardTop => 'My top picks';

  @override
  String themesEpisodes(String eps) {
    return 'Episodes $eps';
  }

  @override
  String muLatest(String count) {
    return 'Chapter $count';
  }

  @override
  String muRating(String rating, String votes) {
    return '$rating from $votes votes';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% match';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Week $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count votes';
  }

  @override
  String trendzPeak(String rank) {
    return 'Peak #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count weeks in the top ten';
  }

  @override
  String shareCardEntries(String count) {
    return '$count titles';
  }

  @override
  String get imageSearchTitle => 'Search by image';

  @override
  String get imageSearchTooltip => 'Find an anime from a screenshot';

  @override
  String get imageSearchIntro =>
      'Pick a screenshot or paste an image link and trace.moe will find the episode and the moment it comes from.';

  @override
  String get imageSearchPick => 'Choose image';

  @override
  String get imageSearchLinkHint => 'Paste an image link';

  @override
  String get imageSearchGo => 'Search';

  @override
  String get imageSearchEmpty => 'No match found';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episode $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'at $time';
  }

  @override
  String get imageSearchPreview => 'Preview clip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% match';
  }

  @override
  String get imageSearchCredit => 'Powered by trace.moe';

  @override
  String get imageSearchOpenFailed => 'Couldn\'t open this title';

  @override
  String get groups => 'Groups';

  @override
  String get groupsYours => 'Your groups';

  @override
  String get groupsPopular => 'Popular';

  @override
  String get groupsNew => 'New';

  @override
  String get groupsFeatured => 'Featured';

  @override
  String get groupsSearch => 'Search groups';

  @override
  String get groupsAll => 'All';

  @override
  String get groupsEmpty => 'No groups found';

  @override
  String get groupsEmptyYours => 'You haven\'t joined any groups yet';

  @override
  String get groupsSignIn => 'Sign in to see the groups you joined';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count members',
      one: '1 member',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Join';

  @override
  String get groupsJoined => 'Joined';

  @override
  String get groupsLeave => 'Leave group';

  @override
  String get groupsLeaveAsk =>
      'You\'ll stop seeing this group\'s posts in your feed.';

  @override
  String get groupsJoinFailed =>
      'Couldn\'t join this group, it may be invite only';

  @override
  String get groupsLeaveFailed => 'Couldn\'t leave this group';

  @override
  String get groupsPosts => 'Posts';

  @override
  String get groupsMembersTab => 'Members';

  @override
  String get groupsAbout => 'About';

  @override
  String get groupsRules => 'Rules';

  @override
  String get groupsPrivacyOpen => 'Open';

  @override
  String get groupsPrivacyRestricted => 'Restricted';

  @override
  String get groupsPrivacyClosed => 'Closed';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Couldn\'t load this group';

  @override
  String get groupsNewPost => 'Post to group';

  @override
  String get groupsPostHint => 'Share something with the group';

  @override
  String get groupsOpenInBrowser => 'Open in browser';

  @override
  String get groupsCategory => 'Category';

  @override
  String get groupsLanguage => 'Language';

  @override
  String get groupsCreated => 'Created';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leaders',
      one: '1 leader',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacy';

  @override
  String get notificationsAll => 'All';

  @override
  String get notificationsAiring => 'Airing';

  @override
  String get notificationsMedia => 'New titles';

  @override
  String get notificationsReplies => 'Replies';

  @override
  String get notificationsMentions => 'Mentions';

  @override
  String get notificationsMessages => 'Messages';

  @override
  String get notificationsLikes => 'Likes';

  @override
  String get notificationsFollows => 'Follows';

  @override
  String get notificationsNoServices =>
      'No signed-in service has notifications';

  @override
  String get notificationsNoServicesMessage =>
      'Sign in to a service that sends notifications and they will show up here.';

  @override
  String get notificationsEmptyKind => 'Nothing in this category yet';

  @override
  String get notificationsCommentsEmpty => 'No comment notifications';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Replies to your comments and announcements from Dantotsu show up here.';

  @override
  String get notificationsSettings => 'Notification settings';

  @override
  String get notificationsPollTitle => 'Check for new notifications';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Every $minutes minutes while the app is open';
  }

  @override
  String get notificationsNotifyAbout => 'Notify me about';

  @override
  String get notificationsCommentsHeader => 'Comment notifications';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Show a system notification for each unread $service notification while the app is running.';
  }

  @override
  String get notificationsTestSent => 'Test notification sent';

  @override
  String get notificationsTestDenied =>
      'Notifications are not allowed for Dartotsu. Turn them on in system settings.';

  @override
  String get notificationsTestHint => 'Long press to send a test notification';

  @override
  String get notificationsTestSample => 'This is a test notification';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name replied to your comment in $media';
  }

  @override
  String get imageSearchNotLink => 'That doesn\'t look like a link';

  @override
  String get imageSearchQuota => 'Search quota exceeded';

  @override
  String get imageSearchBusy => 'Too many requests, try again in a moment';

  @override
  String imageSearchFailed(int code) {
    return 'Search failed ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count new notifications';
  }

  @override
  String get reactionsTitle => 'Reactions';

  @override
  String get reactionsNeedEntry =>
      'Add this title to your list before reacting';

  @override
  String get reactionsAdd => 'Add a reaction';

  @override
  String get reactionsHint => 'What did you think? (short and spoiler-free)';

  @override
  String get reactionsPost => 'Post';

  @override
  String get reactionsFailed => 'Couldn\'t update the reaction';

  @override
  String get settingsWatch => 'Watch & read';

  @override
  String get settingsWatchDesc =>
      'Episode lists, source matching and episode details';

  @override
  String get watchSettingsLayout => 'Episode list';

  @override
  String get watchSettingsSources => 'Sources';

  @override
  String get watchSettingsMetadata => 'Episode details';

  @override
  String get watchLayout => 'Layout';

  @override
  String get watchListView => 'List';

  @override
  String get watchGridView => 'Grid';

  @override
  String get watchCompactView => 'Compact';

  @override
  String get watchDefaultLayoutDesc =>
      'How episodes and chapters are laid out until you change it for a title';

  @override
  String get watchChunkSize => 'Range size';

  @override
  String get watchChunkSizeDesc =>
      'How many episodes or chapters each range tab holds';

  @override
  String get watchShowDescription => 'Show descriptions';

  @override
  String get watchShowDescriptionDesc =>
      'Show the episode summary under each title in the list layout';

  @override
  String get watchShowFiller => 'Show filler episodes';

  @override
  String get watchShowFillerDesc =>
      'Turn off to hide episodes marked as filler';

  @override
  String get watchBlurUnwatched => 'Hide spoiler thumbnails';

  @override
  String get watchBlurUnwatchedDesc =>
      'Blur the thumbnail of episodes you have not watched yet';

  @override
  String get watchResumeShelf => 'Resume shelf';

  @override
  String get watchResumeShelfDesc => 'Show the Resume row on Home';

  @override
  String get watchMarkOnLongPress => 'Long press marks progress';

  @override
  String get watchMarkOnLongPressDesc =>
      'Long press an episode or chapter to mark it watched or unwatched';

  @override
  String get watchMatching => 'Source matching';

  @override
  String get watchMatchingDesc =>
      'Closest takes the best search result. Exact only accepts a near-identical title and leaves the rest for you to pick.';

  @override
  String get watchMatchClosest => 'Closest match';

  @override
  String get watchMatchExact => 'Exact match only';

  @override
  String get watchMetadataDesc =>
      'Where episode titles, summaries, thumbnails, air dates and filler flags come from. Drag to set priority; the first source with a value wins.';

  @override
  String get watchMetaAniZipDesc =>
      'Episode titles, summaries, stills and air dates';

  @override
  String get watchMetaKitsuDesc =>
      'Episode titles, descriptions and thumbnails';

  @override
  String get watchMetaSimklDesc =>
      'Episode titles, descriptions, stills and air dates';

  @override
  String get watchMetaAniListDesc =>
      'Streaming episode titles, thumbnails and the airing schedule';

  @override
  String get watchMetaTenraiDesc =>
      'MyAnimeList episode titles, air dates, filler and recap flags through Tenrai';

  @override
  String get watchClearMetadata => 'Refresh episode details';

  @override
  String get watchClearMetadataDesc =>
      'Forget the cached episode details so they are fetched again';

  @override
  String get watchMetadataCleared => 'Episode details will be fetched again';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Episodes',
      one: '1 Episode',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Chapters',
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
  String get watchSearching => 'Searching…';

  @override
  String watchSearchingFor(String term) {
    return 'Searching: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Selected: $title';
  }

  @override
  String watchFound(String title) {
    return 'Found: $title';
  }

  @override
  String get watchNothingFound => 'Nothing found on this source';

  @override
  String get watchSearchFailed => 'The source search failed';

  @override
  String get watchLoadFailed => 'Couldn\'t load the list';

  @override
  String get watchSignInToTrack => 'Sign in to track your progress';

  @override
  String watchInstallSource(String action) {
    return 'Install an extension to start $action';
  }

  @override
  String get watchSourceMissing => 'This source isn\'t installed';

  @override
  String get watchWrongTitle => 'Wrong title?';

  @override
  String get watchSearchAgain => 'Search again';

  @override
  String watchSearchSource(String source) {
    return 'Search $source';
  }

  @override
  String get watchSource => 'Source';

  @override
  String get watchOptions => 'Options';

  @override
  String get watchReverse => 'Reverse order';

  @override
  String get watchScanlators => 'Groups';

  @override
  String get watchResetOptions => 'Reset these options';

  @override
  String get watchContinue => 'Continue';

  @override
  String get watchStart => 'Start';

  @override
  String get watchPlay => 'Play';

  @override
  String get watchRead => 'Read';

  @override
  String get watchMarkWatched => 'Mark watched';

  @override
  String get watchMarkUnwatched => 'Mark unwatched';

  @override
  String get watchMarkRead => 'Mark read';

  @override
  String get watchMarkUnread => 'Mark unread';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'No episodes found';

  @override
  String get watchNoChapters => 'No chapters found';

  @override
  String get watchSourceTools => 'Source tools';

  @override
  String get watchSourceSettings => 'Source settings';

  @override
  String get watchOpenWebView => 'Open in web view';

  @override
  String get watchOpenWebViewDesc =>
      'Solve a Cloudflare check or log in; the cookies are shared with the source requests';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies saved for $host',
      one: '1 cookie saved for $host',
      zero: 'No cookies saved for $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare clearance active, $time';
  }

  @override
  String get watchClearanceMissing => 'No Cloudflare clearance cookie';

  @override
  String get watchClearanceSession => 'lasts until the app closes';

  @override
  String get watchAgentShared =>
      'Requests use the web view\'s user agent, which Cloudflare checks';

  @override
  String get watchAgentCustom =>
      'A custom user agent is set, so a Cloudflare clearance from the web view may be rejected';

  @override
  String get watchTestConnection => 'Test connection';

  @override
  String get watchSolveChallenge => 'Solve it';

  @override
  String watchProbeOk(int code) {
    return 'Reachable (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare is still asking for a check';

  @override
  String watchProbeBlocked(int code) {
    return 'Blocked by the site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'The site could not be reached';

  @override
  String get watchClearCookies => 'Clear cookies for this site';

  @override
  String get watchCookiesCleared => 'Cookies cleared';

  @override
  String get watchResults => 'Results';

  @override
  String get watchMetaSource => 'Episode details from';

  @override
  String get watchMetaAuto => 'Automatic';

  @override
  String get watchMetaOff => 'Off';

  @override
  String get settingsPlayer => 'Player';

  @override
  String get settingsPlayerDesc =>
      'Playback, subtitles, shaders, mpv and opening files';

  @override
  String get playerSettingsTitle => 'Postavke Playera';

  @override
  String get playerSectionPlayback => 'Playback';

  @override
  String get playerSectionSkip => 'Skipping';

  @override
  String get playerSectionGestures => 'Controls';

  @override
  String get playerSectionSubtitles => 'Subtitles';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Engine';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSectionOpen => 'Open media';

  @override
  String get playerSpeed => 'Playback speed';

  @override
  String get playerCursedSpeed => 'Extra speeds';

  @override
  String get playerCursedSpeedDesc => 'Add speeds up to 10x to the list';

  @override
  String get playerResize => 'Resize mode';

  @override
  String get playerFitFit => 'Fit';

  @override
  String get playerFitCover => 'Cover';

  @override
  String get playerFitStretch => 'Stretch';

  @override
  String get playerSkipDuration => 'Skip button length';

  @override
  String get playerSkipDurationDesc =>
      'Seconds the skip button jumps outside openings and endings';

  @override
  String get playerSeekDuration => 'Double tap seek';

  @override
  String get playerSeekDurationDesc =>
      'Seconds to jump on a double tap or arrow key';

  @override
  String get playerAutoPlay => 'Play next automatically';

  @override
  String get playerAutoPlayDesc => 'Start the next episode when this one ends';

  @override
  String get playerResume => 'Resume where you left off';

  @override
  String get playerResumeDesc => 'Continue an episode from its last position';

  @override
  String get playerOrientation => 'Orientation';

  @override
  String get playerOrientationAuto => 'Follow the device';

  @override
  String get playerOrientationLandscape => 'Landscape';

  @override
  String get playerOrientationPortrait => 'Portrait';

  @override
  String get playerAutoSkipOpening => 'Skip openings';

  @override
  String get playerAutoSkipEnding => 'Skip endings';

  @override
  String get playerAutoSkipRecap => 'Skip recaps';

  @override
  String get playerAutoSkipDesc =>
      'Jump past it as soon as it starts, using AniSkip and stream timestamps';

  @override
  String get playerSkipOnce => 'Skip once only';

  @override
  String get playerSkipOnceDesc =>
      'Don\'t skip the same part again if you seek back into it';

  @override
  String get playerAdjustBrightness => 'Brightness gesture';

  @override
  String get playerAdjustBrightnessDesc =>
      'Swipe up and down on the left half of the screen';

  @override
  String get playerAdjustVolume => 'Volume gesture';

  @override
  String get playerAdjustVolumeDesc =>
      'Swipe up and down on the right half of the screen';

  @override
  String get playerHoldToSpeed => 'Hold to speed up';

  @override
  String get playerHoldToSpeedDesc =>
      'Press and hold the video to play faster, drag sideways to change the speed';

  @override
  String get playerThumbless => 'Thicker seek bar';

  @override
  String get playerThumblessDesc => 'A thick bar without a thumb';

  @override
  String get playerShowSubtitles => 'Show subtitles';

  @override
  String get playerShowSubtitlesDesc => 'Turn off to hide every subtitle track';

  @override
  String get playerSubtitleLanguage => 'Preferred subtitle language';

  @override
  String get playerSubtitleSize => 'Subtitle size';

  @override
  String get playerSubtitleWeight => 'Subtitle weight';

  @override
  String get playerSubtitleBottom => 'Subtitle bottom padding';

  @override
  String get playerSubtitleFont => 'Subtitle font';

  @override
  String get playerSubtitleColor => 'Subtitle colour';

  @override
  String get playerSubtitleBackground => 'Subtitle background';

  @override
  String get playerSubtitleOutline => 'Subtitle outline';

  @override
  String get playerLibass => 'Use libass';

  @override
  String get playerLibassDesc =>
      'Render styled .ass subtitles. The size, colour and font above then no longer apply';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Enable shaders';

  @override
  String get playerShadersEnableDesc =>
      'Upscale and clean the picture with GLSL shaders such as Anime4K';

  @override
  String get playerShadersOff => 'Shaders off';

  @override
  String get playerShadersMissing => 'Anime4K is not installed';

  @override
  String get playerShadersMissingDesc =>
      'Download the Anime4K shader pack (about 0.8 MB) to use the built-in modes.';

  @override
  String get playerShadersDownload => 'Download Anime4K';

  @override
  String get playerShadersPreview => 'Preview on this frame';

  @override
  String get playerShadersUse => 'Use this';

  @override
  String get playerPicture => 'Picture';

  @override
  String get playerColors => 'Colors';

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
  String get playerColorReset => 'Reset';

  @override
  String get playerColorAdjust => 'Adjust';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed => 'Couldn\'t grab a frame to preview';

  @override
  String get playerShadersCustomFiles => 'Your shaders';

  @override
  String get playerShadersCustom => 'Custom shaders';

  @override
  String get playerShadersImport => 'Import .glsl';

  @override
  String get playerShadersNone =>
      'Import your own .glsl or .hook files and tick them to chain them';

  @override
  String get playerShadersBadFile => 'Choose a .glsl or .hook shader file';

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
  String get playerAudioChannels => 'Audio channels';

  @override
  String get playerBuffer => 'Buffer size (MB)';

  @override
  String get playerBufferDesc => 'Memory the player may use to buffer a stream';

  @override
  String get playerUseMpvConf => 'Use mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Apply the options in your mpv.conf when playback starts';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edit the mpv configuration';

  @override
  String get playerMpvConfDesc =>
      'One option per line, like --hwdec=auto in a normal mpv.conf. Profiles in [brackets] are ignored.';

  @override
  String get playerMpvConfSaved => 'mpv.conf saved';

  @override
  String get playerUseScripts => 'Use mpv scripts';

  @override
  String get playerUseScriptsDesc =>
      'Load the plugins from the scripts folder. They need a libmpv build with Lua or JavaScript support';

  @override
  String get playerScripts => 'mpv scripts';

  @override
  String get playerScriptsManage => 'Add, remove and switch plugins';

  @override
  String get playerScriptsAdd => 'Add script';

  @override
  String get playerScriptsDesc =>
      'Lua, JavaScript and native plugins placed here are loaded when playback starts.';

  @override
  String get playerScriptsNone => 'No scripts yet';

  @override
  String get playerScriptsBadFile => 'Choose a .lua, .js or native plugin file';

  @override
  String get playerTuning => 'Advanced video tuning';

  @override
  String get playerTuningDesc =>
      'Override sync, caching, scaling and tone mapping. Wrong values can hurt playback';

  @override
  String get playerVideoSync => 'Video sync';

  @override
  String get playerInterpolation => 'Frame interpolation';

  @override
  String get playerInterpolationDesc =>
      'Smooth motion, needs display-resample sync';

  @override
  String get playerPitch => 'Pitch correction';

  @override
  String get playerPitchDesc => 'Keep voices natural at other speeds';

  @override
  String get playerCacheSeconds => 'Cache (seconds)';

  @override
  String get playerReadahead => 'Read ahead (seconds)';

  @override
  String get playerThreads => 'Decoder threads';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Reduce colour banding in gradients';

  @override
  String get playerDebandIterations => 'Deband iterations';

  @override
  String get playerDebandThreshold => 'Deband threshold';

  @override
  String get playerCorrectDownscaling => 'Correct downscaling';

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
  String get playerOpenFiles => 'Open video files';

  @override
  String get playerOpenFilesDesc => 'Play files from this device';

  @override
  String get playerOpenFolder => 'Open a folder';

  @override
  String get playerOpenFolderDesc =>
      'Play every video in a folder as a playlist';

  @override
  String get playerNetworkStream => 'Network stream';

  @override
  String get playerNetworkStreamDesc => 'Open a direct video or HLS link';

  @override
  String get playerStreamUrl => 'Stream URL';

  @override
  String get playerStreamReferer => 'Referer (optional)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream a magnet link or .torrent file';

  @override
  String get playerMagnetLink => 'Magnet link or torrent URL';

  @override
  String get playerPickTorrent => 'Choose a .torrent file';

  @override
  String get playerTorrentMissing =>
      'Install the torrent addon from Settings > Addons first';

  @override
  String get playerNoVideos => 'No playable videos found';

  @override
  String get playerReset => 'Reset player settings';

  @override
  String get playerResetDesc => 'Restore every player option to its default';

  @override
  String get playerResetConfirm => 'Reset all player settings?';

  @override
  String get playerResetDone => 'Player settings reset';

  @override
  String get playerQuality => 'Quality';

  @override
  String get playerStreams => 'Streams';

  @override
  String get playerAutoSelect => 'Auto select stream';

  @override
  String get playerAutoSelectDesc =>
      'Pick the stream most like your last choice for this title';

  @override
  String get playerLoadingStreams => 'Looking for streams…';

  @override
  String get playerNoStreams => 'This episode has no streams';

  @override
  String get playerNoStreamsTitle => 'No streams found';

  @override
  String get playerFailed => 'Playback failed';

  @override
  String get playerTorrentNeeded => 'This stream is a torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Install the torrent addon to play magnet links and .torrent files';

  @override
  String get playerOpenAddons => 'Open addons';

  @override
  String get playerTryAnotherStream => 'Try another stream';

  @override
  String get playerEpisodes => 'Episodes';

  @override
  String get playerLock => 'Lock controls';

  @override
  String get playerFullscreen => 'Fullscreen';

  @override
  String get settingsReader => 'Reader';

  @override
  String get settingsReaderDesc => 'Manga, manhwa and novel reading';

  @override
  String get readerChapters => 'Chapters';

  @override
  String get readerSettingsTitle => 'Reader settings';

  @override
  String get readerPreviousChapter => 'Previous chapter';

  @override
  String get readerNextChapter => 'Next chapter';

  @override
  String get readerFirstChapter => 'This is the first chapter';

  @override
  String get readerLastChapter => 'You\'re all caught up';

  @override
  String get readerFailed => 'Couldn\'t open this chapter';

  @override
  String get readerNoText => 'This chapter has no text';

  @override
  String get readerPerTitle => 'Only for this title';

  @override
  String get readerPerTitleDesc =>
      'Keep these reader settings for this title only';

  @override
  String get readerSectionReading => 'Reading';

  @override
  String get readerSectionControls => 'Controls';

  @override
  String get readerSectionDisplay => 'Display';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerSectionReset => 'Reset';

  @override
  String get readerMode => 'Reading mode';

  @override
  String get readerModeRtl => 'Right to left';

  @override
  String get readerModeLtr => 'Left to right';

  @override
  String get readerModeVertical => 'Vertical pages';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Continuous scroll';

  @override
  String get readerScale => 'Image scale';

  @override
  String get readerScaleFit => 'Fit screen';

  @override
  String get readerScaleWidth => 'Fit width';

  @override
  String get readerScaleHeight => 'Fit height';

  @override
  String get readerScaleOriginal => 'Original size';

  @override
  String get readerScaleSmart => 'Smart fit';

  @override
  String get readerDoublePage => 'Double pages';

  @override
  String get readerDoublePageDesc => 'Show two pages side by side in landscape';

  @override
  String get readerDoubleTapZoom => 'Double tap to zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zoom a page in and out with a double tap';

  @override
  String get readerAnimate => 'Page animation';

  @override
  String get readerAnimateDesc => 'Animate page turns';

  @override
  String get readerSidePadding => 'Side padding';

  @override
  String get readerSidePaddingDesc => 'Space beside the pages in percent';

  @override
  String get readerPageGap => 'Page gap';

  @override
  String get readerPageGapDesc => 'Space between pages';

  @override
  String get readerAutoNext => 'Continue into the next chapter';

  @override
  String get readerAutoNextDesc =>
      'Load the next chapter while you read the end of this one';

  @override
  String get readerPreload => 'Preload pages';

  @override
  String get readerPreloadDesc => 'How many pages to download ahead';

  @override
  String get readerTapZones => 'Tap zones';

  @override
  String get readerTapDefault => 'Default';

  @override
  String get readerTapLShaped => 'L-shaped';

  @override
  String get readerTapKindle => 'Kindle-like';

  @override
  String get readerTapEdge => 'Edges only';

  @override
  String get readerTapOff => 'Disabled';

  @override
  String get readerInvertTaps => 'Invert tap zones';

  @override
  String get readerInvertTapsDesc => 'Swap the previous and next areas';

  @override
  String get readerBackground => 'Background';

  @override
  String get readerBackgroundBlack => 'Black';

  @override
  String get readerBackgroundGray => 'Gray';

  @override
  String get readerBackgroundWhite => 'White';

  @override
  String get readerBackgroundTheme => 'App theme';

  @override
  String get readerFilter => 'Color filter';

  @override
  String get readerFilterNone => 'None';

  @override
  String get readerFilterGrayscale => 'Grayscale';

  @override
  String get readerFilterInvert => 'Invert';

  @override
  String get readerFilterSepia => 'Sepia';

  @override
  String get readerDim => 'Dim';

  @override
  String get readerDimDesc => 'Darken the pages';

  @override
  String get readerPageNumber => 'Page number';

  @override
  String get readerPageNumberDesc => 'Show the page number while reading';

  @override
  String get readerFullscreen => 'Fullscreen';

  @override
  String get readerFullscreenDesc => 'Hide the system bars';

  @override
  String get readerCropBorders => 'Crop borders';

  @override
  String get readerCropBordersDesc =>
      'Trim blank white or black margins from pages';

  @override
  String get readerVolumeKeys => 'Volume keys turn pages';

  @override
  String get readerVolumeKeysDesc =>
      'Volume down goes forward, volume up goes back';

  @override
  String get readerBookmarks => 'Bookmarks';

  @override
  String get readerBookmarkAdd => 'Add bookmark';

  @override
  String get readerBookmarkRemove => 'Remove bookmark';

  @override
  String get readerBookmarksEmpty => 'No bookmarks yet';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Page $page of $total';
  }

  @override
  String get readerAutoScroll => 'Auto scroll';

  @override
  String get readerAutoScrollStop => 'Stop auto scroll';

  @override
  String get readerAutoScrollSpeed => 'Auto scroll speed';

  @override
  String get readerAutoScrollSpeedDesc =>
      'How fast pages scroll or turn on their own';

  @override
  String get readerKeepOn => 'Keep screen on';

  @override
  String get readerKeepOnDesc =>
      'Stop the screen from turning off while reading';

  @override
  String get readerOrientation => 'Orientation';

  @override
  String get readerOrientationFree => 'Free';

  @override
  String get readerOrientationPortrait => 'Portrait';

  @override
  String get readerOrientationLandscape => 'Landscape';

  @override
  String get readerSaveProgress => 'Save progress';

  @override
  String get readerSaveProgressDesc =>
      'Remember your page and mark chapters as read';

  @override
  String get readerReset => 'Reset reader settings';

  @override
  String get readerResetDesc => 'Back to the defaults';

  @override
  String get novelSize => 'Text size';

  @override
  String get novelFont => 'Font';

  @override
  String get novelLineHeight => 'Line height';

  @override
  String get novelParagraph => 'Paragraph spacing';

  @override
  String get novelMargin => 'Margins';

  @override
  String get novelTheme => 'Reader theme';

  @override
  String get novelThemeApp => 'App theme';

  @override
  String get novelThemeLight => 'Light';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Dark';

  @override
  String get novelThemeBlack => 'Black';

  @override
  String get novelJustify => 'Justify text';

  @override
  String get novelJustifyDesc => 'Align text to both edges';

  @override
  String get trackProgressTitle => 'Save progress?';

  @override
  String trackProgressAnime(String name) {
    return 'Track $name on your list as you watch? Choose \"This device only\" to keep it local, or No to save nothing.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Track $name on your list when you finish a chapter? Choose \"This device only\" to keep it local, or No to save nothing.';
  }

  @override
  String get trackProgressRemember => 'Remember my choice';

  @override
  String get trackProgressYes => 'Save';

  @override
  String get trackProgressReset =>
      'Save progress prompt reset for this type, it will ask again';

  @override
  String get trackProgressNo => 'No';

  @override
  String get trackProgressOff => 'Off';

  @override
  String get trackProgressLocal => 'This device only';

  @override
  String get trackProgressSettingAnime => 'Track anime progress';

  @override
  String get trackProgressSettingManga => 'Track manga and novel progress';

  @override
  String get trackProgressSettingDesc =>
      'What to do when you open an episode or finish a chapter';

  @override
  String get trackProgressAsk => 'Ask';

  @override
  String get trackProgressAlways => 'Always';

  @override
  String get trackProgressNever => 'Never';

  @override
  String get dantotsuImport => 'Import from Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Read a Dantotsu settings backup (.ani, or encrypted .sani)';

  @override
  String get dantotsuPick => 'Choose a Dantotsu backup';

  @override
  String get dantotsuNothing => 'Nothing in this file can be imported';

  @override
  String get dantotsuApply => 'Import selected';

  @override
  String dantotsuDone(int done, int total) {
    return 'Imported $done of $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Accounts';

  @override
  String get dantotsuGroupAppearance => 'Appearance';

  @override
  String get dantotsuGroupExtensions => 'Extensions';

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
  String get dantotsuReposAnime => 'Anime extension repositories';

  @override
  String get dantotsuReposManga => 'Manga extension repositories';

  @override
  String get dantotsuReposNovel => 'Novel extension repositories';

  @override
  String get dantotsuUpdates => 'Update check';

  @override
  String get dantotsuComments => 'Comments';

  @override
  String get dantotsuActivity => 'AniList notification polling';

  @override
  String get dantotsuDns => 'DNS provider';

  @override
  String get dantotsuPlayer => 'Player speed and subtitle colours';

  @override
  String get dantotsuWarning =>
      'This file holds login tokens. Keep it private.';

  @override
  String get novelIndent => 'Indent paragraphs';

  @override
  String get novelIndentDesc => 'Start each paragraph with a first-line indent';

  @override
  String get novelLetterSpacing => 'Letter spacing';

  @override
  String get novelSectionTranslate => 'Translation';

  @override
  String get novelTranslateTo => 'Translate to';

  @override
  String get novelTranslateOff => 'Off';

  @override
  String get novelSectionSpeech => 'Text to speech';

  @override
  String get novelSpeechRate => 'Speech speed';

  @override
  String get novelSpeechPitch => 'Speech pitch';

  @override
  String get novelSpeak => 'Read aloud';

  @override
  String get novelSpeakStop => 'Stop reading aloud';

  @override
  String get novelTranslate => 'Translate chapter';

  @override
  String get novelTranslateShowOriginal => 'Show original';

  @override
  String get novelTranslating => 'Translating…';

  @override
  String novelTranslateFailed(String error) {
    return 'Translation failed: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Text to speech is not available on this device';

  @override
  String get novelSpeechVoice => 'Voice';

  @override
  String get novelSpeechVoiceDefault => 'System default';

  @override
  String get novelSpeakPrevious => 'Previous line';

  @override
  String get novelSpeakNext => 'Next line';

  @override
  String get novelTapPaging => 'Tap edges to turn page';

  @override
  String get novelTapPagingDesc =>
      'Tap the left or right side to scroll a page, the middle shows the controls';

  @override
  String novelMinutesLeft(int count) {
    return '$count min left';
  }

  @override
  String get novelBold => 'Bold text';

  @override
  String get novelBoldDesc => 'Use a heavier weight';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Finished $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Next: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Previous: $chapter';
  }

  @override
  String get readerNoPages => 'This chapter has no pages';

  @override
  String get readerLoadingPages => 'Loading pages…';

  @override
  String get readerSlowPage => 'Still loading this page…';

  @override
  String get readerPageFailed => 'Couldn\'t load this page';

  @override
  String get playerShowComments => 'Show comments';

  @override
  String get playerHideComments => 'Hide comments';

  @override
  String get playerSubtitles => 'Subtitles';

  @override
  String get playerSubtitlesOff => 'Subtitles off';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Add subtitle file';

  @override
  String get playerAddAudio => 'Add audio file';

  @override
  String get playerChapters => 'Chapters';

  @override
  String get playerNoChapters => 'No chapters';

  @override
  String get playerTimestamp => 'Timestamp';

  @override
  String get playerAutoPlayDelay => 'Next episode countdown';

  @override
  String get playerWatchedAt => 'Count as watched at';

  @override
  String playerNextIn(int seconds) {
    return 'Next episode in ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Play now';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: will skip automatically for this title';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: will not skip automatically for this title';
  }

  @override
  String get playerAudioLanguage => 'Preferred audio language';

  @override
  String get playerLanguageOrderHint =>
      'Separate languages with commas. The first one found is used.';

  @override
  String get playerPip => 'Picture in picture';

  @override
  String get playerPipRestore => 'Back to the player';

  @override
  String get playerAutoPip => 'Picture in picture on leave';

  @override
  String get playerAutoPipDesc =>
      'Keep playing in a small window when you leave the app';

  @override
  String playerAutoPlaying(String title) {
    return 'Playing $title next…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Couldn\'t install the shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Chapter $number';
  }

  @override
  String get playerPerTitle => 'Only for this title';

  @override
  String get playerPerTitleDesc =>
      'Keep these options for this title and leave your defaults alone';

  @override
  String get playerHoldSpeed => 'Hold speed';

  @override
  String get playerAudioOutput => 'Audio output';

  @override
  String get fontAppDefault => 'App font';

  @override
  String get fontImport => 'Import font';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Subtitle delay';

  @override
  String get playerAudioDelay => 'Audio delay';

  @override
  String get playerDelayReset => 'Reset';

  @override
  String get playerOnlineSubtitles => 'Online subtitles';

  @override
  String get playerOnlineSearchHint => 'Title and episode';

  @override
  String get playerOnlineNone => 'No subtitles found';

  @override
  String playerOnlineFailed(String error) {
    return 'Subtitle search failed: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Could not download this subtitle: $error';
  }

  @override
  String get playerOnlineMatch => 'Matches this file';

  @override
  String get playerOnlineEpisode => 'Episode match';

  @override
  String playerOnlineDownloads(int count) {
    return '$count downloads';
  }

  @override
  String get playerSeekPreview => 'Seek preview';

  @override
  String get playerSeekPreviewDesc =>
      'Show a small frame preview above the seek bar while scrubbing. Opens a second low resolution decoder, so it uses extra data on streams.';

  @override
  String get playerSettingsChip => 'Settings';

  @override
  String get playerAudioDevice => 'Audio device';

  @override
  String get settingsDownloads => 'Downloads';

  @override
  String get settingsDownloadsDesc =>
      'Offline episodes, queue and offline mode';

  @override
  String get downloadsTitle => 'Downloads';

  @override
  String get downloadsOpenDesc =>
      'See the queue and everything saved on this device';

  @override
  String get downloadTitle => 'Download';

  @override
  String get downloadAlready => 'Already downloaded or in the queue';

  @override
  String get downloadPickStream => 'Download which stream?';

  @override
  String get downloadPickSubtitle => 'Download which subtitle?';

  @override
  String get downloadPickAudio => 'Download which audio track?';

  @override
  String get downloadNoAudio => 'No extra audio';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'No subtitle';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'This stream is an HLS playlist. Downloading it needs the FFmpeg addon.';

  @override
  String get downloadSourceMissing =>
      'The source for this episode is not installed';

  @override
  String get downloadWaitingConnection => 'Waiting for a connection';

  @override
  String get downloadSubtitles => 'Subtitles';

  @override
  String get downloadDownloaded => 'Downloaded';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Delete download';

  @override
  String get downloadCancel => 'Cancel';

  @override
  String get downloadPause => 'Pause';

  @override
  String get downloadPaused => 'Paused';

  @override
  String get downloadResume => 'Resume';

  @override
  String get downloadPauseAll => 'Pause all';

  @override
  String get downloadResumeAll => 'Resume all';

  @override
  String get downloadQueuedState => 'Waiting in the queue';

  @override
  String get downloadResolving => 'Getting the stream…';

  @override
  String get downloadUsedFallback => 'No matching stream, used the first one';

  @override
  String get downloadTabQueue => 'Queue';

  @override
  String get downloadTabDone => 'Done';

  @override
  String get downloadTabFailed => 'Failed';

  @override
  String get downloadEmptyQueue => 'Nothing is downloading';

  @override
  String get downloadEmptyDone => 'Nothing downloaded yet';

  @override
  String get downloadEmptyFailed => 'No failed downloads';

  @override
  String get downloadNext => 'Next episode';

  @override
  String downloadNextN(int count) {
    return 'Next $count episodes';
  }

  @override
  String downloadUnwatched(int count) {
    return 'All unwatched ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'This range ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'All episodes ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episodes queued',
      one: '1 episode queued',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name downloaded';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name failed to download';
  }

  @override
  String downloadStorage(String size) {
    return '$size used by downloads';
  }

  @override
  String get downloadQueueHeader => 'Queue';

  @override
  String get downloadParallel => 'Downloads at once';

  @override
  String get downloadParallelDesc =>
      'Run one download at a time or several together';

  @override
  String get downloadOneByOne => 'One by one';

  @override
  String get downloadNotifications => 'Download notifications';

  @override
  String get downloadNotificationsDesc =>
      'Live progress where the system supports it, otherwise a note when a download finishes';

  @override
  String get downloadNotifyLive => 'Live';

  @override
  String get downloadNotifyDone => 'When done';

  @override
  String get downloadNotifyOff => 'Off';

  @override
  String get downloadInfoFile => 'Write an info file next to each download';

  @override
  String get downloadInfoFileDesc =>
      'Saves the stream, quality, subtitle and skip times as a small .json file';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto goes offline only when the app starts without a connection. Always stays offline until you change it.';

  @override
  String get offlineModeOff => 'Off';

  @override
  String get offlineModeAlways => 'Always';

  @override
  String get offlineModeOn =>
      'Offline mode is on. Changes are saved here and sent when you are back online.';

  @override
  String get offlineLost => 'You\'re offline. Changes are saved on this device';

  @override
  String get offlineBack => 'Back online. Syncing your changes';

  @override
  String get offlineSaved =>
      'Saved on this device, it will sync when you are online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changes synced',
      one: '1 change synced',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changes waiting to sync',
      one: '1 change waiting to sync',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Changes waiting to sync';

  @override
  String get offlinePendingNone => 'Nothing waiting';

  @override
  String get offlineSyncNow => 'Sync now';

  @override
  String get offlineDiscard => 'Discard';

  @override
  String get downloadNotOffline =>
      'This episode is not downloaded, so it is not available offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Next chapter';

  @override
  String downloadNextChapters(int count) {
    return 'Next $count chapters';
  }

  @override
  String downloadUnread(int count) {
    return 'All unread ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'All chapters ($count)';
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
  String get downloadFfmpegTitle => 'FFmpeg addon needed';

  @override
  String get downloadFfmpegBody =>
      'This stream is an HLS playlist. The FFmpeg addon joins its pieces into one mp4 file. Without it the pieces are kept in an episode folder and play from there.';

  @override
  String get downloadFfmpegInstall => 'Install';

  @override
  String get downloadFfmpegInstalling =>
      'Installing FFmpeg, this can take a while…';

  @override
  String get downloadFinishing => 'Joining the pieces into one file…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total parts';
  }

  @override
  String get downloadTorrentNoFile =>
      'The torrent has no video file to download';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Downloading $count items',
      one: 'Downloading 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Delete watched downloads';

  @override
  String get downloadAutoDeleteDesc =>
      'Removes a download once your progress reaches that episode or chapter';

  @override
  String get downloadConnections => 'Connections per download';

  @override
  String get downloadConnectionsDesc =>
      'Splits a big file into parts fetched at the same time. Some servers limit this.';

  @override
  String get downloadPlayChoice => 'Play from';

  @override
  String get downloadPlayLocalDesc => 'The file saved on this device';

  @override
  String get downloadPlayStream => 'Stream online';

  @override
  String get downloadPlayStreamDesc => 'Load the episode from the source';

  @override
  String get offlineFeedTitle => 'Downloaded on this device';

  @override
  String get offlineFeedEmpty =>
      'Download something while you are online and it shows up here';

  @override
  String get offlineEnabled => 'Offline mode is on';

  @override
  String get offlineDisabled => 'Offline mode is off';

  @override
  String get downloadReadChoice => 'Read from';

  @override
  String get downloadReadLocalDesc => 'The pages saved on this device';

  @override
  String get downloadReadOnline => 'Read online';

  @override
  String get downloadReadOnlineDesc => 'Load the chapter from the source';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Delete $name from this device?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Cancel the download of $name? What was already downloaded is deleted.';
  }

  @override
  String get downloadFfmpegFolder => 'Keep as folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Throw away $count changes that were never sent? This can\'t be undone.',
      one: 'Throw away the change that was never sent? This can\'t be undone.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Waiting for Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Paused on a metered connection';

  @override
  String get downloadWifiOnly => 'Wi-Fi only';

  @override
  String get downloadWifiOnlyDesc =>
      'Downloads wait while you are on mobile data';

  @override
  String get downloadMetered => 'Pause on metered connections';

  @override
  String get downloadMeteredDesc =>
      'Also waits on Wi-Fi that your device marks as metered';

  @override
  String get downloadSpeedLimit => 'Speed limit';

  @override
  String get downloadSpeedLimitDesc => 'Caps the total download speed';

  @override
  String get downloadUnlimited => 'Unlimited';

  @override
  String get downloadMoveToTop => 'Move to top';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seeds · $peers peers';
  }

  @override
  String get downloadTorrentFile => 'Which file?';

  @override
  String get downloadTorrentAuto => 'Match the episode automatically';

  @override
  String get downloadTorrentLoading => 'Reading the torrent…';

  @override
  String get watchAutoSource => 'Switch to the next source automatically';

  @override
  String get watchAutoSourceDesc =>
      'If the source can\'t find the title or fails to load, try the next installed source';

  @override
  String get extensionTest => 'Test extensions';

  @override
  String get extensionTestCopy => 'Copy the failures and their logs';

  @override
  String get extensionTestQuery => 'Search term';

  @override
  String get extensionTestRun => 'Run';

  @override
  String get extensionTestStop => 'Stop';

  @override
  String get extensionTestNone => 'No installed extensions of this type';

  @override
  String get extensionTestNotRun => 'Not tested yet';

  @override
  String get extensionTestSearch => 'Search';

  @override
  String get extensionTestDetail => 'Details';

  @override
  String get extensionTestUnits => 'Episodes / chapters';

  @override
  String get extensionTestLinks => 'Streams / pages';

  @override
  String extensionTestFailedAt(String step) {
    return 'Failed at $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done of $total tested · $passed passed · $failed failed';
  }

  @override
  String get extensionTestCopyLogs => 'Copy everything with the full logs';

  @override
  String get onboardingFeaturesTitle => 'All of it in one place';

  @override
  String get onboardingFeaturesBody =>
      'Everything you track, watch and read, without juggling apps.';

  @override
  String get onboardingFeatureTrack => 'Track everything';

  @override
  String get onboardingFeatureTrackDesc =>
      'Lists, progress and scores on AniList, MyAnimeList, Simkl, Kitsu and MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Watch and read';

  @override
  String get onboardingFeatureWatchDesc =>
      'Install extensions and stream anime or read manga and novels right in the app.';

  @override
  String get onboardingFeatureOffline => 'Take it offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Download episodes and chapters, and keep going without a connection.';

  @override
  String get onboardingFeatureSync => 'Keep lists in sync';

  @override
  String get onboardingFeatureSyncDesc =>
      'Mirror your list across services, or let whichever is ahead win.';

  @override
  String get onboardingThemeShape => 'Colours';

  @override
  String get onboardingServices => 'Works with';
}
