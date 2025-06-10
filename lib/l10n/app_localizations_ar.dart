// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'أفضل تطبيق جديد\nلتتبع الأنمي والمانجا';

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
  String get login => 'تسجيل الدخول';

  @override
  String loginTo(String service) {
    return 'سجل الدخول الي $service';
  }

  @override
  String logout(String type) {
    return 'تسجيل الخروج من $type';
  }

  @override
  String get confirmLogout => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get anime => 'الانمي';

  @override
  String get manga => 'المانجا';

  @override
  String get manhwa => 'المانهوا';

  @override
  String get manhua => 'المانهوا (صينية)';

  @override
  String get novel => 'رواية(نوڤل)';

  @override
  String get ln => 'رواية خفيفة';

  @override
  String get home => 'الرئيسية';

  @override
  String get search => 'البحث';

  @override
  String get calendar => 'التقويم';

  @override
  String get settings => 'الإعدادات';

  @override
  String get watch => 'المشاهدة';

  @override
  String get read => 'يقرأ';

  @override
  String get info => 'المعلومات';

  @override
  String get comments => 'التعليقات';

  @override
  String get addToList => 'الاضافة الي القائمة';

  @override
  String get series => 'سلسلة';

  @override
  String get season => 'موسم';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'حلقات',
      one: 'حلقة',
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
      other: 'مجلدات',
      one: 'مجلد',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'افلام',
      one: 'فيلم',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'الحلقات';

  @override
  String get totalChapters => 'الفصول';

  @override
  String get genres => 'الأنواع';

  @override
  String get scanlators => 'المترجمين';

  @override
  String list(String type) {
    return 'قائمة $type';
  }

  @override
  String get watching => 'جاري المشاهدة';

  @override
  String get reading => 'قراءة';

  @override
  String get readStatus => 'يقرأ';

  @override
  String get watchStatus => 'تم مشاهدته';

  @override
  String planned(String type) {
    return '$type المخطط لها';
  }

  @override
  String onHold(String type) {
    return 'ال$type المتوقفة';
  }

  @override
  String get droppedAnime => 'الانميات المتروكة';

  @override
  String get droppedManga => 'المانجا المتروكة';

  @override
  String noDropped(String type) {
    return 'انت لم تترك أي $type بعد.';
  }

  @override
  String get continueReading => 'تابع القراءة';

  @override
  String get continueWatching => 'تابع المشاهدة';

  @override
  String browse(String type) {
    return 'تصفح $type';
  }

  @override
  String trending(String type) {
    return '$type الشائعة';
  }

  @override
  String popular(String type) {
    return '$type مشهورة';
  }

  @override
  String get topAiring => 'افضل الانميات الجارية';

  @override
  String topRated(String type) {
    return 'اعلي $type تقييما';
  }

  @override
  String mostFavourite(String type) {
    return 'اكثر $type تفضيلا';
  }

  @override
  String get thisSeason => 'هذا الموسم';

  @override
  String get nextSeason => 'الموسم القادم';

  @override
  String get previousSeason => 'الموسم السابق';

  @override
  String get recommended => 'الموصي به';

  @override
  String get recommendationsEmptyMessage =>
      'شاهد/اقرأ بعض الأنمي أو المانجا للحصول على توصيات';

  @override
  String get recentUpdates => 'التحديثات الأخيرة';

  @override
  String get allCaughtUpNew => 'كل شيء عالق، ما هو جديد؟?';

  @override
  String favorite(String type) {
    return '$type المفضلة';
  }

  @override
  String get favorites => 'المفضلة';

  @override
  String get noFavourites =>
      'يبدو أنك لا تحب شيئا،\nحاول الإعجاب بالعرض للاحتفاظ به هنا.';

  @override
  String get noOnHold => 'إنت لم توقف أي شئ حتي الآن.';

  @override
  String manageLayout(String service, String page) {
    return 'تعديل شكل خدمة $service علي صفحة $page';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'يمكنك تغيير شكل صفحة $page عن طريق سحب العناصر وإفلاتها';
  }

  @override
  String get gridView => 'وضع الشبكة';

  @override
  String get listView => 'وضع القائمة';

  @override
  String get compactView => 'وضع مضغوط';

  @override
  String get layout => 'تَخطِيط';

  @override
  String get sort => 'ترتيب';

  @override
  String get utd => 'من الأعلي الي الأسفل';

  @override
  String get dtu => 'من الاسفل للأعلي';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'حلقات تم مشاهدتها';

  @override
  String get chapterRead => 'فصول تم مشاهدتها';

  @override
  String get outOf => 'من';

  @override
  String get totalOf => 'من اجمالي';

  @override
  String get selected => 'مختارة';

  @override
  String get found => 'وجد';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'امتدادات',
      one: 'امتداد',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type المتاحة';
  }

  @override
  String installed(String type) {
    return '$type المثبتة';
  }

  @override
  String get extensionsDescription =>
      'تثبيت وإدارة الإضافات لإضافة وظائف إضافية';

  @override
  String get addAnimeRepo => 'إضافة مستودع الأنمي';

  @override
  String get addAnimeRepoDesc => 'أضف مستودعات الأنمي من مصادر مختلفة';

  @override
  String get addMangaRepo => 'إضافة مستودع المانجا';

  @override
  String get addMangaRepoDesc => 'إضافة مستودع الأنمي من مصادر مختلفة';

  @override
  String get addNovelRepo => 'إضافة مستودع جديد';

  @override
  String get addNovelRepoDesc => 'إضافة مستودع جديد من مصادر مختلفة';

  @override
  String get loadExtensionsIcon => 'حمل ايقونات الامتدادات';

  @override
  String get loadExtensionsIconDesc => 'تعطيل إذا كانت صفحة الامتدادات تتأخر';

  @override
  String get autoUpdate => 'التحديث التلقائي';

  @override
  String get autoUpdateDesc => 'التحديث التلقائي للامتدادات';

  @override
  String get installSourceToStart => 'قم بتثبيت مصدر من صفحة الامتدادات';

  @override
  String get author => 'المؤلف';

  @override
  String get averageDuration => 'متوسط مدة المشاهدة';

  @override
  String get characters => 'الشخصيات';

  @override
  String get description => 'ملخص';

  @override
  String get synopsis => 'ملخص';

  @override
  String get endDate => 'تاريخ النهاية';

  @override
  String get format => 'الشكل';

  @override
  String get meanScore => 'متوسط التقييمات';

  @override
  String get name => 'الاسم';

  @override
  String get nameRomaji => 'الاسم (رومانچي)';

  @override
  String get popularity => 'الشعبية';

  @override
  String get relations => 'ذات صلة';

  @override
  String get prequel => 'السابق';

  @override
  String get sequel => 'التالي';

  @override
  String get source => 'المصدر';

  @override
  String get staff => 'طاقم عمل';

  @override
  String get startDate => 'تاريخ البدء';

  @override
  String get status => 'الحالة';

  @override
  String get studio => 'الاستوديو';

  @override
  String get synonyms => 'اسماء أخري';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'الاجمالي';

  @override
  String get collapseText => 'اظهر اقل';

  @override
  String get expandText => 'اظهر المزيد';

  @override
  String get comingSoon => 'قريباً';

  @override
  String get wrongTitle => 'عنوان خاطئ؟';

  @override
  String get youTube => 'تشغيل ڤيديو اليوتيوب ؟';

  @override
  String get mediaNotFound => 'لم يتم العثور علي وسائط';

  @override
  String get noChapterFound => 'لا يوجد فصول';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'أنشطة',
      one: 'نشاط',
    );
    return '$_temp0';
  }

  @override
  String get language => 'اللغة';

  @override
  String get account => 'الحساب';

  @override
  String get accountDescription =>
      'إدارة حسابات AniList و MAL و Discord بكل سهولة';

  @override
  String get common => 'عام';

  @override
  String get commonDescription =>
      'الوصول إلى الإعدادات العامة لاستخدام التطبيق بسلاسة';

  @override
  String get animeDescription => 'تخصيص وإدارة تفضيلات الانمي الخاصة بك';

  @override
  String get mangaDescription => 'تنظيم وتخصيص تجربتك مع المانجا';

  @override
  String get about => 'حول';

  @override
  String get aboutDescription => 'تعرف أكثر عن التطبيق والمطورين';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get notificationsDescription => 'تخصيص كيفية و وقت تلقي الإشعارات';

  @override
  String get offlineMode => 'وضع عدم الاتصال';

  @override
  String get offlineModeDescription => 'استخدام التطبيق بدون اتصال بالإنترنت';

  @override
  String get incognitoMode => 'وضع التصفح الخفي';

  @override
  String get incognitoModeDescription => 'تصفح دون حفظ نشاطك (يا خبيث)';

  @override
  String get hidePrivate => 'إخفاء المحتوى الخاص';

  @override
  String get hidePrivateDescription =>
      'إخفاء المحتوى الخاص من الصفحة الرئيسية.';

  @override
  String get hiddenMedia => 'المحتوي المخفي';

  @override
  String get noHiddenMediaFound => 'لا يوجد محتوي مخفي';

  @override
  String get playerSettingsTitle => 'إعدادات مشغل الفيديو';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'السرعة';

  @override
  String get speedDescription => 'السرعة الافتراضية مشغل الفيديو';

  @override
  String get cursedSpeed => 'سرعة ملبوسه';

  @override
  String get cursedSpeedDescription => 'للأشخاص الذين لا يملكون وقتاً كافياً';

  @override
  String get resizeMode => 'وضع تغيير الحجم';

  @override
  String get resizeModeDescription => 'وضع الحجم الافتراضي لمشغل الفيديو';

  @override
  String get skipButton => 'زر التجاوز';

  @override
  String get skipButtonDescription => 'مدة زر التجاوز';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'الترجمة';

  @override
  String get showSubtitles => 'عرض الترجمة';

  @override
  String get showSubtitlesDescription => 'عرض الترجمة بشكل افتراضي';

  @override
  String get subtitlePreview => 'معاينة الترجمة';

  @override
  String get fontColor => 'لون الخط';

  @override
  String get fontColorDescription => 'لون خط الترجمة';

  @override
  String get fontFamily => 'نوع الخط';

  @override
  String get fontFamilyDescription => 'نوع خط الترجمة';

  @override
  String get fontSize => 'حجم الخط';

  @override
  String get fontSizeDescription => 'حجم خط الترجمة';

  @override
  String get fontWeight => 'وزن الخط';

  @override
  String get fontWeightDescription => 'وزن خط الترجمة';

  @override
  String get backgroundColor => 'لون الخلفية';

  @override
  String get backgroundColorDescription => 'لون خلفية الترجمة';

  @override
  String get outlineColor => 'لون الإطار';

  @override
  String get outlineColorDescription => 'لون إطار الترجمة';

  @override
  String get bottomPadding => 'مسافة التوسيع السفلى';

  @override
  String get bottomPaddingDescription => 'مسافة التوسيع السفلى للترجمة';

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
  String get theme => 'الثيم';

  @override
  String get themeDescription => 'تخصيص مظهر التطبيق';

  @override
  String get darkMode => 'الوضع المظلم';

  @override
  String get enableDarkMode => 'تفعيل الوضع المظلم';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'استخدم نفس اللون خلفية الشاشة';

  @override
  String get customTheme => 'ثيم مخصص';

  @override
  String get customThemeDescription => 'استخدم لونك الخاص للثيم';

  @override
  String get oledThemeVariant => 'نسخة OLED من الثيم';

  @override
  String get oledThemeVariantDescription => 'تفعيل وضع OLED';

  @override
  String get colorPicker => 'اختيار اللون';

  @override
  String get pickColor => 'اختر لون';

  @override
  String get colorPickerDescription => 'اختر لوناً';

  @override
  String get colorPickerDefault => 'الافتراضي';

  @override
  String get colorPickerCustom => 'مُخصص';

  @override
  String get customPath => 'مسار التنزيل';

  @override
  String get customPathDescription =>
      'وضع مسار لتنزيل الملفات\nاضغط ضغطة طويلة لإزالته';

  @override
  String get selectDirectory => 'اختر مسار';

  @override
  String get selectMediaService => 'اختر مزود الوسائط';

  @override
  String get logFile => 'ملف السجل';

  @override
  String get logFileDescription => 'مشاركة ملف السجل';

  @override
  String get restoreSettings => 'استعادة الإعدادات الافتراضية';

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
      'هل تريد دعم القائم على مطور Dartotsu؟\nفكر في التبرع';

  @override
  String get donationGoal => 'لا يوجد هدف للتبرعات حالياً';

  @override
  String get options => 'اختيارات';

  @override
  String get ok => 'موافق';

  @override
  String get cancel => 'إلغاء';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';
}
