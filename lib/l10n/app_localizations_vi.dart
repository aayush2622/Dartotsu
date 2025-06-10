// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Ứng dụng TỐT NHẤT MỚI Để\nTheo Dõi Anime & Manga';

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
  String get login => 'Đăng nhập';

  @override
  String loginTo(String service) {
    return 'Đăng nhập vào $service';
  }

  @override
  String logout(String type) {
    return 'Đăng xuất $type';
  }

  @override
  String get confirmLogout => 'Bạn có chắc chắn muốn đăng xuất không?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Tiểu thuyết';

  @override
  String get ln => 'Tiểu thuyết ánh sáng';

  @override
  String get home => 'Trang chủ';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get calendar => 'Lịch';

  @override
  String get settings => 'Cài đặt';

  @override
  String get watch => 'Xem';

  @override
  String get read => 'Đọc';

  @override
  String get info => 'Thông tin';

  @override
  String get comments => 'Bình luận';

  @override
  String get addToList => 'Thêm vào danh sách';

  @override
  String get series => 'Loạt phim';

  @override
  String get season => 'Mùa';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Tập',
      one: 'Tập',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Chương',
      one: 'Chương',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Tập',
      one: 'Tập',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Phim',
      one: 'Phim',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Tập';

  @override
  String get totalChapters => 'Chương';

  @override
  String get genres => 'Thể loại';

  @override
  String get scanlators => 'Nhóm quét';

  @override
  String list(String type) {
    return 'Danh sách $type';
  }

  @override
  String get watching => 'Đang xem';

  @override
  String get reading => 'Đang đọc';

  @override
  String get readStatus => 'Đọc';

  @override
  String get watchStatus => 'Đã xem';

  @override
  String planned(String type) {
    return 'Dự định $type';
  }

  @override
  String onHold(String type) {
    return 'Tạm dừng $type';
  }

  @override
  String get droppedAnime => 'Anime đã bỏ';

  @override
  String get droppedManga => 'Manga đã bỏ';

  @override
  String noDropped(String type) {
    return 'Bạn chưa bỏ qua $type nào.';
  }

  @override
  String get continueReading => 'Tiếp tục đọc';

  @override
  String get continueWatching => 'Tiếp tục xem';

  @override
  String browse(String type) {
    return 'Duyệt $type';
  }

  @override
  String trending(String type) {
    return 'Xu hướng $type';
  }

  @override
  String popular(String type) {
    return '$type phổ biến';
  }

  @override
  String get topAiring => 'Chương trình phát sóng hàng đầu';

  @override
  String topRated(String type) {
    return '$type đánh giá cao nhất';
  }

  @override
  String mostFavourite(String type) {
    return '$type yêu thích nhất';
  }

  @override
  String get thisSeason => 'Mùa này';

  @override
  String get nextSeason => 'Mùa tới';

  @override
  String get previousSeason => 'Mùa trước';

  @override
  String get recommended => 'Được khuyến nghị';

  @override
  String get recommendationsEmptyMessage =>
      'Xem/Đọc một số Anime hoặc Manga để nhận khuyến nghị';

  @override
  String get recentUpdates => 'Cập nhật gần đây';

  @override
  String get allCaughtUpNew => 'Đã theo kịp, có gì mới?';

  @override
  String favorite(String type) {
    return 'Yêu thích $type';
  }

  @override
  String get favorites => 'Yêu thích';

  @override
  String get noFavourites =>
      'Có vẻ bạn chưa thích gì,\nHãy thử thích một chương trình để giữ nó ở đây.';

  @override
  String get noOnHold => 'Có vẻ bạn chưa tạm dừng gì.';

  @override
  String manageLayout(String service, String page) {
    return 'Quản lý bố cục trang $page cho $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Bạn có thể quản lý bố cục trang $page bằng cách kéo và thả các mục';
  }

  @override
  String get gridView => 'Chế độ xem lưới';

  @override
  String get listView => 'Dạng danh sách';

  @override
  String get compactView => 'Chế độ xem gọn';

  @override
  String get layout => 'Bố cục';

  @override
  String get sort => 'Sắp xếp';

  @override
  String get utd => 'Lên xuống';

  @override
  String get dtu => 'Dịch đến hiện tại';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Tập đã xem';

  @override
  String get chapterRead => 'Chương đã đọc';

  @override
  String get outOf => 'trong số';

  @override
  String get totalOf => 'Tổng số';

  @override
  String get selected => 'Đã chọn';

  @override
  String get found => 'Đã tìm thấy';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Tiện ích',
      one: 'Tiện ích',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type có sẵn';
  }

  @override
  String installed(String type) {
    return '$type đã cài đặt';
  }

  @override
  String get extensionsDescription =>
      'Cài đặt và quản lý tiện ích mở rộng để tăng cường tính năng';

  @override
  String get addAnimeRepo => 'Thêm kho anime';

  @override
  String get addAnimeRepoDesc => 'Thêm kho anime từ nhiều nguồn khác nhau';

  @override
  String get addMangaRepo => 'Thêm kho manga';

  @override
  String get addMangaRepoDesc => 'Thêm kho manga từ nhiều nguồn khác nhau';

  @override
  String get addNovelRepo => 'Thêm kho tiểu thuyết';

  @override
  String get addNovelRepoDesc =>
      'Thêm kho tiểu thuyết từ nhiều nguồn khác nhau';

  @override
  String get loadExtensionsIcon => 'Tải biểu tượng tiện ích mở rộng';

  @override
  String get loadExtensionsIconDesc => 'Tắt nếu trang tiện ích mở rộng bị lag';

  @override
  String get autoUpdate => 'Tự động cập nhật';

  @override
  String get autoUpdateDesc => 'Tự động cập nhật tiện ích mở rộng';

  @override
  String get installSourceToStart =>
      'Cài đặt nguồn từ trang tiện ích mở rộng để bắt đầu';

  @override
  String get author => 'Tác giả';

  @override
  String get averageDuration => 'Thời gian trung bình';

  @override
  String get characters => 'Nhân vật';

  @override
  String get description => 'Tóm tắt';

  @override
  String get synopsis => 'Tóm tắt';

  @override
  String get endDate => 'Ngày kết thúc';

  @override
  String get format => 'Định dạng';

  @override
  String get meanScore => 'Điểm trung bình';

  @override
  String get name => 'Tên';

  @override
  String get nameRomaji => 'Tên (Romaji)';

  @override
  String get popularity => 'Độ phổ biến';

  @override
  String get relations => 'Liên quan';

  @override
  String get prequel => 'Tiền truyện';

  @override
  String get sequel => 'Hậu truyện';

  @override
  String get source => 'Nguồn';

  @override
  String get staff => 'Nhân viên';

  @override
  String get startDate => 'Ngày bắt đầu';

  @override
  String get status => 'Trạng thái';

  @override
  String get studio => 'Xưởng phim';

  @override
  String get synonyms => 'Từ đồng nghĩa';

  @override
  String get tags => 'Thẻ';

  @override
  String get total => 'Tổng';

  @override
  String get collapseText => 'xem ít hơn';

  @override
  String get expandText => 'xem thêm';

  @override
  String get comingSoon => 'Sắp ra mắt';

  @override
  String get wrongTitle => 'Tiêu đề sai?';

  @override
  String get youTube => 'Phát trên YouTube?';

  @override
  String get mediaNotFound => 'Không tìm thấy phương tiện';

  @override
  String get noChapterFound => 'Không tìm thấy chương';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Các Hoạt động',
      one: 'Hoạt động',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get account => 'Tài khoản';

  @override
  String get accountDescription =>
      'Quản lý tài khoản AniList, MAL và Discord của bạn một cách dễ dàng';

  @override
  String get common => 'Cài đặt chung';

  @override
  String get commonDescription =>
      'Truy cập cài đặt chung để sử dụng ứng dụng dễ dàng hơn';

  @override
  String get animeDescription =>
      'Cá nhân hóa và quản lý sở thích anime của bạn';

  @override
  String get mangaDescription =>
      'Sắp xếp và cá nhân hóa trải nghiệm Manga của bạn';

  @override
  String get about => 'Giới thiệu';

  @override
  String get aboutDescription => 'Tìm hiểu thêm về ứng dụng và người sáng tạo';

  @override
  String get notifications => 'Thông báo';

  @override
  String get notificationsDescription =>
      'Cấu hình cách và thời điểm bạn nhận thông báo';

  @override
  String get offlineMode => 'Chế độ ngoại tuyến';

  @override
  String get offlineModeDescription =>
      'Sử dụng ứng dụng mà không cần kết nối internet';

  @override
  String get incognitoMode => 'Chế độ ẩn danh';

  @override
  String get incognitoModeDescription => 'Duyệt mà không lưu hoạt động của bạn';

  @override
  String get hidePrivate => 'Ẩn nội dung riêng tư';

  @override
  String get hidePrivateDescription => 'Ẩn các series riêng tư khỏi trang chủ.';

  @override
  String get hiddenMedia => 'Media ẩn';

  @override
  String get noHiddenMediaFound => 'Không tìm thấy media ẩn';

  @override
  String get playerSettingsTitle => 'Cài đặt trình phát';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Tốc độ';

  @override
  String get speedDescription => 'Tốc độ mặc định của trình phát';

  @override
  String get cursedSpeed => 'Tốc độ nhanh';

  @override
  String get cursedSpeedDescription =>
      'Dành cho những người quá bận rộn với cuộc sống';

  @override
  String get resizeMode => 'Chế độ thay đổi kích thước';

  @override
  String get resizeModeDescription =>
      'Chế độ thay đổi kích thước mặc định cho trình phát';

  @override
  String get skipButton => 'Nút bỏ qua';

  @override
  String get skipButtonDescription => 'Thời lượng của nút bỏ qua';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Phụ đề';

  @override
  String get showSubtitles => 'Hiển thị phụ đề';

  @override
  String get showSubtitlesDescription => 'Hiển thị phụ đề theo mặc định';

  @override
  String get subtitlePreview => 'Xem trước phụ đề';

  @override
  String get fontColor => 'Màu chữ';

  @override
  String get fontColorDescription => 'Màu chữ của phụ đề';

  @override
  String get fontFamily => 'Phông chữ';

  @override
  String get fontFamilyDescription => 'Phông chữ của phụ đề';

  @override
  String get fontSize => 'Kích thước chữ';

  @override
  String get fontSizeDescription => 'Kích thước chữ của phụ đề';

  @override
  String get fontWeight => 'Độ dày chữ';

  @override
  String get fontWeightDescription => 'Độ dày chữ của phụ đề';

  @override
  String get backgroundColor => 'Màu nền';

  @override
  String get backgroundColorDescription => 'Màu nền phụ đề';

  @override
  String get outlineColor => 'Màu viền';

  @override
  String get outlineColorDescription => 'Màu viền của phụ đề';

  @override
  String get bottomPadding => 'Khoảng cách dưới';

  @override
  String get bottomPaddingDescription => 'Khoảng cách dưới của phụ đề';

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
  String get theme => 'Giao diện';

  @override
  String get themeDescription =>
      'Tùy chỉnh giao diện và phong cách của ứng dụng';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get enableDarkMode => 'Bật chế độ tối';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Sử dụng cùng màu với hình nền của bạn';

  @override
  String get customTheme => 'Giao diện tùy chỉnh';

  @override
  String get customThemeDescription =>
      'Sử dụng màu sắc của riêng bạn cho giao diện';

  @override
  String get oledThemeVariant => 'Biến thể giao diện OLED';

  @override
  String get oledThemeVariantDescription => 'Bật chế độ OLED';

  @override
  String get colorPicker => 'Chọn màu';

  @override
  String get pickColor => 'Chọn màu';

  @override
  String get colorPickerDescription => 'Chọn một màu';

  @override
  String get colorPickerDefault => 'Mặc Định';

  @override
  String get colorPickerCustom => 'Tùy chỉnh';

  @override
  String get customPath => 'Đường dẫn tùy chỉnh';

  @override
  String get customPathDescription =>
      'Đặt đường dẫn tùy chỉnh để lưu tệp\nNhấn lâu để xóa';

  @override
  String get selectDirectory => 'Chọn một thư mục';

  @override
  String get selectMediaService => 'Chọn dịch vụ truyền thông';

  @override
  String get logFile => 'Tệp Nhật Ký';

  @override
  String get logFileDescription => 'Chia sẻ tệp nhật ký';

  @override
  String get restoreSettings => 'Khôi phục cài đặt';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Chế độ xem Web';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Muốn hỗ trợ nhà phát triển Dartotsu?\nHãy xem xét việc quyên góp';

  @override
  String get donationGoal => 'Hiện không có mục tiêu quyên góp';

  @override
  String get options => 'Tùy chọn';

  @override
  String get ok => 'Đồng ý';

  @override
  String get cancel => 'Hủy';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';
}
