// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'האפליקציה החדשה והטובה ביותר\nלעקוב אחרי אנימה ומנגה';

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
  String get login => 'התחבר';

  @override
  String loginTo(String service) {
    return 'התחבר ל-$service';
  }

  @override
  String logout(String type) {
    return 'התנתק $type';
  }

  @override
  String get confirmLogout => 'האם אתה בטוח שברצונך להתנתק?';

  @override
  String get anime => 'אנימה';

  @override
  String get manga => 'מנגה';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'ישוע';

  @override
  String get novel => 'רומן';

  @override
  String get ln => 'רומן קל';

  @override
  String get home => 'בית';

  @override
  String get search => 'חיפוש';

  @override
  String get calendar => 'לוח שנה';

  @override
  String get settings => 'הגדרות';

  @override
  String get watch => 'צפה';

  @override
  String get read => 'קרא';

  @override
  String get info => 'מידע';

  @override
  String get comments => 'תגובות';

  @override
  String get addToList => 'הוסף לרשימה';

  @override
  String get series => 'סדרה';

  @override
  String get season => 'עונה';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'סדרות',
      one: 'פרק',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'פרקים',
      one: 'פרק',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'כרכים',
      one: 'כרך',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'סרטים',
      one: 'סרט',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'סדרות';

  @override
  String get totalChapters => 'פרקים';

  @override
  String nextEpisodeRelease(int episode) {
    return 'שם הסרטון: X8X ישוחרר';
  }

  @override
  String get genres => 'ז\'אנרים';

  @override
  String get scanlators => 'מתרגמים';

  @override
  String list(String type) {
    return 'רשימת $type';
  }

  @override
  String get watching => 'צפייה';

  @override
  String get reading => 'קריאה לקריאה';

  @override
  String get readStatus => 'קרא';

  @override
  String get watchStatus => 'צפו';

  @override
  String planned(String type) {
    return '$type מתוכנן';
  }

  @override
  String onHold(String type) {
    return '$type בהמתנה';
  }

  @override
  String get droppedAnime => 'אנימה מבוטלת';

  @override
  String get droppedManga => 'מנגה מבוטלת';

  @override
  String noDropped(String type) {
    return 'לא ביטלת אף $type עדיין.';
  }

  @override
  String get continueReading => 'המשך לקרוא';

  @override
  String get continueWatching => 'המשך לצפות';

  @override
  String browse(String type) {
    return 'עיין ב-$type';
  }

  @override
  String trending(String type) {
    return '$type במגמה';
  }

  @override
  String popular(String type) {
    return '$type פופולרי';
  }

  @override
  String get topAiring => 'משודרים מובילים';

  @override
  String topRated(String type) {
    return '$type בעלי הדירוג הגבוה ביותר';
  }

  @override
  String get topScore => 'Top Score';

  @override
  String mostFavourite(String type) {
    return '$type המועדף ביותר';
  }

  @override
  String get thisSeason => 'העונה הנוכחית';

  @override
  String get nextSeason => 'העונה הבאה';

  @override
  String get previousSeason => 'העונה הקודמת';

  @override
  String get recommended => 'מומלץ';

  @override
  String get recommendationsEmptyMessage =>
      'צפה/קרא קצת אנימה או מנגה כדי לקבל המלצות';

  @override
  String get recentUpdates => 'עדכונים אחרונים';

  @override
  String get allCaughtUpNew => 'סיימת הכול, מה חדש?';

  @override
  String favorite(String type) {
    return '$type מועדף';
  }

  @override
  String get favorites => 'מועדפים';

  @override
  String get noFavourites =>
      'נראה שאתה לא אוהב כלום,\nנסה לסמן סדרה למועדפים כדי לשמור אותה כאן.';

  @override
  String get noOnHold => 'נראה שלא שמת שום דבר בהמתנה.';

  @override
  String manageLayout(String service, String page) {
    return 'נהל את הפריסה של דף $page עבור $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'באפשרותך לנהל את פריסת דף $page על ידי גרירה ושחרור של הפריטים';
  }

  @override
  String get gridView => 'תצוגת רשת';

  @override
  String get listView => 'רשימת View';

  @override
  String get compactView => 'תצוגה קומפקטית';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'מיין';

  @override
  String get utd => 'מלמעלה למטה';

  @override
  String get dtu => 'למטה עד Up';

  @override
  String get rtl => 'ימין לשמאל';

  @override
  String get ltr => 'לשמאל to right';

  @override
  String get direction => 'כיוון';

  @override
  String get episodeWatched => 'פרק נצפה';

  @override
  String get chapterRead => 'פרק נקרא';

  @override
  String get outOf => 'בחוץ';

  @override
  String get totalOf => 'Total of';

  @override
  String get selected => 'נבחר';

  @override
  String get found => 'נמצאו';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'תוספים',
      one: 'תוסף',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type זמין';
  }

  @override
  String installed(String type) {
    return '$type מותקן';
  }

  @override
  String get extensionsDescription => 'התקן ונהל הרחבות לפונקציות נוספות';

  @override
  String get addAnimeRepo => 'תגית: Anime Repo';

  @override
  String get addAnimeRepoDesc => 'הוסף Anime Repo ממקורות שונים';

  @override
  String get addMangaRepo => 'תגית: Manga Repo';

  @override
  String get addMangaRepoDesc => 'הוסף Manga Repo ממקורות שונים';

  @override
  String get addNovelRepo => 'תגית: Repo';

  @override
  String get addNovelRepoDesc => 'הוסף הרומן Repo ממקורות שונים';

  @override
  String get loadExtensionsIcon => 'תגית: growth';

  @override
  String get loadExtensionsIconDesc => 'להשבית אם הסיומת דף lags';

  @override
  String get autoUpdate => 'עדכון אוטומטי';

  @override
  String get autoUpdateDesc => 'הרחבות עדכון אוטומטי';

  @override
  String get installSourceToStart => 'התקנת מקור מדף הרחבה כדי להתחיל';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'משך ממוצע';

  @override
  String get characters => 'דמויות';

  @override
  String get synopsis => 'תקציר';

  @override
  String get endDate => 'תאריך סיום';

  @override
  String get format => 'פורמט';

  @override
  String get meanScore => 'ציון ממוצע';

  @override
  String get name => 'שם השם';

  @override
  String get nameRomaji => 'שם (רומאג\'י)';

  @override
  String get popularity => 'פופולריות';

  @override
  String get relations => 'יחסים';

  @override
  String get prequel => 'שאלה';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'מקור Source';

  @override
  String get staff => 'צוות';

  @override
  String get startDate => 'התחל תאריך';

  @override
  String get status => 'סטטוס';

  @override
  String get studio => 'סטודיו Studio';

  @override
  String get synonyms => 'מילים נרדפות';

  @override
  String get tags => 'תגיות';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'הצג פחות';

  @override
  String get expandText => 'הצג עוד';

  @override
  String get comingSoon => 'בקרוב';

  @override
  String get wrongTitle => 'כותרת שגויה?';

  @override
  String get missingResults => 'Missing Results?';

  @override
  String get youTube => 'לשחק ב- YouTube?';

  @override
  String get mediaNotFound => 'מדיה לא נמצאה';

  @override
  String get noChapterFound => 'שום פרק לא מצא';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'פעילויות',
      one: 'פעילות',
    );
    return '$_temp0';
  }

  @override
  String get language => 'שפה';

  @override
  String get account => 'חשבון';

  @override
  String get accountDescription =>
      'נהל את החשבונות שלך ב-AniList, MAL ו-Discord בקלות';

  @override
  String get common => 'הגדרות כלליות';

  @override
  String get commonDescription => 'גישה להגדות כלליות לשימוש נוח באפליקציה';

  @override
  String get animeDescription => 'התאם אישית ונהל את העדפות האנימה שלך';

  @override
  String get mangaDescription => 'ארגן והתאם אישית את חווית המנגה שלך';

  @override
  String get about => 'אודות';

  @override
  String get aboutDescription => 'למד עוד על האפליקציה והיוצרים שלה';

  @override
  String get notifications => 'התראות';

  @override
  String get notificationsDescription => 'הגדר איך ומתי תקבל התראות';

  @override
  String get offlineMode => 'מצב לא מקוון';

  @override
  String get offlineModeDescription => 'השתמש באפליקציה ללא חיבור לאינטרנט';

  @override
  String get incognitoMode => 'מצב גלישה פרטית';

  @override
  String get incognitoModeDescription => 'גלוש מבלי לשמור את הפעילות שלך';

  @override
  String get hidePrivate => 'הסתר פרטי';

  @override
  String get hidePrivateDescription => 'הסתר סדרות פרטיות מעמוד הבית.';

  @override
  String get hiddenMedia => 'מדיה מוסתרת';

  @override
  String get noHiddenMediaFound => 'לא נמצאה מדיה מוסתרת';

  @override
  String get playerSettingsTitle => 'הגדרות נגן';

  @override
  String get playerSettingsDesc => 'שינוי הגדרות השחקן';

  @override
  String get speed => 'מהירות';

  @override
  String get speedDescription => 'מהירות ברירת מחדל לנגן';

  @override
  String get cursedSpeed => 'מהירות מקוללת';

  @override
  String get cursedSpeedDescription => 'למי שעסוקים מדי בחיים';

  @override
  String get resizeMode => 'מצב שינוי גודל';

  @override
  String get resizeModeDescription => 'מצב ברירת מחדל לשינוי גודל בנגן';

  @override
  String get skipButton => 'כפתור דילוג';

  @override
  String get skipButtonDescription => 'משך הזמן של כפתור הדילוג';

  @override
  String get thumbLessSeekBar => 'שם הסרטון: ThumbLess Seek Bar';

  @override
  String get thumbLessSeekBarDesc => 'להסיר את האגודל מהבר המבוקש';

  @override
  String get customMPV => 'MPV המונחים:';

  @override
  String customMPVDescription(String path) {
    return 'אפשרות זו להשתמש קובץ התצורה MPV שלך. הניחו את התצורה המותאמות אישית שלכם ב-X88X';
  }

  @override
  String get adjustBrightness => 'Adjust Brightness';

  @override
  String get adjustBrightnessDescription =>
      'Enable brightness adjustment by swiping up/down on the left side of the screen';

  @override
  String get adjustVolume => 'Adjust Volume';

  @override
  String get adjustVolumeDescription =>
      'Enable volume adjustment by swiping up/down on the right side of the screen';

  @override
  String get subtitles => 'כתוביות';

  @override
  String get showSubtitles => 'הצג כתוביות';

  @override
  String get showSubtitlesDescription => 'הצג כתוביות כברירת מחדל';

  @override
  String get subtitlePreview => 'תצוגה מקדימה של כתוביות';

  @override
  String get fontColor => 'צבע גופן';

  @override
  String get fontColorDescription => 'צבע גופן לכותרת';

  @override
  String get fontFamily => 'משפחת גופנים';

  @override
  String get fontFamilyDescription => 'משפחת גופנים לכותרת';

  @override
  String get fontSize => 'גודל גופן';

  @override
  String get fontSizeDescription => 'גודל גופן לכותרת';

  @override
  String get fontWeight => 'משקל גופן';

  @override
  String get fontWeightDescription => 'משקל גופן לכותרת';

  @override
  String get backgroundColor => 'צבע רקע';

  @override
  String get backgroundColorDescription => 'צבע רקע הכותרת';

  @override
  String get outlineColor => 'צבע קו מתאר';

  @override
  String get outlineColorDescription => 'צבע קו המתאר לכותרת';

  @override
  String get bottomPadding => 'מרווח תחתון';

  @override
  String get bottomPaddingDescription => 'מרווח תחתון לכותרת';

  @override
  String get useLibass => 'Use Libass';

  @override
  String get useLibassDescription =>
      'Use Libass for subtitle rendering (overrides other subtitle settings)';

  @override
  String get useGpuNext => 'Use gpu-next';

  @override
  String get useGpuNextDescription =>
      'New rendering backend (may cause visual artifacts)';

  @override
  String get autoPlayNextEpisode => 'Auto Play Next Episode';

  @override
  String get autoPlayNextEpisodeDescription =>
      'Automatically play the next episode when the current one ends';

  @override
  String get automaticSourceSelection => 'Automatic Source Selection Method';

  @override
  String get automaticSourceSelectionDescription =>
      'Which method to use for automatic source selection';

  @override
  String get perAnimePlayerSettings => 'Per-Anime Player Settings';

  @override
  String get perAnimePlayerSettingsDesc =>
      'Use different player settings for each anime (disabling may override existing per-anime settings)';

  @override
  String get readerSettings => 'הגדרות קורא';

  @override
  String get readerSettingsDesc => 'שינוי הגדרות הקורא';

  @override
  String get spacedPages => 'דפי חלל';

  @override
  String get spacedPagesDesc => 'הוסף שטח בין דפים';

  @override
  String get hideScrollbar => 'תגית: Scrollbar';

  @override
  String get hideScrollbarDesc => 'Hide Galbar בזמן קריאה';

  @override
  String get hidePageNumber => 'תגית: Page Number';

  @override
  String get hidePageNumberDesc => 'מספר העמודים תוך כדי קריאה';

  @override
  String get theme => 'ערכת נושא';

  @override
  String get themeDescription =>
      'התאם אישית את המראה והאווירה של האפליקציה שלך';

  @override
  String get darkMode => 'מצב כהה';

  @override
  String get enableDarkMode => 'הפעל מצב כהה';

  @override
  String get glassEffect => 'אפקט זכוכית';

  @override
  String get glassEffectDescription => 'נותן אפקט זכוכית קפוא לאפליקציית';

  @override
  String get coverTheme => 'ערכת נושא';

  @override
  String get coverThemeDescription => 'השתמש תמונת כיסוי מדיה כצבע נושא';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'השתמש באותו צבע כמו ברקע שלך';

  @override
  String get customTheme => 'מותאם אישית נושא';

  @override
  String get customThemeDescription =>
      'השתמש בצבעים האישיים שלך עבור ערכת הנושא';

  @override
  String get oledThemeVariant => 'גרסת נושא OLED';

  @override
  String get oledThemeVariantDescription => 'הפעל מצב OLED';

  @override
  String get colorPicker => 'בוחר צבע';

  @override
  String get pickColor => 'בחר צבע';

  @override
  String get colorPickerDescription => 'בחר גוון';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'מותאם אישית';

  @override
  String get customPath => 'נתיב מותאם אישית';

  @override
  String get customPathDescription =>
      'הגדרת נתיב מותאם אישית להצלת קבצים\nעיתונות ארוכה כדי להסיר';

  @override
  String get selectDirectory => 'בחר מנהל';

  @override
  String get selectMediaService => 'שירות מדיה נבחר';

  @override
  String get logFile => 'תגית File';

  @override
  String get logFileDescription => 'שתף את קובץ היומן';

  @override
  String get restoreSettings => 'שחזר הגדרות';

  @override
  String get differentCacheManager => 'מנהל Cache';

  @override
  String get differentCacheManagerDesc => 'השתמש במנהל תמונות שונה';

  @override
  String get webView => 'Web View';

  @override
  String get developersHelpers => 'מפתחים / Helpers';

  @override
  String get developersHelpersDesc => 'העבודה ללא תשלום של דארטוטסו';

  @override
  String get supportMaintainer => 'רוצה לתמוך במתחזק של Dartotsu?\nשקול לתרום';

  @override
  String get donationGoal => 'אין יעד תרומות כרגע';

  @override
  String get options => 'אפשרויות';

  @override
  String get ok => 'אוקי';

  @override
  String get cancel => 'ביטול';

  @override
  String get yes => 'כן';

  @override
  String get no => 'לא';
}
