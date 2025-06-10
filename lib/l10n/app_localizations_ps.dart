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
  String get appTagline => 'لپاره نوی غوره اپلیکیشن\nانیم او منګا تعقیب کول';

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
  String get login => 'ننوتل';

  @override
  String loginTo(String service) {
    return 'ورود به $service';
  }

  @override
  String logout(String type) {
    return 'خروج $type';
  }

  @override
  String get confirmLogout =>
      'آیا مطمئن هستید که می‌خواهید از سیستم خارج شوید؟';

  @override
  String get anime => 'انیمه';

  @override
  String get manga => 'مانګا';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'رمان';

  @override
  String get ln => 'لایت ناول';

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
  String get info => 'اطلاعات';

  @override
  String get comments => 'نظرات';

  @override
  String get addToList => 'افزودن به فهرست';

  @override
  String get series => 'سریال';

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
      other: 'فصل‌ها',
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
  String get totalChapters => 'فصل‌ها';

  @override
  String get genres => 'ژانرها';

  @override
  String get scanlators => 'اسکن‌لترها';

  @override
  String list(String type) {
    return 'فهرست $type';
  }

  @override
  String get watching => 'کتل';

  @override
  String get reading => 'لوستل';

  @override
  String get readStatus => 'خواندن';

  @override
  String get watchStatus => 'لیدل شوی';

  @override
  String planned(String type) {
    return '$type برنامه‌ریزی شده';
  }

  @override
  String onHold(String type) {
    return 'در حال تعلیق $type';
  }

  @override
  String get droppedAnime => 'انیمه‌های کنار گذاشته شده';

  @override
  String get droppedManga => 'مانگاهای کنار گذاشته شده';

  @override
  String noDropped(String type) {
    return 'شما هنوز هیچ $type را کنار نگذاشته‌اید.';
  }

  @override
  String get continueReading => 'ادامه خواندن';

  @override
  String get continueWatching => 'ادامه تماشا کردن';

  @override
  String browse(String type) {
    return 'مرور $type';
  }

  @override
  String trending(String type) {
    return '$type پرطرفدار';
  }

  @override
  String popular(String type) {
    return 'محبوب‌ترین $typeپرطرفدار $type';
  }

  @override
  String get topAiring => 'پخش برتر';

  @override
  String topRated(String type) {
    return 'بالاترین امتیاز $type';
  }

  @override
  String mostFavourite(String type) {
    return 'محبوب‌ترین $type';
  }

  @override
  String get thisSeason => 'این فصل';

  @override
  String get nextSeason => 'فصل بعد';

  @override
  String get previousSeason => 'فصل گذشته';

  @override
  String get recommended => 'توصیه شده';

  @override
  String get recommendationsEmptyMessage =>
      'برای دریافت پیشنهادات، چند انیمه یا مانگا تماشا/خوانده کنید';

  @override
  String get recentUpdates => 'بروزرسانی‌های اخیر';

  @override
  String get allCaughtUpNew => 'همه را تماشا کرده‌اید، کی قسمت جدید می‌آید؟';

  @override
  String favorite(String type) {
    return 'محبوب $type';
  }

  @override
  String get favorites => 'علاقه‌مندی‌ها';

  @override
  String get noFavourites =>
      'به نظر می‌رسد شما هیچ چیزی را دوست ندارید،\nسعی کنید یک برنامه را پسند کنید تا در اینجا نگه داشته شود.';

  @override
  String get noOnHold =>
      'به نظر می‌رسد شما هیچ چیزی را در حال تعلیق قرار نداده‌اید.';

  @override
  String manageLayout(String service, String page) {
    return 'مدیریت چیدمان صفحه $page برای $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'شما می‌توانید چیدمان صفحه $page را با کشیدن و رها کردن آیتم‌ها مدیریت کنید';
  }

  @override
  String get gridView => 'نمای شبکه‌ای';

  @override
  String get listView => 'نمای فهرست';

  @override
  String get compactView => 'نمای فشرده';

  @override
  String get layout => 'چیدمان';

  @override
  String get sort => 'مرتب‌سازی';

  @override
  String get utd => 'بالا به پایین';

  @override
  String get dtu => 'پایین به بالا';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'قسمت تماشا شده';

  @override
  String get chapterRead => 'فصل خوانده شده';

  @override
  String get outOf => 'له';

  @override
  String get totalOf => 'ټول';

  @override
  String get selected => 'غوره شوی';

  @override
  String get found => 'موندل شوی';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'افزونه‌ها',
      one: 'افزونه',
    );
    return 'غځونه$_temp0';
  }

  @override
  String available(String type) {
    return '$type در دسترس';
  }

  @override
  String installed(String type) {
    return '$type نصب شده';
  }

  @override
  String get extensionsDescription =>
      'اضافي فعالیت لپاره غځونې نصب او مدیریت کړئ';

  @override
  String get addAnimeRepo => 'د انیمې ذخیره اضافه کړئ';

  @override
  String get addAnimeRepoDesc =>
      'د بیلابیلو سرچینو څخه د انیمې ذخیره اضافه کړئ';

  @override
  String get addMangaRepo => 'د مانګا ذخیره اضافه کړئ';

  @override
  String get addMangaRepoDesc =>
      'د بیلابیلو سرچینو څخه د مانګا ذخیره اضافه کړئ';

  @override
  String get addNovelRepo => 'د ناول ذخیره اضافه کړئ';

  @override
  String get addNovelRepoDesc => 'د بیلابیلو سرچینو څخه د ناول ذخیره اضافه کړئ';

  @override
  String get loadExtensionsIcon => 'د غزونو نښه پورته کړئ';

  @override
  String get loadExtensionsIconDesc =>
      'که د غزونو پاڼه ځنډېږي، دا غیر فعال کړئ';

  @override
  String get autoUpdate => 'خودکار تازه کول';

  @override
  String get autoUpdateDesc => 'د غزونو خودکار تازه کول';

  @override
  String get installSourceToStart =>
      'د پیل لپاره د غزونې پاڼې څخه سرچینه نصب کړئ';

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
  String get endDate => 'تاریخ پایان';

  @override
  String get format => 'فرمت';

  @override
  String get meanScore => 'امتیاز متوسط';

  @override
  String get name => 'نام';

  @override
  String get nameRomaji => 'نام (رومجی)';

  @override
  String get popularity => 'محبوبیت';

  @override
  String get relations => 'روابط';

  @override
  String get prequel => 'پیش‌درآمد';

  @override
  String get sequel => 'دنباله';

  @override
  String get source => 'منبع';

  @override
  String get staff => 'کارکنان';

  @override
  String get startDate => 'تاریخ شروع';

  @override
  String get status => 'وضعیت';

  @override
  String get studio => 'استودیو';

  @override
  String get synonyms => 'مترادف‌ها';

  @override
  String get tags => 'برچسب‌ها';

  @override
  String get total => 'مجموع';

  @override
  String get collapseText => 'نمایش کمتر';

  @override
  String get expandText => 'تاریخ ختم';

  @override
  String get comingSoon => 'به زودی می‌آید';

  @override
  String get wrongTitle => 'ناسم عنوان؟';

  @override
  String get youTube => 'په یوټیوب کې لوبول؟';

  @override
  String get mediaNotFound => 'میډیا ونه موندل شوه';

  @override
  String get noChapterFound => 'هیڅ څپرکی ونه موندل شو';

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
  String get account => 'حساب';

  @override
  String get accountDescription =>
      'خپل AniList، MAL، او Discord حسابونه په اسانۍ سره مدیریت کړئ';

  @override
  String get common => 'عام';

  @override
  String get commonDescription =>
      'د اپلیکیشن د اسانه کارولو لپاره عمومي تنظیمات ته لاسرسی';

  @override
  String get animeDescription => 'خپل د انیمې خوښې تنظیم کړئ او مدیریت یې کړئ';

  @override
  String get mangaDescription => 'خپل د مانګا تجربه تنظیم کړئ او اداره یې کړئ';

  @override
  String get about => 'په اړه';

  @override
  String get aboutDescription =>
      'د اپلیکیشن او د دې جوړونکو په اړه نور معلومات ترلاسه کړئ';

  @override
  String get notifications => 'خبرتیاوې';

  @override
  String get notificationsDescription =>
      'تاسو څنګه او کله خبرتیاوې ترلاسه کوئ تنظیم کړئ';

  @override
  String get offlineMode => 'بې انټرنیټ حالت';

  @override
  String get offlineModeDescription => 'اپلیکیشن د انټرنیټ پرته وکاروئ';

  @override
  String get incognitoMode => 'پټ حالت';

  @override
  String get incognitoModeDescription =>
      'بې له دې چې ستاسو فعالیت خوندي شي، لټون وکړئ';

  @override
  String get hidePrivate => 'پټ معلومات پټ کړئ';

  @override
  String get hidePrivateDescription =>
      'سریال‌های خصوصی را از صفحه اصلی پنهان کن.';

  @override
  String get hiddenMedia => 'رسانه‌های پنهان شده';

  @override
  String get noHiddenMediaFound => 'رسانه‌ی پنهانی پیدا نشد';

  @override
  String get playerSettingsTitle => 'د پلیر تنظیمات';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'سرعت';

  @override
  String get speedDescription => 'د پلیر لپاره ډیفالټ سرعت';

  @override
  String get cursedSpeed => 'بد قسمت سرعت';

  @override
  String get cursedSpeedDescription =>
      'د هغو کسانو لپاره چې په ژوند کې ډېر بوخت دي';

  @override
  String get resizeMode => 'د اندازې بدلولو حالت';

  @override
  String get resizeModeDescription =>
      'د پلیر لپاره د اندازې بدلولو ډیفالټ حالت';

  @override
  String get skipButton => 'د پریښودو تڼۍ';

  @override
  String get skipButtonDescription => 'د پریښودو تڼۍ موده';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'فرعي عنوانونه';

  @override
  String get showSubtitles => 'فرعي عنوان ښکاره کړئ';

  @override
  String get showSubtitlesDescription => 'فرعي عنوان په ډیفالټ ډول ښکاره کړئ';

  @override
  String get subtitlePreview => 'د فرعي عنوان بیاکتنه';

  @override
  String get fontColor => 'د فونټ رنګ';

  @override
  String get fontColorDescription => 'د فرعي عنوان فونټ رنګ';

  @override
  String get fontFamily => 'د فونټ کورنۍ';

  @override
  String get fontFamilyDescription => 'د فرعي عنوان فونټ کورنۍ';

  @override
  String get fontSize => 'د فونټ اندازه';

  @override
  String get fontSizeDescription => 'د فرعي عنوان د فونټ اندازه';

  @override
  String get fontWeight => 'د فونټ وزن';

  @override
  String get fontWeightDescription => 'د فرعي عنوان د فونټ وزن';

  @override
  String get backgroundColor => 'د شاګرد رنګ';

  @override
  String get backgroundColorDescription => 'د فرعي عنوان د شاګرد رنګ';

  @override
  String get outlineColor => 'د کرښې رنګ';

  @override
  String get outlineColorDescription => 'د فرعي عنوان د کرښې رنګ';

  @override
  String get bottomPadding => 'لاندې واټن';

  @override
  String get bottomPaddingDescription => 'د فرعي عنوان لاندې واټن';

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
  String get theme => 'موضوع';

  @override
  String get themeDescription => 'د اپلیکیشن بڼه او حس تنظیم کړئ';

  @override
  String get darkMode => 'تیاره حالت';

  @override
  String get enableDarkMode => 'تیاره حالت فعال کړئ';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'خپل د وال پیپر په څېر رنګ وکاروئ';

  @override
  String get customTheme => 'ګمرکي موضوع';

  @override
  String get customThemeDescription => 'د موضوع لپاره خپل رنګ وکاروئ';

  @override
  String get oledThemeVariant => 'د OLED موضوع ډول';

  @override
  String get oledThemeVariantDescription => 'د OLED حالت فعال کړئ';

  @override
  String get colorPicker => 'رنګ غوره کول';

  @override
  String get pickColor => 'یک رنگ انتخاب کنید';

  @override
  String get colorPickerDescription => 'رنګ وټاکئ';

  @override
  String get colorPickerDefault => 'ډیفالټ';

  @override
  String get colorPickerCustom => 'ګمرکي';

  @override
  String get customPath => 'دودیزه لاره';

  @override
  String get customPathDescription =>
      'د فایلونو خوندي کولو لپاره دودیز لاره تنظیم کړئ\nد لرې کولو لپاره اوږد فشار ورکړئ';

  @override
  String get selectDirectory => 'لارښود غوره کړئ';

  @override
  String get selectMediaService => 'د رسنیو خدمت غوره کړئ';

  @override
  String get logFile => 'لاګ فایل';

  @override
  String get logFileDescription => 'د لاګ فایل شریک کړئ';

  @override
  String get restoreSettings => 'تنظیمات بېرته راولي';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ویب لید';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'غواړئ د Dartotsu ساتونکي ملاتړ وکړئ؟\nمرسته وکړئ';

  @override
  String get donationGoal => 'اوسمهال د کومې مرستې موخه نشته';

  @override
  String get options => 'گزینه‌ها';

  @override
  String get ok => 'سم';

  @override
  String get cancel => 'لغوه';

  @override
  String get yes => 'هو';

  @override
  String get no => 'نه';
}
