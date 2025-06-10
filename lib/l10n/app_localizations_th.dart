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
  String get appTagline =>
      'แอปที่ดีที่สุดใหม่ล่าสุดสำหรับ\nการติดตามอนิเมะและมังงะ';

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
  String get login => 'เข้าสู่ระบบ';

  @override
  String loginTo(String service) {
    return 'เข้าสู่ระบบ $service';
  }

  @override
  String logout(String type) {
    return 'ออกจากระบบ $type';
  }

  @override
  String get confirmLogout => 'คุณแน่ใจหรือไม่ว่าต้องการออกจากระบบ?';

  @override
  String get anime => 'อนิเมะ';

  @override
  String get manga => 'มังงะ';

  @override
  String get manhwa => 'มันวา';

  @override
  String get manhua => 'มานฮัว';

  @override
  String get novel => 'นวนิยาย';

  @override
  String get ln => 'ไลท์โนเวล';

  @override
  String get home => 'หน้าหลัก';

  @override
  String get search => 'ค้นหา';

  @override
  String get calendar => 'ปฏิทิน';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get watch => 'ดู';

  @override
  String get read => 'อ่าน';

  @override
  String get info => 'ข้อมูล';

  @override
  String get comments => 'ความคิดเห็น';

  @override
  String get addToList => 'เพิ่มในรายการ';

  @override
  String get series => 'ซีรีส์';

  @override
  String get season => 'ซีซั่น';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ตอน',
      one: 'ตอน',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'บท',
      one: 'บท',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เล่ม',
      one: 'เล่ม',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ภาพยนตร์',
      one: 'ภาพยนตร์',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'ตอนทั้งหมด';

  @override
  String get totalChapters => 'บททั้งหมด';

  @override
  String get genres => 'ประเภท';

  @override
  String get scanlators => 'สแกนเลเตอร์';

  @override
  String list(String type) {
    return '$type รายการ';
  }

  @override
  String get watching => 'ดู';

  @override
  String get reading => 'การอ่าน';

  @override
  String get readStatus => 'อ่าน';

  @override
  String get watchStatus => 'ดู';

  @override
  String planned(String type) {
    return 'วางแผน $type';
  }

  @override
  String onHold(String type) {
    return 'พักไว้ $type';
  }

  @override
  String get droppedAnime => 'อนิเมะที่หยุดดู';

  @override
  String get droppedManga => 'มังงะที่หยุดอ่าน';

  @override
  String noDropped(String type) {
    return 'คุณยังไม่ได้หยุดดู $type ใด ๆ';
  }

  @override
  String get continueReading => 'อ่านต่อ';

  @override
  String get continueWatching => 'ดูต่อ';

  @override
  String browse(String type) {
    return 'เรียกดู $type';
  }

  @override
  String trending(String type) {
    return 'เทรนด์ $type';
  }

  @override
  String popular(String type) {
    return 'ยอดนิยม $type';
  }

  @override
  String get topAiring => 'ออกอากาศยอดนิยม';

  @override
  String topRated(String type) {
    return 'อันดับสูงสุด $type';
  }

  @override
  String mostFavourite(String type) {
    return 'ที่ชื่นชอบมากที่สุด $type';
  }

  @override
  String get thisSeason => 'ซีซั่นนี้';

  @override
  String get nextSeason => 'ซีซั่นหน้า';

  @override
  String get previousSeason => 'ซีซั่นก่อนหน้า';

  @override
  String get recommended => 'แนะนำ';

  @override
  String get recommendationsEmptyMessage =>
      'ดู/อ่านอนิเมะหรือมังงะเพื่อรับคำแนะนำ';

  @override
  String get recentUpdates => 'การอัปเดตล่าสุด';

  @override
  String get allCaughtUpNew => 'ทั้งหมดตามทันแล้ว, มีอะไรใหม่บ้าง?';

  @override
  String favorite(String type) {
    return 'โปรด $type';
  }

  @override
  String get favorites => 'รายการโปรด';

  @override
  String get noFavourites =>
      'ดูเหมือนว่าคุณยังไม่ชอบอะไร,\nลองกดถูกใจรายการเพื่อเก็บไว้ที่นี่';

  @override
  String get noOnHold => 'ดูเหมือนว่าคุณยังไม่ได้พักรายการใด ๆ';

  @override
  String manageLayout(String service, String page) {
    return 'จัดการเลย์เอาต์หน้า $page สำหรับ $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'คุณสามารถจัดการเลย์เอาต์หน้า $page ได้โดยการลากและวางไอเท็ม';
  }

  @override
  String get gridView => 'มุมมองตาราง';

  @override
  String get listView => 'มุมมองแบบรายการ';

  @override
  String get compactView => 'มุมมองคอมแพ็ค';

  @override
  String get layout => 'รูปแบบ';

  @override
  String get sort => 'เรียงลำดับ';

  @override
  String get utd => 'จากบนลงล่าง';

  @override
  String get dtu => 'ดาวน์โหลด';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'ตอนที่ดูแล้ว';

  @override
  String get chapterRead => 'บทที่อ่านแล้ว';

  @override
  String get outOf => 'ออกจาก';

  @override
  String get totalOf => 'ทั้งหมด';

  @override
  String get selected => 'เลือก';

  @override
  String get found => 'พบ';

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
  String available(String type) {
    return 'มีอยู่ $type';
  }

  @override
  String installed(String type) {
    return 'ติดตั้ง $type';
  }

  @override
  String get extensionsDescription =>
      'ติดตั้งและจัดการส่วนเสริมเพื่อเพิ่มฟังก์ชันการทำงาน';

  @override
  String get addAnimeRepo => 'เพิ่มอะนิเมะ';

  @override
  String get addAnimeRepoDesc => 'เพิ่มอะนิเมะจากแหล่งต่างๆ';

  @override
  String get addMangaRepo => 'เพิ่มวิดีโอ';

  @override
  String get addMangaRepoDesc => 'เพิ่ม Repo จากแหล่งต่างๆ';

  @override
  String get addNovelRepo => 'เพิ่มปริมาณ';

  @override
  String get addNovelRepoDesc => 'เพิ่มปริมาณรูปแบบต่างๆ';

  @override
  String get loadExtensionsIcon => 'โหลดไอคอน';

  @override
  String get loadExtensionsIconDesc => 'ข้อเสียถ้าส่วนขยายหน้า';

  @override
  String get autoUpdate => 'ปรับปรุงอัตโนมัติ';

  @override
  String get autoUpdateDesc => 'ปรับปรุงส่วนขยายอัตโนมัติ';

  @override
  String get installSourceToStart => 'ติดตั้งรูปแบบจากนามสกุล';

  @override
  String get author => 'ผู้เขียน';

  @override
  String get averageDuration => 'ระยะเวลาเฉลี่ย';

  @override
  String get characters => 'ตัวละคร';

  @override
  String get description => 'คำบรรยาย';

  @override
  String get synopsis => 'สรุป';

  @override
  String get endDate => 'วันสิ้นสุด';

  @override
  String get format => 'รูปแบบ';

  @override
  String get meanScore => 'คะแนนเฉลี่ย';

  @override
  String get name => 'ชื่อ';

  @override
  String get nameRomaji => 'ชื่อ (โรมาจิ)';

  @override
  String get popularity => 'ความนิยม';

  @override
  String get relations => 'ความสัมพันธ์';

  @override
  String get prequel => 'ภาคก่อน';

  @override
  String get sequel => 'ภาคต่อ';

  @override
  String get source => 'แหล่งที่มา';

  @override
  String get staff => 'ทีมงาน';

  @override
  String get startDate => 'วันเริ่มต้น';

  @override
  String get status => 'สถานะ';

  @override
  String get studio => 'สตูดิโอ';

  @override
  String get synonyms => 'คำพ้องความหมาย';

  @override
  String get tags => 'แท็ก';

  @override
  String get total => 'ทั้งหมด';

  @override
  String get collapseText => 'แสดงน้อยลง';

  @override
  String get expandText => 'แสดงเพิ่มเติม';

  @override
  String get comingSoon => 'มาเร็ว ๆ นี้';

  @override
  String get wrongTitle => 'ชื่อ?';

  @override
  String get youTube => 'เล่นบน YouTube?';

  @override
  String get mediaNotFound => 'ไม่พบสื่อ';

  @override
  String get noChapterFound => 'ไม่มีบทเรียน';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'กิจกรรม',
      one: 'กิจกรรม',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ภาษา';

  @override
  String get account => 'บัญชี';

  @override
  String get accountDescription =>
      'จัดการบัญชี AniList, MAL และ Discord ของคุณได้อย่างง่ายดาย';

  @override
  String get common => 'ทั่วไป';

  @override
  String get commonDescription =>
      'เข้าถึงการตั้งค่าทั่วไปเพื่อการใช้งานแอปที่ราบรื่น';

  @override
  String get animeDescription =>
      'ปรับแต่งและจัดการความชอบของคุณเกี่ยวกับอนิเมะ';

  @override
  String get mangaDescription =>
      'จัดระเบียบและปรับแต่งประสบการณ์การอ่านมังงะของคุณ';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get aboutDescription => 'เรียนรู้เพิ่มเติมเกี่ยวกับแอปและผู้สร้าง';

  @override
  String get notifications => 'การแจ้งเตือน';

  @override
  String get notificationsDescription => 'ตั้งค่าการแจ้งเตือนของคุณ';

  @override
  String get offlineMode => 'โหมดออฟไลน์';

  @override
  String get offlineModeDescription =>
      'ใช้งานแอปโดยไม่ต้องเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get incognitoMode => 'โหมดไม่ระบุตัวตน';

  @override
  String get incognitoModeDescription => 'เรียกดูโดยไม่บันทึกกิจกรรมของคุณ';

  @override
  String get hidePrivate => 'ซ่อนส่วนตัว';

  @override
  String get hidePrivateDescription => 'ซ่อนซีรีส์ส่วนตัวจากหน้าหลัก';

  @override
  String get hiddenMedia => 'สื่อที่ซ่อน';

  @override
  String get noHiddenMediaFound => 'ไม่พบสื่อที่ซ่อน';

  @override
  String get playerSettingsTitle => 'การตั้งค่าผู้เล่น';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'ความเร็ว';

  @override
  String get speedDescription => 'ความเร็วเริ่มต้นสำหรับผู้เล่น';

  @override
  String get cursedSpeed => 'ความเร็วสูงสุด';

  @override
  String get cursedSpeedDescription => 'สำหรับผู้ที่มีเวลาน้อย';

  @override
  String get resizeMode => 'โหมดปรับขนาด';

  @override
  String get resizeModeDescription => 'โหมดปรับขนาดเริ่มต้นสำหรับผู้เล่น';

  @override
  String get skipButton => 'ปุ่มข้าม';

  @override
  String get skipButtonDescription => 'ระยะเวลาปุ่มข้าม';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'คำบรรยาย';

  @override
  String get showSubtitles => 'แสดงคำบรรยาย';

  @override
  String get showSubtitlesDescription => 'แสดงคำบรรยายโดยค่าเริ่มต้น';

  @override
  String get subtitlePreview => 'ตัวอย่างคำบรรยาย';

  @override
  String get fontColor => 'สีฟอนต์';

  @override
  String get fontColorDescription => 'สีฟอนต์ของคำบรรยาย';

  @override
  String get fontFamily => 'แบบอักษร';

  @override
  String get fontFamilyDescription => 'แบบอักษรของคำบรรยาย';

  @override
  String get fontSize => 'ขนาดฟอนต์';

  @override
  String get fontSizeDescription => 'ขนาดฟอนต์ของคำบรรยาย';

  @override
  String get fontWeight => 'น้ำหนักฟอนต์';

  @override
  String get fontWeightDescription => 'น้ำหนักฟอนต์ของคำบรรยาย';

  @override
  String get backgroundColor => 'สีพื้นหลัง';

  @override
  String get backgroundColorDescription => 'สีพื้นหลังของคำบรรยาย';

  @override
  String get outlineColor => 'สีขอบ';

  @override
  String get outlineColorDescription => 'สีขอบของคำบรรยาย';

  @override
  String get bottomPadding => 'ระยะห่างด้านล่าง';

  @override
  String get bottomPaddingDescription => 'ระยะห่างด้านล่างของคำบรรยาย';

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
  String get theme => 'ธีม';

  @override
  String get themeDescription => 'ปรับแต่งลักษณะและบรรยากาศของแอปของคุณ';

  @override
  String get darkMode => 'โหมดมืด';

  @override
  String get enableDarkMode => 'เปิดโหมดมืด';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'ใช้สีเดียวกับวอลเปเปอร์ของคุณ';

  @override
  String get customTheme => 'ธีมที่กำหนดเอง';

  @override
  String get customThemeDescription => 'ใช้สีของคุณเองสำหรับธีม';

  @override
  String get oledThemeVariant => 'ธีม OLED';

  @override
  String get oledThemeVariantDescription => 'เปิดใช้งานโหมด OLED';

  @override
  String get colorPicker => 'ตัวเลือกสี';

  @override
  String get pickColor => 'เลือกสี';

  @override
  String get colorPickerDescription => 'เลือกสี';

  @override
  String get colorPickerDefault => 'ค่าเริ่มต้น';

  @override
  String get colorPickerCustom => 'ที่กําหนดเอง';

  @override
  String get customPath => 'เส้นทางที่กําหนดเอง';

  @override
  String get customPathDescription =>
      'ตั้งค่าเส้นทางที่กําหนดเองเพื่อบันทึกไฟล์\nกดยาวเพื่อลบ';

  @override
  String get selectDirectory => 'เลือกไดเรกทอรี';

  @override
  String get selectMediaService => 'เลือกบริการ';

  @override
  String get logFile => 'ไฟล์';

  @override
  String get logFileDescription => 'แชร์ไฟล์';

  @override
  String get restoreSettings => 'คืนค่าการตั้งค่า';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'ค้นหาเว็บ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'ต้องการสนับสนุนผู้ดูแล Dartotsu?\nลองพิจารณาบริจาค';

  @override
  String get donationGoal => 'ไม่มีเป้าหมายการบริจาคในขณะนี้';

  @override
  String get options => 'ตัวเลือก';

  @override
  String get ok => 'ตกลง';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่';
}
