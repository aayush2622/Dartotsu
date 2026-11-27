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
  String get appTagline => 'Aplikasi TERBAIK BARU buat\nmelacak Anime & Manga';

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
  String get loadMore => 'Muat lainnya';

  @override
  String get login => 'Masuk';

  @override
  String get continueAsGuest => 'Lanjut sebagai tamu';

  @override
  String get getStarted => 'Mulai';

  @override
  String get loginWithToken => 'Masuk pakai token';

  @override
  String get pasteTokenHint => 'Tempel token aksesmu';

  @override
  String loginTo(String service) {
    return 'Masuk ke $service';
  }

  @override
  String get settings => 'Pengaturan';

  @override
  String get account => 'Akun';

  @override
  String get about => 'Tentang';

  @override
  String get language => 'Bahasa';

  @override
  String get animationSpeed => 'Animasi';

  @override
  String get animationSpeedDesc =>
      'Kecepatan transisi dan efek masuk di seluruh aplikasi';

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
  String get unknownSource => 'Sumber tak dikenal';

  @override
  String get install => 'Pasang';

  @override
  String get update => 'Perbarui';

  @override
  String get uninstall => 'Copot';

  @override
  String get updateInstallCancelled =>
      'Instalasi dibatalkan. Kalau Android bilang aplikasinya bentrok dengan yang sudah terpasang, berarti tanda tangannya beda: copot versi yang sekarang dulu, baru pasang update-nya';

  @override
  String updateInstallFailed(String error) {
    return 'Update gagal: $error';
  }

  @override
  String get appLock => 'Kunci aplikasi';

  @override
  String get appLockDesc =>
      'Minta kode sandi saat aplikasi dibuka atau dibuka lagi setelah beberapa saat';

  @override
  String get appLockBiometric => 'Buka kunci dengan biometrik';

  @override
  String get appLockBiometricDesc =>
      'Gunakan sidik jari atau wajah Anda alih-alih mengetikkan kode sandi';

  @override
  String get appLockBiometricReason => 'Buka kunci Dartotsu';

  @override
  String get appLockDelay => 'Kunci saat menganggur';

  @override
  String get appLockDelayAlways => 'Selalu';

  @override
  String get appLockDelayNever => 'Tidak pernah';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menit',
      one: '1 menit',
    );
    return 'Setelah $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Gunakan biometrik';

  @override
  String get appLockUnlock => 'Masukkan kode sandi kamu';

  @override
  String get appLockWrong => 'Kode sandi salah';

  @override
  String appLockWait(String seconds) {
    return 'Terlalu banyak percobaan, tunggu $seconds detik';
  }

  @override
  String get appLockNew => 'Pilih kode sandi';

  @override
  String get appLockNewHint => '4 sampai 8 angka';

  @override
  String get appLockConfirm => 'Masukkan sekali lagi';

  @override
  String get appLockMismatch => 'Kode sandinya tidak sama';

  @override
  String get appLockOn => 'Kode sandi sudah diatur';

  @override
  String get appLockRemoveTitle => 'Masukkan kode sandi untuk mematikan kunci';

  @override
  String get installFailed => 'Gagal memasang';

  @override
  String get updateFailed => 'Gagal memperbarui';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pembaruan tersedia',
      one: '1 pembaruan tersedia',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Perbarui semua';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done dari $total ekstensi diperbarui';
  }

  @override
  String get updateConflictTitle => 'Pembaruan tidak diinstal';

  @override
  String updateConflictBody(String names) {
    return '$names tidak dapat diinstal pada versi yang ada. Ini biasanya berarti salinan yang diinstal ditandatangani secara berbeda. Copot pemasangannya dan pasang versi baru?';
  }

  @override
  String get updateConflictAction => 'Copot pemasangan dan instal ulang';

  @override
  String get noSourceSettings => 'Sumber ini tidak punya pengaturan';

  @override
  String get addPluginRepository => 'Tambah repositori plugin';

  @override
  String get pluginIndexUrlHint => 'URL indeks plugin';

  @override
  String get addRepository => 'Tambah repositori';

  @override
  String get importRepositoryFile => 'Impor file';

  @override
  String get pluginRepoUpdated => 'Repositori plugin diperbarui';

  @override
  String get pluginRepoUpdateFailed => 'Gagal menyegarkan repositori plugin';

  @override
  String get ok => 'Oke';

  @override
  String get cancel => 'Batal';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';

  @override
  String get save => 'Simpan';

  @override
  String get reset => 'Setel ulang';

  @override
  String get clear => 'Hapus';

  @override
  String get test => 'Tes';

  @override
  String get testing => 'Mengetes…';

  @override
  String get resolving => 'Menyelesaikan…';

  @override
  String get none => 'Tidak ada';

  @override
  String get selectMediaService => 'Pilih layanan media';

  @override
  String get manageServices => 'Layanan media';

  @override
  String get manageServicesDesc =>
      'Susun ulang layanan dan pilih layanan mana yang ditampilkan di alat pilih';

  @override
  String get manageServicesHint =>
      'Seret untuk menyusun ulang, nonaktifkan yang tidak Anda gunakan';

  @override
  String get pickColor => 'Pilih warna';

  @override
  String get colorPickerCustom => 'Kustom';

  @override
  String get colorPickerTransparent => 'Transparan';

  @override
  String get ltr => 'Kiri ke kanan';

  @override
  String get searchSettings => 'Cari pengaturan';

  @override
  String nothingMatches(String query) {
    return 'Tidak ada yang cocok dengan \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Cari di $category';
  }

  @override
  String get settingsAppearance => 'Tampilan';

  @override
  String get settingsAppearanceDesc => 'Tema, warna, mode kaca';

  @override
  String get settingsGeneral => 'Umum';

  @override
  String get settingsGeneralDesc => 'Bahasa dan perilaku';

  @override
  String get settingsNetwork => 'Jaringan';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Layanan pelacakan dan login';

  @override
  String get settingsUpdates => 'Pembaruan';

  @override
  String get amoledBlack => 'Hitam AMOLED';

  @override
  String get amoledBlackDesc => 'Permukaan hitam pekat di mode gelap';

  @override
  String get glassMode => 'Mode kaca';

  @override
  String get glassModeDesc => 'Permukaan buram di atas gambar perpustakaanmu';

  @override
  String get shelfFrame => 'Bingkai di sekitar bagian';

  @override
  String get shelfFrameDesc =>
      'Tampilkan kartu di belakang tiap rak, atau biarkan baris langsung di halaman';

  @override
  String get settingsExtensionsDesc =>
      'Pengelola sumber, repositori, dan opsi ekstensi';

  @override
  String get settingsAddons => 'Addon';

  @override
  String get customPath => 'Lokasi penyimpanan kustom';

  @override
  String get stories => 'Cerita';

  @override
  String get watchOrder => 'Perhatikan urutannya';

  @override
  String get watchOrderOpenSite => 'Buka di chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Tidak ada urutan jam tangan yang ditemukan untuk judul ini';

  @override
  String get watchOrderOpenFailed => 'Tidak dapat membuka judul itu';

  @override
  String get watchOrderCurrent => 'Anda di sini';

  @override
  String get watchOrderCredit => 'Tonton pesanan oleh chiaki.site';

  @override
  String get customPathDesc =>
      'Tempat data aplikasi disimpan. Tekan lama untuk reset';

  @override
  String get selectDirectory => 'Pilih folder';

  @override
  String get differentCacheManager => 'Cache gambar alternatif';

  @override
  String get differentCacheManagerDesc =>
      'Pakai pengelola cache lain untuk gambar';

  @override
  String get settingsSync => 'Pengaturan sinkronisasi';

  @override
  String get settingsSyncDesc =>
      'Jaga agar pengaturan Anda tetap sama di setiap perangkat. Mereka disimpan dalam inti pribadi di akun GitHub Anda';

  @override
  String get settingsSyncSwitch => 'Sinkronkan saat perubahan';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Masuk dengan GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Pengaturan disimpan dalam inti pribadi di akun Anda';

  @override
  String get settingsSyncToken => 'Gunakan token akses pribadi';

  @override
  String get settingsSyncTokenDesc =>
      'Buat satu di github.com/settings/tokens hanya dengan izin inti';

  @override
  String get settingsSyncTokenField => 'Tanda';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Masuk sebagai $user';
  }

  @override
  String get settingsSyncSignOut => 'Keluar';

  @override
  String settingsSyncCode(Object code) {
    return 'Masukkan $code di GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Halaman GitHub terbuka di browser Anda. Ketuk untuk menyalin kode, atau ketuk dan tahan untuk membatalkan.';

  @override
  String get settingsSyncSignInFailed => 'Tidak dapat masuk ke GitHub';

  @override
  String get dcPreview => 'Pratinjau';

  @override
  String get dcSampleWatching => 'Menonton';

  @override
  String get dcSampleReading => 'Membaca';

  @override
  String get dcSampleBrowsing => 'Menjelajah';

  @override
  String get dcSampleLive => 'Saat ini';

  @override
  String get dcLiveNothing =>
      'Tidak ada yang terlihat saat ini. Buka judul, mulai episode atau bab, dan judul itu muncul di sini.';

  @override
  String get dcMemberList => 'Dalam daftar anggota';

  @override
  String get dcAccount => 'Akun';

  @override
  String get dcSignIn => 'Masuk dengan Perselisihan';

  @override
  String get dcSignOut => 'Keluar';

  @override
  String get dcDesktopHint =>
      'Tanpa terhubung, Discord menampilkan “Menonton Dartotsu” melalui aplikasi desktop. Hubungkan Discord untuk memberi nama aktivitas sesuai judul Anda, termasuk di ponsel.';

  @override
  String get dcMobileHint =>
      'Hubungkan Discord untuk menampilkan apa yang Anda tonton atau baca. Ini menggunakan halaman otorisasi Discord, bukan token akun Anda.';

  @override
  String get dcConnect => 'Hubungkan Perselisihan';

  @override
  String get dcConnectDesc =>
      'Membuka halaman otorisasi Discord dan menambahkan Dartotsu di bawah Aplikasi Resmi. Discord meminta untuk memperbarui kehadiran Anda. Hanya token penyegaran yang disimpan, bukan token akun Anda.';

  @override
  String get dcConnectFailed => 'Tidak dapat menghubungkan Perselisihan';

  @override
  String get dcConnectedSnack => 'Perselisihan terhubung';

  @override
  String get dcDisconnect => 'Putuskan sambungan';

  @override
  String get dcDisconnectedSnack => 'Perselisihan terputus';

  @override
  String get dcUseToken => 'Gunakan token sebagai gantinya';

  @override
  String get dcRouteDesktop => 'Melalui aplikasi desktop Discord';

  @override
  String get dcRouteHeadless => 'Melalui akun Anda';

  @override
  String get dcRouteGateway => 'Melalui akun Anda, langsung';

  @override
  String get dcRouteLinked => 'Aplikasi yang terhubung';

  @override
  String get dcRouteNone => 'Tidak terhubung';

  @override
  String get dcStatusNeedsToken =>
      'Membutuhkan token Perselisihan. Menghubungkan aplikasi tidak mengatur status online Anda.';

  @override
  String get dcAccountOnly => 'Membutuhkan akun masuk';

  @override
  String get dcStatusSection => 'Status';

  @override
  String get dcControlStatus => 'Kendalikan statusku';

  @override
  String get dcControlStatusDesc =>
      'Tetap terhubung langsung ke Discord saat Rich Presence aktif, sehingga Dartotsu dapat mengatur status Anda.';

  @override
  String get dcStatusOnline => 'Daring';

  @override
  String get dcStatusIdle => 'Menganggur';

  @override
  String get dcStatusDnd => 'Jangan ganggu';

  @override
  String get dcStatusInvisible => 'Tak terlihat';

  @override
  String get dcCustomStatus => 'Status khusus';

  @override
  String get dcCustomStatusHint => 'Apa yang sedang kamu lakukan?';

  @override
  String get dcActivitySection => 'Aktivitas';

  @override
  String get dcShowWatching => 'Tunjukkan sambil menonton';

  @override
  String get dcShowReading => 'Tunjukkan saat membaca';

  @override
  String get dcListening => 'Mendengarkan';

  @override
  String get dcCompeting => 'Bersaing';

  @override
  String get dcActivityName => 'Nama aktivitas';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Judul';

  @override
  String get dcNameCustom => 'Adat';

  @override
  String get dcCustomNameHint => 'Nama ditampilkan setelah “Menonton”';

  @override
  String get dcStatusText => 'Teks status';

  @override
  String get dcStatusTextDesc =>
      'Apa yang ditampilkan daftar anggota di sebelah nama Anda';

  @override
  String get dcDisplayName => 'Nama';

  @override
  String get dcDisplayState => 'Negara';

  @override
  String get dcDisplayDetails => 'Detail';

  @override
  String get dcTextSection => 'Teks';

  @override
  String get dcDetails => 'Baris teratas';

  @override
  String get dcState => 'Intinya';

  @override
  String get dcTemplateHint => 'Kosong menggunakan default';

  @override
  String get dcVariables => 'Ketuk untuk memasukkan nilai';

  @override
  String get dcImagesSection => 'Gambar';

  @override
  String get dcLargeImage => 'Gambar besar';

  @override
  String get dcLargeAuto => 'Otomatis';

  @override
  String get dcLargeCover => 'Penutup';

  @override
  String get dcLargeLogo => 'logo';

  @override
  String get dcSmallImage => 'Gambar kecil';

  @override
  String get dcSmallAuto => 'logo';

  @override
  String get dcSmallNone => 'Tidak ada';

  @override
  String get dcTimerStyle => 'Gaya pengatur waktu';

  @override
  String get dcTimerAuto => 'Otomatis';

  @override
  String get dcTimerElapsed => 'Berlalu';

  @override
  String get dcTimerRemaining => 'Tersisa';

  @override
  String get dcButtonsSection => 'Tombol';

  @override
  String get dcButtonMedia => 'Tautan ke judul';

  @override
  String get dcButtonApp => 'Tautan ke Dartotsu';

  @override
  String get dcButtonCustom => 'Tombol khusus';

  @override
  String get dcButtonLabel => 'Label';

  @override
  String get dcButtonUrl => 'Tautan';

  @override
  String get dcPrivacySection => 'Privasi';

  @override
  String get dcPrivateText => 'Teks pribadi';

  @override
  String get dcPrivateHint => 'Sesuatu yang pribadi';

  @override
  String get dcTokenWarning =>
      'Masuk menggunakan token akun Anda. Aturan Discord melarang hal ini, jadi gunakanlah dengan risiko Anda sendiri.';

  @override
  String get dcConnected => 'Terhubung';

  @override
  String get dcConnection => 'Koneksi';

  @override
  String get dcMethodDesktop => 'Aplikasi desktop perselisihan';

  @override
  String get dcMethodDesktopDesc =>
      'Digunakan secara otomatis ketika tidak ada lagi yang terhubung. Discord harus dibuka di komputer ini.';

  @override
  String get dcMethodToken => 'Token akun';

  @override
  String get dcInUse => 'Sedang digunakan';

  @override
  String get dcRecommended => 'Direkomendasikan';

  @override
  String get dcConnecting => 'Menghubungkan…';

  @override
  String get dcDisconnected => 'Tidak terhubung';

  @override
  String dcSignedInAs(String name) {
    return 'Masuk sebagai $name';
  }

  @override
  String get settingsSyncOn => 'Aktif';

  @override
  String get settingsSyncCustom => 'Adat';

  @override
  String get settingsSyncChangedHeader => 'Pengaturan diubah';

  @override
  String get settingsSyncNoneChanged =>
      'Anda belum mengubah satu pun dari ini, jadi tidak ada yang perlu disinkronkan.';

  @override
  String get settingsSyncChangedOnly =>
      'Hanya pengaturan yang Anda ubah yang disimpan. Segala sesuatu yang lain menggunakan defaultnya di setiap perangkat. Ikon cloud menunjukkan apa yang sudah ada di server.';

  @override
  String get settingsSyncOffCategory =>
      'Tidak menyinkronkan. Ini tetap berada di perangkat ini dan salinan server dibiarkan apa adanya.';

  @override
  String get settingsSyncPartsNote =>
      'Per perangkat. Mati mempertahankan nilai masing-masing perangkat, sehingga ponsel dan TV dapat berbeda.';

  @override
  String get settingsSyncPartSubtitles => 'Ukuran dan warna subtitle';

  @override
  String get settingsSyncPartSubtitlesDesc => 'Ukuran, berat, warna dan posisi';

  @override
  String get settingsSyncPartPictureColors => 'Warna gambar';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Kecerahan, kontras, saturasi, gamma, rona, dan HDR';

  @override
  String get settingsSyncPartPalette => 'Warna tema';

  @override
  String get settingsSyncPartPaletteDesc => 'Tema, warna aksen, dan OLED hitam';

  @override
  String get settingsSyncCatOther => 'Tonton, baca, dan layanan';

  @override
  String get settingsSyncTitles => 'Tonton kemajuan dan judul';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records judul dan $resume entri resume di server';
  }

  @override
  String get settingsSyncTitlesNone => 'Belum ada yang diunggah';

  @override
  String get settingsSyncTitlesNote =>
      'Perhatikan dan baca posisi, rak resume, daftar lokal Anda, bookmark, sorotan, dan opsi per judul. Pencocokan sumber dan streaming tetap ada di setiap perangkat karena bergantung pada ekstensi Anda. Judul diunggah paling banyak setiap 45 detik.';

  @override
  String get settingsSyncConnect => 'Tidak terhubung';

  @override
  String get settingsSyncConnectDesc =>
      'Masuk dengan GitHub agar pengaturan Anda tetap sama di setiap perangkat.';

  @override
  String get settingsSyncFailedTitle => 'Sinkronisasi gagal';

  @override
  String get settingsSyncPaused => 'Dijeda';

  @override
  String get settingsSyncPausedDesc =>
      'Tidak ada yang diunggah atau diunduh saat ini tidak aktif.';

  @override
  String get settingsSyncUpToDate => 'Terkini';

  @override
  String get settingsSyncRetry => 'Coba lagi';

  @override
  String get settingsSyncAccount => 'akun GitHub';

  @override
  String get settingsSyncAccountDesc =>
      'Data Anda masuk ke inti pribadi di akun Anda sendiri.';

  @override
  String get settingsSyncWaiting => 'Menunggu Anda menyetujuinya di GitHub';

  @override
  String get settingsSyncCopyCode => 'Ketuk kode untuk menyalinnya';

  @override
  String get settingsSyncCancel => 'Batalkan';

  @override
  String get settingsSyncStatSettings => 'Pengaturan';

  @override
  String get settingsSyncStatTitles => 'Judul';

  @override
  String get settingsSyncStatShelf => 'Lanjutkan';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Diunggah $time dari $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count berubah',
      one: '1 berubah',
      zero: 'Belum ada yang berubah',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Akun dan kata sandi';

  @override
  String get settingsSyncSecretsDesc =>
      'Sinkronkan proses masuk Anda (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), kunci API, dan kunci aplikasi antar perangkat Anda. Mereka dienkripsi dengan frasa sandi yang tetap ada di perangkat Anda, sehingga GitHub tidak pernah melihatnya.';

  @override
  String get settingsSyncSecretsOn => 'Akun disinkronkan dan dienkripsi';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Keluar di satu perangkat tidak membuat Anda keluar di perangkat lain.';

  @override
  String get settingsSyncSecretsBroken =>
      'Frasa sandinya tidak lagi cocok dengan yang ada di server. Masukkan lagi untuk terus menyinkronkan akun.';

  @override
  String get settingsSyncPassphraseSet => 'Tetapkan frasa sandi';

  @override
  String get settingsSyncPassphraseEnter => 'Masukkan frasa sandi Anda';

  @override
  String get settingsSyncPassphraseField => 'Frasa sandi';

  @override
  String get settingsSyncPassphraseConfirm => 'Ulangi frasa sandinya';

  @override
  String get settingsSyncPassphraseNew =>
      'Pilih frasa sandi minimal 6 karakter. Itu tidak disimpan di mana pun kecuali perangkat Anda dan tidak dapat dipulihkan. Jika Anda lupa, hapus salinan server dan mulai lagi.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Masukkan frasa sandi yang Anda pilih di perangkat Anda yang lain. Akun di perangkat ini akan digantikan oleh akun yang disinkronkan.';

  @override
  String get settingsSyncPassphraseWrong => 'Frasa sandi salah';

  @override
  String get settingsSyncPassphraseMismatch => 'Frasa sandinya tidak cocok';

  @override
  String get settingsSyncPassphraseShort => 'Gunakan minimal 6 karakter';

  @override
  String get settingsSyncSecretsStop => 'Hentikan sinkronisasi akun';

  @override
  String get settingsSyncSecretsDelete => 'Hapus dari GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Ini menghapus file akun terenkripsi dari inti Anda. Perangkat lain tetap login dan dapat menyetel frasa sandi baru.';

  @override
  String get settingsSyncWhat => 'Apa yang harus disinkronkan';

  @override
  String get settingsSyncServer => 'Di server';

  @override
  String get settingsSyncServerEmpty => 'Belum ada yang diunggah';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return 'Pengaturan $count, diunggah $time dari $device';
  }

  @override
  String get settingsSyncThisDevice => 'perangkat ini';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pengaturan $count di server',
      one: '1 pengaturan di server',
      zero: 'Tidak ada apa pun di server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sinkronkan sekarang';

  @override
  String get settingsSyncRunning => 'Menyinkronkan…';

  @override
  String get settingsSyncNever => 'Belum disinkronkan';

  @override
  String settingsSyncLast(Object time) {
    return 'Terakhir disinkronkan $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sinkronisasi gagal: $error';
  }

  @override
  String get settingsSyncScope =>
      'Hanya pengaturan yang berfungsi sama di semua tempat yang disinkronkan. Akun, token, folder, ekstensi, notifikasi, Discord, pembaruan, dan ukuran jendela tetap ada di setiap perangkat.';

  @override
  String get backupAndRestore => 'Cadangan dan pemulihan';

  @override
  String get backupAndRestoreDesc => 'Simpan atau muat preferensimu';

  @override
  String get backup => 'Cadangan';

  @override
  String get restore => 'Pulihkan';

  @override
  String get loadExtensionsIcon => 'Muat ikon ekstensi';

  @override
  String get autoUpdateRuntimes =>
      'Perbarui waktu proses ekstensi secara otomatis';

  @override
  String get autoUpdateRuntimesDesc =>
      'Unduh Aniyomi baru, CloudStream, dan versi runtime lainnya di latar belakang. Mati, ikon pembaruan malah muncul di sebelah pengelola.';

  @override
  String get loadExtensionsIconDesc =>
      'Tampilkan ikon sumber di daftar ekstensi';

  @override
  String get sectionStorage => 'Penyimpanan';

  @override
  String get sectionManagers => 'Pengelola';

  @override
  String get sectionOptions => 'Opsi';

  @override
  String get backupTabBackup => 'Cadangkan';

  @override
  String get backupTabRestore => 'Pulihkan';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys pengaturan di $categories kategori';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Cadangan terakhir $time';
  }

  @override
  String get backupNever => 'Belum ada cadangan';

  @override
  String get backupSelectAll => 'Pilih semua';

  @override
  String get backupClearAll => 'Hapus';

  @override
  String backupKeys(Object count) {
    return '$count pengaturan';
  }

  @override
  String get backupPasswordRequired =>
      'Kata sandi (diperlukan untuk data akun)';

  @override
  String get backupProtectedNeedsPassword =>
      'Tetapkan kata sandi untuk mencadangkan data akun, atau hapus centangnya';

  @override
  String get backupProtectedSkipped =>
      'Cadangan ini tidak memiliki kata sandi, sehingga data akunnya dilewati';

  @override
  String get backupPassword => 'Kata sandi (opsional)';

  @override
  String get backupPasswordHint => 'Kosongkan untuk pakai bawaan';

  @override
  String get backupSensitive =>
      'Termasuk token login. Jaga file ini tetap pribadi';

  @override
  String get backupCreate => 'Buat cadangan';

  @override
  String backupSaved(Object name) {
    return 'Cadangan disimpan di $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Cadangan gagal: $error';
  }

  @override
  String get backupPickFile => 'Pilih file cadangan';

  @override
  String get backupPickFileDesc => 'Pilih file .json buatan Dartotsu';

  @override
  String get backupChooseAnother => 'Pilih file lain';

  @override
  String get backupCreatedAt => 'Dibuat';

  @override
  String get backupAppVersion => 'Versi aplikasi';

  @override
  String get backupDevice => 'Perangkat';

  @override
  String get backupAccounts => 'Akun';

  @override
  String get backupSize => 'Ukuran';

  @override
  String get backupEncrypted => 'Dilindungi kata sandi';

  @override
  String get backupUnlock => 'Buka kunci';

  @override
  String get backupWrongPassword =>
      'File ini tidak bisa dibaca. Cek kata sandinya';

  @override
  String get backupRestoreSelected => 'Pulihkan yang dipilih';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Pulihkan $count pengaturan? Nilai yang ada di kategori ini akan ditimpa.';
  }

  @override
  String get backupRestored =>
      'Sudah dipulihkan. Mulai ulang aplikasi supaya semuanya berlaku';

  @override
  String backupRestoreFailed(Object error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get backupSelectOne => 'Pilih minimal satu kategori';

  @override
  String get backupCatTheme => 'Tampilan';

  @override
  String get backupCatThemeDesc => 'Tema, warna, kaca, font, dan gaya kartu';

  @override
  String get backupCatCommon => 'Umum';

  @override
  String get backupCatCommonDesc =>
      'Bahasa, penyimpanan, jaringan, dan opsi ekstensi';

  @override
  String get backupCatPlayer => 'Pemutar';

  @override
  String get backupCatPlayerDesc => 'Preferensi pemutar';

  @override
  String get backupCatReader => 'Pembaca';

  @override
  String get backupCatReaderDesc => 'Preferensi pembaca';

  @override
  String get backupCatProtected => 'Akun';

  @override
  String get backupCatProtectedDesc => 'Token login dan data masuk';

  @override
  String get backupCatOther => 'Layanan dan feed';

  @override
  String get backupCatOtherDesc => 'Tata letak feed, daftar, dan opsi layanan';

  @override
  String get logFile => 'File log';

  @override
  String get logFileDesc =>
      'Bagikan log aplikasi, atau salin lokasinya di Linux';

  @override
  String get logDelete => 'Hapus file log';

  @override
  String get logDeleteDesc =>
      'Hapus log aplikasi yang disimpan untuk mengosongkan ruang';

  @override
  String logDeleted(String size) {
    return 'Menghapus $size log';
  }

  @override
  String get missingSequel => 'Sekuel Hilang';

  @override
  String get rising => 'Bangkit';

  @override
  String get stacks => 'Tumpukan';

  @override
  String get stacksAll => 'Semua';

  @override
  String get stacksFeatured => 'Unggulan';

  @override
  String get stacksMine => 'Milikmu';

  @override
  String get stacksSaved => 'Disimpan';

  @override
  String get stacksFollowing => 'Mengikuti';

  @override
  String get stacksEmpty => 'Belum ada tumpukan di sini';

  @override
  String get stacksSignIn => 'Masuk ke MangaBaka untuk melihat tumpukan Anda';

  @override
  String get stacksScopeNeeded =>
      'Tumpukan Anda memerlukan izin baru. Masuk ke MangaBaka lagi untuk mengizinkannya.';

  @override
  String get stacksSignInAgain => 'Masuk lagi';

  @override
  String get stacksCouldntLoad => 'Tidak dapat memuat tumpukan';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seri $count',
      one: '1 seri',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menyimpan',
      one: '1 simpan',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'oleh $name';
  }

  @override
  String get stackSpoilers => 'Spoiler';

  @override
  String get stackEmptyEntries => 'Tumpukan ini kosong';

  @override
  String get stackSave => 'Simpan tumpukan';

  @override
  String get stackUnsave => 'Hapus dari yang disimpan';

  @override
  String get stackSavedToast => 'Disimpan ke tumpukan Anda';

  @override
  String get stackRemovedToast => 'Dihapus dari tumpukan simpanan Anda';

  @override
  String userStacks(String name) {
    return 'Tumpukan oleh $name';
  }

  @override
  String get newsTitle => 'Berita';

  @override
  String get newsEmpty => 'Tidak ada berita saat ini';

  @override
  String get newsCouldntLoad => 'Tidak dapat memuat berita';

  @override
  String get logFileCopied => 'Lokasi log disalin';

  @override
  String get donateSheetTitle => 'Suka Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu dibuat dan dirawat oleh satu orang. Kalau berguna buatmu, pertimbangkan untuk mendukung pengembangannya.';

  @override
  String get donateLater => 'Nanti saja';

  @override
  String get glassBackground => 'Latar kaca';

  @override
  String get glassBackgroundDesc =>
      'Banner profilmu, kecuali kamu atur tautan gambar';

  @override
  String get glassBackgroundHint =>
      'Tautan gambar (kosongkan untuk pakai banner-mu)';

  @override
  String get followCover => 'Ikuti sampul';

  @override
  String get followCoverDesc =>
      'Warna mengikuti latar, dan sampul di halaman detail';

  @override
  String get followCoverMediaOnly => 'Hanya untuk media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Hanya ikuti sampul di halaman media, di mana pun tetap menggunakan warna normal';

  @override
  String get cardStyle => 'Gaya kartu';

  @override
  String get cardStyleDesc => 'Posisi judul, ukuran, progres, dan lencana';

  @override
  String get customFont => 'huruf';

  @override
  String get customFontDesc =>
      'Bawaan, file dari perangkatmu, atau Google Fonts';

  @override
  String get customFontError => 'File font itu tidak bisa dimuat';

  @override
  String get googleFontError => 'Font itu tidak bisa diunduh';

  @override
  String get yourFonts => 'Fontmu';

  @override
  String get addFontFile => 'Tambah file font…';

  @override
  String get browseGoogleFonts => 'Jelajahi Google Fonts…';

  @override
  String get searchGoogleFonts => 'Cari di Google Fonts';

  @override
  String get defaultFont => 'Bawaan';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Warna dinamis dari sistem';

  @override
  String get jsonTheme => 'File tema kustom';

  @override
  String get jsonThemeDesc =>
      'Warna langsung dari ~/.config/dartotsu/theme.json (skrip kustom, atau suntinganmu sendiri)';

  @override
  String get themeMode => 'Mode tema';

  @override
  String get mode => 'Modus';

  @override
  String get trackingService => 'Layanan pelacakan';

  @override
  String get signOut => 'Keluar';

  @override
  String get signIn => 'Masuk';

  @override
  String get notSignedIn => 'Belum masuk';

  @override
  String signOutOf(String service) {
    return 'Keluar dari $service?';
  }

  @override
  String get checkForUpdates => 'Cek pembaruan';

  @override
  String get checkForUpdatesDesc => 'Beri tahu kalau ada rilis baru di GitHub';

  @override
  String get updateChannel => 'Kanal pembaruan';

  @override
  String get channel => 'Kanal';

  @override
  String get stable => 'Stabil';

  @override
  String get preRelease => 'Pra-rilis';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Cek sekarang';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Bawaan';

  @override
  String currentlyUsing(String value) {
    return 'Saat ini: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Bawaan (Cloudflare)';

  @override
  String get proxy => 'Proksi';

  @override
  String get proxyProtocol => 'Tipe';

  @override
  String get proxyHost => 'Tuan rumah';

  @override
  String get proxyPort => 'Pelabuhan';

  @override
  String get proxyUsername => 'Nama pengguna';

  @override
  String get proxyPassword => 'Kata sandi';

  @override
  String get optional => 'Opsional';

  @override
  String get clearCookies => 'Hapus cookie';

  @override
  String get clearCookiesDesc => 'Hapus semua cookie yang tersimpan';

  @override
  String notImplementedArea(String area) {
    return '$area — segera hadir';
  }

  @override
  String notImplementedService(String service) {
    return '$service belum mendukung ini.';
  }

  @override
  String get couldNotLoadResults => 'Hasil tidak bisa dimuat';

  @override
  String get updateCheckFailed => 'Gagal mengecek pembaruan';

  @override
  String get highRefreshRate => 'Refresh rate tinggi';

  @override
  String get highRefreshRateDesc =>
      'Pakai refresh rate tertinggi yang didukung layarmu';

  @override
  String get imageSave => 'Simpan gambar';

  @override
  String imageSavedTo(String path) {
    return 'Disimpan di $path';
  }

  @override
  String get imageActionFailed => 'Gambar tidak bisa diunduh';

  @override
  String get imageTitleCover => 'Sampul';

  @override
  String get imageTitlePage => 'Halaman';

  @override
  String get imageTitleBanner => 'Spanduk';

  @override
  String get imageTitleAvatar => 'Foto profil';

  @override
  String get verifyTls => 'Verifikasi sertifikat';

  @override
  String get verifyTlsDesc =>
      'Tolak server dengan sertifikat HTTPS tidak valid. Matikan hanya untuk sumber yang pakai sertifikat self-signed';

  @override
  String get clearCookiesConfirm =>
      'Hapus semua cookie yang tersimpan? Ini bisa membuatmu keluar dari beberapa sumber.';

  @override
  String get version => 'Versi';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Kode sumber, isu, dan rilis';

  @override
  String get discordDesc => 'Komunitas dan bantuan';

  @override
  String get supportDeveloper => 'Dukung pengembang';

  @override
  String get buyMeCoffee => 'Belikan aku kopi';

  @override
  String get upiId => 'ID UPI';

  @override
  String get upiCopied => 'ID UPI disalin';

  @override
  String get donateDesc => 'Dukung pengembangan';

  @override
  String get contributors => 'Kontributor';

  @override
  String get contributorsDesc => 'Orang-orang yang membuat Dartotsu';

  @override
  String get contributorsLoadFailed => 'Kontributor tidak bisa dimuat';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Proyek yang dibangun di atas Dartotsu';

  @override
  String get forksEmpty => 'Tidak ada fork';

  @override
  String get sectionColors => 'Warna';

  @override
  String get sectionDisplay => 'Tampilan';

  @override
  String get sectionStyle => 'Gaya';

  @override
  String get sectionCommunity => 'Komunitas';

  @override
  String get sectionAppInfo => 'Info aplikasi';

  @override
  String get sectionRequests => 'Permintaan';

  @override
  String get sectionDnsProxy => 'DNS & Proksi';

  @override
  String get onboardingBack => 'Kembali';

  @override
  String get onboardingNext => 'Lanjut';

  @override
  String get onboardingSkip => 'Lewati';

  @override
  String get onboardingLanguageBody =>
      'Pilih bahasa Dartotsu yang ditampilkan. Anda dapat mengubahnya nanti di Pengaturan.';

  @override
  String get onboardingPaletteTitle => 'Sesuaikan sesukamu';

  @override
  String get onboardingPaletteBody =>
      'Pilih palet. Semua aksen, dari kartu sampai pemutar, mengikutinya.';

  @override
  String get themeModeAuto => 'Otomatis';

  @override
  String get themeModeLight => 'Terang';

  @override
  String get themeModeDark => 'Gelap';

  @override
  String get onboardingSyncTitle => 'Sinkronkan perpustakaanmu';

  @override
  String get onboardingSyncBody =>
      'Masuk dengan AniList untuk membawa daftar, progres, dan skormu. Atau lewati dan jelajahi sebagai tamu.';

  @override
  String get onboardingOpenLinks => 'Buka tautan AniList dan repo di Dartotsu';

  @override
  String get onboardingPermsTitle => 'Izin';

  @override
  String get onboardingPermsBody =>
      'Izinkan sekarang supaya unduhan, pembaruan, dan notifikasi jalan tanpa gangguan. Kamu bisa mengubahnya nanti di pengaturan sistem.';

  @override
  String get permNotifications => 'Notifikasi';

  @override
  String get permNotificationsDesc =>
      'Progres unduhan, episode baru, dan balasan';

  @override
  String get permStorage => 'Akses semua file';

  @override
  String get permStorageDesc => 'Simpan unduhan ke folder Dartotsu publik';

  @override
  String get permInstall => 'Pasang pembaruan';

  @override
  String get permInstallDesc =>
      'Biarkan Dartotsu memasang pembaruannya sendiri';

  @override
  String get permBattery => 'Baterai tanpa batasan';

  @override
  String get permBatteryDesc =>
      'Biarkan unduhan panjang tetap jalan di latar belakang';

  @override
  String get permGrant => 'Izinkan';

  @override
  String get linkOpenInApp => 'Buka tautan di Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Biarkan tautan AniList dan repo membuka aplikasi';

  @override
  String get reviewsTitle => 'Ulasan';

  @override
  String get reviewsEmpty => 'Belum ada ulasan';

  @override
  String get reviewsFailed => 'Ulasan tidak bisa dimuat';

  @override
  String get reviewHelpfulQuestion => 'Apakah ulasan ini membantu?';

  @override
  String get reviewVoteFailed => 'Votemu tidak bisa disimpan';

  @override
  String reviewHelpful(int n, int total) {
    return '$n dari $total merasa ini membantu';
  }

  @override
  String get calendarTitle => 'Jadwal tayang';

  @override
  String get calendarToday => 'Hari ini';

  @override
  String get calendarEmpty => 'Tidak ada yang tayang hari ini';

  @override
  String get calendarFailed => 'Jadwal tidak bisa dimuat';

  @override
  String calendarChapter(int n) {
    return 'Bab $n';
  }

  @override
  String get calendarExpected => 'Diharapkan';

  @override
  String get castReceiverFailed => 'Chromecast tidak memulai pemutarnya';

  @override
  String get castPlaybackFailed =>
      'Perangkat tidak dapat memutar streaming ini';

  @override
  String get shortcutNothingToContinue => 'Belum ada yang bisa dilanjutkan';

  @override
  String shortcutNoCalendar(String service) {
    return '$service tidak memiliki kalender';
  }

  @override
  String calendarEpisode(int n) {
    return 'Episode $n';
  }

  @override
  String get shareAnalytics => 'Bagikan data penggunaan anonim';

  @override
  String get shareAnalyticsDesc =>
      'Jumlah pengguna dan laporan crash anonim. Tanpa akun atau data pribadi';

  @override
  String get linkOpenAnilist => 'Buka tautan AniList di Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Aktifkan penanganan tautan supaya tautan anilist.co membuka aplikasi';

  @override
  String get linkSettingsFailed => 'Pengaturan sistem tidak bisa dibuka';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Tampilkan apa yang sedang kamu lakukan di profil Discord-mu. Butuh token Discord-mu.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Tampilkan apa yang sedang kamu lakukan di profil Discord-mu. Butuh aplikasi desktop Discord yang sedang jalan.';

  @override
  String get discordBrowsing => 'Tampilkan aktivitas menjelajah';

  @override
  String get discordBrowsingDesc =>
      'Tampilkan juga tab, halaman, atau profil yang sedang kamu lihat, bukan cuma yang kamu tonton atau baca.';

  @override
  String get discordLookHeader => 'Tampilan presence';

  @override
  String get discordActivityType => 'Jenis aktivitas';

  @override
  String get discordActivityTypeDesc =>
      'Cara Discord menuliskannya: \"Watching …\" atau \"Playing …\". Otomatis pakai Watching untuk anime dan Playing untuk yang lain.';

  @override
  String get discordWatching => 'Menonton';

  @override
  String get discordPlaying => 'Bermain';

  @override
  String get discordCovers => 'Tampilkan sampul';

  @override
  String get discordCoversDesc => 'Sampul dan ikon Dartotsu di kartu.';

  @override
  String get discordTimer => 'Tampilkan timer';

  @override
  String get discordTimerDesc => 'Waktu berjalan atau tersisa di bawah judul.';

  @override
  String get discordButtons => 'Tampilkan tombol';

  @override
  String get discordButtonsDesc =>
      'Tombol \"View anime / manga\" dan \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Sembunyikan judul';

  @override
  String get discordHideTitlesDesc =>
      'Ganti nama anime dan manga (beserta sampul dan tautannya) dengan \"Something private\".';

  @override
  String get discordConnectionHeader => 'Koneksi';

  @override
  String get listSearchHint => 'Cari di daftar ini';

  @override
  String get listSort => 'Urutkan';

  @override
  String get listFilter => 'Menyaring';

  @override
  String get listRandom => 'Judul acak';

  @override
  String get listReverse => 'Balik urutan';

  @override
  String get listSortDefault => 'Urutan daftar';

  @override
  String get listSortScore => 'Skormu';

  @override
  String get listSortTitle => 'Judul';

  @override
  String get listSortUpdated => 'Terakhir diperbarui';

  @override
  String get listSortProgress => 'Progres';

  @override
  String get listSortReleased => 'Tanggal rilis';

  @override
  String get listSortAverage => 'Skor rata-rata';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genre';

  @override
  String get listFilterClear => 'Hapus filter';

  @override
  String get listNoMatches => 'Tidak ada yang cocok di daftar ini';

  @override
  String get discordLogin => 'Masuk ke Discord';

  @override
  String get discordToken => 'Token Discord';

  @override
  String get discordTokenSaved =>
      'Tersimpan. Ketuk untuk mengganti, tekan lama untuk menghapus.';

  @override
  String get discordTokenNotSet => 'Belum diatur. Ketuk untuk menambahkan.';

  @override
  String get discordTokenSavedSnack => 'Token Discord disimpan';

  @override
  String get discordTokenRemovedSnack => 'Token Discord dihapus';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Aktif · ketuk untuk mengubah tampilannya';

  @override
  String get discordRichPresenceRowOff =>
      'Tampilkan apa yang sedang kamu lakukan di profil Discord-mu';

  @override
  String get loginCancelled => 'Login dibatalkan';

  @override
  String get invalidToken => 'Token tidak valid';

  @override
  String loginFailed(String error) {
    return 'Login gagal: $error';
  }

  @override
  String get malLoginFailed => 'Login MyAnimeList gagal';

  @override
  String get kitsuLoginFailed =>
      'Login Kitsu gagal. Cek email dan kata sandimu.';

  @override
  String get kitsuLoginTitle => 'Masuk ke Kitsu';

  @override
  String get emailOrUsername => 'Email atau nama pengguna';

  @override
  String get password => 'Kata sandi';

  @override
  String get kitsuProfile => 'Profil Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Login MangaBaka gagal';

  @override
  String get comickLoginFailed => 'Login komik gagal';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Sedang tren';

  @override
  String get anticipated => 'Diantisipasi';

  @override
  String get watchlist => 'Daftar pantauan';

  @override
  String get recommendedShows => 'Pertunjukan yang Direkomendasikan';

  @override
  String get recommendedMovies => 'Film yang Direkomendasikan';

  @override
  String get boxOffice => 'Kantor Box';

  @override
  String get popularMovies => 'Film Populer';

  @override
  String get popularShows => 'Acara Populer';

  @override
  String get anticipatedMovies => 'Film yang Dinantikan';

  @override
  String get anticipatedShows => 'Pertunjukan yang Dinanti';

  @override
  String get trendingShows => 'Acara yang Sedang Tren';

  @override
  String get mostWatchedThisWeek => 'Paling Banyak Ditonton Minggu Ini';

  @override
  String get sortMostViewed => 'Paling banyak dilihat';

  @override
  String get sortMostFollowed => 'Paling banyak diikuti';

  @override
  String get sortLatestUpdates => 'Pembaruan terkini';

  @override
  String get translationStatusLabel => 'Terjemahan';

  @override
  String get weeklySchedule => 'Jadwal Mingguan';

  @override
  String get mostFollowed => 'Paling Banyak Diikuti';

  @override
  String get latestUpdates => 'Pembaruan Terbaru';

  @override
  String get trendingAnime => 'Anime yang sedang tren';

  @override
  String get topRatedAnime => 'Anime dengan Nilai Tertinggi';

  @override
  String get mostFollowedAnime => 'Anime Paling Banyak Diikuti';

  @override
  String get comickProfile => 'Profil komik';

  @override
  String get refreshFromComick => 'Segarkan dari Komik';

  @override
  String get mangaBakaProfile => 'Profil MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Segarkan dari MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Masuk ke MangaUpdate';

  @override
  String get mangaUpdatesProfile => 'Profil MangaUpdate';

  @override
  String get mangaUpdatesAnimeStart => 'Adaptasi anime dimulai';

  @override
  String get mangaUpdatesAnimeEnd => 'Adaptasi anime berakhir';

  @override
  String get refreshFromMangaUpdates => 'Segarkan dari MangaUpdates';

  @override
  String get usernameOnly => 'Nama pengguna';

  @override
  String get releases => 'Rilis';

  @override
  String get artistsLabel => 'Ilustrator';

  @override
  String get authorsLabel => 'Penulis';

  @override
  String get publishersLabel => 'Penerbit';

  @override
  String get licensedLabel => 'Berlisensi';

  @override
  String get contentRatingLabel => 'Rating konten';

  @override
  String get yesLabel => 'Ya';

  @override
  String get noLabel => 'Tidak';

  @override
  String get ratingSteps => 'Langkah rating';

  @override
  String get hideNsfw => 'Sembunyikan NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Sembunyikan sumber bertanda 18+ dari feed dan pemilih sumber. Mereka tetap terpasang.';

  @override
  String get hideNsfwDesc =>
      'Jauhkan judul dewasa dari feed dan pencarian, dan tampilkan entri dewasamu sendiri di Media Tersembunyi.';

  @override
  String get kitsuAccountOptions => 'Opsi akun Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Opsi akun MangaBaka';

  @override
  String get comickAccountOptions => 'Opsi akun komik';

  @override
  String get comickClientId => 'ID Klien Komik';

  @override
  String get comickClientIdDesc => 'ID klien khusus terdaftar di comick.dev';

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
  String get couldNotUpdateKitsuSettings =>
      'Pengaturan Kitsu-mu tidak bisa diperbarui';

  @override
  String get titleCanonical => 'Kanonik';

  @override
  String get titleRomanized => 'Romanisasi';

  @override
  String get titleLocalized => 'Lokal';

  @override
  String get ratingSystem => 'Sistem rating';

  @override
  String get ratingSimple => 'Sederhana (3 wajah)';

  @override
  String get ratingRegular => 'Biasa (5 bintang)';

  @override
  String get ratingAdvanced => 'Lanjutan (10 poin)';

  @override
  String get contentFilter => 'Filter konten';

  @override
  String get contentSfw => 'Aman untuk kerja saja';

  @override
  String get contentSometimes => 'Konten dewasa di pencarian';

  @override
  String get contentEverywhere => 'Konten dewasa di mana saja';

  @override
  String get shareToGlobal => 'Bagikan ke feed global';

  @override
  String get shareToGlobalDesc =>
      'Biarkan aktivitasmu muncul di feed global Kitsu.';

  @override
  String get memberSince => 'Anggota sejak';

  @override
  String get location => 'Lokasi';

  @override
  String get accountType => 'Tipe akun';

  @override
  String get accountSupporter => 'Pendukung';

  @override
  String get accountFree => 'Gratis';

  @override
  String get accountDetails => 'Detail akun';

  @override
  String get refreshFromKitsu => 'Segarkan dari Kitsu';

  @override
  String get simklReadOnly => 'Simkl diberi akses hanya-baca';

  @override
  String get traktReadOnly => 'Trakt memberikan akses hanya baca';

  @override
  String get incognitoEditsBlocked => 'Penyamaran: edit daftar diblokir';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Penyamaran: progres tidak disimpan';

  @override
  String progressSet(int progress) {
    return 'Progres diatur ke $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title dihapus dari daftarmu';
  }

  @override
  String get following => 'Mengikuti';

  @override
  String get followsMutual => 'Saling menguntungkan';

  @override
  String get followsNotMutual => 'Tidak saling menguntungkan';

  @override
  String get homeSections => 'Bagian beranda';

  @override
  String get homeSectionsHint =>
      'Seret untuk mengurutkan. Bagian yang disembunyikan tidak pernah diambil.';

  @override
  String get customListDeleteFailed => 'Gagal menghapus daftar kustom';

  @override
  String get customListsSaveFailed => 'Gagal menyimpan daftar kustom';

  @override
  String get customListsSaved => 'Daftar kustom disimpan';

  @override
  String get listName => 'Nama daftar';

  @override
  String get addList => 'Tambah daftar';

  @override
  String get voiceActors => 'Aktor suara';

  @override
  String voiceActorsIn(String name) {
    return 'Pengisi suara · $name';
  }

  @override
  String get animeAppearances => 'Penampilan di anime';

  @override
  String get mangaAppearances => 'Penampilan di manga';

  @override
  String get voicedCharacters => 'Karakter yang diisi suaranya';

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
  String get prequel => 'Prekuel';

  @override
  String get sequel => 'Sekuel';

  @override
  String get previousSeason => 'Musim lalu';

  @override
  String get thisSeason => 'Musim ini';

  @override
  String get nextSeason => 'Musim depan';

  @override
  String get voiceRoles => 'Peran suara';

  @override
  String get staffPositions => 'Posisi staf';

  @override
  String get mangaWorks => 'Karya manga';

  @override
  String get malProfile => 'Profil MyAnimeList';

  @override
  String get refreshFromMal => 'Segarkan dari MyAnimeList';

  @override
  String get repullProfileCounts => 'Tarik ulang profil dan jumlahmu';

  @override
  String get refreshed => 'Disegarkan';

  @override
  String get simklProfile => 'Profil Simkl';

  @override
  String get traktProfile => 'Profil saluran';

  @override
  String get refreshFromSimkl => 'Segarkan dari Simkl';

  @override
  String get refreshFromTrakt => 'Segarkan dari Trakt';

  @override
  String get repullProfileLibrary => 'Tarik ulang profil dan perpustakaanmu';

  @override
  String get simklSignInToSearch => 'Masuk ke Simkl untuk mencari';

  @override
  String get dropRate => 'Tingkat drop';

  @override
  String get simklAttribution =>
      'Data dan karya seni disediakan Simkl. Lihat di Simkl';

  @override
  String get traktAttribution =>
      'Data dan karya seni disediakan oleh Trakt. Lihat di Traktat';

  @override
  String get listsLiked => 'Menyukai';

  @override
  String get listsYours => 'Milikmu';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Anggota VIP Traktat';

  @override
  String get onHold => 'Ditahan';

  @override
  String get scoredBy => 'Dinilai oleh';

  @override
  String get planToWatch => 'Rencana nonton';

  @override
  String get planToRead => 'Rencana baca';

  @override
  String get timesRewatched => 'Kali ditonton ulang';

  @override
  String get timesReread => 'Kali dibaca ulang';

  @override
  String get comments => 'Komentar';

  @override
  String get moviesAndSeries => 'Film & Serial';

  @override
  String get simklMoviesOnly => 'Hanya film & serial';

  @override
  String get simklMoviesOnlyDesc =>
      'Mengganti tab Anime: Film terlebih dahulu, lalu Pertunjukan dengan beberapa baris anime';

  @override
  String get trackingOnly => 'Hanya pelacakan';

  @override
  String get signedIn => 'Sudah masuk';

  @override
  String get searchLanguage => 'Bahasa pencarian';

  @override
  String get savedToList => 'Disimpan ke daftarmu';

  @override
  String get removedFromYourList => 'Dihapus dari daftarmu';

  @override
  String get retry => 'Coba lagi';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get details => 'Detail';

  @override
  String get addToList => 'Tambah ke daftar';

  @override
  String get trailer => 'Cuplikan';

  @override
  String get trailerQuality => 'Kualitas cuplikan';

  @override
  String get titleCopied => 'Judul disalin';

  @override
  String get linkCopied => 'Tautan disalin';

  @override
  String get watchTrailer => 'Tonton trailer';

  @override
  String get copyTitle => 'Salin judul';

  @override
  String get detailStale =>
      'AniList tidak dapat dihubungi. Ini adalah informasi yang disimpan dan mungkin sudah ketinggalan zaman.';

  @override
  String get copyLink => 'Salin tautan';

  @override
  String get openInBrowser => 'Buka di browser';

  @override
  String viewOnSource(String source) {
    return 'Lihat di $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Episode $ep tayang dalam $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Episode berikutnya dalam $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Chapter $chapter diperkirakan rilis sekitar $time lagi';
  }

  @override
  String get logPathCopied => 'Lokasi file log disalin ke clipboard';

  @override
  String get animeSource => 'Sumber anime';

  @override
  String get mangaSource => 'Sumber manga';

  @override
  String get popular => 'Populer';

  @override
  String get allCustomLists => 'Semua daftar khusus';

  @override
  String get simklTitleLanguage => 'Bahasa judul anime';

  @override
  String get titleLanguageEnglish => 'bahasa Inggris';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Sedang tren';

  @override
  String get simklListsMostLiked => 'Paling disukai';

  @override
  String get simklListsMostFollowed => 'Paling banyak diikuti';

  @override
  String get simklListsOfficial => 'Resmi';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count judul',
      one: '1 judul',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Orang-orang';

  @override
  String get mostComments => 'Komentar terbanyak';

  @override
  String get alphabetical => 'Sesuai abjad';

  @override
  String get latest => 'Terbaru';

  @override
  String get saved => 'Tersimpan';

  @override
  String get nothingMatched => 'Tidak ada yang cocok';

  @override
  String get nothingSavedFromSource =>
      'Belum ada yang disimpan dari sumber ini';

  @override
  String get sourceReturnedNothing => 'Sumber ini tidak mengembalikan apa-apa';

  @override
  String get checkConnectionOrSource => 'Cek koneksimu atau coba sumber lain.';

  @override
  String get tryDifferentSearch => 'Coba kata kunci lain.';

  @override
  String get savedTitlesAppearHere =>
      'Judul yang kamu tambahkan ke daftar akan muncul di sini.';

  @override
  String get tryOtherFeed => 'Coba feed lain atau cari saja.';

  @override
  String searchSource(String source) {
    return 'Cari di $source';
  }

  @override
  String get animeExtensions => 'Ekstensi anime';

  @override
  String get mangaExtensions => 'Ekstensi manga';

  @override
  String get nothingHereYet => 'Belum ada apa-apa di sini';

  @override
  String get savedOnDeviceUntilLogin =>
      'Semua di bawah ini tersimpan di perangkat ini sampai kamu melakukannya.';

  @override
  String get yourProfile => 'Profilmu';

  @override
  String get activity => 'Aktivitas';

  @override
  String get extensions => 'Ekstensi';

  @override
  String get logOut => 'Keluar';

  @override
  String get logIn => 'Masuk';

  @override
  String get logOutConfirm => 'Yakin mau keluar?';

  @override
  String get incognitoMode => 'Mode penyamaran';

  @override
  String get alsoBlockListEdits => 'Blokir juga edit daftar';

  @override
  String get offlineMode => 'Mode offline';

  @override
  String get switchService => 'Ganti layanan';

  @override
  String logOutOf(String name) {
    return 'Keluar dari $name';
  }

  @override
  String get loggedIn => 'Sudah masuk';

  @override
  String get notifications => 'Notifikasi';

  @override
  String get nothingNew => 'Tidak ada yang baru';

  @override
  String get thisWeek => 'Minggu ini';

  @override
  String get listOnly => 'Hanya di daftar';

  @override
  String get notInList => 'Tidak Ada Dalam Daftar';

  @override
  String get filter => 'Menyaring';

  @override
  String get searchResults => 'Hasil pencarian';

  @override
  String get recentSearches => 'Pencarian terbaru';

  @override
  String get searchOrSetFilter => 'Cari atau atur filter';

  @override
  String get filters => 'Filter';

  @override
  String get showLess => 'Tampilkan lebih sedikit';

  @override
  String get showAll => 'Tampilkan semua';

  @override
  String get apply => 'Terapkan';

  @override
  String get preview => 'Pratinjau';

  @override
  String get preset => 'Prasetel';

  @override
  String get cardNormal => 'Biasa';

  @override
  String get cardOnCard => 'Di atas kartu';

  @override
  String get cardInCard => 'Di dalam kartu';

  @override
  String get size => 'Ukuran';

  @override
  String get cardWidth => 'Lebar kartu';

  @override
  String get compact => 'Ringkas';

  @override
  String get coverAndTitleOnly => 'Hanya sampul dan judul';

  @override
  String get titleLines => 'Baris judul';

  @override
  String get shape => 'Bentuk';

  @override
  String get posterShape => 'Bentuk poster';

  @override
  String get cornerRadius => 'Lengkung sudut';

  @override
  String get off => 'Mati';

  @override
  String get topLeft => 'Kiri atas';

  @override
  String get topRight => 'Kanan atas';

  @override
  String get bottomLeft => 'Kiri bawah';

  @override
  String get bottomRight => 'Kanan bawah';

  @override
  String get overlays => 'Overlay';

  @override
  String get progressCount => 'Progres / jumlah';

  @override
  String get pill => 'Pil';

  @override
  String get bar => 'Batang';

  @override
  String get outside => 'Di luar';

  @override
  String get scoreBadge => 'Lencana skor';

  @override
  String get airingDot => 'Titik tayang';

  @override
  String get updateAvailable => 'Ada pembaruan';

  @override
  String get notInstalled => 'Belum terpasang';

  @override
  String get done => 'Selesai';

  @override
  String get searchOrEnterUrl => 'Cari atau masukkan URL';

  @override
  String get refresh => 'Segarkan';

  @override
  String get animePlanetRank => 'Pangkat';

  @override
  String get animePlanetMagazine => 'Majalah';

  @override
  String get animePlanetRefreshLists => 'Segarkan daftar Anda';

  @override
  String get animePlanetRefreshListsDesc =>
      'Baca lagi daftar Anime-Planet Anda';

  @override
  String get animePlanetLocalNote =>
      'Masuk untuk menyimpan perubahan pada akun Anime-Planet Anda. Hingga saat itu tiba, mereka tetap menggunakan perangkat ini';

  @override
  String get share => 'Bagikan';

  @override
  String get characters => 'Karakter';

  @override
  String get staff => 'Staf';

  @override
  String get readMore => 'Baca selengkapnya';

  @override
  String get couldNotLoadList => 'Daftar tidak bisa dimuat';

  @override
  String get logInToFavourite => 'Masuk untuk menambah favorit';

  @override
  String get alsoKnownAs => 'Juga dikenal sebagai';

  @override
  String get hideSpoilerNames => 'Sembunyikan nama spoiler';

  @override
  String get showSpoilerNames => 'Tampilkan nama spoiler';

  @override
  String get favourited => 'Difavoritkan';

  @override
  String get favourite => 'Favorit';

  @override
  String get couldNotOpenTitle => 'Judul ini tidak bisa dibuka';

  @override
  String get nobodyHereYet => 'Belum ada siapa-siapa di sini';

  @override
  String get noMatches => 'Tidak ada yang cocok';

  @override
  String get gridView => 'Tampilan grid';

  @override
  String get fullWidth => 'Lebar penuh';

  @override
  String get userNotFound => 'Pengguna tidak ditemukan';

  @override
  String get couldNotUpdateFollow => 'Gagal memperbarui ikuti';

  @override
  String followedUser(String name) {
    return 'Sekarang mengikuti $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Berhenti mengikuti $name';
  }

  @override
  String get messages => 'Pesan';

  @override
  String get logInToSeeMessages => 'Masuk untuk melihat pesanmu';

  @override
  String get editActivity => 'Edit aktivitas';

  @override
  String get newActivity => 'Aktivitas baru';

  @override
  String get editMessage => 'Edit pesan';

  @override
  String get writeMessage => 'Tulis pesan';

  @override
  String get editReply => 'Edit balasan';

  @override
  String get posted => 'Terkirim';

  @override
  String get couldNotPost => 'Tidak bisa memposting';

  @override
  String get nothingToPreview => 'Tidak ada yang bisa dipratinjau';

  @override
  String get writeSomethingHint =>
      'Tulis sesuatu… markdown AniList bisa dipakai di sini';

  @override
  String get privateMessage => 'Pesan pribadi';

  @override
  String get post => 'Posting';

  @override
  String get nothingHere => 'Tidak ada apa-apa di sini';

  @override
  String get noAnimeProgress => 'Belum ada progres anime';

  @override
  String get noMangaProgress => 'Belum ada progres manga';

  @override
  String get noMessages => 'Tidak ada pesan';

  @override
  String get writeMessageHint => 'Tulis pesan…';

  @override
  String get shareSomethingHint => 'Bagikan sesuatu…';

  @override
  String get all => 'Semua';

  @override
  String get anime => 'anime';

  @override
  String get manga => 'manga';

  @override
  String get count => 'Jumlah';

  @override
  String get hoursWatched => 'Jam menonton';

  @override
  String get chaptersRead => 'Chapter dibaca';

  @override
  String get meanScore => 'Skor rata-rata';

  @override
  String get noStatsYet => 'Belum ada statistik';

  @override
  String get totalEntries => 'Total entri';

  @override
  String get episodesWatched => 'Episode ditonton';

  @override
  String get daysWatched => 'Hari menonton';

  @override
  String get volumesRead => 'Volume dibaca';

  @override
  String get standardDeviation => 'Standar deviasi';

  @override
  String get showMore => 'Tampilkan lebih banyak';

  @override
  String get followsYou => 'Mengikutimu';

  @override
  String get nobodyYet => 'Belum ada';

  @override
  String get logInToLike => 'Masuk untuk menyukai';

  @override
  String get failedToLikeActivity => 'Gagal menyukai aktivitas';

  @override
  String get deleteActivityConfirm => 'Hapus aktivitas?';

  @override
  String get deletedActivity => 'Aktivitas dihapus';

  @override
  String get failedToDeleteActivity => 'Gagal menghapus aktivitas';

  @override
  String get subscribed => 'Berlangganan';

  @override
  String get unsubscribed => 'Berhenti berlangganan';

  @override
  String get failedToUpdateSubscription => 'Gagal memperbarui langganan';

  @override
  String get edit => 'Sunting';

  @override
  String get delete => 'Hapus';

  @override
  String get likedBy => 'Disukai oleh';

  @override
  String get follow => 'Ikuti';

  @override
  String get nameCopied => 'Nama disalin';

  @override
  String get followsEachOther => 'Saling mengikuti';

  @override
  String get unfollow => 'Berhenti ikuti';

  @override
  String get userIdCopied => 'ID pengguna disalin';

  @override
  String get shareProfile => 'Bagikan profil';

  @override
  String get copyUserId => 'Salin ID pengguna';

  @override
  String get failedToDelete => 'Gagal menghapus';

  @override
  String get failedToLike => 'Gagal menyukai';

  @override
  String get replies => 'Balasan';

  @override
  String get reply => 'Balas';

  @override
  String get noRepliesYet => 'Belum ada balasan';

  @override
  String get favouriteAnime => 'Anime favorit';

  @override
  String get favouriteManga => 'Manga favorit';

  @override
  String get favouriteCharacters => 'Karakter favorit';

  @override
  String get favouriteStaff => 'Staf favorit';

  @override
  String get favouriteStudios => 'Studio favorit';

  @override
  String get noFavouritesYet => 'Belum ada favorit';

  @override
  String get yourStory => 'Ceritamu';

  @override
  String get copiedToClipboard => 'Disalin ke clipboard';

  @override
  String get justNow => 'Baru saja';

  @override
  String get openImage => 'Buka gambar';

  @override
  String get hideSpoiler => 'Sembunyikan spoiler';

  @override
  String get showSpoiler => 'Tampilkan spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Skor';

  @override
  String get started => 'Mulai';

  @override
  String get completed => 'Selesai';

  @override
  String get private => 'Pribadi';

  @override
  String get hideFromStatusLists => 'Sembunyikan dari daftar status';

  @override
  String get totalRepeats => 'Total pengulangan';

  @override
  String get other => 'Lainnya';

  @override
  String get customLists => 'Daftar kustom';

  @override
  String get activeDays => 'Hari aktif';

  @override
  String get longestStreak => 'Rentetan terpanjang';

  @override
  String get currentStreak => 'Rentetan saat ini';

  @override
  String get tapOrHoverDay => 'Ketuk atau arahkan ke satu hari';

  @override
  String get less => 'Sedikit';

  @override
  String get more => 'Banyak';

  @override
  String epIn(int ep, String time) {
    return 'Ep $ep dalam $time';
  }

  @override
  String get sectionLoading => 'Memuat';

  @override
  String get querySize => 'Ukuran query';

  @override
  String get querySizeDesc =>
      'Satu query besar memuat semua baris (dan seluruh profil) dalam satu permintaan. Query terpisah mengirim permintaan kecil untuk tiap baris atau bagian profil: masing-masing cepat dan bagiannya muncul begitu tiba.';

  @override
  String get oneBig => 'Satu besar';

  @override
  String get split => 'Terpisah';

  @override
  String get sectionSocial => 'Sosial';

  @override
  String get systemNotifications => 'Notifikasi sistem';

  @override
  String get feedLayout => 'Tata letak feed';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown dari $total ditampilkan — ketuk untuk memilih dan mengurutkan';
  }

  @override
  String labelSections(String label) {
    return 'Bagian $label';
  }

  @override
  String get accountOptions => 'Opsi akun';

  @override
  String get anilistAccountOptions => 'Opsi akun AniList';

  @override
  String get sectionPrivacy => 'Privasi';

  @override
  String get hidePrivateEntries => 'Sembunyikan entri pribadi';

  @override
  String get hidePrivateEntriesDesc =>
      'Jauhkan entri yang ditandai pribadi di AniList dari feed';

  @override
  String get anilistExcludeList => 'Sembunyikan list kamu';

  @override
  String get anilistExcludeListDesc =>
      'Judul yang sudah ada di AniList kamu tidak ditampilkan di halaman anime dan manga';

  @override
  String get anilistProfile => 'Profil AniList';

  @override
  String get refreshFromAnilist => 'Segarkan dari AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Pengaturan AniList tidak bisa diperbarui';

  @override
  String get sectionNames => 'Nama';

  @override
  String get titleLanguage => 'Bahasa judul';

  @override
  String get titleLanguageDesc =>
      'Cara judul ditulis di mana-mana, misalnya Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Nama staf dan karakter';

  @override
  String get sectionLists => 'Daftar';

  @override
  String get scoreFormat => 'Format skor';

  @override
  String get sortListsBy => 'Urutkan daftar berdasarkan';

  @override
  String labelCustomLists(String label) {
    return 'Daftar kustom $label';
  }

  @override
  String customListsCount(int count) {
    return '$count daftar — ketuk untuk menambah atau menghapus';
  }

  @override
  String get mergeActivities => 'Gabungkan aktivitas';

  @override
  String minutesCount(int count) {
    return '$count mnt';
  }

  @override
  String get timezone => 'Zona waktu';

  @override
  String get notSet => 'Belum diatur';

  @override
  String get airingNotifications => 'Notifikasi tayang';

  @override
  String get airingNotificationsDesc =>
      'Dapat notifikasi saat episode tontonan yang kamu ikuti tayang';

  @override
  String get displayAdultContent => 'Tampilkan konten dewasa';

  @override
  String get displayAdultContentDesc =>
      'Sertakan judul 18+ di jelajah, pencarian, dan feed';

  @override
  String get restrictMessages => 'Batasi pesan hanya dari yang diikuti';

  @override
  String get restrictMessagesDesc =>
      'Hanya orang yang kamu ikuti yang bisa mengirim pesan';

  @override
  String get sectionServices => 'Layanan';

  @override
  String get novel => 'Baru';

  @override
  String labelService(String label) {
    return 'Layanan $label';
  }

  @override
  String nameSettings(String name) {
    return 'Pengaturan $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opsi dari jembatan ekstensi $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name tidak bisa dimulai: $error';
  }

  @override
  String get importLists => 'Impor daftar';

  @override
  String get importListsDesc =>
      'Dari cadangan Aniyomi, Mihon / Tachiyomi, atau Kotatsu';

  @override
  String get exportLists => 'Ekspor daftar';

  @override
  String get exportListsDesc => 'Ke cadangan Aniyomi, Mihon, atau Kotatsu';

  @override
  String get sectionBrowse => 'Jelajah';

  @override
  String get readingTab => 'Tab baca';

  @override
  String get readingTabDesc => 'Ekstensi mana yang ditampilkan tab ketiga';

  @override
  String get firstTab => 'Tab pertama';

  @override
  String get firstTabDesc =>
      'Ekstensi mana yang ditampilkan tab pertama. Pilih manga di sini dan novel di tab membaca untuk mengeluarkan anime dari bar';

  @override
  String get novelExtensions => 'Ekstensi Baru';

  @override
  String get defaultFeed => 'Feed bawaan';

  @override
  String get defaultFeedDesc => 'Daftar mana yang dibuka sumber saat dimulai';

  @override
  String noServiceSupports(String type) {
    return 'Tidak ada layanan yang mendukung $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded dari $installed sumber dimuat';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Tidak ada layanan ekstensi yang mendukung $type di sini.';
  }

  @override
  String get loadDataFrom => 'Muat data dari';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Belum ada sumber $type yang terpasang.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Ekstensi untuk $name belum terpasang';
  }

  @override
  String get thisSource => 'sumber ini';

  @override
  String failedToAddRepository(String error) {
    return 'Gagal menambah repositori: $error';
  }

  @override
  String installedType(String type) {
    return '$type terpasang';
  }

  @override
  String availableType(String type) {
    return '$type tersedia';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Tidak ada ekstensi $type yang terpasang';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Tidak ada ekstensi $type yang tersedia';
  }

  @override
  String get nothingToShowYet => 'Belum ada yang ditampilkan';

  @override
  String get addTitlesHint =>
      'Tambahkan beberapa judul ke daftarmu dan akan muncul di sini.';

  @override
  String get couldntLoad => 'Tidak bisa dimuat';

  @override
  String get progressStyleHint =>
      'Pil dan bar menimpa poster; \"Di luar\" menampilkan jumlah yang sama sebagai teks biasa — pilih salah satu.';

  @override
  String get nixManagedUpdate =>
      'Build ini dikelola oleh Nix — jalankan \"nix flake update\" di flake-mu lalu build ulang, jangan perbarui dari sini';

  @override
  String autoUpdateFailed(String error) {
    return 'Pembaruan otomatis gagal ($error) — membuka halaman unduhan sebagai gantinya';
  }

  @override
  String get unknownPreference => 'Preferensi tak dikenal';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Tipe preferensi tidak didukung $type';
  }

  @override
  String get notYetReleased => 'Belum rilis';

  @override
  String get notStarted => 'Belum mulai';

  @override
  String get country => 'Negara';

  @override
  String get sort => 'Urutkan';

  @override
  String get chooseBackupDialog =>
      'Pilih cadangan Aniyomi, Mihon, atau Kotatsu';

  @override
  String get importListsHint =>
      'Bawa perpustakaan dari Aniyomi, Mihon / Tachiyomi, atau Kotatsu. Judul, sampul, progres, dan kategori ikut terbawa.';

  @override
  String get chooseBackupFile => 'Pilih file cadangan';

  @override
  String importAnimeCount(int count) {
    return 'Impor $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Impor $count manga';
  }

  @override
  String get mergeWithExisting => 'Gabung dengan daftar yang ada';

  @override
  String get mergeWithExistingDesc =>
      'Menjaga yang sudah ada; kalau mati, judul yang cocok diganti';

  @override
  String get chooseAnother => 'Pilih yang lain';

  @override
  String get import => 'Impor';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Pilih tempat menyimpan cadangan';

  @override
  String savedPath(String path) {
    return 'Disimpan $path';
  }

  @override
  String exportFailed(String error) {
    return 'Ekspor gagal: $error';
  }

  @override
  String get nothingInLocalLists => 'Belum ada apa-apa di daftar lokalmu.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Mengekspor $anime anime dan $manga manga dari daftar lokalmu. Kotatsu hanya mendukung manga.';
  }

  @override
  String get saveToFolder => 'Simpan ke folder';

  @override
  String get formatAnimeManga => 'Anime dan manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Hanya manga · .tachibk';

  @override
  String get formatMangaZip => 'Hanya manga · .zip';

  @override
  String get genres => 'Genre';

  @override
  String get relations => 'Relasi';

  @override
  String get recommendations => 'Rekomendasi';

  @override
  String get openings => 'Opening';

  @override
  String get endings => 'Ending';

  @override
  String get background => 'Latar belakang';

  @override
  String get links => 'Tautan';

  @override
  String get rank => 'Peringkat';

  @override
  String get members => 'Anggota';

  @override
  String get favorites => 'Favorit';

  @override
  String get episodes => 'Episode';

  @override
  String get chapters => 'Chapter';

  @override
  String get volumes => 'Volume';

  @override
  String get format => 'Format';

  @override
  String get source => 'Sumber';

  @override
  String get duration => 'Durasi';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes mnt per ep';
  }

  @override
  String get rating => 'Peringkat';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialisasi';

  @override
  String get season => 'Musim';

  @override
  String get year => 'Tahun';

  @override
  String get filterAny => 'Apa saja';

  @override
  String get broadcast => 'Siaran';

  @override
  String get aired => 'Tayang';

  @override
  String get published => 'Terbit';

  @override
  String get popularity => 'Popularitas';

  @override
  String get community => 'Komunitas';

  @override
  String get watching => 'Sedang ditonton';

  @override
  String get reading => 'Sedang dibaca';

  @override
  String get dropped => 'Di-drop';

  @override
  String get unfinished => 'Belum selesai';

  @override
  String get planned => 'Direncanakan';

  @override
  String get trailers => 'Trailer';

  @override
  String get ratings => 'Rating';

  @override
  String get originalTitle => 'Asli';

  @override
  String get titleLabel => 'Judul';

  @override
  String get votes => 'Suara';

  @override
  String get watchedStat => 'Ditonton';

  @override
  String get runtime => 'Durasi tayang';

  @override
  String get director => 'Sutradara';

  @override
  String get network => 'Jaringan';

  @override
  String get certification => 'Sertifikasi';

  @override
  String get airs => 'Tayang';

  @override
  String get budget => 'Anggaran';

  @override
  String get revenue => 'Pendapatan';

  @override
  String get released => 'Rilis';

  @override
  String get tags => 'Tag';

  @override
  String get author => 'Penulis';

  @override
  String get born => 'Lahir';

  @override
  String get died => 'Meninggal';

  @override
  String get birthplace => 'Tempat lahir';

  @override
  String get department => 'Departemen';

  @override
  String get website => 'Situs web';

  @override
  String get established => 'Berdiri';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novel';

  @override
  String get thisMonth => 'Bulan ini';

  @override
  String get movies => 'Film';

  @override
  String get shows => 'Serial';

  @override
  String get moviesWatched => 'Film yang Ditonton';

  @override
  String get showsWatched => 'Acara yang Ditonton';

  @override
  String get moviesCollected => 'Film yang Dikumpulkan';

  @override
  String get showsCollected => 'Pertunjukan yang Dikumpulkan';

  @override
  String get rewatching => 'Menonton ulang';

  @override
  String get rereading => 'Membaca ulang';

  @override
  String get watchedStatus => 'Ditonton';

  @override
  String get planning => 'Direncanakan';

  @override
  String get paused => 'Dijeda';

  @override
  String get watch => 'Tonton';

  @override
  String get read => 'Baca';

  @override
  String get finished => 'Tamat';

  @override
  String get releasing => 'Sedang tayang';

  @override
  String get cancelled => 'Dibatalkan';

  @override
  String get hiatus => 'jeda';

  @override
  String get remove => 'Hapus';

  @override
  String syncToService(String service) {
    return 'Sinkronkan ke $service';
  }

  @override
  String syncedToService(String service) {
    return 'Tersinkron ke $service';
  }

  @override
  String get latestReleases => 'Rilis terbaru';

  @override
  String get topRated => 'Rating tertinggi';

  @override
  String localSection(String title) {
    return '$title · Lokal';
  }

  @override
  String get localEntryNote =>
      'Judul ini hanya ada di daftar lokal di perangkat ini. Edit dimatikan di sini karena bisa bentrok dengan daftar akunmu; kamu masih bisa menghapusnya.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Kartu';

  @override
  String get cardPresetCozy => 'Nyaman';

  @override
  String get sortTopRated => 'Rating tertinggi';

  @override
  String get sortMostPopular => 'Paling populer';

  @override
  String get sortTrending => 'Lagi tren';

  @override
  String get sortNewest => 'Terbaru';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Paling banyak difavoritkan';

  @override
  String get anyCountry => 'Negara mana saja';

  @override
  String get orderScore => 'Skor';

  @override
  String get orderTitle => 'Judul';

  @override
  String get orderLastUpdated => 'Terakhir diperbarui';

  @override
  String get orderLastAdded => 'Terakhir ditambahkan';

  @override
  String get never => 'Tidak pernah';

  @override
  String get always => 'Selalu';

  @override
  String get scorePoint100 => '100 poin';

  @override
  String get scorePoint10Decimal => '10 poin desimal';

  @override
  String get scorePoint10 => '10 poin';

  @override
  String get scorePoint5 => '5 bintang';

  @override
  String get scorePoint3 => '3 poin smiley';

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
  String get resumeTitle => 'Lanjutkan';

  @override
  String get resumeSourceMissing => 'Pasang sumber judul ini untuk melanjutkan';

  @override
  String get resumeRemove => 'Hapus dari lanjutkan';

  @override
  String resumeAt(String time) {
    return '$time lagi';
  }

  @override
  String resumePage(int page, int total) {
    return 'Halaman $page dari $total';
  }

  @override
  String get continueWatching => 'Lanjut menonton';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'Lanjut membaca';

  @override
  String get favouriteAnimeSection => 'Anime favorit';

  @override
  String get favouriteMangaSection => 'Manga favorit';

  @override
  String get plannedAnime => 'Anime direncanakan';

  @override
  String get plannedManga => 'Manga direncanakan';

  @override
  String get completedAnime => 'Anime selesai';

  @override
  String get completedManga => 'Manga selesai';

  @override
  String get hiddenMedia => 'Media tersembunyi';

  @override
  String get recentUpdates => 'Pembaruan terbaru';

  @override
  String get trendingNow => 'Lagi tren';

  @override
  String get popularThisSeason => 'Populer musim ini';

  @override
  String get trendingMovies => 'Film lagi tren';

  @override
  String get topRatedSeries => 'Serial rating tertinggi';

  @override
  String get mostFavouriteSeries => 'Serial paling difavoritkan';

  @override
  String get popularAnime => 'Anime populer';

  @override
  String get trendingManhwa => 'Manhwa lagi tren';

  @override
  String get trendingNovels => 'Novel lagi tren';

  @override
  String get topRatedManga => 'Manga rating tertinggi';

  @override
  String get mostFavouriteManga => 'Manga paling difavoritkan';

  @override
  String get popularManga => 'Manga populer';

  @override
  String get topMovies => 'Film teratas';

  @override
  String get topOna => 'ONA teratas';

  @override
  String get topOva => 'OVA teratas';

  @override
  String get mostPopular => 'Paling populer';

  @override
  String get mostFavourite => 'Paling difavoritkan';

  @override
  String get upcoming => 'Akan datang';

  @override
  String get topManga => 'Manga teratas';

  @override
  String get topManhwa => 'Manhwa teratas';

  @override
  String get topManhua => 'Manhua teratas';

  @override
  String get topNovels => 'Novel teratas';

  @override
  String get topOneShots => 'One-shot teratas';

  @override
  String get trendingMoviesToday => 'Film tren hari ini';

  @override
  String get trendingShowsToday => 'Serial tren hari ini';

  @override
  String get trendingMoviesWeek => 'Film tren minggu ini';

  @override
  String get trendingShowsWeek => 'Serial tren minggu ini';

  @override
  String get mostWatchedMoviesMonth => 'Film paling banyak ditonton bulan ini';

  @override
  String get mostWatchedShowsMonth => 'Serial paling banyak ditonton bulan ini';

  @override
  String get trendingThisWeek => 'Tren minggu ini';

  @override
  String get mostWatchedThisMonth => 'Paling banyak ditonton bulan ini';

  @override
  String get repoLinksAdded => 'Tautan repo berhasil ditambahkan!';

  @override
  String repoLinkConfirm(String url) {
    return 'Tambahkan repositori ini?\n\n$url\n\nHanya tambahkan repositori dari sumber yang Anda percayai.';
  }

  @override
  String get errorGettingAnilistData => 'Gagal mengambil data dari AniList.';

  @override
  String get navInfo => 'INFORMASI';

  @override
  String get navComments => 'KOMENTAR';

  @override
  String get playerNotAvailable => 'Pemutar belum tersedia';

  @override
  String deepLinkInitialError(String error) {
    return 'Gagal mengambil deep link awal: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Gagal membuka tautan: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Tautan ini tidak bisa dibuka: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Gagal membuka tautan: $error';
  }

  @override
  String get forReleasingTitles => 'untuk judul yang sedang tayang';

  @override
  String get progress => 'Progres';

  @override
  String get notes => 'Catatan';

  @override
  String serviceNotFound(String id) {
    return 'Layanan \"$id\" tidak ditemukan';
  }

  @override
  String get glassEffectEnabled => 'Efek kaca diaktifkan';

  @override
  String get glassEffectDisabled => 'Efek kaca dimatikan';

  @override
  String get materialYouEnabled => 'Material You diaktifkan';

  @override
  String get materialYouDisabled => 'Material You dimatikan';

  @override
  String get darkModeEnabled => 'Mode gelap diaktifkan';

  @override
  String get darkModeDisabled => 'Mode gelap dimatikan';

  @override
  String get animeList => 'Daftar anime';

  @override
  String get mangaList => 'Daftar manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Daftar anime $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Daftar manga $owner';
  }

  @override
  String get loadingList => 'Memuat daftar';

  @override
  String get earlier => 'Sebelumnya';

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
      other: '$count menit lalu',
      one: '1 menit lalu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count mnt lalu';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count j lalu';
  }

  @override
  String daysAgoShort(int count) {
    return '$count h lalu';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count mgg lalu';
  }

  @override
  String get couldntLoadSource => 'Sumber ini tidak bisa dimuat';

  @override
  String get followers => 'Pengikut';

  @override
  String couldntLoadTitle(String title) {
    return '$title tidak bisa dimuat';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Profil ini tidak bisa dimuat';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Pakan';

  @override
  String get stats => 'Statistik';

  @override
  String get received => 'Diterima';

  @override
  String get sent => 'Terkirim';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Halaman ini tidak bisa dimuat';

  @override
  String get couldntLoadAllDetails => 'Tidak semua detail bisa dimuat';

  @override
  String get series => 'Serial';

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
  String get downloadingRepository => 'Mengunduh repositori…';

  @override
  String get noRepositories => 'Belum ada repositori';

  @override
  String repoExtensionsCount(String count) {
    return '$count ekstensi';
  }

  @override
  String get searchExtensions => 'Cari ekstensi...';

  @override
  String deletePluginTitle(String name) {
    return 'Hapus $name?';
  }

  @override
  String get deletePluginMessage => 'Yakin mau menghapus plugin ini?';

  @override
  String pluginDeleted(String name) {
    return '$name dihapus';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name tidak tersedia di repo yang dikonfigurasi';
  }

  @override
  String get pluginFetchFailed => 'Gagal mengambil info plugin';

  @override
  String installPluginTitle(String name) {
    return 'Pasang $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Ukuran: $size';
  }

  @override
  String get installedState => 'Terpasang';

  @override
  String updatePluginTitle(String name) {
    return 'Perbarui $name';
  }

  @override
  String get errorLabel => 'Kesalahan:';

  @override
  String get stackTraceDetails => 'Detail (stack trace)';

  @override
  String get shareLogFile => 'Bagikan file log';

  @override
  String get copyLogs => 'Salin log';

  @override
  String noListToEdit(String service) {
    return '$service tidak punya daftar untuk diedit';
  }

  @override
  String get couldNotReadFile => 'File itu tidak bisa dibaca';

  @override
  String importedSummary(int anime, int manga) {
    return 'Mengimpor $anime anime dan $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count sudah ada';
  }

  @override
  String get airingNow => 'Sedang tayang';

  @override
  String get topRatedMovies => 'Film rating tertinggi';

  @override
  String get koreanDramas => 'Drama Korea';

  @override
  String get chineseDramas => 'Drama China';

  @override
  String get japaneseDramas => 'Drama Jepang';

  @override
  String get thaiDramas => 'Drama Thailand';

  @override
  String get turkishDramas => 'Drama Turki';

  @override
  String get miniSeries => 'Miniseri';

  @override
  String get topRatedShows => 'Serial rating tertinggi';

  @override
  String get recommendedSection => 'Direkomendasikan';

  @override
  String get syncRow => 'Sinkron daftar';

  @override
  String get syncRowDesc => 'Cerminkan daftar satu layanan ke akunmu yang lain';

  @override
  String get syncTitle => 'Sinkron';

  @override
  String get syncMainService => 'Layanan utama';

  @override
  String get syncMainServiceDesc =>
      'Daftarnya jadi acuan; semua layanan lain yang sudah masuk diperbarui supaya sama';

  @override
  String get syncAuto => 'Sinkron otomatis';

  @override
  String get syncAutoDesc =>
      'Ambil dan sinkronkan di latar belakang saat aplikasi dibuka dan tiap 30 menit';

  @override
  String get syncAddMissing => 'Tambah entri yang hilang';

  @override
  String get syncAddMissingDesc =>
      'Tambahkan juga entri yang belum ada di layanan lain';

  @override
  String syncServiceOn(String name) {
    return 'Sinkronkan dengan $name';
  }

  @override
  String get syncDelete => 'Hapus apa yang tidak dimiliki layanan utama';

  @override
  String get syncDeleteDesc =>
      'Hapus entri dari layanan lain yang tidak ada dalam daftar utama. Hanya entri yang dapat dicocokkan dengan judul yang dihapus, sehingga hal-hal seperti film dan serial Simkl tetap ada';

  @override
  String get syncDeleteTitle => 'Hapus entri?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entri',
      one: '1 entri',
    );
    return '$_temp0 yang tidak ada dalam daftar utama Anda akan dihapus dari layanan lain. Hal ini tidak dapat dibatalkan.';
  }

  @override
  String get syncDeleteAction => 'Hapus';

  @override
  String get syncToDelete => 'Untuk menghapus';

  @override
  String get syncDeletedNote => 'Akan dihapus';

  @override
  String syncWillRemove(int count, String name) {
    return '$count akan dihapus dari $name';
  }

  @override
  String get syncOnlyForward => 'Pertahankan progres yang lebih jauh';

  @override
  String get syncOnlyForwardDesc =>
      'Jangan turunkan progres layanan yang sudah lebih maju';

  @override
  String get animePlanetWontWatch => 'Tidak akan menonton';

  @override
  String get animePlanetWontRead => 'Tidak akan membaca';

  @override
  String get animePlanetAlreadyOnList => 'Sudah ada di daftar ini';

  @override
  String get animePlanetNewList => 'Nama daftar baru';

  @override
  String get syncPrivate => 'Entri pribadi';

  @override
  String get syncPrivateDesc =>
      'Apa yang harus dilakukan dengan entri yang Anda rahasiakan. Layanan dengan opsi pribadi menjadikannya pribadi; yang lain akan menunjukkannya kepada publik';

  @override
  String get syncPrivateModeAsk => 'Tanyakan';

  @override
  String get syncPrivateModeSync => 'Sinkronkan mereka';

  @override
  String get syncPrivateModeSkip => 'Lewati mereka';

  @override
  String get syncPrivateTitle => 'Entri pribadi';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Entri $count bersifat pribadi',
      one: '1 entri bersifat pribadi',
    );
    return '$_temp0. Layanan dengan opsi pribadi (AniList, Kitsu, MangaBaka) akan menjadikannya sebagai layanan pribadi; layanan lain tidak memiliki pilihan pribadi dan akan menampilkannya secara publik. Sinkronkan mereka? Jawaban Anda diingat; ubahlah di bawah Opsi sinkronisasi.';
  }

  @override
  String get syncPrivateInclude => 'Sinkronkan mereka';

  @override
  String get syncPrivateSkip => 'Lewati mereka';

  @override
  String get syncFetch => 'Ambil';

  @override
  String get syncFetchAgain => 'Ambil lagi';

  @override
  String get syncAll => 'Sinkronkan semua';

  @override
  String get syncStop => 'Berhenti';

  @override
  String get syncResume => 'Lanjutkan';

  @override
  String get syncNothingToSync =>
      'Layanan ini tidak bisa disinkronkan untuk tipe ini';

  @override
  String get syncNoTargets => 'Masuk ke layanan lain untuk disinkronkan';

  @override
  String get syncLoadingMap => 'Memuat pemetaan ID';

  @override
  String get syncComparing => 'Membandingkan daftar';

  @override
  String get syncIntro =>
      'Pilih layanan utama lalu tekan Ambil. Tiap layanan ditanya sekali untuk daftarmu, lalu dibandingkan dengan yang utama.';

  @override
  String get syncStateSynced => 'Tersinkron';

  @override
  String get syncStateOutdated => 'Belum sinkron';

  @override
  String get syncStateMissing => 'Tidak ada di daftar';

  @override
  String get syncStateUnmapped => 'Tidak cocok';

  @override
  String syncPaused(String time) {
    return 'Menunggu batas permintaan, lanjut dalam $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count hanya ada di $name, dibiarkan';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done dari $total';
  }

  @override
  String get syncNothingHere => 'Tidak ada yang ditampilkan';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used dari $max permintaan terpakai ($window)';
  }

  @override
  String get syncMinute => 'menit';

  @override
  String get syncDay => 'hari';

  @override
  String get syncNotInList => 'Belum ada di daftar';

  @override
  String get syncCleared => 'Rencana dihapus';

  @override
  String get syncClear => 'Hapus';

  @override
  String get syncOptions => 'Opsi';

  @override
  String get syncShared => 'Berbagi entri dengan item lain';

  @override
  String syncNotFound(String service) {
    return 'Tidak ditemukan di $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sinkronkan $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sinkronkan perubahan langsung';

  @override
  String get syncOnEditDesc =>
      'Kirim setiap pembaruan progres dan edit daftar ke layanan lain yang sudah masuk saat itu juga';

  @override
  String syncRemoved(String services) {
    return 'Dihapus dari $services';
  }

  @override
  String syncPushed(String services) {
    return 'Tersinkron ke $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Kena batas permintaan, coba lagi sebentar lagi';

  @override
  String get syncAhead => 'Mana yang lebih maju';

  @override
  String get syncAheadDesc =>
      'Dua arah: untuk tiap judul, entri yang paling maju menang dan disalin ke semua layananmu yang lain';

  @override
  String syncAheadFrom(String service) {
    return 'Dari $service';
  }

  @override
  String get syncConfirm => 'Tinjau sebelum sinkron';

  @override
  String get syncConfirmDesc =>
      'Tampilkan apa yang akan diubah Sinkronkan semua dan berapa permintaan yang dibutuhkan';

  @override
  String get syncPreviewTitle => 'Siap disinkronkan';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates pembaruan, $adds untuk ditambah';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Sekitar $count permintaan';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID perlu dicari dulu';
  }

  @override
  String get syncPreviewNothing => 'Tidak ada yang diubah';

  @override
  String get syncStart => 'Mulai';

  @override
  String get syncRetry => 'Coba lagi';

  @override
  String get syncSkip => 'Lewati item ini';

  @override
  String get syncInclude => 'Sertakan item ini lagi';

  @override
  String get syncSkippedLabel => 'Dilewati';

  @override
  String get syncChanges => 'Perbedaan';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Progres';

  @override
  String get syncChangeScore => 'Skor';

  @override
  String get syncChangeDates => 'Tanggal';

  @override
  String get syncChangeRepeat => 'Jumlah tonton ulang';

  @override
  String get syncFailedReason => 'Kenapa gagal';

  @override
  String get syncSkippedHint =>
      'Item yang dilewati dibiarkan, bahkan setelah diambil ulang';

  @override
  String get commentsRules => 'Aturan komentar';

  @override
  String get commentsRulesBody =>
      'LANGGAR ATURAN = KAMU DITENDANG\n\n1. Dilarang rasis, diskriminasi, atau ujaran kebencian\n2. Dilarang spam atau promosi diri\n3. Dilarang keras konten NSFW\n4. Hanya bahasa Inggris, tanpa kecuali\n5. Dilarang menyamar, melecehkan, atau menghina\n6. Dilarang konten ilegal atau sangat tidak menghormati fandom mana pun\n7. Jangan minta atau bagikan repositori atau ekstensi\n8. Spoiler hanya dengan tag spoiler dan peringatan\n9. Dilarang menyeksualisasi atau berkomentar tidak pantas soal karakter di bawah umur\n10. Kalau salah, jangan diposting!';

  @override
  String get commentsRulesAccept => 'Aku mengerti';

  @override
  String get commentsSortNewest => 'Terbaru';

  @override
  String get commentsSortOldest => 'Terlama';

  @override
  String get commentsSortHighest => 'Rating tertinggi';

  @override
  String get commentsSortLowest => 'Rating terendah';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Bab $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filter berdasarkan episode';

  @override
  String get commentsFilterChapterTitle => 'Filter berdasarkan chapter';

  @override
  String get commentsFilterTagTitle => 'Masukkan nomor episode atau chapter';

  @override
  String get commentsFilterHint => 'Nomor';

  @override
  String get commentsFilterApply => 'Menyaring';

  @override
  String get commentsFilterClear => 'Tampilkan semua';

  @override
  String get commentsPlaceholder => 'Tambah komentar…';

  @override
  String commentsReplyingTo(String name) {
    return 'Membalas $name';
  }

  @override
  String get commentsSend => 'Kirim';

  @override
  String get commentsTagButton => 'Menandai';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (opsional)';
  }

  @override
  String get commentsTagEpisode => 'episode';

  @override
  String get commentsTagChapter => 'bab';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Nomor $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tag tidak boleh melebihi total ($total)';
  }

  @override
  String get commentsNoTag => 'Tanpa tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Cari GIF';

  @override
  String get commentsGifEmpty => 'GIF tidak ditemukan';

  @override
  String get commentsEmptyText => 'Komentar tidak boleh kosong';

  @override
  String get commentsBannedYou => 'Kamu diblokir dari berkomentar';

  @override
  String get commentsEdited => 'Komentar diedit';

  @override
  String get commentsDeleted => 'Komentar dihapus';

  @override
  String get commentsDeletedPlaceholder => '[dihapus]';

  @override
  String get commentsReported => 'Komentar dilaporkan';

  @override
  String get commentsUserBanned => 'Pengguna diblokir';

  @override
  String get commentsReport => 'Laporkan';

  @override
  String get commentsReportAsk => 'Laporkan komentar ini ke moderator?';

  @override
  String get commentsDelete => 'Hapus';

  @override
  String get commentsDeleteAsk =>
      'Komentar ini akan dihapus untuk semua orang.';

  @override
  String get commentsBan => 'Blokir';

  @override
  String get commentsBanAsk => 'Blokir pengguna ini dari berkomentar?';

  @override
  String get commentsCopy => 'Salin';

  @override
  String get commentsViewReply => 'Lihat 1 balasan';

  @override
  String commentsViewReplies(int count) {
    return 'Lihat $count balasan';
  }

  @override
  String get commentsHideReplies => 'Sembunyikan balasan';

  @override
  String get commentsLoadMore => 'Muat komentar lainnya';

  @override
  String get commentsEmpty => 'Belum ada komentar. Jadilah yang pertama!';

  @override
  String get commentsEmptyFiltered => 'Tidak ada komentar untuk filter ini';

  @override
  String get commentsSignIn =>
      'Masuk ke AniList untuk membaca dan menulis komentar';

  @override
  String get commentsSignInMessage =>
      'Komentar dibagikan di semua layanan dan memakai akun AniList-mu.';

  @override
  String get commentsUnavailable => 'Komentar tidak tersedia untuk judul ini';

  @override
  String get commentsUnavailableMessage =>
      'Judul ini tidak bisa dicocokkan dengan entri AniList.';

  @override
  String get commentsDisabled => 'Komentar dimatikan';

  @override
  String get commentsDisabledMessage =>
      'Kamu bisa menyalakannya lagi di Pengaturan › Umum.';

  @override
  String get commentsOffline => 'Komentar tidak bisa dimuat';

  @override
  String get commentsSingleTitle => 'Menampilkan satu komentar';

  @override
  String get commentsShowAll => 'Tampilkan semua komentar';

  @override
  String get commentsSettingsHeader => 'Komentar';

  @override
  String get commentsSettingEnabled => 'Komentar';

  @override
  String get commentsSettingEnabledDesc =>
      'Tampilkan tab Komentar di judul dan masuk ke server komentar dengan akun AniList-mu';

  @override
  String get commentsSettingAlerts => 'Notifikasi balasan';

  @override
  String get commentsSettingAlertsDesc =>
      'Beri tahu aku kalau ada yang membalas komentarku';

  @override
  String get commentsNoticeReplyTitle => 'Balasan komentar baru';

  @override
  String commentsNoticeReply(String name) {
    return '$name membalas komentarmu';
  }

  @override
  String get commentsNoticeWarningTitle => 'Kamu mendapat peringatan';

  @override
  String get commentsNoticeWarning => 'Lebih bijak lagi dalam berkomentar';

  @override
  String get commentsNoticeUpdateTitle => 'Pembaruan dari Dantotsu';

  @override
  String get barcodeTitle => 'Pindai barcode';

  @override
  String get barcodeTooltip => 'Temukan manga atau novel dari barcode-nya';

  @override
  String get barcodeIntro =>
      'Arahkan kamera ke barcode di bagian belakang volume, atau ketik ISBN-nya.';

  @override
  String get barcodeIntroManual =>
      'Ketik ISBN yang tercetak di atas barcode di bagian belakang volume.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Itu bukan ISBN yang valid';

  @override
  String barcodeNotFound(String isbn) {
    return 'Tidak ada buku untuk $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamera tidak tersedia. Izinkan akses kamera atau ketik ISBN saja.';

  @override
  String get themesTitle => 'Opening & ending';

  @override
  String get themesPlayVideo => 'Putar video';

  @override
  String get themesPlayAudio => 'Putar audio saja';

  @override
  String get themesOpenSite => 'Buka di AnimeThemes';

  @override
  String get themesCredit => 'Tema dari AnimeThemes';

  @override
  String get themesVersions => 'Versi';

  @override
  String get sauceTitle => 'Cari sumbernya';

  @override
  String get sauceIntro =>
      'Unggah halaman manga atau karya seni, atau tempel tautannya, untuk mencari asalnya.';

  @override
  String get sauceKeyTitle => 'Kunci API SauceNAO';

  @override
  String get sauceKeyHint => 'Opsional, menaikkan batas pencarian harian';

  @override
  String get sauceKeyDesc => 'Dapatkan kunci gratis di saucenao.com/user.php';

  @override
  String get sauceOpen => 'Buka sumber';

  @override
  String get sauceCredit => 'Pencarian gambar oleh SauceNAO';

  @override
  String get sauceEmpty => 'Tidak ada yang cocok';

  @override
  String get sauceTooltip => 'Temukan sumber halaman manga atau karya seni';

  @override
  String get trendzTitle => 'Chart anime';

  @override
  String get trendzAnime => 'anime';

  @override
  String get trendzFemale => 'Karakter perempuan';

  @override
  String get trendzMale => 'Karakter laki-laki';

  @override
  String get trendzCouple => 'Pasangan';

  @override
  String get trendzCredit => 'Chart mingguan dari AniTrendz';

  @override
  String get trendzNew => 'BARU';

  @override
  String get trendzEmpty => 'Chart-nya kosong';

  @override
  String get shareCard => 'Bagikan kartu';

  @override
  String get shareCardList => 'Bagikan kartu daftar';

  @override
  String get shareCardSaved => 'Kartu disimpan';

  @override
  String get shareCardFailed => 'Kartu tidak bisa dibuat';

  @override
  String get shareCardListEmpty => 'Daftarmu belum ada yang bisa dibagikan';

  @override
  String get shareCardTop => 'Pilihan teratasku';

  @override
  String themesEpisodes(String eps) {
    return 'Episode $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% cocok';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Minggu $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count vote';
  }

  @override
  String trendzPeak(String rank) {
    return 'Puncak #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count minggu di sepuluh besar';
  }

  @override
  String get imageSearchTitle => 'Cari dengan gambar';

  @override
  String get imageSearchTooltip => 'Temukan anime dari tangkapan layar';

  @override
  String get imageSearchIntro =>
      'Pilih tangkapan layar atau tempel tautan gambar, dan trace.moe akan menemukan episode dan adegannya.';

  @override
  String get imageSearchPick => 'Pilih gambar';

  @override
  String get imageSearchLinkHint => 'Tempel tautan gambar';

  @override
  String get imageSearchGo => 'Cari';

  @override
  String get imageSearchEmpty => 'Tidak ada yang cocok';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Episode $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'di $time';
  }

  @override
  String get imageSearchPreview => 'Pratinjau klip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% cocok';
  }

  @override
  String get imageSearchCredit => 'Didukung oleh trace.moe';

  @override
  String get imageSearchOpenFailed => 'Judul ini tidak bisa dibuka';

  @override
  String get groups => 'Grup';

  @override
  String get groupsYours => 'Grupmu';

  @override
  String get groupsPopular => 'Populer';

  @override
  String get groupsNew => 'Baru';

  @override
  String get groupsFeatured => 'Pilihan';

  @override
  String get groupsSearch => 'Cari grup';

  @override
  String get groupsAll => 'Semua';

  @override
  String get groupsEmpty => 'Grup tidak ditemukan';

  @override
  String get groupsEmptyYours => 'Kamu belum bergabung ke grup mana pun';

  @override
  String get groupsSignIn => 'Masuk untuk melihat grup yang kamu ikuti';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count anggota',
      one: '1 anggota',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Gabung';

  @override
  String get groupsJoined => 'Tergabung';

  @override
  String get groupsLeave => 'Keluar dari grup';

  @override
  String get groupsLeaveAsk =>
      'Kamu tidak akan melihat postingan grup ini lagi di feed-mu.';

  @override
  String get groupsJoinFailed =>
      'Tidak bisa bergabung ke grup ini, mungkin khusus undangan';

  @override
  String get groupsLeaveFailed => 'Tidak bisa keluar dari grup ini';

  @override
  String get groupsPosts => 'Postingan';

  @override
  String get groupsMembersTab => 'Anggota';

  @override
  String get groupsAbout => 'Tentang';

  @override
  String get groupsRules => 'Aturan';

  @override
  String get groupsPrivacyOpen => 'Terbuka';

  @override
  String get groupsPrivacyRestricted => 'Terbatas';

  @override
  String get groupsPrivacyClosed => 'Tertutup';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Grup ini tidak bisa dimuat';

  @override
  String get groupsNewPost => 'Posting ke grup';

  @override
  String get groupsPostHint => 'Bagikan sesuatu ke grup';

  @override
  String get groupsOpenInBrowser => 'Buka di browser';

  @override
  String get groupsCategory => 'Kategori';

  @override
  String get groupsLanguage => 'Bahasa';

  @override
  String get groupsCreated => 'Dibuat';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pemimpin',
      one: '1 pemimpin',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privasi';

  @override
  String get notificationsAll => 'Semua';

  @override
  String get notificationsAiring => 'Tayang';

  @override
  String get notificationsMedia => 'Judul baru';

  @override
  String get notificationsReplies => 'Balasan';

  @override
  String get notificationsMentions => 'Sebutan';

  @override
  String get notificationsMessages => 'Pesan';

  @override
  String get notificationsLikes => 'Suka';

  @override
  String get notificationsFollows => 'Mengikuti';

  @override
  String get notificationsNoServices =>
      'Tidak ada layanan yang masuk yang punya notifikasi';

  @override
  String get notificationsNoServicesMessage =>
      'Masuk ke layanan yang mengirim notifikasi dan notifikasinya akan muncul di sini.';

  @override
  String get notificationsEmptyKind => 'Belum ada apa-apa di kategori ini';

  @override
  String get notificationsCommentsEmpty => 'Tidak ada notifikasi komentar';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Balasan untuk komentarmu dan pengumuman dari Dantotsu muncul di sini.';

  @override
  String get notificationsSettings => 'Pengaturan notifikasi';

  @override
  String get notificationsPollTitle => 'Cek notifikasi baru';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Setiap $minutes menit selama aplikasi terbuka';
  }

  @override
  String get notificationsNotifyAbout => 'Beri tahu aku soal';

  @override
  String get notificationsCommentsHeader => 'Notifikasi komentar';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Tampilkan notifikasi sistem untuk tiap notifikasi $service yang belum dibaca selama aplikasi berjalan.';
  }

  @override
  String get notificationsTestSent => 'Notifikasi tes terkirim';

  @override
  String get notificationsTestDenied =>
      'Notifikasi tidak diizinkan untuk Dartotsu. Nyalakan di pengaturan sistem.';

  @override
  String get notificationsTestHint => 'Tekan lama untuk kirim notifikasi tes';

  @override
  String get notificationsTestSample => 'Ini notifikasi tes';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name membalas komentarmu di $media';
  }

  @override
  String get imageSearchNotLink => 'Itu tidak terlihat seperti tautan';

  @override
  String get imageSearchQuota => 'Kuota pencarian habis';

  @override
  String get imageSearchBusy =>
      'Terlalu banyak permintaan, coba lagi sebentar lagi';

  @override
  String imageSearchFailed(int code) {
    return 'Pencarian gagal ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count notifikasi baru';
  }

  @override
  String get reactionsTitle => 'Reaksi';

  @override
  String get reactionsNeedEntry =>
      'Tambahkan judul ini ke daftarmu sebelum bereaksi';

  @override
  String get reactionsAdd => 'Tambah reaksi';

  @override
  String get reactionsHint => 'Gimana menurutmu? (singkat dan tanpa spoiler)';

  @override
  String get reactionsPost => 'Posting';

  @override
  String get reactionsFailed => 'Reaksi tidak bisa diperbarui';

  @override
  String get settingsWatch => 'Tonton & baca';

  @override
  String get settingsWatchDesc =>
      'Daftar episode, pencocokan sumber, dan detail episode';

  @override
  String get watchSettingsLayout => 'Daftar episode';

  @override
  String get watchSettingsSources => 'Sumber';

  @override
  String get watchSettingsMetadata => 'Detail episode';

  @override
  String get watchLayout => 'Tata letak';

  @override
  String get watchListView => 'Daftar';

  @override
  String get watchGridView => 'jaringan';

  @override
  String get watchCompactView => 'Ringkas';

  @override
  String get watchDefaultLayoutDesc =>
      'Bagaimana episode dan chapter ditata sampai kamu mengubahnya untuk satu judul';

  @override
  String get watchChunkSize => 'Ukuran rentang';

  @override
  String get watchChunkSizeDesc =>
      'Berapa episode atau chapter di tiap tab rentang';

  @override
  String get watchShowDescription => 'Tampilkan deskripsi';

  @override
  String get watchShowDescriptionDesc =>
      'Tampilkan ringkasan episode di bawah tiap judul di tata letak daftar';

  @override
  String get watchShowFiller => 'Tampilkan episode filler';

  @override
  String get watchShowFillerDesc =>
      'Matikan untuk menyembunyikan episode yang ditandai filler';

  @override
  String get watchBlurUnwatched => 'Sembunyikan thumbnail spoiler';

  @override
  String get watchBlurUnwatchedDesc =>
      'Buramkan thumbnail episode yang belum kamu tonton';

  @override
  String get watchResumeShelf => 'Rak Lanjutkan';

  @override
  String get watchResumeShelfDesc => 'Tampilkan baris Lanjutkan di Beranda';

  @override
  String get watchMarkOnLongPress => 'Tekan lama menandai progres';

  @override
  String get watchMarkOnLongPressDesc =>
      'Tekan lama episode atau chapter untuk menandainya sudah atau belum ditonton';

  @override
  String get watchMatching => 'Pencocokan sumber';

  @override
  String get watchMatchingDesc =>
      '\"Paling mirip\" mengambil hasil pencarian terbaik. \"Hanya yang persis\" cuma menerima judul yang hampir identik dan sisanya kamu pilih sendiri.';

  @override
  String get watchMatchClosest => 'Paling mirip';

  @override
  String get watchMatchExact => 'Hanya yang persis';

  @override
  String get watchMetadataDesc =>
      'Dari mana judul episode, ringkasan, thumbnail, tanggal tayang, dan penanda filler berasal. Seret untuk mengatur prioritas; sumber pertama yang punya nilai yang menang.';

  @override
  String get watchMetaAniZipDesc =>
      'Judul episode, ringkasan, gambar, dan tanggal tayang';

  @override
  String get watchMetaKitsuDesc => 'Judul episode, deskripsi, dan thumbnail';

  @override
  String get watchMetaSimklDesc =>
      'Judul episode, deskripsi, gambar, dan tanggal tayang';

  @override
  String get watchMetaAniListDesc =>
      'Judul episode streaming, thumbnail, dan jadwal tayang';

  @override
  String get watchMetaTenraiDesc =>
      'Judul episode MyAnimeList, tanggal tayang, penanda filler dan recap lewat Tenrai';

  @override
  String get watchClearMetadata => 'Segarkan detail episode';

  @override
  String get watchClearMetadataDesc =>
      'Lupakan detail episode yang tersimpan supaya diambil lagi';

  @override
  String get watchMetadataCleared => 'Detail episode akan diambil lagi';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episode',
      one: '1 episode',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count chapter',
      one: '1 chapter',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Episode $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Bab $number';
  }

  @override
  String get watchSearching => 'Mencari…';

  @override
  String watchSearchingFor(String term) {
    return 'Mencari: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Dipilih: $title';
  }

  @override
  String watchFound(String title) {
    return 'Ditemukan: $title';
  }

  @override
  String get watchNothingFound => 'Tidak ada yang ditemukan di sumber ini';

  @override
  String get watchSearchFailed => 'Pencarian sumber gagal';

  @override
  String get watchLoadFailed => 'Daftar tidak bisa dimuat';

  @override
  String get watchSignInToTrack => 'Masuk untuk melacak progresmu';

  @override
  String watchInstallSource(String action) {
    return 'Pasang ekstensi untuk mulai $action';
  }

  @override
  String get watchSourceMissing => 'Sumber ini belum terpasang';

  @override
  String get watchWrongTitle => 'Judul salah?';

  @override
  String get watchSearchAgain => 'Cari lagi';

  @override
  String watchSearchSource(String source) {
    return 'Cari di $source';
  }

  @override
  String get watchSource => 'Sumber';

  @override
  String get sourceTags => 'Tag';

  @override
  String get sourceTagsHint =>
      'Tandai untuk apa sumber ini. Judul mencantumkan sumber yang diberi tag terlebih dahulu, kemudian sumber yang tidak diberi tag. 18+ sumber hanya ditampilkan untuk judul dewasa.';

  @override
  String get sourceTagAnime => 'anime';

  @override
  String get sourceTagMovies => 'Film & Serial';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Tersembunyi oleh tag';

  @override
  String get watchOptions => 'Opsi';

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
  String get watchReverse => 'Balik urutan';

  @override
  String get watchScanlators => 'Grup';

  @override
  String get watchResetOptions => 'Reset opsi ini';

  @override
  String get watchContinue => 'Lanjutkan';

  @override
  String get watchStart => 'Mulai';

  @override
  String get watchPlay => 'Putar';

  @override
  String get watchRead => 'Baca';

  @override
  String get watchMarkWatched => 'Tandai sudah ditonton';

  @override
  String get watchMarkUnwatched => 'Tandai belum ditonton';

  @override
  String get watchMarkRead => 'Tandai sudah dibaca';

  @override
  String get watchMarkUnread => 'Tandai belum dibaca';

  @override
  String get watchFiller => 'Pengisi';

  @override
  String get watchRecap => 'Rekap';

  @override
  String get watchNoEpisodes => 'Episode tidak ditemukan';

  @override
  String get watchNoChapters => 'Chapter tidak ditemukan';

  @override
  String get watchSourceTools => 'Alat sumber';

  @override
  String get watchSourceSettings => 'Pengaturan sumber';

  @override
  String get watchOpenWebView => 'Buka di web view';

  @override
  String get watchOpenWebViewDesc =>
      'Selesaikan pengecekan Cloudflare atau login; cookie dibagikan dengan permintaan sumber';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookie tersimpan untuk $host',
      one: '1 cookie tersimpan untuk $host',
      zero: 'Tidak ada cookie tersimpan untuk $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Izin Cloudflare aktif, $time';
  }

  @override
  String get watchClearanceMissing => 'Tidak ada cookie izin Cloudflare';

  @override
  String get watchClearanceSession => 'bertahan sampai aplikasi ditutup';

  @override
  String get watchAgentShared =>
      'Permintaan memakai user agent web view, yang dicek Cloudflare';

  @override
  String get watchAgentCustom =>
      'User agent kustom diatur, jadi izin Cloudflare dari web view bisa ditolak';

  @override
  String get watchTestConnection => 'Tes koneksi';

  @override
  String get watchSolveChallenge => 'Selesaikan';

  @override
  String watchProbeOk(int code) {
    return 'Bisa diakses (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare masih meminta pengecekan';

  @override
  String watchProbeBlocked(int code) {
    return 'Diblokir situs (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Situs tidak bisa dijangkau';

  @override
  String get watchClearCookies => 'Hapus cookie untuk situs ini';

  @override
  String get watchCookiesCleared => 'Cookie dihapus';

  @override
  String get watchFailTimeout => 'Ceknya tidak selesai tepat waktu';

  @override
  String get watchFailBlocked =>
      'Situs memblokir perangkat ini (akses ditolak). Cek tidak akan membantu';

  @override
  String get watchFailTurnstile =>
      'Pemeriksaan ini memerlukan ketukan yang tidak dapat dilakukan oleh pemecah latar belakang';

  @override
  String get watchFailLoad =>
      'Halaman tidak dimuat. Periksa koneksi dan alamat situs';

  @override
  String get watchFailRejected =>
      'Situs tersebut menolak izin yang baru saja diberikannya. Coba lagi atau hapus cookie';

  @override
  String get watchFailDismissed => 'Cek ditutup sebelum selesai';

  @override
  String get watchFailCooldown =>
      'Anda menutup cek beberapa saat yang lalu. Tekan Selesaikan untuk mencoba lagi';

  @override
  String get watchFailQuiet =>
      'Anda memerlukan pemeriksaan tersebut, dan aplikasi dapat bekerja dengan sendirinya';

  @override
  String get watchFailWebView =>
      'Tampilan web latar belakang tidak dapat dimulai';

  @override
  String get watchFailUnavailable =>
      'Tidak ada layar untuk menampilkan tanda centang';

  @override
  String get watchStatusReady => 'Siap';

  @override
  String get watchStatusChallenge => 'Diperlukan pemeriksaan Cloudflare';

  @override
  String get watchStatusBlocked => 'Diblokir oleh situs';

  @override
  String get watchStatusOffline => 'Tidak dapat mencapai situs';

  @override
  String get watchStatusUntested => 'Belum diuji';

  @override
  String get watchStatusTesting => 'Menguji koneksi…';

  @override
  String get watchStatusSolving => 'Melewati pemeriksaan Cloudflare…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Pemeriksaan Cloudflare diteruskan di latar belakang ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Pemeriksaan Cloudflare berhasil';

  @override
  String watchClearanceIssued(String time) {
    return 'diperoleh $time';
  }

  @override
  String get watchClearanceStale =>
      'Izin diperoleh dengan agen pengguna lain, sehingga tidak dikirim. Uji koneksi untuk mendapatkan yang baru';

  @override
  String get watchSectionConnection => 'Koneksi';

  @override
  String get watchSectionSession => 'Sesi';

  @override
  String get watchSectionTools => 'Alat';

  @override
  String get watchMetaSource => 'Detail episode dari';

  @override
  String get watchMetaAuto => 'Otomatis';

  @override
  String get watchMetaOff => 'Mati';

  @override
  String get playerSettingsTitle => 'Pengaturan pemutar';

  @override
  String get playerSectionPlayback => 'Pemutaran';

  @override
  String get playerSectionSkip => 'Lewati';

  @override
  String get playerSectionGestures => 'Kontrol';

  @override
  String get playerSectionSubtitles => 'Subtitle';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Mesin';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Kecepatan putar';

  @override
  String get localSource => 'File lokal';

  @override
  String get localMissing =>
      'File atau folder ini tidak lagi ada di folder Lokal Anda';

  @override
  String get playerStickyStage => 'Video lengket';

  @override
  String get playerStickyStageDesc =>
      'Pertahankan video tetap di bagian atas saat Anda menggulir episode dan komentar di bawah';

  @override
  String get playerCursedSpeed => 'Kecepatan tambahan';

  @override
  String get playerCursedSpeedDesc =>
      'Tambahkan kecepatan sampai 10x ke daftar';

  @override
  String get playerResize => 'Mode ubah ukuran';

  @override
  String get playerFitFit => 'Pas';

  @override
  String get playerFitCover => 'Penuhi';

  @override
  String get playerFitStretch => 'Regangkan';

  @override
  String get playerSkipDuration => 'Panjang tombol lewati';

  @override
  String get playerSkipDurationDesc =>
      'Detik yang dilompati tombol lewati di luar opening dan ending';

  @override
  String get playerSeekDuration => 'Ketuk dua kali untuk maju/mundur';

  @override
  String get playerSeekDurationDesc =>
      'Detik lompatan saat ketuk dua kali atau tombol panah';

  @override
  String get playerAutoPlay => 'Putar berikutnya otomatis';

  @override
  String get playerAutoPlayDesc =>
      'Mulai episode berikutnya saat yang ini selesai';

  @override
  String get playerResume => 'Lanjut dari terakhir kali';

  @override
  String get playerResumeDesc => 'Lanjutkan episode dari posisi terakhirnya';

  @override
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

  @override
  String get playerOrientation => 'Orientasi';

  @override
  String get playerOrientationAuto => 'Ikuti perangkat';

  @override
  String get playerOrientationLandscape => 'Lanskap';

  @override
  String get playerOrientationPortrait => 'Potret';

  @override
  String get playerAutoSkipOpening => 'Lewati opening';

  @override
  String get playerAutoSkipEnding => 'Lewati ending';

  @override
  String get playerAutoSkipRecap => 'Lewati recap';

  @override
  String get playerAutoSkipDesc =>
      'Langsung lompat begitu dimulai, memakai AniSkip dan timestamp stream';

  @override
  String get playerDisableSkips => 'Nonaktifkan lompatan';

  @override
  String get playerDisableSkipsDesc =>
      'Tidak ada AniSkip atau stempel waktu streaming, tanda bab, atau lewati pengiriman di pemutar';

  @override
  String get playerSkipOnce => 'Lewati sekali saja';

  @override
  String get playerSkipOnceDesc =>
      'Jangan lewati bagian yang sama lagi kalau kamu mundur ke sana';

  @override
  String get playerAdjustBrightness => 'Gestur kecerahan';

  @override
  String get playerAdjustBrightnessDesc =>
      'Geser atas-bawah di separuh kanan layar';

  @override
  String get playerAdjustVolume => 'Gestur volume';

  @override
  String get playerAdjustVolumeDesc => 'Geser atas-bawah di separuh kiri layar';

  @override
  String get playerHoldToSpeed => 'Tahan untuk percepat';

  @override
  String get playerHoldToSpeedDesc =>
      'Tekan dan tahan video untuk memutar lebih cepat, geser ke samping untuk mengubah kecepatan';

  @override
  String get playerThumbless => 'Bilah seek lebih tebal';

  @override
  String get playerThumblessDesc => 'Bilah tebal tanpa pegangan';

  @override
  String get playerShowSubtitles => 'Tampilkan subtitle';

  @override
  String get playerShowSubtitlesDesc =>
      'Matikan untuk menyembunyikan semua trek subtitle';

  @override
  String get playerSubtitleLanguage => 'Bahasa subtitle pilihan';

  @override
  String get playerSubtitleSize => 'Ukuran subtitle';

  @override
  String get playerSubtitleWeight => 'Ketebalan subtitle';

  @override
  String get playerSubtitleBottom => 'Jarak bawah subtitle';

  @override
  String get playerSubtitleFont => 'Font subtitle';

  @override
  String get playerSubtitleColor => 'Warna subtitle';

  @override
  String get playerSubtitleBackground => 'Latar subtitle';

  @override
  String get playerSubtitleOutline => 'Outline subtitle';

  @override
  String get playerSubtitleOutlineWidth => 'Lebar kerangka subtitle';

  @override
  String get playerSubtitlePreview => 'Pratinjau subtitel';

  @override
  String get playerSubtitlePreviewText => 'Teks pratinjau subjudul';

  @override
  String get playerLibass => 'Pakai libass';

  @override
  String get playerLibassDesc =>
      'Tampilkan subtitle .ass yang bergaya. Ukuran, warna, dan font di atas tidak berlaku lagi';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Aktifkan shader';

  @override
  String get playerShadersEnableDesc =>
      'Upscale dan bersihkan gambar dengan shader GLSL seperti Anime4K';

  @override
  String get playerShadersOff => 'Shader mati';

  @override
  String get playerShadersMissing => 'Anime4K belum terpasang';

  @override
  String get playerShadersMissingDesc =>
      'Unduh paket shader Anime4K (sekitar 0,8 MB) untuk memakai mode bawaan.';

  @override
  String get playerShadersDownload => 'Unduh Anime4K';

  @override
  String get playerPictureSave => 'Simpan bingkai ini';

  @override
  String get playerPictureOriginal => 'Asli';

  @override
  String get playerPictureOriginalDesc =>
      'Bingkai seperti yang ada di video, tanpa shader atau warna';

  @override
  String get playerPictureProcessed => 'Dengan shader dan warna';

  @override
  String get playerPictureProcessedDesc =>
      'Bingkai seperti yang Anda lihat sekarang';

  @override
  String get playerPictureSaved => 'Bingkai disimpan';

  @override
  String get playerPictureSaveFailed => 'Tidak dapat menyimpan bingkai';

  @override
  String get playerShadersPreview => 'Pratinjau di frame ini';

  @override
  String get playerShadersUse => 'Pakai ini';

  @override
  String get playerPicture => 'Gambar';

  @override
  String get playerColors => 'Warna';

  @override
  String get playerColorDefault => 'Bawaan';

  @override
  String get playerColorVivid => 'Jelas';

  @override
  String get playerColorPop => 'Pop anime';

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
  String get playerColorCustom => 'Kustom';

  @override
  String get playerColorBrightness => 'Kecerahan';

  @override
  String get playerColorContrast => 'Kontras';

  @override
  String get playerColorSaturation => 'Saturasi';

  @override
  String get playerColorGamma => 'gamma';

  @override
  String get playerColorHue => 'Warna';

  @override
  String get playerColorReset => 'Setel ulang';

  @override
  String get playerColorAdjust => 'Atur';

  @override
  String get playerShadersOriginal => 'Asli';

  @override
  String get playerShadersPreviewFailed =>
      'Tidak bisa mengambil frame untuk pratinjau';

  @override
  String get playerShadersSoftware =>
      'Shader memerlukan rendering perangkat keras, dan pemutar menggunakan rendering perangkat lunak. Matikan rendering Perangkat Lunak di pengaturan Player.';

  @override
  String get playerSoftwareRender => 'Render perangkat lunak';

  @override
  String get playerSoftwareRenderDesc =>
      'Hanya untuk video hitam. Shader tidak berfungsi dengannya. Berlaku saat pemutar dibuka lagi';

  @override
  String get playerShadersCustomFiles => 'Shader-mu';

  @override
  String get playerShadersCustom => 'Shader kustom';

  @override
  String get playerShadersImport => 'Impor .glsl';

  @override
  String get playerShadersNone =>
      'Impor file .glsl atau .hook-mu sendiri dan centang untuk merangkainya';

  @override
  String get playerShadersBadFile => 'Pilih file shader .glsl atau .hook';

  @override
  String get playerDecoder => 'Dekoder';

  @override
  String get playerDecoderAuto => 'Otomatis';

  @override
  String get playerDecoderAutoSafe => 'Otomatis (aman)';

  @override
  String get playerDecoderSoftware => 'Perangkat lunak';

  @override
  String get playerDecoderHardware => 'Perangkat keras';

  @override
  String get playerDecoderHardwarePlus => 'Perangkat keras+';

  @override
  String get playerVideoOutput => 'Output video';

  @override
  String get playerAudioChannels => 'Kanal audio';

  @override
  String get playerBuffer => 'Ukuran buffer (MB)';

  @override
  String get playerBufferDesc =>
      'Memori yang boleh dipakai pemutar untuk membuffer stream';

  @override
  String get playerUseMpvConf => 'Pakai mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Terapkan opsi di mpv.conf-mu saat pemutaran dimulai';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Edit konfigurasi mpv';

  @override
  String get playerMpvConfDesc =>
      'Satu opsi per baris, seperti --hwdec=auto di mpv.conf biasa. Profil di [kurung siku] diabaikan.';

  @override
  String get playerMpvConfSaved => 'mpv.conf disimpan';

  @override
  String get playerUseScripts => 'Pakai skrip mpv';

  @override
  String get playerUseScriptsDesc =>
      'Muat plugin dari folder skrip. Butuh build libmpv dengan dukungan Lua atau JavaScript';

  @override
  String get playerScripts => 'Skrip mpv';

  @override
  String get playerScriptsManage => 'Tambah, hapus, dan ganti plugin';

  @override
  String get playerScriptsAdd => 'Tambah skrip';

  @override
  String get playerScriptsDesc =>
      'Plugin Lua, JavaScript, dan native yang ditaruh di sini dimuat saat pemutaran dimulai.';

  @override
  String get playerScriptsNone => 'Belum ada skrip';

  @override
  String get playerScriptsBadFile => 'Pilih file plugin .lua, .js, atau native';

  @override
  String get playerTuning => 'Penyetelan video lanjutan';

  @override
  String get playerTuningDesc =>
      'Timpa sinkronisasi, caching, scaling, dan tone mapping. Nilai yang salah bisa merusak pemutaran';

  @override
  String get playerVideoSync => 'Sinkron video';

  @override
  String get playerInterpolation => 'Interpolasi frame';

  @override
  String get playerInterpolationDesc =>
      'Gerakan halus, butuh sinkron display-resample';

  @override
  String get playerPitch => 'Koreksi pitch';

  @override
  String get playerPitchDesc => 'Jaga suara tetap natural di kecepatan lain';

  @override
  String get playerCacheSeconds => 'Cache (detik)';

  @override
  String get playerReadahead => 'Baca di depan (detik)';

  @override
  String get playerThreads => 'Thread decoder';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Kurangi color banding di gradasi';

  @override
  String get playerDebandIterations => 'Iterasi deband';

  @override
  String get playerDebandThreshold => 'Ambang deband';

  @override
  String get playerCorrectDownscaling => 'Downscaling yang benar';

  @override
  String get playerSigmoid => 'Upscaling sigmoid';

  @override
  String get playerScale => 'Peningkatan skala';

  @override
  String get playerCscale => 'Upscaler chroma';

  @override
  String get playerDscale => 'Penurunan skala';

  @override
  String get playerToneMapping => 'Pemetaan nada';

  @override
  String get playerTargetPeak => 'Target puncak';

  @override
  String get playerOpenFiles => 'Buka file video';

  @override
  String get playerOpenFilesDesc => 'Putar file dari perangkat ini';

  @override
  String get playerOpenFolder => 'Buka folder';

  @override
  String get playerOpenFolderDesc =>
      'Putar semua video di folder sebagai playlist';

  @override
  String get playerNetworkStream => 'Stream jaringan';

  @override
  String get playerNetworkStreamDesc => 'Buka tautan video langsung atau HLS';

  @override
  String get playerStreamUrl => 'URL stream';

  @override
  String get playerStreamReferer => 'Referer (opsional)';

  @override
  String get playerTorrent => 'torrent';

  @override
  String get playerTorrentDesc => 'Stream tautan magnet atau file .torrent';

  @override
  String get playerMagnetLink => 'Tautan magnet atau URL torrent';

  @override
  String get playerPickTorrent => 'Pilih file .torrent';

  @override
  String get playerTorrentMissing =>
      'Pasang addon torrent dulu dari Pengaturan > Addon';

  @override
  String get playerNoVideos => 'Tidak ada video yang bisa diputar';

  @override
  String get playerReset => 'Reset pengaturan pemutar';

  @override
  String get playerResetDesc => 'Kembalikan semua opsi pemutar ke bawaan';

  @override
  String get playerResetConfirm => 'Reset semua pengaturan pemutar?';

  @override
  String get playerResetDone => 'Pengaturan pemutar direset';

  @override
  String get playerQuality => 'Kualitas';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Sub Keras';

  @override
  String get streamGroupSoftSub => 'Sub Lembut';

  @override
  String get streamGroupDub => 'sulih suara';

  @override
  String get streamGroupRaw => 'Mentah';

  @override
  String get streamGroupOther => 'Lainnya';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aliran',
      one: '1 aliran',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Stream';

  @override
  String get playerStreamFailedNext =>
      'Streaming itu tidak dapat diputar, coba streaming berikutnya';

  @override
  String get playerAutoSelect => 'Pilih stream otomatis';

  @override
  String get playerAutoSelectDesc =>
      'Pilih stream yang paling mirip pilihan terakhirmu untuk judul ini';

  @override
  String get playerLoadingStreams => 'Mencari stream…';

  @override
  String get playerNoStreams => 'Episode ini tidak punya stream';

  @override
  String get playerNoStreamsTitle => 'Stream tidak ditemukan';

  @override
  String get playerFailed => 'Pemutaran gagal';

  @override
  String get playerTorrentNeeded => 'Stream ini berupa torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Pasang addon torrent untuk memutar tautan magnet dan file .torrent';

  @override
  String get playerOpenAddons => 'Buka addon';

  @override
  String get playerTryAnotherStream => 'Coba stream lain';

  @override
  String get playerEpisodes => 'Episode';

  @override
  String get playerLock => 'Kunci kontrol';

  @override
  String get playerFullscreen => 'Layar penuh';

  @override
  String get readerChapters => 'Chapter';

  @override
  String get readerSettingsTitle => 'Pengaturan pembaca';

  @override
  String get readerPreviousChapter => 'Chapter sebelumnya';

  @override
  String get readerNextChapter => 'Chapter berikutnya';

  @override
  String get readerFirstChapter => 'Ini chapter pertama';

  @override
  String get readerLastChapter => 'Kamu sudah baca semuanya';

  @override
  String get readerFailed => 'Chapter ini tidak bisa dibuka';

  @override
  String get readerOpenBook => 'Buka buku';

  @override
  String get readerOpenBookDesc =>
      'Baca epub (pembaca novel) atau PDF (pembaca manga) dari file Anda';

  @override
  String get readerNoText => 'Chapter ini tidak ada teksnya';

  @override
  String get readerPerTitle => 'Hanya untuk judul ini';

  @override
  String get readerPerTitleDesc =>
      'Pakai pengaturan pembaca ini hanya untuk judul ini';

  @override
  String get readerSectionReading => 'Membaca';

  @override
  String get readerSectionControls => 'Kontrol';

  @override
  String get readerSectionDisplay => 'Tampilan';

  @override
  String get readerSectionNovel => 'Baru';

  @override
  String get readerMode => 'Mode baca';

  @override
  String get readerModeAuto => 'Otomatis (menurut jenis seri)';

  @override
  String get readerModeRtl => 'Kanan ke kiri';

  @override
  String get readerModeLtr => 'Kiri ke kanan';

  @override
  String get readerModeVertical => 'Halaman vertikal';

  @override
  String get readerModeWebtoon => 'webtoon';

  @override
  String get readerModeContinuous => 'Gulir terus-menerus';

  @override
  String get readerScale => 'Skala gambar';

  @override
  String get readerScaleFit => 'Pas layar';

  @override
  String get readerScaleWidth => 'Pas lebar';

  @override
  String get readerScaleHeight => 'Pas tinggi';

  @override
  String get readerScaleOriginal => 'Ukuran asli';

  @override
  String get readerScaleSmart => 'Pas pintar';

  @override
  String get readerDoublePage => 'Halaman ganda';

  @override
  String get readerDoublePageDesc =>
      'Tampilkan dua halaman berdampingan di mode lanskap';

  @override
  String get readerDoubleTapZoom => 'Ketuk dua kali untuk zoom';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zoom halaman masuk dan keluar dengan ketuk dua kali';

  @override
  String get readerAnimate => 'Animasi halaman';

  @override
  String get readerAnimateDesc => 'Beri animasi saat ganti halaman';

  @override
  String get readerSidePadding => 'Padding samping';

  @override
  String get readerSidePaddingDesc => 'Ruang di samping halaman dalam persen';

  @override
  String get readerPageGap => 'Jarak halaman';

  @override
  String get readerPageGapDesc => 'Ruang antar halaman';

  @override
  String get readerAutoNext => 'Lanjut ke chapter berikutnya';

  @override
  String get readerAutoNextDesc =>
      'Muat chapter berikutnya saat kamu membaca akhir chapter ini';

  @override
  String get readerPreload => 'Muat halaman di muka';

  @override
  String get readerPreloadDesc => 'Berapa halaman yang diunduh lebih dulu';

  @override
  String get readerTapZones => 'Zona ketuk';

  @override
  String get readerTapDefault => 'Bawaan';

  @override
  String get readerTapLShaped => 'Bentuk L';

  @override
  String get readerTapKindle => 'Seperti Kindle';

  @override
  String get readerTapEdge => 'Hanya tepi';

  @override
  String get readerTapOff => 'Nonaktif';

  @override
  String get readerInvertTaps => 'Balik zona ketuk';

  @override
  String get readerInvertTapsDesc => 'Tukar area sebelumnya dan berikutnya';

  @override
  String get readerBackground => 'Latar belakang';

  @override
  String get readerBackgroundBlack => 'Hitam';

  @override
  String get readerBackgroundGray => 'Abu-abu';

  @override
  String get readerBackgroundWhite => 'Putih';

  @override
  String get readerBackgroundTheme => 'Tema aplikasi';

  @override
  String get readerFilter => 'Filter warna';

  @override
  String get readerFilterNone => 'Tidak ada';

  @override
  String get readerFilterGrayscale => 'Skala abu-abu';

  @override
  String get readerFilterInvert => 'Inversi';

  @override
  String get readerFilterSepia => 'sepia';

  @override
  String get readerFilterQuality => 'Kualitas filter gambar';

  @override
  String get readerFilterQualityNone => 'Tidak ada (Tetangga terdekat)';

  @override
  String get readerFilterQualityLow => 'Rendah (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Sedang (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'Tinggi (Bikubik)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Karat berkualitas tinggi)';

  @override
  String get readerDim => 'Redup';

  @override
  String get readerDimDesc => 'Gelapkan halaman';

  @override
  String get readerPageNumber => 'Nomor halaman';

  @override
  String get readerPageNumberDesc => 'Tampilkan nomor halaman saat membaca';

  @override
  String get readerFullscreen => 'Layar penuh';

  @override
  String get readerFullscreenDesc => 'Sembunyikan bilah sistem';

  @override
  String get readerCropBorders => 'Potong tepi';

  @override
  String get readerCropBordersDesc =>
      'Pangkas margin putih atau hitam kosong dari halaman';

  @override
  String get readerLongPressSave => 'Tahan halaman untuk menyimpannya';

  @override
  String get readerLongPressSaveDesc =>
      'Tekan lama halaman untuk membuka opsi simpan, bagikan, dan salin';

  @override
  String get readerVolumeKeys => 'Tombol volume ganti halaman';

  @override
  String get readerVolumeKeysDesc => 'Volume turun maju, volume naik mundur';

  @override
  String get readerBookmarks => 'Bookmark';

  @override
  String get readerBookmarkAdd => 'Tambah bookmark';

  @override
  String get readerBookmarkRemove => 'Hapus bookmark';

  @override
  String get readerBookmarksEmpty => 'Belum ada bookmark';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Halaman $page dari $total';
  }

  @override
  String get readerAutoScroll => 'Gulir otomatis';

  @override
  String get readerAutoScrollStop => 'Hentikan gulir otomatis';

  @override
  String get readerAutoScrollSpeed => 'Kecepatan gulir otomatis';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Seberapa cepat halaman bergulir atau berganti sendiri';

  @override
  String get readerKeepOn => 'Biarkan layar menyala';

  @override
  String get readerKeepOnDesc => 'Cegah layar mati saat membaca';

  @override
  String get readerOrientation => 'Orientasi';

  @override
  String get readerOrientationFree => 'Bebas';

  @override
  String get readerOrientationPortrait => 'Potret';

  @override
  String get readerOrientationLandscape => 'Lanskap';

  @override
  String get readerSaveProgress => 'Simpan progres';

  @override
  String get readerSaveProgressDesc =>
      'Ingat halamanmu dan tandai chapter sebagai sudah dibaca';

  @override
  String get readerReset => 'Reset pengaturan pembaca';

  @override
  String get readerResetDesc => 'Kembali ke bawaan';

  @override
  String get readerResetConfirm =>
      'Reset setiap pengaturan pembaca ke default?';

  @override
  String get novelSize => 'Ukuran teks';

  @override
  String get novelFont => 'huruf';

  @override
  String get novelLineHeight => 'Tinggi baris';

  @override
  String get novelParagraph => 'Jarak paragraf';

  @override
  String get novelMargin => 'Margin';

  @override
  String get novelTheme => 'Tema pembaca';

  @override
  String get novelThemeApp => 'Tema aplikasi';

  @override
  String get novelThemeLight => 'Terang';

  @override
  String get novelThemeSepia => 'sepia';

  @override
  String get novelThemeDark => 'Gelap';

  @override
  String get novelThemeBlack => 'Hitam';

  @override
  String get novelJustify => 'Ratakan teks';

  @override
  String get novelJustifyDesc => 'Ratakan teks ke kedua tepi';

  @override
  String get trackProgressTitle => 'Simpan progres?';

  @override
  String trackProgressAnime(String name) {
    return 'Lacak $name di daftarmu saat menonton? Pilih \"Hanya di perangkat ini\" untuk menyimpannya lokal, atau Tidak untuk tidak menyimpan apa-apa.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Lacak $name di daftarmu saat menyelesaikan chapter? Pilih \"Hanya di perangkat ini\" untuk menyimpannya lokal, atau Tidak untuk tidak menyimpan apa-apa.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Simpan kemajuan Anda di $name ke daftar di perangkat ini saat Anda menonton?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Simpan kemajuan Anda di $name ke daftar di perangkat ini setelah Anda menyelesaikan satu bab?';
  }

  @override
  String get downloadClearQueue => 'Hapus antrian';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Batalkan semua unduhan $count dalam antrian? Apa yang sudah diunduh akan dihapus.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count dipilih';
  }

  @override
  String get downloadSelectAll => 'Pilih semua';

  @override
  String get downloadDeleteSelected => 'Hapus yang dipilih';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Hapus $count unduhan? File mereka akan dihapus dari perangkat.';
  }

  @override
  String get castTitle => 'Transmisikan ke perangkat';

  @override
  String get castSearching => 'Mencari perangkat di jaringan Anda…';

  @override
  String get castNoDevices =>
      'Tidak ada perangkat yang ditemukan. Pastikan TV atau Chromecast menggunakan Wi-Fi yang sama, lalu cari lagi.';

  @override
  String get castRefresh => 'Cari lagi';

  @override
  String get castFailed => 'Tidak dapat memulai transmisi';

  @override
  String get castStop => 'Hentikan transmisi';

  @override
  String castNowCasting(String name) {
    return 'Transmisi ke $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / TV Pintar';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku tidak dapat melaporkan atau mengubah posisi';

  @override
  String get castControls => 'Kontrol';

  @override
  String get castVolume => 'volume TV';

  @override
  String castSkipPart(String name) {
    return 'Lewati $name';
  }

  @override
  String get trackProgressRememberSeries => 'Ingatlah untuk seri ini';

  @override
  String get trackProgressYes => 'Simpan';

  @override
  String get trackProgressReset =>
      'Pertanyaan simpan progres direset untuk tipe ini, akan ditanyakan lagi';

  @override
  String get trackProgressNo => 'Tidak';

  @override
  String get trackProgressOff => 'Mati';

  @override
  String get trackProgressLocal => 'Hanya di perangkat ini';

  @override
  String get trackProgressSettingAnime => 'Lacak progres anime';

  @override
  String get trackProgressSettingManga => 'Lacak progres manga dan novel';

  @override
  String get trackProgressSettingDesc =>
      'Yang dilakukan saat membuka episode atau menyelesaikan chapter';

  @override
  String get trackProgressAsk => 'Tanya';

  @override
  String get trackProgressAlways => 'Selalu';

  @override
  String get dantotsuImport => 'Impor dari Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Baca cadangan pengaturan Dantotsu (.ani, atau .sani terenkripsi)';

  @override
  String get dantotsuPick => 'Pilih cadangan Dantotsu';

  @override
  String get dantotsuNothing => 'Tidak ada yang bisa diimpor dari file ini';

  @override
  String get dantotsuApply => 'Impor yang dipilih';

  @override
  String dantotsuDone(int done, int total) {
    return '$done dari $total diimpor';
  }

  @override
  String get dantotsuGroupAccounts => 'Akun';

  @override
  String get dantotsuGroupAppearance => 'Tampilan';

  @override
  String get dantotsuGroupExtensions => 'Ekstensi';

  @override
  String get dantotsuGroupApp => 'Aplikasi';

  @override
  String get dantotsuGroupPlayer => 'Pemutar';

  @override
  String get dantotsuAnilist => 'Login AniList';

  @override
  String get dantotsuMal => 'Login MyAnimeList';

  @override
  String get dantotsuDiscord => 'Token Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repositori ekstensi anime';

  @override
  String get dantotsuReposManga => 'Repositori ekstensi manga';

  @override
  String get dantotsuReposNovel => 'Repositori ekstensi novel';

  @override
  String get dantotsuUpdates => 'Cek pembaruan';

  @override
  String get dantotsuComments => 'Komentar';

  @override
  String get dantotsuActivity => 'Polling notifikasi AniList';

  @override
  String get dantotsuDns => 'Penyedia DNS';

  @override
  String get dantotsuPlayer => 'Kecepatan pemutar dan warna subtitle';

  @override
  String get dantotsuWarning =>
      'File ini berisi token login. Jaga tetap pribadi.';

  @override
  String get novelIndent => 'Indentasi paragraf';

  @override
  String get novelIndentDesc =>
      'Mulai tiap paragraf dengan indentasi baris pertama';

  @override
  String get novelLetterSpacing => 'Jarak huruf';

  @override
  String get novelSectionTranslate => 'Terjemahan';

  @override
  String get sectionExperimental => 'Eksperimental';

  @override
  String get kitsuGraphqlDetail => 'Halaman detail lebih cepat (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Muat judul beserta karakter, staf, dan entrimu dalam satu permintaan';

  @override
  String get togetherTitle => 'Nonton bareng';

  @override
  String get togetherIntro =>
      'Tempel tautan room yang dikirim temanmu. Kamu langsung bergabung dan pemutar terbuka saat mereka mulai menonton.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Bergabunglah dengan ruangan $room? Tuan rumah memilih apa yang diputar dan pemain membukanya sendiri ketika mereka mulai menonton.';
  }

  @override
  String get togetherJoin => 'Bergabunglah';

  @override
  String get togetherName => 'Namamu';

  @override
  String get togetherConnecting => 'Menghubungkan…';

  @override
  String get togetherLeave => 'Keluar dari room';

  @override
  String get togetherYou => 'Kamu';

  @override
  String get togetherNoChat => 'Belum ada pesan';

  @override
  String get togetherChatHint => 'Pesan';

  @override
  String get togetherCopyInvite => 'Salin undangan';

  @override
  String get togetherShareInvite => 'Bagikan undangan';

  @override
  String togetherShareText(String link) {
    return 'Tonton bersama saya di Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server dan room disalin';

  @override
  String get togetherConnectionLost => 'Koneksi terputus';

  @override
  String togetherConnectedTo(String room) {
    return 'Terhubung ke $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Tidak bisa terhubung: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name bergabung';
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
    return '$name melanjutkan';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name lompat ke $time';
  }

  @override
  String get togetherFollowFailed =>
      'Episode host tidak bisa dibuka. Buka sendiri.';

  @override
  String get togetherJoinRole => 'Gabung ke room';

  @override
  String get togetherOpenHost => 'Buka episode host';

  @override
  String get togetherShowChat => 'Tampilkan obrolan langsung';

  @override
  String get togetherWaitingHost => 'Menunggu host memulai episode';

  @override
  String get togetherRoomLink => 'Tautan room';

  @override
  String get togetherBadLink => 'Itu bukan tautan room';

  @override
  String get togetherHostClosed => 'Host menutup room';

  @override
  String get togetherNowPlaying => 'Sedang diputar';

  @override
  String togetherWatchingCount(int count) {
    return '$count menonton';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user ingin menjeda';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user ingin melanjutkan';
  }

  @override
  String get togetherChip => 'Bareng';

  @override
  String get togetherSettingsDesc => 'Gabung ke room teman lewat tautan';

  @override
  String get novelBilingual => 'Tampilkan asli dan terjemahan';

  @override
  String get novelBilingualDesc =>
      'Tiap paragraf menampilkan teks asli dengan terjemahannya di bawah';

  @override
  String get novelTranslateTo => 'Terjemahkan ke';

  @override
  String get novelTranslateOff => 'Mati';

  @override
  String get novelSectionSpeech => 'Teks ke suara';

  @override
  String get novelSpeechRate => 'Kecepatan suara';

  @override
  String get novelSpeechPitch => 'Nada suara';

  @override
  String get novelSpeak => 'Bacakan';

  @override
  String get novelSpeakStop => 'Berhenti membacakan';

  @override
  String get novelTranslate => 'Terjemahkan chapter';

  @override
  String get novelTranslateShowOriginal => 'Tampilkan asli';

  @override
  String novelTranslateFailed(String error) {
    return 'Terjemahan gagal: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Teks ke suara tidak tersedia di perangkat ini';

  @override
  String get novelSpeechVoice => 'Suara';

  @override
  String get novelSpeechVoiceDefault => 'Bawaan sistem';

  @override
  String get novelSpeakPrevious => 'Baris sebelumnya';

  @override
  String get novelSpeakNext => 'Baris berikutnya';

  @override
  String get novelTapPaging => 'Ketuk tepi untuk ganti halaman';

  @override
  String get novelTapPagingDesc =>
      'Ketuk sisi kiri atau kanan untuk menggulir satu halaman, bagian tengah menampilkan kontrol';

  @override
  String get novelPaged => 'Pembalikan halaman';

  @override
  String get novelPagedDesc =>
      'Bagi bab menjadi beberapa halaman dan geser atau ketuk untuk membaliknya alih-alih menggulir';

  @override
  String novelPageOf(int current, int total) {
    return 'Halaman $current dari $total';
  }

  @override
  String get novelPaginating => 'Meletakkan halaman';

  @override
  String get novelTools => 'Konten, pencarian, dan sorotan';

  @override
  String get novelContents => 'Isi';

  @override
  String get novelContentsEmpty => 'Bab ini tidak memiliki judul';

  @override
  String get novelSearch => 'Cari';

  @override
  String get novelSearchHint => 'Cari di bab ini';

  @override
  String get novelSearchNone => 'Tidak ada kecocokan';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cocok',
      one: '1 pertandingan',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Sorotan';

  @override
  String get novelHighlightsEmpty =>
      'Pilih beberapa teks dan ketuk Sorot untuk menyimpannya di sini';

  @override
  String get novelHighlight => 'Sorot';

  @override
  String get novelHighlightNote => 'Catatan';

  @override
  String get novelHighlightNoteHint => 'Tambahkan catatan';

  @override
  String get novelHighlightRemove => 'Hapus sorotan';

  @override
  String get novelHighlightFailed =>
      'Tidak dapat mencocokkan pilihan tersebut dengan teks';

  @override
  String novelMinutesLeft(int count) {
    return 'Sisa $count mnt';
  }

  @override
  String get novelBold => 'Teks tebal';

  @override
  String get novelBoldDesc => 'Pakai ketebalan lebih berat';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Selesai $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Berikutnya: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Sebelumnya: $chapter';
  }

  @override
  String get readerNoPages => 'Chapter ini tidak punya halaman';

  @override
  String get readerLoadingPages => 'Memuat halaman…';

  @override
  String get readerSlowPage => 'Halaman ini masih dimuat…';

  @override
  String get readerPageFailed => 'Halaman ini tidak bisa dimuat';

  @override
  String get playerShowComments => 'Tampilkan komentar';

  @override
  String get playerHideComments => 'Sembunyikan komentar';

  @override
  String get playerSubtitles => 'Subtitle';

  @override
  String get playerSubtitlesOff => 'Subtitle mati';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Tambah file subtitle';

  @override
  String get playerAddAudio => 'Tambah file audio';

  @override
  String get playerChapters => 'Chapter';

  @override
  String get playerSkipSubmit => 'Kirimkan waktu lewati';

  @override
  String get playerSkipSubmitDesc =>
      'Tandai di mana pembukaan, akhir, atau rekap dimulai dan diakhiri dalam episode ini dan bagikan ke AniSkip, sehingga semua orang mendapat tombol lewati.';

  @override
  String get playerSkipStart => 'Awal';

  @override
  String get playerSkipEnd => 'Akhir';

  @override
  String get playerSkipUseNow => 'Gunakan posisi saat ini';

  @override
  String get playerSkipSend => 'Kirim ke AniSkip';

  @override
  String get playerSkipSent =>
      'Lewati waktu dikirimkan ke AniSkip, terima kasih';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip menolak waktu lewati: $error';
  }

  @override
  String get playerUnsupported =>
      'Pemutar video tidak dapat berjalan di perangkat ini (versi Android-nya terlalu lama untuk pustaka pemutar yang dibundel). Ketuk untuk menyalin detailnya.';

  @override
  String get playerSkipNoMal =>
      'Judul ini tidak memiliki id MyAnimeList, AniSkip tidak dapat menerimanya';

  @override
  String get playerNoChapters => 'Tidak ada chapter';

  @override
  String get playerTimestamp => 'Stempel waktu';

  @override
  String get playerAutoPlayDelay => 'Hitung mundur episode berikutnya';

  @override
  String get playerWatchedAt => 'Hitung sebagai ditonton di';

  @override
  String playerNextIn(int seconds) {
    return 'Episode berikutnya dalam $seconds dtk';
  }

  @override
  String get playerPlayNow => 'Putar sekarang';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: akan dilewati otomatis untuk judul ini';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: tidak akan dilewati otomatis untuk judul ini';
  }

  @override
  String get playerAudioLanguage => 'Bahasa audio pilihan';

  @override
  String get playerLanguageOrderHint =>
      'Pisahkan bahasa dengan koma. Yang pertama ditemukan dipakai.';

  @override
  String get playerPip => 'Gambar dalam gambar';

  @override
  String get playerAutoPip => 'Picture in picture saat keluar';

  @override
  String get playerAutoPipDesc =>
      'Terus putar di jendela kecil saat kamu keluar dari aplikasi';

  @override
  String get playerPipPlay => 'Mainkan';

  @override
  String get playerPipPause => 'Jeda';

  @override
  String get playerPipBack => 'Mundur';

  @override
  String get playerPipForward => 'Maju';

  @override
  String get playerPipRestore => 'Kembali ke pemain';

  @override
  String get playerPipActive => 'Bermain di jendela kecil';

  @override
  String get listDateAdded => 'Ditambahkan ke daftar';

  @override
  String get listDateLastWatched => 'Terakhir ditonton';

  @override
  String playerAutoPlaying(String title) {
    return 'Memutar $title berikutnya…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Shader tidak bisa dipasang: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Bab $number';
  }

  @override
  String get playerPerTitle => 'Hanya untuk judul ini';

  @override
  String get playerPerTitleDesc =>
      'Pakai opsi ini untuk judul ini dan biarkan bawaanmu tidak berubah';

  @override
  String get playerSwapGestures => 'Tukar sisi geser';

  @override
  String get playerSwapGesturesDesc => 'Kecerahan di kiri, volume di kanan';

  @override
  String get playerOpenBig => 'Buka dalam tampilan besar';

  @override
  String get playerOpenBigDesc =>
      'Mulai pemutar dalam layar penuh, bukan dengan daftar episode';

  @override
  String get playerPauseOnBlur => 'Jeda saat tidak fokus';

  @override
  String get playerPauseOnBlurDesc =>
      'Jeda saat aplikasi tertutup, misalnya panel notifikasi, dan lanjut lagi saat kamu kembali';

  @override
  String get playerAudioOutput => 'Output audio';

  @override
  String get fontAppDefault => 'Font aplikasi';

  @override
  String get fontImport => 'Impor font';

  @override
  String get fontSample => 'Rubah coklat yang gesit melompati anjing pemalas';

  @override
  String get playerSubtitleDelay => 'Delay subtitle';

  @override
  String get playerAudioDelay => 'Delay audio';

  @override
  String get playerDelayReset => 'Setel ulang';

  @override
  String get playerOnlineSubtitles => 'Subtitle online';

  @override
  String get playerOnlineSearchHint => 'Judul dan episode';

  @override
  String get playerOnlineNone => 'Subtitle tidak ditemukan';

  @override
  String playerOnlineFailed(String error) {
    return 'Pencarian subtitle gagal: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Subtitle ini tidak bisa diunduh: $error';
  }

  @override
  String get playerOnlineMatch => 'Cocok dengan file ini';

  @override
  String get playerOnlineEpisode => 'Kecocokan episode';

  @override
  String playerOnlineDownloads(int count) {
    return '$count unduhan';
  }

  @override
  String get playerSeekPreview => 'Pratinjau seek';

  @override
  String get playerSeekPreviewDesc =>
      'Tampilkan pratinjau frame kecil di atas bilah seek saat menggeser. Membuka decoder kedua beresolusi rendah, jadi memakai data ekstra di stream.';

  @override
  String get playerSettingsChip => 'Pengaturan';

  @override
  String get playerAudioDevice => 'Perangkat audio';

  @override
  String get settingsDownloads => 'Unduhan';

  @override
  String get settingsDownloadsDesc =>
      'Episode offline, antrean, dan mode offline';

  @override
  String get downloadsTitle => 'Unduhan';

  @override
  String get widgetContinue => 'Lanjutkan';

  @override
  String get widgetReleases => 'Segera dirilis';

  @override
  String get widgetMore => 'Juga sedang dalam proses';

  @override
  String get widgetNothing => 'Belum ada yang bisa dilanjutkan';

  @override
  String get downloadStorageTitle => 'Penyimpanan';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count unduhan',
      one: '1 unduhan',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size sudah menonton atau membaca';
  }

  @override
  String get downloadFreeUp => 'Kosongkan ruang';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count menonton unduhan',
      one: '1 menonton unduhan',
    );
    return 'Menghapus $_temp0 dan gratis $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Dibebaskan $size';
  }

  @override
  String get downloadDeleteWatched => 'Hapus ditonton';

  @override
  String get downloadDeleteAll => 'Hapus semua';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Hapus setiap unduhan $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Tidak ada yang telah Anda selesaikan yang diunduh';

  @override
  String get downloadStorageEmpty => 'Tidak ada unduhan yang menggunakan ruang';

  @override
  String get downloadsOpenDesc =>
      'Lihat antrean dan semua yang tersimpan di perangkat ini';

  @override
  String get downloadTitle => 'Unduh';

  @override
  String get downloadMetaOnly => 'Hanya metadata';

  @override
  String get downloadMetaFailed => 'Tidak dapat membuat folder judul';

  @override
  String downloadMetaSaved(String path) {
    return 'Disimpan. Letakkan file Anda di $path';
  }

  @override
  String get downloadAlready => 'Sudah diunduh atau ada di antrean';

  @override
  String get downloadPickStream => 'Unduh stream yang mana?';

  @override
  String get downloadPickSubtitle => 'Unduh subtitle yang mana?';

  @override
  String get downloadPickAudio => 'Unduh trek audio yang mana?';

  @override
  String get downloadNoAudio => 'Tanpa audio tambahan';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Tanpa subtitle';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Stream ini berupa playlist HLS. Mengunduhnya butuh addon FFmpeg.';

  @override
  String get downloadSourceMissing => 'Sumber episode ini belum terpasang';

  @override
  String get downloadDashDrm => 'Aliran ini dilindungi DRM';

  @override
  String get downloadDashNoVideo => 'Manifes DASH tidak memiliki video';

  @override
  String get downloadWaitingConnection => 'Menunggu koneksi';

  @override
  String get downloadSubtitles => 'Subtitle';

  @override
  String get downloadDownloaded => 'Diunduh';

  @override
  String get downloadOffline => 'Luring';

  @override
  String get downloadDelete => 'Hapus unduhan';

  @override
  String get downloadCancel => 'Batal';

  @override
  String get downloadPause => 'Jeda';

  @override
  String get downloadPaused => 'Dijeda';

  @override
  String get downloadResume => 'Lanjutkan';

  @override
  String get downloadPauseAll => 'Jeda semua';

  @override
  String get downloadResumeAll => 'Lanjutkan semua';

  @override
  String get downloadQueuedState => 'Menunggu di antrean';

  @override
  String get downloadResolving => 'Mengambil stream…';

  @override
  String get downloadUsedFallback =>
      'Tidak ada stream yang cocok, pakai yang pertama';

  @override
  String get downloadTabQueue => 'Antrean';

  @override
  String get downloadTabDone => 'Selesai';

  @override
  String get downloadTabFailed => 'Gagal';

  @override
  String get downloadEmptyQueue => 'Tidak ada yang diunduh';

  @override
  String get downloadEmptyDone => 'Belum ada yang diunduh';

  @override
  String get downloadEmptyFailed => 'Tidak ada unduhan yang gagal';

  @override
  String get downloadNext => 'Episode berikutnya';

  @override
  String downloadNextN(int count) {
    return '$count episode berikutnya';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Semua yang belum ditonton ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Rentang ini ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Semua episode ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count episode diantrekan',
      one: '1 episode diantrekan',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name diunduh';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name gagal diunduh';
  }

  @override
  String downloadStorage(String size) {
    return '$size dipakai unduhan';
  }

  @override
  String get downloadQueueHeader => 'Antrean';

  @override
  String get downloadParallel => 'Unduhan sekaligus';

  @override
  String get downloadParallelDesc =>
      'Jalankan satu unduhan sekali waktu atau beberapa bersamaan';

  @override
  String get downloadOneByOne => 'Satu per satu';

  @override
  String get downloadNotifications => 'Notifikasi unduhan';

  @override
  String get downloadNotificationsDesc =>
      'Progres langsung di tempat yang didukung sistem, kalau tidak catatan saat unduhan selesai';

  @override
  String get downloadNotifyLive => 'Langsung';

  @override
  String get downloadNotifyDone => 'Saat selesai';

  @override
  String get downloadNotifyOff => 'Mati';

  @override
  String get downloadInfoFile => 'Tulis file info di samping tiap unduhan';

  @override
  String get downloadInfoFileDesc =>
      'Menyimpan stream, kualitas, subtitle, dan waktu lewati sebagai file .json kecil';

  @override
  String get offlineHeader => 'Luring';

  @override
  String get offlineModeDesc =>
      'Otomatis hanya offline kalau aplikasi dimulai tanpa koneksi. Selalu tetap offline sampai kamu mengubahnya.';

  @override
  String get offlineModeOff => 'Mati';

  @override
  String get offlineModeAlways => 'Selalu';

  @override
  String get offlineModeOn =>
      'Mode offline aktif. Perubahan disimpan di sini dan dikirim saat kamu online lagi.';

  @override
  String get offlineSaved =>
      'Disimpan di perangkat ini, akan disinkronkan saat kamu online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perubahan tersinkron',
      one: '1 perubahan tersinkron',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perubahan menunggu sinkron',
      one: '1 perubahan menunggu sinkron',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Perubahan menunggu sinkron';

  @override
  String get offlinePendingNone => 'Tidak ada yang menunggu';

  @override
  String get offlineSyncNow => 'Sinkron sekarang';

  @override
  String get offlineDiscard => 'Buang';

  @override
  String get downloadNotOffline =>
      'Episode ini belum diunduh, jadi tidak tersedia offline';

  @override
  String get offlineModeChip => 'Luring';

  @override
  String get downloadNextChapter => 'Chapter berikutnya';

  @override
  String downloadNextChapters(int count) {
    return '$count chapter berikutnya';
  }

  @override
  String downloadUnread(int count) {
    return 'Semua yang belum dibaca ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Semua chapter ($count)';
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
  String get downloadFfmpegTitle => 'Butuh addon FFmpeg';

  @override
  String get downloadFfmpegBody =>
      'Stream ini berupa playlist HLS. Addon FFmpeg menggabungkan potongannya jadi satu file mp4. Tanpanya potongan disimpan di folder episode dan diputar dari sana.';

  @override
  String get downloadFfmpegInstall => 'Pasang';

  @override
  String get downloadFfmpegInstalling => 'Memasang FFmpeg, ini bisa agak lama…';

  @override
  String get downloadFinishing => 'Menggabungkan potongan jadi satu file…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total bagian';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent ini tidak punya file video untuk diunduh';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mengunduh $count item',
      one: 'Mengunduh 1 item',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Hapus unduhan yang sudah ditonton';

  @override
  String get downloadAutoDeleteDesc =>
      'Menghapus unduhan begitu progresmu mencapai episode atau chapter itu';

  @override
  String get downloadConnections => 'Koneksi per unduhan';

  @override
  String get downloadConnectionsDesc =>
      'Memecah file besar jadi bagian yang diambil bersamaan. Beberapa server membatasi ini.';

  @override
  String get downloadPlayChoice => 'Putar dari';

  @override
  String get downloadPlayLocalDesc => 'File yang tersimpan di perangkat ini';

  @override
  String get downloadPlayStream => 'Streaming daring';

  @override
  String get downloadPlayStreamDesc => 'Muat episode dari sumber';

  @override
  String get offlineFeedTitle => 'Diunduh di perangkat ini';

  @override
  String get offlineFeedEmpty =>
      'Unduh sesuatu saat online dan akan muncul di sini';

  @override
  String get offlineEnabled => 'Mode offline aktif';

  @override
  String get offlineDisabled => 'Mode offline mati';

  @override
  String get downloadReadChoice => 'Baca dari';

  @override
  String get downloadReadLocalDesc => 'Halaman yang tersimpan di perangkat ini';

  @override
  String get downloadReadOnline => 'Baca online';

  @override
  String get downloadReadOnlineDesc => 'Muat chapter dari sumber';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Hapus $name dari perangkat ini?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Batalkan unduhan $name? Yang sudah terunduh akan dihapus.';
  }

  @override
  String get downloadFfmpegFolder => 'Simpan sebagai folder';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Buang $count perubahan yang belum pernah terkirim? Ini tidak bisa dibatalkan.',
      one: 'Buang perubahan yang belum pernah terkirim? Ini tidak bisa dibatalkan.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Menunggu Wi-Fi';

  @override
  String get downloadWaitingMetered => 'Dijeda di koneksi berkuota';

  @override
  String get downloadWifiOnly => 'Hanya Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Unduhan menunggu saat kamu pakai data seluler';

  @override
  String get downloadMetered => 'Jeda di koneksi berkuota';

  @override
  String get downloadMeteredDesc =>
      'Juga menunggu di Wi-Fi yang ditandai berkuota oleh perangkatmu';

  @override
  String get downloadSpeedLimit => 'Batas kecepatan';

  @override
  String get downloadSpeedLimitDesc => 'Membatasi total kecepatan unduh';

  @override
  String get downloadUnlimited => 'Tanpa batas';

  @override
  String get downloadMoveToTop => 'Pindah ke atas';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'File yang mana?';

  @override
  String get downloadTorrentAuto => 'Cocokkan episode otomatis';

  @override
  String get downloadTorrentLoading => 'Membaca torrent…';

  @override
  String get watchAutoSource => 'Pindah ke sumber berikutnya otomatis';

  @override
  String get watchAutoSourceDesc =>
      'Kalau sumber tidak menemukan judul atau gagal dimuat, coba sumber terpasang berikutnya';

  @override
  String get extensionTest => 'Tes ekstensi';

  @override
  String get extensionTestCopy => 'Salin kegagalan beserta lognya';

  @override
  String get extensionTestQuery => 'Kata kunci';

  @override
  String get extensionTestRun => 'Jalankan';

  @override
  String get extensionTestStop => 'Berhenti';

  @override
  String get extensionTestNone => 'Tidak ada ekstensi terpasang untuk tipe ini';

  @override
  String get extensionTestNotRun => 'Belum dites';

  @override
  String get extensionTestSearch => 'Cari';

  @override
  String get extensionTestDetail => 'Detail';

  @override
  String get extensionTestUnits => 'Episode / chapter';

  @override
  String get extensionTestLinks => 'Stream / halaman';

  @override
  String extensionTestFailedAt(String step) {
    return 'Gagal di $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done dari $total dites · $passed lolos · $failed gagal';
  }

  @override
  String get extensionTestCopyLogs => 'Salin semuanya beserta log lengkap';

  @override
  String get onboardingFeaturesTitle => 'Semua di satu tempat';

  @override
  String get onboardingFeaturesBody =>
      'Semua yang kamu lacak, tonton, dan baca, tanpa bolak-balik antar aplikasi.';

  @override
  String get onboardingFeatureTrack => 'Lacak semuanya';

  @override
  String get onboardingFeatureTrackDesc =>
      'Daftar, progres, dan skor di AniList, MyAnimeList, Simkl, Kitsu, dan MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Tonton dan baca';

  @override
  String get onboardingFeatureWatchDesc =>
      'Pasang ekstensi dan streaming anime atau baca manga dan novel langsung di aplikasi.';

  @override
  String get onboardingFeatureOffline => 'Bawa offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Unduh episode dan chapter, dan lanjut terus tanpa koneksi.';

  @override
  String get onboardingFeatureSync => 'Jaga daftar tetap sinkron';

  @override
  String get onboardingFeatureSyncDesc =>
      'Cerminkan daftarmu antar layanan, atau biarkan yang paling maju menang.';

  @override
  String get onboardingServices => 'Bisa dipakai dengan';

  @override
  String sourceNotifyOn(String source) {
    return 'Anda akan diberi tahu ketika $source memiliki sesuatu yang baru';
  }

  @override
  String get sourceNotifyOff => 'Lepaskan notifikasi';

  @override
  String get sourceNotifyNeedsSource =>
      'Pilih sumber yang cocok terlebih dahulu';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Semuanya ($count) sudah keluar, tidak ada yang perlu ditunggu';
  }

  @override
  String get sourceNotifyTooltipOn => 'Hentikan pemberitahuan rilis';

  @override
  String get sourceNotifyTooltipOff => 'Beritahu saya tentang rilis baru';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Episode $number keluar pada $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Episode $from–$to keluar pada $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Bab $number keluar pada $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Bab $from–$to keluar pada $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return 'Judul $count memiliki sesuatu yang baru';
  }

  @override
  String get navSources => 'Sumber';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Sumber ini milik $manager, yang bukan merupakan layanan ekstensi aktif';
  }

  @override
  String get sourceAlertsHeader => 'Rilis pemberitahuan';

  @override
  String get sourceAlertsSwitch => 'Periksa judul berlangganan';

  @override
  String get sourceAlertsSwitchDesc =>
      'Setiap kali aplikasi dibuka, untuk judul Anda menyalakan belnya';

  @override
  String get sourceSkipUnstarted => 'Lewati judul yang belum Anda mulai';

  @override
  String get sourceSkipUnstartedDesc =>
      'Belum ada yang ditonton atau dibaca, tapi episodenya sudah ada';

  @override
  String get sourceSkipUnseen =>
      'Lewati selagi Anda memiliki episode yang belum terlihat';

  @override
  String get sourceSkipUnseenDesc =>
      'Anda masih telah merilis episode untuk diikuti';

  @override
  String get sourceManage => 'Langganan';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count judul',
      one: '1 judul',
      zero: 'Tidak ada judul',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Periksa sekarang';

  @override
  String get sourceCheckNowDesc => 'Mengabaikan jadwal dan aturan melewatkan';

  @override
  String get sourceChecking => 'Memeriksa…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Judul $count memiliki sesuatu yang baru',
      one: '1 judul memiliki sesuatu yang baru',
      zero: 'Tidak ada yang baru',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Belum ada langganan';

  @override
  String get sourceEmptyMessage =>
      'Ketuk bel di atas episode suatu judul untuk mengetahui episode baru';

  @override
  String get sourceAll => 'Semua';

  @override
  String sourceInactive(String manager) {
    return 'Tidak aktif: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source tidak dipasang di layanan ekstensi ini';
  }

  @override
  String get sourceUnreachable => 'Sumber tidak merespons';

  @override
  String get sourceFinished => 'Selesai';

  @override
  String get sourceSkippedCompleted => 'Dilewati: selesai';

  @override
  String get sourceSkippedUnstarted => 'Dilewati: belum dimulai';

  @override
  String get sourceSkippedUnseen => 'Dilewati: episode yang tidak terlihat';

  @override
  String get sourceWaiting => 'Menunggu rilis berikutnya';

  @override
  String sourceNextCheck(String when) {
    return 'Selanjutnya periksa $when';
  }

  @override
  String get sourceSoon => 'segera';

  @override
  String sourceInHours(int count) {
    return 'di ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'di ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Terbaru: $number';
  }

  @override
  String get sourceMute => 'Bisu';

  @override
  String get sourceUnmute => 'Suarakan';

  @override
  String get sourceMuted => 'Dibungkam';

  @override
  String get sourceUnsubscribe => 'Berhenti berlangganan';

  @override
  String get sourcePickAnother => 'Pilih sumber lain';

  @override
  String get sourceOpenExtensions => 'Buka ekstensi';

  @override
  String get sourceNoticesEmpty => 'Belum ada pemberitahuan rilis';

  @override
  String get sourceNoticesEmptyMessage =>
      'Episode dan bab baru dari judul langganan Anda muncul di sini';

  @override
  String get sourceOpenTitle => 'Judul terbuka';

  @override
  String get extensionsLoading => 'Memuat ekstensi…';

  @override
  String get updateWhatsNew => 'Apa yang baru';

  @override
  String get updateLater => 'Nanti';

  @override
  String get updateSkipVersion => 'Lewati versi ini';

  @override
  String get updatePreparing => 'Mempersiapkan…';

  @override
  String get updateDownloading => 'Mengunduh';

  @override
  String get updateInstalling => 'Memasang…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done dari $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/dtk';
  }

  @override
  String updateReleased(String date) {
    return 'Dirilis $date';
  }

  @override
  String get updateNoAsset =>
      'Rilis ini tidak dapat diunduh untuk perangkat Anda';

  @override
  String get updateUpToDate => 'Anda menggunakan versi terbaru';

  @override
  String get updateIosHint =>
      'Versi iOS tidak ada di App Store. Ambil .ipa dari halaman rilis dan sideload dengan AltStore atau SideStore';

  @override
  String get updateOpenedBrowser => 'Periksa peramban Anda';

  @override
  String get updateTryAgain => 'Coba lagi';

  @override
  String get settingsNotifications => 'Pemberitahuan';

  @override
  String get settingsNotificationsDesc =>
      'Peringatan untuk daftar Anda, episode dan bab baru, dan balasan komentar';

  @override
  String get settingsAboutUpdates => 'Tentang & pembaruan';

  @override
  String get settingsAboutUpdatesDesc =>
      'Pembaruan aplikasi, versi, log, tautan, dan dukungan';

  @override
  String get settingsGroupAccount => 'Akun Anda';

  @override
  String get settingsGroupContent => 'Konten';

  @override
  String get settingsGroupApp => 'Aplikasi';

  @override
  String get settingsAnimeDesc =>
      'Pemutar, subtitle, skipping, daftar episode, dan detail episode';

  @override
  String get settingsMangaDesc =>
      'Mode pembaca, kontrol, tampilan dan pelacakan bab';

  @override
  String get settingsNovelDesc =>
      'Teks, membalik halaman, menerjemahkan, dan membaca dengan suara keras';

  @override
  String get settingsLocalPlay => 'Permainan lokal';

  @override
  String get settingsLocalPlayDesc =>
      'Putar file, folder, aliran jaringan dan torrent, atau buka buku';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Buku';

  @override
  String get settingsWatchSections => 'Bagian';

  @override
  String get settingsSectionLists => 'Daftar episode dan bab';

  @override
  String get settingsSectionProgress => 'Pelacakan kemajuan';

  @override
  String get updateChannelDesc =>
      'Stable is the tested release. Pra-rilis dan Alfa mendapatkan fitur baru lebih cepat tetapi mungkin rusak';

  @override
  String get checkNowDesc => 'Cari versi yang lebih baru segera';

  @override
  String get generalSectionBasics => 'Bahasa & perilaku';

  @override
  String get generalSectionSecurity => 'Keamanan';

  @override
  String get generalSectionPrivacy => 'Privasi';

  @override
  String notificationsOtherService(String service) {
    return 'Beralih ke $service untuk membuka ini';
  }

  @override
  String get secPlayerPlayback =>
      'Kecepatan default, putar otomatis, kesesuaian video, orientasi, dan gambar dalam gambar';

  @override
  String get secPlayerSkip =>
      'Lewati pembukaan, akhir, dan rekap secara otomatis';

  @override
  String get secPlayerControls =>
      'Gesek, tahan dan ketuk gerakan dan cari pratinjau';

  @override
  String get secPlayerSubtitles => 'Bahasa, tampilan, dan rendering subtitle';

  @override
  String get secPlayerShaders => 'Peningkatan anime dan shader Anda sendiri';

  @override
  String get secPlayerEngine =>
      'Dekoder, keluaran video dan audio, buffering. Only change these if playback has problems';

  @override
  String get secPlayerMpv => 'mpv.conf, skrip dan penyetelan lanjutan';

  @override
  String get secAnimeList =>
      'Episode pengisi dan thumbnail yang belum ditonton';

  @override
  String get secProgress =>
      'Saat kemajuan yang Anda tonton atau baca disimpan ke daftar Anda';

  @override
  String get secAnimeDetails =>
      'Dari mana judul episode, gambar mini, dan ringkasan berasal';

  @override
  String get secReaderReading =>
      'Mode membaca, membalik halaman, memperbesar dan bab berikutnya';

  @override
  String get secReaderControls =>
      'Ketuk zona, tombol volume, dan gulir otomatis';

  @override
  String get secReaderDisplay =>
      'Latar belakang, kecerahan, layar penuh, dan nomor halaman';

  @override
  String get secNovelText =>
      'Font, ukuran, spasi, margin, dan pembalikan halaman';

  @override
  String get secNovelTranslate => 'Terjemahkan bab saat Anda membaca';

  @override
  String get secNovelSpeech => 'Suara, kecepatan dan nada untuk dibacakan';

  @override
  String get secNotifyAbout =>
      'Pilih jenis aktivitas yang mengirimkan peringatan';

  @override
  String get layoutTitle => 'Tata Letak';

  @override
  String get layoutDesc => 'Pilih, pindahkan, dan sembunyikan tombol di bar';

  @override
  String get layoutHint =>
      'Seret tombol untuk memindahkannya (tahan terlebih dahulu pada layar sentuh). Ketuk salah satu untuk memotong, memindahkan, atau menyembunyikannya';

  @override
  String layoutDropInto(String zone) {
    return 'Mampir: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Memindahkan $name. Tekan tombol tempel untuk menempatkannya';
  }

  @override
  String get layoutTitleFixed => 'Judul';

  @override
  String get layoutZoneTopStart => 'Bilah atas, sebelum judul';

  @override
  String get layoutZoneTopEnd => 'Bilah atas, setelah judul';

  @override
  String get layoutZoneBottomStart => 'Bilah bawah, kiri';

  @override
  String get layoutZoneBottomEnd => 'Bilah bawah, kanan';

  @override
  String get layoutZoneSecondRow =>
      'Tersembunyi: baris kedua dalam tampilan normal';

  @override
  String get layoutZoneOverflow => 'Tersembunyi: di menu lainnya';

  @override
  String get layoutEmptyZone => 'Letakkan tombol di sini';

  @override
  String get layoutCut => 'Potong';

  @override
  String get layoutPaste => 'Tempel di sini';

  @override
  String get layoutHide => 'Sembunyikan';

  @override
  String layoutMoveTo(String zone) {
    return 'Pindah ke $zone';
  }

  @override
  String get layoutReset => 'Atur ulang ke default';

  @override
  String get layoutMore => 'Lebih lanjut';

  @override
  String get sourceWhyAction => 'Mengapa tidak ada peringatan?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Terakhir diperiksa';

  @override
  String get sourceWhyNever => 'Belum';

  @override
  String get sourceWhyNextCheck => 'Periksa selanjutnya';

  @override
  String get sourceWhyNewest => 'Terbaru di sumbernya';

  @override
  String get sourceWhyProgress => 'Kemajuan Anda';

  @override
  String get sourceWhyListStatus => 'Status daftar';

  @override
  String get sourceWhyFailures => 'Pemeriksaan gagal berturut-turut';

  @override
  String get sourceWhyLastRelease => 'Rilis baru terakhir terlihat';

  @override
  String get sourceWhyVerdictNew =>
      'Rilis baru muncul di sini segera setelah sumber mencantumkannya dan pemeriksaan berikutnya dijalankan.';

  @override
  String get sourceWhyVerdictAhead =>
      'Sumbernya sudah mendahului kemajuan Anda, jadi Anda sudah diberitahu tentang hal itu sekali. Baca atau tonton untuk mendapatkan peringatan berikutnya.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Judul ini dilewati oleh aturan di atas. Ubah pengaturan tersebut di pengaturan notifikasi, atau gunakan Periksa sekarang untuk tetap menjalankannya.';

  @override
  String get sourceWhyVerdictBroken =>
      'Sumbernya tidak bisa dihubungi atau sudah dihapus, jadi tidak ada yang diperiksa.';

  @override
  String get sourceWhyVerdictMuted => 'Langganan ini dinonaktifkan.';

  @override
  String get externalPlayerTitle => 'Buka streaming di tempat lain';

  @override
  String get externalCopyUrl => 'Salin tautan streaming';

  @override
  String get externalCopied => 'Tautan streaming disalin';

  @override
  String get externalChooser => 'Buka di aplikasi lain';

  @override
  String get externalVlc => 'Buka di VLC';

  @override
  String get externalMpv => 'Buka di mpv';

  @override
  String get externalWebVideoCast => 'Pemeran Video Web';

  @override
  String get castViaAppHint => 'Kirim streaming ke aplikasi Web Video Cast';

  @override
  String get externalFailed =>
      'Tidak dapat membuka streaming. Apakah pemutar sudah terpasang?';

  @override
  String get addonInstalled => 'Dipasang';

  @override
  String get loadFailedActivity => 'Tidak dapat memuat aktivitas';

  @override
  String get loadFailedFavourites => 'Tidak dapat memuat favorit. Coba lagi';

  @override
  String get loadFailedStats => 'Tidak dapat memuat statistik';

  @override
  String get loadFailedReplies => 'Tidak dapat memuat balasan';

  @override
  String get cantBeUndone => 'Hal ini tidak dapat dibatalkan.';

  @override
  String get searchTags => 'Tag pencarian';

  @override
  String get spoilerTapToView => 'Spoiler, ketuk untuk melihat';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Seseorang';

  @override
  String get notificationATitle => 'sebuah judul';

  @override
  String get notificationAddedDetail => 'Telah ditambahkan ke AniList';

  @override
  String get updateNoReleases => 'Tidak ada rilis yang ditemukan';

  @override
  String get updateInvalidResponse => 'Respons pembaruan tidak valid';

  @override
  String get commentsRateLimited => 'Tarif terbatas';

  @override
  String get commentsConnectFailed => 'Gagal terhubung';

  @override
  String get dnsNoRecords => 'Tidak ada catatan A yang dikembalikan';

  @override
  String get importTokenRejected => 'Token ditolak';

  @override
  String get developerRoleLead => 'Pengembang Utama';

  @override
  String get developerRoleModerator => 'Moderator Perselisihan';

  @override
  String extensionManagerTitle(String type) {
    return '$type manajer';
  }

  @override
  String extensionsOfType(String type) {
    return '$type ekstensi';
  }

  @override
  String extensionSettingsTitle(String name) {
    return 'pengaturan $name';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name tidak menyediakan pengaturan apa pun.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episode $episode dari $title ditayangkan';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episode $episode ditayangkan';
  }

  @override
  String notificationAdded(String title) {
    return '$title telah ditambahkan ke AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Server pembaruan tidak dapat menemukan rilis itu: $message';
  }

  @override
  String get installStepJre => 'Waktu proses Java';

  @override
  String get installStepCore => 'Inti waktu proses';

  @override
  String installStepsProgress(int current, int total) {
    return 'Langkah $current dari $total';
  }

  @override
  String get stepWaiting => 'Menunggu';

  @override
  String get stepChecking => 'Memeriksa…';

  @override
  String get stepUpToDate => 'Terkini';

  @override
  String stepUpToDateWith(String detail) {
    return 'Terkini · $detail';
  }

  @override
  String get stepWillInstall => 'Akan dipasang';

  @override
  String get stepWillUpdate => 'Akan diperbarui';

  @override
  String stepWillUpdateTo(String version) {
    return 'Akan diperbarui ke $version';
  }

  @override
  String get stepInstalled => 'Dipasang';

  @override
  String get stepNotNeeded => 'Tidak diperlukan di sini';

  @override
  String get stepFailed => 'Gagal';

  @override
  String stepFailedWith(String reason) {
    return 'Gagal: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Ini berjalan pada runtime Java dan inti runtime bersama. Mereka diinstal terlebih dahulu, dan diperbarui jika ada perubahan.';

  @override
  String get installRuntimeNewer =>
      'Waktu proses yang dijalankan manajer ini memiliki pembaruan.';

  @override
  String get removeJvmTitle => 'Hapus waktu proses Java?';

  @override
  String get removeJvmMessage =>
      'Manajer ekstensi desktop berhenti bekerja hingga diinstal kembali. Itu diunduh lagi saat berikutnya Anda menginstal atau membukanya.';

  @override
  String get runtimePreparing => 'Mempersiapkan waktu proses…';

  @override
  String get calendarAll => 'Semua';

  @override
  String get calendarAnime => 'anime';

  @override
  String get calendarManga => 'manga';

  @override
  String get readerCloudflare => 'Buka di browser (pemeriksaan Cloudflare)';

  @override
  String get badgeBoardHint =>
      'Seret lencana ke sudut kartu pertama, atau seret lencana yang sudah ada di kartu tersebut untuk memindahkannya. Lencana bertukar tempat, sehingga tidak ada yang tumpang tindih. Ketuk lencana di bawah untuk mengaktifkan atau menonaktifkannya.';

  @override
  String get statusAuto => 'Otomatis';

  @override
  String get unreadCounter => 'Penghitung yang belum dibaca';

  @override
  String get unreadCounterDesc =>
      'Tunjukkan berapa banyak episode atau bab yang tersisa di poster';

  @override
  String get settingsShortcuts => 'Pintasan keyboard';

  @override
  String get settingsShortcutsDesc => 'Lihat, ubah dan matikan setiap tombol';

  @override
  String get shortcutGroupApp => 'Aplikasi';

  @override
  String get shortcutGroupPlayer => 'Pemutar video';

  @override
  String get shortcutGroupReader => 'Pembaca';

  @override
  String get shortcutsEnableApp => 'Pintasan aplikasi';

  @override
  String get shortcutsEnablePlayer => 'Pintasan pemain';

  @override
  String get shortcutsEnableReader => 'Pintasan pembaca';

  @override
  String get shortcutsEnableDesc =>
      'Aktifkan atau nonaktifkan setiap kunci di grup ini';

  @override
  String get shortcutNotSet => 'Tidak disetel';

  @override
  String get shortcutAddKey => 'Tambahkan kunci';

  @override
  String get shortcutResetOne => 'Atur ulang ke default';

  @override
  String get shortcutClearKeys => 'Hapus semua kunci';

  @override
  String get shortcutResetAll => 'Setel ulang semua pintasan';

  @override
  String get shortcutResetAllDesc => 'Kembalikan setiap kunci ke defaultnya';

  @override
  String get shortcutPress => 'Tekan tombol atau kombinasi yang Anda inginkan';

  @override
  String get shortcutPressHint =>
      'Setiap kombinasi hanya dapat dimiliki oleh satu tindakan, jadi mengambil satu tindakan akan memindahkannya.';

  @override
  String get shortcutSeekPercent => 'Lompat ke satu titik di video';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Kembali';

  @override
  String get shortcutAppFullscreen => 'Beralih ke layar penuh';

  @override
  String get shortcutAppGlass => 'Alihkan mode kaca';

  @override
  String get shortcutAppMaterialYou => 'Alihkan Materi Anda';

  @override
  String get shortcutAppDark => 'Alihkan mode gelap';

  @override
  String get shortcutAppOled => 'Alihkan OLED menjadi hitam';

  @override
  String get shortcutAppSearch => 'Buka pencarian';

  @override
  String get shortcutAppSettings => 'Buka pengaturan';

  @override
  String get shortcutAppDownloads => 'Buka unduhan';

  @override
  String get shortcutAppNotifications => 'Buka notifikasi';

  @override
  String get shortcutAppIncognito => 'Alihkan penyamaran';

  @override
  String get shortcutAppShortcuts => 'Tampilkan pintasan keyboard';

  @override
  String get shortcutPlayerPlayPause => 'Putar atau jeda';

  @override
  String get shortcutPlayerSeekForward => 'Carilah ke depan';

  @override
  String get shortcutPlayerSeekBack => 'Carilah kembali';

  @override
  String get shortcutPlayerSeekForwardLong => 'Maju 30 detik';

  @override
  String get shortcutPlayerSeekBackLong => 'Carilah kembali 30 detik';

  @override
  String get shortcutPlayerFrameForward => 'Bingkai berikutnya';

  @override
  String get shortcutPlayerFrameBack => 'Bingkai sebelumnya';

  @override
  String get shortcutPlayerVolumeUp => 'Naikkan volume';

  @override
  String get shortcutPlayerVolumeDown => 'Volume turun';

  @override
  String get shortcutPlayerMute => 'Bisu';

  @override
  String get shortcutPlayerFullscreen => 'Layar penuh';

  @override
  String get shortcutPlayerNext => 'Episode berikutnya';

  @override
  String get shortcutPlayerPrevious => 'Episode sebelumnya';

  @override
  String get shortcutPlayerSkip => 'Lewati intro atau akhir';

  @override
  String get shortcutPlayerPanel => 'Daftar episode';

  @override
  String get shortcutPlayerSpeedUp => 'Pemutaran lebih cepat';

  @override
  String get shortcutPlayerSpeedDown => 'Pemutaran lebih lambat';

  @override
  String get shortcutPlayerSpeedReset => 'Kecepatan biasa';

  @override
  String get shortcutPlayerSubtitleToggle => 'Subtitle aktif atau nonaktif';

  @override
  String get shortcutPlayerSubtitleCycle => 'Lagu subtitle berikutnya';

  @override
  String get shortcutPlayerAudioCycle => 'Trek audio berikutnya';

  @override
  String get shortcutPlayerStreamCycle => 'Aliran selanjutnya';

  @override
  String get shortcutPlayerFit => 'Ubah kecocokan video';

  @override
  String get shortcutReaderRight => 'Halaman ke kanan';

  @override
  String get shortcutReaderLeft => 'Halaman ke kiri';

  @override
  String get shortcutReaderNextPage => 'Halaman selanjutnya';

  @override
  String get shortcutReaderPreviousPage => 'Halaman sebelumnya';

  @override
  String get shortcutReaderControls => 'Tampilkan atau sembunyikan kontrol';

  @override
  String get shortcutReaderNextChapter => 'Bab berikutnya';

  @override
  String get shortcutReaderPreviousChapter => 'Bab sebelumnya';

  @override
  String shortcutTaken(String action) {
    return 'Diambil dari $action';
  }

  @override
  String get incognitoTurnedOn => 'Mode penyamaran aktif';

  @override
  String get incognitoTurnedOff => 'Mode penyamaran nonaktif';

  @override
  String get onHoldAnime => 'Ditahan anime';

  @override
  String get onHoldManga => 'Ditahan manga';

  @override
  String get droppedAnime => 'Anime yang dijatuhkan';

  @override
  String get droppedManga => 'Manga yang dijatuhkan';

  @override
  String get generalSectionDesktop => 'Desktop';

  @override
  String get closeAction => 'Saat jendela ditutup';

  @override
  String get closeActionQuit => 'Keluar dari aplikasi';

  @override
  String get closeActionWhenBusy =>
      'Terus berjalan di baki saat sesuatu sedang berjalan';

  @override
  String get closeActionAlways => 'Selalu terus berjalan di baki';

  @override
  String get closeActionNoTray =>
      'Baki sistem tidak tersedia di sini, sehingga aplikasi akan berhenti ketika ditutup';

  @override
  String get gamepadNav => 'Navigasi papan permainan';

  @override
  String get gamepadNavDesc =>
      'Bergerak di sekitar aplikasi dan kendalikan pemain dengan pengontrol game';

  @override
  String get trayShow => 'Tunjukkan Dartotsu';

  @override
  String get trayQuit => 'Berhenti';

  @override
  String get trayIdle => 'Tidak ada yang berjalan';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mengunduh item $count',
      one: 'Mengunduh item $count',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Menyinkronkan daftar Anda';

  @override
  String get trayUpdating => 'Memperbarui aplikasi';

  @override
  String get trayPlaying => 'Bermain di jendela kecil';

  @override
  String get traySearch => 'Cari';

  @override
  String get trayPauseDownloads => 'Jeda unduhan';

  @override
  String get trayResumeDownloads => 'Lanjutkan pengunduhan';

  @override
  String get playerDownloadTitle => 'Mengunduh pemutar';

  @override
  String get playerDownloadBody =>
      'Dartotsu mengambil mesin videonya satu kali. Pemutaran dimulai segera setelah siap.';

  @override
  String get playerDownloadStarting => 'Memulai pengunduhan…';

  @override
  String get playerDownloadFailedTitle => 'Tidak bisa mendapatkan pemainnya';

  @override
  String get playerDownloadFailedBody =>
      'Periksa koneksi Anda dan coba lagi. Pengunduhan dilanjutkan di tempat berhentinya.';

  @override
  String get playerDownloadRetry => 'Coba lagi';

  @override
  String get playerDownloadCopy => 'Salin detailnya';

  @override
  String get removePlayerTitle => 'Hapus pemutarnya?';

  @override
  String get removePlayerMessage =>
      'Video tidak dapat diputar hingga pemutar diunduh lagi.';

  @override
  String get trailerLoading => 'Memuat cuplikan…';

  @override
  String get trailerFailed =>
      'Tidak dapat memutar cuplikan di sini saat membukanya di browser';
}
