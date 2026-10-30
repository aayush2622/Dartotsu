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
  String get appTagline => 'এনিমে আৰু মাংগা ট্ৰেক কৰাৰ\nনতুন আৰু শ্ৰেষ্ঠ এপ';

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
  String get loadMore => 'অধিক লোড কৰা';

  @override
  String get login => 'লগইন';

  @override
  String get continueAsGuest => 'গেষ্ট হিচাপে আগবাঢ়া';

  @override
  String get getStarted => 'আৰম্ভ কৰোঁ আহা';

  @override
  String get loginWithToken => 'টোকেনেৰে লগইন';

  @override
  String get pasteTokenHint => 'তোমাৰ এক্সেছ টোকেন পেষ্ট কৰা';

  @override
  String loginTo(String service) {
    return '$service-ত লগইন কৰা';
  }

  @override
  String get settings => 'ছেটিংছ';

  @override
  String get account => 'একাউণ্ট';

  @override
  String get about => 'বিষয়ে';

  @override
  String get language => 'ভাষা';

  @override
  String get animationSpeed => 'এনিমেশ্যন';

  @override
  String get animationSpeedDesc =>
      'গোটেই এপটোত ট্ৰেন্জিশ্যন আৰু এণ্ট্ৰি ইফেক্টৰ গতি';

  @override
  String get animationSpeedOff => 'বন্ধ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এক্সটেনছন',
      one: 'এক্সটেনছন',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'অজ্ঞাত উৎস';

  @override
  String get install => 'ইনষ্টল';

  @override
  String get update => 'আপডেট';

  @override
  String get uninstall => 'আনইনষ্টল';

  @override
  String get updateInstallCancelled =>
      'ইনষ্টল বাতিল কৰা হ’ল। Android এ যদি কৈছিল যে এপটো ইনষ্টল হৈ থকাটোৰ সৈতে সংঘাত হৈছে, তেন্তে চিগনেচাৰ বেলেগ: প্ৰথমে বৰ্তমানৰ সংস্কৰণটো আনইনষ্টল কৰক, তাৰ পিছত আপডেট ইনষ্টল কৰক';

  @override
  String updateInstallFailed(String error) {
    return 'আপডেট হোৱা নাই: $error';
  }

  @override
  String get appLock => 'এপ লক';

  @override
  String get appLockDesc =>
      'এপ খোলোতে বা কিছুসময়ৰ পিছত ঘূৰি আহিলে পাছকোড সোধক';

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
  String get appLockUnlock => 'আপোনাৰ পাছকোড দিয়ক';

  @override
  String get appLockWrong => 'পাছকোড ভুল';

  @override
  String appLockWait(String seconds) {
    return 'বহুত বেছি চেষ্টা কৰিলা, $seconds ছেকেণ্ড অপেক্ষা কৰা';
  }

  @override
  String get appLockNew => 'এটা পাছকোড বাছক';

  @override
  String get appLockNewHint => '৪ ৰ পৰা ৮ টা সংখ্যা';

  @override
  String get appLockConfirm => 'আকৌ এবাৰ দিয়ক';

  @override
  String get appLockMismatch => 'পাছকোড দুটা মিলা নাই';

  @override
  String get appLockOn => 'পাছকোড ছেট হ’ল';

  @override
  String get appLockRemoveTitle => 'লক বন্ধ কৰিবলৈ আপোনাৰ পাছকোড দিয়ক';

  @override
  String get installFailed => 'ইনষ্টল হোৱা নাই';

  @override
  String get updateFailed => 'আপডেট হোৱা নাই';

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
  String get noSourceSettings => 'এই উৎসত কোনো ছেটিংছ নাই';

  @override
  String get addPluginRepository => 'প্লাগইন ৰিপজিটৰী যোগ কৰা';

  @override
  String get pluginIndexUrlHint => 'প্লাগইন ইণ্ডেক্স URL';

  @override
  String get addRepository => 'ৰিপজিটৰী যোগ কৰা';

  @override
  String get pluginRepoUpdated => 'প্লাগইন ৰিপজিটৰী আপডেট হৈছে';

  @override
  String get pluginRepoUpdateFailed => 'প্লাগইন ৰিপজিটৰী ৰিফ্ৰেচ কৰিব পৰা নগল';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল';

  @override
  String get yes => 'হয়';

  @override
  String get no => 'নহয়';

  @override
  String get save => 'সংৰক্ষণ';

  @override
  String get reset => 'ৰিছেট';

  @override
  String get clear => 'মচি পেলোৱা';

  @override
  String get test => 'পৰীক্ষা';

  @override
  String get testing => 'পৰীক্ষা কৰি আছে…';

  @override
  String get resolving => 'ৰিজলভ কৰি আছে…';

  @override
  String get none => 'একো নাই';

  @override
  String get selectMediaService => 'মিডিয়া ছাৰ্ভিচ বাছি লোৱা';

  @override
  String get pickColor => 'এটা ৰং বাছা';

  @override
  String get colorPickerCustom => 'কাষ্টম';

  @override
  String get colorPickerTransparent => 'স্বচ্ছ';

  @override
  String get ltr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

  @override
  String get searchSettings => 'ছেটিংছ বিচাৰা';

  @override
  String nothingMatches(String query) {
    return '\"$query\"-ৰ লগত একো মিলা নাই';
  }

  @override
  String searchCategory(String category) {
    return '$category বিচাৰা';
  }

  @override
  String get settingsAppearance => 'চেহেৰা';

  @override
  String get settingsAppearanceDesc => 'থিম, ৰং, গ্লাছ মোড';

  @override
  String get settingsGeneral => 'সাধাৰণ';

  @override
  String get settingsGeneralDesc => 'ভাষা আৰু আচৰণ';

  @override
  String get settingsNetwork => 'নেটৱৰ্ক';

  @override
  String get settingsNetworkDesc => 'ইউজাৰ এজেণ্ট, প্ৰমাণপত্ৰ, DNS আৰু প্ৰক্সি';

  @override
  String get settingsAccountDesc => 'ট্ৰেকিং ছাৰ্ভিচ আৰু ছাইন-ইন';

  @override
  String get settingsUpdates => 'আপডেট';

  @override
  String get amoledBlack => 'AMOLED ক’লা';

  @override
  String get amoledBlackDesc => 'ডাৰ্ক মোডত একেবাৰে ক’লা পৃষ্ঠ';

  @override
  String get glassMode => 'গ্লাছ মোড';

  @override
  String get glassModeDesc => 'তোমাৰ লাইব্ৰেৰীৰ আৰ্টৰ ওপৰত ধূসৰ পৃষ্ঠ';

  @override
  String get shelfFrame => 'শাখাৰ চাৰিওফালে ফ্ৰেম';

  @override
  String get shelfFrameDesc =>
      'প্ৰতিটো শেল্ফৰ পিছত কাৰ্ড দেখুওৱা, নহ’লে শাৰীবোৰ পোনপটীয়াকৈ পেজত থাকক';

  @override
  String get settingsExtensionsDesc =>
      'উৎস পৰিচালক, ৰিপজিটৰী আৰু এক্সটেনছন বিকল্প';

  @override
  String get settingsAddons => 'এড-অন';

  @override
  String get customPath => 'কাষ্টম ষ্ট’ৰেজ পাথ';

  @override
  String get customPathDesc => 'এপৰ ডাটা য’ত থাকে। ৰিছেট কৰিবলৈ হেঁচি ধৰি ৰাখা';

  @override
  String get selectDirectory => 'ডাইৰেক্টৰী বাছা';

  @override
  String get differentCacheManager => 'বিকল্প ইমেজ কেশ্ব';

  @override
  String get differentCacheManagerDesc =>
      'ছবিৰ বাবে বেলেগ কেশ্ব পৰিচালক ব্যৱহাৰ কৰা';

  @override
  String get backupAndRestore => 'বেকআপ আৰু ৰিষ্টৰ';

  @override
  String get backupAndRestoreDesc => 'তোমাৰ পচন্দবোৰ সংৰক্ষণ বা লোড কৰা';

  @override
  String get backup => 'বেকআপ';

  @override
  String get restore => 'ৰিষ্টৰ';

  @override
  String get loadExtensionsIcon => 'এক্সটেনছন আইকন লোড কৰা';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => 'এক্সটেনছনৰ তালিকাত উৎসৰ আইকন দেখুওৱা';

  @override
  String get sectionStorage => 'ষ্ট’ৰেজ';

  @override
  String get sectionManagers => 'পৰিচালক';

  @override
  String get sectionOptions => 'বিকল্প';

  @override
  String get backupTabBackup => 'বেকআপ লোৱা';

  @override
  String get backupTabRestore => 'ৰিষ্টৰ';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categoriesটা শ্ৰেণীত $keysটা ছেটিংছ';
  }

  @override
  String backupLastBackup(Object time) {
    return 'শেষ বেকআপ $time';
  }

  @override
  String get backupNever => 'এতিয়াও কোনো বেকআপ নাই';

  @override
  String get backupSelectAll => 'সকলো বাছা';

  @override
  String get backupClearAll => 'মচি পেলোৱা';

  @override
  String backupKeys(Object count) {
    return '$countটা ছেটিংছ';
  }

  @override
  String get backupPassword => 'পাছৱৰ্ড (ঐচ্ছিক)';

  @override
  String get backupPasswordHint => 'ডিফল্ট ব্যৱহাৰ কৰিবলৈ খালী ৰাখা';

  @override
  String get backupSensitive => 'লগইন টোকেন আছে। ফাইলটো গোপন ৰাখা';

  @override
  String get backupCreate => 'বেকআপ বনোৱা';

  @override
  String backupSaved(Object name) {
    return 'বেকআপ $name-ত সংৰক্ষণ হৈছে';
  }

  @override
  String backupFailed(Object error) {
    return 'বেকআপ বিফল: $error';
  }

  @override
  String get backupPickFile => 'বেকআপ ফাইল বাছা';

  @override
  String get backupPickFileDesc => 'Dartotsu-এ বনোৱা এটা .json ফাইল বাছা';

  @override
  String get backupChooseAnother => 'আন এটা ফাইল বাছা';

  @override
  String get backupCreatedAt => 'বনোৱা হৈছে';

  @override
  String get backupAppVersion => 'এপৰ সংস্কৰণ';

  @override
  String get backupDevice => 'ডিভাইচ';

  @override
  String get backupAccounts => 'একাউণ্ট';

  @override
  String get backupSize => 'আকাৰ';

  @override
  String get backupEncrypted => 'পাছৱৰ্ডেৰে সুৰক্ষিত';

  @override
  String get backupUnlock => 'আনলক';

  @override
  String get backupWrongPassword => 'ফাইলটো পঢ়িব পৰা নগল। পাছৱৰ্ড পৰীক্ষা কৰা';

  @override
  String get backupRestoreSelected => 'বাছনিবোৰ ৰিষ্টৰ কৰা';

  @override
  String backupRestoreConfirm(Object count) {
    return '$countটা ছেটিংছ ৰিষ্টৰ কৰিবা? এই শ্ৰেণীবোৰৰ বৰ্তমানৰ মান অভাৰৰাইট হৈ যাব।';
  }

  @override
  String get backupRestored =>
      'ৰিষ্টৰ হৈছে। সকলো প্ৰয়োগ কৰিবলৈ এপ ৰিষ্টাৰ্ট কৰা';

  @override
  String backupRestoreFailed(Object error) {
    return 'ৰিষ্টৰ বিফল: $error';
  }

  @override
  String get backupSelectOne => 'অতি কমেও এটা শ্ৰেণী বাছা';

  @override
  String get backupCatTheme => 'চেহেৰা';

  @override
  String get backupCatThemeDesc => 'থিম, ৰং, গ্লাছ, ফন্ট আৰু কাৰ্ড ষ্টাইল';

  @override
  String get backupCatCommon => 'সাধাৰণ';

  @override
  String get backupCatCommonDesc =>
      'ভাষা, ষ্ট’ৰেজ, নেটৱৰ্ক আৰু এক্সটেনছন বিকল্প';

  @override
  String get backupCatPlayer => 'প্লেয়াৰ';

  @override
  String get backupCatPlayerDesc => 'প্লেয়াৰৰ পচন্দ';

  @override
  String get backupCatReader => 'ৰিডাৰ';

  @override
  String get backupCatReaderDesc => 'ৰিডাৰৰ পচন্দ';

  @override
  String get backupCatProtected => 'একাউণ্ট';

  @override
  String get backupCatProtectedDesc => 'লগইন টোকেন আৰু ছাইন-ইন ডাটা';

  @override
  String get backupCatOther => 'ছাৰ্ভিচ আৰু ফিড';

  @override
  String get backupCatOtherDesc => 'ফিড লেআউট, তালিকা আৰু ছাৰ্ভিচ বিকল্প';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDesc => 'এপৰ লগ শ্বেয়াৰ কৰা, বা Linux-ত ইয়াৰ পাথ কপি কৰা';

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
  String get logFileCopied => 'লগ পাথ কপি হৈছে';

  @override
  String get donateSheetTitle => 'Dartotsu ভাল লাগিছে নে?';

  @override
  String get donateSheetMessage =>
      'Dartotsu এজন মানুহে বনায় আৰু চলাই ৰাখে। কামত আহিলে ডেভেলপমেণ্টক সহায় কৰাৰ কথা ভাবিবা।';

  @override
  String get donateLater => 'পিছত';

  @override
  String get glassBackground => 'গ্লাছ বেকগ্ৰাউণ্ড';

  @override
  String get glassBackgroundDesc => 'ইমেজ লিংক নিদিলে তোমাৰ প্ৰফাইল বেনাৰ';

  @override
  String get glassBackgroundHint => 'ইমেজ লিংক (তোমাৰ বেনাৰৰ বাবে খালী ৰাখা)';

  @override
  String get followCover => 'কভাৰ অনুসৰণ কৰা';

  @override
  String get followCoverDesc =>
      'ৰং বেকগ্ৰাউণ্ডক অনুসৰণ কৰে, আৰু বিৱৰণ পেজত কভাৰক';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'কাৰ্ড ষ্টাইল';

  @override
  String get cardStyleDesc => 'শিৰোনামৰ স্থান, আকাৰ, প্ৰগ্ৰেছ আৰু বেজ';

  @override
  String get customFont => 'ফন্ট';

  @override
  String get customFontDesc => 'ডিফল্ট, তোমাৰ ডিভাইচৰ ফাইল, বা Google Fonts';

  @override
  String get customFontError => 'সেই ফন্ট ফাইল লোড কৰিব পৰা নগল';

  @override
  String get googleFontError => 'সেই ফন্ট ডাউনলোড কৰিব পৰা নগল';

  @override
  String get yourFonts => 'তোমাৰ ফন্ট';

  @override
  String get addFontFile => 'ফন্ট ফাইল যোগ কৰা…';

  @override
  String get browseGoogleFonts => 'Google Fonts চাই লোৱা…';

  @override
  String get searchGoogleFonts => 'Google Fonts বিচাৰা';

  @override
  String get defaultFont => 'ডিফল্ট';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'ছিষ্টেমৰ পৰা ডাইনামিক ৰং';

  @override
  String get jsonTheme => 'কাষ্টম থিম ফাইল';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json-ৰ পৰা লাইভ ৰং (কাষ্টম স্ক্ৰিপ্ট বা তোমাৰ নিজৰ সম্পাদনা)';

  @override
  String get themeMode => 'থিম মোড';

  @override
  String get mode => 'মোড';

  @override
  String get trackingService => 'ট্ৰেকিং ছাৰ্ভিচ';

  @override
  String get signOut => 'ছাইন আউট';

  @override
  String get signIn => 'ছাইন ইন';

  @override
  String get notSignedIn => 'ছাইন ইন কৰা নাই';

  @override
  String signOutOf(String service) {
    return '$service-ৰ পৰা ছাইন আউট কৰিবা?';
  }

  @override
  String get checkForUpdates => 'আপডেট পৰীক্ষা কৰা';

  @override
  String get checkForUpdatesDesc => 'নতুন GitHub ৰিলিজ আহিলে জনাবা';

  @override
  String get updateChannel => 'আপডেট চেনেল';

  @override
  String get channel => 'চেনেল';

  @override
  String get stable => 'স্থিৰ';

  @override
  String get preRelease => 'প্ৰি-ৰিলিজ';

  @override
  String get alpha => 'আলফা';

  @override
  String get checkNow => 'এতিয়াই পৰীক্ষা কৰা';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ডিফল্ট';

  @override
  String currentlyUsing(String value) {
    return 'এতিয়া: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ডিফল্ট (Cloudflare)';

  @override
  String get proxy => 'প্ৰক্সি';

  @override
  String get proxyProtocol => 'ধৰণ';

  @override
  String get proxyHost => 'হোষ্ট';

  @override
  String get proxyPort => 'পৰ্ট';

  @override
  String get proxyUsername => 'ইউজাৰনেম';

  @override
  String get proxyPassword => 'পাছৱৰ্ড';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get clearCookies => 'কুকি মচি পেলোৱা';

  @override
  String get clearCookiesDesc => 'জমা থকা সকলো কুকি আতৰাই দিয়া';

  @override
  String notImplementedArea(String area) {
    return '$area — সোনকালে আহিব';
  }

  @override
  String notImplementedService(String service) {
    return '$service-এ এতিয়াও ইয়াক সমৰ্থন নকৰে।';
  }

  @override
  String get couldNotLoadResults => 'ফলাফল লোড কৰিব পৰা নগল';

  @override
  String get updateCheckFailed => 'আপডেট পৰীক্ষা কৰিব পৰা নগল';

  @override
  String get highRefreshRate => 'হাই ৰিফ্ৰেচ ৰেট';

  @override
  String get highRefreshRateDesc =>
      'তোমাৰ স্ক্ৰীনে সমৰ্থন কৰা আটাইতকৈ বেছি ৰিফ্ৰেচ ৰেট ব্যৱহাৰ কৰা';

  @override
  String get imageSave => 'ছবি সংৰক্ষণ কৰা';

  @override
  String imageSavedTo(String path) {
    return '$path-ত সংৰক্ষণ হৈছে';
  }

  @override
  String get imageActionFailed => 'ছবি ডাউনলোড কৰিব পৰা নগল';

  @override
  String get imageTitleCover => 'কভাৰ';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'বেনাৰ';

  @override
  String get imageTitleAvatar => 'প্ৰফাইল ছবি';

  @override
  String get verifyTls => 'প্ৰমাণপত্ৰ যাচাই কৰা';

  @override
  String get verifyTlsDesc =>
      'অবৈধ HTTPS প্ৰমাণপত্ৰ থকা ছাৰ্ভাৰ অগ্ৰাহ্য কৰা। নিজে চহী কৰা প্ৰমাণপত্ৰ ব্যৱহাৰ কৰা উৎসৰ বাবেহে বন্ধ কৰা';

  @override
  String get clearCookiesConfirm =>
      'জমা থকা সকলো কুকি আতৰাবা? ইয়াৰ ফলত কিছুমান উৎসৰ পৰা ছাইন আউট হ’ব পাৰে।';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'উৎস, ইছ্যু আৰু ৰিলিজ';

  @override
  String get discordDesc => 'সম্প্ৰদায় আৰু সহায়';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'ডেভেলপমেণ্টক সহায় কৰা';

  @override
  String get contributors => 'অৱদানকাৰী';

  @override
  String get contributorsDesc => 'যিসকলে Dartotsu বনাইছে';

  @override
  String get contributorsLoadFailed => 'অৱদানকাৰীসকলক লোড কৰিব পৰা নগল';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu-ৰ ওপৰত বনোৱা প্ৰকল্প';

  @override
  String get forksEmpty => 'কোনো ফৰ্ক পোৱা নাই';

  @override
  String get sectionColors => 'ৰং';

  @override
  String get sectionDisplay => 'ডিছপ্লে';

  @override
  String get sectionStyle => 'ষ্টাইল';

  @override
  String get sectionCommunity => 'সম্প্ৰদায়';

  @override
  String get sectionAppInfo => 'এপৰ তথ্য';

  @override
  String get sectionRequests => 'অনুৰোধ';

  @override
  String get sectionDnsProxy => 'DNS আৰু প্ৰক্সি';

  @override
  String get onboardingBack => 'উভতি যোৱা';

  @override
  String get onboardingNext => 'পৰৱৰ্তী';

  @override
  String get onboardingSkip => 'এৰি যোৱা';

  @override
  String get onboardingPaletteTitle => 'নিজৰ দৰে সজাই লোৱা';

  @override
  String get onboardingPaletteBody =>
      'এটা পেলেট বাছা। কাৰ্ডৰ পৰা প্লেয়াৰলৈকে সকলো একেচেণ্ট ইয়াক মানি চলিব।';

  @override
  String get themeModeAuto => 'অটো';

  @override
  String get themeModeLight => 'লাইট';

  @override
  String get themeModeDark => 'ডাৰ্ক';

  @override
  String get onboardingSyncTitle => 'তোমাৰ লাইব্ৰেৰী ছিংক কৰা';

  @override
  String get onboardingSyncBody =>
      'তোমাৰ তালিকা, প্ৰগ্ৰেছ আৰু স্ক’ৰ লগত আনিবলৈ AniList-ৰে ছাইন ইন কৰা। নহ’লে এৰি গেষ্ট হিচাপে ঘূৰি চোৱা।';

  @override
  String get onboardingOpenLinks => 'AniList আৰু ৰিপো লিংক Dartotsu-ত খোলা';

  @override
  String get onboardingPermsTitle => 'অনুমতি';

  @override
  String get onboardingPermsBody =>
      'ডাউনলোড, আপডেট আৰু এলাৰ্ট যাতে বাধা নোহোৱাকৈ চলে, এতিয়াই দিয়া। পিছত ছিষ্টেম ছেটিংছত সলনি কৰিব পাৰিবা।';

  @override
  String get permNotifications => 'জাননী';

  @override
  String get permNotificationsDesc => 'ডাউনলোডৰ প্ৰগ্ৰেছ, নতুন পৰ্ব আৰু উত্তৰ';

  @override
  String get permStorage => 'সকলো ফাইলৰ এক্সেছ';

  @override
  String get permStorageDesc => 'ডাউনলোড পাব্লিক Dartotsu ফোল্ডাৰত সংৰক্ষণ কৰা';

  @override
  String get permInstall => 'আপডেট ইনষ্টল কৰা';

  @override
  String get permInstallDesc => 'Dartotsu-ক নিজৰ এপ আপডেট ইনষ্টল কৰিবলৈ দিয়া';

  @override
  String get permBattery => 'নিয়ন্ত্ৰণহীন বেটাৰী';

  @override
  String get permBatteryDesc => 'দীঘলীয়া ডাউনলোডবোৰ বেকগ্ৰাউণ্ডত চলিবলৈ দিয়া';

  @override
  String get permGrant => 'অনুমতি দিয়া';

  @override
  String get linkOpenInApp => 'লিংক Dartotsu-ত খোলা';

  @override
  String get linkOpenInAppDesc => 'AniList আৰু ৰিপো লিংকে এপটো খুলিবলৈ দিয়া';

  @override
  String get reviewsTitle => 'ৰিভিউ';

  @override
  String get reviewsEmpty => 'এতিয়াও কোনো ৰিভিউ নাই';

  @override
  String get reviewsFailed => 'ৰিভিউ লোড কৰিব পৰা নগল';

  @override
  String get reviewHelpfulQuestion => 'এই ৰিভিউটো কামত আহিল নেকি?';

  @override
  String get reviewVoteFailed => 'তোমাৰ ভোট সংৰক্ষণ কৰিব পৰা নগল';

  @override
  String reviewHelpful(int n, int total) {
    return '$total জনৰ ভিতৰত $n জনে এইটো কামত অহা বুলি পাইছে';
  }

  @override
  String get calendarTitle => 'এয়াৰিং সময়সূচী';

  @override
  String get calendarToday => 'আজি';

  @override
  String get calendarEmpty => 'এইদিনা একো সম্প্ৰচাৰ নহয়';

  @override
  String get calendarFailed => 'সময়সূচী লোড কৰিব পৰা নগল';

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
    return 'পৰ্ব $n';
  }

  @override
  String get shareAnalytics => 'নাম নথকা ব্যৱহাৰৰ ডাটা শ্বেয়াৰ কৰা';

  @override
  String get shareAnalyticsDesc =>
      'নাম নথকা ব্যৱহাৰকাৰীৰ সংখ্যা আৰু ক্ৰেশ্ব ৰিপৰ্ট। কোনো একাউণ্ট বা ব্যক্তিগত ডাটা নাই';

  @override
  String get linkOpenAnilist => 'AniList লিংক Dartotsu-ত খোলা';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co লিংকে এপটো খুলিবলৈ লিংক হেণ্ডলিং চালু কৰা';

  @override
  String get linkSettingsFailed => 'ছিষ্টেম ছেটিংছ খুলিব পৰা নগল';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা। তোমাৰ Discord টোকেন লাগিব।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা। Discord ডেস্কটপ এপ চলি থাকিব লাগিব।';

  @override
  String get discordBrowsing => 'ব্ৰাউজিং কাৰ্যকলাপ দেখুওৱা';

  @override
  String get discordBrowsingDesc =>
      'কেৱল যিটো চাই আছা বা পঢ়ি আছা সেয়া নহয়, যিটো টেব, পেজ বা প্ৰফাইলত আছা সেয়াও দেখুওৱা।';

  @override
  String get discordLookHeader => 'প্ৰেজেন্সৰ চেহেৰা';

  @override
  String get discordActivityType => 'কাৰ্যকলাপৰ ধৰণ';

  @override
  String get discordActivityTypeDesc =>
      'Discord-এ কেনেকৈ লিখে: \"Watching …\" বা \"Playing …\"। অটোয়ে এনিমেৰ বাবে Watching আৰু বাকী সকলোবোৰৰ বাবে Playing ব্যৱহাৰ কৰে।';

  @override
  String get discordWatching => 'চাই আছে';

  @override
  String get discordPlaying => 'খেলি আছে';

  @override
  String get discordCovers => 'কভাৰ দেখুওৱা';

  @override
  String get discordCoversDesc => 'কাৰ্ডত কভাৰ আৰ্ট আৰু Dartotsu আইকন।';

  @override
  String get discordTimer => 'টাইমাৰ দেখুওৱা';

  @override
  String get discordTimerDesc => 'শিৰোনামৰ তলত পাৰ হোৱা বা বাকী থকা সময়।';

  @override
  String get discordButtons => 'বুটাম দেখুওৱা';

  @override
  String get discordButtonsDesc =>
      '\"এনিমে / মাংগা চোৱা\" আৰু \"Dartotsu খোলা\" বুটাম।';

  @override
  String get discordHideTitles => 'শিৰোনাম লুকুওৱা';

  @override
  String get discordHideTitlesDesc =>
      'এনিমে আৰু মাংগাৰ নাম (লগত কভাৰ আৰু লিংক) \"কিবা এটা ব্যক্তিগত\"-ৰে সলনি কৰা।';

  @override
  String get discordConnectionHeader => 'সংযোগ';

  @override
  String get listSearchHint => 'এই তালিকাত বিচাৰা';

  @override
  String get listSort => 'সজোৱা';

  @override
  String get listFilter => 'ফিল্টাৰ';

  @override
  String get listRandom => 'ৰেণ্ডম শিৰোনাম';

  @override
  String get listReverse => 'ওলোটা ক্ৰম';

  @override
  String get listSortDefault => 'তালিকাৰ ক্ৰম';

  @override
  String get listSortScore => 'তোমাৰ স্ক’ৰ';

  @override
  String get listSortTitle => 'শিৰোনাম';

  @override
  String get listSortUpdated => 'শেষ আপডেট';

  @override
  String get listSortProgress => 'প্ৰগ্ৰেছ';

  @override
  String get listSortReleased => 'ৰিলিজৰ তাৰিখ';

  @override
  String get listSortAverage => 'গড় স্ক’ৰ';

  @override
  String get listFilterFormat => 'ফৰ্মেট';

  @override
  String get listFilterStatus => 'স্থিতি';

  @override
  String get listFilterGenres => 'জেনৰা';

  @override
  String get listFilterClear => 'ফিল্টাৰ মচি পেলোৱা';

  @override
  String get listNoMatches => 'এই তালিকাত একো মিলা নাই';

  @override
  String get discordLogin => 'Discord-ত লগইন কৰা';

  @override
  String get discordToken => 'Discord টোকেন';

  @override
  String get discordTokenSaved =>
      'সংৰক্ষণ হৈছে। সলনি কৰিবলৈ টেপ কৰা, আতৰাবলৈ হেঁচি ধৰা।';

  @override
  String get discordTokenNotSet => 'ছেট কৰা নাই। যোগ কৰিবলৈ টেপ কৰা।';

  @override
  String get discordTokenSavedSnack => 'Discord টোকেন সংৰক্ষণ হৈছে';

  @override
  String get discordTokenRemovedSnack => 'Discord টোকেন আতৰোৱা হৈছে';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'চালু · কেনেকুৱা দেখা যাব সলনি কৰিবলৈ টেপ কৰা';

  @override
  String get discordRichPresenceRowOff =>
      'তুমি কি কৰি আছা সেয়া Discord প্ৰফাইলত দেখুওৱা';

  @override
  String get loginCancelled => 'লগইন বাতিল কৰা হৈছে';

  @override
  String get invalidToken => 'অবৈধ টোকেন';

  @override
  String loginFailed(String error) {
    return 'লগইন বিফল: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList লগইন বিফল';

  @override
  String get kitsuLoginFailed =>
      'Kitsu লগইন বিফল। ইমেইল আৰু পাছৱৰ্ড পৰীক্ষা কৰা।';

  @override
  String get kitsuLoginTitle => 'Kitsu-ত ছাইন ইন কৰা';

  @override
  String get emailOrUsername => 'ইমেইল বা ইউজাৰনেম';

  @override
  String get password => 'পাছৱৰ্ড';

  @override
  String get kitsuProfile => 'Kitsu প্ৰফাইল';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka লগইন বিফল';

  @override
  String get mangaBakaProfile => 'MangaBaka প্ৰফাইল';

  @override
  String get refreshFromMangaBaka => 'MangaBaka-ৰ পৰা ৰিফ্ৰেচ কৰা';

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
  String get artistsLabel => 'শিল্পী';

  @override
  String get authorsLabel => 'লেখক';

  @override
  String get publishersLabel => 'প্ৰকাশক';

  @override
  String get licensedLabel => 'অনুজ্ঞাপ্ৰাপ্ত';

  @override
  String get contentRatingLabel => 'কণ্টেণ্ট ৰেটিং';

  @override
  String get yesLabel => 'হয়';

  @override
  String get noLabel => 'নহয়';

  @override
  String get ratingSteps => 'ৰেটিঙৰ ধাপ';

  @override
  String get hideNsfw => 'NSFW লুকুওৱা';

  @override
  String get hideNsfwDesc =>
      'প্ৰাপ্তবয়স্কৰ শিৰোনাম ফিড আৰু সন্ধানৰ পৰা আতৰাই ৰাখা, আৰু তোমাৰ নিজৰ প্ৰাপ্তবয়স্ক এণ্ট্ৰিবোৰ \"লুকাই থোৱা মিডিয়া\"-ৰ তলত দেখুওৱা।';

  @override
  String get kitsuAccountOptions => 'Kitsu একাউণ্ট বিকল্প';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka একাউণ্ট বিকল্প';

  @override
  String get couldNotUpdateKitsuSettings =>
      'তোমাৰ Kitsu ছেটিংছ আপডেট কৰিব পৰা নগল';

  @override
  String get titleCanonical => 'কেনোনিকেল';

  @override
  String get titleRomanized => 'ৰোমানাইজড';

  @override
  String get titleLocalized => 'স্থানীয়কৃত';

  @override
  String get ratingSystem => 'ৰেটিং ব্যৱস্থা';

  @override
  String get ratingSimple => 'সৰল (৩টা মুখ)';

  @override
  String get ratingRegular => 'সাধাৰণ (৫টা তৰা)';

  @override
  String get ratingAdvanced => 'উন্নত (১০ পইণ্ট)';

  @override
  String get contentFilter => 'কণ্টেণ্ট ফিল্টাৰ';

  @override
  String get contentSfw => 'কামৰ বাবে নিৰাপদ কেৱল';

  @override
  String get contentSometimes => 'সন্ধানত প্ৰাপ্তবয়স্ক কণ্টেণ্ট';

  @override
  String get contentEverywhere => 'সকলোতে প্ৰাপ্তবয়স্ক কণ্টেণ্ট';

  @override
  String get shareToGlobal => 'গ্ল’বেল ফিডত শ্বেয়াৰ কৰা';

  @override
  String get shareToGlobalDesc =>
      'তোমাৰ কাৰ্যকলাপ Kitsu-ৰ গ্ল’বেল ফিডত দেখা যাবলৈ দিয়া।';

  @override
  String get memberSince => 'সদস্য হৈছে';

  @override
  String get location => 'অৱস্থান';

  @override
  String get accountType => 'একাউণ্টৰ ধৰণ';

  @override
  String get accountSupporter => 'সমৰ্থক';

  @override
  String get accountFree => 'বিনামূলীয়া';

  @override
  String get accountDetails => 'একাউণ্টৰ বিৱৰণ';

  @override
  String get refreshFromKitsu => 'Kitsu-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get simklReadOnly => 'Simkl-এ কেৱল পঢ়াৰ এক্সেছ দিছে';

  @override
  String get incognitoEditsBlocked => 'ইনকগনিট’: তালিকা সম্পাদনা বন্ধ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ইনকগনিট’: প্ৰগ্ৰেছ সংৰক্ষণ হোৱা নাই';

  @override
  String progressSet(int progress) {
    return 'প্ৰগ্ৰেছ $progress কৰা হৈছে';
  }

  @override
  String removedFromList(String title) {
    return 'তোমাৰ তালিকাৰ পৰা $title আতৰোৱা হৈছে';
  }

  @override
  String get following => 'অনুসৰণ কৰি আছা';

  @override
  String get homeSections => 'হোমৰ শাখা';

  @override
  String get homeSectionsHint =>
      'ক্ৰম সলনি কৰিবলৈ টানি আনা। লুকুৱাই থোৱা শাখা কেতিয়াও অনা নহয়।';

  @override
  String get customListDeleteFailed => 'কাষ্টম তালিকা মচিব পৰা নগল';

  @override
  String get customListsSaveFailed => 'কাষ্টম তালিকা সংৰক্ষণ কৰিব পৰা নগল';

  @override
  String get customListsSaved => 'কাষ্টম তালিকা সংৰক্ষণ হৈছে';

  @override
  String get listName => 'তালিকাৰ নাম';

  @override
  String get addList => 'তালিকা যোগ কৰা';

  @override
  String voiceActorsIn(String name) {
    return 'ভইচ এক্টৰ · $name';
  }

  @override
  String get animeAppearances => 'এনিমেত উপস্থিতি';

  @override
  String get mangaAppearances => 'মাংগাত উপস্থিতি';

  @override
  String get voicedCharacters => 'যিবোৰ চৰিত্ৰৰ কণ্ঠ দিছে';

  @override
  String get animeCredits => 'এনিমে ক্ৰেডিট';

  @override
  String get mangaCredits => 'মাংগা ক্ৰেডিট';

  @override
  String get mainProductions => 'মুখ্য প্ৰডাকশ্যন';

  @override
  String get otherWorks => 'আন কাম';

  @override
  String get prequelSequel => 'প্ৰিকুৱেল আৰু ছিকুৱেল';

  @override
  String get previousSeason => 'আগৰ ছিজন';

  @override
  String get thisSeason => 'এই ছিজন';

  @override
  String get nextSeason => 'পৰৱৰ্তী ছিজন';

  @override
  String get voiceRoles => 'কণ্ঠ ভূমিকা';

  @override
  String get staffPositions => 'ষ্টাফৰ পদ';

  @override
  String get mangaWorks => 'মাংগাৰ কাম';

  @override
  String get malProfile => 'MyAnimeList প্ৰফাইল';

  @override
  String get refreshFromMal => 'MyAnimeList-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get repullProfileCounts => 'তোমাৰ প্ৰফাইল আৰু কাউণ্ট আকৌ টানি অনা';

  @override
  String get refreshed => 'ৰিফ্ৰেচ হৈছে';

  @override
  String get simklProfile => 'Simkl প্ৰফাইল';

  @override
  String get refreshFromSimkl => 'Simkl-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get repullProfileLibrary => 'তোমাৰ প্ৰফাইল আৰু লাইব্ৰেৰী আকৌ টানি অনা';

  @override
  String get simklSignInToSearch => 'সন্ধান কৰিবলৈ Simkl-ত ছাইন ইন কৰা';

  @override
  String get dropRate => 'ড্ৰপ ৰেট';

  @override
  String get simklAttribution => 'ডাটা আৰু আৰ্টৱৰ্ক Simkl-ৰ। Simkl-ত চোৱা';

  @override
  String get onHold => 'হোল্ডত';

  @override
  String get scoredBy => 'স্ক’ৰ দিছে';

  @override
  String get planToWatch => 'চোৱাৰ পৰিকল্পনা';

  @override
  String get planToRead => 'পঢ়াৰ পৰিকল্পনা';

  @override
  String get timesRewatched => 'যিমানবাৰ আকৌ চোৱা হৈছে';

  @override
  String get timesReread => 'যিমানবাৰ আকৌ পঢ়া হৈছে';

  @override
  String get comments => 'মন্তব্য';

  @override
  String get moviesAndSeries => 'চলচ্চিত্ৰ আৰু ছিৰিজ';

  @override
  String get trackingOnly => 'কেৱল ট্ৰেকিং';

  @override
  String get signedIn => 'ছাইন ইন কৰা আছে';

  @override
  String get searchLanguage => 'সন্ধানৰ ভাষা';

  @override
  String get savedToList => 'তোমাৰ তালিকাত সংৰক্ষণ হৈছে';

  @override
  String get removedFromYourList => 'তোমাৰ তালিকাৰ পৰা আতৰোৱা হৈছে';

  @override
  String get retry => 'আকৌ চেষ্টা কৰা';

  @override
  String get synopsis => 'সাৰাংশ';

  @override
  String get details => 'বিৱৰণ';

  @override
  String get addToList => 'তালিকাত যোগ কৰা';

  @override
  String get trailer => 'ট্ৰেইলাৰ';

  @override
  String get titleCopied => 'শিৰোনাম কপি হৈছে';

  @override
  String get linkCopied => 'লিংক কপি হৈছে';

  @override
  String get watchTrailer => 'ট্ৰেইলাৰ চোৱা';

  @override
  String get copyTitle => 'শিৰোনাম কপি কৰা';

  @override
  String get copyLink => 'লিংক কপি কৰা';

  @override
  String get openInBrowser => 'ব্ৰাউজাৰত খোলা';

  @override
  String viewOnSource(String source) {
    return '$source-ত চোৱা';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'পৰ্ব $ep $timeৰ পিছত আহিব';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'পৰৱৰ্তী পৰ্ব $timeৰ পিছত';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'অধ্যায় $chapter প্ৰায় $timeৰ ভিতৰত আহিব';
  }

  @override
  String get logPathCopied => 'লগ ফাইলৰ পাথ ক্লিপব’ৰ্ডলৈ কপি হৈছে';

  @override
  String get animeSource => 'এনিমে উৎস';

  @override
  String get mangaSource => 'মাংগা উৎস';

  @override
  String get popular => 'জনপ্ৰিয়';

  @override
  String get latest => 'শেহতীয়া';

  @override
  String get saved => 'সংৰক্ষিত';

  @override
  String get nothingMatched => 'একো মিলা নাই';

  @override
  String get nothingSavedFromSource =>
      'এই উৎসৰ পৰা এতিয়াও একো সংৰক্ষণ কৰা হোৱা নাই';

  @override
  String get sourceReturnedNothing => 'এই উৎসে একো উভতাই দিয়া নাই';

  @override
  String get checkConnectionOrSource =>
      'সংযোগ পৰীক্ষা কৰা বা আন উৎস চেষ্টা কৰা।';

  @override
  String get tryDifferentSearch => 'আন এটা সন্ধানৰ শব্দ চেষ্টা কৰা।';

  @override
  String get savedTitlesAppearHere =>
      'তালিকাত যোগ কৰা শিৰোনামবোৰ ইয়াত দেখা যাব।';

  @override
  String get tryOtherFeed => 'ইয়াৰ সলনি আন ফিড বা সন্ধান চেষ্টা কৰা।';

  @override
  String searchSource(String source) {
    return '$source-ত বিচাৰা';
  }

  @override
  String get animeExtensions => 'এনিমে এক্সটেনছন';

  @override
  String get mangaExtensions => 'মাংগা এক্সটেনছন';

  @override
  String get nothingHereYet => 'ইয়াত এতিয়াও একো নাই';

  @override
  String get savedOnDeviceUntilLogin =>
      'তলৰ সকলো তুমি সলনি নকৰালৈকে এই ডিভাইচত সংৰক্ষিত থাকিব।';

  @override
  String get yourProfile => 'তোমাৰ প্ৰফাইল';

  @override
  String get activity => 'কাৰ্যকলাপ';

  @override
  String get extensions => 'এক্সটেনছন';

  @override
  String get logOut => 'লগআউট';

  @override
  String get logIn => 'লগইন';

  @override
  String get logOutConfirm => 'সঁচাকৈ লগআউট কৰিবা নে?';

  @override
  String get incognitoMode => 'ইনকগনিট’ মোড';

  @override
  String get alsoBlockListEdits => 'তালিকা সম্পাদনাও বন্ধ কৰা';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get switchService => 'ছাৰ্ভিচ সলনি কৰা';

  @override
  String logOutOf(String name) {
    return '$name-ৰ পৰা লগআউট কৰা';
  }

  @override
  String get loggedIn => 'লগইন কৰা আছে';

  @override
  String get notifications => 'জাননী';

  @override
  String get nothingNew => 'নতুন একো নাই';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get listOnly => 'কেৱল তালিকা';

  @override
  String get filter => 'ফিল্টাৰ';

  @override
  String get searchResults => 'সন্ধানৰ ফলাফল';

  @override
  String get recentSearches => 'শেহতীয়া সন্ধান';

  @override
  String get searchOrSetFilter => 'সন্ধান কৰা বা ফিল্টাৰ দিয়া';

  @override
  String get filters => 'ফিল্টাৰ';

  @override
  String get showLess => 'কম দেখুওৱা';

  @override
  String get showAll => 'সকলো দেখুওৱা';

  @override
  String get apply => 'প্ৰয়োগ কৰা';

  @override
  String get preview => 'প্ৰিভিউ';

  @override
  String get preset => 'প্ৰিছেট';

  @override
  String get cardNormal => 'সাধাৰণ';

  @override
  String get cardOnCard => 'কাৰ্ডৰ ওপৰত';

  @override
  String get cardInCard => 'কাৰ্ডৰ ভিতৰত';

  @override
  String get size => 'আকাৰ';

  @override
  String get cardWidth => 'কাৰ্ডৰ বহল';

  @override
  String get compact => 'কমপেক্ট';

  @override
  String get coverAndTitleOnly => 'কেৱল কভাৰ আৰু শিৰোনাম';

  @override
  String get titleLines => 'শিৰোনামৰ শাৰী';

  @override
  String get shape => 'আকৃতি';

  @override
  String get posterShape => 'পোষ্টাৰৰ আকৃতি';

  @override
  String get cornerRadius => 'চুকৰ গোলাকাৰ ভাব';

  @override
  String get off => 'বন্ধ';

  @override
  String get topLeft => 'ওপৰত বাওঁ';

  @override
  String get topRight => 'ওপৰত সোঁ';

  @override
  String get bottomLeft => 'তলত বাওঁ';

  @override
  String get bottomRight => 'তলত সোঁ';

  @override
  String get overlays => 'অভাৰলে';

  @override
  String get progressCount => 'প্ৰগ্ৰেছ / কাউণ্ট';

  @override
  String get pill => 'পিল';

  @override
  String get bar => 'বাৰ';

  @override
  String get outside => 'বাহিৰত';

  @override
  String get scoreBadge => 'স্ক’ৰ বেজ';

  @override
  String get airingDot => 'এয়াৰিং ডট';

  @override
  String get updateAvailable => 'আপডেট আছে';

  @override
  String get notInstalled => 'ইনষ্টল কৰা নাই';

  @override
  String get done => 'হৈ গ’ল';

  @override
  String get searchOrEnterUrl => 'সন্ধান কৰা বা URL দিয়া';

  @override
  String get refresh => 'ৰিফ্ৰেচ';

  @override
  String get share => 'শ্বেয়াৰ';

  @override
  String get characters => 'চৰিত্ৰ';

  @override
  String get staff => 'ষ্টাফ';

  @override
  String get readMore => 'অধিক পঢ়া';

  @override
  String get couldNotLoadList => 'তালিকা লোড কৰিব পৰা নগল';

  @override
  String get logInToFavourite => 'প্ৰিয় যোগ কৰিবলৈ লগইন কৰা';

  @override
  String get alsoKnownAs => 'আন নাম';

  @override
  String get hideSpoilerNames => 'স্পইলাৰ নাম লুকুওৱা';

  @override
  String get showSpoilerNames => 'স্পইলাৰ নাম দেখুওৱা';

  @override
  String get favourited => 'প্ৰিয় কৰা হৈছে';

  @override
  String get favourite => 'প্ৰিয়';

  @override
  String get couldNotOpenTitle => 'এই শিৰোনাম খুলিব পৰা নগল';

  @override
  String get nobodyHereYet => 'এতিয়াও কোনো নাই';

  @override
  String get noMatches => 'একো মিলা নাই';

  @override
  String get gridView => 'গ্ৰিড ভিউ';

  @override
  String get fullWidth => 'সম্পূৰ্ণ বহল';

  @override
  String get userNotFound => 'ইউজাৰ পোৱা নগল';

  @override
  String get couldNotUpdateFollow => 'ফলো আপডেট কৰিব পৰা নগল';

  @override
  String followedUser(String name) {
    return '$name-ক ফলো কৰিলা';
  }

  @override
  String unfollowedUser(String name) {
    return '$name-ক আনফলো কৰিলা';
  }

  @override
  String get messages => 'বাৰ্তা';

  @override
  String get logInToSeeMessages => 'বাৰ্তা চাবলৈ লগইন কৰা';

  @override
  String get editActivity => 'কাৰ্যকলাপ সম্পাদনা কৰা';

  @override
  String get newActivity => 'নতুন কাৰ্যকলাপ';

  @override
  String get editMessage => 'বাৰ্তা সম্পাদনা কৰা';

  @override
  String get writeMessage => 'এটা বাৰ্তা লিখা';

  @override
  String get editReply => 'উত্তৰ সম্পাদনা কৰা';

  @override
  String get posted => 'পোষ্ট কৰা হৈছে';

  @override
  String get couldNotPost => 'পোষ্ট কৰিব পৰা নগল';

  @override
  String get nothingToPreview => 'প্ৰিভিউ কৰিবলৈ একো নাই';

  @override
  String get writeSomethingHint => 'কিবা লিখা… ইয়াত AniList markdown চলে';

  @override
  String get privateMessage => 'ব্যক্তিগত বাৰ্তা';

  @override
  String get post => 'পোষ্ট';

  @override
  String get nothingHere => 'ইয়াত একো নাই';

  @override
  String get noAnimeProgress => 'এনিমেৰ কোনো প্ৰগ্ৰেছ নাই';

  @override
  String get noMangaProgress => 'মাংগাৰ কোনো প্ৰগ্ৰেছ নাই';

  @override
  String get noMessages => 'কোনো বাৰ্তা নাই';

  @override
  String get writeMessageHint => 'এটা বাৰ্তা লিখা…';

  @override
  String get shareSomethingHint => 'কিবা এটা শ্বেয়াৰ কৰা…';

  @override
  String get all => 'সকলো';

  @override
  String get anime => 'এনিমে';

  @override
  String get manga => 'মাংগা';

  @override
  String get count => 'কাউণ্ট';

  @override
  String get hoursWatched => 'চোৱা ঘণ্টা';

  @override
  String get chaptersRead => 'পঢ়া অধ্যায়';

  @override
  String get meanScore => 'গাণিতিক গড় স্ক’ৰ';

  @override
  String get noStatsYet => 'এতিয়াও কোনো পৰিসংখ্যা নাই';

  @override
  String get totalEntries => 'মুঠ এণ্ট্ৰি';

  @override
  String get episodesWatched => 'চোৱা পৰ্ব';

  @override
  String get daysWatched => 'চোৱা দিন';

  @override
  String get volumesRead => 'পঢ়া ভলিউম';

  @override
  String get standardDeviation => 'মান বিচ্যুতি';

  @override
  String get showMore => 'অধিক দেখুওৱা';

  @override
  String get followsYou => 'তোমাক ফলো কৰে';

  @override
  String get nobodyYet => 'এতিয়াও কোনো নাই';

  @override
  String get logInToLike => 'লাইক কৰিবলৈ লগইন কৰা';

  @override
  String get failedToLikeActivity => 'কাৰ্যকলাপ লাইক কৰিব পৰা নগল';

  @override
  String get deleteActivityConfirm => 'কাৰ্যকলাপ মচিবা নে?';

  @override
  String get deletedActivity => 'কাৰ্যকলাপ মচা হৈছে';

  @override
  String get failedToDeleteActivity => 'কাৰ্যকলাপ মচিব পৰা নগল';

  @override
  String get subscribed => 'ছাবস্ক্ৰাইব কৰা হৈছে';

  @override
  String get unsubscribed => 'আনছাবস্ক্ৰাইব কৰা হৈছে';

  @override
  String get failedToUpdateSubscription => 'ছাবস্ক্ৰিপশ্যন আপডেট কৰিব পৰা নগল';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get delete => 'মচি পেলোৱা';

  @override
  String get likedBy => 'যিসকলে লাইক কৰিছে';

  @override
  String get follow => 'ফলো';

  @override
  String get nameCopied => 'নাম কপি হৈছে';

  @override
  String get followsEachOther => 'ইজনে সিজনক ফলো কৰা';

  @override
  String get unfollow => 'আনফলো';

  @override
  String get userIdCopied => 'ইউজাৰ আইডি কপি হৈছে';

  @override
  String get shareProfile => 'প্ৰফাইল শ্বেয়াৰ কৰা';

  @override
  String get copyUserId => 'ইউজাৰ আইডি কপি কৰা';

  @override
  String get failedToDelete => 'মচিব পৰা নগল';

  @override
  String get failedToLike => 'লাইক কৰিব পৰা নগল';

  @override
  String get replies => 'উত্তৰ';

  @override
  String get reply => 'উত্তৰ দিয়া';

  @override
  String get noRepliesYet => 'এতিয়াও কোনো উত্তৰ নাই';

  @override
  String get favouriteAnime => 'প্ৰিয় এনিমে';

  @override
  String get favouriteManga => 'প্ৰিয় মাংগা';

  @override
  String get favouriteCharacters => 'প্ৰিয় চৰিত্ৰ';

  @override
  String get favouriteStaff => 'প্ৰিয় ষ্টাফ';

  @override
  String get favouriteStudios => 'প্ৰিয় ষ্টুডিঅ’';

  @override
  String get noFavouritesYet => 'এতিয়াও কোনো প্ৰিয় নাই';

  @override
  String get yourStory => 'তোমাৰ ষ্ট’ৰি';

  @override
  String get copiedToClipboard => 'ক্লিপব’ৰ্ডলৈ কপি হৈছে';

  @override
  String get justNow => 'এইমাত্ৰ';

  @override
  String get openImage => 'ছবি খোলা';

  @override
  String get hideSpoiler => 'স্পইলাৰ লুকুওৱা';

  @override
  String get showSpoiler => 'স্পইলাৰ দেখুওৱা';

  @override
  String get status => 'স্থিতি';

  @override
  String get score => 'স্ক’ৰ';

  @override
  String get started => 'আৰম্ভ';

  @override
  String get completed => 'সম্পূৰ্ণ';

  @override
  String get private => 'ব্যক্তিগত';

  @override
  String get hideFromStatusLists => 'স্থিতিৰ তালিকাৰ পৰা লুকুওৱা';

  @override
  String get totalRepeats => 'মুঠ পুনৰাবৃত্তি';

  @override
  String get other => 'অন্যান্য';

  @override
  String get customLists => 'কাষ্টম তালিকা';

  @override
  String get activeDays => 'সক্ৰিয় দিন';

  @override
  String get longestStreak => 'আটাইতকৈ দীঘলীয়া ষ্ট্ৰীক';

  @override
  String get currentStreak => 'বৰ্তমানৰ ষ্ট্ৰীক';

  @override
  String get tapOrHoverDay => 'এটা দিনত টেপ বা হোভাৰ কৰা';

  @override
  String get less => 'কম';

  @override
  String get more => 'বেছি';

  @override
  String epIn(int ep, String time) {
    return 'পৰ্ব $ep, $timeৰ পিছত';
  }

  @override
  String get sectionLoading => 'লোড কৰি আছে';

  @override
  String get querySize => 'কুৱেৰীৰ আকাৰ';

  @override
  String get querySizeDesc =>
      'এটা ডাঙৰ কুৱেৰীয়ে এবাৰতে সকলো শাৰী (আৰু গোটেই প্ৰফাইল) লোড কৰে। ভাগ কৰা কুৱেৰীয়ে প্ৰতিটো শাৰী বা প্ৰফাইলৰ অংশৰ বাবে সৰু অনুৰোধ পঠায়: প্ৰতিটো দ্ৰুত, আৰু অংশবোৰ আহি থাকোঁতে দেখা যায়।';

  @override
  String get oneBig => 'এটা ডাঙৰ';

  @override
  String get split => 'ভাগ কৰা';

  @override
  String get sectionSocial => 'ছ’চিয়েল';

  @override
  String get systemNotifications => 'ছিষ্টেম জাননী';

  @override
  String get feedLayout => 'ফিড লেআউট';

  @override
  String sectionsShown(int shown, int total) {
    return '$totalৰ ভিতৰত $shownটা দেখুওৱা হৈছে — বাছিবলৈ আৰু ক্ৰম সলনি কৰিবলৈ টেপ কৰা';
  }

  @override
  String labelSections(String label) {
    return '$label শাখা';
  }

  @override
  String get accountOptions => 'একাউণ্ট বিকল্প';

  @override
  String get anilistAccountOptions => 'AniList একাউণ্ট বিকল্প';

  @override
  String get sectionPrivacy => 'গোপনীয়তা';

  @override
  String get hidePrivateEntries => 'ব্যক্তিগত এণ্ট্ৰি লুকুওৱা';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList-ত ব্যক্তিগত কৰা এণ্ট্ৰি ফিডৰ পৰা আতৰাই ৰাখা';

  @override
  String get anilistExcludeList => 'আপোনাৰ তালিকা বাদ দিয়ক';

  @override
  String get anilistExcludeListDesc =>
      'আপোনাৰ AniList ত থকা শিৰোনামবোৰ এনিমে আৰু মাংগা পৃষ্ঠাৰ পৰা আঁতৰাই ৰাখক';

  @override
  String get anilistProfile => 'AniList প্ৰফাইল';

  @override
  String get refreshFromAnilist => 'AniList-ৰ পৰা ৰিফ্ৰেচ কৰা';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList ছেটিংছ আপডেট কৰিব পৰা নগল';

  @override
  String get sectionNames => 'নাম';

  @override
  String get titleLanguage => 'শিৰোনামৰ ভাষা';

  @override
  String get titleLanguageDesc =>
      'শিৰোনাম সকলোতে কেনেকৈ লিখা হ’ব, যেনে Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'ষ্টাফ আৰু চৰিত্ৰৰ নাম';

  @override
  String get sectionLists => 'তালিকা';

  @override
  String get scoreFormat => 'স্ক’ৰ ফৰ্মেট';

  @override
  String get sortListsBy => 'তালিকা সজোৱা';

  @override
  String labelCustomLists(String label) {
    return '$label কাষ্টম তালিকা';
  }

  @override
  String customListsCount(int count) {
    return '$countটা তালিকা — যোগ বা আতৰাবলৈ টেপ কৰা';
  }

  @override
  String get mergeActivities => 'কাৰ্যকলাপ মাৰ্জ কৰা';

  @override
  String minutesCount(int count) {
    return '$count মিনিট';
  }

  @override
  String get timezone => 'টাইমজ’ন';

  @override
  String get notSet => 'ছেট কৰা নাই';

  @override
  String get airingNotifications => 'এয়াৰিং জাননী';

  @override
  String get airingNotificationsDesc =>
      'অনুসৰণ কৰা শ্ব’ৰ পৰ্ব সম্প্ৰচাৰ হ’লে জনোৱা';

  @override
  String get displayAdultContent => 'প্ৰাপ্তবয়স্ক কণ্টেণ্ট দেখুওৱা';

  @override
  String get displayAdultContentDesc =>
      'ব্ৰাউজ, সন্ধান আৰু ফিডত ১৮+ শিৰোনাম ৰাখা';

  @override
  String get restrictMessages => 'বাৰ্তা কেৱল অনুসৰণ কৰাসকলৰ মাজত সীমিত কৰা';

  @override
  String get restrictMessagesDesc =>
      'কেৱল তুমি অনুসৰণ কৰা লোকেহে তোমাক বাৰ্তা পঠাব পাৰিব';

  @override
  String get sectionServices => 'ছাৰ্ভিচ';

  @override
  String get novel => 'উপন্যাস';

  @override
  String labelService(String label) {
    return '$label ছাৰ্ভিচ';
  }

  @override
  String nameSettings(String name) {
    return '$name ছেটিংছ';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name এক্সটেনছন ব্ৰিজৰ বিকল্প';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name আৰম্ভ কৰিব পৰা নগল: $error';
  }

  @override
  String get importLists => 'তালিকা ইমপৰ্ট কৰা';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu বেকআপৰ পৰা';

  @override
  String get exportLists => 'তালিকা এক্সপৰ্ট কৰা';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon বা Kotatsu বেকআপলৈ';

  @override
  String get sectionBrowse => 'ব্ৰাউজ';

  @override
  String get readingTab => 'পঢ়াৰ টেব';

  @override
  String get readingTabDesc => 'তৃতীয় টেবে কোনবোৰ এক্সটেনছন দেখুৱাব';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'ডিফল্ট ফিড';

  @override
  String get defaultFeedDesc => 'উৎসে কোনটো তালিকা লৈ খোলে';

  @override
  String noServiceSupports(String type) {
    return 'কোনো ছাৰ্ভিচে $type সমৰ্থন নকৰে';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installedটা উৎসৰ ভিতৰত $loadedটা লোড হৈ আছে';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ইয়াত কোনো এক্সটেনছন ছাৰ্ভিচে $type সমৰ্থন নকৰে।';
  }

  @override
  String get loadDataFrom => 'ইয়াৰ পৰা ডাটা লোড কৰা';

  @override
  String noInstalledSourcesYet(String type) {
    return 'এতিয়াও কোনো ইনষ্টল কৰা $type উৎস নাই।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$nameৰ এক্সটেনছন ইনষ্টল কৰা নাই';
  }

  @override
  String get thisSource => 'এই উৎস';

  @override
  String failedToAddRepository(String error) {
    return 'ৰিপজিটৰী যোগ কৰিব পৰা নগল: $error';
  }

  @override
  String installedType(String type) {
    return 'ইনষ্টল কৰা $type';
  }

  @override
  String availableType(String type) {
    return 'উপলব্ধ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ইনষ্টল কৰা কোনো $type এক্সটেনছন নাই';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'উপলব্ধ কোনো $type এক্সটেনছন নাই';
  }

  @override
  String get nothingToShowYet => 'এতিয়াও দেখুৱাবলৈ একো নাই';

  @override
  String get addTitlesHint =>
      'তালিকাত কিছুমান শিৰোনাম যোগ কৰা, ইয়াত দেখা যাব।';

  @override
  String get couldntLoad => 'লোড কৰিব পৰা নগল';

  @override
  String get progressStyleHint =>
      'পিল আৰু বাৰ পোষ্টাৰৰ ওপৰত বহে; \"বাহিৰত\"-এ একেটা কাউণ্ট সাধাৰণ লিখাকৈ দেখুৱায় — এটা বাছা।';

  @override
  String get nixManagedUpdate =>
      'এই বিল্ড Nix-এ চলায় — ইয়াৰ পৰা আপডেট নকৰি তোমাৰ flake-ত \"nix flake update\" চলাই আকৌ বিল্ড কৰা';

  @override
  String autoUpdateFailed(String error) {
    return 'অটো আপডেট বিফল ($error) — ইয়াৰ সলনি ডাউনলোড পেজ খুলি আছোঁ';
  }

  @override
  String get unknownPreference => 'অজ্ঞাত পচন্দ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'অসমৰ্থিত পচন্দৰ ধৰণ $type';
  }

  @override
  String get notYetReleased => 'এতিয়াও ৰিলিজ হোৱা নাই';

  @override
  String get notStarted => 'এতিয়াও আৰম্ভ হোৱা নাই';

  @override
  String get country => 'দেশ';

  @override
  String get sort => 'সজোৱা';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon বা Kotatsu বেকআপ বাছা';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu-ৰ পৰা লাইব্ৰেৰী লৈ আহা। শিৰোনাম, কভাৰ, প্ৰগ্ৰেছ আৰু শ্ৰেণী থাকি যায়।';

  @override
  String get chooseBackupFile => 'বেকআপ ফাইল বাছা';

  @override
  String importAnimeCount(int count) {
    return '$countটা এনিমে ইমপৰ্ট কৰা';
  }

  @override
  String importMangaCount(int count) {
    return '$countটা মাংগা ইমপৰ্ট কৰা';
  }

  @override
  String get mergeWithExisting => 'আগৰ তালিকাৰ লগত মাৰ্জ কৰা';

  @override
  String get mergeWithExistingDesc =>
      'যি আছে সেয়া ৰাখে; বন্ধ কৰিলে মিলি যোৱা শিৰোনাম সলনি হয়';

  @override
  String get chooseAnother => 'আন এটা বাছা';

  @override
  String get import => 'ইমপৰ্ট';

  @override
  String animeCount(int count) {
    return '$countটা এনিমে';
  }

  @override
  String mangaCount(int count) {
    return '$countটা মাংগা';
  }

  @override
  String get chooseSaveLocation => 'বেকআপ ক’ত সংৰক্ষণ কৰিবা বাছা';

  @override
  String savedPath(String path) {
    return '$path সংৰক্ষণ হৈছে';
  }

  @override
  String exportFailed(String error) {
    return 'এক্সপৰ্ট বিফল: $error';
  }

  @override
  String get nothingInLocalLists => 'তোমাৰ স্থানীয় তালিকাত এতিয়াও একো নাই।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'তোমাৰ স্থানীয় তালিকাৰ পৰা $animeটা এনিমে আৰু $mangaটা মাংগা এক্সপৰ্ট হ’ব। Kotatsu-এ কেৱল মাংগা সমৰ্থন কৰে।';
  }

  @override
  String get saveToFolder => 'ফোল্ডাৰত সংৰক্ষণ কৰা';

  @override
  String get formatAnimeManga => 'এনিমে আৰু মাংগা · .tachibk';

  @override
  String get formatMangaTachibk => 'কেৱল মাংগা · .tachibk';

  @override
  String get formatMangaZip => 'কেৱল মাংগা · .zip';

  @override
  String get genres => 'জেনৰা';

  @override
  String get relations => 'সম্পৰ্কিত';

  @override
  String get recommendations => 'পৰামৰ্শ';

  @override
  String get openings => 'অপেনিং';

  @override
  String get endings => 'এণ্ডিং';

  @override
  String get background => 'বেকগ্ৰাউণ্ড';

  @override
  String get links => 'লিংক';

  @override
  String get rank => 'ৰেংক';

  @override
  String get members => 'সদস্য';

  @override
  String get favorites => 'প্ৰিয়';

  @override
  String get episodes => 'পৰ্ব';

  @override
  String get chapters => 'অধ্যায়';

  @override
  String get volumes => 'ভলিউম';

  @override
  String get format => 'ফৰ্মেট';

  @override
  String get source => 'উৎস';

  @override
  String get duration => 'সময়সীমা';

  @override
  String minutesPerEpisode(int minutes) {
    return 'প্ৰতি পৰ্বত $minutes মিনিট';
  }

  @override
  String get rating => 'ৰেটিং';

  @override
  String get studio => 'ষ্টুডিঅ’';

  @override
  String get serialization => 'ধাৰাবাহিক প্ৰকাশ';

  @override
  String get season => 'ছিজন';

  @override
  String get broadcast => 'সম্প্ৰচাৰ';

  @override
  String get aired => 'সম্প্ৰচাৰিত';

  @override
  String get published => 'প্ৰকাশিত';

  @override
  String get popularity => 'জনপ্ৰিয়তা';

  @override
  String get community => 'সম্প্ৰদায়';

  @override
  String get watching => 'চাই আছোঁ';

  @override
  String get reading => 'পঢ়ি আছোঁ';

  @override
  String get dropped => 'এৰি দিয়া';

  @override
  String get planned => 'পৰিকল্পিত';

  @override
  String get trailers => 'ট্ৰেইলাৰ';

  @override
  String get ratings => 'ৰেটিং';

  @override
  String get originalTitle => 'মূল';

  @override
  String get titleLabel => 'শিৰোনাম';

  @override
  String get votes => 'ভোট';

  @override
  String get watchedStat => 'চোৱা হৈছে';

  @override
  String get runtime => 'সময়সীমা';

  @override
  String get director => 'পৰিচালক';

  @override
  String get network => 'নেটৱৰ্ক';

  @override
  String get certification => 'প্ৰমাণীকৰণ';

  @override
  String get airs => 'সম্প্ৰচাৰ হয়';

  @override
  String get budget => 'বাজেট';

  @override
  String get revenue => 'আয়';

  @override
  String get released => 'ৰিলিজ হৈছে';

  @override
  String get tags => 'টেগ';

  @override
  String get author => 'লেখক';

  @override
  String get born => 'জন্ম';

  @override
  String get website => 'ৱেবছাইট';

  @override
  String get established => 'প্ৰতিষ্ঠা';

  @override
  String get manhwa => 'মানহোৱা';

  @override
  String get manhua => 'মানহুৱা';

  @override
  String get novels => 'উপন্যাস';

  @override
  String get thisMonth => 'এই মাহ';

  @override
  String get movies => 'চলচ্চিত্ৰ';

  @override
  String get shows => 'শ্ব’';

  @override
  String get rewatching => 'আকৌ চাই আছোঁ';

  @override
  String get rereading => 'আকৌ পঢ়ি আছোঁ';

  @override
  String get watchedStatus => 'চোৱা হৈছে';

  @override
  String get planning => 'পৰিকল্পনাত';

  @override
  String get paused => 'বিৰতিত';

  @override
  String get watch => 'চোৱা';

  @override
  String get read => 'পঢ়া';

  @override
  String get finished => 'শেষ হৈছে';

  @override
  String get releasing => 'চলি আছে';

  @override
  String get cancelled => 'বাতিল';

  @override
  String get hiatus => 'হায়েটাছ';

  @override
  String get remove => 'আতৰোৱা';

  @override
  String syncToService(String service) {
    return '$service-ত ছিংক কৰা';
  }

  @override
  String syncedToService(String service) {
    return '$service-ত ছিংক হৈছে';
  }

  @override
  String get latestReleases => 'শেহতীয়া ৰিলিজ';

  @override
  String get topRated => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String localSection(String title) {
    return '$title · স্থানীয়';
  }

  @override
  String get localEntryNote =>
      'এই শিৰোনাম কেৱল এই ডিভাইচৰ স্থানীয় তালিকাত আছে। তোমাৰ একাউণ্টৰ তালিকাৰ লগত সংঘাত হ’ব পাৰে বাবে ইয়াত সম্পাদনা বন্ধ; কিন্তু আতৰাব পাৰিবা।';

  @override
  String get cardPresetPoster => 'পোষ্টাৰ';

  @override
  String get cardPresetCard => 'কাৰ্ড';

  @override
  String get cardPresetCozy => 'কজি';

  @override
  String get sortTopRated => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String get sortMostPopular => 'আটাইতকৈ জনপ্ৰিয়';

  @override
  String get sortTrending => 'ট্ৰেণ্ডিং';

  @override
  String get sortNewest => 'আটাইতকৈ নতুন';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'আটাইতকৈ বেছি প্ৰিয়';

  @override
  String get anyCountry => 'যিকোনো দেশ';

  @override
  String get orderScore => 'স্ক’ৰ';

  @override
  String get orderTitle => 'শিৰোনাম';

  @override
  String get orderLastUpdated => 'শেষ আপডেট';

  @override
  String get orderLastAdded => 'শেষ যোগ কৰা';

  @override
  String get never => 'কেতিয়াও নহয়';

  @override
  String get always => 'সদায়';

  @override
  String get scorePoint100 => '১০০ পইণ্ট';

  @override
  String get scorePoint10Decimal => '১০ পইণ্ট দশমিকসহ';

  @override
  String get scorePoint10 => '১০ পইণ্ট';

  @override
  String get scorePoint5 => '৫ তৰা';

  @override
  String get scorePoint3 => '৩ পইণ্ট স্মাইলী';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা',
      one: '১ ঘণ্টা',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন',
      one: '১ দিন',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count সপ্তাহ',
      one: '১ সপ্তাহ',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get resumeSourceMissing => 'আগবাঢ়িবলৈ এই শিৰোনামৰ উৎস ইনষ্টল কৰা';

  @override
  String get resumeRemove => 'আগবঢ়াৰ পৰা আতৰোৱা';

  @override
  String resumeAt(String time) {
    return '$time বাকী';
  }

  @override
  String resumePage(int page, int total) {
    return 'পৃষ্ঠা $page / $total';
  }

  @override
  String get continueWatching => 'চাই থকা অব্যাহত ৰখা';

  @override
  String get continueReading => 'পঢ়া অব্যাহত ৰখা';

  @override
  String get favouriteAnimeSection => 'প্ৰিয় এনিমে';

  @override
  String get favouriteMangaSection => 'প্ৰিয় মাংগা';

  @override
  String get plannedAnime => 'পৰিকল্পিত এনিমে';

  @override
  String get plannedManga => 'পৰিকল্পিত মাংগা';

  @override
  String get completedAnime => 'সম্পূৰ্ণ কৰা এনিমে';

  @override
  String get completedManga => 'সম্পূৰ্ণ কৰা মাংগা';

  @override
  String get hiddenMedia => 'লুকাই থোৱা মিডিয়া';

  @override
  String get recentUpdates => 'শেহতীয়া আপডেট';

  @override
  String get trendingNow => 'এতিয়া ট্ৰেণ্ডিং';

  @override
  String get popularThisSeason => 'এই ছিজনত জনপ্ৰিয়';

  @override
  String get trendingMovies => 'ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get topRatedSeries => 'আটাইতকৈ ভাল ৰেটিঙৰ ছিৰিজ';

  @override
  String get mostFavouriteSeries => 'আটাইতকৈ বেছি প্ৰিয় ছিৰিজ';

  @override
  String get popularAnime => 'জনপ্ৰিয় এনিমে';

  @override
  String get trendingManhwa => 'ট্ৰেণ্ডিং মানহোৱা';

  @override
  String get trendingNovels => 'ট্ৰেণ্ডিং উপন্যাস';

  @override
  String get topRatedManga => 'আটাইতকৈ ভাল ৰেটিঙৰ মাংগা';

  @override
  String get mostFavouriteManga => 'আটাইতকৈ বেছি প্ৰিয় মাংগা';

  @override
  String get popularManga => 'জনপ্ৰিয় মাংগা';

  @override
  String get topMovies => 'শ্ৰেষ্ঠ চলচ্চিত্ৰ';

  @override
  String get topOna => 'শ্ৰেষ্ঠ ONA';

  @override
  String get topOva => 'শ্ৰেষ্ঠ OVA';

  @override
  String get mostPopular => 'আটাইতকৈ জনপ্ৰিয়';

  @override
  String get mostFavourite => 'আটাইতকৈ বেছি প্ৰিয়';

  @override
  String get upcoming => 'আহি আছে';

  @override
  String get topManga => 'শ্ৰেষ্ঠ মাংগা';

  @override
  String get topManhwa => 'শ্ৰেষ্ঠ মানহোৱা';

  @override
  String get topManhua => 'শ্ৰেষ্ঠ মানহুৱা';

  @override
  String get topNovels => 'শ্ৰেষ্ঠ উপন্যাস';

  @override
  String get topOneShots => 'শ্ৰেষ্ঠ ৱান-শ্ব’ট';

  @override
  String get trendingMoviesToday => 'আজিৰ ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get trendingShowsToday => 'আজিৰ ট্ৰেণ্ডিং শ্ব’';

  @override
  String get trendingMoviesWeek => 'এই সপ্তাহৰ ট্ৰেণ্ডিং চলচ্চিত্ৰ';

  @override
  String get trendingShowsWeek => 'এই সপ্তাহৰ ট্ৰেণ্ডিং শ্ব’';

  @override
  String get mostWatchedMoviesMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা চলচ্চিত্ৰ';

  @override
  String get mostWatchedShowsMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা শ্ব’';

  @override
  String get trendingThisWeek => 'এই সপ্তাহত ট্ৰেণ্ডিং';

  @override
  String get mostWatchedThisMonth => 'এই মাহত আটাইতকৈ বেছি চোৱা';

  @override
  String get repoLinksAdded => 'ৰিপো লিংক সফলভাৱে যোগ হৈছে!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList-ৰ পৰা ডাটা অনাত সমস্যা হৈছে।';

  @override
  String get navInfo => 'তথ্য';

  @override
  String get navComments => 'মন্তব্য';

  @override
  String get playerNotAvailable => 'প্লেয়াৰ এতিয়াও উপলব্ধ নহয়';

  @override
  String deepLinkInitialError(String error) {
    return 'প্ৰাৰম্ভিক ডিপ লিংক অনাত সমস্যা: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'লিংক খুলোঁতে সমস্যা: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'এই লিংক খুলিব নোৱাৰি: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'লিংক খুলোঁতে সমস্যা: $error';
  }

  @override
  String get forReleasingTitles => 'বৰ্তমান চলি থকা শিৰোনামৰ বাবে';

  @override
  String get progress => 'প্ৰগ্ৰেছ';

  @override
  String get notes => 'টোকা';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" ছাৰ্ভিচ পোৱা নগল';
  }

  @override
  String get glassEffectEnabled => 'গ্লাছ ইফেক্ট চালু';

  @override
  String get glassEffectDisabled => 'গ্লাছ ইফেক্ট বন্ধ';

  @override
  String get materialYouEnabled => 'Material You চালু';

  @override
  String get materialYouDisabled => 'Material You বন্ধ';

  @override
  String get darkModeEnabled => 'ডাৰ্ক মোড চালু';

  @override
  String get darkModeDisabled => 'ডাৰ্ক মোড বন্ধ';

  @override
  String get animeList => 'এনিমে তালিকা';

  @override
  String get mangaList => 'মাংগা তালিকা';

  @override
  String ownerAnimeList(String owner) {
    return '$ownerৰ এনিমে তালিকা';
  }

  @override
  String ownerMangaList(String owner) {
    return '$ownerৰ মাংগা তালিকা';
  }

  @override
  String get loadingList => 'তালিকা লোড কৰি আছে';

  @override
  String get earlier => 'আগৰ';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগতে',
      one: '১ দিন আগতে',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগতে',
      one: '১ ঘণ্টা আগতে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিনিট আগতে',
      one: '১ মিনিট আগতে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count মি. আগতে';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ঘ. আগতে';
  }

  @override
  String daysAgoShort(int count) {
    return '$count দিন আগতে';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count সপ্তাহ আগতে';
  }

  @override
  String get couldntLoadSource => 'এই উৎস লোড কৰিব পৰা নগল';

  @override
  String get followers => 'ফলোৱাৰ';

  @override
  String couldntLoadTitle(String title) {
    return '$title লোড কৰিব পৰা নগল';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'এই প্ৰফাইল লোড কৰিব পৰা নগল';

  @override
  String get profile => 'প্ৰফাইল';

  @override
  String get feed => 'ফিড';

  @override
  String get stats => 'পৰিসংখ্যা';

  @override
  String get received => 'পোৱা';

  @override
  String get sent => 'পঠোৱা';

  @override
  String get global => 'গ্ল’বেল';

  @override
  String get couldntLoadPage => 'এই পেজ লোড কৰিব পৰা নগল';

  @override
  String get couldntLoadAllDetails => 'সকলো বিৱৰণ লোড কৰিব পৰা নগল';

  @override
  String get series => 'ছিৰিজ';

  @override
  String get studios => 'ষ্টুডিঅ’';

  @override
  String get users => 'ইউজাৰ';

  @override
  String repositoriesTitle(String type) {
    return '$type ৰিপজিটৰী';
  }

  @override
  String get repositoryUrl => 'ৰিপজিটৰী URL';

  @override
  String get downloadingRepository => 'ৰিপজিটৰী ডাউনলোড কৰি আছে…';

  @override
  String get noRepositories => 'কোনো ৰিপজিটৰী যোগ কৰা হোৱা নাই';

  @override
  String repoExtensionsCount(String count) {
    return '$countটা এক্সটেনছন';
  }

  @override
  String get searchExtensions => 'এক্সটেনছন বিচাৰা...';

  @override
  String deletePluginTitle(String name) {
    return '$name মচিবা নে?';
  }

  @override
  String get deletePluginMessage => 'সঁচাকৈ এই প্লাগইন মচি পেলাব বিচাৰা নে?';

  @override
  String pluginDeleted(String name) {
    return '$name মচা হৈছে';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'কনফিগাৰ কৰা ৰিপোত $name উপলব্ধ নহয়';
  }

  @override
  String get pluginFetchFailed => 'প্লাগইনৰ তথ্য অনিব পৰা নগল';

  @override
  String installPluginTitle(String name) {
    return '$name ইনষ্টল কৰা';
  }

  @override
  String sizeLabel(String size) {
    return 'আকাৰ: $size';
  }

  @override
  String get installedState => 'ইনষ্টল কৰা আছে';

  @override
  String get errorLabel => 'ভুল:';

  @override
  String get stackTraceDetails => 'বিৱৰণ (Stack Trace)';

  @override
  String get shareLogFile => 'লগ ফাইল শ্বেয়াৰ কৰা';

  @override
  String get copyLogs => 'লগ কপি কৰা';

  @override
  String noListToEdit(String service) {
    return '$service-ত সম্পাদনা কৰিবলৈ কোনো তালিকা নাই';
  }

  @override
  String get couldNotReadFile => 'সেই ফাইল পঢ়িব পৰা নগল';

  @override
  String importedSummary(int anime, int manga) {
    return '$animeটা এনিমে আৰু $mangaটা মাংগা ইমপৰ্ট হৈছে';
  }

  @override
  String alreadyThere(int count) {
    return ' · $countটা আগতেই আছিল';
  }

  @override
  String get airingNow => 'এতিয়া সম্প্ৰচাৰ হৈ আছে';

  @override
  String get topRatedMovies => 'আটাইতকৈ ভাল ৰেটিঙৰ চলচ্চিত্ৰ';

  @override
  String get koreanDramas => 'কোৰিয়ান ড্ৰামা';

  @override
  String get chineseDramas => 'চাইনিজ ড্ৰামা';

  @override
  String get japaneseDramas => 'জাপানী ড্ৰামা';

  @override
  String get thaiDramas => 'থাই ড্ৰামা';

  @override
  String get turkishDramas => 'তুৰ্কী ড্ৰামা';

  @override
  String get miniSeries => 'মিনি ছিৰিজ';

  @override
  String get topRatedShows => 'আটাইতকৈ ভাল ৰেটিঙৰ শ্ব’';

  @override
  String get recommendedSection => 'পৰামৰ্শিত';

  @override
  String get syncRow => 'তালিকা ছিংক';

  @override
  String get syncRowDesc => 'এটা ছাৰ্ভিচৰ তালিকা তোমাৰ আন একাউণ্টবোৰলৈ কপি কৰা';

  @override
  String get syncTitle => 'ছিংক';

  @override
  String get syncMainService => 'মুখ্য ছাৰ্ভিচ';

  @override
  String get syncMainServiceDesc =>
      'ইয়াৰ তালিকাই আচল; ছাইন ইন কৰা বাকী সকলো ছাৰ্ভিচ ইয়াৰ লগত মিলাই আপডেট হয়';

  @override
  String get syncAuto => 'অটো ছিংক';

  @override
  String get syncAutoDesc =>
      'এপ খুলিলে আৰু প্ৰতি ৩০ মিনিটত বেকগ্ৰাউণ্ডত ফেচ আৰু ছিংক কৰা';

  @override
  String get syncAddMissing => 'বাদ পৰা এণ্ট্ৰি যোগ কৰা';

  @override
  String get syncAddMissingDesc => 'আন ছাৰ্ভিচত এতিয়াও নথকা এণ্ট্ৰিও যোগ কৰা';

  @override
  String get syncOnlyForward => 'আগবাঢ়ি থকা প্ৰগ্ৰেছ ৰাখা';

  @override
  String get syncOnlyForwardDesc =>
      'যিটো ছাৰ্ভিচ আগতেই আগবাঢ়ি আছে তাৰ প্ৰগ্ৰেছ কম নকৰিবা';

  @override
  String get syncFetch => 'ফেচ';

  @override
  String get syncFetchAgain => 'আকৌ ফেচ কৰা';

  @override
  String get syncAll => 'সকলো ছিংক কৰা';

  @override
  String get syncStop => 'ৰোকা';

  @override
  String get syncResume => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get syncNothingToSync => 'এই ধৰণৰ বাবে এই ছাৰ্ভিচ ছিংক কৰিব নোৱাৰি';

  @override
  String get syncNoTargets => 'ছিংক কৰিবলৈ আন এটা ছাৰ্ভিচত ছাইন ইন কৰা';

  @override
  String get syncLoadingMap => 'আইডি মেপিং লোড কৰি আছে';

  @override
  String get syncComparing => 'তালিকা তুলনা কৰি আছে';

  @override
  String get syncIntro =>
      'এটা মুখ্য ছাৰ্ভিচ বাছি ফেচ টেপ কৰা। প্ৰতিটো ছাৰ্ভিচৰ পৰা এবাৰ তোমাৰ তালিকা অনা হ’ব, তাৰ পিছত মুখ্যটোৰ লগত তুলনা কৰা হ’ব।';

  @override
  String get syncStateSynced => 'ছিংক হৈছে';

  @override
  String get syncStateOutdated => 'ছিংকৰ বাহিৰত';

  @override
  String get syncStateMissing => 'তালিকাত নাই';

  @override
  String get syncStateUnmapped => 'মিল নাই';

  @override
  String syncPaused(String time) {
    return 'ৰেট লিমিটৰ বাবে অপেক্ষা কৰি আছে, $timeৰ পিছত আকৌ আৰম্ভ হ’ব';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$countটা কেৱল $name-ত আছে, চুই চোৱা হোৱা নাই';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$totalৰ ভিতৰত $done';
  }

  @override
  String get syncNothingHere => 'দেখুৱাবলৈ একো নাই';

  @override
  String syncLimits(int used, int max, String window) {
    return 'এই $window $maxটা অনুৰোধৰ ভিতৰত $usedটা ব্যৱহাৰ হৈছে';
  }

  @override
  String get syncMinute => 'মিনিট';

  @override
  String get syncDay => 'দিন';

  @override
  String get syncNotInList => 'এতিয়াও তালিকাত নাই';

  @override
  String get syncCleared => 'পৰিকল্পনা মচা হৈছে';

  @override
  String get syncClear => 'মচি পেলোৱা';

  @override
  String get syncOptions => 'বিকল্প';

  @override
  String get syncShared => 'আন এটা বস্তুৰ লগত এণ্ট্ৰি শ্বেয়াৰ কৰে';

  @override
  String syncNotFound(String service) {
    return '$service-ত পোৱা নগল';
  }

  @override
  String syncService(String service, int count) {
    return '$service ছিংক কৰা ($count)';
  }

  @override
  String get syncOnEdit => 'পৰিবৰ্তন লগে লগে ছিংক কৰা';

  @override
  String get syncOnEditDesc =>
      'প্ৰতিটো প্ৰগ্ৰেছ আপডেট আৰু তালিকা সম্পাদনা ছাইন ইন কৰা আন ছাৰ্ভিচলৈ লগে লগে পঠিয়াই দিয়া';

  @override
  String syncPushed(String services) {
    return '$services-ত ছিংক হৈছে';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'ৰেট লিমিট হৈছে, অলপ পিছত আকৌ চেষ্টা কৰা';

  @override
  String get syncAhead => 'যিটো আগবাঢ়ি আছে';

  @override
  String get syncAheadDesc =>
      'দুয়োফালে: প্ৰতিটো শিৰোনামৰ বাবে যিটো এণ্ট্ৰি আটাইতকৈ আগবাঢ়ি আছে সেয়া জিকে আৰু তোমাৰ আন সকলো ছাৰ্ভিচলৈ কপি হয়';

  @override
  String syncAheadFrom(String service) {
    return '$service-ৰ পৰা';
  }

  @override
  String get syncConfirm => 'ছিংকৰ আগতে চাই লোৱা';

  @override
  String get syncConfirmDesc =>
      'সকলো ছিংক কৰাই কি কি সলনি কৰিব আৰু কিমান অনুৰোধ লাগিব দেখুওৱা';

  @override
  String get syncPreviewTitle => 'ছিংকৰ বাবে সাজু';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updatesটা আপডেট, $addsটা যোগ হ’ব';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'প্ৰায় $countটা অনুৰোধ';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$countটা আইডিৰ আগতে লুকআপ লাগিব';
  }

  @override
  String get syncPreviewNothing => 'সলনি কৰিবলৈ একো নাই';

  @override
  String get syncStart => 'আৰম্ভ কৰা';

  @override
  String get syncRetry => 'আকৌ চেষ্টা কৰা';

  @override
  String get syncSkip => 'এই বস্তুটো এৰি যোৱা';

  @override
  String get syncInclude => 'এই বস্তুটো আকৌ সামৰি লোৱা';

  @override
  String get syncSkippedLabel => 'এৰি যোৱা হৈছে';

  @override
  String get syncChanges => 'পাৰ্থক্য';

  @override
  String get syncChangeStatus => 'স্থিতি';

  @override
  String get syncChangeProgress => 'প্ৰগ্ৰেছ';

  @override
  String get syncChangeScore => 'স্ক’ৰ';

  @override
  String get syncChangeDates => 'তাৰিখ';

  @override
  String get syncChangeRepeat => 'ৰিৱাচ কাউণ্ট';

  @override
  String get syncFailedReason => 'কিয় বিফল হ’ল';

  @override
  String get syncSkippedHint => 'এৰি যোৱা বস্তুবোৰ আকৌ ফেচ কৰিলেও চুব নোৱাৰি';

  @override
  String get commentsRules => 'মন্তব্যৰ নিয়ম';

  @override
  String get commentsRulesBody =>
      'যিকোনো নিয়ম ভঙা মানে তুমি বাহিৰ!\n\n১. বৰ্ণবাদ, বৈষম্য বা ঘৃণাত্মক কথা নচলিব\n২. স্পেম বা নিজৰ প্ৰচাৰ নচলিব\n৩. কোনো NSFW কণ্টেণ্ট একেবাৰে নহয়\n৪. কেৱল ইংৰাজী, কোনো ব্যতিক্ৰম নাই\n৫. আনৰ পৰিচয়েৰে চলা, হাৰাশাস্তি বা গালি নচলিব\n৬. অবৈধ কণ্টেণ্ট বা কোনো ফেণ্ডমৰ প্ৰতি চৰম অসন্মান নচলিব\n৭. ৰিপজিটৰী বা এক্সটেনছন নিবিচাৰিবা, শ্বেয়াৰো নকৰিবা\n৮. স্পইলাৰ কেৱল স্পইলাৰ টেগ আৰু সতৰ্কবাণীৰে\n৯. নাবালক চৰিত্ৰৰ বিষয়ে যৌন বা অনুচিত মন্তব্য নচলিব\n১০. ভুল হ’লে পোষ্ট নকৰিবা!';

  @override
  String get commentsRulesAccept => 'বুজি পালোঁ';

  @override
  String get commentsSortNewest => 'আটাইতকৈ নতুন';

  @override
  String get commentsSortOldest => 'আটাইতকৈ পুৰণি';

  @override
  String get commentsSortHighest => 'আটাইতকৈ ভাল ৰেটিং';

  @override
  String get commentsSortLowest => 'আটাইতকৈ বেয়া ৰেটিং';

  @override
  String commentsEpisodeShort(int number) {
    return 'পৰ্ব $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'পৰ্বৰ দ্বাৰা ফিল্টাৰ';

  @override
  String get commentsFilterChapterTitle => 'অধ্যায়ৰ দ্বাৰা ফিল্টাৰ';

  @override
  String get commentsFilterTagTitle => 'পৰ্ব বা অধ্যায়ৰ নম্বৰ দিয়া';

  @override
  String get commentsFilterHint => 'নম্বৰ';

  @override
  String get commentsFilterApply => 'ফিল্টাৰ';

  @override
  String get commentsFilterClear => 'সকলো দেখুওৱা';

  @override
  String get commentsPlaceholder => 'এটা মন্তব্য যোগ কৰা…';

  @override
  String commentsReplyingTo(String name) {
    return '$nameক উত্তৰ দি আছা';
  }

  @override
  String get commentsSend => 'পঠোৱা';

  @override
  String get commentsTagButton => 'টেগ';

  @override
  String commentsTagTitle(String label) {
    return 'টেগ $label (ঐচ্ছিক)';
  }

  @override
  String get commentsTagEpisode => 'পৰ্ব';

  @override
  String get commentsTagChapter => 'অধ্যায়';

  @override
  String commentsTagRange(int total) {
    return '১–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label নম্বৰ';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'টেগ মুঠ সংখ্যা ($total) অতিক্ৰম কৰিব নোৱাৰে';
  }

  @override
  String get commentsNoTag => 'টেগ নাই';

  @override
  String get commentsSpoiler => 'স্পইলাৰ';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF বিচাৰা';

  @override
  String get commentsGifEmpty => 'কোনো GIF পোৱা নগল';

  @override
  String get commentsEmptyText => 'মন্তব্য খালী ৰাখিব নোৱাৰি';

  @override
  String get commentsBannedYou => 'তোমাক মন্তব্য কৰাৰ পৰা নিষিদ্ধ কৰা হৈছে';

  @override
  String get commentsEdited => 'মন্তব্য সম্পাদনা হৈছে';

  @override
  String get commentsDeleted => 'মন্তব্য মচা হৈছে';

  @override
  String get commentsDeletedPlaceholder => '[মচা হৈছে]';

  @override
  String get commentsReported => 'মন্তব্য ৰিপৰ্ট কৰা হৈছে';

  @override
  String get commentsUserBanned => 'ইউজাৰ নিষিদ্ধ কৰা হৈছে';

  @override
  String get commentsReport => 'ৰিপৰ্ট';

  @override
  String get commentsReportAsk => 'এই মন্তব্য মডাৰেটৰক ৰিপৰ্ট কৰিবা নে?';

  @override
  String get commentsDelete => 'মচি পেলোৱা';

  @override
  String get commentsDeleteAsk => 'এই মন্তব্য সকলোৰে বাবে মচা হ’ব।';

  @override
  String get commentsBan => 'নিষিদ্ধ কৰা';

  @override
  String get commentsBanAsk => 'এই ইউজাৰক মন্তব্য কৰাৰ পৰা নিষিদ্ধ কৰিবা নে?';

  @override
  String get commentsCopy => 'কপি';

  @override
  String get commentsViewReply => '১টা উত্তৰ চোৱা';

  @override
  String commentsViewReplies(int count) {
    return '$countটা উত্তৰ চোৱা';
  }

  @override
  String get commentsHideReplies => 'উত্তৰ লুকুওৱা';

  @override
  String get commentsLoadMore => 'অধিক মন্তব্য লোড কৰা';

  @override
  String get commentsEmpty => 'এতিয়াও কোনো মন্তব্য নাই। প্ৰথমজন হোৱা!';

  @override
  String get commentsEmptyFiltered => 'এই ফিল্টাৰৰ বাবে কোনো মন্তব্য নাই';

  @override
  String get commentsSignIn =>
      'মন্তব্য পঢ়িবলৈ আৰু লিখিবলৈ AniList-ত ছাইন ইন কৰা';

  @override
  String get commentsSignInMessage =>
      'মন্তব্য সকলো ছাৰ্ভিচৰ মাজত শ্বেয়াৰ কৰা হয় আৰু তোমাৰ AniList একাউণ্ট ব্যৱহাৰ কৰে।';

  @override
  String get commentsUnavailable => 'এই শিৰোনামৰ বাবে মন্তব্য উপলব্ধ নহয়';

  @override
  String get commentsUnavailableMessage =>
      'ইয়াক কোনো AniList এণ্ট্ৰিৰ লগত মিলাব পৰা নগল।';

  @override
  String get commentsDisabled => 'মন্তব্য বন্ধ কৰা আছে';

  @override
  String get commentsDisabledMessage =>
      'ছেটিংছ › সাধাৰণৰ পৰা আকৌ চালু কৰিব পাৰিবা।';

  @override
  String get commentsOffline => 'মন্তব্য লোড কৰিব পৰা নগল';

  @override
  String get commentsSingleTitle => 'এটা মন্তব্য দেখুওৱা হৈছে';

  @override
  String get commentsShowAll => 'সকলো মন্তব্য দেখুওৱা';

  @override
  String get commentsSettingsHeader => 'মন্তব্য';

  @override
  String get commentsSettingEnabled => 'মন্তব্য';

  @override
  String get commentsSettingEnabledDesc =>
      'শিৰোনামত মন্তব্যৰ টেব দেখুওৱা আৰু তোমাৰ AniList একাউণ্টেৰে মন্তব্য ছাৰ্ভাৰত ছাইন ইন কৰা';

  @override
  String get commentsSettingAlerts => 'উত্তৰৰ জাননী';

  @override
  String get commentsSettingAlertsDesc =>
      'কোনোবাই মোৰ মন্তব্যৰ উত্তৰ দিলে জনাবা';

  @override
  String get commentsNoticeReplyTitle => 'মন্তব্যত নতুন উত্তৰ';

  @override
  String commentsNoticeReply(String name) {
    return '$nameএ তোমাৰ মন্তব্যৰ উত্তৰ দিছে';
  }

  @override
  String get commentsNoticeWarningTitle => 'তুমি এটা সতৰ্কবাণী পাইছা';

  @override
  String get commentsNoticeWarning => 'মন্তব্যত অলপ ভাবি-চিন্তি লিখিবা';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu-ৰ পৰা আপডেট';

  @override
  String get barcodeTitle => 'বাৰ্ক’ড স্কেন কৰা';

  @override
  String get barcodeTooltip => 'বাৰ্ক’ডেৰে মাংগা বা উপন্যাস বিচাৰা';

  @override
  String get barcodeIntro =>
      'ভলিউমৰ পিছফালৰ বাৰ্ক’ডৰ ফালে কেমেৰা ধৰা, বা ISBN টাইপ কৰা।';

  @override
  String get barcodeIntroManual =>
      'ভলিউমৰ পিছফালে বাৰ্ক’ডৰ ওপৰত ছপা ISBN টাইপ কৰা।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'এইটো সঠিক ISBN নহয়';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbnৰ বাবে কোনো কিতাপ পোৱা নগল';
  }

  @override
  String get barcodeCameraDenied =>
      'কেমেৰা উপলব্ধ নহয়। কেমেৰাৰ এক্সেছ দিয়া বা ISBN টাইপ কৰা।';

  @override
  String get themesTitle => 'অপেনিং আৰু এণ্ডিং';

  @override
  String get themesPlayVideo => 'ভিডিঅ’ চলোৱা';

  @override
  String get themesPlayAudio => 'কেৱল অডিঅ’ চলোৱা';

  @override
  String get themesOpenSite => 'AnimeThemes-ত খোলা';

  @override
  String get themesCredit => 'AnimeThemes-ৰ পৰা থিম';

  @override
  String get themesVersions => 'সংস্কৰণ';

  @override
  String get sauceTitle => 'উৎস বিচাৰি উলিওৱা';

  @override
  String get sauceIntro =>
      'মাংগাৰ পৃষ্ঠা বা আৰ্টৱৰ্ক আপলোড কৰা, বা ইয়াৰ লিংক পেষ্ট কৰা, ক’ৰ পৰা আহিছে জানিবলৈ।';

  @override
  String get sauceKeyTitle => 'SauceNAO API কী';

  @override
  String get sauceKeyHint => 'ঐচ্ছিক, দৈনিক সন্ধানৰ সীমা বঢ়ায়';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php-ৰ পৰা বিনামূলীয়া কী লোৱা';

  @override
  String get sauceOpen => 'উৎস খোলা';

  @override
  String get sauceCredit => 'SauceNAO-ৰ ইমেজ সন্ধান';

  @override
  String get sauceEmpty => 'একো মিলা নাই';

  @override
  String get sauceTooltip => 'মাংগাৰ পৃষ্ঠা বা আৰ্টৱৰ্কৰ উৎস বিচাৰি উলিওৱা';

  @override
  String get trendzTitle => 'এনিমে চাৰ্ট';

  @override
  String get trendzAnime => 'এনিমে';

  @override
  String get trendzFemale => 'মহিলা চৰিত্ৰ';

  @override
  String get trendzMale => 'পুৰুষ চৰিত্ৰ';

  @override
  String get trendzCouple => 'যোৰ';

  @override
  String get trendzCredit => 'AniTrendz-ৰ সাপ্তাহিক চাৰ্ট';

  @override
  String get trendzNew => 'নতুন';

  @override
  String get trendzEmpty => 'চাৰ্টটো খালী';

  @override
  String get shareCard => 'কাৰ্ড শ্বেয়াৰ কৰা';

  @override
  String get shareCardList => 'তালিকা কাৰ্ড শ্বেয়াৰ কৰা';

  @override
  String get shareCardSaved => 'কাৰ্ড সংৰক্ষণ হৈছে';

  @override
  String get shareCardFailed => 'কাৰ্ড বনাব পৰা নগল';

  @override
  String get shareCardListEmpty =>
      'তোমাৰ তালিকাত শ্বেয়াৰ কৰিবলৈ এতিয়াও একো নাই';

  @override
  String get shareCardTop => 'মোৰ শ্ৰেষ্ঠ পচন্দ';

  @override
  String themesEpisodes(String eps) {
    return 'পৰ্ব $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% মিল';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'সপ্তাহ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$countটা ভোট';
  }

  @override
  String trendzPeak(String rank) {
    return 'সৰ্বোচ্চ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'টপ টেনত $count সপ্তাহ';
  }

  @override
  String get imageSearchTitle => 'ছবিৰে বিচাৰা';

  @override
  String get imageSearchTooltip => 'স্ক্ৰীনশ্বটৰ পৰা এনিমে বিচাৰি উলিওৱা';

  @override
  String get imageSearchIntro =>
      'এটা স্ক্ৰীনশ্বট বাছা বা ছবিৰ লিংক পেষ্ট কৰা, trace.moe-এ পৰ্ব আৰু মুহূৰ্তটো বিচাৰি উলিয়াব।';

  @override
  String get imageSearchPick => 'ছবি বাছা';

  @override
  String get imageSearchLinkHint => 'ছবিৰ লিংক পেষ্ট কৰা';

  @override
  String get imageSearchGo => 'সন্ধান';

  @override
  String get imageSearchEmpty => 'একো মিলা নাই';

  @override
  String get imageSearchAdult => '১৮+';

  @override
  String imageSearchEpisode(String number) {
    return 'পৰ্ব $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$timeত';
  }

  @override
  String get imageSearchPreview => 'প্ৰিভিউ ক্লিপ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% মিল';
  }

  @override
  String get imageSearchCredit => 'trace.moe-ৰ সৌজন্যে';

  @override
  String get imageSearchOpenFailed => 'এই শিৰোনাম খুলিব পৰা নগল';

  @override
  String get groups => 'গোট';

  @override
  String get groupsYours => 'তোমাৰ গোট';

  @override
  String get groupsPopular => 'জনপ্ৰিয়';

  @override
  String get groupsNew => 'নতুন';

  @override
  String get groupsFeatured => 'বৈশিষ্ট্যযুক্ত';

  @override
  String get groupsSearch => 'গোট বিচাৰা';

  @override
  String get groupsAll => 'সকলো';

  @override
  String get groupsEmpty => 'কোনো গোট পোৱা নগল';

  @override
  String get groupsEmptyYours => 'তুমি এতিয়াও কোনো গোটত যোগ দিয়া নাই';

  @override
  String get groupsSignIn => 'যোগ দিয়া গোটবোৰ চাবলৈ ছাইন ইন কৰা';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন সদস্য',
      one: '১ জন সদস্য',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'যোগ দিয়া';

  @override
  String get groupsJoined => 'যোগ দিয়া হৈছে';

  @override
  String get groupsLeave => 'গোট এৰি দিয়া';

  @override
  String get groupsLeaveAsk => 'এই গোটৰ পোষ্ট তোমাৰ ফিডত আৰু দেখা নাপাবা।';

  @override
  String get groupsJoinFailed =>
      'এই গোটত যোগ দিব পৰা নগল, হয়তো কেৱল নিমন্ত্ৰণেৰে ভিতৰি হ’ব পাৰি';

  @override
  String get groupsLeaveFailed => 'এই গোট এৰিব পৰা নগল';

  @override
  String get groupsPosts => 'পোষ্ট';

  @override
  String get groupsMembersTab => 'সদস্য';

  @override
  String get groupsAbout => 'বিষয়ে';

  @override
  String get groupsRules => 'নিয়ম';

  @override
  String get groupsPrivacyOpen => 'মুকলি';

  @override
  String get groupsPrivacyRestricted => 'সীমিত';

  @override
  String get groupsPrivacyClosed => 'বন্ধ';

  @override
  String get groupsAdult => '১৮+';

  @override
  String get groupsRoleAdmin => 'এডমিন';

  @override
  String get groupsRoleMod => 'মড';

  @override
  String get groupsCouldntLoad => 'এই গোট লোড কৰিব পৰা নগল';

  @override
  String get groupsNewPost => 'গোটত পোষ্ট কৰা';

  @override
  String get groupsPostHint => 'গোটৰ লগত কিবা শ্বেয়াৰ কৰা';

  @override
  String get groupsOpenInBrowser => 'ব্ৰাউজাৰত খোলা';

  @override
  String get groupsCategory => 'শ্ৰেণী';

  @override
  String get groupsLanguage => 'ভাষা';

  @override
  String get groupsCreated => 'বনোৱা হৈছে';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন নেতা',
      one: '১ জন নেতা',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'গোপনীয়তা';

  @override
  String get notificationsAll => 'সকলো';

  @override
  String get notificationsAiring => 'এয়াৰিং';

  @override
  String get notificationsMedia => 'নতুন শিৰোনাম';

  @override
  String get notificationsReplies => 'উত্তৰ';

  @override
  String get notificationsMentions => 'উল্লেখ';

  @override
  String get notificationsMessages => 'বাৰ্তা';

  @override
  String get notificationsLikes => 'লাইক';

  @override
  String get notificationsFollows => 'ফলো';

  @override
  String get notificationsNoServices => 'ছাইন ইন কৰা কোনো ছাৰ্ভিচত জাননী নাই';

  @override
  String get notificationsNoServicesMessage =>
      'জাননী পঠোৱা ছাৰ্ভিচত ছাইন ইন কৰা, ইয়াত দেখা যাব।';

  @override
  String get notificationsEmptyKind => 'এই শ্ৰেণীত এতিয়াও একো নাই';

  @override
  String get notificationsCommentsEmpty => 'মন্তব্যৰ কোনো জাননী নাই';

  @override
  String get notificationsCommentsEmptyMessage =>
      'তোমাৰ মন্তব্যৰ উত্তৰ আৰু Dantotsu-ৰ ঘোষণা ইয়াত দেখা যাব।';

  @override
  String get notificationsSettings => 'জাননীৰ ছেটিংছ';

  @override
  String get notificationsPollTitle => 'নতুন জাননী পৰীক্ষা কৰা';

  @override
  String notificationsPollDesc(int minutes) {
    return 'এপ খোলা থাকিলে প্ৰতি $minutes মিনিটত';
  }

  @override
  String get notificationsNotifyAbout => 'কিহৰ বিষয়ে জনাবা';

  @override
  String get notificationsCommentsHeader => 'মন্তব্যৰ জাননী';

  @override
  String systemNotificationsDescFor(String service) {
    return 'এপ চলি থাকোঁতে প্ৰতিটো নপঢ়া $service জাননীৰ বাবে ছিষ্টেম জাননী দেখুওৱা।';
  }

  @override
  String get notificationsTestSent => 'পৰীক্ষামূলক জাননী পঠোৱা হৈছে';

  @override
  String get notificationsTestDenied =>
      'Dartotsu-ৰ বাবে জাননীৰ অনুমতি দিয়া নাই। ছিষ্টেম ছেটিংছত চালু কৰা।';

  @override
  String get notificationsTestHint => 'পৰীক্ষামূলক জাননী পঠাবলৈ হেঁচি ধৰা';

  @override
  String get notificationsTestSample => 'এইটো এটা পৰীক্ষামূলক জাননী';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$nameএ $mediaত তোমাৰ মন্তব্যৰ উত্তৰ দিছে';
  }

  @override
  String get imageSearchNotLink => 'এইটো লিংক যেন নালাগে';

  @override
  String get imageSearchQuota => 'সন্ধানৰ কোটা শেষ';

  @override
  String get imageSearchBusy => 'বহুত অনুৰোধ, অলপ পিছত আকৌ চেষ্টা কৰা';

  @override
  String imageSearchFailed(int code) {
    return 'সন্ধান বিফল ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$countটা নতুন জাননী';
  }

  @override
  String get reactionsTitle => 'ৰিএক্সন';

  @override
  String get reactionsNeedEntry =>
      'ৰিএক্ট কৰাৰ আগতে এই শিৰোনাম তালিকাত যোগ কৰা';

  @override
  String get reactionsAdd => 'এটা ৰিএক্সন যোগ কৰা';

  @override
  String get reactionsHint => 'কেনে লাগিল? (চমুকৈ আৰু স্পইলাৰ নোহোৱাকৈ)';

  @override
  String get reactionsPost => 'পোষ্ট';

  @override
  String get reactionsFailed => 'ৰিএক্সন আপডেট কৰিব পৰা নগল';

  @override
  String get settingsWatch => 'চোৱা আৰু পঢ়া';

  @override
  String get settingsWatchDesc => 'পৰ্বৰ তালিকা, উৎস মিলোৱা আৰু পৰ্বৰ বিৱৰণ';

  @override
  String get watchSettingsLayout => 'পৰ্বৰ তালিকা';

  @override
  String get watchSettingsSources => 'উৎস';

  @override
  String get watchSettingsMetadata => 'পৰ্বৰ বিৱৰণ';

  @override
  String get watchLayout => 'লেআউট';

  @override
  String get watchListView => 'তালিকা';

  @override
  String get watchGridView => 'গ্ৰিড';

  @override
  String get watchCompactView => 'কমপেক্ট';

  @override
  String get watchDefaultLayoutDesc =>
      'কোনো শিৰোনামৰ বাবে সলনি নকৰালৈকে পৰ্ব আৰু অধ্যায় কেনেকৈ সজোৱা থাকিব';

  @override
  String get watchChunkSize => 'ৰেঞ্জৰ আকাৰ';

  @override
  String get watchChunkSizeDesc =>
      'প্ৰতিটো ৰেঞ্জ টেবত কিমানটা পৰ্ব বা অধ্যায় থাকিব';

  @override
  String get watchShowDescription => 'বিৱৰণ দেখুওৱা';

  @override
  String get watchShowDescriptionDesc =>
      'তালিকা লেআউটত প্ৰতিটো শিৰোনামৰ তলত পৰ্বৰ সাৰাংশ দেখুওৱা';

  @override
  String get watchShowFiller => 'ফিলাৰ পৰ্ব দেখুওৱা';

  @override
  String get watchShowFillerDesc => 'ফিলাৰ চিহ্নিত পৰ্ব লুকুৱাবলৈ বন্ধ কৰা';

  @override
  String get watchBlurUnwatched => 'স্পইলাৰ থাম্বনেইল লুকুওৱা';

  @override
  String get watchBlurUnwatchedDesc =>
      'যিটো পৰ্ব এতিয়াও চোৱা হোৱা নাই তাৰ থাম্বনেইল ধূসৰ কৰা';

  @override
  String get watchResumeShelf => 'ৰিজিউম শেল্ফ';

  @override
  String get watchResumeShelfDesc => 'হোমত ৰিজিউম শাৰী দেখুওৱা';

  @override
  String get watchMarkOnLongPress => 'হেঁচি ধৰিলে প্ৰগ্ৰেছ চিহ্নিত হয়';

  @override
  String get watchMarkOnLongPressDesc =>
      'কোনো পৰ্ব বা অধ্যায় হেঁচি ধৰি চোৱা বা নোচোৱা চিহ্নিত কৰা';

  @override
  String get watchMatching => 'উৎস মিলোৱা';

  @override
  String get watchMatchingDesc =>
      '\"আটাইতকৈ ওচৰৰ\"-এ আটাইতকৈ ভাল সন্ধানৰ ফলাফল লয়। \"হুবহু মিল\"-এ কেৱল প্ৰায় একে শিৰোনামহে লয়, বাকীবোৰ তোমাৰ বাছনিৰ বাবে এৰি দিয়ে।';

  @override
  String get watchMatchClosest => 'আটাইতকৈ ওচৰৰ মিল';

  @override
  String get watchMatchExact => 'কেৱল হুবহু মিল';

  @override
  String get watchMetadataDesc =>
      'পৰ্বৰ নাম, সাৰাংশ, থাম্বনেইল, সম্প্ৰচাৰৰ তাৰিখ আৰু ফিলাৰ ফ্লেগ ক’ৰ পৰা আহিব। অগ্ৰাধিকাৰ ঠিক কৰিবলৈ টানি আনা; মান থকা প্ৰথম উৎসই জিকে।';

  @override
  String get watchMetaAniZipDesc =>
      'পৰ্বৰ নাম, সাৰাংশ, ষ্টিল আৰু সম্প্ৰচাৰৰ তাৰিখ';

  @override
  String get watchMetaKitsuDesc => 'পৰ্বৰ নাম, বিৱৰণ আৰু থাম্বনেইল';

  @override
  String get watchMetaSimklDesc =>
      'পৰ্বৰ নাম, বিৱৰণ, ষ্টিল আৰু সম্প্ৰচাৰৰ তাৰিখ';

  @override
  String get watchMetaAniListDesc =>
      'ষ্ট্ৰীমিং পৰ্বৰ নাম, থাম্বনেইল আৰু এয়াৰিং সময়সূচী';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai-ৰ জৰিয়তে MyAnimeList-ৰ পৰ্বৰ নাম, সম্প্ৰচাৰৰ তাৰিখ, ফিলাৰ আৰু ৰিক্যাপ ফ্লেগ';

  @override
  String get watchClearMetadata => 'পৰ্বৰ বিৱৰণ ৰিফ্ৰেচ কৰা';

  @override
  String get watchClearMetadataDesc =>
      'কেশ্ব কৰা পৰ্বৰ বিৱৰণ পাহৰি যোৱা, যাতে আকৌ অনা হয়';

  @override
  String get watchMetadataCleared => 'পৰ্বৰ বিৱৰণ আকৌ অনা হ’ব';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰ্ব',
      one: '১টা পৰ্ব',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা অধ্যায়',
      one: '১টা অধ্যায়',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'পৰ্ব $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'অধ্যায় $number';
  }

  @override
  String get watchSearching => 'বিচাৰি আছে…';

  @override
  String watchSearchingFor(String term) {
    return 'বিচাৰি আছে: $term';
  }

  @override
  String watchSelected(String title) {
    return 'বাছনি কৰা: $title';
  }

  @override
  String watchFound(String title) {
    return 'পোৱা গৈছে: $title';
  }

  @override
  String get watchNothingFound => 'এই উৎসত একো পোৱা নগল';

  @override
  String get watchSearchFailed => 'উৎসত সন্ধান বিফল হৈছে';

  @override
  String get watchLoadFailed => 'তালিকা লোড কৰিব পৰা নগল';

  @override
  String get watchSignInToTrack => 'প্ৰগ্ৰেছ ট্ৰেক কৰিবলৈ ছাইন ইন কৰা';

  @override
  String watchInstallSource(String action) {
    return '$action আৰম্ভ কৰিবলৈ এটা এক্সটেনছন ইনষ্টল কৰা';
  }

  @override
  String get watchSourceMissing => 'এই উৎস ইনষ্টল কৰা নাই';

  @override
  String get watchWrongTitle => 'শিৰোনাম ভুল নেকি?';

  @override
  String get watchSearchAgain => 'আকৌ বিচাৰা';

  @override
  String watchSearchSource(String source) {
    return '$source-ত বিচাৰা';
  }

  @override
  String get watchSource => 'উৎস';

  @override
  String get watchOptions => 'বিকল্প';

  @override
  String get watchReverse => 'ওলোটা ক্ৰম';

  @override
  String get watchScanlators => 'গোট';

  @override
  String get watchResetOptions => 'এই বিকল্পবোৰ ৰিছেট কৰা';

  @override
  String get watchContinue => 'আগবাঢ়া';

  @override
  String get watchStart => 'আৰম্ভ কৰা';

  @override
  String get watchPlay => 'চলোৱা';

  @override
  String get watchRead => 'পঢ়া';

  @override
  String get watchMarkWatched => 'চোৱা হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkUnwatched => 'চোৱা নহ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkRead => 'পঢ়া হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchMarkUnread => 'পঢ়া নহ’ল বুলি চিহ্নিত কৰা';

  @override
  String get watchFiller => 'ফিলাৰ';

  @override
  String get watchRecap => 'ৰিক্যাপ';

  @override
  String get watchNoEpisodes => 'কোনো পৰ্ব পোৱা নগল';

  @override
  String get watchNoChapters => 'কোনো অধ্যায় পোৱা নগল';

  @override
  String get watchSourceTools => 'উৎসৰ সঁজুলি';

  @override
  String get watchSourceSettings => 'উৎসৰ ছেটিংছ';

  @override
  String get watchOpenWebView => 'ৱেব ভিউত খোলা';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare পৰীক্ষা সমাধান কৰা বা লগইন কৰা; কুকি উৎসৰ অনুৰোধৰ লগত শ্বেয়াৰ কৰা হয়';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$hostৰ বাবে $countটা কুকি সংৰক্ষণ কৰা আছে',
      one: '$hostৰ বাবে ১টা কুকি সংৰক্ষণ কৰা আছে',
      zero: '$hostৰ বাবে কোনো কুকি সংৰক্ষণ কৰা নাই',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ক্লিয়াৰেন্স সক্ৰিয়, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ক্লিয়াৰেন্স কুকি নাই';

  @override
  String get watchClearanceSession => 'এপ বন্ধ নোহোৱালৈকে থাকিব';

  @override
  String get watchAgentShared =>
      'অনুৰোধে ৱেব ভিউৰ user agent ব্যৱহাৰ কৰে, যিটো Cloudflare-এ পৰীক্ষা কৰে';

  @override
  String get watchAgentCustom =>
      'এটা কাষ্টম user agent ছেট কৰা আছে, গতিকে ৱেব ভিউৰ পৰা পোৱা Cloudflare ক্লিয়াৰেন্স অগ্ৰাহ্য হ’ব পাৰে';

  @override
  String get watchTestConnection => 'সংযোগ পৰীক্ষা কৰা';

  @override
  String get watchSolveChallenge => 'সমাধান কৰা';

  @override
  String watchProbeOk(int code) {
    return 'পোৱা গৈছে (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare-এ এতিয়াও পৰীক্ষা বিচাৰিছে';

  @override
  String watchProbeBlocked(int code) {
    return 'ছাইটে ব্লক কৰিছে (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ছাইটত পাব পৰা নগল';

  @override
  String get watchClearCookies => 'এই ছাইটৰ কুকি মচি পেলোৱা';

  @override
  String get watchCookiesCleared => 'কুকি মচা হৈছে';

  @override
  String get watchMetaSource => 'পৰ্বৰ বিৱৰণ ক’ৰ পৰা';

  @override
  String get watchMetaAuto => 'স্বয়ংক্ৰিয়';

  @override
  String get watchMetaOff => 'বন্ধ';

  @override
  String get playerSettingsTitle => 'প্লেয়াৰ ছেটিংছ';

  @override
  String get playerSectionPlayback => 'প্লেবেক';

  @override
  String get playerSectionSkip => 'এৰি যোৱা';

  @override
  String get playerSectionGestures => 'নিয়ন্ত্ৰণ';

  @override
  String get playerSectionSubtitles => 'ছাবটাইটেল';

  @override
  String get playerSectionShaders => 'শ্বেডাৰ';

  @override
  String get playerSectionEngine => 'ইঞ্জিন';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'প্লেবেকৰ গতি';

  @override
  String get playerCursedSpeed => 'অতিৰিক্ত গতি';

  @override
  String get playerCursedSpeedDesc => 'তালিকাত ১০x লৈকে গতি যোগ কৰা';

  @override
  String get playerResize => 'ৰিছাইজ মোড';

  @override
  String get playerFitFit => 'ফিট';

  @override
  String get playerFitCover => 'কভাৰ';

  @override
  String get playerFitStretch => 'ষ্ট্ৰেচ';

  @override
  String get playerSkipDuration => 'স্কিপ বুটামৰ দৈৰ্ঘ্য';

  @override
  String get playerSkipDurationDesc =>
      'অপেনিং আৰু এণ্ডিঙৰ বাহিৰত স্কিপ বুটামে কিমান ছেকেণ্ড জপিয়ায়';

  @override
  String get playerSeekDuration => 'ডাবল টেপত ছিক';

  @override
  String get playerSeekDurationDesc =>
      'ডাবল টেপ বা এৰো কী দিলে কিমান ছেকেণ্ড জপিয়াব';

  @override
  String get playerAutoPlay => 'পৰৱৰ্তীটো স্বয়ংক্ৰিয়ভাৱে চলোৱা';

  @override
  String get playerAutoPlayDesc => 'এইটো শেষ হ’লে পৰৱৰ্তী পৰ্ব আৰম্ভ কৰা';

  @override
  String get playerResume => 'য’ত এৰিছিলা তাৰ পৰা আগবাঢ়া';

  @override
  String get playerResumeDesc => 'পৰ্ব শেষ অৱস্থানৰ পৰা চলাই যোৱা';

  @override
  String get playerOrientation => 'অৰিয়েণ্টেশ্যন';

  @override
  String get playerOrientationAuto => 'ডিভাইচ অনুসৰণ কৰা';

  @override
  String get playerOrientationLandscape => 'লেণ্ডস্কেপ';

  @override
  String get playerOrientationPortrait => 'প’ৰ্ট্ৰেইট';

  @override
  String get playerAutoSkipOpening => 'অপেনিং এৰি যোৱা';

  @override
  String get playerAutoSkipEnding => 'এণ্ডিং এৰি যোৱা';

  @override
  String get playerAutoSkipRecap => 'ৰিক্যাপ এৰি যোৱা';

  @override
  String get playerAutoSkipDesc =>
      'আৰম্ভ হোৱামাত্ৰকে জপিয়াই যোৱা, AniSkip আৰু ষ্ট্ৰীমৰ টাইমষ্টেম্প ব্যৱহাৰ কৰি';

  @override
  String get playerSkipOnce => 'কেৱল এবাৰ এৰি যোৱা';

  @override
  String get playerSkipOnceDesc => 'পিছলৈ ছিক কৰিলে একে অংশ আকৌ এৰি নাযাবা';

  @override
  String get playerAdjustBrightness => 'উজ্জ্বলতাৰ জেশ্চাৰ';

  @override
  String get playerAdjustBrightnessDesc =>
      'স্ক্ৰীনৰ সোঁফালৰ আধাত ওপৰ-তললৈ ছোৱাইপ কৰা';

  @override
  String get playerAdjustVolume => 'ভলিউমৰ জেশ্চাৰ';

  @override
  String get playerAdjustVolumeDesc =>
      'স্ক্ৰীনৰ বাওঁফালৰ আধাত ওপৰ-তললৈ ছোৱাইপ কৰা';

  @override
  String get playerHoldToSpeed => 'হেঁচি ধৰি গতি বঢ়োৱা';

  @override
  String get playerHoldToSpeedDesc =>
      'ভিডিঅ’ হেঁচি ধৰিলে বেগাই চলিব, গতি সলনি কৰিবলৈ কাষলৈ টানা';

  @override
  String get playerThumbless => 'ডাঠ ছিক বাৰ';

  @override
  String get playerThumblessDesc => 'থাম্ব নথকা ডাঠ বাৰ';

  @override
  String get playerShowSubtitles => 'ছাবটাইটেল দেখুওৱা';

  @override
  String get playerShowSubtitlesDesc =>
      'সকলো ছাবটাইটেল ট্ৰেক লুকুৱাবলৈ বন্ধ কৰা';

  @override
  String get playerSubtitleLanguage => 'পচন্দৰ ছাবটাইটেল ভাষা';

  @override
  String get playerSubtitleSize => 'ছাবটাইটেলৰ আকাৰ';

  @override
  String get playerSubtitleWeight => 'ছাবটাইটেলৰ ওজন';

  @override
  String get playerSubtitleBottom => 'ছাবটাইটেলৰ তলৰ প্যাডিং';

  @override
  String get playerSubtitleFont => 'ছাবটাইটেলৰ ফন্ট';

  @override
  String get playerSubtitleColor => 'ছাবটাইটেলৰ ৰং';

  @override
  String get playerSubtitleBackground => 'ছাবটাইটেলৰ বেকগ্ৰাউণ্ড';

  @override
  String get playerSubtitleOutline => 'ছাবটাইটেলৰ আউটলাইন';

  @override
  String get playerLibass => 'libass ব্যৱহাৰ কৰা';

  @override
  String get playerLibassDesc =>
      'ষ্টাইল কৰা .ass ছাবটাইটেল ৰেণ্ডাৰ কৰা। তেতিয়া ওপৰৰ আকাৰ, ৰং আৰু ফন্ট কাম নকৰে';

  @override
  String get playerShaders => 'শ্বেডাৰ';

  @override
  String get playerShadersEnable => 'শ্বেডাৰ চালু কৰা';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K-ৰ দৰে GLSL শ্বেডাৰেৰে ছবি আপস্কেল আৰু পৰিষ্কাৰ কৰা';

  @override
  String get playerShadersOff => 'শ্বেডাৰ বন্ধ';

  @override
  String get playerShadersMissing => 'Anime4K ইনষ্টল কৰা নাই';

  @override
  String get playerShadersMissingDesc =>
      'বিল্ট-ইন মোড ব্যৱহাৰ কৰিবলৈ Anime4K শ্বেডাৰ পেক (প্ৰায় ০.৮ MB) ডাউনলোড কৰা।';

  @override
  String get playerShadersDownload => 'Anime4K ডাউনলোড কৰা';

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
  String get playerShadersPreview => 'এই ফ্ৰেমত প্ৰিভিউ চোৱা';

  @override
  String get playerShadersUse => 'এইটো ব্যৱহাৰ কৰা';

  @override
  String get playerPicture => 'ছবি';

  @override
  String get playerColors => 'ৰং';

  @override
  String get playerColorDefault => 'ডিফল্ট';

  @override
  String get playerColorVivid => 'ভিভিড';

  @override
  String get playerColorPop => 'এনিমে পপ';

  @override
  String get playerColorSoft => 'কোমল';

  @override
  String get playerColorCinematic => 'চিনেমেটিক';

  @override
  String get playerColorBright => 'উজ্জ্বল';

  @override
  String get playerColorNight => 'নাইট';

  @override
  String get playerColorMono => 'মন’';

  @override
  String get playerColorCustom => 'কাষ্টম';

  @override
  String get playerColorBrightness => 'উজ্জ্বলতা';

  @override
  String get playerColorContrast => 'কণ্ট্ৰাষ্ট';

  @override
  String get playerColorSaturation => 'ছেচুৰেশ্যন';

  @override
  String get playerColorGamma => 'গামা';

  @override
  String get playerColorHue => 'হিউ';

  @override
  String get playerColorReset => 'ৰিছেট';

  @override
  String get playerColorAdjust => 'এডজাষ্ট';

  @override
  String get playerShadersOriginal => 'মূল';

  @override
  String get playerShadersPreviewFailed => 'প্ৰিভিউৰ বাবে ফ্ৰেম ধৰিব পৰা নগল';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'তোমাৰ শ্বেডাৰ';

  @override
  String get playerShadersCustom => 'কাষ্টম শ্বেডাৰ';

  @override
  String get playerShadersImport => '.glsl ইমপৰ্ট কৰা';

  @override
  String get playerShadersNone =>
      'নিজৰ .glsl বা .hook ফাইল ইমপৰ্ট কৰা আৰু টিক দি একেলগে জোৰা লগোৱা';

  @override
  String get playerShadersBadFile => 'এটা .glsl বা .hook শ্বেডাৰ ফাইল বাছা';

  @override
  String get playerDecoder => 'ডিক’ডাৰ';

  @override
  String get playerDecoderAuto => 'অটো';

  @override
  String get playerDecoderAutoSafe => 'অটো (নিৰাপদ)';

  @override
  String get playerDecoderSoftware => 'ছফ্টৱেৰ';

  @override
  String get playerDecoderHardware => 'হাৰ্ডৱেৰ';

  @override
  String get playerDecoderHardwarePlus => 'হাৰ্ডৱেৰ+';

  @override
  String get playerVideoOutput => 'ভিডিঅ’ আউটপুট';

  @override
  String get playerAudioChannels => 'অডিঅ’ চেনেল';

  @override
  String get playerBuffer => 'বাফাৰৰ আকাৰ (MB)';

  @override
  String get playerBufferDesc =>
      'ষ্ট্ৰীম বাফাৰ কৰিবলৈ প্লেয়াৰে যিমান মেম’ৰী ব্যৱহাৰ কৰিব পাৰে';

  @override
  String get playerUseMpvConf => 'mpv.conf ব্যৱহাৰ কৰা';

  @override
  String get playerUseMpvConfDesc =>
      'প্লেবেক আৰম্ভ হ’লে তোমাৰ mpv.conf-ৰ বিকল্প প্ৰয়োগ কৰা';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv কনফিগাৰেশ্যন সম্পাদনা কৰা';

  @override
  String get playerMpvConfDesc =>
      'প্ৰতি শাৰীত এটা বিকল্প, সাধাৰণ mpv.conf-ৰ --hwdec=auto-ৰ দৰে। [বন্ধনীত] থকা প্ৰফাইল উপেক্ষা কৰা হয়।';

  @override
  String get playerMpvConfSaved => 'mpv.conf সংৰক্ষণ হৈছে';

  @override
  String get playerUseScripts => 'mpv স্ক্ৰিপ্ট ব্যৱহাৰ কৰা';

  @override
  String get playerUseScriptsDesc =>
      'scripts ফোল্ডাৰৰ পৰা প্লাগইন লোড কৰা। ইয়াৰ বাবে Lua বা JavaScript সমৰ্থন থকা libmpv বিল্ড লাগিব';

  @override
  String get playerScripts => 'mpv স্ক্ৰিপ্ট';

  @override
  String get playerScriptsManage => 'প্লাগইন যোগ কৰা, আতৰোৱা আৰু সলনি কৰা';

  @override
  String get playerScriptsAdd => 'স্ক্ৰিপ্ট যোগ কৰা';

  @override
  String get playerScriptsDesc =>
      'ইয়াত ৰখা Lua, JavaScript আৰু নেটিভ প্লাগইন প্লেবেক আৰম্ভ হোৱাৰ সময়ত লোড হয়।';

  @override
  String get playerScriptsNone => 'এতিয়াও কোনো স্ক্ৰিপ্ট নাই';

  @override
  String get playerScriptsBadFile => 'এটা .lua, .js বা নেটিভ প্লাগইন ফাইল বাছা';

  @override
  String get playerTuning => 'উন্নত ভিডিঅ’ টিউনিং';

  @override
  String get playerTuningDesc =>
      'ছিংক, কেশ্বিং, স্কেলিং আৰু টোন মেপিং অভাৰৰাইড কৰা। ভুল মানে প্লেবেক নষ্ট কৰিব পাৰে';

  @override
  String get playerVideoSync => 'ভিডিঅ’ ছিংক';

  @override
  String get playerInterpolation => 'ফ্ৰেম ইণ্টাৰপোলেশ্যন';

  @override
  String get playerInterpolationDesc => 'মসৃণ গতি, display-resample ছিংক লাগিব';

  @override
  String get playerPitch => 'পিচ কাৰেক্শ্যন';

  @override
  String get playerPitchDesc => 'আন গতিতো কণ্ঠ স্বাভাৱিক ৰাখা';

  @override
  String get playerCacheSeconds => 'কেশ্ব (ছেকেণ্ড)';

  @override
  String get playerReadahead => 'আগলৈ পঢ়া (ছেকেণ্ড)';

  @override
  String get playerThreads => 'ডিক’ডাৰ থ্ৰেড';

  @override
  String get playerDeband => 'ডিবেণ্ড';

  @override
  String get playerDebandDesc => 'গ্ৰেডিয়েণ্টত ৰঙৰ বেণ্ডিং কমোৱা';

  @override
  String get playerDebandIterations => 'ডিবেণ্ড ইটাৰেশ্যন';

  @override
  String get playerDebandThreshold => 'ডিবেণ্ড থ্ৰেশ্বহল্ড';

  @override
  String get playerCorrectDownscaling => 'সঠিক ডাউনস্কেলিং';

  @override
  String get playerSigmoid => 'ছিগম’ইড আপস্কেলিং';

  @override
  String get playerScale => 'আপস্কেলাৰ';

  @override
  String get playerCscale => 'ক্ৰ’মা আপস্কেলাৰ';

  @override
  String get playerDscale => 'ডাউনস্কেলাৰ';

  @override
  String get playerToneMapping => 'টোন মেপিং';

  @override
  String get playerTargetPeak => 'টাৰ্গেট পিক';

  @override
  String get playerOpenFiles => 'ভিডিঅ’ ফাইল খোলা';

  @override
  String get playerOpenFilesDesc => 'এই ডিভাইচৰ ফাইল চলোৱা';

  @override
  String get playerOpenFolder => 'ফোল্ডাৰ খোলা';

  @override
  String get playerOpenFolderDesc =>
      'ফোল্ডাৰৰ সকলো ভিডিঅ’ প্লেলিষ্ট হিচাপে চলোৱা';

  @override
  String get playerNetworkStream => 'নেটৱৰ্ক ষ্ট্ৰীম';

  @override
  String get playerNetworkStreamDesc => 'পোনপটীয়া ভিডিঅ’ বা HLS লিংক খোলা';

  @override
  String get playerStreamUrl => 'ষ্ট্ৰীম URL';

  @override
  String get playerStreamReferer => 'Referer (ঐচ্ছিক)';

  @override
  String get playerTorrent => 'টৰেণ্ট';

  @override
  String get playerTorrentDesc => 'মেগনেট লিংক বা .torrent ফাইল ষ্ট্ৰীম কৰা';

  @override
  String get playerMagnetLink => 'মেগনেট লিংক বা টৰেণ্ট URL';

  @override
  String get playerPickTorrent => 'এটা .torrent ফাইল বাছা';

  @override
  String get playerTorrentMissing =>
      'আগতে ছেটিংছ > এড-অনৰ পৰা টৰেণ্ট এড-অন ইনষ্টল কৰা';

  @override
  String get playerNoVideos => 'চলাব পৰা কোনো ভিডিঅ’ পোৱা নগল';

  @override
  String get playerReset => 'প্লেয়াৰ ছেটিংছ ৰিছেট কৰা';

  @override
  String get playerResetDesc => 'প্লেয়াৰৰ সকলো বিকল্প ডিফল্টলৈ ঘূৰাই দিয়া';

  @override
  String get playerResetConfirm => 'প্লেয়াৰৰ সকলো ছেটিংছ ৰিছেট কৰিবা নে?';

  @override
  String get playerResetDone => 'প্লেয়াৰ ছেটিংছ ৰিছেট হৈছে';

  @override
  String get playerQuality => 'কোৱালিটী';

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
  String get playerStreams => 'ষ্ট্ৰীম';

  @override
  String get playerAutoSelect => 'ষ্ট্ৰীম স্বয়ংক্ৰিয়ভাৱে বাছা';

  @override
  String get playerAutoSelectDesc =>
      'এই শিৰোনামৰ বাবে তোমাৰ শেষ পচন্দৰ আটাইতকৈ ওচৰৰ ষ্ট্ৰীমটো বাছা';

  @override
  String get playerLoadingStreams => 'ষ্ট্ৰীম বিচাৰি আছে…';

  @override
  String get playerNoStreams => 'এই পৰ্বত কোনো ষ্ট্ৰীম নাই';

  @override
  String get playerNoStreamsTitle => 'কোনো ষ্ট্ৰীম পোৱা নগল';

  @override
  String get playerFailed => 'প্লেবেক বিফল';

  @override
  String get playerTorrentNeeded => 'এই ষ্ট্ৰীমটো এটা টৰেণ্ট';

  @override
  String get playerTorrentNeededDesc =>
      'মেগনেট লিংক আৰু .torrent ফাইল চলাবলৈ টৰেণ্ট এড-অন ইনষ্টল কৰা';

  @override
  String get playerOpenAddons => 'এড-অন খোলা';

  @override
  String get playerTryAnotherStream => 'আন ষ্ট্ৰীম চেষ্টা কৰা';

  @override
  String get playerEpisodes => 'পৰ্ব';

  @override
  String get playerLock => 'নিয়ন্ত্ৰণ লক কৰা';

  @override
  String get playerFullscreen => 'ফুলস্ক্ৰীন';

  @override
  String get readerChapters => 'অধ্যায়';

  @override
  String get readerSettingsTitle => 'ৰিডাৰ ছেটিংছ';

  @override
  String get readerPreviousChapter => 'আগৰ অধ্যায়';

  @override
  String get readerNextChapter => 'পৰৱৰ্তী অধ্যায়';

  @override
  String get readerFirstChapter => 'এইটো প্ৰথম অধ্যায়';

  @override
  String get readerLastChapter => 'সকলো পঢ়া শেষ';

  @override
  String get readerFailed => 'এই অধ্যায় খুলিব পৰা নগল';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'এই অধ্যায়ত কোনো লিখনি নাই';

  @override
  String get readerPerTitle => 'কেৱল এই শিৰোনামৰ বাবে';

  @override
  String get readerPerTitleDesc => 'এই ৰিডাৰ ছেটিংছ কেৱল এই শিৰোনামৰ বাবে ৰাখা';

  @override
  String get readerSectionReading => 'পঢ়া';

  @override
  String get readerSectionControls => 'নিয়ন্ত্ৰণ';

  @override
  String get readerSectionDisplay => 'ডিছপ্লে';

  @override
  String get readerSectionNovel => 'উপন্যাস';

  @override
  String get readerMode => 'পঢ়াৰ মোড';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'সোঁফালৰ পৰা বাওঁফাললৈ';

  @override
  String get readerModeLtr => 'বাওঁফালৰ পৰা সোঁফাললৈ';

  @override
  String get readerModeVertical => 'ভাৰ্টিকেল পৃষ্ঠা';

  @override
  String get readerModeWebtoon => 'ৱেবটুন';

  @override
  String get readerModeContinuous => 'অবিৰত স্ক্ৰ’ল';

  @override
  String get readerScale => 'ছবিৰ স্কেল';

  @override
  String get readerScaleFit => 'স্ক্ৰীনত ফিট';

  @override
  String get readerScaleWidth => 'বহলত ফিট';

  @override
  String get readerScaleHeight => 'উচ্চতাত ফিট';

  @override
  String get readerScaleOriginal => 'মূল আকাৰ';

  @override
  String get readerScaleSmart => 'স্মাৰ্ট ফিট';

  @override
  String get readerDoublePage => 'ডাবল পৃষ্ঠা';

  @override
  String get readerDoublePageDesc =>
      'লেণ্ডস্কেপত দুখন পৃষ্ঠা কাষে কাষে দেখুওৱা';

  @override
  String get readerDoubleTapZoom => 'ডাবল টেপত জুম';

  @override
  String get readerDoubleTapZoomDesc => 'ডাবল টেপ কৰি পৃষ্ঠা জুম ইন-আউট কৰা';

  @override
  String get readerAnimate => 'পৃষ্ঠাৰ এনিমেশ্যন';

  @override
  String get readerAnimateDesc => 'পৃষ্ঠা লুটিওৱা এনিমেট কৰা';

  @override
  String get readerSidePadding => 'কাষৰ প্যাডিং';

  @override
  String get readerSidePaddingDesc => 'পৃষ্ঠাৰ কাষৰ খালী ঠাই শতাংশত';

  @override
  String get readerPageGap => 'পৃষ্ঠাৰ ব্যৱধান';

  @override
  String get readerPageGapDesc => 'পৃষ্ঠাৰ মাজৰ খালী ঠাই';

  @override
  String get readerAutoNext => 'পৰৱৰ্তী অধ্যায়লৈ আগবাঢ়া';

  @override
  String get readerAutoNextDesc =>
      'এই অধ্যায়ৰ শেষ পঢ়ি থাকোঁতে পৰৱৰ্তী অধ্যায় লোড কৰি ৰাখা';

  @override
  String get readerPreload => 'পৃষ্ঠা প্ৰিলোড কৰা';

  @override
  String get readerPreloadDesc => 'কিমানখন পৃষ্ঠা আগতেই ডাউনলোড হ’ব';

  @override
  String get readerTapZones => 'টেপ জ’ন';

  @override
  String get readerTapDefault => 'ডিফল্ট';

  @override
  String get readerTapLShaped => 'L-আকৃতিৰ';

  @override
  String get readerTapKindle => 'Kindle-ৰ দৰে';

  @override
  String get readerTapEdge => 'কেৱল কাষবোৰ';

  @override
  String get readerTapOff => 'নিষ্ক্ৰিয়';

  @override
  String get readerInvertTaps => 'টেপ জ’ন ওলোটাই দিয়া';

  @override
  String get readerInvertTapsDesc => 'আগৰ আৰু পৰৱৰ্তী ঠাই সলনা-সলনি কৰা';

  @override
  String get readerBackground => 'বেকগ্ৰাউণ্ড';

  @override
  String get readerBackgroundBlack => 'ক’লা';

  @override
  String get readerBackgroundGray => 'ধূসৰ';

  @override
  String get readerBackgroundWhite => 'বগা';

  @override
  String get readerBackgroundTheme => 'এপৰ থিম';

  @override
  String get readerFilter => 'ৰঙৰ ফিল্টাৰ';

  @override
  String get readerFilterNone => 'নাই';

  @override
  String get readerFilterGrayscale => 'গ্ৰেস্কেল';

  @override
  String get readerFilterInvert => 'ইনভাৰ্ট';

  @override
  String get readerFilterSepia => 'ছেপিয়া';

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
  String get readerDim => 'ডিম';

  @override
  String get readerDimDesc => 'পৃষ্ঠা আন্ধাৰ কৰা';

  @override
  String get readerPageNumber => 'পৃষ্ঠাৰ নম্বৰ';

  @override
  String get readerPageNumberDesc => 'পঢ়োঁতে পৃষ্ঠাৰ নম্বৰ দেখুওৱা';

  @override
  String get readerFullscreen => 'ফুলস্ক্ৰীন';

  @override
  String get readerFullscreenDesc => 'ছিষ্টেম বাৰ লুকুওৱা';

  @override
  String get readerCropBorders => 'কাষ কাটা';

  @override
  String get readerCropBordersDesc =>
      'পৃষ্ঠাৰ পৰা খালী বগা বা ক’লা মাৰ্জিন কাটি পেলোৱা';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ভলিউম কীৰে পৃষ্ঠা লুটিওৱা';

  @override
  String get readerVolumeKeysDesc => 'ভলিউম ডাউনে আগলৈ, ভলিউম আপে পিছলৈ যায়';

  @override
  String get readerBookmarks => 'বুকমাৰ্ক';

  @override
  String get readerBookmarkAdd => 'বুকমাৰ্ক যোগ কৰা';

  @override
  String get readerBookmarkRemove => 'বুকমাৰ্ক আতৰোৱা';

  @override
  String get readerBookmarksEmpty => 'এতিয়াও কোনো বুকমাৰ্ক নাই';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'পৃষ্ঠা $page / $total';
  }

  @override
  String get readerAutoScroll => 'অটো স্ক্ৰ’ল';

  @override
  String get readerAutoScrollStop => 'অটো স্ক্ৰ’ল ৰোকা';

  @override
  String get readerAutoScrollSpeed => 'অটো স্ক্ৰ’লৰ গতি';

  @override
  String get readerAutoScrollSpeedDesc =>
      'পৃষ্ঠা কিমান বেগাই নিজে নিজে স্ক্ৰ’ল বা লুটিয়াব';

  @override
  String get readerKeepOn => 'স্ক্ৰীন চালু ৰখা';

  @override
  String get readerKeepOnDesc => 'পঢ়োঁতে স্ক্ৰীন বন্ধ হোৱাত বাধা দিয়া';

  @override
  String get readerOrientation => 'অৰিয়েণ্টেশ্যন';

  @override
  String get readerOrientationFree => 'মুক্ত';

  @override
  String get readerOrientationPortrait => 'প’ৰ্ট্ৰেইট';

  @override
  String get readerOrientationLandscape => 'লেণ্ডস্কেপ';

  @override
  String get readerSaveProgress => 'প্ৰগ্ৰেছ সংৰক্ষণ কৰা';

  @override
  String get readerSaveProgressDesc =>
      'তোমাৰ পৃষ্ঠা মনত ৰাখা আৰু অধ্যায় পঢ়া হ’ল বুলি চিহ্নিত কৰা';

  @override
  String get readerReset => 'ৰিডাৰ ছেটিংছ ৰিছেট কৰা';

  @override
  String get readerResetDesc => 'ডিফল্টলৈ ঘূৰি যোৱা';

  @override
  String get novelSize => 'লিখনিৰ আকাৰ';

  @override
  String get novelFont => 'ফন্ট';

  @override
  String get novelLineHeight => 'শাৰীৰ উচ্চতা';

  @override
  String get novelParagraph => 'অনুচ্ছেদৰ ব্যৱধান';

  @override
  String get novelMargin => 'মাৰ্জিন';

  @override
  String get novelTheme => 'ৰিডাৰ থিম';

  @override
  String get novelThemeApp => 'এপৰ থিম';

  @override
  String get novelThemeLight => 'লাইট';

  @override
  String get novelThemeSepia => 'ছেপিয়া';

  @override
  String get novelThemeDark => 'ডাৰ্ক';

  @override
  String get novelThemeBlack => 'ক’লা';

  @override
  String get novelJustify => 'লিখনি জাষ্টিফাই কৰা';

  @override
  String get novelJustifyDesc => 'লিখনি দুয়োটা কাষত সমান কৰা';

  @override
  String get trackProgressTitle => 'প্ৰগ্ৰেছ সংৰক্ষণ কৰিবা নে?';

  @override
  String trackProgressAnime(String name) {
    return 'চাওঁতে তোমাৰ তালিকাত $name ট্ৰেক কৰিবা নে? স্থানীয় ৰাখিবলৈ \"কেৱল এই ডিভাইচত\" বাছা, একো সংৰক্ষণ নকৰিবলৈ \"নহয়\" বাছা।';
  }

  @override
  String trackProgressManga(String name) {
    return 'অধ্যায় শেষ কৰিলে তোমাৰ তালিকাত $name ট্ৰেক কৰিবা নে? স্থানীয় ৰাখিবলৈ \"কেৱল এই ডিভাইচত\" বাছা, একো সংৰক্ষণ নকৰিবলৈ \"নহয়\" বাছা।';
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
  String get trackProgressYes => 'সংৰক্ষণ';

  @override
  String get trackProgressReset =>
      'এই ধৰণৰ বাবে প্ৰগ্ৰেছ সংৰক্ষণৰ প্ৰশ্ন ৰিছেট হৈছে, আকৌ সোধা হ’ব';

  @override
  String get trackProgressNo => 'নহয়';

  @override
  String get trackProgressOff => 'বন্ধ';

  @override
  String get trackProgressLocal => 'কেৱল এই ডিভাইচত';

  @override
  String get trackProgressSettingAnime => 'এনিমেৰ প্ৰগ্ৰেছ ট্ৰেক কৰা';

  @override
  String get trackProgressSettingManga =>
      'মাংগা আৰু উপন্যাসৰ প্ৰগ্ৰেছ ট্ৰেক কৰা';

  @override
  String get trackProgressSettingDesc =>
      'পৰ্ব খুলিলে বা অধ্যায় শেষ কৰিলে কি হ’ব';

  @override
  String get trackProgressAsk => 'সোধা';

  @override
  String get trackProgressAlways => 'সদায়';

  @override
  String get dantotsuImport => 'Dantotsu-ৰ পৰা ইমপৰ্ট কৰা';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu ছেটিংছ বেকআপ পঢ়া (.ani, বা এনক্ৰিপ্টেড .sani)';

  @override
  String get dantotsuPick => 'এটা Dantotsu বেকআপ বাছা';

  @override
  String get dantotsuNothing => 'এই ফাইলত ইমপৰ্ট কৰিবলগীয়া একো নাই';

  @override
  String get dantotsuApply => 'বাছনিবোৰ ইমপৰ্ট কৰা';

  @override
  String dantotsuDone(int done, int total) {
    return '$totalৰ ভিতৰত $doneটা ইমপৰ্ট হৈছে';
  }

  @override
  String get dantotsuGroupAccounts => 'একাউণ্ট';

  @override
  String get dantotsuGroupAppearance => 'চেহেৰা';

  @override
  String get dantotsuGroupExtensions => 'এক্সটেনছন';

  @override
  String get dantotsuGroupApp => 'এপ';

  @override
  String get dantotsuGroupPlayer => 'প্লেয়াৰ';

  @override
  String get dantotsuAnilist => 'AniList লগইন';

  @override
  String get dantotsuMal => 'MyAnimeList লগইন';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence টোকেন';

  @override
  String get dantotsuTheme => 'থিম';

  @override
  String get dantotsuReposAnime => 'এনিমে এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuReposManga => 'মাংগা এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuReposNovel => 'উপন্যাস এক্সটেনছন ৰিপজিটৰী';

  @override
  String get dantotsuUpdates => 'আপডেট পৰীক্ষা';

  @override
  String get dantotsuComments => 'মন্তব্য';

  @override
  String get dantotsuActivity => 'AniList জাননী পোলিং';

  @override
  String get dantotsuDns => 'DNS প্ৰভাইডাৰ';

  @override
  String get dantotsuPlayer => 'প্লেয়াৰৰ গতি আৰু ছাবটাইটেলৰ ৰং';

  @override
  String get dantotsuWarning => 'এই ফাইলত লগইন টোকেন আছে। ইয়াক গোপন ৰাখা।';

  @override
  String get novelIndent => 'অনুচ্ছেদত ইণ্ডেণ্ট দিয়া';

  @override
  String get novelIndentDesc =>
      'প্ৰতিটো অনুচ্ছেদ প্ৰথম শাৰীত ইণ্ডেণ্ট দি আৰম্ভ কৰা';

  @override
  String get novelLetterSpacing => 'আখৰৰ ব্যৱধান';

  @override
  String get novelSectionTranslate => 'অনুবাদ';

  @override
  String get sectionExperimental => 'পৰীক্ষামূলক';

  @override
  String get kitsuGraphqlDetail => 'অধিক দ্ৰুত বিৱৰণ পেজ (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'শিৰোনাম, ইয়াৰ চৰিত্ৰ, ষ্টাফ আৰু তোমাৰ এণ্ট্ৰি এটা অনুৰোধতে লোড কৰা';

  @override
  String get togetherTitle => 'একেলগে চোৱা';

  @override
  String get togetherIntro =>
      'বন্ধুৱে পঠোৱা ৰুমৰ লিংক পেষ্ট কৰা। লগে লগে যোগ দিবা আৰু তেওঁলোকে চাবলৈ আৰম্ভ কৰিলে প্লেয়াৰ খোল খাব।';

  @override
  String get togetherName => 'তোমাৰ নাম';

  @override
  String get togetherConnecting => 'সংযোগ হৈ আছে…';

  @override
  String get togetherLeave => 'ৰুম এৰি দিয়া';

  @override
  String get togetherYou => 'তুমি';

  @override
  String get togetherNoChat => 'এতিয়াও কোনো বাৰ্তা নাই';

  @override
  String get togetherChatHint => 'বাৰ্তা';

  @override
  String get togetherCopyInvite => 'নিমন্ত্ৰণ কপি কৰা';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'ছাৰ্ভাৰ আৰু ৰুম কপি হৈছে';

  @override
  String get togetherConnectionLost => 'সংযোগ বিচ্ছিন্ন হৈছে';

  @override
  String togetherConnectedTo(String room) {
    return '$roomৰ লগত সংযুক্ত হৈছে';
  }

  @override
  String togetherFailed(String error) {
    return 'সংযোগ কৰিব পৰা নগল: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$nameএ যোগ দিলে';
  }

  @override
  String togetherLeft(String name) {
    return '$nameএ এৰি গ’ল';
  }

  @override
  String togetherPaused(String name) {
    return '$nameএ পজ কৰিলে';
  }

  @override
  String togetherResumed(String name) {
    return '$nameএ আকৌ চলালে';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$nameএ $timeলৈ জপিয়াই গ’ল';
  }

  @override
  String get togetherFollowFailed =>
      'হোষ্টৰ পৰ্ব খুলিব পৰা নগল। নিজে খুলি লোৱা।';

  @override
  String get togetherJoinRole => 'ৰুমত যোগ দিয়া';

  @override
  String get togetherOpenHost => 'হোষ্টৰ পৰ্ব খোলা';

  @override
  String get togetherShowChat => 'লাইভ চেট দেখুওৱা';

  @override
  String get togetherWaitingHost => 'হোষ্টে পৰ্ব আৰম্ভ কৰিবলৈ অপেক্ষা কৰি আছে';

  @override
  String get togetherRoomLink => 'ৰুমৰ লিংক';

  @override
  String get togetherBadLink => 'এইটো ৰুমৰ লিংক নহয়';

  @override
  String get togetherHostClosed => 'হোষ্টে ৰুম বন্ধ কৰি দিলে';

  @override
  String get togetherNowPlaying => 'এতিয়া চলি আছে';

  @override
  String togetherWatchingCount(int count) {
    return '$count জনে চাই আছে';
  }

  @override
  String togetherWantsPause(String user) {
    return '$userএ পজ কৰিব বিচাৰে';
  }

  @override
  String togetherWantsResume(String user) {
    return '$userএ আকৌ চলাব বিচাৰে';
  }

  @override
  String get togetherChip => 'একেলগে';

  @override
  String get togetherSettingsDesc => 'লিংকেৰে বন্ধুৰ ৰুমত যোগ দিয়া';

  @override
  String get novelBilingual => 'মূল আৰু অনুবাদ দুয়োটা দেখুওৱা';

  @override
  String get novelBilingualDesc =>
      'প্ৰতিটো অনুচ্ছেদত মূল লিখনি আৰু তাৰ তলত অনুবাদ দেখা যাব';

  @override
  String get novelTranslateTo => 'অনুবাদ কৰা';

  @override
  String get novelTranslateOff => 'বন্ধ';

  @override
  String get novelSectionSpeech => 'টেক্সট টু স্পীচ';

  @override
  String get novelSpeechRate => 'কথাৰ গতি';

  @override
  String get novelSpeechPitch => 'কথাৰ পিচ';

  @override
  String get novelSpeak => 'জোৰেৰে পঢ়ি শুনোৱা';

  @override
  String get novelSpeakStop => 'জোৰেৰে পঢ়া বন্ধ কৰা';

  @override
  String get novelTranslate => 'অধ্যায় অনুবাদ কৰা';

  @override
  String get novelTranslateShowOriginal => 'মূল দেখুওৱা';

  @override
  String novelTranslateFailed(String error) {
    return 'অনুবাদ বিফল: $error';
  }

  @override
  String get novelSpeechUnavailable => 'এই ডিভাইচত টেক্সট টু স্পীচ উপলব্ধ নহয়';

  @override
  String get novelSpeechVoice => 'কণ্ঠ';

  @override
  String get novelSpeechVoiceDefault => 'ছিষ্টেম ডিফল্ট';

  @override
  String get novelSpeakPrevious => 'আগৰ শাৰী';

  @override
  String get novelSpeakNext => 'পৰৱৰ্তী শাৰী';

  @override
  String get novelTapPaging => 'পৃষ্ঠা লুটিয়াবলৈ কাষত টেপ কৰা';

  @override
  String get novelTapPagingDesc =>
      'পৃষ্ঠা স্ক্ৰ’ল কৰিবলৈ বাওঁ বা সোঁফালে টেপ কৰা, মাজত নিয়ন্ত্ৰণ দেখা যায়';

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
    return 'আৰু $count মিনিট বাকী';
  }

  @override
  String get novelBold => 'বোল্ড লিখনি';

  @override
  String get novelBoldDesc => 'অধিক ডাঠ ওজন ব্যৱহাৰ কৰা';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter শেষ হৈছে';
  }

  @override
  String readerNextUp(String chapter) {
    return 'পৰৱৰ্তী: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'আগৰটো: $chapter';
  }

  @override
  String get readerNoPages => 'এই অধ্যায়ত কোনো পৃষ্ঠা নাই';

  @override
  String get readerLoadingPages => 'পৃষ্ঠা লোড কৰি আছে…';

  @override
  String get readerSlowPage => 'এই পৃষ্ঠা এতিয়াও লোড হৈ আছে…';

  @override
  String get readerPageFailed => 'এই পৃষ্ঠা লোড কৰিব পৰা নগল';

  @override
  String get playerShowComments => 'মন্তব্য দেখুওৱা';

  @override
  String get playerHideComments => 'মন্তব্য লুকুওৱা';

  @override
  String get playerSubtitles => 'ছাবটাইটেল';

  @override
  String get playerSubtitlesOff => 'ছাবটাইটেল বন্ধ';

  @override
  String get playerAudio => 'অডিঅ’';

  @override
  String get playerAddSubtitle => 'ছাবটাইটেল ফাইল যোগ কৰা';

  @override
  String get playerAddAudio => 'অডিঅ’ ফাইল যোগ কৰা';

  @override
  String get playerChapters => 'অধ্যায়';

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
  String get playerNoChapters => 'কোনো অধ্যায় নাই';

  @override
  String get playerTimestamp => 'টাইমষ্টেম্প';

  @override
  String get playerAutoPlayDelay => 'পৰৱৰ্তী পৰ্বৰ কাউণ্টডাউন';

  @override
  String get playerWatchedAt => 'চোৱা বুলি গণ্য কৰা';

  @override
  String playerNextIn(int seconds) {
    return 'পৰৱৰ্তী পৰ্ব $seconds ছেকেণ্ডত';
  }

  @override
  String get playerPlayNow => 'এতিয়াই চলোৱা';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: এই শিৰোনামৰ বাবে স্বয়ংক্ৰিয়ভাৱে এৰি যাব';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: এই শিৰোনামৰ বাবে স্বয়ংক্ৰিয়ভাৱে এৰি নাযায়';
  }

  @override
  String get playerAudioLanguage => 'পচন্দৰ অডিঅ’ ভাষা';

  @override
  String get playerLanguageOrderHint =>
      'ক’মাৰে ভাষা পৃথক কৰা। প্ৰথমে পোৱাটো ব্যৱহাৰ হ’ব।';

  @override
  String get playerPip => 'পিকচাৰ ইন পিকচাৰ';

  @override
  String get playerAutoPip => 'ওলাই গ’লে পিকচাৰ ইন পিকচাৰ';

  @override
  String get playerAutoPipDesc => 'এপ এৰি গ’লে সৰু ৱিণ্ড’ত চলি থাকিব';

  @override
  String playerAutoPlaying(String title) {
    return 'ইয়াৰ পিছত $title চলি আছে…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'শ্বেডাৰ ইনষ্টল কৰিব পৰা নগল: $error';
  }

  @override
  String playerChapter(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get playerPerTitle => 'কেৱল এই শিৰোনামৰ বাবে';

  @override
  String get playerPerTitleDesc =>
      'এই বিকল্পবোৰ এই শিৰোনামৰ বাবে ৰাখা আৰু তোমাৰ ডিফল্ট নুচুবা';

  @override
  String get playerSwapGestures => 'স্ৱাইপৰ কাষ সলনি কৰক';

  @override
  String get playerSwapGesturesDesc => 'বাওঁফালে উজ্জ্বলতা আৰু সোঁফালে ভলিউম';

  @override
  String get playerOpenBig => 'ডাঙৰ ভিউত খোলক';

  @override
  String get playerOpenBigDesc =>
      'পৰ্ব তালিকাৰ সলনি প্লেয়াৰ ফুলস্ক্ৰীণত আৰম্ভ কৰক';

  @override
  String get playerPauseOnBlur => 'ফকাছ হেৰুৱালে পজ কৰক';

  @override
  String get playerPauseOnBlurDesc =>
      'নটিফিকেচন পেনেলৰ দৰে কিবা এটাই এপটো ঢাকিলে পজ হ’ব, আৰু ঘূৰি আহিলে চলিব';

  @override
  String get playerAudioOutput => 'অডিঅ’ আউটপুট';

  @override
  String get fontAppDefault => 'এপৰ ফন্ট';

  @override
  String get fontImport => 'ফন্ট ইমপৰ্ট কৰা';

  @override
  String get fontSample =>
      'ক্ষিপ্ৰ মটিয়া শিয়ালে অলস কুকুৰটোৰ ওপৰেৰে জপিয়ায়';

  @override
  String get playerSubtitleDelay => 'ছাবটাইটেল বিলম্ব';

  @override
  String get playerAudioDelay => 'অডিঅ’ বিলম্ব';

  @override
  String get playerDelayReset => 'ৰিছেট';

  @override
  String get playerOnlineSubtitles => 'অনলাইন ছাবটাইটেল';

  @override
  String get playerOnlineSearchHint => 'শিৰোনাম আৰু পৰ্ব';

  @override
  String get playerOnlineNone => 'কোনো ছাবটাইটেল পোৱা নগল';

  @override
  String playerOnlineFailed(String error) {
    return 'ছাবটাইটেল সন্ধান বিফল: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'এই ছাবটাইটেল ডাউনলোড কৰিব পৰা নগল: $error';
  }

  @override
  String get playerOnlineMatch => 'এই ফাইলৰ লগত মিলে';

  @override
  String get playerOnlineEpisode => 'পৰ্বৰ মিল';

  @override
  String playerOnlineDownloads(int count) {
    return '$countটা ডাউনলোড';
  }

  @override
  String get playerSeekPreview => 'ছিক প্ৰিভিউ';

  @override
  String get playerSeekPreviewDesc =>
      'স্ক্ৰাব কৰোঁতে ছিক বাৰৰ ওপৰত সৰু ফ্ৰেম প্ৰিভিউ দেখুওৱা। ই কম ৰিজলিউশ্যনৰ দ্বিতীয় এটা ডিক’ডাৰ খোলে, গতিকে ষ্ট্ৰীমত অতিৰিক্ত ডাটা খৰচ হয়।';

  @override
  String get playerSettingsChip => 'ছেটিংছ';

  @override
  String get playerAudioDevice => 'অডিঅ’ ডিভাইচ';

  @override
  String get settingsDownloads => 'ডাউনলোড';

  @override
  String get settingsDownloadsDesc => 'অফলাইন পৰ্ব, কিউ আৰু অফলাইন মোড';

  @override
  String get downloadsTitle => 'ডাউনলোড';

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
  String get downloadsOpenDesc => 'কিউ আৰু এই ডিভাইচত সংৰক্ষণ কৰা সকলো চোৱা';

  @override
  String get downloadTitle => 'ডাউনলোড';

  @override
  String get downloadAlready => 'আগতেই ডাউনলোড হৈছে বা কিউত আছে';

  @override
  String get downloadPickStream => 'কোনটো ষ্ট্ৰীম ডাউনলোড কৰিবা?';

  @override
  String get downloadPickSubtitle => 'কোনটো ছাবটাইটেল ডাউনলোড কৰিবা?';

  @override
  String get downloadPickAudio => 'কোনটো অডিঅ’ ট্ৰেক ডাউনলোড কৰিবা?';

  @override
  String get downloadNoAudio => 'অতিৰিক্ত অডিঅ’ নাই';

  @override
  String get downloadAudio => 'অডিঅ’';

  @override
  String get downloadNoSubtitle => 'ছাবটাইটেল নাই';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'এই ষ্ট্ৰীমটো এটা HLS প্লেলিষ্ট। ডাউনলোড কৰিবলৈ FFmpeg এড-অন লাগিব।';

  @override
  String get downloadSourceMissing => 'এই পৰ্বৰ উৎস ইনষ্টল কৰা নাই';

  @override
  String get downloadWaitingConnection => 'সংযোগৰ অপেক্ষাত';

  @override
  String get downloadSubtitles => 'ছাবটাইটেল';

  @override
  String get downloadDownloaded => 'ডাউনলোড হৈছে';

  @override
  String get downloadOffline => 'অফলাইন';

  @override
  String get downloadDelete => 'ডাউনলোড মচি পেলোৱা';

  @override
  String get downloadCancel => 'বাতিল';

  @override
  String get downloadPause => 'পজ';

  @override
  String get downloadPaused => 'পজ কৰা হৈছে';

  @override
  String get downloadResume => 'পুনৰ আৰম্ভ কৰা';

  @override
  String get downloadPauseAll => 'সকলো পজ কৰা';

  @override
  String get downloadResumeAll => 'সকলো পুনৰ আৰম্ভ কৰা';

  @override
  String get downloadQueuedState => 'কিউত অপেক্ষা কৰি আছে';

  @override
  String get downloadResolving => 'ষ্ট্ৰীম অনা হৈছে…';

  @override
  String get downloadUsedFallback => 'মিলা ষ্ট্ৰীম নাই, প্ৰথমটো লোৱা হৈছে';

  @override
  String get downloadTabQueue => 'কিউ';

  @override
  String get downloadTabDone => 'হৈ গ’ল';

  @override
  String get downloadTabFailed => 'বিফল';

  @override
  String get downloadEmptyQueue => 'একো ডাউনলোড হোৱা নাই';

  @override
  String get downloadEmptyDone => 'এতিয়াও একো ডাউনলোড হোৱা নাই';

  @override
  String get downloadEmptyFailed => 'কোনো বিফল ডাউনলোড নাই';

  @override
  String get downloadNext => 'পৰৱৰ্তী পৰ্ব';

  @override
  String downloadNextN(int count) {
    return 'পৰৱৰ্তী $countটা পৰ্ব';
  }

  @override
  String downloadUnwatched(int count) {
    return 'নোচোৱা সকলো ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'এই ৰেঞ্জ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'সকলো পৰ্ব ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰ্ব কিউত',
      one: '১টা পৰ্ব কিউত',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ডাউনলোড হৈছে';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ডাউনলোড বিফল হৈছে';
  }

  @override
  String downloadStorage(String size) {
    return 'ডাউনলোডত $size ব্যৱহাৰ হৈছে';
  }

  @override
  String get downloadQueueHeader => 'কিউ';

  @override
  String get downloadParallel => 'একেলগে ডাউনলোড';

  @override
  String get downloadParallelDesc =>
      'এটা এটাকৈ ডাউনলোড চলোৱা বা কেইবাটাও একেলগে';

  @override
  String get downloadOneByOne => 'এটা এটাকৈ';

  @override
  String get downloadNotifications => 'ডাউনলোড জাননী';

  @override
  String get downloadNotificationsDesc =>
      'ছিষ্টেমে সমৰ্থন কৰিলে লাইভ প্ৰগ্ৰেছ, নহ’লে ডাউনলোড শেষ হ’লে এটা টোকা';

  @override
  String get downloadNotifyLive => 'লাইভ';

  @override
  String get downloadNotifyDone => 'শেষ হ’লে';

  @override
  String get downloadNotifyOff => 'বন্ধ';

  @override
  String get downloadInfoFile => 'প্ৰতিটো ডাউনলোডৰ কাষত এটা তথ্য ফাইল লিখা';

  @override
  String get downloadInfoFileDesc =>
      'ষ্ট্ৰীম, কোৱালিটী, ছাবটাইটেল আৰু স্কিপৰ সময় এটা সৰু .json ফাইলত সংৰক্ষণ কৰে';

  @override
  String get offlineHeader => 'অফলাইন';

  @override
  String get offlineModeDesc =>
      '\"অটো\" কেৱল ইণ্টাৰনেট নোহোৱাকৈ এপ চালু হ’লেহে অফলাইনলৈ যায়। \"সদায়\" তুমি সলনি নকৰালৈকে অফলাইনত থাকে।';

  @override
  String get offlineModeOff => 'বন্ধ';

  @override
  String get offlineModeAlways => 'সদায়';

  @override
  String get offlineModeOn =>
      'অফলাইন মোড চালু। পৰিবৰ্তনবোৰ ইয়াত সংৰক্ষণ হ’ব আৰু অনলাইনলৈ উভতিলে পঠোৱা হ’ব।';

  @override
  String get offlineSaved => 'এই ডিভাইচত সংৰক্ষণ হৈছে, অনলাইনলৈ আহিলে ছিংক হ’ব';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰিবৰ্তন ছিংক হৈছে',
      one: '১টা পৰিবৰ্তন ছিংক হৈছে',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা পৰিবৰ্তন ছিংকৰ অপেক্ষাত',
      one: '১টা পৰিবৰ্তন ছিংকৰ অপেক্ষাত',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'ছিংকৰ অপেক্ষাত থকা পৰিবৰ্তন';

  @override
  String get offlinePendingNone => 'একো অপেক্ষাত নাই';

  @override
  String get offlineSyncNow => 'এতিয়াই ছিংক কৰা';

  @override
  String get offlineDiscard => 'পেলাই দিয়া';

  @override
  String get downloadNotOffline =>
      'এই পৰ্ব ডাউনলোড কৰা নাই, গতিকে অফলাইনত উপলব্ধ নহয়';

  @override
  String get offlineModeChip => 'অফলাইন';

  @override
  String get downloadNextChapter => 'পৰৱৰ্তী অধ্যায়';

  @override
  String downloadNextChapters(int count) {
    return 'পৰৱৰ্তী $countটা অধ্যায়';
  }

  @override
  String downloadUnread(int count) {
    return 'নপঢ়া সকলো ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'সকলো অধ্যায় ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $totalখন পৃষ্ঠা';
  }

  @override
  String downloadPagesCount(int count) {
    return '$countখন পৃষ্ঠা';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg এড-অন লাগিব';

  @override
  String get downloadFfmpegBody =>
      'এই ষ্ট্ৰীমটো এটা HLS প্লেলিষ্ট। FFmpeg এড-অনে ইয়াৰ টুকুৰাবোৰ জোৰা লগাই এটা mp4 ফাইল বনায়। ইয়াৰ অবিহনে টুকুৰাবোৰ এটা পৰ্বৰ ফোল্ডাৰত থাকে আৰু তাৰ পৰাই চলে।';

  @override
  String get downloadFfmpegInstall => 'ইনষ্টল';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ইনষ্টল হৈ আছে, অলপ সময় লাগিব পাৰে…';

  @override
  String get downloadFinishing => 'টুকুৰাবোৰ জোৰা লগাই এটা ফাইল বনাই আছে…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $totalটা অংশ';
  }

  @override
  String get downloadTorrentNoFile =>
      'এই টৰেণ্টত ডাউনলোড কৰিবলগীয়া কোনো ভিডিঅ’ ফাইল নাই';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বস্তু ডাউনলোড হৈ আছে',
      one: '১টা বস্তু ডাউনলোড হৈ আছে',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'চোৱা ডাউনলোড মচি পেলোৱা';

  @override
  String get downloadAutoDeleteDesc =>
      'তোমাৰ প্ৰগ্ৰেছ সেই পৰ্ব বা অধ্যায়লৈ পালে ডাউনলোড আতৰাই দিয়ে';

  @override
  String get downloadConnections => 'প্ৰতি ডাউনলোডত সংযোগ';

  @override
  String get downloadConnectionsDesc =>
      'ডাঙৰ ফাইল ভাগ কৰি কেইবাটাও অংশ একেলগে অনে। কিছুমান ছাৰ্ভাৰে ইয়াক সীমিত কৰে।';

  @override
  String get downloadPlayChoice => 'য’ৰ পৰা চলাব';

  @override
  String get downloadPlayLocalDesc => 'এই ডিভাইচত সংৰক্ষণ কৰা ফাইল';

  @override
  String get downloadPlayStream => 'অনলাইনত ষ্ট্ৰীম কৰা';

  @override
  String get downloadPlayStreamDesc => 'উৎসৰ পৰা পৰ্ব লোড কৰা';

  @override
  String get offlineFeedTitle => 'এই ডিভাইচত ডাউনলোড কৰা';

  @override
  String get offlineFeedEmpty =>
      'অনলাইনত থাকোঁতে কিবা ডাউনলোড কৰা, ইয়াত দেখা যাব';

  @override
  String get offlineEnabled => 'অফলাইন মোড চালু';

  @override
  String get offlineDisabled => 'অফলাইন মোড বন্ধ';

  @override
  String get downloadReadChoice => 'য’ৰ পৰা পঢ়িব';

  @override
  String get downloadReadLocalDesc => 'এই ডিভাইচত সংৰক্ষণ কৰা পৃষ্ঠা';

  @override
  String get downloadReadOnline => 'অনলাইনত পঢ়া';

  @override
  String get downloadReadOnlineDesc => 'উৎসৰ পৰা অধ্যায় লোড কৰা';

  @override
  String downloadDeleteConfirm(String name) {
    return 'এই ডিভাইচৰ পৰা $name মচিবা নে?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$nameৰ ডাউনলোড বাতিল কৰিবা নে? আগতেই যিমান ডাউনলোড হৈছে সেয়া মচা যাব।';
  }

  @override
  String get downloadFfmpegFolder => 'ফোল্ডাৰ হিচাপে ৰাখা';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'যিবোৰ $countটা পৰিবৰ্তন কেতিয়াও পঠোৱা হোৱা নাই সেয়া পেলাই দিবা নে? এইটো ঘূৰাব নোৱাৰি।',
      one:
          'যিটো পৰিবৰ্তন কেতিয়াও পঠোৱা হোৱা নাই সেয়া পেলাই দিবা নে? এইটো ঘূৰাব নোৱাৰি।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi-ৰ অপেক্ষাত';

  @override
  String get downloadWaitingMetered => 'মিটাৰড সংযোগত পজ কৰা';

  @override
  String get downloadWifiOnly => 'কেৱল Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => 'ম’বাইল ডাটাত থাকিলে ডাউনলোড অপেক্ষা কৰিব';

  @override
  String get downloadMetered => 'মিটাৰড সংযোগত পজ কৰা';

  @override
  String get downloadMeteredDesc =>
      'তোমাৰ ডিভাইচে মিটাৰড বুলি ধৰা Wi-Fi-তো অপেক্ষা কৰিব';

  @override
  String get downloadSpeedLimit => 'গতিৰ সীমা';

  @override
  String get downloadSpeedLimitDesc => 'মুঠ ডাউনলোডৰ গতিৰ সীমা ঠিক কৰে';

  @override
  String get downloadUnlimited => 'সীমাহীন';

  @override
  String get downloadMoveToTop => 'একেবাৰে ওপৰলৈ নিয়া';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seedsটা চিড · $peersটা পিয়াৰ';
  }

  @override
  String get downloadTorrentFile => 'কোনটো ফাইল?';

  @override
  String get downloadTorrentAuto => 'পৰ্ব স্বয়ংক্ৰিয়ভাৱে মিলোৱা';

  @override
  String get downloadTorrentLoading => 'টৰেণ্ট পঢ়ি আছে…';

  @override
  String get watchAutoSource => 'পৰৱৰ্তী উৎসলৈ স্বয়ংক্ৰিয়ভাৱে যোৱা';

  @override
  String get watchAutoSourceDesc =>
      'উৎসে শিৰোনাম বিচাৰি নাপালে বা লোড নহ’লে, পৰৱৰ্তী ইনষ্টল কৰা উৎস চেষ্টা কৰা';

  @override
  String get extensionTest => 'এক্সটেনছন পৰীক্ষা কৰা';

  @override
  String get extensionTestCopy => 'বিফলবোৰ আৰু সিহঁতৰ লগ কপি কৰা';

  @override
  String get extensionTestQuery => 'সন্ধানৰ শব্দ';

  @override
  String get extensionTestRun => 'চলোৱা';

  @override
  String get extensionTestStop => 'ৰোকা';

  @override
  String get extensionTestNone => 'এই ধৰণৰ কোনো ইনষ্টল কৰা এক্সটেনছন নাই';

  @override
  String get extensionTestNotRun => 'এতিয়াও পৰীক্ষা কৰা হোৱা নাই';

  @override
  String get extensionTestSearch => 'সন্ধান';

  @override
  String get extensionTestDetail => 'বিৱৰণ';

  @override
  String get extensionTestUnits => 'পৰ্ব / অধ্যায়';

  @override
  String get extensionTestLinks => 'ষ্ট্ৰীম / পৃষ্ঠা';

  @override
  String extensionTestFailedAt(String step) {
    return '$stepত বিফল';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$totalৰ ভিতৰত $doneটা পৰীক্ষা হৈছে · $passedটা পাছ · $failedটা ফেইল';
  }

  @override
  String get extensionTestCopyLogs => 'সম্পূৰ্ণ লগৰ সৈতে সকলো কপি কৰা';

  @override
  String get onboardingFeaturesTitle => 'সকলো এঠাইতে';

  @override
  String get onboardingFeaturesBody =>
      'তুমি যি ট্ৰেক কৰা, চোৱা আৰু পঢ়া সকলো, এপ সলনি নকৰাকৈ।';

  @override
  String get onboardingFeatureTrack => 'সকলো ট্ৰেক কৰা';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu আৰু MangaBaka-ত তালিকা, প্ৰগ্ৰেছ আৰু স্ক’ৰ।';

  @override
  String get onboardingFeatureWatch => 'চোৱা আৰু পঢ়া';

  @override
  String get onboardingFeatureWatchDesc =>
      'এক্সটেনছন ইনষ্টল কৰি এপতে এনিমে ষ্ট্ৰীম কৰা বা মাংগা-উপন্যাস পঢ়া।';

  @override
  String get onboardingFeatureOffline => 'অফলাইনতো লগত লৈ ফুৰা';

  @override
  String get onboardingFeatureOfflineDesc =>
      'পৰ্ব আৰু অধ্যায় ডাউনলোড কৰা, ইণ্টাৰনেট নোহোৱাকৈয়ো আগবাঢ়ি যোৱা।';

  @override
  String get onboardingFeatureSync => 'তালিকা ছিংকত ৰাখা';

  @override
  String get onboardingFeatureSyncDesc =>
      'ছাৰ্ভিচবোৰৰ মাজত তালিকা মিলাই ৰাখা, নহ’লে যিটো আগবাঢ়ি আছে সেইটোৱেই জিকক।';

  @override
  String get onboardingServices => 'যিবোৰৰ লগত কাম কৰে';

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
