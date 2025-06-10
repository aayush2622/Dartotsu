// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Programu Bora Mpya Kwa\nUfuatiliaji wa Anime & Manga';

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
  String get login => 'Ingia';

  @override
  String loginTo(String service) {
    return 'Ingia kwenye $service';
  }

  @override
  String logout(String type) {
    return 'Toka $type';
  }

  @override
  String get confirmLogout => 'Je, una uhakika unataka kutoka?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Riwaya';

  @override
  String get ln => 'Riwaya Nyepesi';

  @override
  String get home => 'Home';

  @override
  String get search => 'Tafuta';

  @override
  String get calendar => 'Kalenda';

  @override
  String get settings => 'Mipangilio';

  @override
  String get watch => 'Tazama';

  @override
  String get read => 'Soma';

  @override
  String get info => 'Info';

  @override
  String get comments => 'Maoni';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'Msimu';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sehemu',
      one: 'Sehemu',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sura',
      one: 'Sura',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Majuzi',
      one: 'Juzo',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Filamu',
      one: 'Filamu',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Sehemu';

  @override
  String get totalChapters => 'Sura';

  @override
  String get genres => 'Mifumo';

  @override
  String get scanlators => 'Wachambuzi';

  @override
  String list(String type) {
    return '$type Orodha';
  }

  @override
  String get watching => 'Inatazama';

  @override
  String get reading => 'Inasoma';

  @override
  String get readStatus => 'Soma';

  @override
  String get watchStatus => 'Imetazamwa';

  @override
  String planned(String type) {
    return 'Imepangwa $type';
  }

  @override
  String onHold(String type) {
    return 'Iko kwenye Hifadhi $type';
  }

  @override
  String get droppedAnime => 'Anime Iliyotupwa';

  @override
  String get droppedManga => 'Manga Iliyotupwa';

  @override
  String noDropped(String type) {
    return 'Bado hujaacha $type yeyote.';
  }

  @override
  String get continueReading => 'Endelea Kusoma';

  @override
  String get continueWatching => 'Endelea Kutazama';

  @override
  String browse(String type) {
    return 'Pitisha $type';
  }

  @override
  String trending(String type) {
    return 'Inayoendelea $type';
  }

  @override
  String popular(String type) {
    return 'Maarufu $type';
  }

  @override
  String get topAiring => 'Inayorushwa Bora';

  @override
  String topRated(String type) {
    return 'Imepigiwa Kura Bora $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Inayopendwa Zaidi $type';
  }

  @override
  String get thisSeason => 'Msimu Huu';

  @override
  String get nextSeason => 'Msimu Ujao';

  @override
  String get previousSeason => 'Msimu Uliopita';

  @override
  String get recommended => 'Ilipendekezwa';

  @override
  String get recommendationsEmptyMessage =>
      'Tazama/Soma Anime au Manga ili kupata Mapendekezo';

  @override
  String get recentUpdates => 'Mabadiliko ya Karibuni';

  @override
  String get allCaughtUpNew => 'Umejibu kila kitu, nini kipya?';

  @override
  String favorite(String type) {
    return 'Pendwa $type';
  }

  @override
  String get favorites => 'Pendwa';

  @override
  String get noFavourites =>
      'Inaonekana haupendi kitu chochote,\nJaribu kupenda onyesho ili kiwe hapa.';

  @override
  String get noOnHold => 'Inaonekana haujaweka kitu chochote kwenye hifadhi.';

  @override
  String manageLayout(String service, String page) {
    return 'Simamia Mpangilio wa $page kwa $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Unaweza kusimamia mpangilio wa $page kwa kuburuta na kuacha vitu';
  }

  @override
  String get gridView => 'Muonekano wa Gridi';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Muonekano wa Compact';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'Panga';

  @override
  String get utd => 'Kutoka Juu Hadi Chini';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Sehemu Iliyotazamwa';

  @override
  String get chapterRead => 'Sura Iliyosomwa';

  @override
  String get outOf => 'kati ya';

  @override
  String get totalOf => 'Jumla ya';

  @override
  String get selected => 'Imechaguliwa';

  @override
  String get found => 'Imepatikana';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Viendelezi',
      one: 'Kiendelezi',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Inapatikana $type';
  }

  @override
  String installed(String type) {
    return 'Imewekwa $type';
  }

  @override
  String get extensionsDescription =>
      'Sakinisha na usimamie viendelezi kwa kuongeza uwezo';

  @override
  String get addAnimeRepo => 'Ongeza Hazina ya Anime';

  @override
  String get addAnimeRepoDesc =>
      'Ongeza Hazina ya Anime kutoka vyanzo mbalimbali';

  @override
  String get addMangaRepo => 'Ongeza Hazina ya Manga';

  @override
  String get addMangaRepoDesc =>
      'Ongeza Hazina ya Manga kutoka vyanzo mbalimbali';

  @override
  String get addNovelRepo => 'Ongeza Hazina ya Riwaya';

  @override
  String get addNovelRepoDesc =>
      'Ongeza Hazina ya Riwaya kutoka vyanzo mbalimbali';

  @override
  String get loadExtensionsIcon => 'Pakia Aikoni za Viongezi';

  @override
  String get loadExtensionsIconDesc =>
      'Zima ikiwa ukurasa wa viongezi unachelewa';

  @override
  String get autoUpdate => 'Sasisho la Kiotomatiki';

  @override
  String get autoUpdateDesc => 'Sasisha Viongezi Kiotomatiki';

  @override
  String get installSourceToStart =>
      'Sakinisha chanzo kutoka ukurasa wa nyongeza kuanza';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'Muda wa wastani';

  @override
  String get characters => 'Vitu';

  @override
  String get description => 'Muhtasari';

  @override
  String get synopsis => 'Muhtasari';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'Umbizo';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'Jina (Romaji)';

  @override
  String get popularity => 'Umaarufu';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'Wafanyakazi';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Maneno yenye maana sawa';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'onyesho kidogo';

  @override
  String get expandText => 'onyesho zaidi';

  @override
  String get comingSoon => 'Inakuja KARIBUNI';

  @override
  String get wrongTitle => 'Kichwa Kibaya?';

  @override
  String get youTube => 'Cheza kwenye YouTube?';

  @override
  String get mediaNotFound => 'Media haijapatikana';

  @override
  String get noChapterFound => 'Hakuna sura iliyopatikana';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Shughuli',
      one: 'Shughuli',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Lugha';

  @override
  String get account => 'Akaunti';

  @override
  String get accountDescription =>
      'Tumia na usimamie akaunti zako za AniList, MAL, na Discord kwa urahisi';

  @override
  String get common => 'Kawaida';

  @override
  String get commonDescription =>
      'Fikia mipangilio ya jumla kwa matumizi rahisi ya programu';

  @override
  String get animeDescription =>
      'Binafsisha na simamia mapendeleo yako ya anime';

  @override
  String get mangaDescription =>
      'Pangilia na weka uzoefu wako wa manga kwa usahihi';

  @override
  String get about => 'Kuhusu';

  @override
  String get aboutDescription =>
      'Jifunze zaidi kuhusu programu na waumbaji wake';

  @override
  String get notifications => 'Arifa';

  @override
  String get notificationsDescription => 'Panga jinsi na lini unapokea arifa';

  @override
  String get offlineMode => 'Hali ya Nje ya Mtandao';

  @override
  String get offlineModeDescription =>
      'Tumia programu bila muunganisho wa intaneti';

  @override
  String get incognitoMode => 'Hali ya Incognito';

  @override
  String get incognitoModeDescription => 'Tembea bila kuhifadhi shughuli zako';

  @override
  String get hidePrivate => 'Ficha Binafsi';

  @override
  String get hidePrivateDescription =>
      'Ficha mfululizo wa kibinafsi kutoka kwenye ukurasa wa Nyumbani.';

  @override
  String get hiddenMedia => 'Vyombo vya Habari Vilivyofichwa';

  @override
  String get noHiddenMediaFound =>
      'Hakuna vyombo vya habari vilivyofichwa vilivyopatikana';

  @override
  String get playerSettingsTitle => 'Mipangilio ya Mchezaji';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Speedi';

  @override
  String get speedDescription => 'Speedi ya chaguo-msingi kwa mchezaji';

  @override
  String get cursedSpeed => 'Speedi ya Laana';

  @override
  String get cursedSpeedDescription =>
      'Kwa watu walio na shughuli nyingi maishani';

  @override
  String get resizeMode => 'Hali ya Kubadilisha Ukubwa';

  @override
  String get resizeModeDescription => 'Hali ya kubadilisha ukubwa kwa mchezaji';

  @override
  String get skipButton => 'Kitufe cha Kupita';

  @override
  String get skipButtonDescription => 'Muda wa kitufe cha kupita';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Maneno ya Kichwa';

  @override
  String get showSubtitles => 'Onyesha Maneno ya Kichwa';

  @override
  String get showSubtitlesDescription =>
      'Onyesha maneno ya kichwa kwa chaguo-msingi';

  @override
  String get subtitlePreview => 'Mapitio ya Maneno ya Kichwa';

  @override
  String get fontColor => 'Rangi ya Fonti';

  @override
  String get fontColorDescription => 'Rangi ya fonti ya maneno ya kichwa';

  @override
  String get fontFamily => 'Familia ya Fonti';

  @override
  String get fontFamilyDescription => 'Familia ya fonti ya maneno ya kichwa';

  @override
  String get fontSize => 'Saizi ya Fonti';

  @override
  String get fontSizeDescription => 'Saizi ya fonti ya maneno ya kichwa';

  @override
  String get fontWeight => 'Uzito wa Fonti';

  @override
  String get fontWeightDescription => 'Uzito wa fonti ya maneno ya kichwa';

  @override
  String get backgroundColor => 'Rangi ya Mandharinyuma';

  @override
  String get backgroundColorDescription =>
      'Rangi ya mandharinyuma ya maneno ya kichwa';

  @override
  String get outlineColor => 'Rangi ya Mstari wa Nje';

  @override
  String get outlineColorDescription =>
      'Rangi ya mstari wa nje wa maneno ya kichwa';

  @override
  String get bottomPadding => 'Padding Chini';

  @override
  String get bottomPaddingDescription => 'Padding ya chini ya maneno ya kichwa';

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
  String get theme => 'Mandhari';

  @override
  String get themeDescription =>
      'Binafsisha mwonekano na hali ya programu yako';

  @override
  String get darkMode => 'Hali ya Giza';

  @override
  String get enableDarkMode => 'Washa Hali ya Giza';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'Tumia rangi ile kama wallpaper yako';

  @override
  String get customTheme => 'Mandhari ya Kibinafsi';

  @override
  String get customThemeDescription => 'Tumia rangi yako mwenyewe kwa mandhari';

  @override
  String get oledThemeVariant => 'Variant ya Mandhari ya OLED';

  @override
  String get oledThemeVariantDescription => 'Washa Hali ya OLED';

  @override
  String get colorPicker => 'Chagua Rangi';

  @override
  String get pickColor => 'Chagua rangi';

  @override
  String get colorPickerDescription => 'Tekeleza rangi';

  @override
  String get colorPickerDefault => 'Chaguo-msingi';

  @override
  String get colorPickerCustom => 'Maalum';

  @override
  String get customPath => 'Njia Maalum';

  @override
  String get customPathDescription =>
      'Weka njia maalum ya kuhifadhi faili\nBonyeza kwa muda mrefu ili kuondoa';

  @override
  String get selectDirectory => 'Chagua saraka';

  @override
  String get selectMediaService => 'Chagua Huduma ya Vyombo vya Habari';

  @override
  String get logFile => 'Faili la Magogo';

  @override
  String get logFileDescription => 'Shiriki faili ya kumbukumbu';

  @override
  String get restoreSettings => 'Rejesha Mipangilio';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'Mwonekano wa Wavuti';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Unataka kusaidia Mtunzaji wa Dartotsu?\nFikiria Kuchangia';

  @override
  String get donationGoal => 'Hakuna malengo ya michango kwa sasa';

  @override
  String get options => 'Options';

  @override
  String get ok => 'Sawa';

  @override
  String get cancel => 'Ghairi';

  @override
  String get yes => 'Ndio';

  @override
  String get no => 'Hapana';
}
