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
  String get appTagline => 'האפליקציה החדשה והכי טובה\nלמעקב אחרי אנימה ומנגה';

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
  String get loadMore => 'טען עוד';

  @override
  String get login => 'התחברות';

  @override
  String get continueAsGuest => 'המשך כאורח';

  @override
  String get getStarted => 'בואו נתחיל';

  @override
  String get loginWithToken => 'התחברות עם טוקן';

  @override
  String get pasteTokenHint => 'הדבק את טוקן הגישה שלך';

  @override
  String loginTo(String service) {
    return 'התחברות ל-$service';
  }

  @override
  String get settings => 'הגדרות';

  @override
  String get account => 'חשבון';

  @override
  String get about => 'אודות';

  @override
  String get language => 'שפה';

  @override
  String get animationSpeed => 'אנימציות';

  @override
  String get animationSpeedDesc => 'מהירות המעברים ואפקטי הכניסה בכל האפליקציה';

  @override
  String get animationSpeedOff => 'כבוי';

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
  String get unknownSource => 'מקור לא מוכר';

  @override
  String get install => 'התקן';

  @override
  String get update => 'עדכן';

  @override
  String get uninstall => 'הסר';

  @override
  String get updateInstallCancelled =>
      'ההתקנה בוטלה. אם אנדרואיד אמר שהאפליקציה מתנגשת עם הגרסה המותקנת, החתימה שונה: קודם מסירים את הגרסה הנוכחית ואז מתקינים את העדכון';

  @override
  String updateInstallFailed(String error) {
    return 'העדכון נכשל: $error';
  }

  @override
  String get appLock => 'נעילת אפליקציה';

  @override
  String get appLockDesc => 'לבקש קוד כשהאפליקציה נפתחת או חוזרת אחרי זמן מה';

  @override
  String get appLockBiometric => 'פתח את הנעילה באמצעות ביומטריה';

  @override
  String get appLockBiometricDesc =>
      'השתמש בטביעת האצבע או בפנים שלך במקום להקליד את קוד הגישה';

  @override
  String get appLockBiometricReason => 'פתח את Dartotsu';

  @override
  String get appLockDelay => 'נעילה במצב סרק';

  @override
  String get appLockDelayAlways => 'תמיד';

  @override
  String get appLockDelayNever => 'לעולם לא';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count דקות',
      one: 'דקה אחת',
    );
    return 'לְאַחַר $_temp0';
  }

  @override
  String get appLockUseBiometric => 'השתמש ביומטריה';

  @override
  String get appLockUnlock => 'הכנס את הקוד שלך';

  @override
  String get appLockWrong => 'קוד שגוי';

  @override
  String appLockWait(String seconds) {
    return 'יותר מדי ניסיונות, חכה $seconds שניות';
  }

  @override
  String get appLockNew => 'בחר קוד';

  @override
  String get appLockNewHint => '4 עד 8 ספרות';

  @override
  String get appLockConfirm => 'הכנס אותו שוב';

  @override
  String get appLockMismatch => 'הקודים לא תואמים';

  @override
  String get appLockOn => 'הקוד הוגדר';

  @override
  String get appLockRemoveTitle => 'הכנס את הקוד כדי לכבות את הנעילה';

  @override
  String get installFailed => 'ההתקנה נכשלה';

  @override
  String get updateFailed => 'העדכון נכשל';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count עדכונים זמינים',
      one: 'עדכון אחד זמין',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'עדכן הכל';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done מתוך $total הרחבות עודכנו';
  }

  @override
  String get updateConflictTitle => 'העדכון לא הותקן';

  @override
  String updateConflictBody(String names) {
    return 'לא ניתן היה להתקין את $names על הגרסה הקיימת. זה בדרך כלל אומר שהעותק המותקן נחתם בצורה שונה. להסיר את ההתקנה ולהתקין את הגרסה החדשה?';
  }

  @override
  String get updateConflictAction => 'הסר את ההתקנה והתקן מחדש';

  @override
  String get noSourceSettings => 'למקור הזה אין הגדרות';

  @override
  String get addPluginRepository => 'הוסף מאגר תוספים';

  @override
  String get pluginIndexUrlHint => 'כתובת אינדקס התוספים';

  @override
  String get addRepository => 'הוסף מאגר';

  @override
  String get importRepositoryFile => 'ייבא קובץ';

  @override
  String get pluginRepoUpdated => 'מאגר התוספים עודכן';

  @override
  String get pluginRepoUpdateFailed => 'רענון מאגר התוספים נכשל';

  @override
  String get ok => 'אישור';

  @override
  String get cancel => 'ביטול';

  @override
  String get yes => 'כן';

  @override
  String get no => 'לא';

  @override
  String get save => 'שמור';

  @override
  String get reset => 'איפוס';

  @override
  String get clear => 'נקה';

  @override
  String get test => 'בדיקה';

  @override
  String get testing => 'בודק…';

  @override
  String get resolving => 'מפענח…';

  @override
  String get none => 'ללא';

  @override
  String get selectMediaService => 'בחר שירות מדיה';

  @override
  String get manageServices => 'שירותי מדיה';

  @override
  String get manageServicesDesc =>
      'סדר מחדש את השירותים ובחר אילו מהם יוצגו בבוחר';

  @override
  String get manageServicesHint => 'גרור לסדר מחדש, כבה את אלה שאינך משתמש בהם';

  @override
  String get pickColor => 'בחר צבע';

  @override
  String get colorPickerCustom => 'מותאם אישית';

  @override
  String get colorPickerTransparent => 'שקוף';

  @override
  String get ltr => 'משמאל לימין';

  @override
  String get searchSettings => 'חפש בהגדרות';

  @override
  String nothingMatches(String query) {
    return 'אין תוצאות עבור \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'חפש ב$category';
  }

  @override
  String get settingsAppearance => 'מראה';

  @override
  String get settingsAppearanceDesc => 'ערכת נושא, צבעים, מצב זכוכית';

  @override
  String get settingsGeneral => 'כללי';

  @override
  String get settingsGeneralDesc => 'שפה והתנהגות';

  @override
  String get settingsNetwork => 'רשת';

  @override
  String get settingsNetworkDesc => 'סוכן משתמש, אישורים, DNS ופרוקסי';

  @override
  String get settingsAccountDesc => 'שירות מעקב והתחברות';

  @override
  String get settingsUpdates => 'עדכונים';

  @override
  String get amoledBlack => 'שחור AMOLED';

  @override
  String get amoledBlackDesc => 'משטחים שחורים לגמרי במצב כהה';

  @override
  String get glassMode => 'מצב זכוכית';

  @override
  String get glassModeDesc => 'משטחים מטושטשים מעל תמונות הספרייה שלך';

  @override
  String get shelfFrame => 'מסגרת סביב מדורים';

  @override
  String get shelfFrameDesc =>
      'הצג כרטיס מאחורי כל מדף, או תן לשורות לשבת ישר על הדף';

  @override
  String get settingsExtensionsDesc => 'מנהלי מקורות, מאגרים והגדרות תוספים';

  @override
  String get settingsAddons => 'תוספות';

  @override
  String get customPath => 'נתיב אחסון מותאם';

  @override
  String get stories => 'סיפורים';

  @override
  String get watchOrder => 'סדר שעון';

  @override
  String get watchOrderOpenSite => 'פתח באתר chiaki.site';

  @override
  String get watchOrderUnavailable => 'לא נמצאה סדר צפייה עבור כותר זה';

  @override
  String get watchOrderOpenFailed => 'לא ניתן היה לפתוח את הכותרת הזו';

  @override
  String get watchOrderCurrent => 'אתה כאן';

  @override
  String get watchOrderCredit => 'צפו בהזמנות מאת chiaki.site';

  @override
  String get customPathDesc =>
      'איפה נשמרים נתוני האפליקציה. לחיצה ארוכה לאיפוס';

  @override
  String get selectDirectory => 'בחר תיקייה';

  @override
  String get differentCacheManager => 'מטמון תמונות חלופי';

  @override
  String get differentCacheManagerDesc => 'השתמש במנהל מטמון אחר לתמונות';

  @override
  String get settingsSync => 'הגדרות סנכרון';

  @override
  String get settingsSyncDesc =>
      'שמור את ההגדרות שלך זהות בכל מכשיר. הם מאוחסנים בתמצית פרטית בחשבון GitHub שלך';

  @override
  String get settingsSyncSwitch => 'סנכרון בשינוי';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'היכנס באמצעות GitHub';

  @override
  String get settingsSyncSignInDesc => 'ההגדרות מאוחסנות בתמצית פרטית בחשבונך';

  @override
  String get settingsSyncToken => 'השתמש באסימון גישה אישי';

  @override
  String get settingsSyncTokenDesc =>
      'צור אחד ב-github.com/settings/tokens עם ההרשאה העיקרית בלבד';

  @override
  String get settingsSyncTokenField => 'אסימון';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'מחובר בתור $user';
  }

  @override
  String get settingsSyncSignOut => 'צא';

  @override
  String settingsSyncCode(Object code) {
    return 'הזן $code ב- GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'דף GitHub נפתח בדפדפן שלך. הקש כדי להעתיק את הקוד, או הקש והחזק כדי לבטל.';

  @override
  String get settingsSyncSignInFailed => 'לא ניתן להיכנס ל-GitHub';

  @override
  String get dcPreview => 'תצוגה מקדימה';

  @override
  String get dcSampleWatching => 'צופה';

  @override
  String get dcSampleReading => 'קריאה';

  @override
  String get dcSampleBrowsing => 'גלישה';

  @override
  String get dcSampleLive => 'ממש עכשיו';

  @override
  String get dcLiveNothing =>
      'שום דבר לא מופיע כרגע. פתח כותרת, התחל פרק או פרק והוא מופיע כאן.';

  @override
  String get dcMemberList => 'ברשימת החברים';

  @override
  String get dcAccount => 'חשבון';

  @override
  String get dcSignIn => 'היכנס באמצעות דיסקורד';

  @override
  String get dcSignOut => 'צא';

  @override
  String get dcDesktopHint =>
      'בלי להתחבר, דיסקורד מציג את \"צופה בדרטוצו\" דרך אפליקציית שולחן העבודה. חבר את Discord כדי לקרוא לפעילות על שם הכותרת שלך, כולל בנייד.';

  @override
  String get dcMobileHint =>
      'חבר את דיסקורד כדי להראות מה אתה צופה או קורא. הוא משתמש בדף ההרשאה של Discord, לא באסימון החשבון שלך.';

  @override
  String get dcConnect => 'חבר דיסקורד';

  @override
  String get dcConnectDesc =>
      'פותח את דף ההרשאה של Discord ומוסיף Dartotsu תחת אפליקציות מורשות. דיסקורד מבקש לעדכן את הנוכחות שלך. רק אסימון רענון נשמר, לא אסימון החשבון שלך.';

  @override
  String get dcConnectFailed => 'לא ניתן לחבר את דיסקורד';

  @override
  String get dcConnectedSnack => 'דיסקורד מחובר';

  @override
  String get dcDisconnect => 'התנתק';

  @override
  String get dcDisconnectedSnack => 'הדיסקורד מנותק';

  @override
  String get dcUseToken => 'השתמש באסימון במקום זאת';

  @override
  String get dcRouteDesktop => 'דרך אפליקציית שולחן העבודה של Discord';

  @override
  String get dcRouteHeadless => 'דרך החשבון שלך';

  @override
  String get dcRouteGateway => 'דרך החשבון שלך, בשידור חי';

  @override
  String get dcRouteLinked => 'אפליקציה מחוברת';

  @override
  String get dcRouteNone => 'לא מחובר';

  @override
  String get dcStatusNeedsToken =>
      'צריך אסימון דיסקורד. חיבור האפליקציה לא קובע את הסטטוס המקוון שלך.';

  @override
  String get dcAccountOnly => 'צריך חשבון מחובר';

  @override
  String get dcStatusSection => 'סטטוס';

  @override
  String get dcControlStatus => 'לשלוט בסטטוס שלי';

  @override
  String get dcControlStatusDesc =>
      'שומר על חיבור חי לדיסקורד בזמן שנוכחות עשירה פועלת, כך ש-Dartotsu יכול להגדיר את הסטטוס שלך.';

  @override
  String get dcStatusOnline => 'באינטרנט';

  @override
  String get dcStatusIdle => 'בטלה';

  @override
  String get dcStatusDnd => 'אל תפריע';

  @override
  String get dcStatusInvisible => 'בלתי נראה';

  @override
  String get dcCustomStatus => 'סטטוס מותאם אישית';

  @override
  String get dcCustomStatusHint => 'מה אתה זומם?';

  @override
  String get dcActivitySection => 'פעילות';

  @override
  String get dcShowWatching => 'הצג תוך כדי צפייה';

  @override
  String get dcShowReading => 'הצג תוך כדי קריאה';

  @override
  String get dcListening => 'מקשיבה';

  @override
  String get dcCompeting => 'מתחרה';

  @override
  String get dcActivityName => 'שם הפעילות';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'כותרת';

  @override
  String get dcNameCustom => 'מותאם אישית';

  @override
  String get dcCustomNameHint => 'השם מוצג אחרי \"צופה\"';

  @override
  String get dcStatusText => 'טקסט סטטוס';

  @override
  String get dcStatusTextDesc => 'מה רשימת החברים מציגה ליד שמך';

  @override
  String get dcDisplayName => 'שם';

  @override
  String get dcDisplayState => 'מדינה';

  @override
  String get dcDisplayDetails => 'פרטים';

  @override
  String get dcTextSection => 'טקסט';

  @override
  String get dcDetails => 'שורה עליונה';

  @override
  String get dcState => 'שורה תחתונה';

  @override
  String get dcTemplateHint => 'Empty משתמש בברירת המחדל';

  @override
  String get dcVariables => 'הקש כדי להוסיף ערך';

  @override
  String get dcImagesSection => 'תמונות';

  @override
  String get dcLargeImage => 'תמונה גדולה';

  @override
  String get dcLargeAuto => 'אוטומטי';

  @override
  String get dcLargeCover => 'כיסוי';

  @override
  String get dcLargeLogo => 'לוגו';

  @override
  String get dcSmallImage => 'תמונה קטנה';

  @override
  String get dcSmallAuto => 'לוגו';

  @override
  String get dcSmallNone => 'אין';

  @override
  String get dcTimerStyle => 'סגנון טיימר';

  @override
  String get dcTimerAuto => 'אוטומטי';

  @override
  String get dcTimerElapsed => 'חלף';

  @override
  String get dcTimerRemaining => 'נשאר';

  @override
  String get dcButtonsSection => 'כפתורים';

  @override
  String get dcButtonMedia => 'קישור לכותרת';

  @override
  String get dcButtonApp => 'קישור לדרטוצו';

  @override
  String get dcButtonCustom => 'כפתור מותאם אישית';

  @override
  String get dcButtonLabel => 'תווית';

  @override
  String get dcButtonUrl => 'קישור';

  @override
  String get dcPrivacySection => 'פרטיות';

  @override
  String get dcPrivateText => 'טקסט פרטי';

  @override
  String get dcPrivateHint => 'משהו פרטי';

  @override
  String get dcTokenWarning =>
      'הכניסה משתמשת באסימון החשבון שלך. הכללים של דיסקורד לא מעודדים זאת, אז השתמש בו על אחריותך בלבד.';

  @override
  String get dcConnected => 'מחובר';

  @override
  String get dcConnection => 'חיבור';

  @override
  String get dcMethodDesktop => 'אפליקציית דיסקורד לשולחן העבודה';

  @override
  String get dcMethodDesktopDesc =>
      'משמש אוטומטית כאשר שום דבר אחר אינו מחובר. דיסקורד חייב להיות פתוח במחשב הזה.';

  @override
  String get dcMethodToken => 'אסימון חשבון';

  @override
  String get dcInUse => 'בשימוש';

  @override
  String get dcRecommended => 'מומלץ';

  @override
  String get dcConnecting => 'מתחבר...';

  @override
  String get dcDisconnected => 'לא מחובר';

  @override
  String dcSignedInAs(String name) {
    return 'מחובר בתור $name';
  }

  @override
  String get settingsSyncOn => 'פועל';

  @override
  String get settingsSyncCustom => 'מותאם אישית';

  @override
  String get settingsSyncChangedHeader => 'שינו הגדרות';

  @override
  String get settingsSyncNoneChanged =>
      'עדיין לא שינית אף אחד מאלה, אז אין מה לסנכרן.';

  @override
  String get settingsSyncChangedOnly =>
      'רק ההגדרות ששינית מאוחסנות. כל השאר משתמש בברירת המחדל שלו בכל מכשיר. סמל הענן מציג את מה שכבר נמצא בשרת.';

  @override
  String get settingsSyncOffCategory =>
      'לא מסתנכרן. אלה נשארים במכשיר הזה והעותק של השרת נשאר כמו שהוא.';

  @override
  String get settingsSyncPartsNote =>
      'לכל מכשיר. כבוי שומר על הערך של כל מכשיר, כך שטלפון וטלוויזיה יכולים להיות שונים.';

  @override
  String get settingsSyncPartSubtitles => 'גודל כתוביות וצבעים';

  @override
  String get settingsSyncPartSubtitlesDesc => 'גודל, משקל, צבעים ומיקום';

  @override
  String get settingsSyncPartPictureColors => 'צבעי תמונה';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'בהירות, ניגודיות, רוויה, גמא, גוון ו-HDR';

  @override
  String get settingsSyncPartPalette => 'צבעי נושא';

  @override
  String get settingsSyncPartPaletteDesc => 'נושא, צבע מבטא ושחור OLED';

  @override
  String get settingsSyncCatOther => 'צפייה, קריאה ושירותים';

  @override
  String get settingsSyncTitles => 'צפו בהתקדמות ובכותרות';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records כותרות ו$resume רשומות קורות חיים בשרת';
  }

  @override
  String get settingsSyncTitlesNone => 'עדיין לא הועלה כלום';

  @override
  String get settingsSyncTitlesNote =>
      'צפה וקרא עמדות, מדף קורות החיים, הרשימות המקומיות שלך, סימניות, דגשים ואפשרויות לכל כותרת. התאמות מקור וזרמים נשארים בכל מכשיר מכיוון שהם תלויים בתוספים שלך. העלאת כותרות לכל היותר כל 45 שניות.';

  @override
  String get settingsSyncConnect => 'לא מחובר';

  @override
  String get settingsSyncConnectDesc =>
      'היכנס באמצעות GitHub כדי לשמור על ההגדרות שלך זהות בכל מכשיר.';

  @override
  String get settingsSyncFailedTitle => 'הסנכרון נכשל';

  @override
  String get settingsSyncPaused => 'מושהה';

  @override
  String get settingsSyncPausedDesc =>
      'שום דבר לא מועלה או מוריד בזמן שהמצב כבוי.';

  @override
  String get settingsSyncUpToDate => 'מעודכן';

  @override
  String get settingsSyncRetry => 'נסה שוב';

  @override
  String get settingsSyncAccount => 'חשבון GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'הנתונים שלך עוברים לעיקרון פרטי בחשבון שלך.';

  @override
  String get settingsSyncWaiting => 'מחכה שתאשר ב-GitHub';

  @override
  String get settingsSyncCopyCode => 'הקש על הקוד כדי להעתיק אותו';

  @override
  String get settingsSyncCancel => 'בטל';

  @override
  String get settingsSyncStatSettings => 'הגדרות';

  @override
  String get settingsSyncStatTitles => 'כותרות';

  @override
  String get settingsSyncStatShelf => 'קורות חיים';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'הועלה $time מ$device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count השתנה',
      one: '1 השתנה',
      zero: 'שום דבר לא השתנה עדיין',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'חשבונות וסיסמאות';

  @override
  String get settingsSyncSecretsDesc =>
      'סנכרן את הכניסות שלך (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), מפתחות API ונעילת אפליקציות בין המכשירים שלך. הם מוצפנים עם ביטוי סיסמה שנשאר במכשירים שלך, כך ש-GitHub לעולם לא רואה אותם.';

  @override
  String get settingsSyncSecretsOn => 'חשבונות מסונכרנים ומוצפנים';

  @override
  String get settingsSyncSecretsOnDesc =>
      'יציאה במכשיר אחד לא מוצאת אותך במכשירים האחרים.';

  @override
  String get settingsSyncSecretsBroken =>
      'ביטוי הסיסמה כבר לא תואם לזה שבשרת. הזן אותו שוב כדי להמשיך לסנכרן חשבונות.';

  @override
  String get settingsSyncPassphraseSet => 'הגדר ביטוי סיסמה';

  @override
  String get settingsSyncPassphraseEnter => 'הזן את ביטוי הסיסמה שלך';

  @override
  String get settingsSyncPassphraseField => 'ביטוי סיסמה';

  @override
  String get settingsSyncPassphraseConfirm => 'חזור על משפט הסיסמה';

  @override
  String get settingsSyncPassphraseNew =>
      'בחר ביטוי סיסמה של 6 תווים לפחות. זה לא מאוחסן בשום מקום מלבד המכשירים שלך ולא ניתן לשחזר אותו. אם שכחת אותו, מחק את עותק השרת והתחל מחדש.';

  @override
  String get settingsSyncPassphraseExisting =>
      'הזן את משפט הסיסמה שבחרת במכשיר השני שלך. החשבונות במכשיר הזה יוחלפו בחשבונות המסונכרנים.';

  @override
  String get settingsSyncPassphraseWrong => 'ביטוי סיסמה שגוי';

  @override
  String get settingsSyncPassphraseMismatch => 'ביטויי הסיסמה אינם תואמים';

  @override
  String get settingsSyncPassphraseShort => 'השתמש ב-6 תווים לפחות';

  @override
  String get settingsSyncSecretsStop => 'הפסק לסנכרן חשבונות';

  @override
  String get settingsSyncSecretsDelete => 'מחק מ-GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'זה מסיר את קובץ החשבונות המוצפנים מהעיקר שלך. מכשירים אחרים שומרים על הכניסות שלהם ויכולים להגדיר ביטוי סיסמה חדש.';

  @override
  String get settingsSyncWhat => 'מה לסנכרן';

  @override
  String get settingsSyncServer => 'על השרת';

  @override
  String get settingsSyncServerEmpty => 'עדיין לא הועלה כלום';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'הגדרות $count, הועלה $time מ$device';
  }

  @override
  String get settingsSyncThisDevice => 'המכשיר הזה';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count הגדרות בשרת',
      one: 'הגדרה אחת בשרת',
      zero: 'שום דבר בשרת',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'סנכרן עכשיו';

  @override
  String get settingsSyncRunning => 'מסנכרן...';

  @override
  String get settingsSyncNever => 'עדיין לא מסונכרן';

  @override
  String settingsSyncLast(Object time) {
    return 'סנכרון אחרון $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'סנכרון נכשל: $error';
  }

  @override
  String get settingsSyncScope =>
      'רק הגדרות שעובדות אותו דבר בכל מקום מסונכרנות. חשבונות, אסימונים, תיקיות, הרחבות, התראות, Discord, עדכונים וגודל חלון נשארים בכל מכשיר.';

  @override
  String get backupAndRestore => 'גיבוי ושחזור';

  @override
  String get backupAndRestoreDesc => 'שמור או טען את ההעדפות שלך';

  @override
  String get backup => 'גיבוי';

  @override
  String get restore => 'שחזור';

  @override
  String get loadExtensionsIcon => 'טען אייקונים של תוספים';

  @override
  String get autoUpdateRuntimes => 'עדכן את זמני הריצה של ההרחבה באופן אוטומטי';

  @override
  String get autoUpdateRuntimesDesc =>
      'הורד את Aniyomi, CloudStream וגרסאות זמן ריצה אחרות ברקע. כבוי, במקום זאת יופיע סמל עדכון לצד המנהל.';

  @override
  String get loadExtensionsIconDesc => 'הצג אייקונים של מקורות ברשימות התוספים';

  @override
  String get sectionStorage => 'אחסון';

  @override
  String get sectionManagers => 'מנהלים';

  @override
  String get sectionOptions => 'אפשרויות';

  @override
  String get backupTabBackup => 'גבה';

  @override
  String get backupTabRestore => 'שחזר';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys הגדרות ב-$categories קטגוריות';
  }

  @override
  String backupLastBackup(Object time) {
    return 'גיבוי אחרון $time';
  }

  @override
  String get backupNever => 'עדיין אין גיבוי';

  @override
  String get backupSelectAll => 'בחר הכול';

  @override
  String get backupClearAll => 'נקה';

  @override
  String backupKeys(Object count) {
    return '$count הגדרות';
  }

  @override
  String get backupPasswordRequired => 'סיסמה (נדרשת עבור נתוני חשבון)';

  @override
  String get backupProtectedNeedsPassword =>
      'הגדר סיסמה לגיבוי נתוני חשבון, או בטל את הסימון שלה';

  @override
  String get backupProtectedSkipped =>
      'לגיבוי זה אין סיסמה, ולכן נתוני החשבון שלו דילגו';

  @override
  String get backupPassword => 'סיסמה (אופציונלי)';

  @override
  String get backupPasswordHint => 'השאר ריק לברירת המחדל';

  @override
  String get backupSensitive =>
      'כולל טוקנים של התחברות. שמור על הקובץ הזה פרטי';

  @override
  String get backupCreate => 'צור גיבוי';

  @override
  String backupSaved(Object name) {
    return 'הגיבוי נשמר ב-$name';
  }

  @override
  String backupFailed(Object error) {
    return 'הגיבוי נכשל: $error';
  }

  @override
  String get backupPickFile => 'בחר קובץ גיבוי';

  @override
  String get backupPickFileDesc => 'בחר קובץ .json שנוצר ב-Dartotsu';

  @override
  String get backupChooseAnother => 'בחר קובץ אחר';

  @override
  String get backupCreatedAt => 'נוצר';

  @override
  String get backupAppVersion => 'גרסת האפליקציה';

  @override
  String get backupDevice => 'מכשיר';

  @override
  String get backupAccounts => 'חשבונות';

  @override
  String get backupSize => 'גודל';

  @override
  String get backupEncrypted => 'מוגן בסיסמה';

  @override
  String get backupUnlock => 'פתח נעילה';

  @override
  String get backupWrongPassword => 'אי אפשר לקרוא את הקובץ. בדוק את הסיסמה';

  @override
  String get backupRestoreSelected => 'שחזר את הנבחרים';

  @override
  String backupRestoreConfirm(Object count) {
    return 'לשחזר $count הגדרות? ערכים קיימים בקטגוריות האלה יידרסו.';
  }

  @override
  String get backupRestored => 'שוחזר. הפעל מחדש את האפליקציה כדי להחיל הכול';

  @override
  String backupRestoreFailed(Object error) {
    return 'השחזור נכשל: $error';
  }

  @override
  String get backupSelectOne => 'בחר לפחות קטגוריה אחת';

  @override
  String get backupCatTheme => 'מראה';

  @override
  String get backupCatThemeDesc =>
      'ערכת נושא, צבעים, זכוכית, גופנים וסגנון כרטיס';

  @override
  String get backupCatCommon => 'כללי';

  @override
  String get backupCatCommonDesc => 'שפה, אחסון, רשת והגדרות תוספים';

  @override
  String get backupCatPlayer => 'נגן';

  @override
  String get backupCatPlayerDesc => 'העדפות נגן';

  @override
  String get backupCatReader => 'קורא';

  @override
  String get backupCatReaderDesc => 'העדפות קורא';

  @override
  String get backupCatProtected => 'חשבונות';

  @override
  String get backupCatProtectedDesc => 'טוקנים של התחברות ונתוני כניסה';

  @override
  String get backupCatOther => 'שירותים ופידים';

  @override
  String get backupCatOtherDesc => 'פריסות פיד, רשימות והגדרות שירות';

  @override
  String get logFile => 'קובץ לוג';

  @override
  String get logFileDesc =>
      'שתף את לוג האפליקציה, או העתק את הנתיב שלו בלינוקס';

  @override
  String get logDelete => 'מחק קבצי יומן';

  @override
  String get logDeleteDesc => 'נקה את יומני האפליקציה השמורים כדי לפנות מקום';

  @override
  String logDeleted(String size) {
    return 'נמחק $size של יומנים';
  }

  @override
  String get missingSequel => 'חסר המשך';

  @override
  String get rising => 'עולה';

  @override
  String get stacks => 'ערימות';

  @override
  String get stacksAll => 'הכל';

  @override
  String get stacksFeatured => 'מוצגים';

  @override
  String get stacksMine => 'שלך';

  @override
  String get stacksSaved => 'נשמר';

  @override
  String get stacksFollowing => 'עוקב';

  @override
  String get stacksEmpty => 'אין כאן עדיין ערימות';

  @override
  String get stacksSignIn => 'היכנס ל-MangaBaka כדי לראות את הערימות שלך';

  @override
  String get stacksScopeNeeded =>
      'הערימות שלך זקוקות להרשאה חדשה. היכנס שוב ל-MangaBaka כדי לאפשר זאת.';

  @override
  String get stacksSignInAgain => 'היכנס שוב';

  @override
  String get stacksCouldntLoad => 'לא ניתן היה לטעון את הערימות';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'סדרת $count',
      one: '1 סדרה',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שומר',
      one: '1 שמירה',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'מאת $name';
  }

  @override
  String get stackSpoilers => 'ספוילרים';

  @override
  String get stackEmptyEntries => 'מחסנית זו ריקה';

  @override
  String get stackSave => 'שמור ערימה';

  @override
  String get stackUnsave => 'הסר מהשמורות';

  @override
  String get stackSavedToast => 'נשמר בערימות שלך';

  @override
  String get stackRemovedToast => 'הוסר מהערימות השמורה שלך';

  @override
  String userStacks(String name) {
    return 'ערימות מאת $name';
  }

  @override
  String get newsTitle => 'חדשות';

  @override
  String get newsEmpty => 'אין חדשות כרגע';

  @override
  String get newsCouldntLoad => 'לא ניתן היה לטעון את החדשות';

  @override
  String get logFileCopied => 'נתיב הלוג הועתק';

  @override
  String get donateSheetTitle => 'נהנה מ-Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu נבנית ומתוחזקת על ידי אדם אחד. אם היא שימושית לך, כדאי לתמוך בפיתוח.';

  @override
  String get donateLater => 'אולי אחר כך';

  @override
  String get glassBackground => 'רקע זכוכית';

  @override
  String get glassBackgroundDesc =>
      'באנר הפרופיל שלך, אלא אם הגדרת קישור לתמונה';

  @override
  String get glassBackgroundHint => 'קישור לתמונה (השאר ריק לשימוש בבאנר שלך)';

  @override
  String get followCover => 'עקוב אחרי הכריכה';

  @override
  String get followCoverDesc =>
      'הצבעים עוקבים אחרי הרקע, ובדפי פרטים אחרי הכריכה';

  @override
  String get followCoverMediaOnly => 'רק לתקשורת';

  @override
  String get followCoverMediaOnlyDesc =>
      'עקוב רק אחר השער בדפי מדיה, בכל מקום אחר שומר על הצבעים הרגילים';

  @override
  String get cardStyle => 'סגנון כרטיס';

  @override
  String get cardStyleDesc => 'מיקום כותרת, גודל, התקדמות ותגים';

  @override
  String get customFont => 'גופן';

  @override
  String get customFontDesc => 'ברירת מחדל, קובץ מהמכשיר או Google Fonts';

  @override
  String get customFontError => 'אי אפשר לטעון את קובץ הגופן הזה';

  @override
  String get googleFontError => 'אי אפשר להוריד את הגופן הזה';

  @override
  String get yourFonts => 'הגופנים שלך';

  @override
  String get addFontFile => 'הוסף קובץ גופן…';

  @override
  String get browseGoogleFonts => 'עיין ב-Google Fonts…';

  @override
  String get searchGoogleFonts => 'חפש ב-Google Fonts';

  @override
  String get defaultFont => 'ברירת מחדל';

  @override
  String get materialYou => 'חומר אתה';

  @override
  String get materialYouDesc => 'צבע דינמי מהמערכת';

  @override
  String get jsonTheme => 'קובץ ערכת נושא מותאם';

  @override
  String get jsonThemeDesc =>
      'צבעים חיים מ-~/.config/dartotsu/theme.json (סקריפט משלך או עריכות ידניות)';

  @override
  String get themeMode => 'מצב ערכת נושא';

  @override
  String get mode => 'מצב';

  @override
  String get trackingService => 'שירות מעקב';

  @override
  String get signOut => 'התנתקות';

  @override
  String get signIn => 'התחברות';

  @override
  String get notSignedIn => 'לא מחובר';

  @override
  String signOutOf(String service) {
    return 'להתנתק מ-$service?';
  }

  @override
  String get checkForUpdates => 'בדוק עדכונים';

  @override
  String get checkForUpdatesDesc => 'הודע על גרסה חדשה ב-GitHub';

  @override
  String get updateChannel => 'ערוץ עדכונים';

  @override
  String get channel => 'ערוץ';

  @override
  String get stable => 'יציב';

  @override
  String get preRelease => 'טרום-הפצה';

  @override
  String get alpha => 'אלפא';

  @override
  String get checkNow => 'בדוק עכשיו';

  @override
  String get userAgent => 'משתמש-סוכן';

  @override
  String get settingDefault => 'ברירת מחדל';

  @override
  String currentlyUsing(String value) {
    return 'כרגע: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ברירת מחדל (Cloudflare)';

  @override
  String get proxy => 'פרוקסי';

  @override
  String get proxyProtocol => 'סוג';

  @override
  String get proxyHost => 'שרת';

  @override
  String get proxyPort => 'פורט';

  @override
  String get proxyUsername => 'שם משתמש';

  @override
  String get proxyPassword => 'סיסמה';

  @override
  String get optional => 'אופציונלי';

  @override
  String get clearCookies => 'נקה עוגיות';

  @override
  String get clearCookiesDesc => 'מסיר את כל העוגיות השמורות';

  @override
  String notImplementedArea(String area) {
    return '$area — בקרוב';
  }

  @override
  String notImplementedService(String service) {
    return '$service עוד לא תומך בזה.';
  }

  @override
  String get couldNotLoadResults => 'אי אפשר לטעון תוצאות';

  @override
  String get updateCheckFailed => 'אי אפשר לבדוק עדכונים';

  @override
  String get highRefreshRate => 'קצב רענון גבוה';

  @override
  String get highRefreshRateDesc =>
      'השתמש בקצב הרענון הגבוה ביותר שהמסך שלך תומך בו';

  @override
  String get imageSave => 'שמור תמונה';

  @override
  String imageSavedTo(String path) {
    return 'נשמר ב-$path';
  }

  @override
  String get imageActionFailed => 'אי אפשר להוריד את התמונה';

  @override
  String get imageTitleCover => 'כריכה';

  @override
  String get imageTitlePage => 'עמוד';

  @override
  String get imageTitleBanner => 'באנר';

  @override
  String get imageTitleAvatar => 'תמונת פרופיל';

  @override
  String get verifyTls => 'אמת תעודות';

  @override
  String get verifyTlsDesc =>
      'דחה שרתים עם תעודות HTTPS לא תקינות. כבה רק למקור שמשתמש בתעודה בחתימה עצמית';

  @override
  String get clearCookiesConfirm =>
      'למחוק את כל העוגיות השמורות? זה עלול לנתק אותך מחלק מהמקורות.';

  @override
  String get version => 'גרסה';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'מקור, באגים וגרסאות';

  @override
  String get discordDesc => 'קהילה ותמיכה';

  @override
  String get supportDeveloper => 'תמכו במפתח';

  @override
  String get buyMeCoffee => 'תקנה לי קפה';

  @override
  String get upiId => 'מזהה UPI';

  @override
  String get upiCopied => 'מזהה UPI הועתק';

  @override
  String get donateDesc => 'תמוך בפיתוח';

  @override
  String get contributors => 'תורמים';

  @override
  String get contributorsDesc => 'האנשים שבנו את Dartotsu';

  @override
  String get contributorsLoadFailed => 'אי אפשר לטעון את התורמים';

  @override
  String get forks => 'מזלגות';

  @override
  String get forksDesc => 'פרויקטים שנבנו על בסיס Dartotsu';

  @override
  String get forksEmpty => 'לא נמצאו פורקים';

  @override
  String get sectionColors => 'צבעים';

  @override
  String get sectionDisplay => 'תצוגה';

  @override
  String get sectionStyle => 'סגנון';

  @override
  String get sectionCommunity => 'קהילה';

  @override
  String get sectionAppInfo => 'מידע על האפליקציה';

  @override
  String get sectionRequests => 'בקשות';

  @override
  String get sectionDnsProxy => 'DNS ופרוקסי';

  @override
  String get onboardingBack => 'חזרה';

  @override
  String get onboardingNext => 'הבא';

  @override
  String get onboardingSkip => 'דלג';

  @override
  String get onboardingLanguageBody =>
      'בחר את השפה שבה מוצג Dartotsu. תוכל לשנות אותה מאוחר יותר בהגדרות.';

  @override
  String get onboardingPaletteTitle => 'תתאים לעצמך';

  @override
  String get onboardingPaletteBody =>
      'בחר פלטה. כל הצבעים, מהכרטיסים ועד הנגן, יעקבו אחריה.';

  @override
  String get themeModeAuto => 'אוטומטי';

  @override
  String get themeModeLight => 'בהיר';

  @override
  String get themeModeDark => 'כהה';

  @override
  String get onboardingSyncTitle => 'סנכרן את הספרייה שלך';

  @override
  String get onboardingSyncBody =>
      'התחבר ל-AniList כדי להביא את הרשימות, ההתקדמות והציונים שלך. או דלג וגלוש כאורח.';

  @override
  String get onboardingOpenLinks => 'פתח קישורי AniList ומאגרים ב-Dartotsu';

  @override
  String get onboardingPermsTitle => 'הרשאות';

  @override
  String get onboardingPermsBody =>
      'אשר אותן עכשיו כדי שהורדות, עדכונים והתראות יעבדו בלי הפרעות. אפשר לשנות אותן אחר כך בהגדרות המערכת.';

  @override
  String get permNotifications => 'התראות';

  @override
  String get permNotificationsDesc => 'התקדמות הורדות, פרקים חדשים ותגובות';

  @override
  String get permStorage => 'גישה לכל הקבצים';

  @override
  String get permStorageDesc => 'שמור הורדות בתיקיית Dartotsu הציבורית';

  @override
  String get permInstall => 'התקנת עדכונים';

  @override
  String get permInstallDesc => 'תן ל-Dartotsu להתקין את העדכונים של עצמה';

  @override
  String get permBattery => 'סוללה ללא הגבלות';

  @override
  String get permBatteryDesc => 'השאר הורדות ארוכות רצות ברקע';

  @override
  String get permGrant => 'אפשר';

  @override
  String get linkOpenInApp => 'פתח קישורים ב-Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'תן לקישורי AniList ומאגרים לפתוח את האפליקציה';

  @override
  String get reviewsTitle => 'ביקורות';

  @override
  String get reviewsEmpty => 'עדיין אין ביקורות';

  @override
  String get reviewsFailed => 'אי אפשר לטעון ביקורות';

  @override
  String get reviewHelpfulQuestion => 'הביקורת הזו עזרה?';

  @override
  String get reviewVoteFailed => 'אי אפשר לשמור את ההצבעה שלך';

  @override
  String reviewHelpful(int n, int total) {
    return '$n מתוך $total מצאו את זה מועיל';
  }

  @override
  String get calendarTitle => 'לוח שידורים';

  @override
  String get calendarToday => 'היום';

  @override
  String get calendarEmpty => 'שום דבר לא משודר ביום הזה';

  @override
  String get calendarFailed => 'אי אפשר לטעון את לוח השידורים';

  @override
  String calendarChapter(int n) {
    return 'פרק $n';
  }

  @override
  String get calendarExpected => 'צפוי';

  @override
  String get castReceiverFailed => 'ה-Chromecast לא הפעיל את הנגן שלו';

  @override
  String get castPlaybackFailed => 'המכשיר לא הצליח להפעיל את הזרם הזה';

  @override
  String get shortcutNothingToContinue => 'אין מה להמשיך עדיין';

  @override
  String shortcutNoCalendar(String service) {
    return 'ל-$service אין לוח שנה';
  }

  @override
  String calendarEpisode(int n) {
    return 'פרק $n';
  }

  @override
  String get shareAnalytics => 'שתף נתוני שימוש אנונימיים';

  @override
  String get shareAnalyticsDesc =>
      'ספירת משתמשים ודוחות קריסה אנונימיים. בלי חשבון ובלי נתונים אישיים';

  @override
  String get linkOpenAnilist => 'פתח קישורי AniList ב-Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'הפעל טיפול בקישורים כדי שקישורי anilist.co יפתחו את האפליקציה';

  @override
  String get linkSettingsFailed => 'אי אפשר לפתוח את הגדרות המערכת';

  @override
  String get discordRichPresence => 'נוכחות עשירה';

  @override
  String get discordRichPresenceTokenDesc =>
      'הצג בפרופיל ה-Discord שלך מה אתה עושה. צריך את הטוקן של Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'הצג בפרופיל ה-Discord שלך מה אתה עושה. אפליקציית Discord לדסקטופ צריכה לרוץ.';

  @override
  String get discordBrowsing => 'הצג פעילות גלישה';

  @override
  String get discordBrowsingDesc =>
      'הצג גם את הלשונית, הדף או הפרופיל שאתה צופה בהם, לא רק מה שאתה רואה או קורא.';

  @override
  String get discordLookHeader => 'מראה הנוכחות';

  @override
  String get discordActivityType => 'סוג פעילות';

  @override
  String get discordActivityTypeDesc =>
      'איך Discord מנסח את זה: \"צופה ב…\" או \"משחק ב…\". אוטומטי משתמש ב\"צופה\" לאנימה וב\"משחק\" לכל השאר.';

  @override
  String get discordWatching => 'צופה';

  @override
  String get discordPlaying => 'משחק';

  @override
  String get discordCovers => 'הצג כריכות';

  @override
  String get discordCoversDesc => 'תמונת כריכה ואייקון Dartotsu על הכרטיס.';

  @override
  String get discordTimer => 'הצג טיימר';

  @override
  String get discordTimerDesc => 'זמן שעבר או שנותר מתחת לכותרת.';

  @override
  String get discordButtons => 'הצג כפתורים';

  @override
  String get discordButtonsDesc =>
      'כפתורי \"צפה באנימה / במנגה\" ו\"פתח את Dartotsu\".';

  @override
  String get discordHideTitles => 'הסתר כותרים';

  @override
  String get discordHideTitlesDesc =>
      'מחליף שמות של אנימה ומנגה (ואת הכריכה והקישור שלהן) ב\"משהו פרטי\".';

  @override
  String get discordConnectionHeader => 'חיבור';

  @override
  String get listSearchHint => 'חפש ברשימה הזו';

  @override
  String get listSort => 'מיון';

  @override
  String get listFilter => 'סינון';

  @override
  String get listRandom => 'כותר אקראי';

  @override
  String get listReverse => 'סדר הפוך';

  @override
  String get listSortDefault => 'סדר הרשימה';

  @override
  String get listSortScore => 'הציון שלך';

  @override
  String get listSortTitle => 'כותרת';

  @override
  String get listSortUpdated => 'עודכן לאחרונה';

  @override
  String get listSortProgress => 'התקדמות';

  @override
  String get listSortReleased => 'תאריך יציאה';

  @override
  String get listSortAverage => 'ציון ממוצע';

  @override
  String get listFilterFormat => 'פורמט';

  @override
  String get listFilterStatus => 'סטטוס';

  @override
  String get listFilterGenres => 'ז\'אנרים';

  @override
  String get listFilterClear => 'נקה מסננים';

  @override
  String get listNoMatches => 'שום דבר ברשימה הזו לא מתאים';

  @override
  String get discordLogin => 'התחברות ל-Discord';

  @override
  String get discordToken => 'טוקן Discord';

  @override
  String get discordTokenSaved => 'נשמר. הקש להחלפה, לחיצה ארוכה להסרה.';

  @override
  String get discordTokenNotSet => 'לא הוגדר. הקש להוספה.';

  @override
  String get discordTokenSavedSnack => 'טוקן Discord נשמר';

  @override
  String get discordTokenRemovedSnack => 'טוקן Discord הוסר';

  @override
  String get discordRichPresenceRow => 'נוכחות עשירה בדיסקורד';

  @override
  String get discordRichPresenceRowOn => 'פעיל · הקש כדי לשנות את המראה';

  @override
  String get discordRichPresenceRowOff =>
      'הצג בפרופיל ה-Discord שלך מה אתה עושה';

  @override
  String get loginCancelled => 'ההתחברות בוטלה';

  @override
  String get invalidToken => 'טוקן לא תקין';

  @override
  String loginFailed(String error) {
    return 'ההתחברות נכשלה: $error';
  }

  @override
  String get malLoginFailed => 'ההתחברות ל-MyAnimeList נכשלה';

  @override
  String get kitsuLoginFailed =>
      'ההתחברות ל-Kitsu נכשלה. בדוק את האימייל והסיסמה.';

  @override
  String get kitsuLoginTitle => 'התחברות ל-Kitsu';

  @override
  String get emailOrUsername => 'אימייל או שם משתמש';

  @override
  String get password => 'סיסמה';

  @override
  String get kitsuProfile => 'פרופיל Kitsu';

  @override
  String get mangaBakaLoginFailed => 'ההתחברות ל-MangaBaka נכשלה';

  @override
  String get comickLoginFailed => 'הכניסה לקומיקס נכשלה';

  @override
  String get tagline => 'קו תג';

  @override
  String get trending => 'מגמות';

  @override
  String get anticipated => 'צפוי';

  @override
  String get watchlist => 'רשימת מעקב';

  @override
  String get recommendedShows => 'מופעים מומלצים';

  @override
  String get recommendedMovies => 'סרטים מומלצים';

  @override
  String get boxOffice => 'קופות';

  @override
  String get popularMovies => 'סרטים פופולריים';

  @override
  String get popularShows => 'תוכניות פופולריות';

  @override
  String get anticipatedMovies => 'סרטים צפויים';

  @override
  String get anticipatedShows => 'הופעות צפויות';

  @override
  String get trendingShows => 'תוכניות טרנדיות';

  @override
  String get mostWatchedThisWeek => 'הכי נצפה השבוע';

  @override
  String get sortMostViewed => 'הנצפים ביותר';

  @override
  String get sortMostFollowed => 'רובם עקבו';

  @override
  String get sortLatestUpdates => 'עדכונים אחרונים';

  @override
  String get translationStatusLabel => 'תרגום';

  @override
  String get weeklySchedule => 'לוח זמנים שבועי';

  @override
  String get mostFollowed => 'הכי עוקבים';

  @override
  String get latestUpdates => 'עדכונים אחרונים';

  @override
  String get trendingAnime => 'אנימה פופולרית';

  @override
  String get topRatedAnime => 'אנימה בדירוג הגבוה ביותר';

  @override
  String get mostFollowedAnime => 'האנימה הפופולרית ביותר';

  @override
  String get comickProfile => 'פרופיל קומיק';

  @override
  String get refreshFromComick => 'רענן מקומיק';

  @override
  String get mangaBakaProfile => 'פרופיל MangaBaka';

  @override
  String get refreshFromMangaBaka => 'רענן מ-MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'היכנס ל-MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'פרופיל MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'עיבוד אנימה מתחיל';

  @override
  String get mangaUpdatesAnimeEnd => 'עיבוד אנימה מסתיים';

  @override
  String get refreshFromMangaUpdates => 'רענן מ-MangaUpdates';

  @override
  String get usernameOnly => 'שם משתמש';

  @override
  String get releases => 'משחרר';

  @override
  String get artistsLabel => 'אמנים';

  @override
  String get authorsLabel => 'יוצרים';

  @override
  String get publishersLabel => 'מו\"לים';

  @override
  String get licensedLabel => 'ברישיון';

  @override
  String get contentRatingLabel => 'סיווג תוכן';

  @override
  String get yesLabel => 'כן';

  @override
  String get noLabel => 'לא';

  @override
  String get ratingSteps => 'שלבי דירוג';

  @override
  String get hideNsfw => 'הסתר NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'הסתר מקורות המסומנים 18+ מהעדכונים ומבוחר המקורות. הם נשארים מותקנים.';

  @override
  String get hideNsfwDesc =>
      'הרחק כותרים למבוגרים מהפידים והחיפוש, והצג את הערכים למבוגרים שלך תחת מדיה מוסתרת.';

  @override
  String get kitsuAccountOptions => 'הגדרות חשבון Kitsu';

  @override
  String get mangaBakaAccountOptions => 'אפשרויות חשבון MangaBaka';

  @override
  String get comickAccountOptions => 'אפשרויות חשבון קומיק';

  @override
  String get comickClientId => 'זיהוי לקוח של קומיק';

  @override
  String get comickClientIdDesc => 'מזהה לקוח מותאם אישית רשום ב-comick.dev';

  @override
  String get couldNotUpdateKitsuSettings => 'אי אפשר לעדכן את הגדרות Kitsu שלך';

  @override
  String get titleCanonical => 'קנוני';

  @override
  String get titleRomanized => 'בתעתיק לטיני';

  @override
  String get titleLocalized => 'מקומי';

  @override
  String get ratingSystem => 'מערכת דירוג';

  @override
  String get ratingSimple => 'פשוטה (3 פרצופים)';

  @override
  String get ratingRegular => 'רגילה (5 כוכבים)';

  @override
  String get ratingAdvanced => 'מתקדמת (10 נקודות)';

  @override
  String get contentFilter => 'מסנן תוכן';

  @override
  String get contentSfw => 'בטוח לעבודה בלבד';

  @override
  String get contentSometimes => 'תוכן למבוגרים בחיפושים';

  @override
  String get contentEverywhere => 'תוכן למבוגרים בכל מקום';

  @override
  String get shareToGlobal => 'שתף בפיד הגלובלי';

  @override
  String get shareToGlobalDesc =>
      'תן לפעילות שלך להופיע בפיד הגלובלי של Kitsu.';

  @override
  String get memberSince => 'חבר מאז';

  @override
  String get location => 'מיקום';

  @override
  String get accountType => 'סוג חשבון';

  @override
  String get accountSupporter => 'תומך';

  @override
  String get accountFree => 'חינמי';

  @override
  String get accountDetails => 'פרטי חשבון';

  @override
  String get refreshFromKitsu => 'רענן מ-Kitsu';

  @override
  String get simklReadOnly => 'ל-Simkl ניתנה גישת קריאה בלבד';

  @override
  String get traktReadOnly => 'Trakt העניקה גישת קריאה בלבד';

  @override
  String get incognitoEditsBlocked => 'גלישה בסתר: עריכות רשימה חסומות';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'גלישה בסתר: ההתקדמות לא נשמרה';

  @override
  String progressSet(int progress) {
    return 'ההתקדמות עודכנה ל-$progress';
  }

  @override
  String removedFromList(String title) {
    return '$title הוסר מהרשימה שלך';
  }

  @override
  String get following => 'עוקב';

  @override
  String get followsMutual => 'הדדי';

  @override
  String get followsNotMutual => 'לא הדדי';

  @override
  String get homeSections => 'מדורי דף הבית';

  @override
  String get homeSectionsHint =>
      'גרור כדי לסדר מחדש. מדורים מוסתרים לא נטענים בכלל.';

  @override
  String get customListDeleteFailed => 'מחיקת הרשימה המותאמת נכשלה';

  @override
  String get customListsSaveFailed => 'שמירת הרשימות המותאמות נכשלה';

  @override
  String get customListsSaved => 'הרשימות המותאמות נשמרו';

  @override
  String get listName => 'שם הרשימה';

  @override
  String get addList => 'הוסף רשימה';

  @override
  String get voiceActors => 'שחקני קול';

  @override
  String voiceActorsIn(String name) {
    return 'שחקני קול · $name';
  }

  @override
  String get animeAppearances => 'הופעות באנימה';

  @override
  String get mangaAppearances => 'הופעות במנגה';

  @override
  String get voicedCharacters => 'דמויות שדובבו';

  @override
  String get animeCredits => 'קרדיטים באנימה';

  @override
  String get mangaCredits => 'קרדיטים במנגה';

  @override
  String get mainProductions => 'הפקות עיקריות';

  @override
  String get otherWorks => 'עבודות אחרות';

  @override
  String get prequelSequel => 'פריקוול וסיקוול';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'המשך';

  @override
  String get previousSeason => 'עונה קודמת';

  @override
  String get thisSeason => 'העונה הזו';

  @override
  String get nextSeason => 'העונה הבאה';

  @override
  String get voiceRoles => 'תפקידי דיבוב';

  @override
  String get staffPositions => 'תפקידים בצוות';

  @override
  String get mangaWorks => 'עבודות מנגה';

  @override
  String get malProfile => 'פרופיל MyAnimeList';

  @override
  String get refreshFromMal => 'רענן מ-MyAnimeList';

  @override
  String get repullProfileCounts => 'טען מחדש את הפרופיל והספירות שלך';

  @override
  String get refreshed => 'רוענן';

  @override
  String get simklProfile => 'פרופיל Simkl';

  @override
  String get traktProfile => 'פרופיל Trakt';

  @override
  String get refreshFromSimkl => 'רענן מ-Simkl';

  @override
  String get refreshFromTrakt => 'רענן מ-Trakt';

  @override
  String get repullProfileLibrary => 'טען מחדש את הפרופיל והספרייה שלך';

  @override
  String get simklSignInToSearch => 'התחבר ל-Simkl כדי לחפש';

  @override
  String get dropRate => 'שיעור נטישה';

  @override
  String get simklAttribution =>
      'נתונים ואיורים מסופקים על ידי Simkl. צפה ב-Simkl';

  @override
  String get traktAttribution =>
      'נתונים ויצירות אמנות מסופקים על ידי Trakt. צפה ב-Trakt';

  @override
  String get listsLiked => 'אהב';

  @override
  String get listsYours => 'שלך';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'חבר טראקט VIP';

  @override
  String get onHold => 'בהמתנה';

  @override
  String get scoredBy => 'דורג על ידי';

  @override
  String get planToWatch => 'מתוכנן לצפייה';

  @override
  String get planToRead => 'מתוכנן לקריאה';

  @override
  String get timesRewatched => 'פעמים שנצפה מחדש';

  @override
  String get timesReread => 'פעמים שנקרא מחדש';

  @override
  String get comments => 'תגובות';

  @override
  String get moviesAndSeries => 'סרטים וסדרות';

  @override
  String get simklMoviesOnly => 'סרטים וסדרות בלבד';

  @override
  String get simklMoviesOnlyDesc =>
      'מחליף את כרטיסיית האנימה: סרטים תחילה, ולאחר מכן מופעים בכמה שורות אנימה';

  @override
  String get trackingOnly => 'מעקב בלבד';

  @override
  String get signedIn => 'מחובר';

  @override
  String get searchLanguage => 'שפת חיפוש';

  @override
  String get savedToList => 'נשמר ברשימה שלך';

  @override
  String get removedFromYourList => 'הוסר מהרשימה שלך';

  @override
  String get retry => 'נסה שוב';

  @override
  String get synopsis => 'תקציר';

  @override
  String get details => 'פרטים';

  @override
  String get addToList => 'הוסף לרשימה';

  @override
  String get trailer => 'טריילר';

  @override
  String get trailerQuality => 'איכות טריילר';

  @override
  String get titleCopied => 'הכותרת הועתקה';

  @override
  String get linkCopied => 'הקישור הועתק';

  @override
  String get watchTrailer => 'צפה בטריילר';

  @override
  String get copyTitle => 'העתק כותרת';

  @override
  String get detailStale =>
      'לא ניתן היה להשיג את AniList. זהו מידע שמור ויכול להיות מיושן.';

  @override
  String get copyLink => 'העתק קישור';

  @override
  String get openInBrowser => 'פתח בדפדפן';

  @override
  String viewOnSource(String source) {
    return 'צפה ב-$source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'פרק $ep משודר בעוד $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'הפרק הבא בעוד $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'פרק $chapter צפוי בעוד בערך $time';
  }

  @override
  String get logPathCopied => 'נתיב קובץ הלוג הועתק ללוח';

  @override
  String get animeSource => 'מקור אנימה';

  @override
  String get mangaSource => 'מקור מנגה';

  @override
  String get popular => 'פופולרי';

  @override
  String get allCustomLists => 'כל הרשימות המותאמות אישית';

  @override
  String get simklTitleLanguage => 'שפת כותרת אנימה';

  @override
  String get titleLanguageEnglish => 'אנגלית';

  @override
  String get titleLanguageRomaji => 'רומאג\'י';

  @override
  String get simklListsTrending => 'מגמות';

  @override
  String get simklListsMostLiked => 'הכי אהבו';

  @override
  String get simklListsMostFollowed => 'רובם עקבו';

  @override
  String get simklListsOfficial => 'רשמי';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count כותרות',
      one: 'כותרת 1',
    );
    return '$_temp0';
  }

  @override
  String get people => 'אנשים';

  @override
  String get mostComments => 'רוב התגובות';

  @override
  String get alphabetical => 'אלפביתי';

  @override
  String get latest => 'אחרונים';

  @override
  String get saved => 'שמור';

  @override
  String get nothingMatched => 'לא נמצא כלום';

  @override
  String get nothingSavedFromSource => 'עדיין לא נשמר כלום מהמקור הזה';

  @override
  String get sourceReturnedNothing => 'המקור הזה לא החזיר כלום';

  @override
  String get checkConnectionOrSource => 'בדוק את החיבור או נסה מקור אחר.';

  @override
  String get tryDifferentSearch => 'נסה מונח חיפוש אחר.';

  @override
  String get savedTitlesAppearHere => 'כותרים שתוסיף לרשימה יופיעו כאן.';

  @override
  String get tryOtherFeed => 'נסה את הפיד השני או חפש במקום.';

  @override
  String searchSource(String source) {
    return 'חפש ב-$source';
  }

  @override
  String get animeExtensions => 'תוספי אנימה';

  @override
  String get mangaExtensions => 'תוספי מנגה';

  @override
  String get nothingHereYet => 'עדיין אין כלום';

  @override
  String get savedOnDeviceUntilLogin =>
      'הכול למטה נשמר במכשיר הזה עד שתעשה את זה.';

  @override
  String get yourProfile => 'הפרופיל שלך';

  @override
  String get activity => 'פעילות';

  @override
  String get extensions => 'תוספים';

  @override
  String get logOut => 'התנתקות';

  @override
  String get logIn => 'התחברות';

  @override
  String get logOutConfirm => 'בטוח שאתה רוצה להתנתק?';

  @override
  String get incognitoMode => 'מצב גלישה בסתר';

  @override
  String get alsoBlockListEdits => 'חסום גם עריכות רשימה';

  @override
  String get offlineMode => 'מצב אופליין';

  @override
  String get switchService => 'החלף שירות';

  @override
  String logOutOf(String name) {
    return 'התנתק מ-$name';
  }

  @override
  String get loggedIn => 'מחובר';

  @override
  String get notifications => 'התראות';

  @override
  String get nothingNew => 'אין חדש';

  @override
  String get thisWeek => 'השבוע';

  @override
  String get listOnly => 'רק מהרשימה';

  @override
  String get notInList => 'לא ברשימה';

  @override
  String get filter => 'סינון';

  @override
  String get searchResults => 'תוצאות חיפוש';

  @override
  String get recentSearches => 'חיפושים אחרונים';

  @override
  String get searchOrSetFilter => 'חפש או הגדר מסנן';

  @override
  String get filters => 'מסננים';

  @override
  String get showLess => 'הצג פחות';

  @override
  String get showAll => 'הצג הכול';

  @override
  String get apply => 'החל';

  @override
  String get preview => 'תצוגה מקדימה';

  @override
  String get preset => 'הגדרה מוכנה';

  @override
  String get cardNormal => 'רגיל';

  @override
  String get cardOnCard => 'על הכרטיס';

  @override
  String get cardInCard => 'בתוך הכרטיס';

  @override
  String get size => 'גודל';

  @override
  String get cardWidth => 'רוחב כרטיס';

  @override
  String get compact => 'קומפקטי';

  @override
  String get coverAndTitleOnly => 'כריכה וכותרת בלבד';

  @override
  String get titleLines => 'שורות כותרת';

  @override
  String get shape => 'צורה';

  @override
  String get posterShape => 'צורת הפוסטר';

  @override
  String get cornerRadius => 'עיגול פינות';

  @override
  String get off => 'כבוי';

  @override
  String get topLeft => 'שמאל למעלה';

  @override
  String get topRight => 'ימין למעלה';

  @override
  String get bottomLeft => 'שמאל למטה';

  @override
  String get bottomRight => 'ימין למטה';

  @override
  String get overlays => 'שכבות';

  @override
  String get progressCount => 'התקדמות / ספירה';

  @override
  String get pill => 'כדור';

  @override
  String get bar => 'פס';

  @override
  String get outside => 'בחוץ';

  @override
  String get scoreBadge => 'תג ציון';

  @override
  String get airingDot => 'נקודת שידור';

  @override
  String get updateAvailable => 'יש עדכון';

  @override
  String get notInstalled => 'לא מותקן';

  @override
  String get done => 'סיום';

  @override
  String get searchOrEnterUrl => 'חפש או הכנס כתובת';

  @override
  String get refresh => 'רענן';

  @override
  String get animePlanetRank => 'דרגה';

  @override
  String get animePlanetMagazine => 'מגזין';

  @override
  String get animePlanetRefreshLists => 'רענן את הרשימות שלך';

  @override
  String get animePlanetRefreshListsDesc =>
      'קרא שוב את רשימות ה-Anime-Planet שלך';

  @override
  String get animePlanetLocalNote =>
      'היכנס כדי לשמור שינויים בחשבון ה-Anime-Planet שלך. עד אז הם נשארים במכשיר הזה';

  @override
  String get share => 'שתף';

  @override
  String get characters => 'דמויות';

  @override
  String get staff => 'צוות';

  @override
  String get readMore => 'קרא עוד';

  @override
  String get couldNotLoadList => 'אי אפשר לטעון את הרשימה';

  @override
  String get logInToFavourite => 'התחבר כדי להוסיף למועדפים';

  @override
  String get alsoKnownAs => 'ידוע גם בשם';

  @override
  String get hideSpoilerNames => 'הסתר שמות עם ספוילרים';

  @override
  String get showSpoilerNames => 'הצג שמות עם ספוילרים';

  @override
  String get favourited => 'במועדפים';

  @override
  String get favourite => 'מועדף';

  @override
  String get couldNotOpenTitle => 'אי אפשר לפתוח את הכותר הזה';

  @override
  String get nobodyHereYet => 'עדיין אף אחד לא כאן';

  @override
  String get noMatches => 'אין התאמות';

  @override
  String get gridView => 'תצוגת רשת';

  @override
  String get fullWidth => 'רוחב מלא';

  @override
  String get userNotFound => 'המשתמש לא נמצא';

  @override
  String get couldNotUpdateFollow => 'אי אפשר לעדכן עקיבה';

  @override
  String followedUser(String name) {
    return 'עוקב אחרי $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'הפסקת לעקוב אחרי $name';
  }

  @override
  String get messages => 'הודעות';

  @override
  String get logInToSeeMessages => 'התחבר כדי לראות את ההודעות שלך';

  @override
  String get editActivity => 'ערוך פעילות';

  @override
  String get newActivity => 'פעילות חדשה';

  @override
  String get editMessage => 'ערוך הודעה';

  @override
  String get writeMessage => 'כתוב הודעה';

  @override
  String get editReply => 'ערוך תגובה';

  @override
  String get posted => 'פורסם';

  @override
  String get couldNotPost => 'אי אפשר לפרסם';

  @override
  String get nothingToPreview => 'אין מה להציג בתצוגה מקדימה';

  @override
  String get writeSomethingHint =>
      'כתוב משהו… אפשר להשתמש ב-markdown של AniList';

  @override
  String get privateMessage => 'הודעה פרטית';

  @override
  String get post => 'פרסם';

  @override
  String get nothingHere => 'אין כלום כאן';

  @override
  String get noAnimeProgress => 'אין התקדמות באנימה';

  @override
  String get noMangaProgress => 'אין התקדמות במנגה';

  @override
  String get noMessages => 'אין הודעות';

  @override
  String get writeMessageHint => 'כתוב הודעה…';

  @override
  String get shareSomethingHint => 'שתף משהו…';

  @override
  String get all => 'הכול';

  @override
  String get anime => 'אנימה';

  @override
  String get manga => 'מנגה';

  @override
  String get count => 'כמות';

  @override
  String get hoursWatched => 'שעות צפייה';

  @override
  String get chaptersRead => 'פרקים שנקראו';

  @override
  String get meanScore => 'ציון ממוצע';

  @override
  String get noStatsYet => 'עדיין אין סטטיסטיקות';

  @override
  String get totalEntries => 'סה\"כ ערכים';

  @override
  String get episodesWatched => 'פרקים שנצפו';

  @override
  String get daysWatched => 'ימי צפייה';

  @override
  String get volumesRead => 'כרכים שנקראו';

  @override
  String get standardDeviation => 'סטיית תקן';

  @override
  String get showMore => 'הצג עוד';

  @override
  String get followsYou => 'עוקב אחריך';

  @override
  String get nobodyYet => 'עדיין אף אחד';

  @override
  String get logInToLike => 'התחבר כדי לעשות לייק';

  @override
  String get failedToLikeActivity => 'הלייק לפעילות נכשל';

  @override
  String get deleteActivityConfirm => 'למחוק את הפעילות?';

  @override
  String get deletedActivity => 'הפעילות נמחקה';

  @override
  String get failedToDeleteActivity => 'מחיקת הפעילות נכשלה';

  @override
  String get subscribed => 'נרשמת';

  @override
  String get unsubscribed => 'הרישום בוטל';

  @override
  String get failedToUpdateSubscription => 'עדכון המנוי נכשל';

  @override
  String get edit => 'עריכה';

  @override
  String get delete => 'מחיקה';

  @override
  String get likedBy => 'אהבו';

  @override
  String get follow => 'עקוב';

  @override
  String get nameCopied => 'השם הועתק';

  @override
  String get followsEachOther => 'עוקבים זה אחרי זה';

  @override
  String get unfollow => 'הפסק לעקוב';

  @override
  String get userIdCopied => 'מזהה המשתמש הועתק';

  @override
  String get shareProfile => 'שתף פרופיל';

  @override
  String get copyUserId => 'העתק מזהה משתמש';

  @override
  String get failedToDelete => 'המחיקה נכשלה';

  @override
  String get failedToLike => 'הלייק נכשל';

  @override
  String get replies => 'תגובות';

  @override
  String get reply => 'השב';

  @override
  String get noRepliesYet => 'עדיין אין תגובות';

  @override
  String get favouriteAnime => 'אנימות מועדפות';

  @override
  String get favouriteManga => 'מנגות מועדפות';

  @override
  String get favouriteCharacters => 'דמויות מועדפות';

  @override
  String get favouriteStaff => 'צוות מועדף';

  @override
  String get favouriteStudios => 'אולפנים מועדפים';

  @override
  String get noFavouritesYet => 'עדיין אין מועדפים';

  @override
  String get yourStory => 'הסטורי שלך';

  @override
  String get copiedToClipboard => 'הועתק ללוח';

  @override
  String get justNow => 'ממש עכשיו';

  @override
  String get openImage => 'פתח תמונה';

  @override
  String get hideSpoiler => 'הסתר ספוילר';

  @override
  String get showSpoiler => 'הצג ספוילר';

  @override
  String get status => 'סטטוס';

  @override
  String get score => 'ציון';

  @override
  String get started => 'התחלה';

  @override
  String get completed => 'סיום';

  @override
  String get private => 'פרטי';

  @override
  String get hideFromStatusLists => 'הסתר מרשימות הסטטוס';

  @override
  String get totalRepeats => 'סה\"כ חזרות';

  @override
  String get other => 'אחר';

  @override
  String get customLists => 'רשימות מותאמות';

  @override
  String get activeDays => 'ימים פעילים';

  @override
  String get longestStreak => 'הרצף הארוך ביותר';

  @override
  String get currentStreak => 'הרצף הנוכחי';

  @override
  String get tapOrHoverDay => 'הקש או רחף על יום';

  @override
  String get less => 'פחות';

  @override
  String get more => 'יותר';

  @override
  String epIn(int ep, String time) {
    return 'פרק $ep בעוד $time';
  }

  @override
  String get sectionLoading => 'טוען';

  @override
  String get querySize => 'גודל שאילתה';

  @override
  String get querySizeDesc =>
      'שאילתה אחת גדולה טוענת את כל השורות (ופרופיל שלם) בבקשה אחת. שאילתות מפוצלות שולחות בקשה קטנה לכל שורה או חלק בפרופיל: כל אחת מהירה והחלקים מופיעים ככל שהם מגיעים.';

  @override
  String get oneBig => 'אחת גדולה';

  @override
  String get split => 'מפוצלת';

  @override
  String get sectionSocial => 'חברתי';

  @override
  String get systemNotifications => 'התראות מערכת';

  @override
  String get feedLayout => 'פריסת פיד';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown מתוך $total מוצגים — הקש כדי לבחור ולסדר';
  }

  @override
  String labelSections(String label) {
    return 'מדורי $label';
  }

  @override
  String get accountOptions => 'הגדרות חשבון';

  @override
  String get anilistAccountOptions => 'הגדרות חשבון AniList';

  @override
  String get sectionPrivacy => 'פרטיות';

  @override
  String get hidePrivateEntries => 'הסתר ערכים פרטיים';

  @override
  String get hidePrivateEntriesDesc =>
      'הרחק מהפיד ערכים שסומנו כפרטיים ב-AniList';

  @override
  String get anilistExcludeList => 'להחריג את הרשימה שלך';

  @override
  String get anilistExcludeListDesc =>
      'להסתיר מדפי האנימה והמנגה כותרים שכבר ברשימה שלך ב-AniList';

  @override
  String get anilistProfile => 'פרופיל AniList';

  @override
  String get refreshFromAnilist => 'רענן מ-AniList';

  @override
  String get couldNotUpdateAnilistSettings => 'אי אפשר לעדכן את הגדרות AniList';

  @override
  String get sectionNames => 'שמות';

  @override
  String get titleLanguage => 'שפת כותרים';

  @override
  String get titleLanguageDesc =>
      'איך כותרים נכתבים בכל מקום, למשל Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'שמות צוות ודמויות';

  @override
  String get sectionLists => 'רשימות';

  @override
  String get scoreFormat => 'פורמט ציון';

  @override
  String get sortListsBy => 'מיין רשימות לפי';

  @override
  String labelCustomLists(String label) {
    return 'רשימות מותאמות של $label';
  }

  @override
  String customListsCount(int count) {
    return '$count רשימות — הקש כדי להוסיף או להסיר';
  }

  @override
  String get mergeActivities => 'מזג פעילויות';

  @override
  String minutesCount(int count) {
    return '$count דק\'';
  }

  @override
  String get timezone => 'אזור זמן';

  @override
  String get notSet => 'לא הוגדר';

  @override
  String get airingNotifications => 'התראות שידור';

  @override
  String get airingNotificationsDesc =>
      'קבל התראה כשפרק של סדרה שאתה עוקב אחריה משודר';

  @override
  String get displayAdultContent => 'הצג תוכן למבוגרים';

  @override
  String get displayAdultContentDesc => 'כלול כותרי 18+ בדפדוף, בחיפוש ובפידים';

  @override
  String get restrictMessages => 'הגבל הודעות לעוקבים בלבד';

  @override
  String get restrictMessagesDesc =>
      'רק אנשים שאתה עוקב אחריהם יכולים לשלוח לך הודעה';

  @override
  String get sectionServices => 'שירותים';

  @override
  String get novel => 'נובל';

  @override
  String labelService(String label) {
    return 'שירות $label';
  }

  @override
  String nameSettings(String name) {
    return 'הגדרות $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'אפשרויות מגשר התוספים של $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name לא הצליח לעלות: $error';
  }

  @override
  String get importLists => 'ייבוא רשימות';

  @override
  String get importListsDesc =>
      'מגיבויים של Aniyomi, Mihon / Tachiyomi או Kotatsu';

  @override
  String get exportLists => 'ייצוא רשימות';

  @override
  String get exportListsDesc => 'לגיבוי של Aniyomi, Mihon או Kotatsu';

  @override
  String get sectionBrowse => 'דפדוף';

  @override
  String get readingTab => 'לשונית קריאה';

  @override
  String get readingTabDesc => 'אילו תוספים תציג הלשונית השלישית';

  @override
  String get firstTab => 'כרטיסייה ראשונה';

  @override
  String get firstTabDesc =>
      'אילו הרחבות מציגה הכרטיסייה הראשונה. בחר מנגה כאן ורומן בכרטיסיית הקריאה כדי להוריד אנימה מהבר';

  @override
  String get novelExtensions => 'הרחבות רומניות';

  @override
  String get defaultFeed => 'פיד ברירת מחדל';

  @override
  String get defaultFeedDesc => 'באיזו רשימה מקור נפתח';

  @override
  String noServiceSupports(String type) {
    return 'אף שירות לא תומך ב$type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded מתוך $installed מקורות נטענים';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'אף שירות תוספים לא תומך כאן ב$type.';
  }

  @override
  String get loadDataFrom => 'טען נתונים מ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'עדיין אין מקורות $type מותקנים.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'התוסף של $name לא מותקן';
  }

  @override
  String get thisSource => 'המקור הזה';

  @override
  String failedToAddRepository(String error) {
    return 'הוספת המאגר נכשלה: $error';
  }

  @override
  String installedType(String type) {
    return '$type מותקנים';
  }

  @override
  String availableType(String type) {
    return '$type זמינים';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'אין תוספי $type מותקנים';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'אין תוספי $type זמינים';
  }

  @override
  String get nothingToShowYet => 'עדיין אין מה להציג';

  @override
  String get addTitlesHint => 'הוסף כותרים לרשימה שלך והם יופיעו כאן.';

  @override
  String get couldntLoad => 'אי אפשר לטעון';

  @override
  String get progressStyleHint =>
      'כדור ופס מוצגים מעל הפוסטר; \"בחוץ\" מציג את אותה ספירה כטקסט רגיל במקום — בחר אחד.';

  @override
  String get nixManagedUpdate =>
      'הגרסה הזו מנוהלת על ידי Nix — הרץ \"nix flake update\" ב-flake שלך ובנה מחדש במקום לעדכן מכאן';

  @override
  String autoUpdateFailed(String error) {
    return 'העדכון האוטומטי נכשל ($error) — פותח את דף ההורדה במקום';
  }

  @override
  String get unknownPreference => 'העדפה לא מוכרת';

  @override
  String unsupportedPreferenceType(String type) {
    return 'סוג העדפה לא נתמך $type';
  }

  @override
  String get notYetReleased => 'עוד לא יצא';

  @override
  String get notStarted => 'עוד לא התחיל';

  @override
  String get country => 'מדינה';

  @override
  String get sort => 'מיון';

  @override
  String get chooseBackupDialog => 'בחר גיבוי של Aniyomi, Mihon או Kotatsu';

  @override
  String get importListsHint =>
      'הבא ספרייה מ-Aniyomi, Mihon / Tachiyomi או Kotatsu. כותרים, כריכות, התקדמות וקטגוריות נשמרים.';

  @override
  String get chooseBackupFile => 'בחר קובץ גיבוי';

  @override
  String importAnimeCount(int count) {
    return 'ייבא $count אנימות';
  }

  @override
  String importMangaCount(int count) {
    return 'ייבא $count מנגות';
  }

  @override
  String get mergeWithExisting => 'מזג עם הרשימות הקיימות';

  @override
  String get mergeWithExistingDesc =>
      'שומר על מה שיש לך; כבוי מחליף כותרים תואמים';

  @override
  String get chooseAnother => 'בחר אחר';

  @override
  String get import => 'ייבוא';

  @override
  String animeCount(int count) {
    return '$count אנימות';
  }

  @override
  String mangaCount(int count) {
    return '$count מנגות';
  }

  @override
  String get chooseSaveLocation => 'בחר איפה לשמור את הגיבוי';

  @override
  String savedPath(String path) {
    return 'נשמר $path';
  }

  @override
  String exportFailed(String error) {
    return 'הייצוא נכשל: $error';
  }

  @override
  String get nothingInLocalLists => 'עדיין אין כלום ברשימות המקומיות שלך.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'מייצא $anime אנימות ו-$manga מנגות מהרשימות המקומיות שלך. Kotatsu תומך רק במנגה.';
  }

  @override
  String get saveToFolder => 'שמור לתיקייה';

  @override
  String get formatAnimeManga => 'אנימה ומנגה · .tachibk';

  @override
  String get formatMangaTachibk => 'מנגה בלבד · .tachibk';

  @override
  String get formatMangaZip => 'מנגה בלבד · .zip';

  @override
  String get genres => 'ז\'אנרים';

  @override
  String get relations => 'קשרים';

  @override
  String get recommendations => 'המלצות';

  @override
  String get openings => 'פתיחים';

  @override
  String get endings => 'סיומים';

  @override
  String get background => 'רקע';

  @override
  String get links => 'קישורים';

  @override
  String get rank => 'דירוג';

  @override
  String get members => 'חברים';

  @override
  String get favorites => 'מועדפים';

  @override
  String get episodes => 'פרקים';

  @override
  String get chapters => 'צ\'פטרים';

  @override
  String get volumes => 'כרכים';

  @override
  String get format => 'פורמט';

  @override
  String get source => 'מקור';

  @override
  String get duration => 'משך';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes דק\' לפרק';
  }

  @override
  String get rating => 'סיווג';

  @override
  String get studio => 'אולפן';

  @override
  String get serialization => 'פרסום בהמשכים';

  @override
  String get season => 'עונה';

  @override
  String get year => 'שנה';

  @override
  String get filterAny => 'כל';

  @override
  String get broadcast => 'שידור';

  @override
  String get aired => 'שודר';

  @override
  String get published => 'פורסם';

  @override
  String get popularity => 'פופולריות';

  @override
  String get community => 'קהילה';

  @override
  String get watching => 'צופה';

  @override
  String get reading => 'קורא';

  @override
  String get dropped => 'נזנח';

  @override
  String get unfinished => 'לא גמור';

  @override
  String get planned => 'מתוכנן';

  @override
  String get trailers => 'טריילרים';

  @override
  String get ratings => 'דירוגים';

  @override
  String get originalTitle => 'מקורי';

  @override
  String get titleLabel => 'כותרת';

  @override
  String get votes => 'הצבעות';

  @override
  String get watchedStat => 'נצפה';

  @override
  String get runtime => 'אורך';

  @override
  String get director => 'במאי';

  @override
  String get network => 'רשת';

  @override
  String get certification => 'סיווג גיל';

  @override
  String get airs => 'משודר';

  @override
  String get budget => 'תקציב';

  @override
  String get revenue => 'הכנסות';

  @override
  String get released => 'יצא';

  @override
  String get tags => 'תגיות';

  @override
  String get author => 'יוצר';

  @override
  String get born => 'נולד';

  @override
  String get died => 'מת';

  @override
  String get birthplace => 'מקום לידה';

  @override
  String get department => 'מחלקה';

  @override
  String get website => 'אתר';

  @override
  String get established => 'נוסד';

  @override
  String get manhwa => 'מנהוואה';

  @override
  String get manhua => 'מנהואה';

  @override
  String get novels => 'נובלות';

  @override
  String get thisMonth => 'החודש';

  @override
  String get movies => 'סרטים';

  @override
  String get shows => 'סדרות';

  @override
  String get moviesWatched => 'צפו בסרטים';

  @override
  String get showsWatched => 'תוכניות נצפו';

  @override
  String get moviesCollected => 'סרטים שנאספו';

  @override
  String get showsCollected => 'מופעים שנאספו';

  @override
  String get rewatching => 'צופה מחדש';

  @override
  String get rereading => 'קורא מחדש';

  @override
  String get watchedStatus => 'נצפה';

  @override
  String get planning => 'מתוכנן';

  @override
  String get paused => 'בהשהיה';

  @override
  String get watch => 'צפה';

  @override
  String get read => 'קרא';

  @override
  String get finished => 'הסתיים';

  @override
  String get releasing => 'משודר כעת';

  @override
  String get cancelled => 'בוטל';

  @override
  String get hiatus => 'בהפסקה';

  @override
  String get remove => 'הסר';

  @override
  String syncToService(String service) {
    return 'סנכרן ל-$service';
  }

  @override
  String syncedToService(String service) {
    return 'סונכרן ל-$service';
  }

  @override
  String get latestReleases => 'יציאות אחרונות';

  @override
  String get topRated => 'הכי מדורגים';

  @override
  String localSection(String title) {
    return '$title · מקומי';
  }

  @override
  String get localEntryNote =>
      'הכותר הזה נמצא רק ברשימה המקומית במכשיר הזה. העריכה כבויה כאן כי היא עלולה להתנגש ברשימת החשבון שלך; אפשר עדיין להסיר אותו.';

  @override
  String get cardPresetPoster => 'פוסטר';

  @override
  String get cardPresetCard => 'כרטיס';

  @override
  String get cardPresetCozy => 'נעים';

  @override
  String get sortTopRated => 'הכי מדורגים';

  @override
  String get sortMostPopular => 'הכי פופולריים';

  @override
  String get sortTrending => 'פופולרי עכשיו';

  @override
  String get sortNewest => 'החדשים ביותר';

  @override
  String get sortAz => 'א–ז';

  @override
  String get sortMostFavourited => 'הכי אהובים';

  @override
  String get anyCountry => 'כל מדינה';

  @override
  String get orderScore => 'ציון';

  @override
  String get orderTitle => 'כותרת';

  @override
  String get orderLastUpdated => 'עודכן לאחרונה';

  @override
  String get orderLastAdded => 'נוסף לאחרונה';

  @override
  String get never => 'אף פעם';

  @override
  String get always => 'תמיד';

  @override
  String get scorePoint100 => '100 נקודות';

  @override
  String get scorePoint10Decimal => '10 נקודות עשרוני';

  @override
  String get scorePoint10 => '10 נקודות';

  @override
  String get scorePoint5 => '5 כוכבים';

  @override
  String get scorePoint3 => '3 נקודות סמיילי';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שעות',
      one: '1 שעה',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ימים',
      one: '1 יום',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שבועות',
      one: '1 שבוע',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'המשך';

  @override
  String get resumeSourceMissing => 'התקן את המקור של הכותר הזה כדי להמשיך';

  @override
  String get resumeRemove => 'הסר מהמשך צפייה';

  @override
  String resumeAt(String time) {
    return 'נשארו $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'עמוד $page מתוך $total';
  }

  @override
  String get continueWatching => 'המשך לצפות';

  @override
  String get continueReading => 'המשך לקרוא';

  @override
  String get favouriteAnimeSection => 'אנימות מועדפות';

  @override
  String get favouriteMangaSection => 'מנגות מועדפות';

  @override
  String get plannedAnime => 'אנימות מתוכננות';

  @override
  String get plannedManga => 'מנגות מתוכננות';

  @override
  String get completedAnime => 'אנימות שהושלמו';

  @override
  String get completedManga => 'מנגות שהושלמו';

  @override
  String get hiddenMedia => 'מדיה מוסתרת';

  @override
  String get recentUpdates => 'עדכונים אחרונים';

  @override
  String get trendingNow => 'פופולרי עכשיו';

  @override
  String get popularThisSeason => 'פופולרי העונה';

  @override
  String get trendingMovies => 'סרטים פופולריים עכשיו';

  @override
  String get topRatedSeries => 'סדרות עם הדירוג הגבוה ביותר';

  @override
  String get mostFavouriteSeries => 'הסדרות האהובות ביותר';

  @override
  String get popularAnime => 'אנימות פופולריות';

  @override
  String get trendingManhwa => 'מנהוואות פופולריות עכשיו';

  @override
  String get trendingNovels => 'נובלות פופולריות עכשיו';

  @override
  String get topRatedManga => 'מנגות עם הדירוג הגבוה ביותר';

  @override
  String get mostFavouriteManga => 'המנגות האהובות ביותר';

  @override
  String get popularManga => 'מנגות פופולריות';

  @override
  String get topMovies => 'סרטים מובילים';

  @override
  String get topOna => 'ONA מובילים';

  @override
  String get topOva => 'OVA מובילים';

  @override
  String get mostPopular => 'הכי פופולריים';

  @override
  String get mostFavourite => 'הכי אהובים';

  @override
  String get upcoming => 'בקרוב';

  @override
  String get topManga => 'מנגות מובילות';

  @override
  String get topManhwa => 'מנהוואות מובילות';

  @override
  String get topManhua => 'מנהואות מובילות';

  @override
  String get topNovels => 'נובלות מובילות';

  @override
  String get topOneShots => 'וואן-שוטים מובילים';

  @override
  String get trendingMoviesToday => 'סרטים פופולריים היום';

  @override
  String get trendingShowsToday => 'סדרות פופולריות היום';

  @override
  String get trendingMoviesWeek => 'סרטים פופולריים השבוע';

  @override
  String get trendingShowsWeek => 'סדרות פופולריות השבוע';

  @override
  String get mostWatchedMoviesMonth => 'הסרטים הנצפים ביותר החודש';

  @override
  String get mostWatchedShowsMonth => 'הסדרות הנצפות ביותר החודש';

  @override
  String get trendingThisWeek => 'פופולרי השבוע';

  @override
  String get mostWatchedThisMonth => 'הנצפים ביותר החודש';

  @override
  String get repoLinksAdded => 'קישורי המאגר נוספו בהצלחה!';

  @override
  String repoLinkConfirm(String url) {
    return 'להוסיף את המאגר הזה?\n\n$url\n\nהוסף רק מאגרים ממקורות שאתה סומך עליהם.';
  }

  @override
  String get errorGettingAnilistData => 'שגיאה בקבלת נתונים מ-AniList.';

  @override
  String get navInfo => 'מידע';

  @override
  String get navComments => 'תגובות';

  @override
  String get playerNotAvailable => 'הנגן עדיין לא זמין';

  @override
  String deepLinkInitialError(String error) {
    return 'שגיאה בקבלת הקישור הראשוני: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'שגיאה בפתיחת קישור: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'אי אפשר לפתוח את הקישור הזה: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'שגיאה בפתיחת קישור: $error';
  }

  @override
  String get forReleasingTitles => 'לכותרים שמשודרים כעת';

  @override
  String get progress => 'התקדמות';

  @override
  String get notes => 'הערות';

  @override
  String serviceNotFound(String id) {
    return 'השירות \"$id\" לא נמצא';
  }

  @override
  String get glassEffectEnabled => 'אפקט זכוכית הופעל';

  @override
  String get glassEffectDisabled => 'אפקט זכוכית כובה';

  @override
  String get materialYouEnabled => 'Material You הופעל';

  @override
  String get materialYouDisabled => 'Material You כובה';

  @override
  String get darkModeEnabled => 'מצב כהה הופעל';

  @override
  String get darkModeDisabled => 'מצב כהה כובה';

  @override
  String get animeList => 'רשימת אנימה';

  @override
  String get mangaList => 'רשימת מנגה';

  @override
  String ownerAnimeList(String owner) {
    return 'רשימת האנימה של $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'רשימת המנגה של $owner';
  }

  @override
  String get loadingList => 'טוען רשימה';

  @override
  String get earlier => 'קודם';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לפני $count ימים',
      one: 'לפני יום',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לפני $count שעות',
      one: 'לפני שעה',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לפני $count דקות',
      one: 'לפני דקה',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'לפני $count דק\'';
  }

  @override
  String hoursAgoShort(int count) {
    return 'לפני $count ש\'';
  }

  @override
  String daysAgoShort(int count) {
    return 'לפני $count ימים';
  }

  @override
  String weeksAgoShort(int count) {
    return 'לפני $count שבו\'';
  }

  @override
  String get couldntLoadSource => 'אי אפשר לטעון את המקור הזה';

  @override
  String get followers => 'עוקבים';

  @override
  String couldntLoadTitle(String title) {
    return 'אי אפשר לטעון את $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'אי אפשר לטעון את הפרופיל הזה';

  @override
  String get profile => 'פרופיל';

  @override
  String get feed => 'פיד';

  @override
  String get stats => 'סטטיסטיקות';

  @override
  String get received => 'התקבלו';

  @override
  String get sent => 'נשלחו';

  @override
  String get global => 'גלובלי';

  @override
  String get couldntLoadPage => 'אי אפשר לטעון את הדף הזה';

  @override
  String get couldntLoadAllDetails => 'אי אפשר לטעון את כל הפרטים';

  @override
  String get series => 'סדרות';

  @override
  String get studios => 'אולפנים';

  @override
  String get users => 'משתמשים';

  @override
  String repositoriesTitle(String type) {
    return 'מאגרי $type';
  }

  @override
  String get repositoryUrl => 'כתובת המאגר';

  @override
  String get downloadingRepository => 'מוריד מאגר…';

  @override
  String get noRepositories => 'לא נוספו מאגרים';

  @override
  String repoExtensionsCount(String count) {
    return '$count תוספים';
  }

  @override
  String get searchExtensions => 'חפש תוספים...';

  @override
  String deletePluginTitle(String name) {
    return 'למחוק את $name?';
  }

  @override
  String get deletePluginMessage => 'בטוח שאתה רוצה למחוק את התוסף הזה?';

  @override
  String pluginDeleted(String name) {
    return '$name נמחק';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name לא זמין במאגר שהוגדר';
  }

  @override
  String get pluginFetchFailed => 'אי אפשר להביא מידע על התוסף';

  @override
  String installPluginTitle(String name) {
    return 'התקן את $name';
  }

  @override
  String sizeLabel(String size) {
    return 'גודל: $size';
  }

  @override
  String get installedState => 'מותקן';

  @override
  String updatePluginTitle(String name) {
    return 'עדכון $name';
  }

  @override
  String get errorLabel => 'שגיאה:';

  @override
  String get stackTraceDetails => 'פרטים (Stack Trace)';

  @override
  String get shareLogFile => 'שתף קובץ לוג';

  @override
  String get copyLogs => 'העתק לוגים';

  @override
  String noListToEdit(String service) {
    return 'ל-$service אין רשימה לעריכה';
  }

  @override
  String get couldNotReadFile => 'אי אפשר לקרוא את הקובץ הזה';

  @override
  String importedSummary(int anime, int manga) {
    return 'יובאו $anime אנימות ו-$manga מנגות';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count כבר קיימים';
  }

  @override
  String get airingNow => 'משודר עכשיו';

  @override
  String get topRatedMovies => 'סרטים עם הדירוג הגבוה ביותר';

  @override
  String get koreanDramas => 'דרמות קוריאניות';

  @override
  String get chineseDramas => 'דרמות סיניות';

  @override
  String get japaneseDramas => 'דרמות יפניות';

  @override
  String get thaiDramas => 'דרמות תאילנדיות';

  @override
  String get turkishDramas => 'דרמות טורקיות';

  @override
  String get miniSeries => 'מיני סדרות';

  @override
  String get topRatedShows => 'סדרות עם הדירוג הגבוה ביותר';

  @override
  String get recommendedSection => 'מומלץ';

  @override
  String get syncRow => 'סנכרון רשימות';

  @override
  String get syncRowDesc => 'שכפל רשימה של שירות אחד לשאר החשבונות שלך';

  @override
  String get syncTitle => 'סנכרון';

  @override
  String get syncMainService => 'שירות ראשי';

  @override
  String get syncMainServiceDesc =>
      'הרשימה שלו היא מקור האמת; כל שירות מחובר אחר מתעדכן להתאים לה';

  @override
  String get syncAuto => 'סנכרון אוטומטי';

  @override
  String get syncAutoDesc => 'הבא וסנכרן ברקע כשהאפליקציה נפתחת וכל 30 דקות';

  @override
  String get syncAddMissing => 'הוסף ערכים חסרים';

  @override
  String get syncAddMissingDesc => 'הוסף גם ערכים שעוד לא קיימים בשירות השני';

  @override
  String syncServiceOn(String name) {
    return 'סנכרון עם $name';
  }

  @override
  String get syncDelete => 'מחק את מה שאין בשירות הראשי';

  @override
  String get syncDeleteDesc =>
      'הסר ערכים משאר השירותים שאינם ברשימה הראשית. רק ערכים שניתן להתאים לכותר מוסרים, כך שדברים כמו סרטים וסדרות Simkl נשארים';

  @override
  String get syncDeleteTitle => 'למחוק ערכים?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ערכים',
      one: 'כניסה 1',
    );
    return '$_temp0 שאינם ברשימה הראשית שלך יימחקו מהשירותים האחרים. לא ניתן לבטל זאת.';
  }

  @override
  String get syncDeleteAction => 'לִמְחוֹק';

  @override
  String get syncToDelete => 'כדי למחוק';

  @override
  String get syncDeletedNote => 'יימחק';

  @override
  String syncWillRemove(int count, String name) {
    return '$count יימחק מ$name';
  }

  @override
  String get syncOnlyForward => 'שמור על התקדמות רחוקה יותר';

  @override
  String get syncOnlyForwardDesc => 'אל תוריד את ההתקדמות של שירות שכבר מקדים';

  @override
  String get animePlanetWontWatch => 'לא יצפה';

  @override
  String get animePlanetWontRead => 'לא יקרא';

  @override
  String get animePlanetAlreadyOnList => 'כבר ברשימה הזו';

  @override
  String get animePlanetNewList => 'שם רשימה חדש';

  @override
  String get syncPrivate => 'כניסות פרטיות';

  @override
  String get syncPrivateDesc =>
      'מה לעשות עם ערכים שאתה שומר על פרטיות. שירות עם אפשרות פרטית הופך אותם לפרטיים; אחרים היו מראים אותם בפומבי';

  @override
  String get syncPrivateModeAsk => 'לִשְׁאוֹל';

  @override
  String get syncPrivateModeSync => 'סנכרן אותם';

  @override
  String get syncPrivateModeSkip => 'דלג עליהם';

  @override
  String get syncPrivateTitle => 'כניסות פרטיות';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ערכים פרטיים',
      one: 'כניסה אחת היא פרטית',
    );
    return '$_temp0. שירותים עם אפשרות פרטית (AniList, Kitsu, MangaBaka) יקבלו אותם כפרטיים; לשירותים האחרים אין אפשרות פרטית והם יציגו אותם בפומבי. לסנכרן אותם? תשובתך זכורה; שנה אותו תחת אפשרויות סנכרון.';
  }

  @override
  String get syncPrivateInclude => 'סנכרן אותם';

  @override
  String get syncPrivateSkip => 'דלג עליהם';

  @override
  String get syncFetch => 'הבא';

  @override
  String get syncFetchAgain => 'הבא שוב';

  @override
  String get syncAll => 'סנכרן הכול';

  @override
  String get syncStop => 'עצור';

  @override
  String get syncResume => 'המשך';

  @override
  String get syncNothingToSync => 'אי אפשר לסנכרן את השירות הזה בסוג הזה';

  @override
  String get syncNoTargets => 'התחבר לשירות נוסף כדי לסנכרן איתו';

  @override
  String get syncLoadingMap => 'טוען מיפוי מזהים';

  @override
  String get syncComparing => 'משווה רשימות';

  @override
  String get syncIntro =>
      'בחר שירות ראשי ולחץ על \"הבא\". כל שירות נשאל פעם אחת על הרשימה שלך, ואז היא מושווית לשירות הראשי.';

  @override
  String get syncStateSynced => 'מסונכרן';

  @override
  String get syncStateOutdated => 'לא מסונכרן';

  @override
  String get syncStateMissing => 'לא ברשימה';

  @override
  String get syncStateUnmapped => 'אין התאמה';

  @override
  String syncPaused(String time) {
    return 'ממתין למגבלת הקצב, יחודש בעוד $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count רק ב-$name, לא שונו';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done מתוך $total';
  }

  @override
  String get syncNothingHere => 'אין מה להציג';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used מתוך $max בקשות נוצלו ב$window הזה';
  }

  @override
  String get syncMinute => 'דקה';

  @override
  String get syncDay => 'יום';

  @override
  String get syncNotInList => 'עדיין לא ברשימה';

  @override
  String get syncCleared => 'התוכנית נוקתה';

  @override
  String get syncClear => 'נקה';

  @override
  String get syncOptions => 'אפשרויות';

  @override
  String get syncShared => 'חולק ערך עם פריט אחר';

  @override
  String syncNotFound(String service) {
    return 'לא נמצא ב-$service';
  }

  @override
  String syncService(String service, int count) {
    return 'סנכרן $service ($count)';
  }

  @override
  String get syncOnEdit => 'סנכרן שינויים מיד';

  @override
  String get syncOnEditDesc =>
      'שלח כל עדכון התקדמות ועריכת רשימה לשירותים המחוברים האחרים שלך מיד';

  @override
  String syncRemoved(String services) {
    return 'הוסר מ-$services';
  }

  @override
  String syncPushed(String services) {
    return 'סונכרן ל-$services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'הגעת למגבלת קצב, נסה שוב עוד רגע';

  @override
  String get syncAhead => 'מי שמקדים';

  @override
  String get syncAheadDesc =>
      'דו-כיווני: לכל כותר הערך המתקדם ביותר מנצח ומועתק לכל השירותים האחרים שלך';

  @override
  String syncAheadFrom(String service) {
    return 'מ-$service';
  }

  @override
  String get syncConfirm => 'בדוק לפני סנכרון';

  @override
  String get syncConfirmDesc =>
      'הצג מה \"סנכרן הכול\" ישנה וכמה בקשות זה ידרוש';

  @override
  String get syncPreviewTitle => 'מוכן לסנכרון';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates עדכונים, $adds להוספה';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'בערך $count בקשות';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count מזהים צריכים חיפוש קודם';
  }

  @override
  String get syncPreviewNothing => 'אין מה לשנות';

  @override
  String get syncStart => 'התחל';

  @override
  String get syncRetry => 'נסה שוב';

  @override
  String get syncSkip => 'דלג על הפריט הזה';

  @override
  String get syncInclude => 'כלול שוב את הפריט הזה';

  @override
  String get syncSkippedLabel => 'דולג';

  @override
  String get syncChanges => 'הבדלים';

  @override
  String get syncChangeStatus => 'סטטוס';

  @override
  String get syncChangeProgress => 'התקדמות';

  @override
  String get syncChangeScore => 'ציון';

  @override
  String get syncChangeDates => 'תאריכים';

  @override
  String get syncChangeRepeat => 'מספר צפיות חוזרות';

  @override
  String get syncFailedReason => 'למה זה נכשל';

  @override
  String get syncSkippedHint => 'פריטים שדולגו נשארים בצד, גם אחרי הבאה מחדש';

  @override
  String get commentsRules => 'חוקי תגובות';

  @override
  String get commentsRulesBody =>
      'מי ששובר חוק = עף\n\n1. בלי גזענות, אפליה או דברי שנאה\n2. בלי ספאם או פרסום עצמי\n3. בלי תוכן NSFW בכלל\n4. אנגלית בלבד, בלי יוצאים מן הכלל\n5. בלי התחזות, הטרדה או התעללות\n6. בלי תוכן לא חוקי או זלזול קיצוני בכל פאנדום\n7. אסור לבקש או לשתף מאגרים או תוספים\n8. ספוילרים רק עם תג ספוילר ואזהרה\n9. בלי הסקסואליזציה או תגובות לא ראויות על דמויות קטינות\n10. אם זה לא בסדר, אל תפרסם!';

  @override
  String get commentsRulesAccept => 'הבנתי';

  @override
  String get commentsSortNewest => 'החדשים ביותר';

  @override
  String get commentsSortOldest => 'הישנים ביותר';

  @override
  String get commentsSortHighest => 'המדורגים הכי גבוה';

  @override
  String get commentsSortLowest => 'המדורגים הכי נמוך';

  @override
  String commentsEpisodeShort(int number) {
    return 'פרק $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'צ\'פטר $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'סנן לפי פרק';

  @override
  String get commentsFilterChapterTitle => 'סנן לפי צ\'פטר';

  @override
  String get commentsFilterTagTitle => 'הכנס מספר פרק או צ\'פטר';

  @override
  String get commentsFilterHint => 'מספר';

  @override
  String get commentsFilterApply => 'סינון';

  @override
  String get commentsFilterClear => 'הצג הכול';

  @override
  String get commentsPlaceholder => 'הוסף תגובה…';

  @override
  String commentsReplyingTo(String name) {
    return 'משיב ל-$name';
  }

  @override
  String get commentsSend => 'שלח';

  @override
  String get commentsTagButton => 'תג';

  @override
  String commentsTagTitle(String label) {
    return 'תג $label (אופציונלי)';
  }

  @override
  String get commentsTagEpisode => 'פרק';

  @override
  String get commentsTagChapter => 'צ\'פטר';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'מספר $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'התג לא יכול לחרוג מהסך הכול ($total)';
  }

  @override
  String get commentsNoTag => 'ללא תג';

  @override
  String get commentsSpoiler => 'ספוילר';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'חפש GIF';

  @override
  String get commentsGifEmpty => 'לא נמצאו GIF';

  @override
  String get commentsEmptyText => 'התגובה לא יכולה להיות ריקה';

  @override
  String get commentsBannedYou => 'חסמו אותך מלהגיב';

  @override
  String get commentsEdited => 'התגובה נערכה';

  @override
  String get commentsDeleted => 'התגובה נמחקה';

  @override
  String get commentsDeletedPlaceholder => '[נמחק]';

  @override
  String get commentsReported => 'התגובה דווחה';

  @override
  String get commentsUserBanned => 'המשתמש נחסם';

  @override
  String get commentsReport => 'דווח';

  @override
  String get commentsReportAsk => 'לדווח על התגובה הזו למנהלים?';

  @override
  String get commentsDelete => 'מחק';

  @override
  String get commentsDeleteAsk => 'התגובה הזו תוסר לכולם.';

  @override
  String get commentsBan => 'חסום';

  @override
  String get commentsBanAsk => 'לחסום את המשתמש הזה מלהגיב?';

  @override
  String get commentsCopy => 'העתק';

  @override
  String get commentsViewReply => 'הצג תגובה אחת';

  @override
  String commentsViewReplies(int count) {
    return 'הצג $count תגובות';
  }

  @override
  String get commentsHideReplies => 'הסתר תגובות';

  @override
  String get commentsLoadMore => 'טען עוד תגובות';

  @override
  String get commentsEmpty => 'עדיין אין תגובות. תהיה הראשון!';

  @override
  String get commentsEmptyFiltered => 'אין תגובות לסינון הזה';

  @override
  String get commentsSignIn => 'התחבר ל-AniList כדי לקרוא ולכתוב תגובות';

  @override
  String get commentsSignInMessage =>
      'התגובות משותפות לכל השירותים ומשתמשות בחשבון AniList שלך.';

  @override
  String get commentsUnavailable => 'תגובות לא זמינות לכותר הזה';

  @override
  String get commentsUnavailableMessage =>
      'אי אפשר היה להתאים אותו לערך ב-AniList.';

  @override
  String get commentsDisabled => 'התגובות כבויות';

  @override
  String get commentsDisabledMessage =>
      'אפשר להפעיל אותן מחדש ב\"הגדרות › כללי\".';

  @override
  String get commentsOffline => 'אי אפשר לטעון תגובות';

  @override
  String get commentsSingleTitle => 'מוצגת תגובה אחת';

  @override
  String get commentsShowAll => 'הצג את כל התגובות';

  @override
  String get commentsSettingsHeader => 'תגובות';

  @override
  String get commentsSettingEnabled => 'תגובות';

  @override
  String get commentsSettingEnabledDesc =>
      'הצג את לשונית התגובות בכותרים והתחבר לשרת התגובות עם חשבון AniList שלך';

  @override
  String get commentsSettingAlerts => 'התראות על תגובות';

  @override
  String get commentsSettingAlertsDesc => 'הודע לי כשמישהו מגיב לתגובות שלי';

  @override
  String get commentsNoticeReplyTitle => 'תגובה חדשה';

  @override
  String commentsNoticeReply(String name) {
    return '$name הגיב לתגובה שלך';
  }

  @override
  String get commentsNoticeWarningTitle => 'קיבלת אזהרה';

  @override
  String get commentsNoticeWarning => 'תהיה יותר מתחשב בתגובות שלך';

  @override
  String get commentsNoticeUpdateTitle => 'עדכון מ-Dantotsu';

  @override
  String get barcodeTitle => 'סרוק ברקוד';

  @override
  String get barcodeTooltip => 'מצא מנגה או נובל לפי הברקוד';

  @override
  String get barcodeIntro =>
      'כוון את המצלמה לברקוד בגב הכרך, או הקלד את ה-ISBN.';

  @override
  String get barcodeIntroManual => 'הקלד את ה-ISBN שמודפס מעל הברקוד בגב הכרך.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'זה לא ISBN תקין';

  @override
  String barcodeNotFound(String isbn) {
    return 'לא נמצא ספר עבור $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'המצלמה לא זמינה. אשר גישה למצלמה או הקלד את ה-ISBN.';

  @override
  String get themesTitle => 'פתיחים וסיומים';

  @override
  String get themesPlayVideo => 'הפעל וידאו';

  @override
  String get themesPlayAudio => 'הפעל אודיו בלבד';

  @override
  String get themesOpenSite => 'פתח ב-AnimeThemes';

  @override
  String get themesCredit => 'שירי נושא מ-AnimeThemes';

  @override
  String get themesVersions => 'גרסאות';

  @override
  String get sauceTitle => 'מצא את המקור';

  @override
  String get sauceIntro =>
      'העלה עמוד מנגה או יצירת אמנות, או הדבק קישור אליהם, כדי לגלות מאיפה זה.';

  @override
  String get sauceKeyTitle => 'מפתח API של SauceNAO';

  @override
  String get sauceKeyHint => 'אופציונלי, מעלה את מגבלת החיפוש היומית';

  @override
  String get sauceKeyDesc => 'קבל מפתח חינמי ב-saucenao.com/user.php';

  @override
  String get sauceOpen => 'פתח מקור';

  @override
  String get sauceCredit => 'חיפוש תמונות על ידי SauceNAO';

  @override
  String get sauceEmpty => 'לא נמצאה התאמה';

  @override
  String get sauceTooltip => 'מצא את המקור של עמוד מנגה או יצירת אמנות';

  @override
  String get trendzTitle => 'צ\'ארטים של אנימה';

  @override
  String get trendzAnime => 'אנימה';

  @override
  String get trendzFemale => 'דמויות נשיות';

  @override
  String get trendzMale => 'דמויות גבריות';

  @override
  String get trendzCouple => 'זוגות';

  @override
  String get trendzCredit => 'צ\'ארטים שבועיים מ-AniTrendz';

  @override
  String get trendzNew => 'חדש';

  @override
  String get trendzEmpty => 'הצ\'ארט ריק';

  @override
  String get shareCard => 'שתף כרטיס';

  @override
  String get shareCardList => 'שתף כרטיס רשימה';

  @override
  String get shareCardSaved => 'הכרטיס נשמר';

  @override
  String get shareCardFailed => 'אי אפשר ליצור את הכרטיס';

  @override
  String get shareCardListEmpty => 'ברשימה שלך עדיין אין מה לשתף';

  @override
  String get shareCardTop => 'הבחירות המובילות שלי';

  @override
  String themesEpisodes(String eps) {
    return 'פרקים $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% התאמה';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'שבוע $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count הצבעות';
  }

  @override
  String trendzPeak(String rank) {
    return 'שיא #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count שבועות בעשירייה הראשונה';
  }

  @override
  String get imageSearchTitle => 'חיפוש לפי תמונה';

  @override
  String get imageSearchTooltip => 'מצא אנימה לפי צילום מסך';

  @override
  String get imageSearchIntro =>
      'בחר צילום מסך או הדבק קישור לתמונה, ו-trace.moe ימצא את הפרק ואת הרגע שממנו הוא לקוח.';

  @override
  String get imageSearchPick => 'בחר תמונה';

  @override
  String get imageSearchLinkHint => 'הדבק קישור לתמונה';

  @override
  String get imageSearchGo => 'חפש';

  @override
  String get imageSearchEmpty => 'לא נמצאה התאמה';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'פרק $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'ב-$time';
  }

  @override
  String get imageSearchPreview => 'קטע לדוגמה';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% התאמה';
  }

  @override
  String get imageSearchCredit => 'מופעל על ידי trace.moe';

  @override
  String get imageSearchOpenFailed => 'אי אפשר לפתוח את הכותר הזה';

  @override
  String get groups => 'קבוצות';

  @override
  String get groupsYours => 'הקבוצות שלך';

  @override
  String get groupsPopular => 'פופולריות';

  @override
  String get groupsNew => 'חדשות';

  @override
  String get groupsFeatured => 'מומלצות';

  @override
  String get groupsSearch => 'חפש קבוצות';

  @override
  String get groupsAll => 'הכול';

  @override
  String get groupsEmpty => 'לא נמצאו קבוצות';

  @override
  String get groupsEmptyYours => 'עוד לא הצטרפת לאף קבוצה';

  @override
  String get groupsSignIn => 'התחבר כדי לראות את הקבוצות שהצטרפת אליהן';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count חברים',
      one: 'חבר אחד',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'הצטרף';

  @override
  String get groupsJoined => 'הצטרפת';

  @override
  String get groupsLeave => 'עזוב קבוצה';

  @override
  String get groupsLeaveAsk => 'תפסיק לראות את הפוסטים של הקבוצה הזו בפיד שלך.';

  @override
  String get groupsJoinFailed =>
      'אי אפשר להצטרף לקבוצה הזו, אולי היא בהזמנה בלבד';

  @override
  String get groupsLeaveFailed => 'אי אפשר לעזוב את הקבוצה הזו';

  @override
  String get groupsPosts => 'פוסטים';

  @override
  String get groupsMembersTab => 'חברים';

  @override
  String get groupsAbout => 'אודות';

  @override
  String get groupsRules => 'חוקים';

  @override
  String get groupsPrivacyOpen => 'פתוחה';

  @override
  String get groupsPrivacyRestricted => 'מוגבלת';

  @override
  String get groupsPrivacyClosed => 'סגורה';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'אדמין';

  @override
  String get groupsRoleMod => 'מוד';

  @override
  String get groupsCouldntLoad => 'אי אפשר לטעון את הקבוצה הזו';

  @override
  String get groupsNewPost => 'פרסם בקבוצה';

  @override
  String get groupsPostHint => 'שתף משהו עם הקבוצה';

  @override
  String get groupsOpenInBrowser => 'פתח בדפדפן';

  @override
  String get groupsCategory => 'קטגוריה';

  @override
  String get groupsLanguage => 'שפה';

  @override
  String get groupsCreated => 'נוצרה';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count מנהיגים',
      one: 'מנהיג אחד',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'פרטיות';

  @override
  String get notificationsAll => 'הכול';

  @override
  String get notificationsAiring => 'משודרים';

  @override
  String get notificationsMedia => 'כותרים חדשים';

  @override
  String get notificationsReplies => 'תגובות';

  @override
  String get notificationsMentions => 'אזכורים';

  @override
  String get notificationsMessages => 'הודעות';

  @override
  String get notificationsLikes => 'לייקים';

  @override
  String get notificationsFollows => 'עוקבים';

  @override
  String get notificationsNoServices => 'לאף שירות מחובר אין התראות';

  @override
  String get notificationsNoServicesMessage =>
      'התחבר לשירות ששולח התראות והן יופיעו כאן.';

  @override
  String get notificationsEmptyKind => 'עדיין אין כלום בקטגוריה הזו';

  @override
  String get notificationsCommentsEmpty => 'אין התראות על תגובות';

  @override
  String get notificationsCommentsEmptyMessage =>
      'תגובות לתגובות שלך והודעות מ-Dantotsu יופיעו כאן.';

  @override
  String get notificationsSettings => 'הגדרות התראות';

  @override
  String get notificationsPollTitle => 'בדוק התראות חדשות';

  @override
  String notificationsPollDesc(int minutes) {
    return 'כל $minutes דקות כשהאפליקציה פתוחה';
  }

  @override
  String get notificationsNotifyAbout => 'הודע לי על';

  @override
  String get notificationsCommentsHeader => 'התראות תגובות';

  @override
  String systemNotificationsDescFor(String service) {
    return 'הצג התראת מערכת על כל התראה שלא נקראה מ-$service בזמן שהאפליקציה פועלת.';
  }

  @override
  String get notificationsTestSent => 'התראת בדיקה נשלחה';

  @override
  String get notificationsTestDenied =>
      'התראות לא מותרות ל-Dartotsu. הפעל אותן בהגדרות המערכת.';

  @override
  String get notificationsTestHint => 'לחיצה ארוכה לשליחת התראת בדיקה';

  @override
  String get notificationsTestSample => 'זו התראת בדיקה';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name הגיב לתגובה שלך ב-$media';
  }

  @override
  String get imageSearchNotLink => 'זה לא נראה כמו קישור';

  @override
  String get imageSearchQuota => 'חרגת ממכסת החיפוש';

  @override
  String get imageSearchBusy => 'יותר מדי בקשות, נסה שוב עוד רגע';

  @override
  String imageSearchFailed(int code) {
    return 'החיפוש נכשל ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count התראות חדשות';
  }

  @override
  String get reactionsTitle => 'תגובות אמוג\'י';

  @override
  String get reactionsNeedEntry =>
      'הוסף את הכותר הזה לרשימה שלך לפני שאתה מגיב';

  @override
  String get reactionsAdd => 'הוסף תגובה';

  @override
  String get reactionsHint => 'מה דעתך? (קצר ובלי ספוילרים)';

  @override
  String get reactionsPost => 'פרסם';

  @override
  String get reactionsFailed => 'אי אפשר לעדכן את התגובה';

  @override
  String get settingsWatch => 'צפייה וקריאה';

  @override
  String get settingsWatchDesc => 'רשימות פרקים, התאמת מקורות ופרטי פרקים';

  @override
  String get watchSettingsLayout => 'רשימת פרקים';

  @override
  String get watchSettingsSources => 'מקורות';

  @override
  String get watchSettingsMetadata => 'פרטי פרקים';

  @override
  String get watchLayout => 'פריסה';

  @override
  String get watchListView => 'רשימה';

  @override
  String get watchGridView => 'רשת';

  @override
  String get watchCompactView => 'קומפקטי';

  @override
  String get watchDefaultLayoutDesc =>
      'איך פרקים וצ\'פטרים מוצגים עד שתשנה את זה לכותר מסוים';

  @override
  String get watchChunkSize => 'גודל טווח';

  @override
  String get watchChunkSizeDesc => 'כמה פרקים או צ\'פטרים כל לשונית טווח מכילה';

  @override
  String get watchShowDescription => 'הצג תיאורים';

  @override
  String get watchShowDescriptionDesc =>
      'הצג את תקציר הפרק מתחת לכל כותרת בפריסת הרשימה';

  @override
  String get watchShowFiller => 'הצג פרקי פילר';

  @override
  String get watchShowFillerDesc => 'כבה כדי להסתיר פרקים שסומנו כפילר';

  @override
  String get watchBlurUnwatched => 'הסתר תמונות עם ספוילרים';

  @override
  String get watchBlurUnwatchedDesc =>
      'טשטש את התמונה הממוזערת של פרקים שעוד לא צפית בהם';

  @override
  String get watchResumeShelf => 'מדף המשך';

  @override
  String get watchResumeShelfDesc => 'הצג את שורת ההמשך בדף הבית';

  @override
  String get watchMarkOnLongPress => 'לחיצה ארוכה מסמנת התקדמות';

  @override
  String get watchMarkOnLongPressDesc =>
      'לחץ לחיצה ארוכה על פרק או צ\'פטר כדי לסמן אותו כנצפה או כלא נצפה';

  @override
  String get watchMatching => 'התאמת מקורות';

  @override
  String get watchMatchingDesc =>
      '\"ההתאמה הקרובה ביותר\" לוקחת את תוצאת החיפוש הטובה ביותר. \"התאמה מדויקת בלבד\" מקבל רק כותרת כמעט זהה ומשאיר את השאר לבחירתך.';

  @override
  String get watchMatchClosest => 'ההתאמה הקרובה ביותר';

  @override
  String get watchMatchExact => 'התאמה מדויקת בלבד';

  @override
  String get watchMetadataDesc =>
      'מאיפה מגיעים כותרות הפרקים, התקצירים, התמונות, תאריכי השידור ודגלי הפילר. גרור כדי לקבוע עדיפות; המקור הראשון שיש בו ערך מנצח.';

  @override
  String get watchMetaAniZipDesc =>
      'כותרות פרקים, תקצירים, תמונות ותאריכי שידור';

  @override
  String get watchMetaKitsuDesc => 'כותרות פרקים, תיאורים ותמונות ממוזערות';

  @override
  String get watchMetaSimklDesc =>
      'כותרות פרקים, תיאורים, תמונות ותאריכי שידור';

  @override
  String get watchMetaAniListDesc =>
      'כותרות פרקים בסטרימינג, תמונות ממוזערות ולוח השידורים';

  @override
  String get watchMetaTenraiDesc =>
      'כותרות פרקים, תאריכי שידור ודגלי פילר וסיכום מ-MyAnimeList דרך Tenrai';

  @override
  String get watchClearMetadata => 'רענן פרטי פרקים';

  @override
  String get watchClearMetadataDesc =>
      'שכח את פרטי הפרקים השמורים כדי שיובאו מחדש';

  @override
  String get watchMetadataCleared => 'פרטי הפרקים יובאו מחדש';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פרקים',
      one: 'פרק 1',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count צ\'פטרים',
      one: 'צ\'פטר 1',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'פרק $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'צ\'פטר $number';
  }

  @override
  String get watchSearching => 'מחפש…';

  @override
  String watchSearchingFor(String term) {
    return 'מחפש: $term';
  }

  @override
  String watchSelected(String title) {
    return 'נבחר: $title';
  }

  @override
  String watchFound(String title) {
    return 'נמצא: $title';
  }

  @override
  String get watchNothingFound => 'לא נמצא כלום במקור הזה';

  @override
  String get watchSearchFailed => 'חיפוש המקור נכשל';

  @override
  String get watchLoadFailed => 'אי אפשר לטעון את הרשימה';

  @override
  String get watchSignInToTrack => 'התחבר כדי לעקוב אחרי ההתקדמות שלך';

  @override
  String watchInstallSource(String action) {
    return 'התקן תוסף כדי להתחיל $action';
  }

  @override
  String get watchSourceMissing => 'המקור הזה לא מותקן';

  @override
  String get watchWrongTitle => 'כותר לא נכון?';

  @override
  String get watchSearchAgain => 'חפש שוב';

  @override
  String watchSearchSource(String source) {
    return 'חפש ב-$source';
  }

  @override
  String get watchSource => 'מקור';

  @override
  String get sourceTags => 'תגים';

  @override
  String get sourceTagsHint =>
      'תייגו למה נועד המקור הזה. כותרת מפרטת את המקורות שתויגו עבורו תחילה, ולאחר מכן את המקורות שאינם מתויגים. 18+ מקורות מוצגים רק עבור כותרים למבוגרים.';

  @override
  String get sourceTagAnime => 'אנימה';

  @override
  String get sourceTagMovies => 'סרטים וסדרות';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'מוסתר על ידי תגים';

  @override
  String get watchOptions => 'אפשרויות';

  @override
  String get watchReverse => 'סדר הפוך';

  @override
  String get watchScanlators => 'קבוצות';

  @override
  String get watchResetOptions => 'אפס את האפשרויות האלה';

  @override
  String get watchContinue => 'המשך';

  @override
  String get watchStart => 'התחל';

  @override
  String get watchPlay => 'נגן';

  @override
  String get watchRead => 'קרא';

  @override
  String get watchMarkWatched => 'סמן כנצפה';

  @override
  String get watchMarkUnwatched => 'סמן כלא נצפה';

  @override
  String get watchMarkRead => 'סמן כנקרא';

  @override
  String get watchMarkUnread => 'סמן כלא נקרא';

  @override
  String get watchFiller => 'פילר';

  @override
  String get watchRecap => 'סיכום';

  @override
  String get watchNoEpisodes => 'לא נמצאו פרקים';

  @override
  String get watchNoChapters => 'לא נמצאו צ\'פטרים';

  @override
  String get watchSourceTools => 'כלי מקור';

  @override
  String get watchSourceSettings => 'הגדרות מקור';

  @override
  String get watchOpenWebView => 'פתח בתצוגת ווב';

  @override
  String get watchOpenWebViewDesc =>
      'פתור בדיקת Cloudflare או התחבר; העוגיות משותפות לבקשות המקור';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count עוגיות שמורות עבור $host',
      one: 'עוגייה אחת שמורה עבור $host',
      zero: 'אין עוגיות שמורות עבור $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'אישור Cloudflare פעיל, $time';
  }

  @override
  String get watchClearanceMissing => 'אין עוגיית אישור של Cloudflare';

  @override
  String get watchClearanceSession => 'נשאר עד שהאפליקציה נסגרת';

  @override
  String get watchAgentShared =>
      'הבקשות משתמשות ב-user agent של תצוגת הווב, ש-Cloudflare בודק';

  @override
  String get watchAgentCustom =>
      'הוגדר user agent מותאם, אז אישור Cloudflare מתצוגת הווב עלול להידחות';

  @override
  String get watchTestConnection => 'בדוק חיבור';

  @override
  String get watchSolveChallenge => 'פתור';

  @override
  String watchProbeOk(int code) {
    return 'נגיש (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare עדיין דורש בדיקה';

  @override
  String watchProbeBlocked(int code) {
    return 'האתר חסם אותך (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'אי אפשר להגיע לאתר';

  @override
  String get watchClearCookies => 'נקה עוגיות לאתר הזה';

  @override
  String get watchCookiesCleared => 'העוגיות נוקו';

  @override
  String get watchFailTimeout => 'הצ\'ק לא הסתיים בזמן';

  @override
  String get watchFailBlocked =>
      'האתר חסם מכשיר זה (הגישה נדחתה). צ\'ק לא יעזור';

  @override
  String get watchFailTurnstile =>
      'בדיקה זו דורשת הקשה שפותר הרקע לא יכול לעשות';

  @override
  String get watchFailLoad => 'הדף לא נטען. בדוק את החיבור ואת כתובת האתר';

  @override
  String get watchFailRejected =>
      'האתר דחה את האישור שזה עתה נתן. נסה שוב או נקה את העוגיות';

  @override
  String get watchFailDismissed => 'הצ\'ק נסגר לפני שהסתיים';

  @override
  String get watchFailCooldown =>
      'סגרת את הצ\'ק לפני רגע. הקש על פתרון כדי לנסות שוב';

  @override
  String get watchFailQuiet => 'הצ\'ק צריך אותך, והאפליקציה עבדה לבד';

  @override
  String get watchFailWebView => 'תצוגת האינטרנט ברקע לא הייתה יכולה להתחיל';

  @override
  String get watchFailUnavailable => 'אין מסך להראות את הצ\'ק';

  @override
  String get watchStatusReady => 'מוכן';

  @override
  String get watchStatusChallenge => 'נדרשת בדיקת Cloudflare';

  @override
  String get watchStatusBlocked => 'נחסם על ידי האתר';

  @override
  String get watchStatusOffline => 'לא מצליח להגיע לאתר';

  @override
  String get watchStatusUntested => 'עדיין לא נבדק';

  @override
  String get watchStatusTesting => 'בודק את החיבור...';

  @override
  String get watchStatusSolving => 'עובר את בדיקת Cloudflare...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'בדיקת Cloudflare עברה ברקע ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'בדיקת Cloudflare עברה';

  @override
  String watchClearanceIssued(String time) {
    return 'הרוויח $time';
  }

  @override
  String get watchClearanceStale =>
      'האישור התקבל עם סוכן משתמש אחר, ולכן הוא לא נשלח. בדוק את החיבור כדי לקבל חיבור חדש';

  @override
  String get watchSectionConnection => 'חיבור';

  @override
  String get watchSectionSession => 'מושב';

  @override
  String get watchSectionTools => 'כלים';

  @override
  String get watchMetaSource => 'פרטי פרקים מ';

  @override
  String get watchMetaAuto => 'אוטומטי';

  @override
  String get watchMetaOff => 'כבוי';

  @override
  String get playerSettingsTitle => 'הגדרות נגן';

  @override
  String get playerSectionPlayback => 'ניגון';

  @override
  String get playerSectionSkip => 'דילוג';

  @override
  String get playerSectionGestures => 'בקרים';

  @override
  String get playerSectionSubtitles => 'כתוביות';

  @override
  String get playerSectionShaders => 'שיידרים';

  @override
  String get playerSectionEngine => 'מנוע';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'מהירות ניגון';

  @override
  String get localSource => 'קבצים מקומיים';

  @override
  String get localMissing =>
      'הקובץ או התיקיה אינם נמצאים עוד בתיקייה המקומית שלך';

  @override
  String get playerStickyStage => 'סרטון דביק';

  @override
  String get playerStickyStageDesc =>
      'שמור את הסרטון קבוע בחלק העליון בזמן שאתה גולל בין הפרקים והתגובות למטה';

  @override
  String get playerCursedSpeed => 'מהירויות נוספות';

  @override
  String get playerCursedSpeedDesc => 'הוסף לרשימה מהירויות עד 10x';

  @override
  String get playerResize => 'מצב שינוי גודל';

  @override
  String get playerFitFit => 'התאמה';

  @override
  String get playerFitCover => 'כיסוי';

  @override
  String get playerFitStretch => 'מתיחה';

  @override
  String get playerSkipDuration => 'אורך כפתור הדילוג';

  @override
  String get playerSkipDurationDesc =>
      'שניות שכפתור הדילוג קופץ מחוץ לפתיחים וסיומים';

  @override
  String get playerSeekDuration => 'דילוג בלחיצה כפולה';

  @override
  String get playerSeekDurationDesc =>
      'שניות לקפיצה בלחיצה כפולה או בחץ במקלדת';

  @override
  String get playerAutoPlay => 'נגן את הבא אוטומטית';

  @override
  String get playerAutoPlayDesc => 'התחל את הפרק הבא כשהנוכחי נגמר';

  @override
  String get playerResume => 'המשך מאיפה שהפסקת';

  @override
  String get playerResumeDesc => 'המשך פרק מהמקום האחרון שבו היית';

  @override
  String get playerOrientation => 'כיוון';

  @override
  String get playerOrientationAuto => 'לפי המכשיר';

  @override
  String get playerOrientationLandscape => 'לרוחב';

  @override
  String get playerOrientationPortrait => 'לאורך';

  @override
  String get playerAutoSkipOpening => 'דלג על פתיחים';

  @override
  String get playerAutoSkipEnding => 'דלג על סיומים';

  @override
  String get playerAutoSkipRecap => 'דלג על סיכומים';

  @override
  String get playerAutoSkipDesc =>
      'קפוץ מעליו ברגע שהוא מתחיל, לפי AniSkip וחותמות זמן של הסטרים';

  @override
  String get playerDisableSkips => 'השבת דילוגים';

  @override
  String get playerDisableSkipsDesc =>
      'אין חותמות זמן של AniSkip או זרם, סימני פרקים או דילוג על הגשות בנגן';

  @override
  String get playerSkipOnce => 'דלג פעם אחת בלבד';

  @override
  String get playerSkipOnceDesc => 'אל תדלג על אותו קטע שוב אם חזרת אליו';

  @override
  String get playerAdjustBrightness => 'מחוות בהירות';

  @override
  String get playerAdjustBrightnessDesc =>
      'החלק למעלה ולמטה בחצי הימני של המסך';

  @override
  String get playerAdjustVolume => 'מחוות עוצמת קול';

  @override
  String get playerAdjustVolumeDesc => 'החלק למעלה ולמטה בחצי השמאלי של המסך';

  @override
  String get playerHoldToSpeed => 'החזק להאצה';

  @override
  String get playerHoldToSpeedDesc =>
      'לחץ והחזק על הווידאו כדי לנגן מהר יותר, גרור הצידה כדי לשנות את המהירות';

  @override
  String get playerThumbless => 'פס חיפוש עבה';

  @override
  String get playerThumblessDesc => 'פס עבה בלי ידית';

  @override
  String get playerShowSubtitles => 'הצג כתוביות';

  @override
  String get playerShowSubtitlesDesc => 'כבה כדי להסתיר את כל רצועות הכתוביות';

  @override
  String get playerSubtitleLanguage => 'שפת כתוביות מועדפת';

  @override
  String get playerSubtitleSize => 'גודל כתוביות';

  @override
  String get playerSubtitleWeight => 'עובי כתוביות';

  @override
  String get playerSubtitleBottom => 'ריפוד תחתון לכתוביות';

  @override
  String get playerSubtitleFont => 'גופן כתוביות';

  @override
  String get playerSubtitleColor => 'צבע כתוביות';

  @override
  String get playerSubtitleBackground => 'רקע כתוביות';

  @override
  String get playerSubtitleOutline => 'קו מתאר לכתוביות';

  @override
  String get playerSubtitleOutlineWidth => 'רוחב מתאר כתוביות';

  @override
  String get playerSubtitlePreview => 'תצוגה מקדימה של כתוביות';

  @override
  String get playerSubtitlePreviewText => 'טקסט תצוגה מקדימה של כתוביות';

  @override
  String get playerLibass => 'השתמש ב-libass';

  @override
  String get playerLibassDesc =>
      'מציג כתוביות .ass מעוצבות. הגודל, הצבע והגופן שלמעלה לא יחולו';

  @override
  String get playerShaders => 'שיידרים';

  @override
  String get playerShadersEnable => 'הפעל שיידרים';

  @override
  String get playerShadersEnableDesc =>
      'שדרג ונקה את התמונה עם שיידרים של GLSL כמו Anime4K';

  @override
  String get playerShadersOff => 'שיידרים כבויים';

  @override
  String get playerShadersMissing => 'Anime4K לא מותקן';

  @override
  String get playerShadersMissingDesc =>
      'הורד את חבילת השיידרים של Anime4K (בערך 0.8 MB) כדי להשתמש במצבים המובנים.';

  @override
  String get playerShadersDownload => 'הורד את Anime4K';

  @override
  String get playerPictureSave => 'שמור את המסגרת הזו';

  @override
  String get playerPictureOriginal => 'מקורי';

  @override
  String get playerPictureOriginalDesc =>
      'המסגרת כפי שיש בסרטון, ללא הצללות או צבעים';

  @override
  String get playerPictureProcessed => 'עם הצללות וצבעים';

  @override
  String get playerPictureProcessedDesc => 'המסגרת כפי שאתה רואה אותה כעת';

  @override
  String get playerPictureSaved => 'המסגרת נשמרה';

  @override
  String get playerPictureSaveFailed => 'לא ניתן לשמור את המסגרת';

  @override
  String get playerShadersPreview => 'תצוגה מקדימה על הפריים הזה';

  @override
  String get playerShadersUse => 'השתמש בזה';

  @override
  String get playerPicture => 'תמונה';

  @override
  String get playerColors => 'צבעים';

  @override
  String get playerColorDefault => 'ברירת מחדל';

  @override
  String get playerColorVivid => 'חי';

  @override
  String get playerColorPop => 'אנימה פופ';

  @override
  String get playerColorSoft => 'רך';

  @override
  String get playerColorCinematic => 'קולנועי';

  @override
  String get playerColorBright => 'בהיר';

  @override
  String get playerColorNight => 'לילה';

  @override
  String get playerColorMono => 'מונו';

  @override
  String get playerColorCustom => 'מותאם אישית';

  @override
  String get playerColorBrightness => 'בהירות';

  @override
  String get playerColorContrast => 'ניגודיות';

  @override
  String get playerColorSaturation => 'רוויה';

  @override
  String get playerColorGamma => 'גמא';

  @override
  String get playerColorHue => 'גוון';

  @override
  String get playerColorReset => 'איפוס';

  @override
  String get playerColorAdjust => 'התאמה';

  @override
  String get playerShadersOriginal => 'מקורי';

  @override
  String get playerShadersPreviewFailed => 'אי אפשר לקחת פריים לתצוגה מקדימה';

  @override
  String get playerShadersSoftware =>
      'Shaders זקוקים לעיבוד חומרה, והשחקן משתמש בעיבוד תוכנה. כבה את עיבוד התוכנה בהגדרות הנגן.';

  @override
  String get playerSoftwareRender => 'עיבוד תוכנה';

  @override
  String get playerSoftwareRenderDesc =>
      'רק לסרטון שחור. Shaders לא עובדים עם זה. חל בפעם הבאה שהנגן ייפתח';

  @override
  String get playerShadersCustomFiles => 'השיידרים שלך';

  @override
  String get playerShadersCustom => 'שיידרים מותאמים';

  @override
  String get playerShadersImport => 'ייבא .glsl';

  @override
  String get playerShadersNone =>
      'ייבא קבצי .glsl או .hook משלך וסמן אותם כדי לשרשר אותם';

  @override
  String get playerShadersBadFile => 'בחר קובץ שיידר .glsl או .hook';

  @override
  String get playerDecoder => 'דקודר';

  @override
  String get playerDecoderAuto => 'אוטומטי';

  @override
  String get playerDecoderAutoSafe => 'אוטומטי (בטוח)';

  @override
  String get playerDecoderSoftware => 'תוכנה';

  @override
  String get playerDecoderHardware => 'חומרה';

  @override
  String get playerDecoderHardwarePlus => 'חומרה+';

  @override
  String get playerVideoOutput => 'פלט וידאו';

  @override
  String get playerAudioChannels => 'ערוצי אודיו';

  @override
  String get playerBuffer => 'גודל באפר (MB)';

  @override
  String get playerBufferDesc => 'הזיכרון שהנגן יכול להשתמש בו לבאפר של סטרים';

  @override
  String get playerUseMpvConf => 'השתמש ב-mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'החל את האפשרויות מה-mpv.conf שלך כשהניגון מתחיל';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'ערוך את הגדרות mpv';

  @override
  String get playerMpvConfDesc =>
      'אפשרות אחת בכל שורה, כמו --hwdec=auto ב-mpv.conf רגיל. פרופילים ב-[סוגריים] מתעלמים מהם.';

  @override
  String get playerMpvConfSaved => 'mpv.conf נשמר';

  @override
  String get playerUseScripts => 'השתמש בסקריפטים של mpv';

  @override
  String get playerUseScriptsDesc =>
      'טען את התוספים מתיקיית הסקריפטים. צריך בילד של libmpv עם תמיכה ב-Lua או JavaScript';

  @override
  String get playerScripts => 'סקריפטים של mpv';

  @override
  String get playerScriptsManage => 'הוסף, הסר והחלף תוספים';

  @override
  String get playerScriptsAdd => 'הוסף סקריפט';

  @override
  String get playerScriptsDesc =>
      'תוספי Lua, JavaScript ותוספים נייטיב שמונחים כאן נטענים כשהניגון מתחיל.';

  @override
  String get playerScriptsNone => 'עדיין אין סקריפטים';

  @override
  String get playerScriptsBadFile => 'בחר קובץ .lua, .js או תוסף נייטיב';

  @override
  String get playerTuning => 'כוונון וידאו מתקדם';

  @override
  String get playerTuningDesc =>
      'דרוס סנכרון, קאשינג, סקיילינג וטון מאפינג. ערכים שגויים עלולים לפגוע בניגון';

  @override
  String get playerVideoSync => 'סנכרון וידאו';

  @override
  String get playerInterpolation => 'אינטרפולציית פריימים';

  @override
  String get playerInterpolationDesc =>
      'תנועה חלקה, דורש סנכרון display-resample';

  @override
  String get playerPitch => 'תיקון גובה צליל';

  @override
  String get playerPitchDesc => 'שמור על קולות טבעיים במהירויות אחרות';

  @override
  String get playerCacheSeconds => 'קאש (שניות)';

  @override
  String get playerReadahead => 'קריאה קדימה (שניות)';

  @override
  String get playerThreads => 'תהליכוני דקודר';

  @override
  String get playerDeband => 'דיבנד';

  @override
  String get playerDebandDesc => 'הפחת פסי צבע במעברים';

  @override
  String get playerDebandIterations => 'חזרות דיבנד';

  @override
  String get playerDebandThreshold => 'סף דיבנד';

  @override
  String get playerCorrectDownscaling => 'הקטנה נכונה';

  @override
  String get playerSigmoid => 'הגדלה סיגמואידית';

  @override
  String get playerScale => 'מגדיל';

  @override
  String get playerCscale => 'מגדיל כרומה';

  @override
  String get playerDscale => 'מקטין';

  @override
  String get playerToneMapping => 'טון מאפינג';

  @override
  String get playerTargetPeak => 'שיא יעד';

  @override
  String get playerOpenFiles => 'פתח קבצי וידאו';

  @override
  String get playerOpenFilesDesc => 'נגן קבצים מהמכשיר הזה';

  @override
  String get playerOpenFolder => 'פתח תיקייה';

  @override
  String get playerOpenFolderDesc => 'נגן כל וידאו בתיקייה כרשימת השמעה';

  @override
  String get playerNetworkStream => 'סטרים מהרשת';

  @override
  String get playerNetworkStreamDesc => 'פתח קישור ישיר לוידאו או HLS';

  @override
  String get playerStreamUrl => 'כתובת הסטרים';

  @override
  String get playerStreamReferer => 'Referer (אופציונלי)';

  @override
  String get playerTorrent => 'טורנט';

  @override
  String get playerTorrentDesc => 'הזרם קישור מגנט או קובץ .torrent';

  @override
  String get playerMagnetLink => 'קישור מגנט או כתובת טורנט';

  @override
  String get playerPickTorrent => 'בחר קובץ .torrent';

  @override
  String get playerTorrentMissing =>
      'התקן קודם את תוספת הטורנט מ\"הגדרות > תוספות\"';

  @override
  String get playerNoVideos => 'לא נמצאו סרטונים לניגון';

  @override
  String get playerReset => 'אפס הגדרות נגן';

  @override
  String get playerResetDesc => 'החזר כל אפשרות בנגן לברירת המחדל';

  @override
  String get playerResetConfirm => 'לאפס את כל הגדרות הנגן?';

  @override
  String get playerResetDone => 'הגדרות הנגן אופסו';

  @override
  String get playerQuality => 'איכות';

  @override
  String get streamGroupSub => 'משנה';

  @override
  String get streamGroupHardSub => 'סאב קשה';

  @override
  String get streamGroupSoftSub => 'סאב רך';

  @override
  String get streamGroupDub => 'דוב';

  @override
  String get streamGroupRaw => 'גלם';

  @override
  String get streamGroupOther => 'אחר';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count זרמים',
      one: '1 זרם',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'סטרימים';

  @override
  String get playerStreamFailedNext => 'הזרם הזה לא יופעל, מנסה את הבא';

  @override
  String get playerAutoSelect => 'בחר סטרים אוטומטית';

  @override
  String get playerAutoSelectDesc =>
      'בחר את הסטרים הדומה ביותר לבחירה האחרונה שלך בכותר הזה';

  @override
  String get playerLoadingStreams => 'מחפש סטרימים…';

  @override
  String get playerNoStreams => 'לפרק הזה אין סטרימים';

  @override
  String get playerNoStreamsTitle => 'לא נמצאו סטרימים';

  @override
  String get playerFailed => 'הניגון נכשל';

  @override
  String get playerTorrentNeeded => 'הסטרים הזה הוא טורנט';

  @override
  String get playerTorrentNeededDesc =>
      'התקן את תוספת הטורנט כדי לנגן קישורי מגנט וקבצי .torrent';

  @override
  String get playerOpenAddons => 'פתח תוספות';

  @override
  String get playerTryAnotherStream => 'נסה סטרים אחר';

  @override
  String get playerEpisodes => 'פרקים';

  @override
  String get playerLock => 'נעל בקרים';

  @override
  String get playerFullscreen => 'מסך מלא';

  @override
  String get readerChapters => 'צ\'פטרים';

  @override
  String get readerSettingsTitle => 'הגדרות קורא';

  @override
  String get readerPreviousChapter => 'הצ\'פטר הקודם';

  @override
  String get readerNextChapter => 'הצ\'פטר הבא';

  @override
  String get readerFirstChapter => 'זה הצ\'פטר הראשון';

  @override
  String get readerLastChapter => 'אתה מעודכן בהכול';

  @override
  String get readerFailed => 'אי אפשר לפתוח את הצ\'פטר הזה';

  @override
  String get readerOpenBook => 'פתח ספר';

  @override
  String get readerOpenBookDesc =>
      'קרא epub (קורא רומן) או PDF (קורא מנגה) מהקבצים שלך';

  @override
  String get readerNoText => 'בצ\'פטר הזה אין טקסט';

  @override
  String get readerPerTitle => 'רק לכותר הזה';

  @override
  String get readerPerTitleDesc => 'שמור את הגדרות הקורא האלה לכותר הזה בלבד';

  @override
  String get readerSectionReading => 'קריאה';

  @override
  String get readerSectionControls => 'בקרים';

  @override
  String get readerSectionDisplay => 'תצוגה';

  @override
  String get readerSectionNovel => 'נובל';

  @override
  String get readerMode => 'מצב קריאה';

  @override
  String get readerModeAuto => 'אוטומטי (לפי סוג סדרה)';

  @override
  String get readerModeRtl => 'מימין לשמאל';

  @override
  String get readerModeLtr => 'משמאל לימין';

  @override
  String get readerModeVertical => 'עמודים אנכיים';

  @override
  String get readerModeWebtoon => 'וובטון';

  @override
  String get readerModeContinuous => 'גלילה רציפה';

  @override
  String get readerScale => 'קנה מידה לתמונה';

  @override
  String get readerScaleFit => 'התאם למסך';

  @override
  String get readerScaleWidth => 'התאם לרוחב';

  @override
  String get readerScaleHeight => 'התאם לגובה';

  @override
  String get readerScaleOriginal => 'גודל מקורי';

  @override
  String get readerScaleSmart => 'התאמה חכמה';

  @override
  String get readerDoublePage => 'עמודים כפולים';

  @override
  String get readerDoublePageDesc => 'הצג שני עמודים זה לצד זה במצב לרוחב';

  @override
  String get readerDoubleTapZoom => 'לחיצה כפולה לזום';

  @override
  String get readerDoubleTapZoomDesc => 'הגדל והקטן עמוד בלחיצה כפולה';

  @override
  String get readerAnimate => 'אנימציית עמודים';

  @override
  String get readerAnimateDesc => 'הנפש מעברי עמודים';

  @override
  String get readerSidePadding => 'ריפוד צדדי';

  @override
  String get readerSidePaddingDesc => 'רווח לצד העמודים באחוזים';

  @override
  String get readerPageGap => 'רווח בין עמודים';

  @override
  String get readerPageGapDesc => 'רווח בין העמודים';

  @override
  String get readerAutoNext => 'המשך לצ\'פטר הבא';

  @override
  String get readerAutoNextDesc =>
      'טען את הצ\'פטר הבא בזמן שאתה קורא את סוף הנוכחי';

  @override
  String get readerPreload => 'טעינה מראש של עמודים';

  @override
  String get readerPreloadDesc => 'כמה עמודים להוריד מראש';

  @override
  String get readerTapZones => 'אזורי הקשה';

  @override
  String get readerTapDefault => 'ברירת מחדל';

  @override
  String get readerTapLShaped => 'בצורת L';

  @override
  String get readerTapKindle => 'כמו Kindle';

  @override
  String get readerTapEdge => 'קצוות בלבד';

  @override
  String get readerTapOff => 'מושבת';

  @override
  String get readerInvertTaps => 'הפוך אזורי הקשה';

  @override
  String get readerInvertTapsDesc => 'החלף בין האזור הקודם לאזור הבא';

  @override
  String get readerBackground => 'רקע';

  @override
  String get readerBackgroundBlack => 'שחור';

  @override
  String get readerBackgroundGray => 'אפור';

  @override
  String get readerBackgroundWhite => 'לבן';

  @override
  String get readerBackgroundTheme => 'ערכת נושא של האפליקציה';

  @override
  String get readerFilter => 'מסנן צבע';

  @override
  String get readerFilterNone => 'ללא';

  @override
  String get readerFilterGrayscale => 'גווני אפור';

  @override
  String get readerFilterInvert => 'היפוך';

  @override
  String get readerFilterSepia => 'ספיה';

  @override
  String get readerFilterQuality => 'איכות סינון תמונה';

  @override
  String get readerFilterQualityNone => 'אין (השכן הקרוב)';

  @override
  String get readerFilterQualityLow => 'נמוך (ביליניארי)';

  @override
  String get readerFilterQualityMedium => 'בינוני (טרילינארי)';

  @override
  String get readerFilterQualityHigh => 'גבוה (ביקובי)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (חלודה באיכות גבוהה)';

  @override
  String get readerDim => 'עמעום';

  @override
  String get readerDimDesc => 'החשך את העמודים';

  @override
  String get readerPageNumber => 'מספר עמוד';

  @override
  String get readerPageNumberDesc => 'הצג את מספר העמוד בזמן קריאה';

  @override
  String get readerFullscreen => 'מסך מלא';

  @override
  String get readerFullscreenDesc => 'הסתר את סרגלי המערכת';

  @override
  String get readerCropBorders => 'חיתוך שוליים';

  @override
  String get readerCropBordersDesc =>
      'חתוך שוליים ריקים לבנים או שחורים מהעמודים';

  @override
  String get readerLongPressSave => 'החזק דף כדי לשמור אותו';

  @override
  String get readerLongPressSaveDesc =>
      'לחץ לחיצה ארוכה על עמוד כדי לפתוח אפשרויות שמירה, שיתוף והעתקה';

  @override
  String get readerVolumeKeys => 'מקשי עוצמת קול מדפדפים';

  @override
  String get readerVolumeKeysDesc =>
      'הנמכת עוצמה מתקדמת קדימה, הגברה חוזרת אחורה';

  @override
  String get readerBookmarks => 'סימניות';

  @override
  String get readerBookmarkAdd => 'הוסף סימנייה';

  @override
  String get readerBookmarkRemove => 'הסר סימנייה';

  @override
  String get readerBookmarksEmpty => 'עדיין אין סימניות';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'עמוד $page מתוך $total';
  }

  @override
  String get readerAutoScroll => 'גלילה אוטומטית';

  @override
  String get readerAutoScrollStop => 'עצור גלילה אוטומטית';

  @override
  String get readerAutoScrollSpeed => 'מהירות גלילה אוטומטית';

  @override
  String get readerAutoScrollSpeedDesc =>
      'באיזו מהירות עמודים גוללים או מתהפכים לבד';

  @override
  String get readerKeepOn => 'השאר את המסך דלוק';

  @override
  String get readerKeepOnDesc => 'מנע מהמסך להיכבות בזמן קריאה';

  @override
  String get readerOrientation => 'כיוון';

  @override
  String get readerOrientationFree => 'חופשי';

  @override
  String get readerOrientationPortrait => 'לאורך';

  @override
  String get readerOrientationLandscape => 'לרוחב';

  @override
  String get readerSaveProgress => 'שמור התקדמות';

  @override
  String get readerSaveProgressDesc => 'זכור את העמוד שלך וסמן צ\'פטרים כנקראו';

  @override
  String get readerReset => 'אפס הגדרות קורא';

  @override
  String get readerResetDesc => 'חזרה לברירות המחדל';

  @override
  String get readerResetConfirm => 'לאפס כל הגדרת קורא לברירת המחדל שלה?';

  @override
  String get novelSize => 'גודל טקסט';

  @override
  String get novelFont => 'גופן';

  @override
  String get novelLineHeight => 'גובה שורה';

  @override
  String get novelParagraph => 'ריווח פסקאות';

  @override
  String get novelMargin => 'שוליים';

  @override
  String get novelTheme => 'ערכת נושא של הקורא';

  @override
  String get novelThemeApp => 'ערכת נושא של האפליקציה';

  @override
  String get novelThemeLight => 'בהיר';

  @override
  String get novelThemeSepia => 'ספיה';

  @override
  String get novelThemeDark => 'כהה';

  @override
  String get novelThemeBlack => 'שחור';

  @override
  String get novelJustify => 'יישור טקסט';

  @override
  String get novelJustifyDesc => 'יישר טקסט לשני הקצוות';

  @override
  String get trackProgressTitle => 'לשמור התקדמות?';

  @override
  String trackProgressAnime(String name) {
    return 'לעקוב אחרי $name ברשימה שלך בזמן שאתה צופה? בחר \"במכשיר הזה בלבד\" כדי לשמור מקומית, או \"לא\" כדי לא לשמור כלום.';
  }

  @override
  String trackProgressManga(String name) {
    return 'לעקוב אחרי $name ברשימה שלך כשאתה מסיים צ\'פטר? בחר \"במכשיר הזה בלבד\" כדי לשמור מקומית, או \"לא\" כדי לא לשמור כלום.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'האם לשמור את ההתקדמות שלך ב-$name ברשימה שלך במכשיר הזה בזמן שאתה צופה?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'האם לשמור את ההתקדמות שלך ב-$name ברשימה שלך במכשיר הזה כשתסיים פרק?';
  }

  @override
  String get downloadClearQueue => 'נקה תור';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'לבטל את כל ההורדות של $count בתור? מה שכבר הורד נמחק.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count נבחר';
  }

  @override
  String get downloadSelectAll => 'בחר הכל';

  @override
  String get downloadDeleteSelected => 'מחק את הבחירה';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'למחוק הורדות של $count? הקבצים שלהם מוסרים מהמכשיר.';
  }

  @override
  String get castTitle => 'העבר למכשיר';

  @override
  String get castSearching => 'מחפש מכשירים ברשת שלך...';

  @override
  String get castNoDevices =>
      'לא נמצאו מכשירים. ודא שהטלוויזיה או ה-Chromecast מחוברים לאותו Wi-Fi ולאחר מכן חפש שוב.';

  @override
  String get castRefresh => 'חפש שוב';

  @override
  String get castFailed => 'לא ניתן היה להתחיל בהעברה';

  @override
  String get castStop => 'תפסיק ללהק';

  @override
  String castNowCasting(String name) {
    return 'העברה ל-$name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / טלוויזיה חכמה';

  @override
  String get castProtocolRoku => 'רוקו';

  @override
  String get castRokuNote => 'Roku לא יכול לדווח או לשנות את המיקום';

  @override
  String get castControls => 'בקרות';

  @override
  String get castVolume => 'עוצמת הקול של הטלוויזיה';

  @override
  String castSkipPart(String name) {
    return 'דלג על $name';
  }

  @override
  String get trackProgressRememberSeries => 'זכור עבור הסדרה הזו';

  @override
  String get trackProgressYes => 'שמור';

  @override
  String get trackProgressReset =>
      'בקשת שמירת ההתקדמות אופסה לסוג הזה, היא תישאל שוב';

  @override
  String get trackProgressNo => 'לא';

  @override
  String get trackProgressOff => 'כבוי';

  @override
  String get trackProgressLocal => 'במכשיר הזה בלבד';

  @override
  String get trackProgressSettingAnime => 'עקוב אחרי התקדמות באנימה';

  @override
  String get trackProgressSettingManga => 'עקוב אחרי התקדמות במנגה ובנובלות';

  @override
  String get trackProgressSettingDesc =>
      'מה לעשות כשאתה פותח פרק או מסיים צ\'פטר';

  @override
  String get trackProgressAsk => 'שאל';

  @override
  String get trackProgressAlways => 'תמיד';

  @override
  String get dantotsuImport => 'ייבוא מ-Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'קרא גיבוי הגדרות של Dantotsu (.ani, או .sani מוצפן)';

  @override
  String get dantotsuPick => 'בחר גיבוי של Dantotsu';

  @override
  String get dantotsuNothing => 'אי אפשר לייבא כלום מהקובץ הזה';

  @override
  String get dantotsuApply => 'ייבא את הנבחרים';

  @override
  String dantotsuDone(int done, int total) {
    return 'יובאו $done מתוך $total';
  }

  @override
  String get dantotsuGroupAccounts => 'חשבונות';

  @override
  String get dantotsuGroupAppearance => 'מראה';

  @override
  String get dantotsuGroupExtensions => 'תוספים';

  @override
  String get dantotsuGroupApp => 'אפליקציה';

  @override
  String get dantotsuGroupPlayer => 'נגן';

  @override
  String get dantotsuAnilist => 'התחברות ל-AniList';

  @override
  String get dantotsuMal => 'התחברות ל-MyAnimeList';

  @override
  String get dantotsuDiscord => 'טוקן Discord Rich Presence';

  @override
  String get dantotsuTheme => 'ערכת נושא';

  @override
  String get themePickerTitle => 'נושא';

  @override
  String get dantotsuReposAnime => 'מאגרי תוספי אנימה';

  @override
  String get dantotsuReposManga => 'מאגרי תוספי מנגה';

  @override
  String get dantotsuReposNovel => 'מאגרי תוספי נובלות';

  @override
  String get dantotsuUpdates => 'בדיקת עדכונים';

  @override
  String get dantotsuComments => 'תגובות';

  @override
  String get dantotsuActivity => 'בדיקת התראות AniList';

  @override
  String get dantotsuDns => 'ספק DNS';

  @override
  String get dantotsuPlayer => 'מהירות הנגן וצבעי כתוביות';

  @override
  String get dantotsuWarning =>
      'הקובץ הזה מכיל טוקנים של התחברות. שמור עליו פרטי.';

  @override
  String get novelIndent => 'הזחת פסקאות';

  @override
  String get novelIndentDesc => 'התחל כל פסקה בהזחה בשורה הראשונה';

  @override
  String get novelLetterSpacing => 'ריווח אותיות';

  @override
  String get novelSectionTranslate => 'תרגום';

  @override
  String get sectionExperimental => 'ניסיוני';

  @override
  String get kitsuGraphqlDetail => 'דפי פרטים מהירים יותר (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'טען כותר עם הדמויות, הצוות והערך שלך בבקשה אחת';

  @override
  String get togetherTitle => 'צפייה משותפת';

  @override
  String get togetherIntro =>
      'הדבק את קישור החדר ששלח לך החבר. אתה מצטרף מיד והנגן נפתח כשהם מתחילים לצפות.';

  @override
  String togetherLinkConfirm(String room) {
    return 'להצטרף לחדר $room? המארח בוחר מה משחק והשחקן נפתח מעצמו כשהם מתחילים לצפות.';
  }

  @override
  String get togetherJoin => 'הצטרף';

  @override
  String get togetherName => 'השם שלך';

  @override
  String get togetherConnecting => 'מתחבר…';

  @override
  String get togetherLeave => 'עזוב חדר';

  @override
  String get togetherYou => 'אתה';

  @override
  String get togetherNoChat => 'עדיין אין הודעות';

  @override
  String get togetherChatHint => 'הודעה';

  @override
  String get togetherCopyInvite => 'העתק הזמנה';

  @override
  String get togetherShareInvite => 'שתף הזמנה';

  @override
  String togetherShareText(String link) {
    return 'צפו איתי בדרטוטסו: $link';
  }

  @override
  String get togetherInviteCopied => 'השרת והחדר הועתקו';

  @override
  String get togetherConnectionLost => 'החיבור אבד';

  @override
  String togetherConnectedTo(String room) {
    return 'מחובר ל-$room';
  }

  @override
  String togetherFailed(String error) {
    return 'אי אפשר להתחבר: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name הצטרף';
  }

  @override
  String togetherLeft(String name) {
    return '$name עזב';
  }

  @override
  String togetherPaused(String name) {
    return '$name עצר';
  }

  @override
  String togetherResumed(String name) {
    return '$name המשיך';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name קפץ ל-$time';
  }

  @override
  String get togetherFollowFailed =>
      'אי אפשר לפתוח את הפרק של המארח. פתח אותו בעצמך.';

  @override
  String get togetherJoinRole => 'הצטרף לחדר';

  @override
  String get togetherOpenHost => 'פתח את הפרק של המארח';

  @override
  String get togetherShowChat => 'הצג צ\'אט חי';

  @override
  String get togetherWaitingHost => 'ממתין שהמארח יתחיל פרק';

  @override
  String get togetherRoomLink => 'קישור לחדר';

  @override
  String get togetherBadLink => 'זה לא קישור לחדר';

  @override
  String get togetherHostClosed => 'המארח סגר את החדר';

  @override
  String get togetherNowPlaying => 'מתנגן עכשיו';

  @override
  String togetherWatchingCount(int count) {
    return '$count צופים';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user רוצה להשהות';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user רוצה להמשיך';
  }

  @override
  String get togetherChip => 'ביחד';

  @override
  String get togetherSettingsDesc => 'הצטרף לחדר של חבר עם קישור';

  @override
  String get novelBilingual => 'הצג מקור ותרגום';

  @override
  String get novelBilingualDesc =>
      'כל פסקה מציגה את הטקסט המקורי עם התרגום שלו מתחתיו';

  @override
  String get novelTranslateTo => 'תרגם ל';

  @override
  String get novelTranslateOff => 'כבוי';

  @override
  String get novelSectionSpeech => 'טקסט לדיבור';

  @override
  String get novelSpeechRate => 'מהירות דיבור';

  @override
  String get novelSpeechPitch => 'גובה צליל הדיבור';

  @override
  String get novelSpeak => 'הקרא בקול';

  @override
  String get novelSpeakStop => 'הפסק הקראה';

  @override
  String get novelTranslate => 'תרגם צ\'פטר';

  @override
  String get novelTranslateShowOriginal => 'הצג מקור';

  @override
  String novelTranslateFailed(String error) {
    return 'התרגום נכשל: $error';
  }

  @override
  String get novelSpeechUnavailable => 'טקסט לדיבור לא זמין במכשיר הזה';

  @override
  String get novelSpeechVoice => 'קול';

  @override
  String get novelSpeechVoiceDefault => 'ברירת מחדל של המערכת';

  @override
  String get novelSpeakPrevious => 'שורה קודמת';

  @override
  String get novelSpeakNext => 'שורה הבאה';

  @override
  String get novelTapPaging => 'הקש בקצוות כדי להפוך עמוד';

  @override
  String get novelTapPagingDesc =>
      'הקש בצד שמאל או ימין כדי לגלול עמוד, האמצע מציג את הבקרים';

  @override
  String get novelPaged => 'הפיכת דפים';

  @override
  String get novelPagedDesc =>
      'חלקו את הפרק לדפים והחלקו או הקש כדי להפוך אותם במקום לגלול';

  @override
  String novelPageOf(int current, int total) {
    return 'עמוד $current מתוך $total';
  }

  @override
  String get novelPaginating => 'פריסת דפים';

  @override
  String get novelTools => 'תוכן, חיפוש והדגשות';

  @override
  String get novelContents => 'תוכן';

  @override
  String get novelContentsEmpty => 'לפרק זה אין כותרות';

  @override
  String get novelSearch => 'חפש';

  @override
  String get novelSearchHint => 'חפש בפרק זה';

  @override
  String get novelSearchNone => 'אין התאמות';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count התאמות',
      one: 'התאמה 1',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'הבהרה';

  @override
  String get novelHighlightsEmpty => 'בחר טקסט והקש על הדגש כדי לשמור אותו כאן';

  @override
  String get novelHighlight => 'הדגש';

  @override
  String get novelHighlightNote => 'הערה';

  @override
  String get novelHighlightNoteHint => 'הוסף הערה';

  @override
  String get novelHighlightRemove => 'הסר סימון';

  @override
  String get novelHighlightFailed => 'לא ניתן להתאים את הבחירה הזו לטקסט';

  @override
  String novelMinutesLeft(int count) {
    return 'נשארו $count דק\'';
  }

  @override
  String get novelBold => 'טקסט מודגש';

  @override
  String get novelBoldDesc => 'השתמש בעובי גדול יותר';

  @override
  String readerFinishedChapter(String chapter) {
    return 'סיימת את $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'הבא: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'הקודם: $chapter';
  }

  @override
  String get readerNoPages => 'בצ\'פטר הזה אין עמודים';

  @override
  String get readerLoadingPages => 'טוען עמודים…';

  @override
  String get readerSlowPage => 'העמוד הזה עדיין נטען…';

  @override
  String get readerPageFailed => 'אי אפשר לטעון את העמוד הזה';

  @override
  String get playerShowComments => 'הצג תגובות';

  @override
  String get playerHideComments => 'הסתר תגובות';

  @override
  String get playerSubtitles => 'כתוביות';

  @override
  String get playerSubtitlesOff => 'כתוביות כבויות';

  @override
  String get playerAudio => 'אודיו';

  @override
  String get playerAddSubtitle => 'הוסף קובץ כתוביות';

  @override
  String get playerAddAudio => 'הוסף קובץ אודיו';

  @override
  String get playerChapters => 'צ\'פטרים';

  @override
  String get playerSkipSubmit => 'שלח זמני דילוג';

  @override
  String get playerSkipSubmitDesc =>
      'סמן היכן מתחיל ונגמר הפתיחה, הסיום או הסיכום בפרק זה ושתף אותו עם AniSkip, כך שכולם יקבלו את כפתור הדילוג.';

  @override
  String get playerSkipStart => 'התחל';

  @override
  String get playerSkipEnd => 'סוף';

  @override
  String get playerSkipUseNow => 'השתמש במיקום הנוכחי';

  @override
  String get playerSkipSend => 'שלח ל-AniSkip';

  @override
  String get playerSkipSent => 'דילוג על זמני שנשלחו ל-AniSkip, תודה';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip סירבה לזמני הדילוג: $error';
  }

  @override
  String get playerUnsupported =>
      'נגן הווידאו לא יכול לפעול במכשיר זה (גרסת האנדרואיד שלו ישנה מדי עבור ספריית הנגן המצורפת). הקש כדי להעתיק את הפרטים.';

  @override
  String get playerSkipNoMal =>
      'לכותרת הזו אין מזהה MyAnimeList, AniSkip לא יכולה לעמוד בזה';

  @override
  String get playerNoChapters => 'אין צ\'פטרים';

  @override
  String get playerTimestamp => 'חותמת זמן';

  @override
  String get playerAutoPlayDelay => 'ספירה לאחור לפרק הבא';

  @override
  String get playerWatchedAt => 'ספור כנצפה ב';

  @override
  String playerNextIn(int seconds) {
    return 'הפרק הבא בעוד $seconds שנ\'';
  }

  @override
  String get playerPlayNow => 'נגן עכשיו';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: ידלג אוטומטית בכותר הזה';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: לא ידלג אוטומטית בכותר הזה';
  }

  @override
  String get playerAudioLanguage => 'שפת אודיו מועדפת';

  @override
  String get playerLanguageOrderHint =>
      'הפרד שפות בפסיקים. תיבחר הראשונה שנמצאת.';

  @override
  String get playerPip => 'תמונה בתוך תמונה';

  @override
  String get playerAutoPip => 'תמונה בתוך תמונה ביציאה';

  @override
  String get playerAutoPipDesc => 'המשך לנגן בחלון קטן כשאתה יוצא מהאפליקציה';

  @override
  String get playerPipPlay => 'שחק';

  @override
  String get playerPipPause => 'השהה';

  @override
  String get playerPipBack => 'החזר לאחור';

  @override
  String get playerPipForward => 'קדימה';

  @override
  String get playerPipRestore => 'חזרה לנגן';

  @override
  String get playerPipActive => 'משחק בחלון קטן';

  @override
  String get listDateAdded => 'נוסף לרשימה';

  @override
  String get listDateLastWatched => 'נצפה לאחרונה';

  @override
  String playerAutoPlaying(String title) {
    return 'מנגן את $title הבא…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'אי אפשר להתקין את השיידרים: $error';
  }

  @override
  String playerChapter(int number) {
    return 'צ\'פטר $number';
  }

  @override
  String get playerPerTitle => 'רק לכותר הזה';

  @override
  String get playerPerTitleDesc =>
      'שמור את האפשרויות האלה לכותר הזה והשאר את ברירות המחדל שלך כמו שהן';

  @override
  String get playerSwapGestures => 'להחליף צדדי החלקה';

  @override
  String get playerSwapGesturesDesc => 'בהירות בשמאל וווליום בימין';

  @override
  String get playerOpenBig => 'לפתוח בתצוגה גדולה';

  @override
  String get playerOpenBigDesc =>
      'לפתוח את הנגן במסך מלא במקום עם רשימת הפרקים';

  @override
  String get playerPauseOnBlur => 'להשהות כשלא בפוקוס';

  @override
  String get playerPauseOnBlurDesc =>
      'משהה כשהאפליקציה מכוסה, למשל על ידי פאנל ההתראות, וממשיך כשחוזרים';

  @override
  String get playerAudioOutput => 'פלט אודיו';

  @override
  String get fontAppDefault => 'גופן האפליקציה';

  @override
  String get fontImport => 'ייבא גופן';

  @override
  String get fontSample => 'השועל החום המהיר קופץ מעל הכלב העצלן';

  @override
  String get playerSubtitleDelay => 'השהיית כתוביות';

  @override
  String get playerAudioDelay => 'השהיית אודיו';

  @override
  String get playerDelayReset => 'איפוס';

  @override
  String get playerOnlineSubtitles => 'כתוביות אונליין';

  @override
  String get playerOnlineSearchHint => 'כותר ופרק';

  @override
  String get playerOnlineNone => 'לא נמצאו כתוביות';

  @override
  String playerOnlineFailed(String error) {
    return 'חיפוש הכתוביות נכשל: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'אי אפשר להוריד את הכתובית הזו: $error';
  }

  @override
  String get playerOnlineMatch => 'מתאים לקובץ הזה';

  @override
  String get playerOnlineEpisode => 'התאמת פרק';

  @override
  String playerOnlineDownloads(int count) {
    return '$count הורדות';
  }

  @override
  String get playerSeekPreview => 'תצוגה מקדימה בחיפוש';

  @override
  String get playerSeekPreviewDesc =>
      'הצג תצוגה מקדימה קטנה של פריים מעל פס החיפוש בזמן גלילה. פותח דקודר שני ברזולוציה נמוכה, ולכן משתמש בעוד נתונים בסטרימים.';

  @override
  String get playerSettingsChip => 'הגדרות';

  @override
  String get playerAudioDevice => 'התקן אודיו';

  @override
  String get settingsDownloads => 'הורדות';

  @override
  String get settingsDownloadsDesc => 'פרקים אופליין, תור ומצב אופליין';

  @override
  String get downloadsTitle => 'הורדות';

  @override
  String get widgetContinue => 'המשך';

  @override
  String get widgetReleases => 'משתחרר בקרוב';

  @override
  String get widgetMore => 'גם בתהליך';

  @override
  String get widgetNothing => 'אין מה להמשיך עדיין';

  @override
  String get downloadStorageTitle => 'אחסון';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count הורדות',
      one: 'הורדה 1',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size כבר צפה או קרא';
  }

  @override
  String get downloadFreeUp => 'פנה מקום';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count צפה בהורדות',
      one: '1 צפייה הורדה',
    );
    return 'לִמְחוֹק $_temp0 ו$size בחינם?';
  }

  @override
  String downloadFreed(String size) {
    return 'משוחרר $size';
  }

  @override
  String get downloadDeleteWatched => 'מחק צפייה';

  @override
  String get downloadDeleteAll => 'מחק הכל';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'למחוק כל הורדה של $title?';
  }

  @override
  String get downloadNothingWatched => 'שום דבר שסיימת לא מוריד';

  @override
  String get downloadStorageEmpty => 'אין הורדות שמשתמשות בחלל';

  @override
  String get downloadsOpenDesc => 'ראה את התור ואת כל מה ששמור במכשיר הזה';

  @override
  String get downloadTitle => 'הורד';

  @override
  String get downloadMetaOnly => 'מטא נתונים בלבד';

  @override
  String get downloadMetaFailed => 'לא ניתן ליצור את תיקיית הכותרת';

  @override
  String downloadMetaSaved(String path) {
    return 'נשמר. שים את הקבצים שלך ב-$path';
  }

  @override
  String get downloadAlready => 'כבר הורד או נמצא בתור';

  @override
  String get downloadPickStream => 'איזה סטרים להוריד?';

  @override
  String get downloadPickSubtitle => 'איזו כתובית להוריד?';

  @override
  String get downloadPickAudio => 'איזה ערוץ אודיו להוריד?';

  @override
  String get downloadNoAudio => 'בלי אודיו נוסף';

  @override
  String get downloadAudio => 'אודיו';

  @override
  String get downloadNoSubtitle => 'בלי כתוביות';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'הסטרים הזה הוא פלייליסט HLS. כדי להוריד אותו צריך את תוספת FFmpeg.';

  @override
  String get downloadSourceMissing => 'המקור של הפרק הזה לא מותקן';

  @override
  String get downloadDashDrm => 'זרם זה מוגן ב-DRM';

  @override
  String get downloadDashNoVideo => 'למניפסט DASH אין סרטון';

  @override
  String get downloadWaitingConnection => 'ממתין לחיבור';

  @override
  String get downloadSubtitles => 'כתוביות';

  @override
  String get downloadDownloaded => 'הורד';

  @override
  String get downloadOffline => 'אופליין';

  @override
  String get downloadDelete => 'מחק הורדה';

  @override
  String get downloadCancel => 'ביטול';

  @override
  String get downloadPause => 'השהה';

  @override
  String get downloadPaused => 'מושהה';

  @override
  String get downloadResume => 'המשך';

  @override
  String get downloadPauseAll => 'השהה הכול';

  @override
  String get downloadResumeAll => 'המשך הכול';

  @override
  String get downloadQueuedState => 'ממתין בתור';

  @override
  String get downloadResolving => 'מביא את הסטרים…';

  @override
  String get downloadUsedFallback => 'אין סטרים מתאים, נעשה שימוש בראשון';

  @override
  String get downloadTabQueue => 'תור';

  @override
  String get downloadTabDone => 'הסתיים';

  @override
  String get downloadTabFailed => 'נכשל';

  @override
  String get downloadEmptyQueue => 'שום דבר לא יורד';

  @override
  String get downloadEmptyDone => 'עדיין לא הורד כלום';

  @override
  String get downloadEmptyFailed => 'אין הורדות שנכשלו';

  @override
  String get downloadNext => 'הפרק הבא';

  @override
  String downloadNextN(int count) {
    return '$count הפרקים הבאים';
  }

  @override
  String downloadUnwatched(int count) {
    return 'כל מה שלא נצפה ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'הטווח הזה ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'כל הפרקים ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פרקים בתור',
      one: 'פרק אחד בתור',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name הורד';
  }

  @override
  String downloadFailedBody(String name) {
    return 'ההורדה של $name נכשלה';
  }

  @override
  String downloadStorage(String size) {
    return '$size בשימוש של הורדות';
  }

  @override
  String get downloadQueueHeader => 'תור';

  @override
  String get downloadParallel => 'הורדות במקביל';

  @override
  String get downloadParallelDesc => 'הורד אחת בכל פעם או כמה ביחד';

  @override
  String get downloadOneByOne => 'אחת אחת';

  @override
  String get downloadNotifications => 'התראות הורדה';

  @override
  String get downloadNotificationsDesc =>
      'התקדמות חיה היכן שהמערכת תומכת, אחרת הודעה כשהורדה מסתיימת';

  @override
  String get downloadNotifyLive => 'חי';

  @override
  String get downloadNotifyDone => 'בסיום';

  @override
  String get downloadNotifyOff => 'כבוי';

  @override
  String get downloadInfoFile => 'כתוב קובץ מידע ליד כל הורדה';

  @override
  String get downloadInfoFileDesc =>
      'שומר את הסטרים, האיכות, הכתוביות וזמני הדילוג בקובץ .json קטן';

  @override
  String get offlineHeader => 'אופליין';

  @override
  String get offlineModeDesc =>
      '\"אוטומטי\" עובר לאופליין רק כשהאפליקציה עולה בלי חיבור. \"תמיד\" נשאר אופליין עד שתשנה.';

  @override
  String get offlineModeOff => 'כבוי';

  @override
  String get offlineModeAlways => 'תמיד';

  @override
  String get offlineModeOn =>
      'מצב אופליין פעיל. שינויים נשמרים כאן ונשלחים כשתחזור לאונליין.';

  @override
  String get offlineSaved => 'נשמר במכשיר הזה, יסונכרן כשתהיה אונליין';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שינויים סונכרנו',
      one: 'שינוי אחד סונכרן',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count שינויים ממתינים לסנכרון',
      one: 'שינוי אחד ממתין לסנכרון',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'שינויים שממתינים לסנכרון';

  @override
  String get offlinePendingNone => 'שום דבר לא ממתין';

  @override
  String get offlineSyncNow => 'סנכרן עכשיו';

  @override
  String get offlineDiscard => 'זרוק';

  @override
  String get downloadNotOffline => 'הפרק הזה לא הורד, אז הוא לא זמין אופליין';

  @override
  String get offlineModeChip => 'אופליין';

  @override
  String get downloadNextChapter => 'הצ\'פטר הבא';

  @override
  String downloadNextChapters(int count) {
    return '$count הצ\'פטרים הבאים';
  }

  @override
  String downloadUnread(int count) {
    return 'כל מה שלא נקרא ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'כל הצ\'פטרים ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total עמודים';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count עמודים';
  }

  @override
  String get downloadFfmpegTitle => 'צריך את תוספת FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'הסטרים הזה הוא פלייליסט HLS. תוספת FFmpeg מחברת את החלקים שלו לקובץ mp4 אחד. בלעדיה החלקים נשמרים בתיקיית פרק ומתנגנים משם.';

  @override
  String get downloadFfmpegInstall => 'התקן';

  @override
  String get downloadFfmpegInstalling =>
      'מתקין את FFmpeg, זה יכול לקחת קצת זמן…';

  @override
  String get downloadFinishing => 'מחבר את החלקים לקובץ אחד…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total חלקים';
  }

  @override
  String get downloadTorrentNoFile => 'בטורנט אין קובץ וידאו להורדה';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'מוריד $count פריטים',
      one: 'מוריד פריט אחד',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'מחק הורדות שנצפו';

  @override
  String get downloadAutoDeleteDesc =>
      'מסיר הורדה כשההתקדמות שלך מגיעה לפרק או לצ\'פטר הזה';

  @override
  String get downloadConnections => 'חיבורים לכל הורדה';

  @override
  String get downloadConnectionsDesc =>
      'מפצל קובץ גדול לחלקים שמורדים בו-זמנית. חלק מהשרתים מגבילים את זה.';

  @override
  String get downloadPlayChoice => 'נגן מ';

  @override
  String get downloadPlayLocalDesc => 'הקובץ ששמור במכשיר הזה';

  @override
  String get downloadPlayStream => 'סטרים אונליין';

  @override
  String get downloadPlayStreamDesc => 'טען את הפרק מהמקור';

  @override
  String get offlineFeedTitle => 'הורד במכשיר הזה';

  @override
  String get offlineFeedEmpty => 'הורד משהו כשאתה אונליין והוא יופיע כאן';

  @override
  String get offlineEnabled => 'מצב אופליין פעיל';

  @override
  String get offlineDisabled => 'מצב אופליין כבוי';

  @override
  String get downloadReadChoice => 'קרא מ';

  @override
  String get downloadReadLocalDesc => 'העמודים ששמורים במכשיר הזה';

  @override
  String get downloadReadOnline => 'קרא אונליין';

  @override
  String get downloadReadOnlineDesc => 'טען את הצ\'פטר מהמקור';

  @override
  String downloadDeleteConfirm(String name) {
    return 'למחוק את $name מהמכשיר הזה?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'לבטל את ההורדה של $name? מה שכבר הורד יימחק.';
  }

  @override
  String get downloadFfmpegFolder => 'שמור כתיקייה';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לזרוק $count שינויים שלא נשלחו? אי אפשר לבטל את זה.',
      one: 'לזרוק את השינוי שלא נשלח? אי אפשר לבטל את זה.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'ממתין ל-Wi-Fi';

  @override
  String get downloadWaitingMetered => 'מושהה בחיבור מוגבל';

  @override
  String get downloadWifiOnly => 'Wi-Fi בלבד';

  @override
  String get downloadWifiOnlyDesc => 'הורדות ממתינות כשאתה בנתונים ניידים';

  @override
  String get downloadMetered => 'השהה בחיבורים מוגבלים';

  @override
  String get downloadMeteredDesc => 'ממתין גם ב-Wi-Fi שהמכשיר שלך מסמן כמוגבל';

  @override
  String get downloadSpeedLimit => 'הגבלת מהירות';

  @override
  String get downloadSpeedLimitDesc => 'מגביל את מהירות ההורדה הכוללת';

  @override
  String get downloadUnlimited => 'ללא הגבלה';

  @override
  String get downloadMoveToTop => 'העבר לראש';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds סידרים · $peers פירים';
  }

  @override
  String get downloadTorrentFile => 'איזה קובץ?';

  @override
  String get downloadTorrentAuto => 'התאם את הפרק אוטומטית';

  @override
  String get downloadTorrentLoading => 'קורא את הטורנט…';

  @override
  String get watchAutoSource => 'עבור למקור הבא אוטומטית';

  @override
  String get watchAutoSourceDesc =>
      'אם המקור לא מוצא את הכותר או נכשל בטעינה, נסה את המקור המותקן הבא';

  @override
  String get extensionTest => 'בדוק תוספים';

  @override
  String get extensionTestCopy => 'העתק את הכשלונות והלוגים שלהם';

  @override
  String get extensionTestQuery => 'מונח חיפוש';

  @override
  String get extensionTestRun => 'הרץ';

  @override
  String get extensionTestStop => 'עצור';

  @override
  String get extensionTestNone => 'אין תוספים מותקנים מהסוג הזה';

  @override
  String get extensionTestNotRun => 'עוד לא נבדק';

  @override
  String get extensionTestSearch => 'חיפוש';

  @override
  String get extensionTestDetail => 'פרטים';

  @override
  String get extensionTestUnits => 'פרקים / צ\'פטרים';

  @override
  String get extensionTestLinks => 'סטרימים / עמודים';

  @override
  String extensionTestFailedAt(String step) {
    return 'נכשל ב$step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done מתוך $total נבדקו · $passed עברו · $failed נכשלו';
  }

  @override
  String get extensionTestCopyLogs => 'העתק הכול עם הלוגים המלאים';

  @override
  String get onboardingFeaturesTitle => 'הכול במקום אחד';

  @override
  String get onboardingFeaturesBody =>
      'כל מה שאתה עוקב, צופה וקורא, בלי לקפוץ בין אפליקציות.';

  @override
  String get onboardingFeatureTrack => 'עקוב אחרי הכול';

  @override
  String get onboardingFeatureTrackDesc =>
      'רשימות, התקדמות וציונים ב-AniList, MyAnimeList, Simkl, Kitsu ו-MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'צפה וקרא';

  @override
  String get onboardingFeatureWatchDesc =>
      'התקן תוספים וצפה באנימה או קרא מנגה ונובלות ישר באפליקציה.';

  @override
  String get onboardingFeatureOffline => 'קח את זה אופליין';

  @override
  String get onboardingFeatureOfflineDesc =>
      'הורד פרקים וצ\'פטרים והמשך גם בלי חיבור.';

  @override
  String get onboardingFeatureSync => 'שמור על רשימות מסונכרנות';

  @override
  String get onboardingFeatureSyncDesc =>
      'שכפל את הרשימה שלך בין שירותים, או תן למי שמקדים לנצח.';

  @override
  String get onboardingServices => 'עובד עם';

  @override
  String sourceNotifyOn(String source) {
    return 'יגידו לך כאשר ל-$source יש משהו חדש';
  }

  @override
  String get sourceNotifyOff => 'שחרור התראות כבוי';

  @override
  String get sourceNotifyNeedsSource => 'תחילה בחר מקור עם התאמה';

  @override
  String sourceNotifyAllOut(int count) {
    return 'הכל ($count) כבר בחוץ, אין למה לחכות';
  }

  @override
  String get sourceNotifyTooltipOn => 'הפסק את הודעות השחרור';

  @override
  String get sourceNotifyTooltipOff => 'הודע לי על מהדורות חדשות';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'פרק $number יצא ב-$source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'פרקים $from–$to יצאו ב-$source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'פרק $number יצא ב-$source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'פרקים $from–$to יצאו ב-$source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'לכותרים $count יש משהו חדש';
  }

  @override
  String get navSources => 'מקורות';

  @override
  String sourceInactiveOpen(String manager) {
    return 'מקור זה שייך ל-$manager, שאינו שירות ההרחבה הפעיל';
  }

  @override
  String get sourceAlertsHeader => 'הודעות שחרור';

  @override
  String get sourceAlertsSwitch => 'בדוק כותרים רשומים';

  @override
  String get sourceAlertsSwitchDesc =>
      'פעם אחת בכל פעם שהאפליקציה נפתחת, עבור כותרות הפעלת את הפעמון';

  @override
  String get sourceSkipUnstarted => 'דלג על כותרות שלא התחלת';

  @override
  String get sourceSkipUnstartedDesc =>
      'עדיין לא נצפה או קרא שום דבר, אבל פרקים כבר קיימים';

  @override
  String get sourceSkipUnseen => 'דלג בזמן שיש לך פרקים שלא ראיתם';

  @override
  String get sourceSkipUnseenDesc => 'עדיין יש לך פרקים להתעדכן בהם';

  @override
  String get sourceManage => 'מנויים';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count כותרות',
      one: 'כותרת 1',
      zero: 'אין כותרות',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'בדוק עכשיו';

  @override
  String get sourceCheckNowDesc => 'מתעלם מלוח הזמנים ומכללי הדילוג';

  @override
  String get sourceChecking => 'בודק...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'לכותרים $count יש משהו חדש',
      one: 'לכותרת אחת יש משהו חדש',
      zero: 'שום דבר חדש',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'עדיין אין מנויים';

  @override
  String get sourceEmptyMessage =>
      'הקש על הפעמון מעל פרקים של כותר כדי לקבל מידע על פרקים חדשים';

  @override
  String get sourceAll => 'הכל';

  @override
  String sourceInactive(String manager) {
    return 'לא פעיל: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source אינו מותקן בשירות ההרחבה הזה';
  }

  @override
  String get sourceUnreachable => 'המקור לא מגיב';

  @override
  String get sourceFinished => 'הסתיים';

  @override
  String get sourceSkippedCompleted => 'דילוג: הושלם';

  @override
  String get sourceSkippedUnstarted => 'דילוג: לא התחיל';

  @override
  String get sourceSkippedUnseen => 'דילוג: פרקים שלא נראו';

  @override
  String get sourceWaiting => 'מחכה לשחרור הבא';

  @override
  String sourceNextCheck(String when) {
    return 'הסימון הבא $when';
  }

  @override
  String get sourceSoon => 'בקרוב';

  @override
  String sourceInHours(int count) {
    return 'בעוד ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'ב${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'אחרון: $number';
  }

  @override
  String get sourceMute => 'השתק';

  @override
  String get sourceUnmute => 'בטל השתקה';

  @override
  String get sourceMuted => 'מושתק';

  @override
  String get sourceUnsubscribe => 'בטל את המנוי';

  @override
  String get sourcePickAnother => 'בחר מקור אחר';

  @override
  String get sourceOpenExtensions => 'פתח הרחבות';

  @override
  String get sourceNoticesEmpty => 'עדיין אין הודעות שחרור';

  @override
  String get sourceNoticesEmptyMessage =>
      'פרקים ופרקים חדשים מהכותרים הרשומים שלך מופיעים כאן';

  @override
  String get sourceOpenTitle => 'פתח כותרת';

  @override
  String get extensionsLoading => 'טוען תוספים...';

  @override
  String get updateWhatsNew => 'מה חדש';

  @override
  String get updateLater => 'מאוחר יותר';

  @override
  String get updateSkipVersion => 'דלג על גרסה זו';

  @override
  String get updatePreparing => 'מתכונן...';

  @override
  String get updateDownloading => 'מוריד';

  @override
  String get updateInstalling => 'מתקין...';

  @override
  String updateSizeOf(String done, String total) {
    return '$done מתוך $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'פורסם $date';
  }

  @override
  String get updateNoAsset => 'לגרסה הזו אין הורדה למכשיר שלך';

  @override
  String get updateUpToDate => 'אתה בגרסה האחרונה';

  @override
  String get updateIosHint =>
      'גיוסי iOS אינם נמצאים ב-App Store. תפוס את ה-.ipa מדף השחרור וטען אותו לצד AltStore או SideStore';

  @override
  String get updateOpenedBrowser => 'בדוק את הדפדפן שלך';

  @override
  String get updateTryAgain => 'נסה שוב';

  @override
  String get settingsNotifications => 'התראות';

  @override
  String get settingsNotificationsDesc =>
      'התראות עבור הרשימות שלך, פרקים ופרקים חדשים ותגובות הערות';

  @override
  String get settingsAboutUpdates => 'אודות ועדכונים';

  @override
  String get settingsAboutUpdatesDesc =>
      'עדכוני אפליקציה, גרסה, יומנים, קישורים ותמיכה';

  @override
  String get settingsGroupAccount => 'החשבון שלך';

  @override
  String get settingsGroupContent => 'תוכן';

  @override
  String get settingsGroupApp => 'אפליקציה';

  @override
  String get settingsAnimeDesc => 'נגן, כתוביות, דילוגים, רשימת פרקים ופרטים';

  @override
  String get settingsMangaDesc => 'מצב קורא, בקרות, תצוגה ומעקב אחר פרקים';

  @override
  String get settingsNovelDesc => 'טקסט, הפיכת דפים, תרגום וקריאה בקול';

  @override
  String get settingsLocalPlay => 'משחק מקומי';

  @override
  String get settingsLocalPlayDesc =>
      'הפעל קבצים, תיקיות, זרמי רשת וטורנטים, או פתח ספר';

  @override
  String get settingsLocalPlayVideo => 'וידאו';

  @override
  String get settingsLocalPlayBooks => 'ספרים';

  @override
  String get settingsWatchSections => 'קטעים';

  @override
  String get settingsSectionLists => 'רשימות פרקים ופרקים';

  @override
  String get settingsSectionProgress => 'מעקב אחר התקדמות';

  @override
  String get updateChannelDesc =>
      'יציב הוא המהדורה שנבדקה. מהדורה מוקדמת ואלפא יקבלו תכונות חדשות מוקדם יותר, אך עלולות להישבר';

  @override
  String get checkNowDesc => 'חפש גרסה חדשה יותר מיד';

  @override
  String get generalSectionBasics => 'שפה והתנהגות';

  @override
  String get generalSectionSecurity => 'אבטחה';

  @override
  String get generalSectionPrivacy => 'פרטיות';

  @override
  String notificationsOtherService(String service) {
    return 'עבור אל $service כדי לפתוח את זה';
  }

  @override
  String get secPlayerPlayback =>
      'מהירות ברירת מחדל, הפעלה אוטומטית, התאמה של וידאו, כיוון ותמונה בתמונה';

  @override
  String get secPlayerSkip => 'דלג על פתחים, סיומים וסיכום אוטומטי';

  @override
  String get secPlayerControls => 'החלק, החזק והקש על מחוות וחפש תצוגה מקדימה';

  @override
  String get secPlayerSubtitles => 'שפות, מראה ועיבוד כתוביות';

  @override
  String get secPlayerShaders => 'העלאת קנה מידה של אנימה ושידרים משלך';

  @override
  String get secPlayerEngine =>
      'מפענח, פלט וידאו ואודיו, חציצה. שנה אותם רק אם יש בעיות בהפעלה';

  @override
  String get secPlayerMpv => 'mpv.conf, סקריפטים וכוונון מתקדם';

  @override
  String get secAnimeList => 'פרקי מילוי ותמונות ממוזערות שלא נצפו';

  @override
  String get secProgress =>
      'כאשר התקדמות הצפייה או הקריאה שלך נשמרת ברשימה שלך';

  @override
  String get secAnimeDetails =>
      'מהיכן מגיעים כותרות פרקים, תמונות ממוזערות וסיכומים';

  @override
  String get secReaderReading => 'מצב קריאה, הפיכת עמוד, זום והפרק הבא';

  @override
  String get secReaderControls =>
      'הקש על אזורים, מקשי עוצמת הקול וגלילה אוטומטית';

  @override
  String get secReaderDisplay => 'רקע, בהירות, מסך מלא ומספר עמוד';

  @override
  String get secNovelText => 'גופן, גודל, מרווח, שוליים וסיבוב עמודים';

  @override
  String get secNovelTranslate => 'תרגם פרקים תוך כדי הקריאה';

  @override
  String get secNovelSpeech => 'קול, מהירות וגובה צליל לקריאה בקול';

  @override
  String get secNotifyAbout => 'בחר אילו סוגי פעילות שולחים התראה';

  @override
  String get layoutTitle => 'פריסה';

  @override
  String get layoutDesc => 'בחר, הזז והסתיר את הכפתורים על הפסים';

  @override
  String get layoutHint =>
      'גרור לחצן כדי להזיז אותו (החזק תחילה במסך מגע). הקש על אחד כדי לחתוך, להזיז או להסתיר אותו';

  @override
  String layoutDropInto(String zone) {
    return 'כניסה: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'העברת $name. לחץ על כפתור הדבק כדי למקם אותו';
  }

  @override
  String get layoutTitleFixed => 'כותרת';

  @override
  String get layoutZoneTopStart => 'פס עליון, לפני הכותרת';

  @override
  String get layoutZoneTopEnd => 'פס עליון, אחרי הכותרת';

  @override
  String get layoutZoneBottomStart => 'פס תחתון, משמאל';

  @override
  String get layoutZoneBottomEnd => 'פס תחתון, מימין';

  @override
  String get layoutZoneSecondRow => 'מוסתר: שורה שנייה בתצוגה רגילה';

  @override
  String get layoutZoneOverflow => 'מוסתר: בתפריט עוד';

  @override
  String get layoutEmptyZone => 'שחרר כאן כפתורים';

  @override
  String get layoutCut => 'גזור';

  @override
  String get layoutPaste => 'הדבק כאן';

  @override
  String get layoutHide => 'הסתר';

  @override
  String layoutMoveTo(String zone) {
    return 'העבר אל $zone';
  }

  @override
  String get layoutReset => 'אפס לברירת המחדל';

  @override
  String get layoutMore => 'עוד';

  @override
  String get sourceWhyAction => 'למה אין התראה?';

  @override
  String get sourceWhyStatus => 'סטטוס';

  @override
  String get sourceWhyLastCheck => 'נבדק לאחרונה';

  @override
  String get sourceWhyNever => 'עדיין לא';

  @override
  String get sourceWhyNextCheck => 'הבדיקה הבאה';

  @override
  String get sourceWhyNewest => 'הכי חדש במקור';

  @override
  String get sourceWhyProgress => 'ההתקדמות שלך';

  @override
  String get sourceWhyListStatus => 'סטטוס רשימה';

  @override
  String get sourceWhyFailures => 'בדיקות שנכשלו ברצף';

  @override
  String get sourceWhyLastRelease => 'מהדורה חדשה אחרונה שנראתה';

  @override
  String get sourceWhyVerdictNew =>
      'מהדורה חדשה מופיעה כאן ברגע שהמקור מפרט אותה והבדיקה הבאה פועלת.';

  @override
  String get sourceWhyVerdictAhead =>
      'המקור כבר מקדים את ההתקדמות שלך, אז אמרו לך על זה פעם אחת. קרא או צפה בו כדי לקבל את ההתראה הבאה.';

  @override
  String get sourceWhyVerdictSkipped =>
      'הכללים שלמעלה מדלגים על כותרת זו. שנה אותם בהגדרות ההתראות, או השתמש ב"בדוק עכשיו" כדי להפעיל אותה בכל זאת.';

  @override
  String get sourceWhyVerdictBroken =>
      'לא ניתן להגיע למקור או שהוא הוסר, אז שום דבר לא נבדק.';

  @override
  String get sourceWhyVerdictMuted => 'מנוי זה מושתק.';

  @override
  String get externalPlayerTitle => 'פתח זרם במקום אחר';

  @override
  String get externalCopyUrl => 'העתק את קישור הזרם';

  @override
  String get externalCopied => 'קישור הזרם הועתק';

  @override
  String get externalChooser => 'פתח באפליקציה אחרת';

  @override
  String get externalVlc => 'פתח ב-VLC';

  @override
  String get externalMpv => 'פתח ב-mpv';

  @override
  String get externalWebVideoCast => 'קאסט וידאו באינטרנט';

  @override
  String get castViaAppHint => 'שלח את הזרם לאפליקציית Web Video Cast';

  @override
  String get externalFailed => 'לא ניתן היה לפתוח את הזרם. האם הנגן מותקן?';

  @override
  String get addonInstalled => 'מותקן';

  @override
  String get loadFailedActivity => 'לא ניתן היה לטעון את הפעילות';

  @override
  String get loadFailedFavourites => 'לא ניתן היה לטעון את המועדפים. נסה שוב';

  @override
  String get loadFailedStats => 'לא ניתן היה לטעון נתונים סטטיסטיים';

  @override
  String get loadFailedReplies => 'לא ניתן היה לטעון תשובות';

  @override
  String get cantBeUndone => 'לא ניתן לבטל את זה.';

  @override
  String get searchTags => 'חפש תגיות';

  @override
  String get spoilerTapToView => 'ספוילר, הקש לצפייה';

  @override
  String get mediaVideo => 'וידאו';

  @override
  String get notificationSomeone => 'מישהו';

  @override
  String get notificationATitle => 'כותרת';

  @override
  String get notificationAddedDetail => 'התווסף ל-AniList';

  @override
  String get updateNoReleases => 'לא נמצאו מהדורות';

  @override
  String get updateInvalidResponse => 'תגובת עדכון לא חוקית';

  @override
  String get commentsRateLimited => 'שיעור מוגבל';

  @override
  String get commentsConnectFailed => 'החיבור נכשל';

  @override
  String get dnsNoRecords => 'לא הוחזרו רשומות A';

  @override
  String get importTokenRejected => 'האסימון נדחה';

  @override
  String get developerRoleLead => 'מפתח מוביל';

  @override
  String get developerRoleModerator => 'מנחה דיסקורד';

  @override
  String extensionManagerTitle(String type) {
    return '$type מנהל';
  }

  @override
  String extensionsOfType(String type) {
    return '$type הרחבות';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'הגדרות $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name אינו מספק הגדרות כלשהן.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'פרק $episode של $title שודר';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'פרק $episode שודר';
  }

  @override
  String notificationAdded(String title) {
    return '$title התווסף ל-AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'שרת העדכונים לא מצא את המהדורה הזו: $message';
  }

  @override
  String get installStepJre => 'זמן ריצה של Java';

  @override
  String get installStepCore => 'ליבת זמן ריצה';

  @override
  String installStepsProgress(int current, int total) {
    return 'שלב $current של $total';
  }

  @override
  String get stepWaiting => 'מחכה';

  @override
  String get stepChecking => 'בודק...';

  @override
  String get stepUpToDate => 'מעודכן';

  @override
  String stepUpToDateWith(String detail) {
    return 'מעודכן · $detail';
  }

  @override
  String get stepWillInstall => 'יותקן';

  @override
  String get stepWillUpdate => 'יעודכן';

  @override
  String stepWillUpdateTo(String version) {
    return 'יעודכן ל-$version';
  }

  @override
  String get stepInstalled => 'מותקן';

  @override
  String get stepNotNeeded => 'לא צריך כאן';

  @override
  String get stepFailed => 'נכשל';

  @override
  String stepFailedWith(String reason) {
    return 'נכשל: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'זה פועל על זמן הריצה של Java ועל ליבת זמן הריצה המשותפת. הם מותקנים תחילה, ומתעדכנים אם הם השתנו.';

  @override
  String get installRuntimeNewer => 'לזמן הריצה שמנהל זה פועל יש עדכון.';

  @override
  String get removeJvmTitle => 'להסיר את זמן הריצה של Java?';

  @override
  String get removeJvmMessage =>
      'מנהלי הרחבות לשולחן העבודה מפסיקים לעבוד עד שהוא מותקן שוב. הוא יוריד שוב בפעם הבאה שאתה מתקין או פותח אחד.';

  @override
  String get runtimePreparing => 'מכין את זמן הריצה...';

  @override
  String get calendarAll => 'הכל';

  @override
  String get calendarAnime => 'אנימה';

  @override
  String get calendarManga => 'מנגה';

  @override
  String get readerCloudflare => 'פתח בדפדפן (בדיקת Cloudflare)';

  @override
  String get badgeBoardHint =>
      'גרור תג לפינה של הקלף הראשון, או גרור תג שכבר נמצא עליו כדי להזיז אותו. תגים מחליפים מקומות, כך שאף אחד לא חופף. הקש על תג למטה כדי להפעיל או לכבות אותו.';

  @override
  String get statusAuto => 'אוטומטי';

  @override
  String get unreadCounter => 'מונה שלא נקרא';

  @override
  String get unreadCounterDesc => 'הראה כמה פרקים או פרקים נותרו בפוסטרים';

  @override
  String get settingsShortcuts => 'קיצורי מקלדת';

  @override
  String get settingsShortcutsDesc => 'לראות, לשנות ולכבות כל מפתח';

  @override
  String get shortcutGroupApp => 'אפליקציה';

  @override
  String get shortcutGroupPlayer => 'נגן וידאו';

  @override
  String get shortcutGroupReader => 'קורא';

  @override
  String get shortcutsEnableApp => 'קיצורי דרך לאפליקציה';

  @override
  String get shortcutsEnablePlayer => 'קיצורי דרך לנגן';

  @override
  String get shortcutsEnableReader => 'קיצורי דרך לקוראים';

  @override
  String get shortcutsEnableDesc => 'הפעל או כבה כל מפתח בקבוצה זו';

  @override
  String get shortcutNotSet => 'לא מוגדר';

  @override
  String get shortcutAddKey => 'הוסף מפתח';

  @override
  String get shortcutResetOne => 'אפס לברירת המחדל';

  @override
  String get shortcutClearKeys => 'הסר את כל המפתחות';

  @override
  String get shortcutResetAll => 'אפס את כל קיצורי הדרך';

  @override
  String get shortcutResetAllDesc => 'החזר כל מפתח לברירת המחדל שלו';

  @override
  String get shortcutPress => 'הקש על המקש או השילוב הרצוי';

  @override
  String get shortcutPressHint =>
      'כל שילוב יכול להשתייך לפעולה אחת בלבד, אז לקיחת אחת מזיזה אותה.';

  @override
  String get shortcutSeekPercent => 'קפוץ לנקודה של הסרטון';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'תחזור אחורה';

  @override
  String get shortcutAppFullscreen => 'החלף מסך מלא';

  @override
  String get shortcutAppGlass => 'החלף מצב זכוכית';

  @override
  String get shortcutAppMaterialYou => 'החלף חומר אתה';

  @override
  String get shortcutAppDark => 'החלף מצב כהה';

  @override
  String get shortcutAppOled => 'החלף OLED שחור';

  @override
  String get shortcutAppSearch => 'פתח את החיפוש';

  @override
  String get shortcutAppSettings => 'פתח את ההגדרות';

  @override
  String get shortcutAppDownloads => 'פתח הורדות';

  @override
  String get shortcutAppNotifications => 'פתח הודעות';

  @override
  String get shortcutAppIncognito => 'החלף מצב גלישה בסתר';

  @override
  String get shortcutAppShortcuts => 'הצג קיצורי מקשים';

  @override
  String get shortcutPlayerPlayPause => 'הפעל או השהה';

  @override
  String get shortcutPlayerSeekForward => 'חפש קדימה';

  @override
  String get shortcutPlayerSeekBack => 'חפש בחזרה';

  @override
  String get shortcutPlayerSeekForwardLong => 'חפש קדימה 30 שניות';

  @override
  String get shortcutPlayerSeekBackLong => 'חפש אחורה 30 שניות';

  @override
  String get shortcutPlayerFrameForward => 'המסגרת הבאה';

  @override
  String get shortcutPlayerFrameBack => 'מסגרת קודמת';

  @override
  String get shortcutPlayerVolumeUp => 'הגברת עוצמת הקול';

  @override
  String get shortcutPlayerVolumeDown => 'הורדת עוצמת הקול';

  @override
  String get shortcutPlayerMute => 'השתק';

  @override
  String get shortcutPlayerFullscreen => 'מסך מלא';

  @override
  String get shortcutPlayerNext => 'הפרק הבא';

  @override
  String get shortcutPlayerPrevious => 'הפרק הקודם';

  @override
  String get shortcutPlayerSkip => 'דלג על מבוא או סיום';

  @override
  String get shortcutPlayerPanel => 'רשימת פרקים';

  @override
  String get shortcutPlayerSpeedUp => 'השמעה מהירה יותר';

  @override
  String get shortcutPlayerSpeedDown => 'השמעה איטית יותר';

  @override
  String get shortcutPlayerSpeedReset => 'מהירות רגילה';

  @override
  String get shortcutPlayerSubtitleToggle => 'כתוביות מופעלות או מושבתות';

  @override
  String get shortcutPlayerSubtitleCycle => 'רצועת הכתוביות הבאה';

  @override
  String get shortcutPlayerAudioCycle => 'רצועת האודיו הבאה';

  @override
  String get shortcutPlayerStreamCycle => 'הזרם הבא';

  @override
  String get shortcutPlayerFit => 'שנה התאמה של וידאו';

  @override
  String get shortcutReaderRight => 'עמוד מימין';

  @override
  String get shortcutReaderLeft => 'עמוד משמאל';

  @override
  String get shortcutReaderNextPage => 'העמוד הבא';

  @override
  String get shortcutReaderPreviousPage => 'העמוד הקודם';

  @override
  String get shortcutReaderControls => 'הצג או הסתר פקדים';

  @override
  String get shortcutReaderNextChapter => 'הפרק הבא';

  @override
  String get shortcutReaderPreviousChapter => 'הפרק הקודם';

  @override
  String shortcutTaken(String action) {
    return 'נלקח מ$action';
  }

  @override
  String get incognitoTurnedOn => 'מצב גלישה בסתר מופעל';

  @override
  String get incognitoTurnedOff => 'מצב גלישה בסתר כבוי';

  @override
  String get onHoldAnime => 'אנימה בהמתנה';

  @override
  String get onHoldManga => 'מנגה בהמתנה';

  @override
  String get droppedAnime => 'ירד אנימה';

  @override
  String get droppedManga => 'ירד מנגה';

  @override
  String get generalSectionDesktop => 'שולחן עבודה';

  @override
  String get closeAction => 'כשהחלון סגור';

  @override
  String get closeActionQuit => 'צא מהאפליקציה';

  @override
  String get closeActionWhenBusy => 'המשך לרוץ במגש בזמן שמשהו פועל';

  @override
  String get closeActionAlways => 'תמיד המשיכו לרוץ במגש';

  @override
  String get closeActionNoTray =>
      'מגש המערכת אינו זמין כאן, כך שהאפליקציה נסגרת כאשר היא סגורה';

  @override
  String get gamepadNav => 'ניווט ב-Gamepad';

  @override
  String get gamepadNavDesc => 'לנוע באפליקציה ולשלוט בנגן עם בקר משחק';

  @override
  String get trayShow => 'הצג את דארטוצו';

  @override
  String get trayQuit => 'עזוב';

  @override
  String get trayIdle => 'שום דבר לא רץ';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'הורדת פריטי $count',
      one: 'מוריד פריט $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'מסנכרן את הרשימות שלך';

  @override
  String get trayUpdating => 'עדכון האפליקציה';

  @override
  String get trayPlaying => 'משחק בחלון קטן';

  @override
  String get traySearch => 'חפש';

  @override
  String get trayPauseDownloads => 'השהה הורדות';

  @override
  String get trayResumeDownloads => 'המשך הורדות';

  @override
  String get playerDownloadTitle => 'הורדת הנגן';

  @override
  String get playerDownloadBody =>
      'Dartotsu מביא את מנוע הווידאו שלו פעם אחת. ההשמעה מתחילה ברגע שהוא מוכן.';

  @override
  String get playerDownloadStarting => 'מתחיל את ההורדה...';

  @override
  String get playerDownloadFailedTitle => 'לא הצלחתי להשיג את השחקן';

  @override
  String get playerDownloadFailedBody =>
      'בדוק את החיבור שלך ונסה שוב. ההורדה מתחילה במקום שבו היא נעצרה.';

  @override
  String get playerDownloadRetry => 'נסה שוב';

  @override
  String get playerDownloadCopy => 'העתק פרטים';

  @override
  String get removePlayerTitle => 'להסיר את הנגן?';

  @override
  String get removePlayerMessage =>
      'לא ניתן להפעיל סרטונים עד שהנגן יוריד שוב.';

  @override
  String get trailerLoading => 'טוען את הטריילר...';

  @override
  String get trailerFailed => 'לא ניתן להפעיל את הטריילר כאן, פותח אותו בדפדפן';
}
