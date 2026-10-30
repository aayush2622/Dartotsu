// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'NOVA najbolja aplikacija za\npraćenje animea i mange';

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
  String get loadMore => 'Učitaj još';

  @override
  String get login => 'Prijava';

  @override
  String get continueAsGuest => 'Nastavi kao gost';

  @override
  String get getStarted => 'Započni';

  @override
  String get loginWithToken => 'Prijava tokenom';

  @override
  String get pasteTokenHint => 'Zalijepi svoj pristupni token';

  @override
  String loginTo(String service) {
    return 'Prijavi se na $service';
  }

  @override
  String get settings => 'Postavke';

  @override
  String get account => 'Račun';

  @override
  String get about => 'O aplikaciji';

  @override
  String get language => 'Jezik';

  @override
  String get animationSpeed => 'Animacije';

  @override
  String get animationSpeedDesc =>
      'Brzina prijelaza i ulaznih efekata u cijeloj aplikaciji';

  @override
  String get animationSpeedOff => 'Isključeno';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ekstenzija',
      few: 'Ekstenzije',
      one: 'Ekstenzija',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Nepoznati izvor';

  @override
  String get install => 'Instaliraj';

  @override
  String get update => 'Ažuriraj';

  @override
  String get uninstall => 'Deinstaliraj';

  @override
  String get updateInstallCancelled =>
      'Instalacija je otkazana. Ako je Android rekao da se aplikacija sukobljava s instaliranom, potpis je drukčiji: prvo deinstaliraj trenutnu verziju, pa onda instaliraj ažuriranje';

  @override
  String updateInstallFailed(String error) {
    return 'Ažuriranje nije uspjelo: $error';
  }

  @override
  String get appLock => 'Zaključavanje aplikacije';

  @override
  String get appLockDesc =>
      'Traži šifru kad se aplikacija otvori ili vrati nakon nekog vremena';

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
  String get appLockUnlock => 'Upiši svoju šifru';

  @override
  String get appLockWrong => 'Pogrešna šifra';

  @override
  String appLockWait(String seconds) {
    return 'Previše pokušaja, pričekaj $seconds s';
  }

  @override
  String get appLockNew => 'Odaberi šifru';

  @override
  String get appLockNewHint => '4 do 8 znamenki';

  @override
  String get appLockConfirm => 'Upiši je još jednom';

  @override
  String get appLockMismatch => 'Šifre se ne podudaraju';

  @override
  String get appLockOn => 'Šifra je postavljena';

  @override
  String get appLockRemoveTitle => 'Upiši šifru da isključiš zaključavanje';

  @override
  String get installFailed => 'Instalacija nije uspjela';

  @override
  String get updateFailed => 'Ažuriranje nije uspjelo';

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
  String get noSourceSettings => 'Izvor nema nikakvih postavki';

  @override
  String get addPluginRepository => 'Dodaj repozitorij dodataka';

  @override
  String get pluginIndexUrlHint => 'URL indeksa dodataka';

  @override
  String get addRepository => 'Dodaj repozitorij';

  @override
  String get pluginRepoUpdated => 'Repozitorij dodataka je ažuriran';

  @override
  String get pluginRepoUpdateFailed =>
      'Osvježavanje repozitorija dodataka nije uspjelo';

  @override
  String get ok => 'U redu';

  @override
  String get cancel => 'Odustani';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';

  @override
  String get save => 'Spremi';

  @override
  String get reset => 'Resetiraj';

  @override
  String get clear => 'Očisti';

  @override
  String get test => 'Test';

  @override
  String get testing => 'Testiram…';

  @override
  String get resolving => 'Razrješavam…';

  @override
  String get none => 'Ništa';

  @override
  String get selectMediaService => 'Odaberi medijski servis';

  @override
  String get pickColor => 'Odaberi boju';

  @override
  String get colorPickerCustom => 'Prilagođeno';

  @override
  String get colorPickerTransparent => 'Prozirno';

  @override
  String get ltr => 'S lijeva na desno';

  @override
  String get searchSettings => 'Traži u postavkama';

  @override
  String nothingMatches(String query) {
    return 'Ništa ne odgovara upitu \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Traži: $category';
  }

  @override
  String get settingsAppearance => 'Izgled';

  @override
  String get settingsAppearanceDesc => 'Tema, boje, stakleni način';

  @override
  String get settingsGeneral => 'Općenito';

  @override
  String get settingsGeneralDesc => 'Jezik i ponašanje';

  @override
  String get settingsNetwork => 'Mreža';

  @override
  String get settingsNetworkDesc => 'User agent, certifikati, DNS i proxy';

  @override
  String get settingsAccountDesc => 'Servis za praćenje i prijava';

  @override
  String get settingsUpdates => 'Ažuriranja';

  @override
  String get amoledBlack => 'AMOLED crna';

  @override
  String get amoledBlackDesc => 'Potpuno crne površine u tamnom načinu';

  @override
  String get glassMode => 'Stakleni način';

  @override
  String get glassModeDesc =>
      'Zamućene površine preko slika iz tvoje biblioteke';

  @override
  String get shelfFrame => 'Okvir oko sekcija';

  @override
  String get shelfFrameDesc =>
      'Prikaži karticu iza svake police ili pusti da redovi stoje izravno na stranici';

  @override
  String get settingsExtensionsDesc =>
      'Upravitelji izvora, repozitoriji i opcije ekstenzija';

  @override
  String get settingsAddons => 'Dodaci';

  @override
  String get customPath => 'Prilagođena putanja pohrane';

  @override
  String get customPathDesc =>
      'Gdje se čuvaju podaci aplikacije. Dugo pritisni za reset';

  @override
  String get selectDirectory => 'Odaberi mapu';

  @override
  String get differentCacheManager => 'Alternativna predmemorija slika';

  @override
  String get differentCacheManagerDesc =>
      'Koristi drugi upravitelj predmemorije za slike';

  @override
  String get backupAndRestore => 'Sigurnosna kopija i vraćanje';

  @override
  String get backupAndRestoreDesc => 'Spremi ili učitaj svoje postavke';

  @override
  String get backup => 'Sigurnosna kopija';

  @override
  String get restore => 'Vrati';

  @override
  String get loadExtensionsIcon => 'Učitaj ikone ekstenzija';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Prikaži ikone izvora na popisima ekstenzija';

  @override
  String get sectionStorage => 'Pohrana';

  @override
  String get sectionManagers => 'Upravitelji';

  @override
  String get sectionOptions => 'Opcije';

  @override
  String get backupTabBackup => 'Napravi kopiju';

  @override
  String get backupTabRestore => 'Vrati';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys postavki u $categories kategorija';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Zadnja kopija: $time';
  }

  @override
  String get backupNever => 'Još nema kopije';

  @override
  String get backupSelectAll => 'Odaberi sve';

  @override
  String get backupClearAll => 'Očisti';

  @override
  String backupKeys(Object count) {
    return '$count postavki';
  }

  @override
  String get backupPassword => 'Lozinka (neobavezno)';

  @override
  String get backupPasswordHint => 'Ostavi prazno za zadanu';

  @override
  String get backupSensitive =>
      'Uključuje tokene za prijavu. Čuvaj ovu datoteku privatnom';

  @override
  String get backupCreate => 'Napravi kopiju';

  @override
  String backupSaved(Object name) {
    return 'Kopija spremljena u $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Kopija nije uspjela: $error';
  }

  @override
  String get backupPickFile => 'Odaberi datoteku kopije';

  @override
  String get backupPickFileDesc =>
      'Odaberi .json datoteku koju je napravio Dartotsu';

  @override
  String get backupChooseAnother => 'Odaberi drugu datoteku';

  @override
  String get backupCreatedAt => 'Napravljeno';

  @override
  String get backupAppVersion => 'Verzija aplikacije';

  @override
  String get backupDevice => 'Uređaj';

  @override
  String get backupAccounts => 'Računi';

  @override
  String get backupSize => 'Veličina';

  @override
  String get backupEncrypted => 'Zaštićeno lozinkom';

  @override
  String get backupUnlock => 'Otključaj';

  @override
  String get backupWrongPassword =>
      'Ne mogu pročitati ovu datoteku. Provjeri lozinku';

  @override
  String get backupRestoreSelected => 'Vrati odabrano';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Vratiti $count postavki? Postojeće vrijednosti u ovim kategorijama bit će prebrisane.';
  }

  @override
  String get backupRestored =>
      'Vraćeno. Ponovno pokreni aplikaciju da se sve primijeni';

  @override
  String backupRestoreFailed(Object error) {
    return 'Vraćanje nije uspjelo: $error';
  }

  @override
  String get backupSelectOne => 'Odaberi barem jednu kategoriju';

  @override
  String get backupCatTheme => 'Izgled';

  @override
  String get backupCatThemeDesc => 'Tema, boje, staklo, fontovi i stil kartica';

  @override
  String get backupCatCommon => 'Općenito';

  @override
  String get backupCatCommonDesc => 'Jezik, pohrana, mreža i opcije ekstenzija';

  @override
  String get backupCatPlayer => 'Player';

  @override
  String get backupCatPlayerDesc => 'Postavke playera';

  @override
  String get backupCatReader => 'Čitač';

  @override
  String get backupCatReaderDesc => 'Postavke čitača';

  @override
  String get backupCatProtected => 'Računi';

  @override
  String get backupCatProtectedDesc => 'Tokeni za prijavu i podaci o prijavi';

  @override
  String get backupCatOther => 'Servisi i feedovi';

  @override
  String get backupCatOtherDesc => 'Rasporedi feeda, popisi i opcije servisa';

  @override
  String get logFile => 'Datoteka dnevnika';

  @override
  String get logFileDesc =>
      'Podijeli dnevnik aplikacije ili kopiraj njegovu putanju na Linuxu';

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
  String get logFileCopied => 'Putanja dnevnika kopirana';

  @override
  String get donateSheetTitle => 'Sviđa ti se Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu gradi i održava jedna osoba. Ako ti je koristan, razmisli o podršci razvoju.';

  @override
  String get donateLater => 'Možda kasnije';

  @override
  String get glassBackground => 'Staklena pozadina';

  @override
  String get glassBackgroundDesc =>
      'Tvoj profilni banner, osim ako postaviš poveznicu na sliku';

  @override
  String get glassBackgroundHint =>
      'Poveznica na sliku (ostavi prazno za svoj banner)';

  @override
  String get followCover => 'Prati naslovnicu';

  @override
  String get followCoverDesc =>
      'Boje prate pozadinu, a na stranicama s detaljima naslovnicu';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Stil kartice';

  @override
  String get cardStyleDesc => 'Položaj naslova, veličina, napredak i značke';

  @override
  String get customFont => 'Font';

  @override
  String get customFontDesc => 'Zadano, datoteka s uređaja ili Google Fonts';

  @override
  String get customFontError => 'Ne mogu učitati tu datoteku fonta';

  @override
  String get googleFontError => 'Ne mogu preuzeti taj font';

  @override
  String get yourFonts => 'Tvoji fontovi';

  @override
  String get addFontFile => 'Dodaj datoteku fonta…';

  @override
  String get browseGoogleFonts => 'Pregledaj Google Fonts…';

  @override
  String get searchGoogleFonts => 'Traži u Google Fonts';

  @override
  String get defaultFont => 'Zadano';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dinamične boje iz sustava';

  @override
  String get jsonTheme => 'Prilagođena datoteka teme';

  @override
  String get jsonThemeDesc =>
      'Žive boje iz ~/.config/dartotsu/theme.json (vlastita skripta ili tvoje ručne izmjene)';

  @override
  String get themeMode => 'Način teme';

  @override
  String get mode => 'Način';

  @override
  String get trackingService => 'Servis za praćenje';

  @override
  String get signOut => 'Odjava';

  @override
  String get signIn => 'Prijava';

  @override
  String get notSignedIn => 'Nisi prijavljen';

  @override
  String signOutOf(String service) {
    return 'Odjaviti se s $service?';
  }

  @override
  String get checkForUpdates => 'Provjeri ažuriranja';

  @override
  String get checkForUpdatesDesc => 'Obavijesti me o novom izdanju na GitHubu';

  @override
  String get updateChannel => 'Kanal ažuriranja';

  @override
  String get channel => 'Kanal';

  @override
  String get stable => 'Stabilni';

  @override
  String get preRelease => 'Pretizdanje';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Provjeri sada';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Zadano';

  @override
  String currentlyUsing(String value) {
    return 'Trenutno: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Zadano (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Vrsta';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Korisničko ime';

  @override
  String get proxyPassword => 'Lozinka';

  @override
  String get optional => 'Neobavezno';

  @override
  String get clearCookies => 'Očisti kolačiće';

  @override
  String get clearCookiesDesc => 'Ukloni sve spremljene kolačiće';

  @override
  String notImplementedArea(String area) {
    return '$area — uskoro';
  }

  @override
  String notImplementedService(String service) {
    return '$service to još ne podržava.';
  }

  @override
  String get couldNotLoadResults => 'Ne mogu učitati rezultate';

  @override
  String get updateCheckFailed => 'Ne mogu provjeriti ažuriranja';

  @override
  String get highRefreshRate => 'Visoka frekvencija osvježavanja';

  @override
  String get highRefreshRateDesc =>
      'Koristi najvišu frekvenciju osvježavanja koju tvoj zaslon podržava';

  @override
  String get imageSave => 'Spremi sliku';

  @override
  String imageSavedTo(String path) {
    return 'Spremljeno u $path';
  }

  @override
  String get imageActionFailed => 'Ne mogu preuzeti sliku';

  @override
  String get imageTitleCover => 'Naslovnica';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Profilna slika';

  @override
  String get verifyTls => 'Provjeri certifikate';

  @override
  String get verifyTlsDesc =>
      'Odbij poslužitelje s neispravnim HTTPS certifikatima. Isključi samo za izvor koji koristi samopotpisani certifikat';

  @override
  String get clearCookiesConfirm =>
      'Ukloniti sve spremljene kolačiće? To bi te moglo odjaviti s nekih izvora.';

  @override
  String get version => 'Verzija';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Izvor, problemi i izdanja';

  @override
  String get discordDesc => 'Zajednica i podrška';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Podrži razvoj';

  @override
  String get contributors => 'Suradnici';

  @override
  String get contributorsDesc => 'Ljudi koji su izgradili Dartotsu';

  @override
  String get contributorsLoadFailed => 'Ne mogu učitati suradnike';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projekti građeni na temelju Dartotsua';

  @override
  String get forksEmpty => 'Nema pronađenih forkova';

  @override
  String get sectionColors => 'Boje';

  @override
  String get sectionDisplay => 'Prikaz';

  @override
  String get sectionStyle => 'Stil';

  @override
  String get sectionCommunity => 'Zajednica';

  @override
  String get sectionAppInfo => 'Info o aplikaciji';

  @override
  String get sectionRequests => 'Zahtjevi';

  @override
  String get sectionDnsProxy => 'DNS i proxy';

  @override
  String get onboardingBack => 'Natrag';

  @override
  String get onboardingNext => 'Dalje';

  @override
  String get onboardingSkip => 'Preskoči';

  @override
  String get onboardingPaletteTitle => 'Prilagodi po svom';

  @override
  String get onboardingPaletteBody =>
      'Odaberi paletu. Svi naglasci, od kartica do playera, slijede je.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Svijetla';

  @override
  String get themeModeDark => 'Tamna';

  @override
  String get onboardingSyncTitle => 'Sinkroniziraj svoju biblioteku';

  @override
  String get onboardingSyncBody =>
      'Prijavi se na AniList da povučeš svoje popise, napredak i ocjene. Ili preskoči i razgledaj kao gost.';

  @override
  String get onboardingOpenLinks =>
      'Otvaraj AniList i repo poveznice u Dartotsuu';

  @override
  String get onboardingPermsTitle => 'Dozvole';

  @override
  String get onboardingPermsBody =>
      'Dopusti ovo sada da preuzimanja, ažuriranja i obavijesti rade bez prekida. Kasnije ih možeš promijeniti u postavkama sustava.';

  @override
  String get permNotifications => 'Obavijesti';

  @override
  String get permNotificationsDesc =>
      'Napredak preuzimanja, nove epizode i odgovori';

  @override
  String get permStorage => 'Pristup svim datotekama';

  @override
  String get permStorageDesc => 'Spremaj preuzimanja u javnu mapu Dartotsu';

  @override
  String get permInstall => 'Instaliraj ažuriranja';

  @override
  String get permInstallDesc =>
      'Dopusti Dartotsuu da sam instalira vlastita ažuriranja';

  @override
  String get permBattery => 'Baterija bez ograničenja';

  @override
  String get permBatteryDesc => 'Neka duga preuzimanja rade u pozadini';

  @override
  String get permGrant => 'Dopusti';

  @override
  String get linkOpenInApp => 'Otvaraj poveznice u Dartotsuu';

  @override
  String get linkOpenInAppDesc =>
      'Neka AniList i repo poveznice otvaraju aplikaciju';

  @override
  String get reviewsTitle => 'Recenzije';

  @override
  String get reviewsEmpty => 'Još nema recenzija';

  @override
  String get reviewsFailed => 'Ne mogu učitati recenzije';

  @override
  String get reviewHelpfulQuestion => 'Je li ti ova recenzija bila korisna?';

  @override
  String get reviewVoteFailed => 'Ne mogu spremiti tvoj glas';

  @override
  String reviewHelpful(int n, int total) {
    return '$n od $total smatra ovo korisnim';
  }

  @override
  String get calendarTitle => 'Raspored emitiranja';

  @override
  String get calendarToday => 'Danas';

  @override
  String get calendarEmpty => 'Ovaj dan se ništa ne emitira';

  @override
  String get calendarFailed => 'Ne mogu učitati raspored';

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
    return 'Epizoda $n';
  }

  @override
  String get shareAnalytics => 'Dijeli anonimne podatke o korištenju';

  @override
  String get shareAnalyticsDesc =>
      'Anonimni brojevi korisnika i izvješća o rušenju. Bez računa i osobnih podataka';

  @override
  String get linkOpenAnilist => 'Otvaraj AniList poveznice u Dartotsuu';

  @override
  String get linkOpenAnilistDesc =>
      'Uključi obradu poveznica da se anilist.co poveznice otvaraju u aplikaciji';

  @override
  String get linkSettingsFailed => 'Ne mogu otvoriti postavke sustava';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Prikaži na svom Discord profilu što radiš. Treba ti Discord token.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Prikaži na svom Discord profilu što radiš. Discord desktop aplikacija mora biti pokrenuta.';

  @override
  String get discordBrowsing => 'Prikaži aktivnost pregledavanja';

  @override
  String get discordBrowsingDesc =>
      'Prikaži i karticu, stranicu ili profil koji gledaš, a ne samo što gledaš ili čitaš.';

  @override
  String get discordLookHeader => 'Izgled prisutnosti';

  @override
  String get discordActivityType => 'Vrsta aktivnosti';

  @override
  String get discordActivityTypeDesc =>
      'Kako Discord to formulira: \"Watching …\" ili \"Playing …\". Auto koristi Watching za anime, a Playing za sve ostalo.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'Prikaži naslovnice';

  @override
  String get discordCoversDesc => 'Naslovnica i ikona Dartotsua na kartici.';

  @override
  String get discordTimer => 'Prikaži mjerač vremena';

  @override
  String get discordTimerDesc =>
      'Proteklo ili preostalo vrijeme ispod naslova.';

  @override
  String get discordButtons => 'Prikaži gumbe';

  @override
  String get discordButtonsDesc =>
      'Gumbi \"View anime / manga\" i \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Sakrij naslove';

  @override
  String get discordHideTitlesDesc =>
      'Zamijeni nazive animea i mange (te njihovu naslovnicu i poveznicu) s \"Something private\".';

  @override
  String get discordConnectionHeader => 'Veza';

  @override
  String get listSearchHint => 'Traži u ovom popisu';

  @override
  String get listSort => 'Poredaj';

  @override
  String get listFilter => 'Filtriraj';

  @override
  String get listRandom => 'Nasumičan naslov';

  @override
  String get listReverse => 'Obrnuti redoslijed';

  @override
  String get listSortDefault => 'Redoslijed popisa';

  @override
  String get listSortScore => 'Tvoja ocjena';

  @override
  String get listSortTitle => 'Naslov';

  @override
  String get listSortUpdated => 'Zadnje ažurirano';

  @override
  String get listSortProgress => 'Napredak';

  @override
  String get listSortReleased => 'Datum izlaska';

  @override
  String get listSortAverage => 'Prosječna ocjena';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Žanrovi';

  @override
  String get listFilterClear => 'Očisti filtre';

  @override
  String get listNoMatches => 'Ništa na ovom popisu ne odgovara';

  @override
  String get discordLogin => 'Prijavi se na Discord';

  @override
  String get discordToken => 'Discord token';

  @override
  String get discordTokenSaved =>
      'Spremljeno. Dodirni za zamjenu, dugo pritisni za uklanjanje.';

  @override
  String get discordTokenNotSet => 'Nije postavljen. Dodirni za dodavanje.';

  @override
  String get discordTokenSavedSnack => 'Discord token spremljen';

  @override
  String get discordTokenRemovedSnack => 'Discord token uklonjen';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Uključeno · dodirni za promjenu izgleda';

  @override
  String get discordRichPresenceRowOff =>
      'Prikaži na svom Discord profilu što radiš';

  @override
  String get loginCancelled => 'Prijava otkazana';

  @override
  String get invalidToken => 'Neispravan token';

  @override
  String loginFailed(String error) {
    return 'Prijava nije uspjela: $error';
  }

  @override
  String get malLoginFailed => 'Prijava na MyAnimeList nije uspjela';

  @override
  String get kitsuLoginFailed =>
      'Prijava na Kitsu nije uspjela. Provjeri e-poštu i lozinku.';

  @override
  String get kitsuLoginTitle => 'Prijavi se na Kitsu';

  @override
  String get emailOrUsername => 'E-pošta ili korisničko ime';

  @override
  String get password => 'Lozinka';

  @override
  String get kitsuProfile => 'Kitsu profil';

  @override
  String get mangaBakaLoginFailed => 'Prijava na MangaBaka nije uspjela';

  @override
  String get mangaBakaProfile => 'MangaBaka profil';

  @override
  String get refreshFromMangaBaka => 'Osvježi s MangaBake';

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
  String get artistsLabel => 'Umjetnici';

  @override
  String get authorsLabel => 'Autori';

  @override
  String get publishersLabel => 'Izdavači';

  @override
  String get licensedLabel => 'Licencirano';

  @override
  String get contentRatingLabel => 'Dobna ocjena sadržaja';

  @override
  String get yesLabel => 'Da';

  @override
  String get noLabel => 'Ne';

  @override
  String get ratingSteps => 'Koraci ocjenjivanja';

  @override
  String get hideNsfw => 'Sakrij NSFW';

  @override
  String get hideNsfwDesc =>
      'Drži naslove za odrasle izvan feedova i pretrage, a svoje unose za odrasle prikaži pod Skriveni mediji.';

  @override
  String get kitsuAccountOptions => 'Opcije Kitsu računa';

  @override
  String get mangaBakaAccountOptions => 'Opcije MangaBaka računa';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Ne mogu ažurirati tvoje Kitsu postavke';

  @override
  String get titleCanonical => 'Kanonski';

  @override
  String get titleRomanized => 'Romanizirano';

  @override
  String get titleLocalized => 'Lokalizirano';

  @override
  String get ratingSystem => 'Sustav ocjenjivanja';

  @override
  String get ratingSimple => 'Jednostavni (3 smajlića)';

  @override
  String get ratingRegular => 'Običan (5 zvjezdica)';

  @override
  String get ratingAdvanced => 'Napredni (10 bodova)';

  @override
  String get contentFilter => 'Filtar sadržaja';

  @override
  String get contentSfw => 'Samo siguran sadržaj';

  @override
  String get contentSometimes => 'Sadržaj za odrasle u pretrazi';

  @override
  String get contentEverywhere => 'Sadržaj za odrasle posvuda';

  @override
  String get shareToGlobal => 'Dijeli u globalni feed';

  @override
  String get shareToGlobalDesc =>
      'Neka se tvoja aktivnost pojavi u Kitsuovu globalnom feedu.';

  @override
  String get memberSince => 'Član od';

  @override
  String get location => 'Lokacija';

  @override
  String get accountType => 'Vrsta računa';

  @override
  String get accountSupporter => 'Podupiratelj';

  @override
  String get accountFree => 'Besplatno';

  @override
  String get accountDetails => 'Detalji računa';

  @override
  String get refreshFromKitsu => 'Osvježi s Kitsua';

  @override
  String get simklReadOnly => 'Simkl je dobio pristup samo za čitanje';

  @override
  String get incognitoEditsBlocked => 'Inkognito: izmjene popisa su blokirane';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Inkognito: napredak nije spremljen';

  @override
  String progressSet(int progress) {
    return 'Napredak postavljen na $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title uklonjen s tvog popisa';
  }

  @override
  String get following => 'Pratim';

  @override
  String get homeSections => 'Sekcije početne';

  @override
  String get homeSectionsHint =>
      'Povuci za promjenu redoslijeda. Skrivene sekcije se nikad ne dohvaćaju.';

  @override
  String get customListDeleteFailed =>
      'Brisanje prilagođenog popisa nije uspjelo';

  @override
  String get customListsSaveFailed =>
      'Spremanje prilagođenih popisa nije uspjelo';

  @override
  String get customListsSaved => 'Prilagođeni popisi spremljeni';

  @override
  String get listName => 'Naziv popisa';

  @override
  String get addList => 'Dodaj popis';

  @override
  String voiceActorsIn(String name) {
    return 'Glasovni glumci · $name';
  }

  @override
  String get animeAppearances => 'Pojavljivanja u animeu';

  @override
  String get mangaAppearances => 'Pojavljivanja u mangi';

  @override
  String get voicedCharacters => 'Posuđeni glasovi likovima';

  @override
  String get animeCredits => 'Zasluge u animeu';

  @override
  String get mangaCredits => 'Zasluge u mangi';

  @override
  String get mainProductions => 'Glavne produkcije';

  @override
  String get otherWorks => 'Ostali radovi';

  @override
  String get prequelSequel => 'Prequel i sequel';

  @override
  String get previousSeason => 'Prošla sezona';

  @override
  String get thisSeason => 'Ova sezona';

  @override
  String get nextSeason => 'Sljedeća sezona';

  @override
  String get voiceRoles => 'Glasovne uloge';

  @override
  String get staffPositions => 'Pozicije u ekipi';

  @override
  String get mangaWorks => 'Radovi na mangi';

  @override
  String get malProfile => 'MyAnimeList profil';

  @override
  String get refreshFromMal => 'Osvježi s MyAnimeList';

  @override
  String get repullProfileCounts => 'Ponovno povuci svoj profil i brojke';

  @override
  String get refreshed => 'Osvježeno';

  @override
  String get simklProfile => 'Simkl profil';

  @override
  String get refreshFromSimkl => 'Osvježi sa Simkla';

  @override
  String get repullProfileLibrary => 'Ponovno povuci svoj profil i biblioteku';

  @override
  String get simklSignInToSearch => 'Prijavi se na Simkl za pretragu';

  @override
  String get dropRate => 'Stopa odustajanja';

  @override
  String get simklAttribution =>
      'Podatke i grafike pruža Simkl. Pogledaj na Simklu';

  @override
  String get onHold => 'Na čekanju';

  @override
  String get scoredBy => 'Ocijenilo';

  @override
  String get planToWatch => 'Planiram gledati';

  @override
  String get planToRead => 'Planiram čitati';

  @override
  String get timesRewatched => 'Puta ponovno gledano';

  @override
  String get timesReread => 'Puta ponovno pročitano';

  @override
  String get comments => 'Komentari';

  @override
  String get moviesAndSeries => 'Filmovi i serije';

  @override
  String get trackingOnly => 'Samo praćenje';

  @override
  String get signedIn => 'Prijavljen';

  @override
  String get searchLanguage => 'Jezik pretrage';

  @override
  String get savedToList => 'Spremljeno na tvoj popis';

  @override
  String get removedFromYourList => 'Uklonjeno s tvog popisa';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get details => 'Detalji';

  @override
  String get addToList => 'Dodaj na popis';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Naslov kopiran';

  @override
  String get linkCopied => 'Poveznica kopirana';

  @override
  String get watchTrailer => 'Pogledaj trailer';

  @override
  String get copyTitle => 'Kopiraj naslov';

  @override
  String get copyLink => 'Kopiraj poveznicu';

  @override
  String get openInBrowser => 'Otvori u pregledniku';

  @override
  String viewOnSource(String source) {
    return 'Pogledaj na $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Epizoda $ep izlazi za $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Sljedeća epizoda za $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Poglavlje $chapter stiže za otprilike $time';
  }

  @override
  String get logPathCopied =>
      'Putanja datoteke dnevnika kopirana u međuspremnik';

  @override
  String get animeSource => 'Anime izvor';

  @override
  String get mangaSource => 'Manga izvor';

  @override
  String get popular => 'Popularno';

  @override
  String get latest => 'Najnovije';

  @override
  String get saved => 'Spremljeno';

  @override
  String get nothingMatched => 'Ništa nije pronađeno';

  @override
  String get nothingSavedFromSource =>
      'S ovog izvora još ništa nije spremljeno';

  @override
  String get sourceReturnedNothing => 'Ovaj izvor nije vratio ništa';

  @override
  String get checkConnectionOrSource => 'Provjeri vezu ili probaj drugi izvor.';

  @override
  String get tryDifferentSearch => 'Probaj drugi pojam za pretragu.';

  @override
  String get savedTitlesAppearHere =>
      'Naslovi koje dodaš na popis pojavit će se ovdje.';

  @override
  String get tryOtherFeed => 'Probaj drugi feed ili pretraži.';

  @override
  String searchSource(String source) {
    return 'Traži: $source';
  }

  @override
  String get animeExtensions => 'Anime ekstenzije';

  @override
  String get mangaExtensions => 'Manga ekstenzije';

  @override
  String get nothingHereYet => 'Ovdje još nema ničega';

  @override
  String get savedOnDeviceUntilLogin =>
      'Sve ispod je spremljeno na ovom uređaju dok ne napraviš nešto drugo.';

  @override
  String get yourProfile => 'Tvoj profil';

  @override
  String get activity => 'Aktivnost';

  @override
  String get extensions => 'Ekstenzije';

  @override
  String get logOut => 'Odjava';

  @override
  String get logIn => 'Prijava';

  @override
  String get logOutConfirm => 'Jesi li siguran da se želiš odjaviti?';

  @override
  String get incognitoMode => 'Inkognito način';

  @override
  String get alsoBlockListEdits => 'Blokiraj i izmjene popisa';

  @override
  String get offlineMode => 'Offline način';

  @override
  String get switchService => 'Promijeni servis';

  @override
  String logOutOf(String name) {
    return 'Odjavi se s $name';
  }

  @override
  String get loggedIn => 'Prijavljen';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get nothingNew => 'Nema ništa novo';

  @override
  String get thisWeek => 'Ovaj tjedan';

  @override
  String get listOnly => 'Samo s popisa';

  @override
  String get filter => 'Filtriraj';

  @override
  String get searchResults => 'Rezultati pretrage';

  @override
  String get recentSearches => 'Nedavne pretrage';

  @override
  String get searchOrSetFilter => 'Traži ili postavi filtar';

  @override
  String get filters => 'Filtri';

  @override
  String get showLess => 'Prikaži manje';

  @override
  String get showAll => 'Prikaži sve';

  @override
  String get apply => 'Primijeni';

  @override
  String get preview => 'Pregled';

  @override
  String get preset => 'Predložak';

  @override
  String get cardNormal => 'Normalno';

  @override
  String get cardOnCard => 'Na kartici';

  @override
  String get cardInCard => 'U kartici';

  @override
  String get size => 'Veličina';

  @override
  String get cardWidth => 'Širina kartice';

  @override
  String get compact => 'Kompaktno';

  @override
  String get coverAndTitleOnly => 'Samo naslovnica i naslov';

  @override
  String get titleLines => 'Retci naslova';

  @override
  String get shape => 'Oblik';

  @override
  String get posterShape => 'Oblik postera';

  @override
  String get cornerRadius => 'Zaobljenost kutova';

  @override
  String get off => 'Isključeno';

  @override
  String get topLeft => 'Gore lijevo';

  @override
  String get topRight => 'Gore desno';

  @override
  String get bottomLeft => 'Dolje lijevo';

  @override
  String get bottomRight => 'Dolje desno';

  @override
  String get overlays => 'Overlayi';

  @override
  String get progressCount => 'Napredak / broj';

  @override
  String get pill => 'Pilula';

  @override
  String get bar => 'Traka';

  @override
  String get outside => 'Izvana';

  @override
  String get scoreBadge => 'Značka ocjene';

  @override
  String get airingDot => 'Točka emitiranja';

  @override
  String get updateAvailable => 'Dostupno ažuriranje';

  @override
  String get notInstalled => 'Nije instalirano';

  @override
  String get done => 'Gotovo';

  @override
  String get searchOrEnterUrl => 'Traži ili upiši URL';

  @override
  String get refresh => 'Osvježi';

  @override
  String get share => 'Podijeli';

  @override
  String get characters => 'Likovi';

  @override
  String get staff => 'Ekipa';

  @override
  String get readMore => 'Pročitaj više';

  @override
  String get couldNotLoadList => 'Ne mogu učitati popis';

  @override
  String get logInToFavourite => 'Prijavi se da dodaš favorite';

  @override
  String get alsoKnownAs => 'Poznat i kao';

  @override
  String get hideSpoilerNames => 'Sakrij imena sa spojlerima';

  @override
  String get showSpoilerNames => 'Prikaži imena sa spojlerima';

  @override
  String get favourited => 'Među favoritima';

  @override
  String get favourite => 'Favorit';

  @override
  String get couldNotOpenTitle => 'Ne mogu otvoriti ovaj naslov';

  @override
  String get nobodyHereYet => 'Ovdje još nikoga nema';

  @override
  String get noMatches => 'Nema podudaranja';

  @override
  String get gridView => 'Prikaz mreže';

  @override
  String get fullWidth => 'Puna širina';

  @override
  String get userNotFound => 'Korisnik nije pronađen';

  @override
  String get couldNotUpdateFollow => 'Ne mogu ažurirati praćenje';

  @override
  String followedUser(String name) {
    return 'Sada pratiš $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Prestao si pratiti $name';
  }

  @override
  String get messages => 'Poruke';

  @override
  String get logInToSeeMessages => 'Prijavi se da vidiš svoje poruke';

  @override
  String get editActivity => 'Uredi aktivnost';

  @override
  String get newActivity => 'Nova aktivnost';

  @override
  String get editMessage => 'Uredi poruku';

  @override
  String get writeMessage => 'Napiši poruku';

  @override
  String get editReply => 'Uredi odgovor';

  @override
  String get posted => 'Objavljeno';

  @override
  String get couldNotPost => 'Ne mogu objaviti';

  @override
  String get nothingToPreview => 'Nema ničega za pregled';

  @override
  String get writeSomethingHint => 'Napiši nešto… ovdje radi AniList markdown';

  @override
  String get privateMessage => 'Privatna poruka';

  @override
  String get post => 'Objavi';

  @override
  String get nothingHere => 'Ovdje nema ničega';

  @override
  String get noAnimeProgress => 'Nema napretka u animeu';

  @override
  String get noMangaProgress => 'Nema napretka u mangi';

  @override
  String get noMessages => 'Nema poruka';

  @override
  String get writeMessageHint => 'Napiši poruku…';

  @override
  String get shareSomethingHint => 'Podijeli nešto…';

  @override
  String get all => 'Sve';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Broj';

  @override
  String get hoursWatched => 'Sati gledanja';

  @override
  String get chaptersRead => 'Pročitana poglavlja';

  @override
  String get meanScore => 'Srednja ocjena';

  @override
  String get noStatsYet => 'Još nema statistike';

  @override
  String get totalEntries => 'Ukupno unosa';

  @override
  String get episodesWatched => 'Pogledane epizode';

  @override
  String get daysWatched => 'Dani gledanja';

  @override
  String get volumesRead => 'Pročitani svesci';

  @override
  String get standardDeviation => 'Standardna devijacija';

  @override
  String get showMore => 'Prikaži više';

  @override
  String get followsYou => 'Prati te';

  @override
  String get nobodyYet => 'Još nikoga';

  @override
  String get logInToLike => 'Prijavi se da lajkaš';

  @override
  String get failedToLikeActivity => 'Lajkanje aktivnosti nije uspjelo';

  @override
  String get deleteActivityConfirm => 'Obrisati aktivnost?';

  @override
  String get deletedActivity => 'Aktivnost obrisana';

  @override
  String get failedToDeleteActivity => 'Brisanje aktivnosti nije uspjelo';

  @override
  String get subscribed => 'Pretplaćen';

  @override
  String get unsubscribed => 'Pretplata otkazana';

  @override
  String get failedToUpdateSubscription => 'Ažuriranje pretplate nije uspjelo';

  @override
  String get edit => 'Uredi';

  @override
  String get delete => 'Obriši';

  @override
  String get likedBy => 'Sviđa se';

  @override
  String get follow => 'Prati';

  @override
  String get nameCopied => 'Ime kopirano';

  @override
  String get followsEachOther => 'Prate se međusobno';

  @override
  String get unfollow => 'Prestani pratiti';

  @override
  String get userIdCopied => 'ID korisnika kopiran';

  @override
  String get shareProfile => 'Podijeli profil';

  @override
  String get copyUserId => 'Kopiraj ID korisnika';

  @override
  String get failedToDelete => 'Brisanje nije uspjelo';

  @override
  String get failedToLike => 'Lajkanje nije uspjelo';

  @override
  String get replies => 'Odgovori';

  @override
  String get reply => 'Odgovori';

  @override
  String get noRepliesYet => 'Još nema odgovora';

  @override
  String get favouriteAnime => 'Favorit anime';

  @override
  String get favouriteManga => 'Favorit manga';

  @override
  String get favouriteCharacters => 'Favorit likovi';

  @override
  String get favouriteStaff => 'Favorit ekipa';

  @override
  String get favouriteStudios => 'Favorit studiji';

  @override
  String get noFavouritesYet => 'Još nema favorita';

  @override
  String get yourStory => 'Tvoja priča';

  @override
  String get copiedToClipboard => 'Kopirano u međuspremnik';

  @override
  String get justNow => 'Upravo sada';

  @override
  String get openImage => 'Otvori sliku';

  @override
  String get hideSpoiler => 'Sakrij spojler';

  @override
  String get showSpoiler => 'Prikaži spojler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Ocjena';

  @override
  String get started => 'Započeto';

  @override
  String get completed => 'Završeno';

  @override
  String get private => 'Privatno';

  @override
  String get hideFromStatusLists => 'Sakrij s popisa statusa';

  @override
  String get totalRepeats => 'Ukupno ponavljanja';

  @override
  String get other => 'Ostalo';

  @override
  String get customLists => 'Prilagođeni popisi';

  @override
  String get activeDays => 'Aktivni dani';

  @override
  String get longestStreak => 'Najduži niz';

  @override
  String get currentStreak => 'Trenutni niz';

  @override
  String get tapOrHoverDay => 'Dodirni ili pređi preko dana';

  @override
  String get less => 'Manje';

  @override
  String get more => 'Više';

  @override
  String epIn(int ep, String time) {
    return 'Ep. $ep za $time';
  }

  @override
  String get sectionLoading => 'Učitavanje';

  @override
  String get querySize => 'Veličina upita';

  @override
  String get querySizeDesc =>
      'Jedan veliki upit učitava sve redove (i cijeli profil) u jednom zahtjevu. Podijeljeni upiti šalju mali zahtjev za svaki red ili dio profila: svaki je brz, a dijelovi se pojavljuju kako stižu.';

  @override
  String get oneBig => 'Jedan veliki';

  @override
  String get split => 'Podijeljeni';

  @override
  String get sectionSocial => 'Društveno';

  @override
  String get systemNotifications => 'Sistemske obavijesti';

  @override
  String get feedLayout => 'Raspored feeda';

  @override
  String sectionsShown(int shown, int total) {
    return 'Prikazano $shown od $total — dodirni za odabir i redoslijed';
  }

  @override
  String labelSections(String label) {
    return 'Sekcije: $label';
  }

  @override
  String get accountOptions => 'Opcije računa';

  @override
  String get anilistAccountOptions => 'Opcije AniList računa';

  @override
  String get sectionPrivacy => 'Privatnost';

  @override
  String get hidePrivateEntries => 'Sakrij privatne unose';

  @override
  String get hidePrivateEntriesDesc =>
      'Drži unose označene kao privatne na AniListu izvan feeda';

  @override
  String get anilistExcludeList => 'Izuzmi moj popis';

  @override
  String get anilistExcludeListDesc =>
      'Ne prikazuj na stranicama animea i mange naslove koje već imaš na AniListu';

  @override
  String get anilistProfile => 'AniList profil';

  @override
  String get refreshFromAnilist => 'Osvježi s AniLista';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Ne mogu ažurirati AniList postavke';

  @override
  String get sectionNames => 'Imena';

  @override
  String get titleLanguage => 'Jezik naslova';

  @override
  String get titleLanguageDesc =>
      'Kako se naslovi pišu posvuda, npr. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Imena ekipe i likova';

  @override
  String get sectionLists => 'Popisi';

  @override
  String get scoreFormat => 'Format ocjena';

  @override
  String get sortListsBy => 'Poredaj popise po';

  @override
  String labelCustomLists(String label) {
    return 'Prilagođeni popisi: $label';
  }

  @override
  String customListsCount(int count) {
    return '$count popisa — dodirni za dodavanje ili uklanjanje';
  }

  @override
  String get mergeActivities => 'Spoji aktivnosti';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Vremenska zona';

  @override
  String get notSet => 'Nije postavljeno';

  @override
  String get airingNotifications => 'Obavijesti o emitiranju';

  @override
  String get airingNotificationsDesc =>
      'Obavijesti me kad se emitira epizoda serije koju pratim';

  @override
  String get displayAdultContent => 'Prikaži sadržaj za odrasle';

  @override
  String get displayAdultContentDesc =>
      'Uključi naslove 18+ u pregled, pretragu i feedove';

  @override
  String get restrictMessages => 'Ograniči poruke na one koje pratim';

  @override
  String get restrictMessagesDesc =>
      'Samo ljudi koje pratiš mogu ti slati poruke';

  @override
  String get sectionServices => 'Servisi';

  @override
  String get novel => 'Novela';

  @override
  String labelService(String label) {
    return 'Servis: $label';
  }

  @override
  String nameSettings(String name) {
    return 'Postavke: $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opcije iz mosta ekstenzija za $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name se nije mogao pokrenuti: $error';
  }

  @override
  String get importLists => 'Uvezi popise';

  @override
  String get importListsDesc =>
      'Iz Aniyomi, Mihon / Tachiyomi ili Kotatsu kopija';

  @override
  String get exportLists => 'Izvezi popise';

  @override
  String get exportListsDesc => 'U Aniyomi, Mihon ili Kotatsu kopiju';

  @override
  String get sectionBrowse => 'Pregled';

  @override
  String get readingTab => 'Kartica čitanja';

  @override
  String get readingTabDesc => 'Koje ekstenzije prikazuje treća kartica';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Zadani feed';

  @override
  String get defaultFeedDesc => 'S kojim popisom se izvor otvara';

  @override
  String noServiceSupports(String type) {
    return 'Nijedan servis ne podržava: $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · učitano izvora: $loaded od $installed';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Nijedan servis ekstenzija ovdje ne podržava: $type.';
  }

  @override
  String get loadDataFrom => 'Učitaj podatke iz';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Još nema instaliranih izvora: $type.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Ekstenzija za $name nije instalirana';
  }

  @override
  String get thisSource => 'ovaj izvor';

  @override
  String failedToAddRepository(String error) {
    return 'Dodavanje repozitorija nije uspjelo: $error';
  }

  @override
  String installedType(String type) {
    return 'Instalirano: $type';
  }

  @override
  String availableType(String type) {
    return 'Dostupno: $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Nema instaliranih ekstenzija: $type';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Nema dostupnih ekstenzija: $type';
  }

  @override
  String get nothingToShowYet => 'Još nema što prikazati';

  @override
  String get addTitlesHint =>
      'Dodaj naslove na svoj popis i pojavit će se ovdje.';

  @override
  String get couldntLoad => 'Ne mogu učitati';

  @override
  String get progressStyleHint =>
      'Pilula i traka su preko postera; \"Izvana\" prikazuje isti broj kao običan tekst — odaberi jedno.';

  @override
  String get nixManagedUpdate =>
      'Ovu verziju održava Nix — pokreni \"nix flake update\" na svom flakeu i ponovno izgradi umjesto ažuriranja odavde';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatsko ažuriranje nije uspjelo ($error) — umjesto toga otvaram stranicu za preuzimanje';
  }

  @override
  String get unknownPreference => 'Nepoznata postavka';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nepodržana vrsta postavke: $type';
  }

  @override
  String get notYetReleased => 'Još nije izašlo';

  @override
  String get notStarted => 'Još nije počelo';

  @override
  String get country => 'Država';

  @override
  String get sort => 'Poredaj';

  @override
  String get chooseBackupDialog => 'Odaberi Aniyomi, Mihon ili Kotatsu kopiju';

  @override
  String get importListsHint =>
      'Prenesi biblioteku iz Aniyomija, Mihona / Tachiyomija ili Kotatsua. Naslovi, naslovnice, napredak i kategorije ostaju.';

  @override
  String get chooseBackupFile => 'Odaberi datoteku kopije';

  @override
  String importAnimeCount(int count) {
    return 'Uvezi $count animea';
  }

  @override
  String importMangaCount(int count) {
    return 'Uvezi $count mange';
  }

  @override
  String get mergeWithExisting => 'Spoji s postojećim popisima';

  @override
  String get mergeWithExistingDesc =>
      'Zadržava što već imaš; isključeno zamjenjuje naslove koji se podudaraju';

  @override
  String get chooseAnother => 'Odaberi drugu';

  @override
  String get import => 'Uvezi';

  @override
  String animeCount(int count) {
    return '$count animea';
  }

  @override
  String mangaCount(int count) {
    return '$count mange';
  }

  @override
  String get chooseSaveLocation => 'Odaberi gdje spremiti kopiju';

  @override
  String savedPath(String path) {
    return 'Spremljeno: $path';
  }

  @override
  String exportFailed(String error) {
    return 'Izvoz nije uspio: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Na tvojim lokalnim popisima još nema ničega.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Izvozi $anime animea i $manga mange s tvojih lokalnih popisa. Kotatsu podržava samo mangu.';
  }

  @override
  String get saveToFolder => 'Spremi u mapu';

  @override
  String get formatAnimeManga => 'Anime i manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Samo manga · .tachibk';

  @override
  String get formatMangaZip => 'Samo manga · .zip';

  @override
  String get genres => 'Žanrovi';

  @override
  String get relations => 'Veze';

  @override
  String get recommendations => 'Preporuke';

  @override
  String get openings => 'Openinzi';

  @override
  String get endings => 'Endinzi';

  @override
  String get background => 'Pozadina';

  @override
  String get links => 'Poveznice';

  @override
  String get rank => 'Rang';

  @override
  String get members => 'Članovi';

  @override
  String get favorites => 'Favoriti';

  @override
  String get episodes => 'Epizode';

  @override
  String get chapters => 'Poglavlja';

  @override
  String get volumes => 'Svesci';

  @override
  String get format => 'Format';

  @override
  String get source => 'Izvor';

  @override
  String get duration => 'Trajanje';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min po epizodi';
  }

  @override
  String get rating => 'Ocjena';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serijalizacija';

  @override
  String get season => 'Sezona';

  @override
  String get broadcast => 'Emitiranje';

  @override
  String get aired => 'Emitirano';

  @override
  String get published => 'Objavljeno';

  @override
  String get popularity => 'Popularnost';

  @override
  String get community => 'Zajednica';

  @override
  String get watching => 'Gledam';

  @override
  String get reading => 'Čitam';

  @override
  String get dropped => 'Odustao';

  @override
  String get planned => 'Planirano';

  @override
  String get trailers => 'Traileri';

  @override
  String get ratings => 'Ocjene';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Naslov';

  @override
  String get votes => 'Glasovi';

  @override
  String get watchedStat => 'Pogledano';

  @override
  String get runtime => 'Trajanje';

  @override
  String get director => 'Redatelj';

  @override
  String get network => 'Mreža';

  @override
  String get certification => 'Dobna oznaka';

  @override
  String get airs => 'Emitira se';

  @override
  String get budget => 'Budžet';

  @override
  String get revenue => 'Prihod';

  @override
  String get released => 'Izašlo';

  @override
  String get tags => 'Tagovi';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Rođen';

  @override
  String get website => 'Web stranica';

  @override
  String get established => 'Osnovano';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novele';

  @override
  String get thisMonth => 'Ovaj mjesec';

  @override
  String get movies => 'Filmovi';

  @override
  String get shows => 'Serije';

  @override
  String get rewatching => 'Ponovno gledam';

  @override
  String get rereading => 'Ponovno čitam';

  @override
  String get watchedStatus => 'Pogledano';

  @override
  String get planning => 'Planiram';

  @override
  String get paused => 'Pauzirano';

  @override
  String get watch => 'Gledaj';

  @override
  String get read => 'Čitaj';

  @override
  String get finished => 'Završeno';

  @override
  String get releasing => 'Izlazi';

  @override
  String get cancelled => 'Otkazano';

  @override
  String get hiatus => 'Pauza';

  @override
  String get remove => 'Ukloni';

  @override
  String syncToService(String service) {
    return 'Sinkroniziraj na $service';
  }

  @override
  String syncedToService(String service) {
    return 'Sinkronizirano na $service';
  }

  @override
  String get latestReleases => 'Najnovija izdanja';

  @override
  String get topRated => 'Najbolje ocijenjeno';

  @override
  String localSection(String title) {
    return '$title · Lokalno';
  }

  @override
  String get localEntryNote =>
      'Ovaj naslov je samo na tvom lokalnom popisu na ovom uređaju. Uređivanje je ovdje isključeno jer bi se moglo sukobiti s popisom na tvom računu; još uvijek ga možeš ukloniti.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Kartica';

  @override
  String get cardPresetCozy => 'Ugodno';

  @override
  String get sortTopRated => 'Najbolje ocijenjeno';

  @override
  String get sortMostPopular => 'Najpopularnije';

  @override
  String get sortTrending => 'U trendu';

  @override
  String get sortNewest => 'Najnovije';

  @override
  String get sortAz => 'A–Ž';

  @override
  String get sortMostFavourited => 'Najviše favorita';

  @override
  String get anyCountry => 'Bilo koja država';

  @override
  String get orderScore => 'Ocjena';

  @override
  String get orderTitle => 'Naslov';

  @override
  String get orderLastUpdated => 'Zadnje ažurirano';

  @override
  String get orderLastAdded => 'Zadnje dodano';

  @override
  String get never => 'Nikad';

  @override
  String get always => 'Uvijek';

  @override
  String get scorePoint100 => '100 bodova';

  @override
  String get scorePoint10Decimal => '10 bodova s decimalama';

  @override
  String get scorePoint10 => '10 bodova';

  @override
  String get scorePoint5 => '5 zvjezdica';

  @override
  String get scorePoint3 => '3 smajlića';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sati',
      few: '$count sata',
      one: '$count sat',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      few: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tjedana',
      few: '$count tjedna',
      one: '$count tjedan',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Nastavi';

  @override
  String get resumeSourceMissing => 'Instaliraj izvor ovog naslova da nastaviš';

  @override
  String get resumeRemove => 'Ukloni iz nastavljanja';

  @override
  String resumeAt(String time) {
    return 'Preostalo: $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Stranica $page od $total';
  }

  @override
  String get continueWatching => 'Nastavi gledati';

  @override
  String get continueReading => 'Nastavi čitati';

  @override
  String get favouriteAnimeSection => 'Favorit anime';

  @override
  String get favouriteMangaSection => 'Favorit manga';

  @override
  String get plannedAnime => 'Planirani anime';

  @override
  String get plannedManga => 'Planirana manga';

  @override
  String get completedAnime => 'Završeni anime';

  @override
  String get completedManga => 'Završena manga';

  @override
  String get hiddenMedia => 'Skriveni mediji';

  @override
  String get recentUpdates => 'Nedavna ažuriranja';

  @override
  String get trendingNow => 'Trenutno u trendu';

  @override
  String get popularThisSeason => 'Popularno ove sezone';

  @override
  String get trendingMovies => 'Filmovi u trendu';

  @override
  String get topRatedSeries => 'Najbolje ocijenjene serije';

  @override
  String get mostFavouriteSeries => 'Najomiljenije serije';

  @override
  String get popularAnime => 'Popularni anime';

  @override
  String get trendingManhwa => 'Manhwa u trendu';

  @override
  String get trendingNovels => 'Novele u trendu';

  @override
  String get topRatedManga => 'Najbolje ocijenjena manga';

  @override
  String get mostFavouriteManga => 'Najomiljenija manga';

  @override
  String get popularManga => 'Popularna manga';

  @override
  String get topMovies => 'Najbolji filmovi';

  @override
  String get topOna => 'Najbolji ONA';

  @override
  String get topOva => 'Najbolji OVA';

  @override
  String get mostPopular => 'Najpopularnije';

  @override
  String get mostFavourite => 'Najomiljenije';

  @override
  String get upcoming => 'Uskoro';

  @override
  String get topManga => 'Najbolja manga';

  @override
  String get topManhwa => 'Najbolja manhwa';

  @override
  String get topManhua => 'Najbolja manhua';

  @override
  String get topNovels => 'Najbolje novele';

  @override
  String get topOneShots => 'Najbolji one-shotovi';

  @override
  String get trendingMoviesToday => 'Filmovi u trendu danas';

  @override
  String get trendingShowsToday => 'Serije u trendu danas';

  @override
  String get trendingMoviesWeek => 'Filmovi u trendu ovaj tjedan';

  @override
  String get trendingShowsWeek => 'Serije u trendu ovaj tjedan';

  @override
  String get mostWatchedMoviesMonth => 'Najgledaniji filmovi ovog mjeseca';

  @override
  String get mostWatchedShowsMonth => 'Najgledanije serije ovog mjeseca';

  @override
  String get trendingThisWeek => 'U trendu ovaj tjedan';

  @override
  String get mostWatchedThisMonth => 'Najgledanije ovog mjeseca';

  @override
  String get repoLinksAdded => 'Poveznice repozitorija uspješno dodane!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Greška pri dohvaćanju podataka s AniLista.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'KOMENTARI';

  @override
  String get playerNotAvailable => 'Player još nije dostupan';

  @override
  String deepLinkInitialError(String error) {
    return 'Greška pri dohvaćanju početne poveznice: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Greška pri otvaranju poveznice: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Ova poveznica se ne može otvoriti: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Greška pri otvaranju poveznice: $error';
  }

  @override
  String get forReleasingTitles => 'za naslove koji trenutno izlaze';

  @override
  String get progress => 'Napredak';

  @override
  String get notes => 'Bilješke';

  @override
  String serviceNotFound(String id) {
    return 'Servis \"$id\" nije pronađen';
  }

  @override
  String get glassEffectEnabled => 'Stakleni efekt uključen';

  @override
  String get glassEffectDisabled => 'Stakleni efekt isključen';

  @override
  String get materialYouEnabled => 'Material You uključen';

  @override
  String get materialYouDisabled => 'Material You isključen';

  @override
  String get darkModeEnabled => 'Tamni način uključen';

  @override
  String get darkModeDisabled => 'Tamni način isključen';

  @override
  String get animeList => 'Anime popis';

  @override
  String get mangaList => 'Manga popis';

  @override
  String ownerAnimeList(String owner) {
    return 'Anime popis korisnika $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Manga popis korisnika $owner';
  }

  @override
  String get loadingList => 'Učitavam popis';

  @override
  String get earlier => 'Ranije';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prije $count dana',
      few: 'prije $count dana',
      one: 'prije $count dan',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prije $count sati',
      few: 'prije $count sata',
      one: 'prije $count sat',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'prije $count minuta',
      few: 'prije $count minute',
      one: 'prije $count minutu',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'prije $count min';
  }

  @override
  String hoursAgoShort(int count) {
    return 'prije $count h';
  }

  @override
  String daysAgoShort(int count) {
    return 'prije $count d';
  }

  @override
  String weeksAgoShort(int count) {
    return 'prije $count tj.';
  }

  @override
  String get couldntLoadSource => 'Ne mogu učitati ovaj izvor';

  @override
  String get followers => 'Pratitelji';

  @override
  String couldntLoadTitle(String title) {
    return 'Ne mogu učitati: $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Ne mogu učitati ovaj profil';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Statistika';

  @override
  String get received => 'Primljeno';

  @override
  String get sent => 'Poslano';

  @override
  String get global => 'Globalno';

  @override
  String get couldntLoadPage => 'Ne mogu učitati ovu stranicu';

  @override
  String get couldntLoadAllDetails => 'Ne mogu učitati sve detalje';

  @override
  String get series => 'Serije';

  @override
  String get studios => 'Studiji';

  @override
  String get users => 'Korisnici';

  @override
  String repositoriesTitle(String type) {
    return 'Repozitoriji: $type';
  }

  @override
  String get repositoryUrl => 'URL repozitorija';

  @override
  String get downloadingRepository => 'Preuzimam repozitorij…';

  @override
  String get noRepositories => 'Nema dodanih repozitorija';

  @override
  String repoExtensionsCount(String count) {
    return '$count ekstenzija';
  }

  @override
  String get searchExtensions => 'Traži ekstenzije...';

  @override
  String deletePluginTitle(String name) {
    return 'Obrisati $name?';
  }

  @override
  String get deletePluginMessage =>
      'Jesi li siguran da želiš obrisati ovaj dodatak?';

  @override
  String pluginDeleted(String name) {
    return '$name obrisan';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name nije dostupan u postavljenom repozitoriju';
  }

  @override
  String get pluginFetchFailed => 'Ne mogu dohvatiti info o dodatku';

  @override
  String installPluginTitle(String name) {
    return 'Instaliraj $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Veličina: $size';
  }

  @override
  String get installedState => 'Instalirano';

  @override
  String get errorLabel => 'Greška:';

  @override
  String get stackTraceDetails => 'Detalji (stack trace)';

  @override
  String get shareLogFile => 'Podijeli datoteku dnevnika';

  @override
  String get copyLogs => 'Kopiraj dnevnik';

  @override
  String noListToEdit(String service) {
    return '$service nema popis za uređivanje';
  }

  @override
  String get couldNotReadFile => 'Ne mogu pročitati tu datoteku';

  @override
  String importedSummary(int anime, int manga) {
    return 'Uvezeno $anime animea i $manga mange';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count već postoji';
  }

  @override
  String get airingNow => 'Trenutno se emitira';

  @override
  String get topRatedMovies => 'Najbolje ocijenjeni filmovi';

  @override
  String get koreanDramas => 'Korejske drame';

  @override
  String get chineseDramas => 'Kineske drame';

  @override
  String get japaneseDramas => 'Japanske drame';

  @override
  String get thaiDramas => 'Tajlandske drame';

  @override
  String get turkishDramas => 'Turske serije';

  @override
  String get miniSeries => 'Miniserije';

  @override
  String get topRatedShows => 'Najbolje ocijenjene serije';

  @override
  String get recommendedSection => 'Preporučeno';

  @override
  String get syncRow => 'Sinkronizacija popisa';

  @override
  String get syncRowDesc =>
      'Preslikaj popis jednog servisa na ostale svoje račune';

  @override
  String get syncTitle => 'Sinkroniziraj';

  @override
  String get syncMainService => 'Glavni servis';

  @override
  String get syncMainServiceDesc =>
      'Njegov popis je izvor istine; svaki drugi prijavljeni servis ažurira se da se podudara';

  @override
  String get syncAuto => 'Automatska sinkronizacija';

  @override
  String get syncAutoDesc =>
      'Dohvaćaj i sinkroniziraj u pozadini kad se aplikacija otvori i svakih 30 minuta';

  @override
  String get syncAddMissing => 'Dodaj unose koji nedostaju';

  @override
  String get syncAddMissingDesc => 'Dodaj i unose koje drugi servis još nema';

  @override
  String get syncOnlyForward => 'Zadrži veći napredak';

  @override
  String get syncOnlyForwardDesc =>
      'Ne smanjuj napredak servisa koji je već ispred';

  @override
  String get syncFetch => 'Dohvati';

  @override
  String get syncFetchAgain => 'Dohvati ponovno';

  @override
  String get syncAll => 'Sinkroniziraj sve';

  @override
  String get syncStop => 'Zaustavi';

  @override
  String get syncResume => 'Nastavi';

  @override
  String get syncNothingToSync =>
      'Ovaj servis se ne može sinkronizirati za ovu vrstu';

  @override
  String get syncNoTargets => 'Prijavi se na drugi servis da bi sinkronizirao';

  @override
  String get syncLoadingMap => 'Učitavam mapiranje ID-ova';

  @override
  String get syncComparing => 'Uspoređujem popise';

  @override
  String get syncIntro =>
      'Odaberi glavni servis i pritisni Dohvati. Svaki servis se jednom upita za tvoj popis, a zatim se uspoređuje s glavnim.';

  @override
  String get syncStateSynced => 'Sinkronizirano';

  @override
  String get syncStateOutdated => 'Nije sinkronizirano';

  @override
  String get syncStateMissing => 'Nije na popisu';

  @override
  String get syncStateUnmapped => 'Nema podudaranja';

  @override
  String syncPaused(String time) {
    return 'Čekam ograničenje broja zahtjeva, nastavlja za $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count samo na servisu $name, ostavljeno netaknuto';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done od $total';
  }

  @override
  String get syncNothingHere => 'Nema ničega za prikaz';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used od $max zahtjeva iskorišteno ($window)';
  }

  @override
  String get syncMinute => 'minuta';

  @override
  String get syncDay => 'dan';

  @override
  String get syncNotInList => 'Još nije na popisu';

  @override
  String get syncCleared => 'Plan očišćen';

  @override
  String get syncClear => 'Očisti';

  @override
  String get syncOptions => 'Opcije';

  @override
  String get syncShared => 'Dijeli unos s drugom stavkom';

  @override
  String syncNotFound(String service) {
    return 'Nije pronađeno na $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sinkroniziraj $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sinkroniziraj promjene odmah';

  @override
  String get syncOnEditDesc =>
      'Odmah šalji svako ažuriranje napretka i izmjenu popisa na ostale prijavljene servise';

  @override
  String syncPushed(String services) {
    return 'Sinkronizirano na $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Ograničenje zahtjeva, pokušaj ponovno za trenutak';

  @override
  String get syncAhead => 'Što god je ispred';

  @override
  String get syncAheadDesc =>
      'Dvosmjerno: za svaki naslov pobjeđuje unos koji je najdalje otišao i kopira se na sve tvoje ostale servise';

  @override
  String syncAheadFrom(String service) {
    return 'Sa servisa $service';
  }

  @override
  String get syncConfirm => 'Pregledaj prije sinkronizacije';

  @override
  String get syncConfirmDesc =>
      'Prikaži što će Sinkroniziraj sve promijeniti i koliko zahtjeva treba';

  @override
  String get syncPreviewTitle => 'Spremno za sinkronizaciju';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates ažuriranja, $adds za dodavanje';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Oko $count zahtjeva';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID-ova prvo treba potražiti';
  }

  @override
  String get syncPreviewNothing => 'Nema promjena';

  @override
  String get syncStart => 'Kreni';

  @override
  String get syncRetry => 'Pokušaj ponovno';

  @override
  String get syncSkip => 'Preskoči ovu stavku';

  @override
  String get syncInclude => 'Ponovno uključi ovu stavku';

  @override
  String get syncSkippedLabel => 'Preskočeno';

  @override
  String get syncChanges => 'Razlike';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Napredak';

  @override
  String get syncChangeScore => 'Ocjena';

  @override
  String get syncChangeDates => 'Datumi';

  @override
  String get syncChangeRepeat => 'Broj ponovnih gledanja';

  @override
  String get syncFailedReason => 'Zašto nije uspjelo';

  @override
  String get syncSkippedHint =>
      'Preskočene stavke ostaju netaknute, čak i nakon ponovnog dohvata';

  @override
  String get commentsRules => 'Pravila komentiranja';

  @override
  String get commentsRulesBody =>
      'KRŠIŠ LI PRAVILO = LETIŠ\n\n1. Bez rasizma, diskriminacije i govora mržnje\n2. Bez spama i samopromocije\n3. Apsolutno bez NSFW sadržaja\n4. Samo engleski, bez iznimki\n5. Bez lažnog predstavljanja, uznemiravanja i vrijeđanja\n6. Bez nezakonitog sadržaja i ekstremnog nepoštovanja prema bilo kojem fandomu\n7. Ne traži i ne dijeli repozitorije ni ekstenzije\n8. Spojleri samo sa spojler oznakom i upozorenjem\n9. Bez seksualiziranja i neprimjerenih komentara o maloljetnim likovima\n10. Ako nije u redu, nemoj to objaviti!';

  @override
  String get commentsRulesAccept => 'Razumijem';

  @override
  String get commentsSortNewest => 'Najnovije';

  @override
  String get commentsSortOldest => 'Najstarije';

  @override
  String get commentsSortHighest => 'Najbolje ocijenjeno';

  @override
  String get commentsSortLowest => 'Najslabije ocijenjeno';

  @override
  String commentsEpisodeShort(int number) {
    return 'Ep. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Pogl. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtriraj po epizodi';

  @override
  String get commentsFilterChapterTitle => 'Filtriraj po poglavlju';

  @override
  String get commentsFilterTagTitle => 'Upiši broj epizode ili poglavlja';

  @override
  String get commentsFilterHint => 'Broj';

  @override
  String get commentsFilterApply => 'Filtriraj';

  @override
  String get commentsFilterClear => 'Prikaži sve';

  @override
  String get commentsPlaceholder => 'Dodaj komentar…';

  @override
  String commentsReplyingTo(String name) {
    return 'Odgovaraš korisniku $name';
  }

  @override
  String get commentsSend => 'Pošalji';

  @override
  String get commentsTagButton => 'Oznaka';

  @override
  String commentsTagTitle(String label) {
    return 'Oznaka $label (neobavezno)';
  }

  @override
  String get commentsTagEpisode => 'epizoda';

  @override
  String get commentsTagChapter => 'poglavlje';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Broj: $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Oznaka ne može biti veća od ukupnog broja ($total)';
  }

  @override
  String get commentsNoTag => 'Bez oznake';

  @override
  String get commentsSpoiler => 'Spojler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Traži GIF-ove';

  @override
  String get commentsGifEmpty => 'Nema pronađenih GIF-ova';

  @override
  String get commentsEmptyText => 'Komentar ne može biti prazan';

  @override
  String get commentsBannedYou => 'Zabranjeno ti je komentiranje';

  @override
  String get commentsEdited => 'Komentar uređen';

  @override
  String get commentsDeleted => 'Komentar obrisan';

  @override
  String get commentsDeletedPlaceholder => '[obrisano]';

  @override
  String get commentsReported => 'Komentar prijavljen';

  @override
  String get commentsUserBanned => 'Korisnik banan';

  @override
  String get commentsReport => 'Prijavi';

  @override
  String get commentsReportAsk => 'Prijaviti ovaj komentar moderatorima?';

  @override
  String get commentsDelete => 'Obriši';

  @override
  String get commentsDeleteAsk => 'Ovaj komentar bit će uklonjen za sve.';

  @override
  String get commentsBan => 'Banaj';

  @override
  String get commentsBanAsk => 'Zabraniti ovom korisniku komentiranje?';

  @override
  String get commentsCopy => 'Kopiraj';

  @override
  String get commentsViewReply => 'Prikaži 1 odgovor';

  @override
  String commentsViewReplies(int count) {
    return 'Prikaži odgovore ($count)';
  }

  @override
  String get commentsHideReplies => 'Sakrij odgovore';

  @override
  String get commentsLoadMore => 'Učitaj još komentara';

  @override
  String get commentsEmpty => 'Još nema komentara. Budi prvi!';

  @override
  String get commentsEmptyFiltered => 'Nema komentara za ovaj filtar';

  @override
  String get commentsSignIn =>
      'Prijavi se na AniList da čitaš i pišeš komentare';

  @override
  String get commentsSignInMessage =>
      'Komentari se dijele između svih servisa i koriste tvoj AniList račun.';

  @override
  String get commentsUnavailable => 'Komentari nisu dostupni za ovaj naslov';

  @override
  String get commentsUnavailableMessage =>
      'Nije se mogao povezati s AniList unosom.';

  @override
  String get commentsDisabled => 'Komentari su isključeni';

  @override
  String get commentsDisabledMessage =>
      'Možeš ih ponovno uključiti u Postavke › Općenito.';

  @override
  String get commentsOffline => 'Ne mogu učitati komentare';

  @override
  String get commentsSingleTitle => 'Prikazan je jedan komentar';

  @override
  String get commentsShowAll => 'Prikaži sve komentare';

  @override
  String get commentsSettingsHeader => 'Komentari';

  @override
  String get commentsSettingEnabled => 'Komentari';

  @override
  String get commentsSettingEnabledDesc =>
      'Prikaži karticu Komentari na naslovima i prijavi se na poslužitelj komentara svojim AniList računom';

  @override
  String get commentsSettingAlerts => 'Obavijesti o odgovorima';

  @override
  String get commentsSettingAlertsDesc =>
      'Obavijesti me kad netko odgovori na moje komentare';

  @override
  String get commentsNoticeReplyTitle => 'Novi odgovor na komentar';

  @override
  String commentsNoticeReply(String name) {
    return '$name je odgovorio/la na tvoj komentar';
  }

  @override
  String get commentsNoticeWarningTitle => 'Dobio si upozorenje';

  @override
  String get commentsNoticeWarning => 'Budi promišljeniji u svojim komentarima';

  @override
  String get commentsNoticeUpdateTitle => 'Ažuriranje iz Dantotsua';

  @override
  String get barcodeTitle => 'Skeniraj barkod';

  @override
  String get barcodeTooltip => 'Pronađi mangu ili novelu preko barkoda';

  @override
  String get barcodeIntro =>
      'Usmjeri kameru na barkod na poleđini sveska ili upiši njegov ISBN.';

  @override
  String get barcodeIntroManual =>
      'Upiši ISBN otisnut iznad barkoda na poleđini sveska.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'To nije ispravan ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Nije pronađena knjiga za $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamera nije dostupna. Dopusti pristup kameri ili umjesto toga upiši ISBN.';

  @override
  String get themesTitle => 'Openinzi i endinzi';

  @override
  String get themesPlayVideo => 'Pusti video';

  @override
  String get themesPlayAudio => 'Pusti samo zvuk';

  @override
  String get themesOpenSite => 'Otvori na AnimeThemes';

  @override
  String get themesCredit => 'Teme s AnimeThemes';

  @override
  String get themesVersions => 'Verzije';

  @override
  String get sauceTitle => 'Pronađi izvor';

  @override
  String get sauceIntro =>
      'Učitaj stranicu mange ili umjetničko djelo, ili zalijepi njegovu poveznicu, da saznaš odakle je.';

  @override
  String get sauceKeyTitle => 'SauceNAO API ključ';

  @override
  String get sauceKeyHint => 'Neobavezno, podiže dnevno ograničenje pretrage';

  @override
  String get sauceKeyDesc => 'Nabavi besplatan ključ na saucenao.com/user.php';

  @override
  String get sauceOpen => 'Otvori izvor';

  @override
  String get sauceCredit => 'Pretraga slika preko SauceNAO';

  @override
  String get sauceEmpty => 'Nije pronađeno podudaranje';

  @override
  String get sauceTooltip =>
      'Pronađi izvor stranice mange ili umjetničkog djela';

  @override
  String get trendzTitle => 'Anime ljestvice';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Ženski likovi';

  @override
  String get trendzMale => 'Muški likovi';

  @override
  String get trendzCouple => 'Parovi';

  @override
  String get trendzCredit => 'Tjedne ljestvice s AniTrendz';

  @override
  String get trendzNew => 'NOVO';

  @override
  String get trendzEmpty => 'Ljestvica je prazna';

  @override
  String get shareCard => 'Podijeli karticu';

  @override
  String get shareCardList => 'Podijeli karticu popisa';

  @override
  String get shareCardSaved => 'Kartica spremljena';

  @override
  String get shareCardFailed => 'Ne mogu napraviti karticu';

  @override
  String get shareCardListEmpty => 'Tvoj popis još nema ništa za podijeliti';

  @override
  String get shareCardTop => 'Moji najdraži';

  @override
  String themesEpisodes(String eps) {
    return 'Epizode: $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% podudaranja';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Tjedan $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count glasova';
  }

  @override
  String trendzPeak(String rank) {
    return 'Vrhunac #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count tjedana u prvih deset';
  }

  @override
  String get imageSearchTitle => 'Pretraga po slici';

  @override
  String get imageSearchTooltip => 'Pronađi anime iz screenshota';

  @override
  String get imageSearchIntro =>
      'Odaberi screenshot ili zalijepi poveznicu na sliku i trace.moe će pronaći epizodu i trenutak iz kojeg je.';

  @override
  String get imageSearchPick => 'Odaberi sliku';

  @override
  String get imageSearchLinkHint => 'Zalijepi poveznicu na sliku';

  @override
  String get imageSearchGo => 'Traži';

  @override
  String get imageSearchEmpty => 'Nije pronađeno podudaranje';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Epizoda $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'u $time';
  }

  @override
  String get imageSearchPreview => 'Pregled isječka';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% podudaranja';
  }

  @override
  String get imageSearchCredit => 'Pokreće trace.moe';

  @override
  String get imageSearchOpenFailed => 'Ne mogu otvoriti ovaj naslov';

  @override
  String get groups => 'Grupe';

  @override
  String get groupsYours => 'Tvoje grupe';

  @override
  String get groupsPopular => 'Popularne';

  @override
  String get groupsNew => 'Nove';

  @override
  String get groupsFeatured => 'Istaknute';

  @override
  String get groupsSearch => 'Traži grupe';

  @override
  String get groupsAll => 'Sve';

  @override
  String get groupsEmpty => 'Nema pronađenih grupa';

  @override
  String get groupsEmptyYours => 'Još se nisi pridružio nijednoj grupi';

  @override
  String get groupsSignIn => 'Prijavi se da vidiš grupe kojima si se pridružio';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count članova',
      few: '$count člana',
      one: '$count član',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Pridruži se';

  @override
  String get groupsJoined => 'Pridružen';

  @override
  String get groupsLeave => 'Napusti grupu';

  @override
  String get groupsLeaveAsk =>
      'Nećeš više vidjeti objave ove grupe u svom feedu.';

  @override
  String get groupsJoinFailed =>
      'Ne mogu se pridružiti ovoj grupi, možda je samo na poziv';

  @override
  String get groupsLeaveFailed => 'Ne mogu napustiti ovu grupu';

  @override
  String get groupsPosts => 'Objave';

  @override
  String get groupsMembersTab => 'Članovi';

  @override
  String get groupsAbout => 'Info';

  @override
  String get groupsRules => 'Pravila';

  @override
  String get groupsPrivacyOpen => 'Otvorena';

  @override
  String get groupsPrivacyRestricted => 'Ograničena';

  @override
  String get groupsPrivacyClosed => 'Zatvorena';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Ne mogu učitati ovu grupu';

  @override
  String get groupsNewPost => 'Objavi u grupi';

  @override
  String get groupsPostHint => 'Podijeli nešto s grupom';

  @override
  String get groupsOpenInBrowser => 'Otvori u pregledniku';

  @override
  String get groupsCategory => 'Kategorija';

  @override
  String get groupsLanguage => 'Jezik';

  @override
  String get groupsCreated => 'Napravljeno';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voditelja',
      few: '$count voditelja',
      one: '$count voditelj',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privatnost';

  @override
  String get notificationsAll => 'Sve';

  @override
  String get notificationsAiring => 'Emitira se';

  @override
  String get notificationsMedia => 'Novi naslovi';

  @override
  String get notificationsReplies => 'Odgovori';

  @override
  String get notificationsMentions => 'Spominjanja';

  @override
  String get notificationsMessages => 'Poruke';

  @override
  String get notificationsLikes => 'Lajkovi';

  @override
  String get notificationsFollows => 'Praćenja';

  @override
  String get notificationsNoServices =>
      'Nijedan prijavljeni servis nema obavijesti';

  @override
  String get notificationsNoServicesMessage =>
      'Prijavi se na servis koji šalje obavijesti i pojavit će se ovdje.';

  @override
  String get notificationsEmptyKind => 'U ovoj kategoriji još nema ničega';

  @override
  String get notificationsCommentsEmpty => 'Nema obavijesti o komentarima';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Odgovori na tvoje komentare i najave iz Dantotsua pojavljuju se ovdje.';

  @override
  String get notificationsSettings => 'Postavke obavijesti';

  @override
  String get notificationsPollTitle => 'Provjeravaj nove obavijesti';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Svakih $minutes min dok je aplikacija otvorena';
  }

  @override
  String get notificationsNotifyAbout => 'Obavijesti me o';

  @override
  String get notificationsCommentsHeader => 'Obavijesti o komentarima';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Prikaži sistemsku obavijest za svaku nepročitanu $service obavijest dok aplikacija radi.';
  }

  @override
  String get notificationsTestSent => 'Probna obavijest poslana';

  @override
  String get notificationsTestDenied =>
      'Obavijesti nisu dopuštene za Dartotsu. Uključi ih u postavkama sustava.';

  @override
  String get notificationsTestHint =>
      'Dugo pritisni za slanje probne obavijesti';

  @override
  String get notificationsTestSample => 'Ovo je probna obavijest';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name je odgovorio/la na tvoj komentar u: $media';
  }

  @override
  String get imageSearchNotLink => 'Ovo ne izgleda kao poveznica';

  @override
  String get imageSearchQuota => 'Kvota pretrage premašena';

  @override
  String get imageSearchBusy => 'Previše zahtjeva, pokušaj ponovno za trenutak';

  @override
  String imageSearchFailed(int code) {
    return 'Pretraga nije uspjela ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count novih obavijesti';
  }

  @override
  String get reactionsTitle => 'Reakcije';

  @override
  String get reactionsNeedEntry =>
      'Dodaj ovaj naslov na svoj popis prije reagiranja';

  @override
  String get reactionsAdd => 'Dodaj reakciju';

  @override
  String get reactionsHint => 'Što misliš? (kratko i bez spojlera)';

  @override
  String get reactionsPost => 'Objavi';

  @override
  String get reactionsFailed => 'Ne mogu ažurirati reakciju';

  @override
  String get settingsWatch => 'Gledaj i čitaj';

  @override
  String get settingsWatchDesc =>
      'Popisi epizoda, povezivanje izvora i detalji epizoda';

  @override
  String get watchSettingsLayout => 'Popis epizoda';

  @override
  String get watchSettingsSources => 'Izvori';

  @override
  String get watchSettingsMetadata => 'Detalji epizoda';

  @override
  String get watchLayout => 'Raspored';

  @override
  String get watchListView => 'Popis';

  @override
  String get watchGridView => 'Mreža';

  @override
  String get watchCompactView => 'Kompaktno';

  @override
  String get watchDefaultLayoutDesc =>
      'Kako su epizode i poglavlja složene dok to ne promijeniš za neki naslov';

  @override
  String get watchChunkSize => 'Veličina raspona';

  @override
  String get watchChunkSizeDesc =>
      'Koliko epizoda ili poglavlja sadrži svaka kartica raspona';

  @override
  String get watchShowDescription => 'Prikaži opise';

  @override
  String get watchShowDescriptionDesc =>
      'Prikaži sažetak epizode ispod svakog naslova u popisnom rasporedu';

  @override
  String get watchShowFiller => 'Prikaži filler epizode';

  @override
  String get watchShowFillerDesc =>
      'Isključi da sakriješ epizode označene kao filler';

  @override
  String get watchBlurUnwatched => 'Sakrij sličice sa spojlerima';

  @override
  String get watchBlurUnwatchedDesc =>
      'Zamuti sličicu epizoda koje još nisi pogledao';

  @override
  String get watchResumeShelf => 'Polica Nastavi';

  @override
  String get watchResumeShelfDesc => 'Prikaži red Nastavi na početnoj';

  @override
  String get watchMarkOnLongPress => 'Dugi pritisak označava napredak';

  @override
  String get watchMarkOnLongPressDesc =>
      'Dugo pritisni epizodu ili poglavlje da ga označiš kao pogledano ili nepogledano';

  @override
  String get watchMatching => 'Povezivanje izvora';

  @override
  String get watchMatchingDesc =>
      '\"Najbliže podudaranje\" uzima najbolji rezultat pretrage. \"Samo točno podudaranje\" prihvaća samo gotovo identičan naslov, a ostalo prepušta tebi.';

  @override
  String get watchMatchClosest => 'Najbliže podudaranje';

  @override
  String get watchMatchExact => 'Samo točno podudaranje';

  @override
  String get watchMetadataDesc =>
      'Odakle dolaze naslovi epizoda, sažeci, sličice, datumi emitiranja i filler oznake. Povuci za postavljanje prioriteta; pobjeđuje prvi izvor koji ima vrijednost.';

  @override
  String get watchMetaAniZipDesc =>
      'Naslovi epizoda, sažeci, kadrovi i datumi emitiranja';

  @override
  String get watchMetaKitsuDesc => 'Naslovi epizoda, opisi i sličice';

  @override
  String get watchMetaSimklDesc =>
      'Naslovi epizoda, opisi, kadrovi i datumi emitiranja';

  @override
  String get watchMetaAniListDesc =>
      'Naslovi streaming epizoda, sličice i raspored emitiranja';

  @override
  String get watchMetaTenraiDesc =>
      'MyAnimeList naslovi epizoda, datumi emitiranja, filler i recap oznake preko Tenraija';

  @override
  String get watchClearMetadata => 'Osvježi detalje epizoda';

  @override
  String get watchClearMetadataDesc =>
      'Zaboravi spremljene detalje epizoda da se dohvate ponovno';

  @override
  String get watchMetadataCleared => 'Detalji epizoda dohvatit će se ponovno';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count epizoda',
      few: '$count epizode',
      one: '$count epizoda',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poglavlja',
      few: '$count poglavlja',
      one: '$count poglavlje',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Epizoda $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Poglavlje $number';
  }

  @override
  String get watchSearching => 'Tražim…';

  @override
  String watchSearchingFor(String term) {
    return 'Tražim: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Odabrano: $title';
  }

  @override
  String watchFound(String title) {
    return 'Pronađeno: $title';
  }

  @override
  String get watchNothingFound => 'Na ovom izvoru nije pronađeno ništa';

  @override
  String get watchSearchFailed => 'Pretraga izvora nije uspjela';

  @override
  String get watchLoadFailed => 'Ne mogu učitati popis';

  @override
  String get watchSignInToTrack => 'Prijavi se da pratiš napredak';

  @override
  String watchInstallSource(String action) {
    return 'Instaliraj ekstenziju da počneš: $action';
  }

  @override
  String get watchSourceMissing => 'Ovaj izvor nije instaliran';

  @override
  String get watchWrongTitle => 'Krivi naslov?';

  @override
  String get watchSearchAgain => 'Traži ponovno';

  @override
  String watchSearchSource(String source) {
    return 'Traži: $source';
  }

  @override
  String get watchSource => 'Izvor';

  @override
  String get watchOptions => 'Opcije';

  @override
  String get watchReverse => 'Obrnuti redoslijed';

  @override
  String get watchScanlators => 'Grupe';

  @override
  String get watchResetOptions => 'Resetiraj ove opcije';

  @override
  String get watchContinue => 'Nastavi';

  @override
  String get watchStart => 'Kreni';

  @override
  String get watchPlay => 'Pokreni';

  @override
  String get watchRead => 'Čitaj';

  @override
  String get watchMarkWatched => 'Označi kao pogledano';

  @override
  String get watchMarkUnwatched => 'Označi kao nepogledano';

  @override
  String get watchMarkRead => 'Označi kao pročitano';

  @override
  String get watchMarkUnread => 'Označi kao nepročitano';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Nema pronađenih epizoda';

  @override
  String get watchNoChapters => 'Nema pronađenih poglavlja';

  @override
  String get watchSourceTools => 'Alati izvora';

  @override
  String get watchSourceSettings => 'Postavke izvora';

  @override
  String get watchOpenWebView => 'Otvori u web prikazu';

  @override
  String get watchOpenWebViewDesc =>
      'Riješi Cloudflare provjeru ili se prijavi; kolačići se dijele sa zahtjevima izvora';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kolačića spremljeno za $host',
      few: '$count kolačića spremljena za $host',
      one: '$count kolačić spremljen za $host',
      zero: 'Nema spremljenih kolačića za $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare odobrenje aktivno, $time';
  }

  @override
  String get watchClearanceMissing => 'Nema Cloudflare kolačića odobrenja';

  @override
  String get watchClearanceSession => 'traje dok se aplikacija ne zatvori';

  @override
  String get watchAgentShared =>
      'Zahtjevi koriste user agent web prikaza, što Cloudflare provjerava';

  @override
  String get watchAgentCustom =>
      'Postavljen je prilagođeni user agent pa bi Cloudflare odobrenje iz web prikaza moglo biti odbijeno';

  @override
  String get watchTestConnection => 'Testiraj vezu';

  @override
  String get watchSolveChallenge => 'Riješi';

  @override
  String watchProbeOk(int code) {
    return 'Dostupno (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare i dalje traži provjeru';

  @override
  String watchProbeBlocked(int code) {
    return 'Stranica te blokirala (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Stranica nije dostupna';

  @override
  String get watchClearCookies => 'Očisti kolačiće za ovu stranicu';

  @override
  String get watchCookiesCleared => 'Kolačići očišćeni';

  @override
  String get watchMetaSource => 'Detalji epizoda iz';

  @override
  String get watchMetaAuto => 'Automatski';

  @override
  String get watchMetaOff => 'Isključeno';

  @override
  String get playerSettingsTitle => 'Postavke playera';

  @override
  String get playerSectionPlayback => 'Reprodukcija';

  @override
  String get playerSectionSkip => 'Preskakanje';

  @override
  String get playerSectionGestures => 'Kontrole';

  @override
  String get playerSectionSubtitles => 'Titlovi';

  @override
  String get playerSectionShaders => 'Shaderi';

  @override
  String get playerSectionEngine => 'Engine';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Brzina reprodukcije';

  @override
  String get playerCursedSpeed => 'Dodatne brzine';

  @override
  String get playerCursedSpeedDesc => 'Dodaj na popis brzine do 10x';

  @override
  String get playerResize => 'Način skaliranja';

  @override
  String get playerFitFit => 'Prilagodi';

  @override
  String get playerFitCover => 'Ispuni';

  @override
  String get playerFitStretch => 'Razvuci';

  @override
  String get playerSkipDuration => 'Duljina gumba za preskakanje';

  @override
  String get playerSkipDurationDesc =>
      'Sekunde za koje gumb za preskakanje skače izvan openinga i endinga';

  @override
  String get playerSeekDuration => 'Dvostruki dodir za premotavanje';

  @override
  String get playerSeekDurationDesc =>
      'Sekunde skoka na dvostruki dodir ili tipku sa strelicom';

  @override
  String get playerAutoPlay => 'Automatski pusti sljedeću';

  @override
  String get playerAutoPlayDesc => 'Pokreni sljedeću epizodu kad ova završi';

  @override
  String get playerResume => 'Nastavi gdje si stao';

  @override
  String get playerResumeDesc => 'Nastavi epizodu od zadnje pozicije';

  @override
  String get playerOrientation => 'Orijentacija';

  @override
  String get playerOrientationAuto => 'Prati uređaj';

  @override
  String get playerOrientationLandscape => 'Vodoravno';

  @override
  String get playerOrientationPortrait => 'Okomito';

  @override
  String get playerAutoSkipOpening => 'Preskoči openinge';

  @override
  String get playerAutoSkipEnding => 'Preskoči endinge';

  @override
  String get playerAutoSkipRecap => 'Preskoči recapove';

  @override
  String get playerAutoSkipDesc =>
      'Preskoči čim počne, koristeći AniSkip i vremenske oznake streama';

  @override
  String get playerSkipOnce => 'Preskoči samo jednom';

  @override
  String get playerSkipOnceDesc =>
      'Ne preskači isti dio ponovno ako se vratiš u njega';

  @override
  String get playerAdjustBrightness => 'Gesta svjetline';

  @override
  String get playerAdjustBrightnessDesc =>
      'Prijeđi prstom gore-dolje po desnoj polovici zaslona';

  @override
  String get playerAdjustVolume => 'Gesta glasnoće';

  @override
  String get playerAdjustVolumeDesc =>
      'Prijeđi prstom gore-dolje po lijevoj polovici zaslona';

  @override
  String get playerHoldToSpeed => 'Drži za ubrzanje';

  @override
  String get playerHoldToSpeedDesc =>
      'Pritisni i drži video za bržu reprodukciju, povuci u stranu za promjenu brzine';

  @override
  String get playerThumbless => 'Deblja traka za premotavanje';

  @override
  String get playerThumblessDesc => 'Debela traka bez ručice';

  @override
  String get playerShowSubtitles => 'Prikaži titlove';

  @override
  String get playerShowSubtitlesDesc =>
      'Isključi da sakriješ sve trake titlova';

  @override
  String get playerSubtitleLanguage => 'Željeni jezik titlova';

  @override
  String get playerSubtitleSize => 'Veličina titlova';

  @override
  String get playerSubtitleWeight => 'Debljina titlova';

  @override
  String get playerSubtitleBottom => 'Donji razmak titlova';

  @override
  String get playerSubtitleFont => 'Font titlova';

  @override
  String get playerSubtitleColor => 'Boja titlova';

  @override
  String get playerSubtitleBackground => 'Pozadina titlova';

  @override
  String get playerSubtitleOutline => 'Obrub titlova';

  @override
  String get playerLibass => 'Koristi libass';

  @override
  String get playerLibassDesc =>
      'Prikaži stilizirane .ass titlove. Veličina, boja i font gore tada više ne vrijede';

  @override
  String get playerShaders => 'Shaderi';

  @override
  String get playerShadersEnable => 'Uključi shadere';

  @override
  String get playerShadersEnableDesc =>
      'Povećaj i očisti sliku GLSL shaderima poput Anime4K';

  @override
  String get playerShadersOff => 'Shaderi isključeni';

  @override
  String get playerShadersMissing => 'Anime4K nije instaliran';

  @override
  String get playerShadersMissingDesc =>
      'Preuzmi Anime4K paket shadera (oko 0,8 MB) da koristiš ugrađene načine.';

  @override
  String get playerShadersDownload => 'Preuzmi Anime4K';

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
  String get playerShadersPreview => 'Pregled na ovom kadru';

  @override
  String get playerShadersUse => 'Koristi ovo';

  @override
  String get playerPicture => 'Slika';

  @override
  String get playerColors => 'Boje';

  @override
  String get playerColorDefault => 'Zadano';

  @override
  String get playerColorVivid => 'Živo';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Meko';

  @override
  String get playerColorCinematic => 'Filmski';

  @override
  String get playerColorBright => 'Svijetlo';

  @override
  String get playerColorNight => 'Noć';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Prilagođeno';

  @override
  String get playerColorBrightness => 'Svjetlina';

  @override
  String get playerColorContrast => 'Kontrast';

  @override
  String get playerColorSaturation => 'Zasićenost';

  @override
  String get playerColorGamma => 'Gama';

  @override
  String get playerColorHue => 'Nijansa';

  @override
  String get playerColorReset => 'Resetiraj';

  @override
  String get playerColorAdjust => 'Podesi';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed => 'Ne mogu uhvatiti kadar za pregled';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Tvoji shaderi';

  @override
  String get playerShadersCustom => 'Prilagođeni shaderi';

  @override
  String get playerShadersImport => 'Uvezi .glsl';

  @override
  String get playerShadersNone =>
      'Uvezi vlastite .glsl ili .hook datoteke i označi ih da ih povežeš u lanac';

  @override
  String get playerShadersBadFile => 'Odaberi .glsl ili .hook datoteku shadera';

  @override
  String get playerDecoder => 'Dekoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (siguran)';

  @override
  String get playerDecoderSoftware => 'Softverski';

  @override
  String get playerDecoderHardware => 'Hardverski';

  @override
  String get playerDecoderHardwarePlus => 'Hardverski+';

  @override
  String get playerVideoOutput => 'Video izlaz';

  @override
  String get playerAudioChannels => 'Audio kanali';

  @override
  String get playerBuffer => 'Veličina međuspremnika (MB)';

  @override
  String get playerBufferDesc =>
      'Memorija koju player smije koristiti za baferiranje streama';

  @override
  String get playerUseMpvConf => 'Koristi mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Primijeni opcije iz svog mpv.conf kad reprodukcija počne';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Uredi mpv konfiguraciju';

  @override
  String get playerMpvConfDesc =>
      'Jedna opcija po retku, kao --hwdec=auto u običnom mpv.conf. Profili u [zagradama] se ignoriraju.';

  @override
  String get playerMpvConfSaved => 'mpv.conf spremljen';

  @override
  String get playerUseScripts => 'Koristi mpv skripte';

  @override
  String get playerUseScriptsDesc =>
      'Učitaj dodatke iz mape sa skriptama. Treba libmpv build s Lua ili JavaScript podrškom';

  @override
  String get playerScripts => 'mpv skripte';

  @override
  String get playerScriptsManage => 'Dodaj, ukloni i prebacuj dodatke';

  @override
  String get playerScriptsAdd => 'Dodaj skriptu';

  @override
  String get playerScriptsDesc =>
      'Lua, JavaScript i nativni dodaci stavljeni ovdje učitavaju se kad reprodukcija počne.';

  @override
  String get playerScriptsNone => 'Još nema skripti';

  @override
  String get playerScriptsBadFile =>
      'Odaberi .lua, .js ili nativnu datoteku dodatka';

  @override
  String get playerTuning => 'Napredno podešavanje videa';

  @override
  String get playerTuningDesc =>
      'Nadjačaj sinkronizaciju, cachiranje, skaliranje i tone mapping. Pogrešne vrijednosti mogu pokvariti reprodukciju';

  @override
  String get playerVideoSync => 'Video sinkronizacija';

  @override
  String get playerInterpolation => 'Interpolacija kadrova';

  @override
  String get playerInterpolationDesc =>
      'Glatko kretanje, treba display-resample sinkronizaciju';

  @override
  String get playerPitch => 'Korekcija visine tona';

  @override
  String get playerPitchDesc => 'Zadrži glasove prirodnima pri drugim brzinama';

  @override
  String get playerCacheSeconds => 'Cache (sekunde)';

  @override
  String get playerReadahead => 'Čitanje unaprijed (sekunde)';

  @override
  String get playerThreads => 'Dretve dekodera';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Smanji pojasanje boja u gradijentima';

  @override
  String get playerDebandIterations => 'Deband iteracije';

  @override
  String get playerDebandThreshold => 'Deband prag';

  @override
  String get playerCorrectDownscaling => 'Ispravno smanjivanje';

  @override
  String get playerSigmoid => 'Sigmoidno povećanje';

  @override
  String get playerScale => 'Povećavač';

  @override
  String get playerCscale => 'Povećavač kroma';

  @override
  String get playerDscale => 'Smanjivač';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Ciljni vrhunac';

  @override
  String get playerOpenFiles => 'Otvori video datoteke';

  @override
  String get playerOpenFilesDesc => 'Pusti datoteke s ovog uređaja';

  @override
  String get playerOpenFolder => 'Otvori mapu';

  @override
  String get playerOpenFolderDesc =>
      'Pusti svaki video u mapi kao popis za reprodukciju';

  @override
  String get playerNetworkStream => 'Mrežni stream';

  @override
  String get playerNetworkStreamDesc =>
      'Otvori izravnu video ili HLS poveznicu';

  @override
  String get playerStreamUrl => 'URL streama';

  @override
  String get playerStreamReferer => 'Referer (neobavezno)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Streamaj magnet poveznicu ili .torrent datoteku';

  @override
  String get playerMagnetLink => 'Magnet poveznica ili URL torrenta';

  @override
  String get playerPickTorrent => 'Odaberi .torrent datoteku';

  @override
  String get playerTorrentMissing =>
      'Prvo instaliraj torrent dodatak iz Postavke > Dodaci';

  @override
  String get playerNoVideos => 'Nema pronađenih videa za reprodukciju';

  @override
  String get playerReset => 'Resetiraj postavke playera';

  @override
  String get playerResetDesc => 'Vrati svaku opciju playera na zadanu';

  @override
  String get playerResetConfirm => 'Resetirati sve postavke playera?';

  @override
  String get playerResetDone => 'Postavke playera resetirane';

  @override
  String get playerQuality => 'Kvaliteta';

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
  String get playerStreams => 'Streamovi';

  @override
  String get playerAutoSelect => 'Automatski odaberi stream';

  @override
  String get playerAutoSelectDesc =>
      'Odaberi stream najsličniji tvom zadnjem izboru za ovaj naslov';

  @override
  String get playerLoadingStreams => 'Tražim streamove…';

  @override
  String get playerNoStreams => 'Ova epizoda nema streamova';

  @override
  String get playerNoStreamsTitle => 'Nema pronađenih streamova';

  @override
  String get playerFailed => 'Reprodukcija nije uspjela';

  @override
  String get playerTorrentNeeded => 'Ovaj stream je torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Instaliraj torrent dodatak za reprodukciju magnet poveznica i .torrent datoteka';

  @override
  String get playerOpenAddons => 'Otvori dodatke';

  @override
  String get playerTryAnotherStream => 'Probaj drugi stream';

  @override
  String get playerEpisodes => 'Epizode';

  @override
  String get playerLock => 'Zaključaj kontrole';

  @override
  String get playerFullscreen => 'Cijeli zaslon';

  @override
  String get readerChapters => 'Poglavlja';

  @override
  String get readerSettingsTitle => 'Postavke čitača';

  @override
  String get readerPreviousChapter => 'Prethodno poglavlje';

  @override
  String get readerNextChapter => 'Sljedeće poglavlje';

  @override
  String get readerFirstChapter => 'Ovo je prvo poglavlje';

  @override
  String get readerLastChapter => 'Sve si pročitao';

  @override
  String get readerFailed => 'Ne mogu otvoriti ovo poglavlje';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Ovo poglavlje nema teksta';

  @override
  String get readerPerTitle => 'Samo za ovaj naslov';

  @override
  String get readerPerTitleDesc =>
      'Zadrži ove postavke čitača samo za ovaj naslov';

  @override
  String get readerSectionReading => 'Čitanje';

  @override
  String get readerSectionControls => 'Kontrole';

  @override
  String get readerSectionDisplay => 'Prikaz';

  @override
  String get readerSectionNovel => 'Novela';

  @override
  String get readerMode => 'Način čitanja';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'S desna na lijevo';

  @override
  String get readerModeLtr => 'S lijeva na desno';

  @override
  String get readerModeVertical => 'Okomite stranice';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Kontinuirano pomicanje';

  @override
  String get readerScale => 'Skaliranje slike';

  @override
  String get readerScaleFit => 'Prilagodi zaslonu';

  @override
  String get readerScaleWidth => 'Prilagodi širini';

  @override
  String get readerScaleHeight => 'Prilagodi visini';

  @override
  String get readerScaleOriginal => 'Izvorna veličina';

  @override
  String get readerScaleSmart => 'Pametno prilagođavanje';

  @override
  String get readerDoublePage => 'Dvostruke stranice';

  @override
  String get readerDoublePageDesc =>
      'Prikaži dvije stranice jednu pored druge u vodoravnom načinu';

  @override
  String get readerDoubleTapZoom => 'Dvostruki dodir za zumiranje';

  @override
  String get readerDoubleTapZoomDesc => 'Zumiraj stranicu dvostrukim dodirom';

  @override
  String get readerAnimate => 'Animacija stranica';

  @override
  String get readerAnimateDesc => 'Animiraj okretanje stranica';

  @override
  String get readerSidePadding => 'Bočni razmak';

  @override
  String get readerSidePaddingDesc => 'Razmak pored stranica u postocima';

  @override
  String get readerPageGap => 'Razmak među stranicama';

  @override
  String get readerPageGapDesc => 'Prostor između stranica';

  @override
  String get readerAutoNext => 'Nastavi u sljedeće poglavlje';

  @override
  String get readerAutoNextDesc =>
      'Učitaj sljedeće poglavlje dok čitaš kraj ovog';

  @override
  String get readerPreload => 'Prethodno učitaj stranice';

  @override
  String get readerPreloadDesc => 'Koliko stranica unaprijed preuzeti';

  @override
  String get readerTapZones => 'Zone dodira';

  @override
  String get readerTapDefault => 'Zadano';

  @override
  String get readerTapLShaped => 'L-oblik';

  @override
  String get readerTapKindle => 'Poput Kindlea';

  @override
  String get readerTapEdge => 'Samo rubovi';

  @override
  String get readerTapOff => 'Isključeno';

  @override
  String get readerInvertTaps => 'Zamijeni zone dodira';

  @override
  String get readerInvertTapsDesc =>
      'Zamijeni područja za prethodnu i sljedeću';

  @override
  String get readerBackground => 'Pozadina';

  @override
  String get readerBackgroundBlack => 'Crna';

  @override
  String get readerBackgroundGray => 'Siva';

  @override
  String get readerBackgroundWhite => 'Bijela';

  @override
  String get readerBackgroundTheme => 'Tema aplikacije';

  @override
  String get readerFilter => 'Filtar boja';

  @override
  String get readerFilterNone => 'Nema';

  @override
  String get readerFilterGrayscale => 'Sivi tonovi';

  @override
  String get readerFilterInvert => 'Invertirano';

  @override
  String get readerFilterSepia => 'Sepija';

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
  String get readerDim => 'Zatamni';

  @override
  String get readerDimDesc => 'Zatamni stranice';

  @override
  String get readerPageNumber => 'Broj stranice';

  @override
  String get readerPageNumberDesc => 'Prikaži broj stranice dok čitaš';

  @override
  String get readerFullscreen => 'Cijeli zaslon';

  @override
  String get readerFullscreenDesc => 'Sakrij sistemske trake';

  @override
  String get readerCropBorders => 'Obreži rubove';

  @override
  String get readerCropBordersDesc =>
      'Odreži prazne bijele ili crne rubove sa stranica';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Tipke za glasnoću okreću stranice';

  @override
  String get readerVolumeKeysDesc =>
      'Glasnoća dolje ide naprijed, glasnoća gore ide natrag';

  @override
  String get readerBookmarks => 'Knjižne oznake';

  @override
  String get readerBookmarkAdd => 'Dodaj knjižnu oznaku';

  @override
  String get readerBookmarkRemove => 'Ukloni knjižnu oznaku';

  @override
  String get readerBookmarksEmpty => 'Još nema knjižnih oznaka';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Stranica $page od $total';
  }

  @override
  String get readerAutoScroll => 'Automatsko pomicanje';

  @override
  String get readerAutoScrollStop => 'Zaustavi automatsko pomicanje';

  @override
  String get readerAutoScrollSpeed => 'Brzina automatskog pomicanja';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Koliko brzo se stranice same pomiču ili okreću';

  @override
  String get readerKeepOn => 'Drži zaslon uključenim';

  @override
  String get readerKeepOnDesc => 'Spriječi gašenje zaslona dok čitaš';

  @override
  String get readerOrientation => 'Orijentacija';

  @override
  String get readerOrientationFree => 'Slobodno';

  @override
  String get readerOrientationPortrait => 'Okomito';

  @override
  String get readerOrientationLandscape => 'Vodoravno';

  @override
  String get readerSaveProgress => 'Spremi napredak';

  @override
  String get readerSaveProgressDesc =>
      'Pamti stranicu i označava poglavlja kao pročitana';

  @override
  String get readerReset => 'Resetiraj postavke čitača';

  @override
  String get readerResetDesc => 'Natrag na zadano';

  @override
  String get novelSize => 'Veličina teksta';

  @override
  String get novelFont => 'Font';

  @override
  String get novelLineHeight => 'Visina retka';

  @override
  String get novelParagraph => 'Razmak odlomaka';

  @override
  String get novelMargin => 'Margine';

  @override
  String get novelTheme => 'Tema čitača';

  @override
  String get novelThemeApp => 'Tema aplikacije';

  @override
  String get novelThemeLight => 'Svijetla';

  @override
  String get novelThemeSepia => 'Sepija';

  @override
  String get novelThemeDark => 'Tamna';

  @override
  String get novelThemeBlack => 'Crna';

  @override
  String get novelJustify => 'Poravnaj tekst obostrano';

  @override
  String get novelJustifyDesc => 'Poravnaj tekst na oba ruba';

  @override
  String get trackProgressTitle => 'Spremiti napredak?';

  @override
  String trackProgressAnime(String name) {
    return 'Pratiti $name na tvom popisu dok gledaš? Odaberi \"Samo ovaj uređaj\" da ostane lokalno ili Ne da se ništa ne sprema.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Pratiti $name na tvom popisu kad završiš poglavlje? Odaberi \"Samo ovaj uređaj\" da ostane lokalno ili Ne da se ništa ne sprema.';
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
  String get trackProgressYes => 'Spremi';

  @override
  String get trackProgressReset =>
      'Upit o spremanju napretka resetiran za ovu vrstu, pitat će ponovno';

  @override
  String get trackProgressNo => 'Ne';

  @override
  String get trackProgressOff => 'Isključeno';

  @override
  String get trackProgressLocal => 'Samo ovaj uređaj';

  @override
  String get trackProgressSettingAnime => 'Prati napredak animea';

  @override
  String get trackProgressSettingManga => 'Prati napredak mange i novela';

  @override
  String get trackProgressSettingDesc =>
      'Što napraviti kad otvoriš epizodu ili završiš poglavlje';

  @override
  String get trackProgressAsk => 'Pitaj';

  @override
  String get trackProgressAlways => 'Uvijek';

  @override
  String get dantotsuImport => 'Uvezi iz Dantotsua';

  @override
  String get dantotsuImportDesc =>
      'Pročitaj kopiju postavki iz Dantotsua (.ani ili šifrirani .sani)';

  @override
  String get dantotsuPick => 'Odaberi Dantotsu kopiju';

  @override
  String get dantotsuNothing => 'Ništa iz ove datoteke se ne može uvesti';

  @override
  String get dantotsuApply => 'Uvezi odabrano';

  @override
  String dantotsuDone(int done, int total) {
    return 'Uvezeno $done od $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Računi';

  @override
  String get dantotsuGroupAppearance => 'Izgled';

  @override
  String get dantotsuGroupExtensions => 'Ekstenzije';

  @override
  String get dantotsuGroupApp => 'Aplikacija';

  @override
  String get dantotsuGroupPlayer => 'Player';

  @override
  String get dantotsuAnilist => 'AniList prijava';

  @override
  String get dantotsuMal => 'MyAnimeList prijava';

  @override
  String get dantotsuDiscord => 'Token za Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repozitoriji anime ekstenzija';

  @override
  String get dantotsuReposManga => 'Repozitoriji manga ekstenzija';

  @override
  String get dantotsuReposNovel => 'Repozitoriji novela ekstenzija';

  @override
  String get dantotsuUpdates => 'Provjera ažuriranja';

  @override
  String get dantotsuComments => 'Komentari';

  @override
  String get dantotsuActivity => 'Provjeravanje AniList obavijesti';

  @override
  String get dantotsuDns => 'DNS pružatelj';

  @override
  String get dantotsuPlayer => 'Brzina playera i boje titlova';

  @override
  String get dantotsuWarning =>
      'Ova datoteka sadrži tokene za prijavu. Čuvaj je privatnom.';

  @override
  String get novelIndent => 'Uvuci odlomke';

  @override
  String get novelIndentDesc => 'Počni svaki odlomak uvlakom u prvom retku';

  @override
  String get novelLetterSpacing => 'Razmak slova';

  @override
  String get novelSectionTranslate => 'Prijevod';

  @override
  String get sectionExperimental => 'Eksperimentalno';

  @override
  String get kitsuGraphqlDetail => 'Brže stranice s detaljima (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Učitaj naslov s likovima, ekipom i tvojim unosom u jednom zahtjevu';

  @override
  String get togetherTitle => 'Gledajmo zajedno';

  @override
  String get togetherIntro =>
      'Zalijepi poveznicu sobe koju ti je prijatelj poslao. Odmah se pridružiš, a player se otvara kad oni počnu gledati.';

  @override
  String get togetherName => 'Tvoje ime';

  @override
  String get togetherConnecting => 'Povezujem se…';

  @override
  String get togetherLeave => 'Napusti sobu';

  @override
  String get togetherYou => 'Ti';

  @override
  String get togetherNoChat => 'Još nema poruka';

  @override
  String get togetherChatHint => 'Poruka';

  @override
  String get togetherCopyInvite => 'Kopiraj poziv';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Poslužitelj i soba kopirani';

  @override
  String get togetherConnectionLost => 'Veza prekinuta';

  @override
  String togetherConnectedTo(String room) {
    return 'Povezan s: $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Ne mogu se povezati: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name se pridružio/la';
  }

  @override
  String togetherLeft(String name) {
    return '$name je otišao/la';
  }

  @override
  String togetherPaused(String name) {
    return '$name je pauzirao/la';
  }

  @override
  String togetherResumed(String name) {
    return '$name je nastavio/la';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name je skočio/la na $time';
  }

  @override
  String get togetherFollowFailed =>
      'Ne mogu otvoriti domaćinovu epizodu. Otvori je sam.';

  @override
  String get togetherJoinRole => 'Pridruži se sobi';

  @override
  String get togetherOpenHost => 'Otvori domaćinovu epizodu';

  @override
  String get togetherShowChat => 'Prikaži chat uživo';

  @override
  String get togetherWaitingHost => 'Čekam da domaćin pokrene epizodu';

  @override
  String get togetherRoomLink => 'Poveznica sobe';

  @override
  String get togetherBadLink => 'To nije poveznica sobe';

  @override
  String get togetherHostClosed => 'Domaćin je zatvorio sobu';

  @override
  String get togetherNowPlaying => 'Sada se reproducira';

  @override
  String togetherWatchingCount(int count) {
    return '$count gleda';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user želi pauzirati';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user želi nastaviti';
  }

  @override
  String get togetherChip => 'Zajedno';

  @override
  String get togetherSettingsDesc =>
      'Pridruži se prijateljevoj sobi preko poveznice';

  @override
  String get novelBilingual => 'Prikaži original i prijevod';

  @override
  String get novelBilingualDesc =>
      'Svaki odlomak prikazuje izvorni tekst s prijevodom ispod njega';

  @override
  String get novelTranslateTo => 'Prevedi na';

  @override
  String get novelTranslateOff => 'Isključeno';

  @override
  String get novelSectionSpeech => 'Tekst u govor';

  @override
  String get novelSpeechRate => 'Brzina govora';

  @override
  String get novelSpeechPitch => 'Visina glasa';

  @override
  String get novelSpeak => 'Čitaj naglas';

  @override
  String get novelSpeakStop => 'Prestani čitati naglas';

  @override
  String get novelTranslate => 'Prevedi poglavlje';

  @override
  String get novelTranslateShowOriginal => 'Prikaži original';

  @override
  String novelTranslateFailed(String error) {
    return 'Prijevod nije uspio: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Tekst u govor nije dostupan na ovom uređaju';

  @override
  String get novelSpeechVoice => 'Glas';

  @override
  String get novelSpeechVoiceDefault => 'Zadano sustava';

  @override
  String get novelSpeakPrevious => 'Prethodni redak';

  @override
  String get novelSpeakNext => 'Sljedeći redak';

  @override
  String get novelTapPaging => 'Dodirni rubove za okretanje stranice';

  @override
  String get novelTapPagingDesc =>
      'Dodirni lijevu ili desnu stranu za pomicanje stranice, sredina prikazuje kontrole';

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
    return 'Preostalo: $count min';
  }

  @override
  String get novelBold => 'Podebljani tekst';

  @override
  String get novelBoldDesc => 'Koristi deblju težinu';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Završeno: $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Sljedeće: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Prethodno: $chapter';
  }

  @override
  String get readerNoPages => 'Ovo poglavlje nema stranica';

  @override
  String get readerLoadingPages => 'Učitavam stranice…';

  @override
  String get readerSlowPage => 'Ova stranica se još učitava…';

  @override
  String get readerPageFailed => 'Ne mogu učitati ovu stranicu';

  @override
  String get playerShowComments => 'Prikaži komentare';

  @override
  String get playerHideComments => 'Sakrij komentare';

  @override
  String get playerSubtitles => 'Titlovi';

  @override
  String get playerSubtitlesOff => 'Titlovi isključeni';

  @override
  String get playerAudio => 'Zvuk';

  @override
  String get playerAddSubtitle => 'Dodaj datoteku titlova';

  @override
  String get playerAddAudio => 'Dodaj audio datoteku';

  @override
  String get playerChapters => 'Poglavlja';

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
  String get playerNoChapters => 'Nema poglavlja';

  @override
  String get playerTimestamp => 'Vremenska oznaka';

  @override
  String get playerAutoPlayDelay => 'Odbrojavanje do sljedeće epizode';

  @override
  String get playerWatchedAt => 'Računaj kao pogledano na';

  @override
  String playerNextIn(int seconds) {
    return 'Sljedeća epizoda za $seconds s';
  }

  @override
  String get playerPlayNow => 'Pusti sada';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: automatski će se preskočiti za ovaj naslov';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: neće se automatski preskočiti za ovaj naslov';
  }

  @override
  String get playerAudioLanguage => 'Željeni jezik zvuka';

  @override
  String get playerLanguageOrderHint =>
      'Odvoji jezike zarezima. Koristi se prvi pronađeni.';

  @override
  String get playerPip => 'Slika u slici';

  @override
  String get playerAutoPip => 'Slika u slici pri izlasku';

  @override
  String get playerAutoPipDesc =>
      'Nastavi reprodukciju u malom prozoru kad napustiš aplikaciju';

  @override
  String playerAutoPlaying(String title) {
    return 'Sljedeće pušta: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Ne mogu instalirati shadere: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Poglavlje $number';
  }

  @override
  String get playerPerTitle => 'Samo za ovaj naslov';

  @override
  String get playerPerTitleDesc =>
      'Zadrži ove opcije za ovaj naslov i ostavi svoje zadane na miru';

  @override
  String get playerSwapGestures => 'Zamijeni strane prevlačenja';

  @override
  String get playerSwapGesturesDesc => 'Svjetlina lijevo, glasnoća desno';

  @override
  String get playerOpenBig => 'Otvori u velikom prikazu';

  @override
  String get playerOpenBigDesc =>
      'Pokreni player preko cijelog zaslona umjesto s popisom epizoda';

  @override
  String get playerPauseOnBlur => 'Pauziraj kad nije u fokusu';

  @override
  String get playerPauseOnBlurDesc =>
      'Pauziraj dok je aplikacija prekrivena, npr. pločom obavijesti, i nastavi kad se vratiš';

  @override
  String get playerAudioOutput => 'Audio izlaz';

  @override
  String get fontAppDefault => 'Font aplikacije';

  @override
  String get fontImport => 'Uvezi font';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Odgoda titlova';

  @override
  String get playerAudioDelay => 'Odgoda zvuka';

  @override
  String get playerDelayReset => 'Resetiraj';

  @override
  String get playerOnlineSubtitles => 'Online titlovi';

  @override
  String get playerOnlineSearchHint => 'Naslov i epizoda';

  @override
  String get playerOnlineNone => 'Nema pronađenih titlova';

  @override
  String playerOnlineFailed(String error) {
    return 'Pretraga titlova nije uspjela: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Ne mogu preuzeti ovaj titl: $error';
  }

  @override
  String get playerOnlineMatch => 'Odgovara ovoj datoteci';

  @override
  String get playerOnlineEpisode => 'Podudaranje epizode';

  @override
  String playerOnlineDownloads(int count) {
    return '$count preuzimanja';
  }

  @override
  String get playerSeekPreview => 'Pregled premotavanja';

  @override
  String get playerSeekPreviewDesc =>
      'Prikaži mali pregled kadra iznad trake dok premotavaš. Otvara drugi dekoder niske razlučivosti pa troši dodatne podatke na streamovima.';

  @override
  String get playerSettingsChip => 'Postavke';

  @override
  String get playerAudioDevice => 'Audio uređaj';

  @override
  String get settingsDownloads => 'Preuzimanja';

  @override
  String get settingsDownloadsDesc => 'Offline epizode, red i offline način';

  @override
  String get downloadsTitle => 'Preuzimanja';

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
      'Pogledaj red i sve spremljeno na ovom uređaju';

  @override
  String get downloadTitle => 'Preuzmi';

  @override
  String get downloadAlready => 'Već preuzeto ili u redu';

  @override
  String get downloadPickStream => 'Koji stream preuzeti?';

  @override
  String get downloadPickSubtitle => 'Koji titl preuzeti?';

  @override
  String get downloadPickAudio => 'Koju audio traku preuzeti?';

  @override
  String get downloadNoAudio => 'Bez dodatnog zvuka';

  @override
  String get downloadAudio => 'Zvuk';

  @override
  String get downloadNoSubtitle => 'Bez titlova';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Ovaj stream je HLS popis za reprodukciju. Za preuzimanje treba FFmpeg dodatak.';

  @override
  String get downloadSourceMissing => 'Izvor za ovu epizodu nije instaliran';

  @override
  String get downloadWaitingConnection => 'Čekam vezu';

  @override
  String get downloadSubtitles => 'Titlovi';

  @override
  String get downloadDownloaded => 'Preuzeto';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Obriši preuzimanje';

  @override
  String get downloadCancel => 'Odustani';

  @override
  String get downloadPause => 'Pauziraj';

  @override
  String get downloadPaused => 'Pauzirano';

  @override
  String get downloadResume => 'Nastavi';

  @override
  String get downloadPauseAll => 'Pauziraj sve';

  @override
  String get downloadResumeAll => 'Nastavi sve';

  @override
  String get downloadQueuedState => 'Čeka u redu';

  @override
  String get downloadResolving => 'Dohvaćam stream…';

  @override
  String get downloadUsedFallback =>
      'Nema odgovarajućeg streama, korišten je prvi';

  @override
  String get downloadTabQueue => 'Red';

  @override
  String get downloadTabDone => 'Gotovo';

  @override
  String get downloadTabFailed => 'Neuspjelo';

  @override
  String get downloadEmptyQueue => 'Ništa se ne preuzima';

  @override
  String get downloadEmptyDone => 'Još ništa nije preuzeto';

  @override
  String get downloadEmptyFailed => 'Nema neuspjelih preuzimanja';

  @override
  String get downloadNext => 'Sljedeća epizoda';

  @override
  String downloadNextN(int count) {
    return 'Sljedeće epizode: $count';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Sve nepogledano ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Ovaj raspon ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Sve epizode ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count epizoda u redu',
      few: '$count epizode u redu',
      one: '$count epizoda u redu',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name preuzeto';
  }

  @override
  String downloadFailedBody(String name) {
    return 'Preuzimanje nije uspjelo: $name';
  }

  @override
  String downloadStorage(String size) {
    return 'Preuzimanja zauzimaju $size';
  }

  @override
  String get downloadQueueHeader => 'Red';

  @override
  String get downloadParallel => 'Istovremena preuzimanja';

  @override
  String get downloadParallelDesc =>
      'Pokreni jedno po jedno preuzimanje ili više odjednom';

  @override
  String get downloadOneByOne => 'Jedno po jedno';

  @override
  String get downloadNotifications => 'Obavijesti o preuzimanju';

  @override
  String get downloadNotificationsDesc =>
      'Napredak uživo gdje sustav to podržava, inače obavijest kad preuzimanje završi';

  @override
  String get downloadNotifyLive => 'Uživo';

  @override
  String get downloadNotifyDone => 'Kad je gotovo';

  @override
  String get downloadNotifyOff => 'Isključeno';

  @override
  String get downloadInfoFile => 'Zapiši info datoteku uz svako preuzimanje';

  @override
  String get downloadInfoFileDesc =>
      'Sprema stream, kvalitetu, titl i vremena preskakanja u malu .json datoteku';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto ide offline samo kad se aplikacija pokrene bez veze. Uvijek ostaje offline dok ne promijeniš.';

  @override
  String get offlineModeOff => 'Isključeno';

  @override
  String get offlineModeAlways => 'Uvijek';

  @override
  String get offlineModeOn =>
      'Offline način je uključen. Promjene se spremaju ovdje i šalju kad se vratiš online.';

  @override
  String get offlineSaved =>
      'Spremljeno na ovom uređaju, sinkronizirat će se kad budeš online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count promjena sinkronizirano',
      few: '$count promjene sinkronizirane',
      one: '$count promjena sinkronizirana',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count promjena čeka sinkronizaciju',
      few: '$count promjene čekaju sinkronizaciju',
      one: '$count promjena čeka sinkronizaciju',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Promjene koje čekaju sinkronizaciju';

  @override
  String get offlinePendingNone => 'Ništa ne čeka';

  @override
  String get offlineSyncNow => 'Sinkroniziraj sada';

  @override
  String get offlineDiscard => 'Odbaci';

  @override
  String get downloadNotOffline =>
      'Ova epizoda nije preuzeta pa nije dostupna offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Sljedeće poglavlje';

  @override
  String downloadNextChapters(int count) {
    return 'Sljedeća poglavlja: $count';
  }

  @override
  String downloadUnread(int count) {
    return 'Sve nepročitano ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Sva poglavlja ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total stranica';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count stranica';
  }

  @override
  String get downloadFfmpegTitle => 'Treba FFmpeg dodatak';

  @override
  String get downloadFfmpegBody =>
      'Ovaj stream je HLS popis za reprodukciju. FFmpeg dodatak spaja njegove dijelove u jednu mp4 datoteku. Bez njega dijelovi ostaju u mapi epizode i reproduciraju se odatle.';

  @override
  String get downloadFfmpegInstall => 'Instaliraj';

  @override
  String get downloadFfmpegInstalling =>
      'Instaliram FFmpeg, ovo može potrajati…';

  @override
  String get downloadFinishing => 'Spajam dijelove u jednu datoteku…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total dijelova';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrent nema video datoteku za preuzimanje';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preuzimam $count stavki',
      few: 'Preuzimam $count stavke',
      one: 'Preuzimam $count stavku',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Obriši pogledana preuzimanja';

  @override
  String get downloadAutoDeleteDesc =>
      'Uklanja preuzimanje čim tvoj napredak dosegne tu epizodu ili poglavlje';

  @override
  String get downloadConnections => 'Veze po preuzimanju';

  @override
  String get downloadConnectionsDesc =>
      'Dijeli veliku datoteku na dijelove koji se dohvaćaju istovremeno. Neki poslužitelji to ograničavaju.';

  @override
  String get downloadPlayChoice => 'Pusti iz';

  @override
  String get downloadPlayLocalDesc => 'Datoteka spremljena na ovom uređaju';

  @override
  String get downloadPlayStream => 'Streamaj online';

  @override
  String get downloadPlayStreamDesc => 'Učitaj epizodu s izvora';

  @override
  String get offlineFeedTitle => 'Preuzeto na ovom uređaju';

  @override
  String get offlineFeedEmpty =>
      'Preuzmi nešto dok si online i pojavit će se ovdje';

  @override
  String get offlineEnabled => 'Offline način je uključen';

  @override
  String get offlineDisabled => 'Offline način je isključen';

  @override
  String get downloadReadChoice => 'Čitaj iz';

  @override
  String get downloadReadLocalDesc => 'Stranice spremljene na ovom uređaju';

  @override
  String get downloadReadOnline => 'Čitaj online';

  @override
  String get downloadReadOnlineDesc => 'Učitaj poglavlje s izvora';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Obrisati $name s ovog uređaja?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Otkazati preuzimanje: $name? Ono što je već preuzeto bit će obrisano.';
  }

  @override
  String get downloadFfmpegFolder => 'Zadrži kao mapu';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Odbaciti $count promjena koje nikad nisu poslane? Ovo se ne može poništiti.',
      few:
          'Odbaciti $count promjene koje nikad nisu poslane? Ovo se ne može poništiti.',
      one:
          'Odbaciti $count promjenu koja nikad nije poslana? Ovo se ne može poništiti.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Čekam Wi-Fi';

  @override
  String get downloadWaitingMetered =>
      'Pauzirano na mreži s ograničenim prometom';

  @override
  String get downloadWifiOnly => 'Samo Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Preuzimanja čekaju dok si na mobilnim podacima';

  @override
  String get downloadMetered => 'Pauziraj na mrežama s ograničenim prometom';

  @override
  String get downloadMeteredDesc =>
      'Čeka i na Wi-Fi mreži koju tvoj uređaj označi kao ograničenu';

  @override
  String get downloadSpeedLimit => 'Ograničenje brzine';

  @override
  String get downloadSpeedLimitDesc => 'Ograničava ukupnu brzinu preuzimanja';

  @override
  String get downloadUnlimited => 'Neograničeno';

  @override
  String get downloadMoveToTop => 'Premjesti na vrh';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds seedova · $peers peerova';
  }

  @override
  String get downloadTorrentFile => 'Koja datoteka?';

  @override
  String get downloadTorrentAuto => 'Automatski pronađi epizodu';

  @override
  String get downloadTorrentLoading => 'Čitam torrent…';

  @override
  String get watchAutoSource => 'Automatski prijeđi na sljedeći izvor';

  @override
  String get watchAutoSourceDesc =>
      'Ako izvor ne može pronaći naslov ili se ne učita, probaj sljedeći instalirani izvor';

  @override
  String get extensionTest => 'Testiraj ekstenzije';

  @override
  String get extensionTestCopy => 'Kopiraj greške i njihove dnevnike';

  @override
  String get extensionTestQuery => 'Pojam za pretragu';

  @override
  String get extensionTestRun => 'Pokreni';

  @override
  String get extensionTestStop => 'Zaustavi';

  @override
  String get extensionTestNone => 'Nema instaliranih ekstenzija ove vrste';

  @override
  String get extensionTestNotRun => 'Još nije testirano';

  @override
  String get extensionTestSearch => 'Traži';

  @override
  String get extensionTestDetail => 'Detalji';

  @override
  String get extensionTestUnits => 'Epizode / poglavlja';

  @override
  String get extensionTestLinks => 'Streamovi / stranice';

  @override
  String extensionTestFailedAt(String step) {
    return 'Neuspjeh na koraku: $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'Testirano $done od $total · prošlo: $passed · palo: $failed';
  }

  @override
  String get extensionTestCopyLogs => 'Kopiraj sve s kompletnim dnevnicima';

  @override
  String get onboardingFeaturesTitle => 'Sve na jednom mjestu';

  @override
  String get onboardingFeaturesBody =>
      'Sve što pratiš, gledaš i čitaš, bez žongliranja aplikacijama.';

  @override
  String get onboardingFeatureTrack => 'Prati sve';

  @override
  String get onboardingFeatureTrackDesc =>
      'Popisi, napredak i ocjene na AniListu, MyAnimeListu, Simklu, Kitsuu i MangaBaki.';

  @override
  String get onboardingFeatureWatch => 'Gledaj i čitaj';

  @override
  String get onboardingFeatureWatchDesc =>
      'Instaliraj ekstenzije i streamaj anime ili čitaj mangu i novele izravno u aplikaciji.';

  @override
  String get onboardingFeatureOffline => 'Ponesi offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Preuzmi epizode i poglavlja i nastavi bez veze.';

  @override
  String get onboardingFeatureSync => 'Drži popise sinkroniziranima';

  @override
  String get onboardingFeatureSyncDesc =>
      'Preslikaj svoj popis kroz servise ili pusti da pobijedi onaj koji je ispred.';

  @override
  String get onboardingServices => 'Radi s';

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
      'Drag a button to move it (hold first on a touch screen). Tap one to cut, move or hide it';

  @override
  String layoutDropInto(String zone) {
    return 'Drop in: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moving $name. Press a paste button to place it';
  }

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
