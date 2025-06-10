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
      'Nova najbolja aplikacija za\npraćenje animea i mange';

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
  String get login => 'Prijava';

  @override
  String loginTo(String service) {
    return 'Prijavi se na $service';
  }

  @override
  String logout(String type) {
    return 'Odjavi se $type';
  }

  @override
  String get confirmLogout => 'Jeste li sigurni da se želite odjaviti?';

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
  String get ln => 'Lagana novela';

  @override
  String get home => 'Home';

  @override
  String get search => 'Pretraži';

  @override
  String get calendar => 'Kalendar';

  @override
  String get settings => 'Postavke';

  @override
  String get watch => 'Gledaj';

  @override
  String get read => 'Čitaj';

  @override
  String get info => 'INFORMACIJE';

  @override
  String get comments => 'Komentari';

  @override
  String get addToList => 'DODAJ NA POPIS';

  @override
  String get series => 'Series';

  @override
  String get season => 'Sezona';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Epizode',
      one: 'Epizoda',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Poglavlja',
      one: 'Poglavlje',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Svesci',
      one: 'Svezak',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filmovi',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Epizode';

  @override
  String get totalChapters => 'Poglavlja';

  @override
  String get genres => 'Žanrovi';

  @override
  String get scanlators => 'Skanelatori';

  @override
  String list(String type) {
    return 'Popis $type';
  }

  @override
  String get watching => 'Gledanje';

  @override
  String get reading => 'Čitanje';

  @override
  String get readStatus => 'Čitaj';

  @override
  String get watchStatus => 'gledao';

  @override
  String planned(String type) {
    return 'Planirano $type';
  }

  @override
  String onHold(String type) {
    return 'Na čekanju $type';
  }

  @override
  String get droppedAnime => 'Odbačeni Anime';

  @override
  String get droppedManga => 'Odbačena Manga';

  @override
  String noDropped(String type) {
    return 'Niste još odustali od $type.';
  }

  @override
  String get continueReading => 'Nastavi čitati';

  @override
  String get continueWatching => 'Nastavi gledati';

  @override
  String browse(String type) {
    return 'Pregledaj $type';
  }

  @override
  String trending(String type) {
    return 'Trendujuće $type';
  }

  @override
  String popular(String type) {
    return 'Popularno $type';
  }

  @override
  String get topAiring => 'Najbolje trenutno emitirano';

  @override
  String topRated(String type) {
    return 'Najbolje ocijenjeno $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Najdraže $type';
  }

  @override
  String get thisSeason => 'Ove sezone';

  @override
  String get nextSeason => 'Sljedeće sezone';

  @override
  String get previousSeason => 'Prethodne sezone';

  @override
  String get recommended => 'Preporučeno';

  @override
  String get recommendationsEmptyMessage =>
      'Gledajte/Čitajte Anime ili Mangu za preporuke';

  @override
  String get recentUpdates => 'Nedavne izmjene';

  @override
  String get allCaughtUpNew => 'Sve je uhvaćeno, što je novo?';

  @override
  String favorite(String type) {
    return 'Omiljeno $type';
  }

  @override
  String get favorites => 'Favoriti';

  @override
  String get noFavourites =>
      'Izgleda da ti se ništa ne sviđa,\nPokušaj dodati emisiju u favorite da je držiš ovdje.';

  @override
  String get noOnHold => 'Izgleda da ništa nije stavljeno na čekanje.';

  @override
  String manageLayout(String service, String page) {
    return 'Uredi izgled stranice $page za $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Možete urediti izgled stranice $page povlačenjem i ispuštanjem stavki';
  }

  @override
  String get gridView => 'Prikaz mreže';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Kompaktni prikaz';

  @override
  String get layout => 'Izgled';

  @override
  String get sort => 'Sortiraj';

  @override
  String get utd => 'Odozgo prema dolje';

  @override
  String get dtu => 'Odozdo prema gore';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Epizoda pogledana';

  @override
  String get chapterRead => 'Poglavlje pročitano';

  @override
  String get outOf => 'od';

  @override
  String get totalOf => 'Ukupno';

  @override
  String get selected => 'Odabrano';

  @override
  String get found => 'Pronađeno';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ekstenzije',
      one: 'Ekstenzija',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Dostupno $type';
  }

  @override
  String installed(String type) {
    return 'Instalirano $type';
  }

  @override
  String get extensionsDescription =>
      'Instalirajte i upravljajte ekstenzijama za dodatne funkcionalnosti';

  @override
  String get addAnimeRepo => 'Dodaj Anime Repo';

  @override
  String get addAnimeRepoDesc => 'Dodaj Anime Repo iz raznih izvora';

  @override
  String get addMangaRepo => 'Dodaj Manga Repo';

  @override
  String get addMangaRepoDesc => 'Dodaj Manga Repo iz raznih izvora';

  @override
  String get addNovelRepo => 'Dodaj Roman Repo';

  @override
  String get addNovelRepoDesc => 'Dodaj Roman Repo iz raznih izvora';

  @override
  String get loadExtensionsIcon => 'Učitaj ikonu proširenja';

  @override
  String get loadExtensionsIconDesc =>
      'Onemogući ako stranica proširenja usporava';

  @override
  String get autoUpdate => 'Automatsko ažuriranje';

  @override
  String get autoUpdateDesc => 'Automatski ažuriraj proširenja';

  @override
  String get installSourceToStart =>
      'Instalirajte izvor sa stranice proširenja za početak';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'Prosječno trajanje';

  @override
  String get characters => 'Likovi';

  @override
  String get description => 'Sinopsis';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Ime (Romaji)';

  @override
  String get popularity => 'Popularnost';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Osoblje';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Sinonimi';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'prikaži manje';

  @override
  String get expandText => 'prikaži više';

  @override
  String get comingSoon => 'Uskoro dolazi';

  @override
  String get wrongTitle => 'Pogrešan naslov?';

  @override
  String get youTube => 'Reproduciraj na YouTubeu?';

  @override
  String get mediaNotFound => 'Medij nije pronađen';

  @override
  String get noChapterFound => 'Nije pronađeno poglavlje';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktivnosti',
      one: 'Aktivnost',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Jezik';

  @override
  String get account => 'Račun';

  @override
  String get accountDescription => 'Jednostavno upravljajte svojim računima';

  @override
  String get common => 'Općenito';

  @override
  String get commonDescription =>
      'Pristupite općim postavkama za lakše korištenje aplikacije';

  @override
  String get animeDescription =>
      'Personalizirajte i upravljajte svojim anime preferencijama';

  @override
  String get mangaDescription =>
      'Organizirajte i prilagodite svoje iskustvo čitanja mange';

  @override
  String get about => 'O aplikaciji';

  @override
  String get aboutDescription =>
      'Saznajte više o aplikaciji i njezinim tvorcima';

  @override
  String get notifications => 'Obavijesti';

  @override
  String get notificationsDescription =>
      'Postavite kako i kada želite primati obavijesti';

  @override
  String get offlineMode => 'Izvanmrežni način rada';

  @override
  String get offlineModeDescription =>
      'Koristite aplikaciju bez internetske veze';

  @override
  String get incognitoMode => 'Anonimni način rada';

  @override
  String get incognitoModeDescription =>
      'Pregledavajte bez spremanja aktivnosti';

  @override
  String get hidePrivate => 'Sakrij privatno';

  @override
  String get hidePrivateDescription =>
      'Sakrij privatne serije s početne stranice.';

  @override
  String get hiddenMedia => 'Skriveni sadržaj';

  @override
  String get noHiddenMediaFound => 'Nije pronađen skriveni sadržaj';

  @override
  String get playerSettingsTitle => 'Postavke Playera';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Brzina';

  @override
  String get speedDescription => 'Zadana brzina za player';

  @override
  String get cursedSpeed => 'Luda brzina';

  @override
  String get cursedSpeedDescription => 'Za one koji su prezaposleni';

  @override
  String get resizeMode => 'Način prilagodbe';

  @override
  String get resizeModeDescription => 'Zadani način prilagodbe za player';

  @override
  String get skipButton => 'Preskakanje';

  @override
  String get skipButtonDescription => 'Trajanje tipke za preskakanje';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Titlovi';

  @override
  String get showSubtitles => 'Prikaži titlove';

  @override
  String get showSubtitlesDescription =>
      'Prikaži titlove prema zadanim postavkama';

  @override
  String get subtitlePreview => 'Pregled titlova';

  @override
  String get fontColor => 'Boja fonta';

  @override
  String get fontColorDescription => 'Boja fonta za titlove';

  @override
  String get fontFamily => 'Obitelj fonta';

  @override
  String get fontFamilyDescription => 'Obitelj fonta za titlove';

  @override
  String get fontSize => 'Veličina fonta';

  @override
  String get fontSizeDescription => 'Veličina fonta za titlove';

  @override
  String get fontWeight => 'Stil fonta';

  @override
  String get fontWeightDescription => 'Stil fonta za titlove';

  @override
  String get backgroundColor => 'Boja pozadine';

  @override
  String get backgroundColorDescription => 'Boja pozadine za titlove';

  @override
  String get outlineColor => 'Boja konture';

  @override
  String get outlineColorDescription => 'Boja konture za titlove';

  @override
  String get bottomPadding => 'Donji razmak';

  @override
  String get bottomPaddingDescription => 'Donji razmak za titlove';

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
  String get themeDescription => 'Prilagodite izgled i dojam aplikacije';

  @override
  String get darkMode => 'Tamni način rada';

  @override
  String get enableDarkMode => 'Omogući tamni način rada';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Koristite boju svoje pozadine';

  @override
  String get customTheme => 'Vlastita tema';

  @override
  String get customThemeDescription => 'Koristite vlastitu boju za temu';

  @override
  String get oledThemeVariant => 'OLED tema';

  @override
  String get oledThemeVariantDescription => 'Omogući OLED način';

  @override
  String get colorPicker => 'Odabir boje';

  @override
  String get pickColor => 'Odaberi boju';

  @override
  String get colorPickerDescription => 'Odaberite boju';

  @override
  String get colorPickerDefault => 'Zadano';

  @override
  String get colorPickerCustom => 'Prilagođeno';

  @override
  String get customPath => 'Prilagođeni put';

  @override
  String get customPathDescription =>
      'Postavite prilagođeni put za spremanje datoteka\nDugo pritisnite za uklanjanje';

  @override
  String get selectDirectory => 'Odaberite imenik';

  @override
  String get selectMediaService => 'Odaberite Medijska usluga';

  @override
  String get logFile => 'Dnevnička datoteka';

  @override
  String get logFileDescription => 'Podijelite log datoteku';

  @override
  String get restoreSettings => 'Vrati postavke';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Web prikaz';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Želite li podržati održavatelja Dartotsua?\nRazmislite o donaciji';

  @override
  String get donationGoal => 'Trenutno nema cilja za donacije';

  @override
  String get options => 'Opcije';

  @override
  String get ok => 'U redu';

  @override
  String get cancel => 'Odustani';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';
}
