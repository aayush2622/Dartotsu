// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Aplikasi Terbaik Baru Untuk\nMelacak Anime & Manga';

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
  String get login => 'Masuk';

  @override
  String loginTo(String service) {
    return 'Login ke $service';
  }

  @override
  String logout(String type) {
    return 'Keluar $type';
  }

  @override
  String get confirmLogout => 'Apakah Anda yakin ingin keluar?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Login';

  @override
  String get manhua => 'Login';

  @override
  String get novel => 'Login';

  @override
  String get ln => 'Login';

  @override
  String get home => 'Login';

  @override
  String get search => 'Sitemap';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Pengaturan';

  @override
  String get watch => 'Login';

  @override
  String get read => 'Sitemap';

  @override
  String get info => 'Sitemap';

  @override
  String get comments => 'Sitemap';

  @override
  String get addToList => 'Tambahkan ke Daftar';

  @override
  String get series => 'Login';

  @override
  String get season => 'Login';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episodes',
      one: 'Episode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bab',
      one: 'Bab',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Volumes',
      one: 'Volume',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Films',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Login';

  @override
  String get totalChapters => 'Login';

  @override
  String get genres => 'Login';

  @override
  String get scanlators => 'Login';

  @override
  String list(String type) {
    return '$type Daftar';
  }

  @override
  String get watching => 'Login';

  @override
  String get reading => 'Login';

  @override
  String get readStatus => 'Sitemap';

  @override
  String get watchStatus => 'Login';

  @override
  String planned(String type) {
    return 'Direncanakan $type';
  }

  @override
  String onHold(String type) {
    return 'Di Hold $type';
  }

  @override
  String get droppedAnime => 'Dijatuhkan Anime';

  @override
  String get droppedManga => 'Manga Terjatuh';

  @override
  String noDropped(String type) {
    return 'Anda belum menjatuhkan $type.';
  }

  @override
  String get continueReading => 'Sitemap';

  @override
  String get continueWatching => 'Sitemap';

  @override
  String browse(String type) {
    return 'Jelajahi $type';
  }

  @override
  String trending(String type) {
    return 'Tren $type';
  }

  @override
  String popular(String type) {
    return 'Populer $type';
  }

  @override
  String get topAiring => 'Sitemap';

  @override
  String topRated(String type) {
    return 'Nilai teratas $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Kebanyakan Favorit $type';
  }

  @override
  String get thisSeason => 'Musim Ini';

  @override
  String get nextSeason => 'Musim Berikutnya';

  @override
  String get previousSeason => 'Musim Sebelumnya';

  @override
  String get recommended => 'Sitemap';

  @override
  String get recommendationsEmptyMessage =>
      'Tonton/Baca beberapa Anime atau Manga untuk mendapatkan Rekomendasi';

  @override
  String get recentUpdates => 'Update Terbaru';

  @override
  String get allCaughtUpNew => 'Semua tertangkap, apa yang baru?';

  @override
  String favorite(String type) {
    return 'Favorit $type';
  }

  @override
  String get favorites => 'Login';

  @override
  String get noFavourites =>
      'Terlihat seperti yang tidak seperti apa pun, Meme it\nCoba liking sebuah acara untuk menjaganya di sini.';

  @override
  String get noOnHold =>
      'Terlihat seperti yang belum Anda masukkan apa pun di pegang.';

  @override
  String manageLayout(String service, String page) {
    return 'Kelola halaman $page untuk $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Anda dapat mengelola layout untuk halaman $page dengan menyeret dan menjatuhkan item';
  }

  @override
  String get gridView => 'Login';

  @override
  String get listView => 'Login';

  @override
  String get compactView => 'Tampilan yang ringkas';

  @override
  String get layout => 'Login';

  @override
  String get sort => 'Login';

  @override
  String get utd => 'Sitemap';

  @override
  String get dtu => 'Sitemap';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episode Login';

  @override
  String get chapterRead => 'Sitemap';

  @override
  String get outOf => 'sitemap';

  @override
  String get totalOf => 'Sitemap';

  @override
  String get selected => 'Login';

  @override
  String get found => 'Login';

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
  String available(String type) {
    return 'Tersedia $type';
  }

  @override
  String installed(String type) {
    return 'Dipasang $type';
  }

  @override
  String get extensionsDescription =>
      'Pasang dan kelola ekstensi untuk fungsionalitas tambahan';

  @override
  String get addAnimeRepo => 'Tambahkan Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Tambahkan Anime Repo dari berbagai sumber';

  @override
  String get addMangaRepo => 'Tambahkan Manga Repo';

  @override
  String get addMangaRepoDesc => 'Tambahkan Manga Repo dari berbagai sumber';

  @override
  String get addNovelRepo => 'Tambahkan Repo Novel';

  @override
  String get addNovelRepoDesc => 'Tambahkan Novel Repo dari berbagai sumber';

  @override
  String get loadExtensionsIcon => 'Ikon Ekstensi Beban';

  @override
  String get loadExtensionsIconDesc => 'Diaktifkan jika ekstensi halaman lags';

  @override
  String get autoUpdate => 'Pembaruan Otomatis';

  @override
  String get autoUpdateDesc => 'Ekstensi Pembaruan Otomatis';

  @override
  String get installSourceToStart =>
      'Instal sumber dari halaman ekstensi untuk memulai';

  @override
  String get author => 'Login';

  @override
  String get averageDuration => 'Durasi rata-rata';

  @override
  String get characters => 'Login';

  @override
  String get description => 'Login';

  @override
  String get synopsis => 'Login';

  @override
  String get endDate => 'Tanggal Akhir';

  @override
  String get format => 'Login';

  @override
  String get meanScore => 'Skor';

  @override
  String get name => 'Login';

  @override
  String get nameRomaji => 'Nama (Romaji)';

  @override
  String get popularity => 'Login';

  @override
  String get relations => 'Login';

  @override
  String get prequel => 'LOGIN';

  @override
  String get sequel => 'LOGIN';

  @override
  String get source => 'Login';

  @override
  String get staff => 'Login';

  @override
  String get startDate => 'Tanggal Mulai';

  @override
  String get status => 'Login';

  @override
  String get studio => 'Login';

  @override
  String get synonyms => 'Login';

  @override
  String get tags => 'Login';

  @override
  String get total => 'Sitemap';

  @override
  String get collapseText => 'sitemap';

  @override
  String get expandText => 'sitemap';

  @override
  String get comingSoon => 'Login';

  @override
  String get wrongTitle => 'Judul yang salah?';

  @override
  String get youTube => 'Bermain di YouTube?';

  @override
  String get mediaNotFound => 'Media tidak ditemukan';

  @override
  String get noChapterFound => 'Tidak ditemukan bab';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivities',
      one: 'Aktivitas',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Login';

  @override
  String get account => 'Akun';

  @override
  String get accountDescription =>
      'Kelola akun AniList, MAL, dan Discord Anda dengan mudah';

  @override
  String get common => 'Umum';

  @override
  String get commonDescription =>
      'Akses pengaturan umum untuk penggunaan aplikasi yang lancar';

  @override
  String get animeDescription =>
      'Personalisasi dan kelola preferensi anime Anda';

  @override
  String get mangaDescription => 'Atur dan sesuaikan pengalaman manga Anda';

  @override
  String get about => 'Tentang';

  @override
  String get aboutDescription =>
      'Pelajari lebih lanjut tentang aplikasi dan pembuatnya';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get notificationsDescription =>
      'Konfigurasi bagaimana dan kapan Anda menerima pemberitahuan';

  @override
  String get offlineMode => 'Mode Offline';

  @override
  String get offlineModeDescription =>
      'Gunakan aplikasi tanpa koneksi internet';

  @override
  String get incognitoMode => 'Mode Penyamaran';

  @override
  String get incognitoModeDescription =>
      'Jelajahi tanpa menyimpan aktivitas Anda';

  @override
  String get hidePrivate => 'Sembunyikan Privat';

  @override
  String get hidePrivateDescription =>
      'Sembunyikan seri pribadi dari halaman rumah.';

  @override
  String get hiddenMedia => 'Media tersembunyi';

  @override
  String get noHiddenMediaFound => 'Tidak ada media tersembunyi yang ditemukan';

  @override
  String get playerSettingsTitle => 'Pengaturan Pemutar';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Kecepatan';

  @override
  String get speedDescription => 'Kecepatan default untuk pemutar';

  @override
  String get cursedSpeed => 'Kecepatan Terkutuk';

  @override
  String get cursedSpeedDescription =>
      'Untuk orang yang terlalu sibuk dengan kehidupan';

  @override
  String get resizeMode => 'Mode Ukuran Ulang';

  @override
  String get resizeModeDescription => 'Mode ukuran ulang default untuk pemutar';

  @override
  String get skipButton => 'Tombol Lewati';

  @override
  String get skipButtonDescription => 'Durasi tombol lewati';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Subtitle';

  @override
  String get showSubtitles => 'Tampilkan Subtitle';

  @override
  String get showSubtitlesDescription => 'Tampilkan subtitle secara default';

  @override
  String get subtitlePreview => 'Pratinjau Subtitle';

  @override
  String get fontColor => 'Warna Font';

  @override
  String get fontColorDescription => 'Warna font subtitle';

  @override
  String get fontFamily => 'Keluarga Font';

  @override
  String get fontFamilyDescription => 'Keluarga font subtitle';

  @override
  String get fontSize => 'Ukuran Font';

  @override
  String get fontSizeDescription => 'Ukuran font subtitle';

  @override
  String get fontWeight => 'Tebal Font';

  @override
  String get fontWeightDescription => 'Tebal font subtitle';

  @override
  String get backgroundColor => 'Warna Latar Belakang';

  @override
  String get backgroundColorDescription => 'Warna latar belakang subtitle';

  @override
  String get outlineColor => 'Warna Garis Luar';

  @override
  String get outlineColorDescription => 'Warna garis luar subtitle';

  @override
  String get bottomPadding => 'Padding Bawah';

  @override
  String get bottomPaddingDescription => 'Padding bawah subtitle';

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
  String get theme => 'Tema';

  @override
  String get themeDescription => 'Sesuaikan tampilan dan suasana aplikasi Anda';

  @override
  String get darkMode => 'Mode Gelap';

  @override
  String get enableDarkMode => 'Aktifkan Mode Gelap';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Gunakan warna yang sama dengan wallpaper Anda';

  @override
  String get customTheme => 'Tema Kustom';

  @override
  String get customThemeDescription => 'Gunakan warna Anda sendiri untuk tema';

  @override
  String get oledThemeVariant => 'Varian Tema OLED';

  @override
  String get oledThemeVariantDescription => 'Aktifkan Mode OLED';

  @override
  String get colorPicker => 'Pemilih Warna';

  @override
  String get pickColor => 'Pilih warna';

  @override
  String get colorPickerDescription => 'Pilih warna';

  @override
  String get colorPickerDefault => 'Login';

  @override
  String get colorPickerCustom => 'Sitemap';

  @override
  String get customPath => 'Jalur Khusus';

  @override
  String get customPathDescription =>
      'Mengatur path kustom untuk menyimpan file\nTekan panjang untuk menghapus';

  @override
  String get selectDirectory => 'Pilih direktori';

  @override
  String get selectMediaService => 'Pilih Layanan Media';

  @override
  String get logFile => 'Login';

  @override
  String get logFileDescription => 'Bagikan file log';

  @override
  String get restoreSettings => 'Pulihkan Pengaturan';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Login';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Ingin mendukung Pemelihara Dartotsu?\nPertimbangkan untuk Donasi';

  @override
  String get donationGoal => 'Belum ada tujuan donasi saat ini';

  @override
  String get options => 'Login';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Batal';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';
}
