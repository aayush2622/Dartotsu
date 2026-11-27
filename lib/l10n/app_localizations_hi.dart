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
  String get appTagline => 'एनीमे और मंगा ट्रैक करने का\nनया बेस्ट ऐप';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get trakt => 'Trakt';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get comick => 'Comick';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'और लोड करो';

  @override
  String get login => 'लॉगिन';

  @override
  String get continueAsGuest => 'गेस्ट बनकर आगे बढ़ो';

  @override
  String get getStarted => 'शुरू करो';

  @override
  String get loginWithToken => 'टोकन से लॉगिन';

  @override
  String get pasteTokenHint => 'अपना एक्सेस टोकन पेस्ट करो';

  @override
  String loginTo(String service) {
    return '$service में लॉगिन करो';
  }

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get account => 'अकाउंट';

  @override
  String get about => 'ऐप के बारे में';

  @override
  String get language => 'भाषा';

  @override
  String get animationSpeed => 'एनिमेशन';

  @override
  String get animationSpeedDesc =>
      'पूरे ऐप में ट्रांज़िशन और एंट्री इफ़ेक्ट की स्पीड';

  @override
  String get animationSpeedOff => 'बंद';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एक्सटेंशन',
      one: 'एक्सटेंशन',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'अनजान सोर्स';

  @override
  String get install => 'इंस्टॉल करो';

  @override
  String get update => 'अपडेट करो';

  @override
  String get uninstall => 'अनइंस्टॉल करो';

  @override
  String get updateInstallCancelled =>
      'इंस्टॉल रद्द हो गया। अगर Android ने कहा कि ऐप इंस्टॉल वाले से टकरा रहा है, तो सिग्नेचर अलग है: पहले मौजूदा वर्ज़न अनइंस्टॉल करो, फिर अपडेट इंस्टॉल करो';

  @override
  String updateInstallFailed(String error) {
    return 'अपडेट नहीं हो पाया: $error';
  }

  @override
  String get appLock => 'ऐप लॉक';

  @override
  String get appLockDesc =>
      'ऐप खुलने पर या कुछ देर बाद वापस आने पर पासकोड माँगे';

  @override
  String get appLockBiometric => 'बायोमेट्रिक्स से अनलॉक करें';

  @override
  String get appLockBiometricDesc =>
      'पासकोड टाइप करने के बजाय अपने फिंगरप्रिंट या चेहरे का उपयोग करें';

  @override
  String get appLockBiometricReason => 'डार्टोत्सु को अनलॉक करें';

  @override
  String get appLockDelay => 'निष्क्रिय होने पर लॉक करें';

  @override
  String get appLockDelayAlways => 'हमेशा';

  @override
  String get appLockDelayNever => 'कभी नहीं';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनट',
      one: '1 मिनट',
    );
    return 'बाद $_temp0';
  }

  @override
  String get appLockUseBiometric => 'बायोमेट्रिक्स का प्रयोग करें';

  @override
  String get appLockUnlock => 'अपना पासकोड डालो';

  @override
  String get appLockWrong => 'पासकोड गलत है';

  @override
  String appLockWait(String seconds) {
    return 'बहुत बार कोशिश हो गई, $seconds सेकंड रुको';
  }

  @override
  String get appLockNew => 'पासकोड चुनो';

  @override
  String get appLockNewHint => '4 से 8 अंक';

  @override
  String get appLockConfirm => 'फिर से डालो';

  @override
  String get appLockMismatch => 'पासकोड मेल नहीं खाते';

  @override
  String get appLockOn => 'पासकोड सेट हो गया';

  @override
  String get appLockRemoveTitle => 'लॉक बंद करने के लिए अपना पासकोड डालो';

  @override
  String get installFailed => 'इंस्टॉल नहीं हो पाया';

  @override
  String get updateFailed => 'अपडेट नहीं हो पाया';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अपडेट उपलब्ध हैं',
      one: '1 अद्यतन उपलब्ध है',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'सभी को अपडेट करें';

  @override
  String extensionsUpdated(int done, int total) {
    return '$total एक्सटेंशन में से $done अपडेट किया गया';
  }

  @override
  String get updateConflictTitle => 'अद्यतन स्थापित नहीं है';

  @override
  String updateConflictBody(String names) {
    return '$names को मौजूदा संस्करण पर स्थापित नहीं किया जा सका। इसका आमतौर पर मतलब है कि स्थापित प्रति पर अलग तरीके से हस्ताक्षर किए गए थे। इसे अनइंस्टॉल करें और नया संस्करण इंस्टॉल करें?';
  }

  @override
  String get updateConflictAction => 'अनइंस्टॉल करें और पुनः इंस्टॉल करें';

  @override
  String get noSourceSettings => 'इस सोर्स में कोई सेटिंग नहीं है';

  @override
  String get addPluginRepository => 'प्लगइन रिपॉज़िटरी जोड़ो';

  @override
  String get pluginIndexUrlHint => 'प्लगइन इंडेक्स URL';

  @override
  String get addRepository => 'रिपॉज़िटरी जोड़ो';

  @override
  String get importRepositoryFile => 'एक फ़ाइल आयात करें';

  @override
  String get pluginRepoUpdated => 'प्लगइन रिपॉज़िटरी अपडेट हो गई';

  @override
  String get pluginRepoUpdateFailed => 'प्लगइन रिपॉज़िटरी रीफ़्रेश नहीं हो पाई';

  @override
  String get ok => 'ठीक है';

  @override
  String get cancel => 'कैंसल';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'नहीं';

  @override
  String get save => 'सेव करो';

  @override
  String get reset => 'रीसेट';

  @override
  String get clear => 'क्लियर करो';

  @override
  String get test => 'टेस्ट';

  @override
  String get testing => 'टेस्ट हो रहा है…';

  @override
  String get resolving => 'रिज़ॉल्व हो रहा है…';

  @override
  String get none => 'कुछ नहीं';

  @override
  String get selectMediaService => 'मीडिया सर्विस चुनो';

  @override
  String get manageServices => 'मीडिया सेवाएँ';

  @override
  String get manageServicesDesc =>
      'सेवाओं को पुनः व्यवस्थित करें और चुनें कि पिकर में कौन सी सेवाएँ दिखाई दें';

  @override
  String get manageServicesHint =>
      'पुन: व्यवस्थित करने के लिए खींचें, जिनका आप उपयोग नहीं करते उन्हें बंद कर दें';

  @override
  String get pickColor => 'कोई रंग चुनो';

  @override
  String get colorPickerCustom => 'कस्टम';

  @override
  String get colorPickerTransparent => 'ट्रांसपेरेंट';

  @override
  String get ltr => 'बाएँ से दाएँ';

  @override
  String get searchSettings => 'सेटिंग्स में खोजो';

  @override
  String nothingMatches(String query) {
    return '\"$query\" से कुछ मैच नहीं हुआ';
  }

  @override
  String searchCategory(String category) {
    return '$category में खोजो';
  }

  @override
  String get settingsAppearance => 'दिखावट';

  @override
  String get settingsAppearanceDesc => 'थीम, रंग, ग्लास मोड';

  @override
  String get settingsGeneral => 'जनरल';

  @override
  String get settingsGeneralDesc => 'भाषा और बर्ताव';

  @override
  String get settingsNetwork => 'नेटवर्क';

  @override
  String get settingsNetworkDesc => 'User agent, certificates, DNS and proxy';

  @override
  String get settingsAccountDesc => 'ट्रैकिंग सर्विस और साइन-इन';

  @override
  String get settingsUpdates => 'अपडेट';

  @override
  String get amoledBlack => 'AMOLED ब्लैक';

  @override
  String get amoledBlackDesc => 'डार्क मोड में पूरा काला बैकग्राउंड';

  @override
  String get glassMode => 'ग्लास मोड';

  @override
  String get glassModeDesc => 'तुम्हारी लाइब्रेरी के आर्ट पर धुंधली सतहें';

  @override
  String get shelfFrame => 'सेक्शन के चारों तरफ़ फ़्रेम';

  @override
  String get shelfFrameDesc =>
      'हर शेल्फ़ के पीछे कार्ड दिखाओ, या रो को सीधे पेज पर रहने दो';

  @override
  String get settingsExtensionsDesc =>
      'सोर्स मैनेजर, रिपॉज़िटरी और एक्सटेंशन के ऑप्शन';

  @override
  String get settingsAddons => 'ऐडऑन';

  @override
  String get customPath => 'कस्टम स्टोरेज पाथ';

  @override
  String get stories => 'कहानियां';

  @override
  String get watchOrder => 'आदेश देखें';

  @override
  String get watchOrderOpenSite => 'Chiiki.site पर खोलें';

  @override
  String get watchOrderUnavailable =>
      'इस शीर्षक के लिए कोई घड़ी का ऑर्डर नहीं मिला';

  @override
  String get watchOrderOpenFailed => 'वह शीर्षक नहीं खुल सका';

  @override
  String get watchOrderCurrent => 'आप यहाँ हैं';

  @override
  String get watchOrderCredit => 'Chiiki.site द्वारा ऑर्डर देखें';

  @override
  String get customPathDesc =>
      'ऐप का डेटा कहाँ रखा जाए। रीसेट करने के लिए देर तक दबाओ';

  @override
  String get selectDirectory => 'फ़ोल्डर चुनो';

  @override
  String get differentCacheManager => 'वैकल्पिक इमेज कैश';

  @override
  String get differentCacheManagerDesc =>
      'इमेज के लिए दूसरा कैश मैनेजर इस्तेमाल करो';

  @override
  String get settingsSync => 'सेटिंग्स सिंक करें';

  @override
  String get settingsSyncDesc =>
      'प्रत्येक डिवाइस पर अपनी सेटिंग्स समान रखें। वे आपके GitHub खाते में एक निजी सार में संग्रहीत हैं';

  @override
  String get settingsSyncSwitch => 'परिवर्तन पर सिंक करें';

  @override
  String get settingsSyncModeGithub => 'गिटहब';

  @override
  String get settingsSyncSignIn => 'GitHub के साथ साइन इन करें';

  @override
  String get settingsSyncSignInDesc =>
      'सेटिंग्स आपके खाते में एक निजी सार में संग्रहीत की जाती हैं';

  @override
  String get settingsSyncToken => 'व्यक्तिगत एक्सेस टोकन का उपयोग करें';

  @override
  String get settingsSyncTokenDesc =>
      'केवल सार अनुमति के साथ github.com/settings/tokens पर एक बनाएं';

  @override
  String get settingsSyncTokenField => 'टोकन';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user के रूप में साइन इन किया गया';
  }

  @override
  String get settingsSyncSignOut => 'साइन आउट करें';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub पर $code दर्ज करें';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel।';

  @override
  String get settingsSyncSignInFailed => 'GitHub में साइन इन नहीं किया जा सका';

  @override
  String get dcPreview => 'पूर्वावलोकन';

  @override
  String get dcSampleWatching => 'देख रहा हूँ';

  @override
  String get dcSampleReading => 'पढ़ना';

  @override
  String get dcSampleBrowsing => 'ब्राउजिंग';

  @override
  String get dcSampleLive => 'अभी';

  @override
  String get dcLiveNothing =>
      'Nothing is showing right now. Open a title, start an episode or a chapter and it appears here।';

  @override
  String get dcMemberList => 'सदस्य सूची में';

  @override
  String get dcAccount => 'खाता';

  @override
  String get dcSignIn => 'डिस्कोर्ड के साथ साइन इन करें';

  @override
  String get dcSignOut => 'साइन आउट करें';

  @override
  String get dcDesktopHint =>
      'Without connecting, Discord shows “Watching Dartotsu” through the desktop app. Connect Discord to name the activity after your title, including on mobile।';

  @override
  String get dcMobileHint =>
      'Connect Discord to show what you are watching or reading. It uses Discord’s authorize page, not your account token।';

  @override
  String get dcConnect => 'कलह कनेक्ट करें';

  @override
  String get dcConnectDesc =>
      'Opens Discord’s authorize page and adds Dartotsu under Authorized Apps. Discord asks to update your presence. Only a refresh token is saved, not your account token।';

  @override
  String get dcConnectFailed => 'डिस्कॉर्ड को कनेक्ट नहीं किया जा सका';

  @override
  String get dcConnectedSnack => 'कलह जुड़ा';

  @override
  String get dcDisconnect => 'डिस्कनेक्ट करें';

  @override
  String get dcDisconnectedSnack => 'कलह विच्छेद';

  @override
  String get dcUseToken => 'इसके बजाय टोकन का उपयोग करें';

  @override
  String get dcRouteDesktop => 'डिस्कॉर्ड डेस्कटॉप ऐप के माध्यम से';

  @override
  String get dcRouteHeadless => 'आपके खाते के माध्यम से';

  @override
  String get dcRouteGateway => 'अपने खाते के माध्यम से, जियो';

  @override
  String get dcRouteLinked => 'कनेक्टेड ऐप';

  @override
  String get dcRouteNone => 'जुड़ा नहीं';

  @override
  String get dcStatusNeedsToken =>
      'Needs a Discord token. Connecting the app does not set your online status।';

  @override
  String get dcAccountOnly => 'एक साइन-इन खाते की आवश्यकता है';

  @override
  String get dcStatusSection => 'स्थिति';

  @override
  String get dcControlStatus => 'मेरी स्थिति पर नियंत्रण रखें';

  @override
  String get dcControlStatusDesc =>
      'Keeps a live connection to Discord while Rich Presence is on, so Dartotsu can set your status।';

  @override
  String get dcStatusOnline => 'ऑनलाइन';

  @override
  String get dcStatusIdle => 'निष्क्रिय';

  @override
  String get dcStatusDnd => 'परेशान मत करो';

  @override
  String get dcStatusInvisible => 'अदृश्य';

  @override
  String get dcCustomStatus => 'कस्टम स्थिति';

  @override
  String get dcCustomStatusHint => 'आप क्या कर रहे हैं?';

  @override
  String get dcActivitySection => 'गतिविधि';

  @override
  String get dcShowWatching => 'देखते समय दिखाएँ';

  @override
  String get dcShowReading => 'पढ़ते समय दिखाएँ';

  @override
  String get dcListening => 'सुनना';

  @override
  String get dcCompeting => 'प्रतिस्पर्धा';

  @override
  String get dcActivityName => 'गतिविधि का नाम';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'शीर्षक';

  @override
  String get dcNameCustom => 'कस्टम';

  @override
  String get dcCustomNameHint => '\"देखना\" के बाद दिखाया गया नाम';

  @override
  String get dcStatusText => 'स्थिति पाठ';

  @override
  String get dcStatusTextDesc => 'सदस्य सूची आपके नाम के आगे क्या दर्शाती है';

  @override
  String get dcDisplayName => 'नाम';

  @override
  String get dcDisplayState => 'राज्य';

  @override
  String get dcDisplayDetails => 'विवरण';

  @override
  String get dcTextSection => 'पाठ';

  @override
  String get dcDetails => 'शीर्ष पंक्ति';

  @override
  String get dcState => 'निचली पंक्ति';

  @override
  String get dcTemplateHint => 'खाली डिफ़ॉल्ट का उपयोग करता है';

  @override
  String get dcVariables => 'मान सम्मिलित करने के लिए टैप करें';

  @override
  String get dcImagesSection => 'छवियाँ';

  @override
  String get dcLargeImage => 'बड़ी छवि';

  @override
  String get dcLargeAuto => 'ऑटो';

  @override
  String get dcLargeCover => 'आवरण';

  @override
  String get dcLargeLogo => 'लोगो';

  @override
  String get dcSmallImage => 'छोटी छवि';

  @override
  String get dcSmallAuto => 'लोगो';

  @override
  String get dcSmallNone => 'कोई नहीं';

  @override
  String get dcTimerStyle => 'टाइमर शैली';

  @override
  String get dcTimerAuto => 'ऑटो';

  @override
  String get dcTimerElapsed => 'बीत गया';

  @override
  String get dcTimerRemaining => 'शेष';

  @override
  String get dcButtonsSection => 'बटन';

  @override
  String get dcButtonMedia => 'शीर्षक से लिंक करें';

  @override
  String get dcButtonApp => 'डार्टोत्सु से लिंक करें';

  @override
  String get dcButtonCustom => 'कस्टम बटन';

  @override
  String get dcButtonLabel => 'लेबल';

  @override
  String get dcButtonUrl => 'लिंक';

  @override
  String get dcPrivacySection => 'गोपनीयता';

  @override
  String get dcPrivateText => 'निजी पाठ';

  @override
  String get dcPrivateHint => 'कुछ निजी';

  @override
  String get dcTokenWarning =>
      'Signing in uses your account token. Discord’s rules discourage this, so use it at your own risk।';

  @override
  String get dcConnected => 'जुड़ा हुआ';

  @override
  String get dcConnection => 'कनेक्शन';

  @override
  String get dcMethodDesktop => 'डिस्कॉर्ड डेस्कटॉप ऐप';

  @override
  String get dcMethodDesktopDesc =>
      'Used automatically when nothing else is connected. Discord has to be open on this computer।';

  @override
  String get dcMethodToken => 'खाता टोकन';

  @override
  String get dcInUse => 'प्रयोग में है';

  @override
  String get dcRecommended => 'अनुशंसित';

  @override
  String get dcConnecting => 'कनेक्ट हो रहा है...';

  @override
  String get dcDisconnected => 'जुड़ा नहीं';

  @override
  String dcSignedInAs(String name) {
    return '$name के रूप में साइन इन किया गया';
  }

  @override
  String get settingsSyncOn => 'पर';

  @override
  String get settingsSyncCustom => 'कस्टम';

  @override
  String get settingsSyncChangedHeader => 'बदली गई सेटिंग्स';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync।';

  @override
  String get settingsSyncChangedOnly =>
      'Only settings you have changed are stored. Everything else uses its default on every device. The cloud icon shows what is already on the server।';

  @override
  String get settingsSyncOffCategory =>
      'Not syncing. These stay on this device and the server copy is left as it is।';

  @override
  String get settingsSyncPartsNote =>
      'Per device. Off keeps each device\'s own value, so a phone and a TV can differ।';

  @override
  String get settingsSyncPartSubtitles => 'उपशीर्षक आकार और रंग';

  @override
  String get settingsSyncPartSubtitlesDesc => 'आकार, वजन, रंग और स्थिति';

  @override
  String get settingsSyncPartPictureColors => 'चित्र रंग';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'चमक, कंट्रास्ट, संतृप्ति, गामा, रंग और एचडीआर';

  @override
  String get settingsSyncPartPalette => 'थीम रंग';

  @override
  String get settingsSyncPartPaletteDesc => 'थीम, एक्सेंट रंग और OLED काला';

  @override
  String get settingsSyncCatOther => 'देखें, पढ़ें और सेवाएँ';

  @override
  String get settingsSyncTitles => 'प्रगति और शीर्षक देखें';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records शीर्षक और $resume सर्वर पर प्रविष्टियाँ फिर से शुरू करते हैं';
  }

  @override
  String get settingsSyncTitlesNone => 'अभी तक कुछ भी अपलोड नहीं किया गया';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, your local lists, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds।';

  @override
  String get settingsSyncConnect => 'जुड़ा नहीं';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device।';

  @override
  String get settingsSyncFailedTitle => 'समन्वयन विफल';

  @override
  String get settingsSyncPaused => 'रुका हुआ';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off।';

  @override
  String get settingsSyncUpToDate => 'अप टू डेट';

  @override
  String get settingsSyncRetry => 'पुनः प्रयास करें';

  @override
  String get settingsSyncAccount => 'गिटहब खाता';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account।';

  @override
  String get settingsSyncWaiting =>
      'GitHub पर आपके अनुमोदन की प्रतीक्षा की जा रही है';

  @override
  String get settingsSyncCopyCode => 'कोड को कॉपी करने के लिए उस पर टैप करें';

  @override
  String get settingsSyncCancel => 'रद्द करें';

  @override
  String get settingsSyncStatSettings => 'सेटिंग्स';

  @override
  String get settingsSyncStatTitles => 'शीर्षक';

  @override
  String get settingsSyncStatShelf => 'बायोडाटा';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$time को $device से अपलोड किया गया';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बदल गया',
      one: '1 बदल गया',
      zero: 'अभी तक कुछ नहीं बदला',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'खाते और पासवर्ड';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them।';

  @override
  String get settingsSyncSecretsOn => 'खाते समन्वयित और एन्क्रिप्टेड हैं';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others।';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts।';

  @override
  String get settingsSyncPassphraseSet => 'पासफ़्रेज़ सेट करें';

  @override
  String get settingsSyncPassphraseEnter => 'अपना पासफ़्रेज़ दर्ज करें';

  @override
  String get settingsSyncPassphraseField => 'पासफ़्रेज़';

  @override
  String get settingsSyncPassphraseConfirm => 'पासफ़्रेज़ दोहराएँ';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again।';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones।';

  @override
  String get settingsSyncPassphraseWrong => 'ग़लत पासफ़्रेज़';

  @override
  String get settingsSyncPassphraseMismatch => 'पासफ़्रेज़ मेल नहीं खाते';

  @override
  String get settingsSyncPassphraseShort => 'कम से कम 6 अक्षरों का प्रयोग करें';

  @override
  String get settingsSyncSecretsStop => 'खातों को समन्वयित करना बंद करें';

  @override
  String get settingsSyncSecretsDelete => 'GitHub से हटाएँ';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase।';

  @override
  String get settingsSyncWhat => 'क्या सिंक करना है';

  @override
  String get settingsSyncServer => 'सर्वर पर';

  @override
  String get settingsSyncServerEmpty => 'अभी तक कुछ भी अपलोड नहीं किया गया';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count सेटिंग्स, $time को $device से अपलोड किया गया';
  }

  @override
  String get settingsSyncThisDevice => 'यह उपकरण';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'सर्वर पर $count सेटिंग्स',
      one: 'सर्वर पर 1 सेटिंग',
      zero: 'सर्वर पर कुछ भी नहीं',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'अभी सिंक करें';

  @override
  String get settingsSyncRunning => 'सिंक हो रहा है...';

  @override
  String get settingsSyncNever => 'अभी तक सिंक नहीं हुआ';

  @override
  String settingsSyncLast(Object time) {
    return 'अंतिम बार समन्वयित $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'समन्वयन विफल: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device।';

  @override
  String get backupAndRestore => 'बैकअप और रिस्टोर';

  @override
  String get backupAndRestoreDesc => 'अपनी प्रेफ़रेंस सेव या लोड करो';

  @override
  String get backup => 'बैकअप';

  @override
  String get restore => 'रिस्टोर';

  @override
  String get loadExtensionsIcon => 'एक्सटेंशन के आइकन लोड करो';

  @override
  String get autoUpdateRuntimes =>
      'एक्सटेंशन रनटाइम को स्वचालित रूप से अपडेट करें';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead।';

  @override
  String get loadExtensionsIconDesc =>
      'एक्सटेंशन लिस्ट में सोर्स के आइकन दिखाओ';

  @override
  String get sectionStorage => 'स्टोरेज';

  @override
  String get sectionManagers => 'मैनेजर';

  @override
  String get sectionOptions => 'ऑप्शन';

  @override
  String get backupTabBackup => 'बैकअप लो';

  @override
  String get backupTabRestore => 'रिस्टोर करो';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories कैटेगरी में $keys सेटिंग्स';
  }

  @override
  String backupLastBackup(Object time) {
    return 'आख़िरी बैकअप $time';
  }

  @override
  String get backupNever => 'अभी तक कोई बैकअप नहीं';

  @override
  String get backupSelectAll => 'सब चुनो';

  @override
  String get backupClearAll => 'क्लियर करो';

  @override
  String backupKeys(Object count) {
    return '$count सेटिंग्स';
  }

  @override
  String get backupPasswordRequired => 'पासवर्ड (खाता डेटा के लिए आवश्यक)';

  @override
  String get backupProtectedNeedsPassword =>
      'खाता डेटा का बैकअप लेने या उसे अनचेक करने के लिए एक पासवर्ड सेट करें';

  @override
  String get backupProtectedSkipped =>
      'इस बैकअप में कोई पासवर्ड नहीं है, इसलिए इसका खाता डेटा छोड़ दिया गया था';

  @override
  String get backupPassword => 'पासवर्ड (ज़रूरी नहीं)';

  @override
  String get backupPasswordHint => 'डिफ़ॉल्ट के लिए खाली छोड़ो';

  @override
  String get backupSensitive =>
      'इसमें लॉगिन टोकन शामिल हैं। इस फ़ाइल को प्राइवेट रखो';

  @override
  String get backupCreate => 'बैकअप बनाओ';

  @override
  String backupSaved(Object name) {
    return 'बैकअप $name में सेव हो गया';
  }

  @override
  String backupFailed(Object error) {
    return 'बैकअप फ़ेल हो गया: $error';
  }

  @override
  String get backupPickFile => 'बैकअप फ़ाइल चुनो';

  @override
  String get backupPickFileDesc => 'Dartotsu से बनी .json फ़ाइल चुनो';

  @override
  String get backupChooseAnother => 'दूसरी फ़ाइल चुनो';

  @override
  String get backupCreatedAt => 'बनाया गया';

  @override
  String get backupAppVersion => 'ऐप वर्ज़न';

  @override
  String get backupDevice => 'डिवाइस';

  @override
  String get backupAccounts => 'अकाउंट';

  @override
  String get backupSize => 'साइज़';

  @override
  String get backupEncrypted => 'पासवर्ड से सुरक्षित';

  @override
  String get backupUnlock => 'अनलॉक करो';

  @override
  String get backupWrongPassword => 'ये फ़ाइल नहीं पढ़ पाए। पासवर्ड चेक करो';

  @override
  String get backupRestoreSelected => 'चुने हुए रिस्टोर करो';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count सेटिंग्स रिस्टोर करें? इन कैटेगरी की मौजूदा वैल्यू ओवरराइट हो जाएँगी।';
  }

  @override
  String get backupRestored =>
      'रिस्टोर हो गया। सब कुछ लागू करने के लिए ऐप रीस्टार्ट करो';

  @override
  String backupRestoreFailed(Object error) {
    return 'रिस्टोर फ़ेल हो गया: $error';
  }

  @override
  String get backupSelectOne => 'कम से कम एक कैटेगरी चुनो';

  @override
  String get backupCatTheme => 'दिखावट';

  @override
  String get backupCatThemeDesc => 'थीम, रंग, ग्लास, फ़ॉन्ट और कार्ड स्टाइल';

  @override
  String get backupCatCommon => 'जनरल';

  @override
  String get backupCatCommonDesc => 'भाषा, स्टोरेज, नेटवर्क और एक्सटेंशन ऑप्शन';

  @override
  String get backupCatPlayer => 'प्लेयर';

  @override
  String get backupCatPlayerDesc => 'प्लेयर प्रेफ़रेंस';

  @override
  String get backupCatReader => 'रीडर';

  @override
  String get backupCatReaderDesc => 'रीडर प्रेफ़रेंस';

  @override
  String get backupCatProtected => 'अकाउंट';

  @override
  String get backupCatProtectedDesc => 'लॉगिन टोकन और साइन-इन डेटा';

  @override
  String get backupCatOther => 'सर्विस और फ़ीड';

  @override
  String get backupCatOtherDesc => 'फ़ीड लेआउट, लिस्ट और सर्विस ऑप्शन';

  @override
  String get logFile => 'लॉग फ़ाइल';

  @override
  String get logFileDesc => 'ऐप का लॉग शेयर करो, या Linux पर उसका पाथ कॉपी करो';

  @override
  String get logDelete => 'लॉग फ़ाइलें हटाएँ';

  @override
  String get logDeleteDesc =>
      'स्थान खाली करने के लिए सहेजे गए ऐप लॉग साफ़ करें';

  @override
  String logDeleted(String size) {
    return 'लॉग का $size हटा दिया गया';
  }

  @override
  String get missingSequel => 'अनुपलब्ध सीक्वल';

  @override
  String get rising => 'बढ़ रहा है';

  @override
  String get stacks => 'ढेर';

  @override
  String get stacksAll => 'सब';

  @override
  String get stacksFeatured => 'विशेष रुप से प्रदर्शित';

  @override
  String get stacksMine => 'आपका';

  @override
  String get stacksSaved => 'सहेजा गया';

  @override
  String get stacksFollowing => 'अनुसरण कर रहे हैं';

  @override
  String get stacksEmpty => 'यहां अभी तक कोई ढेर नहीं है';

  @override
  String get stacksSignIn => 'अपने ढेर देखने के लिए मंगाबाका में साइन इन करें';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it।';

  @override
  String get stacksSignInAgain => 'पुनः साइन इन करें';

  @override
  String get stacksCouldntLoad => 'ढेर लोड नहीं हो सका';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शृंखला',
      one: '1 शृंखला',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बचाता है',
      one: '1 सहेजें',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return '$name द्वारा';
  }

  @override
  String get stackSpoilers => 'बिगाड़ने वाले';

  @override
  String get stackEmptyEntries => 'यह ढेर खाली है';

  @override
  String get stackSave => 'ढेर सहेजें';

  @override
  String get stackUnsave => 'सहेजे गए से हटाएँ';

  @override
  String get stackSavedToast => 'आपके ढेर में सहेजा गया';

  @override
  String get stackRemovedToast => 'आपके सहेजे गए ढेर से हटा दिया गया';

  @override
  String userStacks(String name) {
    return '$name द्वारा ढेर';
  }

  @override
  String get newsTitle => 'समाचार';

  @override
  String get newsEmpty => 'अभी कोई खबर नहीं';

  @override
  String get newsCouldntLoad => 'समाचार लोड नहीं हो सका';

  @override
  String get logFileCopied => 'लॉग पाथ कॉपी हो गया';

  @override
  String get donateSheetTitle => 'Dartotsu पसंद आ रहा है?';

  @override
  String get donateSheetMessage =>
      'Dartotsu को एक ही इंसान बनाता और संभालता है। अगर ये तुम्हारे काम का है, तो डेवलपमेंट को सपोर्ट करने का सोचो।';

  @override
  String get donateLater => 'बाद में';

  @override
  String get glassBackground => 'ग्लास बैकग्राउंड';

  @override
  String get glassBackgroundDesc =>
      'तुम्हारा प्रोफ़ाइल बैनर, जब तक तुम कोई इमेज लिंक न डालो';

  @override
  String get glassBackgroundHint =>
      'इमेज लिंक (अपना बैनर इस्तेमाल करने के लिए खाली छोड़ो)';

  @override
  String get followCover => 'कवर को फ़ॉलो करो';

  @override
  String get followCoverDesc =>
      'रंग बैकग्राउंड को फ़ॉलो करते हैं, और डिटेल पेज पर कवर को';

  @override
  String get followCoverMediaOnly => 'सिर्फ मीडिया के लिए';

  @override
  String get followCoverMediaOnlyDesc =>
      'केवल मीडिया पेजों पर कवर का पालन करें, बाकी सभी जगह सामान्य रंग बनाए रखें';

  @override
  String get cardStyle => 'कार्ड स्टाइल';

  @override
  String get cardStyleDesc => 'टाइटल की जगह, साइज़, प्रोग्रेस और बैज';

  @override
  String get customFont => 'फ़ॉन्ट';

  @override
  String get customFontDesc => 'डिफ़ॉल्ट, डिवाइस की कोई फ़ाइल, या Google Fonts';

  @override
  String get customFontError => 'वो फ़ॉन्ट फ़ाइल लोड नहीं हो पाई';

  @override
  String get googleFontError => 'वो फ़ॉन्ट डाउनलोड नहीं हो पाया';

  @override
  String get yourFonts => 'तुम्हारे फ़ॉन्ट';

  @override
  String get addFontFile => 'फ़ॉन्ट फ़ाइल जोड़ो…';

  @override
  String get browseGoogleFonts => 'Google Fonts ब्राउज़ करो…';

  @override
  String get searchGoogleFonts => 'Google Fonts में खोजो';

  @override
  String get defaultFont => 'डिफ़ॉल्ट';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'सिस्टम से डायनामिक रंग';

  @override
  String get jsonTheme => 'कस्टम थीम फ़ाइल';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json से लाइव रंग (कोई कस्टम स्क्रिप्ट, या तुम्हारी अपनी एडिटिंग)';

  @override
  String get themeMode => 'थीम मोड';

  @override
  String get mode => 'मोड';

  @override
  String get trackingService => 'ट्रैकिंग सर्विस';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signIn => 'साइन इन';

  @override
  String get notSignedIn => 'साइन इन नहीं है';

  @override
  String signOutOf(String service) {
    return '$service से साइन आउट करें?';
  }

  @override
  String get checkForUpdates => 'अपडेट चेक करो';

  @override
  String get checkForUpdatesDesc => 'GitHub पर नई रिलीज़ आने पर बताओ';

  @override
  String get updateChannel => 'अपडेट चैनल';

  @override
  String get channel => 'चैनल';

  @override
  String get stable => 'स्टेबल';

  @override
  String get preRelease => 'प्री-रिलीज़';

  @override
  String get alpha => 'अल्फ़ा';

  @override
  String get checkNow => 'अभी चेक करो';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'डिफ़ॉल्ट';

  @override
  String currentlyUsing(String value) {
    return 'अभी: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'डिफ़ॉल्ट (Cloudflare)';

  @override
  String get proxy => 'प्रॉक्सी';

  @override
  String get proxyProtocol => 'टाइप';

  @override
  String get proxyHost => 'होस्ट';

  @override
  String get proxyPort => 'पोर्ट';

  @override
  String get proxyUsername => 'यूज़रनेम';

  @override
  String get proxyPassword => 'पासवर्ड';

  @override
  String get optional => 'ज़रूरी नहीं';

  @override
  String get clearCookies => 'कुकीज़ क्लियर करो';

  @override
  String get clearCookiesDesc => 'सारी सेव कुकीज़ हटाओ';

  @override
  String notImplementedArea(String area) {
    return '$area — जल्द आ रहा है';
  }

  @override
  String notImplementedService(String service) {
    return '$service अभी इसे सपोर्ट नहीं करता।';
  }

  @override
  String get couldNotLoadResults => 'रिज़ल्ट लोड नहीं हो पाए';

  @override
  String get updateCheckFailed => 'अपडेट चेक नहीं हो पाया';

  @override
  String get highRefreshRate => 'हाई रिफ़्रेश रेट';

  @override
  String get highRefreshRateDesc =>
      'तुम्हारी स्क्रीन जितना सबसे ज़्यादा रिफ़्रेश रेट सपोर्ट करती है, वही इस्तेमाल करो';

  @override
  String get imageSave => 'इमेज सेव करो';

  @override
  String imageSavedTo(String path) {
    return '$path में सेव हो गई';
  }

  @override
  String get imageActionFailed => 'इमेज डाउनलोड नहीं हो पाई';

  @override
  String get imageTitleCover => 'कवर';

  @override
  String get imageTitlePage => 'पेज';

  @override
  String get imageTitleBanner => 'बैनर';

  @override
  String get imageTitleAvatar => 'प्रोफ़ाइल फ़ोटो';

  @override
  String get verifyTls => 'सर्टिफ़िकेट वेरिफ़ाई करो';

  @override
  String get verifyTlsDesc =>
      'ग़लत HTTPS सर्टिफ़िकेट वाले सर्वर रिजेक्ट करो। इसे सिर्फ़ तभी बंद करो जब कोई सोर्स सेल्फ़-साइंड सर्टिफ़िकेट इस्तेमाल करता हो';

  @override
  String get clearCookiesConfirm =>
      'सारी सेव कुकीज़ हटानी हैं? इससे कुछ सोर्स से साइन आउट हो सकते हो।';

  @override
  String get version => 'वर्ज़न';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'सोर्स, इश्यू और रिलीज़';

  @override
  String get discordDesc => 'कम्युनिटी और सपोर्ट';

  @override
  String get supportDeveloper => 'डेवलपर का समर्थन करें';

  @override
  String get buyMeCoffee => 'मेरे लिए एक कॉफ़ी खरीदो';

  @override
  String get upiId => 'यूपीआई आईडी';

  @override
  String get upiCopied => 'यूपीआई आईडी कॉपी की गई';

  @override
  String get donateDesc => 'डेवलपमेंट को सपोर्ट करो';

  @override
  String get contributors => 'कंट्रीब्यूटर';

  @override
  String get contributorsDesc => 'जिन लोगों ने Dartotsu बनाया';

  @override
  String get contributorsLoadFailed => 'कंट्रीब्यूटर लोड नहीं हो पाए';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu पर बने प्रोजेक्ट';

  @override
  String get forksEmpty => 'कोई फ़ोर्क नहीं मिला';

  @override
  String get sectionColors => 'रंग';

  @override
  String get sectionDisplay => 'डिस्प्ले';

  @override
  String get sectionStyle => 'स्टाइल';

  @override
  String get sectionCommunity => 'कम्युनिटी';

  @override
  String get sectionAppInfo => 'ऐप की जानकारी';

  @override
  String get sectionRequests => 'रिक्वेस्ट';

  @override
  String get sectionDnsProxy => 'DNS और प्रॉक्सी';

  @override
  String get onboardingBack => 'वापस';

  @override
  String get onboardingNext => 'आगे';

  @override
  String get onboardingSkip => 'स्किप';

  @override
  String get onboardingLanguageBody =>
      'Choose the language Dartotsu is shown in. You can change it later in Settings।';

  @override
  String get onboardingPaletteTitle => 'इसे अपना बनाओ';

  @override
  String get onboardingPaletteBody =>
      'कोई पैलेट चुनो। कार्ड से लेकर प्लेयर तक, हर एक्सेंट उसी को फ़ॉलो करेगा।';

  @override
  String get themeModeAuto => 'ऑटो';

  @override
  String get themeModeLight => 'लाइट';

  @override
  String get themeModeDark => 'डार्क';

  @override
  String get onboardingSyncTitle => 'अपनी लाइब्रेरी सिंक करो';

  @override
  String get onboardingSyncBody =>
      'अपनी लिस्ट, प्रोग्रेस और स्कोर साथ लाने के लिए AniList से साइन इन करो। या स्किप करके गेस्ट की तरह ब्राउज़ करो।';

  @override
  String get onboardingOpenLinks =>
      'AniList और रिपॉज़िटरी के लिंक Dartotsu में खोलो';

  @override
  String get onboardingPermsTitle => 'परमिशन';

  @override
  String get onboardingPermsBody =>
      'ये अभी दे दो ताकि डाउनलोड, अपडेट और अलर्ट बिना रुकावट काम करें। बाद में सिस्टम सेटिंग्स से बदल सकते हो।';

  @override
  String get permNotifications => 'नोटिफ़िकेशन';

  @override
  String get permNotificationsDesc => 'डाउनलोड प्रोग्रेस, नए एपिसोड और रिप्लाई';

  @override
  String get permStorage => 'सभी फ़ाइलों का एक्सेस';

  @override
  String get permStorageDesc => 'डाउनलोड पब्लिक Dartotsu फ़ोल्डर में सेव करो';

  @override
  String get permInstall => 'अपडेट इंस्टॉल करो';

  @override
  String get permInstallDesc => 'Dartotsu को अपने ऐप अपडेट खुद इंस्टॉल करने दो';

  @override
  String get permBattery => 'अनरिस्ट्रिक्टेड बैटरी';

  @override
  String get permBatteryDesc => 'लंबे डाउनलोड बैकग्राउंड में चलते रहें';

  @override
  String get permGrant => 'अलाउ करो';

  @override
  String get linkOpenInApp => 'लिंक Dartotsu में खोलो';

  @override
  String get linkOpenInAppDesc =>
      'AniList और रिपॉज़िटरी के लिंक से ऐप खुलने दो';

  @override
  String get reviewsTitle => 'रिव्यू';

  @override
  String get reviewsEmpty => 'अभी कोई रिव्यू नहीं';

  @override
  String get reviewsFailed => 'रिव्यू लोड नहीं हो पाए';

  @override
  String get reviewHelpfulQuestion => 'क्या ये रिव्यू काम का था?';

  @override
  String get reviewVoteFailed => 'तुम्हारा वोट सेव नहीं हो पाया';

  @override
  String reviewHelpful(int n, int total) {
    return '$total में से $n को ये काम का लगा';
  }

  @override
  String get calendarTitle => 'एयरिंग शेड्यूल';

  @override
  String get calendarToday => 'आज';

  @override
  String get calendarEmpty => 'इस दिन कुछ एयर नहीं होता';

  @override
  String get calendarFailed => 'शेड्यूल लोड नहीं हो पाया';

  @override
  String calendarChapter(int n) {
    return 'अध्याय $n';
  }

  @override
  String get calendarExpected => 'अपेक्षित';

  @override
  String get castReceiverFailed =>
      'Chromecast ने अपना प्लेयर प्रारंभ नहीं किया';

  @override
  String get castPlaybackFailed => 'डिवाइस इस स्ट्रीम को नहीं चला सका';

  @override
  String get shortcutNothingToContinue => 'अभी जारी रखने के लिए कुछ भी नहीं है';

  @override
  String shortcutNoCalendar(String service) {
    return '$service के पास कोई कैलेंडर नहीं है';
  }

  @override
  String calendarEpisode(int n) {
    return 'एपिसोड $n';
  }

  @override
  String get shareAnalytics => 'गुमनाम यूसेज डेटा शेयर करो';

  @override
  String get shareAnalyticsDesc =>
      'गुमनाम यूज़र काउंट और क्रैश रिपोर्ट। कोई अकाउंट या पर्सनल डेटा नहीं';

  @override
  String get linkOpenAnilist => 'AniList लिंक Dartotsu में खोलो';

  @override
  String get linkOpenAnilistDesc =>
      'लिंक हैंडलिंग ऑन करो ताकि anilist.co के लिंक ऐप में खुलें';

  @override
  String get linkSettingsFailed => 'सिस्टम सेटिंग्स नहीं खुल पाईं';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'अपनी Discord प्रोफ़ाइल पर दिखाओ कि तुम क्या कर रहे हो। इसके लिए तुम्हारा Discord टोकन चाहिए।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'अपनी Discord प्रोफ़ाइल पर दिखाओ कि तुम क्या कर रहे हो। इसके लिए Discord डेस्कटॉप ऐप चलता होना चाहिए।';

  @override
  String get discordBrowsing => 'ब्राउज़िंग एक्टिविटी दिखाओ';

  @override
  String get discordBrowsingDesc =>
      'सिर्फ़ ये नहीं कि क्या देख या पढ़ रहे हो, बल्कि कौन सा टैब, पेज या प्रोफ़ाइल देख रहे हो, वो भी दिखाओ।';

  @override
  String get discordLookHeader => 'प्रेज़ेंस का लुक';

  @override
  String get discordActivityType => 'एक्टिविटी टाइप';

  @override
  String get discordActivityTypeDesc =>
      'Discord इसे कैसे लिखे: \"Watching …\" या \"Playing …\"। ऑटो में एनीमे के लिए Watching और बाकी सब के लिए Playing आता है।';

  @override
  String get discordWatching => 'देख रहे';

  @override
  String get discordPlaying => 'चल रहा';

  @override
  String get discordCovers => 'कवर दिखाओ';

  @override
  String get discordCoversDesc => 'कार्ड पर कवर आर्ट और Dartotsu आइकन।';

  @override
  String get discordTimer => 'टाइमर दिखाओ';

  @override
  String get discordTimerDesc => 'टाइटल के नीचे बीता हुआ या बचा हुआ टाइम।';

  @override
  String get discordButtons => 'बटन दिखाओ';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" और \"Open Dartotsu\" बटन।';

  @override
  String get discordHideTitles => 'टाइटल छुपाओ';

  @override
  String get discordHideTitlesDesc =>
      'एनीमे और मंगा के नाम (और उनका कवर व लिंक) की जगह \"Something private\" दिखाओ।';

  @override
  String get discordConnectionHeader => 'कनेक्शन';

  @override
  String get listSearchHint => 'इस लिस्ट में खोजो';

  @override
  String get listSort => 'सॉर्ट';

  @override
  String get listFilter => 'फ़िल्टर';

  @override
  String get listRandom => 'रैंडम टाइटल';

  @override
  String get listReverse => 'उल्टे क्रम में';

  @override
  String get listSortDefault => 'लिस्ट का क्रम';

  @override
  String get listSortScore => 'तुम्हारा स्कोर';

  @override
  String get listSortTitle => 'टाइटल';

  @override
  String get listSortUpdated => 'आख़िरी अपडेट';

  @override
  String get listSortProgress => 'प्रोग्रेस';

  @override
  String get listSortReleased => 'रिलीज़ डेट';

  @override
  String get listSortAverage => 'एवरेज स्कोर';

  @override
  String get listFilterFormat => 'फ़ॉर्मेट';

  @override
  String get listFilterStatus => 'स्टेटस';

  @override
  String get listFilterGenres => 'जॉनर';

  @override
  String get listFilterClear => 'फ़िल्टर हटाओ';

  @override
  String get listNoMatches => 'इस लिस्ट में कुछ मैच नहीं करता';

  @override
  String get discordLogin => 'Discord में लॉगिन करो';

  @override
  String get discordToken => 'Discord टोकन';

  @override
  String get discordTokenSaved =>
      'सेव है। बदलने के लिए टैप करो, हटाने के लिए देर तक दबाओ।';

  @override
  String get discordTokenNotSet => 'सेट नहीं है। जोड़ने के लिए टैप करो।';

  @override
  String get discordTokenSavedSnack => 'Discord टोकन सेव हो गया';

  @override
  String get discordTokenRemovedSnack => 'Discord टोकन हटा दिया गया';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'ऑन · लुक बदलने के लिए टैप करो';

  @override
  String get discordRichPresenceRowOff =>
      'अपनी Discord प्रोफ़ाइल पर दिखाओ कि तुम क्या कर रहे हो';

  @override
  String get loginCancelled => 'लॉगिन कैंसल हो गया';

  @override
  String get invalidToken => 'ग़लत टोकन';

  @override
  String loginFailed(String error) {
    return 'लॉगिन फ़ेल हो गया: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList लॉगिन फ़ेल हो गया';

  @override
  String get kitsuLoginFailed =>
      'Kitsu लॉगिन फ़ेल हो गया। अपना ईमेल और पासवर्ड चेक करो।';

  @override
  String get kitsuLoginTitle => 'Kitsu में साइन इन करो';

  @override
  String get emailOrUsername => 'ईमेल या यूज़रनेम';

  @override
  String get password => 'पासवर्ड';

  @override
  String get kitsuProfile => 'Kitsu प्रोफ़ाइल';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka लॉगिन फ़ेल हो गया';

  @override
  String get comickLoginFailed => 'कॉमिक लॉगिन विफल रहा';

  @override
  String get tagline => 'टैगलाइन';

  @override
  String get trending => 'ट्रेंडिंग';

  @override
  String get anticipated => 'प्रत्याशित';

  @override
  String get watchlist => 'निगरानी सूची';

  @override
  String get recommendedShows => 'अनुशंसित शो';

  @override
  String get recommendedMovies => 'अनुशंसित फिल्में';

  @override
  String get boxOffice => 'बॉक्स ऑफिस';

  @override
  String get popularMovies => 'लोकप्रिय फ़िल्में';

  @override
  String get popularShows => 'लोकप्रिय शो';

  @override
  String get anticipatedMovies => 'प्रत्याशित फिल्में';

  @override
  String get anticipatedShows => 'प्रत्याशित शो';

  @override
  String get trendingShows => 'ट्रेंडिंग शो';

  @override
  String get mostWatchedThisWeek => 'इस सप्ताह सर्वाधिक देखा गया';

  @override
  String get sortMostViewed => 'सबसे ज्यादा देखा गया';

  @override
  String get sortMostFollowed => 'सबसे ज्यादा फॉलो किया गया';

  @override
  String get sortLatestUpdates => 'नवीनतम अपडेट';

  @override
  String get translationStatusLabel => 'अनुवाद';

  @override
  String get weeklySchedule => 'साप्ताहिक कार्यक्रम';

  @override
  String get mostFollowed => 'सर्वाधिक अनुसरण किया गया';

  @override
  String get latestUpdates => 'नवीनतम अपडेट';

  @override
  String get trendingAnime => 'ट्रेंडिंग एनीमे';

  @override
  String get topRatedAnime => 'टॉप रेटेड एनीमे';

  @override
  String get mostFollowedAnime => 'सर्वाधिक फॉलो किया जाने वाला एनीमे';

  @override
  String get comickProfile => 'कॉमिक प्रोफ़ाइल';

  @override
  String get refreshFromComick => 'कॉमिक से ताज़ा करें';

  @override
  String get mangaBakaProfile => 'MangaBaka प्रोफ़ाइल';

  @override
  String get refreshFromMangaBaka => 'MangaBaka से रीफ़्रेश करो';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates में साइन इन करें';

  @override
  String get mangaUpdatesProfile => 'मंगाअपडेट्स प्रोफ़ाइल';

  @override
  String get mangaUpdatesAnimeStart => 'एनीमे अनुकूलन शुरू होता है';

  @override
  String get mangaUpdatesAnimeEnd => 'एनीमे अनुकूलन समाप्त होता है';

  @override
  String get refreshFromMangaUpdates => 'MangaUpdates से ताज़ा करें';

  @override
  String get usernameOnly => 'उपयोगकर्ता नाम';

  @override
  String get releases => 'विज्ञप्ति';

  @override
  String get artistsLabel => 'आर्टिस्ट';

  @override
  String get authorsLabel => 'ऑथर';

  @override
  String get publishersLabel => 'पब्लिशर';

  @override
  String get licensedLabel => 'लाइसेंस्ड';

  @override
  String get contentRatingLabel => 'कंटेंट रेटिंग';

  @override
  String get yesLabel => 'हाँ';

  @override
  String get noLabel => 'नहीं';

  @override
  String get ratingSteps => 'रेटिंग स्टेप';

  @override
  String get hideNsfw => 'NSFW छुपाओ';

  @override
  String get hideNsfwSourcesDesc =>
      'Hide sources marked 18+ from the feeds and the source picker. They stay installed।';

  @override
  String get hideNsfwDesc =>
      'एडल्ट टाइटल को फ़ीड और सर्च से बाहर रखो, और अपनी एडल्ट एंट्री Hidden Media में दिखाओ।';

  @override
  String get kitsuAccountOptions => 'Kitsu अकाउंट ऑप्शन';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka अकाउंट के विकल्प';

  @override
  String get comickAccountOptions => 'कॉमिक खाता विकल्प';

  @override
  String get comickClientId => 'कॉमिक क्लाइंट आईडी';

  @override
  String get comickClientIdDesc => 'कस्टम क्लाइंट आईडी कॉमिक.डेव पर पंजीकृत है';

  @override
  String get traktClientId => 'Trakt Client ID';

  @override
  String get traktClientIdDesc =>
      'Sign in with your own Trakt app instead of the built-in one';

  @override
  String get traktCreateApp => 'Create a Trakt app';

  @override
  String get traktCreateAppDesc => 'Opens your apps on trakt.tv';

  @override
  String traktRedirectHelp(String uris) {
    return 'On trakt.tv/oauth/applications create an app and add these Redirect URIs, one per line:\n\n$uris\n\nThen paste its Client ID here, save and sign in again.';
  }

  @override
  String get couldNotUpdateKitsuSettings =>
      'तुम्हारी Kitsu सेटिंग्स अपडेट नहीं हो पाईं';

  @override
  String get titleCanonical => 'कैनोनिकल';

  @override
  String get titleRomanized => 'रोमनाइज़्ड';

  @override
  String get titleLocalized => 'लोकलाइज़्ड';

  @override
  String get ratingSystem => 'रेटिंग सिस्टम';

  @override
  String get ratingSimple => 'सिंपल (3 चेहरे)';

  @override
  String get ratingRegular => 'रेगुलर (5 स्टार)';

  @override
  String get ratingAdvanced => 'एडवांस्ड (10 पॉइंट)';

  @override
  String get contentFilter => 'कंटेंट फ़िल्टर';

  @override
  String get contentSfw => 'सिर्फ़ सेफ़ फ़ॉर वर्क';

  @override
  String get contentSometimes => 'सर्च में मैच्योर कंटेंट';

  @override
  String get contentEverywhere => 'हर जगह मैच्योर कंटेंट';

  @override
  String get shareToGlobal => 'ग्लोबल फ़ीड में शेयर करो';

  @override
  String get shareToGlobalDesc =>
      'तुम्हारी एक्टिविटी Kitsu की ग्लोबल फ़ीड में दिखने दो।';

  @override
  String get memberSince => 'मेंबर बने';

  @override
  String get location => 'लोकेशन';

  @override
  String get accountType => 'अकाउंट टाइप';

  @override
  String get accountSupporter => 'सपोर्टर';

  @override
  String get accountFree => 'फ़्री';

  @override
  String get accountDetails => 'अकाउंट डिटेल';

  @override
  String get refreshFromKitsu => 'Kitsu से रीफ़्रेश करो';

  @override
  String get simklReadOnly => 'Simkl को सिर्फ़ रीड-ओनली एक्सेस मिला';

  @override
  String get traktReadOnly => 'ट्रैक्ट ने केवल पढ़ने के लिए पहुंच प्रदान की';

  @override
  String get incognitoEditsBlocked => 'इन्कॉग्निटो: लिस्ट एडिट ब्लॉक हैं';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'इन्कॉग्निटो: प्रोग्रेस सेव नहीं हुई';

  @override
  String progressSet(int progress) {
    return 'प्रोग्रेस $progress पर सेट हो गई';
  }

  @override
  String removedFromList(String title) {
    return '$title तुम्हारी लिस्ट से हटा दिया गया';
  }

  @override
  String get following => 'फ़ॉलोइंग';

  @override
  String get followsMutual => 'आपसी';

  @override
  String get followsNotMutual => 'परस्पर नहीं';

  @override
  String get homeSections => 'होम सेक्शन';

  @override
  String get homeSectionsHint =>
      'क्रम बदलने के लिए ड्रैग करो। छुपे हुए सेक्शन कभी फ़ेच नहीं होते।';

  @override
  String get customListDeleteFailed => 'कस्टम लिस्ट डिलीट नहीं हो पाई';

  @override
  String get customListsSaveFailed => 'कस्टम लिस्ट सेव नहीं हो पाईं';

  @override
  String get customListsSaved => 'कस्टम लिस्ट सेव हो गईं';

  @override
  String get listName => 'लिस्ट का नाम';

  @override
  String get addList => 'लिस्ट जोड़ो';

  @override
  String get voiceActors => 'स्वर अभिनेता';

  @override
  String voiceActorsIn(String name) {
    return 'वॉइस ऐक्टर · $name';
  }

  @override
  String get animeAppearances => 'एनीमे में दिखे';

  @override
  String get mangaAppearances => 'मंगा में दिखे';

  @override
  String get voicedCharacters => 'आवाज़ दिए किरदार';

  @override
  String get animeCredits => 'एनीमे क्रेडिट';

  @override
  String get mangaCredits => 'मंगा क्रेडिट';

  @override
  String get mainProductions => 'मेन प्रोडक्शन';

  @override
  String get otherWorks => 'दूसरे काम';

  @override
  String get prequelSequel => 'प्रीक्वल और सीक्वल';

  @override
  String get prequel => 'प्रीक्वेल';

  @override
  String get sequel => 'अगली कड़ी';

  @override
  String get previousSeason => 'पिछला सीज़न';

  @override
  String get thisSeason => 'ये सीज़न';

  @override
  String get nextSeason => 'अगला सीज़न';

  @override
  String get voiceRoles => 'वॉइस रोल';

  @override
  String get staffPositions => 'स्टाफ़ पोज़िशन';

  @override
  String get mangaWorks => 'मंगा के काम';

  @override
  String get malProfile => 'MyAnimeList प्रोफ़ाइल';

  @override
  String get refreshFromMal => 'MyAnimeList से रीफ़्रेश करो';

  @override
  String get repullProfileCounts => 'अपनी प्रोफ़ाइल और काउंट दोबारा खींचो';

  @override
  String get refreshed => 'रीफ़्रेश हो गया';

  @override
  String get simklProfile => 'Simkl प्रोफ़ाइल';

  @override
  String get traktProfile => 'ट्रैक्ट प्रोफ़ाइल';

  @override
  String get refreshFromSimkl => 'Simkl से रीफ़्रेश करो';

  @override
  String get refreshFromTrakt => 'ट्रैक्ट से ताज़ा करें';

  @override
  String get repullProfileLibrary => 'अपनी प्रोफ़ाइल और लाइब्रेरी दोबारा खींचो';

  @override
  String get simklSignInToSearch => 'सर्च करने के लिए Simkl में साइन इन करो';

  @override
  String get dropRate => 'ड्रॉप रेट';

  @override
  String get simklAttribution => 'डेटा और आर्टवर्क Simkl से। Simkl पर देखो';

  @override
  String get traktAttribution =>
      'ट्रैक्ट द्वारा प्रदान किया गया डेटा और कलाकृति। ट्रैक्ट पर देखें';

  @override
  String get listsLiked => 'पसंद आया';

  @override
  String get listsYours => 'आपका';

  @override
  String get traktVip => 'वीआईपी';

  @override
  String get traktVipMember => 'ट्रैक्ट वीआईपी सदस्य';

  @override
  String get onHold => 'ऑन होल्ड';

  @override
  String get scoredBy => 'स्कोर देने वाले';

  @override
  String get planToWatch => 'देखने का प्लान';

  @override
  String get planToRead => 'पढ़ने का प्लान';

  @override
  String get timesRewatched => 'कितनी बार दोबारा देखा';

  @override
  String get timesReread => 'कितनी बार दोबारा पढ़ा';

  @override
  String get comments => 'कमेंट';

  @override
  String get moviesAndSeries => 'मूवी और सीरीज़';

  @override
  String get simklMoviesOnly => 'केवल फ़िल्में और सीरीज़';

  @override
  String get simklMoviesOnlyDesc =>
      'एनीमे टैब को प्रतिस्थापित करता है: पहले फिल्में, फिर कुछ एनीमे पंक्तियों के साथ शो';

  @override
  String get trackingOnly => 'सिर्फ़ ट्रैकिंग';

  @override
  String get signedIn => 'साइन इन है';

  @override
  String get searchLanguage => 'सर्च की भाषा';

  @override
  String get savedToList => 'तुम्हारी लिस्ट में सेव हो गया';

  @override
  String get removedFromYourList => 'तुम्हारी लिस्ट से हटा दिया गया';

  @override
  String get retry => 'दोबारा try करो';

  @override
  String get synopsis => 'सिनॉप्सिस';

  @override
  String get details => 'डिटेल';

  @override
  String get addToList => 'लिस्ट में जोड़ो';

  @override
  String get trailer => 'ट्रेलर';

  @override
  String get trailerQuality => 'ट्रेलर की गुणवत्ता';

  @override
  String get titleCopied => 'टाइटल कॉपी हो गया';

  @override
  String get linkCopied => 'लिंक कॉपी हो गया';

  @override
  String get watchTrailer => 'ट्रेलर देखो';

  @override
  String get copyTitle => 'टाइटल कॉपी करो';

  @override
  String get detailStale =>
      'AniList could not be reached. This is saved information and may be outdated।';

  @override
  String get copyLink => 'लिंक कॉपी करो';

  @override
  String get openInBrowser => 'ब्राउज़र में खोलो';

  @override
  String viewOnSource(String source) {
    return '$source पर देखो';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'एपिसोड $ep $time में एयर होगा';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'अगला एपिसोड $time में';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'चैप्टर $chapter करीब $time में आने वाला है';
  }

  @override
  String get logPathCopied => 'लॉग फ़ाइल का पाथ क्लिपबोर्ड में कॉपी हो गया';

  @override
  String get animeSource => 'एनीमे सोर्स';

  @override
  String get mangaSource => 'मंगा सोर्स';

  @override
  String get popular => 'पॉपुलर';

  @override
  String get allCustomLists => 'सभी कस्टम सूचियाँ';

  @override
  String get simklTitleLanguage => 'एनीमे शीर्षक भाषा';

  @override
  String get titleLanguageEnglish => 'अंग्रेजी';

  @override
  String get titleLanguageRomaji => 'रोमाजी';

  @override
  String get simklListsTrending => 'ट्रेंडिंग';

  @override
  String get simklListsMostLiked => 'सबसे ज्यादा पसंद किया गया';

  @override
  String get simklListsMostFollowed => 'सबसे ज्यादा फॉलो किया गया';

  @override
  String get simklListsOfficial => 'आधिकारिक';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शीर्षक',
      one: '1 शीर्षक',
    );
    return '$_temp0';
  }

  @override
  String get people => 'लोग';

  @override
  String get mostComments => 'अधिकांश टिप्पणियाँ';

  @override
  String get alphabetical => 'वर्णानुक्रमिक';

  @override
  String get latest => 'लेटेस्ट';

  @override
  String get saved => 'सेव किए हुए';

  @override
  String get nothingMatched => 'कुछ नहीं मिला';

  @override
  String get nothingSavedFromSource => 'इस सोर्स से अभी तक कुछ सेव नहीं हुआ';

  @override
  String get sourceReturnedNothing => 'इस सोर्स से कुछ नहीं आया';

  @override
  String get checkConnectionOrSource =>
      'अपना कनेक्शन चेक करो या कोई दूसरा सोर्स try करो।';

  @override
  String get tryDifferentSearch => 'कोई और सर्च टर्म try करो।';

  @override
  String get savedTitlesAppearHere =>
      'जो टाइटल तुम अपनी लिस्ट में जोड़ोगे वो यहाँ दिखेंगे।';

  @override
  String get tryOtherFeed => 'दूसरी फ़ीड try करो या सर्च करो।';

  @override
  String searchSource(String source) {
    return '$source में खोजो';
  }

  @override
  String get animeExtensions => 'एनीमे एक्सटेंशन';

  @override
  String get mangaExtensions => 'मंगा एक्सटेंशन';

  @override
  String get nothingHereYet => 'अभी यहाँ कुछ नहीं है';

  @override
  String get savedOnDeviceUntilLogin =>
      'जब तक तुम ऐसा नहीं करते, नीचे सब कुछ इसी डिवाइस पर सेव रहता है।';

  @override
  String get yourProfile => 'तुम्हारी प्रोफ़ाइल';

  @override
  String get activity => 'एक्टिविटी';

  @override
  String get extensions => 'एक्सटेंशन';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String get logIn => 'लॉग इन';

  @override
  String get logOutConfirm => 'पक्का लॉग आउट करना है?';

  @override
  String get incognitoMode => 'इन्कॉग्निटो मोड';

  @override
  String get alsoBlockListEdits => 'लिस्ट एडिट भी ब्लॉक करो';

  @override
  String get offlineMode => 'ऑफ़लाइन मोड';

  @override
  String get switchService => 'सर्विस बदलो';

  @override
  String logOutOf(String name) {
    return '$name से लॉग आउट करो';
  }

  @override
  String get loggedIn => 'लॉग इन है';

  @override
  String get notifications => 'नोटिफ़िकेशन';

  @override
  String get nothingNew => 'कुछ नया नहीं';

  @override
  String get thisWeek => 'इस हफ़्ते';

  @override
  String get listOnly => 'सिर्फ़ लिस्ट वाले';

  @override
  String get notInList => 'सूची में नहीं';

  @override
  String get filter => 'फ़िल्टर';

  @override
  String get searchResults => 'सर्च रिज़ल्ट';

  @override
  String get recentSearches => 'हाल की सर्च';

  @override
  String get searchOrSetFilter => 'सर्च करो या फ़िल्टर लगाओ';

  @override
  String get filters => 'फ़िल्टर';

  @override
  String get showLess => 'कम दिखाओ';

  @override
  String get showAll => 'सब दिखाओ';

  @override
  String get apply => 'लागू करो';

  @override
  String get preview => 'प्रीव्यू';

  @override
  String get preset => 'प्रीसेट';

  @override
  String get cardNormal => 'नॉर्मल';

  @override
  String get cardOnCard => 'कार्ड पर';

  @override
  String get cardInCard => 'कार्ड के अंदर';

  @override
  String get size => 'साइज़';

  @override
  String get cardWidth => 'कार्ड की चौड़ाई';

  @override
  String get compact => 'कॉम्पैक्ट';

  @override
  String get coverAndTitleOnly => 'सिर्फ़ कवर और टाइटल';

  @override
  String get titleLines => 'टाइटल की लाइनें';

  @override
  String get shape => 'शेप';

  @override
  String get posterShape => 'पोस्टर की शेप';

  @override
  String get cornerRadius => 'कोनों का गोलापन';

  @override
  String get off => 'बंद';

  @override
  String get topLeft => 'ऊपर बाएँ';

  @override
  String get topRight => 'ऊपर दाएँ';

  @override
  String get bottomLeft => 'नीचे बाएँ';

  @override
  String get bottomRight => 'नीचे दाएँ';

  @override
  String get overlays => 'ओवरले';

  @override
  String get progressCount => 'प्रोग्रेस / काउंट';

  @override
  String get pill => 'पिल';

  @override
  String get bar => 'बार';

  @override
  String get outside => 'बाहर';

  @override
  String get scoreBadge => 'स्कोर बैज';

  @override
  String get airingDot => 'एयरिंग डॉट';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध है';

  @override
  String get notInstalled => 'इंस्टॉल नहीं है';

  @override
  String get done => 'हो गया';

  @override
  String get searchOrEnterUrl => 'सर्च करो या URL डालो';

  @override
  String get refresh => 'रीफ़्रेश';

  @override
  String get animePlanetRank => 'पद';

  @override
  String get animePlanetMagazine => 'पत्रिका';

  @override
  String get animePlanetRefreshLists => 'अपनी सूचियाँ ताज़ा करें';

  @override
  String get animePlanetRefreshListsDesc =>
      'अपनी एनीमे-प्लैनेट सूचियाँ फिर से पढ़ें';

  @override
  String get animePlanetLocalNote =>
      'अपने एनीमे-प्लैनेट खाते में परिवर्तन सहेजने के लिए साइन इन करें। तब तक वे इस डिवाइस पर बने रहते हैं';

  @override
  String get share => 'शेयर करो';

  @override
  String get characters => 'किरदार';

  @override
  String get staff => 'स्टाफ़';

  @override
  String get readMore => 'और पढ़ो';

  @override
  String get couldNotLoadList => 'लिस्ट लोड नहीं हो पाई';

  @override
  String get logInToFavourite => 'फ़ेवरेट में जोड़ने के लिए लॉग इन करो';

  @override
  String get alsoKnownAs => 'इन नामों से भी जाना जाता है';

  @override
  String get hideSpoilerNames => 'स्पॉइलर वाले नाम छुपाओ';

  @override
  String get showSpoilerNames => 'स्पॉइलर वाले नाम दिखाओ';

  @override
  String get favourited => 'फ़ेवरेट किया हुआ';

  @override
  String get favourite => 'फ़ेवरेट';

  @override
  String get couldNotOpenTitle => 'ये टाइटल नहीं खुल पाया';

  @override
  String get nobodyHereYet => 'अभी यहाँ कोई नहीं है';

  @override
  String get noMatches => 'कोई मैच नहीं';

  @override
  String get gridView => 'ग्रिड व्यू';

  @override
  String get fullWidth => 'फ़ुल विड्थ';

  @override
  String get userNotFound => 'यूज़र नहीं मिला';

  @override
  String get couldNotUpdateFollow => 'फ़ॉलो अपडेट नहीं हो पाया';

  @override
  String followedUser(String name) {
    return '$name को फ़ॉलो कर लिया';
  }

  @override
  String unfollowedUser(String name) {
    return '$name को अनफ़ॉलो कर दिया';
  }

  @override
  String get messages => 'मैसेज';

  @override
  String get logInToSeeMessages => 'अपने मैसेज देखने के लिए लॉग इन करो';

  @override
  String get editActivity => 'एक्टिविटी एडिट करो';

  @override
  String get newActivity => 'नई एक्टिविटी';

  @override
  String get editMessage => 'मैसेज एडिट करो';

  @override
  String get writeMessage => 'मैसेज लिखो';

  @override
  String get editReply => 'रिप्लाई एडिट करो';

  @override
  String get posted => 'पोस्ट हो गया';

  @override
  String get couldNotPost => 'पोस्ट नहीं हो पाया';

  @override
  String get nothingToPreview => 'प्रीव्यू के लिए कुछ नहीं है';

  @override
  String get writeSomethingHint => 'कुछ लिखो… यहाँ AniList मार्कडाउन चलता है';

  @override
  String get privateMessage => 'प्राइवेट मैसेज';

  @override
  String get post => 'पोस्ट करो';

  @override
  String get nothingHere => 'यहाँ कुछ नहीं है';

  @override
  String get noAnimeProgress => 'कोई एनीमे प्रोग्रेस नहीं';

  @override
  String get noMangaProgress => 'कोई मंगा प्रोग्रेस नहीं';

  @override
  String get noMessages => 'कोई मैसेज नहीं';

  @override
  String get writeMessageHint => 'मैसेज लिखो…';

  @override
  String get shareSomethingHint => 'कुछ शेयर करो…';

  @override
  String get all => 'सब';

  @override
  String get anime => 'एनीमे';

  @override
  String get manga => 'मंगा';

  @override
  String get count => 'काउंट';

  @override
  String get hoursWatched => 'देखे गए घंटे';

  @override
  String get chaptersRead => 'पढ़े गए चैप्टर';

  @override
  String get meanScore => 'मीन स्कोर';

  @override
  String get noStatsYet => 'अभी कोई स्टैट्स नहीं';

  @override
  String get totalEntries => 'कुल एंट्री';

  @override
  String get episodesWatched => 'देखे गए एपिसोड';

  @override
  String get daysWatched => 'देखे गए दिन';

  @override
  String get volumesRead => 'पढ़े गए वॉल्यूम';

  @override
  String get standardDeviation => 'स्टैंडर्ड डेविएशन';

  @override
  String get showMore => 'और दिखाओ';

  @override
  String get followsYou => 'तुम्हें फ़ॉलो करता है';

  @override
  String get nobodyYet => 'अभी कोई नहीं';

  @override
  String get logInToLike => 'लाइक करने के लिए लॉग इन करो';

  @override
  String get failedToLikeActivity => 'एक्टिविटी लाइक नहीं हो पाई';

  @override
  String get deleteActivityConfirm => 'एक्टिविटी डिलीट करें?';

  @override
  String get deletedActivity => 'एक्टिविटी डिलीट हो गई';

  @override
  String get failedToDeleteActivity => 'एक्टिविटी डिलीट नहीं हो पाई';

  @override
  String get subscribed => 'सब्सक्राइब हो गया';

  @override
  String get unsubscribed => 'अनसब्सक्राइब हो गया';

  @override
  String get failedToUpdateSubscription => 'सब्सक्रिप्शन अपडेट नहीं हो पाया';

  @override
  String get edit => 'एडिट';

  @override
  String get delete => 'डिलीट';

  @override
  String get likedBy => 'इन्होंने लाइक किया';

  @override
  String get follow => 'फ़ॉलो करो';

  @override
  String get nameCopied => 'नाम कॉपी हो गया';

  @override
  String get followsEachOther => 'एक-दूसरे को फ़ॉलो करते हैं';

  @override
  String get unfollow => 'अनफ़ॉलो करो';

  @override
  String get userIdCopied => 'यूज़र ID कॉपी हो गई';

  @override
  String get shareProfile => 'प्रोफ़ाइल शेयर करो';

  @override
  String get copyUserId => 'यूज़र ID कॉपी करो';

  @override
  String get failedToDelete => 'डिलीट नहीं हो पाया';

  @override
  String get failedToLike => 'लाइक नहीं हो पाया';

  @override
  String get replies => 'रिप्लाई';

  @override
  String get reply => 'रिप्लाई करो';

  @override
  String get noRepliesYet => 'अभी कोई रिप्लाई नहीं';

  @override
  String get favouriteAnime => 'फ़ेवरेट एनीमे';

  @override
  String get favouriteManga => 'फ़ेवरेट मंगा';

  @override
  String get favouriteCharacters => 'फ़ेवरेट किरदार';

  @override
  String get favouriteStaff => 'फ़ेवरेट स्टाफ़';

  @override
  String get favouriteStudios => 'फ़ेवरेट स्टूडियो';

  @override
  String get noFavouritesYet => 'अभी कोई फ़ेवरेट नहीं';

  @override
  String get yourStory => 'तुम्हारी स्टोरी';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड में कॉपी हो गया';

  @override
  String get justNow => 'अभी-अभी';

  @override
  String get openImage => 'इमेज खोलो';

  @override
  String get hideSpoiler => 'स्पॉइलर छुपाओ';

  @override
  String get showSpoiler => 'स्पॉइलर दिखाओ';

  @override
  String get status => 'स्टेटस';

  @override
  String get score => 'स्कोर';

  @override
  String get started => 'शुरू किया';

  @override
  String get completed => 'पूरा किया';

  @override
  String get private => 'प्राइवेट';

  @override
  String get hideFromStatusLists => 'स्टेटस लिस्ट से छुपाओ';

  @override
  String get totalRepeats => 'कुल रिपीट';

  @override
  String get other => 'दूसरे';

  @override
  String get customLists => 'कस्टम लिस्ट';

  @override
  String get activeDays => 'एक्टिव दिन';

  @override
  String get longestStreak => 'सबसे लंबी स्ट्रीक';

  @override
  String get currentStreak => 'मौजूदा स्ट्रीक';

  @override
  String get tapOrHoverDay => 'किसी दिन पर टैप करो या होवर करो';

  @override
  String get less => 'कम';

  @override
  String get more => 'ज़्यादा';

  @override
  String epIn(int ep, String time) {
    return 'एपिसोड $ep $time में';
  }

  @override
  String get sectionLoading => 'लोड हो रहा है';

  @override
  String get querySize => 'क्वेरी साइज़';

  @override
  String get querySizeDesc =>
      'एक बड़ी क्वेरी एक ही रिक्वेस्ट में हर रो (और पूरी प्रोफ़ाइल) लोड कर देती है। स्प्लिट क्वेरी हर रो या प्रोफ़ाइल के हिस्से के लिए छोटी रिक्वेस्ट भेजती हैं: हर एक तेज़ होती है और हिस्से आते ही दिखने लगते हैं।';

  @override
  String get oneBig => 'एक बड़ी';

  @override
  String get split => 'स्प्लिट';

  @override
  String get sectionSocial => 'सोशल';

  @override
  String get systemNotifications => 'सिस्टम नोटिफ़िकेशन';

  @override
  String get feedLayout => 'फ़ीड लेआउट';

  @override
  String sectionsShown(int shown, int total) {
    return '$total में से $shown दिख रहे हैं — चुनने और क्रम बदलने के लिए टैप करो';
  }

  @override
  String labelSections(String label) {
    return '$label सेक्शन';
  }

  @override
  String get accountOptions => 'अकाउंट ऑप्शन';

  @override
  String get anilistAccountOptions => 'AniList अकाउंट ऑप्शन';

  @override
  String get sectionPrivacy => 'प्राइवेसी';

  @override
  String get hidePrivateEntries => 'प्राइवेट एंट्री छुपाओ';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList पर प्राइवेट मार्क की हुई एंट्री को फ़ीड से बाहर रखो';

  @override
  String get anilistExcludeList => 'अपनी लिस्ट छिपाओ';

  @override
  String get anilistExcludeListDesc =>
      'जो टाइटल पहले से तुम्हारी AniList पर हैं, उन्हें एनीमे और मंगा पेज से हटा दो';

  @override
  String get anilistProfile => 'AniList प्रोफ़ाइल';

  @override
  String get refreshFromAnilist => 'AniList से रीफ़्रेश करो';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList सेटिंग्स अपडेट नहीं हो पाईं';

  @override
  String get sectionNames => 'नाम';

  @override
  String get titleLanguage => 'टाइटल की भाषा';

  @override
  String get titleLanguageDesc =>
      'टाइटल हर जगह कैसे लिखे जाएँ, जैसे Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'स्टाफ़ और किरदारों के नाम';

  @override
  String get sectionLists => 'लिस्ट';

  @override
  String get scoreFormat => 'स्कोर फ़ॉर्मेट';

  @override
  String get sortListsBy => 'लिस्ट इस हिसाब से सॉर्ट करो';

  @override
  String labelCustomLists(String label) {
    return '$label कस्टम लिस्ट';
  }

  @override
  String customListsCount(int count) {
    return '$count लिस्ट — जोड़ने या हटाने के लिए टैप करो';
  }

  @override
  String get mergeActivities => 'एक्टिविटी मर्ज करो';

  @override
  String minutesCount(int count) {
    return '$count मिनट';
  }

  @override
  String get timezone => 'टाइमज़ोन';

  @override
  String get notSet => 'सेट नहीं है';

  @override
  String get airingNotifications => 'एयरिंग नोटिफ़िकेशन';

  @override
  String get airingNotificationsDesc =>
      'जिस शो को फ़ॉलो करते हो उसका एपिसोड एयर होने पर बताओ';

  @override
  String get displayAdultContent => 'एडल्ट कंटेंट दिखाओ';

  @override
  String get displayAdultContentDesc =>
      'ब्राउज़, सर्च और फ़ीड में 18+ टाइटल शामिल करो';

  @override
  String get restrictMessages => 'मैसेज सिर्फ़ फ़ॉलोइंग तक सीमित रखो';

  @override
  String get restrictMessagesDesc =>
      'सिर्फ़ जिन्हें तुम फ़ॉलो करते हो वही तुम्हें मैसेज कर सकते हैं';

  @override
  String get sectionServices => 'सर्विस';

  @override
  String get novel => 'नॉवेल';

  @override
  String labelService(String label) {
    return '$label सर्विस';
  }

  @override
  String nameSettings(String name) {
    return '$name सेटिंग्स';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name एक्सटेंशन ब्रिज के ऑप्शन';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name शुरू नहीं हो पाया: $error';
  }

  @override
  String get importLists => 'लिस्ट इम्पोर्ट करो';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi या Kotatsu बैकअप से';

  @override
  String get exportLists => 'लिस्ट एक्सपोर्ट करो';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon या Kotatsu बैकअप में';

  @override
  String get sectionBrowse => 'ब्राउज़';

  @override
  String get readingTab => 'रीडिंग टैब';

  @override
  String get readingTabDesc => 'तीसरे टैब में कौन से एक्सटेंशन दिखें';

  @override
  String get firstTab => 'पहला टैब';

  @override
  String get firstTabDesc =>
      'पहला टैब कौन सा एक्सटेंशन दिखाता है. एनीमे को बार से हटाने के लिए यहां मंगा चुनें और रीडिंग टैब पर उपन्यास चुनें';

  @override
  String get novelExtensions => 'उपन्यास विस्तार';

  @override
  String get defaultFeed => 'डिफ़ॉल्ट फ़ीड';

  @override
  String get defaultFeedDesc => 'सोर्स किस लिस्ट के साथ खुले';

  @override
  String noServiceSupports(String type) {
    return 'कोई सर्विस $type को सपोर्ट नहीं करती';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed में से $loaded सोर्स लोड हो रहे हैं';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'यहाँ कोई एक्सटेंशन सर्विस $type को सपोर्ट नहीं करती।';
  }

  @override
  String get loadDataFrom => 'यहाँ से डेटा लोड करो';

  @override
  String noInstalledSourcesYet(String type) {
    return 'अभी कोई $type सोर्स इंस्टॉल नहीं है।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name का एक्सटेंशन इंस्टॉल नहीं है';
  }

  @override
  String get thisSource => 'ये सोर्स';

  @override
  String failedToAddRepository(String error) {
    return 'रिपॉज़िटरी जोड़ नहीं पाए: $error';
  }

  @override
  String installedType(String type) {
    return 'इंस्टॉल किए हुए $type';
  }

  @override
  String availableType(String type) {
    return 'उपलब्ध $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'कोई $type एक्सटेंशन इंस्टॉल नहीं है';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'कोई $type एक्सटेंशन उपलब्ध नहीं है';
  }

  @override
  String get nothingToShowYet => 'अभी दिखाने को कुछ नहीं है';

  @override
  String get addTitlesHint =>
      'अपनी लिस्ट में कुछ टाइटल जोड़ो, वो यहाँ दिखेंगे।';

  @override
  String get couldntLoad => 'लोड नहीं हो पाया';

  @override
  String get progressStyleHint =>
      'पिल और बार पोस्टर के ऊपर आते हैं; \"बाहर\" वही काउंट सादे टेक्स्ट में दिखाता है — कोई एक चुनो।';

  @override
  String get nixManagedUpdate =>
      'ये बिल्ड Nix से मैनेज होता है — यहाँ से अपडेट करने की जगह अपने flake पर \"nix flake update\" चलाओ और दोबारा बिल्ड करो';

  @override
  String autoUpdateFailed(String error) {
    return 'ऑटोमैटिक अपडेट फ़ेल हो गया ($error) — इसकी जगह डाउनलोड पेज खोल रहे हैं';
  }

  @override
  String get unknownPreference => 'अनजान प्रेफ़रेंस';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ये प्रेफ़रेंस टाइप सपोर्टेड नहीं है $type';
  }

  @override
  String get notYetReleased => 'अभी रिलीज़ नहीं हुआ';

  @override
  String get notStarted => 'अभी शुरू नहीं हुआ';

  @override
  String get country => 'देश';

  @override
  String get sort => 'सॉर्ट';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon या Kotatsu का बैकअप चुनो';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi या Kotatsu से अपनी लाइब्रेरी ले आओ। टाइटल, कवर, प्रोग्रेस और कैटेगरी सब रहती हैं।';

  @override
  String get chooseBackupFile => 'बैकअप फ़ाइल चुनो';

  @override
  String importAnimeCount(int count) {
    return '$count एनीमे इम्पोर्ट करो';
  }

  @override
  String importMangaCount(int count) {
    return '$count मंगा इम्पोर्ट करो';
  }

  @override
  String get mergeWithExisting => 'मौजूदा लिस्ट के साथ मर्ज करो';

  @override
  String get mergeWithExistingDesc =>
      'जो पहले से है वो रखता है; बंद करने पर मैचिंग टाइटल बदल जाते हैं';

  @override
  String get chooseAnother => 'दूसरी चुनो';

  @override
  String get import => 'इम्पोर्ट';

  @override
  String animeCount(int count) {
    return '$count एनीमे';
  }

  @override
  String mangaCount(int count) {
    return '$count मंगा';
  }

  @override
  String get chooseSaveLocation => 'चुनो कि बैकअप कहाँ सेव करना है';

  @override
  String savedPath(String path) {
    return '$path में सेव हो गया';
  }

  @override
  String exportFailed(String error) {
    return 'एक्सपोर्ट फ़ेल हो गया: $error';
  }

  @override
  String get nothingInLocalLists => 'अभी तुम्हारी लोकल लिस्ट में कुछ नहीं है।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'तुम्हारी लोकल लिस्ट से $anime एनीमे और $manga मंगा एक्सपोर्ट होते हैं। Kotatsu सिर्फ़ मंगा सपोर्ट करता है।';
  }

  @override
  String get saveToFolder => 'फ़ोल्डर में सेव करो';

  @override
  String get formatAnimeManga => 'एनीमे और मंगा · .tachibk';

  @override
  String get formatMangaTachibk => 'सिर्फ़ मंगा · .tachibk';

  @override
  String get formatMangaZip => 'सिर्फ़ मंगा · .zip';

  @override
  String get genres => 'जॉनर';

  @override
  String get relations => 'रिलेशन';

  @override
  String get recommendations => 'रिकमेंडेशन';

  @override
  String get openings => 'ओपनिंग';

  @override
  String get endings => 'एंडिंग';

  @override
  String get background => 'बैकग्राउंड';

  @override
  String get links => 'लिंक';

  @override
  String get rank => 'रैंक';

  @override
  String get members => 'मेंबर';

  @override
  String get favorites => 'फ़ेवरेट';

  @override
  String get episodes => 'एपिसोड';

  @override
  String get chapters => 'चैप्टर';

  @override
  String get volumes => 'वॉल्यूम';

  @override
  String get format => 'फ़ॉर्मेट';

  @override
  String get source => 'सोर्स';

  @override
  String get duration => 'अवधि';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes मिनट प्रति एपिसोड';
  }

  @override
  String get rating => 'रेटिंग';

  @override
  String get studio => 'स्टूडियो';

  @override
  String get serialization => 'सीरियलाइज़ेशन';

  @override
  String get season => 'सीज़न';

  @override
  String get year => 'वर्ष';

  @override
  String get filterAny => 'कोई भी';

  @override
  String get broadcast => 'ब्रॉडकास्ट';

  @override
  String get aired => 'एयर हुआ';

  @override
  String get published => 'पब्लिश हुआ';

  @override
  String get popularity => 'पॉपुलैरिटी';

  @override
  String get community => 'कम्युनिटी';

  @override
  String get watching => 'देख रहे हैं';

  @override
  String get reading => 'पढ़ रहे हैं';

  @override
  String get dropped => 'ड्रॉप किया';

  @override
  String get unfinished => 'अधूरा';

  @override
  String get planned => 'प्लान किया';

  @override
  String get trailers => 'ट्रेलर';

  @override
  String get ratings => 'रेटिंग';

  @override
  String get originalTitle => 'ओरिजिनल';

  @override
  String get titleLabel => 'टाइटल';

  @override
  String get votes => 'वोट';

  @override
  String get watchedStat => 'देखा';

  @override
  String get runtime => 'रनटाइम';

  @override
  String get director => 'डायरेक्टर';

  @override
  String get network => 'नेटवर्क';

  @override
  String get certification => 'सर्टिफ़िकेशन';

  @override
  String get airs => 'एयर होता है';

  @override
  String get budget => 'बजट';

  @override
  String get revenue => 'रेवेन्यू';

  @override
  String get released => 'रिलीज़ हुआ';

  @override
  String get tags => 'टैग';

  @override
  String get author => 'ऑथर';

  @override
  String get born => 'जन्म';

  @override
  String get died => 'मर गया';

  @override
  String get birthplace => 'जन्मस्थान';

  @override
  String get department => 'विभाग';

  @override
  String get website => 'वेबसाइट';

  @override
  String get established => 'स्थापना';

  @override
  String get manhwa => 'मनहवा';

  @override
  String get manhua => 'मनहुआ';

  @override
  String get novels => 'नॉवेल';

  @override
  String get thisMonth => 'इस महीने';

  @override
  String get movies => 'मूवी';

  @override
  String get shows => 'शो';

  @override
  String get moviesWatched => 'फिल्में देखी गईं';

  @override
  String get showsWatched => 'देखे गए शो';

  @override
  String get moviesCollected => 'फ़िल्में एकत्रित की गईं';

  @override
  String get showsCollected => 'एकत्रित शो';

  @override
  String get rewatching => 'दोबारा देख रहे हैं';

  @override
  String get rereading => 'दोबारा पढ़ रहे हैं';

  @override
  String get watchedStatus => 'देखा';

  @override
  String get planning => 'प्लानिंग';

  @override
  String get paused => 'पॉज़';

  @override
  String get watch => 'देखो';

  @override
  String get read => 'पढ़ो';

  @override
  String get finished => 'ख़त्म';

  @override
  String get releasing => 'रिलीज़ हो रहा है';

  @override
  String get cancelled => 'कैंसल हुआ';

  @override
  String get hiatus => 'हायटस';

  @override
  String get remove => 'हटाओ';

  @override
  String syncToService(String service) {
    return '$service में सिंक करो';
  }

  @override
  String syncedToService(String service) {
    return '$service में सिंक हो गया';
  }

  @override
  String get latestReleases => 'लेटेस्ट रिलीज़';

  @override
  String get topRated => 'टॉप रेटेड';

  @override
  String localSection(String title) {
    return '$title · लोकल';
  }

  @override
  String get localEntryNote =>
      'ये टाइटल सिर्फ़ इस डिवाइस की लोकल लिस्ट में है। यहाँ एडिटिंग बंद है क्योंकि ये तुम्हारे अकाउंट की लिस्ट से टकरा सकती है; हटा फिर भी सकते हो।';

  @override
  String get cardPresetPoster => 'पोस्टर';

  @override
  String get cardPresetCard => 'कार्ड';

  @override
  String get cardPresetCozy => 'कोज़ी';

  @override
  String get sortTopRated => 'टॉप रेटेड';

  @override
  String get sortMostPopular => 'सबसे पॉपुलर';

  @override
  String get sortTrending => 'ट्रेंडिंग';

  @override
  String get sortNewest => 'सबसे नया';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'सबसे ज़्यादा फ़ेवरेट';

  @override
  String get anyCountry => 'कोई भी देश';

  @override
  String get orderScore => 'स्कोर';

  @override
  String get orderTitle => 'टाइटल';

  @override
  String get orderLastUpdated => 'आख़िरी अपडेट';

  @override
  String get orderLastAdded => 'आख़िरी बार जोड़ा';

  @override
  String get never => 'कभी नहीं';

  @override
  String get always => 'हमेशा';

  @override
  String get scorePoint100 => '100 पॉइंट';

  @override
  String get scorePoint10Decimal => '10 पॉइंट डेसिमल';

  @override
  String get scorePoint10 => '10 पॉइंट';

  @override
  String get scorePoint5 => '5 स्टार';

  @override
  String get scorePoint3 => '3 पॉइंट स्माइली';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे',
      one: '1 घंटा',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count हफ़्ते',
      one: '1 हफ़्ता',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'रिज़्यूम करो';

  @override
  String get resumeSourceMissing =>
      'रिज़्यूम करने के लिए इस टाइटल का सोर्स इंस्टॉल करो';

  @override
  String get resumeRemove => 'रिज़्यूम से हटाओ';

  @override
  String resumeAt(String time) {
    return '$time बाकी';
  }

  @override
  String resumePage(int page, int total) {
    return 'पेज $page / $total';
  }

  @override
  String get continueWatching => 'देखना जारी रखो';

  @override
  String splitSection(String section, String kind) {
    return '$section · $kind';
  }

  @override
  String get continueReading => 'पढ़ना जारी रखो';

  @override
  String get favouriteAnimeSection => 'फ़ेवरेट एनीमे';

  @override
  String get favouriteMangaSection => 'फ़ेवरेट मंगा';

  @override
  String get plannedAnime => 'प्लान किए एनीमे';

  @override
  String get plannedManga => 'प्लान किए मंगा';

  @override
  String get completedAnime => 'पूरे किए एनीमे';

  @override
  String get completedManga => 'पूरे किए मंगा';

  @override
  String get hiddenMedia => 'छुपा हुआ मीडिया';

  @override
  String get recentUpdates => 'हाल के अपडेट';

  @override
  String get trendingNow => 'अभी ट्रेंडिंग';

  @override
  String get popularThisSeason => 'इस सीज़न के पॉपुलर';

  @override
  String get trendingMovies => 'ट्रेंडिंग मूवी';

  @override
  String get topRatedSeries => 'टॉप रेटेड सीरीज़';

  @override
  String get mostFavouriteSeries => 'सबसे फ़ेवरेट सीरीज़';

  @override
  String get popularAnime => 'पॉपुलर एनीमे';

  @override
  String get trendingManhwa => 'ट्रेंडिंग मनहवा';

  @override
  String get trendingNovels => 'ट्रेंडिंग नॉवेल';

  @override
  String get topRatedManga => 'टॉप रेटेड मंगा';

  @override
  String get mostFavouriteManga => 'सबसे फ़ेवरेट मंगा';

  @override
  String get popularManga => 'पॉपुलर मंगा';

  @override
  String get topMovies => 'टॉप मूवी';

  @override
  String get topOna => 'टॉप ONA';

  @override
  String get topOva => 'टॉप OVA';

  @override
  String get mostPopular => 'सबसे पॉपुलर';

  @override
  String get mostFavourite => 'सबसे फ़ेवरेट';

  @override
  String get upcoming => 'आने वाले';

  @override
  String get topManga => 'टॉप मंगा';

  @override
  String get topManhwa => 'टॉप मनहवा';

  @override
  String get topManhua => 'टॉप मनहुआ';

  @override
  String get topNovels => 'टॉप नॉवेल';

  @override
  String get topOneShots => 'टॉप वन-शॉट';

  @override
  String get trendingMoviesToday => 'आज की ट्रेंडिंग मूवी';

  @override
  String get trendingShowsToday => 'आज के ट्रेंडिंग शो';

  @override
  String get trendingMoviesWeek => 'इस हफ़्ते की ट्रेंडिंग मूवी';

  @override
  String get trendingShowsWeek => 'इस हफ़्ते के ट्रेंडिंग शो';

  @override
  String get mostWatchedMoviesMonth => 'इस महीने सबसे ज़्यादा देखी गई मूवी';

  @override
  String get mostWatchedShowsMonth => 'इस महीने सबसे ज़्यादा देखे गए शो';

  @override
  String get trendingThisWeek => 'इस हफ़्ते ट्रेंडिंग';

  @override
  String get mostWatchedThisMonth => 'इस महीने सबसे ज़्यादा देखे गए';

  @override
  String get repoLinksAdded => 'रिपॉज़िटरी लिंक सफ़लता से जुड़ गए!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust।';
  }

  @override
  String get errorGettingAnilistData => 'AniList से डेटा लाने में एरर।';

  @override
  String get navInfo => 'जानकारी';

  @override
  String get navComments => 'कमेंट';

  @override
  String get playerNotAvailable => 'प्लेयर अभी उपलब्ध नहीं है';

  @override
  String deepLinkInitialError(String error) {
    return 'शुरुआती डीप लिंक लाने में एरर: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'लिंक खोलने में एरर: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ये लिंक नहीं खुल सकता: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'लिंक खोलने में एरर: $error';
  }

  @override
  String get forReleasingTitles => 'अभी रिलीज़ हो रहे टाइटल के लिए';

  @override
  String get progress => 'प्रोग्रेस';

  @override
  String get notes => 'नोट्स';

  @override
  String serviceNotFound(String id) {
    return 'सर्विस \"$id\" नहीं मिली';
  }

  @override
  String get glassEffectEnabled => 'ग्लास इफ़ेक्ट ऑन हो गया';

  @override
  String get glassEffectDisabled => 'ग्लास इफ़ेक्ट बंद हो गया';

  @override
  String get materialYouEnabled => 'Material You ऑन हो गया';

  @override
  String get materialYouDisabled => 'Material You बंद हो गया';

  @override
  String get darkModeEnabled => 'डार्क मोड ऑन हो गया';

  @override
  String get darkModeDisabled => 'डार्क मोड बंद हो गया';

  @override
  String get animeList => 'एनीमे लिस्ट';

  @override
  String get mangaList => 'मंगा लिस्ट';

  @override
  String ownerAnimeList(String owner) {
    return '$owner की एनीमे लिस्ट';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner की मंगा लिस्ट';
  }

  @override
  String get loadingList => 'लिस्ट लोड हो रही है';

  @override
  String get earlier => 'पहले का';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन पहले',
      one: '1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घंटे पहले',
      one: '1 घंटा पहले',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनट पहले',
      one: '1 मिनट पहले',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count मिनट पहले';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count घंटे पहले';
  }

  @override
  String daysAgoShort(int count) {
    return '$count दिन पहले';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count हफ़्ते पहले';
  }

  @override
  String get couldntLoadSource => 'ये सोर्स लोड नहीं हो पाया';

  @override
  String get followers => 'फ़ॉलोअर';

  @override
  String couldntLoadTitle(String title) {
    return '$title लोड नहीं हो पाया';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ये प्रोफ़ाइल लोड नहीं हो पाई';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get feed => 'फ़ीड';

  @override
  String get stats => 'स्टैट्स';

  @override
  String get received => 'मिले हुए';

  @override
  String get sent => 'भेजे हुए';

  @override
  String get global => 'ग्लोबल';

  @override
  String get couldntLoadPage => 'ये पेज लोड नहीं हो पाया';

  @override
  String get couldntLoadAllDetails => 'सारी डिटेल लोड नहीं हो पाईं';

  @override
  String get series => 'सीरीज़';

  @override
  String get studios => 'स्टूडियो';

  @override
  String get users => 'यूज़र';

  @override
  String repositoriesTitle(String type) {
    return '$type रिपॉज़िटरी';
  }

  @override
  String get repositoryUrl => 'रिपॉज़िटरी URL';

  @override
  String get downloadingRepository => 'रिपॉज़िटरी डाउनलोड हो रही है…';

  @override
  String get noRepositories => 'कोई रिपॉज़िटरी नहीं जोड़ी गई';

  @override
  String repoExtensionsCount(String count) {
    return '$count एक्सटेंशन';
  }

  @override
  String get searchExtensions => 'एक्सटेंशन खोजो...';

  @override
  String deletePluginTitle(String name) {
    return '$name डिलीट करें?';
  }

  @override
  String get deletePluginMessage => 'पक्का इस प्लगइन को डिलीट करना है?';

  @override
  String pluginDeleted(String name) {
    return '$name डिलीट हो गया';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name कॉन्फ़िगर की गई रिपॉज़िटरी में उपलब्ध नहीं है';
  }

  @override
  String get pluginFetchFailed => 'प्लगइन की जानकारी नहीं ला पाए';

  @override
  String installPluginTitle(String name) {
    return '$name इंस्टॉल करो';
  }

  @override
  String sizeLabel(String size) {
    return 'साइज़: $size';
  }

  @override
  String get installedState => 'इंस्टॉल है';

  @override
  String updatePluginTitle(String name) {
    return 'अद्यतन$name';
  }

  @override
  String get errorLabel => 'एरर:';

  @override
  String get stackTraceDetails => 'डिटेल (स्टैक ट्रेस)';

  @override
  String get shareLogFile => 'लॉग फ़ाइल शेयर करो';

  @override
  String get copyLogs => 'लॉग कॉपी करो';

  @override
  String noListToEdit(String service) {
    return '$service में एडिट करने के लिए कोई लिस्ट नहीं है';
  }

  @override
  String get couldNotReadFile => 'वो फ़ाइल नहीं पढ़ पाए';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime एनीमे और $manga मंगा इम्पोर्ट हो गए';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count पहले से मौजूद';
  }

  @override
  String get airingNow => 'अभी एयर हो रहा है';

  @override
  String get topRatedMovies => 'टॉप रेटेड मूवी';

  @override
  String get koreanDramas => 'कोरियन ड्रामा';

  @override
  String get chineseDramas => 'चाइनीज़ ड्रामा';

  @override
  String get japaneseDramas => 'जापानी ड्रामा';

  @override
  String get thaiDramas => 'थाई ड्रामा';

  @override
  String get turkishDramas => 'तुर्किश ड्रामा';

  @override
  String get miniSeries => 'मिनी सीरीज़';

  @override
  String get topRatedShows => 'टॉप रेटेड शो';

  @override
  String get recommendedSection => 'रिकमेंडेड';

  @override
  String get syncRow => 'लिस्ट सिंक';

  @override
  String get syncRowDesc =>
      'एक सर्विस की लिस्ट को अपने बाकी अकाउंट पर कॉपी करो';

  @override
  String get syncTitle => 'सिंक';

  @override
  String get syncMainService => 'मेन सर्विस';

  @override
  String get syncMainServiceDesc =>
      'इसकी लिस्ट ही सही मानी जाती है; बाकी हर साइन-इन सर्विस इससे मैच करने के लिए अपडेट होती है';

  @override
  String get syncAuto => 'ऑटो सिंक';

  @override
  String get syncAutoDesc =>
      'ऐप खुलने पर और हर 30 मिनट में बैकग्राउंड में फ़ेच और सिंक करो';

  @override
  String get syncAddMissing => 'छूटी हुई एंट्री जोड़ो';

  @override
  String get syncAddMissingDesc =>
      'वो एंट्री भी जोड़ो जो दूसरी सर्विस में अभी नहीं हैं';

  @override
  String syncServiceOn(String name) {
    return '$name के साथ सिंक करें';
  }

  @override
  String get syncDelete => 'जो मुख्य सेवा में नहीं है उसे हटा दें';

  @override
  String get syncDeleteDesc =>
      'अन्य सेवाओं से प्रविष्टियाँ हटाएँ जो मुख्य सूची में नहीं हैं। केवल वही प्रविष्टियाँ हटा दी जाती हैं जिनका किसी शीर्षक से मिलान किया जा सकता है, इसलिए सिमकल फिल्में और श्रृंखला जैसी चीजें बनी रहती हैं';

  @override
  String get syncDeleteTitle => 'प्रविष्टियाँ हटाएँ?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries',
      one: '1 entry',
    );
    return '$_temp0 that are not on your main list will be deleted from the other services. This cannot be undone।';
  }

  @override
  String get syncDeleteAction => 'हटाएँ';

  @override
  String get syncToDelete => 'हटाना';

  @override
  String get syncDeletedNote => 'हटा दिया जाएगा';

  @override
  String syncWillRemove(int count, String name) {
    return '$count को $name से हटा दिया जाएगा';
  }

  @override
  String get syncOnlyForward => 'आगे की प्रोग्रेस रखो';

  @override
  String get syncOnlyForwardDesc =>
      'जो सर्विस पहले से आगे है उसकी प्रोग्रेस कम मत करो';

  @override
  String get animePlanetWontWatch => 'नहीं देखूंगा';

  @override
  String get animePlanetWontRead => 'नहीं पढूंगा';

  @override
  String get animePlanetAlreadyOnList => 'इस सूची में पहले से ही है';

  @override
  String get animePlanetNewList => 'नई सूची का नाम';

  @override
  String get syncPrivate => 'निजी प्रविष्टियाँ';

  @override
  String get syncPrivateDesc =>
      'उन प्रविष्टियों का क्या करें जिन्हें आप निजी रखते हैं? निजी विकल्प वाली सेवा उन्हें निजी बना देती है; अन्य लोग उन्हें सार्वजनिक रूप से दिखाएंगे';

  @override
  String get syncPrivateModeAsk => 'पूछो';

  @override
  String get syncPrivateModeSync => 'उन्हें सिंक करें';

  @override
  String get syncPrivateModeSkip => 'उन्हें छोड़ें';

  @override
  String get syncPrivateTitle => 'निजी प्रविष्टियाँ';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries are private',
      one: '1 entry is private',
    );
    return '$_temp0. Services with a private option (AniList, Kitsu, MangaBaka) will get them as private; the other services have no private option and would show them publicly. Sync them? Your answer is remembered; change it under Sync options।';
  }

  @override
  String get syncPrivateInclude => 'उन्हें सिंक करें';

  @override
  String get syncPrivateSkip => 'उन्हें छोड़ें';

  @override
  String get syncFetch => 'फ़ेच करो';

  @override
  String get syncFetchAgain => 'दोबारा फ़ेच करो';

  @override
  String get syncAll => 'सब सिंक करो';

  @override
  String get syncStop => 'रुको';

  @override
  String get syncResume => 'रिज़्यूम करो';

  @override
  String get syncNothingToSync => 'इस टाइप के लिए ये सर्विस सिंक नहीं हो सकती';

  @override
  String get syncNoTargets => 'सिंक करने के लिए किसी और सर्विस में साइन इन करो';

  @override
  String get syncLoadingMap => 'ID मैपिंग लोड हो रही है';

  @override
  String get syncComparing => 'लिस्ट मिलाई जा रही हैं';

  @override
  String get syncIntro =>
      'कोई मेन सर्विस चुनो और फ़ेच दबाओ। हर सर्विस से तुम्हारी लिस्ट एक बार मँगाई जाती है, फिर मेन वाली से मिलाई जाती है।';

  @override
  String get syncStateSynced => 'सिंक हो गया';

  @override
  String get syncStateOutdated => 'सिंक नहीं है';

  @override
  String get syncStateMissing => 'लिस्ट में नहीं';

  @override
  String get syncStateUnmapped => 'कोई मैच नहीं';

  @override
  String syncPaused(String time) {
    return 'रेट लिमिट का इंतज़ार, $time में दोबारा शुरू होगा';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count सिर्फ़ $name पर हैं, छेड़े नहीं गए';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total में से $done';
  }

  @override
  String get syncNothingHere => 'दिखाने को कुछ नहीं';

  @override
  String syncLimits(int used, int max, String window) {
    return 'इस $window में $max में से $used रिक्वेस्ट इस्तेमाल हुईं';
  }

  @override
  String get syncMinute => 'मिनट';

  @override
  String get syncDay => 'दिन';

  @override
  String get syncNotInList => 'अभी लिस्ट में नहीं';

  @override
  String get syncCleared => 'प्लान हटा दिया गया';

  @override
  String get syncClear => 'क्लियर करो';

  @override
  String get syncOptions => 'ऑप्शन';

  @override
  String get syncShared => 'इसकी एंट्री किसी दूसरे आइटम के साथ शेयर होती है';

  @override
  String syncNotFound(String service) {
    return '$service पर नहीं मिला';
  }

  @override
  String syncService(String service, int count) {
    return '$service सिंक करो ($count)';
  }

  @override
  String get syncOnEdit => 'बदलाव तुरंत सिंक करो';

  @override
  String get syncOnEditDesc =>
      'हर प्रोग्रेस अपडेट और लिस्ट एडिट तुरंत अपनी बाकी साइन-इन सर्विस पर भेजो';

  @override
  String syncRemoved(String services) {
    return '$services से हटाया गया';
  }

  @override
  String syncPushed(String services) {
    return '$services में सिंक हो गया';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'रेट लिमिट लग गई, थोड़ी देर में दोबारा try करो';

  @override
  String get syncAhead => 'जो भी आगे हो';

  @override
  String get syncAheadDesc =>
      'टू-वे: हर टाइटल के लिए जो एंट्री सबसे आगे है वही जीतती है और बाकी सभी सर्विस में कॉपी हो जाती है';

  @override
  String syncAheadFrom(String service) {
    return '$service से';
  }

  @override
  String get syncConfirm => 'सिंक से पहले रिव्यू करो';

  @override
  String get syncConfirmDesc =>
      'दिखाओ कि सब सिंक करो से क्या बदलेगा और कितनी रिक्वेस्ट लगेंगी';

  @override
  String get syncPreviewTitle => 'सिंक के लिए तैयार';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates अपडेट, $adds जोड़ने हैं';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'करीब $count रिक्वेस्ट';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID को पहले लुकअप चाहिए';
  }

  @override
  String get syncPreviewNothing => 'बदलने को कुछ नहीं';

  @override
  String get syncStart => 'शुरू करो';

  @override
  String get syncRetry => 'दोबारा try करो';

  @override
  String get syncSkip => 'ये आइटम स्किप करो';

  @override
  String get syncInclude => 'ये आइटम फिर से शामिल करो';

  @override
  String get syncSkippedLabel => 'स्किप किया';

  @override
  String get syncChanges => 'फ़र्क';

  @override
  String get syncChangeStatus => 'स्टेटस';

  @override
  String get syncChangeProgress => 'प्रोग्रेस';

  @override
  String get syncChangeScore => 'स्कोर';

  @override
  String get syncChangeDates => 'तारीख़ें';

  @override
  String get syncChangeRepeat => 'रीवॉच काउंट';

  @override
  String get syncFailedReason => 'क्यों फ़ेल हुआ';

  @override
  String get syncSkippedHint =>
      'स्किप किए आइटम को छेड़ा नहीं जाता, दोबारा फ़ेच करने के बाद भी';

  @override
  String get commentsRules => 'कमेंट के नियम';

  @override
  String get commentsRulesBody =>
      'कोई भी नियम तोड़ा = तुम बाहर\n\n1. कोई नस्लवाद, भेदभाव या हेट स्पीच नहीं\n2. कोई स्पैम या सेल्फ़-प्रमोशन नहीं\n3. NSFW कंटेंट बिल्कुल नहीं\n4. सिर्फ़ अंग्रेज़ी, कोई अपवाद नहीं\n5. किसी की नक़ल, परेशान करना या गाली-गलौज नहीं\n6. कोई ग़ैरक़ानूनी कंटेंट नहीं और किसी भी फ़ैंडम के लिए बेहद बदतमीज़ी नहीं\n7. रिपॉज़िटरी या एक्सटेंशन मत माँगो, न शेयर करो\n8. स्पॉइलर सिर्फ़ स्पॉइलर टैग और वॉर्निंग के साथ\n9. नाबालिग किरदारों पर कोई सेक्शुअल या अनुचित कमेंट नहीं\n10. अगर ग़लत है, तो पोस्ट मत करो!';

  @override
  String get commentsRulesAccept => 'समझ गया';

  @override
  String get commentsSortNewest => 'सबसे नया';

  @override
  String get commentsSortOldest => 'सबसे पुराना';

  @override
  String get commentsSortHighest => 'सबसे ऊँची रेटिंग';

  @override
  String get commentsSortLowest => 'सबसे कम रेटिंग';

  @override
  String commentsEpisodeShort(int number) {
    return 'एपि. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'चैप. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'एपिसोड से फ़िल्टर करो';

  @override
  String get commentsFilterChapterTitle => 'चैप्टर से फ़िल्टर करो';

  @override
  String get commentsFilterTagTitle => 'एपिसोड या चैप्टर नंबर डालो';

  @override
  String get commentsFilterHint => 'नंबर';

  @override
  String get commentsFilterApply => 'फ़िल्टर';

  @override
  String get commentsFilterClear => 'सब दिखाओ';

  @override
  String get commentsPlaceholder => 'कमेंट जोड़ो…';

  @override
  String commentsReplyingTo(String name) {
    return '$name को रिप्लाई कर रहे हो';
  }

  @override
  String get commentsSend => 'भेजो';

  @override
  String get commentsTagButton => 'टैग';

  @override
  String commentsTagTitle(String label) {
    return 'टैग $label (ज़रूरी नहीं)';
  }

  @override
  String get commentsTagEpisode => 'एपिसोड';

  @override
  String get commentsTagChapter => 'चैप्टर';

  @override
  String commentsTagRange(int total) {
    return '१–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label नंबर';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'टैग कुल ($total) से ज़्यादा नहीं हो सकता';
  }

  @override
  String get commentsNoTag => 'कोई टैग नहीं';

  @override
  String get commentsSpoiler => 'स्पॉइलर';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF खोजो';

  @override
  String get commentsGifEmpty => 'कोई GIF नहीं मिला';

  @override
  String get commentsEmptyText => 'कमेंट खाली नहीं हो सकता';

  @override
  String get commentsBannedYou => 'तुम्हें कमेंट करने से बैन किया गया है';

  @override
  String get commentsEdited => 'कमेंट एडिट हो गया';

  @override
  String get commentsDeleted => 'कमेंट डिलीट हो गया';

  @override
  String get commentsDeletedPlaceholder => '[डिलीट हो गया]';

  @override
  String get commentsReported => 'कमेंट रिपोर्ट हो गया';

  @override
  String get commentsUserBanned => 'यूज़र बैन हो गया';

  @override
  String get commentsReport => 'रिपोर्ट करो';

  @override
  String get commentsReportAsk => 'इस कमेंट को मॉडरेटर्स को रिपोर्ट करें?';

  @override
  String get commentsDelete => 'डिलीट करो';

  @override
  String get commentsDeleteAsk => 'ये कमेंट सबके लिए हटा दिया जाएगा।';

  @override
  String get commentsBan => 'बैन करो';

  @override
  String get commentsBanAsk => 'इस यूज़र को कमेंट करने से बैन करें?';

  @override
  String get commentsCopy => 'कॉपी करो';

  @override
  String get commentsViewReply => '1 रिप्लाई देखो';

  @override
  String commentsViewReplies(int count) {
    return '$count रिप्लाई देखो';
  }

  @override
  String get commentsHideReplies => 'रिप्लाई छुपाओ';

  @override
  String get commentsLoadMore => 'और कमेंट लोड करो';

  @override
  String get commentsEmpty => 'अभी कोई कमेंट नहीं। सबसे पहले तुम करो!';

  @override
  String get commentsEmptyFiltered => 'इस फ़िल्टर के लिए कोई कमेंट नहीं';

  @override
  String get commentsSignIn =>
      'कमेंट पढ़ने और लिखने के लिए AniList में साइन इन करो';

  @override
  String get commentsSignInMessage =>
      'कमेंट सभी सर्विस में शेयर होते हैं और तुम्हारा AniList अकाउंट इस्तेमाल करते हैं।';

  @override
  String get commentsUnavailable => 'इस टाइटल के लिए कमेंट उपलब्ध नहीं हैं';

  @override
  String get commentsUnavailableMessage =>
      'इसे किसी AniList एंट्री से मैच नहीं किया जा सका।';

  @override
  String get commentsDisabled => 'कमेंट बंद हैं';

  @override
  String get commentsDisabledMessage =>
      'इन्हें दोबारा सेटिंग्स › जनरल में ऑन कर सकते हो।';

  @override
  String get commentsOffline => 'कमेंट लोड नहीं हो पाए';

  @override
  String get commentsSingleTitle => 'एक कमेंट दिख रहा है';

  @override
  String get commentsShowAll => 'सारे कमेंट दिखाओ';

  @override
  String get commentsSettingsHeader => 'कमेंट';

  @override
  String get commentsSettingEnabled => 'कमेंट';

  @override
  String get commentsSettingEnabledDesc =>
      'टाइटल पर कमेंट टैब दिखाओ और अपने AniList अकाउंट से कमेंट सर्वर में साइन इन करो';

  @override
  String get commentsSettingAlerts => 'रिप्लाई नोटिफ़िकेशन';

  @override
  String get commentsSettingAlertsDesc =>
      'कोई मेरे कमेंट पर रिप्लाई करे तो बताओ';

  @override
  String get commentsNoticeReplyTitle => 'कमेंट पर नया रिप्लाई';

  @override
  String commentsNoticeReply(String name) {
    return '$name ने तुम्हारे कमेंट पर रिप्लाई किया';
  }

  @override
  String get commentsNoticeWarningTitle => 'तुम्हें वॉर्निंग मिली है';

  @override
  String get commentsNoticeWarning => 'अपने कमेंट में थोड़ा सोच-समझकर लिखो';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu से अपडेट';

  @override
  String get barcodeTitle => 'बारकोड स्कैन करो';

  @override
  String get barcodeTooltip => 'बारकोड से मंगा या नॉवेल खोजो';

  @override
  String get barcodeIntro =>
      'वॉल्यूम के पीछे लगे बारकोड पर कैमरा करो, या उसका ISBN टाइप करो।';

  @override
  String get barcodeIntroManual =>
      'वॉल्यूम के पीछे बारकोड के ऊपर छपा ISBN टाइप करो।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'ये सही ISBN नहीं है';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn के लिए कोई किताब नहीं मिली';
  }

  @override
  String get barcodeCameraDenied =>
      'कैमरा उपलब्ध नहीं है। कैमरा एक्सेस दो या ISBN टाइप करो।';

  @override
  String get themesTitle => 'ओपनिंग और एंडिंग';

  @override
  String get themesPlayVideo => 'वीडियो चलाओ';

  @override
  String get themesPlayAudio => 'सिर्फ़ ऑडियो चलाओ';

  @override
  String get themesOpenSite => 'AnimeThemes पर खोलो';

  @override
  String get themesCredit => 'AnimeThemes से थीम';

  @override
  String get themesVersions => 'वर्ज़न';

  @override
  String get sauceTitle => 'सोर्स खोजो';

  @override
  String get sauceIntro =>
      'कोई मंगा पेज या आर्टवर्क अपलोड करो, या उसका लिंक पेस्ट करो, ताकि पता चले कि वो कहाँ से है।';

  @override
  String get sauceKeyTitle => 'SauceNAO API की';

  @override
  String get sauceKeyHint => 'ज़रूरी नहीं, रोज़ की सर्च लिमिट बढ़ाती है';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php पर फ़्री की लो';

  @override
  String get sauceOpen => 'सोर्स खोलो';

  @override
  String get sauceCredit => 'SauceNAO से इमेज सर्च';

  @override
  String get sauceEmpty => 'कोई मैच नहीं मिला';

  @override
  String get sauceTooltip => 'किसी मंगा पेज या आर्टवर्क का सोर्स खोजो';

  @override
  String get trendzTitle => 'एनीमे चार्ट';

  @override
  String get trendzAnime => 'एनीमे';

  @override
  String get trendzFemale => 'फ़ीमेल किरदार';

  @override
  String get trendzMale => 'मेल किरदार';

  @override
  String get trendzCouple => 'कपल';

  @override
  String get trendzCredit => 'AniTrendz के वीकली चार्ट';

  @override
  String get trendzNew => 'नया';

  @override
  String get trendzEmpty => 'चार्ट खाली है';

  @override
  String get shareCard => 'कार्ड शेयर करो';

  @override
  String get shareCardList => 'लिस्ट कार्ड शेयर करो';

  @override
  String get shareCardSaved => 'कार्ड सेव हो गया';

  @override
  String get shareCardFailed => 'कार्ड नहीं बन पाया';

  @override
  String get shareCardListEmpty =>
      'तुम्हारी लिस्ट में अभी शेयर करने लायक कुछ नहीं है';

  @override
  String get shareCardTop => 'मेरी टॉप पसंद';

  @override
  String themesEpisodes(String eps) {
    return 'एपिसोड $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% मैच';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'हफ़्ता $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count वोट';
  }

  @override
  String trendzPeak(String rank) {
    return 'पीक #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return '$count हफ़्ते टॉप टेन में';
  }

  @override
  String get imageSearchTitle => 'इमेज से सर्च';

  @override
  String get imageSearchTooltip => 'स्क्रीनशॉट से एनीमे खोजो';

  @override
  String get imageSearchIntro =>
      'कोई स्क्रीनशॉट चुनो या इमेज लिंक पेस्ट करो, trace.moe बता देगा कि वो किस एपिसोड और किस पल का है।';

  @override
  String get imageSearchPick => 'इमेज चुनो';

  @override
  String get imageSearchLinkHint => 'इमेज लिंक पेस्ट करो';

  @override
  String get imageSearchGo => 'सर्च';

  @override
  String get imageSearchEmpty => 'कोई मैच नहीं मिला';

  @override
  String get imageSearchAdult => '१८+';

  @override
  String imageSearchEpisode(String number) {
    return 'एपिसोड $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time पर';
  }

  @override
  String get imageSearchPreview => 'क्लिप प्रीव्यू';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% मैच';
  }

  @override
  String get imageSearchCredit => 'trace.moe से चलता है';

  @override
  String get imageSearchOpenFailed => 'ये टाइटल नहीं खुल पाया';

  @override
  String get groups => 'ग्रुप';

  @override
  String get groupsYours => 'तुम्हारे ग्रुप';

  @override
  String get groupsPopular => 'पॉपुलर';

  @override
  String get groupsNew => 'नए';

  @override
  String get groupsFeatured => 'फ़ीचर्ड';

  @override
  String get groupsSearch => 'ग्रुप खोजो';

  @override
  String get groupsAll => 'सब';

  @override
  String get groupsEmpty => 'कोई ग्रुप नहीं मिला';

  @override
  String get groupsEmptyYours => 'तुमने अभी तक कोई ग्रुप जॉइन नहीं किया';

  @override
  String get groupsSignIn => 'जॉइन किए ग्रुप देखने के लिए साइन इन करो';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मेंबर',
      one: '1 मेंबर',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'जॉइन करो';

  @override
  String get groupsJoined => 'जॉइन किया';

  @override
  String get groupsLeave => 'ग्रुप छोड़ो';

  @override
  String get groupsLeaveAsk =>
      'तुम्हारी फ़ीड में इस ग्रुप की पोस्ट दिखना बंद हो जाएँगी।';

  @override
  String get groupsJoinFailed =>
      'ये ग्रुप जॉइन नहीं हो पाया, शायद ये सिर्फ़ इनवाइट से है';

  @override
  String get groupsLeaveFailed => 'ये ग्रुप छोड़ नहीं पाए';

  @override
  String get groupsPosts => 'पोस्ट';

  @override
  String get groupsMembersTab => 'मेंबर';

  @override
  String get groupsAbout => 'ग्रुप के बारे में';

  @override
  String get groupsRules => 'नियम';

  @override
  String get groupsPrivacyOpen => 'ओपन';

  @override
  String get groupsPrivacyRestricted => 'रिस्ट्रिक्टेड';

  @override
  String get groupsPrivacyClosed => 'क्लोज़्ड';

  @override
  String get groupsAdult => '१८+';

  @override
  String get groupsRoleAdmin => 'एडमिन';

  @override
  String get groupsRoleMod => 'मॉड';

  @override
  String get groupsCouldntLoad => 'ये ग्रुप लोड नहीं हो पाया';

  @override
  String get groupsNewPost => 'ग्रुप में पोस्ट करो';

  @override
  String get groupsPostHint => 'ग्रुप के साथ कुछ शेयर करो';

  @override
  String get groupsOpenInBrowser => 'ब्राउज़र में खोलो';

  @override
  String get groupsCategory => 'कैटेगरी';

  @override
  String get groupsLanguage => 'भाषा';

  @override
  String get groupsCreated => 'बनाया गया';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लीडर',
      one: '1 लीडर',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'प्राइवेसी';

  @override
  String get notificationsAll => 'सब';

  @override
  String get notificationsAiring => 'एयरिंग';

  @override
  String get notificationsMedia => 'नए टाइटल';

  @override
  String get notificationsReplies => 'रिप्लाई';

  @override
  String get notificationsMentions => 'मेंशन';

  @override
  String get notificationsMessages => 'मैसेज';

  @override
  String get notificationsLikes => 'लाइक';

  @override
  String get notificationsFollows => 'फ़ॉलो';

  @override
  String get notificationsNoServices =>
      'किसी भी साइन-इन सर्विस में नोटिफ़िकेशन नहीं हैं';

  @override
  String get notificationsNoServicesMessage =>
      'जो सर्विस नोटिफ़िकेशन भेजती है उसमें साइन इन करो, वो यहाँ दिखेंगे।';

  @override
  String get notificationsEmptyKind => 'इस कैटेगरी में अभी कुछ नहीं है';

  @override
  String get notificationsCommentsEmpty => 'कोई कमेंट नोटिफ़िकेशन नहीं';

  @override
  String get notificationsCommentsEmptyMessage =>
      'तुम्हारे कमेंट के रिप्लाई और Dantotsu की घोषणाएँ यहाँ दिखती हैं।';

  @override
  String get notificationsSettings => 'नोटिफ़िकेशन सेटिंग्स';

  @override
  String get notificationsPollTitle => 'नए नोटिफ़िकेशन चेक करो';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ऐप खुला होने पर हर $minutes मिनट में';
  }

  @override
  String get notificationsNotifyAbout => 'इनके बारे में बताओ';

  @override
  String get notificationsCommentsHeader => 'कमेंट नोटिफ़िकेशन';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ऐप चलते वक़्त हर अनपढ़े $service नोटिफ़िकेशन के लिए सिस्टम नोटिफ़िकेशन दिखाओ।';
  }

  @override
  String get notificationsTestSent => 'टेस्ट नोटिफ़िकेशन भेज दिया गया';

  @override
  String get notificationsTestDenied =>
      'Dartotsu के लिए नोटिफ़िकेशन अलाउड नहीं हैं। उन्हें सिस्टम सेटिंग्स में ऑन करो।';

  @override
  String get notificationsTestHint =>
      'टेस्ट नोटिफ़िकेशन भेजने के लिए देर तक दबाओ';

  @override
  String get notificationsTestSample => 'ये एक टेस्ट नोटिफ़िकेशन है';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ने $media में तुम्हारे कमेंट पर रिप्लाई किया';
  }

  @override
  String get imageSearchNotLink => 'ये लिंक जैसा नहीं लगता';

  @override
  String get imageSearchQuota => 'सर्च कोटा ख़त्म हो गया';

  @override
  String get imageSearchBusy =>
      'बहुत ज़्यादा रिक्वेस्ट, थोड़ी देर में दोबारा try करो';

  @override
  String imageSearchFailed(int code) {
    return 'सर्च फ़ेल हो गई ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count नए नोटिफ़िकेशन';
  }

  @override
  String get reactionsTitle => 'रिएक्शन';

  @override
  String get reactionsNeedEntry =>
      'रिएक्ट करने से पहले इस टाइटल को अपनी लिस्ट में जोड़ो';

  @override
  String get reactionsAdd => 'रिएक्शन जोड़ो';

  @override
  String get reactionsHint => 'तुम्हें कैसा लगा? (छोटा और बिना स्पॉइलर के)';

  @override
  String get reactionsPost => 'पोस्ट करो';

  @override
  String get reactionsFailed => 'रिएक्शन अपडेट नहीं हो पाया';

  @override
  String get settingsWatch => 'देखो और पढ़ो';

  @override
  String get settingsWatchDesc => 'एपिसोड लिस्ट, सोर्स मैचिंग और एपिसोड डिटेल';

  @override
  String get watchSettingsLayout => 'एपिसोड लिस्ट';

  @override
  String get watchSettingsSources => 'सोर्स';

  @override
  String get watchSettingsMetadata => 'एपिसोड डिटेल';

  @override
  String get watchLayout => 'लेआउट';

  @override
  String get watchListView => 'लिस्ट';

  @override
  String get watchGridView => 'ग्रिड';

  @override
  String get watchCompactView => 'कॉम्पैक्ट';

  @override
  String get watchDefaultLayoutDesc =>
      'किसी टाइटल के लिए बदलने तक एपिसोड और चैप्टर कैसे दिखें';

  @override
  String get watchChunkSize => 'रेंज साइज़';

  @override
  String get watchChunkSizeDesc =>
      'हर रेंज टैब में कितने एपिसोड या चैप्टर रहें';

  @override
  String get watchShowDescription => 'डिस्क्रिप्शन दिखाओ';

  @override
  String get watchShowDescriptionDesc =>
      'लिस्ट लेआउट में हर टाइटल के नीचे एपिसोड की समरी दिखाओ';

  @override
  String get watchShowFiller => 'फ़िलर एपिसोड दिखाओ';

  @override
  String get watchShowFillerDesc =>
      'फ़िलर मार्क किए एपिसोड छुपाने के लिए बंद करो';

  @override
  String get watchBlurUnwatched => 'स्पॉइलर थंबनेल छुपाओ';

  @override
  String get watchBlurUnwatchedDesc =>
      'जो एपिसोड अभी नहीं देखे उनका थंबनेल ब्लर कर दो';

  @override
  String get watchResumeShelf => 'रिज़्यूम शेल्फ़';

  @override
  String get watchResumeShelfDesc => 'होम पर रिज़्यूम वाली रो दिखाओ';

  @override
  String get watchMarkOnLongPress => 'देर तक दबाने पर प्रोग्रेस मार्क हो';

  @override
  String get watchMarkOnLongPressDesc =>
      'किसी एपिसोड या चैप्टर को देखा या अनदेखा मार्क करने के लिए उसे देर तक दबाओ';

  @override
  String get watchMatching => 'सोर्स मैचिंग';

  @override
  String get watchMatchingDesc =>
      'सबसे करीबी वाला सबसे अच्छा सर्च रिज़ल्ट ले लेता है। सिर्फ़ एग्ज़ैक्ट वाला लगभग एक जैसा टाइटल ही मानता है और बाकी तुम्हारे चुनने के लिए छोड़ देता है।';

  @override
  String get watchMatchClosest => 'सबसे करीबी मैच';

  @override
  String get watchMatchExact => 'सिर्फ़ एग्ज़ैक्ट मैच';

  @override
  String get watchMetadataDesc =>
      'एपिसोड के टाइटल, समरी, थंबनेल, एयर डेट और फ़िलर फ़्लैग कहाँ से आएँ। प्रायोरिटी सेट करने के लिए ड्रैग करो; जिस सोर्स में सबसे पहले वैल्यू मिले वही जीतता है।';

  @override
  String get watchMetaAniZipDesc => 'एपिसोड के टाइटल, समरी, स्टिल और एयर डेट';

  @override
  String get watchMetaKitsuDesc => 'एपिसोड के टाइटल, डिस्क्रिप्शन और थंबनेल';

  @override
  String get watchMetaSimklDesc =>
      'एपिसोड के टाइटल, डिस्क्रिप्शन, स्टिल और एयर डेट';

  @override
  String get watchMetaAniListDesc =>
      'स्ट्रीमिंग एपिसोड के टाइटल, थंबनेल और एयरिंग शेड्यूल';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai के ज़रिए MyAnimeList से एपिसोड के टाइटल, एयर डेट, फ़िलर और रीकैप फ़्लैग';

  @override
  String get watchClearMetadata => 'एपिसोड डिटेल रीफ़्रेश करो';

  @override
  String get watchClearMetadataDesc =>
      'सेव की हुई एपिसोड डिटेल भूल जाओ ताकि वो दोबारा फ़ेच हों';

  @override
  String get watchMetadataCleared => 'एपिसोड डिटेल दोबारा फ़ेच होंगी';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड',
      one: '1 एपिसोड',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चैप्टर',
      one: '1 चैप्टर',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'एपिसोड $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'चैप्टर $number';
  }

  @override
  String get watchSearching => 'खोज रहे हैं…';

  @override
  String watchSearchingFor(String term) {
    return 'खोज रहे हैं: $term';
  }

  @override
  String watchSelected(String title) {
    return 'चुना गया: $title';
  }

  @override
  String watchFound(String title) {
    return 'मिला: $title';
  }

  @override
  String get watchNothingFound => 'इस सोर्स पर कुछ नहीं मिला';

  @override
  String get watchSearchFailed => 'सोर्स सर्च फ़ेल हो गई';

  @override
  String get watchLoadFailed => 'लिस्ट लोड नहीं हो पाई';

  @override
  String get watchSignInToTrack => 'प्रोग्रेस ट्रैक करने के लिए साइन इन करो';

  @override
  String watchInstallSource(String action) {
    return '$action शुरू करने के लिए कोई एक्सटेंशन इंस्टॉल करो';
  }

  @override
  String get watchSourceMissing => 'ये सोर्स इंस्टॉल नहीं है';

  @override
  String get watchWrongTitle => 'ग़लत टाइटल?';

  @override
  String get watchSearchAgain => 'दोबारा खोजो';

  @override
  String watchSearchSource(String source) {
    return '$source में खोजो';
  }

  @override
  String get watchSource => 'सोर्स';

  @override
  String get sourceTags => 'टैग';

  @override
  String get sourceTagsHint =>
      'Tag what this source is for. A title lists the sources tagged for it first, then untagged ones. 18+ sources only show for adult titles।';

  @override
  String get sourceTagAnime => 'एनिमे';

  @override
  String get sourceTagMovies => 'फ़िल्में और श्रृंखला';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'टैग द्वारा छुपाया गया';

  @override
  String get watchOptions => 'ऑप्शन';

  @override
  String get watchSelect => 'Select';

  @override
  String get watchSelectAll => 'Select all';

  @override
  String watchSelectedCount(int count) {
    return '$count selected';
  }

  @override
  String get watchNoneDownloaded => 'None of the selected items are downloaded';

  @override
  String get watchReverse => 'उल्टे क्रम में';

  @override
  String get watchScanlators => 'ग्रुप';

  @override
  String get watchResetOptions => 'ये ऑप्शन रीसेट करो';

  @override
  String get watchContinue => 'जारी रखो';

  @override
  String get watchStart => 'शुरू करो';

  @override
  String get watchPlay => 'चलाओ';

  @override
  String get watchRead => 'पढ़ो';

  @override
  String get watchMarkWatched => 'देखा हुआ मार्क करो';

  @override
  String get watchMarkUnwatched => 'अनदेखा मार्क करो';

  @override
  String get watchMarkRead => 'पढ़ा हुआ मार्क करो';

  @override
  String get watchMarkUnread => 'अनपढ़ा मार्क करो';

  @override
  String get watchFiller => 'फ़िलर';

  @override
  String get watchRecap => 'रीकैप';

  @override
  String get watchNoEpisodes => 'कोई एपिसोड नहीं मिला';

  @override
  String get watchNoChapters => 'कोई चैप्टर नहीं मिला';

  @override
  String get watchSourceTools => 'सोर्स टूल';

  @override
  String get watchSourceSettings => 'सोर्स सेटिंग्स';

  @override
  String get watchOpenWebView => 'वेब व्यू में खोलो';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare चेक सॉल्व करो या लॉग इन करो; कुकीज़ सोर्स की रिक्वेस्ट के साथ शेयर होती हैं';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host के लिए $count कुकीज़ सेव',
      one: '$host के लिए 1 कुकी सेव',
      zero: '$host के लिए कोई कुकी सेव नहीं',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare क्लीयरेंस एक्टिव, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare क्लीयरेंस कुकी नहीं है';

  @override
  String get watchClearanceSession => 'ऐप बंद होने तक चलेगा';

  @override
  String get watchAgentShared =>
      'रिक्वेस्ट वेब व्यू का user agent इस्तेमाल करती हैं, जिसे Cloudflare चेक करता है';

  @override
  String get watchAgentCustom =>
      'कस्टम user agent सेट है, इसलिए वेब व्यू से मिली Cloudflare क्लीयरेंस रिजेक्ट हो सकती है';

  @override
  String get watchTestConnection => 'कनेक्शन टेस्ट करो';

  @override
  String get watchSolveChallenge => 'सॉल्व करो';

  @override
  String watchProbeOk(int code) {
    return 'पहुँच में है (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare अब भी चेक माँग रहा है';

  @override
  String watchProbeBlocked(int code) {
    return 'साइट ने ब्लॉक कर दिया (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'साइट तक पहुँच नहीं हो पाई';

  @override
  String get watchClearCookies => 'इस साइट की कुकीज़ क्लियर करो';

  @override
  String get watchCookiesCleared => 'कुकीज़ क्लियर हो गईं';

  @override
  String get watchFailTimeout => 'चेक समय पर ख़त्म नहीं हुआ';

  @override
  String get watchFailBlocked =>
      'साइट ने इस डिवाइस को ब्लॉक कर दिया (एक्सेस अस्वीकृत)। चेक से मदद नहीं मिलेगी';

  @override
  String get watchFailTurnstile =>
      'इस जांच के लिए एक टैप की आवश्यकता होती है जो बैकग्राउंड सॉल्वर नहीं कर सकता';

  @override
  String get watchFailLoad => 'पेज लोड नहीं हुआ. कनेक्शन और साइट का पता जांचें';

  @override
  String get watchFailRejected =>
      'साइट ने अभी दी गई मंजूरी को अस्वीकार कर दिया। पुनः प्रयास करें या कुकीज़ साफ़ करें';

  @override
  String get watchFailDismissed => 'चेक ख़त्म होने से पहले ही बंद कर दिया गया';

  @override
  String get watchFailCooldown =>
      'आपने थोड़ी देर पहले चेक बंद कर दिया। पुनः प्रयास करने के लिए इसे हल करें दबाएँ';

  @override
  String get watchFailQuiet =>
      'चेक को आपकी ज़रूरत है, और ऐप अपने आप काम कर रहा था';

  @override
  String get watchFailWebView => 'पृष्ठभूमि वेब दृश्य प्रारंभ नहीं हो सका';

  @override
  String get watchFailUnavailable => 'चेक दिखाने के लिए कोई स्क्रीन नहीं है';

  @override
  String get watchStatusReady => 'तैयार';

  @override
  String get watchStatusChallenge => 'क्लाउडफ्लेयर जांच की आवश्यकता है';

  @override
  String get watchStatusBlocked => 'साइट द्वारा अवरोधित किया गया';

  @override
  String get watchStatusOffline => 'साइट तक नहीं पहुंच सकते';

  @override
  String get watchStatusUntested => 'अभी तक परीक्षण नहीं किया गया';

  @override
  String get watchStatusTesting => 'कनेक्शन का परीक्षण किया जा रहा है...';

  @override
  String get watchStatusSolving => 'क्लाउडफ्लेयर जांच पास करना...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'बैकग्राउंड में क्लाउडफ्लेयर चेक पास हो गया ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'क्लाउडफ्लेयर जांच पास हो गई';

  @override
  String watchClearanceIssued(String time) {
    return 'अर्जित $time';
  }

  @override
  String get watchClearanceStale =>
      'क्लीयरेंस किसी अन्य उपयोगकर्ता एजेंट के साथ अर्जित किया गया था, इसलिए इसे नहीं भेजा गया है। नया कनेक्शन पाने के लिए कनेक्शन का परीक्षण करें';

  @override
  String get watchSectionConnection => 'कनेक्शन';

  @override
  String get watchSectionSession => 'सत्र';

  @override
  String get watchSectionTools => 'उपकरण';

  @override
  String get watchMetaSource => 'एपिसोड डिटेल कहाँ से';

  @override
  String get watchMetaAuto => 'ऑटोमैटिक';

  @override
  String get watchMetaOff => 'बंद';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिंग्स';

  @override
  String get playerSectionPlayback => 'प्लेबैक';

  @override
  String get playerSectionSkip => 'स्किपिंग';

  @override
  String get playerSectionGestures => 'कंट्रोल';

  @override
  String get playerSectionSubtitles => 'सबटाइटल';

  @override
  String get playerSectionShaders => 'शेडर';

  @override
  String get playerSectionEngine => 'इंजन';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'प्लेबैक स्पीड';

  @override
  String get localSource => 'स्थानीय फ़ाइलें';

  @override
  String get localMissing =>
      'यह फ़ाइल या फ़ोल्डर अब आपके स्थानीय फ़ोल्डर में नहीं है';

  @override
  String get playerStickyStage => 'चिपचिपा वीडियो';

  @override
  String get playerStickyStageDesc =>
      'नीचे दिए गए एपिसोड और टिप्पणियों को स्क्रॉल करते समय वीडियो को शीर्ष पर रखें';

  @override
  String get playerCursedSpeed => 'एक्स्ट्रा स्पीड';

  @override
  String get playerCursedSpeedDesc => 'लिस्ट में 10x तक की स्पीड जोड़ो';

  @override
  String get playerResize => 'रीसाइज़ मोड';

  @override
  String get playerFitFit => 'फ़िट';

  @override
  String get playerFitCover => 'कवर';

  @override
  String get playerFitStretch => 'स्ट्रेच';

  @override
  String get playerSkipDuration => 'स्किप बटन की लंबाई';

  @override
  String get playerSkipDurationDesc =>
      'ओपनिंग और एंडिंग के बाहर स्किप बटन कितने सेकंड आगे कूदे';

  @override
  String get playerSeekDuration => 'डबल टैप सीक';

  @override
  String get playerSeekDurationDesc =>
      'डबल टैप या एरो की पर कितने सेकंड कूदना है';

  @override
  String get playerAutoPlay => 'अगला अपने-आप चलाओ';

  @override
  String get playerAutoPlayDesc => 'ये एपिसोड ख़त्म होते ही अगला शुरू करो';

  @override
  String get playerResume => 'जहाँ छोड़ा था वहीं से चलाओ';

  @override
  String get playerResumeDesc => 'एपिसोड को उसकी आख़िरी पोज़िशन से जारी रखो';

  @override
  String get playerAutoRotate => 'Rotate to fullscreen';

  @override
  String get playerAutoRotateDesc =>
      'Turning the phone sideways opens the fullscreen player. Off keeps the player page upright';

  @override
  String get playerOrientation => 'ओरिएंटेशन';

  @override
  String get playerOrientationAuto => 'डिवाइस को फ़ॉलो करो';

  @override
  String get playerOrientationLandscape => 'लैंडस्केप';

  @override
  String get playerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get playerAutoSkipOpening => 'ओपनिंग स्किप करो';

  @override
  String get playerAutoSkipEnding => 'एंडिंग स्किप करो';

  @override
  String get playerAutoSkipRecap => 'रीकैप स्किप करो';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip और स्ट्रीम टाइमस्टैम्प से, शुरू होते ही उसके आगे कूद जाओ';

  @override
  String get playerDisableSkips => 'स्किप अक्षम करें';

  @override
  String get playerDisableSkipsDesc =>
      'प्लेयर में कोई एनीस्किप या स्ट्रीम टाइमस्टैम्प, चैप्टर मार्क या स्किप सबमिशन नहीं है';

  @override
  String get playerSkipOnce => 'सिर्फ़ एक बार स्किप करो';

  @override
  String get playerSkipOnceDesc =>
      'अगर वापस सीक करो तो उसी हिस्से को दोबारा स्किप मत करो';

  @override
  String get playerAdjustBrightness => 'ब्राइटनेस जेस्चर';

  @override
  String get playerAdjustBrightnessDesc =>
      'स्क्रीन के दाएँ आधे हिस्से पर ऊपर-नीचे स्वाइप करो';

  @override
  String get playerAdjustVolume => 'वॉल्यूम जेस्चर';

  @override
  String get playerAdjustVolumeDesc =>
      'स्क्रीन के बाएँ आधे हिस्से पर ऊपर-नीचे स्वाइप करो';

  @override
  String get playerHoldToSpeed => 'दबाकर स्पीड बढ़ाओ';

  @override
  String get playerHoldToSpeedDesc =>
      'वीडियो को दबाकर रखो तो तेज़ चलेगा, स्पीड बदलने के लिए साइड में ड्रैग करो';

  @override
  String get playerThumbless => 'मोटा सीक बार';

  @override
  String get playerThumblessDesc => 'बिना थंब वाला मोटा बार';

  @override
  String get playerShowSubtitles => 'सबटाइटल दिखाओ';

  @override
  String get playerShowSubtitlesDesc =>
      'सारे सबटाइटल ट्रैक छुपाने के लिए बंद करो';

  @override
  String get playerSubtitleLanguage => 'पसंदीदा सबटाइटल भाषा';

  @override
  String get playerSubtitleSize => 'सबटाइटल साइज़';

  @override
  String get playerSubtitleWeight => 'सबटाइटल वेट';

  @override
  String get playerSubtitleBottom => 'सबटाइटल का नीचे पैडिंग';

  @override
  String get playerSubtitleFont => 'सबटाइटल फ़ॉन्ट';

  @override
  String get playerSubtitleColor => 'सबटाइटल का रंग';

  @override
  String get playerSubtitleBackground => 'सबटाइटल बैकग्राउंड';

  @override
  String get playerSubtitleOutline => 'सबटाइटल आउटलाइन';

  @override
  String get playerSubtitleOutlineWidth => 'उपशीर्षक रूपरेखा चौड़ाई';

  @override
  String get playerSubtitlePreview => 'उपशीर्षक पूर्वावलोकन';

  @override
  String get playerSubtitlePreviewText => 'उपशीर्षक पूर्वावलोकन पाठ';

  @override
  String get playerLibass => 'libass इस्तेमाल करो';

  @override
  String get playerLibassDesc =>
      'स्टाइल वाले .ass सबटाइटल रेंडर करो। तब ऊपर का साइज़, रंग और फ़ॉन्ट लागू नहीं होंगे';

  @override
  String get playerShaders => 'शेडर';

  @override
  String get playerShadersEnable => 'शेडर ऑन करो';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K जैसे GLSL शेडर से पिक्चर अपस्केल और साफ़ करो';

  @override
  String get playerShadersOff => 'शेडर बंद';

  @override
  String get playerShadersMissing => 'Anime4K इंस्टॉल नहीं है';

  @override
  String get playerShadersMissingDesc =>
      'बिल्ट-इन मोड इस्तेमाल करने के लिए Anime4K शेडर पैक (करीब 0.8 MB) डाउनलोड करो।';

  @override
  String get playerShadersDownload => 'Anime4K डाउनलोड करो';

  @override
  String get playerPictureSave => 'इस फ़्रेम को सहेजें';

  @override
  String get playerPictureOriginal => 'मौलिक';

  @override
  String get playerPictureOriginalDesc =>
      'जैसा कि वीडियो में है, फ्रेम बिना किसी शेडर या रंग के';

  @override
  String get playerPictureProcessed => 'शेडर्स और रंगों के साथ';

  @override
  String get playerPictureProcessedDesc =>
      'फ़्रेम जैसा कि आप इसे अभी देखते हैं';

  @override
  String get playerPictureSaved => 'फ़्रेम सहेजा गया';

  @override
  String get playerPictureSaveFailed => 'फ़्रेम सहेजा नहीं जा सका';

  @override
  String get playerShadersPreview => 'इसी फ़्रेम पर प्रीव्यू देखो';

  @override
  String get playerShadersUse => 'ये इस्तेमाल करो';

  @override
  String get playerPicture => 'पिक्चर';

  @override
  String get playerColors => 'रंग';

  @override
  String get playerColorDefault => 'डिफ़ॉल्ट';

  @override
  String get playerColorVivid => 'विविड';

  @override
  String get playerColorPop => 'एनीमे पॉप';

  @override
  String get playerColorSoft => 'सॉफ़्ट';

  @override
  String get playerColorCinematic => 'सिनेमैटिक';

  @override
  String get playerColorBright => 'ब्राइट';

  @override
  String get playerColorNight => 'नाइट';

  @override
  String get playerColorMono => 'मोनो';

  @override
  String get playerColorCustom => 'कस्टम';

  @override
  String get playerColorBrightness => 'ब्राइटनेस';

  @override
  String get playerColorContrast => 'कंट्रास्ट';

  @override
  String get playerColorSaturation => 'सैचुरेशन';

  @override
  String get playerColorGamma => 'गामा';

  @override
  String get playerColorHue => 'ह्यू';

  @override
  String get playerColorReset => 'रीसेट';

  @override
  String get playerColorAdjust => 'एडजस्ट';

  @override
  String get playerShadersOriginal => 'ओरिजिनल';

  @override
  String get playerShadersPreviewFailed =>
      'प्रीव्यू के लिए फ़्रेम नहीं मिल पाया';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings।';

  @override
  String get playerSoftwareRender => 'सॉफ्टवेयर प्रतिपादन';

  @override
  String get playerSoftwareRenderDesc =>
      'केवल एक ब्लैक वीडियो के लिए. शेडर्स इसके साथ काम नहीं करते. अगली बार प्लेयर खुलने पर लागू होता है';

  @override
  String get playerShadersCustomFiles => 'तुम्हारे शेडर';

  @override
  String get playerShadersCustom => 'कस्टम शेडर';

  @override
  String get playerShadersImport => '.glsl इम्पोर्ट करो';

  @override
  String get playerShadersNone =>
      'अपनी .glsl या .hook फ़ाइलें इम्पोर्ट करो और उन्हें चेन करने के लिए टिक करो';

  @override
  String get playerShadersBadFile => 'कोई .glsl या .hook शेडर फ़ाइल चुनो';

  @override
  String get playerDecoder => 'डिकोडर';

  @override
  String get playerDecoderAuto => 'ऑटो';

  @override
  String get playerDecoderAutoSafe => 'ऑटो (सेफ़)';

  @override
  String get playerDecoderSoftware => 'सॉफ़्टवेयर';

  @override
  String get playerDecoderHardware => 'हार्डवेयर';

  @override
  String get playerDecoderHardwarePlus => 'हार्डवेयर+';

  @override
  String get playerVideoOutput => 'वीडियो आउटपुट';

  @override
  String get playerAudioChannels => 'ऑडियो चैनल';

  @override
  String get playerBuffer => 'बफ़र साइज़ (MB)';

  @override
  String get playerBufferDesc =>
      'स्ट्रीम बफ़र करने के लिए प्लेयर कितनी मेमोरी इस्तेमाल कर सकता है';

  @override
  String get playerUseMpvConf => 'mpv.conf इस्तेमाल करो';

  @override
  String get playerUseMpvConfDesc =>
      'प्लेबैक शुरू होने पर अपनी mpv.conf के ऑप्शन लागू करो';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv कॉन्फ़िगरेशन एडिट करो';

  @override
  String get playerMpvConfDesc =>
      'हर लाइन में एक ऑप्शन, जैसे नॉर्मल mpv.conf में --hwdec=auto। [ब्रैकेट] वाली प्रोफ़ाइल इग्नोर होती हैं।';

  @override
  String get playerMpvConfSaved => 'mpv.conf सेव हो गई';

  @override
  String get playerUseScripts => 'mpv स्क्रिप्ट इस्तेमाल करो';

  @override
  String get playerUseScriptsDesc =>
      'स्क्रिप्ट फ़ोल्डर के प्लगइन लोड करो। इनके लिए Lua या JavaScript सपोर्ट वाला libmpv बिल्ड चाहिए';

  @override
  String get playerScripts => 'mpv स्क्रिप्ट';

  @override
  String get playerScriptsManage => 'प्लगइन जोड़ो, हटाओ और स्विच करो';

  @override
  String get playerScriptsAdd => 'स्क्रिप्ट जोड़ो';

  @override
  String get playerScriptsDesc =>
      'यहाँ रखे Lua, JavaScript और नेटिव प्लगइन प्लेबैक शुरू होने पर लोड होते हैं।';

  @override
  String get playerScriptsNone => 'अभी कोई स्क्रिप्ट नहीं';

  @override
  String get playerScriptsBadFile => 'कोई .lua, .js या नेटिव प्लगइन फ़ाइल चुनो';

  @override
  String get playerTuning => 'एडवांस्ड वीडियो ट्यूनिंग';

  @override
  String get playerTuningDesc =>
      'सिंक, कैशिंग, स्केलिंग और टोन मैपिंग ओवरराइड करो। ग़लत वैल्यू से प्लेबैक बिगड़ सकता है';

  @override
  String get playerVideoSync => 'वीडियो सिंक';

  @override
  String get playerInterpolation => 'फ़्रेम इंटरपोलेशन';

  @override
  String get playerInterpolationDesc =>
      'स्मूद मोशन, display-resample सिंक चाहिए';

  @override
  String get playerPitch => 'पिच करेक्शन';

  @override
  String get playerPitchDesc => 'दूसरी स्पीड पर भी आवाज़ें नैचुरल रखो';

  @override
  String get playerCacheSeconds => 'कैश (सेकंड)';

  @override
  String get playerReadahead => 'रीड अहेड (सेकंड)';

  @override
  String get playerThreads => 'डिकोडर थ्रेड';

  @override
  String get playerDeband => 'डीबैंड';

  @override
  String get playerDebandDesc => 'ग्रेडिएंट में कलर बैंडिंग कम करो';

  @override
  String get playerDebandIterations => 'डीबैंड इटरेशन';

  @override
  String get playerDebandThreshold => 'डीबैंड थ्रेशोल्ड';

  @override
  String get playerCorrectDownscaling => 'सही डाउनस्केलिंग';

  @override
  String get playerSigmoid => 'सिग्मॉइड अपस्केलिंग';

  @override
  String get playerScale => 'अपस्केलर';

  @override
  String get playerCscale => 'क्रोमा अपस्केलर';

  @override
  String get playerDscale => 'डाउनस्केलर';

  @override
  String get playerToneMapping => 'टोन मैपिंग';

  @override
  String get playerTargetPeak => 'टारगेट पीक';

  @override
  String get playerOpenFiles => 'वीडियो फ़ाइलें खोलो';

  @override
  String get playerOpenFilesDesc => 'इस डिवाइस की फ़ाइलें चलाओ';

  @override
  String get playerOpenFolder => 'फ़ोल्डर खोलो';

  @override
  String get playerOpenFolderDesc =>
      'फ़ोल्डर के हर वीडियो को प्लेलिस्ट की तरह चलाओ';

  @override
  String get playerNetworkStream => 'नेटवर्क स्ट्रीम';

  @override
  String get playerNetworkStreamDesc => 'डायरेक्ट वीडियो या HLS लिंक खोलो';

  @override
  String get playerStreamUrl => 'स्ट्रीम URL';

  @override
  String get playerStreamReferer => 'Referer (ज़रूरी नहीं)';

  @override
  String get playerTorrent => 'टोरेंट';

  @override
  String get playerTorrentDesc => 'मैग्नेट लिंक या .torrent फ़ाइल स्ट्रीम करो';

  @override
  String get playerMagnetLink => 'मैग्नेट लिंक या टोरेंट URL';

  @override
  String get playerPickTorrent => 'कोई .torrent फ़ाइल चुनो';

  @override
  String get playerTorrentMissing =>
      'पहले सेटिंग्स > ऐडऑन से टोरेंट ऐडऑन इंस्टॉल करो';

  @override
  String get playerNoVideos => 'कोई चलने लायक वीडियो नहीं मिला';

  @override
  String get playerReset => 'प्लेयर सेटिंग्स रीसेट करो';

  @override
  String get playerResetDesc => 'प्लेयर के हर ऑप्शन को डिफ़ॉल्ट पर लौटाओ';

  @override
  String get playerResetConfirm => 'सारी प्लेयर सेटिंग्स रीसेट करें?';

  @override
  String get playerResetDone => 'प्लेयर सेटिंग्स रीसेट हो गईं';

  @override
  String get playerQuality => 'क्वालिटी';

  @override
  String get streamGroupSub => 'उप';

  @override
  String get streamGroupHardSub => 'कठिन उप';

  @override
  String get streamGroupSoftSub => 'नरम उप';

  @override
  String get streamGroupDub => 'डब';

  @override
  String get streamGroupRaw => 'कच्चा';

  @override
  String get streamGroupOther => 'अन्य';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count धाराएँ',
      one: '1 धारा',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'स्ट्रीम';

  @override
  String get playerStreamFailedNext =>
      'वह स्ट्रीम नहीं चलेगी, अगली कोशिश कर रहा हूँ';

  @override
  String get playerAutoSelect => 'स्ट्रीम ऑटो चुनो';

  @override
  String get playerAutoSelectDesc =>
      'इस टाइटल पर तुम्हारी पिछली पसंद जैसी स्ट्रीम चुनो';

  @override
  String get playerLoadingStreams => 'स्ट्रीम खोज रहे हैं…';

  @override
  String get playerNoStreams => 'इस एपिसोड की कोई स्ट्रीम नहीं है';

  @override
  String get playerNoStreamsTitle => 'कोई स्ट्रीम नहीं मिली';

  @override
  String get playerFailed => 'प्लेबैक फ़ेल हो गया';

  @override
  String get playerTorrentNeeded => 'ये स्ट्रीम एक टोरेंट है';

  @override
  String get playerTorrentNeededDesc =>
      'मैग्नेट लिंक और .torrent फ़ाइलें चलाने के लिए टोरेंट ऐडऑन इंस्टॉल करो';

  @override
  String get playerOpenAddons => 'ऐडऑन खोलो';

  @override
  String get playerTryAnotherStream => 'कोई दूसरी स्ट्रीम try करो';

  @override
  String get playerEpisodes => 'एपिसोड';

  @override
  String get playerLock => 'कंट्रोल लॉक करो';

  @override
  String get playerFullscreen => 'फ़ुलस्क्रीन';

  @override
  String get readerChapters => 'चैप्टर';

  @override
  String get readerSettingsTitle => 'रीडर सेटिंग्स';

  @override
  String get readerPreviousChapter => 'पिछला चैप्टर';

  @override
  String get readerNextChapter => 'अगला चैप्टर';

  @override
  String get readerFirstChapter => 'ये पहला चैप्टर है';

  @override
  String get readerLastChapter => 'तुम सब पढ़ चुके हो';

  @override
  String get readerFailed => 'ये चैप्टर नहीं खुल पाया';

  @override
  String get readerOpenBook => 'एक किताब खोलो';

  @override
  String get readerOpenBookDesc =>
      'अपनी फ़ाइलों से एक ईपीयूबी (उपन्यास रीडर) या एक पीडीएफ (मंगा रीडर) पढ़ें';

  @override
  String get readerNoText => 'इस चैप्टर में कोई टेक्स्ट नहीं है';

  @override
  String get readerPerTitle => 'सिर्फ़ इस टाइटल के लिए';

  @override
  String get readerPerTitleDesc =>
      'ये रीडर सेटिंग्स सिर्फ़ इसी टाइटल के लिए रखो';

  @override
  String get readerSectionReading => 'रीडिंग';

  @override
  String get readerSectionControls => 'कंट्रोल';

  @override
  String get readerSectionDisplay => 'डिस्प्ले';

  @override
  String get readerSectionNovel => 'नॉवेल';

  @override
  String get readerMode => 'रीडिंग मोड';

  @override
  String get readerModeAuto => 'ऑटो (श्रृंखला प्रकार के अनुसार)';

  @override
  String get readerModeRtl => 'दाएँ से बाएँ';

  @override
  String get readerModeLtr => 'बाएँ से दाएँ';

  @override
  String get readerModeVertical => 'वर्टिकल पेज';

  @override
  String get readerModeWebtoon => 'वेबटून';

  @override
  String get readerModeContinuous => 'कंटिन्यूअस स्क्रॉल';

  @override
  String get readerScale => 'इमेज स्केल';

  @override
  String get readerScaleFit => 'स्क्रीन में फ़िट';

  @override
  String get readerScaleWidth => 'चौड़ाई में फ़िट';

  @override
  String get readerScaleHeight => 'ऊँचाई में फ़िट';

  @override
  String get readerScaleOriginal => 'ओरिजिनल साइज़';

  @override
  String get readerScaleSmart => 'स्मार्ट फ़िट';

  @override
  String get readerDoublePage => 'डबल पेज';

  @override
  String get readerDoublePageDesc => 'लैंडस्केप में दो पेज साथ-साथ दिखाओ';

  @override
  String get readerDoubleTapZoom => 'डबल टैप से ज़ूम';

  @override
  String get readerDoubleTapZoomDesc => 'डबल टैप से पेज ज़ूम इन-आउट करो';

  @override
  String get readerAnimate => 'पेज एनिमेशन';

  @override
  String get readerAnimateDesc => 'पेज पलटने पर एनिमेशन दिखाओ';

  @override
  String get readerSidePadding => 'साइड पैडिंग';

  @override
  String get readerSidePaddingDesc => 'पेज के बगल की जगह, प्रतिशत में';

  @override
  String get readerPageGap => 'पेज गैप';

  @override
  String get readerPageGapDesc => 'पेजों के बीच की जगह';

  @override
  String get readerAutoNext => 'अगले चैप्टर में चलते रहो';

  @override
  String get readerAutoNextDesc =>
      'इस चैप्टर का आख़िर पढ़ते वक़्त अगला चैप्टर लोड कर लो';

  @override
  String get readerPreload => 'पेज प्रीलोड करो';

  @override
  String get readerPreloadDesc => 'कितने पेज पहले से डाउनलोड करने हैं';

  @override
  String get readerTapZones => 'टैप ज़ोन';

  @override
  String get readerTapDefault => 'डिफ़ॉल्ट';

  @override
  String get readerTapLShaped => 'L-शेप';

  @override
  String get readerTapKindle => 'Kindle जैसा';

  @override
  String get readerTapEdge => 'सिर्फ़ किनारे';

  @override
  String get readerTapOff => 'बंद';

  @override
  String get readerInvertTaps => 'टैप ज़ोन उल्टे करो';

  @override
  String get readerInvertTapsDesc => 'पिछले और अगले वाले हिस्से आपस में बदल दो';

  @override
  String get readerBackground => 'बैकग्राउंड';

  @override
  String get readerBackgroundBlack => 'काला';

  @override
  String get readerBackgroundGray => 'ग्रे';

  @override
  String get readerBackgroundWhite => 'सफ़ेद';

  @override
  String get readerBackgroundTheme => 'ऐप थीम';

  @override
  String get readerFilter => 'कलर फ़िल्टर';

  @override
  String get readerFilterNone => 'कोई नहीं';

  @override
  String get readerFilterGrayscale => 'ग्रेस्केल';

  @override
  String get readerFilterInvert => 'इन्वर्ट';

  @override
  String get readerFilterSepia => 'सेपिया';

  @override
  String get readerFilterQuality => 'छवि फ़िल्टर गुणवत्ता';

  @override
  String get readerFilterQualityNone => 'कोई नहीं (निकटतम पड़ोसी)';

  @override
  String get readerFilterQualityLow => 'निम्न (बिलिनियर)';

  @override
  String get readerFilterQualityMedium => 'मध्यम (त्रिरेखीय)';

  @override
  String get readerFilterQualityHigh => 'उच्च (बाइक्यूबिक)';

  @override
  String get readerFilterQualityLanczos => 'लैंज़ोस (जंग उच्च गुणवत्ता)';

  @override
  String get readerDim => 'डिम';

  @override
  String get readerDimDesc => 'पेज को गहरा करो';

  @override
  String get readerPageNumber => 'पेज नंबर';

  @override
  String get readerPageNumberDesc => 'पढ़ते वक़्त पेज नंबर दिखाओ';

  @override
  String get readerFullscreen => 'फ़ुलस्क्रीन';

  @override
  String get readerFullscreenDesc => 'सिस्टम बार छुपाओ';

  @override
  String get readerCropBorders => 'बॉर्डर क्रॉप करो';

  @override
  String get readerCropBordersDesc => 'पेज के खाली सफ़ेद या काले किनारे काट दो';

  @override
  String get readerLongPressSave => 'किसी पृष्ठ को सहेजने के लिए उसे दबाए रखें';

  @override
  String get readerLongPressSaveDesc =>
      'सेव, शेयर और कॉपी विकल्प खोलने के लिए पेज को देर तक दबाएँ';

  @override
  String get readerVolumeKeys => 'वॉल्यूम की से पेज पलटो';

  @override
  String get readerVolumeKeysDesc =>
      'वॉल्यूम डाउन आगे जाता है, वॉल्यूम अप पीछे';

  @override
  String get readerBookmarks => 'बुकमार्क';

  @override
  String get readerBookmarkAdd => 'बुकमार्क जोड़ो';

  @override
  String get readerBookmarkRemove => 'बुकमार्क हटाओ';

  @override
  String get readerBookmarksEmpty => 'अभी कोई बुकमार्क नहीं';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'पेज $page / $total';
  }

  @override
  String get readerAutoScroll => 'ऑटो स्क्रॉल';

  @override
  String get readerAutoScrollStop => 'ऑटो स्क्रॉल रोको';

  @override
  String get readerAutoScrollSpeed => 'ऑटो स्क्रॉल स्पीड';

  @override
  String get readerAutoScrollSpeedDesc =>
      'पेज अपने-आप कितनी तेज़ी से स्क्रॉल या पलटें';

  @override
  String get readerKeepOn => 'स्क्रीन ऑन रखो';

  @override
  String get readerKeepOnDesc => 'पढ़ते वक़्त स्क्रीन बंद होने से रोको';

  @override
  String get readerOrientation => 'ओरिएंटेशन';

  @override
  String get readerOrientationFree => 'फ़्री';

  @override
  String get readerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get readerOrientationLandscape => 'लैंडस्केप';

  @override
  String get readerSaveProgress => 'प्रोग्रेस सेव करो';

  @override
  String get readerSaveProgressDesc =>
      'तुम्हारा पेज याद रखो और चैप्टर पढ़े हुए मार्क करो';

  @override
  String get readerReset => 'रीडर सेटिंग्स रीसेट करो';

  @override
  String get readerResetDesc => 'डिफ़ॉल्ट पर वापस';

  @override
  String get readerResetConfirm =>
      'प्रत्येक रीडर सेटिंग को उसके डिफ़ॉल्ट पर रीसेट करें?';

  @override
  String get novelSize => 'टेक्स्ट साइज़';

  @override
  String get novelFont => 'फ़ॉन्ट';

  @override
  String get novelLineHeight => 'लाइन की ऊँचाई';

  @override
  String get novelParagraph => 'पैराग्राफ़ स्पेसिंग';

  @override
  String get novelMargin => 'मार्जिन';

  @override
  String get novelTheme => 'रीडर थीम';

  @override
  String get novelThemeApp => 'ऐप थीम';

  @override
  String get novelThemeLight => 'लाइट';

  @override
  String get novelThemeSepia => 'सेपिया';

  @override
  String get novelThemeDark => 'डार्क';

  @override
  String get novelThemeBlack => 'ब्लैक';

  @override
  String get novelJustify => 'टेक्स्ट जस्टिफ़ाई करो';

  @override
  String get novelJustifyDesc => 'टेक्स्ट को दोनों किनारों से अलाइन करो';

  @override
  String get trackProgressTitle => 'प्रोग्रेस सेव करें?';

  @override
  String trackProgressAnime(String name) {
    return 'देखते वक़्त $name को अपनी लिस्ट में ट्रैक करें? इसे लोकल रखने के लिए \"सिर्फ़ इस डिवाइस पर\" चुनो, या कुछ भी सेव न करने के लिए \"नहीं\"।';
  }

  @override
  String trackProgressManga(String name) {
    return 'चैप्टर ख़त्म करने पर $name को अपनी लिस्ट में ट्रैक करें? इसे लोकल रखने के लिए \"सिर्फ़ इस डिवाइस पर\" चुनो, या कुछ भी सेव न करने के लिए \"नहीं\"।';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'जब आप देखते हैं तो $name पर अपनी प्रगति को इस डिवाइस पर अपनी सूची में सहेजें?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'जब आप कोई अध्याय समाप्त कर लें तो $name पर अपनी प्रगति को इस डिवाइस पर अपनी सूची में सहेजें?';
  }

  @override
  String get downloadClearQueue => 'कतार साफ़ करें';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted।';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count चयनित';
  }

  @override
  String get downloadSelectAll => 'सभी का चयन करें';

  @override
  String get downloadDeleteSelected => 'चयनित हटाएँ';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Delete $count downloads? Their files are removed from the device।';
  }

  @override
  String get castTitle => 'डिवाइस पर कास्ट करें';

  @override
  String get castSearching => 'आपके नेटवर्क पर डिवाइस खोज रहे हैं…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again।';

  @override
  String get castRefresh => 'पुनः खोजें';

  @override
  String get castFailed => 'कास्टिंग प्रारंभ नहीं हो सकी';

  @override
  String get castStop => 'कास्ट करना बंद करो';

  @override
  String castNowCasting(String name) {
    return '$name पर कास्टिंग';
  }

  @override
  String get castProtocolChromecast => 'क्रोमकास्ट';

  @override
  String get castProtocolDlna => 'डीएलएनए/स्मार्ट टीवी';

  @override
  String get castProtocolRoku => 'रोकु';

  @override
  String get castRokuNote =>
      'रोकु रिपोर्ट नहीं कर सकता या स्थिति बदल नहीं सकता';

  @override
  String get castControls => 'नियंत्रण';

  @override
  String get castVolume => 'टीवी वॉल्यूम';

  @override
  String castSkipPart(String name) {
    return '$name छोड़ें';
  }

  @override
  String get trackProgressRememberSeries => 'इस श्रृंखला के लिए याद रखें';

  @override
  String get trackProgressYes => 'सेव करो';

  @override
  String get trackProgressReset =>
      'इस टाइप के लिए प्रोग्रेस सेव प्रॉम्प्ट रीसेट हो गया, वो दोबारा पूछेगा';

  @override
  String get trackProgressNo => 'नहीं';

  @override
  String get trackProgressOff => 'बंद';

  @override
  String get trackProgressLocal => 'सिर्फ़ इस डिवाइस पर';

  @override
  String get trackProgressSettingAnime => 'एनीमे की प्रोग्रेस ट्रैक करो';

  @override
  String get trackProgressSettingManga =>
      'मंगा और नॉवेल की प्रोग्रेस ट्रैक करो';

  @override
  String get trackProgressSettingDesc =>
      'एपिसोड खोलने या चैप्टर ख़त्म करने पर क्या करना है';

  @override
  String get trackProgressAsk => 'पूछो';

  @override
  String get trackProgressAlways => 'हमेशा';

  @override
  String get dantotsuImport => 'Dantotsu से इम्पोर्ट करो';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu का सेटिंग्स बैकअप पढ़ो (.ani, या एन्क्रिप्टेड .sani)';

  @override
  String get dantotsuPick => 'Dantotsu का बैकअप चुनो';

  @override
  String get dantotsuNothing => 'इस फ़ाइल में इम्पोर्ट करने लायक कुछ नहीं है';

  @override
  String get dantotsuApply => 'चुने हुए इम्पोर्ट करो';

  @override
  String dantotsuDone(int done, int total) {
    return '$total में से $done इम्पोर्ट हुए';
  }

  @override
  String get dantotsuGroupAccounts => 'अकाउंट';

  @override
  String get dantotsuGroupAppearance => 'दिखावट';

  @override
  String get dantotsuGroupExtensions => 'एक्सटेंशन';

  @override
  String get dantotsuGroupApp => 'ऐप';

  @override
  String get dantotsuGroupPlayer => 'प्लेयर';

  @override
  String get dantotsuAnilist => 'AniList लॉगिन';

  @override
  String get dantotsuMal => 'MyAnimeList लॉगिन';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence टोकन';

  @override
  String get dantotsuTheme => 'थीम';

  @override
  String get themePickerTitle => 'थीम';

  @override
  String get dantotsuReposAnime => 'एनीमे एक्सटेंशन रिपॉज़िटरी';

  @override
  String get dantotsuReposManga => 'मंगा एक्सटेंशन रिपॉज़िटरी';

  @override
  String get dantotsuReposNovel => 'नॉवेल एक्सटेंशन रिपॉज़िटरी';

  @override
  String get dantotsuUpdates => 'अपडेट चेक';

  @override
  String get dantotsuComments => 'कमेंट';

  @override
  String get dantotsuActivity => 'AniList नोटिफ़िकेशन पोलिंग';

  @override
  String get dantotsuDns => 'DNS प्रोवाइडर';

  @override
  String get dantotsuPlayer => 'प्लेयर स्पीड और सबटाइटल के रंग';

  @override
  String get dantotsuWarning =>
      'इस फ़ाइल में लॉगिन टोकन हैं। इसे प्राइवेट रखो।';

  @override
  String get novelIndent => 'पैराग्राफ़ इंडेंट करो';

  @override
  String get novelIndentDesc =>
      'हर पैराग्राफ़ की पहली लाइन इंडेंट के साथ शुरू करो';

  @override
  String get novelLetterSpacing => 'अक्षरों की स्पेसिंग';

  @override
  String get novelSectionTranslate => 'ट्रांसलेशन';

  @override
  String get sectionExperimental => 'एक्सपेरिमेंटल';

  @override
  String get kitsuGraphqlDetail => 'तेज़ डिटेल पेज (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'किसी टाइटल को उसके किरदारों, स्टाफ़ और तुम्हारी एंट्री के साथ एक ही रिक्वेस्ट में लोड करो';

  @override
  String get togetherTitle => 'साथ में देखो';

  @override
  String get togetherIntro =>
      'दोस्त का भेजा रूम लिंक पेस्ट करो। तुम तुरंत जुड़ जाते हो और जब वो देखना शुरू करते हैं तो प्लेयर खुल जाता है।';

  @override
  String togetherLinkConfirm(String room) {
    return 'Join the room $room? The host chooses what plays and the player opens by itself when they start watching।';
  }

  @override
  String get togetherJoin => 'सम्मिलित हों';

  @override
  String get togetherName => 'तुम्हारा नाम';

  @override
  String get togetherConnecting => 'कनेक्ट हो रहा है…';

  @override
  String get togetherLeave => 'रूम छोड़ो';

  @override
  String get togetherYou => 'तुम';

  @override
  String get togetherNoChat => 'अभी कोई मैसेज नहीं';

  @override
  String get togetherChatHint => 'मैसेज';

  @override
  String get togetherCopyInvite => 'इनवाइट कॉपी करो';

  @override
  String get togetherShareInvite => 'आमंत्रण साझा करें';

  @override
  String togetherShareText(String link) {
    return 'मेरे साथ डार्टोत्सु पर देखें: $link';
  }

  @override
  String get togetherInviteCopied => 'सर्वर और रूम कॉपी हो गए';

  @override
  String get togetherConnectionLost => 'कनेक्शन टूट गया';

  @override
  String togetherConnectedTo(String room) {
    return '$room से कनेक्ट हो गए';
  }

  @override
  String togetherFailed(String error) {
    return 'कनेक्ट नहीं हो पाया: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name जुड़ गया';
  }

  @override
  String togetherLeft(String name) {
    return '$name चला गया';
  }

  @override
  String togetherPaused(String name) {
    return '$name ने पॉज़ किया';
  }

  @override
  String togetherResumed(String name) {
    return '$name ने दोबारा चलाया';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time पर कूद गया';
  }

  @override
  String get togetherFollowFailed =>
      'होस्ट का एपिसोड नहीं खुल पाया। उसे ख़ुद खोल लो।';

  @override
  String get togetherJoinRole => 'रूम जॉइन करो';

  @override
  String get togetherOpenHost => 'होस्ट का एपिसोड खोलो';

  @override
  String get togetherShowChat => 'लाइव चैट दिखाओ';

  @override
  String get togetherWaitingHost => 'होस्ट के एपिसोड शुरू करने का इंतज़ार है';

  @override
  String get togetherRoomLink => 'रूम लिंक';

  @override
  String get togetherBadLink => 'ये रूम लिंक नहीं है';

  @override
  String get togetherHostClosed => 'होस्ट ने रूम बंद कर दिया';

  @override
  String get togetherNowPlaying => 'अभी चल रहा है';

  @override
  String togetherWatchingCount(int count) {
    return '$count देख रहे हैं';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user पॉज़ करना चाहता है';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user दोबारा चलाना चाहता है';
  }

  @override
  String get togetherChip => 'साथ में';

  @override
  String get togetherSettingsDesc => 'लिंक से किसी दोस्त के रूम में जुड़ो';

  @override
  String get novelBilingual => 'ओरिजिनल और ट्रांसलेशन दिखाओ';

  @override
  String get novelBilingualDesc =>
      'हर पैराग्राफ़ में ओरिजिनल टेक्स्ट दिखता है और उसके नीचे उसका ट्रांसलेशन';

  @override
  String get novelTranslateTo => 'इसमें ट्रांसलेट करो';

  @override
  String get novelTranslateOff => 'बंद';

  @override
  String get novelSectionSpeech => 'टेक्स्ट टू स्पीच';

  @override
  String get novelSpeechRate => 'बोलने की स्पीड';

  @override
  String get novelSpeechPitch => 'बोलने की पिच';

  @override
  String get novelSpeak => 'ज़ोर से पढ़ो';

  @override
  String get novelSpeakStop => 'ज़ोर से पढ़ना रोको';

  @override
  String get novelTranslate => 'चैप्टर ट्रांसलेट करो';

  @override
  String get novelTranslateShowOriginal => 'ओरिजिनल दिखाओ';

  @override
  String novelTranslateFailed(String error) {
    return 'ट्रांसलेशन फ़ेल हो गया: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'इस डिवाइस पर टेक्स्ट टू स्पीच उपलब्ध नहीं है';

  @override
  String get novelSpeechVoice => 'आवाज़';

  @override
  String get novelSpeechVoiceDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get novelSpeakPrevious => 'पिछली लाइन';

  @override
  String get novelSpeakNext => 'अगली लाइन';

  @override
  String get novelTapPaging => 'पेज पलटने के लिए किनारों पर टैप करो';

  @override
  String get novelTapPagingDesc =>
      'पेज स्क्रॉल करने के लिए बाएँ या दाएँ तरफ़ टैप करो, बीच में टैप करने पर कंट्रोल दिखते हैं';

  @override
  String get novelPaged => 'पन्ने पलटना';

  @override
  String get novelPagedDesc =>
      'अध्याय को पृष्ठों में विभाजित करें और स्क्रॉल करने के बजाय उन्हें पलटने के लिए स्वाइप या टैप करें';

  @override
  String novelPageOf(int current, int total) {
    return '$total का पृष्ठ $current';
  }

  @override
  String get novelPaginating => 'पन्ने बिछाना';

  @override
  String get novelTools => 'सामग्री, खोज और हाइलाइट्स';

  @override
  String get novelContents => 'सामग्री';

  @override
  String get novelContentsEmpty => 'इस अध्याय में कोई शीर्षक नहीं है';

  @override
  String get novelSearch => 'खोजें';

  @override
  String get novelSearchHint => 'इस अध्याय में खोजें';

  @override
  String get novelSearchNone => 'कोई मेल नहीं';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मेल खाता है',
      one: '1 मैच',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'हाइलाइट्स';

  @override
  String get novelHighlightsEmpty =>
      'कुछ टेक्स्ट चुनें और उसे यहां रखने के लिए हाइलाइट पर टैप करें';

  @override
  String get novelHighlight => 'हाइलाइट करें';

  @override
  String get novelHighlightNote => 'नोट';

  @override
  String get novelHighlightNoteHint => 'एक नोट जोड़ें';

  @override
  String get novelHighlightRemove => 'हाइलाइट हटाएँ';

  @override
  String get novelHighlightFailed => 'उस चयन का पाठ से मिलान नहीं हो सका';

  @override
  String novelMinutesLeft(int count) {
    return '$count मिनट बाकी';
  }

  @override
  String get novelBold => 'बोल्ड टेक्स्ट';

  @override
  String get novelBoldDesc => 'भारी वेट इस्तेमाल करो';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter ख़त्म हुआ';
  }

  @override
  String readerNextUp(String chapter) {
    return 'अगला: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'पिछला: $chapter';
  }

  @override
  String get readerNoPages => 'इस चैप्टर में कोई पेज नहीं है';

  @override
  String get readerLoadingPages => 'पेज लोड हो रहे हैं…';

  @override
  String get readerSlowPage => 'ये पेज अभी भी लोड हो रहा है…';

  @override
  String get readerPageFailed => 'ये पेज लोड नहीं हो पाया';

  @override
  String get playerShowComments => 'कमेंट दिखाओ';

  @override
  String get playerHideComments => 'कमेंट छुपाओ';

  @override
  String get playerSubtitles => 'सबटाइटल';

  @override
  String get playerSubtitlesOff => 'सबटाइटल बंद';

  @override
  String get playerAudio => 'ऑडियो';

  @override
  String get playerAddSubtitle => 'सबटाइटल फ़ाइल जोड़ो';

  @override
  String get playerAddAudio => 'ऑडियो फ़ाइल जोड़ो';

  @override
  String get playerChapters => 'चैप्टर';

  @override
  String get playerSkipSubmit => 'छोड़ें समय सबमिट करें';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button।';

  @override
  String get playerSkipStart => 'प्रारंभ करें';

  @override
  String get playerSkipEnd => 'ख़त्म';

  @override
  String get playerSkipUseNow => 'वर्तमान स्थिति का उपयोग करें';

  @override
  String get playerSkipSend => 'AniSkip पर सबमिट करें';

  @override
  String get playerSkipSent => 'AniSkip पर सबमिट किए गए समय को छोड़ें, धन्यवाद';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip ने स्किप टाइम से इनकार कर दिया: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details।';

  @override
  String get playerSkipNoMal =>
      'इस शीर्षक में कोई MyAnimeList आईडी नहीं है, AniSkip इसे नहीं ले सकता';

  @override
  String get playerNoChapters => 'कोई चैप्टर नहीं';

  @override
  String get playerTimestamp => 'टाइमस्टैम्प';

  @override
  String get playerAutoPlayDelay => 'अगले एपिसोड का काउंटडाउन';

  @override
  String get playerWatchedAt => 'देखा हुआ गिनो';

  @override
  String playerNextIn(int seconds) {
    return 'अगला एपिसोड $seconds सेकंड में';
  }

  @override
  String get playerPlayNow => 'अभी चलाओ';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: इस टाइटल के लिए अपने-आप स्किप होगा';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: इस टाइटल के लिए अपने-आप स्किप नहीं होगा';
  }

  @override
  String get playerAudioLanguage => 'पसंदीदा ऑडियो भाषा';

  @override
  String get playerLanguageOrderHint =>
      'भाषाओं को कॉमा से अलग करो। जो सबसे पहले मिलेगी वही इस्तेमाल होगी।';

  @override
  String get playerPip => 'पिक्चर इन पिक्चर';

  @override
  String get playerAutoPip => 'छोड़ते वक़्त पिक्चर इन पिक्चर';

  @override
  String get playerAutoPipDesc => 'ऐप छोड़ने पर छोटी विंडो में चलता रहे';

  @override
  String get playerPipPlay => 'खेलो';

  @override
  String get playerPipPause => 'विराम';

  @override
  String get playerPipBack => 'रिवाइंड करें';

  @override
  String get playerPipForward => 'आगे';

  @override
  String get playerPipRestore => 'खिलाड़ी के पास वापस जाएँ';

  @override
  String get playerPipActive => 'एक छोटी सी खिड़की में खेल रहा हूँ';

  @override
  String get listDateAdded => 'सूची में जोड़ा गया';

  @override
  String get listDateLastWatched => 'आखिरी बार देखा';

  @override
  String playerAutoPlaying(String title) {
    return 'अगला $title चल रहा है…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'शेडर इंस्टॉल नहीं हो पाए: $error';
  }

  @override
  String playerChapter(int number) {
    return 'चैप्टर $number';
  }

  @override
  String get playerPerTitle => 'सिर्फ़ इस टाइटल के लिए';

  @override
  String get playerPerTitleDesc =>
      'ये ऑप्शन इसी टाइटल के लिए रखो और अपने डिफ़ॉल्ट को मत छेड़ो';

  @override
  String get playerSwapGestures => 'स्वाइप की साइड बदलो';

  @override
  String get playerSwapGesturesDesc => 'ब्राइटनेस बाईं तरफ और वॉल्यूम दाईं तरफ';

  @override
  String get playerOpenBig => 'बड़े व्यू में खोलो';

  @override
  String get playerOpenBigDesc =>
      'प्लेयर एपिसोड लिस्ट के बजाय फुलस्क्रीन में शुरू हो';

  @override
  String get playerPauseOnBlur => 'फोकस हटने पर रोको';

  @override
  String get playerPauseOnBlurDesc =>
      'ऐप ढक जाने पर, जैसे नोटिफिकेशन पैनल खुलने पर, रुक जाए और वापस आने पर चालू हो जाए';

  @override
  String get playerAudioOutput => 'ऑडियो आउटपुट';

  @override
  String get fontAppDefault => 'ऐप फ़ॉन्ट';

  @override
  String get fontImport => 'फ़ॉन्ट इम्पोर्ट करो';

  @override
  String get fontSample => 'तेज, भूरी लोमडी आलसी कुत्ते के उपर कूद गई';

  @override
  String get playerSubtitleDelay => 'सबटाइटल डिले';

  @override
  String get playerAudioDelay => 'ऑडियो डिले';

  @override
  String get playerDelayReset => 'रीसेट';

  @override
  String get playerOnlineSubtitles => 'ऑनलाइन सबटाइटल';

  @override
  String get playerOnlineSearchHint => 'टाइटल और एपिसोड';

  @override
  String get playerOnlineNone => 'कोई सबटाइटल नहीं मिला';

  @override
  String playerOnlineFailed(String error) {
    return 'सबटाइटल सर्च फ़ेल हो गई: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ये सबटाइटल डाउनलोड नहीं हो पाया: $error';
  }

  @override
  String get playerOnlineMatch => 'इस फ़ाइल से मैच करता है';

  @override
  String get playerOnlineEpisode => 'एपिसोड मैच';

  @override
  String playerOnlineDownloads(int count) {
    return '$count डाउनलोड';
  }

  @override
  String get playerSeekPreview => 'सीक प्रीव्यू';

  @override
  String get playerSeekPreviewDesc =>
      'स्क्रबिंग करते वक़्त सीक बार के ऊपर एक छोटा फ़्रेम प्रीव्यू दिखाओ। ये दूसरा लो-रेज़ोल्यूशन डिकोडर खोलता है, इसलिए स्ट्रीम पर ज़्यादा डेटा लगता है।';

  @override
  String get playerSettingsChip => 'सेटिंग्स';

  @override
  String get playerAudioDevice => 'ऑडियो डिवाइस';

  @override
  String get settingsDownloads => 'डाउनलोड';

  @override
  String get settingsDownloadsDesc => 'ऑफ़लाइन एपिसोड, क्यू और ऑफ़लाइन मोड';

  @override
  String get downloadsTitle => 'डाउनलोड';

  @override
  String get widgetContinue => 'जारी रखें';

  @override
  String get widgetReleases => 'जल्द ही रिलीज हो रही है';

  @override
  String get widgetMore => 'भी प्रगति पर है';

  @override
  String get widgetNothing => 'अभी जारी रखने के लिए कुछ भी नहीं है';

  @override
  String get downloadStorageTitle => 'भंडारण';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डाउनलोड',
      one: '1 डाउनलोड',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size पहले ही देख या पढ़ चुका है';
  }

  @override
  String get downloadFreeUp => 'जगह खाली करो';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ने डाउनलोड देखा',
      one: '1 डाउनलोड देखा गया',
    );
    return ' $_temp0 और मुफ़्त $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'मुक्त $size';
  }

  @override
  String get downloadDeleteWatched => 'देखा हुआ हटाएं';

  @override
  String get downloadDeleteAll => 'सभी हटाएं';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title का प्रत्येक डाउनलोड हटाएं?';
  }

  @override
  String get downloadNothingWatched =>
      'आपने जो कुछ भी पूरा कर लिया है वह डाउनलोड नहीं हुआ है';

  @override
  String get downloadStorageEmpty =>
      'कोई भी डाउनलोड स्थान का उपयोग नहीं कर रहा है';

  @override
  String get downloadsOpenDesc => 'क्यू और इस डिवाइस पर सेव सब कुछ देखो';

  @override
  String get downloadTitle => 'डाउनलोड करो';

  @override
  String get downloadMetaOnly => 'केवल मेटाडेटा';

  @override
  String get downloadMetaFailed => 'शीर्षक फ़ोल्डर नहीं बनाया जा सका';

  @override
  String downloadMetaSaved(String path) {
    return 'सहेजा गया. अपनी फ़ाइलें $path में रखें';
  }

  @override
  String get downloadAlready => 'पहले से डाउनलोड है या क्यू में है';

  @override
  String get downloadPickStream => 'कौन सी स्ट्रीम डाउनलोड करनी है?';

  @override
  String get downloadPickSubtitle => 'कौन सा सबटाइटल डाउनलोड करना है?';

  @override
  String get downloadPickAudio => 'कौन सा ऑडियो ट्रैक डाउनलोड करना है?';

  @override
  String get downloadNoAudio => 'कोई एक्स्ट्रा ऑडियो नहीं';

  @override
  String get downloadAudio => 'ऑडियो';

  @override
  String get downloadNoSubtitle => 'कोई सबटाइटल नहीं';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ये स्ट्रीम एक HLS प्लेलिस्ट है। इसे डाउनलोड करने के लिए FFmpeg ऐडऑन चाहिए।';

  @override
  String get downloadSourceMissing => 'इस एपिसोड का सोर्स इंस्टॉल नहीं है';

  @override
  String get downloadDashDrm => 'यह स्ट्रीम DRM संरक्षित है';

  @override
  String get downloadDashNoVideo => 'DASH मेनिफेस्ट में कोई वीडियो नहीं है';

  @override
  String get downloadWaitingConnection => 'कनेक्शन का इंतज़ार है';

  @override
  String get downloadSubtitles => 'सबटाइटल';

  @override
  String get downloadDownloaded => 'डाउनलोड हो गया';

  @override
  String get downloadOffline => 'ऑफ़लाइन';

  @override
  String get downloadDelete => 'डाउनलोड डिलीट करो';

  @override
  String get downloadCancel => 'कैंसल';

  @override
  String get downloadPause => 'पॉज़ करो';

  @override
  String get downloadPaused => 'पॉज़ है';

  @override
  String get downloadResume => 'रिज़्यूम करो';

  @override
  String get downloadPauseAll => 'सब पॉज़ करो';

  @override
  String get downloadResumeAll => 'सब रिज़्यूम करो';

  @override
  String get downloadQueuedState => 'क्यू में इंतज़ार है';

  @override
  String get downloadResolving => 'स्ट्रीम ला रहे हैं…';

  @override
  String get downloadUsedFallback =>
      'कोई मैचिंग स्ट्रीम नहीं मिली, पहली वाली इस्तेमाल की';

  @override
  String get downloadTabQueue => 'क्यू';

  @override
  String get downloadTabDone => 'हो गया';

  @override
  String get downloadTabFailed => 'फ़ेल';

  @override
  String get downloadEmptyQueue => 'कुछ भी डाउनलोड नहीं हो रहा';

  @override
  String get downloadEmptyDone => 'अभी तक कुछ डाउनलोड नहीं हुआ';

  @override
  String get downloadEmptyFailed => 'कोई फ़ेल डाउनलोड नहीं';

  @override
  String get downloadNext => 'अगला एपिसोड';

  @override
  String downloadNextN(int count) {
    return 'अगले $count एपिसोड';
  }

  @override
  String get downloadCustom => 'Custom amount…';

  @override
  String downloadCustomPrompt(int max) {
    return 'How many from here? (1–$max)';
  }

  @override
  String downloadUnwatched(int count) {
    return 'सारे अनदेखे ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ये रेंज ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'सारे एपिसोड ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड क्यू में',
      one: '1 एपिसोड क्यू में',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name डाउनलोड हो गया';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name डाउनलोड नहीं हो पाया';
  }

  @override
  String downloadStorage(String size) {
    return 'डाउनलोड में $size लगा है';
  }

  @override
  String get downloadQueueHeader => 'क्यू';

  @override
  String get downloadParallel => 'एक साथ डाउनलोड';

  @override
  String get downloadParallelDesc => 'एक बार में एक डाउनलोड चलाओ या कई साथ में';

  @override
  String get downloadOneByOne => 'एक-एक करके';

  @override
  String get downloadNotifications => 'डाउनलोड नोटिफ़िकेशन';

  @override
  String get downloadNotificationsDesc =>
      'जहाँ सिस्टम सपोर्ट करे वहाँ लाइव प्रोग्रेस, वरना डाउनलोड पूरा होने पर एक नोट';

  @override
  String get downloadNotifyLive => 'लाइव';

  @override
  String get downloadNotifyDone => 'पूरा होने पर';

  @override
  String get downloadNotifyOff => 'बंद';

  @override
  String get downloadInfoFile => 'हर डाउनलोड के बगल में इन्फ़ो फ़ाइल लिखो';

  @override
  String get downloadInfoFileDesc =>
      'स्ट्रीम, क्वालिटी, सबटाइटल और स्किप टाइम एक छोटी .json फ़ाइल में सेव करता है';

  @override
  String get offlineHeader => 'ऑफ़लाइन';

  @override
  String get offlineModeDesc =>
      'ऑटो सिर्फ़ तब ऑफ़लाइन जाता है जब ऐप बिना कनेक्शन के शुरू हो। हमेशा तब तक ऑफ़लाइन रहता है जब तक तुम बदलो नहीं।';

  @override
  String get offlineModeOff => 'बंद';

  @override
  String get offlineModeAlways => 'हमेशा';

  @override
  String get offlineModeOn =>
      'ऑफ़लाइन मोड ऑन है। बदलाव यहीं सेव होते हैं और ऑनलाइन आने पर भेजे जाएँगे।';

  @override
  String get offlineSaved =>
      'इस डिवाइस पर सेव हो गया, ऑनलाइन होने पर सिंक होगा';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बदलाव सिंक हुए',
      one: '1 बदलाव सिंक हुआ',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बदलाव सिंक का इंतज़ार कर रहे हैं',
      one: '1 बदलाव सिंक का इंतज़ार कर रहा है',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'सिंक का इंतज़ार कर रहे बदलाव';

  @override
  String get offlinePendingNone => 'कुछ इंतज़ार में नहीं है';

  @override
  String get offlineSyncNow => 'अभी सिंक करो';

  @override
  String get offlineDiscard => 'हटा दो';

  @override
  String get downloadNotOffline =>
      'ये एपिसोड डाउनलोड नहीं है, इसलिए ऑफ़लाइन उपलब्ध नहीं है';

  @override
  String get offlineModeChip => 'ऑफ़लाइन';

  @override
  String get downloadNextChapter => 'अगला चैप्टर';

  @override
  String downloadNextChapters(int count) {
    return 'अगले $count चैप्टर';
  }

  @override
  String downloadUnread(int count) {
    return 'सारे अनपढ़े ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'सारे चैप्टर ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total पेज';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count पेज';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ऐडऑन चाहिए';

  @override
  String get downloadFfmpegBody =>
      'ये स्ट्रीम एक HLS प्लेलिस्ट है। FFmpeg ऐडऑन इसके टुकड़ों को जोड़कर एक mp4 फ़ाइल बना देता है। इसके बिना टुकड़े एपिसोड फ़ोल्डर में रखे जाते हैं और वहीं से चलते हैं।';

  @override
  String get downloadFfmpegInstall => 'इंस्टॉल करो';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg इंस्टॉल हो रहा है, इसमें थोड़ा टाइम लग सकता है…';

  @override
  String get downloadFinishing => 'टुकड़ों को एक फ़ाइल में जोड़ रहे हैं…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total हिस्से';
  }

  @override
  String get downloadTorrentNoFile =>
      'टोरेंट में डाउनलोड करने लायक कोई वीडियो फ़ाइल नहीं है';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम डाउनलोड हो रहे हैं',
      one: '1 आइटम डाउनलोड हो रहा है',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'देखे हुए डाउनलोड डिलीट करो';

  @override
  String get downloadAutoDeleteDesc =>
      'तुम्हारी प्रोग्रेस उस एपिसोड या चैप्टर तक पहुँचते ही डाउनलोड हटा देता है';

  @override
  String get downloadConnections => 'हर डाउनलोड के लिए कनेक्शन';

  @override
  String get downloadConnectionsDesc =>
      'बड़ी फ़ाइल को हिस्सों में बाँटकर एक साथ मँगाता है। कुछ सर्वर इसकी लिमिट लगाते हैं।';

  @override
  String get downloadPlayChoice => 'यहाँ से चलाओ';

  @override
  String get downloadPlayLocalDesc => 'इस डिवाइस पर सेव की हुई फ़ाइल';

  @override
  String get downloadPlayStream => 'ऑनलाइन स्ट्रीम करो';

  @override
  String get downloadPlayStreamDesc => 'एपिसोड सोर्स से लोड करो';

  @override
  String get offlineFeedTitle => 'इस डिवाइस पर डाउनलोड किया';

  @override
  String get offlineFeedEmpty =>
      'ऑनलाइन रहते हुए कुछ डाउनलोड करो, वो यहाँ दिखेगा';

  @override
  String get offlineEnabled => 'ऑफ़लाइन मोड ऑन है';

  @override
  String get offlineDisabled => 'ऑफ़लाइन मोड बंद है';

  @override
  String get downloadReadChoice => 'यहाँ से पढ़ो';

  @override
  String get downloadReadLocalDesc => 'इस डिवाइस पर सेव किए पेज';

  @override
  String get downloadReadOnline => 'ऑनलाइन पढ़ो';

  @override
  String get downloadReadOnlineDesc => 'चैप्टर सोर्स से लोड करो';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name को इस डिवाइस से डिलीट करें?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name का डाउनलोड कैंसल करें? जो पहले से डाउनलोड हो चुका है वो डिलीट हो जाएगा।';
  }

  @override
  String get downloadFfmpegFolder => 'फ़ोल्डर की तरह रखो';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'जो $count बदलाव कभी भेजे नहीं गए उन्हें फेंक दें? इन्हें वापस नहीं लाया जा सकता।',
      one: 'जो बदलाव कभी भेजा नहीं गया उसे फेंक दें? इसे वापस नहीं लाया जा सकता।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi का इंतज़ार है';

  @override
  String get downloadWaitingMetered => 'मीटर्ड कनेक्शन पर पॉज़ है';

  @override
  String get downloadWifiOnly => 'सिर्फ़ Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'मोबाइल डेटा पर होने पर डाउनलोड रुके रहते हैं';

  @override
  String get downloadMetered => 'मीटर्ड कनेक्शन पर पॉज़ करो';

  @override
  String get downloadMeteredDesc =>
      'उस Wi-Fi पर भी रुकता है जिसे तुम्हारा डिवाइस मीटर्ड मार्क करता है';

  @override
  String get downloadSpeedLimit => 'स्पीड लिमिट';

  @override
  String get downloadSpeedLimitDesc => 'कुल डाउनलोड स्पीड की सीमा तय करता है';

  @override
  String get downloadUnlimited => 'अनलिमिटेड';

  @override
  String get downloadMoveToTop => 'सबसे ऊपर ले जाओ';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds सीड · $peers पीयर';
  }

  @override
  String get downloadTorrentFile => 'कौन सी फ़ाइल?';

  @override
  String get downloadTorrentAuto => 'एपिसोड अपने-आप मैच करो';

  @override
  String get downloadTorrentLoading => 'टोरेंट पढ़ रहे हैं…';

  @override
  String get watchAutoSource => 'अपने-आप अगले सोर्स पर जाओ';

  @override
  String get watchAutoSourceDesc =>
      'अगर सोर्स को टाइटल न मिले या लोड फ़ेल हो, तो अगला इंस्टॉल किया सोर्स try करो';

  @override
  String get extensionTest => 'एक्सटेंशन टेस्ट करो';

  @override
  String get extensionTestCopy => 'फ़ेल हुए और उनके लॉग कॉपी करो';

  @override
  String get extensionTestQuery => 'सर्च टर्म';

  @override
  String get extensionTestRun => 'चलाओ';

  @override
  String get extensionTestStop => 'रुको';

  @override
  String get extensionTestNone => 'इस टाइप का कोई एक्सटेंशन इंस्टॉल नहीं है';

  @override
  String get extensionTestNotRun => 'अभी टेस्ट नहीं हुआ';

  @override
  String get extensionTestSearch => 'सर्च';

  @override
  String get extensionTestDetail => 'डिटेल';

  @override
  String get extensionTestUnits => 'एपिसोड / चैप्टर';

  @override
  String get extensionTestLinks => 'स्ट्रीम / पेज';

  @override
  String extensionTestFailedAt(String step) {
    return '$step पर फ़ेल हुआ';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total में से $done टेस्ट हुए · $passed पास · $failed फ़ेल';
  }

  @override
  String get extensionTestCopyLogs => 'पूरे लॉग के साथ सब कुछ कॉपी करो';

  @override
  String get onboardingFeaturesTitle => 'सब कुछ एक जगह';

  @override
  String get onboardingFeaturesBody =>
      'जो कुछ तुम ट्रैक करते, देखते और पढ़ते हो, बिना कई ऐप्स के चक्कर काटे।';

  @override
  String get onboardingFeatureTrack => 'सब कुछ ट्रैक करो';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu और MangaBaka पर लिस्ट, प्रोग्रेस और स्कोर।';

  @override
  String get onboardingFeatureWatch => 'देखो और पढ़ो';

  @override
  String get onboardingFeatureWatchDesc =>
      'एक्सटेंशन इंस्टॉल करो और एनीमे स्ट्रीम करो या मंगा और नॉवेल सीधे ऐप में पढ़ो।';

  @override
  String get onboardingFeatureOffline => 'ऑफ़लाइन ले जाओ';

  @override
  String get onboardingFeatureOfflineDesc =>
      'एपिसोड और चैप्टर डाउनलोड करो, और बिना कनेक्शन के भी चलते रहो।';

  @override
  String get onboardingFeatureSync => 'लिस्ट सिंक में रखो';

  @override
  String get onboardingFeatureSyncDesc =>
      'अपनी लिस्ट को सर्विस के बीच कॉपी करो, या जो आगे हो उसे जीतने दो।';

  @override
  String get onboardingServices => 'के साथ काम करता है';

  @override
  String sourceNotifyOn(String source) {
    return 'जब $source के पास कुछ नया होगा तो आपको बताया जाएगा';
  }

  @override
  String get sourceNotifyOff => 'सूचनाएं जारी करना बंद करें';

  @override
  String get sourceNotifyNeedsSource => 'पहले मिलान वाला स्रोत चुनें';

  @override
  String sourceNotifyAllOut(int count) {
    return 'सब कुछ ($count) पहले से ही बाहर है, प्रतीक्षा करने के लिए कुछ भी नहीं है';
  }

  @override
  String get sourceNotifyTooltipOn => 'सूचनाएं जारी करना बंद करें';

  @override
  String get sourceNotifyTooltipOff => 'नई रिलीज़ के बारे में मुझे सूचित करें';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'एपिसोड $number $source पर उपलब्ध है';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'एपिसोड $from–$to $source पर उपलब्ध हैं';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'अध्याय $number $source पर उपलब्ध है';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'अध्याय $from–$to $source पर उपलब्ध हैं';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count शीर्षकों में कुछ नया है';
  }

  @override
  String get navSources => 'सूत्र';

  @override
  String sourceInactiveOpen(String manager) {
    return 'यह स्रोत $manager से संबंधित है, जो सक्रिय विस्तार सेवा नहीं है';
  }

  @override
  String get sourceAlertsHeader => 'सूचनाएं जारी करें';

  @override
  String get sourceAlertsSwitch => 'सब्स्क्राइब्ड शीर्षकों की जाँच करें';

  @override
  String get sourceAlertsSwitchDesc =>
      'हर बार ऐप खुलने पर, शीर्षकों के लिए आपने घंटी बजा दी';

  @override
  String get sourceSkipUnstarted =>
      'उन शीर्षकों को छोड़ें जिन्हें आपने शुरू नहीं किया है';

  @override
  String get sourceSkipUnstartedDesc =>
      'अभी तक कुछ भी नहीं देखा या पढ़ा गया है, लेकिन एपिसोड पहले से मौजूद हैं';

  @override
  String get sourceSkipUnseen => 'जब आपके पास अनदेखे एपिसोड हों तो छोड़ें';

  @override
  String get sourceSkipUnseenDesc =>
      'आपने अभी भी पकड़ने के लिए एपिसोड जारी किए हैं';

  @override
  String get sourceManage => 'सदस्यताएँ';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शीर्षक',
      one: '1 शीर्षक',
      zero: 'कोई शीर्षक नहीं',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'अभी जांचें';

  @override
  String get sourceCheckNowDesc => 'शेड्यूल और स्किप नियमों की अनदेखी करता है';

  @override
  String get sourceChecking => 'जाँच हो रही है...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count शीर्षकों में कुछ नया है',
      one: '1 शीर्षक में कुछ नया है',
      zero: 'कोई नई बात नहीं',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'अभी तक कोई सदस्यता नहीं';

  @override
  String get sourceEmptyMessage =>
      'नए एपिसोड के बारे में बताने के लिए शीर्षक के एपिसोड के ऊपर घंटी को टैप करें';

  @override
  String get sourceAll => 'सब';

  @override
  String sourceInactive(String manager) {
    return 'निष्क्रिय: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return 'इस एक्सटेंशन सेवा में $source स्थापित नहीं है';
  }

  @override
  String get sourceUnreachable => 'स्रोत जवाब नहीं दे रहा है';

  @override
  String get sourceFinished => 'समाप्त';

  @override
  String get sourceSkippedCompleted => 'छोड़ा गया: पूरा हुआ';

  @override
  String get sourceSkippedUnstarted => 'छोड़ा गया: प्रारंभ नहीं हुआ';

  @override
  String get sourceSkippedUnseen => 'छोड़े गए: अनदेखे एपिसोड';

  @override
  String get sourceWaiting => 'अगली रिलीज का इंतजार है';

  @override
  String sourceNextCheck(String when) {
    return 'अगला चेक $when';
  }

  @override
  String get sourceSoon => 'जल्द ही';

  @override
  String sourceInHours(int count) {
    return '${count}h में';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d में';
  }

  @override
  String sourceLatest(String number) {
    return 'नवीनतम: $number';
  }

  @override
  String get sourceMute => 'मूक';

  @override
  String get sourceUnmute => 'अनम्यूट करें';

  @override
  String get sourceMuted => 'मौन';

  @override
  String get sourceUnsubscribe => 'सदस्यता समाप्त करें';

  @override
  String get sourcePickAnother => 'कोई अन्य स्रोत चुनें';

  @override
  String get sourceOpenExtensions => 'एक्सटेंशन खोलें';

  @override
  String get sourceNoticesEmpty => 'अभी तक कोई रिलीज़ नोटिस नहीं';

  @override
  String get sourceNoticesEmptyMessage =>
      'आपके सब्सक्राइब किए गए शीर्षकों के नए एपिसोड और अध्याय यहां दिखाई देते हैं';

  @override
  String get sourceOpenTitle => 'शीर्षक खोलें';

  @override
  String get extensionsLoading => 'एक्सटेंशन लोड हो रहे हैं...';

  @override
  String get updateWhatsNew => 'नया क्या है';

  @override
  String get updateLater => 'बाद में';

  @override
  String get updateSkipVersion => 'इस संस्करण को छोड़ें';

  @override
  String get updatePreparing => 'तैयारी हो रही है...';

  @override
  String get updateDownloading => 'डाउनलोड हो रहा है';

  @override
  String get updateInstalling => 'इंस्टाल किया जा रहा है...';

  @override
  String updateSizeOf(String done, String total) {
    return '$done का $total';
  }

  @override
  String updateSpeed(String speed) {
    return '__पी0__/एस';
  }

  @override
  String updateReleased(String date) {
    return 'जारी $date';
  }

  @override
  String get updateNoAsset =>
      'इस रिलीज़ का आपके डिवाइस के लिए कोई डाउनलोड नहीं है';

  @override
  String get updateUpToDate => 'आप नवीनतम संस्करण पर हैं';

  @override
  String get updateIosHint =>
      'iOS बिल्ड ऐप स्टोर पर नहीं हैं। रिलीज़ पेज से .ipa लें और इसे AltStore या SideStore के साथ साइडलोड करें';

  @override
  String get updateOpenedBrowser => 'अपना ब्राउज़र जांचें';

  @override
  String get updateTryAgain => 'पुनः प्रयास करें';

  @override
  String get settingsNotifications => 'सूचनाएं';

  @override
  String get settingsNotificationsDesc =>
      'आपकी सूचियों, नए एपिसोड और अध्यायों और टिप्पणी उत्तरों के लिए अलर्ट';

  @override
  String get settingsAboutUpdates => 'के बारे में और अद्यतन';

  @override
  String get settingsAboutUpdatesDesc =>
      'ऐप अपडेट, संस्करण, लॉग, लिंक और समर्थन';

  @override
  String get settingsGroupAccount => 'आपका खाता';

  @override
  String get settingsGroupContent => 'सामग्री';

  @override
  String get settingsGroupApp => 'ऐप';

  @override
  String get settingsAnimeDesc =>
      'प्लेयर, उपशीर्षक, स्किपिंग, एपिसोड सूची और एपिसोड विवरण';

  @override
  String get settingsMangaDesc =>
      'रीडर मोड, नियंत्रण, प्रदर्शन और अध्याय ट्रैकिंग';

  @override
  String get settingsNovelDesc =>
      'पाठ, पृष्ठ पलटना, अनुवाद करना और ज़ोर से पढ़ना';

  @override
  String get settingsLocalPlay => 'स्थानीय नाटक';

  @override
  String get settingsLocalPlayDesc =>
      'फ़ाइलें, फ़ोल्डर, नेटवर्क स्ट्रीम और टोरेंट चलाएं, या कोई किताब खोलें';

  @override
  String get settingsLocalPlayVideo => 'वीडियो';

  @override
  String get settingsLocalPlayBooks => 'किताबें';

  @override
  String get settingsWatchSections => 'अनुभाग';

  @override
  String get settingsSectionLists => 'एपिसोड और अध्याय सूचियाँ';

  @override
  String get settingsSectionProgress => 'प्रगति ट्रैकिंग';

  @override
  String get updateChannelDesc =>
      'स्थिर परीक्षणित रिलीज़ है। प्री-रिलीज़ और अल्फ़ा को जल्द ही नई सुविधाएँ मिलती हैं लेकिन वे ख़राब हो सकती हैं';

  @override
  String get checkNowDesc => 'तुरंत एक नया संस्करण खोजें';

  @override
  String get generalSectionBasics => 'भाषा एवं व्यवहार';

  @override
  String get generalSectionSecurity => 'सुरक्षा';

  @override
  String get generalSectionPrivacy => 'गोपनीयता';

  @override
  String notificationsOtherService(String service) {
    return 'इसे खोलने के लिए $service पर स्विच करें';
  }

  @override
  String get secPlayerPlayback =>
      'डिफ़ॉल्ट गति, ऑटो प्ले, वीडियो फिट, ओरिएंटेशन और पिक्चर इन पिक्चर';

  @override
  String get secPlayerSkip => 'उद्घाटन, अंत और पुनर्कथन स्वचालित रूप से छोड़ें';

  @override
  String get secPlayerControls =>
      'स्वाइप करें, होल्ड करें और जेस्चर पर टैप करें और पूर्वावलोकन खोजें';

  @override
  String get secPlayerSubtitles => 'भाषाएँ, स्वरूप और उपशीर्षक प्रतिपादन';

  @override
  String get secPlayerShaders => 'एनीमे अपस्केलिंग और आपके अपने शेडर्स';

  @override
  String get secPlayerEngine =>
      'डिकोडर, वीडियो और ऑडियो आउटपुट, बफरिंग। यदि प्लेबैक में समस्या हो तो ही इन्हें बदलें';

  @override
  String get secPlayerMpv => 'mpv.conf, स्क्रिप्ट और उन्नत ट्यूनिंग';

  @override
  String get secAnimeList => 'फिलर एपिसोड और न देखे गए थंबनेल';

  @override
  String get secProgress =>
      'जब आपकी देखी या पढ़ी गई प्रगति आपकी सूची में सहेजी जाती है';

  @override
  String get secAnimeDetails =>
      'एपिसोड के शीर्षक, थंबनेल और सारांश कहां से आते हैं';

  @override
  String get secReaderReading => 'रीडिंग मोड, पेज टर्निंग, ज़ूम और अगला अध्याय';

  @override
  String get secReaderControls =>
      'ज़ोन, वॉल्यूम कुंजियाँ और ऑटो स्क्रॉल टैप करें';

  @override
  String get secReaderDisplay => 'पृष्ठभूमि, चमक, फ़ुलस्क्रीन और पृष्ठ संख्या';

  @override
  String get secNovelText => 'फ़ॉन्ट, आकार, रिक्ति, मार्जिन और पेज टर्निंग';

  @override
  String get secNovelTranslate => 'पढ़ते समय अध्यायों का अनुवाद करें';

  @override
  String get secNovelSpeech => 'जोर से पढ़ने के लिए आवाज, गति और पिच';

  @override
  String get secNotifyAbout => 'चुनें कि किस प्रकार की गतिविधि अलर्ट भेजती है';

  @override
  String get layoutTitle => 'लेआउट';

  @override
  String get layoutDesc => 'बार पर बटन चुनें, स्थानांतरित करें और छिपाएँ';

  @override
  String get layoutHint =>
      'किसी बटन को स्थानांतरित करने के लिए उसे खींचें (पहले टच स्क्रीन पर दबाए रखें)। किसी एक को काटने, स्थानांतरित करने या छिपाने के लिए उस पर टैप करें';

  @override
  String layoutDropInto(String zone) {
    return 'ड्रॉप इन: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'चल रहा है $name। इसे लगाने के लिए पेस्ट बटन दबाएँ';
  }

  @override
  String get layoutTitleFixed => 'शीर्षक';

  @override
  String get layoutZoneTopStart => 'शीर्ष पट्टी, शीर्षक से पहले';

  @override
  String get layoutZoneTopEnd => 'शीर्ष पट्टी, शीर्षक के बाद';

  @override
  String get layoutZoneBottomStart => 'निचली पट्टी, बाएँ';

  @override
  String get layoutZoneBottomEnd => 'नीचे की पट्टी, दाएँ';

  @override
  String get layoutZoneSecondRow => 'छिपा हुआ: सामान्य दृश्य में दूसरी पंक्ति';

  @override
  String get layoutZoneOverflow => 'छिपा हुआ: अधिक मेनू में';

  @override
  String get layoutEmptyZone => 'यहां बटन ड्रॉप करें';

  @override
  String get layoutCut => 'काटो';

  @override
  String get layoutPaste => 'यहाँ चिपकाएँ';

  @override
  String get layoutHide => 'छिपाओ';

  @override
  String layoutMoveTo(String zone) {
    return '$zone पर जाएँ';
  }

  @override
  String get layoutReset => 'डिफ़ॉल्ट पर रीसेट करें';

  @override
  String get layoutMore => 'अधिक';

  @override
  String get sourceWhyAction => 'कोई चेतावनी क्यों नहीं?';

  @override
  String get sourceWhyStatus => 'स्थिति';

  @override
  String get sourceWhyLastCheck => 'अंतिम बार जाँच की गई';

  @override
  String get sourceWhyNever => 'अभी नहीं';

  @override
  String get sourceWhyNextCheck => 'अगली जांच';

  @override
  String get sourceWhyNewest => 'स्रोत पर नवीनतम';

  @override
  String get sourceWhyProgress => 'आपकी प्रगति';

  @override
  String get sourceWhyListStatus => 'सूची की स्थिति';

  @override
  String get sourceWhyFailures => 'लगातार विफल जाँचें';

  @override
  String get sourceWhyLastRelease => 'अंतिम नई रिलीज़ देखी गई';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs।';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert।';

  @override
  String get sourceWhyVerdictSkipped =>
      'यह शीर्षक ऊपर के नियमों में छोड़ दिया गया है। सूचनाओं की सेटिंग में इन्हें बदलें, या फिर भी जाँचने के लिए \'अभी जाँचें\' का उपयोग करें।';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked।';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted।';

  @override
  String get externalPlayerTitle => 'स्ट्रीम कहीं और खोलें';

  @override
  String get externalCopyUrl => 'स्ट्रीम लिंक कॉपी करें';

  @override
  String get externalCopied => 'स्ट्रीम लिंक कॉपी किया गया';

  @override
  String get externalChooser => 'किसी अन्य ऐप में खोलें';

  @override
  String get externalVlc => 'वीएलसी में खोलें';

  @override
  String get externalMpv => 'एमपीवी में खोलें';

  @override
  String get externalWebVideoCast => 'वेब वीडियो कास्ट';

  @override
  String get castViaAppHint => 'स्ट्रीम को वेब वीडियो कास्ट ऐप पर भेजें';

  @override
  String get externalFailed => 'स्ट्रीम नहीं खुल सकी. क्या प्लेयर स्थापित है?';

  @override
  String get addonInstalled => 'स्थापित';

  @override
  String get loadFailedActivity => 'गतिविधि लोड नहीं हो सकी';

  @override
  String get loadFailedFavourites =>
      'पसंदीदा लोड नहीं किया जा सका. पुनः प्रयास करें';

  @override
  String get loadFailedStats => 'आँकड़े लोड नहीं किए जा सके';

  @override
  String get loadFailedReplies => 'उत्तर लोड नहीं किये जा सके';

  @override
  String get cantBeUndone => 'This can\'t be undone।';

  @override
  String get searchTags => 'टैग खोजें';

  @override
  String get spoilerTapToView => 'स्पॉइलर, देखने के लिए टैप करें';

  @override
  String get mediaVideo => 'वीडियो';

  @override
  String get notificationSomeone => 'कोई';

  @override
  String get notificationATitle => 'एक शीर्षक';

  @override
  String get notificationAddedDetail => 'एनीलिस्ट में जोड़ा गया था';

  @override
  String get updateNoReleases => 'कोई रिलीज़ नहीं मिली';

  @override
  String get updateInvalidResponse => 'अमान्य अद्यतन प्रतिक्रिया';

  @override
  String get commentsRateLimited => 'दर सीमित';

  @override
  String get commentsConnectFailed => 'कनेक्ट करने में विफल';

  @override
  String get dnsNoRecords => 'कोई A रिकॉर्ड वापस नहीं आया';

  @override
  String get importTokenRejected => 'टोकन अस्वीकृत';

  @override
  String get developerRoleLead => 'लीड डेवलपर';

  @override
  String get developerRoleModerator => 'कलह मॉडरेटर';

  @override
  String extensionManagerTitle(String type) {
    return '$type मैनेजर';
  }

  @override
  String extensionsOfType(String type) {
    return '$type एक्सटेंशन';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name सेटिंग्स';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings।';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title का एपिसोड $episode प्रसारित हुआ';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'एपिसोड $episode प्रसारित हुआ';
  }

  @override
  String notificationAdded(String title) {
    return '$title को AniList में जोड़ा गया था';
  }

  @override
  String updateNotFound(String message) {
    return 'अद्यतन सर्वर उस रिलीज़ को नहीं ढूंढ सका: $message';
  }

  @override
  String get installStepJre => 'जावा रनटाइम';

  @override
  String get installStepCore => 'रनटाइम कोर';

  @override
  String installStepsProgress(int current, int total) {
    return '$total का चरण $current';
  }

  @override
  String get stepWaiting => 'इंतज़ार कर रहा हूँ';

  @override
  String get stepChecking => 'जाँच हो रही है...';

  @override
  String get stepUpToDate => 'अप टू डेट';

  @override
  String stepUpToDateWith(String detail) {
    return 'अद्यतित · $detail';
  }

  @override
  String get stepWillInstall => 'स्थापित किया जाएगा';

  @override
  String get stepWillUpdate => 'अपडेट किया जाएगा';

  @override
  String stepWillUpdateTo(String version) {
    return '$version पर अपडेट किया जाएगा';
  }

  @override
  String get stepInstalled => 'स्थापित';

  @override
  String get stepNotNeeded => 'यहां जरूरत नहीं है';

  @override
  String get stepFailed => 'असफल';

  @override
  String stepFailedWith(String reason) {
    return 'विफल: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'It runs on the Java runtime and the shared runtime core. They are installed first, and updated if they changed।';

  @override
  String get installRuntimeNewer =>
      'The runtime this manager runs on has an update।';

  @override
  String get removeJvmTitle => 'जावा रनटाइम हटाएँ?';

  @override
  String get removeJvmMessage =>
      'Desktop extension managers stop working until it is installed again. It is downloaded again the next time you install or open one।';

  @override
  String get runtimePreparing => 'रनटाइम तैयार किया जा रहा है...';

  @override
  String get calendarAll => 'सब';

  @override
  String get calendarAnime => 'एनिमे';

  @override
  String get calendarManga => 'मंगा';

  @override
  String get readerCloudflare => 'ब्राउज़र में खोलें (क्लाउडफ्लेयर जांच)';

  @override
  String get badgeBoardHint =>
      'Drag a badge onto a corner of the first card, or drag a badge already on it to move it. Badges swap places, so none ever overlap. Tap a badge below to turn it on or off।';

  @override
  String get statusAuto => 'ऑटो';

  @override
  String get unreadCounter => 'अपठित काउंटर';

  @override
  String get unreadCounterDesc =>
      'दिखाएँ कि पोस्टरों पर कितने एपिसोड या अध्याय बचे हैं';

  @override
  String get settingsShortcuts => 'कीबोर्ड शॉर्टकट';

  @override
  String get settingsShortcutsDesc =>
      'प्रत्येक कुंजी को देखें, बदलें और बंद करें';

  @override
  String get shortcutGroupApp => 'ऐप';

  @override
  String get shortcutGroupPlayer => 'वीडियो प्लेयर';

  @override
  String get shortcutGroupReader => 'पाठक';

  @override
  String get shortcutsEnableApp => 'ऐप शॉर्टकट';

  @override
  String get shortcutsEnablePlayer => 'प्लेयर शॉर्टकट';

  @override
  String get shortcutsEnableReader => 'पाठक शॉर्टकट';

  @override
  String get shortcutsEnableDesc =>
      'इस समूह की प्रत्येक कुंजी को चालू या बंद करें';

  @override
  String get shortcutNotSet => 'सेट नहीं';

  @override
  String get shortcutAddKey => 'एक कुंजी जोड़ें';

  @override
  String get shortcutResetOne => 'डिफ़ॉल्ट पर रीसेट करें';

  @override
  String get shortcutClearKeys => 'सभी कुंजियाँ हटाएँ';

  @override
  String get shortcutResetAll => 'सभी शॉर्टकट रीसेट करें';

  @override
  String get shortcutResetAllDesc =>
      'प्रत्येक कुंजी को उसके डिफ़ॉल्ट पर वापस रखें';

  @override
  String get shortcutPress => 'अपनी इच्छित कुंजी या संयोजन दबाएँ';

  @override
  String get shortcutPressHint =>
      'Each combination can only belong to one action, so taking one moves it।';

  @override
  String get shortcutSeekPercent => 'वीडियो के एक बिंदु पर जाएं';

  @override
  String get shortcutSeekPercentKeys => '0 – 9';

  @override
  String get shortcutAppBack => 'वापस जाओ';

  @override
  String get shortcutAppFullscreen => 'फ़ुलस्क्रीन टॉगल करें';

  @override
  String get shortcutAppGlass => 'ग्लास मोड टॉगल करें';

  @override
  String get shortcutAppMaterialYou => 'आप सामग्री टॉगल करें';

  @override
  String get shortcutAppDark => 'डार्क मोड टॉगल करें';

  @override
  String get shortcutAppOled => 'OLED को काला टॉगल करें';

  @override
  String get shortcutAppSearch => 'खोज खोलें';

  @override
  String get shortcutAppSettings => 'सेटिंग्स खोलें';

  @override
  String get shortcutAppDownloads => 'डाउनलोड खोलें';

  @override
  String get shortcutAppNotifications => 'सूचनाएं खोलें';

  @override
  String get shortcutAppIncognito => 'गुप्त टॉगल करें';

  @override
  String get shortcutAppShortcuts => 'कुंजीपटल शॉर्टकट दिखाएँ';

  @override
  String get shortcutPlayerPlayPause => 'चलायें या रोकें';

  @override
  String get shortcutPlayerSeekForward => 'आगे की तलाश करो';

  @override
  String get shortcutPlayerSeekBack => 'वापस खोजो';

  @override
  String get shortcutPlayerSeekForwardLong => '30 सेकंड आगे देखें';

  @override
  String get shortcutPlayerSeekBackLong => '30 सेकंड पीछे देखें';

  @override
  String get shortcutPlayerFrameForward => 'अगला फ़्रेम';

  @override
  String get shortcutPlayerFrameBack => 'पिछला फ़्रेम';

  @override
  String get shortcutPlayerVolumeUp => 'आवाज़ तेज़ करो';

  @override
  String get shortcutPlayerVolumeDown => 'आवाज़ कम';

  @override
  String get shortcutPlayerMute => 'मूक';

  @override
  String get shortcutPlayerFullscreen => 'फ़ुलस्क्रीन';

  @override
  String get shortcutPlayerNext => 'अगला एपिसोड';

  @override
  String get shortcutPlayerPrevious => 'पिछला एपिसोड';

  @override
  String get shortcutPlayerSkip => 'परिचय या अंत छोड़ें';

  @override
  String get shortcutPlayerPanel => 'एपिसोड सूची';

  @override
  String get shortcutPlayerSpeedUp => 'तेज़ प्लेबैक';

  @override
  String get shortcutPlayerSpeedDown => 'धीमा प्लेबैक';

  @override
  String get shortcutPlayerSpeedReset => 'सामान्य गति';

  @override
  String get shortcutPlayerSubtitleToggle => 'उपशीर्षक चालू या बंद';

  @override
  String get shortcutPlayerSubtitleCycle => 'अगला उपशीर्षक ट्रैक';

  @override
  String get shortcutPlayerAudioCycle => 'अगला ऑडियो ट्रैक';

  @override
  String get shortcutPlayerStreamCycle => 'अगली धारा';

  @override
  String get shortcutPlayerFit => 'वीडियो फ़िट बदलें';

  @override
  String get shortcutReaderRight => 'पृष्ठ दाईं ओर';

  @override
  String get shortcutReaderLeft => 'बाईं ओर पृष्ठ';

  @override
  String get shortcutReaderNextPage => 'अगला पेज';

  @override
  String get shortcutReaderPreviousPage => 'पिछला पृष्ठ';

  @override
  String get shortcutReaderControls => 'नियंत्रण दिखाएँ या छिपाएँ';

  @override
  String get shortcutReaderNextChapter => 'अगला अध्याय';

  @override
  String get shortcutReaderPreviousChapter => 'पिछला अध्याय';

  @override
  String shortcutTaken(String action) {
    return '$action से लिया गया';
  }

  @override
  String get incognitoTurnedOn => 'गुप्त मोड चालू';

  @override
  String get incognitoTurnedOff => 'गुप्त मोड बंद';

  @override
  String get onHoldAnime => 'एनीमे होल्ड पर';

  @override
  String get onHoldManga => 'होल्ड पर मंगा';

  @override
  String get droppedAnime => 'एनीमे गिरा दिया';

  @override
  String get droppedManga => 'मंगा गिरा दिया';

  @override
  String get generalSectionDesktop => 'डेस्कटॉप';

  @override
  String get closeAction => 'जब खिड़की बंद हो';

  @override
  String get closeActionQuit => 'ऐप छोड़ें';

  @override
  String get closeActionWhenBusy => 'जब कुछ चल रहा हो तो ट्रे में दौड़ते रहें';

  @override
  String get closeActionAlways => 'ट्रे में हमेशा चलाते रहें';

  @override
  String get closeActionNoTray =>
      'सिस्टम ट्रे यहां उपलब्ध नहीं है, इसलिए ऐप बंद होने पर बंद हो जाता है';

  @override
  String get gamepadNav => 'गेमपैड नेविगेशन';

  @override
  String get gamepadNavDesc =>
      'ऐप के चारों ओर घूमें और गेम कंट्रोलर से प्लेयर को नियंत्रित करें';

  @override
  String get trayShow => 'डार्टोत्सु दिखाओ';

  @override
  String get trayQuit => 'छोड़ो';

  @override
  String get trayIdle => 'कुछ भी नहीं चल रहा है';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम डाउनलोड हो रहा है',
      one: '$count आइटम डाउनलोड हो रहा है',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'आपकी सूचियाँ समन्वयित हो रही हैं';

  @override
  String get trayUpdating => 'ऐप अपडेट कर रहा हूं';

  @override
  String get trayPlaying => 'एक छोटी सी खिड़की में खेल रहा हूँ';

  @override
  String get traySearch => 'खोजें';

  @override
  String get trayPauseDownloads => 'डाउनलोड रोकें';

  @override
  String get trayResumeDownloads => 'डाउनलोड फिर से शुरू करें';

  @override
  String get playerDownloadTitle => 'प्लेयर डाउनलोड हो रहा है';

  @override
  String get playerDownloadBody =>
      'Dartotsu fetches its video engine once. Playback starts as soon as it is ready।';

  @override
  String get playerDownloadStarting => 'डाउनलोड प्रारंभ हो रहा है...';

  @override
  String get playerDownloadFailedTitle => 'खिलाड़ी नहीं मिल सका';

  @override
  String get playerDownloadFailedBody =>
      'Check your connection and try again. The download picks up where it stopped।';

  @override
  String get playerDownloadRetry => 'पुनः प्रयास करें';

  @override
  String get playerDownloadCopy => 'विवरण कॉपी करें';

  @override
  String get removePlayerTitle => 'प्लेयर हटाएँ?';

  @override
  String get removePlayerMessage =>
      'Videos can\'t play until the player is downloaded again।';

  @override
  String get trailerLoading => 'ट्रेलर लोड हो रहा है...';

  @override
  String get trailerFailed =>
      'ट्रेलर को ब्राउज़र में खोलने पर यहां उसे चलाया नहीं जा सका';
}
