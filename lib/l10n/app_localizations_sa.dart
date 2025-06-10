// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'नवीनतमं श्रेष्ठं अनुप्रयोग\nचित्रकथानां च अनुवर्तनाय';

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
  String get login => 'प्रवेशनम्';

  @override
  String loginTo(String service) {
    return 'प्रवेशयतु $service';
  }

  @override
  String logout(String type) {
    return 'निर्गमनम् $type';
  }

  @override
  String get confirmLogout =>
      'क्या त्वं निश्चितमस्ति यः त्वं निर्गमयितुम् इच्छसि?';

  @override
  String get anime => 'एनीमे';

  @override
  String get manga => 'मंगा';

  @override
  String get manhwa => 'मन्ह्वा';

  @override
  String get manhua => 'मन्हुआ';

  @override
  String get novel => 'उपन्यास';

  @override
  String get ln => 'लघुनोवेल';

  @override
  String get home => 'गृह';

  @override
  String get search => 'अन्वेषण';

  @override
  String get calendar => 'पटलिका';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get watch => 'पश्य';

  @override
  String get read => 'पठ';

  @override
  String get info => 'सूचना';

  @override
  String get comments => 'टिप्पण्यः';

  @override
  String get addToList => 'सूच्यां सम्मिलय';

  @override
  String get series => 'श्रृंखला';

  @override
  String get season => 'ऋतुः';

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
      other: 'अध्याय',
      one: 'अध्याय',
    );
    return '$_temp0';
  }

  @override
  String volume(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'पुट',
      one: 'पुट',
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
  String get totalEpisodes => 'कुलएपिसोडः';

  @override
  String get totalChapters => 'कुलअध्यक्षाः';

  @override
  String get genres => 'वर्गाः';

  @override
  String get scanlators => 'पठ्यकाः';

  @override
  String list(String type) {
    return '$type सूची';
  }

  @override
  String get watching => 'पश्यन्';

  @override
  String get reading => 'पठन्';

  @override
  String get readStatus => 'पठ';

  @override
  String get watchStatus => 'दृष्टम्';

  @override
  String planned(String type) {
    return 'योजनाया $type';
  }

  @override
  String onHold(String type) {
    return 'निरोधितम् $type';
  }

  @override
  String get droppedAnime => 'निष्कासितं एनीमे';

  @override
  String get droppedManga => 'निष्कासितं मंगा';

  @override
  String noDropped(String type) {
    return 'भवता अद्यापि कोऽपि $type न पातितः।';
  }

  @override
  String get continueReading => 'पठनं यथावत् जारीकुरु';

  @override
  String get continueWatching => 'दर्शनं यथावत् जारीकुरु';

  @override
  String browse(String type) {
    return 'अन्वेष $type';
  }

  @override
  String trending(String type) {
    return 'प्रवृत्तिम् $type';
  }

  @override
  String popular(String type) {
    return 'लोकप्रिय $type';
  }

  @override
  String get topAiring => 'श्रेष्ठवायुक्रमेण';

  @override
  String topRated(String type) {
    return 'श्रेष्ठमूल्याङ्कनम् $type';
  }

  @override
  String mostFavourite(String type) {
    return 'अत्यन्तप्रियतम् $type';
  }

  @override
  String get thisSeason => 'अद्यतकालीनऋतु';

  @override
  String get nextSeason => 'अनन्तरऋतु';

  @override
  String get previousSeason => 'पूर्वऋतु';

  @override
  String get recommended => 'सिफ़ारिशितम्';

  @override
  String get recommendationsEmptyMessage => 'कोणपि सिफ़ारिशा न अस्ति';

  @override
  String get recentUpdates => 'नवीनतम् अद्यतनीकरणम्';

  @override
  String get allCaughtUpNew => 'सर्वे गृहीताः, किं नवीनम्?';

  @override
  String favorite(String type) {
    return 'प्रिय $type';
  }

  @override
  String get favorites => 'प्रियाणि';

  @override
  String get noFavourites =>
      'भवतः किमपि न रोचते इव दृश्यते,\nअत्र स्थापयितुं कञ्चन शो इत्येतत् पसन्दं कर्तुं प्रयतध्वम्।';

  @override
  String get noOnHold => 'इदं दृश्यते यत् भवता किमपि स्थगितम् नास्ति।';

  @override
  String manageLayout(String service, String page) {
    return '$page पृष्ठस्य विन्यासः $service कृते प्रबन्धयन्तु';
  }

  @override
  String manageLayoutDescription(String page) {
    return 'भवान् $page पृष्ठस्य विन्यासं द्रव्यं कर्षयित्वा पातयित्वा च प्रबन्धयितुं शक्नोति';
  }

  @override
  String get gridView => 'विस्तृतदृष्टिः';

  @override
  String get listView => 'सूचीदृष्टिः';

  @override
  String get compactView => 'संक्षिप्तदृष्टिः';

  @override
  String get layout => 'रूपरेखा';

  @override
  String get sort => 'क्रमबद्धय';

  @override
  String get utd => 'नवनीकृतम्';

  @override
  String get dtu => 'अवतारितम्';

  @override
  String get direction => 'Direction';

  @override
  String get episodeWatched => 'एपिसोडदर्शनम्';

  @override
  String get chapterRead => 'अध्यायपठनम्';

  @override
  String get outOf => 'मध्ये';

  @override
  String get totalOf => 'सर्वे मिलित्वा';

  @override
  String get selected => 'चयनितम्';

  @override
  String get found => 'लब्धम्';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तारणानि',
      one: 'विस्तारणम्',
    );
    return '$_temp0';
  }

  @override
  String available(String type) {
    return 'उपलब्धम् $type';
  }

  @override
  String installed(String type) {
    return 'स्थापितम् $type';
  }

  @override
  String get extensionsDescription =>
      'अधिकं कार्यक्षमतां दातुं विस्ताराः स्थापय';

  @override
  String get addAnimeRepo => 'एनिमे रेपो योजयतु';

  @override
  String get addAnimeRepoDesc => 'विभिन्नस्रोताभ्यां एनिमे रेपो योजयन्तु';

  @override
  String get addMangaRepo => 'मंगा रेपो योजयतु';

  @override
  String get addMangaRepoDesc => 'विभिन्नस्रोताभ्यां मंगा रेपो योजयन्तु';

  @override
  String get addNovelRepo => 'उपन्यास रेपो योजयतु';

  @override
  String get addNovelRepoDesc => 'विभिन्नस्रोताभ्यां उपन्यास रेपो योजयन्तु';

  @override
  String get loadExtensionsIcon => 'विस्तारणचिह्नं संस्थापय';

  @override
  String get loadExtensionsIconDesc =>
      'यदि विस्तारणपृष्ठं विलम्बते तर्हि निष्क्रियं कुरु';

  @override
  String get autoUpdate => 'स्वयमेव अद्यतनं';

  @override
  String get autoUpdateDesc => 'स्वयमेव विस्तारणानां अद्यतनं';

  @override
  String get installSourceToStart =>
      'प्रारम्भाय विस्तारणपृष्ठात् स्रोतं स्थापय';

  @override
  String get author => 'लेखकः';

  @override
  String get averageDuration => 'औसतकालः';

  @override
  String get characters => 'पात्राणि';

  @override
  String get description => 'विवरणम्';

  @override
  String get synopsis => 'सार';

  @override
  String get endDate => 'समाप्तेः दिनाङ्कः';

  @override
  String get format => 'स्वरूप';

  @override
  String get meanScore => 'औसतांकः';

  @override
  String get name => 'नाम';

  @override
  String get nameRomaji => 'नाम रोमाजी';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get relations => 'संबन्धाः';

  @override
  String get prequel => 'पूर्वकथा';

  @override
  String get sequel => 'उत्तरकथा';

  @override
  String get source => 'स्रोतः';

  @override
  String get staff => 'कर्मचारीः';

  @override
  String get startDate => 'आरंभतिथि';

  @override
  String get status => 'स्थिति';

  @override
  String get studio => 'स्टूडियो';

  @override
  String get synonyms => 'समानार्थकशब्दाः';

  @override
  String get tags => 'टैग्स';

  @override
  String get total => 'कूल';

  @override
  String get collapseText => 'पाठं संकुचय';

  @override
  String get expandText => 'पाठं विस्तारित करें';

  @override
  String get comingSoon => 'शिघ्रं आगच्छति';

  @override
  String get wrongTitle => 'असत्यम् शीर्षकम्?';

  @override
  String get youTube => 'YouTube मध्ये चालय?';

  @override
  String get mediaNotFound => 'माध्यमं न प्राप्तम्';

  @override
  String get noChapterFound => 'अध्यायः न प्राप्तः';

  @override
  String activity(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'क्रिया',
      one: 'क्रिया',
    );
    return '$_temp0';
  }

  @override
  String get language => 'भाषा';

  @override
  String get account => 'खाता';

  @override
  String get accountDescription =>
      'तव आनिलिस्ट, मायआनिमेलिस्ट च डिस्कोर्ड खातानि सहजतया प्रबन्धय';

  @override
  String get common => 'साधारण';

  @override
  String get commonDescription => 'समान्यं सेटिङ्ग् परिगच्छ';

  @override
  String get animeDescription => 'तव एनीमे प्रियतानि व्यक्तिगतं प्रबन्धय';

  @override
  String get mangaDescription => 'तव मंगा अनुभवः व्यवस्थितं अनुकूलय';

  @override
  String get about => 'विषये';

  @override
  String get aboutDescription => 'एप्लिकेशनस्य च निर्मातृणां विषये अधिकं जानहि';

  @override
  String get notifications => 'सूचनाएँ';

  @override
  String get notificationsDescription =>
      'कथमपि कदा च सूचनाएँ प्राप्तुं ताः व्यवस्थितय';

  @override
  String get offlineMode => 'निर्बन्धजालवृत्ति';

  @override
  String get offlineModeDescription => 'जालबन्धनं विना अनुप्रयोगं उपयोगयतु';

  @override
  String get incognitoMode => 'अज्ञातवृत्ति';

  @override
  String get incognitoModeDescription => 'क्रियाया संचिकां विना विचिनुत';

  @override
  String get hidePrivate => 'गोपनीयं गुह्यं छादयतु';

  @override
  String get hidePrivateDescription => 'गृहपृष्ठे गोप्यश्रृंखलाः लुप्यन्ताम्।';

  @override
  String get hiddenMedia => 'गुप्तमाध्यमम्';

  @override
  String get noHiddenMediaFound => 'गुप्तमाध्यमं न लभते';

  @override
  String get playerSettingsTitle => 'क्रीडक संयोजनानि';

  @override
  String get playerSettingsDesc => 'Change player settings';

  @override
  String get speed => 'वेग';

  @override
  String get speedDescription => 'क्रीडकस्य स्वाभाविक वेग';

  @override
  String get cursedSpeed => 'शापितं वेग';

  @override
  String get cursedSpeedDescription =>
      'ये जना जीवनस्य कार्येण अतीव व्यस्ता तेषां कृते';

  @override
  String get resizeMode => 'आकारपरिवर्तनवृत्ति';

  @override
  String get resizeModeDescription => 'क्रीडकस्य स्वाभाविक आकारपरिवर्तनवृत्ति';

  @override
  String get skipButton => 'उपेक्षा बटनम्';

  @override
  String get skipButtonDescription => 'उपेक्षा बटनस्य कालावधि';

  @override
  String get thumbLessSeekBar => 'ThumbLess SeekBar';

  @override
  String get thumbLessSeekBarDesc => 'Remove thumb from the seek bar';

  @override
  String get subtitles => 'उपशीर्षकानि';

  @override
  String get showSubtitles => 'उपशीर्षकं प्रदर्शयतु';

  @override
  String get showSubtitlesDescription => 'स्वाभाविकत उपशीर्षकं प्रदर्शयतु';

  @override
  String get subtitlePreview => 'उपशीर्षकदर्शनम्';

  @override
  String get fontColor => 'अक्षरवर्ण';

  @override
  String get fontColorDescription => 'उपशीर्षकस्य अक्षरवर्ण';

  @override
  String get fontFamily => 'अक्षरकुल';

  @override
  String get fontFamilyDescription => 'उपशीर्षकस्य अक्षरकुल';

  @override
  String get fontSize => 'अक्षरमाप';

  @override
  String get fontSizeDescription => 'उपशीर्षकस्य अक्षरमाप';

  @override
  String get fontWeight => 'अक्षरभार';

  @override
  String get fontWeightDescription => 'उपशीर्षकस्य अक्षरभार';

  @override
  String get backgroundColor => 'पृष्ठभूमि वर्ण';

  @override
  String get backgroundColorDescription => 'उपशीर्षकस्य पृष्ठभूमि वर्ण';

  @override
  String get outlineColor => 'रेखावर्ण';

  @override
  String get outlineColorDescription => 'उपशीर्षकस्य रेखावर्ण';

  @override
  String get bottomPadding => 'अध प्रावरणम्';

  @override
  String get bottomPaddingDescription => 'उपशीर्षकस्य अध प्रावरणम्';

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
  String get theme => 'विषय';

  @override
  String get themeDescription =>
      'तस्य अनुप्रयोगस्य रूपरचनां च वातावरणं अनुकूलय';

  @override
  String get darkMode => 'अंधकारविधानम्';

  @override
  String get enableDarkMode => 'अंधकारविधानं सक्रियय';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDescription => 'तव दीवारचित्रे यथा रङ्गं प्रयोजय';

  @override
  String get customTheme => 'स्वविषय';

  @override
  String get customThemeDescription => 'तव रङ्गं विषयाय प्रयोजय';

  @override
  String get oledThemeVariant => 'ओएलईडीविषय रूप';

  @override
  String get oledThemeVariantDescription => 'ओएलईडी मोडं सक्षमय';

  @override
  String get colorPicker => 'रङ्गनिर्वाचकः';

  @override
  String get pickColor => 'रंगं चयनय';

  @override
  String get colorPickerDescription => 'रङ्गं चयनय';

  @override
  String get colorPickerDefault => 'पूर्वनिर्धारितम्';

  @override
  String get colorPickerCustom => 'स्वनिर्मितम्';

  @override
  String get customPath => 'कस्टम पथ';

  @override
  String get customPathDescription =>
      'सञ्चिकाः रक्षितुं इष्टमार्गं सेट् कुर्वन्तु\nदूरीकर्तुं दीर्घकालं यावत् दबावन्तु';

  @override
  String get selectDirectory => 'एकं निर्देशिकां चिनोतु';

  @override
  String get selectMediaService => 'मीडिया सेवां चिनोतु';

  @override
  String get logFile => 'अभिलेखसञ्चिका';

  @override
  String get logFileDescription => 'लॉग् सञ्चिकां साझां कुर्वन्तु';

  @override
  String get restoreSettings => 'संयोजनानां पुनःस्थापनम्';

  @override
  String get differentCacheManager => 'Different Cache Manager';

  @override
  String get differentCacheManagerDesc => 'Use different Image cache manager';

  @override
  String get webView => 'जालदर्शनम्';

  @override
  String get developersHelpers => 'Developers/Helpers';

  @override
  String get developersHelpersDesc => 'Dartotsu\'s unpaid labours';

  @override
  String get supportMaintainer =>
      'डारटोत्सु व्यवस्थापकं सहायतुं इच्छसि?\nदानं समर्पय';

  @override
  String get donationGoal => 'वर्तमानं दानलक्ष्यं नास्ति';

  @override
  String get options => 'विकल्पाः';

  @override
  String get ok => 'सर्वं';

  @override
  String get cancel => 'निष्कासय';

  @override
  String get yes => 'आम्';

  @override
  String get no => 'न';
}
