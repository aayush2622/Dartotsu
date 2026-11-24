// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Den NYE bedste app til\nat holde styr på anime & manga';

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
  String get loadMore => 'Vis mere';

  @override
  String get login => 'Log ind';

  @override
  String get continueAsGuest => 'Fortsæt som gæst';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get loginWithToken => 'Log ind med token';

  @override
  String get pasteTokenHint => 'Indsæt din adgangstoken';

  @override
  String loginTo(String service) {
    return 'Log ind på $service';
  }

  @override
  String get settings => 'Indstillinger';

  @override
  String get account => 'Konto';

  @override
  String get about => 'Om';

  @override
  String get language => 'Sprog';

  @override
  String get animationSpeed => 'Animationer';

  @override
  String get animationSpeedDesc =>
      'Hastighed på overgange og indgangseffekter i hele appen';

  @override
  String get animationSpeedOff => 'Fra';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Udvidelser',
      one: 'Udvidelse',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Ukendt kilde';

  @override
  String get install => 'Installer';

  @override
  String get update => 'Opdater';

  @override
  String get uninstall => 'Afinstaller';

  @override
  String get updateInstallCancelled =>
      'Installationen blev annulleret. Hvis Android sagde, at appen er i konflikt med den installerede, er signaturen en anden: afinstaller den nuværende version først, og installer så opdateringen';

  @override
  String updateInstallFailed(String error) {
    return 'Opdateringen mislykkedes: $error';
  }

  @override
  String get appLock => 'Applås';

  @override
  String get appLockDesc =>
      'Bed om en kode, når appen åbnes eller kommer tilbage efter et stykke tid';

  @override
  String get appLockBiometric => 'Lås op med biometri';

  @override
  String get appLockBiometricDesc =>
      'Brug dit fingeraftryk eller ansigt i stedet for at indtaste adgangskoden';

  @override
  String get appLockBiometricReason => 'Lås Dartotsu op';

  @override
  String get appLockDelay => 'Lås ved tomgang';

  @override
  String get appLockDelayAlways => 'Altid';

  @override
  String get appLockDelayNever => 'Aldrig';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutter',
      one: '1 minut',
    );
    return 'Efter $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Brug biometri';

  @override
  String get appLockUnlock => 'Indtast din kode';

  @override
  String get appLockWrong => 'Forkert kode';

  @override
  String appLockWait(String seconds) {
    return 'For mange forsøg, vent $seconds s';
  }

  @override
  String get appLockNew => 'Vælg en kode';

  @override
  String get appLockNewHint => '4 til 8 cifre';

  @override
  String get appLockConfirm => 'Indtast den igen';

  @override
  String get appLockMismatch => 'Koderne er ikke ens';

  @override
  String get appLockOn => 'Kode sat';

  @override
  String get appLockRemoveTitle => 'Indtast din kode for at slå låsen fra';

  @override
  String get installFailed => 'Installationen mislykkedes';

  @override
  String get updateFailed => 'Opdateringen mislykkedes';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count opdateringer tilgængelige',
      one: '1 tilgængelig opdatering',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Opdater alle';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done af $total udvidelser opdateret';
  }

  @override
  String get updateConflictTitle => 'Opdatering ikke installeret';

  @override
  String updateConflictBody(String names) {
    return '$names kunne ikke installeres over den eksisterende version. Dette betyder normalt, at den installerede kopi blev underskrevet anderledes. Vil du afinstallere det og installere den nye version?';
  }

  @override
  String get updateConflictAction => 'Afinstaller og geninstaller';

  @override
  String get noSourceSettings => 'Kilden har ingen indstillinger';

  @override
  String get addPluginRepository => 'Tilføj plugin-repo';

  @override
  String get pluginIndexUrlHint => 'URL til plugin-indeks';

  @override
  String get addRepository => 'Tilføj repo';

  @override
  String get importRepositoryFile => 'Importer en fil';

  @override
  String get pluginRepoUpdated => 'Plugin-repo opdateret';

  @override
  String get pluginRepoUpdateFailed => 'Kunne ikke opdatere plugin-repo';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annuller';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get save => 'Gem';

  @override
  String get reset => 'Nulstil';

  @override
  String get clear => 'Ryd';

  @override
  String get test => 'Test';

  @override
  String get testing => 'Tester…';

  @override
  String get resolving => 'Finder…';

  @override
  String get none => 'Ingen';

  @override
  String get selectMediaService => 'Vælg mediatjeneste';

  @override
  String get manageServices => 'Medietjenester';

  @override
  String get manageServicesDesc =>
      'Genbestil tjenesterne, og vælg, hvilke der skal vises i vælgeren';

  @override
  String get manageServicesHint =>
      'Træk for at omarrangere, sluk for dem, du ikke bruger';

  @override
  String get pickColor => 'Vælg en farve';

  @override
  String get colorPickerCustom => 'Brugerdefineret';

  @override
  String get colorPickerTransparent => 'Gennemsigtig';

  @override
  String get ltr => 'Fra venstre mod højre';

  @override
  String get searchSettings => 'Søg i indstillinger';

  @override
  String nothingMatches(String query) {
    return 'Intet matcher \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Søg i $category';
  }

  @override
  String get settingsAppearance => 'Udseende';

  @override
  String get settingsAppearanceDesc => 'Tema, farver, glastilstand';

  @override
  String get settingsGeneral => 'Generelt';

  @override
  String get settingsGeneralDesc => 'Sprog og adfærd';

  @override
  String get settingsNetwork => 'Netværk';

  @override
  String get settingsNetworkDesc => 'Brugeragent, certifikater, DNS og proxy';

  @override
  String get settingsAccountDesc => 'Sporingstjeneste og login';

  @override
  String get settingsUpdates => 'Opdateringer';

  @override
  String get amoledBlack => 'AMOLED-sort';

  @override
  String get amoledBlackDesc => 'Helt sorte flader i mørk tilstand';

  @override
  String get glassMode => 'Glastilstand';

  @override
  String get glassModeDesc => 'Matteret glas over dine covers';

  @override
  String get shelfFrame => 'Ramme om sektioner';

  @override
  String get shelfFrameDesc =>
      'Vis et kort bag hver hylde, eller lad rækkerne ligge direkte på siden';

  @override
  String get settingsExtensionsDesc =>
      'Kildeadministratorer, repos og indstillinger for udvidelser';

  @override
  String get settingsAddons => 'Tilføjelser';

  @override
  String get customPath => 'Brugerdefineret lagringssti';

  @override
  String get stories => 'Historier';

  @override
  String get watchOrder => 'Urrækkefølge';

  @override
  String get watchOrderOpenSite => 'Åbn på chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Der blev ikke fundet nogen urordre for denne titel';

  @override
  String get watchOrderOpenFailed => 'Kunne ikke åbne den titel';

  @override
  String get watchOrderCurrent => 'Du er her';

  @override
  String get watchOrderCredit => 'Se ordrer fra chiaki.site';

  @override
  String get customPathDesc =>
      'Hvor appens data gemmes. Tryk og hold for at nulstille';

  @override
  String get selectDirectory => 'Vælg mappe';

  @override
  String get differentCacheManager => 'Alternativ billedcache';

  @override
  String get differentCacheManagerDesc =>
      'Brug en anden cache-manager til billeder';

  @override
  String get settingsSync => 'Synkroniseringsindstillinger';

  @override
  String get settingsSyncDesc =>
      'Hold dine indstillinger de samme på alle enheder. De er gemt i et privat indhold på din GitHub-konto';

  @override
  String get settingsSyncSwitch => 'Synkroniser ved ændring';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Log ind med GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Indstillinger gemmes i en privat oversigt på din konto';

  @override
  String get settingsSyncToken => 'Brug et personligt adgangstoken';

  @override
  String get settingsSyncTokenDesc =>
      'Opret en på github.com/settings/tokens med kun den grundlæggende tilladelse';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Logget ind som $user';
  }

  @override
  String get settingsSyncSignOut => 'Log ud';

  @override
  String settingsSyncCode(Object code) {
    return 'Indtast $code på GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'GitHub-siden åbnes i din browser. Tryk for at kopiere koden, eller tryk og hold for at annullere.';

  @override
  String get settingsSyncSignInFailed => 'Kunne ikke logge ind på GitHub';

  @override
  String get dcPreview => 'Forhåndsvisning';

  @override
  String get dcSampleWatching => 'Ser på';

  @override
  String get dcSampleReading => 'Læsning';

  @override
  String get dcSampleBrowsing => 'Gennemse';

  @override
  String get dcSampleLive => 'Lige nu';

  @override
  String get dcLiveNothing =>
      'Der vises ikke noget lige nu. Åbn en titel, start en episode eller et kapitel, og det vises her.';

  @override
  String get dcMemberList => 'I medlemslisten';

  @override
  String get dcAccount => 'Konto';

  @override
  String get dcSignIn => 'Log ind med Discord';

  @override
  String get dcSignOut => 'Log ud';

  @override
  String get dcDesktopHint =>
      'Uden at oprette forbindelse viser Discord \"Watching Dartotsu\" gennem desktop-appen. Tilslut Discord for at navngive aktiviteten efter din titel, inklusive på mobilen.';

  @override
  String get dcMobileHint =>
      'Tilslut Discord for at vise, hvad du ser eller læser. Den bruger Discords autorisationsside, ikke dit kontotoken.';

  @override
  String get dcConnect => 'Tilslut Discord';

  @override
  String get dcConnectDesc =>
      'Åbner Discords autorisationsside og tilføjer Dartotsu under Authorized Apps. Discord beder om at opdatere din tilstedeværelse. Kun et opdateringstoken gemmes, ikke dit kontotoken.';

  @override
  String get dcConnectFailed => 'Discord kunne ikke tilsluttes';

  @override
  String get dcConnectedSnack => 'Discord tilsluttet';

  @override
  String get dcDisconnect => 'Afbryd forbindelsen';

  @override
  String get dcDisconnectedSnack => 'Discord afbrudt';

  @override
  String get dcUseToken => 'Brug et token i stedet';

  @override
  String get dcRouteDesktop => 'Gennem Discord desktop-appen';

  @override
  String get dcRouteHeadless => 'Via din konto';

  @override
  String get dcRouteGateway => 'Gennem din konto, live';

  @override
  String get dcRouteLinked => 'Tilsluttet app';

  @override
  String get dcRouteNone => 'Ikke forbundet';

  @override
  String get dcStatusNeedsToken =>
      'Har brug for et Discord-token. Tilslutning af appen indstiller ikke din onlinestatus.';

  @override
  String get dcAccountOnly => 'Har brug for en logget ind konto';

  @override
  String get dcStatusSection => 'Status';

  @override
  String get dcControlStatus => 'Styr min status';

  @override
  String get dcControlStatusDesc =>
      'Holder en live forbindelse til Discord, mens Rich Presence er slået til, så Dartotsu kan indstille din status.';

  @override
  String get dcStatusOnline => 'Online';

  @override
  String get dcStatusIdle => 'Inaktiv';

  @override
  String get dcStatusDnd => 'Forstyr ikke';

  @override
  String get dcStatusInvisible => 'Usynlig';

  @override
  String get dcCustomStatus => 'Brugerdefineret status';

  @override
  String get dcCustomStatusHint => 'Hvad har du gang i?';

  @override
  String get dcActivitySection => 'Aktivitet';

  @override
  String get dcShowWatching => 'Vis, mens du ser';

  @override
  String get dcShowReading => 'Vis under læsning';

  @override
  String get dcListening => 'At lytte';

  @override
  String get dcCompeting => 'Konkurrerende';

  @override
  String get dcActivityName => 'Aktivitetsnavn';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Titel';

  @override
  String get dcNameCustom => 'Brugerdefineret';

  @override
  String get dcCustomNameHint => 'Navn vist efter \"Ser\"';

  @override
  String get dcStatusText => 'Statustekst';

  @override
  String get dcStatusTextDesc => 'Hvad medlemslisten viser ud for dit navn';

  @override
  String get dcDisplayName => 'Navn';

  @override
  String get dcDisplayState => 'stat';

  @override
  String get dcDisplayDetails => 'Detaljer';

  @override
  String get dcTextSection => 'Tekst';

  @override
  String get dcDetails => 'Øverste linje';

  @override
  String get dcState => 'Bundlinje';

  @override
  String get dcTemplateHint => 'Tom bruger standarden';

  @override
  String get dcVariables => 'Tryk for at indsætte en værdi';

  @override
  String get dcImagesSection => 'Billeder';

  @override
  String get dcLargeImage => 'Stort billede';

  @override
  String get dcLargeAuto => 'Auto';

  @override
  String get dcLargeCover => 'Dæk';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Lille billede';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Ingen';

  @override
  String get dcTimerStyle => 'Timer stil';

  @override
  String get dcTimerAuto => 'Auto';

  @override
  String get dcTimerElapsed => 'Forløbet';

  @override
  String get dcTimerRemaining => 'Tilbage';

  @override
  String get dcButtonsSection => 'Knapper';

  @override
  String get dcButtonMedia => 'Link til titlen';

  @override
  String get dcButtonApp => 'Link til Dartotsu';

  @override
  String get dcButtonCustom => 'Brugerdefineret knap';

  @override
  String get dcButtonLabel => 'Etiket';

  @override
  String get dcButtonUrl => 'Link';

  @override
  String get dcPrivacySection => 'Privatliv';

  @override
  String get dcPrivateText => 'Privat tekst';

  @override
  String get dcPrivateHint => 'Noget privat';

  @override
  String get dcTokenWarning =>
      'Log ind bruger dit kontotoken. Discords regler fraråder dette, så brug det på egen risiko.';

  @override
  String get dcConnected => 'Forbundet';

  @override
  String get dcConnection => 'Forbindelse';

  @override
  String get dcMethodDesktop => 'Discord desktop app';

  @override
  String get dcMethodDesktopDesc =>
      'Anvendes automatisk, når intet andet er tilsluttet. Discord skal være åben på denne computer.';

  @override
  String get dcMethodToken => 'Kontotoken';

  @override
  String get dcInUse => 'I brug';

  @override
  String get dcRecommended => 'Anbefales';

  @override
  String get dcConnecting => 'Opretter forbindelse...';

  @override
  String get dcDisconnected => 'Ikke forbundet';

  @override
  String dcSignedInAs(String name) {
    return 'Logget ind som $name';
  }

  @override
  String get settingsSyncOn => 'På';

  @override
  String get settingsSyncCustom => 'Brugerdefineret';

  @override
  String get settingsSyncChangedHeader => 'Ændrede indstillinger';

  @override
  String get settingsSyncNoneChanged =>
      'Du har ikke ændret nogen af disse endnu, så der er intet at synkronisere.';

  @override
  String get settingsSyncChangedOnly =>
      'Kun indstillinger, du har ændret, gemmes. Alt andet bruger sin standard på hver enhed. Skyikonet viser, hvad der allerede er på serveren.';

  @override
  String get settingsSyncOffCategory =>
      'Synkroniserer ikke. Disse bliver på denne enhed, og serverkopien efterlades, som den er.';

  @override
  String get settingsSyncPartsNote =>
      'Per enhed. Fra bevarer hver enheds egen værdi, så en telefon og et tv kan være forskellige.';

  @override
  String get settingsSyncPartSubtitles => 'Undertekst størrelse og farver';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Størrelse, vægt, farver og position';

  @override
  String get settingsSyncPartPictureColors => 'Billedfarver';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Lysstyrke, kontrast, mætning, gamma, nuance og HDR';

  @override
  String get settingsSyncPartPalette => 'Tema farver';

  @override
  String get settingsSyncPartPaletteDesc => 'Tema, accentfarve og OLED-sort';

  @override
  String get settingsSyncCatOther => 'Se, læs og tjenester';

  @override
  String get settingsSyncTitles => 'Se fremskridt og titler';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titler og $resume CV indgange på serveren';
  }

  @override
  String get settingsSyncTitlesNone => 'Intet uploadet endnu';

  @override
  String get settingsSyncTitlesNote =>
      'Se og læs positioner, CV-hylden, dine lokale lister, bogmærker, højdepunkter og muligheder for hver titel. Kildematches og -streams forbliver på hver enhed, fordi de afhænger af dine udvidelser. Titler uploades højst hvert 45. sekund.';

  @override
  String get settingsSyncConnect => 'Ikke forbundet';

  @override
  String get settingsSyncConnectDesc =>
      'Log ind med GitHub for at holde dine indstillinger ens på alle enheder.';

  @override
  String get settingsSyncFailedTitle => 'Synkronisering mislykkedes';

  @override
  String get settingsSyncPaused => 'Pause';

  @override
  String get settingsSyncPausedDesc =>
      'Der bliver ikke uploadet eller downloadet noget, mens dette er slået fra.';

  @override
  String get settingsSyncUpToDate => 'Op til dato';

  @override
  String get settingsSyncRetry => 'Prøv igen';

  @override
  String get settingsSyncAccount => 'GitHub-konto';

  @override
  String get settingsSyncAccountDesc =>
      'Dine data går til et privat indhold på din egen konto.';

  @override
  String get settingsSyncWaiting => 'Venter på, at du godkender på GitHub';

  @override
  String get settingsSyncCopyCode => 'Tryk på koden for at kopiere den';

  @override
  String get settingsSyncCancel => 'Annuller';

  @override
  String get settingsSyncStatSettings => 'Indstillinger';

  @override
  String get settingsSyncStatTitles => 'Titler';

  @override
  String get settingsSyncStatShelf => 'Genoptag';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Uploadet $time fra $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ændret',
      one: '1 ændret',
      zero: 'Intet ændret sig endnu',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Konti og adgangskoder';

  @override
  String get settingsSyncSecretsDesc =>
      'Synkroniser dine logins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API-nøgler og applås mellem dine enheder. De er krypteret med en adgangssætning, der bliver på dine enheder, så GitHub ser dem aldrig.';

  @override
  String get settingsSyncSecretsOn => 'Konti synkroniseres og krypteres';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Når du logger ud på én enhed, logges du ikke ud på de andre.';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Indtast det igen for at fortsætte med at synkronisere konti.';

  @override
  String get settingsSyncPassphraseSet => 'Indstil en adgangssætning';

  @override
  String get settingsSyncPassphraseEnter => 'Indtast din adgangssætning';

  @override
  String get settingsSyncPassphraseField => 'Adgangssætning';

  @override
  String get settingsSyncPassphraseConfirm => 'Gentag adgangssætningen';

  @override
  String get settingsSyncPassphraseNew =>
      'Vælg en adgangssætning på mindst 6 tegn. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Indtast den adgangssætning, du valgte på din anden enhed. Konti på denne enhed vil blive erstattet af de synkroniserede.';

  @override
  String get settingsSyncPassphraseWrong => 'Forkert adgangssætning';

  @override
  String get settingsSyncPassphraseMismatch =>
      'Adgangssætningerne stemmer ikke overens';

  @override
  String get settingsSyncPassphraseShort => 'Brug mindst 6 tegn';

  @override
  String get settingsSyncSecretsStop => 'Stop med at synkronisere konti';

  @override
  String get settingsSyncSecretsDelete => 'Slet fra GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Dette fjerner den krypterede kontofil fra din kerne. Andre enheder beholder deres logins og kan indstille en ny adgangssætning.';

  @override
  String get settingsSyncWhat => 'Hvad skal synkroniseres';

  @override
  String get settingsSyncServer => 'På serveren';

  @override
  String get settingsSyncServerEmpty => 'Intet uploadet endnu';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count indstillinger, uploadet $time fra $device';
  }

  @override
  String get settingsSyncThisDevice => 'denne enhed';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count indstillinger på serveren',
      one: '1 indstilling på serveren',
      zero: 'Intet på serveren',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Synkroniser nu';

  @override
  String get settingsSyncRunning => 'Synkroniserer...';

  @override
  String get settingsSyncNever => 'Ikke synkroniseret endnu';

  @override
  String settingsSyncLast(Object time) {
    return 'Sidst synkroniseret $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Synkronisering mislykkedes: $error';
  }

  @override
  String get settingsSyncScope =>
      'Kun indstillinger, der fungerer ens overalt, synkroniseres. Konti, tokens, mapper, udvidelser, meddelelser, Discord, opdateringer og vinduesstørrelse forbliver på hver enhed.';

  @override
  String get backupAndRestore => 'Backup og gendannelse';

  @override
  String get backupAndRestoreDesc => 'Gem eller indlæs dine indstillinger';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Gendan';

  @override
  String get loadExtensionsIcon => 'Indlæs ikoner til udvidelser';

  @override
  String get autoUpdateRuntimes => 'Opdater udvidelsens køretider automatisk';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download nye Aniyomi, CloudStream og andre runtime versioner i baggrunden. Fra, vises et opdateringsikon ved siden af ​​manageren i stedet for.';

  @override
  String get loadExtensionsIconDesc =>
      'Vis kildeikoner i listerne over udvidelser';

  @override
  String get sectionStorage => 'Lager';

  @override
  String get sectionManagers => 'Administratorer';

  @override
  String get sectionOptions => 'Valgmuligheder';

  @override
  String get backupTabBackup => 'Tag backup';

  @override
  String get backupTabRestore => 'Gendan';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys indstillinger i $categories kategorier';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Seneste backup $time';
  }

  @override
  String get backupNever => 'Ingen backup endnu';

  @override
  String get backupSelectAll => 'Vælg alle';

  @override
  String get backupClearAll => 'Ryd';

  @override
  String backupKeys(Object count) {
    return '$count indstillinger';
  }

  @override
  String get backupPasswordRequired => 'Adgangskode (påkrævet for kontodata)';

  @override
  String get backupProtectedNeedsPassword =>
      'Indstil en adgangskode for at sikkerhedskopiere kontodata, eller fjern markeringen af den';

  @override
  String get backupProtectedSkipped =>
      'Denne sikkerhedskopi har ingen adgangskode, så dens kontodata blev sprunget over';

  @override
  String get backupPassword => 'Adgangskode (valgfrit)';

  @override
  String get backupPasswordHint => 'Lad stå tomt for at bruge standarden';

  @override
  String get backupSensitive => 'Indeholder login-tokens. Hold filen privat';

  @override
  String get backupCreate => 'Opret backup';

  @override
  String backupSaved(Object name) {
    return 'Backup gemt som $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Backup mislykkedes: $error';
  }

  @override
  String get backupPickFile => 'Vælg en backupfil';

  @override
  String get backupPickFileDesc => 'Vælg en .json-fil lavet af Dartotsu';

  @override
  String get backupChooseAnother => 'Vælg en anden fil';

  @override
  String get backupCreatedAt => 'Oprettet';

  @override
  String get backupAppVersion => 'App-version';

  @override
  String get backupDevice => 'Enhed';

  @override
  String get backupAccounts => 'Konti';

  @override
  String get backupSize => 'Størrelse';

  @override
  String get backupEncrypted => 'Beskyttet med adgangskode';

  @override
  String get backupUnlock => 'Lås op';

  @override
  String get backupWrongPassword => 'Kunne ikke læse filen. Tjek adgangskoden';

  @override
  String get backupRestoreSelected => 'Gendan valgte';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Gendan $count indstillinger? Eksisterende værdier i disse kategorier bliver overskrevet.';
  }

  @override
  String get backupRestored => 'Gendannet. Genstart appen for at anvende alt';

  @override
  String backupRestoreFailed(Object error) {
    return 'Gendannelsen mislykkedes: $error';
  }

  @override
  String get backupSelectOne => 'Vælg mindst én kategori';

  @override
  String get backupCatTheme => 'Udseende';

  @override
  String get backupCatThemeDesc =>
      'Tema, farver, glas, skrifttyper og kortstil';

  @override
  String get backupCatCommon => 'Generelt';

  @override
  String get backupCatCommonDesc =>
      'Sprog, lager, netværk og indstillinger for udvidelser';

  @override
  String get backupCatPlayer => 'Afspiller';

  @override
  String get backupCatPlayerDesc => 'Afspillerindstillinger';

  @override
  String get backupCatReader => 'Læser';

  @override
  String get backupCatReaderDesc => 'Læserindstillinger';

  @override
  String get backupCatProtected => 'Konti';

  @override
  String get backupCatProtectedDesc => 'Login-tokens og logindata';

  @override
  String get backupCatOther => 'Tjenester og feeds';

  @override
  String get backupCatOtherDesc =>
      'Feed-layouts, lister og tjenesteindstillinger';

  @override
  String get logFile => 'Logfil';

  @override
  String get logFileDesc => 'Del app-loggen, eller kopiér stien på Linux';

  @override
  String get logDelete => 'Slet logfiler';

  @override
  String get logDeleteDesc => 'Ryd de gemte applogfiler for at frigøre plads';

  @override
  String logDeleted(String size) {
    return 'Slettet $size af logfiler';
  }

  @override
  String get missingSequel => 'Manglende efterfølger';

  @override
  String get rising => 'Stigende';

  @override
  String get stacks => 'Stabler';

  @override
  String get stacksAll => 'Alle';

  @override
  String get stacksFeatured => 'Udvalgte';

  @override
  String get stacksMine => 'Dine';

  @override
  String get stacksSaved => 'Gemt';

  @override
  String get stacksFollowing => 'Følger';

  @override
  String get stacksEmpty => 'Ingen stakke her endnu';

  @override
  String get stacksSignIn => 'Log ind på MangaBaka for at se dine stakke';

  @override
  String get stacksScopeNeeded =>
      'Dine stakke skal have en ny tilladelse. Log ind på MangaBaka igen for at tillade det.';

  @override
  String get stacksSignInAgain => 'Log ind igen';

  @override
  String get stacksCouldntLoad => 'Kunne ikke indlæse stakkene';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count serien',
      one: '1 serie',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gemmer',
      one: '1 gem',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'af $name';
  }

  @override
  String get stackSpoilers => 'Spoilere';

  @override
  String get stackEmptyEntries => 'Denne stak er tom';

  @override
  String get stackSave => 'Gem stak';

  @override
  String get stackUnsave => 'Fjern fra gemt';

  @override
  String get stackSavedToast => 'Gemt i dine stakke';

  @override
  String get stackRemovedToast => 'Fjernet fra dine gemte stakke';

  @override
  String userStacks(String name) {
    return 'Stabler af $name';
  }

  @override
  String get newsTitle => 'Nyheder';

  @override
  String get newsEmpty => 'Ingen nyheder lige nu';

  @override
  String get newsCouldntLoad => 'Kunne ikke indlæse nyhederne';

  @override
  String get logFileCopied => 'Logsti kopieret';

  @override
  String get donateSheetTitle => 'Kan du lide Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu er lavet og vedligeholdt af én person. Hvis du får noget ud af den, så overvej at støtte udviklingen.';

  @override
  String get donateLater => 'Måske senere';

  @override
  String get glassBackground => 'Glasbaggrund';

  @override
  String get glassBackgroundDesc =>
      'Dit profilbanner, medmindre du angiver et billedlink';

  @override
  String get glassBackgroundHint => 'Billedlink (lad stå tomt for dit banner)';

  @override
  String get followCover => 'Følg cover';

  @override
  String get followCoverDesc =>
      'Farverne følger baggrunden, og coveret på detaljesider';

  @override
  String get followCoverMediaOnly => 'Kun til medier';

  @override
  String get followCoverMediaOnlyDesc =>
      'Følg kun omslaget på mediesider, alle andre steder bevarer de normale farver';

  @override
  String get cardStyle => 'Kortstil';

  @override
  String get cardStyleDesc =>
      'Placering af titel, størrelse, fremskridt og badges';

  @override
  String get customFont => 'Skrifttype';

  @override
  String get customFontDesc =>
      'Standard, en fil fra din enhed eller Google Fonts';

  @override
  String get customFontError => 'Kunne ikke indlæse skrifttypefilen';

  @override
  String get googleFontError => 'Kunne ikke downloade skrifttypen';

  @override
  String get yourFonts => 'Dine skrifttyper';

  @override
  String get addFontFile => 'Tilføj skrifttypefil…';

  @override
  String get browseGoogleFonts => 'Gennemse Google Fonts…';

  @override
  String get searchGoogleFonts => 'Søg i Google Fonts';

  @override
  String get defaultFont => 'Standard';

  @override
  String get materialYou => 'Materiale dig';

  @override
  String get materialYouDesc => 'Dynamisk farve fra systemet';

  @override
  String get jsonTheme => 'Brugerdefineret temafil';

  @override
  String get jsonThemeDesc =>
      'Live-farver fra ~/.config/dartotsu/theme.json (et eget script eller dine egne ændringer)';

  @override
  String get themeMode => 'Tematilstand';

  @override
  String get mode => 'Tilstand';

  @override
  String get trackingService => 'Sporingstjeneste';

  @override
  String get signOut => 'Log ud';

  @override
  String get signIn => 'Log ind';

  @override
  String get notSignedIn => 'Ikke logget ind';

  @override
  String signOutOf(String service) {
    return 'Log ud af $service?';
  }

  @override
  String get checkForUpdates => 'Søg efter opdateringer';

  @override
  String get checkForUpdatesDesc => 'Giv besked ved ny GitHub-udgivelse';

  @override
  String get updateChannel => 'Opdateringskanal';

  @override
  String get channel => 'Kanal';

  @override
  String get stable => 'Stabil';

  @override
  String get preRelease => 'Prerelease';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Tjek nu';

  @override
  String get userAgent => 'Bruger-agent';

  @override
  String get settingDefault => 'Standard';

  @override
  String currentlyUsing(String value) {
    return 'Lige nu: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Standard (Cloudflare)';

  @override
  String get proxy => 'Fuldmagt';

  @override
  String get proxyProtocol => 'Type';

  @override
  String get proxyHost => 'Vært';

  @override
  String get proxyPort => 'Havn';

  @override
  String get proxyUsername => 'Brugernavn';

  @override
  String get proxyPassword => 'Adgangskode';

  @override
  String get optional => 'Valgfrit';

  @override
  String get clearCookies => 'Ryd cookies';

  @override
  String get clearCookiesDesc => 'Fjern alle gemte cookies';

  @override
  String notImplementedArea(String area) {
    return '$area – kommer snart';
  }

  @override
  String notImplementedService(String service) {
    return '$service understøtter ikke det her endnu.';
  }

  @override
  String get couldNotLoadResults => 'Kunne ikke indlæse resultater';

  @override
  String get updateCheckFailed => 'Kunne ikke søge efter opdateringer';

  @override
  String get highRefreshRate => 'Høj opdateringsfrekvens';

  @override
  String get highRefreshRateDesc =>
      'Brug den højeste opdateringsfrekvens, din skærm understøtter';

  @override
  String get imageSave => 'Gem billede';

  @override
  String imageSavedTo(String path) {
    return 'Gemt i $path';
  }

  @override
  String get imageActionFailed => 'Kunne ikke downloade billedet';

  @override
  String get imageTitleCover => 'Dæk';

  @override
  String get imageTitlePage => 'Side';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Profilbillede';

  @override
  String get verifyTls => 'Bekræft certifikater';

  @override
  String get verifyTlsDesc =>
      'Afvis servere med ugyldige HTTPS-certifikater. Slå kun fra for en kilde med et selvsigneret certifikat';

  @override
  String get clearCookiesConfirm =>
      'Fjerne alle gemte cookies? Du kan blive logget ud af nogle kilder.';

  @override
  String get version => 'version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Kildekode, fejl og udgivelser';

  @override
  String get discordDesc => 'Fællesskab og support';

  @override
  String get supportDeveloper => 'Støt udvikleren';

  @override
  String get buyMeCoffee => 'Køb mig en kop kaffe';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI-id kopieret';

  @override
  String get donateDesc => 'Støt udviklingen';

  @override
  String get contributors => 'Bidragydere';

  @override
  String get contributorsDesc => 'Folkene bag Dartotsu';

  @override
  String get contributorsLoadFailed => 'Kunne ikke indlæse bidragydere';

  @override
  String get forks => 'Forgafler';

  @override
  String get forksDesc => 'Projekter bygget oven på Dartotsu';

  @override
  String get forksEmpty => 'Ingen forks fundet';

  @override
  String get sectionColors => 'Farver';

  @override
  String get sectionDisplay => 'Visning';

  @override
  String get sectionStyle => 'Stil';

  @override
  String get sectionCommunity => 'Fællesskab';

  @override
  String get sectionAppInfo => 'App-info';

  @override
  String get sectionRequests => 'Forespørgsler';

  @override
  String get sectionDnsProxy => 'DNS & proxy';

  @override
  String get onboardingBack => 'Tilbage';

  @override
  String get onboardingNext => 'Næste';

  @override
  String get onboardingSkip => 'Spring over';

  @override
  String get onboardingLanguageBody =>
      'Vælg det sprog, Dartotsu vises i. Du kan ændre det senere i Indstillinger.';

  @override
  String get onboardingPaletteTitle => 'Gør den til din egen';

  @override
  String get onboardingPaletteBody =>
      'Vælg en palet. Alle accentfarver, fra kort til afspilleren, følger den.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Lys';

  @override
  String get themeModeDark => 'Mørk';

  @override
  String get onboardingSyncTitle => 'Synkroniser dit bibliotek';

  @override
  String get onboardingSyncBody =>
      'Log ind med AniList for at tage dine lister, fremskridt og karakterer med. Eller spring over og kig dig omkring som gæst.';

  @override
  String get onboardingOpenLinks => 'Åbn AniList- og repo-links i Dartotsu';

  @override
  String get onboardingPermsTitle => 'Tilladelser';

  @override
  String get onboardingPermsBody =>
      'Giv dem nu, så downloads, opdateringer og notifikationer virker uden afbrydelser. Du kan ændre dem senere i systemindstillingerne.';

  @override
  String get permNotifications => 'Notifikationer';

  @override
  String get permNotificationsDesc => 'Downloadforløb, nye afsnit og svar';

  @override
  String get permStorage => 'Adgang til alle filer';

  @override
  String get permStorageDesc => 'Gem downloads i den offentlige Dartotsu-mappe';

  @override
  String get permInstall => 'Installer opdateringer';

  @override
  String get permInstallDesc =>
      'Lad Dartotsu installere sine egne appopdateringer';

  @override
  String get permBattery => 'Ubegrænset batteri';

  @override
  String get permBatteryDesc => 'Hold lange downloads kørende i baggrunden';

  @override
  String get permGrant => 'Tillad';

  @override
  String get linkOpenInApp => 'Åbn links i Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Lad AniList- og repo-links åbne appen';

  @override
  String get reviewsTitle => 'Anmeldelser';

  @override
  String get reviewsEmpty => 'Ingen anmeldelser endnu';

  @override
  String get reviewsFailed => 'Kunne ikke indlæse anmeldelser';

  @override
  String get reviewHelpfulQuestion => 'Var anmeldelsen nyttig?';

  @override
  String get reviewVoteFailed => 'Kunne ikke gemme din stemme';

  @override
  String reviewHelpful(int n, int total) {
    return '$n af $total syntes, den var nyttig';
  }

  @override
  String get calendarTitle => 'Sendeplan';

  @override
  String get calendarToday => 'I dag';

  @override
  String get calendarEmpty => 'Der sendes ikke noget denne dag';

  @override
  String get calendarFailed => 'Kunne ikke indlæse sendeplanen';

  @override
  String calendarChapter(int n) {
    return 'Kapitel $n';
  }

  @override
  String get calendarExpected => 'Forventet';

  @override
  String get castReceiverFailed => 'Chromecasten startede ikke sin afspiller';

  @override
  String get castPlaybackFailed => 'Enheden kunne ikke afspille denne stream';

  @override
  String get shortcutNothingToContinue => 'Intet at fortsætte endnu';

  @override
  String shortcutNoCalendar(String service) {
    return '$service har ingen kalender';
  }

  @override
  String calendarEpisode(int n) {
    return 'Afsnit $n';
  }

  @override
  String get shareAnalytics => 'Del anonyme brugsdata';

  @override
  String get shareAnalyticsDesc =>
      'Anonyme brugertal og nedbrudsrapporter. Ingen konto eller personlige data';

  @override
  String get linkOpenAnilist => 'Åbn AniList-links i Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Slå linkhåndtering til, så anilist.co-links åbner appen';

  @override
  String get linkSettingsFailed => 'Kunne ikke åbne systemindstillingerne';

  @override
  String get discordRichPresence => 'Rig tilstedeværelse';

  @override
  String get discordRichPresenceTokenDesc =>
      'Vis på din Discord-profil, hvad du laver. Kræver dit Discord-token.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Vis på din Discord-profil, hvad du laver. Kræver, at Discord-desktopappen kører.';

  @override
  String get discordBrowsing => 'Vis browsingaktivitet';

  @override
  String get discordBrowsingDesc =>
      'Vis også den fane, side eller profil, du kigger på, og ikke kun hvad du ser eller læser.';

  @override
  String get discordLookHeader => 'Udseende af presence';

  @override
  String get discordActivityType => 'Aktivitetstype';

  @override
  String get discordActivityTypeDesc =>
      'Hvordan Discord formulerer det: \"Ser …\" eller \"Spiller …\". Auto bruger Ser til anime og Spiller til alt andet.';

  @override
  String get discordWatching => 'Ser';

  @override
  String get discordPlaying => 'Spiller';

  @override
  String get discordCovers => 'Vis covers';

  @override
  String get discordCoversDesc => 'Coverbillede og Dartotsu-ikonet på kortet.';

  @override
  String get discordTimer => 'Vis timer';

  @override
  String get discordTimerDesc => 'Forløbet eller resterende tid under titlen.';

  @override
  String get discordButtons => 'Vis knapper';

  @override
  String get discordButtonsDesc =>
      'Knapperne \"Se anime / manga\" og \"Åbn Dartotsu\".';

  @override
  String get discordHideTitles => 'Skjul titler';

  @override
  String get discordHideTitlesDesc =>
      'Erstat navne på anime og manga (og deres cover og link) med \"Noget privat\".';

  @override
  String get discordConnectionHeader => 'Forbindelse';

  @override
  String get listSearchHint => 'Søg i denne liste';

  @override
  String get listSort => 'Sortér';

  @override
  String get listFilter => 'Filtrér';

  @override
  String get listRandom => 'Tilfældig titel';

  @override
  String get listReverse => 'Omvendt rækkefølge';

  @override
  String get listSortDefault => 'Listerækkefølge';

  @override
  String get listSortScore => 'Din karakter';

  @override
  String get listSortTitle => 'Titel';

  @override
  String get listSortUpdated => 'Sidst opdateret';

  @override
  String get listSortProgress => 'Fremskridt';

  @override
  String get listSortReleased => 'Udgivelsesdato';

  @override
  String get listSortAverage => 'Gennemsnitlig karakter';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genrer';

  @override
  String get listFilterClear => 'Ryd filtre';

  @override
  String get listNoMatches => 'Intet på listen matcher';

  @override
  String get discordLogin => 'Log ind på Discord';

  @override
  String get discordToken => 'Discord-token';

  @override
  String get discordTokenSaved =>
      'Gemt. Tryk for at erstatte, tryk og hold for at fjerne.';

  @override
  String get discordTokenNotSet => 'Ikke angivet. Tryk for at tilføje.';

  @override
  String get discordTokenSavedSnack => 'Discord-token gemt';

  @override
  String get discordTokenRemovedSnack => 'Discord-token fjernet';

  @override
  String get discordRichPresenceRow => 'Discord rig tilstedeværelse';

  @override
  String get discordRichPresenceRowOn => 'Til · tryk for at ændre udseendet';

  @override
  String get discordRichPresenceRowOff =>
      'Vis på din Discord-profil, hvad du laver';

  @override
  String get loginCancelled => 'Login annulleret';

  @override
  String get invalidToken => 'Ugyldigt token';

  @override
  String loginFailed(String error) {
    return 'Login mislykkedes: $error';
  }

  @override
  String get malLoginFailed => 'Login på MyAnimeList mislykkedes';

  @override
  String get kitsuLoginFailed =>
      'Login på Kitsu mislykkedes. Tjek din e-mail og adgangskode.';

  @override
  String get kitsuLoginTitle => 'Log ind på Kitsu';

  @override
  String get emailOrUsername => 'E-mail eller brugernavn';

  @override
  String get password => 'Adgangskode';

  @override
  String get kitsuProfile => 'Kitsu-profil';

  @override
  String get mangaBakaLoginFailed => 'Login på MangaBaka mislykkedes';

  @override
  String get comickLoginFailed => 'Comick login mislykkedes';

  @override
  String get tagline => 'Tagline';

  @override
  String get trending => 'Trending';

  @override
  String get anticipated => 'Forventet';

  @override
  String get watchlist => 'Overvågningsliste';

  @override
  String get recommendedShows => 'Anbefalede shows';

  @override
  String get recommendedMovies => 'Anbefalede film';

  @override
  String get boxOffice => 'Box Office';

  @override
  String get popularMovies => 'Populære film';

  @override
  String get popularShows => 'Populære shows';

  @override
  String get anticipatedMovies => 'Forventede film';

  @override
  String get anticipatedShows => 'Forventede shows';

  @override
  String get trendingShows => 'Trending shows';

  @override
  String get mostWatchedThisWeek => 'Mest set i denne uge';

  @override
  String get sortMostViewed => 'Mest set';

  @override
  String get sortMostFollowed => 'De fleste fulgte efter';

  @override
  String get sortLatestUpdates => 'Seneste opdateringer';

  @override
  String get translationStatusLabel => 'Oversættelse';

  @override
  String get weeklySchedule => 'Ugeskema';

  @override
  String get mostFollowed => 'Mest fulgt';

  @override
  String get latestUpdates => 'Seneste opdateringer';

  @override
  String get trendingAnime => 'Trending Anime';

  @override
  String get topRatedAnime => 'Bedst bedømte anime';

  @override
  String get mostFollowedAnime => 'Mest fulgte anime';

  @override
  String get comickProfile => 'Comick profil';

  @override
  String get refreshFromComick => 'Opdater fra Comick';

  @override
  String get mangaBakaProfile => 'MangaBaka-profil';

  @override
  String get refreshFromMangaBaka => 'Opdater fra MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Log ind på MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profil';

  @override
  String get mangaUpdatesAnimeStart => 'Anime-tilpasning starter';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime-tilpasning slutter';

  @override
  String get refreshFromMangaUpdates => 'Opdater fra MangaUpdates';

  @override
  String get usernameOnly => 'Brugernavn';

  @override
  String get releases => 'Udgivelser';

  @override
  String get artistsLabel => 'Tegnere';

  @override
  String get authorsLabel => 'Forfattere';

  @override
  String get publishersLabel => 'Forlag';

  @override
  String get licensedLabel => 'Licenseret';

  @override
  String get contentRatingLabel => 'Aldersgrænse';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nej';

  @override
  String get ratingSteps => 'Antal trin i vurdering';

  @override
  String get hideNsfw => 'Skjul NSFW';

  @override
  String get hideNsfwSourcesDesc =>
      'Skjul kilder markeret 18+ fra feeds og kildevælgeren. De forbliver installeret.';

  @override
  String get hideNsfwDesc =>
      'Hold voksentitler ude af feeds og søgning, og vis dine egne voksenindslag under Skjulte medier.';

  @override
  String get kitsuAccountOptions => 'Kitsu-kontoindstillinger';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka-kontoindstillinger';

  @override
  String get comickAccountOptions => 'Comick-kontomuligheder';

  @override
  String get comickClientId => 'Comick klient-id';

  @override
  String get comickClientIdDesc =>
      'Brugerdefineret klient-id registreret på comick.dev';

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
      'Kunne ikke opdatere dine Kitsu-indstillinger';

  @override
  String get titleCanonical => 'Kanonisk';

  @override
  String get titleRomanized => 'Romaniseret';

  @override
  String get titleLocalized => 'Lokaliseret';

  @override
  String get ratingSystem => 'Vurderingssystem';

  @override
  String get ratingSimple => 'Simpelt (3 smileys)';

  @override
  String get ratingRegular => 'Almindeligt (5 stjerner)';

  @override
  String get ratingAdvanced => 'Avanceret (10 point)';

  @override
  String get contentFilter => 'Indholdsfilter';

  @override
  String get contentSfw => 'Kun børnevenligt';

  @override
  String get contentSometimes => 'Voksenindhold i søgninger';

  @override
  String get contentEverywhere => 'Voksenindhold overalt';

  @override
  String get shareToGlobal => 'Del til det globale feed';

  @override
  String get shareToGlobalDesc =>
      'Lad din aktivitet vises i Kitsus globale feed.';

  @override
  String get memberSince => 'Medlem siden';

  @override
  String get location => 'Sted';

  @override
  String get accountType => 'Kontotype';

  @override
  String get accountSupporter => 'Supporter';

  @override
  String get accountFree => 'Gratis';

  @override
  String get accountDetails => 'Kontooplysninger';

  @override
  String get refreshFromKitsu => 'Opdater fra Kitsu';

  @override
  String get simklReadOnly => 'Simkl gav kun læseadgang';

  @override
  String get traktReadOnly => 'Trakt gav skrivebeskyttet adgang';

  @override
  String get incognitoEditsBlocked =>
      'Inkognito: listeredigeringer er blokeret';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Inkognito: fremskridt blev ikke gemt';

  @override
  String progressSet(int progress) {
    return 'Fremskridt sat til $progress';
  }

  @override
  String removedFromList(String title) {
    return 'Fjernede $title fra din liste';
  }

  @override
  String get following => 'Følger';

  @override
  String get followsMutual => 'Gensidig';

  @override
  String get followsNotMutual => 'Ikke gensidigt';

  @override
  String get homeSections => 'Sektioner på forsiden';

  @override
  String get homeSectionsHint =>
      'Træk for at ændre rækkefølgen. Skjulte sektioner hentes aldrig.';

  @override
  String get customListDeleteFailed =>
      'Kunne ikke slette den brugerdefinerede liste';

  @override
  String get customListsSaveFailed =>
      'Kunne ikke gemme brugerdefinerede lister';

  @override
  String get customListsSaved => 'Brugerdefinerede lister gemt';

  @override
  String get listName => 'Listenavn';

  @override
  String get addList => 'Tilføj liste';

  @override
  String get voiceActors => 'Stemmeskuespillere';

  @override
  String voiceActorsIn(String name) {
    return 'Stemmeskuespillere · $name';
  }

  @override
  String get animeAppearances => 'Optrædener i anime';

  @override
  String get mangaAppearances => 'Optrædener i manga';

  @override
  String get voicedCharacters => 'Karakterer, de har lagt stemme til';

  @override
  String get animeCredits => 'Anime-krediteringer';

  @override
  String get mangaCredits => 'Manga-krediteringer';

  @override
  String get mainProductions => 'Hovedproduktioner';

  @override
  String get otherWorks => 'Andre værker';

  @override
  String get prequelSequel => 'Prequel & sequel';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Efterfølger';

  @override
  String get previousSeason => 'Forrige sæson';

  @override
  String get thisSeason => 'Denne sæson';

  @override
  String get nextSeason => 'Næste sæson';

  @override
  String get voiceRoles => 'Stemmeroller';

  @override
  String get staffPositions => 'Stabsposter';

  @override
  String get mangaWorks => 'Mangaværker';

  @override
  String get malProfile => 'MyAnimeList-profil';

  @override
  String get refreshFromMal => 'Opdater fra MyAnimeList';

  @override
  String get repullProfileCounts => 'Hent din profil og dine tal igen';

  @override
  String get refreshed => 'Opdateret';

  @override
  String get simklProfile => 'Simkl-profil';

  @override
  String get traktProfile => 'Trakt profil';

  @override
  String get refreshFromSimkl => 'Opdater fra Simkl';

  @override
  String get refreshFromTrakt => 'Opdater fra Trakt';

  @override
  String get repullProfileLibrary => 'Hent din profil og dit bibliotek igen';

  @override
  String get simklSignInToSearch => 'Log ind på Simkl for at søge';

  @override
  String get dropRate => 'Frafaldsrate';

  @override
  String get simklAttribution =>
      'Data og illustrationer leveret af Simkl. Se på Simkl';

  @override
  String get traktAttribution =>
      'Data og illustrationer leveret af Trakt. Se på Trakt';

  @override
  String get listsLiked => 'Synes om';

  @override
  String get listsYours => 'Dine';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP-medlem';

  @override
  String get onHold => 'På pause';

  @override
  String get scoredBy => 'Vurderet af';

  @override
  String get planToWatch => 'Vil se';

  @override
  String get planToRead => 'Vil læse';

  @override
  String get timesRewatched => 'Gange gensete';

  @override
  String get timesReread => 'Gange genlæst';

  @override
  String get comments => 'Kommentarer';

  @override
  String get moviesAndSeries => 'Film & serier';

  @override
  String get simklMoviesOnly => 'Kun film og serier';

  @override
  String get simklMoviesOnlyDesc =>
      'Erstatter Anime-fanen: Film først, derefter Shows med et par anime-rækker';

  @override
  String get trackingOnly => 'Kun sporing';

  @override
  String get signedIn => 'Logget ind';

  @override
  String get searchLanguage => 'Søgesprog';

  @override
  String get savedToList => 'Gemt på din liste';

  @override
  String get removedFromYourList => 'Fjernet fra din liste';

  @override
  String get retry => 'Prøv igen';

  @override
  String get synopsis => 'Resumé';

  @override
  String get details => 'Detaljer';

  @override
  String get addToList => 'Føj til liste';

  @override
  String get trailer => 'Trailer';

  @override
  String get trailerQuality => 'Trailer kvalitet';

  @override
  String get titleCopied => 'Titel kopieret';

  @override
  String get linkCopied => 'Link kopieret';

  @override
  String get watchTrailer => 'Se trailer';

  @override
  String get copyTitle => 'Kopiér titel';

  @override
  String get detailStale =>
      'AniList kunne ikke nås. Dette er gemt information og kan være forældet.';

  @override
  String get copyLink => 'Kopiér link';

  @override
  String get openInBrowser => 'Åbn i browser';

  @override
  String viewOnSource(String source) {
    return 'Se på $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Afsnit $ep sendes om $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Næste afsnit om $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Kapitel $chapter kommer om cirka $time';
  }

  @override
  String get logPathCopied => 'Logfilens sti kopieret til udklipsholderen';

  @override
  String get animeSource => 'Anime-kilde';

  @override
  String get mangaSource => 'Manga-kilde';

  @override
  String get popular => 'Populære';

  @override
  String get allCustomLists => 'Alle brugerdefinerede lister';

  @override
  String get simklTitleLanguage => 'Anime titel sprog';

  @override
  String get titleLanguageEnglish => 'engelsk';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Trending';

  @override
  String get simklListsMostLiked => 'Mest kunne lide';

  @override
  String get simklListsMostFollowed => 'De fleste fulgte efter';

  @override
  String get simklListsOfficial => 'Officiel';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titler',
      one: '1 titel',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Mennesker';

  @override
  String get mostComments => 'Flest kommentarer';

  @override
  String get alphabetical => 'Alfabetisk';

  @override
  String get latest => 'Seneste';

  @override
  String get saved => 'Gemt';

  @override
  String get nothingMatched => 'Ingen match';

  @override
  String get nothingSavedFromSource => 'Intet gemt fra denne kilde endnu';

  @override
  String get sourceReturnedNothing => 'Kilden returnerede ingenting';

  @override
  String get checkConnectionOrSource =>
      'Tjek din forbindelse, eller prøv en anden kilde.';

  @override
  String get tryDifferentSearch => 'Prøv et andet søgeord.';

  @override
  String get savedTitlesAppearHere =>
      'Titler, du føjer til din liste, vises her.';

  @override
  String get tryOtherFeed => 'Prøv det andet feed eller søg i stedet.';

  @override
  String searchSource(String source) {
    return 'Søg i $source';
  }

  @override
  String get animeExtensions => 'Anime-udvidelser';

  @override
  String get mangaExtensions => 'Manga-udvidelser';

  @override
  String get nothingHereYet => 'Intet her endnu';

  @override
  String get savedOnDeviceUntilLogin =>
      'Alt herunder er gemt på denne enhed, indtil du gør noget andet.';

  @override
  String get yourProfile => 'Din profil';

  @override
  String get activity => 'Aktivitet';

  @override
  String get extensions => 'Udvidelser';

  @override
  String get logOut => 'Log ud';

  @override
  String get logIn => 'Log ind';

  @override
  String get logOutConfirm => 'Er du sikker på, at du vil logge ud?';

  @override
  String get incognitoMode => 'Inkognitotilstand';

  @override
  String get alsoBlockListEdits => 'Bloker også listeredigeringer';

  @override
  String get offlineMode => 'Offlinetilstand';

  @override
  String get switchService => 'Skift tjeneste';

  @override
  String logOutOf(String name) {
    return 'Log ud af $name';
  }

  @override
  String get loggedIn => 'Logget ind';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get nothingNew => 'Intet nyt';

  @override
  String get thisWeek => 'Denne uge';

  @override
  String get listOnly => 'Kun listen';

  @override
  String get notInList => 'Ikke på listen';

  @override
  String get filter => 'Filtrér';

  @override
  String get searchResults => 'Søgeresultater';

  @override
  String get recentSearches => 'Seneste søgninger';

  @override
  String get searchOrSetFilter => 'Søg eller vælg et filter';

  @override
  String get filters => 'Filtre';

  @override
  String get showLess => 'Vis mindre';

  @override
  String get showAll => 'Vis alle';

  @override
  String get apply => 'Anvend';

  @override
  String get preview => 'Forhåndsvisning';

  @override
  String get preset => 'Forudindstilling';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'På kortet';

  @override
  String get cardInCard => 'I kortet';

  @override
  String get size => 'Størrelse';

  @override
  String get cardWidth => 'Kortbredde';

  @override
  String get compact => 'Kompakt';

  @override
  String get coverAndTitleOnly => 'Kun cover og titel';

  @override
  String get titleLines => 'Titellinjer';

  @override
  String get shape => 'Form';

  @override
  String get posterShape => 'Plakatform';

  @override
  String get cornerRadius => 'Hjørneradius';

  @override
  String get off => 'Fra';

  @override
  String get topLeft => 'Øverst til venstre';

  @override
  String get topRight => 'Øverst til højre';

  @override
  String get bottomLeft => 'Nederst til venstre';

  @override
  String get bottomRight => 'Nederst til højre';

  @override
  String get overlays => 'Overlejringer';

  @override
  String get progressCount => 'Fremskridt / antal';

  @override
  String get pill => 'Pille';

  @override
  String get bar => 'Bjælke';

  @override
  String get outside => 'Udenfor';

  @override
  String get scoreBadge => 'Karakter-badge';

  @override
  String get airingDot => 'Udsendelsesprik';

  @override
  String get updateAvailable => 'Opdatering tilgængelig';

  @override
  String get notInstalled => 'Ikke installeret';

  @override
  String get done => 'Færdig';

  @override
  String get searchOrEnterUrl => 'Søg eller indtast URL';

  @override
  String get refresh => 'Opdater';

  @override
  String get animePlanetRank => 'Rang';

  @override
  String get animePlanetMagazine => 'Magasin';

  @override
  String get animePlanetRefreshLists => 'Opdater dine lister';

  @override
  String get animePlanetRefreshListsDesc => 'Læs dine Anime-Planet-lister igen';

  @override
  String get animePlanetLocalNote =>
      'Log ind for at gemme ændringer på din Anime-Planet-konto. Indtil da bliver de på denne enhed';

  @override
  String get share => 'Del';

  @override
  String get characters => 'Karakterer';

  @override
  String get staff => 'Stab';

  @override
  String get readMore => 'Læs mere';

  @override
  String get couldNotLoadList => 'Kunne ikke indlæse listen';

  @override
  String get logInToFavourite => 'Log ind for at tilføje favoritter';

  @override
  String get alsoKnownAs => 'Også kendt som';

  @override
  String get hideSpoilerNames => 'Skjul navne med spoilere';

  @override
  String get showSpoilerNames => 'Vis navne med spoilere';

  @override
  String get favourited => 'Favorit';

  @override
  String get favourite => 'Favorit';

  @override
  String get couldNotOpenTitle => 'Kunne ikke åbne denne titel';

  @override
  String get nobodyHereYet => 'Ingen her endnu';

  @override
  String get noMatches => 'Ingen match';

  @override
  String get gridView => 'Gittervisning';

  @override
  String get fullWidth => 'Fuld bredde';

  @override
  String get userNotFound => 'Brugeren blev ikke fundet';

  @override
  String get couldNotUpdateFollow => 'Kunne ikke opdatere følgning';

  @override
  String followedUser(String name) {
    return 'Følger nu $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Følger ikke længere $name';
  }

  @override
  String get messages => 'Beskeder';

  @override
  String get logInToSeeMessages => 'Log ind for at se dine beskeder';

  @override
  String get editActivity => 'Rediger aktivitet';

  @override
  String get newActivity => 'Ny aktivitet';

  @override
  String get editMessage => 'Rediger besked';

  @override
  String get writeMessage => 'Skriv en besked';

  @override
  String get editReply => 'Rediger svar';

  @override
  String get posted => 'Slået op';

  @override
  String get couldNotPost => 'Kunne ikke slå op';

  @override
  String get nothingToPreview => 'Intet at forhåndsvise';

  @override
  String get writeSomethingHint => 'Skriv noget… AniList-markdown virker her';

  @override
  String get privateMessage => 'Privat besked';

  @override
  String get post => 'Slå op';

  @override
  String get nothingHere => 'Intet her';

  @override
  String get noAnimeProgress => 'Ingen anime-fremskridt';

  @override
  String get noMangaProgress => 'Ingen manga-fremskridt';

  @override
  String get noMessages => 'Ingen beskeder';

  @override
  String get writeMessageHint => 'Skriv en besked…';

  @override
  String get shareSomethingHint => 'Del noget…';

  @override
  String get all => 'Alle';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Antal';

  @override
  String get hoursWatched => 'Timer set';

  @override
  String get chaptersRead => 'Kapitler læst';

  @override
  String get meanScore => 'Gennemsnitlig karakter';

  @override
  String get noStatsYet => 'Ingen statistik endnu';

  @override
  String get totalEntries => 'Indslag i alt';

  @override
  String get episodesWatched => 'Afsnit set';

  @override
  String get daysWatched => 'Dage set';

  @override
  String get volumesRead => 'Bind læst';

  @override
  String get standardDeviation => 'Standardafvigelse';

  @override
  String get showMore => 'Vis mere';

  @override
  String get followsYou => 'Følger dig';

  @override
  String get nobodyYet => 'Ingen endnu';

  @override
  String get logInToLike => 'Log ind for at synes godt om';

  @override
  String get failedToLikeActivity => 'Kunne ikke synes godt om aktiviteten';

  @override
  String get deleteActivityConfirm => 'Slet aktivitet?';

  @override
  String get deletedActivity => 'Aktivitet slettet';

  @override
  String get failedToDeleteActivity => 'Kunne ikke slette aktiviteten';

  @override
  String get subscribed => 'Abonnerer';

  @override
  String get unsubscribed => 'Abonnerer ikke længere';

  @override
  String get failedToUpdateSubscription => 'Kunne ikke opdatere abonnementet';

  @override
  String get edit => 'Rediger';

  @override
  String get delete => 'Slet';

  @override
  String get likedBy => 'Syntes godt om';

  @override
  String get follow => 'Følg';

  @override
  String get nameCopied => 'Navn kopieret';

  @override
  String get followsEachOther => 'Følger hinanden';

  @override
  String get unfollow => 'Følg ikke længere';

  @override
  String get userIdCopied => 'Bruger-id kopieret';

  @override
  String get shareProfile => 'Del profil';

  @override
  String get copyUserId => 'Kopiér bruger-id';

  @override
  String get failedToDelete => 'Kunne ikke slette';

  @override
  String get failedToLike => 'Kunne ikke synes godt om';

  @override
  String get replies => 'Svar';

  @override
  String get reply => 'Svar';

  @override
  String get noRepliesYet => 'Ingen svar endnu';

  @override
  String get favouriteAnime => 'Favoritanime';

  @override
  String get favouriteManga => 'Favoritmanga';

  @override
  String get favouriteCharacters => 'Favoritkarakterer';

  @override
  String get favouriteStaff => 'Favoritstab';

  @override
  String get favouriteStudios => 'Favoritstudier';

  @override
  String get noFavouritesYet => 'Ingen favoritter endnu';

  @override
  String get yourStory => 'Din historie';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholderen';

  @override
  String get justNow => 'Lige nu';

  @override
  String get openImage => 'Åbn billede';

  @override
  String get hideSpoiler => 'Skjul spoiler';

  @override
  String get showSpoiler => 'Vis spoiler';

  @override
  String get status => 'Status';

  @override
  String get score => 'Karakter';

  @override
  String get started => 'Startet';

  @override
  String get completed => 'Færdig';

  @override
  String get private => 'Privat';

  @override
  String get hideFromStatusLists => 'Skjul fra statuslister';

  @override
  String get totalRepeats => 'Gensyn i alt';

  @override
  String get other => 'Andet';

  @override
  String get customLists => 'Brugerdefinerede lister';

  @override
  String get activeDays => 'Aktive dage';

  @override
  String get longestStreak => 'Længste stime';

  @override
  String get currentStreak => 'Nuværende stime';

  @override
  String get tapOrHoverDay => 'Tryk eller hold musen over en dag';

  @override
  String get less => 'Mindre';

  @override
  String get more => 'Mere';

  @override
  String epIn(int ep, String time) {
    return 'Afs. $ep om $time';
  }

  @override
  String get sectionLoading => 'Indlæser';

  @override
  String get querySize => 'Forespørgselsstørrelse';

  @override
  String get querySizeDesc =>
      'Én stor forespørgsel henter alle rækker (og en hel profil) på én gang. Delte forespørgsler sender en lille forespørgsel pr. række eller profildel: hver er hurtig, og delene dukker op, efterhånden som de kommer.';

  @override
  String get oneBig => 'Én stor';

  @override
  String get split => 'Delt';

  @override
  String get sectionSocial => 'Socialt';

  @override
  String get systemNotifications => 'Systemnotifikationer';

  @override
  String get feedLayout => 'Feed-layout';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown af $total vist – tryk for at vælge og ændre rækkefølge';
  }

  @override
  String labelSections(String label) {
    return '$label-sektioner';
  }

  @override
  String get accountOptions => 'Kontoindstillinger';

  @override
  String get anilistAccountOptions => 'AniList-kontoindstillinger';

  @override
  String get sectionPrivacy => 'Privatliv';

  @override
  String get hidePrivateEntries => 'Skjul private indslag';

  @override
  String get hidePrivateEntriesDesc =>
      'Hold indslag, der er markeret som private på AniList, ude af feedet';

  @override
  String get anilistExcludeList => 'Udeluk din liste';

  @override
  String get anilistExcludeListDesc =>
      'Skjul titler, du allerede har på din AniList, på anime- og mangasiderne';

  @override
  String get anilistProfile => 'AniList-profil';

  @override
  String get refreshFromAnilist => 'Opdater fra AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Kunne ikke opdatere AniList-indstillinger';

  @override
  String get sectionNames => 'Navne';

  @override
  String get titleLanguage => 'Titelsprog';

  @override
  String get titleLanguageDesc =>
      'Hvordan titler skrives overalt, fx Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Navne på stab og karakterer';

  @override
  String get sectionLists => 'Lister';

  @override
  String get scoreFormat => 'Karakterformat';

  @override
  String get sortListsBy => 'Sortér lister efter';

  @override
  String labelCustomLists(String label) {
    return 'Brugerdefinerede $label-lister';
  }

  @override
  String customListsCount(int count) {
    return '$count lister – tryk for at tilføje eller fjerne';
  }

  @override
  String get mergeActivities => 'Slå aktiviteter sammen';

  @override
  String minutesCount(int count) {
    return '$count min.';
  }

  @override
  String get timezone => 'Tidszone';

  @override
  String get notSet => 'Ikke angivet';

  @override
  String get airingNotifications => 'Notifikationer om udsendelser';

  @override
  String get airingNotificationsDesc =>
      'Få besked, når et afsnit af en fulgt serie sendes';

  @override
  String get displayAdultContent => 'Vis voksenindhold';

  @override
  String get displayAdultContentDesc =>
      'Tag 18+-titler med i browsing, søgning og feeds';

  @override
  String get restrictMessages => 'Begræns beskeder til dem, du følger';

  @override
  String get restrictMessagesDesc =>
      'Kun folk, du følger, kan sende dig beskeder';

  @override
  String get sectionServices => 'Tjenester';

  @override
  String get novel => 'Roman';

  @override
  String labelService(String label) {
    return '$label-tjeneste';
  }

  @override
  String nameSettings(String name) {
    return 'Indstillinger for $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Indstillinger fra $name-udvidelsesbroen';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name kunne ikke starte: $error';
  }

  @override
  String get importLists => 'Importér lister';

  @override
  String get importListsDesc =>
      'Fra Aniyomi-, Mihon / Tachiyomi- eller Kotatsu-backups';

  @override
  String get exportLists => 'Eksportér lister';

  @override
  String get exportListsDesc => 'Til en Aniyomi-, Mihon- eller Kotatsu-backup';

  @override
  String get sectionBrowse => 'Gennemse';

  @override
  String get readingTab => 'Læsefane';

  @override
  String get readingTabDesc => 'Hvilke udvidelser den tredje fane viser';

  @override
  String get firstTab => 'Første faneblad';

  @override
  String get firstTabDesc =>
      'Hvilke udvidelser viser den første fane. Vælg manga her og ny roman på læsefanen for at slippe anime fra baren';

  @override
  String get novelExtensions => 'Nye udvidelser';

  @override
  String get defaultFeed => 'Standardfeed';

  @override
  String get defaultFeedDesc => 'Hvilken liste en kilde åbner med';

  @override
  String noServiceSupports(String type) {
    return 'Ingen tjeneste understøtter $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded af $installed kilder indlæses';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Ingen udvidelsestjeneste understøtter $type her.';
  }

  @override
  String get loadDataFrom => 'Indlæs data fra';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Ingen installerede $type-kilder endnu.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Udvidelsen til $name er ikke installeret';
  }

  @override
  String get thisSource => 'denne kilde';

  @override
  String failedToAddRepository(String error) {
    return 'Kunne ikke tilføje repo: $error';
  }

  @override
  String installedType(String type) {
    return 'Installerede $type';
  }

  @override
  String availableType(String type) {
    return 'Tilgængelige $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Ingen installerede $type-udvidelser';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Ingen tilgængelige $type-udvidelser';
  }

  @override
  String get nothingToShowYet => 'Intet at vise endnu';

  @override
  String get addTitlesHint =>
      'Føj nogle titler til din liste, så dukker de op her.';

  @override
  String get couldntLoad => 'Kunne ikke indlæse';

  @override
  String get progressStyleHint =>
      'Pille og bjælke ligger over plakaten; udenfor viser det samme tal som ren tekst i stedet – vælg én.';

  @override
  String get nixManagedUpdate =>
      'Denne version administreres af Nix – kør \"nix flake update\" på din flake og byg igen i stedet for at opdatere herfra';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatisk opdatering mislykkedes ($error) – åbner downloadsiden i stedet';
  }

  @override
  String get unknownPreference => 'Ukendt indstilling';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Indstillingstype $type understøttes ikke';
  }

  @override
  String get notYetReleased => 'Endnu ikke udkommet';

  @override
  String get notStarted => 'Ikke startet';

  @override
  String get country => 'Land';

  @override
  String get sort => 'Sortér';

  @override
  String get chooseBackupDialog =>
      'Vælg en Aniyomi-, Mihon- eller Kotatsu-backup';

  @override
  String get importListsHint =>
      'Tag et bibliotek med fra Aniyomi, Mihon / Tachiyomi eller Kotatsu. Titler, covers, fremskridt og kategorier bevares.';

  @override
  String get chooseBackupFile => 'Vælg backupfil';

  @override
  String importAnimeCount(int count) {
    return 'Importér $count anime';
  }

  @override
  String importMangaCount(int count) {
    return 'Importér $count manga';
  }

  @override
  String get mergeWithExisting => 'Flet med eksisterende lister';

  @override
  String get mergeWithExistingDesc =>
      'Beholder det, du allerede har; slået fra erstatter matchende titler';

  @override
  String get chooseAnother => 'Vælg en anden';

  @override
  String get import => 'Importér';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Vælg, hvor backuppen skal gemmes';

  @override
  String savedPath(String path) {
    return 'Gemt $path';
  }

  @override
  String exportFailed(String error) {
    return 'Eksport mislykkedes: $error';
  }

  @override
  String get nothingInLocalLists => 'Intet på dine lokale lister endnu.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Eksporterer $anime anime og $manga manga fra dine lokale lister. Kotatsu understøtter kun manga.';
  }

  @override
  String get saveToFolder => 'Gem i mappe';

  @override
  String get formatAnimeManga => 'Anime og manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Kun manga · .tachibk';

  @override
  String get formatMangaZip => 'Kun manga · .zip';

  @override
  String get genres => 'Genrer';

  @override
  String get relations => 'Relationer';

  @override
  String get recommendations => 'Anbefalinger';

  @override
  String get openings => 'Åbninger';

  @override
  String get endings => 'Afslutninger';

  @override
  String get background => 'Baggrund';

  @override
  String get links => 'Links';

  @override
  String get rank => 'Rang';

  @override
  String get members => 'Medlemmer';

  @override
  String get favorites => 'Favoritter';

  @override
  String get episodes => 'Afsnit';

  @override
  String get chapters => 'Kapitler';

  @override
  String get volumes => 'Bind';

  @override
  String get format => 'Format';

  @override
  String get source => 'Kilde';

  @override
  String get duration => 'Varighed';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min. pr. afsnit';
  }

  @override
  String get rating => 'Aldersgrænse';

  @override
  String get studio => 'Studie';

  @override
  String get serialization => 'Serialisering';

  @override
  String get season => 'Sæson';

  @override
  String get year => 'år';

  @override
  String get filterAny => 'Enhver';

  @override
  String get broadcast => 'Sendetid';

  @override
  String get aired => 'Sendt';

  @override
  String get published => 'Udgivet';

  @override
  String get popularity => 'Popularitet';

  @override
  String get community => 'Fællesskab';

  @override
  String get watching => 'Ser';

  @override
  String get reading => 'Læser';

  @override
  String get dropped => 'Droppet';

  @override
  String get unfinished => 'Ufærdige';

  @override
  String get planned => 'Planlagt';

  @override
  String get trailers => 'Trailere';

  @override
  String get ratings => 'Vurderinger';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Titel';

  @override
  String get votes => 'Stemmer';

  @override
  String get watchedStat => 'Set';

  @override
  String get runtime => 'Spilletid';

  @override
  String get director => 'Instruktør';

  @override
  String get network => 'Netværk';

  @override
  String get certification => 'Certificering';

  @override
  String get airs => 'Sendes';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Indtjening';

  @override
  String get released => 'Udkom';

  @override
  String get tags => 'Tags';

  @override
  String get author => 'Forfatter';

  @override
  String get born => 'Født';

  @override
  String get died => 'Døde';

  @override
  String get birthplace => 'Fødested';

  @override
  String get department => 'afdeling';

  @override
  String get website => 'Hjemmeside';

  @override
  String get established => 'Grundlagt';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romaner';

  @override
  String get thisMonth => 'Denne måned';

  @override
  String get movies => 'Film';

  @override
  String get shows => 'Serier';

  @override
  String get moviesWatched => 'Film set';

  @override
  String get showsWatched => 'Shows set';

  @override
  String get moviesCollected => 'Film indsamlet';

  @override
  String get showsCollected => 'Viser indsamlet';

  @override
  String get rewatching => 'Ser igen';

  @override
  String get rereading => 'Læser igen';

  @override
  String get watchedStatus => 'Set';

  @override
  String get planning => 'Planlægger';

  @override
  String get paused => 'På pause';

  @override
  String get watch => 'Se';

  @override
  String get read => 'Læs';

  @override
  String get finished => 'Afsluttet';

  @override
  String get releasing => 'Udkommer nu';

  @override
  String get cancelled => 'Aflyst';

  @override
  String get hiatus => 'Pause';

  @override
  String get remove => 'Fjern';

  @override
  String syncToService(String service) {
    return 'Synkronisér til $service';
  }

  @override
  String syncedToService(String service) {
    return 'Synkroniseret til $service';
  }

  @override
  String get latestReleases => 'Seneste udgivelser';

  @override
  String get topRated => 'Bedst bedømt';

  @override
  String localSection(String title) {
    return '$title · Lokal';
  }

  @override
  String get localEntryNote =>
      'Denne titel findes kun på din lokale liste på denne enhed. Redigering er slået fra her, fordi det kan skabe konflikt med din kontoliste; du kan stadig fjerne den.';

  @override
  String get cardPresetPoster => 'Plakat';

  @override
  String get cardPresetCard => 'Kort';

  @override
  String get cardPresetCozy => 'Hyggelig';

  @override
  String get sortTopRated => 'Bedst bedømt';

  @override
  String get sortMostPopular => 'Mest populære';

  @override
  String get sortTrending => 'Trender';

  @override
  String get sortNewest => 'Nyeste';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Flest favoritter';

  @override
  String get anyCountry => 'Alle lande';

  @override
  String get orderScore => 'Karakter';

  @override
  String get orderTitle => 'Titel';

  @override
  String get orderLastUpdated => 'Sidst opdateret';

  @override
  String get orderLastAdded => 'Sidst tilføjet';

  @override
  String get never => 'Aldrig';

  @override
  String get always => 'Altid';

  @override
  String get scorePoint100 => '100 point';

  @override
  String get scorePoint10Decimal => '10 point med decimaler';

  @override
  String get scorePoint10 => '10 point';

  @override
  String get scorePoint5 => '5 stjerner';

  @override
  String get scorePoint3 => '3 smileys';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timer',
      one: '1 time',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uger',
      one: '1 uge',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Fortsæt';

  @override
  String get resumeSourceMissing =>
      'Installer kilden til denne titel for at fortsætte';

  @override
  String get resumeRemove => 'Fjern fra fortsæt';

  @override
  String resumeAt(String time) {
    return '$time tilbage';
  }

  @override
  String resumePage(int page, int total) {
    return 'Side $page af $total';
  }

  @override
  String get continueWatching => 'Fortsæt med at se';

  @override
  String get continueReading => 'Fortsæt med at læse';

  @override
  String get favouriteAnimeSection => 'Favoritanime';

  @override
  String get favouriteMangaSection => 'Favoritmanga';

  @override
  String get plannedAnime => 'Planlagt anime';

  @override
  String get plannedManga => 'Planlagt manga';

  @override
  String get completedAnime => 'Færdig anime';

  @override
  String get completedManga => 'Færdig manga';

  @override
  String get hiddenMedia => 'Skjulte medier';

  @override
  String get recentUpdates => 'Seneste opdateringer';

  @override
  String get trendingNow => 'Trender lige nu';

  @override
  String get popularThisSeason => 'Populære i denne sæson';

  @override
  String get trendingMovies => 'Trendende film';

  @override
  String get topRatedSeries => 'Bedst bedømte serier';

  @override
  String get mostFavouriteSeries => 'Mest favoritmarkerede serier';

  @override
  String get popularAnime => 'Populære anime';

  @override
  String get trendingManhwa => 'Trendende manhwa';

  @override
  String get trendingNovels => 'Trendende romaner';

  @override
  String get topRatedManga => 'Bedst bedømt manga';

  @override
  String get mostFavouriteManga => 'Mest favoritmarkerede manga';

  @override
  String get popularManga => 'Populær manga';

  @override
  String get topMovies => 'Top film';

  @override
  String get topOna => 'Top ONA';

  @override
  String get topOva => 'Top OVA';

  @override
  String get mostPopular => 'Mest populære';

  @override
  String get mostFavourite => 'Flest favoritter';

  @override
  String get upcoming => 'Kommende';

  @override
  String get topManga => 'Top manga';

  @override
  String get topManhwa => 'Top manhwa';

  @override
  String get topManhua => 'Top manhua';

  @override
  String get topNovels => 'Top romaner';

  @override
  String get topOneShots => 'Top one-shots';

  @override
  String get trendingMoviesToday => 'Trendende film i dag';

  @override
  String get trendingShowsToday => 'Trendende serier i dag';

  @override
  String get trendingMoviesWeek => 'Trendende film denne uge';

  @override
  String get trendingShowsWeek => 'Trendende serier denne uge';

  @override
  String get mostWatchedMoviesMonth => 'Mest sete film denne måned';

  @override
  String get mostWatchedShowsMonth => 'Mest sete serier denne måned';

  @override
  String get trendingThisWeek => 'Trender denne uge';

  @override
  String get mostWatchedThisMonth => 'Mest set denne måned';

  @override
  String get repoLinksAdded => 'Repo-links blev tilføjet!';

  @override
  String repoLinkConfirm(String url) {
    return 'Vil du tilføje dette lager?\n\n$url\n\nTilføj kun arkiver fra kilder, du har tillid til.';
  }

  @override
  String get errorGettingAnilistData =>
      'Fejl ved hentning af data fra AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'KOMMENTARER';

  @override
  String get playerNotAvailable => 'Afspilleren er der ikke endnu';

  @override
  String deepLinkInitialError(String error) {
    return 'Fejl ved hentning af det første deep link: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Fejl ved åbning af link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Dette link kan ikke åbnes: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Fejl ved åbning af link: $error';
  }

  @override
  String get forReleasingTitles => 'for titler, der udkommer nu';

  @override
  String get progress => 'Fremskridt';

  @override
  String get notes => 'Noter';

  @override
  String serviceNotFound(String id) {
    return 'Tjenesten \"$id\" blev ikke fundet';
  }

  @override
  String get glassEffectEnabled => 'Glaseffekt slået til';

  @override
  String get glassEffectDisabled => 'Glaseffekt slået fra';

  @override
  String get materialYouEnabled => 'Material You slået til';

  @override
  String get materialYouDisabled => 'Material You slået fra';

  @override
  String get darkModeEnabled => 'Mørk tilstand slået til';

  @override
  String get darkModeDisabled => 'Mørk tilstand slået fra';

  @override
  String get animeList => 'Animeliste';

  @override
  String get mangaList => 'Mangaliste';

  @override
  String ownerAnimeList(String owner) {
    return '${owner}s animeliste';
  }

  @override
  String ownerMangaList(String owner) {
    return '${owner}s mangaliste';
  }

  @override
  String get loadingList => 'Indlæser liste';

  @override
  String get earlier => 'Tidligere';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage siden',
      one: '1 dag siden',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timer siden',
      one: '1 time siden',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutter siden',
      one: '1 minut siden',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count min. siden';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count t. siden';
  }

  @override
  String daysAgoShort(int count) {
    return '$count d. siden';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count u. siden';
  }

  @override
  String get couldntLoadSource => 'Kunne ikke indlæse denne kilde';

  @override
  String get followers => 'Følgere';

  @override
  String couldntLoadTitle(String title) {
    return 'Kunne ikke indlæse $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Kunne ikke indlæse denne profil';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Foder';

  @override
  String get stats => 'Statistik';

  @override
  String get received => 'Modtaget';

  @override
  String get sent => 'Sendt';

  @override
  String get global => 'Globalt';

  @override
  String get couldntLoadPage => 'Kunne ikke indlæse denne side';

  @override
  String get couldntLoadAllDetails => 'Kunne ikke indlæse alle detaljer';

  @override
  String get series => 'Serier';

  @override
  String get studios => 'Studier';

  @override
  String get users => 'Brugere';

  @override
  String repositoriesTitle(String type) {
    return '$type-repos';
  }

  @override
  String get repositoryUrl => 'Repo-URL';

  @override
  String get downloadingRepository => 'Downloader repo…';

  @override
  String get noRepositories => 'Ingen repos tilføjet';

  @override
  String repoExtensionsCount(String count) {
    return '$count udvidelser';
  }

  @override
  String get searchExtensions => 'Søg i udvidelser...';

  @override
  String deletePluginTitle(String name) {
    return 'Slet $name?';
  }

  @override
  String get deletePluginMessage =>
      'Er du sikker på, at du vil slette dette plugin?';

  @override
  String pluginDeleted(String name) {
    return '$name slettet';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name findes ikke i det konfigurerede repo';
  }

  @override
  String get pluginFetchFailed => 'Kunne ikke hente plugin-info';

  @override
  String installPluginTitle(String name) {
    return 'Installer $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Størrelse: $size';
  }

  @override
  String get installedState => 'Installeret';

  @override
  String updatePluginTitle(String name) {
    return 'Opdater $name';
  }

  @override
  String get errorLabel => 'Fejl:';

  @override
  String get stackTraceDetails => 'Detaljer (stack trace)';

  @override
  String get shareLogFile => 'Del logfil';

  @override
  String get copyLogs => 'Kopiér logs';

  @override
  String noListToEdit(String service) {
    return '$service har ingen liste at redigere';
  }

  @override
  String get couldNotReadFile => 'Kunne ikke læse den fil';

  @override
  String importedSummary(int anime, int manga) {
    return 'Importerede $anime anime og $manga manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count fandtes allerede';
  }

  @override
  String get airingNow => 'Sendes nu';

  @override
  String get topRatedMovies => 'Bedst bedømte film';

  @override
  String get koreanDramas => 'Koreanske dramaer';

  @override
  String get chineseDramas => 'Kinesiske dramaer';

  @override
  String get japaneseDramas => 'Japanske dramaer';

  @override
  String get thaiDramas => 'Thailandske dramaer';

  @override
  String get turkishDramas => 'Tyrkiske dramaer';

  @override
  String get miniSeries => 'Miniserier';

  @override
  String get topRatedShows => 'Bedst bedømte serier';

  @override
  String get recommendedSection => 'Anbefalet';

  @override
  String get syncRow => 'Synkronisér lister';

  @override
  String get syncRowDesc => 'Spejl én tjenestes liste over på dine andre konti';

  @override
  String get syncTitle => 'Synkronisér';

  @override
  String get syncMainService => 'Hovedtjeneste';

  @override
  String get syncMainServiceDesc =>
      'Dens liste er sandheden; alle andre tjenester, du er logget ind på, opdateres, så de matcher';

  @override
  String get syncAuto => 'Autosynkronisering';

  @override
  String get syncAutoDesc =>
      'Hent og synkronisér i baggrunden, når appen åbnes og hvert 30. minut';

  @override
  String get syncAddMissing => 'Tilføj manglende indslag';

  @override
  String get syncAddMissingDesc =>
      'Tilføj også indslag, som den anden tjeneste endnu ikke har';

  @override
  String syncServiceOn(String name) {
    return 'Synkroniser med $name';
  }

  @override
  String get syncDelete => 'Slet hvad hovedtjenesten ikke har';

  @override
  String get syncDeleteDesc =>
      'Fjern poster fra de andre tjenester, der ikke er på hovedlisten. Kun poster, der kan matches til en titel, fjernes, så ting som Simkl-film og serier bliver';

  @override
  String get syncDeleteTitle => 'Vil du slette poster?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster',
      one: '1 indgang',
    );
    return '$_temp0 som ikke er på din hovedliste vil blive slettet fra de andre tjenester. Dette kan ikke fortrydes.';
  }

  @override
  String get syncDeleteAction => 'Slet';

  @override
  String get syncToDelete => 'At slette';

  @override
  String get syncDeletedNote => 'Vil blive slettet';

  @override
  String syncWillRemove(int count, String name) {
    return '$count vil blive slettet fra $name';
  }

  @override
  String get syncOnlyForward => 'Behold længste fremskridt';

  @override
  String get syncOnlyForwardDesc =>
      'Sæt ikke fremskridtet ned på en tjeneste, der allerede er længere fremme';

  @override
  String get animePlanetWontWatch => 'Vil ikke se';

  @override
  String get animePlanetWontRead => 'Vil ikke læse';

  @override
  String get animePlanetAlreadyOnList => 'Allerede på denne liste';

  @override
  String get animePlanetNewList => 'Nyt listenavn';

  @override
  String get syncPrivate => 'Private indtastninger';

  @override
  String get syncPrivateDesc =>
      'Hvad skal du gøre med poster, du holder private. En tjeneste med en privat mulighed gør dem private; andre ville vise dem offentligt';

  @override
  String get syncPrivateModeAsk => 'Spørg';

  @override
  String get syncPrivateModeSync => 'Synkroniser dem';

  @override
  String get syncPrivateModeSkip => 'Spring dem over';

  @override
  String get syncPrivateTitle => 'Private indtastninger';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster er private',
      one: '1 post er privat',
    );
    return '$_temp0. Tjenester med en privat mulighed (AniList, Kitsu, MangaBaka) vil få dem som private; de andre tjenester har ingen privat mulighed og vil vise dem offentligt. Synkronisere dem? Dit svar huskes; ændre det under Synkroniseringsindstillinger.';
  }

  @override
  String get syncPrivateInclude => 'Synkroniser dem';

  @override
  String get syncPrivateSkip => 'Spring dem over';

  @override
  String get syncFetch => 'Hent';

  @override
  String get syncFetchAgain => 'Hent igen';

  @override
  String get syncAll => 'Synkronisér alle';

  @override
  String get syncStop => 'Stop';

  @override
  String get syncResume => 'Fortsæt';

  @override
  String get syncNothingToSync =>
      'Denne tjeneste kan ikke synkroniseres for denne type';

  @override
  String get syncNoTargets =>
      'Log ind på en anden tjeneste for at synkronisere med';

  @override
  String get syncLoadingMap => 'Indlæser ID-mapping';

  @override
  String get syncComparing => 'Sammenligner lister';

  @override
  String get syncIntro =>
      'Vælg en hovedtjeneste og tryk på Hent. Hver tjeneste spørges én gang om din liste og sammenlignes så med hovedtjenesten.';

  @override
  String get syncStateSynced => 'Synkroniseret';

  @override
  String get syncStateOutdated => 'Ikke synkroniseret';

  @override
  String get syncStateMissing => 'Ikke på listen';

  @override
  String get syncStateUnmapped => 'Intet match';

  @override
  String syncPaused(String time) {
    return 'Venter på grænsen for forespørgsler, fortsætter om $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count kun på $name, urørt';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done af $total';
  }

  @override
  String get syncNothingHere => 'Intet at vise';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used af $max forespørgsler brugt pr. $window';
  }

  @override
  String get syncMinute => 'minut';

  @override
  String get syncDay => 'dag';

  @override
  String get syncNotInList => 'Endnu ikke på listen';

  @override
  String get syncCleared => 'Plan ryddet';

  @override
  String get syncClear => 'Ryd';

  @override
  String get syncOptions => 'Valgmuligheder';

  @override
  String get syncShared => 'Deler indslag med et andet element';

  @override
  String syncNotFound(String service) {
    return 'Ikke fundet på $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Synkronisér $service ($count)';
  }

  @override
  String get syncOnEdit => 'Synkronisér ændringer med det samme';

  @override
  String get syncOnEditDesc =>
      'Send hver fremskridtsopdatering og listeredigering til dine andre tjenester med det samme';

  @override
  String syncRemoved(String services) {
    return 'Fjernet fra $services';
  }

  @override
  String syncPushed(String services) {
    return 'Synkroniseret til $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Grænsen for forespørgsler er nået, prøv igen om lidt';

  @override
  String get syncAhead => 'Den der er længst fremme';

  @override
  String get syncAheadDesc =>
      'Begge veje: for hver titel vinder det indslag, der er længst fremme, og kopieres til alle dine andre tjenester';

  @override
  String syncAheadFrom(String service) {
    return 'Fra $service';
  }

  @override
  String get syncConfirm => 'Gennemgå før synkronisering';

  @override
  String get syncConfirmDesc =>
      'Vis, hvad Synkronisér alle ændrer, og hvor mange forespørgsler det kræver';

  @override
  String get syncPreviewTitle => 'Klar til synkronisering';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates opdateringer, $adds at tilføje';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Omkring $count forespørgsler';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count id\'er skal slås op først';
  }

  @override
  String get syncPreviewNothing => 'Intet at ændre';

  @override
  String get syncStart => 'Start';

  @override
  String get syncRetry => 'Prøv igen';

  @override
  String get syncSkip => 'Spring dette over';

  @override
  String get syncInclude => 'Tag dette med igen';

  @override
  String get syncSkippedLabel => 'Sprunget over';

  @override
  String get syncChanges => 'Forskelle';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Fremskridt';

  @override
  String get syncChangeScore => 'Karakter';

  @override
  String get syncChangeDates => 'Datoer';

  @override
  String get syncChangeRepeat => 'Antal gensyn';

  @override
  String get syncFailedReason => 'Hvorfor det mislykkedes';

  @override
  String get syncSkippedHint =>
      'Elementer, der er sprunget over, røres ikke, heller ikke efter en ny hentning';

  @override
  String get commentsRules => 'Kommentarregler';

  @override
  String get commentsRulesBody =>
      'BRYD EN REGEL = DU ER VÆK\n\n1. Ingen racisme, diskrimination eller hadefulde ytringer\n2. Ingen spam eller selvpromovering\n3. Absolut intet NSFW-indhold\n4. Kun engelsk, ingen undtagelser\n5. Ingen efterligning, chikane eller misbrug\n6. Intet ulovligt indhold eller ekstrem respektløshed over for noget fandom\n7. Bed ikke om og del ikke repos eller udvidelser\n8. Spoilere kun med spoiler-tags og en advarsel\n9. Ingen seksualisering eller upassende kommentarer om mindreårige karakterer\n10. Hvis det er forkert, så lad være med at skrive det!';

  @override
  String get commentsRulesAccept => 'Jeg forstår';

  @override
  String get commentsSortNewest => 'Nyeste';

  @override
  String get commentsSortOldest => 'Ældste';

  @override
  String get commentsSortHighest => 'Højest bedømt';

  @override
  String get commentsSortLowest => 'Lavest bedømt';

  @override
  String commentsEpisodeShort(int number) {
    return 'Afs. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Kap. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filtrér efter afsnit';

  @override
  String get commentsFilterChapterTitle => 'Filtrér efter kapitel';

  @override
  String get commentsFilterTagTitle => 'Skriv et afsnits- eller kapitelnummer';

  @override
  String get commentsFilterHint => 'Nummer';

  @override
  String get commentsFilterApply => 'Filtrér';

  @override
  String get commentsFilterClear => 'Vis alle';

  @override
  String get commentsPlaceholder => 'Skriv en kommentar…';

  @override
  String commentsReplyingTo(String name) {
    return 'Svarer $name';
  }

  @override
  String get commentsSend => 'Send';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (valgfrit)';
  }

  @override
  String get commentsTagEpisode => 'afsnit';

  @override
  String get commentsTagChapter => 'kapitel';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Nummer på $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Tagget kan ikke være højere end totalen ($total)';
  }

  @override
  String get commentsNoTag => 'Intet tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Søg efter GIF\'er';

  @override
  String get commentsGifEmpty => 'Ingen GIF\'er fundet';

  @override
  String get commentsEmptyText => 'Kommentaren må ikke være tom';

  @override
  String get commentsBannedYou => 'Du er udelukket fra at kommentere';

  @override
  String get commentsEdited => 'Kommentar redigeret';

  @override
  String get commentsDeleted => 'Kommentar slettet';

  @override
  String get commentsDeletedPlaceholder => '[slettet]';

  @override
  String get commentsReported => 'Kommentar anmeldt';

  @override
  String get commentsUserBanned => 'Bruger udelukket';

  @override
  String get commentsReport => 'Anmeld';

  @override
  String get commentsReportAsk =>
      'Vil du anmelde denne kommentar til moderatorerne?';

  @override
  String get commentsDelete => 'Slet';

  @override
  String get commentsDeleteAsk => 'Denne kommentar bliver fjernet for alle.';

  @override
  String get commentsBan => 'Udeluk';

  @override
  String get commentsBanAsk =>
      'Vil du udelukke denne bruger fra at kommentere?';

  @override
  String get commentsCopy => 'Kopiér';

  @override
  String get commentsViewReply => 'Se 1 svar';

  @override
  String commentsViewReplies(int count) {
    return 'Se $count svar';
  }

  @override
  String get commentsHideReplies => 'Skjul svar';

  @override
  String get commentsLoadMore => 'Indlæs flere kommentarer';

  @override
  String get commentsEmpty => 'Ingen kommentarer endnu. Vær den første!';

  @override
  String get commentsEmptyFiltered => 'Ingen kommentarer til dette filter';

  @override
  String get commentsSignIn =>
      'Log ind på AniList for at læse og skrive kommentarer';

  @override
  String get commentsSignInMessage =>
      'Kommentarer deles mellem alle tjenester og bruger din AniList-konto.';

  @override
  String get commentsUnavailable =>
      'Kommentarer er ikke tilgængelige for denne titel';

  @override
  String get commentsUnavailableMessage =>
      'Den kunne ikke matches med et AniList-indslag.';

  @override
  String get commentsDisabled => 'Kommentarer er slået fra';

  @override
  String get commentsDisabledMessage =>
      'Du kan slå dem til igen under Indstillinger › Generelt.';

  @override
  String get commentsOffline => 'Kunne ikke indlæse kommentarer';

  @override
  String get commentsSingleTitle => 'Viser én kommentar';

  @override
  String get commentsShowAll => 'Vis alle kommentarer';

  @override
  String get commentsSettingsHeader => 'Kommentarer';

  @override
  String get commentsSettingEnabled => 'Kommentarer';

  @override
  String get commentsSettingEnabledDesc =>
      'Vis fanen Kommentarer på titler og log ind på kommentarserveren med din AniList-konto';

  @override
  String get commentsSettingAlerts => 'Notifikationer om svar';

  @override
  String get commentsSettingAlertsDesc =>
      'Giv mig besked, når nogen svarer på mine kommentarer';

  @override
  String get commentsNoticeReplyTitle => 'Nyt svar på kommentar';

  @override
  String commentsNoticeReply(String name) {
    return '$name svarede på din kommentar';
  }

  @override
  String get commentsNoticeWarningTitle => 'Du har fået en advarsel';

  @override
  String get commentsNoticeWarning =>
      'Vær mere eftertænksom med dine kommentarer';

  @override
  String get commentsNoticeUpdateTitle => 'Opdatering fra Dantotsu';

  @override
  String get barcodeTitle => 'Scan en stregkode';

  @override
  String get barcodeTooltip => 'Find en manga eller roman via dens stregkode';

  @override
  String get barcodeIntro =>
      'Ret kameraet mod stregkoden bag på et bind, eller skriv dets ISBN.';

  @override
  String get barcodeIntroManual =>
      'Skriv det ISBN, der står over stregkoden bag på et bind.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Det er ikke et gyldigt ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Ingen bog fundet for $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kameraet er ikke tilgængeligt. Tillad kameraadgang, eller skriv ISBN i stedet.';

  @override
  String get themesTitle => 'Åbninger & afslutninger';

  @override
  String get themesPlayVideo => 'Afspil video';

  @override
  String get themesPlayAudio => 'Afspil kun lyd';

  @override
  String get themesOpenSite => 'Åbn på AnimeThemes';

  @override
  String get themesCredit => 'Temaer fra AnimeThemes';

  @override
  String get themesVersions => 'Versioner';

  @override
  String get sauceTitle => 'Find kilden';

  @override
  String get sauceIntro =>
      'Upload en mangaside eller et kunstværk, eller indsæt et link, for at finde ud af, hvor det kommer fra.';

  @override
  String get sauceKeyTitle => 'SauceNAO API-nøgle';

  @override
  String get sauceKeyHint => 'Valgfrit, hæver den daglige søgegrænse';

  @override
  String get sauceKeyDesc => 'Få en gratis nøgle på saucenao.com/user.php';

  @override
  String get sauceOpen => 'Åbn kilde';

  @override
  String get sauceCredit => 'Billedsøgning af SauceNAO';

  @override
  String get sauceEmpty => 'Ingen match fundet';

  @override
  String get sauceTooltip => 'Find kilden til en mangaside eller et kunstværk';

  @override
  String get trendzTitle => 'Anime-hitlister';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Kvindelige karakterer';

  @override
  String get trendzMale => 'Mandlige karakterer';

  @override
  String get trendzCouple => 'Par';

  @override
  String get trendzCredit => 'Ugentlige hitlister fra AniTrendz';

  @override
  String get trendzNew => 'NY';

  @override
  String get trendzEmpty => 'Hitlisten er tom';

  @override
  String get shareCard => 'Delingskort';

  @override
  String get shareCardList => 'Del listekort';

  @override
  String get shareCardSaved => 'Kort gemt';

  @override
  String get shareCardFailed => 'Kunne ikke lave kortet';

  @override
  String get shareCardListEmpty => 'Din liste har ikke noget at dele endnu';

  @override
  String get shareCardTop => 'Mine favoritter';

  @override
  String themesEpisodes(String eps) {
    return 'Afsnit $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent % match';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Uge $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count stemmer';
  }

  @override
  String trendzPeak(String rank) {
    return 'Højdepunkt #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count uger i top ti';
  }

  @override
  String get imageSearchTitle => 'Søg med billede';

  @override
  String get imageSearchTooltip => 'Find en anime ud fra et skærmbillede';

  @override
  String get imageSearchIntro =>
      'Vælg et skærmbillede eller indsæt et billedlink, så finder trace.moe afsnittet og øjeblikket, det stammer fra.';

  @override
  String get imageSearchPick => 'Vælg billede';

  @override
  String get imageSearchLinkHint => 'Indsæt et billedlink';

  @override
  String get imageSearchGo => 'Søg';

  @override
  String get imageSearchEmpty => 'Ingen match fundet';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Afsnit $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'ved $time';
  }

  @override
  String get imageSearchPreview => 'Forhåndsvis klip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent % match';
  }

  @override
  String get imageSearchCredit => 'Drevet af trace.moe';

  @override
  String get imageSearchOpenFailed => 'Kunne ikke åbne denne titel';

  @override
  String get groups => 'Grupper';

  @override
  String get groupsYours => 'Dine grupper';

  @override
  String get groupsPopular => 'Populære';

  @override
  String get groupsNew => 'Nye';

  @override
  String get groupsFeatured => 'Udvalgte';

  @override
  String get groupsSearch => 'Søg i grupper';

  @override
  String get groupsAll => 'Alle';

  @override
  String get groupsEmpty => 'Ingen grupper fundet';

  @override
  String get groupsEmptyYours => 'Du har ikke tilmeldt dig nogen grupper endnu';

  @override
  String get groupsSignIn => 'Log ind for at se de grupper, du er med i';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count medlemmer',
      one: '1 medlem',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Tilmeld';

  @override
  String get groupsJoined => 'Tilmeldt';

  @override
  String get groupsLeave => 'Forlad gruppe';

  @override
  String get groupsLeaveAsk =>
      'Du ser ikke længere denne gruppes opslag i dit feed.';

  @override
  String get groupsJoinFailed =>
      'Kunne ikke tilmelde dig gruppen, den er måske kun for inviterede';

  @override
  String get groupsLeaveFailed => 'Kunne ikke forlade gruppen';

  @override
  String get groupsPosts => 'Opslag';

  @override
  String get groupsMembersTab => 'Medlemmer';

  @override
  String get groupsAbout => 'Om';

  @override
  String get groupsRules => 'Regler';

  @override
  String get groupsPrivacyOpen => 'Åben';

  @override
  String get groupsPrivacyRestricted => 'Begrænset';

  @override
  String get groupsPrivacyClosed => 'Lukket';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Kunne ikke indlæse denne gruppe';

  @override
  String get groupsNewPost => 'Slå op i gruppen';

  @override
  String get groupsPostHint => 'Del noget med gruppen';

  @override
  String get groupsOpenInBrowser => 'Åbn i browser';

  @override
  String get groupsCategory => 'Kategori';

  @override
  String get groupsLanguage => 'Sprog';

  @override
  String get groupsCreated => 'Oprettet';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ledere',
      one: '1 leder',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privatliv';

  @override
  String get notificationsAll => 'Alle';

  @override
  String get notificationsAiring => 'Sendes';

  @override
  String get notificationsMedia => 'Nye titler';

  @override
  String get notificationsReplies => 'Svar';

  @override
  String get notificationsMentions => 'Omtaler';

  @override
  String get notificationsMessages => 'Beskeder';

  @override
  String get notificationsLikes => 'Synes godt om';

  @override
  String get notificationsFollows => 'Følger';

  @override
  String get notificationsNoServices =>
      'Ingen af de tjenester, du er logget ind på, har notifikationer';

  @override
  String get notificationsNoServicesMessage =>
      'Log ind på en tjeneste, der sender notifikationer, så dukker de op her.';

  @override
  String get notificationsEmptyKind => 'Intet i denne kategori endnu';

  @override
  String get notificationsCommentsEmpty => 'Ingen kommentarnotifikationer';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Svar på dine kommentarer og meddelelser fra Dantotsu dukker op her.';

  @override
  String get notificationsSettings => 'Notifikationsindstillinger';

  @override
  String get notificationsPollTitle => 'Tjek for nye notifikationer';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Hvert $minutes. minut, mens appen er åben';
  }

  @override
  String get notificationsNotifyAbout => 'Giv mig besked om';

  @override
  String get notificationsCommentsHeader => 'Kommentarnotifikationer';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Vis en systemnotifikation for hver ulæst $service-notifikation, mens appen kører.';
  }

  @override
  String get notificationsTestSent => 'Testnotifikation sendt';

  @override
  String get notificationsTestDenied =>
      'Notifikationer er ikke tilladt for Dartotsu. Slå dem til i systemindstillingerne.';

  @override
  String get notificationsTestHint =>
      'Tryk og hold for at sende en testnotifikation';

  @override
  String get notificationsTestSample => 'Det her er en testnotifikation';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name svarede på din kommentar i $media';
  }

  @override
  String get imageSearchNotLink => 'Det ligner ikke et link';

  @override
  String get imageSearchQuota => 'Søgekvoten er overskredet';

  @override
  String get imageSearchBusy => 'For mange forespørgsler, prøv igen om lidt';

  @override
  String imageSearchFailed(int code) {
    return 'Søgningen mislykkedes ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count nye notifikationer';
  }

  @override
  String get reactionsTitle => 'Reaktioner';

  @override
  String get reactionsNeedEntry =>
      'Føj denne titel til din liste, før du reagerer';

  @override
  String get reactionsAdd => 'Tilføj en reaktion';

  @override
  String get reactionsHint => 'Hvad syntes du? (kort og uden spoilere)';

  @override
  String get reactionsPost => 'Slå op';

  @override
  String get reactionsFailed => 'Kunne ikke opdatere reaktionen';

  @override
  String get settingsWatch => 'Se & læs';

  @override
  String get settingsWatchDesc =>
      'Afsnitslister, kildematch og afsnitsdetaljer';

  @override
  String get watchSettingsLayout => 'Afsnitsliste';

  @override
  String get watchSettingsSources => 'Kilder';

  @override
  String get watchSettingsMetadata => 'Afsnitsdetaljer';

  @override
  String get watchLayout => 'Layout';

  @override
  String get watchListView => 'Liste';

  @override
  String get watchGridView => 'Gitter';

  @override
  String get watchCompactView => 'Kompakt';

  @override
  String get watchDefaultLayoutDesc =>
      'Hvordan afsnit og kapitler vises, indtil du ændrer det for en titel';

  @override
  String get watchChunkSize => 'Intervalstørrelse';

  @override
  String get watchChunkSizeDesc =>
      'Hvor mange afsnit eller kapitler hver intervalfane rummer';

  @override
  String get watchShowDescription => 'Vis beskrivelser';

  @override
  String get watchShowDescriptionDesc =>
      'Vis afsnitsresuméet under hver titel i listelayoutet';

  @override
  String get watchShowFiller => 'Vis fillerafsnit';

  @override
  String get watchShowFillerDesc =>
      'Slå fra for at skjule afsnit markeret som filler';

  @override
  String get watchBlurUnwatched => 'Skjul spoilerminiaturer';

  @override
  String get watchBlurUnwatchedDesc =>
      'Slør miniaturen på afsnit, du ikke har set endnu';

  @override
  String get watchResumeShelf => 'Fortsæt-hylde';

  @override
  String get watchResumeShelfDesc => 'Vis rækken Fortsæt på forsiden';

  @override
  String get watchMarkOnLongPress => 'Tryk og hold markerer fremskridt';

  @override
  String get watchMarkOnLongPressDesc =>
      'Tryk og hold på et afsnit eller kapitel for at markere det som set eller uset';

  @override
  String get watchMatching => 'Kildematch';

  @override
  String get watchMatchingDesc =>
      'Tætteste tager det bedste søgeresultat. Kun nøjagtigt accepterer kun en næsten identisk titel og overlader resten til dig.';

  @override
  String get watchMatchClosest => 'Tætteste match';

  @override
  String get watchMatchExact => 'Kun nøjagtigt match';

  @override
  String get watchMetadataDesc =>
      'Hvor afsnitstitler, resuméer, miniaturer, sendedatoer og filler-markeringer kommer fra. Træk for at sætte prioritet; den første kilde med en værdi vinder.';

  @override
  String get watchMetaAniZipDesc =>
      'Afsnitstitler, resuméer, stills og sendedatoer';

  @override
  String get watchMetaKitsuDesc => 'Afsnitstitler, beskrivelser og miniaturer';

  @override
  String get watchMetaSimklDesc =>
      'Afsnitstitler, beskrivelser, stills og sendedatoer';

  @override
  String get watchMetaAniListDesc =>
      'Streamede afsnitstitler, miniaturer og sendeplanen';

  @override
  String get watchMetaTenraiDesc =>
      'MyAnimeList-afsnitstitler, sendedatoer, filler- og recap-markeringer via Tenrai';

  @override
  String get watchClearMetadata => 'Opdater afsnitsdetaljer';

  @override
  String get watchClearMetadataDesc =>
      'Glem de cachede afsnitsdetaljer, så de hentes igen';

  @override
  String get watchMetadataCleared => 'Afsnitsdetaljer hentes igen';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afsnit',
      one: '1 afsnit',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kapitler',
      one: '1 kapitel',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Afsnit $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Kapitel $number';
  }

  @override
  String get watchSearching => 'Søger…';

  @override
  String watchSearchingFor(String term) {
    return 'Søger: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Valgt: $title';
  }

  @override
  String watchFound(String title) {
    return 'Fundet: $title';
  }

  @override
  String get watchNothingFound => 'Intet fundet i denne kilde';

  @override
  String get watchSearchFailed => 'Kildesøgningen mislykkedes';

  @override
  String get watchLoadFailed => 'Kunne ikke indlæse listen';

  @override
  String get watchSignInToTrack => 'Log ind for at følge dine fremskridt';

  @override
  String watchInstallSource(String action) {
    return 'Installer en udvidelse for at begynde at $action';
  }

  @override
  String get watchSourceMissing => 'Denne kilde er ikke installeret';

  @override
  String get watchWrongTitle => 'Forkert titel?';

  @override
  String get watchSearchAgain => 'Søg igen';

  @override
  String watchSearchSource(String source) {
    return 'Søg i $source';
  }

  @override
  String get watchSource => 'Kilde';

  @override
  String get sourceTags => 'Tags';

  @override
  String get sourceTagsHint =>
      'Tag hvad denne kilde er til. En titel viser først de kilder, der er tagget for den, og derefter de ikke-taggede. 18+ kilder vises kun for voksne titler.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Film og serier';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Skjult af tags';

  @override
  String get watchOptions => 'Valgmuligheder';

  @override
  String get watchReverse => 'Omvendt rækkefølge';

  @override
  String get watchScanlators => 'Grupper';

  @override
  String get watchResetOptions => 'Nulstil disse valgmuligheder';

  @override
  String get watchContinue => 'Fortsæt';

  @override
  String get watchStart => 'Start';

  @override
  String get watchPlay => 'Afspil';

  @override
  String get watchRead => 'Læs';

  @override
  String get watchMarkWatched => 'Markér som set';

  @override
  String get watchMarkUnwatched => 'Markér som uset';

  @override
  String get watchMarkRead => 'Markér som læst';

  @override
  String get watchMarkUnread => 'Markér som ulæst';

  @override
  String get watchFiller => 'Fyldstof';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Ingen afsnit fundet';

  @override
  String get watchNoChapters => 'Ingen kapitler fundet';

  @override
  String get watchSourceTools => 'Kildeværktøjer';

  @override
  String get watchSourceSettings => 'Kildeindstillinger';

  @override
  String get watchOpenWebView => 'Åbn i webvisning';

  @override
  String get watchOpenWebViewDesc =>
      'Løs en Cloudflare-kontrol eller log ind; cookies deles med kildens forespørgsler';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies gemt for $host',
      one: '1 cookie gemt for $host',
      zero: 'Ingen cookies gemt for $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare-godkendelse aktiv, $time';
  }

  @override
  String get watchClearanceMissing => 'Ingen Cloudflare-godkendelsescookie';

  @override
  String get watchClearanceSession => 'varer, til appen lukkes';

  @override
  String get watchAgentShared =>
      'Forespørgsler bruger webvisningens user agent, som Cloudflare tjekker';

  @override
  String get watchAgentCustom =>
      'Der er angivet en brugerdefineret user agent, så en Cloudflare-godkendelse fra webvisningen kan blive afvist';

  @override
  String get watchTestConnection => 'Test forbindelsen';

  @override
  String get watchSolveChallenge => 'Løs det';

  @override
  String watchProbeOk(int code) {
    return 'Kan nås (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare beder stadig om en kontrol';

  @override
  String watchProbeBlocked(int code) {
    return 'Blokeret af siden (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Siden kunne ikke nås';

  @override
  String get watchClearCookies => 'Ryd cookies for denne side';

  @override
  String get watchCookiesCleared => 'Cookies ryddet';

  @override
  String get watchFailTimeout => 'Checken sluttede ikke i tide';

  @override
  String get watchFailBlocked =>
      'Webstedet blokerede denne enhed (adgang nægtet). En check hjælper ikke';

  @override
  String get watchFailTurnstile =>
      'Denne kontrol kræver et tryk, som baggrundsløseren ikke kan udføre';

  @override
  String get watchFailLoad =>
      'Siden blev ikke indlæst. Tjek forbindelsen og webstedets adresse';

  @override
  String get watchFailRejected =>
      'Webstedet afviste den godkendelse, det netop har givet. Prøv igen eller ryd cookies';

  @override
  String get watchFailDismissed => 'Checken blev lukket, før den sluttede';

  @override
  String get watchFailCooldown =>
      'Du lukkede checken for et øjeblik siden. Tryk på Løs det for at prøve igen';

  @override
  String get watchFailQuiet =>
      'Checken har brug for dig, og appen fungerede af sig selv';

  @override
  String get watchFailWebView => 'Baggrundswebvisningen kunne ikke starte';

  @override
  String get watchFailUnavailable => 'Der er ingen skærm at vise checken på';

  @override
  String get watchStatusReady => 'Klar';

  @override
  String get watchStatusChallenge => 'Cloudflare-tjek påkrævet';

  @override
  String get watchStatusBlocked => 'Blokeret af siden';

  @override
  String get watchStatusOffline => 'Kan ikke nå siden';

  @override
  String get watchStatusUntested => 'Ikke testet endnu';

  @override
  String get watchStatusTesting => 'Tester forbindelsen...';

  @override
  String get watchStatusSolving => 'Består Cloudflare-tjekket...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare-tjek bestået i baggrunden ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare-tjek bestået';

  @override
  String watchClearanceIssued(String time) {
    return 'optjent $time';
  }

  @override
  String get watchClearanceStale =>
      'Godkendelsen blev opnået med en anden brugeragent, så den sendes ikke. Test forbindelsen for at få en ny';

  @override
  String get watchSectionConnection => 'Forbindelse';

  @override
  String get watchSectionSession => 'Session';

  @override
  String get watchSectionTools => 'Værktøjer';

  @override
  String get watchMetaSource => 'Afsnitsdetaljer fra';

  @override
  String get watchMetaAuto => 'Automatisk';

  @override
  String get watchMetaOff => 'Fra';

  @override
  String get playerSettingsTitle => 'Afspillerindstillinger';

  @override
  String get playerSectionPlayback => 'Afspilning';

  @override
  String get playerSectionSkip => 'Spring over';

  @override
  String get playerSectionGestures => 'Kontroller';

  @override
  String get playerSectionSubtitles => 'Undertekster';

  @override
  String get playerSectionShaders => 'Shaders';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Afspilningshastighed';

  @override
  String get localSource => 'Lokale filer';

  @override
  String get localMissing =>
      'Denne fil eller mappe er ikke længere i din lokale mappe';

  @override
  String get playerStickyStage => 'Sticky video';

  @override
  String get playerStickyStageDesc =>
      'Hold videoen fast øverst, mens du scroller i afsnittene og kommentarerne nedenfor';

  @override
  String get playerCursedSpeed => 'Ekstra hastigheder';

  @override
  String get playerCursedSpeedDesc => 'Tilføj hastigheder op til 10x på listen';

  @override
  String get playerResize => 'Størrelsestilstand';

  @override
  String get playerFitFit => 'Tilpas';

  @override
  String get playerFitCover => 'Dæk';

  @override
  String get playerFitStretch => 'Stræk';

  @override
  String get playerSkipDuration => 'Længde på knappen Spring over';

  @override
  String get playerSkipDurationDesc =>
      'Sekunder, knappen Spring over hopper uden for åbninger og afslutninger';

  @override
  String get playerSeekDuration => 'Dobbelttryk for at spole';

  @override
  String get playerSeekDurationDesc =>
      'Sekunder at hoppe ved dobbelttryk eller piletast';

  @override
  String get playerAutoPlay => 'Afspil næste automatisk';

  @override
  String get playerAutoPlayDesc => 'Start næste afsnit, når dette er slut';

  @override
  String get playerResume => 'Fortsæt, hvor du slap';

  @override
  String get playerResumeDesc => 'Fortsæt et afsnit fra sidste position';

  @override
  String get playerOrientation => 'Orientering';

  @override
  String get playerOrientationAuto => 'Følg enheden';

  @override
  String get playerOrientationLandscape => 'Liggende';

  @override
  String get playerOrientationPortrait => 'Stående';

  @override
  String get playerAutoSkipOpening => 'Spring åbninger over';

  @override
  String get playerAutoSkipEnding => 'Spring afslutninger over';

  @override
  String get playerAutoSkipRecap => 'Spring recaps over';

  @override
  String get playerAutoSkipDesc =>
      'Hop forbi, så snart det starter, ved hjælp af AniSkip og streamens tidsstempler';

  @override
  String get playerDisableSkips => 'Deaktiver overspring';

  @override
  String get playerDisableSkipsDesc =>
      'Ingen AniSkip eller stream tidsstempler, kapitelmærker eller spring over afsendelser i afspilleren';

  @override
  String get playerSkipOnce => 'Spring kun over én gang';

  @override
  String get playerSkipOnceDesc =>
      'Spring ikke den samme del over igen, hvis du spoler tilbage til den';

  @override
  String get playerAdjustBrightness => 'Lysstyrkegestus';

  @override
  String get playerAdjustBrightnessDesc =>
      'Stryg op og ned på skærmens højre halvdel';

  @override
  String get playerAdjustVolume => 'Lydstyrkegestus';

  @override
  String get playerAdjustVolumeDesc =>
      'Stryg op og ned på skærmens venstre halvdel';

  @override
  String get playerHoldToSpeed => 'Hold for at speede op';

  @override
  String get playerHoldToSpeedDesc =>
      'Tryk og hold på videoen for at afspille hurtigere, træk sidelæns for at ændre hastigheden';

  @override
  String get playerThumbless => 'Tykkere søgelinje';

  @override
  String get playerThumblessDesc => 'En tyk linje uden skyder';

  @override
  String get playerShowSubtitles => 'Vis undertekster';

  @override
  String get playerShowSubtitlesDesc =>
      'Slå fra for at skjule alle undertekstspor';

  @override
  String get playerSubtitleLanguage => 'Foretrukket undertekstsprog';

  @override
  String get playerSubtitleSize => 'Undertekststørrelse';

  @override
  String get playerSubtitleWeight => 'Undertekstvægt';

  @override
  String get playerSubtitleBottom => 'Afstand til bund for undertekster';

  @override
  String get playerSubtitleFont => 'Undertekstskrifttype';

  @override
  String get playerSubtitleColor => 'Undertekstfarve';

  @override
  String get playerSubtitleBackground => 'Undertekstbaggrund';

  @override
  String get playerSubtitleOutline => 'Undertekstkontur';

  @override
  String get playerSubtitleOutlineWidth => 'Undertekstens konturbredde';

  @override
  String get playerSubtitlePreview => 'Forhåndsvisning af undertekster';

  @override
  String get playerSubtitlePreviewText => 'Forhåndsvisning af undertekster';

  @override
  String get playerLibass => 'Brug libass';

  @override
  String get playerLibassDesc =>
      'Gengiv stilede .ass-undertekster. Størrelse, farve og skrifttype ovenfor gælder så ikke længere';

  @override
  String get playerShaders => 'Shaders';

  @override
  String get playerShadersEnable => 'Aktivér shaders';

  @override
  String get playerShadersEnableDesc =>
      'Opskalér og rens billedet med GLSL-shaders som Anime4K';

  @override
  String get playerShadersOff => 'Shaders fra';

  @override
  String get playerShadersMissing => 'Anime4K er ikke installeret';

  @override
  String get playerShadersMissingDesc =>
      'Download Anime4K-shaderpakken (ca. 0,8 MB) for at bruge de indbyggede tilstande.';

  @override
  String get playerShadersDownload => 'Download Anime4K';

  @override
  String get playerPictureSave => 'Gem denne ramme';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'Rammen som videoen har den, uden shaders eller farver';

  @override
  String get playerPictureProcessed => 'Med shaders og farver';

  @override
  String get playerPictureProcessedDesc => 'Rammen som du ser den nu';

  @override
  String get playerPictureSaved => 'Rammen er gemt';

  @override
  String get playerPictureSaveFailed => 'Kunne ikke gemme rammen';

  @override
  String get playerShadersPreview => 'Forhåndsvis på dette billede';

  @override
  String get playerShadersUse => 'Brug denne';

  @override
  String get playerPicture => 'Billede';

  @override
  String get playerColors => 'Farver';

  @override
  String get playerColorDefault => 'Standard';

  @override
  String get playerColorVivid => 'Levende';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Blød';

  @override
  String get playerColorCinematic => 'Filmisk';

  @override
  String get playerColorBright => 'Lys';

  @override
  String get playerColorNight => 'Nat';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Brugerdefineret';

  @override
  String get playerColorBrightness => 'Lysstyrke';

  @override
  String get playerColorContrast => 'Kontrast';

  @override
  String get playerColorSaturation => 'Mætning';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Farvetone';

  @override
  String get playerColorReset => 'Nulstil';

  @override
  String get playerColorAdjust => 'Juster';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed =>
      'Kunne ikke hente et billede til forhåndsvisning';

  @override
  String get playerShadersSoftware =>
      'Shaders har brug for hardwaregengivelse, og afspilleren bruger softwaregengivelse. Slå softwaregengivelse fra i afspillerindstillinger.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Kun til en sort video. Shaders virker ikke med det. Gælder næste gang afspilleren åbner';

  @override
  String get playerShadersCustomFiles => 'Dine shaders';

  @override
  String get playerShadersCustom => 'Egne shaders';

  @override
  String get playerShadersImport => 'Importér .glsl';

  @override
  String get playerShadersNone =>
      'Importér dine egne .glsl- eller .hook-filer og sæt flueben for at kæde dem sammen';

  @override
  String get playerShadersBadFile => 'Vælg en .glsl- eller .hook-shaderfil';

  @override
  String get playerDecoder => 'Dekoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (sikker)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Videoudgang';

  @override
  String get playerAudioChannels => 'Lydkanaler';

  @override
  String get playerBuffer => 'Bufferstørrelse (MB)';

  @override
  String get playerBufferDesc =>
      'Hukommelse, afspilleren må bruge til at buffere en stream';

  @override
  String get playerUseMpvConf => 'Brug mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Anvend indstillingerne i din mpv.conf, når afspilningen starter';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Rediger mpv-konfigurationen';

  @override
  String get playerMpvConfDesc =>
      'Én indstilling pr. linje, som --hwdec=auto i en almindelig mpv.conf. Profiler i [klammer] ignoreres.';

  @override
  String get playerMpvConfSaved => 'mpv.conf gemt';

  @override
  String get playerUseScripts => 'Brug mpv-scripts';

  @override
  String get playerUseScriptsDesc =>
      'Indlæs plugins fra scriptmappen. De kræver en libmpv-build med Lua- eller JavaScript-understøttelse';

  @override
  String get playerScripts => 'mpv-scripts';

  @override
  String get playerScriptsManage => 'Tilføj, fjern og skift plugins';

  @override
  String get playerScriptsAdd => 'Tilføj script';

  @override
  String get playerScriptsDesc =>
      'Lua-, JavaScript- og native plugins, der lægges her, indlæses, når afspilningen starter.';

  @override
  String get playerScriptsNone => 'Ingen scripts endnu';

  @override
  String get playerScriptsBadFile =>
      'Vælg en .lua-, .js- eller native plugin-fil';

  @override
  String get playerTuning => 'Avanceret videojustering';

  @override
  String get playerTuningDesc =>
      'Tilsidesæt sync, caching, skalering og tonemapping. Forkerte værdier kan ødelægge afspilningen';

  @override
  String get playerVideoSync => 'Videosync';

  @override
  String get playerInterpolation => 'Billedinterpolation';

  @override
  String get playerInterpolationDesc =>
      'Jævn bevægelse, kræver display-resample-sync';

  @override
  String get playerPitch => 'Tonehøjdekorrektion';

  @override
  String get playerPitchDesc => 'Hold stemmer naturlige ved andre hastigheder';

  @override
  String get playerCacheSeconds => 'Cache (sekunder)';

  @override
  String get playerReadahead => 'Læs forud (sekunder)';

  @override
  String get playerThreads => 'Dekodertråde';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Reducér farvebånd i overgange';

  @override
  String get playerDebandIterations => 'Deband-iterationer';

  @override
  String get playerDebandThreshold => 'Deband-tærskel';

  @override
  String get playerCorrectDownscaling => 'Korrekt nedskalering';

  @override
  String get playerSigmoid => 'Sigmoid-opskalering';

  @override
  String get playerScale => 'Opskalering';

  @override
  String get playerCscale => 'Chroma-opskalering';

  @override
  String get playerDscale => 'Nedskalering';

  @override
  String get playerToneMapping => 'Tonemapping';

  @override
  String get playerTargetPeak => 'Målspids';

  @override
  String get playerOpenFiles => 'Åbn videofiler';

  @override
  String get playerOpenFilesDesc => 'Afspil filer fra denne enhed';

  @override
  String get playerOpenFolder => 'Åbn en mappe';

  @override
  String get playerOpenFolderDesc =>
      'Afspil alle videoer i en mappe som afspilningsliste';

  @override
  String get playerNetworkStream => 'Netværksstream';

  @override
  String get playerNetworkStreamDesc => 'Åbn et direkte video- eller HLS-link';

  @override
  String get playerStreamUrl => 'Stream-URL';

  @override
  String get playerStreamReferer => 'Referer (valgfrit)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream et magnetlink eller en .torrent-fil';

  @override
  String get playerMagnetLink => 'Magnetlink eller torrent-URL';

  @override
  String get playerPickTorrent => 'Vælg en .torrent-fil';

  @override
  String get playerTorrentMissing =>
      'Installer først torrent-tilføjelsen under Indstillinger > Tilføjelser';

  @override
  String get playerNoVideos => 'Ingen afspilbare videoer fundet';

  @override
  String get playerReset => 'Nulstil afspillerindstillinger';

  @override
  String get playerResetDesc =>
      'Gendan alle afspillerindstillinger til standard';

  @override
  String get playerResetConfirm => 'Nulstille alle afspillerindstillinger?';

  @override
  String get playerResetDone => 'Afspillerindstillinger nulstillet';

  @override
  String get playerQuality => 'Kvalitet';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hård sub';

  @override
  String get streamGroupSoftSub => 'Blød sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Rå';

  @override
  String get streamGroupOther => 'Andet';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 strøm',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Strømme';

  @override
  String get playerStreamFailedNext =>
      'Den stream afspilles ikke, prøver den næste';

  @override
  String get playerAutoSelect => 'Vælg stream automatisk';

  @override
  String get playerAutoSelectDesc =>
      'Vælg den stream, der ligner dit sidste valg til denne titel mest';

  @override
  String get playerLoadingStreams => 'Leder efter streams…';

  @override
  String get playerNoStreams => 'Dette afsnit har ingen streams';

  @override
  String get playerNoStreamsTitle => 'Ingen streams fundet';

  @override
  String get playerFailed => 'Afspilningen mislykkedes';

  @override
  String get playerTorrentNeeded => 'Denne stream er en torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Installer torrent-tilføjelsen for at afspille magnetlinks og .torrent-filer';

  @override
  String get playerOpenAddons => 'Åbn tilføjelser';

  @override
  String get playerTryAnotherStream => 'Prøv en anden stream';

  @override
  String get playerEpisodes => 'Afsnit';

  @override
  String get playerLock => 'Lås kontroller';

  @override
  String get playerFullscreen => 'Fuld skærm';

  @override
  String get readerChapters => 'Kapitler';

  @override
  String get readerSettingsTitle => 'Læserindstillinger';

  @override
  String get readerPreviousChapter => 'Forrige kapitel';

  @override
  String get readerNextChapter => 'Næste kapitel';

  @override
  String get readerFirstChapter => 'Det er det første kapitel';

  @override
  String get readerLastChapter => 'Du er helt ajour';

  @override
  String get readerFailed => 'Kunne ikke åbne dette kapitel';

  @override
  String get readerOpenBook => 'Åbn en bog';

  @override
  String get readerOpenBookDesc =>
      'Læs en epub (romanlæser) eller en PDF (mangalæser) fra dine filer';

  @override
  String get readerNoText => 'Dette kapitel har ingen tekst';

  @override
  String get readerPerTitle => 'Kun for denne titel';

  @override
  String get readerPerTitleDesc =>
      'Behold disse læserindstillinger kun for denne titel';

  @override
  String get readerSectionReading => 'Læsning';

  @override
  String get readerSectionControls => 'Kontroller';

  @override
  String get readerSectionDisplay => 'Visning';

  @override
  String get readerSectionNovel => 'Roman';

  @override
  String get readerMode => 'Læsetilstand';

  @override
  String get readerModeAuto => 'Auto (efter serietype)';

  @override
  String get readerModeRtl => 'Højre mod venstre';

  @override
  String get readerModeLtr => 'Venstre mod højre';

  @override
  String get readerModeVertical => 'Lodrette sider';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Kontinuerlig rulning';

  @override
  String get readerScale => 'Billedskala';

  @override
  String get readerScaleFit => 'Tilpas skærm';

  @override
  String get readerScaleWidth => 'Tilpas bredde';

  @override
  String get readerScaleHeight => 'Tilpas højde';

  @override
  String get readerScaleOriginal => 'Originalstørrelse';

  @override
  String get readerScaleSmart => 'Smart tilpasning';

  @override
  String get readerDoublePage => 'Dobbeltsider';

  @override
  String get readerDoublePageDesc =>
      'Vis to sider ved siden af hinanden i liggende format';

  @override
  String get readerDoubleTapZoom => 'Dobbelttryk for at zoome';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zoom ind og ud på en side med et dobbelttryk';

  @override
  String get readerAnimate => 'Sideanimation';

  @override
  String get readerAnimateDesc => 'Animér sidevending';

  @override
  String get readerSidePadding => 'Sidemargen';

  @override
  String get readerSidePaddingDesc => 'Plads ved siden af siderne i procent';

  @override
  String get readerPageGap => 'Afstand mellem sider';

  @override
  String get readerPageGapDesc => 'Plads mellem siderne';

  @override
  String get readerAutoNext => 'Fortsæt ind i næste kapitel';

  @override
  String get readerAutoNextDesc =>
      'Indlæs næste kapitel, mens du læser enden af dette';

  @override
  String get readerPreload => 'Forudindlæs sider';

  @override
  String get readerPreloadDesc => 'Hvor mange sider der downloades i forvejen';

  @override
  String get readerTapZones => 'Trykzoner';

  @override
  String get readerTapDefault => 'Standard';

  @override
  String get readerTapLShaped => 'L-formet';

  @override
  String get readerTapKindle => 'Kindle-agtig';

  @override
  String get readerTapEdge => 'Kun kanter';

  @override
  String get readerTapOff => 'Deaktiveret';

  @override
  String get readerInvertTaps => 'Byt om på trykzoner';

  @override
  String get readerInvertTapsDesc => 'Byt om på områderne for forrige og næste';

  @override
  String get readerBackground => 'Baggrund';

  @override
  String get readerBackgroundBlack => 'Sort';

  @override
  String get readerBackgroundGray => 'Grå';

  @override
  String get readerBackgroundWhite => 'Hvid';

  @override
  String get readerBackgroundTheme => 'App-tema';

  @override
  String get readerFilter => 'Farvefilter';

  @override
  String get readerFilterNone => 'Ingen';

  @override
  String get readerFilterGrayscale => 'Gråtoner';

  @override
  String get readerFilterInvert => 'Inverter';

  @override
  String get readerFilterSepia => 'Sepia';

  @override
  String get readerFilterQuality => 'Billedfilterkvalitet';

  @override
  String get readerFilterQualityNone => 'Ingen (nærmeste nabo)';

  @override
  String get readerFilterQualityLow => 'Lav (bilineær)';

  @override
  String get readerFilterQualityMedium => 'Medium (trilineær)';

  @override
  String get readerFilterQualityHigh => 'Høj (bikubisk)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rust høj kvalitet)';

  @override
  String get readerDim => 'Dæmp';

  @override
  String get readerDimDesc => 'Gør siderne mørkere';

  @override
  String get readerPageNumber => 'Sidetal';

  @override
  String get readerPageNumberDesc => 'Vis sidetallet under læsning';

  @override
  String get readerFullscreen => 'Fuld skærm';

  @override
  String get readerFullscreenDesc => 'Skjul systemlinjerne';

  @override
  String get readerCropBorders => 'Beskær kanter';

  @override
  String get readerCropBordersDesc =>
      'Fjern tomme hvide eller sorte marginer fra siderne';

  @override
  String get readerLongPressSave => 'Hold en side for at gemme den';

  @override
  String get readerLongPressSaveDesc =>
      'Tryk længe på en side for at åbne mulighederne for at gemme, dele og kopiere';

  @override
  String get readerVolumeKeys => 'Lydstyrketaster vender sider';

  @override
  String get readerVolumeKeysDesc =>
      'Lydstyrke ned går frem, lydstyrke op går tilbage';

  @override
  String get readerBookmarks => 'Bogmærker';

  @override
  String get readerBookmarkAdd => 'Tilføj bogmærke';

  @override
  String get readerBookmarkRemove => 'Fjern bogmærke';

  @override
  String get readerBookmarksEmpty => 'Ingen bogmærker endnu';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Side $page af $total';
  }

  @override
  String get readerAutoScroll => 'Autorulning';

  @override
  String get readerAutoScrollStop => 'Stop autorulning';

  @override
  String get readerAutoScrollSpeed => 'Hastighed for autorulning';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Hvor hurtigt siderne ruller eller vender af sig selv';

  @override
  String get readerKeepOn => 'Hold skærmen tændt';

  @override
  String get readerKeepOnDesc => 'Forhindr, at skærmen slukker under læsning';

  @override
  String get readerOrientation => 'Orientering';

  @override
  String get readerOrientationFree => 'Fri';

  @override
  String get readerOrientationPortrait => 'Stående';

  @override
  String get readerOrientationLandscape => 'Liggende';

  @override
  String get readerSaveProgress => 'Gem fremskridt';

  @override
  String get readerSaveProgressDesc =>
      'Husk din side og markér kapitler som læst';

  @override
  String get readerReset => 'Nulstil læserindstillinger';

  @override
  String get readerResetDesc => 'Tilbage til standard';

  @override
  String get readerResetConfirm =>
      'Vil du nulstille alle læserindstillinger til standard?';

  @override
  String get novelSize => 'Tekststørrelse';

  @override
  String get novelFont => 'Skrifttype';

  @override
  String get novelLineHeight => 'Linjehøjde';

  @override
  String get novelParagraph => 'Afsnitsafstand';

  @override
  String get novelMargin => 'Margener';

  @override
  String get novelTheme => 'Læsertema';

  @override
  String get novelThemeApp => 'App-tema';

  @override
  String get novelThemeLight => 'Lys';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Mørk';

  @override
  String get novelThemeBlack => 'Sort';

  @override
  String get novelJustify => 'Justér tekst';

  @override
  String get novelJustifyDesc => 'Ret teksten ud til begge kanter';

  @override
  String get trackProgressTitle => 'Gemme fremskridt?';

  @override
  String trackProgressAnime(String name) {
    return 'Vil du følge $name på din liste, mens du ser? Vælg \"Kun denne enhed\" for at beholde det lokalt, eller Nej for ikke at gemme noget.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Vil du følge $name på din liste, når du er færdig med et kapitel? Vælg \"Kun denne enhed\" for at beholde det lokalt, eller Nej for ikke at gemme noget.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Vil du gemme dine fremskridt på $name på din liste på denne enhed, mens du ser?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Vil du gemme dine fremskridt på $name på din liste på denne enhed, når du er færdig med et kapitel?';
  }

  @override
  String get downloadClearQueue => 'Ryd kø';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Vil du annullere alle $count-downloads i køen? Det, der allerede var downloadet, slettes.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count valgt';
  }

  @override
  String get downloadSelectAll => 'Vælg alle';

  @override
  String get downloadDeleteSelected => 'Slet valgte';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Vil du slette $count downloads? Deres filer fjernes fra enheden.';
  }

  @override
  String get castTitle => 'Cast til enhed';

  @override
  String get castSearching => 'Leder efter enheder på dit netværk...';

  @override
  String get castNoDevices =>
      'Ingen enheder fundet. Sørg for, at tv\'et eller Chromecast er på samme Wi-Fi, og søg derefter igen.';

  @override
  String get castRefresh => 'Søg igen';

  @override
  String get castFailed => 'Kunne ikke starte casting';

  @override
  String get castStop => 'Stop castingen';

  @override
  String castNowCasting(String name) {
    return 'Caster til $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku kan ikke rapportere eller ændre positionen';

  @override
  String get castControls => 'Kontrolelementer';

  @override
  String get castVolume => 'TV lydstyrke';

  @override
  String castSkipPart(String name) {
    return 'Spring over $name';
  }

  @override
  String get trackProgressRememberSeries => 'Husk for denne serie';

  @override
  String get trackProgressYes => 'Gem';

  @override
  String get trackProgressReset =>
      'Spørgsmålet om at gemme fremskridt er nulstillet for denne type, der spørges igen';

  @override
  String get trackProgressNo => 'Nej';

  @override
  String get trackProgressOff => 'Fra';

  @override
  String get trackProgressLocal => 'Kun denne enhed';

  @override
  String get trackProgressSettingAnime => 'Følg anime-fremskridt';

  @override
  String get trackProgressSettingManga => 'Følg manga- og romanfremskridt';

  @override
  String get trackProgressSettingDesc =>
      'Hvad der skal ske, når du åbner et afsnit eller er færdig med et kapitel';

  @override
  String get trackProgressAsk => 'Spørg';

  @override
  String get trackProgressAlways => 'Altid';

  @override
  String get dantotsuImport => 'Importér fra Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Læs en Dantotsu-indstillingsbackup (.ani eller krypteret .sani)';

  @override
  String get dantotsuPick => 'Vælg en Dantotsu-backup';

  @override
  String get dantotsuNothing => 'Der er intet i denne fil, der kan importeres';

  @override
  String get dantotsuApply => 'Importér valgte';

  @override
  String dantotsuDone(int done, int total) {
    return 'Importerede $done af $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Konti';

  @override
  String get dantotsuGroupAppearance => 'Udseende';

  @override
  String get dantotsuGroupExtensions => 'Udvidelser';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Afspiller';

  @override
  String get dantotsuAnilist => 'AniList-login';

  @override
  String get dantotsuMal => 'MyAnimeList-login';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence-token';

  @override
  String get dantotsuTheme => 'Tema';

  @override
  String get themePickerTitle => 'Tema';

  @override
  String get dantotsuReposAnime => 'Repos til anime-udvidelser';

  @override
  String get dantotsuReposManga => 'Repos til manga-udvidelser';

  @override
  String get dantotsuReposNovel => 'Repos til roman-udvidelser';

  @override
  String get dantotsuUpdates => 'Opdateringstjek';

  @override
  String get dantotsuComments => 'Kommentarer';

  @override
  String get dantotsuActivity => 'Polling af AniList-notifikationer';

  @override
  String get dantotsuDns => 'DNS-udbyder';

  @override
  String get dantotsuPlayer => 'Afspillerhastighed og undertekstfarver';

  @override
  String get dantotsuWarning =>
      'Denne fil indeholder login-tokens. Hold den privat.';

  @override
  String get novelIndent => 'Indryk afsnit';

  @override
  String get novelIndentDesc =>
      'Start hvert afsnit med et indryk i første linje';

  @override
  String get novelLetterSpacing => 'Bogstavafstand';

  @override
  String get novelSectionTranslate => 'Oversættelse';

  @override
  String get sectionExperimental => 'Eksperimentelt';

  @override
  String get kitsuGraphqlDetail => 'Hurtigere detaljesider (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Indlæs en titel med dens karakterer, stab og dit indslag i én forespørgsel';

  @override
  String get togetherTitle => 'Se sammen';

  @override
  String get togetherIntro =>
      'Indsæt det rumlink, din ven sendte dig. Du kommer straks med, og afspilleren åbner, når de begynder at se.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Deltag i lokalet $room? Værten vælger, hvad der skal spilles, og spilleren åbner af sig selv, når de begynder at se.';
  }

  @override
  String get togetherJoin => 'Deltag';

  @override
  String get togetherName => 'Dit navn';

  @override
  String get togetherConnecting => 'Forbinder…';

  @override
  String get togetherLeave => 'Forlad rum';

  @override
  String get togetherYou => 'Dig';

  @override
  String get togetherNoChat => 'Ingen beskeder endnu';

  @override
  String get togetherChatHint => 'Besked';

  @override
  String get togetherCopyInvite => 'Kopiér invitation';

  @override
  String get togetherShareInvite => 'Del invitation';

  @override
  String togetherShareText(String link) {
    return 'Se med mig på Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server og rum kopieret';

  @override
  String get togetherConnectionLost => 'Forbindelsen blev afbrudt';

  @override
  String togetherConnectedTo(String room) {
    return 'Forbundet til $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Kunne ikke forbinde: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name kom ind';
  }

  @override
  String togetherLeft(String name) {
    return '$name gik';
  }

  @override
  String togetherPaused(String name) {
    return '$name satte på pause';
  }

  @override
  String togetherResumed(String name) {
    return '$name fortsatte';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name sprang til $time';
  }

  @override
  String get togetherFollowFailed =>
      'Kunne ikke åbne værtens afsnit. Åbn det selv.';

  @override
  String get togetherJoinRole => 'Deltag i et rum';

  @override
  String get togetherOpenHost => 'Åbn værtens afsnit';

  @override
  String get togetherShowChat => 'Vis live chat';

  @override
  String get togetherWaitingHost => 'Venter på, at værten starter et afsnit';

  @override
  String get togetherRoomLink => 'Rumlink';

  @override
  String get togetherBadLink => 'Det er ikke et rumlink';

  @override
  String get togetherHostClosed => 'Værten lukkede rummet';

  @override
  String get togetherNowPlaying => 'Afspiller nu';

  @override
  String togetherWatchingCount(int count) {
    return '$count ser med';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user vil sætte på pause';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user vil fortsætte';
  }

  @override
  String get togetherChip => 'Sammen';

  @override
  String get togetherSettingsDesc => 'Deltag i en vens rum med et link';

  @override
  String get novelBilingual => 'Vis original og oversættelse';

  @override
  String get novelBilingualDesc =>
      'Hvert afsnit viser den originale tekst med oversættelsen under';

  @override
  String get novelTranslateTo => 'Oversæt til';

  @override
  String get novelTranslateOff => 'Fra';

  @override
  String get novelSectionSpeech => 'Tekst til tale';

  @override
  String get novelSpeechRate => 'Talehastighed';

  @override
  String get novelSpeechPitch => 'Tonehøjde for tale';

  @override
  String get novelSpeak => 'Læs højt';

  @override
  String get novelSpeakStop => 'Stop oplæsning';

  @override
  String get novelTranslate => 'Oversæt kapitel';

  @override
  String get novelTranslateShowOriginal => 'Vis original';

  @override
  String novelTranslateFailed(String error) {
    return 'Oversættelsen mislykkedes: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Tekst til tale er ikke tilgængelig på denne enhed';

  @override
  String get novelSpeechVoice => 'Stemme';

  @override
  String get novelSpeechVoiceDefault => 'Systemstandard';

  @override
  String get novelSpeakPrevious => 'Forrige linje';

  @override
  String get novelSpeakNext => 'Næste linje';

  @override
  String get novelTapPaging => 'Tryk på kanterne for at vende side';

  @override
  String get novelTapPagingDesc =>
      'Tryk til venstre eller højre for at rulle en side, midten viser kontrollerne';

  @override
  String get novelPaged => 'Sidevending';

  @override
  String get novelPagedDesc =>
      'Opdel kapitlet i sider, og stryg eller tryk for at vende dem i stedet for at rulle';

  @override
  String novelPageOf(int current, int total) {
    return 'Side $current af $total';
  }

  @override
  String get novelPaginating => 'Udlægning af sider';

  @override
  String get novelTools => 'Indhold, søgning og højdepunkter';

  @override
  String get novelContents => 'Indhold';

  @override
  String get novelContentsEmpty => 'Dette kapitel har ingen overskrifter';

  @override
  String get novelSearch => 'Søg';

  @override
  String get novelSearchHint => 'Søg i dette kapitel';

  @override
  String get novelSearchNone => 'Ingen kampe';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matcher',
      one: '1 kamp',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Højdepunkter';

  @override
  String get novelHighlightsEmpty =>
      'Vælg noget tekst, og tryk på Fremhæv for at beholde den her';

  @override
  String get novelHighlight => 'Fremhæv';

  @override
  String get novelHighlightNote => 'Bemærk';

  @override
  String get novelHighlightNoteHint => 'Tilføj en note';

  @override
  String get novelHighlightRemove => 'Fjern markering';

  @override
  String get novelHighlightFailed => 'Det valg kunne ikke matches med teksten';

  @override
  String novelMinutesLeft(int count) {
    return '$count min. tilbage';
  }

  @override
  String get novelBold => 'Fed tekst';

  @override
  String get novelBoldDesc => 'Brug en tykkere vægt';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Færdig med $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Næste: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Forrige: $chapter';
  }

  @override
  String get readerNoPages => 'Dette kapitel har ingen sider';

  @override
  String get readerLoadingPages => 'Indlæser sider…';

  @override
  String get readerSlowPage => 'Indlæser stadig denne side…';

  @override
  String get readerPageFailed => 'Kunne ikke indlæse denne side';

  @override
  String get playerShowComments => 'Vis kommentarer';

  @override
  String get playerHideComments => 'Skjul kommentarer';

  @override
  String get playerSubtitles => 'Undertekster';

  @override
  String get playerSubtitlesOff => 'Undertekster fra';

  @override
  String get playerAudio => 'Lyd';

  @override
  String get playerAddSubtitle => 'Tilføj undertekstfil';

  @override
  String get playerAddAudio => 'Tilføj lydfil';

  @override
  String get playerChapters => 'Kapitler';

  @override
  String get playerSkipSubmit => 'Indsend springtider';

  @override
  String get playerSkipSubmitDesc =>
      'Marker, hvor åbningen, slutningen eller opsummeringen starter og slutter i denne episode, og del den med AniSkip, så alle får spring-knappen.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'Slut';

  @override
  String get playerSkipUseNow => 'Brug den aktuelle position';

  @override
  String get playerSkipSend => 'Send til AniSkip';

  @override
  String get playerSkipSent => 'Spring over tider indsendt til AniSkip, tak';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip nægtede springtiderne: $error';
  }

  @override
  String get playerUnsupported =>
      'Videoafspilleren kan ikke køre på denne enhed (dens Android-version er for gammel til det medfølgende afspillerbibliotek). Tryk for at kopiere detaljerne.';

  @override
  String get playerSkipNoMal =>
      'Denne titel har ikke noget MyAnimeList-id, AniSkip kan ikke tage det';

  @override
  String get playerNoChapters => 'Ingen kapitler';

  @override
  String get playerTimestamp => 'Tidsstempel';

  @override
  String get playerAutoPlayDelay => 'Nedtælling til næste afsnit';

  @override
  String get playerWatchedAt => 'Tæl som set ved';

  @override
  String playerNextIn(int seconds) {
    return 'Næste afsnit om $seconds s';
  }

  @override
  String get playerPlayNow => 'Afspil nu';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: springes automatisk over for denne titel';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: springes ikke automatisk over for denne titel';
  }

  @override
  String get playerAudioLanguage => 'Foretrukket lydsprog';

  @override
  String get playerLanguageOrderHint =>
      'Adskil sprog med kommaer. Det første, der findes, bruges.';

  @override
  String get playerPip => 'Billede-i-billede';

  @override
  String get playerAutoPip => 'Billede-i-billede ved afslutning';

  @override
  String get playerAutoPipDesc =>
      'Bliv ved med at afspille i et lille vindue, når du forlader appen';

  @override
  String get playerPipPlay => 'Spil';

  @override
  String get playerPipPause => 'Pause';

  @override
  String get playerPipBack => 'Spol tilbage';

  @override
  String get playerPipForward => 'Fremad';

  @override
  String get playerPipRestore => 'Tilbage til afspilleren';

  @override
  String get playerPipActive => 'Leger i et lille vindue';

  @override
  String get listDateAdded => 'Tilføjet til listen';

  @override
  String get listDateLastWatched => 'Sidst set';

  @override
  String playerAutoPlaying(String title) {
    return 'Afspiller $title næste…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Kunne ikke installere shaders: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Kapitel $number';
  }

  @override
  String get playerPerTitle => 'Kun for denne titel';

  @override
  String get playerPerTitleDesc =>
      'Behold disse indstillinger for denne titel og lad dine standarder være i fred';

  @override
  String get playerSwapGestures => 'Byt om på swipe-sider';

  @override
  String get playerSwapGesturesDesc =>
      'Lysstyrke til venstre og lydstyrke til højre';

  @override
  String get playerOpenBig => 'Åbn i stor visning';

  @override
  String get playerOpenBigDesc =>
      'Start afspilleren i fuldskærm i stedet for med episodelisten';

  @override
  String get playerPauseOnBlur => 'Pause når ude af fokus';

  @override
  String get playerPauseOnBlurDesc =>
      'Sæt på pause, mens appen er dækket, fx af notifikationspanelet, og fortsæt, når du kommer tilbage';

  @override
  String get playerAudioOutput => 'Lydudgang';

  @override
  String get fontAppDefault => 'App-skrifttype';

  @override
  String get fontImport => 'Importér skrifttype';

  @override
  String get fontSample =>
      'Quizdeltagerne spiste jordbærgrød med fløde i København';

  @override
  String get playerSubtitleDelay => 'Forsinkelse af undertekster';

  @override
  String get playerAudioDelay => 'Forsinkelse af lyd';

  @override
  String get playerDelayReset => 'Nulstil';

  @override
  String get playerOnlineSubtitles => 'Online-undertekster';

  @override
  String get playerOnlineSearchHint => 'Titel og afsnit';

  @override
  String get playerOnlineNone => 'Ingen undertekster fundet';

  @override
  String playerOnlineFailed(String error) {
    return 'Undertekstsøgningen mislykkedes: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Kunne ikke downloade denne undertekst: $error';
  }

  @override
  String get playerOnlineMatch => 'Matcher denne fil';

  @override
  String get playerOnlineEpisode => 'Afsnitsmatch';

  @override
  String playerOnlineDownloads(int count) {
    return '$count downloads';
  }

  @override
  String get playerSeekPreview => 'Forhåndsvisning ved spoling';

  @override
  String get playerSeekPreviewDesc =>
      'Vis et lille billedeksempel over søgelinjen, mens du trækker. Åbner en ekstra dekoder i lav opløsning, så det bruger ekstra data på streams.';

  @override
  String get playerSettingsChip => 'Indstillinger';

  @override
  String get playerAudioDevice => 'Lydenhed';

  @override
  String get settingsDownloads => 'Downloads';

  @override
  String get settingsDownloadsDesc => 'Offline-afsnit, kø og offlinetilstand';

  @override
  String get downloadsTitle => 'Downloads';

  @override
  String get widgetContinue => 'Fortsæt';

  @override
  String get widgetReleases => 'Frigives snart';

  @override
  String get widgetMore => 'Også i gang';

  @override
  String get widgetNothing => 'Intet at fortsætte endnu';

  @override
  String get downloadStorageTitle => 'Opbevaring';

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
    return '$size allerede set eller læst';
  }

  @override
  String get downloadFreeUp => 'Frigør plads';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count har set downloads',
      one: '1 set download',
    );
    return 'Slet $_temp0 og gratis $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Frigivet $size';
  }

  @override
  String get downloadDeleteWatched => 'Slet sete';

  @override
  String get downloadDeleteAll => 'Slet alle';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Vil du slette hver download af $title?';
  }

  @override
  String get downloadNothingWatched => 'Intet, du har afsluttet, downloades';

  @override
  String get downloadStorageEmpty => 'Ingen downloads bruger plads';

  @override
  String get downloadsOpenDesc => 'Se køen og alt, der er gemt på denne enhed';

  @override
  String get downloadTitle => 'Download';

  @override
  String get downloadMetaOnly => 'Kun metadata';

  @override
  String get downloadMetaFailed => 'Titelmappen kunne ikke oprettes';

  @override
  String downloadMetaSaved(String path) {
    return 'Gemt. Læg dine filer i $path';
  }

  @override
  String get downloadAlready => 'Allerede downloadet eller i køen';

  @override
  String get downloadPickStream => 'Download hvilken stream?';

  @override
  String get downloadPickSubtitle => 'Download hvilken undertekst?';

  @override
  String get downloadPickAudio => 'Download hvilket lydspor?';

  @override
  String get downloadNoAudio => 'Ingen ekstra lyd';

  @override
  String get downloadAudio => 'Lyd';

  @override
  String get downloadNoSubtitle => 'Ingen undertekst';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Denne stream er en HLS-afspilningsliste. At downloade den kræver FFmpeg-tilføjelsen.';

  @override
  String get downloadSourceMissing =>
      'Kilden til dette afsnit er ikke installeret';

  @override
  String get downloadDashDrm => 'Denne stream er DRM-beskyttet';

  @override
  String get downloadDashNoVideo => 'DASH-manifestet har ingen video';

  @override
  String get downloadWaitingConnection => 'Venter på forbindelse';

  @override
  String get downloadSubtitles => 'Undertekster';

  @override
  String get downloadDownloaded => 'Downloadet';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Slet download';

  @override
  String get downloadCancel => 'Annuller';

  @override
  String get downloadPause => 'Pause';

  @override
  String get downloadPaused => 'På pause';

  @override
  String get downloadResume => 'Fortsæt';

  @override
  String get downloadPauseAll => 'Pause alle';

  @override
  String get downloadResumeAll => 'Fortsæt alle';

  @override
  String get downloadQueuedState => 'Venter i køen';

  @override
  String get downloadResolving => 'Henter streamen…';

  @override
  String get downloadUsedFallback =>
      'Ingen matchende stream, brugte den første';

  @override
  String get downloadTabQueue => 'Kø';

  @override
  String get downloadTabDone => 'Færdig';

  @override
  String get downloadTabFailed => 'Mislykkedes';

  @override
  String get downloadEmptyQueue => 'Intet bliver downloadet';

  @override
  String get downloadEmptyDone => 'Intet downloadet endnu';

  @override
  String get downloadEmptyFailed => 'Ingen mislykkede downloads';

  @override
  String get downloadNext => 'Næste afsnit';

  @override
  String downloadNextN(int count) {
    return 'Næste $count afsnit';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Alle usete ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Dette interval ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Alle afsnit ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afsnit i kø',
      one: '1 afsnit i kø',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name downloadet';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name kunne ikke downloades';
  }

  @override
  String downloadStorage(String size) {
    return '$size brugt af downloads';
  }

  @override
  String get downloadQueueHeader => 'Kø';

  @override
  String get downloadParallel => 'Downloads på én gang';

  @override
  String get downloadParallelDesc =>
      'Kør én download ad gangen eller flere sammen';

  @override
  String get downloadOneByOne => 'En ad gangen';

  @override
  String get downloadNotifications => 'Downloadnotifikationer';

  @override
  String get downloadNotificationsDesc =>
      'Live-forløb, hvor systemet understøtter det, ellers en besked, når en download er færdig';

  @override
  String get downloadNotifyLive => 'Live';

  @override
  String get downloadNotifyDone => 'Når færdig';

  @override
  String get downloadNotifyOff => 'Fra';

  @override
  String get downloadInfoFile => 'Skriv en infofil ved siden af hver download';

  @override
  String get downloadInfoFileDesc =>
      'Gemmer stream, kvalitet, undertekst og spring-over-tider som en lille .json-fil';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto går kun offline, når appen starter uden forbindelse. Altid forbliver offline, til du ændrer det.';

  @override
  String get offlineModeOff => 'Fra';

  @override
  String get offlineModeAlways => 'Altid';

  @override
  String get offlineModeOn =>
      'Offlinetilstand er slået til. Ændringer gemmes her og sendes, når du er online igen.';

  @override
  String get offlineSaved =>
      'Gemt på denne enhed, synkroniseres, når du er online';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ændringer synkroniseret',
      one: '1 ændring synkroniseret',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ændringer venter på synkronisering',
      one: '1 ændring venter på synkronisering',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Ændringer venter på synkronisering';

  @override
  String get offlinePendingNone => 'Intet venter';

  @override
  String get offlineSyncNow => 'Synkronisér nu';

  @override
  String get offlineDiscard => 'Kassér';

  @override
  String get downloadNotOffline =>
      'Dette afsnit er ikke downloadet, så det er ikke tilgængeligt offline';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Næste kapitel';

  @override
  String downloadNextChapters(int count) {
    return 'Næste $count kapitler';
  }

  @override
  String downloadUnread(int count) {
    return 'Alle ulæste ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Alle kapitler ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total sider';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count sider';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg-tilføjelse påkrævet';

  @override
  String get downloadFfmpegBody =>
      'Denne stream er en HLS-afspilningsliste. FFmpeg-tilføjelsen samler stumperne til én mp4-fil. Uden den bliver stumperne gemt i en afsnitsmappe og afspilles derfra.';

  @override
  String get downloadFfmpegInstall => 'Installer';

  @override
  String get downloadFfmpegInstalling =>
      'Installerer FFmpeg, det kan tage et stykke tid…';

  @override
  String get downloadFinishing => 'Samler stumperne til én fil…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total dele';
  }

  @override
  String get downloadTorrentNoFile =>
      'Torrenten har ingen videofil at downloade';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Downloader $count elementer',
      one: 'Downloader 1 element',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Slet sete downloads';

  @override
  String get downloadAutoDeleteDesc =>
      'Fjerner en download, når dit fremskridt når det afsnit eller kapitel';

  @override
  String get downloadConnections => 'Forbindelser pr. download';

  @override
  String get downloadConnectionsDesc =>
      'Deler en stor fil i dele, der hentes samtidig. Nogle servere begrænser det.';

  @override
  String get downloadPlayChoice => 'Afspil fra';

  @override
  String get downloadPlayLocalDesc => 'Filen gemt på denne enhed';

  @override
  String get downloadPlayStream => 'Stream online';

  @override
  String get downloadPlayStreamDesc => 'Indlæs afsnittet fra kilden';

  @override
  String get offlineFeedTitle => 'Downloadet på denne enhed';

  @override
  String get offlineFeedEmpty =>
      'Download noget, mens du er online, så dukker det op her';

  @override
  String get offlineEnabled => 'Offlinetilstand er slået til';

  @override
  String get offlineDisabled => 'Offlinetilstand er slået fra';

  @override
  String get downloadReadChoice => 'Læs fra';

  @override
  String get downloadReadLocalDesc => 'Siderne gemt på denne enhed';

  @override
  String get downloadReadOnline => 'Læs online';

  @override
  String get downloadReadOnlineDesc => 'Indlæs kapitlet fra kilden';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Slet $name fra denne enhed?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Annullere download af $name? Det, der allerede er downloadet, bliver slettet.';
  }

  @override
  String get downloadFfmpegFolder => 'Behold som mappe';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Smide $count ændringer væk, der aldrig blev sendt? Det kan ikke fortrydes.',
      one: 'Smide den ændring væk, der aldrig blev sendt? Det kan ikke fortrydes.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Venter på Wi-Fi';

  @override
  String get downloadWaitingMetered =>
      'På pause på en forbindelse med datagrænse';

  @override
  String get downloadWifiOnly => 'Kun Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'Downloads venter, mens du bruger mobildata';

  @override
  String get downloadMetered => 'Pause på forbindelser med datagrænse';

  @override
  String get downloadMeteredDesc =>
      'Venter også på Wi-Fi, som din enhed markerer som med datagrænse';

  @override
  String get downloadSpeedLimit => 'Hastighedsgrænse';

  @override
  String get downloadSpeedLimitDesc =>
      'Begrænser den samlede downloadhastighed';

  @override
  String get downloadUnlimited => 'Ubegrænset';

  @override
  String get downloadMoveToTop => 'Flyt øverst';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds frø · $peers jævnaldrende';
  }

  @override
  String get downloadTorrentFile => 'Hvilken fil?';

  @override
  String get downloadTorrentAuto => 'Match afsnittet automatisk';

  @override
  String get downloadTorrentLoading => 'Læser torrenten…';

  @override
  String get watchAutoSource => 'Skift automatisk til næste kilde';

  @override
  String get watchAutoSourceDesc =>
      'Hvis kilden ikke kan finde titlen eller ikke kan indlæses, prøv den næste installerede kilde';

  @override
  String get extensionTest => 'Test udvidelser';

  @override
  String get extensionTestCopy => 'Kopiér fejlene og deres logs';

  @override
  String get extensionTestQuery => 'Søgeord';

  @override
  String get extensionTestRun => 'Kør';

  @override
  String get extensionTestStop => 'Stop';

  @override
  String get extensionTestNone => 'Ingen installerede udvidelser af denne type';

  @override
  String get extensionTestNotRun => 'Ikke testet endnu';

  @override
  String get extensionTestSearch => 'Søg';

  @override
  String get extensionTestDetail => 'Detaljer';

  @override
  String get extensionTestUnits => 'Afsnit / kapitler';

  @override
  String get extensionTestLinks => 'Streams / sider';

  @override
  String extensionTestFailedAt(String step) {
    return 'Fejlede ved $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done af $total testet · $passed bestået · $failed fejlet';
  }

  @override
  String get extensionTestCopyLogs => 'Kopiér alt med de fulde logs';

  @override
  String get onboardingFeaturesTitle => 'Det hele på ét sted';

  @override
  String get onboardingFeaturesBody =>
      'Alt, du følger, ser og læser, uden at skulle jonglere med apps.';

  @override
  String get onboardingFeatureTrack => 'Hold styr på det hele';

  @override
  String get onboardingFeatureTrackDesc =>
      'Lister, fremskridt og karakterer på AniList, MyAnimeList, Simkl, Kitsu og MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Se og læs';

  @override
  String get onboardingFeatureWatchDesc =>
      'Installer udvidelser og stream anime eller læs manga og romaner direkte i appen.';

  @override
  String get onboardingFeatureOffline => 'Tag det med offline';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Download afsnit og kapitler, og fortsæt uden forbindelse.';

  @override
  String get onboardingFeatureSync => 'Hold lister synkroniseret';

  @override
  String get onboardingFeatureSyncDesc =>
      'Spejl din liste på tværs af tjenester, eller lad den, der er længst fremme, vinde.';

  @override
  String get onboardingServices => 'Fungerer med';

  @override
  String sourceNotifyOn(String source) {
    return 'Du får at vide, når $source har noget nyt';
  }

  @override
  String get sourceNotifyOff => 'Frigivelsesmeddelelser er slået fra';

  @override
  String get sourceNotifyNeedsSource => 'Vælg først en kilde med et match';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Alt ($count) er allerede ude, intet at vente på';
  }

  @override
  String get sourceNotifyTooltipOn => 'Stop udgivelsesmeddelelser';

  @override
  String get sourceNotifyTooltipOff => 'Giv mig besked om nye udgivelser';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Afsnit $number er ude på $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Afsnit $from–$to er ude på $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Kapitel $number er ude på $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Kapitlerne $from–$to er ude på $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titler har noget nyt';
  }

  @override
  String get navSources => 'Kilder';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Denne kilde tilhører $manager, som ikke er den aktive udvidelsestjeneste';
  }

  @override
  String get sourceAlertsHeader => 'Udgivelsesmeddelelser';

  @override
  String get sourceAlertsSwitch => 'Tjek tilmeldte titler';

  @override
  String get sourceAlertsSwitchDesc =>
      'En gang, hver gang appen åbner, for titler har du slået klokken til';

  @override
  String get sourceSkipUnstarted => 'Spring over titler, du ikke har startet';

  @override
  String get sourceSkipUnstartedDesc =>
      'Intet set eller læst endnu, men episoder findes allerede';

  @override
  String get sourceSkipUnseen => 'Spring over, mens du har usete episoder';

  @override
  String get sourceSkipUnseenDesc => 'Du har stadig udgivet afsnit at indhente';

  @override
  String get sourceManage => 'Abonnementer';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titler',
      one: '1 titel',
      zero: 'Ingen titler',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Tjek nu';

  @override
  String get sourceCheckNowDesc =>
      'Ignorerer tidsplanen og overspringsreglerne';

  @override
  String get sourceChecking => 'Tjekker...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titler har noget nyt',
      one: '1 titel har noget nyt',
      zero: 'Intet nyt',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Ingen abonnementer endnu';

  @override
  String get sourceEmptyMessage =>
      'Tryk på klokken over en titels episoder for at få besked om nye';

  @override
  String get sourceAll => 'Alle';

  @override
  String sourceInactive(String manager) {
    return 'Inaktiv: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source er ikke installeret i denne udvidelsestjeneste';
  }

  @override
  String get sourceUnreachable => 'Kilden svarer ikke';

  @override
  String get sourceFinished => 'Færdig';

  @override
  String get sourceSkippedCompleted => 'Springet over: fuldført';

  @override
  String get sourceSkippedUnstarted => 'Springet over: ikke startet';

  @override
  String get sourceSkippedUnseen => 'Springet over: usete episoder';

  @override
  String get sourceWaiting => 'Venter på næste udgivelse';

  @override
  String sourceNextCheck(String when) {
    return 'Næste tjek $when';
  }

  @override
  String get sourceSoon => 'snart';

  @override
  String sourceInHours(int count) {
    return 'om ${count}t';
  }

  @override
  String sourceInDays(int count) {
    return 'i ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Seneste: $number';
  }

  @override
  String get sourceMute => 'Lydløs';

  @override
  String get sourceUnmute => 'Slå lyden til';

  @override
  String get sourceMuted => 'Slået fra';

  @override
  String get sourceUnsubscribe => 'Afmeld';

  @override
  String get sourcePickAnother => 'Vælg en anden kilde';

  @override
  String get sourceOpenExtensions => 'Åbn udvidelser';

  @override
  String get sourceNoticesEmpty => 'Ingen udgivelsesmeddelelser endnu';

  @override
  String get sourceNoticesEmptyMessage =>
      'Nye afsnit og kapitler fra dine titler, du abonnerer på, dukker op her';

  @override
  String get sourceOpenTitle => 'Åbn titel';

  @override
  String get extensionsLoading => 'Indlæser udvidelser...';

  @override
  String get updateWhatsNew => 'Hvad er nyt';

  @override
  String get updateLater => 'Senere';

  @override
  String get updateSkipVersion => 'Spring denne version over';

  @override
  String get updatePreparing => 'Forbereder...';

  @override
  String get updateDownloading => 'Downloader';

  @override
  String get updateInstalling => 'Installerer...';

  @override
  String updateSizeOf(String done, String total) {
    return '$done af $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Udgivet $date';
  }

  @override
  String get updateNoAsset =>
      'Denne udgivelse har ingen download til din enhed';

  @override
  String get updateUpToDate => 'Du er på den seneste version';

  @override
  String get updateIosHint =>
      'iOS-builds findes ikke i App Store. Grib .ipa fra udgivelsessiden og sideindlæs den med AltStore eller SideStore';

  @override
  String get updateOpenedBrowser => 'Tjek din browser';

  @override
  String get updateTryAgain => 'Prøv igen';

  @override
  String get settingsNotifications => 'Meddelelser';

  @override
  String get settingsNotificationsDesc =>
      'Advarsler for dine lister, nye episoder og kapitler og kommentarsvar';

  @override
  String get settingsAboutUpdates => 'Om & opdateringer';

  @override
  String get settingsAboutUpdatesDesc =>
      'Appopdateringer, version, logfiler, links og support';

  @override
  String get settingsGroupAccount => 'Din konto';

  @override
  String get settingsGroupContent => 'Indhold';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Afspiller, undertekster, spring, episodeliste og episodedetaljer';

  @override
  String get settingsMangaDesc =>
      'Læsertilstand, kontroller, display og kapitelsporing';

  @override
  String get settingsNovelDesc =>
      'Tekst, sidevending, oversættelse og højtlæsning';

  @override
  String get settingsLocalPlay => 'Lokal leg';

  @override
  String get settingsLocalPlayDesc =>
      'Afspil filer, mapper, netværksstreams og torrents, eller åbn en bog';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Bøger';

  @override
  String get settingsWatchSections => 'Afsnit';

  @override
  String get settingsSectionLists => 'Episode- og kapitellister';

  @override
  String get settingsSectionProgress => 'Sporing af fremskridt';

  @override
  String get updateChannelDesc =>
      'Stabil er den testede udgivelse. Pre-release og Alpha får nye funktioner hurtigere, men kan gå i stykker';

  @override
  String get checkNowDesc => 'Søg med det samme efter en nyere version';

  @override
  String get generalSectionBasics => 'Sprog & adfærd';

  @override
  String get generalSectionSecurity => 'Sikkerhed';

  @override
  String get generalSectionPrivacy => 'Privatliv';

  @override
  String notificationsOtherService(String service) {
    return 'Skift til $service for at åbne denne';
  }

  @override
  String get secPlayerPlayback =>
      'Standardhastighed, automatisk afspilning, videotilpasning, orientering og billede i billede';

  @override
  String get secPlayerSkip =>
      'Spring automatisk over åbninger, afslutninger og recaps';

  @override
  String get secPlayerControls =>
      'Stryg, hold og tryk på bevægelser og søg forhåndsvisning';

  @override
  String get secPlayerSubtitles =>
      'Sprog, udseende og gengivelse af undertekster';

  @override
  String get secPlayerShaders => 'Anime-opskalering og dine egne shaders';

  @override
  String get secPlayerEngine =>
      'Dekoder, video- og lydoutput, buffering. Skift kun disse, hvis afspilningen har problemer';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts og avanceret tuning';

  @override
  String get secAnimeList => 'Filler-episoder og uviste thumbnails';

  @override
  String get secProgress =>
      'Når dine sete eller læste fremskridt gemmes på din liste';

  @override
  String get secAnimeDetails =>
      'Hvor episodetitler, thumbnails og resuméer kommer fra';

  @override
  String get secReaderReading =>
      'Læsetilstand, sidevending, zoom og næste kapitel';

  @override
  String get secReaderControls =>
      'Tryk på zoner, lydstyrketaster og automatisk rulning';

  @override
  String get secReaderDisplay => 'Baggrund, lysstyrke, fuldskærm og sidetal';

  @override
  String get secNovelText =>
      'Skrifttype, størrelse, mellemrum, marginer og sidevending';

  @override
  String get secNovelTranslate => 'Oversæt kapitler, mens du læser';

  @override
  String get secNovelSpeech => 'Stemme, hastighed og tonehøjde til højtlæsning';

  @override
  String get secNotifyAbout =>
      'Vælg, hvilken slags aktivitet der sender en advarsel';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc => 'Vælg, flyt og skjul knapperne på bjælkerne';

  @override
  String get layoutHint =>
      'Træk en knap for at flytte den (hold først på en berøringsskærm). Tryk på en for at klippe, flytte eller skjule den';

  @override
  String layoutDropInto(String zone) {
    return 'Drop ind: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Flytning $name. Tryk på en indsæt-knap for at placere den';
  }

  @override
  String get layoutTitleFixed => 'Titel';

  @override
  String get layoutZoneTopStart => 'Øverste bjælke, før titlen';

  @override
  String get layoutZoneTopEnd => 'Øverste bjælke efter titlen';

  @override
  String get layoutZoneBottomStart => 'Nederste bjælke, venstre';

  @override
  String get layoutZoneBottomEnd => 'Nederste bjælke, til højre';

  @override
  String get layoutZoneSecondRow => 'Skjult: anden række i normal visning';

  @override
  String get layoutZoneOverflow => 'Skjult: i menuen mere';

  @override
  String get layoutEmptyZone => 'Drop knapper her';

  @override
  String get layoutCut => 'Klip';

  @override
  String get layoutPaste => 'Indsæt her';

  @override
  String get layoutHide => 'Skjul';

  @override
  String layoutMoveTo(String zone) {
    return 'Flyt til $zone';
  }

  @override
  String get layoutReset => 'Nulstil til standard';

  @override
  String get layoutMore => 'Mere';

  @override
  String get sourceWhyAction => 'Hvorfor ingen alarm?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Sidst tjekket';

  @override
  String get sourceWhyNever => 'Ikke endnu';

  @override
  String get sourceWhyNextCheck => 'Næste kontrol';

  @override
  String get sourceWhyNewest => 'Nyeste ved kilden';

  @override
  String get sourceWhyProgress => 'Dine fremskridt';

  @override
  String get sourceWhyListStatus => 'Listestatus';

  @override
  String get sourceWhyFailures => 'Mislykkede checks i træk';

  @override
  String get sourceWhyLastRelease => 'Sidste nye udgivelse set';

  @override
  String get sourceWhyVerdictNew =>
      'En ny udgivelse vises her, så snart kilden viser den, og den næste kontrol kører.';

  @override
  String get sourceWhyVerdictAhead =>
      'Kilden er allerede foran dine fremskridt, så du fik at vide om det en gang. Læs eller hold øje med den for at få den næste advarsel.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Denne titel springes over af reglerne ovenfor. Skift dem i meddelelsesindstillinger, eller brug Tjek nu for at køre det alligevel.';

  @override
  String get sourceWhyVerdictBroken =>
      'Kilden kan ikke nås eller er blevet fjernet, så intet kontrolleres.';

  @override
  String get sourceWhyVerdictMuted => 'Dette abonnement er slået fra.';

  @override
  String get externalPlayerTitle => 'Åbn stream et andet sted';

  @override
  String get externalCopyUrl => 'Kopiér streamlink';

  @override
  String get externalCopied => 'Streamlinket er kopieret';

  @override
  String get externalChooser => 'Åbn i en anden app';

  @override
  String get externalVlc => 'Åbn i VLC';

  @override
  String get externalMpv => 'Åbn i mpv';

  @override
  String get externalWebVideoCast => 'Web Video Cast';

  @override
  String get castViaAppHint => 'Send streamen til Web Video Cast-appen';

  @override
  String get externalFailed =>
      'Strømmen kunne ikke åbnes. Er afspilleren installeret?';

  @override
  String get addonInstalled => 'Installeret';

  @override
  String get loadFailedActivity => 'Aktiviteten kunne ikke indlæses';

  @override
  String get loadFailedFavourites =>
      'Favoritter kunne ikke indlæses. Prøv igen';

  @override
  String get loadFailedStats => 'Kunne ikke indlæse statistik';

  @override
  String get loadFailedReplies => 'Svarene kunne ikke indlæses';

  @override
  String get cantBeUndone => 'Dette kan ikke fortrydes.';

  @override
  String get searchTags => 'Søg tags';

  @override
  String get spoilerTapToView => 'Spoiler, tryk for at se';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Nogen';

  @override
  String get notificationATitle => 'en titel';

  @override
  String get notificationAddedDetail => 'Blev føjet til AniList';

  @override
  String get updateNoReleases => 'Ingen udgivelser fundet';

  @override
  String get updateInvalidResponse => 'Ugyldigt opdateringssvar';

  @override
  String get commentsRateLimited => 'Sats begrænset';

  @override
  String get commentsConnectFailed => 'Kunne ikke oprette forbindelse';

  @override
  String get dnsNoRecords => 'Ingen A-poster returneret';

  @override
  String get importTokenRejected => 'Token afvist';

  @override
  String get developerRoleLead => 'Lead udvikler';

  @override
  String get developerRoleModerator => 'Discord moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type leder';
  }

  @override
  String extensionsOfType(String type) {
    return '$type udvidelser';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name indstillinger';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name giver ingen indstillinger.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Afsnit $episode af $title blev sendt';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Afsnit $episode blev sendt';
  }

  @override
  String notificationAdded(String title) {
    return '$title blev tilføjet til AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Opdateringsserveren kunne ikke finde denne udgivelse: $message';
  }

  @override
  String get installStepJre => 'Java runtime';

  @override
  String get installStepCore => 'Runtime kerne';

  @override
  String installStepsProgress(int current, int total) {
    return 'Trin $current af $total';
  }

  @override
  String get stepWaiting => 'Venter';

  @override
  String get stepChecking => 'Tjekker...';

  @override
  String get stepUpToDate => 'Op til dato';

  @override
  String stepUpToDateWith(String detail) {
    return 'Opdateret · $detail';
  }

  @override
  String get stepWillInstall => 'Vil blive installeret';

  @override
  String get stepWillUpdate => 'Vil blive opdateret';

  @override
  String stepWillUpdateTo(String version) {
    return 'Vil blive opdateret til $version';
  }

  @override
  String get stepInstalled => 'Installeret';

  @override
  String get stepNotNeeded => 'Ikke nødvendigt her';

  @override
  String get stepFailed => 'Mislykkedes';

  @override
  String stepFailedWith(String reason) {
    return 'Mislykkedes: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Det kører på Java runtime og den delte runtime kerne. De installeres først og opdateres, hvis de ændrede sig.';

  @override
  String get installRuntimeNewer =>
      'Den køretid, som denne manager kører på, har en opdatering.';

  @override
  String get removeJvmTitle => 'Vil du fjerne Java runtime?';

  @override
  String get removeJvmMessage =>
      'Desktop-udvidelsesadministratorer holder op med at fungere, indtil det er installeret igen. Den downloades igen, næste gang du installerer eller åbner en.';

  @override
  String get runtimePreparing => 'Forbereder køretiden...';

  @override
  String get calendarAll => 'Alle';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Åbn i browser (Cloudflare check)';

  @override
  String get badgeBoardHint =>
      'Træk et mærke til et hjørne af det første kort, eller træk et mærke, der allerede er på det, for at flytte det. Badges bytter plads, så ingen nogensinde overlapper hinanden. Tryk på et badge nedenfor for at slå det til eller fra.';

  @override
  String get statusAuto => 'Auto';

  @override
  String get unreadCounter => 'Ulæst tæller';

  @override
  String get unreadCounterDesc =>
      'Vis hvor mange episoder eller kapitler der er tilbage på plakater';

  @override
  String get settingsShortcuts => 'Tastaturgenveje';

  @override
  String get settingsShortcutsDesc => 'Se, skift og sluk for hver tast';

  @override
  String get shortcutGroupApp => 'App';

  @override
  String get shortcutGroupPlayer => 'Video afspiller';

  @override
  String get shortcutGroupReader => 'Læser';

  @override
  String get shortcutsEnableApp => 'App genveje';

  @override
  String get shortcutsEnablePlayer => 'Spillergenveje';

  @override
  String get shortcutsEnableReader => 'Læsergenveje';

  @override
  String get shortcutsEnableDesc =>
      'Slå hver nøgle i denne gruppe til eller fra';

  @override
  String get shortcutNotSet => 'Ikke indstillet';

  @override
  String get shortcutAddKey => 'Tilføj en nøgle';

  @override
  String get shortcutResetOne => 'Nulstil til standard';

  @override
  String get shortcutClearKeys => 'Fjern alle nøgler';

  @override
  String get shortcutResetAll => 'Nulstil alle genveje';

  @override
  String get shortcutResetAllDesc => 'Sæt hver tast tilbage til dens standard';

  @override
  String get shortcutPress => 'Tryk på den ønskede tast eller kombination';

  @override
  String get shortcutPressHint =>
      'Hver kombination kan kun tilhøre én handling, så at tage én flytter den.';

  @override
  String get shortcutSeekPercent => 'Hop til et punkt i videoen';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Gå tilbage';

  @override
  String get shortcutAppFullscreen => 'Skift fuldskærm';

  @override
  String get shortcutAppGlass => 'Skift glastilstand';

  @override
  String get shortcutAppMaterialYou => 'Skift materiale dig';

  @override
  String get shortcutAppDark => 'Skift mørk tilstand';

  @override
  String get shortcutAppOled => 'Skift OLED sort';

  @override
  String get shortcutAppSearch => 'Åbn søgning';

  @override
  String get shortcutAppSettings => 'Åbn indstillinger';

  @override
  String get shortcutAppDownloads => 'Åbn downloads';

  @override
  String get shortcutAppNotifications => 'Åbn notifikationer';

  @override
  String get shortcutAppIncognito => 'Slå inkognito til/fra';

  @override
  String get shortcutAppShortcuts => 'Vis tastaturgenveje';

  @override
  String get shortcutPlayerPlayPause => 'Afspil eller sæt på pause';

  @override
  String get shortcutPlayerSeekForward => 'Søg frem';

  @override
  String get shortcutPlayerSeekBack => 'Søg tilbage';

  @override
  String get shortcutPlayerSeekForwardLong => 'Søg frem 30 sekunder';

  @override
  String get shortcutPlayerSeekBackLong => 'Søg 30 sekunder tilbage';

  @override
  String get shortcutPlayerFrameForward => 'Næste ramme';

  @override
  String get shortcutPlayerFrameBack => 'Forrige ramme';

  @override
  String get shortcutPlayerVolumeUp => 'Lydstyrke op';

  @override
  String get shortcutPlayerVolumeDown => 'Lydstyrke ned';

  @override
  String get shortcutPlayerMute => 'Lydløs';

  @override
  String get shortcutPlayerFullscreen => 'Fuldskærm';

  @override
  String get shortcutPlayerNext => 'Næste afsnit';

  @override
  String get shortcutPlayerPrevious => 'Forrige afsnit';

  @override
  String get shortcutPlayerSkip => 'Spring intro eller slutning over';

  @override
  String get shortcutPlayerPanel => 'Afsnitsliste';

  @override
  String get shortcutPlayerSpeedUp => 'Hurtigere afspilning';

  @override
  String get shortcutPlayerSpeedDown => 'Langsommere afspilning';

  @override
  String get shortcutPlayerSpeedReset => 'Normal hastighed';

  @override
  String get shortcutPlayerSubtitleToggle => 'Undertekster til eller fra';

  @override
  String get shortcutPlayerSubtitleCycle => 'Næste undertekstspor';

  @override
  String get shortcutPlayerAudioCycle => 'Næste lydspor';

  @override
  String get shortcutPlayerStreamCycle => 'Næste stream';

  @override
  String get shortcutPlayerFit => 'Skift videotilpasning';

  @override
  String get shortcutReaderRight => 'Side til højre';

  @override
  String get shortcutReaderLeft => 'Side til venstre';

  @override
  String get shortcutReaderNextPage => 'Næste side';

  @override
  String get shortcutReaderPreviousPage => 'Forrige side';

  @override
  String get shortcutReaderControls => 'Vis eller skjul kontrolelementer';

  @override
  String get shortcutReaderNextChapter => 'Næste kapitel';

  @override
  String get shortcutReaderPreviousChapter => 'Forrige kapitel';

  @override
  String shortcutTaken(String action) {
    return 'Taget fra $action';
  }

  @override
  String get incognitoTurnedOn => 'Inkognitotilstand er slået til';

  @override
  String get incognitoTurnedOff => 'Inkognitotilstand er slået fra';

  @override
  String get onHoldAnime => 'Vent anime';

  @override
  String get onHoldManga => 'Hold manga';

  @override
  String get droppedAnime => 'Droppet anime';

  @override
  String get droppedManga => 'Droppet manga';

  @override
  String get generalSectionDesktop => 'Desktop';

  @override
  String get closeAction => 'Når vinduet er lukket';

  @override
  String get closeActionQuit => 'Afslut appen';

  @override
  String get closeActionWhenBusy =>
      'Bliv ved med at løbe i bakken, mens noget kører';

  @override
  String get closeActionAlways => 'Løb altid i bakken';

  @override
  String get closeActionNoTray =>
      'Systembakken er ikke tilgængelig her, så appen afsluttes, når den lukkes';

  @override
  String get gamepadNav => 'Gamepad navigation';

  @override
  String get gamepadNavDesc =>
      'Flyt rundt i appen og styr afspilleren med en spilcontroller';

  @override
  String get trayShow => 'Vis Dartotsu';

  @override
  String get trayQuit => 'Afslut';

  @override
  String get trayIdle => 'Intet kører';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Downloader $count elementer',
      one: 'Downloader $count element',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Synkroniserer dine lister';

  @override
  String get trayUpdating => 'Opdatering af appen';

  @override
  String get trayPlaying => 'Leger i et lille vindue';

  @override
  String get traySearch => 'Søg';

  @override
  String get trayPauseDownloads => 'Sæt downloads på pause';

  @override
  String get trayResumeDownloads => 'Genoptag downloads';

  @override
  String get playerDownloadTitle => 'Download af afspilleren';

  @override
  String get playerDownloadBody =>
      'Dartotsu henter sin videomotor én gang. Afspilningen starter, så snart den er klar.';

  @override
  String get playerDownloadStarting => 'Starter download...';

  @override
  String get playerDownloadFailedTitle => 'Kunne ikke få afspilleren';

  @override
  String get playerDownloadFailedBody =>
      'Tjek din forbindelse, og prøv igen. Downloaden fortsætter, hvor den stoppede.';

  @override
  String get playerDownloadRetry => 'Prøv igen';

  @override
  String get playerDownloadCopy => 'Kopier detaljer';

  @override
  String get removePlayerTitle => 'Vil du fjerne afspilleren?';

  @override
  String get removePlayerMessage =>
      'Videoer kan ikke afspilles, før afspilleren er downloadet igen.';

  @override
  String get trailerLoading => 'Indlæser traileren...';

  @override
  String get trailerFailed =>
      'Kunne ikke afspille traileren her, åbner den i browseren';
}
