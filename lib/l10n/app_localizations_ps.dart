// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Pushto Pashto (`ps`).
class AppLocalizationsPs extends AppLocalizations {
  AppLocalizationsPs([String locale = 'ps']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'د انیمې او مانګا د تعقیب لپاره\nنوې غوره اپلیکېشن';

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
  String get loadMore => 'نور پورته کړه';

  @override
  String get login => 'ننوتل';

  @override
  String get continueAsGuest => 'د میلمه په توګه دوام ورکړه';

  @override
  String get getStarted => 'پیل وکړه';

  @override
  String get loginWithToken => 'د ټوکن په مرسته ننوځه';

  @override
  String get pasteTokenHint => 'خپل د لاسرسي ټوکن پیسټ کړه';

  @override
  String loginTo(String service) {
    return 'په $service کې ننوځه';
  }

  @override
  String get settings => 'تنظیمات';

  @override
  String get account => 'حساب';

  @override
  String get about => 'په اړه';

  @override
  String get language => 'ژبه';

  @override
  String get animationSpeed => 'انیمېشنونه';

  @override
  String get animationSpeedDesc =>
      'په ټول اپ کې د لېږد او د ننوتلو اغېزو چټکتیا';

  @override
  String get animationSpeedOff => 'بند';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'اکستنشنونه',
      one: 'اکستنشن',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'نامعلومه سرچینه';

  @override
  String get install => 'نصب کړه';

  @override
  String get update => 'تازه کړه';

  @override
  String get uninstall => 'لرې کړه';

  @override
  String get updateInstallCancelled =>
      'نصب لغوه شو. که اندروید ووې چې اپ له نصب شوې نسخې سره ټکر لري، لاسلیک توپیر لري: لومړی اوسنۍ نسخه حذف کړه، بیا تازه والی نصب کړه';

  @override
  String updateInstallFailed(String error) {
    return 'تازه والی ونه شو: $error';
  }

  @override
  String get appLock => 'د اپ قفل';

  @override
  String get appLockDesc =>
      'کله چې اپ پرانیستل شي یا وروسته له یو وخته بیرته راشي، پن کوډ وغواړه';

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
  String get appLockUnlock => 'خپل پن کوډ ولیکه';

  @override
  String get appLockWrong => 'پن کوډ غلط دی';

  @override
  String appLockWait(String seconds) {
    return 'ډېر هڅې وشوې، $seconds ثانیې انتظار وکړه';
  }

  @override
  String get appLockNew => 'یو پن کوډ وټاکه';

  @override
  String get appLockNewHint => '۴ تر ۸ عددونه';

  @override
  String get appLockConfirm => 'بیا یې ولیکه';

  @override
  String get appLockMismatch => 'پن کوډونه سره نه جوړېږي';

  @override
  String get appLockOn => 'پن کوډ ټاکل شو';

  @override
  String get appLockRemoveTitle => 'د قفل بندولو لپاره خپل پن کوډ ولیکه';

  @override
  String get installFailed => 'نصب ناکام شو';

  @override
  String get updateFailed => 'تازه کېدل ناکام شول';

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
  String get noSourceSettings => 'دې سرچینې هېڅ تنظیمات نلري';

  @override
  String get addPluginRepository => 'د پلګین ذخیره اضافه کړه';

  @override
  String get pluginIndexUrlHint => 'د پلګین د فهرست URL';

  @override
  String get addRepository => 'ذخیره اضافه کړه';

  @override
  String get pluginRepoUpdated => 'د پلګین ذخیره تازه شوه';

  @override
  String get pluginRepoUpdateFailed => 'د پلګین ذخیره تازه کول ناکام شول';

  @override
  String get ok => 'ښه';

  @override
  String get cancel => 'لغوه';

  @override
  String get yes => 'هو';

  @override
  String get no => 'نه';

  @override
  String get save => 'خوندي کړه';

  @override
  String get reset => 'بیا تنظیم';

  @override
  String get clear => 'پاک کړه';

  @override
  String get test => 'ازموینه';

  @override
  String get testing => 'ازموینه روانه ده…';

  @override
  String get resolving => 'حل کېږي…';

  @override
  String get none => 'هېڅ';

  @override
  String get selectMediaService => 'د رسنۍ خدمت وټاکه';

  @override
  String get pickColor => 'یو رنګ وټاکه';

  @override
  String get colorPickerCustom => 'دودیز';

  @override
  String get colorPickerTransparent => 'شفاف';

  @override
  String get ltr => 'له کيڼ څخه ښي ته';

  @override
  String get searchSettings => 'په تنظیماتو کې لټون';

  @override
  String nothingMatches(String query) {
    return 'له \"$query\" سره هېڅ نه برابرېږي';
  }

  @override
  String searchCategory(String category) {
    return 'په $category کې لټون';
  }

  @override
  String get settingsAppearance => 'ښکارېدنه';

  @override
  String get settingsAppearanceDesc => 'تم، رنګونه، شیشه‌یي حالت';

  @override
  String get settingsGeneral => 'عمومي';

  @override
  String get settingsGeneralDesc => 'ژبه او چلند';

  @override
  String get settingsNetwork => 'شبکه';

  @override
  String get settingsNetworkDesc => 'یوزر ایجنټ، سندونه، DNS او پروکسي';

  @override
  String get settingsAccountDesc => 'د تعقیب خدمت او ننوتل';

  @override
  String get settingsUpdates => 'تازه معلومات';

  @override
  String get amoledBlack => 'AMOLED تور';

  @override
  String get amoledBlackDesc => 'په تیاره حالت کې خالص تور سطحې';

  @override
  String get glassMode => 'شیشه‌یي حالت';

  @override
  String get glassModeDesc => 'ستا د کتابتون د انځورونو پر سر یخ شوې سطحې';

  @override
  String get shelfFrame => 'د برخو شاوخوا چوکاټ';

  @override
  String get shelfFrameDesc =>
      'د هر شیلف تر شا یو کارت وښیه، یا قطارونه په مستقیم ډول پر پاڼه پرېږده';

  @override
  String get settingsExtensionsDesc =>
      'د سرچینو مدیران، ذخیرې او د اکستنشن غوراوي';

  @override
  String get settingsAddons => 'اضافي توکي';

  @override
  String get customPath => 'دودیز د ذخیرې لار';

  @override
  String get customPathDesc =>
      'د اپ ډیټا چېرته ساتل کېږي. د بیا تنظیم لپاره اوږد وساته';

  @override
  String get selectDirectory => 'لارښود وټاکه';

  @override
  String get differentCacheManager => 'بدیل د انځور کېش';

  @override
  String get differentCacheManagerDesc =>
      'د انځورونو لپاره بل د کېش مدیر وکاروه';

  @override
  String get backupAndRestore => 'بیک‌اپ او بیا راګرځول';

  @override
  String get backupAndRestoreDesc => 'خپل غوراوي خوندي کړه یا پورته کړه';

  @override
  String get backup => 'بیک‌اپ';

  @override
  String get restore => 'بیا راګرځول';

  @override
  String get loadExtensionsIcon => 'د اکستنشن آیکنونه پورته کړه';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'د اکستنشنونو په لیست کې د سرچینو آیکنونه وښیه';

  @override
  String get sectionStorage => 'ذخیره';

  @override
  String get sectionManagers => 'مدیران';

  @override
  String get sectionOptions => 'غوراوي';

  @override
  String get backupTabBackup => 'بیک‌اپ واخله';

  @override
  String get backupTabRestore => 'بیرته راوګرځوه';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys تنظیمات په $categories کټګوریو کې';
  }

  @override
  String backupLastBackup(Object time) {
    return 'وروستی بیک‌اپ $time';
  }

  @override
  String get backupNever => 'تر اوسه بیک‌اپ نشته';

  @override
  String get backupSelectAll => 'ټول وټاکه';

  @override
  String get backupClearAll => 'پاک کړه';

  @override
  String backupKeys(Object count) {
    return '$count تنظیمات';
  }

  @override
  String get backupPassword => 'پټنوم (اختیاري)';

  @override
  String get backupPasswordHint => 'د ډیفالټ کارولو لپاره یې خالي پرېږده';

  @override
  String get backupSensitive => 'د ننوتلو ټوکنونه لري. دا فایل خوندي وساته';

  @override
  String get backupCreate => 'بیک‌اپ جوړ کړه';

  @override
  String backupSaved(Object name) {
    return 'بیک‌اپ په $name کې خوندي شو';
  }

  @override
  String backupFailed(Object error) {
    return 'بیک‌اپ ناکام شو: $error';
  }

  @override
  String get backupPickFile => 'د بیک‌اپ فایل وټاکه';

  @override
  String get backupPickFileDesc => 'یو .json فایل وټاکه چې Dartotsu جوړ کړی';

  @override
  String get backupChooseAnother => 'بل فایل وټاکه';

  @override
  String get backupCreatedAt => 'جوړ شو';

  @override
  String get backupAppVersion => 'د اپ نسخه';

  @override
  String get backupDevice => 'وسیله';

  @override
  String get backupAccounts => 'حسابونه';

  @override
  String get backupSize => 'اندازه';

  @override
  String get backupEncrypted => 'په پټنوم خوندي';

  @override
  String get backupUnlock => 'پرانیځه';

  @override
  String get backupWrongPassword => 'دا فایل ونه لوستل شو. پټنوم وګوره';

  @override
  String get backupRestoreSelected => 'ټاکل شوي بیرته راوګرځوه';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count تنظیمات بیرته راوګرځوې؟ په دې کټګوریو کې موجودې ارزښتونه به بدل شي.';
  }

  @override
  String get backupRestored =>
      'بیرته راوګرځول شو. د ټولو د پلي کېدو لپاره اپ بیا پیل کړه';

  @override
  String backupRestoreFailed(Object error) {
    return 'بیرته راګرځول ناکام شول: $error';
  }

  @override
  String get backupSelectOne => 'لږ تر لږه یوه کټګوري وټاکه';

  @override
  String get backupCatTheme => 'ښکارېدنه';

  @override
  String get backupCatThemeDesc => 'تم، رنګونه، شیشه، فونټونه او د کارت سټایل';

  @override
  String get backupCatCommon => 'عمومي';

  @override
  String get backupCatCommonDesc => 'ژبه، ذخیره، شبکه او د اکستنشن غوراوي';

  @override
  String get backupCatPlayer => 'پلیر';

  @override
  String get backupCatPlayerDesc => 'د پلیر غوراوي';

  @override
  String get backupCatReader => 'لوستونکی';

  @override
  String get backupCatReaderDesc => 'د لوستونکي غوراوي';

  @override
  String get backupCatProtected => 'حسابونه';

  @override
  String get backupCatProtectedDesc => 'د ننوتلو ټوکنونه او د ننوتلو معلومات';

  @override
  String get backupCatOther => 'خدمتونه او فیډونه';

  @override
  String get backupCatOtherDesc =>
      'د فیډ ترتیبونه، لیستونه او د خدمتونو غوراوي';

  @override
  String get logFile => 'د لاګ فایل';

  @override
  String get logFileDesc => 'د اپ لاګ شریک کړه، یا په لینکس کې یې لار کاپي کړه';

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
  String get logFileCopied => 'د لاګ لار کاپي شوه';

  @override
  String get donateSheetTitle => 'له Dartotsu خوند اخلې؟';

  @override
  String get donateSheetMessage =>
      'Dartotsu یو کس جوړ او ساتي. که ستا په کار راځي، د پراختیا ملاتړ وکړه.';

  @override
  String get donateLater => 'ښايي وروسته';

  @override
  String get glassBackground => 'د شیشې شاليد';

  @override
  String get glassBackgroundDesc =>
      'ستا د پروفایل بینر، که چېرې تا د انځور لینک نه وي ټاکلی';

  @override
  String get glassBackgroundHint =>
      'د انځور لینک (د خپل بینر لپاره یې خالي پرېږده)';

  @override
  String get followCover => 'پوښ تعقیب کړه';

  @override
  String get followCoverDesc =>
      'رنګونه شاليد تعقیبوي، او په جزیاتو پاڼو کې پوښ';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'د کارت سټایل';

  @override
  String get cardStyleDesc => 'د سرلیک ځای، اندازه، پرمختګ او نښې';

  @override
  String get customFont => 'فونټ';

  @override
  String get customFontDesc => 'ډیفالټ، ستا له وسیلې یو فایل، یا Google Fonts';

  @override
  String get customFontError => 'هغه فونټ فایل ونه لوستل شو';

  @override
  String get googleFontError => 'هغه فونټ ډاونلوډ نه شو';

  @override
  String get yourFonts => 'ستا فونټونه';

  @override
  String get addFontFile => 'د فونټ فایل اضافه کړه…';

  @override
  String get browseGoogleFonts => 'Google Fonts وڅاره…';

  @override
  String get searchGoogleFonts => 'په Google Fonts کې لټون';

  @override
  String get defaultFont => 'ډیفالټ';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'د سیستم متحرک رنګ';

  @override
  String get jsonTheme => 'دودیز د تم فایل';

  @override
  String get jsonThemeDesc =>
      'له ~/.config/dartotsu/theme.json څخه ژوندي رنګونه (دودیز سکریپټ، یا ستا خپلې سمونې)';

  @override
  String get themeMode => 'د تم حالت';

  @override
  String get mode => 'حالت';

  @override
  String get trackingService => 'د تعقیب خدمت';

  @override
  String get signOut => 'وتل';

  @override
  String get signIn => 'ننوتل';

  @override
  String get notSignedIn => 'نه یې ننوتی';

  @override
  String signOutOf(String service) {
    return 'له $service څخه وځې؟';
  }

  @override
  String get checkForUpdates => 'د تازه معلوماتو ازموینه';

  @override
  String get checkForUpdatesDesc => 'د GitHub پر نوې خپرونې خبر راکړه';

  @override
  String get updateChannel => 'د تازه معلوماتو چینل';

  @override
  String get channel => 'چینل';

  @override
  String get stable => 'ثابت';

  @override
  String get preRelease => 'مخکې له خپرونې';

  @override
  String get alpha => 'الفا';

  @override
  String get checkNow => 'همدا اوس وګوره';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ډیفالټ';

  @override
  String currentlyUsing(String value) {
    return 'اوس: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ډیفالټ (Cloudflare)';

  @override
  String get proxy => 'پراکسي';

  @override
  String get proxyProtocol => 'ډول';

  @override
  String get proxyHost => 'کوربه';

  @override
  String get proxyPort => 'پورټ';

  @override
  String get proxyUsername => 'کارن‌نوم';

  @override
  String get proxyPassword => 'پټنوم';

  @override
  String get optional => 'اختیاري';

  @override
  String get clearCookies => 'کوکیز پاک کړه';

  @override
  String get clearCookiesDesc => 'ټول خوندي شوي کوکیز لرې کړه';

  @override
  String notImplementedArea(String area) {
    return '$area — ډیر ژر راځي';
  }

  @override
  String notImplementedService(String service) {
    return '$service تر اوسه دا نه ملاتړ کوي.';
  }

  @override
  String get couldNotLoadResults => 'پایلې پورته نه شوې';

  @override
  String get updateCheckFailed => 'د تازه معلوماتو ازموینه ونه شوه';

  @override
  String get highRefreshRate => 'لوړ ریفرېش ریټ';

  @override
  String get highRefreshRateDesc =>
      'د خپل سکرین تر ټولو لوړ ملاتړ شوی ریفرېش ریټ وکاروه';

  @override
  String get imageSave => 'انځور خوندي کړه';

  @override
  String imageSavedTo(String path) {
    return 'په $path کې خوندي شو';
  }

  @override
  String get imageActionFailed => 'انځور ډاونلوډ نه شو';

  @override
  String get imageTitleCover => 'پوښ';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'بینر';

  @override
  String get imageTitleAvatar => 'د پروفایل انځور';

  @override
  String get verifyTls => 'سندونه تایید کړه';

  @override
  String get verifyTlsDesc =>
      'هغه سرورونه رد کړه چې ناسم HTTPS سند لري. یوازې د هغې سرچینې لپاره یې بند کړه چې خپل لاسلیک شوی سند کاروي';

  @override
  String get clearCookiesConfirm =>
      'ټول خوندي شوي کوکیز لرې کړې؟ ښايي ته له ځينو سرچینو څخه ووځې.';

  @override
  String get version => 'نسخه';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'سرچینه، ستونزې او خپرونې';

  @override
  String get discordDesc => 'ټولنه او ملاتړ';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'د پراختیا ملاتړ وکړه';

  @override
  String get contributors => 'ونډه والا';

  @override
  String get contributorsDesc => 'هغه خلک چې Dartotsu یې جوړ کړ';

  @override
  String get contributorsLoadFailed => 'ونډه والا پورته نه شول';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'هغه پروژې چې پر Dartotsu جوړې شوې';

  @override
  String get forksEmpty => 'هېڅ فورک ونه موندل شو';

  @override
  String get sectionColors => 'رنګونه';

  @override
  String get sectionDisplay => 'ښودنه';

  @override
  String get sectionStyle => 'سټایل';

  @override
  String get sectionCommunity => 'ټولنه';

  @override
  String get sectionAppInfo => 'د اپ معلومات';

  @override
  String get sectionRequests => 'غوښتنې';

  @override
  String get sectionDnsProxy => 'DNS او پراکسي';

  @override
  String get onboardingBack => 'شاته';

  @override
  String get onboardingNext => 'بل';

  @override
  String get onboardingSkip => 'پرېږده';

  @override
  String get onboardingPaletteTitle => 'خپل یې کړه';

  @override
  String get onboardingPaletteBody =>
      'یو پیلټ وټاکه. هر تأکید، له کارتونو څخه تر پلیر پورې، تعقیبوي یې.';

  @override
  String get themeModeAuto => 'اتومات';

  @override
  String get themeModeLight => 'روښانه';

  @override
  String get themeModeDark => 'تیاره';

  @override
  String get onboardingSyncTitle => 'خپل کتابتون همغږی کړه';

  @override
  String get onboardingSyncBody =>
      'په AniList کې ننوځه چې خپل لیستونه، پرمختګ او نمرې له ځان سره ولرې. یا یې پرېږده او د میلمه په توګه وګوره.';

  @override
  String get onboardingOpenLinks =>
      'د AniList او ذخیرو لینکونه په Dartotsu کې پرانیزه';

  @override
  String get onboardingPermsTitle => 'اجازې';

  @override
  String get onboardingPermsBody =>
      'اوس یې اجازه ورکړه چې ډاونلوډونه، تازه معلومات او خبرتیاوې بې وقفې کار وکړي. وروسته یې کولای شې د سیستم په تنظیماتو کې بدل کړې.';

  @override
  String get permNotifications => 'خبرتیاوې';

  @override
  String get permNotificationsDesc => 'د ډاونلوډ پرمختګ، نوې برخې او ځوابونه';

  @override
  String get permStorage => 'د ټولو فایلونو لاسرسی';

  @override
  String get permStorageDesc =>
      'ډاونلوډونه د Dartotsu په عامه پوښۍ کې خوندي کړه';

  @override
  String get permInstall => 'تازه معلومات نصب کړه';

  @override
  String get permInstallDesc =>
      'پرېږده چې Dartotsu خپل تازه معلومات پخپله نصب کړي';

  @override
  String get permBattery => 'بې حدودې بیټرۍ';

  @override
  String get permBatteryDesc => 'اوږده ډاونلوډونه په شاليد کې روان وساته';

  @override
  String get permGrant => 'اجازه ورکړه';

  @override
  String get linkOpenInApp => 'لینکونه په Dartotsu کې پرانیزه';

  @override
  String get linkOpenInAppDesc =>
      'پرېږده چې د AniList او ذخیرو لینکونه اپ پرانیزي';

  @override
  String get reviewsTitle => 'بیاکتنې';

  @override
  String get reviewsEmpty => 'تر اوسه بیاکتنه نشته';

  @override
  String get reviewsFailed => 'بیاکتنې پورته نه شوې';

  @override
  String get reviewHelpfulQuestion => 'ایا دا بیاکتنه ګټوره وه؟';

  @override
  String get reviewVoteFailed => 'ستا رایه خوندي نه شوه';

  @override
  String reviewHelpful(int n, int total) {
    return 'له $total څخه $n کسانو دا ګټور وګڼله';
  }

  @override
  String get calendarTitle => 'د خپرېدو مهال ویش';

  @override
  String get calendarToday => 'نن';

  @override
  String get calendarEmpty => 'پدې ورځ هېڅ نه خپرېږي';

  @override
  String get calendarFailed => 'مهال ویش پورته نه شو';

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
    return 'برخه $n';
  }

  @override
  String get shareAnalytics => 'بې‌نومه کارونې معلومات شریک کړه';

  @override
  String get shareAnalyticsDesc =>
      'د کاروونکو بې‌نومه شمېر او د کریش راپورونه. هېڅ حساب یا شخصي معلومات نه';

  @override
  String get linkOpenAnilist => 'د AniList لینکونه په Dartotsu کې پرانیزه';

  @override
  String get linkOpenAnilistDesc =>
      'د لینکونو اداره چالان کړه چې د anilist.co لینکونه اپ پرانیزي';

  @override
  String get linkSettingsFailed => 'د سیستم تنظیمات ونه پرانیستل شول';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'په خپل Discord پروفایل کې وښیه چې ته څه کوې. ستا د Discord ټوکن ته اړتیا ده.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'په خپل Discord پروفایل کې وښیه چې ته څه کوې. د Discord ډیسکټاپ اپ باید روان وي.';

  @override
  String get discordBrowsing => 'د کتنې فعالیت وښیه';

  @override
  String get discordBrowsingDesc =>
      'نه یوازې هغه څه چې ګورې یا لولې یې، بلکې هغه ټب، پاڼه یا پروفایل هم وښیه چې ګورې یې.';

  @override
  String get discordLookHeader => 'د حضور بڼه';

  @override
  String get discordActivityType => 'د فعالیت ډول';

  @override
  String get discordActivityTypeDesc =>
      'Discord یې څنګه لیکي: \"Watching …\" یا \"Playing …\". اتومات د انیمې لپاره Watching او د نورو ټولو لپاره Playing کاروي.';

  @override
  String get discordWatching => 'ګوري';

  @override
  String get discordPlaying => 'لوبوي';

  @override
  String get discordCovers => 'پوښونه وښیه';

  @override
  String get discordCoversDesc => 'په کارت کې د پوښ انځور او د Dartotsu آیکن.';

  @override
  String get discordTimer => 'ټایمر وښیه';

  @override
  String get discordTimerDesc => 'د سرلیک لاندې تېر شوی یا پاتې وخت.';

  @override
  String get discordButtons => 'تڼۍ وښیه';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" او \"Open Dartotsu\" تڼۍ.';

  @override
  String get discordHideTitles => 'سرلیکونه پټ کړه';

  @override
  String get discordHideTitlesDesc =>
      'د انیمې او مانګا نومونه (او د هغوی پوښ او لینک) د \"Something private\" په نوم بدل کړه.';

  @override
  String get discordConnectionHeader => 'اړیکه';

  @override
  String get listSearchHint => 'پدې لیست کې لټون';

  @override
  String get listSort => 'ترتیب';

  @override
  String get listFilter => 'فلټر';

  @override
  String get listRandom => 'ناڅاپي سرلیک';

  @override
  String get listReverse => 'ترتیب بدل کړه';

  @override
  String get listSortDefault => 'د لیست ترتیب';

  @override
  String get listSortScore => 'ستا نمره';

  @override
  String get listSortTitle => 'سرلیک';

  @override
  String get listSortUpdated => 'وروستی تازه';

  @override
  String get listSortProgress => 'پرمختګ';

  @override
  String get listSortReleased => 'د خپرېدو نېټه';

  @override
  String get listSortAverage => 'منځنۍ نمره';

  @override
  String get listFilterFormat => 'بڼه';

  @override
  String get listFilterStatus => 'حالت';

  @override
  String get listFilterGenres => 'ژانرونه';

  @override
  String get listFilterClear => 'فلټرونه پاک کړه';

  @override
  String get listNoMatches => 'پدې لیست کې هېڅ نه برابرېږي';

  @override
  String get discordLogin => 'په Discord کې ننوځه';

  @override
  String get discordToken => 'د Discord ټوکن';

  @override
  String get discordTokenSaved =>
      'خوندي دی. د بدلولو لپاره ټچ کړه، د لرې کولو لپاره اوږد وساته.';

  @override
  String get discordTokenNotSet => 'نه دی ټاکل شوی. د اضافه کولو لپاره ټچ کړه.';

  @override
  String get discordTokenSavedSnack => 'د Discord ټوکن خوندي شو';

  @override
  String get discordTokenRemovedSnack => 'د Discord ټوکن لرې شو';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'روښانه · د بڼې د بدلولو لپاره ټچ کړه';

  @override
  String get discordRichPresenceRowOff =>
      'په خپل Discord پروفایل کې وښیه چې ته څه کوې';

  @override
  String get loginCancelled => 'ننوتل لغوه شو';

  @override
  String get invalidToken => 'ناسم ټوکن';

  @override
  String loginFailed(String error) {
    return 'ننوتل ناکام شو: $error';
  }

  @override
  String get malLoginFailed => 'د MyAnimeList ننوتل ناکام شو';

  @override
  String get kitsuLoginFailed =>
      'د Kitsu ننوتل ناکام شو. خپل بریښنالیک او پټنوم وګوره.';

  @override
  String get kitsuLoginTitle => 'په Kitsu کې ننوځه';

  @override
  String get emailOrUsername => 'بریښنالیک یا کارن‌نوم';

  @override
  String get password => 'پټنوم';

  @override
  String get kitsuProfile => 'د Kitsu پروفایل';

  @override
  String get mangaBakaLoginFailed => 'د MangaBaka ننوتل ناکام شو';

  @override
  String get mangaBakaProfile => 'د MangaBaka پروفایل';

  @override
  String get refreshFromMangaBaka => 'له MangaBaka څخه تازه کړه';

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
  String get artistsLabel => 'هنرمندان';

  @override
  String get authorsLabel => 'لیکوالان';

  @override
  String get publishersLabel => 'خپروونکي';

  @override
  String get licensedLabel => 'جواز لرونکی';

  @override
  String get contentRatingLabel => 'د منځپانګې درجه';

  @override
  String get yesLabel => 'هو';

  @override
  String get noLabel => 'نه';

  @override
  String get ratingSteps => 'د درجې ګامونه';

  @override
  String get hideNsfw => 'NSFW پټ کړه';

  @override
  String get hideNsfwDesc =>
      'بالغ سرلیکونه له فیډونو او لټون څخه لرې وساته، او خپل بالغ ننوتنې د پټ میډیا لاندې وښیه.';

  @override
  String get kitsuAccountOptions => 'د Kitsu د حساب غوراوي';

  @override
  String get mangaBakaAccountOptions => 'د MangaBaka د حساب اختیارونه';

  @override
  String get couldNotUpdateKitsuSettings => 'ستا د Kitsu تنظیمات تازه نه شول';

  @override
  String get titleCanonical => 'کانونیکل';

  @override
  String get titleRomanized => 'رومانیزه شوی';

  @override
  String get titleLocalized => 'ځایي شوی';

  @override
  String get ratingSystem => 'د درجه‌بندۍ سیستم';

  @override
  String get ratingSimple => 'ساده (۳ مخونه)';

  @override
  String get ratingRegular => 'عادي (۵ ستوري)';

  @override
  String get ratingAdvanced => 'پرمخته (۱۰ نمرې)';

  @override
  String get contentFilter => 'د منځپانګې فلټر';

  @override
  String get contentSfw => 'یوازې د کار لپاره خوندي';

  @override
  String get contentSometimes => 'په لټونونو کې بالغ منځپانګه';

  @override
  String get contentEverywhere => 'هر ځای بالغ منځپانګه';

  @override
  String get shareToGlobal => 'نړیوال فیډ ته شریک کړه';

  @override
  String get shareToGlobalDesc =>
      'پرېږده چې ستا فعالیت د Kitsu په نړیوال فیډ کې ښکاره شي.';

  @override
  String get memberSince => 'غړی له';

  @override
  String get location => 'ځای';

  @override
  String get accountType => 'د حساب ډول';

  @override
  String get accountSupporter => 'ملاتړی';

  @override
  String get accountFree => 'وړیا';

  @override
  String get accountDetails => 'د حساب جزیات';

  @override
  String get refreshFromKitsu => 'له Kitsu څخه تازه کړه';

  @override
  String get simklReadOnly => 'Simkl یوازې د لوستلو لاسرسی ورکړ';

  @override
  String get incognitoEditsBlocked => 'پټ حالت: د لیست سمونې بندې دي';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'پټ حالت: پرمختګ خوندي نه شو';

  @override
  String progressSet(int progress) {
    return 'پرمختګ $progress ته وټاکل شو';
  }

  @override
  String removedFromList(String title) {
    return '$title ستا له لیست څخه لرې شو';
  }

  @override
  String get following => 'تعقیبوې';

  @override
  String get homeSections => 'د کور برخې';

  @override
  String get homeSectionsHint =>
      'د ترتیب بدلولو لپاره یې راکش کړه. پټې برخې هیڅکله نه راځي.';

  @override
  String get customListDeleteFailed => 'دودیز لیست ړنګول ناکام شول';

  @override
  String get customListsSaveFailed => 'دودیز لیستونه خوندي کول ناکام شول';

  @override
  String get customListsSaved => 'دودیز لیستونه خوندي شول';

  @override
  String get listName => 'د لیست نوم';

  @override
  String get addList => 'لیست اضافه کړه';

  @override
  String voiceActorsIn(String name) {
    return 'غږیز لوبغاړي · $name';
  }

  @override
  String get animeAppearances => 'په انیمې کې ښکاره کېدنه';

  @override
  String get mangaAppearances => 'په مانګا کې ښکاره کېدنه';

  @override
  String get voicedCharacters => 'غږ ورکړل شوي کرکټرونه';

  @override
  String get animeCredits => 'د انیمې کریډیټونه';

  @override
  String get mangaCredits => 'د مانګا کریډیټونه';

  @override
  String get mainProductions => 'اصلي تولیدات';

  @override
  String get otherWorks => 'نور کارونه';

  @override
  String get prequelSequel => 'پریکوېل او سیکوېل';

  @override
  String get previousSeason => 'تېر فصل';

  @override
  String get thisSeason => 'دا فصل';

  @override
  String get nextSeason => 'بل فصل';

  @override
  String get voiceRoles => 'غږیز رولونه';

  @override
  String get staffPositions => 'د عملې پوستونه';

  @override
  String get mangaWorks => 'د مانګا کارونه';

  @override
  String get malProfile => 'د MyAnimeList پروفایل';

  @override
  String get refreshFromMal => 'له MyAnimeList څخه تازه کړه';

  @override
  String get repullProfileCounts => 'خپل پروفایل او شمېرې بیا راوله';

  @override
  String get refreshed => 'تازه شو';

  @override
  String get simklProfile => 'د Simkl پروفایل';

  @override
  String get refreshFromSimkl => 'له Simkl څخه تازه کړه';

  @override
  String get repullProfileLibrary => 'خپل پروفایل او کتابتون بیا راوله';

  @override
  String get simklSignInToSearch => 'د لټون لپاره په Simkl کې ننوځه';

  @override
  String get dropRate => 'د پرېښودلو کچه';

  @override
  String get simklAttribution =>
      'معلومات او هنري کارونه د Simkl له خوا. په Simkl کې وګوره';

  @override
  String get onHold => 'په انتظار کې';

  @override
  String get scoredBy => 'نمره یې ورکړې';

  @override
  String get planToWatch => 'د کتلو پلان';

  @override
  String get planToRead => 'د لوستلو پلان';

  @override
  String get timesRewatched => 'څو ځلې بیا کتل شوي';

  @override
  String get timesReread => 'څو ځلې بیا لوستل شوي';

  @override
  String get comments => 'نظرونه';

  @override
  String get moviesAndSeries => 'فلمونه او سریالونه';

  @override
  String get trackingOnly => 'یوازې تعقیب';

  @override
  String get signedIn => 'ننوتی';

  @override
  String get searchLanguage => 'د لټون ژبه';

  @override
  String get savedToList => 'ستا په لیست کې خوندي شو';

  @override
  String get removedFromYourList => 'ستا له لیست څخه لرې شو';

  @override
  String get retry => 'بیا هڅه';

  @override
  String get synopsis => 'لنډیز';

  @override
  String get details => 'جزیات';

  @override
  String get addToList => 'لیست ته اضافه کړه';

  @override
  String get trailer => 'تریلر';

  @override
  String get titleCopied => 'سرلیک کاپي شو';

  @override
  String get linkCopied => 'لینک کاپي شو';

  @override
  String get watchTrailer => 'تریلر وګوره';

  @override
  String get copyTitle => 'سرلیک کاپي کړه';

  @override
  String get copyLink => 'لینک کاپي کړه';

  @override
  String get openInBrowser => 'په براوزر کې پرانیزه';

  @override
  String viewOnSource(String source) {
    return 'په $source کې وګوره';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'برخه $ep په $time کې خپرېږي';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'بله برخه په $time کې';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '$chapter څپرکی شاوخوا $time کې راځي';
  }

  @override
  String get logPathCopied => 'د لاګ فایل لار کلیپ‌بورډ ته کاپي شوه';

  @override
  String get animeSource => 'د انیمې سرچینه';

  @override
  String get mangaSource => 'د مانګا سرچینه';

  @override
  String get popular => 'مشهور';

  @override
  String get latest => 'وروستی';

  @override
  String get saved => 'خوندي';

  @override
  String get nothingMatched => 'هېڅ نه برابر شو';

  @override
  String get nothingSavedFromSource =>
      'تر اوسه له دې سرچینې څخه هېڅ خوندي نه دي';

  @override
  String get sourceReturnedNothing => 'دې سرچینې هېڅ نه راستون کړل';

  @override
  String get checkConnectionOrSource =>
      'خپله اړیکه وګوره یا بله سرچینه هڅه کړه.';

  @override
  String get tryDifferentSearch => 'بل د لټون کلمه هڅه کړه.';

  @override
  String get savedTitlesAppearHere =>
      'هغه سرلیکونه چې ته یې لیست ته اضافه کوې دلته ښکاري.';

  @override
  String get tryOtherFeed => 'بل فیډ هڅه کړه یا لټون وکړه.';

  @override
  String searchSource(String source) {
    return 'په $source کې لټون';
  }

  @override
  String get animeExtensions => 'د انیمې اکستنشنونه';

  @override
  String get mangaExtensions => 'د مانګا اکستنشنونه';

  @override
  String get nothingHereYet => 'تر اوسه دلته هېڅ نشته';

  @override
  String get savedOnDeviceUntilLogin =>
      'لاندې هر څه پدې وسیله کې خوندي دي تر څو چې ته یې نه کړې.';

  @override
  String get yourProfile => 'ستا پروفایل';

  @override
  String get activity => 'فعالیت';

  @override
  String get extensions => 'اکستنشنونه';

  @override
  String get logOut => 'وتل';

  @override
  String get logIn => 'ننوتل';

  @override
  String get logOutConfirm => 'ایا ډاډه یې چې وځې؟';

  @override
  String get incognitoMode => 'پټ حالت';

  @override
  String get alsoBlockListEdits => 'د لیست سمونې هم بندې کړه';

  @override
  String get offlineMode => 'آفلاین حالت';

  @override
  String get switchService => 'خدمت بدل کړه';

  @override
  String logOutOf(String name) {
    return 'له $name څخه وځه';
  }

  @override
  String get loggedIn => 'ننوتی';

  @override
  String get notifications => 'خبرتیاوې';

  @override
  String get nothingNew => 'هېڅ نوی نشته';

  @override
  String get thisWeek => 'دا اونۍ';

  @override
  String get listOnly => 'یوازې لیست';

  @override
  String get filter => 'فلټر';

  @override
  String get searchResults => 'د لټون پایلې';

  @override
  String get recentSearches => 'وروستي لټونونه';

  @override
  String get searchOrSetFilter => 'لټون وکړه یا فلټر وټاکه';

  @override
  String get filters => 'فلټرونه';

  @override
  String get showLess => 'لږ وښیه';

  @override
  String get showAll => 'ټول وښیه';

  @override
  String get apply => 'پلي کړه';

  @override
  String get preview => 'مخکتنه';

  @override
  String get preset => 'پریسیټ';

  @override
  String get cardNormal => 'عادي';

  @override
  String get cardOnCard => 'پر کارت باندې';

  @override
  String get cardInCard => 'د کارت دننه';

  @override
  String get size => 'اندازه';

  @override
  String get cardWidth => 'د کارت پلنوالی';

  @override
  String get compact => 'فشرده';

  @override
  String get coverAndTitleOnly => 'یوازې پوښ او سرلیک';

  @override
  String get titleLines => 'د سرلیک کرښې';

  @override
  String get shape => 'بڼه';

  @override
  String get posterShape => 'د پوسټر بڼه';

  @override
  String get cornerRadius => 'د کونج ګردوالی';

  @override
  String get off => 'بند';

  @override
  String get topLeft => 'پورته کيڼ';

  @override
  String get topRight => 'پورته ښي';

  @override
  String get bottomLeft => 'ښکته کيڼ';

  @override
  String get bottomRight => 'ښکته ښي';

  @override
  String get overlays => 'پوښونه';

  @override
  String get progressCount => 'پرمختګ / شمېر';

  @override
  String get pill => 'ګولۍ';

  @override
  String get bar => 'پټۍ';

  @override
  String get outside => 'بهر';

  @override
  String get scoreBadge => 'د نمرې نښه';

  @override
  String get airingDot => 'د خپرېدو نقطه';

  @override
  String get updateAvailable => 'تازه معلومات شته';

  @override
  String get notInstalled => 'نصب شوی نه دی';

  @override
  String get done => 'ترسره شو';

  @override
  String get searchOrEnterUrl => 'لټون وکړه یا URL ولیکه';

  @override
  String get refresh => 'تازه کړه';

  @override
  String get share => 'شریک کړه';

  @override
  String get characters => 'کرکټرونه';

  @override
  String get staff => 'عمله';

  @override
  String get readMore => 'نور ولوله';

  @override
  String get couldNotLoadList => 'لیست پورته نه شو';

  @override
  String get logInToFavourite => 'د خوښیو اضافه کولو لپاره ننوځه';

  @override
  String get alsoKnownAs => 'بل نوم';

  @override
  String get hideSpoilerNames => 'د سپوئلر نومونه پټ کړه';

  @override
  String get showSpoilerNames => 'د سپوئلر نومونه وښیه';

  @override
  String get favourited => 'خوښې ته اضافه شو';

  @override
  String get favourite => 'خوښ';

  @override
  String get couldNotOpenTitle => 'دا سرلیک ونه پرانیستل شو';

  @override
  String get nobodyHereYet => 'تر اوسه دلته هېڅوک نشته';

  @override
  String get noMatches => 'هېڅ برابري نشته';

  @override
  String get gridView => 'د جال لید';

  @override
  String get fullWidth => 'بشپړ پلنوالی';

  @override
  String get userNotFound => 'کارن ونه موندل شو';

  @override
  String get couldNotUpdateFollow => 'تعقیب تازه نه شو';

  @override
  String followedUser(String name) {
    return '$name دې تعقیب کړ';
  }

  @override
  String unfollowedUser(String name) {
    return '$name دې نور نه تعقیبوې';
  }

  @override
  String get messages => 'پیغامونه';

  @override
  String get logInToSeeMessages => 'د خپلو پیغامونو لیدلو لپاره ننوځه';

  @override
  String get editActivity => 'فعالیت سم کړه';

  @override
  String get newActivity => 'نوی فعالیت';

  @override
  String get editMessage => 'پیغام سم کړه';

  @override
  String get writeMessage => 'یو پیغام ولیکه';

  @override
  String get editReply => 'ځواب سم کړه';

  @override
  String get posted => 'پوسټ شو';

  @override
  String get couldNotPost => 'پوسټ نه شو';

  @override
  String get nothingToPreview => 'د مخکتنې لپاره هېڅ نشته';

  @override
  String get writeSomethingHint => 'څه ولیکه… دلته د AniList مارک‌ډاون کار کوي';

  @override
  String get privateMessage => 'شخصي پیغام';

  @override
  String get post => 'پوسټ';

  @override
  String get nothingHere => 'دلته هېڅ نشته';

  @override
  String get noAnimeProgress => 'د انیمې پرمختګ نشته';

  @override
  String get noMangaProgress => 'د مانګا پرمختګ نشته';

  @override
  String get noMessages => 'پیغام نشته';

  @override
  String get writeMessageHint => 'یو پیغام ولیکه…';

  @override
  String get shareSomethingHint => 'یو څه شریک کړه…';

  @override
  String get all => 'ټول';

  @override
  String get anime => 'انیمې';

  @override
  String get manga => 'مانګا';

  @override
  String get count => 'شمېر';

  @override
  String get hoursWatched => 'کتل شوي ساعتونه';

  @override
  String get chaptersRead => 'لوستل شوي فصلونه';

  @override
  String get meanScore => 'منځنۍ نمره';

  @override
  String get noStatsYet => 'تر اوسه احصایې نشته';

  @override
  String get totalEntries => 'ټولې ننوتنې';

  @override
  String get episodesWatched => 'کتل شوې برخې';

  @override
  String get daysWatched => 'د کتلو ورځې';

  @override
  String get volumesRead => 'لوستل شوې ټوکرونه';

  @override
  String get standardDeviation => 'معیاري انحراف';

  @override
  String get showMore => 'نور وښیه';

  @override
  String get followsYou => 'تا تعقیبوي';

  @override
  String get nobodyYet => 'تر اوسه هېڅوک نشته';

  @override
  String get logInToLike => 'د خوښولو لپاره ننوځه';

  @override
  String get failedToLikeActivity => 'فعالیت خوښ نه شو';

  @override
  String get deleteActivityConfirm => 'فعالیت ړنګ کړې؟';

  @override
  String get deletedActivity => 'فعالیت ړنګ شو';

  @override
  String get failedToDeleteActivity => 'فعالیت ړنګ نه شو';

  @override
  String get subscribed => 'ګډون شو';

  @override
  String get unsubscribed => 'ګډون لغوه شو';

  @override
  String get failedToUpdateSubscription => 'ګډون تازه نه شو';

  @override
  String get edit => 'سمول';

  @override
  String get delete => 'ړنګول';

  @override
  String get likedBy => 'خوښ کړی دی';

  @override
  String get follow => 'تعقیب کړه';

  @override
  String get nameCopied => 'نوم کاپي شو';

  @override
  String get followsEachOther => 'یو بل تعقیبوئ';

  @override
  String get unfollow => 'تعقیب مه کوه';

  @override
  String get userIdCopied => 'د کارن ID کاپي شو';

  @override
  String get shareProfile => 'پروفایل شریک کړه';

  @override
  String get copyUserId => 'د کارن ID کاپي کړه';

  @override
  String get failedToDelete => 'ړنګول ناکام شو';

  @override
  String get failedToLike => 'خوښول ناکام شو';

  @override
  String get replies => 'ځوابونه';

  @override
  String get reply => 'ځواب ورکړه';

  @override
  String get noRepliesYet => 'تر اوسه ځوابونه نشته';

  @override
  String get favouriteAnime => 'خوښ انیمې';

  @override
  String get favouriteManga => 'خوښه مانګا';

  @override
  String get favouriteCharacters => 'خوښ کرکټرونه';

  @override
  String get favouriteStaff => 'خوښه عمله';

  @override
  String get favouriteStudios => 'خوښ سټوډیوګانې';

  @override
  String get noFavouritesYet => 'تر اوسه خوښې نشته';

  @override
  String get yourStory => 'ستا کیسه';

  @override
  String get copiedToClipboard => 'کلیپ‌بورډ ته کاپي شو';

  @override
  String get justNow => 'همدا اوس';

  @override
  String get openImage => 'انځور پرانیزه';

  @override
  String get hideSpoiler => 'سپوئلر پټ کړه';

  @override
  String get showSpoiler => 'سپوئلر وښیه';

  @override
  String get status => 'حالت';

  @override
  String get score => 'نمره';

  @override
  String get started => 'پیل شوی';

  @override
  String get completed => 'بشپړ شوی';

  @override
  String get private => 'شخصي';

  @override
  String get hideFromStatusLists => 'له حالت لیستونو څخه یې پټ کړه';

  @override
  String get totalRepeats => 'ټول تکرارونه';

  @override
  String get other => 'نور';

  @override
  String get customLists => 'دودیز لیستونه';

  @override
  String get activeDays => 'فعالې ورځې';

  @override
  String get longestStreak => 'تر ټولو اوږد لړۍ';

  @override
  String get currentStreak => 'اوسنۍ لړۍ';

  @override
  String get tapOrHoverDay => 'یوه ورځ ټچ کړه یا پرې ماوس وساته';

  @override
  String get less => 'لږ';

  @override
  String get more => 'ډیر';

  @override
  String epIn(int ep, String time) {
    return 'برخه $ep په $time کې';
  }

  @override
  String get sectionLoading => 'پورته کېږي';

  @override
  String get querySize => 'د پوښتنې اندازه';

  @override
  String get querySizeDesc =>
      'یوه لویه پوښتنه ټولې کرښې (او بشپړ پروفایل) په یوه غوښتنه کې راوړي. ویشل شوې پوښتنې د هرې کرښې یا د پروفایل د برخې لپاره کوچنۍ غوښتنه لیږي: هره یوه چټکه ده او برخې د رسېدو سره سم ښکاري.';

  @override
  String get oneBig => 'یوه لویه';

  @override
  String get split => 'ویشل شوې';

  @override
  String get sectionSocial => 'ټولنیز';

  @override
  String get systemNotifications => 'د سیستم خبرتیاوې';

  @override
  String get feedLayout => 'د فیډ ترتیب';

  @override
  String sectionsShown(int shown, int total) {
    return 'له $total څخه $shown ښودل شوي — د ټاکلو او ترتیب بدلولو لپاره ټچ کړه';
  }

  @override
  String labelSections(String label) {
    return '$label برخې';
  }

  @override
  String get accountOptions => 'د حساب غوراوي';

  @override
  String get anilistAccountOptions => 'د AniList د حساب غوراوي';

  @override
  String get sectionPrivacy => 'محرمیت';

  @override
  String get hidePrivateEntries => 'شخصي ننوتنې پټ کړه';

  @override
  String get hidePrivateEntriesDesc =>
      'هغه ننوتنې چې په AniList کې شخصي نښه شوې له فیډ څخه لرې وساته';

  @override
  String get anilistExcludeList => 'خپل لیست مه ښيه';

  @override
  String get anilistExcludeListDesc =>
      'هغه سرلیکونه چې مخکې ستا په AniList کې دي د انیمې او مانګا له پاڼو لرې کړه';

  @override
  String get anilistProfile => 'د AniList پروفایل';

  @override
  String get refreshFromAnilist => 'له AniList څخه تازه کړه';

  @override
  String get couldNotUpdateAnilistSettings => 'د AniList تنظیمات تازه نه شول';

  @override
  String get sectionNames => 'نومونه';

  @override
  String get titleLanguage => 'د سرلیک ژبه';

  @override
  String get titleLanguageDesc =>
      'سرلیکونه په هر ځای کې څنګه لیکل کېږي، لکه Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'د عملې او کرکټرونو نومونه';

  @override
  String get sectionLists => 'لیستونه';

  @override
  String get scoreFormat => 'د نمرې بڼه';

  @override
  String get sortListsBy => 'لیستونه د دې له مخې ترتیب کړه';

  @override
  String labelCustomLists(String label) {
    return 'دودیز $label لیستونه';
  }

  @override
  String customListsCount(int count) {
    return '$count لیستونه — د اضافه کولو یا لرې کولو لپاره ټچ کړه';
  }

  @override
  String get mergeActivities => 'فعالیتونه یو ځای کړه';

  @override
  String minutesCount(int count) {
    return '$count دقیقې';
  }

  @override
  String get timezone => 'د وخت سیمه';

  @override
  String get notSet => 'نه دی ټاکل شوی';

  @override
  String get airingNotifications => 'د خپرېدو خبرتیاوې';

  @override
  String get airingNotificationsDesc =>
      'کله چې د تعقیب شوي شو یوه برخه خپره شي خبر شه';

  @override
  String get displayAdultContent => 'بالغ منځپانګه وښیه';

  @override
  String get displayAdultContentDesc =>
      'په لټون، کتنه او فیډونو کې ۱۸+ سرلیکونه شامل کړه';

  @override
  String get restrictMessages => 'پیغامونه یوازې تعقیب شوو ته محدود کړه';

  @override
  String get restrictMessagesDesc =>
      'یوازې هغه خلک چې ته یې تعقیبوې کولای شي پیغام درکړي';

  @override
  String get sectionServices => 'خدمتونه';

  @override
  String get novel => 'ناول';

  @override
  String labelService(String label) {
    return 'د $label خدمت';
  }

  @override
  String nameSettings(String name) {
    return 'د $name تنظیمات';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'د $name د اکستنشن پل غوراوي';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name پیل نه شو: $error';
  }

  @override
  String get importLists => 'لیستونه واردول';

  @override
  String get importListsDesc =>
      'د Aniyomi، Mihon / Tachiyomi یا Kotatsu له بیک‌اپونو څخه';

  @override
  String get exportLists => 'لیستونه صادرول';

  @override
  String get exportListsDesc => 'د Aniyomi، Mihon یا Kotatsu بیک‌اپ ته';

  @override
  String get sectionBrowse => 'کتنه';

  @override
  String get readingTab => 'د لوستلو ټب';

  @override
  String get readingTabDesc => 'دریم ټب کوم اکستنشنونه ښیي';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'ډیفالټ فیډ';

  @override
  String get defaultFeedDesc => 'یوه سرچینه له کوم لیست سره پرانیستل کېږي';

  @override
  String noServiceSupports(String type) {
    return 'هېڅ خدمت $type نه ملاتړ کوي';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · له $installed څخه $loaded سرچینې پورته کېږي';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'دلته هېڅ د اکستنشن خدمت $type نه ملاتړ کوي.';
  }

  @override
  String get loadDataFrom => 'معلومات له دې څخه پورته کړه';

  @override
  String noInstalledSourcesYet(String type) {
    return 'تر اوسه نصب شوې $type سرچینې نشته.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'د $name اکستنشن نصب شوی نه دی';
  }

  @override
  String get thisSource => 'دا سرچینه';

  @override
  String failedToAddRepository(String error) {
    return 'ذخیره اضافه کول ناکام شول: $error';
  }

  @override
  String installedType(String type) {
    return 'نصب شوي $type';
  }

  @override
  String availableType(String type) {
    return 'شته $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'نصب شوي $type اکستنشنونه نشته';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'شته $type اکستنشنونه نشته';
  }

  @override
  String get nothingToShowYet => 'تر اوسه د ښودلو لپاره هېڅ نشته';

  @override
  String get addTitlesHint =>
      'خپل لیست ته څو سرلیکونه اضافه کړه او دلته به ښکاره شي.';

  @override
  String get couldntLoad => 'پورته نه شو';

  @override
  String get progressStyleHint =>
      'ګولۍ او پټۍ پر پوسټر ایښودل کېږي؛ بهر ورته شمېره په ساده متن کې ښیي — یو وټاکه.';

  @override
  String get nixManagedUpdate =>
      'دا جوړونه د Nix له خوا اداره کېږي — د دلته تازه کولو پر ځای په خپل flake کې \"nix flake update\" چلوه او بیا جوړ کړه';

  @override
  String autoUpdateFailed(String error) {
    return 'اتوماتیک تازه کول ناکام شول ($error) — د ډاونلوډ پاڼه پرانیستل کېږي';
  }

  @override
  String get unknownPreference => 'نامعلوم غوراوی';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ملاتړ ناشوی د غوراوي ډول $type';
  }

  @override
  String get notYetReleased => 'لا نه دی خپور شوی';

  @override
  String get notStarted => 'لا نه دی پیل شوی';

  @override
  String get country => 'هیواد';

  @override
  String get sort => 'ترتیب';

  @override
  String get chooseBackupDialog => 'د Aniyomi، Mihon یا Kotatsu بیک‌اپ وټاکه';

  @override
  String get importListsHint =>
      'له Aniyomi، Mihon / Tachiyomi یا Kotatsu څخه کتابتون راوله. سرلیکونه، پوښونه، پرمختګ او کټګورۍ پاتې کېږي.';

  @override
  String get chooseBackupFile => 'د بیک‌اپ فایل وټاکه';

  @override
  String importAnimeCount(int count) {
    return '$count انیمې واردې کړه';
  }

  @override
  String importMangaCount(int count) {
    return '$count مانګا واردې کړه';
  }

  @override
  String get mergeWithExisting => 'له موجودو لیستونو سره یو ځای کړه';

  @override
  String get mergeWithExistingDesc =>
      'هغه څه چې لرې ساتي؛ بند یې برابر سرلیکونه بدلوي';

  @override
  String get chooseAnother => 'بل وټاکه';

  @override
  String get import => 'واردول';

  @override
  String animeCount(int count) {
    return '$count انیمې';
  }

  @override
  String mangaCount(int count) {
    return '$count مانګا';
  }

  @override
  String get chooseSaveLocation => 'وټاکه چې بیک‌اپ چېرته خوندي کړې';

  @override
  String savedPath(String path) {
    return '$path خوندي شو';
  }

  @override
  String exportFailed(String error) {
    return 'صادرول ناکام شول: $error';
  }

  @override
  String get nothingInLocalLists => 'ستا په ځایي لیستونو کې تر اوسه هېڅ نشته.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ستا له ځایي لیستونو $anime انیمې او $manga مانګا صادروي. Kotatsu یوازې مانګا ملاتړ کوي.';
  }

  @override
  String get saveToFolder => 'په پوښۍ کې خوندي کړه';

  @override
  String get formatAnimeManga => 'انیمې او مانګا · .tachibk';

  @override
  String get formatMangaTachibk => 'یوازې مانګا · .tachibk';

  @override
  String get formatMangaZip => 'یوازې مانګا · .zip';

  @override
  String get genres => 'ژانرونه';

  @override
  String get relations => 'اړیکې';

  @override
  String get recommendations => 'وړاندیزونه';

  @override
  String get openings => 'پرانیستنې';

  @override
  String get endings => 'پای‌ټکي';

  @override
  String get background => 'شاليد';

  @override
  String get links => 'لینکونه';

  @override
  String get rank => 'رتبه';

  @override
  String get members => 'غړي';

  @override
  String get favorites => 'خوښې';

  @override
  String get episodes => 'برخې';

  @override
  String get chapters => 'فصلونه';

  @override
  String get volumes => 'ټوکرونه';

  @override
  String get format => 'بڼه';

  @override
  String get source => 'سرچینه';

  @override
  String get duration => 'موده';

  @override
  String minutesPerEpisode(int minutes) {
    return 'په هره برخه $minutes دقیقې';
  }

  @override
  String get rating => 'درجه';

  @override
  String get studio => 'سټوډیو';

  @override
  String get serialization => 'لړۍ کېدنه';

  @override
  String get season => 'فصل';

  @override
  String get broadcast => 'خپرونه';

  @override
  String get aired => 'خپور شوی';

  @override
  String get published => 'چاپ شوی';

  @override
  String get popularity => 'شهرت';

  @override
  String get community => 'ټولنه';

  @override
  String get watching => 'ګوري';

  @override
  String get reading => 'لولي';

  @override
  String get dropped => 'پرېښودل شوي';

  @override
  String get planned => 'پلان شوي';

  @override
  String get trailers => 'تریلرونه';

  @override
  String get ratings => 'درجې';

  @override
  String get originalTitle => 'اصلي';

  @override
  String get titleLabel => 'سرلیک';

  @override
  String get votes => 'رایې';

  @override
  String get watchedStat => 'کتل شوي';

  @override
  String get runtime => 'اوږدوالی';

  @override
  String get director => 'رهبر';

  @override
  String get network => 'شبکه';

  @override
  String get certification => 'تصدیق';

  @override
  String get airs => 'خپرېږي';

  @override
  String get budget => 'بودجه';

  @override
  String get revenue => 'عاید';

  @override
  String get released => 'خپور شو';

  @override
  String get tags => 'ټګونه';

  @override
  String get author => 'لیکوال';

  @override
  String get born => 'زېږېدنه';

  @override
  String get website => 'ویب‌پاڼه';

  @override
  String get established => 'بنسټ';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'ناولونه';

  @override
  String get thisMonth => 'دا میاشت';

  @override
  String get movies => 'فلمونه';

  @override
  String get shows => 'شوګانې';

  @override
  String get rewatching => 'بیا ګوري';

  @override
  String get rereading => 'بیا لولي';

  @override
  String get watchedStatus => 'کتل شوي';

  @override
  String get planning => 'پلان شوي';

  @override
  String get paused => 'ځنډول شوي';

  @override
  String get watch => 'وګوره';

  @override
  String get read => 'ولوله';

  @override
  String get finished => 'پای ته رسېدلي';

  @override
  String get releasing => 'خپرېږي';

  @override
  String get cancelled => 'لغوه شوي';

  @override
  String get hiatus => 'وقفه';

  @override
  String get remove => 'لرې کړه';

  @override
  String syncToService(String service) {
    return 'له $service سره همغږی کړه';
  }

  @override
  String syncedToService(String service) {
    return 'له $service سره همغږی شو';
  }

  @override
  String get latestReleases => 'وروستۍ خپرونې';

  @override
  String get topRated => 'تر ټولو لوړ درجه شوي';

  @override
  String localSection(String title) {
    return '$title · ځایي';
  }

  @override
  String get localEntryNote =>
      'دا سرلیک یوازې ستا په ځایي لیست کې دی. دلته سمونه بنده ده ځکه چې ستا له حساب لیست سره ټکر کولای شي؛ بیا هم یې لرې کولای شې.';

  @override
  String get cardPresetPoster => 'پوسټر';

  @override
  String get cardPresetCard => 'کارت';

  @override
  String get cardPresetCozy => 'آرامه';

  @override
  String get sortTopRated => 'تر ټولو لوړ درجه شوي';

  @override
  String get sortMostPopular => 'تر ټولو مشهور';

  @override
  String get sortTrending => 'په ټرینډ کې';

  @override
  String get sortNewest => 'تر ټولو نوي';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'تر ټولو خوښ شوي';

  @override
  String get anyCountry => 'هر هیواد';

  @override
  String get orderScore => 'نمره';

  @override
  String get orderTitle => 'سرلیک';

  @override
  String get orderLastUpdated => 'وروستی تازه';

  @override
  String get orderLastAdded => 'وروستی اضافه شوی';

  @override
  String get never => 'هېڅکله';

  @override
  String get always => 'تل';

  @override
  String get scorePoint100 => '۱۰۰ نمرې';

  @override
  String get scorePoint10Decimal => '۱۰ نمرې اعشاري';

  @override
  String get scorePoint10 => '۱۰ نمرې';

  @override
  String get scorePoint5 => '۵ ستوري';

  @override
  String get scorePoint3 => '۳ نمرې مسکا';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعته',
      one: '۱ ساعت',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې',
      one: '۱ ورځ',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اونۍ',
      one: '۱ اونۍ',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'بیا پیل';

  @override
  String get resumeSourceMissing =>
      'د بیا پیلولو لپاره د دې سرلیک سرچینه نصب کړه';

  @override
  String get resumeRemove => 'له بیا پیل څخه لرې کړه';

  @override
  String resumeAt(String time) {
    return '$time پاتې';
  }

  @override
  String resumePage(int page, int total) {
    return '$total څخه $page پاڼه';
  }

  @override
  String get continueWatching => 'کتل دوام ورکړه';

  @override
  String get continueReading => 'لوستل دوام ورکړه';

  @override
  String get favouriteAnimeSection => 'خوښ انیمې';

  @override
  String get favouriteMangaSection => 'خوښه مانګا';

  @override
  String get plannedAnime => 'پلان شوې انیمې';

  @override
  String get plannedManga => 'پلان شوې مانګا';

  @override
  String get completedAnime => 'بشپړې انیمې';

  @override
  String get completedManga => 'بشپړه مانګا';

  @override
  String get hiddenMedia => 'پټ میډیا';

  @override
  String get recentUpdates => 'وروستي تازه معلومات';

  @override
  String get trendingNow => 'اوس په ټرینډ کې';

  @override
  String get popularThisSeason => 'پدې فصل کې مشهور';

  @override
  String get trendingMovies => 'په ټرینډ کې فلمونه';

  @override
  String get topRatedSeries => 'تر ټولو لوړ درجه شوي سریالونه';

  @override
  String get mostFavouriteSeries => 'تر ټولو خوښ شوي سریالونه';

  @override
  String get popularAnime => 'مشهوره انیمې';

  @override
  String get trendingManhwa => 'په ټرینډ کې Manhwa';

  @override
  String get trendingNovels => 'په ټرینډ کې ناولونه';

  @override
  String get topRatedManga => 'تر ټولو لوړ درجه شوې مانګا';

  @override
  String get mostFavouriteManga => 'تر ټولو خوښه مانګا';

  @override
  String get popularManga => 'مشهوره مانګا';

  @override
  String get topMovies => 'غوره فلمونه';

  @override
  String get topOna => 'غوره ONA';

  @override
  String get topOva => 'غوره OVA';

  @override
  String get mostPopular => 'تر ټولو مشهور';

  @override
  String get mostFavourite => 'تر ټولو خوښ';

  @override
  String get upcoming => 'راتلونکي';

  @override
  String get topManga => 'غوره مانګا';

  @override
  String get topManhwa => 'غوره Manhwa';

  @override
  String get topManhua => 'غوره Manhua';

  @override
  String get topNovels => 'غوره ناولونه';

  @override
  String get topOneShots => 'غوره یو‌ځلي (one-shot)';

  @override
  String get trendingMoviesToday => 'نن په ټرینډ کې فلمونه';

  @override
  String get trendingShowsToday => 'نن په ټرینډ کې شوګانې';

  @override
  String get trendingMoviesWeek => 'پدې اونۍ کې په ټرینډ کې فلمونه';

  @override
  String get trendingShowsWeek => 'پدې اونۍ کې په ټرینډ کې شوګانې';

  @override
  String get mostWatchedMoviesMonth =>
      'پدې میاشت کې تر ټولو ډیر کتل شوي فلمونه';

  @override
  String get mostWatchedShowsMonth => 'پدې میاشت کې تر ټولو ډیر کتل شوې شوګانې';

  @override
  String get trendingThisWeek => 'پدې اونۍ کې په ټرینډ کې';

  @override
  String get mostWatchedThisMonth => 'پدې میاشت کې تر ټولو ډیر کتل شوي';

  @override
  String get repoLinksAdded => 'د ذخیرې لینکونه په بریالیتوب اضافه شول!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'له AniList څخه د معلوماتو په اخیستلو کې تېروتنه.';

  @override
  String get navInfo => 'معلومات';

  @override
  String get navComments => 'نظرونه';

  @override
  String get playerNotAvailable => 'پلیر لا شته نه دی';

  @override
  String deepLinkInitialError(String error) {
    return 'د لومړني ژور لینک په اخیستلو کې تېروتنه: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'د لینک په پرانیستلو کې تېروتنه: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'دا لینک نه پرانیستل کېږي: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'د لینک په پرانیستلو کې تېروتنه: $error';
  }

  @override
  String get forReleasingTitles => 'د اوس خپرېدونکو سرلیکونو لپاره';

  @override
  String get progress => 'پرمختګ';

  @override
  String get notes => 'یادښتونه';

  @override
  String serviceNotFound(String id) {
    return 'خدمت \"$id\" ونه موندل شو';
  }

  @override
  String get glassEffectEnabled => 'د شیشې اغېز چالان شو';

  @override
  String get glassEffectDisabled => 'د شیشې اغېز بند شو';

  @override
  String get materialYouEnabled => 'Material You چالان شو';

  @override
  String get materialYouDisabled => 'Material You بند شو';

  @override
  String get darkModeEnabled => 'تیاره حالت چالان شو';

  @override
  String get darkModeDisabled => 'تیاره حالت بند شو';

  @override
  String get animeList => 'د انیمې لیست';

  @override
  String get mangaList => 'د مانګا لیست';

  @override
  String ownerAnimeList(String owner) {
    return 'د $owner د انیمې لیست';
  }

  @override
  String ownerMangaList(String owner) {
    return 'د $owner د مانګا لیست';
  }

  @override
  String get loadingList => 'لیست پورته کېږي';

  @override
  String get earlier => 'پخوا';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورځې مخکې',
      one: '۱ ورځ مخکې',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعته مخکې',
      one: '۱ ساعت مخکې',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقې مخکې',
      one: '۱ دقیقه مخکې',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count دقیقې مخکې';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ساعته مخکې';
  }

  @override
  String daysAgoShort(int count) {
    return '$count ورځې مخکې';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count اونۍ مخکې';
  }

  @override
  String get couldntLoadSource => 'دا سرچینه پورته نه شوه';

  @override
  String get followers => 'تعقیبوونکي';

  @override
  String couldntLoadTitle(String title) {
    return '$title پورته نه شو';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'دا پروفایل پورته نه شو';

  @override
  String get profile => 'پروفایل';

  @override
  String get feed => 'فیډ';

  @override
  String get stats => 'احصایې';

  @override
  String get received => 'ترلاسه شوي';

  @override
  String get sent => 'لیږل شوي';

  @override
  String get global => 'نړیوال';

  @override
  String get couldntLoadPage => 'دا پاڼه پورته نه شوه';

  @override
  String get couldntLoadAllDetails => 'ټول جزیات پورته نه شول';

  @override
  String get series => 'سریالونه';

  @override
  String get studios => 'سټوډیوګانې';

  @override
  String get users => 'کاروونکي';

  @override
  String repositoriesTitle(String type) {
    return '$type ذخیرې';
  }

  @override
  String get repositoryUrl => 'د ذخیرې URL';

  @override
  String get downloadingRepository => 'ذخیره ډاونلوډ کېږي…';

  @override
  String get noRepositories => 'هېڅ ذخیره نه ده اضافه شوې';

  @override
  String repoExtensionsCount(String count) {
    return '$count اکستنشنونه';
  }

  @override
  String get searchExtensions => 'اکستنشنونه ولټوه...';

  @override
  String deletePluginTitle(String name) {
    return '$name ړنګ کړې؟';
  }

  @override
  String get deletePluginMessage => 'ایا ډاډه یې چې دا پلګین ړنګ کړې؟';

  @override
  String pluginDeleted(String name) {
    return '$name ړنګ شو';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name په ټاکل شوې ذخیره کې شته نه دی';
  }

  @override
  String get pluginFetchFailed => 'د پلګین معلومات ونه اخیستل شول';

  @override
  String installPluginTitle(String name) {
    return '$name نصب کړه';
  }

  @override
  String sizeLabel(String size) {
    return 'اندازه: $size';
  }

  @override
  String get installedState => 'نصب شوی';

  @override
  String get errorLabel => 'تېروتنه:';

  @override
  String get stackTraceDetails => 'جزیات (Stack Trace)';

  @override
  String get shareLogFile => 'د لاګ فایل شریک کړه';

  @override
  String get copyLogs => 'لاګونه کاپي کړه';

  @override
  String noListToEdit(String service) {
    return '$service د سمولو لپاره لیست نلري';
  }

  @override
  String get couldNotReadFile => 'دا فایل ونه لوستل شو';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime انیمې او $manga مانګا وارد شول';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count مخکې شته';
  }

  @override
  String get airingNow => 'اوس خپرېږي';

  @override
  String get topRatedMovies => 'تر ټولو لوړ درجه شوي فلمونه';

  @override
  String get koreanDramas => 'کوریایي ډرامې';

  @override
  String get chineseDramas => 'چینايي ډرامې';

  @override
  String get japaneseDramas => 'جاپاني ډرامې';

  @override
  String get thaiDramas => 'تایلنډي ډرامې';

  @override
  String get turkishDramas => 'ترکي ډرامې';

  @override
  String get miniSeries => 'لنډ سریالونه';

  @override
  String get topRatedShows => 'تر ټولو لوړ درجه شوې شوګانې';

  @override
  String get recommendedSection => 'وړاندیز شوي';

  @override
  String get syncRow => 'لیستونه همغږی کړه';

  @override
  String get syncRowDesc => 'د یو خدمت لیست ستا نورو حسابونو ته نقل کړه';

  @override
  String get syncTitle => 'همغږی کول';

  @override
  String get syncMainService => 'اصلي خدمت';

  @override
  String get syncMainServiceDesc =>
      'د هغه لیست اصل دی؛ هر بل ننوتی خدمت د هغه سره برابرېږي';

  @override
  String get syncAuto => 'اتوماتیک همغږی';

  @override
  String get syncAutoDesc =>
      'کله چې اپ پرانیستل کېږي او هر ۳۰ دقیقې وروسته په شاليد کې راوله او همغږی کړه';

  @override
  String get syncAddMissing => 'ورک ننوتنې اضافه کړه';

  @override
  String get syncAddMissingDesc => 'هغه ننوتنې هم اضافه کړه چې بل خدمت لا نلري';

  @override
  String get syncOnlyForward => 'نور پرمختګ وساته';

  @override
  String get syncOnlyForwardDesc => 'د هغه خدمت پرمختګ مه کموه چې مخکې دی';

  @override
  String get syncFetch => 'راوله';

  @override
  String get syncFetchAgain => 'بیا راوله';

  @override
  String get syncAll => 'ټول همغږی کړه';

  @override
  String get syncStop => 'ودروه';

  @override
  String get syncResume => 'بیا پیل';

  @override
  String get syncNothingToSync => 'دا خدمت د دې ډول لپاره نه شي همغږی کېدای';

  @override
  String get syncNoTargets => 'د همغږی کولو لپاره په بل خدمت کې ننوځه';

  @override
  String get syncLoadingMap => 'د ID نقشه پورته کېږي';

  @override
  String get syncComparing => 'لیستونه پرتله کېږي';

  @override
  String get syncIntro =>
      'یو اصلي خدمت وټاکه او راوله ټک کړه. هر خدمت یو ځل ستا د لیست لپاره پوښتل کېږي، بیا له اصلي سره پرتله کېږي.';

  @override
  String get syncStateSynced => 'همغږی شو';

  @override
  String get syncStateOutdated => 'همغږی نه دی';

  @override
  String get syncStateMissing => 'په لیست کې نشته';

  @override
  String get syncStateUnmapped => 'برابري نشته';

  @override
  String syncPaused(String time) {
    return 'د سرعت حد ته انتظار، په $time کې بیا پیلېږي';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count یوازې په $name کې، لاس نه لګول شوی';
  }

  @override
  String syncProgressOf(int done, int total) {
    return 'له $total څخه $done';
  }

  @override
  String get syncNothingHere => 'د ښودلو لپاره هېڅ نشته';

  @override
  String syncLimits(int used, int max, String window) {
    return 'پدې $window کې له $max څخه $used غوښتنې کارول شوې';
  }

  @override
  String get syncMinute => 'دقیقه';

  @override
  String get syncDay => 'ورځ';

  @override
  String get syncNotInList => 'لا په لیست کې نشته';

  @override
  String get syncCleared => 'پلان پاک شو';

  @override
  String get syncClear => 'پاک کړه';

  @override
  String get syncOptions => 'غوراوي';

  @override
  String get syncShared => 'خپله ننوتنه له بل توکي سره شریکوي';

  @override
  String syncNotFound(String service) {
    return 'په $service کې ونه موندل شو';
  }

  @override
  String syncService(String service, int count) {
    return '$service همغږی کړه ($count)';
  }

  @override
  String get syncOnEdit => 'بدلونونه سمدلاسه همغږی کړه';

  @override
  String get syncOnEditDesc =>
      'هر پرمختګ تازه معلومات او د لیست سمونه سمدلاسه ستا نورو ننوتو خدمتونو ته ولیږه';

  @override
  String syncPushed(String services) {
    return 'له $services سره همغږی شو';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'سرعت محدود شو، یو څه وروسته بیا هڅه وکړه';

  @override
  String get syncAhead => 'هر یو چې مخکې وي';

  @override
  String get syncAheadDesc =>
      'دوه‌اړخیز: د هر سرلیک لپاره هغه ننوتنه ګټي چې تر ټولو مخکې وي او ستا نورو ټولو خدمتونو ته کاپي کېږي';

  @override
  String syncAheadFrom(String service) {
    return 'له $service څخه';
  }

  @override
  String get syncConfirm => 'مخکې له همغږي کولو وګوره';

  @override
  String get syncConfirmDesc =>
      'وښیه چې ټول همغږی کړه به څه بدل کړي او څو غوښتنو ته اړتیا ده';

  @override
  String get syncPreviewTitle => 'د همغږي کولو لپاره چمتو';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates تازه کېدنې، $adds د اضافه کولو لپاره';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'شاوخوا $count غوښتنې';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID لومړی لټون ته اړتیا لري';
  }

  @override
  String get syncPreviewNothing => 'د بدلولو لپاره هېڅ نشته';

  @override
  String get syncStart => 'پیل';

  @override
  String get syncRetry => 'بیا هڅه';

  @override
  String get syncSkip => 'دا توکی پرېږده';

  @override
  String get syncInclude => 'دا توکی بیا شامل کړه';

  @override
  String get syncSkippedLabel => 'پرېښودل شو';

  @override
  String get syncChanges => 'توپیرونه';

  @override
  String get syncChangeStatus => 'حالت';

  @override
  String get syncChangeProgress => 'پرمختګ';

  @override
  String get syncChangeScore => 'نمره';

  @override
  String get syncChangeDates => 'نېټې';

  @override
  String get syncChangeRepeat => 'د بیا کتلو شمېر';

  @override
  String get syncFailedReason => 'ولې ناکام شو';

  @override
  String get syncSkippedHint =>
      'پرېښودل شوي توکي لاس نه لګول کېږي، حتی بیا راوړلو وروسته';

  @override
  String get commentsRules => 'د نظر ورکولو قوانین';

  @override
  String get commentsRulesBody =>
      'هر قانون ماتول = ته ووتې\n\n1. نژاد پرستي، تبعیض یا د کرکې خبرې نه\n2. سپام یا ځان‌ستاینه نه\n3. په بشپړه توګه د NSFW منځپانګه نه\n4. یوازې انګلیسي، هېڅ استثنا نشته\n5. د بل چا نقلول، ځورول یا سپکاوی نه\n6. غیرقانوني منځپانګه یا د کوم فین‌ډم پر وړاندې سخت بې‌احترامي نه\n7. ذخیرې یا اکستنشنونه مه غواړه او مه یې شریکوه\n8. سپوئلر یوازې د سپوئلر ټګ او خبرداري سره\n9. د ماشومانو کرکټرونو په اړه جنسي یا ناوړه نظرونه نه\n10. که غلط وي، نه یې پوسټ کوه!';

  @override
  String get commentsRulesAccept => 'پوه شوم';

  @override
  String get commentsSortNewest => 'تر ټولو نوي';

  @override
  String get commentsSortOldest => 'تر ټولو زاړه';

  @override
  String get commentsSortHighest => 'تر ټولو لوړ درجه شوي';

  @override
  String get commentsSortLowest => 'تر ټولو ټیټ درجه شوي';

  @override
  String commentsEpisodeShort(int number) {
    return 'برخه $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'فصل $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'د برخې له مخې فلټر';

  @override
  String get commentsFilterChapterTitle => 'د فصل له مخې فلټر';

  @override
  String get commentsFilterTagTitle => 'د برخې یا فصل شمېره ولیکه';

  @override
  String get commentsFilterHint => 'شمېره';

  @override
  String get commentsFilterApply => 'فلټر';

  @override
  String get commentsFilterClear => 'ټول وښیه';

  @override
  String get commentsPlaceholder => 'یو نظر اضافه کړه…';

  @override
  String commentsReplyingTo(String name) {
    return '$name ته ځواب ورکول کېږي';
  }

  @override
  String get commentsSend => 'ولیږه';

  @override
  String get commentsTagButton => 'ټګ';

  @override
  String commentsTagTitle(String label) {
    return 'ټګ $label (اختیاري)';
  }

  @override
  String get commentsTagEpisode => 'برخه';

  @override
  String get commentsTagChapter => 'فصل';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'د $label شمېره';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ټګ نشي کولای له ټولټال ($total) څخه واوړي';
  }

  @override
  String get commentsNoTag => 'ټګ نشته';

  @override
  String get commentsSpoiler => 'سپوئلر';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF ولټوه';

  @override
  String get commentsGifEmpty => 'هېڅ GIF ونه موندل شو';

  @override
  String get commentsEmptyText => 'نظر نشي کېدای خالي وي';

  @override
  String get commentsBannedYou => 'تا ته د نظر ورکولو بندیز دی';

  @override
  String get commentsEdited => 'نظر سم شو';

  @override
  String get commentsDeleted => 'نظر ړنګ شو';

  @override
  String get commentsDeletedPlaceholder => '[ړنګ شوی]';

  @override
  String get commentsReported => 'نظر راپور شو';

  @override
  String get commentsUserBanned => 'کارن بند شو';

  @override
  String get commentsReport => 'راپور';

  @override
  String get commentsReportAsk => 'دا نظر مدیرانو ته راپور کړې؟';

  @override
  String get commentsDelete => 'ړنګول';

  @override
  String get commentsDeleteAsk => 'دا نظر به د ټولو لپاره لرې شي.';

  @override
  String get commentsBan => 'بندیز';

  @override
  String get commentsBanAsk => 'دې کارن ته د نظر ورکولو بندیز ولګوې؟';

  @override
  String get commentsCopy => 'کاپي';

  @override
  String get commentsViewReply => '۱ ځواب وګوره';

  @override
  String commentsViewReplies(int count) {
    return '$count ځوابونه وګوره';
  }

  @override
  String get commentsHideReplies => 'ځوابونه پټ کړه';

  @override
  String get commentsLoadMore => 'نور نظرونه پورته کړه';

  @override
  String get commentsEmpty => 'تر اوسه نظر نشته. لومړی ته اوسه!';

  @override
  String get commentsEmptyFiltered => 'د دې فلټر لپاره نظر نشته';

  @override
  String get commentsSignIn =>
      'د نظرونو د لوستلو او لیکلو لپاره په AniList کې ننوځه';

  @override
  String get commentsSignInMessage =>
      'نظرونه د ټولو خدمتونو ترمنځ شریک دي او ستا د AniList حساب کاروي.';

  @override
  String get commentsUnavailable => 'د دې سرلیک لپاره نظرونه نشته';

  @override
  String get commentsUnavailableMessage =>
      'دا د AniList له یوې ننوتنې سره برابر نه شو.';

  @override
  String get commentsDisabled => 'نظرونه بند دي';

  @override
  String get commentsDisabledMessage =>
      'بیا یې کولای شې په تنظیماتو › عمومي کې چالان کړې.';

  @override
  String get commentsOffline => 'نظرونه پورته نه شول';

  @override
  String get commentsSingleTitle => 'یو نظر ښودل کېږي';

  @override
  String get commentsShowAll => 'ټول نظرونه وښیه';

  @override
  String get commentsSettingsHeader => 'نظرونه';

  @override
  String get commentsSettingEnabled => 'نظرونه';

  @override
  String get commentsSettingEnabledDesc =>
      'په سرلیکونو کې د نظرونو ټب وښیه او د AniList حساب سره د نظرونو سرور ته ننوځه';

  @override
  String get commentsSettingAlerts => 'د ځواب خبرتیاوې';

  @override
  String get commentsSettingAlertsDesc =>
      'کله چې څوک زما نظرونو ته ځواب ورکړي خبر مې کړه';

  @override
  String get commentsNoticeReplyTitle => 'نوی د نظر ځواب';

  @override
  String commentsNoticeReply(String name) {
    return '$name ستا نظر ته ځواب ورکړ';
  }

  @override
  String get commentsNoticeWarningTitle => 'تا خبرداری ترلاسه کړ';

  @override
  String get commentsNoticeWarning => 'په خپلو نظرونو کې ډیر محتاط اوسه';

  @override
  String get commentsNoticeUpdateTitle => 'د Dantotsu تازه معلومات';

  @override
  String get barcodeTitle => 'بارکوډ سکین کړه';

  @override
  String get barcodeTooltip => 'د بارکوډ له مخې مانګا یا ناول ومومه';

  @override
  String get barcodeIntro =>
      'کیمره د ټوکر شاته بارکوډ ته ونیسه، یا ISBN یې ولیکه.';

  @override
  String get barcodeIntroManual =>
      'هغه ISBN ولیکه چې د ټوکر شاته د بارکوډ پر سر چاپ شوی.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'دا سم ISBN نه دی';

  @override
  String barcodeNotFound(String isbn) {
    return 'د $isbn لپاره هېڅ کتاب ونه موندل شو';
  }

  @override
  String get barcodeCameraDenied =>
      'کیمره شته نه ده. د کیمرې لاسرسی ته اجازه ورکړه یا ISBN ولیکه.';

  @override
  String get themesTitle => 'پرانیستنې او پای‌ټکي';

  @override
  String get themesPlayVideo => 'ویډیو غږوه';

  @override
  String get themesPlayAudio => 'یوازې غږ غږوه';

  @override
  String get themesOpenSite => 'په AnimeThemes کې پرانیزه';

  @override
  String get themesCredit => 'د AnimeThemes تمونه';

  @override
  String get themesVersions => 'نسخې';

  @override
  String get sauceTitle => 'سرچینه ومومه';

  @override
  String get sauceIntro =>
      'د مانګا پاڼه یا هنري اثر پورته کړه، یا لینک یې پیسټ کړه، چې ومومې له کوم ځای دی.';

  @override
  String get sauceKeyTitle => 'د SauceNAO API کیلي';

  @override
  String get sauceKeyHint => 'اختیاري، ورځنی د لټون حد لوړوي';

  @override
  String get sauceKeyDesc => 'وړیا کیلي له saucenao.com/user.php ترلاسه کړه';

  @override
  String get sauceOpen => 'سرچینه پرانیزه';

  @override
  String get sauceCredit => 'د انځور لټون د SauceNAO له خوا';

  @override
  String get sauceEmpty => 'هېڅ برابري ونه موندل شوه';

  @override
  String get sauceTooltip => 'د مانګا پاڼې یا هنري اثر سرچینه ومومه';

  @override
  String get trendzTitle => 'د انیمې چارټونه';

  @override
  String get trendzAnime => 'انیمې';

  @override
  String get trendzFemale => 'ښځینه کرکټرونه';

  @override
  String get trendzMale => 'نارینه کرکټرونه';

  @override
  String get trendzCouple => 'جوړې';

  @override
  String get trendzCredit => 'د AniTrendz اوونیز چارټونه';

  @override
  String get trendzNew => 'نوی';

  @override
  String get trendzEmpty => 'چارټ خالي دی';

  @override
  String get shareCard => 'کارت شریک کړه';

  @override
  String get shareCardList => 'د لیست کارت شریک کړه';

  @override
  String get shareCardSaved => 'کارت خوندي شو';

  @override
  String get shareCardFailed => 'کارت جوړ نه شو';

  @override
  String get shareCardListEmpty =>
      'ستا په لیست کې تر اوسه د شریکولو لپاره هېڅ نشته';

  @override
  String get shareCardTop => 'زما غوره انتخابونه';

  @override
  String themesEpisodes(String eps) {
    return 'برخې $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% برابري';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'اونۍ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count رایې';
  }

  @override
  String trendzPeak(String rank) {
    return 'اوج #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'په لسو غوره کې $count اونۍ';
  }

  @override
  String get imageSearchTitle => 'د انځور له مخې لټون';

  @override
  String get imageSearchTooltip => 'د سکرین‌شاټ له مخې انیمې ومومه';

  @override
  String get imageSearchIntro =>
      'یو سکرین‌شاټ وټاکه یا د انځور لینک پیسټ کړه او trace.moe به برخه او هغه شېبه ومومي چې له کوم ځای ده.';

  @override
  String get imageSearchPick => 'انځور وټاکه';

  @override
  String get imageSearchLinkHint => 'د انځور لینک پیسټ کړه';

  @override
  String get imageSearchGo => 'لټون';

  @override
  String get imageSearchEmpty => 'هېڅ برابري ونه موندل شوه';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'برخه $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'په $time کې';
  }

  @override
  String get imageSearchPreview => 'د کلیپ مخکتنه';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% برابري';
  }

  @override
  String get imageSearchCredit => 'د trace.moe له خوا';

  @override
  String get imageSearchOpenFailed => 'دا سرلیک ونه پرانیستل شو';

  @override
  String get groups => 'ډلې';

  @override
  String get groupsYours => 'ستاسې ډلې';

  @override
  String get groupsPopular => 'مشهور';

  @override
  String get groupsNew => 'نوی';

  @override
  String get groupsFeatured => 'ځانګړی';

  @override
  String get groupsSearch => 'ډلې ولټوه';

  @override
  String get groupsAll => 'ټول';

  @override
  String get groupsEmpty => 'هېڅ ډله ونه موندل شوه';

  @override
  String get groupsEmptyYours => 'ته لا په هېڅ ډله کې نه یې ګډون کړی';

  @override
  String get groupsSignIn => 'د هغو ډلو د لیدلو لپاره چې ګډون دې پکې کړی ننوځه';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count غړي',
      one: '۱ غړی',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ګډون وکړه';

  @override
  String get groupsJoined => 'ګډون شوی';

  @override
  String get groupsLeave => 'ډله پرېږده';

  @override
  String get groupsLeaveAsk =>
      'ته به نور د دې ډلې پوسټونه په خپل فیډ کې و نه وینې.';

  @override
  String get groupsJoinFailed => 'پدې ډله کې ګډون نه شو، ښايي یوازې په بلنې وي';

  @override
  String get groupsLeaveFailed => 'دا ډله پرېښودل نه شوه';

  @override
  String get groupsPosts => 'پوسټونه';

  @override
  String get groupsMembersTab => 'غړي';

  @override
  String get groupsAbout => 'په اړه';

  @override
  String get groupsRules => 'قوانین';

  @override
  String get groupsPrivacyOpen => 'پرانیستې';

  @override
  String get groupsPrivacyRestricted => 'محدودې';

  @override
  String get groupsPrivacyClosed => 'تړلې';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'مدیر';

  @override
  String get groupsRoleMod => 'مډ';

  @override
  String get groupsCouldntLoad => 'دا ډله پورته نه شوه';

  @override
  String get groupsNewPost => 'په ډله کې پوسټ کړه';

  @override
  String get groupsPostHint => 'له ډلې سره یو څه شریک کړه';

  @override
  String get groupsOpenInBrowser => 'په براوزر کې پرانیزه';

  @override
  String get groupsCategory => 'کټګوري';

  @override
  String get groupsLanguage => 'ژبه';

  @override
  String get groupsCreated => 'جوړ شو';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مشران',
      one: '۱ مشر',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'محرمیت';

  @override
  String get notificationsAll => 'ټول';

  @override
  String get notificationsAiring => 'خپرېدنه';

  @override
  String get notificationsMedia => 'نوي سرلیکونه';

  @override
  String get notificationsReplies => 'ځوابونه';

  @override
  String get notificationsMentions => 'یادونې';

  @override
  String get notificationsMessages => 'پیغامونه';

  @override
  String get notificationsLikes => 'خوښې';

  @override
  String get notificationsFollows => 'تعقیبوونکي';

  @override
  String get notificationsNoServices => 'هېڅ ننوتی خدمت خبرتیاوې نلري';

  @override
  String get notificationsNoServicesMessage =>
      'په هغه خدمت کې ننوځه چې خبرتیاوې لیږي او دلته به ښکاره شي.';

  @override
  String get notificationsEmptyKind => 'پدې کټګورۍ کې تر اوسه هېڅ نشته';

  @override
  String get notificationsCommentsEmpty => 'د نظرونو خبرتیاوې نشته';

  @override
  String get notificationsCommentsEmptyMessage =>
      'ستاسې نظرونو ته ځوابونه او د Dantotsu اعلانونه دلته ښکاري.';

  @override
  String get notificationsSettings => 'د خبرتیا تنظیمات';

  @override
  String get notificationsPollTitle => 'نوې خبرتیاوې وګوره';

  @override
  String notificationsPollDesc(int minutes) {
    return 'کله چې اپ پرانیستی وي هر $minutes دقیقې وروسته';
  }

  @override
  String get notificationsNotifyAbout => 'ما ته د دې په اړه خبر راکړه';

  @override
  String get notificationsCommentsHeader => 'د نظرونو خبرتیاوې';

  @override
  String systemNotificationsDescFor(String service) {
    return 'کله چې اپ روان وي د هرې نالوستې $service خبرتیا لپاره د سیستم خبرتیا وښیه.';
  }

  @override
  String get notificationsTestSent => 'ازمایښتي خبرتیا ولېږل شوه';

  @override
  String get notificationsTestDenied =>
      'د Dartotsu لپاره خبرتیاوې اجازه شوې نه دي. د سیستم په تنظیماتو کې یې چالان کړه.';

  @override
  String get notificationsTestHint =>
      'د ازمایښتي خبرتیا د لیږلو لپاره اوږد وساته';

  @override
  String get notificationsTestSample => 'دا یوه ازمایښتي خبرتیا ده';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name په $media کې ستا نظر ته ځواب ورکړ';
  }

  @override
  String get imageSearchNotLink => 'دا لینک ته نه ورته کېږي';

  @override
  String get imageSearchQuota => 'د لټون کوټه تېره شوه';

  @override
  String get imageSearchBusy => 'ډیرې غوښتنې، یو څه وروسته بیا هڅه وکړه';

  @override
  String imageSearchFailed(int code) {
    return 'لټون ناکام شو ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count نوې خبرتیاوې';
  }

  @override
  String get reactionsTitle => 'غبرګونونه';

  @override
  String get reactionsNeedEntry =>
      'مخکې له غبرګون څخه دا سرلیک خپل لیست ته اضافه کړه';

  @override
  String get reactionsAdd => 'یو غبرګون اضافه کړه';

  @override
  String get reactionsHint => 'ته څه فکر کوې؟ (لنډ او پرته له سپوئلر)';

  @override
  String get reactionsPost => 'پوسټ';

  @override
  String get reactionsFailed => 'غبرګون تازه نه شو';

  @override
  String get settingsWatch => 'وګوره او ولوله';

  @override
  String get settingsWatchDesc =>
      'د برخو لیستونه، د سرچینې برابرول او د برخو جزیات';

  @override
  String get watchSettingsLayout => 'د برخو لیست';

  @override
  String get watchSettingsSources => 'سرچینې';

  @override
  String get watchSettingsMetadata => 'د برخې جزیات';

  @override
  String get watchLayout => 'ترتیب';

  @override
  String get watchListView => 'لیست';

  @override
  String get watchGridView => 'جال';

  @override
  String get watchCompactView => 'فشرده';

  @override
  String get watchDefaultLayoutDesc =>
      'برخې او فصلونه څنګه ترتیب کېږي تر هغې چې د یو سرلیک لپاره یې بدل کړې';

  @override
  String get watchChunkSize => 'د سلسلې اندازه';

  @override
  String get watchChunkSizeDesc => 'هر د سلسلې ټب څو برخې یا فصلونه لري';

  @override
  String get watchShowDescription => 'توضیحات وښیه';

  @override
  String get watchShowDescriptionDesc =>
      'د لیست په ترتیب کې د هر سرلیک لاندې د برخې لنډیز وښیه';

  @override
  String get watchShowFiller => 'د filler برخې وښیه';

  @override
  String get watchShowFillerDesc =>
      'هغه برخې پټولو لپاره چې filler نښه شوې یې بند کړه';

  @override
  String get watchBlurUnwatched => 'د سپوئلر کوچني انځورونه پټ کړه';

  @override
  String get watchBlurUnwatchedDesc =>
      'د هغو برخو کوچنی انځور تیاره کړه چې لا دې نه دي لیدلې';

  @override
  String get watchResumeShelf => 'د بیا پیل شیلف';

  @override
  String get watchResumeShelfDesc => 'په کور کې د بیا پیل قطار وښیه';

  @override
  String get watchMarkOnLongPress => 'اوږد ټچ پرمختګ نښه کوي';

  @override
  String get watchMarkOnLongPressDesc =>
      'یوه برخه یا فصل ته اوږد ټچ ورکړه چې کتل شوی یا نه کتل شوی نښه شي';

  @override
  String get watchMatching => 'د سرچینې برابرول';

  @override
  String get watchMatchingDesc =>
      'نږدې غوره د لټون پایله اخلي. یوازې دقیقه برابري یوازې نږدې ورته سرلیک مني او پاتې ستا د ټاکلو لپاره پرېږدي.';

  @override
  String get watchMatchClosest => 'نږدې برابري';

  @override
  String get watchMatchExact => 'یوازې دقیقه برابري';

  @override
  String get watchMetadataDesc =>
      'د برخو سرلیکونه، لنډیزونه، کوچني انځورونه، د خپرېدو نېټې او filler نښې له کومه راځي. د لومړیتوب ټاکلو لپاره یې راکش کړه؛ لومړۍ سرچینه چې ارزښت لري ګټي.';

  @override
  String get watchMetaAniZipDesc =>
      'د برخو سرلیکونه، لنډیزونه، سټیلونه او د خپرېدو نېټې';

  @override
  String get watchMetaKitsuDesc => 'د برخو سرلیکونه، توضیحات او کوچني انځورونه';

  @override
  String get watchMetaSimklDesc =>
      'د برخو سرلیکونه، توضیحات، سټیلونه او د خپرېدو نېټې';

  @override
  String get watchMetaAniListDesc =>
      'د سټرېمینګ د برخو سرلیکونه، کوچني انځورونه او د خپرېدو مهال ویش';

  @override
  String get watchMetaTenraiDesc =>
      'د MyAnimeList د برخو سرلیکونه، د خپرېدو نېټې، filler او recap نښې د Tenrai له لارې';

  @override
  String get watchClearMetadata => 'د برخې جزیات تازه کړه';

  @override
  String get watchClearMetadataDesc =>
      'ساتل شوي د برخې جزیات هېر کړه چې بیا راوړل شي';

  @override
  String get watchMetadataCleared => 'د برخې جزیات به بیا راوړل شي';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count برخې',
      one: '۱ برخه',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فصلونه',
      one: '۱ فصل',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'برخه $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'فصل $number';
  }

  @override
  String get watchSearching => 'لټول کېږي…';

  @override
  String watchSearchingFor(String term) {
    return 'لټول کېږي: $term';
  }

  @override
  String watchSelected(String title) {
    return 'ټاکل شوی: $title';
  }

  @override
  String watchFound(String title) {
    return 'موندل شوی: $title';
  }

  @override
  String get watchNothingFound => 'پدې سرچینه کې هېڅ ونه موندل شو';

  @override
  String get watchSearchFailed => 'د سرچینې لټون ناکام شو';

  @override
  String get watchLoadFailed => 'لیست پورته نه شو';

  @override
  String get watchSignInToTrack => 'د خپل پرمختګ د تعقیب لپاره ننوځه';

  @override
  String watchInstallSource(String action) {
    return 'د $action د پیل لپاره یو اکستنشن نصب کړه';
  }

  @override
  String get watchSourceMissing => 'دا سرچینه نصب شوې نه ده';

  @override
  String get watchWrongTitle => 'ناسم سرلیک؟';

  @override
  String get watchSearchAgain => 'بیا ولټوه';

  @override
  String watchSearchSource(String source) {
    return 'په $source کې لټون';
  }

  @override
  String get watchSource => 'سرچینه';

  @override
  String get watchOptions => 'غوراوي';

  @override
  String get watchReverse => 'ترتیب بدل کړه';

  @override
  String get watchScanlators => 'ډلې';

  @override
  String get watchResetOptions => 'دا غوراوي بیا تنظیم کړه';

  @override
  String get watchContinue => 'دوام ورکړه';

  @override
  String get watchStart => 'پیل';

  @override
  String get watchPlay => 'غږوه';

  @override
  String get watchRead => 'ولوله';

  @override
  String get watchMarkWatched => 'کتل شوی نښه کړه';

  @override
  String get watchMarkUnwatched => 'نه کتل شوی نښه کړه';

  @override
  String get watchMarkRead => 'لوستل شوی نښه کړه';

  @override
  String get watchMarkUnread => 'نه لوستل شوی نښه کړه';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'هېڅ برخه ونه موندل شوه';

  @override
  String get watchNoChapters => 'هېڅ فصل ونه موندل شو';

  @override
  String get watchSourceTools => 'د سرچینې توکي';

  @override
  String get watchSourceSettings => 'د سرچینې تنظیمات';

  @override
  String get watchOpenWebView => 'په ویب لید کې پرانیزه';

  @override
  String get watchOpenWebViewDesc =>
      'د Cloudflare چک حل کړه یا ننوځه؛ کوکیز د سرچینې له غوښتنو سره شریک دي';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'د $host لپاره $count کوکیز خوندي دي',
      one: 'د $host لپاره ۱ کوکي خوندي دی',
      zero: 'د $host لپاره هېڅ کوکیز خوندي نه دي',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'د Cloudflare اجازه فعاله ده، $time';
  }

  @override
  String get watchClearanceMissing => 'د Cloudflare د اجازې کوکی نشته';

  @override
  String get watchClearanceSession => 'تر هغې پورې دوام کوي چې اپ بند شي';

  @override
  String get watchAgentShared =>
      'غوښتنې د ویب لید user agent کاروي، چې Cloudflare یې ګوري';

  @override
  String get watchAgentCustom =>
      'یو دودیز user agent ټاکل شوی، نو د ویب لید څخه د Cloudflare اجازه ښايي رد شي';

  @override
  String get watchTestConnection => 'اړیکه وازمایه';

  @override
  String get watchSolveChallenge => 'حل یې کړه';

  @override
  String watchProbeOk(int code) {
    return 'لاسرسی کېږي (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare لا هم چک غواړي';

  @override
  String watchProbeBlocked(int code) {
    return 'د سایټ له خوا بند شوی (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'سایټ ته لاسرسی نه شو';

  @override
  String get watchClearCookies => 'د دې سایټ کوکیز پاک کړه';

  @override
  String get watchCookiesCleared => 'کوکیز پاک شول';

  @override
  String get watchMetaSource => 'د برخې جزیات له';

  @override
  String get watchMetaAuto => 'اتوماتیک';

  @override
  String get watchMetaOff => 'بند';

  @override
  String get playerSettingsTitle => 'د پلیر تنظیمات';

  @override
  String get playerSectionPlayback => 'غږول';

  @override
  String get playerSectionSkip => 'پرېښودل';

  @override
  String get playerSectionGestures => 'کنټرولونه';

  @override
  String get playerSectionSubtitles => 'فرعي سرلیکونه';

  @override
  String get playerSectionShaders => 'شیډرونه';

  @override
  String get playerSectionEngine => 'انجن';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'د غږولو چټکتیا';

  @override
  String get playerCursedSpeed => 'اضافي چټکتیاوې';

  @override
  String get playerCursedSpeedDesc => 'لیست ته تر 10x پورې چټکتیاوې اضافه کړه';

  @override
  String get playerResize => 'د اندازې بدلولو حالت';

  @override
  String get playerFitFit => 'برابر';

  @override
  String get playerFitCover => 'پوښ';

  @override
  String get playerFitStretch => 'راکش';

  @override
  String get playerSkipDuration => 'د پرېښودلو تڼۍ اوږدوالی';

  @override
  String get playerSkipDurationDesc =>
      'هغه ثانیې چې د پرېښودلو تڼۍ له پرانیستنو او پای‌ټکو بهر ټوپ وهي';

  @override
  String get playerSeekDuration => 'دوه‌ځلی ټچ ټوپ';

  @override
  String get playerSeekDurationDesc =>
      'په دوه‌ځلي ټچ یا د غشي کیلي کې د ټوپ لپاره ثانیې';

  @override
  String get playerAutoPlay => 'بل په اتوماتیک ډول غږوه';

  @override
  String get playerAutoPlayDesc => 'کله چې دا برخه پای ته ورسیږي بله پیل کړه';

  @override
  String get playerResume => 'له هغه ځایه دوام ورکړه چې پرې ایښی دی';

  @override
  String get playerResumeDesc => 'یوه برخه د وروستي ځای څخه دوام ورکړه';

  @override
  String get playerOrientation => 'سمت';

  @override
  String get playerOrientationAuto => 'د وسیلې تعقیب';

  @override
  String get playerOrientationLandscape => 'افقي';

  @override
  String get playerOrientationPortrait => 'عمودي';

  @override
  String get playerAutoSkipOpening => 'پرانیستنې پرېږده';

  @override
  String get playerAutoSkipEnding => 'پای‌ټکي پرېږده';

  @override
  String get playerAutoSkipRecap => 'recap پرېږده';

  @override
  String get playerAutoSkipDesc =>
      'کله چې پیل شي سمدلاسه ورباندې ټوپ کړه، د AniSkip او سټرېم د وخت نښو په کارولو سره';

  @override
  String get playerSkipOnce => 'یوازې یو ځل پرېږده';

  @override
  String get playerSkipOnceDesc => 'که بیرته ورشې همدا برخه بیا مه پرېږده';

  @override
  String get playerAdjustBrightness => 'د روښنایی اشاره';

  @override
  String get playerAdjustBrightnessDesc =>
      'د سکرین پر ښي نیمایي پورته او ښکته سوایپ کړه';

  @override
  String get playerAdjustVolume => 'د غږ اشاره';

  @override
  String get playerAdjustVolumeDesc =>
      'د سکرین پر کيڼ نیمایي پورته او ښکته سوایپ کړه';

  @override
  String get playerHoldToSpeed => 'د چټکوالي لپاره وساته';

  @override
  String get playerHoldToSpeedDesc =>
      'ویډیو ته اوږد ټچ ورکړه چې چټک غږ شي، د چټکتیا د بدلولو لپاره څنګ ته راکش کړه';

  @override
  String get playerThumbless => 'ضخیمه د لټون پټۍ';

  @override
  String get playerThumblessDesc => 'ضخیمه پټۍ پرته له دستګیرې';

  @override
  String get playerShowSubtitles => 'فرعي سرلیکونه وښیه';

  @override
  String get playerShowSubtitlesDesc =>
      'د ټولو فرعي سرلیک ټراکونو د پټولو لپاره یې بند کړه';

  @override
  String get playerSubtitleLanguage => 'د فرعي سرلیک خوښه شوې ژبه';

  @override
  String get playerSubtitleSize => 'د فرعي سرلیک اندازه';

  @override
  String get playerSubtitleWeight => 'د فرعي سرلیک ضخامت';

  @override
  String get playerSubtitleBottom => 'د فرعي سرلیک ښکتنی ځای';

  @override
  String get playerSubtitleFont => 'د فرعي سرلیک فونټ';

  @override
  String get playerSubtitleColor => 'د فرعي سرلیک رنګ';

  @override
  String get playerSubtitleBackground => 'د فرعي سرلیک شاليد';

  @override
  String get playerSubtitleOutline => 'د فرعي سرلیک کرښه';

  @override
  String get playerLibass => 'libass وکاروه';

  @override
  String get playerLibassDesc =>
      'سټایل شوي .ass فرعي سرلیکونه رندر کړه. پورته اندازه، رنګ او فونټ بیا نه پلي کېږي';

  @override
  String get playerShaders => 'شیډرونه';

  @override
  String get playerShadersEnable => 'شیډرونه چالان کړه';

  @override
  String get playerShadersEnableDesc =>
      'انځور د GLSL شیډرونو لکه Anime4K سره لوړ کړه او پاک کړه';

  @override
  String get playerShadersOff => 'شیډرونه بند';

  @override
  String get playerShadersMissing => 'Anime4K نصب شوی نه دی';

  @override
  String get playerShadersMissingDesc =>
      'د جوړو شوو حالتونو د کارولو لپاره د Anime4K شیډر بسته (شاوخوا 0.8 MB) ډاونلوډ کړه.';

  @override
  String get playerShadersDownload => 'Anime4K ډاونلوډ کړه';

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
  String get playerShadersPreview => 'پدې چوکاټ مخکتنه';

  @override
  String get playerShadersUse => 'دا وکاروه';

  @override
  String get playerPicture => 'انځور';

  @override
  String get playerColors => 'رنګونه';

  @override
  String get playerColorDefault => 'ډیفالټ';

  @override
  String get playerColorVivid => 'ژوندی';

  @override
  String get playerColorPop => 'انیمې پاپ';

  @override
  String get playerColorSoft => 'نرم';

  @override
  String get playerColorCinematic => 'سینمایي';

  @override
  String get playerColorBright => 'روښانه';

  @override
  String get playerColorNight => 'شپه';

  @override
  String get playerColorMono => 'مونو';

  @override
  String get playerColorCustom => 'دودیز';

  @override
  String get playerColorBrightness => 'روښنایی';

  @override
  String get playerColorContrast => 'تضاد';

  @override
  String get playerColorSaturation => 'سنتړیشن';

  @override
  String get playerColorGamma => 'ګاما';

  @override
  String get playerColorHue => 'رنګ‌اړخ';

  @override
  String get playerColorReset => 'بیا تنظیم';

  @override
  String get playerColorAdjust => 'سمون';

  @override
  String get playerShadersOriginal => 'اصلي';

  @override
  String get playerShadersPreviewFailed => 'د مخکتنې لپاره چوکاټ ونه نیول شو';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'ستا شیډرونه';

  @override
  String get playerShadersCustom => 'دودیز شیډرونه';

  @override
  String get playerShadersImport => '.glsl وارد کړه';

  @override
  String get playerShadersNone =>
      'خپل .glsl یا .hook فایلونه وارد کړه او ټیک یې کړه چې ځنځیر شي';

  @override
  String get playerShadersBadFile => 'یو .glsl یا .hook شیډر فایل وټاکه';

  @override
  String get playerDecoder => 'ډیکوډر';

  @override
  String get playerDecoderAuto => 'اتومات';

  @override
  String get playerDecoderAutoSafe => 'اتومات (خوندي)';

  @override
  String get playerDecoderSoftware => 'سافټویر';

  @override
  String get playerDecoderHardware => 'هارډویر';

  @override
  String get playerDecoderHardwarePlus => 'هارډویر+';

  @override
  String get playerVideoOutput => 'د ویډیو محصول';

  @override
  String get playerAudioChannels => 'د غږ چینلونه';

  @override
  String get playerBuffer => 'د بفر اندازه (MB)';

  @override
  String get playerBufferDesc =>
      'هغه حافظه چې پلیر یې د سټرېم د بفر لپاره کارولای شي';

  @override
  String get playerUseMpvConf => 'mpv.conf وکاروه';

  @override
  String get playerUseMpvConfDesc =>
      'کله چې غږول پیل شي ستا په mpv.conf کې غوراوي پلي کړه';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'د mpv تنظیمات سم کړه';

  @override
  String get playerMpvConfDesc =>
      'په هره کرښه یو غوراوی، لکه په عادي mpv.conf کې --hwdec=auto. د [قوسونو] پروفایلونه له پامه غورځول کېږي.';

  @override
  String get playerMpvConfSaved => 'mpv.conf خوندي شو';

  @override
  String get playerUseScripts => 'د mpv سکریپټونه وکاروه';

  @override
  String get playerUseScriptsDesc =>
      'پلګینونه د سکریپټونو له پوښۍ پورته کړه. د Lua یا JavaScript ملاتړ سره د libmpv جوړونې ته اړتیا لري';

  @override
  String get playerScripts => 'د mpv سکریپټونه';

  @override
  String get playerScriptsManage => 'پلګینونه اضافه کړه، لرې کړه او بدل کړه';

  @override
  String get playerScriptsAdd => 'سکریپټ اضافه کړه';

  @override
  String get playerScriptsDesc =>
      'دلته ایښودل شوي Lua، JavaScript او اصلي پلګینونه د غږولو د پیل په وخت پورته کېږي.';

  @override
  String get playerScriptsNone => 'تر اوسه سکریپټونه نشته';

  @override
  String get playerScriptsBadFile => 'یو .lua، .js یا اصلي پلګین فایل وټاکه';

  @override
  String get playerTuning => 'پرمختللی ویډیو ټیونینګ';

  @override
  String get playerTuningDesc =>
      'همغږي، کېش، اندازه‌بدلون او tone mapping لغوه کړه. ناسم ارزښتونه کولای شي غږول خراب کړي';

  @override
  String get playerVideoSync => 'ویډیو همغږي';

  @override
  String get playerInterpolation => 'د چوکاټ انټرپولیشن';

  @override
  String get playerInterpolationDesc =>
      'نرم حرکت، د display-resample همغږي ته اړتیا لري';

  @override
  String get playerPitch => 'د غږ د ټیټ‌والي سمون';

  @override
  String get playerPitchDesc => 'په نورو چټکتیاوو کې غږونه طبیعي وساته';

  @override
  String get playerCacheSeconds => 'کېش (ثانیې)';

  @override
  String get playerReadahead => 'مخکې لوستل (ثانیې)';

  @override
  String get playerThreads => 'د ډیکوډر تارونه';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'په ګرادیانټونو کې د رنګ بانډینګ کم کړه';

  @override
  String get playerDebandIterations => 'د Deband تکرارونه';

  @override
  String get playerDebandThreshold => 'د Deband حد';

  @override
  String get playerCorrectDownscaling => 'سم کوچنی کول';

  @override
  String get playerSigmoid => 'سیګموید لوړول';

  @override
  String get playerScale => 'لوړوونکی';

  @override
  String get playerCscale => 'کروما لوړوونکی';

  @override
  String get playerDscale => 'ټیټوونکی';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'هدفي اوج';

  @override
  String get playerOpenFiles => 'ویډیو فایلونه پرانیزه';

  @override
  String get playerOpenFilesDesc => 'له دې وسیلې فایلونه غږوه';

  @override
  String get playerOpenFolder => 'یوه پوښۍ پرانیزه';

  @override
  String get playerOpenFolderDesc =>
      'په پوښۍ کې ټولې ویډیوګانې د پلی‌لیست په توګه غږوه';

  @override
  String get playerNetworkStream => 'د شبکې سټرېم';

  @override
  String get playerNetworkStreamDesc => 'مستقیم ویډیو یا HLS لینک پرانیزه';

  @override
  String get playerStreamUrl => 'د سټرېم URL';

  @override
  String get playerStreamReferer => 'Referer (اختیاري)';

  @override
  String get playerTorrent => 'تورینټ';

  @override
  String get playerTorrentDesc => 'مګنیټ لینک یا .torrent فایل سټرېم کړه';

  @override
  String get playerMagnetLink => 'مګنیټ لینک یا د تورینټ URL';

  @override
  String get playerPickTorrent => 'یو .torrent فایل وټاکه';

  @override
  String get playerTorrentMissing =>
      'لومړی د تنظیماتو > اضافي توکو څخه د تورینټ اضافه نصب کړه';

  @override
  String get playerNoVideos => 'د غږولو وړ ویډیوګانې ونه موندل شوې';

  @override
  String get playerReset => 'د پلیر تنظیمات بیا تنظیم کړه';

  @override
  String get playerResetDesc => 'د پلیر هر غوراوی ډیفالټ ته ورګرځوه';

  @override
  String get playerResetConfirm => 'د پلیر ټول تنظیمات بیا تنظیم کړې؟';

  @override
  String get playerResetDone => 'د پلیر تنظیمات بیا تنظیم شول';

  @override
  String get playerQuality => 'کیفیت';

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
  String get playerStreams => 'سټرېمونه';

  @override
  String get playerAutoSelect => 'سټرېم په اتوماتیک ډول وټاکه';

  @override
  String get playerAutoSelectDesc =>
      'هغه سټرېم وټاکه چې د دې سرلیک لپاره ستا له وروستۍ ټاکنې سره نږدې وي';

  @override
  String get playerLoadingStreams => 'سټرېمونه لټول کېږي…';

  @override
  String get playerNoStreams => 'دا برخه سټرېمونه نلري';

  @override
  String get playerNoStreamsTitle => 'هېڅ سټرېم ونه موندل شو';

  @override
  String get playerFailed => 'غږول ناکام شو';

  @override
  String get playerTorrentNeeded => 'دا سټرېم یو تورینټ دی';

  @override
  String get playerTorrentNeededDesc =>
      'د مګنیټ لینکونو او .torrent فایلونو د غږولو لپاره د تورینټ اضافه نصب کړه';

  @override
  String get playerOpenAddons => 'اضافي توکي پرانیزه';

  @override
  String get playerTryAnotherStream => 'بل سټرېم هڅه کړه';

  @override
  String get playerEpisodes => 'برخې';

  @override
  String get playerLock => 'کنټرولونه قفل کړه';

  @override
  String get playerFullscreen => 'بشپړ سکرین';

  @override
  String get readerChapters => 'فصلونه';

  @override
  String get readerSettingsTitle => 'د لوستونکي تنظیمات';

  @override
  String get readerPreviousChapter => 'تېر فصل';

  @override
  String get readerNextChapter => 'بل فصل';

  @override
  String get readerFirstChapter => 'دا لومړی فصل دی';

  @override
  String get readerLastChapter => 'ته بشپړ تازه یې';

  @override
  String get readerFailed => 'دا فصل ونه پرانیستل شو';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'دا فصل متن نلري';

  @override
  String get readerPerTitle => 'یوازې د دې سرلیک لپاره';

  @override
  String get readerPerTitleDesc =>
      'دا د لوستونکي تنظیمات یوازې د دې سرلیک لپاره وساته';

  @override
  String get readerSectionReading => 'لوستل';

  @override
  String get readerSectionControls => 'کنټرولونه';

  @override
  String get readerSectionDisplay => 'ښودنه';

  @override
  String get readerSectionNovel => 'ناول';

  @override
  String get readerMode => 'د لوستلو حالت';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'له ښي څخه کيڼ ته';

  @override
  String get readerModeLtr => 'له کيڼ څخه ښي ته';

  @override
  String get readerModeVertical => 'عمودي پاڼې';

  @override
  String get readerModeWebtoon => 'ویب‌تون';

  @override
  String get readerModeContinuous => 'دوامداره سکرول';

  @override
  String get readerScale => 'د انځور اندازه';

  @override
  String get readerScaleFit => 'په سکرین کې برابر';

  @override
  String get readerScaleWidth => 'په پلنوالي کې برابر';

  @override
  String get readerScaleHeight => 'په اوچتوالي کې برابر';

  @override
  String get readerScaleOriginal => 'اصلي اندازه';

  @override
  String get readerScaleSmart => 'هوښیار برابرول';

  @override
  String get readerDoublePage => 'دوه‌ګونې پاڼې';

  @override
  String get readerDoublePageDesc => 'په افقي حالت کې دوه پاڼې څنګ په څنګ وښیه';

  @override
  String get readerDoubleTapZoom => 'د زوم لپاره دوه‌ځلی ټچ';

  @override
  String get readerDoubleTapZoomDesc =>
      'په دوه‌ځلي ټچ سره پاڼه زوم ان او آوټ کړه';

  @override
  String get readerAnimate => 'د پاڼې انیمېشن';

  @override
  String get readerAnimateDesc => 'د پاڼو اړول انیمېټ کړه';

  @override
  String get readerSidePadding => 'اړخیز ځای';

  @override
  String get readerSidePaddingDesc => 'د پاڼو څنګ ځای په سلنه';

  @override
  String get readerPageGap => 'د پاڼو تشه';

  @override
  String get readerPageGapDesc => 'د پاڼو ترمنځ ځای';

  @override
  String get readerAutoNext => 'بل فصل ته دوام ورکړه';

  @override
  String get readerAutoNextDesc => 'کله چې د دې فصل پای لولې بل فصل پورته کړه';

  @override
  String get readerPreload => 'پاڼې مخکې پورته کړه';

  @override
  String get readerPreloadDesc => 'څو پاڼې مخکې ډاونلوډ شي';

  @override
  String get readerTapZones => 'د ټچ سیمې';

  @override
  String get readerTapDefault => 'ډیفالټ';

  @override
  String get readerTapLShaped => 'L بڼه';

  @override
  String get readerTapKindle => 'د Kindle په څېر';

  @override
  String get readerTapEdge => 'یوازې څنډې';

  @override
  String get readerTapOff => 'بند';

  @override
  String get readerInvertTaps => 'د ټچ سیمې بدلې کړه';

  @override
  String get readerInvertTapsDesc => 'تېرې او بلې سیمې سره بدلې کړه';

  @override
  String get readerBackground => 'شاليد';

  @override
  String get readerBackgroundBlack => 'تور';

  @override
  String get readerBackgroundGray => 'خړ';

  @override
  String get readerBackgroundWhite => 'سپین';

  @override
  String get readerBackgroundTheme => 'د اپ تم';

  @override
  String get readerFilter => 'د رنګ فلټر';

  @override
  String get readerFilterNone => 'هېڅ';

  @override
  String get readerFilterGrayscale => 'خړ‌مقیاس';

  @override
  String get readerFilterInvert => 'معکوس';

  @override
  String get readerFilterSepia => 'سیپیا';

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
  String get readerDim => 'تیاره';

  @override
  String get readerDimDesc => 'پاڼې تیارې کړه';

  @override
  String get readerPageNumber => 'د پاڼې شمېره';

  @override
  String get readerPageNumberDesc => 'د لوستلو پر مهال د پاڼې شمېره وښیه';

  @override
  String get readerFullscreen => 'بشپړ سکرین';

  @override
  String get readerFullscreenDesc => 'د سیستم پټۍ پټې کړه';

  @override
  String get readerCropBorders => 'څنډې پرې کړه';

  @override
  String get readerCropBordersDesc =>
      'له پاڼو څخه خالي سپین یا تور حاشیې پرې کړه';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'د غږ کیلي پاڼې اړوي';

  @override
  String get readerVolumeKeysDesc => 'غږ ښکته مخکې ځي، غږ پورته شاته ځي';

  @override
  String get readerBookmarks => 'نښه‌کتابونه';

  @override
  String get readerBookmarkAdd => 'نښه‌کتاب اضافه کړه';

  @override
  String get readerBookmarkRemove => 'نښه‌کتاب لرې کړه';

  @override
  String get readerBookmarksEmpty => 'تر اوسه نښه‌کتابونه نشته';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total څخه $page پاڼه';
  }

  @override
  String get readerAutoScroll => 'اتوماتیک سکرول';

  @override
  String get readerAutoScrollStop => 'اتوماتیک سکرول ودروه';

  @override
  String get readerAutoScrollSpeed => 'د اتوماتیک سکرول چټکتیا';

  @override
  String get readerAutoScrollSpeedDesc =>
      'پاڼې په خپله څومره چټک سکرول یا اړول کېږي';

  @override
  String get readerKeepOn => 'سکرین روښانه وساته';

  @override
  String get readerKeepOnDesc => 'د لوستلو پر مهال مه پرېږده چې سکرین ولوړي';

  @override
  String get readerOrientation => 'سمت';

  @override
  String get readerOrientationFree => 'آزاد';

  @override
  String get readerOrientationPortrait => 'عمودي';

  @override
  String get readerOrientationLandscape => 'افقي';

  @override
  String get readerSaveProgress => 'پرمختګ خوندي کړه';

  @override
  String get readerSaveProgressDesc =>
      'خپله پاڼه په یاد وساته او فصلونه لوستل شوي نښه کړه';

  @override
  String get readerReset => 'د لوستونکي تنظیمات بیا تنظیم کړه';

  @override
  String get readerResetDesc => 'ډیفالټ ته بیرته';

  @override
  String get novelSize => 'د متن اندازه';

  @override
  String get novelFont => 'فونټ';

  @override
  String get novelLineHeight => 'د کرښې اوچتوالی';

  @override
  String get novelParagraph => 'د پراګراف تشه';

  @override
  String get novelMargin => 'حاشیې';

  @override
  String get novelTheme => 'د لوستونکي تم';

  @override
  String get novelThemeApp => 'د اپ تم';

  @override
  String get novelThemeLight => 'روښانه';

  @override
  String get novelThemeSepia => 'سیپیا';

  @override
  String get novelThemeDark => 'تیاره';

  @override
  String get novelThemeBlack => 'تور';

  @override
  String get novelJustify => 'متن برابر کړه';

  @override
  String get novelJustifyDesc => 'متن په دواړو څنډو برابر کړه';

  @override
  String get trackProgressTitle => 'پرمختګ خوندي کړې؟';

  @override
  String trackProgressAnime(String name) {
    return 'پداسې حال کې چې ګورې $name ستا په لیست کې تعقیب کړم؟ د ځایي ساتلو لپاره \"یوازې دا وسیله\" وټاکه، یا هېڅ د نه ساتلو لپاره نه.';
  }

  @override
  String trackProgressManga(String name) {
    return 'کله چې یو فصل پای ته ورسوې $name ستا په لیست کې تعقیب کړم؟ د ځایي ساتلو لپاره \"یوازې دا وسیله\" وټاکه، یا هېڅ د نه ساتلو لپاره نه.';
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
  String get trackProgressYes => 'خوندي کړه';

  @override
  String get trackProgressReset =>
      'د دې ډول لپاره د پرمختګ د خوندي کولو پوښتنه بیا تنظیم شوه، بیا به وپوښتي';

  @override
  String get trackProgressNo => 'نه';

  @override
  String get trackProgressOff => 'بند';

  @override
  String get trackProgressLocal => 'یوازې دا وسیله';

  @override
  String get trackProgressSettingAnime => 'د انیمې پرمختګ تعقیب کړه';

  @override
  String get trackProgressSettingManga => 'د مانګا او ناول پرمختګ تعقیب کړه';

  @override
  String get trackProgressSettingDesc =>
      'کله چې یوه برخه پرانیزې یا یو فصل پای ته رسوې څه وکړم';

  @override
  String get trackProgressAsk => 'وپوښته';

  @override
  String get trackProgressAlways => 'تل';

  @override
  String get dantotsuImport => 'له Dantotsu څخه وارد کړه';

  @override
  String get dantotsuImportDesc =>
      'د Dantotsu د تنظیماتو بیک‌اپ ولوله (.ani، یا کوډ شوی .sani)';

  @override
  String get dantotsuPick => 'د Dantotsu بیک‌اپ وټاکه';

  @override
  String get dantotsuNothing => 'په دې فایل کې هېڅ داسې نشته چې وارد شي';

  @override
  String get dantotsuApply => 'ټاکل شوي وارد کړه';

  @override
  String dantotsuDone(int done, int total) {
    return 'له $total څخه $done وارد شول';
  }

  @override
  String get dantotsuGroupAccounts => 'حسابونه';

  @override
  String get dantotsuGroupAppearance => 'ښکارېدنه';

  @override
  String get dantotsuGroupExtensions => 'اکستنشنونه';

  @override
  String get dantotsuGroupApp => 'اپ';

  @override
  String get dantotsuGroupPlayer => 'پلیر';

  @override
  String get dantotsuAnilist => 'د AniList ننوتل';

  @override
  String get dantotsuMal => 'د MyAnimeList ننوتل';

  @override
  String get dantotsuDiscord => 'د Discord Rich Presence ټوکن';

  @override
  String get dantotsuTheme => 'تم';

  @override
  String get dantotsuReposAnime => 'د انیمې د اکستنشن ذخیرې';

  @override
  String get dantotsuReposManga => 'د مانګا د اکستنشن ذخیرې';

  @override
  String get dantotsuReposNovel => 'د ناول د اکستنشن ذخیرې';

  @override
  String get dantotsuUpdates => 'د تازه معلوماتو ازموینه';

  @override
  String get dantotsuComments => 'نظرونه';

  @override
  String get dantotsuActivity => 'د AniList د خبرتیاوو پولینګ';

  @override
  String get dantotsuDns => 'د DNS چمتو کوونکی';

  @override
  String get dantotsuPlayer => 'د پلیر چټکتیا او د فرعي سرلیک رنګونه';

  @override
  String get dantotsuWarning => 'دا فایل د ننوتلو ټوکنونه لري. خوندي یې وساته.';

  @override
  String get novelIndent => 'پراګرافونه دننه کړه';

  @override
  String get novelIndentDesc => 'هر پراګراف د لومړۍ کرښې دننه کېدو سره پیل کړه';

  @override
  String get novelLetterSpacing => 'د توریو تشه';

  @override
  String get novelSectionTranslate => 'ژباړه';

  @override
  String get sectionExperimental => 'تجربوي';

  @override
  String get kitsuGraphqlDetail => 'چټکې جزیاتو پاڼې (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'یو سرلیک د خپلو کرکټرونو، عملې او ستا ننوتنې سره په یوه غوښتنه کې پورته کړه';

  @override
  String get togetherTitle => 'یو ځای وګوره';

  @override
  String get togetherIntro =>
      'هغه د خونې لینک پیسټ کړه چې ملګري دې درلیږلی. ته سمدلاسه ګډون کوې او کله چې هغوی کتل پیل کړي پلیر پرانیستل کېږي.';

  @override
  String get togetherName => 'ستا نوم';

  @override
  String get togetherConnecting => 'وصلیږي…';

  @override
  String get togetherLeave => 'خونه پرېږده';

  @override
  String get togetherYou => 'ته';

  @override
  String get togetherNoChat => 'تر اوسه پیغامونه نشته';

  @override
  String get togetherChatHint => 'پیغام';

  @override
  String get togetherCopyInvite => 'بلنه کاپي کړه';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'سرور او خونه کاپي شوه';

  @override
  String get togetherConnectionLost => 'اړیکه پرې شوه';

  @override
  String togetherConnectedTo(String room) {
    return 'له $room سره وصل شو';
  }

  @override
  String togetherFailed(String error) {
    return 'وصل نه شو: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ګډون وکړ';
  }

  @override
  String togetherLeft(String name) {
    return '$name ووت';
  }

  @override
  String togetherPaused(String name) {
    return '$name ودرول';
  }

  @override
  String togetherResumed(String name) {
    return '$name بیا پیل کړ';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time ته ټوپ کړ';
  }

  @override
  String get togetherFollowFailed =>
      'د کوربه برخه ونه پرانیستل شوه. پخپله یې پرانیزه.';

  @override
  String get togetherJoinRole => 'په یوې خونې کې ګډون وکړه';

  @override
  String get togetherOpenHost => 'د کوربه برخه پرانیزه';

  @override
  String get togetherShowChat => 'ژوندی چټ وښیه';

  @override
  String get togetherWaitingHost => 'د کوربه د برخې د پیل لپاره انتظار';

  @override
  String get togetherRoomLink => 'د خونې لینک';

  @override
  String get togetherBadLink => 'دا د خونې لینک نه دی';

  @override
  String get togetherHostClosed => 'کوربه خونه وتړله';

  @override
  String get togetherNowPlaying => 'اوس غږیږي';

  @override
  String togetherWatchingCount(int count) {
    return '$count ګوري';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user غواړي ودروي';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user غواړي بیا پیل کړي';
  }

  @override
  String get togetherChip => 'یو ځای';

  @override
  String get togetherSettingsDesc => 'د ملګري خونې ته په لینک ګډون وکړه';

  @override
  String get novelBilingual => 'اصلي او ژباړه وښیه';

  @override
  String get novelBilingualDesc => 'هر پراګراف اصلي متن د ژباړې سره لاندې ښیي';

  @override
  String get novelTranslateTo => 'ته ژباړه';

  @override
  String get novelTranslateOff => 'بند';

  @override
  String get novelSectionSpeech => 'متن څخه غږ';

  @override
  String get novelSpeechRate => 'د خبرو چټکتیا';

  @override
  String get novelSpeechPitch => 'د خبرو ټیټوالی';

  @override
  String get novelSpeak => 'په لوړ غږ ولوله';

  @override
  String get novelSpeakStop => 'په لوړ غږ لوستل ودروه';

  @override
  String get novelTranslate => 'فصل وژباړه';

  @override
  String get novelTranslateShowOriginal => 'اصلي وښیه';

  @override
  String novelTranslateFailed(String error) {
    return 'ژباړه ناکامه شوه: $error';
  }

  @override
  String get novelSpeechUnavailable => 'متن څخه غږ پدې وسیله کې شته نه دی';

  @override
  String get novelSpeechVoice => 'غږ';

  @override
  String get novelSpeechVoiceDefault => 'د سیستم ډیفالټ';

  @override
  String get novelSpeakPrevious => 'تېره کرښه';

  @override
  String get novelSpeakNext => 'بله کرښه';

  @override
  String get novelTapPaging => 'د پاڼې د اړولو لپاره څنډې ټچ کړه';

  @override
  String get novelTapPagingDesc =>
      'د پاڼې د سکرول لپاره کيڼ یا ښي اړخ ټچ کړه، منځ کنټرولونه ښیي';

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
    return '$count دقیقې پاتې';
  }

  @override
  String get novelBold => 'پروت متن';

  @override
  String get novelBoldDesc => 'درنه وزن وکاروه';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter پای ته ورسید';
  }

  @override
  String readerNextUp(String chapter) {
    return 'بل: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'تېر: $chapter';
  }

  @override
  String get readerNoPages => 'دا فصل پاڼې نلري';

  @override
  String get readerLoadingPages => 'پاڼې پورته کېږي…';

  @override
  String get readerSlowPage => 'دا پاڼه لا هم پورته کېږي…';

  @override
  String get readerPageFailed => 'دا پاڼه پورته نه شوه';

  @override
  String get playerShowComments => 'نظرونه وښیه';

  @override
  String get playerHideComments => 'نظرونه پټ کړه';

  @override
  String get playerSubtitles => 'فرعي سرلیکونه';

  @override
  String get playerSubtitlesOff => 'فرعي سرلیکونه بند';

  @override
  String get playerAudio => 'غږ';

  @override
  String get playerAddSubtitle => 'د فرعي سرلیک فایل اضافه کړه';

  @override
  String get playerAddAudio => 'د غږ فایل اضافه کړه';

  @override
  String get playerChapters => 'فصلونه';

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
  String get playerNoChapters => 'فصلونه نشته';

  @override
  String get playerTimestamp => 'د وخت نښه';

  @override
  String get playerAutoPlayDelay => 'د بلې برخې شمېره';

  @override
  String get playerWatchedAt => 'د کتل شوي په توګه حساب کړه په';

  @override
  String playerNextIn(int seconds) {
    return 'بله برخه په ${seconds}s کې';
  }

  @override
  String get playerPlayNow => 'اوس غږوه';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: دا سرلیک به په اتوماتیک ډول پرېښودل شي';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: دا سرلیک به په اتوماتیک ډول نه پرېښودل شي';
  }

  @override
  String get playerAudioLanguage => 'د غږ خوښه شوې ژبه';

  @override
  String get playerLanguageOrderHint =>
      'ژبې په کومې سره بېلې کړه. لومړۍ چې ومومل شي کارول کېږي.';

  @override
  String get playerPip => 'انځور په انځور کې';

  @override
  String get playerAutoPip => 'د وتلو پر مهال انځور په انځور کې';

  @override
  String get playerAutoPipDesc =>
      'کله چې اپ پرېږدې په کوچني کړکۍ کې غږول ادامه ورکړه';

  @override
  String playerAutoPlaying(String title) {
    return 'بل $title غږول کېږي…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'شیډرونه نصب نه شول: $error';
  }

  @override
  String playerChapter(int number) {
    return 'فصل $number';
  }

  @override
  String get playerPerTitle => 'یوازې د دې سرلیک لپاره';

  @override
  String get playerPerTitleDesc =>
      'دا غوراوي د دې سرلیک لپاره وساته او خپل ډیفالټ پرېږده';

  @override
  String get playerSwapGestures => 'د سوایپ اړخونه بدل کړه';

  @override
  String get playerSwapGesturesDesc => 'روښانتیا چپ لور ته او غږ ښي لور ته';

  @override
  String get playerOpenBig => 'په لوی انځور کې پرانیستل';

  @override
  String get playerOpenBigDesc =>
      'پلیر د قسمونو لیست پر ځای بشپړ سکرین پیل کړه';

  @override
  String get playerPauseOnBlur => 'کله چې فوکس نه وي ودرېږه';

  @override
  String get playerPauseOnBlurDesc =>
      'کله چې اپ پټ شي، لکه د خبرتیاوو پینل، ودرېږي او بیرته راتلو سره دوام کوي';

  @override
  String get playerAudioOutput => 'د غږ محصول';

  @override
  String get fontAppDefault => 'د اپ فونټ';

  @override
  String get fontImport => 'فونټ وارد کړه';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'د فرعي سرلیک ځنډ';

  @override
  String get playerAudioDelay => 'د غږ ځنډ';

  @override
  String get playerDelayReset => 'بیا تنظیم';

  @override
  String get playerOnlineSubtitles => 'آنلاین فرعي سرلیکونه';

  @override
  String get playerOnlineSearchHint => 'سرلیک او برخه';

  @override
  String get playerOnlineNone => 'فرعي سرلیکونه ونه موندل شول';

  @override
  String playerOnlineFailed(String error) {
    return 'د فرعي سرلیک لټون ناکام شو: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'دا فرعي سرلیک ډاونلوډ نه شو: $error';
  }

  @override
  String get playerOnlineMatch => 'له دې فایل سره برابر دی';

  @override
  String get playerOnlineEpisode => 'د برخې برابري';

  @override
  String playerOnlineDownloads(int count) {
    return '$count ډاونلوډونه';
  }

  @override
  String get playerSeekPreview => 'د لټون مخکتنه';

  @override
  String get playerSeekPreviewDesc =>
      'د سکرب کولو پر مهال د لټون پټۍ پورته یو کوچنی چوکاټ ښیه. دویم ټیټ ریزولیشن ډیکوډر پرانیزي، نو په سټرېمونو کې اضافي ډیټا کاروي.';

  @override
  String get playerSettingsChip => 'تنظیمات';

  @override
  String get playerAudioDevice => 'د غږ وسیله';

  @override
  String get settingsDownloads => 'ډاونلوډونه';

  @override
  String get settingsDownloadsDesc => 'آفلاین برخې، قطار او آفلاین حالت';

  @override
  String get downloadsTitle => 'ډاونلوډونه';

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
      'قطار او هر څه چې پدې وسیله کې خوندي دي وګوره';

  @override
  String get downloadTitle => 'ډاونلوډ';

  @override
  String get downloadAlready => 'مخکې ډاونلوډ شوی یا په قطار کې دی';

  @override
  String get downloadPickStream => 'کوم سټرېم ډاونلوډ کړو؟';

  @override
  String get downloadPickSubtitle => 'کوم فرعي سرلیک ډاونلوډ کړو؟';

  @override
  String get downloadPickAudio => 'کوم غږیز ټراک ډاونلوډ کړو؟';

  @override
  String get downloadNoAudio => 'اضافي غږ نشته';

  @override
  String get downloadAudio => 'غږ';

  @override
  String get downloadNoSubtitle => 'فرعي سرلیک نشته';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'دا سټرېم د HLS پلی‌لیست دی. د ډاونلوډ لپاره یې د FFmpeg اضافه ته اړتیا ده.';

  @override
  String get downloadSourceMissing => 'د دې برخې سرچینه نصب شوې نه ده';

  @override
  String get downloadWaitingConnection => 'د اړیکې لپاره انتظار';

  @override
  String get downloadSubtitles => 'فرعي سرلیکونه';

  @override
  String get downloadDownloaded => 'ډاونلوډ شو';

  @override
  String get downloadOffline => 'آفلاین';

  @override
  String get downloadDelete => 'ډاونلوډ ړنګ کړه';

  @override
  String get downloadCancel => 'لغوه';

  @override
  String get downloadPause => 'ودروه';

  @override
  String get downloadPaused => 'ودرول شو';

  @override
  String get downloadResume => 'بیا پیل';

  @override
  String get downloadPauseAll => 'ټول ودروه';

  @override
  String get downloadResumeAll => 'ټول بیا پیل کړه';

  @override
  String get downloadQueuedState => 'په قطار کې انتظار';

  @override
  String get downloadResolving => 'سټرېم اخیستل کېږي…';

  @override
  String get downloadUsedFallback => 'برابر سټرېم نشته، لومړی وکارول شو';

  @override
  String get downloadTabQueue => 'قطار';

  @override
  String get downloadTabDone => 'ترسره شو';

  @override
  String get downloadTabFailed => 'ناکام شو';

  @override
  String get downloadEmptyQueue => 'هېڅ نه ډاونلوډېږي';

  @override
  String get downloadEmptyDone => 'تر اوسه هېڅ ډاونلوډ شوی نه دی';

  @override
  String get downloadEmptyFailed => 'ناکام ډاونلوډونه نشته';

  @override
  String get downloadNext => 'بله برخه';

  @override
  String downloadNextN(int count) {
    return 'بلې $count برخې';
  }

  @override
  String downloadUnwatched(int count) {
    return 'ټولې نه‌کتل شوې ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'دا سلسله ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'ټولې برخې ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count برخې په قطار کې',
      one: '۱ برخه په قطار کې',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ډاونلوډ شو';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ډاونلوډ نه شو';
  }

  @override
  String downloadStorage(String size) {
    return '$size د ډاونلوډونو له خوا کارول شوي';
  }

  @override
  String get downloadQueueHeader => 'قطار';

  @override
  String get downloadParallel => 'یو ځای ډاونلوډونه';

  @override
  String get downloadParallelDesc => 'یو یو ډاونلوډ چلوه یا څو یو ځای';

  @override
  String get downloadOneByOne => 'یو په یو';

  @override
  String get downloadNotifications => 'د ډاونلوډ خبرتیاوې';

  @override
  String get downloadNotificationsDesc =>
      'ژوندی پرمختګ چېرته چې سیستم ملاتړ کوي، که نه نو کله چې ډاونلوډ پای ته ورسیږي یادښت';

  @override
  String get downloadNotifyLive => 'ژوندی';

  @override
  String get downloadNotifyDone => 'کله چې ترسره شي';

  @override
  String get downloadNotifyOff => 'بند';

  @override
  String get downloadInfoFile => 'د هر ډاونلوډ تر څنګ د معلوماتو فایل ولیکه';

  @override
  String get downloadInfoFileDesc =>
      'سټرېم، کیفیت، فرعي سرلیک او د پرېښودلو وختونه د کوچني .json فایل په توګه خوندي کوي';

  @override
  String get offlineHeader => 'آفلاین';

  @override
  String get offlineModeDesc =>
      'اتومات یوازې هغه وخت آفلاین ځي چې اپ پرته له اړیکې پیل شي. تل آفلاین پاتې کېږي تر څو چې ته یې بدل کړې.';

  @override
  String get offlineModeOff => 'بند';

  @override
  String get offlineModeAlways => 'تل';

  @override
  String get offlineModeOn =>
      'آفلاین حالت چالان دی. بدلونونه دلته خوندي کېږي او کله چې بیرته آنلاین شې لیږل کېږي.';

  @override
  String get offlineSaved =>
      'پدې وسیله کې خوندي شو، کله چې آنلاین شې همغږی کېږي';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بدلونونه همغږی شول',
      one: '۱ بدلون همغږی شو',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بدلونونه د همغږي کولو په انتظار کې',
      one: '۱ بدلون د همغږي کولو په انتظار کې',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'بدلونونه د همغږي کولو په انتظار کې';

  @override
  String get offlinePendingNone => 'هېڅ په انتظار کې نشته';

  @override
  String get offlineSyncNow => 'همدا اوس همغږی کړه';

  @override
  String get offlineDiscard => 'لرې یې کړه';

  @override
  String get downloadNotOffline =>
      'دا برخه ډاونلوډ شوې نه ده، نو آفلاین شته نه ده';

  @override
  String get offlineModeChip => 'آفلاین';

  @override
  String get downloadNextChapter => 'بل فصل';

  @override
  String downloadNextChapters(int count) {
    return 'بلې $count فصلونه';
  }

  @override
  String downloadUnread(int count) {
    return 'ټول نه‌لوستل شوي ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'ټول فصلونه ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total پاڼې';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count پاڼې';
  }

  @override
  String get downloadFfmpegTitle => 'د FFmpeg اضافه ته اړتیا ده';

  @override
  String get downloadFfmpegBody =>
      'دا سټرېم د HLS پلی‌لیست دی. د FFmpeg اضافه یې ټوټې په یوه mp4 فایل کې سره نښلوي. له دې پرته ټوټې د برخې په پوښۍ کې پاتې کېږي او له هغه ځایه غږول کېږي.';

  @override
  String get downloadFfmpegInstall => 'نصب کړه';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg نصبېږي، دا ښايي یو څه وخت ونیسي…';

  @override
  String get downloadFinishing => 'ټوټې په یوه فایل کې سره نښلول کېږي…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total برخې';
  }

  @override
  String get downloadTorrentNoFile => 'تورینټ د ډاونلوډ لپاره ویډیو فایل نلري';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count توکي ډاونلوډېږي',
      one: '۱ توکی ډاونلوډېږي',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'کتل شوي ډاونلوډونه ړنګ کړه';

  @override
  String get downloadAutoDeleteDesc =>
      'کله چې ستا پرمختګ هغې برخې یا فصل ته ورسیږي ډاونلوډ لرې کوي';

  @override
  String get downloadConnections => 'په هر ډاونلوډ اړیکې';

  @override
  String get downloadConnectionsDesc =>
      'لوی فایل په هغو ټوټو ویشي چې په یو وخت کې راوړل کېږي. ځینې سرورونه دا محدودوي.';

  @override
  String get downloadPlayChoice => 'له دې غږوه';

  @override
  String get downloadPlayLocalDesc => 'هغه فایل چې پدې وسیله کې خوندي دی';

  @override
  String get downloadPlayStream => 'آنلاین سټرېم کړه';

  @override
  String get downloadPlayStreamDesc => 'برخه له سرچینې پورته کړه';

  @override
  String get offlineFeedTitle => 'پدې وسیله کې ډاونلوډ شو';

  @override
  String get offlineFeedEmpty =>
      'کله چې آنلاین یې یو څه ډاونلوډ کړه او دلته به ښکاره شي';

  @override
  String get offlineEnabled => 'آفلاین حالت چالان دی';

  @override
  String get offlineDisabled => 'آفلاین حالت بند دی';

  @override
  String get downloadReadChoice => 'له دې ولوله';

  @override
  String get downloadReadLocalDesc => 'هغه پاڼې چې پدې وسیله کې خوندي دي';

  @override
  String get downloadReadOnline => 'آنلاین ولوله';

  @override
  String get downloadReadOnlineDesc => 'فصل له سرچینې پورته کړه';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name له دې وسیلې ړنګ کړې؟';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'د $name ډاونلوډ لغوه کړې؟ هغه څه چې مخکې ډاونلوډ شوي ړنګېږي.';
  }

  @override
  String get downloadFfmpegFolder => 'د پوښۍ په توګه وساته';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'هغه $count بدلونونه وغورځوې چې هېڅکله نه دي لیږل شوي؟ دا نه شي بیرته کېدای.',
      one: 'هغه بدلون وغورځوې چې هېڅکله نه دی لیږل شوی؟ دا نه شي بیرته کېدای.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'د Wi-Fi لپاره انتظار';

  @override
  String get downloadWaitingMetered => 'په محدود اړیکه کې ودرول شو';

  @override
  String get downloadWifiOnly => 'یوازې Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'کله چې په موبایل ډیټا یې ډاونلوډونه انتظار کوي';

  @override
  String get downloadMetered => 'په محدودو اړیکو کې ودروه';

  @override
  String get downloadMeteredDesc =>
      'په هغه Wi-Fi هم انتظار کوي چې ستا وسیله یې محدود نښه کوي';

  @override
  String get downloadSpeedLimit => 'د چټکتیا حد';

  @override
  String get downloadSpeedLimitDesc => 'ټول ډاونلوډ چټکتیا محدوده کوي';

  @override
  String get downloadUnlimited => 'بې حده';

  @override
  String get downloadMoveToTop => 'پورته ته یې کړه';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds سیډونه · $peers پیرونه';
  }

  @override
  String get downloadTorrentFile => 'کوم فایل؟';

  @override
  String get downloadTorrentAuto => 'برخه په اتوماتیک ډول برابره کړه';

  @override
  String get downloadTorrentLoading => 'تورینټ لوستل کېږي…';

  @override
  String get watchAutoSource => 'بلې سرچینې ته په اتوماتیک ډول واوړه';

  @override
  String get watchAutoSourceDesc =>
      'که سرچینه سرلیک ونه مومي یا پورته نه شي، بله نصب شوې سرچینه هڅه کړه';

  @override
  String get extensionTest => 'اکستنشنونه وازمایه';

  @override
  String get extensionTestCopy => 'ناکامۍ او د هغو لاګونه کاپي کړه';

  @override
  String get extensionTestQuery => 'د لټون کلمه';

  @override
  String get extensionTestRun => 'چلوه';

  @override
  String get extensionTestStop => 'ودروه';

  @override
  String get extensionTestNone => 'د دې ډول نصب شوي اکستنشنونه نشته';

  @override
  String get extensionTestNotRun => 'لا نه دی ازمول شوی';

  @override
  String get extensionTestSearch => 'لټون';

  @override
  String get extensionTestDetail => 'جزیات';

  @override
  String get extensionTestUnits => 'برخې / فصلونه';

  @override
  String get extensionTestLinks => 'سټرېمونه / پاڼې';

  @override
  String extensionTestFailedAt(String step) {
    return 'په $step کې ناکام شو';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'له $total څخه $done ازمول شوي · $passed بریالي · $failed ناکام';
  }

  @override
  String get extensionTestCopyLogs => 'ټول له بشپړو لاګونو سره کاپي کړه';

  @override
  String get onboardingFeaturesTitle => 'هر څه په یو ځای کې';

  @override
  String get onboardingFeaturesBody =>
      'هر هغه څه چې تعقیبوې یې، ګورې یې او لولې یې، پرته له دې چې اپونه بدل کړې.';

  @override
  String get onboardingFeatureTrack => 'هر څه تعقیب کړه';

  @override
  String get onboardingFeatureTrackDesc =>
      'په AniList، MyAnimeList، Simkl، Kitsu او MangaBaka کې لیستونه، پرمختګ او نمرې.';

  @override
  String get onboardingFeatureWatch => 'وګوره او ولوله';

  @override
  String get onboardingFeatureWatchDesc =>
      'اکستنشنونه نصب کړه او انیمې سټرېم کړه یا مانګا او ناولونه په اپ کې ولوله.';

  @override
  String get onboardingFeatureOffline => 'آفلاین یې کړه';

  @override
  String get onboardingFeatureOfflineDesc =>
      'برخې او فصلونه ډاونلوډ کړه، او پرته له اړیکې هم دوام ورکړه.';

  @override
  String get onboardingFeatureSync => 'لیستونه همغږي وساته';

  @override
  String get onboardingFeatureSyncDesc =>
      'خپل لیست د خدمتونو ترمنځ نقل کړه، یا پرېږده چې هغه چې مخکې وي وګټي.';

  @override
  String get onboardingServices => 'سره کار کوي';

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
