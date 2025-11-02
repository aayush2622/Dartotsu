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
  String get appTagline => 'Aplikasi Terbaik BARU Untuk\nMelacak Anime & Manga';

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
    return 'Masuk ke $service';
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
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Novel';

  @override
  String get ln => 'Novel Ringan';

  @override
  String get home => 'Beranda';

  @override
  String get search => 'Cari';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Pengaturan';

  @override
  String get watch => 'Tonton';

  @override
  String get read => 'Baca';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Komentar';

  @override
  String get addToList => 'Tambahkan ke Daftar';

  @override
  String get series => 'Seri';

  @override
  String get season => 'Musim';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episode',
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
      other: 'Jilid',
      one: 'Jilid',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Film',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episode';

  @override
  String get totalChapters => 'Bab';

  @override
  String nextEpisodeRelease(int episode) {
    return 'Episode $episode akan dirilis dalam';
  }

  @override
  String get genres => 'Genre';

  @override
  String get scanlators => 'Pemindai';

  @override
  String list(String type) {
    return '$type Daftar';
  }

  @override
  String get watching => 'Menonton';

  @override
  String get reading => 'Membaca';

  @override
  String get readStatus => 'Baca';

  @override
  String get watchStatus => 'Ditonton';

  @override
  String planned(String type) {
    return 'Direncanakan $type';
  }

  @override
  String onHold(String type) {
    return 'Di Tunda $type';
  }

  @override
  String get droppedAnime => 'Anime Dijatuhkan';

  @override
  String get droppedManga => 'Manga Dijatuhkan';

  @override
  String noDropped(String type) {
    return 'Anda belum menjatuhkan $type.';
  }

  @override
  String get continueReading => 'Lanjutkan Membaca';

  @override
  String get continueWatching => 'Lanjutkan Menonton';

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
  String get topAiring => 'Penayangan Teratas';

  @override
  String topRated(String type) {
    return 'Penilaian teratas $type';
  }

  @override
  String get topScore => 'Skor Teratas';

  @override
  String mostFavourite(String type) {
    return 'Paling Favorit $type';
  }

  @override
  String get thisSeason => 'Musim Ini';

  @override
  String get nextSeason => 'Musim Berikutnya';

  @override
  String get previousSeason => 'Musim Sebelumnya';

  @override
  String get recommended => 'Direkomendasikan';

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
  String get favorites => 'Favorit';

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
  String get gridView => 'Tampilan Kisi';

  @override
  String get listView => 'Tampilan Daftar';

  @override
  String get compactView => 'Tampilan Ringkas';

  @override
  String get layout => 'Tata Letak';

  @override
  String get sort => 'Urutkan';

  @override
  String get utd => 'Atas Ke Bawah';

  @override
  String get dtu => 'Bawah Ke Atas';

  @override
  String get rtl => 'Kanan Ke Kiri';

  @override
  String get ltr => 'Kiri Ke Kanan';

  @override
  String get direction => 'Arah';

  @override
  String get episodeWatched => 'Episode Ditonton';

  @override
  String get chapterRead => 'Bab Dibaca';

  @override
  String get outOf => 'dari';

  @override
  String get totalOf => 'Total dari';

  @override
  String get selected => 'Dipilih';

  @override
  String get found => 'Ditemukan';

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
    return '$type Terpasang';
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
  String get loadExtensionsIcon => 'Memuat Ekstensi ikon';

  @override
  String get loadExtensionsIconDesc =>
      'Nonaktifkan jika ekstensi halaman lambat';

  @override
  String get autoUpdate => 'Pembaruan Otomatis';

  @override
  String get autoUpdateDesc => 'Ekstensi Pembaruan Otomatis';

  @override
  String get installSourceToStart =>
      'Pasang sumber dari halaman ekstensi untuk memulai';

  @override
  String get author => 'Pengarang';

  @override
  String get averageDuration => 'Durasi Rata-rata';

  @override
  String get characters => 'Karakter';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get endDate => 'Tanggal Akhir';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Skor Rata-rata';

  @override
  String get name => 'Nama';

  @override
  String get nameRomaji => 'Nama (Romaji)';

  @override
  String get popularity => 'Popularitas';

  @override
  String get relations => 'Hubungan';

  @override
  String get prequel => 'PREKUEL';

  @override
  String get sequel => 'SEKUEL';

  @override
  String get source => 'Sumber';

  @override
  String get staff => 'Staf';

  @override
  String get startDate => 'Tanggal Mulai';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Sinonim';

  @override
  String get tags => 'Tag';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'tampilkan sedikit';

  @override
  String get expandText => 'tampilkan banyak';

  @override
  String get comingSoon => 'SEGERA Hadir';

  @override
  String get wrongTitle => 'Salah Judul?';

  @override
  String get missingResults => 'Missing Results?';

  @override
  String get youTube => 'Mainkan di YouTube?';

  @override
  String get mediaNotFound => 'Media tidak ditemukan';

  @override
  String get noChapterFound => 'Tidak ditemukan bab';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivitas',
      one: 'Aktivitas',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Bahasa';

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
  String get playerSettingsDesc => 'Mengubah pengaturan pemain';

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
  String get thumbLessSeekBar => 'Seekbar Tanpa Jempol';

  @override
  String get thumbLessSeekBarDesc => 'Hapus jempol dari seekbar';

  @override
  String get customMPV => 'MPV kustom Login';

  @override
  String customMPVDescription(String path) {
    return 'Aktifkan opsi ini untuk menggunakan file konfigurasi MPV Anda sendiri. Tempatkan konfigurasi kustom Anda di: $path';
  }

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
  String get readerSettings => 'Pengaturan Pembaca';

  @override
  String get readerSettingsDesc => 'Mengubah pengaturan pembaca';

  @override
  String get spacedPages => 'Halaman Berjarak';

  @override
  String get spacedPagesDesc => 'Tambahkan ruang antara halaman';

  @override
  String get hideScrollbar => 'Sembunyi Scrollbar';

  @override
  String get hideScrollbarDesc => 'Sembunyikan scrollbar saat membaca';

  @override
  String get hidePageNumber => 'Nomor Halaman Sembunyikan';

  @override
  String get hidePageNumberDesc => 'Sembunyikan nomor halaman saat membaca';

  @override
  String get theme => 'Tema';

  @override
  String get themeDescription => 'Sesuaikan tampilan dan suasana aplikasi Anda';

  @override
  String get darkMode => 'Mode Gelap';

  @override
  String get enableDarkMode => 'Aktifkan Mode Gelap';

  @override
  String get glassEffect => 'Efek Kaca';

  @override
  String get glassEffectDescription => 'Memberikan efek kaca buram ke aplikasi';

  @override
  String get coverTheme => 'Menggunakan Tema Cover';

  @override
  String get coverThemeDescription =>
      'Gunakan gambar penutup media sebagai warna tema';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Gunakan warna yang sama dengan wallpaper Anda';

  @override
  String get customTheme => 'Modifikasi Tema';

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
  String get colorPickerDefault => 'Bawaan';

  @override
  String get colorPickerCustom => 'Modifikasi';

  @override
  String get customPath => 'Modifikasi Jalur';

  @override
  String get customPathDescription =>
      'Mengatur path kustom untuk menyimpan file\nTekan panjang untuk menghapus';

  @override
  String get selectDirectory => 'Pilih direktori';

  @override
  String get selectMediaService => 'Pilih Layanan Media';

  @override
  String get logFile => 'File Log';

  @override
  String get logFileDescription => 'Bagikan file log';

  @override
  String get restoreSettings => 'Pulihkan Pengaturan';

  @override
  String get differentCacheManager => 'Manajer Cache yang berbeda';

  @override
  String get differentCacheManagerDesc =>
      'Gunakan manajer cache Gambar yang berbeda';

  @override
  String get webView => 'Tampilan Web';

  @override
  String get developersHelpers => 'Pengembang/Pembantu';

  @override
  String get developersHelpersDesc => 'Tenaga kerja tanpa bayaran di Dartotsu';

  @override
  String get supportMaintainer =>
      'Ingin mendukung Pemelihara Dartotsu?\nPertimbangkan untuk Donasi';

  @override
  String get donationGoal => 'Belum ada tujuan donasi saat ini';

  @override
  String get options => 'Opsi';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Batal';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';
}
