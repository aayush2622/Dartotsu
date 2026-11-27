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
  String get appLockBiometric => 'Mit Biometrie entsperren';

  @override
  String get appLockBiometricDesc =>
      'Verwenden Sie Ihren Fingerabdruck oder Ihr Gesicht, anstatt den Passcode einzugeben';

  @override
  String get appLockBiometricReason => 'Schalte Dartotsu frei';

  @override
  String get appLockDelay => 'Im Leerlauf sperren';

  @override
  String get appLockDelayAlways => 'Immer';

  @override
  String get appLockDelayNever => 'Niemals';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Minuten',
      one: '1 Minute',
    );
    return 'Nach $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Verwenden Sie Biometrie';

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
      other: '$count Updates verfügbar',
      one: '1 Update verfügbar',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Alles aktualisieren';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done von $total Erweiterungen aktualisiert';
  }

  @override
  String get updateConflictTitle => 'Update nicht installiert';

  @override
  String updateConflictBody(String names) {
    return '$names konnte nicht über die vorhandene Version installiert werden. Dies bedeutet normalerweise, dass die installierte Kopie anders signiert wurde. Deinstallieren und die neue Version installieren?';
  }

  @override
  String get updateConflictAction => 'Deinstallieren und neu installieren';

  @override
  String get noSourceSettings => 'Die Quelle hat keine Einstellungen';

  @override
  String get addPluginRepository => 'Plugin-Repository hinzufügen';

  @override
  String get pluginIndexUrlHint => 'URL des Plugin-Index';

  @override
  String get addRepository => 'Repository hinzufügen';

  @override
  String get importRepositoryFile => 'Importieren Sie eine Datei';

  @override
  String get pluginRepoUpdated => 'Plugin-Repository aktualisiert';

  @override
  String get pluginRepoUpdateFailed =>
      'Plugin-Repository konnte nicht aktualisiert werden';

  @override
  String get ok => 'Okay';

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
  String get manageServices => 'Mediendienstleistungen';

  @override
  String get manageServicesDesc =>
      'Ordnen Sie die Dienste neu an und wählen Sie aus, welche in der Auswahl angezeigt werden';

  @override
  String get manageServicesHint =>
      'Ziehen Sie, um die Reihenfolge neu anzuordnen, und schalten Sie diejenigen aus, die Sie nicht verwenden';

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
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'Tracking-Dienst und Anmeldung';

  @override
  String get settingsUpdates => 'Aktualisierungen';

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
  String get stories => 'Geschichten';

  @override
  String get watchOrder => 'Reihenfolge ansehen';

  @override
  String get watchOrderOpenSite => 'Geöffnet auf chiaki.site';

  @override
  String get watchOrderUnavailable =>
      'Für diesen Titel wurde keine Wiedergabereihenfolge gefunden';

  @override
  String get watchOrderOpenFailed => 'Der Titel konnte nicht geöffnet werden';

  @override
  String get watchOrderCurrent => 'Sie sind hier';

  @override
  String get watchOrderCredit =>
      'Sehen Sie sich Bestellungen von chiaki.site an';

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
  String get settingsSync => 'Synchronisierungseinstellungen';

  @override
  String get settingsSyncDesc =>
      'Behalten Sie Ihre Einstellungen auf jedem Gerät bei. Sie werden in einem privaten Gist in Ihrem GitHub-Konto gespeichert';

  @override
  String get settingsSyncSwitch => 'Bei Änderung synchronisieren';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Melden Sie sich mit GitHub an';

  @override
  String get settingsSyncSignInDesc =>
      'Die Einstellungen werden in einem privaten Gist in Ihrem Konto gespeichert';

  @override
  String get settingsSyncToken =>
      'Verwenden Sie ein persönliches Zugriffstoken';

  @override
  String get settingsSyncTokenDesc =>
      'Erstellen Sie eines unter github.com/settings/tokens nur mit der Gist-Berechtigung';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Angemeldet als $user';
  }

  @override
  String get settingsSyncSignOut => 'Abmelden';

  @override
  String settingsSyncCode(Object code) {
    return 'Geben Sie $code auf GitHub ein';
  }

  @override
  String get settingsSyncCodeDesc =>
      'Die GitHub-Seite wurde in Ihrem Browser geöffnet. Tippen Sie, um den Code zu kopieren, oder tippen und halten Sie, um den Vorgang abzubrechen.';

  @override
  String get settingsSyncSignInFailed =>
      'Konnte mich nicht bei GitHub anmelden';

  @override
  String get dcPreview => 'Vorschau';

  @override
  String get dcSampleWatching => 'Zuschauen';

  @override
  String get dcSampleReading => 'Lesen';

  @override
  String get dcSampleBrowsing => 'Durchsuchen';

  @override
  String get dcSampleLive => 'Gerade jetzt';

  @override
  String get dcLiveNothing =>
      'Im Moment wird nichts angezeigt. Öffnen Sie einen Titel, starten Sie eine Episode oder ein Kapitel und es erscheint hier.';

  @override
  String get dcMemberList => 'In der Mitgliederliste';

  @override
  String get dcAccount => 'Konto';

  @override
  String get dcSignIn => 'Melden Sie sich mit Discord an';

  @override
  String get dcSignOut => 'Abmelden';

  @override
  String get dcDesktopHint =>
      'Ohne Verbindung zeigt Discord „Watching Dartotsu“ über die Desktop-App an. Verbinde Discord, um die Aktivität nach deinem Titel zu benennen, auch auf Mobilgeräten.';

  @override
  String get dcMobileHint =>
      'Verbinde Discord, um zu zeigen, was du gerade siehst oder liest. Es verwendet die Autorisierungsseite von Discord, nicht Ihr Konto-Token.';

  @override
  String get dcConnect => 'Discord verbinden';

  @override
  String get dcConnectDesc =>
      'Öffnet die Autorisierungsseite von Discord und fügt Dartotsu unter „Autorisierte Apps“ hinzu. Discord bittet darum, Ihre Präsenz zu aktualisieren. Es wird nur ein Aktualisierungstoken gespeichert, nicht Ihr Kontotoken.';

  @override
  String get dcConnectFailed => 'Discord konnte nicht verbunden werden';

  @override
  String get dcConnectedSnack => 'Discord verbunden';

  @override
  String get dcDisconnect => 'Trennen';

  @override
  String get dcDisconnectedSnack => 'Discord getrennt';

  @override
  String get dcUseToken => 'Verwenden Sie stattdessen einen Token';

  @override
  String get dcRouteDesktop => 'Über die Discord-Desktop-App';

  @override
  String get dcRouteHeadless => 'Über Ihr Konto';

  @override
  String get dcRouteGateway => 'Live über Ihr Konto';

  @override
  String get dcRouteLinked => 'Verbundene App';

  @override
  String get dcRouteNone => 'Nicht verbunden';

  @override
  String get dcStatusNeedsToken =>
      'Benötigt einen Discord-Token. Durch die Verbindung mit der App wird Ihr Online-Status nicht festgelegt.';

  @override
  String get dcAccountOnly => 'Benötigt ein angemeldetes Konto';

  @override
  String get dcStatusSection => 'Status';

  @override
  String get dcControlStatus => 'Kontrolliere meinen Status';

  @override
  String get dcControlStatusDesc =>
      'Hält eine Live-Verbindung zu Discord aufrecht, während Rich Presence aktiviert ist, sodass Dartotsu Ihren Status festlegen kann.';

  @override
  String get dcStatusOnline => 'Online';

  @override
  String get dcStatusIdle => 'Leerlauf';

  @override
  String get dcStatusDnd => 'Nicht stören';

  @override
  String get dcStatusInvisible => 'Unsichtbar';

  @override
  String get dcCustomStatus => 'Benutzerdefinierter Status';

  @override
  String get dcCustomStatusHint => 'Was hast du vor?';

  @override
  String get dcActivitySection => 'Aktivität';

  @override
  String get dcShowWatching => 'Beim Zuschauen anzeigen';

  @override
  String get dcShowReading => 'Beim Lesen anzeigen';

  @override
  String get dcListening => 'Zuhören';

  @override
  String get dcCompeting => 'Konkurrieren';

  @override
  String get dcActivityName => 'Aktivitätsname';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'Titel';

  @override
  String get dcNameCustom => 'Benutzerdefiniert';

  @override
  String get dcCustomNameHint => 'Name wird nach „Zuschauen“ angezeigt';

  @override
  String get dcStatusText => 'Statustext';

  @override
  String get dcStatusTextDesc =>
      'Was die Mitgliederliste neben Ihrem Namen anzeigt';

  @override
  String get dcDisplayName => 'Name';

  @override
  String get dcDisplayState => 'Staat';

  @override
  String get dcDisplayDetails => 'Einzelheiten';

  @override
  String get dcTextSection => 'Text';

  @override
  String get dcDetails => 'Oberste Zeile';

  @override
  String get dcState => 'Fazit';

  @override
  String get dcTemplateHint => 'Empty verwendet die Standardeinstellung';

  @override
  String get dcVariables => 'Tippen Sie, um einen Wert einzufügen';

  @override
  String get dcImagesSection => 'Bilder';

  @override
  String get dcLargeImage => 'Großes Bild';

  @override
  String get dcLargeAuto => 'Automatisch';

  @override
  String get dcLargeCover => 'Abdeckung';

  @override
  String get dcLargeLogo => 'Logo';

  @override
  String get dcSmallImage => 'Kleines Bild';

  @override
  String get dcSmallAuto => 'Logo';

  @override
  String get dcSmallNone => 'Keine';

  @override
  String get dcTimerStyle => 'Timer-Stil';

  @override
  String get dcTimerAuto => 'Automatisch';

  @override
  String get dcTimerElapsed => 'Vergangen';

  @override
  String get dcTimerRemaining => 'Übrig';

  @override
  String get dcButtonsSection => 'Knöpfe';

  @override
  String get dcButtonMedia => 'Link zum Titel';

  @override
  String get dcButtonApp => 'Link zu Dartotsu';

  @override
  String get dcButtonCustom => 'Benutzerdefinierte Schaltfläche';

  @override
  String get dcButtonLabel => 'Etikett';

  @override
  String get dcButtonUrl => 'Link';

  @override
  String get dcPrivacySection => 'Privatsphäre';

  @override
  String get dcPrivateText => 'Privater Text';

  @override
  String get dcPrivateHint => 'Etwas Privates';

  @override
  String get dcTokenWarning =>
      'Für die Anmeldung wird Ihr Konto-Token verwendet. Die Regeln von Discord raten davon ab, daher erfolgt die Nutzung auf eigenes Risiko.';

  @override
  String get dcConnected => 'Verbunden';

  @override
  String get dcConnection => 'Verbindung';

  @override
  String get dcMethodDesktop => 'Discord-Desktop-App';

  @override
  String get dcMethodDesktopDesc =>
      'Wird automatisch verwendet, wenn nichts anderes angeschlossen ist. Discord muss auf diesem Computer geöffnet sein.';

  @override
  String get dcMethodToken => 'Konto-Token';

  @override
  String get dcInUse => 'Im Einsatz';

  @override
  String get dcRecommended => 'Empfohlen';

  @override
  String get dcConnecting => 'Verbinden…';

  @override
  String get dcDisconnected => 'Nicht verbunden';

  @override
  String dcSignedInAs(String name) {
    return 'Angemeldet als $name';
  }

  @override
  String get settingsSyncOn => 'Auf';

  @override
  String get settingsSyncCustom => 'Benutzerdefiniert';

  @override
  String get settingsSyncChangedHeader => 'Geänderte Einstellungen';

  @override
  String get settingsSyncNoneChanged =>
      'Da Sie noch nichts davon geändert haben, gibt es nichts zu synchronisieren.';

  @override
  String get settingsSyncChangedOnly =>
      'Es werden nur die von Ihnen geänderten Einstellungen gespeichert. Alles andere verwendet auf jedem Gerät die Standardeinstellung. Das Wolkensymbol zeigt an, was sich bereits auf dem Server befindet.';

  @override
  String get settingsSyncOffCategory =>
      'Keine Synchronisierung. Diese bleiben auf diesem Gerät und die Serverkopie bleibt unverändert.';

  @override
  String get settingsSyncPartsNote =>
      'Pro Gerät. Bei „Aus“ bleibt der eigene Wert jedes Geräts erhalten, sodass sich ein Telefon und ein Fernseher unterscheiden können.';

  @override
  String get settingsSyncPartSubtitles => 'Größe und Farben der Untertitel';

  @override
  String get settingsSyncPartSubtitlesDesc =>
      'Größe, Gewicht, Farben und Position';

  @override
  String get settingsSyncPartPictureColors => 'Bildfarben';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'Helligkeit, Kontrast, Sättigung, Gamma, Farbton und HDR';

  @override
  String get settingsSyncPartPalette => 'Themenfarben';

  @override
  String get settingsSyncPartPaletteDesc =>
      'Thema, Akzentfarbe und OLED-Schwarz';

  @override
  String get settingsSyncCatOther => 'Anschauen, lesen und Gottesdienste';

  @override
  String get settingsSyncTitles =>
      'Beobachten Sie den Fortschritt und die Titel';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records Titel und $resume Lebenslaufeinträge auf dem Server';
  }

  @override
  String get settingsSyncTitlesNone => 'Noch nichts hochgeladen';

  @override
  String get settingsSyncTitlesNote =>
      'Sehen und lesen Sie Positionen, das Lebenslaufregal, Ihre lokalen Listen, Lesezeichen, Hervorhebungen und Optionen pro Titel. Quellübereinstimmungen und Streams bleiben auf jedem Gerät, da sie von Ihren Erweiterungen abhängen. Titel werden höchstens alle 45 Sekunden hochgeladen.';

  @override
  String get settingsSyncConnect => 'Nicht verbunden';

  @override
  String get settingsSyncConnectDesc =>
      'Melden Sie sich bei GitHub an, um Ihre Einstellungen auf jedem Gerät gleich zu halten.';

  @override
  String get settingsSyncFailedTitle =>
      'Die Synchronisierung ist fehlgeschlagen';

  @override
  String get settingsSyncPaused => 'Angehalten';

  @override
  String get settingsSyncPausedDesc =>
      'Während diese Option deaktiviert ist, wird nichts hochgeladen oder heruntergeladen.';

  @override
  String get settingsSyncUpToDate => 'Auf dem neuesten Stand';

  @override
  String get settingsSyncRetry => 'Versuchen Sie es noch einmal';

  @override
  String get settingsSyncAccount => 'GitHub-Konto';

  @override
  String get settingsSyncAccountDesc =>
      'Ihre Daten werden in einem privaten Gist in Ihrem eigenen Konto gespeichert.';

  @override
  String get settingsSyncWaiting => 'Warten auf Ihre Genehmigung auf GitHub';

  @override
  String get settingsSyncCopyCode =>
      'Tippen Sie auf den Code, um ihn zu kopieren';

  @override
  String get settingsSyncCancel => 'Abbrechen';

  @override
  String get settingsSyncStatSettings => 'Einstellungen';

  @override
  String get settingsSyncStatTitles => 'Titel';

  @override
  String get settingsSyncStatShelf => 'Lebenslauf';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Hochgeladen $time von $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count geändert',
      one: '1 geändert',
      zero: 'Es hat sich noch nichts geändert',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Konten und Passwörter';

  @override
  String get settingsSyncSecretsDesc =>
      'Synchronisieren Sie Ihre Anmeldungen (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API-Schlüssel und App-Sperre zwischen Ihren Geräten. Sie werden mit einer Passphrase verschlüsselt, die auf Ihren Geräten verbleibt, sodass GitHub sie nie sieht.';

  @override
  String get settingsSyncSecretsOn =>
      'Konten werden synchronisiert und verschlüsselt';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Wenn Sie sich auf einem Gerät abmelden, werden Sie nicht auch auf den anderen Geräten abgemeldet.';

  @override
  String get settingsSyncSecretsBroken =>
      'Die Passphrase stimmt nicht mehr mit der auf dem Server überein. Geben Sie es erneut ein, um die Konten weiterhin zu synchronisieren.';

  @override
  String get settingsSyncPassphraseSet => 'Legen Sie eine Passphrase fest';

  @override
  String get settingsSyncPassphraseEnter => 'Geben Sie Ihr Passwort ein';

  @override
  String get settingsSyncPassphraseField => 'Passphrase';

  @override
  String get settingsSyncPassphraseConfirm => 'Wiederholen Sie die Passphrase';

  @override
  String get settingsSyncPassphraseNew =>
      'Wählen Sie eine Passphrase mit mindestens 6 Zeichen. Es wird nur auf Ihren Geräten gespeichert und kann nicht wiederhergestellt werden. Wenn Sie es vergessen, löschen Sie die Serverkopie und beginnen Sie erneut.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Geben Sie die Passphrase ein, die Sie auf Ihrem anderen Gerät ausgewählt haben. Konten auf diesem Gerät werden durch die synchronisierten ersetzt.';

  @override
  String get settingsSyncPassphraseWrong => 'Falsche Passphrase';

  @override
  String get settingsSyncPassphraseMismatch =>
      'Die Passphrasen stimmen nicht überein';

  @override
  String get settingsSyncPassphraseShort =>
      'Verwenden Sie mindestens 6 Zeichen';

  @override
  String get settingsSyncSecretsStop =>
      'Stoppen Sie die Synchronisierung von Konten';

  @override
  String get settingsSyncSecretsDelete => 'Von GitHub löschen';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'Dadurch wird die verschlüsselte Kontendatei aus Ihrem Kerngeschäft entfernt. Andere Geräte behalten ihre Anmeldungen und können eine neue Passphrase festlegen.';

  @override
  String get settingsSyncWhat => 'Was synchronisiert werden soll';

  @override
  String get settingsSyncServer => 'Auf dem Server';

  @override
  String get settingsSyncServerEmpty => 'Noch nichts hochgeladen';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count-Einstellungen, hochgeladen $time von $device';
  }

  @override
  String get settingsSyncThisDevice => 'dieses Gerät';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Einstellungen auf dem Server',
      one: '1 Einstellung auf dem Server',
      zero: 'Nichts auf dem Server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Jetzt synchronisieren';

  @override
  String get settingsSyncRunning => 'Synchronisierung…';

  @override
  String get settingsSyncNever => 'Noch nicht synchronisiert';

  @override
  String settingsSyncLast(Object time) {
    return 'Zuletzt synchronisiert $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Synchronisierung fehlgeschlagen: $error';
  }

  @override
  String get settingsSyncScope =>
      'Es werden nur Einstellungen synchronisiert, die überall gleich funktionieren. Konten, Token, Ordner, Erweiterungen, Benachrichtigungen, Discord, Updates und Fenstergröße bleiben auf jedem Gerät.';

  @override
  String get backupAndRestore => 'Backup und Wiederherstellung';

  @override
  String get backupAndRestoreDesc => 'Speichere oder lade deine Einstellungen';

  @override
  String get backup => 'Sicherung';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get loadExtensionsIcon => 'Erweiterungs-Icons laden';

  @override
  String get autoUpdateRuntimes =>
      'Erweiterungslaufzeiten automatisch aktualisieren';

  @override
  String get autoUpdateRuntimesDesc =>
      'Laden Sie im Hintergrund neue Aniyomi-, CloudStream- und andere Laufzeitversionen herunter. Ausgeschaltet wird stattdessen ein Update-Symbol neben dem Manager angezeigt.';

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
  String get backupPasswordRequired => 'Passwort (erforderlich für Kontodaten)';

  @override
  String get backupProtectedNeedsPassword =>
      'Legen Sie ein Passwort fest, um Kontodaten zu sichern, oder deaktivieren Sie es';

  @override
  String get backupProtectedSkipped =>
      'Dieses Backup hat kein Passwort, daher wurden seine Kontodaten übersprungen';

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
  String get backupCatPlayer => 'Spieler';

  @override
  String get backupCatPlayerDesc => 'Player-Einstellungen';

  @override
  String get backupCatReader => 'Leser';

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
  String get logDelete => 'Protokolldateien löschen';

  @override
  String get logDeleteDesc =>
      'Löschen Sie die gespeicherten App-Protokolle, um Speicherplatz freizugeben';

  @override
  String logDeleted(String size) {
    return '$size der Protokolle gelöscht';
  }

  @override
  String get missingSequel => 'Fehlende Fortsetzung';

  @override
  String get rising => 'Steigend';

  @override
  String get stacks => 'Stapel';

  @override
  String get stacksAll => 'Alle';

  @override
  String get stacksFeatured => 'Hervorgehoben';

  @override
  String get stacksMine => 'Deins';

  @override
  String get stacksSaved => 'Gespeichert';

  @override
  String get stacksFollowing => 'Nachfolgend';

  @override
  String get stacksEmpty => 'Hier sind noch keine Stapel vorhanden';

  @override
  String get stacksSignIn =>
      'Melden Sie sich bei MangaBaka an, um Ihre Stapel zu sehen';

  @override
  String get stacksScopeNeeded =>
      'Ihre Stacks benötigen eine neue Berechtigung. Melden Sie sich erneut bei MangaBaka an, um dies zuzulassen.';

  @override
  String get stacksSignInAgain => 'Melden Sie sich erneut an';

  @override
  String get stacksCouldntLoad => 'Die Stapel konnten nicht geladen werden';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Serie',
      one: '1 Serie',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count speichert',
      one: '1 Speichern',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'von $name';
  }

  @override
  String get stackSpoilers => 'Spoiler';

  @override
  String get stackEmptyEntries => 'Dieser Stapel ist leer';

  @override
  String get stackSave => 'Stapel speichern';

  @override
  String get stackUnsave => 'Aus gespeicherten Dateien entfernen';

  @override
  String get stackSavedToast => 'In Ihren Stapeln gespeichert';

  @override
  String get stackRemovedToast => 'Aus deinen gespeicherten Stapeln entfernt';

  @override
  String userStacks(String name) {
    return 'Stapel von $name';
  }

  @override
  String get newsTitle => 'Nachrichten';

  @override
  String get newsEmpty => 'Im Moment keine Neuigkeiten';

  @override
  String get newsCouldntLoad => 'Die Nachrichten konnten nicht geladen werden';

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
  String get followCoverMediaOnly => 'Nur für Medien';

  @override
  String get followCoverMediaOnlyDesc =>
      'Befolgen Sie auf den Medienseiten nur das Cover, ansonsten bleiben die normalen Farben erhalten';

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
  String get proxy => 'Stellvertreter';

  @override
  String get proxyProtocol => 'Typ';

  @override
  String get proxyHost => 'Gastgeber';

  @override
  String get proxyPort => 'Hafen';

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
  String get imageTitleCover => 'Abdeckung';

  @override
  String get imageTitlePage => 'Seite';

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
  String get supportDeveloper => 'Unterstützen Sie den Entwickler';

  @override
  String get buyMeCoffee => 'Kauf mir einen Kaffee';

  @override
  String get upiId => 'UPI-ID';

  @override
  String get upiCopied => 'UPI-ID kopiert';

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
  String get sectionCommunity => 'Gemeinschaft';

  @override
  String get sectionAppInfo => 'App-Info';

  @override
  String get sectionRequests => 'Anfragen';

  @override
  String get sectionDnsProxy => 'DNS und Proxy';

  @override
  String get onboardingBack => 'Zurück';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingLanguageBody =>
      'Wählen Sie die Sprache aus, in der Dartotsu angezeigt wird. Sie können sie später in den Einstellungen ändern.';

  @override
  String get onboardingPaletteTitle => 'Mach sie zu deiner';

  @override
  String get onboardingPaletteBody =>
      'Such dir eine Palette aus. Alle Akzente, von den Karten bis zum Player, folgen ihr.';

  @override
  String get themeModeAuto => 'Automatisch';

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
    return 'Kapitel $n';
  }

  @override
  String get calendarExpected => 'Erwartet';

  @override
  String get castReceiverFailed =>
      'Der Chromecast hat seinen Player nicht gestartet';

  @override
  String get castPlaybackFailed =>
      'Das Gerät konnte diesen Stream nicht abspielen';

  @override
  String get shortcutNothingToContinue => 'Es gibt noch nichts weiterzumachen';

  @override
  String shortcutNoCalendar(String service) {
    return '$service hat keinen Kalender';
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
  String get listFilterFormat => 'Formatieren';

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
  String get comickLoginFailed => 'Comick-Anmeldung fehlgeschlagen';

  @override
  String get tagline => 'Slogan';

  @override
  String get trending => 'Im Trend';

  @override
  String get anticipated => 'Voraussichtlich';

  @override
  String get watchlist => 'Beobachtungsliste';

  @override
  String get recommendedShows => 'Empfohlene Shows';

  @override
  String get recommendedMovies => 'Empfohlene Filme';

  @override
  String get boxOffice => 'Abendkasse';

  @override
  String get popularMovies => 'Beliebte Filme';

  @override
  String get popularShows => 'Beliebte Shows';

  @override
  String get anticipatedMovies => 'Erwartete Filme';

  @override
  String get anticipatedShows => 'Erwartete Shows';

  @override
  String get trendingShows => 'Trendshows';

  @override
  String get mostWatchedThisWeek => 'Diese Woche am häufigsten gesehen';

  @override
  String get sortMostViewed => 'Am häufigsten angesehen';

  @override
  String get sortMostFollowed => 'Die meisten folgten';

  @override
  String get sortLatestUpdates => 'Neueste Updates';

  @override
  String get translationStatusLabel => 'Übersetzung';

  @override
  String get weeklySchedule => 'Wochenplan';

  @override
  String get mostFollowed => 'Am meisten verfolgt';

  @override
  String get latestUpdates => 'Neueste Updates';

  @override
  String get trendingAnime => 'Trendiger Anime';

  @override
  String get topRatedAnime => 'Bestbewerteter Anime';

  @override
  String get mostFollowedAnime => 'Meistgefolgter Anime';

  @override
  String get comickProfile => 'Comick-Profil';

  @override
  String get refreshFromComick => 'Von Comick aktualisieren';

  @override
  String get mangaBakaProfile => 'MangaBaka-Profil';

  @override
  String get refreshFromMangaBaka => 'Von MangaBaka aktualisieren';

  @override
  String get mangaUpdatesLoginTitle => 'Melden Sie sich bei MangaUpdates an';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates-Profil';

  @override
  String get mangaUpdatesAnimeStart => 'Die Anime-Adaption beginnt';

  @override
  String get mangaUpdatesAnimeEnd => 'Die Anime-Adaption endet';

  @override
  String get refreshFromMangaUpdates => 'Von MangaUpdates aktualisieren';

  @override
  String get usernameOnly => 'Benutzername';

  @override
  String get releases => 'Veröffentlichungen';

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
  String get hideNsfwSourcesDesc =>
      'Verstecken Sie Quellen mit der Markierung „18+“ in den Feeds und in der Quellenauswahl. Sie bleiben installiert.';

  @override
  String get hideNsfwDesc =>
      'Halt Erwachsenentitel aus Feeds und Suche raus und zeig deine eigenen Erwachsenen-Einträge unter Versteckte Medien.';

  @override
  String get kitsuAccountOptions => 'Kitsu-Kontooptionen';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka-Kontooptionen';

  @override
  String get comickAccountOptions => 'Comick-Kontooptionen';

  @override
  String get comickClientId => 'Comick-Client-ID';

  @override
  String get comickClientIdDesc =>
      'Benutzerdefinierte Client-ID, die auf comick.dev registriert ist';

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
  String get accountSupporter => 'Unterstützer';

  @override
  String get accountFree => 'Kostenlos';

  @override
  String get accountDetails => 'Kontodetails';

  @override
  String get refreshFromKitsu => 'Von Kitsu aktualisieren';

  @override
  String get simklReadOnly => 'Simkl hat nur Lesezugriff gewährt';

  @override
  String get traktReadOnly => 'Trakt gewährt nur Lesezugriff';

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
  String get followsMutual => 'Gegenseitig';

  @override
  String get followsNotMutual => 'Nicht gegenseitig';

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
  String get voiceActors => 'Synchronsprecher';

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
  String get prequelSequel => 'Prequel und Fortsetzung';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Fortsetzung';

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
  String get traktProfile => 'Trakt-Profil';

  @override
  String get refreshFromSimkl => 'Von Simkl aktualisieren';

  @override
  String get refreshFromTrakt => 'Von Trakt aktualisieren';

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
  String get traktAttribution =>
      'Daten und Grafiken werden von Trakt bereitgestellt. Auf Trakt ansehen';

  @override
  String get listsLiked => 'Gefallen';

  @override
  String get listsYours => 'Deins';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP-Mitglied';

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
  String get simklMoviesOnly => 'Nur Filme und Serien';

  @override
  String get simklMoviesOnlyDesc =>
      'Ersetzt die Registerkarte „Anime“: Zuerst „Filme“, dann „Shows“ durch ein paar Anime-Zeilen';

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
  String get details => 'Einzelheiten';

  @override
  String get addToList => 'Zur Liste hinzufügen';

  @override
  String get trailer => 'Anhänger';

  @override
  String get trailerQuality => 'Anhängerqualität';

  @override
  String get titleCopied => 'Titel kopiert';

  @override
  String get linkCopied => 'Link kopiert';

  @override
  String get watchTrailer => 'Trailer ansehen';

  @override
  String get copyTitle => 'Titel kopieren';

  @override
  String get detailStale =>
      'AniList konnte nicht erreicht werden. Hierbei handelt es sich um gespeicherte Informationen, die möglicherweise veraltet sind.';

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
  String get allCustomLists => 'Alle benutzerdefinierten Listen';

  @override
  String get simklTitleLanguage => 'Anime-Titelsprache';

  @override
  String get titleLanguageEnglish => 'Englisch';

  @override
  String get titleLanguageRomaji => 'Romaji';

  @override
  String get simklListsTrending => 'Im Trend';

  @override
  String get simklListsMostLiked => 'Am meisten gefallen';

  @override
  String get simklListsMostFollowed => 'Die meisten folgten';

  @override
  String get simklListsOfficial => 'Offiziell';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
    );
    return '$_temp0';
  }

  @override
  String get people => 'Menschen';

  @override
  String get mostComments => 'Die meisten Kommentare';

  @override
  String get alphabetical => 'Alphabetisch';

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
  String get notInList => 'Nicht in der Liste';

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
  String get overlays => 'Überlagerungen';

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
  String get animePlanetRank => 'Rang';

  @override
  String get animePlanetMagazine => 'Magazin';

  @override
  String get animePlanetRefreshLists => 'Aktualisieren Sie Ihre Listen';

  @override
  String get animePlanetRefreshListsDesc =>
      'Lesen Sie noch einmal Ihre Anime-Planet-Listen';

  @override
  String get animePlanetLocalNote =>
      'Melden Sie sich an, um Änderungen an Ihrem Anime-Planet-Konto zu speichern. Bis dahin bleiben sie auf diesem Gerät';

  @override
  String get share => 'Teilen';

  @override
  String get characters => 'Charaktere';

  @override
  String get staff => 'Mitarbeiter';

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
  String get sectionSocial => 'Sozial';

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
  String get novel => 'Roman';

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
  String get firstTab => 'Erste Registerkarte';

  @override
  String get firstTabDesc =>
      'Welche Erweiterungen der erste Tab zeigt. Wählen Sie hier Manga und Roman auf der Registerkarte „Lesen“ aus, um Anime aus der Leiste zu löschen';

  @override
  String get novelExtensions => 'Neuartige Erweiterungen';

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
  String get openings => 'Eröffnungen';

  @override
  String get endings => 'Enden';

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
  String get format => 'Formatieren';

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
  String get year => 'Jahr';

  @override
  String get filterAny => 'Irgendein';

  @override
  String get broadcast => 'Ausstrahlung';

  @override
  String get aired => 'Ausgestrahlt';

  @override
  String get published => 'Veröffentlicht';

  @override
  String get popularity => 'Beliebtheit';

  @override
  String get community => 'Gemeinschaft';

  @override
  String get watching => 'Schaue ich';

  @override
  String get reading => 'Lese ich';

  @override
  String get dropped => 'Abgebrochen';

  @override
  String get unfinished => 'Unvollendet';

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
  String get tags => 'Schlagworte';

  @override
  String get author => 'Autor';

  @override
  String get born => 'Geboren';

  @override
  String get died => 'Gestorben';

  @override
  String get birthplace => 'Geburtsort';

  @override
  String get department => 'Abteilung';

  @override
  String get website => 'Website';

  @override
  String get established => 'Gegründet';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Romane';

  @override
  String get thisMonth => 'Diesen Monat';

  @override
  String get movies => 'Filme';

  @override
  String get shows => 'Serien';

  @override
  String get moviesWatched => 'Angesehene Filme';

  @override
  String get showsWatched => 'Gesehene Sendungen';

  @override
  String get moviesCollected => 'Gesammelte Filme';

  @override
  String get showsCollected => 'Gesammelte Shows';

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
  String get cardPresetPoster => 'Plakat';

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
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

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
    return 'Dieses Repository hinzufügen?\n\n$url\n\nFügen Sie nur Repositorys aus Quellen hinzu, denen Sie vertrauen.';
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
  String get feed => 'Futter';

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
  String updatePluginTitle(String name) {
    return 'Aktualisieren Sie $name';
  }

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
  String get syncTitle => 'Synchronisieren';

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
  String syncServiceOn(String name) {
    return 'Mit $name synchronisieren';
  }

  @override
  String get syncDelete => 'Löschen Sie, was der Hauptdienst nicht hat';

  @override
  String get syncDeleteDesc =>
      'Entfernen Sie Einträge aus den anderen Diensten, die nicht in der Hauptliste enthalten sind. Es werden nur Einträge entfernt, die einem Titel zugeordnet werden können, Dinge wie Simkl-Filme und -Serien bleiben also bestehen';

  @override
  String get syncDeleteTitle => 'Einträge löschen?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return '$_temp0 die nicht auf Ihrer Hauptliste stehen, werden aus den anderen Diensten gelöscht. Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get syncDeleteAction => 'Löschen';

  @override
  String get syncToDelete => 'Zum Löschen';

  @override
  String get syncDeletedNote => 'Wird gelöscht';

  @override
  String syncWillRemove(int count, String name) {
    return '$count wird aus $name gelöscht';
  }

  @override
  String get syncOnlyForward => 'Weiteren Fortschritt behalten';

  @override
  String get syncOnlyForwardDesc =>
      'Den Fortschritt eines Dienstes, der schon weiter ist, nicht verringern';

  @override
  String get animePlanetWontWatch => 'Werde nicht zuschauen';

  @override
  String get animePlanetWontRead => 'Wird nicht gelesen';

  @override
  String get animePlanetAlreadyOnList => 'Steht bereits auf dieser Liste';

  @override
  String get animePlanetNewList => 'Neuer Listenname';

  @override
  String get syncPrivate => 'Private Einträge';

  @override
  String get syncPrivateDesc =>
      'Was tun mit Einträgen, die Sie privat halten? Ein Dienst mit einer privaten Option macht sie privat; andere würden sie öffentlich zeigen';

  @override
  String get syncPrivateModeAsk => 'Fragen Sie';

  @override
  String get syncPrivateModeSync => 'Synchronisieren Sie sie';

  @override
  String get syncPrivateModeSkip => 'Überspringe sie';

  @override
  String get syncPrivateTitle => 'Private Einträge';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Einträge sind privat',
      one: '1 Eintrag ist privat',
    );
    return '$_temp0. Dienste mit einer privaten Option (AniList, Kitsu, MangaBaka) erhalten sie als privat; Die anderen Dienste haben keine private Option und würden sie öffentlich zeigen. Synchronisieren? Ihre Antwort wird gespeichert; Ändern Sie es unter Synchronisierungsoptionen.';
  }

  @override
  String get syncPrivateInclude => 'Synchronisieren Sie sie';

  @override
  String get syncPrivateSkip => 'Überspringe sie';

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
  String syncRemoved(String services) {
    return 'Aus $services entfernt';
  }

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
  String get syncStart => 'Starten';

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
  String get commentsTagButton => 'Etikett';

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
  String get notificationsLikes => 'Gefällt mir';

  @override
  String get notificationsFollows => 'Folgt';

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
  String get sourceTags => 'Schlagworte';

  @override
  String get sourceTagsHint =>
      'Markieren Sie, wozu diese Quelle dient. Ein Titel listet zuerst die dafür getaggten Quellen auf, dann die nicht getaggten. Quellen ab 18 Jahren werden nur für Titel für Erwachsene angezeigt.';

  @override
  String get sourceTagAnime => 'Anime';

  @override
  String get sourceTagMovies => 'Filme & Serien';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'Durch Tags ausgeblendet';

  @override
  String get watchOptions => 'Optionen';

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
  String get watchReverse => 'Reihenfolge umkehren';

  @override
  String get watchScanlators => 'Gruppen';

  @override
  String get watchResetOptions => 'Diese Optionen zurücksetzen';

  @override
  String get watchContinue => 'Weiter';

  @override
  String get watchStart => 'Starten';

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
  String get watchFiller => 'Füller';

  @override
  String get watchRecap => 'Zusammenfassung';

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
  String get watchFailTimeout =>
      'Die Prüfung wurde nicht rechtzeitig abgeschlossen';

  @override
  String get watchFailBlocked =>
      'Die Website hat dieses Gerät blockiert (Zugriff verweigert). Ein Scheck hilft nicht';

  @override
  String get watchFailTurnstile =>
      'Diese Prüfung erfordert einen Tipp, den der Hintergrundlöser nicht ausführen kann';

  @override
  String get watchFailLoad =>
      'Die Seite wurde nicht geladen. Überprüfen Sie die Verbindung und die Site-Adresse';

  @override
  String get watchFailRejected =>
      'Die Website lehnte die soeben erteilte Freigabe ab. Versuchen Sie es erneut oder löschen Sie die Cookies';

  @override
  String get watchFailDismissed =>
      'Der Scheck wurde geschlossen, bevor er abgeschlossen war';

  @override
  String get watchFailCooldown =>
      'Sie haben den Scheck vorhin abgeschlossen. Klicken Sie auf „Lösen“, um es erneut zu versuchen';

  @override
  String get watchFailQuiet =>
      'Der Scheck benötigt Sie und die App funktionierte selbstständig';

  @override
  String get watchFailWebView =>
      'Die Hintergrund-Webansicht konnte nicht gestartet werden';

  @override
  String get watchFailUnavailable =>
      'Es gibt keinen Bildschirm, auf dem der Scheck angezeigt werden kann';

  @override
  String get watchStatusReady => 'Bereit';

  @override
  String get watchStatusChallenge => 'Cloudflare-Check erforderlich';

  @override
  String get watchStatusBlocked => 'Von der Website blockiert';

  @override
  String get watchStatusOffline => 'Die Seite kann nicht erreicht werden';

  @override
  String get watchStatusUntested => 'Noch nicht getestet';

  @override
  String get watchStatusTesting => 'Verbindung testen…';

  @override
  String get watchStatusSolving => 'Den Cloudflare-Check bestanden…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare-Prüfung im Hintergrund bestanden ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare-Prüfung bestanden';

  @override
  String watchClearanceIssued(String time) {
    return 'verdient $time';
  }

  @override
  String get watchClearanceStale =>
      'Die Freigabe wurde mit einem anderen Benutzeragenten eingeholt und wird daher nicht gesendet. Testen Sie die Verbindung, um eine neue Verbindung herzustellen';

  @override
  String get watchSectionConnection => 'Verbindung';

  @override
  String get watchSectionSession => 'Sitzung';

  @override
  String get watchSectionTools => 'Werkzeuge';

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
  String get playerSectionEngine => 'Motor';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Wiedergabegeschwindigkeit';

  @override
  String get localSource => 'Lokale Dateien';

  @override
  String get localMissing =>
      'Diese Datei oder dieser Ordner befindet sich nicht mehr in Ihrem lokalen Ordner';

  @override
  String get playerStickyStage => 'Sticky-Video';

  @override
  String get playerStickyStageDesc =>
      'Lassen Sie das Video oben fixiert, während Sie durch die Episoden und Kommentare unten scrollen';

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
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

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
  String get playerDisableSkips => 'Überspringen deaktivieren';

  @override
  String get playerDisableSkipsDesc =>
      'Keine AniSkip- oder Stream-Zeitstempel, Kapitelmarkierungen oder übersprungenen Übermittlungen im Player';

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
  String get playerSubtitleOutlineWidth => 'Breite der Untertitelkontur';

  @override
  String get playerSubtitlePreview => 'Untertitelvorschau';

  @override
  String get playerSubtitlePreviewText => 'Untertitel-Vorschautext';

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
  String get playerPictureSave => 'Speichern Sie diesen Frame';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'Der Frame wie im Video, ohne Shader oder Farben';

  @override
  String get playerPictureProcessed => 'Mit Shader und Farben';

  @override
  String get playerPictureProcessedDesc =>
      'Der Rahmen, wie Sie ihn jetzt sehen';

  @override
  String get playerPictureSaved => 'Bild gespeichert';

  @override
  String get playerPictureSaveFailed =>
      'Der Frame konnte nicht gespeichert werden';

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
      'Shader benötigen Hardware-Rendering und der Player verwendet Software-Rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software-Rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Nur für ein schwarzes Video. Shader funktionieren damit nicht. Wird beim nächsten Öffnen des Players angewendet';

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
  String get playerDecoderAuto => 'Automatisch';

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
  String get playerStreamReferer => 'Referent (optional)';

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
  String get streamGroupHardSub => 'Harter Sub';

  @override
  String get streamGroupSoftSub => 'Soft-Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Roh';

  @override
  String get streamGroupOther => 'Andere';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Streams',
      one: '1 Stream',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Streams';

  @override
  String get playerStreamFailedNext =>
      'Dieser Stream wird nicht abgespielt. Versuchen Sie es mit dem nächsten';

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
  String get readerOpenBook => 'Öffnen Sie ein Buch';

  @override
  String get readerOpenBookDesc =>
      'Lesen Sie ein Epub (Roman-Reader) oder ein PDF (Manga-Reader) aus Ihren Dateien';

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
  String get readerSectionNovel => 'Roman';

  @override
  String get readerMode => 'Lesemodus';

  @override
  String get readerModeAuto => 'Auto (nach Serientyp)';

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
  String get readerFilterQuality => 'Bildfilterqualität';

  @override
  String get readerFilterQualityNone => 'Keine (nächster Nachbar)';

  @override
  String get readerFilterQualityLow => 'Niedrig (bilinear)';

  @override
  String get readerFilterQualityMedium => 'Mittel (trilinear)';

  @override
  String get readerFilterQualityHigh => 'Hoch (bikubisch)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rost hoher Qualität)';

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
  String get readerLongPressSave =>
      'Halten Sie eine Seite gedrückt, um sie zu speichern';

  @override
  String get readerLongPressSaveDesc =>
      'Drücken Sie lange auf eine Seite, um die Optionen zum Speichern, Teilen und Kopieren zu öffnen';

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
  String get readerResetConfirm =>
      'Alle Reader-Einstellungen auf die Standardeinstellungen zurücksetzen?';

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
    return 'Speichern Sie Ihren Fortschritt am $name in Ihrer Liste auf diesem Gerät, während Sie zuschauen?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Speichern Sie Ihren Fortschritt am $name in Ihrer Liste auf diesem Gerät, wenn Sie ein Kapitel beendet haben?';
  }

  @override
  String get downloadClearQueue => 'Warteschlange löschen';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Alle $count-Downloads in der Warteschlange abbrechen? Was bereits heruntergeladen wurde, wird gelöscht.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count ausgewählt';
  }

  @override
  String get downloadSelectAll => 'Alles auswählen';

  @override
  String get downloadDeleteSelected => 'Ausgewählte löschen';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count-Downloads löschen? Ihre Dateien werden vom Gerät entfernt.';
  }

  @override
  String get castTitle => 'Auf Gerät übertragen';

  @override
  String get castSearching => 'Suchen Sie nach Geräten in Ihrem Netzwerk…';

  @override
  String get castNoDevices =>
      'Keine Geräte gefunden. Stellen Sie sicher, dass sich der Fernseher oder Chromecast im selben WLAN befindet, und suchen Sie dann erneut.';

  @override
  String get castRefresh => 'Suchen Sie erneut';

  @override
  String get castFailed => 'Das Casting konnte nicht gestartet werden';

  @override
  String get castStop => 'Hören Sie auf zu gießen';

  @override
  String castNowCasting(String name) {
    return 'Casting auf $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart-TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku kann die Position nicht melden oder ändern';

  @override
  String get castControls => 'Kontrollen';

  @override
  String get castVolume => 'TV-Lautstärke';

  @override
  String castSkipPart(String name) {
    return 'Überspringen $name';
  }

  @override
  String get trackProgressRememberSeries => 'Denken Sie an diese Serie';

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
  String get dantotsuGroupPlayer => 'Spieler';

  @override
  String get dantotsuAnilist => 'AniList-Login';

  @override
  String get dantotsuMal => 'MyAnimeList-Login';

  @override
  String get dantotsuDiscord => 'Discord-Rich-Presence-Token';

  @override
  String get dantotsuTheme => 'Design';

  @override
  String get themePickerTitle => 'Thema';

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
  String togetherLinkConfirm(String room) {
    return 'Dem Raum $room beitreten? Der Moderator wählt aus, was abgespielt wird, und der Player öffnet sich automatisch, wenn er mit dem Zuschauen beginnt.';
  }

  @override
  String get togetherJoin => 'Machen Sie mit';

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
  String get togetherShareInvite => 'Einladung teilen';

  @override
  String togetherShareText(String link) {
    return 'Schauen Sie sich mit mir Dartotsu an: $link';
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
  String get novelPaged => 'Umblättern';

  @override
  String get novelPagedDesc =>
      'Teilen Sie das Kapitel in Seiten auf und wischen oder tippen Sie, um sie umzublättern, anstatt zu scrollen';

  @override
  String novelPageOf(int current, int total) {
    return 'Seite $current von $total';
  }

  @override
  String get novelPaginating => 'Seiten gestalten';

  @override
  String get novelTools => 'Inhalt, Suche und Highlights';

  @override
  String get novelContents => 'Inhalt';

  @override
  String get novelContentsEmpty => 'Dieses Kapitel hat keine Überschriften';

  @override
  String get novelSearch => 'Suchen';

  @override
  String get novelSearchHint => 'Suchen Sie in diesem Kapitel';

  @override
  String get novelSearchNone => 'Keine Übereinstimmungen';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Übereinstimmungen',
      one: '1 Spiel',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Höhepunkte';

  @override
  String get novelHighlightsEmpty =>
      'Wählen Sie einen Text aus und tippen Sie auf „Hervorheben“, um ihn hier beizubehalten';

  @override
  String get novelHighlight => 'Hervorheben';

  @override
  String get novelHighlightNote => 'Hinweis';

  @override
  String get novelHighlightNoteHint => 'Fügen Sie eine Notiz hinzu';

  @override
  String get novelHighlightRemove => 'Hervorhebung entfernen';

  @override
  String get novelHighlightFailed =>
      'Diese Auswahl konnte dem Text nicht zugeordnet werden';

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
  String get playerSkipSubmit => 'Überspringzeiten einreichen';

  @override
  String get playerSkipSubmitDesc =>
      'Markieren Sie, wo die Eröffnung, das Ende oder die Zusammenfassung in dieser Episode beginnt und endet, und teilen Sie sie mit AniSkip, damit jeder die Schaltfläche zum Überspringen erhält.';

  @override
  String get playerSkipStart => 'Starten';

  @override
  String get playerSkipEnd => 'Ende';

  @override
  String get playerSkipUseNow => 'Aktuelle Position verwenden';

  @override
  String get playerSkipSend => 'An AniSkip senden';

  @override
  String get playerSkipSent =>
      'An AniSkip übermittelte Skip-Zeiten, vielen Dank';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip lehnte die Sprungzeiten ab: $error';
  }

  @override
  String get playerUnsupported =>
      'Der Videoplayer kann auf diesem Gerät nicht ausgeführt werden (die Android-Version ist zu alt für die mitgelieferte Player-Bibliothek). Tippen Sie, um die Details zu kopieren.';

  @override
  String get playerSkipNoMal =>
      'Dieser Titel hat keine MyAnimeList-ID, AniSkip kann ihn nicht akzeptieren';

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
  String get playerPipPlay => 'Spielen';

  @override
  String get playerPipPause => 'Pause';

  @override
  String get playerPipBack => 'Zurückspulen';

  @override
  String get playerPipForward => 'Vorwärts';

  @override
  String get playerPipRestore => 'Zurück zum Spieler';

  @override
  String get playerPipActive => 'Spielen in einem kleinen Fenster';

  @override
  String get listDateAdded => 'Zur Liste hinzugefügt';

  @override
  String get listDateLastWatched => 'Zuletzt gesehen';

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
  String get widgetContinue => 'Weiter';

  @override
  String get widgetReleases => 'Veröffentlichung bald';

  @override
  String get widgetMore => 'Auch in Bearbeitung';

  @override
  String get widgetNothing => 'Es gibt noch nichts weiterzumachen';

  @override
  String get downloadStorageTitle => 'Lagerung';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Downloads',
      one: '1 Download',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size bereits gesehen oder gelesen';
  }

  @override
  String get downloadFreeUp => 'Geben Sie Speicherplatz frei';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count angesehene Downloads',
      one: '1 Download angesehen',
    );
    return 'Löschen $_temp0 und kostenlos $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Befreit $size';
  }

  @override
  String get downloadDeleteWatched => 'Gesehenes löschen';

  @override
  String get downloadDeleteAll => 'Alles löschen';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Jeden Download von $title löschen?';
  }

  @override
  String get downloadNothingWatched =>
      'Nichts, was Sie fertig haben, wird heruntergeladen';

  @override
  String get downloadStorageEmpty =>
      'Keine Downloads verbrauchen Speicherplatz';

  @override
  String get downloadsOpenDesc =>
      'Sieh dir die Warteschlange und alles an, was auf diesem Gerät gespeichert ist';

  @override
  String get downloadTitle => 'Herunterladen';

  @override
  String get downloadMetaOnly => 'Nur Metadaten';

  @override
  String get downloadMetaFailed =>
      'Der Titelordner konnte nicht erstellt werden';

  @override
  String downloadMetaSaved(String path) {
    return 'Gespeichert. Legen Sie Ihre Dateien in $path ab.';
  }

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
  String get downloadDashDrm => 'Dieser Stream ist DRM-geschützt';

  @override
  String get downloadDashNoVideo => 'Das DASH-Manifest enthält kein Video';

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
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
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
  String get downloadNotifyLive => 'Lebe';

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
      one: 'Die nie gesendete Änderung verwerfen? Das lässt sich nicht rückgängig machen.',
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
  String get extensionTestDetail => 'Einzelheiten';

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
    return 'Sie werden benachrichtigt, wenn $source etwas Neues hat';
  }

  @override
  String get sourceNotifyOff =>
      'Veröffentlichungsbenachrichtigungen deaktiviert';

  @override
  String get sourceNotifyNeedsSource =>
      'Wählen Sie zunächst eine Quelle mit einer Übereinstimmung aus';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Alles ($count) ist bereits draußen, nichts, worauf man warten muss';
  }

  @override
  String get sourceNotifyTooltipOn =>
      'Stoppen Sie Veröffentlichungsbenachrichtigungen';

  @override
  String get sourceNotifyTooltipOff =>
      'Benachrichtigen Sie mich über Neuerscheinungen';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Folge $number ist auf $source erhältlich';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Die Folgen $from–$to sind auf $source erhältlich';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Kapitel $number ist auf $source erschienen';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Die Kapitel $from–$to sind auf $source erhältlich';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count-Titel haben etwas Neues';
  }

  @override
  String get navSources => 'Quellen';

  @override
  String sourceInactiveOpen(String manager) {
    return 'Diese Quelle gehört zu $manager, was nicht der aktive Erweiterungsdienst ist';
  }

  @override
  String get sourceAlertsHeader => 'Veröffentlichungsbenachrichtigungen';

  @override
  String get sourceAlertsSwitch => 'Überprüfen Sie die abonnierten Titel';

  @override
  String get sourceAlertsSwitchDesc =>
      'Einmal bei jedem Öffnen der App, für Titel, die Sie aktiviert haben';

  @override
  String get sourceSkipUnstarted =>
      'Überspringen Sie Titel, die Sie noch nicht begonnen haben';

  @override
  String get sourceSkipUnstartedDesc =>
      'Noch nichts gesehen oder gelesen, aber es gibt bereits Folgen';

  @override
  String get sourceSkipUnseen =>
      'Überspringen Sie, solange Sie noch nicht gesehene Episoden haben';

  @override
  String get sourceSkipUnseenDesc =>
      'Sie haben noch Episoden veröffentlicht, die Sie nachholen können';

  @override
  String get sourceManage => 'Abonnements';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Titel',
      one: '1 Titel',
      zero: 'Keine Titel',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Jetzt prüfen';

  @override
  String get sourceCheckNowDesc =>
      'Ignoriert den Zeitplan und die Überspringregeln';

  @override
  String get sourceChecking => 'Überprüfen…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-Titel haben etwas Neues',
      one: '1 Titel hat etwas Neues',
      zero: 'Nichts Neues',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'Noch keine Abonnements';

  @override
  String get sourceEmptyMessage =>
      'Tippen Sie auf die Glocke über den Episoden eines Titels, um über neue Episoden informiert zu werden';

  @override
  String get sourceAll => 'Alle';

  @override
  String sourceInactive(String manager) {
    return 'Inaktiv: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source ist in diesem Erweiterungsdienst nicht installiert';
  }

  @override
  String get sourceUnreachable => 'Die Quelle antwortet nicht';

  @override
  String get sourceFinished => 'Fertig';

  @override
  String get sourceSkippedCompleted => 'Übersprungen: abgeschlossen';

  @override
  String get sourceSkippedUnstarted => 'Übersprungen: nicht gestartet';

  @override
  String get sourceSkippedUnseen => 'Übersprungen: ungesehene Episoden';

  @override
  String get sourceWaiting => 'Warten auf die nächste Veröffentlichung';

  @override
  String sourceNextCheck(String when) {
    return 'Nächste Prüfung $when';
  }

  @override
  String get sourceSoon => 'bald';

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
    return 'Neueste: $number';
  }

  @override
  String get sourceMute => 'Stumm';

  @override
  String get sourceUnmute => 'Stummschaltung aufheben';

  @override
  String get sourceMuted => 'Stummgeschaltet';

  @override
  String get sourceUnsubscribe => 'Abmelden';

  @override
  String get sourcePickAnother => 'Wählen Sie eine andere Quelle';

  @override
  String get sourceOpenExtensions => 'Öffnen Sie Erweiterungen';

  @override
  String get sourceNoticesEmpty => 'Noch keine Veröffentlichungsmitteilungen';

  @override
  String get sourceNoticesEmptyMessage =>
      'Hier werden neue Episoden und Kapitel Ihrer abonnierten Titel angezeigt';

  @override
  String get sourceOpenTitle => 'Titel öffnen';

  @override
  String get extensionsLoading => 'Erweiterungen werden geladen…';

  @override
  String get updateWhatsNew => 'Was ist neu?';

  @override
  String get updateLater => 'Später';

  @override
  String get updateSkipVersion => 'Überspringen Sie diese Version';

  @override
  String get updatePreparing => 'Vorbereiten…';

  @override
  String get updateDownloading => 'Herunterladen';

  @override
  String get updateInstalling => 'Installieren…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done von $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Veröffentlicht $date';
  }

  @override
  String get updateNoAsset =>
      'Für diese Version ist kein Download für Ihr Gerät verfügbar';

  @override
  String get updateUpToDate => 'Sie sind auf der neuesten Version';

  @override
  String get updateIosHint =>
      'iOS-Builds sind nicht im App Store verfügbar. Holen Sie sich die IPA-Datei von der Release-Seite und laden Sie sie mit AltStore oder SideStore von der Seite';

  @override
  String get updateOpenedBrowser => 'Überprüfen Sie Ihren Browser';

  @override
  String get updateTryAgain => 'Versuchen Sie es erneut';

  @override
  String get settingsNotifications => 'Benachrichtigungen';

  @override
  String get settingsNotificationsDesc =>
      'Benachrichtigungen für Ihre Listen, neue Episoden und Kapitel sowie Kommentarantworten';

  @override
  String get settingsAboutUpdates => 'Über & Updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App-Updates, Version, Protokolle, Links und Support';

  @override
  String get settingsGroupAccount => 'Ihr Konto';

  @override
  String get settingsGroupContent => 'Inhalt';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Player, Untertitel, Überspringen, Episodenliste und Episodendetails';

  @override
  String get settingsMangaDesc =>
      'Lesemodus, Bedienelemente, Anzeige und Kapitelverfolgung';

  @override
  String get settingsNovelDesc => 'Text, Umblättern, Übersetzen und Vorlesen';

  @override
  String get settingsLocalPlay => 'Lokales Spiel';

  @override
  String get settingsLocalPlayDesc =>
      'Spielen Sie Dateien, Ordner, Netzwerk-Streams und Torrents ab oder öffnen Sie ein Buch';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Bücher';

  @override
  String get settingsWatchSections => 'Abschnitte';

  @override
  String get settingsSectionLists => 'Episoden- und Kapitellisten';

  @override
  String get settingsSectionProgress => 'Fortschrittsverfolgung';

  @override
  String get updateChannelDesc =>
      'Stabil ist die getestete Version. Vorabversionen und Alphaversionen erhalten neue Funktionen früher, können aber nicht funktionieren';

  @override
  String get checkNowDesc => 'Suchen Sie sofort nach einer neueren Version';

  @override
  String get generalSectionBasics => 'Sprache und Verhalten';

  @override
  String get generalSectionSecurity => 'Sicherheit';

  @override
  String get generalSectionPrivacy => 'Privatsphäre';

  @override
  String notificationsOtherService(String service) {
    return 'Wechseln Sie zu $service, um dies zu öffnen';
  }

  @override
  String get secPlayerPlayback =>
      'Standardgeschwindigkeit, automatische Wiedergabe, Videoanpassung, Ausrichtung und Bild-in-Bild';

  @override
  String get secPlayerSkip =>
      'Überspringen Sie Eröffnungen, Enden und Zusammenfassungen automatisch';

  @override
  String get secPlayerControls =>
      'Wischen, halten und tippen Sie auf Gesten und suchen Sie nach einer Vorschau';

  @override
  String get secPlayerSubtitles =>
      'Sprachen, Erscheinungsbild und Untertitelwiedergabe';

  @override
  String get secPlayerShaders => 'Anime-Upscaling und eigene Shader';

  @override
  String get secPlayerEngine =>
      'Decoder, Video- und Audioausgabe, Pufferung. Ändern Sie diese nur, wenn es bei der Wiedergabe zu Problemen kommt';

  @override
  String get secPlayerMpv => 'mpv.conf, Skripte und erweitertes Tuning';

  @override
  String get secAnimeList =>
      'Füllerepisoden und nicht angesehene Miniaturansichten';

  @override
  String get secProgress =>
      'Wenn Ihr Wiedergabe- oder Lesefortschritt in Ihrer Liste gespeichert wird';

  @override
  String get secAnimeDetails =>
      'Woher Episodentitel, Miniaturansichten und Zusammenfassungen kommen';

  @override
  String get secReaderReading =>
      'Lesemodus, Umblättern, Zoom und nächstes Kapitel';

  @override
  String get secReaderControls =>
      'Tippen Sie auf Zonen, Lautstärketasten und automatisches Scrollen';

  @override
  String get secReaderDisplay =>
      'Hintergrund, Helligkeit, Vollbild und Seitenzahl';

  @override
  String get secNovelText =>
      'Schriftart, Größe, Abstand, Ränder und Umblättern';

  @override
  String get secNovelTranslate => 'Übersetzen Sie Kapitel, während Sie lesen';

  @override
  String get secNovelSpeech =>
      'Stimme, Geschwindigkeit und Tonhöhe zum Vorlesen';

  @override
  String get secNotifyAbout =>
      'Wählen Sie aus, welche Arten von Aktivitäten eine Benachrichtigung senden';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc =>
      'Wählen Sie die Schaltflächen in den Leisten aus, verschieben Sie sie und blenden Sie sie aus';

  @override
  String get layoutHint =>
      'Ziehen Sie eine Schaltfläche, um sie zu verschieben (halten Sie zuerst die Taste auf einem Touchscreen gedrückt). Tippen Sie auf eines, um es auszuschneiden, zu verschieben oder auszublenden';

  @override
  String layoutDropInto(String zone) {
    return 'Kommen Sie vorbei: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Umzug $name. Klicken Sie auf die Schaltfläche „Einfügen“, um es zu platzieren';
  }

  @override
  String get layoutTitleFixed => 'Titel';

  @override
  String get layoutZoneTopStart => 'Obere Leiste vor dem Titel';

  @override
  String get layoutZoneTopEnd => 'Obere Leiste nach dem Titel';

  @override
  String get layoutZoneBottomStart => 'Untere Leiste, links';

  @override
  String get layoutZoneBottomEnd => 'Untere Leiste, rechts';

  @override
  String get layoutZoneSecondRow =>
      'Ausgeblendet: zweite Reihe in der Normalansicht';

  @override
  String get layoutZoneOverflow => 'Versteckt: im Mehr-Menü';

  @override
  String get layoutEmptyZone => 'Legen Sie die Schaltflächen hier ab';

  @override
  String get layoutCut => 'Schneiden';

  @override
  String get layoutPaste => 'Hier einfügen';

  @override
  String get layoutHide => 'Verstecken';

  @override
  String layoutMoveTo(String zone) {
    return 'Zu $zone verschieben';
  }

  @override
  String get layoutReset => 'Auf Standard zurücksetzen';

  @override
  String get layoutMore => 'Mehr';

  @override
  String get sourceWhyAction => 'Warum keine Warnung?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Zuletzt überprüft';

  @override
  String get sourceWhyNever => 'Noch nicht';

  @override
  String get sourceWhyNextCheck => 'Nächste Kontrolle';

  @override
  String get sourceWhyNewest => 'Das Neueste an der Quelle';

  @override
  String get sourceWhyProgress => 'Ihr Fortschritt';

  @override
  String get sourceWhyListStatus => 'Listenstatus';

  @override
  String get sourceWhyFailures => 'Fehlgeschlagene Prüfungen in Folge';

  @override
  String get sourceWhyLastRelease => 'Letzte Neuveröffentlichung gesehen';

  @override
  String get sourceWhyVerdictNew =>
      'Eine neue Version erscheint hier, sobald die Quelle sie auflistet und die nächste Prüfung durchgeführt wird.';

  @override
  String get sourceWhyVerdictAhead =>
      'Die Quelle ist Ihrem Fortschritt bereits voraus, daher wurde Ihnen einmal davon erzählt. Lesen oder schauen Sie es sich an, um die nächste Benachrichtigung zu erhalten.';

  @override
  String get sourceWhyVerdictSkipped =>
      'Dieser Titel wird durch die oben genannten Regeln übersprungen. Ändern Sie sie in den Benachrichtigungseinstellungen oder verwenden Sie „Jetzt prüfen“, um es trotzdem auszuführen.';

  @override
  String get sourceWhyVerdictBroken =>
      'Die Quelle ist nicht erreichbar oder wurde entfernt, daher wird nichts überprüft.';

  @override
  String get sourceWhyVerdictMuted => 'Dieses Abonnement ist stummgeschaltet.';

  @override
  String get externalPlayerTitle => 'Stream woanders öffnen';

  @override
  String get externalCopyUrl => 'Stream-Link kopieren';

  @override
  String get externalCopied => 'Stream-Link kopiert';

  @override
  String get externalChooser => 'In einer anderen App öffnen';

  @override
  String get externalVlc => 'In VLC öffnen';

  @override
  String get externalMpv => 'Im MPV öffnen';

  @override
  String get externalWebVideoCast => 'Webvideo-Besetzung';

  @override
  String get castViaAppHint =>
      'Senden Sie den Stream an die Web Video Cast-App';

  @override
  String get externalFailed =>
      'Der Stream konnte nicht geöffnet werden. Ist der Player installiert?';

  @override
  String get addonInstalled => 'Installiert';

  @override
  String get loadFailedActivity => 'Aktivität konnte nicht geladen werden';

  @override
  String get loadFailedFavourites =>
      'Favoriten konnten nicht geladen werden. Versuchen Sie es noch einmal';

  @override
  String get loadFailedStats => 'Statistiken konnten nicht geladen werden';

  @override
  String get loadFailedReplies => 'Antworten konnten nicht geladen werden';

  @override
  String get cantBeUndone => 'Dies kann nicht rückgängig gemacht werden.';

  @override
  String get searchTags => 'Suchtags';

  @override
  String get spoilerTapToView => 'Spoiler, zum Ansehen antippen';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Jemand';

  @override
  String get notificationATitle => 'ein Titel';

  @override
  String get notificationAddedDetail => 'Wurde zu AniList hinzugefügt';

  @override
  String get updateNoReleases => 'Keine Veröffentlichungen gefunden';

  @override
  String get updateInvalidResponse => 'Ungültige Update-Antwort';

  @override
  String get commentsRateLimited => 'Preis begrenzt';

  @override
  String get commentsConnectFailed =>
      'Verbindung konnte nicht hergestellt werden';

  @override
  String get dnsNoRecords => 'Es wurden keine A-Datensätze zurückgegeben';

  @override
  String get importTokenRejected => 'Token abgelehnt';

  @override
  String get developerRoleLead => 'Leitender Entwickler';

  @override
  String get developerRoleModerator => 'Discord-Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type Manager';
  }

  @override
  String extensionsOfType(String type) {
    return '$type Erweiterungen';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name-Einstellungen';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name bietet keine Einstellungen.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Folge $episode von $title wurde ausgestrahlt';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Folge $episode wurde ausgestrahlt';
  }

  @override
  String notificationAdded(String title) {
    return '$title wurde zu AniList hinzugefügt';
  }

  @override
  String updateNotFound(String message) {
    return 'Der Update-Server konnte diese Version nicht finden: $message';
  }

  @override
  String get installStepJre => 'Java-Laufzeit';

  @override
  String get installStepCore => 'Laufzeitkern';

  @override
  String installStepsProgress(int current, int total) {
    return 'Schritt $current von $total';
  }

  @override
  String get stepWaiting => 'Warten';

  @override
  String get stepChecking => 'Überprüfen…';

  @override
  String get stepUpToDate => 'Auf dem neuesten Stand';

  @override
  String stepUpToDateWith(String detail) {
    return 'Aktuell · $detail';
  }

  @override
  String get stepWillInstall => 'Wird installiert';

  @override
  String get stepWillUpdate => 'Wird aktualisiert';

  @override
  String stepWillUpdateTo(String version) {
    return 'Wird auf $version aktualisiert';
  }

  @override
  String get stepInstalled => 'Installiert';

  @override
  String get stepNotNeeded => 'Hier nicht nötig';

  @override
  String get stepFailed => 'Fehlgeschlagen';

  @override
  String stepFailedWith(String reason) {
    return 'Fehlgeschlagen: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'Es läuft auf der Java-Laufzeit und dem gemeinsam genutzten Laufzeitkern. Sie werden zuerst installiert und bei Änderungen aktualisiert.';

  @override
  String get installRuntimeNewer =>
      'Die Laufzeit, auf der dieser Manager ausgeführt wird, verfügt über ein Update.';

  @override
  String get removeJvmTitle => 'Java-Runtime entfernen?';

  @override
  String get removeJvmMessage =>
      'Desktop-Erweiterungsmanager funktionieren nicht mehr, bis sie erneut installiert werden. Es wird erneut heruntergeladen, wenn Sie es das nächste Mal installieren oder öffnen.';

  @override
  String get runtimePreparing => 'Vorbereitung der Laufzeit…';

  @override
  String get calendarAll => 'Alle';

  @override
  String get calendarAnime => 'Anime';

  @override
  String get calendarManga => 'Manga';

  @override
  String get readerCloudflare => 'Im Browser öffnen (Cloudflare-Prüfung)';

  @override
  String get badgeBoardHint =>
      'Ziehen Sie ein Abzeichen auf eine Ecke der ersten Karte oder ziehen Sie ein bereits darauf befindliches Abzeichen, um es zu verschieben. Die Abzeichen tauschen ihre Plätze, sodass es nie zu Überschneidungen kommt. Tippen Sie unten auf ein Abzeichen, um es ein- oder auszuschalten.';

  @override
  String get statusAuto => 'Automatisch';

  @override
  String get unreadCounter => 'Ungelesen-Zähler';

  @override
  String get unreadCounterDesc =>
      'Zeigen Sie auf Postern an, wie viele Episoden oder Kapitel noch übrig sind';

  @override
  String get settingsShortcuts => 'Tastaturkürzel';

  @override
  String get settingsShortcutsDesc =>
      'Sehen, ändern und schalten Sie jeden Schlüssel aus';

  @override
  String get shortcutGroupApp => 'App';

  @override
  String get shortcutGroupPlayer => 'Videoplayer';

  @override
  String get shortcutGroupReader => 'Leser';

  @override
  String get shortcutsEnableApp => 'App-Verknüpfungen';

  @override
  String get shortcutsEnablePlayer => 'Spielerverknüpfungen';

  @override
  String get shortcutsEnableReader => 'Reader-Verknüpfungen';

  @override
  String get shortcutsEnableDesc =>
      'Schalten Sie jeden Schlüssel in dieser Gruppe ein oder aus';

  @override
  String get shortcutNotSet => 'Nicht festgelegt';

  @override
  String get shortcutAddKey => 'Fügen Sie einen Schlüssel hinzu';

  @override
  String get shortcutResetOne => 'Auf Standard zurücksetzen';

  @override
  String get shortcutClearKeys => 'Entfernen Sie alle Schlüssel';

  @override
  String get shortcutResetAll => 'Alle Verknüpfungen zurücksetzen';

  @override
  String get shortcutResetAllDesc =>
      'Setzen Sie jeden Schlüssel auf die Standardeinstellungen zurück';

  @override
  String get shortcutPress =>
      'Drücken Sie die gewünschte Taste oder Kombination';

  @override
  String get shortcutPressHint =>
      'Jede Kombination kann nur zu einer Aktion gehören, daher wird sie bewegt, wenn man eine Kombination nimmt.';

  @override
  String get shortcutSeekPercent => 'Springen Sie zu einer Stelle im Video';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'Geh zurück';

  @override
  String get shortcutAppFullscreen => 'Vollbild umschalten';

  @override
  String get shortcutAppGlass => 'Glasmodus umschalten';

  @override
  String get shortcutAppMaterialYou => 'Toggle Material Sie';

  @override
  String get shortcutAppDark => 'Schalten Sie den Dunkelmodus um';

  @override
  String get shortcutAppOled => 'OLED-Schwarz umschalten';

  @override
  String get shortcutAppSearch => 'Suche öffnen';

  @override
  String get shortcutAppSettings => 'Einstellungen öffnen';

  @override
  String get shortcutAppDownloads => 'Downloads öffnen';

  @override
  String get shortcutAppNotifications => 'Benachrichtigungen öffnen';

  @override
  String get shortcutAppIncognito => 'Inkognito umschalten';

  @override
  String get shortcutAppShortcuts => 'Tastaturkürzel anzeigen';

  @override
  String get shortcutPlayerPlayPause => 'Spielen oder pausieren';

  @override
  String get shortcutPlayerSeekForward => 'Suchen Sie nach vorne';

  @override
  String get shortcutPlayerSeekBack => 'Suchen Sie zurück';

  @override
  String get shortcutPlayerSeekForwardLong => '30 Sekunden vorwärts suchen';

  @override
  String get shortcutPlayerSeekBackLong => '30 Sekunden zurückspulen';

  @override
  String get shortcutPlayerFrameForward => 'Nächster Frame';

  @override
  String get shortcutPlayerFrameBack => 'Vorheriger Frame';

  @override
  String get shortcutPlayerVolumeUp => 'Lautstärke erhöhen';

  @override
  String get shortcutPlayerVolumeDown => 'Lautstärke verringern';

  @override
  String get shortcutPlayerMute => 'Stumm';

  @override
  String get shortcutPlayerFullscreen => 'Vollbild';

  @override
  String get shortcutPlayerNext => 'Nächste Folge';

  @override
  String get shortcutPlayerPrevious => 'Vorherige Folge';

  @override
  String get shortcutPlayerSkip =>
      'Überspringen Sie die Einleitung oder das Ende';

  @override
  String get shortcutPlayerPanel => 'Episodenliste';

  @override
  String get shortcutPlayerSpeedUp => 'Schnellere Wiedergabe';

  @override
  String get shortcutPlayerSpeedDown => 'Langsamere Wiedergabe';

  @override
  String get shortcutPlayerSpeedReset => 'Normale Geschwindigkeit';

  @override
  String get shortcutPlayerSubtitleToggle => 'Untertitel ein- oder ausschalten';

  @override
  String get shortcutPlayerSubtitleCycle => 'Nächster Untertiteltrack';

  @override
  String get shortcutPlayerAudioCycle => 'Nächster Audiotrack';

  @override
  String get shortcutPlayerStreamCycle => 'Nächster Stream';

  @override
  String get shortcutPlayerFit => 'Videoanpassung ändern';

  @override
  String get shortcutReaderRight => 'Seite rechts';

  @override
  String get shortcutReaderLeft => 'Seite nach links';

  @override
  String get shortcutReaderNextPage => 'Nächste Seite';

  @override
  String get shortcutReaderPreviousPage => 'Vorherige Seite';

  @override
  String get shortcutReaderControls => 'Steuerelemente ein- oder ausblenden';

  @override
  String get shortcutReaderNextChapter => 'Nächstes Kapitel';

  @override
  String get shortcutReaderPreviousChapter => 'Vorheriges Kapitel';

  @override
  String shortcutTaken(String action) {
    return 'Entnommen aus $action';
  }

  @override
  String get incognitoTurnedOn => 'Inkognito-Modus aktiviert';

  @override
  String get incognitoTurnedOff => 'Inkognito-Modus deaktiviert';

  @override
  String get onHoldAnime => 'Anime in der Warteschleife';

  @override
  String get onHoldManga => 'Manga in der Warteschleife';

  @override
  String get droppedAnime => 'Anime fallen gelassen';

  @override
  String get droppedManga => 'Manga fallen gelassen';

  @override
  String get generalSectionDesktop => 'Desktop';

  @override
  String get closeAction => 'Wenn das Fenster geschlossen ist';

  @override
  String get closeActionQuit => 'Beenden Sie die App';

  @override
  String get closeActionWhenBusy =>
      'Laufen Sie weiter im Fach, während etwas läuft';

  @override
  String get closeActionAlways => 'Laufen Sie immer im Fach weiter';

  @override
  String get closeActionNoTray =>
      'Die Taskleiste ist hier nicht verfügbar, daher wird die App beim Schließen beendet';

  @override
  String get gamepadNav => 'Gamepad-Navigation';

  @override
  String get gamepadNavDesc =>
      'Bewegen Sie sich in der App und steuern Sie den Player mit einem Gamecontroller';

  @override
  String get trayShow => 'Dartotsu zeigen';

  @override
  String get trayQuit => 'Hör auf';

  @override
  String get trayIdle => 'Nichts läuft';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Elemente werden heruntergeladen',
      one: '$count-Element wird heruntergeladen',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'Synchronisieren Sie Ihre Listen';

  @override
  String get trayUpdating => 'Aktualisieren der App';

  @override
  String get trayPlaying => 'Spielen in einem kleinen Fenster';

  @override
  String get traySearch => 'Suchen';

  @override
  String get trayPauseDownloads => 'Downloads pausieren';

  @override
  String get trayResumeDownloads => 'Downloads fortsetzen';

  @override
  String get playerDownloadTitle => 'Herunterladen des Players';

  @override
  String get playerDownloadBody =>
      'Dartotsu ruft seine Video-Engine einmal ab. Die Wiedergabe beginnt, sobald es fertig ist.';

  @override
  String get playerDownloadStarting => 'Download starten…';

  @override
  String get playerDownloadFailedTitle => 'Konnte den Player nicht bekommen';

  @override
  String get playerDownloadFailedBody =>
      'Überprüfen Sie Ihre Verbindung und versuchen Sie es erneut. Der Download wird dort fortgesetzt, wo er aufgehört hat.';

  @override
  String get playerDownloadRetry => 'Versuchen Sie es erneut';

  @override
  String get playerDownloadCopy => 'Details kopieren';

  @override
  String get removePlayerTitle => 'Den Player entfernen?';

  @override
  String get removePlayerMessage =>
      'Videos können erst abgespielt werden, wenn der Player erneut heruntergeladen wird.';

  @override
  String get trailerLoading => 'Der Trailer wird geladen…';

  @override
  String get trailerFailed =>
      'Der Trailer konnte hier nicht abgespielt werden, da er im Browser geöffnet wurde';
}
