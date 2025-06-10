// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'புதிய சிறந்த பயன்பாடு\nஅனிமே மற்றும் மங்கா கண்காணிக்க';

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
  String get login => 'உள்நுழைக';

  @override
  String loginTo(String service) {
    return '$service இல் புகுத்தவும்';
  }

  @override
  String logout(String type) {
    return '$type இல் வெளியேறு';
  }

  @override
  String get confirmLogout => 'நீங்கள் வெளியேற விரும்புகிறீர்களா?';

  @override
  String get anime => 'அனிமே';

  @override
  String get manga => 'மங்கா';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'புத்தகம்';

  @override
  String get ln => 'லைட் நாவல்';

  @override
  String get home => 'Home';

  @override
  String get search => 'தேடு';

  @override
  String get calendar => 'கலண்டர்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get watch => 'பார்க்கவும்';

  @override
  String get read => 'படிக்கவும்';

  @override
  String get info => 'Info';

  @override
  String get comments => 'கருத்துகள்';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'பிரிவு';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'பட்டியல்கள்',
      one: 'பட்டியல்',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'அத்தியாயங்கள்',
      one: 'அத்தியாயம்',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'பரிமாணங்கள்',
      one: 'பரிமாணம்',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'படங்கள்',
      one: 'படம்',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'பகுதிகள்';

  @override
  String get totalChapters => 'அத்தியாயங்கள்';

  @override
  String get genres => 'பரிமாணங்கள்';

  @override
  String get scanlators => 'ஸ்கான்லேட்டர்கள்';

  @override
  String list(String type) {
    return '$type பட்டியல்';
  }

  @override
  String get watching => 'பார்க்கிறது';

  @override
  String get reading => 'படிக்கிறது';

  @override
  String get readStatus => 'படிக்கவும்';

  @override
  String get watchStatus => 'பார்த்துவிட்டேன்';

  @override
  String planned(String type) {
    return 'திட்டமிடப்பட்ட $type';
  }

  @override
  String onHold(String type) {
    return 'ஒப்புதலுக்கு நேரிடப்பட்ட $type';
  }

  @override
  String get droppedAnime => 'நிறுத்தப்பட்ட அநிமே';

  @override
  String get droppedManga => 'நிறுத்தப்பட்ட மாஙா';

  @override
  String noDropped(String type) {
    return 'நீங்கள் எந்த $type ஐயும் நிறுத்தவில்லை.';
  }

  @override
  String get continueReading => 'படிக்க தொடரவும்';

  @override
  String get continueWatching => 'பார்க்க தொடரவும்';

  @override
  String browse(String type) {
    return 'பரிசோதனை $type';
  }

  @override
  String trending(String type) {
    return 'பிரபலமாக உள்ள $type';
  }

  @override
  String popular(String type) {
    return 'பிரபலமான $type';
  }

  @override
  String get topAiring => 'முதன்மை ஒளிபரப்பு';

  @override
  String topRated(String type) {
    return 'முதன்மை மதிப்பீடு $type';
  }

  @override
  String mostFavourite(String type) {
    return 'அதிக விருப்பமான $type';
  }

  @override
  String get thisSeason => 'இந்த பருவம்';

  @override
  String get nextSeason => 'அடுத்த பருவம்';

  @override
  String get previousSeason => 'முந்தைய பருவம்';

  @override
  String get recommended => 'பரிந்துரைக்கப்பட்டது';

  @override
  String get recommendationsEmptyMessage =>
      'எந்த அநிமே அல்லது மாஙாவைப் பார்க்க/படிக்கவும் பரிந்துரைகள் பெற';

  @override
  String get recentUpdates => 'இணையதள புதிய பதிவுகள்';

  @override
  String get allCaughtUpNew => 'அனைத்து புதுப்பிக்கப்பட்டவை, புதியவை என்ன?';

  @override
  String favorite(String type) {
    return 'விருப்பமான $type';
  }

  @override
  String get favorites => 'பிடித்தவை';

  @override
  String get noFavourites =>
      'உங்களுக்கு இதுவரை எதுவும் பிடிக்கவில்லை,\nஒரு நிகழ்ச்சியை விரும்பி இதை இங்கே வைத்திருங்கள்.';

  @override
  String get noOnHold => 'நீங்கள் எந்த ஒன்றையும் நிறுத்தவில்லை போல் தெரிகிறது.';

  @override
  String manageLayout(String service, String page) {
    return '$service இல் $page பக்கத்தின் வடிவமைப்பை நிர்வகிக்கவும்';
  }

  @override
  String manageLayoutDescription(String page) {
    return '$page பக்கத்தின் வடிவமைப்பை நிர்வகிக்கப் பயன்படுத்த நீங்கள் உருப்படிகளை இழுத்து விடலாம்';
  }

  @override
  String get gridView => 'கிரிட் பார்வை';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'சுருக்கமான பார்வை';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'திருத்து';

  @override
  String get utd => 'மேல் இருந்து கீழே';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'பட்டியல் பார்வை';

  @override
  String get chapterRead => 'அத்தியாயம் படித்தது';

  @override
  String get outOf => 'இதிலிருந்து';

  @override
  String get totalOf => 'மொத்தம்';

  @override
  String get selected => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get found => 'கிடைத்தது';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'விரிவாக்கங்கள்',
      one: 'விரிவாக்கம்',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'கிடைக்கும் $type';
  }

  @override
  String installed(String type) {
    return 'நிறுத்தப்பட்ட $type';
  }

  @override
  String get extensionsDescription =>
      'சேர்க்கைகள் மற்றும் செயல்பாடுகளை மேலதிகமாக நிறுவவும்';

  @override
  String get addAnimeRepo => 'ஆனிமே பகிர்வகம் சேர்க்கவும்';

  @override
  String get addAnimeRepoDesc =>
      'வேறு விதமான மூலங்களில் இருந்து ஆனிமே பகிர்வகம் சேர்க்கவும்';

  @override
  String get addMangaRepo => 'மான்கா பகிர்வகம் சேர்க்கவும்';

  @override
  String get addMangaRepoDesc =>
      'வேறு விதமான மூலங்களில் இருந்து மான்கா பகிர்வகம் சேர்க்கவும்';

  @override
  String get addNovelRepo => 'நாவல் பகிர்வகம் சேர்க்கவும்';

  @override
  String get addNovelRepoDesc =>
      'வேறு விதமான மூலங்களில் இருந்து நாவல் பகிர்வகம் சேர்க்கவும்';

  @override
  String get loadExtensionsIcon => 'நீட்டிப்புகளின் குறும்படங்களை ஏற்றுக';

  @override
  String get loadExtensionsIconDesc =>
      'நீட்டிப்பு பக்கம் மந்தமாக இருந்தால் முடக்கு';

  @override
  String get autoUpdate => 'தானியங்கும் புதுப்பிப்பு';

  @override
  String get autoUpdateDesc => 'நீட்டிப்புகளை தானாக புதுப்பிக்கவும்';

  @override
  String get installSourceToStart =>
      'தொடங்குவதற்கு நீட்டிப்பு பக்கத்திலிருந்து மூலத்தை நிறுவவும்';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'சராசரி கால அளவு';

  @override
  String get characters => 'பாத்திரங்கள்';

  @override
  String get description => 'சுருக்கம்';

  @override
  String get synopsis => 'சுருக்கம்';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'வடிவமைப்பு';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'பெயர் (ரோமாஜி)';

  @override
  String get popularity => 'பிரபலம்';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'சீனியர்';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'சமாதானம்';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'சுருக்கவும்';

  @override
  String get expandText => 'மேலும் காண்க';

  @override
  String get comingSoon => 'வென்றது உடனே வருகிறது';

  @override
  String get wrongTitle => 'தவறான தலைப்பு?';

  @override
  String get youTube => 'YouTube-இல் இயக்கவா?';

  @override
  String get mediaNotFound => 'மீடியா கிடைக்கவில்லை';

  @override
  String get noChapterFound => 'அதிகாரம் கிடைக்கவில்லை';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'செயல்கள்',
      one: 'செயல்',
    );
    return '$_temp0';
  }

  @override
  String get language => 'மொழி';

  @override
  String get account => 'கணக்கு';

  @override
  String get accountDescription =>
      'உங்கள் AniList, MAL மற்றும் Discord கணக்குகளை எளிதாக நிர்வகிக்கவும்';

  @override
  String get common => 'பொதுவான';

  @override
  String get commonDescription => 'பயன்பாட்டின் வழக்கமான அமைப்புகளை அணுகவும்';

  @override
  String get animeDescription =>
      'உங்கள் அனிமே விருப்பங்களை தனிப்பயனாக்கி நிர்வகிக்கவும்';

  @override
  String get mangaDescription =>
      'உங்கள் மங்கா அனுபவத்தை ஒழுங்குபடுத்தவும் மற்றும் தனிப்பயனாக்கவும்';

  @override
  String get about => 'பற்றி';

  @override
  String get aboutDescription =>
      'பயன்பாட்டையும் அதன் படைப்பாளர்களையும் பற்றி மேலும் அறியவும்';

  @override
  String get notifications => 'அறிவிப்புகள்';

  @override
  String get notificationsDescription =>
      'எப்போது மற்றும் எப்படி அறிவிப்புகள் பெறுவது என்பதை அமைக்கவும்';

  @override
  String get offlineMode => 'ஆஃப்லைன் முறை';

  @override
  String get offlineModeDescription =>
      'இணைய இணைப்பு இல்லாமல் பயன்பாட்டை பயன்படுத்தவும்';

  @override
  String get incognitoMode => 'இன்கோக்னிட்டோ முறை';

  @override
  String get incognitoModeDescription =>
      'உங்கள் செயல்பாடுகளை சேமிக்காமல் உலாவவும்';

  @override
  String get hidePrivate => 'தனியுரிமையை மறைக்கவும்';

  @override
  String get hidePrivateDescription =>
      'மனைவிகளைக் கொடுத்து முகப்புப் பக்கத்தில் ஒத்திருக்கவும்.';

  @override
  String get hiddenMedia => 'மறைக்கப்பட்ட மீடியா';

  @override
  String get noHiddenMediaFound => 'மறைக்கப்பட்ட மீடியா எதுவும் கண்டறியவில்லை';

  @override
  String get playerSettingsTitle => 'ப்ளேயர் அமைப்புகள்';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'வேகம்';

  @override
  String get speedDescription => 'ப்ளேயருக்கான இயல்புநிலை வேகம்';

  @override
  String get cursedSpeed => 'பதியSpeed';

  @override
  String get cursedSpeedDescription =>
      'வாழ்க்கையில் மிகவும் பிஸியானவர்களுக்கானது';

  @override
  String get resizeMode => 'பரிமாண முறை';

  @override
  String get resizeModeDescription => 'ப்ளேயருக்கான இயல்புநிலை பரிமாண முறை';

  @override
  String get skipButton => 'தவிர்க்கும் பொத்தான்';

  @override
  String get skipButtonDescription => 'தவிர்க்கும் பொத்தானின் கால அளவு';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'பட்டியல்கள்';

  @override
  String get showSubtitles => 'பட்டியல்கள் காட்சி';

  @override
  String get showSubtitlesDescription => 'இயல்புநிலையில் பட்டியல்கள் காட்டவும்';

  @override
  String get subtitlePreview => 'பட்டியலின் முன்னோட்டம்';

  @override
  String get fontColor => 'எழுத்து நிறம்';

  @override
  String get fontColorDescription => 'பொருத்தமான எழுத்து நிறம்';

  @override
  String get fontFamily => 'எழுத்துப் குடும்பம்';

  @override
  String get fontFamilyDescription => 'பொருத்தமான எழுத்துப் குடும்பம்';

  @override
  String get fontSize => 'எழுத்து அளவு';

  @override
  String get fontSizeDescription => 'பொருத்தமான எழுத்து அளவு';

  @override
  String get fontWeight => 'எழுத்தின் எடை';

  @override
  String get fontWeightDescription => 'பொருத்தமான எழுத்தின் எடை';

  @override
  String get backgroundColor => 'பின்புல நிறம்';

  @override
  String get backgroundColorDescription => 'பொருத்தமான பின்புல நிறம்';

  @override
  String get outlineColor => 'அசைவு நிறம்';

  @override
  String get outlineColorDescription => 'பொருத்தமான அசைவு நிறம்';

  @override
  String get bottomPadding => 'கீழ்-padding';

  @override
  String get bottomPaddingDescription => 'பொருத்தமான கீழ்-padding';

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
  String get theme => 'தீமா';

  @override
  String get themeDescription =>
      'உங்கள் பயன்பாட்டின் தோற்றத்தை மற்றும் வாட்டையை தனிப்பயனாக்கவும்';

  @override
  String get darkMode => 'கருப்பு முறை';

  @override
  String get enableDarkMode => 'கருப்பு முறையை இயக்கவும்';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'உங்கள் கைவினைப் படத்தின் நிறத்தை பயன்படுத்தவும்';

  @override
  String get customTheme => 'தனிப்பயனாக்கிய தீமா';

  @override
  String get customThemeDescription => 'உங்கள் நிறத்தை தீமாவாக பயன்படுத்தவும்';

  @override
  String get oledThemeVariant => 'OLED தீமா மாறுபாடு';

  @override
  String get oledThemeVariantDescription => 'OLED முறை செயல்படுத்தவும்';

  @override
  String get colorPicker => 'நிறத் தேர்வாளர்';

  @override
  String get pickColor => 'ஒரு நிறத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get colorPickerDescription => 'ஒரு நிறத்தை தேர்வு செய்';

  @override
  String get colorPickerDefault => 'இயல்புநிலை';

  @override
  String get colorPickerCustom => 'தனிப்பயன்';

  @override
  String get customPath => 'தனிப்பயன் பாதை';

  @override
  String get customPathDescription =>
      'கோப்புகளைச் சேமிக்க தனிப்பயன் பாதையை அமைக்கவும்\nஅகற்ற நீண்ட நேரம் அழுத்தவும்';

  @override
  String get selectDirectory => 'ஒரு கோப்பகத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get selectMediaService => 'மீடியா சேவையைத் தேர்ந்தெடுக்கவும்';

  @override
  String get logFile => 'பதிவு கோப்பு';

  @override
  String get logFileDescription => 'பதிவு கோப்பைப் பகிரவும்';

  @override
  String get restoreSettings => 'அமைப்புகளை மீட்டமைக்கவும்';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'வலைப் பார்வை';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu பராமரிப்பாளரை ஆதரிக்க விரும்புகிறீர்களா?\nதனியுரிமையாக வழங்கலை பரிசீலிக்கவும்';

  @override
  String get donationGoal => 'தன்னார்வ நோக்கம் இல்லை';

  @override
  String get options => 'Options';

  @override
  String get ok => 'சரி';

  @override
  String get cancel => 'ரத்து செய்';

  @override
  String get yes => 'ஆமாம்';

  @override
  String get no => 'இல்லை';
}
