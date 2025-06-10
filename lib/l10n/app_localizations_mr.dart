// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'नवीन सर्वोत्तम अ‍ॅप\nअ‍ॅनिमी आणि मंगा ट्रॅक करण्यासाठी';

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
  String get login => 'लॉगिन';

  @override
  String loginTo(String service) {
    return '$service मध्ये लॉगिन करा';
  }

  @override
  String logout(String type) {
    return '$type लॉगआउट करा';
  }

  @override
  String get confirmLogout => 'आपण नक्कीच लॉगआउट करायचे आहे का?';

  @override
  String get anime => 'अ‍ॅनिमी';

  @override
  String get manga => 'मंगा';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'कादंबरी';

  @override
  String get ln => 'लाइट कादंबरी';

  @override
  String get home => 'Home';

  @override
  String get search => 'शोधा';

  @override
  String get calendar => 'कॅलेंडर';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get watch => 'पाहा';

  @override
  String get read => 'वाचा';

  @override
  String get info => 'Info';

  @override
  String get comments => 'टिप्पण्या';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'हंगाम';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एपिसोड्स',
      one: 'एपिसोड',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'धडे',
      one: 'धडा',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'खंड',
      one: 'खंड',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'चित्रपट',
      one: 'चित्रपट',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'एपिसोड्स';

  @override
  String get totalChapters => 'धडे';

  @override
  String get genres => 'प्रकार';

  @override
  String get scanlators => 'स्कॅनलेटर';

  @override
  String list(String type) {
    return '$type यादी';
  }

  @override
  String get watching => 'पाहत आहे';

  @override
  String get reading => 'वाचत आहे';

  @override
  String get readStatus => 'वाचा';

  @override
  String get watchStatus => 'पाहिले';

  @override
  String planned(String type) {
    return 'योजना $type';
  }

  @override
  String onHold(String type) {
    return 'ठेवले $type';
  }

  @override
  String get droppedAnime => 'सोडलेली अ‍ॅनिमे';

  @override
  String get droppedManga => 'सोडलेली मंगा';

  @override
  String noDropped(String type) {
    return 'तुम्ही अजून काही $type सोडले नाही.';
  }

  @override
  String get continueReading => 'वाचन सुरू ठेवा';

  @override
  String get continueWatching => 'पाहणे सुरू ठेवा';

  @override
  String browse(String type) {
    return 'ब्राउझ करा $type';
  }

  @override
  String trending(String type) {
    return 'ट्रेंडिंग $type';
  }

  @override
  String popular(String type) {
    return 'लोकप्रिय $type';
  }

  @override
  String get topAiring => 'टॉप एअरिंग';

  @override
  String topRated(String type) {
    return 'टॉप रेटेड $type';
  }

  @override
  String mostFavourite(String type) {
    return 'सर्वात आवडता $type';
  }

  @override
  String get thisSeason => 'हा हंगाम';

  @override
  String get nextSeason => 'पुढील हंगाम';

  @override
  String get previousSeason => 'मागील हंगाम';

  @override
  String get recommended => 'सुझावित';

  @override
  String get recommendationsEmptyMessage =>
      'सुझाव मिळवण्यासाठी काही अ‍ॅनिमे किंवा मंगा वाचा/पाहा';

  @override
  String get recentUpdates => 'अलीकडील अद्यतने';

  @override
  String get allCaughtUpNew => 'सर्व काही अपडेट झाले, काय नवीन आहे?';

  @override
  String favorite(String type) {
    return 'आवडता $type';
  }

  @override
  String get favorites => 'आवडते';

  @override
  String get noFavourites =>
      'तुम्ही काहीच आवडत नाहीत,\nकृपया शो आवडून तो येथे ठेवा.';

  @override
  String get noOnHold => 'तुम्ही अजून काही ठेवलं नाही.';

  @override
  String manageLayout(String service, String page) {
    return '$service साठी $page पृष्ठाची रचना व्यवस्थापित करा';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'आपण घटक ड्रॅग आणि ड्रॉप करून $page पृष्ठाची रचना व्यवस्थापित करू शकता';
  }

  @override
  String get gridView => 'ग्रिड दृश्य';

  @override
  String get listView => 'List View';

  @override
  String get compactView => 'संक्षिप्त दृश्य';

  @override
  String get layout => 'Layout';

  @override
  String get sort => 'सॉर्ट करा';

  @override
  String get utd => 'वरून खाली';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'एपिसोड पाहिला';

  @override
  String get chapterRead => 'धडा वाचला';

  @override
  String get outOf => 'पैकी';

  @override
  String get totalOf => 'एकूण';

  @override
  String get selected => 'निवडले';

  @override
  String get found => 'सापडले';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तार',
      one: 'विस्तार',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return '$type उपलब्ध';
  }

  @override
  String installed(String type) {
    return '$type स्थापित';
  }

  @override
  String get extensionsDescription =>
      'अधिक कार्यक्षमता मिळविण्यासाठी विस्तार स्थापित करा आणि व्यवस्थापित करा';

  @override
  String get addAnimeRepo => 'ऍनिमे रेपो जोडा';

  @override
  String get addAnimeRepoDesc => 'विविध स्रोतांमधून ऍनिमे रेपो जोडा';

  @override
  String get addMangaRepo => 'मंगा रेपो जोडा';

  @override
  String get addMangaRepoDesc => 'विविध स्रोतांमधून मंगा रेपो जोडा';

  @override
  String get addNovelRepo => 'कादंबरी रेपो जोडा';

  @override
  String get addNovelRepoDesc => 'विविध स्रोतांमधून कादंबरी रेपो जोडा';

  @override
  String get loadExtensionsIcon => 'एक्स्टेंशन आयकॉन लोड करा';

  @override
  String get loadExtensionsIconDesc =>
      'जर एक्स्टेंशन पृष्ठ अडकत असेल तर अक्षम करा';

  @override
  String get autoUpdate => 'स्वयंचलित अद्यतन';

  @override
  String get autoUpdateDesc => 'एक्स्टेंशन्स स्वयंचलित अद्यतनित करा';

  @override
  String get installSourceToStart =>
      'सुरू करण्यासाठी विस्तार पानावरून स्रोत स्थापित करा';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'सरासरी कालावधी';

  @override
  String get characters => 'लक्ष्य पात्रे';

  @override
  String get description => 'सारांश';

  @override
  String get synopsis => 'सारांश';

  @override
  String get endDate => 'End Date';

  @override
  String get format => 'रूपरेखा';

  @override
  String get meanScore => 'Mean Score';

  @override
  String get name => 'Name';

  @override
  String get nameRomaji => 'नाव (रोमाजी)';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get relations => 'Relations';

  @override
  String get prequel => 'PREQUEL';

  @override
  String get sequel => 'SEQUEL';

  @override
  String get source => 'Source';

  @override
  String get staff => 'कर्मचारी';

  @override
  String get startDate => 'Start Date';

  @override
  String get status => 'Status';

  @override
  String get studio => 'Studio';

  @override
  String get synonyms => 'समानार्थी शब्द';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'कमी दाखवा';

  @override
  String get expandText => 'अधिक दाखवा';

  @override
  String get comingSoon => 'लवकरच येत आहे';

  @override
  String get wrongTitle => 'चुकीचे शीर्षक?';

  @override
  String get youTube => 'YouTube वर प्ले करायचे का?';

  @override
  String get mediaNotFound => 'मीडिया सापडले नाही';

  @override
  String get noChapterFound => 'अध्याय सापडला नाही';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'गतिवीधियां',
      one: 'गतिवीदि',
    );
    return '$_temp0';
  }

  @override
  String get language => 'भाषा';

  @override
  String get account => 'खाता';

  @override
  String get accountDescription =>
      'तुमचे AniList, MAL आणि Discord खाती सहजपणे व्यवस्थापित करा';

  @override
  String get common => 'साधारण';

  @override
  String get commonDescription => 'ऍप वापरण्यासाठी सामान्य सेटिंग्ज प्रवेश करा';

  @override
  String get animeDescription =>
      'तुमच्या अ‍ॅनिमी आवडी सानुकूलित करा आणि व्यवस्थापित करा';

  @override
  String get mangaDescription =>
      'तुमच्या मंगा अनुभवाची व्यवस्था करा आणि सानुकूलित करा';

  @override
  String get about => 'विषयी';

  @override
  String get aboutDescription =>
      'ऍप आणि त्याच्या निर्मात्यांबद्दल अधिक जाणून घ्या';

  @override
  String get notifications => 'सूचना';

  @override
  String get notificationsDescription =>
      'तुम्ही कशा प्रकारे आणि केव्हा सूचना प्राप्त करायच्या ते कॉन्फिगर करा';

  @override
  String get offlineMode => 'ऑफलाइन मोड';

  @override
  String get offlineModeDescription => 'इंटरनेट कनेक्शनशिवाय ऍप वापरा';

  @override
  String get incognitoMode => 'गोपनीय मोड';

  @override
  String get incognitoModeDescription =>
      'तुमची क्रियाकलाप न जतन करता ब्राउझ करा';

  @override
  String get hidePrivate => 'खाजगी लपवा';

  @override
  String get hidePrivateDescription => 'होम पृष्ठावर खाजगी मालिका लपवा.';

  @override
  String get hiddenMedia => 'लपवलेली मीडिया';

  @override
  String get noHiddenMediaFound => 'कुठलीही लपवलेली मीडिया सापडली नाही';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिंग्ज';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'गती';

  @override
  String get speedDescription => 'प्लेयरसाठी डिफॉल्ट गती';

  @override
  String get cursedSpeed => 'शापित गती';

  @override
  String get cursedSpeedDescription =>
      'जी लोकं जीवनात फार व्यस्त असतात त्यांच्यासाठी';

  @override
  String get resizeMode => 'पुनः आकार मोड';

  @override
  String get resizeModeDescription => 'प्लेयरसाठी डिफॉल्ट पुनः आकार मोड';

  @override
  String get skipButton => 'स्किप बटण';

  @override
  String get skipButtonDescription => 'स्किप बटणाची कालावधी';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'उपशीर्षक';

  @override
  String get showSubtitles => 'उपशीर्षक दर्शवा';

  @override
  String get showSubtitlesDescription => 'डिफॉल्टने उपशीर्षक दर्शवा';

  @override
  String get subtitlePreview => 'उपशीर्षक पूर्वावलोकन';

  @override
  String get fontColor => 'अक्षर रंग';

  @override
  String get fontColorDescription => 'उपशीर्षक अक्षर रंग';

  @override
  String get fontFamily => 'अक्षर कुटुंब';

  @override
  String get fontFamilyDescription => 'उपशीर्षक अक्षर कुटुंब';

  @override
  String get fontSize => 'अक्षर आकार';

  @override
  String get fontSizeDescription => 'उपशीर्षक अक्षर आकार';

  @override
  String get fontWeight => 'अक्षर वजन';

  @override
  String get fontWeightDescription => 'उपशीर्षक अक्षर वजन';

  @override
  String get backgroundColor => 'पार्श्वभूमी रंग';

  @override
  String get backgroundColorDescription => 'उपशीर्षक पार्श्वभूमी रंग';

  @override
  String get outlineColor => 'आउटलाइन रंग';

  @override
  String get outlineColorDescription => 'उपशीर्षक आउटलाइन रंग';

  @override
  String get bottomPadding => 'तळाचे पॅडिंग';

  @override
  String get bottomPaddingDescription => 'उपशीर्षक तळाचे पॅडिंग';

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
  String get theme => 'थीम';

  @override
  String get themeDescription => 'तुमच्या ऍपचा लुक आणि वाइब सानुकूलित करा';

  @override
  String get darkMode => 'अंधार मोड';

  @override
  String get enableDarkMode => 'अंधार मोड सक्षम करा';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'तुमच्या वॉलपेपरसारखा रंग वापरा';

  @override
  String get customTheme => 'सानुकूल थीम';

  @override
  String get customThemeDescription => 'थीमसाठी तुमचं स्वतःचा रंग वापरा';

  @override
  String get oledThemeVariant => 'OLED थीम व्हेरिएंट';

  @override
  String get oledThemeVariantDescription => 'OLED मोड सक्षम करा';

  @override
  String get colorPicker => 'रंग निवडक';

  @override
  String get pickColor => 'एक रंग निवडा';

  @override
  String get colorPickerDescription => 'रंग निवडा';

  @override
  String get colorPickerDefault => 'डीफॉल्ट';

  @override
  String get colorPickerCustom => 'सानुकूल';

  @override
  String get customPath => 'सानुकूल मार्ग';

  @override
  String get customPathDescription =>
      'फाइल सेव्ह करण्यासाठी सानुकूल मार्ग सेट करा\nकाढण्यासाठी दीर्घकाळ दाबा';

  @override
  String get selectDirectory => 'निर्देशिका निवडा';

  @override
  String get selectMediaService => 'मीडिया सेवा निवडा';

  @override
  String get logFile => 'लॉग फाइल';

  @override
  String get logFileDescription => 'लॉग फाइल शेअर करा';

  @override
  String get restoreSettings => 'सेटिंग्ज पुनर्संचयित करा';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'वेब दृश्य';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu च्या देखभाल करणाऱ्याला समर्थन देऊ इच्छिता?\nदान करण्याचा विचार करा';

  @override
  String get donationGoal => 'सध्यातरी दानाचा उद्दिष्ट नाही';

  @override
  String get options => 'Options';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get yes => 'हो';

  @override
  String get no => 'नाही';
}
