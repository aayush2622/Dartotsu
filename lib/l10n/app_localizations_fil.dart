// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'Ang BAGONG Pinakamahusay na App Para\nSa Pagtutok ng Anime at Manga';

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
  String get login => 'Mag-login';

  @override
  String loginTo(String service) {
    return 'Mag-login sa $service';
  }

  @override
  String logout(String type) {
    return 'Mag-logout $type';
  }

  @override
  String get confirmLogout => 'Sigurado ka bang nais mag-logout?';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'Nobela';

  @override
  String get ln => 'Magaan na Nobela';

  @override
  String get home => 'Tahanan';

  @override
  String get search => 'Maghanap';

  @override
  String get calendar => 'Kalendaryo';

  @override
  String get settings => 'Mga Setting';

  @override
  String get watch => 'Manood';

  @override
  String get read => 'Magbasa';

  @override
  String get info => 'Impormasyon';

  @override
  String get comments => 'Mga Komento';

  @override
  String get addToList => 'Idagdag sa Listahan';

  @override
  String get series => 'Serye';

  @override
  String get season => 'Panahon';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Episode',
      one: 'Episode',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Kabanata',
      one: 'Kabanata',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Bolumen',
      one: 'Bolumen',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Pelikula',
      one: 'Pelikula',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'Mga Episode';

  @override
  String get totalChapters => 'Mga Kabanata';

  @override
  String get genres => 'Mga Genre';

  @override
  String get scanlators => 'Mga Tagasalin';

  @override
  String list(String type) {
    return 'Listahan ng $type';
  }

  @override
  String get watching => 'nanonood';

  @override
  String get reading => 'Nagbabasa';

  @override
  String get readStatus => 'Magbasa';

  @override
  String get watchStatus => 'napanood na status';

  @override
  String planned(String type) {
    return 'Nakaplanong $type';
  }

  @override
  String onHold(String type) {
    return '$type na Naka-hold';
  }

  @override
  String get droppedAnime => 'Ibinagsak na Anime';

  @override
  String get droppedManga => 'Ibinagsak na Manga';

  @override
  String noDropped(String type) {
    return 'Wala ka pang ibinagsak na $type.';
  }

  @override
  String get continueReading => 'Ipagpatuloy ang Pagbasa';

  @override
  String get continueWatching => 'Ipagpatuloy ang Panonood';

  @override
  String browse(String type) {
    return 'Mag-browse ng $type';
  }

  @override
  String trending(String type) {
    return 'Patok na $type';
  }

  @override
  String popular(String type) {
    return 'Sikat na $type';
  }

  @override
  String get topAiring => 'Pinakatanyag na Eere';

  @override
  String topRated(String type) {
    return 'Pinakamataas na Rating $type';
  }

  @override
  String mostFavourite(String type) {
    return 'Pinakapaboritong $type';
  }

  @override
  String get thisSeason => 'Sa Panahong Ito';

  @override
  String get nextSeason => 'Susunod na Panahon';

  @override
  String get previousSeason => 'Nakaraang Panahon';

  @override
  String get recommended => 'Inirerekomenda';

  @override
  String get recommendationsEmptyMessage =>
      'Manood/Magbasa ng Anime o Manga para makakuha ng Rekomendasyon';

  @override
  String get recentUpdates => 'Mga Kamakailang Update';

  @override
  String get allCaughtUpNew => 'Natapos na lahat, Ano\'ng Bago?';

  @override
  String favorite(String type) {
    return 'Paboritong $type';
  }

  @override
  String get favorites => 'Mga Paborito';

  @override
  String get noFavourites =>
      'Mukhang wala kang paborito,\nSubukang magustuhan ang palabas para manatili ito rito.';

  @override
  String get noOnHold => 'Mukhang wala kang nilagay sa hold.';

  @override
  String manageLayout(String service, String page) {
    return 'Pamahalaan ang Layout ng $page para sa $service';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'Maaaring pamahalaan ang layout ng $page sa pamamagitan ng pag-drag at drop ng mga item';
  }

  @override
  String get gridView => 'Grid na Tanawin';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'Kompaktong Tanawin';

  @override
  String get layout => 'Ayos';

  @override
  String get sort => 'Pag-uriin';

  @override
  String get utd => 'Pataas Pababa';

  @override
  String get dtu => 'Hindi Nai-update';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'Napanuod na Episode';

  @override
  String get chapterRead => 'Nabasa na Kabanata';

  @override
  String get outOf => 'sa labas ng';

  @override
  String get totalOf => 'Kabuuan ng';

  @override
  String get selected => 'pinili';

  @override
  String get found => 'natagpuan';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Ekstensyon',
      one: 'Ekstensyon',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'Magagamit na $type';
  }

  @override
  String installed(String type) {
    return 'Na-install na $type';
  }

  @override
  String get extensionsDescription =>
      'Mag-install at pamahalaan ang mga extension para sa karagdagang functionality';

  @override
  String get addAnimeRepo => 'Magdagdag ng Anime Repo';

  @override
  String get addAnimeRepoDesc =>
      'Magdagdag ng Anime Repo mula sa iba\'t ibang mapagkukunan';

  @override
  String get addMangaRepo => 'Magdagdag ng Manga Repo';

  @override
  String get addMangaRepoDesc =>
      'Magdagdag ng Manga Repo mula sa iba\'t ibang mapagkukunan';

  @override
  String get addNovelRepo => 'Magdagdag ng Nobela Repo';

  @override
  String get addNovelRepoDesc =>
      'Magdagdag ng Nobela Repo mula sa iba\'t ibang mapagkukunan';

  @override
  String get loadExtensionsIcon => 'I-load ang Icon ng Mga Extension';

  @override
  String get loadExtensionsIconDesc =>
      'Huwag paganahin kung mabagal ang pahina ng mga extension';

  @override
  String get autoUpdate => 'Awtomatikong Pag-update';

  @override
  String get autoUpdateDesc => 'Awtomatikong I-update ang Mga Extension';

  @override
  String get installSourceToStart =>
      'Mag-install ng pinagmulan mula sa pahina ng extension upang magsimula';

  @override
  String get author => 'May-akda';

  @override
  String get averageDuration => 'Karaniwang Tagal';

  @override
  String get characters => 'Mga Tauhan';

  @override
  String get description => 'Sinopsis';

  @override
  String get synopsis => 'Sinopsis';

  @override
  String get endDate => 'Petsa ng Pagtatapos';

  @override
  String get format => 'Format';

  @override
  String get meanScore => 'Karaniwang Iskor';

  @override
  String get name => 'Pangalan';

  @override
  String get nameRomaji => 'Pangalan (Romaji)';

  @override
  String get popularity => 'Katungkulan';

  @override
  String get relations => 'Relasyon';

  @override
  String get prequel => 'Prequel';

  @override
  String get sequel => 'Sequel';

  @override
  String get source => 'Pinagmulan';

  @override
  String get staff => 'Tauhan';

  @override
  String get startDate => 'Petsa ng Pagsisimula';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'Mga Kasingkahulugan';

  @override
  String get tags => 'Mga Tag';

  @override
  String get total => 'Kabuuan';

  @override
  String get collapseText => 'ipakita nang mas kaunti';

  @override
  String get expandText => 'ipakita nang higit pa';

  @override
  String get comingSoon => 'Paparating NA';

  @override
  String get wrongTitle => 'maling pamagat?';

  @override
  String get youTube => 'i-play sa YouTube?';

  @override
  String get mediaNotFound => 'hindi natagpuan ang media';

  @override
  String get noChapterFound => 'walang nakitang kabanata';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mga Aktibidad',
      one: 'Aktibidad',
    );
    return '$_temp0';
  }

  @override
  String get language => 'Wika';

  @override
  String get account => 'Akaunti';

  @override
  String get accountDescription =>
      'Pamahalaan ang iyong mga account sa AniList, MAL, at Discord nang walang kahirap-hirap';

  @override
  String get common => 'Karaniwan';

  @override
  String get commonDescription =>
      'Mag-access ng mga pangkalahatang setting para sa maayos na paggamit ng app';

  @override
  String get animeDescription =>
      'I-personalize at pamahalaan ang iyong mga kagustuhan sa anime';

  @override
  String get mangaDescription =>
      'I-organisa at i-tailor ang iyong karanasan sa manga';

  @override
  String get about => 'Tungkol';

  @override
  String get aboutDescription =>
      'Alamin ang higit pa tungkol sa app at sa mga lumikha nito';

  @override
  String get notifications => 'Mga Abiso';

  @override
  String get notificationsDescription =>
      'I-configure kung paano at kailan ka makakatanggap ng mga abiso';

  @override
  String get offlineMode => 'Offline Mode';

  @override
  String get offlineModeDescription =>
      'Gamitin ang app nang walang koneksyon sa internet';

  @override
  String get incognitoMode => 'Mode ng Incognito';

  @override
  String get incognitoModeDescription =>
      'Mag-browse nang hindi isinusuong ang iyong aktibidad';

  @override
  String get hidePrivate => 'Itago ang Pribado';

  @override
  String get hidePrivateDescription =>
      'Itago ang pribadong serye mula sa Home page.';

  @override
  String get hiddenMedia => 'Nakatagong Media';

  @override
  String get noHiddenMediaFound => 'Walang nakatagong media na nakita';

  @override
  String get playerSettingsTitle => 'Mga Setting ng Player';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'Bilis';

  @override
  String get speedDescription => 'Default na bilis para sa player';

  @override
  String get cursedSpeed => 'Pinagpalang Bilis';

  @override
  String get cursedSpeedDescription =>
      'Para sa mga taong masyadong abala sa buhay';

  @override
  String get resizeMode => 'Mode ng Resize';

  @override
  String get resizeModeDescription =>
      'Default na mode ng resize para sa player';

  @override
  String get skipButton => 'Buton ng Pag-laktaw';

  @override
  String get skipButtonDescription => 'Damdamin ng skip button';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'Mga Subtitle';

  @override
  String get showSubtitles => 'Ipakita ang mga Subtitle';

  @override
  String get showSubtitlesDescription =>
      'Ipakita ang mga subtitle bilang default';

  @override
  String get subtitlePreview => 'Preview ng Subtitle';

  @override
  String get fontColor => 'Kulay ng Font';

  @override
  String get fontColorDescription => 'Kulay ng font ng subtitle';

  @override
  String get fontFamily => 'Pamilya ng Font';

  @override
  String get fontFamilyDescription => 'Pamilya ng font ng subtitle';

  @override
  String get fontSize => 'Laki ng Font';

  @override
  String get fontSizeDescription => 'Laki ng font ng subtitle';

  @override
  String get fontWeight => 'Bigat ng Font';

  @override
  String get fontWeightDescription => 'Bigat ng font ng subtitle';

  @override
  String get backgroundColor => 'Kulay ng Background';

  @override
  String get backgroundColorDescription => 'Kulay ng background ng subtitle';

  @override
  String get outlineColor => 'Kulay ng Outline';

  @override
  String get outlineColorDescription => 'Kulay ng outline ng subtitle';

  @override
  String get bottomPadding => 'Padding sa Ibaba';

  @override
  String get bottomPaddingDescription => 'Padding sa ibaba ng subtitle';

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
  String get themeDescription => 'I-customize ang hitsura at vibe ng iyong app';

  @override
  String get darkMode => 'Madilim na Mode';

  @override
  String get enableDarkMode => 'I-enable ang Madilim na Mode';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'Gamitin ang parehong kulay ng iyong wallpaper';

  @override
  String get customTheme => 'Custom na Tema';

  @override
  String get customThemeDescription =>
      'Gamitin ang iyong sariling kulay para sa tema';

  @override
  String get oledThemeVariant => 'OLED na Variant ng Tema';

  @override
  String get oledThemeVariantDescription => 'I-enable ang OLED Mode';

  @override
  String get colorPicker => 'Tagapili ng Kulay';

  @override
  String get pickColor => 'Pumili ng Kulay';

  @override
  String get colorPickerDescription => 'Pumili ng isang kulay';

  @override
  String get colorPickerDefault => 'Paunang Itinakda';

  @override
  String get colorPickerCustom => 'Pasadyang Kulay';

  @override
  String get customPath => 'Custom na Path';

  @override
  String get customPathDescription =>
      'Magtakda ng custom na path para mag-save ng mga file\nPindutin nang matagal upang alisin';

  @override
  String get selectDirectory => 'Pumili ng isang direktoryo';

  @override
  String get selectMediaService => 'Piliin ang Serbisyo ng Media';

  @override
  String get logFile => 'Talaan ng Log';

  @override
  String get logFileDescription => 'Ibahagi ang log file';

  @override
  String get restoreSettings => 'Ibalik ang mga Setting';

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
      'Gusto mo bang suportahan ang Tagapangalaga ng Dartotsu?\nIsaalang-alang ang Pag-donate';

  @override
  String get donationGoal => 'Walang layunin sa donasyon sa ngayon';

  @override
  String get options => 'Mga Pagpipilian';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get yes => 'Oo';

  @override
  String get no => 'Hindi';
}
