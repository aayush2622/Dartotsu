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
  String get appTagline => 'Den NYE bedste app til\nat spore anime og manga';

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
  String get login => 'Log ind';

  @override
  String loginTo(String service) {
    return 'Log ind på $service';
  }

  @override
  String logout(String type) {
    return 'Log ud $type';
  }

  @override
  String get confirmLogout => 'Bekræft log ud?';

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
  String get ln => 'Lettere roman';

  @override
  String get home => 'Hjem';

  @override
  String get search => 'Søg';

  @override
  String get calendar => 'Kalender';

  @override
  String get settings => 'Indstillinger';

  @override
  String get watch => 'Se';

  @override
  String get read => 'Læs';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Kommentarer';

  @override
  String get addToList => 'Tilføj til liste';

  @override
  String get series => 'Serie';

  @override
  String get season => 'Sæson';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Episoder',
      one: 'Episode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kapitels',
      one: 'Kapitel',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Binds',
      one: 'Bind',
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
  String get totalEpisodes => 'Totale episoder';

  @override
  String get totalChapters => 'Totale kapitler';

  @override
  String get genres => 'Genrer';

  @override
  String get scanlators => 'Scanlatorer';

  @override
  String list(String type) {
    return '$type Liste';
  }

  @override
  String get watching => 'Ser på';

  @override
  String get reading => 'Læselæsning';

  @override
  String get readStatus => 'Læs';

  @override
  String get watchStatus => 'Så';

  @override
  String planned(String type) {
    return 'Planlagt $type';
  }

  @override
  String onHold(String type) {
    return 'På hold $type';
  }

  @override
  String get droppedAnime => 'Droppede anime';

  @override
  String get droppedManga => 'Droppede manga';

  @override
  String noDropped(String type) {
    return 'Du har ikke droppet nogen $type endnu.';
  }

  @override
  String get continueReading => 'Fortsæt læsning';

  @override
  String get continueWatching => 'Fortsæt se';

  @override
  String browse(String type) {
    return 'Gennemse $type';
  }

  @override
  String trending(String type) {
    return 'Trendy $type';
  }

  @override
  String popular(String type) {
    return 'Populær $type';
  }

  @override
  String get topAiring => 'Top luftning';

  @override
  String topRated(String type) {
    return 'Top vurderet $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Mest favoritter $type';
  }

  @override
  String get thisSeason => 'Denne sæson';

  @override
  String get nextSeason => 'Næste sæson';

  @override
  String get previousSeason => 'Forrige sæson';

  @override
  String get recommended => 'Anbefalet';

  @override
  String get recommendationsEmptyMessage => 'Ingen anbefalinger tilgængelige';

  @override
  String get recentUpdates => 'Seneste opdateringer';

  @override
  String get allCaughtUpNew => 'Alt fanget, hvad er nyt?';

  @override
  String favorite(String type) {
    return 'Favorit $type';
  }

  @override
  String get favorites => 'Favoritter';

  @override
  String get noFavourites =>
      'Det ser ud til, at du ikke kan lide noget,\nPrøv at like et show for at beholde det her.';

  @override
  String get noOnHold => 'Det ser ud til, at du ikke har sat noget i bero.';

  @override
  String manageLayout(String service, String page) {
    return 'Administrer sidelayout på $page for $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Du kan administrere layoutet for siden $page ved at trække og slippe elementerne';
  }

  @override
  String get gridView => 'Gittervisning';

  @override
  String get listView => 'Listevisning';

  @override
  String get compactView => 'Kompakt visning';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Sorter';

  @override
  String get utd => 'Udgivet';

  @override
  String get dtu => 'Datoudgivelse';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Episode set';

  @override
  String get chapterRead => 'Kapitel læst';

  @override
  String get outOf => 'ud af';

  @override
  String get totalOf => 'Samlet set';

  @override
  String get selected => 'Udvalgt valg';

  @override
  String get found => 'Fundet fundet';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Udvidelses',
      one: 'Udvidelse',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Tilgængelig $type';
  }

  @override
  String installed(String type) {
    return 'Installeret $type';
  }

  @override
  String get extensionsDescription =>
      'Installer og administrer udvidelser for ekstra funktionalitet';

  @override
  String get addAnimeRepo => 'Tilføj anime Repo';

  @override
  String get addAnimeRepoDesc => 'Tilføj anime Repo fra forskellige kilder';

  @override
  String get addMangaRepo => 'Tilføj Manga Repo';

  @override
  String get addMangaRepoDesc => 'Tilføj Manga Repo fra forskellige kilder';

  @override
  String get addNovelRepo => 'Tilføj Novel Repo';

  @override
  String get addNovelRepoDesc => 'Tilføj Novel Repo fra forskellige kilder';

  @override
  String get loadExtensionsIcon => 'Indlæs udvidelser ikon';

  @override
  String get loadExtensionsIconDesc => 'Kan ikke findes, hvis sidelag';

  @override
  String get autoUpdate => 'Automatisk opdatering';

  @override
  String get autoUpdateDesc => 'Automatisk opdateringsudvidelser';

  @override
  String get installSourceToStart =>
      'Installer en kilde fra udvidelsessiden for at starte';

  @override
  String get author => 'Forfatter';

  @override
  String get averageDuration => 'Gennemsnitlig varighed';

  @override
  String get characters => 'Karakterer';

  @override
  String get description => 'Synopsis';

  @override
  String get synopsis => 'Synopsis';

  @override
  String get endDate => 'Slutdato';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Gennemsnitlig score';

  @override
  String get name => 'Navn';

  @override
  String get nameRomaji => 'Romaji navn';

  @override
  String get popularity => 'Popularitet';

  @override
  String get relations => 'Relationer';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Sequel';

  @override
  String get source => 'Kilde';

  @override
  String get staff => 'Personalet';

  @override
  String get startDate => 'Startdato';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synonymer';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'Skjul tekst';

  @override
  String get expandText => 'Udvid tekst';

  @override
  String get comingSoon => 'Kommer snart';

  @override
  String get wrongTitle => 'Forkert titel?';

  @override
  String get youTube => 'Afspil på YouTube?';

  @override
  String get mediaNotFound => 'Ikke fundet';

  @override
  String get noChapterFound => 'Ingen kapitel fundet';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivitets',
      one: 'Aktivitet',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Sprog';

  @override
  String get account => 'Konto';

  @override
  String get accountDescription =>
      'Administrer dine AniList-, MAL- og Discord-konti nemt';

  @override
  String get common => 'Almindelig';

  @override
  String get commonDescription =>
      'Få adgang til generelle indstillinger for nem appbrug';

  @override
  String get animeDescription => 'Tilpas og administrer dine anime-præferencer';

  @override
  String get mangaDescription => 'Organiser og tilpas din manga-oplevelse';

  @override
  String get about => 'Om';

  @override
  String get aboutDescription => 'Lær mere om appen og dens skabere';

  @override
  String get notifications => 'Notifikationer';

  @override
  String get notificationsDescription =>
      'Konfigurer hvordan og hvornår du modtager notifikationer';

  @override
  String get offlineMode => 'Offline-tilstand';

  @override
  String get offlineModeDescription => 'Brug appen uden internetforbindelse';

  @override
  String get incognitoMode => 'Inkognitotilstand';

  @override
  String get incognitoModeDescription => 'Surf uden at gemme din aktivitet';

  @override
  String get hidePrivate => 'Skjul privat';

  @override
  String get hidePrivateDescription => 'Skjul private serier fra hjemmesiden.';

  @override
  String get hiddenMedia => 'Skjulte medier';

  @override
  String get noHiddenMediaFound => 'Ingen skjulte medier fundet';

  @override
  String get playerSettingsTitle => 'Afspillerindstillinger';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Hastighed';

  @override
  String get speedDescription => 'Standardhastighed for afspilleren';

  @override
  String get cursedSpeed => 'Forbandet Hastighed';

  @override
  String get cursedSpeedDescription => 'For folk, der har travlt med livet';

  @override
  String get resizeMode => 'Tilpasningstilstand';

  @override
  String get resizeModeDescription =>
      'Standardtilpasningstilstand for afspilleren';

  @override
  String get skipButton => 'Spring-knap';

  @override
  String get skipButtonDescription => 'Spring-knappens varighed';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Undertekster';

  @override
  String get showSubtitles => 'Vis undertekster';

  @override
  String get showSubtitlesDescription => 'Vis undertekster som standard';

  @override
  String get subtitlePreview => 'Forhåndsvisning af undertekster';

  @override
  String get fontColor => 'Skriftfarve';

  @override
  String get fontColorDescription => 'Undertekstens skriftfarve';

  @override
  String get fontFamily => 'Skrifttype';

  @override
  String get fontFamilyDescription => 'Undertekstens skrifttype';

  @override
  String get fontSize => 'Skriftstørrelse';

  @override
  String get fontSizeDescription => 'Undertekstens skriftstørrelse';

  @override
  String get fontWeight => 'Skrifttykkelse';

  @override
  String get fontWeightDescription => 'Undertekstens skrifttykkelse';

  @override
  String get backgroundColor => 'Baggrundsfarve';

  @override
  String get backgroundColorDescription => 'Undertekstens baggrundsfarve';

  @override
  String get outlineColor => 'Kantfarve';

  @override
  String get outlineColorDescription => 'Undertekstens kantfarve';

  @override
  String get bottomPadding => 'Bundmargin';

  @override
  String get bottomPaddingDescription => 'Undertekstens bundmargin';

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
  String get themeDescription => 'Tilpas appens udseende og stemning';

  @override
  String get darkMode => 'Mørk tilstand';

  @override
  String get enableDarkMode => 'Aktivér mørk tilstand';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Brug samme farve som din baggrund';

  @override
  String get customTheme => 'Tilpasset tema';

  @override
  String get customThemeDescription => 'Brug din egen farve til temaet';

  @override
  String get oledThemeVariant => 'OLED-temavariant';

  @override
  String get oledThemeVariantDescription => 'Aktivér OLED-tilstand';

  @override
  String get colorPicker => 'Farvevælger';

  @override
  String get pickColor => 'Vælg farve';

  @override
  String get colorPickerDescription => 'Vælg en farve';

  @override
  String get colorPickerDefault => 'Standard';

  @override
  String get colorPickerCustom => 'Tilpasset tilpasset';

  @override
  String get customPath => 'Tilpasset vej';

  @override
  String get customPathDescription =>
      'Indstil en brugerdefineret sti til at gemme filer\nLang tryk for at fjerne';

  @override
  String get selectDirectory => 'Vælg en mappe';

  @override
  String get selectMediaService => 'Vælg medietjeneste';

  @override
  String get logFile => 'Log på fil';

  @override
  String get logFileDescription => 'Del logfilen';

  @override
  String get restoreSettings => 'Gendan indstillinger';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Webvisning';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Vil du støtte Dartotsus vedligeholder?\nOvervej at donere';

  @override
  String get donationGoal => 'Ingen donationsmål lige nu';

  @override
  String get options => 'Valgmuligheder';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Annuller';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';
}
