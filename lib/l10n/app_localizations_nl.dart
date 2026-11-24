// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'De NIEUWE beste app om\nanime & manga bij te houden';

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
  String get loadMore => 'Meer laden';

  @override
  String get login => 'Inloggen';

  @override
  String get continueAsGuest => 'Doorgaan als gast';

  @override
  String get getStarted => 'Aan de slag';

  @override
  String get loginWithToken => 'Inloggen met token';

  @override
  String get pasteTokenHint => 'Plak je toegangstoken';

  @override
  String loginTo(String service) {
    return 'Inloggen bij $service';
  }

  @override
  String get settings => 'Instellingen';

  @override
  String get account => 'Rekening';

  @override
  String get about => 'Over';

  @override
  String get language => 'Taal';

  @override
  String get animationSpeed => 'Animaties';

  @override
  String get animationSpeedDesc =>
      'Snelheid van overgangen en openingseffecten in de hele app';

  @override
  String get animationSpeedOff => 'Uit';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Extensies',
      one: 'Extensie',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Onbekende bron';

  @override
  String get install => 'Installeren';

  @override
  String get update => 'Updaten';

  @override
  String get uninstall => 'Verwijderen';

  @override
  String get updateInstallCancelled =>
      'Installatie geannuleerd. Als Android zei dat de app botst met de geïnstalleerde, klopt de handtekening niet: verwijder eerst de huidige versie en installeer dan de update';

  @override
  String updateInstallFailed(String error) {
    return 'Update mislukt: $error';
  }

  @override
  String get appLock => 'App-vergrendeling';

  @override
  String get appLockDesc =>
      'Vraagt om een code als je de app opent of er na een tijdje terugkomt';

  @override
  String get appLockBiometric => 'Ontgrendel met biometrie';

  @override
  String get appLockBiometricDesc =>
      'Gebruik uw vingerafdruk of gezicht in plaats van de toegangscode te typen';

  @override
  String get appLockBiometricReason => 'Ontgrendel Dartotsu';

  @override
  String get appLockDelay => 'Vergrendelen bij inactiviteit';

  @override
  String get appLockDelayAlways => 'Altijd';

  @override
  String get appLockDelayNever => 'Nooit';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuten',
      one: '1 minuut',
    );
    return 'Na $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Gebruik biometrie';

  @override
  String get appLockUnlock => 'Voer je code in';

  @override
  String get appLockWrong => 'Verkeerde code';

  @override
  String appLockWait(String seconds) {
    return 'Te vaak geprobeerd, wacht ${seconds}s';
  }

  @override
  String get appLockNew => 'Kies een code';

  @override
  String get appLockNewHint => '4 tot 8 cijfers';

  @override
  String get appLockConfirm => 'Voer hem nog een keer in';

  @override
  String get appLockMismatch => 'De codes komen niet overeen';

  @override
  String get appLockOn => 'Code ingesteld';

  @override
  String get appLockRemoveTitle =>
      'Voer je code in om de vergrendeling uit te zetten';

  @override
  String get installFailed => 'Installeren mislukt';

  @override
  String get updateFailed => 'Updaten mislukt';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-updates beschikbaar',
      one: '1 update beschikbaar',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Alles bijwerken';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done van $total extensies bijgewerkt';
  }

  @override
  String get updateConflictTitle => 'Update niet geïnstalleerd';

  @override
  String updateConflictBody(String names) {
    return '$names kon niet over de bestaande versie worden geïnstalleerd. Dit betekent meestal dat de geïnstalleerde kopie anders is ondertekend. Verwijder het en installeer de nieuwe versie?';
  }

  @override
  String get updateConflictAction => 'Verwijderen en opnieuw installeren';

  @override
  String get noSourceSettings => 'Deze bron heeft geen instellingen';

  @override
  String get addPluginRepository => 'Pluginrepository toevoegen';

  @override
  String get pluginIndexUrlHint => 'URL van pluginindex';

  @override
  String get addRepository => 'Repository toevoegen';

  @override
  String get importRepositoryFile => 'Importeer een bestand';

  @override
  String get pluginRepoUpdated => 'Pluginrepository bijgewerkt';

  @override
  String get pluginRepoUpdateFailed => 'Pluginrepository verversen mislukt';

  @override
  String get ok => 'Oké';

  @override
  String get cancel => 'Annuleren';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get save => 'Opslaan';

  @override
  String get reset => 'Resetten';

  @override
  String get clear => 'Wissen';

  @override
  String get test => 'Testen';

  @override
  String get testing => 'Aan het testen…';

  @override
  String get resolving => 'Aan het oplossen…';

  @override
  String get none => 'Geen';

  @override
  String get selectMediaService => 'Kies een mediaservice';

  @override
  String get manageServices => 'Mediadiensten';

  @override
  String get manageServicesDesc =>
      'Herschik de services en kies welke in de kiezer worden weergegeven';

  @override
  String get manageServicesHint =>
      'Sleep om de volgorde te wijzigen, schakel degene uit die u niet gebruikt';

  @override
  String get pickColor => 'Kies een kleur';

  @override
  String get colorPickerCustom => 'Aangepast';

  @override
  String get colorPickerTransparent => 'Transparant';

  @override
  String get ltr => 'Van links naar rechts';

  @override
  String get searchSettings => 'Instellingen zoeken';

  @override
  String nothingMatches(String query) {
    return 'Niks gevonden voor \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return '$category doorzoeken';
  }

  @override
  String get settingsAppearance => 'Uiterlijk';

  @override
  String get settingsAppearanceDesc => 'Thema, kleuren, glasmodus';

  @override
  String get settingsGeneral => 'Algemeen';

  @override
  String get settingsGeneralDesc => 'Taal en gedrag';

  @override
  String get settingsNetwork => 'Netwerk';

  @override
  String get settingsNetworkDesc => 'User-agent, certificaten, DNS en proxy';

  @override
  String get settingsAccountDesc => 'Trackingservice en inloggen';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get amoledBlack => 'AMOLED-zwart';

  @override
  String get amoledBlackDesc => 'Puur zwarte vlakken in de donkere modus';

  @override
  String get glassMode => 'Glasmodus';

  @override
  String get glassModeDesc => 'Matte vlakken over de covers van je bibliotheek';

  @override
  String get shelfFrame => 'Kader rond secties';

  @override
  String get shelfFrameDesc =>
      'Toon een kaart achter elke rij, of laat de rijen direct op de pagina staan';

  @override
  String get settingsExtensionsDesc =>
      'Bronbeheerders, repositories en extensie-opties';

  @override
  String get settingsAddons => 'Add-ons';

  @override
  String get customPath => 'Eigen opslagpad';

  @override
  String get stories => 'Verhalen';

  @override
  String get watchOrder => 'Bekijk de volgorde';

  @override
  String get watchOrderOpenSite => 'Open op chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Er is geen kijkvolgorde gevonden voor deze titel';

  @override
  String get watchOrderOpenFailed => 'Kan die titel niet openen';

  @override
  String get watchOrderCurrent => 'Je bent hier';

  @override
  String get watchOrderCredit => 'Bekijk bestellingen van chiaki.site';

  @override
  String get customPathDesc =>
      'Waar de appdata staat. Lang indrukken om te resetten';

  @override
  String get selectDirectory => 'Map kiezen';

  @override
  String get differentCacheManager => 'Alternatieve afbeeldingscache';

  @override
  String get differentCacheManagerDesc =>
      'Gebruik een andere cachemanager voor afbeeldingen';

  @override
  String get settingsSync => 'Synchronisatie-instellingen';

  @override
  String get settingsSyncDesc =>
      'Houd uw instellingen op elk apparaat hetzelfde. Ze worden opgeslagen in een privé-gist in uw GitHub-account';

  @override
  String get settingsSyncSwitch => 'Synchroniseren bij verandering';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Log in met GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Instellingen worden opgeslagen in een privé-gist in uw account';

  @override
  String get settingsSyncToken => 'Gebruik een persoonlijk toegangstoken';

  @override
  String get settingsSyncTokenDesc =>
      'Maak er een op github.com/settings/tokens met alleen de basisrechten';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Aangemeld als $user';
  }

  @override
  String get settingsSyncSignOut => 'Meld u af';

  @override
  String settingsSyncCode(Object code) {
    return 'Voer $code in op GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'De GitHub-pagina is geopend in uw browser. Tik om de code te kopiëren, of houd ingedrukt om te annuleren.';

  @override
  String get settingsSyncSignInFailed => 'Kan niet inloggen bij GitHub';

  @override
  String get dcPreview => 'Voorbeeld';

  @override
  String get dcSampleWatching => 'Kijken';

  @override
  String get dcSampleReading => 'Lezen';

  @override
  String get dcSampleBrowsing => 'Browsen';

  @override
  String get dcSampleLive => 'Op dit moment';

  @override
  String get dcLiveNothing =>
      'Er is momenteel niets te zien. Open een titel, start een aflevering of een hoofdstuk en het verschijnt hier.';

  @override
  String get dcMemberList => 'In de ledenlijst';

  @override
  String get dcAccount => 'Rekening';

  @override
  String get dcSignIn => 'Log in met Discord';

  @override
  String get dcSignOut => 'Meld u af';

  @override
  String get dcDesktopHint =>
      'Zonder verbinding te maken, toont Discord “Watching Dartotsu” via de desktop-app. Verbind Discord om de activiteit naar uw titel te vernoemen, ook op mobiel.';

  @override
  String get dcMobileHint =>
      'Verbind Discord om te laten zien wat je kijkt of leest. Het gebruikt de autorisatiepagina van Discord, niet uw accounttoken.';

  @override
  String get dcConnect => 'Verbind onenigheid';

  @override
  String get dcConnectDesc =>
      'Opent de autorisatiepagina van Discord en voegt Dartotsu toe onder Geautoriseerde apps. Discord vraagt ​​om je aanwezigheid te updaten. Er wordt alleen een vernieuwingstoken opgeslagen, niet uw accounttoken.';

  @override
  String get dcConnectFailed => 'Kon Discord niet verbinden';

  @override
  String get dcConnectedSnack => 'Onenigheid verbonden';

  @override
  String get dcDisconnect => 'Verbreek de verbinding';

  @override
  String get dcDisconnectedSnack => 'Onenigheid verbroken';

  @override
  String get dcUseToken => 'Gebruik in plaats daarvan een token';

  @override
  String get dcRouteDesktop => 'Via de Discord desktop-app';

  @override
  String get dcRouteHeadless => 'Via uw account';

  @override
  String get dcRouteGateway => 'Via uw account, live';

  @override
  String get dcRouteLinked => 'Verbonden app';

  @override
  String get dcRouteNone => 'Niet verbonden';

  @override
  String get dcStatusNeedsToken =>
      'Heeft een Discord-token nodig. Door de app te verbinden, wordt uw online status niet ingesteld.';

  @override
  String get dcAccountOnly => 'Vereist een ingelogd account';

  @override
  String get dcStatusSection => 'Status';

  @override
  String get dcControlStatus => 'Beheer mijn status';

  @override
  String get dcControlStatusDesc =>
      'Houdt een live verbinding met Discord terwijl Rich Presence is ingeschakeld, zodat Dartotsu je status kan instellen.';

  @override
  String get dcStatusOnline => 'Online';

  @override
  String get dcStatusIdle => 'Inactief';

  @override
  String get dcStatusDnd => 'Niet storen';

  @override
  String get dcStatusInvisible => 'Onzichtbaar';

  @override
  String get dcCustomStatus => 'Aangepaste status';

  @override
  String get dcCustomStatusHint => 'Wat ben je van plan?';

  @override
  String get dcActivitySection => 'Activiteit';

  @override
  String get dcShowWatching => 'Laat zien terwijl je kijkt';

  @override
  String get dcShowReading => 'Tonen tijdens het lezen';

  @override
  String get dcListening => 'Luisteren';

  @override
  String get dcCompeting => 'Concurreren';

  @override
  String get dcActivityName => 'Naam van activiteit';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Titel';

  @override
  String get dcNameCustom => 'Aangepast';

  @override
  String get dcCustomNameHint => 'Naam weergegeven na \'Kijken\'';

  @override
  String get dcStatusText => 'Statustekst';

  @override
  String get dcStatusTextDesc => 'Wat de ledenlijst naast je naam laat zien';

  @override
  String get dcDisplayName => 'Naam';

  @override
  String get dcDisplayState => 'Staat';

  @override
  String get dcDisplayDetails => 'Details';

  @override
  String get dcTextSection => 'Tekst';

  @override
  String get dcDetails => 'Bovenste regel';

  @override
  String get dcState => 'Kortom';

  @override
  String get dcTemplateHint => 'Leeg gebruikt de standaardwaarde';

  @override
  String get dcVariables => 'Tik om een waarde in te voegen';

  @override
  String get dcImagesSection => 'Afbeeldingen';

  @override
  String get dcLargeImage => 'Grote afbeelding';

  @override
  String get dcLargeAuto => 'Automatisch';

  @override
  String get dcLargeCover => 'Deksel';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Klein beeld';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Geen';

  @override
  String get dcTimerStyle => 'Timer-stijl';

  @override
  String get dcTimerAuto => 'Automatisch';

  @override
  String get dcTimerElapsed => 'Verstreken';

  @override
  String get dcTimerRemaining => 'Resterend';

  @override
  String get dcButtonsSection => 'Knoppen';

  @override
  String get dcButtonMedia => 'Link naar de titel';

  @override
  String get dcButtonApp => 'Link naar Dartotsu';

  @override
  String get dcButtonCustom => 'Aangepaste knop';

  @override
  String get dcButtonLabel => 'Etiket';

  @override
  String get dcButtonUrl => 'Koppeling';

  @override
  String get dcPrivacySection => 'Privacy';

  @override
  String get dcPrivateText => 'Privé tekst';

  @override
  String get dcPrivateHint => 'Iets privés';

  @override
  String get dcTokenWarning =>
      'Bij het inloggen wordt uw accounttoken gebruikt. De regels van Discord ontmoedigen dit, dus gebruik het op eigen risico.';

  @override
  String get dcConnected => 'Verbonden';

  @override
  String get dcConnection => 'Verbinding';

  @override
  String get dcMethodDesktop => 'Discord desktop-app';

  @override
  String get dcMethodDesktopDesc =>
      'Wordt automatisch gebruikt als er niets anders is aangesloten. Discord moet geopend zijn op deze computer.';

  @override
  String get dcMethodToken => 'Accounttoken';

  @override
  String get dcInUse => 'In gebruik';

  @override
  String get dcRecommended => 'Aanbevolen';

  @override
  String get dcConnecting => 'Verbinden…';

  @override
  String get dcDisconnected => 'Niet verbonden';

  @override
  String dcSignedInAs(String name) {
    return 'Aangemeld als $name';
  }

  @override
  String get settingsSyncOn => 'Aan';

  @override
  String get settingsSyncCustom => 'Aangepast';

  @override
  String get settingsSyncChangedHeader => 'Gewijzigde instellingen';

  @override
  String get settingsSyncNoneChanged =>
      'Je hebt hier nog niets aan veranderd, dus er valt niets te synchroniseren.';

  @override
  String get settingsSyncChangedOnly =>
      'Alleen de instellingen die u heeft gewijzigd, worden opgeslagen. Al het andere gebruikt de standaard op elk apparaat. Het cloudpictogram laat zien wat er al op de server staat.';

  @override
  String get settingsSyncOffCategory =>
      'Synchroniseert niet. Deze blijven op dit apparaat staan ​​en de serverkopie blijft zoals deze is.';

  @override
  String get settingsSyncPartsNote =>
      'Per apparaat. Uit houdt de eigen waarde van elk apparaat, dus een telefoon en een tv kunnen verschillen.';

  @override
  String get settingsSyncPartSubtitles => 'Grootte en kleuren van ondertitels';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Grootte, gewicht, kleuren en positie';

  @override
  String get settingsSyncPartPictureColors => 'Kleuren van afbeeldingen';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Helderheid, contrast, verzadiging, gamma, tint en HDR';

  @override
  String get settingsSyncPartPalette => 'Thema kleuren';

  @override
  String get settingsSyncPartPaletteDesc => 'Thema, accentkleur en OLED-zwart';

  @override
  String get settingsSyncCatOther => 'Kijk, lees en diensten';

  @override
  String get settingsSyncTitles => 'Bekijk de voortgang en titels';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titels en $resume cv-items op de server';
  }

  @override
  String get settingsSyncTitlesNone => 'Er is nog niets geüpload';

  @override
  String get settingsSyncTitlesNote =>
      'Bekijk en lees posities, de cv-plank, uw lokale lijsten, bladwijzers, hoogtepunten en opties per titel. Bronmatches en -streams blijven op elk apparaat staan ​​omdat ze afhankelijk zijn van uw extensies. Titels worden maximaal elke 45 seconden geüpload.';

  @override
  String get settingsSyncConnect => 'Niet verbonden';

  @override
  String get settingsSyncConnectDesc =>
      'Log in met GitHub om uw instellingen op elk apparaat hetzelfde te houden.';

  @override
  String get settingsSyncFailedTitle => 'Synchronisatie mislukt';

  @override
  String get settingsSyncPaused => 'Gepauzeerd';

  @override
  String get settingsSyncPausedDesc =>
      'Er wordt niets geüpload of gedownload terwijl dit is uitgeschakeld.';

  @override
  String get settingsSyncUpToDate => 'Up-to-date';

  @override
  String get settingsSyncRetry => 'Opnieuw proberen';

  @override
  String get settingsSyncAccount => 'GitHub-account';

  @override
  String get settingsSyncAccountDesc =>
      'Uw gegevens gaan naar een privé-gist in uw eigen account.';

  @override
  String get settingsSyncWaiting => 'Wachten op uw goedkeuring op GitHub';

  @override
  String get settingsSyncCopyCode => 'Tik op de code om deze te kopiëren';

  @override
  String get settingsSyncCancel => 'Annuleer';

  @override
  String get settingsSyncStatSettings => 'Instellingen';

  @override
  String get settingsSyncStatTitles => 'Titels';

  @override
  String get settingsSyncStatShelf => 'Hervatten';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$time geüpload van $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gewijzigd',
      one: '1 veranderd',
      zero: 'Er is nog niets veranderd',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Accounts en wachtwoorden';

  @override
  String get settingsSyncSecretsDesc =>
      'Synchroniseer uw aanmeldingen (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API-sleutels en app-vergrendeling tussen uw apparaten. Ze zijn gecodeerd met een wachtwoordzin die op je apparaten blijft staan, zodat GitHub ze nooit ziet.';

  @override
  String get settingsSyncSecretsOn =>
      'Accounts worden gesynchroniseerd en gecodeerd';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Als u zich afmeldt op het ene apparaat, wordt u niet afgemeld op de andere apparaten.';

  @override
  String get settingsSyncSecretsBroken =>
      'De wachtwoordzin komt niet meer overeen met die op de server. Voer het opnieuw in om accounts te blijven synchroniseren.';

  @override
  String get settingsSyncPassphraseSet => 'Stel een wachtwoordzin in';

  @override
  String get settingsSyncPassphraseEnter => 'Voer uw wachtwoordzin in';

  @override
  String get settingsSyncPassphraseField => 'Wachtwoordzin';

  @override
  String get settingsSyncPassphraseConfirm => 'Herhaal de wachtwoordzin';

  @override
  String get settingsSyncPassphraseNew =>
      'Kies een wachtwoordzin van minimaal 6 tekens. Het wordt nergens anders opgeslagen dan op uw apparaten en kan niet worden hersteld. Als u het vergeet, verwijdert u de serverkopie en begint u opnieuw.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Voer de wachtwoordzin in die u op uw andere apparaat hebt gekozen. Accounts op dit apparaat worden vervangen door de gesynchroniseerde accounts.';

  @override
  String get settingsSyncPassphraseWrong => 'Verkeerde wachtwoordzin';

  @override
  String get settingsSyncPassphraseMismatch =>
      'De wachtwoordzinnen komen niet overeen';

  @override
  String get settingsSyncPassphraseShort => 'Gebruik minimaal 6 tekens';

  @override
  String get settingsSyncSecretsStop =>
      'Stop met het synchroniseren van accounts';

  @override
  String get settingsSyncSecretsDelete => 'Verwijderen uit GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Hiermee wordt het gecodeerde accountbestand uit uw kern verwijderd. Andere apparaten behouden hun aanmeldingen en kunnen een nieuwe wachtwoordzin instellen.';

  @override
  String get settingsSyncWhat => 'Wat te synchroniseren';

  @override
  String get settingsSyncServer => 'Op de server';

  @override
  String get settingsSyncServerEmpty => 'Er is nog niets geüpload';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count instellingen, geüpload $time van $device';
  }

  @override
  String get settingsSyncThisDevice => 'dit apparaat';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count instellingen op de server',
      one: '1 instelling op de server',
      zero: 'Niets op de server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Synchroniseer nu';

  @override
  String get settingsSyncRunning => 'Synchroniseren…';

  @override
  String get settingsSyncNever => 'Nog niet gesynchroniseerd';

  @override
  String settingsSyncLast(Object time) {
    return 'Laatst gesynchroniseerd $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Synchronisatie mislukt: $error';
  }

  @override
  String get settingsSyncScope =>
      'Alleen instellingen die overal hetzelfde werken, worden gesynchroniseerd. Accounts, tokens, mappen, extensies, meldingen, Discord, updates en venstergrootte blijven op elk apparaat.';

  @override
  String get backupAndRestore => 'Back-up en herstel';

  @override
  String get backupAndRestoreDesc => 'Sla je voorkeuren op of laad ze in';

  @override
  String get backup => 'Back-up';

  @override
  String get restore => 'Herstellen';

  @override
  String get loadExtensionsIcon => 'Extensie-iconen laden';

  @override
  String get autoUpdateRuntimes =>
      'Update de runtimes van extensies automatisch';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download nieuwe Aniyomi, CloudStream en andere runtimeversies op de achtergrond. Uit: er verschijnt een updatepictogram naast de manager.';

  @override
  String get loadExtensionsIconDesc => 'Toon bron-iconen in de extensielijsten';

  @override
  String get sectionStorage => 'Opslag';

  @override
  String get sectionManagers => 'Beheerders';

  @override
  String get sectionOptions => 'Opties';

  @override
  String get backupTabBackup => 'Back-up maken';

  @override
  String get backupTabRestore => 'Herstellen';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys instellingen in $categories categorieën';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Laatste back-up $time';
  }

  @override
  String get backupNever => 'Nog geen back-up';

  @override
  String get backupSelectAll => 'Alles selecteren';

  @override
  String get backupClearAll => 'Wissen';

  @override
  String backupKeys(Object count) {
    return '$count instellingen';
  }

  @override
  String get backupPasswordRequired =>
      'Wachtwoord (vereist voor accountgegevens)';

  @override
  String get backupProtectedNeedsPassword =>
      'Stel een wachtwoord in om een back-up van accountgegevens te maken, of schakel dit uit';

  @override
  String get backupProtectedSkipped =>
      'Deze back-up heeft geen wachtwoord, dus de accountgegevens zijn overgeslagen';

  @override
  String get backupPassword => 'Wachtwoord (optioneel)';

  @override
  String get backupPasswordHint => 'Laat leeg voor de standaard';

  @override
  String get backupSensitive => 'Bevat inlogtokens. Houd dit bestand privé';

  @override
  String get backupCreate => 'Back-up maken';

  @override
  String backupSaved(Object name) {
    return 'Back-up opgeslagen als $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Back-up mislukt: $error';
  }

  @override
  String get backupPickFile => 'Kies een back-upbestand';

  @override
  String get backupPickFileDesc =>
      'Kies een .json-bestand gemaakt door Dartotsu';

  @override
  String get backupChooseAnother => 'Ander bestand kiezen';

  @override
  String get backupCreatedAt => 'Gemaakt';

  @override
  String get backupAppVersion => 'App-versie';

  @override
  String get backupDevice => 'Apparaat';

  @override
  String get backupAccounts => 'Rekeningen';

  @override
  String get backupSize => 'Grootte';

  @override
  String get backupEncrypted => 'Met wachtwoord beveiligd';

  @override
  String get backupUnlock => 'Ontgrendelen';

  @override
  String get backupWrongPassword =>
      'Kan dit bestand niet lezen. Check het wachtwoord';

  @override
  String get backupRestoreSelected => 'Selectie herstellen';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count instellingen herstellen? Bestaande waarden in deze categorieën worden overschreven.';
  }

  @override
  String get backupRestored =>
      'Hersteld. Start de app opnieuw op om alles toe te passen';

  @override
  String backupRestoreFailed(Object error) {
    return 'Herstellen mislukt: $error';
  }

  @override
  String get backupSelectOne => 'Kies minstens één categorie';

  @override
  String get backupCatTheme => 'Uiterlijk';

  @override
  String get backupCatThemeDesc =>
      'Thema, kleuren, glas, lettertypen en kaartstijl';

  @override
  String get backupCatCommon => 'Algemeen';

  @override
  String get backupCatCommonDesc => 'Taal, opslag, netwerk en extensie-opties';

  @override
  String get backupCatPlayer => 'Speler';

  @override
  String get backupCatPlayerDesc => 'Spelervoorkeuren';

  @override
  String get backupCatReader => 'Lezer';

  @override
  String get backupCatReaderDesc => 'Lezervoorkeuren';

  @override
  String get backupCatProtected => 'Rekeningen';

  @override
  String get backupCatProtectedDesc => 'Inlogtokens en inloggegevens';

  @override
  String get backupCatOther => 'Services en feeds';

  @override
  String get backupCatOtherDesc => 'Feedindelingen, lijsten en service-opties';

  @override
  String get logFile => 'Logbestand';

  @override
  String get logFileDesc => 'Deel het applog, of kopieer het pad op Linux';

  @override
  String get logDelete => 'Logbestanden verwijderen';

  @override
  String get logDeleteDesc =>
      'Wis de opgeslagen app-logboeken om ruimte vrij te maken';

  @override
  String logDeleted(String size) {
    return '$size aan logboeken verwijderd';
  }

  @override
  String get missingSequel => 'Vervolg ontbreekt';

  @override
  String get rising => 'Stijgend';

  @override
  String get stacks => 'Stapels';

  @override
  String get stacksAll => 'Allemaal';

  @override
  String get stacksFeatured => 'Uitgelicht';

  @override
  String get stacksMine => 'De jouwe';

  @override
  String get stacksSaved => 'Opgeslagen';

  @override
  String get stacksFollowing => 'Volgende';

  @override
  String get stacksEmpty => 'Er zijn hier nog geen stapels';

  @override
  String get stacksSignIn =>
      'Meld u aan bij MangaBaka om uw stapels te bekijken';

  @override
  String get stacksScopeNeeded =>
      'Je stapels hebben een nieuwe toestemming nodig. Meld u opnieuw aan bij MangaBaka om dit toe te staan.';

  @override
  String get stacksSignInAgain => 'Meld u opnieuw aan';

  @override
  String get stacksCouldntLoad => 'Kan de stapels niet laden';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count serie',
      one: '1 serie',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '',
      one: '1 opslaan',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'door $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'Deze stapel is leeg';

  @override
  String get stackSave => 'Stapel opslaan';

  @override
  String get stackUnsave => 'Verwijderen uit opgeslagen';

  @override
  String get stackSavedToast => 'Opgeslagen in uw stapels';

  @override
  String get stackRemovedToast => 'Verwijderd uit uw opgeslagen stapels';

  @override
  String userStacks(String name) {
    return 'Stapels van $name';
  }

  @override
  String get newsTitle => 'Nieuws';

  @override
  String get newsEmpty => 'Er is momenteel geen nieuws';

  @override
  String get newsCouldntLoad => 'Kan het nieuws niet laden';

  @override
  String get logFileCopied => 'Logpad gekopieerd';

  @override
  String get donateSheetTitle => 'Vind je Dartotsu leuk?';

  @override
  String get donateSheetMessage =>
      'Dartotsu wordt gemaakt en onderhouden door één persoon. Als je de app nuttig vindt, overweeg dan de ontwikkeling te steunen.';

  @override
  String get donateLater => 'Misschien later';

  @override
  String get glassBackground => 'Glasachtergrond';

  @override
  String get glassBackgroundDesc =>
      'Je profielbanner, tenzij je een afbeeldingslink instelt';

  @override
  String get glassBackgroundHint =>
      'Afbeeldingslink (leeg laten voor je banner)';

  @override
  String get followCover => 'Cover volgen';

  @override
  String get followCoverDesc =>
      'Kleuren volgen de achtergrond, en op detailpagina\'s de cover';

  @override
  String get followCoverMediaOnly => 'Alleen voor media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Volg alleen de omslag op mediapagina\'s, overal blijven de normale kleuren behouden';

  @override
  String get cardStyle => 'Kaartstijl';

  @override
  String get cardStyleDesc => 'Titelplaatsing, grootte, voortgang en badges';

  @override
  String get customFont => 'Lettertype';

  @override
  String get customFontDesc =>
      'Standaard, een bestand van je apparaat of Google Fonts';

  @override
  String get customFontError => 'Kon dat lettertypebestand niet laden';

  @override
  String get googleFontError => 'Kon dat lettertype niet downloaden';

  @override
  String get yourFonts => 'Jouw lettertypen';

  @override
  String get addFontFile => 'Lettertypebestand toevoegen…';

  @override
  String get browseGoogleFonts => 'Google Fonts bekijken…';

  @override
  String get searchGoogleFonts => 'Google Fonts zoeken';

  @override
  String get defaultFont => 'Standaard';

  @override
  String get materialYou => 'Materiaal jij';

  @override
  String get materialYouDesc => 'Dynamische kleur van het systeem';

  @override
  String get jsonTheme => 'Eigen themabestand';

  @override
  String get jsonThemeDesc =>
      'Live kleuren uit ~/.config/dartotsu/theme.json (een eigen script, of je eigen aanpassingen)';

  @override
  String get themeMode => 'Themamodus';

  @override
  String get mode => 'Modus';

  @override
  String get trackingService => 'Trackingservice';

  @override
  String get signOut => 'Uitloggen';

  @override
  String get signIn => 'Inloggen';

  @override
  String get notSignedIn => 'Niet ingelogd';

  @override
  String signOutOf(String service) {
    return 'Uitloggen bij $service?';
  }

  @override
  String get checkForUpdates => 'Controleren op updates';

  @override
  String get checkForUpdatesDesc => 'Melding bij een nieuwe GitHub-release';

  @override
  String get updateChannel => 'Updatekanaal';

  @override
  String get channel => 'Kanaal';

  @override
  String get stable => 'Stabiel';

  @override
  String get preRelease => 'Pre-release';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Nu controleren';

  @override
  String get userAgent => 'Gebruiker-agent';

  @override
  String get settingDefault => 'Standaard';

  @override
  String currentlyUsing(String value) {
    return 'Nu: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Standaard (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Typ';

  @override
  String get proxyHost => 'Gastheer';

  @override
  String get proxyPort => 'Poort';

  @override
  String get proxyUsername => 'Gebruikersnaam';

  @override
  String get proxyPassword => 'Wachtwoord';

  @override
  String get optional => 'Optioneel';

  @override
  String get clearCookies => 'Cookies wissen';

  @override
  String get clearCookiesDesc => 'Verwijder alle opgeslagen cookies';

  @override
  String notImplementedArea(String area) {
    return '$area — komt binnenkort';
  }

  @override
  String notImplementedService(String service) {
    return '$service ondersteunt dit nog niet.';
  }

  @override
  String get couldNotLoadResults => 'Kon de resultaten niet laden';

  @override
  String get updateCheckFailed => 'Kon niet op updates controleren';

  @override
  String get highRefreshRate => 'Hoge verversingssnelheid';

  @override
  String get highRefreshRateDesc =>
      'Gebruik de hoogste verversingssnelheid die je scherm aankan';

  @override
  String get imageSave => 'Afbeelding opslaan';

  @override
  String imageSavedTo(String path) {
    return 'Opgeslagen in $path';
  }

  @override
  String get imageActionFailed => 'Kon de afbeelding niet downloaden';

  @override
  String get imageTitleCover => 'Deksel';

  @override
  String get imageTitlePage => 'Pagina';

  @override
  String get imageTitleBanner => 'Banier';

  @override
  String get imageTitleAvatar => 'Profielfoto';

  @override
  String get verifyTls => 'Certificaten verifiëren';

  @override
  String get verifyTlsDesc =>
      'Weiger servers met ongeldige HTTPS-certificaten. Zet dit alleen uit voor een bron met een zelfondertekend certificaat';

  @override
  String get clearCookiesConfirm =>
      'Alle opgeslagen cookies verwijderen? Hierdoor word je mogelijk bij sommige bronnen uitgelogd.';

  @override
  String get version => 'Versie';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Broncode, issues en releases';

  @override
  String get discordDesc => 'Community en support';

  @override
  String get supportDeveloper => 'Ondersteun de ontwikkelaar';

  @override
  String get buyMeCoffee => 'Koop een koffie voor mij';

  @override
  String get upiId => 'UPI-ID';

  @override
  String get upiCopied => 'UPI-ID gekopieerd';

  @override
  String get donateDesc => 'Steun de ontwikkeling';

  @override
  String get contributors => 'Bijdragers';

  @override
  String get contributorsDesc => 'De mensen die Dartotsu hebben gemaakt';

  @override
  String get contributorsLoadFailed => 'Kon de bijdragers niet laden';

  @override
  String get forks => 'Vorken';

  @override
  String get forksDesc => 'Projecten gebouwd op Dartotsu';

  @override
  String get forksEmpty => 'Geen forks gevonden';

  @override
  String get sectionColors => 'Kleuren';

  @override
  String get sectionDisplay => 'Weergave';

  @override
  String get sectionStyle => 'Stijl';

  @override
  String get sectionCommunity => 'Gemeenschap';

  @override
  String get sectionAppInfo => 'App-info';

  @override
  String get sectionRequests => 'Verzoeken';

  @override
  String get sectionDnsProxy => 'DNS & proxy';

  @override
  String get onboardingBack => 'Terug';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get onboardingSkip => 'Overslaan';

  @override
  String get onboardingLanguageBody =>
      'Kies de taal waarin Dartotsu wordt weergegeven. Je kunt dit later wijzigen in Instellingen.';

  @override
  String get onboardingPaletteTitle => 'Maak het van jou';

  @override
  String get onboardingPaletteBody =>
      'Kies een palet. Elk accent, van kaarten tot de speler, volgt dit.';

  @override
  String get themeModeAuto => 'Automatisch';

  @override
  String get themeModeLight => 'Licht';

  @override
  String get themeModeDark => 'Donker';

  @override
  String get onboardingSyncTitle => 'Synchroniseer je bibliotheek';

  @override
  String get onboardingSyncBody =>
      'Log in met AniList om je lijsten, voortgang en scores mee te nemen. Of sla over en kijk rond als gast.';

  @override
  String get onboardingOpenLinks => 'AniList- en repo-links openen in Dartotsu';

  @override
  String get onboardingPermsTitle => 'Rechten';

  @override
  String get onboardingPermsBody =>
      'Sta deze nu toe zodat downloads, updates en meldingen zonder onderbrekingen werken. Je kunt ze later wijzigen in de systeeminstellingen.';

  @override
  String get permNotifications => 'Meldingen';

  @override
  String get permNotificationsDesc =>
      'Downloadvoortgang, nieuwe afleveringen en reacties';

  @override
  String get permStorage => 'Toegang tot alle bestanden';

  @override
  String get permStorageDesc => 'Sla downloads op in de openbare Dartotsu-map';

  @override
  String get permInstall => 'Updates installeren';

  @override
  String get permInstallDesc =>
      'Laat Dartotsu zijn eigen app-updates installeren';

  @override
  String get permBattery => 'Onbeperkt batterijgebruik';

  @override
  String get permBatteryDesc =>
      'Laat lange downloads op de achtergrond doorlopen';

  @override
  String get permGrant => 'Toestaan';

  @override
  String get linkOpenInApp => 'Links openen in Dartotsu';

  @override
  String get linkOpenInAppDesc => 'Laat AniList- en repo-links de app openen';

  @override
  String get reviewsTitle => 'Recensies';

  @override
  String get reviewsEmpty => 'Nog geen reviews';

  @override
  String get reviewsFailed => 'Kon de reviews niet laden';

  @override
  String get reviewHelpfulQuestion => 'Was deze review nuttig?';

  @override
  String get reviewVoteFailed => 'Kon je stem niet opslaan';

  @override
  String reviewHelpful(int n, int total) {
    return '$n van $total vonden dit nuttig';
  }

  @override
  String get calendarTitle => 'Uitzendschema';

  @override
  String get calendarToday => 'Vandaag';

  @override
  String get calendarEmpty => 'Vandaag wordt er niks uitgezonden';

  @override
  String get calendarFailed => 'Kon het schema niet laden';

  @override
  String calendarChapter(int n) {
    return 'Hoofdstuk $n';
  }

  @override
  String get calendarExpected => 'Verwacht';

  @override
  String get castReceiverFailed => 'De Chromecast startte zijn speler niet';

  @override
  String get castPlaybackFailed => 'Het apparaat kan deze stream niet afspelen';

  @override
  String get shortcutNothingToContinue => 'Er is nog niets om verder te gaan';

  @override
  String shortcutNoCalendar(String service) {
    return '$service heeft geen kalender';
  }

  @override
  String calendarEpisode(int n) {
    return 'Aflevering $n';
  }

  @override
  String get shareAnalytics => 'Deel anonieme gebruiksgegevens';

  @override
  String get shareAnalyticsDesc =>
      'Anonieme gebruikersaantallen en crashrapporten. Geen account of persoonlijke gegevens';

  @override
  String get linkOpenAnilist => 'AniList-links openen in Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Zet linkafhandeling aan zodat anilist.co-links de app openen';

  @override
  String get linkSettingsFailed => 'Kon de systeeminstellingen niet openen';

  @override
  String get discordRichPresence => 'Rijke aanwezigheid';

  @override
  String get discordRichPresenceTokenDesc =>
      'Toon wat je doet op je Discord-profiel. Hiervoor heb je je Discord-token nodig.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Toon wat je doet op je Discord-profiel. Hiervoor moet de Discord-desktopapp draaien.';

  @override
  String get discordBrowsing => 'Browse-activiteit tonen';

  @override
  String get discordBrowsingDesc =>
      'Toon ook het tabblad, de pagina of het profiel waar je naar kijkt, niet alleen wat je kijkt of leest.';

  @override
  String get discordLookHeader => 'Uiterlijk van de presence';

  @override
  String get discordActivityType => 'Activiteitstype';

  @override
  String get discordActivityTypeDesc =>
      'Hoe Discord het verwoordt: \"Kijkt naar …\" of \"Speelt …\". Auto gebruikt Kijkt voor anime en Speelt voor de rest.';

  @override
  String get discordWatching => 'Kijken';

  @override
  String get discordPlaying => 'Spelen';

  @override
  String get discordCovers => 'Covers tonen';

  @override
  String get discordCoversDesc => 'Coverart en het Dartotsu-icoon op de kaart.';

  @override
  String get discordTimer => 'Timer tonen';

  @override
  String get discordTimerDesc =>
      'Verstreken of resterende tijd onder de titel.';

  @override
  String get discordButtons => 'Knoppen tonen';

  @override
  String get discordButtonsDesc =>
      'Knoppen \"Bekijk anime / manga\" en \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Titels verbergen';

  @override
  String get discordHideTitlesDesc =>
      'Vervang namen van anime en manga (en de cover en link) door \"Iets privés\".';

  @override
  String get discordConnectionHeader => 'Verbinding';

  @override
  String get listSearchHint => 'Doorzoek deze lijst';

  @override
  String get listSort => 'Sorteren';

  @override
  String get listFilter => 'Filteren';

  @override
  String get listRandom => 'Willekeurige titel';

  @override
  String get listReverse => 'Omgekeerde volgorde';

  @override
  String get listSortDefault => 'Lijstvolgorde';

  @override
  String get listSortScore => 'Jouw score';

  @override
  String get listSortTitle => 'Titel';

  @override
  String get listSortUpdated => 'Laatst bijgewerkt';

  @override
  String get listSortProgress => 'Voortgang';

  @override
  String get listSortReleased => 'Releasedatum';

  @override
  String get listSortAverage => 'Gemiddelde score';

  @override
  String get listFilterFormat => 'Formaat';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genres';

  @override
  String get listFilterClear => 'Filters wissen';

  @override
  String get listNoMatches => 'Niks in deze lijst komt overeen';

  @override
  String get discordLogin => 'Inloggen bij Discord';

  @override
  String get discordToken => 'Discord-token';

  @override
  String get discordTokenSaved =>
      'Opgeslagen. Tik om te vervangen, lang indrukken om te verwijderen.';

  @override
  String get discordTokenNotSet => 'Niet ingesteld. Tik om toe te voegen.';

  @override
  String get discordTokenSavedSnack => 'Discord-token opgeslagen';

  @override
  String get discordTokenRemovedSnack => 'Discord-token verwijderd';

  @override
  String get discordRichPresenceRow => 'Onenigheid Rijke aanwezigheid';

  @override
  String get discordRichPresenceRowOn =>
      'Aan · tik om het uiterlijk aan te passen';

  @override
  String get discordRichPresenceRowOff =>
      'Toon wat je doet op je Discord-profiel';

  @override
  String get loginCancelled => 'Inloggen geannuleerd';

  @override
  String get invalidToken => 'Ongeldig token';

  @override
  String loginFailed(String error) {
    return 'Inloggen mislukt: $error';
  }

  @override
  String get malLoginFailed => 'Inloggen bij MyAnimeList mislukt';

  @override
  String get kitsuLoginFailed =>
      'Inloggen bij Kitsu mislukt. Check je e-mailadres en wachtwoord.';

  @override
  String get kitsuLoginTitle => 'Inloggen bij Kitsu';

  @override
  String get emailOrUsername => 'E-mailadres of gebruikersnaam';

  @override
  String get password => 'Wachtwoord';

  @override
  String get kitsuProfile => 'Kitsu-profiel';

  @override
  String get mangaBakaLoginFailed => 'Inloggen bij MangaBaka mislukt';

  @override
  String get comickLoginFailed => 'Comick-aanmelding mislukt';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Populair';

  @override
  String get anticipated => 'Verwacht';

  @override
  String get watchlist => 'Volglijst';

  @override
  String get recommendedShows => 'Aanbevolen shows';

  @override
  String get recommendedMovies => 'Aanbevolen films';

  @override
  String get boxOffice => 'Kassa';

  @override
  String get popularMovies => 'Populaire films';

  @override
  String get popularShows => 'Populaire programma\'s';

  @override
  String get anticipatedMovies => 'Verwachte films';

  @override
  String get anticipatedShows => 'Verwachte shows';

  @override
  String get trendingShows => 'Populaire programma\'s';

  @override
  String get mostWatchedThisWeek => 'Meest bekeken deze week';

  @override
  String get sortMostViewed => 'Meest bekeken';

  @override
  String get sortMostFollowed => 'De meesten volgden';

  @override
  String get sortLatestUpdates => 'Laatste updates';

  @override
  String get translationStatusLabel => 'Vertaling';

  @override
  String get weeklySchedule => 'Wekelijks schema';

  @override
  String get mostFollowed => 'Meest gevolgd';

  @override
  String get latestUpdates => 'Laatste updates';

  @override
  String get trendingAnime => 'Populaire anime';

  @override
  String get topRatedAnime => 'Best beoordeelde anime';

  @override
  String get mostFollowedAnime => 'Meest gevolgde anime';

  @override
  String get comickProfile => 'Comick-profiel';

  @override
  String get refreshFromComick => 'Vernieuwen vanuit Comick';

  @override
  String get mangaBakaProfile => 'MangaBaka-profiel';

  @override
  String get refreshFromMangaBaka => 'Verversen vanuit MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Meld u aan bij MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates-profiel';

  @override
  String get mangaUpdatesAnimeStart => 'Anime-aanpassing begint';

  @override
  String get mangaUpdatesAnimeEnd => 'De anime-aanpassing eindigt';

  @override
  String get refreshFromMangaUpdates => 'Vernieuwen vanuit MangaUpdates';

  @override
  String get usernameOnly => 'Gebruikersnaam';

  @override
  String get releases => 'Releases';

  @override
  String get artistsLabel => 'Artiesten';

  @override
  String get authorsLabel => 'Auteurs';

  @override
  String get publishersLabel => 'Uitgevers';

  @override
  String get licensedLabel => 'Gelicenseerd';

  @override
  String get contentRatingLabel => 'Contentrating';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nee';

  @override
  String get ratingSteps => 'Ratingstappen';

  @override
  String get hideNsfw => 'NSFW verbergen';

  @override
  String get hideNsfwSourcesDesc =>
      'Verberg bronnen gemarkeerd als 18+ in de feeds en de bronkiezer. Ze blijven geïnstalleerd.';

  @override
  String get hideNsfwDesc =>
      'Houd 18+-titels uit feeds en zoekresultaten, en toon je eigen 18+-items onder Verborgen media.';

  @override
  String get kitsuAccountOptions => 'Kitsu-accountopties';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka-accountopties';

  @override
  String get comickAccountOptions => 'Comick-accountopties';

  @override
  String get comickClientId => 'Comick-client-ID';

  @override
  String get comickClientIdDesc =>
      'Aangepaste client-ID geregistreerd op comick.dev';

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
      'Kon je Kitsu-instellingen niet bijwerken';

  @override
  String get titleCanonical => 'Canoniek';

  @override
  String get titleRomanized => 'Geromaniseerd';

  @override
  String get titleLocalized => 'Vertaald';

  @override
  String get ratingSystem => 'Beoordelingssysteem';

  @override
  String get ratingSimple => 'Simpel (3 gezichtjes)';

  @override
  String get ratingRegular => 'Normaal (5 sterren)';

  @override
  String get ratingAdvanced => 'Uitgebreid (10 punten)';

  @override
  String get contentFilter => 'Contentfilter';

  @override
  String get contentSfw => 'Alleen veilig voor werk';

  @override
  String get contentSometimes => 'Volwassen content in zoekopdrachten';

  @override
  String get contentEverywhere => 'Volwassen content overal';

  @override
  String get shareToGlobal => 'Delen met de globale feed';

  @override
  String get shareToGlobalDesc =>
      'Laat je activiteit verschijnen in de globale feed van Kitsu.';

  @override
  String get memberSince => 'Lid sinds';

  @override
  String get location => 'Locatie';

  @override
  String get accountType => 'Accounttype';

  @override
  String get accountSupporter => 'Ondersteuner';

  @override
  String get accountFree => 'Gratis';

  @override
  String get accountDetails => 'Accountgegevens';

  @override
  String get refreshFromKitsu => 'Verversen vanuit Kitsu';

  @override
  String get simklReadOnly => 'Simkl heeft alleen-lezen toegang gegeven';

  @override
  String get traktReadOnly => 'Trakt verleende alleen-lezen toegang';

  @override
  String get incognitoEditsBlocked =>
      'Incognito: lijstwijzigingen zijn geblokkeerd';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Incognito: voortgang niet opgeslagen';

  @override
  String progressSet(int progress) {
    return 'Voortgang gezet op $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title van je lijst verwijderd';
  }

  @override
  String get following => 'Volgend';

  @override
  String get followsMutual => 'Wederzijds';

  @override
  String get followsNotMutual => 'Niet wederzijds';

  @override
  String get homeSections => 'Homesecties';

  @override
  String get homeSectionsHint =>
      'Sleep om te herschikken. Verborgen secties worden nooit opgehaald.';

  @override
  String get customListDeleteFailed => 'Eigen lijst verwijderen mislukt';

  @override
  String get customListsSaveFailed => 'Eigen lijsten opslaan mislukt';

  @override
  String get customListsSaved => 'Eigen lijsten opgeslagen';

  @override
  String get listName => 'Lijstnaam';

  @override
  String get addList => 'Lijst toevoegen';

  @override
  String get voiceActors => 'Stemacteurs';

  @override
  String voiceActorsIn(String name) {
    return 'Stemacteurs · $name';
  }

  @override
  String get animeAppearances => 'Anime-optredens';

  @override
  String get mangaAppearances => 'Manga-optredens';

  @override
  String get voicedCharacters => 'Ingesproken personages';

  @override
  String get animeCredits => 'Anime-credits';

  @override
  String get mangaCredits => 'Manga-credits';

  @override
  String get mainProductions => 'Hoofdproducties';

  @override
  String get otherWorks => 'Ander werk';

  @override
  String get prequelSequel => 'Prequel & sequel';

  @override
  String get prequel => 'Voorloper';

  @override
  String get sequel => 'Vervolg';

  @override
  String get previousSeason => 'Vorig seizoen';

  @override
  String get thisSeason => 'Dit seizoen';

  @override
  String get nextSeason => 'Volgend seizoen';

  @override
  String get voiceRoles => 'Stemrollen';

  @override
  String get staffPositions => 'Staffuncties';

  @override
  String get mangaWorks => 'Manga-werk';

  @override
  String get malProfile => 'MyAnimeList-profiel';

  @override
  String get refreshFromMal => 'Verversen vanuit MyAnimeList';

  @override
  String get repullProfileCounts => 'Haal je profiel en aantallen opnieuw op';

  @override
  String get refreshed => 'Ververst';

  @override
  String get simklProfile => 'Simkl-profiel';

  @override
  String get traktProfile => 'Trakt-profiel';

  @override
  String get refreshFromSimkl => 'Verversen vanuit Simkl';

  @override
  String get refreshFromTrakt => 'Vernieuwen vanuit Trakt';

  @override
  String get repullProfileLibrary =>
      'Haal je profiel en bibliotheek opnieuw op';

  @override
  String get simklSignInToSearch => 'Log in bij Simkl om te zoeken';

  @override
  String get dropRate => 'Dropratio';

  @override
  String get simklAttribution => 'Data en artwork van Simkl. Bekijk op Simkl';

  @override
  String get traktAttribution =>
      'Gegevens en illustraties geleverd door Trakt. Bekijk op Trakt';

  @override
  String get listsLiked => 'Vond ik leuk';

  @override
  String get listsYours => 'De jouwe';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP-lid';

  @override
  String get onHold => 'In de wacht';

  @override
  String get scoredBy => 'Beoordeeld door';

  @override
  String get planToWatch => 'Van plan te kijken';

  @override
  String get planToRead => 'Van plan te lezen';

  @override
  String get timesRewatched => 'Keer opnieuw gekeken';

  @override
  String get timesReread => 'Keer opnieuw gelezen';

  @override
  String get comments => 'Reacties';

  @override
  String get moviesAndSeries => 'Films & series';

  @override
  String get simklMoviesOnly => 'Alleen films en series';

  @override
  String get simklMoviesOnlyDesc =>
      'Vervangt het tabblad Anime: eerst Films en vervolgens Shows met een paar anime-rijen';

  @override
  String get trackingOnly => 'Alleen tracken';

  @override
  String get signedIn => 'Ingelogd';

  @override
  String get searchLanguage => 'Zoektaal';

  @override
  String get savedToList => 'Opgeslagen in je lijst';

  @override
  String get removedFromYourList => 'Van je lijst verwijderd';

  @override
  String get retry => 'Opnieuw';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get details => 'Details';

  @override
  String get addToList => 'Aan lijst toevoegen';

  @override
  String get trailer => 'Aanhangwagen';

  @override
  String get trailerQuality => 'Trailerkwaliteit';

  @override
  String get titleCopied => 'Titel gekopieerd';

  @override
  String get linkCopied => 'Link gekopieerd';

  @override
  String get watchTrailer => 'Trailer kijken';

  @override
  String get copyTitle => 'Titel kopiëren';

  @override
  String get detailStale =>
      'AniList kan niet worden bereikt. Dit is opgeslagen informatie en kan verouderd zijn.';

  @override
  String get copyLink => 'Link kopiëren';

  @override
  String get openInBrowser => 'Openen in browser';

  @override
  String viewOnSource(String source) {
    return 'Bekijk op $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Aflevering $ep start over $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Volgende aflevering over $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Hoofdstuk $chapter verwacht over ongeveer $time';
  }

  @override
  String get logPathCopied => 'Pad van logbestand naar klembord gekopieerd';

  @override
  String get animeSource => 'Anime-bron';

  @override
  String get mangaSource => 'Manga-bron';

  @override
  String get popular => 'Populair';

  @override
  String get allCustomLists => 'Alle aangepaste lijsten';

  @override
  String get simklTitleLanguage => 'Anime-titeltaal';

  @override
  String get titleLanguageEnglish => 'Engels';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Populair';

  @override
  String get simklListsMostLiked => 'Meest geliefd';

  @override
  String get simklListsMostFollowed => 'De meesten volgden';

  @override
  String get simklListsOfficial => 'Officieel';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titels',
      one: '1 titel',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Mensen';

  @override
  String get mostComments => 'De meeste reacties';

  @override
  String get alphabetical => 'Alfabetisch';

  @override
  String get latest => 'Nieuwste';

  @override
  String get saved => 'Opgeslagen';

  @override
  String get nothingMatched => 'Niks gevonden';

  @override
  String get nothingSavedFromSource => 'Nog niks opgeslagen van deze bron';

  @override
  String get sourceReturnedNothing => 'Deze bron gaf niks terug';

  @override
  String get checkConnectionOrSource =>
      'Check je verbinding of probeer een andere bron.';

  @override
  String get tryDifferentSearch => 'Probeer een andere zoekterm.';

  @override
  String get savedTitlesAppearHere =>
      'Titels die je aan je lijst toevoegt, verschijnen hier.';

  @override
  String get tryOtherFeed =>
      'Probeer de andere feed of zoek in plaats daarvan.';

  @override
  String searchSource(String source) {
    return '$source doorzoeken';
  }

  @override
  String get animeExtensions => 'Anime-extensies';

  @override
  String get mangaExtensions => 'Manga-extensies';

  @override
  String get nothingHereYet => 'Nog niks hier';

  @override
  String get savedOnDeviceUntilLogin =>
      'Alles hieronder wordt op dit apparaat bewaard totdat je het doet.';

  @override
  String get yourProfile => 'Jouw profiel';

  @override
  String get activity => 'Activiteit';

  @override
  String get extensions => 'Extensies';

  @override
  String get logOut => 'Uitloggen';

  @override
  String get logIn => 'Inloggen';

  @override
  String get logOutConfirm => 'Weet je zeker dat je wilt uitloggen?';

  @override
  String get incognitoMode => 'Incognitomodus';

  @override
  String get alsoBlockListEdits => 'Blokkeer ook lijstwijzigingen';

  @override
  String get offlineMode => 'Offlinemodus';

  @override
  String get switchService => 'Van service wisselen';

  @override
  String logOutOf(String name) {
    return 'Uitloggen bij $name';
  }

  @override
  String get loggedIn => 'Ingelogd';

  @override
  String get notifications => 'Meldingen';

  @override
  String get nothingNew => 'Niks nieuws';

  @override
  String get thisWeek => 'Deze week';

  @override
  String get listOnly => 'Alleen lijst';

  @override
  String get notInList => 'Niet in lijst';

  @override
  String get filter => 'Filteren';

  @override
  String get searchResults => 'Zoekresultaten';

  @override
  String get recentSearches => 'Recente zoekopdrachten';

  @override
  String get searchOrSetFilter => 'Zoek of stel een filter in';

  @override
  String get filters => 'Filters';

  @override
  String get showLess => 'Minder tonen';

  @override
  String get showAll => 'Alles tonen';

  @override
  String get apply => 'Toepassen';

  @override
  String get preview => 'Voorbeeld';

  @override
  String get preset => 'Voorinstelling';

  @override
  String get cardNormal => 'Normaal';

  @override
  String get cardOnCard => 'Op kaart';

  @override
  String get cardInCard => 'In kaart';

  @override
  String get size => 'Grootte';

  @override
  String get cardWidth => 'Kaartbreedte';

  @override
  String get compact => 'Compact';

  @override
  String get coverAndTitleOnly => 'Alleen cover en titel';

  @override
  String get titleLines => 'Titelregels';

  @override
  String get shape => 'Vorm';

  @override
  String get posterShape => 'Postervorm';

  @override
  String get cornerRadius => 'Hoekafronding';

  @override
  String get off => 'Uit';

  @override
  String get topLeft => 'Linksboven';

  @override
  String get topRight => 'Rechtsboven';

  @override
  String get bottomLeft => 'Linksonder';

  @override
  String get bottomRight => 'Rechtsonder';

  @override
  String get overlays => 'Overlays';

  @override
  String get progressCount => 'Voortgang / aantal';

  @override
  String get pill => 'Pil';

  @override
  String get bar => 'Balk';

  @override
  String get outside => 'Buiten';

  @override
  String get scoreBadge => 'Scorebadge';

  @override
  String get airingDot => 'Uitzendstipje';

  @override
  String get updateAvailable => 'Update beschikbaar';

  @override
  String get notInstalled => 'Niet geïnstalleerd';

  @override
  String get done => 'Klaar';

  @override
  String get searchOrEnterUrl => 'Zoek of voer een URL in';

  @override
  String get refresh => 'Verversen';

  @override
  String get animePlanetRank => 'Rang';

  @override
  String get animePlanetMagazine => 'Tijdschrift';

  @override
  String get animePlanetRefreshLists => 'Vernieuw uw lijsten';

  @override
  String get animePlanetRefreshListsDesc =>
      'Lees je Anime-Planet-lijsten opnieuw';

  @override
  String get animePlanetLocalNote =>
      'Meld u aan om de wijzigingen in uw Anime-Planet-account op te slaan. Tot die tijd blijven ze op dit apparaat';

  @override
  String get share => 'Delen';

  @override
  String get characters => 'Personages';

  @override
  String get staff => 'Personeel';

  @override
  String get readMore => 'Meer lezen';

  @override
  String get couldNotLoadList => 'Kon de lijst niet laden';

  @override
  String get logInToFavourite => 'Log in om favorieten toe te voegen';

  @override
  String get alsoKnownAs => 'Ook bekend als';

  @override
  String get hideSpoilerNames => 'Spoilernamen verbergen';

  @override
  String get showSpoilerNames => 'Spoilernamen tonen';

  @override
  String get favourited => 'Favoriet gemaakt';

  @override
  String get favourite => 'Favoriet';

  @override
  String get couldNotOpenTitle => 'Kon deze titel niet openen';

  @override
  String get nobodyHereYet => 'Nog niemand hier';

  @override
  String get noMatches => 'Geen resultaten';

  @override
  String get gridView => 'Rasterweergave';

  @override
  String get fullWidth => 'Volledige breedte';

  @override
  String get userNotFound => 'Gebruiker niet gevonden';

  @override
  String get couldNotUpdateFollow => 'Kon volgen niet bijwerken';

  @override
  String followedUser(String name) {
    return '$name gevolgd';
  }

  @override
  String unfollowedUser(String name) {
    return '$name ontvolgd';
  }

  @override
  String get messages => 'Berichten';

  @override
  String get logInToSeeMessages => 'Log in om je berichten te zien';

  @override
  String get editActivity => 'Activiteit bewerken';

  @override
  String get newActivity => 'Nieuwe activiteit';

  @override
  String get editMessage => 'Bericht bewerken';

  @override
  String get writeMessage => 'Schrijf een bericht';

  @override
  String get editReply => 'Reactie bewerken';

  @override
  String get posted => 'Geplaatst';

  @override
  String get couldNotPost => 'Kon niet plaatsen';

  @override
  String get nothingToPreview => 'Niks om te bekijken';

  @override
  String get writeSomethingHint => 'Schrijf iets… AniList-markdown werkt hier';

  @override
  String get privateMessage => 'Privébericht';

  @override
  String get post => 'Plaatsen';

  @override
  String get nothingHere => 'Niks hier';

  @override
  String get noAnimeProgress => 'Geen anime-voortgang';

  @override
  String get noMangaProgress => 'Geen manga-voortgang';

  @override
  String get noMessages => 'Geen berichten';

  @override
  String get writeMessageHint => 'Schrijf een bericht…';

  @override
  String get shareSomethingHint => 'Deel iets…';

  @override
  String get all => 'Alles';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Aantal';

  @override
  String get hoursWatched => 'Uren gekeken';

  @override
  String get chaptersRead => 'Hoofdstukken gelezen';

  @override
  String get meanScore => 'Gemiddelde score';

  @override
  String get noStatsYet => 'Nog geen statistieken';

  @override
  String get totalEntries => 'Totaal aantal items';

  @override
  String get episodesWatched => 'Afleveringen gekeken';

  @override
  String get daysWatched => 'Dagen gekeken';

  @override
  String get volumesRead => 'Delen gelezen';

  @override
  String get standardDeviation => 'Standaarddeviatie';

  @override
  String get showMore => 'Meer tonen';

  @override
  String get followsYou => 'Volgt jou';

  @override
  String get nobodyYet => 'Nog niemand';

  @override
  String get logInToLike => 'Log in om te liken';

  @override
  String get failedToLikeActivity => 'Activiteit liken mislukt';

  @override
  String get deleteActivityConfirm => 'Activiteit verwijderen?';

  @override
  String get deletedActivity => 'Activiteit verwijderd';

  @override
  String get failedToDeleteActivity => 'Activiteit verwijderen mislukt';

  @override
  String get subscribed => 'Geabonneerd';

  @override
  String get unsubscribed => 'Afgemeld';

  @override
  String get failedToUpdateSubscription => 'Abonnement bijwerken mislukt';

  @override
  String get edit => 'Bewerken';

  @override
  String get delete => 'Verwijderen';

  @override
  String get likedBy => 'Geliked door';

  @override
  String get follow => 'Volgen';

  @override
  String get nameCopied => 'Naam gekopieerd';

  @override
  String get followsEachOther => 'Volgen elkaar';

  @override
  String get unfollow => 'Ontvolgen';

  @override
  String get userIdCopied => 'Gebruikers-ID gekopieerd';

  @override
  String get shareProfile => 'Profiel delen';

  @override
  String get copyUserId => 'Gebruikers-ID kopiëren';

  @override
  String get failedToDelete => 'Verwijderen mislukt';

  @override
  String get failedToLike => 'Liken mislukt';

  @override
  String get replies => 'Reacties';

  @override
  String get reply => 'Reageren';

  @override
  String get noRepliesYet => 'Nog geen reacties';

  @override
  String get favouriteAnime => 'Favoriete anime';

  @override
  String get favouriteManga => 'Favoriete manga';

  @override
  String get favouriteCharacters => 'Favoriete personages';

  @override
  String get favouriteStaff => 'Favoriete staff';

  @override
  String get favouriteStudios => 'Favoriete studio\'s';

  @override
  String get noFavouritesYet => 'Nog geen favorieten';

  @override
  String get yourStory => 'Jouw verhaal';

  @override
  String get copiedToClipboard => 'Naar klembord gekopieerd';

  @override
  String get justNow => 'Net';

  @override
  String get openImage => 'Afbeelding openen';

  @override
  String get hideSpoiler => 'Spoiler verbergen';

  @override
  String get showSpoiler => 'Spoiler tonen';

  @override
  String get status => 'Status';

  @override
  String get score => 'Scoren';

  @override
  String get started => 'Gestart';

  @override
  String get completed => 'Voltooid';

  @override
  String get private => 'Privé';

  @override
  String get hideFromStatusLists => 'Verbergen in statuslijsten';

  @override
  String get totalRepeats => 'Totaal herhalingen';

  @override
  String get other => 'Overig';

  @override
  String get customLists => 'Eigen lijsten';

  @override
  String get activeDays => 'Actieve dagen';

  @override
  String get longestStreak => 'Langste reeks';

  @override
  String get currentStreak => 'Huidige reeks';

  @override
  String get tapOrHoverDay => 'Tik op of ga met de muis over een dag';

  @override
  String get less => 'Minder';

  @override
  String get more => 'Meer';

  @override
  String epIn(int ep, String time) {
    return 'Afl. $ep over $time';
  }

  @override
  String get sectionLoading => 'Laden';

  @override
  String get querySize => 'Querygrootte';

  @override
  String get querySizeDesc =>
      'Eén grote query laadt alle rijen (en een heel profiel) in één verzoek. Gesplitste queries sturen een klein verzoek per rij of profieldeel: elk is snel en delen verschijnen zodra ze binnenkomen.';

  @override
  String get oneBig => 'Eén grote';

  @override
  String get split => 'Gesplitst';

  @override
  String get sectionSocial => 'Sociaal';

  @override
  String get systemNotifications => 'Systeemmeldingen';

  @override
  String get feedLayout => 'Feedindeling';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown van $total getoond — tik om te kiezen en te herschikken';
  }

  @override
  String labelSections(String label) {
    return '$label-secties';
  }

  @override
  String get accountOptions => 'Accountopties';

  @override
  String get anilistAccountOptions => 'AniList-accountopties';

  @override
  String get sectionPrivacy => 'Privacy';

  @override
  String get hidePrivateEntries => 'Privé-items verbergen';

  @override
  String get hidePrivateEntriesDesc =>
      'Houd items die op AniList als privé zijn gemarkeerd uit de feed';

  @override
  String get anilistExcludeList => 'Je lijst uitsluiten';

  @override
  String get anilistExcludeListDesc =>
      'Verberg titels die al op je AniList staan op de anime- en mangapagina\'s';

  @override
  String get anilistProfile => 'AniList-profiel';

  @override
  String get refreshFromAnilist => 'Verversen vanuit AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Kon de AniList-instellingen niet bijwerken';

  @override
  String get sectionNames => 'Namen';

  @override
  String get titleLanguage => 'Titeltaal';

  @override
  String get titleLanguageDesc =>
      'Hoe titels overal worden geschreven, bv. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Namen van staff en personages';

  @override
  String get sectionLists => 'Lijsten';

  @override
  String get scoreFormat => 'Scoreformaat';

  @override
  String get sortListsBy => 'Lijsten sorteren op';

  @override
  String labelCustomLists(String label) {
    return 'Eigen $label-lijsten';
  }

  @override
  String customListsCount(int count) {
    return '$count lijsten — tik om toe te voegen of te verwijderen';
  }

  @override
  String get mergeActivities => 'Activiteiten samenvoegen';

  @override
  String minutesCount(int count) {
    return '$count min';
  }

  @override
  String get timezone => 'Tijdzone';

  @override
  String get notSet => 'Niet ingesteld';

  @override
  String get airingNotifications => 'Uitzendmeldingen';

  @override
  String get airingNotificationsDesc =>
      'Krijg een melding als een aflevering van een gevolgde serie wordt uitgezonden';

  @override
  String get displayAdultContent => '18+-content tonen';

  @override
  String get displayAdultContentDesc =>
      'Neem 18+-titels op in browsen, zoeken en feeds';

  @override
  String get restrictMessages => 'Berichten beperken tot gevolgden';

  @override
  String get restrictMessagesDesc =>
      'Alleen mensen die je volgt kunnen je berichten sturen';

  @override
  String get sectionServices => 'Diensten';

  @override
  String get novel => 'Roman';

  @override
  String labelService(String label) {
    return '$label-service';
  }

  @override
  String nameSettings(String name) {
    return 'Instellingen van $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Opties van de extensiebridge van $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name kon niet starten: $error';
  }

  @override
  String get importLists => 'Lijsten importeren';

  @override
  String get importListsDesc =>
      'Uit back-ups van Aniyomi, Mihon / Tachiyomi of Kotatsu';

  @override
  String get exportLists => 'Lijsten exporteren';

  @override
  String get exportListsDesc =>
      'Naar een back-up van Aniyomi, Mihon of Kotatsu';

  @override
  String get sectionBrowse => 'Browsen';

  @override
  String get readingTab => 'Leestab';

  @override
  String get readingTabDesc => 'Welke extensies het derde tabblad toont';

  @override
  String get firstTab => 'Eerste tabblad';

  @override
  String get firstTabDesc =>
      'Welke extensies het eerste tabblad toont. Kies hier manga en roman op het leestabblad om anime uit de balk te verwijderen';

  @override
  String get novelExtensions => 'Nieuwe uitbreidingen';

  @override
  String get defaultFeed => 'Standaardfeed';

  @override
  String get defaultFeedDesc => 'Met welke lijst een bron opent';

  @override
  String noServiceSupports(String type) {
    return 'Geen service ondersteunt $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded van $installed bronnen laden';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Geen extensieservice ondersteunt $type hier.';
  }

  @override
  String get loadDataFrom => 'Gegevens laden uit';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Nog geen geïnstalleerde $type-bronnen.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'De extensie voor $name is niet geïnstalleerd';
  }

  @override
  String get thisSource => 'deze bron';

  @override
  String failedToAddRepository(String error) {
    return 'Repository toevoegen mislukt: $error';
  }

  @override
  String installedType(String type) {
    return 'Geïnstalleerde $type';
  }

  @override
  String availableType(String type) {
    return 'Beschikbare $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Geen geïnstalleerde $type-extensies';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Geen beschikbare $type-extensies';
  }

  @override
  String get nothingToShowYet => 'Nog niks te tonen';

  @override
  String get addTitlesHint =>
      'Voeg titels toe aan je lijst en ze verschijnen hier.';

  @override
  String get couldntLoad => 'Kon niet laden';

  @override
  String get progressStyleHint =>
      'Pil en balk liggen over de poster; Buiten toont hetzelfde aantal als gewone tekst — kies er één.';

  @override
  String get nixManagedUpdate =>
      'Deze build wordt beheerd door Nix — draai \"nix flake update\" op je flake en bouw opnieuw in plaats van hier te updaten';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatisch updaten mislukt ($error) — de downloadpagina wordt geopend';
  }

  @override
  String get unknownPreference => 'Onbekende voorkeur';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Niet-ondersteund voorkeurstype $type';
  }

  @override
  String get notYetReleased => 'Nog niet uitgebracht';

  @override
  String get notStarted => 'Nog niet begonnen';

  @override
  String get country => 'Land';

  @override
  String get sort => 'Sorteren';

  @override
  String get chooseBackupDialog =>
      'Kies een back-up van Aniyomi, Mihon of Kotatsu';

  @override
  String get importListsHint =>
      'Neem een bibliotheek over uit Aniyomi, Mihon / Tachiyomi of Kotatsu. Titels, covers, voortgang en categorieën blijven behouden.';

  @override
  String get chooseBackupFile => 'Back-upbestand kiezen';

  @override
  String importAnimeCount(int count) {
    return '$count anime importeren';
  }

  @override
  String importMangaCount(int count) {
    return '$count manga importeren';
  }

  @override
  String get mergeWithExisting => 'Samenvoegen met bestaande lijsten';

  @override
  String get mergeWithExistingDesc =>
      'Behoudt wat je al hebt; uit vervangt overeenkomende titels';

  @override
  String get chooseAnother => 'Ander kiezen';

  @override
  String get import => 'Importeren';

  @override
  String animeCount(int count) {
    return '$count anime';
  }

  @override
  String mangaCount(int count) {
    return '$count manga';
  }

  @override
  String get chooseSaveLocation => 'Kies waar je de back-up opslaat';

  @override
  String savedPath(String path) {
    return '$path opgeslagen';
  }

  @override
  String exportFailed(String error) {
    return 'Exporteren mislukt: $error';
  }

  @override
  String get nothingInLocalLists => 'Nog niks in je lokale lijsten.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exporteert $anime anime en $manga manga uit je lokale lijsten. Kotatsu ondersteunt alleen manga.';
  }

  @override
  String get saveToFolder => 'Opslaan in map';

  @override
  String get formatAnimeManga => 'Anime en manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Alleen manga · .tachibk';

  @override
  String get formatMangaZip => 'Alleen manga · .zip';

  @override
  String get genres => 'Genres';

  @override
  String get relations => 'Relaties';

  @override
  String get recommendations => 'Aanbevelingen';

  @override
  String get openings => 'Openingen';

  @override
  String get endings => 'Einden';

  @override
  String get background => 'Achtergrond';

  @override
  String get links => 'Koppelingen';

  @override
  String get rank => 'Rang';

  @override
  String get members => 'Leden';

  @override
  String get favorites => 'Favorieten';

  @override
  String get episodes => 'Afleveringen';

  @override
  String get chapters => 'Hoofdstukken';

  @override
  String get volumes => 'Delen';

  @override
  String get format => 'Formaat';

  @override
  String get source => 'Bron';

  @override
  String get duration => 'Duur';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes min per afl.';
  }

  @override
  String get rating => 'Beoordeling';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialisatie';

  @override
  String get season => 'Seizoen';

  @override
  String get year => 'Jaar';

  @override
  String get filterAny => 'Elke';

  @override
  String get broadcast => 'Uitzending';

  @override
  String get aired => 'Uitgezonden';

  @override
  String get published => 'Gepubliceerd';

  @override
  String get popularity => 'Populariteit';

  @override
  String get community => 'Gemeenschap';

  @override
  String get watching => 'Aan het kijken';

  @override
  String get reading => 'Aan het lezen';

  @override
  String get dropped => 'Gedropt';

  @override
  String get unfinished => 'Onvoltooid';

  @override
  String get planned => 'Gepland';

  @override
  String get trailers => 'Aanhangwagens';

  @override
  String get ratings => 'Beoordelingen';

  @override
  String get originalTitle => 'Origineel';

  @override
  String get titleLabel => 'Titel';

  @override
  String get votes => 'Stemmen';

  @override
  String get watchedStat => 'Gekeken';

  @override
  String get runtime => 'Speelduur';

  @override
  String get director => 'Regisseur';

  @override
  String get network => 'Zender';

  @override
  String get certification => 'Leeftijdsclassificatie';

  @override
  String get airs => 'Uitzending';

  @override
  String get budget => 'Begroting';

  @override
  String get revenue => 'Opbrengst';

  @override
  String get released => 'Uitgebracht';

  @override
  String get tags => 'Labels';

  @override
  String get author => 'Auteur';

  @override
  String get born => 'Geboren';

  @override
  String get died => 'Overleden';

  @override
  String get birthplace => 'Geboorteplaats';

  @override
  String get department => 'Afdeling';

  @override
  String get website => 'Website';

  @override
  String get established => 'Opgericht';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romans';

  @override
  String get thisMonth => 'Deze maand';

  @override
  String get movies => 'Films';

  @override
  String get shows => 'Series';

  @override
  String get moviesWatched => 'Films bekeken';

  @override
  String get showsWatched => 'Programma\'s bekeken';

  @override
  String get moviesCollected => 'Films verzameld';

  @override
  String get showsCollected => 'Toont verzameld';

  @override
  String get rewatching => 'Opnieuw aan het kijken';

  @override
  String get rereading => 'Opnieuw aan het lezen';

  @override
  String get watchedStatus => 'Gekeken';

  @override
  String get planning => 'Gepland';

  @override
  String get paused => 'Gepauzeerd';

  @override
  String get watch => 'Kijken';

  @override
  String get read => 'Lezen';

  @override
  String get finished => 'Afgerond';

  @override
  String get releasing => 'Lopend';

  @override
  String get cancelled => 'Geannuleerd';

  @override
  String get hiatus => 'Pauze';

  @override
  String get remove => 'Verwijderen';

  @override
  String syncToService(String service) {
    return 'Synchroniseren met $service';
  }

  @override
  String syncedToService(String service) {
    return 'Gesynchroniseerd met $service';
  }

  @override
  String get latestReleases => 'Nieuwste releases';

  @override
  String get topRated => 'Best beoordeeld';

  @override
  String localSection(String title) {
    return '$title · Lokaal';
  }

  @override
  String get localEntryNote =>
      'Deze titel staat alleen in je lokale lijst op dit apparaat. Bewerken staat hier uit omdat het kan botsen met de lijst van je account; verwijderen kan nog wel.';

  @override
  String get cardPresetPoster => 'Affiche';

  @override
  String get cardPresetCard => 'Kaart';

  @override
  String get cardPresetCozy => 'Gezellig';

  @override
  String get sortTopRated => 'Best beoordeeld';

  @override
  String get sortMostPopular => 'Meest populair';

  @override
  String get sortTrending => 'Populair';

  @override
  String get sortNewest => 'Nieuwste';

  @override
  String get sortAz => 'A-Z';

  @override
  String get sortMostFavourited => 'Meest favoriet';

  @override
  String get anyCountry => 'Elk land';

  @override
  String get orderScore => 'Scoren';

  @override
  String get orderTitle => 'Titel';

  @override
  String get orderLastUpdated => 'Laatst bijgewerkt';

  @override
  String get orderLastAdded => 'Laatst toegevoegd';

  @override
  String get never => 'Nooit';

  @override
  String get always => 'Altijd';

  @override
  String get scorePoint100 => '100 punten';

  @override
  String get scorePoint10Decimal => '10 punten decimaal';

  @override
  String get scorePoint10 => '10 punten';

  @override
  String get scorePoint5 => '5 sterren';

  @override
  String get scorePoint3 => '3 punten smiley';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur',
      one: '1 uur',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weken',
      one: '1 week',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Hervatten';

  @override
  String get resumeSourceMissing =>
      'Installeer de bron van deze titel om te hervatten';

  @override
  String get resumeRemove => 'Verwijderen uit hervatten';

  @override
  String resumeAt(String time) {
    return 'nog $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Pagina $page van $total';
  }

  @override
  String get continueWatching => 'Verder kijken';

  @override
  String get continueReading => 'Verder lezen';

  @override
  String get favouriteAnimeSection => 'Favoriete anime';

  @override
  String get favouriteMangaSection => 'Favoriete manga';

  @override
  String get plannedAnime => 'Geplande anime';

  @override
  String get plannedManga => 'Geplande manga';

  @override
  String get completedAnime => 'Voltooide anime';

  @override
  String get completedManga => 'Voltooide manga';

  @override
  String get hiddenMedia => 'Verborgen media';

  @override
  String get recentUpdates => 'Recente updates';

  @override
  String get trendingNow => 'Nu trending';

  @override
  String get popularThisSeason => 'Populair dit seizoen';

  @override
  String get trendingMovies => 'Trending films';

  @override
  String get topRatedSeries => 'Best beoordeelde series';

  @override
  String get mostFavouriteSeries => 'Meest favoriete series';

  @override
  String get popularAnime => 'Populaire anime';

  @override
  String get trendingManhwa => 'Trending manhwa';

  @override
  String get trendingNovels => 'Trending novels';

  @override
  String get topRatedManga => 'Best beoordeelde manga';

  @override
  String get mostFavouriteManga => 'Meest favoriete manga';

  @override
  String get popularManga => 'Populaire manga';

  @override
  String get topMovies => 'Top films';

  @override
  String get topOna => 'Top ONA';

  @override
  String get topOva => 'Top-OVA';

  @override
  String get mostPopular => 'Meest populair';

  @override
  String get mostFavourite => 'Meest favoriet';

  @override
  String get upcoming => 'Binnenkort';

  @override
  String get topManga => 'Top manga';

  @override
  String get topManhwa => 'Top manhwa';

  @override
  String get topManhua => 'Top manhua';

  @override
  String get topNovels => 'Top novels';

  @override
  String get topOneShots => 'Top one-shots';

  @override
  String get trendingMoviesToday => 'Trending films vandaag';

  @override
  String get trendingShowsToday => 'Trending series vandaag';

  @override
  String get trendingMoviesWeek => 'Trending films deze week';

  @override
  String get trendingShowsWeek => 'Trending series deze week';

  @override
  String get mostWatchedMoviesMonth => 'Meest bekeken films deze maand';

  @override
  String get mostWatchedShowsMonth => 'Meest bekeken series deze maand';

  @override
  String get trendingThisWeek => 'Trending deze week';

  @override
  String get mostWatchedThisMonth => 'Meest bekeken deze maand';

  @override
  String get repoLinksAdded => 'Repo-links toegevoegd!';

  @override
  String repoLinkConfirm(String url) {
    return 'Deze repository toevoegen?\n\n$url\n\nVoeg alleen opslagplaatsen toe van bronnen die u vertrouwt.';
  }

  @override
  String get errorGettingAnilistData =>
      'Fout bij het ophalen van gegevens van AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'REACTIES';

  @override
  String get playerNotAvailable => 'De speler is er nog niet';

  @override
  String deepLinkInitialError(String error) {
    return 'Fout bij ophalen van de eerste deeplink: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Fout bij openen van link: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Deze link kan niet worden geopend: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Fout bij openen van link: $error';
  }

  @override
  String get forReleasingTitles => 'voor titels die nu lopen';

  @override
  String get progress => 'Voortgang';

  @override
  String get notes => 'Notities';

  @override
  String serviceNotFound(String id) {
    return 'Service \"$id\" niet gevonden';
  }

  @override
  String get glassEffectEnabled => 'Glaseffect aan';

  @override
  String get glassEffectDisabled => 'Glaseffect uit';

  @override
  String get materialYouEnabled => 'Material You aan';

  @override
  String get materialYouDisabled => 'Material You uit';

  @override
  String get darkModeEnabled => 'Donkere modus aan';

  @override
  String get darkModeDisabled => 'Donkere modus uit';

  @override
  String get animeList => 'Animelijst';

  @override
  String get mangaList => 'Mangalijst';

  @override
  String ownerAnimeList(String owner) {
    return 'Animelijst van $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Mangalijst van $owner';
  }

  @override
  String get loadingList => 'Lijst laden';

  @override
  String get earlier => 'Eerder';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen geleden',
      one: '1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur geleden',
      one: '1 uur geleden',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuten geleden',
      one: '1 minuut geleden',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '${count}m geleden';
  }

  @override
  String hoursAgoShort(int count) {
    return '${count}u geleden';
  }

  @override
  String daysAgoShort(int count) {
    return '${count}d geleden';
  }

  @override
  String weeksAgoShort(int count) {
    return '${count}w geleden';
  }

  @override
  String get couldntLoadSource => 'Kon deze bron niet laden';

  @override
  String get followers => 'Volgers';

  @override
  String couldntLoadTitle(String title) {
    return 'Kon $title niet laden';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Kon dit profiel niet laden';

  @override
  String get profile => 'Profiel';

  @override
  String get feed => 'Voer';

  @override
  String get stats => 'Statistieken';

  @override
  String get received => 'Ontvangen';

  @override
  String get sent => 'Verzonden';

  @override
  String get global => 'Globaal';

  @override
  String get couldntLoadPage => 'Kon deze pagina niet laden';

  @override
  String get couldntLoadAllDetails => 'Kon niet alle details laden';

  @override
  String get series => 'Serie';

  @override
  String get studios => 'Studio\'s';

  @override
  String get users => 'Gebruikers';

  @override
  String repositoriesTitle(String type) {
    return '$type-repositories';
  }

  @override
  String get repositoryUrl => 'Repository-URL';

  @override
  String get downloadingRepository => 'Repository downloaden…';

  @override
  String get noRepositories => 'Geen repositories toegevoegd';

  @override
  String repoExtensionsCount(String count) {
    return '$count extensies';
  }

  @override
  String get searchExtensions => 'Extensies zoeken...';

  @override
  String deletePluginTitle(String name) {
    return '$name verwijderen?';
  }

  @override
  String get deletePluginMessage =>
      'Weet je zeker dat je deze plugin wilt verwijderen?';

  @override
  String pluginDeleted(String name) {
    return '$name verwijderd';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name is niet beschikbaar in de ingestelde repo';
  }

  @override
  String get pluginFetchFailed => 'Plugininfo ophalen mislukt';

  @override
  String installPluginTitle(String name) {
    return '$name installeren';
  }

  @override
  String sizeLabel(String size) {
    return 'Grootte: $size';
  }

  @override
  String get installedState => 'Geïnstalleerd';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'Fout:';

  @override
  String get stackTraceDetails => 'Details (stacktrace)';

  @override
  String get shareLogFile => 'Logbestand delen';

  @override
  String get copyLogs => 'Logs kopiëren';

  @override
  String noListToEdit(String service) {
    return '$service heeft geen lijst om te bewerken';
  }

  @override
  String get couldNotReadFile => 'Kon dat bestand niet lezen';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime anime en $manga manga geïmporteerd';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count al aanwezig';
  }

  @override
  String get airingNow => 'Nu in de lucht';

  @override
  String get topRatedMovies => 'Best beoordeelde films';

  @override
  String get koreanDramas => 'Koreaanse drama\'s';

  @override
  String get chineseDramas => 'Chinese drama\'s';

  @override
  String get japaneseDramas => 'Japanse drama\'s';

  @override
  String get thaiDramas => 'Thaise drama\'s';

  @override
  String get turkishDramas => 'Turkse series';

  @override
  String get miniSeries => 'Miniseries';

  @override
  String get topRatedShows => 'Best beoordeelde series';

  @override
  String get recommendedSection => 'Aanbevolen';

  @override
  String get syncRow => 'Lijsten synchroniseren';

  @override
  String get syncRowDesc =>
      'Spiegel de lijst van één service naar je andere accounts';

  @override
  String get syncTitle => 'Synchroniseren';

  @override
  String get syncMainService => 'Hoofdservice';

  @override
  String get syncMainServiceDesc =>
      'Zijn lijst is leidend; elke andere ingelogde service wordt hieraan aangepast';

  @override
  String get syncAuto => 'Auto-sync';

  @override
  String get syncAutoDesc =>
      'Haal op en synchroniseer op de achtergrond bij het openen van de app en elke 30 minuten';

  @override
  String get syncAddMissing => 'Ontbrekende items toevoegen';

  @override
  String get syncAddMissingDesc =>
      'Voeg ook items toe die de andere service nog niet heeft';

  @override
  String syncServiceOn(String name) {
    return 'Synchroniseren met $name';
  }

  @override
  String get syncDelete => 'Verwijder wat de hoofdservice niet heeft';

  @override
  String get syncDeleteDesc =>
      'Verwijder vermeldingen uit de andere services die niet op de hoofdlijst staan. Alleen vermeldingen die aan een titel kunnen worden gekoppeld, worden verwijderd, dus zaken als Simkl-films en -series blijven bestaan';

  @override
  String get syncDeleteTitle => 'Invoer verwijderen?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vermeldingen',
      one: '1 invoer',
    );
    return '$_temp0 die niet op uw hoofdlijst staan, worden uit de andere services verwijderd. Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get syncDeleteAction => 'Verwijderen';

  @override
  String get syncToDelete => 'Om te verwijderen';

  @override
  String get syncDeletedNote => 'Wordt verwijderd';

  @override
  String syncWillRemove(int count, String name) {
    return '$count wordt verwijderd uit $name';
  }

  @override
  String get syncOnlyForward => 'Verdere voortgang behouden';

  @override
  String get syncOnlyForwardDesc =>
      'Verlaag de voortgang niet van een service die al verder is';

  @override
  String get animePlanetWontWatch => 'Ik zal niet kijken';

  @override
  String get animePlanetWontRead => 'Zal niet lezen';

  @override
  String get animePlanetAlreadyOnList => 'Staat al op deze lijst';

  @override
  String get animePlanetNewList => 'Nieuwe lijstnaam';

  @override
  String get syncPrivate => 'Privé-inzendingen';

  @override
  String get syncPrivateDesc =>
      'Wat u moet doen met gegevens die u privé houdt. Een dienst met een privéoptie maakt ze privé; anderen zouden ze publiekelijk laten zien';

  @override
  String get syncPrivateModeAsk => 'Vraag';

  @override
  String get syncPrivateModeSync => 'Synchroniseer ze';

  @override
  String get syncPrivateModeSkip => 'Sla ze over';

  @override
  String get syncPrivateTitle => 'Privé-inzendingen';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-inzendingen zijn privé',
      one: '1 inzending is privé',
    );
    return '$_temp0. Services met een privéoptie (AniList, Kitsu, MangaBaka) krijgen ze als privé; de andere diensten hebben geen privéoptie en zouden deze openbaar tonen. Synchroniseer ze? Uw antwoord wordt onthouden; wijzig dit onder Synchronisatieopties.';
  }

  @override
  String get syncPrivateInclude => 'Synchroniseer ze';

  @override
  String get syncPrivateSkip => 'Sla ze over';

  @override
  String get syncFetch => 'Ophalen';

  @override
  String get syncFetchAgain => 'Opnieuw ophalen';

  @override
  String get syncAll => 'Alles synchroniseren';

  @override
  String get syncStop => 'Stoppen';

  @override
  String get syncResume => 'Hervatten';

  @override
  String get syncNothingToSync =>
      'Deze service kan voor dit type niet worden gesynchroniseerd';

  @override
  String get syncNoTargets =>
      'Log in bij een andere service om mee te synchroniseren';

  @override
  String get syncLoadingMap => 'ID-koppeling laden';

  @override
  String get syncComparing => 'Lijsten vergelijken';

  @override
  String get syncIntro =>
      'Kies een hoofdservice en druk op Ophalen. Elke service wordt één keer om je lijst gevraagd en daarna vergeleken met de hoofdservice.';

  @override
  String get syncStateSynced => 'Gesynchroniseerd';

  @override
  String get syncStateOutdated => 'Niet gesynchroniseerd';

  @override
  String get syncStateMissing => 'Niet in lijst';

  @override
  String get syncStateUnmapped => 'Geen match';

  @override
  String syncPaused(String time) {
    return 'Wachten op de limiet, gaat verder over $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count alleen op $name, ongemoeid gelaten';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done van $total';
  }

  @override
  String get syncNothingHere => 'Niks te tonen';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used van $max verzoeken gebruikt deze $window';
  }

  @override
  String get syncMinute => 'minuut';

  @override
  String get syncDay => 'dag';

  @override
  String get syncNotInList => 'Nog niet in lijst';

  @override
  String get syncCleared => 'Planning gewist';

  @override
  String get syncClear => 'Wissen';

  @override
  String get syncOptions => 'Opties';

  @override
  String get syncShared => 'Deelt zijn item met een ander';

  @override
  String syncNotFound(String service) {
    return 'Niet gevonden op $service';
  }

  @override
  String syncService(String service, int count) {
    return '$service synchroniseren ($count)';
  }

  @override
  String get syncOnEdit => 'Wijzigingen direct synchroniseren';

  @override
  String get syncOnEditDesc =>
      'Stuur elke voortgangsupdate en lijstwijziging meteen naar je andere ingelogde services';

  @override
  String syncRemoved(String services) {
    return 'Verwijderd uit $services';
  }

  @override
  String syncPushed(String services) {
    return 'Gesynchroniseerd met $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'Limiet bereikt, probeer het zo opnieuw';

  @override
  String get syncAhead => 'Wie het verst is';

  @override
  String get syncAheadDesc =>
      'Tweerichting: per titel wint het item dat het verst is en wordt het naar al je andere services gekopieerd';

  @override
  String syncAheadFrom(String service) {
    return 'Van $service';
  }

  @override
  String get syncConfirm => 'Controleren voor het synchroniseren';

  @override
  String get syncConfirmDesc =>
      'Toon wat Alles synchroniseren gaat wijzigen en hoeveel verzoeken nodig zijn';

  @override
  String get syncPreviewTitle => 'Klaar om te synchroniseren';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates updates, $adds toe te voegen';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Ongeveer $count verzoeken';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID\'s moeten eerst worden opgezocht';
  }

  @override
  String get syncPreviewNothing => 'Niks te wijzigen';

  @override
  String get syncStart => 'Starten';

  @override
  String get syncRetry => 'Opnieuw';

  @override
  String get syncSkip => 'Dit item overslaan';

  @override
  String get syncInclude => 'Dit item weer meenemen';

  @override
  String get syncSkippedLabel => 'Overgeslagen';

  @override
  String get syncChanges => 'Verschillen';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Voortgang';

  @override
  String get syncChangeScore => 'Scoren';

  @override
  String get syncChangeDates => 'Datums';

  @override
  String get syncChangeRepeat => 'Aantal keer opnieuw gekeken';

  @override
  String get syncFailedReason => 'Waarom het mislukte';

  @override
  String get syncSkippedHint =>
      'Overgeslagen items blijven met rust, ook na opnieuw ophalen';

  @override
  String get commentsRules => 'Reactieregels';

  @override
  String get commentsRulesBody =>
      'ELKE REGEL BREKEN = JE BENT ERUIT\n\n1. Geen racisme, discriminatie of haatzaaien\n2. Geen spam of zelfpromotie\n3. Absoluut geen NSFW-content\n4. Alleen Engels, geen uitzonderingen\n5. Geen imitatie, intimidatie of mishandeling\n6. Geen illegale content of extreem gebrek aan respect voor een fandom\n7. Vraag of deel geen repositories of extensies\n8. Spoilers alleen met spoilertags en een waarschuwing\n9. Geen seksualiserende of ongepaste opmerkingen over minderjarige personages\n10. Als het fout is, post het niet!';

  @override
  String get commentsRulesAccept => 'Ik snap het';

  @override
  String get commentsSortNewest => 'Nieuwste';

  @override
  String get commentsSortOldest => 'Oudste';

  @override
  String get commentsSortHighest => 'Hoogst beoordeeld';

  @override
  String get commentsSortLowest => 'Laagst beoordeeld';

  @override
  String commentsEpisodeShort(int number) {
    return 'Afl. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Hfst. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Filteren op aflevering';

  @override
  String get commentsFilterChapterTitle => 'Filteren op hoofdstuk';

  @override
  String get commentsFilterTagTitle =>
      'Voer een afleverings- of hoofdstuknummer in';

  @override
  String get commentsFilterHint => 'Nummer';

  @override
  String get commentsFilterApply => 'Filteren';

  @override
  String get commentsFilterClear => 'Alles tonen';

  @override
  String get commentsPlaceholder => 'Voeg een reactie toe…';

  @override
  String commentsReplyingTo(String name) {
    return 'Reageren op $name';
  }

  @override
  String get commentsSend => 'Versturen';

  @override
  String get commentsTagButton => 'Label';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (optioneel)';
  }

  @override
  String get commentsTagEpisode => 'aflevering';

  @override
  String get commentsTagChapter => 'hoofdstuk';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Nummer van $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'De tag mag het totaal ($total) niet overschrijden';
  }

  @override
  String get commentsNoTag => 'Geen tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF\'s zoeken';

  @override
  String get commentsGifEmpty => 'Geen GIF\'s gevonden';

  @override
  String get commentsEmptyText => 'Een reactie mag niet leeg zijn';

  @override
  String get commentsBannedYou => 'Je bent geband van reageren';

  @override
  String get commentsEdited => 'Reactie bewerkt';

  @override
  String get commentsDeleted => 'Reactie verwijderd';

  @override
  String get commentsDeletedPlaceholder => '[verwijderd]';

  @override
  String get commentsReported => 'Reactie gerapporteerd';

  @override
  String get commentsUserBanned => 'Gebruiker geband';

  @override
  String get commentsReport => 'Rapporteren';

  @override
  String get commentsReportAsk => 'Deze reactie rapporteren aan de moderators?';

  @override
  String get commentsDelete => 'Verwijderen';

  @override
  String get commentsDeleteAsk =>
      'Deze reactie wordt voor iedereen verwijderd.';

  @override
  String get commentsBan => 'Bannen';

  @override
  String get commentsBanAsk => 'Deze gebruiker bannen van reageren?';

  @override
  String get commentsCopy => 'Kopiëren';

  @override
  String get commentsViewReply => '1 reactie bekijken';

  @override
  String commentsViewReplies(int count) {
    return '$count reacties bekijken';
  }

  @override
  String get commentsHideReplies => 'Reacties verbergen';

  @override
  String get commentsLoadMore => 'Meer reacties laden';

  @override
  String get commentsEmpty => 'Nog geen reacties. Wees de eerste!';

  @override
  String get commentsEmptyFiltered => 'Geen reacties voor dit filter';

  @override
  String get commentsSignIn =>
      'Log in bij AniList om reacties te lezen en te schrijven';

  @override
  String get commentsSignInMessage =>
      'Reacties worden gedeeld tussen alle services en gebruiken je AniList-account.';

  @override
  String get commentsUnavailable =>
      'Reacties zijn niet beschikbaar voor deze titel';

  @override
  String get commentsUnavailableMessage =>
      'Hij kon niet worden gekoppeld aan een AniList-item.';

  @override
  String get commentsDisabled => 'Reacties staan uit';

  @override
  String get commentsDisabledMessage =>
      'Je kunt ze weer aanzetten via Instellingen › Algemeen.';

  @override
  String get commentsOffline => 'Kon de reacties niet laden';

  @override
  String get commentsSingleTitle => 'Eén reactie wordt getoond';

  @override
  String get commentsShowAll => 'Alle reacties tonen';

  @override
  String get commentsSettingsHeader => 'Reacties';

  @override
  String get commentsSettingEnabled => 'Reacties';

  @override
  String get commentsSettingEnabledDesc =>
      'Toon het tabblad Reacties bij titels en log in op de reactieserver met je AniList-account';

  @override
  String get commentsSettingAlerts => 'Meldingen bij reacties';

  @override
  String get commentsSettingAlertsDesc =>
      'Waarschuw me als iemand reageert op mijn reacties';

  @override
  String get commentsNoticeReplyTitle => 'Nieuwe reactie op je reactie';

  @override
  String commentsNoticeReply(String name) {
    return '$name heeft op je reactie gereageerd';
  }

  @override
  String get commentsNoticeWarningTitle => 'Je hebt een waarschuwing gekregen';

  @override
  String get commentsNoticeWarning => 'Wees wat bedachtzamer met je reacties';

  @override
  String get commentsNoticeUpdateTitle => 'Update van Dantotsu';

  @override
  String get barcodeTitle => 'Barcode scannen';

  @override
  String get barcodeTooltip => 'Zoek een manga of novel via de barcode';

  @override
  String get barcodeIntro =>
      'Richt de camera op de barcode achterop een deel, of typ de ISBN in.';

  @override
  String get barcodeIntroManual =>
      'Typ de ISBN die boven de barcode achterop een deel staat.';

  @override
  String get barcodeIsbnHint => 'ISBN-nummer';

  @override
  String get barcodeInvalid => 'Dat is geen geldige ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Geen boek gevonden voor $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'De camera is niet beschikbaar. Geef cameratoegang of typ de ISBN in.';

  @override
  String get themesTitle => 'Openingen en eindes';

  @override
  String get themesPlayVideo => 'Video afspelen';

  @override
  String get themesPlayAudio => 'Alleen audio afspelen';

  @override
  String get themesOpenSite => 'Openen op AnimeThemes';

  @override
  String get themesCredit => 'Thema\'s van AnimeThemes';

  @override
  String get themesVersions => 'Versies';

  @override
  String get sauceTitle => 'Zoek de bron';

  @override
  String get sauceIntro =>
      'Upload een mangapagina of artwork, of plak de link, om te vinden waar het vandaan komt.';

  @override
  String get sauceKeyTitle => 'SauceNAO API-sleutel';

  @override
  String get sauceKeyHint => 'Optioneel, verhoogt de dagelijkse zoeklimiet';

  @override
  String get sauceKeyDesc => 'Haal een gratis sleutel op saucenao.com/user.php';

  @override
  String get sauceOpen => 'Bron openen';

  @override
  String get sauceCredit => 'Afbeelding zoeken via SauceNAO';

  @override
  String get sauceEmpty => 'Geen match gevonden';

  @override
  String get sauceTooltip => 'Zoek de bron van een mangapagina of artwork';

  @override
  String get trendzTitle => 'Anime-hitlijsten';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Vrouwelijke personages';

  @override
  String get trendzMale => 'Mannelijke personages';

  @override
  String get trendzCouple => 'Koppels';

  @override
  String get trendzCredit => 'Wekelijkse hitlijsten van AniTrendz';

  @override
  String get trendzNew => 'NIEUW';

  @override
  String get trendzEmpty => 'De hitlijst is leeg';

  @override
  String get shareCard => 'Kaart delen';

  @override
  String get shareCardList => 'Lijstkaart delen';

  @override
  String get shareCardSaved => 'Kaart opgeslagen';

  @override
  String get shareCardFailed => 'Kon de kaart niet maken';

  @override
  String get shareCardListEmpty => 'Je lijst heeft nog niks om te delen';

  @override
  String get shareCardTop => 'Mijn topkeuzes';

  @override
  String themesEpisodes(String eps) {
    return 'Afleveringen $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% overeenkomst';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Week $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count stemmen';
  }

  @override
  String trendzPeak(String rank) {
    return 'Piek #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count weken in de top tien';
  }

  @override
  String get imageSearchTitle => 'Zoeken op afbeelding';

  @override
  String get imageSearchTooltip => 'Vind een anime via een screenshot';

  @override
  String get imageSearchIntro =>
      'Kies een screenshot of plak een afbeeldingslink en trace.moe vindt de aflevering en het moment waar het vandaan komt.';

  @override
  String get imageSearchPick => 'Afbeelding kiezen';

  @override
  String get imageSearchLinkHint => 'Plak een afbeeldingslink';

  @override
  String get imageSearchGo => 'Zoeken';

  @override
  String get imageSearchEmpty => 'Geen match gevonden';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Aflevering $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'om $time';
  }

  @override
  String get imageSearchPreview => 'Voorbeeldclip';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% overeenkomst';
  }

  @override
  String get imageSearchCredit => 'Mogelijk gemaakt door trace.moe';

  @override
  String get imageSearchOpenFailed => 'Kon deze titel niet openen';

  @override
  String get groups => 'Groepen';

  @override
  String get groupsYours => 'Jouw groepen';

  @override
  String get groupsPopular => 'Populair';

  @override
  String get groupsNew => 'Nieuw';

  @override
  String get groupsFeatured => 'Uitgelicht';

  @override
  String get groupsSearch => 'Groepen zoeken';

  @override
  String get groupsAll => 'Alles';

  @override
  String get groupsEmpty => 'Geen groepen gevonden';

  @override
  String get groupsEmptyYours => 'Je bent nog bij geen enkele groep';

  @override
  String get groupsSignIn => 'Log in om je groepen te zien';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leden',
      one: '1 lid',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Deelnemen';

  @override
  String get groupsJoined => 'Lid';

  @override
  String get groupsLeave => 'Groep verlaten';

  @override
  String get groupsLeaveAsk =>
      'Je ziet de berichten van deze groep niet meer in je feed.';

  @override
  String get groupsJoinFailed =>
      'Kon niet deelnemen aan deze groep, misschien alleen op uitnodiging';

  @override
  String get groupsLeaveFailed => 'Kon deze groep niet verlaten';

  @override
  String get groupsPosts => 'Berichten';

  @override
  String get groupsMembersTab => 'Leden';

  @override
  String get groupsAbout => 'Over';

  @override
  String get groupsRules => 'Regels';

  @override
  String get groupsPrivacyOpen => 'Openen';

  @override
  String get groupsPrivacyRestricted => 'Beperkt';

  @override
  String get groupsPrivacyClosed => 'Gesloten';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Beheerder';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Kon deze groep niet laden';

  @override
  String get groupsNewPost => 'Plaatsen in groep';

  @override
  String get groupsPostHint => 'Deel iets met de groep';

  @override
  String get groupsOpenInBrowser => 'Openen in browser';

  @override
  String get groupsCategory => 'Categorie';

  @override
  String get groupsLanguage => 'Taal';

  @override
  String get groupsCreated => 'Aangemaakt';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count leiders',
      one: '1 leider',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Privacy';

  @override
  String get notificationsAll => 'Alles';

  @override
  String get notificationsAiring => 'Uitzending';

  @override
  String get notificationsMedia => 'Nieuwe titels';

  @override
  String get notificationsReplies => 'Reacties';

  @override
  String get notificationsMentions => 'Vermeldingen';

  @override
  String get notificationsMessages => 'Berichten';

  @override
  String get notificationsLikes => 'Vind ik leuk';

  @override
  String get notificationsFollows => 'Volgers';

  @override
  String get notificationsNoServices =>
      'Geen ingelogde service heeft meldingen';

  @override
  String get notificationsNoServicesMessage =>
      'Log in bij een service die meldingen stuurt en ze verschijnen hier.';

  @override
  String get notificationsEmptyKind => 'Nog niks in deze categorie';

  @override
  String get notificationsCommentsEmpty => 'Geen reactiemeldingen';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Reacties op je reacties en aankondigingen van Dantotsu verschijnen hier.';

  @override
  String get notificationsSettings => 'Meldingsinstellingen';

  @override
  String get notificationsPollTitle => 'Op nieuwe meldingen controleren';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Elke $minutes minuten terwijl de app open is';
  }

  @override
  String get notificationsNotifyAbout => 'Meld me over';

  @override
  String get notificationsCommentsHeader => 'Reactiemeldingen';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Toon een systeemmelding voor elke ongelezen $service-melding terwijl de app draait.';
  }

  @override
  String get notificationsTestSent => 'Testmelding verzonden';

  @override
  String get notificationsTestDenied =>
      'Meldingen zijn niet toegestaan voor Dartotsu. Zet ze aan in de systeeminstellingen.';

  @override
  String get notificationsTestHint =>
      'Lang indrukken om een testmelding te sturen';

  @override
  String get notificationsTestSample => 'Dit is een testmelding';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name heeft op je reactie gereageerd in $media';
  }

  @override
  String get imageSearchNotLink => 'Dat lijkt niet op een link';

  @override
  String get imageSearchQuota => 'Zoeklimiet overschreden';

  @override
  String get imageSearchBusy => 'Te veel verzoeken, probeer het zo opnieuw';

  @override
  String imageSearchFailed(int code) {
    return 'Zoeken mislukt ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count nieuwe meldingen';
  }

  @override
  String get reactionsTitle => 'Reacties';

  @override
  String get reactionsNeedEntry =>
      'Voeg deze titel aan je lijst toe voordat je reageert';

  @override
  String get reactionsAdd => 'Reactie toevoegen';

  @override
  String get reactionsHint => 'Wat vond je ervan? (kort en spoilervrij)';

  @override
  String get reactionsPost => 'Plaatsen';

  @override
  String get reactionsFailed => 'Kon de reactie niet bijwerken';

  @override
  String get settingsWatch => 'Kijken & lezen';

  @override
  String get settingsWatchDesc =>
      'Afleveringslijsten, bronkoppeling en afleveringsdetails';

  @override
  String get watchSettingsLayout => 'Afleveringslijst';

  @override
  String get watchSettingsSources => 'Bronnen';

  @override
  String get watchSettingsMetadata => 'Afleveringsdetails';

  @override
  String get watchLayout => 'Indeling';

  @override
  String get watchListView => 'Lijst';

  @override
  String get watchGridView => 'Raster';

  @override
  String get watchCompactView => 'Compact';

  @override
  String get watchDefaultLayoutDesc =>
      'Hoe afleveringen en hoofdstukken worden weergegeven totdat je het voor een titel aanpast';

  @override
  String get watchChunkSize => 'Bereikgrootte';

  @override
  String get watchChunkSizeDesc =>
      'Hoeveel afleveringen of hoofdstukken elk bereiktabblad bevat';

  @override
  String get watchShowDescription => 'Beschrijvingen tonen';

  @override
  String get watchShowDescriptionDesc =>
      'Toon de samenvatting van de aflevering onder elke titel in de lijstindeling';

  @override
  String get watchShowFiller => 'Filleraflevering tonen';

  @override
  String get watchShowFillerDesc =>
      'Zet uit om afleveringen die als filler zijn gemarkeerd te verbergen';

  @override
  String get watchBlurUnwatched => 'Spoilerminiaturen verbergen';

  @override
  String get watchBlurUnwatchedDesc =>
      'Maak de miniatuur van afleveringen die je nog niet hebt gekeken wazig';

  @override
  String get watchResumeShelf => 'Hervatrij';

  @override
  String get watchResumeShelfDesc => 'Toon de Hervatten-rij op Home';

  @override
  String get watchMarkOnLongPress => 'Lang indrukken markeert voortgang';

  @override
  String get watchMarkOnLongPressDesc =>
      'Druk lang op een aflevering of hoofdstuk om het als gekeken of niet gekeken te markeren';

  @override
  String get watchMatching => 'Bronkoppeling';

  @override
  String get watchMatchingDesc =>
      'Dichtstbijzijnde pakt het beste zoekresultaat. Alleen exact accepteert alleen een bijna identieke titel en laat de rest aan jou over.';

  @override
  String get watchMatchClosest => 'Dichtstbijzijnde match';

  @override
  String get watchMatchExact => 'Alleen exacte match';

  @override
  String get watchMetadataDesc =>
      'Waar afleveringstitels, samenvattingen, miniaturen, uitzenddatums en fillermarkeringen vandaan komen. Sleep om de prioriteit in te stellen; de eerste bron met een waarde wint.';

  @override
  String get watchMetaAniZipDesc =>
      'Afleveringstitels, samenvattingen, stills en uitzenddatums';

  @override
  String get watchMetaKitsuDesc =>
      'Afleveringstitels, beschrijvingen en miniaturen';

  @override
  String get watchMetaSimklDesc =>
      'Afleveringstitels, beschrijvingen, stills en uitzenddatums';

  @override
  String get watchMetaAniListDesc =>
      'Titels en miniaturen van streamingafleveringen en het uitzendschema';

  @override
  String get watchMetaTenraiDesc =>
      'Afleveringstitels, uitzenddatums, filler- en recapmarkeringen van MyAnimeList via Tenrai';

  @override
  String get watchClearMetadata => 'Afleveringsdetails verversen';

  @override
  String get watchClearMetadataDesc =>
      'Wis de gecachete afleveringsdetails zodat ze opnieuw worden opgehaald';

  @override
  String get watchMetadataCleared =>
      'Afleveringsdetails worden opnieuw opgehaald';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afleveringen',
      one: '1 aflevering',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hoofdstukken',
      one: '1 hoofdstuk',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Aflevering $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Hoofdstuk $number';
  }

  @override
  String get watchSearching => 'Zoeken…';

  @override
  String watchSearchingFor(String term) {
    return 'Zoeken: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Geselecteerd: $title';
  }

  @override
  String watchFound(String title) {
    return 'Gevonden: $title';
  }

  @override
  String get watchNothingFound => 'Niks gevonden in deze bron';

  @override
  String get watchSearchFailed => 'Zoeken in de bron mislukt';

  @override
  String get watchLoadFailed => 'Kon de lijst niet laden';

  @override
  String get watchSignInToTrack => 'Log in om je voortgang bij te houden';

  @override
  String watchInstallSource(String action) {
    return 'Installeer een extensie om te beginnen met $action';
  }

  @override
  String get watchSourceMissing => 'Deze bron is niet geïnstalleerd';

  @override
  String get watchWrongTitle => 'Verkeerde titel?';

  @override
  String get watchSearchAgain => 'Opnieuw zoeken';

  @override
  String watchSearchSource(String source) {
    return '$source doorzoeken';
  }

  @override
  String get watchSource => 'Bron';

  @override
  String get sourceTags => 'Labels';

  @override
  String get sourceTagsHint =>
      'Tag waar deze bron voor is. Bij een titel worden eerst de bronnen vermeld die ervoor zijn getagd, en vervolgens de niet-getagde bronnen. 18+ bronnen worden alleen weergegeven voor titels voor volwassenen.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Films en series';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Verborgen door tags';

  @override
  String get watchOptions => 'Opties';

  @override
  String get watchReverse => 'Omgekeerde volgorde';

  @override
  String get watchScanlators => 'Groepen';

  @override
  String get watchResetOptions => 'Deze opties resetten';

  @override
  String get watchContinue => 'Doorgaan';

  @override
  String get watchStart => 'Starten';

  @override
  String get watchPlay => 'Afspelen';

  @override
  String get watchRead => 'Lezen';

  @override
  String get watchMarkWatched => 'Markeer als gekeken';

  @override
  String get watchMarkUnwatched => 'Markeer als niet gekeken';

  @override
  String get watchMarkRead => 'Markeer als gelezen';

  @override
  String get watchMarkUnread => 'Markeer als ongelezen';

  @override
  String get watchFiller => 'Vuller';

  @override
  String get watchRecap => 'Samenvatting';

  @override
  String get watchNoEpisodes => 'Geen afleveringen gevonden';

  @override
  String get watchNoChapters => 'Geen hoofdstukken gevonden';

  @override
  String get watchSourceTools => 'Brontools';

  @override
  String get watchSourceSettings => 'Broninstellingen';

  @override
  String get watchOpenWebView => 'Openen in webweergave';

  @override
  String get watchOpenWebViewDesc =>
      'Los een Cloudflare-check op of log in; de cookies worden gedeeld met de bronverzoeken';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cookies opgeslagen voor $host',
      one: '1 cookie opgeslagen voor $host',
      zero: 'Geen cookies opgeslagen voor $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare-clearance actief, $time';
  }

  @override
  String get watchClearanceMissing => 'Geen Cloudflare-clearancecookie';

  @override
  String get watchClearanceSession => 'geldig tot de app wordt gesloten';

  @override
  String get watchAgentShared =>
      'Verzoeken gebruiken de user agent van de webweergave, die Cloudflare controleert';

  @override
  String get watchAgentCustom =>
      'Er is een eigen user agent ingesteld, dus een Cloudflare-clearance uit de webweergave kan worden geweigerd';

  @override
  String get watchTestConnection => 'Verbinding testen';

  @override
  String get watchSolveChallenge => 'Oplossen';

  @override
  String watchProbeOk(int code) {
    return 'Bereikbaar (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare vraagt nog steeds om een check';

  @override
  String watchProbeBlocked(int code) {
    return 'Geblokkeerd door de site (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'De site was niet bereikbaar';

  @override
  String get watchClearCookies => 'Cookies voor deze site wissen';

  @override
  String get watchCookiesCleared => 'Cookies gewist';

  @override
  String get watchFailTimeout => 'De cheque was niet op tijd klaar';

  @override
  String get watchFailBlocked =>
      'De site heeft dit apparaat geblokkeerd (toegang geweigerd). Een cheque helpt niet';

  @override
  String get watchFailTurnstile =>
      'Voor deze controle is een tik nodig die de achtergrondoplosser niet kan uitvoeren';

  @override
  String get watchFailLoad =>
      'De pagina is niet geladen. Controleer de verbinding en het locatieadres';

  @override
  String get watchFailRejected =>
      'De site heeft de zojuist gegeven toestemming afgewezen. Probeer het opnieuw of wis de cookies';

  @override
  String get watchFailDismissed =>
      'De cheque werd gesloten voordat deze was afgelopen';

  @override
  String get watchFailCooldown =>
      'Je hebt zojuist de cheque afgesloten. Druk op Los het op om het opnieuw te proberen';

  @override
  String get watchFailQuiet =>
      'De cheque heeft je nodig en de app werkte op zichzelf';

  @override
  String get watchFailWebView =>
      'De webweergave op de achtergrond kan niet starten';

  @override
  String get watchFailUnavailable =>
      'Er is geen scherm waarop de cheque wordt weergegeven';

  @override
  String get watchStatusReady => 'Klaar';

  @override
  String get watchStatusChallenge => 'Cloudflare-controle nodig';

  @override
  String get watchStatusBlocked => 'Geblokkeerd door de site';

  @override
  String get watchStatusOffline => 'Kan de site niet bereiken';

  @override
  String get watchStatusUntested => 'Nog niet getest';

  @override
  String get watchStatusTesting => 'De verbinding testen…';

  @override
  String get watchStatusSolving => 'De Cloudflare-controle doorstaan…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare-controle op de achtergrond geslaagd ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare-controle geslaagd';

  @override
  String watchClearanceIssued(String time) {
    return 'verdiend $time';
  }

  @override
  String get watchClearanceStale =>
      'De goedkeuring is verdiend met een andere user-agent en wordt dus niet verzonden. Test de verbinding om een nieuwe te krijgen';

  @override
  String get watchSectionConnection => 'Verbinding';

  @override
  String get watchSectionSession => 'Sessie';

  @override
  String get watchSectionTools => 'Gereedschap';

  @override
  String get watchMetaSource => 'Afleveringsdetails van';

  @override
  String get watchMetaAuto => 'Automatisch';

  @override
  String get watchMetaOff => 'Uit';

  @override
  String get playerSettingsTitle => 'Spelerinstellingen';

  @override
  String get playerSectionPlayback => 'Afspelen';

  @override
  String get playerSectionSkip => 'Overslaan';

  @override
  String get playerSectionGestures => 'Bediening';

  @override
  String get playerSectionSubtitles => 'Ondertitels';

  @override
  String get playerSectionShaders => 'Schaduwen';

  @override
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Afspeelsnelheid';

  @override
  String get localSource => 'Lokale bestanden';

  @override
  String get localMissing =>
      'Dit bestand of deze map bevindt zich niet langer in uw lokale map';

  @override
  String get playerStickyStage => 'Kleverig filmpje';

  @override
  String get playerStickyStageDesc =>
      'Houd de video bovenaan vast terwijl je door de afleveringen en reacties hieronder bladert';

  @override
  String get playerCursedSpeed => 'Extra snelheden';

  @override
  String get playerCursedSpeedDesc => 'Voeg snelheden tot 10x aan de lijst toe';

  @override
  String get playerResize => 'Schaalmodus';

  @override
  String get playerFitFit => 'Passend';

  @override
  String get playerFitCover => 'Vullend';

  @override
  String get playerFitStretch => 'Uitrekken';

  @override
  String get playerSkipDuration => 'Lengte van de overslaan-knop';

  @override
  String get playerSkipDurationDesc =>
      'Seconden die de overslaan-knop springt buiten openings en endings';

  @override
  String get playerSeekDuration => 'Dubbeltik-spoelen';

  @override
  String get playerSeekDurationDesc =>
      'Seconden om te springen bij een dubbele tik of pijltoets';

  @override
  String get playerAutoPlay => 'Automatisch volgende afspelen';

  @override
  String get playerAutoPlayDesc =>
      'Start de volgende aflevering als deze afgelopen is';

  @override
  String get playerResume => 'Hervatten waar je was gebleven';

  @override
  String get playerResumeDesc =>
      'Ga verder met een aflevering vanaf de laatste positie';

  @override
  String get playerOrientation => 'Oriëntatie';

  @override
  String get playerOrientationAuto => 'Apparaat volgen';

  @override
  String get playerOrientationLandscape => 'Liggend';

  @override
  String get playerOrientationPortrait => 'Staand';

  @override
  String get playerAutoSkipOpening => 'Openings overslaan';

  @override
  String get playerAutoSkipEnding => 'Endings overslaan';

  @override
  String get playerAutoSkipRecap => 'Recaps overslaan';

  @override
  String get playerAutoSkipDesc =>
      'Spring er meteen overheen zodra het begint, met AniSkip en stream-tijdstempels';

  @override
  String get playerDisableSkips => 'Overslaan uitschakelen';

  @override
  String get playerDisableSkipsDesc =>
      'Geen AniSkip of stream-tijdstempels, hoofdstukmarkeringen of inzendingen overslaan in de speler';

  @override
  String get playerSkipOnce => 'Maar één keer overslaan';

  @override
  String get playerSkipOnceDesc =>
      'Sla hetzelfde stuk niet nog eens over als je er terugspoelt';

  @override
  String get playerAdjustBrightness => 'Helderheidsgebaar';

  @override
  String get playerAdjustBrightnessDesc =>
      'Veeg omhoog en omlaag op de rechterhelft van het scherm';

  @override
  String get playerAdjustVolume => 'Volumegebaar';

  @override
  String get playerAdjustVolumeDesc =>
      'Veeg omhoog en omlaag op de linkerhelft van het scherm';

  @override
  String get playerHoldToSpeed => 'Ingedrukt houden om te versnellen';

  @override
  String get playerHoldToSpeedDesc =>
      'Houd de video ingedrukt om sneller af te spelen, sleep opzij om de snelheid te wijzigen';

  @override
  String get playerThumbless => 'Dikkere zoekbalk';

  @override
  String get playerThumblessDesc => 'Een dikke balk zonder knop';

  @override
  String get playerShowSubtitles => 'Ondertitels tonen';

  @override
  String get playerShowSubtitlesDesc =>
      'Zet uit om alle ondertitelsporen te verbergen';

  @override
  String get playerSubtitleLanguage => 'Voorkeurstaal voor ondertitels';

  @override
  String get playerSubtitleSize => 'Ondertitelgrootte';

  @override
  String get playerSubtitleWeight => 'Ondertiteldikte';

  @override
  String get playerSubtitleBottom => 'Ondertitel-ruimte onderaan';

  @override
  String get playerSubtitleFont => 'Ondertitellettertype';

  @override
  String get playerSubtitleColor => 'Ondertitelkleur';

  @override
  String get playerSubtitleBackground => 'Ondertitelachtergrond';

  @override
  String get playerSubtitleOutline => 'Ondertitelcontour';

  @override
  String get playerSubtitleOutlineWidth => 'Breedte ondertiteling';

  @override
  String get playerSubtitlePreview => 'Voorbeeld van ondertiteling';

  @override
  String get playerSubtitlePreviewText => 'Voorbeeldtekst ondertiteling';

  @override
  String get playerLibass => 'libass gebruiken';

  @override
  String get playerLibassDesc =>
      'Render opgemaakte .ass-ondertitels. De grootte, kleur en lettertype hierboven gelden dan niet meer';

  @override
  String get playerShaders => 'Schaduwen';

  @override
  String get playerShadersEnable => 'Shaders inschakelen';

  @override
  String get playerShadersEnableDesc =>
      'Schaal op en maak het beeld schoner met GLSL-shaders zoals Anime4K';

  @override
  String get playerShadersOff => 'Shaders uit';

  @override
  String get playerShadersMissing => 'Anime4K is niet geïnstalleerd';

  @override
  String get playerShadersMissingDesc =>
      'Download het Anime4K-shaderpakket (ongeveer 0,8 MB) om de ingebouwde modi te gebruiken.';

  @override
  String get playerShadersDownload => 'Anime4K downloaden';

  @override
  String get playerPictureSave => 'Bewaar dit kader';

  @override
  String get playerPictureOriginal => 'Origineel';

  @override
  String get playerPictureOriginalDesc =>
      'Het frame zoals de video het heeft, zonder shaders of kleuren';

  @override
  String get playerPictureProcessed => 'Met shaders en kleuren';

  @override
  String get playerPictureProcessedDesc => 'Het frame zoals je het nu ziet';

  @override
  String get playerPictureSaved => 'Kader opgeslagen';

  @override
  String get playerPictureSaveFailed => 'Kan het frame niet opslaan';

  @override
  String get playerShadersPreview => 'Voorbeeld op dit frame';

  @override
  String get playerShadersUse => 'Gebruik dit';

  @override
  String get playerPicture => 'Beeld';

  @override
  String get playerColors => 'Kleuren';

  @override
  String get playerColorDefault => 'Standaard';

  @override
  String get playerColorVivid => 'Levendig';

  @override
  String get playerColorPop => 'Anime-pop';

  @override
  String get playerColorSoft => 'Zacht';

  @override
  String get playerColorCinematic => 'Cinematisch';

  @override
  String get playerColorBright => 'Helder';

  @override
  String get playerColorNight => 'Nacht';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Aangepast';

  @override
  String get playerColorBrightness => 'Helderheid';

  @override
  String get playerColorContrast => 'Contrasterend';

  @override
  String get playerColorSaturation => 'Verzadiging';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Tint';

  @override
  String get playerColorReset => 'Resetten';

  @override
  String get playerColorAdjust => 'Aanpassen';

  @override
  String get playerShadersOriginal => 'Origineel';

  @override
  String get playerShadersPreviewFailed =>
      'Kon geen frame pakken voor het voorbeeld';

  @override
  String get playerShadersSoftware =>
      'Shaders hebben hardwarerendering nodig en de speler gebruikt softwarerendering. Schakel Softwareweergave uit in de Spelerinstellingen.';

  @override
  String get playerSoftwareRender => 'Softwarematige weergave';

  @override
  String get playerSoftwareRenderDesc =>
      'Alleen voor een zwarte video. Shaders werken er niet mee. Geldt de volgende keer dat de speler wordt geopend';

  @override
  String get playerShadersCustomFiles => 'Jouw shaders';

  @override
  String get playerShadersCustom => 'Eigen shaders';

  @override
  String get playerShadersImport => '.glsl importeren';

  @override
  String get playerShadersNone =>
      'Importeer je eigen .glsl- of .hook-bestanden en vink ze aan om ze te koppelen';

  @override
  String get playerShadersBadFile => 'Kies een .glsl- of .hook-shaderbestand';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Automatisch';

  @override
  String get playerDecoderAutoSafe => 'Auto (veilig)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Video-uitvoer';

  @override
  String get playerAudioChannels => 'Audiokanalen';

  @override
  String get playerBuffer => 'Buffergrootte (MB)';

  @override
  String get playerBufferDesc =>
      'Geheugen dat de speler mag gebruiken om een stream te bufferen';

  @override
  String get playerUseMpvConf => 'mpv.conf gebruiken';

  @override
  String get playerUseMpvConfDesc =>
      'Pas de opties in je mpv.conf toe als het afspelen begint';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'De mpv-configuratie bewerken';

  @override
  String get playerMpvConfDesc =>
      'Eén optie per regel, zoals --hwdec=auto in een gewone mpv.conf. Profielen tussen [haakjes] worden genegeerd.';

  @override
  String get playerMpvConfSaved => 'mpv.conf opgeslagen';

  @override
  String get playerUseScripts => 'mpv-scripts gebruiken';

  @override
  String get playerUseScriptsDesc =>
      'Laad de plugins uit de scriptsmap. Hiervoor is een libmpv-build met Lua- of JavaScript-ondersteuning nodig';

  @override
  String get playerScripts => 'mpv-scripts';

  @override
  String get playerScriptsManage =>
      'Plugins toevoegen, verwijderen en wisselen';

  @override
  String get playerScriptsAdd => 'Script toevoegen';

  @override
  String get playerScriptsDesc =>
      'Lua-, JavaScript- en native plugins die je hier plaatst, worden geladen als het afspelen begint.';

  @override
  String get playerScriptsNone => 'Nog geen scripts';

  @override
  String get playerScriptsBadFile =>
      'Kies een .lua-, .js- of native pluginbestand';

  @override
  String get playerTuning => 'Geavanceerde videotuning';

  @override
  String get playerTuningDesc =>
      'Overschrijf sync, caching, schaling en tonemapping. Verkeerde waarden kunnen het afspelen verpesten';

  @override
  String get playerVideoSync => 'Videosync';

  @override
  String get playerInterpolation => 'Frame-interpolatie';

  @override
  String get playerInterpolationDesc =>
      'Vloeiende beweging, vereist display-resample-sync';

  @override
  String get playerPitch => 'Toonhoogtecorrectie';

  @override
  String get playerPitchDesc => 'Houd stemmen natuurlijk bij andere snelheden';

  @override
  String get playerCacheSeconds => 'Cache (seconden)';

  @override
  String get playerReadahead => 'Vooruit lezen (seconden)';

  @override
  String get playerThreads => 'Decoder-threads';

  @override
  String get playerDeband => 'Ontbinden';

  @override
  String get playerDebandDesc => 'Verminder kleurbanding in verlopen';

  @override
  String get playerDebandIterations => 'Deband-iteraties';

  @override
  String get playerDebandThreshold => 'Deband-drempel';

  @override
  String get playerCorrectDownscaling => 'Correct verkleinen';

  @override
  String get playerSigmoid => 'Sigmoid-opschaling';

  @override
  String get playerScale => 'Opschaler';

  @override
  String get playerCscale => 'Chroma-opschaler';

  @override
  String get playerDscale => 'Verkleiner';

  @override
  String get playerToneMapping => 'Tonemapping';

  @override
  String get playerTargetPeak => 'Doelpiek';

  @override
  String get playerOpenFiles => 'Videobestanden openen';

  @override
  String get playerOpenFilesDesc => 'Speel bestanden van dit apparaat af';

  @override
  String get playerOpenFolder => 'Een map openen';

  @override
  String get playerOpenFolderDesc =>
      'Speel alle video\'s in een map af als afspeellijst';

  @override
  String get playerNetworkStream => 'Netwerkstream';

  @override
  String get playerNetworkStreamDesc => 'Open een directe video- of HLS-link';

  @override
  String get playerStreamUrl => 'Stream-URL';

  @override
  String get playerStreamReferer => 'Referer (optioneel)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc => 'Stream een magnetlink of .torrent-bestand';

  @override
  String get playerMagnetLink => 'Magnetlink of torrent-URL';

  @override
  String get playerPickTorrent => 'Kies een .torrent-bestand';

  @override
  String get playerTorrentMissing =>
      'Installeer eerst de torrent-add-on via Instellingen > Add-ons';

  @override
  String get playerNoVideos => 'Geen afspeelbare video\'s gevonden';

  @override
  String get playerReset => 'Spelerinstellingen resetten';

  @override
  String get playerResetDesc => 'Zet elke speleroptie terug naar de standaard';

  @override
  String get playerResetConfirm => 'Alle spelerinstellingen resetten?';

  @override
  String get playerResetDone => 'Spelerinstellingen gereset';

  @override
  String get playerQuality => 'Kwaliteit';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Harde sub';

  @override
  String get streamGroupSoftSub => 'Zachte sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Rauw';

  @override
  String get streamGroupOther => 'Anders';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 stroom',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Stromen';

  @override
  String get playerStreamFailedNext =>
      'Die stream wil niet spelen. Ik probeer de volgende';

  @override
  String get playerAutoSelect => 'Stream automatisch kiezen';

  @override
  String get playerAutoSelectDesc =>
      'Kies de stream die het meest lijkt op je laatste keuze voor deze titel';

  @override
  String get playerLoadingStreams => 'Streams zoeken…';

  @override
  String get playerNoStreams => 'Deze aflevering heeft geen streams';

  @override
  String get playerNoStreamsTitle => 'Geen streams gevonden';

  @override
  String get playerFailed => 'Afspelen mislukt';

  @override
  String get playerTorrentNeeded => 'Deze stream is een torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Installeer de torrent-add-on om magnetlinks en .torrent-bestanden af te spelen';

  @override
  String get playerOpenAddons => 'Add-ons openen';

  @override
  String get playerTryAnotherStream => 'Probeer een andere stream';

  @override
  String get playerEpisodes => 'Afleveringen';

  @override
  String get playerLock => 'Bediening vergrendelen';

  @override
  String get playerFullscreen => 'Volledig scherm';

  @override
  String get readerChapters => 'Hoofdstukken';

  @override
  String get readerSettingsTitle => 'Lezerinstellingen';

  @override
  String get readerPreviousChapter => 'Vorig hoofdstuk';

  @override
  String get readerNextChapter => 'Volgend hoofdstuk';

  @override
  String get readerFirstChapter => 'Dit is het eerste hoofdstuk';

  @override
  String get readerLastChapter => 'Je bent helemaal bij';

  @override
  String get readerFailed => 'Kon dit hoofdstuk niet openen';

  @override
  String get readerOpenBook => 'Open een boek';

  @override
  String get readerOpenBookDesc =>
      'Lees een epub (romanlezer) of een pdf (mangalezer) uit uw bestanden';

  @override
  String get readerNoText => 'Dit hoofdstuk heeft geen tekst';

  @override
  String get readerPerTitle => 'Alleen voor deze titel';

  @override
  String get readerPerTitleDesc =>
      'Bewaar deze lezerinstellingen alleen voor deze titel';

  @override
  String get readerSectionReading => 'Lezen';

  @override
  String get readerSectionControls => 'Bediening';

  @override
  String get readerSectionDisplay => 'Weergave';

  @override
  String get readerSectionNovel => 'Roman';

  @override
  String get readerMode => 'Leesmodus';

  @override
  String get readerModeAuto => 'Automatisch (op serietype)';

  @override
  String get readerModeRtl => 'Van rechts naar links';

  @override
  String get readerModeLtr => 'Van links naar rechts';

  @override
  String get readerModeVertical => 'Verticale pagina\'s';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Doorlopend scrollen';

  @override
  String get readerScale => 'Afbeeldingsschaal';

  @override
  String get readerScaleFit => 'Passend op scherm';

  @override
  String get readerScaleWidth => 'Passend op breedte';

  @override
  String get readerScaleHeight => 'Passend op hoogte';

  @override
  String get readerScaleOriginal => 'Originele grootte';

  @override
  String get readerScaleSmart => 'Slim passend';

  @override
  String get readerDoublePage => 'Dubbele pagina\'s';

  @override
  String get readerDoublePageDesc =>
      'Toon twee pagina\'s naast elkaar in landschap';

  @override
  String get readerDoubleTapZoom => 'Dubbeltik om te zoomen';

  @override
  String get readerDoubleTapZoomDesc =>
      'Zoom een pagina in en uit met een dubbele tik';

  @override
  String get readerAnimate => 'Pagina-animatie';

  @override
  String get readerAnimateDesc => 'Paginawissels animeren';

  @override
  String get readerSidePadding => 'Zijmarge';

  @override
  String get readerSidePaddingDesc => 'Ruimte naast de pagina\'s in procenten';

  @override
  String get readerPageGap => 'Paginaruimte';

  @override
  String get readerPageGapDesc => 'Ruimte tussen pagina\'s';

  @override
  String get readerAutoNext => 'Doorgaan naar het volgende hoofdstuk';

  @override
  String get readerAutoNextDesc =>
      'Laad het volgende hoofdstuk terwijl je het einde van dit hoofdstuk leest';

  @override
  String get readerPreload => 'Pagina\'s vooraf laden';

  @override
  String get readerPreloadDesc => 'Hoeveel pagina\'s vooruit gedownload worden';

  @override
  String get readerTapZones => 'Tikzones';

  @override
  String get readerTapDefault => 'Standaard';

  @override
  String get readerTapLShaped => 'L-vormig';

  @override
  String get readerTapKindle => 'Kindle-achtig';

  @override
  String get readerTapEdge => 'Alleen randen';

  @override
  String get readerTapOff => 'Uitgeschakeld';

  @override
  String get readerInvertTaps => 'Tikzones omkeren';

  @override
  String get readerInvertTapsDesc => 'Wissel het vorige en volgende gebied om';

  @override
  String get readerBackground => 'Achtergrond';

  @override
  String get readerBackgroundBlack => 'Zwart';

  @override
  String get readerBackgroundGray => 'Grijs';

  @override
  String get readerBackgroundWhite => 'Wit';

  @override
  String get readerBackgroundTheme => 'App-thema';

  @override
  String get readerFilter => 'Kleurfilter';

  @override
  String get readerFilterNone => 'Geen';

  @override
  String get readerFilterGrayscale => 'Grijstinten';

  @override
  String get readerFilterInvert => 'Omkeren';

  @override
  String get readerFilterSepia => 'Sepia';

  @override
  String get readerFilterQuality => 'Kwaliteit van beeldfilter';

  @override
  String get readerFilterQualityNone => 'Geen (dichtstbijzijnde buur)';

  @override
  String get readerFilterQualityLow => 'Laag (bilineair)';

  @override
  String get readerFilterQualityMedium => 'Medium (trilineair)';

  @override
  String get readerFilterQualityHigh => 'Hoog (bicubisch)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (roest hoge kwaliteit)';

  @override
  String get readerDim => 'Dimmen';

  @override
  String get readerDimDesc => 'Maak de pagina\'s donkerder';

  @override
  String get readerPageNumber => 'Paginanummer';

  @override
  String get readerPageNumberDesc => 'Toon het paginanummer tijdens het lezen';

  @override
  String get readerFullscreen => 'Volledig scherm';

  @override
  String get readerFullscreenDesc => 'Verberg de systeembalken';

  @override
  String get readerCropBorders => 'Randen bijsnijden';

  @override
  String get readerCropBordersDesc =>
      'Snijd lege witte of zwarte marges van pagina\'s af';

  @override
  String get readerLongPressSave => 'Houd een pagina vast om deze op te slaan';

  @override
  String get readerLongPressSaveDesc =>
      'Druk lang op een pagina om de opties voor opslaan, delen en kopiëren te openen';

  @override
  String get readerVolumeKeys => 'Volumetoetsen slaan pagina\'s om';

  @override
  String get readerVolumeKeysDesc =>
      'Volume omlaag gaat vooruit, volume omhoog gaat terug';

  @override
  String get readerBookmarks => 'Bladwijzers';

  @override
  String get readerBookmarkAdd => 'Bladwijzer toevoegen';

  @override
  String get readerBookmarkRemove => 'Bladwijzer verwijderen';

  @override
  String get readerBookmarksEmpty => 'Nog geen bladwijzers';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Pagina $page van $total';
  }

  @override
  String get readerAutoScroll => 'Auto-scroll';

  @override
  String get readerAutoScrollStop => 'Auto-scroll stoppen';

  @override
  String get readerAutoScrollSpeed => 'Auto-scrollsnelheid';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Hoe snel pagina\'s uit zichzelf scrollen of omslaan';

  @override
  String get readerKeepOn => 'Scherm aan houden';

  @override
  String get readerKeepOnDesc =>
      'Voorkom dat het scherm uitgaat tijdens het lezen';

  @override
  String get readerOrientation => 'Oriëntatie';

  @override
  String get readerOrientationFree => 'Vrij';

  @override
  String get readerOrientationPortrait => 'Staand';

  @override
  String get readerOrientationLandscape => 'Liggend';

  @override
  String get readerSaveProgress => 'Voortgang opslaan';

  @override
  String get readerSaveProgressDesc =>
      'Onthoud je pagina en markeer hoofdstukken als gelezen';

  @override
  String get readerReset => 'Lezerinstellingen resetten';

  @override
  String get readerResetDesc => 'Terug naar de standaard';

  @override
  String get readerResetConfirm =>
      'Elke lezerinstelling resetten naar de standaardwaarde?';

  @override
  String get novelSize => 'Tekstgrootte';

  @override
  String get novelFont => 'Lettertype';

  @override
  String get novelLineHeight => 'Regelhoogte';

  @override
  String get novelParagraph => 'Alinea-afstand';

  @override
  String get novelMargin => 'Marges';

  @override
  String get novelTheme => 'Lezerthema';

  @override
  String get novelThemeApp => 'App-thema';

  @override
  String get novelThemeLight => 'Licht';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Donker';

  @override
  String get novelThemeBlack => 'Zwart';

  @override
  String get novelJustify => 'Tekst uitvullen';

  @override
  String get novelJustifyDesc => 'Lijn de tekst uit aan beide randen';

  @override
  String get trackProgressTitle => 'Voortgang opslaan?';

  @override
  String trackProgressAnime(String name) {
    return '$name in je lijst bijhouden terwijl je kijkt? Kies \"Alleen dit apparaat\" om het lokaal te houden, of Nee om niks op te slaan.';
  }

  @override
  String trackProgressManga(String name) {
    return '$name in je lijst bijhouden als je een hoofdstuk uit hebt? Kies \"Alleen dit apparaat\" om het lokaal te houden, of Nee om niks op te slaan.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Je voortgang op $name opslaan in je lijst op dit apparaat terwijl je kijkt?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Je voortgang op $name opslaan in je lijst op dit apparaat als je een hoofdstuk voltooit?';
  }

  @override
  String get downloadClearQueue => 'Wachtrij wissen';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Alle $count downloads in de wachtrij annuleren? Wat al is gedownload, wordt verwijderd.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count geselecteerd';
  }

  @override
  String get downloadSelectAll => 'Selecteer alles';

  @override
  String get downloadDeleteSelected => 'Geselecteerde verwijderen';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count downloads verwijderen? Hun bestanden worden van het apparaat verwijderd.';
  }

  @override
  String get castTitle => 'Casten naar apparaat';

  @override
  String get castSearching => 'Zoeken naar apparaten in uw netwerk...';

  @override
  String get castNoDevices =>
      'Geen apparaten gevonden. Zorg ervoor dat de tv of Chromecast verbinding heeft met hetzelfde wifi-netwerk en zoek vervolgens opnieuw.';

  @override
  String get castRefresh => 'Zoek opnieuw';

  @override
  String get castFailed => 'Kan niet beginnen met casten';

  @override
  String get castStop => 'Stop met casten';

  @override
  String castNowCasting(String name) {
    return 'Casten naar $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart-TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku kan de positie niet rapporteren of wijzigen';

  @override
  String get castControls => 'Controles';

  @override
  String get castVolume => 'TV-volume';

  @override
  String castSkipPart(String name) {
    return 'Sla $name over';
  }

  @override
  String get trackProgressRememberSeries => 'Onthoud voor deze serie';

  @override
  String get trackProgressYes => 'Opslaan';

  @override
  String get trackProgressReset =>
      'Voortgangsvraag voor dit type gereset, hij wordt opnieuw gesteld';

  @override
  String get trackProgressNo => 'Nee';

  @override
  String get trackProgressOff => 'Uit';

  @override
  String get trackProgressLocal => 'Alleen dit apparaat';

  @override
  String get trackProgressSettingAnime => 'Anime-voortgang bijhouden';

  @override
  String get trackProgressSettingManga => 'Manga- en novelvoortgang bijhouden';

  @override
  String get trackProgressSettingDesc =>
      'Wat er gebeurt als je een aflevering opent of een hoofdstuk uitleest';

  @override
  String get trackProgressAsk => 'Vragen';

  @override
  String get trackProgressAlways => 'Altijd';

  @override
  String get dantotsuImport => 'Importeren uit Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Lees een Dantotsu-instellingenback-up (.ani, of versleutelde .sani)';

  @override
  String get dantotsuPick => 'Kies een Dantotsu-back-up';

  @override
  String get dantotsuNothing => 'Niks in dit bestand kan worden geïmporteerd';

  @override
  String get dantotsuApply => 'Selectie importeren';

  @override
  String dantotsuDone(int done, int total) {
    return '$done van $total geïmporteerd';
  }

  @override
  String get dantotsuGroupAccounts => 'Rekeningen';

  @override
  String get dantotsuGroupAppearance => 'Uiterlijk';

  @override
  String get dantotsuGroupExtensions => 'Extensies';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Speler';

  @override
  String get dantotsuAnilist => 'AniList-login';

  @override
  String get dantotsuMal => 'MyAnimeList-login';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence-token';

  @override
  String get dantotsuTheme => 'Thema';

  @override
  String get themePickerTitle => 'Thema';

  @override
  String get dantotsuReposAnime => 'Repositories voor anime-extensies';

  @override
  String get dantotsuReposManga => 'Repositories voor manga-extensies';

  @override
  String get dantotsuReposNovel => 'Repositories voor novel-extensies';

  @override
  String get dantotsuUpdates => 'Updatecontrole';

  @override
  String get dantotsuComments => 'Reacties';

  @override
  String get dantotsuActivity => 'AniList-meldingen ophalen';

  @override
  String get dantotsuDns => 'DNS-provider';

  @override
  String get dantotsuPlayer => 'Spelersnelheid en ondertitelkleuren';

  @override
  String get dantotsuWarning =>
      'Dit bestand bevat inlogtokens. Houd het privé.';

  @override
  String get novelIndent => 'Alinea\'s laten inspringen';

  @override
  String get novelIndentDesc =>
      'Begin elke alinea met een inspringing op de eerste regel';

  @override
  String get novelLetterSpacing => 'Letterspatiëring';

  @override
  String get novelSectionTranslate => 'Vertaling';

  @override
  String get sectionExperimental => 'Experimenteel';

  @override
  String get kitsuGraphqlDetail => 'Snellere detailpagina\'s (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Laad een titel met personages, staff en jouw item in één verzoek';

  @override
  String get togetherTitle => 'Samen kijken';

  @override
  String get togetherIntro =>
      'Plak de kamerlink die je vriend je stuurde. Je doet meteen mee en de speler opent zodra ze beginnen te kijken.';

  @override
  String togetherLinkConfirm(String room) {
    return 'Sluit je aan bij de kamer $room? De host kiest wat er wordt afgespeeld en de speler opent vanzelf wanneer hij begint te kijken.';
  }

  @override
  String get togetherJoin => 'Doe mee';

  @override
  String get togetherName => 'Jouw naam';

  @override
  String get togetherConnecting => 'Verbinden…';

  @override
  String get togetherLeave => 'Kamer verlaten';

  @override
  String get togetherYou => 'Jij';

  @override
  String get togetherNoChat => 'Nog geen berichten';

  @override
  String get togetherChatHint => 'Bericht';

  @override
  String get togetherCopyInvite => 'Uitnodiging kopiëren';

  @override
  String get togetherShareInvite => 'Deel uitnodiging';

  @override
  String togetherShareText(String link) {
    return 'Kijk met mij mee op Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server en kamer gekopieerd';

  @override
  String get togetherConnectionLost => 'Verbinding verbroken';

  @override
  String togetherConnectedTo(String room) {
    return 'Verbonden met $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Kon niet verbinden: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name is binnengekomen';
  }

  @override
  String togetherLeft(String name) {
    return '$name is weggegaan';
  }

  @override
  String togetherPaused(String name) {
    return '$name heeft gepauzeerd';
  }

  @override
  String togetherResumed(String name) {
    return '$name is verdergegaan';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name sprong naar $time';
  }

  @override
  String get togetherFollowFailed =>
      'Kon de aflevering van de host niet openen. Open hem zelf.';

  @override
  String get togetherJoinRole => 'Meedoen aan een kamer';

  @override
  String get togetherOpenHost => 'Aflevering van host openen';

  @override
  String get togetherShowChat => 'Livechat tonen';

  @override
  String get togetherWaitingHost => 'Wachten tot de host een aflevering start';

  @override
  String get togetherRoomLink => 'Kamerlink';

  @override
  String get togetherBadLink => 'Dat is geen kamerlink';

  @override
  String get togetherHostClosed => 'De host heeft de kamer gesloten';

  @override
  String get togetherNowPlaying => 'Nu aan het spelen';

  @override
  String togetherWatchingCount(int count) {
    return '$count kijken mee';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user wil pauzeren';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user wil verdergaan';
  }

  @override
  String get togetherChip => 'Samen';

  @override
  String get togetherSettingsDesc =>
      'Doe mee met de kamer van een vriend via een link';

  @override
  String get novelBilingual => 'Origineel en vertaling tonen';

  @override
  String get novelBilingualDesc =>
      'Elke alinea toont de originele tekst met de vertaling eronder';

  @override
  String get novelTranslateTo => 'Vertalen naar';

  @override
  String get novelTranslateOff => 'Uit';

  @override
  String get novelSectionSpeech => 'Tekst-naar-spraak';

  @override
  String get novelSpeechRate => 'Spreeksnelheid';

  @override
  String get novelSpeechPitch => 'Spraaktoonhoogte';

  @override
  String get novelSpeak => 'Voorlezen';

  @override
  String get novelSpeakStop => 'Stop met voorlezen';

  @override
  String get novelTranslate => 'Hoofdstuk vertalen';

  @override
  String get novelTranslateShowOriginal => 'Origineel tonen';

  @override
  String novelTranslateFailed(String error) {
    return 'Vertalen mislukt: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Tekst-naar-spraak is niet beschikbaar op dit apparaat';

  @override
  String get novelSpeechVoice => 'Stem';

  @override
  String get novelSpeechVoiceDefault => 'Systeemstandaard';

  @override
  String get novelSpeakPrevious => 'Vorige regel';

  @override
  String get novelSpeakNext => 'Volgende regel';

  @override
  String get novelTapPaging => 'Tik op de randen om om te slaan';

  @override
  String get novelTapPagingDesc =>
      'Tik links of rechts om een pagina te scrollen, het midden toont de bediening';

  @override
  String get novelPaged => 'Pagina draaien';

  @override
  String get novelPagedDesc =>
      'Splits het hoofdstuk in pagina\'s en veeg of tik om ze om te slaan in plaats van te scrollen';

  @override
  String novelPageOf(int current, int total) {
    return 'Pagina $current van $total';
  }

  @override
  String get novelPaginating => 'Pagina\'s opmaken';

  @override
  String get novelTools => 'Inhoud, zoeken en hoogtepunten';

  @override
  String get novelContents => 'Inhoud';

  @override
  String get novelContentsEmpty => 'Dit hoofdstuk heeft geen kopjes';

  @override
  String get novelSearch => 'Zoeken';

  @override
  String get novelSearchHint => 'Zoek in dit hoofdstuk';

  @override
  String get novelSearchNone => 'Geen overeenkomsten';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count komt overeen',
      one: '1 wedstrijd',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Hoogtepunten';

  @override
  String get novelHighlightsEmpty =>
      'Selecteer wat tekst en tik op Markeren om deze hier te houden';

  @override
  String get novelHighlight => 'Hoogtepunt';

  @override
  String get novelHighlightNote => 'Let op';

  @override
  String get novelHighlightNoteHint => 'Voeg een notitie toe';

  @override
  String get novelHighlightRemove => 'Hoogtepunt verwijderen';

  @override
  String get novelHighlightFailed =>
      'Kan die selectie niet aan de tekst koppelen';

  @override
  String novelMinutesLeft(int count) {
    return 'nog $count min';
  }

  @override
  String get novelBold => 'Vetgedrukte tekst';

  @override
  String get novelBoldDesc => 'Gebruik een zwaarder gewicht';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter uit';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Volgende: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Vorige: $chapter';
  }

  @override
  String get readerNoPages => 'Dit hoofdstuk heeft geen pagina\'s';

  @override
  String get readerLoadingPages => 'Pagina\'s laden…';

  @override
  String get readerSlowPage => 'Deze pagina wordt nog geladen…';

  @override
  String get readerPageFailed => 'Kon deze pagina niet laden';

  @override
  String get playerShowComments => 'Reacties tonen';

  @override
  String get playerHideComments => 'Reacties verbergen';

  @override
  String get playerSubtitles => 'Ondertitels';

  @override
  String get playerSubtitlesOff => 'Ondertitels uit';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Ondertitelbestand toevoegen';

  @override
  String get playerAddAudio => 'Audiobestand toevoegen';

  @override
  String get playerChapters => 'Hoofdstukken';

  @override
  String get playerSkipSubmit => 'Overslaantijden indienen';

  @override
  String get playerSkipSubmitDesc =>
      'Markeer waar de opening, het einde of de samenvatting begint en eindigt in deze aflevering en deel dit met AniSkip, zodat iedereen de knop Overslaan krijgt.';

  @override
  String get playerSkipStart => 'Begin';

  @override
  String get playerSkipEnd => 'Einde';

  @override
  String get playerSkipUseNow => 'Gebruik huidige positie';

  @override
  String get playerSkipSend => 'Verzenden naar AniSkip';

  @override
  String get playerSkipSent => 'Skip-tijden ingediend bij AniSkip, bedankt';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip weigerde de skip-tijden: $error';
  }

  @override
  String get playerUnsupported =>
      'De videospeler kan niet op dit apparaat worden uitgevoerd (de Android-versie is te oud voor de gebundelde spelerbibliotheek). Tik om de details te kopiëren.';

  @override
  String get playerSkipNoMal =>
      'Deze titel heeft geen MyAnimeList-ID, AniSkip kan deze niet aan';

  @override
  String get playerNoChapters => 'Geen hoofdstukken';

  @override
  String get playerTimestamp => 'Tijdstempel';

  @override
  String get playerAutoPlayDelay => 'Aftelling volgende aflevering';

  @override
  String get playerWatchedAt => 'Tellen als gekeken bij';

  @override
  String playerNextIn(int seconds) {
    return 'Volgende aflevering over ${seconds}s';
  }

  @override
  String get playerPlayNow => 'Nu afspelen';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: wordt automatisch overgeslagen voor deze titel';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: wordt niet automatisch overgeslagen voor deze titel';
  }

  @override
  String get playerAudioLanguage => 'Voorkeurstaal voor audio';

  @override
  String get playerLanguageOrderHint =>
      'Scheid talen met komma\'s. De eerste die gevonden wordt, wordt gebruikt.';

  @override
  String get playerPip => 'Beeld-in-beeld';

  @override
  String get playerAutoPip => 'Beeld-in-beeld bij verlaten';

  @override
  String get playerAutoPipDesc =>
      'Blijf afspelen in een klein venster als je de app verlaat';

  @override
  String get playerPipPlay => 'Spelen';

  @override
  String get playerPipPause => 'Pauze';

  @override
  String get playerPipBack => 'Terugspoelen';

  @override
  String get playerPipForward => 'Vooruit';

  @override
  String get playerPipRestore => 'Terug naar de speler';

  @override
  String get playerPipActive => 'Spelen in een klein venster';

  @override
  String get listDateAdded => 'Toegevoegd aan lijst';

  @override
  String get listDateLastWatched => 'Laatst bekeken';

  @override
  String playerAutoPlaying(String title) {
    return 'Hierna: $title…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Kon de shaders niet installeren: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Hoofdstuk $number';
  }

  @override
  String get playerPerTitle => 'Alleen voor deze titel';

  @override
  String get playerPerTitleDesc =>
      'Bewaar deze opties voor deze titel en laat je standaardinstellingen met rust';

  @override
  String get playerSwapGestures => 'Veegkanten omwisselen';

  @override
  String get playerSwapGesturesDesc => 'Helderheid links en volume rechts';

  @override
  String get playerOpenBig => 'Openen in grote weergave';

  @override
  String get playerOpenBigDesc =>
      'Start de speler op volledig scherm in plaats van met de afleveringenlijst';

  @override
  String get playerPauseOnBlur => 'Pauzeren bij verlies van focus';

  @override
  String get playerPauseOnBlurDesc =>
      'Pauzeert zolang de app bedekt is, zoals door het meldingenpaneel, en gaat verder als je terugkomt';

  @override
  String get playerAudioOutput => 'Audio-uitvoer';

  @override
  String get fontAppDefault => 'App-lettertype';

  @override
  String get fontImport => 'Lettertype importeren';

  @override
  String get fontSample => 'Pa\'s wijze lynx bezag vroom het fikse aquaduct';

  @override
  String get playerSubtitleDelay => 'Ondertitelvertraging';

  @override
  String get playerAudioDelay => 'Audiovertraging';

  @override
  String get playerDelayReset => 'Resetten';

  @override
  String get playerOnlineSubtitles => 'Online ondertitels';

  @override
  String get playerOnlineSearchHint => 'Titel en aflevering';

  @override
  String get playerOnlineNone => 'Geen ondertitels gevonden';

  @override
  String playerOnlineFailed(String error) {
    return 'Ondertitels zoeken mislukt: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Kon deze ondertitel niet downloaden: $error';
  }

  @override
  String get playerOnlineMatch => 'Past bij dit bestand';

  @override
  String get playerOnlineEpisode => 'Afleveringsmatch';

  @override
  String playerOnlineDownloads(int count) {
    return '$count downloads';
  }

  @override
  String get playerSeekPreview => 'Zoekvoorbeeld';

  @override
  String get playerSeekPreviewDesc =>
      'Toon een klein framevoorbeeld boven de zoekbalk tijdens het scrubben. Opent een tweede decoder met lage resolutie, dus dit kost extra data bij streams.';

  @override
  String get playerSettingsChip => 'Instellingen';

  @override
  String get playerAudioDevice => 'Audioapparaat';

  @override
  String get settingsDownloads => 'Downloads';

  @override
  String get settingsDownloadsDesc =>
      'Offline afleveringen, wachtrij en offlinemodus';

  @override
  String get downloadsTitle => 'Downloads';

  @override
  String get widgetContinue => 'Ga door';

  @override
  String get widgetReleases => 'Binnenkort vrijgeven';

  @override
  String get widgetMore => 'Ook in uitvoering';

  @override
  String get widgetNothing => 'Er is nog niets om verder te gaan';

  @override
  String get downloadStorageTitle => 'Opslag';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 downloaden',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size al bekeken of gelezen';
  }

  @override
  String get downloadFreeUp => 'Maak ruimte vrij';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count heeft downloads bekeken',
      one: '1 bekeken downloaden',
    );
    return 'Verwijderen $_temp0 en gratis $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Bevrijd $size';
  }

  @override
  String get downloadDeleteWatched => 'Bekeken verwijderen';

  @override
  String get downloadDeleteAll => 'Alles verwijderen';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Elke download van $title verwijderen?';
  }

  @override
  String get downloadNothingWatched =>
      'Niets dat je hebt voltooid, wordt gedownload';

  @override
  String get downloadStorageEmpty =>
      'Er zijn geen downloads die ruimte gebruiken';

  @override
  String get downloadsOpenDesc =>
      'Bekijk de wachtrij en alles wat op dit apparaat is opgeslagen';

  @override
  String get downloadTitle => 'Downloaden';

  @override
  String get downloadMetaOnly => 'Alleen metadata';

  @override
  String get downloadMetaFailed => 'Kan de titelmap niet maken';

  @override
  String downloadMetaSaved(String path) {
    return 'Opgeslagen. Plaats uw bestanden in $path';
  }

  @override
  String get downloadAlready => 'Al gedownload of in de wachtrij';

  @override
  String get downloadPickStream => 'Welke stream downloaden?';

  @override
  String get downloadPickSubtitle => 'Welke ondertitel downloaden?';

  @override
  String get downloadPickAudio => 'Welk audiospoor downloaden?';

  @override
  String get downloadNoAudio => 'Geen extra audio';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Geen ondertitel';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Deze stream is een HLS-playlist. Downloaden vereist de FFmpeg-add-on.';

  @override
  String get downloadSourceMissing =>
      'De bron voor deze aflevering is niet geïnstalleerd';

  @override
  String get downloadDashDrm => 'Deze stream is DRM-beveiligd';

  @override
  String get downloadDashNoVideo => 'Het DASH-manifest bevat geen video';

  @override
  String get downloadWaitingConnection => 'Wachten op verbinding';

  @override
  String get downloadSubtitles => 'Ondertitels';

  @override
  String get downloadDownloaded => 'Gedownload';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Download verwijderen';

  @override
  String get downloadCancel => 'Annuleren';

  @override
  String get downloadPause => 'Pauzeren';

  @override
  String get downloadPaused => 'Gepauzeerd';

  @override
  String get downloadResume => 'Hervatten';

  @override
  String get downloadPauseAll => 'Alles pauzeren';

  @override
  String get downloadResumeAll => 'Alles hervatten';

  @override
  String get downloadQueuedState => 'Wachten in de wachtrij';

  @override
  String get downloadResolving => 'Stream ophalen…';

  @override
  String get downloadUsedFallback =>
      'Geen passende stream, de eerste is gebruikt';

  @override
  String get downloadTabQueue => 'Wachtrij';

  @override
  String get downloadTabDone => 'Klaar';

  @override
  String get downloadTabFailed => 'Mislukt';

  @override
  String get downloadEmptyQueue => 'Er wordt niks gedownload';

  @override
  String get downloadEmptyDone => 'Nog niks gedownload';

  @override
  String get downloadEmptyFailed => 'Geen mislukte downloads';

  @override
  String get downloadNext => 'Volgende aflevering';

  @override
  String downloadNextN(int count) {
    return 'Volgende $count afleveringen';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Alles ongekeken ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Dit bereik ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Alle afleveringen ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count afleveringen in de wachtrij',
      one: '1 aflevering in de wachtrij',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name gedownload';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name downloaden mislukt';
  }

  @override
  String downloadStorage(String size) {
    return '$size in gebruik door downloads';
  }

  @override
  String get downloadQueueHeader => 'Wachtrij';

  @override
  String get downloadParallel => 'Gelijktijdige downloads';

  @override
  String get downloadParallelDesc =>
      'Download één per keer of meerdere tegelijk';

  @override
  String get downloadOneByOne => 'Één voor één';

  @override
  String get downloadNotifications => 'Downloadmeldingen';

  @override
  String get downloadNotificationsDesc =>
      'Live voortgang waar het systeem dat ondersteunt, anders een bericht als een download klaar is';

  @override
  String get downloadNotifyLive => 'Leef';

  @override
  String get downloadNotifyDone => 'Als het klaar is';

  @override
  String get downloadNotifyOff => 'Uit';

  @override
  String get downloadInfoFile => 'Schrijf een infobestand naast elke download';

  @override
  String get downloadInfoFileDesc =>
      'Slaat stream, kwaliteit, ondertitel en overslaantijden op als een klein .json-bestand';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto gaat alleen offline als de app zonder verbinding start. Altijd blijft offline tot je het wijzigt.';

  @override
  String get offlineModeOff => 'Uit';

  @override
  String get offlineModeAlways => 'Altijd';

  @override
  String get offlineModeOn =>
      'Offlinemodus staat aan. Wijzigingen worden hier opgeslagen en verstuurd zodra je weer online bent.';

  @override
  String get offlineSaved =>
      'Op dit apparaat opgeslagen, wordt gesynchroniseerd zodra je online bent';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wijzigingen gesynchroniseerd',
      one: '1 wijziging gesynchroniseerd',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wijzigingen wachten op synchronisatie',
      one: '1 wijziging wacht op synchronisatie',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Wijzigingen wachten op synchronisatie';

  @override
  String get offlinePendingNone => 'Niks in de wacht';

  @override
  String get offlineSyncNow => 'Nu synchroniseren';

  @override
  String get offlineDiscard => 'Weggooien';

  @override
  String get downloadNotOffline =>
      'Deze aflevering is niet gedownload, dus niet offline beschikbaar';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Volgend hoofdstuk';

  @override
  String downloadNextChapters(int count) {
    return 'Volgende $count hoofdstukken';
  }

  @override
  String downloadUnread(int count) {
    return 'Alles ongelezen ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Alle hoofdstukken ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total pagina\'s';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count pagina\'s';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg-add-on nodig';

  @override
  String get downloadFfmpegBody =>
      'Deze stream is een HLS-playlist. De FFmpeg-add-on voegt de stukjes samen tot één mp4-bestand. Zonder blijven de stukjes in een afleveringsmap staan en wordt er vandaar afgespeeld.';

  @override
  String get downloadFfmpegInstall => 'Installeren';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg installeren, dit kan even duren…';

  @override
  String get downloadFinishing => 'De stukjes samenvoegen tot één bestand…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total delen';
  }

  @override
  String get downloadTorrentNoFile =>
      'De torrent heeft geen videobestand om te downloaden';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items downloaden',
      one: '1 item downloaden',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Bekeken downloads verwijderen';

  @override
  String get downloadAutoDeleteDesc =>
      'Verwijdert een download zodra je voortgang die aflevering of dat hoofdstuk bereikt';

  @override
  String get downloadConnections => 'Verbindingen per download';

  @override
  String get downloadConnectionsDesc =>
      'Splitst een groot bestand in delen die tegelijk worden opgehaald. Sommige servers beperken dit.';

  @override
  String get downloadPlayChoice => 'Afspelen vanaf';

  @override
  String get downloadPlayLocalDesc =>
      'Het bestand dat op dit apparaat is opgeslagen';

  @override
  String get downloadPlayStream => 'Online streamen';

  @override
  String get downloadPlayStreamDesc => 'Laad de aflevering vanuit de bron';

  @override
  String get offlineFeedTitle => 'Gedownload op dit apparaat';

  @override
  String get offlineFeedEmpty =>
      'Download iets terwijl je online bent en het verschijnt hier';

  @override
  String get offlineEnabled => 'Offlinemodus staat aan';

  @override
  String get offlineDisabled => 'Offlinemodus staat uit';

  @override
  String get downloadReadChoice => 'Lezen vanaf';

  @override
  String get downloadReadLocalDesc =>
      'De pagina\'s die op dit apparaat zijn opgeslagen';

  @override
  String get downloadReadOnline => 'Online lezen';

  @override
  String get downloadReadOnlineDesc => 'Laad het hoofdstuk vanuit de bron';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name van dit apparaat verwijderen?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Download van $name annuleren? Wat al is gedownload, wordt verwijderd.';
  }

  @override
  String get downloadFfmpegFolder => 'Als map bewaren';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count wijzigingen die nooit zijn verstuurd weggooien? Dit kan niet ongedaan worden gemaakt.',
      one: 'De wijziging die nooit is verstuurd weggooien? Dit kan niet ongedaan worden gemaakt.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wachten op wifi';

  @override
  String get downloadWaitingMetered =>
      'Gepauzeerd op een verbinding met datalimiet';

  @override
  String get downloadWifiOnly => 'Alleen wifi';

  @override
  String get downloadWifiOnlyDesc =>
      'Downloads wachten zolang je mobiele data gebruikt';

  @override
  String get downloadMetered => 'Pauzeren bij verbindingen met datalimiet';

  @override
  String get downloadMeteredDesc =>
      'Wacht ook op wifi die je apparaat als datalimiet markeert';

  @override
  String get downloadSpeedLimit => 'Snelheidslimiet';

  @override
  String get downloadSpeedLimitDesc => 'Begrenst de totale downloadsnelheid';

  @override
  String get downloadUnlimited => 'Onbeperkt';

  @override
  String get downloadMoveToTop => 'Naar boven';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds zaden · $peers soortgenoten';
  }

  @override
  String get downloadTorrentFile => 'Welk bestand?';

  @override
  String get downloadTorrentAuto => 'De aflevering automatisch matchen';

  @override
  String get downloadTorrentLoading => 'De torrent lezen…';

  @override
  String get watchAutoSource => 'Automatisch naar de volgende bron wisselen';

  @override
  String get watchAutoSourceDesc =>
      'Als de bron de titel niet kan vinden of niet laadt, probeer dan de volgende geïnstalleerde bron';

  @override
  String get extensionTest => 'Extensies testen';

  @override
  String get extensionTestCopy => 'Kopieer de fouten en hun logs';

  @override
  String get extensionTestQuery => 'Zoekterm';

  @override
  String get extensionTestRun => 'Uitvoeren';

  @override
  String get extensionTestStop => 'Stoppen';

  @override
  String get extensionTestNone => 'Geen geïnstalleerde extensies van dit type';

  @override
  String get extensionTestNotRun => 'Nog niet getest';

  @override
  String get extensionTestSearch => 'Zoeken';

  @override
  String get extensionTestDetail => 'Details';

  @override
  String get extensionTestUnits => 'Afleveringen / hoofdstukken';

  @override
  String get extensionTestLinks => 'Streams / pagina\'s';

  @override
  String extensionTestFailedAt(String step) {
    return 'Mislukt bij $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done van $total getest · $passed geslaagd · $failed mislukt';
  }

  @override
  String get extensionTestCopyLogs => 'Alles kopiëren met de volledige logs';

  @override
  String get onboardingFeaturesTitle => 'Alles op één plek';

  @override
  String get onboardingFeaturesBody =>
      'Alles wat je bijhoudt, kijkt en leest, zonder te jongleren met apps.';

  @override
  String get onboardingFeatureTrack => 'Alles bijhouden';

  @override
  String get onboardingFeatureTrackDesc =>
      'Lijsten, voortgang en scores op AniList, MyAnimeList, Simkl, Kitsu en MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Kijken en lezen';

  @override
  String get onboardingFeatureWatchDesc =>
      'Installeer extensies en stream anime of lees manga en novels direct in de app.';

  @override
  String get onboardingFeatureOffline => 'Neem het offline mee';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Download afleveringen en hoofdstukken en ga door zonder verbinding.';

  @override
  String get onboardingFeatureSync => 'Houd lijsten gelijk';

  @override
  String get onboardingFeatureSyncDesc =>
      'Spiegel je lijst over services heen, of laat degene die het verst is winnen.';

  @override
  String get onboardingServices => 'Werkt met';

  @override
  String sourceNotifyOn(String source) {
    return 'Je krijgt bericht als $source iets nieuws heeft';
  }

  @override
  String get sourceNotifyOff => 'Vrijgavemeldingen uitgeschakeld';

  @override
  String get sourceNotifyNeedsSource => 'Kies eerst een bron met een match';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Alles ($count) is al uit, niets om op te wachten';
  }

  @override
  String get sourceNotifyTooltipOn => 'Release-meldingen stoppen';

  @override
  String get sourceNotifyTooltipOff =>
      'Houd mij op de hoogte van nieuwe releases';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Aflevering $number verschijnt op $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Afleveringen $from–$to zijn beschikbaar op $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Hoofdstuk $number verschijnt op $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'De hoofdstukken $from–$to verschijnen op $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titels hebben iets nieuws';
  }

  @override
  String get navSources => 'Bronnen';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Deze bron behoort tot $manager, wat niet de actieve extensieservice is';
  }

  @override
  String get sourceAlertsHeader => 'Vrijgavemeldingen';

  @override
  String get sourceAlertsSwitch => 'Controleer geabonneerde titels';

  @override
  String get sourceAlertsSwitchDesc =>
      'Elke keer dat de app wordt geopend, heb je voor titels de bel aangezet';

  @override
  String get sourceSkipUnstarted =>
      'Sla titels over waar u nog niet aan bent begonnen';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nog niets bekeken of gelezen, maar er bestaan al afleveringen';

  @override
  String get sourceSkipUnseen =>
      'Sla over terwijl je ongeziene afleveringen hebt';

  @override
  String get sourceSkipUnseenDesc =>
      'Je hebt nog steeds vrijgegeven afleveringen die je moet inhalen';

  @override
  String get sourceManage => 'Abonnementen';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titels',
      one: '1 titel',
      zero: 'Geen titels',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Controleer nu';

  @override
  String get sourceCheckNowDesc =>
      'Negeert het schema en de regels voor overslaan';

  @override
  String get sourceChecking => 'Controleren…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titels hebben iets nieuws',
      one: '1 titel heeft iets nieuws',
      zero: 'Niets nieuws',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Nog geen abonnementen';

  @override
  String get sourceEmptyMessage =>
      'Tik op de bel boven de afleveringen van een titel om op de hoogte te blijven van nieuwe afleveringen';

  @override
  String get sourceAll => 'Allemaal';

  @override
  String sourceInactive(String manager) {
    return 'Inactief: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source is niet geïnstalleerd in deze extensieservice';
  }

  @override
  String get sourceUnreachable => 'Bron reageert niet';

  @override
  String get sourceFinished => 'Klaar';

  @override
  String get sourceSkippedCompleted => 'Overgeslagen: voltooid';

  @override
  String get sourceSkippedUnstarted => 'Overgeslagen: niet gestart';

  @override
  String get sourceSkippedUnseen => 'Overgeslagen: ongeziene afleveringen';

  @override
  String get sourceWaiting => 'Wachten op de volgende uitgave';

  @override
  String sourceNextCheck(String when) {
    return 'Volgende controle $when';
  }

  @override
  String get sourceSoon => 'binnenkort';

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
    return 'Laatste: $number';
  }

  @override
  String get sourceMute => 'Dempen';

  @override
  String get sourceUnmute => 'Dempen opheffen';

  @override
  String get sourceMuted => 'Gedempt';

  @override
  String get sourceUnsubscribe => 'Afmelden';

  @override
  String get sourcePickAnother => 'Kies een andere bron';

  @override
  String get sourceOpenExtensions => 'Extensies openen';

  @override
  String get sourceNoticesEmpty => 'Nog geen release-aankondigingen';

  @override
  String get sourceNoticesEmptyMessage =>
      'Nieuwe afleveringen en hoofdstukken van titels waarop je geabonneerd bent, worden hier weergegeven';

  @override
  String get sourceOpenTitle => 'Titel openen';

  @override
  String get extensionsLoading => 'Extensies laden…';

  @override
  String get updateWhatsNew => 'Wat is er nieuw';

  @override
  String get updateLater => 'Later';

  @override
  String get updateSkipVersion => 'Sla deze versie over';

  @override
  String get updatePreparing => 'Voorbereiden…';

  @override
  String get updateDownloading => 'Downloaden';

  @override
  String get updateInstalling => 'Installeren…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done van $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/sec';
  }

  @override
  String updateReleased(String date) {
    return 'Vrijgegeven $date';
  }

  @override
  String get updateNoAsset =>
      'Deze release heeft geen download voor uw apparaat';

  @override
  String get updateUpToDate => 'Je gebruikt de nieuwste versie';

  @override
  String get updateIosHint =>
      'iOS-builds staan niet in de App Store. Pak de .ipa van de releasepagina en sideload deze met AltStore of SideStore';

  @override
  String get updateOpenedBrowser => 'Controleer uw browser';

  @override
  String get updateTryAgain => 'Probeer het opnieuw';

  @override
  String get settingsNotifications => 'Meldingen';

  @override
  String get settingsNotificationsDesc =>
      'Waarschuwingen voor je lijsten, nieuwe afleveringen en hoofdstukken, en reacties op reacties';

  @override
  String get settingsAboutUpdates => 'Over & updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App-updates, versie, logs, links en ondersteuning';

  @override
  String get settingsGroupAccount => 'Jouw rekening';

  @override
  String get settingsGroupContent => 'Inhoud';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Speler, ondertitels, overslaan, afleveringslijst en afleveringsdetails';

  @override
  String get settingsMangaDesc =>
      'Lezermodus, bedieningselementen, weergave en hoofdstuktracking';

  @override
  String get settingsNovelDesc =>
      'Teksten, pagina\'s omslaan, vertalen en voorlezen';

  @override
  String get settingsLocalPlay => 'Lokaal spelen';

  @override
  String get settingsLocalPlayDesc =>
      'Speel bestanden, mappen, netwerkstreams en torrents af of open een boek';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Boeken';

  @override
  String get settingsWatchSections => 'Secties';

  @override
  String get settingsSectionLists => 'Afleverings- en hoofdstuklijsten';

  @override
  String get settingsSectionProgress => 'Voortgang volgen';

  @override
  String get updateChannelDesc =>
      'Stabiel is de geteste release. Pre-release en Alpha krijgen eerder nieuwe functies, maar kunnen kapot gaan';

  @override
  String get checkNowDesc => 'Zoek meteen naar een nieuwere versie';

  @override
  String get generalSectionBasics => 'Taal & gedrag';

  @override
  String get generalSectionSecurity => 'Beveiliging';

  @override
  String get generalSectionPrivacy => 'Privacy';

  @override
  String notificationsOtherService(String service) {
    return 'Schakel over naar $service om dit te openen';
  }

  @override
  String get secPlayerPlayback =>
      'Standaardsnelheid, automatisch afspelen, video-fit, oriëntatie en beeld-in-beeld';

  @override
  String get secPlayerSkip =>
      'Sla openingen, eindes en samenvattingen automatisch over';

  @override
  String get secPlayerControls =>
      'Veeg, houd vast en tik op gebaren en zoek een voorbeeld';

  @override
  String get secPlayerSubtitles =>
      'Talen, uiterlijk en weergave van ondertitels';

  @override
  String get secPlayerShaders => 'Anime-opschaling en je eigen shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, video- en audio-uitgang, buffering. Wijzig deze alleen als er problemen optreden bij het afspelen';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts en geavanceerde afstemming';

  @override
  String get secAnimeList => 'Filler-afleveringen en niet-bekeken thumbnails';

  @override
  String get secProgress =>
      'Wanneer uw bekeken of gelezen voortgang in uw lijst wordt opgeslagen';

  @override
  String get secAnimeDetails =>
      'Waar titels, thumbnails en samenvattingen van afleveringen vandaan komen';

  @override
  String get secReaderReading =>
      'Leesmodus, pagina\'s omslaan, zoomen en volgend hoofdstuk';

  @override
  String get secReaderControls =>
      'Tikzones, volumetoetsen en automatisch scrollen';

  @override
  String get secReaderDisplay =>
      'Achtergrond, helderheid, volledig scherm en paginanummer';

  @override
  String get secNovelText =>
      'Lettertype, grootte, spatiëring, marges en pagina\'s omslaan';

  @override
  String get secNovelTranslate => 'Vertaal hoofdstukken terwijl u leest';

  @override
  String get secNovelSpeech => 'Stem, snelheid en toonhoogte voor voorlezen';

  @override
  String get secNotifyAbout =>
      'Kies welke soorten activiteiten een waarschuwing sturen';

  @override
  String get layoutTitle => 'Indeling';

  @override
  String get layoutDesc => 'Kies, verplaats en verberg de knoppen op de balken';

  @override
  String get layoutHint =>
      'Versleep een knop om deze te verplaatsen (eerst vasthouden op een aanraakscherm). Tik op één om deze te knippen, verplaatsen of verbergen';

  @override
  String layoutDropInto(String zone) {
    return 'Kom langs: $zone';
  }

  @override
  String layoutCutting(String name) {
    return '$name verplaatsen. Druk op een plakknop om deze te plaatsen';
  }

  @override
  String get layoutTitleFixed => 'Titel';

  @override
  String get layoutZoneTopStart => 'Bovenste balk, vóór de titel';

  @override
  String get layoutZoneTopEnd => 'Bovenste balk, na de titel';

  @override
  String get layoutZoneBottomStart => 'Onderste balk, links';

  @override
  String get layoutZoneBottomEnd => 'Onderste balk, rechts';

  @override
  String get layoutZoneSecondRow => 'Verborgen: tweede rij in normaal zicht';

  @override
  String get layoutZoneOverflow => 'Verborgen: in het meer-menu';

  @override
  String get layoutEmptyZone => 'Zet hier knoppen neer';

  @override
  String get layoutCut => 'Knippen';

  @override
  String get layoutPaste => 'Plak hier';

  @override
  String get layoutHide => 'Verbergen';

  @override
  String layoutMoveTo(String zone) {
    return 'Verplaatsen naar $zone';
  }

  @override
  String get layoutReset => 'Resetten naar standaard';

  @override
  String get layoutMore => 'Meer';

  @override
  String get sourceWhyAction => 'Waarom geen waarschuwing?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Laatst gecontroleerd';

  @override
  String get sourceWhyNever => 'Nog niet';

  @override
  String get sourceWhyNextCheck => 'Volgende controle';

  @override
  String get sourceWhyNewest => 'Nieuwste bij de bron';

  @override
  String get sourceWhyProgress => 'Jouw voortgang';

  @override
  String get sourceWhyListStatus => 'Lijststatus';

  @override
  String get sourceWhyFailures => 'Mislukte controles op rij';

  @override
  String get sourceWhyLastRelease => 'Laatst nieuwe release gezien';

  @override
  String get sourceWhyVerdictNew =>
      'Hier verschijnt een nieuwe release zodra de bron deze vermeldt en de volgende controle wordt uitgevoerd.';

  @override
  String get sourceWhyVerdictAhead =>
      'De bron loopt al voor op jouw voortgang, dus je hebt er één keer over gehoord. Lees of kijk ernaar om de volgende melding te ontvangen.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Deze titel wordt overgeslagen door de bovenstaande regels. Wijzig ze in de meldingsinstellingen of gebruik Nu controleren om het toch uit te voeren.';

  @override
  String get sourceWhyVerdictBroken =>
      'De bron is onbereikbaar of is verwijderd, er wordt dus niets gecontroleerd.';

  @override
  String get sourceWhyVerdictMuted => 'Dit abonnement is gedempt.';

  @override
  String get externalPlayerTitle => 'Open stream elders';

  @override
  String get externalCopyUrl => 'Kopieer de streamlink';

  @override
  String get externalCopied => 'Streamlink gekopieerd';

  @override
  String get externalChooser => 'Openen in een andere app';

  @override
  String get externalVlc => 'Openen in VLC';

  @override
  String get externalMpv => 'Openen in mpv';

  @override
  String get externalWebVideoCast => 'Webvideocast';

  @override
  String get castViaAppHint => 'Stuur de stream naar de Web Video Cast-app';

  @override
  String get externalFailed =>
      'Kan de stream niet openen. Is de speler geïnstalleerd?';

  @override
  String get addonInstalled => 'Geïnstalleerd';

  @override
  String get loadFailedActivity => 'Kan activiteit niet laden';

  @override
  String get loadFailedFavourites =>
      'Kan favorieten niet laden. Opnieuw proberen';

  @override
  String get loadFailedStats => 'Kan statistieken niet laden';

  @override
  String get loadFailedReplies => 'Kan antwoorden niet laden';

  @override
  String get cantBeUndone => 'Dit kan niet ongedaan worden gemaakt.';

  @override
  String get searchTags => 'Tags zoeken';

  @override
  String get spoilerTapToView => 'Spoiler, tik om te bekijken';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Iemand';

  @override
  String get notificationATitle => 'een titel';

  @override
  String get notificationAddedDetail => 'Werd toegevoegd aan AniList';

  @override
  String get updateNoReleases => 'Geen releases gevonden';

  @override
  String get updateInvalidResponse => 'Ongeldige updatereactie';

  @override
  String get commentsRateLimited => 'Tarief beperkt';

  @override
  String get commentsConnectFailed => 'Kan geen verbinding maken';

  @override
  String get dnsNoRecords => 'Er zijn geen A-records geretourneerd';

  @override
  String get importTokenRejected => 'Token afgewezen';

  @override
  String get developerRoleLead => 'Hoofdontwikkelaar';

  @override
  String get developerRoleModerator => 'Onenigheidsmoderator';

  @override
  String extensionManagerTitle(String type) {
    return '';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensies';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name instellingen';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name biedt geen instellingen.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Aflevering $episode van $title uitgezonden';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Aflevering $episode uitgezonden';
  }

  @override
  String notificationAdded(String title) {
    return '$title is toegevoegd aan AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Updateserver kan die release niet vinden: $message';
  }

  @override
  String get installStepJre => 'Java-runtime';

  @override
  String get installStepCore => 'Runtime-kern';

  @override
  String installStepsProgress(int current, int total) {
    return 'Stap $current van $total';
  }

  @override
  String get stepWaiting => 'Wachten';

  @override
  String get stepChecking => 'Controleren…';

  @override
  String get stepUpToDate => 'Up-to-date';

  @override
  String stepUpToDateWith(String detail) {
    return 'Actueel · $detail';
  }

  @override
  String get stepWillInstall => 'Zal worden geïnstalleerd';

  @override
  String get stepWillUpdate => 'Zal worden bijgewerkt';

  @override
  String stepWillUpdateTo(String version) {
    return 'Wordt bijgewerkt naar $version';
  }

  @override
  String get stepInstalled => 'Geïnstalleerd';

  @override
  String get stepNotNeeded => 'Niet nodig hier';

  @override
  String get stepFailed => 'Mislukt';

  @override
  String stepFailedWith(String reason) {
    return 'Mislukt: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Het draait op de Java-runtime en de gedeelde runtime-kern. Ze worden eerst geïnstalleerd en bijgewerkt als ze zijn gewijzigd.';

  @override
  String get installRuntimeNewer =>
      'De runtime waarop deze manager draait, heeft een update.';

  @override
  String get removeJvmTitle => 'De Java-runtime verwijderen?';

  @override
  String get removeJvmMessage =>
      'Desktopextensiemanagers stoppen met werken totdat deze opnieuw wordt geïnstalleerd. De volgende keer dat u er een installeert of opent, wordt het opnieuw gedownload.';

  @override
  String get runtimePreparing => 'De looptijd voorbereiden…';

  @override
  String get calendarAll => 'Allemaal';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Openen in browser (Cloudflare-controle)';

  @override
  String get badgeBoardHint =>
      'Sleep een badge naar een hoek van de eerste kaart, of sleep een badge die er al op staat om deze te verplaatsen. Badges wisselen van plaats, zodat ze elkaar nooit overlappen. Tik hieronder op een badge om deze in of uit te schakelen.';

  @override
  String get statusAuto => 'Automatisch';

  @override
  String get unreadCounter => 'Ongelezen teller';

  @override
  String get unreadCounterDesc =>
      'Laat op posters zien hoeveel afleveringen of hoofdstukken er nog over zijn';

  @override
  String get settingsShortcuts => 'Sneltoetsen';

  @override
  String get settingsShortcutsDesc =>
      'Elke sleutel bekijken, wijzigen en uitschakelen';

  @override
  String get shortcutGroupApp => 'App';

  @override
  String get shortcutGroupPlayer => 'Videospeler';

  @override
  String get shortcutGroupReader => 'Lezer';

  @override
  String get shortcutsEnableApp => 'App-snelkoppelingen';

  @override
  String get shortcutsEnablePlayer => 'Snelkoppelingen voor spelers';

  @override
  String get shortcutsEnableReader => 'Snelkoppelingen voor lezers';

  @override
  String get shortcutsEnableDesc =>
      'Schakel elke toets in deze groep in of uit';

  @override
  String get shortcutNotSet => 'Niet ingesteld';

  @override
  String get shortcutAddKey => 'Voeg een sleutel toe';

  @override
  String get shortcutResetOne => 'Resetten naar standaard';

  @override
  String get shortcutClearKeys => 'Verwijder alle sleutels';

  @override
  String get shortcutResetAll => 'Reset alle snelkoppelingen';

  @override
  String get shortcutResetAllDesc =>
      'Zet elke sleutel terug naar de standaardwaarde';

  @override
  String get shortcutPress => 'Druk op de gewenste toets of combinatie';

  @override
  String get shortcutPressHint =>
      'Elke combinatie kan slechts tot één actie behoren, dus als u er één neemt, wordt deze verplaatst.';

  @override
  String get shortcutSeekPercent => 'Ga naar een punt in de video';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Ga terug';

  @override
  String get shortcutAppFullscreen => 'Schakel volledig scherm in';

  @override
  String get shortcutAppGlass => 'Schakel de glasmodus in';

  @override
  String get shortcutAppMaterialYou => 'Schakel materiaal jij in';

  @override
  String get shortcutAppDark => 'Schakel de donkere modus in';

  @override
  String get shortcutAppOled => 'Schakel OLED zwart in';

  @override
  String get shortcutAppSearch => 'Zoeken openen';

  @override
  String get shortcutAppSettings => 'Instellingen openen';

  @override
  String get shortcutAppDownloads => 'Downloads openen';

  @override
  String get shortcutAppNotifications => 'Meldingen openen';

  @override
  String get shortcutAppIncognito => 'Schakel incognito in';

  @override
  String get shortcutAppShortcuts => 'Sneltoetsen weergeven';

  @override
  String get shortcutPlayerPlayPause => 'Afspelen of pauzeren';

  @override
  String get shortcutPlayerSeekForward => 'Zoek vooruit';

  @override
  String get shortcutPlayerSeekBack => 'Zoek terug';

  @override
  String get shortcutPlayerSeekForwardLong => 'Zoek 30 seconden vooruit';

  @override
  String get shortcutPlayerSeekBackLong => 'Zoek 30 seconden terug';

  @override
  String get shortcutPlayerFrameForward => 'Volgende frame';

  @override
  String get shortcutPlayerFrameBack => 'Vorige frame';

  @override
  String get shortcutPlayerVolumeUp => 'Volume omhoog';

  @override
  String get shortcutPlayerVolumeDown => 'Volume lager';

  @override
  String get shortcutPlayerMute => 'Dempen';

  @override
  String get shortcutPlayerFullscreen => 'Volledig scherm';

  @override
  String get shortcutPlayerNext => 'Volgende aflevering';

  @override
  String get shortcutPlayerPrevious => 'Vorige aflevering';

  @override
  String get shortcutPlayerSkip => 'Sla de intro of het einde over';

  @override
  String get shortcutPlayerPanel => 'Afleveringslijst';

  @override
  String get shortcutPlayerSpeedUp => 'Sneller afspelen';

  @override
  String get shortcutPlayerSpeedDown => 'Langzamer afspelen';

  @override
  String get shortcutPlayerSpeedReset => 'Normale snelheid';

  @override
  String get shortcutPlayerSubtitleToggle => 'Ondertiteling aan of uit';

  @override
  String get shortcutPlayerSubtitleCycle => 'Volgende ondertiteltrack';

  @override
  String get shortcutPlayerAudioCycle => 'Volgende audiotrack';

  @override
  String get shortcutPlayerStreamCycle => 'Volgende stroom';

  @override
  String get shortcutPlayerFit => 'Videopasvorm wijzigen';

  @override
  String get shortcutReaderRight => 'Pagina naar rechts';

  @override
  String get shortcutReaderLeft => 'Pagina naar links';

  @override
  String get shortcutReaderNextPage => 'Volgende pagina';

  @override
  String get shortcutReaderPreviousPage => 'Vorige pagina';

  @override
  String get shortcutReaderControls => 'Toon of verberg besturingselementen';

  @override
  String get shortcutReaderNextChapter => 'Volgend hoofdstuk';

  @override
  String get shortcutReaderPreviousChapter => 'Vorig hoofdstuk';

  @override
  String shortcutTaken(String action) {
    return 'Overgenomen van $action';
  }

  @override
  String get incognitoTurnedOn => 'Incognitomodus ingeschakeld';

  @override
  String get incognitoTurnedOff => 'Incognitomodus uitgeschakeld';

  @override
  String get onHoldAnime => 'Anime in de wacht';

  @override
  String get onHoldManga => 'Manga in de wacht';

  @override
  String get droppedAnime => 'Anime laten vallen';

  @override
  String get droppedManga => 'Manga laten vallen';

  @override
  String get generalSectionDesktop => 'Bureaublad';

  @override
  String get closeAction => 'Wanneer het raam gesloten is';

  @override
  String get closeActionQuit => 'Sluit de app';

  @override
  String get closeActionWhenBusy =>
      'Blijf in de lade rennen terwijl er iets actief is';

  @override
  String get closeActionAlways => 'Blijf altijd in de lade draaien';

  @override
  String get closeActionNoTray =>
      'Het systeemvak is hier niet beschikbaar, dus de app wordt afgesloten wanneer deze wordt gesloten';

  @override
  String get gamepadNav => 'Gamepad-navigatie';

  @override
  String get gamepadNavDesc =>
      'Beweeg door de app en bestuur de speler met een gamecontroller';

  @override
  String get trayShow => 'Laat Dartotsu zien';

  @override
  String get trayQuit => 'Stoppen';

  @override
  String get trayIdle => 'Er loopt niets';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artikelen downloaden',
      one: '$count item downloaden',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Uw lijsten synchroniseren';

  @override
  String get trayUpdating => 'De app bijwerken';

  @override
  String get trayPlaying => 'Spelen in een klein venster';

  @override
  String get traySearch => 'Zoeken';

  @override
  String get trayPauseDownloads => 'Pauzeer downloads';

  @override
  String get trayResumeDownloads => 'Hervat downloads';

  @override
  String get playerDownloadTitle => 'De speler downloaden';

  @override
  String get playerDownloadBody =>
      'Dartotsu haalt zijn video-engine één keer op. Het afspelen begint zodra het klaar is.';

  @override
  String get playerDownloadStarting => 'Het downloaden starten…';

  @override
  String get playerDownloadFailedTitle => 'Kan de speler niet ophalen';

  @override
  String get playerDownloadFailedBody =>
      'Controleer uw verbinding en probeer het opnieuw. De download gaat verder waar hij gestopt was.';

  @override
  String get playerDownloadRetry => 'Probeer het opnieuw';

  @override
  String get playerDownloadCopy => 'Kopieer gegevens';

  @override
  String get removePlayerTitle => 'De speler verwijderen?';

  @override
  String get removePlayerMessage =>
      'Video\'s kunnen pas worden afgespeeld nadat de speler opnieuw is gedownload.';

  @override
  String get trailerLoading => 'De aanhangwagen laden…';

  @override
  String get trailerFailed =>
      'Kon de trailer hier niet afspelen, omdat deze in de browser werd geopend';
}
