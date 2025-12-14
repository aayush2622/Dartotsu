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
  String get appTagline =>
      'Die NEUE Beste App zum\nVerfolgen von Anime & Manga';

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
  String get login => 'Anmelden';

  @override
  String loginTo(String service) {
    return 'Anmelden bei $service';
  }

  @override
  String logout(String type) {
    return 'Abmelden $type';
  }

  @override
  String get confirmLogout => 'Bist du sicher, dass du dich abmelden möchtest?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Roman';

  @override
  String get ln => 'Lichtroman';

  @override
  String get home => 'Startseite';

  @override
  String get search => 'Suche';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Einstellungen';

  @override
  String get watch => 'Ansehen';

  @override
  String get read => 'Lesen';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Kommentare';

  @override
  String get addToList => 'Zur Liste hinzufügen';

  @override
  String get series => 'Serie';

  @override
  String get season => 'Staffel';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episoden',
      one: 'Episode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kapitel',
      one: 'Kapitel',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bände',
      one: 'Band',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filme',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Episoden';

  @override
  String get totalChapters => 'Kapitel';

  @override
  String nextEpisodeRelease(int episode) {
    return 'Episode $episode wird veröffentlicht in';
  }

  @override
  String get genres => 'Genres';

  @override
  String get scanlators => 'Scanlation-Teams';

  @override
  String list(String type) {
    return '$type Liste';
  }

  @override
  String get watching => 'Wachen';

  @override
  String get reading => 'Lesung';

  @override
  String get readStatus => 'Lesen';

  @override
  String get watchStatus => 'Bewacht';

  @override
  String planned(String type) {
    return 'Geplante $type';
  }

  @override
  String onHold(String type) {
    return 'Auf Eis gelegte $type';
  }

  @override
  String get droppedAnime => 'Abgebrochene Anime';

  @override
  String get droppedManga => 'Abgebrochene Manga';

  @override
  String noDropped(String type) {
    return 'Du hast noch keine $type abgebrochen.';
  }

  @override
  String get continueReading => 'Weiterlesen';

  @override
  String get continueWatching => 'Weiterschauen';

  @override
  String browse(String type) {
    return 'Durchsuche $type';
  }

  @override
  String trending(String type) {
    return 'Trendige $type';
  }

  @override
  String popular(String type) {
    return 'Beliebte $type';
  }

  @override
  String get topAiring => 'Top Ausstrahlung';

  @override
  String topRated(String type) {
    return 'Top bewertete $type';
  }

  @override
  String get topScore => 'Top Score';

  @override
  String mostFavourite(String type) {
    return 'Beliebteste $type';
  }

  @override
  String get thisSeason => 'Diese Staffel';

  @override
  String get nextSeason => 'Nächste Staffel';

  @override
  String get previousSeason => 'Vorherige Staffel';

  @override
  String get recommended => 'Empfohlen';

  @override
  String get recommendationsEmptyMessage =>
      'Schaue/lese einige Anime oder Manga, um Empfehlungen zu erhalten';

  @override
  String get recentUpdates => 'Neueste Aktualisierungen';

  @override
  String get allCaughtUpNew => 'Was ist neu?';

  @override
  String favorite(String type) {
    return 'Bevorzugte $type';
  }

  @override
  String get favorites => 'Favoriten';

  @override
  String get noFavourites =>
      'Es scheint, als würdest du nichts mögen. \nVersuche, eine Show zu mögen, um sie hier zu behalten.';

  @override
  String get noOnHold => 'Es sieht so aus, als hättest du nichts pausiert.';

  @override
  String manageLayout(String service, String page) {
    return 'Verwalten Sie das $page-Seitenlayout für $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Sie können das Layout der $page-Seite verwalten, indem Sie die Elemente per Drag & Drop verschieben';
  }

  @override
  String get gridView => 'Grid-Ansicht';

  @override
  String get listView => 'Listenansicht';

  @override
  String get compactView => 'Kompaktansicht';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Sortieren';

  @override
  String get utd => 'Von oben nach unten';

  @override
  String get dtu => 'Von unten nach oben';

  @override
  String get rtl => 'Rechts nach links';

  @override
  String get ltr => 'Links nach rechts';

  @override
  String get direction => 'Richtung';

  @override
  String get episodeWatched => 'Gesehene Episode';

  @override
  String get chapterRead => 'Gelesenes Kapitel';

  @override
  String get outOf => 'aus';

  @override
  String get totalOf => 'Insgesamt';

  @override
  String get selected => 'Gewählt';

  @override
  String get found => 'Gefunden';

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
  String available(String type) {
    return 'Verfügbare $type';
  }

  @override
  String installed(String type) {
    return 'Installierte $type';
  }

  @override
  String get extensionsDescription =>
      'Installieren und verwalten Sie Erweiterungen für zusätzliche Funktionen';

  @override
  String get addAnimeRepo => 'Hinzufügen von Anime Repo';

  @override
  String get addAnimeRepoDesc =>
      'Hinzufügen von Anime Repo aus verschiedenen Quellen';

  @override
  String get addMangaRepo => 'Manga Repo hinzufügen';

  @override
  String get addMangaRepoDesc =>
      'Hinzufügen von Manga Repo aus verschiedenen Quellen';

  @override
  String get addNovelRepo => 'Neueste Repo hinzufügen';

  @override
  String get addNovelRepoDesc =>
      'Neues Repo aus verschiedenen Quellen hinzufügen';

  @override
  String get loadExtensionsIcon => 'Symbol Erweiterungen laden';

  @override
  String get loadExtensionsIconDesc =>
      'Deaktivieren, wenn Erweiterungen Seite Verzögerungen';

  @override
  String get autoUpdate => 'Auto-Update';

  @override
  String get autoUpdateDesc => 'Auto Update Erweiterungen';

  @override
  String get installSourceToStart =>
      'Installieren Sie eine Quelle von der Erweiterungsseite, um zu beginnen';

  @override
  String get author => 'Autor';

  @override
  String get averageDuration => 'Durchschnittliche Dauer';

  @override
  String get characters => 'Charaktere';

  @override
  String get synopsis => 'Zusammenfassung';

  @override
  String get endDate => 'Enddatum';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Durchschnittliche Bewertung';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Name (Romaji)';

  @override
  String get popularity => 'Beliebtheit';

  @override
  String get relations => 'Beziehungen';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Quelle';

  @override
  String get staff => 'Besetzung';

  @override
  String get startDate => 'Startdatum';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synonyme';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Gesamt';

  @override
  String get collapseText => 'Weniger anzeigen';

  @override
  String get expandText => 'Mehr anzeigen';

  @override
  String get comingSoon => 'Demnächst';

  @override
  String get wrongTitle => 'Falscher Titel?';

  @override
  String get missingResults => 'Missing Results?';

  @override
  String get youTube => 'Auf YouTube spielen?';

  @override
  String get mediaNotFound => 'Medien nicht gefunden';

  @override
  String get noChapterFound => 'Kein Kapitel gefunden';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivitäten',
      one: 'Aktivität',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Sprache';

  @override
  String get account => 'Konto';

  @override
  String get accountDescription =>
      'Verwalten Sie Ihre AniList-, MAL- und Discord-Konten mühelos';

  @override
  String get common => 'Allgemein';

  @override
  String get commonDescription =>
      'Zugriff auf allgemeine Einstellungen für eine nahtlose App-Nutzung';

  @override
  String get animeDescription =>
      'Personalisieren und verwalten Sie Ihre Anime-Vorlieben';

  @override
  String get mangaDescription =>
      'Organisieren und gestalten Sie Ihr Manga-Erlebnis';

  @override
  String get about => 'Über';

  @override
  String get aboutDescription =>
      'Erfahren Sie mehr über die App und ihre Entwickler';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get notificationsDescription =>
      'Konfigurieren Sie, wie und wann Sie Benachrichtigungen erhalten';

  @override
  String get offlineMode => 'Offline-Modus';

  @override
  String get offlineModeDescription =>
      'Nutzen Sie die App ohne Internetverbindung';

  @override
  String get incognitoMode => 'Inkognito-Modus';

  @override
  String get incognitoModeDescription =>
      'Durchsuchen Sie die App, ohne Ihre Aktivitäten zu speichern';

  @override
  String get hidePrivate => 'Private verbergen';

  @override
  String get hidePrivateDescription =>
      'Private Serien von der Startseite ausblenden.';

  @override
  String get hiddenMedia => 'Verborgene Medien';

  @override
  String get noHiddenMediaFound => 'Keine versteckten Medien gefunden';

  @override
  String get playerSettingsTitle => 'Player-Einstellungen';

  @override
  String get playerSettingsDesc => 'Playereinstellungen ändern';

  @override
  String get speed => 'Geschwindigkeit';

  @override
  String get speedDescription => 'Standardgeschwindigkeit für den Player';

  @override
  String get cursedSpeed => 'Verfluchte Geschwindigkeit';

  @override
  String get cursedSpeedDescription =>
      'Für Menschen, die zu beschäftigt mit dem Leben sind';

  @override
  String get resizeMode => 'Größenänderungsmodus';

  @override
  String get resizeModeDescription =>
      'Standard-Größenänderungsmodus für den Player';

  @override
  String get skipButton => 'Überspringen-Button';

  @override
  String get skipButtonDescription => 'Dauer des Überspringen-Buttons';

  @override
  String get thumbLessSeekBar => 'Daumenlose Suchleiste';

  @override
  String get thumbLessSeekBarDesc =>
      'Entfernen Sie den Daumen aus der Suchleiste';

  @override
  String get customMPV => 'Benutzerdefinierte MPV Konfiguration';

  @override
  String customMPVDescription(String path) {
    return 'Aktivieren Sie diese Option, um Ihre eigene MPV-Konfigurationsdatei zu verwenden. Geben Sie Ihre benutzerdefinierte config an: $path';
  }

  @override
  String get adjustBrightness => 'Adjust Brightness';

  @override
  String get adjustBrightnessDescription =>
      'Enable brightness adjustment by swiping up/down on the left side of the screen';

  @override
  String get adjustVolume => 'Adjust Volume';

  @override
  String get adjustVolumeDescription =>
      'Enable volume adjustment by swiping up/down on the right side of the screen';

  @override
  String get subtitles => 'Untertitel';

  @override
  String get showSubtitles => 'Untertitel anzeigen';

  @override
  String get showSubtitlesDescription => 'Untertitel standardmäßig anzeigen';

  @override
  String get subtitlePreview => 'Untertitelvorschau';

  @override
  String get fontColor => 'Schriftfarbe';

  @override
  String get fontColorDescription => 'Schriftfarbe der Untertitel';

  @override
  String get fontFamily => 'Schriftart';

  @override
  String get fontFamilyDescription => 'Schriftart der Untertitel';

  @override
  String get fontSize => 'Schriftgröße';

  @override
  String get fontSizeDescription => 'Schriftgröße der Untertitel';

  @override
  String get fontWeight => 'Schriftstärke';

  @override
  String get fontWeightDescription => 'Schriftstärke der Untertitel';

  @override
  String get backgroundColor => 'Hintergrundfarbe';

  @override
  String get backgroundColorDescription => 'Hintergrundfarbe der Untertitel';

  @override
  String get outlineColor => 'Rahmenfarbe';

  @override
  String get outlineColorDescription => 'Rahmenfarbe der Untertitel';

  @override
  String get bottomPadding => 'Unterer Rand';

  @override
  String get bottomPaddingDescription => 'Unterer Rand der Untertitel';

  @override
  String get useLibass => 'Use Libass';

  @override
  String get useLibassDescription =>
      'Use Libass for subtitle rendering (overrides other subtitle settings)';

  @override
  String get useGpuNext => 'Use gpu-next';

  @override
  String get useGpuNextDescription =>
      'New rendering backend (may cause visual artifacts)';

  @override
  String get autoPlayNextEpisode => 'Auto Play Next Episode';

  @override
  String get autoPlayNextEpisodeDescription =>
      'Automatically play the next episode when the current one ends';

  @override
  String get automaticSourceSelection => 'Automatic Source Selection Method';

  @override
  String get automaticSourceSelectionDescription =>
      'Which method to use for automatic source selection';

  @override
  String get perAnimePlayerSettings => 'Per-Anime Player Settings';

  @override
  String get perAnimePlayerSettingsDesc =>
      'Use different player settings for each anime (disabling may override existing per-anime settings)';

  @override
  String get readerSettings => 'Leseeinstellungen';

  @override
  String get readerSettingsDesc => 'Leseeinstellungen ändern';

  @override
  String get spacedPages => 'Geräumige Seiten';

  @override
  String get spacedPagesDesc => 'Platz zwischen den Seiten';

  @override
  String get hideScrollbar => 'Scrollbar verbergen';

  @override
  String get hideScrollbarDesc => 'Scrollbar beim Lesen verbergen';

  @override
  String get hidePageNumber => 'Seitennummer verbergen';

  @override
  String get hidePageNumberDesc => 'Seite Nummer verbergen während des Lesens';

  @override
  String get theme => 'Thema';

  @override
  String get themeDescription =>
      'Passen Sie das Aussehen und das Ambiente Ihrer App an';

  @override
  String get darkMode => 'Dunkelmodus';

  @override
  String get enableDarkMode => 'Dunkelmodus aktivieren';

  @override
  String get glassEffect => 'Glaseffekt';

  @override
  String get glassEffectDescription =>
      'Gibt einen Frost-Glas-Effekt für die App';

  @override
  String get coverTheme => 'Wählen Sie das Thema';

  @override
  String get coverThemeDescription =>
      'Verwenden Sie Medien Abdeckung Bild als Thema Farbe';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Verwenden Sie die gleiche Farbe wie Ihr Hintergrundbild';

  @override
  String get customTheme => 'Zoll Thema';

  @override
  String get customThemeDescription =>
      'Verwenden Sie Ihre eigene Farbe für das Thema';

  @override
  String get oledThemeVariant => 'OLED-Thema-Variante';

  @override
  String get oledThemeVariantDescription => 'OLED-Modus aktivieren';

  @override
  String get colorPicker => 'Farbauswahl';

  @override
  String get pickColor => 'Wähle eine Farbe';

  @override
  String get colorPickerDescription => 'Wählen Sie eine Farbe';

  @override
  String get colorPickerDefault => 'Fehler';

  @override
  String get colorPickerCustom => 'Zoll';

  @override
  String get customPath => 'In den Warenkorb';

  @override
  String get customPathDescription =>
      'Setzen Sie einen benutzerdefinierten Pfad, um Dateien zu speichern\nLange Presse zu entfernen';

  @override
  String get selectDirectory => 'Wählen Sie ein Verzeichnis';

  @override
  String get selectMediaService => 'Mediendienst auswählen';

  @override
  String get logFile => 'Die Datei';

  @override
  String get logFileDescription => 'Aktualisieren der Protokolldatei';

  @override
  String get restoreSettings => 'Einstellungen wiederherstellen';

  @override
  String get differentCacheManager => 'Unterschiedlicher Cache Manager';

  @override
  String get differentCacheManagerDesc =>
      'Verwenden Sie verschiedene Bild Cache Manager';

  @override
  String get backupAndRestore => 'Backup & Restore';

  @override
  String get backupAndRestoreDescription =>
      'Save and restore the app preferences';

  @override
  String get backup => 'Backup';

  @override
  String get restore => 'Restore';

  @override
  String get webView => 'Web-Ansicht';

  @override
  String get developersHelpers => 'Entwickler/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsus unbezahlte Arbeit';

  @override
  String get supportMaintainer =>
      'Möchten Sie den Dartotsu-Entwickler unterstützen?\nÜberlegen Sie, eine Spende zu tätigen';

  @override
  String get donationGoal => 'Derzeit kein Spendenziel';

  @override
  String get options => 'Optionen';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';
}
