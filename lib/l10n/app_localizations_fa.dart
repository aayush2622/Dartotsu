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
  String get appLockBiometric => 'باز کردن قفل با بیومتریک';

  @override
  String get appLockBiometricDesc =>
      'به جای تایپ رمز عبور از اثر انگشت یا چهره خود استفاده کنید';

  @override
  String get appLockBiometricReason => 'قفل دارتوتسو را باز کنید';

  @override
  String get appLockDelay => 'در حالت بیکار قفل کنید';

  @override
  String get appLockDelayAlways => 'همیشه';

  @override
  String get appLockDelayNever => 'هرگز';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقه',
      one: '1 دقیقه',
    );
    return 'بعد از $_temp0';
  }

  @override
  String get appLockUseBiometric => 'از بیومتریک استفاده کنید';

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
      other: '$count به روز رسانی در دسترس است',
      one: '1 به روز رسانی موجود است',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'به روز رسانی همه';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done از برنامه های افزودنی $total به روز شد';
  }

  @override
  String get updateConflictTitle => 'به روز رسانی نصب نشده است';

  @override
  String updateConflictBody(String names) {
    return '$names روی نسخه موجود نصب نشد. این معمولاً به این معنی است که کپی نصب شده متفاوت امضا شده است. آن را حذف و نسخه جدید را نصب کنم؟';
  }

  @override
  String get updateConflictAction => 'حذف و دوباره نصب کنید';

  @override
  String get noSourceSettings => 'این منبع هیچ تنظیماتی نداره';

  @override
  String get addPluginRepository => 'افزودن مخزن پلاگین';

  @override
  String get pluginIndexUrlHint => 'آدرس فهرست پلاگین';

  @override
  String get addRepository => 'افزودن مخزن';

  @override
  String get importRepositoryFile => 'یک فایل وارد کنید';

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
  String get manageServices => 'خدمات رسانه ای';

  @override
  String get manageServicesDesc =>
      'سرویس‌ها را دوباره مرتب کنید و انتخاب کنید که کدام‌ها در انتخابگر نشان داده شوند';

  @override
  String get manageServicesHint =>
      'برای سفارش مجدد بکشید، مواردی را که استفاده نمی کنید خاموش کنید';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'داستان ها';

  @override
  String get watchOrder => 'سفارش ساعت';

  @override
  String get watchOrderOpenSite => 'در chiaki.site باز کنید';

  @override
  String get watchOrderUnavailable => 'هیچ ترتیب ساعتی برای این عنوان پیدا نشد';

  @override
  String get watchOrderOpenFailed => 'آن عنوان باز نشد';

  @override
  String get watchOrderCurrent => 'شما اینجا هستید';

  @override
  String get watchOrderCredit => 'مشاهده سفارشات توسط chiaki.site';

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
  String get settingsSync => 'تنظیمات همگام سازی';

  @override
  String get settingsSyncDesc =>
      'تنظیمات خود را در هر دستگاه یکسان نگه دارید. آنها در یک خلاصه خصوصی در حساب GitHub شما ذخیره می شوند';

  @override
  String get settingsSyncSwitch => 'در تغییر همگام سازی کنید';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'با GitHub وارد شوید';

  @override
  String get settingsSyncSignInDesc =>
      'تنظیمات در یک خلاصه خصوصی در حساب شما ذخیره می شود';

  @override
  String get settingsSyncToken => 'از یک نشانه دسترسی شخصی استفاده کنید';

  @override
  String get settingsSyncTokenDesc =>
      'در github.com/settings/tokens فقط با مجوز gist یکی ایجاد کنید';

  @override
  String get settingsSyncTokenField => 'رمز';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'وارد شده به عنوان $user';
  }

  @override
  String get settingsSyncSignOut => 'از سیستم خارج شوید';

  @override
  String settingsSyncCode(Object code) {
    return '$code را در GitHub وارد کنید';
  }

  @override
  String get settingsSyncCodeDesc =>
      'صفحه GitHub در مرورگر شما باز شد. برای کپی کردن کد ضربه بزنید یا برای لغو ضربه بزنید و نگه دارید.';

  @override
  String get settingsSyncSignInFailed => 'نمی توان به GitHub وارد شد';

  @override
  String get dcPreview => 'پیش نمایش';

  @override
  String get dcSampleWatching => 'تماشا کردن';

  @override
  String get dcSampleReading => 'خواندن';

  @override
  String get dcSampleBrowsing => 'در حال مرور';

  @override
  String get dcSampleLive => 'همین الان';

  @override
  String get dcLiveNothing =>
      'در حال حاضر چیزی نشان داده نمی شود. یک عنوان را باز کنید، یک قسمت یا یک فصل را شروع کنید و در اینجا ظاهر می شود.';

  @override
  String get dcMemberList => 'در لیست اعضا';

  @override
  String get dcAccount => 'حساب';

  @override
  String get dcSignIn => 'با Discord وارد شوید';

  @override
  String get dcSignOut => 'از سیستم خارج شوید';

  @override
  String get dcDesktopHint =>
      'بدون اتصال، Discord \"Watching Dartotsu\" را از طریق برنامه دسکتاپ نشان می دهد. Discord را وصل کنید تا فعالیت را با عنوان خود نامگذاری کنید، از جمله در تلفن همراه.';

  @override
  String get dcMobileHint =>
      'برای نشان دادن آنچه در حال تماشا یا خواندن هستید، Discord را وصل کنید. از صفحه مجوز Discord استفاده می کند، نه توکن حساب شما.';

  @override
  String get dcConnect => 'Discord را وصل کنید';

  @override
  String get dcConnectDesc =>
      'صفحه مجوز Discord را باز می کند و Dartotsu را در برنامه های مجاز اضافه می کند. Discord می‌خواهد حضور شما را به‌روزرسانی کند. فقط یک نشانه به‌روزرسانی ذخیره می‌شود، نه توکن حساب شما.';

  @override
  String get dcConnectFailed => 'اتصال Discord انجام نشد';

  @override
  String get dcConnectedSnack => 'اختلاف وصل شد';

  @override
  String get dcDisconnect => 'قطع کن';

  @override
  String get dcDisconnectedSnack => 'عدم ارتباط قطع شد';

  @override
  String get dcUseToken => 'به جای آن از یک نشانه استفاده کنید';

  @override
  String get dcRouteDesktop => 'از طریق برنامه دسکتاپ Discord';

  @override
  String get dcRouteHeadless => 'از طریق حساب کاربری شما';

  @override
  String get dcRouteGateway => 'از طریق حساب خود، زندگی کنید';

  @override
  String get dcRouteLinked => 'برنامه متصل';

  @override
  String get dcRouteNone => 'متصل نیست';

  @override
  String get dcStatusNeedsToken =>
      'به نشانه Discord نیاز دارد. اتصال برنامه وضعیت آنلاین بودن شما را تنظیم نمی کند.';

  @override
  String get dcAccountOnly => 'به یک حساب وارد شده نیاز دارد';

  @override
  String get dcStatusSection => 'وضعیت';

  @override
  String get dcControlStatus => 'وضعیت من را کنترل کنید';

  @override
  String get dcControlStatusDesc =>
      'هنگامی که Rich Presence روشن است، ارتباط زنده با Discord برقرار می کند، بنابراین Dartotsu می تواند وضعیت شما را تنظیم کند.';

  @override
  String get dcStatusOnline => 'آنلاین';

  @override
  String get dcStatusIdle => 'بیکار';

  @override
  String get dcStatusDnd => 'مزاحم نشوید';

  @override
  String get dcStatusInvisible => 'نامرئی';

  @override
  String get dcCustomStatus => 'وضعیت سفارشی';

  @override
  String get dcCustomStatusHint => 'چه کاره ای؟';

  @override
  String get dcActivitySection => 'فعالیت';

  @override
  String get dcShowWatching => 'نمایش در حین تماشا';

  @override
  String get dcShowReading => 'نمایش در حین خواندن';

  @override
  String get dcListening => 'گوش دادن';

  @override
  String get dcCompeting => 'در حال رقابت';

  @override
  String get dcActivityName => 'نام فعالیت';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'عنوان';

  @override
  String get dcNameCustom => 'سفارشی';

  @override
  String get dcCustomNameHint => 'نام بعد از «تماشا کردن» نشان داده شده است';

  @override
  String get dcStatusText => 'متن وضعیت';

  @override
  String get dcStatusTextDesc => 'آنچه لیست اعضا در کنار نام شما نشان می دهد';

  @override
  String get dcDisplayName => 'نام';

  @override
  String get dcDisplayState => 'ایالت';

  @override
  String get dcDisplayDetails => 'جزئیات';

  @override
  String get dcTextSection => 'متن';

  @override
  String get dcDetails => 'خط بالا';

  @override
  String get dcState => 'خط پایین';

  @override
  String get dcTemplateHint => 'Empty از پیش فرض استفاده می کند';

  @override
  String get dcVariables => 'برای درج یک مقدار ضربه بزنید';

  @override
  String get dcImagesSection => 'تصاویر';

  @override
  String get dcLargeImage => 'تصویر بزرگ';

  @override
  String get dcLargeAuto => 'خودکار';

  @override
  String get dcLargeCover => 'پوشش';

  @override
  String get dcLargeLogo => 'لوگو';

  @override
  String get dcSmallImage => 'تصویر کوچک';

  @override
  String get dcSmallAuto => 'لوگو';

  @override
  String get dcSmallNone => 'هیچ کدام';

  @override
  String get dcTimerStyle => 'سبک تایمر';

  @override
  String get dcTimerAuto => 'خودکار';

  @override
  String get dcTimerElapsed => 'گذشت';

  @override
  String get dcTimerRemaining => 'باقی مانده است';

  @override
  String get dcButtonsSection => 'دکمه ها';

  @override
  String get dcButtonMedia => 'لینک به عنوان';

  @override
  String get dcButtonApp => 'پیوند به دارتوتسو';

  @override
  String get dcButtonCustom => 'دکمه سفارشی';

  @override
  String get dcButtonLabel => 'برچسب بزنید';

  @override
  String get dcButtonUrl => 'پیوند';

  @override
  String get dcPrivacySection => 'حریم خصوصی';

  @override
  String get dcPrivateText => 'متن خصوصی';

  @override
  String get dcPrivateHint => 'یه چیز خصوصی';

  @override
  String get dcTokenWarning =>
      'ورود به سیستم از رمز حساب شما استفاده می کند. قوانین Discord این کار را منع می کند، بنابراین با مسئولیت خود از آن استفاده کنید.';

  @override
  String get dcConnected => 'متصل شد';

  @override
  String get dcConnection => 'اتصال';

  @override
  String get dcMethodDesktop => 'برنامه دسکتاپ Discord';

  @override
  String get dcMethodDesktopDesc =>
      'هنگامی که هیچ چیز دیگری متصل نیست به طور خودکار استفاده می شود. Discord باید در این رایانه باز باشد.';

  @override
  String get dcMethodToken => 'رمز حساب';

  @override
  String get dcInUse => 'در حال استفاده';

  @override
  String get dcRecommended => 'توصیه می شود';

  @override
  String get dcConnecting => 'در حال اتصال…';

  @override
  String get dcDisconnected => 'متصل نیست';

  @override
  String dcSignedInAs(String name) {
    return 'وارد شده به عنوان $name';
  }

  @override
  String get settingsSyncOn => 'روشن';

  @override
  String get settingsSyncCustom => 'سفارشی';

  @override
  String get settingsSyncChangedHeader => 'تنظیمات تغییر کرد';

  @override
  String get settingsSyncNoneChanged =>
      'شما هنوز هیچ یک از اینها را تغییر نداده اید، بنابراین چیزی برای همگام سازی وجود ندارد.';

  @override
  String get settingsSyncChangedOnly =>
      'فقط تنظیماتی که تغییر داده اید ذخیره می شوند. هر چیز دیگری در هر دستگاهی از پیش فرض خود استفاده می کند. نماد ابر چیزی را نشان می دهد که از قبل روی سرور وجود دارد.';

  @override
  String get settingsSyncOffCategory =>
      'همگام سازی نمی شود. اینها روی این دستگاه می مانند و نسخه سرور همان طور که هست باقی می ماند.';

  @override
  String get settingsSyncPartsNote =>
      'در هر دستگاه خاموش ارزش خود هر دستگاه را حفظ می کند، بنابراین تلفن و تلویزیون می توانند متفاوت باشند.';

  @override
  String get settingsSyncPartSubtitles => 'سایز و رنگ زیرنویس';

  @override
  String get settingsSyncPartSubtitlesDesc => 'اندازه، وزن، رنگ و موقعیت';

  @override
  String get settingsSyncPartPictureColors => 'رنگ های تصویر';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'روشنایی، کنتراست، اشباع، گاما، رنگ و HDR';

  @override
  String get settingsSyncPartPalette => 'رنگ های تم';

  @override
  String get settingsSyncPartPaletteDesc => 'تم، رنگ برجسته و مشکی OLED';

  @override
  String get settingsSyncCatOther => 'تماشا کنید، بخوانید و خدمات دهید';

  @override
  String get settingsSyncTitles => 'پیشرفت و عناوین را تماشا کنید';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return 'عناوین $records و $resume ورودی های رزومه در سرور';
  }

  @override
  String get settingsSyncTitlesNone => 'هنوز چیزی آپلود نشده است';

  @override
  String get settingsSyncTitlesNote =>
      'موقعیت‌های تماشا و خواندن، قفسه رزومه، فهرست‌های محلی، نشانک‌ها، نکات برجسته و گزینه‌های هر عنوان. مطابقت های منبع و جریان ها در هر دستگاه باقی می مانند زیرا به برنامه های افزودنی شما بستگی دارند. عناوین حداکثر هر 45 ثانیه بارگذاری می شوند.';

  @override
  String get settingsSyncConnect => 'متصل نیست';

  @override
  String get settingsSyncConnectDesc =>
      'با GitHub وارد شوید تا تنظیمات خود را در هر دستگاه یکسان نگه دارید.';

  @override
  String get settingsSyncFailedTitle => 'همگام سازی انجام نشد';

  @override
  String get settingsSyncPaused => 'مکث کرد';

  @override
  String get settingsSyncPausedDesc =>
      'وقتی این خاموش است، هیچ چیزی آپلود یا دانلود نمی شود.';

  @override
  String get settingsSyncUpToDate => 'به روز';

  @override
  String get settingsSyncRetry => 'دوباره امتحان کنید';

  @override
  String get settingsSyncAccount => 'حساب GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'داده های شما به یک اصل خصوصی در حساب شخصی شما می رود.';

  @override
  String get settingsSyncWaiting => 'منتظر تایید شما در GitHub هستیم';

  @override
  String get settingsSyncCopyCode => 'روی کد ضربه بزنید تا آن را کپی کنید';

  @override
  String get settingsSyncCancel => 'لغو کنید';

  @override
  String get settingsSyncStatSettings => 'تنظیمات';

  @override
  String get settingsSyncStatTitles => 'عناوین';

  @override
  String get settingsSyncStatShelf => 'رزومه';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'آپلود $time از $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تغییر کرد',
      one: '1 تغییر کرد',
      zero: 'هنوز چیزی تغییر نکرده است',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'حساب ها و رمزهای عبور';

  @override
  String get settingsSyncSecretsDesc =>
      'ورود به سیستم (AniList، MAL، Kitsu، Simkl، MangaBaka، MangaUpdates)، کلیدهای API و قفل برنامه را بین دستگاه‌های خود همگام‌سازی کنید. آنها با یک عبارت عبور رمزگذاری شده اند که در دستگاه های شما باقی می ماند، بنابراین GitHub هرگز آنها را نمی بیند.';

  @override
  String get settingsSyncSecretsOn => 'حساب ها همگام سازی و رمزگذاری می شوند';

  @override
  String get settingsSyncSecretsOnDesc =>
      'خروج از سیستم در یک دستگاه شما را از سیستم دیگر خارج نمی کند.';

  @override
  String get settingsSyncSecretsBroken =>
      'عبارت عبور دیگر با عبارت موجود در سرور مطابقت ندارد. برای ادامه همگام سازی حساب ها، دوباره آن را وارد کنید.';

  @override
  String get settingsSyncPassphraseSet => 'یک عبارت عبور تنظیم کنید';

  @override
  String get settingsSyncPassphraseEnter => 'رمز عبور خود را وارد کنید';

  @override
  String get settingsSyncPassphraseField => 'عبارت عبور';

  @override
  String get settingsSyncPassphraseConfirm => 'عبارت عبور را تکرار کنید';

  @override
  String get settingsSyncPassphraseNew =>
      'یک عبارت عبور از حداقل 6 کاراکتر انتخاب کنید. در جایی جز دستگاه های شما ذخیره نمی شود و قابل بازیابی نیست. اگر آن را فراموش کردید، نسخه سرور را حذف کنید و دوباره شروع کنید.';

  @override
  String get settingsSyncPassphraseExisting =>
      'عبارت عبوری را که در دستگاه دیگر خود انتخاب کرده اید وارد کنید. حساب‌های موجود در این دستگاه با حساب‌های همگام‌سازی شده جایگزین می‌شوند.';

  @override
  String get settingsSyncPassphraseWrong => 'عبارت عبور اشتباه است';

  @override
  String get settingsSyncPassphraseMismatch => 'عبارات عبور مطابقت ندارند';

  @override
  String get settingsSyncPassphraseShort => 'حداقل از 6 کاراکتر استفاده کنید';

  @override
  String get settingsSyncSecretsStop => 'همگام سازی حساب ها را متوقف کنید';

  @override
  String get settingsSyncSecretsDelete => 'حذف از GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'با این کار فایل حساب های رمزگذاری شده از اصل شما حذف می شود. سایر دستگاه‌ها ورود به سیستم خود را حفظ می‌کنند و می‌توانند یک عبارت عبور جدید تنظیم کنند.';

  @override
  String get settingsSyncWhat => 'چه چیزی باید همگام شود';

  @override
  String get settingsSyncServer => 'روی سرور';

  @override
  String get settingsSyncServerEmpty => 'هنوز چیزی آپلود نشده است';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'تنظیمات $count، آپلود $time از $device';
  }

  @override
  String get settingsSyncThisDevice => 'این دستگاه';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تنظیمات $count در سرور',
      one: '1 تنظیم روی سرور',
      zero: 'هیچی روی سرور',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'اکنون همگام سازی کنید';

  @override
  String get settingsSyncRunning => 'در حال همگام سازی…';

  @override
  String get settingsSyncNever => 'هنوز همگام سازی نشده است';

  @override
  String settingsSyncLast(Object time) {
    return 'آخرین همگام سازی $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'همگام سازی انجام نشد: $error';
  }

  @override
  String get settingsSyncScope =>
      'فقط تنظیماتی که در همه جا یکسان کار می کنند همگام سازی می شوند. حساب‌ها، نشانه‌ها، پوشه‌ها، برنامه‌های افزودنی، اعلان‌ها، Discord، به‌روزرسانی‌ها و اندازه پنجره در هر دستگاه باقی می‌مانند.';

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
  String get autoUpdateRuntimes => 'به‌روزرسانی خودکار زمان‌های اجرا افزونه';

  @override
  String get autoUpdateRuntimesDesc =>
      'نسخه های جدید Aniyomi، CloudStream و سایر نسخه های زمان اجرا را در پس زمینه دانلود کنید. خاموش، به جای آن یک نماد به‌روزرسانی در کنار مدیر ظاهر می‌شود.';

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
  String get backupPasswordRequired =>
      'رمز عبور (برای داده های حساب مورد نیاز است)';

  @override
  String get backupProtectedNeedsPassword =>
      'برای پشتیبان‌گیری از داده‌های حساب، رمز عبوری تنظیم کنید یا علامت آن را بردارید';

  @override
  String get backupProtectedSkipped =>
      'این پشتیبان هیچ رمز عبوری ندارد، بنابراین اطلاعات حساب آن نادیده گرفته شد';

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
  String get logDelete => 'فایل های لاگ را حذف کنید';

  @override
  String get logDeleteDesc =>
      'برای آزاد کردن فضا، گزارش‌های ذخیره شده برنامه را پاک کنید';

  @override
  String logDeleted(String size) {
    return '$size از گزارش ها حذف شد';
  }

  @override
  String get missingSequel => 'دنباله گم شده';

  @override
  String get rising => 'در حال افزایش است';

  @override
  String get stacks => 'پشته ها';

  @override
  String get stacksAll => 'همه';

  @override
  String get stacksFeatured => 'برجسته';

  @override
  String get stacksMine => 'مال شما';

  @override
  String get stacksSaved => 'ذخیره شد';

  @override
  String get stacksFollowing => 'دنبال کردن';

  @override
  String get stacksEmpty => 'هنوز پشته ای در اینجا وجود ندارد';

  @override
  String get stacksSignIn => 'برای دیدن پشته های خود به MangaBaka وارد شوید';

  @override
  String get stacksScopeNeeded =>
      'پشته های شما به یک مجوز جدید نیاز دارند. برای اجازه دادن دوباره به MangaBaka وارد شوید.';

  @override
  String get stacksSignInAgain => 'دوباره وارد شوید';

  @override
  String get stacksCouldntLoad => 'پشته ها بارگیری نشد';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'سری $count',
      one: '1 سری',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ذخیره می کند',
      one: '1 ذخیره',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'توسط $name';
  }

  @override
  String get stackSpoilers => 'اسپویلرها';

  @override
  String get stackEmptyEntries => 'این پشته خالی است';

  @override
  String get stackSave => 'ذخیره پشته';

  @override
  String get stackUnsave => 'حذف از ذخیره شده';

  @override
  String get stackSavedToast => 'در پشته های شما ذخیره شد';

  @override
  String get stackRemovedToast => 'از پشته های ذخیره شده شما حذف شد';

  @override
  String userStacks(String name) {
    return 'پشته توسط $name';
  }

  @override
  String get newsTitle => 'اخبار';

  @override
  String get newsEmpty => 'فعلا خبری نیست';

  @override
  String get newsCouldntLoad => 'اخبار بارگیری نشد';

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
  String get followCoverMediaOnly => 'فقط برای رسانه ها';

  @override
  String get followCoverMediaOnlyDesc =>
      'جلد را فقط در صفحات رسانه دنبال کنید، هر جای دیگری رنگ های معمولی را حفظ می کند';

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
  String get imageTitlePage => 'صفحه';

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
  String get supportDeveloper => 'از توسعه دهنده حمایت کنید';

  @override
  String get buyMeCoffee => 'برام قهوه بخر';

  @override
  String get upiId => 'شناسه UPI';

  @override
  String get upiCopied => 'شناسه UPI کپی شد';

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
  String get onboardingLanguageBody =>
      'زبانی که Dartotsu در آن نشان داده می شود را انتخاب کنید. می توانید بعداً آن را در تنظیمات تغییر دهید.';

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
    return 'فصل $n';
  }

  @override
  String get calendarExpected => 'مورد انتظار';

  @override
  String get castReceiverFailed =>
      'Chromecast پخش کننده خود را راه اندازی نکرد';

  @override
  String get castPlaybackFailed => 'دستگاه نتوانست این جریان را پخش کند';

  @override
  String get shortcutNothingToContinue => 'هنوز چیزی برای ادامه دادن نیست';

  @override
  String shortcutNoCalendar(String service) {
    return '$service تقویم ندارد';
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
  String get discordWatching => 'تماشا کردن';

  @override
  String get discordPlaying => 'در حال پخش';

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
  String get comickLoginFailed => 'ورود به سیستم Comick انجام نشد';

  @override
  String get tagline => 'شعار';

  @override
  String get trending => 'پرطرفدار';

  @override
  String get anticipated => 'پیش بینی شده است';

  @override
  String get watchlist => 'فهرست تماشا';

  @override
  String get recommendedShows => 'نمایش های توصیه شده';

  @override
  String get recommendedMovies => 'فیلم های توصیه شده';

  @override
  String get boxOffice => 'باکس آفیس';

  @override
  String get popularMovies => 'فیلم های محبوب';

  @override
  String get popularShows => 'نمایش های محبوب';

  @override
  String get anticipatedMovies => 'فیلم های پیش بینی شده';

  @override
  String get anticipatedShows => 'نمایش های پیش بینی شده';

  @override
  String get trendingShows => 'نمایش های پرطرفدار';

  @override
  String get mostWatchedThisWeek => 'پربیننده ترین این هفته';

  @override
  String get sortMostViewed => 'بیشترین بازدید';

  @override
  String get sortMostFollowed => 'بیشتر دنبال کردند';

  @override
  String get sortLatestUpdates => 'آخرین به روز رسانی ها';

  @override
  String get translationStatusLabel => 'ترجمه';

  @override
  String get weeklySchedule => 'برنامه هفتگی';

  @override
  String get mostFollowed => 'بیشترین دنبال شده';

  @override
  String get latestUpdates => 'آخرین به روز رسانی ها';

  @override
  String get trendingAnime => 'انیمه پرطرفدار';

  @override
  String get topRatedAnime => 'انیمه با رتبه برتر';

  @override
  String get mostFollowedAnime => 'انیمه پر طرفدار';

  @override
  String get comickProfile => 'نمایه کمیک';

  @override
  String get refreshFromComick => 'تازه کردن از Comick';

  @override
  String get mangaBakaProfile => 'پروفایل MangaBaka';

  @override
  String get refreshFromMangaBaka => 'تازه‌سازی از MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'وارد MangaUpdates شوید';

  @override
  String get mangaUpdatesProfile => 'نمایه MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'اقتباس انیمه شروع می شود';

  @override
  String get mangaUpdatesAnimeEnd => 'اقتباس انیمه به پایان می رسد';

  @override
  String get refreshFromMangaUpdates => 'بازخوانی از MangaUpdates';

  @override
  String get usernameOnly => 'نام کاربری';

  @override
  String get releases => 'منتشر می کند';

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
  String get hideNsfwSourcesDesc =>
      'مخفی کردن منابع با علامت 18+ از فیدها و انتخابگر منبع. آنها نصب می مانند.';

  @override
  String get hideNsfwDesc =>
      'عنوان‌های بزرگسال رو از فیدها و جستجو دور نگه دار، و ورودی‌های بزرگسال خودت رو تو Hidden Media بذار.';

  @override
  String get kitsuAccountOptions => 'گزینه‌های حساب Kitsu';

  @override
  String get mangaBakaAccountOptions => 'گزینه‌های حساب MangaBaka';

  @override
  String get comickAccountOptions => 'گزینه های حساب کمیک';

  @override
  String get comickClientId => 'شناسه مشتری Comick';

  @override
  String get comickClientIdDesc => 'شناسه مشتری سفارشی ثبت شده در comick.dev';

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
  String get traktReadOnly => 'به Trakt دسترسی فقط خواندنی داده شد';

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
  String get followsMutual => 'متقابل';

  @override
  String get followsNotMutual => 'متقابل نیست';

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
  String get voiceActors => 'صداپیشه ها';

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
  String get prequel => 'پیش درآمد';

  @override
  String get sequel => 'عاقبت';

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
  String get traktProfile => 'مشخصات تراکت';

  @override
  String get refreshFromSimkl => 'تازه‌سازی از Simkl';

  @override
  String get refreshFromTrakt => 'تازه کردن از Trakt';

  @override
  String get repullProfileLibrary => 'پروفایل و کتابخونه‌ت رو دوباره بگیر';

  @override
  String get simklSignInToSearch => 'برای جستجو وارد Simkl شو';

  @override
  String get dropRate => 'نرخ رها کردن';

  @override
  String get simklAttribution => 'داده‌ها و آثار هنری از Simkl. دیدن تو Simkl';

  @override
  String get traktAttribution =>
      'داده ها و آثار هنری ارائه شده توسط Trakt. مشاهده در Trakt';

  @override
  String get listsLiked => 'پسندید';

  @override
  String get listsYours => 'مال شما';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'عضو VIP Trakt';

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
  String get simklMoviesOnly => 'فقط فیلم و سریال';

  @override
  String get simklMoviesOnlyDesc =>
      'تب Anime را جایگزین می‌کند: ابتدا فیلم‌ها، سپس با چند ردیف انیمه نمایش داده می‌شود';

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
  String get trailerQuality => 'کیفیت تریلر';

  @override
  String get titleCopied => 'عنوان کپی شد';

  @override
  String get linkCopied => 'لینک کپی شد';

  @override
  String get watchTrailer => 'دیدن تریلر';

  @override
  String get copyTitle => 'کپی عنوان';

  @override
  String get detailStale =>
      'AniList قابل دسترسی نیست. این اطلاعات ذخیره شده است و ممکن است قدیمی باشد.';

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
  String get allCustomLists => 'همه لیست های سفارشی';

  @override
  String get simklTitleLanguage => 'زبان عنوان انیمه';

  @override
  String get titleLanguageEnglish => 'انگلیسی';

  @override
  String get titleLanguageRomaji => 'روماجی';

  @override
  String get simklListsTrending => 'پرطرفدار';

  @override
  String get simklListsMostLiked => 'بیشترین پسندید';

  @override
  String get simklListsMostFollowed => 'بیشتر دنبال کردند';

  @override
  String get simklListsOfficial => 'رسمی';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عناوین',
      one: '1 عنوان',
    );
    return '$_temp0';
  }

  @override
  String get people => 'مردم';

  @override
  String get mostComments => 'بیشترین نظرات';

  @override
  String get alphabetical => 'حروف الفبا';

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
  String get notInList => 'در لیست نیست';

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
  String get animePlanetRank => 'رتبه';

  @override
  String get animePlanetMagazine => 'مجله';

  @override
  String get animePlanetRefreshLists => 'لیست های خود را تازه کنید';

  @override
  String get animePlanetRefreshListsDesc =>
      'لیست های Anime-Planet خود را دوباره بخوانید';

  @override
  String get animePlanetLocalNote =>
      'برای ذخیره تغییرات در حساب Anime-Planet خود وارد شوید. تا آن زمان آنها روی این دستگاه می مانند';

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
  String get firstTab => 'برگه اول';

  @override
  String get firstTabDesc =>
      'تب اول کدام افزونه ها را نشان می دهد. برای حذف انیمه از نوار، مانگا و رمان را در برگه خواندن انتخاب کنید';

  @override
  String get novelExtensions => 'پسوند رمان';

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
  String get year => 'سال';

  @override
  String get filterAny => 'هر';

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
  String get unfinished => 'ناتمام';

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
  String get died => 'درگذشت';

  @override
  String get birthplace => 'محل تولد';

  @override
  String get department => 'بخش';

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
  String get moviesWatched => 'فیلم های تماشا شده';

  @override
  String get showsWatched => 'نمایش های تماشا شده';

  @override
  String get moviesCollected => 'فیلم های جمع آوری شده';

  @override
  String get showsCollected => 'نشان می دهد جمع آوری شده است';

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
  String get sortAz => 'A–Z';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
  String get hiddenMedia => 'رسانه های پنهان';

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
    return 'این مخزن اضافه شود؟\n\n$url\n\nفقط از منابعی که به آنها اعتماد دارید، مخازن اضافه کنید.';
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
    return 'به روز رسانی $name';
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
  String syncServiceOn(String name) {
    return 'همگام سازی با $name';
  }

  @override
  String get syncDelete => 'آنچه را که سرویس اصلی ندارد حذف کنید';

  @override
  String get syncDeleteDesc =>
      'ورودی‌های سرویس‌های دیگر را که در لیست اصلی نیستند حذف کنید. فقط ورودی هایی که می توانند با عنوان مطابقت داشته باشند حذف می شوند، بنابراین مواردی مانند فیلم ها و سریال های Simkl باقی می مانند';

  @override
  String get syncDeleteTitle => 'ورودی ها حذف شوند؟';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورودی ها',
      one: '1 ورودی',
    );
    return '$_temp0 که در لیست اصلی شما نیستند از سرویس های دیگر حذف خواهند شد. این قابل واگرد نیست.';
  }

  @override
  String get syncDeleteAction => 'حذف کنید';

  @override
  String get syncToDelete => 'برای حذف';

  @override
  String get syncDeletedNote => 'حذف خواهد شد';

  @override
  String syncWillRemove(int count, String name) {
    return '$count از $name حذف خواهد شد';
  }

  @override
  String get syncOnlyForward => 'حفظ پیشرفت بیشتر';

  @override
  String get syncOnlyForwardDesc => 'پیشرفت سرویسی که جلوتره رو کم نکن';

  @override
  String get animePlanetWontWatch => 'تماشا نخواهد کرد';

  @override
  String get animePlanetWontRead => 'نمی خواند';

  @override
  String get animePlanetAlreadyOnList => 'در حال حاضر در این لیست';

  @override
  String get animePlanetNewList => 'نام لیست جدید';

  @override
  String get syncPrivate => 'ورودی های خصوصی';

  @override
  String get syncPrivateDesc =>
      'با ورودی هایی که خصوصی نگه می دارید چه باید کرد. یک سرویس با گزینه خصوصی آنها را خصوصی می کند. دیگران آنها را به صورت عمومی نشان می دهند';

  @override
  String get syncPrivateModeAsk => 'بپرسید';

  @override
  String get syncPrivateModeSync => 'آنها را همگام سازی کنید';

  @override
  String get syncPrivateModeSkip => 'از آنها بگذرید';

  @override
  String get syncPrivateTitle => 'ورودی های خصوصی';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ورودی ها خصوصی هستند',
      one: '1 ورودی خصوصی است',
    );
    return '$_temp0. خدمات با گزینه خصوصی (AniList، Kitsu، MangaBaka) آنها را به عنوان خصوصی دریافت می کنند. سایر سرویس ها هیچ گزینه خصوصی ندارند و آنها را به صورت عمومی نشان می دهند. آنها را همگام سازی کنیم؟ پاسخ شما به خاطر سپرده شد. آن را در گزینه های همگام سازی تغییر دهید.';
  }

  @override
  String get syncPrivateInclude => 'آنها را همگام سازی کنید';

  @override
  String get syncPrivateSkip => 'از آنها بگذرید';

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
  String syncRemoved(String services) {
    return 'از $services حذف شد';
  }

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
  String get sourceTags => 'برچسب ها';

  @override
  String get sourceTagsHint =>
      'تگ کنید این منبع برای چیست یک عنوان، منابعی را که برای آن برچسب گذاری شده اند، و سپس منابع بدون برچسب را فهرست می کند. منابع بیش از 18 فقط برای عناوین بزرگسالان نشان داده می شود.';

  @override
  String get sourceTagAnime => 'انیمه';

  @override
  String get sourceTagMovies => 'فیلم و سریال';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'پنهان شده توسط برچسب ها';

  @override
  String get watchOptions => 'گزینه‌ها';

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
  String get watchFailTimeout => 'چک به موقع تمام نشد';

  @override
  String get watchFailBlocked =>
      'سایت این دستگاه را مسدود کرد (دسترسی ممنوع است). چک کمکی نمی کند';

  @override
  String get watchFailTurnstile =>
      'این بررسی نیاز به یک ضربه دارد که حل‌کننده پس‌زمینه نمی‌تواند انجام دهد';

  @override
  String get watchFailLoad =>
      'صفحه بارگیری نشد اتصال و آدرس سایت را بررسی کنید';

  @override
  String get watchFailRejected =>
      'سایت مجوزی را که به تازگی داده بود رد کرد. دوباره امتحان کنید یا کوکی ها را پاک کنید';

  @override
  String get watchFailDismissed => 'چک قبل از اتمام بسته شد';

  @override
  String get watchFailCooldown =>
      'شما چک را چند لحظه پیش بستید. حل آن را فشار دهید تا دوباره امتحان کنید';

  @override
  String get watchFailQuiet =>
      'چک به شما نیاز دارد و برنامه به تنهایی کار می کرد';

  @override
  String get watchFailWebView => 'نمای وب پس‌زمینه شروع نشد';

  @override
  String get watchFailUnavailable => 'هیچ صفحه‌ای برای نمایش چک وجود ندارد';

  @override
  String get watchStatusReady => 'آماده است';

  @override
  String get watchStatusChallenge => 'بررسی Cloudflare مورد نیاز است';

  @override
  String get watchStatusBlocked => 'توسط سایت مسدود شده است';

  @override
  String get watchStatusOffline => 'نمی توان به سایت رسید';

  @override
  String get watchStatusUntested => 'هنوز تست نشده';

  @override
  String get watchStatusTesting => 'تست اتصال…';

  @override
  String get watchStatusSolving => 'عبور از چک Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'بررسی Cloudflare در پس‌زمینه ارسال شد ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'چک Cloudflare پاس شد';

  @override
  String watchClearanceIssued(String time) {
    return 'کسب $time';
  }

  @override
  String get watchClearanceStale =>
      'مجوز با یک عامل کاربری دیگر به دست آمده است، بنابراین ارسال نمی شود. برای دریافت اتصال جدید، اتصال را تست کنید';

  @override
  String get watchSectionConnection => 'اتصال';

  @override
  String get watchSectionSession => 'جلسه';

  @override
  String get watchSectionTools => 'ابزار';

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
  String get localSource => 'فایل های محلی';

  @override
  String get localMissing => 'این فایل یا پوشه دیگر در پوشه محلی شما نیست';

  @override
  String get playerStickyStage => 'ویدیوی چسبناک';

  @override
  String get playerStickyStageDesc =>
      'در حالی که قسمت‌ها و نظرات زیر را پیمایش می‌کنید، ویدیو را در بالا ثابت نگه دارید';

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
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

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
  String get playerDisableSkips => 'پرش ها را غیرفعال کنید';

  @override
  String get playerDisableSkipsDesc =>
      'بدون AniSkip یا استریم مهر زمان، علامت فصل یا رد شدن از ارسال‌ها در پخش‌کننده';

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
  String get playerSubtitleOutlineWidth => 'عرض طرح زیرنویس';

  @override
  String get playerSubtitlePreview => 'پیش نمایش زیرنویس';

  @override
  String get playerSubtitlePreviewText => 'متن پیش‌نمایش زیرنویس';

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
  String get playerPictureSave => 'این قاب را ذخیره کنید';

  @override
  String get playerPictureOriginal => 'اصل';

  @override
  String get playerPictureOriginalDesc =>
      'قاب همانطور که در ویدیو وجود دارد، بدون سایه زن یا رنگ';

  @override
  String get playerPictureProcessed => 'با سایه بان و رنگ';

  @override
  String get playerPictureProcessedDesc => 'قاب همانطور که اکنون می بینید';

  @override
  String get playerPictureSaved => 'قاب ذخیره شد';

  @override
  String get playerPictureSaveFailed => 'فریم ذخیره نشد';

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
      'شیدرها به رندر سخت افزاری نیاز دارند و پخش کننده از رندر نرم افزاری استفاده می کند. رندر نرم افزار را در تنظیمات پخش کننده خاموش کنید.';

  @override
  String get playerSoftwareRender => 'رندر نرم افزار';

  @override
  String get playerSoftwareRenderDesc =>
      'فقط برای یک ویدیو سیاه. سایه بان ها با آن کار نمی کنند. دفعه بعد که پخش کننده باز می شود اعمال می شود';

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
  String get playerDeband => 'دبند';

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
  String get streamGroupSub => 'فرعی';

  @override
  String get streamGroupHardSub => 'هارد زیر';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'دوبله';

  @override
  String get streamGroupRaw => 'خام';

  @override
  String get streamGroupOther => 'دیگر';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جریان',
      one: '1 جریان',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'استریم‌ها';

  @override
  String get playerStreamFailedNext =>
      'آن جریان پخش نمی‌شود، پخش بعدی را امتحان کنید';

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
  String get readerOpenBook => 'یک کتاب باز کن';

  @override
  String get readerOpenBookDesc =>
      'یک epub (رمان خوان) یا PDF (خواننده مانگا) را از فایل های خود بخوانید';

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
  String get readerModeAuto => 'خودکار (بر اساس نوع سری)';

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
  String get readerFilterQuality => 'کیفیت فیلتر تصویر';

  @override
  String get readerFilterQualityNone => 'هیچ (نزدیکترین همسایه)';

  @override
  String get readerFilterQualityLow => 'کم (دو خطی)';

  @override
  String get readerFilterQualityMedium => 'متوسط (سه خطی)';

  @override
  String get readerFilterQualityHigh => 'بالا (دو مکعبی)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (زنگ با کیفیت بالا)';

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
  String get readerLongPressSave => 'یک صفحه را نگه دارید تا ذخیره شود';

  @override
  String get readerLongPressSaveDesc =>
      'یک صفحه را طولانی فشار دهید تا گزینه های ذخیره، اشتراک گذاری و کپی باز شود';

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
  String get readerResetConfirm =>
      'تنظیم هر خواننده به پیش فرض خود بازنشانی شود؟';

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
    return 'پیشرفت شما در $name در فهرست شما در این دستگاه در حین تماشا ذخیره شود؟';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'وقتی فصلی را تمام کردید، پیشرفت شما در $name در فهرست شما در این دستگاه ذخیره شود؟';
  }

  @override
  String get downloadClearQueue => 'صف را پاک کنید';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'همه دانلودهای $count در صف لغو شوند؟ آنچه قبلا دانلود شده بود حذف می شود.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count انتخاب شد';
  }

  @override
  String get downloadSelectAll => 'همه را انتخاب کنید';

  @override
  String get downloadDeleteSelected => 'حذف انتخاب شده';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'دانلودهای $count حذف شوند؟ فایل های آنها از دستگاه حذف می شود.';
  }

  @override
  String get castTitle => 'ارسال به دستگاه';

  @override
  String get castSearching => 'در حال جستجوی دستگاه‌های موجود در شبکه شما…';

  @override
  String get castNoDevices =>
      'دستگاهی پیدا نشد مطمئن شوید تلویزیون یا Chromecast روی همان Wi-Fi باشد، سپس دوباره جستجو کنید.';

  @override
  String get castRefresh => 'دوباره جستجو کنید';

  @override
  String get castFailed => 'پخش محتوا شروع نشد';

  @override
  String get castStop => 'بازیگران را متوقف کنید';

  @override
  String castNowCasting(String name) {
    return 'ارسال به $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / تلویزیون هوشمند';

  @override
  String get castProtocolRoku => 'روکو';

  @override
  String get castRokuNote => 'Roku نمی تواند موقعیت را گزارش یا تغییر دهد';

  @override
  String get castControls => 'کنترل ها';

  @override
  String get castVolume => 'حجم تلویزیون';

  @override
  String castSkipPart(String name) {
    return 'رد شدن از $name';
  }

  @override
  String get trackProgressRememberSeries => 'برای این سریال به خاطر بسپار';

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
  String get themePickerTitle => 'موضوع';

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
  String togetherLinkConfirm(String room) {
    return 'به اتاق بپیوندید $room؟ میزبان انتخاب می کند که چه چیزی پخش می شود و پخش کننده وقتی شروع به تماشا می کند خودش باز می شود.';
  }

  @override
  String get togetherJoin => 'بپیوندید';

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
  String get togetherShareInvite => 'دعوت را به اشتراک بگذارید';

  @override
  String togetherShareText(String link) {
    return 'با من در دارتوتسو تماشا کنید: $link';
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
  String get novelPaged => 'ورق زدن صفحه';

  @override
  String get novelPagedDesc =>
      'فصل را به صفحات تقسیم کنید و به جای پیمایش، انگشت خود را بکشید یا ضربه بزنید تا آنها را بچرخانید';

  @override
  String novelPageOf(int current, int total) {
    return 'صفحه $current از $total';
  }

  @override
  String get novelPaginating => 'چیدمان صفحات';

  @override
  String get novelTools => 'مطالب، جستجو و نکات برجسته';

  @override
  String get novelContents => 'مطالب';

  @override
  String get novelContentsEmpty => 'این فصل هیچ عنوانی ندارد';

  @override
  String get novelSearch => 'جستجو کنید';

  @override
  String get novelSearchHint => 'در این فصل جستجو کنید';

  @override
  String get novelSearchNone => 'هیچ مسابقه ای وجود ندارد';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مطابقت دارد',
      one: '1 مسابقه',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'نکات برجسته';

  @override
  String get novelHighlightsEmpty =>
      'متنی را انتخاب کنید و روی Highlight ضربه بزنید تا در اینجا بماند';

  @override
  String get novelHighlight => 'برجسته کردن';

  @override
  String get novelHighlightNote => 'توجه داشته باشید';

  @override
  String get novelHighlightNoteHint => 'یک یادداشت اضافه کنید';

  @override
  String get novelHighlightRemove => 'هایلایت را حذف کنید';

  @override
  String get novelHighlightFailed => 'نمی‌توان آن انتخاب را با متن مطابقت داد';

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
  String get playerSkipSubmit => 'زمان های پرش را ارسال کنید';

  @override
  String get playerSkipSubmitDesc =>
      'نقطه شروع، پایان یا خلاصه در این قسمت را علامت بزنید و آن را با AniSkip به اشتراک بگذارید تا همه دکمه پرش را دریافت کنند.';

  @override
  String get playerSkipStart => 'شروع کنید';

  @override
  String get playerSkipEnd => 'پایان';

  @override
  String get playerSkipUseNow => 'از موقعیت فعلی استفاده کنید';

  @override
  String get playerSkipSend => 'ارسال به AniSkip';

  @override
  String get playerSkipSent => 'رد شدن از زمان ارسال شده به AniSkip، متشکرم';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip بارهای پرش را رد کرد: $error';
  }

  @override
  String get playerUnsupported =>
      'پخش‌کننده ویدیو نمی‌تواند در این دستگاه اجرا شود (نسخه Android آن برای کتابخانه پخش‌کننده همراه خیلی قدیمی است). برای کپی کردن جزئیات ضربه بزنید.';

  @override
  String get playerSkipNoMal =>
      'این عنوان هیچ شناسه MyAnimeList ندارد، AniSkip نمی تواند آن را بگیرد';

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
  String get playerPipPlay => 'بازی کنید';

  @override
  String get playerPipPause => 'مکث کنید';

  @override
  String get playerPipBack => 'عقب';

  @override
  String get playerPipForward => 'به جلو';

  @override
  String get playerPipRestore => 'بازگشت به بازیکن';

  @override
  String get playerPipActive => 'بازی در یک پنجره کوچک';

  @override
  String get listDateAdded => 'به لیست اضافه شد';

  @override
  String get listDateLastWatched => 'آخرین تماشا';

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
  String get widgetContinue => 'ادامه دهید';

  @override
  String get widgetReleases => 'به زودی منتشر می شود';

  @override
  String get widgetMore => 'همچنین در حال انجام است';

  @override
  String get widgetNothing => 'هنوز چیزی برای ادامه دادن نیست';

  @override
  String get downloadStorageTitle => 'ذخیره سازی';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دانلودها',
      one: '1 دانلود',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size قبلا دیده یا خوانده است';
  }

  @override
  String get downloadFreeUp => 'فضا را آزاد کنید';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دانلودها را تماشا کرد',
      one: '1 دانلود تماشا شده',
    );
    return 'حذف کنید $_temp0 و $size رایگان؟';
  }

  @override
  String downloadFreed(String size) {
    return 'آزاد شد $size';
  }

  @override
  String get downloadDeleteWatched => 'حذف تماشا شده';

  @override
  String get downloadDeleteAll => 'همه را حذف کنید';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'هر بارگیری $title حذف شود؟';
  }

  @override
  String get downloadNothingWatched =>
      'هیچ چیزی که شما تمام کرده اید دانلود نمی شود';

  @override
  String get downloadStorageEmpty => 'هیچ دانلودی از فضا استفاده نمی کند';

  @override
  String get downloadsOpenDesc => 'صف و هرچی رو این دستگاه ذخیره شده رو ببین';

  @override
  String get downloadTitle => 'دانلود';

  @override
  String get downloadMetaOnly => 'فقط فراداده';

  @override
  String get downloadMetaFailed => 'پوشه عنوان ایجاد نشد';

  @override
  String downloadMetaSaved(String path) {
    return 'ذخیره شد. فایل های خود را در $path قرار دهید';
  }

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
  String get downloadDashDrm => 'این جریان دارای محافظت DRM است';

  @override
  String get downloadDashNoVideo => 'مانیفست DASH ویدیویی ندارد';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
      one: 'تغییری که هیچ‌وقت فرستاده نشد دور انداخته بشه؟ این کار قابل بازگشت نیست.',
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
    return 'وقتی $source چیز جدیدی داشته باشد به شما گفته می شود';
  }

  @override
  String get sourceNotifyOff => 'انتشار اعلان‌ها خاموش است';

  @override
  String get sourceNotifyNeedsSource =>
      'ابتدا منبعی را انتخاب کنید که مطابقت دارد';

  @override
  String sourceNotifyAllOut(int count) {
    return 'همه چیز ($count) در حال حاضر منتشر شده است، چیزی برای انتظار نیست';
  }

  @override
  String get sourceNotifyTooltipOn => 'اعلان‌های انتشار را متوقف کنید';

  @override
  String get sourceNotifyTooltipOff => 'در مورد نسخه های جدید به من اطلاع دهید';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'قسمت $number در تاریخ $source منتشر شد';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'قسمت های $from–$to در تاریخ $source منتشر می شوند';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'فصل $number در تاریخ $source منتشر شد';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'فصل های $from–$to در تاریخ $source منتشر شده است';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'عناوین $count چیز جدیدی دارند';
  }

  @override
  String get navSources => 'منابع';

  @override
  String sourceInactiveOpen(String manager) {
    return 'این منبع متعلق به $manager است که سرویس برنامه افزودنی فعال نیست';
  }

  @override
  String get sourceAlertsHeader => 'اعلان های انتشار';

  @override
  String get sourceAlertsSwitch => 'عناوین مشترک را بررسی کنید';

  @override
  String get sourceAlertsSwitchDesc =>
      'هر بار که برنامه باز می شود، برای عناوین زنگ را روشن کرده اید';

  @override
  String get sourceSkipUnstarted => 'از عناوینی که شروع نکرده اید بگذرید';

  @override
  String get sourceSkipUnstartedDesc =>
      'هنوز چیزی تماشا یا خوانده نشده است، اما قسمت‌ها از قبل وجود دارند';

  @override
  String get sourceSkipUnseen =>
      'تا زمانی که قسمت‌های دیده‌نشده دارید از آن بگذرید';

  @override
  String get sourceSkipUnseenDesc =>
      'هنوز قسمت‌هایی را منتشر کرده‌اید که باید به آن‌ها برسید';

  @override
  String get sourceManage => 'اشتراک ها';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عناوین',
      one: '1 عنوان',
      zero: 'بدون عنوان',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'اکنون بررسی کنید';

  @override
  String get sourceCheckNowDesc => 'برنامه و قوانین رد شدن را نادیده می گیرد';

  @override
  String get sourceChecking => 'در حال بررسی…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'عناوین $count چیز جدیدی دارند',
      one: '1 عنوان چیز جدیدی دارد',
      zero: 'چیز جدیدی نیست',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'هنوز اشتراکی وجود ندارد';

  @override
  String get sourceEmptyMessage =>
      'روی زنگ بالای قسمت‌های عنوان ضربه بزنید تا درباره قسمت‌های جدید به شما بگویید';

  @override
  String get sourceAll => 'همه';

  @override
  String sourceInactive(String manager) {
    return 'غیرفعال: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source در این سرویس برنامه افزودنی نصب نشده است';
  }

  @override
  String get sourceUnreachable => 'منبع پاسخ نمی دهد';

  @override
  String get sourceFinished => 'تمام شد';

  @override
  String get sourceSkippedCompleted => 'رد شد: تکمیل شد';

  @override
  String get sourceSkippedUnstarted => 'رد شده: شروع نشده است';

  @override
  String get sourceSkippedUnseen => 'حذف شده: قسمت های دیده نشده';

  @override
  String get sourceWaiting => 'در انتظار انتشار بعدی';

  @override
  String sourceNextCheck(String when) {
    return 'بررسی بعدی $when';
  }

  @override
  String get sourceSoon => 'به زودی';

  @override
  String sourceInHours(int count) {
    return 'در ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'در ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'آخرین: $number';
  }

  @override
  String get sourceMute => 'بی صدا';

  @override
  String get sourceUnmute => 'باصدا کردن';

  @override
  String get sourceMuted => 'بی صدا شد';

  @override
  String get sourceUnsubscribe => 'لغو اشتراک';

  @override
  String get sourcePickAnother => 'منبع دیگری را انتخاب کنید';

  @override
  String get sourceOpenExtensions => 'برنامه های افزودنی را باز کنید';

  @override
  String get sourceNoticesEmpty => 'هنوز اطلاعیه‌ای برای انتشار وجود ندارد';

  @override
  String get sourceNoticesEmptyMessage =>
      'قسمت‌ها و فصل‌های جدید از عناوین مشترک شما در اینجا نمایش داده می‌شوند';

  @override
  String get sourceOpenTitle => 'عنوان را باز کنید';

  @override
  String get extensionsLoading => 'در حال بارگیری برنامه‌های افزودنی…';

  @override
  String get updateWhatsNew => 'تازه چه خبر';

  @override
  String get updateLater => 'بعدا';

  @override
  String get updateSkipVersion => 'از این نسخه بگذرید';

  @override
  String get updatePreparing => 'در حال آماده سازی…';

  @override
  String get updateDownloading => 'در حال دانلود';

  @override
  String get updateInstalling => 'در حال نصب…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done از $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'منتشر شد $date';
  }

  @override
  String get updateNoAsset => 'این نسخه برای دستگاه شما دانلودی ندارد';

  @override
  String get updateUpToDate => 'شما در آخرین نسخه هستید';

  @override
  String get updateIosHint =>
      'بیلدهای iOS در اپ استور نیستند. ipa. را از صفحه انتشار بگیرید و آن را با AltStore یا SideStore بارگذاری کنید';

  @override
  String get updateOpenedBrowser => 'مرورگر خود را بررسی کنید';

  @override
  String get updateTryAgain => 'دوباره امتحان کنید';

  @override
  String get settingsNotifications => 'اطلاعیه ها';

  @override
  String get settingsNotificationsDesc =>
      'هشدارهایی برای لیست‌های شما، قسمت‌ها و فصل‌های جدید و پاسخ‌های نظر';

  @override
  String get settingsAboutUpdates => 'درباره و به روز رسانی';

  @override
  String get settingsAboutUpdatesDesc =>
      'به‌روزرسانی‌های برنامه، نسخه، گزارش‌ها، پیوندها و پشتیبانی';

  @override
  String get settingsGroupAccount => 'حساب شما';

  @override
  String get settingsGroupContent => 'محتوا';

  @override
  String get settingsGroupApp => 'برنامه';

  @override
  String get settingsAnimeDesc =>
      'پخش کننده، زیرنویس، پرش، لیست قسمت و جزئیات قسمت';

  @override
  String get settingsMangaDesc =>
      'حالت خواننده، کنترل ها، نمایشگر و ردیابی فصل';

  @override
  String get settingsNovelDesc => 'متن، ورق زدن، ترجمه و خواندن با صدای بلند';

  @override
  String get settingsLocalPlay => 'بازی محلی';

  @override
  String get settingsLocalPlayDesc =>
      'فایل ها، پوشه ها، جریان های شبکه و تورنت ها را پخش کنید یا کتابی را باز کنید';

  @override
  String get settingsLocalPlayVideo => 'ویدئو';

  @override
  String get settingsLocalPlayBooks => 'کتاب ها';

  @override
  String get settingsWatchSections => 'بخش ها';

  @override
  String get settingsSectionLists => 'لیست قسمت ها و فصل ها';

  @override
  String get settingsSectionProgress => 'ردیابی پیشرفت';

  @override
  String get updateChannelDesc =>
      'نسخه آزمایش شده پایدار است. قبل از انتشار و آلفا ویژگی های جدید را زودتر دریافت می کنند اما ممکن است خراب شوند';

  @override
  String get checkNowDesc => 'فوراً به دنبال نسخه جدیدتر باشید';

  @override
  String get generalSectionBasics => 'زبان و رفتار';

  @override
  String get generalSectionSecurity => 'امنیت';

  @override
  String get generalSectionPrivacy => 'حریم خصوصی';

  @override
  String notificationsOtherService(String service) {
    return 'برای باز کردن این، به $service بروید';
  }

  @override
  String get secPlayerPlayback =>
      'سرعت پیش‌فرض، پخش خودکار، تناسب ویدئو، جهت‌گیری و تصویر در تصویر';

  @override
  String get secPlayerSkip =>
      'به طور خودکار از باز کردن، پایان و بازنویسی رد شوید';

  @override
  String get secPlayerControls =>
      'حرکات را تند بکشید، نگه دارید و ضربه بزنید و پیش نمایش را جستجو کنید';

  @override
  String get secPlayerSubtitles => 'زبان ها، ظاهر و رندر زیرنویس';

  @override
  String get secPlayerShaders => 'ارتقاء انیمه و شیدرهای خودتان';

  @override
  String get secPlayerEngine =>
      'رسیور، خروجی تصویر و صدا، بافر. فقط در صورتی این موارد را تغییر دهید که پخش مشکل داشته باشد';

  @override
  String get secPlayerMpv => 'mpv.conf، اسکریپت ها و تنظیم پیشرفته';

  @override
  String get secAnimeList => 'قسمت های پرکننده و تصاویر کوچک تماشا نشده';

  @override
  String get secProgress =>
      'وقتی پیشرفت تماشا یا خواندن شما در لیست شما ذخیره می شود';

  @override
  String get secAnimeDetails =>
      'عناوین اپیزودها، ریز عکسها و خلاصه ها از کجا می آیند';

  @override
  String get secReaderReading => 'حالت خواندن، ورق زدن صفحه، زوم و فصل بعدی';

  @override
  String get secReaderControls =>
      'روی مناطق، کلیدهای میزان صدا و اسکرول خودکار ضربه بزنید';

  @override
  String get secReaderDisplay => 'پس زمینه، روشنایی، تمام صفحه و شماره صفحه';

  @override
  String get secNovelText => 'فونت، اندازه، فاصله، حاشیه و ورق زدن صفحه';

  @override
  String get secNovelTranslate => 'در حین خواندن فصل ها را ترجمه کنید';

  @override
  String get secNovelSpeech => 'صدا، سرعت و زیر و بم برای خواندن با صدای بلند';

  @override
  String get secNotifyAbout =>
      'انتخاب کنید که کدام نوع فعالیت هشدار ارسال می کند';

  @override
  String get layoutTitle => 'طرح بندی';

  @override
  String get layoutDesc =>
      'دکمه های روی نوارها را انتخاب کنید، حرکت دهید و پنهان کنید';

  @override
  String get layoutHint =>
      'یک دکمه را بکشید تا آن را جابجا کنید (اول روی صفحه لمسی نگه دارید). برای برش، جابجایی یا پنهان کردن یکی از آنها ضربه بزنید';

  @override
  String layoutDropInto(String zone) {
    return 'مراجعه کنید: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'در حال حرکت $name. یک دکمه چسباندن را فشار دهید تا آن را قرار دهید';
  }

  @override
  String get layoutTitleFixed => 'عنوان';

  @override
  String get layoutZoneTopStart => 'نوار بالا، قبل از عنوان';

  @override
  String get layoutZoneTopEnd => 'نوار بالا، بعد از عنوان';

  @override
  String get layoutZoneBottomStart => 'نوار پایین، سمت چپ';

  @override
  String get layoutZoneBottomEnd => 'نوار پایین، سمت راست';

  @override
  String get layoutZoneSecondRow => 'پنهان: ردیف دوم در نمای عادی';

  @override
  String get layoutZoneOverflow => 'پنهان: در منوی بیشتر';

  @override
  String get layoutEmptyZone => 'دکمه ها را اینجا رها کنید';

  @override
  String get layoutCut => 'برش دهید';

  @override
  String get layoutPaste => 'اینجا بچسبانید';

  @override
  String get layoutHide => 'پنهان کردن';

  @override
  String layoutMoveTo(String zone) {
    return 'انتقال به $zone';
  }

  @override
  String get layoutReset => 'به حالت پیش فرض بازنشانی کنید';

  @override
  String get layoutMore => 'بیشتر';

  @override
  String get sourceWhyAction => 'چرا هیچ هشداری وجود ندارد؟';

  @override
  String get sourceWhyStatus => 'وضعیت';

  @override
  String get sourceWhyLastCheck => 'آخرین بررسی';

  @override
  String get sourceWhyNever => 'هنوز نه';

  @override
  String get sourceWhyNextCheck => 'بررسی بعدی';

  @override
  String get sourceWhyNewest => 'جدیدترین در منبع';

  @override
  String get sourceWhyProgress => 'پیشرفت شما';

  @override
  String get sourceWhyListStatus => 'وضعیت لیست';

  @override
  String get sourceWhyFailures => 'بررسی های متوالی ناموفق';

  @override
  String get sourceWhyLastRelease => 'آخرین نسخه جدید دیده شده است';

  @override
  String get sourceWhyVerdictNew =>
      'نسخه جدید به محض اینکه منبع آن را فهرست کرد و بررسی بعدی اجرا شد، در اینجا ظاهر می شود.';

  @override
  String get sourceWhyVerdictAhead =>
      'منبع از قبل از پیشرفت شما جلوتر است، بنابراین یک بار در مورد آن به شما گفته شد. برای دریافت هشدار بعدی، آن را بخوانید یا تماشا کنید.';

  @override
  String get sourceWhyVerdictSkipped =>
      'این عنوان با قوانین بالا حذف شده است. آنها را در تنظیمات اعلان تغییر دهید، یا از بررسی اکنون برای اجرای آن استفاده کنید.';

  @override
  String get sourceWhyVerdictBroken =>
      'منبع قابل دسترسی نیست یا حذف شده است، بنابراین چیزی در حال بررسی نیست.';

  @override
  String get sourceWhyVerdictMuted => 'این اشتراک قطع شده است.';

  @override
  String get externalPlayerTitle => 'جریان را در جای دیگری باز کنید';

  @override
  String get externalCopyUrl => 'پیوند جریان را کپی کنید';

  @override
  String get externalCopied => 'پیوند جریان کپی شد';

  @override
  String get externalChooser => 'در برنامه دیگری باز کنید';

  @override
  String get externalVlc => 'در VLC باز کنید';

  @override
  String get externalMpv => 'در mpv باز کنید';

  @override
  String get externalWebVideoCast => 'پخش ویدیوی وب';

  @override
  String get castViaAppHint =>
      'پخش جریانی را به برنامه Web Video Cast ارسال کنید';

  @override
  String get externalFailed => 'جریان باز نشد. آیا پخش کننده نصب شده است؟';

  @override
  String get addonInstalled => 'نصب شده است';

  @override
  String get loadFailedActivity => 'فعالیت بارگیری نشد';

  @override
  String get loadFailedFavourites =>
      'موارد دلخواه بارگیری نشد. دوباره امتحان کنید';

  @override
  String get loadFailedStats => 'آمار بارگیری نشد';

  @override
  String get loadFailedReplies => 'پاسخ ها بارگیری نشد';

  @override
  String get cantBeUndone => 'این قابل واگرد نیست.';

  @override
  String get searchTags => 'برچسب ها را جستجو کنید';

  @override
  String get spoilerTapToView => 'اسپویلر، برای مشاهده ضربه بزنید';

  @override
  String get mediaVideo => 'ویدئو';

  @override
  String get notificationSomeone => 'کسی';

  @override
  String get notificationATitle => 'یک عنوان';

  @override
  String get notificationAddedDetail => 'به AniList اضافه شد';

  @override
  String get updateNoReleases => 'هیچ نسخه ای یافت نشد';

  @override
  String get updateInvalidResponse => 'پاسخ به‌روزرسانی نامعتبر است';

  @override
  String get commentsRateLimited => 'نرخ محدود';

  @override
  String get commentsConnectFailed => 'اتصال ناموفق بود';

  @override
  String get dnsNoRecords => 'هیچ رکورد A برگردانده نشد';

  @override
  String get importTokenRejected => 'توکن رد شد';

  @override
  String get developerRoleLead => 'توسعه دهنده اصلی';

  @override
  String get developerRoleModerator => 'ناظر اختلاف';

  @override
  String extensionManagerTitle(String type) {
    return '$type مدیر';
  }

  @override
  String extensionsOfType(String type) {
    return 'پسوند $type';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'تنظیمات $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name هیچ تنظیماتی ارائه نمی دهد.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'قسمت $episode از $title پخش شد';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'قسمت $episode پخش شد';
  }

  @override
  String notificationAdded(String title) {
    return '$title به AniList اضافه شد';
  }

  @override
  String updateNotFound(String message) {
    return 'سرور به‌روزرسانی آن نسخه را پیدا نکرد: $message';
  }

  @override
  String get installStepJre => 'زمان اجرا جاوا';

  @override
  String get installStepCore => 'هسته زمان اجرا';

  @override
  String installStepsProgress(int current, int total) {
    return 'مرحله $current از $total';
  }

  @override
  String get stepWaiting => 'در انتظار';

  @override
  String get stepChecking => 'در حال بررسی…';

  @override
  String get stepUpToDate => 'به روز';

  @override
  String stepUpToDateWith(String detail) {
    return 'به روز · $detail';
  }

  @override
  String get stepWillInstall => 'نصب خواهد شد';

  @override
  String get stepWillUpdate => 'بروز رسانی خواهد شد';

  @override
  String stepWillUpdateTo(String version) {
    return 'به $version به روز می شود';
  }

  @override
  String get stepInstalled => 'نصب شده است';

  @override
  String get stepNotNeeded => 'اینجا لازم نیست';

  @override
  String get stepFailed => 'شکست خورد';

  @override
  String stepFailedWith(String reason) {
    return 'ناموفق: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'این برنامه بر روی زمان اجرا جاوا و هسته اجرای مشترک اجرا می شود. آنها ابتدا نصب می شوند و در صورت تغییر به روز می شوند.';

  @override
  String get installRuntimeNewer =>
      'زمانی که این مدیر اجرا می کند دارای یک به روز رسانی است.';

  @override
  String get removeJvmTitle => 'زمان اجرا جاوا حذف شود؟';

  @override
  String get removeJvmMessage =>
      'مدیران برنامه افزودنی دسکتاپ تا زمانی که دوباره نصب نشود کار نمی کنند. دفعه بعد که یکی را نصب یا باز می کنید دوباره دانلود می شود.';

  @override
  String get runtimePreparing => 'در حال آماده سازی زمان اجرا…';

  @override
  String get calendarAll => 'همه';

  @override
  String get calendarAnime => 'انیمه';

  @override
  String get calendarManga => 'مانگا';

  @override
  String get readerCloudflare => 'باز کردن در مرورگر (بررسی Cloudflare)';

  @override
  String get badgeBoardHint =>
      'یک نشان را به گوشه‌ای از کارت اول بکشید، یا نشانی را که از قبل روی آن است بکشید تا آن را جابجا کنید. نشان‌ها جای خود را عوض می‌کنند، بنابراین هیچ‌یک با هم همپوشانی ندارند. روی یک نشان زیر ضربه بزنید تا آن را روشن یا خاموش کنید.';

  @override
  String get statusAuto => 'خودکار';

  @override
  String get unreadCounter => 'شمارنده خوانده نشده';

  @override
  String get unreadCounterDesc =>
      'نشان دهید که چند قسمت یا فصل روی پوسترها باقی مانده است';

  @override
  String get settingsShortcuts => 'میانبرهای صفحه کلید';

  @override
  String get settingsShortcutsDesc =>
      'هر کلید را ببینید، تغییر دهید و خاموش کنید';

  @override
  String get shortcutGroupApp => 'برنامه';

  @override
  String get shortcutGroupPlayer => 'پخش کننده ویدیو';

  @override
  String get shortcutGroupReader => 'خواننده';

  @override
  String get shortcutsEnableApp => 'میانبرهای برنامه';

  @override
  String get shortcutsEnablePlayer => 'میانبرهای پخش کننده';

  @override
  String get shortcutsEnableReader => 'میانبرهای خواننده';

  @override
  String get shortcutsEnableDesc =>
      'تمام کلیدهای این گروه را روشن یا خاموش کنید';

  @override
  String get shortcutNotSet => 'تنظیم نشده است';

  @override
  String get shortcutAddKey => 'یک کلید اضافه کنید';

  @override
  String get shortcutResetOne => 'به حالت پیش فرض بازنشانی کنید';

  @override
  String get shortcutClearKeys => 'تمام کلیدها را بردارید';

  @override
  String get shortcutResetAll => 'همه میانبرها را بازنشانی کنید';

  @override
  String get shortcutResetAllDesc => 'هر کلید را به حالت پیش فرض خود برگردانید';

  @override
  String get shortcutPress => 'کلید یا ترکیب مورد نظر را فشار دهید';

  @override
  String get shortcutPressHint =>
      'هر ترکیب فقط می تواند به یک عمل تعلق داشته باشد، بنابراین با گرفتن یکی آن را حرکت می دهد.';

  @override
  String get shortcutSeekPercent => 'به نقطه ای از ویدیو بروید';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'به عقب برگرد';

  @override
  String get shortcutAppFullscreen => 'تمام صفحه را تغییر دهید';

  @override
  String get shortcutAppGlass => 'تغییر حالت شیشه';

  @override
  String get shortcutAppMaterialYou => 'مواد شما را تغییر دهید';

  @override
  String get shortcutAppDark => 'حالت تاریک را تغییر دهید';

  @override
  String get shortcutAppOled => 'OLED مشکی را روشن کنید';

  @override
  String get shortcutAppSearch => 'جستجو را باز کنید';

  @override
  String get shortcutAppSettings => 'تنظیمات را باز کنید';

  @override
  String get shortcutAppDownloads => 'دانلودها را باز کنید';

  @override
  String get shortcutAppNotifications => 'اعلان ها را باز کنید';

  @override
  String get shortcutAppIncognito => 'حالت ناشناس را تغییر دهید';

  @override
  String get shortcutAppShortcuts => 'نمایش میانبرهای صفحه کلید';

  @override
  String get shortcutPlayerPlayPause => 'پخش یا مکث کنید';

  @override
  String get shortcutPlayerSeekForward => 'به دنبال جلو بروید';

  @override
  String get shortcutPlayerSeekBack => 'به دنبال عقب';

  @override
  String get shortcutPlayerSeekForwardLong => '30 ثانیه به جلو بگردید';

  @override
  String get shortcutPlayerSeekBackLong => '30 ثانیه به عقب برگردید';

  @override
  String get shortcutPlayerFrameForward => 'فریم بعدی';

  @override
  String get shortcutPlayerFrameBack => 'قاب قبلی';

  @override
  String get shortcutPlayerVolumeUp => 'افزایش صدا';

  @override
  String get shortcutPlayerVolumeDown => 'کاهش صدا';

  @override
  String get shortcutPlayerMute => 'بی صدا';

  @override
  String get shortcutPlayerFullscreen => 'تمام صفحه';

  @override
  String get shortcutPlayerNext => 'قسمت بعدی';

  @override
  String get shortcutPlayerPrevious => 'قسمت قبلی';

  @override
  String get shortcutPlayerSkip => 'از مقدمه یا پایان رد شوید';

  @override
  String get shortcutPlayerPanel => 'لیست اپیزود';

  @override
  String get shortcutPlayerSpeedUp => 'پخش سریعتر';

  @override
  String get shortcutPlayerSpeedDown => 'پخش آهسته تر';

  @override
  String get shortcutPlayerSpeedReset => 'سرعت معمولی';

  @override
  String get shortcutPlayerSubtitleToggle => 'زیرنویس روشن یا خاموش';

  @override
  String get shortcutPlayerSubtitleCycle => 'آهنگ زیرنویس بعدی';

  @override
  String get shortcutPlayerAudioCycle => 'آهنگ صوتی بعدی';

  @override
  String get shortcutPlayerStreamCycle => 'جریان بعدی';

  @override
  String get shortcutPlayerFit => 'تغییر تناسب ویدئو';

  @override
  String get shortcutReaderRight => 'صفحه سمت راست';

  @override
  String get shortcutReaderLeft => 'صفحه سمت چپ';

  @override
  String get shortcutReaderNextPage => 'صفحه بعدی';

  @override
  String get shortcutReaderPreviousPage => 'صفحه قبلی';

  @override
  String get shortcutReaderControls => 'نمایش یا پنهان کردن کنترل ها';

  @override
  String get shortcutReaderNextChapter => 'فصل بعدی';

  @override
  String get shortcutReaderPreviousChapter => 'فصل قبل';

  @override
  String shortcutTaken(String action) {
    return 'برگرفته از $action';
  }

  @override
  String get incognitoTurnedOn => 'حالت ناشناس روشن است';

  @override
  String get incognitoTurnedOff => 'حالت ناشناس خاموش است';

  @override
  String get onHoldAnime => 'انیمه در انتظار';

  @override
  String get onHoldManga => 'مانگا در انتظار';

  @override
  String get droppedAnime => 'انیمه حذف شد';

  @override
  String get droppedManga => 'مانگا حذف شد';

  @override
  String get generalSectionDesktop => 'دسکتاپ';

  @override
  String get closeAction => 'وقتی پنجره بسته است';

  @override
  String get closeActionQuit => 'برنامه را ترک کنید';

  @override
  String get closeActionWhenBusy =>
      'در حالی که چیزی در حال اجراست در سینی به کار ادامه دهید';

  @override
  String get closeActionAlways => 'همیشه در سینی کار کنید';

  @override
  String get closeActionNoTray =>
      'سینی سیستم در اینجا در دسترس نیست، بنابراین برنامه زمانی که بسته می‌شود خارج می‌شود';

  @override
  String get gamepadNav => 'ناوبری صفحه بازی';

  @override
  String get gamepadNavDesc =>
      'در اطراف برنامه حرکت کنید و بازیکن را با یک کنترلر بازی کنترل کنید';

  @override
  String get trayShow => 'نمایش دارتوتسو';

  @override
  String get trayQuit => 'ترک کنید';

  @override
  String get trayIdle => 'هیچ چیز در حال اجرا نیست';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'در حال بارگیری $count مورد',
      one: 'در حال دانلود $count مورد',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'همگام سازی لیست های شما';

  @override
  String get trayUpdating => 'به روز رسانی برنامه';

  @override
  String get trayPlaying => 'بازی در یک پنجره کوچک';

  @override
  String get traySearch => 'جستجو کنید';

  @override
  String get trayPauseDownloads => 'توقف دانلودها';

  @override
  String get trayResumeDownloads => 'از سرگیری دانلودها';

  @override
  String get playerDownloadTitle => 'در حال دانلود پخش کننده';

  @override
  String get playerDownloadBody =>
      'دارتوتسو یک بار موتور ویدئویی خود را واکشی می کند. پخش به محض آماده شدن شروع می شود.';

  @override
  String get playerDownloadStarting => 'شروع دانلود…';

  @override
  String get playerDownloadFailedTitle => 'نمی توانم پخش کننده را بگیرم';

  @override
  String get playerDownloadFailedBody =>
      'اتصال خود را بررسی کنید و دوباره امتحان کنید. دانلود از جایی که متوقف شد شروع می شود.';

  @override
  String get playerDownloadRetry => 'دوباره امتحان کنید';

  @override
  String get playerDownloadCopy => 'کپی جزئیات';

  @override
  String get removePlayerTitle => 'پخش کننده حذف شود؟';

  @override
  String get removePlayerMessage =>
      'تا زمانی که پخش کننده دوباره دانلود نشود، ویدیوها نمی توانند پخش شوند.';

  @override
  String get trailerLoading => 'در حال بارگیری تریلر…';

  @override
  String get trailerFailed => 'تریلر در اینجا پخش نشد، آن را در مرورگر باز کرد';
}
