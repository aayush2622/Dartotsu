// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'एनीमे और मांगा को ट्रैक\nकरने के लिए नई सर्वश्रेष्ठ ऐप';

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
    return 'लॉगिन करें $service';
  }

  @override
  String logout(String type) {
    return 'लॉगआउट $type';
  }

  @override
  String get confirmLogout =>
      'क्या आप सुनिश्चित हैं कि आप लॉगआउट करना चाहते हैं?';

  @override
  String get anime => 'एनीमे';

  @override
  String get manga => 'मंगा';

  @override
  String get manhwa => 'मन्हवा';

  @override
  String get manhua => 'मन्हुआ';

  @override
  String get novel => 'उपन्यास';

  @override
  String get ln => 'लाइट नोवेल';

  @override
  String get home => 'मुख्य पृष्ठ';

  @override
  String get search => 'खोजें';

  @override
  String get calendar => 'कैलेंडर';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get watch => 'देखें';

  @override
  String get read => 'पढ़ें';

  @override
  String get info => 'जानकारी';

  @override
  String get comments => 'टिप्पणियाँ';

  @override
  String get addToList => 'सूची में जोड़ें';

  @override
  String get series => 'श्रृंखला';

  @override
  String get season => 'मौसम';

  @override
  String episode(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एपिसोड',
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
      one: 'अध्या',
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
      other: 'फिल्म',
      one: 'फिल्म',
    );
    return '$_temp0';
  }

  @override
  String get totalEpisodes => 'कुल एपिसोड';

  @override
  String get totalChapters => 'कुल अध्याय';

  @override
  String get genres => 'शैलियाँ';

  @override
  String get scanlators => 'स्कैनलाटर्स';

  @override
  String list(String type) {
    return '$type सूची';
  }

  @override
  String get watching => 'वाचिंग';

  @override
  String get reading => 'पढ़ना';

  @override
  String get readStatus => 'पढ़ें';

  @override
  String get watchStatus => 'देखो';

  @override
  String planned(String type) {
    return 'नियोजित $type';
  }

  @override
  String onHold(String type) {
    return 'होल्ड पर $type';
  }

  @override
  String get droppedAnime => 'ड्रॉप किया गया एनीमे';

  @override
  String get droppedManga => 'ड्रॉप किया गया मांगा';

  @override
  String noDropped(String type) {
    return 'आपने अभी तक कोई भी $type नहीं छोड़ा है।';
  }

  @override
  String get continueReading => 'पढ़ना जारी रखें';

  @override
  String get continueWatching => 'देखना जारी रखें';

  @override
  String browse(String type) {
    return 'ब्राउज़ $type';
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
  String get topAiring => 'शीर्ष प्रसारण';

  @override
  String topRated(String type) {
    return 'शीर्ष रेटेड $type';
  }

  @override
  String mostFavourite(String type) {
    return 'सबसे पसंदीदा $type';
  }

  @override
  String get thisSeason => 'इस मौसम';

  @override
  String get nextSeason => 'अगला मौसम';

  @override
  String get previousSeason => 'पिछला मौसम';

  @override
  String get recommended => 'सिफारिश की गई';

  @override
  String get recommendationsEmptyMessage => 'कोई सिफारिश नहीं है';

  @override
  String get recentUpdates => 'हाल की अपडेट्स';

  @override
  String get allCaughtUpNew => 'सभी पकड़ा, नया क्या है?';

  @override
  String favorite(String type) {
    return 'पसंदीदा $type';
  }

  @override
  String get favorites => 'पसंदीदा';

  @override
  String get noFavourites =>
      'लगता है तुम्हें कुछ पसंद नहीं,\nकिसी शो को पसंद करके उसे यहां रखने का प्रयास करें।';

  @override
  String get noOnHold => 'ऐसा लगता है कि आपने कुछ भी रोक कर नहीं रखा है।';

  @override
  String manageLayout(String service, String page) {
    return '$service के लिए $page पेज लेआउट प्रबंधित करें';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'आप आइटमों को खींचकर और छोड़ कर $page पेज के लिए लेआउट प्रबंधित कर सकते हैं';
  }

  @override
  String get gridView => 'ग्रिड दृश्य';

  @override
  String get listView => 'सूची दृश्य';

  @override
  String get compactView => 'संक्षिप्त दृश्य';

  @override
  String get layout => 'लेआउट';

  @override
  String get sort => 'क्रमबद्ध करें';

  @override
  String get utd => 'अद्यतन';

  @override
  String get dtu => 'ड्रॉप किया गया';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'देखे गए एपिसोड';

  @override
  String get chapterRead => 'पढ़े गए अध्याय';

  @override
  String get outOf => 'बाहर';

  @override
  String get totalOf => 'कुल';

  @override
  String get selected => 'चयनित';

  @override
  String get found => 'स्थापित';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तारें',
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
    return 'स्थापित $type';
  }

  @override
  String get extensionsDescription =>
      'अतिरिक्त कार्यक्षमता के लिए एक्सटेंशन इंस्टॉल और प्रबंधित करें';

  @override
  String get addAnimeRepo => 'एनीमि रेपो';

  @override
  String get addAnimeRepoDesc => 'विभिन्न स्रोतों से एनीम रेपो जोड़ें';

  @override
  String get addMangaRepo => 'मंगा रेपो';

  @override
  String get addMangaRepoDesc => 'मंगा जोड़ें विभिन्न स्रोतों से रेपो';

  @override
  String get addNovelRepo => 'नोवेल रेपो';

  @override
  String get addNovelRepoDesc => 'विभिन्न स्रोतों से नोवेल रेपो जोड़ें';

  @override
  String get loadExtensionsIcon => 'लोड एक्सटेंशन आइकन';

  @override
  String get loadExtensionsIconDesc => 'यदि एक्सटेंशन पृष्ठ अंतराल';

  @override
  String get autoUpdate => 'ऑटो अपडेट';

  @override
  String get autoUpdateDesc => 'ऑटो अपडेट एक्सटेंशन';

  @override
  String get installSourceToStart =>
      'एक्सटेंशन पेज से शुरू करने के लिए एक स्रोत स्थापित करें';

  @override
  String get author => 'लेखक';

  @override
  String get averageDuration => 'औसत अवधि';

  @override
  String get characters => 'चरित्र';

  @override
  String get description => 'सार';

  @override
  String get synopsis => 'सार';

  @override
  String get endDate => 'समाप्ति तिथि';

  @override
  String get format => 'स्वरूप';

  @override
  String get meanScore => 'औसत स्कोर';

  @override
  String get name => 'नाम';

  @override
  String get nameRomaji => 'नाम रोमाजी';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get relations => 'संबंध';

  @override
  String get prequel => 'पूर्वकथा';

  @override
  String get sequel => 'उत्तरकथा';

  @override
  String get source => 'स्रोत';

  @override
  String get staff => 'कर्मचारी';

  @override
  String get startDate => 'आरंभ तिथि';

  @override
  String get status => 'स्थिति';

  @override
  String get studio => 'स्टूडियो';

  @override
  String get synonyms => 'समानार्थी शब्द';

  @override
  String get tags => 'टैग';

  @override
  String get total => 'कुल';

  @override
  String get collapseText => 'पाठ को संकुचित करें';

  @override
  String get expandText => 'पाठ का विस्तार करें';

  @override
  String get comingSoon => 'जल्द आ रहा है';

  @override
  String get wrongTitle => 'ग़लत शीर्षक?';

  @override
  String get youTube => 'YouTube पर खेलते हैं?';

  @override
  String get mediaNotFound => 'मीडिया नहीं मिला';

  @override
  String get noChapterFound => 'कोई अध्याय नहीं मिला';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'गतिविधि',
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
      'अपने एनीलिस्ट, मायएनिमेलिस्ट और डिस्कॉर्ड खातों का आसानी से प्रबंधन करें';

  @override
  String get common => 'सामान्य';

  @override
  String get commonDescription => 'एप्लिकेशन के सामान्य सेटिंग्स तक पहुँचें';

  @override
  String get animeDescription =>
      'अपने एनीमे प्राथमिकताओं को व्यक्तिगत रूप से प्रबंधित करें';

  @override
  String get mangaDescription =>
      'अपने मंगा अनुभव को व्यवस्थित और अनुकूलित करें';

  @override
  String get about => 'के बारे में';

  @override
  String get aboutDescription => 'ऐप और इसके निर्माताओं के बारे में अधिक जानें';

  @override
  String get notifications => 'सूचनाएँ';

  @override
  String get notificationsDescription =>
      'आपको सूचनाएँ कब और कैसे प्राप्त होंगी, यह सेट करें';

  @override
  String get offlineMode => 'ऑफ़लाइन मोड';

  @override
  String get offlineModeDescription =>
      'इंटरनेट कनेक्शन के बिना ऐप का उपयोग करें';

  @override
  String get incognitoMode => 'गुप्त मोड';

  @override
  String get incognitoModeDescription => 'अपनी गतिविधि सहेजे बिना ब्राउज़ करें';

  @override
  String get hidePrivate => 'निजी छिपाएं';

  @override
  String get hidePrivateDescription => 'मुखपृष्ठ से निजी श्रृंखलाएँ छुपाएँ।';

  @override
  String get hiddenMedia => 'छिपी हुई मीडिया';

  @override
  String get noHiddenMediaFound => 'कोई छिपी हुई मीडिया नहीं मिली';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिंग्स';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'गति';

  @override
  String get speedDescription => 'प्लेयर के लिए डिफ़ॉल्ट गति';

  @override
  String get cursedSpeed => 'श्रापित गति';

  @override
  String get cursedSpeedDescription =>
      'उन लोगों के लिए जो जीवन में बहुत व्यस्त हैं';

  @override
  String get resizeMode => 'आकार बदलें मोड';

  @override
  String get resizeModeDescription => 'प्लेयर के लिए डिफ़ॉल्ट आकार बदलें मोड';

  @override
  String get skipButton => 'स्किप बटन';

  @override
  String get skipButtonDescription => 'स्किप बटन की अवधि';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'उपशीर्षक';

  @override
  String get showSubtitles => 'उपशीर्षक दिखाएं';

  @override
  String get showSubtitlesDescription => 'डिफ़ॉल्ट रूप से उपशीर्षक दिखाएं';

  @override
  String get subtitlePreview => 'उपशीर्षक पूर्वावलोकन';

  @override
  String get fontColor => 'फ़ॉन्ट का रंग';

  @override
  String get fontColorDescription => 'उपशीर्षक का फ़ॉन्ट रंग';

  @override
  String get fontFamily => 'फ़ॉन्ट परिवार';

  @override
  String get fontFamilyDescription => 'उपशीर्षक का फ़ॉन्ट परिवार';

  @override
  String get fontSize => 'फ़ॉन्ट आकार';

  @override
  String get fontSizeDescription => 'उपशीर्षक का फ़ॉन्ट आकार';

  @override
  String get fontWeight => 'फ़ॉन्ट का वजन';

  @override
  String get fontWeightDescription => 'उपशीर्षक का फ़ॉन्ट वजन';

  @override
  String get backgroundColor => 'पृष्ठभूमि रंग';

  @override
  String get backgroundColorDescription => 'उपशीर्षक पृष्ठभूमि का रंग';

  @override
  String get outlineColor => 'रेखा रंग';

  @override
  String get outlineColorDescription => 'उपशीर्षक रेखा का रंग';

  @override
  String get bottomPadding => 'नीचे की गद्दी';

  @override
  String get bottomPaddingDescription => 'उपशीर्षक के नीचे की गद्दी';

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
  String get themeDescription =>
      'अपने ऐप की उपस्थिति और अहसास को कस्टमाइज़ करें';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get enableDarkMode => 'डार्क मोड सक्षम करें';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'अपनी वॉलपेपर के समान रंग का उपयोग करें';

  @override
  String get customTheme => 'कस्टम थीम';

  @override
  String get customThemeDescription => 'थीम के लिए अपना खुद का रंग उपयोग करें';

  @override
  String get oledThemeVariant => 'OLED थीम विकल्प';

  @override
  String get oledThemeVariantDescription => 'OLED मोड सक्षम करें';

  @override
  String get colorPicker => 'रंग चयनकर्ता';

  @override
  String get pickColor => 'रंग चुनें';

  @override
  String get colorPickerDescription => 'एक रंग चुनें';

  @override
  String get colorPickerDefault => 'डिफ़ॉल्ट';

  @override
  String get colorPickerCustom => 'कस्टम';

  @override
  String get customPath => 'कस्टम पथ';

  @override
  String get customPathDescription =>
      'फ़ाइलों को बचाने के लिए एक कस्टम पथ सेट करें\nहटाने के लिए लंबी प्रेस';

  @override
  String get selectDirectory => 'निर्देशिका चुनें';

  @override
  String get selectMediaService => 'मीडिया सर्विस';

  @override
  String get logFile => 'लॉग इन करें';

  @override
  String get logFileDescription => 'लॉग फ़ाइल साझा करें';

  @override
  String get restoreSettings => 'सेटिंग्स पुनर्स्थापित करें';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'वेब देखें';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'डार्टोट्सु के मेन्टेनर का समर्थन करना चाहते हैं?\nदान करने पर विचार करें';

  @override
  String get donationGoal => 'वर्तमान में कोई दान लक्ष्य नहीं है';

  @override
  String get options => 'विकल्प';

  @override
  String get ok => 'ठीक है';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get yes => 'हां';

  @override
  String get no => 'नहीं';
}
