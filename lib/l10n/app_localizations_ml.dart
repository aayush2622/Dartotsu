// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'പുതിയ മികച്ച ആപ്പ്\nആനിമെ & മംഗ ട്രാക്ക് ചെയ്യുന്നതിനായി';

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
  String get login => 'ലോഗിൻ';

  @override
  String loginTo(String service) {
    return '$service ലേക്ക് ലോഗിൻ ചെയ്യുക';
  }

  @override
  String logout(String type) {
    return '$type ലോഗ് ഔട്ട് ചെയ്യുക';
  }

  @override
  String get confirmLogout =>
      'നിങ്ങൾ ലോഗ് ഔട്ട് ചെയ്യാൻ ഉറപ്പായിരിക്കുന്നു എന്ന് ഉറപ്പാക്കാമോ?';

  @override
  String get anime => 'ആനിമെ';

  @override
  String get manga => 'മംഗ';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'നവലുകൾ';

  @override
  String get ln => 'ലൈറ്റ് നവൽ';

  @override
  String get home => 'Home';

  @override
  String get search => 'തിരച്ചിൽ';

  @override
  String get calendar => 'കാലണ്ടർ';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String get watch => 'കാണുക';

  @override
  String get read => 'ഒരുക്കുക';

  @override
  String get info => 'Info';

  @override
  String get comments => 'പ്രതികരണങ്ങൾ';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'മാസകാലം';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'എപ്പിസോഡുകൾ',
      one: 'എപ്പിസോഡ്',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'അധ്യായങ്ങൾ',
      one: 'അധ്യായം',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'വോള്യങ്ങൾ',
      one: 'വോള്യം',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ചലചിത്രങ്ങൾ',
      one: 'ചലചിത്രം',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'എപ്പിസോഡുകൾ';

  @override
  String get totalChapters => 'അധ്യായങ്ങൾ';

  @override
  String get genres => 'ശാഖകൾ';

  @override
  String get scanlators => 'സ്കാൻലേറ്റർമാർ';

  @override
  String list(String type) {
    return '$type പട്ടിക';
  }

  @override
  String get watching => 'കാണുന്നു';

  @override
  String get reading => 'വായിക്കുന്നു';

  @override
  String get readStatus => 'ഒരുക്കുക';

  @override
  String get watchStatus => 'കണ്ടു';

  @override
  String planned(String type) {
    return '$type പദ്ധതികൊണ്ടുള്ള';
  }

  @override
  String onHold(String type) {
    return 'നിര്‍ത്തിയ $type';
  }

  @override
  String get droppedAnime => 'നിഷേധിച്ച ആനിമേ';

  @override
  String get droppedManga => 'നിഷേധിച്ച മംഗ';

  @override
  String noDropped(String type) {
    return 'നിങ്ങൾ ഇതുവരെ $type ഒന്നും ഉപേക്ഷിച്ചിട്ടില്ല.';
  }

  @override
  String get continueReading => 'വായന തുടരുക';

  @override
  String get continueWatching => 'കാണൽ തുടരുക';

  @override
  String browse(String type) {
    return '$type പരിതിയാക്കുക';
  }

  @override
  String trending(String type) {
    return 'ട്രെൻഡിങ് $type';
  }

  @override
  String popular(String type) {
    return 'പ്രചാരത്തിലുള്ള $type';
  }

  @override
  String get topAiring => 'ഉത്തരവാദം';

  @override
  String topRated(String type) {
    return 'ഉത്തമമായ $type';
  }

  @override
  String mostFavourite(String type) {
    return 'എഴുതിയ $type';
  }

  @override
  String get thisSeason => 'ഈ മാസം';

  @override
  String get nextSeason => 'അടുത്ത മാസം';

  @override
  String get previousSeason => 'മുൻകാലം';

  @override
  String get recommended => 'ശുപാർശ ചെയ്തു';

  @override
  String get recommendationsEmptyMessage =>
      'അനി/മംഗ വാചകം/കാണുക എടുക്കുക എങ്ങനെ';

  @override
  String get recentUpdates => 'സമീപകാല പുതുക്കലുകൾ';

  @override
  String get allCaughtUpNew => 'എല്ലാം പൂർണ്ണമായിരിക്കുക, പുതിയ എന്ത്?';

  @override
  String favorite(String type) {
    return '$type പ്രിയപ്പെട്ട';
  }

  @override
  String get favorites => 'പ്രിയപ്പെട്ടവ';

  @override
  String get noFavourites =>
      'നിങ്ങൾക്ക് ഒരു ഓർമ്മ എനിക്ക് ഇഷ്ടപ്പെടുന്നില്ല,\nഒരുപാട് പ്രദർശിപ്പിക്കപ്പെടുന്ന ഒരു ഷോ ഇഷ്ടപ്പെടാൻ ശ്രമിക്കുക.';

  @override
  String get noOnHold => 'നിങ്ങൾ ഒന്നും നിർത്തിയിട്ടില്ലെന്ന് തോന്നുന്നു.';

  @override
  String manageLayout(String service, String page) {
    return '$service ലെ $page പേജിന്റെ രൂപകല്‌പനാ ക്രമീകരണം ചെയ്യുക';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page പേജിന്റെ രൂപകല്‌പന ക്രമീകരണം കൊണ്ടുവരികയാ? ഇനങ്ങൾ എടുക്കുകയും വിട്ടിടുകയും ചെയ്തുകൊണ്ടു ക്രമീകരിക്കാം';
  }

  @override
  String get gridView => 'ഗ്രിഡ് വ്യൂ';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'കമ്പാക്റ്റ് വ്യൂ';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'ക്രമീകരിക്കുക';

  @override
  String get utd => 'പിന്നിലേക്കും താഴേക്കും';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'എപ്പിസോഡ് കണ്ടു';

  @override
  String get chapterRead => 'അധ്യായം വായിച്ചു';

  @override
  String get outOf => 'ൽ നിന്ന്';

  @override
  String get totalOf => 'ആകെ';

  @override
  String get selected => 'തെരഞ്ഞെടുത്തു';

  @override
  String get found => 'കണ്ടെത്തി';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'വിതരണങ്ങൾ',
      one: 'വിതരണം',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'ലഭ്യമായ $type';
  }

  @override
  String installed(String type) {
    return 'സ്ഥാപിതമായ $type';
  }

  @override
  String get extensionsDescription =>
      'കൂടുതൽ പ്രവർത്തനക്ഷമതയ്‌ക്കായി വിശേഷങ്ങൾ ഇൻസ്റ്റാൾ ചെയ്ത് നിയന്ത്രിക്കുക';

  @override
  String get addAnimeRepo => 'ആനിമെ റീപോ ചേർക്കുക';

  @override
  String get addAnimeRepoDesc => 'വിവിധ ഉറവിടങ്ങളിൽ നിന്ന് ആനിമെ റീപോ ചേർക്കുക';

  @override
  String get addMangaRepo => 'മാംഗ റീപോ ചേർക്കുക';

  @override
  String get addMangaRepoDesc => 'വിവിധ ഉറവിടങ്ങളിൽ നിന്ന് മാംഗ റീപോ ചേർക്കുക';

  @override
  String get addNovelRepo => 'നോവൽ റീപോ ചേർക്കുക';

  @override
  String get addNovelRepoDesc => 'വിവിധ ഉറവിടങ്ങളിൽ നിന്ന് നോവൽ റീപോ ചേർക്കുക';

  @override
  String get loadExtensionsIcon => 'വിസ്താര ഐക്കൺ ലോഡ് ചെയ്യുക';

  @override
  String get loadExtensionsIconDesc => 'വിസ്താര പേജ് സ്ലോ ആയാൽ അപ്രാപ്തമാക്കുക';

  @override
  String get autoUpdate => 'സ്വയോജ്ജീവനം';

  @override
  String get autoUpdateDesc => 'വിസ്താരങ്ങൾ സ്വയം അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String get installSourceToStart =>
      'തുടങ്ങാൻ വിപുലീകരണ പേജിൽ നിന്ന് ഉറവിടം ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'ശരാശരി ദൈർഘ്യം';

  @override
  String get characters => 'പാത്രങ്ങൾ';

  @override
  String get description => 'സംവരണം';

  @override
  String get synopsis => 'സംഗ്രഹം';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'രൂപരേഖ';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'പേര് (റോമാജി)';

  @override
  String get popularity => 'പ്രചാരം';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'സ്റ്റാഫ്';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'സമാനവാക്കുകൾ';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'കുറച്ചു കാണിക്കുക';

  @override
  String get expandText => 'കൂടുതൽ കാണിക്കുക';

  @override
  String get comingSoon => 'ശീঘ്രം വരുന്നു';

  @override
  String get wrongTitle => 'തെറ്റായ ശീർഷകം?';

  @override
  String get youTube => 'YouTube-ൽ പ്ലേ ചെയ്യണോ?';

  @override
  String get mediaNotFound => 'മീഡിയ കണ്ടെത്തിയില്ല';

  @override
  String get noChapterFound => 'അധ്യായം കണ്ടെത്തിയില്ല';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'പ്രവൃത്തികൾ',
      one: 'പ്രവൃത്തി',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ഭാഷ';

  @override
  String get account => 'അക്കൗണ്ട്';

  @override
  String get accountDescription =>
      'നിങ്ങളുടെ AniList, MAL, Discord അക്കൗണ്ടുകൾ എളുപ്പത്തിൽ നിയന്ത്രിക്കുക';

  @override
  String get common => 'സാധാരണ';

  @override
  String get commonDescription => 'ആപ്പിന്റെ ജനറൽ ക്രമീകരണങ്ങൾ ആക്സസ് ചെയ്യുക';

  @override
  String get animeDescription =>
      'നിങ്ങളുടെ ആനിമെ പ്രിയപ്പെട്ടവ personalize ചെയ്യുകയും നിയന്ത്രിക്കുകയും ചെയ്യുക';

  @override
  String get mangaDescription =>
      'നിങ്ങളുടെ മംഗ അനുഭവം ക്രമീകരിക്കുക, ഇഷ്ടാനുസൃതമാക്കുക';

  @override
  String get about => 'പറ്റി';

  @override
  String get aboutDescription =>
      'ആപ്പും അതിന്റെ സ്രഷ്ടാക്കളും കുറിച്ച് കൂടുതൽ അറിയുക';

  @override
  String get notifications => 'നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get notificationsDescription =>
      'നിങ്ങളുടെ നോട്ടിഫിക്കേഷനുകൾ എങ്ങനെ, എപ്പോൾ ലഭിക്കണമെന്ന് ക്രമീകരിക്കുക';

  @override
  String get offlineMode => 'ഓഫ്ലൈനിൽ മോഡ്';

  @override
  String get offlineModeDescription =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ലാതെ ആപ്പ് ഉപയോഗിക്കുക';

  @override
  String get incognitoMode => 'ഇൻകോജ്നിറ്റോ മോഡ്';

  @override
  String get incognitoModeDescription =>
      'നിങ്ങളുടെ പ്രവർത്തനങ്ങൾ സംരക്ഷിക്കുന്നില്ലാതെ ബ്രൗസ് ചെയ്യുക';

  @override
  String get hidePrivate => 'സ്വകാര്യമാക്കുക';

  @override
  String get hidePrivateDescription =>
      'സ്വകാര്യ സീരീസ് ഹോം പേജിൽ കാണിച്ചുകൂടായിരിക്കും.';

  @override
  String get hiddenMedia => 'ലൊക്കിച്ച മീഡിയ';

  @override
  String get noHiddenMediaFound => 'ലൊക്കിച്ച മീഡിയ കണ്ടെത്തിയില്ല';

  @override
  String get playerSettingsTitle => 'പ്ലേयर ക്രമീകരണങ്ങൾ';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'വേഗം';

  @override
  String get speedDescription => 'പ്ലേയറിന്റെ ഡിഫോൾട്ട് വേഗം';

  @override
  String get cursedSpeed => 'പിശകായ വേഗം';

  @override
  String get cursedSpeedDescription => 'ജീവിതത്തിൽ വളരെ തിരക്കുള്ളവർക്കായി';

  @override
  String get resizeMode => 'പുനർവലിപ്പിക്കുക മോഡ്';

  @override
  String get resizeModeDescription =>
      'പ്ലേयर പുനർവലിപ്പിക്കുന്നതിന് ഡിഫോൾട്ട് മോഡ്';

  @override
  String get skipButton => 'സ്കിപ്പ് ബട്ടൺ';

  @override
  String get skipButtonDescription => 'സ്കിപ്പ് ബട്ടൺ ദൈർഘ്യം';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'സബ്റ്റൈറ്റലുകൾ';

  @override
  String get showSubtitles => 'സബ്റ്റൈറ്റലുകൾ കാണിക്കുക';

  @override
  String get showSubtitlesDescription =>
      'ഡിഫോൾട്ടായും സബ്റ്റൈറ്റലുകൾ കാണിക്കുക';

  @override
  String get subtitlePreview => 'സബ്റ്റൈറ്റിൽ പ്രിവ്യൂ';

  @override
  String get fontColor => 'ഫോണ്ട് നിറം';

  @override
  String get fontColorDescription => 'സബ്റ്റൈറ്റിൽ ഫോണ്ട് നിറം';

  @override
  String get fontFamily => 'ഫോണ്ട് കുടുംബം';

  @override
  String get fontFamilyDescription => 'സബ്റ്റൈറ്റിൽ ഫോണ്ട് കുടുംബം';

  @override
  String get fontSize => 'ഫോണ്ട് വലുപ്പം';

  @override
  String get fontSizeDescription => 'സബ്റ്റൈറ്റിൽ ഫോണ്ട് വലുപ്പം';

  @override
  String get fontWeight => 'ഫോണ്ട് ഭാരനം';

  @override
  String get fontWeightDescription => 'സബ്റ്റൈറ്റിൽ ഫോണ്ട് ഭാരനം';

  @override
  String get backgroundColor => 'പശ്ചാത്തല നിറം';

  @override
  String get backgroundColorDescription => 'സബ്റ്റൈറ്റിൽ പശ്ചാത്തല നിറം';

  @override
  String get outlineColor => 'ഔട്ട്ലൈൻ നിറം';

  @override
  String get outlineColorDescription => 'സബ്റ്റൈറ്റിൽ ഔട്ട്ലൈൻ നിറം';

  @override
  String get bottomPadding => 'കിഴിയുമേഖല_PADDING';

  @override
  String get bottomPaddingDescription => 'സബ്റ്റൈറ്റിൽ കിഴിയുമേഖല_PADDING';

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
  String get theme => 'തീം';

  @override
  String get themeDescription => 'ആപ്പിന്റെ രൂപവും അനുഭവവും ഇഷ്ടാനുസൃതമാക്കുക';

  @override
  String get darkMode => 'ഡാർക്ക് മോഡ്';

  @override
  String get enableDarkMode => 'ഡാർക്ക് മോഡ് സജീവമാക്കുക';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'നിങ്ങളുടെ വാള്പപ്പറിന്റെ നിറം പോലെ തന്നെ ഒരു നിറം ഉപയോഗിക്കുക';

  @override
  String get customTheme => 'സ്വയം നിർമിതിയുള്ള തീം';

  @override
  String get customThemeDescription =>
      'നിങ്ങളുടെ സ്വന്തം നിറം തീമിൽ ഉപയോഗിക്കുക';

  @override
  String get oledThemeVariant => 'OLED തീം വേരിയന്റ്';

  @override
  String get oledThemeVariantDescription => 'OLED മോഡ് സജീവമാക്കുക';

  @override
  String get colorPicker => 'നിറം തിരഞ്ഞെടുക്കാനുള്ള ഉപകരണം';

  @override
  String get pickColor => 'നിറം തിരഞ്ഞെടുക്കുക';

  @override
  String get colorPickerDescription => 'ഒരു നിറം തിരഞ്ഞെടുക്കുക';

  @override
  String get colorPickerDefault => 'ഡിഫോൾട്ട്';

  @override
  String get colorPickerCustom => 'ഇഷ്ടാനുസൃതം';

  @override
  String get customPath => 'ഇഷ്ടാനുസൃത പാത';

  @override
  String get customPathDescription =>
      'ഫയലുകൾ സംരക്ഷിക്കാൻ ഒരു ഇഷ്‌ടാനുസൃത പാത സജ്ജമാക്കുക\nനീക്കം ചെയ്യാൻ ദീർഘനേരം അമർത്തുക';

  @override
  String get selectDirectory => 'ഒരു ഡയറക്ടറി തിരഞ്ഞെടുക്കുക';

  @override
  String get selectMediaService => 'മീഡിയ സേവനം തിരഞ്ഞെടുക്കുക';

  @override
  String get logFile => 'ലോഗ് ഫയൽ';

  @override
  String get logFileDescription => 'ലോഗ് ഫയൽ പങ്കിടുക';

  @override
  String get restoreSettings => 'ക്രമീകരണങ്ങൾ പുനസ്ഥാപിക്കുക';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'വെബ് ദൃശ്യം';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu സ്രഷ്ടാവിനെ പിന്തുണയ്ക്കണോ?\nദാനം ചെയ്യാൻ പരിഗണിക്കുക';

  @override
  String get donationGoal => 'ഇപ്പോൾ ദാന ലക്ഷ്യം ഇല്ല';

  @override
  String get options => 'Options';

  @override
  String get ok => 'ശരി';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get yes => 'ഓව්';

  @override
  String get no => 'ഇല്ല';
}
