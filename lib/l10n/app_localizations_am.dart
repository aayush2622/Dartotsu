// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'አዲሱ የተሻለው መተግበሪያ\nለአኒሜ እና ማንጋ መከታተያ';

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
  String get login => 'ግባ';

  @override
  String loginTo(String service) {
    return 'ወደ $service ይግቡ';
  }

  @override
  String logout(String type) {
    return '$typeን ለቅቆ ውጣ';
  }

  @override
  String get confirmLogout => 'እርግጠኛ ነዎት ለቅቆ መውጣት ይፈልጋሉ?';

  @override
  String get anime => 'አኒሜ';

  @override
  String get manga => 'ማንጋ';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'ልብወለድ';

  @override
  String get ln => 'ቀላል ልብወለድ';

  @override
  String get home => 'ቤት';

  @override
  String get search => 'ፈልግ';

  @override
  String get calendar => 'የቀን መቁጠሪያ';

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get watch => 'ተመልከት';

  @override
  String get read => 'አንብብ';

  @override
  String get info => 'Info';

  @override
  String get comments => 'አስተያየቶች';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'ወቅት';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ክፍሎች',
      one: 'ክፍል',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ምዕራፎች',
      one: 'ምዕራፍ',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ቅጾች',
      one: 'ቅጽ',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ፊልሞች',
      one: 'ፊልም',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'ክፍሎች';

  @override
  String get totalChapters => 'ምዕራፎች';

  @override
  String get genres => 'ዘውጎች';

  @override
  String get scanlators => 'ስካንሌተሮች';

  @override
  String list(String type) {
    return 'የ$type ዝርዝር';
  }

  @override
  String get watching => 'መመልከት';

  @override
  String get reading => 'ማንበብ';

  @override
  String get readStatus => 'አንብብ';

  @override
  String get watchStatus => 'ተመልክቷል';

  @override
  String planned(String type) {
    return 'የታቀደ $type';
  }

  @override
  String onHold(String type) {
    return 'በእንጥልጥል ላይ ያለ $type';
  }

  @override
  String get droppedAnime => 'የተተወ አኒሜ';

  @override
  String get droppedManga => 'የተተወ ማንጋ';

  @override
  String noDropped(String type) {
    return 'እስካሁን ምንም $type አልተውክም።';
  }

  @override
  String get continueReading => 'ማንበብ ይቀጥሉ';

  @override
  String get continueWatching => 'መመልከት ይቀጥሉ';

  @override
  String browse(String type) {
    return '$typeን ያስሱ';
  }

  @override
  String trending(String type) {
    return 'አዝማሚያ ያለው $type';
  }

  @override
  String popular(String type) {
    return 'ታዋቂ $type';
  }

  @override
  String get topAiring => 'ከፍተኛ ስርጭት';

  @override
  String topRated(String type) {
    return 'ከፍተኛ ደረጃ ያለው $type';
  }

  @override
  String mostFavourite(String type) {
    return 'በጣም የተወደደ $type';
  }

  @override
  String get thisSeason => 'የአሁኑ ወቅት';

  @override
  String get nextSeason => 'የሚቀጥለው ወቅት';

  @override
  String get previousSeason => 'ያለፈው ወቅት';

  @override
  String get recommended => 'የሚመከር';

  @override
  String get recommendationsEmptyMessage =>
      'ለውሳኔ ሀሳቦች አንዳንድ አኒሜ ወይም ማንጋ ይመልከቱ/ያንብቡ';

  @override
  String get recentUpdates => 'የቅርብ ጊዜ ዝማኔዎች';

  @override
  String get allCaughtUpNew => 'ሁሉንም አግኝተዋል፣ አዲስ ምንድን ነው?';

  @override
  String favorite(String type) {
    return 'የሚወዱት $type';
  }

  @override
  String get favorites => 'ተወዳጆች';

  @override
  String get noFavourites =>
      'ምንም የሚወዱት ነገር የለም የሚመስለው፣\nእዚህ ለማስቀመጥ አንድ ትዕይንት ይውደዱ።';

  @override
  String get noOnHold => 'ምንም ነገር በእንጥልጥል ላይ ያላስቀመጡት ይመስላል።';

  @override
  String manageLayout(String service, String page) {
    return 'የ$serviceን የ$page ገጽ አቀማመጥ አስተዳድር';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'አካላቶቹን በመጎተት እና በማስቀመጥ የ$page ገጽ አቀማመጥን ማስተዳደር ይችላሉ';
  }

  @override
  String get gridView => 'የፍርግርግ እይታ';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'የተጠቅልል እይታ';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'አስተካክል';

  @override
  String get utd => 'ከላይ ወደ ታች';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'የተመለከቱት ክፍል';

  @override
  String get chapterRead => 'ያነበቡት ምዕራፍ';

  @override
  String get outOf => 'ውጪ';

  @override
  String get totalOf => 'ጠቅላላ';

  @override
  String get selected => 'ተመርጧል';

  @override
  String get found => 'ተገኝቷል';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ቅጥያዎች',
      one: 'ቅጥያ',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'ያሉ $type';
  }

  @override
  String installed(String type) {
    return 'የተጫነ $type';
  }

  @override
  String get extensionsDescription => 'ተጨማሪ ተግባራትን ለማግኘት ቅጥያዎችን ይጫኑ እና ያስተዳድሩ';

  @override
  String get addAnimeRepo => 'የአኒሜ ማከማቻ አክል';

  @override
  String get addAnimeRepoDesc => 'ከተለያዩ ምንጮች የአኒሜ ማከማቻ አክል';

  @override
  String get addMangaRepo => 'የማንጋ ማከማቻ አክል';

  @override
  String get addMangaRepoDesc => 'ከተለያዩ ምንጮች የማንጋ ማከማቻ አክል';

  @override
  String get addNovelRepo => 'የልቦለድ ማከማቻ አክል';

  @override
  String get addNovelRepoDesc => 'ከተለያዩ ምንጮች የልቦለድ ማከማቻ አክል';

  @override
  String get loadExtensionsIcon => 'የቅጥያዎች አዶ ጫን';

  @override
  String get loadExtensionsIconDesc => 'የቅጥያዎች ገጽ ዘገይቶ ከሆነ አሰናክል';

  @override
  String get autoUpdate => 'ራስ-ሰር ዝመና';

  @override
  String get autoUpdateDesc => 'ቅጥያዎችን በራስ-ሰር አዘምን';

  @override
  String get installSourceToStart => 'ለመጀመር ከቅጥያ ገጽ ምንጭ ይጫኑ';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'አማካይ ርዝመት';

  @override
  String get characters => 'ገጸ-ባህሪያት';

  @override
  String get description => 'አጭር መግለጫ';

  @override
  String get synopsis => '줄거리';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'ቅርጸት';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'ስም (ሮማጂ)';

  @override
  String get popularity => 'ታዋቂነት';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'ሰራተኞች';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'ተመሳሳይ ቃላት';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'ትንሽ አሳይ';

  @override
  String get expandText => 'ተጨማሪ አሳይ';

  @override
  String get comingSoon => 'በቅርብ ይመጣል';

  @override
  String get wrongTitle => 'የተሳሳተ ርዕስ?';

  @override
  String get youTube => 'በዩቲዩብ ላይ ይጫወቱ?';

  @override
  String get mediaNotFound => 'ሚዲያ አልተገኘም';

  @override
  String get noChapterFound => 'ምንም ምዕራፍ አልተገኘም';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'እንቅስቃሴዎች',
      one: 'እንቅስቃሴ',
    );
    return '$_temp0';
  }

  @override
  String get language => 'ቋንቋ';

  @override
  String get account => 'መለያ';

  @override
  String get accountDescription =>
      'የእርስዎን AniList፣ MAL እና Discord መለያዎች በቀላሉ ያስተዳድሩ';

  @override
  String get common => 'የጋራ';

  @override
  String get commonDescription => 'ቀልጣፋ የመተግበሪያ አጠቃቀም ለማግኘት አጠቃላይ ቅንብሮችን ይጠቀሙ';

  @override
  String get animeDescription => 'የአኒሜ ምርጫዎችዎን ያስተካክሉ እና ያስተዳድሩ';

  @override
  String get mangaDescription => 'የማንጋ ተሞክሮዎን ያደራጁ እና ያስተካክሉ';

  @override
  String get about => 'ስለ';

  @override
  String get aboutDescription => 'ስለ መተግበሪያው እና ስለ ፈጣሪዎቹ ተጨማሪ ይወቁ';

  @override
  String get notifications => 'ማሳወቂያዎች';

  @override
  String get notificationsDescription => 'እንዴት እና መቼ ማሳወቂያዎችን እንደሚቀበሉ ያዋቅሩ';

  @override
  String get offlineMode => 'ከመስመር ውጭ ሁነታ';

  @override
  String get offlineModeDescription => 'መተግበሪያውን ያለ ኢንተርኔት ግንኙነት ይጠቀሙ';

  @override
  String get incognitoMode => 'ሥውር ሁነታ';

  @override
  String get incognitoModeDescription => 'እንቅስቃሴዎን ሳያስቀምጡ ያስሱ';

  @override
  String get hidePrivate => 'የግል ይደብቁ';

  @override
  String get hidePrivateDescription => 'የግል ተከታታይ ክፍሎችን ከመነሻ ገጽ ደብቅ።';

  @override
  String get hiddenMedia => 'የተደበቀ ሚዲያ';

  @override
  String get noHiddenMediaFound => 'ምንም የተደበቀ ሚዲያ አልተገኘም';

  @override
  String get playerSettingsTitle => 'የማጫወቻ ቅንብሮች';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'ፍጥነት';

  @override
  String get speedDescription => 'ነባሪ የማጫወቻ ፍጥነት';

  @override
  String get cursedSpeed => 'የተረገመ ፍጥነት';

  @override
  String get cursedSpeedDescription => 'በህይወት ለተጠመዱ ሰዎች';

  @override
  String get resizeMode => 'መጠን መቀየሪያ ሁነታ';

  @override
  String get resizeModeDescription => 'ነባሪ የማጫወቻ መጠን መቀየሪያ ሁነታ';

  @override
  String get skipButton => 'መዝለያ ቁልፍ';

  @override
  String get skipButtonDescription => 'የመዝለያ ቁልፍ የጊዜ ርዝመት';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'ንዑስ ርዕሶች';

  @override
  String get showSubtitles => 'ንዑስ ርዕሶችን አሳይ';

  @override
  String get showSubtitlesDescription => 'በነባሪነት ንዑስ ርዕሶችን አሳይ';

  @override
  String get subtitlePreview => 'የንዑስ ርዕስ ቅድመ ዕይታ';

  @override
  String get fontColor => 'የፊደል ቀለም';

  @override
  String get fontColorDescription => 'የንዑስ ርዕስ የፊደል ቀለም';

  @override
  String get fontFamily => 'የፊደል ቤተሰብ';

  @override
  String get fontFamilyDescription => 'የንዑስ ርዕስ የፊደል ቤተሰብ';

  @override
  String get fontSize => 'የፊደል መጠን';

  @override
  String get fontSizeDescription => 'የንዑስ ርዕስ የፊደል መጠን';

  @override
  String get fontWeight => 'የፊደል ክብደት';

  @override
  String get fontWeightDescription => 'የንዑስ ርዕስ የፊደል ክብደት';

  @override
  String get backgroundColor => 'የበስተጀርባ ቀለም';

  @override
  String get backgroundColorDescription => 'የንዑስ ርዕስ የበስተጀርባ ቀለም';

  @override
  String get outlineColor => 'የቢጋር ቀለም';

  @override
  String get outlineColorDescription => 'የንዑስ ርዕስ የቢጋር ቀለም';

  @override
  String get bottomPadding => 'የታችኛው ድብዳብ';

  @override
  String get bottomPaddingDescription => 'የንዑስ ርዕስ የታችኛው ድብዳብ';

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
  String get theme => 'ገጽታ';

  @override
  String get themeDescription => 'የመተግበሪያዎን ገጽታ እና ስሜት ያስተካክሉ';

  @override
  String get darkMode => 'ጨለማ ሁነታ';

  @override
  String get enableDarkMode => 'ጨለማ ሁነታን አንቃ';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'እንደ ግድግዳ ወረቀትዎ ተመሳሳይ ቀለም ይጠቀሙ';

  @override
  String get customTheme => 'ብጁ ገጽታ';

  @override
  String get customThemeDescription => 'ለገጽታው የራስዎን ቀለም ይጠቀሙ';

  @override
  String get oledThemeVariant => 'OLED ገጽታ ልዩነት';

  @override
  String get oledThemeVariantDescription => 'የOLED ሁነታን አንቃ';

  @override
  String get colorPicker => 'ቀለም መራጭ';

  @override
  String get pickColor => 'ቀለም ምረጥ';

  @override
  String get colorPickerDescription => 'ቀለም ይምረጡ';

  @override
  String get colorPickerDefault => 'ነባሪ';

  @override
  String get colorPickerCustom => 'ግላዊ';

  @override
  String get customPath => 'ብጁ መንገድ';

  @override
  String get customPathDescription =>
      'ፋይሎችን ለማስቀመጥ ብጁ መንገድ ያዘጋጁ\nለማስወገድ በረጅሙ ተጫን';

  @override
  String get selectDirectory => 'ማውጫ ይምረጡ';

  @override
  String get selectMediaService => 'የሚዲያ አገልግሎትን ይምረጡ';

  @override
  String get logFile => 'የምዝግብ ማስታወሻ ፋይል';

  @override
  String get logFileDescription => 'የምዝግብ ማስታወሻውን ያጋሩ';

  @override
  String get restoreSettings => 'ቅንብሮችን እንደገና አስጀምር';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'የድር እይታ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer => 'የDartotsu አስተዳዳሪን መደገፍ ይፈልጋሉ?\nልገሳን ያስቡበት';

  @override
  String get donationGoal => 'በአሁኑ ጊዜ የልገሳ ግብ የለም';

  @override
  String get options => 'Options';

  @override
  String get ok => 'እሺ';

  @override
  String get cancel => 'ሰርዝ';

  @override
  String get yes => 'አዎ';

  @override
  String get no => 'አይ';
}
