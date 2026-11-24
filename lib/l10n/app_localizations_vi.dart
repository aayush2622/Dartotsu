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
  String get appTagline => 'Ứng dụng MỚI tốt nhất để\ntheo dõi Anime & Manga';

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
  String get loadMore => 'Tải thêm';

  @override
  String get login => 'Đăng nhập';

  @override
  String get continueAsGuest => 'Tiếp tục với tư cách khách';

  @override
  String get getStarted => 'Bắt đầu';

  @override
  String get loginWithToken => 'Đăng nhập bằng token';

  @override
  String get pasteTokenHint => 'Dán token truy cập của bạn';

  @override
  String loginTo(String service) {
    return 'Đăng nhập $service';
  }

  @override
  String get settings => 'Cài đặt';

  @override
  String get account => 'Tài khoản';

  @override
  String get about => 'Giới thiệu';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get animationSpeed => 'Hiệu ứng';

  @override
  String get animationSpeedDesc =>
      'Tốc độ chuyển cảnh và hiệu ứng xuất hiện trong app';

  @override
  String get animationSpeedOff => 'Tắt';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tiện ích mở rộng',
      one: 'Sự mở rộng',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Nguồn không xác định';

  @override
  String get install => 'Cài đặt';

  @override
  String get update => 'Cập nhật';

  @override
  String get uninstall => 'Gỡ cài đặt';

  @override
  String get updateInstallCancelled =>
      'Đã hủy cài đặt. Nếu Android báo xung đột với app đã cài thì là do chữ ký khác nhau: hãy gỡ phiên bản hiện tại trước rồi cài bản cập nhật';

  @override
  String updateInstallFailed(String error) {
    return 'Cập nhật thất bại: $error';
  }

  @override
  String get appLock => 'Khóa ứng dụng';

  @override
  String get appLockDesc => 'Hỏi mã khóa khi mở app hoặc quay lại sau một lúc';

  @override
  String get appLockBiometric => 'Mở khóa bằng sinh trắc học';

  @override
  String get appLockBiometricDesc =>
      'Sử dụng dấu vân tay hoặc khuôn mặt của bạn thay vì nhập mật mã';

  @override
  String get appLockBiometricReason => 'Mở khóa Dartotsu';

  @override
  String get appLockDelay => 'Khóa khi không hoạt động';

  @override
  String get appLockDelayAlways => 'Luôn luôn';

  @override
  String get appLockDelayNever => 'không bao giờ';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phút',
      one: '1 phút',
    );
    return 'Sau đó $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Sử dụng sinh trắc học';

  @override
  String get appLockUnlock => 'Nhập mã khóa của bạn';

  @override
  String get appLockWrong => 'Sai mã khóa';

  @override
  String appLockWait(String seconds) {
    return 'Thử quá nhiều lần, đợi $seconds giây nhé';
  }

  @override
  String get appLockNew => 'Chọn mã khóa';

  @override
  String get appLockNewHint => '4 đến 8 chữ số';

  @override
  String get appLockConfirm => 'Nhập lại lần nữa';

  @override
  String get appLockMismatch => 'Hai mã khóa không khớp';

  @override
  String get appLockOn => 'Đã đặt mã khóa';

  @override
  String get appLockRemoveTitle => 'Nhập mã khóa để tắt khóa';

  @override
  String get installFailed => 'Cài đặt thất bại';

  @override
  String get updateFailed => 'Cập nhật thất bại';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count có bản cập nhật',
      one: 'Có 1 bản cập nhật',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Cập nhật tất cả';

  @override
  String extensionsUpdated(int done, int total) {
    return 'Đã cập nhật $done trong số $total tiện ích mở rộng';
  }

  @override
  String get updateConflictTitle => 'Bản cập nhật chưa được cài đặt';

  @override
  String updateConflictBody(String names) {
    return '$names không thể cài đặt được trên phiên bản hiện tại. Điều này thường có nghĩa là bản sao đã cài đặt được ký khác. Gỡ bỏ nó và cài đặt phiên bản mới?';
  }

  @override
  String get updateConflictAction => 'Gỡ cài đặt và cài đặt lại';

  @override
  String get noSourceSettings => 'Nguồn này không có cài đặt nào';

  @override
  String get addPluginRepository => 'Thêm kho plugin';

  @override
  String get pluginIndexUrlHint => 'URL chỉ mục plugin';

  @override
  String get addRepository => 'Thêm kho';

  @override
  String get importRepositoryFile => 'Nhập tệp';

  @override
  String get pluginRepoUpdated => 'Đã cập nhật kho plugin';

  @override
  String get pluginRepoUpdateFailed => 'Không làm mới được kho plugin';

  @override
  String get ok => 'được rồi';

  @override
  String get cancel => 'Hủy';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get save => 'Lưu';

  @override
  String get reset => 'Đặt lại';

  @override
  String get clear => 'Xóa';

  @override
  String get test => 'Thử';

  @override
  String get testing => 'Đang thử…';

  @override
  String get resolving => 'Đang phân giải…';

  @override
  String get none => 'Không có';

  @override
  String get selectMediaService => 'Chọn dịch vụ media';

  @override
  String get manageServices => 'Dịch vụ truyền thông';

  @override
  String get manageServicesDesc =>
      'Sắp xếp lại các dịch vụ và chọn những dịch vụ hiển thị trong bộ chọn';

  @override
  String get manageServicesHint =>
      'Kéo để sắp xếp lại, tắt những cái bạn không sử dụng';

  @override
  String get pickColor => 'Chọn màu';

  @override
  String get colorPickerCustom => 'Tùy chỉnh';

  @override
  String get colorPickerTransparent => 'Trong suốt';

  @override
  String get ltr => 'Trái sang phải';

  @override
  String get searchSettings => 'Tìm trong cài đặt';

  @override
  String nothingMatches(String query) {
    return 'Không có gì khớp với \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Tìm trong $category';
  }

  @override
  String get settingsAppearance => 'Giao diện';

  @override
  String get settingsAppearanceDesc => 'Chủ đề, màu sắc, chế độ kính';

  @override
  String get settingsGeneral => 'Chung';

  @override
  String get settingsGeneralDesc => 'Ngôn ngữ và hành vi';

  @override
  String get settingsNetwork => 'Mạng';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Dịch vụ theo dõi và đăng nhập';

  @override
  String get settingsUpdates => 'Cập nhật';

  @override
  String get amoledBlack => 'Đen AMOLED';

  @override
  String get amoledBlackDesc => 'Nền đen tuyền ở chế độ tối';

  @override
  String get glassMode => 'Chế độ kính';

  @override
  String get glassModeDesc => 'Bề mặt mờ như kính phủ lên ảnh thư viện của bạn';

  @override
  String get shelfFrame => 'Khung quanh các mục';

  @override
  String get shelfFrameDesc =>
      'Hiện thẻ phía sau mỗi hàng, hoặc để các hàng nằm thẳng trên trang';

  @override
  String get settingsExtensionsDesc =>
      'Trình quản lý nguồn, kho và tùy chọn extension';

  @override
  String get settingsAddons => 'Addon';

  @override
  String get customPath => 'Đường dẫn lưu trữ tùy chỉnh';

  @override
  String get stories => 'Truyện';

  @override
  String get watchOrder => 'Thứ tự xem';

  @override
  String get watchOrderOpenSite => 'Mở trên chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Không tìm thấy thứ tự xem nào cho tựa đề này';

  @override
  String get watchOrderOpenFailed => 'Không thể mở tiêu đề đó';

  @override
  String get watchOrderCurrent => 'bạn đang ở đây';

  @override
  String get watchOrderCredit => 'Xem đơn hàng từ chiaki.site';

  @override
  String get customPathDesc => 'Nơi lưu dữ liệu app. Nhấn giữ để đặt lại';

  @override
  String get selectDirectory => 'Chọn thư mục';

  @override
  String get differentCacheManager => 'Bộ nhớ đệm ảnh thay thế';

  @override
  String get differentCacheManagerDesc =>
      'Dùng trình quản lý bộ nhớ đệm khác cho ảnh';

  @override
  String get settingsSync => 'Đồng bộ hóa cài đặt';

  @override
  String get settingsSyncDesc =>
      'Giữ cài đặt của bạn giống nhau trên mọi thiết bị. Chúng được lưu trữ trong một ý chính riêng tư trong tài khoản GitHub của bạn';

  @override
  String get settingsSyncSwitch => 'Đồng bộ hóa khi thay đổi';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Đăng nhập bằng GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Cài đặt được lưu trữ trong một ý chính riêng tư trong tài khoản của bạn';

  @override
  String get settingsSyncToken => 'Sử dụng mã thông báo truy cập cá nhân';

  @override
  String get settingsSyncTokenDesc =>
      'Tạo một cái tại github.com/settings/tokens chỉ với quyền chính';

  @override
  String get settingsSyncTokenField => 'Mã thông báo';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Đăng nhập với tên $user';
  }

  @override
  String get settingsSyncSignOut => 'Đăng xuất';

  @override
  String settingsSyncCode(Object code) {
    return 'Nhập $code trên GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Trang GitHub đã mở trong trình duyệt của bạn. Nhấn để sao chép mã hoặc nhấn và giữ để hủy.';

  @override
  String get settingsSyncSignInFailed => 'Không thể đăng nhập vào GitHub';

  @override
  String get dcPreview => 'Xem trước';

  @override
  String get dcSampleWatching => 'Đang xem';

  @override
  String get dcSampleReading => 'Đọc';

  @override
  String get dcSampleBrowsing => 'Đang duyệt';

  @override
  String get dcSampleLive => 'Ngay bây giờ';

  @override
  String get dcLiveNothing =>
      'Không có gì được hiển thị ngay bây giờ. Mở một tiêu đề, bắt đầu một tập hoặc một chương và nó sẽ xuất hiện ở đây.';

  @override
  String get dcMemberList => 'Trong danh sách thành viên';

  @override
  String get dcAccount => 'Tài khoản';

  @override
  String get dcSignIn => 'Đăng nhập bằng Discord';

  @override
  String get dcSignOut => 'Đăng xuất';

  @override
  String get dcDesktopHint =>
      'Nếu không kết nối, Discord sẽ hiển thị “Đang xem Dartotsu” thông qua ứng dụng dành cho máy tính để bàn. Kết nối Discord để đặt tên hoạt động theo tiêu đề của bạn, kể cả trên thiết bị di động.';

  @override
  String get dcMobileHint =>
      'Kết nối Discord để hiển thị những gì bạn đang xem hoặc đọc. Nó sử dụng trang ủy quyền của Discord chứ không phải mã thông báo tài khoản của bạn.';

  @override
  String get dcConnect => 'Kết nối bất hòa';

  @override
  String get dcConnectDesc =>
      'Mở trang ủy quyền của Discord và thêm Dartotsu trong Ứng dụng được ủy quyền. Discord yêu cầu cập nhật sự hiện diện của bạn. Chỉ có mã thông báo làm mới được lưu chứ không phải mã thông báo tài khoản của bạn.';

  @override
  String get dcConnectFailed => 'Không thể kết nối Discord';

  @override
  String get dcConnectedSnack => 'Đã kết nối sự bất hòa';

  @override
  String get dcDisconnect => 'Ngắt kết nối';

  @override
  String get dcDisconnectedSnack => 'Discord đã bị ngắt kết nối';

  @override
  String get dcUseToken => 'Thay vào đó hãy sử dụng mã thông báo';

  @override
  String get dcRouteDesktop => 'Thông qua ứng dụng máy tính để bàn Discord';

  @override
  String get dcRouteHeadless => 'Thông qua tài khoản của bạn';

  @override
  String get dcRouteGateway => 'Thông qua tài khoản của bạn, trực tiếp';

  @override
  String get dcRouteLinked => 'Ứng dụng được kết nối';

  @override
  String get dcRouteNone => 'Không được kết nối';

  @override
  String get dcStatusNeedsToken =>
      'Cần mã thông báo Discord. Việc kết nối ứng dụng không đặt trạng thái trực tuyến của bạn.';

  @override
  String get dcAccountOnly => 'Cần có tài khoản đăng nhập';

  @override
  String get dcStatusSection => 'Trạng thái';

  @override
  String get dcControlStatus => 'Kiểm soát trạng thái của tôi';

  @override
  String get dcControlStatusDesc =>
      'Giữ kết nối trực tiếp với Discord khi tính năng Hiện diện phong phú đang bật để Dartotsu có thể đặt trạng thái của bạn.';

  @override
  String get dcStatusOnline => 'Trực tuyến';

  @override
  String get dcStatusIdle => 'Nhàn rỗi';

  @override
  String get dcStatusDnd => 'Đừng làm phiền';

  @override
  String get dcStatusInvisible => 'Vô hình';

  @override
  String get dcCustomStatus => 'Trạng thái tùy chỉnh';

  @override
  String get dcCustomStatusHint => 'Bạn đang làm gì vậy?';

  @override
  String get dcActivitySection => 'Hoạt động';

  @override
  String get dcShowWatching => 'Hiển thị trong khi xem';

  @override
  String get dcShowReading => 'Hiển thị trong khi đọc';

  @override
  String get dcListening => 'Nghe';

  @override
  String get dcCompeting => 'Cạnh tranh';

  @override
  String get dcActivityName => 'Tên hoạt động';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Tiêu đề';

  @override
  String get dcNameCustom => 'tùy chỉnh';

  @override
  String get dcCustomNameHint => 'Tên hiển thị sau khi “Đang xem”';

  @override
  String get dcStatusText => 'Văn bản trạng thái';

  @override
  String get dcStatusTextDesc =>
      'Danh sách thành viên hiển thị gì bên cạnh tên của bạn';

  @override
  String get dcDisplayName => 'Tên';

  @override
  String get dcDisplayState => 'tiểu bang';

  @override
  String get dcDisplayDetails => 'Chi tiết';

  @override
  String get dcTextSection => 'văn bản';

  @override
  String get dcDetails => 'Dòng trên cùng';

  @override
  String get dcState => 'Điểm mấu chốt';

  @override
  String get dcTemplateHint => 'Trống sử dụng mặc định';

  @override
  String get dcVariables => 'Nhấn để chèn một giá trị';

  @override
  String get dcImagesSection => 'Hình ảnh';

  @override
  String get dcLargeImage => 'Hình ảnh lớn';

  @override
  String get dcLargeAuto => 'Tự động';

  @override
  String get dcLargeCover => 'Bìa';

  @override
  String get dcLargeLogo => 'biểu tượng';

  @override
  String get dcSmallImage => 'Hình ảnh nhỏ';

  @override
  String get dcSmallAuto => 'biểu tượng';

  @override
  String get dcSmallNone => 'không có';

  @override
  String get dcTimerStyle => 'Kiểu hẹn giờ';

  @override
  String get dcTimerAuto => 'Tự động';

  @override
  String get dcTimerElapsed => 'Đã qua';

  @override
  String get dcTimerRemaining => 'Còn lại';

  @override
  String get dcButtonsSection => 'Nút';

  @override
  String get dcButtonMedia => 'Liên kết đến tiêu đề';

  @override
  String get dcButtonApp => 'Liên kết đến Dartotsu';

  @override
  String get dcButtonCustom => 'Nút tùy chỉnh';

  @override
  String get dcButtonLabel => 'Nhãn';

  @override
  String get dcButtonUrl => 'liên kết';

  @override
  String get dcPrivacySection => 'Quyền riêng tư';

  @override
  String get dcPrivateText => 'Văn bản riêng tư';

  @override
  String get dcPrivateHint => 'Một cái gì đó riêng tư';

  @override
  String get dcTokenWarning =>
      'Đăng nhập sử dụng mã thông báo tài khoản của bạn. Các quy tắc của Discord không khuyến khích điều này, vì vậy bạn phải tự chịu rủi ro khi sử dụng nó.';

  @override
  String get dcConnected => 'Đã kết nối';

  @override
  String get dcConnection => 'Kết nối';

  @override
  String get dcMethodDesktop => 'Ứng dụng máy tính để bàn Discord';

  @override
  String get dcMethodDesktopDesc =>
      'Được sử dụng tự động khi không có gì khác được kết nối. Discord phải được mở trên máy tính này.';

  @override
  String get dcMethodToken => 'Mã thông báo tài khoản';

  @override
  String get dcInUse => 'Đang sử dụng';

  @override
  String get dcRecommended => 'Được đề xuất';

  @override
  String get dcConnecting => 'Đang kết nối…';

  @override
  String get dcDisconnected => 'Không được kết nối';

  @override
  String dcSignedInAs(String name) {
    return 'Đăng nhập với tên $name';
  }

  @override
  String get settingsSyncOn => 'Bật';

  @override
  String get settingsSyncCustom => 'tùy chỉnh';

  @override
  String get settingsSyncChangedHeader => 'Đã thay đổi cài đặt';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync.';

  @override
  String get settingsSyncChangedOnly =>
      'Chỉ những cài đặt bạn đã thay đổi mới được lưu trữ. Mọi thứ khác sử dụng mặc định của nó trên mọi thiết bị. The cloud icon shows what is already on the server.';

  @override
  String get settingsSyncOffCategory =>
      'Không đồng bộ hóa. These stay on this device and the server copy is left as it is.';

  @override
  String get settingsSyncPartsNote =>
      'Mỗi thiết bị. Tắt giữ giá trị riêng của mỗi thiết bị, do đó, điện thoại và TV có thể khác nhau.';

  @override
  String get settingsSyncPartSubtitles => 'Kích thước và màu sắc phụ đề';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Kích thước, trọng lượng, màu sắc và vị trí';

  @override
  String get settingsSyncPartPictureColors => 'Màu sắc hình ảnh';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Độ sáng, độ tương phản, độ bão hòa, gamma, màu sắc và HDR';

  @override
  String get settingsSyncPartPalette => 'Màu sắc chủ đề';

  @override
  String get settingsSyncPartPaletteDesc => 'Chủ đề, màu nhấn và màu đen OLED';

  @override
  String get settingsSyncCatOther => 'Xem, đọc và dịch vụ';

  @override
  String get settingsSyncTitles => 'Xem tiến độ và tiêu đề';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records tiêu đề và $resume tiếp tục các mục trên máy chủ';
  }

  @override
  String get settingsSyncTitlesNone => 'Chưa có gì được tải lên';

  @override
  String get settingsSyncTitlesNote =>
      'Xem và đọc các vị trí, kệ sơ yếu lý lịch, danh sách địa phương của bạn, dấu trang, nội dung nổi bật và tùy chọn theo tiêu đề. Các nguồn trùng khớp và luồng vẫn ở trên mỗi thiết bị vì chúng phụ thuộc vào tiện ích mở rộng của bạn. Tiêu đề tải lên tối đa cứ sau 45 giây.';

  @override
  String get settingsSyncConnect => 'Không được kết nối';

  @override
  String get settingsSyncConnectDesc =>
      'Đăng nhập bằng GitHub để giữ nguyên cài đặt của bạn trên mọi thiết bị.';

  @override
  String get settingsSyncFailedTitle => 'Đồng bộ hóa không thành công';

  @override
  String get settingsSyncPaused => 'Đã tạm dừng';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off.';

  @override
  String get settingsSyncUpToDate => 'Cập nhật';

  @override
  String get settingsSyncRetry => 'Thử lại';

  @override
  String get settingsSyncAccount => 'tài khoản GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Dữ liệu của bạn sẽ được chuyển tới một ý chính riêng tư trong tài khoản của chính bạn.';

  @override
  String get settingsSyncWaiting => 'Đang chờ bạn phê duyệt trên GitHub';

  @override
  String get settingsSyncCopyCode => 'Nhấn vào mã để sao chép nó';

  @override
  String get settingsSyncCancel => 'Hủy bỏ';

  @override
  String get settingsSyncStatSettings => 'Cài đặt';

  @override
  String get settingsSyncStatTitles => 'Tiêu đề';

  @override
  String get settingsSyncStatShelf => 'Tiếp tục';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Đã tải lên $time từ $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count đã thay đổi',
      one: '1 đã thay đổi',
      zero: 'Chưa có gì thay đổi',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Tài khoản và mật khẩu';

  @override
  String get settingsSyncSecretsDesc =>
      'Đồng bộ hóa thông tin đăng nhập của bạn (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), khóa API và khóa ứng dụng giữa các thiết bị của bạn. Chúng được mã hóa bằng cụm mật khẩu lưu trên thiết bị của bạn, vì vậy GitHub không bao giờ nhìn thấy chúng.';

  @override
  String get settingsSyncSecretsOn => 'Tài khoản được đồng bộ hóa và mã hóa';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Việc đăng xuất trên một thiết bị sẽ không làm bạn đăng xuất trên các thiết bị khác.';

  @override
  String get settingsSyncSecretsBroken =>
      'Cụm mật khẩu không còn khớp với cụm mật khẩu trên máy chủ. Nhập lại để tiếp tục đồng bộ hóa tài khoản.';

  @override
  String get settingsSyncPassphraseSet => 'Đặt cụm mật khẩu';

  @override
  String get settingsSyncPassphraseEnter => 'Nhập cụm mật khẩu của bạn';

  @override
  String get settingsSyncPassphraseField => 'Cụm mật khẩu';

  @override
  String get settingsSyncPassphraseConfirm => 'Lặp lại cụm mật khẩu';

  @override
  String get settingsSyncPassphraseNew =>
      'Chọn cụm mật khẩu có ít nhất 6 ký tự. Nó không được lưu trữ ở bất cứ đâu ngoài thiết bị của bạn và không thể khôi phục được. Nếu bạn quên nó, hãy xóa bản sao máy chủ và bắt đầu lại.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Nhập cụm mật khẩu bạn đã chọn trên thiết bị khác của mình. Tài khoản trên thiết bị này sẽ được thay thế bằng tài khoản đã đồng bộ hóa.';

  @override
  String get settingsSyncPassphraseWrong => 'Cụm mật khẩu sai';

  @override
  String get settingsSyncPassphraseMismatch => 'Cụm mật khẩu không khớp';

  @override
  String get settingsSyncPassphraseShort => 'Sử dụng ít nhất 6 ký tự';

  @override
  String get settingsSyncSecretsStop => 'Dừng đồng bộ hóa tài khoản';

  @override
  String get settingsSyncSecretsDelete => 'Xóa khỏi GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Thao tác này sẽ xóa tệp tài khoản được mã hóa khỏi ý chính của bạn. Các thiết bị khác giữ nguyên thông tin đăng nhập và có thể đặt cụm mật khẩu mới.';

  @override
  String get settingsSyncWhat => 'Đồng bộ hóa những gì';

  @override
  String get settingsSyncServer => 'Trên máy chủ';

  @override
  String get settingsSyncServerEmpty => 'Chưa có gì được tải lên';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count cài đặt, đã tải lên $time từ $device';
  }

  @override
  String get settingsSyncThisDevice => 'thiết bị này';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cài đặt trên máy chủ',
      one: '1 cài đặt trên máy chủ',
      zero: 'Không có gì trên máy chủ',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Đồng bộ hóa ngay bây giờ';

  @override
  String get settingsSyncRunning => 'Đang đồng bộ hóa…';

  @override
  String get settingsSyncNever => 'Chưa được đồng bộ hóa';

  @override
  String settingsSyncLast(Object time) {
    return 'Đồng bộ hóa lần cuối $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Đồng bộ hóa không thành công: $error';
  }

  @override
  String get settingsSyncScope =>
      'Chỉ những cài đặt hoạt động giống nhau ở mọi nơi mới được đồng bộ hóa. Tài khoản, mã thông báo, thư mục, tiện ích mở rộng, thông báo, Discord, cập nhật và kích thước cửa sổ vẫn còn trên mỗi thiết bị.';

  @override
  String get backupAndRestore => 'Sao lưu và khôi phục';

  @override
  String get backupAndRestoreDesc => 'Lưu hoặc tải lại cài đặt của bạn';

  @override
  String get backup => 'Sao lưu';

  @override
  String get restore => 'Khôi phục';

  @override
  String get loadExtensionsIcon => 'Tải icon extension';

  @override
  String get autoUpdateRuntimes =>
      'Tự động cập nhật thời gian chạy tiện ích mở rộng';

  @override
  String get autoUpdateRuntimesDesc =>
      'Tải xuống Aniyomi, CloudStream mới và các phiên bản thời gian chạy khác ở chế độ nền. Tắt, thay vào đó, biểu tượng cập nhật sẽ xuất hiện bên cạnh trình quản lý.';

  @override
  String get loadExtensionsIconDesc =>
      'Hiện icon nguồn trong danh sách extension';

  @override
  String get sectionStorage => 'Lưu trữ';

  @override
  String get sectionManagers => 'Trình quản lý';

  @override
  String get sectionOptions => 'Tùy chọn';

  @override
  String get backupTabBackup => 'Sao lưu';

  @override
  String get backupTabRestore => 'Khôi phục';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys cài đặt trong $categories mục';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Sao lưu gần nhất $time';
  }

  @override
  String get backupNever => 'Chưa có bản sao lưu';

  @override
  String get backupSelectAll => 'Chọn tất cả';

  @override
  String get backupClearAll => 'Xóa';

  @override
  String backupKeys(Object count) {
    return '$count cài đặt';
  }

  @override
  String get backupPasswordRequired =>
      'Mật khẩu (bắt buộc đối với dữ liệu tài khoản)';

  @override
  String get backupProtectedNeedsPassword =>
      'Đặt mật khẩu để sao lưu dữ liệu tài khoản hoặc bỏ chọn nó';

  @override
  String get backupProtectedSkipped =>
      'Bản sao lưu này không có mật khẩu nên dữ liệu tài khoản của nó đã bị bỏ qua';

  @override
  String get backupPassword => 'Mật khẩu (tùy chọn)';

  @override
  String get backupPasswordHint => 'Để trống để dùng mặc định';

  @override
  String get backupSensitive =>
      'Có chứa token đăng nhập. Hãy giữ file này riêng tư';

  @override
  String get backupCreate => 'Tạo bản sao lưu';

  @override
  String backupSaved(Object name) {
    return 'Đã lưu bản sao lưu vào $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Sao lưu thất bại: $error';
  }

  @override
  String get backupPickFile => 'Chọn file sao lưu';

  @override
  String get backupPickFileDesc => 'Chọn file .json do Dartotsu tạo';

  @override
  String get backupChooseAnother => 'Chọn file khác';

  @override
  String get backupCreatedAt => 'Ngày tạo';

  @override
  String get backupAppVersion => 'Phiên bản app';

  @override
  String get backupDevice => 'Thiết bị';

  @override
  String get backupAccounts => 'Tài khoản';

  @override
  String get backupSize => 'Kích thước';

  @override
  String get backupEncrypted => 'Có mật khẩu';

  @override
  String get backupUnlock => 'Mở khóa';

  @override
  String get backupWrongPassword =>
      'Không đọc được file này. Kiểm tra lại mật khẩu';

  @override
  String get backupRestoreSelected => 'Khôi phục mục đã chọn';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Khôi phục $count cài đặt? Giá trị hiện có trong các mục này sẽ bị ghi đè.';
  }

  @override
  String get backupRestored =>
      'Đã khôi phục. Khởi động lại app để áp dụng toàn bộ';

  @override
  String backupRestoreFailed(Object error) {
    return 'Khôi phục thất bại: $error';
  }

  @override
  String get backupSelectOne => 'Chọn ít nhất một mục';

  @override
  String get backupCatTheme => 'Giao diện';

  @override
  String get backupCatThemeDesc =>
      'Chủ đề, màu sắc, kính, phông chữ và kiểu thẻ';

  @override
  String get backupCatCommon => 'Chung';

  @override
  String get backupCatCommonDesc =>
      'Ngôn ngữ, lưu trữ, mạng và tùy chọn extension';

  @override
  String get backupCatPlayer => 'Trình phát';

  @override
  String get backupCatPlayerDesc => 'Tùy chọn trình phát';

  @override
  String get backupCatReader => 'Trình đọc';

  @override
  String get backupCatReaderDesc => 'Tùy chọn trình đọc';

  @override
  String get backupCatProtected => 'Tài khoản';

  @override
  String get backupCatProtectedDesc => 'Token đăng nhập và dữ liệu xác thực';

  @override
  String get backupCatOther => 'Dịch vụ và bảng tin';

  @override
  String get backupCatOtherDesc =>
      'Bố cục bảng tin, danh sách và tùy chọn dịch vụ';

  @override
  String get logFile => 'File log';

  @override
  String get logFileDesc =>
      'Chia sẻ log của app, hoặc sao chép đường dẫn trên Linux';

  @override
  String get logDelete => 'Xóa tập tin nhật ký';

  @override
  String get logDeleteDesc =>
      'Xóa nhật ký ứng dụng đã lưu để giải phóng dung lượng';

  @override
  String logDeleted(String size) {
    return 'Đã xóa $size nhật ký';
  }

  @override
  String get missingSequel => 'Thiếu phần tiếp theo';

  @override
  String get rising => 'Đang tăng';

  @override
  String get stacks => 'ngăn xếp';

  @override
  String get stacksAll => 'Tất cả';

  @override
  String get stacksFeatured => 'Nổi bật';

  @override
  String get stacksMine => 'của bạn';

  @override
  String get stacksSaved => 'Đã lưu';

  @override
  String get stacksFollowing => 'Đang theo dõi';

  @override
  String get stacksEmpty => 'Chưa có ngăn xếp nào ở đây';

  @override
  String get stacksSignIn => 'Đăng nhập vào MangaBaka để xem ngăn xếp của bạn';

  @override
  String get stacksScopeNeeded =>
      'Ngăn xếp của bạn cần có sự cho phép mới. Đăng nhập lại vào MangaBaka để cho phép.';

  @override
  String get stacksSignInAgain => 'Đăng nhập lại';

  @override
  String get stacksCouldntLoad => 'Không thể tải ngăn xếp';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count loạt',
      one: '1 loạt',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lưu',
      one: '1 lưu',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'bởi $name';
  }

  @override
  String get stackSpoilers => 'tiết lộ nội dung';

  @override
  String get stackEmptyEntries => 'Ngăn xếp này trống';

  @override
  String get stackSave => 'Lưu ngăn xếp';

  @override
  String get stackUnsave => 'Xóa khỏi đã lưu';

  @override
  String get stackSavedToast => 'Đã lưu vào ngăn xếp của bạn';

  @override
  String get stackRemovedToast => 'Đã xóa khỏi ngăn xếp đã lưu của bạn';

  @override
  String userStacks(String name) {
    return 'Ngăn xếp bởi $name';
  }

  @override
  String get newsTitle => 'Tin tức';

  @override
  String get newsEmpty => 'Hiện tại không có tin tức nào';

  @override
  String get newsCouldntLoad => 'Không thể tải tin tức';

  @override
  String get logFileCopied => 'Đã sao chép đường dẫn log';

  @override
  String get donateSheetTitle => 'Bạn thích Dartotsu chứ?';

  @override
  String get donateSheetMessage =>
      'Dartotsu do một người làm và duy trì. Nếu thấy hữu ích, hãy cân nhắc ủng hộ để app tiếp tục phát triển nhé.';

  @override
  String get donateLater => 'Để sau';

  @override
  String get glassBackground => 'Nền kính';

  @override
  String get glassBackgroundDesc =>
      'Banner hồ sơ của bạn, trừ khi bạn đặt link ảnh';

  @override
  String get glassBackgroundHint =>
      'Link ảnh (để trống để dùng banner của bạn)';

  @override
  String get followCover => 'Theo ảnh bìa';

  @override
  String get followCoverDesc =>
      'Màu theo nền, và theo ảnh bìa ở trang chi tiết';

  @override
  String get followCoverMediaOnly => 'Chỉ dành cho phương tiện truyền thông';

  @override
  String get followCoverMediaOnlyDesc =>
      'Chỉ theo dõi bìa trên các trang media, các trang còn lại giữ màu bình thường';

  @override
  String get cardStyle => 'Kiểu thẻ';

  @override
  String get cardStyleDesc => 'Vị trí tiêu đề, kích thước, tiến độ và huy hiệu';

  @override
  String get customFont => 'Phông chữ';

  @override
  String get customFontDesc => 'Mặc định, file từ thiết bị, hoặc Google Fonts';

  @override
  String get customFontError => 'Không tải được file phông chữ đó';

  @override
  String get googleFontError => 'Không tải được phông chữ đó';

  @override
  String get yourFonts => 'Phông chữ của bạn';

  @override
  String get addFontFile => 'Thêm file phông chữ…';

  @override
  String get browseGoogleFonts => 'Duyệt Google Fonts…';

  @override
  String get searchGoogleFonts => 'Tìm trên Google Fonts';

  @override
  String get defaultFont => 'Mặc định';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Màu động từ hệ thống';

  @override
  String get jsonTheme => 'File chủ đề tùy chỉnh';

  @override
  String get jsonThemeDesc =>
      'Màu trực tiếp từ ~/.config/dartotsu/theme.json (script tự viết hoặc bạn tự chỉnh)';

  @override
  String get themeMode => 'Chế độ chủ đề';

  @override
  String get mode => 'Chế độ';

  @override
  String get trackingService => 'Dịch vụ theo dõi';

  @override
  String get signOut => 'Đăng xuất';

  @override
  String get signIn => 'Đăng nhập';

  @override
  String get notSignedIn => 'Chưa đăng nhập';

  @override
  String signOutOf(String service) {
    return 'Đăng xuất khỏi $service?';
  }

  @override
  String get checkForUpdates => 'Kiểm tra cập nhật';

  @override
  String get checkForUpdatesDesc => 'Báo khi có bản phát hành mới trên GitHub';

  @override
  String get updateChannel => 'Kênh cập nhật';

  @override
  String get channel => 'Kênh';

  @override
  String get stable => 'Ổn định';

  @override
  String get preRelease => 'Bản thử nghiệm';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Kiểm tra ngay';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Mặc định';

  @override
  String currentlyUsing(String value) {
    return 'Hiện tại: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Mặc định (Cloudflare)';

  @override
  String get proxy => 'ủy nhiệm';

  @override
  String get proxyProtocol => 'Loại';

  @override
  String get proxyHost => 'Máy chủ';

  @override
  String get proxyPort => 'Cổng';

  @override
  String get proxyUsername => 'Tên người dùng';

  @override
  String get proxyPassword => 'Mật khẩu';

  @override
  String get optional => 'Tùy chọn';

  @override
  String get clearCookies => 'Xóa cookie';

  @override
  String get clearCookiesDesc => 'Xóa mọi cookie đã lưu';

  @override
  String notImplementedArea(String area) {
    return '$area — sắp ra mắt';
  }

  @override
  String notImplementedService(String service) {
    return '$service chưa hỗ trợ cái này.';
  }

  @override
  String get couldNotLoadResults => 'Không tải được kết quả';

  @override
  String get updateCheckFailed => 'Không kiểm tra được cập nhật';

  @override
  String get highRefreshRate => 'Tần số quét cao';

  @override
  String get highRefreshRateDesc =>
      'Dùng tần số quét cao nhất mà màn hình hỗ trợ';

  @override
  String get imageSave => 'Lưu ảnh';

  @override
  String imageSavedTo(String path) {
    return 'Đã lưu vào $path';
  }

  @override
  String get imageActionFailed => 'Không tải được ảnh';

  @override
  String get imageTitleCover => 'Ảnh bìa';

  @override
  String get imageTitlePage => 'Trang';

  @override
  String get imageTitleBanner => 'Biểu ngữ';

  @override
  String get imageTitleAvatar => 'Ảnh đại diện';

  @override
  String get verifyTls => 'Xác minh chứng chỉ';

  @override
  String get verifyTlsDesc =>
      'Từ chối máy chủ có chứng chỉ HTTPS không hợp lệ. Chỉ tắt cho nguồn dùng chứng chỉ tự ký';

  @override
  String get clearCookiesConfirm =>
      'Xóa mọi cookie đã lưu? Việc này có thể đăng xuất bạn khỏi một số nguồn.';

  @override
  String get version => 'Phiên bản';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Mã nguồn, issue và bản phát hành';

  @override
  String get discordDesc => 'Cộng đồng và hỗ trợ';

  @override
  String get supportDeveloper => 'Hỗ trợ nhà phát triển';

  @override
  String get buyMeCoffee => 'Mua cho tôi một ly cà phê';

  @override
  String get upiId => 'ID UPI';

  @override
  String get upiCopied => 'Đã sao chép mã UPI';

  @override
  String get donateDesc => 'Ủng hộ phát triển';

  @override
  String get contributors => 'Người đóng góp';

  @override
  String get contributorsDesc => 'Những người đã tạo ra Dartotsu';

  @override
  String get contributorsLoadFailed =>
      'Không tải được danh sách người đóng góp';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Các dự án xây dựng trên Dartotsu';

  @override
  String get forksEmpty => 'Không tìm thấy fork nào';

  @override
  String get sectionColors => 'Màu sắc';

  @override
  String get sectionDisplay => 'Hiển thị';

  @override
  String get sectionStyle => 'Kiểu dáng';

  @override
  String get sectionCommunity => 'Cộng đồng';

  @override
  String get sectionAppInfo => 'Thông tin app';

  @override
  String get sectionRequests => 'Yêu cầu';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Quay lại';

  @override
  String get onboardingNext => 'Tiếp';

  @override
  String get onboardingSkip => 'Bỏ qua';

  @override
  String get onboardingLanguageBody =>
      'Chọn ngôn ngữ hiển thị cho Dartotsu. Bạn có thể thay đổi ngôn ngữ này sau trong Cài đặt.';

  @override
  String get onboardingPaletteTitle => 'Làm theo ý bạn';

  @override
  String get onboardingPaletteBody =>
      'Chọn bảng màu. Mọi màu nhấn, từ thẻ đến trình phát, sẽ theo nó.';

  @override
  String get themeModeAuto => 'Tự động';

  @override
  String get themeModeLight => 'Sáng';

  @override
  String get themeModeDark => 'Tối';

  @override
  String get onboardingSyncTitle => 'Đồng bộ thư viện';

  @override
  String get onboardingSyncBody =>
      'Đăng nhập AniList để mang theo danh sách, tiến độ và điểm của bạn. Hoặc bỏ qua và xem với tư cách khách.';

  @override
  String get onboardingOpenLinks => 'Mở link AniList và kho trong Dartotsu';

  @override
  String get onboardingPermsTitle => 'Quyền';

  @override
  String get onboardingPermsBody =>
      'Cho phép ngay bây giờ để tải xuống, cập nhật và thông báo hoạt động mượt mà. Bạn có thể đổi sau trong cài đặt hệ thống.';

  @override
  String get permNotifications => 'Thông báo';

  @override
  String get permNotificationsDesc => 'Tiến độ tải xuống, tập mới và phản hồi';

  @override
  String get permStorage => 'Truy cập mọi file';

  @override
  String get permStorageDesc =>
      'Lưu file tải xuống vào thư mục Dartotsu công khai';

  @override
  String get permInstall => 'Cài đặt bản cập nhật';

  @override
  String get permInstallDesc =>
      'Cho phép Dartotsu tự cài bản cập nhật của chính nó';

  @override
  String get permBattery => 'Pin không hạn chế';

  @override
  String get permBatteryDesc => 'Giữ các lượt tải lâu chạy ngầm';

  @override
  String get permGrant => 'Cho phép';

  @override
  String get linkOpenInApp => 'Mở link trong Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Cho link AniList và kho mở app';

  @override
  String get reviewsTitle => 'Đánh giá';

  @override
  String get reviewsEmpty => 'Chưa có đánh giá nào';

  @override
  String get reviewsFailed => 'Không tải được đánh giá';

  @override
  String get reviewHelpfulQuestion => 'Đánh giá này có hữu ích không?';

  @override
  String get reviewVoteFailed => 'Không lưu được lượt bình chọn của bạn';

  @override
  String reviewHelpful(int n, int total) {
    return '$n/$total người thấy hữu ích';
  }

  @override
  String get calendarTitle => 'Lịch phát sóng';

  @override
  String get calendarToday => 'Hôm nay';

  @override
  String get calendarEmpty => 'Hôm nay không có gì lên sóng';

  @override
  String get calendarFailed => 'Không tải được lịch';

  @override
  String calendarChapter(int n) {
    return 'Chương $n';
  }

  @override
  String get calendarExpected => 'Dự kiến';

  @override
  String get castReceiverFailed =>
      'Chromecast không khởi động trình phát của nó';

  @override
  String get castPlaybackFailed => 'Thiết bị không thể phát luồng này';

  @override
  String get shortcutNothingToContinue => 'Chưa có gì để tiếp tục';

  @override
  String shortcutNoCalendar(String service) {
    return '$service không có lịch';
  }

  @override
  String calendarEpisode(int n) {
    return 'Tập $n';
  }

  @override
  String get shareAnalytics => 'Chia sẻ dữ liệu sử dụng ẩn danh';

  @override
  String get shareAnalyticsDesc =>
      'Số lượng người dùng ẩn danh và báo cáo lỗi. Không có tài khoản hay dữ liệu cá nhân';

  @override
  String get linkOpenAnilist => 'Mở link AniList trong Dartotsu';

  @override
  String get linkOpenAnilistDesc => 'Bật xử lý link để link anilist.co mở app';

  @override
  String get linkSettingsFailed => 'Không mở được cài đặt hệ thống';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Hiện bạn đang làm gì trên hồ sơ Discord. Cần token Discord của bạn.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Hiện bạn đang làm gì trên hồ sơ Discord. Cần app Discord trên máy tính đang chạy.';

  @override
  String get discordBrowsing => 'Hiện hoạt động duyệt';

  @override
  String get discordBrowsingDesc =>
      'Hiện cả tab, trang hay hồ sơ bạn đang xem, không chỉ cái bạn đang xem hoặc đọc.';

  @override
  String get discordLookHeader => 'Kiểu hiển thị';

  @override
  String get discordActivityType => 'Loại hoạt động';

  @override
  String get discordActivityTypeDesc =>
      'Cách Discord diễn đạt: \"Đang xem …\" hoặc \"Đang chơi …\". Tự động dùng Đang xem cho anime và Đang chơi cho còn lại.';

  @override
  String get discordWatching => 'Đang xem';

  @override
  String get discordPlaying => 'Đang chơi';

  @override
  String get discordCovers => 'Hiện ảnh bìa';

  @override
  String get discordCoversDesc => 'Ảnh bìa và icon Dartotsu trên thẻ.';

  @override
  String get discordTimer => 'Hiện bộ đếm giờ';

  @override
  String get discordTimerDesc =>
      'Thời gian đã trôi qua hoặc còn lại dưới tiêu đề.';

  @override
  String get discordButtons => 'Hiện nút';

  @override
  String get discordButtonsDesc =>
      'Các nút \"Xem anime / manga\" và \"Mở Dartotsu\".';

  @override
  String get discordHideTitles => 'Ẩn tiêu đề';

  @override
  String get discordHideTitlesDesc =>
      'Thay tên anime và manga (cùng ảnh bìa và link) bằng \"Something private\".';

  @override
  String get discordConnectionHeader => 'Kết nối';

  @override
  String get listSearchHint => 'Tìm trong danh sách này';

  @override
  String get listSort => 'Sắp xếp';

  @override
  String get listFilter => 'Lọc';

  @override
  String get listRandom => 'Tiêu đề ngẫu nhiên';

  @override
  String get listReverse => 'Đảo thứ tự';

  @override
  String get listSortDefault => 'Thứ tự danh sách';

  @override
  String get listSortScore => 'Điểm của bạn';

  @override
  String get listSortTitle => 'Tiêu đề';

  @override
  String get listSortUpdated => 'Cập nhật gần nhất';

  @override
  String get listSortProgress => 'Tiến độ';

  @override
  String get listSortReleased => 'Ngày phát hành';

  @override
  String get listSortAverage => 'Điểm trung bình';

  @override
  String get listFilterFormat => 'Định dạng';

  @override
  String get listFilterStatus => 'Trạng thái';

  @override
  String get listFilterGenres => 'Thể loại';

  @override
  String get listFilterClear => 'Xóa bộ lọc';

  @override
  String get listNoMatches => 'Không có gì trong danh sách khớp';

  @override
  String get discordLogin => 'Đăng nhập Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved => 'Đã lưu. Chạm để thay, nhấn giữ để xóa.';

  @override
  String get discordTokenNotSet => 'Chưa đặt. Chạm để thêm.';

  @override
  String get discordTokenSavedSnack => 'Đã lưu token Discord';

  @override
  String get discordTokenRemovedSnack => 'Đã xóa token Discord';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Bật · chạm để đổi kiểu hiển thị';

  @override
  String get discordRichPresenceRowOff =>
      'Hiện bạn đang làm gì trên hồ sơ Discord';

  @override
  String get loginCancelled => 'Đã hủy đăng nhập';

  @override
  String get invalidToken => 'Token không hợp lệ';

  @override
  String loginFailed(String error) {
    return 'Đăng nhập thất bại: $error';
  }

  @override
  String get malLoginFailed => 'Đăng nhập MyAnimeList thất bại';

  @override
  String get kitsuLoginFailed =>
      'Đăng nhập Kitsu thất bại. Kiểm tra lại email và mật khẩu.';

  @override
  String get kitsuLoginTitle => 'Đăng nhập Kitsu';

  @override
  String get emailOrUsername => 'Email hoặc tên người dùng';

  @override
  String get password => 'Mật khẩu';

  @override
  String get kitsuProfile => 'Hồ sơ Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Đăng nhập MangaBaka thất bại';

  @override
  String get comickLoginFailed => 'Đăng nhập Comick không thành công';

  @override
  String get tagline => 'Dòng giới thiệu';

  @override
  String get trending => 'Xu hướng';

  @override
  String get anticipated => 'Dự kiến';

  @override
  String get watchlist => 'Danh sách theo dõi';

  @override
  String get recommendedShows => 'Chương trình được đề xuất';

  @override
  String get recommendedMovies => 'Phim được đề xuất';

  @override
  String get boxOffice => 'phòng vé';

  @override
  String get popularMovies => 'Phim nổi tiếng';

  @override
  String get popularShows => 'Chương trình nổi tiếng';

  @override
  String get anticipatedMovies => 'Phim được mong đợi';

  @override
  String get anticipatedShows => 'Chương trình được mong đợi';

  @override
  String get trendingShows => 'Chương trình thịnh hành';

  @override
  String get mostWatchedThisWeek => 'Được xem nhiều nhất trong tuần này';

  @override
  String get sortMostViewed => 'Xem nhiều nhất';

  @override
  String get sortMostFollowed => 'Được theo dõi nhiều nhất';

  @override
  String get sortLatestUpdates => 'Cập nhật mới nhất';

  @override
  String get translationStatusLabel => 'Dịch thuật';

  @override
  String get weeklySchedule => 'Lịch trình hàng tuần';

  @override
  String get mostFollowed => 'Được theo dõi nhiều nhất';

  @override
  String get latestUpdates => 'Cập nhật mới nhất';

  @override
  String get trendingAnime => 'Anime Xu Hướng';

  @override
  String get topRatedAnime => 'Anime được xếp hạng cao nhất';

  @override
  String get mostFollowedAnime => 'Anime được theo dõi nhiều nhất';

  @override
  String get comickProfile => 'Hồ sơ truyện tranh';

  @override
  String get refreshFromComick => 'Làm mới từ Comick';

  @override
  String get mangaBakaProfile => 'Hồ sơ MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Làm mới từ MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Đăng nhập vào MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates hồ sơ';

  @override
  String get mangaUpdatesAnimeStart => 'Bắt đầu chuyển thể anime';

  @override
  String get mangaUpdatesAnimeEnd => 'Việc chuyển thể anime kết thúc';

  @override
  String get refreshFromMangaUpdates => 'Làm mới từ MangaUpdates';

  @override
  String get usernameOnly => 'Tên người dùng';

  @override
  String get releases => 'phát hành';

  @override
  String get artistsLabel => 'Họa sĩ';

  @override
  String get authorsLabel => 'Tác giả';

  @override
  String get publishersLabel => 'Nhà xuất bản';

  @override
  String get licensedLabel => 'Có bản quyền';

  @override
  String get contentRatingLabel => 'Xếp hạng nội dung';

  @override
  String get yesLabel => 'Có';

  @override
  String get noLabel => 'Không';

  @override
  String get ratingSteps => 'Bước chấm điểm';

  @override
  String get hideNsfw => 'Ẩn NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Ẩn các nguồn được đánh dấu 18+ khỏi nguồn cấp dữ liệu và bộ chọn nguồn. Họ vẫn cài đặt.';

  @override
  String get hideNsfwDesc =>
      'Không hiện truyện 18+ trong bảng tin và tìm kiếm, và để các mục 18+ của bạn trong Media ẩn.';

  @override
  String get kitsuAccountOptions => 'Tùy chọn tài khoản Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Tùy chọn tài khoản MangaBaka';

  @override
  String get comickAccountOptions => 'Tùy chọn tài khoản Comick';

  @override
  String get comickClientId => 'ID khách hàng Comick';

  @override
  String get comickClientIdDesc =>
      'ID khách hàng tùy chỉnh đã đăng ký trên Comick.dev';

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
  String get couldNotUpdateKitsuSettings => 'Không cập nhật được cài đặt Kitsu';

  @override
  String get titleCanonical => 'Gốc';

  @override
  String get titleRomanized => 'La-tinh hóa';

  @override
  String get titleLocalized => 'Bản địa hóa';

  @override
  String get ratingSystem => 'Hệ thống chấm điểm';

  @override
  String get ratingSimple => 'Đơn giản (3 mặt cười)';

  @override
  String get ratingRegular => 'Thường (5 sao)';

  @override
  String get ratingAdvanced => 'Nâng cao (10 điểm)';

  @override
  String get contentFilter => 'Bộ lọc nội dung';

  @override
  String get contentSfw => 'Chỉ nội dung an toàn';

  @override
  String get contentSometimes => 'Nội dung 18+ khi tìm kiếm';

  @override
  String get contentEverywhere => 'Nội dung 18+ ở mọi nơi';

  @override
  String get shareToGlobal => 'Chia sẻ lên bảng tin chung';

  @override
  String get shareToGlobalDesc =>
      'Cho hoạt động của bạn xuất hiện trên bảng tin chung của Kitsu.';

  @override
  String get memberSince => 'Thành viên từ';

  @override
  String get location => 'Vị trí';

  @override
  String get accountType => 'Loại tài khoản';

  @override
  String get accountSupporter => 'Người ủng hộ';

  @override
  String get accountFree => 'Miễn phí';

  @override
  String get accountDetails => 'Chi tiết tài khoản';

  @override
  String get refreshFromKitsu => 'Làm mới từ Kitsu';

  @override
  String get simklReadOnly => 'Simkl chỉ cấp quyền chỉ đọc';

  @override
  String get traktReadOnly => 'Trakt được cấp quyền truy cập chỉ đọc';

  @override
  String get incognitoEditsBlocked => 'Ẩn danh: không thể sửa danh sách';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Ẩn danh: không lưu tiến độ';

  @override
  String progressSet(int progress) {
    return 'Đã đặt tiến độ thành $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Đã xóa $title khỏi danh sách của bạn';
  }

  @override
  String get following => 'Đang theo dõi';

  @override
  String get followsMutual => 'lẫn nhau';

  @override
  String get followsNotMutual => 'Không lẫn nhau';

  @override
  String get homeSections => 'Các mục trang chủ';

  @override
  String get homeSectionsHint =>
      'Kéo để sắp xếp lại. Mục bị ẩn sẽ không được tải.';

  @override
  String get customListDeleteFailed => 'Không xóa được danh sách tùy chỉnh';

  @override
  String get customListsSaveFailed => 'Không lưu được danh sách tùy chỉnh';

  @override
  String get customListsSaved => 'Đã lưu danh sách tùy chỉnh';

  @override
  String get listName => 'Tên danh sách';

  @override
  String get addList => 'Thêm danh sách';

  @override
  String get voiceActors => 'Diễn viên lồng tiếng';

  @override
  String voiceActorsIn(String name) {
    return 'Seiyuu · $name';
  }

  @override
  String get animeAppearances => 'Xuất hiện trong anime';

  @override
  String get mangaAppearances => 'Xuất hiện trong manga';

  @override
  String get voicedCharacters => 'Nhân vật đã lồng tiếng';

  @override
  String get animeCredits => 'Tham gia anime';

  @override
  String get mangaCredits => 'Tham gia manga';

  @override
  String get mainProductions => 'Tác phẩm chính';

  @override
  String get otherWorks => 'Tác phẩm khác';

  @override
  String get prequelSequel => 'Phần trước & Phần sau';

  @override
  String get prequel => 'phần tiền truyện';

  @override
  String get sequel => 'Phần tiếp theo';

  @override
  String get previousSeason => 'Mùa trước';

  @override
  String get thisSeason => 'Mùa này';

  @override
  String get nextSeason => 'Mùa sau';

  @override
  String get voiceRoles => 'Vai lồng tiếng';

  @override
  String get staffPositions => 'Vị trí staff';

  @override
  String get mangaWorks => 'Tác phẩm manga';

  @override
  String get malProfile => 'Hồ sơ MyAnimeList';

  @override
  String get refreshFromMal => 'Làm mới từ MyAnimeList';

  @override
  String get repullProfileCounts => 'Tải lại hồ sơ và số liệu của bạn';

  @override
  String get refreshed => 'Đã làm mới';

  @override
  String get simklProfile => 'Hồ sơ Simkl';

  @override
  String get traktProfile => 'Hồ sơ Trakt';

  @override
  String get refreshFromSimkl => 'Làm mới từ Simkl';

  @override
  String get refreshFromTrakt => 'Làm mới từ Trakt';

  @override
  String get repullProfileLibrary => 'Tải lại hồ sơ và thư viện của bạn';

  @override
  String get simklSignInToSearch => 'Đăng nhập Simkl để tìm kiếm';

  @override
  String get dropRate => 'Tỉ lệ bỏ dở';

  @override
  String get simklAttribution =>
      'Dữ liệu và ảnh do Simkl cung cấp. Xem trên Simkl';

  @override
  String get traktAttribution =>
      'Dữ liệu và tác phẩm nghệ thuật được cung cấp bởi Trakt. Xem trên Trakt';

  @override
  String get listsLiked => 'Đã thích';

  @override
  String get listsYours => 'của bạn';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Thành viên VIP của Trakt';

  @override
  String get onHold => 'Tạm dừng';

  @override
  String get scoredBy => 'Số người chấm';

  @override
  String get planToWatch => 'Dự định xem';

  @override
  String get planToRead => 'Dự định đọc';

  @override
  String get timesRewatched => 'Số lần xem lại';

  @override
  String get timesReread => 'Số lần đọc lại';

  @override
  String get comments => 'Bình luận';

  @override
  String get moviesAndSeries => 'Phim & Series';

  @override
  String get simklMoviesOnly => 'Chỉ phim và loạt phim';

  @override
  String get simklMoviesOnlyDesc =>
      'Thay thế tab Anime: Đầu tiên là Phim, sau đó là Hiển thị bằng một vài hàng anime';

  @override
  String get trackingOnly => 'Chỉ theo dõi';

  @override
  String get signedIn => 'Đã đăng nhập';

  @override
  String get searchLanguage => 'Ngôn ngữ tìm kiếm';

  @override
  String get savedToList => 'Đã lưu vào danh sách của bạn';

  @override
  String get removedFromYourList => 'Đã xóa khỏi danh sách của bạn';

  @override
  String get retry => 'Thử lại';

  @override
  String get synopsis => 'Nội dung';

  @override
  String get details => 'Chi tiết';

  @override
  String get addToList => 'Thêm vào danh sách';

  @override
  String get trailer => 'Đoạn giới thiệu';

  @override
  String get trailerQuality => 'Chất lượng trailer';

  @override
  String get titleCopied => 'Đã sao chép tiêu đề';

  @override
  String get linkCopied => 'Đã sao chép link';

  @override
  String get watchTrailer => 'Xem trailer';

  @override
  String get copyTitle => 'Sao chép tiêu đề';

  @override
  String get detailStale =>
      'Không thể truy cập AniList. Đây là thông tin đã lưu và có thể đã lỗi thời.';

  @override
  String get copyLink => 'Sao chép link';

  @override
  String get openInBrowser => 'Mở trong trình duyệt';

  @override
  String viewOnSource(String source) {
    return 'Xem trên $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Tập $ep lên sóng sau $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Tập tiếp theo sau $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Chương $chapter dự kiến ra sau khoảng $time';
  }

  @override
  String get logPathCopied => 'Đã sao chép đường dẫn file log vào clipboard';

  @override
  String get animeSource => 'Nguồn anime';

  @override
  String get mangaSource => 'Nguồn manga';

  @override
  String get popular => 'Phổ biến';

  @override
  String get allCustomLists => 'Tất cả danh sách tùy chỉnh';

  @override
  String get simklTitleLanguage => 'Ngôn ngữ tiêu đề anime';

  @override
  String get titleLanguageEnglish => 'Tiếng Anh';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Xu hướng';

  @override
  String get simklListsMostLiked => 'Thích nhất';

  @override
  String get simklListsMostFollowed => 'Được theo dõi nhiều nhất';

  @override
  String get simklListsOfficial => 'chính thức';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danh hiệu',
      one: '1 danh hiệu',
    );
    return '$_temp0';
  }

  @override
  String get people => 'mọi người';

  @override
  String get mostComments => 'Bình luận nhiều nhất';

  @override
  String get alphabetical => 'theo bảng chữ cái';

  @override
  String get latest => 'Mới nhất';

  @override
  String get saved => 'Đã lưu';

  @override
  String get nothingMatched => 'Không có kết quả';

  @override
  String get nothingSavedFromSource => 'Chưa lưu gì từ nguồn này';

  @override
  String get sourceReturnedNothing => 'Nguồn này không trả về gì';

  @override
  String get checkConnectionOrSource => 'Kiểm tra kết nối hoặc thử nguồn khác.';

  @override
  String get tryDifferentSearch => 'Thử từ khóa khác.';

  @override
  String get savedTitlesAppearHere =>
      'Các tựa bạn thêm vào danh sách sẽ hiện ở đây.';

  @override
  String get tryOtherFeed => 'Thử bảng tin khác hoặc tìm kiếm.';

  @override
  String searchSource(String source) {
    return 'Tìm trong $source';
  }

  @override
  String get animeExtensions => 'Extension anime';

  @override
  String get mangaExtensions => 'Extension manga';

  @override
  String get nothingHereYet => 'Chưa có gì ở đây';

  @override
  String get savedOnDeviceUntilLogin =>
      'Mọi thứ bên dưới được lưu trên thiết bị này cho đến khi bạn đổi.';

  @override
  String get yourProfile => 'Hồ sơ của bạn';

  @override
  String get activity => 'Hoạt động';

  @override
  String get extensions => 'Extension';

  @override
  String get logOut => 'Đăng xuất';

  @override
  String get logIn => 'Đăng nhập';

  @override
  String get logOutConfirm => 'Bạn chắc chắn muốn đăng xuất chứ?';

  @override
  String get incognitoMode => 'Chế độ ẩn danh';

  @override
  String get alsoBlockListEdits => 'Chặn luôn việc sửa danh sách';

  @override
  String get offlineMode => 'Chế độ ngoại tuyến';

  @override
  String get switchService => 'Đổi dịch vụ';

  @override
  String logOutOf(String name) {
    return 'Đăng xuất khỏi $name';
  }

  @override
  String get loggedIn => 'Đã đăng nhập';

  @override
  String get notifications => 'Thông báo';

  @override
  String get nothingNew => 'Không có gì mới';

  @override
  String get thisWeek => 'Tuần này';

  @override
  String get listOnly => 'Chỉ trong danh sách';

  @override
  String get notInList => 'Không có trong danh sách';

  @override
  String get filter => 'Lọc';

  @override
  String get searchResults => 'Kết quả tìm kiếm';

  @override
  String get recentSearches => 'Tìm kiếm gần đây';

  @override
  String get searchOrSetFilter => 'Tìm kiếm hoặc đặt bộ lọc';

  @override
  String get filters => 'Bộ lọc';

  @override
  String get showLess => 'Thu gọn';

  @override
  String get showAll => 'Hiện tất cả';

  @override
  String get apply => 'Áp dụng';

  @override
  String get preview => 'Xem trước';

  @override
  String get preset => 'Mẫu';

  @override
  String get cardNormal => 'Thường';

  @override
  String get cardOnCard => 'Trên thẻ';

  @override
  String get cardInCard => 'Trong thẻ';

  @override
  String get size => 'Kích thước';

  @override
  String get cardWidth => 'Độ rộng thẻ';

  @override
  String get compact => 'Gọn';

  @override
  String get coverAndTitleOnly => 'Chỉ ảnh bìa và tiêu đề';

  @override
  String get titleLines => 'Số dòng tiêu đề';

  @override
  String get shape => 'Hình dạng';

  @override
  String get posterShape => 'Hình dạng poster';

  @override
  String get cornerRadius => 'Bo góc';

  @override
  String get off => 'Tắt';

  @override
  String get topLeft => 'Trên trái';

  @override
  String get topRight => 'Trên phải';

  @override
  String get bottomLeft => 'Dưới trái';

  @override
  String get bottomRight => 'Dưới phải';

  @override
  String get overlays => 'Lớp phủ';

  @override
  String get progressCount => 'Tiến độ / số lượng';

  @override
  String get pill => 'Viên thuốc';

  @override
  String get bar => 'Thanh';

  @override
  String get outside => 'Bên ngoài';

  @override
  String get scoreBadge => 'Huy hiệu điểm';

  @override
  String get airingDot => 'Chấm đang chiếu';

  @override
  String get updateAvailable => 'Có bản cập nhật';

  @override
  String get notInstalled => 'Chưa cài';

  @override
  String get done => 'Xong';

  @override
  String get searchOrEnterUrl => 'Tìm kiếm hoặc nhập URL';

  @override
  String get refresh => 'Làm mới';

  @override
  String get animePlanetRank => 'Xếp hạng';

  @override
  String get animePlanetMagazine => 'tạp chí';

  @override
  String get animePlanetRefreshLists => 'Làm mới danh sách của bạn';

  @override
  String get animePlanetRefreshListsDesc =>
      'Đọc lại danh sách Anime-Planet của bạn';

  @override
  String get animePlanetLocalNote =>
      'Đăng nhập để lưu các thay đổi vào tài khoản Anime-Planet của bạn. Cho đến lúc đó họ vẫn ở trên thiết bị này';

  @override
  String get share => 'Chia sẻ';

  @override
  String get characters => 'Nhân vật';

  @override
  String get staff => 'nhân viên';

  @override
  String get readMore => 'Xem thêm';

  @override
  String get couldNotLoadList => 'Không tải được danh sách';

  @override
  String get logInToFavourite => 'Đăng nhập để thêm vào yêu thích';

  @override
  String get alsoKnownAs => 'Còn được gọi là';

  @override
  String get hideSpoilerNames => 'Ẩn tên có spoiler';

  @override
  String get showSpoilerNames => 'Hiện tên có spoiler';

  @override
  String get favourited => 'Đã yêu thích';

  @override
  String get favourite => 'Yêu thích';

  @override
  String get couldNotOpenTitle => 'Không mở được tựa này';

  @override
  String get nobodyHereYet => 'Chưa có ai ở đây';

  @override
  String get noMatches => 'Không có kết quả';

  @override
  String get gridView => 'Dạng lưới';

  @override
  String get fullWidth => 'Toàn chiều rộng';

  @override
  String get userNotFound => 'Không tìm thấy người dùng';

  @override
  String get couldNotUpdateFollow => 'Không cập nhật được theo dõi';

  @override
  String followedUser(String name) {
    return 'Đã theo dõi $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Đã bỏ theo dõi $name';
  }

  @override
  String get messages => 'Tin nhắn';

  @override
  String get logInToSeeMessages => 'Đăng nhập để xem tin nhắn của bạn';

  @override
  String get editActivity => 'Sửa hoạt động';

  @override
  String get newActivity => 'Hoạt động mới';

  @override
  String get editMessage => 'Sửa tin nhắn';

  @override
  String get writeMessage => 'Viết tin nhắn';

  @override
  String get editReply => 'Sửa phản hồi';

  @override
  String get posted => 'Đã đăng';

  @override
  String get couldNotPost => 'Không đăng được';

  @override
  String get nothingToPreview => 'Không có gì để xem trước';

  @override
  String get writeSomethingHint =>
      'Viết gì đó… ở đây dùng được markdown của AniList';

  @override
  String get privateMessage => 'Tin nhắn riêng';

  @override
  String get post => 'Đăng';

  @override
  String get nothingHere => 'Chưa có gì ở đây';

  @override
  String get noAnimeProgress => 'Chưa có tiến độ anime';

  @override
  String get noMangaProgress => 'Chưa có tiến độ manga';

  @override
  String get noMessages => 'Không có tin nhắn';

  @override
  String get writeMessageHint => 'Viết tin nhắn…';

  @override
  String get shareSomethingHint => 'Chia sẻ gì đó…';

  @override
  String get all => 'Tất cả';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'truyện tranh';

  @override
  String get count => 'Số lượng';

  @override
  String get hoursWatched => 'Giờ đã xem';

  @override
  String get chaptersRead => 'Chương đã đọc';

  @override
  String get meanScore => 'Điểm trung bình';

  @override
  String get noStatsYet => 'Chưa có thống kê';

  @override
  String get totalEntries => 'Tổng số mục';

  @override
  String get episodesWatched => 'Tập đã xem';

  @override
  String get daysWatched => 'Ngày đã xem';

  @override
  String get volumesRead => 'Quyển đã đọc';

  @override
  String get standardDeviation => 'Độ lệch chuẩn';

  @override
  String get showMore => 'Xem thêm';

  @override
  String get followsYou => 'Theo dõi bạn';

  @override
  String get nobodyYet => 'Chưa có ai';

  @override
  String get logInToLike => 'Đăng nhập để thích';

  @override
  String get failedToLikeActivity => 'Không thích được hoạt động';

  @override
  String get deleteActivityConfirm => 'Xóa hoạt động?';

  @override
  String get deletedActivity => 'Đã xóa hoạt động';

  @override
  String get failedToDeleteActivity => 'Không xóa được hoạt động';

  @override
  String get subscribed => 'Đã đăng ký';

  @override
  String get unsubscribed => 'Đã hủy đăng ký';

  @override
  String get failedToUpdateSubscription => 'Không cập nhật được đăng ký';

  @override
  String get edit => 'Sửa';

  @override
  String get delete => 'Xóa';

  @override
  String get likedBy => 'Được thích bởi';

  @override
  String get follow => 'Theo dõi';

  @override
  String get nameCopied => 'Đã sao chép tên';

  @override
  String get followsEachOther => 'Theo dõi lẫn nhau';

  @override
  String get unfollow => 'Bỏ theo dõi';

  @override
  String get userIdCopied => 'Đã sao chép ID người dùng';

  @override
  String get shareProfile => 'Chia sẻ hồ sơ';

  @override
  String get copyUserId => 'Sao chép ID người dùng';

  @override
  String get failedToDelete => 'Không xóa được';

  @override
  String get failedToLike => 'Không thích được';

  @override
  String get replies => 'Phản hồi';

  @override
  String get reply => 'Trả lời';

  @override
  String get noRepliesYet => 'Chưa có phản hồi';

  @override
  String get favouriteAnime => 'Anime yêu thích';

  @override
  String get favouriteManga => 'Manga yêu thích';

  @override
  String get favouriteCharacters => 'Nhân vật yêu thích';

  @override
  String get favouriteStaff => 'Staff yêu thích';

  @override
  String get favouriteStudios => 'Studio yêu thích';

  @override
  String get noFavouritesYet => 'Chưa có mục yêu thích';

  @override
  String get yourStory => 'Story của bạn';

  @override
  String get copiedToClipboard => 'Đã sao chép vào clipboard';

  @override
  String get justNow => 'Vừa xong';

  @override
  String get openImage => 'Mở ảnh';

  @override
  String get hideSpoiler => 'Ẩn spoiler';

  @override
  String get showSpoiler => 'Hiện spoiler';

  @override
  String get status => 'Trạng thái';

  @override
  String get score => 'Điểm';

  @override
  String get started => 'Bắt đầu';

  @override
  String get completed => 'Hoàn thành';

  @override
  String get private => 'Riêng tư';

  @override
  String get hideFromStatusLists => 'Ẩn khỏi danh sách trạng thái';

  @override
  String get totalRepeats => 'Tổng số lần xem lại';

  @override
  String get other => 'Khác';

  @override
  String get customLists => 'Danh sách tùy chỉnh';

  @override
  String get activeDays => 'Ngày hoạt động';

  @override
  String get longestStreak => 'Chuỗi dài nhất';

  @override
  String get currentStreak => 'Chuỗi hiện tại';

  @override
  String get tapOrHoverDay => 'Chạm hoặc rê vào một ngày';

  @override
  String get less => 'Ít';

  @override
  String get more => 'Nhiều';

  @override
  String epIn(int ep, String time) {
    return 'Tập $ep sau $time';
  }

  @override
  String get sectionLoading => 'Đang tải';

  @override
  String get querySize => 'Cỡ truy vấn';

  @override
  String get querySizeDesc =>
      'Một truy vấn lớn tải mọi hàng (và cả hồ sơ) trong một yêu cầu. Truy vấn tách nhỏ gửi từng yêu cầu nhỏ cho mỗi hàng hoặc mỗi phần hồ sơ: mỗi cái đều nhanh và các phần hiện dần khi có dữ liệu.';

  @override
  String get oneBig => 'Một truy vấn lớn';

  @override
  String get split => 'Tách nhỏ';

  @override
  String get sectionSocial => 'Mạng xã hội';

  @override
  String get systemNotifications => 'Thông báo hệ thống';

  @override
  String get feedLayout => 'Bố cục bảng tin';

  @override
  String sectionsShown(int shown, int total) {
    return 'Hiện $shown/$total — chạm để chọn và sắp xếp';
  }

  @override
  String labelSections(String label) {
    return 'Các mục $label';
  }

  @override
  String get accountOptions => 'Tùy chọn tài khoản';

  @override
  String get anilistAccountOptions => 'Tùy chọn tài khoản AniList';

  @override
  String get sectionPrivacy => 'Riêng tư';

  @override
  String get hidePrivateEntries => 'Ẩn mục riêng tư';

  @override
  String get hidePrivateEntriesDesc =>
      'Không hiện các mục đánh dấu riêng tư trên AniList trong bảng tin';

  @override
  String get anilistExcludeList => 'Ẩn truyện/phim trong list của bạn';

  @override
  String get anilistExcludeListDesc =>
      'Không hiện các tựa đã có trong AniList của bạn ở trang anime và manga';

  @override
  String get anilistProfile => 'Hồ sơ AniList';

  @override
  String get refreshFromAnilist => 'Làm mới từ AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Không cập nhật được cài đặt AniList';

  @override
  String get sectionNames => 'Tên';

  @override
  String get titleLanguage => 'Ngôn ngữ tiêu đề';

  @override
  String get titleLanguageDesc =>
      'Cách viết tiêu đề ở mọi nơi, ví dụ Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Tên staff và nhân vật';

  @override
  String get sectionLists => 'Danh sách';

  @override
  String get scoreFormat => 'Định dạng điểm';

  @override
  String get sortListsBy => 'Sắp xếp danh sách theo';

  @override
  String labelCustomLists(String label) {
    return 'Danh sách tùy chỉnh $label';
  }

  @override
  String customListsCount(int count) {
    return '$count danh sách — chạm để thêm hoặc xóa';
  }

  @override
  String get mergeActivities => 'Gộp hoạt động';

  @override
  String minutesCount(int count) {
    return '$count phút';
  }

  @override
  String get timezone => 'Múi giờ';

  @override
  String get notSet => 'Chưa đặt';

  @override
  String get airingNotifications => 'Thông báo lên sóng';

  @override
  String get airingNotificationsDesc =>
      'Nhận thông báo khi một tập của bộ bạn theo dõi lên sóng';

  @override
  String get displayAdultContent => 'Hiện nội dung 18+';

  @override
  String get displayAdultContentDesc =>
      'Gồm cả tựa 18+ khi duyệt, tìm kiếm và bảng tin';

  @override
  String get restrictMessages => 'Chỉ nhận tin nhắn từ người bạn theo dõi';

  @override
  String get restrictMessagesDesc =>
      'Chỉ người bạn theo dõi mới nhắn được cho bạn';

  @override
  String get sectionServices => 'Dịch vụ';

  @override
  String get novel => 'Tiểu thuyết';

  @override
  String labelService(String label) {
    return 'Dịch vụ $label';
  }

  @override
  String nameSettings(String name) {
    return 'Cài đặt $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Tùy chọn từ extension bridge của $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name không khởi động được: $error';
  }

  @override
  String get importLists => 'Nhập danh sách';

  @override
  String get importListsDesc =>
      'Từ bản sao lưu Aniyomi, Mihon / Tachiyomi hoặc Kotatsu';

  @override
  String get exportLists => 'Xuất danh sách';

  @override
  String get exportListsDesc => 'Sang bản sao lưu Aniyomi, Mihon hoặc Kotatsu';

  @override
  String get sectionBrowse => 'Duyệt';

  @override
  String get readingTab => 'Tab đọc';

  @override
  String get readingTabDesc => 'Tab thứ ba hiện extension nào';

  @override
  String get firstTab => 'Tab đầu tiên';

  @override
  String get firstTabDesc =>
      'Tab đầu tiên hiển thị những phần mở rộng nào. Chọn manga ở đây và tiểu thuyết trên tab đọc để thả anime ra khỏi thanh';

  @override
  String get novelExtensions => 'Tiện ích mở rộng mới lạ';

  @override
  String get defaultFeed => 'Bảng tin mặc định';

  @override
  String get defaultFeedDesc => 'Danh sách nào mở khi vào một nguồn';

  @override
  String noServiceSupports(String type) {
    return 'Không có dịch vụ nào hỗ trợ $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · đang tải $loaded/$installed nguồn';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Chưa có dịch vụ extension nào ở đây hỗ trợ $type.';
  }

  @override
  String get loadDataFrom => 'Tải dữ liệu từ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Chưa cài nguồn $type nào.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Chưa cài extension cho $name';
  }

  @override
  String get thisSource => 'nguồn này';

  @override
  String failedToAddRepository(String error) {
    return 'Không thêm được kho: $error';
  }

  @override
  String installedType(String type) {
    return '$type đã cài';
  }

  @override
  String availableType(String type) {
    return '$type có sẵn';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Chưa cài extension $type nào';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Không có extension $type nào';
  }

  @override
  String get nothingToShowYet => 'Chưa có gì để hiện';

  @override
  String get addTitlesHint =>
      'Thêm vài tựa vào danh sách và chúng sẽ hiện ở đây.';

  @override
  String get couldntLoad => 'Không tải được';

  @override
  String get progressStyleHint =>
      'Viên thuốc và thanh phủ lên poster; \"bên ngoài\" hiện cùng số lượng đó dưới dạng chữ thường — chọn một thôi nhé.';

  @override
  String get nixManagedUpdate =>
      'Bản build này do Nix quản lý — hãy chạy \"nix flake update\" trên flake của bạn rồi build lại thay vì cập nhật từ đây';

  @override
  String autoUpdateFailed(String error) {
    return 'Tự động cập nhật thất bại ($error) — đang mở trang tải xuống';
  }

  @override
  String get unknownPreference => 'Tùy chọn không xác định';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Không hỗ trợ loại tùy chọn $type';
  }

  @override
  String get notYetReleased => 'Chưa phát hành';

  @override
  String get notStarted => 'Chưa bắt đầu';

  @override
  String get country => 'Quốc gia';

  @override
  String get sort => 'Sắp xếp';

  @override
  String get chooseBackupDialog =>
      'Chọn bản sao lưu Aniyomi, Mihon hoặc Kotatsu';

  @override
  String get importListsHint =>
      'Mang thư viện từ Aniyomi, Mihon / Tachiyomi hoặc Kotatsu sang. Tựa, ảnh bìa, tiến độ và danh mục đều được giữ.';

  @override
  String get chooseBackupFile => 'Chọn file sao lưu';

  @override
  String importAnimeCount(int count) {
    return 'Nhập $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Nhập $count manga';
  }

  @override
  String get mergeWithExisting => 'Gộp với danh sách hiện có';

  @override
  String get mergeWithExistingDesc =>
      'Giữ những gì bạn đã có; tắt thì thay thế các tựa trùng';

  @override
  String get chooseAnother => 'Chọn file khác';

  @override
  String get import => 'Nhập';

  @override
  String animeCount(int count) {
    return '$count hoạt hình';
  }

  @override
  String mangaCount(int count) {
    return '$count truyện tranh';
  }

  @override
  String get chooseSaveLocation => 'Chọn nơi lưu bản sao lưu';

  @override
  String savedPath(String path) {
    return 'Đã lưu $path';
  }

  @override
  String exportFailed(String error) {
    return 'Xuất thất bại: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Chưa có gì trong danh sách cục bộ của bạn.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Xuất $anime anime và $manga manga từ danh sách cục bộ của bạn. Kotatsu chỉ hỗ trợ manga.';
  }

  @override
  String get saveToFolder => 'Lưu vào thư mục';

  @override
  String get formatAnimeManga => 'Anime và manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Chỉ manga · .tachibk';

  @override
  String get formatMangaZip => 'Chỉ manga · .zip';

  @override
  String get genres => 'Thể loại';

  @override
  String get relations => 'Liên quan';

  @override
  String get recommendations => 'Đề xuất';

  @override
  String get openings => 'Opening';

  @override
  String get endings => 'Ending';

  @override
  String get background => 'Bối cảnh';

  @override
  String get links => 'Liên kết';

  @override
  String get rank => 'Xếp hạng';

  @override
  String get members => 'Thành viên';

  @override
  String get favorites => 'Yêu thích';

  @override
  String get episodes => 'Tập';

  @override
  String get chapters => 'Chương';

  @override
  String get volumes => 'Quyển';

  @override
  String get format => 'Định dạng';

  @override
  String get source => 'Nguồn gốc';

  @override
  String get duration => 'Thời lượng';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes phút/tập';
  }

  @override
  String get rating => 'Phân loại';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Tạp chí đăng';

  @override
  String get season => 'Mùa';

  @override
  String get year => 'Năm';

  @override
  String get filterAny => 'bất kỳ';

  @override
  String get broadcast => 'Phát sóng';

  @override
  String get aired => 'Đã chiếu';

  @override
  String get published => 'Xuất bản';

  @override
  String get popularity => 'Độ phổ biến';

  @override
  String get community => 'Cộng đồng';

  @override
  String get watching => 'Đang xem';

  @override
  String get reading => 'Đang đọc';

  @override
  String get dropped => 'Bỏ dở';

  @override
  String get unfinished => 'Chưa hoàn thành';

  @override
  String get planned => 'Dự định';

  @override
  String get trailers => 'Trailer';

  @override
  String get ratings => 'Đánh giá';

  @override
  String get originalTitle => 'Gốc';

  @override
  String get titleLabel => 'Tiêu đề';

  @override
  String get votes => 'Lượt bình chọn';

  @override
  String get watchedStat => 'Đã xem';

  @override
  String get runtime => 'Thời lượng';

  @override
  String get director => 'Đạo diễn';

  @override
  String get network => 'Kênh';

  @override
  String get certification => 'Phân loại độ tuổi';

  @override
  String get airs => 'Lên sóng';

  @override
  String get budget => 'Kinh phí';

  @override
  String get revenue => 'Doanh thu';

  @override
  String get released => 'Ngày ra mắt';

  @override
  String get tags => 'Tag';

  @override
  String get author => 'Tác giả';

  @override
  String get born => 'Sinh';

  @override
  String get died => 'chết';

  @override
  String get birthplace => 'Nơi sinh';

  @override
  String get department => 'Sở';

  @override
  String get website => 'Trang web';

  @override
  String get established => 'Thành lập';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel';

  @override
  String get thisMonth => 'Tháng này';

  @override
  String get movies => 'Phim';

  @override
  String get shows => 'Series';

  @override
  String get moviesWatched => 'Phim đã xem';

  @override
  String get showsWatched => 'Chương trình đã xem';

  @override
  String get moviesCollected => 'Phim được sưu tầm';

  @override
  String get showsCollected => 'Chương trình đã sưu tầm';

  @override
  String get rewatching => 'Đang xem lại';

  @override
  String get rereading => 'Đang đọc lại';

  @override
  String get watchedStatus => 'Đã xem';

  @override
  String get planning => 'Dự định';

  @override
  String get paused => 'Tạm dừng';

  @override
  String get watch => 'Xem';

  @override
  String get read => 'Đọc';

  @override
  String get finished => 'Hoàn thành';

  @override
  String get releasing => 'Đang phát hành';

  @override
  String get cancelled => 'Đã hủy';

  @override
  String get hiatus => 'Tạm ngưng';

  @override
  String get remove => 'Xóa';

  @override
  String syncToService(String service) {
    return 'Đồng bộ sang $service';
  }

  @override
  String syncedToService(String service) {
    return 'Đã đồng bộ sang $service';
  }

  @override
  String get latestReleases => 'Mới phát hành';

  @override
  String get topRated => 'Điểm cao nhất';

  @override
  String localSection(String title) {
    return '$title · Cục bộ';
  }

  @override
  String get localEntryNote =>
      'Tựa này chỉ có trong danh sách cục bộ trên thiết bị này. Việc sửa bị tắt ở đây vì có thể xung đột với danh sách tài khoản của bạn; bạn vẫn xóa được nó.';

  @override
  String get cardPresetPoster => 'áp phích';

  @override
  String get cardPresetCard => 'Thẻ';

  @override
  String get cardPresetCozy => 'Ấm cúng';

  @override
  String get sortTopRated => 'Điểm cao nhất';

  @override
  String get sortMostPopular => 'Phổ biến nhất';

  @override
  String get sortTrending => 'Thịnh hành';

  @override
  String get sortNewest => 'Mới nhất';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Được yêu thích nhất';

  @override
  String get anyCountry => 'Mọi quốc gia';

  @override
  String get orderScore => 'Điểm';

  @override
  String get orderTitle => 'Tiêu đề';

  @override
  String get orderLastUpdated => 'Cập nhật gần nhất';

  @override
  String get orderLastAdded => 'Thêm gần nhất';

  @override
  String get never => 'Không bao giờ';

  @override
  String get always => 'Luôn luôn';

  @override
  String get scorePoint100 => '100 điểm';

  @override
  String get scorePoint10Decimal => '10 điểm thập phân';

  @override
  String get scorePoint10 => '10 điểm';

  @override
  String get scorePoint5 => '5 sao';

  @override
  String get scorePoint3 => '3 mặt cười';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giờ',
      one: '1 giờ',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày',
      one: '1 ngày',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tuần',
      one: '1 tuần',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Tiếp tục';

  @override
  String get resumeSourceMissing => 'Cài nguồn của tựa này để tiếp tục';

  @override
  String get resumeRemove => 'Xóa khỏi mục tiếp tục';

  @override
  String resumeAt(String time) {
    return 'Còn $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Trang $page/$total';
  }

  @override
  String get continueWatching => 'Xem tiếp';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'Đọc tiếp';

  @override
  String get favouriteAnimeSection => 'Anime yêu thích';

  @override
  String get favouriteMangaSection => 'Manga yêu thích';

  @override
  String get plannedAnime => 'Anime dự định';

  @override
  String get plannedManga => 'Manga dự định';

  @override
  String get completedAnime => 'Anime đã hoàn thành';

  @override
  String get completedManga => 'Manga đã hoàn thành';

  @override
  String get hiddenMedia => 'Media ẩn';

  @override
  String get recentUpdates => 'Cập nhật gần đây';

  @override
  String get trendingNow => 'Đang thịnh hành';

  @override
  String get popularThisSeason => 'Phổ biến mùa này';

  @override
  String get trendingMovies => 'Phim thịnh hành';

  @override
  String get topRatedSeries => 'Series điểm cao nhất';

  @override
  String get mostFavouriteSeries => 'Series được yêu thích nhất';

  @override
  String get popularAnime => 'Anime phổ biến';

  @override
  String get trendingManhwa => 'Manhwa thịnh hành';

  @override
  String get trendingNovels => 'Novel thịnh hành';

  @override
  String get topRatedManga => 'Manga điểm cao nhất';

  @override
  String get mostFavouriteManga => 'Manga được yêu thích nhất';

  @override
  String get popularManga => 'Manga phổ biến';

  @override
  String get topMovies => 'Top phim';

  @override
  String get topOna => 'ONA hàng đầu';

  @override
  String get topOva => 'OVA hàng đầu';

  @override
  String get mostPopular => 'Phổ biến nhất';

  @override
  String get mostFavourite => 'Được yêu thích nhất';

  @override
  String get upcoming => 'Sắp tới';

  @override
  String get topManga => 'Top manga';

  @override
  String get topManhwa => 'Top manhwa';

  @override
  String get topManhua => 'Top manhua';

  @override
  String get topNovels => 'Top novel';

  @override
  String get topOneShots => 'Top one-shot';

  @override
  String get trendingMoviesToday => 'Phim thịnh hành hôm nay';

  @override
  String get trendingShowsToday => 'Series thịnh hành hôm nay';

  @override
  String get trendingMoviesWeek => 'Phim thịnh hành tuần này';

  @override
  String get trendingShowsWeek => 'Series thịnh hành tuần này';

  @override
  String get mostWatchedMoviesMonth => 'Phim được xem nhiều nhất tháng này';

  @override
  String get mostWatchedShowsMonth => 'Series được xem nhiều nhất tháng này';

  @override
  String get trendingThisWeek => 'Thịnh hành tuần này';

  @override
  String get mostWatchedThisMonth => 'Được xem nhiều nhất tháng này';

  @override
  String get repoLinksAdded => 'Đã thêm link kho thành công!';

  @override
  String repoLinkConfirm(String url) {
    return 'Thêm kho lưu trữ này?\n\n$url\n\nChỉ thêm kho lưu trữ từ các nguồn bạn tin cậy.';
  }

  @override
  String get errorGettingAnilistData => 'Lỗi khi lấy dữ liệu từ AniList.';

  @override
  String get navInfo => 'THÔNG TIN';

  @override
  String get navComments => 'BÌNH LUẬN';

  @override
  String get playerNotAvailable => 'Trình phát chưa khả dụng';

  @override
  String deepLinkInitialError(String error) {
    return 'Lỗi khi lấy deep link ban đầu: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Lỗi khi mở link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Không mở được link này: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Lỗi khi mở link: $error';
  }

  @override
  String get forReleasingTitles => 'dành cho các tựa đang phát hành';

  @override
  String get progress => 'Tiến độ';

  @override
  String get notes => 'Ghi chú';

  @override
  String serviceNotFound(String id) {
    return 'Không tìm thấy dịch vụ \"$id\"';
  }

  @override
  String get glassEffectEnabled => 'Đã bật hiệu ứng kính';

  @override
  String get glassEffectDisabled => 'Đã tắt hiệu ứng kính';

  @override
  String get materialYouEnabled => 'Đã bật Material You';

  @override
  String get materialYouDisabled => 'Đã tắt Material You';

  @override
  String get darkModeEnabled => 'Đã bật chế độ tối';

  @override
  String get darkModeDisabled => 'Đã tắt chế độ tối';

  @override
  String get animeList => 'Danh sách anime';

  @override
  String get mangaList => 'Danh sách manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Danh sách anime của $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Danh sách manga của $owner';
  }

  @override
  String get loadingList => 'Đang tải danh sách';

  @override
  String get earlier => 'Trước đó';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày trước',
      one: '1 ngày trước',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giờ trước',
      one: '1 giờ trước',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phút trước',
      one: '1 phút trước',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count phút trước';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count giờ trước';
  }

  @override
  String daysAgoShort(int count) {
    return '$count ngày trước';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count tuần trước';
  }

  @override
  String get couldntLoadSource => 'Không tải được nguồn này';

  @override
  String get followers => 'Người theo dõi';

  @override
  String couldntLoadTitle(String title) {
    return 'Không tải được $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Không tải được hồ sơ này';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get feed => 'Bảng tin';

  @override
  String get stats => 'Thống kê';

  @override
  String get received => 'Đã nhận';

  @override
  String get sent => 'Đã gửi';

  @override
  String get global => 'Toàn cầu';

  @override
  String get couldntLoadPage => 'Không tải được trang này';

  @override
  String get couldntLoadAllDetails => 'Không tải được toàn bộ chi tiết';

  @override
  String get series => 'loạt';

  @override
  String get studios => 'Studio';

  @override
  String get users => 'Người dùng';

  @override
  String repositoriesTitle(String type) {
    return 'Kho $type';
  }

  @override
  String get repositoryUrl => 'URL kho';

  @override
  String get downloadingRepository => 'Đang tải kho…';

  @override
  String get noRepositories => 'Chưa thêm kho nào';

  @override
  String repoExtensionsCount(String count) {
    return '$count extension';
  }

  @override
  String get searchExtensions => 'Tìm extension...';

  @override
  String deletePluginTitle(String name) {
    return 'Xóa $name?';
  }

  @override
  String get deletePluginMessage => 'Bạn chắc chắn muốn xóa plugin này chứ?';

  @override
  String pluginDeleted(String name) {
    return 'Đã xóa $name';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name không có trong kho đã cấu hình';
  }

  @override
  String get pluginFetchFailed => 'Không lấy được thông tin plugin';

  @override
  String installPluginTitle(String name) {
    return 'Cài $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Dung lượng: $size';
  }

  @override
  String get installedState => 'Đã cài';

  @override
  String updatePluginTitle(String name) {
    return 'Cập nhật $name';
  }

  @override
  String get errorLabel => 'Lỗi:';

  @override
  String get stackTraceDetails => 'Chi tiết (Stack Trace)';

  @override
  String get shareLogFile => 'Chia sẻ file log';

  @override
  String get copyLogs => 'Sao chép log';

  @override
  String noListToEdit(String service) {
    return '$service không có danh sách nào để sửa';
  }

  @override
  String get couldNotReadFile => 'Không đọc được file đó';

  @override
  String importedSummary(int anime, int manga) {
    return 'Đã nhập $anime anime và $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count đã có sẵn';
  }

  @override
  String get airingNow => 'Đang lên sóng';

  @override
  String get topRatedMovies => 'Phim điểm cao nhất';

  @override
  String get koreanDramas => 'Phim Hàn';

  @override
  String get chineseDramas => 'Phim Trung';

  @override
  String get japaneseDramas => 'Phim Nhật';

  @override
  String get thaiDramas => 'Phim Thái';

  @override
  String get turkishDramas => 'Phim Thổ Nhĩ Kỳ';

  @override
  String get miniSeries => 'Phim ngắn tập';

  @override
  String get topRatedShows => 'Series điểm cao nhất';

  @override
  String get recommendedSection => 'Đề xuất';

  @override
  String get syncRow => 'Đồng bộ danh sách';

  @override
  String get syncRowDesc =>
      'Phản chiếu danh sách của một dịch vụ sang các tài khoản khác của bạn';

  @override
  String get syncTitle => 'Đồng bộ';

  @override
  String get syncMainService => 'Dịch vụ chính';

  @override
  String get syncMainServiceDesc =>
      'Danh sách của nó là chuẩn; mọi dịch vụ khác bạn đã đăng nhập sẽ được cập nhật cho khớp';

  @override
  String get syncAuto => 'Tự động đồng bộ';

  @override
  String get syncAutoDesc => 'Tải và đồng bộ ngầm khi mở app và mỗi 30 phút';

  @override
  String get syncAddMissing => 'Thêm các mục còn thiếu';

  @override
  String get syncAddMissingDesc => 'Thêm cả những mục mà dịch vụ kia chưa có';

  @override
  String syncServiceOn(String name) {
    return 'Đồng bộ hóa với $name';
  }

  @override
  String get syncDelete => 'Xóa những gì dịch vụ chính không có';

  @override
  String get syncDeleteDesc =>
      'Xóa các mục khỏi các dịch vụ khác không có trong danh sách chính. Chỉ những mục có thể khớp với tiêu đề mới bị xóa, vì vậy những mục như phim và loạt phim Simkl sẽ được giữ nguyên';

  @override
  String get syncDeleteTitle => 'Xóa mục nhập?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục',
      one: '1 mục',
    );
    return '$_temp0 không có trong danh sách chính của bạn sẽ bị xóa khỏi các dịch vụ khác. Điều này không thể hoàn tác được.';
  }

  @override
  String get syncDeleteAction => 'Xóa';

  @override
  String get syncToDelete => 'Để xóa';

  @override
  String get syncDeletedNote => 'Sẽ bị xóa';

  @override
  String syncWillRemove(int count, String name) {
    return '$count sẽ bị xóa khỏi $name';
  }

  @override
  String get syncOnlyForward => 'Giữ tiến độ cao hơn';

  @override
  String get syncOnlyForwardDesc =>
      'Không hạ tiến độ của dịch vụ đang đi trước';

  @override
  String get animePlanetWontWatch => 'Sẽ không xem';

  @override
  String get animePlanetWontRead => 'Sẽ không đọc';

  @override
  String get animePlanetAlreadyOnList => 'Đã có trong danh sách này';

  @override
  String get animePlanetNewList => 'Tên danh sách mới';

  @override
  String get syncPrivate => 'Mục riêng tư';

  @override
  String get syncPrivateDesc =>
      'Phải làm gì với các mục bạn giữ riêng tư. Một dịch vụ có tùy chọn riêng tư sẽ giúp chúng ở chế độ riêng tư; những người khác sẽ cho họ xem một cách công khai';

  @override
  String get syncPrivateModeAsk => 'Hỏi';

  @override
  String get syncPrivateModeSync => 'Đồng bộ hóa chúng';

  @override
  String get syncPrivateModeSkip => 'Bỏ qua chúng';

  @override
  String get syncPrivateTitle => 'Mục riêng tư';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục là riêng tư',
      one: '1 mục là riêng tư',
    );
    return '$_temp0. Các dịch vụ có tùy chọn riêng tư (AniList, Kitsu, MangaBaka) sẽ ở chế độ riêng tư; các dịch vụ khác không có tùy chọn riêng tư và sẽ hiển thị chúng một cách công khai. Đồng bộ hóa chúng? Câu trả lời của bạn được ghi nhớ; thay đổi nó trong Tùy chọn đồng bộ hóa.';
  }

  @override
  String get syncPrivateInclude => 'Đồng bộ hóa chúng';

  @override
  String get syncPrivateSkip => 'Bỏ qua chúng';

  @override
  String get syncFetch => 'Tải';

  @override
  String get syncFetchAgain => 'Tải lại';

  @override
  String get syncAll => 'Đồng bộ tất cả';

  @override
  String get syncStop => 'Dừng';

  @override
  String get syncResume => 'Tiếp tục';

  @override
  String get syncNothingToSync => 'Dịch vụ này không đồng bộ được cho loại này';

  @override
  String get syncNoTargets => 'Đăng nhập một dịch vụ khác để đồng bộ';

  @override
  String get syncLoadingMap => 'Đang tải ánh xạ ID';

  @override
  String get syncComparing => 'Đang so sánh danh sách';

  @override
  String get syncIntro =>
      'Chọn dịch vụ chính rồi bấm Tải. Mỗi dịch vụ được truy vấn một lần để lấy danh sách của bạn, rồi so với dịch vụ chính.';

  @override
  String get syncStateSynced => 'Đã đồng bộ';

  @override
  String get syncStateOutdated => 'Lệch nhau';

  @override
  String get syncStateMissing => 'Không có trong danh sách';

  @override
  String get syncStateUnmapped => 'Không khớp';

  @override
  String syncPaused(String time) {
    return 'Đang chờ giới hạn yêu cầu, tiếp tục sau $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count chỉ có trên $name, không đụng tới';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done/$total';
  }

  @override
  String get syncNothingHere => 'Không có gì để hiện';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Đã dùng $used/$max yêu cầu trong $window này';
  }

  @override
  String get syncMinute => 'phút';

  @override
  String get syncDay => 'ngày';

  @override
  String get syncNotInList => 'Chưa có trong danh sách';

  @override
  String get syncCleared => 'Đã xóa kế hoạch';

  @override
  String get syncClear => 'Xóa';

  @override
  String get syncOptions => 'Tùy chọn';

  @override
  String get syncShared => 'Dùng chung mục với một mục khác';

  @override
  String syncNotFound(String service) {
    return 'Không tìm thấy trên $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Đồng bộ $service ($count)';
  }

  @override
  String get syncOnEdit => 'Đồng bộ tức thì';

  @override
  String get syncOnEditDesc =>
      'Đẩy ngay mọi cập nhật tiến độ và chỉnh sửa danh sách sang các dịch vụ khác bạn đã đăng nhập';

  @override
  String syncRemoved(String services) {
    return 'Đã xóa khỏi $services';
  }

  @override
  String syncPushed(String services) {
    return 'Đã đồng bộ sang $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Bị giới hạn yêu cầu, thử lại sau chút nhé';

  @override
  String get syncAhead => 'Bên nào đi trước';

  @override
  String get syncAheadDesc =>
      'Hai chiều: với mỗi tựa, mục có tiến độ xa nhất sẽ thắng và được chép sang mọi dịch vụ khác';

  @override
  String syncAheadFrom(String service) {
    return 'Từ $service';
  }

  @override
  String get syncConfirm => 'Xem lại trước khi đồng bộ';

  @override
  String get syncConfirmDesc =>
      'Cho biết \"Đồng bộ tất cả\" sẽ đổi gì và cần bao nhiêu yêu cầu';

  @override
  String get syncPreviewTitle => 'Sẵn sàng đồng bộ';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates cập nhật, $adds cần thêm';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Khoảng $count yêu cầu';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID cần tra cứu trước';
  }

  @override
  String get syncPreviewNothing => 'Không có gì để đổi';

  @override
  String get syncStart => 'Bắt đầu';

  @override
  String get syncRetry => 'Thử lại';

  @override
  String get syncSkip => 'Bỏ qua mục này';

  @override
  String get syncInclude => 'Đưa mục này vào lại';

  @override
  String get syncSkippedLabel => 'Đã bỏ qua';

  @override
  String get syncChanges => 'Khác biệt';

  @override
  String get syncChangeStatus => 'Trạng thái';

  @override
  String get syncChangeProgress => 'Tiến độ';

  @override
  String get syncChangeScore => 'Điểm';

  @override
  String get syncChangeDates => 'Ngày';

  @override
  String get syncChangeRepeat => 'Số lần xem lại';

  @override
  String get syncFailedReason => 'Vì sao thất bại';

  @override
  String get syncSkippedHint =>
      'Mục đã bỏ qua sẽ được để yên, kể cả khi tải lại';

  @override
  String get commentsRules => 'Quy tắc bình luận';

  @override
  String get commentsRulesBody =>
      'VI PHẠM BẤT KỲ QUY TẮC NÀO = BAY RA KHỎI ĐÂY\n\n1. Không phân biệt chủng tộc, kỳ thị hay phát ngôn thù ghét\n2. Không spam hay tự quảng cáo\n3. Tuyệt đối không NSFW\n4. Chỉ dùng tiếng Anh, không ngoại lệ\n5. Không mạo danh, quấy rối hay lăng mạ\n6. Không nội dung bất hợp pháp hay xúc phạm nặng bất kỳ fandom nào\n7. Không xin hay chia sẻ kho hoặc extension\n8. Spoiler chỉ được đăng kèm thẻ spoiler và cảnh báo\n9. Không tình dục hóa hay bình luận không phù hợp về nhân vật chưa thành niên\n10. Nếu thấy sai thì đừng đăng!';

  @override
  String get commentsRulesAccept => 'Mình hiểu rồi';

  @override
  String get commentsSortNewest => 'Mới nhất';

  @override
  String get commentsSortOldest => 'Cũ nhất';

  @override
  String get commentsSortHighest => 'Điểm cao nhất';

  @override
  String get commentsSortLowest => 'Điểm thấp nhất';

  @override
  String commentsEpisodeShort(int number) {
    return 'Tập $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Chương $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Lọc theo tập';

  @override
  String get commentsFilterChapterTitle => 'Lọc theo chương';

  @override
  String get commentsFilterTagTitle => 'Nhập số tập hoặc số chương';

  @override
  String get commentsFilterHint => 'Số';

  @override
  String get commentsFilterApply => 'Lọc';

  @override
  String get commentsFilterClear => 'Hiện tất cả';

  @override
  String get commentsPlaceholder => 'Thêm bình luận…';

  @override
  String commentsReplyingTo(String name) {
    return 'Đang trả lời $name';
  }

  @override
  String get commentsSend => 'Gửi';

  @override
  String get commentsTagButton => 'Gắn thẻ';

  @override
  String commentsTagTitle(String label) {
    return 'Gắn thẻ $label (tùy chọn)';
  }

  @override
  String get commentsTagEpisode => 'tập';

  @override
  String get commentsTagChapter => 'chương';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Số $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Thẻ không được vượt quá tổng số ($total)';
  }

  @override
  String get commentsNoTag => 'Không gắn thẻ';

  @override
  String get commentsSpoiler => 'tiết lộ nội dung';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Tìm GIF';

  @override
  String get commentsGifEmpty => 'Không tìm thấy GIF';

  @override
  String get commentsEmptyText => 'Bình luận không được để trống';

  @override
  String get commentsBannedYou => 'Bạn bị cấm bình luận';

  @override
  String get commentsEdited => 'Đã sửa bình luận';

  @override
  String get commentsDeleted => 'Đã xóa bình luận';

  @override
  String get commentsDeletedPlaceholder => '[đã xóa]';

  @override
  String get commentsReported => 'Đã báo cáo bình luận';

  @override
  String get commentsUserBanned => 'Đã cấm người dùng';

  @override
  String get commentsReport => 'Báo cáo';

  @override
  String get commentsReportAsk => 'Báo cáo bình luận này cho mod?';

  @override
  String get commentsDelete => 'Xóa';

  @override
  String get commentsDeleteAsk =>
      'Bình luận này sẽ bị xóa với tất cả mọi người.';

  @override
  String get commentsBan => 'Cấm';

  @override
  String get commentsBanAsk => 'Cấm người dùng này bình luận?';

  @override
  String get commentsCopy => 'Sao chép';

  @override
  String get commentsViewReply => 'Xem 1 phản hồi';

  @override
  String commentsViewReplies(int count) {
    return 'Xem $count phản hồi';
  }

  @override
  String get commentsHideReplies => 'Ẩn phản hồi';

  @override
  String get commentsLoadMore => 'Tải thêm bình luận';

  @override
  String get commentsEmpty => 'Chưa có bình luận nào. Hãy là người đầu tiên!';

  @override
  String get commentsEmptyFiltered => 'Không có bình luận nào cho bộ lọc này';

  @override
  String get commentsSignIn => 'Đăng nhập AniList để đọc và viết bình luận';

  @override
  String get commentsSignInMessage =>
      'Bình luận dùng chung cho mọi dịch vụ và dùng tài khoản AniList của bạn.';

  @override
  String get commentsUnavailable => 'Không có bình luận cho tựa này';

  @override
  String get commentsUnavailableMessage =>
      'Không khớp được với mục nào trên AniList.';

  @override
  String get commentsDisabled => 'Bình luận đã bị tắt';

  @override
  String get commentsDisabledMessage =>
      'Bạn có thể bật lại trong Cài đặt › Chung.';

  @override
  String get commentsOffline => 'Không tải được bình luận';

  @override
  String get commentsSingleTitle => 'Đang hiện một bình luận';

  @override
  String get commentsShowAll => 'Hiện tất cả bình luận';

  @override
  String get commentsSettingsHeader => 'Bình luận';

  @override
  String get commentsSettingEnabled => 'Bình luận';

  @override
  String get commentsSettingEnabledDesc =>
      'Hiện tab Bình luận trên các tựa và đăng nhập máy chủ bình luận bằng tài khoản AniList của bạn';

  @override
  String get commentsSettingAlerts => 'Thông báo phản hồi';

  @override
  String get commentsSettingAlertsDesc =>
      'Báo cho mình khi có người trả lời bình luận của mình';

  @override
  String get commentsNoticeReplyTitle => 'Có phản hồi bình luận mới';

  @override
  String commentsNoticeReply(String name) {
    return '$name đã trả lời bình luận của bạn';
  }

  @override
  String get commentsNoticeWarningTitle => 'Bạn đã nhận một cảnh cáo';

  @override
  String get commentsNoticeWarning => 'Hãy cân nhắc hơn khi bình luận nhé';

  @override
  String get commentsNoticeUpdateTitle => 'Cập nhật từ Dantotsu';

  @override
  String get barcodeTitle => 'Quét mã vạch';

  @override
  String get barcodeTooltip => 'Tìm manga hoặc novel qua mã vạch';

  @override
  String get barcodeIntro =>
      'Hướng camera vào mã vạch ở bìa sau của tập truyện, hoặc nhập ISBN.';

  @override
  String get barcodeIntroManual =>
      'Nhập ISBN in phía trên mã vạch ở bìa sau của tập truyện.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'ISBN này không hợp lệ';

  @override
  String barcodeNotFound(String isbn) {
    return 'Không tìm thấy sách cho $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Không dùng được camera. Hãy cho phép truy cập camera hoặc nhập ISBN.';

  @override
  String get themesTitle => 'Opening & ending';

  @override
  String get themesPlayVideo => 'Phát video';

  @override
  String get themesPlayAudio => 'Chỉ phát âm thanh';

  @override
  String get themesOpenSite => 'Mở trên AnimeThemes';

  @override
  String get themesCredit => 'Nhạc từ AnimeThemes';

  @override
  String get themesVersions => 'Phiên bản';

  @override
  String get sauceTitle => 'Tìm nguồn';

  @override
  String get sauceIntro =>
      'Tải lên trang manga hoặc một bức art, hoặc dán link, để tìm xem nó đến từ đâu.';

  @override
  String get sauceKeyTitle => 'API key SauceNAO';

  @override
  String get sauceKeyHint => 'Tùy chọn, tăng giới hạn tìm kiếm mỗi ngày';

  @override
  String get sauceKeyDesc => 'Lấy key miễn phí tại saucenao.com/user.php';

  @override
  String get sauceOpen => 'Mở nguồn';

  @override
  String get sauceCredit => 'Tìm ảnh bằng SauceNAO';

  @override
  String get sauceEmpty => 'Không tìm thấy kết quả khớp';

  @override
  String get sauceTooltip => 'Tìm nguồn của một trang manga hoặc bức art';

  @override
  String get trendzTitle => 'Bảng xếp hạng anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Nhân vật nữ';

  @override
  String get trendzMale => 'Nhân vật nam';

  @override
  String get trendzCouple => 'Cặp đôi';

  @override
  String get trendzCredit => 'Bảng xếp hạng hàng tuần của AniTrendz';

  @override
  String get trendzNew => 'MỚI';

  @override
  String get trendzEmpty => 'Bảng xếp hạng trống';

  @override
  String get shareCard => 'Thẻ chia sẻ';

  @override
  String get shareCardList => 'Thẻ chia sẻ danh sách';

  @override
  String get shareCardSaved => 'Đã lưu thẻ';

  @override
  String get shareCardFailed => 'Không tạo được thẻ';

  @override
  String get shareCardListEmpty => 'Danh sách của bạn chưa có gì để chia sẻ';

  @override
  String get shareCardTop => 'Top yêu thích của mình';

  @override
  String themesEpisodes(String eps) {
    return 'Tập $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Khớp $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Tuần $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count lượt bình chọn';
  }

  @override
  String trendzPeak(String rank) {
    return 'Đỉnh #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count tuần trong top 10';
  }

  @override
  String get imageSearchTitle => 'Tìm bằng ảnh';

  @override
  String get imageSearchTooltip => 'Tìm anime từ ảnh chụp màn hình';

  @override
  String get imageSearchIntro =>
      'Chọn ảnh chụp màn hình hoặc dán link ảnh, trace.moe sẽ tìm ra tập và khoảnh khắc nó đến từ đâu.';

  @override
  String get imageSearchPick => 'Chọn ảnh';

  @override
  String get imageSearchLinkHint => 'Dán link ảnh';

  @override
  String get imageSearchGo => 'Tìm kiếm';

  @override
  String get imageSearchEmpty => 'Không tìm thấy kết quả khớp';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Tập $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'lúc $time';
  }

  @override
  String get imageSearchPreview => 'Clip xem trước';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Khớp $percent%';
  }

  @override
  String get imageSearchCredit => 'Cung cấp bởi trace.moe';

  @override
  String get imageSearchOpenFailed => 'Không mở được tựa này';

  @override
  String get groups => 'Nhóm';

  @override
  String get groupsYours => 'Nhóm của bạn';

  @override
  String get groupsPopular => 'Phổ biến';

  @override
  String get groupsNew => 'Mới';

  @override
  String get groupsFeatured => 'Nổi bật';

  @override
  String get groupsSearch => 'Tìm nhóm';

  @override
  String get groupsAll => 'Tất cả';

  @override
  String get groupsEmpty => 'Không tìm thấy nhóm nào';

  @override
  String get groupsEmptyYours => 'Bạn chưa tham gia nhóm nào';

  @override
  String get groupsSignIn => 'Đăng nhập để xem các nhóm bạn đã tham gia';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thành viên',
      one: '1 thành viên',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Tham gia';

  @override
  String get groupsJoined => 'Đã tham gia';

  @override
  String get groupsLeave => 'Rời nhóm';

  @override
  String get groupsLeaveAsk =>
      'Bạn sẽ không thấy bài của nhóm này trên bảng tin nữa.';

  @override
  String get groupsJoinFailed =>
      'Không tham gia được nhóm này, có thể nhóm chỉ vào bằng lời mời';

  @override
  String get groupsLeaveFailed => 'Không rời được nhóm này';

  @override
  String get groupsPosts => 'Bài viết';

  @override
  String get groupsMembersTab => 'Thành viên';

  @override
  String get groupsAbout => 'Giới thiệu';

  @override
  String get groupsRules => 'Quy tắc';

  @override
  String get groupsPrivacyOpen => 'Mở';

  @override
  String get groupsPrivacyRestricted => 'Hạn chế';

  @override
  String get groupsPrivacyClosed => 'Đóng';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Quản trị viên';

  @override
  String get groupsRoleMod => 'mod';

  @override
  String get groupsCouldntLoad => 'Không tải được nhóm này';

  @override
  String get groupsNewPost => 'Đăng vào nhóm';

  @override
  String get groupsPostHint => 'Chia sẻ gì đó với nhóm';

  @override
  String get groupsOpenInBrowser => 'Mở trong trình duyệt';

  @override
  String get groupsCategory => 'Danh mục';

  @override
  String get groupsLanguage => 'Ngôn ngữ';

  @override
  String get groupsCreated => 'Ngày tạo';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trưởng nhóm',
      one: '1 trưởng nhóm',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Riêng tư';

  @override
  String get notificationsAll => 'Tất cả';

  @override
  String get notificationsAiring => 'Lên sóng';

  @override
  String get notificationsMedia => 'Tựa mới';

  @override
  String get notificationsReplies => 'Phản hồi';

  @override
  String get notificationsMentions => 'Lượt nhắc';

  @override
  String get notificationsMessages => 'Tin nhắn';

  @override
  String get notificationsLikes => 'Lượt thích';

  @override
  String get notificationsFollows => 'Theo dõi';

  @override
  String get notificationsNoServices =>
      'Chưa có dịch vụ nào bạn đăng nhập có thông báo';

  @override
  String get notificationsNoServicesMessage =>
      'Đăng nhập một dịch vụ có gửi thông báo và chúng sẽ hiện ở đây.';

  @override
  String get notificationsEmptyKind => 'Chưa có gì trong mục này';

  @override
  String get notificationsCommentsEmpty => 'Không có thông báo bình luận';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Phản hồi bình luận của bạn và thông báo từ Dantotsu sẽ hiện ở đây.';

  @override
  String get notificationsSettings => 'Cài đặt thông báo';

  @override
  String get notificationsPollTitle => 'Kiểm tra thông báo mới';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Mỗi $minutes phút khi app đang mở';
  }

  @override
  String get notificationsNotifyAbout => 'Báo cho mình về';

  @override
  String get notificationsCommentsHeader => 'Thông báo bình luận';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Hiện thông báo hệ thống cho mỗi thông báo $service chưa đọc khi app đang chạy.';
  }

  @override
  String get notificationsTestSent => 'Đã gửi thông báo thử';

  @override
  String get notificationsTestDenied =>
      'Dartotsu chưa được phép gửi thông báo. Hãy bật trong cài đặt hệ thống.';

  @override
  String get notificationsTestHint => 'Nhấn giữ để gửi thông báo thử';

  @override
  String get notificationsTestSample => 'Đây là thông báo thử';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name đã trả lời bình luận của bạn trong $media';
  }

  @override
  String get imageSearchNotLink => 'Cái này không giống link';

  @override
  String get imageSearchQuota => 'Hết hạn mức tìm kiếm';

  @override
  String get imageSearchBusy => 'Quá nhiều yêu cầu, thử lại sau chút nhé';

  @override
  String imageSearchFailed(int code) {
    return 'Tìm kiếm thất bại ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count thông báo mới';
  }

  @override
  String get reactionsTitle => 'Phản ứng';

  @override
  String get reactionsNeedEntry =>
      'Hãy thêm tựa này vào danh sách trước khi phản ứng';

  @override
  String get reactionsAdd => 'Thêm phản ứng';

  @override
  String get reactionsHint => 'Bạn thấy sao? (ngắn gọn và không spoiler)';

  @override
  String get reactionsPost => 'Đăng';

  @override
  String get reactionsFailed => 'Không cập nhật được phản ứng';

  @override
  String get settingsWatch => 'Xem & đọc';

  @override
  String get settingsWatchDesc =>
      'Danh sách tập, khớp nguồn và chi tiết từng tập';

  @override
  String get watchSettingsLayout => 'Danh sách tập';

  @override
  String get watchSettingsSources => 'Nguồn';

  @override
  String get watchSettingsMetadata => 'Chi tiết tập';

  @override
  String get watchLayout => 'Bố cục';

  @override
  String get watchListView => 'Danh sách';

  @override
  String get watchGridView => 'Lưới';

  @override
  String get watchCompactView => 'Gọn';

  @override
  String get watchDefaultLayoutDesc =>
      'Cách sắp xếp tập và chương cho đến khi bạn đổi riêng cho từng tựa';

  @override
  String get watchChunkSize => 'Cỡ khoảng';

  @override
  String get watchChunkSizeDesc =>
      'Mỗi tab khoảng chứa bao nhiêu tập hoặc chương';

  @override
  String get watchShowDescription => 'Hiện mô tả';

  @override
  String get watchShowDescriptionDesc =>
      'Hiện tóm tắt tập dưới mỗi tiêu đề ở dạng danh sách';

  @override
  String get watchShowFiller => 'Hiện tập filler';

  @override
  String get watchShowFillerDesc => 'Tắt để ẩn các tập được đánh dấu là filler';

  @override
  String get watchBlurUnwatched => 'Ẩn ảnh thu nhỏ có spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Làm mờ ảnh thu nhỏ của những tập bạn chưa xem';

  @override
  String get watchResumeShelf => 'Mục tiếp tục';

  @override
  String get watchResumeShelfDesc => 'Hiện hàng Tiếp tục trên Trang chủ';

  @override
  String get watchMarkOnLongPress => 'Nhấn giữ để đánh dấu tiến độ';

  @override
  String get watchMarkOnLongPressDesc =>
      'Nhấn giữ một tập hoặc chương để đánh dấu đã xem hoặc chưa xem';

  @override
  String get watchMatching => 'Khớp nguồn';

  @override
  String get watchMatchingDesc =>
      '\"Gần nhất\" lấy kết quả tìm kiếm tốt nhất. \"Chỉ khớp chính xác\" chỉ nhận tiêu đề gần như giống hệt và để phần còn lại bạn tự chọn.';

  @override
  String get watchMatchClosest => 'Khớp gần nhất';

  @override
  String get watchMatchExact => 'Chỉ khớp chính xác';

  @override
  String get watchMetadataDesc =>
      'Nơi lấy tiêu đề tập, tóm tắt, ảnh thu nhỏ, ngày phát sóng và đánh dấu filler. Kéo để đặt ưu tiên; nguồn đầu tiên có giá trị sẽ thắng.';

  @override
  String get watchMetaAniZipDesc =>
      'Tiêu đề tập, tóm tắt, ảnh và ngày phát sóng';

  @override
  String get watchMetaKitsuDesc => 'Tiêu đề tập, mô tả và ảnh thu nhỏ';

  @override
  String get watchMetaSimklDesc => 'Tiêu đề tập, mô tả, ảnh và ngày phát sóng';

  @override
  String get watchMetaAniListDesc =>
      'Tiêu đề tập streaming, ảnh thu nhỏ và lịch phát sóng';

  @override
  String get watchMetaTenraiDesc =>
      'Tiêu đề tập, ngày phát sóng, đánh dấu filler và recap của MyAnimeList qua Tenrai';

  @override
  String get watchClearMetadata => 'Làm mới chi tiết tập';

  @override
  String get watchClearMetadataDesc => 'Xóa chi tiết tập đã lưu đệm để tải lại';

  @override
  String get watchMetadataCleared => 'Chi tiết tập sẽ được tải lại';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tập',
      one: '1 tập',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chương',
      one: '1 chương',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Tập $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Chương $number';
  }

  @override
  String get watchSearching => 'Đang tìm…';

  @override
  String watchSearchingFor(String term) {
    return 'Đang tìm: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Đã chọn: $title';
  }

  @override
  String watchFound(String title) {
    return 'Đã tìm thấy: $title';
  }

  @override
  String get watchNothingFound => 'Không tìm thấy gì trên nguồn này';

  @override
  String get watchSearchFailed => 'Tìm kiếm trên nguồn thất bại';

  @override
  String get watchLoadFailed => 'Không tải được danh sách';

  @override
  String get watchSignInToTrack => 'Đăng nhập để theo dõi tiến độ';

  @override
  String watchInstallSource(String action) {
    return 'Cài một extension để bắt đầu $action';
  }

  @override
  String get watchSourceMissing => 'Nguồn này chưa được cài';

  @override
  String get watchWrongTitle => 'Nhầm tựa?';

  @override
  String get watchSearchAgain => 'Tìm lại';

  @override
  String watchSearchSource(String source) {
    return 'Tìm trong $source';
  }

  @override
  String get watchSource => 'Nguồn';

  @override
  String get sourceTags => 'Thẻ';

  @override
  String get sourceTagsHint =>
      'Gắn thẻ nguồn này dùng để làm gì. Tiêu đề liệt kê các nguồn được gắn thẻ cho nó trước, sau đó là các nguồn không được gắn thẻ. Nguồn 18+ chỉ hiển thị cho các tựa phim người lớn.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Phim & Series';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Ẩn bởi thẻ';

  @override
  String get watchOptions => 'Tùy chọn';

  @override
  String get watchReverse => 'Đảo thứ tự';

  @override
  String get watchScanlators => 'Nhóm';

  @override
  String get watchResetOptions => 'Đặt lại các tùy chọn này';

  @override
  String get watchContinue => 'Tiếp tục';

  @override
  String get watchStart => 'Bắt đầu';

  @override
  String get watchPlay => 'Phát';

  @override
  String get watchRead => 'Đọc';

  @override
  String get watchMarkWatched => 'Đánh dấu đã xem';

  @override
  String get watchMarkUnwatched => 'Đánh dấu chưa xem';

  @override
  String get watchMarkRead => 'Đánh dấu đã đọc';

  @override
  String get watchMarkUnread => 'Đánh dấu chưa đọc';

  @override
  String get watchFiller => 'chất làm đầy';

  @override
  String get watchRecap => 'Tóm tắt';

  @override
  String get watchNoEpisodes => 'Không tìm thấy tập nào';

  @override
  String get watchNoChapters => 'Không tìm thấy chương nào';

  @override
  String get watchSourceTools => 'Công cụ nguồn';

  @override
  String get watchSourceSettings => 'Cài đặt nguồn';

  @override
  String get watchOpenWebView => 'Mở trong web view';

  @override
  String get watchOpenWebViewDesc =>
      'Vượt kiểm tra Cloudflare hoặc đăng nhập; cookie được dùng chung với các yêu cầu của nguồn';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã lưu $count cookie cho $host',
      one: 'Đã lưu 1 cookie cho $host',
      zero: 'Chưa lưu cookie nào cho $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Đang có xác nhận Cloudflare, $time';
  }

  @override
  String get watchClearanceMissing => 'Không có cookie xác nhận Cloudflare';

  @override
  String get watchClearanceSession => 'có hiệu lực đến khi đóng app';

  @override
  String get watchAgentShared =>
      'Các yêu cầu dùng user agent của web view, thứ mà Cloudflare kiểm tra';

  @override
  String get watchAgentCustom =>
      'Đã đặt user agent tùy chỉnh, nên xác nhận Cloudflare từ web view có thể bị từ chối';

  @override
  String get watchTestConnection => 'Thử kết nối';

  @override
  String get watchSolveChallenge => 'Giải quyết';

  @override
  String watchProbeOk(int code) {
    return 'Truy cập được (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare vẫn đang yêu cầu kiểm tra';

  @override
  String watchProbeBlocked(int code) {
    return 'Bị trang chặn (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Không truy cập được trang';

  @override
  String get watchClearCookies => 'Xóa cookie của trang này';

  @override
  String get watchCookiesCleared => 'Đã xóa cookie';

  @override
  String get watchFailTimeout => 'Việc kiểm tra không kết thúc đúng lúc';

  @override
  String get watchFailBlocked =>
      'Trang web đã chặn thiết bị này (quyền truy cập bị từ chối). Một tấm séc sẽ không giúp ích gì';

  @override
  String get watchFailTurnstile =>
      'Việc kiểm tra này cần một thao tác nhấn mà trình giải quyết nền không thể thực hiện được';

  @override
  String get watchFailLoad =>
      'Trang không tải. Kiểm tra kết nối và địa chỉ trang web';

  @override
  String get watchFailRejected =>
      'Trang web đã từ chối giải phóng mặt bằng mà nó vừa đưa ra. Hãy thử lại hoặc xóa cookie';

  @override
  String get watchFailDismissed =>
      'Việc kiểm tra đã bị đóng trước khi nó kết thúc';

  @override
  String get watchFailCooldown =>
      'Bạn đã đóng séc một lúc trước. Nhấn Giải quyết để thử lại';

  @override
  String get watchFailQuiet => 'Séc cần bạn và ứng dụng đã tự hoạt động';

  @override
  String get watchFailWebView => 'Chế độ xem web nền không thể bắt đầu';

  @override
  String get watchFailUnavailable =>
      'Không có màn hình để hiển thị việc kiểm tra';

  @override
  String get watchStatusReady => 'Sẵn sàng';

  @override
  String get watchStatusChallenge => 'Cần kiểm tra Cloudflare';

  @override
  String get watchStatusBlocked => 'Bị chặn bởi trang web';

  @override
  String get watchStatusOffline => 'Không thể truy cập trang web';

  @override
  String get watchStatusUntested => 'Chưa được thử nghiệm';

  @override
  String get watchStatusTesting => 'Đang kiểm tra kết nối…';

  @override
  String get watchStatusSolving => 'Vượt qua kiểm tra Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Quá trình kiểm tra Cloudflare được thực hiện ở chế độ nền ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Đã vượt qua kiểm tra Cloudflare';

  @override
  String watchClearanceIssued(String time) {
    return 'kiếm được $time';
  }

  @override
  String get watchClearanceStale =>
      'Việc giải phóng mặt bằng đã đạt được thông qua một tác nhân người dùng khác nên nó không được gửi. Kiểm tra kết nối để có kết nối mới';

  @override
  String get watchSectionConnection => 'Kết nối';

  @override
  String get watchSectionSession => 'Phiên';

  @override
  String get watchSectionTools => 'Công cụ';

  @override
  String get watchMetaSource => 'Chi tiết tập từ';

  @override
  String get watchMetaAuto => 'Tự động';

  @override
  String get watchMetaOff => 'Tắt';

  @override
  String get playerSettingsTitle => 'Cài đặt trình phát';

  @override
  String get playerSectionPlayback => 'Phát lại';

  @override
  String get playerSectionSkip => 'Bỏ qua';

  @override
  String get playerSectionGestures => 'Điều khiển';

  @override
  String get playerSectionSubtitles => 'Phụ đề';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Động cơ';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Tốc độ phát';

  @override
  String get localSource => 'Tệp cục bộ';

  @override
  String get localMissing =>
      'Tệp hoặc thư mục này không còn trong thư mục Cục bộ của bạn';

  @override
  String get playerStickyStage => 'Video dính';

  @override
  String get playerStickyStageDesc =>
      'Giữ cố định video ở trên cùng trong khi bạn cuộn các tập và nhận xét bên dưới';

  @override
  String get playerCursedSpeed => 'Tốc độ thêm';

  @override
  String get playerCursedSpeedDesc =>
      'Thêm các tốc độ lên tới 10x vào danh sách';

  @override
  String get playerResize => 'Chế độ co giãn';

  @override
  String get playerFitFit => 'Vừa khung';

  @override
  String get playerFitCover => 'Phủ kín';

  @override
  String get playerFitStretch => 'Kéo giãn';

  @override
  String get playerSkipDuration => 'Độ dài nút bỏ qua';

  @override
  String get playerSkipDurationDesc =>
      'Số giây nút bỏ qua nhảy ngoài opening và ending';

  @override
  String get playerSeekDuration => 'Chạm đúp để tua';

  @override
  String get playerSeekDurationDesc =>
      'Số giây nhảy khi chạm đúp hoặc nhấn phím mũi tên';

  @override
  String get playerAutoPlay => 'Tự động phát tập tiếp';

  @override
  String get playerAutoPlayDesc => 'Bắt đầu tập tiếp theo khi tập này kết thúc';

  @override
  String get playerResume => 'Tiếp tục từ chỗ đang xem dở';

  @override
  String get playerResumeDesc => 'Xem tiếp một tập từ vị trí cuối cùng';

  @override
  String get playerOrientation => 'Hướng màn hình';

  @override
  String get playerOrientationAuto => 'Theo thiết bị';

  @override
  String get playerOrientationLandscape => 'Ngang';

  @override
  String get playerOrientationPortrait => 'Dọc';

  @override
  String get playerAutoSkipOpening => 'Bỏ qua opening';

  @override
  String get playerAutoSkipEnding => 'Bỏ qua ending';

  @override
  String get playerAutoSkipRecap => 'Bỏ qua recap';

  @override
  String get playerAutoSkipDesc =>
      'Nhảy qua ngay khi nó bắt đầu, dựa trên AniSkip và mốc thời gian của luồng';

  @override
  String get playerDisableSkips => 'Vô hiệu hóa bỏ qua';

  @override
  String get playerDisableSkipsDesc =>
      'Không có AniSkip hoặc dấu thời gian phát trực tuyến, dấu chương hoặc bỏ qua bài gửi trong trình phát';

  @override
  String get playerSkipOnce => 'Chỉ bỏ qua một lần';

  @override
  String get playerSkipOnceDesc =>
      'Không bỏ qua lại đúng đoạn đó nếu bạn tua ngược vào';

  @override
  String get playerAdjustBrightness => 'Cử chỉ độ sáng';

  @override
  String get playerAdjustBrightnessDesc => 'Vuốt lên xuống ở nửa phải màn hình';

  @override
  String get playerAdjustVolume => 'Cử chỉ âm lượng';

  @override
  String get playerAdjustVolumeDesc => 'Vuốt lên xuống ở nửa trái màn hình';

  @override
  String get playerHoldToSpeed => 'Giữ để tua nhanh';

  @override
  String get playerHoldToSpeedDesc =>
      'Nhấn giữ video để phát nhanh hơn, kéo ngang để đổi tốc độ';

  @override
  String get playerThumbless => 'Thanh tua dày hơn';

  @override
  String get playerThumblessDesc => 'Thanh dày không có nút kéo';

  @override
  String get playerShowSubtitles => 'Hiện phụ đề';

  @override
  String get playerShowSubtitlesDesc => 'Tắt để ẩn mọi track phụ đề';

  @override
  String get playerSubtitleLanguage => 'Ngôn ngữ phụ đề ưu tiên';

  @override
  String get playerSubtitleSize => 'Cỡ phụ đề';

  @override
  String get playerSubtitleWeight => 'Độ đậm phụ đề';

  @override
  String get playerSubtitleBottom => 'Khoảng cách phụ đề với đáy';

  @override
  String get playerSubtitleFont => 'Phông chữ phụ đề';

  @override
  String get playerSubtitleColor => 'Màu phụ đề';

  @override
  String get playerSubtitleBackground => 'Nền phụ đề';

  @override
  String get playerSubtitleOutline => 'Viền phụ đề';

  @override
  String get playerSubtitleOutlineWidth => 'Chiều rộng phác thảo phụ đề';

  @override
  String get playerSubtitlePreview => 'xem trước phụ đề';

  @override
  String get playerSubtitlePreviewText => 'Văn bản xem trước phụ đề';

  @override
  String get playerLibass => 'Dùng libass';

  @override
  String get playerLibassDesc =>
      'Hiển thị phụ đề .ass có định dạng. Cỡ, màu và phông chữ ở trên sẽ không còn tác dụng';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Bật shader';

  @override
  String get playerShadersEnableDesc =>
      'Upscale và làm sạch hình bằng shader GLSL như Anime4K';

  @override
  String get playerShadersOff => 'Đã tắt shader';

  @override
  String get playerShadersMissing => 'Chưa cài Anime4K';

  @override
  String get playerShadersMissingDesc =>
      'Tải gói shader Anime4K (khoảng 0,8 MB) để dùng các chế độ có sẵn.';

  @override
  String get playerShadersDownload => 'Tải Anime4K';

  @override
  String get playerPictureSave => 'Lưu khung này';

  @override
  String get playerPictureOriginal => 'Bản gốc';

  @override
  String get playerPictureOriginalDesc =>
      'Khung hình như video có, không có bóng đổ hoặc màu sắc';

  @override
  String get playerPictureProcessed => 'Với shader và màu sắc';

  @override
  String get playerPictureProcessedDesc => 'Khung hình như bạn thấy bây giờ';

  @override
  String get playerPictureSaved => 'Đã lưu khung';

  @override
  String get playerPictureSaveFailed => 'Không thể lưu khung';

  @override
  String get playerShadersPreview => 'Xem trước trên khung hình này';

  @override
  String get playerShadersUse => 'Dùng cái này';

  @override
  String get playerPicture => 'Hình ảnh';

  @override
  String get playerColors => 'Màu sắc';

  @override
  String get playerColorDefault => 'Mặc định';

  @override
  String get playerColorVivid => 'Rực rỡ';

  @override
  String get playerColorPop => 'phim hoạt hình nổi tiếng';

  @override
  String get playerColorSoft => 'Dịu';

  @override
  String get playerColorCinematic => 'Điện ảnh';

  @override
  String get playerColorBright => 'Sáng';

  @override
  String get playerColorNight => 'Ban đêm';

  @override
  String get playerColorMono => 'Đơn sắc';

  @override
  String get playerColorCustom => 'Tùy chỉnh';

  @override
  String get playerColorBrightness => 'Độ sáng';

  @override
  String get playerColorContrast => 'Độ tương phản';

  @override
  String get playerColorSaturation => 'Độ bão hòa';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Sắc độ';

  @override
  String get playerColorReset => 'Đặt lại';

  @override
  String get playerColorAdjust => 'Điều chỉnh';

  @override
  String get playerShadersOriginal => 'Gốc';

  @override
  String get playerShadersPreviewFailed =>
      'Không lấy được khung hình để xem trước';

  @override
  String get playerShadersSoftware =>
      'Trình đổ bóng cần kết xuất phần cứng và trình phát đang sử dụng kết xuất phần mềm. Tắt hiển thị phần mềm trong cài đặt Trình phát.';

  @override
  String get playerSoftwareRender => 'Kết xuất phần mềm';

  @override
  String get playerSoftwareRenderDesc =>
      'Chỉ dành cho một video đen. Shader không hoạt động với nó. Áp dụng vào lần tiếp theo người chơi mở';

  @override
  String get playerShadersCustomFiles => 'Shader của bạn';

  @override
  String get playerShadersCustom => 'Shader tùy chỉnh';

  @override
  String get playerShadersImport => 'Nhập .glsl';

  @override
  String get playerShadersNone =>
      'Nhập file .glsl hoặc .hook của bạn và tích chọn để nối chuỗi chúng';

  @override
  String get playerShadersBadFile => 'Chọn file shader .glsl hoặc .hook';

  @override
  String get playerDecoder => 'Bộ giải mã';

  @override
  String get playerDecoderAuto => 'Tự động';

  @override
  String get playerDecoderAutoSafe => 'Tự động (an toàn)';

  @override
  String get playerDecoderSoftware => 'Phần mềm';

  @override
  String get playerDecoderHardware => 'Phần cứng';

  @override
  String get playerDecoderHardwarePlus => 'Phần cứng+';

  @override
  String get playerVideoOutput => 'Đầu ra video';

  @override
  String get playerAudioChannels => 'Kênh âm thanh';

  @override
  String get playerBuffer => 'Cỡ bộ đệm (MB)';

  @override
  String get playerBufferDesc => 'Bộ nhớ trình phát được dùng để đệm luồng';

  @override
  String get playerUseMpvConf => 'Dùng mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Áp dụng các tùy chọn trong mpv.conf khi bắt đầu phát';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Sửa cấu hình mpv';

  @override
  String get playerMpvConfDesc =>
      'Mỗi dòng một tùy chọn, như --hwdec=auto trong mpv.conf bình thường. Profile trong [ngoặc vuông] sẽ bị bỏ qua.';

  @override
  String get playerMpvConfSaved => 'Đã lưu mpv.conf';

  @override
  String get playerUseScripts => 'Dùng script mpv';

  @override
  String get playerUseScriptsDesc =>
      'Tải plugin từ thư mục scripts. Cần bản libmpv có hỗ trợ Lua hoặc JavaScript';

  @override
  String get playerScripts => 'Script mpv';

  @override
  String get playerScriptsManage => 'Thêm, xóa và bật/tắt plugin';

  @override
  String get playerScriptsAdd => 'Thêm script';

  @override
  String get playerScriptsDesc =>
      'Plugin Lua, JavaScript và native đặt ở đây sẽ được tải khi bắt đầu phát.';

  @override
  String get playerScriptsNone => 'Chưa có script nào';

  @override
  String get playerScriptsBadFile => 'Chọn file .lua, .js hoặc plugin native';

  @override
  String get playerTuning => 'Tinh chỉnh video nâng cao';

  @override
  String get playerTuningDesc =>
      'Ghi đè đồng bộ, đệm, co giãn và tone mapping. Giá trị sai có thể làm hỏng việc phát';

  @override
  String get playerVideoSync => 'Đồng bộ video';

  @override
  String get playerInterpolation => 'Nội suy khung hình';

  @override
  String get playerInterpolationDesc =>
      'Chuyển động mượt, cần đồng bộ display-resample';

  @override
  String get playerPitch => 'Hiệu chỉnh cao độ';

  @override
  String get playerPitchDesc => 'Giữ giọng tự nhiên ở các tốc độ khác';

  @override
  String get playerCacheSeconds => 'Bộ đệm (giây)';

  @override
  String get playerReadahead => 'Đọc trước (giây)';

  @override
  String get playerThreads => 'Luồng giải mã';

  @override
  String get playerDeband => 'Gỡ bỏ';

  @override
  String get playerDebandDesc => 'Giảm hiện tượng sọc màu ở dải chuyển màu';

  @override
  String get playerDebandIterations => 'Số lần lặp deband';

  @override
  String get playerDebandThreshold => 'Ngưỡng deband';

  @override
  String get playerCorrectDownscaling => 'Thu nhỏ chính xác';

  @override
  String get playerSigmoid => 'Upscale Sigmoid';

  @override
  String get playerScale => 'Bộ upscale';

  @override
  String get playerCscale => 'Bộ upscale chroma';

  @override
  String get playerDscale => 'Bộ downscale';

  @override
  String get playerToneMapping => 'Ánh xạ giai điệu';

  @override
  String get playerTargetPeak => 'Đỉnh mục tiêu';

  @override
  String get playerOpenFiles => 'Mở file video';

  @override
  String get playerOpenFilesDesc => 'Phát file từ thiết bị này';

  @override
  String get playerOpenFolder => 'Mở thư mục';

  @override
  String get playerOpenFolderDesc =>
      'Phát mọi video trong thư mục như một playlist';

  @override
  String get playerNetworkStream => 'Luồng mạng';

  @override
  String get playerNetworkStreamDesc => 'Mở link video trực tiếp hoặc HLS';

  @override
  String get playerStreamUrl => 'URL luồng';

  @override
  String get playerStreamReferer => 'Referer (tùy chọn)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream link magnet hoặc file .torrent';

  @override
  String get playerMagnetLink => 'Link magnet hoặc URL torrent';

  @override
  String get playerPickTorrent => 'Chọn file .torrent';

  @override
  String get playerTorrentMissing =>
      'Hãy cài addon torrent trong Cài đặt > Addon trước';

  @override
  String get playerNoVideos => 'Không tìm thấy video nào phát được';

  @override
  String get playerReset => 'Đặt lại cài đặt trình phát';

  @override
  String get playerResetDesc => 'Khôi phục mọi tùy chọn trình phát về mặc định';

  @override
  String get playerResetConfirm => 'Đặt lại toàn bộ cài đặt trình phát?';

  @override
  String get playerResetDone => 'Đã đặt lại cài đặt trình phát';

  @override
  String get playerQuality => 'Chất lượng';

  @override
  String get streamGroupSub => 'phụ';

  @override
  String get streamGroupHardSub => 'Phụ cứng';

  @override
  String get streamGroupSoftSub => 'Phụ mềm';

  @override
  String get streamGroupDub => 'lồng tiếng';

  @override
  String get streamGroupRaw => 'thô';

  @override
  String get streamGroupOther => 'Khác';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count luồng',
      one: '1 luồng',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Luồng';

  @override
  String get playerStreamFailedNext =>
      'Luồng đó không phát, hãy thử luồng tiếp theo';

  @override
  String get playerAutoSelect => 'Tự chọn luồng';

  @override
  String get playerAutoSelectDesc =>
      'Chọn luồng giống nhất với lựa chọn lần trước của bạn cho tựa này';

  @override
  String get playerLoadingStreams => 'Đang tìm luồng…';

  @override
  String get playerNoStreams => 'Tập này không có luồng nào';

  @override
  String get playerNoStreamsTitle => 'Không tìm thấy luồng';

  @override
  String get playerFailed => 'Phát thất bại';

  @override
  String get playerTorrentNeeded => 'Luồng này là torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Cài addon torrent để phát link magnet và file .torrent';

  @override
  String get playerOpenAddons => 'Mở addon';

  @override
  String get playerTryAnotherStream => 'Thử luồng khác';

  @override
  String get playerEpisodes => 'Tập';

  @override
  String get playerLock => 'Khóa điều khiển';

  @override
  String get playerFullscreen => 'Toàn màn hình';

  @override
  String get readerChapters => 'Chương';

  @override
  String get readerSettingsTitle => 'Cài đặt trình đọc';

  @override
  String get readerPreviousChapter => 'Chương trước';

  @override
  String get readerNextChapter => 'Chương sau';

  @override
  String get readerFirstChapter => 'Đây là chương đầu tiên';

  @override
  String get readerLastChapter => 'Bạn đã đọc hết rồi';

  @override
  String get readerFailed => 'Không mở được chương này';

  @override
  String get readerOpenBook => 'Mở một cuốn sách';

  @override
  String get readerOpenBookDesc =>
      'Đọc epub (trình đọc tiểu thuyết) hoặc PDF (trình đọc truyện tranh) từ các tệp của bạn';

  @override
  String get readerNoText => 'Chương này không có chữ';

  @override
  String get readerPerTitle => 'Chỉ cho tựa này';

  @override
  String get readerPerTitleDesc => 'Giữ các cài đặt đọc này chỉ cho tựa này';

  @override
  String get readerSectionReading => 'Đọc';

  @override
  String get readerSectionControls => 'Điều khiển';

  @override
  String get readerSectionDisplay => 'Hiển thị';

  @override
  String get readerSectionNovel => 'Tiểu thuyết';

  @override
  String get readerMode => 'Chế độ đọc';

  @override
  String get readerModeAuto => 'Tự động (theo loại sê-ri)';

  @override
  String get readerModeRtl => 'Phải sang trái';

  @override
  String get readerModeLtr => 'Trái sang phải';

  @override
  String get readerModeVertical => 'Trang dọc';

  @override
  String get readerModeWebtoon => 'webtoon';

  @override
  String get readerModeContinuous => 'Cuộn liên tục';

  @override
  String get readerScale => 'Tỉ lệ ảnh';

  @override
  String get readerScaleFit => 'Vừa màn hình';

  @override
  String get readerScaleWidth => 'Vừa chiều rộng';

  @override
  String get readerScaleHeight => 'Vừa chiều cao';

  @override
  String get readerScaleOriginal => 'Kích thước gốc';

  @override
  String get readerScaleSmart => 'Vừa thông minh';

  @override
  String get readerDoublePage => 'Trang đôi';

  @override
  String get readerDoublePageDesc => 'Hiện hai trang cạnh nhau khi xoay ngang';

  @override
  String get readerDoubleTapZoom => 'Chạm đúp để zoom';

  @override
  String get readerDoubleTapZoomDesc => 'Zoom trang vào ra bằng cách chạm đúp';

  @override
  String get readerAnimate => 'Hiệu ứng trang';

  @override
  String get readerAnimateDesc => 'Làm hiệu ứng khi lật trang';

  @override
  String get readerSidePadding => 'Lề hai bên';

  @override
  String get readerSidePaddingDesc =>
      'Khoảng trống bên cạnh các trang theo phần trăm';

  @override
  String get readerPageGap => 'Khoảng cách trang';

  @override
  String get readerPageGapDesc => 'Khoảng trống giữa các trang';

  @override
  String get readerAutoNext => 'Đọc tiếp sang chương sau';

  @override
  String get readerAutoNextDesc =>
      'Tải chương sau khi bạn đọc đến cuối chương này';

  @override
  String get readerPreload => 'Tải trước trang';

  @override
  String get readerPreloadDesc => 'Số trang tải trước';

  @override
  String get readerTapZones => 'Vùng chạm';

  @override
  String get readerTapDefault => 'Mặc định';

  @override
  String get readerTapLShaped => 'Chữ L';

  @override
  String get readerTapKindle => 'Kiểu Kindle';

  @override
  String get readerTapEdge => 'Chỉ ở mép';

  @override
  String get readerTapOff => 'Tắt';

  @override
  String get readerInvertTaps => 'Đảo vùng chạm';

  @override
  String get readerInvertTapsDesc => 'Đổi chỗ vùng trước và vùng sau';

  @override
  String get readerBackground => 'Nền';

  @override
  String get readerBackgroundBlack => 'Đen';

  @override
  String get readerBackgroundGray => 'Xám';

  @override
  String get readerBackgroundWhite => 'Trắng';

  @override
  String get readerBackgroundTheme => 'Chủ đề app';

  @override
  String get readerFilter => 'Bộ lọc màu';

  @override
  String get readerFilterNone => 'Không';

  @override
  String get readerFilterGrayscale => 'Thang xám';

  @override
  String get readerFilterInvert => 'Đảo màu';

  @override
  String get readerFilterSepia => 'màu nâu đỏ';

  @override
  String get readerFilterQuality => 'Chất lượng bộ lọc hình ảnh';

  @override
  String get readerFilterQualityNone => 'Không có (Hàng xóm gần nhất)';

  @override
  String get readerFilterQualityLow => 'Thấp (Song tuyến tính)';

  @override
  String get readerFilterQualityMedium => 'Trung bình (tam tuyến tính)';

  @override
  String get readerFilterQualityHigh => 'Cao (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rỉ chất lượng cao)';

  @override
  String get readerDim => 'Làm tối';

  @override
  String get readerDimDesc => 'Làm tối các trang';

  @override
  String get readerPageNumber => 'Số trang';

  @override
  String get readerPageNumberDesc => 'Hiện số trang khi đang đọc';

  @override
  String get readerFullscreen => 'Toàn màn hình';

  @override
  String get readerFullscreenDesc => 'Ẩn thanh hệ thống';

  @override
  String get readerCropBorders => 'Cắt viền';

  @override
  String get readerCropBordersDesc =>
      'Cắt bỏ lề trắng hoặc đen trống ở các trang';

  @override
  String get readerLongPressSave => 'Giữ một trang để lưu nó';

  @override
  String get readerLongPressSaveDesc =>
      'Nhấn và giữ một trang để mở các tùy chọn lưu, chia sẻ và sao chép';

  @override
  String get readerVolumeKeys => 'Phím âm lượng lật trang';

  @override
  String get readerVolumeKeysDesc =>
      'Giảm âm lượng là tiến, tăng âm lượng là lùi';

  @override
  String get readerBookmarks => 'Dấu trang';

  @override
  String get readerBookmarkAdd => 'Thêm dấu trang';

  @override
  String get readerBookmarkRemove => 'Xóa dấu trang';

  @override
  String get readerBookmarksEmpty => 'Chưa có dấu trang';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Trang $page/$total';
  }

  @override
  String get readerAutoScroll => 'Tự cuộn';

  @override
  String get readerAutoScrollStop => 'Dừng tự cuộn';

  @override
  String get readerAutoScrollSpeed => 'Tốc độ tự cuộn';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Tốc độ các trang tự cuộn hoặc tự lật';

  @override
  String get readerKeepOn => 'Giữ màn hình sáng';

  @override
  String get readerKeepOnDesc => 'Không để màn hình tắt khi đang đọc';

  @override
  String get readerOrientation => 'Hướng màn hình';

  @override
  String get readerOrientationFree => 'Tự do';

  @override
  String get readerOrientationPortrait => 'Dọc';

  @override
  String get readerOrientationLandscape => 'Ngang';

  @override
  String get readerSaveProgress => 'Lưu tiến độ';

  @override
  String get readerSaveProgressDesc =>
      'Nhớ trang của bạn và đánh dấu chương đã đọc';

  @override
  String get readerReset => 'Đặt lại cài đặt trình đọc';

  @override
  String get readerResetDesc => 'Về mặc định';

  @override
  String get readerResetConfirm =>
      'Đặt lại mọi cài đặt của đầu đọc về mặc định?';

  @override
  String get novelSize => 'Cỡ chữ';

  @override
  String get novelFont => 'Phông chữ';

  @override
  String get novelLineHeight => 'Chiều cao dòng';

  @override
  String get novelParagraph => 'Khoảng cách đoạn';

  @override
  String get novelMargin => 'Lề';

  @override
  String get novelTheme => 'Chủ đề trình đọc';

  @override
  String get novelThemeApp => 'Chủ đề app';

  @override
  String get novelThemeLight => 'Sáng';

  @override
  String get novelThemeSepia => 'màu nâu đỏ';

  @override
  String get novelThemeDark => 'Tối';

  @override
  String get novelThemeBlack => 'Đen';

  @override
  String get novelJustify => 'Căn đều chữ';

  @override
  String get novelJustifyDesc => 'Căn chữ đều hai mép';

  @override
  String get trackProgressTitle => 'Lưu tiến độ?';

  @override
  String trackProgressAnime(String name) {
    return 'Theo dõi $name trong danh sách của bạn khi xem? Chọn \"Chỉ thiết bị này\" để giữ cục bộ, hoặc Không để không lưu gì.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Theo dõi $name trong danh sách của bạn khi bạn đọc xong một chương? Chọn \"Chỉ thiết bị này\" để giữ cục bộ, hoặc Không để không lưu gì.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Lưu tiến trình của bạn trên $name vào danh sách của bạn trên thiết bị này khi bạn xem?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Lưu tiến trình của bạn trên $name vào danh sách của bạn trên thiết bị này khi bạn hoàn thành một chương?';
  }

  @override
  String get downloadClearQueue => 'Xóa hàng đợi';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Hủy tất cả $count lượt tải xuống trong hàng đợi? Những gì đã được tải xuống sẽ bị xóa.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count đã chọn';
  }

  @override
  String get downloadSelectAll => 'Chọn tất cả';

  @override
  String get downloadDeleteSelected => 'Xóa đã chọn';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Xóa $count lượt tải xuống? Các tập tin của họ sẽ bị xóa khỏi thiết bị.';
  }

  @override
  String get castTitle => 'Truyền tới thiết bị';

  @override
  String get castSearching => 'Đang tìm kiếm thiết bị trên mạng của bạn…';

  @override
  String get castNoDevices =>
      'Không tìm thấy thiết bị nào. Đảm bảo TV hoặc Chromecast kết nối cùng một mạng Wi-Fi, sau đó tìm kiếm lại.';

  @override
  String get castRefresh => 'Tìm kiếm lại';

  @override
  String get castFailed => 'Không thể bắt đầu truyền';

  @override
  String get castStop => 'Dừng truyền';

  @override
  String castNowCasting(String name) {
    return 'Đang truyền tới $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Tivi thông minh';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku không thể báo cáo hoặc thay đổi vị trí';

  @override
  String get castControls => 'Điều khiển';

  @override
  String get castVolume => 'âm lượng tivi';

  @override
  String castSkipPart(String name) {
    return 'Bỏ qua $name';
  }

  @override
  String get trackProgressRememberSeries => 'Hãy nhớ về loạt bài này';

  @override
  String get trackProgressYes => 'Lưu';

  @override
  String get trackProgressReset =>
      'Đã đặt lại lời nhắc lưu tiến độ cho loại này, app sẽ hỏi lại';

  @override
  String get trackProgressNo => 'Không';

  @override
  String get trackProgressOff => 'Tắt';

  @override
  String get trackProgressLocal => 'Chỉ thiết bị này';

  @override
  String get trackProgressSettingAnime => 'Theo dõi tiến độ anime';

  @override
  String get trackProgressSettingManga => 'Theo dõi tiến độ manga và novel';

  @override
  String get trackProgressSettingDesc =>
      'Việc cần làm khi bạn mở một tập hoặc đọc xong một chương';

  @override
  String get trackProgressAsk => 'Hỏi';

  @override
  String get trackProgressAlways => 'Luôn luôn';

  @override
  String get dantotsuImport => 'Nhập từ Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Đọc bản sao lưu cài đặt Dantotsu (.ani, hoặc .sani đã mã hóa)';

  @override
  String get dantotsuPick => 'Chọn bản sao lưu Dantotsu';

  @override
  String get dantotsuNothing => 'Không có gì trong file này để nhập';

  @override
  String get dantotsuApply => 'Nhập mục đã chọn';

  @override
  String dantotsuDone(int done, int total) {
    return 'Đã nhập $done/$total';
  }

  @override
  String get dantotsuGroupAccounts => 'Tài khoản';

  @override
  String get dantotsuGroupAppearance => 'Giao diện';

  @override
  String get dantotsuGroupExtensions => 'Extension';

  @override
  String get dantotsuGroupApp => 'ứng dụng';

  @override
  String get dantotsuGroupPlayer => 'Trình phát';

  @override
  String get dantotsuAnilist => 'Đăng nhập AniList';

  @override
  String get dantotsuMal => 'Đăng nhập MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Chủ đề';

  @override
  String get themePickerTitle => 'chủ đề';

  @override
  String get dantotsuReposAnime => 'Kho extension anime';

  @override
  String get dantotsuReposManga => 'Kho extension manga';

  @override
  String get dantotsuReposNovel => 'Kho extension novel';

  @override
  String get dantotsuUpdates => 'Kiểm tra cập nhật';

  @override
  String get dantotsuComments => 'Bình luận';

  @override
  String get dantotsuActivity => 'Thăm dò thông báo AniList';

  @override
  String get dantotsuDns => 'Nhà cung cấp DNS';

  @override
  String get dantotsuPlayer => 'Tốc độ trình phát và màu phụ đề';

  @override
  String get dantotsuWarning =>
      'File này chứa token đăng nhập. Hãy giữ riêng tư.';

  @override
  String get novelIndent => 'Thụt lề đoạn';

  @override
  String get novelIndentDesc => 'Mở đầu mỗi đoạn bằng thụt dòng đầu';

  @override
  String get novelLetterSpacing => 'Khoảng cách chữ';

  @override
  String get novelSectionTranslate => 'Dịch';

  @override
  String get sectionExperimental => 'Thử nghiệm';

  @override
  String get kitsuGraphqlDetail => 'Trang chi tiết nhanh hơn (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Tải một tựa cùng nhân vật, staff và mục của bạn chỉ trong một yêu cầu';

  @override
  String get togetherTitle => 'Xem cùng nhau';

  @override
  String get togetherIntro =>
      'Dán link phòng bạn bè gửi. Bạn vào ngay và trình phát sẽ mở khi họ bắt đầu xem.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Tham gia phòng $room? Người dẫn chương trình chọn nội dung phát và trình phát sẽ tự mở khi họ bắt đầu xem.';
  }

  @override
  String get togetherJoin => 'Tham gia';

  @override
  String get togetherName => 'Tên của bạn';

  @override
  String get togetherConnecting => 'Đang kết nối…';

  @override
  String get togetherLeave => 'Rời phòng';

  @override
  String get togetherYou => 'Bạn';

  @override
  String get togetherNoChat => 'Chưa có tin nhắn';

  @override
  String get togetherChatHint => 'Tin nhắn';

  @override
  String get togetherCopyInvite => 'Sao chép lời mời';

  @override
  String get togetherShareInvite => 'Chia sẻ lời mời';

  @override
  String togetherShareText(String link) {
    return 'Xem cùng tôi trên Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Đã sao chép máy chủ và phòng';

  @override
  String get togetherConnectionLost => 'Mất kết nối';

  @override
  String togetherConnectedTo(String room) {
    return 'Đã kết nối với $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Không kết nối được: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name đã vào';
  }

  @override
  String togetherLeft(String name) {
    return '$name đã rời';
  }

  @override
  String togetherPaused(String name) {
    return '$name đã tạm dừng';
  }

  @override
  String togetherResumed(String name) {
    return '$name đã phát tiếp';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name đã tua tới $time';
  }

  @override
  String get togetherFollowFailed =>
      'Không mở được tập của host. Bạn tự mở nhé.';

  @override
  String get togetherJoinRole => 'Vào phòng';

  @override
  String get togetherOpenHost => 'Mở tập của host';

  @override
  String get togetherShowChat => 'Hiện chat trực tiếp';

  @override
  String get togetherWaitingHost => 'Đang chờ host bắt đầu một tập';

  @override
  String get togetherRoomLink => 'Link phòng';

  @override
  String get togetherBadLink => 'Đây không phải link phòng';

  @override
  String get togetherHostClosed => 'Host đã đóng phòng';

  @override
  String get togetherNowPlaying => 'Đang phát';

  @override
  String togetherWatchingCount(int count) {
    return '$count người đang xem';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user muốn tạm dừng';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user muốn phát tiếp';
  }

  @override
  String get togetherChip => 'Cùng nhau';

  @override
  String get togetherSettingsDesc => 'Vào phòng của bạn bè bằng link';

  @override
  String get novelBilingual => 'Hiện bản gốc và bản dịch';

  @override
  String get novelBilingualDesc =>
      'Mỗi đoạn hiện văn bản gốc kèm bản dịch bên dưới';

  @override
  String get novelTranslateTo => 'Dịch sang';

  @override
  String get novelTranslateOff => 'Tắt';

  @override
  String get novelSectionSpeech => 'Chuyển văn bản thành giọng nói';

  @override
  String get novelSpeechRate => 'Tốc độ đọc';

  @override
  String get novelSpeechPitch => 'Cao độ giọng đọc';

  @override
  String get novelSpeak => 'Đọc to';

  @override
  String get novelSpeakStop => 'Dừng đọc to';

  @override
  String get novelTranslate => 'Dịch chương';

  @override
  String get novelTranslateShowOriginal => 'Hiện bản gốc';

  @override
  String novelTranslateFailed(String error) {
    return 'Dịch thất bại: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Thiết bị này không hỗ trợ chuyển văn bản thành giọng nói';

  @override
  String get novelSpeechVoice => 'Giọng';

  @override
  String get novelSpeechVoiceDefault => 'Mặc định hệ thống';

  @override
  String get novelSpeakPrevious => 'Dòng trước';

  @override
  String get novelSpeakNext => 'Dòng sau';

  @override
  String get novelTapPaging => 'Chạm mép để lật trang';

  @override
  String get novelTapPagingDesc =>
      'Chạm bên trái hoặc phải để cuộn một trang, giữa màn hình hiện các nút điều khiển';

  @override
  String get novelPaged => 'lật trang';

  @override
  String get novelPagedDesc =>
      'Chia chương thành các trang và vuốt hoặc chạm để lật chúng thay vì cuộn';

  @override
  String novelPageOf(int current, int total) {
    return 'Trang $current trong số $total';
  }

  @override
  String get novelPaginating => 'Bố trí các trang';

  @override
  String get novelTools => 'Nội dung, tìm kiếm và nổi bật';

  @override
  String get novelContents => 'Nội dung';

  @override
  String get novelContentsEmpty => 'Chương này không có tiêu đề';

  @override
  String get novelSearch => 'Tìm kiếm';

  @override
  String get novelSearchHint => 'Tìm kiếm trong chương này';

  @override
  String get novelSearchNone => 'Không có kết quả phù hợp';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count trận đấu',
      one: '1 trận đấu',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Điểm nổi bật';

  @override
  String get novelHighlightsEmpty =>
      'Chọn một số văn bản và nhấn vào Đánh dấu để giữ nó ở đây';

  @override
  String get novelHighlight => 'Đánh dấu';

  @override
  String get novelHighlightNote => 'Lưu ý';

  @override
  String get novelHighlightNoteHint => 'Thêm ghi chú';

  @override
  String get novelHighlightRemove => 'Xóa phần đánh dấu';

  @override
  String get novelHighlightFailed => 'Không thể khớp lựa chọn đó với văn bản';

  @override
  String novelMinutesLeft(int count) {
    return 'Còn $count phút';
  }

  @override
  String get novelBold => 'Chữ đậm';

  @override
  String get novelBoldDesc => 'Dùng độ đậm lớn hơn';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Đã xong $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Tiếp: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Trước: $chapter';
  }

  @override
  String get readerNoPages => 'Chương này không có trang nào';

  @override
  String get readerLoadingPages => 'Đang tải trang…';

  @override
  String get readerSlowPage => 'Trang này vẫn đang tải…';

  @override
  String get readerPageFailed => 'Không tải được trang này';

  @override
  String get playerShowComments => 'Hiện bình luận';

  @override
  String get playerHideComments => 'Ẩn bình luận';

  @override
  String get playerSubtitles => 'Phụ đề';

  @override
  String get playerSubtitlesOff => 'Tắt phụ đề';

  @override
  String get playerAudio => 'Âm thanh';

  @override
  String get playerAddSubtitle => 'Thêm file phụ đề';

  @override
  String get playerAddAudio => 'Thêm file âm thanh';

  @override
  String get playerChapters => 'Chương';

  @override
  String get playerSkipSubmit => 'Gửi thời gian bỏ qua';

  @override
  String get playerSkipSubmitDesc =>
      'Đánh dấu phần mở đầu, kết thúc hoặc tóm tắt bắt đầu và kết thúc trong tập này và chia sẻ nó với AniSkip để mọi người đều nhận được nút bỏ qua.';

  @override
  String get playerSkipStart => 'Bắt đầu';

  @override
  String get playerSkipEnd => 'Kết thúc';

  @override
  String get playerSkipUseNow => 'Sử dụng vị trí hiện tại';

  @override
  String get playerSkipSend => 'Gửi tới AniSkip';

  @override
  String get playerSkipSent => 'Bỏ qua số lần gửi tới AniSkip, cảm ơn bạn';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip từ chối số lần bỏ qua: $error';
  }

  @override
  String get playerUnsupported =>
      'Trình phát video không thể chạy trên thiết bị này (phiên bản Android của nó quá cũ đối với thư viện trình phát đi kèm). Nhấn để sao chép chi tiết.';

  @override
  String get playerSkipNoMal =>
      'Tiêu đề này không có id MyAnimeList, AniSkip không thể lấy được';

  @override
  String get playerNoChapters => 'Không có chương';

  @override
  String get playerTimestamp => 'Mốc thời gian';

  @override
  String get playerAutoPlayDelay => 'Đếm ngược tập tiếp';

  @override
  String get playerWatchedAt => 'Tính là đã xem ở';

  @override
  String playerNextIn(int seconds) {
    return 'Tập tiếp sau $seconds giây';
  }

  @override
  String get playerPlayNow => 'Phát ngay';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: sẽ tự động bỏ qua cho tựa này';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: sẽ không tự động bỏ qua cho tựa này';
  }

  @override
  String get playerAudioLanguage => 'Ngôn ngữ âm thanh ưu tiên';

  @override
  String get playerLanguageOrderHint =>
      'Ngăn cách các ngôn ngữ bằng dấu phẩy. Ngôn ngữ đầu tiên tìm được sẽ được dùng.';

  @override
  String get playerPip => 'Hình trong hình';

  @override
  String get playerAutoPip => 'Hình trong hình khi thoát';

  @override
  String get playerAutoPipDesc =>
      'Tiếp tục phát trong cửa sổ nhỏ khi bạn thoát app';

  @override
  String get playerPipPlay => 'Chơi';

  @override
  String get playerPipPause => 'Tạm dừng';

  @override
  String get playerPipBack => 'Tua lại';

  @override
  String get playerPipForward => 'Chuyển tiếp';

  @override
  String get playerPipRestore => 'Quay lại người chơi';

  @override
  String get playerPipActive => 'Chơi trong một cửa sổ nhỏ';

  @override
  String get listDateAdded => 'Đã thêm vào danh sách';

  @override
  String get listDateLastWatched => 'Xem lần cuối';

  @override
  String playerAutoPlaying(String title) {
    return 'Sắp phát $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Không cài được shader: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Chương $number';
  }

  @override
  String get playerPerTitle => 'Chỉ cho tựa này';

  @override
  String get playerPerTitleDesc =>
      'Giữ các tùy chọn này cho tựa này và không đụng tới mặc định của bạn';

  @override
  String get playerSwapGestures => 'Đổi bên vuốt';

  @override
  String get playerSwapGesturesDesc => 'Độ sáng bên trái, âm lượng bên phải';

  @override
  String get playerOpenBig => 'Mở toàn màn hình';

  @override
  String get playerOpenBigDesc =>
      'Mở trình phát toàn màn hình thay vì kèm danh sách tập';

  @override
  String get playerPauseOnBlur => 'Tạm dừng khi mất tiêu điểm';

  @override
  String get playerPauseOnBlurDesc =>
      'Tạm dừng khi app bị che, như lúc kéo thanh thông báo, và phát tiếp khi bạn quay lại';

  @override
  String get playerAudioOutput => 'Đầu ra âm thanh';

  @override
  String get fontAppDefault => 'Phông chữ app';

  @override
  String get fontImport => 'Nhập phông chữ';

  @override
  String get fontSample => 'Cáo nâu nhanh nhẹn nhảy qua chó lười';

  @override
  String get playerSubtitleDelay => 'Độ trễ phụ đề';

  @override
  String get playerAudioDelay => 'Độ trễ âm thanh';

  @override
  String get playerDelayReset => 'Đặt lại';

  @override
  String get playerOnlineSubtitles => 'Phụ đề online';

  @override
  String get playerOnlineSearchHint => 'Tiêu đề và tập';

  @override
  String get playerOnlineNone => 'Không tìm thấy phụ đề';

  @override
  String playerOnlineFailed(String error) {
    return 'Tìm phụ đề thất bại: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Không tải được phụ đề này: $error';
  }

  @override
  String get playerOnlineMatch => 'Khớp với file này';

  @override
  String get playerOnlineEpisode => 'Khớp tập';

  @override
  String playerOnlineDownloads(int count) {
    return '$count lượt tải';
  }

  @override
  String get playerSeekPreview => 'Xem trước khi tua';

  @override
  String get playerSeekPreviewDesc =>
      'Hiện khung hình nhỏ phía trên thanh tua khi kéo. Mở thêm một bộ giải mã độ phân giải thấp, nên tốn thêm dữ liệu khi stream.';

  @override
  String get playerSettingsChip => 'Cài đặt';

  @override
  String get playerAudioDevice => 'Thiết bị âm thanh';

  @override
  String get settingsDownloads => 'Tải xuống';

  @override
  String get settingsDownloadsDesc =>
      'Tập ngoại tuyến, hàng đợi và chế độ ngoại tuyến';

  @override
  String get downloadsTitle => 'Tải xuống';

  @override
  String get widgetContinue => 'Tiếp tục';

  @override
  String get widgetReleases => 'Sắp phát hành';

  @override
  String get widgetMore => 'Cũng đang tiến hành';

  @override
  String get widgetNothing => 'Chưa có gì để tiếp tục';

  @override
  String get downloadStorageTitle => 'Lưu trữ';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lượt tải xuống',
      one: '1 lần tải xuống',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size đã xem hoặc đã đọc';
  }

  @override
  String get downloadFreeUp => 'Giải phóng không gian';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count đã xem lượt tải xuống',
      one: '1 lượt xem tải xuống',
    );
    return 'Xóa bỏ $_temp0 và miễn phí $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Giải phóng $size';
  }

  @override
  String get downloadDeleteWatched => 'Xóa đã xem';

  @override
  String get downloadDeleteAll => 'Xóa tất cả';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Xóa mọi bản tải xuống của $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Không có gì bạn đã hoàn thành được tải xuống';

  @override
  String get downloadStorageEmpty =>
      'Không có nội dung tải xuống nào đang sử dụng dung lượng';

  @override
  String get downloadsOpenDesc =>
      'Xem hàng đợi và mọi thứ đã lưu trên thiết bị này';

  @override
  String get downloadTitle => 'Tải xuống';

  @override
  String get downloadMetaOnly => 'Chỉ siêu dữ liệu';

  @override
  String get downloadMetaFailed => 'Không thể tạo thư mục tiêu đề';

  @override
  String downloadMetaSaved(String path) {
    return 'Đã lưu. Đặt các tập tin của bạn vào $path';
  }

  @override
  String get downloadAlready => 'Đã tải hoặc đang trong hàng đợi';

  @override
  String get downloadPickStream => 'Tải luồng nào?';

  @override
  String get downloadPickSubtitle => 'Tải phụ đề nào?';

  @override
  String get downloadPickAudio => 'Tải track âm thanh nào?';

  @override
  String get downloadNoAudio => 'Không có âm thanh thêm';

  @override
  String get downloadAudio => 'Âm thanh';

  @override
  String get downloadNoSubtitle => 'Không phụ đề';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Luồng này là playlist HLS. Muốn tải cần addon FFmpeg.';

  @override
  String get downloadSourceMissing => 'Chưa cài nguồn của tập này';

  @override
  String get downloadDashDrm => 'Luồng này được bảo vệ DRM';

  @override
  String get downloadDashNoVideo => 'Tệp kê khai DASH không có video';

  @override
  String get downloadWaitingConnection => 'Đang chờ kết nối';

  @override
  String get downloadSubtitles => 'Phụ đề';

  @override
  String get downloadDownloaded => 'Đã tải';

  @override
  String get downloadOffline => 'Ngoại tuyến';

  @override
  String get downloadDelete => 'Xóa bản tải';

  @override
  String get downloadCancel => 'Hủy';

  @override
  String get downloadPause => 'Tạm dừng';

  @override
  String get downloadPaused => 'Đã tạm dừng';

  @override
  String get downloadResume => 'Tiếp tục';

  @override
  String get downloadPauseAll => 'Tạm dừng tất cả';

  @override
  String get downloadResumeAll => 'Tiếp tục tất cả';

  @override
  String get downloadQueuedState => 'Đang chờ trong hàng đợi';

  @override
  String get downloadResolving => 'Đang lấy luồng…';

  @override
  String get downloadUsedFallback =>
      'Không có luồng khớp, đã dùng luồng đầu tiên';

  @override
  String get downloadTabQueue => 'Hàng đợi';

  @override
  String get downloadTabDone => 'Xong';

  @override
  String get downloadTabFailed => 'Thất bại';

  @override
  String get downloadEmptyQueue => 'Không có gì đang tải';

  @override
  String get downloadEmptyDone => 'Chưa tải gì';

  @override
  String get downloadEmptyFailed => 'Không có bản tải nào thất bại';

  @override
  String get downloadNext => 'Tập tiếp theo';

  @override
  String downloadNextN(int count) {
    return '$count tập tiếp theo';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Tất cả tập chưa xem ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Khoảng này ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Tất cả tập ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã xếp hàng $count tập',
      one: 'Đã xếp hàng 1 tập',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return 'Đã tải $name';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name tải thất bại';
  }

  @override
  String downloadStorage(String size) {
    return 'Bản tải đang dùng $size';
  }

  @override
  String get downloadQueueHeader => 'Hàng đợi';

  @override
  String get downloadParallel => 'Số bản tải cùng lúc';

  @override
  String get downloadParallelDesc => 'Tải từng cái một hoặc nhiều cái cùng lúc';

  @override
  String get downloadOneByOne => 'Từng cái một';

  @override
  String get downloadNotifications => 'Thông báo tải xuống';

  @override
  String get downloadNotificationsDesc =>
      'Tiến độ trực tiếp nếu hệ thống hỗ trợ, nếu không thì báo khi tải xong';

  @override
  String get downloadNotifyLive => 'Trực tiếp';

  @override
  String get downloadNotifyDone => 'Khi xong';

  @override
  String get downloadNotifyOff => 'Tắt';

  @override
  String get downloadInfoFile => 'Ghi file thông tin cạnh mỗi bản tải';

  @override
  String get downloadInfoFileDesc =>
      'Lưu luồng, chất lượng, phụ đề và mốc bỏ qua vào một file .json nhỏ';

  @override
  String get offlineHeader => 'Ngoại tuyến';

  @override
  String get offlineModeDesc =>
      'Tự động chỉ chuyển sang ngoại tuyến khi app khởi động mà không có mạng. Luôn luôn sẽ giữ ngoại tuyến cho đến khi bạn đổi.';

  @override
  String get offlineModeOff => 'Tắt';

  @override
  String get offlineModeAlways => 'Luôn luôn';

  @override
  String get offlineModeOn =>
      'Chế độ ngoại tuyến đang bật. Thay đổi được lưu ở đây và gửi đi khi bạn có mạng lại.';

  @override
  String get offlineSaved => 'Đã lưu trên thiết bị, sẽ đồng bộ khi bạn có mạng';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đã đồng bộ $count thay đổi',
      one: 'Đã đồng bộ 1 thay đổi',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thay đổi đang chờ đồng bộ',
      one: '1 thay đổi đang chờ đồng bộ',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Thay đổi đang chờ đồng bộ';

  @override
  String get offlinePendingNone => 'Không có gì đang chờ';

  @override
  String get offlineSyncNow => 'Đồng bộ ngay';

  @override
  String get offlineDiscard => 'Bỏ';

  @override
  String get downloadNotOffline =>
      'Tập này chưa được tải nên không dùng được khi ngoại tuyến';

  @override
  String get offlineModeChip => 'Ngoại tuyến';

  @override
  String get downloadNextChapter => 'Chương sau';

  @override
  String downloadNextChapters(int count) {
    return '$count chương tiếp theo';
  }

  @override
  String downloadUnread(int count) {
    return 'Tất cả chương chưa đọc ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Tất cả chương ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done/$total trang';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count trang';
  }

  @override
  String get downloadFfmpegTitle => 'Cần addon FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Luồng này là playlist HLS. Addon FFmpeg ghép các mảnh của nó thành một file mp4. Không có thì các mảnh được giữ trong thư mục tập và phát từ đó.';

  @override
  String get downloadFfmpegInstall => 'Cài đặt';

  @override
  String get downloadFfmpegInstalling => 'Đang cài FFmpeg, có thể mất một lúc…';

  @override
  String get downloadFinishing => 'Đang ghép các mảnh thành một file…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done/$total phần';
  }

  @override
  String get downloadTorrentNoFile => 'Torrent không có file video để tải';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đang tải $count mục',
      one: 'Đang tải 1 mục',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Xóa bản tải đã xem';

  @override
  String get downloadAutoDeleteDesc =>
      'Xóa bản tải khi tiến độ của bạn đạt đến tập hoặc chương đó';

  @override
  String get downloadConnections => 'Số kết nối mỗi bản tải';

  @override
  String get downloadConnectionsDesc =>
      'Chia file lớn thành nhiều phần tải cùng lúc. Một số máy chủ giới hạn việc này.';

  @override
  String get downloadPlayChoice => 'Phát từ';

  @override
  String get downloadPlayLocalDesc => 'File đã lưu trên thiết bị này';

  @override
  String get downloadPlayStream => 'Phát trực tuyến';

  @override
  String get downloadPlayStreamDesc => 'Tải tập từ nguồn';

  @override
  String get offlineFeedTitle => 'Đã tải trên thiết bị này';

  @override
  String get offlineFeedEmpty => 'Tải gì đó khi có mạng và nó sẽ hiện ở đây';

  @override
  String get offlineEnabled => 'Chế độ ngoại tuyến đang bật';

  @override
  String get offlineDisabled => 'Chế độ ngoại tuyến đang tắt';

  @override
  String get downloadReadChoice => 'Đọc từ';

  @override
  String get downloadReadLocalDesc => 'Các trang đã lưu trên thiết bị này';

  @override
  String get downloadReadOnline => 'Đọc online';

  @override
  String get downloadReadOnlineDesc => 'Tải chương từ nguồn';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Xóa $name khỏi thiết bị này?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Hủy việc tải $name? Phần đã tải sẽ bị xóa.';
  }

  @override
  String get downloadFfmpegFolder => 'Giữ dạng thư mục';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bỏ $count thay đổi chưa từng được gửi? Không hoàn tác được.',
      one: 'Bỏ thay đổi chưa từng được gửi? Không hoàn tác được.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Đang chờ Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Tạm dừng vì mạng tính phí';

  @override
  String get downloadWifiOnly => 'Chỉ Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Bản tải sẽ chờ khi bạn đang dùng dữ liệu di động';

  @override
  String get downloadMetered => 'Tạm dừng trên mạng tính phí';

  @override
  String get downloadMeteredDesc =>
      'Cũng chờ trên Wi-Fi mà thiết bị đánh dấu là tính phí';

  @override
  String get downloadSpeedLimit => 'Giới hạn tốc độ';

  @override
  String get downloadSpeedLimitDesc => 'Giới hạn tổng tốc độ tải';

  @override
  String get downloadUnlimited => 'Không giới hạn';

  @override
  String get downloadMoveToTop => 'Đưa lên đầu';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'File nào?';

  @override
  String get downloadTorrentAuto => 'Tự khớp tập';

  @override
  String get downloadTorrentLoading => 'Đang đọc torrent…';

  @override
  String get watchAutoSource => 'Tự chuyển sang nguồn tiếp theo';

  @override
  String get watchAutoSourceDesc =>
      'Nếu nguồn không tìm thấy tựa hoặc tải lỗi, thử nguồn đã cài tiếp theo';

  @override
  String get extensionTest => 'Thử extension';

  @override
  String get extensionTestCopy => 'Sao chép các lỗi kèm log';

  @override
  String get extensionTestQuery => 'Từ khóa tìm kiếm';

  @override
  String get extensionTestRun => 'Chạy';

  @override
  String get extensionTestStop => 'Dừng';

  @override
  String get extensionTestNone =>
      'Không có extension nào thuộc loại này đã cài';

  @override
  String get extensionTestNotRun => 'Chưa thử';

  @override
  String get extensionTestSearch => 'Tìm kiếm';

  @override
  String get extensionTestDetail => 'Chi tiết';

  @override
  String get extensionTestUnits => 'Tập / chương';

  @override
  String get extensionTestLinks => 'Luồng / trang';

  @override
  String extensionTestFailedAt(String step) {
    return 'Lỗi ở bước $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'Đã thử $done/$total · $passed đạt · $failed lỗi';
  }

  @override
  String get extensionTestCopyLogs => 'Sao chép tất cả kèm log đầy đủ';

  @override
  String get onboardingFeaturesTitle => 'Mọi thứ trong một nơi';

  @override
  String get onboardingFeaturesBody =>
      'Mọi thứ bạn theo dõi, xem và đọc, không phải đổi qua đổi lại giữa nhiều app.';

  @override
  String get onboardingFeatureTrack => 'Theo dõi mọi thứ';

  @override
  String get onboardingFeatureTrackDesc =>
      'Danh sách, tiến độ và điểm trên AniList, MyAnimeList, Simkl, Kitsu và MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Xem & đọc';

  @override
  String get onboardingFeatureWatchDesc =>
      'Cài extension rồi stream anime hoặc đọc manga và novel ngay trong app.';

  @override
  String get onboardingFeatureOffline => 'Mang đi ngoại tuyến';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Tải tập và chương về, rồi tiếp tục dù không có mạng.';

  @override
  String get onboardingFeatureSync => 'Giữ danh sách đồng bộ';

  @override
  String get onboardingFeatureSyncDesc =>
      'Phản chiếu danh sách giữa các dịch vụ, hoặc để bên nào đi trước thì thắng.';

  @override
  String get onboardingServices => 'Hoạt động với';

  @override
  String sourceNotifyOn(String source) {
    return 'Bạn sẽ được thông báo khi $source có nội dung mới';
  }

  @override
  String get sourceNotifyOff => 'Tắt thông báo phát hành';

  @override
  String get sourceNotifyNeedsSource =>
      'Chọn một nguồn có kết quả phù hợp trước';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Mọi thứ ($count) đã hết rồi, chẳng còn gì để chờ đợi';
  }

  @override
  String get sourceNotifyTooltipOn => 'Dừng thông báo phát hành';

  @override
  String get sourceNotifyTooltipOff => 'Thông báo cho tôi về bản phát hành mới';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Tập $number đã chiếu trên $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Các tập $from–$to đã có trên $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Chương $number đã ra mắt vào $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Các chương $from–$to đã có trên $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count tựa đề có gì đó mới mẻ';
  }

  @override
  String get navSources => 'Nguồn';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Nguồn này thuộc về $manager, không phải là dịch vụ mở rộng đang hoạt động';
  }

  @override
  String get sourceAlertsHeader => 'Thông báo phát hành';

  @override
  String get sourceAlertsSwitch => 'Kiểm tra tiêu đề đã đăng ký';

  @override
  String get sourceAlertsSwitchDesc =>
      'Mỗi lần ứng dụng mở ra, bạn hãy bật chuông đối với các tiêu đề';

  @override
  String get sourceSkipUnstarted => 'Bỏ qua những tựa sách bạn chưa bắt đầu';

  @override
  String get sourceSkipUnstartedDesc =>
      'Chưa có gì được xem hoặc đọc nhưng các tập đã tồn tại';

  @override
  String get sourceSkipUnseen => 'Bỏ qua khi bạn có các tập chưa xem';

  @override
  String get sourceSkipUnseenDesc =>
      'Bạn vẫn còn phát hành các tập để theo kịp';

  @override
  String get sourceManage => 'Đăng ký';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count danh hiệu',
      one: '1 danh hiệu',
      zero: 'Không có tiêu đề',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Kiểm tra ngay';

  @override
  String get sourceCheckNowDesc => 'Bỏ qua lịch trình và các quy tắc bỏ qua';

  @override
  String get sourceChecking => 'Đang kiểm tra…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tựa đề có gì đó mới mẻ',
      one: '1 tựa đề có gì đó mới mẻ',
      zero: 'Không có gì mới',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Chưa có đăng ký nào';

  @override
  String get sourceEmptyMessage =>
      'Nhấn vào chuông phía trên các tập của tiêu đề để được thông báo về các tập mới';

  @override
  String get sourceAll => 'Tất cả';

  @override
  String sourceInactive(String manager) {
    return 'Không hoạt động: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source chưa được cài đặt trong dịch vụ tiện ích mở rộng này';
  }

  @override
  String get sourceUnreachable => 'Nguồn không phản hồi';

  @override
  String get sourceFinished => 'Đã hoàn thành';

  @override
  String get sourceSkippedCompleted => 'Đã bỏ qua: đã hoàn thành';

  @override
  String get sourceSkippedUnstarted => 'Đã bỏ qua: chưa bắt đầu';

  @override
  String get sourceSkippedUnseen => 'Đã bỏ qua: các tập chưa xem';

  @override
  String get sourceWaiting => 'Đang chờ bản phát hành tiếp theo';

  @override
  String sourceNextCheck(String when) {
    return 'Kiểm tra tiếp theo $when';
  }

  @override
  String get sourceSoon => 'sớm thôi';

  @override
  String sourceInHours(int count) {
    return 'trong ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'trong ${count}ngày';
  }

  @override
  String sourceLatest(String number) {
    return 'Mới nhất: $number';
  }

  @override
  String get sourceMute => 'Tắt tiếng';

  @override
  String get sourceUnmute => 'Bật tiếng';

  @override
  String get sourceMuted => 'Đã tắt tiếng';

  @override
  String get sourceUnsubscribe => 'Hủy đăng ký';

  @override
  String get sourcePickAnother => 'Chọn nguồn khác';

  @override
  String get sourceOpenExtensions => 'Mở tiện ích mở rộng';

  @override
  String get sourceNoticesEmpty => 'Chưa có thông báo phát hành';

  @override
  String get sourceNoticesEmptyMessage =>
      'Các tập và chương mới từ các tựa sách đã đăng ký của bạn hiển thị ở đây';

  @override
  String get sourceOpenTitle => 'Mở tiêu đề';

  @override
  String get extensionsLoading => 'Đang tải tiện ích mở rộng…';

  @override
  String get updateWhatsNew => 'Có gì mới';

  @override
  String get updateLater => 'sau này';

  @override
  String get updateSkipVersion => 'Bỏ qua phiên bản này';

  @override
  String get updatePreparing => 'Đang chuẩn bị…';

  @override
  String get updateDownloading => 'Đang tải xuống';

  @override
  String get updateInstalling => 'Đang cài đặt…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done của $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/giây';
  }

  @override
  String updateReleased(String date) {
    return 'Đã phát hành $date';
  }

  @override
  String get updateNoAsset =>
      'Bản phát hành này không có bản tải xuống cho thiết bị của bạn';

  @override
  String get updateUpToDate => 'Bạn đang dùng phiên bản mới nhất';

  @override
  String get updateIosHint =>
      'Bản dựng iOS không có trên App Store. Lấy .ipa từ trang phát hành và tải nó bằng AltStore hoặc SideStore';

  @override
  String get updateOpenedBrowser => 'Kiểm tra trình duyệt của bạn';

  @override
  String get updateTryAgain => 'Thử lại';

  @override
  String get settingsNotifications => 'Thông báo';

  @override
  String get settingsNotificationsDesc =>
      'Cảnh báo về danh sách, tập và chương mới của bạn cũng như phản hồi nhận xét';

  @override
  String get settingsAboutUpdates => 'Giới thiệu & cập nhật';

  @override
  String get settingsAboutUpdatesDesc =>
      'Cập nhật ứng dụng, phiên bản, nhật ký, liên kết và hỗ trợ';

  @override
  String get settingsGroupAccount => 'Tài khoản của bạn';

  @override
  String get settingsGroupContent => 'Nội dung';

  @override
  String get settingsGroupApp => 'ứng dụng';

  @override
  String get settingsAnimeDesc =>
      'Trình phát, phụ đề, bỏ qua, danh sách tập và chi tiết tập';

  @override
  String get settingsMangaDesc =>
      'Chế độ đọc, điều khiển, hiển thị và theo dõi chương';

  @override
  String get settingsNovelDesc => 'Nhắn tin, lật trang, dịch và đọc to';

  @override
  String get settingsLocalPlay => 'Chơi địa phương';

  @override
  String get settingsLocalPlayDesc =>
      'Phát tệp, thư mục, luồng mạng và torrent hoặc mở sách';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Sách';

  @override
  String get settingsWatchSections => 'Phần';

  @override
  String get settingsSectionLists => 'Danh sách tập và chương';

  @override
  String get settingsSectionProgress => 'Theo dõi tiến độ';

  @override
  String get updateChannelDesc =>
      'Ổn định là bản phát hành được thử nghiệm. Bản phát hành trước và Alpha nhận được tính năng mới sớm hơn nhưng có thể bị hỏng';

  @override
  String get checkNowDesc => 'Hãy tìm ngay phiên bản mới hơn';

  @override
  String get generalSectionBasics => 'Ngôn ngữ & hành vi';

  @override
  String get generalSectionSecurity => 'Bảo mật';

  @override
  String get generalSectionPrivacy => 'Quyền riêng tư';

  @override
  String notificationsOtherService(String service) {
    return 'Chuyển sang $service để mở cái này';
  }

  @override
  String get secPlayerPlayback =>
      'Tốc độ mặc định, tự động phát, điều chỉnh video, định hướng và hình ảnh trong ảnh';

  @override
  String get secPlayerSkip => 'Tự động bỏ qua phần mở đầu, kết thúc và tóm tắt';

  @override
  String get secPlayerControls =>
      'Vuốt, giữ và chạm vào các cử chỉ và tìm kiếm bản xem trước';

  @override
  String get secPlayerSubtitles => 'Ngôn ngữ, hình thức và hiển thị phụ đề';

  @override
  String get secPlayerShaders =>
      'Nâng cấp anime và trình đổ bóng của riêng bạn';

  @override
  String get secPlayerEngine =>
      'Bộ giải mã, đầu ra video và âm thanh, đệm. Chỉ thay đổi những điều này nếu phát lại có vấn đề';

  @override
  String get secPlayerMpv => 'mpv.conf, tập lệnh và điều chỉnh nâng cao';

  @override
  String get secAnimeList => 'Các tập bổ sung và hình thu nhỏ chưa xem';

  @override
  String get secProgress =>
      'Khi tiến trình đã xem hoặc đọc của bạn được lưu vào danh sách của bạn';

  @override
  String get secAnimeDetails =>
      'Tiêu đề tập, hình thu nhỏ và tóm tắt đến từ đâu';

  @override
  String get secReaderReading =>
      'Chế độ đọc, lật trang, thu phóng và chương tiếp theo';

  @override
  String get secReaderControls =>
      'Nhấn vào vùng, phím âm lượng và tự động cuộn';

  @override
  String get secReaderDisplay => 'Nền, độ sáng, toàn màn hình và số trang';

  @override
  String get secNovelText =>
      'Phông chữ, kích thước, khoảng cách, lề và lật trang';

  @override
  String get secNovelTranslate => 'Dịch các chương trong khi bạn đọc';

  @override
  String get secNovelSpeech => 'Giọng nói, tốc độ và cao độ để đọc to';

  @override
  String get secNotifyAbout => 'Chọn loại hoạt động gửi cảnh báo';

  @override
  String get layoutTitle => 'Bố cục';

  @override
  String get layoutDesc => 'Chọn, di chuyển và ẩn các nút trên thanh';

  @override
  String get layoutHint =>
      'Kéo một nút để di chuyển nút đó (trước tiên hãy giữ trên màn hình cảm ứng). Nhấn vào một cái để cắt, di chuyển hoặc ẩn nó';

  @override
  String layoutDropInto(String zone) {
    return 'Ghé vào: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Đang di chuyển $name. Nhấn nút dán để đặt nó';
  }

  @override
  String get layoutTitleFixed => 'Tiêu đề';

  @override
  String get layoutZoneTopStart => 'Thanh trên cùng, trước tiêu đề';

  @override
  String get layoutZoneTopEnd => 'Thanh trên cùng, sau tiêu đề';

  @override
  String get layoutZoneBottomStart => 'Thanh dưới cùng, bên trái';

  @override
  String get layoutZoneBottomEnd => 'Thanh dưới cùng, bên phải';

  @override
  String get layoutZoneSecondRow => 'Ẩn: hàng thứ hai ở chế độ xem bình thường';

  @override
  String get layoutZoneOverflow => 'Ẩn: trong menu thêm';

  @override
  String get layoutEmptyZone => 'Thả nút ở đây';

  @override
  String get layoutCut => 'Cắt';

  @override
  String get layoutPaste => 'Dán vào đây';

  @override
  String get layoutHide => 'Ẩn';

  @override
  String layoutMoveTo(String zone) {
    return 'Di chuyển đến $zone';
  }

  @override
  String get layoutReset => 'Đặt lại về mặc định';

  @override
  String get layoutMore => 'Thêm';

  @override
  String get sourceWhyAction => 'Tại sao không có cảnh báo?';

  @override
  String get sourceWhyStatus => 'Trạng thái';

  @override
  String get sourceWhyLastCheck => 'Đã kiểm tra lần cuối';

  @override
  String get sourceWhyNever => 'Chưa';

  @override
  String get sourceWhyNextCheck => 'Kiểm tra tiếp theo';

  @override
  String get sourceWhyNewest => 'Mới nhất tại nguồn';

  @override
  String get sourceWhyProgress => 'Sự tiến bộ của bạn';

  @override
  String get sourceWhyListStatus => 'Trạng thái danh sách';

  @override
  String get sourceWhyFailures => 'Kiểm tra không thành công liên tiếp';

  @override
  String get sourceWhyLastRelease => 'Bản phát hành mới nhất được nhìn thấy';

  @override
  String get sourceWhyVerdictNew =>
      'Một bản phát hành mới xuất hiện ở đây ngay khi nguồn liệt kê nó và quá trình kiểm tra tiếp theo sẽ diễn ra.';

  @override
  String get sourceWhyVerdictAhead =>
      'Nguồn đã đi trước tiến độ của bạn, vì vậy bạn đã được thông báo về nó một lần. Đọc hoặc theo dõi nó để nhận thông báo tiếp theo.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Tiêu đề này bị bỏ qua bởi các quy tắc trên. Hãy thay đổi chúng trong cài đặt thông báo hoặc sử dụng Kiểm tra ngay để tiếp tục chạy.';

  @override
  String get sourceWhyVerdictBroken =>
      'Không thể truy cập nguồn hoặc đã bị xóa nên không có gì được kiểm tra.';

  @override
  String get sourceWhyVerdictMuted => 'Đăng ký này bị tắt tiếng.';

  @override
  String get externalPlayerTitle => 'Mở luồng ở nơi khác';

  @override
  String get externalCopyUrl => 'Sao chép liên kết luồng';

  @override
  String get externalCopied => 'Đã sao chép liên kết luồng';

  @override
  String get externalChooser => 'Mở trong ứng dụng khác';

  @override
  String get externalVlc => 'Mở trong VLC';

  @override
  String get externalMpv => 'Mở trong mpv';

  @override
  String get externalWebVideoCast => 'Truyền video trên web';

  @override
  String get castViaAppHint => 'Gửi luồng tới ứng dụng Web Video Cast';

  @override
  String get externalFailed =>
      'Không thể mở luồng. Trình phát đã được cài đặt chưa?';

  @override
  String get addonInstalled => 'Đã cài đặt';

  @override
  String get loadFailedActivity => 'Không thể tải hoạt động';

  @override
  String get loadFailedFavourites => 'Không thể tải mục yêu thích. Thử lại';

  @override
  String get loadFailedStats => 'Không thể tải số liệu thống kê';

  @override
  String get loadFailedReplies => 'Không thể tải câu trả lời';

  @override
  String get cantBeUndone => 'Không thể hoàn tác việc này.';

  @override
  String get searchTags => 'Tìm kiếm thẻ';

  @override
  String get spoilerTapToView => 'Tiết lộ nội dung, nhấn để xem';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'ai đó';

  @override
  String get notificationATitle => 'một tiêu đề';

  @override
  String get notificationAddedDetail => 'Đã được thêm vào AniList';

  @override
  String get updateNoReleases => 'Không tìm thấy bản phát hành nào';

  @override
  String get updateInvalidResponse => 'Phản hồi cập nhật không hợp lệ';

  @override
  String get commentsRateLimited => 'Tỷ lệ giới hạn';

  @override
  String get commentsConnectFailed => 'Không thể kết nối';

  @override
  String get dnsNoRecords => 'Không có bản ghi A nào được trả lại';

  @override
  String get importTokenRejected => 'Mã thông báo bị từ chối';

  @override
  String get developerRoleLead => 'Nhà phát triển chính';

  @override
  String get developerRoleModerator => 'Người điều hành Discord';

  @override
  String extensionManagerTitle(String type) {
    return '$type quản lý';
  }

  @override
  String extensionsOfType(String type) {
    return '$type tiện ích mở rộng';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name cài đặt';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name không cung cấp bất kỳ cài đặt nào.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Tập $episode của $title đã phát sóng';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Tập $episode đã phát sóng';
  }

  @override
  String notificationAdded(String title) {
    return '$title đã được thêm vào AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Máy chủ cập nhật không thể tìm thấy bản phát hành đó: $message';
  }

  @override
  String get installStepJre => 'Thời gian chạy Java';

  @override
  String get installStepCore => 'Lõi thời gian chạy';

  @override
  String installStepsProgress(int current, int total) {
    return 'Bước $current của $total';
  }

  @override
  String get stepWaiting => 'Đang chờ';

  @override
  String get stepChecking => 'Đang kiểm tra…';

  @override
  String get stepUpToDate => 'Cập nhật';

  @override
  String stepUpToDateWith(String detail) {
    return 'Đã cập nhật · $detail';
  }

  @override
  String get stepWillInstall => 'Sẽ được cài đặt';

  @override
  String get stepWillUpdate => 'Sẽ được cập nhật';

  @override
  String stepWillUpdateTo(String version) {
    return 'Sẽ được cập nhật lên $version';
  }

  @override
  String get stepInstalled => 'Đã cài đặt';

  @override
  String get stepNotNeeded => 'Không cần thiết ở đây';

  @override
  String get stepFailed => 'thất bại';

  @override
  String stepFailedWith(String reason) {
    return 'Thất bại: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Nó chạy trên thời gian chạy Java và lõi thời gian chạy được chia sẻ. Chúng được cài đặt đầu tiên và được cập nhật nếu chúng thay đổi.';

  @override
  String get installRuntimeNewer =>
      'Thời gian chạy mà trình quản lý này chạy có bản cập nhật.';

  @override
  String get removeJvmTitle => 'Xóa thời gian chạy Java?';

  @override
  String get removeJvmMessage =>
      'Trình quản lý tiện ích mở rộng trên máy tính để bàn ngừng hoạt động cho đến khi được cài đặt lại. Nó sẽ được tải xuống lại vào lần tiếp theo bạn cài đặt hoặc mở nó.';

  @override
  String get runtimePreparing => 'Đang chuẩn bị thời gian chạy…';

  @override
  String get calendarAll => 'Tất cả';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'truyện tranh';

  @override
  String get readerCloudflare => 'Mở trong trình duyệt (kiểm tra Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Kéo huy hiệu vào góc của thẻ đầu tiên hoặc kéo huy hiệu đã có trên đó để di chuyển huy hiệu đó. Các huy hiệu có thể hoán đổi vị trí nên không có huy hiệu nào trùng lặp. Nhấn vào một huy hiệu bên dưới để bật hoặc tắt huy hiệu đó.';

  @override
  String get statusAuto => 'Tự động';

  @override
  String get unreadCounter => 'Bộ đếm chưa đọc';

  @override
  String get unreadCounterDesc =>
      'Hiển thị số tập hoặc chương còn lại trên áp phích';

  @override
  String get settingsShortcuts => 'Phím tắt';

  @override
  String get settingsShortcutsDesc => 'Xem, thay đổi và tắt mọi phím';

  @override
  String get shortcutGroupApp => 'ứng dụng';

  @override
  String get shortcutGroupPlayer => 'Trình phát video';

  @override
  String get shortcutGroupReader => 'đầu đọc';

  @override
  String get shortcutsEnableApp => 'Phím tắt ứng dụng';

  @override
  String get shortcutsEnablePlayer => 'Phím tắt trình phát';

  @override
  String get shortcutsEnableReader => 'Phím tắt trình đọc';

  @override
  String get shortcutsEnableDesc => 'Bật hoặc tắt mọi phím trong nhóm này';

  @override
  String get shortcutNotSet => 'Chưa đặt';

  @override
  String get shortcutAddKey => 'Thêm một chìa khóa';

  @override
  String get shortcutResetOne => 'Đặt lại về mặc định';

  @override
  String get shortcutClearKeys => 'Xóa tất cả các phím';

  @override
  String get shortcutResetAll => 'Đặt lại tất cả phím tắt';

  @override
  String get shortcutResetAllDesc => 'Đặt mọi phím trở về mặc định';

  @override
  String get shortcutPress => 'Nhấn phím hoặc tổ hợp phím bạn muốn';

  @override
  String get shortcutPressHint =>
      'Mỗi sự kết hợp chỉ có thể thuộc về một hành động, vì vậy việc thực hiện một hành động sẽ di chuyển hành động đó.';

  @override
  String get shortcutSeekPercent => 'Chuyển đến một điểm của video';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Quay lại';

  @override
  String get shortcutAppFullscreen => 'Chuyển đổi toàn màn hình';

  @override
  String get shortcutAppGlass => 'Chuyển đổi chế độ kính';

  @override
  String get shortcutAppMaterialYou => 'Chuyển đổi tài liệu bạn';

  @override
  String get shortcutAppDark => 'Chuyển đổi chế độ tối';

  @override
  String get shortcutAppOled => 'Chuyển đổi màu đen OLED';

  @override
  String get shortcutAppSearch => 'Mở tìm kiếm';

  @override
  String get shortcutAppSettings => 'Mở cài đặt';

  @override
  String get shortcutAppDownloads => 'Mở tải xuống';

  @override
  String get shortcutAppNotifications => 'Mở thông báo';

  @override
  String get shortcutAppIncognito => 'Chuyển sang chế độ ẩn danh';

  @override
  String get shortcutAppShortcuts => 'Hiển thị phím tắt';

  @override
  String get shortcutPlayerPlayPause => 'Chơi hoặc tạm dừng';

  @override
  String get shortcutPlayerSeekForward => 'Tìm về phía trước';

  @override
  String get shortcutPlayerSeekBack => 'Tìm lại';

  @override
  String get shortcutPlayerSeekForwardLong => 'Tua tới 30 giây';

  @override
  String get shortcutPlayerSeekBackLong => 'Tua lại 30 giây';

  @override
  String get shortcutPlayerFrameForward => 'Khung tiếp theo';

  @override
  String get shortcutPlayerFrameBack => 'Khung trước';

  @override
  String get shortcutPlayerVolumeUp => 'Tăng âm lượng';

  @override
  String get shortcutPlayerVolumeDown => 'Giảm âm lượng';

  @override
  String get shortcutPlayerMute => 'Tắt tiếng';

  @override
  String get shortcutPlayerFullscreen => 'Toàn màn hình';

  @override
  String get shortcutPlayerNext => 'Tập tiếp theo';

  @override
  String get shortcutPlayerPrevious => 'Tập trước';

  @override
  String get shortcutPlayerSkip => 'Bỏ qua phần giới thiệu hoặc kết thúc';

  @override
  String get shortcutPlayerPanel => 'Danh sách tập';

  @override
  String get shortcutPlayerSpeedUp => 'Phát lại nhanh hơn';

  @override
  String get shortcutPlayerSpeedDown => 'Phát lại chậm hơn';

  @override
  String get shortcutPlayerSpeedReset => 'Tốc độ bình thường';

  @override
  String get shortcutPlayerSubtitleToggle => 'Bật hoặc tắt phụ đề';

  @override
  String get shortcutPlayerSubtitleCycle => 'Bài phụ đề tiếp theo';

  @override
  String get shortcutPlayerAudioCycle => 'Bản âm thanh tiếp theo';

  @override
  String get shortcutPlayerStreamCycle => 'Luồng tiếp theo';

  @override
  String get shortcutPlayerFit => 'Thay đổi video phù hợp';

  @override
  String get shortcutReaderRight => 'Trang bên phải';

  @override
  String get shortcutReaderLeft => 'Trang bên trái';

  @override
  String get shortcutReaderNextPage => 'Trang tiếp theo';

  @override
  String get shortcutReaderPreviousPage => 'Trang trước';

  @override
  String get shortcutReaderControls => 'Hiển thị hoặc ẩn điều khiển';

  @override
  String get shortcutReaderNextChapter => 'Chương tiếp theo';

  @override
  String get shortcutReaderPreviousChapter => 'Chương trước';

  @override
  String shortcutTaken(String action) {
    return 'Lấy từ $action';
  }

  @override
  String get incognitoTurnedOn => 'Chế độ ẩn danh đang bật';

  @override
  String get incognitoTurnedOff => 'Tắt chế độ ẩn danh';

  @override
  String get onHoldAnime => 'phim hoạt hình tạm dừng';

  @override
  String get onHoldManga => 'Manga tạm dừng';

  @override
  String get droppedAnime => 'phim hoạt hình bị rơi';

  @override
  String get droppedManga => 'Manga bị bỏ rơi';

  @override
  String get generalSectionDesktop => 'Máy tính để bàn';

  @override
  String get closeAction => 'Khi cửa sổ đóng lại';

  @override
  String get closeActionQuit => 'Thoát khỏi ứng dụng';

  @override
  String get closeActionWhenBusy =>
      'Tiếp tục chạy trong khay trong khi có thứ gì đó đang chạy';

  @override
  String get closeActionAlways => 'Luôn chạy trong khay';

  @override
  String get closeActionNoTray =>
      'Khay hệ thống không có ở đây nên ứng dụng sẽ thoát khi đóng';

  @override
  String get gamepadNav => 'Điều hướng trên tay cầm chơi game';

  @override
  String get gamepadNavDesc =>
      'Di chuyển xung quanh ứng dụng và điều khiển trình phát bằng bộ điều khiển trò chơi';

  @override
  String get trayShow => 'Hiển thị Dartotsu';

  @override
  String get trayQuit => 'Thoát';

  @override
  String get trayIdle => 'Không có gì đang chạy';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Đang tải xuống $count mục',
      one: 'Đang tải xuống mục $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Đồng bộ hóa danh sách của bạn';

  @override
  String get trayUpdating => 'Đang cập nhật ứng dụng';

  @override
  String get trayPlaying => 'Chơi trong một cửa sổ nhỏ';

  @override
  String get traySearch => 'Tìm kiếm';

  @override
  String get trayPauseDownloads => 'Tạm dừng tải xuống';

  @override
  String get trayResumeDownloads => 'Tiếp tục tải xuống';

  @override
  String get playerDownloadTitle => 'Đang tải xuống trình phát';

  @override
  String get playerDownloadBody =>
      'Dartotsu lấy công cụ video của nó một lần. Quá trình phát lại bắt đầu ngay khi nó sẵn sàng.';

  @override
  String get playerDownloadStarting => 'Đang bắt đầu tải xuống…';

  @override
  String get playerDownloadFailedTitle => 'Không thể tải được trình phát';

  @override
  String get playerDownloadFailedBody =>
      'Hãy kiểm tra kết nối của bạn và thử lại. Quá trình tải xuống tiếp tục ở nơi nó dừng lại.';

  @override
  String get playerDownloadRetry => 'Thử lại';

  @override
  String get playerDownloadCopy => 'Sao chép chi tiết';

  @override
  String get removePlayerTitle => 'Xóa trình phát?';

  @override
  String get removePlayerMessage =>
      'Video không thể phát cho đến khi trình phát được tải xuống lại.';

  @override
  String get trailerLoading => 'Đang tải đoạn giới thiệu…';

  @override
  String get trailerFailed =>
      'Không thể phát đoạn giới thiệu ở đây, mở nó trong trình duyệt';
}
