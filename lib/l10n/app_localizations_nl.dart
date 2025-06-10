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
      'De NIEUWE Beste App Voor\nHet Volgen van Anime & Manga';

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
  String get login => 'Inloggen';

  @override
  String loginTo(String service) {
    return 'Inloggen bij $service';
  }

  @override
  String logout(String type) {
    return 'Uitloggen $type';
  }

  @override
  String get confirmLogout => 'Weet je zeker dat je wilt uitloggen?';

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
  String get home => 'Home';

  @override
  String get search => 'Zoeken';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Instellingen';

  @override
  String get watch => 'Kijken';

  @override
  String get read => 'Lezen';

  @override
  String get info => 'Informatie';

  @override
  String get comments => 'Reacties';

  @override
  String get addToList => 'Toevoegen aan lijst';

  @override
  String get series => 'Serie';

  @override
  String get season => 'Seizoen';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Afleveringen',
      one: 'Aflevering',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hoofdstukken',
      one: 'Hoofdstuk',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Delen',
      one: 'Deel',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Films',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Afleveringen';

  @override
  String get totalChapters => 'Hoofdstukken';

  @override
  String get genres => 'Genres';

  @override
  String get scanlators => 'Scanlators';

  @override
  String list(String type) {
    return '$type Lijst';
  }

  @override
  String get watching => 'Kijken';

  @override
  String get reading => 'Lezing';

  @override
  String get readStatus => 'Lezen';

  @override
  String get watchStatus => '_';

  @override
  String planned(String type) {
    return 'Geplande $type';
  }

  @override
  String onHold(String type) {
    return 'In de wacht $type';
  }

  @override
  String get droppedAnime => 'Gedropte anime';

  @override
  String get droppedManga => 'Gedropte manga';

  @override
  String noDropped(String type) {
    return 'Je hebt nog geen $type gedropt.';
  }

  @override
  String get continueReading => 'Doorgaan met lezen';

  @override
  String get continueWatching => 'Doorgaan met kijken';

  @override
  String browse(String type) {
    return 'Bladeren door $type';
  }

  @override
  String trending(String type) {
    return 'Trending $type';
  }

  @override
  String popular(String type) {
    return 'Populair $type';
  }

  @override
  String get topAiring => 'Top uitzending';

  @override
  String topRated(String type) {
    return 'Top beoordeelde $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Meest favoriete $type';
  }

  @override
  String get thisSeason => 'Dit seizoen';

  @override
  String get nextSeason => 'Volgend seizoen';

  @override
  String get previousSeason => 'Vorige seizoen';

  @override
  String get recommended => 'Aanbevolen';

  @override
  String get recommendationsEmptyMessage =>
      'Bekijk/Lees wat Anime of Manga om aanbevelingen te krijgen';

  @override
  String get recentUpdates => 'Recente updates';

  @override
  String get allCaughtUpNew => 'Alles bijgelezen, wat is er nieuw?';

  @override
  String favorite(String type) {
    return 'Favoriet $type';
  }

  @override
  String get favorites => 'Favorieten';

  @override
  String get noFavourites =>
      'Het lijkt erop dat je niets leuk vindt,\nProbeer een show leuk te vinden om deze hier te houden.';

  @override
  String get noOnHold => 'Het lijkt erop dat je niets in de wacht hebt gezet.';

  @override
  String manageLayout(String service, String page) {
    return 'Beheer de $page pagina-indeling voor $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Je kunt de indeling voor de $page pagina beheren door de items te slepen en neer te zetten';
  }

  @override
  String get gridView => 'Rasterweergave';

  @override
  String get listView => 'Lijstweergave';

  @override
  String get compactView => 'Compacte weergave';

  @override
  String get layout => 'Indeling';

  @override
  String get sort => 'Sorteer';

  @override
  String get utd => 'Van boven naar beneden';

  @override
  String get dtu => 'Te updaten';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Aflevering bekeken';

  @override
  String get chapterRead => 'Hoofdstuk gelezen';

  @override
  String get outOf => 'ga weg';

  @override
  String get totalOf => 'Volledig';

  @override
  String get selected => 'Verkocht';

  @override
  String get found => 'Gevonden';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uitbreidingen',
      one: 'Uitbreiding',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Beschikbaar $type';
  }

  @override
  String installed(String type) {
    return 'Geïnstalleerd $type';
  }

  @override
  String get extensionsDescription =>
      'Installeer en beheer extensies voor extra functionaliteit';

  @override
  String get addAnimeRepo => 'Geef Anime Repo';

  @override
  String get addAnimeRepoDesc =>
      'Voeg Anime Repo toe van verschillende bronnen';

  @override
  String get addMangaRepo => 'Advert Manga Repo';

  @override
  String get addMangaRepoDesc => 'Advert Manga Vertaling';

  @override
  String get addNovelRepo => 'Nieuwe repository toevoegen';

  @override
  String get addNovelRepoDesc => 'Add Novel Repo van verschillende bronnen';

  @override
  String get loadExtensionsIcon => 'Laad Extenions icon';

  @override
  String get loadExtensionsIconDesc => 'Abel als verlenging pagina\'s';

  @override
  String get autoUpdate => 'Auto Update';

  @override
  String get autoUpdateDesc => 'Auto Update Extention';

  @override
  String get installSourceToStart =>
      'Een bron van uitgebreide pagina om te beginnen';

  @override
  String get author => 'Auteur';

  @override
  String get averageDuration => 'Gemiddelde duur';

  @override
  String get characters => 'Personages';

  @override
  String get description => 'Synopsis';

  @override
  String get synopsis => 'Beschrijving';

  @override
  String get endDate => 'Einddatum';

  @override
  String get format => 'Formaat';

  @override
  String get meanScore => 'Gemiddelde score';

  @override
  String get name => 'Naam';

  @override
  String get nameRomaji => 'Naam (Romaji)';

  @override
  String get popularity => 'Populariteit';

  @override
  String get relations => 'Relaties';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Sequel';

  @override
  String get source => 'Bron';

  @override
  String get staff => 'Personeel';

  @override
  String get startDate => 'Startdatum';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synoniemen';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Totaal';

  @override
  String get collapseText => 'toon minder';

  @override
  String get expandText => 'toon meer';

  @override
  String get comingSoon => 'Komt binnenkort';

  @override
  String get wrongTitle => 'Verkeerde Title?';

  @override
  String get youTube => 'Op YouTube spelen?';

  @override
  String get mediaNotFound => 'Media niet gevonden';

  @override
  String get noChapterFound => 'Geen hoofdstuk gevonden';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Activiteiten',
      one: 'Activiteit',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Taal';

  @override
  String get account => 'Account';

  @override
  String get accountDescription =>
      'Beheer je AniList, MAL en Discord accounts moeiteloos';

  @override
  String get common => 'Algemeen';

  @override
  String get commonDescription =>
      'Toegang tot algemene instellingen voor naadloos gebruik van de app';

  @override
  String get animeDescription => 'Personaliseer en beheer je anime voorkeuren';

  @override
  String get mangaDescription => 'Organiseer en pas je manga-ervaring aan';

  @override
  String get about => 'Over';

  @override
  String get aboutDescription => 'Leer meer over de app en de makers';

  @override
  String get notifications => 'Meldingen';

  @override
  String get notificationsDescription =>
      'Configureer hoe en wanneer je meldingen ontvangt';

  @override
  String get offlineMode => 'Offline modus';

  @override
  String get offlineModeDescription =>
      'Gebruik de app zonder internetverbinding';

  @override
  String get incognitoMode => 'Incognito modus';

  @override
  String get incognitoModeDescription =>
      'Blader zonder je activiteit op te slaan';

  @override
  String get hidePrivate => 'Verberg privé';

  @override
  String get hidePrivateDescription =>
      'Verberg privéseries van de startpagina.';

  @override
  String get hiddenMedia => 'Verborgen media';

  @override
  String get noHiddenMediaFound => 'Geen verborgen media gevonden';

  @override
  String get playerSettingsTitle => 'Spelerinstellingen';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Snelheid';

  @override
  String get speedDescription => 'Standaard snelheid voor speler';

  @override
  String get cursedSpeed => 'Vervloekte Snelheid';

  @override
  String get cursedSpeedDescription =>
      'Voor mensen die te druk zijn met het leven';

  @override
  String get resizeMode => 'Wijzigmodus';

  @override
  String get resizeModeDescription => 'Standaard wijzigmodus voor speler';

  @override
  String get skipButton => 'Overslaan-knop';

  @override
  String get skipButtonDescription => 'Duur van de overslaan-knop';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Ondertitels';

  @override
  String get showSubtitles => 'Toon ondertitels';

  @override
  String get showSubtitlesDescription => 'Toon ondertitels standaard';

  @override
  String get subtitlePreview => 'Ondersteunt-preview';

  @override
  String get fontColor => 'Letterkleur';

  @override
  String get fontColorDescription => 'Letterkleur van ondertitels';

  @override
  String get fontFamily => 'Lettertype';

  @override
  String get fontFamilyDescription => 'Lettertype van ondertitels';

  @override
  String get fontSize => 'Lettergrootte';

  @override
  String get fontSizeDescription => 'Lettergrootte van ondertitels';

  @override
  String get fontWeight => 'Lettervet';

  @override
  String get fontWeightDescription => 'Lettervet van ondertitels';

  @override
  String get backgroundColor => 'Achtergrondkleur';

  @override
  String get backgroundColorDescription => 'Achtergrondkleur van ondertitels';

  @override
  String get outlineColor => 'Randkleur';

  @override
  String get outlineColorDescription => 'Randkleur van ondertitels';

  @override
  String get bottomPadding => 'Onderste marge';

  @override
  String get bottomPaddingDescription => 'Onderste marge van ondertitels';

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
  String get theme => 'Thema';

  @override
  String get themeDescription => 'Pas de uitstraling en sfeer van je app aan';

  @override
  String get darkMode => 'Donkere modus';

  @override
  String get enableDarkMode => 'Donkere modus inschakelen';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Gebruik dezelfde kleur als je wallpaper';

  @override
  String get customTheme => 'Aangepast thema';

  @override
  String get customThemeDescription => 'Gebruik je eigen kleur voor het thema';

  @override
  String get oledThemeVariant => 'OLED-themavariant';

  @override
  String get oledThemeVariantDescription => 'Schakel OLED-modus in';

  @override
  String get colorPicker => 'Kleurkiezer';

  @override
  String get pickColor => 'Kies een kleur';

  @override
  String get colorPickerDescription => 'Selecteer een kleur';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Custom';

  @override
  String get customPath => 'Aangepast pad';

  @override
  String get customPathDescription =>
      'Zet een gewoon pad om bestanden te redden\nLange pers verwijdert';

  @override
  String get selectDirectory => 'Selecteer een directeur';

  @override
  String get selectMediaService => 'Selecteer mediaservice';

  @override
  String get logFile => 'Log File';

  @override
  String get logFileDescription => 'Deel het logboek';

  @override
  String get restoreSettings => 'Herstel instellingen';

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
      'Wil je de beheerder van Dartotsu steunen?\nOverweeg te doneren';

  @override
  String get donationGoal => 'Geen donatiedoel op dit moment';

  @override
  String get options => 'Opties';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annuleren';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';
}
