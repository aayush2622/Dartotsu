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
  String get appLockBiometric => 'Otključajte biometrijom';

  @override
  String get appLockBiometricDesc =>
      'Koristite otisak prsta ili lice umjesto upisivanja šifre';

  @override
  String get appLockBiometricReason => 'Otključaj Dartotsu';

  @override
  String get appLockDelay => 'Zaključaj u stanju mirovanja';

  @override
  String get appLockDelayAlways => 'Uvijek';

  @override
  String get appLockDelayNever => 'nikada';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuta',
      one: '1 minuta',
    );
    return 'Nakon $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Koristite biometriju';

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
      other: 'Dostupna ažuriranja $count',
      one: 'Dostupno je 1 ažuriranje',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Ažurirajte sve';

  @override
  String extensionsUpdated(int done, int total) {
    return 'Ažurirano $done od $total proširenja';
  }

  @override
  String get updateConflictTitle => 'Ažuriranje nije instalirano';

  @override
  String updateConflictBody(String names) {
    return '$names nije moguće instalirati preko postojeće verzije. To obično znači da je instalirana kopija drugačije potpisana. Deinstalirati ga i instalirati novu verziju?';
  }

  @override
  String get updateConflictAction => 'Deinstalirajte i ponovno instalirajte';

  @override
  String get noSourceSettings => 'Izvor nema nikakvih postavki';

  @override
  String get addPluginRepository => 'Dodaj repozitorij dodataka';

  @override
  String get pluginIndexUrlHint => 'URL indeksa dodataka';

  @override
  String get addRepository => 'Dodaj repozitorij';

  @override
  String get importRepositoryFile => 'Uvezi datoteku';

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
  String get test => 'test';

  @override
  String get testing => 'Testiram…';

  @override
  String get resolving => 'Razrješavam…';

  @override
  String get none => 'Ništa';

  @override
  String get selectMediaService => 'Odaberi medijski servis';

  @override
  String get manageServices => 'Medijske usluge';

  @override
  String get manageServicesDesc =>
      'Promijenite redoslijed usluga i odaberite one koje se prikazuju u biraču';

  @override
  String get manageServicesHint =>
      'Povucite za promjenu redoslijeda, isključite one koje ne koristite';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

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
  String get stories => 'Priče';

  @override
  String get watchOrder => 'Gledajte red';

  @override
  String get watchOrderOpenSite => 'Otvorite na chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Za ovaj naslov nije pronađen redoslijed gledanja';

  @override
  String get watchOrderOpenFailed => 'Nije moguće otvoriti taj naslov';

  @override
  String get watchOrderCurrent => 'Vi ste ovdje';

  @override
  String get watchOrderCredit => 'Gledajte narudžbe putem chiaki.site';

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
  String get settingsSync => 'Postavke sinkronizacije';

  @override
  String get settingsSyncDesc =>
      'Neka vaše postavke budu iste na svim uređajima. Oni su pohranjeni u privatnom sadržaju na vašem GitHub računu';

  @override
  String get settingsSyncSwitch => 'Sinkronizacija pri promjeni';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Prijavite se s GitHubom';

  @override
  String get settingsSyncSignInDesc =>
      'Postavke su pohranjene u privatnom sadržaju na vašem računu';

  @override
  String get settingsSyncToken => 'Koristite osobni pristupni token';

  @override
  String get settingsSyncTokenDesc =>
      'Stvorite ga na github.com/settings/tokens samo s dozvolom za suštinu';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Prijavljeni kao $user';
  }

  @override
  String get settingsSyncSignOut => 'Odjavi se';

  @override
  String settingsSyncCode(Object code) {
    return 'Unesite $code na GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Stranica GitHub otvorena je u vašem pregledniku. Dodirnite za kopiranje koda ili dodirnite i držite za otkazivanje.';

  @override
  String get settingsSyncSignInFailed => 'Nije moguće prijaviti se na GitHub';

  @override
  String get dcPreview => 'Pregled';

  @override
  String get dcSampleWatching => 'Gledanje';

  @override
  String get dcSampleReading => 'čitanje';

  @override
  String get dcSampleBrowsing => 'Pregledavanje';

  @override
  String get dcSampleLive => 'Upravo sada';

  @override
  String get dcLiveNothing =>
      'Trenutno se ništa ne prikazuje. Otvorite naslov, započnite epizodu ili poglavlje i pojavit će se ovdje.';

  @override
  String get dcMemberList => 'U popisu članova';

  @override
  String get dcAccount => 'Račun';

  @override
  String get dcSignIn => 'Prijavite se s Discordom';

  @override
  String get dcSignOut => 'Odjavi se';

  @override
  String get dcDesktopHint =>
      'Bez povezivanja, Discord prikazuje \"Gledanje Dartotsua\" putem aplikacije za radnu površinu. Povežite Discord kako biste aktivnost nazvali prema svom naslovu, uključujući i na mobitelu.';

  @override
  String get dcMobileHint =>
      'Povežite Discord da pokažete što gledate ili čitate. Koristi Discordovu stranicu za autorizaciju, a ne token vašeg računa.';

  @override
  String get dcConnect => 'Spojite Discord';

  @override
  String get dcConnectDesc =>
      'Otvara Discordovu stranicu za autorizaciju i dodaje Dartotsu pod Autorizirane aplikacije. Discord traži ažuriranje vaše prisutnosti. Sprema se samo token za osvježavanje, a ne token vašeg računa.';

  @override
  String get dcConnectFailed => 'Nije moguće povezati Discord';

  @override
  String get dcConnectedSnack => 'Discord povezan';

  @override
  String get dcDisconnect => 'Prekini vezu';

  @override
  String get dcDisconnectedSnack => 'Discord prekinut';

  @override
  String get dcUseToken => 'Umjesto toga upotrijebite token';

  @override
  String get dcRouteDesktop => 'Kroz desktop aplikaciju Discord';

  @override
  String get dcRouteHeadless => 'Preko svog računa';

  @override
  String get dcRouteGateway => 'Preko svog računa, uživo';

  @override
  String get dcRouteLinked => 'Povezana aplikacija';

  @override
  String get dcRouteNone => 'Nije povezano';

  @override
  String get dcStatusNeedsToken =>
      'Potreban je Discord token. Povezivanje aplikacije ne postavlja vaš online status.';

  @override
  String get dcAccountOnly => 'Potreban je prijavljeni račun';

  @override
  String get dcStatusSection => 'Status';

  @override
  String get dcControlStatus => 'Kontroliraj moj status';

  @override
  String get dcControlStatusDesc =>
      'Održava živu vezu s Discordom dok je Rich Presence uključen, tako da Dartotsu može postaviti vaš status.';

  @override
  String get dcStatusOnline => 'Online';

  @override
  String get dcStatusIdle => 'besposlen';

  @override
  String get dcStatusDnd => 'Ne uznemiravaj';

  @override
  String get dcStatusInvisible => 'Nevidljivi';

  @override
  String get dcCustomStatus => 'Prilagođeni status';

  @override
  String get dcCustomStatusHint => 'što namjeravaš';

  @override
  String get dcActivitySection => 'aktivnost';

  @override
  String get dcShowWatching => 'Pokažite dok gledate';

  @override
  String get dcShowReading => 'Pokaži dok čitaš';

  @override
  String get dcListening => 'Slušanje';

  @override
  String get dcCompeting => 'Natječući se';

  @override
  String get dcActivityName => 'Naziv aktivnosti';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Naslov';

  @override
  String get dcNameCustom => 'Custom';

  @override
  String get dcCustomNameHint => 'Ime prikazano nakon \"Gledanje\"';

  @override
  String get dcStatusText => 'Tekst statusa';

  @override
  String get dcStatusTextDesc =>
      'Što popis članova prikazuje pored vašeg imena';

  @override
  String get dcDisplayName => 'Ime';

  @override
  String get dcDisplayState => 'Država';

  @override
  String get dcDisplayDetails => 'pojedinosti';

  @override
  String get dcTextSection => 'Tekst';

  @override
  String get dcDetails => 'Gornja linija';

  @override
  String get dcState => 'Zaključak';

  @override
  String get dcTemplateHint => 'Empty koristi zadanu vrijednost';

  @override
  String get dcVariables => 'Dodirnite za umetanje vrijednosti';

  @override
  String get dcImagesSection => 'Slike';

  @override
  String get dcLargeImage => 'Velika slika';

  @override
  String get dcLargeAuto => 'Automatski';

  @override
  String get dcLargeCover => 'Poklopac';

  @override
  String get dcLargeLogo => 'Logotip';

  @override
  String get dcSmallImage => 'Mala slika';

  @override
  String get dcSmallAuto => 'Logotip';

  @override
  String get dcSmallNone => 'Nijedan';

  @override
  String get dcTimerStyle => 'Stil mjerača vremena';

  @override
  String get dcTimerAuto => 'Automatski';

  @override
  String get dcTimerElapsed => 'Proteklo';

  @override
  String get dcTimerRemaining => 'Preostalo';

  @override
  String get dcButtonsSection => 'Gumbi';

  @override
  String get dcButtonMedia => 'Link na naslov';

  @override
  String get dcButtonApp => 'Link na Dartotsu';

  @override
  String get dcButtonCustom => 'Prilagođeni gumb';

  @override
  String get dcButtonLabel => 'Oznaka';

  @override
  String get dcButtonUrl => 'Link';

  @override
  String get dcPrivacySection => 'Privatnost';

  @override
  String get dcPrivateText => 'Privatni tekst';

  @override
  String get dcPrivateHint => 'Nešto privatno';

  @override
  String get dcTokenWarning =>
      'Prijava koristi token vašeg računa. Pravila Discorda to obeshrabruju, stoga ga koristite na vlastitu odgovornost.';

  @override
  String get dcConnected => 'Povezan';

  @override
  String get dcConnection => 'Veza';

  @override
  String get dcMethodDesktop => 'Discord desktop aplikacija';

  @override
  String get dcMethodDesktopDesc =>
      'Koristi se automatski kada ništa drugo nije povezano. Discord mora biti otvoren na ovom računalu.';

  @override
  String get dcMethodToken => 'Token računa';

  @override
  String get dcInUse => 'U upotrebi';

  @override
  String get dcRecommended => 'Preporučeno';

  @override
  String get dcConnecting => 'Povezivanje…';

  @override
  String get dcDisconnected => 'Nije povezano';

  @override
  String dcSignedInAs(String name) {
    return 'Prijavljeni kao $name';
  }

  @override
  String get settingsSyncOn => 'Uključeno';

  @override
  String get settingsSyncCustom => 'Custom';

  @override
  String get settingsSyncChangedHeader => 'Promijenjene postavke';

  @override
  String get settingsSyncNoneChanged =>
      'Još niste promijenili ništa od ovoga, tako da nema ništa za sinkronizaciju.';

  @override
  String get settingsSyncChangedOnly =>
      'Pohranjuju se samo postavke koje ste promijenili. Sve ostalo koristi svoje zadane postavke na svakom uređaju. Ikona oblaka pokazuje što je već na poslužitelju.';

  @override
  String get settingsSyncOffCategory =>
      'Ne sinkronizira se. One ostaju na ovom uređaju, a kopija poslužitelja ostaje kakva jest.';

  @override
  String get settingsSyncPartsNote =>
      'Po uređaju. Isključeno zadržava vlastitu vrijednost svakog uređaja, tako da se telefon i TV mogu razlikovati.';

  @override
  String get settingsSyncPartSubtitles => 'Veličina i boje titlova';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Veličina, težina, boje i položaj';

  @override
  String get settingsSyncPartPictureColors => 'Boje slike';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Svjetlina, kontrast, zasićenost, gama, nijansa i HDR';

  @override
  String get settingsSyncPartPalette => 'Tematske boje';

  @override
  String get settingsSyncPartPaletteDesc => 'Tema, istaknuta boja i OLED crna';

  @override
  String get settingsSyncCatOther => 'Gledajte, čitajte i usluge';

  @override
  String get settingsSyncTitles => 'Gledajte napredak i naslove';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records naslova i $resume unosa rezimea na poslužitelju';
  }

  @override
  String get settingsSyncTitlesNone => 'Još ništa nije preneseno';

  @override
  String get settingsSyncTitlesNote =>
      'Gledajte i čitajte pozicije, policu sa životopisom, vaše lokalne popise, knjižne oznake, istaknute stavke i opcije po naslovu. Podudaranja izvora i streamovi ostaju na svakom uređaju jer ovise o vašim proširenjima. Naslovi se učitavaju najviše svakih 45 sekundi.';

  @override
  String get settingsSyncConnect => 'Nije povezano';

  @override
  String get settingsSyncConnectDesc =>
      'Prijavite se s GitHubom kako bi vaše postavke bile iste na svim uređajima.';

  @override
  String get settingsSyncFailedTitle => 'Sinkronizacija nije uspjela';

  @override
  String get settingsSyncPaused => 'Pauzirano';

  @override
  String get settingsSyncPausedDesc =>
      'Ništa se ne učitava niti preuzima dok je ovo isključeno.';

  @override
  String get settingsSyncUpToDate => 'Ažurno';

  @override
  String get settingsSyncRetry => 'Pokušaj ponovo';

  @override
  String get settingsSyncAccount => 'GitHub račun';

  @override
  String get settingsSyncAccountDesc =>
      'Vaši podaci idu u privatnu bit na vašem vlastitom računu.';

  @override
  String get settingsSyncWaiting => 'Čekamo vaše odobrenje na GitHubu';

  @override
  String get settingsSyncCopyCode => 'Dodirnite kod da biste ga kopirali';

  @override
  String get settingsSyncCancel => 'Odustani';

  @override
  String get settingsSyncStatSettings => 'postavke';

  @override
  String get settingsSyncStatTitles => 'Naslovi';

  @override
  String get settingsSyncStatShelf => 'Nastavi';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Preneseno $time iz $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count promijenjeno',
      one: '1 promijenjeno',
      zero: 'Još se ništa nije promijenilo',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Računi i lozinke';

  @override
  String get settingsSyncSecretsDesc =>
      'Sinkronizirajte svoje prijave (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API ključeve i zaključavanje aplikacija između svojih uređaja. Oni su šifrirani šifrom koja ostaje na vašim uređajima, tako da ih GitHub nikada ne vidi.';

  @override
  String get settingsSyncSecretsOn => 'Računi su sinkronizirani i šifrirani';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Odjavom na jednom uređaju ne odjavljujete se na ostalima.';

  @override
  String get settingsSyncSecretsBroken =>
      'Zaporka više ne odgovara onoj na poslužitelju. Unesite ga ponovno da biste nastavili sinkronizirati račune.';

  @override
  String get settingsSyncPassphraseSet => 'Postavite zaporku';

  @override
  String get settingsSyncPassphraseEnter => 'Unesite svoju šifru';

  @override
  String get settingsSyncPassphraseField => 'Lozinka';

  @override
  String get settingsSyncPassphraseConfirm => 'Ponovite zaporku';

  @override
  String get settingsSyncPassphraseNew =>
      'Odaberite zaporku od najmanje 6 znakova. Nije pohranjen nigdje osim na vašim uređajima i ne može se vratiti. Ako ga zaboravite, izbrišite kopiju poslužitelja i počnite ispočetka.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Unesite šifru koju ste odabrali na drugom uređaju. Računi na ovom uređaju bit će zamijenjeni sinkroniziranim.';

  @override
  String get settingsSyncPassphraseWrong => 'Pogrešna šifra';

  @override
  String get settingsSyncPassphraseMismatch => 'Zaporke se ne podudaraju';

  @override
  String get settingsSyncPassphraseShort => 'Koristite najmanje 6 znakova';

  @override
  String get settingsSyncSecretsStop => 'Zaustavi sinkronizaciju računa';

  @override
  String get settingsSyncSecretsDelete => 'Izbriši s GitHuba';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Ovo uklanja datoteku šifriranih računa iz vaše suštine. Ostali uređaji zadržavaju svoje prijave i mogu postaviti novu šifru.';

  @override
  String get settingsSyncWhat => 'Što sinkronizirati';

  @override
  String get settingsSyncServer => 'Na poslužitelju';

  @override
  String get settingsSyncServerEmpty => 'Još ništa nije preneseno';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count postavke, prenesene $time iz $device';
  }

  @override
  String get settingsSyncThisDevice => 'ovaj uređaj';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count postavke na poslužitelju',
      one: '1 postavka na poslužitelju',
      zero: 'Ništa na poslužitelju',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sinkroniziraj sada';

  @override
  String get settingsSyncRunning => 'Sinkronizacija…';

  @override
  String get settingsSyncNever => 'Još nije sinkronizirano';

  @override
  String settingsSyncLast(Object time) {
    return 'Zadnja sinkronizacija $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sinkronizacija nije uspjela: $error';
  }

  @override
  String get settingsSyncScope =>
      'Sinkroniziraju se samo postavke koje posvuda rade jednako. Računi, tokeni, mape, proširenja, obavijesti, Discord, ažuriranja i veličina prozora ostaju na svakom uređaju.';

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
  String get autoUpdateRuntimes =>
      'Automatski ažurirajte vrijeme izvođenja proširenja';

  @override
  String get autoUpdateRuntimesDesc =>
      'Preuzmite nove Aniyomi, CloudStream i druge izvedbene verzije u pozadini. Isključeno, ikona ažuriranja pojavljuje se pored upravitelja.';

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
  String get backupPasswordRequired => 'Lozinka (potrebna za podatke računa)';

  @override
  String get backupProtectedNeedsPassword =>
      'Postavite lozinku za sigurnosno kopiranje podataka računa ili je poništite';

  @override
  String get backupProtectedSkipped =>
      'Ova sigurnosna kopija nema zaporku, pa su podaci o računu preskočeni';

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
  String get backupCatPlayer => 'Igrač';

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
  String get logDelete => 'Brisanje datoteka dnevnika';

  @override
  String get logDeleteDesc =>
      'Izbrišite spremljene zapisnike aplikacija kako biste oslobodili prostor';

  @override
  String logDeleted(String size) {
    return 'Izbrisano $size zapisnika';
  }

  @override
  String get missingSequel => 'Nedostaje nastavak';

  @override
  String get rising => 'Ustajanje';

  @override
  String get stacks => 'Stogovi';

  @override
  String get stacksAll => 'sve';

  @override
  String get stacksFeatured => 'Istaknuto';

  @override
  String get stacksMine => 'Vaš';

  @override
  String get stacksSaved => 'Spremljeno';

  @override
  String get stacksFollowing => 'Praćenje';

  @override
  String get stacksEmpty => 'Ovdje još nema gomila';

  @override
  String get stacksSignIn => 'Prijavite se na MangaBaka da vidite svoje hrpe';

  @override
  String get stacksScopeNeeded =>
      'Vaši hrpi trebaju novu dozvolu. Ponovno se prijavite na MangaBaku da biste to dopustili.';

  @override
  String get stacksSignInAgain => 'Prijavite se ponovno';

  @override
  String get stacksCouldntLoad => 'Nije moguće učitati hrpe';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count serija',
      one: '1 serija',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sprema',
      one: '1 spremanje',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'od $name';
  }

  @override
  String get stackSpoilers => 'Spoileri';

  @override
  String get stackEmptyEntries => 'Ovaj hrp je prazan';

  @override
  String get stackSave => 'Spremi hrpu';

  @override
  String get stackUnsave => 'Ukloni iz spremljenog';

  @override
  String get stackSavedToast => 'Spremljeno u vaše hrpe';

  @override
  String get stackRemovedToast => 'Uklonjeno iz vaših spremljenih nizova';

  @override
  String userStacks(String name) {
    return 'Nizovi od $name';
  }

  @override
  String get newsTitle => 'Vijesti';

  @override
  String get newsEmpty => 'Trenutno nema vijesti';

  @override
  String get newsCouldntLoad => 'Nije moguće učitati vijesti';

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
  String get followCoverMediaOnly => 'Samo za medije';

  @override
  String get followCoverMediaOnlyDesc =>
      'Pratite samo naslovnicu na stranicama medija, svugdje drugdje zadržava normalne boje';

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
  String get proxyHost => 'Domaćin';

  @override
  String get proxyPort => 'Luka';

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
  String get imageTitlePage => 'Stranica';

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
  String get supportDeveloper => 'Podržite programera';

  @override
  String get buyMeCoffee => 'Časti me kavom';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID kopiran';

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
  String get onboardingLanguageBody =>
      'Odaberite jezik na kojem se prikazuje Dartotsu. Možete ga promijeniti kasnije u Postavkama.';

  @override
  String get onboardingPaletteTitle => 'Prilagodi po svom';

  @override
  String get onboardingPaletteBody =>
      'Odaberi paletu. Svi naglasci, od kartica do playera, slijede je.';

  @override
  String get themeModeAuto => 'Automatski';

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
    return 'Poglavlje $n';
  }

  @override
  String get calendarExpected => 'Očekivano';

  @override
  String get castReceiverFailed => 'Chromecast nije pokrenuo svoj player';

  @override
  String get castPlaybackFailed =>
      'Uređaj nije mogao reproducirati ovaj stream';

  @override
  String get shortcutNothingToContinue => 'Još ništa za nastavak';

  @override
  String shortcutNoCalendar(String service) {
    return '$service nema kalendar';
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
  String get discordWatching => 'Gledanje';

  @override
  String get discordPlaying => 'Igranje';

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
  String get comickLoginFailed => 'Prijava na Comick nije uspjela';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'U trendu';

  @override
  String get anticipated => 'Predviđeno';

  @override
  String get watchlist => 'Popis za gledanje';

  @override
  String get recommendedShows => 'Preporučene emisije';

  @override
  String get recommendedMovies => 'Preporučeni filmovi';

  @override
  String get boxOffice => 'Blagajna';

  @override
  String get popularMovies => 'Popularni filmovi';

  @override
  String get popularShows => 'Popularne emisije';

  @override
  String get anticipatedMovies => 'Očekivani filmovi';

  @override
  String get anticipatedShows => 'Predviđene emisije';

  @override
  String get trendingShows => 'Emisije u trendu';

  @override
  String get mostWatchedThisWeek => 'Najgledaniji ovaj tjedan';

  @override
  String get sortMostViewed => 'Najgledaniji';

  @override
  String get sortMostFollowed => 'Većina ih je slijedila';

  @override
  String get sortLatestUpdates => 'Najnovija ažuriranja';

  @override
  String get translationStatusLabel => 'Prijevod';

  @override
  String get weeklySchedule => 'Tjedni raspored';

  @override
  String get mostFollowed => 'Najpraćeniji';

  @override
  String get latestUpdates => 'Najnovija ažuriranja';

  @override
  String get trendingAnime => 'Anime u trendu';

  @override
  String get topRatedAnime => 'Najbolje ocijenjeni anime';

  @override
  String get mostFollowedAnime => 'Najpraćeniji anime';

  @override
  String get comickProfile => 'Komični profil';

  @override
  String get refreshFromComick => 'Osvježi iz Comicka';

  @override
  String get mangaBakaProfile => 'MangaBaka profil';

  @override
  String get refreshFromMangaBaka => 'Osvježi s MangaBake';

  @override
  String get mangaUpdatesLoginTitle => 'Prijavite se na MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profil';

  @override
  String get mangaUpdatesAnimeStart => 'Počinje adaptacija animea';

  @override
  String get mangaUpdatesAnimeEnd => 'Završena adaptacija animea';

  @override
  String get refreshFromMangaUpdates => 'Osvježi iz MangaUpdates';

  @override
  String get usernameOnly => 'Korisničko ime';

  @override
  String get releases => 'Izdanja';

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
  String get hideNsfwSourcesDesc =>
      'Sakrij izvore s oznakom 18+ iz feedova i birača izvora. Ostaju instalirani.';

  @override
  String get hideNsfwDesc =>
      'Drži naslove za odrasle izvan feedova i pretrage, a svoje unose za odrasle prikaži pod Skriveni mediji.';

  @override
  String get kitsuAccountOptions => 'Opcije Kitsu računa';

  @override
  String get mangaBakaAccountOptions => 'Opcije MangaBaka računa';

  @override
  String get comickAccountOptions => 'Comick opcije računa';

  @override
  String get comickClientId => 'Comick ID klijenta';

  @override
  String get comickClientIdDesc =>
      'Prilagođeni ID klijenta registriran na comick.dev';

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
  String get traktReadOnly => 'Trakt je dobio pristup samo za čitanje';

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
  String get followsMutual => 'Uzajamno';

  @override
  String get followsNotMutual => 'Ne obostrano';

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
  String get voiceActors => 'Glasovni glumci';

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
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Nastavak';

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
  String get traktProfile => 'Trakt profil';

  @override
  String get refreshFromSimkl => 'Osvježi sa Simkla';

  @override
  String get refreshFromTrakt => 'Osvježite s Trakta';

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
  String get traktAttribution =>
      'Podatke i ilustracije ustupio Trakt. Pogled na Trakt';

  @override
  String get listsLiked => 'Sviđa mi se';

  @override
  String get listsYours => 'Vaš';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP član';

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
  String get simklMoviesOnly => 'Samo filmovi i serije';

  @override
  String get simklMoviesOnlyDesc =>
      'Zamjenjuje karticu Anime: prvo filmovi, zatim emisije s nekoliko redaka animea';

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
  String get trailerQuality => 'Kvaliteta prikolice';

  @override
  String get titleCopied => 'Naslov kopiran';

  @override
  String get linkCopied => 'Poveznica kopirana';

  @override
  String get watchTrailer => 'Pogledaj trailer';

  @override
  String get copyTitle => 'Kopiraj naslov';

  @override
  String get detailStale =>
      'AniList nije dostupan. Ovo su spremljene informacije i mogu biti zastarjele.';

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
  String get allCustomLists => 'Sve prilagođene liste';

  @override
  String get simklTitleLanguage => 'Jezik naslova animea';

  @override
  String get titleLanguageEnglish => 'engleski';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'U trendu';

  @override
  String get simklListsMostLiked => 'Najviše se sviđao';

  @override
  String get simklListsMostFollowed => 'Većina ih je slijedila';

  @override
  String get simklListsOfficial => 'Službenik';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count naslova',
      one: '1 naslov',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Ljudi';

  @override
  String get mostComments => 'Većina komentara';

  @override
  String get alphabetical => 'Abecedno';

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
  String get notInList => 'Nije na popisu';

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
  String get animePlanetRank => 'rang';

  @override
  String get animePlanetMagazine => 'Časopis';

  @override
  String get animePlanetRefreshLists => 'Osvježite svoje popise';

  @override
  String get animePlanetRefreshListsDesc =>
      'Ponovno pročitajte svoje popise Anime-Planeta';

  @override
  String get animePlanetLocalNote =>
      'Prijavite se da biste spremili promjene na svom Anime-Planet računu. Do tada ostaju na ovom uređaju';

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
  String get firstTab => 'Prva kartica';

  @override
  String get firstTabDesc =>
      'Koja proširenja prikazuje prva kartica. Ovdje odaberite mangu i roman na kartici za čitanje da biste ispustili anime s trake';

  @override
  String get novelExtensions => 'Proširenja romana';

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
  String get year => 'godine';

  @override
  String get filterAny => 'Bilo koje';

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
  String get unfinished => 'Nedovršeno';

  @override
  String get planned => 'Planirano';

  @override
  String get trailers => 'Traileri';

  @override
  String get ratings => 'Ocjene';

  @override
  String get originalTitle => 'Izvornik';

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
  String get died => 'umro';

  @override
  String get birthplace => 'Mjesto rođenja';

  @override
  String get department => 'Odjel';

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
  String get moviesWatched => 'Gledani filmovi';

  @override
  String get showsWatched => 'Emisije Gledane';

  @override
  String get moviesCollected => 'Prikupljeni filmovi';

  @override
  String get showsCollected => 'Prikupljene emisije';

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
  String get cardPresetPoster => 'Plakat';

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
  String get sortAz => 'A–Z';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return 'Dodati ovo spremište?\n\n$url\n\nDodajte spremišta samo iz izvora kojima vjerujete.';
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
  String get feed => 'hraniti se';

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
  String updatePluginTitle(String name) {
    return 'Ažuriraj $name';
  }

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
  String syncServiceOn(String name) {
    return 'Sinkronizacija s $name';
  }

  @override
  String get syncDelete => 'Izbrišite ono što glavni servis nema';

  @override
  String get syncDeleteDesc =>
      'Uklonite unose iz ostalih usluga koje nisu na glavnom popisu. Uklanjaju se samo unosi koji se mogu podudarati s naslovom, tako da stvari poput Simkl filmova i serija ostaju';

  @override
  String get syncDeleteTitle => 'Izbrisati unose?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count unosa',
      one: '1 unos',
    );
    return '$_temp0 koji nisu na vašem glavnom popisu bit će izbrisani iz ostalih usluga. Ovo se ne može poništiti.';
  }

  @override
  String get syncDeleteAction => 'Izbriši';

  @override
  String get syncToDelete => 'Za brisanje';

  @override
  String get syncDeletedNote => 'Bit će izbrisano';

  @override
  String syncWillRemove(int count, String name) {
    return '$count bit će izbrisan iz $name';
  }

  @override
  String get syncOnlyForward => 'Zadrži veći napredak';

  @override
  String get syncOnlyForwardDesc =>
      'Ne smanjuj napredak servisa koji je već ispred';

  @override
  String get animePlanetWontWatch => 'Neću gledati';

  @override
  String get animePlanetWontRead => 'Neće čitati';

  @override
  String get animePlanetAlreadyOnList => 'Već na ovom popisu';

  @override
  String get animePlanetNewList => 'Novi naziv popisa';

  @override
  String get syncPrivate => 'Privatni unosi';

  @override
  String get syncPrivateDesc =>
      'Što učiniti s unosima koje držite privatnima. Usluga s privatnom opcijom ih čini privatnima; drugi bi ih javno pokazali';

  @override
  String get syncPrivateModeAsk => 'Pitajte';

  @override
  String get syncPrivateModeSync => 'Sinkronizirajte ih';

  @override
  String get syncPrivateModeSkip => 'Preskoči ih';

  @override
  String get syncPrivateTitle => 'Privatni unosi';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count unosi su privatni',
      one: '1 unos je privatan',
    );
    return '$_temp0. Usluge s privatnom opcijom (AniList, Kitsu, MangaBaka) dobit će ih kao privatne; ostale usluge nemaju privatnu opciju i pokazale bi ih javno. Sinkronizirati ih? Vaš odgovor se pamti; promijenite ga pod opcijama sinkronizacije.';
  }

  @override
  String get syncPrivateInclude => 'Sinkronizirajte ih';

  @override
  String get syncPrivateSkip => 'Preskoči ih';

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
  String syncRemoved(String services) {
    return 'Uklonjeno iz $services';
  }

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
  String get groupsRoleAdmin => 'Administrator';

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
  String get sourceTags => 'oznake';

  @override
  String get sourceTagsHint =>
      'Označite čemu služi ovaj izvor. Naslov prvo navodi izvore označene za njega, a zatim neoznačene. Izvori stariji od 18 prikazuju se samo za naslove za odrasle.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filmovi i serije';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Skriveno oznakama';

  @override
  String get watchOptions => 'Opcije';

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
  String get watchFiller => 'Punilo';

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
  String get watchFailTimeout => 'Provjera nije završila na vrijeme';

  @override
  String get watchFailBlocked =>
      'Stranica je blokirala ovaj uređaj (pristup odbijen). Ček neće pomoći';

  @override
  String get watchFailTurnstile =>
      'Ova provjera zahtijeva dodir koji pozadinski rješavač ne može učiniti';

  @override
  String get watchFailLoad =>
      'Stranica se nije učitala. Provjerite vezu i adresu stranice';

  @override
  String get watchFailRejected =>
      'Stranica je odbila odobrenje koje je upravo dala. Pokušajte ponovno ili izbrišite kolačiće';

  @override
  String get watchFailDismissed =>
      'Provjera je zatvorena prije nego što je završila';

  @override
  String get watchFailCooldown =>
      'Maloprije ste zatvorili ček. Pritisnite Riješi za ponovni pokušaj';

  @override
  String get watchFailQuiet => 'Ček vas treba, a aplikacija je radila sama';

  @override
  String get watchFailWebView =>
      'Pozadinski web-prikaz nije se mogao pokrenuti';

  @override
  String get watchFailUnavailable => 'Nema zaslona za prikaz provjere';

  @override
  String get watchStatusReady => 'spreman';

  @override
  String get watchStatusChallenge => 'Potrebna Cloudflare provjera';

  @override
  String get watchStatusBlocked => 'Blokirano od strane stranice';

  @override
  String get watchStatusOffline => 'Ne mogu doći do stranice';

  @override
  String get watchStatusUntested => 'Još nije ispitano';

  @override
  String get watchStatusTesting => 'Testiranje veze…';

  @override
  String get watchStatusSolving => 'Prolaz Cloudflare provjere...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare provjera prošla u pozadini ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare provjera je prošla';

  @override
  String watchClearanceIssued(String time) {
    return 'zaradio $time';
  }

  @override
  String get watchClearanceStale =>
      'Odobrenje je zarađeno s drugim korisničkim agentom, pa se ne šalje. Testirajte vezu da dobijete novu';

  @override
  String get watchSectionConnection => 'Veza';

  @override
  String get watchSectionSession => 'Sjednica';

  @override
  String get watchSectionTools => 'Alati';

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
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Brzina reprodukcije';

  @override
  String get localSource => 'Lokalne datoteke';

  @override
  String get localMissing =>
      'Ova datoteka ili mapa više nije u vašoj lokalnoj mapi';

  @override
  String get playerStickyStage => 'Ljepljivi video';

  @override
  String get playerStickyStageDesc =>
      'Držite videozapis fiksiranim na vrhu dok se pomičete po epizodama i komentarima ispod';

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
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

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
  String get playerDisableSkips => 'Onemogući preskakanje';

  @override
  String get playerDisableSkipsDesc =>
      'Bez AniSkipa ili vremenskih oznaka streama, oznaka poglavlja ili preskakanja podnesaka u playeru';

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
  String get playerSubtitleOutlineWidth => 'Širina obrisa podnaslova';

  @override
  String get playerSubtitlePreview => 'Pregled podnaslova';

  @override
  String get playerSubtitlePreviewText => 'Tekst pretpregleda podnaslova';

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
  String get playerPictureSave => 'Sačuvajte ovaj okvir';

  @override
  String get playerPictureOriginal => 'Izvornik';

  @override
  String get playerPictureOriginalDesc =>
      'Okvir kakav ima video, bez shadera i boja';

  @override
  String get playerPictureProcessed => 'S shaderima i bojama';

  @override
  String get playerPictureProcessedDesc => 'Okvir kako ga sada vidite';

  @override
  String get playerPictureSaved => 'Okvir spremljen';

  @override
  String get playerPictureSaveFailed => 'Nije moguće spremiti okvir';

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
  String get playerShadersOriginal => 'Izvornik';

  @override
  String get playerShadersPreviewFailed => 'Ne mogu uhvatiti kadar za pregled';

  @override
  String get playerShadersSoftware =>
      'Shaderi trebaju hardversko renderiranje, a player koristi softversko renderiranje. Isključite prikazivanje softvera u postavkama Playera.';

  @override
  String get playerSoftwareRender => 'Softversko prikazivanje';

  @override
  String get playerSoftwareRenderDesc =>
      'Samo za crni video. Shaderi ne rade s njim. Primjenjuje se sljedeći put kada se player otvori';

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
  String get playerDecoderAuto => 'Automatski';

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
  String get playerToneMapping => 'Tonsko preslikavanje';

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
  String get streamGroupSub => 'sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Sirovo';

  @override
  String get streamGroupOther => 'ostalo';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tokovi',
      one: '1 tok',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Streamovi';

  @override
  String get playerStreamFailedNext =>
      'Taj se stream ne može reproducirati, pokušavam sljedeći';

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
  String get readerOpenBook => 'Otvorite knjigu';

  @override
  String get readerOpenBookDesc =>
      'Čitajte epub (čitač romana) ili PDF (čitač manga) iz svojih datoteka';

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
  String get readerModeAuto => 'Automatski (po vrsti serije)';

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
  String get readerFilterQuality => 'Kvaliteta filtra slike';

  @override
  String get readerFilterQualityNone => 'Ništa (najbliži susjed)';

  @override
  String get readerFilterQualityLow => 'Nisko (bilinearno)';

  @override
  String get readerFilterQualityMedium => 'Srednje (trilinearno)';

  @override
  String get readerFilterQualityHigh => 'Visoko (bikubično)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Hrđa visoke kvalitete)';

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
  String get readerLongPressSave => 'Zadržite stranicu da je spremite';

  @override
  String get readerLongPressSaveDesc =>
      'Dugo pritisnite stranicu za otvaranje opcija spremanja, dijeljenja i kopiranja';

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
  String get readerResetConfirm => 'Vratiti sve postavke čitača na zadane?';

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
    return 'Spremati svoj napredak na $name na svoj popis na ovom uređaju dok gledate?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Spremiti svoj napredak na $name na svoj popis na ovom uređaju kada završite poglavlje?';
  }

  @override
  String get downloadClearQueue => 'Očisti red čekanja';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Otkazati sva $count preuzimanja u redu čekanja? Briše se ono što je već preuzeto.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count odabrano';
  }

  @override
  String get downloadSelectAll => 'Odaberite sve';

  @override
  String get downloadDeleteSelected => 'Izbriši odabrano';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Izbrisati preuzimanja $count? Njihove se datoteke uklanjaju s uređaja.';
  }

  @override
  String get castTitle => 'Emitiraj na uređaj';

  @override
  String get castSearching => 'Traženje uređaja na vašoj mreži…';

  @override
  String get castNoDevices =>
      'Nema pronađenih uređaja. Provjerite jesu li TV ili Chromecast na istoj Wi-Fi mreži, a zatim ponovno pretražite.';

  @override
  String get castRefresh => 'Traži ponovo';

  @override
  String get castFailed => 'Nije moguće započeti emitiranje';

  @override
  String get castStop => 'Zaustavi emitiranje';

  @override
  String castNowCasting(String name) {
    return 'Emitiranje na $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku ne može prijaviti niti promijeniti položaj';

  @override
  String get castControls => 'Kontrole';

  @override
  String get castVolume => 'glasnoća TV-a';

  @override
  String castSkipPart(String name) {
    return 'Preskoči $name';
  }

  @override
  String get trackProgressRememberSeries => 'Zapamti za ovu seriju';

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
  String get dantotsuGroupPlayer => 'Igrač';

  @override
  String get dantotsuAnilist => 'AniList prijava';

  @override
  String get dantotsuMal => 'MyAnimeList prijava';

  @override
  String get dantotsuDiscord => 'Token za Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

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
  String togetherLinkConfirm(String room) {
    return 'Pridružite se sobi $room? Domaćin bira što će se igrati, a igrač se sam otvara kada počne gledati.';
  }

  @override
  String get togetherJoin => 'Pridruži se';

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
  String get togetherShareInvite => 'Podijeli pozivnicu';

  @override
  String togetherShareText(String link) {
    return 'Gledajte sa mnom na Dartotsu: $link';
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
  String get novelPaged => 'Okretanje stranica';

  @override
  String get novelPagedDesc =>
      'Podijelite poglavlje na stranice i prijeđite prstom ili dodirnite da biste ih okrenuli umjesto listanja';

  @override
  String novelPageOf(int current, int total) {
    return 'Stranica $current od $total';
  }

  @override
  String get novelPaginating => 'Postavljanje stranica';

  @override
  String get novelTools => 'Sadržaj, pretraživanje i isticanje';

  @override
  String get novelContents => 'Sadržaj';

  @override
  String get novelContentsEmpty => 'Ovo poglavlje nema naslova';

  @override
  String get novelSearch => 'Traži';

  @override
  String get novelSearchHint => 'Potražite u ovom poglavlju';

  @override
  String get novelSearchNone => 'Nema podudaranja';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odgovara',
      one: '1 utakmica',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Izdvajamo';

  @override
  String get novelHighlightsEmpty =>
      'Odaberite neki tekst i dodirnite Označi da biste ga zadržali ovdje';

  @override
  String get novelHighlight => 'Istaknuti';

  @override
  String get novelHighlightNote => 'Napomena';

  @override
  String get novelHighlightNoteHint => 'Dodajte bilješku';

  @override
  String get novelHighlightRemove => 'Ukloni isticanje';

  @override
  String get novelHighlightFailed =>
      'Nije moguće povezati taj odabir s tekstom';

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
  String get playerSkipSubmit => 'Pošaljite vremena preskakanja';

  @override
  String get playerSkipSubmitDesc =>
      'Označite gdje početak, kraj ili rezime počinje i završava u ovoj epizodi i podijelite to s AniSkipom kako bi svi dobili gumb za preskakanje.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'Kraj';

  @override
  String get playerSkipUseNow => 'Koristi trenutnu poziciju';

  @override
  String get playerSkipSend => 'Pošaljite na AniSkip';

  @override
  String get playerSkipSent => 'Vrijeme preskakanja poslano AniSkipu, hvala';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip je odbio vremena preskakanja: $error';
  }

  @override
  String get playerUnsupported =>
      'Video player ne može raditi na ovom uređaju (njegova Android verzija je prestara za biblioteku uključenog playera). Dodirnite za kopiranje detalja.';

  @override
  String get playerSkipNoMal =>
      'Ovaj naslov nema MyAnimeList ID, AniSkip ga ne može prihvatiti';

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
  String get playerPipPlay => 'igrati';

  @override
  String get playerPipPause => 'Pauza';

  @override
  String get playerPipBack => 'Premotaj unatrag';

  @override
  String get playerPipForward => 'Naprijed';

  @override
  String get playerPipRestore => 'Natrag na player';

  @override
  String get playerPipActive => 'Igranje u malom prozoru';

  @override
  String get listDateAdded => 'Dodano na popis';

  @override
  String get listDateLastWatched => 'Zadnje gledano';

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
  String get fontSample => 'Brza smeđa lisica preskače lijenog psa';

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
  String get widgetContinue => 'nastavi';

  @override
  String get widgetReleases => 'Izlazi uskoro';

  @override
  String get widgetMore => 'Također u tijeku';

  @override
  String get widgetNothing => 'Još ništa za nastavak';

  @override
  String get downloadStorageTitle => 'Skladištenje';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count preuzimanja',
      one: '1 preuzimanje',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size već gledao ili čitao';
  }

  @override
  String get downloadFreeUp => 'Oslobodite prostor';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pogledanih preuzimanja',
      one: '1 pogledano preuzimanje',
    );
    return 'Izbrisati $_temp0 a besplatno $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Oslobođen $size';
  }

  @override
  String get downloadDeleteWatched => 'Izbriši gledano';

  @override
  String get downloadDeleteAll => 'Izbriši sve';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Izbrisati svako preuzimanje $title?';
  }

  @override
  String get downloadNothingWatched => 'Ništa što ste završili nije preuzeto';

  @override
  String get downloadStorageEmpty => 'Nijedno preuzimanje ne zauzima prostor';

  @override
  String get downloadsOpenDesc =>
      'Pogledaj red i sve spremljeno na ovom uređaju';

  @override
  String get downloadTitle => 'Preuzmi';

  @override
  String get downloadMetaOnly => 'Samo metapodaci';

  @override
  String get downloadMetaFailed => 'Nije moguće stvoriti mapu naslova';

  @override
  String downloadMetaSaved(String path) {
    return 'Spremljeno. Stavite svoje datoteke u $path';
  }

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
  String get downloadDashDrm => 'Ovaj stream je DRM zaštićen';

  @override
  String get downloadDashNoVideo => 'Manifest DASH nema videozapis';

  @override
  String get downloadWaitingConnection => 'Čekam vezu';

  @override
  String get downloadSubtitles => 'Titlovi';

  @override
  String get downloadDownloaded => 'Preuzeto';

  @override
  String get downloadOffline => 'Izvan mreže';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
  String get offlineHeader => 'Izvan mreže';

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
  String get offlineModeChip => 'Izvan mreže';

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
    return 'Bit ćete obaviješteni kada $source bude imao nešto novo';
  }

  @override
  String get sourceNotifyOff => 'Obavijesti o izdanju isključene';

  @override
  String get sourceNotifyNeedsSource => 'Prvo odaberite izvor s podudaranjem';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Sve ($count) je već vani, nema se što čekati';
  }

  @override
  String get sourceNotifyTooltipOn => 'Zaustavi obavijesti o izdanju';

  @override
  String get sourceNotifyTooltipOff => 'Obavijesti me o novim izdanjima';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Epizoda $number izlazi na $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Epizode $from–$to izlaze na $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Poglavlje $number izašlo je na $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Poglavlja $from–$to izašla su na $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count naslovi imaju nešto novo';
  }

  @override
  String get navSources => 'Izvori';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Ovaj izvor pripada $manager, koji nije aktivna usluga proširenja';
  }

  @override
  String get sourceAlertsHeader => 'Obavijesti o izdanju';

  @override
  String get sourceAlertsSwitch => 'Provjerite pretplaćene naslove';

  @override
  String get sourceAlertsSwitchDesc =>
      'Svaki put kad se aplikacija otvori, za naslove na koje ste uključili zvono';

  @override
  String get sourceSkipUnstarted => 'Preskočite naslove koje niste započeli';

  @override
  String get sourceSkipUnstartedDesc =>
      'Ništa još nije gledano ni čitano, ali epizode već postoje';

  @override
  String get sourceSkipUnseen => 'Preskočite dok imate negledane epizode';

  @override
  String get sourceSkipUnseenDesc =>
      'Još uvijek imate objavljenih epizoda koje morate nadoknaditi';

  @override
  String get sourceManage => 'Pretplate';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count naslova',
      one: '1 naslov',
      zero: 'Bez naslova',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Provjerite sada';

  @override
  String get sourceCheckNowDesc => 'Ignorira raspored i pravila preskakanja';

  @override
  String get sourceChecking => 'Provjera...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count naslovi imaju nešto novo',
      one: '1 naslov ima nešto novo',
      zero: 'Ništa novo',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Još nema pretplata';

  @override
  String get sourceEmptyMessage =>
      'Dodirnite zvono iznad epizoda naslova da biste bili obaviješteni o novim epizodama';

  @override
  String get sourceAll => 'sve';

  @override
  String sourceInactive(String manager) {
    return 'Neaktivno: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source nije instaliran u ovoj usluzi proširenja';
  }

  @override
  String get sourceUnreachable => 'Izvor ne odgovara';

  @override
  String get sourceFinished => 'Gotovo';

  @override
  String get sourceSkippedCompleted => 'Preskočeno: dovršeno';

  @override
  String get sourceSkippedUnstarted => 'Preskočeno: nije započeto';

  @override
  String get sourceSkippedUnseen => 'Preskočeno: negledane epizode';

  @override
  String get sourceWaiting => 'Čekam sljedeće izdanje';

  @override
  String sourceNextCheck(String when) {
    return 'Sljedeća provjera $when';
  }

  @override
  String get sourceSoon => 'uskoro';

  @override
  String sourceInHours(int count) {
    return 'u ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'u ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Najnovije: $number';
  }

  @override
  String get sourceMute => 'Isključi zvuk';

  @override
  String get sourceUnmute => 'Uključi zvuk';

  @override
  String get sourceMuted => 'Isključeno';

  @override
  String get sourceUnsubscribe => 'Odjavi pretplatu';

  @override
  String get sourcePickAnother => 'Odaberite drugi izvor';

  @override
  String get sourceOpenExtensions => 'Otvorena proširenja';

  @override
  String get sourceNoticesEmpty => 'Još nema obavijesti o izdanju';

  @override
  String get sourceNoticesEmptyMessage =>
      'Ovdje se prikazuju nove epizode i poglavlja iz naslova na koje ste se pretplatili';

  @override
  String get sourceOpenTitle => 'Otvoren naslov';

  @override
  String get extensionsLoading => 'Učitavanje proširenja...';

  @override
  String get updateWhatsNew => 'Što je novo';

  @override
  String get updateLater => 'kasnije';

  @override
  String get updateSkipVersion => 'Preskoči ovu verziju';

  @override
  String get updatePreparing => 'Priprema…';

  @override
  String get updateDownloading => 'Preuzimanje';

  @override
  String get updateInstalling => 'Instaliranje...';

  @override
  String updateSizeOf(String done, String total) {
    return '$done od $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Objavljeno $date';
  }

  @override
  String get updateNoAsset => 'Ovo izdanje nema preuzimanje za vaš uređaj';

  @override
  String get updateUpToDate => 'Vi ste na najnovijoj verziji';

  @override
  String get updateIosHint =>
      'Verzije iOS-a nisu u App Storeu. Uzmite .ipa sa stranice izdanja i učitajte ga s AltStore ili SideStore';

  @override
  String get updateOpenedBrowser => 'Provjerite svoj preglednik';

  @override
  String get updateTryAgain => 'Pokušajte ponovno';

  @override
  String get settingsNotifications => 'Obavijesti';

  @override
  String get settingsNotificationsDesc =>
      'Upozorenja za vaše popise, nove epizode i poglavlja i odgovore na komentare';

  @override
  String get settingsAboutUpdates => 'O i ažuriranja';

  @override
  String get settingsAboutUpdatesDesc =>
      'Ažuriranja aplikacije, verzija, zapisnici, veze i podrška';

  @override
  String get settingsGroupAccount => 'Vaš račun';

  @override
  String get settingsGroupContent => 'Sadržaj';

  @override
  String get settingsGroupApp => 'aplikacija';

  @override
  String get settingsAnimeDesc =>
      'Player, titlovi, preskakanje, popis epizoda i detalji epizode';

  @override
  String get settingsMangaDesc =>
      'Način čitanja, kontrole, prikaz i praćenje poglavlja';

  @override
  String get settingsNovelDesc =>
      'Tekst, okretanje stranica, prijevod i čitanje naglas';

  @override
  String get settingsLocalPlay => 'Lokalna igra';

  @override
  String get settingsLocalPlayDesc =>
      'Reproducirajte datoteke, mape, mrežne tokove i torrente ili otvorite knjigu';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'knjige';

  @override
  String get settingsWatchSections => 'Sekcije';

  @override
  String get settingsSectionLists => 'Popisi epizoda i poglavlja';

  @override
  String get settingsSectionProgress => 'Praćenje napretka';

  @override
  String get updateChannelDesc =>
      'Stabilno je testirano izdanje. Predizdanje i alfa dobivaju nove značajke ranije, ali se mogu pokvariti';

  @override
  String get checkNowDesc => 'Odmah potražite noviju verziju';

  @override
  String get generalSectionBasics => 'Jezik i ponašanje';

  @override
  String get generalSectionSecurity => 'Sigurnost';

  @override
  String get generalSectionPrivacy => 'Privatnost';

  @override
  String notificationsOtherService(String service) {
    return 'Prijeđi na $service da otvoriš ovo';
  }

  @override
  String get secPlayerPlayback =>
      'Zadana brzina, automatska reprodukcija, prilagodba videozapisa, orijentacija i slika u slici';

  @override
  String get secPlayerSkip =>
      'Automatski preskočite uvode, završetke i sažetke';

  @override
  String get secPlayerControls =>
      'Pokreti prijelaza, držanja i dodirivanja i traženje pregleda';

  @override
  String get secPlayerSubtitles => 'Jezici, izgled i renderiranje titlova';

  @override
  String get secPlayerShaders => 'Povećanje veličine animea i vlastiti shaderi';

  @override
  String get secPlayerEngine =>
      'Dekoder, video i audio izlaz, međuspremnik. Promijenite ih samo ako ima problema s reprodukcijom';

  @override
  String get secPlayerMpv => 'mpv.conf, skripte i napredno podešavanje';

  @override
  String get secAnimeList => 'Dodatne epizode i negledane sličice';

  @override
  String get secProgress =>
      'Kada se napredak gledanja ili čitanja sprema na vaš popis';

  @override
  String get secAnimeDetails =>
      'Odakle dolaze naslovi epizoda, sličice i sažeci';

  @override
  String get secReaderReading =>
      'Način čitanja, okretanje stranica, zumiranje i sljedeće poglavlje';

  @override
  String get secReaderControls =>
      'Dodirnite zone, tipke za glasnoću i automatsko pomicanje';

  @override
  String get secReaderDisplay =>
      'Pozadina, svjetlina, cijeli zaslon i broj stranice';

  @override
  String get secNovelText =>
      'Font, veličina, razmak, margine i okretanje stranica';

  @override
  String get secNovelTranslate => 'Prevodite poglavlja dok čitate';

  @override
  String get secNovelSpeech => 'Glas, brzina i visina za čitanje naglas';

  @override
  String get secNotifyAbout =>
      'Odaberite koje vrste aktivnosti šalju upozorenje';

  @override
  String get layoutTitle => 'Izgled';

  @override
  String get layoutDesc => 'Odaberite, premjestite i sakrijte gumbe na trakama';

  @override
  String get layoutHint =>
      'Povucite gumb da biste ga pomaknuli (prvo držite na dodirnom zaslonu). Dodirnite jedan da biste ga izrezali, premjestili ili sakrili';

  @override
  String layoutDropInto(String zone) {
    return 'Navratiti: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Premještanje $name. Pritisnite gumb za lijepljenje da biste ga postavili';
  }

  @override
  String get layoutTitleFixed => 'Naslov';

  @override
  String get layoutZoneTopStart => 'Gornja traka, prije naslova';

  @override
  String get layoutZoneTopEnd => 'Gornja traka, nakon naslova';

  @override
  String get layoutZoneBottomStart => 'Donja traka, lijevo';

  @override
  String get layoutZoneBottomEnd => 'Donja traka, desno';

  @override
  String get layoutZoneSecondRow => 'Skriveno: drugi red u normalnom prikazu';

  @override
  String get layoutZoneOverflow => 'Skriveno: u izborniku više';

  @override
  String get layoutEmptyZone => 'Ovdje ispustite gumbe';

  @override
  String get layoutCut => 'rezati';

  @override
  String get layoutPaste => 'Zalijepite ovdje';

  @override
  String get layoutHide => 'Sakrij se';

  @override
  String layoutMoveTo(String zone) {
    return 'Premjesti na $zone';
  }

  @override
  String get layoutReset => 'Vrati na zadano';

  @override
  String get layoutMore => 'Više';

  @override
  String get sourceWhyAction => 'Zašto nema upozorenja?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Zadnja provjera';

  @override
  String get sourceWhyNever => 'Ne još';

  @override
  String get sourceWhyNextCheck => 'Sljedeća provjera';

  @override
  String get sourceWhyNewest => 'Najnoviji na izvoru';

  @override
  String get sourceWhyProgress => 'Vaš napredak';

  @override
  String get sourceWhyListStatus => 'Status popisa';

  @override
  String get sourceWhyFailures => 'Neuspjele provjere u nizu';

  @override
  String get sourceWhyLastRelease => 'Zadnje viđeno novo izdanje';

  @override
  String get sourceWhyVerdictNew =>
      'Novo izdanje pojavljuje se ovdje čim ga izvor navede i pokrene se sljedeća provjera.';

  @override
  String get sourceWhyVerdictAhead =>
      'Izvor je već ispred vašeg napretka, pa vam je jednom rečeno o tome. Pročitajte ga ili ga pratite kako biste dobili sljedeće upozorenje.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Ovaj naslov je preskočen prema gornjim pravilima. Promijenite ih u postavkama obavijesti ili upotrijebite Provjeri sada da biste je ipak pokrenuli.';

  @override
  String get sourceWhyVerdictBroken =>
      'Izvor nije dostupan ili je uklonjen, pa se ništa ne provjerava.';

  @override
  String get sourceWhyVerdictMuted => 'Ova pretplata je isključena.';

  @override
  String get externalPlayerTitle => 'Otvori stream negdje drugdje';

  @override
  String get externalCopyUrl => 'Kopiraj vezu streama';

  @override
  String get externalCopied => 'Veza za stream je kopirana';

  @override
  String get externalChooser => 'Otvorite u drugoj aplikaciji';

  @override
  String get externalVlc => 'Otvorite u VLC-u';

  @override
  String get externalMpv => 'Otvori u mpv';

  @override
  String get externalWebVideoCast => 'Web Video Cast';

  @override
  String get castViaAppHint => 'Pošaljite stream u aplikaciju Web Video Cast';

  @override
  String get externalFailed =>
      'Nije moguće otvoriti stream. Je li player instaliran?';

  @override
  String get addonInstalled => 'instalirano';

  @override
  String get loadFailedActivity => 'Nije moguće učitati aktivnost';

  @override
  String get loadFailedFavourites =>
      'Nije moguće učitati favorite. Pokušaj ponovo';

  @override
  String get loadFailedStats => 'Nije moguće učitati statistiku';

  @override
  String get loadFailedReplies => 'Nije moguće učitati odgovore';

  @override
  String get cantBeUndone => 'Ovo se ne može poništiti.';

  @override
  String get searchTags => 'Oznake za pretraživanje';

  @override
  String get spoilerTapToView => 'Spojler, dodirnite za prikaz';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'netko';

  @override
  String get notificationATitle => 'naslov';

  @override
  String get notificationAddedDetail => 'Dodan je na AniList';

  @override
  String get updateNoReleases => 'Nema pronađenih izdanja';

  @override
  String get updateInvalidResponse => 'Nevažeći odgovor ažuriranja';

  @override
  String get commentsRateLimited => 'Stopa ograničena';

  @override
  String get commentsConnectFailed => 'Povezivanje nije uspjelo';

  @override
  String get dnsNoRecords => 'Nema vraćenih A zapisa';

  @override
  String get importTokenRejected => 'Token odbijen';

  @override
  String get developerRoleLead => 'Vodeći programer';

  @override
  String get developerRoleModerator => 'Moderator Discorda';

  @override
  String extensionManagerTitle(String type) {
    return '$type upravitelj';
  }

  @override
  String extensionsOfType(String type) {
    return '$type proširenja';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name postavke';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name ne pruža nikakve postavke.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Emitirana je epizoda $episode od $title';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Emitirana epizoda $episode';
  }

  @override
  String notificationAdded(String title) {
    return '$title je dodan u AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Poslužitelj ažuriranja nije mogao pronaći to izdanje: $message';
  }

  @override
  String get installStepJre => 'Java runtime';

  @override
  String get installStepCore => 'Izvršna jezgra';

  @override
  String installStepsProgress(int current, int total) {
    return 'Korak $current od $total';
  }

  @override
  String get stepWaiting => 'Čekanje';

  @override
  String get stepChecking => 'Provjera...';

  @override
  String get stepUpToDate => 'Ažurno';

  @override
  String stepUpToDateWith(String detail) {
    return 'Ažurirano · $detail';
  }

  @override
  String get stepWillInstall => 'Bit će instaliran';

  @override
  String get stepWillUpdate => 'Bit će ažuriran';

  @override
  String stepWillUpdateTo(String version) {
    return 'Ažurirat će se na $version';
  }

  @override
  String get stepInstalled => 'instalirano';

  @override
  String get stepNotNeeded => 'Nije potrebno ovdje';

  @override
  String get stepFailed => 'neuspješno';

  @override
  String stepFailedWith(String reason) {
    return 'Neuspješno: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Radi na Java runtimeu i zajedničkoj runtime jezgri. Prvo se instaliraju i ažuriraju ako su se promijenile.';

  @override
  String get installRuntimeNewer =>
      'Runtime na kojem radi ovaj upravitelj ima ažuriranje.';

  @override
  String get removeJvmTitle => 'Ukloniti Java runtime?';

  @override
  String get removeJvmMessage =>
      'Upravitelji proširenja za radnu površinu prestaju raditi dok se ponovno ne instaliraju. Ponovno se preuzima kada ga sljedeći put instalirate ili otvorite.';

  @override
  String get runtimePreparing => 'Priprema vremena izvođenja…';

  @override
  String get calendarAll => 'sve';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Otvori u pregledniku (Cloudflare provjera)';

  @override
  String get badgeBoardHint =>
      'Povucite značku u kut prve kartice ili povucite značku koja se već nalazi na njoj da je pomaknete. Bedževi mijenjaju mjesta, tako da se nijedan nikada ne preklapa. Dodirnite značku u nastavku da biste je uključili ili isključili.';

  @override
  String get statusAuto => 'Automatski';

  @override
  String get unreadCounter => 'Brojač nepročitanih';

  @override
  String get unreadCounterDesc =>
      'Pokažite koliko je epizoda ili poglavlja ostalo na plakatima';

  @override
  String get settingsShortcuts => 'Tipkovnički prečaci';

  @override
  String get settingsShortcutsDesc =>
      'Pogledajte, promijenite i isključite svaki ključ';

  @override
  String get shortcutGroupApp => 'aplikacija';

  @override
  String get shortcutGroupPlayer => 'Video player';

  @override
  String get shortcutGroupReader => 'Čitatelj';

  @override
  String get shortcutsEnableApp => 'Prečaci aplikacije';

  @override
  String get shortcutsEnablePlayer => 'Prečaci za player';

  @override
  String get shortcutsEnableReader => 'Prečaci čitača';

  @override
  String get shortcutsEnableDesc =>
      'Uključite ili isključite svaku tipku u ovoj grupi';

  @override
  String get shortcutNotSet => 'Nije postavljeno';

  @override
  String get shortcutAddKey => 'Dodajte ključ';

  @override
  String get shortcutResetOne => 'Vrati na zadano';

  @override
  String get shortcutClearKeys => 'Uklonite sve ključeve';

  @override
  String get shortcutResetAll => 'Resetiraj sve prečace';

  @override
  String get shortcutResetAllDesc => 'Vratite svaki ključ na zadano';

  @override
  String get shortcutPress => 'Pritisnite tipku ili kombinaciju koju želite';

  @override
  String get shortcutPressHint =>
      'Svaka kombinacija može pripadati samo jednoj akciji, tako da se jednom pomiče.';

  @override
  String get shortcutSeekPercent => 'Skok na dio videozapisa';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Idi natrag';

  @override
  String get shortcutAppFullscreen => 'Uključi/isključi cijeli zaslon';

  @override
  String get shortcutAppGlass => 'Uključi/isključi način rada stakla';

  @override
  String get shortcutAppMaterialYou => 'Uključi/isključi materijal ti';

  @override
  String get shortcutAppDark => 'Uključi/isključi tamni način rada';

  @override
  String get shortcutAppOled => 'Uključi OLED u crno';

  @override
  String get shortcutAppSearch => 'Otvorena pretraga';

  @override
  String get shortcutAppSettings => 'Otvori postavke';

  @override
  String get shortcutAppDownloads => 'Otvori preuzimanja';

  @override
  String get shortcutAppNotifications => 'Otvorene obavijesti';

  @override
  String get shortcutAppIncognito => 'Uključi/isključi anonimni način';

  @override
  String get shortcutAppShortcuts => 'Prikaži tipkovničke prečace';

  @override
  String get shortcutPlayerPlayPause => 'Pusti ili pauziraj';

  @override
  String get shortcutPlayerSeekForward => 'Traži naprijed';

  @override
  String get shortcutPlayerSeekBack => 'Traži natrag';

  @override
  String get shortcutPlayerSeekForwardLong => 'Pomicanje unaprijed 30 sekundi';

  @override
  String get shortcutPlayerSeekBackLong => 'Traži natrag 30 sekundi';

  @override
  String get shortcutPlayerFrameForward => 'Sljedeći okvir';

  @override
  String get shortcutPlayerFrameBack => 'Prethodni kadar';

  @override
  String get shortcutPlayerVolumeUp => 'Glasnoća';

  @override
  String get shortcutPlayerVolumeDown => 'Stišaj zvuk';

  @override
  String get shortcutPlayerMute => 'Isključi zvuk';

  @override
  String get shortcutPlayerFullscreen => 'Cijeli zaslon';

  @override
  String get shortcutPlayerNext => 'Sljedeća epizoda';

  @override
  String get shortcutPlayerPrevious => 'prethodna epizoda';

  @override
  String get shortcutPlayerSkip => 'Preskočite uvod ili kraj';

  @override
  String get shortcutPlayerPanel => 'Popis epizoda';

  @override
  String get shortcutPlayerSpeedUp => 'Brža reprodukcija';

  @override
  String get shortcutPlayerSpeedDown => 'Sporija reprodukcija';

  @override
  String get shortcutPlayerSpeedReset => 'Normalna brzina';

  @override
  String get shortcutPlayerSubtitleToggle => 'Uključeni ili isključeni titlovi';

  @override
  String get shortcutPlayerSubtitleCycle => 'Sljedeća pjesma titlova';

  @override
  String get shortcutPlayerAudioCycle => 'Sljedeći audio zapis';

  @override
  String get shortcutPlayerStreamCycle => 'Sljedeći stream';

  @override
  String get shortcutPlayerFit => 'Promjena prilagodbe videozapisa';

  @override
  String get shortcutReaderRight => 'Stranica desno';

  @override
  String get shortcutReaderLeft => 'Stranica lijevo';

  @override
  String get shortcutReaderNextPage => 'Sljedeća stranica';

  @override
  String get shortcutReaderPreviousPage => 'Prethodna stranica';

  @override
  String get shortcutReaderControls => 'Prikažite ili sakrijte kontrole';

  @override
  String get shortcutReaderNextChapter => 'Sljedeće poglavlje';

  @override
  String get shortcutReaderPreviousChapter => 'Prethodno poglavlje';

  @override
  String shortcutTaken(String action) {
    return 'Preuzeto sa $action';
  }

  @override
  String get incognitoTurnedOn => 'Anonimni način rada uključen';

  @override
  String get incognitoTurnedOff => 'Anonimni način rada isključen';

  @override
  String get onHoldAnime => 'Anime na čekanju';

  @override
  String get onHoldManga => 'Manga na čekanju';

  @override
  String get droppedAnime => 'Odbačeni anime';

  @override
  String get droppedManga => 'Ispuštena manga';

  @override
  String get generalSectionDesktop => 'Radna površina';

  @override
  String get closeAction => 'Kad je prozor zatvoren';

  @override
  String get closeActionQuit => 'Zatvorite aplikaciju';

  @override
  String get closeActionWhenBusy => 'Nastavite trčati u traci dok nešto radi';

  @override
  String get closeActionAlways => 'Uvijek nastavite trčati u ladici';

  @override
  String get closeActionNoTray =>
      'Sistemska traka nije dostupna ovdje, pa se aplikacija zatvara kada se zatvori';

  @override
  String get gamepadNav => 'Gamepad navigacija';

  @override
  String get gamepadNavDesc =>
      'Krećite se aplikacijom i upravljajte igračem pomoću kontrolera igre';

  @override
  String get trayShow => 'Prikaži Dartotsu';

  @override
  String get trayQuit => 'Odustati';

  @override
  String get trayIdle => 'Ništa ne radi';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preuzimanje $count stavki',
      one: 'Preuzimanje $count stavke',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Sinkronizacija vaših popisa';

  @override
  String get trayUpdating => 'Ažuriranje aplikacije';

  @override
  String get trayPlaying => 'Igranje u malom prozoru';

  @override
  String get traySearch => 'Traži';

  @override
  String get trayPauseDownloads => 'Pauziraj preuzimanja';

  @override
  String get trayResumeDownloads => 'Nastavi preuzimanja';

  @override
  String get playerDownloadTitle => 'Preuzimanje playera';

  @override
  String get playerDownloadBody =>
      'Dartotsu jednom dohvaća svoj video mehanizam. Reprodukcija počinje čim bude spreman.';

  @override
  String get playerDownloadStarting => 'Pokretanje preuzimanja...';

  @override
  String get playerDownloadFailedTitle => 'Nije moguće dobiti player';

  @override
  String get playerDownloadFailedBody =>
      'Provjerite vezu i pokušajte ponovno. Preuzimanje se nastavlja tamo gdje je stalo.';

  @override
  String get playerDownloadRetry => 'Pokušajte ponovno';

  @override
  String get playerDownloadCopy => 'Kopiraj detalje';

  @override
  String get removePlayerTitle => 'Ukloniti igrača?';

  @override
  String get removePlayerMessage =>
      'Videozapisi se ne mogu reproducirati dok se player ponovno ne preuzme.';

  @override
  String get trailerLoading => 'Učitavanje najave...';

  @override
  String get trailerFailed =>
      'Nije moguće reproducirati najavu ovdje, otvaram je u pregledniku';
}
