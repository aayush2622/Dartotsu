// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'অ্যানিমে আর মাঙ্গা ট্র্যাক করার\nসেরা নতুন অ্যাপ';

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
  String get loadMore => 'আরও লোড করো';

  @override
  String get login => 'লগইন';

  @override
  String get continueAsGuest => 'গেস্ট হিসেবে চালিয়ে যাও';

  @override
  String get getStarted => 'শুরু করি';

  @override
  String get loginWithToken => 'টোকেন দিয়ে লগইন';

  @override
  String get pasteTokenHint => 'তোমার অ্যাক্সেস টোকেন পেস্ট করো';

  @override
  String loginTo(String service) {
    return '$service-এ লগইন করো';
  }

  @override
  String get settings => 'সেটিংস';

  @override
  String get account => 'অ্যাকাউন্ট';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get language => 'ভাষা';

  @override
  String get animationSpeed => 'অ্যানিমেশন';

  @override
  String get animationSpeedDesc =>
      'পুরো অ্যাপে ট্রানজিশন আর এন্ট্রি ইফেক্টের গতি';

  @override
  String get animationSpeedOff => 'বন্ধ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'এক্সটেনশন',
      one: 'এক্সটেনশন',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'অজানা সোর্স';

  @override
  String get install => 'ইনস্টল';

  @override
  String get update => 'আপডেট';

  @override
  String get uninstall => 'আনইনস্টল';

  @override
  String get updateInstallCancelled =>
      'ইনস্টল বাতিল হয়েছে। Android যদি বলে অ্যাপটি ইনস্টল করা অ্যাপের সাথে মিলছে না, তাহলে সিগনেচার আলাদা: আগে বর্তমান ভার্সন আনইনস্টল করে তারপর আপডেট ইনস্টল করুন';

  @override
  String updateInstallFailed(String error) {
    return 'আপডেট হলো না: $error';
  }

  @override
  String get appLock => 'অ্যাপ লক';

  @override
  String get appLockDesc =>
      'অ্যাপ খোলার সময় বা কিছুক্ষণ পর ফিরে এলে পাসকোড চাইবে';

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
  String get appLockUnlock => 'পাসকোড দিন';

  @override
  String get appLockWrong => 'পাসকোড ভুল';

  @override
  String appLockWait(String seconds) {
    return 'অনেকবার চেষ্টা হয়েছে, $seconds সেকেন্ড অপেক্ষা করুন';
  }

  @override
  String get appLockNew => 'একটা পাসকোড বেছে নিন';

  @override
  String get appLockNewHint => '৪ থেকে ৮ সংখ্যা';

  @override
  String get appLockConfirm => 'আবার দিন';

  @override
  String get appLockMismatch => 'পাসকোড দুটো মিলছে না';

  @override
  String get appLockOn => 'পাসকোড সেট হয়েছে';

  @override
  String get appLockRemoveTitle => 'লক বন্ধ করতে পাসকোড দিন';

  @override
  String get installFailed => 'ইনস্টল হয়নি';

  @override
  String get updateFailed => 'আপডেট হয়নি';

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
  String get noSourceSettings => 'এই সোর্সে কোনো সেটিংস নেই';

  @override
  String get addPluginRepository => 'প্লাগইন রিপোজিটরি যোগ করো';

  @override
  String get pluginIndexUrlHint => 'প্লাগইন ইনডেক্স URL';

  @override
  String get addRepository => 'রিপোজিটরি যোগ করো';

  @override
  String get pluginRepoUpdated => 'প্লাগইন রিপোজিটরি আপডেট হয়েছে';

  @override
  String get pluginRepoUpdateFailed => 'প্লাগইন রিপোজিটরি রিফ্রেশ করা যায়নি';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get cancel => 'বাতিল';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get save => 'সেভ';

  @override
  String get reset => 'রিসেট';

  @override
  String get clear => 'মুছে ফেলো';

  @override
  String get test => 'টেস্ট';

  @override
  String get testing => 'টেস্ট হচ্ছে…';

  @override
  String get resolving => 'রেজলভ হচ্ছে…';

  @override
  String get none => 'কিছু না';

  @override
  String get selectMediaService => 'মিডিয়া সার্ভিস বেছে নাও';

  @override
  String get pickColor => 'একটা রঙ বেছে নাও';

  @override
  String get colorPickerCustom => 'কাস্টম';

  @override
  String get colorPickerTransparent => 'স্বচ্ছ';

  @override
  String get ltr => 'বাঁ থেকে ডানে';

  @override
  String get searchSettings => 'সেটিংস খোঁজো';

  @override
  String nothingMatches(String query) {
    return '\"$query\" এর সাথে কিছু মেলেনি';
  }

  @override
  String searchCategory(String category) {
    return '$category খোঁজো';
  }

  @override
  String get settingsAppearance => 'চেহারা';

  @override
  String get settingsAppearanceDesc => 'থিম, রঙ, গ্লাস মোড';

  @override
  String get settingsGeneral => 'সাধারণ';

  @override
  String get settingsGeneralDesc => 'ভাষা আর আচরণ';

  @override
  String get settingsNetwork => 'নেটওয়ার্ক';

  @override
  String get settingsNetworkDesc => 'ইউজার এজেন্ট, সার্টিফিকেট, DNS আর প্রক্সি';

  @override
  String get settingsAccountDesc => 'ট্র্যাকিং সার্ভিস আর সাইন-ইন';

  @override
  String get settingsUpdates => 'আপডেট';

  @override
  String get amoledBlack => 'AMOLED কালো';

  @override
  String get amoledBlackDesc => 'ডার্ক মোডে একদম কালো সারফেস';

  @override
  String get glassMode => 'গ্লাস মোড';

  @override
  String get glassModeDesc => 'তোমার লাইব্রেরির আর্টের ওপর ঝাপসা সারফেস';

  @override
  String get shelfFrame => 'সেকশনের চারপাশে ফ্রেম';

  @override
  String get shelfFrameDesc =>
      'প্রতিটা শেলফের পেছনে কার্ড দেখাও, নয়তো সারিগুলো সরাসরি পেজে থাকুক';

  @override
  String get settingsExtensionsDesc =>
      'সোর্স ম্যানেজার, রিপোজিটরি আর এক্সটেনশন অপশন';

  @override
  String get settingsAddons => 'অ্যাড-অন';

  @override
  String get customPath => 'কাস্টম স্টোরেজ পাথ';

  @override
  String get customPathDesc =>
      'অ্যাপের ডেটা যেখানে থাকে। রিসেট করতে চেপে ধরে রাখো';

  @override
  String get selectDirectory => 'ডিরেক্টরি বেছে নাও';

  @override
  String get differentCacheManager => 'বিকল্প ইমেজ ক্যাশ';

  @override
  String get differentCacheManagerDesc =>
      'ছবির জন্য আলাদা ক্যাশ ম্যানেজার ব্যবহার করো';

  @override
  String get backupAndRestore => 'ব্যাকআপ আর রিস্টোর';

  @override
  String get backupAndRestoreDesc => 'তোমার পছন্দগুলো সেভ বা লোড করো';

  @override
  String get backup => 'ব্যাকআপ';

  @override
  String get restore => 'রিস্টোর';

  @override
  String get loadExtensionsIcon => 'এক্সটেনশন আইকন লোড করো';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => 'এক্সটেনশন লিস্টে সোর্সের আইকন দেখাও';

  @override
  String get sectionStorage => 'স্টোরেজ';

  @override
  String get sectionManagers => 'ম্যানেজার';

  @override
  String get sectionOptions => 'অপশন';

  @override
  String get backupTabBackup => 'ব্যাকআপ নাও';

  @override
  String get backupTabRestore => 'রিস্টোর';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categoriesটি ক্যাটাগরিতে $keysটি সেটিংস';
  }

  @override
  String backupLastBackup(Object time) {
    return 'শেষ ব্যাকআপ $time';
  }

  @override
  String get backupNever => 'এখনো কোনো ব্যাকআপ নেই';

  @override
  String get backupSelectAll => 'সব বেছে নাও';

  @override
  String get backupClearAll => 'মুছে ফেলো';

  @override
  String backupKeys(Object count) {
    return '$countটি সেটিংস';
  }

  @override
  String get backupPassword => 'পাসওয়ার্ড (ঐচ্ছিক)';

  @override
  String get backupPasswordHint => 'ডিফল্ট ব্যবহার করতে খালি রাখো';

  @override
  String get backupSensitive => 'লগইন টোকেন আছে। ফাইলটা গোপন রাখো';

  @override
  String get backupCreate => 'ব্যাকআপ তৈরি করো';

  @override
  String backupSaved(Object name) {
    return 'ব্যাকআপ $name-এ সেভ হয়েছে';
  }

  @override
  String backupFailed(Object error) {
    return 'ব্যাকআপ ব্যর্থ: $error';
  }

  @override
  String get backupPickFile => 'ব্যাকআপ ফাইল বেছে নাও';

  @override
  String get backupPickFileDesc => 'Dartotsu-র বানানো একটা .json ফাইল বেছে নাও';

  @override
  String get backupChooseAnother => 'অন্য ফাইল বেছে নাও';

  @override
  String get backupCreatedAt => 'তৈরি হয়েছে';

  @override
  String get backupAppVersion => 'অ্যাপ ভার্সন';

  @override
  String get backupDevice => 'ডিভাইস';

  @override
  String get backupAccounts => 'অ্যাকাউন্ট';

  @override
  String get backupSize => 'সাইজ';

  @override
  String get backupEncrypted => 'পাসওয়ার্ড দিয়ে সুরক্ষিত';

  @override
  String get backupUnlock => 'আনলক';

  @override
  String get backupWrongPassword => 'ফাইলটা পড়া গেল না। পাসওয়ার্ড চেক করো';

  @override
  String get backupRestoreSelected => 'বাছাইগুলো রিস্টোর করো';

  @override
  String backupRestoreConfirm(Object count) {
    return '$countটি সেটিংস রিস্টোর করবে? এই ক্যাটাগরিগুলোর বর্তমান মান ওভাররাইট হয়ে যাবে।';
  }

  @override
  String get backupRestored =>
      'রিস্টোর হয়েছে। সব কার্যকর করতে অ্যাপ রিস্টার্ট করো';

  @override
  String backupRestoreFailed(Object error) {
    return 'রিস্টোর ব্যর্থ: $error';
  }

  @override
  String get backupSelectOne => 'অন্তত একটা ক্যাটাগরি বেছে নাও';

  @override
  String get backupCatTheme => 'চেহারা';

  @override
  String get backupCatThemeDesc => 'থিম, রঙ, গ্লাস, ফন্ট আর কার্ড স্টাইল';

  @override
  String get backupCatCommon => 'সাধারণ';

  @override
  String get backupCatCommonDesc =>
      'ভাষা, স্টোরেজ, নেটওয়ার্ক আর এক্সটেনশন অপশন';

  @override
  String get backupCatPlayer => 'প্লেয়ার';

  @override
  String get backupCatPlayerDesc => 'প্লেয়ারের পছন্দ';

  @override
  String get backupCatReader => 'রিডার';

  @override
  String get backupCatReaderDesc => 'রিডারের পছন্দ';

  @override
  String get backupCatProtected => 'অ্যাকাউন্ট';

  @override
  String get backupCatProtectedDesc => 'লগইন টোকেন আর সাইন-ইন ডেটা';

  @override
  String get backupCatOther => 'সার্ভিস আর ফিড';

  @override
  String get backupCatOtherDesc => 'ফিড লেআউট, লিস্ট আর সার্ভিস অপশন';

  @override
  String get logFile => 'লগ ফাইল';

  @override
  String get logFileDesc => 'অ্যাপের লগ শেয়ার করো, বা Linux-এ তার পাথ কপি করো';

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
  String get logFileCopied => 'লগ পাথ কপি হয়েছে';

  @override
  String get donateSheetTitle => 'Dartotsu ভালো লাগছে?';

  @override
  String get donateSheetMessage =>
      'Dartotsu একজন মানুষ বানায় আর দেখভাল করে। কাজে লাগলে ডেভেলপমেন্টে সাপোর্ট করার কথা ভেবো।';

  @override
  String get donateLater => 'পরে';

  @override
  String get glassBackground => 'গ্লাস ব্যাকগ্রাউন্ড';

  @override
  String get glassBackgroundDesc => 'ইমেজ লিংক না দিলে তোমার প্রোফাইল ব্যানার';

  @override
  String get glassBackgroundHint =>
      'ইমেজ লিংক (তোমার ব্যানারের জন্য খালি রাখো)';

  @override
  String get followCover => 'কভার অনুসরণ করো';

  @override
  String get followCoverDesc =>
      'রঙ ব্যাকগ্রাউন্ডকে অনুসরণ করে, আর ডিটেইল পেজে কভারকে';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'কার্ড স্টাইল';

  @override
  String get cardStyleDesc => 'টাইটেল প্লেসমেন্ট, সাইজ, প্রগ্রেস আর ব্যাজ';

  @override
  String get customFont => 'ফন্ট';

  @override
  String get customFontDesc => 'ডিফল্ট, তোমার ডিভাইসের ফাইল, বা Google Fonts';

  @override
  String get customFontError => 'ওই ফন্ট ফাইল লোড করা গেল না';

  @override
  String get googleFontError => 'ওই ফন্ট ডাউনলোড করা গেল না';

  @override
  String get yourFonts => 'তোমার ফন্ট';

  @override
  String get addFontFile => 'ফন্ট ফাইল যোগ করো…';

  @override
  String get browseGoogleFonts => 'Google Fonts ঘুরে দেখো…';

  @override
  String get searchGoogleFonts => 'Google Fonts খোঁজো';

  @override
  String get defaultFont => 'ডিফল্ট';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'সিস্টেম থেকে ডাইনামিক রঙ';

  @override
  String get jsonTheme => 'কাস্টম থিম ফাইল';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json থেকে লাইভ রঙ (কাস্টম স্ক্রিপ্ট বা তোমার নিজের এডিট)';

  @override
  String get themeMode => 'থিম মোড';

  @override
  String get mode => 'মোড';

  @override
  String get trackingService => 'ট্র্যাকিং সার্ভিস';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get signIn => 'সাইন ইন';

  @override
  String get notSignedIn => 'সাইন ইন করা নেই';

  @override
  String signOutOf(String service) {
    return '$service থেকে সাইন আউট করবে?';
  }

  @override
  String get checkForUpdates => 'আপডেট চেক করো';

  @override
  String get checkForUpdatesDesc => 'নতুন GitHub রিলিজ এলে জানাও';

  @override
  String get updateChannel => 'আপডেট চ্যানেল';

  @override
  String get channel => 'চ্যানেল';

  @override
  String get stable => 'স্টেবল';

  @override
  String get preRelease => 'প্রি-রিলিজ';

  @override
  String get alpha => 'আলফা';

  @override
  String get checkNow => 'এখনই চেক করো';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ডিফল্ট';

  @override
  String currentlyUsing(String value) {
    return 'এখন: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ডিফল্ট (Cloudflare)';

  @override
  String get proxy => 'প্রক্সি';

  @override
  String get proxyProtocol => 'ধরন';

  @override
  String get proxyHost => 'হোস্ট';

  @override
  String get proxyPort => 'পোর্ট';

  @override
  String get proxyUsername => 'ইউজারনেম';

  @override
  String get proxyPassword => 'পাসওয়ার্ড';

  @override
  String get optional => 'ঐচ্ছিক';

  @override
  String get clearCookies => 'কুকি মুছে ফেলো';

  @override
  String get clearCookiesDesc => 'জমা থাকা সব কুকি সরিয়ে দাও';

  @override
  String notImplementedArea(String area) {
    return '$area — শিগগিরই আসছে';
  }

  @override
  String notImplementedService(String service) {
    return '$service এখনো এটা সাপোর্ট করে না।';
  }

  @override
  String get couldNotLoadResults => 'রেজাল্ট লোড করা গেল না';

  @override
  String get updateCheckFailed => 'আপডেট চেক করা গেল না';

  @override
  String get highRefreshRate => 'হাই রিফ্রেশ রেট';

  @override
  String get highRefreshRateDesc =>
      'তোমার স্ক্রিন যে সর্বোচ্চ রিফ্রেশ রেট সাপোর্ট করে সেটা ব্যবহার করো';

  @override
  String get imageSave => 'ছবি সেভ করো';

  @override
  String imageSavedTo(String path) {
    return '$path-এ সেভ হয়েছে';
  }

  @override
  String get imageActionFailed => 'ছবি ডাউনলোড করা গেল না';

  @override
  String get imageTitleCover => 'কভার';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'ব্যানার';

  @override
  String get imageTitleAvatar => 'প্রোফাইল ছবি';

  @override
  String get verifyTls => 'সার্টিফিকেট যাচাই করো';

  @override
  String get verifyTlsDesc =>
      'অবৈধ HTTPS সার্টিফিকেটওয়ালা সার্ভার রিজেক্ট করো। শুধু সেলফ-সাইনড সার্টিফিকেট ব্যবহার করা সোর্সের জন্য বন্ধ করো';

  @override
  String get clearCookiesConfirm =>
      'জমা থাকা সব কুকি সরাবে? এতে কিছু সোর্স থেকে সাইন আউট হয়ে যেতে পারো।';

  @override
  String get version => 'ভার্সন';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'সোর্স, ইস্যু আর রিলিজ';

  @override
  String get discordDesc => 'কমিউনিটি আর সাপোর্ট';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'ডেভেলপমেন্টে সাপোর্ট করো';

  @override
  String get contributors => 'কন্ট্রিবিউটর';

  @override
  String get contributorsDesc => 'যাঁরা Dartotsu বানিয়েছেন';

  @override
  String get contributorsLoadFailed => 'কন্ট্রিবিউটরদের লোড করা গেল না';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu-র ওপর বানানো প্রজেক্ট';

  @override
  String get forksEmpty => 'কোনো ফর্ক পাওয়া যায়নি';

  @override
  String get sectionColors => 'রঙ';

  @override
  String get sectionDisplay => 'ডিসপ্লে';

  @override
  String get sectionStyle => 'স্টাইল';

  @override
  String get sectionCommunity => 'কমিউনিটি';

  @override
  String get sectionAppInfo => 'অ্যাপের তথ্য';

  @override
  String get sectionRequests => 'রিকোয়েস্ট';

  @override
  String get sectionDnsProxy => 'DNS ও প্রক্সি';

  @override
  String get onboardingBack => 'পেছনে';

  @override
  String get onboardingNext => 'পরেরটা';

  @override
  String get onboardingSkip => 'এড়িয়ে যাও';

  @override
  String get onboardingPaletteTitle => 'নিজের মতো সাজাও';

  @override
  String get onboardingPaletteBody =>
      'একটা প্যালেট বেছে নাও। কার্ড থেকে প্লেয়ার পর্যন্ত সব অ্যাকসেন্ট এটা মেনে চলবে।';

  @override
  String get themeModeAuto => 'অটো';

  @override
  String get themeModeLight => 'লাইট';

  @override
  String get themeModeDark => 'ডার্ক';

  @override
  String get onboardingSyncTitle => 'তোমার লাইব্রেরি সিঙ্ক করো';

  @override
  String get onboardingSyncBody =>
      'তোমার লিস্ট, প্রগ্রেস আর স্কোর সাথে আনতে AniList দিয়ে সাইন ইন করো। নয়তো এড়িয়ে গিয়ে গেস্ট হিসেবে ঘোরো।';

  @override
  String get onboardingOpenLinks => 'AniList আর রিপো লিংক Dartotsu-তে খোলো';

  @override
  String get onboardingPermsTitle => 'পারমিশন';

  @override
  String get onboardingPermsBody =>
      'ডাউনলোড, আপডেট আর অ্যালার্ট যেন বিনা বাধায় চলে, তাই এগুলো এখনই দিয়ে দাও। পরে সিস্টেম সেটিংসে বদলানো যাবে।';

  @override
  String get permNotifications => 'নোটিফিকেশন';

  @override
  String get permNotificationsDesc => 'ডাউনলোড প্রগ্রেস, নতুন পর্ব আর রিপ্লাই';

  @override
  String get permStorage => 'সব ফাইলের অ্যাক্সেস';

  @override
  String get permStorageDesc => 'ডাউনলোড পাবলিক Dartotsu ফোল্ডারে সেভ করো';

  @override
  String get permInstall => 'আপডেট ইনস্টল করো';

  @override
  String get permInstallDesc => 'Dartotsu-কে নিজের অ্যাপ আপডেট ইনস্টল করতে দাও';

  @override
  String get permBattery => 'আনরেস্ট্রিক্টেড ব্যাটারি';

  @override
  String get permBatteryDesc => 'বড় ডাউনলোডগুলো ব্যাকগ্রাউন্ডে চলতে দাও';

  @override
  String get permGrant => 'অনুমতি দাও';

  @override
  String get linkOpenInApp => 'লিংক Dartotsu-তে খোলো';

  @override
  String get linkOpenInAppDesc => 'AniList আর রিপো লিংক অ্যাপে খুলতে দাও';

  @override
  String get reviewsTitle => 'রিভিউ';

  @override
  String get reviewsEmpty => 'এখনো কোনো রিভিউ নেই';

  @override
  String get reviewsFailed => 'রিভিউ লোড করা গেল না';

  @override
  String get reviewHelpfulQuestion => 'এই রিভিউটা কি কাজের ছিল?';

  @override
  String get reviewVoteFailed => 'তোমার ভোট সেভ করা গেল না';

  @override
  String reviewHelpful(int n, int total) {
    return '$total জনের মধ্যে $n জন এটা কাজের মনে করেছে';
  }

  @override
  String get calendarTitle => 'এয়ারিং শিডিউল';

  @override
  String get calendarToday => 'আজ';

  @override
  String get calendarEmpty => 'এই দিনে কিছু প্রচার হচ্ছে না';

  @override
  String get calendarFailed => 'শিডিউল লোড করা গেল না';

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
    return 'পর্ব $n';
  }

  @override
  String get shareAnalytics => 'নাম-পরিচয়হীন ব্যবহারের ডেটা শেয়ার করো';

  @override
  String get shareAnalyticsDesc =>
      'নাম-পরিচয়হীন ইউজার সংখ্যা আর ক্র্যাশ রিপোর্ট। কোনো অ্যাকাউন্ট বা ব্যক্তিগত ডেটা নেই';

  @override
  String get linkOpenAnilist => 'AniList লিংক Dartotsu-তে খোলো';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co লিংক যেন অ্যাপে খোলে, তাই লিংক হ্যান্ডলিং চালু করো';

  @override
  String get linkSettingsFailed => 'সিস্টেম সেটিংস খোলা গেল না';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'তুমি কী করছ সেটা Discord প্রোফাইলে দেখাও। তোমার Discord টোকেন লাগবে।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'তুমি কী করছ সেটা Discord প্রোফাইলে দেখাও। Discord ডেস্কটপ অ্যাপ চালু থাকতে হবে।';

  @override
  String get discordBrowsing => 'ব্রাউজিং অ্যাক্টিভিটি দেখাও';

  @override
  String get discordBrowsingDesc =>
      'শুধু যা দেখছ বা পড়ছ তা নয়, যে ট্যাব, পেজ বা প্রোফাইলে আছ সেটাও দেখাও।';

  @override
  String get discordLookHeader => 'প্রেজেন্সের লুক';

  @override
  String get discordActivityType => 'অ্যাক্টিভিটির ধরন';

  @override
  String get discordActivityTypeDesc =>
      'Discord কীভাবে লেখে: \"Watching …\" বা \"Playing …\"। অটো অ্যানিমের জন্য Watching আর বাকি সবকিছুর জন্য Playing ব্যবহার করে।';

  @override
  String get discordWatching => 'দেখছে';

  @override
  String get discordPlaying => 'খেলছে';

  @override
  String get discordCovers => 'কভার দেখাও';

  @override
  String get discordCoversDesc => 'কার্ডে কভার আর্ট আর Dartotsu আইকন।';

  @override
  String get discordTimer => 'টাইমার দেখাও';

  @override
  String get discordTimerDesc => 'টাইটেলের নিচে পার হওয়া বা বাকি সময়।';

  @override
  String get discordButtons => 'বাটন দেখাও';

  @override
  String get discordButtonsDesc =>
      '\"অ্যানিমে / মাঙ্গা দেখো\" আর \"Dartotsu খোলো\" বাটন।';

  @override
  String get discordHideTitles => 'টাইটেল লুকাও';

  @override
  String get discordHideTitlesDesc =>
      'অ্যানিমে আর মাঙ্গার নাম (সাথে কভার আর লিংক) \"কিছু একটা প্রাইভেট\" দিয়ে বদলে দাও।';

  @override
  String get discordConnectionHeader => 'কানেকশন';

  @override
  String get listSearchHint => 'এই লিস্টে খোঁজো';

  @override
  String get listSort => 'সাজাও';

  @override
  String get listFilter => 'ফিল্টার';

  @override
  String get listRandom => 'র‍্যান্ডম টাইটেল';

  @override
  String get listReverse => 'উল্টো ক্রম';

  @override
  String get listSortDefault => 'লিস্টের ক্রম';

  @override
  String get listSortScore => 'তোমার স্কোর';

  @override
  String get listSortTitle => 'টাইটেল';

  @override
  String get listSortUpdated => 'শেষ আপডেট';

  @override
  String get listSortProgress => 'প্রগ্রেস';

  @override
  String get listSortReleased => 'রিলিজের তারিখ';

  @override
  String get listSortAverage => 'গড় স্কোর';

  @override
  String get listFilterFormat => 'ফরম্যাট';

  @override
  String get listFilterStatus => 'স্ট্যাটাস';

  @override
  String get listFilterGenres => 'জনরা';

  @override
  String get listFilterClear => 'ফিল্টার মুছে ফেলো';

  @override
  String get listNoMatches => 'এই লিস্টে কিছু মেলেনি';

  @override
  String get discordLogin => 'Discord-এ লগইন করো';

  @override
  String get discordToken => 'Discord টোকেন';

  @override
  String get discordTokenSaved =>
      'সেভ হয়েছে। বদলাতে ট্যাপ করো, সরাতে চেপে ধরো।';

  @override
  String get discordTokenNotSet => 'সেট করা নেই। যোগ করতে ট্যাপ করো।';

  @override
  String get discordTokenSavedSnack => 'Discord টোকেন সেভ হয়েছে';

  @override
  String get discordTokenRemovedSnack => 'Discord টোকেন সরানো হয়েছে';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'চালু · কেমন দেখাবে বদলাতে ট্যাপ করো';

  @override
  String get discordRichPresenceRowOff =>
      'তুমি কী করছ সেটা Discord প্রোফাইলে দেখাও';

  @override
  String get loginCancelled => 'লগইন বাতিল হয়েছে';

  @override
  String get invalidToken => 'ভুল টোকেন';

  @override
  String loginFailed(String error) {
    return 'লগইন ব্যর্থ: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList লগইন ব্যর্থ';

  @override
  String get kitsuLoginFailed =>
      'Kitsu লগইন ব্যর্থ। ইমেইল আর পাসওয়ার্ড চেক করো।';

  @override
  String get kitsuLoginTitle => 'Kitsu-তে সাইন ইন করো';

  @override
  String get emailOrUsername => 'ইমেইল বা ইউজারনেম';

  @override
  String get password => 'পাসওয়ার্ড';

  @override
  String get kitsuProfile => 'Kitsu প্রোফাইল';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka লগইন ব্যর্থ';

  @override
  String get mangaBakaProfile => 'MangaBaka প্রোফাইল';

  @override
  String get refreshFromMangaBaka => 'MangaBaka থেকে রিফ্রেশ করো';

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
  String get artistsLabel => 'আর্টিস্ট';

  @override
  String get authorsLabel => 'লেখক';

  @override
  String get publishersLabel => 'প্রকাশক';

  @override
  String get licensedLabel => 'লাইসেন্সপ্রাপ্ত';

  @override
  String get contentRatingLabel => 'কনটেন্ট রেটিং';

  @override
  String get yesLabel => 'হ্যাঁ';

  @override
  String get noLabel => 'না';

  @override
  String get ratingSteps => 'রেটিং ধাপ';

  @override
  String get hideNsfw => 'NSFW লুকাও';

  @override
  String get hideNsfwDesc =>
      'প্রাপ্তবয়স্কদের টাইটেল ফিড আর সার্চ থেকে সরিয়ে রাখো, আর তোমার নিজের প্রাপ্তবয়স্ক এন্ট্রিগুলো \"লুকানো মিডিয়া\"-র নিচে দেখাও।';

  @override
  String get kitsuAccountOptions => 'Kitsu অ্যাকাউন্ট অপশন';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka অ্যাকাউন্টের অপশন';

  @override
  String get couldNotUpdateKitsuSettings =>
      'তোমার Kitsu সেটিংস আপডেট করা গেল না';

  @override
  String get titleCanonical => 'ক্যানোনিকাল';

  @override
  String get titleRomanized => 'রোমানাইজড';

  @override
  String get titleLocalized => 'লোকালাইজড';

  @override
  String get ratingSystem => 'রেটিং সিস্টেম';

  @override
  String get ratingSimple => 'সহজ (৩টি মুখ)';

  @override
  String get ratingRegular => 'সাধারণ (৫টি তারা)';

  @override
  String get ratingAdvanced => 'অ্যাডভান্সড (১০ পয়েন্ট)';

  @override
  String get contentFilter => 'কনটেন্ট ফিল্টার';

  @override
  String get contentSfw => 'শুধু কাজের জন্য নিরাপদ';

  @override
  String get contentSometimes => 'সার্চে প্রাপ্তবয়স্ক কনটেন্ট';

  @override
  String get contentEverywhere => 'সব জায়গায় প্রাপ্তবয়স্ক কনটেন্ট';

  @override
  String get shareToGlobal => 'গ্লোবাল ফিডে শেয়ার করো';

  @override
  String get shareToGlobalDesc =>
      'তোমার অ্যাক্টিভিটি Kitsu-র গ্লোবাল ফিডে দেখাতে দাও।';

  @override
  String get memberSince => 'সদস্য হয়েছ';

  @override
  String get location => 'অবস্থান';

  @override
  String get accountType => 'অ্যাকাউন্টের ধরন';

  @override
  String get accountSupporter => 'সাপোর্টার';

  @override
  String get accountFree => 'ফ্রি';

  @override
  String get accountDetails => 'অ্যাকাউন্টের বিবরণ';

  @override
  String get refreshFromKitsu => 'Kitsu থেকে রিফ্রেশ করো';

  @override
  String get simklReadOnly => 'Simkl শুধু পড়ার অ্যাক্সেস দিয়েছে';

  @override
  String get incognitoEditsBlocked => 'ইনকগনিটো: লিস্ট এডিট বন্ধ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ইনকগনিটো: প্রগ্রেস সেভ হয়নি';

  @override
  String progressSet(int progress) {
    return 'প্রগ্রেস $progress করা হয়েছে';
  }

  @override
  String removedFromList(String title) {
    return 'তোমার লিস্ট থেকে $title সরানো হয়েছে';
  }

  @override
  String get following => 'ফলো করছ';

  @override
  String get homeSections => 'হোম সেকশন';

  @override
  String get homeSectionsHint =>
      'ক্রম বদলাতে টেনে আনো। লুকানো সেকশন কখনো আনা হয় না।';

  @override
  String get customListDeleteFailed => 'কাস্টম লিস্ট মোছা যায়নি';

  @override
  String get customListsSaveFailed => 'কাস্টম লিস্ট সেভ করা যায়নি';

  @override
  String get customListsSaved => 'কাস্টম লিস্ট সেভ হয়েছে';

  @override
  String get listName => 'লিস্টের নাম';

  @override
  String get addList => 'লিস্ট যোগ করো';

  @override
  String voiceActorsIn(String name) {
    return 'ভয়েস অ্যাক্টর · $name';
  }

  @override
  String get animeAppearances => 'অ্যানিমেতে উপস্থিতি';

  @override
  String get mangaAppearances => 'মাঙ্গায় উপস্থিতি';

  @override
  String get voicedCharacters => 'যে ক্যারেক্টারদের ভয়েস দিয়েছেন';

  @override
  String get animeCredits => 'অ্যানিমে ক্রেডিট';

  @override
  String get mangaCredits => 'মাঙ্গা ক্রেডিট';

  @override
  String get mainProductions => 'প্রধান প্রোডাকশন';

  @override
  String get otherWorks => 'অন্যান্য কাজ';

  @override
  String get prequelSequel => 'প্রিকুয়েল আর সিকুয়েল';

  @override
  String get previousSeason => 'আগের সিজন';

  @override
  String get thisSeason => 'এই সিজন';

  @override
  String get nextSeason => 'পরের সিজন';

  @override
  String get voiceRoles => 'ভয়েস রোল';

  @override
  String get staffPositions => 'স্টাফ পজিশন';

  @override
  String get mangaWorks => 'মাঙ্গার কাজ';

  @override
  String get malProfile => 'MyAnimeList প্রোফাইল';

  @override
  String get refreshFromMal => 'MyAnimeList থেকে রিফ্রেশ করো';

  @override
  String get repullProfileCounts => 'তোমার প্রোফাইল আর কাউন্ট আবার টেনে আনো';

  @override
  String get refreshed => 'রিফ্রেশ হয়েছে';

  @override
  String get simklProfile => 'Simkl প্রোফাইল';

  @override
  String get refreshFromSimkl => 'Simkl থেকে রিফ্রেশ করো';

  @override
  String get repullProfileLibrary =>
      'তোমার প্রোফাইল আর লাইব্রেরি আবার টেনে আনো';

  @override
  String get simklSignInToSearch => 'সার্চ করতে Simkl-এ সাইন ইন করো';

  @override
  String get dropRate => 'ড্রপ রেট';

  @override
  String get simklAttribution =>
      'ডেটা আর আর্টওয়ার্ক Simkl-এর দেওয়া। Simkl-এ দেখো';

  @override
  String get onHold => 'হোল্ডে';

  @override
  String get scoredBy => 'স্কোর দিয়েছে';

  @override
  String get planToWatch => 'দেখার প্ল্যান';

  @override
  String get planToRead => 'পড়ার প্ল্যান';

  @override
  String get timesRewatched => 'যতবার আবার দেখা হয়েছে';

  @override
  String get timesReread => 'যতবার আবার পড়া হয়েছে';

  @override
  String get comments => 'কমেন্ট';

  @override
  String get moviesAndSeries => 'মুভি আর সিরিজ';

  @override
  String get trackingOnly => 'শুধু ট্র্যাকিং';

  @override
  String get signedIn => 'সাইন ইন করা আছে';

  @override
  String get searchLanguage => 'সার্চের ভাষা';

  @override
  String get savedToList => 'তোমার লিস্টে সেভ হয়েছে';

  @override
  String get removedFromYourList => 'তোমার লিস্ট থেকে সরানো হয়েছে';

  @override
  String get retry => 'আবার চেষ্টা করো';

  @override
  String get synopsis => 'সারসংক্ষেপ';

  @override
  String get details => 'বিবরণ';

  @override
  String get addToList => 'লিস্টে যোগ করো';

  @override
  String get trailer => 'ট্রেলার';

  @override
  String get titleCopied => 'টাইটেল কপি হয়েছে';

  @override
  String get linkCopied => 'লিংক কপি হয়েছে';

  @override
  String get watchTrailer => 'ট্রেলার দেখো';

  @override
  String get copyTitle => 'টাইটেল কপি করো';

  @override
  String get copyLink => 'লিংক কপি করো';

  @override
  String get openInBrowser => 'ব্রাউজারে খোলো';

  @override
  String viewOnSource(String source) {
    return '$source-এ দেখো';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'পর্ব $ep আসছে $time পরে';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'পরের পর্ব $time পরে';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'অধ্যায় $chapter আসতে আনুমানিক $time লাগবে';
  }

  @override
  String get logPathCopied => 'লগ ফাইলের পাথ ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get animeSource => 'অ্যানিমে সোর্স';

  @override
  String get mangaSource => 'মাঙ্গা সোর্স';

  @override
  String get popular => 'জনপ্রিয়';

  @override
  String get latest => 'সর্বশেষ';

  @override
  String get saved => 'সেভ করা';

  @override
  String get nothingMatched => 'কিছু মেলেনি';

  @override
  String get nothingSavedFromSource => 'এই সোর্স থেকে এখনো কিছু সেভ করা হয়নি';

  @override
  String get sourceReturnedNothing => 'এই সোর্স কিছুই ফেরত দেয়নি';

  @override
  String get checkConnectionOrSource =>
      'কানেকশন চেক করো বা অন্য সোর্স ট্রাই করো।';

  @override
  String get tryDifferentSearch => 'অন্য কোনো সার্চ শব্দ ট্রাই করো।';

  @override
  String get savedTitlesAppearHere =>
      'যে টাইটেল লিস্টে যোগ করবে সেগুলো এখানে দেখা যাবে।';

  @override
  String get tryOtherFeed => 'বরং অন্য ফিড বা সার্চ ট্রাই করো।';

  @override
  String searchSource(String source) {
    return '$source-এ খোঁজো';
  }

  @override
  String get animeExtensions => 'অ্যানিমে এক্সটেনশন';

  @override
  String get mangaExtensions => 'মাঙ্গা এক্সটেনশন';

  @override
  String get nothingHereYet => 'এখানে এখনো কিছু নেই';

  @override
  String get savedOnDeviceUntilLogin =>
      'নিচের সবকিছু তুমি না বদলানো পর্যন্ত এই ডিভাইসে সেভ থাকবে।';

  @override
  String get yourProfile => 'তোমার প্রোফাইল';

  @override
  String get activity => 'অ্যাক্টিভিটি';

  @override
  String get extensions => 'এক্সটেনশন';

  @override
  String get logOut => 'লগআউট';

  @override
  String get logIn => 'লগইন';

  @override
  String get logOutConfirm => 'সত্যিই লগআউট করবে?';

  @override
  String get incognitoMode => 'ইনকগনিটো মোড';

  @override
  String get alsoBlockListEdits => 'লিস্ট এডিটও আটকাও';

  @override
  String get offlineMode => 'অফলাইন মোড';

  @override
  String get switchService => 'সার্ভিস বদলাও';

  @override
  String logOutOf(String name) {
    return '$name থেকে লগআউট করো';
  }

  @override
  String get loggedIn => 'লগইন করা আছে';

  @override
  String get notifications => 'নোটিফিকেশন';

  @override
  String get nothingNew => 'নতুন কিছু নেই';

  @override
  String get thisWeek => 'এই সপ্তাহ';

  @override
  String get listOnly => 'শুধু লিস্ট';

  @override
  String get filter => 'ফিল্টার';

  @override
  String get searchResults => 'সার্চ রেজাল্ট';

  @override
  String get recentSearches => 'সাম্প্রতিক সার্চ';

  @override
  String get searchOrSetFilter => 'সার্চ করো বা ফিল্টার দাও';

  @override
  String get filters => 'ফিল্টার';

  @override
  String get showLess => 'কম দেখাও';

  @override
  String get showAll => 'সব দেখাও';

  @override
  String get apply => 'প্রয়োগ করো';

  @override
  String get preview => 'প্রিভিউ';

  @override
  String get preset => 'প্রিসেট';

  @override
  String get cardNormal => 'নরমাল';

  @override
  String get cardOnCard => 'কার্ডের ওপর';

  @override
  String get cardInCard => 'কার্ডের ভেতর';

  @override
  String get size => 'সাইজ';

  @override
  String get cardWidth => 'কার্ডের প্রস্থ';

  @override
  String get compact => 'কমপ্যাক্ট';

  @override
  String get coverAndTitleOnly => 'শুধু কভার আর টাইটেল';

  @override
  String get titleLines => 'টাইটেলের লাইন';

  @override
  String get shape => 'আকৃতি';

  @override
  String get posterShape => 'পোস্টারের আকৃতি';

  @override
  String get cornerRadius => 'কোণার গোলাকার ভাব';

  @override
  String get off => 'বন্ধ';

  @override
  String get topLeft => 'ওপরে বাঁয়ে';

  @override
  String get topRight => 'ওপরে ডানে';

  @override
  String get bottomLeft => 'নিচে বাঁয়ে';

  @override
  String get bottomRight => 'নিচে ডানে';

  @override
  String get overlays => 'ওভারলে';

  @override
  String get progressCount => 'প্রগ্রেস / কাউন্ট';

  @override
  String get pill => 'পিল';

  @override
  String get bar => 'বার';

  @override
  String get outside => 'বাইরে';

  @override
  String get scoreBadge => 'স্কোর ব্যাজ';

  @override
  String get airingDot => 'এয়ারিং ডট';

  @override
  String get updateAvailable => 'আপডেট আছে';

  @override
  String get notInstalled => 'ইনস্টল করা নেই';

  @override
  String get done => 'হয়েছে';

  @override
  String get searchOrEnterUrl => 'সার্চ করো বা URL দাও';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String get share => 'শেয়ার';

  @override
  String get characters => 'ক্যারেক্টার';

  @override
  String get staff => 'স্টাফ';

  @override
  String get readMore => 'আরও পড়ো';

  @override
  String get couldNotLoadList => 'লিস্ট লোড করা গেল না';

  @override
  String get logInToFavourite => 'ফেভারিট যোগ করতে লগইন করো';

  @override
  String get alsoKnownAs => 'অন্য নাম';

  @override
  String get hideSpoilerNames => 'স্পয়লার নাম লুকাও';

  @override
  String get showSpoilerNames => 'স্পয়লার নাম দেখাও';

  @override
  String get favourited => 'ফেভারিট করা';

  @override
  String get favourite => 'ফেভারিট';

  @override
  String get couldNotOpenTitle => 'এই টাইটেল খোলা গেল না';

  @override
  String get nobodyHereYet => 'এখনো কেউ নেই';

  @override
  String get noMatches => 'কিছু মেলেনি';

  @override
  String get gridView => 'গ্রিড ভিউ';

  @override
  String get fullWidth => 'পুরো প্রস্থ';

  @override
  String get userNotFound => 'ইউজার পাওয়া যায়নি';

  @override
  String get couldNotUpdateFollow => 'ফলো আপডেট করা গেল না';

  @override
  String followedUser(String name) {
    return '$name-কে ফলো করেছ';
  }

  @override
  String unfollowedUser(String name) {
    return '$name-কে আনফলো করেছ';
  }

  @override
  String get messages => 'মেসেজ';

  @override
  String get logInToSeeMessages => 'মেসেজ দেখতে লগইন করো';

  @override
  String get editActivity => 'অ্যাক্টিভিটি এডিট করো';

  @override
  String get newActivity => 'নতুন অ্যাক্টিভিটি';

  @override
  String get editMessage => 'মেসেজ এডিট করো';

  @override
  String get writeMessage => 'একটা মেসেজ লেখো';

  @override
  String get editReply => 'রিপ্লাই এডিট করো';

  @override
  String get posted => 'পোস্ট হয়েছে';

  @override
  String get couldNotPost => 'পোস্ট করা গেল না';

  @override
  String get nothingToPreview => 'প্রিভিউ করার মতো কিছু নেই';

  @override
  String get writeSomethingHint => 'কিছু লেখো… এখানে AniList markdown কাজ করে';

  @override
  String get privateMessage => 'প্রাইভেট মেসেজ';

  @override
  String get post => 'পোস্ট';

  @override
  String get nothingHere => 'এখানে কিছু নেই';

  @override
  String get noAnimeProgress => 'অ্যানিমের কোনো প্রগ্রেস নেই';

  @override
  String get noMangaProgress => 'মাঙ্গার কোনো প্রগ্রেস নেই';

  @override
  String get noMessages => 'কোনো মেসেজ নেই';

  @override
  String get writeMessageHint => 'একটা মেসেজ লেখো…';

  @override
  String get shareSomethingHint => 'কিছু শেয়ার করো…';

  @override
  String get all => 'সব';

  @override
  String get anime => 'অ্যানিমে';

  @override
  String get manga => 'মাঙ্গা';

  @override
  String get count => 'কাউন্ট';

  @override
  String get hoursWatched => 'দেখার ঘণ্টা';

  @override
  String get chaptersRead => 'পড়া অধ্যায়';

  @override
  String get meanScore => 'গড় স্কোর';

  @override
  String get noStatsYet => 'এখনো কোনো স্ট্যাটস নেই';

  @override
  String get totalEntries => 'মোট এন্ট্রি';

  @override
  String get episodesWatched => 'দেখা পর্ব';

  @override
  String get daysWatched => 'দেখার দিন';

  @override
  String get volumesRead => 'পড়া ভলিউম';

  @override
  String get standardDeviation => 'স্ট্যান্ডার্ড ডেভিয়েশন';

  @override
  String get showMore => 'আরও দেখাও';

  @override
  String get followsYou => 'তোমাকে ফলো করে';

  @override
  String get nobodyYet => 'এখনো কেউ নেই';

  @override
  String get logInToLike => 'লাইক করতে লগইন করো';

  @override
  String get failedToLikeActivity => 'অ্যাক্টিভিটি লাইক করা যায়নি';

  @override
  String get deleteActivityConfirm => 'অ্যাক্টিভিটি মুছবে?';

  @override
  String get deletedActivity => 'অ্যাক্টিভিটি মোছা হয়েছে';

  @override
  String get failedToDeleteActivity => 'অ্যাক্টিভিটি মোছা যায়নি';

  @override
  String get subscribed => 'সাবস্ক্রাইব করা হয়েছে';

  @override
  String get unsubscribed => 'আনসাবস্ক্রাইব করা হয়েছে';

  @override
  String get failedToUpdateSubscription => 'সাবস্ক্রিপশন আপডেট করা যায়নি';

  @override
  String get edit => 'এডিট';

  @override
  String get delete => 'মুছে ফেলো';

  @override
  String get likedBy => 'যাঁরা লাইক করেছেন';

  @override
  String get follow => 'ফলো';

  @override
  String get nameCopied => 'নাম কপি হয়েছে';

  @override
  String get followsEachOther => 'একে অপরকে ফলো করো';

  @override
  String get unfollow => 'আনফলো';

  @override
  String get userIdCopied => 'ইউজার আইডি কপি হয়েছে';

  @override
  String get shareProfile => 'প্রোফাইল শেয়ার করো';

  @override
  String get copyUserId => 'ইউজার আইডি কপি করো';

  @override
  String get failedToDelete => 'মোছা যায়নি';

  @override
  String get failedToLike => 'লাইক করা যায়নি';

  @override
  String get replies => 'রিপ্লাই';

  @override
  String get reply => 'রিপ্লাই করো';

  @override
  String get noRepliesYet => 'এখনো কোনো রিপ্লাই নেই';

  @override
  String get favouriteAnime => 'ফেভারিট অ্যানিমে';

  @override
  String get favouriteManga => 'ফেভারিট মাঙ্গা';

  @override
  String get favouriteCharacters => 'ফেভারিট ক্যারেক্টার';

  @override
  String get favouriteStaff => 'ফেভারিট স্টাফ';

  @override
  String get favouriteStudios => 'ফেভারিট স্টুডিও';

  @override
  String get noFavouritesYet => 'এখনো কোনো ফেভারিট নেই';

  @override
  String get yourStory => 'তোমার স্টোরি';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get justNow => 'এইমাত্র';

  @override
  String get openImage => 'ছবি খোলো';

  @override
  String get hideSpoiler => 'স্পয়লার লুকাও';

  @override
  String get showSpoiler => 'স্পয়লার দেখাও';

  @override
  String get status => 'স্ট্যাটাস';

  @override
  String get score => 'স্কোর';

  @override
  String get started => 'শুরু';

  @override
  String get completed => 'শেষ';

  @override
  String get private => 'প্রাইভেট';

  @override
  String get hideFromStatusLists => 'স্ট্যাটাস লিস্ট থেকে লুকাও';

  @override
  String get totalRepeats => 'মোট রিপিট';

  @override
  String get other => 'অন্যান্য';

  @override
  String get customLists => 'কাস্টম লিস্ট';

  @override
  String get activeDays => 'অ্যাক্টিভ দিন';

  @override
  String get longestStreak => 'সবচেয়ে লম্বা স্ট্রিক';

  @override
  String get currentStreak => 'বর্তমান স্ট্রিক';

  @override
  String get tapOrHoverDay => 'একটা দিনে ট্যাপ করো বা হোভার করো';

  @override
  String get less => 'কম';

  @override
  String get more => 'বেশি';

  @override
  String epIn(int ep, String time) {
    return 'পর্ব $ep, $time পরে';
  }

  @override
  String get sectionLoading => 'লোড হচ্ছে';

  @override
  String get querySize => 'কোয়েরির সাইজ';

  @override
  String get querySizeDesc =>
      'একটা বড় কোয়েরি একবারের রিকোয়েস্টে সব সারি (আর পুরো প্রোফাইল) লোড করে। ভাগ করা কোয়েরি প্রতিটা সারি বা প্রোফাইলের অংশের জন্য ছোট রিকোয়েস্ট পাঠায়: প্রতিটা দ্রুত, আর অংশগুলো আসতে আসতে দেখা যায়।';

  @override
  String get oneBig => 'একটা বড়';

  @override
  String get split => 'ভাগ করা';

  @override
  String get sectionSocial => 'সোশ্যাল';

  @override
  String get systemNotifications => 'সিস্টেম নোটিফিকেশন';

  @override
  String get feedLayout => 'ফিড লেআউট';

  @override
  String sectionsShown(int shown, int total) {
    return '$total-এর মধ্যে $shownটি দেখানো হচ্ছে — বাছতে ও ক্রম বদলাতে ট্যাপ করো';
  }

  @override
  String labelSections(String label) {
    return '$label সেকশন';
  }

  @override
  String get accountOptions => 'অ্যাকাউন্ট অপশন';

  @override
  String get anilistAccountOptions => 'AniList অ্যাকাউন্ট অপশন';

  @override
  String get sectionPrivacy => 'প্রাইভেসি';

  @override
  String get hidePrivateEntries => 'প্রাইভেট এন্ট্রি লুকাও';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList-এ প্রাইভেট করা এন্ট্রি ফিড থেকে সরিয়ে রাখো';

  @override
  String get anilistExcludeList => 'আপনার লিস্ট বাদ দিন';

  @override
  String get anilistExcludeListDesc =>
      'আপনার AniList-এ যে টাইটেলগুলো আছে সেগুলো অ্যানিমে আর মাঙ্গা পেজে দেখাবে না';

  @override
  String get anilistProfile => 'AniList প্রোফাইল';

  @override
  String get refreshFromAnilist => 'AniList থেকে রিফ্রেশ করো';

  @override
  String get couldNotUpdateAnilistSettings => 'AniList সেটিংস আপডেট করা গেল না';

  @override
  String get sectionNames => 'নাম';

  @override
  String get titleLanguage => 'টাইটেলের ভাষা';

  @override
  String get titleLanguageDesc =>
      'টাইটেল সব জায়গায় কীভাবে লেখা হবে, যেমন Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'স্টাফ আর ক্যারেক্টারের নাম';

  @override
  String get sectionLists => 'লিস্ট';

  @override
  String get scoreFormat => 'স্কোর ফরম্যাট';

  @override
  String get sortListsBy => 'লিস্ট সাজাও';

  @override
  String labelCustomLists(String label) {
    return '$label কাস্টম লিস্ট';
  }

  @override
  String customListsCount(int count) {
    return '$countটি লিস্ট — যোগ বা সরাতে ট্যাপ করো';
  }

  @override
  String get mergeActivities => 'অ্যাক্টিভিটি মার্জ করো';

  @override
  String minutesCount(int count) {
    return '$count মিনিট';
  }

  @override
  String get timezone => 'টাইমজোন';

  @override
  String get notSet => 'সেট করা নেই';

  @override
  String get airingNotifications => 'এয়ারিং নোটিফিকেশন';

  @override
  String get airingNotificationsDesc => 'ফলো করা শোয়ের পর্ব প্রচার হলে জানাও';

  @override
  String get displayAdultContent => 'প্রাপ্তবয়স্ক কনটেন্ট দেখাও';

  @override
  String get displayAdultContentDesc => 'ব্রাউজ, সার্চ আর ফিডে ১৮+ টাইটেল রাখো';

  @override
  String get restrictMessages => 'মেসেজ শুধু ফলো করা লোকজনের মধ্যে সীমিত করো';

  @override
  String get restrictMessagesDesc =>
      'শুধু তুমি যাদের ফলো করো তারাই তোমাকে মেসেজ করতে পারবে';

  @override
  String get sectionServices => 'সার্ভিস';

  @override
  String get novel => 'নভেল';

  @override
  String labelService(String label) {
    return '$label সার্ভিস';
  }

  @override
  String nameSettings(String name) {
    return '$name সেটিংস';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name এক্সটেনশন ব্রিজের অপশন';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name চালু করা যায়নি: $error';
  }

  @override
  String get importLists => 'লিস্ট ইমপোর্ট করো';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu ব্যাকআপ থেকে';

  @override
  String get exportLists => 'লিস্ট এক্সপোর্ট করো';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon বা Kotatsu ব্যাকআপে';

  @override
  String get sectionBrowse => 'ব্রাউজ';

  @override
  String get readingTab => 'পড়ার ট্যাব';

  @override
  String get readingTabDesc => 'তৃতীয় ট্যাব কোন এক্সটেনশন দেখাবে';

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
  String get defaultFeedDesc => 'সোর্স কোন লিস্ট নিয়ে খুলবে';

  @override
  String noServiceSupports(String type) {
    return 'কোনো সার্ভিস $type সাপোর্ট করে না';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installedটি সোর্সের মধ্যে $loadedটি লোড হচ্ছে';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'এখানে কোনো এক্সটেনশন সার্ভিস $type সাপোর্ট করে না।';
  }

  @override
  String get loadDataFrom => 'ডেটা লোড করো';

  @override
  String noInstalledSourcesYet(String type) {
    return 'এখনো কোনো ইনস্টল করা $type সোর্স নেই।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name-এর এক্সটেনশন ইনস্টল করা নেই';
  }

  @override
  String get thisSource => 'এই সোর্স';

  @override
  String failedToAddRepository(String error) {
    return 'রিপোজিটরি যোগ করা যায়নি: $error';
  }

  @override
  String installedType(String type) {
    return 'ইনস্টল করা $type';
  }

  @override
  String availableType(String type) {
    return 'পাওয়া যাচ্ছে এমন $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ইনস্টল করা কোনো $type এক্সটেনশন নেই';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'পাওয়া যাচ্ছে এমন কোনো $type এক্সটেনশন নেই';
  }

  @override
  String get nothingToShowYet => 'এখনো দেখানোর মতো কিছু নেই';

  @override
  String get addTitlesHint => 'লিস্টে কিছু টাইটেল যোগ করো, এখানে দেখা যাবে।';

  @override
  String get couldntLoad => 'লোড করা গেল না';

  @override
  String get progressStyleHint =>
      'পিল আর বার পোস্টারের ওপর বসে; \"বাইরে\" একই কাউন্ট সাধারণ টেক্সট হিসেবে দেখায় — একটা বেছে নাও।';

  @override
  String get nixManagedUpdate =>
      'এই বিল্ড Nix দিয়ে চালানো হয় — এখান থেকে আপডেট না করে তোমার flake-এ \"nix flake update\" চালিয়ে আবার বিল্ড করো';

  @override
  String autoUpdateFailed(String error) {
    return 'অটো আপডেট ব্যর্থ ($error) — তার বদলে ডাউনলোড পেজ খুলছি';
  }

  @override
  String get unknownPreference => 'অজানা পছন্দ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'অসমর্থিত পছন্দের ধরন $type';
  }

  @override
  String get notYetReleased => 'এখনো রিলিজ হয়নি';

  @override
  String get notStarted => 'এখনো শুরু হয়নি';

  @override
  String get country => 'দেশ';

  @override
  String get sort => 'সাজাও';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon বা Kotatsu ব্যাকআপ বেছে নাও';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi বা Kotatsu থেকে লাইব্রেরি নিয়ে এসো। টাইটেল, কভার, প্রগ্রেস আর ক্যাটাগরি থেকে যায়।';

  @override
  String get chooseBackupFile => 'ব্যাকআপ ফাইল বেছে নাও';

  @override
  String importAnimeCount(int count) {
    return '$countটি অ্যানিমে ইমপোর্ট করো';
  }

  @override
  String importMangaCount(int count) {
    return '$countটি মাঙ্গা ইমপোর্ট করো';
  }

  @override
  String get mergeWithExisting => 'আগের লিস্টের সাথে মার্জ করো';

  @override
  String get mergeWithExistingDesc =>
      'যা আছে তা রেখে দেয়; বন্ধ করলে মিলে যাওয়া টাইটেল বদলে যায়';

  @override
  String get chooseAnother => 'অন্যটা বেছে নাও';

  @override
  String get import => 'ইমপোর্ট';

  @override
  String animeCount(int count) {
    return '$countটি অ্যানিমে';
  }

  @override
  String mangaCount(int count) {
    return '$countটি মাঙ্গা';
  }

  @override
  String get chooseSaveLocation => 'ব্যাকআপ কোথায় সেভ করবে বেছে নাও';

  @override
  String savedPath(String path) {
    return '$path সেভ হয়েছে';
  }

  @override
  String exportFailed(String error) {
    return 'এক্সপোর্ট ব্যর্থ: $error';
  }

  @override
  String get nothingInLocalLists => 'তোমার লোকাল লিস্টে এখনো কিছু নেই।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'তোমার লোকাল লিস্ট থেকে $animeটি অ্যানিমে আর $mangaটি মাঙ্গা এক্সপোর্ট হবে। Kotatsu শুধু মাঙ্গা সাপোর্ট করে।';
  }

  @override
  String get saveToFolder => 'ফোল্ডারে সেভ করো';

  @override
  String get formatAnimeManga => 'অ্যানিমে আর মাঙ্গা · .tachibk';

  @override
  String get formatMangaTachibk => 'শুধু মাঙ্গা · .tachibk';

  @override
  String get formatMangaZip => 'শুধু মাঙ্গা · .zip';

  @override
  String get genres => 'জনরা';

  @override
  String get relations => 'সম্পর্কিত';

  @override
  String get recommendations => 'রেকমেন্ডেশন';

  @override
  String get openings => 'ওপেনিং';

  @override
  String get endings => 'এন্ডিং';

  @override
  String get background => 'ব্যাকগ্রাউন্ড';

  @override
  String get links => 'লিংক';

  @override
  String get rank => 'র‍্যাঙ্ক';

  @override
  String get members => 'মেম্বার';

  @override
  String get favorites => 'ফেভারিট';

  @override
  String get episodes => 'পর্ব';

  @override
  String get chapters => 'অধ্যায়';

  @override
  String get volumes => 'ভলিউম';

  @override
  String get format => 'ফরম্যাট';

  @override
  String get source => 'সোর্স';

  @override
  String get duration => 'সময়কাল';

  @override
  String minutesPerEpisode(int minutes) {
    return 'প্রতি পর্বে $minutes মিনিট';
  }

  @override
  String get rating => 'রেটিং';

  @override
  String get studio => 'স্টুডিও';

  @override
  String get serialization => 'সিরিয়ালাইজেশন';

  @override
  String get season => 'সিজন';

  @override
  String get broadcast => 'সম্প্রচার';

  @override
  String get aired => 'প্রচারিত';

  @override
  String get published => 'প্রকাশিত';

  @override
  String get popularity => 'জনপ্রিয়তা';

  @override
  String get community => 'কমিউনিটি';

  @override
  String get watching => 'দেখছি';

  @override
  String get reading => 'পড়ছি';

  @override
  String get dropped => 'বাদ দিয়েছি';

  @override
  String get planned => 'প্ল্যান করা';

  @override
  String get trailers => 'ট্রেলার';

  @override
  String get ratings => 'রেটিং';

  @override
  String get originalTitle => 'অরিজিনাল';

  @override
  String get titleLabel => 'টাইটেল';

  @override
  String get votes => 'ভোট';

  @override
  String get watchedStat => 'দেখা হয়েছে';

  @override
  String get runtime => 'রানটাইম';

  @override
  String get director => 'পরিচালক';

  @override
  String get network => 'নেটওয়ার্ক';

  @override
  String get certification => 'সার্টিফিকেশন';

  @override
  String get airs => 'প্রচার হয়';

  @override
  String get budget => 'বাজেট';

  @override
  String get revenue => 'আয়';

  @override
  String get released => 'রিলিজ হয়েছে';

  @override
  String get tags => 'ট্যাগ';

  @override
  String get author => 'লেখক';

  @override
  String get born => 'জন্ম';

  @override
  String get website => 'ওয়েবসাইট';

  @override
  String get established => 'প্রতিষ্ঠা';

  @override
  String get manhwa => 'মানহোয়া';

  @override
  String get manhua => 'মানহুয়া';

  @override
  String get novels => 'নভেল';

  @override
  String get thisMonth => 'এই মাস';

  @override
  String get movies => 'মুভি';

  @override
  String get shows => 'শো';

  @override
  String get rewatching => 'আবার দেখছি';

  @override
  String get rereading => 'আবার পড়ছি';

  @override
  String get watchedStatus => 'দেখা হয়েছে';

  @override
  String get planning => 'প্ল্যানে আছে';

  @override
  String get paused => 'বিরতিতে';

  @override
  String get watch => 'দেখো';

  @override
  String get read => 'পড়ো';

  @override
  String get finished => 'শেষ হয়েছে';

  @override
  String get releasing => 'চলছে';

  @override
  String get cancelled => 'বাতিল';

  @override
  String get hiatus => 'হায়াটাস';

  @override
  String get remove => 'সরাও';

  @override
  String syncToService(String service) {
    return '$service-এ সিঙ্ক করো';
  }

  @override
  String syncedToService(String service) {
    return '$service-এ সিঙ্ক হয়েছে';
  }

  @override
  String get latestReleases => 'সর্বশেষ রিলিজ';

  @override
  String get topRated => 'সবচেয়ে ভালো রেটিং';

  @override
  String localSection(String title) {
    return '$title · লোকাল';
  }

  @override
  String get localEntryNote =>
      'এই টাইটেল শুধু এই ডিভাইসের লোকাল লিস্টে আছে। তোমার অ্যাকাউন্টের লিস্টের সাথে গোলমাল হতে পারে বলে এখানে এডিট বন্ধ; তবে সরিয়ে দিতে পারবে।';

  @override
  String get cardPresetPoster => 'পোস্টার';

  @override
  String get cardPresetCard => 'কার্ড';

  @override
  String get cardPresetCozy => 'কোজি';

  @override
  String get sortTopRated => 'সবচেয়ে ভালো রেটিং';

  @override
  String get sortMostPopular => 'সবচেয়ে জনপ্রিয়';

  @override
  String get sortTrending => 'ট্রেন্ডিং';

  @override
  String get sortNewest => 'সবচেয়ে নতুন';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'সবচেয়ে বেশি ফেভারিট';

  @override
  String get anyCountry => 'যেকোনো দেশ';

  @override
  String get orderScore => 'স্কোর';

  @override
  String get orderTitle => 'টাইটেল';

  @override
  String get orderLastUpdated => 'সর্বশেষ আপডেট';

  @override
  String get orderLastAdded => 'সর্বশেষ যোগ করা';

  @override
  String get never => 'কখনো না';

  @override
  String get always => 'সবসময়';

  @override
  String get scorePoint100 => '১০০ পয়েন্ট';

  @override
  String get scorePoint10Decimal => '১০ পয়েন্ট দশমিকসহ';

  @override
  String get scorePoint10 => '১০ পয়েন্ট';

  @override
  String get scorePoint5 => '৫ তারা';

  @override
  String get scorePoint3 => '৩ পয়েন্ট স্মাইলি';

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
  String get resumeTitle => 'আবার চালু করো';

  @override
  String get resumeSourceMissing => 'চালিয়ে যেতে এই টাইটেলের সোর্স ইনস্টল করো';

  @override
  String get resumeRemove => 'চালিয়ে যাওয়া থেকে সরাও';

  @override
  String resumeAt(String time) {
    return '$time বাকি';
  }

  @override
  String resumePage(int page, int total) {
    return 'পাতা $page / $total';
  }

  @override
  String get continueWatching => 'দেখা চালিয়ে যাও';

  @override
  String get continueReading => 'পড়া চালিয়ে যাও';

  @override
  String get favouriteAnimeSection => 'ফেভারিট অ্যানিমে';

  @override
  String get favouriteMangaSection => 'ফেভারিট মাঙ্গা';

  @override
  String get plannedAnime => 'প্ল্যান করা অ্যানিমে';

  @override
  String get plannedManga => 'প্ল্যান করা মাঙ্গা';

  @override
  String get completedAnime => 'শেষ করা অ্যানিমে';

  @override
  String get completedManga => 'শেষ করা মাঙ্গা';

  @override
  String get hiddenMedia => 'লুকানো মিডিয়া';

  @override
  String get recentUpdates => 'সাম্প্রতিক আপডেট';

  @override
  String get trendingNow => 'এখন ট্রেন্ডিং';

  @override
  String get popularThisSeason => 'এই সিজনে জনপ্রিয়';

  @override
  String get trendingMovies => 'ট্রেন্ডিং মুভি';

  @override
  String get topRatedSeries => 'সবচেয়ে ভালো রেটিংয়ের সিরিজ';

  @override
  String get mostFavouriteSeries => 'সবচেয়ে বেশি ফেভারিট সিরিজ';

  @override
  String get popularAnime => 'জনপ্রিয় অ্যানিমে';

  @override
  String get trendingManhwa => 'ট্রেন্ডিং মানহোয়া';

  @override
  String get trendingNovels => 'ট্রেন্ডিং নভেল';

  @override
  String get topRatedManga => 'সবচেয়ে ভালো রেটিংয়ের মাঙ্গা';

  @override
  String get mostFavouriteManga => 'সবচেয়ে বেশি ফেভারিট মাঙ্গা';

  @override
  String get popularManga => 'জনপ্রিয় মাঙ্গা';

  @override
  String get topMovies => 'সেরা মুভি';

  @override
  String get topOna => 'সেরা ONA';

  @override
  String get topOva => 'সেরা OVA';

  @override
  String get mostPopular => 'সবচেয়ে জনপ্রিয়';

  @override
  String get mostFavourite => 'সবচেয়ে বেশি ফেভারিট';

  @override
  String get upcoming => 'আসছে';

  @override
  String get topManga => 'সেরা মাঙ্গা';

  @override
  String get topManhwa => 'সেরা মানহোয়া';

  @override
  String get topManhua => 'সেরা মানহুয়া';

  @override
  String get topNovels => 'সেরা নভেল';

  @override
  String get topOneShots => 'সেরা ওয়ান-শট';

  @override
  String get trendingMoviesToday => 'আজকের ট্রেন্ডিং মুভি';

  @override
  String get trendingShowsToday => 'আজকের ট্রেন্ডিং শো';

  @override
  String get trendingMoviesWeek => 'এই সপ্তাহের ট্রেন্ডিং মুভি';

  @override
  String get trendingShowsWeek => 'এই সপ্তাহের ট্রেন্ডিং শো';

  @override
  String get mostWatchedMoviesMonth => 'এই মাসে সবচেয়ে বেশি দেখা মুভি';

  @override
  String get mostWatchedShowsMonth => 'এই মাসে সবচেয়ে বেশি দেখা শো';

  @override
  String get trendingThisWeek => 'এই সপ্তাহে ট্রেন্ডিং';

  @override
  String get mostWatchedThisMonth => 'এই মাসে সবচেয়ে বেশি দেখা';

  @override
  String get repoLinksAdded => 'রিপো লিংক সফলভাবে যোগ হয়েছে!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList থেকে ডেটা আনতে সমস্যা হয়েছে।';

  @override
  String get navInfo => 'তথ্য';

  @override
  String get navComments => 'কমেন্ট';

  @override
  String get playerNotAvailable => 'প্লেয়ার এখনো পাওয়া যাচ্ছে না';

  @override
  String deepLinkInitialError(String error) {
    return 'ইনিশিয়াল ডিপ লিংক আনতে সমস্যা: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'লিংক খুলতে সমস্যা: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'এই লিংক খোলা যাচ্ছে না: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'লিংক খুলতে সমস্যা: $error';
  }

  @override
  String get forReleasingTitles => 'বর্তমানে চলমান টাইটেলের জন্য';

  @override
  String get progress => 'প্রগ্রেস';

  @override
  String get notes => 'নোট';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" সার্ভিস পাওয়া যায়নি';
  }

  @override
  String get glassEffectEnabled => 'গ্লাস ইফেক্ট চালু';

  @override
  String get glassEffectDisabled => 'গ্লাস ইফেক্ট বন্ধ';

  @override
  String get materialYouEnabled => 'Material You চালু';

  @override
  String get materialYouDisabled => 'Material You বন্ধ';

  @override
  String get darkModeEnabled => 'ডার্ক মোড চালু';

  @override
  String get darkModeDisabled => 'ডার্ক মোড বন্ধ';

  @override
  String get animeList => 'অ্যানিমে লিস্ট';

  @override
  String get mangaList => 'মাঙ্গা লিস্ট';

  @override
  String ownerAnimeList(String owner) {
    return '$owner-এর অ্যানিমে লিস্ট';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner-এর মাঙ্গা লিস্ট';
  }

  @override
  String get loadingList => 'লিস্ট লোড হচ্ছে';

  @override
  String get earlier => 'আগের';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count দিন আগে',
      one: '১ দিন আগে',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ঘণ্টা আগে',
      one: '১ ঘণ্টা আগে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count মিনিট আগে',
      one: '১ মিনিট আগে',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count মি. আগে';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ঘ. আগে';
  }

  @override
  String daysAgoShort(int count) {
    return '$count দিন আগে';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count সপ্তাহ আগে';
  }

  @override
  String get couldntLoadSource => 'এই সোর্স লোড করা গেল না';

  @override
  String get followers => 'ফলোয়ার';

  @override
  String couldntLoadTitle(String title) {
    return '$title লোড করা গেল না';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'এই প্রোফাইল লোড করা গেল না';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get feed => 'ফিড';

  @override
  String get stats => 'স্ট্যাটস';

  @override
  String get received => 'পাওয়া';

  @override
  String get sent => 'পাঠানো';

  @override
  String get global => 'গ্লোবাল';

  @override
  String get couldntLoadPage => 'এই পেজ লোড করা গেল না';

  @override
  String get couldntLoadAllDetails => 'সব বিবরণ লোড করা গেল না';

  @override
  String get series => 'সিরিজ';

  @override
  String get studios => 'স্টুডিও';

  @override
  String get users => 'ইউজার';

  @override
  String repositoriesTitle(String type) {
    return '$type রিপোজিটরি';
  }

  @override
  String get repositoryUrl => 'রিপোজিটরি URL';

  @override
  String get downloadingRepository => 'রিপোজিটরি ডাউনলোড হচ্ছে…';

  @override
  String get noRepositories => 'কোনো রিপোজিটরি যোগ করা হয়নি';

  @override
  String repoExtensionsCount(String count) {
    return '$countটি এক্সটেনশন';
  }

  @override
  String get searchExtensions => 'এক্সটেনশন খোঁজো...';

  @override
  String deletePluginTitle(String name) {
    return '$name মুছবে?';
  }

  @override
  String get deletePluginMessage => 'সত্যিই এই প্লাগইন মুছে ফেলতে চাও?';

  @override
  String pluginDeleted(String name) {
    return '$name মুছে ফেলা হয়েছে';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'কনফিগার করা রিপোতে $name পাওয়া যাচ্ছে না';
  }

  @override
  String get pluginFetchFailed => 'প্লাগইনের তথ্য আনা যায়নি';

  @override
  String installPluginTitle(String name) {
    return '$name ইনস্টল করো';
  }

  @override
  String sizeLabel(String size) {
    return 'সাইজ: $size';
  }

  @override
  String get installedState => 'ইনস্টল করা আছে';

  @override
  String get errorLabel => 'এরর:';

  @override
  String get stackTraceDetails => 'বিবরণ (Stack Trace)';

  @override
  String get shareLogFile => 'লগ ফাইল শেয়ার করো';

  @override
  String get copyLogs => 'লগ কপি করো';

  @override
  String noListToEdit(String service) {
    return '$service-এ এডিট করার মতো কোনো লিস্ট নেই';
  }

  @override
  String get couldNotReadFile => 'ওই ফাইল পড়া গেল না';

  @override
  String importedSummary(int anime, int manga) {
    return '$animeটি অ্যানিমে আর $mangaটি মাঙ্গা ইমপোর্ট হয়েছে';
  }

  @override
  String alreadyThere(int count) {
    return ' · $countটি আগে থেকেই ছিল';
  }

  @override
  String get airingNow => 'এখন প্রচার হচ্ছে';

  @override
  String get topRatedMovies => 'সবচেয়ে ভালো রেটিংয়ের মুভি';

  @override
  String get koreanDramas => 'কোরিয়ান ড্রামা';

  @override
  String get chineseDramas => 'চাইনিজ ড্রামা';

  @override
  String get japaneseDramas => 'জাপানিজ ড্রামা';

  @override
  String get thaiDramas => 'থাই ড্রামা';

  @override
  String get turkishDramas => 'তুর্কি ড্রামা';

  @override
  String get miniSeries => 'মিনি সিরিজ';

  @override
  String get topRatedShows => 'সবচেয়ে ভালো রেটিংয়ের শো';

  @override
  String get recommendedSection => 'রেকমেন্ডেড';

  @override
  String get syncRow => 'লিস্ট সিঙ্ক';

  @override
  String get syncRowDesc =>
      'একটা সার্ভিসের লিস্ট তোমার অন্য অ্যাকাউন্টগুলোতে কপি করো';

  @override
  String get syncTitle => 'সিঙ্ক';

  @override
  String get syncMainService => 'মেইন সার্ভিস';

  @override
  String get syncMainServiceDesc =>
      'এর লিস্টই আসল; সাইন ইন করা বাকি সব সার্ভিস এর সাথে মিলিয়ে আপডেট হয়';

  @override
  String get syncAuto => 'অটো সিঙ্ক';

  @override
  String get syncAutoDesc =>
      'অ্যাপ খুললে আর প্রতি ৩০ মিনিটে ব্যাকগ্রাউন্ডে ফেচ ও সিঙ্ক করো';

  @override
  String get syncAddMissing => 'বাদ পড়া এন্ট্রি যোগ করো';

  @override
  String get syncAddMissingDesc =>
      'অন্য সার্ভিসে এখনো নেই এমন এন্ট্রিও যোগ করো';

  @override
  String get syncOnlyForward => 'এগিয়ে থাকা প্রগ্রেস রাখো';

  @override
  String get syncOnlyForwardDesc =>
      'যে সার্ভিস আগে থেকেই এগিয়ে আছে তার প্রগ্রেস কমিয়ো না';

  @override
  String get syncFetch => 'ফেচ';

  @override
  String get syncFetchAgain => 'আবার ফেচ করো';

  @override
  String get syncAll => 'সব সিঙ্ক করো';

  @override
  String get syncStop => 'থামাও';

  @override
  String get syncResume => 'আবার চালু করো';

  @override
  String get syncNothingToSync => 'এই ধরনের জন্য এই সার্ভিস সিঙ্ক করা যায় না';

  @override
  String get syncNoTargets => 'সিঙ্ক করার জন্য অন্য একটা সার্ভিসে সাইন ইন করো';

  @override
  String get syncLoadingMap => 'আইডি ম্যাপিং লোড হচ্ছে';

  @override
  String get syncComparing => 'লিস্ট মেলানো হচ্ছে';

  @override
  String get syncIntro =>
      'একটা মেইন সার্ভিস বেছে ফেচ চাপো। প্রতিটা সার্ভিস থেকে একবার তোমার লিস্ট আনা হবে, তারপর মেইনটার সাথে মেলানো হবে।';

  @override
  String get syncStateSynced => 'সিঙ্ক হয়েছে';

  @override
  String get syncStateOutdated => 'সিঙ্কের বাইরে';

  @override
  String get syncStateMissing => 'লিস্টে নেই';

  @override
  String get syncStateUnmapped => 'মিল নেই';

  @override
  String syncPaused(String time) {
    return 'রেট লিমিটের জন্য অপেক্ষা চলছে, $time পরে আবার শুরু হবে';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$countটি শুধু $name-এ আছে, ছোঁয়া হয়নি';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total-এর মধ্যে $done';
  }

  @override
  String get syncNothingHere => 'দেখানোর মতো কিছু নেই';

  @override
  String syncLimits(int used, int max, String window) {
    return 'এই $window $maxটি রিকোয়েস্টের মধ্যে $usedটি ব্যবহার হয়েছে';
  }

  @override
  String get syncMinute => 'মিনিট';

  @override
  String get syncDay => 'দিন';

  @override
  String get syncNotInList => 'এখনো লিস্টে নেই';

  @override
  String get syncCleared => 'প্ল্যান মুছে ফেলা হয়েছে';

  @override
  String get syncClear => 'মুছে ফেলো';

  @override
  String get syncOptions => 'অপশন';

  @override
  String get syncShared => 'অন্য একটা আইটেমের সাথে এন্ট্রি শেয়ার করে';

  @override
  String syncNotFound(String service) {
    return '$service-এ পাওয়া যায়নি';
  }

  @override
  String syncService(String service, int count) {
    return '$service সিঙ্ক করো ($count)';
  }

  @override
  String get syncOnEdit => 'পরিবর্তন সাথে সাথে সিঙ্ক করো';

  @override
  String get syncOnEditDesc =>
      'প্রতিটা প্রগ্রেস আপডেট আর লিস্ট এডিট সাইন ইন করা অন্য সার্ভিসগুলোতে সাথে সাথে পাঠিয়ে দাও';

  @override
  String syncPushed(String services) {
    return '$services-এ সিঙ্ক হয়েছে';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'রেট লিমিট হয়ে গেছে, একটু পরে আবার চেষ্টা করো';

  @override
  String get syncAhead => 'যেটা এগিয়ে আছে';

  @override
  String get syncAheadDesc =>
      'দুই দিকেই: প্রতিটা টাইটেলের জন্য যে এন্ট্রি সবচেয়ে এগিয়ে সেটাই জেতে আর তোমার অন্য সব সার্ভিসে কপি হয়';

  @override
  String syncAheadFrom(String service) {
    return '$service থেকে';
  }

  @override
  String get syncConfirm => 'সিঙ্কের আগে দেখে নাও';

  @override
  String get syncConfirmDesc =>
      'সব সিঙ্ক করো কী কী বদলাবে আর কতগুলো রিকোয়েস্ট লাগবে দেখাও';

  @override
  String get syncPreviewTitle => 'সিঙ্কের জন্য তৈরি';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updatesটি আপডেট, $addsটি যোগ হবে';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'প্রায় $countটি রিকোয়েস্ট';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$countটি আইডির আগে লুকআপ দরকার';
  }

  @override
  String get syncPreviewNothing => 'বদলানোর কিছু নেই';

  @override
  String get syncStart => 'শুরু করো';

  @override
  String get syncRetry => 'আবার চেষ্টা করো';

  @override
  String get syncSkip => 'এই আইটেম এড়িয়ে যাও';

  @override
  String get syncInclude => 'এই আইটেম আবার ধরো';

  @override
  String get syncSkippedLabel => 'এড়ানো হয়েছে';

  @override
  String get syncChanges => 'পার্থক্য';

  @override
  String get syncChangeStatus => 'স্ট্যাটাস';

  @override
  String get syncChangeProgress => 'প্রগ্রেস';

  @override
  String get syncChangeScore => 'স্কোর';

  @override
  String get syncChangeDates => 'তারিখ';

  @override
  String get syncChangeRepeat => 'রিওয়াচ কাউন্ট';

  @override
  String get syncFailedReason => 'কেন ব্যর্থ হয়েছে';

  @override
  String get syncSkippedHint =>
      'এড়িয়ে যাওয়া আইটেম আবার ফেচ করলেও ছোঁয়া হয় না';

  @override
  String get commentsRules => 'কমেন্টের নিয়ম';

  @override
  String get commentsRulesBody =>
      'যেকোনো নিয়ম ভাঙলেই তুমি বাদ!\n\n১. বর্ণবাদ, বৈষম্য বা ঘৃণামূলক কথা চলবে না\n২. স্প্যাম বা নিজের প্রচার চলবে না\n৩. কোনো NSFW কনটেন্ট একদম না\n৪. শুধু ইংরেজি, কোনো ব্যতিক্রম নেই\n৫. অন্যের পরিচয়ে চলা, হয়রানি বা গালাগালি চলবে না\n৬. অবৈধ কনটেন্ট বা কোনো ফ্যান্ডমের প্রতি চরম অসম্মান চলবে না\n৭. রিপোজিটরি বা এক্সটেনশন চেয়ো না, শেয়ারও কোরো না\n৮. স্পয়লার শুধু স্পয়লার ট্যাগ আর সতর্কতাসহ\n৯. অপ্রাপ্তবয়স্ক ক্যারেক্টার নিয়ে যৌন বা অনুচিত মন্তব্য চলবে না\n১০. ভুল হলে পোস্ট কোরো না!';

  @override
  String get commentsRulesAccept => 'বুঝেছি';

  @override
  String get commentsSortNewest => 'সবচেয়ে নতুন';

  @override
  String get commentsSortOldest => 'সবচেয়ে পুরোনো';

  @override
  String get commentsSortHighest => 'সবচেয়ে ভালো রেটিং';

  @override
  String get commentsSortLowest => 'সবচেয়ে খারাপ রেটিং';

  @override
  String commentsEpisodeShort(int number) {
    return 'পর্ব $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'পর্ব দিয়ে ফিল্টার';

  @override
  String get commentsFilterChapterTitle => 'অধ্যায় দিয়ে ফিল্টার';

  @override
  String get commentsFilterTagTitle => 'পর্ব বা অধ্যায়ের নম্বর দাও';

  @override
  String get commentsFilterHint => 'নম্বর';

  @override
  String get commentsFilterApply => 'ফিল্টার';

  @override
  String get commentsFilterClear => 'সব দেখাও';

  @override
  String get commentsPlaceholder => 'একটা কমেন্ট যোগ করো…';

  @override
  String commentsReplyingTo(String name) {
    return '$name-কে রিপ্লাই দিচ্ছ';
  }

  @override
  String get commentsSend => 'পাঠাও';

  @override
  String get commentsTagButton => 'ট্যাগ';

  @override
  String commentsTagTitle(String label) {
    return 'ট্যাগ $label (ঐচ্ছিক)';
  }

  @override
  String get commentsTagEpisode => 'পর্ব';

  @override
  String get commentsTagChapter => 'অধ্যায়';

  @override
  String commentsTagRange(int total) {
    return '১–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label নম্বর';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ট্যাগ মোট সংখ্যা ($total) ছাড়িয়ে যেতে পারবে না';
  }

  @override
  String get commentsNoTag => 'ট্যাগ নেই';

  @override
  String get commentsSpoiler => 'স্পয়লার';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF খোঁজো';

  @override
  String get commentsGifEmpty => 'কোনো GIF পাওয়া যায়নি';

  @override
  String get commentsEmptyText => 'কমেন্ট খালি রাখা যাবে না';

  @override
  String get commentsBannedYou => 'তোমাকে কমেন্ট করা থেকে ব্যান করা হয়েছে';

  @override
  String get commentsEdited => 'কমেন্ট এডিট হয়েছে';

  @override
  String get commentsDeleted => 'কমেন্ট মোছা হয়েছে';

  @override
  String get commentsDeletedPlaceholder => '[মোছা]';

  @override
  String get commentsReported => 'কমেন্ট রিপোর্ট হয়েছে';

  @override
  String get commentsUserBanned => 'ইউজার ব্যান হয়েছে';

  @override
  String get commentsReport => 'রিপোর্ট';

  @override
  String get commentsReportAsk => 'এই কমেন্ট মডারেটরদের কাছে রিপোর্ট করবে?';

  @override
  String get commentsDelete => 'মুছে ফেলো';

  @override
  String get commentsDeleteAsk => 'এই কমেন্ট সবার জন্য মুছে যাবে।';

  @override
  String get commentsBan => 'ব্যান';

  @override
  String get commentsBanAsk => 'এই ইউজারকে কমেন্ট করা থেকে ব্যান করবে?';

  @override
  String get commentsCopy => 'কপি';

  @override
  String get commentsViewReply => '১টি রিপ্লাই দেখো';

  @override
  String commentsViewReplies(int count) {
    return '$countটি রিপ্লাই দেখো';
  }

  @override
  String get commentsHideReplies => 'রিপ্লাই লুকাও';

  @override
  String get commentsLoadMore => 'আরও কমেন্ট লোড করো';

  @override
  String get commentsEmpty => 'এখনো কোনো কমেন্ট নেই। প্রথম হও!';

  @override
  String get commentsEmptyFiltered => 'এই ফিল্টারে কোনো কমেন্ট নেই';

  @override
  String get commentsSignIn => 'কমেন্ট পড়তে ও লিখতে AniList-এ সাইন ইন করো';

  @override
  String get commentsSignInMessage =>
      'কমেন্ট সব সার্ভিসের মধ্যে শেয়ার করা হয় আর তোমার AniList অ্যাকাউন্ট ব্যবহার করে।';

  @override
  String get commentsUnavailable => 'এই টাইটেলের জন্য কমেন্ট নেই';

  @override
  String get commentsUnavailableMessage =>
      'এটা কোনো AniList এন্ট্রির সাথে মেলানো যায়নি।';

  @override
  String get commentsDisabled => 'কমেন্ট বন্ধ করা আছে';

  @override
  String get commentsDisabledMessage =>
      'সেটিংস › সাধারণ থেকে আবার চালু করতে পারো।';

  @override
  String get commentsOffline => 'কমেন্ট লোড করা গেল না';

  @override
  String get commentsSingleTitle => 'একটা কমেন্ট দেখানো হচ্ছে';

  @override
  String get commentsShowAll => 'সব কমেন্ট দেখাও';

  @override
  String get commentsSettingsHeader => 'কমেন্ট';

  @override
  String get commentsSettingEnabled => 'কমেন্ট';

  @override
  String get commentsSettingEnabledDesc =>
      'টাইটেলে কমেন্ট ট্যাব দেখাও আর তোমার AniList অ্যাকাউন্ট দিয়ে কমেন্ট সার্ভারে সাইন ইন করো';

  @override
  String get commentsSettingAlerts => 'রিপ্লাই নোটিফিকেশন';

  @override
  String get commentsSettingAlertsDesc => 'কেউ আমার কমেন্টে রিপ্লাই দিলে জানাও';

  @override
  String get commentsNoticeReplyTitle => 'কমেন্টে নতুন রিপ্লাই';

  @override
  String commentsNoticeReply(String name) {
    return '$name তোমার কমেন্টে রিপ্লাই দিয়েছে';
  }

  @override
  String get commentsNoticeWarningTitle => 'তুমি একটা সতর্কবার্তা পেয়েছ';

  @override
  String get commentsNoticeWarning => 'কমেন্টে একটু ভেবেচিন্তে লেখো';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu থেকে আপডেট';

  @override
  String get barcodeTitle => 'বারকোড স্ক্যান করো';

  @override
  String get barcodeTooltip => 'বারকোড দিয়ে মাঙ্গা বা নভেল খোঁজো';

  @override
  String get barcodeIntro =>
      'ভলিউমের পেছনের বারকোডের দিকে ক্যামেরা ধরো, বা ISBN টাইপ করো।';

  @override
  String get barcodeIntroManual =>
      'ভলিউমের পেছনে বারকোডের ওপরে ছাপা ISBN টাইপ করো।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'এটা সঠিক ISBN না';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn-এর জন্য কোনো বই পাওয়া যায়নি';
  }

  @override
  String get barcodeCameraDenied =>
      'ক্যামেরা পাওয়া যাচ্ছে না। ক্যামেরার অ্যাক্সেস দাও বা ISBN টাইপ করো।';

  @override
  String get themesTitle => 'ওপেনিং আর এন্ডিং';

  @override
  String get themesPlayVideo => 'ভিডিও চালাও';

  @override
  String get themesPlayAudio => 'শুধু অডিও চালাও';

  @override
  String get themesOpenSite => 'AnimeThemes-এ খোলো';

  @override
  String get themesCredit => 'AnimeThemes থেকে থিম';

  @override
  String get themesVersions => 'ভার্সন';

  @override
  String get sauceTitle => 'সোর্স খুঁজে বের করো';

  @override
  String get sauceIntro =>
      'মাঙ্গার পাতা বা আর্টওয়ার্ক আপলোড করো, বা তার লিংক পেস্ট করো, কোথা থেকে এসেছে জানতে।';

  @override
  String get sauceKeyTitle => 'SauceNAO API কী';

  @override
  String get sauceKeyHint => 'ঐচ্ছিক, দৈনিক সার্চ লিমিট বাড়ায়';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php থেকে ফ্রি কী নাও';

  @override
  String get sauceOpen => 'সোর্স খোলো';

  @override
  String get sauceCredit => 'SauceNAO-র ইমেজ সার্চ';

  @override
  String get sauceEmpty => 'কিছু মেলেনি';

  @override
  String get sauceTooltip =>
      'মাঙ্গার পাতা বা আর্টওয়ার্কের সোর্স খুঁজে বের করো';

  @override
  String get trendzTitle => 'অ্যানিমে চার্ট';

  @override
  String get trendzAnime => 'অ্যানিমে';

  @override
  String get trendzFemale => 'মেয়ে ক্যারেক্টার';

  @override
  String get trendzMale => 'ছেলে ক্যারেক্টার';

  @override
  String get trendzCouple => 'কাপল';

  @override
  String get trendzCredit => 'AniTrendz-এর সাপ্তাহিক চার্ট';

  @override
  String get trendzNew => 'নতুন';

  @override
  String get trendzEmpty => 'চার্ট খালি';

  @override
  String get shareCard => 'কার্ড শেয়ার করো';

  @override
  String get shareCardList => 'লিস্ট কার্ড শেয়ার করো';

  @override
  String get shareCardSaved => 'কার্ড সেভ হয়েছে';

  @override
  String get shareCardFailed => 'কার্ড বানানো গেল না';

  @override
  String get shareCardListEmpty => 'তোমার লিস্টে শেয়ার করার মতো এখনো কিছু নেই';

  @override
  String get shareCardTop => 'আমার সেরা বাছাই';

  @override
  String themesEpisodes(String eps) {
    return 'পর্ব $eps';
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
    return '$countটি ভোট';
  }

  @override
  String trendzPeak(String rank) {
    return 'সর্বোচ্চ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'টপ টেনে $count সপ্তাহ';
  }

  @override
  String get imageSearchTitle => 'ছবি দিয়ে খোঁজো';

  @override
  String get imageSearchTooltip => 'স্ক্রিনশট থেকে অ্যানিমে খুঁজে বের করো';

  @override
  String get imageSearchIntro =>
      'একটা স্ক্রিনশট বাছো বা ছবির লিংক পেস্ট করো, trace.moe পর্ব আর মুহূর্তটা খুঁজে বের করবে।';

  @override
  String get imageSearchPick => 'ছবি বেছে নাও';

  @override
  String get imageSearchLinkHint => 'ছবির লিংক পেস্ট করো';

  @override
  String get imageSearchGo => 'সার্চ';

  @override
  String get imageSearchEmpty => 'কিছু মেলেনি';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'পর্ব $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time-এ';
  }

  @override
  String get imageSearchPreview => 'প্রিভিউ ক্লিপ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% মিল';
  }

  @override
  String get imageSearchCredit => 'trace.moe-র সৌজন্যে';

  @override
  String get imageSearchOpenFailed => 'এই টাইটেল খোলা গেল না';

  @override
  String get groups => 'গ্রুপ';

  @override
  String get groupsYours => 'তোমার গ্রুপ';

  @override
  String get groupsPopular => 'জনপ্রিয়';

  @override
  String get groupsNew => 'নতুন';

  @override
  String get groupsFeatured => 'ফিচার্ড';

  @override
  String get groupsSearch => 'গ্রুপ খোঁজো';

  @override
  String get groupsAll => 'সব';

  @override
  String get groupsEmpty => 'কোনো গ্রুপ পাওয়া যায়নি';

  @override
  String get groupsEmptyYours => 'তুমি এখনো কোনো গ্রুপে জয়েন করোনি';

  @override
  String get groupsSignIn => 'যে গ্রুপে জয়েন করেছ সেগুলো দেখতে সাইন ইন করো';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন মেম্বার',
      one: '১ জন মেম্বার',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'জয়েন করো';

  @override
  String get groupsJoined => 'জয়েন করা হয়েছে';

  @override
  String get groupsLeave => 'গ্রুপ ছাড়ো';

  @override
  String get groupsLeaveAsk => 'এই গ্রুপের পোস্ট আর তোমার ফিডে দেখা যাবে না।';

  @override
  String get groupsJoinFailed =>
      'এই গ্রুপে জয়েন করা গেল না, হয়তো শুধু ইনভাইট দিয়ে ঢোকা যায়';

  @override
  String get groupsLeaveFailed => 'এই গ্রুপ ছাড়া গেল না';

  @override
  String get groupsPosts => 'পোস্ট';

  @override
  String get groupsMembersTab => 'মেম্বার';

  @override
  String get groupsAbout => 'সম্পর্কে';

  @override
  String get groupsRules => 'নিয়ম';

  @override
  String get groupsPrivacyOpen => 'ওপেন';

  @override
  String get groupsPrivacyRestricted => 'সীমিত';

  @override
  String get groupsPrivacyClosed => 'বন্ধ';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'অ্যাডমিন';

  @override
  String get groupsRoleMod => 'মড';

  @override
  String get groupsCouldntLoad => 'এই গ্রুপ লোড করা গেল না';

  @override
  String get groupsNewPost => 'গ্রুপে পোস্ট করো';

  @override
  String get groupsPostHint => 'গ্রুপের সাথে কিছু শেয়ার করো';

  @override
  String get groupsOpenInBrowser => 'ব্রাউজারে খোলো';

  @override
  String get groupsCategory => 'ক্যাটাগরি';

  @override
  String get groupsLanguage => 'ভাষা';

  @override
  String get groupsCreated => 'তৈরি হয়েছে';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count জন লিডার',
      one: '১ জন লিডার',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'প্রাইভেসি';

  @override
  String get notificationsAll => 'সব';

  @override
  String get notificationsAiring => 'এয়ারিং';

  @override
  String get notificationsMedia => 'নতুন টাইটেল';

  @override
  String get notificationsReplies => 'রিপ্লাই';

  @override
  String get notificationsMentions => 'মেনশন';

  @override
  String get notificationsMessages => 'মেসেজ';

  @override
  String get notificationsLikes => 'লাইক';

  @override
  String get notificationsFollows => 'ফলো';

  @override
  String get notificationsNoServices =>
      'সাইন ইন করা কোনো সার্ভিসে নোটিফিকেশন নেই';

  @override
  String get notificationsNoServicesMessage =>
      'নোটিফিকেশন পাঠায় এমন সার্ভিসে সাইন ইন করো, এখানে দেখা যাবে।';

  @override
  String get notificationsEmptyKind => 'এই ক্যাটাগরিতে এখনো কিছু নেই';

  @override
  String get notificationsCommentsEmpty => 'কমেন্টের কোনো নোটিফিকেশন নেই';

  @override
  String get notificationsCommentsEmptyMessage =>
      'তোমার কমেন্টের রিপ্লাই আর Dantotsu-র ঘোষণা এখানে দেখা যাবে।';

  @override
  String get notificationsSettings => 'নোটিফিকেশন সেটিংস';

  @override
  String get notificationsPollTitle => 'নতুন নোটিফিকেশন চেক করো';

  @override
  String notificationsPollDesc(int minutes) {
    return 'অ্যাপ খোলা থাকলে প্রতি $minutes মিনিটে';
  }

  @override
  String get notificationsNotifyAbout => 'কী কী নিয়ে জানাবে';

  @override
  String get notificationsCommentsHeader => 'কমেন্ট নোটিফিকেশন';

  @override
  String systemNotificationsDescFor(String service) {
    return 'অ্যাপ চলার সময় প্রতিটা না-পড়া $service নোটিফিকেশনের জন্য সিস্টেম নোটিফিকেশন দেখাও।';
  }

  @override
  String get notificationsTestSent => 'টেস্ট নোটিফিকেশন পাঠানো হয়েছে';

  @override
  String get notificationsTestDenied =>
      'Dartotsu-র জন্য নোটিফিকেশন অনুমতি দেওয়া নেই। সিস্টেম সেটিংসে চালু করো।';

  @override
  String get notificationsTestHint => 'টেস্ট নোটিফিকেশন পাঠাতে চেপে ধরো';

  @override
  String get notificationsTestSample => 'এটা একটা টেস্ট নোটিফিকেশন';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media-তে তোমার কমেন্টে রিপ্লাই দিয়েছে';
  }

  @override
  String get imageSearchNotLink => 'এটাকে লিংক বলে মনে হচ্ছে না';

  @override
  String get imageSearchQuota => 'সার্চ কোটা শেষ';

  @override
  String get imageSearchBusy =>
      'অনেক বেশি রিকোয়েস্ট, একটু পরে আবার চেষ্টা করো';

  @override
  String imageSearchFailed(int code) {
    return 'সার্চ ব্যর্থ ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$countটি নতুন নোটিফিকেশন';
  }

  @override
  String get reactionsTitle => 'রিঅ্যাকশন';

  @override
  String get reactionsNeedEntry =>
      'রিঅ্যাক্ট করার আগে এই টাইটেল লিস্টে যোগ করো';

  @override
  String get reactionsAdd => 'একটা রিঅ্যাকশন যোগ করো';

  @override
  String get reactionsHint => 'কেমন লাগল? (ছোট করে, স্পয়লার ছাড়া)';

  @override
  String get reactionsPost => 'পোস্ট';

  @override
  String get reactionsFailed => 'রিঅ্যাকশন আপডেট করা গেল না';

  @override
  String get settingsWatch => 'দেখো আর পড়ো';

  @override
  String get settingsWatchDesc => 'পর্বের লিস্ট, সোর্স ম্যাচিং আর পর্বের বিবরণ';

  @override
  String get watchSettingsLayout => 'পর্বের লিস্ট';

  @override
  String get watchSettingsSources => 'সোর্স';

  @override
  String get watchSettingsMetadata => 'পর্বের বিবরণ';

  @override
  String get watchLayout => 'লেআউট';

  @override
  String get watchListView => 'লিস্ট';

  @override
  String get watchGridView => 'গ্রিড';

  @override
  String get watchCompactView => 'কমপ্যাক্ট';

  @override
  String get watchDefaultLayoutDesc =>
      'কোনো টাইটেলের জন্য না বদলানো পর্যন্ত পর্ব আর অধ্যায় কীভাবে সাজানো থাকবে';

  @override
  String get watchChunkSize => 'রেঞ্জের সাইজ';

  @override
  String get watchChunkSizeDesc =>
      'প্রতিটা রেঞ্জ ট্যাবে কতগুলো পর্ব বা অধ্যায় থাকবে';

  @override
  String get watchShowDescription => 'বিবরণ দেখাও';

  @override
  String get watchShowDescriptionDesc =>
      'লিস্ট লেআউটে প্রতিটা টাইটেলের নিচে পর্বের সারাংশ দেখাও';

  @override
  String get watchShowFiller => 'ফিলার পর্ব দেখাও';

  @override
  String get watchShowFillerDesc => 'ফিলার চিহ্নিত পর্ব লুকাতে বন্ধ করো';

  @override
  String get watchBlurUnwatched => 'স্পয়লার থাম্বনেইল লুকাও';

  @override
  String get watchBlurUnwatchedDesc =>
      'যে পর্ব এখনো দেখোনি তার থাম্বনেইল ঝাপসা করো';

  @override
  String get watchResumeShelf => 'রিজিউম শেলফ';

  @override
  String get watchResumeShelfDesc => 'হোমে রিজিউম সারি দেখাও';

  @override
  String get watchMarkOnLongPress => 'চেপে ধরলে প্রগ্রেস মার্ক হয়';

  @override
  String get watchMarkOnLongPressDesc =>
      'কোনো পর্ব বা অধ্যায় চেপে ধরে দেখা বা না-দেখা মার্ক করো';

  @override
  String get watchMatching => 'সোর্স ম্যাচিং';

  @override
  String get watchMatchingDesc =>
      '\"সবচেয়ে কাছের\" সেরা সার্চ রেজাল্টটা নেয়। \"হুবহু মিল\" শুধু প্রায় একই টাইটেল নেয়, বাকিটা তোমার বেছে নেওয়ার জন্য রেখে দেয়।';

  @override
  String get watchMatchClosest => 'সবচেয়ে কাছের মিল';

  @override
  String get watchMatchExact => 'শুধু হুবহু মিল';

  @override
  String get watchMetadataDesc =>
      'পর্বের নাম, সারাংশ, থাম্বনেইল, প্রচারের তারিখ আর ফিলার ফ্ল্যাগ কোথা থেকে আসবে। অগ্রাধিকার ঠিক করতে টেনে আনো; যে সোর্সে প্রথম মান থাকে সেটাই জেতে।';

  @override
  String get watchMetaAniZipDesc =>
      'পর্বের নাম, সারাংশ, স্টিল আর প্রচারের তারিখ';

  @override
  String get watchMetaKitsuDesc => 'পর্বের নাম, বিবরণ আর থাম্বনেইল';

  @override
  String get watchMetaSimklDesc => 'পর্বের নাম, বিবরণ, স্টিল আর প্রচারের তারিখ';

  @override
  String get watchMetaAniListDesc =>
      'স্ট্রিমিং পর্বের নাম, থাম্বনেইল আর এয়ারিং শিডিউল';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai-র মাধ্যমে MyAnimeList-এর পর্বের নাম, প্রচারের তারিখ, ফিলার আর রিক্যাপ ফ্ল্যাগ';

  @override
  String get watchClearMetadata => 'পর্বের বিবরণ রিফ্রেশ করো';

  @override
  String get watchClearMetadataDesc =>
      'ক্যাশ করা পর্বের বিবরণ ভুলে যাও, যাতে আবার আনা হয়';

  @override
  String get watchMetadataCleared => 'পর্বের বিবরণ আবার আনা হবে';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পর্ব',
      one: '১টি পর্ব',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি অধ্যায়',
      one: '১টি অধ্যায়',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'পর্ব $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'অধ্যায় $number';
  }

  @override
  String get watchSearching => 'খোঁজা হচ্ছে…';

  @override
  String watchSearchingFor(String term) {
    return 'খোঁজা হচ্ছে: $term';
  }

  @override
  String watchSelected(String title) {
    return 'বাছা হয়েছে: $title';
  }

  @override
  String watchFound(String title) {
    return 'পাওয়া গেছে: $title';
  }

  @override
  String get watchNothingFound => 'এই সোর্সে কিছু পাওয়া যায়নি';

  @override
  String get watchSearchFailed => 'সোর্সে সার্চ ব্যর্থ হয়েছে';

  @override
  String get watchLoadFailed => 'লিস্ট লোড করা গেল না';

  @override
  String get watchSignInToTrack => 'প্রগ্রেস ট্র্যাক করতে সাইন ইন করো';

  @override
  String watchInstallSource(String action) {
    return '$action শুরু করতে একটা এক্সটেনশন ইনস্টল করো';
  }

  @override
  String get watchSourceMissing => 'এই সোর্স ইনস্টল করা নেই';

  @override
  String get watchWrongTitle => 'ভুল টাইটেল?';

  @override
  String get watchSearchAgain => 'আবার খোঁজো';

  @override
  String watchSearchSource(String source) {
    return '$source-এ খোঁজো';
  }

  @override
  String get watchSource => 'সোর্স';

  @override
  String get watchOptions => 'অপশন';

  @override
  String get watchReverse => 'উল্টো ক্রম';

  @override
  String get watchScanlators => 'গ্রুপ';

  @override
  String get watchResetOptions => 'এই অপশনগুলো রিসেট করো';

  @override
  String get watchContinue => 'চালিয়ে যাও';

  @override
  String get watchStart => 'শুরু করো';

  @override
  String get watchPlay => 'চালাও';

  @override
  String get watchRead => 'পড়ো';

  @override
  String get watchMarkWatched => 'দেখা হয়েছে মার্ক করো';

  @override
  String get watchMarkUnwatched => 'দেখা হয়নি মার্ক করো';

  @override
  String get watchMarkRead => 'পড়া হয়েছে মার্ক করো';

  @override
  String get watchMarkUnread => 'পড়া হয়নি মার্ক করো';

  @override
  String get watchFiller => 'ফিলার';

  @override
  String get watchRecap => 'রিক্যাপ';

  @override
  String get watchNoEpisodes => 'কোনো পর্ব পাওয়া যায়নি';

  @override
  String get watchNoChapters => 'কোনো অধ্যায় পাওয়া যায়নি';

  @override
  String get watchSourceTools => 'সোর্স টুল';

  @override
  String get watchSourceSettings => 'সোর্স সেটিংস';

  @override
  String get watchOpenWebView => 'ওয়েব ভিউতে খোলো';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare চেক সলভ করো বা লগইন করো; কুকি সোর্সের রিকোয়েস্টের সাথে শেয়ার হয়';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host-এর জন্য $countটি কুকি সেভ আছে',
      one: '$host-এর জন্য ১টি কুকি সেভ আছে',
      zero: '$host-এর জন্য কোনো কুকি সেভ নেই',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ক্লিয়ারেন্স চালু আছে, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ক্লিয়ারেন্স কুকি নেই';

  @override
  String get watchClearanceSession => 'অ্যাপ বন্ধ না হওয়া পর্যন্ত থাকবে';

  @override
  String get watchAgentShared =>
      'রিকোয়েস্ট ওয়েব ভিউয়ের user agent ব্যবহার করে, যেটা Cloudflare চেক করে';

  @override
  String get watchAgentCustom =>
      'একটা কাস্টম user agent সেট করা আছে, তাই ওয়েব ভিউ থেকে পাওয়া Cloudflare ক্লিয়ারেন্স রিজেক্ট হতে পারে';

  @override
  String get watchTestConnection => 'কানেকশন টেস্ট করো';

  @override
  String get watchSolveChallenge => 'সলভ করো';

  @override
  String watchProbeOk(int code) {
    return 'পৌঁছানো যাচ্ছে (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare এখনো চেক চাইছে';

  @override
  String watchProbeBlocked(int code) {
    return 'সাইট আটকে দিয়েছে (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'সাইটে পৌঁছানো গেল না';

  @override
  String get watchClearCookies => 'এই সাইটের কুকি মুছে ফেলো';

  @override
  String get watchCookiesCleared => 'কুকি মোছা হয়েছে';

  @override
  String get watchMetaSource => 'পর্বের বিবরণ আসছে';

  @override
  String get watchMetaAuto => 'অটোমেটিক';

  @override
  String get watchMetaOff => 'বন্ধ';

  @override
  String get playerSettingsTitle => 'প্লেয়ার সেটিংস';

  @override
  String get playerSectionPlayback => 'প্লেব্যাক';

  @override
  String get playerSectionSkip => 'স্কিপিং';

  @override
  String get playerSectionGestures => 'কন্ট্রোল';

  @override
  String get playerSectionSubtitles => 'সাবটাইটেল';

  @override
  String get playerSectionShaders => 'শেডার';

  @override
  String get playerSectionEngine => 'ইঞ্জিন';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'প্লেব্যাক স্পিড';

  @override
  String get playerCursedSpeed => 'বাড়তি স্পিড';

  @override
  String get playerCursedSpeedDesc => 'লিস্টে ১০x পর্যন্ত স্পিড যোগ করো';

  @override
  String get playerResize => 'রিসাইজ মোড';

  @override
  String get playerFitFit => 'ফিট';

  @override
  String get playerFitCover => 'কভার';

  @override
  String get playerFitStretch => 'স্ট্রেচ';

  @override
  String get playerSkipDuration => 'স্কিপ বাটনের দৈর্ঘ্য';

  @override
  String get playerSkipDurationDesc =>
      'ওপেনিং আর এন্ডিংয়ের বাইরে স্কিপ বাটন কত সেকেন্ড লাফ দেয়';

  @override
  String get playerSeekDuration => 'ডাবল ট্যাপে সিক';

  @override
  String get playerSeekDurationDesc =>
      'ডাবল ট্যাপ বা অ্যারো কী দিলে কত সেকেন্ড লাফ দেবে';

  @override
  String get playerAutoPlay => 'পরেরটা অটো চালাও';

  @override
  String get playerAutoPlayDesc => 'এটা শেষ হলে পরের পর্ব শুরু করো';

  @override
  String get playerResume => 'যেখানে ছেড়েছিলে সেখান থেকে চালাও';

  @override
  String get playerResumeDesc => 'পর্ব শেষ পজিশন থেকে আবার চালাও';

  @override
  String get playerOrientation => 'ওরিয়েন্টেশন';

  @override
  String get playerOrientationAuto => 'ডিভাইস অনুসরণ করো';

  @override
  String get playerOrientationLandscape => 'ল্যান্ডস্কেপ';

  @override
  String get playerOrientationPortrait => 'পোর্ট্রেট';

  @override
  String get playerAutoSkipOpening => 'ওপেনিং স্কিপ করো';

  @override
  String get playerAutoSkipEnding => 'এন্ডিং স্কিপ করো';

  @override
  String get playerAutoSkipRecap => 'রিক্যাপ স্কিপ করো';

  @override
  String get playerAutoSkipDesc =>
      'শুরু হওয়া মাত্র টপকে যাও, AniSkip আর স্ট্রিমের টাইমস্ট্যাম্প ব্যবহার করে';

  @override
  String get playerSkipOnce => 'শুধু একবার স্কিপ করো';

  @override
  String get playerSkipOnceDesc => 'পেছনে সিক করলে একই অংশ আবার স্কিপ কোরো না';

  @override
  String get playerAdjustBrightness => 'ব্রাইটনেস জেসচার';

  @override
  String get playerAdjustBrightnessDesc =>
      'স্ক্রিনের ডান অর্ধেকে ওপর-নিচে সোয়াইপ করো';

  @override
  String get playerAdjustVolume => 'ভলিউম জেসচার';

  @override
  String get playerAdjustVolumeDesc =>
      'স্ক্রিনের বাঁ অর্ধেকে ওপর-নিচে সোয়াইপ করো';

  @override
  String get playerHoldToSpeed => 'চেপে ধরে স্পিড বাড়াও';

  @override
  String get playerHoldToSpeedDesc =>
      'ভিডিও চেপে ধরলে দ্রুত চলবে, স্পিড বদলাতে পাশে টানো';

  @override
  String get playerThumbless => 'মোটা সিক বার';

  @override
  String get playerThumblessDesc => 'থাম্ব ছাড়া মোটা বার';

  @override
  String get playerShowSubtitles => 'সাবটাইটেল দেখাও';

  @override
  String get playerShowSubtitlesDesc => 'সব সাবটাইটেল ট্র্যাক লুকাতে বন্ধ করো';

  @override
  String get playerSubtitleLanguage => 'পছন্দের সাবটাইটেল ভাষা';

  @override
  String get playerSubtitleSize => 'সাবটাইটেলের সাইজ';

  @override
  String get playerSubtitleWeight => 'সাবটাইটেলের ওজন';

  @override
  String get playerSubtitleBottom => 'সাবটাইটেলের নিচের প্যাডিং';

  @override
  String get playerSubtitleFont => 'সাবটাইটেলের ফন্ট';

  @override
  String get playerSubtitleColor => 'সাবটাইটেলের রঙ';

  @override
  String get playerSubtitleBackground => 'সাবটাইটেলের ব্যাকগ্রাউন্ড';

  @override
  String get playerSubtitleOutline => 'সাবটাইটেলের আউটলাইন';

  @override
  String get playerLibass => 'libass ব্যবহার করো';

  @override
  String get playerLibassDesc =>
      'স্টাইল করা .ass সাবটাইটেল রেন্ডার করো। তখন ওপরের সাইজ, রঙ আর ফন্ট কাজ করবে না';

  @override
  String get playerShaders => 'শেডার';

  @override
  String get playerShadersEnable => 'শেডার চালু করো';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K-র মতো GLSL শেডার দিয়ে ছবি আপস্কেল ও পরিষ্কার করো';

  @override
  String get playerShadersOff => 'শেডার বন্ধ';

  @override
  String get playerShadersMissing => 'Anime4K ইনস্টল করা নেই';

  @override
  String get playerShadersMissingDesc =>
      'বিল্ট-ইন মোড ব্যবহার করতে Anime4K শেডার প্যাক (প্রায় ০.৮ MB) ডাউনলোড করো।';

  @override
  String get playerShadersDownload => 'Anime4K ডাউনলোড করো';

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
  String get playerShadersPreview => 'এই ফ্রেমে প্রিভিউ দেখো';

  @override
  String get playerShadersUse => 'এটা ব্যবহার করো';

  @override
  String get playerPicture => 'ছবি';

  @override
  String get playerColors => 'রঙ';

  @override
  String get playerColorDefault => 'ডিফল্ট';

  @override
  String get playerColorVivid => 'ভিভিড';

  @override
  String get playerColorPop => 'অ্যানিমে পপ';

  @override
  String get playerColorSoft => 'সফট';

  @override
  String get playerColorCinematic => 'সিনেমাটিক';

  @override
  String get playerColorBright => 'ব্রাইট';

  @override
  String get playerColorNight => 'নাইট';

  @override
  String get playerColorMono => 'মনো';

  @override
  String get playerColorCustom => 'কাস্টম';

  @override
  String get playerColorBrightness => 'ব্রাইটনেস';

  @override
  String get playerColorContrast => 'কনট্রাস্ট';

  @override
  String get playerColorSaturation => 'স্যাচুরেশন';

  @override
  String get playerColorGamma => 'গামা';

  @override
  String get playerColorHue => 'হিউ';

  @override
  String get playerColorReset => 'রিসেট';

  @override
  String get playerColorAdjust => 'অ্যাডজাস্ট';

  @override
  String get playerShadersOriginal => 'অরিজিনাল';

  @override
  String get playerShadersPreviewFailed => 'প্রিভিউয়ের জন্য ফ্রেম ধরা গেল না';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'তোমার শেডার';

  @override
  String get playerShadersCustom => 'কাস্টম শেডার';

  @override
  String get playerShadersImport => '.glsl ইমপোর্ট করো';

  @override
  String get playerShadersNone =>
      'নিজের .glsl বা .hook ফাইল ইমপোর্ট করো আর টিক দিয়ে একসাথে জুড়ে দাও';

  @override
  String get playerShadersBadFile => 'একটা .glsl বা .hook শেডার ফাইল বেছে নাও';

  @override
  String get playerDecoder => 'ডিকোডার';

  @override
  String get playerDecoderAuto => 'অটো';

  @override
  String get playerDecoderAutoSafe => 'অটো (নিরাপদ)';

  @override
  String get playerDecoderSoftware => 'সফটওয়্যার';

  @override
  String get playerDecoderHardware => 'হার্ডওয়্যার';

  @override
  String get playerDecoderHardwarePlus => 'হার্ডওয়্যার+';

  @override
  String get playerVideoOutput => 'ভিডিও আউটপুট';

  @override
  String get playerAudioChannels => 'অডিও চ্যানেল';

  @override
  String get playerBuffer => 'বাফার সাইজ (MB)';

  @override
  String get playerBufferDesc =>
      'স্ট্রিম বাফার করতে প্লেয়ার যতটা মেমরি ব্যবহার করতে পারবে';

  @override
  String get playerUseMpvConf => 'mpv.conf ব্যবহার করো';

  @override
  String get playerUseMpvConfDesc =>
      'প্লেব্যাক শুরু হলে তোমার mpv.conf-এর অপশন প্রয়োগ করো';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv কনফিগারেশন এডিট করো';

  @override
  String get playerMpvConfDesc =>
      'প্রতি লাইনে একটা অপশন, সাধারণ mpv.conf-এর --hwdec=auto-র মতো। [ব্র্যাকেটে] থাকা প্রোফাইল উপেক্ষা করা হয়।';

  @override
  String get playerMpvConfSaved => 'mpv.conf সেভ হয়েছে';

  @override
  String get playerUseScripts => 'mpv স্ক্রিপ্ট ব্যবহার করো';

  @override
  String get playerUseScriptsDesc =>
      'scripts ফোল্ডার থেকে প্লাগইন লোড করো। এর জন্য Lua বা JavaScript সাপোর্টসহ libmpv বিল্ড লাগবে';

  @override
  String get playerScripts => 'mpv স্ক্রিপ্ট';

  @override
  String get playerScriptsManage => 'প্লাগইন যোগ করো, সরাও আর বদলাও';

  @override
  String get playerScriptsAdd => 'স্ক্রিপ্ট যোগ করো';

  @override
  String get playerScriptsDesc =>
      'এখানে রাখা Lua, JavaScript আর নেটিভ প্লাগইন প্লেব্যাক শুরুর সময় লোড হয়।';

  @override
  String get playerScriptsNone => 'এখনো কোনো স্ক্রিপ্ট নেই';

  @override
  String get playerScriptsBadFile =>
      'একটা .lua, .js বা নেটিভ প্লাগইন ফাইল বেছে নাও';

  @override
  String get playerTuning => 'অ্যাডভান্সড ভিডিও টিউনিং';

  @override
  String get playerTuningDesc =>
      'সিঙ্ক, ক্যাশিং, স্কেলিং আর টোন ম্যাপিং ওভাররাইড করো। ভুল মান প্লেব্যাক নষ্ট করতে পারে';

  @override
  String get playerVideoSync => 'ভিডিও সিঙ্ক';

  @override
  String get playerInterpolation => 'ফ্রেম ইন্টারপোলেশন';

  @override
  String get playerInterpolationDesc =>
      'মসৃণ মোশন, display-resample সিঙ্ক লাগবে';

  @override
  String get playerPitch => 'পিচ কারেকশন';

  @override
  String get playerPitchDesc => 'অন্য স্পিডেও গলা স্বাভাবিক রাখো';

  @override
  String get playerCacheSeconds => 'ক্যাশ (সেকেন্ড)';

  @override
  String get playerReadahead => 'এগিয়ে পড়ো (সেকেন্ড)';

  @override
  String get playerThreads => 'ডিকোডার থ্রেড';

  @override
  String get playerDeband => 'ডিব্যান্ড';

  @override
  String get playerDebandDesc => 'গ্রেডিয়েন্টে রঙের ব্যান্ডিং কমাও';

  @override
  String get playerDebandIterations => 'ডিব্যান্ড ইটারেশন';

  @override
  String get playerDebandThreshold => 'ডিব্যান্ড থ্রেশহোল্ড';

  @override
  String get playerCorrectDownscaling => 'সঠিক ডাউনস্কেলিং';

  @override
  String get playerSigmoid => 'সিগময়েড আপস্কেলিং';

  @override
  String get playerScale => 'আপস্কেলার';

  @override
  String get playerCscale => 'ক্রোমা আপস্কেলার';

  @override
  String get playerDscale => 'ডাউনস্কেলার';

  @override
  String get playerToneMapping => 'টোন ম্যাপিং';

  @override
  String get playerTargetPeak => 'টার্গেট পিক';

  @override
  String get playerOpenFiles => 'ভিডিও ফাইল খোলো';

  @override
  String get playerOpenFilesDesc => 'এই ডিভাইস থেকে ফাইল চালাও';

  @override
  String get playerOpenFolder => 'ফোল্ডার খোলো';

  @override
  String get playerOpenFolderDesc =>
      'ফোল্ডারের সব ভিডিও প্লেলিস্ট হিসেবে চালাও';

  @override
  String get playerNetworkStream => 'নেটওয়ার্ক স্ট্রিম';

  @override
  String get playerNetworkStreamDesc => 'সরাসরি ভিডিও বা HLS লিংক খোলো';

  @override
  String get playerStreamUrl => 'স্ট্রিম URL';

  @override
  String get playerStreamReferer => 'Referer (ঐচ্ছিক)';

  @override
  String get playerTorrent => 'টরেন্ট';

  @override
  String get playerTorrentDesc => 'ম্যাগনেট লিংক বা .torrent ফাইল স্ট্রিম করো';

  @override
  String get playerMagnetLink => 'ম্যাগনেট লিংক বা টরেন্ট URL';

  @override
  String get playerPickTorrent => 'একটা .torrent ফাইল বেছে নাও';

  @override
  String get playerTorrentMissing =>
      'আগে সেটিংস > অ্যাড-অন থেকে টরেন্ট অ্যাড-অন ইনস্টল করো';

  @override
  String get playerNoVideos => 'চালানো যায় এমন কোনো ভিডিও পাওয়া যায়নি';

  @override
  String get playerReset => 'প্লেয়ার সেটিংস রিসেট করো';

  @override
  String get playerResetDesc => 'প্লেয়ারের সব অপশন ডিফল্টে ফিরিয়ে দাও';

  @override
  String get playerResetConfirm => 'প্লেয়ারের সব সেটিংস রিসেট করবে?';

  @override
  String get playerResetDone => 'প্লেয়ার সেটিংস রিসেট হয়েছে';

  @override
  String get playerQuality => 'কোয়ালিটি';

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
  String get playerStreams => 'স্ট্রিম';

  @override
  String get playerAutoSelect => 'স্ট্রিম অটো বেছে নাও';

  @override
  String get playerAutoSelectDesc =>
      'এই টাইটেলের জন্য তোমার শেষ পছন্দের সবচেয়ে কাছের স্ট্রিমটা বেছে নাও';

  @override
  String get playerLoadingStreams => 'স্ট্রিম খোঁজা হচ্ছে…';

  @override
  String get playerNoStreams => 'এই পর্বে কোনো স্ট্রিম নেই';

  @override
  String get playerNoStreamsTitle => 'কোনো স্ট্রিম পাওয়া যায়নি';

  @override
  String get playerFailed => 'প্লেব্যাক ব্যর্থ';

  @override
  String get playerTorrentNeeded => 'এই স্ট্রিমটা একটা টরেন্ট';

  @override
  String get playerTorrentNeededDesc =>
      'ম্যাগনেট লিংক আর .torrent ফাইল চালাতে টরেন্ট অ্যাড-অন ইনস্টল করো';

  @override
  String get playerOpenAddons => 'অ্যাড-অন খোলো';

  @override
  String get playerTryAnotherStream => 'অন্য স্ট্রিম ট্রাই করো';

  @override
  String get playerEpisodes => 'পর্ব';

  @override
  String get playerLock => 'কন্ট্রোল লক করো';

  @override
  String get playerFullscreen => 'ফুলস্ক্রিন';

  @override
  String get readerChapters => 'অধ্যায়';

  @override
  String get readerSettingsTitle => 'রিডার সেটিংস';

  @override
  String get readerPreviousChapter => 'আগের অধ্যায়';

  @override
  String get readerNextChapter => 'পরের অধ্যায়';

  @override
  String get readerFirstChapter => 'এটা প্রথম অধ্যায়';

  @override
  String get readerLastChapter => 'সব পড়া শেষ';

  @override
  String get readerFailed => 'এই অধ্যায় খোলা গেল না';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'এই অধ্যায়ে কোনো লেখা নেই';

  @override
  String get readerPerTitle => 'শুধু এই টাইটেলের জন্য';

  @override
  String get readerPerTitleDesc =>
      'এই রিডার সেটিংস শুধু এই টাইটেলের জন্য রেখে দাও';

  @override
  String get readerSectionReading => 'পড়া';

  @override
  String get readerSectionControls => 'কন্ট্রোল';

  @override
  String get readerSectionDisplay => 'ডিসপ্লে';

  @override
  String get readerSectionNovel => 'নভেল';

  @override
  String get readerMode => 'পড়ার মোড';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'ডান থেকে বাঁয়ে';

  @override
  String get readerModeLtr => 'বাঁ থেকে ডানে';

  @override
  String get readerModeVertical => 'ভার্টিকাল পাতা';

  @override
  String get readerModeWebtoon => 'ওয়েবটুন';

  @override
  String get readerModeContinuous => 'কন্টিনিউয়াস স্ক্রল';

  @override
  String get readerScale => 'ছবির স্কেল';

  @override
  String get readerScaleFit => 'স্ক্রিনে ফিট';

  @override
  String get readerScaleWidth => 'প্রস্থে ফিট';

  @override
  String get readerScaleHeight => 'উচ্চতায় ফিট';

  @override
  String get readerScaleOriginal => 'আসল সাইজ';

  @override
  String get readerScaleSmart => 'স্মার্ট ফিট';

  @override
  String get readerDoublePage => 'ডাবল পাতা';

  @override
  String get readerDoublePageDesc => 'ল্যান্ডস্কেপে দুটো পাতা পাশাপাশি দেখাও';

  @override
  String get readerDoubleTapZoom => 'ডাবল ট্যাপে জুম';

  @override
  String get readerDoubleTapZoomDesc => 'ডাবল ট্যাপ করে পাতা জুম ইন-আউট করো';

  @override
  String get readerAnimate => 'পাতার অ্যানিমেশন';

  @override
  String get readerAnimateDesc => 'পাতা ওল্টানো অ্যানিমেট করো';

  @override
  String get readerSidePadding => 'পাশের প্যাডিং';

  @override
  String get readerSidePaddingDesc => 'পাতার পাশের ফাঁকা জায়গা শতাংশে';

  @override
  String get readerPageGap => 'পাতার ফাঁক';

  @override
  String get readerPageGapDesc => 'পাতার মাঝের ফাঁকা জায়গা';

  @override
  String get readerAutoNext => 'পরের অধ্যায়ে চলে যাও';

  @override
  String get readerAutoNextDesc =>
      'এই অধ্যায়ের শেষ পড়ার সময় পরের অধ্যায় লোড করে রাখো';

  @override
  String get readerPreload => 'পাতা প্রিলোড করো';

  @override
  String get readerPreloadDesc => 'কয়টা পাতা আগে থেকে ডাউনলোড হবে';

  @override
  String get readerTapZones => 'ট্যাপ জোন';

  @override
  String get readerTapDefault => 'ডিফল্ট';

  @override
  String get readerTapLShaped => 'L-আকৃতির';

  @override
  String get readerTapKindle => 'Kindle-এর মতো';

  @override
  String get readerTapEdge => 'শুধু কিনারা';

  @override
  String get readerTapOff => 'বন্ধ';

  @override
  String get readerInvertTaps => 'ট্যাপ জোন উল্টে দাও';

  @override
  String get readerInvertTapsDesc => 'আগের আর পরের এলাকা বদলাবদলি করো';

  @override
  String get readerBackground => 'ব্যাকগ্রাউন্ড';

  @override
  String get readerBackgroundBlack => 'কালো';

  @override
  String get readerBackgroundGray => 'ধূসর';

  @override
  String get readerBackgroundWhite => 'সাদা';

  @override
  String get readerBackgroundTheme => 'অ্যাপ থিম';

  @override
  String get readerFilter => 'কালার ফিল্টার';

  @override
  String get readerFilterNone => 'কিছু না';

  @override
  String get readerFilterGrayscale => 'গ্রেস্কেল';

  @override
  String get readerFilterInvert => 'ইনভার্ট';

  @override
  String get readerFilterSepia => 'সেপিয়া';

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
  String get readerDimDesc => 'পাতা অন্ধকার করো';

  @override
  String get readerPageNumber => 'পাতার নম্বর';

  @override
  String get readerPageNumberDesc => 'পড়ার সময় পাতার নম্বর দেখাও';

  @override
  String get readerFullscreen => 'ফুলস্ক্রিন';

  @override
  String get readerFullscreenDesc => 'সিস্টেম বার লুকাও';

  @override
  String get readerCropBorders => 'কিনারা ছাঁটো';

  @override
  String get readerCropBordersDesc =>
      'পাতা থেকে ফাঁকা সাদা বা কালো মার্জিন ছেঁটে ফেলো';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ভলিউম কী দিয়ে পাতা ওল্টাও';

  @override
  String get readerVolumeKeysDesc => 'ভলিউম ডাউনে সামনে, ভলিউম আপে পেছনে যায়';

  @override
  String get readerBookmarks => 'বুকমার্ক';

  @override
  String get readerBookmarkAdd => 'বুকমার্ক যোগ করো';

  @override
  String get readerBookmarkRemove => 'বুকমার্ক সরাও';

  @override
  String get readerBookmarksEmpty => 'এখনো কোনো বুকমার্ক নেই';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'পাতা $page / $total';
  }

  @override
  String get readerAutoScroll => 'অটো স্ক্রল';

  @override
  String get readerAutoScrollStop => 'অটো স্ক্রল থামাও';

  @override
  String get readerAutoScrollSpeed => 'অটো স্ক্রলের স্পিড';

  @override
  String get readerAutoScrollSpeedDesc =>
      'পাতা কত দ্রুত নিজে নিজে স্ক্রল বা ওল্টাবে';

  @override
  String get readerKeepOn => 'স্ক্রিন চালু রাখো';

  @override
  String get readerKeepOnDesc => 'পড়ার সময় স্ক্রিন বন্ধ হওয়া আটকাও';

  @override
  String get readerOrientation => 'ওরিয়েন্টেশন';

  @override
  String get readerOrientationFree => 'ফ্রি';

  @override
  String get readerOrientationPortrait => 'পোর্ট্রেট';

  @override
  String get readerOrientationLandscape => 'ল্যান্ডস্কেপ';

  @override
  String get readerSaveProgress => 'প্রগ্রেস সেভ করো';

  @override
  String get readerSaveProgressDesc =>
      'তোমার পাতা মনে রাখো আর অধ্যায় পড়া হয়েছে মার্ক করো';

  @override
  String get readerReset => 'রিডার সেটিংস রিসেট করো';

  @override
  String get readerResetDesc => 'ডিফল্টে ফিরে যাও';

  @override
  String get novelSize => 'লেখার সাইজ';

  @override
  String get novelFont => 'ফন্ট';

  @override
  String get novelLineHeight => 'লাইনের উচ্চতা';

  @override
  String get novelParagraph => 'অনুচ্ছেদের ফাঁক';

  @override
  String get novelMargin => 'মার্জিন';

  @override
  String get novelTheme => 'রিডার থিম';

  @override
  String get novelThemeApp => 'অ্যাপ থিম';

  @override
  String get novelThemeLight => 'লাইট';

  @override
  String get novelThemeSepia => 'সেপিয়া';

  @override
  String get novelThemeDark => 'ডার্ক';

  @override
  String get novelThemeBlack => 'কালো';

  @override
  String get novelJustify => 'লেখা জাস্টিফাই করো';

  @override
  String get novelJustifyDesc => 'লেখা দুই কিনারায় সমান করো';

  @override
  String get trackProgressTitle => 'প্রগ্রেস সেভ করবে?';

  @override
  String trackProgressAnime(String name) {
    return 'দেখার সময় তোমার লিস্টে $name ট্র্যাক করবে? লোকাল রাখতে \"শুধু এই ডিভাইসে\" বাছো, কিছু সেভ না করতে \"না\" বাছো।';
  }

  @override
  String trackProgressManga(String name) {
    return 'অধ্যায় শেষ করলে তোমার লিস্টে $name ট্র্যাক করবে? লোকাল রাখতে \"শুধু এই ডিভাইসে\" বাছো, কিছু সেভ না করতে \"না\" বাছো।';
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
  String get trackProgressYes => 'সেভ';

  @override
  String get trackProgressReset =>
      'এই ধরনের জন্য প্রগ্রেস সেভের প্রশ্ন রিসেট হয়েছে, আবার জিজ্ঞেস করবে';

  @override
  String get trackProgressNo => 'না';

  @override
  String get trackProgressOff => 'বন্ধ';

  @override
  String get trackProgressLocal => 'শুধু এই ডিভাইসে';

  @override
  String get trackProgressSettingAnime => 'অ্যানিমের প্রগ্রেস ট্র্যাক করো';

  @override
  String get trackProgressSettingManga =>
      'মাঙ্গা আর নভেলের প্রগ্রেস ট্র্যাক করো';

  @override
  String get trackProgressSettingDesc =>
      'পর্ব খুললে বা অধ্যায় শেষ করলে কী হবে';

  @override
  String get trackProgressAsk => 'জিজ্ঞেস করো';

  @override
  String get trackProgressAlways => 'সবসময়';

  @override
  String get dantotsuImport => 'Dantotsu থেকে ইমপোর্ট করো';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu সেটিংস ব্যাকআপ পড়ো (.ani, বা এনক্রিপ্টেড .sani)';

  @override
  String get dantotsuPick => 'একটা Dantotsu ব্যাকআপ বেছে নাও';

  @override
  String get dantotsuNothing => 'এই ফাইলে ইমপোর্ট করার মতো কিছু নেই';

  @override
  String get dantotsuApply => 'বাছাইগুলো ইমপোর্ট করো';

  @override
  String dantotsuDone(int done, int total) {
    return '$total-এর মধ্যে $doneটি ইমপোর্ট হয়েছে';
  }

  @override
  String get dantotsuGroupAccounts => 'অ্যাকাউন্ট';

  @override
  String get dantotsuGroupAppearance => 'চেহারা';

  @override
  String get dantotsuGroupExtensions => 'এক্সটেনশন';

  @override
  String get dantotsuGroupApp => 'অ্যাপ';

  @override
  String get dantotsuGroupPlayer => 'প্লেয়ার';

  @override
  String get dantotsuAnilist => 'AniList লগইন';

  @override
  String get dantotsuMal => 'MyAnimeList লগইন';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence টোকেন';

  @override
  String get dantotsuTheme => 'থিম';

  @override
  String get dantotsuReposAnime => 'অ্যানিমে এক্সটেনশন রিপোজিটরি';

  @override
  String get dantotsuReposManga => 'মাঙ্গা এক্সটেনশন রিপোজিটরি';

  @override
  String get dantotsuReposNovel => 'নভেল এক্সটেনশন রিপোজিটরি';

  @override
  String get dantotsuUpdates => 'আপডেট চেক';

  @override
  String get dantotsuComments => 'কমেন্ট';

  @override
  String get dantotsuActivity => 'AniList নোটিফিকেশন পোলিং';

  @override
  String get dantotsuDns => 'DNS প্রোভাইডার';

  @override
  String get dantotsuPlayer => 'প্লেয়ারের স্পিড আর সাবটাইটেলের রঙ';

  @override
  String get dantotsuWarning => 'এই ফাইলে লগইন টোকেন আছে। এটা গোপন রাখো।';

  @override
  String get novelIndent => 'অনুচ্ছেদে ইনডেন্ট দাও';

  @override
  String get novelIndentDesc =>
      'প্রতিটা অনুচ্ছেদ প্রথম লাইনে ইনডেন্ট দিয়ে শুরু করো';

  @override
  String get novelLetterSpacing => 'অক্ষরের ফাঁক';

  @override
  String get novelSectionTranslate => 'অনুবাদ';

  @override
  String get sectionExperimental => 'এক্সপেরিমেন্টাল';

  @override
  String get kitsuGraphqlDetail => 'আরও দ্রুত ডিটেইল পেজ (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'টাইটেল, তার ক্যারেক্টার, স্টাফ আর তোমার এন্ট্রি একটা রিকোয়েস্টেই লোড করো';

  @override
  String get togetherTitle => 'একসাথে দেখো';

  @override
  String get togetherIntro =>
      'বন্ধুর পাঠানো রুমের লিংক পেস্ট করো। সাথে সাথে জয়েন হয়ে যাবে আর ওরা দেখা শুরু করলে প্লেয়ার খুলবে।';

  @override
  String get togetherName => 'তোমার নাম';

  @override
  String get togetherConnecting => 'কানেক্ট হচ্ছে…';

  @override
  String get togetherLeave => 'রুম ছাড়ো';

  @override
  String get togetherYou => 'তুমি';

  @override
  String get togetherNoChat => 'এখনো কোনো মেসেজ নেই';

  @override
  String get togetherChatHint => 'মেসেজ';

  @override
  String get togetherCopyInvite => 'ইনভাইট কপি করো';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'সার্ভার আর রুম কপি হয়েছে';

  @override
  String get togetherConnectionLost => 'কানেকশন চলে গেছে';

  @override
  String togetherConnectedTo(String room) {
    return '$room-এ কানেক্ট হয়েছে';
  }

  @override
  String togetherFailed(String error) {
    return 'কানেক্ট করা গেল না: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name জয়েন করেছে';
  }

  @override
  String togetherLeft(String name) {
    return '$name চলে গেছে';
  }

  @override
  String togetherPaused(String name) {
    return '$name পজ করেছে';
  }

  @override
  String togetherResumed(String name) {
    return '$name আবার চালু করেছে';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time-এ লাফ দিয়েছে';
  }

  @override
  String get togetherFollowFailed => 'হোস্টের পর্ব খোলা গেল না। নিজে খুলে নাও।';

  @override
  String get togetherJoinRole => 'রুমে জয়েন করো';

  @override
  String get togetherOpenHost => 'হোস্টের পর্ব খোলো';

  @override
  String get togetherShowChat => 'লাইভ চ্যাট দেখাও';

  @override
  String get togetherWaitingHost => 'হোস্ট পর্ব শুরু করার অপেক্ষায়';

  @override
  String get togetherRoomLink => 'রুমের লিংক';

  @override
  String get togetherBadLink => 'এটা রুমের লিংক না';

  @override
  String get togetherHostClosed => 'হোস্ট রুম বন্ধ করে দিয়েছে';

  @override
  String get togetherNowPlaying => 'এখন চলছে';

  @override
  String togetherWatchingCount(int count) {
    return '$count জন দেখছে';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user পজ করতে চায়';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user আবার চালু করতে চায়';
  }

  @override
  String get togetherChip => 'একসাথে';

  @override
  String get togetherSettingsDesc => 'লিংক দিয়ে বন্ধুর রুমে জয়েন করো';

  @override
  String get novelBilingual => 'অরিজিনাল আর অনুবাদ দুটোই দেখাও';

  @override
  String get novelBilingualDesc =>
      'প্রতিটা অনুচ্ছেদে অরিজিনাল লেখা আর তার নিচে অনুবাদ দেখাবে';

  @override
  String get novelTranslateTo => 'অনুবাদ করো';

  @override
  String get novelTranslateOff => 'বন্ধ';

  @override
  String get novelSectionSpeech => 'টেক্সট টু স্পিচ';

  @override
  String get novelSpeechRate => 'কথার স্পিড';

  @override
  String get novelSpeechPitch => 'কথার পিচ';

  @override
  String get novelSpeak => 'জোরে পড়ে শোনাও';

  @override
  String get novelSpeakStop => 'জোরে পড়া থামাও';

  @override
  String get novelTranslate => 'অধ্যায় অনুবাদ করো';

  @override
  String get novelTranslateShowOriginal => 'অরিজিনাল দেখাও';

  @override
  String novelTranslateFailed(String error) {
    return 'অনুবাদ ব্যর্থ: $error';
  }

  @override
  String get novelSpeechUnavailable => 'এই ডিভাইসে টেক্সট টু স্পিচ নেই';

  @override
  String get novelSpeechVoice => 'ভয়েস';

  @override
  String get novelSpeechVoiceDefault => 'সিস্টেম ডিফল্ট';

  @override
  String get novelSpeakPrevious => 'আগের লাইন';

  @override
  String get novelSpeakNext => 'পরের লাইন';

  @override
  String get novelTapPaging => 'পাতা ওল্টাতে কিনারায় ট্যাপ করো';

  @override
  String get novelTapPagingDesc =>
      'পাতা স্ক্রল করতে ডান বা বাঁ দিকে ট্যাপ করো, মাঝখানে কন্ট্রোল দেখা যায়';

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
    return 'আর $count মিনিট বাকি';
  }

  @override
  String get novelBold => 'বোল্ড লেখা';

  @override
  String get novelBoldDesc => 'আরও মোটা ওজন ব্যবহার করো';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter শেষ হয়েছে';
  }

  @override
  String readerNextUp(String chapter) {
    return 'পরেরটা: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'আগেরটা: $chapter';
  }

  @override
  String get readerNoPages => 'এই অধ্যায়ে কোনো পাতা নেই';

  @override
  String get readerLoadingPages => 'পাতা লোড হচ্ছে…';

  @override
  String get readerSlowPage => 'এই পাতা এখনো লোড হচ্ছে…';

  @override
  String get readerPageFailed => 'এই পাতা লোড করা গেল না';

  @override
  String get playerShowComments => 'কমেন্ট দেখাও';

  @override
  String get playerHideComments => 'কমেন্ট লুকাও';

  @override
  String get playerSubtitles => 'সাবটাইটেল';

  @override
  String get playerSubtitlesOff => 'সাবটাইটেল বন্ধ';

  @override
  String get playerAudio => 'অডিও';

  @override
  String get playerAddSubtitle => 'সাবটাইটেল ফাইল যোগ করো';

  @override
  String get playerAddAudio => 'অডিও ফাইল যোগ করো';

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
  String get playerNoChapters => 'কোনো অধ্যায় নেই';

  @override
  String get playerTimestamp => 'টাইমস্ট্যাম্প';

  @override
  String get playerAutoPlayDelay => 'পরের পর্বের কাউন্টডাউন';

  @override
  String get playerWatchedAt => 'দেখা হিসেবে ধরো';

  @override
  String playerNextIn(int seconds) {
    return 'পরের পর্ব $seconds সেকেন্ডে';
  }

  @override
  String get playerPlayNow => 'এখনই চালাও';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: এই টাইটেলের জন্য অটো স্কিপ হবে';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: এই টাইটেলের জন্য অটো স্কিপ হবে না';
  }

  @override
  String get playerAudioLanguage => 'পছন্দের অডিও ভাষা';

  @override
  String get playerLanguageOrderHint =>
      'কমা দিয়ে ভাষা আলাদা করো। যেটা আগে পাওয়া যাবে সেটাই ব্যবহার হবে।';

  @override
  String get playerPip => 'পিকচার ইন পিকচার';

  @override
  String get playerAutoPip => 'বের হলে পিকচার ইন পিকচার';

  @override
  String get playerAutoPipDesc => 'অ্যাপ ছেড়ে গেলে ছোট উইন্ডোতে চলতে থাকুক';

  @override
  String playerAutoPlaying(String title) {
    return 'এরপর $title চালানো হচ্ছে…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'শেডার ইনস্টল করা গেল না: $error';
  }

  @override
  String playerChapter(int number) {
    return 'অধ্যায় $number';
  }

  @override
  String get playerPerTitle => 'শুধু এই টাইটেলের জন্য';

  @override
  String get playerPerTitleDesc =>
      'এই অপশনগুলো শুধু এই টাইটেলের জন্য রাখো, তোমার ডিফল্ট ছুঁয়ো না';

  @override
  String get playerSwapGestures => 'সোয়াইপের পাশ অদলবদল';

  @override
  String get playerSwapGesturesDesc => 'বাঁয়ে ব্রাইটনেস, ডানে ভলিউম';

  @override
  String get playerOpenBig => 'বড় ভিউতে খুলুন';

  @override
  String get playerOpenBigDesc =>
      'এপিসোড লিস্ট ছাড়া সরাসরি ফুলস্ক্রিনে প্লেয়ার চালু হবে';

  @override
  String get playerPauseOnBlur => 'ফোকাসের বাইরে গেলে পজ';

  @override
  String get playerPauseOnBlurDesc =>
      'নোটিফিকেশন প্যানেলের মতো কিছু অ্যাপ ঢেকে দিলে পজ হবে, ফিরে এলে আবার চলবে';

  @override
  String get playerAudioOutput => 'অডিও আউটপুট';

  @override
  String get fontAppDefault => 'অ্যাপের ফন্ট';

  @override
  String get fontImport => 'ফন্ট ইমপোর্ট করো';

  @override
  String get fontSample => 'দ্রুত বাদামি শেয়াল অলস কুকুরের ওপর দিয়ে লাফ দেয়';

  @override
  String get playerSubtitleDelay => 'সাবটাইটেল ডিলে';

  @override
  String get playerAudioDelay => 'অডিও ডিলে';

  @override
  String get playerDelayReset => 'রিসেট';

  @override
  String get playerOnlineSubtitles => 'অনলাইন সাবটাইটেল';

  @override
  String get playerOnlineSearchHint => 'টাইটেল আর পর্ব';

  @override
  String get playerOnlineNone => 'কোনো সাবটাইটেল পাওয়া যায়নি';

  @override
  String playerOnlineFailed(String error) {
    return 'সাবটাইটেল সার্চ ব্যর্থ: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'এই সাবটাইটেল ডাউনলোড করা গেল না: $error';
  }

  @override
  String get playerOnlineMatch => 'এই ফাইলের সাথে মেলে';

  @override
  String get playerOnlineEpisode => 'পর্বের মিল';

  @override
  String playerOnlineDownloads(int count) {
    return '$countটি ডাউনলোড';
  }

  @override
  String get playerSeekPreview => 'সিক প্রিভিউ';

  @override
  String get playerSeekPreviewDesc =>
      'স্ক্রাব করার সময় সিক বারের ওপরে ছোট ফ্রেম প্রিভিউ দেখাও। এটা কম রেজোলিউশনের দ্বিতীয় একটা ডিকোডার খোলে, তাই স্ট্রিমে বাড়তি ডেটা খরচ হয়।';

  @override
  String get playerSettingsChip => 'সেটিংস';

  @override
  String get playerAudioDevice => 'অডিও ডিভাইস';

  @override
  String get settingsDownloads => 'ডাউনলোড';

  @override
  String get settingsDownloadsDesc => 'অফলাইন পর্ব, কিউ আর অফলাইন মোড';

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
  String get downloadsOpenDesc => 'কিউ আর এই ডিভাইসে সেভ করা সবকিছু দেখো';

  @override
  String get downloadTitle => 'ডাউনলোড';

  @override
  String get downloadAlready => 'আগেই ডাউনলোড হয়েছে বা কিউতে আছে';

  @override
  String get downloadPickStream => 'কোন স্ট্রিম ডাউনলোড করবে?';

  @override
  String get downloadPickSubtitle => 'কোন সাবটাইটেল ডাউনলোড করবে?';

  @override
  String get downloadPickAudio => 'কোন অডিও ট্র্যাক ডাউনলোড করবে?';

  @override
  String get downloadNoAudio => 'বাড়তি অডিও নেই';

  @override
  String get downloadAudio => 'অডিও';

  @override
  String get downloadNoSubtitle => 'সাবটাইটেল নেই';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'এই স্ট্রিম একটা HLS প্লেলিস্ট। ডাউনলোড করতে FFmpeg অ্যাড-অন লাগবে।';

  @override
  String get downloadSourceMissing => 'এই পর্বের সোর্স ইনস্টল করা নেই';

  @override
  String get downloadWaitingConnection => 'কানেকশনের অপেক্ষায়';

  @override
  String get downloadSubtitles => 'সাবটাইটেল';

  @override
  String get downloadDownloaded => 'ডাউনলোড হয়েছে';

  @override
  String get downloadOffline => 'অফলাইন';

  @override
  String get downloadDelete => 'ডাউনলোড মুছে ফেলো';

  @override
  String get downloadCancel => 'বাতিল';

  @override
  String get downloadPause => 'পজ';

  @override
  String get downloadPaused => 'পজ করা';

  @override
  String get downloadResume => 'আবার চালু করো';

  @override
  String get downloadPauseAll => 'সব পজ করো';

  @override
  String get downloadResumeAll => 'সব আবার চালু করো';

  @override
  String get downloadQueuedState => 'কিউতে অপেক্ষা করছে';

  @override
  String get downloadResolving => 'স্ট্রিম আনা হচ্ছে…';

  @override
  String get downloadUsedFallback =>
      'মেলে এমন স্ট্রিম নেই, প্রথমটা নেওয়া হয়েছে';

  @override
  String get downloadTabQueue => 'কিউ';

  @override
  String get downloadTabDone => 'হয়েছে';

  @override
  String get downloadTabFailed => 'ব্যর্থ';

  @override
  String get downloadEmptyQueue => 'কিছুই ডাউনলোড হচ্ছে না';

  @override
  String get downloadEmptyDone => 'এখনো কিছু ডাউনলোড হয়নি';

  @override
  String get downloadEmptyFailed => 'কোনো ব্যর্থ ডাউনলোড নেই';

  @override
  String get downloadNext => 'পরের পর্ব';

  @override
  String downloadNextN(int count) {
    return 'পরের $countটি পর্ব';
  }

  @override
  String downloadUnwatched(int count) {
    return 'না-দেখা সব ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'এই রেঞ্জ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'সব পর্ব ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পর্ব কিউতে',
      one: '১টি পর্ব কিউতে',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ডাউনলোড হয়েছে';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ডাউনলোড ব্যর্থ হয়েছে';
  }

  @override
  String downloadStorage(String size) {
    return 'ডাউনলোডে $size লেগেছে';
  }

  @override
  String get downloadQueueHeader => 'কিউ';

  @override
  String get downloadParallel => 'একসাথে ডাউনলোড';

  @override
  String get downloadParallelDesc =>
      'একটা একটা করে ডাউনলোড চালাও বা কয়েকটা একসাথে';

  @override
  String get downloadOneByOne => 'একটা একটা করে';

  @override
  String get downloadNotifications => 'ডাউনলোড নোটিফিকেশন';

  @override
  String get downloadNotificationsDesc =>
      'সিস্টেম সাপোর্ট করলে লাইভ প্রগ্রেস, নইলে ডাউনলোড শেষ হলে একটা নোট';

  @override
  String get downloadNotifyLive => 'লাইভ';

  @override
  String get downloadNotifyDone => 'শেষ হলে';

  @override
  String get downloadNotifyOff => 'বন্ধ';

  @override
  String get downloadInfoFile => 'প্রতিটা ডাউনলোডের পাশে একটা ইনফো ফাইল লেখো';

  @override
  String get downloadInfoFileDesc =>
      'স্ট্রিম, কোয়ালিটি, সাবটাইটেল আর স্কিপের সময় একটা ছোট .json ফাইলে সেভ করে';

  @override
  String get offlineHeader => 'অফলাইন';

  @override
  String get offlineModeDesc =>
      '\"অটো\" শুধু ইন্টারনেট ছাড়া অ্যাপ চালু হলে অফলাইনে যায়। \"সবসময়\" তুমি না বদলানো পর্যন্ত অফলাইনে থাকে।';

  @override
  String get offlineModeOff => 'বন্ধ';

  @override
  String get offlineModeAlways => 'সবসময়';

  @override
  String get offlineModeOn =>
      'অফলাইন মোড চালু। পরিবর্তনগুলো এখানে সেভ হবে আর অনলাইনে ফিরলে পাঠানো হবে।';

  @override
  String get offlineSaved => 'এই ডিভাইসে সেভ হয়েছে, অনলাইনে এলে সিঙ্ক হবে';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পরিবর্তন সিঙ্ক হয়েছে',
      one: '১টি পরিবর্তন সিঙ্ক হয়েছে',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি পরিবর্তন সিঙ্কের অপেক্ষায়',
      one: '১টি পরিবর্তন সিঙ্কের অপেক্ষায়',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'সিঙ্কের অপেক্ষায় থাকা পরিবর্তন';

  @override
  String get offlinePendingNone => 'কিছুই অপেক্ষায় নেই';

  @override
  String get offlineSyncNow => 'এখনই সিঙ্ক করো';

  @override
  String get offlineDiscard => 'ফেলে দাও';

  @override
  String get downloadNotOffline =>
      'এই পর্ব ডাউনলোড করা নেই, তাই অফলাইনে পাওয়া যাবে না';

  @override
  String get offlineModeChip => 'অফলাইন';

  @override
  String get downloadNextChapter => 'পরের অধ্যায়';

  @override
  String downloadNextChapters(int count) {
    return 'পরের $countটি অধ্যায়';
  }

  @override
  String downloadUnread(int count) {
    return 'না-পড়া সব ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'সব অধ্যায় ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $totalটি পাতা';
  }

  @override
  String downloadPagesCount(int count) {
    return '$countটি পাতা';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg অ্যাড-অন দরকার';

  @override
  String get downloadFfmpegBody =>
      'এই স্ট্রিম একটা HLS প্লেলিস্ট। FFmpeg অ্যাড-অন এর টুকরোগুলো জুড়ে একটা mp4 ফাইল বানায়। এটা ছাড়া টুকরোগুলো একটা পর্বের ফোল্ডারে থাকে আর সেখান থেকেই চলে।';

  @override
  String get downloadFfmpegInstall => 'ইনস্টল';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ইনস্টল হচ্ছে, একটু সময় লাগতে পারে…';

  @override
  String get downloadFinishing => 'টুকরোগুলো জুড়ে একটা ফাইল বানানো হচ্ছে…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $totalটি অংশ';
  }

  @override
  String get downloadTorrentNoFile =>
      'এই টরেন্টে ডাউনলোড করার মতো কোনো ভিডিও ফাইল নেই';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি আইটেম ডাউনলোড হচ্ছে',
      one: '১টি আইটেম ডাউনলোড হচ্ছে',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'দেখা ডাউনলোড মুছে ফেলো';

  @override
  String get downloadAutoDeleteDesc =>
      'তোমার প্রগ্রেস সেই পর্ব বা অধ্যায়ে পৌঁছালে ডাউনলোড সরিয়ে দেয়';

  @override
  String get downloadConnections => 'প্রতি ডাউনলোডে কানেকশন';

  @override
  String get downloadConnectionsDesc =>
      'বড় ফাইল ভেঙে কয়েকটা অংশ একসাথে আনে। কিছু সার্ভার এটা সীমিত করে।';

  @override
  String get downloadPlayChoice => 'যেখান থেকে চালাবে';

  @override
  String get downloadPlayLocalDesc => 'এই ডিভাইসে সেভ করা ফাইল';

  @override
  String get downloadPlayStream => 'অনলাইনে স্ট্রিম করো';

  @override
  String get downloadPlayStreamDesc => 'সোর্স থেকে পর্ব লোড করো';

  @override
  String get offlineFeedTitle => 'এই ডিভাইসে ডাউনলোড করা';

  @override
  String get offlineFeedEmpty =>
      'অনলাইনে থাকতে কিছু ডাউনলোড করো, এখানে দেখা যাবে';

  @override
  String get offlineEnabled => 'অফলাইন মোড চালু';

  @override
  String get offlineDisabled => 'অফলাইন মোড বন্ধ';

  @override
  String get downloadReadChoice => 'যেখান থেকে পড়বে';

  @override
  String get downloadReadLocalDesc => 'এই ডিভাইসে সেভ করা পাতা';

  @override
  String get downloadReadOnline => 'অনলাইনে পড়ো';

  @override
  String get downloadReadOnlineDesc => 'সোর্স থেকে অধ্যায় লোড করো';

  @override
  String downloadDeleteConfirm(String name) {
    return 'এই ডিভাইস থেকে $name মুছবে?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name-এর ডাউনলোড বাতিল করবে? যা আগেই ডাউনলোড হয়েছে তা মুছে যাবে।';
  }

  @override
  String get downloadFfmpegFolder => 'ফোল্ডার হিসেবে রাখো';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'যে $countটি পরিবর্তন কখনো পাঠানো হয়নি তা ফেলে দেবে? এটা ফেরানো যাবে না।',
      one: 'যে পরিবর্তন কখনো পাঠানো হয়নি তা ফেলে দেবে? এটা ফেরানো যাবে না।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi-এর অপেক্ষায়';

  @override
  String get downloadWaitingMetered => 'মিটারড কানেকশনে পজ করা';

  @override
  String get downloadWifiOnly => 'শুধু Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => 'মোবাইল ডেটায় থাকলে ডাউনলোড অপেক্ষা করবে';

  @override
  String get downloadMetered => 'মিটারড কানেকশনে পজ করো';

  @override
  String get downloadMeteredDesc =>
      'তোমার ডিভাইস যে Wi-Fi-কে মিটারড ধরে সেখানেও অপেক্ষা করবে';

  @override
  String get downloadSpeedLimit => 'স্পিড লিমিট';

  @override
  String get downloadSpeedLimitDesc => 'মোট ডাউনলোড স্পিডের সীমা ঠিক করে';

  @override
  String get downloadUnlimited => 'আনলিমিটেড';

  @override
  String get downloadMoveToTop => 'একদম ওপরে নাও';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seedsটি সিড · $peersটি পিয়ার';
  }

  @override
  String get downloadTorrentFile => 'কোন ফাইল?';

  @override
  String get downloadTorrentAuto => 'পর্ব অটো মেলাও';

  @override
  String get downloadTorrentLoading => 'টরেন্ট পড়া হচ্ছে…';

  @override
  String get watchAutoSource => 'পরের সোর্সে অটো চলে যাও';

  @override
  String get watchAutoSourceDesc =>
      'সোর্স টাইটেল খুঁজে না পেলে বা লোড না হলে, পরের ইনস্টল করা সোর্স ট্রাই করো';

  @override
  String get extensionTest => 'এক্সটেনশন টেস্ট করো';

  @override
  String get extensionTestCopy => 'ব্যর্থগুলো আর তাদের লগ কপি করো';

  @override
  String get extensionTestQuery => 'সার্চ শব্দ';

  @override
  String get extensionTestRun => 'চালাও';

  @override
  String get extensionTestStop => 'থামাও';

  @override
  String get extensionTestNone => 'এই ধরনের কোনো ইনস্টল করা এক্সটেনশন নেই';

  @override
  String get extensionTestNotRun => 'এখনো টেস্ট হয়নি';

  @override
  String get extensionTestSearch => 'সার্চ';

  @override
  String get extensionTestDetail => 'বিবরণ';

  @override
  String get extensionTestUnits => 'পর্ব / অধ্যায়';

  @override
  String get extensionTestLinks => 'স্ট্রিম / পাতা';

  @override
  String extensionTestFailedAt(String step) {
    return '$step-এ ব্যর্থ';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total-এর মধ্যে $doneটি টেস্ট হয়েছে · $passedটি পাস · $failedটি ফেল';
  }

  @override
  String get extensionTestCopyLogs => 'পুরো লগসহ সবকিছু কপি করো';

  @override
  String get onboardingFeaturesTitle => 'সবকিছু এক জায়গায়';

  @override
  String get onboardingFeaturesBody =>
      'যা কিছু ট্র্যাক করো, দেখো আর পড়ো, অ্যাপ বদলাবদলি ছাড়াই।';

  @override
  String get onboardingFeatureTrack => 'সবকিছু ট্র্যাক করো';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu আর MangaBaka-তে লিস্ট, প্রগ্রেস আর স্কোর।';

  @override
  String get onboardingFeatureWatch => 'দেখো আর পড়ো';

  @override
  String get onboardingFeatureWatchDesc =>
      'এক্সটেনশন ইনস্টল করে অ্যাপেই অ্যানিমে স্ট্রিম করো বা মাঙ্গা-নভেল পড়ো।';

  @override
  String get onboardingFeatureOffline => 'অফলাইনেও নিয়ে চলো';

  @override
  String get onboardingFeatureOfflineDesc =>
      'পর্ব আর অধ্যায় ডাউনলোড করো, ইন্টারনেট ছাড়াই চালিয়ে যাও।';

  @override
  String get onboardingFeatureSync => 'লিস্ট সিঙ্কে রাখো';

  @override
  String get onboardingFeatureSyncDesc =>
      'সার্ভিসগুলোর মধ্যে লিস্ট মিলিয়ে রাখো, নয়তো যেটা এগিয়ে সেটাই জিতুক।';

  @override
  String get onboardingServices => 'যেগুলোর সাথে কাজ করে';

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
