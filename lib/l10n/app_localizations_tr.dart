// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Anime ve Manga Takibi İçin\nYENİ En İyi Uygulama';

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
  String get login => 'Giriş Yap';

  @override
  String loginTo(String service) {
    return '$service\'ye Giriş Yap';
  }

  @override
  String logout(String type) {
    return 'Çıkış Yap $type';
  }

  @override
  String get confirmLogout => 'Çıkış yapmak istediğinizden emin misiniz?';

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
  String get ln => 'Light Novel';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get search => 'Ara';

  @override
  String get calendar => 'Takvim';

  @override
  String get settings => 'Ayarlar';

  @override
  String get watch => 'İzle';

  @override
  String get read => 'Oku';

  @override
  String get info => 'Bilgi';

  @override
  String get comments => 'Yorumlar';

  @override
  String get addToList => 'Listeye Ekle';

  @override
  String get series => 'Seri';

  @override
  String get season => 'Sezon';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kısımlar',
      one: 'Bölüm',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bölümler',
      one: 'Bölüm',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ciltler',
      one: 'Cilt',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filmler',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Kısımlar';

  @override
  String get totalChapters => 'Bölümler';

  @override
  String get genres => 'Türler';

  @override
  String get scanlators => 'Çevirmenler';

  @override
  String list(String type) {
    return '$type Listesi';
  }

  @override
  String get watching => 'İzleniyor';

  @override
  String get reading => 'Okuyor';

  @override
  String get readStatus => 'Oku';

  @override
  String get watchStatus => 'İzledim';

  @override
  String planned(String type) {
    return 'Planlanan $type';
  }

  @override
  String onHold(String type) {
    return 'Beklemede $type';
  }

  @override
  String get droppedAnime => 'Bırakılan Anime';

  @override
  String get droppedManga => 'Bırakılan Manga';

  @override
  String noDropped(String type) {
    return 'Henüz herhangi bir $type bırakmadınız.';
  }

  @override
  String get continueReading => 'Okumaya Devam Et';

  @override
  String get continueWatching => 'İzlemeye Devam Et';

  @override
  String browse(String type) {
    return '$type\'e Gözat';
  }

  @override
  String trending(String type) {
    return 'Trend $type';
  }

  @override
  String popular(String type) {
    return 'Popüler $type';
  }

  @override
  String get topAiring => 'En İyi Yayınlanan';

  @override
  String topRated(String type) {
    return 'En Yüksek Puanlı $type';
  }

  @override
  String mostFavourite(String type) {
    return 'En Favori $type';
  }

  @override
  String get thisSeason => 'Bu Sezon';

  @override
  String get nextSeason => 'Gelecek Sezon';

  @override
  String get previousSeason => 'Önceki Sezon';

  @override
  String get recommended => 'Tavsiye Edilen';

  @override
  String get recommendationsEmptyMessage =>
      'Tavsiyeler almak için biraz Anime veya Manga izleyin/okuyun';

  @override
  String get recentUpdates => 'Son Güncellemeler';

  @override
  String get allCaughtUpNew => 'Her şey tamamlandı, yeni ne var?';

  @override
  String favorite(String type) {
    return 'Favori $type';
  }

  @override
  String get favorites => 'Favoriler';

  @override
  String get noFavourites =>
      'Görünüşe göre hiç bir şeyi beğenmediniz,\nBurada tutmak için bir seri beğenmeyi deneyin.';

  @override
  String get noOnHold => 'Görünüşe göre hiçbir şeyi beklemede tutmamışsınız.';

  @override
  String manageLayout(String service, String page) {
    return '$service için $page sayfasının düzenini yönet';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page sayfasının düzenini sürükleyip bırakarak yönetebilirsiniz';
  }

  @override
  String get gridView => 'Izgara Görünümü';

  @override
  String get listView => 'Liste Görünümü';

  @override
  String get compactView => 'Kompakt Görünüm';

  @override
  String get layout => 'Düzen';

  @override
  String get sort => 'Sırala';

  @override
  String get utd => 'Yukarıdan Aşağıya';

  @override
  String get dtu => 'Aşağıdan Yukarıya';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'İzlenen Bölüm';

  @override
  String get chapterRead => 'Okunan Bölüm';

  @override
  String get outOf => 'şu kadardan';

  @override
  String get totalOf => 'Toplamı';

  @override
  String get selected => 'Seçili';

  @override
  String get found => 'Bulundu';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eklentiler',
      one: 'Eklenti',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Mevcut $type';
  }

  @override
  String installed(String type) {
    return 'Yüklenmiş $type';
  }

  @override
  String get extensionsDescription =>
      'Ek işlevsellik için eklentileri yükleyin ve yönetin';

  @override
  String get addAnimeRepo => 'Anime Repo\'su Ekle';

  @override
  String get addAnimeRepoDesc => 'Çeşitli kaynaklardan Anime Repo\'su ekleyin';

  @override
  String get addMangaRepo => 'Manga Repo\'su Ekle';

  @override
  String get addMangaRepoDesc => 'Çeşitli kaynaklardan Manga Repo\'su ekleyin';

  @override
  String get addNovelRepo => 'Novel Depo\'su Ekle';

  @override
  String get addNovelRepoDesc => 'Çeşitli kaynaklardan Novel Repo\'su ekleyin';

  @override
  String get loadExtensionsIcon => 'Eklenti Simgelerini Yükle';

  @override
  String get loadExtensionsIconDesc => 'Eklentiler sayfası kasıyorsa kapatın';

  @override
  String get autoUpdate => 'Otomatik Güncelleme';

  @override
  String get autoUpdateDesc => 'Eklentileri Otomatik Güncelle';

  @override
  String get installSourceToStart =>
      'Başlamak için Eklentiler sayfasından bir eklenti yükleyin';

  @override
  String get author => 'Yazar';

  @override
  String get averageDuration => 'Ortalama Süre';

  @override
  String get characters => 'Karakterler';

  @override
  String get description => 'Özet';

  @override
  String get synopsis => 'Özet';

  @override
  String get endDate => 'Bitiş Tarihi';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Ortalama Puan';

  @override
  String get name => 'Ad';

  @override
  String get nameRomaji => 'Ad (Romaji)';

  @override
  String get popularity => 'Popülerlik';

  @override
  String get relations => 'İlişkiler';

  @override
  String get prequel => 'Önceki';

  @override
  String get sequel => 'Sonraki';

  @override
  String get source => 'Kaynak';

  @override
  String get staff => 'Ekip';

  @override
  String get startDate => 'Başlangıç Tarihi';

  @override
  String get status => 'Durum';

  @override
  String get studio => 'Stüdyo';

  @override
  String get synonyms => 'Eşanlamlılar';

  @override
  String get tags => 'Etiketler';

  @override
  String get total => 'Toplam';

  @override
  String get collapseText => 'daha az göster';

  @override
  String get expandText => 'daha fazla göster';

  @override
  String get comingSoon => 'Yakında Geliyor';

  @override
  String get wrongTitle => 'Yanlış Başlık?';

  @override
  String get youTube => 'YouTube\'da oynayın?';

  @override
  String get mediaNotFound => 'Medya bulunamadı';

  @override
  String get noChapterFound => 'Hiçbir bölüm bulunamadı';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktiviteler',
      one: 'Aktivite',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Dil';

  @override
  String get account => 'Hesap';

  @override
  String get accountDescription =>
      'AniList, MAL ve Discord hesaplarınızı kolayca yönetin';

  @override
  String get common => 'Genel';

  @override
  String get commonDescription =>
      'Kesintisiz uygulama kullanımı için genel ayarlara erişin';

  @override
  String get animeDescription =>
      'Anime tercihlerinizi kişiselleştirin ve yönetin';

  @override
  String get mangaDescription =>
      'Manga deneyiminizi organize edin ve özelleştirin';

  @override
  String get about => 'Hakkında';

  @override
  String get aboutDescription =>
      'Uygulama ve geliştiricileri hakkında daha fazla bilgi edinin';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get notificationsDescription =>
      'Bildirimleri nasıl ve ne zaman alacağınızı yapılandırın';

  @override
  String get offlineMode => 'Çevrimdışı Mod';

  @override
  String get offlineModeDescription =>
      'Uygulamayı internet bağlantısı olmadan kullanın';

  @override
  String get incognitoMode => 'Gizli Mod';

  @override
  String get incognitoModeDescription => 'Etkinliğinizi kaydetmeden göz atın';

  @override
  String get hidePrivate => 'Özelleri Gizle';

  @override
  String get hidePrivateDescription => 'Anasayfada özel serileri gizle.';

  @override
  String get hiddenMedia => 'Gizli Medya';

  @override
  String get noHiddenMediaFound => 'Gizli medya bulunamadı';

  @override
  String get playerSettingsTitle => 'Oynatıcı Ayarları';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Hız';

  @override
  String get speedDescription => 'Oynatıcı için varsayılan hız';

  @override
  String get cursedSpeed => 'Hızlı Mod';

  @override
  String get cursedSpeedDescription => 'Hayatı fazla yoğun olanlar için';

  @override
  String get resizeMode => 'Boyutlandırma Modu';

  @override
  String get resizeModeDescription =>
      'Oynatıcı için varsayılan boyutlandırma modu';

  @override
  String get skipButton => 'Atla Düğmesi';

  @override
  String get skipButtonDescription => 'Atla düğmesi süresi';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Altyazılar';

  @override
  String get showSubtitles => 'Altyazıları Göster';

  @override
  String get showSubtitlesDescription => 'Varsayılan olarak altyazıları göster';

  @override
  String get subtitlePreview => 'Altyazı Önizlemesi';

  @override
  String get fontColor => 'Yazı Rengi';

  @override
  String get fontColorDescription => 'Altyazı yazı rengi';

  @override
  String get fontFamily => 'Yazı Tipi';

  @override
  String get fontFamilyDescription => 'Altyazı yazı tipi';

  @override
  String get fontSize => 'Yazı Boyutu';

  @override
  String get fontSizeDescription => 'Altyazı yazı boyutu';

  @override
  String get fontWeight => 'Yazı Kalınlığı';

  @override
  String get fontWeightDescription => 'Altyazı yazı kalınlığı';

  @override
  String get backgroundColor => 'Arka Plan Rengi';

  @override
  String get backgroundColorDescription => 'Altyazı arka plan rengi';

  @override
  String get outlineColor => 'Çerçeve Rengi';

  @override
  String get outlineColorDescription => 'Altyazı çerçeve rengi';

  @override
  String get bottomPadding => 'Alt Boşluk';

  @override
  String get bottomPaddingDescription => 'Altyazı alt boşluğu';

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
      'Uygulamanızın görünümünü ve havasını özelleştirin';

  @override
  String get darkMode => 'Karanlık Mod';

  @override
  String get enableDarkMode => 'Karanlık Modu Etkinleştir';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Duvar kağıdınızla aynı rengi kullanın';

  @override
  String get customTheme => 'Özel Tema';

  @override
  String get customThemeDescription => 'Tema için kendi renginizi kullanın';

  @override
  String get oledThemeVariant => 'OLED Tema Seçeneği';

  @override
  String get oledThemeVariantDescription => 'OLED Modunu Etkinleştir';

  @override
  String get colorPicker => 'Renk Seçici';

  @override
  String get pickColor => 'Bir renk seç';

  @override
  String get colorPickerDescription => 'Bir renk seçin';

  @override
  String get colorPickerDefault => 'Varsayılan olarak';

  @override
  String get colorPickerCustom => 'Özel';

  @override
  String get customPath => 'Özel Yol';

  @override
  String get customPathDescription =>
      'Dosyaları kaydetmek için özel bir yol ayarlayın\nYolu kaldırmak için uzun basın';

  @override
  String get selectDirectory => 'Bir dizi seçin';

  @override
  String get selectMediaService => 'Medya Servisi Seç';

  @override
  String get logFile => 'Log Dosyası';

  @override
  String get logFileDescription => 'Log dosyasını paylaşın';

  @override
  String get restoreSettings => 'Ayarları Geri Yükle';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Web View';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu\'nun Geliştiricisini Desteklemek mi İstiyorsunuz?\nBağış Yapmayı Düşünün';

  @override
  String get donationGoal => 'Şu anda bağış hedefi yok';

  @override
  String get options => 'Seçenekler';

  @override
  String get ok => 'Tamam';

  @override
  String get cancel => 'İptal';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';
}
