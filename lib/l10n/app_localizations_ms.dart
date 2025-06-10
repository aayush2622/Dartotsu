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
  String get appTagline =>
      'Aplikasi Terbaik Baru Untuk\nMenjejak Anime & Manga';

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
  String get login => 'Log Masuk';

  @override
  String loginTo(String service) {
    return 'Log masuk ke $service';
  }

  @override
  String logout(String type) {
    return 'Log keluar $type';
  }

  @override
  String get confirmLogout => 'Adakah anda pasti ingin log keluar?';

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
  String get home => 'Home';

  @override
  String get search => 'Cari';

  @override
  String get calendar => 'Kalendar';

  @override
  String get settings => 'Tetapan';

  @override
  String get watch => 'Tonton';

  @override
  String get read => 'Baca';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Komen';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'Musim';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episod',
      one: 'Episod',
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
      other: 'Filem',
      one: 'Filem',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episod';

  @override
  String get totalChapters => 'Bab';

  @override
  String get genres => 'Genre';

  @override
  String get scanlators => 'Penterjemah';

  @override
  String list(String type) {
    return 'Senarai $type';
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
    return '$type Dirancang';
  }

  @override
  String onHold(String type) {
    return '$type Dalam Pegangan';
  }

  @override
  String get droppedAnime => 'Anime Dibuang';

  @override
  String get droppedManga => 'Manga Dibuang';

  @override
  String noDropped(String type) {
    return 'Anda belum menjatuhkan mana-mana $type lagi.';
  }

  @override
  String get continueReading => 'Teruskan Membaca';

  @override
  String get continueWatching => 'Teruskan Menonton';

  @override
  String browse(String type) {
    return 'Telusuri $type';
  }

  @override
  String trending(String type) {
    return '$type Terkini';
  }

  @override
  String popular(String type) {
    return '$type Popular';
  }

  @override
  String get topAiring => 'Penayangan Teratas';

  @override
  String topRated(String type) {
    return '$type Teratas';
  }

  @override
  String mostFavourite(String type) {
    return '$type Paling Kegemaran';
  }

  @override
  String get thisSeason => 'Musim Ini';

  @override
  String get nextSeason => 'Musim Depan';

  @override
  String get previousSeason => 'Musim Sebelumnya';

  @override
  String get recommended => 'Disyorkan';

  @override
  String get recommendationsEmptyMessage =>
      'Tonton/Baca beberapa Anime atau Manga untuk mendapatkan Cadangan';

  @override
  String get recentUpdates => 'Kemas Kini Terkini';

  @override
  String get allCaughtUpNew => 'Semua sudah selesai, apa yang baru?';

  @override
  String favorite(String type) {
    return '$type Kegemaran';
  }

  @override
  String get favorites => 'Kegemaran';

  @override
  String get noFavourites =>
      'Nampaknya anda tidak suka apa-apa,\nCuba suka sesuatu untuk menyimpannya di sini.';

  @override
  String get noOnHold => 'Nampaknya anda belum menangguhkan apa-apa.';

  @override
  String manageLayout(String service, String page) {
    return 'Urus Susun Atur halaman $page untuk $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Anda boleh mengurus susun atur halaman $page dengan menyeret dan menjatuhkan item';
  }

  @override
  String get gridView => 'Paparan Grid';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Paparan Padat';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Susun';

  @override
  String get utd => 'Dari Atas Ke Bawah';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episod Ditonton';

  @override
  String get chapterRead => 'Bab Dibaca';

  @override
  String get outOf => 'daripada';

  @override
  String get totalOf => 'Jumlah';

  @override
  String get selected => 'Dipilih';

  @override
  String get found => 'Dijumpai';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sambungan',
      one: 'Sambungan',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type Tersedia';
  }

  @override
  String installed(String type) {
    return '$type Terpasang';
  }

  @override
  String get extensionsDescription =>
      'Pasang dan uruskan pelebaran untuk fungsi tambahan';

  @override
  String get addAnimeRepo => 'Tambah Repo Anime';

  @override
  String get addAnimeRepoDesc => 'Tambah Repo Anime dari pelbagai sumber';

  @override
  String get addMangaRepo => 'Tambah Repo Manga';

  @override
  String get addMangaRepoDesc => 'Tambah Repo Manga dari pelbagai sumber';

  @override
  String get addNovelRepo => 'Tambah Repo Novel';

  @override
  String get addNovelRepoDesc => 'Tambah Repo Novel dari pelbagai sumber';

  @override
  String get loadExtensionsIcon => 'Muat Ikon Sambungan';

  @override
  String get loadExtensionsIconDesc =>
      'Lumpuhkan jika halaman sambungan menjadi lambat';

  @override
  String get autoUpdate => 'Kemas Kini Automatik';

  @override
  String get autoUpdateDesc => 'Kemas kini sambungan secara automatik';

  @override
  String get installSourceToStart =>
      'Pasang sumber dari halaman sambungan untuk mula';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'Tempoh Purata';

  @override
  String get characters => 'Watak';

  @override
  String get description => 'Sinopsis';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Nama (Romaji)';

  @override
  String get popularity => 'Populariti';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Kakitangan';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Sinonim';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'tunjuk kurang';

  @override
  String get expandText => 'tunjuk lebih';

  @override
  String get comingSoon => 'Akan Datang';

  @override
  String get wrongTitle => 'Tajuk Salah?';

  @override
  String get youTube => 'Main di YouTube?';

  @override
  String get mediaNotFound => 'Media tidak dijumpai';

  @override
  String get noChapterFound => 'Tiada bab dijumpai';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktiviti',
      one: 'Aktiviti',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Bahasa';

  @override
  String get account => 'Akaun';

  @override
  String get accountDescription =>
      'Urusi akaun AniList, MAL, dan Discord anda dengan mudah';

  @override
  String get common => 'Umum';

  @override
  String get commonDescription =>
      'Akses tetapan umum untuk penggunaan aplikasi yang lancar';

  @override
  String get animeDescription => 'Peribadikan dan uruskan keutamaan anime anda';

  @override
  String get mangaDescription => 'Susun dan sesuaikan pengalaman manga anda';

  @override
  String get about => 'Tentang';

  @override
  String get aboutDescription =>
      'Ketahui lebih lanjut tentang aplikasi dan penciptanya';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get notificationsDescription =>
      'Konfigurasikan bagaimana dan bila anda menerima pemberitahuan';

  @override
  String get offlineMode => 'Mod Luar Talian';

  @override
  String get offlineModeDescription =>
      'Gunakan aplikasi tanpa sambungan internet';

  @override
  String get incognitoMode => 'Mod Ingin Tahu';

  @override
  String get incognitoModeDescription =>
      'Melayari tanpa menyimpan aktiviti anda';

  @override
  String get hidePrivate => 'Sembunyikan Peribadi';

  @override
  String get hidePrivateDescription =>
      'Sembunyikan siri peribadi dari halaman Utama.';

  @override
  String get hiddenMedia => 'Media Tersembunyi';

  @override
  String get noHiddenMediaFound => 'Tiada media tersembunyi ditemukan';

  @override
  String get playerSettingsTitle => 'Tetapan Pemain';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Kelajuan';

  @override
  String get speedDescription => 'Kelajuan lalai untuk pemain';

  @override
  String get cursedSpeed => 'Kelajuan Terkutuk';

  @override
  String get cursedSpeedDescription =>
      'Untuk mereka yang terlalu sibuk dengan kehidupan';

  @override
  String get resizeMode => 'Mod Ubah Saiz';

  @override
  String get resizeModeDescription => 'Mod ubah saiz lalai untuk pemain';

  @override
  String get skipButton => 'Butang Lupakan';

  @override
  String get skipButtonDescription => 'Tempoh butang lupakan';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Sari Kata';

  @override
  String get showSubtitles => 'Tunjukkan Sari Kata';

  @override
  String get showSubtitlesDescription => 'Tunjukkan sari kata secara lalai';

  @override
  String get subtitlePreview => 'Pratonton Sari Kata';

  @override
  String get fontColor => 'Warna Fon';

  @override
  String get fontColorDescription => 'Warna fon sari kata';

  @override
  String get fontFamily => 'Keluarga Fon';

  @override
  String get fontFamilyDescription => 'Keluarga fon sari kata';

  @override
  String get fontSize => 'Saiz Fon';

  @override
  String get fontSizeDescription => 'Saiz fon sari kata';

  @override
  String get fontWeight => 'Berat Fon';

  @override
  String get fontWeightDescription => 'Berat fon sari kata';

  @override
  String get backgroundColor => 'Warna Latar Belakang';

  @override
  String get backgroundColorDescription => 'Warna latar belakang sari kata';

  @override
  String get outlineColor => 'Warna Garisan';

  @override
  String get outlineColorDescription => 'Warna garisan sari kata';

  @override
  String get bottomPadding => 'Padding Bawah';

  @override
  String get bottomPaddingDescription => 'Padding bawah sari kata';

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
  String get themeDescription =>
      'Sesuaikan penampilan dan suasana aplikasi anda';

  @override
  String get darkMode => 'Mod Gelap';

  @override
  String get enableDarkMode => 'Aktifkan Mod Gelap';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Gunakan warna yang sama seperti latar belakang anda';

  @override
  String get customTheme => 'Tema Kustom';

  @override
  String get customThemeDescription => 'Gunakan warna anda sendiri untuk tema';

  @override
  String get oledThemeVariant => 'Varian Tema OLED';

  @override
  String get oledThemeVariantDescription => 'Aktifkan Mod OLED';

  @override
  String get colorPicker => 'Pemilih Warna';

  @override
  String get pickColor => 'Pilih warna';

  @override
  String get colorPickerDescription => 'Pilih warna';

  @override
  String get colorPickerDefault => 'Lalai';

  @override
  String get colorPickerCustom => 'Tersuai';

  @override
  String get customPath => 'Laluan Tersuai';

  @override
  String get customPathDescription =>
      'Tetapkan laluan tersuai untuk menyimpan fail\nTekan lama untuk mengeluarkan';

  @override
  String get selectDirectory => 'Pilih direktori';

  @override
  String get selectMediaService => 'Pilih Perkhidmatan Media';

  @override
  String get logFile => 'Fail Log';

  @override
  String get logFileDescription => 'Kongsi fail log';

  @override
  String get restoreSettings => 'Pulihkan Tetapan';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Paparan Web';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Ingin menyokong Penyenggara Dartotsu?\nPertimbangkan untuk Menyumbang';

  @override
  String get donationGoal => 'Tiada matlamat sumbangan buat masa ini';

  @override
  String get options => 'Options';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Batal';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';
}
