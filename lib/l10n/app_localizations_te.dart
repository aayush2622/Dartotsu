// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'నవీకృత ఉత్తమ అప్లికేషన్\nఆనిమే మరియు మాంగా ట్రాకింగ్ కోసం';

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
  String get login => 'లాగిన్';

  @override
  String loginTo(String service) {
    return '$service లో లాగిన్ చేయండి';
  }

  @override
  String logout(String type) {
    return '$type లాగౌట్';
  }

  @override
  String get confirmLogout => 'మీరు లాగౌట్ చేయాలని ఖచ్చితంగా అనుకుంటున్నారా?';

  @override
  String get anime => 'ఆనిమే';

  @override
  String get manga => 'మాంగా';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'నవల్';

  @override
  String get ln => 'లైట్ నవల్';

  @override
  String get home => 'Home';

  @override
  String get search => 'శోధించండి';

  @override
  String get calendar => 'క్యాలెండర్';

  @override
  String get settings => 'సెట్టింగులు';

  @override
  String get watch => 'చూడండి';

  @override
  String get read => 'చదవండి';

  @override
  String get info => 'Info';

  @override
  String get comments => 'అభిప్రాయాలు';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'సీజన్';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఎపిసోడ్‌లు',
      one: 'ఎపిసోడ్',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'అధ్యాయాలు',
      one: 'అధ్యాయం',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఘనతలు',
      one: 'ఘనత',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'చిత్రాలు',
      one: 'చిత్రం',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'ఎపిసోడ్‌లు';

  @override
  String get totalChapters => 'అధ్యాయాలు';

  @override
  String get genres => 'వర్గాలు';

  @override
  String get scanlators => 'స్కాన్లేటర్స్';

  @override
  String list(String type) {
    return '$type జాబితా';
  }

  @override
  String get watching => 'చూస్తున్నారు';

  @override
  String get reading => 'చదువుతున్నారు';

  @override
  String get readStatus => 'చదవండి';

  @override
  String get watchStatus => 'చూశాను';

  @override
  String planned(String type) {
    return 'ఆలోచించిన $type';
  }

  @override
  String onHold(String type) {
    return '$type హోల్డ్ పై';
  }

  @override
  String get droppedAnime => 'డ్రాప్ చేసిన అనిమే';

  @override
  String get droppedManga => 'డ్రాప్ చేసిన మంగా';

  @override
  String noDropped(String type) {
    return 'మీరు ఇంకా ఏ $typeను డ్రాప్ చేయలేదు.';
  }

  @override
  String get continueReading => 'చదవడం కొనసాగించండి';

  @override
  String get continueWatching => 'చూడడం కొనసాగించండి';

  @override
  String browse(String type) {
    return '$type బ్రౌజ్ చేయండి';
  }

  @override
  String trending(String type) {
    return '$type ట్రెండింగ్';
  }

  @override
  String popular(String type) {
    return 'ప్రసిద్ధ $type';
  }

  @override
  String get topAiring => 'టాప్ ఎయిరింగ్';

  @override
  String topRated(String type) {
    return 'టాప్ రేటెడ్ $type';
  }

  @override
  String mostFavourite(String type) {
    return 'అతి ప్రియమైన $type';
  }

  @override
  String get thisSeason => 'ఈ సీజన్';

  @override
  String get nextSeason => 'తరువాతి సీజన్';

  @override
  String get previousSeason => 'గత సీజన్';

  @override
  String get recommended => 'సిఫార్సు చేసినవి';

  @override
  String get recommendationsEmptyMessage =>
      'ప్రత్యేక సిఫార్సులను పొందడానికి కొన్ని అనిమే లేదా మంగా చూడండి/చదవండి';

  @override
  String get recentUpdates => 'ఇటీవలి నవీకరణలు';

  @override
  String get allCaughtUpNew => 'అన్ని పూర్తిగా చూసారు, ఏమి కొత్త?';

  @override
  String favorite(String type) {
    return '$type ప్రియం';
  }

  @override
  String get favorites => 'ఇష్టాలు';

  @override
  String get noFavourites =>
      'మీరు ఏమీ ఇష్టపడట్లేదు,\nఇక్కడ ఉంచడానికి ప్రదర్శించడానికి ఒక షోను ఇష్టపడండి.';

  @override
  String get noOnHold => 'మీరు ఏదైనా హోల్డ్ పై ఉంచలేదు.';

  @override
  String manageLayout(String service, String page) {
    return '$service కోసం $page పేజీ యొక్క లేఅవుట్‌ను నిర్వహించండి';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page పేజీకి సంబంధించిన లేఅవుట్‌ను నిర్వహించేందుకు మీరు అంశాలను డ్రాగ్ చేసి డ్రాప్ చేయవచ్చు';
  }

  @override
  String get gridView => 'గ్రిడ్ వీక్షణ';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'కంపాక్ట్ వీక్షణ';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'వర్గీకరించు';

  @override
  String get utd => 'అప్ టు డౌన్';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'ఎపిసోడ్ వీక్షించబడింది';

  @override
  String get chapterRead => 'అధ్యాయము చదవబడింది';

  @override
  String get outOf => 'లో నుండి';

  @override
  String get totalOf => 'మొత్తం';

  @override
  String get selected => 'ఎంపిక చేయబడింది';

  @override
  String get found => 'కనుగొనబడింది';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ఎక్స్‌టెన్షన్‌లు',
      one: 'ఎక్స్‌టెన్షన్',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type లభ్యమయ్యాయి';
  }

  @override
  String installed(String type) {
    return '$type ఇన్స్టాల్ చేయబడింది';
  }

  @override
  String get extensionsDescription =>
      'మరిన్ని ఫంక్షనాలిటీ కోసం ఎక్స్‌టెన్షన్లను ఇన్‌స్టాల్ చేయండి మరియు నిర్వహించండి';

  @override
  String get addAnimeRepo => 'ఆనిమే రిపో జోడించండి';

  @override
  String get addAnimeRepoDesc => 'వివిధ మూలాల నుండి ఆనిమే రిపో జోడించండి';

  @override
  String get addMangaRepo => 'మాంగా రిపో జోడించండి';

  @override
  String get addMangaRepoDesc => 'వివిధ మూలాల నుండి మాంగా రిపో జోడించండి';

  @override
  String get addNovelRepo => 'నోవెల్ రిపో జోడించండి';

  @override
  String get addNovelRepoDesc => 'వివిధ మూలాల నుండి నోవెల్ రిపో జోడించండి';

  @override
  String get loadExtensionsIcon => 'ఎక్స్‌టెన్షన్ల చిహ్నాన్ని లోడ్ చేయండి';

  @override
  String get loadExtensionsIconDesc =>
      'ఎక్స్‌టెన్షన్ పేజీ నెమ్మదిగా ఉంటే అచేతనం చేయండి';

  @override
  String get autoUpdate => 'ఆటో నవీకరణ';

  @override
  String get autoUpdateDesc => 'ఎక్స్‌టెన్షన్లను ఆటోమేటిక్‌గా నవీకరించండి';

  @override
  String get installSourceToStart =>
      'ప్రారంభించడానికి పొడిగింపు పేజీ నుండి మూలాన్ని ఇన్‌స్టాల్ చేయండి';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'సగటు వ్యవధి';

  @override
  String get characters => 'పాత్రలు';

  @override
  String get description => 'సారాంశం';

  @override
  String get synopsis => 'సారాంశం';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'ఫార్మాట్';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'పేరు (రోమాజి)';

  @override
  String get popularity => 'ప్రచారము';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'స్టాఫ్';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'స్పష్టమైన పదాలు';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'తక్కువ చూపించు';

  @override
  String get expandText => 'మరింత చూపించు';

  @override
  String get comingSoon => 'త్వరలో రానున్నది';

  @override
  String get wrongTitle => 'తప్పు శీర్షిక?';

  @override
  String get youTube => 'YouTube లో ప్లే చేయాలా?';

  @override
  String get mediaNotFound => 'మీడియా కనుగొనబడలేదు';

  @override
  String get noChapterFound => 'అధ్యాయం కనుగొనబడలేదు';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'చర్యలు',
      one: 'చర్య',
    );
    return '$_temp0';
  }

  @override
  String get language => 'భాష';

  @override
  String get account => 'ఖాతా';

  @override
  String get accountDescription =>
      'మీ AniList, MAL మరియు Discord ఖాతాలను సులభంగా నిర్వహించండి';

  @override
  String get common => 'సాధారణ';

  @override
  String get commonDescription =>
      'సాధారణ సెట్టింగులకు యాక్సెస్ చేయండి, అప్లికేషన్ ఉపయోగం మరింత సజావుగా ఉండాలి';

  @override
  String get animeDescription =>
      'మీ ఆనిమే ప్రాధాన్యతలను వ్యక్తిగతీకరించి నిర్వహించండి';

  @override
  String get mangaDescription => 'మీ మాంగా అనుభవాన్ని సరళంగా నిర్వహించండి';

  @override
  String get about => 'గురించి';

  @override
  String get aboutDescription =>
      'అప్లికేషన్ మరియు దాని సృష్టికర్తల గురించి మరింత తెలుసుకోండి';

  @override
  String get notifications => 'ప్రచారాలు';

  @override
  String get notificationsDescription =>
      'మీకు ఎప్పుడు మరియు ఎలా ప్రకటనలు రాలేదో కంఫిగర్ చేయండి';

  @override
  String get offlineMode => 'ఆఫ్లైన్ మోడ్';

  @override
  String get offlineModeDescription =>
      'ఇంటర్నెట్ కనెక్షన్ లేకుండా అప్లికేషన్ ఉపయోగించండి';

  @override
  String get incognitoMode => 'ఇంకాగ్నిటో మోడ్';

  @override
  String get incognitoModeDescription =>
      'మీ కార్యకలాపాలను సేవ్ చేయకుండా బ్రౌజ్ చేయండి';

  @override
  String get hidePrivate => 'ప్రైవేట్ లను దాచండి';

  @override
  String get hidePrivateDescription =>
      'హోమ్ పేజీ నుండి ప్రైవేట్ సిరీస్‌ను దాచండి.';

  @override
  String get hiddenMedia => 'దాచిన మీడియా';

  @override
  String get noHiddenMediaFound => 'దాచిన మీడియా కనుగొనబడలేదు';

  @override
  String get playerSettingsTitle => 'ప్లేయర్ సెట్టింగులు';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'వేగం';

  @override
  String get speedDescription => 'ప్లేయర్ కోసం డిఫాల్ట్ వేగం';

  @override
  String get cursedSpeed => 'శాపిత వేగం';

  @override
  String get cursedSpeedDescription =>
      'జీవితంలో చాలా బిజీగా ఉన్న వ్యక్తుల కోసం';

  @override
  String get resizeMode => 'పునర్విన్యాస మోడ్';

  @override
  String get resizeModeDescription => 'ప్లేయర్ కోసం డిఫాల్ట్ పునర్విన్యాస మోడ్';

  @override
  String get skipButton => 'తిప్పిన బటన్';

  @override
  String get skipButtonDescription => 'తిప్పిన బటన్ వ్యవధి';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'ఉపశీర్షికలు';

  @override
  String get showSubtitles => 'ఉపశీర్షికలు చూపించండి';

  @override
  String get showSubtitlesDescription => 'డిఫాల్ట్‌గా ఉపశీర్షికలు చూపించండి';

  @override
  String get subtitlePreview => 'ఉపశీర్షిక ప్రివ్యూ';

  @override
  String get fontColor => 'ఫాంట్ రంగు';

  @override
  String get fontColorDescription => 'ఉపశీర్షిక ఫాంట్ రంగు';

  @override
  String get fontFamily => 'ఫాంట్ ఫ్యామిలీ';

  @override
  String get fontFamilyDescription => 'ఉపశీర్షిక ఫాంట్ ఫ్యామిలీ';

  @override
  String get fontSize => 'ఫాంట్ పరిమాణం';

  @override
  String get fontSizeDescription => 'ఉపశీర్షిక ఫాంట్ పరిమాణం';

  @override
  String get fontWeight => 'ఫాంట్ బరువు';

  @override
  String get fontWeightDescription => 'ఉపశీర్షిక ఫాంట్ బరువు';

  @override
  String get backgroundColor => 'పరిసర రంగు';

  @override
  String get backgroundColorDescription => 'ఉపశీర్షిక పరిసర రంగు';

  @override
  String get outlineColor => 'వైపు రంగు';

  @override
  String get outlineColorDescription => 'ఉపశీర్షిక వైపు రంగు';

  @override
  String get bottomPadding => 'కింద ప్యాడింగ్';

  @override
  String get bottomPaddingDescription => 'ఉపశీర్షిక కింద ప్యాడింగ్';

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
  String get theme => 'థీమ్';

  @override
  String get themeDescription =>
      'మీ అప్లికేషన్ యొక్క రూపాన్ని మరియు భావాన్ని అనుకూలీకరించండి';

  @override
  String get darkMode => 'డార్క్ మోడ్';

  @override
  String get enableDarkMode => 'డార్క్ మోడ్‌ను ఎనేబుల్ చేయండి';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'మీ వాల్పేపర్‌తో సమాన రంగును ఉపయోగించండి';

  @override
  String get customTheme => 'కస్టమ్ థీమ్';

  @override
  String get customThemeDescription => 'మీ స్వంత రంగును థీమ్ కోసం ఉపయోగించండి';

  @override
  String get oledThemeVariant => 'OLED థీమ్ వేరియంట్';

  @override
  String get oledThemeVariantDescription => 'OLED మోడ్ ఎనేబుల్ చేయండి';

  @override
  String get colorPicker => 'రంగు ఎంపిక';

  @override
  String get pickColor => 'రంగు ఎంచుకోండి';

  @override
  String get colorPickerDescription => 'రంగును ఎంచుకోండి';

  @override
  String get colorPickerDefault => 'డిఫాల్ట్';

  @override
  String get colorPickerCustom => 'అనుకూలం';

  @override
  String get customPath => 'అనుకూల మార్గం';

  @override
  String get customPathDescription =>
      'ఫైల్‌లను సేవ్ చేయడానికి అనుకూల మార్గాన్ని సెట్ చేయండి\nతీసివేయడానికి ఎక్కువసేపు నొక్కండి';

  @override
  String get selectDirectory => 'డైరెక్టరీని ఎంచుకోండి';

  @override
  String get selectMediaService => 'మీడియా సర్వీస్‌ని ఎంచుకోండి';

  @override
  String get logFile => 'లాగ్ ఫైల్';

  @override
  String get logFileDescription => 'లాగ్ ఫైల్‌ను భాగస్వామ్యం చేయండి';

  @override
  String get restoreSettings => 'సెట్టింగులను పునఃస్ధాపించండి';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'వెబ్ వీక్షణం';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu యొక్క నిర్వహకుడిని మద్దతు ఇవ్వాలా?\nదానం చేయాలని అనుకోండి';

  @override
  String get donationGoal => 'ప్రస్తుతం దానం లక్ష్యం లేదు';

  @override
  String get options => 'Options';

  @override
  String get ok => 'సరే';

  @override
  String get cancel => 'రద్దు';

  @override
  String get yes => 'ఆవును';

  @override
  String get no => 'కాదు';
}
