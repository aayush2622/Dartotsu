// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'بهترین اپِ جدید برای\nردیابی انیمه و مانگا';

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
  String get loadMore => 'بارگذاری بیشتر';

  @override
  String get login => 'ورود';

  @override
  String get continueAsGuest => 'ادامه به‌عنوان مهمان';

  @override
  String get getStarted => 'شروع کنیم';

  @override
  String get loginWithToken => 'ورود با توکن';

  @override
  String get pasteTokenHint => 'توکن دسترسی‌ت رو بچسبون';

  @override
  String loginTo(String service) {
    return 'ورود به $service';
  }

  @override
  String get settings => 'تنظیمات';

  @override
  String get account => 'حساب';

  @override
  String get about => 'درباره';

  @override
  String get language => 'زبان';

  @override
  String get animationSpeed => 'انیمیشن‌ها';

  @override
  String get animationSpeedDesc => 'سرعت انتقال‌ها و افکت‌های ورود تو کل اپ';

  @override
  String get animationSpeedOff => 'خاموش';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'اکستنشن‌ها',
      one: 'اکستنشن',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'منبع ناشناس';

  @override
  String get install => 'نصب';

  @override
  String get update => 'به‌روزرسانی';

  @override
  String get uninstall => 'حذف نصب';

  @override
  String get updateInstallCancelled =>
      'نصب لغو شد. اگه اندروید گفت برنامه با نسخهٔ نصب‌شده تداخل داره، امضا فرق می‌کنه: اول نسخهٔ فعلی رو حذف کن، بعد آپدیت رو نصب کن';

  @override
  String updateInstallFailed(String error) {
    return 'آپدیت نشد: $error';
  }

  @override
  String get appLock => 'قفل برنامه';

  @override
  String get appLockDesc =>
      'موقع باز کردن برنامه یا برگشتن بعد از یه مدت، رمز بخواد';

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
  String get appLockUnlock => 'رمزت رو وارد کن';

  @override
  String get appLockWrong => 'رمز اشتباهه';

  @override
  String appLockWait(String seconds) {
    return 'زیاد تلاش کردی، $seconds ثانیه صبر کن';
  }

  @override
  String get appLockNew => 'یه رمز انتخاب کن';

  @override
  String get appLockNewHint => '۴ تا ۸ رقم';

  @override
  String get appLockConfirm => 'دوباره وارد کن';

  @override
  String get appLockMismatch => 'رمزها یکی نیستن';

  @override
  String get appLockOn => 'رمز تنظیم شد';

  @override
  String get appLockRemoveTitle => 'برای خاموش کردن قفل، رمزت رو وارد کن';

  @override
  String get installFailed => 'نصب نشد';

  @override
  String get updateFailed => 'به‌روزرسانی نشد';

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
  String get noSourceSettings => 'این منبع هیچ تنظیماتی نداره';

  @override
  String get addPluginRepository => 'افزودن مخزن پلاگین';

  @override
  String get pluginIndexUrlHint => 'آدرس فهرست پلاگین';

  @override
  String get addRepository => 'افزودن مخزن';

  @override
  String get pluginRepoUpdated => 'مخزن پلاگین به‌روز شد';

  @override
  String get pluginRepoUpdateFailed => 'تازه‌سازی مخزن پلاگین ناموفق بود';

  @override
  String get ok => 'باشه';

  @override
  String get cancel => 'لغو';

  @override
  String get yes => 'آره';

  @override
  String get no => 'نه';

  @override
  String get save => 'ذخیره';

  @override
  String get reset => 'بازنشانی';

  @override
  String get clear => 'پاک کردن';

  @override
  String get test => 'تست';

  @override
  String get testing => 'در حال تست…';

  @override
  String get resolving => 'در حال تشخیص…';

  @override
  String get none => 'هیچ‌کدوم';

  @override
  String get selectMediaService => 'انتخاب سرویس مدیا';

  @override
  String get pickColor => 'یه رنگ انتخاب کن';

  @override
  String get colorPickerCustom => 'سفارشی';

  @override
  String get colorPickerTransparent => 'شفاف';

  @override
  String get ltr => 'چپ به راست';

  @override
  String get searchSettings => 'جستجو تو تنظیمات';

  @override
  String nothingMatches(String query) {
    return 'چیزی با «$query» جور نشد';
  }

  @override
  String searchCategory(String category) {
    return 'جستجو تو $category';
  }

  @override
  String get settingsAppearance => 'ظاهر';

  @override
  String get settingsAppearanceDesc => 'تم، رنگ‌ها، حالت شیشه‌ای';

  @override
  String get settingsGeneral => 'عمومی';

  @override
  String get settingsGeneralDesc => 'زبان و رفتار اپ';

  @override
  String get settingsNetwork => 'شبکه';

  @override
  String get settingsNetworkDesc => 'یوزر ایجنت، گواهی‌ها، DNS و پروکسی';

  @override
  String get settingsAccountDesc => 'سرویس ردیابی و ورود';

  @override
  String get settingsUpdates => 'به‌روزرسانی‌ها';

  @override
  String get amoledBlack => 'مشکی آمولد';

  @override
  String get amoledBlackDesc => 'سطوح مشکی خالص تو حالت تاریک';

  @override
  String get glassMode => 'حالت شیشه‌ای';

  @override
  String get glassModeDesc => 'سطوح مات روی تصاویر کتابخونه‌ت';

  @override
  String get shelfFrame => 'قاب دور بخش‌ها';

  @override
  String get shelfFrameDesc =>
      'پشت هر ردیف یه کارت نشون بده، یا بذار ردیف‌ها مستقیم روی صفحه باشن';

  @override
  String get settingsExtensionsDesc =>
      'مدیرهای منبع، مخزن‌ها و گزینه‌های اکستنشن';

  @override
  String get settingsAddons => 'افزونه‌ها';

  @override
  String get customPath => 'مسیر ذخیره‌سازی دلخواه';

  @override
  String get customPathDesc =>
      'جایی که داده‌های اپ نگه داشته می‌شه. برای بازنشانی، نگه دار';

  @override
  String get selectDirectory => 'انتخاب پوشه';

  @override
  String get differentCacheManager => 'کش جایگزین تصاویر';

  @override
  String get differentCacheManagerDesc =>
      'از یه مدیر کش دیگه برای تصاویر استفاده کن';

  @override
  String get settingsSync => 'Sync settings';

  @override
  String get settingsSyncDesc =>
      'Keep your settings the same on every device. They are stored in a private gist in your GitHub account';

  @override
  String get settingsSyncSwitch => 'Sync on change';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Sign in with GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Settings are stored in a private gist in your account';

  @override
  String get settingsSyncToken => 'Use a personal access token';

  @override
  String get settingsSyncTokenDesc =>
      'Create one at github.com/settings/tokens with only the gist permission';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Signed in as $user';
  }

  @override
  String get settingsSyncSignOut => 'Sign out';

  @override
  String settingsSyncCode(Object code) {
    return 'Enter $code on GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel.';

  @override
  String get settingsSyncSignInFailed => 'Could not sign in to GitHub';

  @override
  String get settingsSyncOn => 'On';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync.';

  @override
  String get settingsSyncChangedOnly =>
      'Only settings you have changed are stored. Everything else uses its default on every device. The cloud icon shows what is already on the server.';

  @override
  String get settingsSyncOffCategory =>
      'Not syncing. These stay on this device and the server copy is left as it is.';

  @override
  String get settingsSyncCatOther => 'Watch, read and services';

  @override
  String get settingsSyncTitles => 'Watch progress and titles';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titles and $resume resume entries on the server';
  }

  @override
  String get settingsSyncTitlesNone => 'Nothing uploaded yet';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds.';

  @override
  String get settingsSyncConnect => 'Not connected';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device.';

  @override
  String get settingsSyncFailedTitle => 'Sync failed';

  @override
  String get settingsSyncPaused => 'Paused';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off.';

  @override
  String get settingsSyncUpToDate => 'Up to date';

  @override
  String get settingsSyncRetry => 'Retry';

  @override
  String get settingsSyncAccount => 'GitHub account';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account.';

  @override
  String get settingsSyncWaiting => 'Waiting for you to approve on GitHub';

  @override
  String get settingsSyncCopyCode => 'Tap the code to copy it';

  @override
  String get settingsSyncCancel => 'Cancel';

  @override
  String get settingsSyncStatSettings => 'Settings';

  @override
  String get settingsSyncStatTitles => 'Titles';

  @override
  String get settingsSyncStatShelf => 'Resume';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Uploaded $time from $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed',
      one: '1 changed',
      zero: 'Nothing changed yet',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Accounts and passwords';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them.';

  @override
  String get settingsSyncSecretsOn => 'Accounts are synced and encrypted';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others.';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts.';

  @override
  String get settingsSyncPassphraseSet => 'Set a passphrase';

  @override
  String get settingsSyncPassphraseEnter => 'Enter your passphrase';

  @override
  String get settingsSyncPassphraseField => 'Passphrase';

  @override
  String get settingsSyncPassphraseConfirm => 'Repeat the passphrase';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones.';

  @override
  String get settingsSyncPassphraseWrong => 'Wrong passphrase';

  @override
  String get settingsSyncPassphraseMismatch => 'The passphrases do not match';

  @override
  String get settingsSyncPassphraseShort => 'Use at least 6 characters';

  @override
  String get settingsSyncSecretsStop => 'Stop syncing accounts';

  @override
  String get settingsSyncSecretsDelete => 'Delete from GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase.';

  @override
  String get settingsSyncWhat => 'What to sync';

  @override
  String get settingsSyncServer => 'On the server';

  @override
  String get settingsSyncServerEmpty => 'Nothing uploaded yet';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count settings, uploaded $time from $device';
  }

  @override
  String get settingsSyncThisDevice => 'this device';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count settings on the server',
      one: '1 setting on the server',
      zero: 'Nothing on the server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sync now';

  @override
  String get settingsSyncRunning => 'Syncing…';

  @override
  String get settingsSyncNever => 'Not synced yet';

  @override
  String settingsSyncLast(Object time) {
    return 'Last synced $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sync failed: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device.';

  @override
  String get backupAndRestore => 'پشتیبان‌گیری و بازیابی';

  @override
  String get backupAndRestoreDesc => 'تنظیماتت رو ذخیره یا بارگذاری کن';

  @override
  String get backup => 'پشتیبان';

  @override
  String get restore => 'بازیابی';

  @override
  String get loadExtensionsIcon => 'بارگذاری آیکون اکستنشن‌ها';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'آیکون منبع‌ها رو تو لیست اکستنشن‌ها نشون بده';

  @override
  String get sectionStorage => 'ذخیره‌سازی';

  @override
  String get sectionManagers => 'مدیرها';

  @override
  String get sectionOptions => 'گزینه‌ها';

  @override
  String get backupTabBackup => 'پشتیبان‌گیری';

  @override
  String get backupTabRestore => 'بازیابی';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys تنظیم تو $categories دسته';
  }

  @override
  String backupLastBackup(Object time) {
    return 'آخرین پشتیبان $time';
  }

  @override
  String get backupNever => 'هنوز پشتیبانی نگرفتی';

  @override
  String get backupSelectAll => 'انتخاب همه';

  @override
  String get backupClearAll => 'پاک کردن';

  @override
  String backupKeys(Object count) {
    return '$count تنظیم';
  }

  @override
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

  @override
  String get backupPassword => 'رمز عبور (اختیاری)';

  @override
  String get backupPasswordHint => 'خالی بذار تا از پیش‌فرض استفاده بشه';

  @override
  String get backupSensitive =>
      'توکن‌های ورود هم توشه. این فایل رو پیش خودت نگه دار';

  @override
  String get backupCreate => 'ساخت پشتیبان';

  @override
  String backupSaved(Object name) {
    return 'پشتیبان تو $name ذخیره شد';
  }

  @override
  String backupFailed(Object error) {
    return 'پشتیبان‌گیری ناموفق بود: $error';
  }

  @override
  String get backupPickFile => 'یه فایل پشتیبان انتخاب کن';

  @override
  String get backupPickFileDesc => 'یه فایل .json که Dartotsu ساخته انتخاب کن';

  @override
  String get backupChooseAnother => 'انتخاب فایل دیگه';

  @override
  String get backupCreatedAt => 'ساخته‌شده';

  @override
  String get backupAppVersion => 'نسخه اپ';

  @override
  String get backupDevice => 'دستگاه';

  @override
  String get backupAccounts => 'حساب‌ها';

  @override
  String get backupSize => 'حجم';

  @override
  String get backupEncrypted => 'رمزدار';

  @override
  String get backupUnlock => 'باز کردن قفل';

  @override
  String get backupWrongPassword => 'این فایل خونده نشد. رمز رو چک کن';

  @override
  String get backupRestoreSelected => 'بازیابی موارد انتخابی';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count تنظیم بازیابی بشه؟ مقدارهای فعلی این دسته‌ها بازنویسی می‌شن.';
  }

  @override
  String get backupRestored =>
      'بازیابی شد. برای اعمال همه‌چیز اپ رو دوباره باز کن';

  @override
  String backupRestoreFailed(Object error) {
    return 'بازیابی ناموفق بود: $error';
  }

  @override
  String get backupSelectOne => 'حداقل یه دسته انتخاب کن';

  @override
  String get backupCatTheme => 'ظاهر';

  @override
  String get backupCatThemeDesc => 'تم، رنگ‌ها، شیشه، فونت‌ها و سبک کارت';

  @override
  String get backupCatCommon => 'عمومی';

  @override
  String get backupCatCommonDesc =>
      'زبان، ذخیره‌سازی، شبکه و گزینه‌های اکستنشن';

  @override
  String get backupCatPlayer => 'پخش‌کننده';

  @override
  String get backupCatPlayerDesc => 'تنظیمات پخش‌کننده';

  @override
  String get backupCatReader => 'خوانشگر';

  @override
  String get backupCatReaderDesc => 'تنظیمات خوانشگر';

  @override
  String get backupCatProtected => 'حساب‌ها';

  @override
  String get backupCatProtectedDesc => 'توکن‌های ورود و داده‌های حساب';

  @override
  String get backupCatOther => 'سرویس‌ها و فید';

  @override
  String get backupCatOtherDesc => 'چیدمان فید، لیست‌ها و گزینه‌های سرویس';

  @override
  String get logFile => 'فایل لاگ';

  @override
  String get logFileDesc =>
      'لاگ اپ رو به اشتراک بذار، یا مسیرش رو تو لینوکس کپی کن';

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
  String get logFileCopied => 'مسیر لاگ کپی شد';

  @override
  String get donateSheetTitle => 'از Dartotsu خوشت اومده؟';

  @override
  String get donateSheetMessage =>
      'Dartotsu رو یه نفر می‌سازه و نگه می‌داره. اگه به دردت می‌خوره، به فکر حمایت از توسعه‌ش باش.';

  @override
  String get donateLater => 'بعداً';

  @override
  String get glassBackground => 'پس‌زمینه شیشه‌ای';

  @override
  String get glassBackgroundDesc => 'بنر پروفایلت، مگه اینکه لینک تصویر بذاری';

  @override
  String get glassBackgroundHint => 'لینک تصویر (برای بنر خودت خالی بذار)';

  @override
  String get followCover => 'دنبال کردن کاور';

  @override
  String get followCoverDesc =>
      'رنگ‌ها پس‌زمینه رو دنبال می‌کنن و تو صفحه‌های جزئیات، کاور رو';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'سبک کارت';

  @override
  String get cardStyleDesc => 'جای عنوان، اندازه، پیشرفت و نشان‌ها';

  @override
  String get customFont => 'فونت';

  @override
  String get customFontDesc => 'پیش‌فرض، یه فایل از دستگاهت، یا Google Fonts';

  @override
  String get customFontError => 'اون فایل فونت بارگذاری نشد';

  @override
  String get googleFontError => 'اون فونت دانلود نشد';

  @override
  String get yourFonts => 'فونت‌های تو';

  @override
  String get addFontFile => 'افزودن فایل فونت…';

  @override
  String get browseGoogleFonts => 'گشتن تو Google Fonts…';

  @override
  String get searchGoogleFonts => 'جستجو تو Google Fonts';

  @override
  String get defaultFont => 'پیش‌فرض';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'رنگ پویا از سیستم';

  @override
  String get jsonTheme => 'فایل تم سفارشی';

  @override
  String get jsonThemeDesc =>
      'رنگ‌های زنده از ~/.config/dartotsu/theme.json (یه اسکریپت سفارشی، یا ویرایش‌های خودت)';

  @override
  String get themeMode => 'حالت تم';

  @override
  String get mode => 'حالت';

  @override
  String get trackingService => 'سرویس ردیابی';

  @override
  String get signOut => 'خروج از حساب';

  @override
  String get signIn => 'ورود به حساب';

  @override
  String get notSignedIn => 'وارد نشدی';

  @override
  String signOutOf(String service) {
    return 'از $service خارج می‌شی؟';
  }

  @override
  String get checkForUpdates => 'بررسی به‌روزرسانی';

  @override
  String get checkForUpdatesDesc => 'وقتی ریلیز جدید GitHub اومد خبرم کن';

  @override
  String get updateChannel => 'کانال به‌روزرسانی';

  @override
  String get channel => 'کانال';

  @override
  String get stable => 'پایدار';

  @override
  String get preRelease => 'پیش‌انتشار';

  @override
  String get alpha => 'آلفا';

  @override
  String get checkNow => 'الان بررسی کن';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'پیش‌فرض';

  @override
  String currentlyUsing(String value) {
    return 'الان: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'پیش‌فرض (Cloudflare)';

  @override
  String get proxy => 'پروکسی';

  @override
  String get proxyProtocol => 'نوع';

  @override
  String get proxyHost => 'هاست';

  @override
  String get proxyPort => 'پورت';

  @override
  String get proxyUsername => 'نام کاربری';

  @override
  String get proxyPassword => 'رمز عبور';

  @override
  String get optional => 'اختیاری';

  @override
  String get clearCookies => 'پاک کردن کوکی‌ها';

  @override
  String get clearCookiesDesc => 'همه کوکی‌های ذخیره‌شده رو پاک کن';

  @override
  String notImplementedArea(String area) {
    return '$area — به‌زودی';
  }

  @override
  String notImplementedService(String service) {
    return '$service هنوز از این پشتیبانی نمی‌کنه.';
  }

  @override
  String get couldNotLoadResults => 'نتیجه‌ها بارگذاری نشدن';

  @override
  String get updateCheckFailed => 'بررسی به‌روزرسانی ناموفق بود';

  @override
  String get highRefreshRate => 'نرخ تازه‌سازی بالا';

  @override
  String get highRefreshRateDesc =>
      'از بالاترین نرخ تازه‌سازی که صفحه‌ت پشتیبانی می‌کنه استفاده کن';

  @override
  String get imageSave => 'ذخیره تصویر';

  @override
  String imageSavedTo(String path) {
    return 'تو $path ذخیره شد';
  }

  @override
  String get imageActionFailed => 'تصویر دانلود نشد';

  @override
  String get imageTitleCover => 'کاور';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'بنر';

  @override
  String get imageTitleAvatar => 'عکس پروفایل';

  @override
  String get verifyTls => 'تأیید گواهی‌ها';

  @override
  String get verifyTlsDesc =>
      'سرورهایی که گواهی HTTPS نامعتبر دارن رد می‌شن. فقط برای منبعی که گواهی خودامضا داره خاموشش کن';

  @override
  String get clearCookiesConfirm =>
      'همه کوکی‌های ذخیره‌شده پاک بشن؟ ممکنه از بعضی منبع‌ها خارج بشی.';

  @override
  String get version => 'نسخه';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'سورس، ایشوها و ریلیزها';

  @override
  String get discordDesc => 'انجمن و پشتیبانی';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'حمایت از توسعه';

  @override
  String get contributors => 'مشارکت‌کننده‌ها';

  @override
  String get contributorsDesc => 'آدم‌هایی که Dartotsu رو ساختن';

  @override
  String get contributorsLoadFailed => 'مشارکت‌کننده‌ها بارگذاری نشدن';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'پروژه‌هایی که روی Dartotsu ساخته شدن';

  @override
  String get forksEmpty => 'فورکی پیدا نشد';

  @override
  String get sectionColors => 'رنگ‌ها';

  @override
  String get sectionDisplay => 'نمایش';

  @override
  String get sectionStyle => 'سبک';

  @override
  String get sectionCommunity => 'انجمن';

  @override
  String get sectionAppInfo => 'اطلاعات اپ';

  @override
  String get sectionRequests => 'درخواست‌ها';

  @override
  String get sectionDnsProxy => 'DNS و پروکسی';

  @override
  String get onboardingBack => 'برگشت';

  @override
  String get onboardingNext => 'بعدی';

  @override
  String get onboardingSkip => 'رد شدن';

  @override
  String get onboardingPaletteTitle => 'به سلیقه‌ی خودت دربیار';

  @override
  String get onboardingPaletteBody =>
      'یه پالت انتخاب کن. همه رنگ‌های تأکیدی، از کارت‌ها تا پخش‌کننده، ازش پیروی می‌کنن.';

  @override
  String get themeModeAuto => 'خودکار';

  @override
  String get themeModeLight => 'روشن';

  @override
  String get themeModeDark => 'تاریک';

  @override
  String get onboardingSyncTitle => 'کتابخونه‌ت رو همگام کن';

  @override
  String get onboardingSyncBody =>
      'با AniList وارد شو تا لیست‌ها، پیشرفت و امتیازهات همراهت بیان. یا رد شو و مهمان بگرد.';

  @override
  String get onboardingOpenLinks =>
      'لینک‌های AniList و مخزن توی Dartotsu باز بشن';

  @override
  String get onboardingPermsTitle => 'دسترسی‌ها';

  @override
  String get onboardingPermsBody =>
      'الان اجازه بده تا دانلودها، به‌روزرسانی‌ها و هشدارها بدون وقفه کار کنن. بعداً می‌تونی از تنظیمات سیستم عوضشون کنی.';

  @override
  String get permNotifications => 'اعلان‌ها';

  @override
  String get permNotificationsDesc => 'پیشرفت دانلود، قسمت‌های جدید و پاسخ‌ها';

  @override
  String get permStorage => 'دسترسی به همه فایل‌ها';

  @override
  String get permStorageDesc => 'دانلودها رو تو پوشه عمومی Dartotsu ذخیره کن';

  @override
  String get permInstall => 'نصب به‌روزرسانی‌ها';

  @override
  String get permInstallDesc => 'بذار Dartotsu به‌روزرسانی‌های خودش رو نصب کنه';

  @override
  String get permBattery => 'باتری بدون محدودیت';

  @override
  String get permBatteryDesc => 'دانلودهای طولانی رو تو پس‌زمینه ادامه بده';

  @override
  String get permGrant => 'اجازه دادن';

  @override
  String get linkOpenInApp => 'باز کردن لینک‌ها تو Dartotsu';

  @override
  String get linkOpenInAppDesc => 'بذار لینک‌های AniList و مخزن اپ رو باز کنن';

  @override
  String get reviewsTitle => 'نقدها';

  @override
  String get reviewsEmpty => 'هنوز نقدی نیست';

  @override
  String get reviewsFailed => 'نقدها بارگذاری نشدن';

  @override
  String get reviewHelpfulQuestion => 'این نقد به دردت خورد؟';

  @override
  String get reviewVoteFailed => 'رأیت ذخیره نشد';

  @override
  String reviewHelpful(int n, int total) {
    return '$n نفر از $total نفر این رو مفید دونستن';
  }

  @override
  String get calendarTitle => 'برنامه پخش';

  @override
  String get calendarToday => 'امروز';

  @override
  String get calendarEmpty => 'این روز چیزی پخش نمی‌شه';

  @override
  String get calendarFailed => 'برنامه بارگذاری نشد';

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
    return 'قسمت $n';
  }

  @override
  String get shareAnalytics => 'اشتراک داده‌های استفاده‌ی ناشناس';

  @override
  String get shareAnalyticsDesc =>
      'تعداد کاربر و گزارش کرش ناشناس. بدون حساب یا اطلاعات شخصی';

  @override
  String get linkOpenAnilist => 'باز کردن لینک‌های AniList تو Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'مدیریت لینک رو روشن کن تا لینک‌های anilist.co اپ رو باز کنن';

  @override
  String get linkSettingsFailed => 'تنظیمات سیستم باز نشد';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'نشون بده تو پروفایل Discord چیکار می‌کنی. توکن Discord لازمه.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'نشون بده تو پروفایل Discord چیکار می‌کنی. اپ دسکتاپ Discord باید باز باشه.';

  @override
  String get discordBrowsing => 'نمایش فعالیت گشت‌وگذار';

  @override
  String get discordBrowsingDesc =>
      'تب، صفحه یا پروفایلی که داری نگاه می‌کنی رو هم نشون بده، نه فقط چیزی که می‌بینی یا می‌خونی.';

  @override
  String get discordLookHeader => 'ظاهر پرزنس';

  @override
  String get discordActivityType => 'نوع فعالیت';

  @override
  String get discordActivityTypeDesc =>
      'Discord چطور بنویسه: «Watching …» یا «Playing …». حالت خودکار برای انیمه Watching و برای بقیه Playing می‌ذاره.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'نمایش کاورها';

  @override
  String get discordCoversDesc => 'کاور و آیکون Dartotsu روی کارت.';

  @override
  String get discordTimer => 'نمایش تایمر';

  @override
  String get discordTimerDesc => 'زمان سپری‌شده یا باقی‌مونده زیر عنوان.';

  @override
  String get discordButtons => 'نمایش دکمه‌ها';

  @override
  String get discordButtonsDesc =>
      'دکمه‌های «View anime / manga» و «Open Dartotsu».';

  @override
  String get discordHideTitles => 'مخفی کردن عنوان‌ها';

  @override
  String get discordHideTitlesDesc =>
      'اسم انیمه و مانگا (با کاور و لینکشون) رو با «Something private» عوض کن.';

  @override
  String get discordConnectionHeader => 'اتصال';

  @override
  String get listSearchHint => 'جستجو تو این لیست';

  @override
  String get listSort => 'مرتب‌سازی';

  @override
  String get listFilter => 'فیلتر';

  @override
  String get listRandom => 'عنوان تصادفی';

  @override
  String get listReverse => 'ترتیب معکوس';

  @override
  String get listSortDefault => 'ترتیب لیست';

  @override
  String get listSortScore => 'امتیاز تو';

  @override
  String get listSortTitle => 'عنوان';

  @override
  String get listSortUpdated => 'آخرین به‌روزرسانی';

  @override
  String get listSortProgress => 'پیشرفت';

  @override
  String get listSortReleased => 'تاریخ انتشار';

  @override
  String get listSortAverage => 'میانگین امتیاز';

  @override
  String get listFilterFormat => 'فرمت';

  @override
  String get listFilterStatus => 'وضعیت';

  @override
  String get listFilterGenres => 'ژانرها';

  @override
  String get listFilterClear => 'پاک کردن فیلترها';

  @override
  String get listNoMatches => 'چیزی تو این لیست جور نیست';

  @override
  String get discordLogin => 'ورود به Discord';

  @override
  String get discordToken => 'توکن Discord';

  @override
  String get discordTokenSaved =>
      'ذخیره شد. برای جایگزینی بزن، برای حذف نگه دار.';

  @override
  String get discordTokenNotSet => 'تنظیم نشده. برای افزودن بزن.';

  @override
  String get discordTokenSavedSnack => 'توکن Discord ذخیره شد';

  @override
  String get discordTokenRemovedSnack => 'توکن Discord حذف شد';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'روشن · برای تغییر ظاهرش بزن';

  @override
  String get discordRichPresenceRowOff =>
      'نشون بده تو پروفایل Discord چیکار می‌کنی';

  @override
  String get loginCancelled => 'ورود لغو شد';

  @override
  String get invalidToken => 'توکن نامعتبره';

  @override
  String loginFailed(String error) {
    return 'ورود ناموفق بود: $error';
  }

  @override
  String get malLoginFailed => 'ورود به MyAnimeList ناموفق بود';

  @override
  String get kitsuLoginFailed =>
      'ورود به Kitsu ناموفق بود. ایمیل و رمزت رو چک کن.';

  @override
  String get kitsuLoginTitle => 'ورود به Kitsu';

  @override
  String get emailOrUsername => 'ایمیل یا نام کاربری';

  @override
  String get password => 'رمز عبور';

  @override
  String get kitsuProfile => 'پروفایل Kitsu';

  @override
  String get mangaBakaLoginFailed => 'ورود به MangaBaka ناموفق بود';

  @override
  String get mangaBakaProfile => 'پروفایل MangaBaka';

  @override
  String get refreshFromMangaBaka => 'تازه‌سازی از MangaBaka';

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
  String get artistsLabel => 'هنرمندها';

  @override
  String get authorsLabel => 'نویسنده‌ها';

  @override
  String get publishersLabel => 'ناشرها';

  @override
  String get licensedLabel => 'دارای مجوز';

  @override
  String get contentRatingLabel => 'رده‌بندی محتوا';

  @override
  String get yesLabel => 'آره';

  @override
  String get noLabel => 'نه';

  @override
  String get ratingSteps => 'پله‌های امتیازدهی';

  @override
  String get hideNsfw => 'مخفی کردن NSFW';

  @override
  String get hideNsfwDesc =>
      'عنوان‌های بزرگسال رو از فیدها و جستجو دور نگه دار، و ورودی‌های بزرگسال خودت رو تو Hidden Media بذار.';

  @override
  String get kitsuAccountOptions => 'گزینه‌های حساب Kitsu';

  @override
  String get mangaBakaAccountOptions => 'گزینه‌های حساب MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings => 'تنظیمات Kitsu به‌روز نشد';

  @override
  String get titleCanonical => 'اصلی';

  @override
  String get titleRomanized => 'رومانیزه';

  @override
  String get titleLocalized => 'محلی‌شده';

  @override
  String get ratingSystem => 'سیستم امتیازدهی';

  @override
  String get ratingSimple => 'ساده (۳ صورتک)';

  @override
  String get ratingRegular => 'معمولی (۵ ستاره)';

  @override
  String get ratingAdvanced => 'پیشرفته (۱۰ امتیاز)';

  @override
  String get contentFilter => 'فیلتر محتوا';

  @override
  String get contentSfw => 'فقط مناسب محیط کار';

  @override
  String get contentSometimes => 'محتوای بزرگسال تو جستجوها';

  @override
  String get contentEverywhere => 'محتوای بزرگسال همه‌جا';

  @override
  String get shareToGlobal => 'اشتراک تو فید عمومی';

  @override
  String get shareToGlobalDesc => 'بذار فعالیتت تو فید عمومی Kitsu دیده بشه.';

  @override
  String get memberSince => 'عضو از';

  @override
  String get location => 'مکان';

  @override
  String get accountType => 'نوع حساب';

  @override
  String get accountSupporter => 'حامی';

  @override
  String get accountFree => 'رایگان';

  @override
  String get accountDetails => 'جزئیات حساب';

  @override
  String get refreshFromKitsu => 'تازه‌سازی از Kitsu';

  @override
  String get simklReadOnly => 'Simkl فقط دسترسی خواندن داد';

  @override
  String get incognitoEditsBlocked => 'ناشناس: ویرایش لیست مسدوده';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ناشناس: پیشرفت ذخیره نشد';

  @override
  String progressSet(int progress) {
    return 'پیشرفت روی $progress تنظیم شد';
  }

  @override
  String removedFromList(String title) {
    return '$title از لیستت حذف شد';
  }

  @override
  String get following => 'دنبال‌شده‌ها';

  @override
  String get homeSections => 'بخش‌های صفحه اصلی';

  @override
  String get homeSectionsHint =>
      'برای مرتب کردن بکش. بخش‌های مخفی هیچ‌وقت گرفته نمی‌شن.';

  @override
  String get customListDeleteFailed => 'لیست سفارشی حذف نشد';

  @override
  String get customListsSaveFailed => 'لیست‌های سفارشی ذخیره نشدن';

  @override
  String get customListsSaved => 'لیست‌های سفارشی ذخیره شدن';

  @override
  String get listName => 'اسم لیست';

  @override
  String get addList => 'افزودن لیست';

  @override
  String voiceActorsIn(String name) {
    return 'صداپیشه‌ها · $name';
  }

  @override
  String get animeAppearances => 'حضور تو انیمه‌ها';

  @override
  String get mangaAppearances => 'حضور تو مانگاها';

  @override
  String get voicedCharacters => 'شخصیت‌های صداپیشگی‌شده';

  @override
  String get animeCredits => 'کارنامه انیمه';

  @override
  String get mangaCredits => 'کارنامه مانگا';

  @override
  String get mainProductions => 'تولیدات اصلی';

  @override
  String get otherWorks => 'کارهای دیگه';

  @override
  String get prequelSequel => 'پیش‌درآمد و دنباله';

  @override
  String get previousSeason => 'فصل قبل';

  @override
  String get thisSeason => 'این فصل';

  @override
  String get nextSeason => 'فصل بعد';

  @override
  String get voiceRoles => 'نقش‌های صداپیشگی';

  @override
  String get staffPositions => 'سمت‌های عوامل';

  @override
  String get mangaWorks => 'آثار مانگا';

  @override
  String get malProfile => 'پروفایل MyAnimeList';

  @override
  String get refreshFromMal => 'تازه‌سازی از MyAnimeList';

  @override
  String get repullProfileCounts => 'پروفایل و آمارت رو دوباره بگیر';

  @override
  String get refreshed => 'تازه‌سازی شد';

  @override
  String get simklProfile => 'پروفایل Simkl';

  @override
  String get refreshFromSimkl => 'تازه‌سازی از Simkl';

  @override
  String get repullProfileLibrary => 'پروفایل و کتابخونه‌ت رو دوباره بگیر';

  @override
  String get simklSignInToSearch => 'برای جستجو وارد Simkl شو';

  @override
  String get dropRate => 'نرخ رها کردن';

  @override
  String get simklAttribution => 'داده‌ها و آثار هنری از Simkl. دیدن تو Simkl';

  @override
  String get onHold => 'نگه‌داشته‌شده';

  @override
  String get scoredBy => 'امتیازدهنده‌ها';

  @override
  String get planToWatch => 'می‌خوام ببینم';

  @override
  String get planToRead => 'می‌خوام بخونم';

  @override
  String get timesRewatched => 'دفعات تماشای دوباره';

  @override
  String get timesReread => 'دفعات خوندن دوباره';

  @override
  String get comments => 'نظرها';

  @override
  String get moviesAndSeries => 'فیلم‌ها و سریال‌ها';

  @override
  String get trackingOnly => 'فقط ردیابی';

  @override
  String get signedIn => 'وارد شدی';

  @override
  String get searchLanguage => 'زبان جستجو';

  @override
  String get savedToList => 'تو لیستت ذخیره شد';

  @override
  String get removedFromYourList => 'از لیستت حذف شد';

  @override
  String get retry => 'تلاش دوباره';

  @override
  String get synopsis => 'خلاصه داستان';

  @override
  String get details => 'جزئیات';

  @override
  String get addToList => 'افزودن به لیست';

  @override
  String get trailer => 'تریلر';

  @override
  String get titleCopied => 'عنوان کپی شد';

  @override
  String get linkCopied => 'لینک کپی شد';

  @override
  String get watchTrailer => 'دیدن تریلر';

  @override
  String get copyTitle => 'کپی عنوان';

  @override
  String get copyLink => 'کپی لینک';

  @override
  String get openInBrowser => 'باز کردن تو مرورگر';

  @override
  String viewOnSource(String source) {
    return 'دیدن تو $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'قسمت $ep تا $time دیگه پخش می‌شه';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'قسمت بعدی تا $time دیگه';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'فصل $chapter تقریباً $time دیگه میاد';
  }

  @override
  String get logPathCopied => 'مسیر فایل لاگ تو کلیپ‌بورد کپی شد';

  @override
  String get animeSource => 'منبع انیمه';

  @override
  String get mangaSource => 'منبع مانگا';

  @override
  String get popular => 'محبوب';

  @override
  String get latest => 'جدیدترین';

  @override
  String get saved => 'ذخیره‌شده';

  @override
  String get nothingMatched => 'چیزی جور نشد';

  @override
  String get nothingSavedFromSource => 'هنوز چیزی از این منبع ذخیره نشده';

  @override
  String get sourceReturnedNothing => 'این منبع چیزی برنگردوند';

  @override
  String get checkConnectionOrSource =>
      'اتصالت رو چک کن یا یه منبع دیگه امتحان کن.';

  @override
  String get tryDifferentSearch => 'یه عبارت جستجوی دیگه امتحان کن.';

  @override
  String get savedTitlesAppearHere =>
      'عنوان‌هایی که به لیستت اضافه کنی اینجا نشون داده می‌شن.';

  @override
  String get tryOtherFeed => 'فید دیگه یا جستجو رو امتحان کن.';

  @override
  String searchSource(String source) {
    return 'جستجو تو $source';
  }

  @override
  String get animeExtensions => 'اکستنشن‌های انیمه';

  @override
  String get mangaExtensions => 'اکستنشن‌های مانگا';

  @override
  String get nothingHereYet => 'هنوز چیزی اینجا نیست';

  @override
  String get savedOnDeviceUntilLogin =>
      'همه‌چیز پایین رو این دستگاه ذخیره می‌مونه تا خودت اینکارو بکنی.';

  @override
  String get yourProfile => 'پروفایل تو';

  @override
  String get activity => 'فعالیت';

  @override
  String get extensions => 'اکستنشن‌ها';

  @override
  String get logOut => 'خروج';

  @override
  String get logIn => 'ورود';

  @override
  String get logOutConfirm => 'مطمئنی می‌خوای خارج بشی؟';

  @override
  String get incognitoMode => 'حالت ناشناس';

  @override
  String get alsoBlockListEdits => 'ویرایش لیست رو هم مسدود کن';

  @override
  String get offlineMode => 'حالت آفلاین';

  @override
  String get switchService => 'تغییر سرویس';

  @override
  String logOutOf(String name) {
    return 'خروج از $name';
  }

  @override
  String get loggedIn => 'وارد شدی';

  @override
  String get notifications => 'اعلان‌ها';

  @override
  String get nothingNew => 'چیز جدیدی نیست';

  @override
  String get thisWeek => 'این هفته';

  @override
  String get listOnly => 'فقط لیست';

  @override
  String get filter => 'فیلتر';

  @override
  String get searchResults => 'نتیجه‌های جستجو';

  @override
  String get recentSearches => 'جستجوهای اخیر';

  @override
  String get searchOrSetFilter => 'جستجو کن یا فیلتر بذار';

  @override
  String get filters => 'فیلترها';

  @override
  String get showLess => 'نمایش کمتر';

  @override
  String get showAll => 'نمایش همه';

  @override
  String get apply => 'اعمال';

  @override
  String get preview => 'پیش‌نمایش';

  @override
  String get preset => 'پیش‌تنظیم';

  @override
  String get cardNormal => 'معمولی';

  @override
  String get cardOnCard => 'روی کارت';

  @override
  String get cardInCard => 'تو کارت';

  @override
  String get size => 'اندازه';

  @override
  String get cardWidth => 'عرض کارت';

  @override
  String get compact => 'فشرده';

  @override
  String get coverAndTitleOnly => 'فقط کاور و عنوان';

  @override
  String get titleLines => 'خط‌های عنوان';

  @override
  String get shape => 'شکل';

  @override
  String get posterShape => 'شکل پوستر';

  @override
  String get cornerRadius => 'گردی گوشه‌ها';

  @override
  String get off => 'خاموش';

  @override
  String get topLeft => 'بالا چپ';

  @override
  String get topRight => 'بالا راست';

  @override
  String get bottomLeft => 'پایین چپ';

  @override
  String get bottomRight => 'پایین راست';

  @override
  String get overlays => 'رویه‌ها';

  @override
  String get progressCount => 'پیشرفت / تعداد';

  @override
  String get pill => 'قرصی';

  @override
  String get bar => 'نوار';

  @override
  String get outside => 'بیرون';

  @override
  String get scoreBadge => 'نشان امتیاز';

  @override
  String get airingDot => 'نقطه پخش';

  @override
  String get updateAvailable => 'به‌روزرسانی موجوده';

  @override
  String get notInstalled => 'نصب نشده';

  @override
  String get done => 'تمام';

  @override
  String get searchOrEnterUrl => 'جستجو کن یا آدرس بزن';

  @override
  String get refresh => 'تازه‌سازی';

  @override
  String get share => 'اشتراک‌گذاری';

  @override
  String get characters => 'شخصیت‌ها';

  @override
  String get staff => 'عوامل';

  @override
  String get readMore => 'ادامه مطلب';

  @override
  String get couldNotLoadList => 'لیست بارگذاری نشد';

  @override
  String get logInToFavourite => 'برای افزودن به علاقه‌مندی‌ها وارد شو';

  @override
  String get alsoKnownAs => 'با نام‌های دیگه‌ی';

  @override
  String get hideSpoilerNames => 'مخفی کردن اسم‌های لو‌دهنده';

  @override
  String get showSpoilerNames => 'نمایش اسم‌های لو‌دهنده';

  @override
  String get favourited => 'تو علاقه‌مندی‌ها';

  @override
  String get favourite => 'علاقه‌مندی';

  @override
  String get couldNotOpenTitle => 'این عنوان باز نشد';

  @override
  String get nobodyHereYet => 'هنوز کسی اینجا نیست';

  @override
  String get noMatches => 'موردی نیست';

  @override
  String get gridView => 'نمای شبکه‌ای';

  @override
  String get fullWidth => 'تمام عرض';

  @override
  String get userNotFound => 'کاربر پیدا نشد';

  @override
  String get couldNotUpdateFollow => 'دنبال کردن به‌روز نشد';

  @override
  String followedUser(String name) {
    return '$name رو دنبال کردی';
  }

  @override
  String unfollowedUser(String name) {
    return 'دیگه $name رو دنبال نمی‌کنی';
  }

  @override
  String get messages => 'پیام‌ها';

  @override
  String get logInToSeeMessages => 'برای دیدن پیام‌هات وارد شو';

  @override
  String get editActivity => 'ویرایش فعالیت';

  @override
  String get newActivity => 'فعالیت جدید';

  @override
  String get editMessage => 'ویرایش پیام';

  @override
  String get writeMessage => 'نوشتن پیام';

  @override
  String get editReply => 'ویرایش پاسخ';

  @override
  String get posted => 'ارسال شد';

  @override
  String get couldNotPost => 'ارسال نشد';

  @override
  String get nothingToPreview => 'چیزی برای پیش‌نمایش نیست';

  @override
  String get writeSomethingHint =>
      'یه چیزی بنویس… مارک‌داون AniList اینجا کار می‌کنه';

  @override
  String get privateMessage => 'پیام خصوصی';

  @override
  String get post => 'ارسال';

  @override
  String get nothingHere => 'اینجا چیزی نیست';

  @override
  String get noAnimeProgress => 'پیشرفت انیمه‌ای نیست';

  @override
  String get noMangaProgress => 'پیشرفت مانگایی نیست';

  @override
  String get noMessages => 'پیامی نیست';

  @override
  String get writeMessageHint => 'یه پیام بنویس…';

  @override
  String get shareSomethingHint => 'یه چیزی به اشتراک بذار…';

  @override
  String get all => 'همه';

  @override
  String get anime => 'انیمه';

  @override
  String get manga => 'مانگا';

  @override
  String get count => 'تعداد';

  @override
  String get hoursWatched => 'ساعت تماشا';

  @override
  String get chaptersRead => 'چپترهای خونده‌شده';

  @override
  String get meanScore => 'میانگین امتیاز';

  @override
  String get noStatsYet => 'هنوز آماری نیست';

  @override
  String get totalEntries => 'مجموع ورودی‌ها';

  @override
  String get episodesWatched => 'قسمت‌های دیده‌شده';

  @override
  String get daysWatched => 'روزهای تماشا';

  @override
  String get volumesRead => 'جلدهای خونده‌شده';

  @override
  String get standardDeviation => 'انحراف معیار';

  @override
  String get showMore => 'نمایش بیشتر';

  @override
  String get followsYou => 'تو رو دنبال می‌کنه';

  @override
  String get nobodyYet => 'هنوز کسی نیست';

  @override
  String get logInToLike => 'برای لایک وارد شو';

  @override
  String get failedToLikeActivity => 'لایک فعالیت ناموفق بود';

  @override
  String get deleteActivityConfirm => 'فعالیت حذف بشه؟';

  @override
  String get deletedActivity => 'فعالیت حذف شد';

  @override
  String get failedToDeleteActivity => 'حذف فعالیت ناموفق بود';

  @override
  String get subscribed => 'اشتراک گرفتی';

  @override
  String get unsubscribed => 'اشتراک لغو شد';

  @override
  String get failedToUpdateSubscription => 'به‌روزرسانی اشتراک ناموفق بود';

  @override
  String get edit => 'ویرایش';

  @override
  String get delete => 'حذف';

  @override
  String get likedBy => 'لایک‌کننده‌ها';

  @override
  String get follow => 'دنبال کردن';

  @override
  String get nameCopied => 'اسم کپی شد';

  @override
  String get followsEachOther => 'همدیگه رو دنبال می‌کنین';

  @override
  String get unfollow => 'لغو دنبال کردن';

  @override
  String get userIdCopied => 'شناسه کاربر کپی شد';

  @override
  String get shareProfile => 'اشتراک پروفایل';

  @override
  String get copyUserId => 'کپی شناسه کاربر';

  @override
  String get failedToDelete => 'حذف ناموفق بود';

  @override
  String get failedToLike => 'لایک ناموفق بود';

  @override
  String get replies => 'پاسخ‌ها';

  @override
  String get reply => 'پاسخ';

  @override
  String get noRepliesYet => 'هنوز پاسخی نیست';

  @override
  String get favouriteAnime => 'انیمه‌های مورد علاقه';

  @override
  String get favouriteManga => 'مانگاهای مورد علاقه';

  @override
  String get favouriteCharacters => 'شخصیت‌های مورد علاقه';

  @override
  String get favouriteStaff => 'عوامل مورد علاقه';

  @override
  String get favouriteStudios => 'استودیوهای مورد علاقه';

  @override
  String get noFavouritesYet => 'هنوز علاقه‌مندی‌ای نیست';

  @override
  String get yourStory => 'استوری تو';

  @override
  String get copiedToClipboard => 'تو کلیپ‌بورد کپی شد';

  @override
  String get justNow => 'همین الان';

  @override
  String get openImage => 'باز کردن تصویر';

  @override
  String get hideSpoiler => 'مخفی کردن اسپویلر';

  @override
  String get showSpoiler => 'نمایش اسپویلر';

  @override
  String get status => 'وضعیت';

  @override
  String get score => 'امتیاز';

  @override
  String get started => 'شروع';

  @override
  String get completed => 'پایان';

  @override
  String get private => 'خصوصی';

  @override
  String get hideFromStatusLists => 'مخفی کردن از لیست‌های وضعیت';

  @override
  String get totalRepeats => 'مجموع تکرارها';

  @override
  String get other => 'سایر';

  @override
  String get customLists => 'لیست‌های سفارشی';

  @override
  String get activeDays => 'روزهای فعال';

  @override
  String get longestStreak => 'طولانی‌ترین رکورد پیاپی';

  @override
  String get currentStreak => 'رکورد پیاپی فعلی';

  @override
  String get tapOrHoverDay => 'یه روز رو بزن یا موس رو روش ببر';

  @override
  String get less => 'کمتر';

  @override
  String get more => 'بیشتر';

  @override
  String epIn(int ep, String time) {
    return 'قسمت $ep تا $time دیگه';
  }

  @override
  String get sectionLoading => 'در حال بارگذاری';

  @override
  String get querySize => 'اندازه کوئری';

  @override
  String get querySizeDesc =>
      'یه کوئری بزرگ همه ردیف‌ها (و کل پروفایل) رو با یه درخواست می‌گیره. کوئری‌های تکه‌تکه برای هر ردیف یا بخش پروفایل یه درخواست کوچیک می‌فرستن: هر کدوم سریعه و بخش‌ها همین‌طور که می‌رسن نشون داده می‌شن.';

  @override
  String get oneBig => 'یه کوئری بزرگ';

  @override
  String get split => 'تکه‌تکه';

  @override
  String get sectionSocial => 'اجتماعی';

  @override
  String get systemNotifications => 'اعلان‌های سیستم';

  @override
  String get feedLayout => 'چیدمان فید';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown از $total نمایش داده می‌شه — برای انتخاب و جابه‌جایی بزن';
  }

  @override
  String labelSections(String label) {
    return 'بخش‌های $label';
  }

  @override
  String get accountOptions => 'گزینه‌های حساب';

  @override
  String get anilistAccountOptions => 'گزینه‌های حساب AniList';

  @override
  String get sectionPrivacy => 'حریم خصوصی';

  @override
  String get hidePrivateEntries => 'مخفی کردن ورودی‌های خصوصی';

  @override
  String get hidePrivateEntriesDesc =>
      'ورودی‌هایی که تو AniList خصوصی شدن رو از فید دور نگه دار';

  @override
  String get anilistExcludeList => 'حذف لیست خودت';

  @override
  String get anilistExcludeListDesc =>
      'عنوان‌هایی که تو AniList خودت هست رو از صفحه‌های انیمه و مانگا حذف کن';

  @override
  String get anilistProfile => 'پروفایل AniList';

  @override
  String get refreshFromAnilist => 'تازه‌سازی از AniList';

  @override
  String get couldNotUpdateAnilistSettings => 'تنظیمات AniList به‌روز نشد';

  @override
  String get sectionNames => 'اسم‌ها';

  @override
  String get titleLanguage => 'زبان عنوان‌ها';

  @override
  String get titleLanguageDesc =>
      'عنوان‌ها همه‌جا چطور نوشته بشن، مثلاً Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'اسم عوامل و شخصیت‌ها';

  @override
  String get sectionLists => 'لیست‌ها';

  @override
  String get scoreFormat => 'قالب امتیاز';

  @override
  String get sortListsBy => 'مرتب‌سازی لیست‌ها بر اساس';

  @override
  String labelCustomLists(String label) {
    return 'لیست‌های سفارشی $label';
  }

  @override
  String customListsCount(int count) {
    return '$count لیست — برای افزودن یا حذف بزن';
  }

  @override
  String get mergeActivities => 'ادغام فعالیت‌ها';

  @override
  String minutesCount(int count) {
    return '$count دقیقه';
  }

  @override
  String get timezone => 'منطقه زمانی';

  @override
  String get notSet => 'تنظیم نشده';

  @override
  String get airingNotifications => 'اعلان‌های پخش';

  @override
  String get airingNotificationsDesc =>
      'وقتی قسمتی از یه سریال دنبال‌شده پخش شد خبر بگیر';

  @override
  String get displayAdultContent => 'نمایش محتوای بزرگسال';

  @override
  String get displayAdultContentDesc =>
      'عنوان‌های +۱۸ رو تو گشتن، جستجو و فیدها بیار';

  @override
  String get restrictMessages => 'محدود کردن پیام‌ها به دنبال‌شده‌ها';

  @override
  String get restrictMessagesDesc =>
      'فقط کسایی که دنبال می‌کنی می‌تونن بهت پیام بدن';

  @override
  String get sectionServices => 'سرویس‌ها';

  @override
  String get novel => 'ناول';

  @override
  String labelService(String label) {
    return 'سرویس $label';
  }

  @override
  String nameSettings(String name) {
    return 'تنظیمات $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'گزینه‌های پل اکستنشن $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name راه نیفتاد: $error';
  }

  @override
  String get importLists => 'وارد کردن لیست‌ها';

  @override
  String get importListsDesc =>
      'از پشتیبان‌های Aniyomi، Mihon / Tachiyomi یا Kotatsu';

  @override
  String get exportLists => 'خروجی گرفتن از لیست‌ها';

  @override
  String get exportListsDesc => 'به پشتیبان Aniyomi، Mihon یا Kotatsu';

  @override
  String get sectionBrowse => 'گشتن';

  @override
  String get readingTab => 'تب خواندن';

  @override
  String get readingTabDesc => 'تب سوم کدوم اکستنشن‌ها رو نشون بده';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'فید پیش‌فرض';

  @override
  String get defaultFeedDesc => 'یه منبع با کدوم لیست باز بشه';

  @override
  String noServiceSupports(String type) {
    return 'هیچ سرویسی از $type پشتیبانی نمی‌کنه';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded از $installed منبع در حال بارگذاری';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'هیچ سرویس اکستنشنی اینجا از $type پشتیبانی نمی‌کنه.';
  }

  @override
  String get loadDataFrom => 'بارگذاری داده از';

  @override
  String noInstalledSourcesYet(String type) {
    return 'هنوز منبع $type نصب نشده.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'اکستنشن $name نصب نشده';
  }

  @override
  String get thisSource => 'این منبع';

  @override
  String failedToAddRepository(String error) {
    return 'افزودن مخزن ناموفق بود: $error';
  }

  @override
  String installedType(String type) {
    return '$type نصب‌شده';
  }

  @override
  String availableType(String type) {
    return '$type موجود';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'اکستنشن $type نصب‌شده‌ای نیست';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'اکستنشن $type موجودی نیست';
  }

  @override
  String get nothingToShowYet => 'هنوز چیزی برای نمایش نیست';

  @override
  String get addTitlesHint => 'چند تا عنوان به لیستت اضافه کن تا اینجا بیان.';

  @override
  String get couldntLoad => 'بارگذاری نشد';

  @override
  String get progressStyleHint =>
      'قرصی و نوار روی پوستر قرار می‌گیرن؛ بیرون همون تعداد رو به‌صورت متن ساده نشون می‌ده — یکی رو انتخاب کن.';

  @override
  String get nixManagedUpdate =>
      'این بیلد با Nix مدیریت می‌شه — به‌جای به‌روزرسانی از اینجا، تو flake‌ت «nix flake update» رو بزن و دوباره بیلد کن';

  @override
  String autoUpdateFailed(String error) {
    return 'به‌روزرسانی خودکار ناموفق بود ($error) — به‌جاش صفحه دانلود باز می‌شه';
  }

  @override
  String get unknownPreference => 'تنظیم ناشناس';

  @override
  String unsupportedPreferenceType(String type) {
    return 'نوع تنظیم $type پشتیبانی نمی‌شه';
  }

  @override
  String get notYetReleased => 'هنوز منتشر نشده';

  @override
  String get notStarted => 'شروع نشده';

  @override
  String get country => 'کشور';

  @override
  String get sort => 'مرتب‌سازی';

  @override
  String get chooseBackupDialog =>
      'یه پشتیبان Aniyomi، Mihon یا Kotatsu انتخاب کن';

  @override
  String get importListsHint =>
      'کتابخونه‌ت رو از Aniyomi، Mihon / Tachiyomi یا Kotatsu بیار. عنوان‌ها، کاورها، پیشرفت و دسته‌ها حفظ می‌شن.';

  @override
  String get chooseBackupFile => 'انتخاب فایل پشتیبان';

  @override
  String importAnimeCount(int count) {
    return 'وارد کردن $count انیمه';
  }

  @override
  String importMangaCount(int count) {
    return 'وارد کردن $count مانگا';
  }

  @override
  String get mergeWithExisting => 'ادغام با لیست‌های موجود';

  @override
  String get mergeWithExistingDesc =>
      'چیزی که الان داری حفظ می‌شه؛ خاموش باشه، عنوان‌های مشابه جایگزین می‌شن';

  @override
  String get chooseAnother => 'انتخاب فایل دیگه';

  @override
  String get import => 'وارد کردن';

  @override
  String animeCount(int count) {
    return '$count انیمه';
  }

  @override
  String mangaCount(int count) {
    return '$count مانگا';
  }

  @override
  String get chooseSaveLocation => 'انتخاب کن پشتیبان کجا ذخیره بشه';

  @override
  String savedPath(String path) {
    return '$path ذخیره شد';
  }

  @override
  String exportFailed(String error) {
    return 'خروجی گرفتن ناموفق بود: $error';
  }

  @override
  String get nothingInLocalLists => 'هنوز چیزی تو لیست‌های محلیت نیست.';

  @override
  String exportsSummary(int anime, int manga) {
    return '$anime انیمه و $manga مانگا از لیست‌های محلیت خروجی می‌گیره. Kotatsu فقط مانگا رو پشتیبانی می‌کنه.';
  }

  @override
  String get saveToFolder => 'ذخیره تو پوشه';

  @override
  String get formatAnimeManga => 'انیمه و مانگا · .tachibk';

  @override
  String get formatMangaTachibk => 'فقط مانگا · .tachibk';

  @override
  String get formatMangaZip => 'فقط مانگا · .zip';

  @override
  String get genres => 'ژانرها';

  @override
  String get relations => 'ارتباط‌ها';

  @override
  String get recommendations => 'پیشنهادها';

  @override
  String get openings => 'اپنینگ‌ها';

  @override
  String get endings => 'اندینگ‌ها';

  @override
  String get background => 'پیشینه';

  @override
  String get links => 'لینک‌ها';

  @override
  String get rank => 'رتبه';

  @override
  String get members => 'اعضا';

  @override
  String get favorites => 'علاقه‌مندی‌ها';

  @override
  String get episodes => 'قسمت‌ها';

  @override
  String get chapters => 'چپترها';

  @override
  String get volumes => 'جلدها';

  @override
  String get format => 'فرمت';

  @override
  String get source => 'منبع';

  @override
  String get duration => 'مدت';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes دقیقه برای هر قسمت';
  }

  @override
  String get rating => 'رده سنی';

  @override
  String get studio => 'استودیو';

  @override
  String get serialization => 'انتشار پاورقی';

  @override
  String get season => 'فصل';

  @override
  String get broadcast => 'پخش';

  @override
  String get aired => 'پخش شده';

  @override
  String get published => 'منتشر شده';

  @override
  String get popularity => 'محبوبیت';

  @override
  String get community => 'انجمن';

  @override
  String get watching => 'درحال تماشا';

  @override
  String get reading => 'درحال خوندن';

  @override
  String get dropped => 'رها شده';

  @override
  String get planned => 'تو برنامه';

  @override
  String get trailers => 'تریلرها';

  @override
  String get ratings => 'امتیازها';

  @override
  String get originalTitle => 'اصلی';

  @override
  String get titleLabel => 'عنوان';

  @override
  String get votes => 'رأی‌ها';

  @override
  String get watchedStat => 'دیده‌شده';

  @override
  String get runtime => 'مدت زمان';

  @override
  String get director => 'کارگردان';

  @override
  String get network => 'شبکه';

  @override
  String get certification => 'گواهی رده‌بندی';

  @override
  String get airs => 'پخش می‌شه';

  @override
  String get budget => 'بودجه';

  @override
  String get revenue => 'درآمد';

  @override
  String get released => 'انتشار';

  @override
  String get tags => 'تگ‌ها';

  @override
  String get author => 'نویسنده';

  @override
  String get born => 'تولد';

  @override
  String get website => 'وب‌سایت';

  @override
  String get established => 'تأسیس';

  @override
  String get manhwa => 'مانهوا (کره‌ای)';

  @override
  String get manhua => 'مانهوا (چینی)';

  @override
  String get novels => 'ناول‌ها';

  @override
  String get thisMonth => 'این ماه';

  @override
  String get movies => 'فیلم‌ها';

  @override
  String get shows => 'سریال‌ها';

  @override
  String get rewatching => 'درحال تماشای دوباره';

  @override
  String get rereading => 'درحال خوندن دوباره';

  @override
  String get watchedStatus => 'دیده‌شده';

  @override
  String get planning => 'تو برنامه';

  @override
  String get paused => 'متوقف';

  @override
  String get watch => 'تماشا';

  @override
  String get read => 'خوندن';

  @override
  String get finished => 'تموم شده';

  @override
  String get releasing => 'درحال پخش';

  @override
  String get cancelled => 'لغو شده';

  @override
  String get hiatus => 'هیاتوس';

  @override
  String get remove => 'حذف';

  @override
  String syncToService(String service) {
    return 'همگام‌سازی با $service';
  }

  @override
  String syncedToService(String service) {
    return 'با $service همگام شد';
  }

  @override
  String get latestReleases => 'آخرین انتشارها';

  @override
  String get topRated => 'بیشترین امتیاز';

  @override
  String localSection(String title) {
    return '$title · محلی';
  }

  @override
  String get localEntryNote =>
      'این عنوان فقط تو لیست محلی روی این دستگاهه. ویرایش اینجا خاموشه چون ممکنه با لیست حسابت تداخل پیدا کنه؛ ولی هنوز می‌تونی حذفش کنی.';

  @override
  String get cardPresetPoster => 'پوستر';

  @override
  String get cardPresetCard => 'کارت';

  @override
  String get cardPresetCozy => 'دنج';

  @override
  String get sortTopRated => 'بیشترین امتیاز';

  @override
  String get sortMostPopular => 'محبوب‌ترین‌ها';

  @override
  String get sortTrending => 'ترند';

  @override
  String get sortNewest => 'جدیدترین';

  @override
  String get sortAz => 'الف تا ی';

  @override
  String get sortMostFavourited => 'بیشترین علاقه‌مندی';

  @override
  String get anyCountry => 'هر کشوری';

  @override
  String get orderScore => 'امتیاز';

  @override
  String get orderTitle => 'عنوان';

  @override
  String get orderLastUpdated => 'آخرین به‌روزرسانی';

  @override
  String get orderLastAdded => 'آخرین افزوده‌شده';

  @override
  String get never => 'هرگز';

  @override
  String get always => 'همیشه';

  @override
  String get scorePoint100 => '۱۰۰ امتیازی';

  @override
  String get scorePoint10Decimal => '۱۰ امتیازی اعشاری';

  @override
  String get scorePoint10 => '۱۰ امتیازی';

  @override
  String get scorePoint5 => '۵ ستاره‌ای';

  @override
  String get scorePoint3 => '۳ امتیازی صورتکی';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعت',
      one: '۱ ساعت',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '۱ روز',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count هفته',
      one: '۱ هفته',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ادامه';

  @override
  String get resumeSourceMissing => 'برای ادامه، منبع این عنوان رو نصب کن';

  @override
  String get resumeRemove => 'حذف از ادامه';

  @override
  String resumeAt(String time) {
    return '$time مونده';
  }

  @override
  String resumePage(int page, int total) {
    return 'صفحه $page از $total';
  }

  @override
  String get continueWatching => 'ادامه تماشا';

  @override
  String get continueReading => 'ادامه خوندن';

  @override
  String get favouriteAnimeSection => 'انیمه‌های مورد علاقه';

  @override
  String get favouriteMangaSection => 'مانگاهای مورد علاقه';

  @override
  String get plannedAnime => 'انیمه‌های تو برنامه';

  @override
  String get plannedManga => 'مانگاهای تو برنامه';

  @override
  String get completedAnime => 'انیمه‌های تموم‌شده';

  @override
  String get completedManga => 'مانگاهای تموم‌شده';

  @override
  String get hiddenMedia => 'Hidden Media';

  @override
  String get recentUpdates => 'به‌روزرسانی‌های اخیر';

  @override
  String get trendingNow => 'ترندهای الان';

  @override
  String get popularThisSeason => 'محبوب این فصل';

  @override
  String get trendingMovies => 'فیلم‌های ترند';

  @override
  String get topRatedSeries => 'سریال‌های با بیشترین امتیاز';

  @override
  String get mostFavouriteSeries => 'سریال‌های با بیشترین علاقه‌مندی';

  @override
  String get popularAnime => 'انیمه‌های محبوب';

  @override
  String get trendingManhwa => 'مانهواهای کره‌ای ترند';

  @override
  String get trendingNovels => 'ناول‌های ترند';

  @override
  String get topRatedManga => 'مانگاهای با بیشترین امتیاز';

  @override
  String get mostFavouriteManga => 'مانگاهای با بیشترین علاقه‌مندی';

  @override
  String get popularManga => 'مانگاهای محبوب';

  @override
  String get topMovies => 'برترین فیلم‌ها';

  @override
  String get topOna => 'برترین ONA';

  @override
  String get topOva => 'برترین OVA';

  @override
  String get mostPopular => 'محبوب‌ترین‌ها';

  @override
  String get mostFavourite => 'بیشترین علاقه‌مندی';

  @override
  String get upcoming => 'به‌زودی';

  @override
  String get topManga => 'برترین مانگاها';

  @override
  String get topManhwa => 'برترین مانهواهای کره‌ای';

  @override
  String get topManhua => 'برترین مانهواهای چینی';

  @override
  String get topNovels => 'برترین ناول‌ها';

  @override
  String get topOneShots => 'برترین وان‌شات‌ها';

  @override
  String get trendingMoviesToday => 'فیلم‌های ترند امروز';

  @override
  String get trendingShowsToday => 'سریال‌های ترند امروز';

  @override
  String get trendingMoviesWeek => 'فیلم‌های ترند این هفته';

  @override
  String get trendingShowsWeek => 'سریال‌های ترند این هفته';

  @override
  String get mostWatchedMoviesMonth => 'پربیننده‌ترین فیلم‌های این ماه';

  @override
  String get mostWatchedShowsMonth => 'پربیننده‌ترین سریال‌های این ماه';

  @override
  String get trendingThisWeek => 'ترند این هفته';

  @override
  String get mostWatchedThisMonth => 'پربیننده‌ترین‌های این ماه';

  @override
  String get repoLinksAdded => 'لینک‌های مخزن با موفقیت اضافه شدن!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'خطا تو گرفتن داده از AniList.';

  @override
  String get navInfo => 'اطلاعات';

  @override
  String get navComments => 'نظرها';

  @override
  String get playerNotAvailable => 'پخش‌کننده هنوز در دسترس نیست';

  @override
  String deepLinkInitialError(String error) {
    return 'خطا تو گرفتن دیپ‌لینک اولیه: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'خطا تو باز کردن لینک: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'این لینک باز نمی‌شه: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'خطا تو باز کردن لینک: $error';
  }

  @override
  String get forReleasingTitles => 'برای عنوان‌هایی که الان در حال پخش‌ان';

  @override
  String get progress => 'پیشرفت';

  @override
  String get notes => 'یادداشت‌ها';

  @override
  String serviceNotFound(String id) {
    return 'سرویس «$id» پیدا نشد';
  }

  @override
  String get glassEffectEnabled => 'افکت شیشه‌ای روشن شد';

  @override
  String get glassEffectDisabled => 'افکت شیشه‌ای خاموش شد';

  @override
  String get materialYouEnabled => 'Material You روشن شد';

  @override
  String get materialYouDisabled => 'Material You خاموش شد';

  @override
  String get darkModeEnabled => 'حالت تاریک روشن شد';

  @override
  String get darkModeDisabled => 'حالت تاریک خاموش شد';

  @override
  String get animeList => 'لیست انیمه';

  @override
  String get mangaList => 'لیست مانگا';

  @override
  String ownerAnimeList(String owner) {
    return 'لیست انیمه‌ی $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'لیست مانگای $owner';
  }

  @override
  String get loadingList => 'در حال بارگذاری لیست';

  @override
  String get earlier => 'قبل‌تر';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز پیش',
      one: '۱ روز پیش',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعت پیش',
      one: '۱ ساعت پیش',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقه پیش',
      one: '۱ دقیقه پیش',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count دقیقه پیش';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ساعت پیش';
  }

  @override
  String daysAgoShort(int count) {
    return '$count روز پیش';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count هفته پیش';
  }

  @override
  String get couldntLoadSource => 'این منبع بارگذاری نشد';

  @override
  String get followers => 'دنبال‌کننده‌ها';

  @override
  String couldntLoadTitle(String title) {
    return '$title بارگذاری نشد';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'این پروفایل بارگذاری نشد';

  @override
  String get profile => 'پروفایل';

  @override
  String get feed => 'فید';

  @override
  String get stats => 'آمار';

  @override
  String get received => 'دریافتی';

  @override
  String get sent => 'ارسالی';

  @override
  String get global => 'عمومی';

  @override
  String get couldntLoadPage => 'این صفحه بارگذاری نشد';

  @override
  String get couldntLoadAllDetails => 'همه جزئیات بارگذاری نشدن';

  @override
  String get series => 'سریال‌ها';

  @override
  String get studios => 'استودیوها';

  @override
  String get users => 'کاربرها';

  @override
  String repositoriesTitle(String type) {
    return 'مخزن‌های $type';
  }

  @override
  String get repositoryUrl => 'آدرس مخزن';

  @override
  String get downloadingRepository => 'در حال دانلود مخزن…';

  @override
  String get noRepositories => 'مخزنی اضافه نشده';

  @override
  String repoExtensionsCount(String count) {
    return '$count اکستنشن';
  }

  @override
  String get searchExtensions => 'جستجوی اکستنشن...';

  @override
  String deletePluginTitle(String name) {
    return '$name حذف بشه؟';
  }

  @override
  String get deletePluginMessage => 'مطمئنی می‌خوای این پلاگین رو حذف کنی؟';

  @override
  String pluginDeleted(String name) {
    return '$name حذف شد';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name تو مخزن تنظیم‌شده موجود نیست';
  }

  @override
  String get pluginFetchFailed => 'گرفتن اطلاعات پلاگین ناموفق بود';

  @override
  String installPluginTitle(String name) {
    return 'نصب $name';
  }

  @override
  String sizeLabel(String size) {
    return 'حجم: $size';
  }

  @override
  String get installedState => 'نصب شده';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'خطا:';

  @override
  String get stackTraceDetails => 'جزئیات (Stack Trace)';

  @override
  String get shareLogFile => 'اشتراک فایل لاگ';

  @override
  String get copyLogs => 'کپی لاگ‌ها';

  @override
  String noListToEdit(String service) {
    return '$service لیستی برای ویرایش نداره';
  }

  @override
  String get couldNotReadFile => 'اون فایل خونده نشد';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime انیمه و $manga مانگا وارد شد';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count تا از قبل بودن';
  }

  @override
  String get airingNow => 'درحال پخش';

  @override
  String get topRatedMovies => 'فیلم‌های با بیشترین امتیاز';

  @override
  String get koreanDramas => 'دراما‌های کره‌ای';

  @override
  String get chineseDramas => 'دراما‌های چینی';

  @override
  String get japaneseDramas => 'دراما‌های ژاپنی';

  @override
  String get thaiDramas => 'دراما‌های تایلندی';

  @override
  String get turkishDramas => 'دراما‌های ترکی';

  @override
  String get miniSeries => 'مینی‌سریال';

  @override
  String get topRatedShows => 'سریال‌های با بیشترین امتیاز';

  @override
  String get recommendedSection => 'پیشنهادی';

  @override
  String get syncRow => 'همگام‌سازی لیست‌ها';

  @override
  String get syncRowDesc => 'لیست یه سرویس رو رو بقیه حساب‌هات کپی کن';

  @override
  String get syncTitle => 'همگام‌سازی';

  @override
  String get syncMainService => 'سرویس اصلی';

  @override
  String get syncMainServiceDesc =>
      'لیستش مرجعه؛ بقیه سرویس‌هایی که واردشون شدی بر اساسش به‌روز می‌شن';

  @override
  String get syncAuto => 'همگام‌سازی خودکار';

  @override
  String get syncAutoDesc =>
      'وقتی اپ باز می‌شه و هر ۳۰ دقیقه تو پس‌زمینه بگیر و همگام کن';

  @override
  String get syncAddMissing => 'افزودن ورودی‌های جامونده';

  @override
  String get syncAddMissingDesc =>
      'ورودی‌هایی که سرویس دیگه هنوز نداره رو هم اضافه کن';

  @override
  String get syncOnlyForward => 'حفظ پیشرفت بیشتر';

  @override
  String get syncOnlyForwardDesc => 'پیشرفت سرویسی که جلوتره رو کم نکن';

  @override
  String get syncFetch => 'دریافت';

  @override
  String get syncFetchAgain => 'دوباره دریافت';

  @override
  String get syncAll => 'همگام‌سازی همه';

  @override
  String get syncStop => 'توقف';

  @override
  String get syncResume => 'ادامه';

  @override
  String get syncNothingToSync => 'این سرویس برای این نوع قابل همگام‌سازی نیست';

  @override
  String get syncNoTargets => 'برای همگام‌سازی، وارد یه سرویس دیگه شو';

  @override
  String get syncLoadingMap => 'در حال بارگذاری نگاشت شناسه‌ها';

  @override
  String get syncComparing => 'در حال مقایسه لیست‌ها';

  @override
  String get syncIntro =>
      'یه سرویس اصلی انتخاب کن و دریافت رو بزن. لیستت از هر سرویس یه بار گرفته می‌شه و بعد با سرویس اصلی مقایسه می‌شه.';

  @override
  String get syncStateSynced => 'همگام';

  @override
  String get syncStateOutdated => 'ناهمگام';

  @override
  String get syncStateMissing => 'تو لیست نیست';

  @override
  String get syncStateUnmapped => 'مطابقتی نیست';

  @override
  String syncPaused(String time) {
    return 'منتظر محدودیت نرخ، $time دیگه ادامه می‌ده';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count مورد فقط تو $name هستن، دست نخوردن';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done از $total';
  }

  @override
  String get syncNothingHere => 'چیزی برای نمایش نیست';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used از $max درخواست تو هر $window استفاده شده';
  }

  @override
  String get syncMinute => 'دقیقه';

  @override
  String get syncDay => 'روز';

  @override
  String get syncNotInList => 'هنوز تو لیست نیست';

  @override
  String get syncCleared => 'برنامه پاک شد';

  @override
  String get syncClear => 'پاک کردن';

  @override
  String get syncOptions => 'گزینه‌ها';

  @override
  String get syncShared => 'ورودیش رو با یه مورد دیگه شریک می‌شه';

  @override
  String syncNotFound(String service) {
    return 'تو $service پیدا نشد';
  }

  @override
  String syncService(String service, int count) {
    return 'همگام‌سازی $service ($count)';
  }

  @override
  String get syncOnEdit => 'همگام‌سازی فوری تغییرات';

  @override
  String get syncOnEditDesc =>
      'هر به‌روزرسانی پیشرفت و ویرایش لیست رو همون لحظه به بقیه سرویس‌هایی که واردشون شدی بفرست';

  @override
  String syncPushed(String services) {
    return 'با $services همگام شد';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'محدودیت نرخ خوردی، کمی بعد دوباره امتحان کن';

  @override
  String get syncAhead => 'هر کدوم جلوتره';

  @override
  String get syncAheadDesc =>
      'دوطرفه: برای هر عنوان، ورودیِ جلوتر برنده می‌شه و رو همه سرویس‌های دیگه‌ت کپی می‌شه';

  @override
  String syncAheadFrom(String service) {
    return 'از $service';
  }

  @override
  String get syncConfirm => 'بررسی قبل از همگام‌سازی';

  @override
  String get syncConfirmDesc =>
      'نشون بده همگام‌سازی همه چی رو عوض می‌کنه و چند تا درخواست لازمه';

  @override
  String get syncPreviewTitle => 'آماده همگام‌سازی';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates به‌روزرسانی، $adds افزودن';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'حدود $count درخواست';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count شناسه اول باید جستجو بشه';
  }

  @override
  String get syncPreviewNothing => 'چیزی برای تغییر نیست';

  @override
  String get syncStart => 'شروع';

  @override
  String get syncRetry => 'تلاش دوباره';

  @override
  String get syncSkip => 'رد کردن این مورد';

  @override
  String get syncInclude => 'دوباره شامل کردن این مورد';

  @override
  String get syncSkippedLabel => 'رد شد';

  @override
  String get syncChanges => 'تفاوت‌ها';

  @override
  String get syncChangeStatus => 'وضعیت';

  @override
  String get syncChangeProgress => 'پیشرفت';

  @override
  String get syncChangeScore => 'امتیاز';

  @override
  String get syncChangeDates => 'تاریخ‌ها';

  @override
  String get syncChangeRepeat => 'تعداد تماشای دوباره';

  @override
  String get syncFailedReason => 'چرا ناموفق بود';

  @override
  String get syncSkippedHint =>
      'موردهای ردشده دست نمی‌خورن، حتی بعد از دریافت دوباره';

  @override
  String get commentsRules => 'قوانین نظرگذاری';

  @override
  String get commentsRulesBody =>
      'زیر هر قانونی بزنی = اخراجی\n\n۱. نژادپرستی، تبعیض و نفرت‌پراکنی ممنوعه\n۲. اسپم و تبلیغ خودت ممنوعه\n۳. محتوای NSFW اکیداً ممنوعه\n۴. فقط انگلیسی، بدون استثنا\n۵. جعل هویت، آزار و توهین ممنوعه\n۶. محتوای غیرقانونی و بی‌احترامی شدید به هر فندومی ممنوعه\n۷. مخزن یا اکستنشن درخواست نکن و به اشتراک نذار\n۸. اسپویلر فقط با تگ اسپویلر و هشدار\n۹. هیچ نظر جنسی‌سازی‌کننده یا نامناسبی درباره شخصیت‌های زیر سن نذار\n۱۰. اگه اشتباهه، پستش نکن!';

  @override
  String get commentsRulesAccept => 'فهمیدم';

  @override
  String get commentsSortNewest => 'جدیدترین';

  @override
  String get commentsSortOldest => 'قدیمی‌ترین';

  @override
  String get commentsSortHighest => 'بیشترین امتیاز';

  @override
  String get commentsSortLowest => 'کمترین امتیاز';

  @override
  String commentsEpisodeShort(int number) {
    return 'ق $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'چ $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'فیلتر بر اساس قسمت';

  @override
  String get commentsFilterChapterTitle => 'فیلتر بر اساس چپتر';

  @override
  String get commentsFilterTagTitle => 'شماره قسمت یا چپتر رو وارد کن';

  @override
  String get commentsFilterHint => 'شماره';

  @override
  String get commentsFilterApply => 'فیلتر';

  @override
  String get commentsFilterClear => 'نمایش همه';

  @override
  String get commentsPlaceholder => 'یه نظر بنویس…';

  @override
  String commentsReplyingTo(String name) {
    return 'پاسخ به $name';
  }

  @override
  String get commentsSend => 'ارسال';

  @override
  String get commentsTagButton => 'تگ';

  @override
  String commentsTagTitle(String label) {
    return 'تگ $label (اختیاری)';
  }

  @override
  String get commentsTagEpisode => 'قسمت';

  @override
  String get commentsTagChapter => 'چپتر';

  @override
  String commentsTagRange(int total) {
    return '۱–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'شماره $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'تگ نمی‌تونه از مجموع ($total) بیشتر باشه';
  }

  @override
  String get commentsNoTag => 'بدون تگ';

  @override
  String get commentsSpoiler => 'اسپویلر';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'جستجوی GIF';

  @override
  String get commentsGifEmpty => 'GIF ای پیدا نشد';

  @override
  String get commentsEmptyText => 'نظر نمی‌تونه خالی باشه';

  @override
  String get commentsBannedYou => 'نظر دادن برات مسدود شده';

  @override
  String get commentsEdited => 'نظر ویرایش شد';

  @override
  String get commentsDeleted => 'نظر حذف شد';

  @override
  String get commentsDeletedPlaceholder => '[حذف‌شده]';

  @override
  String get commentsReported => 'نظر گزارش شد';

  @override
  String get commentsUserBanned => 'کاربر مسدود شد';

  @override
  String get commentsReport => 'گزارش';

  @override
  String get commentsReportAsk => 'این نظر رو به مدیرها گزارش بدی؟';

  @override
  String get commentsDelete => 'حذف';

  @override
  String get commentsDeleteAsk => 'این نظر برای همه حذف می‌شه.';

  @override
  String get commentsBan => 'مسدود کردن';

  @override
  String get commentsBanAsk => 'این کاربر از نظر دادن مسدود بشه؟';

  @override
  String get commentsCopy => 'کپی';

  @override
  String get commentsViewReply => 'دیدن ۱ پاسخ';

  @override
  String commentsViewReplies(int count) {
    return 'دیدن $count پاسخ';
  }

  @override
  String get commentsHideReplies => 'مخفی کردن پاسخ‌ها';

  @override
  String get commentsLoadMore => 'بارگذاری نظرهای بیشتر';

  @override
  String get commentsEmpty => 'هنوز نظری نیست. اولین نفر باش!';

  @override
  String get commentsEmptyFiltered => 'برای این فیلتر نظری نیست';

  @override
  String get commentsSignIn => 'برای خوندن و نوشتن نظر وارد AniList شو';

  @override
  String get commentsSignInMessage =>
      'نظرها بین همه سرویس‌ها مشترکن و از حساب AniList تو استفاده می‌کنن.';

  @override
  String get commentsUnavailable => 'نظرها برای این عنوان در دسترس نیستن';

  @override
  String get commentsUnavailableMessage => 'با یه ورودی AniList جور نشد.';

  @override
  String get commentsDisabled => 'نظرها خاموشن';

  @override
  String get commentsDisabledMessage =>
      'می‌تونی از تنظیمات › عمومی دوباره روشنشون کنی.';

  @override
  String get commentsOffline => 'نظرها بارگذاری نشدن';

  @override
  String get commentsSingleTitle => 'یه نظر نمایش داده می‌شه';

  @override
  String get commentsShowAll => 'نمایش همه نظرها';

  @override
  String get commentsSettingsHeader => 'نظرها';

  @override
  String get commentsSettingEnabled => 'نظرها';

  @override
  String get commentsSettingEnabledDesc =>
      'تب نظرها رو تو عنوان‌ها نشون بده و با حساب AniList وارد سرور نظرها شو';

  @override
  String get commentsSettingAlerts => 'اعلان‌های پاسخ';

  @override
  String get commentsSettingAlertsDesc => 'وقتی کسی به نظرهام پاسخ داد خبرم کن';

  @override
  String get commentsNoticeReplyTitle => 'پاسخ جدید به نظر';

  @override
  String commentsNoticeReply(String name) {
    return '$name به نظرت پاسخ داد';
  }

  @override
  String get commentsNoticeWarningTitle => 'یه اخطار گرفتی';

  @override
  String get commentsNoticeWarning => 'تو نظرهات بیشتر دقت کن';

  @override
  String get commentsNoticeUpdateTitle => 'به‌روزرسانی از Dantotsu';

  @override
  String get barcodeTitle => 'اسکن بارکد';

  @override
  String get barcodeTooltip => 'یه مانگا یا ناول رو با بارکدش پیدا کن';

  @override
  String get barcodeIntro =>
      'دوربین رو بگیر طرف بارکد پشت جلد یا ISBN رو تایپ کن.';

  @override
  String get barcodeIntroManual =>
      'ISBN چاپ‌شده بالای بارکد پشت جلد رو تایپ کن.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'این ISBN معتبر نیست';

  @override
  String barcodeNotFound(String isbn) {
    return 'کتابی برای $isbn پیدا نشد';
  }

  @override
  String get barcodeCameraDenied =>
      'دوربین در دسترس نیست. دسترسی دوربین رو بده یا به‌جاش ISBN رو تایپ کن.';

  @override
  String get themesTitle => 'اپنینگ‌ها و اندینگ‌ها';

  @override
  String get themesPlayVideo => 'پخش ویدیو';

  @override
  String get themesPlayAudio => 'فقط پخش صدا';

  @override
  String get themesOpenSite => 'باز کردن تو AnimeThemes';

  @override
  String get themesCredit => 'تم‌ها از AnimeThemes';

  @override
  String get themesVersions => 'نسخه‌ها';

  @override
  String get sauceTitle => 'پیدا کردن منبع';

  @override
  String get sauceIntro =>
      'یه صفحه مانگا یا یه اثر هنری آپلود کن، یا لینکش رو بچسبون، تا بفهمی از کجاست.';

  @override
  String get sauceKeyTitle => 'کلید API سرویس SauceNAO';

  @override
  String get sauceKeyHint => 'اختیاری، سقف جستجوی روزانه رو بالا می‌بره';

  @override
  String get sauceKeyDesc => 'یه کلید رایگان از saucenao.com/user.php بگیر';

  @override
  String get sauceOpen => 'باز کردن منبع';

  @override
  String get sauceCredit => 'جستجوی تصویر با SauceNAO';

  @override
  String get sauceEmpty => 'مطابقتی پیدا نشد';

  @override
  String get sauceTooltip => 'منبع یه صفحه مانگا یا اثر هنری رو پیدا کن';

  @override
  String get trendzTitle => 'چارت‌های انیمه';

  @override
  String get trendzAnime => 'انیمه';

  @override
  String get trendzFemale => 'شخصیت‌های زن';

  @override
  String get trendzMale => 'شخصیت‌های مرد';

  @override
  String get trendzCouple => 'زوج‌ها';

  @override
  String get trendzCredit => 'چارت‌های هفتگی از AniTrendz';

  @override
  String get trendzNew => 'جدید';

  @override
  String get trendzEmpty => 'چارت خالیه';

  @override
  String get shareCard => 'کارت اشتراک';

  @override
  String get shareCardList => 'اشتراک کارت لیست';

  @override
  String get shareCardSaved => 'کارت ذخیره شد';

  @override
  String get shareCardFailed => 'کارت ساخته نشد';

  @override
  String get shareCardListEmpty => 'لیستت هنوز چیزی برای اشتراک نداره';

  @override
  String get shareCardTop => 'بهترین انتخاب‌های من';

  @override
  String themesEpisodes(String eps) {
    return 'قسمت‌ها $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent٪ تطابق';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'هفته $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count رأی';
  }

  @override
  String trendzPeak(String rank) {
    return 'اوج #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count هفته تو ده‌تای برتر';
  }

  @override
  String get imageSearchTitle => 'جستجو با تصویر';

  @override
  String get imageSearchTooltip => 'یه انیمه رو با اسکرین‌شات پیدا کن';

  @override
  String get imageSearchIntro =>
      'یه اسکرین‌شات انتخاب کن یا لینک تصویر بچسبون تا trace.moe قسمت و لحظه‌ای که ازش اومده رو پیدا کنه.';

  @override
  String get imageSearchPick => 'انتخاب تصویر';

  @override
  String get imageSearchLinkHint => 'چسباندن لینک تصویر';

  @override
  String get imageSearchGo => 'جستجو';

  @override
  String get imageSearchEmpty => 'مطابقتی پیدا نشد';

  @override
  String get imageSearchAdult => '+۱۸';

  @override
  String imageSearchEpisode(String number) {
    return 'قسمت $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'در $time';
  }

  @override
  String get imageSearchPreview => 'پیش‌نمایش کلیپ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent٪ تطابق';
  }

  @override
  String get imageSearchCredit => 'قدرت گرفته از trace.moe';

  @override
  String get imageSearchOpenFailed => 'این عنوان باز نشد';

  @override
  String get groups => 'گروه‌ها';

  @override
  String get groupsYours => 'گروه‌های تو';

  @override
  String get groupsPopular => 'محبوب';

  @override
  String get groupsNew => 'جدید';

  @override
  String get groupsFeatured => 'ویژه';

  @override
  String get groupsSearch => 'جستجوی گروه‌ها';

  @override
  String get groupsAll => 'همه';

  @override
  String get groupsEmpty => 'گروهی پیدا نشد';

  @override
  String get groupsEmptyYours => 'هنوز عضو هیچ گروهی نشدی';

  @override
  String get groupsSignIn => 'برای دیدن گروه‌هایی که عضوشونی وارد شو';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عضو',
      one: '۱ عضو',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'عضویت';

  @override
  String get groupsJoined => 'عضو شدی';

  @override
  String get groupsLeave => 'ترک گروه';

  @override
  String get groupsLeaveAsk =>
      'پست‌های این گروه دیگه تو فیدت نشون داده نمی‌شن.';

  @override
  String get groupsJoinFailed =>
      'نتونستی عضو این گروه بشی، شاید فقط با دعوت‌نامه باشه';

  @override
  String get groupsLeaveFailed => 'ترک این گروه ممکن نشد';

  @override
  String get groupsPosts => 'پست‌ها';

  @override
  String get groupsMembersTab => 'اعضا';

  @override
  String get groupsAbout => 'درباره';

  @override
  String get groupsRules => 'قوانین';

  @override
  String get groupsPrivacyOpen => 'باز';

  @override
  String get groupsPrivacyRestricted => 'محدود';

  @override
  String get groupsPrivacyClosed => 'بسته';

  @override
  String get groupsAdult => '+۱۸';

  @override
  String get groupsRoleAdmin => 'ادمین';

  @override
  String get groupsRoleMod => 'مدیر';

  @override
  String get groupsCouldntLoad => 'این گروه بارگذاری نشد';

  @override
  String get groupsNewPost => 'پست تو گروه';

  @override
  String get groupsPostHint => 'یه چیزی با گروه به اشتراک بذار';

  @override
  String get groupsOpenInBrowser => 'باز کردن تو مرورگر';

  @override
  String get groupsCategory => 'دسته';

  @override
  String get groupsLanguage => 'زبان';

  @override
  String get groupsCreated => 'ساخته‌شده';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count رهبر',
      one: '۱ رهبر',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'حریم خصوصی';

  @override
  String get notificationsAll => 'همه';

  @override
  String get notificationsAiring => 'درحال پخش';

  @override
  String get notificationsMedia => 'عنوان‌های جدید';

  @override
  String get notificationsReplies => 'پاسخ‌ها';

  @override
  String get notificationsMentions => 'منشن‌ها';

  @override
  String get notificationsMessages => 'پیام‌ها';

  @override
  String get notificationsLikes => 'لایک‌ها';

  @override
  String get notificationsFollows => 'دنبال‌ها';

  @override
  String get notificationsNoServices => 'هیچ سرویسی که واردش شدی اعلان نداره';

  @override
  String get notificationsNoServicesMessage =>
      'وارد سرویسی شو که اعلان می‌فرسته تا اینجا نشون داده بشه.';

  @override
  String get notificationsEmptyKind => 'هنوز چیزی تو این دسته نیست';

  @override
  String get notificationsCommentsEmpty => 'اعلان نظری نیست';

  @override
  String get notificationsCommentsEmptyMessage =>
      'پاسخ به نظرهات و اطلاعیه‌های Dantotsu اینجا نشون داده می‌شن.';

  @override
  String get notificationsSettings => 'تنظیمات اعلان';

  @override
  String get notificationsPollTitle => 'بررسی اعلان‌های جدید';

  @override
  String notificationsPollDesc(int minutes) {
    return 'هر $minutes دقیقه تا وقتی اپ بازه';
  }

  @override
  String get notificationsNotifyAbout => 'درباره‌ی این‌ها خبرم کن';

  @override
  String get notificationsCommentsHeader => 'اعلان‌های نظر';

  @override
  String systemNotificationsDescFor(String service) {
    return 'تا وقتی اپ اجرا می‌شه برای هر اعلان خونده‌نشده‌ی $service یه اعلان سیستمی نشون بده.';
  }

  @override
  String get notificationsTestSent => 'اعلان تست فرستاده شد';

  @override
  String get notificationsTestDenied =>
      'اعلان‌ها برای Dartotsu مجاز نیستن. از تنظیمات سیستم روشنشون کن.';

  @override
  String get notificationsTestHint => 'برای فرستادن اعلان تست، نگه دار';

  @override
  String get notificationsTestSample => 'این یه اعلان تسته';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name تو $media به نظرت پاسخ داد';
  }

  @override
  String get imageSearchNotLink => 'این شبیه لینک نیست';

  @override
  String get imageSearchQuota => 'سهمیه جستجو تموم شد';

  @override
  String get imageSearchBusy => 'درخواست‌ها زیاده، کمی بعد دوباره امتحان کن';

  @override
  String imageSearchFailed(int code) {
    return 'جستجو ناموفق بود ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count اعلان جدید';
  }

  @override
  String get reactionsTitle => 'واکنش‌ها';

  @override
  String get reactionsNeedEntry =>
      'قبل از واکنش، این عنوان رو به لیستت اضافه کن';

  @override
  String get reactionsAdd => 'افزودن واکنش';

  @override
  String get reactionsHint => 'نظرت چیه؟ (کوتاه و بدون اسپویلر)';

  @override
  String get reactionsPost => 'ارسال';

  @override
  String get reactionsFailed => 'واکنش به‌روز نشد';

  @override
  String get settingsWatch => 'تماشا و خوندن';

  @override
  String get settingsWatchDesc => 'لیست قسمت‌ها، تطبیق منبع و جزئیات قسمت‌ها';

  @override
  String get watchSettingsLayout => 'لیست قسمت‌ها';

  @override
  String get watchSettingsSources => 'منبع‌ها';

  @override
  String get watchSettingsMetadata => 'جزئیات قسمت‌ها';

  @override
  String get watchLayout => 'چیدمان';

  @override
  String get watchListView => 'لیست';

  @override
  String get watchGridView => 'شبکه‌ای';

  @override
  String get watchCompactView => 'فشرده';

  @override
  String get watchDefaultLayoutDesc =>
      'قسمت‌ها و چپترها تا وقتی برای یه عنوان عوضش نکنی چطور چیده بشن';

  @override
  String get watchChunkSize => 'اندازه بازه';

  @override
  String get watchChunkSizeDesc => 'هر تب بازه چند تا قسمت یا چپتر داشته باشه';

  @override
  String get watchShowDescription => 'نمایش توضیحات';

  @override
  String get watchShowDescriptionDesc =>
      'خلاصه قسمت رو زیر هر عنوان تو چیدمان لیستی نشون بده';

  @override
  String get watchShowFiller => 'نمایش قسمت‌های فیلر';

  @override
  String get watchShowFillerDesc =>
      'خاموشش کن تا قسمت‌های علامت‌خورده به‌عنوان فیلر مخفی بشن';

  @override
  String get watchBlurUnwatched => 'مخفی کردن تصویر کوچک اسپویلردار';

  @override
  String get watchBlurUnwatchedDesc =>
      'تصویر کوچک قسمت‌هایی که هنوز ندیدی رو تار کن';

  @override
  String get watchResumeShelf => 'ردیف ادامه';

  @override
  String get watchResumeShelfDesc => 'ردیف ادامه رو تو صفحه اصلی نشون بده';

  @override
  String get watchMarkOnLongPress => 'نگه‌داشتن برای علامت‌گذاری پیشرفت';

  @override
  String get watchMarkOnLongPressDesc =>
      'یه قسمت یا چپتر رو نگه دار تا به‌عنوان دیده‌شده یا ندیده علامت بخوره';

  @override
  String get watchMatching => 'تطبیق منبع';

  @override
  String get watchMatchingDesc =>
      '«نزدیک‌ترین» بهترین نتیجه جستجو رو برمی‌داره. «فقط دقیق» فقط عنوان تقریباً یکسان رو قبول می‌کنه و بقیه رو می‌ذاره خودت انتخاب کنی.';

  @override
  String get watchMatchClosest => 'نزدیک‌ترین تطابق';

  @override
  String get watchMatchExact => 'فقط تطابق دقیق';

  @override
  String get watchMetadataDesc =>
      'عنوان قسمت‌ها، خلاصه‌ها، تصویرهای کوچک، تاریخ پخش و نشانه‌های فیلر از کجا بیان. برای تعیین اولویت بکش؛ اولین منبعی که مقدار داشته باشه برنده‌ست.';

  @override
  String get watchMetaAniZipDesc =>
      'عنوان قسمت‌ها، خلاصه‌ها، تصاویر و تاریخ پخش';

  @override
  String get watchMetaKitsuDesc => 'عنوان قسمت‌ها، توضیحات و تصویرهای کوچک';

  @override
  String get watchMetaSimklDesc => 'عنوان قسمت‌ها، توضیحات، تصاویر و تاریخ پخش';

  @override
  String get watchMetaAniListDesc =>
      'عنوان قسمت‌های استریم، تصویرهای کوچک و برنامه پخش';

  @override
  String get watchMetaTenraiDesc =>
      'عنوان قسمت‌ها، تاریخ پخش و نشانه‌های فیلر و خلاصه از MyAnimeList از طریق Tenrai';

  @override
  String get watchClearMetadata => 'تازه‌سازی جزئیات قسمت‌ها';

  @override
  String get watchClearMetadataDesc =>
      'جزئیات کش‌شده قسمت‌ها رو فراموش کن تا دوباره گرفته بشن';

  @override
  String get watchMetadataCleared => 'جزئیات قسمت‌ها دوباره گرفته می‌شن';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قسمت',
      one: '۱ قسمت',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چپتر',
      one: '۱ چپتر',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'قسمت $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'چپتر $number';
  }

  @override
  String get watchSearching => 'در حال جستجو…';

  @override
  String watchSearchingFor(String term) {
    return 'در حال جستجو: $term';
  }

  @override
  String watchSelected(String title) {
    return 'انتخاب‌شده: $title';
  }

  @override
  String watchFound(String title) {
    return 'پیدا شد: $title';
  }

  @override
  String get watchNothingFound => 'تو این منبع چیزی پیدا نشد';

  @override
  String get watchSearchFailed => 'جستجوی منبع ناموفق بود';

  @override
  String get watchLoadFailed => 'لیست بارگذاری نشد';

  @override
  String get watchSignInToTrack => 'برای ردیابی پیشرفتت وارد شو';

  @override
  String watchInstallSource(String action) {
    return 'برای شروع $action یه اکستنشن نصب کن';
  }

  @override
  String get watchSourceMissing => 'این منبع نصب نیست';

  @override
  String get watchWrongTitle => 'عنوان اشتباهه؟';

  @override
  String get watchSearchAgain => 'جستجوی دوباره';

  @override
  String watchSearchSource(String source) {
    return 'جستجو تو $source';
  }

  @override
  String get watchSource => 'منبع';

  @override
  String get watchOptions => 'گزینه‌ها';

  @override
  String get watchReverse => 'ترتیب معکوس';

  @override
  String get watchScanlators => 'گروه‌ها';

  @override
  String get watchResetOptions => 'بازنشانی این گزینه‌ها';

  @override
  String get watchContinue => 'ادامه';

  @override
  String get watchStart => 'شروع';

  @override
  String get watchPlay => 'پخش';

  @override
  String get watchRead => 'خوندن';

  @override
  String get watchMarkWatched => 'علامت‌گذاری به‌عنوان دیده‌شده';

  @override
  String get watchMarkUnwatched => 'علامت‌گذاری به‌عنوان ندیده';

  @override
  String get watchMarkRead => 'علامت‌گذاری به‌عنوان خونده‌شده';

  @override
  String get watchMarkUnread => 'علامت‌گذاری به‌عنوان نخونده';

  @override
  String get watchFiller => 'فیلر';

  @override
  String get watchRecap => 'خلاصه قبلی';

  @override
  String get watchNoEpisodes => 'قسمتی پیدا نشد';

  @override
  String get watchNoChapters => 'چپتری پیدا نشد';

  @override
  String get watchSourceTools => 'ابزارهای منبع';

  @override
  String get watchSourceSettings => 'تنظیمات منبع';

  @override
  String get watchOpenWebView => 'باز کردن تو وب‌ویو';

  @override
  String get watchOpenWebViewDesc =>
      'یه بررسی Cloudflare رو حل کن یا وارد شو؛ کوکی‌ها با درخواست‌های منبع به اشتراک گذاشته می‌شن';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count کوکی برای $host ذخیره شده',
      one: '۱ کوکی برای $host ذخیره شده',
      zero: 'هیچ کوکی‌ای برای $host ذخیره نشده',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'مجوز Cloudflare فعاله، $time';
  }

  @override
  String get watchClearanceMissing => 'کوکی مجوز Cloudflare نیست';

  @override
  String get watchClearanceSession => 'تا بسته شدن اپ می‌مونه';

  @override
  String get watchAgentShared =>
      'درخواست‌ها از user agent وب‌ویو استفاده می‌کنن، که Cloudflare بررسیش می‌کنه';

  @override
  String get watchAgentCustom =>
      'یه user agent سفارشی تنظیم شده، پس ممکنه مجوز Cloudflare از وب‌ویو رد بشه';

  @override
  String get watchTestConnection => 'تست اتصال';

  @override
  String get watchSolveChallenge => 'حلش کن';

  @override
  String watchProbeOk(int code) {
    return 'در دسترسه (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare هنوز بررسی می‌خواد';

  @override
  String watchProbeBlocked(int code) {
    return 'سایت مسدودش کرده (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'به سایت دسترسی پیدا نشد';

  @override
  String get watchClearCookies => 'پاک کردن کوکی‌های این سایت';

  @override
  String get watchCookiesCleared => 'کوکی‌ها پاک شدن';

  @override
  String get watchFailTimeout => 'The check didn\'t finish in time';

  @override
  String get watchFailBlocked =>
      'The site blocked this device (access denied). A check won\'t help';

  @override
  String get watchFailTurnstile =>
      'This check needs a tap that the background solver can\'t do';

  @override
  String get watchFailLoad =>
      'The page didn\'t load. Check the connection and the site address';

  @override
  String get watchFailRejected =>
      'The site rejected the clearance it just gave. Try again or clear the cookies';

  @override
  String get watchFailDismissed => 'The check was closed before it finished';

  @override
  String get watchFailCooldown =>
      'You closed the check a moment ago. Press Solve it to try again';

  @override
  String get watchFailQuiet =>
      'The check needs you, and the app was working on its own';

  @override
  String get watchFailWebView => 'The background web view couldn\'t start';

  @override
  String get watchFailUnavailable => 'There is no screen to show the check on';

  @override
  String get watchStatusReady => 'Ready';

  @override
  String get watchStatusChallenge => 'Cloudflare check needed';

  @override
  String get watchStatusBlocked => 'Blocked by the site';

  @override
  String get watchStatusOffline => 'Can\'t reach the site';

  @override
  String get watchStatusUntested => 'Not tested yet';

  @override
  String get watchStatusTesting => 'Testing the connection…';

  @override
  String get watchStatusSolving => 'Passing the Cloudflare check…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare check passed in the background ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare check passed';

  @override
  String watchClearanceIssued(String time) {
    return 'earned $time';
  }

  @override
  String get watchClearanceStale =>
      'The clearance was earned with another user agent, so it isn\'t sent. Test the connection to get a new one';

  @override
  String get watchSectionConnection => 'Connection';

  @override
  String get watchSectionSession => 'Session';

  @override
  String get watchSectionTools => 'Tools';

  @override
  String get watchMetaSource => 'جزئیات قسمت‌ها از';

  @override
  String get watchMetaAuto => 'خودکار';

  @override
  String get watchMetaOff => 'خاموش';

  @override
  String get playerSettingsTitle => 'تنظیمات پخش‌کننده';

  @override
  String get playerSectionPlayback => 'پخش';

  @override
  String get playerSectionSkip => 'پرش';

  @override
  String get playerSectionGestures => 'کنترل‌ها';

  @override
  String get playerSectionSubtitles => 'زیرنویس‌ها';

  @override
  String get playerSectionShaders => 'شیدرها';

  @override
  String get playerSectionEngine => 'موتور';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'سرعت پخش';

  @override
  String get playerCursedSpeed => 'سرعت‌های اضافه';

  @override
  String get playerCursedSpeedDesc => 'سرعت‌ها تا ۱۰ برابر رو به لیست اضافه کن';

  @override
  String get playerResize => 'حالت تغییر اندازه';

  @override
  String get playerFitFit => 'جاگیری';

  @override
  String get playerFitCover => 'پر کردن';

  @override
  String get playerFitStretch => 'کشیده';

  @override
  String get playerSkipDuration => 'طول دکمه پرش';

  @override
  String get playerSkipDurationDesc =>
      'ثانیه‌هایی که دکمه پرش بیرون از اپنینگ‌ها و اندینگ‌ها می‌پره';

  @override
  String get playerSeekDuration => 'پرش با دابل‌تپ';

  @override
  String get playerSeekDurationDesc =>
      'ثانیه‌هایی که با دابل‌تپ یا کلید جهت‌دار می‌پره';

  @override
  String get playerAutoPlay => 'پخش خودکار بعدی';

  @override
  String get playerAutoPlayDesc =>
      'وقتی این قسمت تموم شد، قسمت بعدی رو شروع کن';

  @override
  String get playerResume => 'ادامه از جایی که موندی';

  @override
  String get playerResumeDesc => 'یه قسمت رو از آخرین جاش ادامه بده';

  @override
  String get playerOrientation => 'جهت صفحه';

  @override
  String get playerOrientationAuto => 'دنبال دستگاه';

  @override
  String get playerOrientationLandscape => 'افقی';

  @override
  String get playerOrientationPortrait => 'عمودی';

  @override
  String get playerAutoSkipOpening => 'رد کردن اپنینگ‌ها';

  @override
  String get playerAutoSkipEnding => 'رد کردن اندینگ‌ها';

  @override
  String get playerAutoSkipRecap => 'رد کردن خلاصه‌های قبلی';

  @override
  String get playerAutoSkipDesc =>
      'به‌محض شروع ازش بپر، با AniSkip و زمان‌بندی‌های استریم';

  @override
  String get playerSkipOnce => 'فقط یک بار رد کن';

  @override
  String get playerSkipOnceDesc =>
      'اگه دوباره تو همون بخش برگشتی، دوباره ردش نکن';

  @override
  String get playerAdjustBrightness => 'ژست روشنایی';

  @override
  String get playerAdjustBrightnessDesc => 'رو نیمه راست صفحه بالا و پایین بکش';

  @override
  String get playerAdjustVolume => 'ژست صدا';

  @override
  String get playerAdjustVolumeDesc => 'رو نیمه چپ صفحه بالا و پایین بکش';

  @override
  String get playerHoldToSpeed => 'نگه‌داشتن برای تندتر شدن';

  @override
  String get playerHoldToSpeedDesc =>
      'ویدیو رو نگه دار تا تندتر پخش بشه، برای تغییر سرعت به کنار بکش';

  @override
  String get playerThumbless => 'نوار پیشروی ضخیم‌تر';

  @override
  String get playerThumblessDesc => 'یه نوار ضخیم بدون دستگیره';

  @override
  String get playerShowSubtitles => 'نمایش زیرنویس‌ها';

  @override
  String get playerShowSubtitlesDesc =>
      'خاموشش کن تا همه ترک‌های زیرنویس مخفی بشن';

  @override
  String get playerSubtitleLanguage => 'زبان زیرنویس دلخواه';

  @override
  String get playerSubtitleSize => 'اندازه زیرنویس';

  @override
  String get playerSubtitleWeight => 'ضخامت زیرنویس';

  @override
  String get playerSubtitleBottom => 'فاصله پایین زیرنویس';

  @override
  String get playerSubtitleFont => 'فونت زیرنویس';

  @override
  String get playerSubtitleColor => 'رنگ زیرنویس';

  @override
  String get playerSubtitleBackground => 'پس‌زمینه زیرنویس';

  @override
  String get playerSubtitleOutline => 'حاشیه زیرنویس';

  @override
  String get playerLibass => 'استفاده از libass';

  @override
  String get playerLibassDesc =>
      'زیرنویس‌های .ass استایل‌دار رو رندر کن. اندازه، رنگ و فونت بالا دیگه اعمال نمی‌شن';

  @override
  String get playerShaders => 'شیدرها';

  @override
  String get playerShadersEnable => 'فعال کردن شیدرها';

  @override
  String get playerShadersEnableDesc =>
      'تصویر رو با شیدرهای GLSL مثل Anime4K ارتقا بده و تمیز کن';

  @override
  String get playerShadersOff => 'شیدرها خاموشن';

  @override
  String get playerShadersMissing => 'Anime4K نصب نیست';

  @override
  String get playerShadersMissingDesc =>
      'بسته شیدر Anime4K (حدود ۰٫۸ مگ) رو دانلود کن تا از حالت‌های داخلی استفاده کنی.';

  @override
  String get playerShadersDownload => 'دانلود Anime4K';

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
  String get playerShadersPreview => 'پیش‌نمایش رو این فریم';

  @override
  String get playerShadersUse => 'استفاده از این';

  @override
  String get playerPicture => 'تصویر';

  @override
  String get playerColors => 'رنگ‌ها';

  @override
  String get playerColorDefault => 'پیش‌فرض';

  @override
  String get playerColorVivid => 'زنده';

  @override
  String get playerColorPop => 'انیمه‌پاپ';

  @override
  String get playerColorSoft => 'ملایم';

  @override
  String get playerColorCinematic => 'سینمایی';

  @override
  String get playerColorBright => 'روشن';

  @override
  String get playerColorNight => 'شب';

  @override
  String get playerColorMono => 'تک‌رنگ';

  @override
  String get playerColorCustom => 'سفارشی';

  @override
  String get playerColorBrightness => 'روشنایی';

  @override
  String get playerColorContrast => 'کنتراست';

  @override
  String get playerColorSaturation => 'اشباع';

  @override
  String get playerColorGamma => 'گاما';

  @override
  String get playerColorHue => 'رنگ‌مایه';

  @override
  String get playerColorReset => 'بازنشانی';

  @override
  String get playerColorAdjust => 'تنظیم';

  @override
  String get playerShadersOriginal => 'اصلی';

  @override
  String get playerShadersPreviewFailed => 'یه فریم برای پیش‌نمایش گرفته نشد';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'شیدرهای تو';

  @override
  String get playerShadersCustom => 'شیدرهای سفارشی';

  @override
  String get playerShadersImport => 'وارد کردن .glsl';

  @override
  String get playerShadersNone =>
      'فایل‌های .glsl یا .hook خودت رو وارد کن و تیکشون بزن تا زنجیر بشن';

  @override
  String get playerShadersBadFile => 'یه فایل شیدر .glsl یا .hook انتخاب کن';

  @override
  String get playerDecoder => 'دیکودر';

  @override
  String get playerDecoderAuto => 'خودکار';

  @override
  String get playerDecoderAutoSafe => 'خودکار (امن)';

  @override
  String get playerDecoderSoftware => 'نرم‌افزاری';

  @override
  String get playerDecoderHardware => 'سخت‌افزاری';

  @override
  String get playerDecoderHardwarePlus => 'سخت‌افزاری+';

  @override
  String get playerVideoOutput => 'خروجی ویدیو';

  @override
  String get playerAudioChannels => 'کانال‌های صدا';

  @override
  String get playerBuffer => 'اندازه بافر (MB)';

  @override
  String get playerBufferDesc =>
      'حافظه‌ای که پخش‌کننده می‌تونه برای بافر کردن استریم استفاده کنه';

  @override
  String get playerUseMpvConf => 'استفاده از mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'وقتی پخش شروع می‌شه، گزینه‌های mpv.conf رو اعمال کن';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'ویرایش پیکربندی mpv';

  @override
  String get playerMpvConfDesc =>
      'هر خط یه گزینه، مثل --hwdec=auto تو یه mpv.conf معمولی. پروفایل‌های داخل [کروشه] نادیده گرفته می‌شن.';

  @override
  String get playerMpvConfSaved => 'mpv.conf ذخیره شد';

  @override
  String get playerUseScripts => 'استفاده از اسکریپت‌های mpv';

  @override
  String get playerUseScriptsDesc =>
      'پلاگین‌های پوشه scripts رو بارگذاری کن. به یه بیلد libmpv با پشتیبانی Lua یا JavaScript نیاز دارن';

  @override
  String get playerScripts => 'اسکریپت‌های mpv';

  @override
  String get playerScriptsManage => 'پلاگین‌ها رو اضافه، حذف و عوض کن';

  @override
  String get playerScriptsAdd => 'افزودن اسکریپت';

  @override
  String get playerScriptsDesc =>
      'پلاگین‌های Lua، JavaScript و نیتیو که اینجا بذاری موقع شروع پخش بارگذاری می‌شن.';

  @override
  String get playerScriptsNone => 'هنوز اسکریپتی نیست';

  @override
  String get playerScriptsBadFile =>
      'یه فایل .lua، .js یا پلاگین نیتیو انتخاب کن';

  @override
  String get playerTuning => 'تنظیم پیشرفته ویدیو';

  @override
  String get playerTuningDesc =>
      'همگام‌سازی، کش، مقیاس‌دهی و تون‌مپینگ رو بازنویسی کن. مقدارهای اشتباه می‌تونن پخش رو خراب کنن';

  @override
  String get playerVideoSync => 'همگام‌سازی ویدیو';

  @override
  String get playerInterpolation => 'میان‌یابی فریم';

  @override
  String get playerInterpolationDesc =>
      'حرکت روان، به همگام‌سازی display-resample نیاز داره';

  @override
  String get playerPitch => 'اصلاح گام صدا';

  @override
  String get playerPitchDesc => 'صدا رو تو سرعت‌های دیگه طبیعی نگه دار';

  @override
  String get playerCacheSeconds => 'کش (ثانیه)';

  @override
  String get playerReadahead => 'پیش‌خوانی (ثانیه)';

  @override
  String get playerThreads => 'رشته‌های دیکودر';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'باند رنگی تو گرادیانت‌ها رو کم کن';

  @override
  String get playerDebandIterations => 'تکرارهای Deband';

  @override
  String get playerDebandThreshold => 'آستانه Deband';

  @override
  String get playerCorrectDownscaling => 'کوچک‌سازی درست';

  @override
  String get playerSigmoid => 'ارتقای سیگموید';

  @override
  String get playerScale => 'ارتقادهنده';

  @override
  String get playerCscale => 'ارتقادهنده کروما';

  @override
  String get playerDscale => 'کوچک‌کننده';

  @override
  String get playerToneMapping => 'تون‌مپینگ';

  @override
  String get playerTargetPeak => 'پیک هدف';

  @override
  String get playerOpenFiles => 'باز کردن فایل‌های ویدیو';

  @override
  String get playerOpenFilesDesc => 'فایل‌های این دستگاه رو پخش کن';

  @override
  String get playerOpenFolder => 'باز کردن پوشه';

  @override
  String get playerOpenFolderDesc =>
      'همه ویدیوهای یه پوشه رو مثل پلی‌لیست پخش کن';

  @override
  String get playerNetworkStream => 'استریم شبکه';

  @override
  String get playerNetworkStreamDesc => 'یه لینک مستقیم ویدیو یا HLS باز کن';

  @override
  String get playerStreamUrl => 'آدرس استریم';

  @override
  String get playerStreamReferer => 'Referer (اختیاری)';

  @override
  String get playerTorrent => 'تورنت';

  @override
  String get playerTorrentDesc => 'یه لینک مگنت یا فایل .torrent رو استریم کن';

  @override
  String get playerMagnetLink => 'لینک مگنت یا آدرس تورنت';

  @override
  String get playerPickTorrent => 'یه فایل .torrent انتخاب کن';

  @override
  String get playerTorrentMissing =>
      'اول افزونه تورنت رو از تنظیمات > افزونه‌ها نصب کن';

  @override
  String get playerNoVideos => 'ویدیوی قابل پخشی پیدا نشد';

  @override
  String get playerReset => 'بازنشانی تنظیمات پخش‌کننده';

  @override
  String get playerResetDesc => 'همه گزینه‌های پخش‌کننده رو به پیش‌فرض برگردون';

  @override
  String get playerResetConfirm => 'همه تنظیمات پخش‌کننده بازنشانی بشن؟';

  @override
  String get playerResetDone => 'تنظیمات پخش‌کننده بازنشانی شد';

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
  String get playerStreams => 'استریم‌ها';

  @override
  String get playerAutoSelect => 'انتخاب خودکار استریم';

  @override
  String get playerAutoSelectDesc =>
      'استریمی رو انتخاب کن که بیشترین شباهت رو به انتخاب قبلیت برای این عنوان داره';

  @override
  String get playerLoadingStreams => 'در حال پیدا کردن استریم…';

  @override
  String get playerNoStreams => 'این قسمت استریمی نداره';

  @override
  String get playerNoStreamsTitle => 'استریمی پیدا نشد';

  @override
  String get playerFailed => 'پخش ناموفق بود';

  @override
  String get playerTorrentNeeded => 'این استریم یه تورنته';

  @override
  String get playerTorrentNeededDesc =>
      'برای پخش لینک‌های مگنت و فایل‌های .torrent افزونه تورنت رو نصب کن';

  @override
  String get playerOpenAddons => 'باز کردن افزونه‌ها';

  @override
  String get playerTryAnotherStream => 'امتحان استریم دیگه';

  @override
  String get playerEpisodes => 'قسمت‌ها';

  @override
  String get playerLock => 'قفل کنترل‌ها';

  @override
  String get playerFullscreen => 'تمام‌صفحه';

  @override
  String get readerChapters => 'چپترها';

  @override
  String get readerSettingsTitle => 'تنظیمات خوانشگر';

  @override
  String get readerPreviousChapter => 'چپتر قبلی';

  @override
  String get readerNextChapter => 'چپتر بعدی';

  @override
  String get readerFirstChapter => 'این اولین چپتره';

  @override
  String get readerLastChapter => 'به‌روز هستی';

  @override
  String get readerFailed => 'این چپتر باز نشد';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'این چپتر متن نداره';

  @override
  String get readerPerTitle => 'فقط برای این عنوان';

  @override
  String get readerPerTitleDesc =>
      'این تنظیمات خوانشگر رو فقط برای این عنوان نگه دار';

  @override
  String get readerSectionReading => 'خوندن';

  @override
  String get readerSectionControls => 'کنترل‌ها';

  @override
  String get readerSectionDisplay => 'نمایش';

  @override
  String get readerSectionNovel => 'ناول';

  @override
  String get readerMode => 'حالت خوندن';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'راست به چپ';

  @override
  String get readerModeLtr => 'چپ به راست';

  @override
  String get readerModeVertical => 'صفحه‌های عمودی';

  @override
  String get readerModeWebtoon => 'وبتون';

  @override
  String get readerModeContinuous => 'اسکرول پیوسته';

  @override
  String get readerScale => 'مقیاس تصویر';

  @override
  String get readerScaleFit => 'جاگیری در صفحه';

  @override
  String get readerScaleWidth => 'جاگیری در عرض';

  @override
  String get readerScaleHeight => 'جاگیری در ارتفاع';

  @override
  String get readerScaleOriginal => 'اندازه اصلی';

  @override
  String get readerScaleSmart => 'جاگیری هوشمند';

  @override
  String get readerDoublePage => 'صفحه‌های دوتایی';

  @override
  String get readerDoublePageDesc => 'تو حالت افقی دو صفحه رو کنار هم نشون بده';

  @override
  String get readerDoubleTapZoom => 'دابل‌تپ برای زوم';

  @override
  String get readerDoubleTapZoomDesc =>
      'با دابل‌تپ صفحه رو زوم این و زوم اوت کن';

  @override
  String get readerAnimate => 'انیمیشن صفحه';

  @override
  String get readerAnimateDesc => 'ورق زدن صفحه‌ها انیمیشن داشته باشه';

  @override
  String get readerSidePadding => 'فاصله کناره‌ها';

  @override
  String get readerSidePaddingDesc => 'فضای کنار صفحه‌ها به درصد';

  @override
  String get readerPageGap => 'فاصله بین صفحه‌ها';

  @override
  String get readerPageGapDesc => 'فضای بین صفحه‌ها';

  @override
  String get readerAutoNext => 'ادامه تو چپتر بعدی';

  @override
  String get readerAutoNextDesc =>
      'وقتی داری آخر این چپتر رو می‌خونی، چپتر بعدی رو بارگذاری کن';

  @override
  String get readerPreload => 'پیش‌بارگذاری صفحه‌ها';

  @override
  String get readerPreloadDesc => 'چند صفحه جلوتر دانلود بشه';

  @override
  String get readerTapZones => 'ناحیه‌های لمس';

  @override
  String get readerTapDefault => 'پیش‌فرض';

  @override
  String get readerTapLShaped => 'L شکل';

  @override
  String get readerTapKindle => 'شبیه کیندل';

  @override
  String get readerTapEdge => 'فقط لبه‌ها';

  @override
  String get readerTapOff => 'غیرفعال';

  @override
  String get readerInvertTaps => 'معکوس کردن ناحیه‌های لمس';

  @override
  String get readerInvertTapsDesc => 'ناحیه‌های قبلی و بعدی رو جابه‌جا کن';

  @override
  String get readerBackground => 'پس‌زمینه';

  @override
  String get readerBackgroundBlack => 'مشکی';

  @override
  String get readerBackgroundGray => 'خاکستری';

  @override
  String get readerBackgroundWhite => 'سفید';

  @override
  String get readerBackgroundTheme => 'تم اپ';

  @override
  String get readerFilter => 'فیلتر رنگ';

  @override
  String get readerFilterNone => 'هیچ‌کدوم';

  @override
  String get readerFilterGrayscale => 'سیاه‌وسفید';

  @override
  String get readerFilterInvert => 'وارونه';

  @override
  String get readerFilterSepia => 'سپیا';

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
  String get readerDim => 'تیره‌سازی';

  @override
  String get readerDimDesc => 'صفحه‌ها رو تیره کن';

  @override
  String get readerPageNumber => 'شماره صفحه';

  @override
  String get readerPageNumberDesc => 'موقع خوندن شماره صفحه رو نشون بده';

  @override
  String get readerFullscreen => 'تمام‌صفحه';

  @override
  String get readerFullscreenDesc => 'نوارهای سیستم رو مخفی کن';

  @override
  String get readerCropBorders => 'برش حاشیه‌ها';

  @override
  String get readerCropBordersDesc =>
      'حاشیه‌های خالی سفید یا مشکی صفحه‌ها رو ببر';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ورق زدن با کلید صدا';

  @override
  String get readerVolumeKeysDesc => 'صدا کم برای جلو، صدا زیاد برای عقب';

  @override
  String get readerBookmarks => 'بوکمارک‌ها';

  @override
  String get readerBookmarkAdd => 'افزودن بوکمارک';

  @override
  String get readerBookmarkRemove => 'حذف بوکمارک';

  @override
  String get readerBookmarksEmpty => 'هنوز بوکمارکی نیست';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'صفحه $page از $total';
  }

  @override
  String get readerAutoScroll => 'اسکرول خودکار';

  @override
  String get readerAutoScrollStop => 'توقف اسکرول خودکار';

  @override
  String get readerAutoScrollSpeed => 'سرعت اسکرول خودکار';

  @override
  String get readerAutoScrollSpeedDesc =>
      'صفحه‌ها با چه سرعتی خودشون اسکرول یا ورق می‌خورن';

  @override
  String get readerKeepOn => 'روشن نگه داشتن صفحه';

  @override
  String get readerKeepOnDesc => 'نذار موقع خوندن صفحه خاموش بشه';

  @override
  String get readerOrientation => 'جهت صفحه';

  @override
  String get readerOrientationFree => 'آزاد';

  @override
  String get readerOrientationPortrait => 'عمودی';

  @override
  String get readerOrientationLandscape => 'افقی';

  @override
  String get readerSaveProgress => 'ذخیره پیشرفت';

  @override
  String get readerSaveProgressDesc =>
      'صفحه‌ت رو یادت نگه دار و چپترها رو خونده‌شده علامت بزن';

  @override
  String get readerReset => 'بازنشانی تنظیمات خوانشگر';

  @override
  String get readerResetDesc => 'برگشت به پیش‌فرض‌ها';

  @override
  String get novelSize => 'اندازه متن';

  @override
  String get novelFont => 'فونت';

  @override
  String get novelLineHeight => 'ارتفاع خط';

  @override
  String get novelParagraph => 'فاصله پاراگراف‌ها';

  @override
  String get novelMargin => 'حاشیه‌ها';

  @override
  String get novelTheme => 'تم خوانشگر';

  @override
  String get novelThemeApp => 'تم اپ';

  @override
  String get novelThemeLight => 'روشن';

  @override
  String get novelThemeSepia => 'سپیا';

  @override
  String get novelThemeDark => 'تاریک';

  @override
  String get novelThemeBlack => 'مشکی';

  @override
  String get novelJustify => 'تراز دو طرف متن';

  @override
  String get novelJustifyDesc => 'متن رو از دو طرف تراز کن';

  @override
  String get trackProgressTitle => 'پیشرفت ذخیره بشه؟';

  @override
  String trackProgressAnime(String name) {
    return 'وقتی $name رو می‌بینی تو لیستت ردیابی بشه؟ «فقط رو این دستگاه» رو بزن تا محلی بمونه، یا «نه» تا هیچی ذخیره نشه.';
  }

  @override
  String trackProgressManga(String name) {
    return 'وقتی یه چپتر از $name رو تموم کردی تو لیستت ردیابی بشه؟ «فقط رو این دستگاه» رو بزن تا محلی بمونه، یا «نه» تا هیچی ذخیره نشه.';
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
  String get trackProgressYes => 'ذخیره';

  @override
  String get trackProgressReset =>
      'پرسش ذخیره پیشرفت برای این نوع بازنشانی شد، دوباره می‌پرسه';

  @override
  String get trackProgressNo => 'نه';

  @override
  String get trackProgressOff => 'خاموش';

  @override
  String get trackProgressLocal => 'فقط رو این دستگاه';

  @override
  String get trackProgressSettingAnime => 'ردیابی پیشرفت انیمه';

  @override
  String get trackProgressSettingManga => 'ردیابی پیشرفت مانگا و ناول';

  @override
  String get trackProgressSettingDesc =>
      'وقتی یه قسمت رو باز می‌کنی یا یه چپتر رو تموم می‌کنی چیکار کنه';

  @override
  String get trackProgressAsk => 'بپرس';

  @override
  String get trackProgressAlways => 'همیشه';

  @override
  String get dantotsuImport => 'وارد کردن از Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'یه پشتیبان تنظیمات Dantotsu رو بخون (.ani، یا .sani رمزنگاری‌شده)';

  @override
  String get dantotsuPick => 'یه پشتیبان Dantotsu انتخاب کن';

  @override
  String get dantotsuNothing => 'چیزی تو این فایل نیست که وارد بشه';

  @override
  String get dantotsuApply => 'وارد کردن موارد انتخابی';

  @override
  String dantotsuDone(int done, int total) {
    return '$done از $total وارد شد';
  }

  @override
  String get dantotsuGroupAccounts => 'حساب‌ها';

  @override
  String get dantotsuGroupAppearance => 'ظاهر';

  @override
  String get dantotsuGroupExtensions => 'اکستنشن‌ها';

  @override
  String get dantotsuGroupApp => 'اپ';

  @override
  String get dantotsuGroupPlayer => 'پخش‌کننده';

  @override
  String get dantotsuAnilist => 'ورود AniList';

  @override
  String get dantotsuMal => 'ورود MyAnimeList';

  @override
  String get dantotsuDiscord => 'توکن Discord Rich Presence';

  @override
  String get dantotsuTheme => 'تم';

  @override
  String get dantotsuReposAnime => 'مخزن‌های اکستنشن انیمه';

  @override
  String get dantotsuReposManga => 'مخزن‌های اکستنشن مانگا';

  @override
  String get dantotsuReposNovel => 'مخزن‌های اکستنشن ناول';

  @override
  String get dantotsuUpdates => 'بررسی به‌روزرسانی';

  @override
  String get dantotsuComments => 'نظرها';

  @override
  String get dantotsuActivity => 'بررسی دوره‌ای اعلان‌های AniList';

  @override
  String get dantotsuDns => 'ارائه‌دهنده DNS';

  @override
  String get dantotsuPlayer => 'سرعت پخش‌کننده و رنگ‌های زیرنویس';

  @override
  String get dantotsuWarning =>
      'این فایل توکن‌های ورود داره. پیش خودت نگهش دار.';

  @override
  String get novelIndent => 'تورفتگی پاراگراف‌ها';

  @override
  String get novelIndentDesc => 'هر پاراگراف رو با تورفتگی خط اول شروع کن';

  @override
  String get novelLetterSpacing => 'فاصله حروف';

  @override
  String get novelSectionTranslate => 'ترجمه';

  @override
  String get sectionExperimental => 'آزمایشی';

  @override
  String get kitsuGraphqlDetail => 'صفحه‌های جزئیات سریع‌تر (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'یه عنوان رو با شخصیت‌ها، عوامل و ورودی خودت تو یه درخواست بارگذاری کن';

  @override
  String get togetherTitle => 'تماشای دسته‌جمعی';

  @override
  String get togetherIntro =>
      'لینک اتاقی که دوستت فرستاده رو بچسبون. همون لحظه وصل می‌شی و وقتی تماشا رو شروع کردن پخش‌کننده باز می‌شه.';

  @override
  String get togetherName => 'اسم تو';

  @override
  String get togetherConnecting => 'در حال اتصال…';

  @override
  String get togetherLeave => 'ترک اتاق';

  @override
  String get togetherYou => 'تو';

  @override
  String get togetherNoChat => 'هنوز پیامی نیست';

  @override
  String get togetherChatHint => 'پیام';

  @override
  String get togetherCopyInvite => 'کپی دعوت‌نامه';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'سرور و اتاق کپی شد';

  @override
  String get togetherConnectionLost => 'اتصال قطع شد';

  @override
  String togetherConnectedTo(String room) {
    return 'به $room وصل شدی';
  }

  @override
  String togetherFailed(String error) {
    return 'اتصال ممکن نشد: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name اومد';
  }

  @override
  String togetherLeft(String name) {
    return '$name رفت';
  }

  @override
  String togetherPaused(String name) {
    return '$name مکث کرد';
  }

  @override
  String togetherResumed(String name) {
    return '$name ادامه داد';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name پرید به $time';
  }

  @override
  String get togetherFollowFailed => 'قسمت میزبان باز نشد. خودت بازش کن.';

  @override
  String get togetherJoinRole => 'پیوستن به اتاق';

  @override
  String get togetherOpenHost => 'باز کردن قسمت میزبان';

  @override
  String get togetherShowChat => 'نمایش چت زنده';

  @override
  String get togetherWaitingHost => 'منتظر شروع قسمت از طرف میزبان';

  @override
  String get togetherRoomLink => 'لینک اتاق';

  @override
  String get togetherBadLink => 'این لینک اتاق نیست';

  @override
  String get togetherHostClosed => 'میزبان اتاق رو بست';

  @override
  String get togetherNowPlaying => 'درحال پخش';

  @override
  String togetherWatchingCount(int count) {
    return '$count نفر درحال تماشا';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user می‌خواد مکث کنه';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user می‌خواد ادامه بده';
  }

  @override
  String get togetherChip => 'با هم';

  @override
  String get togetherSettingsDesc => 'با یه لینک به اتاق دوستت وصل شو';

  @override
  String get novelBilingual => 'نمایش متن اصلی و ترجمه';

  @override
  String get novelBilingualDesc =>
      'هر پاراگراف متن اصلی رو با ترجمه‌ش زیرش نشون می‌ده';

  @override
  String get novelTranslateTo => 'ترجمه به';

  @override
  String get novelTranslateOff => 'خاموش';

  @override
  String get novelSectionSpeech => 'تبدیل متن به گفتار';

  @override
  String get novelSpeechRate => 'سرعت گفتار';

  @override
  String get novelSpeechPitch => 'گام گفتار';

  @override
  String get novelSpeak => 'خوندن با صدای بلند';

  @override
  String get novelSpeakStop => 'توقف خوندن با صدای بلند';

  @override
  String get novelTranslate => 'ترجمه چپتر';

  @override
  String get novelTranslateShowOriginal => 'نمایش متن اصلی';

  @override
  String novelTranslateFailed(String error) {
    return 'ترجمه ناموفق بود: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'تبدیل متن به گفتار تو این دستگاه در دسترس نیست';

  @override
  String get novelSpeechVoice => 'صدا';

  @override
  String get novelSpeechVoiceDefault => 'پیش‌فرض سیستم';

  @override
  String get novelSpeakPrevious => 'خط قبلی';

  @override
  String get novelSpeakNext => 'خط بعدی';

  @override
  String get novelTapPaging => 'لمس لبه‌ها برای ورق زدن';

  @override
  String get novelTapPagingDesc =>
      'طرف چپ یا راست رو بزن تا یه صفحه اسکرول بشه، وسط کنترل‌ها رو نشون می‌ده';

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
    return '$count دقیقه مونده';
  }

  @override
  String get novelBold => 'متن ضخیم';

  @override
  String get novelBoldDesc => 'از وزن ضخیم‌تری استفاده کن';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter تموم شد';
  }

  @override
  String readerNextUp(String chapter) {
    return 'بعدی: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'قبلی: $chapter';
  }

  @override
  String get readerNoPages => 'این چپتر صفحه‌ای نداره';

  @override
  String get readerLoadingPages => 'در حال بارگذاری صفحه‌ها…';

  @override
  String get readerSlowPage => 'این صفحه هنوز داره بارگذاری می‌شه…';

  @override
  String get readerPageFailed => 'این صفحه بارگذاری نشد';

  @override
  String get playerShowComments => 'نمایش نظرها';

  @override
  String get playerHideComments => 'مخفی کردن نظرها';

  @override
  String get playerSubtitles => 'زیرنویس‌ها';

  @override
  String get playerSubtitlesOff => 'زیرنویس خاموشه';

  @override
  String get playerAudio => 'صدا';

  @override
  String get playerAddSubtitle => 'افزودن فایل زیرنویس';

  @override
  String get playerAddAudio => 'افزودن فایل صدا';

  @override
  String get playerChapters => 'چپترها';

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
  String get playerNoChapters => 'چپتری نیست';

  @override
  String get playerTimestamp => 'زمان‌نشان';

  @override
  String get playerAutoPlayDelay => 'شمارش معکوس قسمت بعدی';

  @override
  String get playerWatchedAt => 'دیده‌شده حساب کن در';

  @override
  String playerNextIn(int seconds) {
    return 'قسمت بعدی تا $seconds ثانیه دیگه';
  }

  @override
  String get playerPlayNow => 'الان پخش کن';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: برای این عنوان خودکار رد می‌شه';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: برای این عنوان خودکار رد نمی‌شه';
  }

  @override
  String get playerAudioLanguage => 'زبان صدای دلخواه';

  @override
  String get playerLanguageOrderHint =>
      'زبان‌ها رو با ویرگول جدا کن. اولین موردی که پیدا بشه استفاده می‌شه.';

  @override
  String get playerPip => 'تصویر در تصویر';

  @override
  String get playerAutoPip => 'تصویر در تصویر موقع خروج';

  @override
  String get playerAutoPipDesc =>
      'وقتی از اپ می‌ری بیرون، تو یه پنجره کوچیک پخش ادامه پیدا کنه';

  @override
  String playerAutoPlaying(String title) {
    return 'بعدش $title پخش می‌شه…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'شیدرها نصب نشدن: $error';
  }

  @override
  String playerChapter(int number) {
    return 'چپتر $number';
  }

  @override
  String get playerPerTitle => 'فقط برای این عنوان';

  @override
  String get playerPerTitleDesc =>
      'این گزینه‌ها رو برای این عنوان نگه دار و پیش‌فرض‌هات رو دست نزن';

  @override
  String get playerSwapGestures => 'جابه‌جایی طرف‌های کشیدن';

  @override
  String get playerSwapGesturesDesc => 'روشنایی سمت چپ و صدا سمت راست';

  @override
  String get playerOpenBig => 'باز کردن در نمای بزرگ';

  @override
  String get playerOpenBigDesc =>
      'پخش‌کننده به‌جای فهرست قسمت‌ها تمام‌صفحه شروع بشه';

  @override
  String get playerPauseOnBlur => 'توقف وقتی فوکوس نیست';

  @override
  String get playerPauseOnBlurDesc =>
      'وقتی برنامه پوشیده می‌شه، مثلاً با پنل اعلان‌ها، پخش متوقف بشه و موقع برگشتن ادامه پیدا کنه';

  @override
  String get playerAudioOutput => 'خروجی صدا';

  @override
  String get fontAppDefault => 'فونت اپ';

  @override
  String get fontImport => 'وارد کردن فونت';

  @override
  String get fontSample => 'روباه قهوه‌ای زرنگ از روی سگ تنبل می‌پره';

  @override
  String get playerSubtitleDelay => 'تأخیر زیرنویس';

  @override
  String get playerAudioDelay => 'تأخیر صدا';

  @override
  String get playerDelayReset => 'بازنشانی';

  @override
  String get playerOnlineSubtitles => 'زیرنویس‌های آنلاین';

  @override
  String get playerOnlineSearchHint => 'عنوان و قسمت';

  @override
  String get playerOnlineNone => 'زیرنویسی پیدا نشد';

  @override
  String playerOnlineFailed(String error) {
    return 'جستجوی زیرنویس ناموفق بود: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'این زیرنویس دانلود نشد: $error';
  }

  @override
  String get playerOnlineMatch => 'با این فایل جوره';

  @override
  String get playerOnlineEpisode => 'تطابق قسمت';

  @override
  String playerOnlineDownloads(int count) {
    return '$count دانلود';
  }

  @override
  String get playerSeekPreview => 'پیش‌نمایش جابه‌جایی';

  @override
  String get playerSeekPreviewDesc =>
      'موقع کشیدن نوار، یه پیش‌نمایش کوچیک فریم بالای نوار نشون بده. یه دیکودر دوم با کیفیت پایین باز می‌کنه، پس تو استریم‌ها دیتای بیشتری مصرف می‌شه.';

  @override
  String get playerSettingsChip => 'تنظیمات';

  @override
  String get playerAudioDevice => 'دستگاه صدا';

  @override
  String get settingsDownloads => 'دانلودها';

  @override
  String get settingsDownloadsDesc => 'قسمت‌های آفلاین، صف و حالت آفلاین';

  @override
  String get downloadsTitle => 'دانلودها';

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
  String get downloadsOpenDesc => 'صف و هرچی رو این دستگاه ذخیره شده رو ببین';

  @override
  String get downloadTitle => 'دانلود';

  @override
  String get downloadAlready => 'قبلاً دانلود شده یا تو صفه';

  @override
  String get downloadPickStream => 'کدوم استریم دانلود بشه؟';

  @override
  String get downloadPickSubtitle => 'کدوم زیرنویس دانلود بشه؟';

  @override
  String get downloadPickAudio => 'کدوم ترک صدا دانلود بشه؟';

  @override
  String get downloadNoAudio => 'بدون صدای اضافه';

  @override
  String get downloadAudio => 'صدا';

  @override
  String get downloadNoSubtitle => 'بدون زیرنویس';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'این استریم یه پلی‌لیست HLS ـه. برای دانلودش افزونه FFmpeg لازمه.';

  @override
  String get downloadSourceMissing => 'منبع این قسمت نصب نیست';

  @override
  String get downloadWaitingConnection => 'منتظر اتصال';

  @override
  String get downloadSubtitles => 'زیرنویس‌ها';

  @override
  String get downloadDownloaded => 'دانلودشده';

  @override
  String get downloadOffline => 'آفلاین';

  @override
  String get downloadDelete => 'حذف دانلود';

  @override
  String get downloadCancel => 'لغو';

  @override
  String get downloadPause => 'مکث';

  @override
  String get downloadPaused => 'متوقف';

  @override
  String get downloadResume => 'ادامه';

  @override
  String get downloadPauseAll => 'مکث همه';

  @override
  String get downloadResumeAll => 'ادامه همه';

  @override
  String get downloadQueuedState => 'منتظر تو صف';

  @override
  String get downloadResolving => 'در حال گرفتن استریم…';

  @override
  String get downloadUsedFallback => 'استریم مطابقی نبود، اولی استفاده شد';

  @override
  String get downloadTabQueue => 'صف';

  @override
  String get downloadTabDone => 'تمام';

  @override
  String get downloadTabFailed => 'ناموفق';

  @override
  String get downloadEmptyQueue => 'چیزی دانلود نمی‌شه';

  @override
  String get downloadEmptyDone => 'هنوز چیزی دانلود نشده';

  @override
  String get downloadEmptyFailed => 'دانلود ناموفقی نیست';

  @override
  String get downloadNext => 'قسمت بعدی';

  @override
  String downloadNextN(int count) {
    return '$count قسمت بعدی';
  }

  @override
  String downloadUnwatched(int count) {
    return 'همه دیده‌نشده‌ها ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'این بازه ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'همه قسمت‌ها ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قسمت تو صف',
      one: '۱ قسمت تو صف',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name دانلود شد';
  }

  @override
  String downloadFailedBody(String name) {
    return 'دانلود $name ناموفق بود';
  }

  @override
  String downloadStorage(String size) {
    return '$size توسط دانلودها استفاده شده';
  }

  @override
  String get downloadQueueHeader => 'صف';

  @override
  String get downloadParallel => 'دانلودهای همزمان';

  @override
  String get downloadParallelDesc =>
      'یه دانلود در یه زمان یا چندتا با هم اجرا کن';

  @override
  String get downloadOneByOne => 'یکی‌یکی';

  @override
  String get downloadNotifications => 'اعلان‌های دانلود';

  @override
  String get downloadNotificationsDesc =>
      'پیشرفت زنده جایی که سیستم پشتیبانی کنه، وگرنه وقتی دانلود تموم شد یه پیام';

  @override
  String get downloadNotifyLive => 'زنده';

  @override
  String get downloadNotifyDone => 'وقتی تموم شد';

  @override
  String get downloadNotifyOff => 'خاموش';

  @override
  String get downloadInfoFile => 'کنار هر دانلود یه فایل اطلاعات بنویس';

  @override
  String get downloadInfoFileDesc =>
      'استریم، کیفیت، زیرنویس و زمان‌های پرش رو تو یه فایل .json کوچیک ذخیره می‌کنه';

  @override
  String get offlineHeader => 'آفلاین';

  @override
  String get offlineModeDesc =>
      'حالت خودکار فقط وقتی اپ بدون اتصال شروع بشه آفلاین می‌شه. حالت همیشه تا وقتی عوضش نکنی آفلاین می‌مونه.';

  @override
  String get offlineModeOff => 'خاموش';

  @override
  String get offlineModeAlways => 'همیشه';

  @override
  String get offlineModeOn =>
      'حالت آفلاین روشنه. تغییرات اینجا ذخیره می‌شن و وقتی دوباره آنلاین شدی فرستاده می‌شن.';

  @override
  String get offlineSaved =>
      'رو این دستگاه ذخیره شد، وقتی آنلاین بشی همگام می‌شه';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تغییر همگام شد',
      one: '۱ تغییر همگام شد',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تغییر منتظر همگام‌سازیه',
      one: '۱ تغییر منتظر همگام‌سازیه',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'تغییرات منتظر همگام‌سازی';

  @override
  String get offlinePendingNone => 'چیزی منتظر نیست';

  @override
  String get offlineSyncNow => 'همگام‌سازی الان';

  @override
  String get offlineDiscard => 'دور انداختن';

  @override
  String get downloadNotOffline =>
      'این قسمت دانلود نشده، پس آفلاین در دسترس نیست';

  @override
  String get offlineModeChip => 'آفلاین';

  @override
  String get downloadNextChapter => 'چپتر بعدی';

  @override
  String downloadNextChapters(int count) {
    return '$count چپتر بعدی';
  }

  @override
  String downloadUnread(int count) {
    return 'همه نخونده‌ها ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'همه چپترها ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total صفحه';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count صفحه';
  }

  @override
  String get downloadFfmpegTitle => 'افزونه FFmpeg لازمه';

  @override
  String get downloadFfmpegBody =>
      'این استریم یه پلی‌لیست HLS ـه. افزونه FFmpeg تکه‌هاش رو تو یه فایل mp4 به هم می‌چسبونه. بدونش تکه‌ها تو یه پوشه قسمت نگه داشته می‌شن و از همون‌جا پخش می‌شن.';

  @override
  String get downloadFfmpegInstall => 'نصب';

  @override
  String get downloadFfmpegInstalling =>
      'در حال نصب FFmpeg، ممکنه یه کم طول بکشه…';

  @override
  String get downloadFinishing => 'در حال چسبوندن تکه‌ها به هم تو یه فایل…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total تکه';
  }

  @override
  String get downloadTorrentNoFile =>
      'تورنت هیچ فایل ویدیویی برای دانلود نداره';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'در حال دانلود $count مورد',
      one: 'در حال دانلود ۱ مورد',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'حذف دانلودهای دیده‌شده';

  @override
  String get downloadAutoDeleteDesc =>
      'وقتی پیشرفتت به اون قسمت یا چپتر برسه، دانلودش رو حذف می‌کنه';

  @override
  String get downloadConnections => 'اتصال‌ها برای هر دانلود';

  @override
  String get downloadConnectionsDesc =>
      'یه فایل بزرگ رو به تکه‌هایی تقسیم می‌کنه که همزمان گرفته می‌شن. بعضی سرورها این رو محدود می‌کنن.';

  @override
  String get downloadPlayChoice => 'پخش از';

  @override
  String get downloadPlayLocalDesc => 'فایل ذخیره‌شده رو این دستگاه';

  @override
  String get downloadPlayStream => 'استریم آنلاین';

  @override
  String get downloadPlayStreamDesc => 'قسمت رو از منبع بارگذاری کن';

  @override
  String get offlineFeedTitle => 'دانلودشده رو این دستگاه';

  @override
  String get offlineFeedEmpty =>
      'وقتی آنلاینی یه چیزی دانلود کن تا اینجا نشون داده بشه';

  @override
  String get offlineEnabled => 'حالت آفلاین روشنه';

  @override
  String get offlineDisabled => 'حالت آفلاین خاموشه';

  @override
  String get downloadReadChoice => 'خوندن از';

  @override
  String get downloadReadLocalDesc => 'صفحه‌های ذخیره‌شده رو این دستگاه';

  @override
  String get downloadReadOnline => 'خوندن آنلاین';

  @override
  String get downloadReadOnlineDesc => 'چپتر رو از منبع بارگذاری کن';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name از این دستگاه حذف بشه؟';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'دانلود $name لغو بشه؟ چیزی که تا الان دانلود شده حذف می‌شه.';
  }

  @override
  String get downloadFfmpegFolder => 'نگه داشتن به‌صورت پوشه';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count تغییری که هیچ‌وقت فرستاده نشدن دور انداخته بشن؟ این کار قابل بازگشت نیست.',
      one:
          'تغییری که هیچ‌وقت فرستاده نشد دور انداخته بشه؟ این کار قابل بازگشت نیست.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'منتظر Wi-Fi';

  @override
  String get downloadWaitingMetered => 'رو اتصال محدود متوقف شد';

  @override
  String get downloadWifiOnly => 'فقط Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'وقتی رو دیتای موبایلی، دانلودها صبر می‌کنن';

  @override
  String get downloadMetered => 'توقف رو اتصال‌های محدود';

  @override
  String get downloadMeteredDesc =>
      'رو Wi-Fi ای که دستگاهت محدود علامت زده هم صبر می‌کنه';

  @override
  String get downloadSpeedLimit => 'محدودیت سرعت';

  @override
  String get downloadSpeedLimitDesc => 'سرعت کل دانلود رو محدود می‌کنه';

  @override
  String get downloadUnlimited => 'نامحدود';

  @override
  String get downloadMoveToTop => 'انتقال به بالا';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds سید · $peers پیر';
  }

  @override
  String get downloadTorrentFile => 'کدوم فایل؟';

  @override
  String get downloadTorrentAuto => 'تطبیق خودکار قسمت';

  @override
  String get downloadTorrentLoading => 'در حال خوندن تورنت…';

  @override
  String get watchAutoSource => 'رفتن خودکار به منبع بعدی';

  @override
  String get watchAutoSourceDesc =>
      'اگه منبع عنوان رو پیدا نکنه یا بارگذاری نشه، منبع نصب‌شده بعدی رو امتحان کن';

  @override
  String get extensionTest => 'تست اکستنشن‌ها';

  @override
  String get extensionTestCopy => 'خطاها و لاگ‌هاشون رو کپی کن';

  @override
  String get extensionTestQuery => 'عبارت جستجو';

  @override
  String get extensionTestRun => 'اجرا';

  @override
  String get extensionTestStop => 'توقف';

  @override
  String get extensionTestNone => 'اکستنشن نصب‌شده‌ای از این نوع نیست';

  @override
  String get extensionTestNotRun => 'هنوز تست نشده';

  @override
  String get extensionTestSearch => 'جستجو';

  @override
  String get extensionTestDetail => 'جزئیات';

  @override
  String get extensionTestUnits => 'قسمت‌ها / چپترها';

  @override
  String get extensionTestLinks => 'استریم‌ها / صفحه‌ها';

  @override
  String extensionTestFailedAt(String step) {
    return 'تو مرحله $step ناموفق بود';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done از $total تست شد · $passed موفق · $failed ناموفق';
  }

  @override
  String get extensionTestCopyLogs => 'همه‌چیز رو با لاگ کامل کپی کن';

  @override
  String get onboardingFeaturesTitle => 'همه‌چیز یه‌جا';

  @override
  String get onboardingFeaturesBody =>
      'هر چیزی که ردیابی می‌کنی، می‌بینی و می‌خونی، بدون جابه‌جا شدن بین اپ‌ها.';

  @override
  String get onboardingFeatureTrack => 'ردیابی همه‌چیز';

  @override
  String get onboardingFeatureTrackDesc =>
      'لیست‌ها، پیشرفت و امتیازها تو AniList، MyAnimeList، Simkl، Kitsu و MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'تماشا و خوندن';

  @override
  String get onboardingFeatureWatchDesc =>
      'اکستنشن نصب کن و انیمه استریم کن یا مانگا و ناول رو مستقیم تو خود اپ بخون.';

  @override
  String get onboardingFeatureOffline => 'آفلاینش کن';

  @override
  String get onboardingFeatureOfflineDesc =>
      'قسمت‌ها و چپترها رو دانلود کن و بدون اتصال ادامه بده.';

  @override
  String get onboardingFeatureSync => 'لیست‌ها رو همگام نگه دار';

  @override
  String get onboardingFeatureSyncDesc =>
      'لیستت رو بین سرویس‌ها کپی کن، یا بذار هرکدوم جلوتره برنده بشه.';

  @override
  String get onboardingServices => 'کار می‌کنه با';

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
