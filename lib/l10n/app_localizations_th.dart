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
  String get appLockBiometric => 'ปลดล็อคด้วยไบโอเมตริกซ์';

  @override
  String get appLockBiometricDesc =>
      'ใช้ลายนิ้วมือหรือใบหน้าของคุณแทนการพิมพ์รหัสผ่าน';

  @override
  String get appLockBiometricReason => 'ปลดล็อคดาร์ท็อตสึ';

  @override
  String get appLockDelay => 'ล็อคเมื่อไม่ได้ใช้งาน';

  @override
  String get appLockDelayAlways => 'เสมอ';

  @override
  String get appLockDelayNever => 'ไม่เคย';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count นาที',
      one: '1 นาที',
    );
    return 'หลังจาก $_temp0';
  }

  @override
  String get appLockUseBiometric => 'ใช้ไบโอเมตริกซ์';

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
      other: '$count มีการอัปเดต',
      one: 'มีการอัปเดต 1 รายการ',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'อัพเดททั้งหมดครับ';

  @override
  String extensionsUpdated(int done, int total) {
    return 'อัปเดตส่วนขยาย $done จาก $total แล้ว';
  }

  @override
  String get updateConflictTitle => 'ไม่ได้ติดตั้งการอัปเดต';

  @override
  String updateConflictBody(String names) {
    return '$names ไม่สามารถติดตั้งทับเวอร์ชันที่มีอยู่ได้ ซึ่งมักจะหมายความว่าสำเนาที่ติดตั้งมีการลงนามแตกต่างออกไป ถอนการติดตั้งและติดตั้งเวอร์ชันใหม่หรือไม่';
  }

  @override
  String get updateConflictAction => 'ถอนการติดตั้งและติดตั้งใหม่';

  @override
  String get noSourceSettings => 'ซอร์สนี้ไม่มีการตั้งค่า';

  @override
  String get addPluginRepository => 'เพิ่มคลังปลั๊กอิน';

  @override
  String get pluginIndexUrlHint => 'URL ดัชนีปลั๊กอิน';

  @override
  String get addRepository => 'เพิ่มคลัง';

  @override
  String get importRepositoryFile => 'นำเข้าไฟล์';

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
  String get manageServices => 'บริการสื่อ';

  @override
  String get manageServicesDesc =>
      'จัดลำดับบริการใหม่และเลือกบริการที่จะแสดงในเครื่องมือเลือก';

  @override
  String get manageServicesHint =>
      'ลากเพื่อเรียงลำดับใหม่ ปิดอันที่คุณไม่ได้ใช้';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'เรื่องราว';

  @override
  String get watchOrder => 'สั่งนาฬิกา';

  @override
  String get watchOrderOpenSite => 'เปิดบน chiaki.site';

  @override
  String get watchOrderUnavailable => 'ไม่พบลำดับการดูสำหรับชื่อนี้';

  @override
  String get watchOrderOpenFailed => 'ไม่สามารถเปิดชื่อนั้นได้';

  @override
  String get watchOrderCurrent => 'คุณอยู่ที่นี่';

  @override
  String get watchOrderCredit => 'ดูคำสั่งซื้อจาก chiaki.site';

  @override
  String get customPathDesc => 'ที่เก็บข้อมูลแอป กดค้างเพื่อรีเซ็ต';

  @override
  String get selectDirectory => 'เลือกโฟลเดอร์';

  @override
  String get differentCacheManager => 'แคชรูปแบบอื่น';

  @override
  String get differentCacheManagerDesc => 'ใช้ตัวจัดการแคชอื่นสำหรับรูปภาพ';

  @override
  String get settingsSync => 'การตั้งค่าการซิงค์';

  @override
  String get settingsSyncDesc =>
      'รักษาการตั้งค่าของคุณให้เหมือนกันในทุกอุปกรณ์ พวกมันจะถูกจัดเก็บไว้ในส่วนสำคัญส่วนตัวในบัญชี GitHub ของคุณ';

  @override
  String get settingsSyncSwitch => 'ซิงค์การเปลี่ยนแปลง';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'ลงชื่อเข้าใช้ด้วย GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'การตั้งค่าจะถูกจัดเก็บไว้ในส่วนสำคัญส่วนตัวในบัญชีของคุณ';

  @override
  String get settingsSyncToken => 'ใช้โทเค็นการเข้าถึงส่วนบุคคล';

  @override
  String get settingsSyncTokenDesc =>
      'สร้างอันหนึ่งที่ github.com/settings/tokens โดยมีสิทธิ์เฉพาะส่วนสำคัญเท่านั้น';

  @override
  String get settingsSyncTokenField => 'โทเค็น';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'ลงชื่อเข้าใช้ด้วย $user';
  }

  @override
  String get settingsSyncSignOut => 'ออกจากระบบ';

  @override
  String settingsSyncCode(Object code) {
    return 'ป้อน $code บน GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'หน้า GitHub ที่เปิดขึ้นในเบราว์เซอร์ของคุณ แตะเพื่อคัดลอกรหัส หรือแตะค้างไว้เพื่อยกเลิก';

  @override
  String get settingsSyncSignInFailed => 'ไม่สามารถลงชื่อเข้าใช้ GitHub ได้';

  @override
  String get dcPreview => 'ดูตัวอย่าง';

  @override
  String get dcSampleWatching => 'กำลังดู';

  @override
  String get dcSampleReading => 'การอ่าน';

  @override
  String get dcSampleBrowsing => 'การเรียกดู';

  @override
  String get dcSampleLive => 'ตอนนี้';

  @override
  String get dcLiveNothing =>
      'ไม่มีอะไรแสดงอยู่ในขณะนี้ เปิดชื่อเรื่อง เริ่มตอนหรือบท และจะปรากฏที่นี่';

  @override
  String get dcMemberList => 'ในรายชื่อสมาชิก';

  @override
  String get dcAccount => 'บัญชี';

  @override
  String get dcSignIn => 'ลงชื่อเข้าใช้ด้วย Discord';

  @override
  String get dcSignOut => 'ออกจากระบบ';

  @override
  String get dcDesktopHint =>
      'โดยไม่ต้องเชื่อมต่อ Discord จะแสดง \"Watching Dartotsu\" ผ่านแอปเดสก์ท็อป เชื่อมต่อ Discord เพื่อตั้งชื่อกิจกรรมตามชื่อของคุณ รวมถึงบนมือถือด้วย';

  @override
  String get dcMobileHint =>
      'เชื่อมต่อ Discord เพื่อแสดงสิ่งที่คุณกำลังรับชมหรืออ่าน ใช้หน้าการอนุญาตของ Discord ไม่ใช่โทเค็นบัญชีของคุณ';

  @override
  String get dcConnect => 'เชื่อมต่อความไม่ลงรอยกัน';

  @override
  String get dcConnectDesc =>
      'เปิดหน้าการอนุญาตของ Discord และเพิ่ม Dartotsu ใต้แอปที่ได้รับอนุญาต Discord ขอให้อัปเดตสถานะของคุณ บันทึกเฉพาะโทเค็นการรีเฟรชเท่านั้น ไม่ใช่โทเค็นบัญชีของคุณ';

  @override
  String get dcConnectFailed => 'ไม่สามารถเชื่อมต่อ Discord ได้';

  @override
  String get dcConnectedSnack => 'เชื่อมต่อ Discord แล้ว';

  @override
  String get dcDisconnect => 'ตัดการเชื่อมต่อ';

  @override
  String get dcDisconnectedSnack => 'Discord ถูกตัดการเชื่อมต่อ';

  @override
  String get dcUseToken => 'ใช้โทเค็นแทน';

  @override
  String get dcRouteDesktop => 'ผ่านแอปเดสก์ท็อป Discord';

  @override
  String get dcRouteHeadless => 'ผ่านบัญชีของคุณ';

  @override
  String get dcRouteGateway => 'ผ่านบัญชีของคุณถ่ายทอดสด';

  @override
  String get dcRouteLinked => 'แอพที่เชื่อมต่อ';

  @override
  String get dcRouteNone => 'ไม่ได้เชื่อมต่อ';

  @override
  String get dcStatusNeedsToken =>
      'จำเป็นต้องมีโทเค็น Discord การเชื่อมต่อแอปไม่ได้กำหนดสถานะออนไลน์ของคุณ';

  @override
  String get dcAccountOnly => 'จำเป็นต้องมีบัญชีที่ลงชื่อเข้าใช้';

  @override
  String get dcStatusSection => 'สถานะ';

  @override
  String get dcControlStatus => 'ควบคุมสถานะของฉัน';

  @override
  String get dcControlStatusDesc =>
      'คงการเชื่อมต่อสดกับ Discord ในขณะที่ Rich Presence เปิดอยู่ ดังนั้น Dartotsu จึงสามารถตั้งค่าสถานะของคุณได้';

  @override
  String get dcStatusOnline => 'ออนไลน์';

  @override
  String get dcStatusIdle => 'ไม่ได้ใช้งาน';

  @override
  String get dcStatusDnd => 'อย่ารบกวน';

  @override
  String get dcStatusInvisible => 'มองไม่เห็น';

  @override
  String get dcCustomStatus => 'สถานะที่กำหนดเอง';

  @override
  String get dcCustomStatusHint => 'คุณทำอะไรอยู่?';

  @override
  String get dcActivitySection => 'กิจกรรม';

  @override
  String get dcShowWatching => 'แสดงในขณะที่รับชม';

  @override
  String get dcShowReading => 'แสดงในขณะที่อ่าน';

  @override
  String get dcListening => 'การฟัง';

  @override
  String get dcCompeting => 'กำลังแข่งขัน';

  @override
  String get dcActivityName => 'ชื่อกิจกรรม';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'ชื่อเรื่อง';

  @override
  String get dcNameCustom => 'กำหนดเอง';

  @override
  String get dcCustomNameHint => 'ชื่อที่แสดงหลัง “รับชม”';

  @override
  String get dcStatusText => 'ข้อความสถานะ';

  @override
  String get dcStatusTextDesc => 'สิ่งที่รายชื่อสมาชิกแสดงถัดจากชื่อของคุณ';

  @override
  String get dcDisplayName => 'ชื่อ';

  @override
  String get dcDisplayState => 'รัฐ';

  @override
  String get dcDisplayDetails => 'รายละเอียด';

  @override
  String get dcTextSection => 'ข้อความ';

  @override
  String get dcDetails => 'สายบน';

  @override
  String get dcState => 'บรรทัดล่าง';

  @override
  String get dcTemplateHint => 'ว่างใช้ค่าเริ่มต้น';

  @override
  String get dcVariables => 'แตะเพื่อใส่ค่า';

  @override
  String get dcImagesSection => 'รูปภาพ';

  @override
  String get dcLargeImage => 'ภาพใหญ่';

  @override
  String get dcLargeAuto => 'อัตโนมัติ';

  @override
  String get dcLargeCover => 'ปก';

  @override
  String get dcLargeLogo => 'โลโก้';

  @override
  String get dcSmallImage => 'ภาพเล็ก';

  @override
  String get dcSmallAuto => 'โลโก้';

  @override
  String get dcSmallNone => 'ไม่มี';

  @override
  String get dcTimerStyle => 'สไตล์ตัวจับเวลา';

  @override
  String get dcTimerAuto => 'อัตโนมัติ';

  @override
  String get dcTimerElapsed => 'ผ่านไปแล้ว';

  @override
  String get dcTimerRemaining => 'ที่เหลืออยู่';

  @override
  String get dcButtonsSection => 'ปุ่ม';

  @override
  String get dcButtonMedia => 'เชื่อมโยงไปยังชื่อเรื่อง';

  @override
  String get dcButtonApp => 'ลิงค์ไปยังดาร์ทตสึ';

  @override
  String get dcButtonCustom => 'ปุ่มกำหนดเอง';

  @override
  String get dcButtonLabel => 'ป้ายกำกับ';

  @override
  String get dcButtonUrl => 'ลิงค์';

  @override
  String get dcPrivacySection => 'ความเป็นส่วนตัว';

  @override
  String get dcPrivateText => 'ข้อความส่วนตัว';

  @override
  String get dcPrivateHint => 'บางสิ่งบางอย่างที่เป็นส่วนตัว';

  @override
  String get dcTokenWarning =>
      'การลงชื่อเข้าใช้จะใช้โทเค็นบัญชีของคุณ กฎของ Discord ไม่สนับสนุนสิ่งนี้ ดังนั้นให้ใช้โดยยอมรับความเสี่ยงเอง';

  @override
  String get dcConnected => 'เชื่อมต่อแล้ว';

  @override
  String get dcConnection => 'การเชื่อมต่อ';

  @override
  String get dcMethodDesktop => 'แอพเดสก์ท็อป Discord';

  @override
  String get dcMethodDesktopDesc =>
      'ใช้โดยอัตโนมัติเมื่อไม่มีการเชื่อมต่อใดๆ อีก ต้องเปิด Discord ในคอมพิวเตอร์เครื่องนี้';

  @override
  String get dcMethodToken => 'โทเค็นบัญชี';

  @override
  String get dcInUse => 'ในการใช้งาน';

  @override
  String get dcRecommended => 'แนะนำ';

  @override
  String get dcConnecting => 'กำลังเชื่อมต่อ...';

  @override
  String get dcDisconnected => 'ไม่ได้เชื่อมต่อ';

  @override
  String dcSignedInAs(String name) {
    return 'ลงชื่อเข้าใช้ด้วย $name';
  }

  @override
  String get settingsSyncOn => 'เปิด';

  @override
  String get settingsSyncCustom => 'กำหนดเอง';

  @override
  String get settingsSyncChangedHeader => 'การตั้งค่าที่เปลี่ยนแปลง';

  @override
  String get settingsSyncNoneChanged =>
      'คุณยังไม่ได้เปลี่ยนแปลงสิ่งเหล่านี้ ดังนั้นจึงไม่มีอะไรจะซิงค์';

  @override
  String get settingsSyncChangedOnly =>
      'เฉพาะการตั้งค่าที่คุณเปลี่ยนแปลงเท่านั้นที่จะถูกเก็บไว้ ทุกสิ่งทุกอย่างใช้ค่าเริ่มต้นในทุกอุปกรณ์ ไอคอนคลาวด์แสดงสิ่งที่มีอยู่แล้วบนเซิร์ฟเวอร์';

  @override
  String get settingsSyncOffCategory =>
      'ไม่ซิงค์ สิ่งเหล่านี้จะคงอยู่ในอุปกรณ์นี้และสำเนาของเซิร์ฟเวอร์จะยังคงอยู่เหมือนเดิม';

  @override
  String get settingsSyncPartsNote =>
      'ต่ออุปกรณ์ ปิดจะคงมูลค่าของอุปกรณ์แต่ละเครื่อง ดังนั้นโทรศัพท์และทีวีอาจแตกต่างกัน';

  @override
  String get settingsSyncPartSubtitles => 'ขนาดและสีของคำบรรยาย';

  @override
  String get settingsSyncPartSubtitlesDesc => 'ขนาด น้ำหนัก สี และตำแหน่ง';

  @override
  String get settingsSyncPartPictureColors => 'สีของภาพ';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'ความสว่าง คอนทราสต์ ความอิ่มตัว แกมมา เฉดสี และ HDR';

  @override
  String get settingsSyncPartPalette => 'สีของธีม';

  @override
  String get settingsSyncPartPaletteDesc => 'ธีม สีเน้น และ OLED สีดำ';

  @override
  String get settingsSyncCatOther => 'ดู อ่าน และบริการ';

  @override
  String get settingsSyncTitles => 'ดูความคืบหน้าและชื่อเรื่อง';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records title และ $resume รายการดำเนินการต่อบนเซิร์ฟเวอร์';
  }

  @override
  String get settingsSyncTitlesNone => 'ยังไม่ได้อัพโหลดอะไรเลย';

  @override
  String get settingsSyncTitlesNote =>
      'ดูและอ่านตำแหน่ง ชั้นวางเรซูเม่ รายการท้องถิ่นของคุณ บุ๊กมาร์ก ไฮไลท์ และตัวเลือกต่อชื่อเรื่อง การจับคู่และสตรีมแหล่งที่มาจะอยู่บนแต่ละอุปกรณ์เนื่องจากขึ้นอยู่กับส่วนขยายของคุณ ชื่อเรื่องจะอัปโหลดได้มากที่สุดทุกๆ 45 วินาที';

  @override
  String get settingsSyncConnect => 'ไม่ได้เชื่อมต่อ';

  @override
  String get settingsSyncConnectDesc =>
      'ลงชื่อเข้าใช้ด้วย GitHub เพื่อให้การตั้งค่าของคุณเหมือนเดิมในทุกอุปกรณ์';

  @override
  String get settingsSyncFailedTitle => 'การซิงค์ล้มเหลว';

  @override
  String get settingsSyncPaused => 'หยุดชั่วคราว';

  @override
  String get settingsSyncPausedDesc =>
      'ไม่มีการอัปโหลดหรือดาวน์โหลดในขณะที่ปิดอยู่';

  @override
  String get settingsSyncUpToDate => 'ถึงวันที่';

  @override
  String get settingsSyncRetry => 'ลองอีกครั้ง';

  @override
  String get settingsSyncAccount => 'บัญชี GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'ข้อมูลของคุณไปที่ส่วนสำคัญส่วนตัวในบัญชีของคุณเอง';

  @override
  String get settingsSyncWaiting => 'กำลังรอให้คุณอนุมัติบน GitHub';

  @override
  String get settingsSyncCopyCode => 'แตะรหัสเพื่อคัดลอก';

  @override
  String get settingsSyncCancel => 'ยกเลิก';

  @override
  String get settingsSyncStatSettings => 'การตั้งค่า';

  @override
  String get settingsSyncStatTitles => 'ชื่อเรื่อง';

  @override
  String get settingsSyncStatShelf => 'ดำเนินการต่อ';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'อัปโหลด $time จาก $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count มีการเปลี่ยนแปลง',
      one: 'มีการเปลี่ยนแปลง 1 รายการ',
      zero: 'ยังไม่มีอะไรเปลี่ยนแปลง',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'บัญชีและรหัสผ่าน';

  @override
  String get settingsSyncSecretsDesc =>
      'ซิงค์การลงชื่อเข้าใช้ของคุณ (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), คีย์ API และการล็อคแอประหว่างอุปกรณ์ของคุณ พวกมันถูกเข้ารหัสด้วยข้อความรหัสผ่านที่จะคงอยู่ในอุปกรณ์ของคุณ ดังนั้น GitHub จะไม่เห็นมันเลย';

  @override
  String get settingsSyncSecretsOn => 'บัญชีถูกซิงค์และเข้ารหัส';

  @override
  String get settingsSyncSecretsOnDesc =>
      'การออกจากระบบบนอุปกรณ์เครื่องหนึ่งไม่ได้ทำให้คุณออกจากระบบในอุปกรณ์อื่นๆ';

  @override
  String get settingsSyncSecretsBroken =>
      'ข้อความรหัสผ่านไม่ตรงกับข้อความบนเซิร์ฟเวอร์อีกต่อไป ป้อนอีกครั้งเพื่อซิงค์บัญชีต่อไป';

  @override
  String get settingsSyncPassphraseSet => 'ตั้งข้อความรหัสผ่าน';

  @override
  String get settingsSyncPassphraseEnter => 'ป้อนข้อความรหัสผ่านของคุณ';

  @override
  String get settingsSyncPassphraseField => 'ข้อความรหัสผ่าน';

  @override
  String get settingsSyncPassphraseConfirm => 'ทำซ้ำข้อความรหัสผ่าน';

  @override
  String get settingsSyncPassphraseNew =>
      'เลือกข้อความรหัสผ่านอย่างน้อย 6 ตัวอักษร มันไม่ได้ถูกจัดเก็บไว้ที่ใดนอกจากอุปกรณ์ของคุณและไม่สามารถกู้คืนได้ หากคุณลืม ให้ลบสำเนาเซิร์ฟเวอร์แล้วเริ่มต้นใหม่อีกครั้ง';

  @override
  String get settingsSyncPassphraseExisting =>
      'ป้อนข้อความรหัสผ่านที่คุณเลือกบนอุปกรณ์อื่นของคุณ บัญชีบนอุปกรณ์นี้จะถูกแทนที่ด้วยบัญชีที่ซิงค์';

  @override
  String get settingsSyncPassphraseWrong => 'ข้อความรหัสผ่านไม่ถูกต้อง';

  @override
  String get settingsSyncPassphraseMismatch => 'ข้อความรหัสผ่านไม่ตรงกัน';

  @override
  String get settingsSyncPassphraseShort => 'ใช้อักขระอย่างน้อย 6 ตัว';

  @override
  String get settingsSyncSecretsStop => 'หยุดการซิงค์บัญชี';

  @override
  String get settingsSyncSecretsDelete => 'ลบออกจาก GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'การดำเนินการนี้จะลบไฟล์บัญชีที่เข้ารหัสออกจากส่วนสำคัญของคุณ อุปกรณ์อื่นๆ จะเก็บการลงชื่อเข้าใช้ไว้และสามารถตั้งค่าข้อความรหัสผ่านใหม่ได้';

  @override
  String get settingsSyncWhat => 'สิ่งที่ต้องซิงค์';

  @override
  String get settingsSyncServer => 'บนเซิร์ฟเวอร์';

  @override
  String get settingsSyncServerEmpty => 'ยังไม่ได้อัพโหลดอะไรเลย';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'การตั้งค่า $count อัปโหลด $time จาก $device';
  }

  @override
  String get settingsSyncThisDevice => 'อุปกรณ์นี้';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count การตั้งค่าบนเซิร์ฟเวอร์',
      one: '1 การตั้งค่าบนเซิร์ฟเวอร์',
      zero: 'ไม่มีอะไรบนเซิร์ฟเวอร์',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'ซิงค์เลย';

  @override
  String get settingsSyncRunning => 'กำลังซิงค์...';

  @override
  String get settingsSyncNever => 'ยังไม่ได้ซิงค์';

  @override
  String settingsSyncLast(Object time) {
    return 'ซิงค์ครั้งล่าสุด $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'การซิงค์ล้มเหลว: $error';
  }

  @override
  String get settingsSyncScope =>
      'ซิงค์เฉพาะการตั้งค่าที่ทำงานเหมือนกันทุกที่เท่านั้น บัญชี โทเค็น โฟลเดอร์ ส่วนขยาย การแจ้งเตือน Discord อัปเดต และขนาดหน้าต่างจะยังคงอยู่ในแต่ละอุปกรณ์';

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
  String get autoUpdateRuntimes => 'อัปเดตรันไทม์ส่วนขยายโดยอัตโนมัติ';

  @override
  String get autoUpdateRuntimesDesc =>
      'ดาวน์โหลด Aniyomi, CloudStream และเวอร์ชันรันไทม์อื่นๆ ใหม่ในเบื้องหลัง ปิด ไอคอนอัปเดตจะปรากฏถัดจากผู้จัดการแทน';

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
  String get backupPasswordRequired => 'รหัสผ่าน (จำเป็นสำหรับข้อมูลบัญชี)';

  @override
  String get backupProtectedNeedsPassword =>
      'ตั้งรหัสผ่านเพื่อสำรองข้อมูลบัญชีหรือยกเลิกการเลือก';

  @override
  String get backupProtectedSkipped =>
      'ข้อมูลสำรองนี้ไม่มีรหัสผ่าน ข้อมูลบัญชีจึงถูกข้ามไป';

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
  String get logDelete => 'ลบไฟล์บันทึก';

  @override
  String get logDeleteDesc => 'ล้างบันทึกแอปที่บันทึกไว้เพื่อเพิ่มพื้นที่ว่าง';

  @override
  String logDeleted(String size) {
    return 'ลบ $size ของบันทึกแล้ว';
  }

  @override
  String get missingSequel => 'ภาคต่อที่หายไป';

  @override
  String get rising => 'เพิ่มขึ้น';

  @override
  String get stacks => 'สแต็ค';

  @override
  String get stacksAll => 'ทั้งหมด';

  @override
  String get stacksFeatured => 'จุดเด่น';

  @override
  String get stacksMine => 'ของคุณ';

  @override
  String get stacksSaved => 'บันทึกแล้ว';

  @override
  String get stacksFollowing => 'กำลังติดตาม';

  @override
  String get stacksEmpty => 'ยังไม่มีสแต็คที่นี่';

  @override
  String get stacksSignIn => 'ลงชื่อเข้าใช้ MangaBaka เพื่อดูสแต็คของคุณ';

  @override
  String get stacksScopeNeeded =>
      'สแต็คของคุณจำเป็นต้องได้รับอนุญาตใหม่ ลงชื่อเข้าใช้ MangaBaka อีกครั้งเพื่ออนุญาต';

  @override
  String get stacksSignInAgain => 'ลงชื่อเข้าใช้อีกครั้ง';

  @override
  String get stacksCouldntLoad => 'ไม่สามารถโหลดสแต็กได้';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ซีรีส์',
      one: '1 ชุด',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count บันทึก',
      one: '1 บันทึก',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'โดย $name';
  }

  @override
  String get stackSpoilers => 'สปอยเลอร์';

  @override
  String get stackEmptyEntries => 'กองนี้ว่างเปล่า';

  @override
  String get stackSave => 'บันทึกสแต็ค';

  @override
  String get stackUnsave => 'ลบออกจากที่บันทึกไว้';

  @override
  String get stackSavedToast => 'บันทึกลงในสแต็คของคุณแล้ว';

  @override
  String get stackRemovedToast => 'ลบออกจากสแต็คที่คุณบันทึกไว้';

  @override
  String userStacks(String name) {
    return 'สแต็คโดย $name';
  }

  @override
  String get newsTitle => 'ข่าว';

  @override
  String get newsEmpty => 'ไม่มีข่าวในขณะนี้';

  @override
  String get newsCouldntLoad => 'ไม่สามารถโหลดข่าวได้';

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
  String get followCoverMediaOnly => 'สำหรับสื่อเท่านั้น';

  @override
  String get followCoverMediaOnlyDesc =>
      'ติดตามเฉพาะหน้าปกสื่อเท่านั้น ส่วนอื่นๆ คงสีปกติไว้';

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
  String get imageTitlePage => 'หน้า';

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
  String get supportDeveloper => 'สนับสนุนนักพัฒนา';

  @override
  String get buyMeCoffee => 'ซื้อกาแฟให้ฉันหน่อย';

  @override
  String get upiId => 'รหัส UPI';

  @override
  String get upiCopied => 'คัดลอกรหัส UPI แล้ว';

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
  String get onboardingLanguageBody =>
      'เลือกภาษาที่ Dartotsu จะแสดง คุณสามารถเปลี่ยนได้ในภายหลังในการตั้งค่า';

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
    return 'บทที่ $n';
  }

  @override
  String get calendarExpected => 'คาดว่า';

  @override
  String get castReceiverFailed => 'Chromecast ไม่ได้เริ่มโปรแกรมเล่น';

  @override
  String get castPlaybackFailed => 'อุปกรณ์ไม่สามารถเล่นสตรีมนี้ได้';

  @override
  String get shortcutNothingToContinue => 'ยังไม่มีอะไรจะดำเนินต่อไป';

  @override
  String shortcutNoCalendar(String service) {
    return '$service ไม่มีปฏิทิน';
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
  String get comickLoginFailed => 'การเข้าสู่ระบบ Comick ล้มเหลว';

  @override
  String get tagline => 'สโลแกน';

  @override
  String get trending => 'กำลังมาแรง';

  @override
  String get anticipated => 'คาดการณ์ไว้';

  @override
  String get watchlist => 'รายการเฝ้าดู';

  @override
  String get recommendedShows => 'รายการแนะนำ';

  @override
  String get recommendedMovies => 'หนังแนะนำ';

  @override
  String get boxOffice => 'บ็อกซ์ออฟฟิศ';

  @override
  String get popularMovies => 'ภาพยนตร์ยอดนิยม';

  @override
  String get popularShows => 'รายการยอดนิยม';

  @override
  String get anticipatedMovies => 'ภาพยนตร์ที่คาดหวัง';

  @override
  String get anticipatedShows => 'การแสดงที่คาดหวัง';

  @override
  String get trendingShows => 'รายการที่ได้รับความนิยม';

  @override
  String get mostWatchedThisWeek => 'มีคนดูมากที่สุดในสัปดาห์นี้';

  @override
  String get sortMostViewed => 'มีผู้ชมมากที่สุด';

  @override
  String get sortMostFollowed => 'มีคนติดตามมากที่สุด';

  @override
  String get sortLatestUpdates => 'อัพเดทล่าสุด';

  @override
  String get translationStatusLabel => 'การแปล';

  @override
  String get weeklySchedule => 'กำหนดการรายสัปดาห์';

  @override
  String get mostFollowed => 'ติดตามมากที่สุด';

  @override
  String get latestUpdates => 'อัพเดทล่าสุด';

  @override
  String get trendingAnime => 'อะนิเมะที่กำลังมาแรง';

  @override
  String get topRatedAnime => 'อะนิเมะยอดนิยม';

  @override
  String get mostFollowedAnime => 'อนิเมะที่มีคนติดตามมากที่สุด';

  @override
  String get comickProfile => 'โปรไฟล์การ์ตูน';

  @override
  String get refreshFromComick => 'รีเฟรชจาก Comick';

  @override
  String get mangaBakaProfile => 'โปรไฟล์ MangaBaka';

  @override
  String get refreshFromMangaBaka => 'รีเฟรชจาก MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'ลงชื่อเข้าใช้ MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'โปรไฟล์ MangaUpdates';

  @override
  String get mangaUpdatesAnimeStart => 'การปรับตัวของอะนิเมะเริ่มต้นขึ้น';

  @override
  String get mangaUpdatesAnimeEnd => 'การดัดแปลงอนิเมะจบลงแล้ว';

  @override
  String get refreshFromMangaUpdates => 'รีเฟรชจาก MangaUpdates';

  @override
  String get usernameOnly => 'ชื่อผู้ใช้';

  @override
  String get releases => 'ข่าวประชาสัมพันธ์';

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
  String get hideNsfwSourcesDesc =>
      'ซ่อนแหล่งที่มาที่มีเครื่องหมาย 18+ จากฟีดและเครื่องมือเลือกแหล่งที่มา พวกเขายังคงติดตั้งอยู่';

  @override
  String get hideNsfwDesc =>
      'ไม่ให้เรื่องผู้ใหญ่โผล่ในฟีดและการค้นหา และแยกรายการผู้ใหญ่ของคุณเองไว้ใน Hidden Media';

  @override
  String get kitsuAccountOptions => 'ตัวเลือกบัญชี Kitsu';

  @override
  String get mangaBakaAccountOptions => 'ตัวเลือกบัญชี MangaBaka';

  @override
  String get comickAccountOptions => 'ตัวเลือกบัญชี Comick';

  @override
  String get comickClientId => 'รหัสลูกค้าการ์ตูน';

  @override
  String get comickClientIdDesc =>
      'รหัสลูกค้าแบบกำหนดเองที่ลงทะเบียนบน comick.dev';

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
  String get traktReadOnly => 'Trakt ให้สิทธิ์การเข้าถึงแบบอ่านอย่างเดียว';

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
  String get followsMutual => 'ร่วมกัน';

  @override
  String get followsNotMutual => 'ไม่ซึ่งกันและกัน';

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
  String get voiceActors => 'นักพากย์';

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
  String get prequel => 'พรีเควล';

  @override
  String get sequel => 'ภาคต่อ';

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
  String get traktProfile => 'ข้อมูลส่วนตัวของ Trakt';

  @override
  String get refreshFromSimkl => 'รีเฟรชจาก Simkl';

  @override
  String get refreshFromTrakt => 'รีเฟรชจาก Trakt';

  @override
  String get repullProfileLibrary => 'ดึงโปรไฟล์และคลังของคุณใหม่';

  @override
  String get simklSignInToSearch => 'เข้าสู่ระบบ Simkl เพื่อค้นหา';

  @override
  String get dropRate => 'อัตราการทิ้ง';

  @override
  String get simklAttribution => 'ข้อมูลและภาพจาก Simkl ดูบน Simkl';

  @override
  String get traktAttribution =>
      'ข้อมูลและอาร์ตเวิร์คจัดทำโดย Trakt ดูบน Trakt';

  @override
  String get listsLiked => 'ชอบ';

  @override
  String get listsYours => 'ของคุณ';

  @override
  String get traktVip => 'วีไอพี';

  @override
  String get traktVipMember => 'สมาชิก VIP ของตรัง';

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
  String get simklMoviesOnly => 'ภาพยนตร์และซีรีส์เท่านั้น';

  @override
  String get simklMoviesOnlyDesc =>
      'แทนที่แท็บอนิเมะ: ภาพยนตร์ก่อน จากนั้นจึงแสดงด้วยแถวอนิเมะสองสามแถว';

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
  String get trailerQuality => 'คุณภาพรถพ่วง';

  @override
  String get titleCopied => 'คัดลอกชื่อแล้ว';

  @override
  String get linkCopied => 'คัดลอกลิงก์แล้ว';

  @override
  String get watchTrailer => 'ดูตัวอย่าง';

  @override
  String get copyTitle => 'คัดลอกชื่อ';

  @override
  String get detailStale =>
      'ไม่สามารถเข้าถึง AniList นี่เป็นข้อมูลที่บันทึกไว้และอาจล้าสมัย';

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
  String get allCustomLists => 'รายการที่กำหนดเองทั้งหมด';

  @override
  String get simklTitleLanguage => 'ภาษาของชื่ออนิเมะ';

  @override
  String get titleLanguageEnglish => 'อังกฤษ';

  @override
  String get titleLanguageRomaji => 'โรมาจิ';

  @override
  String get simklListsTrending => 'กำลังมาแรง';

  @override
  String get simklListsMostLiked => 'ชอบมากที่สุด';

  @override
  String get simklListsMostFollowed => 'มีคนติดตามมากที่สุด';

  @override
  String get simklListsOfficial => 'เป็นทางการ';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชื่อ',
      one: '1 ชื่อ',
    );
    return '$_temp0';
  }

  @override
  String get people => 'ผู้คน';

  @override
  String get mostComments => 'ความคิดเห็นมากที่สุด';

  @override
  String get alphabetical => 'ตามตัวอักษร';

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
  String get notInList => 'ไม่อยู่ในรายการ';

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
  String get animePlanetRank => 'อันดับ';

  @override
  String get animePlanetMagazine => 'นิตยสาร';

  @override
  String get animePlanetRefreshLists => 'รีเฟรชรายการของคุณ';

  @override
  String get animePlanetRefreshListsDesc =>
      'อ่านรายการ Anime-Planet ของคุณอีกครั้ง';

  @override
  String get animePlanetLocalNote =>
      'ลงชื่อเข้าใช้เพื่อบันทึกการเปลี่ยนแปลงบัญชี Anime-Planet ของคุณ จนกว่าจะถึงตอนนั้นพวกเขาจะอยู่บนอุปกรณ์นี้';

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
  String get firstTab => 'แท็บแรก';

  @override
  String get firstTabDesc =>
      'ส่วนขยายใดที่แท็บแรกแสดง เลือกมังงะที่นี่และนวนิยายบนแท็บการอ่านเพื่อส่งอนิเมะจากบาร์';

  @override
  String get novelExtensions => 'ส่วนขยายนวนิยาย';

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
  String get year => 'ปี';

  @override
  String get filterAny => 'อะไรก็ได้';

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
  String get unfinished => 'ยังไม่เสร็จ';

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
  String get died => 'เสียชีวิต';

  @override
  String get birthplace => 'บ้านเกิด';

  @override
  String get department => 'แผนก';

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
  String get moviesWatched => 'หนังที่ดู';

  @override
  String get showsWatched => 'รายการที่ดู';

  @override
  String get moviesCollected => 'ภาพยนตร์ที่รวบรวมไว้';

  @override
  String get showsCollected => 'การแสดงที่รวบรวมไว้';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
  String get hiddenMedia => 'สื่อที่ซ่อนอยู่';

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
    return 'เพิ่มที่เก็บนี้หรือไม่\n\n$url\n\nเพิ่มที่เก็บข้อมูลจากแหล่งที่คุณเชื่อถือเท่านั้น';
  }

  @override
  String get errorGettingAnilistData => 'ดึงข้อมูลจาก AniList ผิดพลาด';

  @override
  String get navInfo => 'ข้อมูล';

  @override
  String get navComments => 'ความคิดเห็น';

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
  String updatePluginTitle(String name) {
    return 'อัปเดต $name';
  }

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
  String syncServiceOn(String name) {
    return 'ซิงค์กับ $name';
  }

  @override
  String get syncDelete => 'ลบสิ่งที่บริการหลักไม่มี';

  @override
  String get syncDeleteDesc =>
      'ลบรายการออกจากบริการอื่นที่ไม่อยู่ในรายการหลัก เฉพาะรายการที่สามารถจับคู่กับชื่อเรื่องเท่านั้นที่จะถูกลบออก ดังนั้นสิ่งต่างๆ เช่น ภาพยนตร์และซีรีส์ Simkl จะยังคงอยู่';

  @override
  String get syncDeleteTitle => 'ลบรายการใช่ไหม';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      one: '1 รายการ',
    );
    return '$_temp0 ที่ไม่ได้อยู่ในรายการหลักของคุณจะถูกลบออกจากบริการอื่น ๆ สิ่งนี้ไม่สามารถยกเลิกได้';
  }

  @override
  String get syncDeleteAction => 'ลบ';

  @override
  String get syncToDelete => 'หากต้องการลบ';

  @override
  String get syncDeletedNote => 'จะถูกลบทิ้ง';

  @override
  String syncWillRemove(int count, String name) {
    return '$count จะถูกลบออกจาก $name';
  }

  @override
  String get syncOnlyForward => 'เก็บความคืบหน้าที่ไปไกลกว่า';

  @override
  String get syncOnlyForwardDesc => 'ไม่ลดความคืบหน้าของบริการที่นำอยู่แล้ว';

  @override
  String get animePlanetWontWatch => 'จะไม่ดู';

  @override
  String get animePlanetWontRead => 'จะไม่อ่าน';

  @override
  String get animePlanetAlreadyOnList => 'อยู่ในรายการนี้แล้ว';

  @override
  String get animePlanetNewList => 'ชื่อรายการใหม่';

  @override
  String get syncPrivate => 'รายการส่วนตัว';

  @override
  String get syncPrivateDesc =>
      'จะทำอย่างไรกับรายการที่คุณเก็บไว้เป็นส่วนตัว บริการที่มีตัวเลือกส่วนตัวจะทำให้เป็นส่วนตัว คนอื่นจะแสดงต่อสาธารณะ';

  @override
  String get syncPrivateModeAsk => 'ถาม';

  @override
  String get syncPrivateModeSync => 'ซิงค์พวกเขา';

  @override
  String get syncPrivateModeSkip => 'ข้ามพวกเขา';

  @override
  String get syncPrivateTitle => 'รายการส่วนตัว';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการเป็นแบบส่วนตัว',
      one: '1 รายการเป็นแบบส่วนตัว',
    );
    return '$_temp0. บริการที่มีตัวเลือกส่วนตัว (AniList, Kitsu, MangaBaka) จะทำให้เป็นบริการส่วนตัว บริการอื่นๆ ไม่มีตัวเลือกส่วนตัวและจะแสดงต่อสาธารณะ ซิงค์พวกเขาเหรอ? คำตอบของคุณถูกจดจำไว้ เปลี่ยนภายใต้ตัวเลือกการซิงค์';
  }

  @override
  String get syncPrivateInclude => 'ซิงค์พวกเขา';

  @override
  String get syncPrivateSkip => 'ข้ามพวกเขา';

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
  String syncRemoved(String services) {
    return 'ลบออกจาก $services';
  }

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
  String get sourceTags => 'แท็ก';

  @override
  String get sourceTagsHint =>
      'แท็กแหล่งที่มานี้มีไว้เพื่ออะไร ชื่อจะแสดงแหล่งที่มาที่แท็กไว้ก่อน จากนั้นจึงระบุแหล่งที่มาที่ไม่ติดแท็ก แหล่งข้อมูล 18+ รายการแสดงเฉพาะชื่อเรื่องสำหรับผู้ใหญ่เท่านั้น';

  @override
  String get sourceTagAnime => 'อะนิเมะ';

  @override
  String get sourceTagMovies => 'ภาพยนตร์และซีรีส์';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'ซ่อนไว้ด้วยแท็ก';

  @override
  String get watchOptions => 'ตัวเลือก';

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
  String get watchFailTimeout => 'เช็คไม่เสร็จทันเวลา';

  @override
  String get watchFailBlocked =>
      'ไซต์บล็อกอุปกรณ์นี้ (การเข้าถึงถูกปฏิเสธ) เช็คไม่ได้ช่วยอะไร';

  @override
  String get watchFailTurnstile =>
      'การตรวจสอบนี้จำเป็นต้องแตะซึ่งโปรแกรมแก้ปัญหาพื้นหลังไม่สามารถทำได้';

  @override
  String get watchFailLoad =>
      'หน้าเว็บไม่โหลด ตรวจสอบการเชื่อมต่อและที่อยู่ไซต์';

  @override
  String get watchFailRejected =>
      'เว็บไซต์ปฏิเสธการกวาดล้างที่เพิ่งให้ไป ลองอีกครั้งหรือล้างคุกกี้';

  @override
  String get watchFailDismissed => 'เช็คถูกปิดก่อนที่จะเสร็จสิ้น';

  @override
  String get watchFailCooldown =>
      'คุณปิดเช็คเมื่อสักครู่นี้ กด Solve it เพื่อลองอีกครั้ง';

  @override
  String get watchFailQuiet => 'เช็คต้องการคุณ และแอปก็ทำงานได้ด้วยตัวเอง';

  @override
  String get watchFailWebView => 'ไม่สามารถเริ่มมุมมองเว็บพื้นหลังได้';

  @override
  String get watchFailUnavailable => 'ไม่มีหน้าจอให้แสดงการตรวจสอบ';

  @override
  String get watchStatusReady => 'พร้อม';

  @override
  String get watchStatusChallenge => 'จำเป็นต้องตรวจสอบ Cloudflare';

  @override
  String get watchStatusBlocked => 'ถูกบล็อกโดยไซต์';

  @override
  String get watchStatusOffline => 'ไม่สามารถเข้าถึงไซต์ได้';

  @override
  String get watchStatusUntested => 'ยังไม่ได้ทดสอบ';

  @override
  String get watchStatusTesting => 'กำลังทดสอบการเชื่อมต่อ...';

  @override
  String get watchStatusSolving => 'กำลังผ่านการตรวจสอบ Cloudflare...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'การตรวจสอบ Cloudflare ผ่านในพื้นหลัง ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'ผ่านการตรวจสอบ Cloudflare แล้ว';

  @override
  String watchClearanceIssued(String time) {
    return 'ได้รับ $time';
  }

  @override
  String get watchClearanceStale =>
      'ได้รับการเคลียร์จากตัวแทนผู้ใช้รายอื่น ดังนั้นจึงไม่ถูกส่ง ทดสอบการเชื่อมต่อเพื่อรับการเชื่อมต่อใหม่';

  @override
  String get watchSectionConnection => 'การเชื่อมต่อ';

  @override
  String get watchSectionSession => 'เซสชัน';

  @override
  String get watchSectionTools => 'เครื่องมือ';

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
  String get localSource => 'ไฟล์ในเครื่อง';

  @override
  String get localMissing =>
      'ไฟล์หรือโฟลเดอร์นี้ไม่ได้อยู่ในโฟลเดอร์ในเครื่องของคุณอีกต่อไป';

  @override
  String get playerStickyStage => 'วิดีโอติดหนึบ';

  @override
  String get playerStickyStageDesc =>
      'ให้วิดีโอคงที่ที่ด้านบนในขณะที่คุณเลื่อนตอนและความคิดเห็นด้านล่าง';

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
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

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
  String get playerDisableSkips => 'ปิดการใช้งานการข้าม';

  @override
  String get playerDisableSkipsDesc =>
      'ไม่มีการประทับเวลา AniSkip หรือสตรีม เครื่องหมายบท หรือข้ามการส่งในโปรแกรมเล่น';

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
  String get playerSubtitleOutlineWidth => 'ความกว้างโครงร่างคำบรรยาย';

  @override
  String get playerSubtitlePreview => 'ตัวอย่างคำบรรยาย';

  @override
  String get playerSubtitlePreviewText => 'ข้อความแสดงตัวอย่างคำบรรยาย';

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
  String get playerPictureSave => 'บันทึกเฟรมนี้';

  @override
  String get playerPictureOriginal => 'ต้นฉบับ';

  @override
  String get playerPictureOriginalDesc => 'เฟรมตามวิดีโอไม่มีเชดเดอร์หรือสี';

  @override
  String get playerPictureProcessed => 'ด้วยเฉดสีและสี';

  @override
  String get playerPictureProcessedDesc => 'กรอบอย่างที่คุณเห็นตอนนี้';

  @override
  String get playerPictureSaved => 'บันทึกเฟรมแล้ว';

  @override
  String get playerPictureSaveFailed => 'ไม่สามารถบันทึกเฟรมได้';

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
      'Shaders ต้องการการเรนเดอร์ด้วยฮาร์ดแวร์ และผู้เล่นกำลังใช้การเรนเดอร์ซอฟต์แวร์ ปิดการเรนเดอร์ซอฟต์แวร์ในการตั้งค่า Player';

  @override
  String get playerSoftwareRender => 'การแสดงผลซอฟต์แวร์';

  @override
  String get playerSoftwareRenderDesc =>
      'สำหรับวิดีโอสีดำเท่านั้น Shader ใช้งานไม่ได้กับมัน ใช้ในครั้งถัดไปที่เครื่องเล่นเปิดขึ้น';

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
  String get playerDeband => 'ปลดแบนด์';

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
  String get streamGroupSub => 'ย่อย';

  @override
  String get streamGroupHardSub => 'ฮาร์ดย่อย';

  @override
  String get streamGroupSoftSub => 'ซอฟท์ซับ';

  @override
  String get streamGroupDub => 'พากย์';

  @override
  String get streamGroupRaw => 'ดิบ';

  @override
  String get streamGroupOther => 'อื่นๆ';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count สตรีม',
      one: '1 สตรีม',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'สตรีม';

  @override
  String get playerStreamFailedNext => 'สตรีมนั้นไม่เล่น กำลังลองสตรีมถัดไป';

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
  String get readerOpenBook => 'เปิดหนังสือ';

  @override
  String get readerOpenBookDesc =>
      'อ่าน ePub (โปรแกรมอ่านนวนิยาย) หรือ PDF (โปรแกรมอ่านมังงะ) จากไฟล์ของคุณ';

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
  String get readerModeAuto => 'อัตโนมัติ (ตามประเภทซีรี่ส์)';

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
  String get readerFilterQuality => 'คุณภาพของฟิลเตอร์ภาพ';

  @override
  String get readerFilterQualityNone => 'ไม่มี (เพื่อนบ้านที่ใกล้ที่สุด)';

  @override
  String get readerFilterQualityLow => 'ต่ำ (ไบลิเนียร์)';

  @override
  String get readerFilterQualityMedium => 'ปานกลาง (ไตรลิเนียร์)';

  @override
  String get readerFilterQualityHigh => 'สูง (ไบคิวบิก)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (สนิมคุณภาพสูง)';

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
  String get readerLongPressSave => 'กดค้างเพจไว้เพื่อบันทึก';

  @override
  String get readerLongPressSaveDesc =>
      'กดหน้าค้างไว้เพื่อเปิดตัวเลือกบันทึก แบ่งปัน และคัดลอก';

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
  String get readerResetConfirm =>
      'รีเซ็ตการตั้งค่าเครื่องอ่านทุกรายการเป็นค่าเริ่มต้นหรือไม่';

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
    return 'บันทึกความคืบหน้าของคุณใน $name ลงในรายการบนอุปกรณ์นี้ในขณะที่คุณรับชมไหม';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'บันทึกความคืบหน้าของคุณใน $name ลงในรายการบนอุปกรณ์นี้เมื่อคุณอ่านบทจบหรือไม่';
  }

  @override
  String get downloadClearQueue => 'เคลียร์คิว';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'ยกเลิกการดาวน์โหลด $count ทั้งหมดในคิวหรือไม่ สิ่งที่ดาวน์โหลดไปแล้วจะถูกลบออก';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count เลือกแล้ว';
  }

  @override
  String get downloadSelectAll => 'เลือกทั้งหมด';

  @override
  String get downloadDeleteSelected => 'ลบที่เลือกไว้';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'ลบการดาวน์โหลด $count หรือไม่ ไฟล์ของพวกเขาจะถูกลบออกจากอุปกรณ์';
  }

  @override
  String get castTitle => 'แคสต์ไปยังอุปกรณ์';

  @override
  String get castSearching => 'กำลังค้นหาอุปกรณ์บนเครือข่ายของคุณ...';

  @override
  String get castNoDevices =>
      'ไม่พบอุปกรณ์ ตรวจสอบว่าทีวีหรือ Chromecast ใช้ Wi-Fi เดียวกัน จากนั้นค้นหาอีกครั้ง';

  @override
  String get castRefresh => 'ค้นหาอีกครั้ง';

  @override
  String get castFailed => 'ไม่สามารถเริ่มแคสต์ได้';

  @override
  String get castStop => 'หยุดแคสต์';

  @override
  String castNowCasting(String name) {
    return 'กำลังส่งไปที่ $name';
  }

  @override
  String get castProtocolChromecast => 'โครมแคสต์';

  @override
  String get castProtocolDlna => 'ดีแอลเอ็นเอ / สมาร์ททีวี';

  @override
  String get castProtocolRoku => 'โรคุ';

  @override
  String get castRokuNote => 'โรคุไม่สามารถรายงานหรือเปลี่ยนตำแหน่งได้';

  @override
  String get castControls => 'การควบคุม';

  @override
  String get castVolume => 'ระดับเสียงทีวี';

  @override
  String castSkipPart(String name) {
    return 'ข้าม $name';
  }

  @override
  String get trackProgressRememberSeries => 'จำไว้สำหรับซีรีย์นี้';

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
  String get themePickerTitle => 'ธีม';

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
  String togetherLinkConfirm(String room) {
    return 'เข้าร่วมห้อง $room? พิธีกรเลือกว่าจะเล่นอะไรและผู้เล่นจะเปิดเองเมื่อเริ่มดู';
  }

  @override
  String get togetherJoin => 'เข้าร่วม';

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
  String get togetherShareInvite => 'แบ่งปันคำเชิญ';

  @override
  String togetherShareText(String link) {
    return 'ดูกับฉันบน Dartotsu: $link';
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
  String get novelPaged => 'การเปลี่ยนหน้า';

  @override
  String get novelPagedDesc =>
      'แบ่งบทออกเป็นหน้าๆ แล้วปัดหรือแตะเพื่อเปลี่ยนแทนที่จะเลื่อน';

  @override
  String novelPageOf(int current, int total) {
    return 'หน้า $current จาก $total';
  }

  @override
  String get novelPaginating => 'การจัดวางหน้าต่างๆ';

  @override
  String get novelTools => 'เนื้อหา การค้นหา และไฮไลท์';

  @override
  String get novelContents => 'สารบัญ';

  @override
  String get novelContentsEmpty => 'บทนี้ไม่มีหัวข้อ';

  @override
  String get novelSearch => 'ค้นหา';

  @override
  String get novelSearchHint => 'ค้นหาในบทนี้';

  @override
  String get novelSearchNone => 'ไม่มีการแข่งขัน';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count แมตช์',
      one: '1 นัด',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'ไฮไลท์';

  @override
  String get novelHighlightsEmpty =>
      'เลือกข้อความแล้วแตะไฮไลต์เพื่อเก็บไว้ที่นี่';

  @override
  String get novelHighlight => 'ไฮไลท์';

  @override
  String get novelHighlightNote => 'หมายเหตุ';

  @override
  String get novelHighlightNoteHint => 'เพิ่มบันทึก';

  @override
  String get novelHighlightRemove => 'ลบไฮไลต์ออก';

  @override
  String get novelHighlightFailed => 'ไม่สามารถจับคู่การเลือกนั้นกับข้อความได้';

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
  String get playerSkipSubmit => 'ส่งเวลาข้าม';

  @override
  String get playerSkipSubmitDesc =>
      'ทำเครื่องหมายว่าการเปิด การสิ้นสุด หรือสรุปเริ่มต้นและสิ้นสุดในตอนนี้และแชร์กับ AniSkip เพื่อให้ทุกคนได้รับปุ่มข้าม';

  @override
  String get playerSkipStart => 'เริ่ม';

  @override
  String get playerSkipEnd => 'สิ้นสุด';

  @override
  String get playerSkipUseNow => 'ใช้ตำแหน่งปัจจุบัน';

  @override
  String get playerSkipSend => 'ส่งไปที่ AniSkip';

  @override
  String get playerSkipSent => 'ข้ามเวลาที่ส่งไปที่ AniSkip ขอบคุณ';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip ปฏิเสธเวลาในการข้าม: $error';
  }

  @override
  String get playerUnsupported =>
      'โปรแกรมเล่นวิดีโอไม่สามารถทำงานบนอุปกรณ์นี้ได้ (เวอร์ชัน Android เก่าเกินไปสำหรับไลบรารีโปรแกรมเล่นที่รวมมาให้) แตะเพื่อคัดลอกรายละเอียด';

  @override
  String get playerSkipNoMal =>
      'ชื่อนี้ไม่มีรหัส MyAnimeList เนื่องจาก AniSkip ไม่สามารถรับได้';

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
  String get playerPipPlay => 'เล่น';

  @override
  String get playerPipPause => 'หยุดชั่วคราว';

  @override
  String get playerPipBack => 'กรอกลับ';

  @override
  String get playerPipForward => 'ไปข้างหน้า';

  @override
  String get playerPipRestore => 'กลับไปที่เครื่องเล่น';

  @override
  String get playerPipActive => 'เล่นในหน้าต่างเล็กๆ';

  @override
  String get listDateAdded => 'เพิ่มเข้าในรายการแล้ว';

  @override
  String get listDateLastWatched => 'ดูครั้งสุดท้าย';

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
  String get widgetContinue => 'ดำเนินการต่อ';

  @override
  String get widgetReleases => 'ปล่อยเร็วๆ นี้';

  @override
  String get widgetMore => 'อยู่ระหว่างดำเนินการเช่นกัน';

  @override
  String get widgetNothing => 'ยังไม่มีอะไรจะดำเนินต่อไป';

  @override
  String get downloadStorageTitle => 'ที่เก็บของ';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ดาวน์โหลด',
      one: 'ดาวน์โหลด 1 ครั้ง',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size ดูหรืออ่านแล้ว';
  }

  @override
  String get downloadFreeUp => 'เพิ่มพื้นที่ว่าง';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ดูการดาวน์โหลด',
      one: 'ดาวน์โหลดดูแล้ว 1 ครั้ง',
    );
    return 'ลบ $_temp0 และฟรี $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'อิสระ $size';
  }

  @override
  String get downloadDeleteWatched => 'ลบดูแล้ว';

  @override
  String get downloadDeleteAll => 'ลบทั้งหมด';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'ลบการดาวน์โหลด $title ทุกครั้งหรือไม่';
  }

  @override
  String get downloadNothingWatched =>
      'ไม่มีการดาวน์โหลดสิ่งใดที่คุณทำเสร็จแล้ว';

  @override
  String get downloadStorageEmpty => 'ไม่มีการดาวน์โหลดที่ใช้พื้นที่';

  @override
  String get downloadsOpenDesc => 'ดูคิวและทุกอย่างที่บันทึกในเครื่องนี้';

  @override
  String get downloadTitle => 'ดาวน์โหลด';

  @override
  String get downloadMetaOnly => 'ข้อมูลเมตาเท่านั้น';

  @override
  String get downloadMetaFailed => 'ไม่สามารถสร้างโฟลเดอร์ชื่อได้';

  @override
  String downloadMetaSaved(String path) {
    return 'บันทึกแล้ว ใส่ไฟล์ของคุณใน $path';
  }

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
  String get downloadDashDrm => 'สตรีมนี้ได้รับการป้องกัน DRM';

  @override
  String get downloadDashNoVideo => 'ไฟล์ Manifest DASH ไม่มีวิดีโอ';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
    return 'คุณจะได้รับแจ้งเมื่อ $source มีอะไรใหม่';
  }

  @override
  String get sourceNotifyOff => 'ปิดการแจ้งเตือนการเผยแพร่';

  @override
  String get sourceNotifyNeedsSource => 'เลือกแหล่งที่มาที่ตรงกันก่อน';

  @override
  String sourceNotifyAllOut(int count) {
    return 'ทุกอย่าง ($count) ออกมาแล้ว ไม่มีอะไรให้รออีกต่อไป';
  }

  @override
  String get sourceNotifyTooltipOn => 'หยุดการแจ้งเตือนการเผยแพร่';

  @override
  String get sourceNotifyTooltipOff => 'แจ้งให้ฉันทราบเกี่ยวกับการออกใหม่';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'ตอนที่ $number ฉายแล้ว $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'ตอน $from–$to ฉายแล้วใน $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'บทที่ $number ออกเมื่อ $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'บทที่ $from–$to วางจำหน่ายแล้วใน $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count ชื่อมีอะไรใหม่';
  }

  @override
  String get navSources => 'แหล่งที่มา';

  @override
  String sourceInactiveOpen(String manager) {
    return 'แหล่งที่มานี้เป็นของ $manager ซึ่งไม่ใช่บริการเสริมที่ใช้งานอยู่';
  }

  @override
  String get sourceAlertsHeader => 'การแจ้งเตือนการเปิดตัว';

  @override
  String get sourceAlertsSwitch => 'ตรวจสอบชื่อที่สมัครรับข้อมูล';

  @override
  String get sourceAlertsSwitchDesc =>
      'แต่ละครั้งที่เปิดแอป สำหรับชื่อที่คุณเปิดกระดิ่ง';

  @override
  String get sourceSkipUnstarted => 'ข้ามชื่อที่คุณยังไม่ได้เริ่ม';

  @override
  String get sourceSkipUnstartedDesc =>
      'ยังไม่ได้ดูหรืออ่านอะไรเลย แต่มีตอนอยู่แล้ว';

  @override
  String get sourceSkipUnseen => 'ข้ามไปในขณะที่คุณมีตอนที่ยังไม่ได้ดู';

  @override
  String get sourceSkipUnseenDesc => 'คุณยังคงมีตอนต่างๆ ที่ต้องติดตามต่อไป';

  @override
  String get sourceManage => 'การสมัครรับข้อมูล';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชื่อ',
      one: '1 ชื่อ',
      zero: 'ไม่มีชื่อเรื่อง',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'ตรวจสอบตอนนี้';

  @override
  String get sourceCheckNowDesc => 'ละเว้นกำหนดการและกฎการข้าม';

  @override
  String get sourceChecking => 'กำลังตรวจสอบ...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ชื่อมีอะไรใหม่',
      one: '1 ชื่อมีอะไรใหม่',
      zero: 'ไม่มีอะไรใหม่',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'ยังไม่มีการสมัครสมาชิก';

  @override
  String get sourceEmptyMessage =>
      'แตะระฆังเหนือตอนของชื่อเรื่องเพื่อแจ้งเกี่ยวกับตอนใหม่';

  @override
  String get sourceAll => 'ทั้งหมด';

  @override
  String sourceInactive(String manager) {
    return 'ไม่ได้ใช้งาน: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source ไม่ได้ติดตั้งในบริการส่วนขยายนี้';
  }

  @override
  String get sourceUnreachable => 'แหล่งที่มาไม่ตอบสนอง';

  @override
  String get sourceFinished => 'เสร็จแล้ว';

  @override
  String get sourceSkippedCompleted => 'ข้าม: เสร็จสมบูรณ์';

  @override
  String get sourceSkippedUnstarted => 'ข้ามแล้ว: ยังไม่ได้เริ่ม';

  @override
  String get sourceSkippedUnseen => 'ข้าม: ตอนที่ยังไม่ได้ดู';

  @override
  String get sourceWaiting => 'กำลังรอการเปิดตัวครั้งต่อไป';

  @override
  String sourceNextCheck(String when) {
    return 'ตรวจสอบครั้งต่อไป $when';
  }

  @override
  String get sourceSoon => 'เร็ว ๆ นี้';

  @override
  String sourceInHours(int count) {
    return 'ใน ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'ใน ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'ล่าสุด: $number';
  }

  @override
  String get sourceMute => 'ปิดเสียง';

  @override
  String get sourceUnmute => 'เปิดเสียง';

  @override
  String get sourceMuted => 'ปิดเสียง';

  @override
  String get sourceUnsubscribe => 'ยกเลิกการสมัคร';

  @override
  String get sourcePickAnother => 'เลือกแหล่งอื่น';

  @override
  String get sourceOpenExtensions => 'เปิดส่วนขยาย';

  @override
  String get sourceNoticesEmpty => 'ยังไม่มีประกาศวางจำหน่าย';

  @override
  String get sourceNoticesEmptyMessage =>
      'ตอนและบทใหม่จากชื่อที่คุณสมัครรับข้อมูลจะแสดงที่นี่';

  @override
  String get sourceOpenTitle => 'เปิดชื่อ';

  @override
  String get extensionsLoading => 'กำลังโหลดส่วนขยาย...';

  @override
  String get updateWhatsNew => 'มีอะไรใหม่';

  @override
  String get updateLater => 'ต่อมา';

  @override
  String get updateSkipVersion => 'ข้ามเวอร์ชันนี้ไป';

  @override
  String get updatePreparing => 'กำลังเตรียม...';

  @override
  String get updateDownloading => 'กำลังดาวน์โหลด';

  @override
  String get updateInstalling => 'กำลังติดตั้ง...';

  @override
  String updateSizeOf(String done, String total) {
    return '$done จาก $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/วิ';
  }

  @override
  String updateReleased(String date) {
    return 'เปิดตัว $date';
  }

  @override
  String get updateNoAsset => 'รุ่นนี้ไม่มีการดาวน์โหลดสำหรับอุปกรณ์ของคุณ';

  @override
  String get updateUpToDate => 'คุณกำลังใช้เวอร์ชันล่าสุด';

  @override
  String get updateIosHint =>
      'iOS เวอร์ชันไม่มีอยู่ใน App Store หยิบ .ipa จากหน้าเผยแพร่และไซด์โหลดด้วย AltStore หรือ SideStore';

  @override
  String get updateOpenedBrowser => 'ตรวจสอบเบราว์เซอร์ของคุณ';

  @override
  String get updateTryAgain => 'ลองอีกครั้ง';

  @override
  String get settingsNotifications => 'การแจ้งเตือน';

  @override
  String get settingsNotificationsDesc =>
      'การแจ้งเตือนสำหรับรายการ ตอนและบทใหม่ และการตอบกลับความคิดเห็น';

  @override
  String get settingsAboutUpdates => 'เกี่ยวกับ & อัปเดต';

  @override
  String get settingsAboutUpdatesDesc =>
      'การอัปเดตแอป เวอร์ชัน บันทึก ลิงก์ และการสนับสนุน';

  @override
  String get settingsGroupAccount => 'บัญชีของคุณ';

  @override
  String get settingsGroupContent => 'เนื้อหา';

  @override
  String get settingsGroupApp => 'แอพ';

  @override
  String get settingsAnimeDesc =>
      'ผู้เล่น คำบรรยาย การข้าม รายการตอน และรายละเอียดตอน';

  @override
  String get settingsMangaDesc =>
      'โหมดผู้อ่าน การควบคุม การแสดงผล และการติดตามบท';

  @override
  String get settingsNovelDesc =>
      'ข้อความ การพลิกหน้า การแปล และการอ่านออกเสียง';

  @override
  String get settingsLocalPlay => 'การเล่นในท้องถิ่น';

  @override
  String get settingsLocalPlayDesc =>
      'เล่นไฟล์ โฟลเดอร์ สตรีมเครือข่ายและทอร์เรนต์ หรือเปิดหนังสือ';

  @override
  String get settingsLocalPlayVideo => 'วีดีโอ';

  @override
  String get settingsLocalPlayBooks => 'หนังสือ';

  @override
  String get settingsWatchSections => 'ส่วนต่างๆ';

  @override
  String get settingsSectionLists => 'รายการตอนและบท';

  @override
  String get settingsSectionProgress => 'ติดตามความคืบหน้า';

  @override
  String get updateChannelDesc =>
      'เสถียรคือรุ่นทดสอบ รุ่นก่อนเผยแพร่และอัลฟ่าจะได้รับฟีเจอร์ใหม่เร็วกว่าแต่อาจใช้งานไม่ได้';

  @override
  String get checkNowDesc => 'มองหารุ่นที่ใหม่กว่าทันที';

  @override
  String get generalSectionBasics => 'ภาษาและพฤติกรรม';

  @override
  String get generalSectionSecurity => 'ความปลอดภัย';

  @override
  String get generalSectionPrivacy => 'ความเป็นส่วนตัว';

  @override
  String notificationsOtherService(String service) {
    return 'สลับไปที่ $service เพื่อเปิดสิ่งนี้';
  }

  @override
  String get secPlayerPlayback =>
      'ความเร็วเริ่มต้น การเล่นอัตโนมัติ การปรับวิดีโอให้พอดี การวางแนว และรูปภาพซ้อนภาพ';

  @override
  String get secPlayerSkip => 'ข้ามการเปิด การสิ้นสุด และการสรุปโดยอัตโนมัติ';

  @override
  String get secPlayerControls => 'ปัดนิ้วค้างไว้และแตะท่าทางและดูตัวอย่าง';

  @override
  String get secPlayerSubtitles => 'ภาษา ลักษณะที่ปรากฏ และการแสดงคำบรรยาย';

  @override
  String get secPlayerShaders => 'การลดขนาดอะนิเมะและเฉดสีของคุณเอง';

  @override
  String get secPlayerEngine =>
      'ตัวถอดรหัส เอาต์พุตวิดีโอและเสียง การบัฟเฟอร์ เปลี่ยนสิ่งเหล่านี้หากการเล่นมีปัญหาเท่านั้น';

  @override
  String get secPlayerMpv => 'mpv.conf สคริปต์และการปรับแต่งขั้นสูง';

  @override
  String get secAnimeList => 'ตอนที่เติมและภาพขนาดย่อที่ยังไม่ได้ดู';

  @override
  String get secProgress =>
      'เมื่อความคืบหน้าในการรับชมหรือการอ่านของคุณถูกบันทึกลงในรายการของคุณ';

  @override
  String get secAnimeDetails => 'ที่มาของชื่อตอน ภาพขนาดย่อ และข้อมูลสรุป';

  @override
  String get secReaderReading => 'โหมดการอ่าน การพลิกหน้า การซูม และบทถัดไป';

  @override
  String get secReaderControls =>
      'แตะโซน ปุ่มปรับระดับเสียง และการเลื่อนอัตโนมัติ';

  @override
  String get secReaderDisplay => 'พื้นหลัง ความสว่าง เต็มหน้าจอ และหมายเลขหน้า';

  @override
  String get secNovelText => 'แบบอักษร ขนาด ระยะห่าง ระยะขอบ และการพลิกหน้า';

  @override
  String get secNovelTranslate => 'แปลบทในขณะที่คุณอ่าน';

  @override
  String get secNovelSpeech =>
      'เสียง ความเร็ว และระดับเสียงสำหรับการอ่านออกเสียง';

  @override
  String get secNotifyAbout => 'เลือกประเภทกิจกรรมที่จะส่งการแจ้งเตือน';

  @override
  String get layoutTitle => 'เค้าโครง';

  @override
  String get layoutDesc => 'เลือก ย้าย และซ่อนปุ่มบนแถบ';

  @override
  String get layoutHint =>
      'ลากปุ่มเพื่อย้าย (กดค้างไว้บนหน้าจอสัมผัสก่อน) แตะอันใดอันหนึ่งเพื่อตัด ย้าย หรือซ่อน';

  @override
  String layoutDropInto(String zone) {
    return 'แวะมา: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'ย้าย $name กดปุ่มวางเพื่อวาง';
  }

  @override
  String get layoutTitleFixed => 'ชื่อเรื่อง';

  @override
  String get layoutZoneTopStart => 'แถบด้านบนก่อนชื่อ';

  @override
  String get layoutZoneTopEnd => 'แถบด้านบนหลังชื่อ';

  @override
  String get layoutZoneBottomStart => 'แถบด้านล่างซ้าย';

  @override
  String get layoutZoneBottomEnd => 'แถบล่างขวา';

  @override
  String get layoutZoneSecondRow => 'ซ่อน: แถวที่สองในมุมมองปกติ';

  @override
  String get layoutZoneOverflow => 'ซ่อน: ในเมนูเพิ่มเติม';

  @override
  String get layoutEmptyZone => 'วางปุ่มที่นี่';

  @override
  String get layoutCut => 'ตัด';

  @override
  String get layoutPaste => 'วางที่นี่';

  @override
  String get layoutHide => 'ซ่อน';

  @override
  String layoutMoveTo(String zone) {
    return 'ย้ายไป $zone';
  }

  @override
  String get layoutReset => 'รีเซ็ตเป็นค่าเริ่มต้น';

  @override
  String get layoutMore => 'เพิ่มเติม';

  @override
  String get sourceWhyAction => 'ทำไมไม่มีการแจ้งเตือน?';

  @override
  String get sourceWhyStatus => 'สถานะ';

  @override
  String get sourceWhyLastCheck => 'ตรวจสอบครั้งล่าสุด';

  @override
  String get sourceWhyNever => 'ยังไม่ได้';

  @override
  String get sourceWhyNextCheck => 'ตรวจสอบครั้งต่อไป';

  @override
  String get sourceWhyNewest => 'ใหม่ล่าสุดที่แหล่งกำเนิด';

  @override
  String get sourceWhyProgress => 'ความก้าวหน้าของคุณ';

  @override
  String get sourceWhyListStatus => 'สถานะรายการ';

  @override
  String get sourceWhyFailures => 'การตรวจสอบล้มเหลวติดต่อกัน';

  @override
  String get sourceWhyLastRelease => 'รุ่นใหม่ล่าสุดที่เห็น';

  @override
  String get sourceWhyVerdictNew =>
      'รุ่นใหม่จะปรากฏที่นี่ทันทีที่แหล่งที่มาแสดงรายการและการตรวจสอบครั้งถัดไปจะทำงาน';

  @override
  String get sourceWhyVerdictAhead =>
      'แหล่งที่มาอยู่ข้างหน้าความคืบหน้าของคุณอยู่แล้ว ดังนั้นคุณจึงได้รับการแจ้งเกี่ยวกับเรื่องนี้เพียงครั้งเดียว อ่านหรือดูเพื่อรับการแจ้งเตือนครั้งต่อไป';

  @override
  String get sourceWhyVerdictSkipped =>
      'ชื่อนี้ถูกข้ามตามกฎข้างต้น เปลี่ยนการตั้งค่าการแจ้งเตือน หรือใช้ตรวจสอบทันทีเพื่อเรียกใช้งานต่อไป';

  @override
  String get sourceWhyVerdictBroken =>
      'ไม่สามารถเข้าถึงแหล่งที่มาหรือถูกลบออกแล้ว ดังนั้นจึงไม่มีการตรวจสอบสิ่งใด';

  @override
  String get sourceWhyVerdictMuted => 'การสมัครรับข้อมูลนี้ถูกปิดเสียง';

  @override
  String get externalPlayerTitle => 'เปิดสตรีมที่อื่น';

  @override
  String get externalCopyUrl => 'คัดลอกลิงค์สตรีม';

  @override
  String get externalCopied => 'คัดลอกลิงก์สตรีมแล้ว';

  @override
  String get externalChooser => 'เปิดในแอปอื่น';

  @override
  String get externalVlc => 'เปิดใน VLC';

  @override
  String get externalMpv => 'เปิดเป็นเอ็มพีวี';

  @override
  String get externalWebVideoCast => 'เว็บวิดีโอแคสต์';

  @override
  String get castViaAppHint => 'ส่งสตรีมไปยังแอป Web Video Cast';

  @override
  String get externalFailed =>
      'ไม่สามารถเปิดสตรีมได้ ติดตั้งเครื่องเล่นแล้วหรือยัง?';

  @override
  String get addonInstalled => 'ติดตั้งแล้ว';

  @override
  String get loadFailedActivity => 'ไม่สามารถโหลดกิจกรรมได้';

  @override
  String get loadFailedFavourites => 'ไม่สามารถโหลดรายการโปรด ลองอีกครั้ง';

  @override
  String get loadFailedStats => 'ไม่สามารถโหลดสถิติ';

  @override
  String get loadFailedReplies => 'ไม่สามารถโหลดการตอบกลับ';

  @override
  String get cantBeUndone => 'การดำเนินการนี้ไม่สามารถยกเลิกได้';

  @override
  String get searchTags => 'ค้นหาแท็ก';

  @override
  String get spoilerTapToView => 'สปอยล์ แตะเพื่อดู';

  @override
  String get mediaVideo => 'วีดีโอ';

  @override
  String get notificationSomeone => 'ใครบางคน';

  @override
  String get notificationATitle => 'ชื่อ';

  @override
  String get notificationAddedDetail => 'ถูกเพิ่มเข้าไปใน AniList';

  @override
  String get updateNoReleases => 'ไม่พบการเผยแพร่';

  @override
  String get updateInvalidResponse => 'การตอบสนองการอัปเดตไม่ถูกต้อง';

  @override
  String get commentsRateLimited => 'อัตราจำกัด';

  @override
  String get commentsConnectFailed => 'ไม่สามารถเชื่อมต่อได้';

  @override
  String get dnsNoRecords => 'ไม่มีบันทึก A ส่งกลับ';

  @override
  String get importTokenRejected => 'โทเค็นถูกปฏิเสธ';

  @override
  String get developerRoleLead => 'นักพัฒนานำ';

  @override
  String get developerRoleModerator => 'ผู้ดำเนินรายการ Discord';

  @override
  String extensionManagerTitle(String type) {
    return '$type ผู้จัดการ';
  }

  @override
  String extensionsOfType(String type) {
    return 'นามสกุล $type';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name การตั้งค่า';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name ไม่มีการตั้งค่าใดๆ';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'ตอนที่ $episode ของ $title ออกอากาศแล้ว';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'ตอนที่ $episode ออกอากาศแล้ว';
  }

  @override
  String notificationAdded(String title) {
    return '$title ถูกเพิ่มไปยัง AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'เซิร์ฟเวอร์อัปเดตไม่พบรุ่นนั้น: $message';
  }

  @override
  String get installStepJre => 'รันไทม์ของจาวา';

  @override
  String get installStepCore => 'แกนรันไทม์';

  @override
  String installStepsProgress(int current, int total) {
    return 'ขั้นตอนที่ $current จาก $total';
  }

  @override
  String get stepWaiting => 'กำลังรอ';

  @override
  String get stepChecking => 'กำลังตรวจสอบ...';

  @override
  String get stepUpToDate => 'ถึงวันที่';

  @override
  String stepUpToDateWith(String detail) {
    return 'อัปเดต · $detail';
  }

  @override
  String get stepWillInstall => 'จะถูกติดตั้ง';

  @override
  String get stepWillUpdate => 'จะได้รับการปรับปรุง';

  @override
  String stepWillUpdateTo(String version) {
    return 'จะได้รับการอัปเดตเป็น $version';
  }

  @override
  String get stepInstalled => 'ติดตั้งแล้ว';

  @override
  String get stepNotNeeded => 'ไม่จำเป็นที่นี่';

  @override
  String get stepFailed => 'ล้มเหลว';

  @override
  String stepFailedWith(String reason) {
    return 'ล้มเหลว: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'มันทำงานบนรันไทม์ Java และรันไทม์คอร์ที่ใช้ร่วมกัน มีการติดตั้งก่อน และอัปเดตหากมีการเปลี่ยนแปลง';

  @override
  String get installRuntimeNewer => 'รันไทม์ที่ตัวจัดการนี้ทำงานมีการอัปเดต';

  @override
  String get removeJvmTitle => 'ลบรันไทม์ Java หรือไม่';

  @override
  String get removeJvmMessage =>
      'ตัวจัดการส่วนขยายเดสก์ท็อปหยุดทำงานจนกว่าจะมีการติดตั้งอีกครั้ง จะมีการดาวน์โหลดอีกครั้งในครั้งถัดไปที่คุณติดตั้งหรือเปิดไฟล์ดังกล่าว';

  @override
  String get runtimePreparing => 'กำลังเตรียมรันไทม์...';

  @override
  String get calendarAll => 'ทั้งหมด';

  @override
  String get calendarAnime => 'อะนิเมะ';

  @override
  String get calendarManga => 'มังงะ';

  @override
  String get readerCloudflare => 'เปิดในเบราว์เซอร์ (ตรวจสอบ Cloudflare)';

  @override
  String get badgeBoardHint =>
      'ลากตราไปที่มุมของการ์ดใบแรก หรือลากตราแล้วเพื่อย้าย ป้ายสลับสถานที่ ดังนั้นจึงไม่มีการทับซ้อนกัน แตะป้ายด้านล่างเพื่อเปิดหรือปิด';

  @override
  String get statusAuto => 'อัตโนมัติ';

  @override
  String get unreadCounter => 'ตัวนับที่ยังไม่ได้อ่าน';

  @override
  String get unreadCounterDesc => 'แสดงจำนวนตอนหรือบทที่เหลืออยู่ในโปสเตอร์';

  @override
  String get settingsShortcuts => 'แป้นพิมพ์ลัด';

  @override
  String get settingsShortcutsDesc => 'ดูเปลี่ยนและปิดทุกปุ่ม';

  @override
  String get shortcutGroupApp => 'แอพ';

  @override
  String get shortcutGroupPlayer => 'เครื่องเล่นวิดีโอ';

  @override
  String get shortcutGroupReader => 'ผู้อ่าน';

  @override
  String get shortcutsEnableApp => 'ทางลัดของแอป';

  @override
  String get shortcutsEnablePlayer => 'ทางลัดของผู้เล่น';

  @override
  String get shortcutsEnableReader => 'ทางลัดของผู้อ่าน';

  @override
  String get shortcutsEnableDesc => 'เปิดหรือปิดทุกปุ่มในกลุ่มนี้';

  @override
  String get shortcutNotSet => 'ไม่ได้ตั้งค่า';

  @override
  String get shortcutAddKey => 'เพิ่มรหัส';

  @override
  String get shortcutResetOne => 'รีเซ็ตเป็นค่าเริ่มต้น';

  @override
  String get shortcutClearKeys => 'ลบคีย์ทั้งหมด';

  @override
  String get shortcutResetAll => 'รีเซ็ตทางลัดทั้งหมด';

  @override
  String get shortcutResetAllDesc => 'ใส่ทุกคีย์กลับเป็นค่าเริ่มต้น';

  @override
  String get shortcutPress => 'กดปุ่มหรือชุดค่าผสมที่คุณต้องการ';

  @override
  String get shortcutPressHint =>
      'แต่ละชุดสามารถเป็นของการกระทำเดียวเท่านั้น ดังนั้นให้ทำเพียงครั้งเดียว';

  @override
  String get shortcutSeekPercent => 'ข้ามไปยังจุดหนึ่งของวิดีโอ';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'กลับไป';

  @override
  String get shortcutAppFullscreen => 'สลับโหมดเต็มหน้าจอ';

  @override
  String get shortcutAppGlass => 'สลับโหมดกระจก';

  @override
  String get shortcutAppMaterialYou => 'สลับวัสดุคุณ';

  @override
  String get shortcutAppDark => 'สลับโหมดมืด';

  @override
  String get shortcutAppOled => 'สลับ OLED สีดำ';

  @override
  String get shortcutAppSearch => 'เปิดการค้นหา';

  @override
  String get shortcutAppSettings => 'เปิดการตั้งค่า';

  @override
  String get shortcutAppDownloads => 'เปิดการดาวน์โหลด';

  @override
  String get shortcutAppNotifications => 'เปิดการแจ้งเตือน';

  @override
  String get shortcutAppIncognito => 'สลับโหมดไม่ระบุตัวตน';

  @override
  String get shortcutAppShortcuts => 'แสดงแป้นพิมพ์ลัด';

  @override
  String get shortcutPlayerPlayPause => 'เล่นหรือหยุดชั่วคราว';

  @override
  String get shortcutPlayerSeekForward => 'แสวงหาไปข้างหน้า';

  @override
  String get shortcutPlayerSeekBack => 'กลับไปหา';

  @override
  String get shortcutPlayerSeekForwardLong => 'ค้นหาไปข้างหน้า 30 วินาที';

  @override
  String get shortcutPlayerSeekBackLong => 'ย้อนกลับไป 30 วินาที';

  @override
  String get shortcutPlayerFrameForward => 'เฟรมถัดไป';

  @override
  String get shortcutPlayerFrameBack => 'เฟรมก่อนหน้า';

  @override
  String get shortcutPlayerVolumeUp => 'เพิ่มระดับเสียง';

  @override
  String get shortcutPlayerVolumeDown => 'ลดระดับเสียง';

  @override
  String get shortcutPlayerMute => 'ปิดเสียง';

  @override
  String get shortcutPlayerFullscreen => 'เต็มจอ';

  @override
  String get shortcutPlayerNext => 'ตอนต่อไป';

  @override
  String get shortcutPlayerPrevious => 'ตอนที่แล้ว';

  @override
  String get shortcutPlayerSkip => 'ข้ามคำนำหรือสิ้นสุด';

  @override
  String get shortcutPlayerPanel => 'รายการตอน';

  @override
  String get shortcutPlayerSpeedUp => 'เล่นได้เร็วขึ้น';

  @override
  String get shortcutPlayerSpeedDown => 'การเล่นช้าลง';

  @override
  String get shortcutPlayerSpeedReset => 'ความเร็วปกติ';

  @override
  String get shortcutPlayerSubtitleToggle => 'เปิดหรือปิดคำบรรยาย';

  @override
  String get shortcutPlayerSubtitleCycle => 'แทร็กคำบรรยายถัดไป';

  @override
  String get shortcutPlayerAudioCycle => 'แทร็กเสียงถัดไป';

  @override
  String get shortcutPlayerStreamCycle => 'สตรีมครั้งต่อไป';

  @override
  String get shortcutPlayerFit => 'เปลี่ยนความพอดีของวิดีโอ';

  @override
  String get shortcutReaderRight => 'หน้าไปทางขวา';

  @override
  String get shortcutReaderLeft => 'หน้าไปทางซ้าย';

  @override
  String get shortcutReaderNextPage => 'หน้าถัดไป';

  @override
  String get shortcutReaderPreviousPage => 'หน้าก่อน';

  @override
  String get shortcutReaderControls => 'แสดงหรือซ่อนตัวควบคุม';

  @override
  String get shortcutReaderNextChapter => 'บทต่อไป';

  @override
  String get shortcutReaderPreviousChapter => 'บทที่แล้ว';

  @override
  String shortcutTaken(String action) {
    return 'นำมาจาก $action';
  }

  @override
  String get incognitoTurnedOn => 'โหมดไม่ระบุตัวตนเปิดอยู่';

  @override
  String get incognitoTurnedOff => 'ปิดโหมดไม่ระบุตัวตนแล้ว';

  @override
  String get onHoldAnime => 'อนิเมะรออยู่ครับ';

  @override
  String get onHoldManga => 'ระงับมังงะ';

  @override
  String get droppedAnime => 'อนิเมะที่หลุดไป';

  @override
  String get droppedManga => 'ปล่อยมังงะ';

  @override
  String get generalSectionDesktop => 'เดสก์ท็อป';

  @override
  String get closeAction => 'เมื่อหน้าต่างปิดลง';

  @override
  String get closeActionQuit => 'ออกจากแอป';

  @override
  String get closeActionWhenBusy => 'วิ่งต่อไปในถาดขณะที่บางสิ่งกำลังทำงานอยู่';

  @override
  String get closeActionAlways => 'ให้วิ่งอยู่ในถาดเสมอ';

  @override
  String get closeActionNoTray =>
      'ถาดระบบไม่พร้อมใช้งานที่นี่ แอปจึงปิดเมื่อปิด';

  @override
  String get gamepadNav => 'การนำทางเกมแพด';

  @override
  String get gamepadNavDesc =>
      'เคลื่อนที่ไปรอบๆ แอปและควบคุมผู้เล่นด้วยตัวควบคุมเกม';

  @override
  String get trayShow => 'แสดงดาร์โททสึ';

  @override
  String get trayQuit => 'เลิก';

  @override
  String get trayIdle => 'ไม่มีอะไรทำงาน';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'กำลังดาวน์โหลดรายการ $count',
      one: 'กำลังดาวน์โหลดรายการ $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'กำลังซิงค์รายการของคุณ';

  @override
  String get trayUpdating => 'กำลังอัปเดตแอป';

  @override
  String get trayPlaying => 'เล่นในหน้าต่างเล็กๆ';

  @override
  String get traySearch => 'ค้นหา';

  @override
  String get trayPauseDownloads => 'หยุดการดาวน์โหลดชั่วคราว';

  @override
  String get trayResumeDownloads => 'ทำการดาวน์โหลดต่อ';

  @override
  String get playerDownloadTitle => 'กำลังดาวน์โหลดเครื่องเล่น';

  @override
  String get playerDownloadBody =>
      'Dartotsu ดึงข้อมูลเอ็นจิ้นวิดีโอของตนหนึ่งครั้ง การเล่นจะเริ่มทันทีที่พร้อม';

  @override
  String get playerDownloadStarting => 'กำลังเริ่มการดาวน์โหลด...';

  @override
  String get playerDownloadFailedTitle => 'ไม่สามารถรับเครื่องเล่นได้';

  @override
  String get playerDownloadFailedBody =>
      'ตรวจสอบการเชื่อมต่อของคุณแล้วลองอีกครั้ง การดาวน์โหลดจะดำเนินต่อไปที่จุดหยุด';

  @override
  String get playerDownloadRetry => 'ลองอีกครั้ง';

  @override
  String get playerDownloadCopy => 'คัดลอกรายละเอียด';

  @override
  String get removePlayerTitle => 'ลบเครื่องเล่น?';

  @override
  String get removePlayerMessage =>
      'วิดีโอไม่สามารถเล่นได้จนกว่าจะดาวน์โหลดเครื่องเล่นอีกครั้ง';

  @override
  String get trailerLoading => 'กำลังโหลดตัวอย่าง...';

  @override
  String get trailerFailed =>
      'ไม่สามารถเล่นตัวอย่างได้ที่นี่ กำลังเปิดในเบราว์เซอร์';
}
