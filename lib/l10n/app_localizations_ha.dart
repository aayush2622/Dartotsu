// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hausa (`ha`).
class AppLocalizationsHa extends AppLocalizations {
  AppLocalizationsHa([String locale = 'ha']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Sabon Mafi Kyawun Aikace-aikacen Don\nBibiya Anime & Manga';

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
  String get login => 'Shiga';

  @override
  String loginTo(String service) {
    return 'Shiga $service';
  }

  @override
  String logout(String type) {
    return 'Fita $type';
  }

  @override
  String get confirmLogout => 'Shin ka tabbata kana son fita?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Labarin kwaikwayo';

  @override
  String get ln => 'Labarin haske';

  @override
  String get home => 'Gida';

  @override
  String get search => 'Bincike';

  @override
  String get calendar => 'Kalanda';

  @override
  String get settings => 'Saituna';

  @override
  String get watch => 'Kalli';

  @override
  String get read => 'Karanta';

  @override
  String get info => 'Bayanan';

  @override
  String get comments => 'Ra\'ayoyi';

  @override
  String get addToList => 'Ƙara zuwa Jerin';

  @override
  String get series => 'Jerinsu';

  @override
  String get season => 'Zaman';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Shaharrarru',
      one: 'Shahararriya',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Babobi',
      one: 'Babi',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Juzu\'in',
      one: 'Juzu\'i',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fimoci',
      one: 'Fim',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Shahararru';

  @override
  String get totalChapters => 'Babobi';

  @override
  String get genres => 'Nau\'o\'i';

  @override
  String get scanlators => 'Masu fassara';

  @override
  String list(String type) {
    return '$type Jerin';
  }

  @override
  String get watching => 'Ana kallo';

  @override
  String get reading => 'Ana karantawa';

  @override
  String get readStatus => 'Karanta';

  @override
  String get watchStatus => 'An kalla';

  @override
  String planned(String type) {
    return 'Shirya $type';
  }

  @override
  String onHold(String type) {
    return 'A Tsaye $type';
  }

  @override
  String get droppedAnime => 'An dakatar da Anime';

  @override
  String get droppedManga => 'An dakatar da Manga';

  @override
  String noDropped(String type) {
    return 'Ba ka dakatar da kowanne $type ba tukuna.';
  }

  @override
  String get continueReading => 'Ci gaba da Karanta';

  @override
  String get continueWatching => 'Ci gaba da Kallo';

  @override
  String browse(String type) {
    return 'Bincika $type';
  }

  @override
  String trending(String type) {
    return 'Abubuwan Da Suke Hawa $type';
  }

  @override
  String popular(String type) {
    return 'Shahararru $type';
  }

  @override
  String get topAiring => 'Mafi Girma na Kallon';

  @override
  String topRated(String type) {
    return 'Mafi Kyawu $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Mafi So $type';
  }

  @override
  String get thisSeason => 'Wannan Zaman';

  @override
  String get nextSeason => 'Zaman Gaba';

  @override
  String get previousSeason => 'Zaman Kafin';

  @override
  String get recommended => 'An bada shawara';

  @override
  String get recommendationsEmptyMessage =>
      'Kalli/karanta wasu Anime ko Manga don samun shawarwari';

  @override
  String get recentUpdates => 'Sabbin Sabuntawa';

  @override
  String get allCaughtUpNew => 'An kammala, menene Sabon?';

  @override
  String favorite(String type) {
    return 'Mafi so $type';
  }

  @override
  String get favorites => 'Abubuwan da aka fi so';

  @override
  String get noFavourites =>
      'Alama babu abin da ka fi so,\nGwada son shahararriya don kiyaye shi a nan.';

  @override
  String get noOnHold => 'Alama babu abin da ka sanya a tsaye.';

  @override
  String manageLayout(String service, String page) {
    return 'Gudanar da Tsarin $page shafi don $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Za ka iya gudanar da tsarin $page shafi ta hanyar ja da sauke abubuwa';
  }

  @override
  String get gridView => 'Duba Grid';

  @override
  String get listView => 'Duba Jerin';

  @override
  String get compactView => 'Duba Compact';

  @override
  String get layout => 'Tsari';

  @override
  String get sort => 'Tsara';

  @override
  String get utd => 'Daga sama zuwa ƙasa';

  @override
  String get dtu => 'Sabon Bincike';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Shahararriya da aka kalli';

  @override
  String get chapterRead => 'Babi da aka karanta';

  @override
  String get outOf => 'daga';

  @override
  String get totalOf => 'Jimillar';

  @override
  String get selected => 'An zaɓa';

  @override
  String get found => 'An samu';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Karin',
      one: 'Kari',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Akwai $type';
  }

  @override
  String installed(String type) {
    return 'An girka $type';
  }

  @override
  String get extensionsDescription =>
      'Shigar da sarrafa ƙarin aikin don ƙarin amfani';

  @override
  String get addAnimeRepo => 'Ƙara Ma\'ajiyar Anime';

  @override
  String get addAnimeRepoDesc => 'Ƙara Ma\'ajiyar Anime daga tushe daban-daban';

  @override
  String get addMangaRepo => 'Ƙara Ma\'ajiyar Manga';

  @override
  String get addMangaRepoDesc => 'Ƙara Ma\'ajiyar Manga daga tushe daban-daban';

  @override
  String get addNovelRepo => 'Ƙara Ma\'ajiyar Littafi';

  @override
  String get addNovelRepoDesc =>
      'Ƙara Ma\'ajiyar Littafi daga tushe daban-daban';

  @override
  String get loadExtensionsIcon => 'Loda Alamar Ƙarin Fasali';

  @override
  String get loadExtensionsIconDesc =>
      'Kashe idan shafin ƙarin fasali yana jinkiri';

  @override
  String get autoUpdate => 'Sabunta Ta atomatik';

  @override
  String get autoUpdateDesc => 'Sabunta Ƙarin Fasali Ta atomatik';

  @override
  String get installSourceToStart => 'Saka tushe daga shafin kari don farawa';

  @override
  String get author => 'Mawallafi';

  @override
  String get averageDuration => 'Tsawon lokaci na gaba ɗaya';

  @override
  String get characters => 'Hanyoyin';

  @override
  String get description => 'Takaitaccen Bayani';

  @override
  String get synopsis => 'Takaitaccen Bayani';

  @override
  String get endDate => 'Ranar ƙarshe';

  @override
  String get format => 'Tsarin';

  @override
  String get meanScore => 'Matsakaicin Ƙimar';

  @override
  String get name => 'Suna';

  @override
  String get nameRomaji => 'Sunan (Romaji)';

  @override
  String get popularity => 'Shahararsa';

  @override
  String get relations => 'Dangantaka';

  @override
  String get prequel => 'Bari';

  @override
  String get sequel => 'Ci gaba';

  @override
  String get source => 'Tushen';

  @override
  String get staff => 'Ma\'aikata';

  @override
  String get startDate => 'Ranar farawa';

  @override
  String get status => 'Matsayi';

  @override
  String get studio => 'Dakin Koyi';

  @override
  String get synonyms => 'Ma\'anoni masu kama';

  @override
  String get tags => 'Alamar';

  @override
  String get total => 'Jimilla';

  @override
  String get collapseText => 'nuni ƙasa';

  @override
  String get expandText => 'nuni fiye';

  @override
  String get comingSoon => 'Zuwa SOON';

  @override
  String get wrongTitle => 'Suna mara daidai?';

  @override
  String get youTube => 'Kalla a YouTube?';

  @override
  String get mediaNotFound => 'Ba a samo media ba';

  @override
  String get noChapterFound => 'Babu babi da aka samu';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ayyuka',
      one: 'Ayyuka',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Harshe';

  @override
  String get account => 'Asusu';

  @override
  String get accountDescription =>
      'Yi sarrafa asusun AniList, MAL, da Discord cikin sauƙi';

  @override
  String get common => 'Na gama gari';

  @override
  String get commonDescription =>
      'Samun dama ga saitunan gaba ɗaya don amfani mai sauƙi';

  @override
  String get animeDescription => 'Kirkira da sarrafa zabin anime naka';

  @override
  String get mangaDescription => 'Tsara da keɓance ƙwarewar manga naka';

  @override
  String get about => 'Game da';

  @override
  String get aboutDescription =>
      'Koyi ƙarin game da aikace-aikacen da masu ƙirƙirarsa';

  @override
  String get notifications => 'Sanarwa';

  @override
  String get notificationsDescription =>
      'Saita yadda da lokacin da za ka karɓi sanarwa';

  @override
  String get offlineMode => 'Yanayin Babu Intanet';

  @override
  String get offlineModeDescription =>
      'Yi amfani da aikace-aikacen ba tare da haɗin intanet ba';

  @override
  String get incognitoMode => 'Yanayin Sirri';

  @override
  String get incognitoModeDescription =>
      'Yi bincike ba tare da ajiye ayyukan ka ba';

  @override
  String get hidePrivate => 'Rufe Sirri';

  @override
  String get hidePrivateDescription => 'Boye jerin sirri daga shafin gida.';

  @override
  String get hiddenMedia => 'Boye Media';

  @override
  String get noHiddenMediaFound => 'Babu media da aka boye da aka samu';

  @override
  String get playerSettingsTitle => 'Saitunan Mai Nuna Bidiyo';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Gudun';

  @override
  String get speedDescription => 'Gudun tsoho na mai nuna bidiyo';

  @override
  String get cursedSpeed => 'Gudun Mai Laifi';

  @override
  String get cursedSpeedDescription => 'Ga masu cike da abubuwa a rayuwa';

  @override
  String get resizeMode => 'Yanayin Girma';

  @override
  String get resizeModeDescription =>
      'Yanayin girma na tsoho don mai nuna bidiyo';

  @override
  String get skipButton => 'Maballin Tsallake';

  @override
  String get skipButtonDescription => 'Tsawon lokaci na maballin tsallake';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Subtiṭa';

  @override
  String get showSubtitles => 'Nuna Subtiṭa';

  @override
  String get showSubtitlesDescription => 'Nuna subtiṭa ta tsoho';

  @override
  String get subtitlePreview => 'Duban Subtiṭa';

  @override
  String get fontColor => 'Launin Harafi';

  @override
  String get fontColorDescription => 'Launin harafin subtiṭa';

  @override
  String get fontFamily => 'Iyalin Harafi';

  @override
  String get fontFamilyDescription => 'Iyalin harafin subtiṭa';

  @override
  String get fontSize => 'Girman Harafi';

  @override
  String get fontSizeDescription => 'Girman harafin subtiṭa';

  @override
  String get fontWeight => 'Nauyin Harafi';

  @override
  String get fontWeightDescription => 'Nauyin harafin subtiṭa';

  @override
  String get backgroundColor => 'Launin Baya';

  @override
  String get backgroundColorDescription => 'Launin bango na subtiṭa';

  @override
  String get outlineColor => 'Launin Hasken Waje';

  @override
  String get outlineColorDescription => 'Launin hasken waje na subtiṭa';

  @override
  String get bottomPadding => 'Tura Ƙasa';

  @override
  String get bottomPaddingDescription => 'Tura ƙasa na subtiṭa';

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
  String get theme => 'Jigo';

  @override
  String get themeDescription => 'Keɓance kyawun aikace-aikacen da yanayin sa';

  @override
  String get darkMode => 'Yanayin Duhu';

  @override
  String get enableDarkMode => 'Kunna Yanayin Duhu';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Yi amfani da launin bango ɗinka';

  @override
  String get customTheme => 'Jigon Musamman';

  @override
  String get customThemeDescription => 'Yi amfani da launin naka don jigo';

  @override
  String get oledThemeVariant => 'Jigon OLED';

  @override
  String get oledThemeVariantDescription => 'Kunna Yanayin OLED';

  @override
  String get colorPicker => 'Zaɓin Launi';

  @override
  String get pickColor => 'Zabi launi';

  @override
  String get colorPickerDescription => 'Zaɓi launi';

  @override
  String get colorPickerDefault => 'Tsoho';

  @override
  String get colorPickerCustom => 'Na Musamman';

  @override
  String get customPath => 'Hanyar Al\'ada';

  @override
  String get customPathDescription =>
      'Saita hanya ta al\'ada don adana fayiloli\nDogon danna don cirewa';

  @override
  String get selectDirectory => 'Zaɓi directory';

  @override
  String get selectMediaService => 'Zaɓi Sabis na Mai jarida';

  @override
  String get logFile => 'Fayil ɗin log';

  @override
  String get logFileDescription => 'Raba fayil ɗin log ɗin';

  @override
  String get restoreSettings => 'Mayar da Saituna';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Duba yanar gizo';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Kuna son tallafawa Mai Gudanar da Dartotsu?\nYi la\'akari da Ba da Gudummawa';

  @override
  String get donationGoal => 'Babu manufa ta gudummawa a halin yanzu';

  @override
  String get options => 'Zaɓuɓɓuka';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Soke';

  @override
  String get yes => 'Ee';

  @override
  String get no => 'A\'a';
}
