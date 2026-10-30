// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'App BARU terbaik untuk\njejak Anime & Manga';

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
  String get loadMore => 'Muat lagi';

  @override
  String get login => 'Log masuk';

  @override
  String get continueAsGuest => 'Teruskan sebagai tetamu';

  @override
  String get getStarted => 'Jom mula';

  @override
  String get loginWithToken => 'Log masuk dengan token';

  @override
  String get pasteTokenHint => 'Tampal token akses awak';

  @override
  String loginTo(String service) {
    return 'Log masuk ke $service';
  }

  @override
  String get settings => 'Tetapan';

  @override
  String get account => 'Akaun';

  @override
  String get about => 'Perihal';

  @override
  String get language => 'Bahasa';

  @override
  String get animationSpeed => 'Animasi';

  @override
  String get animationSpeedDesc =>
      'Kelajuan peralihan dan kesan kemunculan dalam app';

  @override
  String get animationSpeedOff => 'Mati';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ekstensi',
      one: 'Ekstensi',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Sumber tak dikenali';

  @override
  String get install => 'Pasang';

  @override
  String get update => 'Kemas kini';

  @override
  String get uninstall => 'Nyahpasang';

  @override
  String get updateInstallCancelled =>
      'Pemasangan dibatalkan. Kalau Android kata aplikasi bercanggah dengan yang dah dipasang, maksudnya tandatangan berbeza: nyahpasang versi sekarang dulu, baru pasang kemas kini';

  @override
  String updateInstallFailed(String error) {
    return 'Kemas kini gagal: $error';
  }

  @override
  String get appLock => 'Kunci aplikasi';

  @override
  String get appLockDesc =>
      'Minta kod laluan bila aplikasi dibuka atau dibuka semula selepas seketika';

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
  String get appLockUnlock => 'Masukkan kod laluan anda';

  @override
  String get appLockWrong => 'Kod laluan salah';

  @override
  String appLockWait(String seconds) {
    return 'Terlalu banyak cubaan, tunggu ${seconds}s';
  }

  @override
  String get appLockNew => 'Pilih kod laluan';

  @override
  String get appLockNewHint => '4 hingga 8 digit';

  @override
  String get appLockConfirm => 'Masukkan sekali lagi';

  @override
  String get appLockMismatch => 'Kod laluan tak sama';

  @override
  String get appLockOn => 'Kod laluan telah ditetapkan';

  @override
  String get appLockRemoveTitle => 'Masukkan kod laluan untuk matikan kunci';

  @override
  String get installFailed => 'Gagal dipasang';

  @override
  String get updateFailed => 'Gagal dikemas kini';

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
  String get noSourceSettings => 'Sumber ni tak ada tetapan';

  @override
  String get addPluginRepository => 'Tambah repositori plugin';

  @override
  String get pluginIndexUrlHint => 'URL indeks plugin';

  @override
  String get addRepository => 'Tambah repositori';

  @override
  String get pluginRepoUpdated => 'Repositori plugin dikemas kini';

  @override
  String get pluginRepoUpdateFailed => 'Gagal muat semula repositori plugin';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Batal';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';

  @override
  String get save => 'Simpan';

  @override
  String get reset => 'Set semula';

  @override
  String get clear => 'Kosongkan';

  @override
  String get test => 'Uji';

  @override
  String get testing => 'Sedang uji…';

  @override
  String get resolving => 'Sedang selesaikan…';

  @override
  String get none => 'Tiada';

  @override
  String get selectMediaService => 'Pilih perkhidmatan media';

  @override
  String get pickColor => 'Pilih warna';

  @override
  String get colorPickerCustom => 'Tersuai';

  @override
  String get colorPickerTransparent => 'Lutsinar';

  @override
  String get ltr => 'Kiri ke kanan';

  @override
  String get searchSettings => 'Cari tetapan';

  @override
  String nothingMatches(String query) {
    return 'Tiada padanan untuk \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Cari $category';
  }

  @override
  String get settingsAppearance => 'Penampilan';

  @override
  String get settingsAppearanceDesc => 'Tema, warna, mod kaca';

  @override
  String get settingsGeneral => 'Umum';

  @override
  String get settingsGeneralDesc => 'Bahasa dan tingkah laku';

  @override
  String get settingsNetwork => 'Rangkaian';

  @override
  String get settingsNetworkDesc => 'User agent, sijil, DNS dan proksi';

  @override
  String get settingsAccountDesc => 'Perkhidmatan penjejakan dan log masuk';

  @override
  String get settingsUpdates => 'Kemas kini';

  @override
  String get amoledBlack => 'Hitam AMOLED';

  @override
  String get amoledBlackDesc => 'Permukaan hitam pekat dalam mod gelap';

  @override
  String get glassMode => 'Mod kaca';

  @override
  String get glassModeDesc => 'Permukaan berkabus di atas seni pustaka awak';

  @override
  String get shelfFrame => 'Bingkai di sekeliling bahagian';

  @override
  String get shelfFrameDesc =>
      'Tunjuk kad di belakang setiap rak, atau biar baris terus atas halaman';

  @override
  String get settingsExtensionsDesc =>
      'Pengurus sumber, repositori dan pilihan ekstensi';

  @override
  String get settingsAddons => 'Addon';

  @override
  String get customPath => 'Laluan storan tersuai';

  @override
  String get customPathDesc =>
      'Tempat data app disimpan. Tekan lama untuk set semula';

  @override
  String get selectDirectory => 'Pilih direktori';

  @override
  String get differentCacheManager => 'Cache imej alternatif';

  @override
  String get differentCacheManagerDesc => 'Guna pengurus cache lain untuk imej';

  @override
  String get backupAndRestore => 'Sandaran dan pulihkan';

  @override
  String get backupAndRestoreDesc => 'Simpan atau muat keutamaan awak';

  @override
  String get backup => 'Sandaran';

  @override
  String get restore => 'Pulihkan';

  @override
  String get loadExtensionsIcon => 'Muat ikon ekstensi';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Tunjuk ikon sumber dalam senarai ekstensi';

  @override
  String get sectionStorage => 'Storan';

  @override
  String get sectionManagers => 'Pengurus';

  @override
  String get sectionOptions => 'Pilihan';

  @override
  String get backupTabBackup => 'Buat sandaran';

  @override
  String get backupTabRestore => 'Pulihkan';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys tetapan dalam $categories kategori';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Sandaran terakhir $time';
  }

  @override
  String get backupNever => 'Belum ada sandaran';

  @override
  String get backupSelectAll => 'Pilih semua';

  @override
  String get backupClearAll => 'Kosongkan';

  @override
  String backupKeys(Object count) {
    return '$count tetapan';
  }

  @override
  String get backupPassword => 'Kata laluan (pilihan)';

  @override
  String get backupPasswordHint => 'Biar kosong untuk guna lalai';

  @override
  String get backupSensitive =>
      'Termasuk token log masuk. Simpan fail ni secara peribadi';

  @override
  String get backupCreate => 'Cipta sandaran';

  @override
  String backupSaved(Object name) {
    return 'Sandaran disimpan ke $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Sandaran gagal: $error';
  }

  @override
  String get backupPickFile => 'Pilih fail sandaran';

  @override
  String get backupPickFileDesc => 'Pilih fail .json yang dibuat oleh Dartotsu';

  @override
  String get backupChooseAnother => 'Pilih fail lain';

  @override
  String get backupCreatedAt => 'Dicipta';

  @override
  String get backupAppVersion => 'Versi app';

  @override
  String get backupDevice => 'Peranti';

  @override
  String get backupAccounts => 'Akaun';

  @override
  String get backupSize => 'Saiz';

  @override
  String get backupEncrypted => 'Dilindungi kata laluan';

  @override
  String get backupUnlock => 'Buka kunci';

  @override
  String get backupWrongPassword => 'Tak dapat baca fail ni. Semak kata laluan';

  @override
  String get backupRestoreSelected => 'Pulihkan yang dipilih';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Pulihkan $count tetapan? Nilai sedia ada dalam kategori ni akan ditimpa.';
  }

  @override
  String get backupRestored =>
      'Dah dipulihkan. Mulakan semula app untuk semua berkuat kuasa';

  @override
  String backupRestoreFailed(Object error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get backupSelectOne => 'Pilih sekurang-kurangnya satu kategori';

  @override
  String get backupCatTheme => 'Penampilan';

  @override
  String get backupCatThemeDesc => 'Tema, warna, kaca, fon dan gaya kad';

  @override
  String get backupCatCommon => 'Umum';

  @override
  String get backupCatCommonDesc =>
      'Bahasa, storan, rangkaian dan pilihan ekstensi';

  @override
  String get backupCatPlayer => 'Pemain';

  @override
  String get backupCatPlayerDesc => 'Keutamaan pemain';

  @override
  String get backupCatReader => 'Pembaca';

  @override
  String get backupCatReaderDesc => 'Keutamaan pembaca';

  @override
  String get backupCatProtected => 'Akaun';

  @override
  String get backupCatProtectedDesc => 'Token log masuk dan data log masuk';

  @override
  String get backupCatOther => 'Perkhidmatan dan suapan';

  @override
  String get backupCatOtherDesc =>
      'Susun atur suapan, senarai dan pilihan perkhidmatan';

  @override
  String get logFile => 'Fail log';

  @override
  String get logFileDesc => 'Kongsi log app, atau salin laluannya di Linux';

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
  String get logFileCopied => 'Laluan log disalin';

  @override
  String get donateSheetTitle => 'Suka Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu dibina dan diselenggara oleh seorang je. Kalau berguna untuk awak, sokonglah pembangunannya.';

  @override
  String get donateLater => 'Lain kali';

  @override
  String get glassBackground => 'Latar belakang kaca';

  @override
  String get glassBackgroundDesc =>
      'Sepanduk profil awak kecuali awak tetapkan pautan imej';

  @override
  String get glassBackgroundHint =>
      'Pautan imej (biar kosong untuk sepanduk awak)';

  @override
  String get followCover => 'Ikut muka depan';

  @override
  String get followCoverDesc =>
      'Warna ikut latar belakang, dan muka depan pada halaman butiran';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Gaya kad';

  @override
  String get cardStyleDesc => 'Letak tajuk, saiz, kemajuan dan lencana';

  @override
  String get customFont => 'Fon';

  @override
  String get customFontDesc =>
      'Lalai, fail dari peranti awak, atau Google Fonts';

  @override
  String get customFontError => 'Tak dapat muat fail fon tu';

  @override
  String get googleFontError => 'Tak dapat muat turun fon tu';

  @override
  String get yourFonts => 'Fon awak';

  @override
  String get addFontFile => 'Tambah fail fon…';

  @override
  String get browseGoogleFonts => 'Layari Google Fonts…';

  @override
  String get searchGoogleFonts => 'Cari Google Fonts';

  @override
  String get defaultFont => 'Lalai';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Warna dinamik daripada sistem';

  @override
  String get jsonTheme => 'Fail tema tersuai';

  @override
  String get jsonThemeDesc =>
      'Warna langsung daripada ~/.config/dartotsu/theme.json (skrip tersuai, atau suntingan awak sendiri)';

  @override
  String get themeMode => 'Mod tema';

  @override
  String get mode => 'Mod';

  @override
  String get trackingService => 'Perkhidmatan penjejakan';

  @override
  String get signOut => 'Log keluar';

  @override
  String get signIn => 'Log masuk';

  @override
  String get notSignedIn => 'Belum log masuk';

  @override
  String signOutOf(String service) {
    return 'Log keluar daripada $service?';
  }

  @override
  String get checkForUpdates => 'Semak kemas kini';

  @override
  String get checkForUpdatesDesc => 'Beritahu bila ada keluaran GitHub baharu';

  @override
  String get updateChannel => 'Saluran kemas kini';

  @override
  String get channel => 'Saluran';

  @override
  String get stable => 'Stabil';

  @override
  String get preRelease => 'Pra-keluaran';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Semak sekarang';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Lalai';

  @override
  String currentlyUsing(String value) {
    return 'Sekarang: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Lalai (Cloudflare)';

  @override
  String get proxy => 'Proksi';

  @override
  String get proxyProtocol => 'Jenis';

  @override
  String get proxyHost => 'Hos';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Nama pengguna';

  @override
  String get proxyPassword => 'Kata laluan';

  @override
  String get optional => 'Pilihan';

  @override
  String get clearCookies => 'Kosongkan kuki';

  @override
  String get clearCookiesDesc => 'Buang semua kuki yang disimpan';

  @override
  String notImplementedArea(String area) {
    return '$area — akan datang';
  }

  @override
  String notImplementedService(String service) {
    return '$service belum sokong ni lagi.';
  }

  @override
  String get couldNotLoadResults => 'Tak dapat muat keputusan';

  @override
  String get updateCheckFailed => 'Tak dapat semak kemas kini';

  @override
  String get highRefreshRate => 'Kadar segar tinggi';

  @override
  String get highRefreshRateDesc =>
      'Guna kadar segar tertinggi yang skrin awak sokong';

  @override
  String get imageSave => 'Simpan imej';

  @override
  String imageSavedTo(String path) {
    return 'Disimpan ke $path';
  }

  @override
  String get imageActionFailed => 'Tak dapat muat turun imej';

  @override
  String get imageTitleCover => 'Muka depan';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Sepanduk';

  @override
  String get imageTitleAvatar => 'Gambar profil';

  @override
  String get verifyTls => 'Sahkan sijil';

  @override
  String get verifyTlsDesc =>
      'Tolak pelayan dengan sijil HTTPS tak sah. Matikan hanya untuk sumber yang guna sijil tandatangan sendiri';

  @override
  String get clearCookiesConfirm =>
      'Buang semua kuki yang disimpan? Ni mungkin log keluarkan awak daripada sesetengah sumber.';

  @override
  String get version => 'Versi';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Sumber, isu dan keluaran';

  @override
  String get discordDesc => 'Komuniti dan sokongan';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Sokong pembangunan';

  @override
  String get contributors => 'Penyumbang';

  @override
  String get contributorsDesc => 'Orang yang bina Dartotsu';

  @override
  String get contributorsLoadFailed => 'Tak dapat muat penyumbang';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projek yang dibina di atas Dartotsu';

  @override
  String get forksEmpty => 'Tiada fork dijumpai';

  @override
  String get sectionColors => 'Warna';

  @override
  String get sectionDisplay => 'Paparan';

  @override
  String get sectionStyle => 'Gaya';

  @override
  String get sectionCommunity => 'Komuniti';

  @override
  String get sectionAppInfo => 'Maklumat app';

  @override
  String get sectionRequests => 'Permintaan';

  @override
  String get sectionDnsProxy => 'DNS & proksi';

  @override
  String get onboardingBack => 'Kembali';

  @override
  String get onboardingNext => 'Seterusnya';

  @override
  String get onboardingSkip => 'Langkau';

  @override
  String get onboardingPaletteTitle => 'Jadikan milik awak';

  @override
  String get onboardingPaletteBody =>
      'Pilih palet. Setiap warna aksen, dari kad sampai pemain, akan ikut dia.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Cerah';

  @override
  String get themeModeDark => 'Gelap';

  @override
  String get onboardingSyncTitle => 'Segerakkan pustaka awak';

  @override
  String get onboardingSyncBody =>
      'Log masuk dengan AniList untuk bawa senarai, kemajuan dan skor awak. Atau langkau dan layari sebagai tetamu.';

  @override
  String get onboardingOpenLinks =>
      'Buka pautan AniList dan repo dalam Dartotsu';

  @override
  String get onboardingPermsTitle => 'Kebenaran';

  @override
  String get onboardingPermsBody =>
      'Benarkan ni sekarang supaya muat turun, kemas kini dan amaran berjalan tanpa gangguan. Awak boleh tukar kemudian dalam tetapan sistem.';

  @override
  String get permNotifications => 'Pemberitahuan';

  @override
  String get permNotificationsDesc =>
      'Kemajuan muat turun, episod baharu dan balasan';

  @override
  String get permStorage => 'Akses semua fail';

  @override
  String get permStorageDesc => 'Simpan muat turun ke folder Dartotsu awam';

  @override
  String get permInstall => 'Pasang kemas kini';

  @override
  String get permInstallDesc =>
      'Benarkan Dartotsu pasang kemas kini app sendiri';

  @override
  String get permBattery => 'Bateri tanpa had';

  @override
  String get permBatteryDesc =>
      'Biar muat turun panjang terus jalan di latar belakang';

  @override
  String get permGrant => 'Benarkan';

  @override
  String get linkOpenInApp => 'Buka pautan dalam Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Biar pautan AniList dan repo buka app';

  @override
  String get reviewsTitle => 'Ulasan';

  @override
  String get reviewsEmpty => 'Belum ada ulasan';

  @override
  String get reviewsFailed => 'Tak dapat muat ulasan';

  @override
  String get reviewHelpfulQuestion => 'Ulasan ni membantu tak?';

  @override
  String get reviewVoteFailed => 'Tak dapat simpan undi awak';

  @override
  String reviewHelpful(int n, int total) {
    return '$n daripada $total rasa ni membantu';
  }

  @override
  String get calendarTitle => 'Jadual tayangan';

  @override
  String get calendarToday => 'Hari ini';

  @override
  String get calendarEmpty => 'Tiada tayangan hari ni';

  @override
  String get calendarFailed => 'Tak dapat muat jadual';

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
    return 'Episod $n';
  }

  @override
  String get shareAnalytics => 'Kongsi data penggunaan tanpa nama';

  @override
  String get shareAnalyticsDesc =>
      'Bilangan pengguna tanpa nama dan laporan ranap. Tiada akaun atau data peribadi';

  @override
  String get linkOpenAnilist => 'Buka pautan AniList dalam Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Hidupkan pengendalian pautan supaya pautan anilist.co buka app';

  @override
  String get linkSettingsFailed => 'Tak dapat buka tetapan sistem';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Tunjuk apa yang awak tengah buat pada profil Discord awak. Perlukan token Discord awak.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Tunjuk apa yang awak tengah buat pada profil Discord awak. Perlukan app desktop Discord sedang berjalan.';

  @override
  String get discordBrowsing => 'Tunjuk aktiviti layaran';

  @override
  String get discordBrowsingDesc =>
      'Tunjuk juga tab, halaman atau profil yang awak tengah tengok, bukan setakat apa yang awak tonton atau baca.';

  @override
  String get discordLookHeader => 'Rupa presence';

  @override
  String get discordActivityType => 'Jenis aktiviti';

  @override
  String get discordActivityTypeDesc =>
      'Cara Discord sebut: \"Watching …\" atau \"Playing …\". Auto guna Watching untuk anime dan Playing untuk yang lain.';

  @override
  String get discordWatching => 'Menonton';

  @override
  String get discordPlaying => 'Bermain';

  @override
  String get discordCovers => 'Tunjuk muka depan';

  @override
  String get discordCoversDesc => 'Seni muka depan dan ikon Dartotsu pada kad.';

  @override
  String get discordTimer => 'Tunjuk pemasa';

  @override
  String get discordTimerDesc => 'Masa berlalu atau berbaki di bawah tajuk.';

  @override
  String get discordButtons => 'Tunjuk butang';

  @override
  String get discordButtonsDesc =>
      'Butang \"View anime / manga\" dan \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Sorokkan tajuk';

  @override
  String get discordHideTitlesDesc =>
      'Gantikan nama anime dan manga (serta muka depan dan pautannya) dengan \"Something private\".';

  @override
  String get discordConnectionHeader => 'Sambungan';

  @override
  String get listSearchHint => 'Cari dalam senarai ni';

  @override
  String get listSort => 'Isih';

  @override
  String get listFilter => 'Tapis';

  @override
  String get listRandom => 'Tajuk rawak';

  @override
  String get listReverse => 'Terbalikkan susunan';

  @override
  String get listSortDefault => 'Susunan senarai';

  @override
  String get listSortScore => 'Skor awak';

  @override
  String get listSortTitle => 'Tajuk';

  @override
  String get listSortUpdated => 'Terakhir dikemas kini';

  @override
  String get listSortProgress => 'Kemajuan';

  @override
  String get listSortReleased => 'Tarikh keluaran';

  @override
  String get listSortAverage => 'Skor purata';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genre';

  @override
  String get listFilterClear => 'Kosongkan penapis';

  @override
  String get listNoMatches => 'Tiada apa dalam senarai ni yang sepadan';

  @override
  String get discordLogin => 'Log masuk ke Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved =>
      'Disimpan. Ketuk untuk ganti, tekan lama untuk buang.';

  @override
  String get discordTokenNotSet => 'Belum ditetapkan. Ketuk untuk tambah.';

  @override
  String get discordTokenSavedSnack => 'Token Discord disimpan';

  @override
  String get discordTokenRemovedSnack => 'Token Discord dibuang';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'Hidup · ketuk untuk tukar rupanya';

  @override
  String get discordRichPresenceRowOff =>
      'Tunjuk apa yang awak tengah buat pada profil Discord awak';

  @override
  String get loginCancelled => 'Log masuk dibatalkan';

  @override
  String get invalidToken => 'Token tak sah';

  @override
  String loginFailed(String error) {
    return 'Log masuk gagal: $error';
  }

  @override
  String get malLoginFailed => 'Log masuk MyAnimeList gagal';

  @override
  String get kitsuLoginFailed =>
      'Log masuk Kitsu gagal. Semak e-mel dan kata laluan awak.';

  @override
  String get kitsuLoginTitle => 'Log masuk ke Kitsu';

  @override
  String get emailOrUsername => 'E-mel atau nama pengguna';

  @override
  String get password => 'Kata laluan';

  @override
  String get kitsuProfile => 'Profil Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Log masuk MangaBaka gagal';

  @override
  String get mangaBakaProfile => 'Profil MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Muat semula daripada MangaBaka';

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
  String get artistsLabel => 'Artis';

  @override
  String get authorsLabel => 'Pengarang';

  @override
  String get publishersLabel => 'Penerbit';

  @override
  String get licensedLabel => 'Berlesen';

  @override
  String get contentRatingLabel => 'Penarafan kandungan';

  @override
  String get yesLabel => 'Ya';

  @override
  String get noLabel => 'Tidak';

  @override
  String get ratingSteps => 'Langkah penarafan';

  @override
  String get hideNsfw => 'Sorokkan NSFW';

  @override
  String get hideNsfwDesc =>
      'Jauhkan tajuk dewasa daripada suapan dan carian, dan senaraikan entri dewasa awak sendiri di bawah Media Tersembunyi.';

  @override
  String get kitsuAccountOptions => 'Pilihan akaun Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Pilihan akaun MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Tak dapat kemas kini tetapan Kitsu awak';

  @override
  String get titleCanonical => 'Kanonik';

  @override
  String get titleRomanized => 'Dirumikan';

  @override
  String get titleLocalized => 'Setempat';

  @override
  String get ratingSystem => 'Sistem penarafan';

  @override
  String get ratingSimple => 'Mudah (3 muka)';

  @override
  String get ratingRegular => 'Biasa (5 bintang)';

  @override
  String get ratingAdvanced => 'Lanjutan (10 mata)';

  @override
  String get contentFilter => 'Penapis kandungan';

  @override
  String get contentSfw => 'Selamat untuk kerja sahaja';

  @override
  String get contentSometimes => 'Kandungan matang dalam carian';

  @override
  String get contentEverywhere => 'Kandungan matang di mana-mana';

  @override
  String get shareToGlobal => 'Kongsi ke suapan global';

  @override
  String get shareToGlobalDesc =>
      'Biar aktiviti awak muncul dalam suapan global Kitsu.';

  @override
  String get memberSince => 'Ahli sejak';

  @override
  String get location => 'Lokasi';

  @override
  String get accountType => 'Jenis akaun';

  @override
  String get accountSupporter => 'Penyokong';

  @override
  String get accountFree => 'Percuma';

  @override
  String get accountDetails => 'Butiran akaun';

  @override
  String get refreshFromKitsu => 'Muat semula daripada Kitsu';

  @override
  String get simklReadOnly => 'Simkl diberi akses baca sahaja';

  @override
  String get incognitoEditsBlocked => 'Penyamaran: suntingan senarai disekat';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Penyamaran: kemajuan tak disimpan';

  @override
  String progressSet(int progress) {
    return 'Kemajuan ditetapkan kepada $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title dibuang daripada senarai awak';
  }

  @override
  String get following => 'Mengikuti';

  @override
  String get homeSections => 'Bahagian Utama';

  @override
  String get homeSectionsHint =>
      'Seret untuk susun semula. Bahagian yang disembunyikan tak akan dimuat.';

  @override
  String get customListDeleteFailed => 'Gagal padam senarai tersuai';

  @override
  String get customListsSaveFailed => 'Gagal simpan senarai tersuai';

  @override
  String get customListsSaved => 'Senarai tersuai disimpan';

  @override
  String get listName => 'Nama senarai';

  @override
  String get addList => 'Tambah senarai';

  @override
  String voiceActorsIn(String name) {
    return 'Pelakon suara · $name';
  }

  @override
  String get animeAppearances => 'Kemunculan dalam anime';

  @override
  String get mangaAppearances => 'Kemunculan dalam manga';

  @override
  String get voicedCharacters => 'Watak yang disuarakan';

  @override
  String get animeCredits => 'Kredit anime';

  @override
  String get mangaCredits => 'Kredit manga';

  @override
  String get mainProductions => 'Produksi utama';

  @override
  String get otherWorks => 'Karya lain';

  @override
  String get prequelSequel => 'Prekuel & sekuel';

  @override
  String get previousSeason => 'Musim lepas';

  @override
  String get thisSeason => 'Musim ini';

  @override
  String get nextSeason => 'Musim depan';

  @override
  String get voiceRoles => 'Peranan suara';

  @override
  String get staffPositions => 'Jawatan kakitangan';

  @override
  String get mangaWorks => 'Karya manga';

  @override
  String get malProfile => 'Profil MyAnimeList';

  @override
  String get refreshFromMal => 'Muat semula daripada MyAnimeList';

  @override
  String get repullProfileCounts => 'Tarik semula profil dan kiraan awak';

  @override
  String get refreshed => 'Dimuat semula';

  @override
  String get simklProfile => 'Profil Simkl';

  @override
  String get refreshFromSimkl => 'Muat semula daripada Simkl';

  @override
  String get repullProfileLibrary => 'Tarik semula profil dan pustaka awak';

  @override
  String get simklSignInToSearch => 'Log masuk ke Simkl untuk cari';

  @override
  String get dropRate => 'Kadar tinggal';

  @override
  String get simklAttribution =>
      'Data dan karya seni disediakan oleh Simkl. Lihat di Simkl';

  @override
  String get onHold => 'Ditangguh';

  @override
  String get scoredBy => 'Dinilai oleh';

  @override
  String get planToWatch => 'Rancang nak tonton';

  @override
  String get planToRead => 'Rancang nak baca';

  @override
  String get timesRewatched => 'Kali tonton semula';

  @override
  String get timesReread => 'Kali baca semula';

  @override
  String get comments => 'Komen';

  @override
  String get moviesAndSeries => 'Filem & siri';

  @override
  String get trackingOnly => 'Penjejakan sahaja';

  @override
  String get signedIn => 'Dah log masuk';

  @override
  String get searchLanguage => 'Bahasa carian';

  @override
  String get savedToList => 'Disimpan dalam senarai awak';

  @override
  String get removedFromYourList => 'Dibuang daripada senarai awak';

  @override
  String get retry => 'Cuba lagi';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get details => 'Butiran';

  @override
  String get addToList => 'Tambah ke senarai';

  @override
  String get trailer => 'Treler';

  @override
  String get titleCopied => 'Tajuk disalin';

  @override
  String get linkCopied => 'Pautan disalin';

  @override
  String get watchTrailer => 'Tonton treler';

  @override
  String get copyTitle => 'Salin tajuk';

  @override
  String get copyLink => 'Salin pautan';

  @override
  String get openInBrowser => 'Buka dalam pelayar';

  @override
  String viewOnSource(String source) {
    return 'Lihat di $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Episod $ep tayang dalam $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Episod seterusnya dalam $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Bab $chapter dijangka keluar dalam lebih kurang $time';
  }

  @override
  String get logPathCopied => 'Laluan fail log disalin ke papan klip';

  @override
  String get animeSource => 'Sumber anime';

  @override
  String get mangaSource => 'Sumber manga';

  @override
  String get popular => 'Popular';

  @override
  String get latest => 'Terkini';

  @override
  String get saved => 'Disimpan';

  @override
  String get nothingMatched => 'Tiada yang sepadan';

  @override
  String get nothingSavedFromSource =>
      'Belum ada yang disimpan daripada sumber ni';

  @override
  String get sourceReturnedNothing => 'Sumber ni tak pulangkan apa-apa';

  @override
  String get checkConnectionOrSource =>
      'Semak sambungan awak atau cuba sumber lain.';

  @override
  String get tryDifferentSearch => 'Cuba kata carian lain.';

  @override
  String get savedTitlesAppearHere =>
      'Tajuk yang awak tambah ke senarai akan muncul di sini.';

  @override
  String get tryOtherFeed => 'Cuba suapan lain atau carian sebaliknya.';

  @override
  String searchSource(String source) {
    return 'Cari $source';
  }

  @override
  String get animeExtensions => 'Ekstensi anime';

  @override
  String get mangaExtensions => 'Ekstensi manga';

  @override
  String get nothingHereYet => 'Belum ada apa-apa di sini';

  @override
  String get savedOnDeviceUntilLogin =>
      'Semua di bawah disimpan pada peranti ni sampailah awak buat.';

  @override
  String get yourProfile => 'Profil awak';

  @override
  String get activity => 'Aktiviti';

  @override
  String get extensions => 'Ekstensi';

  @override
  String get logOut => 'Log keluar';

  @override
  String get logIn => 'Log masuk';

  @override
  String get logOutConfirm => 'Betul ke nak log keluar?';

  @override
  String get incognitoMode => 'Mod penyamaran';

  @override
  String get alsoBlockListEdits => 'Sekat juga suntingan senarai';

  @override
  String get offlineMode => 'Mod luar talian';

  @override
  String get switchService => 'Tukar perkhidmatan';

  @override
  String logOutOf(String name) {
    return 'Log keluar daripada $name';
  }

  @override
  String get loggedIn => 'Dah log masuk';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get nothingNew => 'Tiada yang baharu';

  @override
  String get thisWeek => 'Minggu ni';

  @override
  String get listOnly => 'Senarai sahaja';

  @override
  String get filter => 'Tapis';

  @override
  String get searchResults => 'Hasil carian';

  @override
  String get recentSearches => 'Carian terkini';

  @override
  String get searchOrSetFilter => 'Cari atau tetapkan penapis';

  @override
  String get filters => 'Penapis';

  @override
  String get showLess => 'Tunjuk kurang';

  @override
  String get showAll => 'Tunjuk semua';

  @override
  String get apply => 'Guna';

  @override
  String get preview => 'Pratonton';

  @override
  String get preset => 'Pratetap';

  @override
  String get cardNormal => 'Biasa';

  @override
  String get cardOnCard => 'Atas kad';

  @override
  String get cardInCard => 'Dalam kad';

  @override
  String get size => 'Saiz';

  @override
  String get cardWidth => 'Lebar kad';

  @override
  String get compact => 'Padat';

  @override
  String get coverAndTitleOnly => 'Muka depan dan tajuk sahaja';

  @override
  String get titleLines => 'Baris tajuk';

  @override
  String get shape => 'Bentuk';

  @override
  String get posterShape => 'Bentuk poster';

  @override
  String get cornerRadius => 'Jejari sudut';

  @override
  String get off => 'Mati';

  @override
  String get topLeft => 'Atas kiri';

  @override
  String get topRight => 'Atas kanan';

  @override
  String get bottomLeft => 'Bawah kiri';

  @override
  String get bottomRight => 'Bawah kanan';

  @override
  String get overlays => 'Tindanan';

  @override
  String get progressCount => 'Kemajuan / kiraan';

  @override
  String get pill => 'Pil';

  @override
  String get bar => 'Bar';

  @override
  String get outside => 'Luar';

  @override
  String get scoreBadge => 'Lencana skor';

  @override
  String get airingDot => 'Titik tayangan';

  @override
  String get updateAvailable => 'Kemas kini tersedia';

  @override
  String get notInstalled => 'Belum dipasang';

  @override
  String get done => 'Siap';

  @override
  String get searchOrEnterUrl => 'Cari atau masukkan URL';

  @override
  String get refresh => 'Segar semula';

  @override
  String get share => 'Kongsi';

  @override
  String get characters => 'Watak';

  @override
  String get staff => 'Kakitangan';

  @override
  String get readMore => 'Baca lagi';

  @override
  String get couldNotLoadList => 'Tak dapat muat senarai';

  @override
  String get logInToFavourite => 'Log masuk untuk tambah kegemaran';

  @override
  String get alsoKnownAs => 'Juga dikenali sebagai';

  @override
  String get hideSpoilerNames => 'Sorokkan nama spoiler';

  @override
  String get showSpoilerNames => 'Tunjuk nama spoiler';

  @override
  String get favourited => 'Dijadikan kegemaran';

  @override
  String get favourite => 'Kegemaran';

  @override
  String get couldNotOpenTitle => 'Tak dapat buka tajuk ni';

  @override
  String get nobodyHereYet => 'Belum ada sesiapa di sini';

  @override
  String get noMatches => 'Tiada padanan';

  @override
  String get gridView => 'Paparan grid';

  @override
  String get fullWidth => 'Lebar penuh';

  @override
  String get userNotFound => 'Pengguna tak dijumpai';

  @override
  String get couldNotUpdateFollow => 'Tak dapat kemas kini ikutan';

  @override
  String followedUser(String name) {
    return 'Mengikuti $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Berhenti mengikuti $name';
  }

  @override
  String get messages => 'Mesej';

  @override
  String get logInToSeeMessages => 'Log masuk untuk lihat mesej awak';

  @override
  String get editActivity => 'Sunting aktiviti';

  @override
  String get newActivity => 'Aktiviti baharu';

  @override
  String get editMessage => 'Sunting mesej';

  @override
  String get writeMessage => 'Tulis mesej';

  @override
  String get editReply => 'Sunting balasan';

  @override
  String get posted => 'Disiarkan';

  @override
  String get couldNotPost => 'Tak dapat siarkan';

  @override
  String get nothingToPreview => 'Tiada apa untuk dipratonton';

  @override
  String get writeSomethingHint =>
      'Tulis sesuatu… markdown AniList boleh guna di sini';

  @override
  String get privateMessage => 'Mesej peribadi';

  @override
  String get post => 'Siar';

  @override
  String get nothingHere => 'Tiada apa-apa di sini';

  @override
  String get noAnimeProgress => 'Tiada kemajuan anime';

  @override
  String get noMangaProgress => 'Tiada kemajuan manga';

  @override
  String get noMessages => 'Tiada mesej';

  @override
  String get writeMessageHint => 'Tulis mesej…';

  @override
  String get shareSomethingHint => 'Kongsi sesuatu…';

  @override
  String get all => 'Semua';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Kiraan';

  @override
  String get hoursWatched => 'Jam menonton';

  @override
  String get chaptersRead => 'Bab dibaca';

  @override
  String get meanScore => 'Skor min';

  @override
  String get noStatsYet => 'Belum ada statistik';

  @override
  String get totalEntries => 'Jumlah entri';

  @override
  String get episodesWatched => 'Episod ditonton';

  @override
  String get daysWatched => 'Hari menonton';

  @override
  String get volumesRead => 'Jilid dibaca';

  @override
  String get standardDeviation => 'Sisihan piawai';

  @override
  String get showMore => 'Tunjuk lagi';

  @override
  String get followsYou => 'Mengikuti awak';

  @override
  String get nobodyYet => 'Belum ada sesiapa';

  @override
  String get logInToLike => 'Log masuk untuk suka';

  @override
  String get failedToLikeActivity => 'Gagal suka aktiviti';

  @override
  String get deleteActivityConfirm => 'Padam aktiviti?';

  @override
  String get deletedActivity => 'Aktiviti dipadam';

  @override
  String get failedToDeleteActivity => 'Gagal padam aktiviti';

  @override
  String get subscribed => 'Dilanggan';

  @override
  String get unsubscribed => 'Langganan dibatalkan';

  @override
  String get failedToUpdateSubscription => 'Gagal kemas kini langganan';

  @override
  String get edit => 'Sunting';

  @override
  String get delete => 'Padam';

  @override
  String get likedBy => 'Disukai oleh';

  @override
  String get follow => 'Ikut';

  @override
  String get nameCopied => 'Nama disalin';

  @override
  String get followsEachOther => 'Saling mengikuti';

  @override
  String get unfollow => 'Nyahikut';

  @override
  String get userIdCopied => 'ID pengguna disalin';

  @override
  String get shareProfile => 'Kongsi profil';

  @override
  String get copyUserId => 'Salin ID pengguna';

  @override
  String get failedToDelete => 'Gagal padam';

  @override
  String get failedToLike => 'Gagal suka';

  @override
  String get replies => 'Balasan';

  @override
  String get reply => 'Balas';

  @override
  String get noRepliesYet => 'Belum ada balasan';

  @override
  String get favouriteAnime => 'Anime kegemaran';

  @override
  String get favouriteManga => 'Manga kegemaran';

  @override
  String get favouriteCharacters => 'Watak kegemaran';

  @override
  String get favouriteStaff => 'Kakitangan kegemaran';

  @override
  String get favouriteStudios => 'Studio kegemaran';

  @override
  String get noFavouritesYet => 'Belum ada kegemaran';

  @override
  String get yourStory => 'Cerita awak';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get justNow => 'Baru je';

  @override
  String get openImage => 'Buka imej';

  @override
  String get hideSpoiler => 'Sorokkan spoiler';

  @override
  String get showSpoiler => 'Tunjuk spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Skor';

  @override
  String get started => 'Mula';

  @override
  String get completed => 'Selesai';

  @override
  String get private => 'Peribadi';

  @override
  String get hideFromStatusLists => 'Sorokkan daripada senarai status';

  @override
  String get totalRepeats => 'Jumlah ulangan';

  @override
  String get other => 'Lain-lain';

  @override
  String get customLists => 'Senarai tersuai';

  @override
  String get activeDays => 'Hari aktif';

  @override
  String get longestStreak => 'Rentetan terpanjang';

  @override
  String get currentStreak => 'Rentetan semasa';

  @override
  String get tapOrHoverDay => 'Ketuk atau tuding pada satu hari';

  @override
  String get less => 'Kurang';

  @override
  String get more => 'Lebih';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep dalam $time';
  }

  @override
  String get sectionLoading => 'Memuatkan';

  @override
  String get querySize => 'Saiz pertanyaan';

  @override
  String get querySizeDesc =>
      'Satu pertanyaan besar memuatkan setiap baris (dan seluruh profil) dalam satu permintaan. Pertanyaan berpecah hantar permintaan kecil untuk setiap baris atau bahagian profil: setiap satu pantas dan bahagian muncul bila ia sampai.';

  @override
  String get oneBig => 'Satu besar';

  @override
  String get split => 'Berpecah';

  @override
  String get sectionSocial => 'Sosial';

  @override
  String get systemNotifications => 'Pemberitahuan sistem';

  @override
  String get feedLayout => 'Susun atur suapan';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown daripada $total ditunjuk — ketuk untuk pilih dan susun semula';
  }

  @override
  String labelSections(String label) {
    return 'Bahagian $label';
  }

  @override
  String get accountOptions => 'Pilihan akaun';

  @override
  String get anilistAccountOptions => 'Pilihan akaun AniList';

  @override
  String get sectionPrivacy => 'Privasi';

  @override
  String get hidePrivateEntries => 'Sorokkan entri peribadi';

  @override
  String get hidePrivateEntriesDesc =>
      'Jauhkan entri yang ditanda peribadi di AniList daripada suapan';

  @override
  String get anilistExcludeList => 'Kecualikan senarai anda';

  @override
  String get anilistExcludeListDesc =>
      'Jangan papar tajuk yang dah ada dalam AniList anda di halaman anime dan manga';

  @override
  String get anilistProfile => 'Profil AniList';

  @override
  String get refreshFromAnilist => 'Muat semula daripada AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Tak dapat kemas kini tetapan AniList';

  @override
  String get sectionNames => 'Nama';

  @override
  String get titleLanguage => 'Bahasa tajuk';

  @override
  String get titleLanguageDesc =>
      'Cara tajuk ditulis di mana-mana, cth. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nama kakitangan dan watak';

  @override
  String get sectionLists => 'Senarai';

  @override
  String get scoreFormat => 'Format skor';

  @override
  String get sortListsBy => 'Isih senarai mengikut';

  @override
  String labelCustomLists(String label) {
    return 'Senarai tersuai $label';
  }

  @override
  String customListsCount(int count) {
    return '$count senarai — ketuk untuk tambah atau buang';
  }

  @override
  String get mergeActivities => 'Gabungkan aktiviti';

  @override
  String minutesCount(int count) {
    return '$count minit';
  }

  @override
  String get timezone => 'Zon waktu';

  @override
  String get notSet => 'Belum ditetapkan';

  @override
  String get airingNotifications => 'Pemberitahuan tayangan';

  @override
  String get airingNotificationsDesc =>
      'Dapat pemberitahuan bila episod show yang awak ikut ditayangkan';

  @override
  String get displayAdultContent => 'Papar kandungan dewasa';

  @override
  String get displayAdultContentDesc =>
      'Masukkan tajuk 18+ dalam layar, carian dan suapan';

  @override
  String get restrictMessages => 'Hadkan mesej kepada yang diikuti';

  @override
  String get restrictMessagesDesc =>
      'Hanya orang yang awak ikut boleh mesej awak';

  @override
  String get sectionServices => 'Perkhidmatan';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return 'Perkhidmatan $label';
  }

  @override
  String nameSettings(String name) {
    return 'Tetapan $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Pilihan daripada jambatan ekstensi $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name tak dapat dimulakan: $error';
  }

  @override
  String get importLists => 'Import senarai';

  @override
  String get importListsDesc =>
      'Daripada sandaran Aniyomi, Mihon / Tachiyomi atau Kotatsu';

  @override
  String get exportLists => 'Eksport senarai';

  @override
  String get exportListsDesc => 'Ke sandaran Aniyomi, Mihon atau Kotatsu';

  @override
  String get sectionBrowse => 'Layar';

  @override
  String get readingTab => 'Tab bacaan';

  @override
  String get readingTabDesc => 'Ekstensi mana yang tab ketiga tunjuk';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Suapan lalai';

  @override
  String get defaultFeedDesc => 'Senarai mana yang dibuka dengan sumber';

  @override
  String noServiceSupports(String type) {
    return 'Tiada perkhidmatan yang sokong $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded daripada $installed sumber sedang dimuat';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Tiada perkhidmatan ekstensi yang sokong $type di sini.';
  }

  @override
  String get loadDataFrom => 'Muat data daripada';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Belum ada sumber $type yang dipasang.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Ekstensi untuk $name belum dipasang';
  }

  @override
  String get thisSource => 'sumber ni';

  @override
  String failedToAddRepository(String error) {
    return 'Gagal tambah repositori: $error';
  }

  @override
  String installedType(String type) {
    return '$type dipasang';
  }

  @override
  String availableType(String type) {
    return '$type tersedia';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Tiada ekstensi $type yang dipasang';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Tiada ekstensi $type yang tersedia';
  }

  @override
  String get nothingToShowYet => 'Belum ada apa untuk ditunjuk';

  @override
  String get addTitlesHint =>
      'Tambah beberapa tajuk ke senarai awak dan ia akan muncul di sini.';

  @override
  String get couldntLoad => 'Tak dapat dimuat';

  @override
  String get progressStyleHint =>
      'Pil dan bar bertindih atas poster; luar tunjuk kiraan yang sama sebagai teks biasa — pilih satu.';

  @override
  String get nixManagedUpdate =>
      'Binaan ni diurus oleh Nix — jalankan \"nix flake update\" pada flake awak dan bina semula, bukan kemas kini dari sini';

  @override
  String autoUpdateFailed(String error) {
    return 'Kemas kini automatik gagal ($error) — buka halaman muat turun sebaliknya';
  }

  @override
  String get unknownPreference => 'Keutamaan tak dikenali';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Jenis keutamaan tak disokong $type';
  }

  @override
  String get notYetReleased => 'Belum dikeluarkan';

  @override
  String get notStarted => 'Belum bermula';

  @override
  String get country => 'Negara';

  @override
  String get sort => 'Isih';

  @override
  String get chooseBackupDialog => 'Pilih sandaran Aniyomi, Mihon atau Kotatsu';

  @override
  String get importListsHint =>
      'Bawa pustaka dari Aniyomi, Mihon / Tachiyomi atau Kotatsu. Tajuk, muka depan, kemajuan dan kategori dikekalkan.';

  @override
  String get chooseBackupFile => 'Pilih fail sandaran';

  @override
  String importAnimeCount(int count) {
    return 'Import $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Import $count manga';
  }

  @override
  String get mergeWithExisting => 'Gabung dengan senarai sedia ada';

  @override
  String get mergeWithExistingDesc =>
      'Kekalkan apa yang awak dah ada; kalau mati, tajuk yang sepadan diganti';

  @override
  String get chooseAnother => 'Pilih yang lain';

  @override
  String get import => 'Import';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Pilih tempat simpan sandaran';

  @override
  String savedPath(String path) {
    return '$path disimpan';
  }

  @override
  String exportFailed(String error) {
    return 'Eksport gagal: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Belum ada apa dalam senarai tempatan awak.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Eksport $anime anime dan $manga manga daripada senarai tempatan awak. Kotatsu hanya sokong manga.';
  }

  @override
  String get saveToFolder => 'Simpan ke folder';

  @override
  String get formatAnimeManga => 'Anime dan manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga sahaja · .tachibk';

  @override
  String get formatMangaZip => 'Manga sahaja · .zip';

  @override
  String get genres => 'Genre';

  @override
  String get relations => 'Perkaitan';

  @override
  String get recommendations => 'Cadangan';

  @override
  String get openings => 'Opening';

  @override
  String get endings => 'Ending';

  @override
  String get background => 'Latar belakang';

  @override
  String get links => 'Pautan';

  @override
  String get rank => 'Kedudukan';

  @override
  String get members => 'Ahli';

  @override
  String get favorites => 'Kegemaran';

  @override
  String get episodes => 'Episod';

  @override
  String get chapters => 'Bab';

  @override
  String get volumes => 'Jilid';

  @override
  String get format => 'Format';

  @override
  String get source => 'Sumber';

  @override
  String get duration => 'Tempoh';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min setiap ep';
  }

  @override
  String get rating => 'Penarafan';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Bersiri';

  @override
  String get season => 'Musim';

  @override
  String get broadcast => 'Siaran';

  @override
  String get aired => 'Ditayangkan';

  @override
  String get published => 'Diterbitkan';

  @override
  String get popularity => 'Populariti';

  @override
  String get community => 'Komuniti';

  @override
  String get watching => 'Menonton';

  @override
  String get reading => 'Membaca';

  @override
  String get dropped => 'Ditinggalkan';

  @override
  String get planned => 'Dirancang';

  @override
  String get trailers => 'Treler';

  @override
  String get ratings => 'Penarafan';

  @override
  String get originalTitle => 'Asal';

  @override
  String get titleLabel => 'Tajuk';

  @override
  String get votes => 'Undi';

  @override
  String get watchedStat => 'Ditonton';

  @override
  String get runtime => 'Masa tayangan';

  @override
  String get director => 'Pengarah';

  @override
  String get network => 'Rangkaian';

  @override
  String get certification => 'Pensijilan';

  @override
  String get airs => 'Tayangan';

  @override
  String get budget => 'Bajet';

  @override
  String get revenue => 'Hasil';

  @override
  String get released => 'Dikeluarkan';

  @override
  String get tags => 'Tag';

  @override
  String get author => 'Pengarang';

  @override
  String get born => 'Lahir';

  @override
  String get website => 'Laman web';

  @override
  String get established => 'Ditubuhkan';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel';

  @override
  String get thisMonth => 'Bulan ni';

  @override
  String get movies => 'Filem';

  @override
  String get shows => 'Show';

  @override
  String get rewatching => 'Menonton semula';

  @override
  String get rereading => 'Membaca semula';

  @override
  String get watchedStatus => 'Ditonton';

  @override
  String get planning => 'Merancang';

  @override
  String get paused => 'Dijeda';

  @override
  String get watch => 'Tonton';

  @override
  String get read => 'Baca';

  @override
  String get finished => 'Tamat';

  @override
  String get releasing => 'Sedang keluar';

  @override
  String get cancelled => 'Dibatalkan';

  @override
  String get hiatus => 'Hiatus';

  @override
  String get remove => 'Buang';

  @override
  String syncToService(String service) {
    return 'Segerak ke $service';
  }

  @override
  String syncedToService(String service) {
    return 'Disegerakkan ke $service';
  }

  @override
  String get latestReleases => 'Keluaran terkini';

  @override
  String get topRated => 'Terbaik dinilai';

  @override
  String localSection(String title) {
    return '$title · Tempatan';
  }

  @override
  String get localEntryNote =>
      'Tajuk ni hanya ada dalam senarai tempatan awak pada peranti ni. Penyuntingan dimatikan di sini sebab boleh berlanggar dengan senarai akaun awak; awak masih boleh buangnya.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Kad';

  @override
  String get cardPresetCozy => 'Selesa';

  @override
  String get sortTopRated => 'Terbaik dinilai';

  @override
  String get sortMostPopular => 'Paling popular';

  @override
  String get sortTrending => 'Sedang tren';

  @override
  String get sortNewest => 'Terbaharu';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Paling digemari';

  @override
  String get anyCountry => 'Mana-mana negara';

  @override
  String get orderScore => 'Skor';

  @override
  String get orderTitle => 'Tajuk';

  @override
  String get orderLastUpdated => 'Terakhir dikemas kini';

  @override
  String get orderLastAdded => 'Terakhir ditambah';

  @override
  String get never => 'Tak pernah';

  @override
  String get always => 'Sentiasa';

  @override
  String get scorePoint100 => '100 mata';

  @override
  String get scorePoint10Decimal => '10 mata perpuluhan';

  @override
  String get scorePoint10 => '10 mata';

  @override
  String get scorePoint5 => '5 bintang';

  @override
  String get scorePoint3 => '3 mata smiley';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam',
      one: '1 jam',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
      one: '1 hari',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minggu',
      one: '1 minggu',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Sambung';

  @override
  String get resumeSourceMissing => 'Pasang sumber tajuk ni untuk sambung';

  @override
  String get resumeRemove => 'Buang daripada sambung';

  @override
  String resumeAt(String time) {
    return '$time lagi';
  }

  @override
  String resumePage(int page, int total) {
    return 'Halaman $page daripada $total';
  }

  @override
  String get continueWatching => 'Teruskan menonton';

  @override
  String get continueReading => 'Teruskan membaca';

  @override
  String get favouriteAnimeSection => 'Anime kegemaran';

  @override
  String get favouriteMangaSection => 'Manga kegemaran';

  @override
  String get plannedAnime => 'Anime dirancang';

  @override
  String get plannedManga => 'Manga dirancang';

  @override
  String get completedAnime => 'Anime selesai';

  @override
  String get completedManga => 'Manga selesai';

  @override
  String get hiddenMedia => 'Media tersembunyi';

  @override
  String get recentUpdates => 'Kemas kini terkini';

  @override
  String get trendingNow => 'Sedang tren sekarang';

  @override
  String get popularThisSeason => 'Popular musim ni';

  @override
  String get trendingMovies => 'Filem sedang tren';

  @override
  String get topRatedSeries => 'Siri terbaik dinilai';

  @override
  String get mostFavouriteSeries => 'Siri paling digemari';

  @override
  String get popularAnime => 'Anime popular';

  @override
  String get trendingManhwa => 'Manhwa sedang tren';

  @override
  String get trendingNovels => 'Novel sedang tren';

  @override
  String get topRatedManga => 'Manga terbaik dinilai';

  @override
  String get mostFavouriteManga => 'Manga paling digemari';

  @override
  String get popularManga => 'Manga popular';

  @override
  String get topMovies => 'Filem terbaik';

  @override
  String get topOna => 'ONA terbaik';

  @override
  String get topOva => 'OVA terbaik';

  @override
  String get mostPopular => 'Paling popular';

  @override
  String get mostFavourite => 'Paling digemari';

  @override
  String get upcoming => 'Akan datang';

  @override
  String get topManga => 'Manga terbaik';

  @override
  String get topManhwa => 'Manhwa terbaik';

  @override
  String get topManhua => 'Manhua terbaik';

  @override
  String get topNovels => 'Novel terbaik';

  @override
  String get topOneShots => 'One-shot terbaik';

  @override
  String get trendingMoviesToday => 'Filem sedang tren hari ni';

  @override
  String get trendingShowsToday => 'Show sedang tren hari ni';

  @override
  String get trendingMoviesWeek => 'Filem sedang tren minggu ni';

  @override
  String get trendingShowsWeek => 'Show sedang tren minggu ni';

  @override
  String get mostWatchedMoviesMonth => 'Filem paling banyak ditonton bulan ni';

  @override
  String get mostWatchedShowsMonth => 'Show paling banyak ditonton bulan ni';

  @override
  String get trendingThisWeek => 'Sedang tren minggu ni';

  @override
  String get mostWatchedThisMonth => 'Paling banyak ditonton bulan ni';

  @override
  String get repoLinksAdded => 'Pautan repo berjaya ditambah!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Ralat mendapatkan data daripada AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'KOMEN';

  @override
  String get playerNotAvailable => 'Pemain belum tersedia lagi';

  @override
  String deepLinkInitialError(String error) {
    return 'Ralat mendapatkan deep link awal: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Ralat membuka pautan: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Pautan ni tak boleh dibuka: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Ralat membuka pautan: $error';
  }

  @override
  String get forReleasingTitles => 'untuk tajuk yang sedang keluar';

  @override
  String get progress => 'Kemajuan';

  @override
  String get notes => 'Nota';

  @override
  String serviceNotFound(String id) {
    return 'Perkhidmatan \"$id\" tak dijumpai';
  }

  @override
  String get glassEffectEnabled => 'Kesan kaca dihidupkan';

  @override
  String get glassEffectDisabled => 'Kesan kaca dimatikan';

  @override
  String get materialYouEnabled => 'Material You dihidupkan';

  @override
  String get materialYouDisabled => 'Material You dimatikan';

  @override
  String get darkModeEnabled => 'Mod gelap dihidupkan';

  @override
  String get darkModeDisabled => 'Mod gelap dimatikan';

  @override
  String get animeList => 'Senarai anime';

  @override
  String get mangaList => 'Senarai manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Senarai anime $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Senarai manga $owner';
  }

  @override
  String get loadingList => 'Memuatkan senarai';

  @override
  String get earlier => 'Lebih awal';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari lalu',
      one: '1 hari lalu',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jam lalu',
      one: '1 jam lalu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minit lalu',
      one: '1 minit lalu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}min lalu';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}j lalu';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}h lalu';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}m lalu';
  }

  @override
  String get couldntLoadSource => 'Tak dapat muat sumber ni';

  @override
  String get followers => 'Pengikut';

  @override
  String couldntLoadTitle(String title) {
    return 'Tak dapat muat $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Tak dapat muat profil ni';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Suapan';

  @override
  String get stats => 'Statistik';

  @override
  String get received => 'Diterima';

  @override
  String get sent => 'Dihantar';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Tak dapat muat halaman ni';

  @override
  String get couldntLoadAllDetails => 'Tak dapat muat semua butiran';

  @override
  String get series => 'Siri';

  @override
  String get studios => 'Studio';

  @override
  String get users => 'Pengguna';

  @override
  String repositoriesTitle(String type) {
    return 'Repositori $type';
  }

  @override
  String get repositoryUrl => 'URL repositori';

  @override
  String get downloadingRepository => 'Memuat turun repositori…';

  @override
  String get noRepositories => 'Tiada repositori ditambah';

  @override
  String repoExtensionsCount(String count) {
    return '$count ekstensi';
  }

  @override
  String get searchExtensions => 'Cari ekstensi...';

  @override
  String deletePluginTitle(String name) {
    return 'Padam $name?';
  }

  @override
  String get deletePluginMessage => 'Betul ke nak padam plugin ni?';

  @override
  String pluginDeleted(String name) {
    return '$name dipadam';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name tak tersedia dalam repo yang dikonfigurasi';
  }

  @override
  String get pluginFetchFailed => 'Gagal dapatkan maklumat plugin';

  @override
  String installPluginTitle(String name) {
    return 'Pasang $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Saiz: $size';
  }

  @override
  String get installedState => 'Dipasang';

  @override
  String get errorLabel => 'Ralat:';

  @override
  String get stackTraceDetails => 'Butiran (jejak tindanan)';

  @override
  String get shareLogFile => 'Kongsi fail log';

  @override
  String get copyLogs => 'Salin log';

  @override
  String noListToEdit(String service) {
    return '$service tiada senarai untuk disunting';
  }

  @override
  String get couldNotReadFile => 'Tak dapat baca fail tu';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime anime dan $manga manga diimport';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count dah ada';
  }

  @override
  String get airingNow => 'Sedang tayang';

  @override
  String get topRatedMovies => 'Filem terbaik dinilai';

  @override
  String get koreanDramas => 'Drama Korea';

  @override
  String get chineseDramas => 'Drama China';

  @override
  String get japaneseDramas => 'Drama Jepun';

  @override
  String get thaiDramas => 'Drama Thai';

  @override
  String get turkishDramas => 'Drama Turki';

  @override
  String get miniSeries => 'Siri Mini';

  @override
  String get topRatedShows => 'Show terbaik dinilai';

  @override
  String get recommendedSection => 'Disyorkan';

  @override
  String get syncRow => 'Segerakkan senarai';

  @override
  String get syncRowDesc =>
      'Cerminkan senarai satu perkhidmatan ke akaun lain awak';

  @override
  String get syncTitle => 'Segerak';

  @override
  String get syncMainService => 'Perkhidmatan utama';

  @override
  String get syncMainServiceDesc =>
      'Senarainya jadi sumber kebenaran; setiap perkhidmatan lain yang dilog masuk dikemas kini supaya sepadan';

  @override
  String get syncAuto => 'Segerak auto';

  @override
  String get syncAutoDesc =>
      'Ambil dan segerak di latar belakang bila app dibuka dan setiap 30 minit';

  @override
  String get syncAddMissing => 'Tambah entri yang tiada';

  @override
  String get syncAddMissingDesc =>
      'Tambah juga entri yang belum ada pada perkhidmatan lain';

  @override
  String get syncOnlyForward => 'Kekalkan kemajuan lebih jauh';

  @override
  String get syncOnlyForwardDesc =>
      'Jangan kurangkan kemajuan perkhidmatan yang dah ke depan';

  @override
  String get syncFetch => 'Ambil';

  @override
  String get syncFetchAgain => 'Ambil semula';

  @override
  String get syncAll => 'Segerak semua';

  @override
  String get syncStop => 'Berhenti';

  @override
  String get syncResume => 'Sambung';

  @override
  String get syncNothingToSync =>
      'Perkhidmatan ni tak boleh disegerakkan untuk jenis ni';

  @override
  String get syncNoTargets => 'Log masuk ke perkhidmatan lain untuk segerak';

  @override
  String get syncLoadingMap => 'Memuatkan pemetaan ID';

  @override
  String get syncComparing => 'Membandingkan senarai';

  @override
  String get syncIntro =>
      'Pilih perkhidmatan utama dan tekan Ambil. Setiap perkhidmatan ditanya sekali untuk senarai awak, kemudian dibandingkan dengan yang utama.';

  @override
  String get syncStateSynced => 'Disegerakkan';

  @override
  String get syncStateOutdated => 'Tak segerak';

  @override
  String get syncStateMissing => 'Tiada dalam senarai';

  @override
  String get syncStateUnmapped => 'Tiada padanan';

  @override
  String syncPaused(String time) {
    return 'Menunggu had kadar, sambung dalam $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count hanya di $name, tak diusik';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done daripada $total';
  }

  @override
  String get syncNothingHere => 'Tiada apa untuk ditunjuk';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used daripada $max permintaan digunakan $window ni';
  }

  @override
  String get syncMinute => 'minit';

  @override
  String get syncDay => 'hari';

  @override
  String get syncNotInList => 'Belum dalam senarai';

  @override
  String get syncCleared => 'Rancangan dikosongkan';

  @override
  String get syncClear => 'Kosongkan';

  @override
  String get syncOptions => 'Pilihan';

  @override
  String get syncShared => 'Berkongsi entri dengan item lain';

  @override
  String syncNotFound(String service) {
    return 'Tak dijumpai di $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Segerak $service ($count)';
  }

  @override
  String get syncOnEdit => 'Segerak perubahan serta-merta';

  @override
  String get syncOnEditDesc =>
      'Hantar setiap kemas kini kemajuan dan suntingan senarai terus ke perkhidmatan lain yang dilog masuk';

  @override
  String syncPushed(String services) {
    return 'Disegerakkan ke $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Dihadkan kadar, cuba lagi sebentar lagi';

  @override
  String get syncAhead => 'Mana yang lebih ke depan';

  @override
  String get syncAheadDesc =>
      'Dua hala: untuk setiap tajuk, entri yang paling jauh menang dan disalin ke semua perkhidmatan lain awak';

  @override
  String syncAheadFrom(String service) {
    return 'Daripada $service';
  }

  @override
  String get syncConfirm => 'Semak sebelum segerak';

  @override
  String get syncConfirmDesc =>
      'Tunjuk apa yang Segerak semua akan ubah dan berapa permintaan diperlukan';

  @override
  String get syncPreviewTitle => 'Sedia untuk segerak';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates kemas kini, $adds nak ditambah';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Kira-kira $count permintaan';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count id perlu dicari dulu';
  }

  @override
  String get syncPreviewNothing => 'Tiada apa nak diubah';

  @override
  String get syncStart => 'Mula';

  @override
  String get syncRetry => 'Cuba lagi';

  @override
  String get syncSkip => 'Langkau item ni';

  @override
  String get syncInclude => 'Masukkan semula item ni';

  @override
  String get syncSkippedLabel => 'Dilangkau';

  @override
  String get syncChanges => 'Perbezaan';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Kemajuan';

  @override
  String get syncChangeScore => 'Skor';

  @override
  String get syncChangeDates => 'Tarikh';

  @override
  String get syncChangeRepeat => 'Kiraan tonton semula';

  @override
  String get syncFailedReason => 'Kenapa gagal';

  @override
  String get syncSkippedHint =>
      'Item yang dilangkau tak diusik, walaupun selepas ambil semula';

  @override
  String get commentsRules => 'Peraturan komen';

  @override
  String get commentsRulesBody =>
      'LANGGAR MANA-MANA PERATURAN = AWAK KENA KELUAR\n\n1. Tiada perkauman, diskriminasi atau ucapan kebencian\n2. Tiada spam atau promosi diri\n3. Langsung tiada kandungan NSFW\n4. Bahasa Inggeris sahaja, tiada pengecualian\n5. Tiada penyamaran, gangguan atau penderaan\n6. Tiada kandungan haram atau tak hormat melampau terhadap mana-mana fandom\n7. Jangan minta atau kongsi repositori atau ekstensi\n8. Spoiler hanya dengan tag spoiler dan amaran\n9. Tiada komen seksual atau tak sesuai tentang watak bawah umur\n10. Kalau salah, jangan siar!';

  @override
  String get commentsRulesAccept => 'Saya faham';

  @override
  String get commentsSortNewest => 'Terbaharu';

  @override
  String get commentsSortOldest => 'Terlama';

  @override
  String get commentsSortHighest => 'Penarafan tertinggi';

  @override
  String get commentsSortLowest => 'Penarafan terendah';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Bab $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Tapis mengikut episod';

  @override
  String get commentsFilterChapterTitle => 'Tapis mengikut bab';

  @override
  String get commentsFilterTagTitle => 'Masukkan nombor episod atau bab';

  @override
  String get commentsFilterHint => 'Nombor';

  @override
  String get commentsFilterApply => 'Tapis';

  @override
  String get commentsFilterClear => 'Tunjuk semua';

  @override
  String get commentsPlaceholder => 'Tambah komen…';

  @override
  String commentsReplyingTo(String name) {
    return 'Membalas $name';
  }

  @override
  String get commentsSend => 'Hantar';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (pilihan)';
  }

  @override
  String get commentsTagEpisode => 'episod';

  @override
  String get commentsTagChapter => 'bab';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Nombor $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag tak boleh melebihi jumlah ($total)';
  }

  @override
  String get commentsNoTag => 'Tiada tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Cari GIF';

  @override
  String get commentsGifEmpty => 'Tiada GIF dijumpai';

  @override
  String get commentsEmptyText => 'Komen tak boleh kosong';

  @override
  String get commentsBannedYou => 'Awak diharamkan daripada berkomen';

  @override
  String get commentsEdited => 'Komen disunting';

  @override
  String get commentsDeleted => 'Komen dipadam';

  @override
  String get commentsDeletedPlaceholder => '[dipadam]';

  @override
  String get commentsReported => 'Komen dilaporkan';

  @override
  String get commentsUserBanned => 'Pengguna diharamkan';

  @override
  String get commentsReport => 'Lapor';

  @override
  String get commentsReportAsk => 'Laporkan komen ni kepada moderator?';

  @override
  String get commentsDelete => 'Padam';

  @override
  String get commentsDeleteAsk => 'Komen ni akan dibuang untuk semua orang.';

  @override
  String get commentsBan => 'Haramkan';

  @override
  String get commentsBanAsk => 'Haramkan pengguna ni daripada berkomen?';

  @override
  String get commentsCopy => 'Salin';

  @override
  String get commentsViewReply => 'Lihat 1 balasan';

  @override
  String commentsViewReplies(int count) {
    return 'Lihat $count balasan';
  }

  @override
  String get commentsHideReplies => 'Sorokkan balasan';

  @override
  String get commentsLoadMore => 'Muat lagi komen';

  @override
  String get commentsEmpty => 'Belum ada komen. Jadi yang pertama!';

  @override
  String get commentsEmptyFiltered => 'Tiada komen untuk penapis ni';

  @override
  String get commentsSignIn =>
      'Log masuk ke AniList untuk baca dan tulis komen';

  @override
  String get commentsSignInMessage =>
      'Komen dikongsi antara semua perkhidmatan dan guna akaun AniList awak.';

  @override
  String get commentsUnavailable => 'Komen tak tersedia untuk tajuk ni';

  @override
  String get commentsUnavailableMessage =>
      'Ia tak dapat dipadankan dengan entri AniList.';

  @override
  String get commentsDisabled => 'Komen dimatikan';

  @override
  String get commentsDisabledMessage =>
      'Awak boleh hidupkannya semula dalam Tetapan › Umum.';

  @override
  String get commentsOffline => 'Tak dapat muat komen';

  @override
  String get commentsSingleTitle => 'Menunjukkan satu komen';

  @override
  String get commentsShowAll => 'Tunjuk semua komen';

  @override
  String get commentsSettingsHeader => 'Komen';

  @override
  String get commentsSettingEnabled => 'Komen';

  @override
  String get commentsSettingEnabledDesc =>
      'Tunjuk tab Komen pada tajuk dan log masuk ke pelayan komen dengan akaun AniList awak';

  @override
  String get commentsSettingAlerts => 'Pemberitahuan balasan';

  @override
  String get commentsSettingAlertsDesc =>
      'Beritahu saya bila ada orang balas komen saya';

  @override
  String get commentsNoticeReplyTitle => 'Balasan komen baharu';

  @override
  String commentsNoticeReply(String name) {
    return '$name membalas komen awak';
  }

  @override
  String get commentsNoticeWarningTitle => 'Awak dapat amaran';

  @override
  String get commentsNoticeWarning => 'Lebih berhati-hati dengan komen awak';

  @override
  String get commentsNoticeUpdateTitle => 'Kemas kini daripada Dantotsu';

  @override
  String get barcodeTitle => 'Imbas kod bar';

  @override
  String get barcodeTooltip => 'Cari manga atau novel daripada kod bar';

  @override
  String get barcodeIntro =>
      'Halakan kamera ke kod bar di belakang jilid, atau taip ISBN-nya.';

  @override
  String get barcodeIntroManual =>
      'Taip ISBN yang dicetak di atas kod bar di belakang jilid.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Tu bukan ISBN yang sah';

  @override
  String barcodeNotFound(String isbn) {
    return 'Tiada buku dijumpai untuk $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamera tak tersedia. Benarkan akses kamera atau taip ISBN sebaliknya.';

  @override
  String get themesTitle => 'Opening & ending';

  @override
  String get themesPlayVideo => 'Main video';

  @override
  String get themesPlayAudio => 'Main audio sahaja';

  @override
  String get themesOpenSite => 'Buka di AnimeThemes';

  @override
  String get themesCredit => 'Tema daripada AnimeThemes';

  @override
  String get themesVersions => 'Versi';

  @override
  String get sauceTitle => 'Cari sumber';

  @override
  String get sauceIntro =>
      'Muat naik halaman manga atau karya seni, atau tampal pautannya, untuk cari dari mana ia datang.';

  @override
  String get sauceKeyTitle => 'Kunci API SauceNAO';

  @override
  String get sauceKeyHint => 'Pilihan, naikkan had carian harian';

  @override
  String get sauceKeyDesc => 'Dapatkan kunci percuma di saucenao.com/user.php';

  @override
  String get sauceOpen => 'Buka sumber';

  @override
  String get sauceCredit => 'Carian imej oleh SauceNAO';

  @override
  String get sauceEmpty => 'Tiada padanan dijumpai';

  @override
  String get sauceTooltip => 'Cari sumber halaman manga atau karya seni';

  @override
  String get trendzTitle => 'Carta anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Watak perempuan';

  @override
  String get trendzMale => 'Watak lelaki';

  @override
  String get trendzCouple => 'Pasangan';

  @override
  String get trendzCredit => 'Carta mingguan oleh AniTrendz';

  @override
  String get trendzNew => 'BARU';

  @override
  String get trendzEmpty => 'Carta kosong';

  @override
  String get shareCard => 'Kad kongsi';

  @override
  String get shareCardList => 'Kongsi kad senarai';

  @override
  String get shareCardSaved => 'Kad disimpan';

  @override
  String get shareCardFailed => 'Tak dapat buat kad';

  @override
  String get shareCardListEmpty => 'Senarai awak belum ada apa nak dikongsi';

  @override
  String get shareCardTop => 'Pilihan teratas saya';

  @override
  String themesEpisodes(String eps) {
    return 'Episod $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% padan';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Minggu $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count undi';
  }

  @override
  String trendzPeak(String rank) {
    return 'Puncak #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count minggu dalam sepuluh teratas';
  }

  @override
  String get imageSearchTitle => 'Cari ikut imej';

  @override
  String get imageSearchTooltip => 'Cari anime daripada tangkapan skrin';

  @override
  String get imageSearchIntro =>
      'Pilih tangkapan skrin atau tampal pautan imej dan trace.moe akan cari episod dan detik ia datang.';

  @override
  String get imageSearchPick => 'Pilih imej';

  @override
  String get imageSearchLinkHint => 'Tampal pautan imej';

  @override
  String get imageSearchGo => 'Cari';

  @override
  String get imageSearchEmpty => 'Tiada padanan dijumpai';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episod $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'pada $time';
  }

  @override
  String get imageSearchPreview => 'Klip pratonton';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% padan';
  }

  @override
  String get imageSearchCredit => 'Dikuasakan oleh trace.moe';

  @override
  String get imageSearchOpenFailed => 'Tak dapat buka tajuk ni';

  @override
  String get groups => 'Kumpulan';

  @override
  String get groupsYours => 'Kumpulan awak';

  @override
  String get groupsPopular => 'Popular';

  @override
  String get groupsNew => 'Baharu';

  @override
  String get groupsFeatured => 'Pilihan';

  @override
  String get groupsSearch => 'Cari kumpulan';

  @override
  String get groupsAll => 'Semua';

  @override
  String get groupsEmpty => 'Tiada kumpulan dijumpai';

  @override
  String get groupsEmptyYours => 'Awak belum sertai mana-mana kumpulan lagi';

  @override
  String get groupsSignIn => 'Log masuk untuk lihat kumpulan yang awak sertai';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ahli',
      one: '1 ahli',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Sertai';

  @override
  String get groupsJoined => 'Disertai';

  @override
  String get groupsLeave => 'Tinggalkan kumpulan';

  @override
  String get groupsLeaveAsk =>
      'Awak tak akan nampak siaran kumpulan ni dalam suapan awak lagi.';

  @override
  String get groupsJoinFailed =>
      'Tak dapat sertai kumpulan ni, mungkin jemputan sahaja';

  @override
  String get groupsLeaveFailed => 'Tak dapat tinggalkan kumpulan ni';

  @override
  String get groupsPosts => 'Siaran';

  @override
  String get groupsMembersTab => 'Ahli';

  @override
  String get groupsAbout => 'Perihal';

  @override
  String get groupsRules => 'Peraturan';

  @override
  String get groupsPrivacyOpen => 'Terbuka';

  @override
  String get groupsPrivacyRestricted => 'Terhad';

  @override
  String get groupsPrivacyClosed => 'Tertutup';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Tak dapat muat kumpulan ni';

  @override
  String get groupsNewPost => 'Siar ke kumpulan';

  @override
  String get groupsPostHint => 'Kongsi sesuatu dengan kumpulan';

  @override
  String get groupsOpenInBrowser => 'Buka dalam pelayar';

  @override
  String get groupsCategory => 'Kategori';

  @override
  String get groupsLanguage => 'Bahasa';

  @override
  String get groupsCreated => 'Dicipta';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ketua',
      one: '1 ketua',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privasi';

  @override
  String get notificationsAll => 'Semua';

  @override
  String get notificationsAiring => 'Sedang tayang';

  @override
  String get notificationsMedia => 'Tajuk baharu';

  @override
  String get notificationsReplies => 'Balasan';

  @override
  String get notificationsMentions => 'Sebutan';

  @override
  String get notificationsMessages => 'Mesej';

  @override
  String get notificationsLikes => 'Suka';

  @override
  String get notificationsFollows => 'Ikutan';

  @override
  String get notificationsNoServices =>
      'Tiada perkhidmatan yang dilog masuk ada pemberitahuan';

  @override
  String get notificationsNoServicesMessage =>
      'Log masuk ke perkhidmatan yang hantar pemberitahuan dan ia akan muncul di sini.';

  @override
  String get notificationsEmptyKind => 'Belum ada apa dalam kategori ni';

  @override
  String get notificationsCommentsEmpty => 'Tiada pemberitahuan komen';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Balasan kepada komen awak dan pengumuman daripada Dantotsu muncul di sini.';

  @override
  String get notificationsSettings => 'Tetapan pemberitahuan';

  @override
  String get notificationsPollTitle => 'Semak pemberitahuan baharu';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Setiap $minutes minit semasa app dibuka';
  }

  @override
  String get notificationsNotifyAbout => 'Beritahu saya tentang';

  @override
  String get notificationsCommentsHeader => 'Pemberitahuan komen';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Tunjuk pemberitahuan sistem untuk setiap pemberitahuan $service yang belum dibaca semasa app berjalan.';
  }

  @override
  String get notificationsTestSent => 'Pemberitahuan ujian dihantar';

  @override
  String get notificationsTestDenied =>
      'Pemberitahuan tak dibenarkan untuk Dartotsu. Hidupkan dalam tetapan sistem.';

  @override
  String get notificationsTestHint =>
      'Tekan lama untuk hantar pemberitahuan ujian';

  @override
  String get notificationsTestSample => 'Ni pemberitahuan ujian';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name membalas komen awak dalam $media';
  }

  @override
  String get imageSearchNotLink => 'Tu tak nampak macam pautan';

  @override
  String get imageSearchQuota => 'Kuota carian melebihi had';

  @override
  String get imageSearchBusy =>
      'Terlalu banyak permintaan, cuba lagi sebentar lagi';

  @override
  String imageSearchFailed(int code) {
    return 'Carian gagal ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count pemberitahuan baharu';
  }

  @override
  String get reactionsTitle => 'Reaksi';

  @override
  String get reactionsNeedEntry =>
      'Tambah tajuk ni ke senarai awak sebelum bereaksi';

  @override
  String get reactionsAdd => 'Tambah reaksi';

  @override
  String get reactionsHint => 'Apa pendapat awak? (ringkas dan tanpa spoiler)';

  @override
  String get reactionsPost => 'Siar';

  @override
  String get reactionsFailed => 'Tak dapat kemas kini reaksi';

  @override
  String get settingsWatch => 'Tonton & baca';

  @override
  String get settingsWatchDesc =>
      'Senarai episod, padanan sumber dan butiran episod';

  @override
  String get watchSettingsLayout => 'Senarai episod';

  @override
  String get watchSettingsSources => 'Sumber';

  @override
  String get watchSettingsMetadata => 'Butiran episod';

  @override
  String get watchLayout => 'Susun atur';

  @override
  String get watchListView => 'Senarai';

  @override
  String get watchGridView => 'Grid';

  @override
  String get watchCompactView => 'Padat';

  @override
  String get watchDefaultLayoutDesc =>
      'Cara episod dan bab disusun sehingga awak tukar untuk sesuatu tajuk';

  @override
  String get watchChunkSize => 'Saiz julat';

  @override
  String get watchChunkSizeDesc => 'Berapa episod atau bab setiap tab julat';

  @override
  String get watchShowDescription => 'Tunjuk penerangan';

  @override
  String get watchShowDescriptionDesc =>
      'Tunjuk ringkasan episod di bawah setiap tajuk dalam susun atur senarai';

  @override
  String get watchShowFiller => 'Tunjuk episod filler';

  @override
  String get watchShowFillerDesc =>
      'Matikan untuk sorok episod yang ditanda filler';

  @override
  String get watchBlurUnwatched => 'Sorokkan lakaran kecil spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Kaburkan lakaran kecil episod yang belum awak tonton';

  @override
  String get watchResumeShelf => 'Rak sambung';

  @override
  String get watchResumeShelfDesc => 'Tunjuk baris Sambung di Utama';

  @override
  String get watchMarkOnLongPress => 'Tekan lama untuk tanda kemajuan';

  @override
  String get watchMarkOnLongPressDesc =>
      'Tekan lama pada episod atau bab untuk tanda ditonton atau belum';

  @override
  String get watchMatching => 'Padanan sumber';

  @override
  String get watchMatchingDesc =>
      '\"Paling hampir\" ambil hasil carian terbaik. \"Tepat sahaja\" hanya terima tajuk yang hampir sama dan biar awak pilih yang lain.';

  @override
  String get watchMatchClosest => 'Padanan paling hampir';

  @override
  String get watchMatchExact => 'Padanan tepat sahaja';

  @override
  String get watchMetadataDesc =>
      'Dari mana tajuk episod, ringkasan, lakaran kecil, tarikh tayangan dan tanda filler datang. Seret untuk tetapkan keutamaan; sumber pertama yang ada nilai menang.';

  @override
  String get watchMetaAniZipDesc =>
      'Tajuk episod, ringkasan, gambar pegun dan tarikh tayangan';

  @override
  String get watchMetaKitsuDesc => 'Tajuk episod, penerangan dan lakaran kecil';

  @override
  String get watchMetaSimklDesc =>
      'Tajuk episod, penerangan, gambar pegun dan tarikh tayangan';

  @override
  String get watchMetaAniListDesc =>
      'Tajuk episod penstriman, lakaran kecil dan jadual tayangan';

  @override
  String get watchMetaTenraiDesc =>
      'Tajuk episod, tarikh tayangan, tanda filler dan recap MyAnimeList melalui Tenrai';

  @override
  String get watchClearMetadata => 'Muat semula butiran episod';

  @override
  String get watchClearMetadataDesc =>
      'Lupakan butiran episod yang dicache supaya diambil semula';

  @override
  String get watchMetadataCleared => 'Butiran episod akan diambil semula';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episod',
      one: '1 episod',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bab',
      one: '1 bab',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episod $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Bab $number';
  }

  @override
  String get watchSearching => 'Sedang cari…';

  @override
  String watchSearchingFor(String term) {
    return 'Sedang cari: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Dipilih: $title';
  }

  @override
  String watchFound(String title) {
    return 'Dijumpai: $title';
  }

  @override
  String get watchNothingFound => 'Tiada apa dijumpai pada sumber ni';

  @override
  String get watchSearchFailed => 'Carian sumber gagal';

  @override
  String get watchLoadFailed => 'Tak dapat muat senarai';

  @override
  String get watchSignInToTrack => 'Log masuk untuk jejak kemajuan awak';

  @override
  String watchInstallSource(String action) {
    return 'Pasang ekstensi untuk mula $action';
  }

  @override
  String get watchSourceMissing => 'Sumber ni belum dipasang';

  @override
  String get watchWrongTitle => 'Tajuk salah?';

  @override
  String get watchSearchAgain => 'Cari lagi';

  @override
  String watchSearchSource(String source) {
    return 'Cari $source';
  }

  @override
  String get watchSource => 'Sumber';

  @override
  String get watchOptions => 'Pilihan';

  @override
  String get watchReverse => 'Terbalikkan susunan';

  @override
  String get watchScanlators => 'Kumpulan';

  @override
  String get watchResetOptions => 'Set semula pilihan ni';

  @override
  String get watchContinue => 'Teruskan';

  @override
  String get watchStart => 'Mula';

  @override
  String get watchPlay => 'Main';

  @override
  String get watchRead => 'Baca';

  @override
  String get watchMarkWatched => 'Tanda ditonton';

  @override
  String get watchMarkUnwatched => 'Tanda belum ditonton';

  @override
  String get watchMarkRead => 'Tanda dibaca';

  @override
  String get watchMarkUnread => 'Tanda belum dibaca';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Tiada episod dijumpai';

  @override
  String get watchNoChapters => 'Tiada bab dijumpai';

  @override
  String get watchSourceTools => 'Alat sumber';

  @override
  String get watchSourceSettings => 'Tetapan sumber';

  @override
  String get watchOpenWebView => 'Buka dalam paparan web';

  @override
  String get watchOpenWebViewDesc =>
      'Selesaikan semakan Cloudflare atau log masuk; kuki dikongsi dengan permintaan sumber';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kuki disimpan untuk $host',
      one: '1 kuki disimpan untuk $host',
      zero: 'Tiada kuki disimpan untuk $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Kebenaran Cloudflare aktif, $time';
  }

  @override
  String get watchClearanceMissing => 'Tiada kuki kebenaran Cloudflare';

  @override
  String get watchClearanceSession => 'kekal sehingga app ditutup';

  @override
  String get watchAgentShared =>
      'Permintaan guna ejen pengguna paparan web, yang diperiksa oleh Cloudflare';

  @override
  String get watchAgentCustom =>
      'Ejen pengguna tersuai ditetapkan, jadi kebenaran Cloudflare daripada paparan web mungkin ditolak';

  @override
  String get watchTestConnection => 'Uji sambungan';

  @override
  String get watchSolveChallenge => 'Selesaikan';

  @override
  String watchProbeOk(int code) {
    return 'Boleh dicapai (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare masih minta semakan';

  @override
  String watchProbeBlocked(int code) {
    return 'Disekat oleh laman (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Laman tak dapat dicapai';

  @override
  String get watchClearCookies => 'Kosongkan kuki untuk laman ni';

  @override
  String get watchCookiesCleared => 'Kuki dikosongkan';

  @override
  String get watchMetaSource => 'Butiran episod daripada';

  @override
  String get watchMetaAuto => 'Automatik';

  @override
  String get watchMetaOff => 'Mati';

  @override
  String get playerSettingsTitle => 'Tetapan pemain';

  @override
  String get playerSectionPlayback => 'Main balik';

  @override
  String get playerSectionSkip => 'Langkau';

  @override
  String get playerSectionGestures => 'Kawalan';

  @override
  String get playerSectionSubtitles => 'Sari kata';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Enjin';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Kelajuan main balik';

  @override
  String get playerCursedSpeed => 'Kelajuan tambahan';

  @override
  String get playerCursedSpeedDesc =>
      'Tambah kelajuan sehingga 10x ke dalam senarai';

  @override
  String get playerResize => 'Mod saiz semula';

  @override
  String get playerFitFit => 'Muat';

  @override
  String get playerFitCover => 'Penuhi';

  @override
  String get playerFitStretch => 'Regang';

  @override
  String get playerSkipDuration => 'Panjang butang langkau';

  @override
  String get playerSkipDurationDesc =>
      'Saat butang langkau melompat di luar opening dan ending';

  @override
  String get playerSeekDuration => 'Cari dengan ketuk dua kali';

  @override
  String get playerSeekDurationDesc =>
      'Saat untuk melompat bila ketuk dua kali atau tekan kekunci anak panah';

  @override
  String get playerAutoPlay => 'Main seterusnya secara automatik';

  @override
  String get playerAutoPlayDesc => 'Mula episod seterusnya bila yang ni tamat';

  @override
  String get playerResume => 'Sambung dari tempat awak berhenti';

  @override
  String get playerResumeDesc => 'Sambung episod dari kedudukan terakhirnya';

  @override
  String get playerOrientation => 'Orientasi';

  @override
  String get playerOrientationAuto => 'Ikut peranti';

  @override
  String get playerOrientationLandscape => 'Landskap';

  @override
  String get playerOrientationPortrait => 'Potret';

  @override
  String get playerAutoSkipOpening => 'Langkau opening';

  @override
  String get playerAutoSkipEnding => 'Langkau ending';

  @override
  String get playerAutoSkipRecap => 'Langkau recap';

  @override
  String get playerAutoSkipDesc =>
      'Terus lompat bila bermula, guna AniSkip dan cap masa strim';

  @override
  String get playerSkipOnce => 'Langkau sekali sahaja';

  @override
  String get playerSkipOnceDesc =>
      'Jangan langkau bahagian yang sama lagi kalau awak cari balik ke situ';

  @override
  String get playerAdjustBrightness => 'Gerak isyarat kecerahan';

  @override
  String get playerAdjustBrightnessDesc =>
      'Leret atas dan bawah pada separuh kanan skrin';

  @override
  String get playerAdjustVolume => 'Gerak isyarat kelantangan';

  @override
  String get playerAdjustVolumeDesc =>
      'Leret atas dan bawah pada separuh kiri skrin';

  @override
  String get playerHoldToSpeed => 'Tahan untuk laju';

  @override
  String get playerHoldToSpeedDesc =>
      'Tekan dan tahan video untuk main lebih laju, seret ke tepi untuk tukar kelajuan';

  @override
  String get playerThumbless => 'Bar carian lebih tebal';

  @override
  String get playerThumblessDesc => 'Bar tebal tanpa thumb';

  @override
  String get playerShowSubtitles => 'Tunjuk sari kata';

  @override
  String get playerShowSubtitlesDesc =>
      'Matikan untuk sorok semua trek sari kata';

  @override
  String get playerSubtitleLanguage => 'Bahasa sari kata pilihan';

  @override
  String get playerSubtitleSize => 'Saiz sari kata';

  @override
  String get playerSubtitleWeight => 'Ketebalan sari kata';

  @override
  String get playerSubtitleBottom => 'Pelapik bawah sari kata';

  @override
  String get playerSubtitleFont => 'Fon sari kata';

  @override
  String get playerSubtitleColor => 'Warna sari kata';

  @override
  String get playerSubtitleBackground => 'Latar sari kata';

  @override
  String get playerSubtitleOutline => 'Garis luar sari kata';

  @override
  String get playerLibass => 'Guna libass';

  @override
  String get playerLibassDesc =>
      'Render sari kata .ass berstail. Saiz, warna dan fon di atas tak terpakai lagi';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Hidupkan shader';

  @override
  String get playerShadersEnableDesc =>
      'Naik taraf dan bersihkan gambar dengan shader GLSL seperti Anime4K';

  @override
  String get playerShadersOff => 'Shader mati';

  @override
  String get playerShadersMissing => 'Anime4K belum dipasang';

  @override
  String get playerShadersMissingDesc =>
      'Muat turun pek shader Anime4K (kira-kira 0.8 MB) untuk guna mod terbina dalam.';

  @override
  String get playerShadersDownload => 'Muat turun Anime4K';

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
  String get playerShadersPreview => 'Pratonton pada bingkai ni';

  @override
  String get playerShadersUse => 'Guna ni';

  @override
  String get playerPicture => 'Gambar';

  @override
  String get playerColors => 'Warna';

  @override
  String get playerColorDefault => 'Lalai';

  @override
  String get playerColorVivid => 'Terang jelas';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Lembut';

  @override
  String get playerColorCinematic => 'Sinematik';

  @override
  String get playerColorBright => 'Cerah';

  @override
  String get playerColorNight => 'Malam';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Tersuai';

  @override
  String get playerColorBrightness => 'Kecerahan';

  @override
  String get playerColorContrast => 'Kontras';

  @override
  String get playerColorSaturation => 'Ketepuan';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'Set semula';

  @override
  String get playerColorAdjust => 'Laras';

  @override
  String get playerShadersOriginal => 'Asal';

  @override
  String get playerShadersPreviewFailed =>
      'Tak dapat ambil bingkai untuk pratonton';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Shader awak';

  @override
  String get playerShadersCustom => 'Shader tersuai';

  @override
  String get playerShadersImport => 'Import .glsl';

  @override
  String get playerShadersNone =>
      'Import fail .glsl atau .hook sendiri dan tandakan untuk dirantai';

  @override
  String get playerShadersBadFile => 'Pilih fail shader .glsl atau .hook';

  @override
  String get playerDecoder => 'Penyahkod';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (selamat)';

  @override
  String get playerDecoderSoftware => 'Perisian';

  @override
  String get playerDecoderHardware => 'Perkakasan';

  @override
  String get playerDecoderHardwarePlus => 'Perkakasan+';

  @override
  String get playerVideoOutput => 'Output video';

  @override
  String get playerAudioChannels => 'Saluran audio';

  @override
  String get playerBuffer => 'Saiz penimbal (MB)';

  @override
  String get playerBufferDesc =>
      'Memori yang pemain boleh guna untuk menimbal strim';

  @override
  String get playerUseMpvConf => 'Guna mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Guna pilihan dalam mpv.conf awak bila main balik bermula';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Sunting konfigurasi mpv';

  @override
  String get playerMpvConfDesc =>
      'Satu pilihan setiap baris, macam --hwdec=auto dalam mpv.conf biasa. Profil dalam [kurungan] diabaikan.';

  @override
  String get playerMpvConfSaved => 'mpv.conf disimpan';

  @override
  String get playerUseScripts => 'Guna skrip mpv';

  @override
  String get playerUseScriptsDesc =>
      'Muat plugin daripada folder skrip. Ia perlukan binaan libmpv dengan sokongan Lua atau JavaScript';

  @override
  String get playerScripts => 'Skrip mpv';

  @override
  String get playerScriptsManage => 'Tambah, buang dan tukar plugin';

  @override
  String get playerScriptsAdd => 'Tambah skrip';

  @override
  String get playerScriptsDesc =>
      'Plugin Lua, JavaScript dan natif yang diletakkan di sini dimuat bila main balik bermula.';

  @override
  String get playerScriptsNone => 'Belum ada skrip';

  @override
  String get playerScriptsBadFile => 'Pilih fail .lua, .js atau plugin natif';

  @override
  String get playerTuning => 'Penalaan video lanjutan';

  @override
  String get playerTuningDesc =>
      'Tindih segerak, caching, penskalaan dan pemetaan ton. Nilai salah boleh jejas main balik';

  @override
  String get playerVideoSync => 'Segerak video';

  @override
  String get playerInterpolation => 'Interpolasi bingkai';

  @override
  String get playerInterpolationDesc =>
      'Gerakan lancar, perlukan segerak display-resample';

  @override
  String get playerPitch => 'Pembetulan pic';

  @override
  String get playerPitchDesc => 'Kekalkan suara semula jadi pada kelajuan lain';

  @override
  String get playerCacheSeconds => 'Cache (saat)';

  @override
  String get playerReadahead => 'Baca awal (saat)';

  @override
  String get playerThreads => 'Thread penyahkod';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Kurangkan jalur warna dalam gradien';

  @override
  String get playerDebandIterations => 'Lelaran deband';

  @override
  String get playerDebandThreshold => 'Ambang deband';

  @override
  String get playerCorrectDownscaling => 'Penskalaan turun yang betul';

  @override
  String get playerSigmoid => 'Penskalaan naik sigmoid';

  @override
  String get playerScale => 'Penskala naik';

  @override
  String get playerCscale => 'Penskala naik chroma';

  @override
  String get playerDscale => 'Penskala turun';

  @override
  String get playerToneMapping => 'Pemetaan ton';

  @override
  String get playerTargetPeak => 'Puncak sasaran';

  @override
  String get playerOpenFiles => 'Buka fail video';

  @override
  String get playerOpenFilesDesc => 'Main fail daripada peranti ni';

  @override
  String get playerOpenFolder => 'Buka folder';

  @override
  String get playerOpenFolderDesc =>
      'Main setiap video dalam folder sebagai senarai main';

  @override
  String get playerNetworkStream => 'Strim rangkaian';

  @override
  String get playerNetworkStreamDesc => 'Buka pautan video terus atau HLS';

  @override
  String get playerStreamUrl => 'URL strim';

  @override
  String get playerStreamReferer => 'Referer (pilihan)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Strim pautan magnet atau fail .torrent';

  @override
  String get playerMagnetLink => 'Pautan magnet atau URL torrent';

  @override
  String get playerPickTorrent => 'Pilih fail .torrent';

  @override
  String get playerTorrentMissing =>
      'Pasang addon torrent daripada Tetapan > Addon dulu';

  @override
  String get playerNoVideos => 'Tiada video yang boleh dimainkan dijumpai';

  @override
  String get playerReset => 'Set semula tetapan pemain';

  @override
  String get playerResetDesc => 'Pulihkan setiap pilihan pemain kepada lalai';

  @override
  String get playerResetConfirm => 'Set semula semua tetapan pemain?';

  @override
  String get playerResetDone => 'Tetapan pemain disetkan semula';

  @override
  String get playerQuality => 'Kualiti';

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
  String get playerStreams => 'Strim';

  @override
  String get playerAutoSelect => 'Pilih strim secara auto';

  @override
  String get playerAutoSelectDesc =>
      'Pilih strim yang paling serupa dengan pilihan terakhir awak untuk tajuk ni';

  @override
  String get playerLoadingStreams => 'Sedang cari strim…';

  @override
  String get playerNoStreams => 'Episod ni tiada strim';

  @override
  String get playerNoStreamsTitle => 'Tiada strim dijumpai';

  @override
  String get playerFailed => 'Main balik gagal';

  @override
  String get playerTorrentNeeded => 'Strim ni torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Pasang addon torrent untuk main pautan magnet dan fail .torrent';

  @override
  String get playerOpenAddons => 'Buka addon';

  @override
  String get playerTryAnotherStream => 'Cuba strim lain';

  @override
  String get playerEpisodes => 'Episod';

  @override
  String get playerLock => 'Kunci kawalan';

  @override
  String get playerFullscreen => 'Skrin penuh';

  @override
  String get readerChapters => 'Bab';

  @override
  String get readerSettingsTitle => 'Tetapan pembaca';

  @override
  String get readerPreviousChapter => 'Bab sebelumnya';

  @override
  String get readerNextChapter => 'Bab seterusnya';

  @override
  String get readerFirstChapter => 'Ni bab pertama';

  @override
  String get readerLastChapter => 'Awak dah habis baca semua';

  @override
  String get readerFailed => 'Tak dapat buka bab ni';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Bab ni tiada teks';

  @override
  String get readerPerTitle => 'Untuk tajuk ni sahaja';

  @override
  String get readerPerTitleDesc =>
      'Simpan tetapan pembaca ni untuk tajuk ni sahaja';

  @override
  String get readerSectionReading => 'Bacaan';

  @override
  String get readerSectionControls => 'Kawalan';

  @override
  String get readerSectionDisplay => 'Paparan';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Mod bacaan';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Kanan ke kiri';

  @override
  String get readerModeLtr => 'Kiri ke kanan';

  @override
  String get readerModeVertical => 'Halaman menegak';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Tatal berterusan';

  @override
  String get readerScale => 'Skala imej';

  @override
  String get readerScaleFit => 'Muat skrin';

  @override
  String get readerScaleWidth => 'Muat lebar';

  @override
  String get readerScaleHeight => 'Muat tinggi';

  @override
  String get readerScaleOriginal => 'Saiz asal';

  @override
  String get readerScaleSmart => 'Muat pintar';

  @override
  String get readerDoublePage => 'Halaman berganda';

  @override
  String get readerDoublePageDesc =>
      'Tunjuk dua halaman bersebelahan dalam landskap';

  @override
  String get readerDoubleTapZoom => 'Ketuk dua kali untuk zum';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zum masuk dan keluar halaman dengan ketuk dua kali';

  @override
  String get readerAnimate => 'Animasi halaman';

  @override
  String get readerAnimateDesc => 'Animasikan pusingan halaman';

  @override
  String get readerSidePadding => 'Pelapik tepi';

  @override
  String get readerSidePaddingDesc => 'Ruang di sebelah halaman dalam peratus';

  @override
  String get readerPageGap => 'Jarak halaman';

  @override
  String get readerPageGapDesc => 'Ruang antara halaman';

  @override
  String get readerAutoNext => 'Terus ke bab seterusnya';

  @override
  String get readerAutoNextDesc =>
      'Muat bab seterusnya semasa awak baca hujung bab ni';

  @override
  String get readerPreload => 'Pramuat halaman';

  @override
  String get readerPreloadDesc => 'Berapa halaman nak dimuat turun lebih awal';

  @override
  String get readerTapZones => 'Zon ketuk';

  @override
  String get readerTapDefault => 'Lalai';

  @override
  String get readerTapLShaped => 'Bentuk L';

  @override
  String get readerTapKindle => 'Macam Kindle';

  @override
  String get readerTapEdge => 'Tepi sahaja';

  @override
  String get readerTapOff => 'Dimatikan';

  @override
  String get readerInvertTaps => 'Terbalikkan zon ketuk';

  @override
  String get readerInvertTapsDesc => 'Tukar kawasan sebelumnya dan seterusnya';

  @override
  String get readerBackground => 'Latar belakang';

  @override
  String get readerBackgroundBlack => 'Hitam';

  @override
  String get readerBackgroundGray => 'Kelabu';

  @override
  String get readerBackgroundWhite => 'Putih';

  @override
  String get readerBackgroundTheme => 'Tema app';

  @override
  String get readerFilter => 'Penapis warna';

  @override
  String get readerFilterNone => 'Tiada';

  @override
  String get readerFilterGrayscale => 'Skala kelabu';

  @override
  String get readerFilterInvert => 'Songsang';

  @override
  String get readerFilterSepia => 'Sepia';

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
  String get readerDim => 'Malap';

  @override
  String get readerDimDesc => 'Gelapkan halaman';

  @override
  String get readerPageNumber => 'Nombor halaman';

  @override
  String get readerPageNumberDesc => 'Tunjuk nombor halaman semasa membaca';

  @override
  String get readerFullscreen => 'Skrin penuh';

  @override
  String get readerFullscreenDesc => 'Sorokkan bar sistem';

  @override
  String get readerCropBorders => 'Potong sempadan';

  @override
  String get readerCropBordersDesc =>
      'Potong jidar putih atau hitam kosong daripada halaman';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Kekunci kelantangan pusing halaman';

  @override
  String get readerVolumeKeysDesc =>
      'Kelantangan turun ke depan, kelantangan naik ke belakang';

  @override
  String get readerBookmarks => 'Penanda buku';

  @override
  String get readerBookmarkAdd => 'Tambah penanda buku';

  @override
  String get readerBookmarkRemove => 'Buang penanda buku';

  @override
  String get readerBookmarksEmpty => 'Belum ada penanda buku';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Halaman $page daripada $total';
  }

  @override
  String get readerAutoScroll => 'Tatal auto';

  @override
  String get readerAutoScrollStop => 'Hentikan tatal auto';

  @override
  String get readerAutoScrollSpeed => 'Kelajuan tatal auto';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Seberapa laju halaman bertatal atau berpusing sendiri';

  @override
  String get readerKeepOn => 'Biar skrin hidup';

  @override
  String get readerKeepOnDesc => 'Halang skrin daripada mati semasa membaca';

  @override
  String get readerOrientation => 'Orientasi';

  @override
  String get readerOrientationFree => 'Bebas';

  @override
  String get readerOrientationPortrait => 'Potret';

  @override
  String get readerOrientationLandscape => 'Landskap';

  @override
  String get readerSaveProgress => 'Simpan kemajuan';

  @override
  String get readerSaveProgressDesc =>
      'Ingat halaman awak dan tanda bab sebagai dibaca';

  @override
  String get readerReset => 'Set semula tetapan pembaca';

  @override
  String get readerResetDesc => 'Kembali ke lalai';

  @override
  String get novelSize => 'Saiz teks';

  @override
  String get novelFont => 'Fon';

  @override
  String get novelLineHeight => 'Tinggi baris';

  @override
  String get novelParagraph => 'Jarak perenggan';

  @override
  String get novelMargin => 'Jidar';

  @override
  String get novelTheme => 'Tema pembaca';

  @override
  String get novelThemeApp => 'Tema app';

  @override
  String get novelThemeLight => 'Cerah';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Gelap';

  @override
  String get novelThemeBlack => 'Hitam';

  @override
  String get novelJustify => 'Ratakan teks';

  @override
  String get novelJustifyDesc => 'Jajarkan teks ke kedua-dua tepi';

  @override
  String get trackProgressTitle => 'Simpan kemajuan?';

  @override
  String trackProgressAnime(String name) {
    return 'Jejak $name dalam senarai awak semasa menonton? Pilih \"Peranti ni sahaja\" untuk simpan setempat, atau Tidak untuk tak simpan apa-apa.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Jejak $name dalam senarai awak bila awak habis satu bab? Pilih \"Peranti ni sahaja\" untuk simpan setempat, atau Tidak untuk tak simpan apa-apa.';
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
  String get trackProgressYes => 'Simpan';

  @override
  String get trackProgressReset =>
      'Gesaan simpan kemajuan disetkan semula untuk jenis ni, ia akan tanya lagi';

  @override
  String get trackProgressNo => 'Tidak';

  @override
  String get trackProgressOff => 'Mati';

  @override
  String get trackProgressLocal => 'Peranti ni sahaja';

  @override
  String get trackProgressSettingAnime => 'Jejak kemajuan anime';

  @override
  String get trackProgressSettingManga => 'Jejak kemajuan manga dan novel';

  @override
  String get trackProgressSettingDesc =>
      'Apa nak buat bila awak buka episod atau habiskan bab';

  @override
  String get trackProgressAsk => 'Tanya';

  @override
  String get trackProgressAlways => 'Sentiasa';

  @override
  String get dantotsuImport => 'Import daripada Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Baca sandaran tetapan Dantotsu (.ani, atau .sani yang disulitkan)';

  @override
  String get dantotsuPick => 'Pilih sandaran Dantotsu';

  @override
  String get dantotsuNothing => 'Tiada apa dalam fail ni yang boleh diimport';

  @override
  String get dantotsuApply => 'Import yang dipilih';

  @override
  String dantotsuDone(int done, int total) {
    return '$done daripada $total diimport';
  }

  @override
  String get dantotsuGroupAccounts => 'Akaun';

  @override
  String get dantotsuGroupAppearance => 'Penampilan';

  @override
  String get dantotsuGroupExtensions => 'Ekstensi';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Pemain';

  @override
  String get dantotsuAnilist => 'Log masuk AniList';

  @override
  String get dantotsuMal => 'Log masuk MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repositori ekstensi anime';

  @override
  String get dantotsuReposManga => 'Repositori ekstensi manga';

  @override
  String get dantotsuReposNovel => 'Repositori ekstensi novel';

  @override
  String get dantotsuUpdates => 'Semakan kemas kini';

  @override
  String get dantotsuComments => 'Komen';

  @override
  String get dantotsuActivity => 'Tinjauan pemberitahuan AniList';

  @override
  String get dantotsuDns => 'Penyedia DNS';

  @override
  String get dantotsuPlayer => 'Kelajuan pemain dan warna sari kata';

  @override
  String get dantotsuWarning =>
      'Fail ni mengandungi token log masuk. Simpan secara peribadi.';

  @override
  String get novelIndent => 'Inden perenggan';

  @override
  String get novelIndentDesc =>
      'Mulakan setiap perenggan dengan inden baris pertama';

  @override
  String get novelLetterSpacing => 'Jarak huruf';

  @override
  String get novelSectionTranslate => 'Terjemahan';

  @override
  String get sectionExperimental => 'Eksperimen';

  @override
  String get kitsuGraphqlDetail => 'Halaman butiran lebih pantas (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Muat satu tajuk bersama watak, kakitangan dan entri awak dalam satu permintaan';

  @override
  String get togetherTitle => 'Tonton bersama';

  @override
  String get togetherIntro =>
      'Tampal pautan bilik yang kawan awak hantar. Awak terus sertai dan pemain terbuka bila mereka mula menonton.';

  @override
  String get togetherName => 'Nama awak';

  @override
  String get togetherConnecting => 'Menyambung…';

  @override
  String get togetherLeave => 'Tinggalkan bilik';

  @override
  String get togetherYou => 'Awak';

  @override
  String get togetherNoChat => 'Belum ada mesej';

  @override
  String get togetherChatHint => 'Mesej';

  @override
  String get togetherCopyInvite => 'Salin jemputan';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Pelayan dan bilik disalin';

  @override
  String get togetherConnectionLost => 'Sambungan terputus';

  @override
  String togetherConnectedTo(String room) {
    return 'Bersambung ke $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Tak dapat sambung: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name menyertai';
  }

  @override
  String togetherLeft(String name) {
    return '$name keluar';
  }

  @override
  String togetherPaused(String name) {
    return '$name menjeda';
  }

  @override
  String togetherResumed(String name) {
    return '$name menyambung';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name melompat ke $time';
  }

  @override
  String get togetherFollowFailed => 'Tak dapat buka episod hos. Buka sendiri.';

  @override
  String get togetherJoinRole => 'Sertai bilik';

  @override
  String get togetherOpenHost => 'Buka episod hos';

  @override
  String get togetherShowChat => 'Tunjuk sembang langsung';

  @override
  String get togetherWaitingHost => 'Menunggu hos mulakan episod';

  @override
  String get togetherRoomLink => 'Pautan bilik';

  @override
  String get togetherBadLink => 'Tu bukan pautan bilik';

  @override
  String get togetherHostClosed => 'Hos menutup bilik';

  @override
  String get togetherNowPlaying => 'Sedang dimainkan';

  @override
  String togetherWatchingCount(int count) {
    return '$count sedang menonton';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user nak jeda';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user nak sambung';
  }

  @override
  String get togetherChip => 'Bersama';

  @override
  String get togetherSettingsDesc => 'Sertai bilik kawan dengan pautan';

  @override
  String get novelBilingual => 'Tunjuk asal dan terjemahan';

  @override
  String get novelBilingualDesc =>
      'Setiap perenggan tunjuk teks asal dengan terjemahannya di bawah';

  @override
  String get novelTranslateTo => 'Terjemah ke';

  @override
  String get novelTranslateOff => 'Mati';

  @override
  String get novelSectionSpeech => 'Teks ke pertuturan';

  @override
  String get novelSpeechRate => 'Kelajuan pertuturan';

  @override
  String get novelSpeechPitch => 'Pic pertuturan';

  @override
  String get novelSpeak => 'Baca kuat-kuat';

  @override
  String get novelSpeakStop => 'Berhenti baca kuat-kuat';

  @override
  String get novelTranslate => 'Terjemah bab';

  @override
  String get novelTranslateShowOriginal => 'Tunjuk asal';

  @override
  String novelTranslateFailed(String error) {
    return 'Terjemahan gagal: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Teks ke pertuturan tak tersedia pada peranti ni';

  @override
  String get novelSpeechVoice => 'Suara';

  @override
  String get novelSpeechVoiceDefault => 'Lalai sistem';

  @override
  String get novelSpeakPrevious => 'Baris sebelumnya';

  @override
  String get novelSpeakNext => 'Baris seterusnya';

  @override
  String get novelTapPaging => 'Ketuk tepi untuk pusing halaman';

  @override
  String get novelTapPagingDesc =>
      'Ketuk sebelah kiri atau kanan untuk tatal satu halaman, bahagian tengah tunjuk kawalan';

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
    return '$count min lagi';
  }

  @override
  String get novelBold => 'Teks tebal';

  @override
  String get novelBoldDesc => 'Guna ketebalan lebih berat';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter selesai';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Seterusnya: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Sebelumnya: $chapter';
  }

  @override
  String get readerNoPages => 'Bab ni tiada halaman';

  @override
  String get readerLoadingPages => 'Memuatkan halaman…';

  @override
  String get readerSlowPage => 'Halaman ni masih dimuatkan…';

  @override
  String get readerPageFailed => 'Tak dapat muat halaman ni';

  @override
  String get playerShowComments => 'Tunjuk komen';

  @override
  String get playerHideComments => 'Sorokkan komen';

  @override
  String get playerSubtitles => 'Sari kata';

  @override
  String get playerSubtitlesOff => 'Sari kata mati';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Tambah fail sari kata';

  @override
  String get playerAddAudio => 'Tambah fail audio';

  @override
  String get playerChapters => 'Bab';

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
  String get playerNoChapters => 'Tiada bab';

  @override
  String get playerTimestamp => 'Cap masa';

  @override
  String get playerAutoPlayDelay => 'Kira detik episod seterusnya';

  @override
  String get playerWatchedAt => 'Kira sebagai ditonton pada';

  @override
  String playerNextIn(int seconds) {
    return 'Episod seterusnya dalam ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Main sekarang';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: akan dilangkau secara automatik untuk tajuk ni';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: tak akan dilangkau secara automatik untuk tajuk ni';
  }

  @override
  String get playerAudioLanguage => 'Bahasa audio pilihan';

  @override
  String get playerLanguageOrderHint =>
      'Asingkan bahasa dengan koma. Yang pertama dijumpai akan digunakan.';

  @override
  String get playerPip => 'Gambar dalam gambar';

  @override
  String get playerAutoPip => 'Gambar dalam gambar bila keluar';

  @override
  String get playerAutoPipDesc =>
      'Terus main dalam tetingkap kecil bila awak keluar dari app';

  @override
  String playerAutoPlaying(String title) {
    return 'Memainkan $title seterusnya…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Tak dapat pasang shader: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Bab $number';
  }

  @override
  String get playerPerTitle => 'Untuk tajuk ni sahaja';

  @override
  String get playerPerTitleDesc =>
      'Simpan pilihan ni untuk tajuk ni dan jangan usik lalai awak';

  @override
  String get playerSwapGestures => 'Tukar sisi leret';

  @override
  String get playerSwapGesturesDesc =>
      'Kecerahan di kiri, kelantangan di kanan';

  @override
  String get playerOpenBig => 'Buka dalam paparan besar';

  @override
  String get playerOpenBigDesc =>
      'Mulakan pemain dalam skrin penuh, bukan bersama senarai episod';

  @override
  String get playerPauseOnBlur => 'Jeda bila tidak fokus';

  @override
  String get playerPauseOnBlurDesc =>
      'Jeda semasa aplikasi terlindung, contohnya panel pemberitahuan, dan sambung semula bila anda kembali';

  @override
  String get playerAudioOutput => 'Output audio';

  @override
  String get fontAppDefault => 'Fon app';

  @override
  String get fontImport => 'Import fon';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Lengah sari kata';

  @override
  String get playerAudioDelay => 'Lengah audio';

  @override
  String get playerDelayReset => 'Set semula';

  @override
  String get playerOnlineSubtitles => 'Sari kata dalam talian';

  @override
  String get playerOnlineSearchHint => 'Tajuk dan episod';

  @override
  String get playerOnlineNone => 'Tiada sari kata dijumpai';

  @override
  String playerOnlineFailed(String error) {
    return 'Carian sari kata gagal: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Tak dapat muat turun sari kata ni: $error';
  }

  @override
  String get playerOnlineMatch => 'Sepadan dengan fail ni';

  @override
  String get playerOnlineEpisode => 'Padanan episod';

  @override
  String playerOnlineDownloads(int count) {
    return '$count muat turun';
  }

  @override
  String get playerSeekPreview => 'Pratonton carian';

  @override
  String get playerSeekPreviewDesc =>
      'Tunjuk pratonton bingkai kecil di atas bar carian semasa menyeret. Buka penyahkod resolusi rendah kedua, jadi ia guna lebih data pada strim.';

  @override
  String get playerSettingsChip => 'Tetapan';

  @override
  String get playerAudioDevice => 'Peranti audio';

  @override
  String get settingsDownloads => 'Muat turun';

  @override
  String get settingsDownloadsDesc =>
      'Episod luar talian, giliran dan mod luar talian';

  @override
  String get downloadsTitle => 'Muat turun';

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
  String get downloadsOpenDesc =>
      'Lihat giliran dan semua yang disimpan pada peranti ni';

  @override
  String get downloadTitle => 'Muat turun';

  @override
  String get downloadAlready => 'Dah dimuat turun atau dalam giliran';

  @override
  String get downloadPickStream => 'Muat turun strim yang mana?';

  @override
  String get downloadPickSubtitle => 'Muat turun sari kata yang mana?';

  @override
  String get downloadPickAudio => 'Muat turun trek audio yang mana?';

  @override
  String get downloadNoAudio => 'Tiada audio tambahan';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Tiada sari kata';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Strim ni senarai main HLS. Memuat turunnya perlukan addon FFmpeg.';

  @override
  String get downloadSourceMissing => 'Sumber untuk episod ni belum dipasang';

  @override
  String get downloadWaitingConnection => 'Menunggu sambungan';

  @override
  String get downloadSubtitles => 'Sari kata';

  @override
  String get downloadDownloaded => 'Dimuat turun';

  @override
  String get downloadOffline => 'Luar talian';

  @override
  String get downloadDelete => 'Padam muat turun';

  @override
  String get downloadCancel => 'Batal';

  @override
  String get downloadPause => 'Jeda';

  @override
  String get downloadPaused => 'Dijeda';

  @override
  String get downloadResume => 'Sambung';

  @override
  String get downloadPauseAll => 'Jeda semua';

  @override
  String get downloadResumeAll => 'Sambung semua';

  @override
  String get downloadQueuedState => 'Menunggu dalam giliran';

  @override
  String get downloadResolving => 'Mengambil strim…';

  @override
  String get downloadUsedFallback =>
      'Tiada strim yang sepadan, guna yang pertama';

  @override
  String get downloadTabQueue => 'Giliran';

  @override
  String get downloadTabDone => 'Siap';

  @override
  String get downloadTabFailed => 'Gagal';

  @override
  String get downloadEmptyQueue => 'Tiada apa sedang dimuat turun';

  @override
  String get downloadEmptyDone => 'Belum ada yang dimuat turun';

  @override
  String get downloadEmptyFailed => 'Tiada muat turun yang gagal';

  @override
  String get downloadNext => 'Episod seterusnya';

  @override
  String downloadNextN(int count) {
    return '$count episod seterusnya';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Semua yang belum ditonton ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Julat ni ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Semua episod ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episod digilirkan',
      one: '1 episod digilirkan',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name dimuat turun';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name gagal dimuat turun';
  }

  @override
  String downloadStorage(String size) {
    return '$size digunakan oleh muat turun';
  }

  @override
  String get downloadQueueHeader => 'Giliran';

  @override
  String get downloadParallel => 'Muat turun serentak';

  @override
  String get downloadParallelDesc =>
      'Jalankan satu muat turun pada satu masa atau beberapa serentak';

  @override
  String get downloadOneByOne => 'Satu demi satu';

  @override
  String get downloadNotifications => 'Pemberitahuan muat turun';

  @override
  String get downloadNotificationsDesc =>
      'Kemajuan langsung di mana sistem menyokong, jika tak nota bila muat turun siap';

  @override
  String get downloadNotifyLive => 'Langsung';

  @override
  String get downloadNotifyDone => 'Bila siap';

  @override
  String get downloadNotifyOff => 'Mati';

  @override
  String get downloadInfoFile =>
      'Tulis fail maklumat di sebelah setiap muat turun';

  @override
  String get downloadInfoFileDesc =>
      'Simpan strim, kualiti, sari kata dan masa langkau sebagai fail .json kecil';

  @override
  String get offlineHeader => 'Luar talian';

  @override
  String get offlineModeDesc =>
      'Auto hanya pergi luar talian bila app bermula tanpa sambungan. Sentiasa kekal luar talian sampai awak tukar.';

  @override
  String get offlineModeOff => 'Mati';

  @override
  String get offlineModeAlways => 'Sentiasa';

  @override
  String get offlineModeOn =>
      'Mod luar talian dihidupkan. Perubahan disimpan di sini dan dihantar bila awak kembali dalam talian.';

  @override
  String get offlineSaved =>
      'Disimpan pada peranti ni, ia akan disegerakkan bila awak dalam talian';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perubahan disegerakkan',
      one: '1 perubahan disegerakkan',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perubahan menunggu segerak',
      one: '1 perubahan menunggu segerak',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Perubahan menunggu segerak';

  @override
  String get offlinePendingNone => 'Tiada yang menunggu';

  @override
  String get offlineSyncNow => 'Segerak sekarang';

  @override
  String get offlineDiscard => 'Buang';

  @override
  String get downloadNotOffline =>
      'Episod ni belum dimuat turun, jadi tak tersedia luar talian';

  @override
  String get offlineModeChip => 'Luar talian';

  @override
  String get downloadNextChapter => 'Bab seterusnya';

  @override
  String downloadNextChapters(int count) {
    return '$count bab seterusnya';
  }

  @override
  String downloadUnread(int count) {
    return 'Semua yang belum dibaca ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Semua bab ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total halaman';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count halaman';
  }

  @override
  String get downloadFfmpegTitle => 'Addon FFmpeg diperlukan';

  @override
  String get downloadFfmpegBody =>
      'Strim ni senarai main HLS. Addon FFmpeg cantumkan kepingannya jadi satu fail mp4. Tanpanya kepingan disimpan dalam folder episod dan dimainkan dari situ.';

  @override
  String get downloadFfmpegInstall => 'Pasang';

  @override
  String get downloadFfmpegInstalling =>
      'Memasang FFmpeg, ni mungkin ambil masa…';

  @override
  String get downloadFinishing => 'Mencantumkan kepingan jadi satu fail…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total bahagian';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent ni tiada fail video untuk dimuat turun';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Memuat turun $count item',
      one: 'Memuat turun 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Padam muat turun yang ditonton';

  @override
  String get downloadAutoDeleteDesc =>
      'Buang muat turun bila kemajuan awak sampai episod atau bab itu';

  @override
  String get downloadConnections => 'Sambungan setiap muat turun';

  @override
  String get downloadConnectionsDesc =>
      'Pecahkan fail besar kepada bahagian yang diambil serentak. Sesetengah pelayan hadkan ni.';

  @override
  String get downloadPlayChoice => 'Main daripada';

  @override
  String get downloadPlayLocalDesc => 'Fail yang disimpan pada peranti ni';

  @override
  String get downloadPlayStream => 'Strim dalam talian';

  @override
  String get downloadPlayStreamDesc => 'Muat episod daripada sumber';

  @override
  String get offlineFeedTitle => 'Dimuat turun pada peranti ni';

  @override
  String get offlineFeedEmpty =>
      'Muat turun sesuatu semasa awak dalam talian dan ia muncul di sini';

  @override
  String get offlineEnabled => 'Mod luar talian dihidupkan';

  @override
  String get offlineDisabled => 'Mod luar talian dimatikan';

  @override
  String get downloadReadChoice => 'Baca daripada';

  @override
  String get downloadReadLocalDesc => 'Halaman yang disimpan pada peranti ni';

  @override
  String get downloadReadOnline => 'Baca dalam talian';

  @override
  String get downloadReadOnlineDesc => 'Muat bab daripada sumber';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Padam $name daripada peranti ni?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Batalkan muat turun $name? Apa yang dah dimuat turun akan dipadam.';
  }

  @override
  String get downloadFfmpegFolder => 'Kekalkan sebagai folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Buang $count perubahan yang tak pernah dihantar? Ni tak boleh diundur.',
      one: 'Buang perubahan yang tak pernah dihantar? Ni tak boleh diundur.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Menunggu Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Dijeda pada sambungan bermeter';

  @override
  String get downloadWifiOnly => 'Wi-Fi sahaja';

  @override
  String get downloadWifiOnlyDesc =>
      'Muat turun menunggu semasa awak guna data mudah alih';

  @override
  String get downloadMetered => 'Jeda pada sambungan bermeter';

  @override
  String get downloadMeteredDesc =>
      'Juga menunggu pada Wi-Fi yang peranti awak tanda sebagai bermeter';

  @override
  String get downloadSpeedLimit => 'Had kelajuan';

  @override
  String get downloadSpeedLimitDesc => 'Hadkan jumlah kelajuan muat turun';

  @override
  String get downloadUnlimited => 'Tanpa had';

  @override
  String get downloadMoveToTop => 'Alih ke atas';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'Fail yang mana?';

  @override
  String get downloadTorrentAuto => 'Padankan episod secara automatik';

  @override
  String get downloadTorrentLoading => 'Membaca torrent…';

  @override
  String get watchAutoSource => 'Tukar ke sumber seterusnya secara automatik';

  @override
  String get watchAutoSourceDesc =>
      'Kalau sumber tak jumpa tajuk atau gagal dimuat, cuba sumber terpasang yang seterusnya';

  @override
  String get extensionTest => 'Uji ekstensi';

  @override
  String get extensionTestCopy => 'Salin kegagalan dan lognya';

  @override
  String get extensionTestQuery => 'Kata carian';

  @override
  String get extensionTestRun => 'Jalan';

  @override
  String get extensionTestStop => 'Berhenti';

  @override
  String get extensionTestNone => 'Tiada ekstensi jenis ni yang dipasang';

  @override
  String get extensionTestNotRun => 'Belum diuji';

  @override
  String get extensionTestSearch => 'Cari';

  @override
  String get extensionTestDetail => 'Butiran';

  @override
  String get extensionTestUnits => 'Episod / bab';

  @override
  String get extensionTestLinks => 'Strim / halaman';

  @override
  String extensionTestFailedAt(String step) {
    return 'Gagal pada $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done daripada $total diuji · $passed lulus · $failed gagal';
  }

  @override
  String get extensionTestCopyLogs => 'Salin semuanya dengan log penuh';

  @override
  String get onboardingFeaturesTitle => 'Semuanya di satu tempat';

  @override
  String get onboardingFeaturesBody =>
      'Semua yang awak jejak, tonton dan baca, tanpa perlu bertukar-tukar app.';

  @override
  String get onboardingFeatureTrack => 'Jejak semuanya';

  @override
  String get onboardingFeatureTrackDesc =>
      'Senarai, kemajuan dan skor di AniList, MyAnimeList, Simkl, Kitsu dan MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Tonton dan baca';

  @override
  String get onboardingFeatureWatchDesc =>
      'Pasang ekstensi dan strim anime atau baca manga dan novel terus dalam app.';

  @override
  String get onboardingFeatureOffline => 'Bawa luar talian';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Muat turun episod dan bab, dan teruskan tanpa sambungan.';

  @override
  String get onboardingFeatureSync => 'Pastikan senarai segerak';

  @override
  String get onboardingFeatureSyncDesc =>
      'Cerminkan senarai awak merentas perkhidmatan, atau biar yang mana ke depan menang.';

  @override
  String get onboardingServices => 'Berfungsi dengan';

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
