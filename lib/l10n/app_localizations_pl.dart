// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Nowa najlepsza aplikacja do\nśledzenia anime i mangi';

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
  String get login => 'Zaloguj się';

  @override
  String loginTo(String service) {
    return 'Zaloguj się do $service';
  }

  @override
  String logout(String type) {
    return 'Wyloguj się $type';
  }

  @override
  String get confirmLogout => 'Czy na pewno chcesz się wylogować?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Mandżwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Powieść';

  @override
  String get ln => 'Lekka powieść';

  @override
  String get home => 'Dom';

  @override
  String get search => 'Szukaj';

  @override
  String get calendar => 'Kalendarz';

  @override
  String get settings => 'Ustawienia';

  @override
  String get watch => 'Oglądaj';

  @override
  String get read => 'Czytaj';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Komentarze';

  @override
  String get addToList => 'Oficjalna strona';

  @override
  String get series => 'Seria';

  @override
  String get season => 'Sezon';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Odcinki',
      one: 'Odcinek',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rozdziały',
      one: 'Rozdział',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tomy',
      one: 'Tom',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filmy',
      one: 'Film',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Odcinki';

  @override
  String get totalChapters => 'Rozdziały';

  @override
  String get genres => 'Gatunki';

  @override
  String get scanlators => 'Tłumacze';

  @override
  String list(String type) {
    return 'Lista $type';
  }

  @override
  String get watching => 'Dozorujący';

  @override
  String get reading => 'Czytać';

  @override
  String get readStatus => 'Czytaj';

  @override
  String get watchStatus => 'Oglądałem';

  @override
  String planned(String type) {
    return 'Zaplanowane $type';
  }

  @override
  String onHold(String type) {
    return 'Wstrzymane $type';
  }

  @override
  String get droppedAnime => 'Porzucone anime';

  @override
  String get droppedManga => 'Porzucona manga';

  @override
  String noDropped(String type) {
    return 'Nie porzuciłeś jeszcze żadnych $type.';
  }

  @override
  String get continueReading => 'Kontynuuj czytanie';

  @override
  String get continueWatching => 'Kontynuuj oglądanie';

  @override
  String browse(String type) {
    return 'Przeglądaj $type';
  }

  @override
  String trending(String type) {
    return 'Trendy $type';
  }

  @override
  String popular(String type) {
    return 'Popularny $type';
  }

  @override
  String get topAiring => 'Najlepsze emisje';

  @override
  String topRated(String type) {
    return 'Najwyżej oceniane $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Najbardziej ulubione $type';
  }

  @override
  String get thisSeason => 'Ten sezon';

  @override
  String get nextSeason => 'Następny sezon';

  @override
  String get previousSeason => 'Poprzedni sezon';

  @override
  String get recommended => 'Polecane';

  @override
  String get recommendationsEmptyMessage =>
      'Oglądaj/czytaj anime lub mangę, aby otrzymać rekomendacje';

  @override
  String get recentUpdates => 'Ostatnie aktualizacje';

  @override
  String get allCaughtUpNew => 'Wszystko nadrobione, co nowego?';

  @override
  String favorite(String type) {
    return 'Ulubione $type';
  }

  @override
  String get favorites => 'Ulubione';

  @override
  String get noFavourites =>
      'Wygląda na to, że nic ci się nie podoba.\nPolub coś, aby trzymać to tutaj.';

  @override
  String get noOnHold => 'Wygląda na to, że nic nie wstrzymałeś.';

  @override
  String manageLayout(String service, String page) {
    return 'Zarządzaj układem strony $page dla $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Możesz zarządzać układem strony $page, przeciągając i upuszczając elementy';
  }

  @override
  String get gridView => 'Widok siatki';

  @override
  String get listView => 'Strona oficjalna';

  @override
  String get compactView => 'Widok kompaktowy';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Sortuj';

  @override
  String get utd => 'Od góry do dołu';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Odcinek obejrzany';

  @override
  String get chapterRead => 'Rozdział przeczytany';

  @override
  String get outOf => 'poza';

  @override
  String get totalOf => 'Łącznie';

  @override
  String get selected => 'Wybrany';

  @override
  String get found => 'Założyciel';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rozszerzenia',
      one: 'Rozszerzenie',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Dostępne $type';
  }

  @override
  String installed(String type) {
    return 'Zainstalowane $type';
  }

  @override
  String get extensionsDescription =>
      'Instaluj i zarządzaj rozszerzeniami dla dodatkowej funkcjonalności';

  @override
  String get addAnimeRepo => 'Anime Repo (ang.)';

  @override
  String get addAnimeRepoDesc => 'Addd Anime Repo (ang.)';

  @override
  String get addMangaRepo => 'Addd Manga Repo (ang.)';

  @override
  String get addMangaRepoDesc => 'Addd Manga Repo';

  @override
  String get addNovelRepo => 'Ad Novel Repovel (ang.)';

  @override
  String get addNovelRepoDesc => 'Add Novel Repo (ang.)';

  @override
  String get loadExtensionsIcon => 'Load Extensions';

  @override
  String get loadExtensionsIconDesc => 'Odpowiednie, jeśli rozszerzenie strony';

  @override
  String get autoUpdate => 'Auto Update';

  @override
  String get autoUpdateDesc => 'Auto Update Extension (ang.)';

  @override
  String get installSourceToStart =>
      'Instalacja źródła z witryny przedłużonej do rozpoczęcia produkcji';

  @override
  String get author => 'Autor';

  @override
  String get averageDuration => 'Średni czas trwania';

  @override
  String get characters => 'Postacie';

  @override
  String get description => 'Streszczenie';

  @override
  String get synopsis => 'Opis';

  @override
  String get endDate => 'End';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Nazwa';

  @override
  String get nameRomaji => 'Nazwa (Romaji)';

  @override
  String get popularity => 'Popularność';

  @override
  String get relations => 'Stosunek';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'WYDAWCA';

  @override
  String get source => 'Źródło';

  @override
  String get staff => 'Obsada';

  @override
  String get startDate => 'Start';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Synonimy';

  @override
  String get tags => 'Tag';

  @override
  String get total => 'Całkowity';

  @override
  String get collapseText => 'pokaż mniej';

  @override
  String get expandText => 'pokaż więcej';

  @override
  String get comingSoon => 'Wkrótce';

  @override
  String get wrongTitle => 'Zdziwość tytułu?';

  @override
  String get youTube => 'Gra na YouTube?';

  @override
  String get mediaNotFound => 'Media nie są znane';

  @override
  String get noChapterFound => 'Żadna z rozdziałów nie została odnaleziona';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Aktywności',
      one: 'Aktywność',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Język';

  @override
  String get account => 'Konto';

  @override
  String get accountDescription =>
      'Zarządzaj swoimi kontami AniList, MAL i Discord bez wysiłku';

  @override
  String get common => 'Ogólne';

  @override
  String get commonDescription =>
      'Uzyskaj dostęp do ogólnych ustawień aplikacji';

  @override
  String get animeDescription =>
      'Personalizuj i zarządzaj swoimi preferencjami dotyczącymi anime';

  @override
  String get mangaDescription =>
      'Organizuj i dostosuj swoje doświadczenie z mangą';

  @override
  String get about => 'O aplikacji';

  @override
  String get aboutDescription =>
      'Dowiedz się więcej o aplikacji i jej twórcach';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get notificationsDescription =>
      'Skonfiguruj, jak i kiedy chcesz otrzymywać powiadomienia';

  @override
  String get offlineMode => 'Tryb offline';

  @override
  String get offlineModeDescription =>
      'Używaj aplikacji bez połączenia z internetem';

  @override
  String get incognitoMode => 'Tryb incognito';

  @override
  String get incognitoModeDescription =>
      'Przeglądaj bez zapisywania swojej aktywności';

  @override
  String get hidePrivate => 'Ukryj prywatne';

  @override
  String get hidePrivateDescription =>
      'Ukryj prywatne serie na stronie głównej.';

  @override
  String get hiddenMedia => 'Ukryte media';

  @override
  String get noHiddenMediaFound => 'Nie znaleziono ukrytych mediów';

  @override
  String get playerSettingsTitle => 'Ustawienia odtwarzacza';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Prędkość';

  @override
  String get speedDescription => 'Domyślna prędkość odtwarzacza';

  @override
  String get cursedSpeed => 'Przeklęta prędkość';

  @override
  String get cursedSpeedDescription => 'Dla osób, które są zbyt zajęte życiem';

  @override
  String get resizeMode => 'Tryb zmiany rozmiaru';

  @override
  String get resizeModeDescription =>
      'Domyślny tryb zmiany rozmiaru dla odtwarzacza';

  @override
  String get skipButton => 'Przycisk pomijania';

  @override
  String get skipButtonDescription => 'Czas trwania przycisku pomijania';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Napisy';

  @override
  String get showSubtitles => 'Pokaż napisy';

  @override
  String get showSubtitlesDescription => 'Pokaż napisy domyślnie';

  @override
  String get subtitlePreview => 'Podgląd napisów';

  @override
  String get fontColor => 'Kolor czcionki';

  @override
  String get fontColorDescription => 'Kolor czcionki napisów';

  @override
  String get fontFamily => 'Rodzina czcionek';

  @override
  String get fontFamilyDescription => 'Rodzina czcionek napisów';

  @override
  String get fontSize => 'Rozmiar czcionki';

  @override
  String get fontSizeDescription => 'Rozmiar czcionki napisów';

  @override
  String get fontWeight => 'Grubość czcionki';

  @override
  String get fontWeightDescription => 'Grubość czcionki napisów';

  @override
  String get backgroundColor => 'Kolor tła';

  @override
  String get backgroundColorDescription => 'Kolor tła napisów';

  @override
  String get outlineColor => 'Kolor obramowania';

  @override
  String get outlineColorDescription => 'Kolor obramowania napisów';

  @override
  String get bottomPadding => 'Dolne marginesy';

  @override
  String get bottomPaddingDescription => 'Dolny margines napisów';

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
  String get theme => 'Motyw';

  @override
  String get themeDescription => 'Dostosuj wygląd i atmosferę swojej aplikacji';

  @override
  String get darkMode => 'Tryb ciemny';

  @override
  String get enableDarkMode => 'Włącz tryb ciemny';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Użyj tego samego koloru co tło pulpitu';

  @override
  String get customTheme => 'Własny motyw';

  @override
  String get customThemeDescription => 'Użyj swojego koloru dla motywu';

  @override
  String get oledThemeVariant => 'Wariant motywu OLED';

  @override
  String get oledThemeVariantDescription => 'Włącz tryb OLED';

  @override
  String get colorPicker => 'Wybór koloru';

  @override
  String get pickColor => 'Wybierz kolor';

  @override
  String get colorPickerDescription => 'Wybierz barwę';

  @override
  String get colorPickerDefault => 'Default';

  @override
  String get colorPickerCustom => 'Klient';

  @override
  String get customPath => 'Oficjalna strona';

  @override
  String get customPathDescription =>
      'Użytkowana droga do zapisywania plików.\nLong press usunąć';

  @override
  String get selectDirectory => 'Wybór reżysera';

  @override
  String get selectMediaService => 'Strona internetowa';

  @override
  String get logFile => 'Archiwum';

  @override
  String get logFileDescription => 'Skarżyć plik logowy';

  @override
  String get restoreSettings => 'Przywróć ustawienia';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Strona internetowa';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Chcesz wspierać twórcę Dartotsu?\nRozważ darowiznę';

  @override
  String get donationGoal => 'Brak celu na darowizny';

  @override
  String get options => 'Option';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Anuluj';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';
}
