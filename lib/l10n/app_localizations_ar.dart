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
  String get appTagline => 'أفضل تطبيق جديد\nلتتبّع الأنمي والمانجا';

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
  String get loadMore => 'تحميل المزيد';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get continueAsGuest => 'تابع كضيف';

  @override
  String get getStarted => 'يلا نبدأ';

  @override
  String get loginWithToken => 'سجّل الدخول بالتوكن';

  @override
  String get pasteTokenHint => 'الصق توكن الوصول';

  @override
  String loginTo(String service) {
    return 'سجّل الدخول إلى $service';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get account => 'الحساب';

  @override
  String get about => 'حول';

  @override
  String get language => 'اللغة';

  @override
  String get animationSpeed => 'الحركات';

  @override
  String get animationSpeedDesc => 'سرعة الانتقالات وتأثيرات الظهور في التطبيق';

  @override
  String get animationSpeedOff => 'إيقاف';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'إضافة',
      few: 'إضافات',
      two: 'إضافتان',
      one: 'إضافة',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'مصدر غير معروف';

  @override
  String get install => 'تثبيت';

  @override
  String get update => 'تحديث';

  @override
  String get uninstall => 'إلغاء التثبيت';

  @override
  String get updateInstallCancelled =>
      'تم إلغاء التثبيت. إذا قال أندرويد إن التطبيق يتعارض مع النسخة المثبّتة فالتوقيع مختلف: احذف النسخة الحالية أولاً ثم ثبّت التحديث';

  @override
  String updateInstallFailed(String error) {
    return 'فشل التحديث: $error';
  }

  @override
  String get appLock => 'قفل التطبيق';

  @override
  String get appLockDesc =>
      'اطلب رمز PIN عند فتح التطبيق أو الرجوع إليه بعد فترة';

  @override
  String get appLockBiometric => 'فتح مع القياسات الحيوية';

  @override
  String get appLockBiometricDesc =>
      'استخدم بصمة إصبعك أو وجهك بدلاً من كتابة رمز المرور';

  @override
  String get appLockBiometricReason => 'فتح دارتوتسو';

  @override
  String get appLockDelay => 'قفل عندما يكون خاملا';

  @override
  String get appLockDelayAlways => 'دائما';

  @override
  String get appLockDelayNever => 'أبدا';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقيقة',
      one: '1 دقيقة',
    );
    return 'بعد $_temp0';
  }

  @override
  String get appLockUseBiometric => 'استخدم القياسات الحيوية';

  @override
  String get appLockUnlock => 'اكتب رمز PIN';

  @override
  String get appLockWrong => 'رمز PIN غلط';

  @override
  String appLockWait(String seconds) {
    return 'محاولات كثيرة، انتظر $seconds ثانية';
  }

  @override
  String get appLockNew => 'اختر رمز PIN';

  @override
  String get appLockNewHint => 'من 4 إلى 8 أرقام';

  @override
  String get appLockConfirm => 'اكتبه مرة ثانية';

  @override
  String get appLockMismatch => 'الرمزان غير متطابقين';

  @override
  String get appLockOn => 'تم تعيين رمز PIN';

  @override
  String get appLockRemoveTitle => 'اكتب رمز PIN لإيقاف القفل';

  @override
  String get installFailed => 'فشل التثبيت';

  @override
  String get updateFailed => 'فشل التحديث';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count التحديثات متاحة',
      one: '1 تحديث متاح',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'تحديث الكل';

  @override
  String extensionsUpdated(int done, int total) {
    return 'تم تحديث $done من ملحقات $total';
  }

  @override
  String get updateConflictTitle => 'التحديث غير مثبت';

  @override
  String updateConflictBody(String names) {
    return 'تعذر تثبيت $names على الإصدار الحالي. وهذا يعني عادةً أن النسخة المثبتة تم توقيعها بشكل مختلف. إلغاء تثبيته وتثبيت الإصدار الجديد؟';
  }

  @override
  String get updateConflictAction => 'إلغاء التثبيت وإعادة التثبيت';

  @override
  String get noSourceSettings => 'هذا المصدر ما عنده أي إعدادات';

  @override
  String get addPluginRepository => 'إضافة مستودع إضافات';

  @override
  String get pluginIndexUrlHint => 'رابط فهرس الإضافات';

  @override
  String get addRepository => 'إضافة مستودع';

  @override
  String get importRepositoryFile => 'استيراد ملف';

  @override
  String get pluginRepoUpdated => 'تم تحديث مستودع الإضافات';

  @override
  String get pluginRepoUpdateFailed => 'فشل تحديث مستودع الإضافات';

  @override
  String get ok => 'حسنًا';

  @override
  String get cancel => 'إلغاء';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get save => 'حفظ';

  @override
  String get reset => 'إعادة ضبط';

  @override
  String get clear => 'مسح';

  @override
  String get test => 'اختبار';

  @override
  String get testing => 'جارٍ الاختبار…';

  @override
  String get resolving => 'جارٍ التحليل…';

  @override
  String get none => 'لا شيء';

  @override
  String get selectMediaService => 'اختر خدمة الوسائط';

  @override
  String get manageServices => 'خدمات إعلامية';

  @override
  String get manageServicesDesc =>
      'أعد ترتيب الخدمات واختر الخدمات التي تظهر في المنتقي';

  @override
  String get manageServicesHint =>
      'اسحب لإعادة الترتيب، وقم بإيقاف تشغيل العناصر التي لا تستخدمها';

  @override
  String get pickColor => 'اختر لونًا';

  @override
  String get colorPickerCustom => 'مخصص';

  @override
  String get colorPickerTransparent => 'شفاف';

  @override
  String get ltr => 'من اليسار إلى اليمين';

  @override
  String get searchSettings => 'ابحث في الإعدادات';

  @override
  String nothingMatches(String query) {
    return 'ما في نتائج لـ \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'ابحث في $category';
  }

  @override
  String get settingsAppearance => 'المظهر';

  @override
  String get settingsAppearanceDesc => 'السمة والألوان ووضع الزجاج';

  @override
  String get settingsGeneral => 'عام';

  @override
  String get settingsGeneralDesc => 'اللغة وطريقة العمل';

  @override
  String get settingsNetwork => 'الشبكة';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'خدمة التتبّع وتسجيل الدخول';

  @override
  String get settingsUpdates => 'التحديثات';

  @override
  String get amoledBlack => 'أسود AMOLED';

  @override
  String get amoledBlackDesc => 'أسطح سوداء تمامًا في الوضع الداكن';

  @override
  String get glassMode => 'وضع الزجاج';

  @override
  String get glassModeDesc => 'أسطح ضبابية فوق صور مكتبتك';

  @override
  String get shelfFrame => 'إطار حول الأقسام';

  @override
  String get shelfFrameDesc =>
      'اعرض بطاقة خلف كل قسم، أو خلّ الصفوف مباشرة على الصفحة';

  @override
  String get settingsExtensionsDesc =>
      'مديرو المصادر والمستودعات وخيارات الإضافات';

  @override
  String get settingsAddons => 'الإضافات الجانبية';

  @override
  String get customPath => 'مسار تخزين مخصص';

  @override
  String get stories => 'قصص';

  @override
  String get watchOrder => 'مشاهدة النظام';

  @override
  String get watchOrderOpenSite => 'مفتوح على موقع شياكي';

  @override
  String get watchOrderUnavailable =>
      'لم يتم العثور على طلب مراقبة لهذا العنوان';

  @override
  String get watchOrderOpenFailed => 'تعذر فتح هذا العنوان';

  @override
  String get watchOrderCurrent => 'أنت هنا';

  @override
  String get watchOrderCredit => 'مشاهدة الطلبات عن طريق موقع chiaki';

  @override
  String get customPathDesc =>
      'مكان حفظ بيانات التطبيق. اضغط مطولًا لإعادة الضبط';

  @override
  String get selectDirectory => 'اختر مجلدًا';

  @override
  String get differentCacheManager => 'ذاكرة صور بديلة';

  @override
  String get differentCacheManagerDesc => 'استخدم مدير ذاكرة مؤقتة مختلف للصور';

  @override
  String get settingsSync => 'إعدادات المزامنة';

  @override
  String get settingsSyncDesc =>
      'حافظ على إعداداتك كما هي على كل جهاز. يتم تخزينها في Gist خاص في حساب GitHub الخاص بك';

  @override
  String get settingsSyncSwitch => 'المزامنة عند التغيير';

  @override
  String get settingsSyncModeGithub => 'جيثب';

  @override
  String get settingsSyncSignIn => 'قم بتسجيل الدخول باستخدام جيثب';

  @override
  String get settingsSyncToken => 'استخدم رمز الوصول الشخصي';

  @override
  String get settingsSyncTokenDesc =>
      'قم بإنشاء واحد على github.com/settings/tokens بإذن Gist فقط';

  @override
  String get settingsSyncTokenField => 'رمز مميز';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'تم تسجيل الدخول كـ $user';
  }

  @override
  String get settingsSyncSignOut => 'تسجيل الخروج';

  @override
  String get settingsSyncSignInFailed => 'تعذر تسجيل الدخول إلى GitHub';

  @override
  String get dcSampleWatching => 'مشاهدة';

  @override
  String get dcSampleReading => 'القراءة';

  @override
  String get dcSampleBrowsing => 'التصفح';

  @override
  String get dcSampleLive => 'الآن';

  @override
  String get dcLiveNothing =>
      'لا شيء يظهر الآن. افتح عنوانًا، وابدأ حلقة أو فصلًا وسيظهر هنا.';

  @override
  String get dcMemberList => 'في قائمة الأعضاء';

  @override
  String get dcSignOut => 'تسجيل الخروج';

  @override
  String get dcConnect => 'ربط الخلاف';

  @override
  String get dcConnectDesc =>
      'يفتح صفحة ترخيص Discord ويضيف Dartotsu ضمن التطبيقات المعتمدة. يطلب Discord تحديث حضورك. يتم حفظ رمز التحديث فقط، وليس الرمز المميز لحسابك.';

  @override
  String get dcConnectFailed => 'تعذر الاتصال بالديسكورد';

  @override
  String get dcConnectedSnack => 'الخلاف متصل';

  @override
  String get dcDisconnect => 'قطع الاتصال';

  @override
  String get dcDisconnectedSnack => 'تم قطع الخلاف';

  @override
  String get dcUseToken => 'استخدم رمزًا مميزًا بدلاً من ذلك';

  @override
  String get dcRouteDesktop => 'من خلال تطبيق Discord لسطح المكتب';

  @override
  String get dcRouteHeadless => 'من خلال حسابك';

  @override
  String get dcRouteGateway => 'من خلال حسابك، لايف';

  @override
  String get dcRouteLinked => 'التطبيق متصل';

  @override
  String get dcRouteNone => 'غير متصل';

  @override
  String get dcStatusNeedsToken =>
      'يحتاج إلى رمز الخلاف. لا يؤدي توصيل التطبيق إلى ضبط حالتك على الإنترنت.';

  @override
  String get dcAccountOnly => 'يحتاج إلى حساب مسجل الدخول';

  @override
  String get dcStatusSection => 'الحالة';

  @override
  String get dcControlStatus => 'السيطرة على حالتي';

  @override
  String get dcControlStatusDesc =>
      'يحافظ على اتصال مباشر بـ Discord أثناء تشغيل Rich Presence، حتى يتمكن Dartotsu من ضبط حالتك.';

  @override
  String get dcStatusOnline => 'على الانترنت';

  @override
  String get dcStatusIdle => 'خامل';

  @override
  String get dcStatusDnd => 'لا تزعج';

  @override
  String get dcStatusInvisible => 'غير مرئية';

  @override
  String get dcCustomStatus => 'الحالة المخصصة';

  @override
  String get dcCustomStatusHint => 'ما الذي تنوي فعله؟';

  @override
  String get dcActivitySection => 'النشاط';

  @override
  String get dcShowWatching => 'عرض أثناء المشاهدة';

  @override
  String get dcShowReading => 'تظهر أثناء القراءة';

  @override
  String get dcListening => 'الاستماع';

  @override
  String get dcCompeting => 'المنافسة';

  @override
  String get dcActivityName => 'اسم النشاط';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'العنوان';

  @override
  String get dcNameCustom => 'مخصص';

  @override
  String get dcCustomNameHint => 'الاسم الموضح بعد \"المشاهدة\"';

  @override
  String get dcStatusText => 'نص الحالة';

  @override
  String get dcStatusTextDesc => 'ما تظهره قائمة الأعضاء بجوار اسمك';

  @override
  String get dcDisplayName => 'الاسم';

  @override
  String get dcDisplayState => 'الدولة';

  @override
  String get dcDisplayDetails => 'التفاصيل';

  @override
  String get dcTextSection => 'نص';

  @override
  String get dcDetails => 'الخط العلوي';

  @override
  String get dcState => 'خلاصة القول';

  @override
  String get dcTemplateHint => 'فارغ يستخدم الافتراضي';

  @override
  String get dcVariables => 'انقر لإدراج قيمة';

  @override
  String get dcImagesSection => 'الصور';

  @override
  String get dcLargeImage => 'صورة كبيرة';

  @override
  String get dcLargeAuto => 'تلقائي';

  @override
  String get dcLargeCover => 'الغلاف';

  @override
  String get dcLargeLogo => 'الشعار';

  @override
  String get dcSmallImage => 'صورة صغيرة';

  @override
  String get dcSmallAuto => 'الشعار';

  @override
  String get dcSmallNone => 'لا شيء';

  @override
  String get dcTimerStyle => 'نمط الموقت';

  @override
  String get dcTimerAuto => 'تلقائي';

  @override
  String get dcTimerElapsed => 'انقضى';

  @override
  String get dcTimerRemaining => 'المتبقي';

  @override
  String get dcButtonsSection => 'الأزرار';

  @override
  String get dcButtonMedia => 'رابط إلى العنوان';

  @override
  String get dcButtonApp => 'رابط إلى دارتوتسو';

  @override
  String get dcButtonCustom => 'زر مخصص';

  @override
  String get dcButtonLabel => 'التسمية';

  @override
  String get dcButtonUrl => 'رابط';

  @override
  String get dcPrivacySection => 'الخصوصية';

  @override
  String get dcPrivateText => 'نص خاص';

  @override
  String get dcPrivateHint => 'شيء خاص';

  @override
  String get dcTokenWarning =>
      'يستخدم تسجيل الدخول الرمز المميز لحسابك. قواعد Discord لا تشجع على ذلك، لذا استخدمها على مسؤوليتك الخاصة.';

  @override
  String get dcConnected => 'متصل';

  @override
  String get dcConnection => 'اتصال';

  @override
  String get dcMethodDesktop => 'تطبيق ديسكورد لسطح المكتب';

  @override
  String get dcMethodDesktopDesc =>
      'يُستخدم تلقائيًا عند عدم توصيل أي شيء آخر. يجب أن يكون Discord مفتوحًا على هذا الكمبيوتر.';

  @override
  String get dcMethodToken => 'رمز الحساب';

  @override
  String get dcInUse => 'قيد الاستخدام';

  @override
  String get dcRecommended => 'موصى به';

  @override
  String dcSignedInAs(String name) {
    return 'تم تسجيل الدخول كـ $name';
  }

  @override
  String get settingsSyncOn => 'على';

  @override
  String get settingsSyncCustom => 'مخصص';

  @override
  String get settingsSyncChangedHeader => 'الإعدادات المتغيرة';

  @override
  String get settingsSyncNoneChanged =>
      'لم تقم بتغيير أي من هذه العناصر بعد، لذا لا يوجد شيء لمزامنته.';

  @override
  String get settingsSyncChangedOnly =>
      'يتم تخزين الإعدادات التي قمت بتغييرها فقط. كل شيء آخر يستخدم إعداداته الافتراضية على كل جهاز. تُظهر أيقونة السحابة ما هو موجود بالفعل على الخادم.';

  @override
  String get settingsSyncOffCategory =>
      'لا مزامنة. تبقى هذه على هذا الجهاز ويتم ترك نسخة الخادم كما هي.';

  @override
  String get settingsSyncPartsNote =>
      'لكل جهاز. يحتفظ إيقاف التشغيل بالقيمة الخاصة لكل جهاز، لذلك يمكن أن يختلف الهاتف والتلفزيون.';

  @override
  String get settingsSyncPartSubtitles => 'حجم الترجمة والألوان';

  @override
  String get settingsSyncPartSubtitlesDesc => 'الحجم والوزن والألوان والموقع';

  @override
  String get settingsSyncPartPictureColors => 'ألوان الصورة';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'السطوع والتباين والتشبع وغاما وهوى وHDR';

  @override
  String get settingsSyncPartPalette => 'ألوان الموضوع';

  @override
  String get settingsSyncPartPaletteDesc =>
      'السمة ولون التمييز وشاشة OLED باللون الأسود';

  @override
  String get settingsSyncCatOther => 'مشاهدة وقراءة والخدمات';

  @override
  String get settingsSyncTitles => 'مشاهدة التقدم والعناوين';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records العناوين و$resume إدخالات السيرة الذاتية على الخادم';
  }

  @override
  String get settingsSyncTitlesNone => 'لم يتم تحميل أي شيء حتى الآن';

  @override
  String get settingsSyncTitlesNote =>
      'شاهد واقرأ المواضع ورف السيرة الذاتية وقوائمك المحلية والإشارات المرجعية والإبرازات والخيارات لكل عنوان. تبقى مطابقات المصدر وعمليات البث على كل جهاز لأنها تعتمد على ملحقاتك. يتم تحميل العناوين كل 45 ثانية على الأكثر.';

  @override
  String get settingsSyncConnect => 'غير متصل';

  @override
  String get settingsSyncConnectDesc =>
      'قم بتسجيل الدخول باستخدام GitHub للحفاظ على إعداداتك كما هي على كل جهاز.';

  @override
  String get settingsSyncFailedTitle => 'فشلت المزامنة';

  @override
  String get settingsSyncPaused => 'متوقف مؤقتًا';

  @override
  String get settingsSyncPausedDesc =>
      'لا يتم تحميل أي شيء أو تنزيله أثناء إيقاف تشغيله.';

  @override
  String get settingsSyncUpToDate => 'حتى الآن';

  @override
  String get settingsSyncRetry => 'أعد المحاولة';

  @override
  String get settingsSyncAccount => 'حساب جيثب';

  @override
  String get settingsSyncAccountDesc =>
      'تذهب بياناتك إلى Gist خاص في حسابك الخاص.';

  @override
  String get settingsSyncWaiting => 'في انتظار موافقتك على GitHub';

  @override
  String get settingsSyncCopyCode => 'اضغط على الرمز لنسخه';

  @override
  String get settingsSyncCancel => 'إلغاء';

  @override
  String get settingsSyncStatSettings => 'الإعدادات';

  @override
  String get settingsSyncStatTitles => 'العناوين';

  @override
  String get settingsSyncStatShelf => 'استئناف';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'تم الرفع $time من $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تم تغيير $count',
      one: '1 تغير',
      zero: 'لم يتغير شيء بعد',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'الحسابات وكلمات المرور';

  @override
  String get settingsSyncSecretsDesc =>
      'مزامنة تسجيلات الدخول الخاصة بك (AniList، MAL، Kitsu، Simkl، MangaBaka، MangaUpdates)، ومفاتيح API وقفل التطبيق بين أجهزتك. ويتم تشفيرها باستخدام عبارة مرور تبقى على أجهزتك، لذا لا يراها GitHub أبدًا.';

  @override
  String get settingsSyncSecretsOn => 'تتم مزامنة الحسابات وتشفيرها';

  @override
  String get settingsSyncSecretsOnDesc =>
      'تسجيل الخروج على أحد الأجهزة لا يؤدي إلى تسجيل خروجك على الأجهزة الأخرى.';

  @override
  String get settingsSyncSecretsBroken =>
      'لم تعد عبارة المرور تتطابق مع تلك الموجودة على الخادم. أدخله مرة أخرى لمواصلة مزامنة الحسابات.';

  @override
  String get settingsSyncPassphraseSet => 'تعيين عبارة مرور';

  @override
  String get settingsSyncPassphraseEnter => 'أدخل عبارة المرور الخاصة بك';

  @override
  String get settingsSyncPassphraseField => 'عبارة المرور';

  @override
  String get settingsSyncPassphraseConfirm => 'كرر عبارة المرور';

  @override
  String get settingsSyncPassphraseNew =>
      'اختر عبارة مرور مكونة من 6 أحرف على الأقل. ولا يتم تخزينه في أي مكان سوى أجهزتك ولا يمكن استعادته. إذا نسيتها، احذف نسخة الخادم وابدأ من جديد.';

  @override
  String get settingsSyncPassphraseExisting =>
      'أدخل عبارة المرور التي اخترتها على جهازك الآخر. سيتم استبدال الحسابات الموجودة على هذا الجهاز بالحسابات التي تمت مزامنتها.';

  @override
  String get settingsSyncPassphraseWrong => 'عبارة مرور خاطئة';

  @override
  String get settingsSyncPassphraseMismatch => 'عبارات المرور غير متطابقة';

  @override
  String get settingsSyncPassphraseShort => 'استخدم 6 أحرف على الأقل';

  @override
  String get settingsSyncSecretsStop => 'إيقاف مزامنة الحسابات';

  @override
  String get settingsSyncSecretsDelete => 'حذف من جيثب';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'يؤدي هذا إلى إزالة ملف الحسابات المشفرة من جوهرك. تحتفظ الأجهزة الأخرى بتسجيلات الدخول الخاصة بها ويمكنها تعيين عبارة مرور جديدة.';

  @override
  String get settingsSyncWhat => 'ما للمزامنة';

  @override
  String get settingsSyncServerEmpty => 'لم يتم تحميل أي شيء حتى الآن';

  @override
  String get settingsSyncThisDevice => 'هذا الجهاز';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'إعدادات $count على الخادم',
      one: '1 الإعداد على الخادم',
      zero: 'لا شيء على الخادم',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'مزامنة الآن';

  @override
  String get settingsSyncRunning => 'جارٍ المزامنة…';

  @override
  String get settingsSyncNever => 'لم تتم المزامنة بعد';

  @override
  String settingsSyncLast(Object time) {
    return 'آخر مزامنة $time';
  }

  @override
  String get settingsSyncScope =>
      'تتم مزامنة الإعدادات التي تعمل بنفس الطريقة في كل مكان فقط. تظل الحسابات والرموز المميزة والمجلدات والإضافات والإشعارات والديسكورد والتحديثات وحجم النافذة على كل جهاز.';

  @override
  String get backupAndRestore => 'النسخ الاحتياطي والاستعادة';

  @override
  String get backupAndRestoreDesc => 'احفظ تفضيلاتك أو استرجعها';

  @override
  String get backup => 'نسخ احتياطي';

  @override
  String get restore => 'استعادة';

  @override
  String get loadExtensionsIcon => 'تحميل أيقونات الإضافات';

  @override
  String get autoUpdateRuntimes => 'قم بتحديث أوقات تشغيل الإضافة تلقائيًا';

  @override
  String get autoUpdateRuntimesDesc =>
      'قم بتنزيل إصدارات Aniyomi وCloudStream الجديدة وإصدارات وقت التشغيل الأخرى في الخلفية. عند إيقاف التشغيل، يظهر رمز التحديث بجوار المدير بدلاً من ذلك.';

  @override
  String get loadExtensionsIconDesc => 'اعرض أيقونات المصادر في قوائم الإضافات';

  @override
  String get sectionStorage => 'التخزين';

  @override
  String get sectionManagers => 'المديرون';

  @override
  String get sectionOptions => 'الخيارات';

  @override
  String get backupTabBackup => 'احفظ نسخة احتياطية';

  @override
  String get backupTabRestore => 'استعادة';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys إعدادات في $categories فئات';
  }

  @override
  String backupLastBackup(Object time) {
    return 'آخر نسخة احتياطية $time';
  }

  @override
  String get backupNever => 'ما في نسخة احتياطية لحد الآن';

  @override
  String get backupSelectAll => 'تحديد الكل';

  @override
  String get backupClearAll => 'مسح';

  @override
  String backupKeys(Object count) {
    return '$count إعدادات';
  }

  @override
  String get backupPasswordRequired => 'كلمة المرور (مطلوبة لبيانات الحساب)';

  @override
  String get backupProtectedNeedsPassword =>
      'قم بتعيين كلمة مرور لعمل نسخة احتياطية من بيانات الحساب، أو قم بإلغاء تحديدها';

  @override
  String get backupProtectedSkipped =>
      'لا تحتوي هذه النسخة الاحتياطية على كلمة مرور، لذلك تم تخطي بيانات الحساب الخاصة بها';

  @override
  String get backupPassword => 'كلمة المرور (اختيارية)';

  @override
  String get backupPasswordHint => 'اتركها فاضية لاستخدام الافتراضية';

  @override
  String get backupSensitive =>
      'تتضمن توكنات تسجيل الدخول. خلّ هذا الملف خاصًا';

  @override
  String get backupCreate => 'إنشاء نسخة احتياطية';

  @override
  String backupSaved(Object name) {
    return 'تم حفظ النسخة الاحتياطية في $name';
  }

  @override
  String backupFailed(Object error) {
    return 'فشل النسخ الاحتياطي: $error';
  }

  @override
  String get backupPickFile => 'اختر ملف نسخة احتياطية';

  @override
  String get backupPickFileDesc => 'اختر ملف .json أنشأه Dartotsu';

  @override
  String get backupChooseAnother => 'اختر ملفًا آخر';

  @override
  String get backupCreatedAt => 'تاريخ الإنشاء';

  @override
  String get backupAppVersion => 'إصدار التطبيق';

  @override
  String get backupDevice => 'الجهاز';

  @override
  String get backupAccounts => 'الحسابات';

  @override
  String get backupSize => 'الحجم';

  @override
  String get backupEncrypted => 'محمي بكلمة مرور';

  @override
  String get backupUnlock => 'فتح القفل';

  @override
  String get backupWrongPassword =>
      'ما قدرنا نقرأ هذا الملف. تأكد من كلمة المرور';

  @override
  String get backupRestoreSelected => 'استعادة المحدد';

  @override
  String backupRestoreConfirm(Object count) {
    return 'تستعيد $count إعدادات؟ القيم الحالية في هذه الفئات ستُستبدل.';
  }

  @override
  String get backupRestored => 'تمت الاستعادة. أعد تشغيل التطبيق لتطبيق كل شيء';

  @override
  String backupRestoreFailed(Object error) {
    return 'فشلت الاستعادة: $error';
  }

  @override
  String get backupSelectOne => 'اختر فئة واحدة على الأقل';

  @override
  String get backupCatTheme => 'المظهر';

  @override
  String get backupCatThemeDesc =>
      'السمة والألوان والزجاج والخطوط وشكل البطاقات';

  @override
  String get backupCatCommon => 'عام';

  @override
  String get backupCatCommonDesc => 'اللغة والتخزين والشبكة وخيارات الإضافات';

  @override
  String get backupCatPlayer => 'المشغّل';

  @override
  String get backupCatPlayerDesc => 'تفضيلات المشغّل';

  @override
  String get backupCatReader => 'القارئ';

  @override
  String get backupCatReaderDesc => 'تفضيلات القارئ';

  @override
  String get backupCatProtected => 'الحسابات';

  @override
  String get backupCatProtectedDesc => 'توكنات تسجيل الدخول وبيانات الدخول';

  @override
  String get backupCatOther => 'الخدمات والخلاصات';

  @override
  String get backupCatOtherDesc => 'تخطيطات الخلاصات والقوائم وخيارات الخدمات';

  @override
  String get logFile => 'ملف السجل';

  @override
  String get logFileDesc => 'شارك سجل التطبيق، أو انسخ مساره على لينكس';

  @override
  String get logDelete => 'حذف ملفات السجل';

  @override
  String get logDeleteDesc => 'امسح سجلات التطبيق المحفوظة لتحرير مساحة';

  @override
  String logDeleted(String size) {
    return 'تم حذف $size من السجلات';
  }

  @override
  String get missingSequel => 'تتمة مفقودة';

  @override
  String get rising => 'ارتفاع';

  @override
  String get stacks => 'أكوام';

  @override
  String get stacksAll => 'الكل';

  @override
  String get stacksFeatured => 'مميز';

  @override
  String get stacksMine => 'لك';

  @override
  String get stacksSaved => 'تم الحفظ';

  @override
  String get stacksFollowing => 'متابعة';

  @override
  String get stacksEmpty => 'لا يوجد مكدسات هنا حتى الآن';

  @override
  String get stacksSignIn => 'قم بتسجيل الدخول إلى MangaBaka لرؤية مجموعاتك';

  @override
  String get stacksScopeNeeded =>
      'تحتاج مكدساتك إلى إذن جديد. قم بتسجيل الدخول إلى MangaBaka مرة أخرى للسماح بذلك.';

  @override
  String get stacksSignInAgain => 'قم بتسجيل الدخول مرة أخرى';

  @override
  String get stacksCouldntLoad => 'تعذر تحميل الأكوام';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'سلسلة $count',
      one: '1 سلسلة',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يحفظ',
      one: '1 حفظ',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'بواسطة $name';
  }

  @override
  String get stackSpoilers => 'المفسدين';

  @override
  String get stackEmptyEntries => 'هذه المكدسة فارغة';

  @override
  String get stackSave => 'حفظ المكدس';

  @override
  String get stackUnsave => 'إزالة من المحفوظة';

  @override
  String get stackSavedToast => 'تم الحفظ في الأكوام الخاصة بك';

  @override
  String get stackRemovedToast => 'تمت إزالتها من الأكوام المحفوظة';

  @override
  String userStacks(String name) {
    return 'مكدسات بواسطة $name';
  }

  @override
  String get newsTitle => 'أخبار';

  @override
  String get newsEmpty => 'لا أخبار الآن';

  @override
  String get newsCouldntLoad => 'تعذر تحميل الأخبار';

  @override
  String get logFileCopied => 'تم نسخ مسار السجل';

  @override
  String get donateSheetTitle => 'عجبك Dartotsu؟';

  @override
  String get donateSheetMessage =>
      'Dartotsu يبنيه ويصونه شخص واحد. إذا كان مفيدًا لك، فكّر تدعم تطويره.';

  @override
  String get donateLater => 'لاحقًا';

  @override
  String get glassBackground => 'خلفية زجاجية';

  @override
  String get glassBackgroundDesc => 'بانر ملفك الشخصي إلا إذا حددت رابط صورة';

  @override
  String get glassBackgroundHint => 'رابط الصورة (اتركه فاضيًا لاستخدام بانرك)';

  @override
  String get followCover => 'اتبع الغلاف';

  @override
  String get followCoverDesc =>
      'الألوان تتبع الخلفية، وفي صفحات التفاصيل تتبع الغلاف';

  @override
  String get followCoverMediaOnly => 'فقط للإعلام';

  @override
  String get followCoverMediaOnlyDesc =>
      'اتبع الغلاف فقط على صفحات الوسائط، وفي كل مكان آخر يحتفظ بالألوان العادية';

  @override
  String get cardStyle => 'شكل البطاقة';

  @override
  String get cardStyleDesc => 'مكان العنوان والحجم والتقدّم والشارات';

  @override
  String get customFont => 'الخط';

  @override
  String get customFontDesc => 'الافتراضي، أو ملف من جهازك، أو Google Fonts';

  @override
  String get customFontError => 'ما قدرنا نحمّل ملف الخط هذا';

  @override
  String get googleFontError => 'ما قدرنا ننزّل هذا الخط';

  @override
  String get yourFonts => 'خطوطك';

  @override
  String get addFontFile => 'إضافة ملف خط…';

  @override
  String get browseGoogleFonts => 'تصفّح Google Fonts…';

  @override
  String get searchGoogleFonts => 'ابحث في Google Fonts';

  @override
  String get defaultFont => 'افتراضي';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'ألوان ديناميكية من النظام';

  @override
  String get jsonTheme => 'ملف سمة مخصص';

  @override
  String get jsonThemeDesc =>
      'ألوان مباشرة من ~/.config/dartotsu/theme.json (سكربت مخصص أو تعديلاتك)';

  @override
  String get themeMode => 'وضع السمة';

  @override
  String get mode => 'الوضع';

  @override
  String get trackingService => 'خدمة التتبّع';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get notSignedIn => 'ما سجّلت دخولك';

  @override
  String signOutOf(String service) {
    return 'تسجّل الخروج من $service؟';
  }

  @override
  String get checkForUpdates => 'ابحث عن تحديثات';

  @override
  String get checkForUpdatesDesc => 'نبّهني عند صدور إصدار جديد على GitHub';

  @override
  String get updateChannel => 'قناة التحديث';

  @override
  String get channel => 'القناة';

  @override
  String get stable => 'مستقرة';

  @override
  String get preRelease => 'ما قبل الإصدار';

  @override
  String get alpha => 'ألفا';

  @override
  String get checkNow => 'افحص الآن';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'افتراضي';

  @override
  String currentlyUsing(String value) {
    return 'حاليًا: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'افتراضي (Cloudflare)';

  @override
  String get proxy => 'بروكسي';

  @override
  String get proxyProtocol => 'النوع';

  @override
  String get proxyHost => 'المضيف';

  @override
  String get proxyPort => 'المنفذ';

  @override
  String get proxyUsername => 'اسم المستخدم';

  @override
  String get proxyPassword => 'كلمة المرور';

  @override
  String get optional => 'اختياري';

  @override
  String get clearCookies => 'مسح الكوكيز';

  @override
  String get clearCookiesDesc => 'احذف كل الكوكيز المخزّنة';

  @override
  String notImplementedArea(String area) {
    return '$area — قريبًا';
  }

  @override
  String notImplementedService(String service) {
    return '$service ما يدعم هذا لحد الآن.';
  }

  @override
  String get couldNotLoadResults => 'ما قدرنا نحمّل النتائج';

  @override
  String get updateCheckFailed => 'ما قدرنا نفحص التحديثات';

  @override
  String get highRefreshRate => 'معدل تحديث عالٍ';

  @override
  String get highRefreshRateDesc => 'استخدم أعلى معدل تحديث تدعمه شاشتك';

  @override
  String get imageSave => 'حفظ الصورة';

  @override
  String imageSavedTo(String path) {
    return 'تم الحفظ في $path';
  }

  @override
  String get imageActionFailed => 'ما قدرنا ننزّل الصورة';

  @override
  String get imageTitleCover => 'الغلاف';

  @override
  String get imageTitlePage => 'الصفحة';

  @override
  String get imageTitleBanner => 'البانر';

  @override
  String get imageTitleAvatar => 'صورة الملف الشخصي';

  @override
  String get verifyTls => 'التحقق من الشهادات';

  @override
  String get verifyTlsDesc =>
      'ارفض الخوادم ذات شهادات HTTPS غير صالحة. أوقفه فقط لمصدر يستخدم شهادة موقّعة ذاتيًا';

  @override
  String get clearCookiesConfirm =>
      'تحذف كل الكوكيز المخزّنة؟ ممكن يسجّل خروجك من بعض المصادر.';

  @override
  String get version => 'الإصدار';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'الكود المصدري والمشاكل والإصدارات';

  @override
  String get discordDesc => 'المجتمع والدعم';

  @override
  String get supportDeveloper => 'دعم المطور';

  @override
  String get buyMeCoffee => 'اشتري لي قهوة';

  @override
  String get upiId => 'معرف واجهة الدفعات الموحدة (UPI).';

  @override
  String get upiCopied => 'تم نسخ معرّف UPI';

  @override
  String get donateDesc => 'ادعم التطوير';

  @override
  String get contributors => 'المساهمون';

  @override
  String get contributorsDesc => 'الناس اللي بنوا Dartotsu';

  @override
  String get contributorsLoadFailed => 'ما قدرنا نحمّل المساهمين';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'مشاريع مبنية على Dartotsu';

  @override
  String get forksEmpty => 'ما لقينا نسخًا متفرعة';

  @override
  String get sectionColors => 'الألوان';

  @override
  String get sectionDisplay => 'العرض';

  @override
  String get sectionStyle => 'الأسلوب';

  @override
  String get sectionCommunity => 'المجتمع';

  @override
  String get sectionAppInfo => 'معلومات التطبيق';

  @override
  String get sectionRequests => 'الطلبات';

  @override
  String get sectionDnsProxy => 'DNS والبروكسي';

  @override
  String get onboardingBack => 'رجوع';

  @override
  String get onboardingNext => 'التالي';

  @override
  String get onboardingSkip => 'تخطّي';

  @override
  String get onboardingLanguageBody =>
      'اختر اللغة التي تظهر بها Dartotsu. ويمكنك تغييرها لاحقًا في الإعدادات.';

  @override
  String get onboardingPaletteTitle => 'خلّه يشبهك';

  @override
  String get onboardingPaletteBody =>
      'اختر لوحة ألوان. كل لون مميز، من البطاقات للمشغّل، يتبعها.';

  @override
  String get themeModeAuto => 'تلقائي';

  @override
  String get themeModeLight => 'فاتح';

  @override
  String get themeModeDark => 'داكن';

  @override
  String get onboardingSyncTitle => 'زامن مكتبتك';

  @override
  String get onboardingSyncBody =>
      'سجّل الدخول بـ AniList لتجيب قوائمك وتقدّمك وتقييماتك معك. أو تخطَّ وتصفّح كضيف.';

  @override
  String get onboardingOpenLinks =>
      'افتح روابط AniList والمستودعات في Dartotsu';

  @override
  String get onboardingPermsTitle => 'الأذونات';

  @override
  String get onboardingPermsBody =>
      'اسمح بها الآن عشان التنزيلات والتحديثات والتنبيهات تشتغل بدون انقطاع. تقدر تغيّرها لاحقًا من إعدادات النظام.';

  @override
  String get permNotifications => 'الإشعارات';

  @override
  String get permNotificationsDesc => 'تقدّم التنزيل والحلقات الجديدة والردود';

  @override
  String get permStorage => 'الوصول لكل الملفات';

  @override
  String get permStorageDesc => 'احفظ التنزيلات في مجلد Dartotsu العام';

  @override
  String get permInstall => 'تثبيت التحديثات';

  @override
  String get permInstallDesc => 'خلّ Dartotsu يثبّت تحديثات نفسه';

  @override
  String get permBattery => 'بطارية بدون قيود';

  @override
  String get permBatteryDesc => 'خلّ التنزيلات الطويلة تكمل في الخلفية';

  @override
  String get permGrant => 'سماح';

  @override
  String get linkOpenInApp => 'افتح الروابط في Dartotsu';

  @override
  String get linkOpenInAppDesc => 'خلّ روابط AniList والمستودعات تفتح التطبيق';

  @override
  String get reviewsTitle => 'المراجعات';

  @override
  String get reviewsEmpty => 'ما في مراجعات لحد الآن';

  @override
  String get reviewsFailed => 'ما قدرنا نحمّل المراجعات';

  @override
  String get reviewHelpfulQuestion => 'هل كانت هذه المراجعة مفيدة؟';

  @override
  String get reviewVoteFailed => 'ما قدرنا نحفظ تصويتك';

  @override
  String reviewHelpful(int n, int total) {
    return '$n من $total وجدوها مفيدة';
  }

  @override
  String get calendarTitle => 'جدول العرض';

  @override
  String get calendarToday => 'اليوم';

  @override
  String get calendarEmpty => 'ما في شيء يُعرض هذا اليوم';

  @override
  String get calendarFailed => 'ما قدرنا نحمّل الجدول';

  @override
  String calendarChapter(int n) {
    return 'الفصل $n';
  }

  @override
  String get calendarExpected => 'متوقع';

  @override
  String get castReceiverFailed => 'لم يبدأ جهاز Chromecast مشغله';

  @override
  String get castPlaybackFailed => 'لم يتمكن الجهاز من تشغيل هذا الدفق';

  @override
  String get shortcutNothingToContinue => 'لا شيء للاستمرار بعد';

  @override
  String shortcutNoCalendar(String service) {
    return '$service ليس لديه تقويم';
  }

  @override
  String calendarEpisode(int n) {
    return 'الحلقة $n';
  }

  @override
  String get shareAnalytics => 'شارك بيانات استخدام مجهولة';

  @override
  String get shareAnalyticsDesc =>
      'أعداد مستخدمين مجهولة وتقارير أعطال. بدون حساب أو بيانات شخصية';

  @override
  String get linkOpenAnilist => 'افتح روابط AniList في Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'فعّل معالجة الروابط عشان روابط anilist.co تفتح التطبيق';

  @override
  String get linkSettingsFailed => 'ما قدرنا نفتح إعدادات النظام';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordBrowsing => 'اعرض نشاط التصفّح';

  @override
  String get discordBrowsingDesc =>
      'اعرض كمان التبويب أو الصفحة أو الملف اللي تتصفحه، ليس فقط اللي تشاهده أو تقرأه.';

  @override
  String get discordActivityType => 'نوع النشاط';

  @override
  String get discordActivityTypeDesc =>
      'كيف يصيغها Discord: \"يشاهد …\" أو \"يلعب …\". تلقائي يستخدم \"يشاهد\" للأنمي و\"يلعب\" لكل شيء ثاني.';

  @override
  String get discordWatching => 'يشاهد';

  @override
  String get discordPlaying => 'يلعب';

  @override
  String get discordCovers => 'عرض الأغلفة';

  @override
  String get discordCoversDesc => 'صورة الغلاف وأيقونة Dartotsu على البطاقة.';

  @override
  String get discordTimer => 'عرض المؤقّت';

  @override
  String get discordTimerDesc => 'الوقت المنقضي أو المتبقي تحت العنوان.';

  @override
  String get discordButtons => 'عرض الأزرار';

  @override
  String get discordButtonsDesc =>
      'زرّا \"عرض الأنمي / المانجا\" و\"افتح Dartotsu\".';

  @override
  String get discordHideTitles => 'إخفاء العناوين';

  @override
  String get discordHideTitlesDesc =>
      'استبدل أسماء الأنمي والمانجا (مع غلافها ورابطها) بـ \"شيء خاص\".';

  @override
  String get listSearchHint => 'ابحث في هذه القائمة';

  @override
  String get listSort => 'ترتيب';

  @override
  String get listFilter => 'تصفية';

  @override
  String get listRandom => 'عنوان عشوائي';

  @override
  String get listReverse => 'عكس الترتيب';

  @override
  String get listSortDefault => 'ترتيب القائمة';

  @override
  String get listSortScore => 'تقييمك';

  @override
  String get listSortTitle => 'العنوان';

  @override
  String get listSortUpdated => 'آخر تحديث';

  @override
  String get listSortProgress => 'التقدّم';

  @override
  String get listSortReleased => 'تاريخ الإصدار';

  @override
  String get listSortAverage => 'متوسط التقييم';

  @override
  String get listFilterFormat => 'الصيغة';

  @override
  String get listFilterStatus => 'الحالة';

  @override
  String get listFilterGenres => 'التصنيفات';

  @override
  String get listFilterClear => 'مسح الفلاتر';

  @override
  String get listNoMatches => 'ما في شيء يطابق في هذه القائمة';

  @override
  String get discordLogin => 'سجّل الدخول إلى Discord';

  @override
  String get discordToken => 'توكن Discord';

  @override
  String get discordTokenSavedSnack => 'تم حفظ توكن Discord';

  @override
  String get discordTokenRemovedSnack => 'تم حذف توكن Discord';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'يعمل · اضغط لتغيير شكله';

  @override
  String get discordRichPresenceRowOff => 'اعرض اللي تفعله على ملفك في Discord';

  @override
  String get loginCancelled => 'تم إلغاء تسجيل الدخول';

  @override
  String get invalidToken => 'توكن غير صالح';

  @override
  String loginFailed(String error) {
    return 'فشل تسجيل الدخول: $error';
  }

  @override
  String get malLoginFailed => 'فشل تسجيل الدخول إلى MyAnimeList';

  @override
  String get kitsuLoginFailed =>
      'فشل تسجيل الدخول إلى Kitsu. تأكد من بريدك وكلمة المرور.';

  @override
  String get kitsuLoginTitle => 'سجّل الدخول إلى Kitsu';

  @override
  String get emailOrUsername => 'البريد الإلكتروني أو اسم المستخدم';

  @override
  String get password => 'كلمة المرور';

  @override
  String get kitsuProfile => 'ملف Kitsu الشخصي';

  @override
  String get mangaBakaLoginFailed => 'فشل تسجيل الدخول إلى MangaBaka';

  @override
  String get comickLoginFailed => 'فشل تسجيل الدخول كوميك';

  @override
  String get tagline => 'سطر الوصف';

  @override
  String get trending => 'تتجه';

  @override
  String get anticipated => 'متوقع';

  @override
  String get watchlist => 'قائمة المراقبة';

  @override
  String get recommendedShows => 'العروض الموصى بها';

  @override
  String get recommendedMovies => 'الأفلام الموصى بها';

  @override
  String get boxOffice => 'شباك التذاكر';

  @override
  String get popularMovies => 'أفلام شعبية';

  @override
  String get popularShows => 'العروض الشعبية';

  @override
  String get anticipatedMovies => 'الأفلام المنتظرة';

  @override
  String get anticipatedShows => 'العروض المتوقعة';

  @override
  String get trendingShows => 'العروض الرائجة';

  @override
  String get mostWatchedThisWeek => 'الأكثر مشاهدة هذا الأسبوع';

  @override
  String get sortMostViewed => 'الأكثر مشاهدة';

  @override
  String get sortMostFollowed => 'الأكثر متابعة';

  @override
  String get sortLatestUpdates => 'آخر التحديثات';

  @override
  String get translationStatusLabel => 'الترجمة';

  @override
  String get weeklySchedule => 'الجدول الأسبوعي';

  @override
  String get mostFollowed => 'الأكثر متابعة';

  @override
  String get latestUpdates => 'آخر التحديثات';

  @override
  String get trendingAnime => 'تتجه أنيمي';

  @override
  String get topRatedAnime => 'أعلى تصنيف أنيمي';

  @override
  String get mostFollowedAnime => 'الانمي الأكثر متابعة';

  @override
  String get comickProfile => 'الملف الشخصي هزلي';

  @override
  String get refreshFromComick => 'تحديث من كوميك';

  @override
  String get mangaBakaProfile => 'ملف MangaBaka الشخصي';

  @override
  String get refreshFromMangaBaka => 'تحديث من MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'قم بتسجيل الدخول إلى MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'تحديثات Manga الملف الشخصي';

  @override
  String get mangaUpdatesAnimeStart => 'يبدأ التكيف مع الأنمي';

  @override
  String get mangaUpdatesAnimeEnd => 'انتهى تكيف الأنمي';

  @override
  String get refreshFromMangaUpdates => 'التحديث من MangaUpdates';

  @override
  String get usernameOnly => 'اسم المستخدم';

  @override
  String get releases => 'الإصدارات';

  @override
  String get artistsLabel => 'الرسّامون';

  @override
  String get authorsLabel => 'المؤلفون';

  @override
  String get publishersLabel => 'الناشرون';

  @override
  String get licensedLabel => 'مرخّص';

  @override
  String get contentRatingLabel => 'التصنيف العمري';

  @override
  String get yesLabel => 'نعم';

  @override
  String get noLabel => 'لا';

  @override
  String get ratingSteps => 'درجات التقييم';

  @override
  String get hideNsfw => 'إخفاء NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'إخفاء المصادر التي تحمل علامة 18+ من الخلاصات ومنتقي المصادر. يظلون مثبتين.';

  @override
  String get hideNsfwDesc =>
      'أبعد عناوين البالغين عن الخلاصات والبحث، واعرض مدخلاتك الخاصة للبالغين تحت \"الوسائط المخفية\".';

  @override
  String get kitsuAccountOptions => 'خيارات حساب Kitsu';

  @override
  String get mangaBakaAccountOptions => 'خيارات حساب MangaBaka';

  @override
  String get comickClientId => 'معرف العميل كوميك';

  @override
  String get comickClientIdDesc => 'معرف العميل المخصص المسجل على comick.dev';

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
  String get couldNotUpdateKitsuSettings => 'ما قدرنا نحدّث إعدادات Kitsu';

  @override
  String get titleCanonical => 'الأصلي';

  @override
  String get titleRomanized => 'بالحروف اللاتينية';

  @override
  String get titleLocalized => 'محلّي';

  @override
  String get ratingSystem => 'نظام التقييم';

  @override
  String get ratingSimple => 'بسيط (3 وجوه)';

  @override
  String get ratingRegular => 'عادي (5 نجوم)';

  @override
  String get ratingAdvanced => 'متقدّم (10 نقاط)';

  @override
  String get contentFilter => 'فلتر المحتوى';

  @override
  String get contentSfw => 'آمن للعمل فقط';

  @override
  String get contentSometimes => 'محتوى للبالغين في البحث';

  @override
  String get contentEverywhere => 'محتوى للبالغين في كل مكان';

  @override
  String get shareToGlobal => 'مشاركة في الخلاصة العامة';

  @override
  String get shareToGlobalDesc => 'خلّ نشاطك يظهر في خلاصة Kitsu العامة.';

  @override
  String get memberSince => 'عضو منذ';

  @override
  String get location => 'الموقع';

  @override
  String get accountType => 'نوع الحساب';

  @override
  String get accountSupporter => 'داعم';

  @override
  String get accountFree => 'مجاني';

  @override
  String get accountDetails => 'تفاصيل الحساب';

  @override
  String get refreshFromKitsu => 'تحديث من Kitsu';

  @override
  String get simklReadOnly => 'Simkl أعطى صلاحية القراءة فقط';

  @override
  String get incognitoEditsBlocked => 'التصفح الخفي: تعديل القوائم محظور';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'التصفح الخفي: التقدّم ما انحفظ';

  @override
  String progressSet(int progress) {
    return 'تم ضبط التقدّم على $progress';
  }

  @override
  String removedFromList(String title) {
    return 'تم حذف $title من قائمتك';
  }

  @override
  String get following => 'المتابَعون';

  @override
  String get followsMutual => 'المتبادلة';

  @override
  String get followsNotMutual => 'ليست متبادلة';

  @override
  String get homeSections => 'أقسام الرئيسية';

  @override
  String get homeSectionsHint =>
      'اسحب لإعادة الترتيب. الأقسام المخفية ما تُجلب أبدًا.';

  @override
  String get customListDeleteFailed => 'فشل حذف القائمة المخصصة';

  @override
  String get customListsSaveFailed => 'فشل حفظ القوائم المخصصة';

  @override
  String get customListsSaved => 'تم حفظ القوائم المخصصة';

  @override
  String get listName => 'اسم القائمة';

  @override
  String get addList => 'إضافة قائمة';

  @override
  String get voiceActors => 'الممثلين الصوتيين';

  @override
  String voiceActorsIn(String name) {
    return 'المؤدّون الصوتيون · $name';
  }

  @override
  String get animeAppearances => 'ظهوره في الأنمي';

  @override
  String get mangaAppearances => 'ظهوره في المانجا';

  @override
  String get voicedCharacters => 'الشخصيات اللي أدّى صوتها';

  @override
  String get animeCredits => 'أعمال الأنمي';

  @override
  String get mangaCredits => 'أعمال المانجا';

  @override
  String get mainProductions => 'الأعمال الرئيسية';

  @override
  String get otherWorks => 'أعمال أخرى';

  @override
  String get prequel => 'برقول';

  @override
  String get sequel => 'تتمة';

  @override
  String get previousSeason => 'الموسم السابق';

  @override
  String get thisSeason => 'هذا الموسم';

  @override
  String get nextSeason => 'الموسم القادم';

  @override
  String get voiceRoles => 'الأدوار الصوتية';

  @override
  String get staffPositions => 'مناصب الطاقم';

  @override
  String get mangaWorks => 'أعمال المانجا';

  @override
  String get malProfile => 'ملف MyAnimeList الشخصي';

  @override
  String get refreshFromMal => 'تحديث من MyAnimeList';

  @override
  String get repullProfileCounts => 'اسحب ملفك وأعدادك من جديد';

  @override
  String get refreshed => 'تم التحديث';

  @override
  String get simklProfile => 'ملف Simkl الشخصي';

  @override
  String get traktProfile => 'الملف الشخصي للتراكت';

  @override
  String get refreshFromSimkl => 'تحديث من Simkl';

  @override
  String get refreshFromTrakt => 'تحديث من Trakt';

  @override
  String get repullProfileLibrary => 'اسحب ملفك ومكتبتك من جديد';

  @override
  String get simklSignInToSearch => 'سجّل الدخول إلى Simkl للبحث';

  @override
  String get dropRate => 'نسبة الترك';

  @override
  String get simklAttribution => 'البيانات والصور من Simkl. شاهد على Simkl';

  @override
  String get traktAttribution =>
      'البيانات والأعمال الفنية المقدمة من Trakt. عرض على تراكت';

  @override
  String get listsLiked => 'أعجبني';

  @override
  String get listsYours => 'لك';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'عضو VIP في تراكت';

  @override
  String get onHold => 'معلّق';

  @override
  String get scoredBy => 'قيّمه';

  @override
  String get planToWatch => 'أخطط لمشاهدته';

  @override
  String get planToRead => 'أخطط لقراءته';

  @override
  String get timesRewatched => 'مرات إعادة المشاهدة';

  @override
  String get timesReread => 'مرات إعادة القراءة';

  @override
  String get comments => 'التعليقات';

  @override
  String get moviesAndSeries => 'أفلام ومسلسلات';

  @override
  String get simklMoviesOnly => 'افلام ومسلسلات فقط';

  @override
  String get simklMoviesOnlyDesc =>
      'يستبدل علامة التبويب Anime: الأفلام أولاً، ثم العروض التي تحتوي على صفين من الرسوم المتحركة';

  @override
  String get trackingOnly => 'تتبّع فقط';

  @override
  String get signedIn => 'مسجّل دخول';

  @override
  String get searchLanguage => 'لغة البحث';

  @override
  String get savedToList => 'تم الحفظ في قائمتك';

  @override
  String get removedFromYourList => 'تم الحذف من قائمتك';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get synopsis => 'الملخّص';

  @override
  String get details => 'التفاصيل';

  @override
  String get addToList => 'أضف للقائمة';

  @override
  String get trailer => 'الإعلان';

  @override
  String get trailerQuality => 'جودة المقطورة';

  @override
  String get linkCopied => 'تم نسخ الرابط';

  @override
  String get detailStale =>
      'لا يمكن الوصول إلى AniList. هذه معلومات محفوظة وقد تكون قديمة.';

  @override
  String get copyLink => 'انسخ الرابط';

  @override
  String get openInBrowser => 'افتح في المتصفح';

  @override
  String viewOnSource(String source) {
    return 'شاهد على $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'الحلقة $ep تُعرض بعد $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'الحلقة القادمة بعد $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'الفصل $chapter متوقع بعد حوالي $time';
  }

  @override
  String get logPathCopied => 'تم نسخ مسار ملف السجل';

  @override
  String get animeSource => 'مصدر الأنمي';

  @override
  String get mangaSource => 'مصدر المانجا';

  @override
  String get popular => 'الأشهر';

  @override
  String get allCustomLists => 'جميع القوائم المخصصة';

  @override
  String get simklTitleLanguage => 'لغة عنوان الأنمي';

  @override
  String get titleLanguageEnglish => 'الإنجليزية';

  @override
  String get titleLanguageRomaji => 'روماجي';

  @override
  String get simklListsTrending => 'تتجه';

  @override
  String get simklListsMostLiked => 'الأكثر إعجابًا';

  @override
  String get simklListsMostFollowed => 'الأكثر متابعة';

  @override
  String get simklListsOfficial => 'رسمي';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count العناوين',
      one: '1 عنوان',
    );
    return '$_temp0';
  }

  @override
  String get people => 'الناس';

  @override
  String get mostComments => 'معظم التعليقات';

  @override
  String get alphabetical => 'أبجديا';

  @override
  String get latest => 'الأحدث';

  @override
  String get saved => 'المحفوظ';

  @override
  String get nothingMatched => 'ما في نتائج';

  @override
  String get nothingSavedFromSource => 'ما انحفظ شيء من هذا المصدر لحد الآن';

  @override
  String get sourceReturnedNothing => 'هذا المصدر ما رجّع شيئًا';

  @override
  String get checkConnectionOrSource => 'تأكد من اتصالك أو جرّب مصدرًا ثانيًا.';

  @override
  String get tryDifferentSearch => 'جرّب كلمة بحث ثانية.';

  @override
  String get savedTitlesAppearHere => 'العناوين اللي تضيفها لقائمتك تظهر هنا.';

  @override
  String get tryOtherFeed => 'جرّب الخلاصة الثانية أو ابحث.';

  @override
  String searchSource(String source) {
    return 'ابحث في $source';
  }

  @override
  String get animeExtensions => 'إضافات الأنمي';

  @override
  String get mangaExtensions => 'إضافات المانجا';

  @override
  String get nothingHereYet => 'ما في شيء هنا لحد الآن';

  @override
  String get savedOnDeviceUntilLogin =>
      'كل اللي تحت محفوظ على هذا الجهاز حتى تغيّره.';

  @override
  String get yourProfile => 'ملفك الشخصي';

  @override
  String get activity => 'النشاط';

  @override
  String get extensions => 'الإضافات';

  @override
  String get logOut => 'تسجيل الخروج';

  @override
  String get logIn => 'تسجيل الدخول';

  @override
  String get logOutConfirm => 'متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get incognitoMode => 'وضع التصفح الخفي';

  @override
  String get alsoBlockListEdits => 'امنع تعديل القوائم كمان';

  @override
  String get offlineMode => 'وضع عدم الاتصال';

  @override
  String get switchService => 'بدّل الخدمة';

  @override
  String logOutOf(String name) {
    return 'سجّل الخروج من $name';
  }

  @override
  String get loggedIn => 'مسجّل دخول';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get nothingNew => 'ما في جديد';

  @override
  String get thisWeek => 'هذا الأسبوع';

  @override
  String get listOnly => 'القوائم فقط';

  @override
  String get notInList => 'ليس في القائمة';

  @override
  String get filter => 'تصفية';

  @override
  String get searchResults => 'نتائج البحث';

  @override
  String get recentSearches => 'عمليات البحث الأخيرة';

  @override
  String get searchOrSetFilter => 'ابحث أو حدد فلتر';

  @override
  String get filters => 'الفلاتر';

  @override
  String get showLess => 'عرض أقل';

  @override
  String get showAll => 'عرض الكل';

  @override
  String get apply => 'تطبيق';

  @override
  String get preview => 'معاينة';

  @override
  String get preset => 'إعداد مسبق';

  @override
  String get cardNormal => 'عادي';

  @override
  String get cardOnCard => 'على البطاقة';

  @override
  String get cardInCard => 'داخل البطاقة';

  @override
  String get size => 'الحجم';

  @override
  String get cardWidth => 'عرض البطاقة';

  @override
  String get compact => 'مضغوط';

  @override
  String get coverAndTitleOnly => 'الغلاف والعنوان فقط';

  @override
  String get titleLines => 'أسطر العنوان';

  @override
  String get shape => 'الشكل';

  @override
  String get posterShape => 'شكل الملصق';

  @override
  String get cornerRadius => 'استدارة الزوايا';

  @override
  String get off => 'إيقاف';

  @override
  String get topLeft => 'أعلى اليسار';

  @override
  String get topRight => 'أعلى اليمين';

  @override
  String get bottomLeft => 'أسفل اليسار';

  @override
  String get bottomRight => 'أسفل اليمين';

  @override
  String get overlays => 'الطبقات العلوية';

  @override
  String get progressCount => 'التقدّم / العدد';

  @override
  String get pill => 'حبّة';

  @override
  String get bar => 'شريط';

  @override
  String get outside => 'خارجي';

  @override
  String get scoreBadge => 'شارة التقييم';

  @override
  String get airingDot => 'نقطة البث';

  @override
  String get updateAvailable => 'يتوفر تحديث';

  @override
  String get notInstalled => 'غير مثبّت';

  @override
  String get done => 'تم';

  @override
  String get searchOrEnterUrl => 'ابحث أو أدخل رابطًا';

  @override
  String get refresh => 'تحديث';

  @override
  String get animePlanetRank => 'رتبة';

  @override
  String get animePlanetMagazine => 'مجلة';

  @override
  String get animePlanetRefreshLists => 'قم بتحديث قوائمك';

  @override
  String get animePlanetRefreshListsDesc =>
      'اقرأ قوائم Anime-Planet الخاصة بك مرة أخرى';

  @override
  String get animePlanetLocalNote =>
      'قم بتسجيل الدخول لحفظ التغييرات التي تم إجراؤها على حساب Anime-Planet الخاص بك. حتى ذلك الحين يبقون على هذا الجهاز';

  @override
  String get share => 'مشاركة';

  @override
  String get characters => 'الشخصيات';

  @override
  String get staff => 'الطاقم';

  @override
  String get readMore => 'اقرأ المزيد';

  @override
  String get couldNotLoadList => 'ما قدرنا نحمّل القائمة';

  @override
  String get logInToFavourite => 'سجّل الدخول لإضافة المفضلات';

  @override
  String get alsoKnownAs => 'يُعرف أيضًا بـ';

  @override
  String get hideSpoilerNames => 'إخفاء أسماء السبويلر';

  @override
  String get showSpoilerNames => 'إظهار أسماء السبويلر';

  @override
  String get favourited => 'في المفضلة';

  @override
  String get favourite => 'أضف للمفضلة';

  @override
  String get couldNotOpenTitle => 'ما قدرنا نفتح هذا العنوان';

  @override
  String get nobodyHereYet => 'ما في أحد هنا لحد الآن';

  @override
  String get noMatches => 'ما في نتائج';

  @override
  String get gridView => 'عرض الشبكة';

  @override
  String get fullWidth => 'العرض الكامل';

  @override
  String get userNotFound => 'المستخدم غير موجود';

  @override
  String get couldNotUpdateFollow => 'ما قدرنا نحدّث المتابعة';

  @override
  String followedUser(String name) {
    return 'صرت تتابع $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'ألغيت متابعة $name';
  }

  @override
  String get messages => 'الرسائل';

  @override
  String get logInToSeeMessages => 'سجّل الدخول لرؤية رسائلك';

  @override
  String get editActivity => 'تعديل النشاط';

  @override
  String get newActivity => 'نشاط جديد';

  @override
  String get editMessage => 'تعديل الرسالة';

  @override
  String get writeMessage => 'اكتب رسالة';

  @override
  String get editReply => 'تعديل الرد';

  @override
  String get posted => 'تم النشر';

  @override
  String get couldNotPost => 'ما قدرنا ننشر';

  @override
  String get nothingToPreview => 'ما في شيء للمعاينة';

  @override
  String get writeSomethingHint => 'اكتب شيئًا… يدعم markdown الخاص بـ AniList';

  @override
  String get privateMessage => 'رسالة خاصة';

  @override
  String get post => 'نشر';

  @override
  String get nothingHere => 'ما في شيء هنا';

  @override
  String get noAnimeProgress => 'ما في تقدّم أنمي';

  @override
  String get noMangaProgress => 'ما في تقدّم مانجا';

  @override
  String get noMessages => 'ما في رسائل';

  @override
  String get writeMessageHint => 'اكتب رسالة…';

  @override
  String get shareSomethingHint => 'شارك شيئًا…';

  @override
  String get all => 'الكل';

  @override
  String get anime => 'أنمي';

  @override
  String get manga => 'مانجا';

  @override
  String get count => 'العدد';

  @override
  String get hoursWatched => 'ساعات المشاهدة';

  @override
  String get chaptersRead => 'الفصول المقروءة';

  @override
  String get meanScore => 'متوسط التقييم';

  @override
  String get noStatsYet => 'ما في إحصائيات لحد الآن';

  @override
  String get totalEntries => 'إجمالي المدخلات';

  @override
  String get episodesWatched => 'الحلقات المشاهدة';

  @override
  String get daysWatched => 'أيام المشاهدة';

  @override
  String get volumesRead => 'المجلدات المقروءة';

  @override
  String get standardDeviation => 'الانحراف المعياري';

  @override
  String get showMore => 'عرض المزيد';

  @override
  String get followsYou => 'يتابعك';

  @override
  String get nobodyYet => 'ما في أحد لحد الآن';

  @override
  String get logInToLike => 'سجّل الدخول للإعجاب';

  @override
  String get failedToLikeActivity => 'فشل الإعجاب بالنشاط';

  @override
  String get deleteActivityConfirm => 'تحذف النشاط؟';

  @override
  String get deletedActivity => 'تم حذف النشاط';

  @override
  String get failedToDeleteActivity => 'فشل حذف النشاط';

  @override
  String get subscribed => 'تم الاشتراك';

  @override
  String get unsubscribed => 'تم إلغاء الاشتراك';

  @override
  String get failedToUpdateSubscription => 'فشل تحديث الاشتراك';

  @override
  String get edit => 'تعديل';

  @override
  String get delete => 'حذف';

  @override
  String get likedBy => 'أعجب بها';

  @override
  String get follow => 'متابعة';

  @override
  String get nameCopied => 'تم نسخ الاسم';

  @override
  String get followsEachOther => 'تتابعون بعض';

  @override
  String get unfollow => 'إلغاء المتابعة';

  @override
  String get userIdCopied => 'تم نسخ معرّف المستخدم';

  @override
  String get shareProfile => 'مشاركة الملف الشخصي';

  @override
  String get copyUserId => 'انسخ معرّف المستخدم';

  @override
  String get failedToDelete => 'فشل الحذف';

  @override
  String get failedToLike => 'فشل الإعجاب';

  @override
  String get replies => 'الردود';

  @override
  String get reply => 'رد';

  @override
  String get noRepliesYet => 'ما في ردود لحد الآن';

  @override
  String get favouriteAnime => 'الأنمي المفضل';

  @override
  String get favouriteManga => 'المانجا المفضلة';

  @override
  String get favouriteCharacters => 'الشخصيات المفضلة';

  @override
  String get favouriteStaff => 'الطاقم المفضل';

  @override
  String get favouriteStudios => 'الاستوديوهات المفضلة';

  @override
  String get noFavouritesYet => 'ما في مفضلات لحد الآن';

  @override
  String get yourStory => 'قصتك';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get justNow => 'الآن';

  @override
  String get openImage => 'افتح الصورة';

  @override
  String get hideSpoiler => 'إخفاء السبويلر';

  @override
  String get showSpoiler => 'إظهار السبويلر';

  @override
  String get status => 'الحالة';

  @override
  String get score => 'التقييم';

  @override
  String get started => 'بدأت في';

  @override
  String get completed => 'انتهيت في';

  @override
  String get private => 'خاص';

  @override
  String get hideFromStatusLists => 'إخفاء من قوائم الحالة';

  @override
  String get totalRepeats => 'إجمالي الإعادات';

  @override
  String get other => 'أخرى';

  @override
  String get customLists => 'قوائم مخصصة';

  @override
  String get activeDays => 'أيام النشاط';

  @override
  String get longestStreak => 'أطول سلسلة';

  @override
  String get currentStreak => 'السلسلة الحالية';

  @override
  String get tapOrHoverDay => 'اضغط على يوم أو مرّر فوقه';

  @override
  String get less => 'أقل';

  @override
  String get more => 'أكثر';

  @override
  String epIn(int ep, String time) {
    return 'ح$ep بعد $time';
  }

  @override
  String get sectionLoading => 'جارٍ التحميل';

  @override
  String get querySize => 'حجم الاستعلام';

  @override
  String get querySizeDesc =>
      'استعلام كبير واحد يحمّل كل الصفوف (وملفًا شخصيًا كاملًا) بطلب واحد. الاستعلامات المقسّمة ترسل طلبًا صغيرًا لكل صف أو جزء من الملف: كل واحد سريع والأجزاء تظهر أول بأول.';

  @override
  String get oneBig => 'استعلام كبير';

  @override
  String get split => 'مقسّم';

  @override
  String get sectionSocial => 'اجتماعي';

  @override
  String get systemNotifications => 'إشعارات النظام';

  @override
  String get feedLayout => 'تخطيط الخلاصة';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown من $total معروضة — اضغط للاختيار وإعادة الترتيب';
  }

  @override
  String labelSections(String label) {
    return 'أقسام $label';
  }

  @override
  String get accountOptions => 'خيارات الحساب';

  @override
  String get anilistAccountOptions => 'خيارات حساب AniList';

  @override
  String get sectionPrivacy => 'الخصوصية';

  @override
  String get hidePrivateEntries => 'إخفاء المدخلات الخاصة';

  @override
  String get hidePrivateEntriesDesc =>
      'أبعد المدخلات المعلّمة كخاصة في AniList عن الخلاصة';

  @override
  String get anilistExcludeList => 'استبعاد قائمتك';

  @override
  String get anilistExcludeListDesc =>
      'أخفِ العناوين الموجودة في قائمتك على AniList من صفحات الأنمي والمانغا';

  @override
  String get anilistProfile => 'ملف AniList الشخصي';

  @override
  String get refreshFromAnilist => 'تحديث من AniList';

  @override
  String get couldNotUpdateAnilistSettings => 'ما قدرنا نحدّث إعدادات AniList';

  @override
  String get sectionNames => 'الأسماء';

  @override
  String get titleLanguage => 'لغة العناوين';

  @override
  String get titleLanguageDesc =>
      'كيف تُكتب العناوين في كل مكان، مثل Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'أسماء الطاقم والشخصيات';

  @override
  String get sectionLists => 'القوائم';

  @override
  String get scoreFormat => 'صيغة التقييم';

  @override
  String get sortListsBy => 'رتّب القوائم حسب';

  @override
  String labelCustomLists(String label) {
    return 'قوائم $label المخصصة';
  }

  @override
  String customListsCount(int count) {
    return '$count قوائم — اضغط للإضافة أو الحذف';
  }

  @override
  String get mergeActivities => 'دمج الأنشطة';

  @override
  String minutesCount(int count) {
    return '$count دقيقة';
  }

  @override
  String get timezone => 'المنطقة الزمنية';

  @override
  String get notSet => 'غير محدد';

  @override
  String get airingNotifications => 'إشعارات البث';

  @override
  String get airingNotificationsDesc =>
      'نبّهني عند عرض حلقة جديدة من عمل أتابعه';

  @override
  String get displayAdultContent => 'عرض محتوى البالغين';

  @override
  String get displayAdultContentDesc =>
      'أدرج عناوين +18 في التصفح والبحث والخلاصات';

  @override
  String get restrictMessages => 'حصر الرسائل بمن أتابعهم';

  @override
  String get restrictMessagesDesc => 'فقط الأشخاص اللي تتابعهم يقدرون يراسلونك';

  @override
  String get sectionServices => 'الخدمات';

  @override
  String get novel => 'الروايات';

  @override
  String labelService(String label) {
    return 'خدمة $label';
  }

  @override
  String nameSettings(String name) {
    return 'إعدادات $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'خيارات من جسر إضافات $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ما قدر يشتغل: $error';
  }

  @override
  String get importLists => 'استيراد القوائم';

  @override
  String get importListsDesc =>
      'من نسخ Aniyomi وMihon / Tachiyomi وKotatsu الاحتياطية';

  @override
  String get exportLists => 'تصدير القوائم';

  @override
  String get exportListsDesc => 'إلى نسخة Aniyomi أو Mihon أو Kotatsu احتياطية';

  @override
  String get sectionBrowse => 'تصفّح';

  @override
  String get readingTab => 'تبويب القراءة';

  @override
  String get readingTabDesc => 'أي إضافات يعرضها التبويب الثالث';

  @override
  String get firstTab => 'علامة التبويب الأولى';

  @override
  String get firstTabDesc =>
      'ما هي الامتدادات التي تظهرها علامة التبويب الأولى. اختر المانجا هنا والرواية في علامة تبويب القراءة لإسقاط الرسوم المتحركة من الشريط';

  @override
  String get novelExtensions => 'ملحقات الرواية';

  @override
  String get defaultFeed => 'الخلاصة الافتراضية';

  @override
  String get defaultFeedDesc => 'أي قائمة يفتح بها المصدر';

  @override
  String noServiceSupports(String type) {
    return 'ما في خدمة تدعم $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded من $installed مصادر قيد التحميل';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ما في خدمة إضافات تدعم $type هنا.';
  }

  @override
  String get loadDataFrom => 'تحميل البيانات من';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ما في مصادر $type مثبّتة لحد الآن.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'إضافة $name غير مثبّتة';
  }

  @override
  String get thisSource => 'هذا المصدر';

  @override
  String failedToAddRepository(String error) {
    return 'فشلت إضافة المستودع: $error';
  }

  @override
  String installedType(String type) {
    return '$type المثبّتة';
  }

  @override
  String availableType(String type) {
    return '$type المتاحة';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ما في إضافات $type مثبّتة';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ما في إضافات $type متاحة';
  }

  @override
  String get nothingToShowYet => 'ما في شيء للعرض لحد الآن';

  @override
  String get addTitlesHint => 'أضف عناوين لقائمتك وستظهر هنا.';

  @override
  String get couldntLoad => 'ما قدرنا نحمّل';

  @override
  String get progressStyleHint =>
      'الحبّة والشريط يتراكبان على الملصق؛ \"خارجي\" يعرض نفس العدد كنص عادي بدلًا منهما — اختر واحدًا.';

  @override
  String get nixManagedUpdate =>
      'هذا الإصدار تديره Nix — شغّل \"nix flake update\" على الـ flake الخاص بك وأعد البناء بدل التحديث من هنا';

  @override
  String autoUpdateFailed(String error) {
    return 'فشل التحديث التلقائي ($error) — نفتح صفحة التنزيل بدلًا منه';
  }

  @override
  String get unknownPreference => 'تفضيل غير معروف';

  @override
  String unsupportedPreferenceType(String type) {
    return 'نوع تفضيل غير مدعوم $type';
  }

  @override
  String get notYetReleased => 'لم يصدر بعد';

  @override
  String get notStarted => 'لم يبدأ بعد';

  @override
  String get country => 'البلد';

  @override
  String get sort => 'ترتيب';

  @override
  String get chooseBackupDialog =>
      'اختر نسخة Aniyomi أو Mihon أو Kotatsu احتياطية';

  @override
  String get importListsHint =>
      'انقل مكتبة من Aniyomi أو Mihon / Tachiyomi أو Kotatsu. العناوين والأغلفة والتقدّم والفئات تنحفظ.';

  @override
  String get chooseBackupFile => 'اختر ملف النسخة الاحتياطية';

  @override
  String importAnimeCount(int count) {
    return 'استيراد $count أنمي';
  }

  @override
  String importMangaCount(int count) {
    return 'استيراد $count مانجا';
  }

  @override
  String get mergeWithExisting => 'دمج مع القوائم الحالية';

  @override
  String get mergeWithExistingDesc =>
      'يحافظ على اللي عندك؛ إيقافه يستبدل العناوين المتطابقة';

  @override
  String get chooseAnother => 'اختر ملفًا آخر';

  @override
  String get import => 'استيراد';

  @override
  String animeCount(int count) {
    return '$count أنمي';
  }

  @override
  String mangaCount(int count) {
    return '$count مانجا';
  }

  @override
  String savedPath(String path) {
    return 'تم حفظ $path';
  }

  @override
  String exportFailed(String error) {
    return 'فشل التصدير: $error';
  }

  @override
  String get nothingInLocalLists => 'ما في شيء في قوائمك المحلية لحد الآن.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'يصدّر $anime أنمي و$manga مانجا من قوائمك المحلية. Kotatsu يدعم المانجا فقط.';
  }

  @override
  String get saveToFolder => 'احفظ في مجلد';

  @override
  String get formatAnimeManga => 'أنمي ومانجا · .tachibk';

  @override
  String get formatMangaTachibk => 'مانجا فقط · .tachibk';

  @override
  String get formatMangaZip => 'مانجا فقط · .zip';

  @override
  String get genres => 'التصنيفات';

  @override
  String get relations => 'المرتبطة';

  @override
  String get recommendations => 'التوصيات';

  @override
  String get openings => 'المقدمات';

  @override
  String get endings => 'الخواتيم';

  @override
  String get background => 'الخلفية';

  @override
  String get links => 'الروابط';

  @override
  String get rank => 'الترتيب';

  @override
  String get members => 'الأعضاء';

  @override
  String get favorites => 'المفضلات';

  @override
  String get episodes => 'الحلقات';

  @override
  String get chapters => 'الفصول';

  @override
  String get volumes => 'المجلدات';

  @override
  String get format => 'الصيغة';

  @override
  String get source => 'المصدر';

  @override
  String get duration => 'المدة';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes دقيقة للحلقة';
  }

  @override
  String get rating => 'التصنيف العمري';

  @override
  String get studio => 'الاستوديو';

  @override
  String get serialization => 'المجلة';

  @override
  String get season => 'الموسم';

  @override
  String get year => 'سنة';

  @override
  String get filterAny => 'أي';

  @override
  String get broadcast => 'البث';

  @override
  String get aired => 'عُرض';

  @override
  String get published => 'نُشر';

  @override
  String get popularity => 'الشعبية';

  @override
  String get community => 'المجتمع';

  @override
  String get watching => 'أشاهده';

  @override
  String get reading => 'أقرأه';

  @override
  String get dropped => 'متروك';

  @override
  String get unfinished => 'غير مكتمل';

  @override
  String get planned => 'مخطط له';

  @override
  String get trailers => 'الإعلانات';

  @override
  String get ratings => 'التقييمات';

  @override
  String get originalTitle => 'الأصلي';

  @override
  String get titleLabel => 'العنوان';

  @override
  String get votes => 'الأصوات';

  @override
  String get watchedStat => 'شاهدته';

  @override
  String get runtime => 'المدة';

  @override
  String get director => 'المخرج';

  @override
  String get network => 'الشبكة';

  @override
  String get certification => 'التصنيف';

  @override
  String get airs => 'يُعرض';

  @override
  String get budget => 'الميزانية';

  @override
  String get revenue => 'الإيرادات';

  @override
  String get released => 'صدر';

  @override
  String get tags => 'الوسوم';

  @override
  String get author => 'المؤلف';

  @override
  String get born => 'تاريخ الميلاد';

  @override
  String get died => 'مات';

  @override
  String get birthplace => 'مكان الميلاد';

  @override
  String get department => 'القسم';

  @override
  String get website => 'الموقع';

  @override
  String get established => 'تأسس';

  @override
  String get manhwa => 'مانهوا';

  @override
  String get manhua => 'مانها';

  @override
  String get novels => 'روايات';

  @override
  String get thisMonth => 'هذا الشهر';

  @override
  String get movies => 'أفلام';

  @override
  String get shows => 'مسلسلات';

  @override
  String get moviesWatched => 'الأفلام التي شاهدتها';

  @override
  String get showsWatched => 'العروض التي تمت مشاهدتها';

  @override
  String get moviesCollected => 'افلام مجمعة';

  @override
  String get showsCollected => 'العروض المجمعة';

  @override
  String get rewatching => 'أعيد مشاهدته';

  @override
  String get rereading => 'أعيد قراءته';

  @override
  String get watchedStatus => 'شاهدته';

  @override
  String get planning => 'مخطط له';

  @override
  String get paused => 'متوقف مؤقتًا';

  @override
  String get watch => 'شاهد';

  @override
  String get read => 'اقرأ';

  @override
  String get finished => 'منتهي';

  @override
  String get releasing => 'قيد الإصدار';

  @override
  String get cancelled => 'ملغي';

  @override
  String get hiatus => 'متوقف';

  @override
  String get remove => 'إزالة';

  @override
  String syncToService(String service) {
    return 'مزامنة مع $service';
  }

  @override
  String syncedToService(String service) {
    return 'تمت المزامنة مع $service';
  }

  @override
  String get latestReleases => 'أحدث الإصدارات';

  @override
  String get topRated => 'الأعلى تقييمًا';

  @override
  String localSection(String title) {
    return '$title · محلي';
  }

  @override
  String get localEntryNote =>
      'هذا العنوان موجود فقط في قائمتك المحلية على هذا الجهاز. التعديل متوقف هنا لأنه قد يتعارض مع قائمة حسابك؛ لكن تقدر تحذفه.';

  @override
  String get cardPresetPoster => 'ملصق';

  @override
  String get cardPresetCard => 'بطاقة';

  @override
  String get cardPresetCozy => 'مريح';

  @override
  String get sortTopRated => 'الأعلى تقييمًا';

  @override
  String get sortMostPopular => 'الأكثر شعبية';

  @override
  String get sortTrending => 'رائج';

  @override
  String get sortNewest => 'الأحدث';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'الأكثر إضافة للمفضلة';

  @override
  String get anyCountry => 'أي بلد';

  @override
  String get orderScore => 'التقييم';

  @override
  String get orderTitle => 'العنوان';

  @override
  String get orderLastUpdated => 'آخر تحديث';

  @override
  String get orderLastAdded => 'آخر إضافة';

  @override
  String get never => 'أبدًا';

  @override
  String get always => 'دائمًا';

  @override
  String get scorePoint100 => '100 نقطة';

  @override
  String get scorePoint10Decimal => '10 نقاط عشرية';

  @override
  String get scorePoint10 => '10 نقاط';

  @override
  String get scorePoint5 => '5 نجوم';

  @override
  String get scorePoint3 => '3 وجوه تعبيرية';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعة',
      few: '$count ساعات',
      two: 'ساعتان',
      one: 'ساعة',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أسبوعًا',
      few: '$count أسابيع',
      two: 'أسبوعان',
      one: 'أسبوع',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'استئناف';

  @override
  String get resumeSourceMissing => 'ثبّت مصدر هذا العنوان للاستئناف';

  @override
  String get resumeRemove => 'إزالة من الاستئناف';

  @override
  String resumeAt(String time) {
    return 'باقي $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'صفحة $page من $total';
  }

  @override
  String get continueWatching => 'تابع المشاهدة';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'تابع القراءة';

  @override
  String get favouriteAnimeSection => 'الأنمي المفضل';

  @override
  String get favouriteMangaSection => 'المانجا المفضلة';

  @override
  String get plannedAnime => 'الأنمي المخطط له';

  @override
  String get plannedManga => 'المانجا المخطط لها';

  @override
  String get completedAnime => 'الأنمي المكتمل';

  @override
  String get completedManga => 'المانجا المكتملة';

  @override
  String get hiddenMedia => 'الوسائط المخفية';

  @override
  String get recentUpdates => 'آخر التحديثات';

  @override
  String get trendingNow => 'رائج الآن';

  @override
  String get popularThisSeason => 'الأشهر هذا الموسم';

  @override
  String get trendingMovies => 'أفلام رائجة';

  @override
  String get topRatedSeries => 'مسلسلات الأعلى تقييمًا';

  @override
  String get mostFavouriteSeries => 'المسلسلات الأكثر إضافة للمفضلة';

  @override
  String get popularAnime => 'أنمي مشهور';

  @override
  String get trendingManhwa => 'مانهوا رائجة';

  @override
  String get trendingNovels => 'روايات رائجة';

  @override
  String get topRatedManga => 'مانجا الأعلى تقييمًا';

  @override
  String get mostFavouriteManga => 'المانجا الأكثر إضافة للمفضلة';

  @override
  String get popularManga => 'مانجا مشهورة';

  @override
  String get topMovies => 'أفضل الأفلام';

  @override
  String get topOna => 'أفضل ONA';

  @override
  String get topOva => 'أفضل OVA';

  @override
  String get mostPopular => 'الأكثر شعبية';

  @override
  String get mostFavourite => 'الأكثر إضافة للمفضلة';

  @override
  String get upcoming => 'قريبًا';

  @override
  String get topManga => 'أفضل المانجا';

  @override
  String get topManhwa => 'أفضل المانهوا';

  @override
  String get topManhua => 'أفضل المانها';

  @override
  String get topNovels => 'أفضل الروايات';

  @override
  String get topOneShots => 'أفضل الأعمال القصيرة';

  @override
  String get trendingMoviesToday => 'أفلام رائجة اليوم';

  @override
  String get trendingShowsToday => 'مسلسلات رائجة اليوم';

  @override
  String get trendingMoviesWeek => 'أفلام رائجة هذا الأسبوع';

  @override
  String get trendingShowsWeek => 'مسلسلات رائجة هذا الأسبوع';

  @override
  String get mostWatchedMoviesMonth => 'الأفلام الأكثر مشاهدة هذا الشهر';

  @override
  String get mostWatchedShowsMonth => 'المسلسلات الأكثر مشاهدة هذا الشهر';

  @override
  String get trendingThisWeek => 'رائج هذا الأسبوع';

  @override
  String get mostWatchedThisMonth => 'الأكثر مشاهدة هذا الشهر';

  @override
  String get repoLinksAdded => 'تمت إضافة روابط المستودع بنجاح!';

  @override
  String repoLinkConfirm(String url) {
    return 'إضافة هذا المستودع؟\n\n$url\n\nأضف المستودعات فقط من المصادر التي تثق بها.';
  }

  @override
  String get errorGettingAnilistData => 'خطأ في جلب البيانات من AniList.';

  @override
  String get navInfo => 'معلومات';

  @override
  String get navComments => 'التعليقات';

  @override
  String get playerNotAvailable => 'المشغّل غير متاح بعد';

  @override
  String deepLinkInitialError(String error) {
    return 'خطأ في جلب الرابط العميق الأولي: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'خطأ في فتح الرابط: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'هذا الرابط ما ينفتح: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'خطأ في فتح الرابط: $error';
  }

  @override
  String get progress => 'التقدّم';

  @override
  String get notes => 'ملاحظات';

  @override
  String serviceNotFound(String id) {
    return 'الخدمة \"$id\" غير موجودة';
  }

  @override
  String get glassEffectEnabled => 'تم تفعيل تأثير الزجاج';

  @override
  String get glassEffectDisabled => 'تم إيقاف تأثير الزجاج';

  @override
  String get materialYouEnabled => 'تم تفعيل Material You';

  @override
  String get materialYouDisabled => 'تم إيقاف Material You';

  @override
  String get darkModeEnabled => 'تم تفعيل الوضع الداكن';

  @override
  String get darkModeDisabled => 'تم إيقاف الوضع الداكن';

  @override
  String get animeList => 'قائمة الأنمي';

  @override
  String get mangaList => 'قائمة المانجا';

  @override
  String ownerAnimeList(String owner) {
    return 'قائمة أنمي $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'قائمة مانجا $owner';
  }

  @override
  String get loadingList => 'جارٍ تحميل القائمة';

  @override
  String get earlier => 'سابقًا';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'قبل $count يومًا',
      few: 'قبل $count أيام',
      two: 'قبل يومين',
      one: 'قبل يوم',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'قبل $count ساعة',
      few: 'قبل $count ساعات',
      two: 'قبل ساعتين',
      one: 'قبل ساعة',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'قبل $count دقيقة',
      few: 'قبل $count دقائق',
      two: 'قبل دقيقتين',
      one: 'قبل دقيقة',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'قبل $count د';
  }

  @override
  String hoursAgoShort(int count) {
    return 'قبل $count س';
  }

  @override
  String daysAgoShort(int count) {
    return 'قبل $count ي';
  }

  @override
  String weeksAgoShort(int count) {
    return 'قبل $count أ';
  }

  @override
  String get couldntLoadSource => 'ما قدرنا نحمّل هذا المصدر';

  @override
  String get followers => 'المتابِعون';

  @override
  String couldntLoadTitle(String title) {
    return 'ما قدرنا نحمّل $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ما قدرنا نحمّل هذا الملف الشخصي';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get feed => 'الخلاصة';

  @override
  String get stats => 'الإحصائيات';

  @override
  String get received => 'المستلمة';

  @override
  String get sent => 'المرسلة';

  @override
  String get global => 'عام';

  @override
  String get couldntLoadPage => 'ما قدرنا نحمّل هذه الصفحة';

  @override
  String get couldntLoadAllDetails => 'ما قدرنا نحمّل كل التفاصيل';

  @override
  String get series => 'مسلسلات';

  @override
  String get studios => 'الاستوديوهات';

  @override
  String get users => 'المستخدمون';

  @override
  String repositoriesTitle(String type) {
    return 'مستودعات $type';
  }

  @override
  String get repositoryUrl => 'رابط المستودع';

  @override
  String get downloadingRepository => 'جارٍ تنزيل المستودع…';

  @override
  String get noRepositories => 'ما تمت إضافة مستودعات';

  @override
  String repoExtensionsCount(String count) {
    return '$count إضافات';
  }

  @override
  String get searchExtensions => 'ابحث في الإضافات...';

  @override
  String deletePluginTitle(String name) {
    return 'تحذف $name؟';
  }

  @override
  String get deletePluginMessage => 'متأكد أنك تريد حذف هذه الإضافة؟';

  @override
  String pluginDeleted(String name) {
    return 'تم حذف $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name غير متوفرة في المستودع المضبوط';
  }

  @override
  String get pluginFetchFailed => 'فشل جلب معلومات الإضافة';

  @override
  String installPluginTitle(String name) {
    return 'تثبيت $name';
  }

  @override
  String get installedState => 'مثبّتة';

  @override
  String updatePluginTitle(String name) {
    return 'تحديث $name';
  }

  @override
  String get errorLabel => 'خطأ:';

  @override
  String get stackTraceDetails => 'التفاصيل (Stack Trace)';

  @override
  String get shareLogFile => 'شارك ملف السجل';

  @override
  String get copyLogs => 'انسخ السجلات';

  @override
  String noListToEdit(String service) {
    return '$service ما عنده قائمة للتعديل';
  }

  @override
  String get couldNotReadFile => 'ما قدرنا نقرأ هذا الملف';

  @override
  String importedSummary(int anime, int manga) {
    return 'تم استيراد $anime أنمي و$manga مانجا';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count موجودة مسبقًا';
  }

  @override
  String get airingNow => 'يُعرض الآن';

  @override
  String get topRatedMovies => 'أفلام الأعلى تقييمًا';

  @override
  String get koreanDramas => 'دراما كورية';

  @override
  String get chineseDramas => 'دراما صينية';

  @override
  String get japaneseDramas => 'دراما يابانية';

  @override
  String get thaiDramas => 'دراما تايلندية';

  @override
  String get turkishDramas => 'دراما تركية';

  @override
  String get miniSeries => 'مسلسلات قصيرة';

  @override
  String get topRatedShows => 'مسلسلات الأعلى تقييمًا';

  @override
  String get recommendedSection => 'موصى به';

  @override
  String get syncRow => 'مزامنة القوائم';

  @override
  String get syncRowDesc => 'انسخ قائمة خدمة واحدة إلى حساباتك الأخرى';

  @override
  String get syncTitle => 'مزامنة';

  @override
  String get syncMainService => 'الخدمة الرئيسية';

  @override
  String get syncMainServiceDesc =>
      'قائمتها هي المرجع؛ وكل الخدمات الأخرى المسجّل دخولها تتحدث لتطابقها';

  @override
  String get syncAuto => 'مزامنة تلقائية';

  @override
  String get syncAutoDesc =>
      'اجلب وزامن في الخلفية عند فتح التطبيق وكل 30 دقيقة';

  @override
  String get syncAddMissing => 'إضافة المدخلات الناقصة';

  @override
  String get syncAddMissingDesc =>
      'أضف كمان المدخلات اللي ما عند الخدمة الثانية';

  @override
  String get syncDelete => 'احذف ما لا تملكه الخدمة الرئيسية';

  @override
  String get syncDeleteDesc =>
      'قم بإزالة الإدخالات من الخدمات الأخرى غير الموجودة في القائمة الرئيسية. تتم إزالة الإدخالات التي يمكن مطابقتها للعنوان فقط، لذلك تبقى أشياء مثل أفلام ومسلسلات Simkl';

  @override
  String get syncDeleteTitle => 'هل تريد حذف الإدخالات؟';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count الإدخالات',
      one: '1 دخول',
    );
    return '$_temp0 سيتم حذف الخدمات غير الموجودة في قائمتك الرئيسية من الخدمات الأخرى. لا يمكن التراجع عن هذا.';
  }

  @override
  String get syncDeleteAction => 'حذف';

  @override
  String get syncToDelete => 'للحذف';

  @override
  String get syncDeletedNote => 'سيتم حذفها';

  @override
  String get syncOnlyForward => 'إبقاء التقدّم الأعلى';

  @override
  String get syncOnlyForwardDesc => 'لا تُنزل تقدّم خدمة متقدمة أصلًا';

  @override
  String get animePlanetWontWatch => 'لن أشاهد';

  @override
  String get animePlanetWontRead => 'لن أقرأ';

  @override
  String get animePlanetNewList => 'اسم القائمة الجديدة';

  @override
  String get syncPrivate => 'إدخالات خاصة';

  @override
  String get syncPrivateDesc =>
      'ما يجب فعله مع الإدخالات التي تحتفظ بها خاصة. الخدمة ذات الخيار الخاص تجعلهم خاصين؛ سيظهرها الآخرون علنًا';

  @override
  String get syncPrivateModeAsk => 'اسأل';

  @override
  String get syncPrivateModeSync => 'قم بمزامنتها';

  @override
  String get syncPrivateModeSkip => 'تخطيهم';

  @override
  String get syncPrivateTitle => 'إدخالات خاصة';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'إدخالات $count خاصة',
      one: '1 دخول خاص',
    );
    return '$_temp0. الخدمات ذات الخيار الخاص (AniList، Kitsu، MangaBaka) ستحصل عليها على أنها خاصة؛ الخدمات الأخرى ليس لديها خيار خاص وستعرضها للعامة. هل تريد مزامنتها؟ يتم تذكر إجابتك. قم بتغييره ضمن خيارات المزامنة.';
  }

  @override
  String get syncPrivateInclude => 'قم بمزامنتها';

  @override
  String get syncPrivateSkip => 'تخطيهم';

  @override
  String get syncFetch => 'جلب';

  @override
  String get syncFetchAgain => 'جلب مرة أخرى';

  @override
  String get syncAll => 'مزامنة الكل';

  @override
  String get syncStop => 'إيقاف';

  @override
  String get syncResume => 'استئناف';

  @override
  String get syncNothingToSync => 'هذه الخدمة ما تقدر تتزامن لهذا النوع';

  @override
  String get syncNoTargets => 'سجّل الدخول إلى خدمة ثانية للمزامنة معها';

  @override
  String get syncLoadingMap => 'جارٍ تحميل مطابقة المعرّفات';

  @override
  String get syncComparing => 'جارٍ مقارنة القوائم';

  @override
  String get syncIntro =>
      'اختر خدمة رئيسية واضغط جلب. كل خدمة تُسأل مرة واحدة عن قائمتك، ثم تُقارن بالرئيسية.';

  @override
  String get syncStateSynced => 'متزامن';

  @override
  String get syncStateOutdated => 'غير متزامن';

  @override
  String get syncStateMissing => 'ليس في القائمة';

  @override
  String get syncStateUnmapped => 'ما في تطابق';

  @override
  String syncPaused(String time) {
    return 'بانتظار حد الطلبات، يكمل بعد $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count فقط على $name، ما تغيّر';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done من $total';
  }

  @override
  String get syncNothingHere => 'ما في شيء للعرض';

  @override
  String syncLimits(int used, int max, String window) {
    return 'استُخدم $used من $max طلب في هذه ال$window';
  }

  @override
  String get syncMinute => 'دقيقة';

  @override
  String get syncDay => 'يوم';

  @override
  String get syncNotInList => 'ليس في القائمة بعد';

  @override
  String get syncCleared => 'تم مسح الخطة';

  @override
  String get syncClear => 'مسح';

  @override
  String get syncOptions => 'الخيارات';

  @override
  String get syncShared => 'يشارك مدخلته مع عنصر آخر';

  @override
  String syncNotFound(String service) {
    return 'غير موجود على $service';
  }

  @override
  String syncService(String service, int count) {
    return 'مزامنة $service ($count)';
  }

  @override
  String get syncOnEdit => 'مزامنة التغييرات فورًا';

  @override
  String get syncOnEditDesc =>
      'أرسل كل تحديث للتقدّم وكل تعديل على القوائم إلى خدماتك الأخرى المسجّل دخولها فورًا';

  @override
  String syncRemoved(String services) {
    return 'تمت الإزالة من $services';
  }

  @override
  String syncPushed(String services) {
    return 'تمت المزامنة مع $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'تجاوزت حد الطلبات، جرّب بعد قليل';

  @override
  String get syncAhead => 'الأكثر تقدّمًا';

  @override
  String get syncAheadDesc =>
      'باتجاهين: لكل عنوان تفوز المدخلة الأكثر تقدّمًا وتُنسخ إلى كل خدماتك الأخرى';

  @override
  String syncAheadFrom(String service) {
    return 'من $service';
  }

  @override
  String get syncConfirm => 'راجِع قبل المزامنة';

  @override
  String get syncConfirmDesc =>
      'اعرض ما ستغيّره \"مزامنة الكل\" وكم طلبًا تحتاج';

  @override
  String get syncPreviewTitle => 'جاهز للمزامنة';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates تحديثات، $adds للإضافة';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'حوالي $count طلب';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count معرّفات تحتاج بحثًا أولًا';
  }

  @override
  String get syncPreviewNothing => 'ما في شيء لتغييره';

  @override
  String get syncStart => 'ابدأ';

  @override
  String get syncRetry => 'إعادة المحاولة';

  @override
  String get syncSkip => 'تخطَّ هذا العنصر';

  @override
  String get syncInclude => 'أدرج هذا العنصر مرة أخرى';

  @override
  String get syncSkippedLabel => 'تم التخطي';

  @override
  String get syncChanges => 'الاختلافات';

  @override
  String get syncChangeStatus => 'الحالة';

  @override
  String get syncChangeProgress => 'التقدّم';

  @override
  String get syncChangeScore => 'التقييم';

  @override
  String get syncChangeDates => 'التواريخ';

  @override
  String get syncChangeRepeat => 'عدد إعادات المشاهدة';

  @override
  String get syncFailedReason => 'سبب الفشل';

  @override
  String get syncSkippedHint =>
      'العناصر المتخطّاة تُترك كما هي، حتى بعد الجلب مرة أخرى';

  @override
  String get commentsRules => 'قواعد التعليق';

  @override
  String get commentsRulesBody =>
      'أي قاعدة تكسرها = تُطرد\n\n1. ممنوع العنصرية والتمييز وخطاب الكراهية\n2. ممنوع السبام والترويج الذاتي\n3. ممنوع منعًا باتًا أي محتوى NSFW\n4. الإنجليزية فقط، بدون استثناءات\n5. ممنوع انتحال الشخصية والمضايقة والإساءة\n6. ممنوع المحتوى غير القانوني أو الإساءة الشديدة لأي فاندوم\n7. لا تطلب أو تشارك مستودعات أو إضافات\n8. السبويلر فقط بوسم السبويلر وتحذير\n9. ممنوع التعليقات الجنسية أو غير اللائقة عن الشخصيات القاصرة\n10. إذا كان خطأ، لا تنشره!';

  @override
  String get commentsRulesAccept => 'فهمت';

  @override
  String get commentsSortNewest => 'الأحدث';

  @override
  String get commentsSortOldest => 'الأقدم';

  @override
  String get commentsSortHighest => 'الأعلى تقييمًا';

  @override
  String get commentsSortLowest => 'الأقل تقييمًا';

  @override
  String commentsEpisodeShort(int number) {
    return 'ح$number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ف$number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'تصفية حسب الحلقة';

  @override
  String get commentsFilterChapterTitle => 'تصفية حسب الفصل';

  @override
  String get commentsFilterTagTitle => 'أدخل رقم حلقة أو فصل';

  @override
  String get commentsFilterHint => 'الرقم';

  @override
  String get commentsFilterApply => 'تصفية';

  @override
  String get commentsFilterClear => 'عرض الكل';

  @override
  String get commentsPlaceholder => 'أضف تعليقًا…';

  @override
  String commentsReplyingTo(String name) {
    return 'ترد على $name';
  }

  @override
  String get commentsSend => 'إرسال';

  @override
  String get commentsTagButton => 'وسم';

  @override
  String commentsTagTitle(String label) {
    return 'وسم $label (اختياري)';
  }

  @override
  String get commentsTagEpisode => 'حلقة';

  @override
  String get commentsTagChapter => 'فصل';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'رقم $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'الوسم لا يمكن أن يتجاوز المجموع ($total)';
  }

  @override
  String get commentsNoTag => 'بدون وسم';

  @override
  String get commentsSpoiler => 'سبويلر';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'ابحث عن GIF';

  @override
  String get commentsGifEmpty => 'ما لقينا GIF';

  @override
  String get commentsEmptyText => 'التعليق لا يمكن أن يكون فارغًا';

  @override
  String get commentsBannedYou => 'أنت محظور من التعليق';

  @override
  String get commentsEdited => 'تم تعديل التعليق';

  @override
  String get commentsDeleted => 'تم حذف التعليق';

  @override
  String get commentsDeletedPlaceholder => '[محذوف]';

  @override
  String get commentsReported => 'تم الإبلاغ عن التعليق';

  @override
  String get commentsUserBanned => 'تم حظر المستخدم';

  @override
  String get commentsReport => 'إبلاغ';

  @override
  String get commentsReportAsk => 'تبلّغ المشرفين عن هذا التعليق؟';

  @override
  String get commentsDelete => 'حذف';

  @override
  String get commentsDeleteAsk => 'سيُحذف هذا التعليق للجميع.';

  @override
  String get commentsBan => 'حظر';

  @override
  String get commentsBanAsk => 'تحظر هذا المستخدم من التعليق؟';

  @override
  String get commentsCopy => 'نسخ';

  @override
  String get commentsViewReply => 'عرض رد واحد';

  @override
  String commentsViewReplies(int count) {
    return 'عرض $count ردود';
  }

  @override
  String get commentsHideReplies => 'إخفاء الردود';

  @override
  String get commentsLoadMore => 'تحميل المزيد من التعليقات';

  @override
  String get commentsEmpty => 'ما في تعليقات لحد الآن. كن أول واحد!';

  @override
  String get commentsEmptyFiltered => 'ما في تعليقات لهذا الفلتر';

  @override
  String get commentsSignIn =>
      'سجّل الدخول إلى AniList لقراءة التعليقات وكتابتها';

  @override
  String get commentsSignInMessage =>
      'التعليقات مشتركة بين كل الخدمات وتستخدم حسابك في AniList.';

  @override
  String get commentsUnavailable => 'التعليقات غير متاحة لهذا العنوان';

  @override
  String get commentsUnavailableMessage =>
      'ما قدرنا نطابقه مع مدخلة في AniList.';

  @override
  String get commentsDisabled => 'التعليقات متوقفة';

  @override
  String get commentsDisabledMessage =>
      'تقدر تفعّلها من جديد من الإعدادات › عام.';

  @override
  String get commentsOffline => 'ما قدرنا نحمّل التعليقات';

  @override
  String get commentsSingleTitle => 'عرض تعليق واحد';

  @override
  String get commentsShowAll => 'عرض كل التعليقات';

  @override
  String get commentsSettingsHeader => 'التعليقات';

  @override
  String get commentsSettingEnabled => 'التعليقات';

  @override
  String get commentsSettingEnabledDesc =>
      'اعرض تبويب التعليقات في العناوين وسجّل الدخول لخادم التعليقات بحسابك في AniList';

  @override
  String get commentsSettingAlerts => 'إشعارات الردود';

  @override
  String get commentsSettingAlertsDesc => 'نبّهني عندما يرد أحد على تعليقاتي';

  @override
  String get commentsNoticeReplyTitle => 'رد جديد على تعليق';

  @override
  String commentsNoticeReply(String name) {
    return '$name رد على تعليقك';
  }

  @override
  String get commentsNoticeWarningTitle => 'وصلك تحذير';

  @override
  String get commentsNoticeWarning => 'كن أكثر تروّيًا في تعليقاتك';

  @override
  String get commentsNoticeUpdateTitle => 'تحديث من Dantotsu';

  @override
  String get barcodeTitle => 'امسح باركود';

  @override
  String get barcodeTooltip => 'ابحث عن مانجا أو رواية من الباركود';

  @override
  String get barcodeIntro =>
      'وجّه الكاميرا نحو الباركود على ظهر المجلد، أو اكتب رقم ISBN.';

  @override
  String get barcodeIntroManual =>
      'اكتب رقم ISBN المطبوع فوق الباركود على ظهر المجلد.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'هذا ISBN غير صالح';

  @override
  String barcodeNotFound(String isbn) {
    return 'ما لقينا كتابًا لـ $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'الكاميرا غير متاحة. اسمح بالوصول للكاميرا أو اكتب ISBN بدلًا منها.';

  @override
  String get themesTitle => 'المقدمات والخواتيم';

  @override
  String get themesPlayVideo => 'تشغيل الفيديو';

  @override
  String get themesPlayAudio => 'تشغيل الصوت فقط';

  @override
  String get themesOpenSite => 'افتح على AnimeThemes';

  @override
  String get themesCredit => 'مقاطع من AnimeThemes';

  @override
  String get themesVersions => 'النسخ';

  @override
  String get sauceTitle => 'اعثر على المصدر';

  @override
  String get sauceIntro =>
      'ارفع صفحة مانجا أو عملًا فنيًا، أو الصق رابطه، لتعرف من أين هو.';

  @override
  String get sauceKeyTitle => 'مفتاح SauceNAO API';

  @override
  String get sauceKeyHint => 'اختياري، يرفع حد البحث اليومي';

  @override
  String get sauceKeyDesc => 'احصل على مفتاح مجاني من saucenao.com/user.php';

  @override
  String get sauceOpen => 'افتح المصدر';

  @override
  String get sauceCredit => 'البحث بالصور من SauceNAO';

  @override
  String get sauceEmpty => 'ما في تطابق';

  @override
  String get sauceTooltip => 'اعثر على مصدر صفحة مانجا أو عمل فني';

  @override
  String get trendzTitle => 'مخططات الأنمي';

  @override
  String get trendzAnime => 'أنمي';

  @override
  String get trendzFemale => 'شخصيات نسائية';

  @override
  String get trendzMale => 'شخصيات رجالية';

  @override
  String get trendzCouple => 'الثنائيات';

  @override
  String get trendzCredit => 'مخططات أسبوعية من AniTrendz';

  @override
  String get trendzNew => 'جديد';

  @override
  String get trendzEmpty => 'المخطط فارغ';

  @override
  String get shareCard => 'مشاركة البطاقة';

  @override
  String get shareCardList => 'مشاركة بطاقة القائمة';

  @override
  String get shareCardSaved => 'تم حفظ البطاقة';

  @override
  String get shareCardFailed => 'ما قدرنا ننشئ البطاقة';

  @override
  String get shareCardListEmpty => 'قائمتك ما فيها شيء للمشاركة لحد الآن';

  @override
  String get shareCardTop => 'اختياراتي المفضلة';

  @override
  String themesEpisodes(String eps) {
    return 'الحلقات $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'تطابق $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'الأسبوع $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count صوت';
  }

  @override
  String trendzPeak(String rank) {
    return 'الذروة #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count أسابيع ضمن العشرة الأوائل';
  }

  @override
  String get imageSearchTitle => 'البحث بالصورة';

  @override
  String get imageSearchTooltip => 'اعثر على أنمي من لقطة شاشة';

  @override
  String get imageSearchIntro =>
      'اختر لقطة شاشة أو الصق رابط صورة، وtrace.moe يجد الحلقة واللحظة اللي أُخذت منها.';

  @override
  String get imageSearchPick => 'اختر صورة';

  @override
  String get imageSearchLinkHint => 'الصق رابط صورة';

  @override
  String get imageSearchGo => 'بحث';

  @override
  String get imageSearchEmpty => 'ما في تطابق';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'الحلقة $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'عند $time';
  }

  @override
  String get imageSearchPreview => 'مقطع معاينة';

  @override
  String imageSearchSimilarity(int percent) {
    return 'تطابق $percent%';
  }

  @override
  String get imageSearchCredit => 'بدعم من trace.moe';

  @override
  String get imageSearchOpenFailed => 'ما قدرنا نفتح هذا العنوان';

  @override
  String get groups => 'المجموعات';

  @override
  String get groupsYours => 'مجموعاتك';

  @override
  String get groupsPopular => 'الأشهر';

  @override
  String get groupsNew => 'جديد';

  @override
  String get groupsFeatured => 'مميزة';

  @override
  String get groupsSearch => 'ابحث في المجموعات';

  @override
  String get groupsAll => 'الكل';

  @override
  String get groupsEmpty => 'ما لقينا مجموعات';

  @override
  String get groupsEmptyYours => 'ما انضممت لأي مجموعة لحد الآن';

  @override
  String get groupsSignIn => 'سجّل الدخول لرؤية المجموعات التي انضممت إليها';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عضوًا',
      few: '$count أعضاء',
      two: 'عضوان',
      one: 'عضو واحد',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'انضمام';

  @override
  String get groupsJoined => 'منضم';

  @override
  String get groupsLeave => 'مغادرة المجموعة';

  @override
  String get groupsLeaveAsk =>
      'لن ترى منشورات هذه المجموعة في خلاصتك بعد الآن.';

  @override
  String get groupsJoinFailed =>
      'ما قدرنا ننضم لهذه المجموعة، ممكن تكون بدعوة فقط';

  @override
  String get groupsLeaveFailed => 'ما قدرنا نغادر هذه المجموعة';

  @override
  String get groupsPosts => 'المنشورات';

  @override
  String get groupsMembersTab => 'الأعضاء';

  @override
  String get groupsAbout => 'حول';

  @override
  String get groupsRules => 'القواعد';

  @override
  String get groupsPrivacyOpen => 'مفتوحة';

  @override
  String get groupsPrivacyRestricted => 'مقيّدة';

  @override
  String get groupsPrivacyClosed => 'مغلقة';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'مدير';

  @override
  String get groupsRoleMod => 'مشرف';

  @override
  String get groupsCouldntLoad => 'ما قدرنا نحمّل هذه المجموعة';

  @override
  String get groupsNewPost => 'انشر في المجموعة';

  @override
  String get groupsPostHint => 'شارك شيئًا مع المجموعة';

  @override
  String get groupsOpenInBrowser => 'افتح في المتصفح';

  @override
  String get groupsCategory => 'الفئة';

  @override
  String get groupsLanguage => 'اللغة';

  @override
  String get groupsCreated => 'تاريخ الإنشاء';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count قائدًا',
      few: '$count قادة',
      two: 'قائدان',
      one: 'قائد واحد',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'الخصوصية';

  @override
  String get notificationsAll => 'الكل';

  @override
  String get notificationsAiring => 'قيد العرض';

  @override
  String get notificationsMedia => 'عناوين جديدة';

  @override
  String get notificationsReplies => 'الردود';

  @override
  String get notificationsMentions => 'الإشارات';

  @override
  String get notificationsMessages => 'الرسائل';

  @override
  String get notificationsLikes => 'الإعجابات';

  @override
  String get notificationsFollows => 'المتابعات';

  @override
  String get notificationsNoServices => 'ما في خدمة مسجّل دخولها عندها إشعارات';

  @override
  String get notificationsNoServicesMessage =>
      'سجّل الدخول إلى خدمة ترسل إشعارات وستظهر هنا.';

  @override
  String get notificationsEmptyKind => 'ما في شيء في هذه الفئة لحد الآن';

  @override
  String get notificationsCommentsEmpty => 'ما في إشعارات تعليقات';

  @override
  String get notificationsCommentsEmptyMessage =>
      'الردود على تعليقاتك وإعلانات Dantotsu تظهر هنا.';

  @override
  String get notificationsSettings => 'إعدادات الإشعارات';

  @override
  String get notificationsPollTitle => 'افحص الإشعارات الجديدة';

  @override
  String notificationsPollDesc(int minutes) {
    return 'كل $minutes دقيقة والتطبيق مفتوح';
  }

  @override
  String get notificationsNotifyAbout => 'نبّهني بخصوص';

  @override
  String get notificationsCommentsHeader => 'إشعارات التعليقات';

  @override
  String systemNotificationsDescFor(String service) {
    return 'اعرض إشعار نظام لكل إشعار $service غير مقروء أثناء تشغيل التطبيق.';
  }

  @override
  String get notificationsTestSent => 'تم إرسال إشعار تجريبي';

  @override
  String get notificationsTestDenied =>
      'الإشعارات غير مسموحة لـ Dartotsu. فعّلها من إعدادات النظام.';

  @override
  String get notificationsTestHint => 'اضغط مطولًا لإرسال إشعار تجريبي';

  @override
  String get notificationsTestSample => 'هذا إشعار تجريبي';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name رد على تعليقك في $media';
  }

  @override
  String get imageSearchNotLink => 'هذا ما يبدو رابطًا';

  @override
  String get imageSearchQuota => 'تجاوزت حصة البحث';

  @override
  String get imageSearchBusy => 'طلبات كثيرة، جرّب بعد قليل';

  @override
  String imageSearchFailed(int code) {
    return 'فشل البحث ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count إشعارات جديدة';
  }

  @override
  String get reactionsTitle => 'ردود الفعل';

  @override
  String get reactionsNeedEntry => 'أضف هذا العنوان لقائمتك قبل التفاعل';

  @override
  String get reactionsAdd => 'أضف رد فعل';

  @override
  String get reactionsHint => 'ما رأيك؟ (قصير وبدون سبويلر)';

  @override
  String get reactionsPost => 'نشر';

  @override
  String get reactionsFailed => 'ما قدرنا نحدّث رد الفعل';

  @override
  String get settingsWatch => 'شاهد واقرأ';

  @override
  String get settingsWatchDesc =>
      'قوائم الحلقات ومطابقة المصادر وتفاصيل الحلقات';

  @override
  String get watchSettingsLayout => 'قائمة الحلقات';

  @override
  String get watchSettingsSources => 'المصادر';

  @override
  String get watchSettingsMetadata => 'تفاصيل الحلقات';

  @override
  String get watchLayout => 'التخطيط';

  @override
  String get watchListView => 'قائمة';

  @override
  String get watchGridView => 'شبكة';

  @override
  String get watchCompactView => 'مضغوط';

  @override
  String get watchDefaultLayoutDesc =>
      'كيف تُرتّب الحلقات والفصول إلى أن تغيّرها لعنوان معيّن';

  @override
  String get watchChunkSize => 'حجم النطاق';

  @override
  String get watchChunkSizeDesc => 'كم حلقة أو فصلًا يحتوي كل تبويب نطاق';

  @override
  String get watchShowDescription => 'عرض الأوصاف';

  @override
  String get watchShowDescriptionDesc =>
      'اعرض ملخص الحلقة تحت كل عنوان في تخطيط القائمة';

  @override
  String get watchShowFiller => 'عرض حلقات الحشو';

  @override
  String get watchShowFillerDesc => 'أوقفه لإخفاء الحلقات المعلّمة كحشو';

  @override
  String get watchBlurUnwatched => 'إخفاء صور السبويلر المصغّرة';

  @override
  String get watchBlurUnwatchedDesc =>
      'غبّش الصورة المصغّرة للحلقات التي لم تشاهدها بعد';

  @override
  String get watchResumeShelf => 'رف الاستئناف';

  @override
  String get watchResumeShelfDesc => 'اعرض صف الاستئناف في الرئيسية';

  @override
  String get watchMarkOnLongPress => 'الضغط المطول يعلّم التقدّم';

  @override
  String get watchMarkOnLongPressDesc =>
      'اضغط مطولًا على حلقة أو فصل لتعليمه كمشاهَد أو غير مشاهَد';

  @override
  String get watchMatching => 'مطابقة المصدر';

  @override
  String get watchMatchingDesc =>
      '\"الأقرب\" يأخذ أفضل نتيجة بحث. \"مطابق تمامًا\" يقبل فقط عنوانًا شبه مطابق ويترك الباقي لك لتختاره.';

  @override
  String get watchMatchClosest => 'الأقرب تطابقًا';

  @override
  String get watchMatchExact => 'مطابق تمامًا فقط';

  @override
  String get watchMetadataDesc =>
      'من أين تأتي عناوين الحلقات وملخصاتها وصورها المصغّرة وتواريخ عرضها وعلامات الحشو. اسحب لتحديد الأولوية؛ أول مصدر عنده قيمة يفوز.';

  @override
  String get watchMetaAniZipDesc =>
      'عناوين الحلقات والملخصات واللقطات وتواريخ العرض';

  @override
  String get watchMetaKitsuDesc => 'عناوين الحلقات والأوصاف والصور المصغّرة';

  @override
  String get watchMetaSimklDesc =>
      'عناوين الحلقات والأوصاف واللقطات وتواريخ العرض';

  @override
  String get watchMetaAniListDesc =>
      'عناوين حلقات البث والصور المصغّرة وجدول العرض';

  @override
  String get watchMetaTenraiDesc =>
      'عناوين حلقات MyAnimeList وتواريخ العرض وعلامات الحشو والملخصات عبر Tenrai';

  @override
  String get watchClearMetadata => 'تحديث تفاصيل الحلقات';

  @override
  String get watchClearMetadataDesc =>
      'انسَ تفاصيل الحلقات المخزّنة لتُجلب من جديد';

  @override
  String get watchMetadataCleared => 'ستُجلب تفاصيل الحلقات من جديد';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count حلقة',
      few: '$count حلقات',
      two: 'حلقتان',
      one: 'حلقة واحدة',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فصلًا',
      few: '$count فصول',
      two: 'فصلان',
      one: 'فصل واحد',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'الحلقة $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'الفصل $number';
  }

  @override
  String get watchSearching => 'جارٍ البحث…';

  @override
  String watchSearchingFor(String term) {
    return 'جارٍ البحث: $term';
  }

  @override
  String watchSelected(String title) {
    return 'المحدد: $title';
  }

  @override
  String watchFound(String title) {
    return 'تم العثور على: $title';
  }

  @override
  String get watchNothingFound => 'ما لقينا شيئًا في هذا المصدر';

  @override
  String get watchSearchFailed => 'فشل البحث في المصدر';

  @override
  String get watchLoadFailed => 'ما قدرنا نحمّل القائمة';

  @override
  String get watchSignInToTrack => 'سجّل الدخول لتتبّع تقدّمك';

  @override
  String watchInstallSource(String action) {
    return 'ثبّت إضافة لتبدأ $action';
  }

  @override
  String get watchSourceMissing => 'هذا المصدر غير مثبّت';

  @override
  String get watchWrongTitle => 'العنوان غلط؟';

  @override
  String get watchSearchAgain => 'ابحث مرة أخرى';

  @override
  String watchSearchSource(String source) {
    return 'ابحث في $source';
  }

  @override
  String get watchSource => 'المصدر';

  @override
  String get sourceTags => 'العلامات';

  @override
  String get sourceTagsHint =>
      'ضع علامة على ما هو هذا المصدر ل. يسرد العنوان المصادر الموسومة به أولاً، ثم المصادر غير الموسومة. أكثر من 18 مصدرًا تظهر فقط لعناوين البالغين.';

  @override
  String get sourceTagAnime => 'أنيمي';

  @override
  String get sourceTagMovies => 'أفلام ومسلسلات';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'مخفية بواسطة العلامات';

  @override
  String get watchOptions => 'الخيارات';

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
  String get watchReverse => 'عكس الترتيب';

  @override
  String get watchScanlators => 'المجموعات';

  @override
  String get watchResetOptions => 'إعادة ضبط هذه الخيارات';

  @override
  String get watchContinue => 'متابعة';

  @override
  String get watchStart => 'ابدأ';

  @override
  String get watchPlay => 'تشغيل';

  @override
  String get watchRead => 'اقرأ';

  @override
  String get watchMarkWatched => 'علّم كمشاهَد';

  @override
  String get watchMarkUnwatched => 'علّم كغير مشاهَد';

  @override
  String get watchMarkRead => 'علّم كمقروء';

  @override
  String get watchMarkUnread => 'علّم كغير مقروء';

  @override
  String get watchFiller => 'حشو';

  @override
  String get watchRecap => 'ملخص';

  @override
  String get watchNoEpisodes => 'ما لقينا حلقات';

  @override
  String get watchNoChapters => 'ما لقينا فصولًا';

  @override
  String get watchSourceTools => 'أدوات المصدر';

  @override
  String get watchSourceSettings => 'إعدادات المصدر';

  @override
  String get watchOpenWebView => 'افتح في عرض الويب';

  @override
  String get watchOpenWebViewDesc =>
      'حلّ فحص Cloudflare أو سجّل الدخول؛ الكوكيز تُشارك مع طلبات المصدر';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كوكي محفوظ لـ $host',
      few: '$count كوكيز محفوظة لـ $host',
      two: 'كوكيان محفوظان لـ $host',
      one: 'كوكي واحد محفوظ لـ $host',
      zero: 'ما في كوكيز محفوظة لـ $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'تصريح Cloudflare فعّال، $time';
  }

  @override
  String get watchClearanceMissing => 'ما في كوكي تصريح Cloudflare';

  @override
  String get watchClearanceSession => 'يستمر حتى إغلاق التطبيق';

  @override
  String get watchAgentShared =>
      'الطلبات تستخدم user agent الخاص بعرض الويب، وCloudflare يفحصه';

  @override
  String get watchAgentCustom =>
      'تم ضبط user agent مخصص، لذا قد يُرفض تصريح Cloudflare من عرض الويب';

  @override
  String get watchTestConnection => 'اختبار الاتصال';

  @override
  String get watchSolveChallenge => 'حلّه';

  @override
  String watchProbeOk(int code) {
    return 'يمكن الوصول إليه (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ما زال يطلب فحصًا';

  @override
  String watchProbeBlocked(int code) {
    return 'الموقع حظرك (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ما قدرنا نصل إلى الموقع';

  @override
  String get watchClearCookies => 'مسح الكوكيز لهذا الموقع';

  @override
  String get watchCookiesCleared => 'تم مسح الكوكيز';

  @override
  String get watchFailTimeout => 'لم ينته الشيك في الوقت المناسب';

  @override
  String get watchFailBlocked =>
      'قام الموقع بحظر هذا الجهاز (تم رفض الوصول). الشيك لن يساعد';

  @override
  String get watchFailTurnstile =>
      'يحتاج هذا الفحص إلى نقرة لا يستطيع حل الخلفية القيام بها';

  @override
  String get watchFailLoad =>
      'لم يتم تحميل الصفحة. تحقق من الاتصال وعنوان الموقع';

  @override
  String get watchFailRejected =>
      'رفض الموقع التصريح الذي قدمه للتو. حاول مرة أخرى أو امسح ملفات تعريف الارتباط';

  @override
  String get watchFailDismissed => 'تم إغلاق الشيك قبل أن ينتهي';

  @override
  String get watchFailCooldown =>
      'لقد أغلقت الشيك منذ لحظة. اضغط على حل للمحاولة مرة أخرى';

  @override
  String get watchFailQuiet =>
      'الشيك يحتاج إليك، وكان التطبيق يعمل من تلقاء نفسه';

  @override
  String get watchFailWebView => 'تعذر بدء عرض الويب في الخلفية';

  @override
  String get watchFailUnavailable => 'لا توجد شاشة لإظهار الشيك';

  @override
  String get watchStatusReady => 'جاهز';

  @override
  String get watchStatusChallenge => 'مطلوب فحص Cloudflare';

  @override
  String get watchStatusBlocked => 'تم حظره من قبل الموقع';

  @override
  String get watchStatusOffline => 'لا يمكن الوصول إلى الموقع';

  @override
  String get watchStatusUntested => 'لم يتم اختباره بعد';

  @override
  String get watchStatusTesting => 'جارٍ اختبار الاتصال…';

  @override
  String get watchStatusSolving => 'اجتياز فحص Cloudflare...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'تم اجتياز فحص Cloudflare في الخلفية ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'تم اجتياز فحص Cloudflare';

  @override
  String watchClearanceIssued(String time) {
    return 'حصل $time';
  }

  @override
  String get watchClearanceStale =>
      'تم الحصول على التصريح من خلال وكيل مستخدم آخر، لذا لم يتم إرساله. اختبر الاتصال للحصول على اتصال جديد';

  @override
  String get watchSectionSession => 'جلسة';

  @override
  String get watchSectionTools => 'أدوات';

  @override
  String get watchMetaSource => 'تفاصيل الحلقات من';

  @override
  String get watchMetaAuto => 'تلقائي';

  @override
  String get watchMetaOff => 'إيقاف';

  @override
  String get playerSettingsTitle => 'إعدادات المشغّل';

  @override
  String get playerSectionPlayback => 'التشغيل';

  @override
  String get playerSectionSkip => 'التخطي';

  @override
  String get playerSectionGestures => 'عناصر التحكم';

  @override
  String get playerSectionSubtitles => 'الترجمات';

  @override
  String get playerSectionShaders => 'الشيدرز';

  @override
  String get playerSectionEngine => 'المحرك';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'سرعة التشغيل';

  @override
  String get localSource => 'الملفات المحلية';

  @override
  String get localMissing =>
      'لم يعد هذا الملف أو المجلد موجودًا في المجلد المحلي لديك';

  @override
  String get playerStickyStage => 'فيديو لزجة';

  @override
  String get playerStickyStageDesc =>
      'أبقِ الفيديو ثابتًا في الأعلى أثناء تمرير الحلقات والتعليقات أدناه';

  @override
  String get playerCursedSpeed => 'سرعات إضافية';

  @override
  String get playerCursedSpeedDesc => 'أضف سرعات تصل إلى 10x للقائمة';

  @override
  String get playerResize => 'وضع تغيير الحجم';

  @override
  String get playerFitFit => 'ملاءمة';

  @override
  String get playerFitCover => 'تغطية';

  @override
  String get playerFitStretch => 'تمديد';

  @override
  String get playerSkipDuration => 'مدة زر التخطي';

  @override
  String get playerSkipDurationDesc =>
      'الثواني التي يقفزها زر التخطي خارج المقدمات والخواتيم';

  @override
  String get playerSeekDuration => 'القفز بالنقر المزدوج';

  @override
  String get playerSeekDurationDesc =>
      'الثواني للقفز عند النقر المزدوج أو مفتاح السهم';

  @override
  String get playerAutoPlay => 'تشغيل التالي تلقائيًا';

  @override
  String get playerAutoPlayDesc => 'ابدأ الحلقة التالية عند انتهاء هذه';

  @override
  String get playerResume => 'أكمل من حيث توقفت';

  @override
  String get playerResumeDesc => 'تابع الحلقة من آخر موضع';

  @override
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

  @override
  String get playerOrientation => 'الاتجاه';

  @override
  String get playerOrientationAuto => 'اتبع الجهاز';

  @override
  String get playerOrientationLandscape => 'أفقي';

  @override
  String get playerOrientationPortrait => 'عمودي';

  @override
  String get playerAutoSkipOpening => 'تخطي المقدمات';

  @override
  String get playerAutoSkipEnding => 'تخطي الخواتيم';

  @override
  String get playerAutoSkipRecap => 'تخطي الملخصات';

  @override
  String get playerAutoSkipDesc =>
      'اقفز فوقها فور بدئها، باستخدام AniSkip والبصمات الزمنية للبث';

  @override
  String get playerDisableSkips => 'تعطيل التخطي';

  @override
  String get playerDisableSkipsDesc =>
      'لا توجد AniSkip أو الطوابع الزمنية للبث أو علامات الفصل أو تخطي عمليات الإرسال في المشغل';

  @override
  String get playerSkipOnce => 'تخطٍّ لمرة واحدة فقط';

  @override
  String get playerSkipOnceDesc =>
      'لا تتخطَّ نفس الجزء مرة ثانية إذا رجعت إليه';

  @override
  String get playerAdjustBrightness => 'إيماءة السطوع';

  @override
  String get playerAdjustBrightnessDesc =>
      'اسحب لأعلى وأسفل على النصف الأيمن من الشاشة';

  @override
  String get playerAdjustVolume => 'إيماءة الصوت';

  @override
  String get playerAdjustVolumeDesc =>
      'اسحب لأعلى وأسفل على النصف الأيسر من الشاشة';

  @override
  String get playerHoldToSpeed => 'اضغط مطولًا للتسريع';

  @override
  String get playerHoldToSpeedDesc =>
      'اضغط مطولًا على الفيديو للتشغيل بسرعة أكبر، واسحب جانبيًا لتغيير السرعة';

  @override
  String get playerThumbless => 'شريط تقديم أسمك';

  @override
  String get playerThumblessDesc => 'شريط سميك بدون مقبض';

  @override
  String get playerShowSubtitles => 'إظهار الترجمات';

  @override
  String get playerShowSubtitlesDesc => 'أوقفه لإخفاء كل مسارات الترجمة';

  @override
  String get playerSubtitleLanguage => 'لغة الترجمة المفضلة';

  @override
  String get playerSubtitleSize => 'حجم الترجمة';

  @override
  String get playerSubtitleWeight => 'سُمك الترجمة';

  @override
  String get playerSubtitleBottom => 'هامش الترجمة السفلي';

  @override
  String get playerSubtitleFont => 'خط الترجمة';

  @override
  String get playerSubtitleColor => 'لون الترجمة';

  @override
  String get playerSubtitleBackground => 'خلفية الترجمة';

  @override
  String get playerSubtitleOutline => 'حدود الترجمة';

  @override
  String get playerSubtitleOutlineWidth => 'عرض مخطط الترجمة';

  @override
  String get playerSubtitlePreview => 'معاينة الترجمة';

  @override
  String get playerSubtitlePreviewText => 'نص معاينة الترجمة';

  @override
  String get playerLibass => 'استخدام libass';

  @override
  String get playerLibassDesc =>
      'يعرض ترجمات .ass المنسّقة. الحجم واللون والخط أعلاه لن تُطبَّق حينها';

  @override
  String get playerShaders => 'الشيدرز';

  @override
  String get playerShadersEnable => 'تفعيل الشيدرز';

  @override
  String get playerShadersEnableDesc =>
      'حسّن الصورة ونظّفها بشيدرز GLSL مثل Anime4K';

  @override
  String get playerShadersOff => 'الشيدرز متوقفة';

  @override
  String get playerShadersMissing => 'Anime4K غير مثبّت';

  @override
  String get playerShadersMissingDesc =>
      'نزّل حزمة شيدرز Anime4K (حوالي 0.8 ميجابايت) لاستخدام الأوضاع المدمجة.';

  @override
  String get playerShadersDownload => 'نزّل Anime4K';

  @override
  String get playerPictureSave => 'احفظ هذا الإطار';

  @override
  String get playerPictureOriginal => 'أصلي';

  @override
  String get playerPictureOriginalDesc =>
      'الإطار كما هو موجود في الفيديو، بدون تظليل أو ألوان';

  @override
  String get playerPictureProcessed => 'مع تظليل وألوان';

  @override
  String get playerPictureProcessedDesc => 'الإطار كما ترونه الآن';

  @override
  String get playerPictureSaved => 'تم حفظ الإطار';

  @override
  String get playerPictureSaveFailed => 'لا يمكن حفظ الإطار';

  @override
  String get playerShadersPreview => 'معاينة على هذا الإطار';

  @override
  String get playerShadersUse => 'استخدم هذا';

  @override
  String get playerPicture => 'الصورة';

  @override
  String get playerColors => 'الألوان';

  @override
  String get playerColorDefault => 'افتراضي';

  @override
  String get playerColorVivid => 'زاهي';

  @override
  String get playerColorPop => 'أنمي بوب';

  @override
  String get playerColorSoft => 'ناعم';

  @override
  String get playerColorCinematic => 'سينمائي';

  @override
  String get playerColorBright => 'ساطع';

  @override
  String get playerColorNight => 'ليلي';

  @override
  String get playerColorMono => 'أحادي';

  @override
  String get playerColorCustom => 'مخصص';

  @override
  String get playerColorBrightness => 'السطوع';

  @override
  String get playerColorContrast => 'التباين';

  @override
  String get playerColorSaturation => 'التشبّع';

  @override
  String get playerColorGamma => 'غاما';

  @override
  String get playerColorHue => 'درجة اللون';

  @override
  String get playerColorReset => 'إعادة ضبط';

  @override
  String get playerColorAdjust => 'ضبط';

  @override
  String get playerShadersOriginal => 'الأصلي';

  @override
  String get playerShadersPreviewFailed => 'ما قدرنا نلتقط إطارًا للمعاينة';

  @override
  String get playerShadersSoftware =>
      'تحتاج أدوات التظليل إلى عرض الأجهزة، ويستخدم المشغل عرض البرامج. قم بإيقاف تشغيل عرض البرامج في إعدادات المشغل.';

  @override
  String get playerSoftwareRender => 'تقديم البرمجيات';

  @override
  String get playerSoftwareRenderDesc =>
      'فقط للفيديو الأسود. التظليل لا يعمل معها. ينطبق في المرة التالية التي يفتح فيها المشغل';

  @override
  String get playerShadersCustomFiles => 'شيدراتك';

  @override
  String get playerShadersCustom => 'شيدرز مخصصة';

  @override
  String get playerShadersImport => 'استيراد .glsl';

  @override
  String get playerShadersNone =>
      'استورد ملفات .glsl أو .hook الخاصة بك وعلّم عليها لربطها ببعض';

  @override
  String get playerShadersBadFile => 'اختر ملف شيدر .glsl أو .hook';

  @override
  String get playerDecoder => 'فك الترميز';

  @override
  String get playerDecoderAuto => 'تلقائي';

  @override
  String get playerDecoderAutoSafe => 'تلقائي (آمن)';

  @override
  String get playerDecoderSoftware => 'برمجي';

  @override
  String get playerDecoderHardware => 'عتادي';

  @override
  String get playerDecoderHardwarePlus => 'عتادي+';

  @override
  String get playerVideoOutput => 'مخرج الفيديو';

  @override
  String get playerAudioChannels => 'قنوات الصوت';

  @override
  String get playerBuffer => 'حجم المخزن المؤقت (ميجابايت)';

  @override
  String get playerBufferDesc =>
      'الذاكرة التي يمكن للمشغّل استخدامها لتخزين البث مؤقتًا';

  @override
  String get playerUseMpvConf => 'استخدام mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'طبّق الخيارات في mpv.conf عند بدء التشغيل';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'عدّل إعدادات mpv';

  @override
  String get playerMpvConfDesc =>
      'خيار واحد في كل سطر، مثل --hwdec=auto في mpv.conf العادي. الملفات الشخصية بين [أقواس] تُتجاهل.';

  @override
  String get playerMpvConfSaved => 'تم حفظ mpv.conf';

  @override
  String get playerUseScripts => 'استخدام سكربتات mpv';

  @override
  String get playerUseScriptsDesc =>
      'حمّل الإضافات من مجلد السكربتات. تحتاج نسخة libmpv بدعم Lua أو JavaScript';

  @override
  String get playerScripts => 'سكربتات mpv';

  @override
  String get playerScriptsManage => 'أضف الإضافات واحذفها وبدّل بينها';

  @override
  String get playerScriptsAdd => 'إضافة سكربت';

  @override
  String get playerScriptsDesc =>
      'إضافات Lua وJavaScript والأصلية الموضوعة هنا تُحمَّل عند بدء التشغيل.';

  @override
  String get playerScriptsNone => 'ما في سكربتات لحد الآن';

  @override
  String get playerScriptsBadFile => 'اختر ملف إضافة .lua أو .js أو أصلي';

  @override
  String get playerTuning => 'ضبط الفيديو المتقدم';

  @override
  String get playerTuningDesc =>
      'تجاوز المزامنة والتخزين المؤقت والتحجيم وتعيين النغمات. القيم الخاطئة قد تضر بالتشغيل';

  @override
  String get playerVideoSync => 'مزامنة الفيديو';

  @override
  String get playerInterpolation => 'استيفاء الإطارات';

  @override
  String get playerInterpolationDesc =>
      'حركة ناعمة، تحتاج مزامنة display-resample';

  @override
  String get playerPitch => 'تصحيح النبرة';

  @override
  String get playerPitchDesc => 'حافظ على طبيعية الأصوات عند السرعات الأخرى';

  @override
  String get playerCacheSeconds => 'التخزين المؤقت (ثواني)';

  @override
  String get playerReadahead => 'القراءة المسبقة (ثواني)';

  @override
  String get playerThreads => 'خيوط فك الترميز';

  @override
  String get playerDeband => 'إزالة التدرّج';

  @override
  String get playerDebandDesc => 'قلّل خطوط الألوان في التدرجات';

  @override
  String get playerDebandIterations => 'تكرارات إزالة التدرّج';

  @override
  String get playerDebandThreshold => 'حد إزالة التدرّج';

  @override
  String get playerCorrectDownscaling => 'تصغير صحيح';

  @override
  String get playerSigmoid => 'تحجيم سيغمويد';

  @override
  String get playerScale => 'المكبّر';

  @override
  String get playerCscale => 'مكبّر الكروما';

  @override
  String get playerDscale => 'المصغّر';

  @override
  String get playerToneMapping => 'تعيين النغمات';

  @override
  String get playerTargetPeak => 'الذروة المستهدفة';

  @override
  String get playerOpenFiles => 'فتح ملفات فيديو';

  @override
  String get playerOpenFilesDesc => 'شغّل ملفات من هذا الجهاز';

  @override
  String get playerOpenFolder => 'فتح مجلد';

  @override
  String get playerOpenFolderDesc => 'شغّل كل الفيديوهات في مجلد كقائمة تشغيل';

  @override
  String get playerNetworkStream => 'بث من الشبكة';

  @override
  String get playerNetworkStreamDesc => 'افتح رابط فيديو مباشر أو HLS';

  @override
  String get playerStreamUrl => 'رابط البث';

  @override
  String get playerStreamReferer => 'Referer (اختياري)';

  @override
  String get playerTorrent => 'تورنت';

  @override
  String get playerTorrentDesc => 'بث رابط magnet أو ملف .torrent';

  @override
  String get playerMagnetLink => 'رابط magnet أو رابط تورنت';

  @override
  String get playerPickTorrent => 'اختر ملف .torrent';

  @override
  String get playerTorrentMissing =>
      'ثبّت إضافة التورنت من الإعدادات > الإضافات الجانبية أولًا';

  @override
  String get playerNoVideos => 'ما لقينا فيديوهات قابلة للتشغيل';

  @override
  String get playerReset => 'إعادة ضبط إعدادات المشغّل';

  @override
  String get playerResetDesc => 'أرجع كل خيارات المشغّل إلى الافتراضي';

  @override
  String get playerResetConfirm => 'تعيد ضبط كل إعدادات المشغّل؟';

  @override
  String get playerResetDone => 'تمت إعادة ضبط إعدادات المشغّل';

  @override
  String get playerQuality => 'الجودة';

  @override
  String get streamGroupSub => 'الفرعية';

  @override
  String get streamGroupHardSub => 'الفرعية الصعبة';

  @override
  String get streamGroupSoftSub => 'لينة الفرعية';

  @override
  String get streamGroupDub => 'يصفه';

  @override
  String get streamGroupRaw => 'الخام';

  @override
  String get streamGroupOther => 'أخرى';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count التدفقات',
      one: '1 تيار',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'البثوث';

  @override
  String get playerStreamFailedNext =>
      'لن يتم تشغيل هذا البث، جارٍ تجربة البث التالي';

  @override
  String get playerAutoSelect => 'اختيار البث تلقائيًا';

  @override
  String get playerAutoSelectDesc =>
      'اختر البث الأقرب لاختيارك الأخير لهذا العنوان';

  @override
  String get playerLoadingStreams => 'جارٍ البحث عن بثوث…';

  @override
  String get playerNoStreams => 'هذه الحلقة ما فيها بثوث';

  @override
  String get playerNoStreamsTitle => 'ما لقينا بثوثًا';

  @override
  String get playerFailed => 'فشل التشغيل';

  @override
  String get playerTorrentNeeded => 'هذا البث تورنت';

  @override
  String get playerTorrentNeededDesc =>
      'ثبّت إضافة التورنت لتشغيل روابط magnet وملفات .torrent';

  @override
  String get playerOpenAddons => 'فتح الإضافات الجانبية';

  @override
  String get playerTryAnotherStream => 'جرّب بثًا آخر';

  @override
  String get playerEpisodes => 'الحلقات';

  @override
  String get playerLock => 'قفل عناصر التحكم';

  @override
  String get playerFullscreen => 'ملء الشاشة';

  @override
  String get readerChapters => 'الفصول';

  @override
  String get readerSettingsTitle => 'إعدادات القارئ';

  @override
  String get readerPreviousChapter => 'الفصل السابق';

  @override
  String get readerNextChapter => 'الفصل التالي';

  @override
  String get readerFirstChapter => 'هذا أول فصل';

  @override
  String get readerLastChapter => 'خلصت كل شيء';

  @override
  String get readerFailed => 'ما قدرنا نفتح هذا الفصل';

  @override
  String get readerOpenBook => 'افتح كتابا';

  @override
  String get readerOpenBookDesc =>
      'اقرأ ملف epub (قارئ الروايات) أو PDF (قارئ المانغا) من ملفاتك';

  @override
  String get readerNoText => 'هذا الفصل ما فيه نص';

  @override
  String get readerPerTitle => 'لهذا العنوان فقط';

  @override
  String get readerPerTitleDesc => 'احتفظ بإعدادات القارئ هذه لهذا العنوان فقط';

  @override
  String get readerSectionReading => 'القراءة';

  @override
  String get readerSectionControls => 'عناصر التحكم';

  @override
  String get readerSectionDisplay => 'العرض';

  @override
  String get readerSectionNovel => 'رواية';

  @override
  String get readerMode => 'وضع القراءة';

  @override
  String get readerModeAuto => 'تلقائي (حسب نوع السلسلة)';

  @override
  String get readerModeRtl => 'من اليمين إلى اليسار';

  @override
  String get readerModeLtr => 'من اليسار إلى اليمين';

  @override
  String get readerModeVertical => 'صفحات عمودية';

  @override
  String get readerModeWebtoon => 'ويبتون';

  @override
  String get readerModeContinuous => 'تمرير متواصل';

  @override
  String get readerScale => 'تحجيم الصورة';

  @override
  String get readerScaleFit => 'ملاءمة الشاشة';

  @override
  String get readerScaleWidth => 'ملاءمة العرض';

  @override
  String get readerScaleHeight => 'ملاءمة الارتفاع';

  @override
  String get readerScaleOriginal => 'الحجم الأصلي';

  @override
  String get readerScaleSmart => 'ملاءمة ذكية';

  @override
  String get readerDoublePage => 'صفحات مزدوجة';

  @override
  String get readerDoublePageDesc =>
      'اعرض صفحتين جنبًا إلى جنب في الوضع الأفقي';

  @override
  String get readerDoubleTapZoom => 'التكبير بالنقر المزدوج';

  @override
  String get readerDoubleTapZoomDesc => 'كبّر الصفحة وصغّرها بنقرة مزدوجة';

  @override
  String get readerAnimate => 'حركة الصفحات';

  @override
  String get readerAnimateDesc => 'حرّك قلب الصفحات';

  @override
  String get readerSidePadding => 'الهامش الجانبي';

  @override
  String get readerSidePaddingDesc => 'المسافة بجانب الصفحات بالنسبة المئوية';

  @override
  String get readerPageGap => 'المسافة بين الصفحات';

  @override
  String get readerPageGapDesc => 'الفراغ بين الصفحات';

  @override
  String get readerAutoNext => 'المتابعة إلى الفصل التالي';

  @override
  String get readerAutoNextDesc =>
      'حمّل الفصل التالي وأنت تقرأ نهاية هذا الفصل';

  @override
  String get readerPreload => 'تحميل الصفحات مسبقًا';

  @override
  String get readerPreloadDesc => 'كم صفحة تُنزّل مسبقًا';

  @override
  String get readerTapZones => 'مناطق اللمس';

  @override
  String get readerTapDefault => 'افتراضي';

  @override
  String get readerTapLShaped => 'على شكل L';

  @override
  String get readerTapKindle => 'مثل Kindle';

  @override
  String get readerTapEdge => 'الحواف فقط';

  @override
  String get readerTapOff => 'معطّل';

  @override
  String get readerInvertTaps => 'عكس مناطق اللمس';

  @override
  String get readerInvertTapsDesc => 'بدّل منطقتي السابق والتالي';

  @override
  String get readerBackground => 'الخلفية';

  @override
  String get readerBackgroundBlack => 'أسود';

  @override
  String get readerBackgroundGray => 'رمادي';

  @override
  String get readerBackgroundWhite => 'أبيض';

  @override
  String get readerBackgroundTheme => 'سمة التطبيق';

  @override
  String get readerFilter => 'فلتر الألوان';

  @override
  String get readerFilterNone => 'بدون';

  @override
  String get readerFilterGrayscale => 'تدرّج رمادي';

  @override
  String get readerFilterInvert => 'عكس الألوان';

  @override
  String get readerFilterSepia => 'بني قديم';

  @override
  String get readerFilterQuality => 'جودة مرشح الصورة';

  @override
  String get readerFilterQualityNone => 'لا يوجد (أقرب جار)';

  @override
  String get readerFilterQualityLow => 'منخفض (ثنائي)';

  @override
  String get readerFilterQualityMedium => 'متوسطة (ثلاثية الخطوط)';

  @override
  String get readerFilterQualityHigh => 'عالية (بيكوبيك)';

  @override
  String get readerFilterQualityLanczos => 'لانكزوس (الصدأ عالي الجودة)';

  @override
  String get readerDim => 'تعتيم';

  @override
  String get readerDimDesc => 'عتّم الصفحات';

  @override
  String get readerPageNumber => 'رقم الصفحة';

  @override
  String get readerPageNumberDesc => 'اعرض رقم الصفحة أثناء القراءة';

  @override
  String get readerFullscreen => 'ملء الشاشة';

  @override
  String get readerFullscreenDesc => 'أخفِ أشرطة النظام';

  @override
  String get readerCropBorders => 'قص الحواف';

  @override
  String get readerCropBordersDesc =>
      'أزل الهوامش البيضاء أو السوداء الفارغة من الصفحات';

  @override
  String get readerLongPressSave => 'اضغط على الصفحة لحفظها';

  @override
  String get readerLongPressSaveDesc =>
      'اضغط لفترة طويلة على الصفحة لفتح خيارات الحفظ والمشاركة والنسخ';

  @override
  String get readerVolumeKeys => 'مفاتيح الصوت تقلب الصفحات';

  @override
  String get readerVolumeKeysDesc => 'خفض الصوت للأمام ورفع الصوت للخلف';

  @override
  String get readerBookmarks => 'العلامات المرجعية';

  @override
  String get readerBookmarkAdd => 'إضافة علامة مرجعية';

  @override
  String get readerBookmarkRemove => 'إزالة العلامة المرجعية';

  @override
  String get readerBookmarksEmpty => 'ما في علامات مرجعية لحد الآن';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'صفحة $page من $total';
  }

  @override
  String get readerAutoScroll => 'تمرير تلقائي';

  @override
  String get readerAutoScrollStop => 'إيقاف التمرير التلقائي';

  @override
  String get readerAutoScrollSpeed => 'سرعة التمرير التلقائي';

  @override
  String get readerAutoScrollSpeedDesc =>
      'سرعة تمرير الصفحات أو قلبها تلقائيًا';

  @override
  String get readerKeepOn => 'إبقاء الشاشة مضاءة';

  @override
  String get readerKeepOnDesc => 'امنع انطفاء الشاشة أثناء القراءة';

  @override
  String get readerOrientation => 'الاتجاه';

  @override
  String get readerOrientationFree => 'حر';

  @override
  String get readerOrientationPortrait => 'عمودي';

  @override
  String get readerOrientationLandscape => 'أفقي';

  @override
  String get readerSaveProgress => 'حفظ التقدّم';

  @override
  String get readerSaveProgressDesc => 'تذكّر صفحتك وعلّم الفصول كمقروءة';

  @override
  String get readerReset => 'إعادة ضبط إعدادات القارئ';

  @override
  String get readerResetDesc => 'رجوع إلى الافتراضي';

  @override
  String get readerResetConfirm =>
      'هل تريد إعادة تعيين كل إعدادات القارئ إلى إعداداته الافتراضية؟';

  @override
  String get novelSize => 'حجم النص';

  @override
  String get novelFont => 'الخط';

  @override
  String get novelLineHeight => 'ارتفاع السطر';

  @override
  String get novelParagraph => 'تباعد الفقرات';

  @override
  String get novelMargin => 'الهوامش';

  @override
  String get novelTheme => 'سمة القارئ';

  @override
  String get novelThemeApp => 'سمة التطبيق';

  @override
  String get novelThemeLight => 'فاتح';

  @override
  String get novelThemeSepia => 'بني قديم';

  @override
  String get novelThemeDark => 'داكن';

  @override
  String get novelThemeBlack => 'أسود';

  @override
  String get novelJustify => 'ضبط النص';

  @override
  String get novelJustifyDesc => 'حاذِ النص على الجانبين';

  @override
  String get trackProgressTitle => 'حفظ التقدّم؟';

  @override
  String trackProgressAnime(String name) {
    return 'تتبّع $name في قائمتك أثناء المشاهدة؟ اختر \"على هذا الجهاز فقط\" لإبقائه محليًا، أو \"لا\" لعدم حفظ شيء.';
  }

  @override
  String trackProgressManga(String name) {
    return 'تتبّع $name في قائمتك عند إنهاء فصل؟ اختر \"على هذا الجهاز فقط\" لإبقائه محليًا، أو \"لا\" لعدم حفظ شيء.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'هل تريد حفظ التقدم الذي أحرزته في $name في قائمتك على هذا الجهاز أثناء المشاهدة؟';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'هل تريد حفظ تقدمك في $name في قائمتك على هذا الجهاز عند الانتهاء من الفصل؟';
  }

  @override
  String get downloadClearQueue => 'قائمة الانتظار واضحة';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'هل تريد إلغاء جميع تنزيلات $count الموجودة في قائمة الانتظار؟ يتم حذف ما تم تنزيله بالفعل.';
  }

  @override
  String downloadSelectedCount(int count) {
    return 'تم تحديد $count';
  }

  @override
  String get downloadSelectAll => 'حدد الكل';

  @override
  String get downloadDeleteSelected => 'حذف المحدد';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'هل تريد حذف تنزيلات $count؟ تتم إزالة ملفاتهم من الجهاز.';
  }

  @override
  String get castTitle => 'إرسال إلى الجهاز';

  @override
  String get castSearching => 'جارٍ البحث عن أجهزة على شبكتك...';

  @override
  String get castNoDevices =>
      'لم يتم العثور على أي أجهزة. تأكد من اتصال التلفزيون أو Chromecast بنفس شبكة Wi-Fi، ثم ابحث مرة أخرى.';

  @override
  String get castRefresh => 'ابحث مرة أخرى';

  @override
  String get castFailed => 'تعذر بدء الإرسال';

  @override
  String get castStop => 'توقف عن الصب';

  @override
  String castNowCasting(String name) {
    return 'الإرسال إلى $name';
  }

  @override
  String get castProtocolChromecast => 'كروم كاست';

  @override
  String get castProtocolDlna => 'DLNA / التلفزيون الذكي';

  @override
  String get castProtocolRoku => 'روكو';

  @override
  String get castRokuNote => 'لا يستطيع Roku الإبلاغ عن الموقف أو تغييره';

  @override
  String get castControls => 'الضوابط';

  @override
  String get castVolume => 'حجم التلفزيون';

  @override
  String castSkipPart(String name) {
    return 'تخطي $name';
  }

  @override
  String get trackProgressRememberSeries => 'تذكر لهذه السلسلة';

  @override
  String get trackProgressYes => 'حفظ';

  @override
  String get trackProgressReset =>
      'تمت إعادة ضبط سؤال حفظ التقدّم لهذا النوع، وسيسأل من جديد';

  @override
  String get trackProgressNo => 'لا';

  @override
  String get trackProgressOff => 'إيقاف';

  @override
  String get trackProgressLocal => 'على هذا الجهاز فقط';

  @override
  String get trackProgressSettingAnime => 'تتبّع تقدّم الأنمي';

  @override
  String get trackProgressSettingManga => 'تتبّع تقدّم المانجا والروايات';

  @override
  String get trackProgressSettingDesc => 'ماذا يحدث عند فتح حلقة أو إنهاء فصل';

  @override
  String get trackProgressAsk => 'اسأل';

  @override
  String get trackProgressAlways => 'دائمًا';

  @override
  String get dantotsuImport => 'استيراد من Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'اقرأ نسخة إعدادات Dantotsu الاحتياطية (.ani، أو .sani المشفّرة)';

  @override
  String get dantotsuPick => 'اختر نسخة Dantotsu احتياطية';

  @override
  String get dantotsuNothing => 'ما في شيء في هذا الملف يمكن استيراده';

  @override
  String get dantotsuApply => 'استيراد المحدد';

  @override
  String dantotsuDone(int done, int total) {
    return 'تم استيراد $done من $total';
  }

  @override
  String get dantotsuGroupAccounts => 'الحسابات';

  @override
  String get dantotsuGroupAppearance => 'المظهر';

  @override
  String get dantotsuGroupExtensions => 'الإضافات';

  @override
  String get dantotsuGroupApp => 'التطبيق';

  @override
  String get dantotsuGroupPlayer => 'المشغّل';

  @override
  String get dantotsuAnilist => 'تسجيل الدخول إلى AniList';

  @override
  String get dantotsuMal => 'تسجيل الدخول إلى MyAnimeList';

  @override
  String get dantotsuDiscord => 'توكن Discord Rich Presence';

  @override
  String get dantotsuTheme => 'السمة';

  @override
  String get themePickerTitle => 'الموضوع';

  @override
  String get dantotsuReposAnime => 'مستودعات إضافات الأنمي';

  @override
  String get dantotsuReposManga => 'مستودعات إضافات المانجا';

  @override
  String get dantotsuReposNovel => 'مستودعات إضافات الروايات';

  @override
  String get dantotsuUpdates => 'فحص التحديثات';

  @override
  String get dantotsuComments => 'التعليقات';

  @override
  String get dantotsuActivity => 'استطلاع إشعارات AniList';

  @override
  String get dantotsuDns => 'مزوّد DNS';

  @override
  String get dantotsuPlayer => 'سرعة المشغّل وألوان الترجمة';

  @override
  String get dantotsuWarning =>
      'هذا الملف يحتوي توكنات تسجيل الدخول. خلّه خاصًا.';

  @override
  String get novelIndent => 'إزاحة الفقرات';

  @override
  String get novelIndentDesc => 'ابدأ كل فقرة بمسافة بادئة في أول سطر';

  @override
  String get novelLetterSpacing => 'تباعد الحروف';

  @override
  String get novelSectionTranslate => 'الترجمة';

  @override
  String get sectionExperimental => 'تجريبي';

  @override
  String get kitsuGraphqlDetail => 'صفحات تفاصيل أسرع (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'حمّل العنوان مع شخصياته وطاقمه ومدخلتك بطلب واحد';

  @override
  String get togetherTitle => 'شاهد مع الأصدقاء';

  @override
  String get togetherIntro =>
      'الصق رابط الغرفة اللي أرسله لك صديقك. تنضم فورًا ويفتح المشغّل عندما يبدؤون المشاهدة.';

  @override
  String togetherLinkConfirm(String room) {
    return 'انضم إلى الغرفة $room؟ يختار المضيف ما يتم تشغيله ويفتح اللاعب نفسه عندما يبدأ المشاهدة.';
  }

  @override
  String get togetherJoin => 'انضم';

  @override
  String get togetherName => 'اسمك';

  @override
  String get togetherConnecting => 'جارٍ الاتصال…';

  @override
  String get togetherLeave => 'مغادرة الغرفة';

  @override
  String get togetherYou => 'أنت';

  @override
  String get togetherNoChat => 'ما في رسائل لحد الآن';

  @override
  String get togetherChatHint => 'رسالة';

  @override
  String get togetherCopyInvite => 'نسخ الدعوة';

  @override
  String get togetherShareInvite => 'مشاركة الدعوة';

  @override
  String togetherShareText(String link) {
    return 'شاهد معي على Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'تم نسخ الخادم والغرفة';

  @override
  String get togetherConnectionLost => 'انقطع الاتصال';

  @override
  String togetherConnectedTo(String room) {
    return 'متصل بـ $room';
  }

  @override
  String togetherFailed(String error) {
    return 'ما قدرنا نتصل: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name انضم';
  }

  @override
  String togetherLeft(String name) {
    return '$name غادر';
  }

  @override
  String togetherPaused(String name) {
    return '$name أوقف مؤقتًا';
  }

  @override
  String togetherResumed(String name) {
    return '$name أكمل التشغيل';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name قفز إلى $time';
  }

  @override
  String get togetherFollowFailed => 'ما قدرنا نفتح حلقة المضيف. افتحها بنفسك.';

  @override
  String get togetherJoinRole => 'الانضمام إلى غرفة';

  @override
  String get togetherOpenHost => 'افتح حلقة المضيف';

  @override
  String get togetherShowChat => 'عرض الدردشة المباشرة';

  @override
  String get togetherWaitingHost => 'بانتظار أن يبدأ المضيف حلقة';

  @override
  String get togetherRoomLink => 'رابط الغرفة';

  @override
  String get togetherBadLink => 'هذا ليس رابط غرفة';

  @override
  String get togetherHostClosed => 'المضيف أغلق الغرفة';

  @override
  String get togetherNowPlaying => 'يُشغَّل الآن';

  @override
  String togetherWatchingCount(int count) {
    return '$count يشاهدون';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user يريد الإيقاف المؤقت';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user يريد المتابعة';
  }

  @override
  String get togetherChip => 'معًا';

  @override
  String get togetherSettingsDesc => 'انضم إلى غرفة صديق برابط';

  @override
  String get novelBilingual => 'عرض الأصل والترجمة';

  @override
  String get novelBilingualDesc => 'كل فقرة تعرض النص الأصلي وتحته ترجمته';

  @override
  String get novelTranslateTo => 'ترجمة إلى';

  @override
  String get novelTranslateOff => 'إيقاف';

  @override
  String get novelSectionSpeech => 'تحويل النص إلى كلام';

  @override
  String get novelSpeechRate => 'سرعة الكلام';

  @override
  String get novelSpeechPitch => 'نبرة الكلام';

  @override
  String get novelSpeak => 'قراءة بصوت عالٍ';

  @override
  String get novelSpeakStop => 'إيقاف القراءة بصوت عالٍ';

  @override
  String get novelTranslate => 'ترجمة الفصل';

  @override
  String get novelTranslateShowOriginal => 'عرض الأصل';

  @override
  String novelTranslateFailed(String error) {
    return 'فشلت الترجمة: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'تحويل النص إلى كلام غير متاح على هذا الجهاز';

  @override
  String get novelSpeechVoice => 'الصوت';

  @override
  String get novelSpeechVoiceDefault => 'افتراضي النظام';

  @override
  String get novelSpeakPrevious => 'السطر السابق';

  @override
  String get novelSpeakNext => 'السطر التالي';

  @override
  String get novelTapPaging => 'اضغط على الحواف لقلب الصفحة';

  @override
  String get novelTapPagingDesc =>
      'اضغط على الجهة اليسرى أو اليمنى لتمرير صفحة، والوسط يعرض عناصر التحكم';

  @override
  String get novelPaged => 'تحول الصفحة';

  @override
  String get novelPagedDesc =>
      'قم بتقسيم الفصل إلى صفحات ثم قم بالتمرير أو النقر لقلبها بدلاً من التمرير';

  @override
  String novelPageOf(int current, int total) {
    return 'الصفحة $current من $total';
  }

  @override
  String get novelPaginating => 'وضع الصفحات';

  @override
  String get novelTools => 'المحتويات والبحث والميزات';

  @override
  String get novelContents => 'المحتويات';

  @override
  String get novelContentsEmpty => 'هذا الفصل ليس له عناوين';

  @override
  String get novelSearch => 'بحث';

  @override
  String get novelSearchHint => 'البحث في هذا الفصل';

  @override
  String get novelSearchNone => 'لا توجد مباريات';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مطابقات',
      one: 'مباراة واحدة',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'أبرز';

  @override
  String get novelHighlightsEmpty =>
      'حدد بعض النص واضغط على \"تمييز\" للاحتفاظ به هنا';

  @override
  String get novelHighlight => 'تسليط الضوء';

  @override
  String get novelHighlightNote => 'ملاحظة';

  @override
  String get novelHighlightNoteHint => 'أضف ملاحظة';

  @override
  String get novelHighlightRemove => 'إزالة التمييز';

  @override
  String get novelHighlightFailed => 'تعذرت مطابقة هذا التحديد مع النص';

  @override
  String novelMinutesLeft(int count) {
    return 'باقي $count دقيقة';
  }

  @override
  String get novelBold => 'نص عريض';

  @override
  String get novelBoldDesc => 'استخدم سُمكًا أكبر';

  @override
  String readerFinishedChapter(String chapter) {
    return 'انتهيت من $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'التالي: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'السابق: $chapter';
  }

  @override
  String get readerNoPages => 'هذا الفصل ما فيه صفحات';

  @override
  String get readerLoadingPages => 'جارٍ تحميل الصفحات…';

  @override
  String get readerSlowPage => 'ما زالت هذه الصفحة تُحمَّل…';

  @override
  String get readerPageFailed => 'ما قدرنا نحمّل هذه الصفحة';

  @override
  String get playerShowComments => 'إظهار التعليقات';

  @override
  String get playerHideComments => 'إخفاء التعليقات';

  @override
  String get playerSubtitles => 'الترجمات';

  @override
  String get playerSubtitlesOff => 'الترجمة متوقفة';

  @override
  String get playerAudio => 'الصوت';

  @override
  String get playerAddSubtitle => 'إضافة ملف ترجمة';

  @override
  String get playerAddAudio => 'إضافة ملف صوت';

  @override
  String get playerChapters => 'الفصول';

  @override
  String get playerSkipSubmit => 'إرسال مرات التخطي';

  @override
  String get playerSkipSubmitDesc =>
      'حدد مكان بداية ونهاية الافتتاحية أو الملخص في هذه الحلقة ومشاركتها مع AniSkip، حتى يحصل الجميع على زر التخطي.';

  @override
  String get playerSkipStart => 'ابدأ';

  @override
  String get playerSkipEnd => 'نهاية';

  @override
  String get playerSkipUseNow => 'استخدام الموقف الحالي';

  @override
  String get playerSkipSend => 'يقدم إلى AniSkip';

  @override
  String get playerSkipSent => 'تخطي الأوقات المقدمة إلى AniSkip، شكرا لك';

  @override
  String playerSkipFailed(String error) {
    return 'رفض AniSkip أوقات التخطي: $error';
  }

  @override
  String get playerUnsupported =>
      'لا يمكن تشغيل مشغل الفيديو على هذا الجهاز (إصدار Android الخاص به قديم جدًا بالنسبة لمكتبة المشغل المجمعة). انقر لنسخ التفاصيل.';

  @override
  String get playerSkipNoMal =>
      'هذا العنوان ليس له معرف MyAnimeList، ولا يمكن لـ AniSkip قبوله';

  @override
  String get playerNoChapters => 'ما في فصول';

  @override
  String get playerTimestamp => 'الطابع الزمني';

  @override
  String get playerAutoPlayDelay => 'العد التنازلي للحلقة التالية';

  @override
  String get playerWatchedAt => 'احسبها كمشاهَدة عند';

  @override
  String playerNextIn(int seconds) {
    return 'الحلقة التالية بعد $seconds ث';
  }

  @override
  String get playerPlayNow => 'شغّل الآن';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: سيتخطى تلقائيًا لهذا العنوان';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: لن يتخطى تلقائيًا لهذا العنوان';
  }

  @override
  String get playerAudioLanguage => 'لغة الصوت المفضلة';

  @override
  String get playerLanguageOrderHint =>
      'افصل اللغات بفواصل. تُستخدم أول لغة موجودة.';

  @override
  String get playerPip => 'صورة داخل صورة';

  @override
  String get playerAutoPip => 'صورة داخل صورة عند الخروج';

  @override
  String get playerAutoPipDesc =>
      'تابع التشغيل في نافذة صغيرة عند مغادرة التطبيق';

  @override
  String get playerPipPlay => 'العب';

  @override
  String get playerPipPause => 'وقفة';

  @override
  String get playerPipBack => 'الترجيع';

  @override
  String get playerPipForward => 'إلى الأمام';

  @override
  String get playerPipRestore => 'العودة إلى اللاعب';

  @override
  String get playerPipActive => 'اللعب في نافذة صغيرة';

  @override
  String get listDateAdded => 'تمت إضافتها إلى القائمة';

  @override
  String get listDateLastWatched => 'شاهد آخر مرة';

  @override
  String playerAutoPlaying(String title) {
    return 'جارٍ تشغيل $title بعده…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ما قدرنا نثبّت الشيدرز: $error';
  }

  @override
  String playerChapter(int number) {
    return 'الفصل $number';
  }

  @override
  String get playerPerTitle => 'لهذا العنوان فقط';

  @override
  String get playerPerTitleDesc =>
      'احتفظ بهذه الخيارات لهذا العنوان واترك افتراضياتك كما هي';

  @override
  String get playerSwapGestures => 'عكس جهات السحب';

  @override
  String get playerSwapGesturesDesc => 'السطوع على اليسار والصوت على اليمين';

  @override
  String get playerOpenBig => 'الفتح بالعرض الكبير';

  @override
  String get playerOpenBigDesc => 'شغّل المشغل بملء الشاشة بدل قائمة الحلقات';

  @override
  String get playerPauseOnBlur => 'إيقاف مؤقت عند فقدان التركيز';

  @override
  String get playerPauseOnBlurDesc =>
      'يتوقف التشغيل لما يتغطى التطبيق مثل لوحة الإشعارات، ويكمل لما ترجع';

  @override
  String get playerAudioOutput => 'مخرج الصوت';

  @override
  String get fontAppDefault => 'خط التطبيق';

  @override
  String get fontImport => 'استيراد خط';

  @override
  String get fontSample =>
      'نص حكيم له سر قاطع وذو شأن عظيم مكتوب على ثوب أخضر ومغلف بجلد أزرق';

  @override
  String get playerSubtitleDelay => 'تأخير الترجمة';

  @override
  String get playerAudioDelay => 'تأخير الصوت';

  @override
  String get playerDelayReset => 'إعادة ضبط';

  @override
  String get playerOnlineSubtitles => 'ترجمات أونلاين';

  @override
  String get playerOnlineSearchHint => 'العنوان والحلقة';

  @override
  String get playerOnlineNone => 'ما لقينا ترجمات';

  @override
  String playerOnlineFailed(String error) {
    return 'فشل البحث عن الترجمة: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ما قدرنا ننزّل هذه الترجمة: $error';
  }

  @override
  String get playerOnlineMatch => 'تطابق هذا الملف';

  @override
  String get playerOnlineEpisode => 'تطابق الحلقة';

  @override
  String playerOnlineDownloads(int count) {
    return '$count تنزيل';
  }

  @override
  String get playerSeekPreview => 'معاينة التقديم';

  @override
  String get playerSeekPreviewDesc =>
      'اعرض معاينة صغيرة للإطار فوق شريط التقديم أثناء السحب. يفتح مفكّك ترميز ثانيًا بدقة منخفضة، فيستهلك بيانات إضافية في البث.';

  @override
  String get playerSettingsChip => 'الإعدادات';

  @override
  String get playerAudioDevice => 'جهاز الصوت';

  @override
  String get settingsDownloads => 'التنزيلات';

  @override
  String get settingsDownloadsDesc =>
      'الحلقات دون اتصال والطابور ووضع عدم الاتصال';

  @override
  String get downloadsTitle => 'التنزيلات';

  @override
  String get widgetContinue => 'متابعة';

  @override
  String get widgetReleases => 'الافراج قريبا';

  @override
  String get widgetMore => 'قيد التنفيذ أيضًا';

  @override
  String get widgetNothing => 'لا شيء للاستمرار بعد';

  @override
  String get downloadStorageTitle => 'التخزين';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count التنزيلات',
      one: '1 تحميل',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size شاهدته أو قرأته بالفعل';
  }

  @override
  String get downloadFreeUp => 'حرر مساحة';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count التنزيلات التي تمت مشاهدتها',
      one: '1 تم مشاهدة التحميل',
    );
    return 'يمسح $_temp0 ومجاني $size؟';
  }

  @override
  String downloadFreed(String size) {
    return 'تم تحريره $size';
  }

  @override
  String get downloadDeleteWatched => 'حذف شاهدت';

  @override
  String get downloadDeleteAll => 'احذف الكل';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'هل تريد حذف كل تنزيل لـ $title؟';
  }

  @override
  String get downloadNothingWatched => 'لم يتم تنزيل أي شيء انتهيت منه';

  @override
  String get downloadStorageEmpty => 'لا توجد تنزيلات تستخدم المساحة';

  @override
  String get downloadsOpenDesc => 'شاهد الطابور وكل ما انحفظ على هذا الجهاز';

  @override
  String get downloadTitle => 'تنزيل';

  @override
  String get downloadMetaOnly => 'البيانات الوصفية فقط';

  @override
  String get downloadMetaFailed => 'تعذر إنشاء مجلد العنوان';

  @override
  String downloadMetaSaved(String path) {
    return 'تم الحفظ. ضع ملفاتك في $path';
  }

  @override
  String get downloadAlready => 'تم تنزيله أو في الطابور';

  @override
  String get downloadPickStream => 'أي بث تريد تنزيله؟';

  @override
  String get downloadPickSubtitle => 'أي ترجمة تريد تنزيلها؟';

  @override
  String get downloadPickAudio => 'أي مسار صوت تريد تنزيله؟';

  @override
  String get downloadAudio => 'الصوت';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'هذا البث قائمة تشغيل HLS. تنزيله يحتاج إضافة FFmpeg.';

  @override
  String get downloadSourceMissing => 'مصدر هذه الحلقة غير مثبّت';

  @override
  String get downloadDashDrm =>
      'هذا الدفق محمي بموجب إدارة الحقوق الرقمية (DRM).';

  @override
  String get downloadDashNoVideo => 'لا يحتوي بيان DASH على فيديو';

  @override
  String get downloadWaitingConnection => 'بانتظار اتصال';

  @override
  String get downloadSubtitles => 'الترجمات';

  @override
  String get downloadDownloaded => 'تم التنزيل';

  @override
  String get downloadOffline => 'دون اتصال';

  @override
  String get downloadDelete => 'حذف التنزيل';

  @override
  String get downloadCancel => 'إلغاء';

  @override
  String get downloadPause => 'إيقاف مؤقت';

  @override
  String get downloadPaused => 'متوقف مؤقتًا';

  @override
  String get downloadResume => 'استئناف';

  @override
  String get downloadPauseAll => 'إيقاف الكل مؤقتًا';

  @override
  String get downloadResumeAll => 'استئناف الكل';

  @override
  String get downloadQueuedState => 'بانتظار الدور في الطابور';

  @override
  String get downloadResolving => 'جارٍ جلب البث…';

  @override
  String get downloadUsedFallback => 'ما في بث مطابق، استخدمنا الأول';

  @override
  String get downloadTabQueue => 'الطابور';

  @override
  String get downloadTabDone => 'تم';

  @override
  String get downloadTabFailed => 'فشل';

  @override
  String get downloadEmptyQueue => 'ما في شيء قيد التنزيل';

  @override
  String get downloadEmptyDone => 'ما نزّلت شيئًا لحد الآن';

  @override
  String get downloadEmptyFailed => 'ما في تنزيلات فاشلة';

  @override
  String get downloadNext => 'الحلقة التالية';

  @override
  String downloadNextN(int count) {
    return 'الـ $count حلقات التالية';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'كل غير المشاهَد ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'هذا النطاق ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'كل الحلقات ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count حلقة في الطابور',
      few: '$count حلقات في الطابور',
      two: 'حلقتان في الطابور',
      one: 'حلقة واحدة في الطابور',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'تم تنزيل $name';
  }

  @override
  String downloadFailedBody(String name) {
    return 'فشل تنزيل $name';
  }

  @override
  String downloadStorage(String size) {
    return '$size مستخدمة من التنزيلات';
  }

  @override
  String get downloadQueueHeader => 'الطابور';

  @override
  String get downloadParallel => 'تنزيلات في وقت واحد';

  @override
  String get downloadParallelDesc =>
      'شغّل تنزيلًا واحدًا في كل مرة أو عدة تنزيلات معًا';

  @override
  String get downloadOneByOne => 'واحدًا تلو الآخر';

  @override
  String get downloadNotifications => 'إشعارات التنزيل';

  @override
  String get downloadNotificationsDesc =>
      'تقدّم مباشر حيث يدعمه النظام، وإلا ملاحظة عند انتهاء التنزيل';

  @override
  String get downloadNotifyLive => 'مباشر';

  @override
  String get downloadNotifyDone => 'عند الانتهاء';

  @override
  String get downloadNotifyOff => 'إيقاف';

  @override
  String get downloadInfoFile => 'اكتب ملف معلومات بجانب كل تنزيل';

  @override
  String get downloadInfoFileDesc =>
      'يحفظ البث والجودة والترجمة وأوقات التخطي كملف .json صغير';

  @override
  String get offlineHeader => 'دون اتصال';

  @override
  String get offlineModeDesc =>
      '\"تلقائي\" يعمل دون اتصال فقط عندما يبدأ التطبيق بدون إنترنت. \"دائمًا\" يبقى دون اتصال حتى تغيّره.';

  @override
  String get offlineModeOff => 'إيقاف';

  @override
  String get offlineModeAlways => 'دائمًا';

  @override
  String get offlineModeOn =>
      'وضع عدم الاتصال مفعّل. التغييرات تنحفظ هنا وتُرسل عندما ترجع للإنترنت.';

  @override
  String get offlineSaved => 'انحفظ على هذا الجهاز، وسيُزامَن عندما تتصل';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تمت مزامنة $count تغييرًا',
      few: 'تمت مزامنة $count تغييرات',
      two: 'تمت مزامنة تغييرين',
      one: 'تمت مزامنة تغيير واحد',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تغييرًا بانتظار المزامنة',
      few: '$count تغييرات بانتظار المزامنة',
      two: 'تغييران بانتظار المزامنة',
      one: 'تغيير واحد بانتظار المزامنة',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'تغييرات بانتظار المزامنة';

  @override
  String get offlinePendingNone => 'ما في شيء ينتظر';

  @override
  String get offlineSyncNow => 'زامن الآن';

  @override
  String get offlineDiscard => 'تجاهل';

  @override
  String get downloadNotOffline =>
      'هذه الحلقة غير منزّلة، فهي غير متاحة دون اتصال';

  @override
  String get offlineModeChip => 'دون اتصال';

  @override
  String get downloadNextChapter => 'الفصل التالي';

  @override
  String downloadNextChapters(int count) {
    return 'الـ $count فصول التالية';
  }

  @override
  String downloadUnread(int count) {
    return 'كل غير المقروء ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'كل الفصول ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total صفحة';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count صفحة';
  }

  @override
  String get downloadFfmpegTitle => 'إضافة FFmpeg مطلوبة';

  @override
  String get downloadFfmpegBody =>
      'هذا البث قائمة تشغيل HLS. إضافة FFmpeg تجمع أجزاءه في ملف mp4 واحد. بدونها تبقى الأجزاء في مجلد الحلقة وتُشغَّل منه.';

  @override
  String get downloadFfmpegInstall => 'تثبيت';

  @override
  String get downloadFfmpegInstalling => 'جارٍ تثبيت FFmpeg، قد يستغرق وقتًا…';

  @override
  String get downloadFinishing => 'جارٍ دمج الأجزاء في ملف واحد…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total جزء';
  }

  @override
  String get downloadTorrentNoFile => 'التورنت ما فيه ملف فيديو للتنزيل';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'جارٍ تنزيل $count عنصرًا',
      few: 'جارٍ تنزيل $count عناصر',
      two: 'جارٍ تنزيل عنصرين',
      one: 'جارٍ تنزيل عنصر واحد',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'حذف التنزيلات المشاهَدة';

  @override
  String get downloadAutoDeleteDesc =>
      'يحذف التنزيل عندما يصل تقدّمك إلى تلك الحلقة أو الفصل';

  @override
  String get downloadConnections => 'اتصالات لكل تنزيل';

  @override
  String get downloadConnectionsDesc =>
      'يقسّم الملف الكبير إلى أجزاء تُجلب في وقت واحد. بعض الخوادم تحدّ من هذا.';

  @override
  String get downloadPlayChoice => 'التشغيل من';

  @override
  String get downloadPlayLocalDesc => 'الملف المحفوظ على هذا الجهاز';

  @override
  String get downloadPlayStream => 'بث أونلاين';

  @override
  String get downloadPlayStreamDesc => 'حمّل الحلقة من المصدر';

  @override
  String get offlineFeedTitle => 'منزّل على هذا الجهاز';

  @override
  String get offlineFeedEmpty => 'نزّل شيئًا وأنت متصل وسيظهر هنا';

  @override
  String get offlineEnabled => 'وضع عدم الاتصال مفعّل';

  @override
  String get offlineDisabled => 'وضع عدم الاتصال متوقف';

  @override
  String get downloadReadChoice => 'القراءة من';

  @override
  String get downloadReadLocalDesc => 'الصفحات المحفوظة على هذا الجهاز';

  @override
  String get downloadReadOnline => 'اقرأ أونلاين';

  @override
  String get downloadReadOnlineDesc => 'حمّل الفصل من المصدر';

  @override
  String downloadDeleteConfirm(String name) {
    return 'تحذف $name من هذا الجهاز؟';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'تلغي تنزيل $name؟ ما تم تنزيله سيُحذف.';
  }

  @override
  String get downloadFfmpegFolder => 'الإبقاء كمجلد';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تتجاهل $count تغييرًا لم تُرسل؟ لا يمكن التراجع عن هذا.',
      few: 'تتجاهل $count تغييرات لم تُرسل؟ لا يمكن التراجع عن هذا.',
      two: 'تتجاهل التغييرين اللذين لم يُرسلا؟ لا يمكن التراجع عن هذا.',
      one: 'تتجاهل التغيير الذي لم يُرسل؟ لا يمكن التراجع عن هذا.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'بانتظار Wi-Fi';

  @override
  String get downloadWaitingMetered => 'متوقف على اتصال محدود';

  @override
  String get downloadWifiOnly => 'Wi-Fi فقط';

  @override
  String get downloadWifiOnlyDesc =>
      'التنزيلات تنتظر عندما تكون على بيانات الجوال';

  @override
  String get downloadMetered => 'إيقاف مؤقت على الاتصالات المحدودة';

  @override
  String get downloadMeteredDesc =>
      'ينتظر أيضًا على Wi-Fi الذي يعلّمه جهازك كمحدود';

  @override
  String get downloadSpeedLimit => 'حد السرعة';

  @override
  String get downloadSpeedLimitDesc => 'يحدّ من سرعة التنزيل الإجمالية';

  @override
  String get downloadUnlimited => 'بلا حدود';

  @override
  String get downloadMoveToTop => 'انقل للأعلى';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds بذور · $peers نظراء';
  }

  @override
  String get downloadTorrentFile => 'أي ملف؟';

  @override
  String get downloadTorrentAuto => 'طابق الحلقة تلقائيًا';

  @override
  String get downloadTorrentLoading => 'جارٍ قراءة التورنت…';

  @override
  String get watchAutoSource => 'التبديل للمصدر التالي تلقائيًا';

  @override
  String get watchAutoSourceDesc =>
      'إذا ما لقي المصدر العنوان أو فشل تحميله، جرّب المصدر المثبّت التالي';

  @override
  String get extensionTest => 'اختبار الإضافات';

  @override
  String get extensionTestCopy => 'انسخ الإخفاقات مع سجلاتها';

  @override
  String get extensionTestQuery => 'كلمة البحث';

  @override
  String get extensionTestRun => 'تشغيل';

  @override
  String get extensionTestStop => 'إيقاف';

  @override
  String get extensionTestNone => 'ما في إضافات مثبّتة من هذا النوع';

  @override
  String get extensionTestNotRun => 'لم تُختبر بعد';

  @override
  String get extensionTestSearch => 'بحث';

  @override
  String get extensionTestDetail => 'التفاصيل';

  @override
  String get extensionTestUnits => 'الحلقات / الفصول';

  @override
  String get extensionTestLinks => 'البثوث / الصفحات';

  @override
  String extensionTestFailedAt(String step) {
    return 'فشل عند $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done من $total اختُبرت · $passed نجحت · $failed فشلت';
  }

  @override
  String get extensionTestCopyLogs => 'انسخ كل شيء مع السجلات الكاملة';

  @override
  String get onboardingFeaturesTitle => 'كل شيء في مكان واحد';

  @override
  String get onboardingFeaturesBody =>
      'كل ما تتبّعه وتشاهده وتقرأه، دون أن تنتقل بين التطبيقات.';

  @override
  String get onboardingFeatureTrack => 'تتبّع كل شيء';

  @override
  String get onboardingFeatureTrackDesc =>
      'قوائم وتقدّم وتقييمات على AniList وMyAnimeList وSimkl وKitsu وMangaBaka.';

  @override
  String get onboardingFeatureWatch => 'شاهد واقرأ';

  @override
  String get onboardingFeatureWatchDesc =>
      'ثبّت إضافات وشاهد الأنمي بالبث أو اقرأ المانجا والروايات داخل التطبيق.';

  @override
  String get onboardingFeatureOffline => 'خذه معك دون اتصال';

  @override
  String get onboardingFeatureOfflineDesc =>
      'نزّل الحلقات والفصول وكمّل بدون إنترنت.';

  @override
  String get onboardingFeatureSync => 'حافظ على تزامن قوائمك';

  @override
  String get onboardingFeatureSyncDesc =>
      'انسخ قائمتك بين الخدمات، أو خلّ الأكثر تقدّمًا يفوز.';

  @override
  String get onboardingServices => 'يعمل مع';

  @override
  String sourceNotifyOn(String source) {
    return 'سيتم إخبارك عندما يكون لدى $source شيء جديد';
  }

  @override
  String get sourceNotifyOff => 'تم إيقاف إشعارات الإصدار';

  @override
  String get sourceNotifyNeedsSource => 'اختر مصدرًا مطابقًا أولاً';

  @override
  String sourceNotifyAllOut(int count) {
    return 'كل شيء ($count) قد انتهى بالفعل، ولا يوجد ما ينتظره';
  }

  @override
  String get sourceNotifyTooltipOn => 'إيقاف إخطارات الإصدار';

  @override
  String get sourceNotifyTooltipOff => 'أعلمني عن الإصدارات الجديدة';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'الحلقة $number متاحة على $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'الحلقات $from–$to معروضة على $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'الفصل $number موجود على $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'الفصول $from–$to متاحة في $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'تحتوي عناوين $count على شيء جديد';
  }

  @override
  String get navSources => 'المصادر';

  @override
  String sourceInactiveOpen(String manager) {
    return 'ينتمي هذا المصدر إلى $manager، وهي ليست خدمة الامتداد النشطة';
  }

  @override
  String get sourceAlertsHeader => 'الافراج عن الإخطارات';

  @override
  String get sourceAlertsSwitch => 'التحقق من العناوين المشتركة';

  @override
  String get sourceAlertsSwitchDesc =>
      'مرة واحدة في كل مرة يتم فيها فتح التطبيق، بالنسبة للعناوين التي قمت بتشغيل الجرس فيها';

  @override
  String get sourceSkipUnstarted => 'تخطي العناوين التي لم تبدأها بعد';

  @override
  String get sourceSkipUnstartedDesc =>
      'لم تتم مشاهدة أي شيء أو قراءته بعد، ولكن الحلقات موجودة بالفعل';

  @override
  String get sourceSkipUnseen => 'تخطي بينما لديك حلقات غير مرئية';

  @override
  String get sourceSkipUnseenDesc => 'لا يزال لديك حلقات لمتابعتها';

  @override
  String get sourceManage => 'الاشتراكات';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count العناوين',
      one: '1 عنوان',
      zero: 'لا عناوين',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'تحقق الآن';

  @override
  String get sourceCheckNowDesc => 'يتجاهل الجدول الزمني وقواعد التخطي';

  @override
  String get sourceChecking => 'جارٍ التحقق…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'تحتوي عناوين $count على شيء جديد',
      one: 'عنوان واحد يحتوي على شيء جديد',
      zero: 'لا شيء جديد',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'لا توجد اشتراكات حتى الآن';

  @override
  String get sourceEmptyMessage =>
      'اضغط على الجرس أعلى حلقات العنوان ليتم إخبارك بالحلقات الجديدة';

  @override
  String get sourceAll => 'الكل';

  @override
  String sourceInactive(String manager) {
    return 'غير نشط: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source غير مثبت في خدمة الامتداد هذه';
  }

  @override
  String get sourceUnreachable => 'المصدر لا يستجيب';

  @override
  String get sourceFinished => 'انتهى';

  @override
  String get sourceSkippedCompleted => 'تخطى : اكتمل';

  @override
  String get sourceSkippedUnstarted => 'تخطي: لم يبدأ';

  @override
  String get sourceSkippedUnseen => 'تخطي: حلقات غير مرئية';

  @override
  String get sourceWaiting => 'في انتظار الإصدار القادم';

  @override
  String sourceNextCheck(String when) {
    return 'الفحص التالي $when';
  }

  @override
  String get sourceSoon => 'قريبا';

  @override
  String sourceInHours(int count) {
    return 'في ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'في ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'الأحدث: $number';
  }

  @override
  String get sourceMute => 'كتم الصوت';

  @override
  String get sourceUnmute => 'إلغاء كتم الصوت';

  @override
  String get sourceMuted => 'كتم الصوت';

  @override
  String get sourceUnsubscribe => 'إلغاء الاشتراك';

  @override
  String get sourcePickAnother => 'اختر مصدرًا آخر';

  @override
  String get sourceOpenExtensions => 'فتح الامتدادات';

  @override
  String get sourceNoticesEmpty => 'لا توجد إشعارات الإصدار حتى الآن';

  @override
  String get sourceNoticesEmptyMessage =>
      'تظهر هنا حلقات وفصول جديدة من العناوين التي اشتركت فيها';

  @override
  String get sourceOpenTitle => 'فتح العنوان';

  @override
  String get extensionsLoading => 'جارٍ تحميل الإضافات…';

  @override
  String get updateWhatsNew => 'ما هو الجديد';

  @override
  String get updateLater => 'في وقت لاحق';

  @override
  String get updateSkipVersion => 'تخطي هذا الإصدار';

  @override
  String get updatePreparing => 'جارٍ التحضير…';

  @override
  String get updateDownloading => 'جارٍ التنزيل';

  @override
  String get updateInstalling => 'جارٍ التثبيت…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done من $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/ث';
  }

  @override
  String updateReleased(String date) {
    return 'صدر $date';
  }

  @override
  String get updateNoAsset => 'لا يوجد تنزيل لهذا الإصدار لجهازك';

  @override
  String get updateUpToDate => 'أنت على الإصدار الأحدث';

  @override
  String get updateIosHint =>
      'إصدارات iOS ليست موجودة في متجر التطبيقات. احصل على .ipa من صفحة الإصدار وقم بتحميله باستخدام AltStore أو SideStore';

  @override
  String get updateOpenedBrowser => 'تحقق من المتصفح الخاص بك';

  @override
  String get updateTryAgain => 'حاول مرة أخرى';

  @override
  String get settingsNotifications => 'الإخطارات';

  @override
  String get settingsNotificationsDesc =>
      'تنبيهات لقوائمك، والحلقات والفصول الجديدة، والردود على التعليقات';

  @override
  String get settingsAboutUpdates => 'حول والتحديثات';

  @override
  String get settingsAboutUpdatesDesc =>
      'تحديثات التطبيق والإصدار والسجلات والروابط والدعم';

  @override
  String get settingsGroupAccount => 'حسابك';

  @override
  String get settingsGroupContent => 'المحتوى';

  @override
  String get settingsGroupApp => 'التطبيق';

  @override
  String get settingsAnimeDesc =>
      'المشغل، الترجمة، التخطي، قائمة الحلقات وتفاصيل الحلقة';

  @override
  String get settingsMangaDesc => 'وضع القارئ وعناصر التحكم والعرض وتتبع الفصل';

  @override
  String get settingsNovelDesc =>
      'النص وتقليب الصفحة والترجمة والقراءة بصوت عالٍ';

  @override
  String get settingsLocalPlay => 'اللعب المحلي';

  @override
  String get settingsLocalPlayDesc =>
      'قم بتشغيل الملفات والمجلدات وتدفقات الشبكة والسيول أو افتح كتابًا';

  @override
  String get settingsLocalPlayVideo => 'فيديو';

  @override
  String get settingsLocalPlayBooks => 'كتب';

  @override
  String get settingsWatchSections => 'الأقسام';

  @override
  String get settingsSectionLists => 'قوائم الحلقات والفصول';

  @override
  String get settingsSectionProgress => 'تتبع التقدم';

  @override
  String get updateChannelDesc =>
      'الإصدار المستقر هو الإصدار الذي تم اختباره. يحصل الإصدار التجريبي وإصدار ألفا على ميزات جديدة عاجلاً ولكن قد يتعطلان';

  @override
  String get checkNowDesc => 'ابحث عن إصدار أحدث على الفور';

  @override
  String get generalSectionBasics => 'اللغة والسلوك';

  @override
  String get generalSectionSecurity => 'الأمن';

  @override
  String get generalSectionPrivacy => 'الخصوصية';

  @override
  String get secPlayerPlayback =>
      'السرعة الافتراضية والتشغيل التلقائي وملاءمة الفيديو والتوجيه والصورة في الصورة';

  @override
  String get secPlayerSkip => 'تخطي الافتتاحيات والنهايات والملخصات تلقائيًا';

  @override
  String get secPlayerControls =>
      'قم بالتمرير مع الاستمرار والنقر على الإيماءات والبحث عن المعاينة';

  @override
  String get secPlayerSubtitles => 'اللغات والمظهر وتقديم الترجمة';

  @override
  String get secPlayerShaders => 'رفع مستوى الأنمي والتظليلات الخاصة بك';

  @override
  String get secPlayerEngine =>
      'فك التشفير، إخراج الفيديو والصوت، التخزين المؤقت. قم بتغييرها فقط إذا كان التشغيل به مشكلات';

  @override
  String get secPlayerMpv => 'mpv.conf والبرامج النصية والضبط المتقدم';

  @override
  String get secAnimeList => 'حلقات الحشو والصور المصغرة التي لم تتم مشاهدتها';

  @override
  String get secProgress =>
      'عندما يتم حفظ التقدم الذي تمت مشاهدته أو قراءته في قائمتك';

  @override
  String get secAnimeDetails => 'مصدر عناوين الحلقات والصور المصغرة والملخصات';

  @override
  String get secReaderReading =>
      'وضع القراءة، وتحول الصفحة، والتكبير والفصل التالي';

  @override
  String get secReaderControls =>
      'انقر فوق المناطق ومفاتيح الصوت والتمرير التلقائي';

  @override
  String get secReaderDisplay => 'الخلفية والسطوع وملء الشاشة ورقم الصفحة';

  @override
  String get secNovelText => 'الخط والحجم والتباعد والهوامش وقلب الصفحة';

  @override
  String get secNovelTranslate => 'ترجمة الفصول أثناء القراءة';

  @override
  String get secNovelSpeech => 'الصوت والسرعة ودرجة الصوت للقراءة بصوت عال';

  @override
  String get secNotifyAbout => 'اختر أنواع الأنشطة التي ترسل تنبيهًا';

  @override
  String get layoutTitle => 'التخطيط';

  @override
  String get layoutDesc => 'اختيار وتحريك وإخفاء الأزرار الموجودة على الأشرطة';

  @override
  String get layoutHint =>
      'اسحب زرًا لتحريكه (اضغط مع الاستمرار على شاشة اللمس أولاً). اضغط على واحدة لقصها أو نقلها أو إخفائها';

  @override
  String layoutDropInto(String zone) {
    return 'أدخل: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'نقل $name. اضغط على زر لصق لوضعه';
  }

  @override
  String get layoutTitleFixed => 'العنوان';

  @override
  String get layoutZoneTopStart => 'الشريط العلوي قبل العنوان';

  @override
  String get layoutZoneTopEnd => 'الشريط العلوي بعد العنوان';

  @override
  String get layoutZoneBottomStart => 'الشريط السفلي، اليسار';

  @override
  String get layoutZoneBottomEnd => 'الشريط السفلي، صحيح';

  @override
  String get layoutZoneSecondRow => 'مخفي: الصف الثاني في العرض العادي';

  @override
  String get layoutZoneOverflow => 'مخفي: في قائمة المزيد';

  @override
  String get layoutEmptyZone => 'أسقط الأزرار هنا';

  @override
  String get layoutCut => 'قطع';

  @override
  String get layoutPaste => 'الصق هنا';

  @override
  String get layoutHide => 'إخفاء';

  @override
  String layoutMoveTo(String zone) {
    return 'انتقل إلى $zone';
  }

  @override
  String get layoutReset => 'إعادة التعيين إلى الوضع الافتراضي';

  @override
  String get layoutMore => 'المزيد';

  @override
  String get sourceWhyAction => 'لماذا لا تنبيه؟';

  @override
  String get sourceWhyStatus => 'الحالة';

  @override
  String get sourceWhyLastCheck => 'آخر فحص';

  @override
  String get sourceWhyNever => 'ليس بعد';

  @override
  String get sourceWhyNextCheck => 'الاختيار التالي';

  @override
  String get sourceWhyNewest => 'الأحدث في المصدر';

  @override
  String get sourceWhyProgress => 'التقدم المحرز الخاص بك';

  @override
  String get sourceWhyListStatus => 'حالة القائمة';

  @override
  String get sourceWhyFailures => 'فشل الشيكات على التوالي';

  @override
  String get sourceWhyLastRelease => 'آخر إصدار جديد شوهد';

  @override
  String get sourceWhyVerdictNew =>
      'يظهر إصدار جديد هنا بمجرد أن يدرجه المصدر ويتم تشغيل الفحص التالي.';

  @override
  String get sourceWhyVerdictAhead =>
      'المصدر متقدم بالفعل على تقدمك، لذا تم إخبارك به مرة واحدة. اقرأها أو شاهدها للحصول على التنبيه التالي.';

  @override
  String get sourceWhyVerdictSkipped =>
      'تم تخطي هذا العنوان بموجب القواعد المذكورة أعلاه. قم بتغييرها في إعدادات الإشعارات، أو استخدم التحقق الآن لتشغيلها على أي حال.';

  @override
  String get sourceWhyVerdictBroken =>
      'لا يمكن الوصول إلى المصدر أو تمت إزالته، لذلك لا يتم التحقق من أي شيء.';

  @override
  String get sourceWhyVerdictMuted => 'تم كتم صوت هذا الاشتراك.';

  @override
  String get externalPlayerTitle => 'فتح تيار في مكان آخر';

  @override
  String get externalCopyUrl => 'انسخ رابط البث';

  @override
  String get externalCopied => 'تم نسخ رابط البث';

  @override
  String get externalChooser => 'افتح في تطبيق آخر';

  @override
  String get externalVlc => 'فتح في VLC';

  @override
  String get externalMpv => 'فتح في mpv';

  @override
  String get externalWebVideoCast => 'طاقم فيديو الويب';

  @override
  String get castViaAppHint => 'أرسل البث إلى تطبيق Web Video Cast';

  @override
  String get externalFailed => 'تعذر فتح الدفق. هل تم تثبيت المشغل؟';

  @override
  String get addonInstalled => 'تم التثبيت';

  @override
  String get loadFailedActivity => 'تعذر تحميل النشاط';

  @override
  String get loadFailedFavourites => 'تعذر تحميل المفضلة. أعد المحاولة';

  @override
  String get loadFailedStats => 'تعذر تحميل الإحصائيات';

  @override
  String get loadFailedReplies => 'تعذر تحميل الردود';

  @override
  String get cantBeUndone => 'لا يمكن التراجع عن هذا.';

  @override
  String get searchTags => 'علامات البحث';

  @override
  String get spoilerTapToView => 'سبويلر، انقر للعرض';

  @override
  String get mediaVideo => 'فيديو';

  @override
  String get notificationSomeone => 'شخص ما';

  @override
  String get notificationATitle => 'عنوان';

  @override
  String get notificationAddedDetail => 'تمت إضافته إلى AniList';

  @override
  String get updateNoReleases => 'لم يتم العثور على أي إصدارات';

  @override
  String get updateInvalidResponse => 'استجابة التحديث غير صالحة';

  @override
  String get commentsRateLimited => 'معدل محدود';

  @override
  String get commentsConnectFailed => 'فشل الاتصال';

  @override
  String get dnsNoRecords => 'لم يتم إرجاع أي سجلات';

  @override
  String get importTokenRejected => 'تم رفض الرمز المميز';

  @override
  String get developerRoleLead => 'المطور الرئيسي';

  @override
  String get developerRoleModerator => 'وسيط الخلاف';

  @override
  String extensionManagerTitle(String type) {
    return '$type مدير';
  }

  @override
  String extensionsOfType(String type) {
    return '$type ملحقات';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'إعدادات $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name لا يوفر أي إعدادات.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'تم بث الحلقة $episode من $title';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'تم بث الحلقة $episode';
  }

  @override
  String notificationAdded(String title) {
    return 'تمت إضافة $title إلى AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'تعذر على خادم التحديث العثور على هذا الإصدار: $message';
  }

  @override
  String get installStepJre => 'وقت تشغيل جافا';

  @override
  String get installStepCore => 'جوهر وقت التشغيل';

  @override
  String installStepsProgress(int current, int total) {
    return 'الخطوة $current من $total';
  }

  @override
  String get stepChecking => 'جارٍ التحقق…';

  @override
  String get stepUpToDate => 'حتى الآن';

  @override
  String stepUpToDateWith(String detail) {
    return 'محدث · $detail';
  }

  @override
  String get stepWillInstall => 'سيتم تثبيته';

  @override
  String get stepWillUpdate => 'سيتم تحديثه';

  @override
  String stepWillUpdateTo(String version) {
    return 'سيتم التحديث إلى $version';
  }

  @override
  String get stepInstalled => 'تم التثبيت';

  @override
  String get stepNotNeeded => 'ليست هناك حاجة هنا';

  @override
  String get stepFailed => 'فشل';

  @override
  String stepFailedWith(String reason) {
    return 'فشل: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'يتم تشغيله على وقت تشغيل Java ونواة وقت التشغيل المشترك. يتم تثبيتها أولاً، ويتم تحديثها إذا تم تغييرها.';

  @override
  String get installRuntimeNewer =>
      'تم تحديث وقت التشغيل الذي يعمل عليه هذا المدير.';

  @override
  String get removeJvmTitle => 'إزالة وقت تشغيل جافا؟';

  @override
  String get removeJvmMessage =>
      'يتوقف مديرو ملحقات سطح المكتب عن العمل حتى يتم تثبيته مرة أخرى. ويتم تنزيله مرة أخرى في المرة التالية التي تقوم فيها بتثبيته أو فتحه.';

  @override
  String get runtimePreparing => 'تحضير وقت التشغيل…';

  @override
  String get calendarAll => 'الكل';

  @override
  String get calendarAnime => 'أنيمي';

  @override
  String get calendarManga => 'مانغا';

  @override
  String get readerCloudflare => 'فتح في المتصفح (فحص Cloudflare)';

  @override
  String get badgeBoardHint =>
      'اسحب الشارة إلى زاوية البطاقة الأولى، أو اسحب الشارة الموجودة عليها بالفعل لتحريكها. يتم تبادل أماكن الشارات، بحيث لا يتداخل أي منها على الإطلاق. اضغط على الشارة أدناه لتشغيلها أو إيقاف تشغيلها.';

  @override
  String get unreadCounter => 'عداد غير مقروء';

  @override
  String get settingsShortcuts => 'اختصارات لوحة المفاتيح';

  @override
  String get settingsShortcutsDesc => 'رؤية وتغيير وإيقاف كل مفتاح';

  @override
  String get shortcutGroupApp => 'التطبيق';

  @override
  String get shortcutGroupPlayer => 'مشغل فيديو';

  @override
  String get shortcutGroupReader => 'القارئ';

  @override
  String get shortcutsEnableApp => 'اختصارات التطبيق';

  @override
  String get shortcutsEnablePlayer => 'اختصارات اللاعب';

  @override
  String get shortcutsEnableReader => 'اختصارات القارئ';

  @override
  String get shortcutsEnableDesc =>
      'قم بتشغيل أو إيقاف كل مفتاح في هذه المجموعة';

  @override
  String get shortcutNotSet => 'لم يتم ضبطه';

  @override
  String get shortcutAddKey => 'أضف مفتاحًا';

  @override
  String get shortcutResetOne => 'إعادة التعيين إلى الوضع الافتراضي';

  @override
  String get shortcutResetAll => 'إعادة ضبط كافة الاختصارات';

  @override
  String get shortcutResetAllDesc => 'أعد كل مفتاح إلى وضعه الافتراضي';

  @override
  String get shortcutPress => 'اضغط على المفتاح أو المجموعة التي تريدها';

  @override
  String get shortcutPressHint =>
      'كل مجموعة يمكن أن تنتمي إلى إجراء واحد فقط، لذا فإن أخذ مجموعة واحدة يحركها.';

  @override
  String get shortcutSeekPercent => 'انتقل إلى نقطة من الفيديو';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'ارجع';

  @override
  String get shortcutAppFullscreen => 'تبديل ملء الشاشة';

  @override
  String get shortcutAppGlass => 'تبديل وضع الزجاج';

  @override
  String get shortcutAppMaterialYou => 'تبديل المواد لك';

  @override
  String get shortcutAppDark => 'تبديل الوضع المظلم';

  @override
  String get shortcutAppOled => 'تبديل OLED باللون الأسود';

  @override
  String get shortcutAppSearch => 'فتح البحث';

  @override
  String get shortcutAppSettings => 'افتح الإعدادات';

  @override
  String get shortcutAppDownloads => 'فتح التنزيلات';

  @override
  String get shortcutAppNotifications => 'فتح الإخطارات';

  @override
  String get shortcutAppIncognito => 'تبديل التصفح المتخفي';

  @override
  String get shortcutAppShortcuts => 'إظهار اختصارات لوحة المفاتيح';

  @override
  String get shortcutPlayerPlayPause => 'تشغيل أو إيقاف مؤقت';

  @override
  String get shortcutPlayerSeekForward => 'تسعى إلى الأمام';

  @override
  String get shortcutPlayerSeekBack => 'اطلب العودة';

  @override
  String get shortcutPlayerSeekForwardLong => 'تقدم للأمام 30 ثانية';

  @override
  String get shortcutPlayerSeekBackLong => 'الرجوع إلى الوراء 30 ثانية';

  @override
  String get shortcutPlayerFrameForward => 'الإطار التالي';

  @override
  String get shortcutPlayerFrameBack => 'الإطار السابق';

  @override
  String get shortcutPlayerVolumeUp => 'رفع مستوى الصوت';

  @override
  String get shortcutPlayerVolumeDown => 'خفض مستوى الصوت';

  @override
  String get shortcutPlayerMute => 'كتم الصوت';

  @override
  String get shortcutPlayerFullscreen => 'ملء الشاشة';

  @override
  String get shortcutPlayerNext => 'الحلقة القادمة';

  @override
  String get shortcutPlayerPrevious => 'الحلقة السابقة';

  @override
  String get shortcutPlayerSkip => 'تخطي المقدمة أو النهاية';

  @override
  String get shortcutPlayerPanel => 'قائمة الحلقة';

  @override
  String get shortcutPlayerSpeedUp => 'تشغيل أسرع';

  @override
  String get shortcutPlayerSpeedDown => 'تشغيل أبطأ';

  @override
  String get shortcutPlayerSpeedReset => 'السرعة العادية';

  @override
  String get shortcutPlayerSubtitleToggle => 'تشغيل الترجمات أو إيقاف تشغيلها';

  @override
  String get shortcutPlayerSubtitleCycle => 'مسار الترجمة التالي';

  @override
  String get shortcutPlayerAudioCycle => 'المسار الصوتي التالي';

  @override
  String get shortcutPlayerStreamCycle => 'الدفق القادم';

  @override
  String get shortcutPlayerFit => 'تغيير ملاءمة الفيديو';

  @override
  String get shortcutReaderRight => 'الصفحة إلى اليمين';

  @override
  String get shortcutReaderLeft => 'الصفحة إلى اليسار';

  @override
  String get shortcutReaderNextPage => 'الصفحة التالية';

  @override
  String get shortcutReaderPreviousPage => 'الصفحة السابقة';

  @override
  String get shortcutReaderControls => 'إظهار عناصر التحكم أو إخفاؤها';

  @override
  String get shortcutReaderNextChapter => 'الفصل التالي';

  @override
  String get shortcutReaderPreviousChapter => 'الفصل السابق';

  @override
  String shortcutTaken(String action) {
    return 'مأخوذ من $action';
  }

  @override
  String get incognitoTurnedOn => 'وضع التصفح المتخفي قيد التشغيل';

  @override
  String get incognitoTurnedOff => 'وضع التصفح المتخفي معطل';

  @override
  String get onHoldAnime => 'أنيمي في الانتظار';

  @override
  String get onHoldManga => 'في الانتظار المانجا';

  @override
  String get droppedAnime => 'الانمي المحذوف';

  @override
  String get droppedManga => 'أسقطت المانجا';

  @override
  String get generalSectionDesktop => 'سطح المكتب';

  @override
  String get closeAction => 'عندما تكون النافذة مغلقة';

  @override
  String get closeActionQuit => 'قم بإنهاء التطبيق';

  @override
  String get closeActionWhenBusy =>
      'استمر في الجري في الدرج أثناء تشغيل شيء ما';

  @override
  String get closeActionAlways => 'استمر دائمًا في الجري في الدرج';

  @override
  String get gamepadNav => 'التنقل في لوحة الألعاب';

  @override
  String get gamepadNavDesc =>
      'التنقل في التطبيق والتحكم في اللاعب باستخدام وحدة التحكم في الألعاب';

  @override
  String get trayShow => 'عرض دارتوتسو';

  @override
  String get trayQuit => 'استقال';

  @override
  String get trayIdle => 'لا شيء قيد التشغيل';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'جارٍ تنزيل عناصر $count',
      one: 'جارٍ تنزيل العنصر $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'مزامنة القوائم الخاصة بك';

  @override
  String get trayUpdating => 'تحديث التطبيق';

  @override
  String get trayPlaying => 'اللعب في نافذة صغيرة';

  @override
  String get traySearch => 'بحث';

  @override
  String get trayPauseDownloads => 'إيقاف التنزيلات مؤقتًا';

  @override
  String get trayResumeDownloads => 'استئناف التنزيلات';

  @override
  String get playerDownloadTitle => 'تحميل المشغل';

  @override
  String get playerDownloadBody =>
      'يقوم Dartotsu بإحضار محرك الفيديو الخاص به مرة واحدة. يبدأ التشغيل بمجرد أن يصبح جاهزًا.';

  @override
  String get playerDownloadStarting => 'بدء التنزيل…';

  @override
  String get playerDownloadFailedTitle => 'لم أستطع الحصول على اللاعب';

  @override
  String get playerDownloadFailedBody =>
      'تحقق من اتصالك وحاول مرة أخرى. يبدأ التنزيل من حيث توقف.';

  @override
  String get playerDownloadRetry => 'حاول مرة أخرى';

  @override
  String get playerDownloadCopy => 'نسخ التفاصيل';

  @override
  String get removePlayerTitle => 'إزالة اللاعب؟';

  @override
  String get removePlayerMessage =>
      'لا يمكن تشغيل مقاطع الفيديو حتى يتم تنزيل المشغل مرة أخرى.';

  @override
  String get trailerFailed =>
      'تعذر تشغيل المقطع الدعائي هنا، وتم فتحه في المتصفح';
}
