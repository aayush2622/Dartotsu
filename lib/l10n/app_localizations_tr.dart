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
  String get appTagline => 'Anime ve manga takibi için\nyeni en iyi uygulama';

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
  String get loadMore => 'Daha fazla yükle';

  @override
  String get login => 'Giriş yap';

  @override
  String get continueAsGuest => 'Misafir olarak devam et';

  @override
  String get getStarted => 'Başla';

  @override
  String get loginWithToken => 'Token ile giriş yap';

  @override
  String get pasteTokenHint => 'Erişim token\'ını yapıştır';

  @override
  String loginTo(String service) {
    return '$service hesabına giriş yap';
  }

  @override
  String get settings => 'Ayarlar';

  @override
  String get account => 'Hesap';

  @override
  String get about => 'Hakkında';

  @override
  String get language => 'Dil';

  @override
  String get animationSpeed => 'Animasyonlar';

  @override
  String get animationSpeedDesc =>
      'Uygulamadaki geçişlerin ve giriş efektlerinin hızı';

  @override
  String get animationSpeedOff => 'Kapalı';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uzantılar',
      one: 'Uzantı',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Bilinmeyen kaynak';

  @override
  String get install => 'Yükle';

  @override
  String get update => 'Güncelle';

  @override
  String get uninstall => 'Kaldır';

  @override
  String get updateInstallCancelled =>
      'Kurulum iptal edildi. Android uygulamanın yüklü olanla çakıştığını söylediyse imza farklıdır: önce mevcut sürümü kaldır, sonra güncellemeyi kur';

  @override
  String updateInstallFailed(String error) {
    return 'Güncelleme başarısız oldu: $error';
  }

  @override
  String get appLock => 'Uygulama kilidi';

  @override
  String get appLockDesc =>
      'Uygulama açılırken ya da bir süre sonra geri dönüldüğünde şifre sor';

  @override
  String get appLockBiometric => 'Biyometri ile kilidi açın';

  @override
  String get appLockBiometricDesc =>
      'Parolayı yazmak yerine parmak izinizi veya yüzünüzü kullanın';

  @override
  String get appLockBiometricReason => 'Dartotsu\'nun kilidini aç';

  @override
  String get appLockDelay => 'Boştayken kilitle';

  @override
  String get appLockDelayAlways => 'Her zaman';

  @override
  String get appLockDelayNever => 'Asla';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dakika',
      one: '1 dakika',
    );
    return 'Sonrasında $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Biyometri kullan';

  @override
  String get appLockUnlock => 'Şifreni gir';

  @override
  String get appLockWrong => 'Şifre yanlış';

  @override
  String appLockWait(String seconds) {
    return 'Çok fazla deneme, $seconds sn bekle';
  }

  @override
  String get appLockNew => 'Bir şifre seç';

  @override
  String get appLockNewHint => '4 ile 8 rakam';

  @override
  String get appLockConfirm => 'Tekrar gir';

  @override
  String get appLockMismatch => 'Şifreler uyuşmuyor';

  @override
  String get appLockOn => 'Şifre ayarlandı';

  @override
  String get appLockRemoveTitle => 'Kilidi kapatmak için şifreni gir';

  @override
  String get installFailed => 'Yükleme başarısız';

  @override
  String get updateFailed => 'Güncelleme başarısız';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count güncellemeler mevcut',
      one: '1 güncelleme mevcut',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Tümünü güncelle';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done / $total uzantıları güncellendi';
  }

  @override
  String get updateConflictTitle => 'Güncelleme yüklenmedi';

  @override
  String updateConflictBody(String names) {
    return '$names mevcut sürümün üzerine yüklenemedi. Bu genellikle yüklenen kopyanın farklı şekilde imzalandığı anlamına gelir. Kaldırıp yeni sürümü yükleyeyim mi?';
  }

  @override
  String get updateConflictAction => 'Kaldırma ve yeniden yükleme';

  @override
  String get noSourceSettings => 'Bu kaynağın ayarı yok';

  @override
  String get addPluginRepository => 'Eklenti deposu ekle';

  @override
  String get pluginIndexUrlHint => 'Eklenti dizini URL\'si';

  @override
  String get addRepository => 'Depo ekle';

  @override
  String get importRepositoryFile => 'Bir dosyayı içe aktar';

  @override
  String get pluginRepoUpdated => 'Eklenti deposu güncellendi';

  @override
  String get pluginRepoUpdateFailed => 'Eklenti deposu yenilenemedi';

  @override
  String get ok => 'Tamam';

  @override
  String get cancel => 'İptal';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get save => 'Kaydet';

  @override
  String get reset => 'Sıfırla';

  @override
  String get clear => 'Temizle';

  @override
  String get test => 'Dene';

  @override
  String get testing => 'Deneniyor…';

  @override
  String get resolving => 'Çözümleniyor…';

  @override
  String get none => 'Yok';

  @override
  String get selectMediaService => 'Medya servisini seç';

  @override
  String get manageServices => 'Medya hizmetleri';

  @override
  String get manageServicesDesc =>
      'Hizmetleri yeniden sıralayın ve seçicide hangilerinin gösterileceğini seçin';

  @override
  String get manageServicesHint =>
      'Yeniden sıralamak için sürükleyin, kullanmadıklarınızı kapatın';

  @override
  String get pickColor => 'Bir renk seç';

  @override
  String get colorPickerCustom => 'Özel';

  @override
  String get colorPickerTransparent => 'Saydam';

  @override
  String get ltr => 'Soldan sağa';

  @override
  String get searchSettings => 'Ayarlarda ara';

  @override
  String nothingMatches(String query) {
    return '\"$query\" ile eşleşen bir şey yok';
  }

  @override
  String searchCategory(String category) {
    return '$category içinde ara';
  }

  @override
  String get settingsAppearance => 'Görünüm';

  @override
  String get settingsAppearanceDesc => 'Tema, renkler, cam modu';

  @override
  String get settingsGeneral => 'Genel';

  @override
  String get settingsGeneralDesc => 'Dil ve davranış';

  @override
  String get settingsNetwork => 'Ağ';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Takip servisi ve giriş';

  @override
  String get settingsUpdates => 'Güncellemeler';

  @override
  String get amoledBlack => 'AMOLED siyahı';

  @override
  String get amoledBlackDesc => 'Karanlık modda tam siyah yüzeyler';

  @override
  String get glassMode => 'Cam modu';

  @override
  String get glassModeDesc => 'Kütüphane görsellerinin üzerinde buzlu yüzeyler';

  @override
  String get shelfFrame => 'Bölümlerin çerçevesi';

  @override
  String get shelfFrameDesc =>
      'Her rafın arkasında kart göster ya da satırları doğrudan sayfaya koy';

  @override
  String get settingsExtensionsDesc =>
      'Kaynak yöneticileri, depolar ve uzantı seçenekleri';

  @override
  String get settingsAddons => 'Eklentiler';

  @override
  String get customPath => 'Özel depolama yolu';

  @override
  String get stories => 'Hikayeler';

  @override
  String get watchOrder => 'Siparişi izle';

  @override
  String get watchOrderOpenSite => 'chiaki.site\'de aç';

  @override
  String get watchOrderUnavailable => 'Bu başlık için izleme sırası bulunamadı';

  @override
  String get watchOrderOpenFailed => 'Bu başlık açılamadı';

  @override
  String get watchOrderCurrent => 'You are here';

  @override
  String get watchOrderCredit =>
      'chiaki.site tarafından verilen siparişleri izleyin';

  @override
  String get customPathDesc =>
      'Uygulama verilerinin tutulduğu yer. Sıfırlamak için uzun bas';

  @override
  String get selectDirectory => 'Klasör seç';

  @override
  String get differentCacheManager => 'Alternatif görsel önbelleği';

  @override
  String get differentCacheManagerDesc =>
      'Görseller için farklı bir önbellek yöneticisi kullan';

  @override
  String get settingsSync => 'Ayarları senkronize et';

  @override
  String get settingsSyncDesc =>
      'Ayarlarınızı her cihazda aynı tutun. GitHub hesabınızdaki özel bir özette saklanırlar';

  @override
  String get settingsSyncSwitch => 'Değişiklik üzerine senkronizasyon';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'GitHub\'la oturum açın';

  @override
  String get settingsSyncSignInDesc =>
      'Ayarlar, hesabınızdaki özel bir özette saklanır';

  @override
  String get settingsSyncToken => 'Kişisel erişim belirteci kullanın';

  @override
  String get settingsSyncTokenDesc =>
      'github.com/settings/tokens adresinde yalnızca temel izinle bir tane oluşturun';

  @override
  String get settingsSyncTokenField => 'Jeton';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user olarak oturum açıldı';
  }

  @override
  String get settingsSyncSignOut => 'Oturumu kapat';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub\'a $code girin';
  }

  @override
  String get settingsSyncCodeDesc =>
      'GitHub sayfası tarayıcınızda açıldı. Kodu kopyalamak için dokunun veya iptal etmek için dokunup basılı tutun.';

  @override
  String get settingsSyncSignInFailed => 'GitHub\'ta oturum açılamadı';

  @override
  String get dcPreview => 'Önizleme';

  @override
  String get dcSampleWatching => 'izliyorum';

  @override
  String get dcSampleReading => 'Okuma';

  @override
  String get dcSampleBrowsing => 'Göz atılıyor';

  @override
  String get dcSampleLive => 'Şu anda';

  @override
  String get dcLiveNothing =>
      'Şu anda hiçbir şey görünmüyor. Bir başlık açın, bir bölüm veya bölüm başlatın; burada görünecektir.';

  @override
  String get dcMemberList => 'Üye listesinde';

  @override
  String get dcAccount => 'Hesap';

  @override
  String get dcSignIn => 'Discord\'la oturum aç';

  @override
  String get dcSignOut => 'Oturumu kapat';

  @override
  String get dcDesktopHint =>
      'Discord, bağlanmadan masaüstü uygulaması aracılığıyla \"Dartotsu İzleniyor\" ifadesini gösteriyor. Etkinliğe başlığınızın adını vermek için (cep telefonu da dahil) Discord\'u bağlayın.';

  @override
  String get dcMobileHint =>
      'Ne izlediğinizi veya okuduğunuzu göstermek için Discord\'u bağlayın. Hesap jetonunuzu değil Discord\'un yetkilendirme sayfasını kullanır.';

  @override
  String get dcConnect => 'Discord\'u Bağla';

  @override
  String get dcConnectDesc =>
      'Discord\'un yetkilendirme sayfasını açar ve Yetkili Uygulamalar altına Dartotsu\'yu ekler. Discord, varlığınızı güncellemenizi ister. Hesap jetonunuz değil, yalnızca bir yenileme jetonu kaydedilir.';

  @override
  String get dcConnectFailed => 'Discord\'a bağlanılamadı';

  @override
  String get dcConnectedSnack => 'Discord bağlandı';

  @override
  String get dcDisconnect => 'Bağlantıyı kes';

  @override
  String get dcDisconnectedSnack => 'Discord bağlantısı kesildi';

  @override
  String get dcUseToken => 'Bunun yerine jeton kullanın';

  @override
  String get dcRouteDesktop => 'Discord masaüstü uygulaması aracılığıyla';

  @override
  String get dcRouteHeadless => 'Hesabınız aracılığıyla';

  @override
  String get dcRouteGateway => 'Hesabınız aracılığıyla canlı';

  @override
  String get dcRouteLinked => 'Bağlı uygulama';

  @override
  String get dcRouteNone => 'Bağlı değil';

  @override
  String get dcStatusNeedsToken =>
      'Discord tokenına ihtiyacı var. Uygulamayı bağlamak çevrimiçi durumunuzu ayarlamaz.';

  @override
  String get dcAccountOnly => 'Oturum açılmış bir hesaba ihtiyaç var';

  @override
  String get dcStatusSection => 'Durum';

  @override
  String get dcControlStatus => 'Durumumu kontrol et';

  @override
  String get dcControlStatusDesc =>
      'Rich Presence açıkken Discord\'la canlı bağlantıyı sürdürür, böylece Dartotsu durumunuzu ayarlayabilir.';

  @override
  String get dcStatusOnline => 'Çevrimiçi';

  @override
  String get dcStatusIdle => 'Boşta';

  @override
  String get dcStatusDnd => 'Rahatsız etmeyin';

  @override
  String get dcStatusInvisible => 'Görünmez';

  @override
  String get dcCustomStatus => 'Özel durum';

  @override
  String get dcCustomStatusHint => 'Ne yapıyorsun?';

  @override
  String get dcActivitySection => 'Etkinlik';

  @override
  String get dcShowWatching => 'İzlerken göster';

  @override
  String get dcShowReading => 'Okurken göster';

  @override
  String get dcListening => 'Dinleme';

  @override
  String get dcCompeting => 'Rekabet';

  @override
  String get dcActivityName => 'Etkinlik adı';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Başlık';

  @override
  String get dcNameCustom => 'Özel';

  @override
  String get dcCustomNameHint => '“İzleniyor”dan sonra gösterilen ad';

  @override
  String get dcStatusText => 'Durum metni';

  @override
  String get dcStatusTextDesc => 'Üye listesi adınızın yanında ne gösterir?';

  @override
  String get dcDisplayName => 'İsim';

  @override
  String get dcDisplayState => 'Eyalet';

  @override
  String get dcDisplayDetails => 'Ayrıntılar';

  @override
  String get dcTextSection => 'Metin';

  @override
  String get dcDetails => 'En üst satır';

  @override
  String get dcState => 'Sonuç olarak';

  @override
  String get dcTemplateHint => 'Boş varsayılanı kullanır';

  @override
  String get dcVariables => 'Değer eklemek için dokunun';

  @override
  String get dcImagesSection => 'Görseller';

  @override
  String get dcLargeImage => 'Büyük resim';

  @override
  String get dcLargeAuto => 'Otomatik';

  @override
  String get dcLargeCover => 'Kapak';

  @override
  String get dcLargeLogo => 'logo';

  @override
  String get dcSmallImage => 'Küçük resim';

  @override
  String get dcSmallAuto => 'logo';

  @override
  String get dcSmallNone => 'Yok';

  @override
  String get dcTimerStyle => 'Zamanlayıcı stili';

  @override
  String get dcTimerAuto => 'Otomatik';

  @override
  String get dcTimerElapsed => 'Geçen';

  @override
  String get dcTimerRemaining => 'Kalan';

  @override
  String get dcButtonsSection => 'Düğmeler';

  @override
  String get dcButtonMedia => 'Başlığa bağlantı';

  @override
  String get dcButtonApp => 'Dartotsu\'ya bağlantı';

  @override
  String get dcButtonCustom => 'Özel düğme';

  @override
  String get dcButtonLabel => 'Etiket';

  @override
  String get dcButtonUrl => 'Bağlantı';

  @override
  String get dcPrivacySection => 'Gizlilik';

  @override
  String get dcPrivateText => 'Özel metin';

  @override
  String get dcPrivateHint => 'Özel bir şey';

  @override
  String get dcTokenWarning =>
      'Oturum açmak, hesap belirtecinizi kullanır. Discord\'un kuralları bunu caydırıyor, bu yüzden riski size ait olmak üzere kullanın.';

  @override
  String get dcConnected => 'Bağlı';

  @override
  String get dcConnection => 'Bağlantı';

  @override
  String get dcMethodDesktop => 'Discord masaüstü uygulaması';

  @override
  String get dcMethodDesktopDesc =>
      'Başka hiçbir şey bağlı olmadığında otomatik olarak kullanılır. Discord\'un bu bilgisayarda açık olması gerekiyor.';

  @override
  String get dcMethodToken => 'Hesap jetonu';

  @override
  String get dcInUse => 'Kullanımda';

  @override
  String get dcRecommended => 'Önerilen';

  @override
  String get dcConnecting => 'Bağlanıyor…';

  @override
  String get dcDisconnected => 'Bağlı değil';

  @override
  String dcSignedInAs(String name) {
    return '$name olarak oturum açıldı';
  }

  @override
  String get settingsSyncOn => 'Açık';

  @override
  String get settingsSyncCustom => 'Özel';

  @override
  String get settingsSyncChangedHeader => 'Değiştirilen ayarlar';

  @override
  String get settingsSyncNoneChanged =>
      'Henüz bunların hiçbirini değiştirmediğiniz için senkronize edilecek bir şey yok.';

  @override
  String get settingsSyncChangedOnly =>
      'Yalnızca değiştirdiğiniz ayarlar kaydedilir. Diğer her şey, her cihazda varsayılan değerini kullanır. Bulut simgesi sunucuda zaten ne olduğunu gösterir.';

  @override
  String get settingsSyncOffCategory =>
      'Senkronize edilmiyor. Bunlar bu cihazda kalır ve sunucu kopyası olduğu gibi kalır.';

  @override
  String get settingsSyncPartsNote =>
      'Cihaz başına. Kapalı her cihazın kendi değerini korur; böylece telefon ve TV farklı olabilir.';

  @override
  String get settingsSyncPartSubtitles => 'Altyazı boyutu ve renkleri';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Boyut, ağırlık, renkler ve konum';

  @override
  String get settingsSyncPartPictureColors => 'Resim renkleri';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Parlaklık, kontrast, doygunluk, gama, renk tonu ve HDR';

  @override
  String get settingsSyncPartPalette => 'Tema renkleri';

  @override
  String get settingsSyncPartPaletteDesc => 'Tema, vurgu rengi ve OLED siyah';

  @override
  String get settingsSyncCatOther => 'İzleme, okuma ve hizmetler';

  @override
  String get settingsSyncTitles => 'İlerlemeyi ve başlıkları izleyin';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return 'Sunucudaki $records başlıkları ve $resume özgeçmiş girişleri';
  }

  @override
  String get settingsSyncTitlesNone => 'Henüz hiçbir şey yüklenmedi';

  @override
  String get settingsSyncTitlesNote =>
      'Pozisyonları, özgeçmiş rafını, yerel listelerinizi, yer imlerinizi, öne çıkanları ve başlığa göre seçenekleri izleyin ve okuyun. Kaynak eşleşmeleri ve akışlar, uzantılarınıza bağlı olduğundan her cihazda kalır. Başlıklar en fazla 45 saniyede bir yüklenir.';

  @override
  String get settingsSyncConnect => 'Bağlı değil';

  @override
  String get settingsSyncConnectDesc =>
      'Ayarlarınızın her cihazda aynı kalmasını sağlamak için GitHub ile oturum açın.';

  @override
  String get settingsSyncFailedTitle => 'Senkronizasyon başarısız oldu';

  @override
  String get settingsSyncPaused => 'Duraklatıldı';

  @override
  String get settingsSyncPausedDesc =>
      'Bu kapalıyken hiçbir şey yüklenmez veya indirilmez.';

  @override
  String get settingsSyncUpToDate => 'güncel';

  @override
  String get settingsSyncRetry => 'Yeniden dene';

  @override
  String get settingsSyncAccount => 'GitHub hesabı';

  @override
  String get settingsSyncAccountDesc =>
      'Verileriniz kendi hesabınızdaki özel bir özete gider.';

  @override
  String get settingsSyncWaiting => 'GitHub\'da onaylamanızı bekliyorum';

  @override
  String get settingsSyncCopyCode => 'Kopyalamak için koda dokunun';

  @override
  String get settingsSyncCancel => 'İptal';

  @override
  String get settingsSyncStatSettings => 'Ayarlar';

  @override
  String get settingsSyncStatTitles => 'Başlıklar';

  @override
  String get settingsSyncStatShelf => 'Devam et';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$time, $device\'den yüklendi';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count değiştirildi',
      one: '1 değiştirildi',
      zero: 'Henüz hiçbir şey değişmedi',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Hesaplar ve şifreler';

  @override
  String get settingsSyncSecretsDesc =>
      'Oturum açma işlemlerinizi (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API anahtarlarını ve uygulama kilidini cihazlarınız arasında senkronize edin. Cihazlarınızda kalacak bir parola ile şifrelenirler, dolayısıyla GitHub bunları asla görmez.';

  @override
  String get settingsSyncSecretsOn =>
      'Hesaplar senkronize edilir ve şifrelenir';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Bir cihazda oturumunuzu kapatmak, diğer cihazlarda oturumunuzu kapatmanıza neden olmaz.';

  @override
  String get settingsSyncSecretsBroken =>
      'Parola artık sunucudaki parolayla eşleşmiyor. Hesapları senkronize etmeye devam etmek için tekrar girin.';

  @override
  String get settingsSyncPassphraseSet => 'Bir parola belirleyin';

  @override
  String get settingsSyncPassphraseEnter => 'Parolanızı girin';

  @override
  String get settingsSyncPassphraseField => 'Parola';

  @override
  String get settingsSyncPassphraseConfirm => 'Parolayı tekrarlayın';

  @override
  String get settingsSyncPassphraseNew =>
      'En az 6 karakterden oluşan bir parola seçin. Cihazlarınız dışında hiçbir yerde saklanmaz ve kurtarılamaz. Unutursanız sunucu kopyasını silin ve yeniden başlayın.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Diğer cihazınızda seçtiğiniz parolayı girin. Bu cihazdaki hesaplar senkronize edilen hesaplarla değiştirilecek.';

  @override
  String get settingsSyncPassphraseWrong => 'Yanlış parola';

  @override
  String get settingsSyncPassphraseMismatch => 'Parolalar eşleşmiyor';

  @override
  String get settingsSyncPassphraseShort => 'En az 6 karakter kullanın';

  @override
  String get settingsSyncSecretsStop => 'Hesapları senkronize etmeyi durdur';

  @override
  String get settingsSyncSecretsDelete => 'GitHub\'dan sil';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Bu, şifrelenmiş hesaplar dosyasını özetinizden kaldırır. Diğer cihazlar oturum açma bilgilerini korur ve yeni bir parola belirleyebilir.';

  @override
  String get settingsSyncWhat => 'Ne senkronize edilmeli';

  @override
  String get settingsSyncServer => 'Sunucuda';

  @override
  String get settingsSyncServerEmpty => 'Henüz hiçbir şey yüklenmedi';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count ayarları, $time\'den $device\'ye yüklendi';
  }

  @override
  String get settingsSyncThisDevice => 'bu cihaz';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sunucudaki $count ayarları',
      one: 'Sunucuda 1 ayar',
      zero: 'Sunucuda hiçbir şey yok',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Şimdi senkronize et';

  @override
  String get settingsSyncRunning => 'Senkronize ediliyor…';

  @override
  String get settingsSyncNever => 'Henüz senkronize edilmedi';

  @override
  String settingsSyncLast(Object time) {
    return 'Son senkronizasyon $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Senkronizasyon başarısız oldu: $error';
  }

  @override
  String get settingsSyncScope =>
      'Yalnızca her yerde aynı şekilde çalışan ayarlar senkronize edilir. Hesaplar, jetonlar, klasörler, uzantılar, bildirimler, Discord, güncellemeler ve pencere boyutu her cihazda kalır.';

  @override
  String get backupAndRestore => 'Yedekle ve geri yükle';

  @override
  String get backupAndRestoreDesc => 'Tercihlerini kaydet ya da geri yükle';

  @override
  String get backup => 'Yedek';

  @override
  String get restore => 'Geri yükle';

  @override
  String get loadExtensionsIcon => 'Uzantı simgelerini yükle';

  @override
  String get autoUpdateRuntimes =>
      'Uzantı çalışma zamanlarını otomatik olarak güncelle';

  @override
  String get autoUpdateRuntimesDesc =>
      'Arka planda yeni Aniyomi, CloudStream ve diğer çalışma zamanı sürümlerini indirin. Kapalıysa bunun yerine yöneticinin yanında bir güncelleme simgesi görünür.';

  @override
  String get loadExtensionsIconDesc =>
      'Uzantı listelerinde kaynak simgelerini göster';

  @override
  String get sectionStorage => 'Depolama';

  @override
  String get sectionManagers => 'Yöneticiler';

  @override
  String get sectionOptions => 'Seçenekler';

  @override
  String get backupTabBackup => 'Yedekle';

  @override
  String get backupTabRestore => 'Geri yükle';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories kategoride $keys ayar';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Son yedek: $time';
  }

  @override
  String get backupNever => 'Henüz yedek yok';

  @override
  String get backupSelectAll => 'Hepsini seç';

  @override
  String get backupClearAll => 'Temizle';

  @override
  String backupKeys(Object count) {
    return '$count ayar';
  }

  @override
  String get backupPasswordRequired => 'Şifre (hesap verileri için gereklidir)';

  @override
  String get backupProtectedNeedsPassword =>
      'Hesap verilerini yedeklemek için bir şifre belirleyin veya şifrenin işaretini kaldırın';

  @override
  String get backupProtectedSkipped =>
      'Bu yedeklemenin şifresi olmadığından hesap verileri atlandı';

  @override
  String get backupPassword => 'Parola (isteğe bağlı)';

  @override
  String get backupPasswordHint => 'Varsayılanı kullanmak için boş bırak';

  @override
  String get backupSensitive =>
      'Giriş token\'larını içerir. Bu dosyayı gizli tut';

  @override
  String get backupCreate => 'Yedek oluştur';

  @override
  String backupSaved(Object name) {
    return 'Yedek $name dosyasına kaydedildi';
  }

  @override
  String backupFailed(Object error) {
    return 'Yedekleme başarısız: $error';
  }

  @override
  String get backupPickFile => 'Bir yedek dosyası seç';

  @override
  String get backupPickFileDesc =>
      'Dartotsu\'nun oluşturduğu bir .json dosyası seç';

  @override
  String get backupChooseAnother => 'Başka dosya seç';

  @override
  String get backupCreatedAt => 'Oluşturulma';

  @override
  String get backupAppVersion => 'Uygulama sürümü';

  @override
  String get backupDevice => 'Cihaz';

  @override
  String get backupAccounts => 'Hesaplar';

  @override
  String get backupSize => 'Boyut';

  @override
  String get backupEncrypted => 'Parola korumalı';

  @override
  String get backupUnlock => 'Kilidi aç';

  @override
  String get backupWrongPassword => 'Bu dosya okunamadı. Parolayı kontrol et';

  @override
  String get backupRestoreSelected => 'Seçilenleri geri yükle';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count ayar geri yüklensin mi? Bu kategorilerdeki mevcut değerlerin üzerine yazılır.';
  }

  @override
  String get backupRestored =>
      'Geri yüklendi. Her şeyin uygulanması için uygulamayı yeniden başlat';

  @override
  String backupRestoreFailed(Object error) {
    return 'Geri yükleme başarısız: $error';
  }

  @override
  String get backupSelectOne => 'En az bir kategori seç';

  @override
  String get backupCatTheme => 'Görünüm';

  @override
  String get backupCatThemeDesc =>
      'Tema, renkler, cam, yazı tipleri ve kart stili';

  @override
  String get backupCatCommon => 'Genel';

  @override
  String get backupCatCommonDesc => 'Dil, depolama, ağ ve uzantı seçenekleri';

  @override
  String get backupCatPlayer => 'Oynatıcı';

  @override
  String get backupCatPlayerDesc => 'Oynatıcı tercihleri';

  @override
  String get backupCatReader => 'Okuyucu';

  @override
  String get backupCatReaderDesc => 'Okuyucu tercihleri';

  @override
  String get backupCatProtected => 'Hesaplar';

  @override
  String get backupCatProtectedDesc => 'Giriş token\'ları ve oturum verileri';

  @override
  String get backupCatOther => 'Servisler ve akışlar';

  @override
  String get backupCatOtherDesc =>
      'Akış düzenleri, listeler ve servis seçenekleri';

  @override
  String get logFile => 'Günlük dosyası';

  @override
  String get logFileDesc =>
      'Uygulama günlüğünü paylaş ya da Linux\'ta yolunu kopyala';

  @override
  String get logDelete => 'Günlük dosyalarını sil';

  @override
  String get logDeleteDesc =>
      'Yer açmak için kayıtlı uygulama günlüklerini temizleyin';

  @override
  String logDeleted(String size) {
    return 'Günlüklerden $size silindi';
  }

  @override
  String get missingSequel => 'Eksik devam filmi';

  @override
  String get rising => 'Yükseliyor';

  @override
  String get stacks => 'Yığınlar';

  @override
  String get stacksAll => 'Hepsi';

  @override
  String get stacksFeatured => 'Öne Çıkanlar';

  @override
  String get stacksMine => 'seninki';

  @override
  String get stacksSaved => 'Kaydedildi';

  @override
  String get stacksFollowing => 'Takip ediliyor';

  @override
  String get stacksEmpty => 'Burada henüz yığın yok';

  @override
  String get stacksSignIn =>
      'Yığınlarınızı görmek için MangaBaka\'da oturum açın';

  @override
  String get stacksScopeNeeded =>
      'Yığınlarınızın yeni bir izne ihtiyacı var. İzin vermek için MangaBaka\'da tekrar oturum açın.';

  @override
  String get stacksSignInAgain => 'Tekrar oturum açın';

  @override
  String get stacksCouldntLoad => 'Yığınlar yüklenemedi';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count serisi',
      one: '1 seri',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaydeder',
      one: '1 kaydet',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return '$name tarafından';
  }

  @override
  String get stackSpoilers => 'Spoiler';

  @override
  String get stackEmptyEntries => 'Bu yığın boş';

  @override
  String get stackSave => 'Yığını kaydet';

  @override
  String get stackUnsave => 'Kaydedilenlerden kaldır';

  @override
  String get stackSavedToast => 'Yığınlarınıza kaydedildi';

  @override
  String get stackRemovedToast => 'Kaydedilen yığınlarınızdan kaldırıldı';

  @override
  String userStacks(String name) {
    return '$name\'ye göre yığınlar';
  }

  @override
  String get newsTitle => 'Haberler';

  @override
  String get newsEmpty => 'Şu anda haber yok';

  @override
  String get newsCouldntLoad => 'Haber yüklenemedi';

  @override
  String get logFileCopied => 'Günlük yolu kopyalandı';

  @override
  String get donateSheetTitle => 'Dartotsu\'yu sevdin mi?';

  @override
  String get donateSheetMessage =>
      'Dartotsu\'yu tek bir kişi geliştiriyor ve sürdürüyor. İşine yaradıysa geliştirmeyi desteklemeyi düşünebilirsin.';

  @override
  String get donateLater => 'Belki sonra';

  @override
  String get glassBackground => 'Cam arka plan';

  @override
  String get glassBackgroundDesc =>
      'Bir görsel bağlantısı girmezsen profil bannerın kullanılır';

  @override
  String get glassBackgroundHint =>
      'Görsel bağlantısı (bannerın için boş bırak)';

  @override
  String get followCover => 'Kapağı takip et';

  @override
  String get followCoverDesc =>
      'Renkler arka planı, detay sayfalarında ise kapağı takip eder';

  @override
  String get followCoverMediaOnly => 'Yalnızca medya için';

  @override
  String get followCoverMediaOnlyDesc =>
      'Sadece medya sayfalarındaki kapağı takip edin, diğer her yer normal renkleri koruyor';

  @override
  String get cardStyle => 'Kart stili';

  @override
  String get cardStyleDesc => 'Başlık konumu, boyut, ilerleme ve rozetler';

  @override
  String get customFont => 'Yazı tipi';

  @override
  String get customFontDesc =>
      'Varsayılan, cihazından bir dosya ya da Google Fonts';

  @override
  String get customFontError => 'Bu yazı tipi dosyası yüklenemedi';

  @override
  String get googleFontError => 'Bu yazı tipi indirilemedi';

  @override
  String get yourFonts => 'Yazı tiplerin';

  @override
  String get addFontFile => 'Yazı tipi dosyası ekle…';

  @override
  String get browseGoogleFonts => 'Google Fonts\'a göz at…';

  @override
  String get searchGoogleFonts => 'Google Fonts\'ta ara';

  @override
  String get defaultFont => 'Varsayılan';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Sistemden dinamik renk';

  @override
  String get jsonTheme => 'Özel tema dosyası';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json dosyasından canlı renkler (özel bir betik ya da kendi düzenlemelerin)';

  @override
  String get themeMode => 'Tema modu';

  @override
  String get mode => 'Mod';

  @override
  String get trackingService => 'Takip servisi';

  @override
  String get signOut => 'Çıkış yap';

  @override
  String get signIn => 'Giriş yap';

  @override
  String get notSignedIn => 'Giriş yapılmadı';

  @override
  String signOutOf(String service) {
    return '$service hesabından çıkış yapılsın mı?';
  }

  @override
  String get checkForUpdates => 'Güncellemeleri kontrol et';

  @override
  String get checkForUpdatesDesc => 'Yeni GitHub sürümünde bildir';

  @override
  String get updateChannel => 'Güncelleme kanalı';

  @override
  String get channel => 'Kanal';

  @override
  String get stable => 'Kararlı';

  @override
  String get preRelease => 'Ön sürüm';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Şimdi kontrol et';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Varsayılan';

  @override
  String currentlyUsing(String value) {
    return 'Şu an: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Varsayılan (Cloudflare)';

  @override
  String get proxy => 'vekil';

  @override
  String get proxyProtocol => 'Tür';

  @override
  String get proxyHost => 'Sunucu';

  @override
  String get proxyPort => 'Liman';

  @override
  String get proxyUsername => 'Kullanıcı adı';

  @override
  String get proxyPassword => 'Parola';

  @override
  String get optional => 'İsteğe bağlı';

  @override
  String get clearCookies => 'Çerezleri temizle';

  @override
  String get clearCookiesDesc => 'Saklanan tüm çerezleri sil';

  @override
  String notImplementedArea(String area) {
    return '$area — yakında';
  }

  @override
  String notImplementedService(String service) {
    return '$service bunu henüz desteklemiyor.';
  }

  @override
  String get couldNotLoadResults => 'Sonuçlar yüklenemedi';

  @override
  String get updateCheckFailed => 'Güncellemeler kontrol edilemedi';

  @override
  String get highRefreshRate => 'Yüksek yenileme hızı';

  @override
  String get highRefreshRateDesc =>
      'Ekranının desteklediği en yüksek yenileme hızını kullan';

  @override
  String get imageSave => 'Görseli kaydet';

  @override
  String imageSavedTo(String path) {
    return '$path konumuna kaydedildi';
  }

  @override
  String get imageActionFailed => 'Görsel indirilemedi';

  @override
  String get imageTitleCover => 'Kapak';

  @override
  String get imageTitlePage => 'Sayfa';

  @override
  String get imageTitleBanner => 'Afiş';

  @override
  String get imageTitleAvatar => 'Profil resmi';

  @override
  String get verifyTls => 'Sertifikaları doğrula';

  @override
  String get verifyTlsDesc =>
      'Geçersiz HTTPS sertifikası olan sunucuları reddet. Sadece kendinden imzalı sertifika kullanan bir kaynak için kapat';

  @override
  String get clearCookiesConfirm =>
      'Saklanan tüm çerezler silinsin mi? Bu, bazı kaynaklardaki oturumunu kapatabilir.';

  @override
  String get version => 'Sürüm';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Kaynak kod, sorunlar ve sürümler';

  @override
  String get discordDesc => 'Topluluk ve destek';

  @override
  String get supportDeveloper => 'Geliştiriciyi destekleyin';

  @override
  String get buyMeCoffee => 'Bana bir kahve al';

  @override
  String get upiId => 'UPI kimliği';

  @override
  String get upiCopied => 'UPI kimliği kopyalandı';

  @override
  String get donateDesc => 'Geliştirmeyi destekle';

  @override
  String get contributors => 'Katkıda bulunanlar';

  @override
  String get contributorsDesc => 'Dartotsu\'yu yapan insanlar';

  @override
  String get contributorsLoadFailed => 'Katkıda bulunanlar yüklenemedi';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu üzerine kurulan projeler';

  @override
  String get forksEmpty => 'Fork bulunamadı';

  @override
  String get sectionColors => 'Renkler';

  @override
  String get sectionDisplay => 'Ekran';

  @override
  String get sectionStyle => 'Stil';

  @override
  String get sectionCommunity => 'Topluluk';

  @override
  String get sectionAppInfo => 'Uygulama bilgisi';

  @override
  String get sectionRequests => 'İstekler';

  @override
  String get sectionDnsProxy => 'DNS ve proxy';

  @override
  String get onboardingBack => 'Geri';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get onboardingSkip => 'Atla';

  @override
  String get onboardingLanguageBody =>
      'Dartotsu\'nun gösterildiği dili seçin. Bunu daha sonra Ayarlar\'dan değiştirebilirsiniz.';

  @override
  String get onboardingPaletteTitle => 'Sana göre yap';

  @override
  String get onboardingPaletteBody =>
      'Bir palet seç. Kartlardan oynatıcıya kadar tüm vurgu renkleri buna uyar.';

  @override
  String get themeModeAuto => 'Otomatik';

  @override
  String get themeModeLight => 'Açık';

  @override
  String get themeModeDark => 'Koyu';

  @override
  String get onboardingSyncTitle => 'Kütüphaneni senkronla';

  @override
  String get onboardingSyncBody =>
      'Listelerini, ilerlemeni ve puanlarını getirmek için AniList ile giriş yap. Ya da atla, misafir olarak göz at.';

  @override
  String get onboardingOpenLinks =>
      'AniList ve depo bağlantılarını Dartotsu\'da aç';

  @override
  String get onboardingPermsTitle => 'İzinler';

  @override
  String get onboardingPermsBody =>
      'İndirmeler, güncellemeler ve bildirimler kesintisiz çalışsın diye bunlara şimdi izin ver. Sonra sistem ayarlarından değiştirebilirsin.';

  @override
  String get permNotifications => 'Bildirimler';

  @override
  String get permNotificationsDesc =>
      'İndirme durumu, yeni bölümler ve yanıtlar';

  @override
  String get permStorage => 'Tüm dosyalara erişim';

  @override
  String get permStorageDesc =>
      'İndirmeleri herkese açık Dartotsu klasörüne kaydet';

  @override
  String get permInstall => 'Güncelleme yükle';

  @override
  String get permInstallDesc => 'Dartotsu kendi güncellemelerini yükleyebilsin';

  @override
  String get permBattery => 'Sınırsız pil kullanımı';

  @override
  String get permBatteryDesc =>
      'Uzun indirmeler arka planda çalışmaya devam etsin';

  @override
  String get permGrant => 'İzin ver';

  @override
  String get linkOpenInApp => 'Bağlantıları Dartotsu\'da aç';

  @override
  String get linkOpenInAppDesc =>
      'AniList ve depo bağlantıları uygulamayı açsın';

  @override
  String get reviewsTitle => 'İncelemeler';

  @override
  String get reviewsEmpty => 'Henüz inceleme yok';

  @override
  String get reviewsFailed => 'İncelemeler yüklenemedi';

  @override
  String get reviewHelpfulQuestion => 'Bu inceleme işine yaradı mı?';

  @override
  String get reviewVoteFailed => 'Oy kaydedilemedi';

  @override
  String reviewHelpful(int n, int total) {
    return '$total kişiden $n tanesi bunu faydalı buldu';
  }

  @override
  String get calendarTitle => 'Yayın takvimi';

  @override
  String get calendarToday => 'Bugün';

  @override
  String get calendarEmpty => 'Bu gün yayınlanan bir şey yok';

  @override
  String get calendarFailed => 'Takvim yüklenemedi';

  @override
  String calendarChapter(int n) {
    return 'Bölüm $n';
  }

  @override
  String get calendarExpected => 'Beklenen';

  @override
  String get castReceiverFailed => 'Chromecast oynatıcısını başlatmadı';

  @override
  String get castPlaybackFailed => 'Cihaz bu akışı oynatamadı';

  @override
  String get shortcutNothingToContinue => 'Henüz devam edecek bir şey yok';

  @override
  String shortcutNoCalendar(String service) {
    return '$service\'in takvimi yok';
  }

  @override
  String calendarEpisode(int n) {
    return 'Bölüm $n';
  }

  @override
  String get shareAnalytics => 'Anonim kullanım verilerini paylaş';

  @override
  String get shareAnalyticsDesc =>
      'Anonim kullanıcı sayıları ve çökme raporları. Hesap ya da kişisel veri yok';

  @override
  String get linkOpenAnilist => 'AniList bağlantılarını Dartotsu\'da aç';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co bağlantıları uygulamayı açsın diye bağlantı yönetimini aç';

  @override
  String get linkSettingsFailed => 'Sistem ayarları açılamadı';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Yaptığın şeyi Discord profilinde göster. Discord token\'ın gerekir.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Yaptığın şeyi Discord profilinde göster. Discord masaüstü uygulamasının çalışıyor olması gerekir.';

  @override
  String get discordBrowsing => 'Gezinme etkinliğini göster';

  @override
  String get discordBrowsingDesc =>
      'Sadece izlediğini ya da okuduğunu değil, baktığın sekmeyi, sayfayı ya da profili de göster.';

  @override
  String get discordLookHeader => 'Durum görünümü';

  @override
  String get discordActivityType => 'Etkinlik türü';

  @override
  String get discordActivityTypeDesc =>
      'Discord\'da nasıl yazılacağı: \"Watching …\" ya da \"Playing …\". Otomatik, anime için Watching, geri kalan her şey için Playing kullanır.';

  @override
  String get discordWatching => 'İzliyor';

  @override
  String get discordPlaying => 'Oynuyor';

  @override
  String get discordCovers => 'Kapakları göster';

  @override
  String get discordCoversDesc => 'Kartta kapak görseli ve Dartotsu simgesi.';

  @override
  String get discordTimer => 'Sayacı göster';

  @override
  String get discordTimerDesc => 'Başlığın altında geçen ya da kalan süre.';

  @override
  String get discordButtons => 'Butonları göster';

  @override
  String get discordButtonsDesc =>
      '\"Anime / manga\'yı görüntüle\" ve \"Dartotsu\'yu aç\" butonları.';

  @override
  String get discordHideTitles => 'Başlıkları gizle';

  @override
  String get discordHideTitlesDesc =>
      'Anime ve manga adlarını (kapak ve bağlantıyla birlikte) \"Something private\" ile değiştir.';

  @override
  String get discordConnectionHeader => 'Bağlantı';

  @override
  String get listSearchHint => 'Bu listede ara';

  @override
  String get listSort => 'Sırala';

  @override
  String get listFilter => 'Filtrele';

  @override
  String get listRandom => 'Rastgele başlık';

  @override
  String get listReverse => 'Ters sırala';

  @override
  String get listSortDefault => 'Liste sırası';

  @override
  String get listSortScore => 'Puanın';

  @override
  String get listSortTitle => 'Başlık';

  @override
  String get listSortUpdated => 'Son güncelleme';

  @override
  String get listSortProgress => 'İlerleme';

  @override
  String get listSortReleased => 'Çıkış tarihi';

  @override
  String get listSortAverage => 'Ortalama puan';

  @override
  String get listFilterFormat => 'Biçim';

  @override
  String get listFilterStatus => 'Durum';

  @override
  String get listFilterGenres => 'Türler';

  @override
  String get listFilterClear => 'Filtreleri temizle';

  @override
  String get listNoMatches => 'Bu listede eşleşen bir şey yok';

  @override
  String get discordLogin => 'Discord\'a giriş yap';

  @override
  String get discordToken => 'Discord token\'ı';

  @override
  String get discordTokenSaved =>
      'Kaydedildi. Değiştirmek için dokun, silmek için uzun bas.';

  @override
  String get discordTokenNotSet => 'Ayarlanmadı. Eklemek için dokun.';

  @override
  String get discordTokenSavedSnack => 'Discord token\'ı kaydedildi';

  @override
  String get discordTokenRemovedSnack => 'Discord token\'ı silindi';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Açık · görünümü değiştirmek için dokun';

  @override
  String get discordRichPresenceRowOff =>
      'Yaptığın şeyi Discord profilinde göster';

  @override
  String get loginCancelled => 'Giriş iptal edildi';

  @override
  String get invalidToken => 'Geçersiz token';

  @override
  String loginFailed(String error) {
    return 'Giriş başarısız: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList girişi başarısız';

  @override
  String get kitsuLoginFailed =>
      'Kitsu girişi başarısız. E-postanı ve parolanı kontrol et.';

  @override
  String get kitsuLoginTitle => 'Kitsu\'ya giriş yap';

  @override
  String get emailOrUsername => 'E-posta ya da kullanıcı adı';

  @override
  String get password => 'Parola';

  @override
  String get kitsuProfile => 'Kitsu profili';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka girişi başarısız';

  @override
  String get comickLoginFailed => 'Komik giriş başarısız oldu';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Trend olan';

  @override
  String get anticipated => 'Beklenen';

  @override
  String get watchlist => 'İzleme listesi';

  @override
  String get recommendedShows => 'Önerilen Programlar';

  @override
  String get recommendedMovies => 'Önerilen Filmler';

  @override
  String get boxOffice => 'Gişe';

  @override
  String get popularMovies => 'Popüler Filmler';

  @override
  String get popularShows => 'Popüler Programlar';

  @override
  String get anticipatedMovies => 'Beklenen Filmler';

  @override
  String get anticipatedShows => 'Beklenen Gösteriler';

  @override
  String get trendingShows => 'Trend Gösteriler';

  @override
  String get mostWatchedThisWeek => 'Bu Hafta En Çok İzlenenler';

  @override
  String get sortMostViewed => 'En çok görüntülenen';

  @override
  String get sortMostFollowed => 'En çok takip edilen';

  @override
  String get sortLatestUpdates => 'En son güncellemeler';

  @override
  String get translationStatusLabel => 'Çeviri';

  @override
  String get weeklySchedule => 'Haftalık Program';

  @override
  String get mostFollowed => 'En Çok Takip Edilen';

  @override
  String get latestUpdates => 'Son Güncellemeler';

  @override
  String get trendingAnime => 'Trend Olan Animeler';

  @override
  String get topRatedAnime => 'En Çok Oy Alan Anime';

  @override
  String get mostFollowedAnime => 'En Çok Takip Edilen Anime';

  @override
  String get comickProfile => 'Komik profil';

  @override
  String get refreshFromComick => 'Comick\'ten yenile';

  @override
  String get mangaBakaProfile => 'MangaBaka profili';

  @override
  String get refreshFromMangaBaka => 'MangaBaka\'dan yenile';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates\'te oturum açın';

  @override
  String get mangaUpdatesProfile => 'MangaGüncellemeler profili';

  @override
  String get mangaUpdatesAnimeStart => 'Anime uyarlaması başlıyor';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime uyarlaması sona eriyor';

  @override
  String get refreshFromMangaUpdates => 'MangaGüncellemelerinden yenile';

  @override
  String get usernameOnly => 'Kullanıcı adı';

  @override
  String get releases => 'Bültenler';

  @override
  String get artistsLabel => 'Çizerler';

  @override
  String get authorsLabel => 'Yazarlar';

  @override
  String get publishersLabel => 'Yayıncılar';

  @override
  String get licensedLabel => 'Lisanslı';

  @override
  String get contentRatingLabel => 'İçerik derecelendirmesi';

  @override
  String get yesLabel => 'Evet';

  @override
  String get noLabel => 'Hayır';

  @override
  String get ratingSteps => 'Puan adımları';

  @override
  String get hideNsfw => 'NSFW\'yi gizle';

  @override
  String get hideNsfwSourcesDesc =>
      '18+ olarak işaretlenmiş kaynakları akışlardan ve kaynak seçiciden gizleyin. Kurulu halde kalırlar.';

  @override
  String get hideNsfwDesc =>
      'Yetişkin içeriği akıştan ve aramadan çıkar, kendi yetişkin girişlerini Gizli Medya altında listele.';

  @override
  String get kitsuAccountOptions => 'Kitsu hesap seçenekleri';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka hesap seçenekleri';

  @override
  String get comickAccountOptions => 'Komik hesap seçenekleri';

  @override
  String get comickClientId => 'Komik Müşteri Kimliği';

  @override
  String get comickClientIdDesc => 'Comik.dev\'de kayıtlı özel müşteri kimliği';

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
  String get couldNotUpdateKitsuSettings => 'Kitsu ayarların güncellenemedi';

  @override
  String get titleCanonical => 'Orijinal';

  @override
  String get titleRomanized => 'Romanize';

  @override
  String get titleLocalized => 'Yerelleştirilmiş';

  @override
  String get ratingSystem => 'Puanlama sistemi';

  @override
  String get ratingSimple => 'Basit (3 yüz)';

  @override
  String get ratingRegular => 'Normal (5 yıldız)';

  @override
  String get ratingAdvanced => 'Gelişmiş (10 puan)';

  @override
  String get contentFilter => 'İçerik filtresi';

  @override
  String get contentSfw => 'Sadece güvenli içerik';

  @override
  String get contentSometimes => 'Aramalarda yetişkin içerik';

  @override
  String get contentEverywhere => 'Her yerde yetişkin içerik';

  @override
  String get shareToGlobal => 'Genel akışta paylaş';

  @override
  String get shareToGlobalDesc =>
      'Etkinliğin Kitsu\'nun genel akışında görünsün.';

  @override
  String get memberSince => 'Üyelik tarihi';

  @override
  String get location => 'Konum';

  @override
  String get accountType => 'Hesap türü';

  @override
  String get accountSupporter => 'Destekçi';

  @override
  String get accountFree => 'Ücretsiz';

  @override
  String get accountDetails => 'Hesap ayrıntıları';

  @override
  String get refreshFromKitsu => 'Kitsu\'dan yenile';

  @override
  String get simklReadOnly => 'Simkl salt okunur erişim verdi';

  @override
  String get traktReadOnly => 'Trakt\'a salt okunur erişim izni verildi';

  @override
  String get incognitoEditsBlocked => 'Gizli mod: liste düzenlemeleri engelli';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Gizli mod: ilerleme kaydedilmedi';

  @override
  String progressSet(int progress) {
    return 'İlerleme $progress olarak ayarlandı';
  }

  @override
  String removedFromList(String title) {
    return '$title listenden kaldırıldı';
  }

  @override
  String get following => 'Takip edilenler';

  @override
  String get followsMutual => 'Karşılıklı';

  @override
  String get followsNotMutual => 'Karşılıklı değil';

  @override
  String get homeSections => 'Ana sayfa bölümleri';

  @override
  String get homeSectionsHint =>
      'Sıralamak için sürükle. Gizli bölümler hiç çekilmez.';

  @override
  String get customListDeleteFailed => 'Özel liste silinemedi';

  @override
  String get customListsSaveFailed => 'Özel listeler kaydedilemedi';

  @override
  String get customListsSaved => 'Özel listeler kaydedildi';

  @override
  String get listName => 'Liste adı';

  @override
  String get addList => 'Liste ekle';

  @override
  String get voiceActors => 'Ses aktörleri';

  @override
  String voiceActorsIn(String name) {
    return 'Seslendirmenler · $name';
  }

  @override
  String get animeAppearances => 'Anime görünümleri';

  @override
  String get mangaAppearances => 'Manga görünümleri';

  @override
  String get voicedCharacters => 'Seslendirdiği karakterler';

  @override
  String get animeCredits => 'Anime kredileri';

  @override
  String get mangaCredits => 'Manga kredileri';

  @override
  String get mainProductions => 'Ana yapımlar';

  @override
  String get otherWorks => 'Diğer işler';

  @override
  String get prequelSequel => 'Öncesi ve sonrası';

  @override
  String get prequel => 'Ön bölüm';

  @override
  String get sequel => 'Devam filmi';

  @override
  String get previousSeason => 'Önceki sezon';

  @override
  String get thisSeason => 'Bu sezon';

  @override
  String get nextSeason => 'Sonraki sezon';

  @override
  String get voiceRoles => 'Seslendirme rolleri';

  @override
  String get staffPositions => 'Ekip görevleri';

  @override
  String get mangaWorks => 'Manga işleri';

  @override
  String get malProfile => 'MyAnimeList profili';

  @override
  String get refreshFromMal => 'MyAnimeList\'ten yenile';

  @override
  String get repullProfileCounts => 'Profilini ve sayıları yeniden çek';

  @override
  String get refreshed => 'Yenilendi';

  @override
  String get simklProfile => 'Simkl profili';

  @override
  String get traktProfile => 'Trakt profili';

  @override
  String get refreshFromSimkl => 'Simkl\'den yenile';

  @override
  String get refreshFromTrakt => 'Trakt\'tan yenile';

  @override
  String get repullProfileLibrary => 'Profilini ve kütüphaneni yeniden çek';

  @override
  String get simklSignInToSearch => 'Aramak için Simkl\'e giriş yap';

  @override
  String get dropRate => 'Bırakma oranı';

  @override
  String get simklAttribution =>
      'Veriler ve görseller Simkl tarafından sağlanır. Simkl\'de görüntüle';

  @override
  String get traktAttribution =>
      'Veriler ve görseller Trakt tarafından sağlanmıştır. Trakt\'ta görüntüle';

  @override
  String get listsLiked => 'Beğendim';

  @override
  String get listsYours => 'seninki';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP Üyesi';

  @override
  String get onHold => 'Beklemede';

  @override
  String get scoredBy => 'Puan veren';

  @override
  String get planToWatch => 'İzlemeyi planlıyorum';

  @override
  String get planToRead => 'Okumayı planlıyorum';

  @override
  String get timesRewatched => 'Yeniden izleme sayısı';

  @override
  String get timesReread => 'Yeniden okuma sayısı';

  @override
  String get comments => 'Yorumlar';

  @override
  String get moviesAndSeries => 'Filmler ve diziler';

  @override
  String get simklMoviesOnly => 'Yalnızca filmler ve diziler';

  @override
  String get simklMoviesOnlyDesc =>
      'Anime sekmesinin yerini alır: Önce filmler, ardından birkaç anime satırıyla Gösteriler';

  @override
  String get trackingOnly => 'Sadece takip';

  @override
  String get signedIn => 'Giriş yapıldı';

  @override
  String get searchLanguage => 'Arama dili';

  @override
  String get savedToList => 'Listene kaydedildi';

  @override
  String get removedFromYourList => 'Listenden kaldırıldı';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get synopsis => 'Özet';

  @override
  String get details => 'Ayrıntılar';

  @override
  String get addToList => 'Listeye ekle';

  @override
  String get trailer => 'Fragman';

  @override
  String get trailerQuality => 'Römork kalitesi';

  @override
  String get titleCopied => 'Başlık kopyalandı';

  @override
  String get linkCopied => 'Bağlantı kopyalandı';

  @override
  String get watchTrailer => 'Fragmanı izle';

  @override
  String get copyTitle => 'Başlığı kopyala';

  @override
  String get detailStale =>
      'AniList\'e ulaşılamadı. Bu kayıtlı bilgidir ve güncelliğini kaybetmiş olabilir.';

  @override
  String get copyLink => 'Bağlantıyı kopyala';

  @override
  String get openInBrowser => 'Tarayıcıda aç';

  @override
  String viewOnSource(String source) {
    return '$source üzerinde görüntüle';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return '$ep. bölüm $time sonra yayınlanacak';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Sonraki bölüm $time sonra';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '$chapter. bölüm yaklaşık $time içinde gelecek';
  }

  @override
  String get logPathCopied => 'Günlük dosyası yolu panoya kopyalandı';

  @override
  String get animeSource => 'Anime kaynağı';

  @override
  String get mangaSource => 'Manga kaynağı';

  @override
  String get popular => 'Popüler';

  @override
  String get allCustomLists => 'Tüm özel listeler';

  @override
  String get simklTitleLanguage => 'Anime başlık dili';

  @override
  String get titleLanguageEnglish => 'İngilizce';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Trend olan';

  @override
  String get simklListsMostLiked => 'En çok beğenilenler';

  @override
  String get simklListsMostFollowed => 'En çok takip edilen';

  @override
  String get simklListsOfficial => 'Resmi';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count başlıklar',
      one: '1 başlık',
    );
    return '$_temp0';
  }

  @override
  String get people => 'İnsanlar';

  @override
  String get mostComments => 'Çoğu yorum';

  @override
  String get alphabetical => 'alfabetik';

  @override
  String get latest => 'En yeni';

  @override
  String get saved => 'Kaydedilenler';

  @override
  String get nothingMatched => 'Eşleşen bir şey yok';

  @override
  String get nothingSavedFromSource =>
      'Bu kaynaktan henüz kaydedilen bir şey yok';

  @override
  String get sourceReturnedNothing => 'Bu kaynak hiçbir şey döndürmedi';

  @override
  String get checkConnectionOrSource =>
      'Bağlantını kontrol et ya da başka bir kaynak dene.';

  @override
  String get tryDifferentSearch => 'Farklı bir arama terimi dene.';

  @override
  String get savedTitlesAppearHere =>
      'Listene eklediğin başlıklar burada görünür.';

  @override
  String get tryOtherFeed => 'Bunun yerine diğer akışı ya da aramayı dene.';

  @override
  String searchSource(String source) {
    return '$source içinde ara';
  }

  @override
  String get animeExtensions => 'Anime uzantıları';

  @override
  String get mangaExtensions => 'Manga uzantıları';

  @override
  String get nothingHereYet => 'Burada henüz bir şey yok';

  @override
  String get savedOnDeviceUntilLogin =>
      'Sen silene kadar aşağıdakilerin hepsi bu cihazda kayıtlı kalır.';

  @override
  String get yourProfile => 'Profilin';

  @override
  String get activity => 'Etkinlik';

  @override
  String get extensions => 'Uzantılar';

  @override
  String get logOut => 'Çıkış yap';

  @override
  String get logIn => 'Giriş yap';

  @override
  String get logOutConfirm => 'Çıkış yapmak istediğine emin misin?';

  @override
  String get incognitoMode => 'Gizli mod';

  @override
  String get alsoBlockListEdits => 'Liste düzenlemelerini de engelle';

  @override
  String get offlineMode => 'Çevrimdışı mod';

  @override
  String get switchService => 'Servis değiştir';

  @override
  String logOutOf(String name) {
    return '$name hesabından çık';
  }

  @override
  String get loggedIn => 'Giriş yapıldı';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get nothingNew => 'Yeni bir şey yok';

  @override
  String get thisWeek => 'Bu hafta';

  @override
  String get listOnly => 'Sadece liste';

  @override
  String get notInList => 'Listede Yok';

  @override
  String get filter => 'Filtre';

  @override
  String get searchResults => 'Arama sonuçları';

  @override
  String get recentSearches => 'Son aramalar';

  @override
  String get searchOrSetFilter => 'Ara ya da bir filtre seç';

  @override
  String get filters => 'Filtreler';

  @override
  String get showLess => 'Daha az göster';

  @override
  String get showAll => 'Hepsini göster';

  @override
  String get apply => 'Uygula';

  @override
  String get preview => 'Önizleme';

  @override
  String get preset => 'Ön ayar';

  @override
  String get cardNormal => 'normal';

  @override
  String get cardOnCard => 'Kartın üstünde';

  @override
  String get cardInCard => 'Kartın içinde';

  @override
  String get size => 'Boyut';

  @override
  String get cardWidth => 'Kart genişliği';

  @override
  String get compact => 'Kompakt';

  @override
  String get coverAndTitleOnly => 'Sadece kapak ve başlık';

  @override
  String get titleLines => 'Başlık satırı';

  @override
  String get shape => 'Şekil';

  @override
  String get posterShape => 'Poster şekli';

  @override
  String get cornerRadius => 'Köşe yarıçapı';

  @override
  String get off => 'Kapalı';

  @override
  String get topLeft => 'Sol üst';

  @override
  String get topRight => 'Sağ üst';

  @override
  String get bottomLeft => 'Sol alt';

  @override
  String get bottomRight => 'Sağ alt';

  @override
  String get overlays => 'Katmanlar';

  @override
  String get progressCount => 'İlerleme / sayı';

  @override
  String get pill => 'Hap';

  @override
  String get bar => 'Çubuk';

  @override
  String get outside => 'Dışarıda';

  @override
  String get scoreBadge => 'Puan rozeti';

  @override
  String get airingDot => 'Yayın noktası';

  @override
  String get updateAvailable => 'Güncelleme var';

  @override
  String get notInstalled => 'Yüklü değil';

  @override
  String get done => 'Bitti';

  @override
  String get searchOrEnterUrl => 'Ara ya da URL gir';

  @override
  String get refresh => 'Yenile';

  @override
  String get animePlanetRank => 'Sıra';

  @override
  String get animePlanetMagazine => 'Dergi';

  @override
  String get animePlanetRefreshLists => 'Listelerinizi yenileyin';

  @override
  String get animePlanetRefreshListsDesc =>
      'Anime-Planet listelerinizi tekrar okuyun';

  @override
  String get animePlanetLocalNote =>
      'Anime-Planet hesabınızdaki değişiklikleri kaydetmek için oturum açın. O zamana kadar bu cihazda kalacaklar';

  @override
  String get share => 'Paylaş';

  @override
  String get characters => 'Karakterler';

  @override
  String get staff => 'Ekip';

  @override
  String get readMore => 'Devamını oku';

  @override
  String get couldNotLoadList => 'Liste yüklenemedi';

  @override
  String get logInToFavourite => 'Favori eklemek için giriş yap';

  @override
  String get alsoKnownAs => 'Diğer adları';

  @override
  String get hideSpoilerNames => 'Spoiler isimlerini gizle';

  @override
  String get showSpoilerNames => 'Spoiler isimlerini göster';

  @override
  String get favourited => 'Favorilere eklendi';

  @override
  String get favourite => 'Favori';

  @override
  String get couldNotOpenTitle => 'Bu başlık açılamadı';

  @override
  String get nobodyHereYet => 'Burada henüz kimse yok';

  @override
  String get noMatches => 'Eşleşme yok';

  @override
  String get gridView => 'Izgara görünümü';

  @override
  String get fullWidth => 'Tam genişlik';

  @override
  String get userNotFound => 'Kullanıcı bulunamadı';

  @override
  String get couldNotUpdateFollow => 'Takip güncellenemedi';

  @override
  String followedUser(String name) {
    return '$name takip edildi';
  }

  @override
  String unfollowedUser(String name) {
    return '$name takipten çıkarıldı';
  }

  @override
  String get messages => 'Mesajlar';

  @override
  String get logInToSeeMessages => 'Mesajlarını görmek için giriş yap';

  @override
  String get editActivity => 'Etkinliği düzenle';

  @override
  String get newActivity => 'Yeni etkinlik';

  @override
  String get editMessage => 'Mesajı düzenle';

  @override
  String get writeMessage => 'Bir mesaj yaz';

  @override
  String get editReply => 'Yanıtı düzenle';

  @override
  String get posted => 'Gönderildi';

  @override
  String get couldNotPost => 'Gönderilemedi';

  @override
  String get nothingToPreview => 'Önizlenecek bir şey yok';

  @override
  String get writeSomethingHint =>
      'Bir şeyler yaz… AniList markdown\'ı burada çalışır';

  @override
  String get privateMessage => 'Özel mesaj';

  @override
  String get post => 'Gönder';

  @override
  String get nothingHere => 'Burada bir şey yok';

  @override
  String get noAnimeProgress => 'Anime ilerlemesi yok';

  @override
  String get noMangaProgress => 'Manga ilerlemesi yok';

  @override
  String get noMessages => 'Mesaj yok';

  @override
  String get writeMessageHint => 'Bir mesaj yaz…';

  @override
  String get shareSomethingHint => 'Bir şeyler paylaş…';

  @override
  String get all => 'Hepsi';

  @override
  String get anime => 'anime';

  @override
  String get manga => 'manga';

  @override
  String get count => 'Sayı';

  @override
  String get hoursWatched => 'İzlenen saat';

  @override
  String get chaptersRead => 'Okunan bölüm';

  @override
  String get meanScore => 'Ortalama puan';

  @override
  String get noStatsYet => 'Henüz istatistik yok';

  @override
  String get totalEntries => 'Toplam giriş';

  @override
  String get episodesWatched => 'İzlenen bölüm';

  @override
  String get daysWatched => 'İzlenen gün';

  @override
  String get volumesRead => 'Okunan cilt';

  @override
  String get standardDeviation => 'Standart sapma';

  @override
  String get showMore => 'Daha fazla göster';

  @override
  String get followsYou => 'Seni takip ediyor';

  @override
  String get nobodyYet => 'Henüz kimse yok';

  @override
  String get logInToLike => 'Beğenmek için giriş yap';

  @override
  String get failedToLikeActivity => 'Etkinlik beğenilemedi';

  @override
  String get deleteActivityConfirm => 'Etkinlik silinsin mi?';

  @override
  String get deletedActivity => 'Etkinlik silindi';

  @override
  String get failedToDeleteActivity => 'Etkinlik silinemedi';

  @override
  String get subscribed => 'Abone olundu';

  @override
  String get unsubscribed => 'Abonelik kaldırıldı';

  @override
  String get failedToUpdateSubscription => 'Abonelik güncellenemedi';

  @override
  String get edit => 'Düzenle';

  @override
  String get delete => 'Sil';

  @override
  String get likedBy => 'Beğenenler';

  @override
  String get follow => 'Takip et';

  @override
  String get nameCopied => 'İsim kopyalandı';

  @override
  String get followsEachOther => 'Birbirinizi takip ediyorsunuz';

  @override
  String get unfollow => 'Takipten çık';

  @override
  String get userIdCopied => 'Kullanıcı ID\'si kopyalandı';

  @override
  String get shareProfile => 'Profili paylaş';

  @override
  String get copyUserId => 'Kullanıcı ID\'sini kopyala';

  @override
  String get failedToDelete => 'Silinemedi';

  @override
  String get failedToLike => 'Beğenilemedi';

  @override
  String get replies => 'Yanıtlar';

  @override
  String get reply => 'Yanıtla';

  @override
  String get noRepliesYet => 'Henüz yanıt yok';

  @override
  String get favouriteAnime => 'Favori animeler';

  @override
  String get favouriteManga => 'Favori mangalar';

  @override
  String get favouriteCharacters => 'Favori karakterler';

  @override
  String get favouriteStaff => 'Favori ekip';

  @override
  String get favouriteStudios => 'Favori stüdyolar';

  @override
  String get noFavouritesYet => 'Henüz favori yok';

  @override
  String get yourStory => 'Hikayen';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get justNow => 'Az önce';

  @override
  String get openImage => 'Görseli aç';

  @override
  String get hideSpoiler => 'Spoiler\'ı gizle';

  @override
  String get showSpoiler => 'Spoiler\'ı göster';

  @override
  String get status => 'Durum';

  @override
  String get score => 'Puan';

  @override
  String get started => 'Başladı';

  @override
  String get completed => 'Bitti';

  @override
  String get private => 'Özel';

  @override
  String get hideFromStatusLists => 'Durum listelerinden gizle';

  @override
  String get totalRepeats => 'Toplam tekrar';

  @override
  String get other => 'Diğer';

  @override
  String get customLists => 'Özel listeler';

  @override
  String get activeDays => 'Aktif günler';

  @override
  String get longestStreak => 'En uzun seri';

  @override
  String get currentStreak => 'Mevcut seri';

  @override
  String get tapOrHoverDay => 'Bir güne dokun ya da üzerine gel';

  @override
  String get less => 'Az';

  @override
  String get more => 'Çok';

  @override
  String epIn(int ep, String time) {
    return '$ep. bölüm $time sonra';
  }

  @override
  String get sectionLoading => 'Yükleniyor';

  @override
  String get querySize => 'Sorgu boyutu';

  @override
  String get querySizeDesc =>
      'Tek büyük sorgu her satırı (ve tüm profili) tek istekte yükler. Bölünmüş sorgular her satır ya da profil parçası için küçük bir istek gönderir: her biri hızlıdır ve parçalar geldikçe görünür.';

  @override
  String get oneBig => 'Tek büyük';

  @override
  String get split => 'Bölünmüş';

  @override
  String get sectionSocial => 'Sosyal';

  @override
  String get systemNotifications => 'Sistem bildirimleri';

  @override
  String get feedLayout => 'Akış düzeni';

  @override
  String sectionsShown(int shown, int total) {
    return '$total içinden $shown gösteriliyor — seçmek ve sıralamak için dokun';
  }

  @override
  String labelSections(String label) {
    return '$label bölümleri';
  }

  @override
  String get accountOptions => 'Hesap seçenekleri';

  @override
  String get anilistAccountOptions => 'AniList hesap seçenekleri';

  @override
  String get sectionPrivacy => 'Gizlilik';

  @override
  String get hidePrivateEntries => 'Özel girişleri gizle';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList\'te özel işaretlenen girişleri akıştan çıkar';

  @override
  String get anilistExcludeList => 'Listeni hariç tut';

  @override
  String get anilistExcludeListDesc =>
      'AniList\'inde zaten olan yapımları anime ve manga sayfalarında gösterme';

  @override
  String get anilistProfile => 'AniList profili';

  @override
  String get refreshFromAnilist => 'AniList\'ten yenile';

  @override
  String get couldNotUpdateAnilistSettings => 'AniList ayarları güncellenemedi';

  @override
  String get sectionNames => 'İsimler';

  @override
  String get titleLanguage => 'Başlık dili';

  @override
  String get titleLanguageDesc =>
      'Başlıkların her yerde nasıl yazılacağı, örn. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Ekip ve karakter isimleri';

  @override
  String get sectionLists => 'Listeler';

  @override
  String get scoreFormat => 'Puan formatı';

  @override
  String get sortListsBy => 'Listeleri şuna göre sırala';

  @override
  String labelCustomLists(String label) {
    return '$label özel listeleri';
  }

  @override
  String customListsCount(int count) {
    return '$count liste — eklemek ya da kaldırmak için dokun';
  }

  @override
  String get mergeActivities => 'Etkinlikleri birleştir';

  @override
  String minutesCount(int count) {
    return '$count dk';
  }

  @override
  String get timezone => 'Saat dilimi';

  @override
  String get notSet => 'Ayarlanmadı';

  @override
  String get airingNotifications => 'Yayın bildirimleri';

  @override
  String get airingNotificationsDesc =>
      'Takip ettiğin bir dizinin bölümü yayınlandığında haber al';

  @override
  String get displayAdultContent => 'Yetişkin içeriği göster';

  @override
  String get displayAdultContentDesc =>
      'Gezinme, arama ve akışlara 18+ başlıkları dahil et';

  @override
  String get restrictMessages => 'Mesajları takip edilenlerle sınırla';

  @override
  String get restrictMessagesDesc =>
      'Sadece takip ettiğin kişiler sana mesaj atabilir';

  @override
  String get sectionServices => 'Servisler';

  @override
  String get novel => 'Roman';

  @override
  String labelService(String label) {
    return '$label servisi';
  }

  @override
  String nameSettings(String name) {
    return '$name ayarları';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name uzantı köprüsünün seçenekleri';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name başlatılamadı: $error';
  }

  @override
  String get importLists => 'Listeleri içe aktar';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi ya da Kotatsu yedeklerinden';

  @override
  String get exportLists => 'Listeleri dışa aktar';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon ya da Kotatsu yedeğine';

  @override
  String get sectionBrowse => 'Göz at';

  @override
  String get readingTab => 'Okuma sekmesi';

  @override
  String get readingTabDesc => 'Üçüncü sekmenin göstereceği uzantılar';

  @override
  String get firstTab => 'İlk sekme';

  @override
  String get firstTabDesc =>
      'İlk sekmede hangi uzantıların gösterildiği. Anime\'yi bardan çıkarmak için buradan mangayı ve okuma sekmesinden romanı seçin';

  @override
  String get novelExtensions => 'Yeni Uzantılar';

  @override
  String get defaultFeed => 'Varsayılan akış';

  @override
  String get defaultFeedDesc => 'Bir kaynağın hangi listeyle açılacağı';

  @override
  String noServiceSupports(String type) {
    return 'Hiçbir servis $type desteklemiyor';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed kaynaktan $loaded tanesi yükleniyor';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Hiçbir uzantı servisi burada $type desteklemiyor.';
  }

  @override
  String get loadDataFrom => 'Verileri şuradan yükle';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Henüz yüklü $type kaynağı yok.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name için uzantı yüklü değil';
  }

  @override
  String get thisSource => 'bu kaynak';

  @override
  String failedToAddRepository(String error) {
    return 'Depo eklenemedi: $error';
  }

  @override
  String installedType(String type) {
    return 'Yüklü $type';
  }

  @override
  String availableType(String type) {
    return 'Mevcut $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Yüklü $type uzantısı yok';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Mevcut $type uzantısı yok';
  }

  @override
  String get nothingToShowYet => 'Henüz gösterilecek bir şey yok';

  @override
  String get addTitlesHint => 'Listene birkaç başlık ekle, burada görünsünler.';

  @override
  String get couldntLoad => 'Yüklenemedi';

  @override
  String get progressStyleHint =>
      'Hap ve çubuk posterin üstüne biner; dışarıda ise aynı sayıyı düz yazı olarak gösterir. Birini seç.';

  @override
  String get nixManagedUpdate =>
      'Bu sürümü Nix yönetiyor — buradan güncellemek yerine flake\'inde \"nix flake update\" çalıştırıp yeniden derle';

  @override
  String autoUpdateFailed(String error) {
    return 'Otomatik güncelleme başarısız ($error) — onun yerine indirme sayfası açılıyor';
  }

  @override
  String get unknownPreference => 'Bilinmeyen tercih';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Desteklenmeyen tercih türü $type';
  }

  @override
  String get notYetReleased => 'Henüz çıkmadı';

  @override
  String get notStarted => 'Başlamadı';

  @override
  String get country => 'Ülke';

  @override
  String get sort => 'Sırala';

  @override
  String get chooseBackupDialog =>
      'Bir Aniyomi, Mihon ya da Kotatsu yedeği seç';

  @override
  String get importListsHint =>
      'Kütüphaneni Aniyomi, Mihon / Tachiyomi ya da Kotatsu\'dan taşı. Başlıklar, kapaklar, ilerleme ve kategoriler korunur.';

  @override
  String get chooseBackupFile => 'Yedek dosyası seç';

  @override
  String importAnimeCount(int count) {
    return '$count anime içe aktar';
  }

  @override
  String importMangaCount(int count) {
    return '$count manga içe aktar';
  }

  @override
  String get mergeWithExisting => 'Mevcut listelerle birleştir';

  @override
  String get mergeWithExistingDesc =>
      'Sahip olduklarını korur; kapalıysa eşleşen başlıkların yerine yazar';

  @override
  String get chooseAnother => 'Başkasını seç';

  @override
  String get import => 'İçe aktar';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Yedeğin nereye kaydedileceğini seç';

  @override
  String savedPath(String path) {
    return '$path kaydedildi';
  }

  @override
  String exportFailed(String error) {
    return 'Dışa aktarma başarısız: $error';
  }

  @override
  String get nothingInLocalLists => 'Yerel listelerinde henüz bir şey yok.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Yerel listelerinden $anime anime ve $manga manga dışa aktarılır. Kotatsu sadece manga destekler.';
  }

  @override
  String get saveToFolder => 'Klasöre kaydet';

  @override
  String get formatAnimeManga => 'Anime ve manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Sadece manga · .tachibk';

  @override
  String get formatMangaZip => 'Sadece manga · .zip';

  @override
  String get genres => 'Türler';

  @override
  String get relations => 'İlişkiler';

  @override
  String get recommendations => 'Öneriler';

  @override
  String get openings => 'Açılışlar';

  @override
  String get endings => 'Kapanışlar';

  @override
  String get background => 'Arka plan';

  @override
  String get links => 'Bağlantılar';

  @override
  String get rank => 'Sıralama';

  @override
  String get members => 'Üyeler';

  @override
  String get favorites => 'Favoriler';

  @override
  String get episodes => 'Bölümler';

  @override
  String get chapters => 'Bölümler';

  @override
  String get volumes => 'Ciltler';

  @override
  String get format => 'Biçim';

  @override
  String get source => 'Kaynak';

  @override
  String get duration => 'Süre';

  @override
  String minutesPerEpisode(int minutes) {
    return 'Bölüm başına $minutes dk';
  }

  @override
  String get rating => 'Derecelendirme';

  @override
  String get studio => 'Stüdyo';

  @override
  String get serialization => 'Yayınlandığı dergi';

  @override
  String get season => 'Sezon';

  @override
  String get year => 'Yıl';

  @override
  String get filterAny => 'Herhangi biri';

  @override
  String get broadcast => 'Yayın';

  @override
  String get aired => 'Yayınlandı';

  @override
  String get published => 'Yayımlandı';

  @override
  String get popularity => 'Popülerlik';

  @override
  String get community => 'Topluluk';

  @override
  String get watching => 'İzleniyor';

  @override
  String get reading => 'Okunuyor';

  @override
  String get dropped => 'Bırakıldı';

  @override
  String get unfinished => 'Bitmemiş';

  @override
  String get planned => 'Planlandı';

  @override
  String get trailers => 'Fragmanlar';

  @override
  String get ratings => 'Puanlar';

  @override
  String get originalTitle => 'Orijinal';

  @override
  String get titleLabel => 'Başlık';

  @override
  String get votes => 'Oylar';

  @override
  String get watchedStat => 'İzlendi';

  @override
  String get runtime => 'Süre';

  @override
  String get director => 'Yönetmen';

  @override
  String get network => 'Kanal';

  @override
  String get certification => 'Yaş sınırı';

  @override
  String get airs => 'Yayınlanıyor';

  @override
  String get budget => 'Bütçe';

  @override
  String get revenue => 'Hasılat';

  @override
  String get released => 'Çıkış';

  @override
  String get tags => 'Etiketler';

  @override
  String get author => 'Yazar';

  @override
  String get born => 'Doğum';

  @override
  String get died => 'Öldü';

  @override
  String get birthplace => 'Doğum yeri';

  @override
  String get department => 'Departman';

  @override
  String get website => 'Web sitesi';

  @override
  String get established => 'Kuruluş';

  @override
  String get manhwa => 'Manhva';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romanlar';

  @override
  String get thisMonth => 'Bu ay';

  @override
  String get movies => 'Filmler';

  @override
  String get shows => 'Diziler';

  @override
  String get moviesWatched => 'İzlenen Filmler';

  @override
  String get showsWatched => 'İzlenen Programlar';

  @override
  String get moviesCollected => 'Toplanan Filmler';

  @override
  String get showsCollected => 'Toplanan Gösteriler';

  @override
  String get rewatching => 'Yeniden izleniyor';

  @override
  String get rereading => 'Yeniden okunuyor';

  @override
  String get watchedStatus => 'İzlendi';

  @override
  String get planning => 'Planlanan';

  @override
  String get paused => 'Duraklatıldı';

  @override
  String get watch => 'İzle';

  @override
  String get read => 'Oku';

  @override
  String get finished => 'Bitti';

  @override
  String get releasing => 'Devam ediyor';

  @override
  String get cancelled => 'İptal edildi';

  @override
  String get hiatus => 'Ara verildi';

  @override
  String get remove => 'Kaldır';

  @override
  String syncToService(String service) {
    return '$service ile senkronla';
  }

  @override
  String syncedToService(String service) {
    return '$service ile senkronlandı';
  }

  @override
  String get latestReleases => 'Son çıkanlar';

  @override
  String get topRated => 'En yüksek puanlılar';

  @override
  String localSection(String title) {
    return '$title · Yerel';
  }

  @override
  String get localEntryNote =>
      'Bu başlık sadece bu cihazdaki yerel listende. Hesap listenle çakışabileceği için burada düzenleme kapalı; yine de kaldırabilirsin.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Kart';

  @override
  String get cardPresetCozy => 'Rahat';

  @override
  String get sortTopRated => 'En yüksek puanlılar';

  @override
  String get sortMostPopular => 'En popülerler';

  @override
  String get sortTrending => 'Trend';

  @override
  String get sortNewest => 'En yeniler';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'En çok favorilenenler';

  @override
  String get anyCountry => 'Herhangi bir ülke';

  @override
  String get orderScore => 'Puan';

  @override
  String get orderTitle => 'Başlık';

  @override
  String get orderLastUpdated => 'Son güncellenen';

  @override
  String get orderLastAdded => 'Son eklenen';

  @override
  String get never => 'Asla';

  @override
  String get always => 'Her zaman';

  @override
  String get scorePoint100 => '100 puan';

  @override
  String get scorePoint10Decimal => '10 puan ondalıklı';

  @override
  String get scorePoint10 => '10 puan';

  @override
  String get scorePoint5 => '5 yıldız';

  @override
  String get scorePoint3 => '3 puan yüzlü';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat',
      one: '1 saat',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hafta',
      one: '1 hafta',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Devam et';

  @override
  String get resumeSourceMissing =>
      'Devam etmek için bu başlığın kaynağını yükle';

  @override
  String get resumeRemove => 'Devam listesinden kaldır';

  @override
  String resumeAt(String time) {
    return '$time kaldı';
  }

  @override
  String resumePage(int page, int total) {
    return 'Sayfa $page / $total';
  }

  @override
  String get continueWatching => 'İzlemeye devam et';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'Okumaya devam et';

  @override
  String get favouriteAnimeSection => 'Favori animeler';

  @override
  String get favouriteMangaSection => 'Favori mangalar';

  @override
  String get plannedAnime => 'Planlanan animeler';

  @override
  String get plannedManga => 'Planlanan mangalar';

  @override
  String get completedAnime => 'Tamamlanan animeler';

  @override
  String get completedManga => 'Tamamlanan mangalar';

  @override
  String get hiddenMedia => 'Gizli medya';

  @override
  String get recentUpdates => 'Son güncellemeler';

  @override
  String get trendingNow => 'Şu an trend';

  @override
  String get popularThisSeason => 'Bu sezonun popülerleri';

  @override
  String get trendingMovies => 'Trend filmler';

  @override
  String get topRatedSeries => 'En yüksek puanlı diziler';

  @override
  String get mostFavouriteSeries => 'En çok favorilenen diziler';

  @override
  String get popularAnime => 'Popüler animeler';

  @override
  String get trendingManhwa => 'Trend manhwalar';

  @override
  String get trendingNovels => 'Trend romanlar';

  @override
  String get topRatedManga => 'En yüksek puanlı mangalar';

  @override
  String get mostFavouriteManga => 'En çok favorilenen mangalar';

  @override
  String get popularManga => 'Popüler mangalar';

  @override
  String get topMovies => 'En iyi filmler';

  @override
  String get topOna => 'En iyi ONA\'lar';

  @override
  String get topOva => 'En iyi OVA\'lar';

  @override
  String get mostPopular => 'En popülerler';

  @override
  String get mostFavourite => 'En çok favorilenenler';

  @override
  String get upcoming => 'Yakında';

  @override
  String get topManga => 'En iyi mangalar';

  @override
  String get topManhwa => 'En iyi manhwalar';

  @override
  String get topManhua => 'En iyi manhualar';

  @override
  String get topNovels => 'En iyi romanlar';

  @override
  String get topOneShots => 'En iyi tek bölümlükler';

  @override
  String get trendingMoviesToday => 'Bugünün trend filmleri';

  @override
  String get trendingShowsToday => 'Bugünün trend dizileri';

  @override
  String get trendingMoviesWeek => 'Bu haftanın trend filmleri';

  @override
  String get trendingShowsWeek => 'Bu haftanın trend dizileri';

  @override
  String get mostWatchedMoviesMonth => 'Bu ayın en çok izlenen filmleri';

  @override
  String get mostWatchedShowsMonth => 'Bu ayın en çok izlenen dizileri';

  @override
  String get trendingThisWeek => 'Bu hafta trend olanlar';

  @override
  String get mostWatchedThisMonth => 'Bu ay en çok izlenenler';

  @override
  String get repoLinksAdded => 'Depo bağlantıları eklendi!';

  @override
  String repoLinkConfirm(String url) {
    return 'Bu depo eklensin mi?\n\n$url\n\nYalnızca güvendiğiniz kaynaklardan gelen depoları ekleyin.';
  }

  @override
  String get errorGettingAnilistData =>
      'AniList\'ten veri alınırken hata oluştu.';

  @override
  String get navInfo => 'BİLGİ';

  @override
  String get navComments => 'YORUMLAR';

  @override
  String get playerNotAvailable => 'Oynatıcı henüz kullanılamıyor';

  @override
  String deepLinkInitialError(String error) {
    return 'İlk derin bağlantı alınırken hata: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Bağlantı açılırken hata: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Bu bağlantı açılamıyor: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Bağlantı açılırken hata: $error';
  }

  @override
  String get forReleasingTitles => 'şu an yayınlanan başlıklar için';

  @override
  String get progress => 'İlerleme';

  @override
  String get notes => 'Notlar';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" servisi bulunamadı';
  }

  @override
  String get glassEffectEnabled => 'Cam efekti açıldı';

  @override
  String get glassEffectDisabled => 'Cam efekti kapandı';

  @override
  String get materialYouEnabled => 'Material You açıldı';

  @override
  String get materialYouDisabled => 'Material You kapandı';

  @override
  String get darkModeEnabled => 'Karanlık mod açıldı';

  @override
  String get darkModeDisabled => 'Karanlık mod kapandı';

  @override
  String get animeList => 'Anime listesi';

  @override
  String get mangaList => 'Manga listesi';

  @override
  String ownerAnimeList(String owner) {
    return '$owner kullanıcısının anime listesi';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner kullanıcısının manga listesi';
  }

  @override
  String get loadingList => 'Liste yükleniyor';

  @override
  String get earlier => 'Daha önce';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün önce',
      one: '1 gün önce',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saat önce',
      one: '1 saat önce',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dakika önce',
      one: '1 dakika önce',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count dk önce';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count sa önce';
  }

  @override
  String daysAgoShort(int count) {
    return '$count g önce';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count hf önce';
  }

  @override
  String get couldntLoadSource => 'Bu kaynak yüklenemedi';

  @override
  String get followers => 'Takipçiler';

  @override
  String couldntLoadTitle(String title) {
    return '$title yüklenemedi';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Bu profil yüklenemedi';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Akış';

  @override
  String get stats => 'İstatistikler';

  @override
  String get received => 'Alınan';

  @override
  String get sent => 'Gönderilen';

  @override
  String get global => 'Genel';

  @override
  String get couldntLoadPage => 'Bu sayfa yüklenemedi';

  @override
  String get couldntLoadAllDetails => 'Tüm ayrıntılar yüklenemedi';

  @override
  String get series => 'Seri';

  @override
  String get studios => 'Stüdyolar';

  @override
  String get users => 'Kullanıcılar';

  @override
  String repositoriesTitle(String type) {
    return '$type depoları';
  }

  @override
  String get repositoryUrl => 'Depo URL\'si';

  @override
  String get downloadingRepository => 'Depo indiriliyor…';

  @override
  String get noRepositories => 'Eklenen depo yok';

  @override
  String repoExtensionsCount(String count) {
    return '$count uzantı';
  }

  @override
  String get searchExtensions => 'Uzantılarda ara...';

  @override
  String deletePluginTitle(String name) {
    return '$name silinsin mi?';
  }

  @override
  String get deletePluginMessage =>
      'Bu eklentiyi silmek istediğine emin misin?';

  @override
  String pluginDeleted(String name) {
    return '$name silindi';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name ayarlanan depoda yok';
  }

  @override
  String get pluginFetchFailed => 'Eklenti bilgisi alınamadı';

  @override
  String installPluginTitle(String name) {
    return '$name yükle';
  }

  @override
  String sizeLabel(String size) {
    return 'Boyut: $size';
  }

  @override
  String get installedState => 'Yüklü';

  @override
  String updatePluginTitle(String name) {
    return '$name Güncellemesi';
  }

  @override
  String get errorLabel => 'Hata:';

  @override
  String get stackTraceDetails => 'Ayrıntılar (yığın izi)';

  @override
  String get shareLogFile => 'Günlük dosyasını paylaş';

  @override
  String get copyLogs => 'Günlükleri kopyala';

  @override
  String noListToEdit(String service) {
    return '$service servisinde düzenlenecek liste yok';
  }

  @override
  String get couldNotReadFile => 'Bu dosya okunamadı';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime anime ve $manga manga içe aktarıldı';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count tanesi zaten vardı';
  }

  @override
  String get airingNow => 'Şu an yayında';

  @override
  String get topRatedMovies => 'En yüksek puanlı filmler';

  @override
  String get koreanDramas => 'Kore Dizileri';

  @override
  String get chineseDramas => 'Çin Dizileri';

  @override
  String get japaneseDramas => 'Japon Dizileri';

  @override
  String get thaiDramas => 'Tayland Dizileri';

  @override
  String get turkishDramas => 'Türk Dizileri';

  @override
  String get miniSeries => 'Mini Diziler';

  @override
  String get topRatedShows => 'En yüksek puanlı diziler';

  @override
  String get recommendedSection => 'Önerilenler';

  @override
  String get syncRow => 'Listeleri senkronla';

  @override
  String get syncRowDesc => 'Bir servisin listesini diğer hesaplarına yansıt';

  @override
  String get syncTitle => 'Senkronla';

  @override
  String get syncMainService => 'Ana servis';

  @override
  String get syncMainServiceDesc =>
      'Kaynak olarak onun listesi esas alınır; giriş yaptığın diğer tüm servisler buna uyacak şekilde güncellenir';

  @override
  String get syncAuto => 'Otomatik senkron';

  @override
  String get syncAutoDesc =>
      'Uygulama açılırken ve her 30 dakikada bir arka planda çekip senkronla';

  @override
  String get syncAddMissing => 'Eksik girişleri ekle';

  @override
  String get syncAddMissingDesc =>
      'Diğer serviste henüz olmayan girişleri de ekle';

  @override
  String syncServiceOn(String name) {
    return '$name ile senkronize et';
  }

  @override
  String get syncDelete => 'Ana hizmetin sahip olmadığını silin';

  @override
  String get syncDeleteDesc =>
      'Ana listede bulunmayan diğer hizmetlerden girişleri kaldırın. Yalnızca bir başlıkla eşleştirilebilecek girişler kaldırılır, böylece Simkl filmleri ve dizileri gibi şeyler kalır';

  @override
  String get syncDeleteTitle => 'Girişler silinsin mi?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count girişleri',
      one: '1 giriş',
    );
    return '$_temp0 Ana listenizde olmayanlar diğer servislerden silinecektir. Bu geri alınamaz.';
  }

  @override
  String get syncDeleteAction => 'Sil';

  @override
  String get syncToDelete => 'Silmek için';

  @override
  String get syncDeletedNote => 'Silinecek';

  @override
  String syncWillRemove(int count, String name) {
    return '$count, $name\'den silinecek';
  }

  @override
  String get syncOnlyForward => 'İleri durumdaki ilerlemeyi koru';

  @override
  String get syncOnlyForwardDesc =>
      'Zaten önde olan bir servisin ilerlemesini düşürme';

  @override
  String get animePlanetWontWatch => 'İzlemeyeceğim';

  @override
  String get animePlanetWontRead => 'okumayacağım';

  @override
  String get animePlanetAlreadyOnList => 'Zaten bu listede';

  @override
  String get animePlanetNewList => 'Yeni liste adı';

  @override
  String get syncPrivate => 'Özel girişler';

  @override
  String get syncPrivateDesc =>
      'Özel tuttuğunuz girişlerle ne yapmalısınız? Özel seçeneği olan bir hizmet onları özel kılar; diğerleri bunları halka açık bir şekilde gösterirdi';

  @override
  String get syncPrivateModeAsk => 'Sor';

  @override
  String get syncPrivateModeSync => 'Onları senkronize et';

  @override
  String get syncPrivateModeSkip => 'Onları atla';

  @override
  String get syncPrivateTitle => 'Özel girişler';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count girişleri özeldir',
      one: '1 giriş özeldir',
    );
    return '$_temp0. Özel seçeneği olan hizmetler (AniList, Kitsu, MangaBaka) bunları özel olarak alacaktır; diğer hizmetlerin özel seçeneği yoktur ve bunları herkese açık olarak gösterirler. Senkronize edilsin mi? Cevabınız hatırlanıyor; Senkronizasyon seçenekleri altında değiştirin.';
  }

  @override
  String get syncPrivateInclude => 'Onları senkronize et';

  @override
  String get syncPrivateSkip => 'Onları atla';

  @override
  String get syncFetch => 'Çek';

  @override
  String get syncFetchAgain => 'Tekrar çek';

  @override
  String get syncAll => 'Hepsini senkronla';

  @override
  String get syncStop => 'Durdur';

  @override
  String get syncResume => 'Devam et';

  @override
  String get syncNothingToSync => 'Bu servis bu tür için senkronlanamıyor';

  @override
  String get syncNoTargets => 'Senkronlamak için başka bir servise giriş yap';

  @override
  String get syncLoadingMap => 'ID eşlemesi yükleniyor';

  @override
  String get syncComparing => 'Listeler karşılaştırılıyor';

  @override
  String get syncIntro =>
      'Bir ana servis seç ve Çek\'e bas. Her servisten listen bir kez istenir, sonra ana servisle karşılaştırılır.';

  @override
  String get syncStateSynced => 'Senkronlandı';

  @override
  String get syncStateOutdated => 'Senkron dışı';

  @override
  String get syncStateMissing => 'Listede yok';

  @override
  String get syncStateUnmapped => 'Eşleşme yok';

  @override
  String syncPaused(String time) {
    return 'İstek sınırı bekleniyor, $time sonra devam eder';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return 'Sadece $name üzerinde olan $count giriş, dokunulmadı';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total içinden $done';
  }

  @override
  String get syncNothingHere => 'Gösterilecek bir şey yok';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Bu $window içinde $max istekten $used tanesi kullanıldı';
  }

  @override
  String get syncMinute => 'dakika';

  @override
  String get syncDay => 'gün';

  @override
  String get syncNotInList => 'Henüz listede yok';

  @override
  String get syncCleared => 'Plan temizlendi';

  @override
  String get syncClear => 'Temizle';

  @override
  String get syncOptions => 'Seçenekler';

  @override
  String get syncShared => 'Girişini başka bir öğeyle paylaşıyor';

  @override
  String syncNotFound(String service) {
    return '$service üzerinde bulunamadı';
  }

  @override
  String syncService(String service, int count) {
    return '$service senkronla ($count)';
  }

  @override
  String get syncOnEdit => 'Değişiklikleri anında senkronla';

  @override
  String get syncOnEditDesc =>
      'Her ilerleme güncellemesini ve liste düzenlemesini giriş yaptığın diğer servislere hemen gönder';

  @override
  String syncRemoved(String services) {
    return '$services\'den kaldırıldı';
  }

  @override
  String syncPushed(String services) {
    return '$services ile senkronlandı';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'İstek sınırına takıldın, birazdan tekrar dene';

  @override
  String get syncAhead => 'Hangisi ilerideyse';

  @override
  String get syncAheadDesc =>
      'Çift yönlü: her başlık için en ilerideki giriş kazanır ve diğer tüm servislerine kopyalanır';

  @override
  String syncAheadFrom(String service) {
    return '$service kaynağından';
  }

  @override
  String get syncConfirm => 'Senkronlamadan önce incele';

  @override
  String get syncConfirmDesc =>
      'Hepsini senkronla\'nın neleri değiştireceğini ve kaç istek gerektirdiğini göster';

  @override
  String get syncPreviewTitle => 'Senkronlamaya hazır';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates güncelleme, $adds eklenecek';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Yaklaşık $count istek';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID\'nin önce aranması gerekiyor';
  }

  @override
  String get syncPreviewNothing => 'Değiştirilecek bir şey yok';

  @override
  String get syncStart => 'Başlat';

  @override
  String get syncRetry => 'Tekrar dene';

  @override
  String get syncSkip => 'Bu öğeyi atla';

  @override
  String get syncInclude => 'Bu öğeyi tekrar dahil et';

  @override
  String get syncSkippedLabel => 'Atlandı';

  @override
  String get syncChanges => 'Farklar';

  @override
  String get syncChangeStatus => 'Durum';

  @override
  String get syncChangeProgress => 'İlerleme';

  @override
  String get syncChangeScore => 'Puan';

  @override
  String get syncChangeDates => 'Tarihler';

  @override
  String get syncChangeRepeat => 'Yeniden izleme sayısı';

  @override
  String get syncFailedReason => 'Neden başarısız oldu';

  @override
  String get syncSkippedHint =>
      'Atlanan öğelere tekrar çekilse bile dokunulmaz';

  @override
  String get commentsRules => 'Yorum kuralları';

  @override
  String get commentsRulesBody =>
      'HERHANGİ BİR KURALI ÇİĞNERSEN UÇARSIN\n\n1. Irkçılık, ayrımcılık ya da nefret söylemi yok\n2. Spam ve kendini tanıtma yok\n3. Kesinlikle NSFW içerik yok\n4. Sadece İngilizce, istisna yok\n5. Taklit, taciz ya da hakaret yok\n6. Yasadışı içerik ya da herhangi bir fandoma aşırı saygısızlık yok\n7. Depo ya da uzantı isteme veya paylaşma\n8. Spoiler sadece spoiler etiketi ve uyarıyla\n9. Reşit olmayan karakterler hakkında cinselleştirici ya da uygunsuz yorum yok\n10. Yanlışsa paylaşma!';

  @override
  String get commentsRulesAccept => 'Anladım';

  @override
  String get commentsSortNewest => 'En yeni';

  @override
  String get commentsSortOldest => 'En eski';

  @override
  String get commentsSortHighest => 'En yüksek puanlı';

  @override
  String get commentsSortLowest => 'En düşük puanlı';

  @override
  String commentsEpisodeShort(int number) {
    return '$number. böl.';
  }

  @override
  String commentsChapterShort(int number) {
    return '$number. böl.';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Bölüme göre filtrele';

  @override
  String get commentsFilterChapterTitle => 'Bölüme göre filtrele';

  @override
  String get commentsFilterTagTitle => 'Bir bölüm numarası gir';

  @override
  String get commentsFilterHint => 'Numara';

  @override
  String get commentsFilterApply => 'Filtrele';

  @override
  String get commentsFilterClear => 'Hepsini göster';

  @override
  String get commentsPlaceholder => 'Yorum ekle…';

  @override
  String commentsReplyingTo(String name) {
    return '$name kişisine yanıt veriyorsun';
  }

  @override
  String get commentsSend => 'Gönder';

  @override
  String get commentsTagButton => 'Etiket';

  @override
  String commentsTagTitle(String label) {
    return '$label etiketi (isteğe bağlı)';
  }

  @override
  String get commentsTagEpisode => 'bölüm';

  @override
  String get commentsTagChapter => 'bölüm';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label numarası';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Etiket toplamı ($total) aşamaz';
  }

  @override
  String get commentsNoTag => 'Etiket yok';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF ara';

  @override
  String get commentsGifEmpty => 'GIF bulunamadı';

  @override
  String get commentsEmptyText => 'Yorum boş olamaz';

  @override
  String get commentsBannedYou => 'Yorum yapman yasaklandı';

  @override
  String get commentsEdited => 'Yorum düzenlendi';

  @override
  String get commentsDeleted => 'Yorum silindi';

  @override
  String get commentsDeletedPlaceholder => '[silindi]';

  @override
  String get commentsReported => 'Yorum bildirildi';

  @override
  String get commentsUserBanned => 'Kullanıcı yasaklandı';

  @override
  String get commentsReport => 'Bildir';

  @override
  String get commentsReportAsk => 'Bu yorum moderatörlere bildirilsin mi?';

  @override
  String get commentsDelete => 'Sil';

  @override
  String get commentsDeleteAsk => 'Bu yorum herkes için kaldırılacak.';

  @override
  String get commentsBan => 'Yasakla';

  @override
  String get commentsBanAsk => 'Bu kullanıcı yorum yapmaktan yasaklansın mı?';

  @override
  String get commentsCopy => 'Kopyala';

  @override
  String get commentsViewReply => '1 yanıtı gör';

  @override
  String commentsViewReplies(int count) {
    return '$count yanıtı gör';
  }

  @override
  String get commentsHideReplies => 'Yanıtları gizle';

  @override
  String get commentsLoadMore => 'Daha fazla yorum yükle';

  @override
  String get commentsEmpty => 'Henüz yorum yok. İlk yorumu sen yap!';

  @override
  String get commentsEmptyFiltered => 'Bu filtre için yorum yok';

  @override
  String get commentsSignIn =>
      'Yorumları okumak ve yazmak için AniList\'e giriş yap';

  @override
  String get commentsSignInMessage =>
      'Yorumlar tüm servisler arasında ortaktır ve AniList hesabını kullanır.';

  @override
  String get commentsUnavailable => 'Bu başlık için yorumlar kullanılamıyor';

  @override
  String get commentsUnavailableMessage =>
      'Bir AniList girişiyle eşleştirilemedi.';

  @override
  String get commentsDisabled => 'Yorumlar kapalı';

  @override
  String get commentsDisabledMessage =>
      'Ayarlar › Genel\'den tekrar açabilirsin.';

  @override
  String get commentsOffline => 'Yorumlar yüklenemedi';

  @override
  String get commentsSingleTitle => 'Tek yorum gösteriliyor';

  @override
  String get commentsShowAll => 'Tüm yorumları göster';

  @override
  String get commentsSettingsHeader => 'Yorumlar';

  @override
  String get commentsSettingEnabled => 'Yorumlar';

  @override
  String get commentsSettingEnabledDesc =>
      'Başlıklarda Yorumlar sekmesini göster ve yorum sunucusuna AniList hesabınla giriş yap';

  @override
  String get commentsSettingAlerts => 'Yanıt bildirimleri';

  @override
  String get commentsSettingAlertsDesc =>
      'Biri yorumlarıma yanıt verdiğinde haber ver';

  @override
  String get commentsNoticeReplyTitle => 'Yorumuna yeni yanıt';

  @override
  String commentsNoticeReply(String name) {
    return '$name yorumuna yanıt verdi';
  }

  @override
  String get commentsNoticeWarningTitle => 'Bir uyarı aldın';

  @override
  String get commentsNoticeWarning => 'Yorumlarında biraz daha dikkatli ol';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu\'dan güncelleme';

  @override
  String get barcodeTitle => 'Barkod tara';

  @override
  String get barcodeTooltip => 'Barkodundan bir manga ya da roman bul';

  @override
  String get barcodeIntro =>
      'Kamerayı bir cildin arkasındaki barkoda tut ya da ISBN\'sini yaz.';

  @override
  String get barcodeIntroManual =>
      'Bir cildin arkasındaki barkodun üstünde yazan ISBN\'yi yaz.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Bu geçerli bir ISBN değil';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn için kitap bulunamadı';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamera kullanılamıyor. Kamera erişimine izin ver ya da ISBN\'yi elle yaz.';

  @override
  String get themesTitle => 'Açılışlar ve kapanışlar';

  @override
  String get themesPlayVideo => 'Videoyu oynat';

  @override
  String get themesPlayAudio => 'Sadece sesi oynat';

  @override
  String get themesOpenSite => 'AnimeThemes\'te aç';

  @override
  String get themesCredit => 'AnimeThemes\'ten temalar';

  @override
  String get themesVersions => 'Versiyonlar';

  @override
  String get sauceTitle => 'Kaynağı bul';

  @override
  String get sauceIntro =>
      'Bir manga sayfası ya da çizim yükle veya bağlantısını yapıştır, nereden geldiğini bulalım.';

  @override
  String get sauceKeyTitle => 'SauceNAO API anahtarı';

  @override
  String get sauceKeyHint => 'İsteğe bağlı, günlük arama sınırını artırır';

  @override
  String get sauceKeyDesc =>
      'saucenao.com/user.php adresinden ücretsiz anahtar al';

  @override
  String get sauceOpen => 'Kaynağı aç';

  @override
  String get sauceCredit => 'SauceNAO ile görsel arama';

  @override
  String get sauceEmpty => 'Eşleşme bulunamadı';

  @override
  String get sauceTooltip => 'Bir manga sayfasının ya da çizimin kaynağını bul';

  @override
  String get trendzTitle => 'Anime listeleri';

  @override
  String get trendzAnime => 'anime';

  @override
  String get trendzFemale => 'Kadın karakterler';

  @override
  String get trendzMale => 'Erkek karakterler';

  @override
  String get trendzCouple => 'Çiftler';

  @override
  String get trendzCredit => 'AniTrendz\'den haftalık listeler';

  @override
  String get trendzNew => 'YENİ';

  @override
  String get trendzEmpty => 'Liste boş';

  @override
  String get shareCard => 'Kartı paylaş';

  @override
  String get shareCardList => 'Liste kartını paylaş';

  @override
  String get shareCardSaved => 'Kart kaydedildi';

  @override
  String get shareCardFailed => 'Kart oluşturulamadı';

  @override
  String get shareCardListEmpty => 'Listende henüz paylaşılacak bir şey yok';

  @override
  String get shareCardTop => 'En sevdiklerim';

  @override
  String themesEpisodes(String eps) {
    return 'Bölüm sayısı: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '%$percent eşleşme';
  }

  @override
  String trendzWeek(String week, String season) {
    return '$week. hafta · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count oy';
  }

  @override
  String trendzPeak(String rank) {
    return 'En yüksek #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'İlk onda $count hafta';
  }

  @override
  String get imageSearchTitle => 'Görselle ara';

  @override
  String get imageSearchTooltip => 'Ekran görüntüsünden anime bul';

  @override
  String get imageSearchIntro =>
      'Bir ekran görüntüsü seç ya da görsel bağlantısı yapıştır, trace.moe hangi bölümden ve hangi andan olduğunu bulsun.';

  @override
  String get imageSearchPick => 'Görsel seç';

  @override
  String get imageSearchLinkHint => 'Görsel bağlantısı yapıştır';

  @override
  String get imageSearchGo => 'Ara';

  @override
  String get imageSearchEmpty => 'Eşleşme bulunamadı';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return '$number. bölüm';
  }

  @override
  String imageSearchAt(String time) {
    return '$time anında';
  }

  @override
  String get imageSearchPreview => 'Klip önizlemesi';

  @override
  String imageSearchSimilarity(int percent) {
    return '%$percent eşleşme';
  }

  @override
  String get imageSearchCredit => 'trace.moe ile çalışır';

  @override
  String get imageSearchOpenFailed => 'Bu başlık açılamadı';

  @override
  String get groups => 'Gruplar';

  @override
  String get groupsYours => 'Gruplarım';

  @override
  String get groupsPopular => 'Popüler';

  @override
  String get groupsNew => 'Yeni';

  @override
  String get groupsFeatured => 'Öne çıkanlar';

  @override
  String get groupsSearch => 'Gruplarda ara';

  @override
  String get groupsAll => 'Hepsi';

  @override
  String get groupsEmpty => 'Grup bulunamadı';

  @override
  String get groupsEmptyYours => 'Henüz hiçbir gruba katılmadın';

  @override
  String get groupsSignIn => 'Katıldığın grupları görmek için giriş yap';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count üye',
      one: '1 üye',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Katıl';

  @override
  String get groupsJoined => 'Katıldın';

  @override
  String get groupsLeave => 'Gruptan ayrıl';

  @override
  String get groupsLeaveAsk =>
      'Bu grubun gönderilerini akışında görmeyeceksin.';

  @override
  String get groupsJoinFailed =>
      'Bu gruba katılamadık, sadece davetle olabilir';

  @override
  String get groupsLeaveFailed => 'Gruptan ayrılamadık';

  @override
  String get groupsPosts => 'Gönderiler';

  @override
  String get groupsMembersTab => 'Üyeler';

  @override
  String get groupsAbout => 'Hakkında';

  @override
  String get groupsRules => 'Kurallar';

  @override
  String get groupsPrivacyOpen => 'Açık';

  @override
  String get groupsPrivacyRestricted => 'Kısıtlı';

  @override
  String get groupsPrivacyClosed => 'Kapalı';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Yönetici';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Bu grup yüklenemedi';

  @override
  String get groupsNewPost => 'Gruba gönder';

  @override
  String get groupsPostHint => 'Grupla bir şey paylaş';

  @override
  String get groupsOpenInBrowser => 'Tarayıcıda aç';

  @override
  String get groupsCategory => 'Kategori';

  @override
  String get groupsLanguage => 'Dil';

  @override
  String get groupsCreated => 'Oluşturulma';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lider',
      one: '1 lider',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Gizlilik';

  @override
  String get notificationsAll => 'Hepsi';

  @override
  String get notificationsAiring => 'Yayında';

  @override
  String get notificationsMedia => 'Yeni başlıklar';

  @override
  String get notificationsReplies => 'Yanıtlar';

  @override
  String get notificationsMentions => 'Bahsetmeler';

  @override
  String get notificationsMessages => 'Mesajlar';

  @override
  String get notificationsLikes => 'Beğeniler';

  @override
  String get notificationsFollows => 'Takipler';

  @override
  String get notificationsNoServices =>
      'Giriş yapılan hiçbir serviste bildirim yok';

  @override
  String get notificationsNoServicesMessage =>
      'Bildirim gönderen bir servise giriş yap, bildirimler burada görünsün.';

  @override
  String get notificationsEmptyKind => 'Bu kategoride henüz bir şey yok';

  @override
  String get notificationsCommentsEmpty => 'Yorum bildirimi yok';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Yorumlarına gelen yanıtlar ve Dantotsu duyuruları burada görünür.';

  @override
  String get notificationsSettings => 'Bildirim ayarları';

  @override
  String get notificationsPollTitle => 'Yeni bildirimleri kontrol et';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Uygulama açıkken her $minutes dakikada bir';
  }

  @override
  String get notificationsNotifyAbout => 'Şunlar için bildir';

  @override
  String get notificationsCommentsHeader => 'Yorum bildirimleri';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Uygulama çalışırken okunmamış her $service bildirimi için sistem bildirimi göster.';
  }

  @override
  String get notificationsTestSent => 'Test bildirimi gönderildi';

  @override
  String get notificationsTestDenied =>
      'Dartotsu için bildirimlere izin verilmemiş. Sistem ayarlarından aç.';

  @override
  String get notificationsTestHint => 'Test bildirimi göndermek için uzun bas';

  @override
  String get notificationsTestSample => 'Bu bir test bildirimidir';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name, $media altındaki yorumuna yanıt verdi';
  }

  @override
  String get imageSearchNotLink => 'Bu bir bağlantıya benzemiyor';

  @override
  String get imageSearchQuota => 'Arama kotası aşıldı';

  @override
  String get imageSearchBusy => 'Çok fazla istek, birazdan tekrar dene';

  @override
  String imageSearchFailed(int code) {
    return 'Arama başarısız ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count yeni bildirim';
  }

  @override
  String get reactionsTitle => 'Tepkiler';

  @override
  String get reactionsNeedEntry =>
      'Tepki vermeden önce bu başlığı listene ekle';

  @override
  String get reactionsAdd => 'Tepki ekle';

  @override
  String get reactionsHint => 'Ne düşündün? (kısa ve spoilersız)';

  @override
  String get reactionsPost => 'Gönder';

  @override
  String get reactionsFailed => 'Tepki güncellenemedi';

  @override
  String get settingsWatch => 'İzle ve oku';

  @override
  String get settingsWatchDesc =>
      'Bölüm listeleri, kaynak eşleştirme ve bölüm ayrıntıları';

  @override
  String get watchSettingsLayout => 'Bölüm listesi';

  @override
  String get watchSettingsSources => 'Kaynaklar';

  @override
  String get watchSettingsMetadata => 'Bölüm ayrıntıları';

  @override
  String get watchLayout => 'Düzen';

  @override
  String get watchListView => 'Liste';

  @override
  String get watchGridView => 'Izgara';

  @override
  String get watchCompactView => 'Kompakt';

  @override
  String get watchDefaultLayoutDesc =>
      'Bir başlık için değiştirene kadar bölümlerin ve chapter\'ların nasıl düzenleneceği';

  @override
  String get watchChunkSize => 'Aralık boyutu';

  @override
  String get watchChunkSizeDesc => 'Her aralık sekmesinde kaç bölüm olacağı';

  @override
  String get watchShowDescription => 'Açıklamaları göster';

  @override
  String get watchShowDescriptionDesc =>
      'Liste düzeninde her başlığın altında bölüm özetini göster';

  @override
  String get watchShowFiller => 'Filler bölümleri göster';

  @override
  String get watchShowFillerDesc =>
      'Filler olarak işaretli bölümleri gizlemek için kapat';

  @override
  String get watchBlurUnwatched => 'Spoiler küçük resimlerini gizle';

  @override
  String get watchBlurUnwatchedDesc =>
      'Henüz izlemediğin bölümlerin küçük resmini bulanıklaştır';

  @override
  String get watchResumeShelf => 'Devam rafı';

  @override
  String get watchResumeShelfDesc => 'Ana sayfada Devam satırını göster';

  @override
  String get watchMarkOnLongPress => 'Uzun basınca ilerlemeyi işaretle';

  @override
  String get watchMarkOnLongPressDesc =>
      'Bir bölüme uzun basarak izlendi ya da izlenmedi olarak işaretle';

  @override
  String get watchMatching => 'Kaynak eşleştirme';

  @override
  String get watchMatchingDesc =>
      'En yakın, en iyi arama sonucunu alır. Sadece tam eşleşme ise neredeyse aynı başlığı kabul eder, gerisini seçmen için bırakır.';

  @override
  String get watchMatchClosest => 'En yakın eşleşme';

  @override
  String get watchMatchExact => 'Sadece tam eşleşme';

  @override
  String get watchMetadataDesc =>
      'Bölüm başlıklarının, özetlerinin, küçük resimlerinin, yayın tarihlerinin ve filler bilgisinin nereden geleceği. Önceliği ayarlamak için sürükle; değeri olan ilk kaynak kazanır.';

  @override
  String get watchMetaAniZipDesc =>
      'Bölüm başlıkları, özetler, görseller ve yayın tarihleri';

  @override
  String get watchMetaKitsuDesc =>
      'Bölüm başlıkları, açıklamalar ve küçük resimler';

  @override
  String get watchMetaSimklDesc =>
      'Bölüm başlıkları, açıklamalar, görseller ve yayın tarihleri';

  @override
  String get watchMetaAniListDesc =>
      'Yayın bölüm başlıkları, küçük resimler ve yayın takvimi';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai üzerinden MyAnimeList bölüm başlıkları, yayın tarihleri, filler ve recap bilgileri';

  @override
  String get watchClearMetadata => 'Bölüm ayrıntılarını yenile';

  @override
  String get watchClearMetadataDesc =>
      'Önbellekteki bölüm ayrıntılarını unut, tekrar çekilsin';

  @override
  String get watchMetadataCleared => 'Bölüm ayrıntıları tekrar çekilecek';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bölüm',
      one: '1 bölüm',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bölüm',
      one: '1 bölüm',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return '$number. bölüm';
  }

  @override
  String watchChapterNumber(String number) {
    return '$number. bölüm';
  }

  @override
  String get watchSearching => 'Aranıyor…';

  @override
  String watchSearchingFor(String term) {
    return 'Aranıyor: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Seçilen: $title';
  }

  @override
  String watchFound(String title) {
    return 'Bulundu: $title';
  }

  @override
  String get watchNothingFound => 'Bu kaynakta bir şey bulunamadı';

  @override
  String get watchSearchFailed => 'Kaynak araması başarısız';

  @override
  String get watchLoadFailed => 'Liste yüklenemedi';

  @override
  String get watchSignInToTrack => 'İlerlemeni takip etmek için giriş yap';

  @override
  String watchInstallSource(String action) {
    return '$action için bir uzantı yükle';
  }

  @override
  String get watchSourceMissing => 'Bu kaynak yüklü değil';

  @override
  String get watchWrongTitle => 'Yanlış başlık mı?';

  @override
  String get watchSearchAgain => 'Tekrar ara';

  @override
  String watchSearchSource(String source) {
    return '$source içinde ara';
  }

  @override
  String get watchSource => 'Kaynak';

  @override
  String get sourceTags => 'Etiketler';

  @override
  String get sourceTagsHint =>
      'Bu kaynağın ne işe yaradığını etiketleyin. Bir başlık, önce kendisi için etiketlenen kaynakları, ardından etiketlenmemiş olanları listeler. 18\'den fazla kaynak yalnızca yetişkinlere yönelik başlıklar için gösterilir.';

  @override
  String get sourceTagAnime => 'anime';

  @override
  String get sourceTagMovies => 'Filmler ve Diziler';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Etiketlerle gizlendi';

  @override
  String get watchOptions => 'Seçenekler';

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
  String get watchReverse => 'Ters sırala';

  @override
  String get watchScanlators => 'Gruplar';

  @override
  String get watchResetOptions => 'Bu seçenekleri sıfırla';

  @override
  String get watchContinue => 'Devam et';

  @override
  String get watchStart => 'Başla';

  @override
  String get watchPlay => 'Oynat';

  @override
  String get watchRead => 'Oku';

  @override
  String get watchMarkWatched => 'İzlendi olarak işaretle';

  @override
  String get watchMarkUnwatched => 'İzlenmedi olarak işaretle';

  @override
  String get watchMarkRead => 'Okundu olarak işaretle';

  @override
  String get watchMarkUnread => 'Okunmadı olarak işaretle';

  @override
  String get watchFiller => 'Dolgu';

  @override
  String get watchRecap => 'Özet';

  @override
  String get watchNoEpisodes => 'Bölüm bulunamadı';

  @override
  String get watchNoChapters => 'Bölüm bulunamadı';

  @override
  String get watchSourceTools => 'Kaynak araçları';

  @override
  String get watchSourceSettings => 'Kaynak ayarları';

  @override
  String get watchOpenWebView => 'Web görünümünde aç';

  @override
  String get watchOpenWebViewDesc =>
      'Bir Cloudflare kontrolünü çöz ya da giriş yap; çerezler kaynak istekleriyle paylaşılır';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host için $count çerez kayıtlı',
      one: '$host için 1 çerez kayıtlı',
      zero: '$host için kayıtlı çerez yok',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare izni aktif, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare izin çerezi yok';

  @override
  String get watchClearanceSession => 'uygulama kapanana kadar geçerli';

  @override
  String get watchAgentShared =>
      'İstekler, Cloudflare\'in kontrol ettiği web görünümü user agent\'ını kullanır';

  @override
  String get watchAgentCustom =>
      'Özel bir user agent ayarlı, bu yüzden web görünümünden alınan Cloudflare izni reddedilebilir';

  @override
  String get watchTestConnection => 'Bağlantıyı dene';

  @override
  String get watchSolveChallenge => 'Çöz';

  @override
  String watchProbeOk(int code) {
    return 'Ulaşılabilir (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare hâlâ kontrol istiyor';

  @override
  String watchProbeBlocked(int code) {
    return 'Site tarafından engellendi (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Siteye ulaşılamadı';

  @override
  String get watchClearCookies => 'Bu site için çerezleri temizle';

  @override
  String get watchCookiesCleared => 'Çerezler temizlendi';

  @override
  String get watchFailTimeout => 'Denetim zamanında tamamlanmadı';

  @override
  String get watchFailBlocked =>
      'Site bu cihazı engelledi (erişim reddedildi). Bir çek yardımcı olmaz';

  @override
  String get watchFailTurnstile =>
      'Bu kontrolün arka planda çözümleyicinin yapamayacağı bir dokunuşa ihtiyacı var';

  @override
  String get watchFailLoad =>
      'Sayfa yüklenmedi. Bağlantıyı ve site adresini kontrol edin';

  @override
  String get watchFailRejected =>
      'Site az önce verdiği izni reddetti. Tekrar deneyin veya çerezleri temizleyin';

  @override
  String get watchFailDismissed => 'Çek bitmeden kapatıldı';

  @override
  String get watchFailCooldown =>
      'Çeki az önce kapattın. Tekrar denemek için Çöz\'e basın';

  @override
  String get watchFailQuiet =>
      'Çekin size ihtiyacı var ve uygulama kendi kendine çalışıyordu';

  @override
  String get watchFailWebView => 'Arka plan web görünümü başlatılamadı';

  @override
  String get watchFailUnavailable => 'Kontrolü gösterecek ekran yok';

  @override
  String get watchStatusReady => 'Hazır';

  @override
  String get watchStatusChallenge => 'Cloudflare kontrolü gerekli';

  @override
  String get watchStatusBlocked => 'Site tarafından engellendi';

  @override
  String get watchStatusOffline => 'Siteye ulaşılamıyor';

  @override
  String get watchStatusUntested => 'Henüz test edilmedi';

  @override
  String get watchStatusTesting => 'Bağlantı test ediliyor…';

  @override
  String get watchStatusSolving => 'Cloudflare kontrolünü geçmek…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare kontrolü arka planda geçti ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare kontrolü başarılı oldu';

  @override
  String watchClearanceIssued(String time) {
    return 'kazanılan $time';
  }

  @override
  String get watchClearanceStale =>
      'İzin başka bir kullanıcı aracısıyla kazanıldığı için gönderilmedi. Yenisini almak için bağlantıyı test edin';

  @override
  String get watchSectionConnection => 'Bağlantı';

  @override
  String get watchSectionSession => 'Oturum';

  @override
  String get watchSectionTools => 'Araçlar';

  @override
  String get watchMetaSource => 'Bölüm ayrıntıları şuradan';

  @override
  String get watchMetaAuto => 'Otomatik';

  @override
  String get watchMetaOff => 'Kapalı';

  @override
  String get playerSettingsTitle => 'Oynatıcı ayarları';

  @override
  String get playerSectionPlayback => 'Oynatma';

  @override
  String get playerSectionSkip => 'Atlama';

  @override
  String get playerSectionGestures => 'Kontroller';

  @override
  String get playerSectionSubtitles => 'Altyazılar';

  @override
  String get playerSectionShaders => 'Shader\'lar';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Oynatma hızı';

  @override
  String get localSource => 'Yerel dosyalar';

  @override
  String get localMissing =>
      'Bu dosya veya klasör artık Yerel klasörünüzde değil';

  @override
  String get playerStickyStage => 'Yapışkan video';

  @override
  String get playerStickyStageDesc =>
      'Aşağıdaki bölümleri ve yorumları kaydırırken videoyu üstte sabit tutun';

  @override
  String get playerCursedSpeed => 'Ekstra hızlar';

  @override
  String get playerCursedSpeedDesc => 'Listeye 10x\'e kadar hızlar ekle';

  @override
  String get playerResize => 'Yeniden boyutlandırma modu';

  @override
  String get playerFitFit => 'Sığdır';

  @override
  String get playerFitCover => 'Kapla';

  @override
  String get playerFitStretch => 'Uzat';

  @override
  String get playerSkipDuration => 'Atlama butonu süresi';

  @override
  String get playerSkipDurationDesc =>
      'Atlama butonunun açılış ve kapanışlar dışında kaç saniye atlayacağı';

  @override
  String get playerSeekDuration => 'Çift dokunarak ileri/geri sar';

  @override
  String get playerSeekDurationDesc =>
      'Çift dokunuşta ya da ok tuşunda atlanacak saniye';

  @override
  String get playerAutoPlay => 'Sonrakini otomatik oynat';

  @override
  String get playerAutoPlayDesc => 'Bu bölüm bitince sonraki bölümü başlat';

  @override
  String get playerResume => 'Kaldığın yerden devam et';

  @override
  String get playerResumeDesc => 'Bir bölümü son konumundan sürdür';

  @override
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

  @override
  String get playerOrientation => 'Yön';

  @override
  String get playerOrientationAuto => 'Cihazı takip et';

  @override
  String get playerOrientationLandscape => 'Yatay';

  @override
  String get playerOrientationPortrait => 'Dikey';

  @override
  String get playerAutoSkipOpening => 'Açılışları atla';

  @override
  String get playerAutoSkipEnding => 'Kapanışları atla';

  @override
  String get playerAutoSkipRecap => 'Recap\'leri atla';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip ve yayın zaman damgalarını kullanarak başlar başlamaz atla';

  @override
  String get playerDisableSkips => 'Atlamaları devre dışı bırak';

  @override
  String get playerDisableSkipsDesc =>
      'Oynatıcıda AniSkip veya akış zaman damgaları, bölüm işaretleri veya atlama gönderimleri yok';

  @override
  String get playerSkipOnce => 'Sadece bir kez atla';

  @override
  String get playerSkipOnceDesc =>
      'Geri sarıp aynı kısma dönersen tekrar atlama';

  @override
  String get playerAdjustBrightness => 'Parlaklık hareketi';

  @override
  String get playerAdjustBrightnessDesc =>
      'Ekranın sağ yarısında yukarı aşağı kaydır';

  @override
  String get playerAdjustVolume => 'Ses hareketi';

  @override
  String get playerAdjustVolumeDesc =>
      'Ekranın sol yarısında yukarı aşağı kaydır';

  @override
  String get playerHoldToSpeed => 'Basılı tutarak hızlandır';

  @override
  String get playerHoldToSpeedDesc =>
      'Videoyu daha hızlı oynatmak için basılı tut, hızı değiştirmek için yana sürükle';

  @override
  String get playerThumbless => 'Daha kalın ilerleme çubuğu';

  @override
  String get playerThumblessDesc => 'Tutamaçsız kalın bir çubuk';

  @override
  String get playerShowSubtitles => 'Altyazıları göster';

  @override
  String get playerShowSubtitlesDesc =>
      'Tüm altyazı izlerini gizlemek için kapat';

  @override
  String get playerSubtitleLanguage => 'Tercih edilen altyazı dili';

  @override
  String get playerSubtitleSize => 'Altyazı boyutu';

  @override
  String get playerSubtitleWeight => 'Altyazı kalınlığı';

  @override
  String get playerSubtitleBottom => 'Altyazı alt boşluğu';

  @override
  String get playerSubtitleFont => 'Altyazı yazı tipi';

  @override
  String get playerSubtitleColor => 'Altyazı rengi';

  @override
  String get playerSubtitleBackground => 'Altyazı arka planı';

  @override
  String get playerSubtitleOutline => 'Altyazı dış çizgisi';

  @override
  String get playerSubtitleOutlineWidth => 'Altyazı anahat genişliği';

  @override
  String get playerSubtitlePreview => 'Altyazı önizlemesi';

  @override
  String get playerSubtitlePreviewText => 'Altyazı önizleme metni';

  @override
  String get playerLibass => 'libass kullan';

  @override
  String get playerLibassDesc =>
      'Stilli .ass altyazılarını işle. Bu durumda yukarıdaki boyut, renk ve yazı tipi geçerli olmaz';

  @override
  String get playerShaders => 'Shader\'lar';

  @override
  String get playerShadersEnable => 'Shader\'ları etkinleştir';

  @override
  String get playerShadersEnableDesc =>
      'Görüntüyü Anime4K gibi GLSL shader\'larla büyüt ve temizle';

  @override
  String get playerShadersOff => 'Shader\'lar kapalı';

  @override
  String get playerShadersMissing => 'Anime4K yüklü değil';

  @override
  String get playerShadersMissingDesc =>
      'Yerleşik modları kullanmak için Anime4K shader paketini indir (yaklaşık 0,8 MB).';

  @override
  String get playerShadersDownload => 'Anime4K\'yı indir';

  @override
  String get playerPictureSave => 'Bu çerçeveyi kaydet';

  @override
  String get playerPictureOriginal => 'Orijinal';

  @override
  String get playerPictureOriginalDesc =>
      'Videodaki çerçeve, gölgelendiriciler veya renkler olmadan';

  @override
  String get playerPictureProcessed => 'Gölgelendiriciler ve renklerle';

  @override
  String get playerPictureProcessedDesc => 'Şimdi gördüğünüz çerçeve';

  @override
  String get playerPictureSaved => 'Çerçeve kaydedildi';

  @override
  String get playerPictureSaveFailed => 'Çerçeve kaydedilemedi';

  @override
  String get playerShadersPreview => 'Bu karede önizle';

  @override
  String get playerShadersUse => 'Bunu kullan';

  @override
  String get playerPicture => 'Görüntü';

  @override
  String get playerColors => 'Renkler';

  @override
  String get playerColorDefault => 'Varsayılan';

  @override
  String get playerColorVivid => 'Canlı';

  @override
  String get playerColorPop => 'Anime popu';

  @override
  String get playerColorSoft => 'Yumuşak';

  @override
  String get playerColorCinematic => 'Sinematik';

  @override
  String get playerColorBright => 'Parlak';

  @override
  String get playerColorNight => 'Gece';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Özel';

  @override
  String get playerColorBrightness => 'Parlaklık';

  @override
  String get playerColorContrast => 'Kontrast';

  @override
  String get playerColorSaturation => 'Doygunluk';

  @override
  String get playerColorGamma => 'Gama';

  @override
  String get playerColorHue => 'Ton';

  @override
  String get playerColorReset => 'Sıfırla';

  @override
  String get playerColorAdjust => 'Ayarla';

  @override
  String get playerShadersOriginal => 'Orijinal';

  @override
  String get playerShadersPreviewFailed => 'Önizleme için kare alınamadı';

  @override
  String get playerShadersSoftware =>
      'Gölgelendiricilerin donanımla oluşturmaya ihtiyacı var ve oynatıcı yazılımla oluşturmayı kullanıyor. Oynatıcı ayarlarında Yazılım oluşturmayı kapatın.';

  @override
  String get playerSoftwareRender => 'Yazılım oluşturma';

  @override
  String get playerSoftwareRenderDesc =>
      'Yalnızca siyah bir video için. Gölgelendiriciler onunla çalışmıyor. Oynatıcının bir sonraki açılışında uygulanır';

  @override
  String get playerShadersCustomFiles => 'Shader\'larını';

  @override
  String get playerShadersCustom => 'Özel shader\'lar';

  @override
  String get playerShadersImport => '.glsl içe aktar';

  @override
  String get playerShadersNone =>
      'Kendi .glsl ya da .hook dosyalarını içe aktar ve zincirlemek için işaretle';

  @override
  String get playerShadersBadFile => 'Bir .glsl ya da .hook shader dosyası seç';

  @override
  String get playerDecoder => 'Kod çözücü';

  @override
  String get playerDecoderAuto => 'Otomatik';

  @override
  String get playerDecoderAutoSafe => 'Otomatik (güvenli)';

  @override
  String get playerDecoderSoftware => 'Yazılım';

  @override
  String get playerDecoderHardware => 'Donanım';

  @override
  String get playerDecoderHardwarePlus => 'Donanım+';

  @override
  String get playerVideoOutput => 'Video çıkışı';

  @override
  String get playerAudioChannels => 'Ses kanalları';

  @override
  String get playerBuffer => 'Arabellek boyutu (MB)';

  @override
  String get playerBufferDesc =>
      'Oynatıcının bir yayını tamponlamak için kullanabileceği bellek';

  @override
  String get playerUseMpvConf => 'mpv.conf kullan';

  @override
  String get playerUseMpvConfDesc =>
      'Oynatma başlarken mpv.conf dosyandaki seçenekleri uygula';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv yapılandırmasını düzenle';

  @override
  String get playerMpvConfDesc =>
      'Satır başına bir seçenek, normal bir mpv.conf\'taki --hwdec=auto gibi. [Köşeli parantez] içindeki profiller yok sayılır.';

  @override
  String get playerMpvConfSaved => 'mpv.conf kaydedildi';

  @override
  String get playerUseScripts => 'mpv betiklerini kullan';

  @override
  String get playerUseScriptsDesc =>
      'Scripts klasöründeki eklentileri yükle. Lua ya da JavaScript destekli bir libmpv sürümü gerekir';

  @override
  String get playerScripts => 'mpv betikleri';

  @override
  String get playerScriptsManage => 'Eklenti ekle, kaldır ve aç/kapat';

  @override
  String get playerScriptsAdd => 'Betik ekle';

  @override
  String get playerScriptsDesc =>
      'Buraya koyduğun Lua, JavaScript ve yerel eklentiler oynatma başlarken yüklenir.';

  @override
  String get playerScriptsNone => 'Henüz betik yok';

  @override
  String get playerScriptsBadFile =>
      'Bir .lua, .js ya da yerel eklenti dosyası seç';

  @override
  String get playerTuning => 'Gelişmiş video ayarı';

  @override
  String get playerTuningDesc =>
      'Senkronizasyonu, önbelleği, ölçeklemeyi ve ton eşlemeyi geçersiz kıl. Yanlış değerler oynatmayı bozabilir';

  @override
  String get playerVideoSync => 'Video senkronu';

  @override
  String get playerInterpolation => 'Kare ara değerleme';

  @override
  String get playerInterpolationDesc =>
      'Akıcı hareket, display-resample senkronu gerekir';

  @override
  String get playerPitch => 'Perde düzeltme';

  @override
  String get playerPitchDesc => 'Diğer hızlarda sesleri doğal tut';

  @override
  String get playerCacheSeconds => 'Önbellek (saniye)';

  @override
  String get playerReadahead => 'İleri okuma (saniye)';

  @override
  String get playerThreads => 'Kod çözücü thread\'leri';

  @override
  String get playerDeband => 'Banttan çıkarma';

  @override
  String get playerDebandDesc => 'Gradyanlardaki renk bantlaşmasını azalt';

  @override
  String get playerDebandIterations => 'Deband yinelemeleri';

  @override
  String get playerDebandThreshold => 'Deband eşiği';

  @override
  String get playerCorrectDownscaling => 'Doğru küçültme';

  @override
  String get playerSigmoid => 'Sigmoid büyütme';

  @override
  String get playerScale => 'Büyütücü';

  @override
  String get playerCscale => 'Chroma büyütücü';

  @override
  String get playerDscale => 'Küçültücü';

  @override
  String get playerToneMapping => 'Ton eşleme';

  @override
  String get playerTargetPeak => 'Hedef tepe';

  @override
  String get playerOpenFiles => 'Video dosyalarını aç';

  @override
  String get playerOpenFilesDesc => 'Bu cihazdaki dosyaları oynat';

  @override
  String get playerOpenFolder => 'Klasör aç';

  @override
  String get playerOpenFolderDesc =>
      'Bir klasördeki tüm videoları oynatma listesi olarak oynat';

  @override
  String get playerNetworkStream => 'Ağ yayını';

  @override
  String get playerNetworkStreamDesc =>
      'Doğrudan video ya da HLS bağlantısı aç';

  @override
  String get playerStreamUrl => 'Yayın URL\'si';

  @override
  String get playerStreamReferer => 'Referer (isteğe bağlı)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Bir magnet bağlantısını ya da .torrent dosyasını yayınla';

  @override
  String get playerMagnetLink => 'Magnet bağlantısı ya da torrent URL\'si';

  @override
  String get playerPickTorrent => 'Bir .torrent dosyası seç';

  @override
  String get playerTorrentMissing =>
      'Önce Ayarlar > Eklentiler\'den torrent eklentisini yükle';

  @override
  String get playerNoVideos => 'Oynatılabilir video bulunamadı';

  @override
  String get playerReset => 'Oynatıcı ayarlarını sıfırla';

  @override
  String get playerResetDesc => 'Tüm oynatıcı seçeneklerini varsayılana döndür';

  @override
  String get playerResetConfirm => 'Tüm oynatıcı ayarları sıfırlansın mı?';

  @override
  String get playerResetDone => 'Oynatıcı ayarları sıfırlandı';

  @override
  String get playerQuality => 'Kalite';

  @override
  String get streamGroupSub => 'Alt';

  @override
  String get streamGroupHardSub => 'Sert Alt';

  @override
  String get streamGroupSoftSub => 'Yumuşak Alt';

  @override
  String get streamGroupDub => 'Dublaj';

  @override
  String get streamGroupRaw => 'Ham';

  @override
  String get streamGroupOther => 'Diğer';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count akışları',
      one: '1 akış',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Yayınlar';

  @override
  String get playerStreamFailedNext =>
      'Bu yayın oynatılmıyor, sonraki yayın deneniyor';

  @override
  String get playerAutoSelect => 'Yayını otomatik seç';

  @override
  String get playerAutoSelectDesc =>
      'Bu başlık için son seçimine en çok benzeyen yayını seç';

  @override
  String get playerLoadingStreams => 'Yayınlar aranıyor…';

  @override
  String get playerNoStreams => 'Bu bölümün yayını yok';

  @override
  String get playerNoStreamsTitle => 'Yayın bulunamadı';

  @override
  String get playerFailed => 'Oynatma başarısız';

  @override
  String get playerTorrentNeeded => 'Bu yayın bir torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Magnet bağlantılarını ve .torrent dosyalarını oynatmak için torrent eklentisini yükle';

  @override
  String get playerOpenAddons => 'Eklentileri aç';

  @override
  String get playerTryAnotherStream => 'Başka bir yayın dene';

  @override
  String get playerEpisodes => 'Bölümler';

  @override
  String get playerLock => 'Kontrolleri kilitle';

  @override
  String get playerFullscreen => 'Tam ekran';

  @override
  String get readerChapters => 'Bölümler';

  @override
  String get readerSettingsTitle => 'Okuyucu ayarları';

  @override
  String get readerPreviousChapter => 'Önceki bölüm';

  @override
  String get readerNextChapter => 'Sonraki bölüm';

  @override
  String get readerFirstChapter => 'Bu ilk bölüm';

  @override
  String get readerLastChapter => 'Hepsini okudun';

  @override
  String get readerFailed => 'Bu bölüm açılamadı';

  @override
  String get readerOpenBook => 'Bir kitap aç';

  @override
  String get readerOpenBookDesc =>
      'Dosyalarınızdan bir epub (roman okuyucu) veya PDF (manga okuyucu) okuyun';

  @override
  String get readerNoText => 'Bu bölümde metin yok';

  @override
  String get readerPerTitle => 'Sadece bu başlık için';

  @override
  String get readerPerTitleDesc =>
      'Bu okuyucu ayarlarını sadece bu başlık için tut';

  @override
  String get readerSectionReading => 'Okuma';

  @override
  String get readerSectionControls => 'Kontroller';

  @override
  String get readerSectionDisplay => 'Ekran';

  @override
  String get readerSectionNovel => 'Roman';

  @override
  String get readerMode => 'Okuma modu';

  @override
  String get readerModeAuto => 'Otomatik (seri türüne göre)';

  @override
  String get readerModeRtl => 'Sağdan sola';

  @override
  String get readerModeLtr => 'Soldan sağa';

  @override
  String get readerModeVertical => 'Dikey sayfalar';

  @override
  String get readerModeWebtoon => 'Web çizgi filmi';

  @override
  String get readerModeContinuous => 'Sürekli kaydırma';

  @override
  String get readerScale => 'Görsel ölçeği';

  @override
  String get readerScaleFit => 'Ekrana sığdır';

  @override
  String get readerScaleWidth => 'Genişliğe sığdır';

  @override
  String get readerScaleHeight => 'Yüksekliğe sığdır';

  @override
  String get readerScaleOriginal => 'Orijinal boyut';

  @override
  String get readerScaleSmart => 'Akıllı sığdırma';

  @override
  String get readerDoublePage => 'Çift sayfa';

  @override
  String get readerDoublePageDesc => 'Yatay modda iki sayfayı yan yana göster';

  @override
  String get readerDoubleTapZoom => 'Çift dokunarak yakınlaştır';

  @override
  String get readerDoubleTapZoomDesc =>
      'Bir sayfayı çift dokunuşla yakınlaştır ve uzaklaştır';

  @override
  String get readerAnimate => 'Sayfa animasyonu';

  @override
  String get readerAnimateDesc => 'Sayfa çevirmeyi canlandır';

  @override
  String get readerSidePadding => 'Yan boşluk';

  @override
  String get readerSidePaddingDesc =>
      'Sayfaların yanındaki boşluk, yüzde olarak';

  @override
  String get readerPageGap => 'Sayfa aralığı';

  @override
  String get readerPageGapDesc => 'Sayfalar arasındaki boşluk';

  @override
  String get readerAutoNext => 'Sonraki bölüme devam et';

  @override
  String get readerAutoNextDesc =>
      'Bu bölümün sonunu okurken sonraki bölümü yükle';

  @override
  String get readerPreload => 'Sayfaları önceden yükle';

  @override
  String get readerPreloadDesc => 'Kaç sayfanın önceden indirileceği';

  @override
  String get readerTapZones => 'Dokunma bölgeleri';

  @override
  String get readerTapDefault => 'Varsayılan';

  @override
  String get readerTapLShaped => 'L şeklinde';

  @override
  String get readerTapKindle => 'Kindle gibi';

  @override
  String get readerTapEdge => 'Sadece kenarlar';

  @override
  String get readerTapOff => 'Devre dışı';

  @override
  String get readerInvertTaps => 'Dokunma bölgelerini ters çevir';

  @override
  String get readerInvertTapsDesc => 'Önceki ve sonraki alanları değiştir';

  @override
  String get readerBackground => 'Arka plan';

  @override
  String get readerBackgroundBlack => 'Siyah';

  @override
  String get readerBackgroundGray => 'Gri';

  @override
  String get readerBackgroundWhite => 'Beyaz';

  @override
  String get readerBackgroundTheme => 'Uygulama teması';

  @override
  String get readerFilter => 'Renk filtresi';

  @override
  String get readerFilterNone => 'Yok';

  @override
  String get readerFilterGrayscale => 'Gri tonlama';

  @override
  String get readerFilterInvert => 'Ters çevir';

  @override
  String get readerFilterSepia => 'Sepya';

  @override
  String get readerFilterQuality => 'Görüntü filtresi kalitesi';

  @override
  String get readerFilterQualityNone => 'Yok (En yakın komşu)';

  @override
  String get readerFilterQualityLow => 'Düşük (Çift Doğrusal)';

  @override
  String get readerFilterQualityMedium => 'Orta (Üç çizgili)';

  @override
  String get readerFilterQualityHigh => 'Yüksek (Bikübik)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Yüksek kaliteli pas)';

  @override
  String get readerDim => 'Kıs';

  @override
  String get readerDimDesc => 'Sayfaları karart';

  @override
  String get readerPageNumber => 'Sayfa numarası';

  @override
  String get readerPageNumberDesc => 'Okurken sayfa numarasını göster';

  @override
  String get readerFullscreen => 'Tam ekran';

  @override
  String get readerFullscreenDesc => 'Sistem çubuklarını gizle';

  @override
  String get readerCropBorders => 'Kenarları kırp';

  @override
  String get readerCropBordersDesc =>
      'Sayfalardaki boş beyaz ya da siyah kenarları kes';

  @override
  String get readerLongPressSave => 'Kaydetmek için bir sayfayı basılı tutun';

  @override
  String get readerLongPressSaveDesc =>
      'Kaydetme, paylaşma ve kopyalama seçeneklerini açmak için bir sayfaya uzun basın';

  @override
  String get readerVolumeKeys => 'Ses tuşları sayfa çevirir';

  @override
  String get readerVolumeKeysDesc => 'Ses kısma ileri gider, ses açma geri';

  @override
  String get readerBookmarks => 'Yer imleri';

  @override
  String get readerBookmarkAdd => 'Yer imi ekle';

  @override
  String get readerBookmarkRemove => 'Yer imini kaldır';

  @override
  String get readerBookmarksEmpty => 'Henüz yer imi yok';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Sayfa $page / $total';
  }

  @override
  String get readerAutoScroll => 'Otomatik kaydırma';

  @override
  String get readerAutoScrollStop => 'Otomatik kaydırmayı durdur';

  @override
  String get readerAutoScrollSpeed => 'Otomatik kaydırma hızı';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Sayfaların kendiliğinden ne kadar hızlı kayacağı ya da döneceği';

  @override
  String get readerKeepOn => 'Ekranı açık tut';

  @override
  String get readerKeepOnDesc => 'Okurken ekranın kapanmasını engelle';

  @override
  String get readerOrientation => 'Yön';

  @override
  String get readerOrientationFree => 'Serbest';

  @override
  String get readerOrientationPortrait => 'Dikey';

  @override
  String get readerOrientationLandscape => 'Yatay';

  @override
  String get readerSaveProgress => 'İlerlemeyi kaydet';

  @override
  String get readerSaveProgressDesc =>
      'Sayfanı hatırla ve bölümleri okundu olarak işaretle';

  @override
  String get readerReset => 'Okuyucu ayarlarını sıfırla';

  @override
  String get readerResetDesc => 'Varsayılanlara dön';

  @override
  String get readerResetConfirm =>
      'Her okuyucu ayarı varsayılana sıfırlansın mı?';

  @override
  String get novelSize => 'Metin boyutu';

  @override
  String get novelFont => 'Yazı tipi';

  @override
  String get novelLineHeight => 'Satır yüksekliği';

  @override
  String get novelParagraph => 'Paragraf aralığı';

  @override
  String get novelMargin => 'Kenar boşlukları';

  @override
  String get novelTheme => 'Okuyucu teması';

  @override
  String get novelThemeApp => 'Uygulama teması';

  @override
  String get novelThemeLight => 'Açık';

  @override
  String get novelThemeSepia => 'Sepya';

  @override
  String get novelThemeDark => 'Koyu';

  @override
  String get novelThemeBlack => 'Siyah';

  @override
  String get novelJustify => 'Metni yasla';

  @override
  String get novelJustifyDesc => 'Metni iki kenara hizala';

  @override
  String get trackProgressTitle => 'İlerleme kaydedilsin mi?';

  @override
  String trackProgressAnime(String name) {
    return 'İzledikçe $name listende takip edilsin mi? Sadece bu cihazda tutmak için \"Sadece bu cihaz\"ı, hiçbir şey kaydetmemek için Hayır\'ı seç.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Bir bölümü bitirdiğinde $name listende takip edilsin mi? Sadece bu cihazda tutmak için \"Sadece bu cihaz\"ı, hiçbir şey kaydetmemek için Hayır\'ı seç.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return '$name\'daki ilerlemeniz izlerken bu cihazdaki listenize kaydedilsin mi?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Bir bölümü bitirdiğinizde $name\'daki ilerlemeniz bu cihazdaki listenize kaydedilsin mi?';
  }

  @override
  String get downloadClearQueue => 'Sırayı temizle';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Kuyruktaki tüm $count indirmeleri iptal edilsin mi? Daha önce indirilenler silinir.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count seçildi';
  }

  @override
  String get downloadSelectAll => 'Tümünü seç';

  @override
  String get downloadDeleteSelected => 'Seçileni sil';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count indirilenler silinsin mi? Dosyaları cihazdan kaldırılır.';
  }

  @override
  String get castTitle => 'Cihaza yayınla';

  @override
  String get castSearching => 'Ağınızdaki cihazlar aranıyor…';

  @override
  String get castNoDevices =>
      'Hiçbir cihaz bulunamadı. TV\'nin veya Chromecast\'in aynı kablosuz ağa bağlı olduğundan emin olun ve ardından tekrar arayın.';

  @override
  String get castRefresh => 'Tekrar ara';

  @override
  String get castFailed => 'Döküm başlatılamadı';

  @override
  String get castStop => 'Yayınlamayı durdur';

  @override
  String castNowCasting(String name) {
    return '$name\'a yayınlanıyor';
  }

  @override
  String get castProtocolChromecast => 'Chromecast\'in';

  @override
  String get castProtocolDlna => 'DLNA / Akıllı TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku konumu bildiremez veya değiştiremez';

  @override
  String get castControls => 'Kontroller';

  @override
  String get castVolume => 'TV ses seviyesi';

  @override
  String castSkipPart(String name) {
    return '$name atla';
  }

  @override
  String get trackProgressRememberSeries => 'Bu seriyi unutmayın';

  @override
  String get trackProgressYes => 'Kaydet';

  @override
  String get trackProgressReset =>
      'Bu tür için ilerleme kaydetme sorusu sıfırlandı, tekrar sorulacak';

  @override
  String get trackProgressNo => 'Hayır';

  @override
  String get trackProgressOff => 'Kapalı';

  @override
  String get trackProgressLocal => 'Sadece bu cihaz';

  @override
  String get trackProgressSettingAnime => 'Anime ilerlemesini takip et';

  @override
  String get trackProgressSettingManga =>
      'Manga ve roman ilerlemesini takip et';

  @override
  String get trackProgressSettingDesc =>
      'Bir bölümü açtığında ya da bir chapter\'ı bitirdiğinde ne yapılacağı';

  @override
  String get trackProgressAsk => 'Sor';

  @override
  String get trackProgressAlways => 'Her zaman';

  @override
  String get dantotsuImport => 'Dantotsu\'dan içe aktar';

  @override
  String get dantotsuImportDesc =>
      'Bir Dantotsu ayar yedeğini oku (.ani ya da şifreli .sani)';

  @override
  String get dantotsuPick => 'Bir Dantotsu yedeği seç';

  @override
  String get dantotsuNothing => 'Bu dosyada içe aktarılabilecek bir şey yok';

  @override
  String get dantotsuApply => 'Seçilenleri içe aktar';

  @override
  String dantotsuDone(int done, int total) {
    return '$total içinden $done içe aktarıldı';
  }

  @override
  String get dantotsuGroupAccounts => 'Hesaplar';

  @override
  String get dantotsuGroupAppearance => 'Görünüm';

  @override
  String get dantotsuGroupExtensions => 'Uzantılar';

  @override
  String get dantotsuGroupApp => 'Uygulama';

  @override
  String get dantotsuGroupPlayer => 'Oynatıcı';

  @override
  String get dantotsuAnilist => 'AniList girişi';

  @override
  String get dantotsuMal => 'MyAnimeList girişi';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence token\'ı';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get dantotsuReposAnime => 'Anime uzantı depoları';

  @override
  String get dantotsuReposManga => 'Manga uzantı depoları';

  @override
  String get dantotsuReposNovel => 'Roman uzantı depoları';

  @override
  String get dantotsuUpdates => 'Güncelleme kontrolü';

  @override
  String get dantotsuComments => 'Yorumlar';

  @override
  String get dantotsuActivity => 'AniList bildirim kontrolü';

  @override
  String get dantotsuDns => 'DNS sağlayıcısı';

  @override
  String get dantotsuPlayer => 'Oynatıcı hızı ve altyazı renkleri';

  @override
  String get dantotsuWarning =>
      'Bu dosya giriş token\'ları içeriyor. Gizli tut.';

  @override
  String get novelIndent => 'Paragraflara girinti ver';

  @override
  String get novelIndentDesc => 'Her paragrafa ilk satır girintisiyle başla';

  @override
  String get novelLetterSpacing => 'Harf aralığı';

  @override
  String get novelSectionTranslate => 'Çeviri';

  @override
  String get sectionExperimental => 'Deneysel';

  @override
  String get kitsuGraphqlDetail => 'Daha hızlı detay sayfaları (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Bir başlığı karakterleri, ekibi ve girişinle birlikte tek istekte yükle';

  @override
  String get togetherTitle => 'Birlikte izle';

  @override
  String get togetherIntro =>
      'Arkadaşının gönderdiği oda bağlantısını yapıştır. Hemen katılırsın ve izlemeye başladıklarında oynatıcı açılır.';

  @override
  String togetherLinkConfirm(String room) {
    return '$room odasına katılmak ister misiniz? Sunucu neyin oynayacağını seçer ve oyuncu izlemeye başladığında kendiliğinden açılır.';
  }

  @override
  String get togetherJoin => 'Katıl';

  @override
  String get togetherName => 'Adın';

  @override
  String get togetherConnecting => 'Bağlanıyor…';

  @override
  String get togetherLeave => 'Odadan ayrıl';

  @override
  String get togetherYou => 'Sen';

  @override
  String get togetherNoChat => 'Henüz mesaj yok';

  @override
  String get togetherChatHint => 'Mesaj';

  @override
  String get togetherCopyInvite => 'Daveti kopyala';

  @override
  String get togetherShareInvite => 'Daveti paylaş';

  @override
  String togetherShareText(String link) {
    return 'Benimle Dartotsu\'da izleyin: $link';
  }

  @override
  String get togetherInviteCopied => 'Sunucu ve oda kopyalandı';

  @override
  String get togetherConnectionLost => 'Bağlantı koptu';

  @override
  String togetherConnectedTo(String room) {
    return '$room odasına bağlanıldı';
  }

  @override
  String togetherFailed(String error) {
    return 'Bağlanılamadı: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name katıldı';
  }

  @override
  String togetherLeft(String name) {
    return '$name ayrıldı';
  }

  @override
  String togetherPaused(String name) {
    return '$name duraklattı';
  }

  @override
  String togetherResumed(String name) {
    return '$name devam ettirdi';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time anına atladı';
  }

  @override
  String get togetherFollowFailed => 'Host\'un bölümü açılamadı. Kendin aç.';

  @override
  String get togetherJoinRole => 'Odaya katıl';

  @override
  String get togetherOpenHost => 'Host\'un bölümünü aç';

  @override
  String get togetherShowChat => 'Canlı sohbeti göster';

  @override
  String get togetherWaitingHost => 'Host\'un bir bölüm başlatması bekleniyor';

  @override
  String get togetherRoomLink => 'Oda bağlantısı';

  @override
  String get togetherBadLink => 'Bu bir oda bağlantısı değil';

  @override
  String get togetherHostClosed => 'Host odayı kapattı';

  @override
  String get togetherNowPlaying => 'Şu an oynuyor';

  @override
  String togetherWatchingCount(int count) {
    return '$count kişi izliyor';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user duraklatmak istiyor';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user devam ettirmek istiyor';
  }

  @override
  String get togetherChip => 'Birlikte';

  @override
  String get togetherSettingsDesc =>
      'Bir arkadaşının odasına bağlantıyla katıl';

  @override
  String get novelBilingual => 'Orijinali ve çeviriyi göster';

  @override
  String get novelBilingualDesc =>
      'Her paragraf orijinal metni ve altında çevirisini gösterir';

  @override
  String get novelTranslateTo => 'Şu dile çevir';

  @override
  String get novelTranslateOff => 'Kapalı';

  @override
  String get novelSectionSpeech => 'Metni sese çevir';

  @override
  String get novelSpeechRate => 'Konuşma hızı';

  @override
  String get novelSpeechPitch => 'Konuşma perdesi';

  @override
  String get novelSpeak => 'Sesli oku';

  @override
  String get novelSpeakStop => 'Sesli okumayı durdur';

  @override
  String get novelTranslate => 'Bölümü çevir';

  @override
  String get novelTranslateShowOriginal => 'Orijinali göster';

  @override
  String novelTranslateFailed(String error) {
    return 'Çeviri başarısız: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Bu cihazda metni sese çevirme kullanılamıyor';

  @override
  String get novelSpeechVoice => 'Ses';

  @override
  String get novelSpeechVoiceDefault => 'Sistem varsayılanı';

  @override
  String get novelSpeakPrevious => 'Önceki satır';

  @override
  String get novelSpeakNext => 'Sonraki satır';

  @override
  String get novelTapPaging => 'Sayfa çevirmek için kenarlara dokun';

  @override
  String get novelTapPagingDesc =>
      'Bir sayfa kaydırmak için sol ya da sağ tarafa dokun, orta kısım kontrolleri gösterir';

  @override
  String get novelPaged => 'Sayfa çevirme';

  @override
  String get novelPagedDesc =>
      'Bölümü sayfalara bölün ve kaydırmak yerine sayfaları kaydırın veya dokunun';

  @override
  String novelPageOf(int current, int total) {
    return 'Sayfa $current / $total';
  }

  @override
  String get novelPaginating => 'Sayfaların düzenlenmesi';

  @override
  String get novelTools => 'İçerikler, arama ve öne çıkanlar';

  @override
  String get novelContents => 'İçindekiler';

  @override
  String get novelContentsEmpty => 'Bu bölümün başlığı yok';

  @override
  String get novelSearch => 'Ara';

  @override
  String get novelSearchHint => 'Bu bölümde ara';

  @override
  String get novelSearchNone => 'Eşleşme yok';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eşleşmeleri',
      one: '1 maç',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Öne Çıkanlar';

  @override
  String get novelHighlightsEmpty =>
      'Bir metin seçin ve burada tutmak için Vurgula\'ya dokunun';

  @override
  String get novelHighlight => 'Vurgula';

  @override
  String get novelHighlightNote => 'Not';

  @override
  String get novelHighlightNoteHint => 'Not ekle';

  @override
  String get novelHighlightRemove => 'Vurguyu kaldır';

  @override
  String get novelHighlightFailed => 'Bu seçim metinle eşleştirilemedi';

  @override
  String novelMinutesLeft(int count) {
    return '$count dk kaldı';
  }

  @override
  String get novelBold => 'Kalın yazı';

  @override
  String get novelBoldDesc => 'Daha kalın bir ağırlık kullan';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter bitti';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Sıradaki: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Önceki: $chapter';
  }

  @override
  String get readerNoPages => 'Bu bölümde sayfa yok';

  @override
  String get readerLoadingPages => 'Sayfalar yükleniyor…';

  @override
  String get readerSlowPage => 'Bu sayfa hâlâ yükleniyor…';

  @override
  String get readerPageFailed => 'Bu sayfa yüklenemedi';

  @override
  String get playerShowComments => 'Yorumları göster';

  @override
  String get playerHideComments => 'Yorumları gizle';

  @override
  String get playerSubtitles => 'Altyazılar';

  @override
  String get playerSubtitlesOff => 'Altyazı kapalı';

  @override
  String get playerAudio => 'Ses';

  @override
  String get playerAddSubtitle => 'Altyazı dosyası ekle';

  @override
  String get playerAddAudio => 'Ses dosyası ekle';

  @override
  String get playerChapters => 'Bölümler';

  @override
  String get playerSkipSubmit => 'Atlama sürelerini gönder';

  @override
  String get playerSkipSubmitDesc =>
      'Bu bölümde açılış, bitiş veya özetin nerede başlayıp nerede bittiğini işaretleyin ve bunu AniSkip ile paylaşın, böylece herkes atla düğmesine sahip olsun.';

  @override
  String get playerSkipStart => 'Başlat';

  @override
  String get playerSkipEnd => 'Bitiş';

  @override
  String get playerSkipUseNow => 'Geçerli konumu kullan';

  @override
  String get playerSkipSend => 'AniSkip\'e Gönder';

  @override
  String get playerSkipSent =>
      'AniSkip\'e gönderilen süreleri atlayın, teşekkürler';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip atlama sürelerini reddetti: $error';
  }

  @override
  String get playerUnsupported =>
      'Video oynatıcı bu cihazda çalışamıyor (Android sürümü, birlikte verilen oynatıcı kitaplığı için çok eski). Ayrıntıları kopyalamak için dokunun.';

  @override
  String get playerSkipNoMal =>
      'Bu başlığın MyAnimeList kimliği yok, AniSkip bunu kaldıramaz';

  @override
  String get playerNoChapters => 'Bölüm yok';

  @override
  String get playerTimestamp => 'Zaman damgası';

  @override
  String get playerAutoPlayDelay => 'Sonraki bölüm geri sayımı';

  @override
  String get playerWatchedAt => 'Şu noktada izlendi say';

  @override
  String playerNextIn(int seconds) {
    return 'Sonraki bölüm $seconds sn sonra';
  }

  @override
  String get playerPlayNow => 'Şimdi oynat';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: bu başlık için otomatik atlanacak';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: bu başlık için otomatik atlanmayacak';
  }

  @override
  String get playerAudioLanguage => 'Tercih edilen ses dili';

  @override
  String get playerLanguageOrderHint =>
      'Dilleri virgülle ayır. Bulunan ilki kullanılır.';

  @override
  String get playerPip => 'Pencere içinde pencere';

  @override
  String get playerAutoPip => 'Çıkınca pencere içinde pencere';

  @override
  String get playerAutoPipDesc =>
      'Uygulamadan çıkınca küçük bir pencerede oynatmaya devam et';

  @override
  String get playerPipPlay => 'Oynat';

  @override
  String get playerPipPause => 'Duraklat';

  @override
  String get playerPipBack => 'Geri sarma';

  @override
  String get playerPipForward => 'İleri';

  @override
  String get playerPipRestore => 'Oyuncuya geri dön';

  @override
  String get playerPipActive => 'Küçük bir pencerede oynamak';

  @override
  String get listDateAdded => 'Listeye eklendi';

  @override
  String get listDateLastWatched => 'Son izlenme';

  @override
  String playerAutoPlaying(String title) {
    return 'Sıradaki oynatılıyor: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Shader\'lar yüklenemedi: $error';
  }

  @override
  String playerChapter(int number) {
    return '$number. bölüm';
  }

  @override
  String get playerPerTitle => 'Sadece bu başlık için';

  @override
  String get playerPerTitleDesc =>
      'Bu seçenekleri bu başlık için tut, varsayılanlarına dokunma';

  @override
  String get playerSwapGestures => 'Kaydırma taraflarını değiştir';

  @override
  String get playerSwapGesturesDesc => 'Solda parlaklık, sağda ses';

  @override
  String get playerOpenBig => 'Büyük görünümde aç';

  @override
  String get playerOpenBigDesc =>
      'Oynatıcıyı bölüm listesi yerine tam ekran başlat';

  @override
  String get playerPauseOnBlur => 'Odak kaybolunca duraklat';

  @override
  String get playerPauseOnBlurDesc =>
      'Uygulama bildirim paneli gibi bir şeyle kapandığında duraklat, geri dönünce devam et';

  @override
  String get playerAudioOutput => 'Ses çıkışı';

  @override
  String get fontAppDefault => 'Uygulama yazı tipi';

  @override
  String get fontImport => 'Yazı tipi içe aktar';

  @override
  String get fontSample =>
      'Hızlı kahverengi tilki tembel köpeğin üzerinden atlar';

  @override
  String get playerSubtitleDelay => 'Altyazı gecikmesi';

  @override
  String get playerAudioDelay => 'Ses gecikmesi';

  @override
  String get playerDelayReset => 'Sıfırla';

  @override
  String get playerOnlineSubtitles => 'Çevrimiçi altyazılar';

  @override
  String get playerOnlineSearchHint => 'Başlık ve bölüm';

  @override
  String get playerOnlineNone => 'Altyazı bulunamadı';

  @override
  String playerOnlineFailed(String error) {
    return 'Altyazı araması başarısız: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Bu altyazı indirilemedi: $error';
  }

  @override
  String get playerOnlineMatch => 'Bu dosyayla eşleşiyor';

  @override
  String get playerOnlineEpisode => 'Bölüm eşleşmesi';

  @override
  String playerOnlineDownloads(int count) {
    return '$count indirme';
  }

  @override
  String get playerSeekPreview => 'Sarma önizlemesi';

  @override
  String get playerSeekPreviewDesc =>
      'Sararken ilerleme çubuğunun üstünde küçük bir kare önizlemesi göster. İkinci bir düşük çözünürlüklü kod çözücü açar, bu yüzden yayınlarda ekstra veri harcar.';

  @override
  String get playerSettingsChip => 'Ayarlar';

  @override
  String get playerAudioDevice => 'Ses cihazı';

  @override
  String get settingsDownloads => 'İndirmeler';

  @override
  String get settingsDownloadsDesc =>
      'Çevrimdışı bölümler, sıra ve çevrimdışı mod';

  @override
  String get downloadsTitle => 'İndirmeler';

  @override
  String get widgetContinue => 'Devam et';

  @override
  String get widgetReleases => 'Yakında yayınlanacak';

  @override
  String get widgetMore => 'Ayrıca devam ediyor';

  @override
  String get widgetNothing => 'Henüz devam edecek bir şey yok';

  @override
  String get downloadStorageTitle => 'Depolama';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count indirilenler',
      one: '1 indirme',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size zaten izlediniz veya okudunuz';
  }

  @override
  String get downloadFreeUp => 'Yer açın';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count izlenen indirmeler',
      one: '1 izlendi indirildi',
    );
    return 'Silmek $_temp0 ve ücretsiz $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Serbest bırakıldı $size';
  }

  @override
  String get downloadDeleteWatched => 'İzlenenleri sil';

  @override
  String get downloadDeleteAll => 'Tümünü sil';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title indirilen her dosya silinsin mi?';
  }

  @override
  String get downloadNothingWatched => 'Bitirdiğiniz hiçbir şey indirilmiyor';

  @override
  String get downloadStorageEmpty => 'Hiçbir indirme alanı kullanmıyor';

  @override
  String get downloadsOpenDesc => 'Sırayı ve bu cihaza kaydedilen her şeyi gör';

  @override
  String get downloadTitle => 'İndir';

  @override
  String get downloadMetaOnly => 'Yalnızca meta veriler';

  @override
  String get downloadMetaFailed => 'Başlık klasörü oluşturulamadı';

  @override
  String downloadMetaSaved(String path) {
    return 'Kaydedildi. Dosyalarınızı $path içine koyun';
  }

  @override
  String get downloadAlready => 'Zaten indirildi ya da sırada';

  @override
  String get downloadPickStream => 'Hangi yayın indirilsin?';

  @override
  String get downloadPickSubtitle => 'Hangi altyazı indirilsin?';

  @override
  String get downloadPickAudio => 'Hangi ses izi indirilsin?';

  @override
  String get downloadNoAudio => 'Ekstra ses yok';

  @override
  String get downloadAudio => 'Ses';

  @override
  String get downloadNoSubtitle => 'Altyazı yok';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Bu yayın bir HLS oynatma listesi. İndirmek için FFmpeg eklentisi gerekir.';

  @override
  String get downloadSourceMissing => 'Bu bölümün kaynağı yüklü değil';

  @override
  String get downloadDashDrm => 'Bu akış DRM korumalıdır';

  @override
  String get downloadDashNoVideo => 'DASH manifest dosyasında video yok';

  @override
  String get downloadWaitingConnection => 'Bağlantı bekleniyor';

  @override
  String get downloadSubtitles => 'Altyazılar';

  @override
  String get downloadDownloaded => 'İndirildi';

  @override
  String get downloadOffline => 'Çevrimdışı';

  @override
  String get downloadDelete => 'İndirmeyi sil';

  @override
  String get downloadCancel => 'İptal';

  @override
  String get downloadPause => 'Duraklat';

  @override
  String get downloadPaused => 'Duraklatıldı';

  @override
  String get downloadResume => 'Devam et';

  @override
  String get downloadPauseAll => 'Hepsini duraklat';

  @override
  String get downloadResumeAll => 'Hepsini sürdür';

  @override
  String get downloadQueuedState => 'Sırada bekliyor';

  @override
  String get downloadResolving => 'Yayın alınıyor…';

  @override
  String get downloadUsedFallback => 'Eşleşen yayın yok, ilki kullanıldı';

  @override
  String get downloadTabQueue => 'Sıra';

  @override
  String get downloadTabDone => 'Bitti';

  @override
  String get downloadTabFailed => 'Başarısız';

  @override
  String get downloadEmptyQueue => 'İndirilen bir şey yok';

  @override
  String get downloadEmptyDone => 'Henüz indirilen bir şey yok';

  @override
  String get downloadEmptyFailed => 'Başarısız indirme yok';

  @override
  String get downloadNext => 'Sonraki bölüm';

  @override
  String downloadNextN(int count) {
    return 'Sonraki $count bölüm';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'İzlenmeyenlerin hepsi ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Bu aralık ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Tüm bölümler ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bölüm sıraya alındı',
      one: '1 bölüm sıraya alındı',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name indirildi';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name indirilemedi';
  }

  @override
  String downloadStorage(String size) {
    return 'İndirmeler $size yer kaplıyor';
  }

  @override
  String get downloadQueueHeader => 'Sıra';

  @override
  String get downloadParallel => 'Aynı anda indirmeler';

  @override
  String get downloadParallelDesc =>
      'Tek tek ya da birkaç tanesini birlikte indir';

  @override
  String get downloadOneByOne => 'Tek tek';

  @override
  String get downloadNotifications => 'İndirme bildirimleri';

  @override
  String get downloadNotificationsDesc =>
      'Sistem destekliyorsa canlı ilerleme, yoksa indirme bitince bir not';

  @override
  String get downloadNotifyLive => 'Canlı';

  @override
  String get downloadNotifyDone => 'Bittiğinde';

  @override
  String get downloadNotifyOff => 'Kapalı';

  @override
  String get downloadInfoFile => 'Her indirmenin yanına bir bilgi dosyası yaz';

  @override
  String get downloadInfoFileDesc =>
      'Yayını, kaliteyi, altyazıyı ve atlama zamanlarını küçük bir .json dosyası olarak kaydeder';

  @override
  String get offlineHeader => 'Çevrimdışı';

  @override
  String get offlineModeDesc =>
      'Otomatik, sadece uygulama bağlantısız açıldığında çevrimdışına geçer. Her zaman, sen değiştirene kadar çevrimdışı kalır.';

  @override
  String get offlineModeOff => 'Kapalı';

  @override
  String get offlineModeAlways => 'Her zaman';

  @override
  String get offlineModeOn =>
      'Çevrimdışı mod açık. Değişiklikler burada kaydedilir ve tekrar çevrimiçi olunca gönderilir.';

  @override
  String get offlineSaved =>
      'Bu cihazda kaydedildi, çevrimiçi olunca senkronlanacak';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count değişiklik senkronlandı',
      one: '1 değişiklik senkronlandı',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count değişiklik senkron bekliyor',
      one: '1 değişiklik senkron bekliyor',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Senkron bekleyen değişiklikler';

  @override
  String get offlinePendingNone => 'Bekleyen bir şey yok';

  @override
  String get offlineSyncNow => 'Şimdi senkronla';

  @override
  String get offlineDiscard => 'Vazgeç';

  @override
  String get downloadNotOffline =>
      'Bu bölüm indirilmediği için çevrimdışı kullanılamıyor';

  @override
  String get offlineModeChip => 'Çevrimdışı';

  @override
  String get downloadNextChapter => 'Sonraki bölüm';

  @override
  String downloadNextChapters(int count) {
    return 'Sonraki $count bölüm';
  }

  @override
  String downloadUnread(int count) {
    return 'Okunmayanların hepsi ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Tüm bölümler ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total sayfa';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count sayfa';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg eklentisi gerekli';

  @override
  String get downloadFfmpegBody =>
      'Bu yayın bir HLS oynatma listesi. FFmpeg eklentisi parçalarını tek bir mp4 dosyasında birleştirir. O olmadan parçalar bir bölüm klasöründe tutulur ve oradan oynatılır.';

  @override
  String get downloadFfmpegInstall => 'Yükle';

  @override
  String get downloadFfmpegInstalling => 'FFmpeg yükleniyor, biraz sürebilir…';

  @override
  String get downloadFinishing => 'Parçalar tek dosyada birleştiriliyor…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total parça';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent\'te indirilecek video dosyası yok';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe indiriliyor',
      one: '1 öğe indiriliyor',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'İzlenen indirmeleri sil';

  @override
  String get downloadAutoDeleteDesc =>
      'İlerlemen o bölüme ya da chapter\'a ulaşınca indirmeyi kaldırır';

  @override
  String get downloadConnections => 'İndirme başına bağlantı';

  @override
  String get downloadConnectionsDesc =>
      'Büyük bir dosyayı aynı anda çekilen parçalara böler. Bazı sunucular bunu sınırlar.';

  @override
  String get downloadPlayChoice => 'Şuradan oynat';

  @override
  String get downloadPlayLocalDesc => 'Bu cihaza kaydedilen dosya';

  @override
  String get downloadPlayStream => 'Çevrimiçi yayınla';

  @override
  String get downloadPlayStreamDesc => 'Bölümü kaynaktan yükle';

  @override
  String get offlineFeedTitle => 'Bu cihaza indirildi';

  @override
  String get offlineFeedEmpty => 'Çevrimiçiyken bir şey indir, burada görünsün';

  @override
  String get offlineEnabled => 'Çevrimdışı mod açık';

  @override
  String get offlineDisabled => 'Çevrimdışı mod kapalı';

  @override
  String get downloadReadChoice => 'Şuradan oku';

  @override
  String get downloadReadLocalDesc => 'Bu cihaza kaydedilen sayfalar';

  @override
  String get downloadReadOnline => 'Çevrimiçi oku';

  @override
  String get downloadReadOnlineDesc => 'Bölümü kaynaktan yükle';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name bu cihazdan silinsin mi?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name indirmesi iptal edilsin mi? Şimdiye kadar indirilenler silinir.';
  }

  @override
  String get downloadFfmpegFolder => 'Klasör olarak tut';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Hiç gönderilmeyen $count değişiklik çöpe atılsın mı? Bu geri alınamaz.',
      one: 'Hiç gönderilmeyen değişiklik çöpe atılsın mı? Bu geri alınamaz.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi bekleniyor';

  @override
  String get downloadWaitingMetered => 'Sınırlı bağlantıda duraklatıldı';

  @override
  String get downloadWifiOnly => 'Sadece Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => 'Mobil verideyken indirmeler bekler';

  @override
  String get downloadMetered => 'Sınırlı bağlantılarda duraklat';

  @override
  String get downloadMeteredDesc =>
      'Cihazının sınırlı olarak işaretlediği Wi-Fi\'larda da bekler';

  @override
  String get downloadSpeedLimit => 'Hız sınırı';

  @override
  String get downloadSpeedLimitDesc => 'Toplam indirme hızını sınırlar';

  @override
  String get downloadUnlimited => 'Sınırsız';

  @override
  String get downloadMoveToTop => 'En üste taşı';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seed · $peers peer';
  }

  @override
  String get downloadTorrentFile => 'Hangi dosya?';

  @override
  String get downloadTorrentAuto => 'Bölümü otomatik eşleştir';

  @override
  String get downloadTorrentLoading => 'Torrent okunuyor…';

  @override
  String get watchAutoSource => 'Otomatik olarak sonraki kaynağa geç';

  @override
  String get watchAutoSourceDesc =>
      'Kaynak başlığı bulamazsa ya da yüklenemezse yüklü sonraki kaynağı dene';

  @override
  String get extensionTest => 'Uzantıları test et';

  @override
  String get extensionTestCopy => 'Hataları ve günlüklerini kopyala';

  @override
  String get extensionTestQuery => 'Arama terimi';

  @override
  String get extensionTestRun => 'Çalıştır';

  @override
  String get extensionTestStop => 'Durdur';

  @override
  String get extensionTestNone => 'Bu türde yüklü uzantı yok';

  @override
  String get extensionTestNotRun => 'Henüz test edilmedi';

  @override
  String get extensionTestSearch => 'Ara';

  @override
  String get extensionTestDetail => 'Ayrıntılar';

  @override
  String get extensionTestUnits => 'Bölümler';

  @override
  String get extensionTestLinks => 'Yayınlar / sayfalar';

  @override
  String extensionTestFailedAt(String step) {
    return '$step adımında başarısız';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total içinden $done test edildi · $passed geçti · $failed kaldı';
  }

  @override
  String get extensionTestCopyLogs => 'Her şeyi tüm günlüklerle kopyala';

  @override
  String get onboardingFeaturesTitle => 'Hepsi tek yerde';

  @override
  String get onboardingFeaturesBody =>
      'Takip ettiğin, izlediğin ve okuduğun her şey, uygulamalar arasında dolaşmadan.';

  @override
  String get onboardingFeatureTrack => 'Her şeyi takip et';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu ve MangaBaka\'da listeler, ilerleme ve puanlar.';

  @override
  String get onboardingFeatureWatch => 'İzle ve oku';

  @override
  String get onboardingFeatureWatchDesc =>
      'Uzantıları yükle, anime yayınla ya da manga ve romanları doğrudan uygulamada oku.';

  @override
  String get onboardingFeatureOffline => 'Çevrimdışına al';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Bölümleri indir ve bağlantı olmadan da devam et.';

  @override
  String get onboardingFeatureSync => 'Listeleri senkron tut';

  @override
  String get onboardingFeatureSyncDesc =>
      'Listeni servisler arasında yansıt ya da hangisi ilerideyse o kazansın.';

  @override
  String get onboardingServices => 'Şununla çalışır';

  @override
  String sourceNotifyOn(String source) {
    return '$source yeni bir şey öğrendiğinde size haber verilecek';
  }

  @override
  String get sourceNotifyOff => 'Bildirimleri yayınlama kapalı';

  @override
  String get sourceNotifyNeedsSource => 'Önce eşleşmesi olan bir kaynak seçin';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Her şey ($count) zaten çıktı, beklenecek bir şey yok';
  }

  @override
  String get sourceNotifyTooltipOn => 'Sürüm bildirimlerini durdur';

  @override
  String get sourceNotifyTooltipOff =>
      'Yeni çıkanlar hakkında beni bilgilendir';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Bölüm $number $source\'de çıktı';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return '$from–$to bölümleri $source tarihinde çıktı';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return '$number bölümü $source\'de çıktı';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return '$from–$to bölümleri $source tarihinde çıktı';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count başlıklarında yeni bir şeyler var';
  }

  @override
  String get navSources => 'Kaynaklar';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Bu kaynak, aktif uzantı hizmeti olmayan $manager\'a ait';
  }

  @override
  String get sourceAlertsHeader => 'Bildirimleri yayınla';

  @override
  String get sourceAlertsSwitch => 'Abone olunan başlıkları kontrol edin';

  @override
  String get sourceAlertsSwitchDesc =>
      'Uygulama her açıldığında, başlıklar için zili açtınız';

  @override
  String get sourceSkipUnstarted => 'Başlamadığınız başlıkları atlayın';

  @override
  String get sourceSkipUnstartedDesc =>
      'Henüz izlenen veya okunan bir şey yok ancak bölümler zaten mevcut';

  @override
  String get sourceSkipUnseen => 'Görülmemiş bölümleriniz varken atlayın';

  @override
  String get sourceSkipUnseenDesc =>
      'Hala takip edilecek bölümleri yayınladınız';

  @override
  String get sourceManage => 'Abonelikler';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count başlıklar',
      one: '1 başlık',
      zero: 'Başlık yok',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Şimdi kontrol et';

  @override
  String get sourceCheckNowDesc =>
      'Programı ve atlama kurallarını göz ardı eder';

  @override
  String get sourceChecking => 'Kontrol ediliyor…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count başlıklarında yeni bir şeyler var',
      one: '1 başlıkta yeni bir şey var',
      zero: 'Yeni bir şey yok',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Henüz abonelik yok';

  @override
  String get sourceEmptyMessage =>
      'Yeni bölümler hakkında bilgi almak için bir başlığın bölümlerinin üzerindeki zile dokunun';

  @override
  String get sourceAll => 'Hepsi';

  @override
  String sourceInactive(String manager) {
    return 'Etkin değil: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source bu uzantı hizmetinde yüklü değil';
  }

  @override
  String get sourceUnreachable => 'Kaynak yanıt vermiyor';

  @override
  String get sourceFinished => 'Bitti';

  @override
  String get sourceSkippedCompleted => 'Atlandı: tamamlandı';

  @override
  String get sourceSkippedUnstarted => 'Atlandı: başlatılmadı';

  @override
  String get sourceSkippedUnseen => 'Atlandı: görülmemiş bölümler';

  @override
  String get sourceWaiting => 'Bir sonraki sürümü bekliyorum';

  @override
  String sourceNextCheck(String when) {
    return 'Sonraki kontrol $when';
  }

  @override
  String get sourceSoon => 'yakında';

  @override
  String sourceInHours(int count) {
    return '${count}h\'de';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d\'de';
  }

  @override
  String sourceLatest(String number) {
    return 'En son: $number';
  }

  @override
  String get sourceMute => 'Sessiz';

  @override
  String get sourceUnmute => 'Sesi aç';

  @override
  String get sourceMuted => 'Sessize alındı';

  @override
  String get sourceUnsubscribe => 'Abonelikten çık';

  @override
  String get sourcePickAnother => 'Başka bir kaynak seç';

  @override
  String get sourceOpenExtensions => 'Uzantıları aç';

  @override
  String get sourceNoticesEmpty => 'Henüz yayın bildirimi yok';

  @override
  String get sourceNoticesEmptyMessage =>
      'Abone olduğunuz kitapların yeni bölümleri ve bölümleri burada gösterilir';

  @override
  String get sourceOpenTitle => 'Başlığı aç';

  @override
  String get extensionsLoading => 'Uzantılar yükleniyor…';

  @override
  String get updateWhatsNew => 'Yenilikler';

  @override
  String get updateLater => 'Daha sonra';

  @override
  String get updateSkipVersion => 'Bu sürümü atla';

  @override
  String get updatePreparing => 'Hazırlanıyor…';

  @override
  String get updateDownloading => 'İndiriliyor';

  @override
  String get updateInstalling => 'Yükleniyor…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done / $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return '$date yayınlandı';
  }

  @override
  String get updateNoAsset => 'Bu sürümün cihazınız için indirilmesi yok';

  @override
  String get updateUpToDate => 'En son sürümdesiniz';

  @override
  String get updateIosHint =>
      'iOS yapıları App Store\'da bulunmuyor. Sürüm sayfasından .ipa dosyasını alın ve AltStore veya SideStore ile yan yükleyin';

  @override
  String get updateOpenedBrowser => 'Tarayıcınızı kontrol edin';

  @override
  String get updateTryAgain => 'Tekrar dene';

  @override
  String get settingsNotifications => 'Bildirimler';

  @override
  String get settingsNotificationsDesc =>
      'Listeleriniz, yeni bölümleriniz ve bölümleriniz ile yorum yanıtlarınız için uyarılar';

  @override
  String get settingsAboutUpdates => 'Hakkında ve güncellemeler';

  @override
  String get settingsAboutUpdatesDesc =>
      'Uygulama güncellemeleri, sürüm, günlükler, bağlantılar ve destek';

  @override
  String get settingsGroupAccount => 'Hesabınız';

  @override
  String get settingsGroupContent => 'İçerik';

  @override
  String get settingsGroupApp => 'Uygulama';

  @override
  String get settingsAnimeDesc =>
      'Oyuncu, altyazılar, atlama, bölüm listesi ve bölüm ayrıntıları';

  @override
  String get settingsMangaDesc =>
      'Okuyucu modu, kontroller, ekran ve bölüm takibi';

  @override
  String get settingsNovelDesc =>
      'Metin, sayfa çevirme, çeviri ve yüksek sesle okuma';

  @override
  String get settingsLocalPlay => 'Yerel oyun';

  @override
  String get settingsLocalPlayDesc =>
      'Dosyaları, klasörleri, ağ akışlarını ve torrentleri oynatın veya bir kitap açın';

  @override
  String get settingsLocalPlayVideo => 'video';

  @override
  String get settingsLocalPlayBooks => 'Kitaplar';

  @override
  String get settingsWatchSections => 'Bölümler';

  @override
  String get settingsSectionLists => 'Bölüm ve bölüm listeleri';

  @override
  String get settingsSectionProgress => 'İlerleme takibi';

  @override
  String get updateChannelDesc =>
      'Kararlı, test edilen sürümdür. Ön sürüm ve Alpha yeni özelliklere daha erken kavuşuyor ancak bozulabilir';

  @override
  String get checkNowDesc => 'Hemen daha yeni bir sürüm arayın';

  @override
  String get generalSectionBasics => 'Dil ve davranış';

  @override
  String get generalSectionSecurity => 'Güvenlik';

  @override
  String get generalSectionPrivacy => 'Gizlilik';

  @override
  String notificationsOtherService(String service) {
    return 'Bunu açmak için $service\'a geçin';
  }

  @override
  String get secPlayerPlayback =>
      'Varsayılan hız, otomatik oynatma, video sığdırma, yönlendirme ve resim içinde resim';

  @override
  String get secPlayerSkip =>
      'Açılışları, bitişleri ve özetleri otomatik olarak atlayın';

  @override
  String get secPlayerControls =>
      'Hareketleri kaydırın, basılı tutun ve dokunun ve önizlemeyi arayın';

  @override
  String get secPlayerSubtitles => 'Diller, görünüm ve altyazı oluşturma';

  @override
  String get secPlayerShaders =>
      'Anime yükseltme ve kendi gölgelendiricileriniz';

  @override
  String get secPlayerEngine =>
      'Kod çözücü, video ve ses çıkışı, ara belleğe alma. Bunları yalnızca oynatma sorunları varsa değiştirin';

  @override
  String get secPlayerMpv => 'mpv.conf, komut dosyaları ve gelişmiş ayarlama';

  @override
  String get secAnimeList => 'Dolgu bölümleri ve izlenmeyen küçük resimler';

  @override
  String get secProgress =>
      'İzleme veya okuma ilerlemeniz listenize kaydedildiğinde';

  @override
  String get secAnimeDetails =>
      'Bölüm başlıkları, küçük resimler ve özetler nereden geliyor?';

  @override
  String get secReaderReading =>
      'Okuma modu, sayfa çevirme, yakınlaştırma ve sonraki bölüm';

  @override
  String get secReaderControls =>
      'Bölgelere, ses tuşlarına ve otomatik kaydırmaya dokunun';

  @override
  String get secReaderDisplay =>
      'Arka plan, parlaklık, tam ekran ve sayfa numarası';

  @override
  String get secNovelText =>
      'Yazı tipi, boyut, aralık, kenar boşlukları ve sayfa çevirme';

  @override
  String get secNovelTranslate => 'Okurken bölümleri çevirin';

  @override
  String get secNovelSpeech => 'Yüksek sesle okumak için ses, hız ve perde';

  @override
  String get secNotifyAbout =>
      'Hangi tür etkinliklerin uyarı göndereceğini seçin';

  @override
  String get layoutTitle => 'Düzen';

  @override
  String get layoutDesc => 'Çubuklardaki düğmeleri seçin, taşıyın ve gizleyin';

  @override
  String get layoutHint =>
      'Bir düğmeyi taşımak için sürükleyin (dokunmatik ekranda önce basılı tutun). Kesmek, taşımak veya gizlemek için birine dokunun';

  @override
  String layoutDropInto(String zone) {
    return 'Bırakın: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Hareket ediyor $name. Yerleştirmek için yapıştır düğmesine basın';
  }

  @override
  String get layoutTitleFixed => 'Başlık';

  @override
  String get layoutZoneTopStart => 'Başlıktan önceki üst çubuk';

  @override
  String get layoutZoneTopEnd => 'Başlıktan sonra üst çubuk';

  @override
  String get layoutZoneBottomStart => 'Alt çubuk, sol';

  @override
  String get layoutZoneBottomEnd => 'Alt çubuk, sağ';

  @override
  String get layoutZoneSecondRow => 'Gizli: normal görünümde ikinci sıra';

  @override
  String get layoutZoneOverflow => 'Gizli: daha fazla menüsünde';

  @override
  String get layoutEmptyZone => 'Düğmeleri buraya bırakın';

  @override
  String get layoutCut => 'Kes';

  @override
  String get layoutPaste => 'Buraya yapıştır';

  @override
  String get layoutHide => 'Gizle';

  @override
  String layoutMoveTo(String zone) {
    return '$zone\'a git';
  }

  @override
  String get layoutReset => 'Varsayılana sıfırla';

  @override
  String get layoutMore => 'Daha Fazla';

  @override
  String get sourceWhyAction => 'Neden uyarı yok?';

  @override
  String get sourceWhyStatus => 'Durum';

  @override
  String get sourceWhyLastCheck => 'Son kontrol edildi';

  @override
  String get sourceWhyNever => 'Henüz değil';

  @override
  String get sourceWhyNextCheck => 'Sonraki kontrol';

  @override
  String get sourceWhyNewest => 'Kaynaktaki en yeni';

  @override
  String get sourceWhyProgress => 'İlerlemeniz';

  @override
  String get sourceWhyListStatus => 'Liste durumu';

  @override
  String get sourceWhyFailures => 'Üst üste başarısız kontroller';

  @override
  String get sourceWhyLastRelease => 'En son görülen yeni sürüm';

  @override
  String get sourceWhyVerdictNew =>
      'Kaynak onu listelediğinde ve bir sonraki kontrol çalıştırıldığında yeni bir sürüm burada görünür.';

  @override
  String get sourceWhyVerdictAhead =>
      'Kaynak zaten ilerlemenizin ilerisindedir, bu yüzden size bir kez söylendi. Bir sonraki uyarıyı almak için okuyun veya izleyin.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Bu başlık yukarıdaki kurallar gereği atlanmıştır. Bunları bildirim ayarlarında değiştirin veya yine de çalıştırmak için Şimdi kontrol et\'i kullanın.';

  @override
  String get sourceWhyVerdictBroken =>
      'Kaynağa ulaşılamıyor veya kaldırılmış olduğundan hiçbir şey kontrol edilmiyor.';

  @override
  String get sourceWhyVerdictMuted => 'Bu abonelik sessize alındı.';

  @override
  String get externalPlayerTitle => 'Akışı başka bir yerde aç';

  @override
  String get externalCopyUrl => 'Akış bağlantısını kopyala';

  @override
  String get externalCopied => 'Yayın bağlantısı kopyalandı';

  @override
  String get externalChooser => 'Başka bir uygulamada aç';

  @override
  String get externalVlc => 'VLC\'de aç';

  @override
  String get externalMpv => 'mpv\'de aç';

  @override
  String get externalWebVideoCast => 'Web Videosu Yayını';

  @override
  String get castViaAppHint => 'Akışı Web Video Cast uygulamasına gönderin';

  @override
  String get externalFailed => 'Akış açılamadı. Oynatıcı kurulu mu?';

  @override
  String get addonInstalled => 'Yüklendi';

  @override
  String get loadFailedActivity => 'Etkinlik yüklenemedi';

  @override
  String get loadFailedFavourites => 'Favoriler yüklenemedi. Yeniden dene';

  @override
  String get loadFailedStats => 'İstatistikler yüklenemedi';

  @override
  String get loadFailedReplies => 'Yanıtlar yüklenemedi';

  @override
  String get cantBeUndone => 'Bu geri alınamaz.';

  @override
  String get searchTags => 'Etiketlerde ara';

  @override
  String get spoilerTapToView => 'Spoiler, görüntülemek için dokunun';

  @override
  String get mediaVideo => 'video';

  @override
  String get notificationSomeone => 'Birisi';

  @override
  String get notificationATitle => 'bir başlık';

  @override
  String get notificationAddedDetail => 'AniList\'e eklendi';

  @override
  String get updateNoReleases => 'Yayın bulunamadı';

  @override
  String get updateInvalidResponse => 'Geçersiz güncelleme yanıtı';

  @override
  String get commentsRateLimited => 'Hız sınırlı';

  @override
  String get commentsConnectFailed => 'Bağlantı başarısız oldu';

  @override
  String get dnsNoRecords => 'A kaydı bulunamadı';

  @override
  String get importTokenRejected => 'Jeton reddedildi';

  @override
  String get developerRoleLead => 'Baş Geliştirici';

  @override
  String get developerRoleModerator => 'Anlaşmazlık Moderatörü';

  @override
  String extensionManagerTitle(String type) {
    return '$type yönetici';
  }

  @override
  String extensionsOfType(String type) {
    return '$type uzantıları';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name ayarlar';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name herhangi bir ayar sağlamaz.';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title dizisinin $episode bölümü yayınlandı';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Bölüm $episode yayınlandı';
  }

  @override
  String notificationAdded(String title) {
    return '$title AniList\'e eklendi';
  }

  @override
  String updateNotFound(String message) {
    return 'Güncelleme sunucusu bu sürümü bulamadı: $message';
  }

  @override
  String get installStepJre => 'Java çalışma zamanı';

  @override
  String get installStepCore => 'Çalışma zamanı çekirdeği';

  @override
  String installStepsProgress(int current, int total) {
    return 'Adım $current / $total';
  }

  @override
  String get stepWaiting => 'Bekliyor';

  @override
  String get stepChecking => 'Kontrol ediliyor…';

  @override
  String get stepUpToDate => 'güncel';

  @override
  String stepUpToDateWith(String detail) {
    return 'Güncel · $detail';
  }

  @override
  String get stepWillInstall => 'Kurulacak';

  @override
  String get stepWillUpdate => 'Güncellenecek';

  @override
  String stepWillUpdateTo(String version) {
    return '$version olarak güncellenecek';
  }

  @override
  String get stepInstalled => 'Yüklendi';

  @override
  String get stepNotNeeded => 'Burada gerekli değil';

  @override
  String get stepFailed => 'Başarısız';

  @override
  String stepFailedWith(String reason) {
    return 'Başarısız: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Java çalışma zamanı ve paylaşılan çalışma zamanı çekirdeği üzerinde çalışır. Önce yüklenirler ve değiştiklerinde güncellenirler.';

  @override
  String get installRuntimeNewer =>
      'Bu yöneticinin çalıştığı çalışma zamanında bir güncelleme var.';

  @override
  String get removeJvmTitle => 'Java çalışma zamanı kaldırılsın mı?';

  @override
  String get removeJvmMessage =>
      'Masaüstü uzantısı yöneticileri, yeniden yüklenene kadar çalışmayı durdurur. Bir sonraki yüklemenizde veya açışınızda yeniden indirilir.';

  @override
  String get runtimePreparing => 'Çalışma zamanı hazırlanıyor…';

  @override
  String get calendarAll => 'Hepsi';

  @override
  String get calendarAnime => 'anime';

  @override
  String get calendarManga => 'manga';

  @override
  String get readerCloudflare => 'Tarayıcıda aç (Cloudflare kontrolü)';

  @override
  String get badgeBoardHint =>
      'Bir rozeti ilk kartın köşesine sürükleyin veya üzerinde zaten bulunan bir rozeti taşımak için sürükleyin. Rozetler yer değiştiriyor, dolayısıyla hiçbiri çakışmıyor. Açmak veya kapatmak için aşağıdaki rozetlerden birine dokunun.';

  @override
  String get statusAuto => 'Otomatik';

  @override
  String get unreadCounter => 'Okunmamış sayaç';

  @override
  String get unreadCounterDesc =>
      'Posterlerde kaç bölüm veya bölüm kaldığını gösterin';

  @override
  String get settingsShortcuts => 'Klavye kısayolları';

  @override
  String get settingsShortcutsDesc => 'Her tuşu görün, değiştirin ve kapatın';

  @override
  String get shortcutGroupApp => 'Uygulama';

  @override
  String get shortcutGroupPlayer => 'Video oynatıcı';

  @override
  String get shortcutGroupReader => 'Okuyucu';

  @override
  String get shortcutsEnableApp => 'Uygulama kısayolları';

  @override
  String get shortcutsEnablePlayer => 'Oyuncu kısayolları';

  @override
  String get shortcutsEnableReader => 'Okuyucu kısayolları';

  @override
  String get shortcutsEnableDesc => 'Bu gruptaki her tuşu açın veya kapatın';

  @override
  String get shortcutNotSet => 'Ayarlanmadı';

  @override
  String get shortcutAddKey => 'Anahtar ekle';

  @override
  String get shortcutResetOne => 'Varsayılana sıfırla';

  @override
  String get shortcutClearKeys => 'Tüm anahtarları kaldır';

  @override
  String get shortcutResetAll => 'Tüm kısayolları sıfırla';

  @override
  String get shortcutResetAllDesc => 'Her anahtarı varsayılana geri döndürün';

  @override
  String get shortcutPress => 'İstediğiniz tuşa veya kombinasyona basın';

  @override
  String get shortcutPressHint =>
      'Her kombinasyon yalnızca bir eyleme ait olabilir, dolayısıyla bir tanesini almak onu harekete geçirir.';

  @override
  String get shortcutSeekPercent => 'Videonun bir noktasına atla';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Geri dön';

  @override
  String get shortcutAppFullscreen => 'Tam ekrana geçiş yap';

  @override
  String get shortcutAppGlass => 'Cam modunu değiştir';

  @override
  String get shortcutAppMaterialYou => 'Malzemeyi Değiştir';

  @override
  String get shortcutAppDark => 'Karanlık modu değiştir';

  @override
  String get shortcutAppOled => 'OLED siyahı değiştir';

  @override
  String get shortcutAppSearch => 'Aramayı aç';

  @override
  String get shortcutAppSettings => 'Ayarları aç';

  @override
  String get shortcutAppDownloads => 'İndirilenleri aç';

  @override
  String get shortcutAppNotifications => 'Bildirimleri aç';

  @override
  String get shortcutAppIncognito => 'Gizli moda geç';

  @override
  String get shortcutAppShortcuts => 'Klavye kısayollarını göster';

  @override
  String get shortcutPlayerPlayPause => 'Oynat veya duraklat';

  @override
  String get shortcutPlayerSeekForward => 'İleriye doğru ara';

  @override
  String get shortcutPlayerSeekBack => 'Geri ara';

  @override
  String get shortcutPlayerSeekForwardLong => '30 saniye ileri ara';

  @override
  String get shortcutPlayerSeekBackLong => '30 saniye geriye git';

  @override
  String get shortcutPlayerFrameForward => 'Sonraki kare';

  @override
  String get shortcutPlayerFrameBack => 'Önceki çerçeve';

  @override
  String get shortcutPlayerVolumeUp => 'Sesi aç';

  @override
  String get shortcutPlayerVolumeDown => 'Ses kısma';

  @override
  String get shortcutPlayerMute => 'Sessiz';

  @override
  String get shortcutPlayerFullscreen => 'Tam ekran';

  @override
  String get shortcutPlayerNext => 'Sonraki bölüm';

  @override
  String get shortcutPlayerPrevious => 'Önceki bölüm';

  @override
  String get shortcutPlayerSkip => 'Girişi veya bitişi atla';

  @override
  String get shortcutPlayerPanel => 'Bölüm listesi';

  @override
  String get shortcutPlayerSpeedUp => 'Daha hızlı oynatma';

  @override
  String get shortcutPlayerSpeedDown => 'Daha yavaş oynatma';

  @override
  String get shortcutPlayerSpeedReset => 'Normal hız';

  @override
  String get shortcutPlayerSubtitleToggle => 'Altyazı açık veya kapalı';

  @override
  String get shortcutPlayerSubtitleCycle => 'Sonraki altyazı parçası';

  @override
  String get shortcutPlayerAudioCycle => 'Sonraki ses parçası';

  @override
  String get shortcutPlayerStreamCycle => 'Sonraki yayın';

  @override
  String get shortcutPlayerFit => 'Video uyumunu değiştir';

  @override
  String get shortcutReaderRight => 'Sağdaki sayfa';

  @override
  String get shortcutReaderLeft => 'Soldaki sayfa';

  @override
  String get shortcutReaderNextPage => 'Sonraki sayfa';

  @override
  String get shortcutReaderPreviousPage => 'Önceki sayfa';

  @override
  String get shortcutReaderControls => 'Denetimleri göster veya gizle';

  @override
  String get shortcutReaderNextChapter => 'Sonraki bölüm';

  @override
  String get shortcutReaderPreviousChapter => 'Önceki bölüm';

  @override
  String shortcutTaken(String action) {
    return '$action\'den alınmıştır';
  }

  @override
  String get incognitoTurnedOn => 'Gizli mod açık';

  @override
  String get incognitoTurnedOff => 'Gizli mod kapalı';

  @override
  String get onHoldAnime => 'beklemede olan anime';

  @override
  String get onHoldManga => 'Manga beklemede';

  @override
  String get droppedAnime => 'Bırakılan anime';

  @override
  String get droppedManga => 'Bırakılan manga';

  @override
  String get generalSectionDesktop => 'Masaüstü';

  @override
  String get closeAction => 'Pencere kapatıldığında';

  @override
  String get closeActionQuit => 'Uygulamadan çık';

  @override
  String get closeActionWhenBusy =>
      'Bir şey çalışırken tepside çalışmaya devam edin';

  @override
  String get closeActionAlways => 'Daima tepside çalışmaya devam edin';

  @override
  String get closeActionNoTray =>
      'Sistem tepsisi burada mevcut olmadığından uygulama kapatıldığında sonlandırılıyor';

  @override
  String get gamepadNav => 'Oyun kumandası navigasyonu';

  @override
  String get gamepadNavDesc =>
      'Uygulamada dolaşın ve oynatıcıyı bir oyun kumandasıyla kontrol edin';

  @override
  String get trayShow => 'Dartotsu\'yu göster';

  @override
  String get trayQuit => 'Çık';

  @override
  String get trayIdle => 'Hiçbir şey çalışmıyor';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe indiriliyor',
      one: '$count öğesi indiriliyor',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Listelerinizi senkronize etme';

  @override
  String get trayUpdating => 'Uygulama güncelleniyor';

  @override
  String get trayPlaying => 'Küçük bir pencerede oynamak';

  @override
  String get traySearch => 'Ara';

  @override
  String get trayPauseDownloads => 'İndirmeleri duraklat';

  @override
  String get trayResumeDownloads => 'İndirmeleri devam ettir';

  @override
  String get playerDownloadTitle => 'Oynatıcıyı indirme';

  @override
  String get playerDownloadBody =>
      'Dartotsu video motorunu bir kez getirir. Oynatma hazır olur olmaz başlar.';

  @override
  String get playerDownloadStarting => 'İndirme başlatılıyor…';

  @override
  String get playerDownloadFailedTitle => 'Oyuncu alınamadı';

  @override
  String get playerDownloadFailedBody =>
      'Bağlantınızı kontrol edip tekrar deneyin. İndirme kaldığı yerden devam eder.';

  @override
  String get playerDownloadRetry => 'Tekrar dene';

  @override
  String get playerDownloadCopy => 'Ayrıntıları kopyala';

  @override
  String get removePlayerTitle => 'Oynatıcı kaldırılsın mı?';

  @override
  String get removePlayerMessage =>
      'Oynatıcı tekrar indirilene kadar videolar oynatılamaz.';

  @override
  String get trailerLoading => 'Fragman yükleniyor…';

  @override
  String get trailerFailed => 'Fragman burada oynatılamadı, tarayıcıda açıldı';
}
