// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'แอปใหม่ที่ดีที่สุด\nสำหรับติดตามอนิเมะและมังงะ';

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
  String get loadMore => 'โหลดเพิ่ม';

  @override
  String get login => 'เข้าสู่ระบบ';

  @override
  String get continueAsGuest => 'ใช้แบบผู้เยี่ยมชมต่อ';

  @override
  String get getStarted => 'เริ่มเลย';

  @override
  String get loginWithToken => 'เข้าสู่ระบบด้วยโทเคน';

  @override
  String get pasteTokenHint => 'วางโทเคนเข้าถึงของคุณ';

  @override
  String loginTo(String service) {
    return 'เข้าสู่ระบบ $service';
  }

  @override
  String get settings => 'ตั้งค่า';

  @override
  String get account => 'บัญชี';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get language => 'ภาษา';

  @override
  String get animationSpeed => 'แอนิเมชัน';

  @override
  String get animationSpeedDesc =>
      'ความเร็วของการเปลี่ยนหน้าและเอฟเฟกต์ตอนเปิดทั่วทั้งแอป';

  @override
  String get animationSpeedOff => 'ปิด';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ส่วนขยาย',
      one: 'ส่วนขยาย',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'ซอร์สที่ไม่รู้จัก';

  @override
  String get install => 'ติดตั้ง';

  @override
  String get update => 'อัปเดต';

  @override
  String get uninstall => 'ถอนการติดตั้ง';

  @override
  String get updateInstallCancelled =>
      'ยกเลิกการติดตั้งแล้ว ถ้า Android แจ้งว่าแอปขัดแย้งกับตัวที่ติดตั้งอยู่ แปลว่าลายเซ็นไม่ตรงกัน ให้ถอนการติดตั้งเวอร์ชันปัจจุบันก่อน แล้วค่อยติดตั้งอัปเดต';

  @override
  String updateInstallFailed(String error) {
    return 'อัปเดตไม่สำเร็จ: $error';
  }

  @override
  String get appLock => 'ล็อกแอป';

  @override
  String get appLockDesc =>
      'ถามรหัสผ่านตอนเปิดแอปหรือกลับมาหลังจากทิ้งไว้สักพัก';

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
  String get appLockUnlock => 'ใส่รหัสผ่านของคุณ';

  @override
  String get appLockWrong => 'รหัสผ่านไม่ถูกต้อง';

  @override
  String appLockWait(String seconds) {
    return 'ลองหลายครั้งเกินไป รอ $seconds วินาทีนะ';
  }

  @override
  String get appLockNew => 'ตั้งรหัสผ่าน';

  @override
  String get appLockNewHint => 'ตัวเลข 4 ถึง 8 หลัก';

  @override
  String get appLockConfirm => 'ใส่อีกครั้ง';

  @override
  String get appLockMismatch => 'รหัสผ่านสองครั้งไม่ตรงกัน';

  @override
  String get appLockOn => 'ตั้งรหัสผ่านแล้ว';

  @override
  String get appLockRemoveTitle => 'ใส่รหัสผ่านเพื่อปิดการล็อก';

  @override
  String get installFailed => 'ติดตั้งไม่สำเร็จ';

  @override
  String get updateFailed => 'อัปเดตไม่สำเร็จ';

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
  String get noSourceSettings => 'ซอร์สนี้ไม่มีการตั้งค่า';

  @override
  String get addPluginRepository => 'เพิ่มคลังปลั๊กอิน';

  @override
  String get pluginIndexUrlHint => 'URL ดัชนีปลั๊กอิน';

  @override
  String get addRepository => 'เพิ่มคลัง';

  @override
  String get pluginRepoUpdated => 'อัปเดตคลังปลั๊กอินแล้ว';

  @override
  String get pluginRepoUpdateFailed => 'รีเฟรชคลังปลั๊กอินไม่สำเร็จ';

  @override
  String get ok => 'ตกลง';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่';

  @override
  String get save => 'บันทึก';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get clear => 'ล้าง';

  @override
  String get test => 'ทดสอบ';

  @override
  String get testing => 'กำลังทดสอบ…';

  @override
  String get resolving => 'กำลังแก้ไขที่อยู่…';

  @override
  String get none => 'ไม่มี';

  @override
  String get selectMediaService => 'เลือกบริการมีเดีย';

  @override
  String get pickColor => 'เลือกสี';

  @override
  String get colorPickerCustom => 'กำหนดเอง';

  @override
  String get colorPickerTransparent => 'โปร่งใส';

  @override
  String get ltr => 'ซ้ายไปขวา';

  @override
  String get searchSettings => 'ค้นหาในตั้งค่า';

  @override
  String nothingMatches(String query) {
    return 'ไม่มีอะไรตรงกับ \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'ค้นหาใน$category';
  }

  @override
  String get settingsAppearance => 'หน้าตาแอป';

  @override
  String get settingsAppearanceDesc => 'ธีม สี โหมดกระจก';

  @override
  String get settingsGeneral => 'ทั่วไป';

  @override
  String get settingsGeneralDesc => 'ภาษาและการทำงาน';

  @override
  String get settingsNetwork => 'เครือข่าย';

  @override
  String get settingsNetworkDesc => 'User agent, ใบรับรอง, DNS และพร็อกซี';

  @override
  String get settingsAccountDesc => 'บริการติดตามและการเข้าสู่ระบบ';

  @override
  String get settingsUpdates => 'อัปเดต';

  @override
  String get amoledBlack => 'ดำ AMOLED';

  @override
  String get amoledBlackDesc => 'พื้นผิวสีดำสนิทในโหมดมืด';

  @override
  String get glassMode => 'โหมดกระจก';

  @override
  String get glassModeDesc => 'พื้นผิวฝ้าทับภาพในคลังของคุณ';

  @override
  String get shelfFrame => 'กรอบรอบหมวด';

  @override
  String get shelfFrameDesc => 'แสดงการ์ดหลังแต่ละแถว หรือให้แถววางบนหน้าตรง ๆ';

  @override
  String get settingsExtensionsDesc =>
      'ตัวจัดการซอร์ส คลัง และตัวเลือกส่วนขยาย';

  @override
  String get settingsAddons => 'แอดออน';

  @override
  String get customPath => 'ที่เก็บข้อมูลกำหนดเอง';

  @override
  String get customPathDesc => 'ที่เก็บข้อมูลแอป กดค้างเพื่อรีเซ็ต';

  @override
  String get selectDirectory => 'เลือกโฟลเดอร์';

  @override
  String get differentCacheManager => 'แคชรูปแบบอื่น';

  @override
  String get differentCacheManagerDesc => 'ใช้ตัวจัดการแคชอื่นสำหรับรูปภาพ';

  @override
  String get backupAndRestore => 'สำรองและกู้คืน';

  @override
  String get backupAndRestoreDesc => 'บันทึกหรือโหลดการตั้งค่าของคุณ';

  @override
  String get backup => 'สำรองข้อมูล';

  @override
  String get restore => 'กู้คืน';

  @override
  String get loadExtensionsIcon => 'โหลดไอคอนส่วนขยาย';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => 'แสดงไอคอนซอร์สในรายการส่วนขยาย';

  @override
  String get sectionStorage => 'ที่เก็บข้อมูล';

  @override
  String get sectionManagers => 'ตัวจัดการ';

  @override
  String get sectionOptions => 'ตัวเลือก';

  @override
  String get backupTabBackup => 'สำรอง';

  @override
  String get backupTabRestore => 'กู้คืน';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys การตั้งค่าใน $categories หมวด';
  }

  @override
  String backupLastBackup(Object time) {
    return 'สำรองล่าสุด $time';
  }

  @override
  String get backupNever => 'ยังไม่มีข้อมูลสำรอง';

  @override
  String get backupSelectAll => 'เลือกทั้งหมด';

  @override
  String get backupClearAll => 'ล้าง';

  @override
  String backupKeys(Object count) {
    return '$count การตั้งค่า';
  }

  @override
  String get backupPassword => 'รหัสผ่าน (ไม่บังคับ)';

  @override
  String get backupPasswordHint => 'เว้นว่างไว้เพื่อใช้ค่าเริ่มต้น';

  @override
  String get backupSensitive =>
      'มีโทเคนเข้าสู่ระบบอยู่ เก็บไฟล์นี้เป็นความลับนะ';

  @override
  String get backupCreate => 'สร้างข้อมูลสำรอง';

  @override
  String backupSaved(Object name) {
    return 'บันทึกข้อมูลสำรองไว้ที่ $name แล้ว';
  }

  @override
  String backupFailed(Object error) {
    return 'สำรองข้อมูลไม่สำเร็จ: $error';
  }

  @override
  String get backupPickFile => 'เลือกไฟล์สำรอง';

  @override
  String get backupPickFileDesc => 'เลือกไฟล์ .json ที่สร้างจาก Dartotsu';

  @override
  String get backupChooseAnother => 'เลือกไฟล์อื่น';

  @override
  String get backupCreatedAt => 'สร้างเมื่อ';

  @override
  String get backupAppVersion => 'เวอร์ชันแอป';

  @override
  String get backupDevice => 'อุปกรณ์';

  @override
  String get backupAccounts => 'บัญชี';

  @override
  String get backupSize => 'ขนาด';

  @override
  String get backupEncrypted => 'ป้องกันด้วยรหัสผ่าน';

  @override
  String get backupUnlock => 'ปลดล็อก';

  @override
  String get backupWrongPassword => 'อ่านไฟล์นี้ไม่ได้ ลองเช็กรหัสผ่านดู';

  @override
  String get backupRestoreSelected => 'กู้คืนที่เลือก';

  @override
  String backupRestoreConfirm(Object count) {
    return 'กู้คืน $count การตั้งค่า? ค่าเดิมในหมวดเหล่านี้จะถูกเขียนทับ';
  }

  @override
  String get backupRestored => 'กู้คืนแล้ว รีสตาร์ตแอปเพื่อให้มีผลทั้งหมด';

  @override
  String backupRestoreFailed(Object error) {
    return 'กู้คืนไม่สำเร็จ: $error';
  }

  @override
  String get backupSelectOne => 'เลือกอย่างน้อยหนึ่งหมวด';

  @override
  String get backupCatTheme => 'หน้าตาแอป';

  @override
  String get backupCatThemeDesc => 'ธีม สี กระจก ฟอนต์ และสไตล์การ์ด';

  @override
  String get backupCatCommon => 'ทั่วไป';

  @override
  String get backupCatCommonDesc =>
      'ภาษา ที่เก็บข้อมูล เครือข่าย และตัวเลือกส่วนขยาย';

  @override
  String get backupCatPlayer => 'เครื่องเล่น';

  @override
  String get backupCatPlayerDesc => 'การตั้งค่าเครื่องเล่น';

  @override
  String get backupCatReader => 'ตัวอ่าน';

  @override
  String get backupCatReaderDesc => 'การตั้งค่าตัวอ่าน';

  @override
  String get backupCatProtected => 'บัญชี';

  @override
  String get backupCatProtectedDesc => 'โทเคนเข้าสู่ระบบและข้อมูลล็อกอิน';

  @override
  String get backupCatOther => 'บริการและฟีด';

  @override
  String get backupCatOtherDesc => 'เลย์เอาต์ฟีด รายการ และตัวเลือกของบริการ';

  @override
  String get logFile => 'ไฟล์ล็อก';

  @override
  String get logFileDesc => 'แชร์ล็อกของแอป หรือคัดลอกพาธบน Linux';

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
  String get logFileCopied => 'คัดลอกพาธล็อกแล้ว';

  @override
  String get donateSheetTitle => 'ชอบ Dartotsu ไหม?';

  @override
  String get donateSheetMessage =>
      'Dartotsu สร้างและดูแลโดยคนเดียว ถ้าใช้แล้วมีประโยชน์ ช่วยสนับสนุนการพัฒนาหน่อยนะ';

  @override
  String get donateLater => 'ไว้ทีหลัง';

  @override
  String get glassBackground => 'พื้นหลังกระจก';

  @override
  String get glassBackgroundDesc =>
      'ใช้แบนเนอร์โปรไฟล์ของคุณ ถ้าไม่ได้ใส่ลิงก์รูป';

  @override
  String get glassBackgroundHint => 'ลิงก์รูป (เว้นว่างเพื่อใช้แบนเนอร์ของคุณ)';

  @override
  String get followCover => 'ตามปก';

  @override
  String get followCoverDesc => 'สีจะตามพื้นหลัง และตามปกในหน้ารายละเอียด';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'สไตล์การ์ด';

  @override
  String get cardStyleDesc => 'ตำแหน่งชื่อ ขนาด ความคืบหน้า และป้าย';

  @override
  String get customFont => 'ฟอนต์';

  @override
  String get customFontDesc => 'ค่าเริ่มต้น ไฟล์จากเครื่อง หรือ Google Fonts';

  @override
  String get customFontError => 'โหลดไฟล์ฟอนต์นั้นไม่ได้';

  @override
  String get googleFontError => 'ดาวน์โหลดฟอนต์นั้นไม่ได้';

  @override
  String get yourFonts => 'ฟอนต์ของคุณ';

  @override
  String get addFontFile => 'เพิ่มไฟล์ฟอนต์…';

  @override
  String get browseGoogleFonts => 'เลือกดู Google Fonts…';

  @override
  String get searchGoogleFonts => 'ค้นหา Google Fonts';

  @override
  String get defaultFont => 'ค่าเริ่มต้น';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'สีไดนามิกจากระบบ';

  @override
  String get jsonTheme => 'ไฟล์ธีมกำหนดเอง';

  @override
  String get jsonThemeDesc =>
      'สีสดจาก ~/.config/dartotsu/theme.json (สคริปต์เอง หรือแก้เอง)';

  @override
  String get themeMode => 'โหมดธีม';

  @override
  String get mode => 'โหมด';

  @override
  String get trackingService => 'บริการติดตาม';

  @override
  String get signOut => 'ออกจากระบบ';

  @override
  String get signIn => 'เข้าสู่ระบบ';

  @override
  String get notSignedIn => 'ยังไม่ได้เข้าสู่ระบบ';

  @override
  String signOutOf(String service) {
    return 'ออกจากระบบ $service ไหม?';
  }

  @override
  String get checkForUpdates => 'เช็กอัปเดต';

  @override
  String get checkForUpdatesDesc => 'แจ้งเตือนเมื่อมี GitHub release ใหม่';

  @override
  String get updateChannel => 'ช่องทางอัปเดต';

  @override
  String get channel => 'ช่องทาง';

  @override
  String get stable => 'เสถียร';

  @override
  String get preRelease => 'พรีรีลีส';

  @override
  String get alpha => 'อัลฟา';

  @override
  String get checkNow => 'เช็กเลย';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ค่าเริ่มต้น';

  @override
  String currentlyUsing(String value) {
    return 'ตอนนี้: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ค่าเริ่มต้น (Cloudflare)';

  @override
  String get proxy => 'พร็อกซี';

  @override
  String get proxyProtocol => 'ประเภท';

  @override
  String get proxyHost => 'โฮสต์';

  @override
  String get proxyPort => 'พอร์ต';

  @override
  String get proxyUsername => 'ชื่อผู้ใช้';

  @override
  String get proxyPassword => 'รหัสผ่าน';

  @override
  String get optional => 'ไม่บังคับ';

  @override
  String get clearCookies => 'ล้างคุกกี้';

  @override
  String get clearCookiesDesc => 'ลบคุกกี้ที่เก็บไว้ทั้งหมด';

  @override
  String notImplementedArea(String area) {
    return '$area — เร็ว ๆ นี้';
  }

  @override
  String notImplementedService(String service) {
    return '$service ยังไม่รองรับเรื่องนี้';
  }

  @override
  String get couldNotLoadResults => 'โหลดผลลัพธ์ไม่ได้';

  @override
  String get updateCheckFailed => 'เช็กอัปเดตไม่ได้';

  @override
  String get highRefreshRate => 'รีเฟรชเรตสูง';

  @override
  String get highRefreshRateDesc => 'ใช้รีเฟรชเรตสูงสุดที่หน้าจอรองรับ';

  @override
  String get imageSave => 'บันทึกรูป';

  @override
  String imageSavedTo(String path) {
    return 'บันทึกไว้ที่ $path แล้ว';
  }

  @override
  String get imageActionFailed => 'ดาวน์โหลดรูปไม่ได้';

  @override
  String get imageTitleCover => 'ปก';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'แบนเนอร์';

  @override
  String get imageTitleAvatar => 'รูปโปรไฟล์';

  @override
  String get verifyTls => 'ตรวจสอบใบรับรอง';

  @override
  String get verifyTlsDesc =>
      'ปฏิเสธเซิร์ฟเวอร์ที่ใบรับรอง HTTPS ไม่ถูกต้อง ปิดเฉพาะกับซอร์สที่ใช้ใบรับรองที่เซ็นเอง';

  @override
  String get clearCookiesConfirm =>
      'ลบคุกกี้ที่เก็บไว้ทั้งหมด? อาจทำให้ออกจากระบบบางซอร์สได้';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'ซอร์สโค้ด ปัญหา และรุ่นที่ปล่อย';

  @override
  String get discordDesc => 'ชุมชนและการช่วยเหลือ';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'สนับสนุนการพัฒนา';

  @override
  String get contributors => 'ผู้ร่วมพัฒนา';

  @override
  String get contributorsDesc => 'คนที่สร้าง Dartotsu';

  @override
  String get contributorsLoadFailed => 'โหลดรายชื่อผู้ร่วมพัฒนาไม่ได้';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'โปรเจกต์ที่สร้างต่อจาก Dartotsu';

  @override
  String get forksEmpty => 'ไม่พบฟอร์ก';

  @override
  String get sectionColors => 'สี';

  @override
  String get sectionDisplay => 'การแสดงผล';

  @override
  String get sectionStyle => 'สไตล์';

  @override
  String get sectionCommunity => 'ชุมชน';

  @override
  String get sectionAppInfo => 'ข้อมูลแอป';

  @override
  String get sectionRequests => 'คำขอ';

  @override
  String get sectionDnsProxy => 'DNS และพร็อกซี';

  @override
  String get onboardingBack => 'ย้อนกลับ';

  @override
  String get onboardingNext => 'ถัดไป';

  @override
  String get onboardingSkip => 'ข้าม';

  @override
  String get onboardingPaletteTitle => 'ทำให้เป็นของคุณ';

  @override
  String get onboardingPaletteBody =>
      'เลือกจานสี สีเน้นทุกจุดตั้งแต่การ์ดจนถึงเครื่องเล่นจะตามนี้';

  @override
  String get themeModeAuto => 'อัตโนมัติ';

  @override
  String get themeModeLight => 'สว่าง';

  @override
  String get themeModeDark => 'มืด';

  @override
  String get onboardingSyncTitle => 'ซิงก์คลังของคุณ';

  @override
  String get onboardingSyncBody =>
      'เข้าสู่ระบบด้วย AniList เพื่อนำรายการ ความคืบหน้า และคะแนนมาด้วย หรือข้ามไปดูแบบผู้เยี่ยมชมก็ได้';

  @override
  String get onboardingOpenLinks => 'เปิดลิงก์ AniList และคลังใน Dartotsu';

  @override
  String get onboardingPermsTitle => 'สิทธิ์การเข้าถึง';

  @override
  String get onboardingPermsBody =>
      'อนุญาตตอนนี้เลย ดาวน์โหลด อัปเดต และแจ้งเตือนจะได้ทำงานไม่สะดุด เปลี่ยนทีหลังได้ในตั้งค่าระบบ';

  @override
  String get permNotifications => 'การแจ้งเตือน';

  @override
  String get permNotificationsDesc =>
      'ความคืบหน้าดาวน์โหลด ตอนใหม่ และการตอบกลับ';

  @override
  String get permStorage => 'เข้าถึงไฟล์ทั้งหมด';

  @override
  String get permStorageDesc => 'บันทึกดาวน์โหลดลงโฟลเดอร์ Dartotsu สาธารณะ';

  @override
  String get permInstall => 'ติดตั้งอัปเดต';

  @override
  String get permInstallDesc => 'ให้ Dartotsu ติดตั้งอัปเดตของตัวเองได้';

  @override
  String get permBattery => 'แบตเตอรี่ไม่จำกัด';

  @override
  String get permBatteryDesc => 'ให้ดาวน์โหลดนาน ๆ ทำงานต่อในพื้นหลัง';

  @override
  String get permGrant => 'อนุญาต';

  @override
  String get linkOpenInApp => 'เปิดลิงก์ใน Dartotsu';

  @override
  String get linkOpenInAppDesc => 'ให้ลิงก์ AniList และคลังเปิดแอปได้';

  @override
  String get reviewsTitle => 'รีวิว';

  @override
  String get reviewsEmpty => 'ยังไม่มีรีวิว';

  @override
  String get reviewsFailed => 'โหลดรีวิวไม่ได้';

  @override
  String get reviewHelpfulQuestion => 'รีวิวนี้มีประโยชน์ไหม?';

  @override
  String get reviewVoteFailed => 'บันทึกโหวตไม่ได้';

  @override
  String reviewHelpful(int n, int total) {
    return '$n จาก $total คนบอกว่ามีประโยชน์';
  }

  @override
  String get calendarTitle => 'ตารางออกอากาศ';

  @override
  String get calendarToday => 'วันนี้';

  @override
  String get calendarEmpty => 'วันนี้ไม่มีอะไรออกอากาศ';

  @override
  String get calendarFailed => 'โหลดตารางไม่ได้';

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
    return 'ตอนที่ $n';
  }

  @override
  String get shareAnalytics => 'แชร์ข้อมูลการใช้งานแบบไม่ระบุตัวตน';

  @override
  String get shareAnalyticsDesc =>
      'จำนวนผู้ใช้และรายงานแครชแบบไม่ระบุตัวตน ไม่มีบัญชีหรือข้อมูลส่วนตัว';

  @override
  String get linkOpenAnilist => 'เปิดลิงก์ AniList ใน Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'เปิดการจัดการลิงก์ เพื่อให้ลิงก์ anilist.co เปิดในแอป';

  @override
  String get linkSettingsFailed => 'เปิดการตั้งค่าระบบไม่ได้';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'แสดงสิ่งที่กำลังทำบนโปรไฟล์ Discord ต้องใช้โทเคน Discord ของคุณ';

  @override
  String get discordRichPresenceDesktopDesc =>
      'แสดงสิ่งที่กำลังทำบนโปรไฟล์ Discord ต้องเปิดแอป Discord บนเดสก์ท็อปไว้';

  @override
  String get discordBrowsing => 'แสดงกิจกรรมการเลือกดู';

  @override
  String get discordBrowsingDesc =>
      'แสดงแท็บ หน้า หรือโปรไฟล์ที่กำลังดูด้วย ไม่ใช่แค่สิ่งที่ดูหรืออ่าน';

  @override
  String get discordLookHeader => 'หน้าตาสถานะ';

  @override
  String get discordActivityType => 'ประเภทกิจกรรม';

  @override
  String get discordActivityTypeDesc =>
      'Discord จะเขียนว่าอะไร: \"Watching …\" หรือ \"Playing …\" อัตโนมัติจะใช้ Watching กับอนิเมะ และ Playing กับอย่างอื่น';

  @override
  String get discordWatching => 'กำลังดู';

  @override
  String get discordPlaying => 'กำลังเล่น';

  @override
  String get discordCovers => 'แสดงปก';

  @override
  String get discordCoversDesc => 'ภาพปกและไอคอน Dartotsu บนการ์ด';

  @override
  String get discordTimer => 'แสดงตัวจับเวลา';

  @override
  String get discordTimerDesc => 'เวลาที่ผ่านไปหรือที่เหลืออยู่ใต้ชื่อ';

  @override
  String get discordButtons => 'แสดงปุ่ม';

  @override
  String get discordButtonsDesc =>
      'ปุ่ม \"ดูอนิเมะ / มังงะ\" และ \"เปิด Dartotsu\"';

  @override
  String get discordHideTitles => 'ซ่อนชื่อเรื่อง';

  @override
  String get discordHideTitlesDesc =>
      'แทนชื่ออนิเมะและมังงะ (รวมถึงปกและลิงก์) ด้วย \"Something private\"';

  @override
  String get discordConnectionHeader => 'การเชื่อมต่อ';

  @override
  String get listSearchHint => 'ค้นหาในรายการนี้';

  @override
  String get listSort => 'เรียงลำดับ';

  @override
  String get listFilter => 'กรอง';

  @override
  String get listRandom => 'เรื่องสุ่ม';

  @override
  String get listReverse => 'เรียงกลับด้าน';

  @override
  String get listSortDefault => 'ลำดับรายการ';

  @override
  String get listSortScore => 'คะแนนของคุณ';

  @override
  String get listSortTitle => 'ชื่อเรื่อง';

  @override
  String get listSortUpdated => 'อัปเดตล่าสุด';

  @override
  String get listSortProgress => 'ความคืบหน้า';

  @override
  String get listSortReleased => 'วันที่ออกฉาย';

  @override
  String get listSortAverage => 'คะแนนเฉลี่ย';

  @override
  String get listFilterFormat => 'รูปแบบ';

  @override
  String get listFilterStatus => 'สถานะ';

  @override
  String get listFilterGenres => 'แนว';

  @override
  String get listFilterClear => 'ล้างตัวกรอง';

  @override
  String get listNoMatches => 'ไม่มีอะไรในรายการนี้ที่ตรง';

  @override
  String get discordLogin => 'เข้าสู่ระบบ Discord';

  @override
  String get discordToken => 'โทเคน Discord';

  @override
  String get discordTokenSaved => 'บันทึกแล้ว แตะเพื่อเปลี่ยน กดค้างเพื่อลบ';

  @override
  String get discordTokenNotSet => 'ยังไม่ได้ตั้ง แตะเพื่อเพิ่ม';

  @override
  String get discordTokenSavedSnack => 'บันทึกโทเคน Discord แล้ว';

  @override
  String get discordTokenRemovedSnack => 'ลบโทเคน Discord แล้ว';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'เปิดอยู่ · แตะเพื่อเปลี่ยนหน้าตา';

  @override
  String get discordRichPresenceRowOff => 'แสดงสิ่งที่กำลังทำบนโปรไฟล์ Discord';

  @override
  String get loginCancelled => 'ยกเลิกการเข้าสู่ระบบแล้ว';

  @override
  String get invalidToken => 'โทเคนไม่ถูกต้อง';

  @override
  String loginFailed(String error) {
    return 'เข้าสู่ระบบไม่สำเร็จ: $error';
  }

  @override
  String get malLoginFailed => 'เข้าสู่ระบบ MyAnimeList ไม่สำเร็จ';

  @override
  String get kitsuLoginFailed =>
      'เข้าสู่ระบบ Kitsu ไม่สำเร็จ เช็กอีเมลกับรหัสผ่านดู';

  @override
  String get kitsuLoginTitle => 'เข้าสู่ระบบ Kitsu';

  @override
  String get emailOrUsername => 'อีเมลหรือชื่อผู้ใช้';

  @override
  String get password => 'รหัสผ่าน';

  @override
  String get kitsuProfile => 'โปรไฟล์ Kitsu';

  @override
  String get mangaBakaLoginFailed => 'เข้าสู่ระบบ MangaBaka ไม่สำเร็จ';

  @override
  String get mangaBakaProfile => 'โปรไฟล์ MangaBaka';

  @override
  String get refreshFromMangaBaka => 'รีเฟรชจาก MangaBaka';

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
  String get artistsLabel => 'ศิลปิน';

  @override
  String get authorsLabel => 'ผู้เขียน';

  @override
  String get publishersLabel => 'สำนักพิมพ์';

  @override
  String get licensedLabel => 'มีลิขสิทธิ์';

  @override
  String get contentRatingLabel => 'เรตเนื้อหา';

  @override
  String get yesLabel => 'ใช่';

  @override
  String get noLabel => 'ไม่';

  @override
  String get ratingSteps => 'ขั้นของการให้คะแนน';

  @override
  String get hideNsfw => 'ซ่อน NSFW';

  @override
  String get hideNsfwDesc =>
      'ไม่ให้เรื่องผู้ใหญ่โผล่ในฟีดและการค้นหา และแยกรายการผู้ใหญ่ของคุณเองไว้ใน Hidden Media';

  @override
  String get kitsuAccountOptions => 'ตัวเลือกบัญชี Kitsu';

  @override
  String get mangaBakaAccountOptions => 'ตัวเลือกบัญชี MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings => 'อัปเดตการตั้งค่า Kitsu ไม่ได้';

  @override
  String get titleCanonical => 'ชื่อหลัก';

  @override
  String get titleRomanized => 'โรมาจิ';

  @override
  String get titleLocalized => 'ชื่อท้องถิ่น';

  @override
  String get ratingSystem => 'ระบบให้คะแนน';

  @override
  String get ratingSimple => 'แบบง่าย (3 หน้า)';

  @override
  String get ratingRegular => 'แบบปกติ (5 ดาว)';

  @override
  String get ratingAdvanced => 'แบบละเอียด (10 คะแนน)';

  @override
  String get contentFilter => 'ตัวกรองเนื้อหา';

  @override
  String get contentSfw => 'เฉพาะที่ปลอดภัย';

  @override
  String get contentSometimes => 'เนื้อหาผู้ใหญ่ในการค้นหา';

  @override
  String get contentEverywhere => 'เนื้อหาผู้ใหญ่ทุกที่';

  @override
  String get shareToGlobal => 'แชร์ไปฟีดสาธารณะ';

  @override
  String get shareToGlobalDesc => 'ให้กิจกรรมของคุณขึ้นในฟีดสาธารณะของ Kitsu';

  @override
  String get memberSince => 'เป็นสมาชิกตั้งแต่';

  @override
  String get location => 'ที่อยู่';

  @override
  String get accountType => 'ประเภทบัญชี';

  @override
  String get accountSupporter => 'ผู้สนับสนุน';

  @override
  String get accountFree => 'ฟรี';

  @override
  String get accountDetails => 'รายละเอียดบัญชี';

  @override
  String get refreshFromKitsu => 'รีเฟรชจาก Kitsu';

  @override
  String get simklReadOnly => 'Simkl ให้สิทธิ์อ่านอย่างเดียว';

  @override
  String get incognitoEditsBlocked => 'ไม่ระบุตัวตน: ห้ามแก้ไขรายการ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'ไม่ระบุตัวตน: ไม่ได้บันทึกความคืบหน้า';

  @override
  String progressSet(int progress) {
    return 'ตั้งความคืบหน้าเป็น $progress แล้ว';
  }

  @override
  String removedFromList(String title) {
    return 'ลบ $title ออกจากรายการแล้ว';
  }

  @override
  String get following => 'กำลังติดตาม';

  @override
  String get homeSections => 'หมวดหน้าหลัก';

  @override
  String get homeSectionsHint =>
      'ลากเพื่อเรียงลำดับ หมวดที่ซ่อนจะไม่ถูกโหลดเลย';

  @override
  String get customListDeleteFailed => 'ลบรายการกำหนดเองไม่สำเร็จ';

  @override
  String get customListsSaveFailed => 'บันทึกรายการกำหนดเองไม่สำเร็จ';

  @override
  String get customListsSaved => 'บันทึกรายการกำหนดเองแล้ว';

  @override
  String get listName => 'ชื่อรายการ';

  @override
  String get addList => 'เพิ่มรายการ';

  @override
  String voiceActorsIn(String name) {
    return 'นักพากย์ · $name';
  }

  @override
  String get animeAppearances => 'อนิเมะที่ปรากฏ';

  @override
  String get mangaAppearances => 'มังงะที่ปรากฏ';

  @override
  String get voicedCharacters => 'ตัวละครที่พากย์';

  @override
  String get animeCredits => 'เครดิตอนิเมะ';

  @override
  String get mangaCredits => 'เครดิตมังงะ';

  @override
  String get mainProductions => 'ผลงานหลัก';

  @override
  String get otherWorks => 'ผลงานอื่น ๆ';

  @override
  String get prequelSequel => 'ภาคก่อนและภาคต่อ';

  @override
  String get previousSeason => 'ซีซันก่อนหน้า';

  @override
  String get thisSeason => 'ซีซันนี้';

  @override
  String get nextSeason => 'ซีซันหน้า';

  @override
  String get voiceRoles => 'บทบาทพากย์';

  @override
  String get staffPositions => 'ตำแหน่งทีมงาน';

  @override
  String get mangaWorks => 'ผลงานมังงะ';

  @override
  String get malProfile => 'โปรไฟล์ MyAnimeList';

  @override
  String get refreshFromMal => 'รีเฟรชจาก MyAnimeList';

  @override
  String get repullProfileCounts => 'ดึงโปรไฟล์และตัวเลขของคุณใหม่';

  @override
  String get refreshed => 'รีเฟรชแล้ว';

  @override
  String get simklProfile => 'โปรไฟล์ Simkl';

  @override
  String get refreshFromSimkl => 'รีเฟรชจาก Simkl';

  @override
  String get repullProfileLibrary => 'ดึงโปรไฟล์และคลังของคุณใหม่';

  @override
  String get simklSignInToSearch => 'เข้าสู่ระบบ Simkl เพื่อค้นหา';

  @override
  String get dropRate => 'อัตราการทิ้ง';

  @override
  String get simklAttribution => 'ข้อมูลและภาพจาก Simkl ดูบน Simkl';

  @override
  String get onHold => 'พักไว้';

  @override
  String get scoredBy => 'คนให้คะแนน';

  @override
  String get planToWatch => 'วางแผนจะดู';

  @override
  String get planToRead => 'วางแผนจะอ่าน';

  @override
  String get timesRewatched => 'จำนวนครั้งที่ดูซ้ำ';

  @override
  String get timesReread => 'จำนวนครั้งที่อ่านซ้ำ';

  @override
  String get comments => 'คอมเมนต์';

  @override
  String get moviesAndSeries => 'ภาพยนตร์และซีรีส์';

  @override
  String get trackingOnly => 'ติดตามอย่างเดียว';

  @override
  String get signedIn => 'เข้าสู่ระบบแล้ว';

  @override
  String get searchLanguage => 'ภาษาที่ค้นหา';

  @override
  String get savedToList => 'บันทึกลงรายการแล้ว';

  @override
  String get removedFromYourList => 'ลบออกจากรายการแล้ว';

  @override
  String get retry => 'ลองใหม่';

  @override
  String get synopsis => 'เรื่องย่อ';

  @override
  String get details => 'รายละเอียด';

  @override
  String get addToList => 'เพิ่มลงรายการ';

  @override
  String get trailer => 'ตัวอย่าง';

  @override
  String get titleCopied => 'คัดลอกชื่อแล้ว';

  @override
  String get linkCopied => 'คัดลอกลิงก์แล้ว';

  @override
  String get watchTrailer => 'ดูตัวอย่าง';

  @override
  String get copyTitle => 'คัดลอกชื่อ';

  @override
  String get copyLink => 'คัดลอกลิงก์';

  @override
  String get openInBrowser => 'เปิดในเบราว์เซอร์';

  @override
  String viewOnSource(String source) {
    return 'ดูบน $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'ตอนที่ $ep ออกอากาศในอีก $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'ตอนถัดไปในอีก $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'ตอนที่ $chapter น่าจะออกในอีกประมาณ $time';
  }

  @override
  String get logPathCopied => 'คัดลอกพาธไฟล์ล็อกไปคลิปบอร์ดแล้ว';

  @override
  String get animeSource => 'ซอร์สอนิเมะ';

  @override
  String get mangaSource => 'ซอร์สมังงะ';

  @override
  String get popular => 'ยอดนิยม';

  @override
  String get latest => 'ล่าสุด';

  @override
  String get saved => 'บันทึกไว้';

  @override
  String get nothingMatched => 'ไม่มีอะไรตรง';

  @override
  String get nothingSavedFromSource => 'ยังไม่มีอะไรที่บันทึกจากซอร์สนี้';

  @override
  String get sourceReturnedNothing => 'ซอร์สนี้ไม่ส่งอะไรกลับมา';

  @override
  String get checkConnectionOrSource => 'เช็กอินเทอร์เน็ต หรือลองซอร์สอื่นดู';

  @override
  String get tryDifferentSearch => 'ลองคำค้นหาอื่น';

  @override
  String get savedTitlesAppearHere => 'เรื่องที่เพิ่มลงรายการจะขึ้นที่นี่';

  @override
  String get tryOtherFeed => 'ลองฟีดอื่นหรือค้นหาแทนดู';

  @override
  String searchSource(String source) {
    return 'ค้นหาใน $source';
  }

  @override
  String get animeExtensions => 'ส่วนขยายอนิเมะ';

  @override
  String get mangaExtensions => 'ส่วนขยายมังงะ';

  @override
  String get nothingHereYet => 'ยังไม่มีอะไรที่นี่';

  @override
  String get savedOnDeviceUntilLogin =>
      'ทุกอย่างด้านล่างเก็บไว้ในเครื่องนี้จนกว่าคุณจะลบ';

  @override
  String get yourProfile => 'โปรไฟล์ของคุณ';

  @override
  String get activity => 'กิจกรรม';

  @override
  String get extensions => 'ส่วนขยาย';

  @override
  String get logOut => 'ออกจากระบบ';

  @override
  String get logIn => 'เข้าสู่ระบบ';

  @override
  String get logOutConfirm => 'แน่ใจนะว่าจะออกจากระบบ?';

  @override
  String get incognitoMode => 'โหมดไม่ระบุตัวตน';

  @override
  String get alsoBlockListEdits => 'ห้ามแก้ไขรายการด้วย';

  @override
  String get offlineMode => 'โหมดออฟไลน์';

  @override
  String get switchService => 'เปลี่ยนบริการ';

  @override
  String logOutOf(String name) {
    return 'ออกจากระบบ $name';
  }

  @override
  String get loggedIn => 'เข้าสู่ระบบแล้ว';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get nothingNew => 'ไม่มีอะไรใหม่';

  @override
  String get thisWeek => 'สัปดาห์นี้';

  @override
  String get listOnly => 'เฉพาะในรายการ';

  @override
  String get filter => 'กรอง';

  @override
  String get searchResults => 'ผลการค้นหา';

  @override
  String get recentSearches => 'ค้นหาล่าสุด';

  @override
  String get searchOrSetFilter => 'ค้นหาหรือตั้งตัวกรอง';

  @override
  String get filters => 'ตัวกรอง';

  @override
  String get showLess => 'แสดงน้อยลง';

  @override
  String get showAll => 'แสดงทั้งหมด';

  @override
  String get apply => 'ใช้';

  @override
  String get preview => 'ตัวอย่าง';

  @override
  String get preset => 'พรีเซ็ต';

  @override
  String get cardNormal => 'ปกติ';

  @override
  String get cardOnCard => 'บนการ์ด';

  @override
  String get cardInCard => 'ในการ์ด';

  @override
  String get size => 'ขนาด';

  @override
  String get cardWidth => 'ความกว้างการ์ด';

  @override
  String get compact => 'กะทัดรัด';

  @override
  String get coverAndTitleOnly => 'เฉพาะปกและชื่อ';

  @override
  String get titleLines => 'จำนวนบรรทัดชื่อ';

  @override
  String get shape => 'รูปทรง';

  @override
  String get posterShape => 'รูปทรงโปสเตอร์';

  @override
  String get cornerRadius => 'ความโค้งมุม';

  @override
  String get off => 'ปิด';

  @override
  String get topLeft => 'บนซ้าย';

  @override
  String get topRight => 'บนขวา';

  @override
  String get bottomLeft => 'ล่างซ้าย';

  @override
  String get bottomRight => 'ล่างขวา';

  @override
  String get overlays => 'โอเวอร์เลย์';

  @override
  String get progressCount => 'ความคืบหน้า / จำนวน';

  @override
  String get pill => 'แคปซูล';

  @override
  String get bar => 'แถบ';

  @override
  String get outside => 'ด้านนอก';

  @override
  String get scoreBadge => 'ป้ายคะแนน';

  @override
  String get airingDot => 'จุดกำลังออกอากาศ';

  @override
  String get updateAvailable => 'มีอัปเดต';

  @override
  String get notInstalled => 'ยังไม่ได้ติดตั้ง';

  @override
  String get done => 'เสร็จแล้ว';

  @override
  String get searchOrEnterUrl => 'ค้นหาหรือใส่ URL';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get share => 'แชร์';

  @override
  String get characters => 'ตัวละคร';

  @override
  String get staff => 'ทีมงาน';

  @override
  String get readMore => 'อ่านต่อ';

  @override
  String get couldNotLoadList => 'โหลดรายการไม่ได้';

  @override
  String get logInToFavourite => 'เข้าสู่ระบบเพื่อเพิ่มรายการโปรด';

  @override
  String get alsoKnownAs => 'ชื่ออื่น';

  @override
  String get hideSpoilerNames => 'ซ่อนชื่อที่สปอยล์';

  @override
  String get showSpoilerNames => 'แสดงชื่อที่สปอยล์';

  @override
  String get favourited => 'เป็นรายการโปรดแล้ว';

  @override
  String get favourite => 'รายการโปรด';

  @override
  String get couldNotOpenTitle => 'เปิดเรื่องนี้ไม่ได้';

  @override
  String get nobodyHereYet => 'ยังไม่มีใครที่นี่';

  @override
  String get noMatches => 'ไม่มีที่ตรงกัน';

  @override
  String get gridView => 'มุมมองตาราง';

  @override
  String get fullWidth => 'เต็มความกว้าง';

  @override
  String get userNotFound => 'ไม่พบผู้ใช้';

  @override
  String get couldNotUpdateFollow => 'อัปเดตการติดตามไม่ได้';

  @override
  String followedUser(String name) {
    return 'ติดตาม $name แล้ว';
  }

  @override
  String unfollowedUser(String name) {
    return 'เลิกติดตาม $name แล้ว';
  }

  @override
  String get messages => 'ข้อความ';

  @override
  String get logInToSeeMessages => 'เข้าสู่ระบบเพื่อดูข้อความ';

  @override
  String get editActivity => 'แก้ไขกิจกรรม';

  @override
  String get newActivity => 'กิจกรรมใหม่';

  @override
  String get editMessage => 'แก้ไขข้อความ';

  @override
  String get writeMessage => 'เขียนข้อความ';

  @override
  String get editReply => 'แก้ไขการตอบกลับ';

  @override
  String get posted => 'โพสต์แล้ว';

  @override
  String get couldNotPost => 'โพสต์ไม่ได้';

  @override
  String get nothingToPreview => 'ไม่มีอะไรให้ดูตัวอย่าง';

  @override
  String get writeSomethingHint =>
      'เขียนอะไรหน่อย… ใช้มาร์กดาวน์ของ AniList ได้ที่นี่';

  @override
  String get privateMessage => 'ข้อความส่วนตัว';

  @override
  String get post => 'โพสต์';

  @override
  String get nothingHere => 'ไม่มีอะไรที่นี่';

  @override
  String get noAnimeProgress => 'ไม่มีความคืบหน้าอนิเมะ';

  @override
  String get noMangaProgress => 'ไม่มีความคืบหน้ามังงะ';

  @override
  String get noMessages => 'ไม่มีข้อความ';

  @override
  String get writeMessageHint => 'เขียนข้อความ…';

  @override
  String get shareSomethingHint => 'แชร์อะไรหน่อย…';

  @override
  String get all => 'ทั้งหมด';

  @override
  String get anime => 'อนิเมะ';

  @override
  String get manga => 'มังงะ';

  @override
  String get count => 'จำนวน';

  @override
  String get hoursWatched => 'ชั่วโมงที่ดู';

  @override
  String get chaptersRead => 'ตอนที่อ่าน';

  @override
  String get meanScore => 'คะแนนเฉลี่ย';

  @override
  String get noStatsYet => 'ยังไม่มีสถิติ';

  @override
  String get totalEntries => 'รายการทั้งหมด';

  @override
  String get episodesWatched => 'ตอนที่ดู';

  @override
  String get daysWatched => 'วันที่ดู';

  @override
  String get volumesRead => 'เล่มที่อ่าน';

  @override
  String get standardDeviation => 'ส่วนเบี่ยงเบนมาตรฐาน';

  @override
  String get showMore => 'แสดงเพิ่ม';

  @override
  String get followsYou => 'ติดตามคุณ';

  @override
  String get nobodyYet => 'ยังไม่มีใคร';

  @override
  String get logInToLike => 'เข้าสู่ระบบเพื่อกดไลก์';

  @override
  String get failedToLikeActivity => 'กดไลก์กิจกรรมไม่สำเร็จ';

  @override
  String get deleteActivityConfirm => 'ลบกิจกรรมไหม?';

  @override
  String get deletedActivity => 'ลบกิจกรรมแล้ว';

  @override
  String get failedToDeleteActivity => 'ลบกิจกรรมไม่สำเร็จ';

  @override
  String get subscribed => 'สมัครรับแล้ว';

  @override
  String get unsubscribed => 'เลิกรับแล้ว';

  @override
  String get failedToUpdateSubscription => 'อัปเดตการสมัครรับไม่สำเร็จ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get delete => 'ลบ';

  @override
  String get likedBy => 'คนที่ไลก์';

  @override
  String get follow => 'ติดตาม';

  @override
  String get nameCopied => 'คัดลอกชื่อแล้ว';

  @override
  String get followsEachOther => 'ติดตามกันและกัน';

  @override
  String get unfollow => 'เลิกติดตาม';

  @override
  String get userIdCopied => 'คัดลอก ID ผู้ใช้แล้ว';

  @override
  String get shareProfile => 'แชร์โปรไฟล์';

  @override
  String get copyUserId => 'คัดลอก ID ผู้ใช้';

  @override
  String get failedToDelete => 'ลบไม่สำเร็จ';

  @override
  String get failedToLike => 'ไลก์ไม่สำเร็จ';

  @override
  String get replies => 'การตอบกลับ';

  @override
  String get reply => 'ตอบกลับ';

  @override
  String get noRepliesYet => 'ยังไม่มีการตอบกลับ';

  @override
  String get favouriteAnime => 'อนิเมะโปรด';

  @override
  String get favouriteManga => 'มังงะโปรด';

  @override
  String get favouriteCharacters => 'ตัวละครโปรด';

  @override
  String get favouriteStaff => 'ทีมงานโปรด';

  @override
  String get favouriteStudios => 'สตูดิโอโปรด';

  @override
  String get noFavouritesYet => 'ยังไม่มีรายการโปรด';

  @override
  String get yourStory => 'สตอรี่ของคุณ';

  @override
  String get copiedToClipboard => 'คัดลอกไปคลิปบอร์ดแล้ว';

  @override
  String get justNow => 'เมื่อกี้';

  @override
  String get openImage => 'เปิดรูป';

  @override
  String get hideSpoiler => 'ซ่อนสปอยล์';

  @override
  String get showSpoiler => 'แสดงสปอยล์';

  @override
  String get status => 'สถานะ';

  @override
  String get score => 'คะแนน';

  @override
  String get started => 'เริ่มเมื่อ';

  @override
  String get completed => 'จบเมื่อ';

  @override
  String get private => 'ส่วนตัว';

  @override
  String get hideFromStatusLists => 'ซ่อนจากรายการตามสถานะ';

  @override
  String get totalRepeats => 'จำนวนครั้งที่ซ้ำทั้งหมด';

  @override
  String get other => 'อื่น ๆ';

  @override
  String get customLists => 'รายการกำหนดเอง';

  @override
  String get activeDays => 'วันที่ใช้งาน';

  @override
  String get longestStreak => 'ต่อเนื่องนานสุด';

  @override
  String get currentStreak => 'ต่อเนื่องตอนนี้';

  @override
  String get tapOrHoverDay => 'แตะหรือเอาเมาส์ชี้ที่วัน';

  @override
  String get less => 'น้อย';

  @override
  String get more => 'มาก';

  @override
  String epIn(int ep, String time) {
    return 'ตอน $ep ในอีก $time';
  }

  @override
  String get sectionLoading => 'กำลังโหลด';

  @override
  String get querySize => 'ขนาดการสืบค้น';

  @override
  String get querySizeDesc =>
      'แบบก้อนใหญ่จะโหลดทุกแถว (และโปรไฟล์ทั้งหมด) ในคำขอเดียว แบบแยกจะส่งคำขอเล็ก ๆ ต่อแถวหรือต่อส่วนของโปรไฟล์ แต่ละอันเร็ว และส่วนต่าง ๆ จะขึ้นเมื่อมาถึง';

  @override
  String get oneBig => 'ก้อนใหญ่';

  @override
  String get split => 'แยก';

  @override
  String get sectionSocial => 'โซเชียล';

  @override
  String get systemNotifications => 'การแจ้งเตือนระบบ';

  @override
  String get feedLayout => 'เลย์เอาต์ฟีด';

  @override
  String sectionsShown(int shown, int total) {
    return 'แสดง $shown จาก $total — แตะเพื่อเลือกและเรียงลำดับ';
  }

  @override
  String labelSections(String label) {
    return 'หมวด$label';
  }

  @override
  String get accountOptions => 'ตัวเลือกบัญชี';

  @override
  String get anilistAccountOptions => 'ตัวเลือกบัญชี AniList';

  @override
  String get sectionPrivacy => 'ความเป็นส่วนตัว';

  @override
  String get hidePrivateEntries => 'ซ่อนรายการส่วนตัว';

  @override
  String get hidePrivateEntriesDesc =>
      'ไม่เอารายการที่ตั้งเป็นส่วนตัวใน AniList มาขึ้นในฟีด';

  @override
  String get anilistExcludeList => 'ไม่รวมลิสต์ของฉัน';

  @override
  String get anilistExcludeListDesc =>
      'ซ่อนเรื่องที่อยู่ใน AniList ของคุณแล้วจากหน้าอนิเมะและมังงะ';

  @override
  String get anilistProfile => 'โปรไฟล์ AniList';

  @override
  String get refreshFromAnilist => 'รีเฟรชจาก AniList';

  @override
  String get couldNotUpdateAnilistSettings => 'อัปเดตการตั้งค่า AniList ไม่ได้';

  @override
  String get sectionNames => 'ชื่อ';

  @override
  String get titleLanguage => 'ภาษาของชื่อเรื่อง';

  @override
  String get titleLanguageDesc =>
      'วิธีเขียนชื่อเรื่องทุกที่ เช่น Attack on Titan / Shingeki no Kyojin / 進撃の巨人';

  @override
  String get staffCharacterNames => 'ชื่อทีมงานและตัวละคร';

  @override
  String get sectionLists => 'รายการ';

  @override
  String get scoreFormat => 'รูปแบบคะแนน';

  @override
  String get sortListsBy => 'เรียงรายการตาม';

  @override
  String labelCustomLists(String label) {
    return 'รายการกำหนดเอง$label';
  }

  @override
  String customListsCount(int count) {
    return '$count รายการ — แตะเพื่อเพิ่มหรือลบ';
  }

  @override
  String get mergeActivities => 'รวมกิจกรรม';

  @override
  String minutesCount(int count) {
    return '$count นาที';
  }

  @override
  String get timezone => 'เขตเวลา';

  @override
  String get notSet => 'ยังไม่ได้ตั้ง';

  @override
  String get airingNotifications => 'แจ้งเตือนการออกอากาศ';

  @override
  String get airingNotificationsDesc =>
      'แจ้งเตือนเมื่อตอนใหม่ของเรื่องที่ติดตามออกอากาศ';

  @override
  String get displayAdultContent => 'แสดงเนื้อหาผู้ใหญ่';

  @override
  String get displayAdultContentDesc =>
      'รวมเรื่อง 18+ ในการเลือกดู ค้นหา และฟีด';

  @override
  String get restrictMessages => 'จำกัดข้อความเฉพาะคนที่ติดตาม';

  @override
  String get restrictMessagesDesc =>
      'เฉพาะคนที่คุณติดตามเท่านั้นที่ส่งข้อความหาคุณได้';

  @override
  String get sectionServices => 'บริการ';

  @override
  String get novel => 'นิยาย';

  @override
  String labelService(String label) {
    return 'บริการ$label';
  }

  @override
  String nameSettings(String name) {
    return 'ตั้งค่า $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'ตัวเลือกจากบริดจ์ส่วนขยาย $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name เริ่มไม่ได้: $error';
  }

  @override
  String get importLists => 'นำเข้ารายการ';

  @override
  String get importListsDesc =>
      'จากข้อมูลสำรอง Aniyomi, Mihon / Tachiyomi หรือ Kotatsu';

  @override
  String get exportLists => 'ส่งออกรายการ';

  @override
  String get exportListsDesc => 'เป็นข้อมูลสำรอง Aniyomi, Mihon หรือ Kotatsu';

  @override
  String get sectionBrowse => 'เลือกดู';

  @override
  String get readingTab => 'แท็บอ่าน';

  @override
  String get readingTabDesc => 'ส่วนขยายที่แท็บที่สามจะแสดง';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'ฟีดเริ่มต้น';

  @override
  String get defaultFeedDesc => 'รายการที่ซอร์สจะเปิดขึ้นมา';

  @override
  String noServiceSupports(String type) {
    return 'ไม่มีบริการไหนรองรับ $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · กำลังโหลด $loaded จาก $installed ซอร์ส';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ไม่มีบริการส่วนขยายที่รองรับ $type ที่นี่';
  }

  @override
  String get loadDataFrom => 'โหลดข้อมูลจาก';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ยังไม่มีซอร์ส $type ที่ติดตั้ง';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'ยังไม่ได้ติดตั้งส่วนขยายของ $name';
  }

  @override
  String get thisSource => 'ซอร์สนี้';

  @override
  String failedToAddRepository(String error) {
    return 'เพิ่มคลังไม่สำเร็จ: $error';
  }

  @override
  String installedType(String type) {
    return '$type ที่ติดตั้งแล้ว';
  }

  @override
  String availableType(String type) {
    return '$type ที่มี';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ไม่มีส่วนขยาย $type ที่ติดตั้ง';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ไม่มีส่วนขยาย $type ให้ติดตั้ง';
  }

  @override
  String get nothingToShowYet => 'ยังไม่มีอะไรให้ดู';

  @override
  String get addTitlesHint => 'เพิ่มเรื่องลงรายการแล้วจะขึ้นที่นี่';

  @override
  String get couldntLoad => 'โหลดไม่ได้';

  @override
  String get progressStyleHint =>
      'แคปซูลและแถบทับบนโปสเตอร์ ส่วนด้านนอกแสดงจำนวนเดียวกันเป็นข้อความธรรมดา — เลือกอย่างใดอย่างหนึ่ง';

  @override
  String get nixManagedUpdate =>
      'บิลด์นี้จัดการโดย Nix — ให้รัน \"nix flake update\" บน flake ของคุณแล้วบิลด์ใหม่ แทนการอัปเดตจากตรงนี้';

  @override
  String autoUpdateFailed(String error) {
    return 'อัปเดตอัตโนมัติไม่สำเร็จ ($error) — เปิดหน้าดาวน์โหลดแทน';
  }

  @override
  String get unknownPreference => 'ค่ากำหนดที่ไม่รู้จัก';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ไม่รองรับค่ากำหนดประเภท $type';
  }

  @override
  String get notYetReleased => 'ยังไม่ออกฉาย';

  @override
  String get notStarted => 'ยังไม่เริ่ม';

  @override
  String get country => 'ประเทศ';

  @override
  String get sort => 'เรียงลำดับ';

  @override
  String get chooseBackupDialog =>
      'เลือกข้อมูลสำรอง Aniyomi, Mihon หรือ Kotatsu';

  @override
  String get importListsHint =>
      'ย้ายคลังมาจาก Aniyomi, Mihon / Tachiyomi หรือ Kotatsu ชื่อเรื่อง ปก ความคืบหน้า และหมวดหมู่จะยังอยู่';

  @override
  String get chooseBackupFile => 'เลือกไฟล์สำรอง';

  @override
  String importAnimeCount(int count) {
    return 'นำเข้าอนิเมะ $count เรื่อง';
  }

  @override
  String importMangaCount(int count) {
    return 'นำเข้ามังงะ $count เรื่อง';
  }

  @override
  String get mergeWithExisting => 'รวมกับรายการที่มี';

  @override
  String get mergeWithExistingDesc =>
      'เก็บของที่มีอยู่ไว้ ถ้าปิดจะแทนที่เรื่องที่ตรงกัน';

  @override
  String get chooseAnother => 'เลือกอันอื่น';

  @override
  String get import => 'นำเข้า';

  @override
  String animeCount(int count) {
    return 'อนิเมะ $count เรื่อง';
  }

  @override
  String mangaCount(int count) {
    return 'มังงะ $count เรื่อง';
  }

  @override
  String get chooseSaveLocation => 'เลือกที่บันทึกข้อมูลสำรอง';

  @override
  String savedPath(String path) {
    return 'บันทึก $path แล้ว';
  }

  @override
  String exportFailed(String error) {
    return 'ส่งออกไม่สำเร็จ: $error';
  }

  @override
  String get nothingInLocalLists => 'ยังไม่มีอะไรในรายการในเครื่อง';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ส่งออกอนิเมะ $anime เรื่องและมังงะ $manga เรื่องจากรายการในเครื่อง Kotatsu รองรับแค่มังงะ';
  }

  @override
  String get saveToFolder => 'บันทึกลงโฟลเดอร์';

  @override
  String get formatAnimeManga => 'อนิเมะและมังงะ · .tachibk';

  @override
  String get formatMangaTachibk => 'มังงะอย่างเดียว · .tachibk';

  @override
  String get formatMangaZip => 'มังงะอย่างเดียว · .zip';

  @override
  String get genres => 'แนว';

  @override
  String get relations => 'เรื่องที่เกี่ยวข้อง';

  @override
  String get recommendations => 'แนะนำ';

  @override
  String get openings => 'เพลงเปิด';

  @override
  String get endings => 'เพลงปิด';

  @override
  String get background => 'เบื้องหลัง';

  @override
  String get links => 'ลิงก์';

  @override
  String get rank => 'อันดับ';

  @override
  String get members => 'สมาชิก';

  @override
  String get favorites => 'รายการโปรด';

  @override
  String get episodes => 'ตอน';

  @override
  String get chapters => 'ตอน';

  @override
  String get volumes => 'เล่ม';

  @override
  String get format => 'รูปแบบ';

  @override
  String get source => 'ซอร์ส';

  @override
  String get duration => 'ความยาว';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes นาทีต่อตอน';
  }

  @override
  String get rating => 'เรต';

  @override
  String get studio => 'สตูดิโอ';

  @override
  String get serialization => 'ลงตีพิมพ์ใน';

  @override
  String get season => 'ซีซัน';

  @override
  String get broadcast => 'ออกอากาศ';

  @override
  String get aired => 'ออกอากาศเมื่อ';

  @override
  String get published => 'ตีพิมพ์เมื่อ';

  @override
  String get popularity => 'ความนิยม';

  @override
  String get community => 'ชุมชน';

  @override
  String get watching => 'กำลังดู';

  @override
  String get reading => 'กำลังอ่าน';

  @override
  String get dropped => 'ทิ้งกลางคัน';

  @override
  String get planned => 'วางแผนไว้';

  @override
  String get trailers => 'ตัวอย่าง';

  @override
  String get ratings => 'เรตติ้ง';

  @override
  String get originalTitle => 'ต้นฉบับ';

  @override
  String get titleLabel => 'ชื่อเรื่อง';

  @override
  String get votes => 'โหวต';

  @override
  String get watchedStat => 'ดูแล้ว';

  @override
  String get runtime => 'ความยาว';

  @override
  String get director => 'ผู้กำกับ';

  @override
  String get network => 'เครือข่าย';

  @override
  String get certification => 'การจัดเรต';

  @override
  String get airs => 'ออกอากาศ';

  @override
  String get budget => 'งบประมาณ';

  @override
  String get revenue => 'รายได้';

  @override
  String get released => 'ออกฉายเมื่อ';

  @override
  String get tags => 'แท็ก';

  @override
  String get author => 'ผู้เขียน';

  @override
  String get born => 'วันเกิด';

  @override
  String get website => 'เว็บไซต์';

  @override
  String get established => 'ก่อตั้ง';

  @override
  String get manhwa => 'มันฮวา';

  @override
  String get manhua => 'มันหัว';

  @override
  String get novels => 'นิยาย';

  @override
  String get thisMonth => 'เดือนนี้';

  @override
  String get movies => 'ภาพยนตร์';

  @override
  String get shows => 'รายการทีวี';

  @override
  String get rewatching => 'กำลังดูซ้ำ';

  @override
  String get rereading => 'กำลังอ่านซ้ำ';

  @override
  String get watchedStatus => 'ดูแล้ว';

  @override
  String get planning => 'วางแผนไว้';

  @override
  String get paused => 'พักไว้';

  @override
  String get watch => 'ดู';

  @override
  String get read => 'อ่าน';

  @override
  String get finished => 'จบแล้ว';

  @override
  String get releasing => 'กำลังออกอากาศ';

  @override
  String get cancelled => 'ยกเลิก';

  @override
  String get hiatus => 'พักการผลิต';

  @override
  String get remove => 'เอาออก';

  @override
  String syncToService(String service) {
    return 'ซิงก์ไป $service';
  }

  @override
  String syncedToService(String service) {
    return 'ซิงก์ไป $service แล้ว';
  }

  @override
  String get latestReleases => 'ออกใหม่ล่าสุด';

  @override
  String get topRated => 'คะแนนสูงสุด';

  @override
  String localSection(String title) {
    return '$title · ในเครื่อง';
  }

  @override
  String get localEntryNote =>
      'เรื่องนี้อยู่ในรายการในเครื่องนี้เท่านั้น ปิดการแก้ไขไว้เพราะอาจชนกับรายการในบัญชีของคุณ แต่ยังลบได้';

  @override
  String get cardPresetPoster => 'โปสเตอร์';

  @override
  String get cardPresetCard => 'การ์ด';

  @override
  String get cardPresetCozy => 'ซอฟต์';

  @override
  String get sortTopRated => 'คะแนนสูงสุด';

  @override
  String get sortMostPopular => 'ยอดนิยมที่สุด';

  @override
  String get sortTrending => 'กำลังฮิต';

  @override
  String get sortNewest => 'ใหม่สุด';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'โปรดที่สุด';

  @override
  String get anyCountry => 'ทุกประเทศ';

  @override
  String get orderScore => 'คะแนน';

  @override
  String get orderTitle => 'ชื่อเรื่อง';

  @override
  String get orderLastUpdated => 'อัปเดตล่าสุด';

  @override
  String get orderLastAdded => 'เพิ่มล่าสุด';

  @override
  String get never => 'ไม่เลย';

  @override
  String get always => 'ตลอด';

  @override
  String get scorePoint100 => '100 คะแนน';

  @override
  String get scorePoint10Decimal => '10 คะแนนทศนิยม';

  @override
  String get scorePoint10 => '10 คะแนน';

  @override
  String get scorePoint5 => '5 ดาว';

  @override
  String get scorePoint3 => '3 คะแนนหน้ายิ้ม';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมง',
      one: '1 ชั่วโมง',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
      one: '1 วัน',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count สัปดาห์',
      one: '1 สัปดาห์',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ดูต่อ';

  @override
  String get resumeSourceMissing => 'ติดตั้งซอร์สของเรื่องนี้เพื่อดูต่อ';

  @override
  String get resumeRemove => 'เอาออกจากดูต่อ';

  @override
  String resumeAt(String time) {
    return 'เหลืออีก $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'หน้า $page จาก $total';
  }

  @override
  String get continueWatching => 'ดูต่อ';

  @override
  String get continueReading => 'อ่านต่อ';

  @override
  String get favouriteAnimeSection => 'อนิเมะโปรด';

  @override
  String get favouriteMangaSection => 'มังงะโปรด';

  @override
  String get plannedAnime => 'อนิเมะที่วางแผนไว้';

  @override
  String get plannedManga => 'มังงะที่วางแผนไว้';

  @override
  String get completedAnime => 'อนิเมะที่จบแล้ว';

  @override
  String get completedManga => 'มังงะที่จบแล้ว';

  @override
  String get hiddenMedia => 'Hidden Media';

  @override
  String get recentUpdates => 'อัปเดตล่าสุด';

  @override
  String get trendingNow => 'กำลังฮิตตอนนี้';

  @override
  String get popularThisSeason => 'ยอดนิยมซีซันนี้';

  @override
  String get trendingMovies => 'ภาพยนตร์ที่กำลังฮิต';

  @override
  String get topRatedSeries => 'ซีรีส์คะแนนสูงสุด';

  @override
  String get mostFavouriteSeries => 'ซีรีส์ที่โปรดที่สุด';

  @override
  String get popularAnime => 'อนิเมะยอดนิยม';

  @override
  String get trendingManhwa => 'มันฮวาที่กำลังฮิต';

  @override
  String get trendingNovels => 'นิยายที่กำลังฮิต';

  @override
  String get topRatedManga => 'มังงะคะแนนสูงสุด';

  @override
  String get mostFavouriteManga => 'มังงะที่โปรดที่สุด';

  @override
  String get popularManga => 'มังงะยอดนิยม';

  @override
  String get topMovies => 'ภาพยนตร์ยอดเยี่ยม';

  @override
  String get topOna => 'ONA ยอดเยี่ยม';

  @override
  String get topOva => 'OVA ยอดเยี่ยม';

  @override
  String get mostPopular => 'ยอดนิยมที่สุด';

  @override
  String get mostFavourite => 'โปรดที่สุด';

  @override
  String get upcoming => 'เร็ว ๆ นี้';

  @override
  String get topManga => 'มังงะยอดเยี่ยม';

  @override
  String get topManhwa => 'มันฮวายอดเยี่ยม';

  @override
  String get topManhua => 'มันหัวยอดเยี่ยม';

  @override
  String get topNovels => 'นิยายยอดเยี่ยม';

  @override
  String get topOneShots => 'วันช็อตยอดเยี่ยม';

  @override
  String get trendingMoviesToday => 'ภาพยนตร์ที่ฮิตวันนี้';

  @override
  String get trendingShowsToday => 'รายการทีวีที่ฮิตวันนี้';

  @override
  String get trendingMoviesWeek => 'ภาพยนตร์ที่ฮิตสัปดาห์นี้';

  @override
  String get trendingShowsWeek => 'รายการทีวีที่ฮิตสัปดาห์นี้';

  @override
  String get mostWatchedMoviesMonth => 'ภาพยนตร์ที่ดูมากสุดเดือนนี้';

  @override
  String get mostWatchedShowsMonth => 'รายการทีวีที่ดูมากสุดเดือนนี้';

  @override
  String get trendingThisWeek => 'ฮิตสัปดาห์นี้';

  @override
  String get mostWatchedThisMonth => 'ดูมากสุดเดือนนี้';

  @override
  String get repoLinksAdded => 'เพิ่มลิงก์คลังสำเร็จแล้ว!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'ดึงข้อมูลจาก AniList ผิดพลาด';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'COMMENTS';

  @override
  String get playerNotAvailable => 'เครื่องเล่นยังใช้ไม่ได้';

  @override
  String deepLinkInitialError(String error) {
    return 'ดึงลิงก์ลึกเริ่มต้นผิดพลาด: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'เปิดลิงก์ผิดพลาด: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'เปิดลิงก์นี้ไม่ได้: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'เปิดลิงก์ผิดพลาด: $error';
  }

  @override
  String get forReleasingTitles => 'สำหรับเรื่องที่กำลังออกอากาศ';

  @override
  String get progress => 'ความคืบหน้า';

  @override
  String get notes => 'โน้ต';

  @override
  String serviceNotFound(String id) {
    return 'ไม่พบบริการ \"$id\"';
  }

  @override
  String get glassEffectEnabled => 'เปิดเอฟเฟกต์กระจกแล้ว';

  @override
  String get glassEffectDisabled => 'ปิดเอฟเฟกต์กระจกแล้ว';

  @override
  String get materialYouEnabled => 'เปิด Material You แล้ว';

  @override
  String get materialYouDisabled => 'ปิด Material You แล้ว';

  @override
  String get darkModeEnabled => 'เปิดโหมดมืดแล้ว';

  @override
  String get darkModeDisabled => 'ปิดโหมดมืดแล้ว';

  @override
  String get animeList => 'รายการอนิเมะ';

  @override
  String get mangaList => 'รายการมังงะ';

  @override
  String ownerAnimeList(String owner) {
    return 'รายการอนิเมะของ $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'รายการมังงะของ $owner';
  }

  @override
  String get loadingList => 'กำลังโหลดรายการ';

  @override
  String get earlier => 'ก่อนหน้านี้';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วันที่แล้ว',
      one: '1 วันที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชั่วโมงที่แล้ว',
      one: '1 ชั่วโมงที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count นาทีที่แล้ว',
      one: '1 นาทีที่แล้ว',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count นาทีที่แล้ว';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ชม.ที่แล้ว';
  }

  @override
  String daysAgoShort(int count) {
    return '$count วันที่แล้ว';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count สัปดาห์ที่แล้ว';
  }

  @override
  String get couldntLoadSource => 'โหลดซอร์สนี้ไม่ได้';

  @override
  String get followers => 'ผู้ติดตาม';

  @override
  String couldntLoadTitle(String title) {
    return 'โหลด $title ไม่ได้';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'โหลดโปรไฟล์นี้ไม่ได้';

  @override
  String get profile => 'โปรไฟล์';

  @override
  String get feed => 'ฟีด';

  @override
  String get stats => 'สถิติ';

  @override
  String get received => 'ที่ได้รับ';

  @override
  String get sent => 'ที่ส่ง';

  @override
  String get global => 'ทั่วโลก';

  @override
  String get couldntLoadPage => 'โหลดหน้านี้ไม่ได้';

  @override
  String get couldntLoadAllDetails => 'โหลดรายละเอียดไม่ครบ';

  @override
  String get series => 'ซีรีส์';

  @override
  String get studios => 'สตูดิโอ';

  @override
  String get users => 'ผู้ใช้';

  @override
  String repositoriesTitle(String type) {
    return 'คลัง $type';
  }

  @override
  String get repositoryUrl => 'URL คลัง';

  @override
  String get downloadingRepository => 'กำลังดาวน์โหลดคลัง…';

  @override
  String get noRepositories => 'ยังไม่ได้เพิ่มคลัง';

  @override
  String repoExtensionsCount(String count) {
    return '$count ส่วนขยาย';
  }

  @override
  String get searchExtensions => 'ค้นหาส่วนขยาย...';

  @override
  String deletePluginTitle(String name) {
    return 'ลบ $name ไหม?';
  }

  @override
  String get deletePluginMessage => 'แน่ใจนะว่าจะลบปลั๊กอินนี้?';

  @override
  String pluginDeleted(String name) {
    return 'ลบ $name แล้ว';
  }

  @override
  String pluginNotInRepo(String name) {
    return 'ไม่มี $name ในคลังที่ตั้งไว้';
  }

  @override
  String get pluginFetchFailed => 'ดึงข้อมูลปลั๊กอินไม่สำเร็จ';

  @override
  String installPluginTitle(String name) {
    return 'ติดตั้ง $name';
  }

  @override
  String sizeLabel(String size) {
    return 'ขนาด: $size';
  }

  @override
  String get installedState => 'ติดตั้งแล้ว';

  @override
  String get errorLabel => 'ข้อผิดพลาด:';

  @override
  String get stackTraceDetails => 'รายละเอียด (สแตกเทรซ)';

  @override
  String get shareLogFile => 'แชร์ไฟล์ล็อก';

  @override
  String get copyLogs => 'คัดลอกล็อก';

  @override
  String noListToEdit(String service) {
    return '$service ไม่มีรายการให้แก้ไข';
  }

  @override
  String get couldNotReadFile => 'อ่านไฟล์นั้นไม่ได้';

  @override
  String importedSummary(int anime, int manga) {
    return 'นำเข้าอนิเมะ $anime เรื่องและมังงะ $manga เรื่องแล้ว';
  }

  @override
  String alreadyThere(int count) {
    return ' · มีอยู่แล้ว $count รายการ';
  }

  @override
  String get airingNow => 'กำลังออกอากาศ';

  @override
  String get topRatedMovies => 'ภาพยนตร์คะแนนสูงสุด';

  @override
  String get koreanDramas => 'ซีรีส์เกาหลี';

  @override
  String get chineseDramas => 'ซีรีส์จีน';

  @override
  String get japaneseDramas => 'ซีรีส์ญี่ปุ่น';

  @override
  String get thaiDramas => 'ละครไทย';

  @override
  String get turkishDramas => 'ซีรีส์ตุรกี';

  @override
  String get miniSeries => 'มินิซีรีส์';

  @override
  String get topRatedShows => 'รายการทีวีคะแนนสูงสุด';

  @override
  String get recommendedSection => 'แนะนำ';

  @override
  String get syncRow => 'ซิงก์รายการ';

  @override
  String get syncRowDesc => 'คัดลอกรายการของบริการหนึ่งไปยังบัญชีอื่นของคุณ';

  @override
  String get syncTitle => 'ซิงก์';

  @override
  String get syncMainService => 'บริการหลัก';

  @override
  String get syncMainServiceDesc =>
      'ใช้รายการของบริการนี้เป็นหลัก บริการอื่นที่เข้าสู่ระบบอยู่จะถูกอัปเดตให้ตรงกัน';

  @override
  String get syncAuto => 'ซิงก์อัตโนมัติ';

  @override
  String get syncAutoDesc => 'ดึงและซิงก์ในพื้นหลังตอนเปิดแอปและทุก 30 นาที';

  @override
  String get syncAddMissing => 'เพิ่มรายการที่ขาด';

  @override
  String get syncAddMissingDesc => 'เพิ่มรายการที่อีกบริการยังไม่มีด้วย';

  @override
  String get syncOnlyForward => 'เก็บความคืบหน้าที่ไปไกลกว่า';

  @override
  String get syncOnlyForwardDesc => 'ไม่ลดความคืบหน้าของบริการที่นำอยู่แล้ว';

  @override
  String get syncFetch => 'ดึงข้อมูล';

  @override
  String get syncFetchAgain => 'ดึงอีกครั้ง';

  @override
  String get syncAll => 'ซิงก์ทั้งหมด';

  @override
  String get syncStop => 'หยุด';

  @override
  String get syncResume => 'ทำต่อ';

  @override
  String get syncNothingToSync => 'บริการนี้ซิงก์ประเภทนี้ไม่ได้';

  @override
  String get syncNoTargets => 'เข้าสู่ระบบบริการอื่นเพื่อซิงก์';

  @override
  String get syncLoadingMap => 'กำลังโหลดการจับคู่ ID';

  @override
  String get syncComparing => 'กำลังเทียบรายการ';

  @override
  String get syncIntro =>
      'เลือกบริการหลักแล้วกดดึงข้อมูล ระบบจะขอรายการจากแต่ละบริการหนึ่งครั้ง แล้วเทียบกับบริการหลัก';

  @override
  String get syncStateSynced => 'ซิงก์แล้ว';

  @override
  String get syncStateOutdated => 'ไม่ตรงกัน';

  @override
  String get syncStateMissing => 'ไม่อยู่ในรายการ';

  @override
  String get syncStateUnmapped => 'ไม่มีที่ตรงกัน';

  @override
  String syncPaused(String time) {
    return 'รอจำกัดอัตราคำขอ จะทำต่อในอีก $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count รายการมีแค่บน $name ไม่ได้แตะต้อง';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done จาก $total';
  }

  @override
  String get syncNothingHere => 'ไม่มีอะไรให้ดู';

  @override
  String syncLimits(int used, int max, String window) {
    return 'ใช้คำขอไปแล้ว $used จาก $max ใน$windowนี้';
  }

  @override
  String get syncMinute => 'นาที';

  @override
  String get syncDay => 'วัน';

  @override
  String get syncNotInList => 'ยังไม่อยู่ในรายการ';

  @override
  String get syncCleared => 'ล้างแผนแล้ว';

  @override
  String get syncClear => 'ล้าง';

  @override
  String get syncOptions => 'ตัวเลือก';

  @override
  String get syncShared => 'ใช้รายการเดียวกับอีกเรื่อง';

  @override
  String syncNotFound(String service) {
    return 'ไม่พบบน $service';
  }

  @override
  String syncService(String service, int count) {
    return 'ซิงก์ $service ($count)';
  }

  @override
  String get syncOnEdit => 'ซิงก์การเปลี่ยนแปลงทันที';

  @override
  String get syncOnEditDesc =>
      'ส่งทุกการอัปเดตความคืบหน้าและการแก้ไขรายการไปยังบริการอื่นที่เข้าสู่ระบบอยู่ทันที';

  @override
  String syncPushed(String services) {
    return 'ซิงก์ไป $services แล้ว';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'ถูกจำกัดอัตราคำขอ ลองใหม่อีกสักพัก';

  @override
  String get syncAhead => 'อันไหนไปไกลกว่าก็เอาอันนั้น';

  @override
  String get syncAheadDesc =>
      'สองทาง: แต่ละเรื่องอันที่ไปไกลที่สุดจะชนะและถูกคัดลอกไปบริการอื่นของคุณทั้งหมด';

  @override
  String syncAheadFrom(String service) {
    return 'จาก $service';
  }

  @override
  String get syncConfirm => 'ตรวจดูก่อนซิงก์';

  @override
  String get syncConfirmDesc =>
      'แสดงสิ่งที่ซิงก์ทั้งหมดจะเปลี่ยนและต้องใช้กี่คำขอ';

  @override
  String get syncPreviewTitle => 'พร้อมซิงก์';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'อัปเดต $updates รายการ เพิ่ม $adds รายการ';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'ประมาณ $count คำขอ';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID ต้องค้นหาก่อน';
  }

  @override
  String get syncPreviewNothing => 'ไม่มีอะไรต้องเปลี่ยน';

  @override
  String get syncStart => 'เริ่ม';

  @override
  String get syncRetry => 'ลองใหม่';

  @override
  String get syncSkip => 'ข้ามรายการนี้';

  @override
  String get syncInclude => 'รวมรายการนี้อีกครั้ง';

  @override
  String get syncSkippedLabel => 'ข้ามแล้ว';

  @override
  String get syncChanges => 'ความต่าง';

  @override
  String get syncChangeStatus => 'สถานะ';

  @override
  String get syncChangeProgress => 'ความคืบหน้า';

  @override
  String get syncChangeScore => 'คะแนน';

  @override
  String get syncChangeDates => 'วันที่';

  @override
  String get syncChangeRepeat => 'จำนวนครั้งที่ดูซ้ำ';

  @override
  String get syncFailedReason => 'ทำไมถึงไม่สำเร็จ';

  @override
  String get syncSkippedHint => 'รายการที่ข้ามจะไม่ถูกแตะต้อง แม้ดึงข้อมูลใหม่';

  @override
  String get commentsRules => 'กฎการคอมเมนต์';

  @override
  String get commentsRulesBody =>
      'ฝ่าฝืนกฎข้อไหนก็โดนเตะ\n\n1. ห้ามเหยียดเชื้อชาติ เลือกปฏิบัติ หรือใช้คำพูดสร้างความเกลียดชัง\n2. ห้ามสแปมหรือโปรโมตตัวเอง\n3. ห้ามมีเนื้อหา NSFW เด็ดขาด\n4. ภาษาอังกฤษเท่านั้น ไม่มีข้อยกเว้น\n5. ห้ามแอบอ้างตัวตน คุกคาม หรือด่าทอ\n6. ห้ามเนื้อหาผิดกฎหมายหรือดูหมิ่นแฟนดอมใดอย่างรุนแรง\n7. ห้ามขอหรือแชร์คลังหรือส่วนขยาย\n8. สปอยล์ได้เฉพาะเมื่อใส่แท็กสปอยล์และคำเตือน\n9. ห้ามคอมเมนต์ในเชิงลามกหรือไม่เหมาะสมเกี่ยวกับตัวละครที่เป็นเด็ก\n10. ถ้ามันผิด ก็อย่าโพสต์!';

  @override
  String get commentsRulesAccept => 'เข้าใจแล้ว';

  @override
  String get commentsSortNewest => 'ใหม่สุด';

  @override
  String get commentsSortOldest => 'เก่าสุด';

  @override
  String get commentsSortHighest => 'คะแนนสูงสุด';

  @override
  String get commentsSortLowest => 'คะแนนต่ำสุด';

  @override
  String commentsEpisodeShort(int number) {
    return 'ตอน $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ตอน $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'กรองตามตอน';

  @override
  String get commentsFilterChapterTitle => 'กรองตามตอน';

  @override
  String get commentsFilterTagTitle => 'ใส่เลขตอน';

  @override
  String get commentsFilterHint => 'หมายเลข';

  @override
  String get commentsFilterApply => 'กรอง';

  @override
  String get commentsFilterClear => 'แสดงทั้งหมด';

  @override
  String get commentsPlaceholder => 'เพิ่มคอมเมนต์…';

  @override
  String commentsReplyingTo(String name) {
    return 'กำลังตอบกลับ $name';
  }

  @override
  String get commentsSend => 'ส่ง';

  @override
  String get commentsTagButton => 'แท็ก';

  @override
  String commentsTagTitle(String label) {
    return 'แท็ก$label (ไม่บังคับ)';
  }

  @override
  String get commentsTagEpisode => 'ตอน';

  @override
  String get commentsTagChapter => 'ตอน';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'เลข$label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'แท็กต้องไม่เกินจำนวนทั้งหมด ($total)';
  }

  @override
  String get commentsNoTag => 'ไม่มีแท็ก';

  @override
  String get commentsSpoiler => 'สปอยล์';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'ค้นหา GIF';

  @override
  String get commentsGifEmpty => 'ไม่พบ GIF';

  @override
  String get commentsEmptyText => 'คอมเมนต์ว่างไม่ได้';

  @override
  String get commentsBannedYou => 'คุณถูกแบนจากการคอมเมนต์';

  @override
  String get commentsEdited => 'แก้ไขคอมเมนต์แล้ว';

  @override
  String get commentsDeleted => 'ลบคอมเมนต์แล้ว';

  @override
  String get commentsDeletedPlaceholder => '[ลบแล้ว]';

  @override
  String get commentsReported => 'รายงานคอมเมนต์แล้ว';

  @override
  String get commentsUserBanned => 'แบนผู้ใช้แล้ว';

  @override
  String get commentsReport => 'รายงาน';

  @override
  String get commentsReportAsk => 'รายงานคอมเมนต์นี้ให้ผู้ดูแลไหม?';

  @override
  String get commentsDelete => 'ลบ';

  @override
  String get commentsDeleteAsk => 'คอมเมนต์นี้จะถูกลบสำหรับทุกคน';

  @override
  String get commentsBan => 'แบน';

  @override
  String get commentsBanAsk => 'แบนผู้ใช้นี้จากการคอมเมนต์ไหม?';

  @override
  String get commentsCopy => 'คัดลอก';

  @override
  String get commentsViewReply => 'ดู 1 การตอบกลับ';

  @override
  String commentsViewReplies(int count) {
    return 'ดู $count การตอบกลับ';
  }

  @override
  String get commentsHideReplies => 'ซ่อนการตอบกลับ';

  @override
  String get commentsLoadMore => 'โหลดคอมเมนต์เพิ่ม';

  @override
  String get commentsEmpty => 'ยังไม่มีคอมเมนต์ มาเป็นคนแรกเลย!';

  @override
  String get commentsEmptyFiltered => 'ไม่มีคอมเมนต์ในตัวกรองนี้';

  @override
  String get commentsSignIn => 'เข้าสู่ระบบ AniList เพื่ออ่านและเขียนคอมเมนต์';

  @override
  String get commentsSignInMessage =>
      'คอมเมนต์ใช้ร่วมกันทุกบริการและใช้บัญชี AniList ของคุณ';

  @override
  String get commentsUnavailable => 'เรื่องนี้ไม่มีคอมเมนต์';

  @override
  String get commentsUnavailableMessage => 'จับคู่กับรายการใน AniList ไม่ได้';

  @override
  String get commentsDisabled => 'ปิดคอมเมนต์อยู่';

  @override
  String get commentsDisabledMessage => 'เปิดกลับได้ที่ ตั้งค่า › ทั่วไป';

  @override
  String get commentsOffline => 'โหลดคอมเมนต์ไม่ได้';

  @override
  String get commentsSingleTitle => 'แสดงคอมเมนต์เดียว';

  @override
  String get commentsShowAll => 'แสดงคอมเมนต์ทั้งหมด';

  @override
  String get commentsSettingsHeader => 'คอมเมนต์';

  @override
  String get commentsSettingEnabled => 'คอมเมนต์';

  @override
  String get commentsSettingEnabledDesc =>
      'แสดงแท็บคอมเมนต์ในหน้าเรื่อง และเข้าสู่ระบบเซิร์ฟเวอร์คอมเมนต์ด้วยบัญชี AniList ของคุณ';

  @override
  String get commentsSettingAlerts => 'แจ้งเตือนการตอบกลับ';

  @override
  String get commentsSettingAlertsDesc => 'แจ้งเมื่อมีคนตอบคอมเมนต์ของฉัน';

  @override
  String get commentsNoticeReplyTitle => 'มีคนตอบคอมเมนต์ใหม่';

  @override
  String commentsNoticeReply(String name) {
    return '$name ตอบคอมเมนต์ของคุณ';
  }

  @override
  String get commentsNoticeWarningTitle => 'คุณได้รับคำเตือน';

  @override
  String get commentsNoticeWarning => 'คอมเมนต์ให้ระวังกว่านี้หน่อยนะ';

  @override
  String get commentsNoticeUpdateTitle => 'อัปเดตจาก Dantotsu';

  @override
  String get barcodeTitle => 'สแกนบาร์โค้ด';

  @override
  String get barcodeTooltip => 'หามังงะหรือนิยายจากบาร์โค้ด';

  @override
  String get barcodeIntro =>
      'เล็งกล้องไปที่บาร์โค้ดด้านหลังเล่ม หรือพิมพ์ ISBN เอา';

  @override
  String get barcodeIntroManual =>
      'พิมพ์ ISBN ที่อยู่เหนือบาร์โค้ดด้านหลังเล่ม';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'นี่ไม่ใช่ ISBN ที่ถูกต้อง';

  @override
  String barcodeNotFound(String isbn) {
    return 'ไม่พบหนังสือสำหรับ $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'ใช้กล้องไม่ได้ อนุญาตการเข้าถึงกล้อง หรือพิมพ์ ISBN แทน';

  @override
  String get themesTitle => 'เพลงเปิดและเพลงปิด';

  @override
  String get themesPlayVideo => 'เล่นวิดีโอ';

  @override
  String get themesPlayAudio => 'เล่นเฉพาะเสียง';

  @override
  String get themesOpenSite => 'เปิดบน AnimeThemes';

  @override
  String get themesCredit => 'ธีมจาก AnimeThemes';

  @override
  String get themesVersions => 'เวอร์ชัน';

  @override
  String get sauceTitle => 'หาต้นทาง';

  @override
  String get sauceIntro =>
      'อัปโหลดหน้ามังงะหรือภาพศิลป์ หรือวางลิงก์ แล้วจะหาให้ว่ามาจากไหน';

  @override
  String get sauceKeyTitle => 'คีย์ API ของ SauceNAO';

  @override
  String get sauceKeyHint => 'ไม่บังคับ ช่วยเพิ่มโควตาค้นหารายวัน';

  @override
  String get sauceKeyDesc => 'ขอคีย์ฟรีได้ที่ saucenao.com/user.php';

  @override
  String get sauceOpen => 'เปิดต้นทาง';

  @override
  String get sauceCredit => 'ค้นหารูปโดย SauceNAO';

  @override
  String get sauceEmpty => 'ไม่พบที่ตรงกัน';

  @override
  String get sauceTooltip => 'หาต้นทางของหน้ามังงะหรือภาพศิลป์';

  @override
  String get trendzTitle => 'ชาร์ตอนิเมะ';

  @override
  String get trendzAnime => 'อนิเมะ';

  @override
  String get trendzFemale => 'ตัวละครหญิง';

  @override
  String get trendzMale => 'ตัวละครชาย';

  @override
  String get trendzCouple => 'คู่รัก';

  @override
  String get trendzCredit => 'ชาร์ตรายสัปดาห์โดย AniTrendz';

  @override
  String get trendzNew => 'ใหม่';

  @override
  String get trendzEmpty => 'ชาร์ตว่างเปล่า';

  @override
  String get shareCard => 'แชร์การ์ด';

  @override
  String get shareCardList => 'แชร์การ์ดรายการ';

  @override
  String get shareCardSaved => 'บันทึกการ์ดแล้ว';

  @override
  String get shareCardFailed => 'ทำการ์ดไม่ได้';

  @override
  String get shareCardListEmpty => 'ในรายการของคุณยังไม่มีอะไรให้แชร์';

  @override
  String get shareCardTop => 'เรื่องเด็ดของฉัน';

  @override
  String themesEpisodes(String eps) {
    return '$eps ตอน';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'ตรง $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'สัปดาห์ที่ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count โหวต';
  }

  @override
  String trendzPeak(String rank) {
    return 'สูงสุด #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count สัปดาห์ในท็อปเท็น';
  }

  @override
  String get imageSearchTitle => 'ค้นหาด้วยรูป';

  @override
  String get imageSearchTooltip => 'หาอนิเมะจากภาพแคป';

  @override
  String get imageSearchIntro =>
      'เลือกภาพแคปหรือวางลิงก์รูป แล้ว trace.moe จะหาว่ามาจากตอนไหนและฉากไหน';

  @override
  String get imageSearchPick => 'เลือกรูป';

  @override
  String get imageSearchLinkHint => 'วางลิงก์รูป';

  @override
  String get imageSearchGo => 'ค้นหา';

  @override
  String get imageSearchEmpty => 'ไม่พบที่ตรงกัน';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'ตอนที่ $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'ที่ $time';
  }

  @override
  String get imageSearchPreview => 'คลิปตัวอย่าง';

  @override
  String imageSearchSimilarity(int percent) {
    return 'ตรง $percent%';
  }

  @override
  String get imageSearchCredit => 'ขับเคลื่อนโดย trace.moe';

  @override
  String get imageSearchOpenFailed => 'เปิดเรื่องนี้ไม่ได้';

  @override
  String get groups => 'กลุ่ม';

  @override
  String get groupsYours => 'กลุ่มของคุณ';

  @override
  String get groupsPopular => 'ยอดนิยม';

  @override
  String get groupsNew => 'ใหม่';

  @override
  String get groupsFeatured => 'แนะนำ';

  @override
  String get groupsSearch => 'ค้นหากลุ่ม';

  @override
  String get groupsAll => 'ทั้งหมด';

  @override
  String get groupsEmpty => 'ไม่พบกลุ่ม';

  @override
  String get groupsEmptyYours => 'คุณยังไม่ได้เข้าร่วมกลุ่มไหนเลย';

  @override
  String get groupsSignIn => 'เข้าสู่ระบบเพื่อดูกลุ่มที่เข้าร่วม';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count สมาชิก',
      one: '1 สมาชิก',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'เข้าร่วม';

  @override
  String get groupsJoined => 'เข้าร่วมแล้ว';

  @override
  String get groupsLeave => 'ออกจากกลุ่ม';

  @override
  String get groupsLeaveAsk => 'คุณจะไม่เห็นโพสต์ของกลุ่มนี้ในฟีดอีก';

  @override
  String get groupsJoinFailed =>
      'เข้าร่วมกลุ่มนี้ไม่ได้ อาจเป็นแบบเชิญเท่านั้น';

  @override
  String get groupsLeaveFailed => 'ออกจากกลุ่มนี้ไม่ได้';

  @override
  String get groupsPosts => 'โพสต์';

  @override
  String get groupsMembersTab => 'สมาชิก';

  @override
  String get groupsAbout => 'เกี่ยวกับ';

  @override
  String get groupsRules => 'กฎ';

  @override
  String get groupsPrivacyOpen => 'เปิด';

  @override
  String get groupsPrivacyRestricted => 'จำกัด';

  @override
  String get groupsPrivacyClosed => 'ปิด';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'แอดมิน';

  @override
  String get groupsRoleMod => 'ม็อด';

  @override
  String get groupsCouldntLoad => 'โหลดกลุ่มนี้ไม่ได้';

  @override
  String get groupsNewPost => 'โพสต์ลงกลุ่ม';

  @override
  String get groupsPostHint => 'แชร์อะไรกับกลุ่มหน่อย';

  @override
  String get groupsOpenInBrowser => 'เปิดในเบราว์เซอร์';

  @override
  String get groupsCategory => 'หมวดหมู่';

  @override
  String get groupsLanguage => 'ภาษา';

  @override
  String get groupsCreated => 'สร้างเมื่อ';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count หัวหน้า',
      one: '1 หัวหน้า',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'ความเป็นส่วนตัว';

  @override
  String get notificationsAll => 'ทั้งหมด';

  @override
  String get notificationsAiring => 'กำลังออกอากาศ';

  @override
  String get notificationsMedia => 'เรื่องใหม่';

  @override
  String get notificationsReplies => 'การตอบกลับ';

  @override
  String get notificationsMentions => 'การกล่าวถึง';

  @override
  String get notificationsMessages => 'ข้อความ';

  @override
  String get notificationsLikes => 'ไลก์';

  @override
  String get notificationsFollows => 'การติดตาม';

  @override
  String get notificationsNoServices =>
      'ไม่มีบริการที่เข้าสู่ระบบอยู่ที่มีการแจ้งเตือน';

  @override
  String get notificationsNoServicesMessage =>
      'เข้าสู่ระบบบริการที่ส่งการแจ้งเตือน แล้วจะขึ้นที่นี่';

  @override
  String get notificationsEmptyKind => 'หมวดนี้ยังไม่มีอะไร';

  @override
  String get notificationsCommentsEmpty => 'ไม่มีการแจ้งเตือนคอมเมนต์';

  @override
  String get notificationsCommentsEmptyMessage =>
      'การตอบกลับคอมเมนต์ของคุณและประกาศจาก Dantotsu จะขึ้นที่นี่';

  @override
  String get notificationsSettings => 'ตั้งค่าการแจ้งเตือน';

  @override
  String get notificationsPollTitle => 'เช็กการแจ้งเตือนใหม่';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ทุก $minutes นาทีตอนเปิดแอปอยู่';
  }

  @override
  String get notificationsNotifyAbout => 'แจ้งเตือนเรื่อง';

  @override
  String get notificationsCommentsHeader => 'แจ้งเตือนคอมเมนต์';

  @override
  String systemNotificationsDescFor(String service) {
    return 'แสดงการแจ้งเตือนระบบสำหรับการแจ้งเตือน $service ที่ยังไม่อ่านทุกอันตอนแอปทำงานอยู่';
  }

  @override
  String get notificationsTestSent => 'ส่งการแจ้งเตือนทดสอบแล้ว';

  @override
  String get notificationsTestDenied =>
      'Dartotsu ไม่ได้รับอนุญาตให้แจ้งเตือน เปิดได้ในตั้งค่าระบบ';

  @override
  String get notificationsTestHint => 'กดค้างเพื่อส่งการแจ้งเตือนทดสอบ';

  @override
  String get notificationsTestSample => 'นี่คือการแจ้งเตือนทดสอบ';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ตอบคอมเมนต์ของคุณใน $media';
  }

  @override
  String get imageSearchNotLink => 'นี่ไม่น่าใช่ลิงก์';

  @override
  String get imageSearchQuota => 'โควตาค้นหาเต็มแล้ว';

  @override
  String get imageSearchBusy => 'คำขอเยอะเกินไป ลองใหม่อีกสักพัก';

  @override
  String imageSearchFailed(int code) {
    return 'ค้นหาไม่สำเร็จ ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'การแจ้งเตือนใหม่ $count รายการ';
  }

  @override
  String get reactionsTitle => 'รีแอ็กชัน';

  @override
  String get reactionsNeedEntry => 'เพิ่มเรื่องนี้ลงรายการก่อนถึงจะรีแอ็กต์ได้';

  @override
  String get reactionsAdd => 'เพิ่มรีแอ็กชัน';

  @override
  String get reactionsHint => 'คิดยังไงบ้าง? (สั้น ๆ และไม่สปอยล์)';

  @override
  String get reactionsPost => 'โพสต์';

  @override
  String get reactionsFailed => 'อัปเดตรีแอ็กชันไม่ได้';

  @override
  String get settingsWatch => 'ดูและอ่าน';

  @override
  String get settingsWatchDesc => 'รายการตอน การจับคู่ซอร์ส และรายละเอียดตอน';

  @override
  String get watchSettingsLayout => 'รายการตอน';

  @override
  String get watchSettingsSources => 'ซอร์ส';

  @override
  String get watchSettingsMetadata => 'รายละเอียดตอน';

  @override
  String get watchLayout => 'เลย์เอาต์';

  @override
  String get watchListView => 'รายการ';

  @override
  String get watchGridView => 'ตาราง';

  @override
  String get watchCompactView => 'กะทัดรัด';

  @override
  String get watchDefaultLayoutDesc =>
      'วิธีจัดวางตอนต่าง ๆ จนกว่าจะเปลี่ยนเฉพาะเรื่อง';

  @override
  String get watchChunkSize => 'ขนาดช่วง';

  @override
  String get watchChunkSizeDesc => 'จำนวนตอนในแต่ละแท็บช่วง';

  @override
  String get watchShowDescription => 'แสดงคำอธิบาย';

  @override
  String get watchShowDescriptionDesc =>
      'แสดงเรื่องย่อของตอนใต้ชื่อแต่ละตอนในเลย์เอาต์รายการ';

  @override
  String get watchShowFiller => 'แสดงตอนฟิลเลอร์';

  @override
  String get watchShowFillerDesc =>
      'ปิดเพื่อซ่อนตอนที่ถูกทำเครื่องหมายเป็นฟิลเลอร์';

  @override
  String get watchBlurUnwatched => 'ซ่อนภาพตัวอย่างที่สปอยล์';

  @override
  String get watchBlurUnwatchedDesc => 'เบลอภาพตัวอย่างของตอนที่ยังไม่ได้ดู';

  @override
  String get watchResumeShelf => 'แถบดูต่อ';

  @override
  String get watchResumeShelfDesc => 'แสดงแถวดูต่อที่หน้าหลัก';

  @override
  String get watchMarkOnLongPress => 'กดค้างเพื่อทำเครื่องหมายความคืบหน้า';

  @override
  String get watchMarkOnLongPressDesc =>
      'กดตอนค้างไว้เพื่อทำเครื่องหมายว่าดูแล้วหรือยังไม่ได้ดู';

  @override
  String get watchMatching => 'การจับคู่ซอร์ส';

  @override
  String get watchMatchingDesc =>
      'ใกล้เคียงที่สุดจะเอาผลค้นหาที่ดีที่สุด ตรงเป๊ะเท่านั้นจะรับเฉพาะชื่อที่เกือบเหมือนกัน แล้วให้คุณเลือกเองสำหรับที่เหลือ';

  @override
  String get watchMatchClosest => 'ใกล้เคียงที่สุด';

  @override
  String get watchMatchExact => 'ตรงเป๊ะเท่านั้น';

  @override
  String get watchMetadataDesc =>
      'ชื่อตอน เรื่องย่อ ภาพตัวอย่าง วันออกอากาศ และป้ายฟิลเลอร์ มาจากไหน ลากเพื่อกำหนดลำดับความสำคัญ ซอร์สแรกที่มีค่าจะชนะ';

  @override
  String get watchMetaAniZipDesc => 'ชื่อตอน เรื่องย่อ ภาพนิ่ง และวันออกอากาศ';

  @override
  String get watchMetaKitsuDesc => 'ชื่อตอน คำอธิบาย และภาพตัวอย่าง';

  @override
  String get watchMetaSimklDesc => 'ชื่อตอน คำอธิบาย ภาพนิ่ง และวันออกอากาศ';

  @override
  String get watchMetaAniListDesc =>
      'ชื่อตอนสตรีมมิง ภาพตัวอย่าง และตารางออกอากาศ';

  @override
  String get watchMetaTenraiDesc =>
      'ชื่อตอน วันออกอากาศ ป้ายฟิลเลอร์ และรีแคปของ MyAnimeList ผ่าน Tenrai';

  @override
  String get watchClearMetadata => 'รีเฟรชรายละเอียดตอน';

  @override
  String get watchClearMetadataDesc =>
      'ลืมรายละเอียดตอนที่แคชไว้ เพื่อดึงมาใหม่';

  @override
  String get watchMetadataCleared => 'จะดึงรายละเอียดตอนใหม่';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ตอน',
      one: '1 ตอน',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ตอน',
      one: '1 ตอน',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'ตอนที่ $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'ตอนที่ $number';
  }

  @override
  String get watchSearching => 'กำลังค้นหา…';

  @override
  String watchSearchingFor(String term) {
    return 'กำลังค้นหา: $term';
  }

  @override
  String watchSelected(String title) {
    return 'เลือกแล้ว: $title';
  }

  @override
  String watchFound(String title) {
    return 'เจอแล้ว: $title';
  }

  @override
  String get watchNothingFound => 'ไม่พบอะไรในซอร์สนี้';

  @override
  String get watchSearchFailed => 'ค้นหาซอร์สไม่สำเร็จ';

  @override
  String get watchLoadFailed => 'โหลดรายการไม่ได้';

  @override
  String get watchSignInToTrack => 'เข้าสู่ระบบเพื่อติดตามความคืบหน้า';

  @override
  String watchInstallSource(String action) {
    return 'ติดตั้งส่วนขยายเพื่อเริ่ม$action';
  }

  @override
  String get watchSourceMissing => 'ยังไม่ได้ติดตั้งซอร์สนี้';

  @override
  String get watchWrongTitle => 'ชื่อผิดเหรอ?';

  @override
  String get watchSearchAgain => 'ค้นหาอีกครั้ง';

  @override
  String watchSearchSource(String source) {
    return 'ค้นหาใน $source';
  }

  @override
  String get watchSource => 'ซอร์ส';

  @override
  String get watchOptions => 'ตัวเลือก';

  @override
  String get watchReverse => 'เรียงกลับด้าน';

  @override
  String get watchScanlators => 'กลุ่ม';

  @override
  String get watchResetOptions => 'รีเซ็ตตัวเลือกเหล่านี้';

  @override
  String get watchContinue => 'ดูต่อ';

  @override
  String get watchStart => 'เริ่ม';

  @override
  String get watchPlay => 'เล่น';

  @override
  String get watchRead => 'อ่าน';

  @override
  String get watchMarkWatched => 'ทำเครื่องหมายว่าดูแล้ว';

  @override
  String get watchMarkUnwatched => 'ทำเครื่องหมายว่ายังไม่ได้ดู';

  @override
  String get watchMarkRead => 'ทำเครื่องหมายว่าอ่านแล้ว';

  @override
  String get watchMarkUnread => 'ทำเครื่องหมายว่ายังไม่ได้อ่าน';

  @override
  String get watchFiller => 'ฟิลเลอร์';

  @override
  String get watchRecap => 'รีแคป';

  @override
  String get watchNoEpisodes => 'ไม่พบตอน';

  @override
  String get watchNoChapters => 'ไม่พบตอน';

  @override
  String get watchSourceTools => 'เครื่องมือซอร์ส';

  @override
  String get watchSourceSettings => 'ตั้งค่าซอร์ส';

  @override
  String get watchOpenWebView => 'เปิดใน Web View';

  @override
  String get watchOpenWebViewDesc =>
      'ผ่านการเช็ก Cloudflare หรือเข้าสู่ระบบ คุกกี้จะใช้ร่วมกับคำขอของซอร์ส';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'บันทึกคุกกี้ไว้ $count อันสำหรับ $host',
      one: 'บันทึกคุกกี้ไว้ 1 อันสำหรับ $host',
      zero: 'ไม่มีคุกกี้ที่บันทึกไว้สำหรับ $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare clearance ใช้งานอยู่, $time';
  }

  @override
  String get watchClearanceMissing => 'ไม่มีคุกกี้ Cloudflare clearance';

  @override
  String get watchClearanceSession => 'ใช้ได้จนกว่าจะปิดแอป';

  @override
  String get watchAgentShared =>
      'คำขอใช้ user agent ของ Web View ซึ่ง Cloudflare ตรวจสอบ';

  @override
  String get watchAgentCustom =>
      'ตั้ง user agent กำหนดเองไว้ Cloudflare clearance จาก Web View อาจถูกปฏิเสธ';

  @override
  String get watchTestConnection => 'ทดสอบการเชื่อมต่อ';

  @override
  String get watchSolveChallenge => 'แก้เลย';

  @override
  String watchProbeOk(int code) {
    return 'เข้าถึงได้ (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ยังขอให้เช็กอยู่';

  @override
  String watchProbeBlocked(int code) {
    return 'ถูกไซต์บล็อก (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'เข้าถึงไซต์ไม่ได้';

  @override
  String get watchClearCookies => 'ล้างคุกกี้ของไซต์นี้';

  @override
  String get watchCookiesCleared => 'ล้างคุกกี้แล้ว';

  @override
  String get watchMetaSource => 'รายละเอียดตอนจาก';

  @override
  String get watchMetaAuto => 'อัตโนมัติ';

  @override
  String get watchMetaOff => 'ปิด';

  @override
  String get playerSettingsTitle => 'ตั้งค่าเครื่องเล่น';

  @override
  String get playerSectionPlayback => 'การเล่น';

  @override
  String get playerSectionSkip => 'การข้าม';

  @override
  String get playerSectionGestures => 'การควบคุม';

  @override
  String get playerSectionSubtitles => 'คำบรรยาย';

  @override
  String get playerSectionShaders => 'เชเดอร์';

  @override
  String get playerSectionEngine => 'เอนจิน';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ความเร็วในการเล่น';

  @override
  String get playerCursedSpeed => 'ความเร็วเพิ่มเติม';

  @override
  String get playerCursedSpeedDesc => 'เพิ่มความเร็วถึง 10x ในรายการ';

  @override
  String get playerResize => 'โหมดปรับขนาด';

  @override
  String get playerFitFit => 'พอดี';

  @override
  String get playerFitCover => 'เต็ม';

  @override
  String get playerFitStretch => 'ยืด';

  @override
  String get playerSkipDuration => 'ความยาวปุ่มข้าม';

  @override
  String get playerSkipDurationDesc =>
      'จำนวนวินาทีที่ปุ่มข้ามกระโดดนอกช่วงเพลงเปิดและเพลงปิด';

  @override
  String get playerSeekDuration => 'แตะสองครั้งเพื่อข้าม';

  @override
  String get playerSeekDurationDesc =>
      'วินาทีที่กระโดดเมื่อแตะสองครั้งหรือกดปุ่มลูกศร';

  @override
  String get playerAutoPlay => 'เล่นตอนถัดไปอัตโนมัติ';

  @override
  String get playerAutoPlayDesc => 'เริ่มตอนถัดไปเมื่อตอนนี้จบ';

  @override
  String get playerResume => 'ดูต่อจากที่ค้างไว้';

  @override
  String get playerResumeDesc => 'ดูตอนต่อจากตำแหน่งล่าสุด';

  @override
  String get playerOrientation => 'การวางแนว';

  @override
  String get playerOrientationAuto => 'ตามอุปกรณ์';

  @override
  String get playerOrientationLandscape => 'แนวนอน';

  @override
  String get playerOrientationPortrait => 'แนวตั้ง';

  @override
  String get playerAutoSkipOpening => 'ข้ามเพลงเปิด';

  @override
  String get playerAutoSkipEnding => 'ข้ามเพลงปิด';

  @override
  String get playerAutoSkipRecap => 'ข้ามรีแคป';

  @override
  String get playerAutoSkipDesc =>
      'ข้ามทันทีที่เริ่ม โดยใช้ AniSkip และไทม์สแตมป์ของสตรีม';

  @override
  String get playerSkipOnce => 'ข้ามแค่ครั้งเดียว';

  @override
  String get playerSkipOnceDesc => 'ไม่ข้ามส่วนเดิมอีกถ้าเลื่อนย้อนกลับเข้าไป';

  @override
  String get playerAdjustBrightness => 'ท่าทางปรับความสว่าง';

  @override
  String get playerAdjustBrightnessDesc => 'ปัดขึ้นลงที่ครึ่งขวาของหน้าจอ';

  @override
  String get playerAdjustVolume => 'ท่าทางปรับเสียง';

  @override
  String get playerAdjustVolumeDesc => 'ปัดขึ้นลงที่ครึ่งซ้ายของหน้าจอ';

  @override
  String get playerHoldToSpeed => 'กดค้างเพื่อเร่งความเร็ว';

  @override
  String get playerHoldToSpeedDesc =>
      'กดวิดีโอค้างไว้เพื่อเล่นเร็วขึ้น ลากไปข้างๆ เพื่อเปลี่ยนความเร็ว';

  @override
  String get playerThumbless => 'แถบเลื่อนหนาขึ้น';

  @override
  String get playerThumblessDesc => 'แถบหนาแบบไม่มีปุ่มจับ';

  @override
  String get playerShowSubtitles => 'แสดงคำบรรยาย';

  @override
  String get playerShowSubtitlesDesc => 'ปิดเพื่อซ่อนแทร็กคำบรรยายทั้งหมด';

  @override
  String get playerSubtitleLanguage => 'ภาษาคำบรรยายที่ชอบ';

  @override
  String get playerSubtitleSize => 'ขนาดคำบรรยาย';

  @override
  String get playerSubtitleWeight => 'ความหนาคำบรรยาย';

  @override
  String get playerSubtitleBottom => 'ระยะขอบล่างคำบรรยาย';

  @override
  String get playerSubtitleFont => 'ฟอนต์คำบรรยาย';

  @override
  String get playerSubtitleColor => 'สีคำบรรยาย';

  @override
  String get playerSubtitleBackground => 'พื้นหลังคำบรรยาย';

  @override
  String get playerSubtitleOutline => 'เส้นขอบคำบรรยาย';

  @override
  String get playerLibass => 'ใช้ libass';

  @override
  String get playerLibassDesc =>
      'เรนเดอร์คำบรรยาย .ass แบบมีสไตล์ ขนาด สี และฟอนต์ด้านบนจะไม่มีผล';

  @override
  String get playerShaders => 'เชเดอร์';

  @override
  String get playerShadersEnable => 'เปิดใช้เชเดอร์';

  @override
  String get playerShadersEnableDesc =>
      'ขยายและทำภาพให้คมด้วยเชเดอร์ GLSL เช่น Anime4K';

  @override
  String get playerShadersOff => 'ปิดเชเดอร์';

  @override
  String get playerShadersMissing => 'ยังไม่ได้ติดตั้ง Anime4K';

  @override
  String get playerShadersMissingDesc =>
      'ดาวน์โหลดชุดเชเดอร์ Anime4K (ประมาณ 0.8 MB) เพื่อใช้โหมดที่มีมาให้';

  @override
  String get playerShadersDownload => 'ดาวน์โหลด Anime4K';

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
  String get playerShadersPreview => 'ดูตัวอย่างบนเฟรมนี้';

  @override
  String get playerShadersUse => 'ใช้อันนี้';

  @override
  String get playerPicture => 'ภาพ';

  @override
  String get playerColors => 'สี';

  @override
  String get playerColorDefault => 'ค่าเริ่มต้น';

  @override
  String get playerColorVivid => 'สดใส';

  @override
  String get playerColorPop => 'อนิเมะป๊อป';

  @override
  String get playerColorSoft => 'นุ่ม';

  @override
  String get playerColorCinematic => 'ซีเนมาติก';

  @override
  String get playerColorBright => 'สว่าง';

  @override
  String get playerColorNight => 'กลางคืน';

  @override
  String get playerColorMono => 'ขาวดำ';

  @override
  String get playerColorCustom => 'กำหนดเอง';

  @override
  String get playerColorBrightness => 'ความสว่าง';

  @override
  String get playerColorContrast => 'คอนทราสต์';

  @override
  String get playerColorSaturation => 'ความอิ่มตัว';

  @override
  String get playerColorGamma => 'แกมมา';

  @override
  String get playerColorHue => 'เฉดสี';

  @override
  String get playerColorReset => 'รีเซ็ต';

  @override
  String get playerColorAdjust => 'ปรับ';

  @override
  String get playerShadersOriginal => 'ต้นฉบับ';

  @override
  String get playerShadersPreviewFailed => 'จับเฟรมมาดูตัวอย่างไม่ได้';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'เชเดอร์ของคุณ';

  @override
  String get playerShadersCustom => 'เชเดอร์กำหนดเอง';

  @override
  String get playerShadersImport => 'นำเข้า .glsl';

  @override
  String get playerShadersNone =>
      'นำเข้าไฟล์ .glsl หรือ .hook ของคุณเอง แล้วติ๊กเพื่อต่อเป็นลูกโซ่';

  @override
  String get playerShadersBadFile => 'เลือกไฟล์เชเดอร์ .glsl หรือ .hook';

  @override
  String get playerDecoder => 'ตัวถอดรหัส';

  @override
  String get playerDecoderAuto => 'อัตโนมัติ';

  @override
  String get playerDecoderAutoSafe => 'อัตโนมัติ (ปลอดภัย)';

  @override
  String get playerDecoderSoftware => 'ซอฟต์แวร์';

  @override
  String get playerDecoderHardware => 'ฮาร์ดแวร์';

  @override
  String get playerDecoderHardwarePlus => 'ฮาร์ดแวร์+';

  @override
  String get playerVideoOutput => 'เอาต์พุตวิดีโอ';

  @override
  String get playerAudioChannels => 'ช่องเสียง';

  @override
  String get playerBuffer => 'ขนาดบัฟเฟอร์ (MB)';

  @override
  String get playerBufferDesc => 'หน่วยความจำที่เครื่องเล่นใช้บัฟเฟอร์สตรีมได้';

  @override
  String get playerUseMpvConf => 'ใช้ mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'ใช้ตัวเลือกใน mpv.conf ของคุณตอนเริ่มเล่น';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'แก้ไขการตั้งค่า mpv';

  @override
  String get playerMpvConfDesc =>
      'หนึ่งตัวเลือกต่อบรรทัด เหมือน --hwdec=auto ใน mpv.conf ปกติ โปรไฟล์ใน [วงเล็บเหลี่ยม] จะถูกเมิน';

  @override
  String get playerMpvConfSaved => 'บันทึก mpv.conf แล้ว';

  @override
  String get playerUseScripts => 'ใช้สคริปต์ mpv';

  @override
  String get playerUseScriptsDesc =>
      'โหลดปลั๊กอินจากโฟลเดอร์ scripts ต้องใช้ libmpv ที่รองรับ Lua หรือ JavaScript';

  @override
  String get playerScripts => 'สคริปต์ mpv';

  @override
  String get playerScriptsManage => 'เพิ่ม ลบ และสลับปลั๊กอิน';

  @override
  String get playerScriptsAdd => 'เพิ่มสคริปต์';

  @override
  String get playerScriptsDesc =>
      'ปลั๊กอิน Lua, JavaScript และเนทีฟที่วางไว้ที่นี่จะถูกโหลดตอนเริ่มเล่น';

  @override
  String get playerScriptsNone => 'ยังไม่มีสคริปต์';

  @override
  String get playerScriptsBadFile => 'เลือกไฟล์ .lua, .js หรือปลั๊กอินเนทีฟ';

  @override
  String get playerTuning => 'ปรับแต่งวิดีโอขั้นสูง';

  @override
  String get playerTuningDesc =>
      'เขียนทับการซิงก์ แคช การสเกล และโทนแมปปิง ค่าที่ผิดอาจทำให้เล่นไม่ดี';

  @override
  String get playerVideoSync => 'ซิงก์วิดีโอ';

  @override
  String get playerInterpolation => 'การสอดแทรกเฟรม';

  @override
  String get playerInterpolationDesc =>
      'ภาพเคลื่อนไหวลื่น ต้องใช้ซิงก์ display-resample';

  @override
  String get playerPitch => 'แก้พิทช์';

  @override
  String get playerPitchDesc => 'ให้เสียงพูดฟังเป็นธรรมชาติที่ความเร็วอื่น';

  @override
  String get playerCacheSeconds => 'แคช (วินาที)';

  @override
  String get playerReadahead => 'อ่านล่วงหน้า (วินาที)';

  @override
  String get playerThreads => 'เธรดตัวถอดรหัส';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'ลดแถบสีในเกรเดียนต์';

  @override
  String get playerDebandIterations => 'จำนวนรอบ Deband';

  @override
  String get playerDebandThreshold => 'เกณฑ์ Deband';

  @override
  String get playerCorrectDownscaling => 'ย่อภาพแบบถูกต้อง';

  @override
  String get playerSigmoid => 'อัปสเกลแบบซิกมอยด์';

  @override
  String get playerScale => 'ตัวอัปสเกล';

  @override
  String get playerCscale => 'ตัวอัปสเกลโครมา';

  @override
  String get playerDscale => 'ตัวดาวน์สเกล';

  @override
  String get playerToneMapping => 'โทนแมปปิง';

  @override
  String get playerTargetPeak => 'ค่าพีกเป้าหมาย';

  @override
  String get playerOpenFiles => 'เปิดไฟล์วิดีโอ';

  @override
  String get playerOpenFilesDesc => 'เล่นไฟล์จากเครื่องนี้';

  @override
  String get playerOpenFolder => 'เปิดโฟลเดอร์';

  @override
  String get playerOpenFolderDesc => 'เล่นทุกวิดีโอในโฟลเดอร์เป็นเพลย์ลิสต์';

  @override
  String get playerNetworkStream => 'สตรีมเครือข่าย';

  @override
  String get playerNetworkStreamDesc => 'เปิดลิงก์วิดีโอตรงหรือ HLS';

  @override
  String get playerStreamUrl => 'URL สตรีม';

  @override
  String get playerStreamReferer => 'Referer (ไม่บังคับ)';

  @override
  String get playerTorrent => 'ทอร์เรนต์';

  @override
  String get playerTorrentDesc => 'สตรีมลิงก์แม็กเน็ตหรือไฟล์ .torrent';

  @override
  String get playerMagnetLink => 'ลิงก์แม็กเน็ตหรือ URL ทอร์เรนต์';

  @override
  String get playerPickTorrent => 'เลือกไฟล์ .torrent';

  @override
  String get playerTorrentMissing =>
      'ติดตั้งแอดออนทอร์เรนต์จากตั้งค่า > แอดออนก่อน';

  @override
  String get playerNoVideos => 'ไม่พบวิดีโอที่เล่นได้';

  @override
  String get playerReset => 'รีเซ็ตการตั้งค่าเครื่องเล่น';

  @override
  String get playerResetDesc => 'คืนทุกตัวเลือกของเครื่องเล่นเป็นค่าเริ่มต้น';

  @override
  String get playerResetConfirm => 'รีเซ็ตการตั้งค่าเครื่องเล่นทั้งหมดไหม?';

  @override
  String get playerResetDone => 'รีเซ็ตการตั้งค่าเครื่องเล่นแล้ว';

  @override
  String get playerQuality => 'คุณภาพ';

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
  String get playerStreams => 'สตรีม';

  @override
  String get playerAutoSelect => 'เลือกสตรีมอัตโนมัติ';

  @override
  String get playerAutoSelectDesc =>
      'เลือกสตรีมที่คล้ายกับที่เลือกครั้งล่าสุดของเรื่องนี้ที่สุด';

  @override
  String get playerLoadingStreams => 'กำลังหาสตรีม…';

  @override
  String get playerNoStreams => 'ตอนนี้ไม่มีสตรีม';

  @override
  String get playerNoStreamsTitle => 'ไม่พบสตรีม';

  @override
  String get playerFailed => 'เล่นไม่สำเร็จ';

  @override
  String get playerTorrentNeeded => 'สตรีมนี้เป็นทอร์เรนต์';

  @override
  String get playerTorrentNeededDesc =>
      'ติดตั้งแอดออนทอร์เรนต์เพื่อเล่นลิงก์แม็กเน็ตและไฟล์ .torrent';

  @override
  String get playerOpenAddons => 'เปิดแอดออน';

  @override
  String get playerTryAnotherStream => 'ลองสตรีมอื่น';

  @override
  String get playerEpisodes => 'ตอน';

  @override
  String get playerLock => 'ล็อกปุ่มควบคุม';

  @override
  String get playerFullscreen => 'เต็มจอ';

  @override
  String get readerChapters => 'ตอน';

  @override
  String get readerSettingsTitle => 'ตั้งค่าตัวอ่าน';

  @override
  String get readerPreviousChapter => 'ตอนก่อนหน้า';

  @override
  String get readerNextChapter => 'ตอนถัดไป';

  @override
  String get readerFirstChapter => 'นี่คือตอนแรก';

  @override
  String get readerLastChapter => 'อ่านทันหมดแล้ว';

  @override
  String get readerFailed => 'เปิดตอนนี้ไม่ได้';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'ตอนนี้ไม่มีข้อความ';

  @override
  String get readerPerTitle => 'เฉพาะเรื่องนี้';

  @override
  String get readerPerTitleDesc =>
      'ใช้การตั้งค่าตัวอ่านเหล่านี้กับเรื่องนี้เท่านั้น';

  @override
  String get readerSectionReading => 'การอ่าน';

  @override
  String get readerSectionControls => 'การควบคุม';

  @override
  String get readerSectionDisplay => 'การแสดงผล';

  @override
  String get readerSectionNovel => 'นิยาย';

  @override
  String get readerMode => 'โหมดการอ่าน';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'ขวาไปซ้าย';

  @override
  String get readerModeLtr => 'ซ้ายไปขวา';

  @override
  String get readerModeVertical => 'หน้าแนวตั้ง';

  @override
  String get readerModeWebtoon => 'เว็บตูน';

  @override
  String get readerModeContinuous => 'เลื่อนต่อเนื่อง';

  @override
  String get readerScale => 'สเกลภาพ';

  @override
  String get readerScaleFit => 'พอดีหน้าจอ';

  @override
  String get readerScaleWidth => 'พอดีความกว้าง';

  @override
  String get readerScaleHeight => 'พอดีความสูง';

  @override
  String get readerScaleOriginal => 'ขนาดต้นฉบับ';

  @override
  String get readerScaleSmart => 'พอดีอัจฉริยะ';

  @override
  String get readerDoublePage => 'หน้าคู่';

  @override
  String get readerDoublePageDesc => 'แสดงสองหน้าเคียงกันในแนวนอน';

  @override
  String get readerDoubleTapZoom => 'แตะสองครั้งเพื่อซูม';

  @override
  String get readerDoubleTapZoomDesc => 'ซูมเข้าออกหน้าด้วยการแตะสองครั้ง';

  @override
  String get readerAnimate => 'แอนิเมชันเปลี่ยนหน้า';

  @override
  String get readerAnimateDesc => 'ใส่แอนิเมชันตอนพลิกหน้า';

  @override
  String get readerSidePadding => 'ระยะขอบข้าง';

  @override
  String get readerSidePaddingDesc => 'ช่องว่างข้างหน้า เป็นเปอร์เซ็นต์';

  @override
  String get readerPageGap => 'ช่องว่างระหว่างหน้า';

  @override
  String get readerPageGapDesc => 'ช่องว่างระหว่างหน้ากับหน้า';

  @override
  String get readerAutoNext => 'อ่านต่อตอนถัดไปเลย';

  @override
  String get readerAutoNextDesc => 'โหลดตอนถัดไปไว้ตอนที่อ่านใกล้จบตอนนี้';

  @override
  String get readerPreload => 'โหลดหน้าล่วงหน้า';

  @override
  String get readerPreloadDesc => 'ดาวน์โหลดล่วงหน้ากี่หน้า';

  @override
  String get readerTapZones => 'โซนแตะ';

  @override
  String get readerTapDefault => 'ค่าเริ่มต้น';

  @override
  String get readerTapLShaped => 'ตัว L';

  @override
  String get readerTapKindle => 'แบบ Kindle';

  @override
  String get readerTapEdge => 'เฉพาะขอบ';

  @override
  String get readerTapOff => 'ปิดใช้งาน';

  @override
  String get readerInvertTaps => 'สลับโซนแตะ';

  @override
  String get readerInvertTapsDesc => 'สลับพื้นที่ก่อนหน้าและถัดไป';

  @override
  String get readerBackground => 'พื้นหลัง';

  @override
  String get readerBackgroundBlack => 'ดำ';

  @override
  String get readerBackgroundGray => 'เทา';

  @override
  String get readerBackgroundWhite => 'ขาว';

  @override
  String get readerBackgroundTheme => 'ธีมแอป';

  @override
  String get readerFilter => 'ฟิลเตอร์สี';

  @override
  String get readerFilterNone => 'ไม่มี';

  @override
  String get readerFilterGrayscale => 'ขาวดำ';

  @override
  String get readerFilterInvert => 'กลับสี';

  @override
  String get readerFilterSepia => 'ซีเปีย';

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
  String get readerDim => 'หรี่';

  @override
  String get readerDimDesc => 'ทำให้หน้ามืดลง';

  @override
  String get readerPageNumber => 'เลขหน้า';

  @override
  String get readerPageNumberDesc => 'แสดงเลขหน้าตอนอ่าน';

  @override
  String get readerFullscreen => 'เต็มจอ';

  @override
  String get readerFullscreenDesc => 'ซ่อนแถบระบบ';

  @override
  String get readerCropBorders => 'ตัดขอบ';

  @override
  String get readerCropBordersDesc => 'ตัดขอบว่างสีขาวหรือดำออกจากหน้า';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ปุ่มเสียงพลิกหน้า';

  @override
  String get readerVolumeKeysDesc => 'ลดเสียงไปข้างหน้า เพิ่มเสียงย้อนกลับ';

  @override
  String get readerBookmarks => 'บุ๊กมาร์ก';

  @override
  String get readerBookmarkAdd => 'เพิ่มบุ๊กมาร์ก';

  @override
  String get readerBookmarkRemove => 'เอาบุ๊กมาร์กออก';

  @override
  String get readerBookmarksEmpty => 'ยังไม่มีบุ๊กมาร์ก';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'หน้า $page จาก $total';
  }

  @override
  String get readerAutoScroll => 'เลื่อนอัตโนมัติ';

  @override
  String get readerAutoScrollStop => 'หยุดเลื่อนอัตโนมัติ';

  @override
  String get readerAutoScrollSpeed => 'ความเร็วเลื่อนอัตโนมัติ';

  @override
  String get readerAutoScrollSpeedDesc => 'ความเร็วที่หน้าเลื่อนหรือพลิกเอง';

  @override
  String get readerKeepOn => 'เปิดหน้าจอค้างไว้';

  @override
  String get readerKeepOnDesc => 'ไม่ให้หน้าจอดับตอนอ่าน';

  @override
  String get readerOrientation => 'การวางแนว';

  @override
  String get readerOrientationFree => 'อิสระ';

  @override
  String get readerOrientationPortrait => 'แนวตั้ง';

  @override
  String get readerOrientationLandscape => 'แนวนอน';

  @override
  String get readerSaveProgress => 'บันทึกความคืบหน้า';

  @override
  String get readerSaveProgressDesc =>
      'จำหน้าที่อ่านและทำเครื่องหมายตอนว่าอ่านแล้ว';

  @override
  String get readerReset => 'รีเซ็ตการตั้งค่าตัวอ่าน';

  @override
  String get readerResetDesc => 'กลับเป็นค่าเริ่มต้น';

  @override
  String get novelSize => 'ขนาดตัวอักษร';

  @override
  String get novelFont => 'ฟอนต์';

  @override
  String get novelLineHeight => 'ความสูงบรรทัด';

  @override
  String get novelParagraph => 'ระยะห่างย่อหน้า';

  @override
  String get novelMargin => 'ระยะขอบ';

  @override
  String get novelTheme => 'ธีมตัวอ่าน';

  @override
  String get novelThemeApp => 'ธีมแอป';

  @override
  String get novelThemeLight => 'สว่าง';

  @override
  String get novelThemeSepia => 'ซีเปีย';

  @override
  String get novelThemeDark => 'มืด';

  @override
  String get novelThemeBlack => 'ดำ';

  @override
  String get novelJustify => 'จัดข้อความเต็มแนว';

  @override
  String get novelJustifyDesc => 'จัดข้อความชิดทั้งสองขอบ';

  @override
  String get trackProgressTitle => 'บันทึกความคืบหน้าไหม?';

  @override
  String trackProgressAnime(String name) {
    return 'ติดตาม $name ในรายการของคุณตอนที่ดูไหม? เลือก \"เฉพาะเครื่องนี้\" เพื่อเก็บไว้ในเครื่อง หรือเลือกไม่เพื่อไม่บันทึกอะไร';
  }

  @override
  String trackProgressManga(String name) {
    return 'ติดตาม $name ในรายการของคุณตอนที่อ่านจบแต่ละตอนไหม? เลือก \"เฉพาะเครื่องนี้\" เพื่อเก็บไว้ในเครื่อง หรือเลือกไม่เพื่อไม่บันทึกอะไร';
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
  String get trackProgressYes => 'บันทึก';

  @override
  String get trackProgressReset =>
      'รีเซ็ตการถามบันทึกความคืบหน้าของประเภทนี้แล้ว จะถามใหม่';

  @override
  String get trackProgressNo => 'ไม่';

  @override
  String get trackProgressOff => 'ปิด';

  @override
  String get trackProgressLocal => 'เฉพาะเครื่องนี้';

  @override
  String get trackProgressSettingAnime => 'ติดตามความคืบหน้าอนิเมะ';

  @override
  String get trackProgressSettingManga => 'ติดตามความคืบหน้ามังงะและนิยาย';

  @override
  String get trackProgressSettingDesc => 'ทำอะไรเมื่อเปิดตอนหรืออ่านจบตอน';

  @override
  String get trackProgressAsk => 'ถามก่อน';

  @override
  String get trackProgressAlways => 'เสมอ';

  @override
  String get dantotsuImport => 'นำเข้าจาก Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'อ่านข้อมูลสำรองการตั้งค่า Dantotsu (.ani หรือ .sani ที่เข้ารหัส)';

  @override
  String get dantotsuPick => 'เลือกข้อมูลสำรอง Dantotsu';

  @override
  String get dantotsuNothing => 'ไม่มีอะไรในไฟล์นี้ที่นำเข้าได้';

  @override
  String get dantotsuApply => 'นำเข้าที่เลือก';

  @override
  String dantotsuDone(int done, int total) {
    return 'นำเข้าแล้ว $done จาก $total';
  }

  @override
  String get dantotsuGroupAccounts => 'บัญชี';

  @override
  String get dantotsuGroupAppearance => 'หน้าตาแอป';

  @override
  String get dantotsuGroupExtensions => 'ส่วนขยาย';

  @override
  String get dantotsuGroupApp => 'แอป';

  @override
  String get dantotsuGroupPlayer => 'เครื่องเล่น';

  @override
  String get dantotsuAnilist => 'เข้าสู่ระบบ AniList';

  @override
  String get dantotsuMal => 'เข้าสู่ระบบ MyAnimeList';

  @override
  String get dantotsuDiscord => 'โทเคน Discord Rich Presence';

  @override
  String get dantotsuTheme => 'ธีม';

  @override
  String get dantotsuReposAnime => 'คลังส่วนขยายอนิเมะ';

  @override
  String get dantotsuReposManga => 'คลังส่วนขยายมังงะ';

  @override
  String get dantotsuReposNovel => 'คลังส่วนขยายนิยาย';

  @override
  String get dantotsuUpdates => 'เช็กอัปเดต';

  @override
  String get dantotsuComments => 'คอมเมนต์';

  @override
  String get dantotsuActivity => 'การโพลการแจ้งเตือน AniList';

  @override
  String get dantotsuDns => 'ผู้ให้บริการ DNS';

  @override
  String get dantotsuPlayer => 'ความเร็วเครื่องเล่นและสีคำบรรยาย';

  @override
  String get dantotsuWarning => 'ไฟล์นี้มีโทเคนเข้าสู่ระบบ เก็บเป็นความลับนะ';

  @override
  String get novelIndent => 'ย่อหน้าเว้นบรรทัดแรก';

  @override
  String get novelIndentDesc => 'เริ่มแต่ละย่อหน้าด้วยการเว้นบรรทัดแรก';

  @override
  String get novelLetterSpacing => 'ระยะห่างตัวอักษร';

  @override
  String get novelSectionTranslate => 'แปล';

  @override
  String get sectionExperimental => 'ทดลอง';

  @override
  String get kitsuGraphqlDetail => 'หน้ารายละเอียดเร็วขึ้น (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'โหลดเรื่องพร้อมตัวละคร ทีมงาน และรายการของคุณในคำขอเดียว';

  @override
  String get togetherTitle => 'ดูด้วยกัน';

  @override
  String get togetherIntro =>
      'วางลิงก์ห้องที่เพื่อนส่งมา คุณจะเข้าร่วมทันที และเครื่องเล่นจะเปิดเมื่อเขาเริ่มดู';

  @override
  String get togetherName => 'ชื่อของคุณ';

  @override
  String get togetherConnecting => 'กำลังเชื่อมต่อ…';

  @override
  String get togetherLeave => 'ออกจากห้อง';

  @override
  String get togetherYou => 'คุณ';

  @override
  String get togetherNoChat => 'ยังไม่มีข้อความ';

  @override
  String get togetherChatHint => 'ข้อความ';

  @override
  String get togetherCopyInvite => 'คัดลอกคำเชิญ';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'คัดลอกเซิร์ฟเวอร์และห้องแล้ว';

  @override
  String get togetherConnectionLost => 'การเชื่อมต่อหลุด';

  @override
  String togetherConnectedTo(String room) {
    return 'เชื่อมต่อกับ $room แล้ว';
  }

  @override
  String togetherFailed(String error) {
    return 'เชื่อมต่อไม่ได้: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name เข้าร่วม';
  }

  @override
  String togetherLeft(String name) {
    return '$name ออกไป';
  }

  @override
  String togetherPaused(String name) {
    return '$name หยุดชั่วคราว';
  }

  @override
  String togetherResumed(String name) {
    return '$name เล่นต่อ';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ข้ามไปที่ $time';
  }

  @override
  String get togetherFollowFailed => 'เปิดตอนของโฮสต์ไม่ได้ เปิดเองนะ';

  @override
  String get togetherJoinRole => 'เข้าร่วมห้อง';

  @override
  String get togetherOpenHost => 'เปิดตอนของโฮสต์';

  @override
  String get togetherShowChat => 'แสดงแชตสด';

  @override
  String get togetherWaitingHost => 'รอโฮสต์เริ่มตอน';

  @override
  String get togetherRoomLink => 'ลิงก์ห้อง';

  @override
  String get togetherBadLink => 'นี่ไม่ใช่ลิงก์ห้อง';

  @override
  String get togetherHostClosed => 'โฮสต์ปิดห้องแล้ว';

  @override
  String get togetherNowPlaying => 'กำลังเล่น';

  @override
  String togetherWatchingCount(int count) {
    return '$count คนกำลังดู';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user อยากหยุดชั่วคราว';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user อยากเล่นต่อ';
  }

  @override
  String get togetherChip => 'ด้วยกัน';

  @override
  String get togetherSettingsDesc => 'เข้าห้องเพื่อนด้วยลิงก์';

  @override
  String get novelBilingual => 'แสดงต้นฉบับและคำแปล';

  @override
  String get novelBilingualDesc =>
      'แต่ละย่อหน้าจะแสดงข้อความต้นฉบับและคำแปลอยู่ข้างใต้';

  @override
  String get novelTranslateTo => 'แปลเป็น';

  @override
  String get novelTranslateOff => 'ปิด';

  @override
  String get novelSectionSpeech => 'อ่านออกเสียง';

  @override
  String get novelSpeechRate => 'ความเร็วเสียงอ่าน';

  @override
  String get novelSpeechPitch => 'ระดับเสียงอ่าน';

  @override
  String get novelSpeak => 'อ่านออกเสียง';

  @override
  String get novelSpeakStop => 'หยุดอ่านออกเสียง';

  @override
  String get novelTranslate => 'แปลตอน';

  @override
  String get novelTranslateShowOriginal => 'แสดงต้นฉบับ';

  @override
  String novelTranslateFailed(String error) {
    return 'แปลไม่สำเร็จ: $error';
  }

  @override
  String get novelSpeechUnavailable => 'เครื่องนี้ไม่รองรับการอ่านออกเสียง';

  @override
  String get novelSpeechVoice => 'เสียง';

  @override
  String get novelSpeechVoiceDefault => 'ค่าเริ่มต้นของระบบ';

  @override
  String get novelSpeakPrevious => 'บรรทัดก่อนหน้า';

  @override
  String get novelSpeakNext => 'บรรทัดถัดไป';

  @override
  String get novelTapPaging => 'แตะขอบเพื่อพลิกหน้า';

  @override
  String get novelTapPagingDesc =>
      'แตะด้านซ้ายหรือขวาเพื่อเลื่อนหนึ่งหน้า ตรงกลางจะแสดงปุ่มควบคุม';

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
    return 'เหลืออีก $count นาที';
  }

  @override
  String get novelBold => 'ตัวหนา';

  @override
  String get novelBoldDesc => 'ใช้น้ำหนักที่หนาขึ้น';

  @override
  String readerFinishedChapter(String chapter) {
    return 'จบ $chapter แล้ว';
  }

  @override
  String readerNextUp(String chapter) {
    return 'ถัดไป: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'ก่อนหน้า: $chapter';
  }

  @override
  String get readerNoPages => 'ตอนนี้ไม่มีหน้า';

  @override
  String get readerLoadingPages => 'กำลังโหลดหน้า…';

  @override
  String get readerSlowPage => 'หน้านี้ยังโหลดอยู่…';

  @override
  String get readerPageFailed => 'โหลดหน้านี้ไม่ได้';

  @override
  String get playerShowComments => 'แสดงคอมเมนต์';

  @override
  String get playerHideComments => 'ซ่อนคอมเมนต์';

  @override
  String get playerSubtitles => 'คำบรรยาย';

  @override
  String get playerSubtitlesOff => 'ปิดคำบรรยาย';

  @override
  String get playerAudio => 'เสียง';

  @override
  String get playerAddSubtitle => 'เพิ่มไฟล์คำบรรยาย';

  @override
  String get playerAddAudio => 'เพิ่มไฟล์เสียง';

  @override
  String get playerChapters => 'ตอน';

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
  String get playerNoChapters => 'ไม่มีตอน';

  @override
  String get playerTimestamp => 'ไทม์สแตมป์';

  @override
  String get playerAutoPlayDelay => 'นับถอยหลังตอนถัดไป';

  @override
  String get playerWatchedAt => 'นับว่าดูแล้วเมื่อถึง';

  @override
  String playerNextIn(int seconds) {
    return 'ตอนถัดไปในอีก $seconds วิ';
  }

  @override
  String get playerPlayNow => 'เล่นเลย';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: จะข้ามอัตโนมัติสำหรับเรื่องนี้';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: จะไม่ข้ามอัตโนมัติสำหรับเรื่องนี้';
  }

  @override
  String get playerAudioLanguage => 'ภาษาเสียงที่ชอบ';

  @override
  String get playerLanguageOrderHint => 'คั่นภาษาด้วยจุลภาค จะใช้ภาษาแรกที่เจอ';

  @override
  String get playerPip => 'ภาพซ้อนภาพ';

  @override
  String get playerAutoPip => 'ภาพซ้อนภาพเมื่อออกจากแอป';

  @override
  String get playerAutoPipDesc => 'เล่นต่อในหน้าต่างเล็กเมื่อออกจากแอป';

  @override
  String playerAutoPlaying(String title) {
    return 'กำลังจะเล่น $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ติดตั้งเชเดอร์ไม่ได้: $error';
  }

  @override
  String playerChapter(int number) {
    return 'ตอนที่ $number';
  }

  @override
  String get playerPerTitle => 'เฉพาะเรื่องนี้';

  @override
  String get playerPerTitleDesc =>
      'ใช้ตัวเลือกเหล่านี้กับเรื่องนี้ และไม่แตะค่าเริ่มต้นของคุณ';

  @override
  String get playerSwapGestures => 'สลับด้านปัด';

  @override
  String get playerSwapGesturesDesc => 'ซ้ายปรับความสว่าง ขวาปรับเสียง';

  @override
  String get playerOpenBig => 'เปิดแบบเต็มจอ';

  @override
  String get playerOpenBigDesc =>
      'เปิดเครื่องเล่นแบบเต็มจอ แทนที่จะมีรายการตอนด้วย';

  @override
  String get playerPauseOnBlur => 'หยุดชั่วคราวเมื่อไม่ได้โฟกัส';

  @override
  String get playerPauseOnBlurDesc =>
      'หยุดชั่วคราวตอนแอปถูกบัง เช่น เปิดแถบแจ้งเตือน แล้วเล่นต่อเมื่อกลับมา';

  @override
  String get playerAudioOutput => 'เอาต์พุตเสียง';

  @override
  String get fontAppDefault => 'ฟอนต์แอป';

  @override
  String get fontImport => 'นำเข้าฟอนต์';

  @override
  String get fontSample =>
      'ทดสอบฟอนต์ภาษาไทยและ The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'ดีเลย์คำบรรยาย';

  @override
  String get playerAudioDelay => 'ดีเลย์เสียง';

  @override
  String get playerDelayReset => 'รีเซ็ต';

  @override
  String get playerOnlineSubtitles => 'คำบรรยายออนไลน์';

  @override
  String get playerOnlineSearchHint => 'ชื่อเรื่องและตอน';

  @override
  String get playerOnlineNone => 'ไม่พบคำบรรยาย';

  @override
  String playerOnlineFailed(String error) {
    return 'ค้นหาคำบรรยายไม่สำเร็จ: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ดาวน์โหลดคำบรรยายนี้ไม่ได้: $error';
  }

  @override
  String get playerOnlineMatch => 'ตรงกับไฟล์นี้';

  @override
  String get playerOnlineEpisode => 'ตรงกับตอน';

  @override
  String playerOnlineDownloads(int count) {
    return 'ดาวน์โหลด $count ครั้ง';
  }

  @override
  String get playerSeekPreview => 'ตัวอย่างตอนเลื่อน';

  @override
  String get playerSeekPreviewDesc =>
      'แสดงเฟรมตัวอย่างเล็ก ๆ เหนือแถบเลื่อนตอนลาก จะเปิดตัวถอดรหัสความละเอียดต่ำตัวที่สอง จึงใช้ข้อมูลเพิ่มกับสตรีม';

  @override
  String get playerSettingsChip => 'ตั้งค่า';

  @override
  String get playerAudioDevice => 'อุปกรณ์เสียง';

  @override
  String get settingsDownloads => 'ดาวน์โหลด';

  @override
  String get settingsDownloadsDesc => 'ตอนออฟไลน์ คิว และโหมดออฟไลน์';

  @override
  String get downloadsTitle => 'ดาวน์โหลด';

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
  String get downloadsOpenDesc => 'ดูคิวและทุกอย่างที่บันทึกในเครื่องนี้';

  @override
  String get downloadTitle => 'ดาวน์โหลด';

  @override
  String get downloadAlready => 'ดาวน์โหลดแล้วหรืออยู่ในคิว';

  @override
  String get downloadPickStream => 'ดาวน์โหลดสตรีมไหน?';

  @override
  String get downloadPickSubtitle => 'ดาวน์โหลดคำบรรยายไหน?';

  @override
  String get downloadPickAudio => 'ดาวน์โหลดแทร็กเสียงไหน?';

  @override
  String get downloadNoAudio => 'ไม่มีเสียงเพิ่ม';

  @override
  String get downloadAudio => 'เสียง';

  @override
  String get downloadNoSubtitle => 'ไม่มีคำบรรยาย';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'สตรีมนี้เป็นเพลย์ลิสต์ HLS ต้องใช้แอดออน FFmpeg เพื่อดาวน์โหลด';

  @override
  String get downloadSourceMissing => 'ยังไม่ได้ติดตั้งซอร์สของตอนนี้';

  @override
  String get downloadWaitingConnection => 'รอการเชื่อมต่อ';

  @override
  String get downloadSubtitles => 'คำบรรยาย';

  @override
  String get downloadDownloaded => 'ดาวน์โหลดแล้ว';

  @override
  String get downloadOffline => 'ออฟไลน์';

  @override
  String get downloadDelete => 'ลบที่ดาวน์โหลด';

  @override
  String get downloadCancel => 'ยกเลิก';

  @override
  String get downloadPause => 'หยุดชั่วคราว';

  @override
  String get downloadPaused => 'หยุดชั่วคราวอยู่';

  @override
  String get downloadResume => 'ทำต่อ';

  @override
  String get downloadPauseAll => 'หยุดทั้งหมด';

  @override
  String get downloadResumeAll => 'ทำต่อทั้งหมด';

  @override
  String get downloadQueuedState => 'รออยู่ในคิว';

  @override
  String get downloadResolving => 'กำลังดึงสตรีม…';

  @override
  String get downloadUsedFallback => 'ไม่มีสตรีมที่ตรงกัน ใช้อันแรกแทน';

  @override
  String get downloadTabQueue => 'คิว';

  @override
  String get downloadTabDone => 'เสร็จแล้ว';

  @override
  String get downloadTabFailed => 'ไม่สำเร็จ';

  @override
  String get downloadEmptyQueue => 'ไม่มีอะไรกำลังดาวน์โหลด';

  @override
  String get downloadEmptyDone => 'ยังไม่มีอะไรที่ดาวน์โหลด';

  @override
  String get downloadEmptyFailed => 'ไม่มีดาวน์โหลดที่ไม่สำเร็จ';

  @override
  String get downloadNext => 'ตอนถัดไป';

  @override
  String downloadNextN(int count) {
    return '$count ตอนถัดไป';
  }

  @override
  String downloadUnwatched(int count) {
    return 'ที่ยังไม่ได้ดูทั้งหมด ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ช่วงนี้ ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'ทุกตอน ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เข้าคิว $count ตอนแล้ว',
      one: 'เข้าคิว 1 ตอนแล้ว',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'ดาวน์โหลด $name แล้ว';
  }

  @override
  String downloadFailedBody(String name) {
    return 'ดาวน์โหลด $name ไม่สำเร็จ';
  }

  @override
  String downloadStorage(String size) {
    return 'ดาวน์โหลดใช้ไป $size';
  }

  @override
  String get downloadQueueHeader => 'คิว';

  @override
  String get downloadParallel => 'ดาวน์โหลดพร้อมกัน';

  @override
  String get downloadParallelDesc => 'ดาวน์โหลดทีละอัน หรือหลายอันพร้อมกัน';

  @override
  String get downloadOneByOne => 'ทีละอัน';

  @override
  String get downloadNotifications => 'แจ้งเตือนการดาวน์โหลด';

  @override
  String get downloadNotificationsDesc =>
      'แสดงความคืบหน้าสดถ้าระบบรองรับ ไม่งั้นแจ้งเมื่อดาวน์โหลดเสร็จ';

  @override
  String get downloadNotifyLive => 'สด';

  @override
  String get downloadNotifyDone => 'เมื่อเสร็จ';

  @override
  String get downloadNotifyOff => 'ปิด';

  @override
  String get downloadInfoFile => 'เขียนไฟล์ข้อมูลไว้ข้างแต่ละดาวน์โหลด';

  @override
  String get downloadInfoFileDesc =>
      'บันทึกสตรีม คุณภาพ คำบรรยาย และเวลาข้ามเป็นไฟล์ .json เล็ก ๆ';

  @override
  String get offlineHeader => 'ออฟไลน์';

  @override
  String get offlineModeDesc =>
      'อัตโนมัติจะออฟไลน์เฉพาะตอนเปิดแอปโดยไม่มีเน็ต เสมอจะออฟไลน์ไปจนกว่าจะเปลี่ยน';

  @override
  String get offlineModeOff => 'ปิด';

  @override
  String get offlineModeAlways => 'เสมอ';

  @override
  String get offlineModeOn =>
      'เปิดโหมดออฟไลน์อยู่ การเปลี่ยนแปลงจะบันทึกไว้ที่นี่และส่งเมื่อกลับมาออนไลน์';

  @override
  String get offlineSaved => 'บันทึกไว้ในเครื่องนี้แล้ว จะซิงก์เมื่อออนไลน์';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ซิงก์ $count การเปลี่ยนแปลงแล้ว',
      one: 'ซิงก์ 1 การเปลี่ยนแปลงแล้ว',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count การเปลี่ยนแปลงรอซิงก์',
      one: '1 การเปลี่ยนแปลงรอซิงก์',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'การเปลี่ยนแปลงที่รอซิงก์';

  @override
  String get offlinePendingNone => 'ไม่มีอะไรรออยู่';

  @override
  String get offlineSyncNow => 'ซิงก์เลย';

  @override
  String get offlineDiscard => 'ทิ้ง';

  @override
  String get downloadNotOffline =>
      'ตอนนี้ยังไม่ได้ดาวน์โหลด จึงใช้แบบออฟไลน์ไม่ได้';

  @override
  String get offlineModeChip => 'ออฟไลน์';

  @override
  String get downloadNextChapter => 'ตอนถัดไป';

  @override
  String downloadNextChapters(int count) {
    return '$count ตอนถัดไป';
  }

  @override
  String downloadUnread(int count) {
    return 'ที่ยังไม่ได้อ่านทั้งหมด ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'ทุกตอน ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total หน้า';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count หน้า';
  }

  @override
  String get downloadFfmpegTitle => 'ต้องใช้แอดออน FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'สตรีมนี้เป็นเพลย์ลิสต์ HLS แอดออน FFmpeg จะรวมชิ้นส่วนเป็นไฟล์ mp4 ไฟล์เดียว ถ้าไม่มีจะเก็บชิ้นส่วนไว้ในโฟลเดอร์ของตอนและเล่นจากตรงนั้น';

  @override
  String get downloadFfmpegInstall => 'ติดตั้ง';

  @override
  String get downloadFfmpegInstalling =>
      'กำลังติดตั้ง FFmpeg อาจใช้เวลาสักพัก…';

  @override
  String get downloadFinishing => 'กำลังรวมชิ้นส่วนเป็นไฟล์เดียว…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total ส่วน';
  }

  @override
  String get downloadTorrentNoFile => 'ทอร์เรนต์นี้ไม่มีไฟล์วิดีโอให้ดาวน์โหลด';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'กำลังดาวน์โหลด $count รายการ',
      one: 'กำลังดาวน์โหลด 1 รายการ',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'ลบที่ดาวน์โหลดแล้วดู';

  @override
  String get downloadAutoDeleteDesc =>
      'ลบที่ดาวน์โหลดเมื่อความคืบหน้าของคุณไปถึงตอนนั้น';

  @override
  String get downloadConnections => 'การเชื่อมต่อต่อดาวน์โหลด';

  @override
  String get downloadConnectionsDesc =>
      'แบ่งไฟล์ใหญ่เป็นส่วน ๆ ที่ดึงพร้อมกัน บางเซิร์ฟเวอร์จำกัดเรื่องนี้';

  @override
  String get downloadPlayChoice => 'เล่นจาก';

  @override
  String get downloadPlayLocalDesc => 'ไฟล์ที่บันทึกในเครื่องนี้';

  @override
  String get downloadPlayStream => 'สตรีมออนไลน์';

  @override
  String get downloadPlayStreamDesc => 'โหลดตอนจากซอร์ส';

  @override
  String get offlineFeedTitle => 'ดาวน์โหลดในเครื่องนี้แล้ว';

  @override
  String get offlineFeedEmpty => 'ดาวน์โหลดอะไรไว้ตอนออนไลน์ แล้วจะขึ้นที่นี่';

  @override
  String get offlineEnabled => 'เปิดโหมดออฟไลน์อยู่';

  @override
  String get offlineDisabled => 'ปิดโหมดออฟไลน์อยู่';

  @override
  String get downloadReadChoice => 'อ่านจาก';

  @override
  String get downloadReadLocalDesc => 'หน้าที่บันทึกในเครื่องนี้';

  @override
  String get downloadReadOnline => 'อ่านออนไลน์';

  @override
  String get downloadReadOnlineDesc => 'โหลดตอนจากซอร์ส';

  @override
  String downloadDeleteConfirm(String name) {
    return 'ลบ $name ออกจากเครื่องนี้ไหม?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'ยกเลิกการดาวน์โหลด $name ไหม? ส่วนที่ดาวน์โหลดไปแล้วจะถูกลบ';
  }

  @override
  String get downloadFfmpegFolder => 'เก็บเป็นโฟลเดอร์';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ทิ้ง $count การเปลี่ยนแปลงที่ยังไม่เคยส่งไหม? ย้อนกลับไม่ได้นะ',
      one: 'ทิ้งการเปลี่ยนแปลงที่ยังไม่เคยส่งไหม? ย้อนกลับไม่ได้นะ',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'รอ Wi-Fi';

  @override
  String get downloadWaitingMetered => 'หยุดชั่วคราวเพราะเน็ตจำกัด';

  @override
  String get downloadWifiOnly => 'Wi-Fi เท่านั้น';

  @override
  String get downloadWifiOnlyDesc => 'ดาวน์โหลดจะรอตอนใช้เน็ตมือถือ';

  @override
  String get downloadMetered => 'หยุดเมื่อใช้เน็ตจำกัด';

  @override
  String get downloadMeteredDesc =>
      'รอตอนใช้ Wi-Fi ที่เครื่องตั้งเป็นเน็ตจำกัดด้วย';

  @override
  String get downloadSpeedLimit => 'จำกัดความเร็ว';

  @override
  String get downloadSpeedLimitDesc => 'จำกัดความเร็วดาวน์โหลดรวม';

  @override
  String get downloadUnlimited => 'ไม่จำกัด';

  @override
  String get downloadMoveToTop => 'ย้ายไปบนสุด';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds ซีด · $peers เพียร์';
  }

  @override
  String get downloadTorrentFile => 'ไฟล์ไหน?';

  @override
  String get downloadTorrentAuto => 'จับคู่ตอนอัตโนมัติ';

  @override
  String get downloadTorrentLoading => 'กำลังอ่านทอร์เรนต์…';

  @override
  String get watchAutoSource => 'สลับไปซอร์สถัดไปอัตโนมัติ';

  @override
  String get watchAutoSourceDesc =>
      'ถ้าซอร์สหาเรื่องไม่เจอหรือโหลดไม่ได้ ให้ลองซอร์สที่ติดตั้งถัดไป';

  @override
  String get extensionTest => 'ทดสอบส่วนขยาย';

  @override
  String get extensionTestCopy => 'คัดลอกที่ไม่สำเร็จพร้อมล็อก';

  @override
  String get extensionTestQuery => 'คำค้นหา';

  @override
  String get extensionTestRun => 'รัน';

  @override
  String get extensionTestStop => 'หยุด';

  @override
  String get extensionTestNone => 'ไม่มีส่วนขยายประเภทนี้ที่ติดตั้งอยู่';

  @override
  String get extensionTestNotRun => 'ยังไม่ได้ทดสอบ';

  @override
  String get extensionTestSearch => 'ค้นหา';

  @override
  String get extensionTestDetail => 'รายละเอียด';

  @override
  String get extensionTestUnits => 'ตอน';

  @override
  String get extensionTestLinks => 'สตรีม / หน้า';

  @override
  String extensionTestFailedAt(String step) {
    return 'ไม่สำเร็จที่ขั้น $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'ทดสอบแล้ว $done จาก $total · ผ่าน $passed · ไม่ผ่าน $failed';
  }

  @override
  String get extensionTestCopyLogs => 'คัดลอกทุกอย่างพร้อมล็อกเต็ม';

  @override
  String get onboardingFeaturesTitle => 'ครบในที่เดียว';

  @override
  String get onboardingFeaturesBody =>
      'ทุกอย่างที่ติดตาม ดู และอ่าน โดยไม่ต้องสลับแอป';

  @override
  String get onboardingFeatureTrack => 'ติดตามทุกอย่าง';

  @override
  String get onboardingFeatureTrackDesc =>
      'รายการ ความคืบหน้า และคะแนนบน AniList, MyAnimeList, Simkl, Kitsu และ MangaBaka';

  @override
  String get onboardingFeatureWatch => 'ดูและอ่าน';

  @override
  String get onboardingFeatureWatchDesc =>
      'ติดตั้งส่วนขยายแล้วสตรีมอนิเมะ หรืออ่านมังงะและนิยายได้ในแอปเลย';

  @override
  String get onboardingFeatureOffline => 'พกไปออฟไลน์';

  @override
  String get onboardingFeatureOfflineDesc =>
      'ดาวน์โหลดตอนไว้ แล้วดูต่อได้แม้ไม่มีเน็ต';

  @override
  String get onboardingFeatureSync => 'ซิงก์รายการให้ตรงกัน';

  @override
  String get onboardingFeatureSyncDesc =>
      'คัดลอกรายการข้ามบริการ หรือให้อันที่ไปไกลกว่าชนะ';

  @override
  String get onboardingServices => 'ใช้งานร่วมกับ';

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
