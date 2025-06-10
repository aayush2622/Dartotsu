// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'एनिमे र माङ्गा ट्र्याक गर्ने\nनयाँ उत्कृष्ट एप';

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
  String get login => 'लगइन';

  @override
  String loginTo(String service) {
    return '$service मा लगइन गर्नुहोस्';
  }

  @override
  String logout(String type) {
    return 'लगआउट $type';
  }

  @override
  String get confirmLogout =>
      'के तपाईं निश्चित हुनुहुन्छ कि तपाईं लगआउट गर्न चाहनुहुन्छ?';

  @override
  String get anime => 'एनिमे';

  @override
  String get manga => 'माङ्गा';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novel => 'उपन्यास';

  @override
  String get ln => 'लाइट उपन्यास';

  @override
  String get home => 'Home';

  @override
  String get search => 'खोज्नुहोस्';

  @override
  String get calendar => 'क्यालेन्डर';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get watch => 'हेर्नुहोस्';

  @override
  String get read => 'पढ्नुहोस्';

  @override
  String get info => 'Info';

  @override
  String get comments => 'टिप्पणीहरू';

  @override
  String get addToList => 'Add To List';

  @override
  String get series => 'Series';

  @override
  String get season => 'मौसम';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एपिसोडहरू',
      one: 'एपिसोड',
    );
    return '$_temp0';
  }

  @override
  String chapter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'अध्या',
      one: 'अध्याय',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'खण्डहरू',
      one: 'खण्ड',
    );
    return '$_temp0';
  }

  @override
  String movie(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'चलचित्रहरू',
      one: 'चलचित्र',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'कुल एपिसोड';

  @override
  String get totalChapters => 'कुल अध्याय';

  @override
  String get genres => 'शैलीहरू';

  @override
  String get scanlators => 'स्क्यानलेटरहरू';

  @override
  String list(String type) {
    return '$type सूची';
  }

  @override
  String get watching => 'हेर्दै गरेको';

  @override
  String get reading => 'पर्दै गरेको';

  @override
  String get readStatus => 'पढ्नुहोस्';

  @override
  String get watchStatus => 'हेरि सकेको';

  @override
  String planned(String type) {
    return 'योजना बनाइएको $type';
  }

  @override
  String onHold(String type) {
    return 'रोकिनु भएको $type';
  }

  @override
  String get droppedAnime => 'ड्रप गरिएको एनीमे';

  @override
  String get droppedManga => 'ड्रप गरिएको मंगा';

  @override
  String noDropped(String type) {
    return 'तपाईंले कुनै $type ड्रप गर्नुभएको छैन।';
  }

  @override
  String get continueReading => 'पढ्न जारी राख्नुहोस्';

  @override
  String get continueWatching => 'हेर्न जारी राख्नुहोस्';

  @override
  String browse(String type) {
    return '$type ब्राउज गर्नुहोस्';
  }

  @override
  String trending(String type) {
    return 'चलनमा रहेको $type';
  }

  @override
  String popular(String type) {
    return 'लोकप्रिय $type';
  }

  @override
  String get topAiring => 'शीर्ष प्रसारण';

  @override
  String topRated(String type) {
    return 'शीर्ष मूल्याङ्कन $type';
  }

  @override
  String mostFavourite(String type) {
    return 'सर्वाधिक मनपर्ने $type';
  }

  @override
  String get thisSeason => 'यस मौसम';

  @override
  String get nextSeason => 'अर्को मौसम';

  @override
  String get previousSeason => 'अघिल्लो मौसम';

  @override
  String get recommended => 'सिफारिस गरिएको';

  @override
  String get recommendationsEmptyMessage =>
      'सुझावहरू प्राप्त गर्नका लागि केहि एनीमे वा मंगा हेर्नुहोस्/पढ्नुहोस्';

  @override
  String get recentUpdates => 'हालका अपडेटहरू';

  @override
  String get allCaughtUpNew => 'सबै अपडेट भइ सके, के नयाँ छ?';

  @override
  String favorite(String type) {
    return 'मनपर्ने $type';
  }

  @override
  String get favorites => 'मनपर्नेहरू';

  @override
  String get noFavourites =>
      'तपाईंलाई केहि मनपरेको छैन जस्तो लाग्छ, \nयहाँ राख्नको लागि कुनै शो मनपर्छ भने त्यसलाई मनपर्ने सूचीमा राख्नुहोस्।';

  @override
  String get noOnHold => 'तपाईंले कुनै कुरा रोकिनु भएको छैन जस्तो लाग्छ।';

  @override
  String manageLayout(String service, String page) {
    return '$service का लागि $page पृष्ठको लेआउट व्यवस्थापन गर्नुहोस्';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'तपाईं ड्र्याग र ड्रप गरेर $page पृष्ठको लेआउट व्यवस्थापन गर्न सक्नुहुन्छ';
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
  String get sort => 'छान्नुहोस्';

  @override
  String get utd => 'अपर बाट तल';

  @override
  String get dtu => 'Down To Up';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'हेरेको एपिसोड';

  @override
  String get chapterRead => 'पढेको अध्याय';

  @override
  String get outOf => 'एति मध्य';

  @override
  String get totalOf => 'जम्मा';

  @override
  String get selected => 'रोजिएको';

  @override
  String get found => 'बेतियो';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तारहरू',
      one: 'विस्तार',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'उपलब्ध $type';
  }

  @override
  String installed(String type) {
    return 'इंस्टल गरिएको $type';
  }

  @override
  String get extensionsDescription =>
      'थप कार्यक्षमताका लागि एक्सटेन्सनहरू स्थापना र व्यवस्थापन गर्नुहोस्';

  @override
  String get addAnimeRepo => 'एनिमे रिपो थप्नुहोस्';

  @override
  String get addAnimeRepoDesc => 'विभिन्न स्रोतहरूबाट एनिमे रिपो थप्नुहोस्';

  @override
  String get addMangaRepo => 'मंगा रिपो थप्नुहोस्';

  @override
  String get addMangaRepoDesc => 'विभिन्न स्रोतहरूबाट मंगा रिपो थप्नुहोस्';

  @override
  String get addNovelRepo => 'उपन्यास रिपो थप्नुहोस्';

  @override
  String get addNovelRepoDesc => 'विभिन्न स्रोतहरूबाट उपन्यास रिपो थप्नुहोस्';

  @override
  String get loadExtensionsIcon => 'एक्सटेन्सन आइकन लोड गर्नुहोस्';

  @override
  String get loadExtensionsIconDesc =>
      'यदि एक्सटेन्सन पृष्ठ ढिलो हुन्छ भने अक्षम गर्नुहोस्';

  @override
  String get autoUpdate => 'स्वचालित अपडेट';

  @override
  String get autoUpdateDesc => 'एक्सटेन्सनहरू स्वचालित रूपमा अपडेट गर्नुहोस्';

  @override
  String get installSourceToStart =>
      'सुरु गर्न एक्सटेन्सन पृष्ठबाट एक्सटेन्सन इन्स्त्ल गर्नुहोस्';

  @override
  String get author => 'Author';

  @override
  String get averageDuration => 'औसत अवधि';

  @override
  String get characters => 'पात्रहरू';

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
  String get nameRomaji => 'नाम (रोमाजी)';

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
  String get synonyms => 'समानार्थी शब्दहरू';

  @override
  String get tags => 'Tags';

  @override
  String get total => 'Total';

  @override
  String get collapseText => 'थोरै देखाउनुहोस्';

  @override
  String get expandText => 'अधिक देखाउनुहोस्';

  @override
  String get comingSoon => 'छिट्टै आउनेछ';

  @override
  String get wrongTitle => 'गलत शीर्षक?';

  @override
  String get youTube => 'युट्युबमा प्ले गर्नुहोस्?';

  @override
  String get mediaNotFound => 'मेदिया भेटिएन';

  @override
  String get noChapterFound => 'कुनै पाठ भेटिएन';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'गतिविधिहरू',
      one: 'गतिविधि',
    );
    return '$_temp0';
  }

  @override
  String get language => 'भाषा';

  @override
  String get account => 'खाता';

  @override
  String get accountDescription =>
      'AniList, MAL, र Discord खाता सजिलै व्यवस्थापन गर्नुहोस्';

  @override
  String get common => 'सामान्य';

  @override
  String get commonDescription =>
      'सजिलो एप प्रयोगको लागि सामान्य सेटिङहरू पहुँच गर्नुहोस्';

  @override
  String get animeDescription =>
      'आफ्नो एनिमे प्राथमिकताहरू अनुकूलित र व्यवस्थापन गर्नुहोस्';

  @override
  String get mangaDescription =>
      'आफ्नो माङ्गा अनुभव व्यवस्थित र अनुकूलन गर्नुहोस्';

  @override
  String get about => 'बारेमा';

  @override
  String get aboutDescription => 'एप र यसको सृष्टिकर्ताहरूको बारेमा जान्नुहोस्';

  @override
  String get notifications => 'सूचनाहरू';

  @override
  String get notificationsDescription =>
      'सूचना कहिले र कसरी प्राप्त गर्ने व्यवस्थापन गर्नुहोस्';

  @override
  String get offlineMode => 'अफलाइन मोड';

  @override
  String get offlineModeDescription =>
      'इन्टरनेट कनेक्सनबिना एप प्रयोग गर्नुहोस्';

  @override
  String get incognitoMode => 'गोप्य मोड';

  @override
  String get incognitoModeDescription =>
      'आफ्नो गतिविधि नसेभ गरी ब्राउज गर्नुहोस्';

  @override
  String get hidePrivate => 'निजी लुकाउनुहोस्';

  @override
  String get hidePrivateDescription =>
      'गोप्य श्रृंखलाहरूलाई गृहपृष्ठबाट लुकाउनुहोस्।';

  @override
  String get hiddenMedia => 'लुकेको मिडिया';

  @override
  String get noHiddenMediaFound => 'कुनै लुकेको मिडिया फेला परेको छैन';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिङहरू';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'गति';

  @override
  String get speedDescription => 'प्लेयरको डिफल्ट गति';

  @override
  String get cursedSpeed => 'अत्यधिक गति';

  @override
  String get cursedSpeedDescription => 'जीवनमा धेरै व्यस्त व्यक्तिहरूका लागि';

  @override
  String get resizeMode => 'पुनःआकार मोड';

  @override
  String get resizeModeDescription => 'प्लेयरको डिफल्ट पुनःआकार मोड';

  @override
  String get skipButton => 'छोड्ने बटन';

  @override
  String get skipButtonDescription => 'छोड्ने बटनको अवधि';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'उपशीर्षकहरू';

  @override
  String get showSubtitles => 'उपशीर्षक देखाउनुहोस्';

  @override
  String get showSubtitlesDescription => 'डिफल्ट रूपमा उपशीर्षक देखाउनुहोस्';

  @override
  String get subtitlePreview => 'उपशीर्षक पूर्वावलोकन';

  @override
  String get fontColor => 'फन्ट रंग';

  @override
  String get fontColorDescription => 'उपशीर्षक फन्ट रंग';

  @override
  String get fontFamily => 'फन्ट परिवार';

  @override
  String get fontFamilyDescription => 'उपशीर्षक फन्ट परिवार';

  @override
  String get fontSize => 'फन्ट आकार';

  @override
  String get fontSizeDescription => 'उपशीर्षक फन्ट आकार';

  @override
  String get fontWeight => 'फन्ट मोटाइ';

  @override
  String get fontWeightDescription => 'उपशीर्षक फन्ट मोटाइ';

  @override
  String get backgroundColor => 'पृष्ठभूमि रंग';

  @override
  String get backgroundColorDescription => 'उपशीर्षक पृष्ठभूमि रंग';

  @override
  String get outlineColor => 'आउटलाइन रंग';

  @override
  String get outlineColorDescription => 'उपशीर्षक आउटलाइन रंग';

  @override
  String get bottomPadding => 'तलको मार्जिन';

  @override
  String get bottomPaddingDescription => 'उपशीर्षक तलको मार्जिन';

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
  String get themeDescription => 'आफ्नो एपको दृश्य र वातावरण अनुकूलन गर्नुहोस्';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get enableDarkMode => 'डार्क मोड सक्षम गर्नुहोस्';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription =>
      'आफ्नो वालपेपरको समान रंग प्रयोग गर्नुहोस्';

  @override
  String get customTheme => 'अनुकूलित विषयवस्तु';

  @override
  String get customThemeDescription => 'थीमको लागि आफ्नै रंग प्रयोग गर्नुहोस्';

  @override
  String get oledThemeVariant => 'OLED थीम भेरियन्ट';

  @override
  String get oledThemeVariantDescription => 'OLED मोड सक्षम गर्नुहोस्';

  @override
  String get colorPicker => 'रंग चयनकर्ता';

  @override
  String get pickColor => 'रंग छान्नुहोस्';

  @override
  String get colorPickerDescription => 'रंग चयन गर्नुहोस्';

  @override
  String get colorPickerDefault => 'डिफल्ट';

  @override
  String get colorPickerCustom => 'अनुकूल';

  @override
  String get customPath => 'अनुकूलन मार्ग';

  @override
  String get customPathDescription =>
      'फाइलहरू सेब गर्नअनुकूलन मार्ग सेट गर्नुहोस्\nहटाउन लामो समये सम्म थिच्नु होस';

  @override
  String get selectDirectory => 'निर्देशिका लिनु होस';

  @override
  String get selectMediaService => 'मिडिया सेवा लिनु होस';

  @override
  String get logFile => 'लग फाइल';

  @override
  String get logFileDescription => 'लग फाइल साझेदारी गर्नुहोस्';

  @override
  String get restoreSettings => 'सेटिङहरू पुनःस्थापना गर्नुहोस्';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'वेब बिउ';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'Dartotsu को मेन्टेनरलाई सहयोग गर्न चाहनुहुन्छ?\nदानको विचार गर्नुहोस्';

  @override
  String get donationGoal => 'हाल कुनै दान लक्ष्य छैन';

  @override
  String get options => 'Options';

  @override
  String get ok => 'ठीक छ';

  @override
  String get cancel => 'रद्द गर्नुहोस्';

  @override
  String get yes => 'हो';

  @override
  String get no => 'होइन';
}
