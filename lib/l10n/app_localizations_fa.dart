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
  String get appTagline => 'بهترین برنامه جدید برای\nردیابی انیمه و مانگا';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get simkl => 'Simkl';

  @override
  String get discord => 'Discord';

  @override
  String get login => 'ورود';

  @override
  String loginTo(String service) {
    return 'ورود به $service';
  }

  @override
  String logout(String type) {
    return 'خروج از $type';
  }

  @override
  String get confirmLogout => 'آیا مطمئن هستید که می‌خواهید خارج شوید؟';

  @override
  String get anime => 'انیمه';

  @override
  String get manga => 'مانگا';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'رمان';

  @override
  String get ln => 'رمان سبک روشن';

  @override
  String get home => 'خانه';

  @override
  String get search => 'جستجو';

  @override
  String get calendar => 'تقویم';

  @override
  String get settings => 'تنظیمات';

  @override
  String get watch => 'تماشا';

  @override
  String get read => 'خواندن';

  @override
  String get info => 'Info';

  @override
  String get comments => 'نظرات';

  @override
  String get addToList => 'اضافه کردن به لیست';

  @override
  String get series => 'سری سریال';

  @override
  String get season => 'فصل';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'قسمت‌ها',
      one: 'قسمت',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'فصول',
      one: 'فصل',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'جلدها',
      one: 'جلد',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'فیلم‌ها',
      one: 'فیلم',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'قسمت‌ها';

  @override
  String get totalChapters => 'فصول';

  @override
  String get genres => 'ژانرها';

  @override
  String get scanlators => 'اسکن‌کنندگان';

  @override
  String list(String type) {
    return '$type فهرست';
  }

  @override
  String get watching => 'تماشای';

  @override
  String get reading => 'در حال خواندن';

  @override
  String get readStatus => 'خواندن';

  @override
  String get watchStatus => 'تماشا شده';

  @override
  String planned(String type) {
    return 'برنامه‌ریزی شده $type';
  }

  @override
  String onHold(String type) {
    return 'منتظر $type';
  }

  @override
  String get droppedAnime => 'انیمه کنار گذاشته شده';

  @override
  String get droppedManga => 'مانگای کنار گذاشته شده';

  @override
  String noDropped(String type) {
    return 'شما هنوز هیچ $type را کنار نگذاشته‌اید.';
  }

  @override
  String get continueReading => 'ادامه دادن خواندن';

  @override
  String get continueWatching => 'ادامه دادن تماشا';

  @override
  String browse(String type) {
    return 'مرور $type';
  }

  @override
  String trending(String type) {
    return 'داغ‌ترین $type';
  }

  @override
  String popular(String type) {
    return 'محبوب $type';
  }

  @override
  String get topAiring => 'پخش برتر';

  @override
  String topRated(String type) {
    return 'برترین $type';
  }

  @override
  String mostFavourite(String type) {
    return 'محبوب‌ترین $type';
  }

  @override
  String get thisSeason => 'این فصل';

  @override
  String get nextSeason => 'فصل بعدی';

  @override
  String get previousSeason => 'فصل قبلی';

  @override
  String get recommended => 'پیشنهادی';

  @override
  String get recommendationsEmptyMessage =>
      'برای دریافت پیشنهادات، انیمه یا مانگایی تماشا/خوانده کنید';

  @override
  String get recentUpdates => 'بروزرسانی‌های اخیر';

  @override
  String get allCaughtUpNew => 'همه را دیدی، چه چیز جدیدی داریم؟';

  @override
  String favorite(String type) {
    return 'علاقه‌مند $type';
  }

  @override
  String get favorites => 'علاقه‌مندی‌ها';

  @override
  String get noFavourites =>
      'به نظر می‌رسد که شما چیزی دوست ندارید،\nسعی کنید یک نمایش را لایک کنید تا در اینجا نگه داشته شود.';

  @override
  String get noOnHold =>
      'به نظر می‌رسد که شما هیچ چیزی را در حالت انتظار قرار نداده‌اید.';

  @override
  String manageLayout(String service, String page) {
    return 'مدیریت چینش صفحه $page برای $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'شما می‌توانید با کشیدن و رها کردن اقلام، چینش صفحه $page را مدیریت کنید';
  }

  @override
  String get gridView => 'نمای شبکه‌ای';

  @override
  String get listView => 'لیست View';

  @override
  String get compactView => 'نمای فشرده';

  @override
  String get layout => 'چیدمان';

  @override
  String get sort => 'مرتب‌سازی';

  @override
  String get utd => 'از بالا به پایین';

  @override
  String get dtu => 'پایین تا بالا';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'قسمت تماشا شده';

  @override
  String get chapterRead => 'فصل خوانده شده';

  @override
  String get outOf => 'خارج از';

  @override
  String get totalOf => 'مجموعِ';

  @override
  String get selected => 'انتخاب شده';

  @override
  String get found => 'پیدا شده';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'افزونه‌ها',
      one: 'افزونه',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'موجود $type';
  }

  @override
  String installed(String type) {
    return 'نصب شده $type';
  }

  @override
  String get extensionsDescription =>
      'افزونه‌ها را نصب و مدیریت کنید برای عملکرد بیشتر';

  @override
  String get addAnimeRepo => 'مخزن انیمه را اضافه کنید';

  @override
  String get addAnimeRepoDesc => 'Add Anime Repo از منابع مختلف';

  @override
  String get addMangaRepo => 'Manga Repo';

  @override
  String get addMangaRepoDesc => 'Add Manga Repo از منابع مختلف';

  @override
  String get addNovelRepo => 'اضافه کردن رمان Repo';

  @override
  String get addNovelRepoDesc => 'اضافه کردن Repo از منابع مختلف';

  @override
  String get loadExtensionsIcon => 'Load Extensions';

  @override
  String get loadExtensionsIconDesc => 'Disable If Extensions page';

  @override
  String get autoUpdate => 'به روز رسانی خودکار';

  @override
  String get autoUpdateDesc => 'به روز رسانی خودکار برنامه های افزودنی';

  @override
  String get installSourceToStart => 'نصب یک منبع از صفحه افزونه برای شروع';

  @override
  String get author => 'نویسنده';

  @override
  String get averageDuration => 'مدت زمان متوسط';

  @override
  String get characters => 'شخصیت‌ها';

  @override
  String get description => 'خلاصه';

  @override
  String get synopsis => 'خلاصه';

  @override
  String get endDate => 'پایان تاریخ';

  @override
  String get format => 'فرمت';

  @override
  String get meanScore => 'امتیاز';

  @override
  String get name => 'نام';

  @override
  String get nameRomaji => 'نام (رومجی)';

  @override
  String get popularity => 'محبوبیت';

  @override
  String get relations => 'روابط';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'منبع';

  @override
  String get staff => 'تیم تولید';

  @override
  String get startDate => 'شروع تاریخ';

  @override
  String get status => 'وضعیت';

  @override
  String get studio => 'استودیو Studio';

  @override
  String get synonyms => 'مترادف‌ها';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'مجموع';

  @override
  String get collapseText => 'نمایش کمتر';

  @override
  String get expandText => 'نمایش بیشتر';

  @override
  String get comingSoon => 'به زودی';

  @override
  String get wrongTitle => 'عنوان اشتباه؟?';

  @override
  String get youTube => 'در YouTube بازی کنید؟?';

  @override
  String get mediaNotFound => 'رسانه ها پیدا نمی شوند';

  @override
  String get noChapterFound => 'هیچ فصلی پیدا نشد';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'فعالیت‌ها',
      one: 'فعالیت',
    );
    return '$_temp0';
  }

  @override
  String get language => 'زبان';

  @override
  String get account => 'حساب کاربری';

  @override
  String get accountDescription =>
      'مدیریت حساب‌های AniList، MAL و Discord خود را به راحتی انجام دهید';

  @override
  String get common => 'عمومی';

  @override
  String get commonDescription =>
      'دسترسی به تنظیمات عمومی برای استفاده آسان از برنامه';

  @override
  String get animeDescription => 'ترجیحات انیمه خود را شخصی‌سازی و مدیریت کنید';

  @override
  String get mangaDescription => 'تجربه مانگا خود را سازماندهی و سفارشی کنید';

  @override
  String get about => 'درباره';

  @override
  String get aboutDescription => 'بیشتر در مورد برنامه و سازندگان آن بیاموزید';

  @override
  String get notifications => 'اطلاع‌رسانی‌ها';

  @override
  String get notificationsDescription =>
      'تنظیم کنید که چگونه و چه زمانی اطلاع‌رسانی دریافت کنید';

  @override
  String get offlineMode => 'حالت آفلاین';

  @override
  String get offlineModeDescription =>
      'بدون اتصال به اینترنت از برنامه استفاده کنید';

  @override
  String get incognitoMode => 'حالت ناشناس';

  @override
  String get incognitoModeDescription => 'بدون ذخیره فعالیت خود جستجو کنید';

  @override
  String get hidePrivate => 'مخفی کردن خصوصی';

  @override
  String get hidePrivateDescription => 'پنهان کردن سری‌های خصوصی از صفحه اصلی.';

  @override
  String get hiddenMedia => 'رسانه‌های پنهان';

  @override
  String get noHiddenMediaFound => 'رسانه پنهانی یافت نشد';

  @override
  String get playerSettingsTitle => 'تنظیمات پخش‌کننده';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'سرعت';

  @override
  String get speedDescription => 'سرعت پیش‌فرض برای پخش‌کننده';

  @override
  String get cursedSpeed => 'سرعت نفرین‌شده';

  @override
  String get cursedSpeedDescription => 'برای کسانی که درگیر زندگی هستند';

  @override
  String get resizeMode => 'حالت تغییر اندازه';

  @override
  String get resizeModeDescription =>
      'حالت پیش‌فرض تغییر اندازه برای پخش‌کننده';

  @override
  String get skipButton => 'دکمه رد کردن';

  @override
  String get skipButtonDescription => 'مدت زمان دکمه رد کردن';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'زیرنویس‌ها';

  @override
  String get showSubtitles => 'نمایش زیرنویس‌ها';

  @override
  String get showSubtitlesDescription => 'نمایش زیرنویس‌ها به طور پیش‌فرض';

  @override
  String get subtitlePreview => 'پیش‌نمایش زیرنویس';

  @override
  String get fontColor => 'رنگ قلم';

  @override
  String get fontColorDescription => 'رنگ قلم زیرنویس';

  @override
  String get fontFamily => 'نوع قلم';

  @override
  String get fontFamilyDescription => 'نوع قلم زیرنویس';

  @override
  String get fontSize => 'اندازه قلم';

  @override
  String get fontSizeDescription => 'اندازه قلم زیرنویس';

  @override
  String get fontWeight => 'ضخامت قلم';

  @override
  String get fontWeightDescription => 'ضخامت قلم زیرنویس';

  @override
  String get backgroundColor => 'رنگ پس‌زمینه';

  @override
  String get backgroundColorDescription => 'رنگ پس‌زمینه زیرنویس';

  @override
  String get outlineColor => 'رنگ حاشیه';

  @override
  String get outlineColorDescription => 'رنگ حاشیه زیرنویس';

  @override
  String get bottomPadding => 'فاصله پایین';

  @override
  String get bottomPaddingDescription => 'فاصله پایین زیرنویس';

  @override
  String get readerSettings => 'Reader Settings';

  @override
  String get readerSettingsDesc => 'Change reader settings';

  @override
  String get spacedPages => 'Spaced Pages';

  @override
  String get spacedPagesDesc => 'Add space between pages';

  @override
  String get hideScrollbar => 'Hide Scrollbar';

  @override
  String get hideScrollbarDesc => 'Hide scrollbar while reading';

  @override
  String get hidePageNumber => 'Hide Page Number';

  @override
  String get hidePageNumberDesc => 'Hide page number while reading';

  @override
  String get theme => 'تم';

  @override
  String get themeDescription => 'ظاهر و حس برنامه خود را سفارشی کنید';

  @override
  String get darkMode => 'حالت تاریک';

  @override
  String get enableDarkMode => 'فعال‌سازی حالت تاریک';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'از رنگ پس‌زمینه خود برای برنامه استفاده کنید';

  @override
  String get customTheme => 'تم سفارشی';

  @override
  String get customThemeDescription => 'از رنگ خود برای تم استفاده کنید';

  @override
  String get oledThemeVariant => 'نوع تم OLED';

  @override
  String get oledThemeVariantDescription => 'فعال‌سازی حالت OLED';

  @override
  String get colorPicker => 'انتخابگر رنگ';

  @override
  String get pickColor => 'انتخاب رنگ';

  @override
  String get colorPickerDescription => 'یک رنگ انتخاب کنید';

  @override
  String get colorPickerDefault => 'شکست';

  @override
  String get colorPickerCustom => 'سفارشی';

  @override
  String get customPath => 'مسیر سفارشی';

  @override
  String get customPathDescription =>
      'یک مسیر سفارشی برای ذخیره فایل ها تنظیم کنید\nمطبوعات طولانی برای حذف';

  @override
  String get selectDirectory => 'انتخاب یک دایرکتوری';

  @override
  String get selectMediaService => 'انتخاب خدمات رسانه ای';

  @override
  String get logFile => 'فایل Log File';

  @override
  String get logFileDescription => 'اشتراک گذاری فایل log';

  @override
  String get restoreSettings => 'بازنشانی تنظیمات';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Web View';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'آیا می‌خواهید از نگهدارنده Dartotsu پشتیبانی کنید؟\nدر نظر داشته باشید که کمک مالی کنید';

  @override
  String get donationGoal => 'فعلاً هدفی برای اهدا وجود ندارد';

  @override
  String get options => 'گزینه های Options';

  @override
  String get ok => 'باشه';

  @override
  String get cancel => 'لغو';

  @override
  String get yes => 'بله';

  @override
  String get no => 'نه';
}
