// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Die NEUE beste App zum\nTracken von Anime & Manga';

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
  String get loadMore => 'Mehr laden';

  @override
  String get login => 'Anmelden';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get getStarted => 'Los geht\'s';

  @override
  String get loginWithToken => 'Mit Token anmelden';

  @override
  String get pasteTokenHint => 'Füge deinen Zugriffstoken ein';

  @override
  String loginTo(String service) {
    return 'Bei $service anmelden';
  }

  @override
  String get settings => 'Einstellungen';

  @override
  String get account => 'Konto';

  @override
  String get about => 'Über';

  @override
  String get language => 'Sprache';

  @override
  String get animationSpeed => 'Animationen';

  @override
  String get animationSpeedDesc =>
      'Tempo von Übergängen und Eingangseffekten in der ganzen App';

  @override
  String get animationSpeedOff => 'Aus';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Erweiterungen',
      one: 'Erweiterung',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Unbekannte Quelle';

  @override
  String get install => 'Installieren';

  @override
  String get update => 'Aktualisieren';

  @override
  String get uninstall => 'Deinstallieren';

  @override
  String get updateInstallCancelled =>
      'Installation abgebrochen. Wenn Android meldet, dass die App mit der installierten kollidiert, passt die Signatur nicht: Deinstalliere erst die aktuelle Version und installiere dann das Update';

  @override
  String updateInstallFailed(String error) {
    return 'Update fehlgeschlagen: $error';
  }

  @override
  String get appLock => 'App-Sperre';

  @override
  String get appLockDesc =>
      'Fragt nach einem Code, wenn die App startet oder nach einer Weile wieder geöffnet wird';

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
  String get appLockUnlock => 'Gib deinen Code ein';

  @override
  String get appLockWrong => 'Falscher Code';

  @override
  String appLockWait(String seconds) {
    return 'Zu viele Versuche, warte $seconds s';
  }

  @override
  String get appLockNew => 'Wähl einen Code';

  @override
  String get appLockNewHint => '4 bis 8 Ziffern';

  @override
  String get appLockConfirm => 'Gib ihn nochmal ein';

  @override
  String get appLockMismatch => 'Die Codes stimmen nicht überein';

  @override
  String get appLockOn => 'Code gesetzt';

  @override
  String get appLockRemoveTitle =>
      'Gib deinen Code ein, um die Sperre auszuschalten';

  @override
  String get installFailed => 'Installation fehlgeschlagen';

  @override
  String get updateFailed => 'Update fehlgeschlagen';

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
  String get noSourceSettings => 'Die Quelle hat keine Einstellungen';

  @override
  String get addPluginRepository => 'Plugin-Repository hinzufügen';

  @override
  String get pluginIndexUrlHint => 'URL des Plugin-Index';

  @override
  String get addRepository => 'Repository hinzufügen';

  @override
  String get pluginRepoUpdated => 'Plugin-Repository aktualisiert';

  @override
  String get pluginRepoUpdateFailed =>
      'Plugin-Repository konnte nicht aktualisiert werden';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get save => 'Speichern';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get clear => 'Leeren';

  @override
  String get test => 'Testen';

  @override
  String get testing => 'Teste…';

  @override
  String get resolving => 'Löse auf…';

  @override
  String get none => 'Keine';

  @override
  String get selectMediaService => 'Mediendienst auswählen';

  @override
  String get pickColor => 'Wähle eine Farbe';

  @override
  String get colorPickerCustom => 'Benutzerdefiniert';

  @override
  String get colorPickerTransparent => 'Transparent';

  @override
  String get ltr => 'Von links nach rechts';

  @override
  String get searchSettings => 'Einstellungen durchsuchen';

  @override
  String nothingMatches(String query) {
    return 'Nichts passt zu \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return '$category durchsuchen';
  }

  @override
  String get settingsAppearance => 'Darstellung';

  @override
  String get settingsAppearanceDesc => 'Design, Farben, Glasmodus';

  @override
  String get settingsGeneral => 'Allgemein';

  @override
  String get settingsGeneralDesc => 'Sprache und Verhalten';

  @override
  String get settingsNetwork => 'Netzwerk';

  @override
  String get settingsNetworkDesc => 'User-Agent, Zertifikate, DNS und Proxy';

  @override
  String get settingsAccountDesc => 'Tracking-Dienst und Anmeldung';

  @override
  String get settingsUpdates => 'Updates';

  @override
  String get amoledBlack => 'AMOLED-Schwarz';

  @override
  String get amoledBlackDesc => 'Rein schwarze Flächen im dunklen Modus';

  @override
  String get glassMode => 'Glasmodus';

  @override
  String get glassModeDesc => 'Milchglas-Optik über deinen Covern';

  @override
  String get shelfFrame => 'Rahmen um Bereiche';

  @override
  String get shelfFrameDesc =>
      'Zeig eine Karte hinter jedem Regal oder lass die Reihen direkt auf der Seite liegen';

  @override
  String get settingsExtensionsDesc =>
      'Quellenmanager, Repositories und Erweiterungsoptionen';

  @override
  String get settingsAddons => 'Add-ons';

  @override
  String get customPath => 'Eigener Speicherpfad';

  @override
  String get customPathDesc =>
      'Wo die App-Daten liegen. Lange drücken zum Zurücksetzen';

  @override
  String get selectDirectory => 'Verzeichnis auswählen';

  @override
  String get differentCacheManager => 'Alternativer Bildcache';

  @override
  String get differentCacheManagerDesc =>
      'Einen anderen Cache-Manager für Bilder nutzen';

  @override
  String get backupAndRestore => 'Backup und Wiederherstellung';

  @override
  String get backupAndRestoreDesc => 'Speichere oder lade deine Einstellungen';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get loadExtensionsIcon => 'Erweiterungs-Icons laden';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Quellen-Icons in den Erweiterungslisten anzeigen';

  @override
  String get sectionStorage => 'Speicher';

  @override
  String get sectionManagers => 'Manager';

  @override
  String get sectionOptions => 'Optionen';

  @override
  String get backupTabBackup => 'Sichern';

  @override
  String get backupTabRestore => 'Wiederherstellen';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$keys Einstellungen in $categories Kategorien';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Letztes Backup $time';
  }

  @override
  String get backupNever => 'Noch kein Backup';

  @override
  String get backupSelectAll => 'Alle auswählen';

  @override
  String get backupClearAll => 'Leeren';

  @override
  String backupKeys(Object count) {
    return '$count Einstellungen';
  }

  @override
  String get backupPassword => 'Passwort (optional)';

  @override
  String get backupPasswordHint =>
      'Leer lassen, um das Standardpasswort zu nutzen';

  @override
  String get backupSensitive => 'Enthält Login-Tokens. Halte die Datei privat';

  @override
  String get backupCreate => 'Backup erstellen';

  @override
  String backupSaved(Object name) {
    return 'Backup gespeichert als $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Backup fehlgeschlagen: $error';
  }

  @override
  String get backupPickFile => 'Backup-Datei auswählen';

  @override
  String get backupPickFileDesc =>
      'Wähle eine .json-Datei, die von Dartotsu erstellt wurde';

  @override
  String get backupChooseAnother => 'Andere Datei wählen';

  @override
  String get backupCreatedAt => 'Erstellt';

  @override
  String get backupAppVersion => 'App-Version';

  @override
  String get backupDevice => 'Gerät';

  @override
  String get backupAccounts => 'Konten';

  @override
  String get backupSize => 'Größe';

  @override
  String get backupEncrypted => 'Passwortgeschützt';

  @override
  String get backupUnlock => 'Entsperren';

  @override
  String get backupWrongPassword =>
      'Die Datei konnte nicht gelesen werden. Prüf das Passwort';

  @override
  String get backupRestoreSelected => 'Auswahl wiederherstellen';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count Einstellungen wiederherstellen? Bestehende Werte in diesen Kategorien werden überschrieben.';
  }

  @override
  String get backupRestored =>
      'Wiederhergestellt. Starte die App neu, damit alles übernommen wird';

  @override
  String backupRestoreFailed(Object error) {
    return 'Wiederherstellung fehlgeschlagen: $error';
  }

  @override
  String get backupSelectOne => 'Wähle mindestens eine Kategorie';

  @override
  String get backupCatTheme => 'Darstellung';

  @override
  String get backupCatThemeDesc =>
      'Design, Farben, Glas, Schriften und Kartenstil';

  @override
  String get backupCatCommon => 'Allgemein';

  @override
  String get backupCatCommonDesc =>
      'Sprache, Speicher, Netzwerk und Erweiterungsoptionen';

  @override
  String get backupCatPlayer => 'Player';

  @override
  String get backupCatPlayerDesc => 'Player-Einstellungen';

  @override
  String get backupCatReader => 'Reader';

  @override
  String get backupCatReaderDesc => 'Reader-Einstellungen';

  @override
  String get backupCatProtected => 'Konten';

  @override
  String get backupCatProtectedDesc => 'Login-Tokens und Anmeldedaten';

  @override
  String get backupCatOther => 'Dienste und Feeds';

  @override
  String get backupCatOtherDesc => 'Feed-Layouts, Listen und Dienstoptionen';

  @override
  String get logFile => 'Logdatei';

  @override
  String get logFileDesc => 'App-Log teilen oder den Pfad unter Linux kopieren';

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
  String get logFileCopied => 'Logpfad kopiert';

  @override
  String get donateSheetTitle => 'Gefällt dir Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu wird von einer einzigen Person entwickelt und gepflegt. Wenn dir die App etwas bringt, unterstütze gern die Entwicklung.';

  @override
  String get donateLater => 'Vielleicht später';

  @override
  String get glassBackground => 'Glas-Hintergrund';

  @override
  String get glassBackgroundDesc =>
      'Dein Profilbanner, solange du keinen Bildlink angibst';

  @override
  String get glassBackgroundHint => 'Bildlink (leer lassen für dein Banner)';

  @override
  String get followCover => 'Cover folgen';

  @override
  String get followCoverDesc =>
      'Die Farben folgen dem Hintergrund und auf Detailseiten dem Cover';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Kartenstil';

  @override
  String get cardStyleDesc => 'Titelplatzierung, Größe, Fortschritt und Badges';

  @override
  String get customFont => 'Schrift';

  @override
  String get customFontDesc =>
      'Standard, eine Datei von deinem Gerät oder Google Fonts';

  @override
  String get customFontError => 'Die Schriftdatei konnte nicht geladen werden';

  @override
  String get googleFontError =>
      'Die Schrift konnte nicht heruntergeladen werden';

  @override
  String get yourFonts => 'Deine Schriften';

  @override
  String get addFontFile => 'Schriftdatei hinzufügen…';

  @override
  String get browseGoogleFonts => 'Google Fonts durchsuchen…';

  @override
  String get searchGoogleFonts => 'Google Fonts suchen';

  @override
  String get defaultFont => 'Standard';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Dynamische Farbe vom System';

  @override
  String get jsonTheme => 'Eigene Theme-Datei';

  @override
  String get jsonThemeDesc =>
      'Live-Farben aus ~/.config/dartotsu/theme.json (ein eigenes Skript oder deine eigenen Änderungen)';

  @override
  String get themeMode => 'Theme-Modus';

  @override
  String get mode => 'Modus';

  @override
  String get trackingService => 'Tracking-Dienst';

  @override
  String get signOut => 'Abmelden';

  @override
  String get signIn => 'Anmelden';

  @override
  String get notSignedIn => 'Nicht angemeldet';

  @override
  String signOutOf(String service) {
    return 'Von $service abmelden?';
  }

  @override
  String get checkForUpdates => 'Nach Updates suchen';

  @override
  String get checkForUpdatesDesc => 'Bei neuem GitHub-Release benachrichtigen';

  @override
  String get updateChannel => 'Update-Kanal';

  @override
  String get channel => 'Kanal';

  @override
  String get stable => 'Stabil';

  @override
  String get preRelease => 'Vorabversion';

  @override
  String get alpha => 'Alpha';

  @override
  String get checkNow => 'Jetzt prüfen';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Standard';

  @override
  String currentlyUsing(String value) {
    return 'Aktuell: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Standard (Cloudflare)';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyProtocol => 'Typ';

  @override
  String get proxyHost => 'Host';

  @override
  String get proxyPort => 'Port';

  @override
  String get proxyUsername => 'Benutzername';

  @override
  String get proxyPassword => 'Passwort';

  @override
  String get optional => 'Optional';

  @override
  String get clearCookies => 'Cookies löschen';

  @override
  String get clearCookiesDesc => 'Alle gespeicherten Cookies entfernen';

  @override
  String notImplementedArea(String area) {
    return '$area – bald verfügbar';
  }

  @override
  String notImplementedService(String service) {
    return '$service unterstützt das noch nicht.';
  }

  @override
  String get couldNotLoadResults => 'Ergebnisse konnten nicht geladen werden';

  @override
  String get updateCheckFailed => 'Updates konnten nicht geprüft werden';

  @override
  String get highRefreshRate => 'Hohe Bildwiederholrate';

  @override
  String get highRefreshRateDesc =>
      'Nutze die höchste Bildwiederholrate, die dein Bildschirm kann';

  @override
  String get imageSave => 'Bild speichern';

  @override
  String imageSavedTo(String path) {
    return 'Gespeichert unter $path';
  }

  @override
  String get imageActionFailed =>
      'Das Bild konnte nicht heruntergeladen werden';

  @override
  String get imageTitleCover => 'Cover';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Banner';

  @override
  String get imageTitleAvatar => 'Profilbild';

  @override
  String get verifyTls => 'Zertifikate prüfen';

  @override
  String get verifyTlsDesc =>
      'Server mit ungültigen HTTPS-Zertifikaten ablehnen. Schalte das nur für eine Quelle mit selbstsigniertem Zertifikat aus';

  @override
  String get clearCookiesConfirm =>
      'Alle gespeicherten Cookies entfernen? Dadurch wirst du eventuell bei manchen Quellen abgemeldet.';

  @override
  String get version => 'Version';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Quellcode, Issues und Releases';

  @override
  String get discordDesc => 'Community und Support';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Entwicklung unterstützen';

  @override
  String get contributors => 'Mitwirkende';

  @override
  String get contributorsDesc => 'Die Leute, die Dartotsu gebaut haben';

  @override
  String get contributorsLoadFailed =>
      'Mitwirkende konnten nicht geladen werden';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Projekte, die auf Dartotsu aufbauen';

  @override
  String get forksEmpty => 'Keine Forks gefunden';

  @override
  String get sectionColors => 'Farben';

  @override
  String get sectionDisplay => 'Anzeige';

  @override
  String get sectionStyle => 'Stil';

  @override
  String get sectionCommunity => 'Community';

  @override
  String get sectionAppInfo => 'App-Info';

  @override
  String get sectionRequests => 'Anfragen';

  @override
  String get sectionDnsProxy => 'DNS & Proxy';

  @override
  String get onboardingBack => 'Zurück';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingPaletteTitle => 'Mach sie zu deiner';

  @override
  String get onboardingPaletteBody =>
      'Such dir eine Palette aus. Alle Akzente, von den Karten bis zum Player, folgen ihr.';

  @override
  String get themeModeAuto => 'Auto';

  @override
  String get themeModeLight => 'Hell';

  @override
  String get themeModeDark => 'Dunkel';

  @override
  String get onboardingSyncTitle => 'Synchronisiere deine Bibliothek';

  @override
  String get onboardingSyncBody =>
      'Melde dich mit AniList an, um deine Listen, deinen Fortschritt und deine Bewertungen mitzunehmen. Oder überspring das und stöbere als Gast.';

  @override
  String get onboardingOpenLinks =>
      'AniList- und Repo-Links in Dartotsu öffnen';

  @override
  String get onboardingPermsTitle => 'Berechtigungen';

  @override
  String get onboardingPermsBody =>
      'Erlaub sie jetzt, damit Downloads, Updates und Benachrichtigungen ohne Unterbrechung funktionieren. Du kannst sie später in den Systemeinstellungen ändern.';

  @override
  String get permNotifications => 'Benachrichtigungen';

  @override
  String get permNotificationsDesc =>
      'Download-Fortschritt, neue Folgen und Antworten';

  @override
  String get permStorage => 'Zugriff auf alle Dateien';

  @override
  String get permStorageDesc =>
      'Downloads im öffentlichen Dartotsu-Ordner speichern';

  @override
  String get permInstall => 'Updates installieren';

  @override
  String get permInstallDesc =>
      'Dartotsu seine eigenen App-Updates installieren lassen';

  @override
  String get permBattery => 'Uneingeschränkter Akku';

  @override
  String get permBatteryDesc =>
      'Lange Downloads im Hintergrund weiterlaufen lassen';

  @override
  String get permGrant => 'Erlauben';

  @override
  String get linkOpenInApp => 'Links in Dartotsu öffnen';

  @override
  String get linkOpenInAppDesc =>
      'AniList- und Repo-Links die App öffnen lassen';

  @override
  String get reviewsTitle => 'Rezensionen';

  @override
  String get reviewsEmpty => 'Noch keine Rezensionen';

  @override
  String get reviewsFailed => 'Rezensionen konnten nicht geladen werden';

  @override
  String get reviewHelpfulQuestion => 'War die Rezension hilfreich?';

  @override
  String get reviewVoteFailed => 'Deine Stimme konnte nicht gespeichert werden';

  @override
  String reviewHelpful(int n, int total) {
    return '$n von $total fanden das hilfreich';
  }

  @override
  String get calendarTitle => 'Sendeplan';

  @override
  String get calendarToday => 'Heute';

  @override
  String get calendarEmpty => 'An diesem Tag läuft nichts';

  @override
  String get calendarFailed => 'Der Sendeplan konnte nicht geladen werden';

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
    return 'Folge $n';
  }

  @override
  String get shareAnalytics => 'Anonyme Nutzungsdaten teilen';

  @override
  String get shareAnalyticsDesc =>
      'Anonyme Nutzerzahlen und Absturzberichte. Kein Konto, keine persönlichen Daten';

  @override
  String get linkOpenAnilist => 'AniList-Links in Dartotsu öffnen';

  @override
  String get linkOpenAnilistDesc =>
      'Aktiviere die Linkverarbeitung, damit anilist.co-Links die App öffnen';

  @override
  String get linkSettingsFailed =>
      'Die Systemeinstellungen konnten nicht geöffnet werden';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Zeig auf deinem Discord-Profil, was du gerade machst. Braucht deinen Discord-Token.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Zeig auf deinem Discord-Profil, was du gerade machst. Die Discord-Desktop-App muss laufen.';

  @override
  String get discordBrowsing => 'Browsing-Aktivität anzeigen';

  @override
  String get discordBrowsingDesc =>
      'Zeig auch den Tab, die Seite oder das Profil, das du dir ansiehst, nicht nur, was du schaust oder liest.';

  @override
  String get discordLookHeader => 'Look der Presence';

  @override
  String get discordActivityType => 'Aktivitätstyp';

  @override
  String get discordActivityTypeDesc =>
      'Wie Discord es formuliert: \"Schaut …\" oder \"Spielt …\". Auto nutzt Schaut für Anime und Spielt für alles andere.';

  @override
  String get discordWatching => 'Schaut';

  @override
  String get discordPlaying => 'Spielt';

  @override
  String get discordCovers => 'Cover anzeigen';

  @override
  String get discordCoversDesc => 'Cover-Bild und Dartotsu-Icon auf der Karte.';

  @override
  String get discordTimer => 'Timer anzeigen';

  @override
  String get discordTimerDesc =>
      'Vergangene oder verbleibende Zeit unter dem Titel.';

  @override
  String get discordButtons => 'Buttons anzeigen';

  @override
  String get discordButtonsDesc =>
      'Die Buttons \"Anime / Manga ansehen\" und \"Dartotsu öffnen\".';

  @override
  String get discordHideTitles => 'Titel verbergen';

  @override
  String get discordHideTitlesDesc =>
      'Ersetzt Anime- und Manganamen (und ihr Cover und ihren Link) durch \"Etwas Privates\".';

  @override
  String get discordConnectionHeader => 'Verbindung';

  @override
  String get listSearchHint => 'Diese Liste durchsuchen';

  @override
  String get listSort => 'Sortieren';

  @override
  String get listFilter => 'Filtern';

  @override
  String get listRandom => 'Zufälliger Titel';

  @override
  String get listReverse => 'Reihenfolge umkehren';

  @override
  String get listSortDefault => 'Listenreihenfolge';

  @override
  String get listSortScore => 'Deine Bewertung';

  @override
  String get listSortTitle => 'Titel';

  @override
  String get listSortUpdated => 'Zuletzt aktualisiert';

  @override
  String get listSortProgress => 'Fortschritt';

  @override
  String get listSortReleased => 'Erscheinungsdatum';

  @override
  String get listSortAverage => 'Durchschnittsbewertung';

  @override
  String get listFilterFormat => 'Format';

  @override
  String get listFilterStatus => 'Status';

  @override
  String get listFilterGenres => 'Genres';

  @override
  String get listFilterClear => 'Filter zurücksetzen';

  @override
  String get listNoMatches => 'Nichts in dieser Liste passt';

  @override
  String get discordLogin => 'Bei Discord anmelden';

  @override
  String get discordToken => 'Discord-Token';

  @override
  String get discordTokenSaved =>
      'Gespeichert. Tippen zum Ersetzen, lang drücken zum Entfernen.';

  @override
  String get discordTokenNotSet => 'Nicht gesetzt. Tippen zum Hinzufügen.';

  @override
  String get discordTokenSavedSnack => 'Discord-Token gespeichert';

  @override
  String get discordTokenRemovedSnack => 'Discord-Token entfernt';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'An · tippen, um das Aussehen zu ändern';

  @override
  String get discordRichPresenceRowOff =>
      'Zeig auf deinem Discord-Profil, was du gerade machst';

  @override
  String get loginCancelled => 'Anmeldung abgebrochen';

  @override
  String get invalidToken => 'Ungültiger Token';

  @override
  String loginFailed(String error) {
    return 'Anmeldung fehlgeschlagen: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList-Anmeldung fehlgeschlagen';

  @override
  String get kitsuLoginFailed =>
      'Kitsu-Anmeldung fehlgeschlagen. Prüf deine E-Mail und dein Passwort.';

  @override
  String get kitsuLoginTitle => 'Bei Kitsu anmelden';

  @override
  String get emailOrUsername => 'E-Mail oder Benutzername';

  @override
  String get password => 'Passwort';

  @override
  String get kitsuProfile => 'Kitsu-Profil';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka-Anmeldung fehlgeschlagen';

  @override
  String get mangaBakaProfile => 'MangaBaka-Profil';

  @override
  String get refreshFromMangaBaka => 'Von MangaBaka aktualisieren';

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
  String get artistsLabel => 'Zeichner';

  @override
  String get authorsLabel => 'Autoren';

  @override
  String get publishersLabel => 'Verlage';

  @override
  String get licensedLabel => 'Lizenziert';

  @override
  String get contentRatingLabel => 'Altersfreigabe';

  @override
  String get yesLabel => 'Ja';

  @override
  String get noLabel => 'Nein';

  @override
  String get ratingSteps => 'Bewertungsstufen';

  @override
  String get hideNsfw => 'NSFW ausblenden';

  @override
  String get hideNsfwDesc =>
      'Halt Erwachsenentitel aus Feeds und Suche raus und zeig deine eigenen Erwachsenen-Einträge unter Versteckte Medien.';

  @override
  String get kitsuAccountOptions => 'Kitsu-Kontooptionen';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka-Kontooptionen';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Deine Kitsu-Einstellungen konnten nicht aktualisiert werden';

  @override
  String get titleCanonical => 'Kanonisch';

  @override
  String get titleRomanized => 'Romanisiert';

  @override
  String get titleLocalized => 'Lokalisiert';

  @override
  String get ratingSystem => 'Bewertungssystem';

  @override
  String get ratingSimple => 'Einfach (3 Gesichter)';

  @override
  String get ratingRegular => 'Normal (5 Sterne)';

  @override
  String get ratingAdvanced => 'Erweitert (10 Punkte)';

  @override
  String get contentFilter => 'Inhaltsfilter';

  @override
  String get contentSfw => 'Nur jugendfrei';

  @override
  String get contentSometimes => 'Erwachseneninhalte in Suchen';

  @override
  String get contentEverywhere => 'Erwachseneninhalte überall';

  @override
  String get shareToGlobal => 'Im globalen Feed teilen';

  @override
  String get shareToGlobalDesc =>
      'Lass deine Aktivität im globalen Kitsu-Feed erscheinen.';

  @override
  String get memberSince => 'Mitglied seit';

  @override
  String get location => 'Ort';

  @override
  String get accountType => 'Kontotyp';

  @override
  String get accountSupporter => 'Supporter';

  @override
  String get accountFree => 'Kostenlos';

  @override
  String get accountDetails => 'Kontodetails';

  @override
  String get refreshFromKitsu => 'Von Kitsu aktualisieren';

  @override
  String get simklReadOnly => 'Simkl hat nur Lesezugriff gewährt';

  @override
  String get incognitoEditsBlocked =>
      'Inkognito: Listenänderungen sind gesperrt';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'Inkognito: Fortschritt nicht gespeichert';

  @override
  String progressSet(int progress) {
    return 'Fortschritt auf $progress gesetzt';
  }

  @override
  String removedFromList(String title) {
    return '$title aus deiner Liste entfernt';
  }

  @override
  String get following => 'Folge ich';

  @override
  String get homeSections => 'Startseiten-Bereiche';

  @override
  String get homeSectionsHint =>
      'Zum Umsortieren ziehen. Ausgeblendete Bereiche werden nie geladen.';

  @override
  String get customListDeleteFailed =>
      'Eigene Liste konnte nicht gelöscht werden';

  @override
  String get customListsSaveFailed =>
      'Eigene Listen konnten nicht gespeichert werden';

  @override
  String get customListsSaved => 'Eigene Listen gespeichert';

  @override
  String get listName => 'Listenname';

  @override
  String get addList => 'Liste hinzufügen';

  @override
  String voiceActorsIn(String name) {
    return 'Synchronsprecher · $name';
  }

  @override
  String get animeAppearances => 'Auftritte in Anime';

  @override
  String get mangaAppearances => 'Auftritte in Manga';

  @override
  String get voicedCharacters => 'Gesprochene Charaktere';

  @override
  String get animeCredits => 'Anime-Credits';

  @override
  String get mangaCredits => 'Manga-Credits';

  @override
  String get mainProductions => 'Hauptproduktionen';

  @override
  String get otherWorks => 'Weitere Werke';

  @override
  String get prequelSequel => 'Prequel & Sequel';

  @override
  String get previousSeason => 'Vorherige Staffel';

  @override
  String get thisSeason => 'Diese Staffel';

  @override
  String get nextSeason => 'Nächste Staffel';

  @override
  String get voiceRoles => 'Sprechrollen';

  @override
  String get staffPositions => 'Staff-Positionen';

  @override
  String get mangaWorks => 'Manga-Werke';

  @override
  String get malProfile => 'MyAnimeList-Profil';

  @override
  String get refreshFromMal => 'Von MyAnimeList aktualisieren';

  @override
  String get repullProfileCounts => 'Profil und Zahlen neu abrufen';

  @override
  String get refreshed => 'Aktualisiert';

  @override
  String get simklProfile => 'Simkl-Profil';

  @override
  String get refreshFromSimkl => 'Von Simkl aktualisieren';

  @override
  String get repullProfileLibrary => 'Profil und Bibliothek neu abrufen';

  @override
  String get simklSignInToSearch => 'Melde dich bei Simkl an, um zu suchen';

  @override
  String get dropRate => 'Abbruchquote';

  @override
  String get simklAttribution =>
      'Daten und Artworks von Simkl. Auf Simkl ansehen';

  @override
  String get onHold => 'Pausiert';

  @override
  String get scoredBy => 'Bewertet von';

  @override
  String get planToWatch => 'Will ich schauen';

  @override
  String get planToRead => 'Will ich lesen';

  @override
  String get timesRewatched => 'Mal erneut geschaut';

  @override
  String get timesReread => 'Mal erneut gelesen';

  @override
  String get comments => 'Kommentare';

  @override
  String get moviesAndSeries => 'Filme & Serien';

  @override
  String get trackingOnly => 'Nur Tracking';

  @override
  String get signedIn => 'Angemeldet';

  @override
  String get searchLanguage => 'Suchsprache';

  @override
  String get savedToList => 'In deiner Liste gespeichert';

  @override
  String get removedFromYourList => 'Aus deiner Liste entfernt';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get synopsis => 'Handlung';

  @override
  String get details => 'Details';

  @override
  String get addToList => 'Zur Liste hinzufügen';

  @override
  String get trailer => 'Trailer';

  @override
  String get titleCopied => 'Titel kopiert';

  @override
  String get linkCopied => 'Link kopiert';

  @override
  String get watchTrailer => 'Trailer ansehen';

  @override
  String get copyTitle => 'Titel kopieren';

  @override
  String get copyLink => 'Link kopieren';

  @override
  String get openInBrowser => 'Im Browser öffnen';

  @override
  String viewOnSource(String source) {
    return 'Auf $source ansehen';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Folge $ep läuft in $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Nächste Folge in $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Kapitel $chapter kommt in etwa $time';
  }

  @override
  String get logPathCopied => 'Pfad der Logdatei in die Zwischenablage kopiert';

  @override
  String get animeSource => 'Anime-Quelle';

  @override
  String get mangaSource => 'Manga-Quelle';

  @override
  String get popular => 'Beliebt';

  @override
  String get latest => 'Neueste';

  @override
  String get saved => 'Gespeichert';

  @override
  String get nothingMatched => 'Nichts gefunden';

  @override
  String get nothingSavedFromSource =>
      'Aus dieser Quelle ist noch nichts gespeichert';

  @override
  String get sourceReturnedNothing => 'Diese Quelle hat nichts geliefert';

  @override
  String get checkConnectionOrSource =>
      'Prüf deine Verbindung oder probier eine andere Quelle.';

  @override
  String get tryDifferentSearch => 'Probier einen anderen Suchbegriff.';

  @override
  String get savedTitlesAppearHere =>
      'Titel, die du zu deiner Liste hinzufügst, erscheinen hier.';

  @override
  String get tryOtherFeed =>
      'Probier stattdessen den anderen Feed oder die Suche.';

  @override
  String searchSource(String source) {
    return '$source durchsuchen';
  }

  @override
  String get animeExtensions => 'Anime-Erweiterungen';

  @override
  String get mangaExtensions => 'Manga-Erweiterungen';

  @override
  String get nothingHereYet => 'Noch nichts hier';

  @override
  String get savedOnDeviceUntilLogin =>
      'Alles unten ist auf diesem Gerät gespeichert, bis du etwas anderes machst.';

  @override
  String get yourProfile => 'Dein Profil';

  @override
  String get activity => 'Aktivität';

  @override
  String get extensions => 'Erweiterungen';

  @override
  String get logOut => 'Abmelden';

  @override
  String get logIn => 'Anmelden';

  @override
  String get logOutConfirm => 'Willst du dich wirklich abmelden?';

  @override
  String get incognitoMode => 'Inkognito-Modus';

  @override
  String get alsoBlockListEdits => 'Auch Listenänderungen blockieren';

  @override
  String get offlineMode => 'Offline-Modus';

  @override
  String get switchService => 'Dienst wechseln';

  @override
  String logOutOf(String name) {
    return 'Von $name abmelden';
  }

  @override
  String get loggedIn => 'Angemeldet';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get nothingNew => 'Nichts Neues';

  @override
  String get thisWeek => 'Diese Woche';

  @override
  String get listOnly => 'Nur Liste';

  @override
  String get filter => 'Filtern';

  @override
  String get searchResults => 'Suchergebnisse';

  @override
  String get recentSearches => 'Letzte Suchen';

  @override
  String get searchOrSetFilter => 'Suche oder setz einen Filter';

  @override
  String get filters => 'Filter';

  @override
  String get showLess => 'Weniger anzeigen';

  @override
  String get showAll => 'Alle anzeigen';

  @override
  String get apply => 'Anwenden';

  @override
  String get preview => 'Vorschau';

  @override
  String get preset => 'Voreinstellung';

  @override
  String get cardNormal => 'Normal';

  @override
  String get cardOnCard => 'Auf der Karte';

  @override
  String get cardInCard => 'In der Karte';

  @override
  String get size => 'Größe';

  @override
  String get cardWidth => 'Kartenbreite';

  @override
  String get compact => 'Kompakt';

  @override
  String get coverAndTitleOnly => 'Nur Cover und Titel';

  @override
  String get titleLines => 'Titelzeilen';

  @override
  String get shape => 'Form';

  @override
  String get posterShape => 'Poster-Form';

  @override
  String get cornerRadius => 'Eckenradius';

  @override
  String get off => 'Aus';

  @override
  String get topLeft => 'Oben links';

  @override
  String get topRight => 'Oben rechts';

  @override
  String get bottomLeft => 'Unten links';

  @override
  String get bottomRight => 'Unten rechts';

  @override
  String get overlays => 'Overlays';

  @override
  String get progressCount => 'Fortschritt / Anzahl';

  @override
  String get pill => 'Pille';

  @override
  String get bar => 'Balken';

  @override
  String get outside => 'Außerhalb';

  @override
  String get scoreBadge => 'Bewertungs-Badge';

  @override
  String get airingDot => 'Ausstrahlungspunkt';

  @override
  String get updateAvailable => 'Update verfügbar';

  @override
  String get notInstalled => 'Nicht installiert';

  @override
  String get done => 'Fertig';

  @override
  String get searchOrEnterUrl => 'Suchen oder URL eingeben';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get share => 'Teilen';

  @override
  String get characters => 'Charaktere';

  @override
  String get staff => 'Staff';

  @override
  String get readMore => 'Mehr lesen';

  @override
  String get couldNotLoadList => 'Die Liste konnte nicht geladen werden';

  @override
  String get logInToFavourite => 'Melde dich an, um Favoriten hinzuzufügen';

  @override
  String get alsoKnownAs => 'Auch bekannt als';

  @override
  String get hideSpoilerNames => 'Namen mit Spoilern ausblenden';

  @override
  String get showSpoilerNames => 'Namen mit Spoilern anzeigen';

  @override
  String get favourited => 'Favorisiert';

  @override
  String get favourite => 'Favorit';

  @override
  String get couldNotOpenTitle => 'Dieser Titel konnte nicht geöffnet werden';

  @override
  String get nobodyHereYet => 'Noch niemand hier';

  @override
  String get noMatches => 'Keine Treffer';

  @override
  String get gridView => 'Rasteransicht';

  @override
  String get fullWidth => 'Volle Breite';

  @override
  String get userNotFound => 'Nutzer nicht gefunden';

  @override
  String get couldNotUpdateFollow => 'Folgen konnte nicht geändert werden';

  @override
  String followedUser(String name) {
    return 'Du folgst jetzt $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Du folgst $name nicht mehr';
  }

  @override
  String get messages => 'Nachrichten';

  @override
  String get logInToSeeMessages =>
      'Melde dich an, um deine Nachrichten zu sehen';

  @override
  String get editActivity => 'Aktivität bearbeiten';

  @override
  String get newActivity => 'Neue Aktivität';

  @override
  String get editMessage => 'Nachricht bearbeiten';

  @override
  String get writeMessage => 'Nachricht schreiben';

  @override
  String get editReply => 'Antwort bearbeiten';

  @override
  String get posted => 'Gepostet';

  @override
  String get couldNotPost => 'Posten fehlgeschlagen';

  @override
  String get nothingToPreview => 'Nichts zur Vorschau';

  @override
  String get writeSomethingHint =>
      'Schreib etwas… AniList-Markdown funktioniert hier';

  @override
  String get privateMessage => 'Private Nachricht';

  @override
  String get post => 'Posten';

  @override
  String get nothingHere => 'Nichts hier';

  @override
  String get noAnimeProgress => 'Kein Anime-Fortschritt';

  @override
  String get noMangaProgress => 'Kein Manga-Fortschritt';

  @override
  String get noMessages => 'Keine Nachrichten';

  @override
  String get writeMessageHint => 'Schreib eine Nachricht…';

  @override
  String get shareSomethingHint => 'Teile etwas…';

  @override
  String get all => 'Alle';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Anzahl';

  @override
  String get hoursWatched => 'Geschaute Stunden';

  @override
  String get chaptersRead => 'Gelesene Kapitel';

  @override
  String get meanScore => 'Durchschnittliche Bewertung';

  @override
  String get noStatsYet => 'Noch keine Statistiken';

  @override
  String get totalEntries => 'Einträge insgesamt';

  @override
  String get episodesWatched => 'Geschaute Folgen';

  @override
  String get daysWatched => 'Geschaute Tage';

  @override
  String get volumesRead => 'Gelesene Bände';

  @override
  String get standardDeviation => 'Standardabweichung';

  @override
  String get showMore => 'Mehr anzeigen';

  @override
  String get followsYou => 'Folgt dir';

  @override
  String get nobodyYet => 'Noch niemand';

  @override
  String get logInToLike => 'Melde dich an, um zu liken';

  @override
  String get failedToLikeActivity => 'Aktivität konnte nicht geliked werden';

  @override
  String get deleteActivityConfirm => 'Aktivität löschen?';

  @override
  String get deletedActivity => 'Aktivität gelöscht';

  @override
  String get failedToDeleteActivity => 'Aktivität konnte nicht gelöscht werden';

  @override
  String get subscribed => 'Abonniert';

  @override
  String get unsubscribed => 'Abo beendet';

  @override
  String get failedToUpdateSubscription => 'Abo konnte nicht geändert werden';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get delete => 'Löschen';

  @override
  String get likedBy => 'Geliked von';

  @override
  String get follow => 'Folgen';

  @override
  String get nameCopied => 'Name kopiert';

  @override
  String get followsEachOther => 'Folgt euch gegenseitig';

  @override
  String get unfollow => 'Entfolgen';

  @override
  String get userIdCopied => 'Nutzer-ID kopiert';

  @override
  String get shareProfile => 'Profil teilen';

  @override
  String get copyUserId => 'Nutzer-ID kopieren';

  @override
  String get failedToDelete => 'Löschen fehlgeschlagen';

  @override
  String get failedToLike => 'Liken fehlgeschlagen';

  @override
  String get replies => 'Antworten';

  @override
  String get reply => 'Antworten';

  @override
  String get noRepliesYet => 'Noch keine Antworten';

  @override
  String get favouriteAnime => 'Lieblings-Anime';

  @override
  String get favouriteManga => 'Lieblings-Manga';

  @override
  String get favouriteCharacters => 'Lieblings-Charaktere';

  @override
  String get favouriteStaff => 'Lieblings-Staff';

  @override
  String get favouriteStudios => 'Lieblings-Studios';

  @override
  String get noFavouritesYet => 'Noch keine Favoriten';

  @override
  String get yourStory => 'Deine Story';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get justNow => 'Gerade eben';

  @override
  String get openImage => 'Bild öffnen';

  @override
  String get hideSpoiler => 'Spoiler ausblenden';

  @override
  String get showSpoiler => 'Spoiler anzeigen';

  @override
  String get status => 'Status';

  @override
  String get score => 'Bewertung';

  @override
  String get started => 'Begonnen';

  @override
  String get completed => 'Abgeschlossen';

  @override
  String get private => 'Privat';

  @override
  String get hideFromStatusLists => 'In Statuslisten ausblenden';

  @override
  String get totalRepeats => 'Wiederholungen gesamt';

  @override
  String get other => 'Sonstiges';

  @override
  String get customLists => 'Eigene Listen';

  @override
  String get activeDays => 'Aktive Tage';

  @override
  String get longestStreak => 'Längste Serie';

  @override
  String get currentStreak => 'Aktuelle Serie';

  @override
  String get tapOrHoverDay => 'Tippe oder fahr mit der Maus über einen Tag';

  @override
  String get less => 'Weniger';

  @override
  String get more => 'Mehr';

  @override
  String epIn(int ep, String time) {
    return 'Folge $ep in $time';
  }

  @override
  String get sectionLoading => 'Lädt';

  @override
  String get querySize => 'Abfragegröße';

  @override
  String get querySizeDesc =>
      'Eine große Abfrage lädt alle Reihen (und ein ganzes Profil) in einer einzigen Anfrage. Geteilte Abfragen senden eine kleine Anfrage pro Reihe oder Profilteil: Jede ist schnell, und die Teile erscheinen nach und nach.';

  @override
  String get oneBig => 'Eine große';

  @override
  String get split => 'Geteilt';

  @override
  String get sectionSocial => 'Social';

  @override
  String get systemNotifications => 'Systembenachrichtigungen';

  @override
  String get feedLayout => 'Feed-Layout';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown von $total angezeigt – tippen zum Auswählen und Umsortieren';
  }

  @override
  String labelSections(String label) {
    return '$label-Bereiche';
  }

  @override
  String get accountOptions => 'Kontooptionen';

  @override
  String get anilistAccountOptions => 'AniList-Kontooptionen';

  @override
  String get sectionPrivacy => 'Datenschutz';

  @override
  String get hidePrivateEntries => 'Private Einträge ausblenden';

  @override
  String get hidePrivateEntriesDesc =>
      'Auf AniList als privat markierte Einträge aus dem Feed raushalten';

  @override
  String get anilistExcludeList => 'Deine Liste ausblenden';

  @override
  String get anilistExcludeListDesc =>
      'Titel, die schon auf deiner AniList stehen, auf den Anime- und Manga-Seiten ausblenden';

  @override
  String get anilistProfile => 'AniList-Profil';

  @override
  String get refreshFromAnilist => 'Von AniList aktualisieren';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList-Einstellungen konnten nicht aktualisiert werden';

  @override
  String get sectionNames => 'Namen';

  @override
  String get titleLanguage => 'Titelsprache';

  @override
  String get titleLanguageDesc =>
      'Wie Titel überall geschrieben werden, z. B. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Namen von Staff und Charakteren';

  @override
  String get sectionLists => 'Listen';

  @override
  String get scoreFormat => 'Bewertungsformat';

  @override
  String get sortListsBy => 'Listen sortieren nach';

  @override
  String labelCustomLists(String label) {
    return 'Eigene $label-Listen';
  }

  @override
  String customListsCount(int count) {
    return '$count Listen – tippen zum Hinzufügen oder Entfernen';
  }

  @override
  String get mergeActivities => 'Aktivitäten zusammenführen';

  @override
  String minutesCount(int count) {
    return '$count Min.';
  }

  @override
  String get timezone => 'Zeitzone';

  @override
  String get notSet => 'Nicht gesetzt';

  @override
  String get airingNotifications => 'Benachrichtigungen zur Ausstrahlung';

  @override
  String get airingNotificationsDesc =>
      'Werde benachrichtigt, wenn eine Folge einer verfolgten Serie läuft';

  @override
  String get displayAdultContent => 'Erwachsenen-Inhalte anzeigen';

  @override
  String get displayAdultContentDesc =>
      '18+-Titel in Browse, Suche und Feeds einbeziehen';

  @override
  String get restrictMessages => 'Nachrichten auf Gefolgte beschränken';

  @override
  String get restrictMessagesDesc =>
      'Nur Leute, denen du folgst, können dir schreiben';

  @override
  String get sectionServices => 'Dienste';

  @override
  String get novel => 'Novel';

  @override
  String labelService(String label) {
    return '$label-Dienst';
  }

  @override
  String nameSettings(String name) {
    return '$name-Einstellungen';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Optionen von der $name-Erweiterungsbrücke';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name konnte nicht starten: $error';
  }

  @override
  String get importLists => 'Listen importieren';

  @override
  String get importListsDesc =>
      'Aus Aniyomi-, Mihon- / Tachiyomi- oder Kotatsu-Backups';

  @override
  String get exportLists => 'Listen exportieren';

  @override
  String get exportListsDesc => 'In ein Aniyomi-, Mihon- oder Kotatsu-Backup';

  @override
  String get sectionBrowse => 'Entdecken';

  @override
  String get readingTab => 'Lese-Tab';

  @override
  String get readingTabDesc => 'Welche Erweiterungen der dritte Tab zeigt';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Standard-Feed';

  @override
  String get defaultFeedDesc => 'Mit welcher Liste eine Quelle startet';

  @override
  String noServiceSupports(String type) {
    return 'Kein Dienst unterstützt $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $loaded von $installed Quellen werden geladen';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Kein Erweiterungsdienst unterstützt hier $type.';
  }

  @override
  String get loadDataFrom => 'Daten laden von';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Noch keine installierten $type-Quellen.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Die Erweiterung für $name ist nicht installiert';
  }

  @override
  String get thisSource => 'diese Quelle';

  @override
  String failedToAddRepository(String error) {
    return 'Repository konnte nicht hinzugefügt werden: $error';
  }

  @override
  String installedType(String type) {
    return 'Installierte $type';
  }

  @override
  String availableType(String type) {
    return 'Verfügbare $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Keine installierten $type-Erweiterungen';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Keine verfügbaren $type-Erweiterungen';
  }

  @override
  String get nothingToShowYet => 'Noch nichts anzuzeigen';

  @override
  String get addTitlesHint =>
      'Füg ein paar Titel zu deiner Liste hinzu, dann erscheinen sie hier.';

  @override
  String get couldntLoad => 'Konnte nicht geladen werden';

  @override
  String get progressStyleHint =>
      'Pille und Balken liegen über dem Poster; „Außerhalb\" zeigt dieselbe Zahl stattdessen als Text – wähl eins.';

  @override
  String get nixManagedUpdate =>
      'Dieser Build wird von Nix verwaltet – führ \"nix flake update\" in deinem Flake aus und bau neu, statt hier zu aktualisieren';

  @override
  String autoUpdateFailed(String error) {
    return 'Automatisches Update fehlgeschlagen ($error) – öffne stattdessen die Download-Seite';
  }

  @override
  String get unknownPreference => 'Unbekannte Einstellung';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Nicht unterstützter Einstellungstyp $type';
  }

  @override
  String get notYetReleased => 'Noch nicht erschienen';

  @override
  String get notStarted => 'Nicht gestartet';

  @override
  String get country => 'Land';

  @override
  String get sort => 'Sortieren';

  @override
  String get chooseBackupDialog =>
      'Wähle ein Aniyomi-, Mihon- oder Kotatsu-Backup';

  @override
  String get importListsHint =>
      'Hol eine Bibliothek aus Aniyomi, Mihon / Tachiyomi oder Kotatsu rüber. Titel, Cover, Fortschritt und Kategorien bleiben erhalten.';

  @override
  String get chooseBackupFile => 'Backup-Datei wählen';

  @override
  String importAnimeCount(int count) {
    return '$count Anime importieren';
  }

  @override
  String importMangaCount(int count) {
    return '$count Manga importieren';
  }

  @override
  String get mergeWithExisting => 'Mit bestehenden Listen zusammenführen';

  @override
  String get mergeWithExistingDesc =>
      'Behält, was du schon hast; aus ersetzt passende Titel';

  @override
  String get chooseAnother => 'Andere wählen';

  @override
  String get import => 'Importieren';

  @override
  String animeCount(int count) {
    return '$count Anime';
  }

  @override
  String mangaCount(int count) {
    return '$count Manga';
  }

  @override
  String get chooseSaveLocation => 'Wähle, wo das Backup gespeichert wird';

  @override
  String savedPath(String path) {
    return 'Gespeichert unter $path';
  }

  @override
  String exportFailed(String error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get nothingInLocalLists => 'In deinen lokalen Listen ist noch nichts.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Exportiert $anime Anime und $manga Manga aus deinen lokalen Listen. Kotatsu unterstützt nur Manga.';
  }

  @override
  String get saveToFolder => 'In Ordner speichern';

  @override
  String get formatAnimeManga => 'Anime und Manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Nur Manga · .tachibk';

  @override
  String get formatMangaZip => 'Nur Manga · .zip';

  @override
  String get genres => 'Genres';

  @override
  String get relations => 'Verwandtes';

  @override
  String get recommendations => 'Empfehlungen';

  @override
  String get openings => 'Openings';

  @override
  String get endings => 'Endings';

  @override
  String get background => 'Hintergrund';

  @override
  String get links => 'Links';

  @override
  String get rank => 'Rang';

  @override
  String get members => 'Mitglieder';

  @override
  String get favorites => 'Favoriten';

  @override
  String get episodes => 'Folgen';

  @override
  String get chapters => 'Kapitel';

  @override
  String get volumes => 'Bände';

  @override
  String get format => 'Format';

  @override
  String get source => 'Quelle';

  @override
  String get duration => 'Dauer';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes Min. pro Folge';
  }

  @override
  String get rating => 'Bewertung';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Serialisierung';

  @override
  String get season => 'Staffel';

  @override
  String get broadcast => 'Ausstrahlung';

  @override
  String get aired => 'Ausgestrahlt';

  @override
  String get published => 'Veröffentlicht';

  @override
  String get popularity => 'Beliebtheit';

  @override
  String get community => 'Community';

  @override
  String get watching => 'Schaue ich';

  @override
  String get reading => 'Lese ich';

  @override
  String get dropped => 'Abgebrochen';

  @override
  String get planned => 'Geplant';

  @override
  String get trailers => 'Trailer';

  @override
  String get ratings => 'Bewertungen';

  @override
  String get originalTitle => 'Original';

  @override
  String get titleLabel => 'Titel';

  @override
  String get votes => 'Stimmen';

  @override
  String get watchedStat => 'Geschaut';

  @override
  String get runtime => 'Laufzeit';

  @override
  String get director => 'Regie';

  @override
  String get network => 'Sender';

  @override
  String get certification => 'Altersfreigabe';

  @override
  String get airs => 'Läuft';

  @override
  String get budget => 'Budget';

  @override
  String get revenue => 'Einnahmen';

  @override
  String get released => 'Erschienen';

  @override
  String get tags => 'Tags';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Geboren';

  @override
  String get website => 'Website';

  @override
  String get established => 'Gegründet';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Novels';

  @override
  String get thisMonth => 'Diesen Monat';

  @override
  String get movies => 'Filme';

  @override
  String get shows => 'Serien';

  @override
  String get rewatching => 'Schaue ich erneut';

  @override
  String get rereading => 'Lese ich erneut';

  @override
  String get watchedStatus => 'Geschaut';

  @override
  String get planning => 'Geplant';

  @override
  String get paused => 'Pausiert';

  @override
  String get watch => 'Schauen';

  @override
  String get read => 'Lesen';

  @override
  String get finished => 'Beendet';

  @override
  String get releasing => 'Läuft aktuell';

  @override
  String get cancelled => 'Abgesetzt';

  @override
  String get hiatus => 'Pause';

  @override
  String get remove => 'Entfernen';

  @override
  String syncToService(String service) {
    return 'Mit $service synchronisieren';
  }

  @override
  String syncedToService(String service) {
    return 'Mit $service synchronisiert';
  }

  @override
  String get latestReleases => 'Neueste Veröffentlichungen';

  @override
  String get topRated => 'Bestbewertet';

  @override
  String localSection(String title) {
    return '$title · Lokal';
  }

  @override
  String get localEntryNote =>
      'Dieser Titel ist nur in deiner lokalen Liste auf diesem Gerät. Bearbeiten ist hier ausgeschaltet, weil es mit deiner Kontoliste kollidieren könnte; entfernen kannst du ihn trotzdem.';

  @override
  String get cardPresetPoster => 'Poster';

  @override
  String get cardPresetCard => 'Karte';

  @override
  String get cardPresetCozy => 'Gemütlich';

  @override
  String get sortTopRated => 'Bestbewertet';

  @override
  String get sortMostPopular => 'Am beliebtesten';

  @override
  String get sortTrending => 'Im Trend';

  @override
  String get sortNewest => 'Neueste';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Meistfavorisiert';

  @override
  String get anyCountry => 'Jedes Land';

  @override
  String get orderScore => 'Bewertung';

  @override
  String get orderTitle => 'Titel';

  @override
  String get orderLastUpdated => 'Zuletzt aktualisiert';

  @override
  String get orderLastAdded => 'Zuletzt hinzugefügt';

  @override
  String get never => 'Nie';

  @override
  String get always => 'Immer';

  @override
  String get scorePoint100 => '100 Punkte';

  @override
  String get scorePoint10Decimal => '10 Punkte mit Dezimalstelle';

  @override
  String get scorePoint10 => '10 Punkte';

  @override
  String get scorePoint5 => '5 Sterne';

  @override
  String get scorePoint3 => '3 Smileys';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Stunden',
      one: '1 Stunde',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wochen',
      one: '1 Woche',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Fortsetzen';

  @override
  String get resumeSourceMissing =>
      'Installier die Quelle dieses Titels, um fortzusetzen';

  @override
  String get resumeRemove => 'Aus „Fortsetzen\" entfernen';

  @override
  String resumeAt(String time) {
    return 'noch $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Seite $page von $total';
  }

  @override
  String get continueWatching => 'Weiterschauen';

  @override
  String get continueReading => 'Weiterlesen';

  @override
  String get favouriteAnimeSection => 'Lieblings-Anime';

  @override
  String get favouriteMangaSection => 'Lieblings-Manga';

  @override
  String get plannedAnime => 'Geplante Anime';

  @override
  String get plannedManga => 'Geplante Manga';

  @override
  String get completedAnime => 'Abgeschlossene Anime';

  @override
  String get completedManga => 'Abgeschlossene Manga';

  @override
  String get hiddenMedia => 'Versteckte Medien';

  @override
  String get recentUpdates => 'Letzte Updates';

  @override
  String get trendingNow => 'Gerade im Trend';

  @override
  String get popularThisSeason => 'Beliebt in dieser Staffel';

  @override
  String get trendingMovies => 'Trend-Filme';

  @override
  String get topRatedSeries => 'Bestbewertete Serien';

  @override
  String get mostFavouriteSeries => 'Meistfavorisierte Serien';

  @override
  String get popularAnime => 'Beliebte Anime';

  @override
  String get trendingManhwa => 'Trend-Manhwa';

  @override
  String get trendingNovels => 'Trend-Novels';

  @override
  String get topRatedManga => 'Bestbewertete Manga';

  @override
  String get mostFavouriteManga => 'Meistfavorisierte Manga';

  @override
  String get popularManga => 'Beliebte Manga';

  @override
  String get topMovies => 'Top-Filme';

  @override
  String get topOna => 'Top-ONA';

  @override
  String get topOva => 'Top-OVA';

  @override
  String get mostPopular => 'Am beliebtesten';

  @override
  String get mostFavourite => 'Meistfavorisiert';

  @override
  String get upcoming => 'Demnächst';

  @override
  String get topManga => 'Top-Manga';

  @override
  String get topManhwa => 'Top-Manhwa';

  @override
  String get topManhua => 'Top-Manhua';

  @override
  String get topNovels => 'Top-Novels';

  @override
  String get topOneShots => 'Top-One-Shots';

  @override
  String get trendingMoviesToday => 'Trend-Filme heute';

  @override
  String get trendingShowsToday => 'Trend-Serien heute';

  @override
  String get trendingMoviesWeek => 'Trend-Filme diese Woche';

  @override
  String get trendingShowsWeek => 'Trend-Serien diese Woche';

  @override
  String get mostWatchedMoviesMonth => 'Meistgeschaute Filme diesen Monat';

  @override
  String get mostWatchedShowsMonth => 'Meistgeschaute Serien diesen Monat';

  @override
  String get trendingThisWeek => 'Diese Woche im Trend';

  @override
  String get mostWatchedThisMonth => 'Diesen Monat am meisten geschaut';

  @override
  String get repoLinksAdded => 'Repo-Links erfolgreich hinzugefügt!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Fehler beim Abrufen der Daten von AniList.';

  @override
  String get navInfo => 'INFO';

  @override
  String get navComments => 'KOMMENTARE';

  @override
  String get playerNotAvailable => 'Der Player ist noch nicht verfügbar';

  @override
  String deepLinkInitialError(String error) {
    return 'Fehler beim Abrufen des ersten Deep Links: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Fehler beim Öffnen des Links: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Dieser Link lässt sich nicht öffnen: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Fehler beim Öffnen des Links: $error';
  }

  @override
  String get forReleasingTitles => 'für aktuell laufende Titel';

  @override
  String get progress => 'Fortschritt';

  @override
  String get notes => 'Notizen';

  @override
  String serviceNotFound(String id) {
    return 'Dienst \"$id\" nicht gefunden';
  }

  @override
  String get glassEffectEnabled => 'Glaseffekt aktiviert';

  @override
  String get glassEffectDisabled => 'Glaseffekt deaktiviert';

  @override
  String get materialYouEnabled => 'Material You aktiviert';

  @override
  String get materialYouDisabled => 'Material You deaktiviert';

  @override
  String get darkModeEnabled => 'Dunkelmodus aktiviert';

  @override
  String get darkModeDisabled => 'Dunkelmodus deaktiviert';

  @override
  String get animeList => 'Anime-Liste';

  @override
  String get mangaList => 'Manga-Liste';

  @override
  String ownerAnimeList(String owner) {
    return 'Anime-Liste von $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Manga-Liste von $owner';
  }

  @override
  String get loadingList => 'Liste wird geladen';

  @override
  String get earlier => 'Früher';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Tagen',
      one: 'vor 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Stunden',
      one: 'vor 1 Stunde',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vor $count Minuten',
      one: 'vor 1 Minute',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'vor $count Min.';
  }

  @override
  String hoursAgoShort(int count) {
    return 'vor $count Std.';
  }

  @override
  String daysAgoShort(int count) {
    return 'vor $count T.';
  }

  @override
  String weeksAgoShort(int count) {
    return 'vor $count W.';
  }

  @override
  String get couldntLoadSource => 'Diese Quelle konnte nicht geladen werden';

  @override
  String get followers => 'Follower';

  @override
  String couldntLoadTitle(String title) {
    return '$title konnte nicht geladen werden';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Dieses Profil konnte nicht geladen werden';

  @override
  String get profile => 'Profil';

  @override
  String get feed => 'Feed';

  @override
  String get stats => 'Statistiken';

  @override
  String get received => 'Erhalten';

  @override
  String get sent => 'Gesendet';

  @override
  String get global => 'Global';

  @override
  String get couldntLoadPage => 'Diese Seite konnte nicht geladen werden';

  @override
  String get couldntLoadAllDetails =>
      'Nicht alle Details konnten geladen werden';

  @override
  String get series => 'Serien';

  @override
  String get studios => 'Studios';

  @override
  String get users => 'Nutzer';

  @override
  String repositoriesTitle(String type) {
    return '$type-Repositories';
  }

  @override
  String get repositoryUrl => 'Repository-URL';

  @override
  String get downloadingRepository => 'Lade Repository herunter…';

  @override
  String get noRepositories => 'Keine Repositories hinzugefügt';

  @override
  String repoExtensionsCount(String count) {
    return '$count Erweiterungen';
  }

  @override
  String get searchExtensions => 'Erweiterungen suchen...';

  @override
  String deletePluginTitle(String name) {
    return '$name löschen?';
  }

  @override
  String get deletePluginMessage => 'Willst du dieses Plugin wirklich löschen?';

  @override
  String pluginDeleted(String name) {
    return '$name gelöscht';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name ist im konfigurierten Repo nicht verfügbar';
  }

  @override
  String get pluginFetchFailed => 'Plugin-Infos konnten nicht abgerufen werden';

  @override
  String installPluginTitle(String name) {
    return '$name installieren';
  }

  @override
  String sizeLabel(String size) {
    return 'Größe: $size';
  }

  @override
  String get installedState => 'Installiert';

  @override
  String get errorLabel => 'Fehler:';

  @override
  String get stackTraceDetails => 'Details (Stack Trace)';

  @override
  String get shareLogFile => 'Logdatei teilen';

  @override
  String get copyLogs => 'Logs kopieren';

  @override
  String noListToEdit(String service) {
    return '$service hat keine Liste zum Bearbeiten';
  }

  @override
  String get couldNotReadFile => 'Die Datei konnte nicht gelesen werden';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime Anime und $manga Manga importiert';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count schon vorhanden';
  }

  @override
  String get airingNow => 'Läuft gerade';

  @override
  String get topRatedMovies => 'Bestbewertete Filme';

  @override
  String get koreanDramas => 'Koreanische Dramas';

  @override
  String get chineseDramas => 'Chinesische Dramas';

  @override
  String get japaneseDramas => 'Japanische Dramas';

  @override
  String get thaiDramas => 'Thailändische Dramas';

  @override
  String get turkishDramas => 'Türkische Serien';

  @override
  String get miniSeries => 'Miniserien';

  @override
  String get topRatedShows => 'Bestbewertete Serien';

  @override
  String get recommendedSection => 'Empfohlen';

  @override
  String get syncRow => 'Listen synchronisieren';

  @override
  String get syncRowDesc =>
      'Spiegle die Liste eines Dienstes auf deine anderen Konten';

  @override
  String get syncTitle => 'Sync';

  @override
  String get syncMainService => 'Hauptdienst';

  @override
  String get syncMainServiceDesc =>
      'Seine Liste ist die Referenz; alle anderen angemeldeten Dienste werden angeglichen';

  @override
  String get syncAuto => 'Auto-Sync';

  @override
  String get syncAutoDesc =>
      'Im Hintergrund abrufen und synchronisieren, wenn die App startet und alle 30 Minuten';

  @override
  String get syncAddMissing => 'Fehlende Einträge hinzufügen';

  @override
  String get syncAddMissingDesc =>
      'Auch Einträge hinzufügen, die der andere Dienst noch nicht hat';

  @override
  String get syncOnlyForward => 'Weiteren Fortschritt behalten';

  @override
  String get syncOnlyForwardDesc =>
      'Den Fortschritt eines Dienstes, der schon weiter ist, nicht verringern';

  @override
  String get syncFetch => 'Abrufen';

  @override
  String get syncFetchAgain => 'Erneut abrufen';

  @override
  String get syncAll => 'Alles synchronisieren';

  @override
  String get syncStop => 'Stopp';

  @override
  String get syncResume => 'Fortsetzen';

  @override
  String get syncNothingToSync =>
      'Dieser Dienst kann für diesen Typ nicht synchronisiert werden';

  @override
  String get syncNoTargets =>
      'Melde dich bei einem anderen Dienst an, um zu synchronisieren';

  @override
  String get syncLoadingMap => 'Lade ID-Zuordnung';

  @override
  String get syncComparing => 'Vergleiche Listen';

  @override
  String get syncIntro =>
      'Wähl einen Hauptdienst und drück auf Abrufen. Jeder Dienst wird einmal nach deiner Liste gefragt und dann mit dem Hauptdienst verglichen.';

  @override
  String get syncStateSynced => 'Synchronisiert';

  @override
  String get syncStateOutdated => 'Nicht synchron';

  @override
  String get syncStateMissing => 'Nicht in der Liste';

  @override
  String get syncStateUnmapped => 'Kein Treffer';

  @override
  String syncPaused(String time) {
    return 'Warte auf das Anfragelimit, weiter in $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count nur auf $name, unberührt';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done von $total';
  }

  @override
  String get syncNothingHere => 'Nichts anzuzeigen';

  @override
  String syncLimits(int used, int max, String window) {
    return '$used von $max Anfragen verbraucht pro $window';
  }

  @override
  String get syncMinute => 'Minute';

  @override
  String get syncDay => 'Tag';

  @override
  String get syncNotInList => 'Noch nicht in der Liste';

  @override
  String get syncCleared => 'Plan gelöscht';

  @override
  String get syncClear => 'Leeren';

  @override
  String get syncOptions => 'Optionen';

  @override
  String get syncShared => 'Teilt seinen Eintrag mit einem anderen Element';

  @override
  String syncNotFound(String service) {
    return 'Auf $service nicht gefunden';
  }

  @override
  String syncService(String service, int count) {
    return '$service synchronisieren ($count)';
  }

  @override
  String get syncOnEdit => 'Änderungen sofort synchronisieren';

  @override
  String get syncOnEditDesc =>
      'Jede Fortschrittsänderung und Listenbearbeitung sofort an deine anderen angemeldeten Dienste senden';

  @override
  String syncPushed(String services) {
    return 'Mit $services synchronisiert';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Anfragelimit erreicht, versuch es gleich nochmal';

  @override
  String get syncAhead => 'Wer weiter ist';

  @override
  String get syncAheadDesc =>
      'In beide Richtungen: Pro Titel gewinnt der Eintrag, der am weitesten ist, und wird auf alle deine anderen Dienste kopiert';

  @override
  String syncAheadFrom(String service) {
    return 'Von $service';
  }

  @override
  String get syncConfirm => 'Vor dem Sync prüfen';

  @override
  String get syncConfirmDesc =>
      'Zeig, was „Alles synchronisieren\" ändert und wie viele Anfragen dafür nötig sind';

  @override
  String get syncPreviewTitle => 'Bereit zum Synchronisieren';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates Updates, $adds neu';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Etwa $count Anfragen';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'Für $count IDs ist erst eine Suche nötig';
  }

  @override
  String get syncPreviewNothing => 'Nichts zu ändern';

  @override
  String get syncStart => 'Start';

  @override
  String get syncRetry => 'Erneut versuchen';

  @override
  String get syncSkip => 'Dieses Element überspringen';

  @override
  String get syncInclude => 'Dieses Element wieder einbeziehen';

  @override
  String get syncSkippedLabel => 'Übersprungen';

  @override
  String get syncChanges => 'Unterschiede';

  @override
  String get syncChangeStatus => 'Status';

  @override
  String get syncChangeProgress => 'Fortschritt';

  @override
  String get syncChangeScore => 'Bewertung';

  @override
  String get syncChangeDates => 'Daten';

  @override
  String get syncChangeRepeat => 'Anzahl Wiederholungen';

  @override
  String get syncFailedReason => 'Warum es fehlgeschlagen ist';

  @override
  String get syncSkippedHint =>
      'Übersprungene Elemente bleiben unberührt, auch nach erneutem Abrufen';

  @override
  String get commentsRules => 'Kommentarregeln';

  @override
  String get commentsRulesBody =>
      'WER EINE REGEL BRICHT, FLIEGT RAUS\n\n1. Kein Rassismus, keine Diskriminierung oder Hassrede\n2. Kein Spam, keine Eigenwerbung\n3. Absolut keine NSFW-Inhalte\n4. Nur Englisch, keine Ausnahmen\n5. Keine Nachahmung, Belästigung oder Beleidigung\n6. Keine illegalen Inhalte oder extreme Respektlosigkeit gegenüber einem Fandom\n7. Frag nicht nach Repositories oder Erweiterungen und teil sie nicht\n8. Spoiler nur mit Spoiler-Tag und Warnung\n9. Keine sexualisierenden oder unangemessenen Kommentare über minderjährige Charaktere\n10. Wenn es falsch ist, poste es nicht!';

  @override
  String get commentsRulesAccept => 'Verstanden';

  @override
  String get commentsSortNewest => 'Neueste';

  @override
  String get commentsSortOldest => 'Älteste';

  @override
  String get commentsSortHighest => 'Am besten bewertet';

  @override
  String get commentsSortLowest => 'Am schlechtesten bewertet';

  @override
  String commentsEpisodeShort(int number) {
    return 'Folge $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Kap. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Nach Folge filtern';

  @override
  String get commentsFilterChapterTitle => 'Nach Kapitel filtern';

  @override
  String get commentsFilterTagTitle =>
      'Gib eine Folgen- oder Kapitelnummer ein';

  @override
  String get commentsFilterHint => 'Nummer';

  @override
  String get commentsFilterApply => 'Filtern';

  @override
  String get commentsFilterClear => 'Alle anzeigen';

  @override
  String get commentsPlaceholder => 'Kommentar hinzufügen…';

  @override
  String commentsReplyingTo(String name) {
    return 'Antwort an $name';
  }

  @override
  String get commentsSend => 'Senden';

  @override
  String get commentsTagButton => 'Tag';

  @override
  String commentsTagTitle(String label) {
    return 'Tag $label (optional)';
  }

  @override
  String get commentsTagEpisode => 'Folge';

  @override
  String get commentsTagChapter => 'Kapitel';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Nummer: $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Der Tag darf die Gesamtzahl ($total) nicht überschreiten';
  }

  @override
  String get commentsNoTag => 'Kein Tag';

  @override
  String get commentsSpoiler => 'Spoiler';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIFs suchen';

  @override
  String get commentsGifEmpty => 'Keine GIFs gefunden';

  @override
  String get commentsEmptyText => 'Der Kommentar darf nicht leer sein';

  @override
  String get commentsBannedYou => 'Du bist vom Kommentieren ausgeschlossen';

  @override
  String get commentsEdited => 'Kommentar bearbeitet';

  @override
  String get commentsDeleted => 'Kommentar gelöscht';

  @override
  String get commentsDeletedPlaceholder => '[gelöscht]';

  @override
  String get commentsReported => 'Kommentar gemeldet';

  @override
  String get commentsUserBanned => 'Nutzer gesperrt';

  @override
  String get commentsReport => 'Melden';

  @override
  String get commentsReportAsk => 'Diesen Kommentar den Moderatoren melden?';

  @override
  String get commentsDelete => 'Löschen';

  @override
  String get commentsDeleteAsk => 'Dieser Kommentar wird für alle entfernt.';

  @override
  String get commentsBan => 'Sperren';

  @override
  String get commentsBanAsk => 'Diesen Nutzer vom Kommentieren ausschließen?';

  @override
  String get commentsCopy => 'Kopieren';

  @override
  String get commentsViewReply => '1 Antwort ansehen';

  @override
  String commentsViewReplies(int count) {
    return '$count Antworten ansehen';
  }

  @override
  String get commentsHideReplies => 'Antworten ausblenden';

  @override
  String get commentsLoadMore => 'Mehr Kommentare laden';

  @override
  String get commentsEmpty => 'Noch keine Kommentare. Sei der Erste!';

  @override
  String get commentsEmptyFiltered => 'Keine Kommentare für diesen Filter';

  @override
  String get commentsSignIn =>
      'Melde dich bei AniList an, um Kommentare zu lesen und zu schreiben';

  @override
  String get commentsSignInMessage =>
      'Kommentare werden von allen Diensten geteilt und nutzen dein AniList-Konto.';

  @override
  String get commentsUnavailable => 'Für diesen Titel gibt es keine Kommentare';

  @override
  String get commentsUnavailableMessage =>
      'Er konnte keinem AniList-Eintrag zugeordnet werden.';

  @override
  String get commentsDisabled => 'Kommentare sind ausgeschaltet';

  @override
  String get commentsDisabledMessage =>
      'Du kannst sie unter Einstellungen › Allgemein wieder einschalten.';

  @override
  String get commentsOffline => 'Kommentare konnten nicht geladen werden';

  @override
  String get commentsSingleTitle => 'Ein Kommentar wird angezeigt';

  @override
  String get commentsShowAll => 'Alle Kommentare anzeigen';

  @override
  String get commentsSettingsHeader => 'Kommentare';

  @override
  String get commentsSettingEnabled => 'Kommentare';

  @override
  String get commentsSettingEnabledDesc =>
      'Zeig den Kommentare-Tab bei Titeln und meld dich mit deinem AniList-Konto am Kommentarserver an';

  @override
  String get commentsSettingAlerts => 'Antwort-Benachrichtigungen';

  @override
  String get commentsSettingAlertsDesc =>
      'Benachrichtige mich, wenn jemand auf meine Kommentare antwortet';

  @override
  String get commentsNoticeReplyTitle => 'Neue Antwort auf Kommentar';

  @override
  String commentsNoticeReply(String name) {
    return '$name hat auf deinen Kommentar geantwortet';
  }

  @override
  String get commentsNoticeWarningTitle => 'Du hast eine Verwarnung erhalten';

  @override
  String get commentsNoticeWarning =>
      'Sei bei deinen Kommentaren etwas rücksichtsvoller';

  @override
  String get commentsNoticeUpdateTitle => 'Update von Dantotsu';

  @override
  String get barcodeTitle => 'Barcode scannen';

  @override
  String get barcodeTooltip =>
      'Finde einen Manga oder Roman über seinen Barcode';

  @override
  String get barcodeIntro =>
      'Halt die Kamera auf den Barcode auf der Rückseite eines Bandes oder tipp die ISBN ein.';

  @override
  String get barcodeIntroManual =>
      'Tipp die ISBN ein, die über dem Barcode auf der Rückseite eines Bandes steht.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Das ist keine gültige ISBN';

  @override
  String barcodeNotFound(String isbn) {
    return 'Kein Buch für $isbn gefunden';
  }

  @override
  String get barcodeCameraDenied =>
      'Die Kamera ist nicht verfügbar. Erlaub den Kamerazugriff oder tipp stattdessen die ISBN ein.';

  @override
  String get themesTitle => 'Openings & Endings';

  @override
  String get themesPlayVideo => 'Video abspielen';

  @override
  String get themesPlayAudio => 'Nur Audio abspielen';

  @override
  String get themesOpenSite => 'Auf AnimeThemes öffnen';

  @override
  String get themesCredit => 'Themes von AnimeThemes';

  @override
  String get themesVersions => 'Versionen';

  @override
  String get sauceTitle => 'Quelle finden';

  @override
  String get sauceIntro =>
      'Lad eine Manga-Seite oder ein Artwork hoch oder füg den Link ein, um herauszufinden, woher es stammt.';

  @override
  String get sauceKeyTitle => 'SauceNAO-API-Schlüssel';

  @override
  String get sauceKeyHint => 'Optional, erhöht das tägliche Suchlimit';

  @override
  String get sauceKeyDesc =>
      'Hol dir einen kostenlosen Schlüssel auf saucenao.com/user.php';

  @override
  String get sauceOpen => 'Quelle öffnen';

  @override
  String get sauceCredit => 'Bildersuche von SauceNAO';

  @override
  String get sauceEmpty => 'Kein Treffer gefunden';

  @override
  String get sauceTooltip =>
      'Finde die Quelle einer Manga-Seite oder eines Artworks';

  @override
  String get trendzTitle => 'Anime-Charts';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Weibliche Charaktere';

  @override
  String get trendzMale => 'Männliche Charaktere';

  @override
  String get trendzCouple => 'Paare';

  @override
  String get trendzCredit => 'Wöchentliche Charts von AniTrendz';

  @override
  String get trendzNew => 'NEU';

  @override
  String get trendzEmpty => 'Die Chart ist leer';

  @override
  String get shareCard => 'Karte teilen';

  @override
  String get shareCardList => 'Listenkarte teilen';

  @override
  String get shareCardSaved => 'Karte gespeichert';

  @override
  String get shareCardFailed => 'Karte konnte nicht erstellt werden';

  @override
  String get shareCardListEmpty => 'Deine Liste hat noch nichts zum Teilen';

  @override
  String get shareCardTop => 'Meine Top-Empfehlungen';

  @override
  String themesEpisodes(String eps) {
    return 'Folgen $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent % Übereinstimmung';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Woche $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count Stimmen';
  }

  @override
  String trendzPeak(String rank) {
    return 'Spitze: #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count Wochen in den Top Ten';
  }

  @override
  String get imageSearchTitle => 'Bildersuche';

  @override
  String get imageSearchTooltip => 'Finde einen Anime anhand eines Screenshots';

  @override
  String get imageSearchIntro =>
      'Wähl einen Screenshot oder füg einen Bildlink ein, dann findet trace.moe die Folge und den Moment, aus dem er stammt.';

  @override
  String get imageSearchPick => 'Bild auswählen';

  @override
  String get imageSearchLinkHint => 'Bildlink einfügen';

  @override
  String get imageSearchGo => 'Suchen';

  @override
  String get imageSearchEmpty => 'Kein Treffer gefunden';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Folge $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'bei $time';
  }

  @override
  String get imageSearchPreview => 'Clip-Vorschau';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent % Übereinstimmung';
  }

  @override
  String get imageSearchCredit => 'Bereitgestellt von trace.moe';

  @override
  String get imageSearchOpenFailed =>
      'Dieser Titel konnte nicht geöffnet werden';

  @override
  String get groups => 'Gruppen';

  @override
  String get groupsYours => 'Deine Gruppen';

  @override
  String get groupsPopular => 'Beliebt';

  @override
  String get groupsNew => 'Neu';

  @override
  String get groupsFeatured => 'Empfohlen';

  @override
  String get groupsSearch => 'Gruppen suchen';

  @override
  String get groupsAll => 'Alle';

  @override
  String get groupsEmpty => 'Keine Gruppen gefunden';

  @override
  String get groupsEmptyYours => 'Du bist noch keiner Gruppe beigetreten';

  @override
  String get groupsSignIn => 'Melde dich an, um deine Gruppen zu sehen';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Mitglieder',
      one: '1 Mitglied',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Beitreten';

  @override
  String get groupsJoined => 'Beigetreten';

  @override
  String get groupsLeave => 'Gruppe verlassen';

  @override
  String get groupsLeaveAsk =>
      'Du siehst die Beiträge dieser Gruppe nicht mehr in deinem Feed.';

  @override
  String get groupsJoinFailed =>
      'Beitritt nicht möglich, vielleicht nur mit Einladung';

  @override
  String get groupsLeaveFailed => 'Die Gruppe konnte nicht verlassen werden';

  @override
  String get groupsPosts => 'Beiträge';

  @override
  String get groupsMembersTab => 'Mitglieder';

  @override
  String get groupsAbout => 'Über';

  @override
  String get groupsRules => 'Regeln';

  @override
  String get groupsPrivacyOpen => 'Offen';

  @override
  String get groupsPrivacyRestricted => 'Eingeschränkt';

  @override
  String get groupsPrivacyClosed => 'Geschlossen';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Admin';

  @override
  String get groupsRoleMod => 'Mod';

  @override
  String get groupsCouldntLoad => 'Diese Gruppe konnte nicht geladen werden';

  @override
  String get groupsNewPost => 'In Gruppe posten';

  @override
  String get groupsPostHint => 'Teile etwas mit der Gruppe';

  @override
  String get groupsOpenInBrowser => 'Im Browser öffnen';

  @override
  String get groupsCategory => 'Kategorie';

  @override
  String get groupsLanguage => 'Sprache';

  @override
  String get groupsCreated => 'Erstellt';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Leiter',
      one: '1 Leiter',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Datenschutz';

  @override
  String get notificationsAll => 'Alle';

  @override
  String get notificationsAiring => 'Läuft';

  @override
  String get notificationsMedia => 'Neue Titel';

  @override
  String get notificationsReplies => 'Antworten';

  @override
  String get notificationsMentions => 'Erwähnungen';

  @override
  String get notificationsMessages => 'Nachrichten';

  @override
  String get notificationsLikes => 'Likes';

  @override
  String get notificationsFollows => 'Follows';

  @override
  String get notificationsNoServices =>
      'Kein angemeldeter Dienst hat Benachrichtigungen';

  @override
  String get notificationsNoServicesMessage =>
      'Melde dich bei einem Dienst an, der Benachrichtigungen schickt, dann erscheinen sie hier.';

  @override
  String get notificationsEmptyKind => 'In dieser Kategorie ist noch nichts';

  @override
  String get notificationsCommentsEmpty => 'Keine Kommentar-Benachrichtigungen';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Antworten auf deine Kommentare und Ankündigungen von Dantotsu erscheinen hier.';

  @override
  String get notificationsSettings => 'Benachrichtigungseinstellungen';

  @override
  String get notificationsPollTitle => 'Nach neuen Benachrichtigungen suchen';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Alle $minutes Minuten, solange die App offen ist';
  }

  @override
  String get notificationsNotifyAbout => 'Benachrichtige mich über';

  @override
  String get notificationsCommentsHeader => 'Kommentar-Benachrichtigungen';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Zeig eine Systembenachrichtigung für jede ungelesene $service-Benachrichtigung, solange die App läuft.';
  }

  @override
  String get notificationsTestSent => 'Testbenachrichtigung gesendet';

  @override
  String get notificationsTestDenied =>
      'Benachrichtigungen sind für Dartotsu nicht erlaubt. Schalte sie in den Systemeinstellungen ein.';

  @override
  String get notificationsTestHint =>
      'Lang drücken, um eine Testbenachrichtigung zu senden';

  @override
  String get notificationsTestSample => 'Das ist eine Testbenachrichtigung';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name hat auf deinen Kommentar bei $media geantwortet';
  }

  @override
  String get imageSearchNotLink => 'Das sieht nicht nach einem Link aus';

  @override
  String get imageSearchQuota => 'Suchkontingent überschritten';

  @override
  String get imageSearchBusy => 'Zu viele Anfragen, versuch es gleich nochmal';

  @override
  String imageSearchFailed(int code) {
    return 'Suche fehlgeschlagen ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count neue Benachrichtigungen';
  }

  @override
  String get reactionsTitle => 'Reaktionen';

  @override
  String get reactionsNeedEntry =>
      'Füg diesen Titel zu deiner Liste hinzu, bevor du reagierst';

  @override
  String get reactionsAdd => 'Reaktion hinzufügen';

  @override
  String get reactionsHint => 'Wie fandest du ihn? (kurz und spoilerfrei)';

  @override
  String get reactionsPost => 'Posten';

  @override
  String get reactionsFailed => 'Die Reaktion konnte nicht aktualisiert werden';

  @override
  String get settingsWatch => 'Schauen & lesen';

  @override
  String get settingsWatchDesc =>
      'Folgenlisten, Quellenabgleich und Folgendetails';

  @override
  String get watchSettingsLayout => 'Folgenliste';

  @override
  String get watchSettingsSources => 'Quellen';

  @override
  String get watchSettingsMetadata => 'Folgendetails';

  @override
  String get watchLayout => 'Layout';

  @override
  String get watchListView => 'Liste';

  @override
  String get watchGridView => 'Raster';

  @override
  String get watchCompactView => 'Kompakt';

  @override
  String get watchDefaultLayoutDesc =>
      'Wie Folgen und Kapitel angeordnet werden, bis du es für einen Titel änderst';

  @override
  String get watchChunkSize => 'Bereichsgröße';

  @override
  String get watchChunkSizeDesc =>
      'Wie viele Folgen oder Kapitel jeder Bereichs-Tab enthält';

  @override
  String get watchShowDescription => 'Beschreibungen anzeigen';

  @override
  String get watchShowDescriptionDesc =>
      'Zeig die Folgenzusammenfassung unter jedem Titel im Listen-Layout';

  @override
  String get watchShowFiller => 'Filler-Folgen anzeigen';

  @override
  String get watchShowFillerDesc =>
      'Ausschalten, um als Filler markierte Folgen auszublenden';

  @override
  String get watchBlurUnwatched => 'Spoiler-Thumbnails verbergen';

  @override
  String get watchBlurUnwatchedDesc =>
      'Verwischt das Thumbnail von Folgen, die du noch nicht geschaut hast';

  @override
  String get watchResumeShelf => 'Fortsetzen-Regal';

  @override
  String get watchResumeShelfDesc =>
      'Die Fortsetzen-Reihe auf der Startseite anzeigen';

  @override
  String get watchMarkOnLongPress => 'Lange drücken markiert Fortschritt';

  @override
  String get watchMarkOnLongPressDesc =>
      'Drück lange auf eine Folge oder ein Kapitel, um sie als gesehen oder ungesehen zu markieren';

  @override
  String get watchMatching => 'Quellenabgleich';

  @override
  String get watchMatchingDesc =>
      '„Nächstliegend\" nimmt das beste Suchergebnis. „Nur exakt\" akzeptiert nur einen nahezu identischen Titel und überlässt den Rest dir.';

  @override
  String get watchMatchClosest => 'Nächstliegender Treffer';

  @override
  String get watchMatchExact => 'Nur exakter Treffer';

  @override
  String get watchMetadataDesc =>
      'Woher Folgentitel, Zusammenfassungen, Thumbnails, Ausstrahlungsdaten und Filler-Markierungen kommen. Zieh zum Festlegen der Priorität; die erste Quelle mit einem Wert gewinnt.';

  @override
  String get watchMetaAniZipDesc =>
      'Folgentitel, Zusammenfassungen, Standbilder und Ausstrahlungsdaten';

  @override
  String get watchMetaKitsuDesc => 'Folgentitel, Beschreibungen und Thumbnails';

  @override
  String get watchMetaSimklDesc =>
      'Folgentitel, Beschreibungen, Standbilder und Ausstrahlungsdaten';

  @override
  String get watchMetaAniListDesc =>
      'Folgentitel fürs Streaming, Thumbnails und der Sendeplan';

  @override
  String get watchMetaTenraiDesc =>
      'MyAnimeList-Folgentitel, Ausstrahlungsdaten, Filler- und Recap-Markierungen über Tenrai';

  @override
  String get watchClearMetadata => 'Folgendetails aktualisieren';

  @override
  String get watchClearMetadataDesc =>
      'Zwischengespeicherte Folgendetails verwerfen, damit sie neu geladen werden';

  @override
  String get watchMetadataCleared => 'Folgendetails werden neu geladen';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Folgen',
      one: '1 Folge',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Kapitel',
      one: '1 Kapitel',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Folge $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Kapitel $number';
  }

  @override
  String get watchSearching => 'Suche läuft…';

  @override
  String watchSearchingFor(String term) {
    return 'Suche: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Ausgewählt: $title';
  }

  @override
  String watchFound(String title) {
    return 'Gefunden: $title';
  }

  @override
  String get watchNothingFound => 'In dieser Quelle nichts gefunden';

  @override
  String get watchSearchFailed => 'Die Quellensuche ist fehlgeschlagen';

  @override
  String get watchLoadFailed => 'Die Liste konnte nicht geladen werden';

  @override
  String get watchSignInToTrack =>
      'Melde dich an, um deinen Fortschritt zu tracken';

  @override
  String watchInstallSource(String action) {
    return 'Installier eine Erweiterung, um mit $action zu starten';
  }

  @override
  String get watchSourceMissing => 'Diese Quelle ist nicht installiert';

  @override
  String get watchWrongTitle => 'Falscher Titel?';

  @override
  String get watchSearchAgain => 'Erneut suchen';

  @override
  String watchSearchSource(String source) {
    return '$source durchsuchen';
  }

  @override
  String get watchSource => 'Quelle';

  @override
  String get watchOptions => 'Optionen';

  @override
  String get watchReverse => 'Reihenfolge umkehren';

  @override
  String get watchScanlators => 'Gruppen';

  @override
  String get watchResetOptions => 'Diese Optionen zurücksetzen';

  @override
  String get watchContinue => 'Weiter';

  @override
  String get watchStart => 'Start';

  @override
  String get watchPlay => 'Abspielen';

  @override
  String get watchRead => 'Lesen';

  @override
  String get watchMarkWatched => 'Als gesehen markieren';

  @override
  String get watchMarkUnwatched => 'Als ungesehen markieren';

  @override
  String get watchMarkRead => 'Als gelesen markieren';

  @override
  String get watchMarkUnread => 'Als ungelesen markieren';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Keine Folgen gefunden';

  @override
  String get watchNoChapters => 'Keine Kapitel gefunden';

  @override
  String get watchSourceTools => 'Quellen-Tools';

  @override
  String get watchSourceSettings => 'Quelleneinstellungen';

  @override
  String get watchOpenWebView => 'In Webansicht öffnen';

  @override
  String get watchOpenWebViewDesc =>
      'Löse eine Cloudflare-Prüfung oder meld dich an; die Cookies werden mit den Quellenanfragen geteilt';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Cookies für $host gespeichert',
      one: '1 Cookie für $host gespeichert',
      zero: 'Keine Cookies für $host gespeichert',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare-Freigabe aktiv, $time';
  }

  @override
  String get watchClearanceMissing => 'Kein Cloudflare-Freigabe-Cookie';

  @override
  String get watchClearanceSession => 'gilt, bis die App geschlossen wird';

  @override
  String get watchAgentShared =>
      'Anfragen nutzen den User-Agent der Webansicht, den Cloudflare prüft';

  @override
  String get watchAgentCustom =>
      'Ein eigener User-Agent ist gesetzt, daher wird eine Cloudflare-Freigabe aus der Webansicht eventuell abgelehnt';

  @override
  String get watchTestConnection => 'Verbindung testen';

  @override
  String get watchSolveChallenge => 'Lösen';

  @override
  String watchProbeOk(int code) {
    return 'Erreichbar (HTTP $code)';
  }

  @override
  String get watchProbeChallenge =>
      'Cloudflare verlangt weiterhin eine Prüfung';

  @override
  String watchProbeBlocked(int code) {
    return 'Von der Seite blockiert (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Die Seite war nicht erreichbar';

  @override
  String get watchClearCookies => 'Cookies für diese Seite löschen';

  @override
  String get watchCookiesCleared => 'Cookies gelöscht';

  @override
  String get watchMetaSource => 'Folgendetails von';

  @override
  String get watchMetaAuto => 'Automatisch';

  @override
  String get watchMetaOff => 'Aus';

  @override
  String get playerSettingsTitle => 'Player-Einstellungen';

  @override
  String get playerSectionPlayback => 'Wiedergabe';

  @override
  String get playerSectionSkip => 'Überspringen';

  @override
  String get playerSectionGestures => 'Steuerung';

  @override
  String get playerSectionSubtitles => 'Untertitel';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Engine';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Wiedergabegeschwindigkeit';

  @override
  String get playerCursedSpeed => 'Zusätzliche Geschwindigkeiten';

  @override
  String get playerCursedSpeedDesc =>
      'Geschwindigkeiten bis 10x zur Liste hinzufügen';

  @override
  String get playerResize => 'Größenmodus';

  @override
  String get playerFitFit => 'Einpassen';

  @override
  String get playerFitCover => 'Füllen';

  @override
  String get playerFitStretch => 'Strecken';

  @override
  String get playerSkipDuration => 'Länge des Überspringen-Buttons';

  @override
  String get playerSkipDurationDesc =>
      'Sekunden, die der Überspringen-Button außerhalb von Openings und Endings springt';

  @override
  String get playerSeekDuration => 'Doppeltippen zum Vor-/Zurückspulen';

  @override
  String get playerSeekDurationDesc =>
      'Sekunden, die bei Doppeltipp oder Pfeiltaste gesprungen wird';

  @override
  String get playerAutoPlay => 'Nächste automatisch abspielen';

  @override
  String get playerAutoPlayDesc =>
      'Die nächste Folge starten, wenn diese zu Ende ist';

  @override
  String get playerResume => 'Dort weitermachen, wo du aufgehört hast';

  @override
  String get playerResumeDesc =>
      'Eine Folge an der letzten Position fortsetzen';

  @override
  String get playerOrientation => 'Ausrichtung';

  @override
  String get playerOrientationAuto => 'Dem Gerät folgen';

  @override
  String get playerOrientationLandscape => 'Querformat';

  @override
  String get playerOrientationPortrait => 'Hochformat';

  @override
  String get playerAutoSkipOpening => 'Openings überspringen';

  @override
  String get playerAutoSkipEnding => 'Endings überspringen';

  @override
  String get playerAutoSkipRecap => 'Recaps überspringen';

  @override
  String get playerAutoSkipDesc =>
      'Sofort überspringen, sobald es beginnt, mithilfe von AniSkip und Stream-Zeitstempeln';

  @override
  String get playerSkipOnce => 'Nur einmal überspringen';

  @override
  String get playerSkipOnceDesc =>
      'Denselben Teil nicht nochmal überspringen, wenn du zurückspulst';

  @override
  String get playerAdjustBrightness => 'Helligkeitsgeste';

  @override
  String get playerAdjustBrightnessDesc =>
      'Wisch auf der rechten Bildschirmhälfte nach oben und unten';

  @override
  String get playerAdjustVolume => 'Lautstärkegeste';

  @override
  String get playerAdjustVolumeDesc =>
      'Wisch auf der linken Bildschirmhälfte nach oben und unten';

  @override
  String get playerHoldToSpeed => 'Halten zum Beschleunigen';

  @override
  String get playerHoldToSpeedDesc =>
      'Halt das Video gedrückt, um schneller abzuspielen, und zieh zur Seite, um das Tempo zu ändern';

  @override
  String get playerThumbless => 'Dickere Suchleiste';

  @override
  String get playerThumblessDesc => 'Eine dicke Leiste ohne Regler';

  @override
  String get playerShowSubtitles => 'Untertitel anzeigen';

  @override
  String get playerShowSubtitlesDesc =>
      'Ausschalten, um alle Untertitelspuren zu verbergen';

  @override
  String get playerSubtitleLanguage => 'Bevorzugte Untertitelsprache';

  @override
  String get playerSubtitleSize => 'Untertitelgröße';

  @override
  String get playerSubtitleWeight => 'Untertitelstärke';

  @override
  String get playerSubtitleBottom => 'Abstand der Untertitel nach unten';

  @override
  String get playerSubtitleFont => 'Untertitelschrift';

  @override
  String get playerSubtitleColor => 'Untertitelfarbe';

  @override
  String get playerSubtitleBackground => 'Untertitelhintergrund';

  @override
  String get playerSubtitleOutline => 'Untertitelkontur';

  @override
  String get playerLibass => 'libass verwenden';

  @override
  String get playerLibassDesc =>
      'Gestaltete .ass-Untertitel rendern. Größe, Farbe und Schrift oben gelten dann nicht mehr';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Shader aktivieren';

  @override
  String get playerShadersEnableDesc =>
      'Bild mit GLSL-Shadern wie Anime4K hochskalieren und bereinigen';

  @override
  String get playerShadersOff => 'Shader aus';

  @override
  String get playerShadersMissing => 'Anime4K ist nicht installiert';

  @override
  String get playerShadersMissingDesc =>
      'Lad das Anime4K-Shader-Paket herunter (ca. 0,8 MB), um die eingebauten Modi zu nutzen.';

  @override
  String get playerShadersDownload => 'Anime4K herunterladen';

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
  String get playerShadersPreview => 'Vorschau an diesem Frame';

  @override
  String get playerShadersUse => 'Das nehmen';

  @override
  String get playerPicture => 'Bild';

  @override
  String get playerColors => 'Farben';

  @override
  String get playerColorDefault => 'Standard';

  @override
  String get playerColorVivid => 'Lebendig';

  @override
  String get playerColorPop => 'Anime-Pop';

  @override
  String get playerColorSoft => 'Weich';

  @override
  String get playerColorCinematic => 'Filmisch';

  @override
  String get playerColorBright => 'Hell';

  @override
  String get playerColorNight => 'Nacht';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Benutzerdefiniert';

  @override
  String get playerColorBrightness => 'Helligkeit';

  @override
  String get playerColorContrast => 'Kontrast';

  @override
  String get playerColorSaturation => 'Sättigung';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Farbton';

  @override
  String get playerColorReset => 'Zurücksetzen';

  @override
  String get playerColorAdjust => 'Anpassen';

  @override
  String get playerShadersOriginal => 'Original';

  @override
  String get playerShadersPreviewFailed =>
      'Es konnte kein Frame für die Vorschau geholt werden';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Deine Shader';

  @override
  String get playerShadersCustom => 'Eigene Shader';

  @override
  String get playerShadersImport => '.glsl importieren';

  @override
  String get playerShadersNone =>
      'Importier deine eigenen .glsl- oder .hook-Dateien und hak sie an, um sie zu verketten';

  @override
  String get playerShadersBadFile => 'Wähl eine .glsl- oder .hook-Shader-Datei';

  @override
  String get playerDecoder => 'Decoder';

  @override
  String get playerDecoderAuto => 'Auto';

  @override
  String get playerDecoderAutoSafe => 'Auto (sicher)';

  @override
  String get playerDecoderSoftware => 'Software';

  @override
  String get playerDecoderHardware => 'Hardware';

  @override
  String get playerDecoderHardwarePlus => 'Hardware+';

  @override
  String get playerVideoOutput => 'Videoausgabe';

  @override
  String get playerAudioChannels => 'Audiokanäle';

  @override
  String get playerBuffer => 'Puffergröße (MB)';

  @override
  String get playerBufferDesc =>
      'Speicher, den der Player zum Puffern eines Streams nutzen darf';

  @override
  String get playerUseMpvConf => 'mpv.conf verwenden';

  @override
  String get playerUseMpvConfDesc =>
      'Die Optionen aus deiner mpv.conf beim Start der Wiedergabe anwenden';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Die mpv-Konfiguration bearbeiten';

  @override
  String get playerMpvConfDesc =>
      'Eine Option pro Zeile, wie --hwdec=auto in einer normalen mpv.conf. Profile in [Klammern] werden ignoriert.';

  @override
  String get playerMpvConfSaved => 'mpv.conf gespeichert';

  @override
  String get playerUseScripts => 'mpv-Skripte verwenden';

  @override
  String get playerUseScriptsDesc =>
      'Plugins aus dem Skripte-Ordner laden. Dafür braucht es einen libmpv-Build mit Lua- oder JavaScript-Unterstützung';

  @override
  String get playerScripts => 'mpv-Skripte';

  @override
  String get playerScriptsManage =>
      'Plugins hinzufügen, entfernen und umschalten';

  @override
  String get playerScriptsAdd => 'Skript hinzufügen';

  @override
  String get playerScriptsDesc =>
      'Hier abgelegte Lua-, JavaScript- und native Plugins werden beim Start der Wiedergabe geladen.';

  @override
  String get playerScriptsNone => 'Noch keine Skripte';

  @override
  String get playerScriptsBadFile =>
      'Wähl eine .lua-, .js- oder native Plugin-Datei';

  @override
  String get playerTuning => 'Erweiterte Videoeinstellungen';

  @override
  String get playerTuningDesc =>
      'Überschreibt Sync, Caching, Skalierung und Tone Mapping. Falsche Werte können die Wiedergabe stören';

  @override
  String get playerVideoSync => 'Video-Sync';

  @override
  String get playerInterpolation => 'Frame-Interpolation';

  @override
  String get playerInterpolationDesc =>
      'Flüssigere Bewegung, braucht display-resample-Sync';

  @override
  String get playerPitch => 'Tonhöhenkorrektur';

  @override
  String get playerPitchDesc =>
      'Stimmen bei anderen Geschwindigkeiten natürlich halten';

  @override
  String get playerCacheSeconds => 'Cache (Sekunden)';

  @override
  String get playerReadahead => 'Vorauslesen (Sekunden)';

  @override
  String get playerThreads => 'Decoder-Threads';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Farbbanding in Verläufen reduzieren';

  @override
  String get playerDebandIterations => 'Deband-Iterationen';

  @override
  String get playerDebandThreshold => 'Deband-Schwelle';

  @override
  String get playerCorrectDownscaling => 'Korrektes Herunterskalieren';

  @override
  String get playerSigmoid => 'Sigmoid-Hochskalierung';

  @override
  String get playerScale => 'Upscaler';

  @override
  String get playerCscale => 'Chroma-Upscaler';

  @override
  String get playerDscale => 'Downscaler';

  @override
  String get playerToneMapping => 'Tone Mapping';

  @override
  String get playerTargetPeak => 'Zielspitze';

  @override
  String get playerOpenFiles => 'Videodateien öffnen';

  @override
  String get playerOpenFilesDesc => 'Dateien von diesem Gerät abspielen';

  @override
  String get playerOpenFolder => 'Ordner öffnen';

  @override
  String get playerOpenFolderDesc =>
      'Alle Videos in einem Ordner als Playlist abspielen';

  @override
  String get playerNetworkStream => 'Netzwerk-Stream';

  @override
  String get playerNetworkStreamDesc =>
      'Einen direkten Video- oder HLS-Link öffnen';

  @override
  String get playerStreamUrl => 'Stream-URL';

  @override
  String get playerStreamReferer => 'Referer (optional)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Einen Magnet-Link oder eine .torrent-Datei streamen';

  @override
  String get playerMagnetLink => 'Magnet-Link oder Torrent-URL';

  @override
  String get playerPickTorrent => 'Wähl eine .torrent-Datei';

  @override
  String get playerTorrentMissing =>
      'Installier zuerst das Torrent-Add-on unter Einstellungen > Add-ons';

  @override
  String get playerNoVideos => 'Keine abspielbaren Videos gefunden';

  @override
  String get playerReset => 'Player-Einstellungen zurücksetzen';

  @override
  String get playerResetDesc =>
      'Alle Player-Optionen auf Standard zurücksetzen';

  @override
  String get playerResetConfirm => 'Alle Player-Einstellungen zurücksetzen?';

  @override
  String get playerResetDone => 'Player-Einstellungen zurückgesetzt';

  @override
  String get playerQuality => 'Qualität';

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
  String get playerStreams => 'Streams';

  @override
  String get playerAutoSelect => 'Stream automatisch wählen';

  @override
  String get playerAutoSelectDesc =>
      'Den Stream wählen, der deiner letzten Wahl für diesen Titel am ähnlichsten ist';

  @override
  String get playerLoadingStreams => 'Suche nach Streams…';

  @override
  String get playerNoStreams => 'Diese Folge hat keine Streams';

  @override
  String get playerNoStreamsTitle => 'Keine Streams gefunden';

  @override
  String get playerFailed => 'Wiedergabe fehlgeschlagen';

  @override
  String get playerTorrentNeeded => 'Dieser Stream ist ein Torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Installier das Torrent-Add-on, um Magnet-Links und .torrent-Dateien abzuspielen';

  @override
  String get playerOpenAddons => 'Add-ons öffnen';

  @override
  String get playerTryAnotherStream => 'Anderen Stream probieren';

  @override
  String get playerEpisodes => 'Folgen';

  @override
  String get playerLock => 'Steuerung sperren';

  @override
  String get playerFullscreen => 'Vollbild';

  @override
  String get readerChapters => 'Kapitel';

  @override
  String get readerSettingsTitle => 'Reader-Einstellungen';

  @override
  String get readerPreviousChapter => 'Vorheriges Kapitel';

  @override
  String get readerNextChapter => 'Nächstes Kapitel';

  @override
  String get readerFirstChapter => 'Das ist das erste Kapitel';

  @override
  String get readerLastChapter => 'Du bist auf dem neuesten Stand';

  @override
  String get readerFailed => 'Dieses Kapitel konnte nicht geöffnet werden';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Dieses Kapitel hat keinen Text';

  @override
  String get readerPerTitle => 'Nur für diesen Titel';

  @override
  String get readerPerTitleDesc =>
      'Diese Reader-Einstellungen nur für diesen Titel behalten';

  @override
  String get readerSectionReading => 'Lesen';

  @override
  String get readerSectionControls => 'Steuerung';

  @override
  String get readerSectionDisplay => 'Anzeige';

  @override
  String get readerSectionNovel => 'Novel';

  @override
  String get readerMode => 'Lesemodus';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Von rechts nach links';

  @override
  String get readerModeLtr => 'Von links nach rechts';

  @override
  String get readerModeVertical => 'Vertikale Seiten';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Endloses Scrollen';

  @override
  String get readerScale => 'Bildskalierung';

  @override
  String get readerScaleFit => 'An Bildschirm anpassen';

  @override
  String get readerScaleWidth => 'An Breite anpassen';

  @override
  String get readerScaleHeight => 'An Höhe anpassen';

  @override
  String get readerScaleOriginal => 'Originalgröße';

  @override
  String get readerScaleSmart => 'Smart-Anpassung';

  @override
  String get readerDoublePage => 'Doppelseiten';

  @override
  String get readerDoublePageDesc =>
      'Im Querformat zwei Seiten nebeneinander zeigen';

  @override
  String get readerDoubleTapZoom => 'Doppeltippen zum Zoomen';

  @override
  String get readerDoubleTapZoomDesc =>
      'Eine Seite per Doppeltipp ein- und auszoomen';

  @override
  String get readerAnimate => 'Seitenanimation';

  @override
  String get readerAnimateDesc => 'Seitenwechsel animieren';

  @override
  String get readerSidePadding => 'Seitenrand';

  @override
  String get readerSidePaddingDesc => 'Platz neben den Seiten in Prozent';

  @override
  String get readerPageGap => 'Seitenabstand';

  @override
  String get readerPageGapDesc => 'Platz zwischen den Seiten';

  @override
  String get readerAutoNext => 'Ins nächste Kapitel weiterlesen';

  @override
  String get readerAutoNextDesc =>
      'Das nächste Kapitel laden, während du das Ende dieses liest';

  @override
  String get readerPreload => 'Seiten vorladen';

  @override
  String get readerPreloadDesc =>
      'Wie viele Seiten im Voraus heruntergeladen werden';

  @override
  String get readerTapZones => 'Tipp-Zonen';

  @override
  String get readerTapDefault => 'Standard';

  @override
  String get readerTapLShaped => 'L-förmig';

  @override
  String get readerTapKindle => 'Kindle-ähnlich';

  @override
  String get readerTapEdge => 'Nur Ränder';

  @override
  String get readerTapOff => 'Deaktiviert';

  @override
  String get readerInvertTaps => 'Tipp-Zonen umkehren';

  @override
  String get readerInvertTapsDesc =>
      'Bereiche für Zurück und Weiter vertauschen';

  @override
  String get readerBackground => 'Hintergrund';

  @override
  String get readerBackgroundBlack => 'Schwarz';

  @override
  String get readerBackgroundGray => 'Grau';

  @override
  String get readerBackgroundWhite => 'Weiß';

  @override
  String get readerBackgroundTheme => 'App-Design';

  @override
  String get readerFilter => 'Farbfilter';

  @override
  String get readerFilterNone => 'Keiner';

  @override
  String get readerFilterGrayscale => 'Graustufen';

  @override
  String get readerFilterInvert => 'Invertiert';

  @override
  String get readerFilterSepia => 'Sepia';

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
  String get readerDim => 'Abdunkeln';

  @override
  String get readerDimDesc => 'Die Seiten abdunkeln';

  @override
  String get readerPageNumber => 'Seitenzahl';

  @override
  String get readerPageNumberDesc => 'Die Seitenzahl beim Lesen anzeigen';

  @override
  String get readerFullscreen => 'Vollbild';

  @override
  String get readerFullscreenDesc => 'Die Systemleisten ausblenden';

  @override
  String get readerCropBorders => 'Ränder zuschneiden';

  @override
  String get readerCropBordersDesc =>
      'Leere weiße oder schwarze Ränder von Seiten abschneiden';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Lautstärketasten blättern';

  @override
  String get readerVolumeKeysDesc => 'Leiser geht vor, lauter geht zurück';

  @override
  String get readerBookmarks => 'Lesezeichen';

  @override
  String get readerBookmarkAdd => 'Lesezeichen hinzufügen';

  @override
  String get readerBookmarkRemove => 'Lesezeichen entfernen';

  @override
  String get readerBookmarksEmpty => 'Noch keine Lesezeichen';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Seite $page von $total';
  }

  @override
  String get readerAutoScroll => 'Auto-Scroll';

  @override
  String get readerAutoScrollStop => 'Auto-Scroll stoppen';

  @override
  String get readerAutoScrollSpeed => 'Auto-Scroll-Tempo';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Wie schnell Seiten von allein scrollen oder blättern';

  @override
  String get readerKeepOn => 'Bildschirm anlassen';

  @override
  String get readerKeepOnDesc =>
      'Verhindert, dass sich der Bildschirm beim Lesen ausschaltet';

  @override
  String get readerOrientation => 'Ausrichtung';

  @override
  String get readerOrientationFree => 'Frei';

  @override
  String get readerOrientationPortrait => 'Hochformat';

  @override
  String get readerOrientationLandscape => 'Querformat';

  @override
  String get readerSaveProgress => 'Fortschritt speichern';

  @override
  String get readerSaveProgressDesc =>
      'Merkt sich deine Seite und markiert Kapitel als gelesen';

  @override
  String get readerReset => 'Reader-Einstellungen zurücksetzen';

  @override
  String get readerResetDesc => 'Zurück zu den Standardwerten';

  @override
  String get novelSize => 'Textgröße';

  @override
  String get novelFont => 'Schrift';

  @override
  String get novelLineHeight => 'Zeilenhöhe';

  @override
  String get novelParagraph => 'Absatzabstand';

  @override
  String get novelMargin => 'Ränder';

  @override
  String get novelTheme => 'Reader-Design';

  @override
  String get novelThemeApp => 'App-Design';

  @override
  String get novelThemeLight => 'Hell';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Dunkel';

  @override
  String get novelThemeBlack => 'Schwarz';

  @override
  String get novelJustify => 'Blocksatz';

  @override
  String get novelJustifyDesc => 'Text an beiden Rändern ausrichten';

  @override
  String get trackProgressTitle => 'Fortschritt speichern?';

  @override
  String trackProgressAnime(String name) {
    return '$name beim Schauen in deiner Liste tracken? Wähl „Nur dieses Gerät\", um es lokal zu behalten, oder Nein, um nichts zu speichern.';
  }

  @override
  String trackProgressManga(String name) {
    return '$name in deiner Liste tracken, wenn du ein Kapitel beendest? Wähl „Nur dieses Gerät\", um es lokal zu behalten, oder Nein, um nichts zu speichern.';
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
  String get trackProgressYes => 'Speichern';

  @override
  String get trackProgressReset =>
      'Die Abfrage zum Fortschritt wurde für diesen Typ zurückgesetzt, sie kommt wieder';

  @override
  String get trackProgressNo => 'Nein';

  @override
  String get trackProgressOff => 'Aus';

  @override
  String get trackProgressLocal => 'Nur dieses Gerät';

  @override
  String get trackProgressSettingAnime => 'Anime-Fortschritt tracken';

  @override
  String get trackProgressSettingManga =>
      'Manga- und Novel-Fortschritt tracken';

  @override
  String get trackProgressSettingDesc =>
      'Was passieren soll, wenn du eine Folge öffnest oder ein Kapitel beendest';

  @override
  String get trackProgressAsk => 'Fragen';

  @override
  String get trackProgressAlways => 'Immer';

  @override
  String get dantotsuImport => 'Aus Dantotsu importieren';

  @override
  String get dantotsuImportDesc =>
      'Ein Dantotsu-Einstellungs-Backup lesen (.ani oder verschlüsseltes .sani)';

  @override
  String get dantotsuPick => 'Dantotsu-Backup wählen';

  @override
  String get dantotsuNothing => 'In dieser Datei lässt sich nichts importieren';

  @override
  String get dantotsuApply => 'Auswahl importieren';

  @override
  String dantotsuDone(int done, int total) {
    return '$done von $total importiert';
  }

  @override
  String get dantotsuGroupAccounts => 'Konten';

  @override
  String get dantotsuGroupAppearance => 'Darstellung';

  @override
  String get dantotsuGroupExtensions => 'Erweiterungen';

  @override
  String get dantotsuGroupApp => 'App';

  @override
  String get dantotsuGroupPlayer => 'Player';

  @override
  String get dantotsuAnilist => 'AniList-Login';

  @override
  String get dantotsuMal => 'MyAnimeList-Login';

  @override
  String get dantotsuDiscord => 'Discord-Rich-Presence-Token';

  @override
  String get dantotsuTheme => 'Design';

  @override
  String get dantotsuReposAnime => 'Repositories für Anime-Erweiterungen';

  @override
  String get dantotsuReposManga => 'Repositories für Manga-Erweiterungen';

  @override
  String get dantotsuReposNovel => 'Repositories für Novel-Erweiterungen';

  @override
  String get dantotsuUpdates => 'Update-Prüfung';

  @override
  String get dantotsuComments => 'Kommentare';

  @override
  String get dantotsuActivity => 'AniList-Benachrichtigungsabfrage';

  @override
  String get dantotsuDns => 'DNS-Anbieter';

  @override
  String get dantotsuPlayer => 'Player-Tempo und Untertitelfarben';

  @override
  String get dantotsuWarning =>
      'Diese Datei enthält Login-Tokens. Halte sie privat.';

  @override
  String get novelIndent => 'Absätze einrücken';

  @override
  String get novelIndentDesc =>
      'Jeden Absatz mit einem Einzug in der ersten Zeile beginnen';

  @override
  String get novelLetterSpacing => 'Buchstabenabstand';

  @override
  String get novelSectionTranslate => 'Übersetzung';

  @override
  String get sectionExperimental => 'Experimentell';

  @override
  String get kitsuGraphqlDetail => 'Schnellere Detailseiten (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Einen Titel mit Charakteren, Staff und deinem Eintrag in einer einzigen Anfrage laden';

  @override
  String get togetherTitle => 'Gemeinsam schauen';

  @override
  String get togetherIntro =>
      'Füg den Raumlink ein, den dir dein Freund geschickt hat. Du trittst sofort bei, und der Player öffnet sich, wenn er mit dem Schauen anfängt.';

  @override
  String get togetherName => 'Dein Name';

  @override
  String get togetherConnecting => 'Verbinde…';

  @override
  String get togetherLeave => 'Raum verlassen';

  @override
  String get togetherYou => 'Du';

  @override
  String get togetherNoChat => 'Noch keine Nachrichten';

  @override
  String get togetherChatHint => 'Nachricht';

  @override
  String get togetherCopyInvite => 'Einladung kopieren';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Server und Raum kopiert';

  @override
  String get togetherConnectionLost => 'Verbindung verloren';

  @override
  String togetherConnectedTo(String room) {
    return 'Mit $room verbunden';
  }

  @override
  String togetherFailed(String error) {
    return 'Verbindung nicht möglich: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ist beigetreten';
  }

  @override
  String togetherLeft(String name) {
    return '$name ist gegangen';
  }

  @override
  String togetherPaused(String name) {
    return '$name hat pausiert';
  }

  @override
  String togetherResumed(String name) {
    return '$name hat fortgesetzt';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ist zu $time gesprungen';
  }

  @override
  String get togetherFollowFailed =>
      'Die Folge des Hosts konnte nicht geöffnet werden. Öffne sie selbst.';

  @override
  String get togetherJoinRole => 'Raum beitreten';

  @override
  String get togetherOpenHost => 'Folge des Hosts öffnen';

  @override
  String get togetherShowChat => 'Live-Chat anzeigen';

  @override
  String get togetherWaitingHost =>
      'Warte darauf, dass der Host eine Folge startet';

  @override
  String get togetherRoomLink => 'Raumlink';

  @override
  String get togetherBadLink => 'Das ist kein Raumlink';

  @override
  String get togetherHostClosed => 'Der Host hat den Raum geschlossen';

  @override
  String get togetherNowPlaying => 'Läuft gerade';

  @override
  String togetherWatchingCount(int count) {
    return '$count schauen zu';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user möchte pausieren';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user möchte fortsetzen';
  }

  @override
  String get togetherChip => 'Gemeinsam';

  @override
  String get togetherSettingsDesc =>
      'Tritt dem Raum eines Freundes per Link bei';

  @override
  String get novelBilingual => 'Original und Übersetzung anzeigen';

  @override
  String get novelBilingualDesc =>
      'Jeder Absatz zeigt den Originaltext mit der Übersetzung darunter';

  @override
  String get novelTranslateTo => 'Übersetzen nach';

  @override
  String get novelTranslateOff => 'Aus';

  @override
  String get novelSectionSpeech => 'Text-zu-Sprache';

  @override
  String get novelSpeechRate => 'Sprechtempo';

  @override
  String get novelSpeechPitch => 'Sprechtonhöhe';

  @override
  String get novelSpeak => 'Vorlesen';

  @override
  String get novelSpeakStop => 'Vorlesen beenden';

  @override
  String get novelTranslate => 'Kapitel übersetzen';

  @override
  String get novelTranslateShowOriginal => 'Original anzeigen';

  @override
  String novelTranslateFailed(String error) {
    return 'Übersetzung fehlgeschlagen: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Text-zu-Sprache ist auf diesem Gerät nicht verfügbar';

  @override
  String get novelSpeechVoice => 'Stimme';

  @override
  String get novelSpeechVoiceDefault => 'Systemstandard';

  @override
  String get novelSpeakPrevious => 'Vorherige Zeile';

  @override
  String get novelSpeakNext => 'Nächste Zeile';

  @override
  String get novelTapPaging => 'An den Rändern tippen zum Umblättern';

  @override
  String get novelTapPagingDesc =>
      'Tipp links oder rechts, um eine Seite zu scrollen; die Mitte zeigt die Steuerung';

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
    return 'noch $count Min.';
  }

  @override
  String get novelBold => 'Fetter Text';

  @override
  String get novelBoldDesc => 'Eine stärkere Schriftstärke verwenden';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter beendet';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Weiter: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Zurück: $chapter';
  }

  @override
  String get readerNoPages => 'Dieses Kapitel hat keine Seiten';

  @override
  String get readerLoadingPages => 'Lade Seiten…';

  @override
  String get readerSlowPage => 'Diese Seite lädt noch…';

  @override
  String get readerPageFailed => 'Diese Seite konnte nicht geladen werden';

  @override
  String get playerShowComments => 'Kommentare anzeigen';

  @override
  String get playerHideComments => 'Kommentare ausblenden';

  @override
  String get playerSubtitles => 'Untertitel';

  @override
  String get playerSubtitlesOff => 'Untertitel aus';

  @override
  String get playerAudio => 'Audio';

  @override
  String get playerAddSubtitle => 'Untertiteldatei hinzufügen';

  @override
  String get playerAddAudio => 'Audiodatei hinzufügen';

  @override
  String get playerChapters => 'Kapitel';

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
  String get playerNoChapters => 'Keine Kapitel';

  @override
  String get playerTimestamp => 'Zeitstempel';

  @override
  String get playerAutoPlayDelay => 'Countdown zur nächsten Folge';

  @override
  String get playerWatchedAt => 'Als gesehen zählen bei';

  @override
  String playerNextIn(int seconds) {
    return 'Nächste Folge in $seconds s';
  }

  @override
  String get playerPlayNow => 'Jetzt abspielen';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: wird bei diesem Titel automatisch übersprungen';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: wird bei diesem Titel nicht automatisch übersprungen';
  }

  @override
  String get playerAudioLanguage => 'Bevorzugte Audiosprache';

  @override
  String get playerLanguageOrderHint =>
      'Trenn Sprachen mit Kommas. Die erste gefundene wird genutzt.';

  @override
  String get playerPip => 'Bild-im-Bild';

  @override
  String get playerAutoPip => 'Bild-im-Bild beim Verlassen';

  @override
  String get playerAutoPipDesc =>
      'In einem kleinen Fenster weiterspielen, wenn du die App verlässt';

  @override
  String playerAutoPlaying(String title) {
    return '$title läuft als Nächstes…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Shader konnten nicht installiert werden: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Kapitel $number';
  }

  @override
  String get playerPerTitle => 'Nur für diesen Titel';

  @override
  String get playerPerTitleDesc =>
      'Diese Optionen für diesen Titel behalten und deine Standards in Ruhe lassen';

  @override
  String get playerSwapGestures => 'Wischseiten tauschen';

  @override
  String get playerSwapGesturesDesc => 'Helligkeit links und Lautstärke rechts';

  @override
  String get playerOpenBig => 'In Großansicht öffnen';

  @override
  String get playerOpenBigDesc =>
      'Startet den Player im Vollbild statt mit der Episodenliste';

  @override
  String get playerPauseOnBlur => 'Pausieren, wenn nicht im Fokus';

  @override
  String get playerPauseOnBlurDesc =>
      'Pausiert, solange die App verdeckt ist, z. B. durch die Benachrichtigungsleiste, und läuft weiter, wenn du zurückkommst';

  @override
  String get playerAudioOutput => 'Audioausgabe';

  @override
  String get fontAppDefault => 'App-Schrift';

  @override
  String get fontImport => 'Schrift importieren';

  @override
  String get fontSample =>
      'Zwölf Boxkämpfer jagen Viktor quer über den großen Sylter Deich';

  @override
  String get playerSubtitleDelay => 'Untertitelverzögerung';

  @override
  String get playerAudioDelay => 'Audioverzögerung';

  @override
  String get playerDelayReset => 'Zurücksetzen';

  @override
  String get playerOnlineSubtitles => 'Online-Untertitel';

  @override
  String get playerOnlineSearchHint => 'Titel und Folge';

  @override
  String get playerOnlineNone => 'Keine Untertitel gefunden';

  @override
  String playerOnlineFailed(String error) {
    return 'Untertitelsuche fehlgeschlagen: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Dieser Untertitel konnte nicht heruntergeladen werden: $error';
  }

  @override
  String get playerOnlineMatch => 'Passt zu dieser Datei';

  @override
  String get playerOnlineEpisode => 'Folgen-Treffer';

  @override
  String playerOnlineDownloads(int count) {
    return '$count Downloads';
  }

  @override
  String get playerSeekPreview => 'Vorschau beim Spulen';

  @override
  String get playerSeekPreviewDesc =>
      'Zeig beim Scrubben eine kleine Frame-Vorschau über der Suchleiste. Öffnet einen zweiten Decoder mit niedriger Auflösung und braucht daher bei Streams mehr Daten.';

  @override
  String get playerSettingsChip => 'Einstellungen';

  @override
  String get playerAudioDevice => 'Audiogerät';

  @override
  String get settingsDownloads => 'Downloads';

  @override
  String get settingsDownloadsDesc =>
      'Offline-Folgen, Warteschlange und Offline-Modus';

  @override
  String get downloadsTitle => 'Downloads';

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
      'Sieh dir die Warteschlange und alles an, was auf diesem Gerät gespeichert ist';

  @override
  String get downloadTitle => 'Herunterladen';

  @override
  String get downloadAlready =>
      'Schon heruntergeladen oder in der Warteschlange';

  @override
  String get downloadPickStream => 'Welchen Stream herunterladen?';

  @override
  String get downloadPickSubtitle => 'Welchen Untertitel herunterladen?';

  @override
  String get downloadPickAudio => 'Welche Audiospur herunterladen?';

  @override
  String get downloadNoAudio => 'Kein zusätzliches Audio';

  @override
  String get downloadAudio => 'Audio';

  @override
  String get downloadNoSubtitle => 'Kein Untertitel';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Dieser Stream ist eine HLS-Playlist. Zum Herunterladen braucht es das FFmpeg-Add-on.';

  @override
  String get downloadSourceMissing =>
      'Die Quelle für diese Folge ist nicht installiert';

  @override
  String get downloadWaitingConnection => 'Warte auf Verbindung';

  @override
  String get downloadSubtitles => 'Untertitel';

  @override
  String get downloadDownloaded => 'Heruntergeladen';

  @override
  String get downloadOffline => 'Offline';

  @override
  String get downloadDelete => 'Download löschen';

  @override
  String get downloadCancel => 'Abbrechen';

  @override
  String get downloadPause => 'Pause';

  @override
  String get downloadPaused => 'Pausiert';

  @override
  String get downloadResume => 'Fortsetzen';

  @override
  String get downloadPauseAll => 'Alle pausieren';

  @override
  String get downloadResumeAll => 'Alle fortsetzen';

  @override
  String get downloadQueuedState => 'Wartet in der Warteschlange';

  @override
  String get downloadResolving => 'Hole den Stream…';

  @override
  String get downloadUsedFallback =>
      'Kein passender Stream, der erste wurde genommen';

  @override
  String get downloadTabQueue => 'Warteschlange';

  @override
  String get downloadTabDone => 'Fertig';

  @override
  String get downloadTabFailed => 'Fehlgeschlagen';

  @override
  String get downloadEmptyQueue => 'Es wird nichts heruntergeladen';

  @override
  String get downloadEmptyDone => 'Noch nichts heruntergeladen';

  @override
  String get downloadEmptyFailed => 'Keine fehlgeschlagenen Downloads';

  @override
  String get downloadNext => 'Nächste Folge';

  @override
  String downloadNextN(int count) {
    return 'Nächste $count Folgen';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Alle ungesehenen ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Dieser Bereich ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Alle Folgen ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Folgen eingereiht',
      one: '1 Folge eingereiht',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name heruntergeladen';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name konnte nicht heruntergeladen werden';
  }

  @override
  String downloadStorage(String size) {
    return '$size durch Downloads belegt';
  }

  @override
  String get downloadQueueHeader => 'Warteschlange';

  @override
  String get downloadParallel => 'Gleichzeitige Downloads';

  @override
  String get downloadParallelDesc =>
      'Einen Download nach dem anderen oder mehrere zusammen laufen lassen';

  @override
  String get downloadOneByOne => 'Einzeln nacheinander';

  @override
  String get downloadNotifications => 'Download-Benachrichtigungen';

  @override
  String get downloadNotificationsDesc =>
      'Live-Fortschritt, wo das System es unterstützt, sonst ein Hinweis, wenn ein Download fertig ist';

  @override
  String get downloadNotifyLive => 'Live';

  @override
  String get downloadNotifyDone => 'Wenn fertig';

  @override
  String get downloadNotifyOff => 'Aus';

  @override
  String get downloadInfoFile => 'Neben jedem Download eine Infodatei anlegen';

  @override
  String get downloadInfoFileDesc =>
      'Speichert Stream, Qualität, Untertitel und Überspringen-Zeiten als kleine .json-Datei';

  @override
  String get offlineHeader => 'Offline';

  @override
  String get offlineModeDesc =>
      'Auto geht nur offline, wenn die App ohne Verbindung startet. Immer bleibt offline, bis du es änderst.';

  @override
  String get offlineModeOff => 'Aus';

  @override
  String get offlineModeAlways => 'Immer';

  @override
  String get offlineModeOn =>
      'Der Offline-Modus ist an. Änderungen werden hier gespeichert und gesendet, sobald du wieder online bist.';

  @override
  String get offlineSaved =>
      'Auf diesem Gerät gespeichert, wird synchronisiert, sobald du online bist';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Änderungen synchronisiert',
      one: '1 Änderung synchronisiert',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Änderungen warten auf Sync',
      one: '1 Änderung wartet auf Sync',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Änderungen warten auf Sync';

  @override
  String get offlinePendingNone => 'Nichts wartet';

  @override
  String get offlineSyncNow => 'Jetzt synchronisieren';

  @override
  String get offlineDiscard => 'Verwerfen';

  @override
  String get downloadNotOffline =>
      'Diese Folge ist nicht heruntergeladen und daher offline nicht verfügbar';

  @override
  String get offlineModeChip => 'Offline';

  @override
  String get downloadNextChapter => 'Nächstes Kapitel';

  @override
  String downloadNextChapters(int count) {
    return 'Nächste $count Kapitel';
  }

  @override
  String downloadUnread(int count) {
    return 'Alle ungelesenen ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Alle Kapitel ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total Seiten';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count Seiten';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg-Add-on nötig';

  @override
  String get downloadFfmpegBody =>
      'Dieser Stream ist eine HLS-Playlist. Das FFmpeg-Add-on fügt die Teile zu einer mp4-Datei zusammen. Ohne es bleiben die Teile in einem Folgenordner und werden von dort abgespielt.';

  @override
  String get downloadFfmpegInstall => 'Installieren';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg wird installiert, das kann dauern…';

  @override
  String get downloadFinishing => 'Teile werden zu einer Datei zusammengefügt…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total Teile';
  }

  @override
  String get downloadTorrentNoFile =>
      'Der Torrent hat keine Videodatei zum Herunterladen';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Elemente werden heruntergeladen',
      one: '1 Element wird heruntergeladen',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Gesehene Downloads löschen';

  @override
  String get downloadAutoDeleteDesc =>
      'Entfernt einen Download, sobald dein Fortschritt diese Folge oder dieses Kapitel erreicht';

  @override
  String get downloadConnections => 'Verbindungen pro Download';

  @override
  String get downloadConnectionsDesc =>
      'Teilt eine große Datei in Teile, die gleichzeitig geholt werden. Manche Server begrenzen das.';

  @override
  String get downloadPlayChoice => 'Abspielen von';

  @override
  String get downloadPlayLocalDesc => 'Die auf diesem Gerät gespeicherte Datei';

  @override
  String get downloadPlayStream => 'Online streamen';

  @override
  String get downloadPlayStreamDesc => 'Die Folge aus der Quelle laden';

  @override
  String get offlineFeedTitle => 'Auf diesem Gerät heruntergeladen';

  @override
  String get offlineFeedEmpty =>
      'Lad etwas herunter, solange du online bist, dann taucht es hier auf';

  @override
  String get offlineEnabled => 'Der Offline-Modus ist an';

  @override
  String get offlineDisabled => 'Der Offline-Modus ist aus';

  @override
  String get downloadReadChoice => 'Lesen von';

  @override
  String get downloadReadLocalDesc =>
      'Die auf diesem Gerät gespeicherten Seiten';

  @override
  String get downloadReadOnline => 'Online lesen';

  @override
  String get downloadReadOnlineDesc => 'Das Kapitel aus der Quelle laden';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name von diesem Gerät löschen?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Download von $name abbrechen? Bereits Heruntergeladenes wird gelöscht.';
  }

  @override
  String get downloadFfmpegFolder => 'Als Ordner behalten';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count nie gesendete Änderungen verwerfen? Das lässt sich nicht rückgängig machen.',
      one:
          'Die nie gesendete Änderung verwerfen? Das lässt sich nicht rückgängig machen.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Warte auf WLAN';

  @override
  String get downloadWaitingMetered => 'Pausiert bei getakteter Verbindung';

  @override
  String get downloadWifiOnly => 'Nur WLAN';

  @override
  String get downloadWifiOnlyDesc =>
      'Downloads warten, solange du mobile Daten nutzt';

  @override
  String get downloadMetered => 'Bei getakteten Verbindungen pausieren';

  @override
  String get downloadMeteredDesc =>
      'Wartet auch bei WLAN, das dein Gerät als getaktet markiert';

  @override
  String get downloadSpeedLimit => 'Geschwindigkeitslimit';

  @override
  String get downloadSpeedLimitDesc =>
      'Begrenzt die gesamte Download-Geschwindigkeit';

  @override
  String get downloadUnlimited => 'Unbegrenzt';

  @override
  String get downloadMoveToTop => 'Nach oben schieben';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds Seeds · $peers Peers';
  }

  @override
  String get downloadTorrentFile => 'Welche Datei?';

  @override
  String get downloadTorrentAuto => 'Folge automatisch zuordnen';

  @override
  String get downloadTorrentLoading => 'Lese den Torrent…';

  @override
  String get watchAutoSource => 'Automatisch zur nächsten Quelle wechseln';

  @override
  String get watchAutoSourceDesc =>
      'Wenn die Quelle den Titel nicht findet oder nicht lädt, die nächste installierte Quelle probieren';

  @override
  String get extensionTest => 'Erweiterungen testen';

  @override
  String get extensionTestCopy => 'Fehler und ihre Logs kopieren';

  @override
  String get extensionTestQuery => 'Suchbegriff';

  @override
  String get extensionTestRun => 'Starten';

  @override
  String get extensionTestStop => 'Stopp';

  @override
  String get extensionTestNone =>
      'Keine installierten Erweiterungen dieses Typs';

  @override
  String get extensionTestNotRun => 'Noch nicht getestet';

  @override
  String get extensionTestSearch => 'Suche';

  @override
  String get extensionTestDetail => 'Details';

  @override
  String get extensionTestUnits => 'Folgen / Kapitel';

  @override
  String get extensionTestLinks => 'Streams / Seiten';

  @override
  String extensionTestFailedAt(String step) {
    return 'Fehlgeschlagen bei $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done von $total getestet · $passed bestanden · $failed fehlgeschlagen';
  }

  @override
  String get extensionTestCopyLogs =>
      'Alles mit den vollständigen Logs kopieren';

  @override
  String get onboardingFeaturesTitle => 'Alles an einem Ort';

  @override
  String get onboardingFeaturesBody =>
      'Alles, was du trackst, schaust und liest, ohne zwischen Apps zu jonglieren.';

  @override
  String get onboardingFeatureTrack => 'Alles tracken';

  @override
  String get onboardingFeatureTrackDesc =>
      'Listen, Fortschritt und Bewertungen auf AniList, MyAnimeList, Simkl, Kitsu und MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Schauen und lesen';

  @override
  String get onboardingFeatureWatchDesc =>
      'Installier Erweiterungen und streame Anime oder lies Manga und Novels direkt in der App.';

  @override
  String get onboardingFeatureOffline => 'Nimm es offline mit';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Lad Folgen und Kapitel herunter und mach ohne Verbindung weiter.';

  @override
  String get onboardingFeatureSync => 'Listen synchron halten';

  @override
  String get onboardingFeatureSyncDesc =>
      'Spiegle deine Liste über Dienste hinweg oder lass den gewinnen, der weiter ist.';

  @override
  String get onboardingServices => 'Funktioniert mit';

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
