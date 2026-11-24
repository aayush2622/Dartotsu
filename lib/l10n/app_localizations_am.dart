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
  String get appTagline => 'አዲሱ ምርጥ መተግበሪያ\nአኒሜና ማንጋ ለመከታተል';

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
  String get loadMore => 'ተጨማሪ ጫን';

  @override
  String get login => 'ግባ';

  @override
  String get continueAsGuest => 'እንደ እንግዳ ቀጥል';

  @override
  String get getStarted => 'እንጀምር';

  @override
  String get loginWithToken => 'በቶከን ግባ';

  @override
  String get pasteTokenHint => 'የመዳረሻ ቶከንህን ለጥፍ';

  @override
  String loginTo(String service) {
    return 'ወደ $service ግባ';
  }

  @override
  String get settings => 'ቅንብሮች';

  @override
  String get account => 'መለያ';

  @override
  String get about => 'ስለ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get animationSpeed => 'እነማዎች';

  @override
  String get animationSpeedDesc => 'በመተግበሪያው ውስጥ የሽግግሮችና የመግቢያ ውጤቶች ፍጥነት';

  @override
  String get animationSpeedOff => 'ጠፍቷል';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ኤክስቴንሽኖች',
      one: 'ኤክስቴንሽን',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'ያልታወቀ ምንጭ';

  @override
  String get install => 'ጫን';

  @override
  String get update => 'አዘምን';

  @override
  String get uninstall => 'አራግፍ';

  @override
  String get updateInstallCancelled =>
      'መጫኑ ተሰርዟል። አንድሮይድ መተግበሪያው ከተጫነው ጋር ይጋጫል ካለ፣ ፊርማው የተለየ ነው፦ መጀመሪያ አሁን ያለውን ስሪት አራግፈው ከዚያ ዝመናውን ይጫኑ';

  @override
  String updateInstallFailed(String error) {
    return 'ዝመናው አልተሳካም፦ $error';
  }

  @override
  String get appLock => 'የመተግበሪያ መቆለፊያ';

  @override
  String get appLockDesc => 'መተግበሪያው ሲከፈት ወይም ከትንሽ ጊዜ በኋላ ሲመለሱ የይለፍ ኮድ ጠይቅ';

  @override
  String get appLockBiometric => 'በባዮሜትሪክስ ይክፈቱ';

  @override
  String get appLockBiometricDesc =>
      'የይለፍ ቃሉን ከመተየብ ይልቅ የጣት አሻራዎን ወይም ፊትዎን ይጠቀሙ';

  @override
  String get appLockBiometricReason => 'Dartotsuን ይክፈቱ';

  @override
  String get appLockDelay => 'ስራ ሲፈታ ቆልፍ';

  @override
  String get appLockDelayAlways => 'ሁሌም';

  @override
  String get appLockDelayNever => 'በጭራሽ';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ደቂቃ',
      one: '1 ደቂቃ',
    );
    return 'በኋላ $_temp0';
  }

  @override
  String get appLockUseBiometric => 'ባዮሜትሪክስን ተጠቀም';

  @override
  String get appLockUnlock => 'የይለፍ ኮድዎን ያስገቡ';

  @override
  String get appLockWrong => 'የይለፍ ኮዱ ልክ አይደለም';

  @override
  String appLockWait(String seconds) {
    return 'ብዙ ጊዜ ሞክረዋል፣ $seconds ሰከንድ ይጠብቁ';
  }

  @override
  String get appLockNew => 'የይለፍ ኮድ ይምረጡ';

  @override
  String get appLockNewHint => 'ከ4 እስከ 8 አሃዞች';

  @override
  String get appLockConfirm => 'እንደገና ያስገቡት';

  @override
  String get appLockMismatch => 'የይለፍ ኮዶቹ አይመሳሰሉም';

  @override
  String get appLockOn => 'የይለፍ ኮድ ተቀምጧል';

  @override
  String get appLockRemoveTitle => 'መቆለፊያውን ለማጥፋት የይለፍ ኮድዎን ያስገቡ';

  @override
  String get installFailed => 'መጫን አልተሳካም';

  @override
  String get updateFailed => 'ማዘመን አልተሳካም';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ዝማኔዎች አሉ።',
      one: '1 ዝማኔ ይገኛል።',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'ሁሉንም አዘምን';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done የ$total ቅጥያዎች ተዘምነዋል';
  }

  @override
  String get updateConflictTitle => 'ዝማኔ አልተጫነም።';

  @override
  String updateConflictBody(String names) {
    return '$names አሁን ባለው ስሪት ላይ መጫን አልተቻለም። ይህ ብዙውን ጊዜ የተጫነው ቅጂ በተለየ መንገድ ተፈርሟል ማለት ነው። ያራግፉት እና አዲሱን ስሪት ይጫኑ?';
  }

  @override
  String get updateConflictAction => 'ያራግፉ እና እንደገና ይጫኑ';

  @override
  String get noSourceSettings => 'ይህ ምንጭ ምንም ቅንብር የለውም';

  @override
  String get addPluginRepository => 'የፕለጊን ማከማቻ ጨምር';

  @override
  String get pluginIndexUrlHint => 'የፕለጊን ማውጫ URL';

  @override
  String get addRepository => 'ማከማቻ ጨምር';

  @override
  String get importRepositoryFile => 'ፋይል አስመጣ';

  @override
  String get pluginRepoUpdated => 'የፕለጊን ማከማቻ ዘምኗል';

  @override
  String get pluginRepoUpdateFailed => 'የፕለጊን ማከማቻን ማደስ አልተሳካም';

  @override
  String get ok => 'እሺ';

  @override
  String get cancel => 'ተው';

  @override
  String get yes => 'አዎ';

  @override
  String get no => 'አይ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get clear => 'አጽዳ';

  @override
  String get test => 'ሞክር';

  @override
  String get testing => 'በመሞከር ላይ…';

  @override
  String get resolving => 'በመፍታት ላይ…';

  @override
  String get none => 'ምንም';

  @override
  String get selectMediaService => 'የሚዲያ አገልግሎት ምረጥ';

  @override
  String get manageServices => 'የሚዲያ አገልግሎቶች';

  @override
  String get manageServicesDesc =>
      'አገልግሎቶቹን እንደገና ይዘዙ እና የትኞቹ በቃሚው ውስጥ እንደሚታዩ ይምረጡ';

  @override
  String get manageServicesHint => 'እንደገና ለመደርደር ይጎትቱ፣ የማይጠቀሙትን ያጥፉ';

  @override
  String get pickColor => 'ቀለም ምረጥ';

  @override
  String get colorPickerCustom => 'ብጁ';

  @override
  String get colorPickerTransparent => 'ግልጽ';

  @override
  String get ltr => 'ከግራ ወደ ቀኝ';

  @override
  String get searchSettings => 'ቅንብሮችን ፈልግ';

  @override
  String nothingMatches(String query) {
    return '\"$query\" የሚመሳሰል ምንም የለም';
  }

  @override
  String searchCategory(String category) {
    return '$category ፈልግ';
  }

  @override
  String get settingsAppearance => 'ገጽታ';

  @override
  String get settingsAppearanceDesc => 'ጭብጥ፣ ቀለሞች፣ የብርጭቆ ሁነታ';

  @override
  String get settingsGeneral => 'አጠቃላይ';

  @override
  String get settingsGeneralDesc => 'ቋንቋና አሠራር';

  @override
  String get settingsNetwork => 'አውታረ መረብ';

  @override
  String get settingsNetworkDesc => 'የተጠቃሚ ወኪል፣ የምስክር ወረቀቶች፣ ዲ ኤን ኤስ እና ተኪ';

  @override
  String get settingsAccountDesc => 'የመከታተያ አገልግሎትና መግቢያ';

  @override
  String get settingsUpdates => 'ዝማኔዎች';

  @override
  String get amoledBlack => 'AMOLED ጥቁር';

  @override
  String get amoledBlackDesc => 'በጨለማ ሁነታ ንጹህ ጥቁር ገጽታዎች';

  @override
  String get glassMode => 'የብርጭቆ ሁነታ';

  @override
  String get glassModeDesc => 'በቤተ-መጻሕፍትህ ሥዕሎች ላይ የደበዘዘ ገጽታ';

  @override
  String get shelfFrame => 'በክፍሎች ዙሪያ ፍሬም';

  @override
  String get shelfFrameDesc =>
      'ከእያንዳንዱ ረድፍ ጀርባ ካርድ አሳይ ወይም ረድፎቹ በገጹ ላይ በቀጥታ ይቀመጡ';

  @override
  String get settingsExtensionsDesc => 'የምንጭ አስተዳዳሪዎች፣ ማከማቻዎችና የኤክስቴንሽን አማራጮች';

  @override
  String get settingsAddons => 'ተጨማሪዎች';

  @override
  String get customPath => 'ብጁ የማከማቻ መንገድ';

  @override
  String get stories => 'ታሪኮች';

  @override
  String get watchOrder => 'ትዕዛዝ ይመልከቱ';

  @override
  String get watchOrderOpenSite => 'chiaki.site ላይ ክፈት';

  @override
  String get watchOrderUnavailable => 'ለዚህ ርዕስ ምንም የምልከታ ትዕዛዝ አልተገኘም።';

  @override
  String get watchOrderOpenFailed => 'ያንን ርዕስ መክፈት አልተቻለም';

  @override
  String get watchOrderCurrent => 'እዚህ ነህ';

  @override
  String get watchOrderCredit => 'በ chiaki.site ትዕዛዞችን ይመልከቱ';

  @override
  String get customPathDesc => 'የመተግበሪያ ዳታ የሚቀመጥበት ቦታ። ዳግም ለማስጀመር ተጭነህ ያዝ';

  @override
  String get selectDirectory => 'አቃፊ ምረጥ';

  @override
  String get differentCacheManager => 'አማራጭ የምስል ካሽ';

  @override
  String get differentCacheManagerDesc => 'ለምስሎች የተለየ የካሽ አስተዳዳሪ ተጠቀም';

  @override
  String get settingsSync => 'የማመሳሰል ቅንብሮች';

  @override
  String get settingsSyncDesc =>
      'ቅንጅቶችዎን በእያንዳንዱ መሳሪያ ላይ አንድ አይነት ያቆዩ። በእርስዎ GitHub መለያ ውስጥ በግል መረጃ ውስጥ ተከማችተዋል።';

  @override
  String get settingsSyncSwitch => 'በለውጥ ላይ አስምር';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'በ GitHub ይግቡ';

  @override
  String get settingsSyncSignInDesc =>
      'መቼቶች በመለያዎ ውስጥ ባለው የግል መረጃ ውስጥ ተከማችተዋል።';

  @override
  String get settingsSyncToken => 'የግል መዳረሻ ማስመሰያ ይጠቀሙ';

  @override
  String get settingsSyncTokenDesc =>
      'በ github.com/settings/tokens ላይ በግስት ፈቃድ ብቻ ይፍጠሩ';

  @override
  String get settingsSyncTokenField => 'ማስመሰያ';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'እንደ $user ገብቷል';
  }

  @override
  String get settingsSyncSignOut => 'ዘግተህ ውጣ';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub ላይ $code አስገባ';
  }

  @override
  String get settingsSyncCodeDesc =>
      'የ GitHub ገጽ በአሳሽዎ ውስጥ ተከፍቷል። ኮዱን ለመቅዳት ይንኩ ወይም ለመሰረዝ ይንኩ እና ይያዙ።';

  @override
  String get settingsSyncSignInFailed => 'ወደ GitHub መግባት አልተቻለም';

  @override
  String get dcPreview => 'ቅድመ እይታ';

  @override
  String get dcSampleWatching => 'በመመልከት ላይ';

  @override
  String get dcSampleReading => 'ማንበብ';

  @override
  String get dcSampleBrowsing => 'ማሰስ';

  @override
  String get dcSampleLive => 'አሁን';

  @override
  String get dcLiveNothing =>
      'አሁን ምንም እየታየ አይደለም። ርዕስ ክፈት፣ ክፍል ወይም ምዕራፍ ጀምር እና እዚህ ይታያል።';

  @override
  String get dcMemberList => 'በአባል ዝርዝር ውስጥ';

  @override
  String get dcAccount => 'መለያ';

  @override
  String get dcSignIn => 'በ Discord ይግቡ';

  @override
  String get dcSignOut => 'ዘግተህ ውጣ';

  @override
  String get dcDesktopHint =>
      'ሳይገናኝ፣ Discord በዴስክቶፕ መተግበሪያ በኩል \"Dartotsuን መመልከት\" ያሳያል። እንቅስቃሴውን በተንቀሳቃሽ ስልክ ላይ ጨምሮ በእርስዎ ርዕስ ስም ለመሰየም Discord ን ያገናኙ።';

  @override
  String get dcMobileHint =>
      'የሚመለከቱትን ወይም የሚያነቡትን ለማሳየት Discord ን ያገናኙ። የመለያዎን ማስመሰያ ሳይሆን የ Discord ፍቃድ ገጽን ይጠቀማል።';

  @override
  String get dcConnect => 'Discord አገናኝ';

  @override
  String get dcConnectDesc =>
      'የ Discord ፍቃድ ገጽን ይከፍታል እና Dartotsu በተፈቀደላቸው መተግበሪያዎች ስር ያክላል። Discord የእርስዎን መኖር እንዲያዘምን ይጠይቃል። የማደስ ማስመሰያ ብቻ ነው የተቀመጠው፣ የመለያዎ ማስመሰያ አይደለም።';

  @override
  String get dcConnectFailed => 'Discord ማገናኘት አልተቻለም';

  @override
  String get dcConnectedSnack => 'አለመግባባት ተገናኝቷል።';

  @override
  String get dcDisconnect => 'ግንኙነት አቋርጥ';

  @override
  String get dcDisconnectedSnack => 'ዲስኩር ግንኙነቱ ተቋርጧል';

  @override
  String get dcUseToken => 'በምትኩ ማስመሰያ ይጠቀሙ';

  @override
  String get dcRouteDesktop => 'በ Discord ዴስክቶፕ መተግበሪያ በኩል';

  @override
  String get dcRouteHeadless => 'በመለያዎ በኩል';

  @override
  String get dcRouteGateway => 'በእርስዎ መለያ፣ ቀጥታ ስርጭት';

  @override
  String get dcRouteLinked => 'የተገናኘ መተግበሪያ';

  @override
  String get dcRouteNone => 'አልተገናኘም።';

  @override
  String get dcStatusNeedsToken =>
      'የ Discord token ያስፈልገዋል። መተግበሪያውን ማገናኘት የመስመር ላይ ሁኔታዎን አያዘጋጅም።';

  @override
  String get dcAccountOnly => 'የገባ መለያ ያስፈልገዋል';

  @override
  String get dcStatusSection => 'ሁኔታ';

  @override
  String get dcControlStatus => 'ሁኔታዬን ተቆጣጠር';

  @override
  String get dcControlStatusDesc =>
      'ሪች መገኘት በርቶ ሳለ ከ Discord ጋር የቀጥታ ግንኙነትን ያቆያል፣ ስለዚህ Dartotsu የእርስዎን ሁኔታ ማዘጋጀት ይችላል።';

  @override
  String get dcStatusOnline => 'በመስመር ላይ';

  @override
  String get dcStatusIdle => 'ስራ ፈት';

  @override
  String get dcStatusDnd => 'አትረብሽ';

  @override
  String get dcStatusInvisible => 'የማይታይ';

  @override
  String get dcCustomStatus => 'ብጁ ሁኔታ';

  @override
  String get dcCustomStatusHint => 'ምን እያደረግክ ነው?';

  @override
  String get dcActivitySection => 'እንቅስቃሴ';

  @override
  String get dcShowWatching => 'እየተመለከቱ ሳሉ አሳይ';

  @override
  String get dcShowReading => 'በማንበብ ጊዜ አሳይ';

  @override
  String get dcListening => 'ማዳመጥ';

  @override
  String get dcCompeting => 'መወዳደር';

  @override
  String get dcActivityName => 'የእንቅስቃሴ ስም';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'ርዕስ';

  @override
  String get dcNameCustom => 'ብጁ';

  @override
  String get dcCustomNameHint => 'ከ\"መመልከት\" በኋላ የሚታየው ስም';

  @override
  String get dcStatusText => 'የሁኔታ ጽሑፍ';

  @override
  String get dcStatusTextDesc => 'የአባላት ዝርዝር ከስምዎ ቀጥሎ ምን ያሳያል';

  @override
  String get dcDisplayName => 'ስም';

  @override
  String get dcDisplayState => 'ግዛት';

  @override
  String get dcDisplayDetails => 'ዝርዝሮች';

  @override
  String get dcTextSection => 'ጽሑፍ';

  @override
  String get dcDetails => 'የላይኛው መስመር';

  @override
  String get dcState => 'የታችኛው መስመር';

  @override
  String get dcTemplateHint => 'ባዶ ነባሪውን ይጠቀማል';

  @override
  String get dcVariables => 'እሴት ለማስገባት መታ ያድርጉ';

  @override
  String get dcImagesSection => 'ምስሎች';

  @override
  String get dcLargeImage => 'ትልቅ ምስል';

  @override
  String get dcLargeAuto => 'መኪና';

  @override
  String get dcLargeCover => 'ሽፋን';

  @override
  String get dcLargeLogo => 'አርማ';

  @override
  String get dcSmallImage => 'ትንሽ ምስል';

  @override
  String get dcSmallAuto => 'አርማ';

  @override
  String get dcSmallNone => 'ምንም';

  @override
  String get dcTimerStyle => 'የሰዓት ቆጣሪ ዘይቤ';

  @override
  String get dcTimerAuto => 'መኪና';

  @override
  String get dcTimerElapsed => 'ያለፈ';

  @override
  String get dcTimerRemaining => 'የቀረው';

  @override
  String get dcButtonsSection => 'አዝራሮች';

  @override
  String get dcButtonMedia => 'ከርዕሱ ጋር አገናኝ';

  @override
  String get dcButtonApp => 'ወደ Dartotsu አገናኝ';

  @override
  String get dcButtonCustom => 'ብጁ አዝራር';

  @override
  String get dcButtonLabel => 'መለያ';

  @override
  String get dcButtonUrl => 'አገናኝ';

  @override
  String get dcPrivacySection => 'ግላዊነት';

  @override
  String get dcPrivateText => 'የግል ጽሑፍ';

  @override
  String get dcPrivateHint => 'የግል ነገር';

  @override
  String get dcTokenWarning =>
      'መግባት የመለያዎን ማስመሰያ ይጠቀማል። የ Discord ሕጎች ይህንን ተስፋ ያስቆርጣሉ፣ ስለዚህ በራስዎ ኃላፊነት ይጠቀሙበት።';

  @override
  String get dcConnected => 'ተገናኝቷል።';

  @override
  String get dcConnection => 'ግንኙነት';

  @override
  String get dcMethodDesktop => 'የዴስክቶፕ መተግበሪያን ይሰርዙ';

  @override
  String get dcMethodDesktopDesc =>
      'ምንም ነገር ሲገናኝ በራስ-ሰር ጥቅም ላይ ይውላል። በዚህ ኮምፒውተር ላይ ዲስኩር መከፈት አለበት።';

  @override
  String get dcMethodToken => 'መለያ ማስመሰያ';

  @override
  String get dcInUse => 'ጥቅም ላይ የዋለ';

  @override
  String get dcRecommended => 'የሚመከር';

  @override
  String get dcConnecting => 'በማገናኘት ላይ…';

  @override
  String get dcDisconnected => 'አልተገናኘም።';

  @override
  String dcSignedInAs(String name) {
    return 'እንደ $name ገብቷል';
  }

  @override
  String get settingsSyncOn => 'በርቷል';

  @override
  String get settingsSyncCustom => 'ብጁ';

  @override
  String get settingsSyncChangedHeader => 'ቅንጅቶች ተለውጠዋል';

  @override
  String get settingsSyncNoneChanged =>
      'ከእነዚህ ውስጥ አንዳቸውንም እስካሁን አልለወጡም፣ ስለዚህ ምንም የሚያሰምር ነገር የለም።';

  @override
  String get settingsSyncChangedOnly =>
      'እርስዎ የቀየሩዋቸው ቅንብሮች ብቻ ተከማችተዋል። ሁሉም ነገር ነባሪውን በእያንዳንዱ መሣሪያ ላይ ይጠቀማል። የደመና አዶ በአገልጋዩ ላይ ያለውን ነገር ያሳያል።';

  @override
  String get settingsSyncOffCategory =>
      'አልተመሳሰልም። እነዚህ በዚህ መሣሪያ ላይ ይቆያሉ እና የአገልጋዩ ቅጂ እንዳለ ይቀራል።';

  @override
  String get settingsSyncPartsNote =>
      'በመሳሪያ። ጠፍቷል የእያንዳንዱን መሳሪያ ዋጋ ያስቀምጣል፣ ስለዚህ ስልክ እና ቲቪ ሊለያዩ ይችላሉ።';

  @override
  String get settingsSyncPartSubtitles => 'የትርጉም ጽሑፍ መጠን እና ቀለሞች';

  @override
  String get settingsSyncPartSubtitlesDesc => 'መጠን, ክብደት, ቀለሞች እና አቀማመጥ';

  @override
  String get settingsSyncPartPictureColors => 'የስዕል ቀለሞች';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'ብሩህነት፣ ንፅፅር፣ ሙሌት፣ ጋማ፣ ቀለም እና ኤችዲአር';

  @override
  String get settingsSyncPartPalette => 'የገጽታ ቀለሞች';

  @override
  String get settingsSyncPartPaletteDesc => 'ገጽታ፣ የአነጋገር ቀለም እና OLED ጥቁር';

  @override
  String get settingsSyncCatOther => 'ይመልከቱ፣ ያንብቡ እና አገልግሎቶች';

  @override
  String get settingsSyncTitles => 'እድገትን እና ርዕሶችን ይመልከቱ';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return 'በአገልጋዩ ላይ $records ርዕሶች እና $resume ከቆመበት ቀጥል';
  }

  @override
  String get settingsSyncTitlesNone => 'እስካሁን ምንም አልተጫነም።';

  @override
  String get settingsSyncTitlesNote =>
      'ቦታዎችን ይመልከቱ እና ያንብቡ፣ ከቆመበት ቀጥል መደርደሪያው፣ የአካባቢዎ ዝርዝሮች፣ ዕልባቶች፣ ድምቀቶች እና የርዕስ አማራጮች። የምንጭ ግጥሚያዎች እና ዥረቶች በእያንዳንዱ መሳሪያ ላይ ይቆያሉ ምክንያቱም በእርስዎ ቅጥያዎች ላይ ስለሚመሰረቱ። ርዕሶች ቢበዛ በየ45 ሰከንድ ይሰቀላሉ።';

  @override
  String get settingsSyncConnect => 'አልተገናኘም።';

  @override
  String get settingsSyncConnectDesc =>
      'ቅንጅቶችዎ በእያንዳንዱ መሳሪያ ላይ አንድ አይነት እንደሆኑ ለማቆየት በ GitHub ይግቡ።';

  @override
  String get settingsSyncFailedTitle => 'ማመሳሰል አልተሳካም።';

  @override
  String get settingsSyncPaused => 'ባለበት ቆሟል';

  @override
  String get settingsSyncPausedDesc => 'ይህ ጠፍቶ እያለ ምንም ነገር አልተሰቀለም ወይም አይወርድም።';

  @override
  String get settingsSyncUpToDate => 'የዘመነ';

  @override
  String get settingsSyncRetry => 'እንደገና ይሞክሩ';

  @override
  String get settingsSyncAccount => 'GitHub መለያ';

  @override
  String get settingsSyncAccountDesc =>
      'የእርስዎ ውሂብ በራስዎ መለያ ውስጥ ወዳለው የግል መረጃ ይሄዳል።';

  @override
  String get settingsSyncWaiting => 'GitHub ላይ እርስዎን ለማጽደቅ በመጠበቅ ላይ';

  @override
  String get settingsSyncCopyCode => 'ኮዱን ለመቅዳት ይንኩ።';

  @override
  String get settingsSyncCancel => 'ሰርዝ';

  @override
  String get settingsSyncStatSettings => 'ቅንብሮች';

  @override
  String get settingsSyncStatTitles => 'ርዕሶች';

  @override
  String get settingsSyncStatShelf => 'ከቆመበት ቀጥል';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'የተሰቀለው $time ከ$device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተቀይሯል።',
      one: '1 ተለውጧል',
      zero: 'እስካሁን ምንም የተለወጠ ነገር የለም።',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'መለያዎች እና የይለፍ ቃላት';

  @override
  String get settingsSyncSecretsDesc =>
      'በመለያ መግባቶችህን (AniList፣ MAL፣ Kitsu፣ Simkl፣ MangaBaka፣ MangaUpdates)፣ የኤፒአይ ቁልፎችን እና የመተግበሪያ መቆለፊያን በመሳሪያዎችህ መካከል አመሳስል። በእርስዎ መሣሪያዎች ላይ በሚቆይ የይለፍ ሐረግ የተመሰጠሩ ናቸው፣ ስለዚህ GitHub በጭራሽ አይመለከታቸውም።';

  @override
  String get settingsSyncSecretsOn => 'መለያዎች የተመሳሰሩ እና የተመሰጠሩ ናቸው።';

  @override
  String get settingsSyncSecretsOnDesc =>
      'በአንድ መሣሪያ ላይ ዘግቶ መውጣት ከሌሎች ዘግቶ አያስወጣዎትም።';

  @override
  String get settingsSyncSecretsBroken =>
      'የይለፍ ሐረጉ ከአሁን በኋላ በአገልጋዩ ላይ ካለው ጋር አይዛመድም። መለያዎችን ማመሳሰል ለመቀጠል እንደገና ያስገቡት።';

  @override
  String get settingsSyncPassphraseSet => 'የይለፍ ሐረግ አዘጋጅ';

  @override
  String get settingsSyncPassphraseEnter => 'የይለፍ ሐረግዎን ያስገቡ';

  @override
  String get settingsSyncPassphraseField => 'የይለፍ ሐረግ';

  @override
  String get settingsSyncPassphraseConfirm => 'የይለፍ ሐረጉን ይድገሙት';

  @override
  String get settingsSyncPassphraseNew =>
      'ቢያንስ 6 ቁምፊዎች ያለው የይለፍ ሐረግ ይምረጡ። ከመሳሪያዎችዎ በስተቀር የትኛውም ቦታ አልተከማችም እና ወደነበረበት ሊመለስ አይችልም። ከረሱት የአገልጋዩን ቅጂ ሰርዝ እና እንደገና ጀምር።';

  @override
  String get settingsSyncPassphraseExisting =>
      'በሌላኛው መሳሪያህ ላይ የመረጥከውን የይለፍ ሐረግ አስገባ። በዚህ መሣሪያ ላይ ያሉ መለያዎች በተመሳሰሉት ይተካሉ።';

  @override
  String get settingsSyncPassphraseWrong => 'የተሳሳተ የይለፍ ሐረግ';

  @override
  String get settingsSyncPassphraseMismatch => 'የይለፍ ሐረጎቹ አይዛመዱም።';

  @override
  String get settingsSyncPassphraseShort => 'ቢያንስ 6 ቁምፊዎችን ተጠቀም';

  @override
  String get settingsSyncSecretsStop => 'መለያዎችን ማመሳሰል አቁም';

  @override
  String get settingsSyncSecretsDelete => 'ከ GitHub ሰርዝ';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'ይህ የተመሰጠረውን የመለያ ፋይሉን ከጅስትህ ያስወግዳል። ሌሎች መሣሪያዎች መግቢያቸውን ያስቀምጣሉ እና አዲስ የይለፍ ሐረግ ማዘጋጀት ይችላሉ።';

  @override
  String get settingsSyncWhat => 'ምን ማመሳሰል እንዳለበት';

  @override
  String get settingsSyncServer => 'በአገልጋዩ ላይ';

  @override
  String get settingsSyncServerEmpty => 'እስካሁን ምንም አልተጫነም።';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count ቅንጅቶች፣ $time ከ$device ተሰቅለዋል';
  }

  @override
  String get settingsSyncThisDevice => 'ይህ መሳሪያ';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'በአገልጋዩ ላይ $count ቅንጅቶች',
      one: 'በአገልጋዩ ላይ 1 ቅንብር',
      zero: 'በአገልጋዩ ላይ ምንም ነገር የለም።',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'አሁን አስምር';

  @override
  String get settingsSyncRunning => 'በማመሳሰል ላይ…';

  @override
  String get settingsSyncNever => 'እስካሁን አልተሰመረም።';

  @override
  String settingsSyncLast(Object time) {
    return 'ለመጨረሻ ጊዜ የተመሳሰለው $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'ማመሳሰል አልተሳካም፦ $error';
  }

  @override
  String get settingsSyncScope =>
      'በሁሉም ቦታ ተመሳሳይ የሚሰሩ ቅንጅቶች ብቻ ናቸው የተሰመሩት። መለያዎች፣ ቶከኖች፣ አቃፊዎች፣ ቅጥያዎች፣ ማሳወቂያዎች፣ Discord፣ ዝማኔዎች እና የመስኮቶች መጠን በእያንዳንዱ መሳሪያ ላይ ይቆያሉ።';

  @override
  String get backupAndRestore => 'ምትኬና ወደነበረበት መመለስ';

  @override
  String get backupAndRestoreDesc => 'ምርጫዎችህን አስቀምጥ ወይም ጫን';

  @override
  String get backup => 'ምትኬ';

  @override
  String get restore => 'መልስ';

  @override
  String get loadExtensionsIcon => 'የኤክስቴንሽን አዶዎችን ጫን';

  @override
  String get autoUpdateRuntimes => 'የኤክስቴንሽን ሩጫ ጊዜዎችን በራስ-ሰር ያዘምኑ';

  @override
  String get autoUpdateRuntimesDesc =>
      'ከበስተጀርባ አዲስ አኒዮሚ፣ CloudStream እና ሌሎች የአሂድ ጊዜ ስሪቶችን ያውርዱ። ጠፍቷል፣ በምትኩ ከአስተዳዳሪው አጠገብ የዝማኔ አዶ ይታያል።';

  @override
  String get loadExtensionsIconDesc => 'በኤክስቴንሽን ዝርዝሮች ውስጥ የምንጭ አዶዎችን አሳይ';

  @override
  String get sectionStorage => 'ማከማቻ';

  @override
  String get sectionManagers => 'አስተዳዳሪዎች';

  @override
  String get sectionOptions => 'አማራጮች';

  @override
  String get backupTabBackup => 'ምትኬ አውጣ';

  @override
  String get backupTabRestore => 'መልስ';

  @override
  String backupSummary(Object keys, Object categories) {
    return 'በ$categories ምድቦች ውስጥ $keys ቅንብሮች';
  }

  @override
  String backupLastBackup(Object time) {
    return 'የመጨረሻ ምትኬ $time';
  }

  @override
  String get backupNever => 'እስካሁን ምትኬ የለም';

  @override
  String get backupSelectAll => 'ሁሉንም ምረጥ';

  @override
  String get backupClearAll => 'አጽዳ';

  @override
  String backupKeys(Object count) {
    return '$count ቅንብሮች';
  }

  @override
  String get backupPasswordRequired => 'የይለፍ ቃል (ለመለያ ውሂብ ያስፈልጋል)';

  @override
  String get backupProtectedNeedsPassword =>
      'የመለያ ውሂብን ምትኬ ለማስቀመጥ የይለፍ ቃል ያቀናብሩ ወይም እሱን ምልክት ያንሱት።';

  @override
  String get backupProtectedSkipped =>
      'ይህ ምትኬ የይለፍ ቃል የለውም፣ ስለዚህ የመለያው ውሂብ ተዘሏል።';

  @override
  String get backupPassword => 'የይለፍ ቃል (አማራጭ)';

  @override
  String get backupPasswordHint => 'ነባሪውን ለመጠቀም ባዶ ተው';

  @override
  String get backupSensitive => 'የመግቢያ ቶከኖችን ያካትታል። ይህን ፋይል በሚስጥር ያዝ';

  @override
  String get backupCreate => 'ምትኬ ፍጠር';

  @override
  String backupSaved(Object name) {
    return 'ምትኬ ወደ $name ተቀምጧል';
  }

  @override
  String backupFailed(Object error) {
    return 'ምትኬ አልተሳካም፦ $error';
  }

  @override
  String get backupPickFile => 'የምትኬ ፋይል ምረጥ';

  @override
  String get backupPickFileDesc => 'በDartotsu የተሠራ .json ፋይል ምረጥ';

  @override
  String get backupChooseAnother => 'ሌላ ፋይል ምረጥ';

  @override
  String get backupCreatedAt => 'የተፈጠረው';

  @override
  String get backupAppVersion => 'የመተግበሪያ ስሪት';

  @override
  String get backupDevice => 'መሣሪያ';

  @override
  String get backupAccounts => 'መለያዎች';

  @override
  String get backupSize => 'መጠን';

  @override
  String get backupEncrypted => 'በይለፍ ቃል የተጠበቀ';

  @override
  String get backupUnlock => 'ክፈት';

  @override
  String get backupWrongPassword => 'ይህን ፋይል ማንበብ አልተቻለም። የይለፍ ቃሉን ፈትሽ';

  @override
  String get backupRestoreSelected => 'የተመረጡትን መልስ';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count ቅንብሮች ይመለሱ? በእነዚህ ምድቦች ውስጥ ያሉ ነባር እሴቶች ይተካሉ።';
  }

  @override
  String get backupRestored => 'ተመልሷል። ሁሉም እንዲተገበር መተግበሪያውን እንደገና አስጀምር';

  @override
  String backupRestoreFailed(Object error) {
    return 'መመለስ አልተሳካም፦ $error';
  }

  @override
  String get backupSelectOne => 'ቢያንስ አንድ ምድብ ምረጥ';

  @override
  String get backupCatTheme => 'ገጽታ';

  @override
  String get backupCatThemeDesc => 'ጭብጥ፣ ቀለሞች፣ ብርጭቆ፣ ፊደላትና የካርድ ዘይቤ';

  @override
  String get backupCatCommon => 'አጠቃላይ';

  @override
  String get backupCatCommonDesc => 'ቋንቋ፣ ማከማቻ፣ ኔትወርክና የኤክስቴንሽን አማራጮች';

  @override
  String get backupCatPlayer => 'ማጫወቻ';

  @override
  String get backupCatPlayerDesc => 'የማጫወቻ ምርጫዎች';

  @override
  String get backupCatReader => 'አንባቢ';

  @override
  String get backupCatReaderDesc => 'የአንባቢ ምርጫዎች';

  @override
  String get backupCatProtected => 'መለያዎች';

  @override
  String get backupCatProtectedDesc => 'የመግቢያ ቶከኖችና የመግቢያ ዳታ';

  @override
  String get backupCatOther => 'አገልግሎቶችና ፊዶች';

  @override
  String get backupCatOtherDesc => 'የፊድ አቀማመጦች፣ ዝርዝሮችና የአገልግሎት አማራጮች';

  @override
  String get logFile => 'የሎግ ፋይል';

  @override
  String get logFileDesc => 'የመተግበሪያውን ሎግ አጋራ ወይም በሊኑክስ መንገዱን ቅዳ';

  @override
  String get logDelete => 'የምዝግብ ማስታወሻ ፋይሎችን ሰርዝ';

  @override
  String get logDeleteDesc => 'ቦታ ለማስለቀቅ የተቀመጡ የመተግበሪያ ምዝግብ ማስታወሻዎችን ያጽዱ';

  @override
  String logDeleted(String size) {
    return '$size የምዝግብ ማስታወሻዎች ተሰርዘዋል';
  }

  @override
  String get missingSequel => 'ተከታይ ይጎድላል';

  @override
  String get rising => 'መነሳት';

  @override
  String get stacks => 'ቁልል';

  @override
  String get stacksAll => 'ሁሉም';

  @override
  String get stacksFeatured => 'ተለይቶ የቀረበ';

  @override
  String get stacksMine => 'ያንተ';

  @override
  String get stacksSaved => 'ተቀምጧል';

  @override
  String get stacksFollowing => 'በመከተል ላይ';

  @override
  String get stacksEmpty => 'እስካሁን እዚህ ምንም ቁልል የለም።';

  @override
  String get stacksSignIn => 'ቁልልዎን ለማየት ወደ ማንጋባካ ይግቡ';

  @override
  String get stacksScopeNeeded =>
      'የእርስዎ ቁልል አዲስ ፈቃድ ያስፈልጋቸዋል። ለመፍቀድ እንደገና ወደ ማንጋባካ ይግቡ።';

  @override
  String get stacksSignInAgain => 'እንደገና ይግቡ';

  @override
  String get stacksCouldntLoad => 'ቁልልዎቹን መጫን አልተቻለም';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ተከታታይ',
      one: '1 ተከታታይ',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ያስቀምጣል።',
      one: '1 ማስቀመጥ',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'በ$name';
  }

  @override
  String get stackSpoilers => 'አጥፊዎች';

  @override
  String get stackEmptyEntries => 'ይህ ቁልል ባዶ ነው።';

  @override
  String get stackSave => 'ቁልል አስቀምጥ';

  @override
  String get stackUnsave => 'ከተቀመጠው አስወግድ';

  @override
  String get stackSavedToast => 'ወደ ቁልልዎ ተቀምጧል';

  @override
  String get stackRemovedToast => 'ከተቀመጡ ቁልሎችዎ ተወግዷል';

  @override
  String userStacks(String name) {
    return 'ቁልል በ$name';
  }

  @override
  String get newsTitle => 'ዜና';

  @override
  String get newsEmpty => 'አሁን ምንም ዜና የለም።';

  @override
  String get newsCouldntLoad => 'ዜናውን መጫን አልተቻለም';

  @override
  String get logFileCopied => 'የሎግ መንገድ ተቀድቷል';

  @override
  String get donateSheetTitle => 'Dartotsu ያስደስትሃል?';

  @override
  String get donateSheetMessage =>
      'Dartotsu የሚሠራውና የሚንከባከበው በአንድ ሰው ነው። ጠቃሚ ሆኖ ካገኘኸው ልማቱን ለመደገፍ አስብበት።';

  @override
  String get donateLater => 'ቆይቶ';

  @override
  String get glassBackground => 'የብርጭቆ ዳራ';

  @override
  String get glassBackgroundDesc => 'የምስል ሊንክ ካላስቀመጥክ የመገለጫህ ባነር ይሆናል';

  @override
  String get glassBackgroundHint => 'የምስል ሊንክ (ለባነርህ ባዶ ተው)';

  @override
  String get followCover => 'ሽፋኑን ተከተል';

  @override
  String get followCoverDesc => 'ቀለሞች ዳራውን ይከተላሉ፣ በዝርዝር ገጾች ደግሞ ሽፋኑን';

  @override
  String get followCoverMediaOnly => 'ለሚዲያ ብቻ';

  @override
  String get followCoverMediaOnlyDesc =>
      'ሽፋኑን በሚዲያ ገፆች ላይ ብቻ ይከተሉ, በየትኛውም ቦታ መደበኛውን ቀለሞች ይጠብቃል';

  @override
  String get cardStyle => 'የካርድ ዘይቤ';

  @override
  String get cardStyleDesc => 'የርዕስ ቦታ፣ መጠን፣ እድገትና ባጆች';

  @override
  String get customFont => 'ፊደል';

  @override
  String get customFontDesc => 'ነባሪ፣ ከመሣሪያህ ፋይል ወይም Google Fonts';

  @override
  String get customFontError => 'ያንን የፊደል ፋይል መጫን አልተቻለም';

  @override
  String get googleFontError => 'ያንን ፊደል ማውረድ አልተቻለም';

  @override
  String get yourFonts => 'ፊደሎችህ';

  @override
  String get addFontFile => 'የፊደል ፋይል ጨምር…';

  @override
  String get browseGoogleFonts => 'Google Fonts አስስ…';

  @override
  String get searchGoogleFonts => 'Google Fonts ፈልግ';

  @override
  String get defaultFont => 'ነባሪ';

  @override
  String get materialYou => 'ቁሳቁስ እርስዎ';

  @override
  String get materialYouDesc => 'ከሲስተሙ ተለዋዋጭ ቀለም';

  @override
  String get jsonTheme => 'ብጁ የጭብጥ ፋይል';

  @override
  String get jsonThemeDesc =>
      'ከ~/.config/dartotsu/theme.json ቀጥታ ቀለሞች (ብጁ ስክሪፕት ወይም የራስህ አርትዖት)';

  @override
  String get themeMode => 'የጭብጥ ሁነታ';

  @override
  String get mode => 'ሁነታ';

  @override
  String get trackingService => 'የመከታተያ አገልግሎት';

  @override
  String get signOut => 'ውጣ';

  @override
  String get signIn => 'ግባ';

  @override
  String get notSignedIn => 'አልገባህም';

  @override
  String signOutOf(String service) {
    return 'ከ$service ትውጣ?';
  }

  @override
  String get checkForUpdates => 'ዝማኔዎችን ፈልግ';

  @override
  String get checkForUpdatesDesc => 'አዲስ የGitHub ልቀት ሲኖር አሳውቀኝ';

  @override
  String get updateChannel => 'የዝማኔ ቻናል';

  @override
  String get channel => 'ቻናል';

  @override
  String get stable => 'የተረጋጋ';

  @override
  String get preRelease => 'ቅድመ-ልቀት';

  @override
  String get alpha => 'አልፋ';

  @override
  String get checkNow => 'አሁን ፈልግ';

  @override
  String get userAgent => 'ተጠቃሚ-ወኪል';

  @override
  String get settingDefault => 'ነባሪ';

  @override
  String currentlyUsing(String value) {
    return 'አሁን፦ $value';
  }

  @override
  String get dnsOverHttps => 'ዲ ኤን ኤስ-በላይ-ኤችቲቲፒኤስ';

  @override
  String get dnsDefault => 'ነባሪ (Cloudflare)';

  @override
  String get proxy => 'ፕሮክሲ';

  @override
  String get proxyProtocol => 'ዓይነት';

  @override
  String get proxyHost => 'ሆስት';

  @override
  String get proxyPort => 'ፖርት';

  @override
  String get proxyUsername => 'የተጠቃሚ ስም';

  @override
  String get proxyPassword => 'የይለፍ ቃል';

  @override
  String get optional => 'አማራጭ';

  @override
  String get clearCookies => 'ኩኪዎችን አጽዳ';

  @override
  String get clearCookiesDesc => 'የተቀመጡ ኩኪዎችን ሁሉ አስወግድ';

  @override
  String notImplementedArea(String area) {
    return '$area — በቅርቡ ይመጣል';
  }

  @override
  String notImplementedService(String service) {
    return '$service ይህን እስካሁን አይደግፍም።';
  }

  @override
  String get couldNotLoadResults => 'ውጤቶችን መጫን አልተቻለም';

  @override
  String get updateCheckFailed => 'ዝማኔዎችን መፈተሽ አልተቻለም';

  @override
  String get highRefreshRate => 'ከፍተኛ የማደስ ምጣኔ';

  @override
  String get highRefreshRateDesc => 'ስክሪንህ የሚደግፈውን ከፍተኛ የማደስ ምጣኔ ተጠቀም';

  @override
  String get imageSave => 'ምስል አስቀምጥ';

  @override
  String imageSavedTo(String path) {
    return 'ወደ $path ተቀምጧል';
  }

  @override
  String get imageActionFailed => 'ምስሉን ማውረድ አልተቻለም';

  @override
  String get imageTitleCover => 'ሽፋን';

  @override
  String get imageTitlePage => 'ገጽ';

  @override
  String get imageTitleBanner => 'ባነር';

  @override
  String get imageTitleAvatar => 'የመገለጫ ፎቶ';

  @override
  String get verifyTls => 'ሰርቲፊኬቶችን አረጋግጥ';

  @override
  String get verifyTlsDesc =>
      'ልክ ያልሆነ HTTPS ሰርቲፊኬት ያላቸውን ሰርቨሮች ውድቅ አድርግ። በራሱ የተፈረመ ሰርቲፊኬት ለሚጠቀም ምንጭ ብቻ አጥፋው';

  @override
  String get clearCookiesConfirm =>
      'የተቀመጡ ኩኪዎች ሁሉ ይወገዱ? ከአንዳንድ ምንጮች ሊያስወጣህ ይችላል።';

  @override
  String get version => 'ስሪት';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'ምንጭ ኮድ፣ ጉዳዮችና ልቀቶች';

  @override
  String get discordDesc => 'ማኅበረሰብና ድጋፍ';

  @override
  String get supportDeveloper => 'ገንቢውን ይደግፉ';

  @override
  String get buyMeCoffee => 'ቡና ግዛልኝ';

  @override
  String get upiId => 'UPI መታወቂያ';

  @override
  String get upiCopied => 'UPI መታወቂያ ተቀድቷል።';

  @override
  String get donateDesc => 'ልማቱን ደግፍ';

  @override
  String get contributors => 'አበርካቾች';

  @override
  String get contributorsDesc => 'Dartotsuን የሠሩ ሰዎች';

  @override
  String get contributorsLoadFailed => 'አበርካቾችን መጫን አልተቻለም';

  @override
  String get forks => 'ሹካዎች';

  @override
  String get forksDesc => 'በDartotsu ላይ የተገነቡ ፕሮጀክቶች';

  @override
  String get forksEmpty => 'ምንም ፎርክ አልተገኘም';

  @override
  String get sectionColors => 'ቀለሞች';

  @override
  String get sectionDisplay => 'ማሳያ';

  @override
  String get sectionStyle => 'ዘይቤ';

  @override
  String get sectionCommunity => 'ማኅበረሰብ';

  @override
  String get sectionAppInfo => 'የመተግበሪያ መረጃ';

  @override
  String get sectionRequests => 'ጥያቄዎች';

  @override
  String get sectionDnsProxy => 'DNS እና ፕሮክሲ';

  @override
  String get onboardingBack => 'ተመለስ';

  @override
  String get onboardingNext => 'ቀጥል';

  @override
  String get onboardingSkip => 'እለፍ';

  @override
  String get onboardingLanguageBody =>
      'Dartotsu የሚታየውን ቋንቋ ይምረጡ። በኋላ በቅንብሮች ውስጥ መቀየር ይችላሉ።';

  @override
  String get onboardingPaletteTitle => 'የራስህ አድርገው';

  @override
  String get onboardingPaletteBody =>
      'ቤተ-ቀለም ምረጥ። ከካርዶች እስከ ማጫወቻው ድረስ ያሉ ቀለሞች ሁሉ ይከተሉታል።';

  @override
  String get themeModeAuto => 'ራስ-ሰር';

  @override
  String get themeModeLight => 'ብርሃን';

  @override
  String get themeModeDark => 'ጨለማ';

  @override
  String get onboardingSyncTitle => 'ቤተ-መጻሕፍትህን አመሳስል';

  @override
  String get onboardingSyncBody =>
      'ዝርዝሮችህን፣ እድገትህንና ውጤቶችህን ለማምጣት በAniList ግባ። ወይም እለፍና እንደ እንግዳ አስስ።';

  @override
  String get onboardingOpenLinks => 'AniList እና የማከማቻ ሊንኮችን በDartotsu ክፈት';

  @override
  String get onboardingPermsTitle => 'ፈቃዶች';

  @override
  String get onboardingPermsBody =>
      'ውርዶች፣ ዝማኔዎችና ማሳወቂያዎች ሳይቋረጡ እንዲሠሩ አሁን ፍቀድ። በኋላ በሲስተም ቅንብሮች መቀየር ትችላለህ።';

  @override
  String get permNotifications => 'ማሳወቂያዎች';

  @override
  String get permNotificationsDesc => 'የውርድ እድገት፣ አዳዲስ ክፍሎችና ምላሾች';

  @override
  String get permStorage => 'የሁሉም ፋይሎች መዳረሻ';

  @override
  String get permStorageDesc => 'ውርዶችን በሕዝብ Dartotsu አቃፊ ውስጥ አስቀምጥ';

  @override
  String get permInstall => 'ዝማኔዎችን ጫን';

  @override
  String get permInstallDesc => 'Dartotsu የራሱን ዝማኔዎች እንዲጭን ፍቀድለት';

  @override
  String get permBattery => 'ገደብ የሌለው ባትሪ';

  @override
  String get permBatteryDesc => 'ረጅም ውርዶች ከጀርባ እንዲቀጥሉ አድርግ';

  @override
  String get permGrant => 'ፍቀድ';

  @override
  String get linkOpenInApp => 'ሊንኮችን በDartotsu ክፈት';

  @override
  String get linkOpenInAppDesc => 'AniList እና የማከማቻ ሊንኮች መተግበሪያውን እንዲከፍቱ ፍቀድ';

  @override
  String get reviewsTitle => 'ግምገማዎች';

  @override
  String get reviewsEmpty => 'እስካሁን ግምገማ የለም';

  @override
  String get reviewsFailed => 'ግምገማዎችን መጫን አልተቻለም';

  @override
  String get reviewHelpfulQuestion => 'ይህ ግምገማ ጠቃሚ ነበር?';

  @override
  String get reviewVoteFailed => 'ድምጽህን ማስቀመጥ አልተቻለም';

  @override
  String reviewHelpful(int n, int total) {
    return 'ከ$total ውስጥ $n ሰዎች ጠቃሚ ሆኖ አግኝተውታል';
  }

  @override
  String get calendarTitle => 'የስርጭት መርሐ ግብር';

  @override
  String get calendarToday => 'ዛሬ';

  @override
  String get calendarEmpty => 'በዚህ ቀን ምንም አይተላለፍም';

  @override
  String get calendarFailed => 'መርሐ ግብሩን መጫን አልተቻለም';

  @override
  String calendarChapter(int n) {
    return 'ምዕራፍ $n';
  }

  @override
  String get calendarExpected => 'የሚጠበቀው';

  @override
  String get castReceiverFailed => 'Chromecast ማጫወቻውን አልጀመረም።';

  @override
  String get castPlaybackFailed => 'መሣሪያው ይህን ዥረት ማጫወት አልቻለም';

  @override
  String get shortcutNothingToContinue => 'እስካሁን ምንም የሚቀጥል ነገር የለም።';

  @override
  String shortcutNoCalendar(String service) {
    return '$service የቀን መቁጠሪያ የለውም';
  }

  @override
  String calendarEpisode(int n) {
    return 'ክፍል $n';
  }

  @override
  String get shareAnalytics => 'ስም-አልባ የአጠቃቀም ዳታ አጋራ';

  @override
  String get shareAnalyticsDesc =>
      'ስም-አልባ የተጠቃሚ ቆጠራና የብልሽት ሪፖርቶች። ምንም መለያ ወይም የግል ዳታ የለም';

  @override
  String get linkOpenAnilist => 'AniList ሊንኮችን በDartotsu ክፈት';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co ሊንኮች መተግበሪያውን እንዲከፍቱ የሊንክ አያያዝን አብራ';

  @override
  String get linkSettingsFailed => 'የሲስተም ቅንብሮችን መክፈት አልተቻለም';

  @override
  String get discordRichPresence => 'የበለጸገ መገኘት';

  @override
  String get discordRichPresenceTokenDesc =>
      'የምታደርገውን በDiscord መገለጫህ ላይ አሳይ። የDiscord ቶከንህ ያስፈልጋል።';

  @override
  String get discordRichPresenceDesktopDesc =>
      'የምታደርገውን በDiscord መገለጫህ ላይ አሳይ። የDiscord ዴስክቶፕ መተግበሪያ እየሰራ መሆን አለበት።';

  @override
  String get discordBrowsing => 'የማሰስ እንቅስቃሴ አሳይ';

  @override
  String get discordBrowsingDesc =>
      'ከምትመለከተው ወይም ከምታነበው በተጨማሪ የምትመለከተውን ታብ፣ ገጽ ወይም መገለጫም አሳይ።';

  @override
  String get discordLookHeader => 'የፕረዘንስ ገጽታ';

  @override
  String get discordActivityType => 'የእንቅስቃሴ ዓይነት';

  @override
  String get discordActivityTypeDesc =>
      'Discord እንዴት እንደሚገልጸው፦ \"እየተመለከተ …\" ወይም \"እየተጫወተ …\"። ራስ-ሰር ለአኒሜ \"እየተመለከተ\"ን ለቀሪው ሁሉ \"እየተጫወተ\"ን ይጠቀማል።';

  @override
  String get discordWatching => 'እየተመለከተ';

  @override
  String get discordPlaying => 'እየተጫወተ';

  @override
  String get discordCovers => 'ሽፋኖችን አሳይ';

  @override
  String get discordCoversDesc => 'በካርዱ ላይ የሽፋን ሥዕልና የDartotsu አዶ።';

  @override
  String get discordTimer => 'ሰዓት ቆጣሪ አሳይ';

  @override
  String get discordTimerDesc => 'ከርዕሱ በታች ያለፈ ወይም የቀረ ጊዜ።';

  @override
  String get discordButtons => 'አዝራሮችን አሳይ';

  @override
  String get discordButtonsDesc =>
      '\"አኒሜ / ማንጋ ተመልከት\" እና \"Dartotsu ክፈት\" አዝራሮች።';

  @override
  String get discordHideTitles => 'ርዕሶችን ደብቅ';

  @override
  String get discordHideTitlesDesc =>
      'የአኒሜና ማንጋ ስሞችን (ከሽፋናቸውና ሊንካቸው ጋር) በ\"የግል ነገር\" ተካ።';

  @override
  String get discordConnectionHeader => 'ግንኙነት';

  @override
  String get listSearchHint => 'ይህን ዝርዝር ፈልግ';

  @override
  String get listSort => 'ደርድር';

  @override
  String get listFilter => 'አጣራ';

  @override
  String get listRandom => 'ድንገተኛ ርዕስ';

  @override
  String get listReverse => 'ቅደም ተከተል ገልብጥ';

  @override
  String get listSortDefault => 'የዝርዝር ቅደም ተከተል';

  @override
  String get listSortScore => 'ውጤትህ';

  @override
  String get listSortTitle => 'ርዕስ';

  @override
  String get listSortUpdated => 'መጨረሻ የዘመነ';

  @override
  String get listSortProgress => 'እድገት';

  @override
  String get listSortReleased => 'የተለቀቀበት ቀን';

  @override
  String get listSortAverage => 'አማካይ ውጤት';

  @override
  String get listFilterFormat => 'ቅርጸት';

  @override
  String get listFilterStatus => 'ሁኔታ';

  @override
  String get listFilterGenres => 'ዘውጎች';

  @override
  String get listFilterClear => 'ማጣሪያዎችን አጽዳ';

  @override
  String get listNoMatches => 'በዚህ ዝርዝር ውስጥ የሚመሳሰል ምንም የለም';

  @override
  String get discordLogin => 'ወደ Discord ግባ';

  @override
  String get discordToken => 'Discord ቶከን';

  @override
  String get discordTokenSaved => 'ተቀምጧል። ለመተካት ንካ፣ ለማስወገድ ተጭነህ ያዝ።';

  @override
  String get discordTokenNotSet => 'አልተቀመጠም። ለመጨመር ንካ።';

  @override
  String get discordTokenSavedSnack => 'የDiscord ቶከን ተቀምጧል';

  @override
  String get discordTokenRemovedSnack => 'የDiscord ቶከን ተወግዷል';

  @override
  String get discordRichPresenceRow => 'አለመግባባት ሀብታም መገኘት';

  @override
  String get discordRichPresenceRowOn => 'በርቷል · እንዴት እንደሚታይ ለመቀየር ንካ';

  @override
  String get discordRichPresenceRowOff => 'የምታደርገውን በDiscord መገለጫህ ላይ አሳይ';

  @override
  String get loginCancelled => 'መግባት ተሰርዟል';

  @override
  String get invalidToken => 'ልክ ያልሆነ ቶከን';

  @override
  String loginFailed(String error) {
    return 'መግባት አልተሳካም፦ $error';
  }

  @override
  String get malLoginFailed => 'የMyAnimeList መግባት አልተሳካም';

  @override
  String get kitsuLoginFailed => 'የKitsu መግባት አልተሳካም። ኢሜይልህንና የይለፍ ቃልህን ፈትሽ።';

  @override
  String get kitsuLoginTitle => 'ወደ Kitsu ግባ';

  @override
  String get emailOrUsername => 'ኢሜይል ወይም የተጠቃሚ ስም';

  @override
  String get password => 'የይለፍ ቃል';

  @override
  String get kitsuProfile => 'የKitsu መገለጫ';

  @override
  String get mangaBakaLoginFailed => 'የMangaBaka መግባት አልተሳካም';

  @override
  String get comickLoginFailed => 'የኮሚክ መግባት አልተሳካም።';

  @override
  String get tagline => 'የመለያ መስመር';

  @override
  String get trending => 'በመታየት ላይ ያለ';

  @override
  String get anticipated => 'የሚጠበቀው';

  @override
  String get watchlist => 'የክትትል ዝርዝር';

  @override
  String get recommendedShows => 'የሚመከሩ ትዕይንቶች';

  @override
  String get recommendedMovies => 'የሚመከሩ ፊልሞች';

  @override
  String get boxOffice => 'ቦክስ ኦፊስ';

  @override
  String get popularMovies => 'ታዋቂ ፊልሞች';

  @override
  String get popularShows => 'ታዋቂ ትዕይንቶች';

  @override
  String get anticipatedMovies => 'የሚጠበቁ ፊልሞች';

  @override
  String get anticipatedShows => 'የሚጠበቁ ትርኢቶች';

  @override
  String get trendingShows => 'በመታየት ላይ ያሉ ትርኢቶች';

  @override
  String get mostWatchedThisWeek => 'በዚህ ሳምንት በብዛት የታዩት።';

  @override
  String get sortMostViewed => 'በብዛት የታዩት።';

  @override
  String get sortMostFollowed => 'አብዛኞቹ ተከተሉት።';

  @override
  String get sortLatestUpdates => 'የቅርብ ጊዜ ዝመናዎች';

  @override
  String get translationStatusLabel => 'ትርጉም';

  @override
  String get weeklySchedule => 'ሳምንታዊ መርሐግብር';

  @override
  String get mostFollowed => 'በብዛት የተከተሉት።';

  @override
  String get latestUpdates => 'የቅርብ ጊዜ ዝመናዎች';

  @override
  String get trendingAnime => 'በመታየት ላይ ያለ አኒሜ';

  @override
  String get topRatedAnime => 'ከፍተኛ ደረጃ የተሰጠው አኒሜ';

  @override
  String get mostFollowedAnime => 'በጣም የተከተለ አኒሜ';

  @override
  String get comickProfile => 'የአስቂኝ መገለጫ';

  @override
  String get refreshFromComick => 'ከኮሚክ ያድሱ';

  @override
  String get mangaBakaProfile => 'የMangaBaka መገለጫ';

  @override
  String get refreshFromMangaBaka => 'ከMangaBaka አድስ';

  @override
  String get mangaUpdatesLoginTitle => 'ወደ MangaUpdates ይግቡ';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates መገለጫ';

  @override
  String get mangaUpdatesAnimeStart => 'አኒም መላመድ ይጀምራል';

  @override
  String get mangaUpdatesAnimeEnd => 'አኒም መላመድ ያበቃል';

  @override
  String get refreshFromMangaUpdates => 'ከማንጋ ዝማኔዎች ያድሱ';

  @override
  String get usernameOnly => 'የተጠቃሚ ስም';

  @override
  String get releases => 'የሚለቀቁት።';

  @override
  String get artistsLabel => 'አርቲስቶች';

  @override
  String get authorsLabel => 'ደራሲዎች';

  @override
  String get publishersLabel => 'አታሚዎች';

  @override
  String get licensedLabel => 'ፈቃድ ያላቸው';

  @override
  String get contentRatingLabel => 'የይዘት ደረጃ';

  @override
  String get yesLabel => 'አዎ';

  @override
  String get noLabel => 'አይ';

  @override
  String get ratingSteps => 'የደረጃ አሰጣጥ ደረጃዎች';

  @override
  String get hideNsfw => 'NSFW ደብቅ';

  @override
  String get hideNsfwSourcesDesc =>
      'ከምግቦቹ እና ከምንጩ መራጩ 18+ ምልክት የተደረገባቸውን ምንጮች ደብቅ። ተጭነው ይቆያሉ።';

  @override
  String get hideNsfwDesc =>
      'የአዋቂ ርዕሶችን ከፊዶችና ፍለጋ ውጭ አድርግ፣ የራስህን የአዋቂ ግቤቶች ደግሞ በ\"የተደበቁ ሚዲያዎች\" ስር ዘርዝር።';

  @override
  String get kitsuAccountOptions => 'የKitsu መለያ አማራጮች';

  @override
  String get mangaBakaAccountOptions => 'የMangaBaka መለያ አማራጮች';

  @override
  String get comickAccountOptions => 'የኮሚክ መለያ አማራጮች';

  @override
  String get comickClientId => 'የኮሚክ ደንበኛ መታወቂያ';

  @override
  String get comickClientIdDesc => 'ብጁ ደንበኛ መታወቂያ በcomick.dev ላይ ተመዝግቧል';

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
  String get couldNotUpdateKitsuSettings => 'የKitsu ቅንብሮችህን ማዘመን አልተቻለም';

  @override
  String get titleCanonical => 'ዋና';

  @override
  String get titleRomanized => 'በላቲን ፊደል';

  @override
  String get titleLocalized => 'የአካባቢ ቋንቋ';

  @override
  String get ratingSystem => 'የደረጃ አሰጣጥ ሥርዓት';

  @override
  String get ratingSimple => 'ቀላል (3 ፊቶች)';

  @override
  String get ratingRegular => 'መደበኛ (5 ኮከቦች)';

  @override
  String get ratingAdvanced => 'የላቀ (10 ነጥቦች)';

  @override
  String get contentFilter => 'የይዘት ማጣሪያ';

  @override
  String get contentSfw => 'ለሥራ አስተማማኝ ብቻ';

  @override
  String get contentSometimes => 'በፍለጋዎች ውስጥ የአዋቂ ይዘት';

  @override
  String get contentEverywhere => 'በሁሉም ቦታ የአዋቂ ይዘት';

  @override
  String get shareToGlobal => 'ለአለም አቀፍ ፊድ አጋራ';

  @override
  String get shareToGlobalDesc => 'እንቅስቃሴህ በKitsu አለም አቀፍ ፊድ ላይ እንዲታይ ፍቀድ።';

  @override
  String get memberSince => 'አባል የሆነበት ጊዜ';

  @override
  String get location => 'ቦታ';

  @override
  String get accountType => 'የመለያ ዓይነት';

  @override
  String get accountSupporter => 'ደጋፊ';

  @override
  String get accountFree => 'ነጻ';

  @override
  String get accountDetails => 'የመለያ ዝርዝሮች';

  @override
  String get refreshFromKitsu => 'ከKitsu አድስ';

  @override
  String get simklReadOnly => 'Simkl የተነበበ-ብቻ መዳረሻ ሰጥቷል';

  @override
  String get traktReadOnly => 'ትራክ ተነባቢ-ብቻ መዳረሻ ተሰጥቷል።';

  @override
  String get incognitoEditsBlocked => 'ኢንኮግኒቶ፦ የዝርዝር አርትዖቶች ታግደዋል';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ኢንኮግኒቶ፦ እድገት አልተቀመጠም';

  @override
  String progressSet(int progress) {
    return 'እድገት ወደ $progress ተቀምጧል';
  }

  @override
  String removedFromList(String title) {
    return '$title ከዝርዝርህ ተወግዷል';
  }

  @override
  String get following => 'የምትከተላቸው';

  @override
  String get followsMutual => 'የጋራ';

  @override
  String get followsNotMutual => 'የጋራ አይደለም';

  @override
  String get homeSections => 'የመነሻ ክፍሎች';

  @override
  String get homeSectionsHint => 'ለማስተካከል ጎትት። የተደበቁ ክፍሎች ፈጽሞ አይመጡም።';

  @override
  String get customListDeleteFailed => 'ብጁ ዝርዝርን መሰረዝ አልተሳካም';

  @override
  String get customListsSaveFailed => 'ብጁ ዝርዝሮችን ማስቀመጥ አልተሳካም';

  @override
  String get customListsSaved => 'ብጁ ዝርዝሮች ተቀምጠዋል';

  @override
  String get listName => 'የዝርዝር ስም';

  @override
  String get addList => 'ዝርዝር ጨምር';

  @override
  String get voiceActors => 'የድምጽ ተዋናዮች';

  @override
  String voiceActorsIn(String name) {
    return 'ድምጽ ተዋንያን · $name';
  }

  @override
  String get animeAppearances => 'በአኒሜ ውስጥ መታየቶች';

  @override
  String get mangaAppearances => 'በማንጋ ውስጥ መታየቶች';

  @override
  String get voicedCharacters => 'ድምጽ የሰጣቸው ገጸ ባህሪያት';

  @override
  String get animeCredits => 'የአኒሜ ሥራዎች';

  @override
  String get mangaCredits => 'የማንጋ ሥራዎች';

  @override
  String get mainProductions => 'ዋና ፕሮዳክሽኖች';

  @override
  String get otherWorks => 'ሌሎች ሥራዎች';

  @override
  String get prequelSequel => 'ቀዳሚና ተከታይ';

  @override
  String get prequel => 'ቅድመ ሁኔታ';

  @override
  String get sequel => 'ተከታይ';

  @override
  String get previousSeason => 'ያለፈው ሲዝን';

  @override
  String get thisSeason => 'ይህ ሲዝን';

  @override
  String get nextSeason => 'ቀጣይ ሲዝን';

  @override
  String get voiceRoles => 'የድምጽ ሚናዎች';

  @override
  String get staffPositions => 'የሠራተኛ ቦታዎች';

  @override
  String get mangaWorks => 'የማንጋ ሥራዎች';

  @override
  String get malProfile => 'የMyAnimeList መገለጫ';

  @override
  String get refreshFromMal => 'ከMyAnimeList አድስ';

  @override
  String get repullProfileCounts => 'መገለጫህንና ቆጠራዎችህን እንደገና አምጣ';

  @override
  String get refreshed => 'ታድሷል';

  @override
  String get simklProfile => 'የSimkl መገለጫ';

  @override
  String get traktProfile => 'Trakt መገለጫ';

  @override
  String get refreshFromSimkl => 'ከSimkl አድስ';

  @override
  String get refreshFromTrakt => 'ከትራክ አድስ';

  @override
  String get repullProfileLibrary => 'መገለጫህንና ቤተ-መጻሕፍትህን እንደገና አምጣ';

  @override
  String get simklSignInToSearch => 'ለመፈለግ ወደ Simkl ግባ';

  @override
  String get dropRate => 'የመተው መጠን';

  @override
  String get simklAttribution => 'ዳታና ሥዕሎች የቀረቡት በSimkl ነው። በSimkl ተመልከት';

  @override
  String get traktAttribution =>
      'በ Trakt የቀረበ ውሂብ እና የጥበብ ስራ። በ Trakt ላይ ይመልከቱ';

  @override
  String get listsLiked => 'ወደውታል';

  @override
  String get listsYours => 'ያንተ';

  @override
  String get traktVip => 'ቪአይፒ';

  @override
  String get traktVipMember => 'Trakt ቪአይፒ አባል';

  @override
  String get onHold => 'ተይዟል';

  @override
  String get scoredBy => 'የተሰጠ ነጥብ';

  @override
  String get planToWatch => 'ለመመልከት የታቀደ';

  @override
  String get planToRead => 'ለማንበብ የታቀደ';

  @override
  String get timesRewatched => 'የተደገመ ምልከታ';

  @override
  String get timesReread => 'የተደገመ ንባብ';

  @override
  String get comments => 'አስተያየቶች';

  @override
  String get moviesAndSeries => 'ፊልሞችና ተከታታዮች';

  @override
  String get simklMoviesOnly => 'ፊልሞች እና ተከታታዮች ብቻ';

  @override
  String get simklMoviesOnlyDesc =>
      'የአኒም ትርን ይተካዋል፡ በመጀመሪያ ፊልሞች፣ ከዚያም በሁለት አኒሜ ረድፎች ያሳያል';

  @override
  String get trackingOnly => 'መከታተል ብቻ';

  @override
  String get signedIn => 'ገብተሃል';

  @override
  String get searchLanguage => 'የፍለጋ ቋንቋ';

  @override
  String get savedToList => 'ወደ ዝርዝርህ ተቀምጧል';

  @override
  String get removedFromYourList => 'ከዝርዝርህ ተወግዷል';

  @override
  String get retry => 'እንደገና ሞክር';

  @override
  String get synopsis => 'ማጠቃለያ';

  @override
  String get details => 'ዝርዝሮች';

  @override
  String get addToList => 'ወደ ዝርዝር ጨምር';

  @override
  String get trailer => 'ትሬለር';

  @override
  String get trailerQuality => 'የተጎታች ጥራት';

  @override
  String get titleCopied => 'ርዕሱ ተቀድቷል';

  @override
  String get linkCopied => 'ሊንኩ ተቀድቷል';

  @override
  String get watchTrailer => 'ትሬለር ተመልከት';

  @override
  String get copyTitle => 'ርዕስ ቅዳ';

  @override
  String get detailStale =>
      'AniList ሊደረስበት አልቻለም። ይህ የተቀመጠ መረጃ ነው እና ጊዜ ያለፈበት ሊሆን ይችላል።';

  @override
  String get copyLink => 'ሊንክ ቅዳ';

  @override
  String get openInBrowser => 'በብራውዘር ክፈት';

  @override
  String viewOnSource(String source) {
    return 'በ$source ተመልከት';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'ክፍል $ep በ$time ውስጥ ይተላለፋል';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'ቀጣዩ ክፍል በ$time ውስጥ';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'ምዕራፍ $chapter በ$time አካባቢ ይጠበቃል';
  }

  @override
  String get logPathCopied => 'የሎግ ፋይል መንገድ ወደ ክሊፕቦርድ ተቀድቷል';

  @override
  String get animeSource => 'የአኒሜ ምንጭ';

  @override
  String get mangaSource => 'የማንጋ ምንጭ';

  @override
  String get popular => 'ተወዳጅ';

  @override
  String get allCustomLists => 'ሁሉም ብጁ ዝርዝሮች';

  @override
  String get simklTitleLanguage => 'የአኒሜ ርዕስ ቋንቋ';

  @override
  String get titleLanguageEnglish => 'እንግሊዝኛ';

  @override
  String get titleLanguageRomaji => 'ሮማጂ';

  @override
  String get simklListsTrending => 'በመታየት ላይ ያለ';

  @override
  String get simklListsMostLiked => 'በጣም የተወደደ';

  @override
  String get simklListsMostFollowed => 'አብዛኞቹ ተከተሉት።';

  @override
  String get simklListsOfficial => 'ኦፊሴላዊ';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ርዕሶች',
      one: '1 ርዕስ',
    );
    return '$_temp0';
  }

  @override
  String get people => 'ሰዎች';

  @override
  String get mostComments => 'አብዛኞቹ አስተያየቶች';

  @override
  String get alphabetical => 'ፊደል';

  @override
  String get latest => 'የቅርብ ጊዜ';

  @override
  String get saved => 'የተቀመጡ';

  @override
  String get nothingMatched => 'ምንም አልተገኘም';

  @override
  String get nothingSavedFromSource => 'ከዚህ ምንጭ እስካሁን ምንም አልተቀመጠም';

  @override
  String get sourceReturnedNothing => 'ይህ ምንጭ ምንም አልመለሰም';

  @override
  String get checkConnectionOrSource => 'ግንኙነትህን ፈትሽ ወይም ሌላ ምንጭ ሞክር።';

  @override
  String get tryDifferentSearch => 'ሌላ የፍለጋ ቃል ሞክር።';

  @override
  String get savedTitlesAppearHere => 'ወደ ዝርዝርህ የምትጨምራቸው ርዕሶች እዚህ ይታያሉ።';

  @override
  String get tryOtherFeed => 'በምትኩ ሌላውን ፊድ ወይም ፍለጋ ሞክር።';

  @override
  String searchSource(String source) {
    return '$source ፈልግ';
  }

  @override
  String get animeExtensions => 'የአኒሜ ኤክስቴንሽኖች';

  @override
  String get mangaExtensions => 'የማንጋ ኤክስቴንሽኖች';

  @override
  String get nothingHereYet => 'እስካሁን እዚህ ምንም የለም';

  @override
  String get savedOnDeviceUntilLogin =>
      'ከታች ያለው ሁሉ እስክትቀይር ድረስ በዚህ መሣሪያ ላይ ተቀምጧል።';

  @override
  String get yourProfile => 'መገለጫህ';

  @override
  String get activity => 'እንቅስቃሴ';

  @override
  String get extensions => 'ኤክስቴንሽኖች';

  @override
  String get logOut => 'ውጣ';

  @override
  String get logIn => 'ግባ';

  @override
  String get logOutConfirm => 'እርግጠኛ ነህ መውጣት ትፈልጋለህ?';

  @override
  String get incognitoMode => 'የኢንኮግኒቶ ሁነታ';

  @override
  String get alsoBlockListEdits => 'የዝርዝር አርትዖቶችንም አግድ';

  @override
  String get offlineMode => 'ከመስመር ውጭ ሁነታ';

  @override
  String get switchService => 'አገልግሎት ቀይር';

  @override
  String logOutOf(String name) {
    return 'ከ$name ውጣ';
  }

  @override
  String get loggedIn => 'ገብተሃል';

  @override
  String get notifications => 'ማሳወቂያዎች';

  @override
  String get nothingNew => 'አዲስ ነገር የለም';

  @override
  String get thisWeek => 'በዚህ ሳምንት';

  @override
  String get listOnly => 'ዝርዝር ብቻ';

  @override
  String get notInList => 'ዝርዝር ውስጥ የለም።';

  @override
  String get filter => 'አጣራ';

  @override
  String get searchResults => 'የፍለጋ ውጤቶች';

  @override
  String get recentSearches => 'የቅርብ ጊዜ ፍለጋዎች';

  @override
  String get searchOrSetFilter => 'ፈልግ ወይም ማጣሪያ አዘጋጅ';

  @override
  String get filters => 'ማጣሪያዎች';

  @override
  String get showLess => 'ያነሰ አሳይ';

  @override
  String get showAll => 'ሁሉንም አሳይ';

  @override
  String get apply => 'ተግብር';

  @override
  String get preview => 'ቅድመ እይታ';

  @override
  String get preset => 'ቅድመ-ቅምር';

  @override
  String get cardNormal => 'መደበኛ';

  @override
  String get cardOnCard => 'በካርዱ ላይ';

  @override
  String get cardInCard => 'በካርዱ ውስጥ';

  @override
  String get size => 'መጠን';

  @override
  String get cardWidth => 'የካርድ ስፋት';

  @override
  String get compact => 'ጥቅጥቅ';

  @override
  String get coverAndTitleOnly => 'ሽፋንና ርዕስ ብቻ';

  @override
  String get titleLines => 'የርዕስ መስመሮች';

  @override
  String get shape => 'ቅርጽ';

  @override
  String get posterShape => 'የፖስተር ቅርጽ';

  @override
  String get cornerRadius => 'የማዕዘን ክብነት';

  @override
  String get off => 'ጠፍቷል';

  @override
  String get topLeft => 'ከላይ ግራ';

  @override
  String get topRight => 'ከላይ ቀኝ';

  @override
  String get bottomLeft => 'ከታች ግራ';

  @override
  String get bottomRight => 'ከታች ቀኝ';

  @override
  String get overlays => 'ተደራቢዎች';

  @override
  String get progressCount => 'እድገት / ቆጠራ';

  @override
  String get pill => 'እንክብል';

  @override
  String get bar => 'አሞሌ';

  @override
  String get outside => 'ውጭ';

  @override
  String get scoreBadge => 'የውጤት ባጅ';

  @override
  String get airingDot => 'የስርጭት ነጥብ';

  @override
  String get updateAvailable => 'ዝማኔ አለ';

  @override
  String get notInstalled => 'አልተጫነም';

  @override
  String get done => 'ተጠናቅቋል';

  @override
  String get searchOrEnterUrl => 'ፈልግ ወይም URL አስገባ';

  @override
  String get refresh => 'አድስ';

  @override
  String get animePlanetRank => 'ደረጃ';

  @override
  String get animePlanetMagazine => 'መጽሔት';

  @override
  String get animePlanetRefreshLists => 'ዝርዝሮችዎን ያድሱ';

  @override
  String get animePlanetRefreshListsDesc => 'የአኒሜ-ፕላኔት ዝርዝሮችዎን እንደገና ያንብቡ';

  @override
  String get animePlanetLocalNote =>
      'በአኒሜ-ፕላኔት መለያዎ ላይ ለውጦችን ለማስቀመጥ ይግቡ። እስከዚያ ድረስ በዚህ መሣሪያ ላይ ይቆያሉ';

  @override
  String get share => 'አጋራ';

  @override
  String get characters => 'ገጸ ባህሪያት';

  @override
  String get staff => 'ሠራተኞች';

  @override
  String get readMore => 'ተጨማሪ አንብብ';

  @override
  String get couldNotLoadList => 'ዝርዝሩን መጫን አልተቻለም';

  @override
  String get logInToFavourite => 'ተወዳጆችን ለመጨመር ግባ';

  @override
  String get alsoKnownAs => 'በሌላ ስም';

  @override
  String get hideSpoilerNames => 'የአጥፊ ስሞችን ደብቅ';

  @override
  String get showSpoilerNames => 'የአጥፊ ስሞችን አሳይ';

  @override
  String get favourited => 'ተወዳጅ ተደርጓል';

  @override
  String get favourite => 'ተወዳጅ';

  @override
  String get couldNotOpenTitle => 'ይህን ርዕስ መክፈት አልተቻለም';

  @override
  String get nobodyHereYet => 'እስካሁን ማንም የለም';

  @override
  String get noMatches => 'ምንም አልተገኘም';

  @override
  String get gridView => 'የፍርግርግ እይታ';

  @override
  String get fullWidth => 'ሙሉ ስፋት';

  @override
  String get userNotFound => 'ተጠቃሚው አልተገኘም';

  @override
  String get couldNotUpdateFollow => 'መከተልን ማዘመን አልተቻለም';

  @override
  String followedUser(String name) {
    return '$nameን ተከትለሃል';
  }

  @override
  String unfollowedUser(String name) {
    return '$nameን መከተል አቁመሃል';
  }

  @override
  String get messages => 'መልዕክቶች';

  @override
  String get logInToSeeMessages => 'መልዕክቶችህን ለማየት ግባ';

  @override
  String get editActivity => 'እንቅስቃሴ አርም';

  @override
  String get newActivity => 'አዲስ እንቅስቃሴ';

  @override
  String get editMessage => 'መልዕክት አርም';

  @override
  String get writeMessage => 'መልዕክት ጻፍ';

  @override
  String get editReply => 'ምላሽ አርም';

  @override
  String get posted => 'ተለጥፏል';

  @override
  String get couldNotPost => 'መለጠፍ አልተቻለም';

  @override
  String get nothingToPreview => 'ለቅድመ እይታ ምንም የለም';

  @override
  String get writeSomethingHint => 'የሆነ ነገር ጻፍ… እዚህ የAniList markdown ይሠራል';

  @override
  String get privateMessage => 'የግል መልዕክት';

  @override
  String get post => 'ለጥፍ';

  @override
  String get nothingHere => 'እዚህ ምንም የለም';

  @override
  String get noAnimeProgress => 'የአኒሜ እድገት የለም';

  @override
  String get noMangaProgress => 'የማንጋ እድገት የለም';

  @override
  String get noMessages => 'መልዕክት የለም';

  @override
  String get writeMessageHint => 'መልዕክት ጻፍ…';

  @override
  String get shareSomethingHint => 'የሆነ ነገር አጋራ…';

  @override
  String get all => 'ሁሉም';

  @override
  String get anime => 'አኒሜ';

  @override
  String get manga => 'ማንጋ';

  @override
  String get count => 'ቆጠራ';

  @override
  String get hoursWatched => 'የተመለከትካቸው ሰዓታት';

  @override
  String get chaptersRead => 'የተነበቡ ምዕራፎች';

  @override
  String get meanScore => 'አማካይ ውጤት';

  @override
  String get noStatsYet => 'እስካሁን ስታቲስቲክስ የለም';

  @override
  String get totalEntries => 'ጠቅላላ ግቤቶች';

  @override
  String get episodesWatched => 'የተመለከትካቸው ክፍሎች';

  @override
  String get daysWatched => 'የተመለከትካቸው ቀናት';

  @override
  String get volumesRead => 'የተነበቡ ቅጾች';

  @override
  String get standardDeviation => 'መደበኛ ልዩነት';

  @override
  String get showMore => 'ተጨማሪ አሳይ';

  @override
  String get followsYou => 'ይከተልሃል';

  @override
  String get nobodyYet => 'እስካሁን ማንም የለም';

  @override
  String get logInToLike => 'ላይክ ለማድረግ ግባ';

  @override
  String get failedToLikeActivity => 'እንቅስቃሴውን ላይክ ማድረግ አልተሳካም';

  @override
  String get deleteActivityConfirm => 'እንቅስቃሴው ይሰረዝ?';

  @override
  String get deletedActivity => 'እንቅስቃሴ ተሰርዟል';

  @override
  String get failedToDeleteActivity => 'እንቅስቃሴውን መሰረዝ አልተሳካም';

  @override
  String get subscribed => 'ተመዝግበሃል';

  @override
  String get unsubscribed => 'ምዝገባ ተሰርዟል';

  @override
  String get failedToUpdateSubscription => 'ምዝገባውን ማዘመን አልተሳካም';

  @override
  String get edit => 'አርም';

  @override
  String get delete => 'ሰርዝ';

  @override
  String get likedBy => 'ላይክ ያደረጉ';

  @override
  String get follow => 'ተከተል';

  @override
  String get nameCopied => 'ስሙ ተቀድቷል';

  @override
  String get followsEachOther => 'እርስ በርስ ትከተላላችሁ';

  @override
  String get unfollow => 'መከተል አቁም';

  @override
  String get userIdCopied => 'የተጠቃሚ መታወቂያ ተቀድቷል';

  @override
  String get shareProfile => 'መገለጫ አጋራ';

  @override
  String get copyUserId => 'የተጠቃሚ መታወቂያ ቅዳ';

  @override
  String get failedToDelete => 'መሰረዝ አልተሳካም';

  @override
  String get failedToLike => 'ላይክ ማድረግ አልተሳካም';

  @override
  String get replies => 'ምላሾች';

  @override
  String get reply => 'መልስ';

  @override
  String get noRepliesYet => 'እስካሁን ምላሽ የለም';

  @override
  String get favouriteAnime => 'ተወዳጅ አኒሜ';

  @override
  String get favouriteManga => 'ተወዳጅ ማንጋ';

  @override
  String get favouriteCharacters => 'ተወዳጅ ገጸ ባህሪያት';

  @override
  String get favouriteStaff => 'ተወዳጅ ሠራተኞች';

  @override
  String get favouriteStudios => 'ተወዳጅ ስቱዲዮዎች';

  @override
  String get noFavouritesYet => 'እስካሁን ተወዳጅ የለም';

  @override
  String get yourStory => 'ታሪክህ';

  @override
  String get copiedToClipboard => 'ወደ ክሊፕቦርድ ተቀድቷል';

  @override
  String get justNow => 'አሁን ብቻ';

  @override
  String get openImage => 'ምስል ክፈት';

  @override
  String get hideSpoiler => 'አጥፊን ደብቅ';

  @override
  String get showSpoiler => 'አጥፊን አሳይ';

  @override
  String get status => 'ሁኔታ';

  @override
  String get score => 'ውጤት';

  @override
  String get started => 'የተጀመረው';

  @override
  String get completed => 'የተጠናቀቀው';

  @override
  String get private => 'የግል';

  @override
  String get hideFromStatusLists => 'ከሁኔታ ዝርዝሮች ደብቅ';

  @override
  String get totalRepeats => 'ጠቅላላ ድግግሞሾች';

  @override
  String get other => 'ሌላ';

  @override
  String get customLists => 'ብጁ ዝርዝሮች';

  @override
  String get activeDays => 'ንቁ ቀናት';

  @override
  String get longestStreak => 'ረጅሙ ተከታታይ';

  @override
  String get currentStreak => 'አሁን ያለው ተከታታይ';

  @override
  String get tapOrHoverDay => 'ቀን ንካ ወይም አንዣብብ';

  @override
  String get less => 'ያነሰ';

  @override
  String get more => 'ይበልጥ';

  @override
  String epIn(int ep, String time) {
    return 'ክፍል $ep በ$time';
  }

  @override
  String get sectionLoading => 'በመጫን ላይ';

  @override
  String get querySize => 'የጥያቄ መጠን';

  @override
  String get querySizeDesc =>
      'አንድ ትልቅ ጥያቄ ሁሉንም ረድፎች (እና ሙሉ መገለጫን) በአንድ ጊዜ ይጭናል። የተከፈሉ ጥያቄዎች ለእያንዳንዱ ረድፍ ወይም የመገለጫ ክፍል ትንሽ ጥያቄ ይልካሉ፦ እያንዳንዳቸው ፈጣን ናቸው፣ ክፍሎቹም እየደረሱ ይታያሉ።';

  @override
  String get oneBig => 'አንድ ትልቅ';

  @override
  String get split => 'የተከፈለ';

  @override
  String get sectionSocial => 'ማኅበራዊ';

  @override
  String get systemNotifications => 'የሲስተም ማሳወቂያዎች';

  @override
  String get feedLayout => 'የፊድ አቀማመጥ';

  @override
  String sectionsShown(int shown, int total) {
    return 'ከ$total $shown ታይተዋል — ለመምረጥና ለማስተካከል ንካ';
  }

  @override
  String labelSections(String label) {
    return '$label ክፍሎች';
  }

  @override
  String get accountOptions => 'የመለያ አማራጮች';

  @override
  String get anilistAccountOptions => 'የAniList መለያ አማራጮች';

  @override
  String get sectionPrivacy => 'ግላዊነት';

  @override
  String get hidePrivateEntries => 'የግል ግቤቶችን ደብቅ';

  @override
  String get hidePrivateEntriesDesc =>
      'በAniList ላይ የግል ተብለው የተሰየሙ ግቤቶችን ከፊድ ውጭ አድርግ';

  @override
  String get anilistExcludeList => 'ዝርዝርዎን አግልል';

  @override
  String get anilistExcludeListDesc =>
      'በAniList ዝርዝርዎ ላይ ያሉ ርዕሶችን ከአኒሜ እና ማንጋ ገጾች ያርቁ';

  @override
  String get anilistProfile => 'የAniList መገለጫ';

  @override
  String get refreshFromAnilist => 'ከAniList አድስ';

  @override
  String get couldNotUpdateAnilistSettings => 'የAniList ቅንብሮችን ማዘመን አልተቻለም';

  @override
  String get sectionNames => 'ስሞች';

  @override
  String get titleLanguage => 'የርዕስ ቋንቋ';

  @override
  String get titleLanguageDesc =>
      'ርዕሶች በየትኛውም ቦታ የሚጻፉበት መንገድ፣ ለምሳሌ Attack on Titan / Shingeki no Kyojin / 進撃の巨人።';

  @override
  String get staffCharacterNames => 'የሠራተኞችና ገጸ ባህሪያት ስሞች';

  @override
  String get sectionLists => 'ዝርዝሮች';

  @override
  String get scoreFormat => 'የውጤት ቅርጸት';

  @override
  String get sortListsBy => 'ዝርዝሮችን ደርድር በ';

  @override
  String labelCustomLists(String label) {
    return '$label ብጁ ዝርዝሮች';
  }

  @override
  String customListsCount(int count) {
    return '$count ዝርዝሮች — ለመጨመር ወይም ለማስወገድ ንካ';
  }

  @override
  String get mergeActivities => 'እንቅስቃሴዎችን አዋህድ';

  @override
  String minutesCount(int count) {
    return '$count ደቂቃ';
  }

  @override
  String get timezone => 'የሰዓት ሰቅ';

  @override
  String get notSet => 'አልተቀናበረም';

  @override
  String get airingNotifications => 'የስርጭት ማሳወቂያዎች';

  @override
  String get airingNotificationsDesc => 'የምትከተለው ሾው ክፍል ሲተላለፍ አሳውቀኝ';

  @override
  String get displayAdultContent => 'የአዋቂ ይዘት አሳይ';

  @override
  String get displayAdultContentDesc => '18+ ርዕሶችን በማሰስ፣ ፍለጋና ፊዶች ውስጥ አካትት';

  @override
  String get restrictMessages => 'መልዕክቶችን በምትከተላቸው ብቻ ወስን';

  @override
  String get restrictMessagesDesc => 'መልዕክት መላክ የሚችሉት የምትከተላቸው ሰዎች ብቻ ናቸው';

  @override
  String get sectionServices => 'አገልግሎቶች';

  @override
  String get novel => 'ኖቭል';

  @override
  String labelService(String label) {
    return '$label አገልግሎት';
  }

  @override
  String nameSettings(String name) {
    return '$name ቅንብሮች';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'ከ$name ኤክስቴንሽን ብሪጅ የመጡ አማራጮች';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name መጀመር አልቻለም፦ $error';
  }

  @override
  String get importLists => 'ዝርዝሮችን አስገባ';

  @override
  String get importListsDesc => 'ከAniyomi፣ Mihon / Tachiyomi ወይም Kotatsu ምትኬዎች';

  @override
  String get exportLists => 'ዝርዝሮችን ላክ';

  @override
  String get exportListsDesc => 'ወደ Aniyomi፣ Mihon ወይም Kotatsu ምትኬ';

  @override
  String get sectionBrowse => 'አስስ';

  @override
  String get readingTab => 'የንባብ ታብ';

  @override
  String get readingTabDesc => 'ሦስተኛው ታብ የትኞቹን ኤክስቴንሽኖች ያሳያል';

  @override
  String get firstTab => 'የመጀመሪያ ትር';

  @override
  String get firstTabDesc =>
      'የመጀመሪያው ትር የትኛውን ቅጥያ ያሳያል። አኒም ከቡና ቤት ለመጣል እዚህ ማንጋ እና ልብ ወለድ ንባብ ትር ላይ ይምረጡ';

  @override
  String get novelExtensions => 'ልብ ወለድ ቅጥያዎች';

  @override
  String get defaultFeed => 'ነባሪ ፊድ';

  @override
  String get defaultFeedDesc => 'ምንጭ የትኛውን ዝርዝር ይዞ እንደሚከፈት';

  @override
  String noServiceSupports(String type) {
    return 'ምንም አገልግሎት $typeን አይደግፍም';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · ከ$installed ምንጮች $loaded እየተጫኑ ነው';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'እዚህ $typeን የሚደግፍ የኤክስቴንሽን አገልግሎት የለም።';
  }

  @override
  String get loadDataFrom => 'ዳታ ጫን ከ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'እስካሁን የተጫኑ $type ምንጮች የሉም።';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'የ$name ኤክስቴንሽን አልተጫነም';
  }

  @override
  String get thisSource => 'ይህ ምንጭ';

  @override
  String failedToAddRepository(String error) {
    return 'ማከማቻ መጨመር አልተሳካም፦ $error';
  }

  @override
  String installedType(String type) {
    return 'የተጫኑ $type';
  }

  @override
  String availableType(String type) {
    return 'ያሉ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'የተጫኑ $type ኤክስቴንሽኖች የሉም';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ያሉ $type ኤክስቴንሽኖች የሉም';
  }

  @override
  String get nothingToShowYet => 'እስካሁን የሚታይ ነገር የለም';

  @override
  String get addTitlesHint => 'ወደ ዝርዝርህ ርዕሶችን ጨምር፣ እዚህ ይታያሉ።';

  @override
  String get couldntLoad => 'መጫን አልተቻለም';

  @override
  String get progressStyleHint =>
      'እንክብሉና አሞሌው በፖስተሩ ላይ ይደራረባሉ፤ \"ውጭ\" ደግሞ ተመሳሳዩን ቆጠራ እንደ ተራ ጽሑፍ ያሳያል — አንዱን ምረጥ።';

  @override
  String get nixManagedUpdate =>
      'ይህ ግንባታ በNix የሚተዳደር ነው — ከዚህ ከማዘመን ይልቅ በflake ላይ \"nix flake update\" አሂድና እንደገና ገንባ';

  @override
  String autoUpdateFailed(String error) {
    return 'ራስ-ሰር ዝማኔ አልተሳካም ($error) — በምትኩ የማውረጃ ገጹን በመክፈት ላይ';
  }

  @override
  String get unknownPreference => 'ያልታወቀ ምርጫ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ያልተደገፈ የምርጫ ዓይነት $type';
  }

  @override
  String get notYetReleased => 'ገና አልተለቀቀም';

  @override
  String get notStarted => 'ገና አልተጀመረም';

  @override
  String get country => 'አገር';

  @override
  String get sort => 'ደርድር';

  @override
  String get chooseBackupDialog => 'የAniyomi፣ Mihon ወይም Kotatsu ምትኬ ምረጥ';

  @override
  String get importListsHint =>
      'ቤተ-መጻሕፍትን ከAniyomi፣ Mihon / Tachiyomi ወይም Kotatsu አምጣ። ርዕሶች፣ ሽፋኖች፣ እድገትና ምድቦች ይቀመጣሉ።';

  @override
  String get chooseBackupFile => 'የምትኬ ፋይል ምረጥ';

  @override
  String importAnimeCount(int count) {
    return '$count አኒሜ አስገባ';
  }

  @override
  String importMangaCount(int count) {
    return '$count ማንጋ አስገባ';
  }

  @override
  String get mergeWithExisting => 'ከነባር ዝርዝሮች ጋር አዋህድ';

  @override
  String get mergeWithExistingDesc => 'ያለህን ይጠብቃል፤ ሲጠፋ የሚመሳሰሉ ርዕሶችን ይተካል';

  @override
  String get chooseAnother => 'ሌላ ምረጥ';

  @override
  String get import => 'አስገባ';

  @override
  String animeCount(int count) {
    return '$count አኒሜ';
  }

  @override
  String mangaCount(int count) {
    return '$count ማንጋ';
  }

  @override
  String get chooseSaveLocation => 'ምትኬውን የምታስቀምጥበት ቦታ ምረጥ';

  @override
  String savedPath(String path) {
    return '$path ተቀምጧል';
  }

  @override
  String exportFailed(String error) {
    return 'መላክ አልተሳካም፦ $error';
  }

  @override
  String get nothingInLocalLists => 'በአካባቢ ዝርዝሮችህ ውስጥ እስካሁን ምንም የለም።';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ከአካባቢ ዝርዝሮችህ $anime አኒሜና $manga ማንጋ ይላካሉ። Kotatsu ማንጋን ብቻ ነው የሚደግፈው።';
  }

  @override
  String get saveToFolder => 'ወደ አቃፊ አስቀምጥ';

  @override
  String get formatAnimeManga => 'አኒሜና ማንጋ · .tachibk';

  @override
  String get formatMangaTachibk => 'ማንጋ ብቻ · .tachibk';

  @override
  String get formatMangaZip => 'ማንጋ ብቻ · .zip';

  @override
  String get genres => 'ዘውጎች';

  @override
  String get relations => 'ተዛማጆች';

  @override
  String get recommendations => 'ምክሮች';

  @override
  String get openings => 'መክፈቻዎች';

  @override
  String get endings => 'መዝጊያዎች';

  @override
  String get background => 'ዳራ';

  @override
  String get links => 'ሊንኮች';

  @override
  String get rank => 'ደረጃ';

  @override
  String get members => 'አባላት';

  @override
  String get favorites => 'ተወዳጆች';

  @override
  String get episodes => 'ክፍሎች';

  @override
  String get chapters => 'ምዕራፎች';

  @override
  String get volumes => 'ቅጾች';

  @override
  String get format => 'ቅርጸት';

  @override
  String get source => 'ምንጭ';

  @override
  String get duration => 'ቆይታ';

  @override
  String minutesPerEpisode(int minutes) {
    return '$minutes ደቂቃ በክፍል';
  }

  @override
  String get rating => 'ደረጃ';

  @override
  String get studio => 'ስቱዲዮ';

  @override
  String get serialization => 'ተከታታይ ህትመት';

  @override
  String get season => 'ሲዝን';

  @override
  String get year => 'ዓመት';

  @override
  String get filterAny => 'ማንኛውም';

  @override
  String get broadcast => 'ስርጭት';

  @override
  String get aired => 'የተላለፈው';

  @override
  String get published => 'የታተመው';

  @override
  String get popularity => 'ተወዳጅነት';

  @override
  String get community => 'ማኅበረሰብ';

  @override
  String get watching => 'በመመልከት ላይ';

  @override
  String get reading => 'በማንበብ ላይ';

  @override
  String get dropped => 'የተተወ';

  @override
  String get unfinished => 'ያላለቀ';

  @override
  String get planned => 'የታቀደ';

  @override
  String get trailers => 'ትሬለሮች';

  @override
  String get ratings => 'ደረጃዎች';

  @override
  String get originalTitle => 'ኦሪጅናል';

  @override
  String get titleLabel => 'ርዕስ';

  @override
  String get votes => 'ድምጾች';

  @override
  String get watchedStat => 'የተመለከትኩት';

  @override
  String get runtime => 'የሩጫ ጊዜ';

  @override
  String get director => 'ዳይሬክተር';

  @override
  String get network => 'ኔትወርክ';

  @override
  String get certification => 'የዕድሜ ደረጃ';

  @override
  String get airs => 'ይተላለፋል';

  @override
  String get budget => 'በጀት';

  @override
  String get revenue => 'ገቢ';

  @override
  String get released => 'የተለቀቀው';

  @override
  String get tags => 'መለያዎች';

  @override
  String get author => 'ደራሲ';

  @override
  String get born => 'የተወለደው';

  @override
  String get died => 'ሞተ';

  @override
  String get birthplace => 'የትውልድ ቦታ';

  @override
  String get department => 'መምሪያ';

  @override
  String get website => 'ድር ጣቢያ';

  @override
  String get established => 'የተመሰረተው';

  @override
  String get manhwa => 'ማንህዋ';

  @override
  String get manhua => 'ማንሁዋ';

  @override
  String get novels => 'ኖቭሎች';

  @override
  String get thisMonth => 'በዚህ ወር';

  @override
  String get movies => 'ፊልሞች';

  @override
  String get shows => 'ሾዎች';

  @override
  String get moviesWatched => 'የታዩ ፊልሞች';

  @override
  String get showsWatched => 'የታዩ ትዕይንቶች';

  @override
  String get moviesCollected => 'ፊልሞች ተሰብስበዋል';

  @override
  String get showsCollected => 'የተሰበሰቡ ትዕይንቶች';

  @override
  String get rewatching => 'እንደገና በመመልከት ላይ';

  @override
  String get rereading => 'እንደገና በማንበብ ላይ';

  @override
  String get watchedStatus => 'የተመለከትኩት';

  @override
  String get planning => 'በእቅድ ላይ';

  @override
  String get paused => 'ቆሟል';

  @override
  String get watch => 'ተመልከት';

  @override
  String get read => 'አንብብ';

  @override
  String get finished => 'ተጠናቋል';

  @override
  String get releasing => 'በመለቀቅ ላይ';

  @override
  String get cancelled => 'ተሰርዟል';

  @override
  String get hiatus => 'ዕረፍት';

  @override
  String get remove => 'አስወግድ';

  @override
  String syncToService(String service) {
    return 'ወደ $service አመሳስል';
  }

  @override
  String syncedToService(String service) {
    return 'ወደ $service ተመሳስሏል';
  }

  @override
  String get latestReleases => 'የቅርብ ጊዜ ልቀቶች';

  @override
  String get topRated => 'ከፍተኛ ደረጃ የተሰጣቸው';

  @override
  String localSection(String title) {
    return '$title · አካባቢያዊ';
  }

  @override
  String get localEntryNote =>
      'ይህ ርዕስ በዚህ መሣሪያ ላይ ባለው የአካባቢ ዝርዝርህ ውስጥ ብቻ ነው። ከመለያ ዝርዝርህ ጋር ሊጋጭ ስለሚችል እዚህ አርትዖት ጠፍቷል፤ ግን አሁንም ማስወገድ ትችላለህ።';

  @override
  String get cardPresetPoster => 'ፖስተር';

  @override
  String get cardPresetCard => 'ካርድ';

  @override
  String get cardPresetCozy => 'ምቹ';

  @override
  String get sortTopRated => 'ከፍተኛ ደረጃ';

  @override
  String get sortMostPopular => 'በጣም ተወዳጅ';

  @override
  String get sortTrending => 'በመታየት ላይ';

  @override
  String get sortNewest => 'አዲሱ';

  @override
  String get sortAz => 'አ–ዜ';

  @override
  String get sortMostFavourited => 'በጣም የተወደደ';

  @override
  String get anyCountry => 'ማንኛውም አገር';

  @override
  String get orderScore => 'ውጤት';

  @override
  String get orderTitle => 'ርዕስ';

  @override
  String get orderLastUpdated => 'መጨረሻ የዘመነ';

  @override
  String get orderLastAdded => 'መጨረሻ የተጨመረ';

  @override
  String get never => 'በጭራሽ';

  @override
  String get always => 'ሁልጊዜ';

  @override
  String get scorePoint100 => '100 ነጥብ';

  @override
  String get scorePoint10Decimal => '10 ነጥብ ከአስርዮሽ ጋር';

  @override
  String get scorePoint10 => '10 ነጥብ';

  @override
  String get scorePoint5 => '5 ኮከብ';

  @override
  String get scorePoint3 => '3 ነጥብ ፈገግታ';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ሰዓታት',
      one: '1 ሰዓት',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ቀናት',
      one: '1 ቀን',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ሳምንታት',
      one: '1 ሳምንት',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ቀጥል';

  @override
  String get resumeSourceMissing => 'ለመቀጠል የዚህን ርዕስ ምንጭ ጫን';

  @override
  String get resumeRemove => 'ከመቀጠል አስወግድ';

  @override
  String resumeAt(String time) {
    return '$time ቀርቷል';
  }

  @override
  String resumePage(int page, int total) {
    return 'ገጽ $page ከ$total';
  }

  @override
  String get continueWatching => 'መመልከት ቀጥል';

  @override
  String get continueReading => 'ማንበብ ቀጥል';

  @override
  String get favouriteAnimeSection => 'ተወዳጅ አኒሜ';

  @override
  String get favouriteMangaSection => 'ተወዳጅ ማንጋ';

  @override
  String get plannedAnime => 'የታቀደ አኒሜ';

  @override
  String get plannedManga => 'የታቀደ ማንጋ';

  @override
  String get completedAnime => 'የተጠናቀቀ አኒሜ';

  @override
  String get completedManga => 'የተጠናቀቀ ማንጋ';

  @override
  String get hiddenMedia => 'የተደበቁ ሚዲያዎች';

  @override
  String get recentUpdates => 'የቅርብ ጊዜ ዝማኔዎች';

  @override
  String get trendingNow => 'አሁን በመታየት ላይ';

  @override
  String get popularThisSeason => 'በዚህ ሲዝን ተወዳጅ';

  @override
  String get trendingMovies => 'በመታየት ላይ ያሉ ፊልሞች';

  @override
  String get topRatedSeries => 'ከፍተኛ ደረጃ የተሰጣቸው ተከታታዮች';

  @override
  String get mostFavouriteSeries => 'በጣም የተወደዱ ተከታታዮች';

  @override
  String get popularAnime => 'ተወዳጅ አኒሜ';

  @override
  String get trendingManhwa => 'በመታየት ላይ ያሉ ማንህዋዎች';

  @override
  String get trendingNovels => 'በመታየት ላይ ያሉ ኖቭሎች';

  @override
  String get topRatedManga => 'ከፍተኛ ደረጃ የተሰጣቸው ማንጋዎች';

  @override
  String get mostFavouriteManga => 'በጣም የተወደዱ ማንጋዎች';

  @override
  String get popularManga => 'ተወዳጅ ማንጋ';

  @override
  String get topMovies => 'ምርጥ ፊልሞች';

  @override
  String get topOna => 'ምርጥ ONA';

  @override
  String get topOva => 'ምርጥ OVA';

  @override
  String get mostPopular => 'በጣም ተወዳጅ';

  @override
  String get mostFavourite => 'በጣም የተወደደ';

  @override
  String get upcoming => 'በቅርብ የሚመጣ';

  @override
  String get topManga => 'ምርጥ ማንጋ';

  @override
  String get topManhwa => 'ምርጥ ማንህዋ';

  @override
  String get topManhua => 'ምርጥ ማንሁዋ';

  @override
  String get topNovels => 'ምርጥ ኖቭሎች';

  @override
  String get topOneShots => 'ምርጥ ዋን-ሾቶች';

  @override
  String get trendingMoviesToday => 'ዛሬ በመታየት ላይ ያሉ ፊልሞች';

  @override
  String get trendingShowsToday => 'ዛሬ በመታየት ላይ ያሉ ሾዎች';

  @override
  String get trendingMoviesWeek => 'በዚህ ሳምንት በመታየት ላይ ያሉ ፊልሞች';

  @override
  String get trendingShowsWeek => 'በዚህ ሳምንት በመታየት ላይ ያሉ ሾዎች';

  @override
  String get mostWatchedMoviesMonth => 'በዚህ ወር በብዛት የታዩ ፊልሞች';

  @override
  String get mostWatchedShowsMonth => 'በዚህ ወር በብዛት የታዩ ሾዎች';

  @override
  String get trendingThisWeek => 'በዚህ ሳምንት በመታየት ላይ';

  @override
  String get mostWatchedThisMonth => 'በዚህ ወር በብዛት የታዩ';

  @override
  String get repoLinksAdded => 'የማከማቻ ሊንኮች በተሳካ ሁኔታ ተጨምረዋል!';

  @override
  String repoLinkConfirm(String url) {
    return 'ይህ ማከማቻ ይታከል?\n\n$url\n\nከምታምኗቸው ምንጮች ብቻ ማከማቻዎችን ያክሉ።';
  }

  @override
  String get errorGettingAnilistData => 'ከAniList ዳታ ማግኘት ላይ ስህተት።';

  @override
  String get navInfo => 'መረጃ';

  @override
  String get navComments => 'አስተያየቶች';

  @override
  String get playerNotAvailable => 'ማጫወቻው እስካሁን አይገኝም';

  @override
  String deepLinkInitialError(String error) {
    return 'የመጀመሪያውን ዲፕ ሊንክ በማግኘት ላይ ስህተት፦ $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'ሊንክ በመክፈት ላይ ስህተት፦ $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ይህ ሊንክ መከፈት አይችልም፦ $link';
  }

  @override
  String linkOpenError(String error) {
    return 'ሊንክ በመክፈት ላይ ስህተት፦ $error';
  }

  @override
  String get forReleasingTitles => 'በአሁኑ ጊዜ ለሚለቀቁ ርዕሶች';

  @override
  String get progress => 'እድገት';

  @override
  String get notes => 'ማስታወሻዎች';

  @override
  String serviceNotFound(String id) {
    return 'አገልግሎት \"$id\" አልተገኘም';
  }

  @override
  String get glassEffectEnabled => 'የብርጭቆ ውጤት በርቷል';

  @override
  String get glassEffectDisabled => 'የብርጭቆ ውጤት ጠፍቷል';

  @override
  String get materialYouEnabled => 'Material You በርቷል';

  @override
  String get materialYouDisabled => 'Material You ጠፍቷል';

  @override
  String get darkModeEnabled => 'የጨለማ ሁነታ በርቷል';

  @override
  String get darkModeDisabled => 'የጨለማ ሁነታ ጠፍቷል';

  @override
  String get animeList => 'የአኒሜ ዝርዝር';

  @override
  String get mangaList => 'የማንጋ ዝርዝር';

  @override
  String ownerAnimeList(String owner) {
    return 'የ$owner አኒሜ ዝርዝር';
  }

  @override
  String ownerMangaList(String owner) {
    return 'የ$owner ማንጋ ዝርዝር';
  }

  @override
  String get loadingList => 'ዝርዝር በመጫን ላይ';

  @override
  String get earlier => 'ከዚህ በፊት';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ከ$count ቀናት በፊት',
      one: 'ከ1 ቀን በፊት',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ከ$count ሰዓታት በፊት',
      one: 'ከ1 ሰዓት በፊት',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ከ$count ደቂቃዎች በፊት',
      one: 'ከ1 ደቂቃ በፊት',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'ከ$count ደ በፊት';
  }

  @override
  String hoursAgoShort(int count) {
    return 'ከ$count ሰ በፊት';
  }

  @override
  String daysAgoShort(int count) {
    return 'ከ$count ቀ በፊት';
  }

  @override
  String weeksAgoShort(int count) {
    return 'ከ$count ሳ በፊት';
  }

  @override
  String get couldntLoadSource => 'ይህን ምንጭ መጫን አልተቻለም';

  @override
  String get followers => 'ተከታዮች';

  @override
  String couldntLoadTitle(String title) {
    return '$titleን መጫን አልተቻለም';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ይህን መገለጫ መጫን አልተቻለም';

  @override
  String get profile => 'መገለጫ';

  @override
  String get feed => 'ፊድ';

  @override
  String get stats => 'ስታቲስቲክስ';

  @override
  String get received => 'የደረሱ';

  @override
  String get sent => 'የተላኩ';

  @override
  String get global => 'አለም አቀፍ';

  @override
  String get couldntLoadPage => 'ይህን ገጽ መጫን አልተቻለም';

  @override
  String get couldntLoadAllDetails => 'ሁሉንም ዝርዝሮች መጫን አልተቻለም';

  @override
  String get series => 'ተከታታይ';

  @override
  String get studios => 'ስቱዲዮዎች';

  @override
  String get users => 'ተጠቃሚዎች';

  @override
  String repositoriesTitle(String type) {
    return '$type ማከማቻዎች';
  }

  @override
  String get repositoryUrl => 'የማከማቻ URL';

  @override
  String get downloadingRepository => 'ማከማቻ በማውረድ ላይ…';

  @override
  String get noRepositories => 'ምንም ማከማቻ አልተጨመረም';

  @override
  String repoExtensionsCount(String count) {
    return '$count ኤክስቴንሽኖች';
  }

  @override
  String get searchExtensions => 'ኤክስቴንሽኖችን ፈልግ...';

  @override
  String deletePluginTitle(String name) {
    return '$name ይሰረዝ?';
  }

  @override
  String get deletePluginMessage => 'ይህን ፕለጊን መሰረዝ እርግጠኛ ነህ?';

  @override
  String pluginDeleted(String name) {
    return '$name ተሰርዟል';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name በተዋቀረው ማከማቻ ውስጥ አይገኝም';
  }

  @override
  String get pluginFetchFailed => 'የፕለጊን መረጃ ማምጣት አልተሳካም';

  @override
  String installPluginTitle(String name) {
    return '$name ጫን';
  }

  @override
  String sizeLabel(String size) {
    return 'መጠን፦ $size';
  }

  @override
  String get installedState => 'ተጭኗል';

  @override
  String updatePluginTitle(String name) {
    return 'አዘምን $name';
  }

  @override
  String get errorLabel => 'ስህተት፦';

  @override
  String get stackTraceDetails => 'ዝርዝሮች (Stack Trace)';

  @override
  String get shareLogFile => 'የሎግ ፋይል አጋራ';

  @override
  String get copyLogs => 'ሎጎችን ቅዳ';

  @override
  String noListToEdit(String service) {
    return '$service የሚስተካከል ዝርዝር የለውም';
  }

  @override
  String get couldNotReadFile => 'ያንን ፋይል ማንበብ አልተቻለም';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime አኒሜና $manga ማንጋ ገብተዋል';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count አስቀድሞ ነበሩ';
  }

  @override
  String get airingNow => 'አሁን በመተላለፍ ላይ';

  @override
  String get topRatedMovies => 'ከፍተኛ ደረጃ የተሰጣቸው ፊልሞች';

  @override
  String get koreanDramas => 'የኮሪያ ድራማዎች';

  @override
  String get chineseDramas => 'የቻይና ድራማዎች';

  @override
  String get japaneseDramas => 'የጃፓን ድራማዎች';

  @override
  String get thaiDramas => 'የታይ ድራማዎች';

  @override
  String get turkishDramas => 'የቱርክ ድራማዎች';

  @override
  String get miniSeries => 'አጫጭር ተከታታዮች';

  @override
  String get topRatedShows => 'ከፍተኛ ደረጃ የተሰጣቸው ሾዎች';

  @override
  String get recommendedSection => 'የሚመከር';

  @override
  String get syncRow => 'ዝርዝሮችን አመሳስል';

  @override
  String get syncRowDesc => 'የአንድ አገልግሎት ዝርዝር በሌሎች መለያዎችህ ላይ ኮፒ አድርግ';

  @override
  String get syncTitle => 'አመሳስል';

  @override
  String get syncMainService => 'ዋና አገልግሎት';

  @override
  String get syncMainServiceDesc =>
      'ዝርዝሩ የእውነት ምንጭ ነው፤ ሌሎች የገቡባቸው አገልግሎቶች ሁሉ እንዲመሳሰሉ ይዘመናሉ';

  @override
  String get syncAuto => 'ራስ-ሰር ማመሳሰል';

  @override
  String get syncAutoDesc => 'መተግበሪያው ሲከፈትና በየ30 ደቂቃው በጀርባ አምጣና አመሳስል';

  @override
  String get syncAddMissing => 'የጎደሉ ግቤቶችን ጨምር';

  @override
  String get syncAddMissingDesc => 'ሌላኛው አገልግሎት እስካሁን የሌሉትን ግቤቶችም ጨምር';

  @override
  String syncServiceOn(String name) {
    return 'ከ$name ጋር አስምር';
  }

  @override
  String get syncDelete => 'ዋናው አገልግሎት የሌለውን ሰርዝ';

  @override
  String get syncDeleteDesc =>
      'በዋናው ዝርዝር ውስጥ ከሌሉ ሌሎች አገልግሎቶች ግቤቶችን ያስወግዱ። ከርዕስ ጋር ሊመሳሰሉ የሚችሉ ግቤቶች ብቻ ይወገዳሉ፣ ስለዚህ እንደ ሲምክል ፊልሞች እና ተከታታይ ነገሮች ያሉ ነገሮች ይቆያሉ።';

  @override
  String get syncDeleteTitle => 'ግቤቶች ይሰረዙ?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ግቤቶች',
      one: '1 መግቢያ',
    );
    return '$_temp0 በዋና ዝርዝርዎ ውስጥ የሌሉት ከሌሎቹ አገልግሎቶች ይሰረዛሉ። ይህ ሊቀለበስ አይችልም።';
  }

  @override
  String get syncDeleteAction => 'ሰርዝ';

  @override
  String get syncToDelete => 'ለመሰረዝ';

  @override
  String get syncDeletedNote => 'ይሰረዛል';

  @override
  String syncWillRemove(int count, String name) {
    return '$count ከ$name ይሰረዛል';
  }

  @override
  String get syncOnlyForward => 'የላቀ እድገትን አቆይ';

  @override
  String get syncOnlyForwardDesc => 'አስቀድሞ ወደፊት ያለ አገልግሎትን እድገት አታሳንስ';

  @override
  String get animePlanetWontWatch => 'አይመለከትም።';

  @override
  String get animePlanetWontRead => 'አያነብም።';

  @override
  String get animePlanetAlreadyOnList => 'ቀድሞውኑ በዚህ ዝርዝር ውስጥ';

  @override
  String get animePlanetNewList => 'አዲስ ዝርዝር ስም';

  @override
  String get syncPrivate => 'የግል ግቤቶች';

  @override
  String get syncPrivateDesc =>
      'በሚስጥር በሚይዙት ግቤቶች ምን እንደሚደረግ። የግል አማራጭ ያለው አገልግሎት ግላዊ ያደርጋቸዋል; ሌሎች በአደባባይ ያሳዩዋቸው ነበር።';

  @override
  String get syncPrivateModeAsk => 'ጠይቅ';

  @override
  String get syncPrivateModeSync => 'አመሳስላቸው';

  @override
  String get syncPrivateModeSkip => 'ዝለልባቸው';

  @override
  String get syncPrivateTitle => 'የግል ግቤቶች';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ግቤቶች የግል ናቸው።',
      one: '1 መግቢያ የግል ነው።',
    );
    return '$_temp0. የግል አማራጭ ያላቸው አገልግሎቶች (አኒሊስት፣ ኪትሱ፣ ማንጋባካ) እንደ ግል ያገኛቸዋል። ሌሎች አገልግሎቶች ምንም የግል አማራጭ የላቸውም እና በይፋ ያሳያሉ። ያመሳስሏቸው? መልስህ ይታወሳል; በማመሳሰል አማራጮች ውስጥ ይቀይሩት።';
  }

  @override
  String get syncPrivateInclude => 'አመሳስላቸው';

  @override
  String get syncPrivateSkip => 'ዝለልባቸው';

  @override
  String get syncFetch => 'አምጣ';

  @override
  String get syncFetchAgain => 'እንደገና አምጣ';

  @override
  String get syncAll => 'ሁሉንም አመሳስል';

  @override
  String get syncStop => 'አቁም';

  @override
  String get syncResume => 'ቀጥል';

  @override
  String get syncNothingToSync => 'ይህ አገልግሎት ለዚህ ዓይነት ሊመሳሰል አይችልም';

  @override
  String get syncNoTargets => 'የምታመሳስለው ሌላ አገልግሎት ለመምረጥ ግባ';

  @override
  String get syncLoadingMap => 'የID ካርታ በመጫን ላይ';

  @override
  String get syncComparing => 'ዝርዝሮችን በማወዳደር ላይ';

  @override
  String get syncIntro =>
      'ዋና አገልግሎት ምረጥና አምጣን ተጫን። እያንዳንዱ አገልግሎት ለዝርዝርህ አንድ ጊዜ ይጠየቃል፣ ከዚያ ከዋናው ጋር ይወዳደራል።';

  @override
  String get syncStateSynced => 'ተመሳስሏል';

  @override
  String get syncStateOutdated => 'አልተመሳሰለም';

  @override
  String get syncStateMissing => 'በዝርዝር ውስጥ የለም';

  @override
  String get syncStateUnmapped => 'አልተገናኘም';

  @override
  String syncPaused(String time) {
    return 'የጥያቄ ገደቡን በመጠበቅ ላይ፣ በ$time ይቀጥላል';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count በ$name ላይ ብቻ ናቸው፣ አልተነኩም';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done ከ$total';
  }

  @override
  String get syncNothingHere => 'የሚታይ ነገር የለም';

  @override
  String syncLimits(int used, int max, String window) {
    return 'በዚህ $window ከ$max ጥያቄዎች $used ተጠቅመዋል';
  }

  @override
  String get syncMinute => 'ደቂቃ';

  @override
  String get syncDay => 'ቀን';

  @override
  String get syncNotInList => 'ገና በዝርዝር ውስጥ የለም';

  @override
  String get syncCleared => 'እቅድ ጸድቷል';

  @override
  String get syncClear => 'አጽዳ';

  @override
  String get syncOptions => 'አማራጮች';

  @override
  String get syncShared => 'ግቤቱን ከሌላ ንጥል ጋር ይጋራል';

  @override
  String syncNotFound(String service) {
    return 'በ$service ላይ አልተገኘም';
  }

  @override
  String syncService(String service, int count) {
    return '$service አመሳስል ($count)';
  }

  @override
  String get syncOnEdit => 'ለውጦችን ወዲያውኑ አመሳስል';

  @override
  String get syncOnEditDesc =>
      'እያንዳንዱን የእድገት ዝማኔና የዝርዝር አርትዖት ወዲያውኑ ወደ ሌሎች የገባህባቸው አገልግሎቶች ላክ';

  @override
  String syncRemoved(String services) {
    return 'ከ$services ተወግዷል';
  }

  @override
  String syncPushed(String services) {
    return 'ወደ $services ተመሳስሏል';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'የጥያቄ ገደብ ደርሷል፣ ከትንሽ ቆይታ በኋላ ሞክር';

  @override
  String get syncAhead => 'ወደፊት ያለው';

  @override
  String get syncAheadDesc =>
      'ሁለት መንገድ፦ ለእያንዳንዱ ርዕስ ከፍተኛ እድገት ያለው ግቤት ያሸንፋል እና ወደ ሌሎች አገልግሎቶችህ ሁሉ ይገለበጣል';

  @override
  String syncAheadFrom(String service) {
    return 'ከ$service';
  }

  @override
  String get syncConfirm => 'ከማመሳሰል በፊት ገምግም';

  @override
  String get syncConfirmDesc =>
      'ሁሉንም አመሳስል የሚቀይረውንና ምን ያህል ጥያቄዎች እንደሚያስፈልግ አሳይ';

  @override
  String get syncPreviewTitle => 'ለማመሳሰል ዝግጁ';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates ዝማኔዎች፣ $adds ለመጨመር';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'ወደ $count ጥያቄዎች';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count መታወቂያዎች መጀመሪያ ፍለጋ ያስፈልጋቸዋል';
  }

  @override
  String get syncPreviewNothing => 'የሚቀየር ነገር የለም';

  @override
  String get syncStart => 'ጀምር';

  @override
  String get syncRetry => 'እንደገና ሞክር';

  @override
  String get syncSkip => 'ይህን ንጥል እለፍ';

  @override
  String get syncInclude => 'ይህን ንጥል እንደገና አካትት';

  @override
  String get syncSkippedLabel => 'የተላለፈ';

  @override
  String get syncChanges => 'ልዩነቶች';

  @override
  String get syncChangeStatus => 'ሁኔታ';

  @override
  String get syncChangeProgress => 'እድገት';

  @override
  String get syncChangeScore => 'ውጤት';

  @override
  String get syncChangeDates => 'ቀኖች';

  @override
  String get syncChangeRepeat => 'የድጋሚ ምልከታ ቆጠራ';

  @override
  String get syncFailedReason => 'ለምን አልተሳካም';

  @override
  String get syncSkippedHint => 'የተላለፉ ንጥሎች እንደገና ቢመጡም አይነኩም';

  @override
  String get commentsRules => 'የአስተያየት ደንቦች';

  @override
  String get commentsRulesBody =>
      'ማንኛውንም ደንብ ከጣስክ = ትባረራለህ\n\n1. ዘረኝነት፣ መድልኦ ወይም የጥላቻ ንግግር የለም\n2. ስፓም ወይም ራስን ማስተዋወቅ የለም\n3. NSFW ይዘት በፍጹም የለም\n4. እንግሊዝኛ ብቻ፣ ያለ ልዩነት\n5. ሌላ ሰውን መምሰል፣ ትንኮሳ ወይም ስድብ የለም\n6. ሕገ ወጥ ይዘትም ሆነ ለየትኛውም ደጋፊ ማኅበረሰብ ከፍተኛ ንቀት የለም\n7. ማከማቻዎችን ወይም ኤክስቴንሽኖችን አትጠይቅ ወይም አታጋራ\n8. አጥፊ በአጥፊ መለያና ማስጠንቀቂያ ብቻ\n9. በታዳጊ ገጸ ባህሪያት ላይ ወሲባዊ ወይም ተገቢ ያልሆነ አስተያየት የለም\n10. ስህተት ከሆነ አትለጥፈው!';

  @override
  String get commentsRulesAccept => 'ገባኝ';

  @override
  String get commentsSortNewest => 'አዲሱ';

  @override
  String get commentsSortOldest => 'ቀዳሚው';

  @override
  String get commentsSortHighest => 'ከፍተኛ ደረጃ የተሰጠው';

  @override
  String get commentsSortLowest => 'ዝቅተኛ ደረጃ የተሰጠው';

  @override
  String commentsEpisodeShort(int number) {
    return 'ክፍል $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ምዕ $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'በክፍል አጣራ';

  @override
  String get commentsFilterChapterTitle => 'በምዕራፍ አጣራ';

  @override
  String get commentsFilterTagTitle => 'የክፍል ወይም የምዕራፍ ቁጥር አስገባ';

  @override
  String get commentsFilterHint => 'ቁጥር';

  @override
  String get commentsFilterApply => 'አጣራ';

  @override
  String get commentsFilterClear => 'ሁሉንም አሳይ';

  @override
  String get commentsPlaceholder => 'አስተያየት ጨምር…';

  @override
  String commentsReplyingTo(String name) {
    return 'ለ$name በመመለስ ላይ';
  }

  @override
  String get commentsSend => 'ላክ';

  @override
  String get commentsTagButton => 'መለያ';

  @override
  String commentsTagTitle(String label) {
    return 'መለያ $label (አማራጭ)';
  }

  @override
  String get commentsTagEpisode => 'ክፍል';

  @override
  String get commentsTagChapter => 'ምዕራፍ';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label ቁጥር';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'መለያው ከጠቅላላው ($total) መብለጥ አይችልም';
  }

  @override
  String get commentsNoTag => 'መለያ የለም';

  @override
  String get commentsSpoiler => 'አጥፊ';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIFs ፈልግ';

  @override
  String get commentsGifEmpty => 'ምንም GIF አልተገኘም';

  @override
  String get commentsEmptyText => 'አስተያየት ባዶ መሆን አይችልም';

  @override
  String get commentsBannedYou => 'አስተያየት እንዳትሰጥ ታግደሃል';

  @override
  String get commentsEdited => 'አስተያየት ተስተካክሏል';

  @override
  String get commentsDeleted => 'አስተያየት ተሰርዟል';

  @override
  String get commentsDeletedPlaceholder => '[ተሰርዟል]';

  @override
  String get commentsReported => 'አስተያየት ሪፖርት ተደርጓል';

  @override
  String get commentsUserBanned => 'ተጠቃሚው ታግዷል';

  @override
  String get commentsReport => 'ሪፖርት አድርግ';

  @override
  String get commentsReportAsk => 'ይህ አስተያየት ለአወያዮች ሪፖርት ይደረግ?';

  @override
  String get commentsDelete => 'ሰርዝ';

  @override
  String get commentsDeleteAsk => 'ይህ አስተያየት ለሁሉም ይወገዳል።';

  @override
  String get commentsBan => 'እገድ';

  @override
  String get commentsBanAsk => 'ይህ ተጠቃሚ ከአስተያየት ይታገድ?';

  @override
  String get commentsCopy => 'ቅዳ';

  @override
  String get commentsViewReply => '1 ምላሽ ተመልከት';

  @override
  String commentsViewReplies(int count) {
    return '$count ምላሾች ተመልከት';
  }

  @override
  String get commentsHideReplies => 'ምላሾችን ደብቅ';

  @override
  String get commentsLoadMore => 'ተጨማሪ አስተያየቶችን ጫን';

  @override
  String get commentsEmpty => 'እስካሁን አስተያየት የለም። የመጀመሪያው ሁን!';

  @override
  String get commentsEmptyFiltered => 'ለዚህ ማጣሪያ አስተያየት የለም';

  @override
  String get commentsSignIn => 'አስተያየቶችን ለማንበብና ለመጻፍ በAniList ግባ';

  @override
  String get commentsSignInMessage =>
      'አስተያየቶች በሁሉም አገልግሎቶች መካከል የጋራ ናቸው እና የAniList መለያህን ይጠቀማሉ።';

  @override
  String get commentsUnavailable => 'ለዚህ ርዕስ አስተያየቶች አይገኙም';

  @override
  String get commentsUnavailableMessage => 'ከAniList ግቤት ጋር ማገናኘት አልተቻለም።';

  @override
  String get commentsDisabled => 'አስተያየቶች ጠፍተዋል';

  @override
  String get commentsDisabledMessage => 'በቅንብሮች › አጠቃላይ ውስጥ መልሰህ ማብራት ትችላለህ።';

  @override
  String get commentsOffline => 'አስተያየቶችን መጫን አልተቻለም';

  @override
  String get commentsSingleTitle => 'አንድ አስተያየት በማሳየት ላይ';

  @override
  String get commentsShowAll => 'ሁሉንም አስተያየቶች አሳይ';

  @override
  String get commentsSettingsHeader => 'አስተያየቶች';

  @override
  String get commentsSettingEnabled => 'አስተያየቶች';

  @override
  String get commentsSettingEnabledDesc =>
      'በርዕሶች ላይ የአስተያየቶች ታብ አሳይና በAniList መለያህ ወደ አስተያየት ሰርቨሩ ግባ';

  @override
  String get commentsSettingAlerts => 'የምላሽ ማሳወቂያዎች';

  @override
  String get commentsSettingAlertsDesc => 'ሰው ለአስተያየቶቼ ሲመልስ አሳውቀኝ';

  @override
  String get commentsNoticeReplyTitle => 'አዲስ የአስተያየት ምላሽ';

  @override
  String commentsNoticeReply(String name) {
    return '$name ለአስተያየትህ መልሷል';
  }

  @override
  String get commentsNoticeWarningTitle => 'ማስጠንቀቂያ ደርሶሃል';

  @override
  String get commentsNoticeWarning => 'በአስተያየቶችህ የበለጠ አስተውል';

  @override
  String get commentsNoticeUpdateTitle => 'ከDantotsu የመጣ ዝማኔ';

  @override
  String get barcodeTitle => 'ባርኮድ ስካን አድርግ';

  @override
  String get barcodeTooltip => 'ማንጋ ወይም ኖቭልን በባርኮዱ ፈልግ';

  @override
  String get barcodeIntro => 'ካሜራውን ወደ ቅጽ ጀርባ ባርኮድ አመልክት ወይም ISBN ተይብ።';

  @override
  String get barcodeIntroManual => 'ከቅጹ ጀርባ ባርኮድ በላይ የታተመውን ISBN ተይብ።';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'ይህ ትክክለኛ ISBN አይደለም';

  @override
  String barcodeNotFound(String isbn) {
    return 'ለ$isbn ምንም መጽሐፍ አልተገኘም';
  }

  @override
  String get barcodeCameraDenied =>
      'ካሜራው አይገኝም። የካሜራ መዳረሻ ፍቀድ ወይም በምትኩ ISBN ተይብ።';

  @override
  String get themesTitle => 'መክፈቻዎችና መዝጊያዎች';

  @override
  String get themesPlayVideo => 'ቪዲዮ አጫውት';

  @override
  String get themesPlayAudio => 'ድምጽ ብቻ አጫውት';

  @override
  String get themesOpenSite => 'በAnimeThemes ክፈት';

  @override
  String get themesCredit => 'ከAnimeThemes የመጡ ጭብጦች';

  @override
  String get themesVersions => 'ስሪቶች';

  @override
  String get sauceTitle => 'ምንጩን አግኝ';

  @override
  String get sauceIntro => 'የማንጋ ገጽ ወይም ሥዕል ስቀል፣ ወይም ሊንኩን ለጥፍና ከየት እንደመጣ ፈልግ።';

  @override
  String get sauceKeyTitle => 'SauceNAO API ቁልፍ';

  @override
  String get sauceKeyHint => 'አማራጭ፣ የዕለታዊ ፍለጋ ገደቡን ይጨምራል';

  @override
  String get sauceKeyDesc => 'በsaucenao.com/user.php ነጻ ቁልፍ አግኝ';

  @override
  String get sauceOpen => 'ምንጩን ክፈት';

  @override
  String get sauceCredit => 'የምስል ፍለጋ በSauceNAO';

  @override
  String get sauceEmpty => 'ምንም አልተገኘም';

  @override
  String get sauceTooltip => 'የማንጋ ገጽ ወይም ሥዕል ምንጭ አግኝ';

  @override
  String get trendzTitle => 'የአኒሜ ቻርቶች';

  @override
  String get trendzAnime => 'አኒሜ';

  @override
  String get trendzFemale => 'ሴት ገጸ ባህሪያት';

  @override
  String get trendzMale => 'ወንድ ገጸ ባህሪያት';

  @override
  String get trendzCouple => 'ጥንዶች';

  @override
  String get trendzCredit => 'ሳምንታዊ ቻርቶች በAniTrendz';

  @override
  String get trendzNew => 'አዲስ';

  @override
  String get trendzEmpty => 'ቻርቱ ባዶ ነው';

  @override
  String get shareCard => 'ካርድ አጋራ';

  @override
  String get shareCardList => 'የዝርዝር ካርድ አጋራ';

  @override
  String get shareCardSaved => 'ካርዱ ተቀምጧል';

  @override
  String get shareCardFailed => 'ካርዱን መሥራት አልተቻለም';

  @override
  String get shareCardListEmpty => 'ዝርዝርህ ለማጋራት የሚሆን ምንም የለውም';

  @override
  String get shareCardTop => 'የእኔ ምርጥ ምርጫዎች';

  @override
  String themesEpisodes(String eps) {
    return 'ክፍሎች $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ተዛማጅ';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'ሳምንት $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count ድምጾች';
  }

  @override
  String trendzPeak(String rank) {
    return 'ከፍተኛ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'በምርጥ አስሩ ውስጥ $count ሳምንታት';
  }

  @override
  String get imageSearchTitle => 'በምስል ፈልግ';

  @override
  String get imageSearchTooltip => 'አኒሜን በስክሪንሾት ፈልግ';

  @override
  String get imageSearchIntro =>
      'ስክሪንሾት ምረጥ ወይም የምስል ሊንክ ለጥፍ፣ trace.moe ክፍሉንና ቅጽበቱን ያገኝልሃል።';

  @override
  String get imageSearchPick => 'ምስል ምረጥ';

  @override
  String get imageSearchLinkHint => 'የምስል ሊንክ ለጥፍ';

  @override
  String get imageSearchGo => 'ፈልግ';

  @override
  String get imageSearchEmpty => 'ምንም አልተገኘም';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'ክፍል $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'በ$time';
  }

  @override
  String get imageSearchPreview => 'የቅድመ እይታ ክሊፕ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ተዛማጅ';
  }

  @override
  String get imageSearchCredit => 'በtrace.moe የተጎላበተ';

  @override
  String get imageSearchOpenFailed => 'ይህን ርዕስ መክፈት አልተቻለም';

  @override
  String get groups => 'ቡድኖች';

  @override
  String get groupsYours => 'ቡድኖችህ';

  @override
  String get groupsPopular => 'ተወዳጅ';

  @override
  String get groupsNew => 'አዲስ';

  @override
  String get groupsFeatured => 'ተለይተው የቀረቡ';

  @override
  String get groupsSearch => 'ቡድኖችን ፈልግ';

  @override
  String get groupsAll => 'ሁሉም';

  @override
  String get groupsEmpty => 'ምንም ቡድን አልተገኘም';

  @override
  String get groupsEmptyYours => 'እስካሁን ምንም ቡድን አልተቀላቀልክም';

  @override
  String get groupsSignIn => 'የተቀላቀልካቸውን ቡድኖች ለማየት ግባ';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count አባላት',
      one: '1 አባል',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ተቀላቀል';

  @override
  String get groupsJoined => 'ተቀላቅለሃል';

  @override
  String get groupsLeave => 'ቡድኑን ልቀቅ';

  @override
  String get groupsLeaveAsk => 'የዚህን ቡድን ልጥፎች በፊድህ ውስጥ ማየት ታቆማለህ።';

  @override
  String get groupsJoinFailed => 'ይህን ቡድን መቀላቀል አልተቻለም፣ በግብዣ ብቻ ሊሆን ይችላል';

  @override
  String get groupsLeaveFailed => 'ይህን ቡድን መልቀቅ አልተቻለም';

  @override
  String get groupsPosts => 'ልጥፎች';

  @override
  String get groupsMembersTab => 'አባላት';

  @override
  String get groupsAbout => 'ስለ';

  @override
  String get groupsRules => 'ደንቦች';

  @override
  String get groupsPrivacyOpen => 'ክፍት';

  @override
  String get groupsPrivacyRestricted => 'የተገደበ';

  @override
  String get groupsPrivacyClosed => 'ዝግ';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'አድሚን';

  @override
  String get groupsRoleMod => 'ሞድ';

  @override
  String get groupsCouldntLoad => 'ይህን ቡድን መጫን አልተቻለም';

  @override
  String get groupsNewPost => 'ለቡድኑ ለጥፍ';

  @override
  String get groupsPostHint => 'ከቡድኑ ጋር የሆነ ነገር አጋራ';

  @override
  String get groupsOpenInBrowser => 'በብራውዘር ክፈት';

  @override
  String get groupsCategory => 'ምድብ';

  @override
  String get groupsLanguage => 'ቋንቋ';

  @override
  String get groupsCreated => 'የተፈጠረው';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count መሪዎች',
      one: '1 መሪ',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'ግላዊነት';

  @override
  String get notificationsAll => 'ሁሉም';

  @override
  String get notificationsAiring => 'በመተላለፍ ላይ';

  @override
  String get notificationsMedia => 'አዲስ ርዕሶች';

  @override
  String get notificationsReplies => 'ምላሾች';

  @override
  String get notificationsMentions => 'መጠቀሶች';

  @override
  String get notificationsMessages => 'መልዕክቶች';

  @override
  String get notificationsLikes => 'ላይኮች';

  @override
  String get notificationsFollows => 'ተከታዮች';

  @override
  String get notificationsNoServices => 'ማሳወቂያ ያለው የገባህበት አገልግሎት የለም';

  @override
  String get notificationsNoServicesMessage =>
      'ማሳወቂያ ወደሚልክ አገልግሎት ግባና እዚህ ይታያሉ።';

  @override
  String get notificationsEmptyKind => 'በዚህ ምድብ ውስጥ እስካሁን ምንም የለም';

  @override
  String get notificationsCommentsEmpty => 'የአስተያየት ማሳወቂያዎች የሉም';

  @override
  String get notificationsCommentsEmptyMessage =>
      'ለአስተያየቶችህ የሚሰጡ ምላሾችና ከDantotsu የሚመጡ ማስታወቂያዎች እዚህ ይታያሉ።';

  @override
  String get notificationsSettings => 'የማሳወቂያ ቅንብሮች';

  @override
  String get notificationsPollTitle => 'አዳዲስ ማሳወቂያዎችን ፈልግ';

  @override
  String notificationsPollDesc(int minutes) {
    return 'መተግበሪያው ክፍት ሲሆን በየ$minutes ደቂቃው';
  }

  @override
  String get notificationsNotifyAbout => 'የማሳውቀኝ ነገር';

  @override
  String get notificationsCommentsHeader => 'የአስተያየት ማሳወቂያዎች';

  @override
  String systemNotificationsDescFor(String service) {
    return 'መተግበሪያው እየሰራ እያለ ላልተነበበ ለእያንዳንዱ $service ማሳወቂያ የሲስተም ማሳወቂያ አሳይ።';
  }

  @override
  String get notificationsTestSent => 'የሙከራ ማሳወቂያ ተልኳል';

  @override
  String get notificationsTestDenied =>
      'ለDartotsu ማሳወቂያዎች አልተፈቀዱም። በሲስተም ቅንብሮች ውስጥ አብራቸው።';

  @override
  String get notificationsTestHint => 'የሙከራ ማሳወቂያ ለመላክ ተጭነህ ያዝ';

  @override
  String get notificationsTestSample => 'ይህ የሙከራ ማሳወቂያ ነው';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name በ$media ውስጥ ለአስተያየትህ መልሷል';
  }

  @override
  String get imageSearchNotLink => 'ይህ ሊንክ አይመስልም';

  @override
  String get imageSearchQuota => 'የፍለጋ ኮታ አልፏል';

  @override
  String get imageSearchBusy => 'ብዙ ጥያቄዎች፣ ከትንሽ ቆይታ በኋላ ሞክር';

  @override
  String imageSearchFailed(int code) {
    return 'ፍለጋ አልተሳካም ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count አዳዲስ ማሳወቂያዎች';
  }

  @override
  String get reactionsTitle => 'ምላሾች';

  @override
  String get reactionsNeedEntry => 'ከመሰማትህ በፊት ይህን ርዕስ ወደ ዝርዝርህ ጨምር';

  @override
  String get reactionsAdd => 'ምላሽ ጨምር';

  @override
  String get reactionsHint => 'ምን ታስባለህ? (አጭርና ያለ አጥፊ)';

  @override
  String get reactionsPost => 'ለጥፍ';

  @override
  String get reactionsFailed => 'ምላሹን ማዘመን አልተቻለም';

  @override
  String get settingsWatch => 'ተመልከትና አንብብ';

  @override
  String get settingsWatchDesc => 'የክፍል ዝርዝሮች፣ የምንጭ ማዛመድና የክፍል ዝርዝሮች';

  @override
  String get watchSettingsLayout => 'የክፍል ዝርዝር';

  @override
  String get watchSettingsSources => 'ምንጮች';

  @override
  String get watchSettingsMetadata => 'የክፍል ዝርዝሮች';

  @override
  String get watchLayout => 'አቀማመጥ';

  @override
  String get watchListView => 'ዝርዝር';

  @override
  String get watchGridView => 'ፍርግርግ';

  @override
  String get watchCompactView => 'ጥቅጥቅ';

  @override
  String get watchDefaultLayoutDesc =>
      'ለርዕስ እስክትቀይር ድረስ ክፍሎችና ምዕራፎች እንዴት እንደሚደረደሩ';

  @override
  String get watchChunkSize => 'የክልል መጠን';

  @override
  String get watchChunkSizeDesc => 'እያንዳንዱ የክልል ታብ ምን ያህል ክፍሎች ወይም ምዕራፎች ይይዛል';

  @override
  String get watchShowDescription => 'መግለጫዎችን አሳይ';

  @override
  String get watchShowDescriptionDesc =>
      'በዝርዝር አቀማመጥ ውስጥ የክፍሉን ማጠቃለያ ከእያንዳንዱ ርዕስ በታች አሳይ';

  @override
  String get watchShowFiller => 'ፊለር ክፍሎችን አሳይ';

  @override
  String get watchShowFillerDesc => 'እንደ ፊለር የተሰየሙ ክፍሎችን ለመደበቅ አጥፋ';

  @override
  String get watchBlurUnwatched => 'የአጥፊ ድንክዬዎችን ደብቅ';

  @override
  String get watchBlurUnwatchedDesc => 'ገና ያልተመለከትካቸውን ክፍሎች ድንክዬ አደብዝዝ';

  @override
  String get watchResumeShelf => 'የመቀጠል መደርደሪያ';

  @override
  String get watchResumeShelfDesc => 'በመነሻ ላይ የመቀጠል ረድፉን አሳይ';

  @override
  String get watchMarkOnLongPress => 'ተጭኖ መያዝ እድገት ያመለክታል';

  @override
  String get watchMarkOnLongPressDesc =>
      'ክፍል ወይም ምዕራፍ ተጭነህ ያዝና እንደታየ ወይም እንዳልታየ ምልክት አድርግ';

  @override
  String get watchMatching => 'የምንጭ ማዛመድ';

  @override
  String get watchMatchingDesc =>
      '\"በጣም የቀረበ\" ምርጡን የፍለጋ ውጤት ይወስዳል። \"ትክክለኛ ብቻ\" ተቀራራቢ ተመሳሳይ ርዕስ ብቻ ይቀበላል፣ የቀረውን ለአንተ ይተዋል።';

  @override
  String get watchMatchClosest => 'በጣም የቀረበ ተዛማጅ';

  @override
  String get watchMatchExact => 'ትክክለኛ ተዛማጅ ብቻ';

  @override
  String get watchMetadataDesc =>
      'የክፍል ርዕሶች፣ ማጠቃለያዎች፣ ድንክዬዎች፣ የስርጭት ቀኖችና የፊለር ምልክቶች ከየት እንደሚመጡ። ቅድሚያ ለማስቀመጥ ጎትት፤ እሴት ያለው የመጀመሪያው ምንጭ ያሸንፋል።';

  @override
  String get watchMetaAniZipDesc => 'የክፍል ርዕሶች፣ ማጠቃለያዎች፣ ምስሎችና የስርጭት ቀኖች';

  @override
  String get watchMetaKitsuDesc => 'የክፍል ርዕሶች፣ መግለጫዎችና ድንክዬዎች';

  @override
  String get watchMetaSimklDesc => 'የክፍል ርዕሶች፣ መግለጫዎች፣ ምስሎችና የስርጭት ቀኖች';

  @override
  String get watchMetaAniListDesc => 'የስትሪሚንግ ክፍል ርዕሶች፣ ድንክዬዎችና የስርጭት መርሐ ግብር';

  @override
  String get watchMetaTenraiDesc =>
      'የMyAnimeList ክፍል ርዕሶች፣ የስርጭት ቀኖች፣ ፊለርና ሪካፕ ምልክቶች በTenrai በኩል';

  @override
  String get watchClearMetadata => 'የክፍል ዝርዝሮችን አድስ';

  @override
  String get watchClearMetadataDesc => 'የተቀመጡ የክፍል ዝርዝሮችን እርሳና እንደገና ይምጡ';

  @override
  String get watchMetadataCleared => 'የክፍል ዝርዝሮች እንደገና ይመጣሉ';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ክፍሎች',
      one: '1 ክፍል',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ምዕራፎች',
      one: '1 ምዕራፍ',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'ክፍል $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'ምዕራፍ $number';
  }

  @override
  String get watchSearching => 'በመፈለግ ላይ…';

  @override
  String watchSearchingFor(String term) {
    return 'በመፈለግ ላይ፦ $term';
  }

  @override
  String watchSelected(String title) {
    return 'የተመረጠ፦ $title';
  }

  @override
  String watchFound(String title) {
    return 'ተገኝቷል፦ $title';
  }

  @override
  String get watchNothingFound => 'በዚህ ምንጭ ላይ ምንም አልተገኘም';

  @override
  String get watchSearchFailed => 'የምንጭ ፍለጋው አልተሳካም';

  @override
  String get watchLoadFailed => 'ዝርዝሩን መጫን አልተቻለም';

  @override
  String get watchSignInToTrack => 'እድገትህን ለመከታተል ግባ';

  @override
  String watchInstallSource(String action) {
    return '$action ለመጀመር ኤክስቴንሽን ጫን';
  }

  @override
  String get watchSourceMissing => 'ይህ ምንጭ አልተጫነም';

  @override
  String get watchWrongTitle => 'ርዕሱ ተሳስቷል?';

  @override
  String get watchSearchAgain => 'እንደገና ፈልግ';

  @override
  String watchSearchSource(String source) {
    return '$source ፈልግ';
  }

  @override
  String get watchSource => 'ምንጭ';

  @override
  String get sourceTags => 'መለያዎች';

  @override
  String get sourceTagsHint =>
      'ይህ ምንጭ ለምን እንደሆነ መለያ ይስጡ። አንድ ርዕስ መጀመሪያ ለእሱ መለያ የተደረገባቸውን ምንጮች ይዘረዝራል፣ በመቀጠል መለያ ያልተሰጣቸውን ይዘረዝራል። 18+ ምንጮች ለአዋቂዎች ርዕሶች ብቻ ያሳያሉ።';

  @override
  String get sourceTagAnime => 'አኒሜ';

  @override
  String get sourceTagMovies => 'ፊልሞች እና ተከታታይ';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'በመለያዎች ተደብቋል';

  @override
  String get watchOptions => 'አማራጮች';

  @override
  String get watchReverse => 'ቅደም ተከተል ገልብጥ';

  @override
  String get watchScanlators => 'ቡድኖች';

  @override
  String get watchResetOptions => 'እነዚህን አማራጮች ዳግም አስጀምር';

  @override
  String get watchContinue => 'ቀጥል';

  @override
  String get watchStart => 'ጀምር';

  @override
  String get watchPlay => 'አጫውት';

  @override
  String get watchRead => 'አንብብ';

  @override
  String get watchMarkWatched => 'እንደታየ ምልክት አድርግ';

  @override
  String get watchMarkUnwatched => 'እንዳልታየ ምልክት አድርግ';

  @override
  String get watchMarkRead => 'እንደተነበበ ምልክት አድርግ';

  @override
  String get watchMarkUnread => 'እንዳልተነበበ ምልክት አድርግ';

  @override
  String get watchFiller => 'ፊለር';

  @override
  String get watchRecap => 'ሪካፕ';

  @override
  String get watchNoEpisodes => 'ምንም ክፍል አልተገኘም';

  @override
  String get watchNoChapters => 'ምንም ምዕራፍ አልተገኘም';

  @override
  String get watchSourceTools => 'የምንጭ መሳሪያዎች';

  @override
  String get watchSourceSettings => 'የምንጭ ቅንብሮች';

  @override
  String get watchOpenWebView => 'በዌብ ቪው ክፈት';

  @override
  String get watchOpenWebViewDesc =>
      'የCloudflare ፍተሻ ፍታ ወይም ግባ፤ ኩኪዎቹ ከምንጭ ጥያቄዎች ጋር ይጋራሉ';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ለ$host $count ኩኪዎች ተቀምጠዋል',
      one: 'ለ$host 1 ኩኪ ተቀምጧል',
      zero: 'ለ$host ምንም ኩኪ አልተቀመጠም',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'የCloudflare ማረጋገጫ ንቁ ነው፣ $time';
  }

  @override
  String get watchClearanceMissing => 'የCloudflare ማረጋገጫ ኩኪ የለም';

  @override
  String get watchClearanceSession => 'መተግበሪያው እስኪዘጋ ድረስ ይቆያል';

  @override
  String get watchAgentShared =>
      'ጥያቄዎች Cloudflare የሚፈትሸውን የዌብ ቪው user agent ይጠቀማሉ';

  @override
  String get watchAgentCustom =>
      'ብጁ user agent ተቀናብሯል፣ ስለዚህ ከዌብ ቪው የመጣ የCloudflare ማረጋገጫ ውድቅ ሊሆን ይችላል';

  @override
  String get watchTestConnection => 'ግንኙነት ሞክር';

  @override
  String get watchSolveChallenge => 'ፍታው';

  @override
  String watchProbeOk(int code) {
    return 'ተደራሽ ነው (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare አሁንም ፍተሻ እየጠየቀ ነው';

  @override
  String watchProbeBlocked(int code) {
    return 'በጣቢያው ታግዷል (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ጣቢያውን ማግኘት አልተቻለም';

  @override
  String get watchClearCookies => 'ለዚህ ጣቢያ ኩኪዎችን አጽዳ';

  @override
  String get watchCookiesCleared => 'ኩኪዎች ጸድተዋል';

  @override
  String get watchFailTimeout => 'ቼኩ በጊዜ አላለቀም።';

  @override
  String get watchFailBlocked =>
      'ጣቢያው ይህን መሳሪያ አግዶታል (መዳረሻ ተከልክሏል)። ቼክ አይጠቅምም።';

  @override
  String get watchFailTurnstile =>
      'ይህ ቼክ የጀርባ ፈላጊው ማድረግ የማይችለውን መታ ማድረግ ያስፈልገዋል';

  @override
  String get watchFailLoad => 'ገጹ አልተጫነም። ግንኙነቱን እና የጣቢያውን አድራሻ ያረጋግጡ';

  @override
  String get watchFailRejected =>
      'ጣቢያው አሁን የሰጠውን ፍቃድ አልተቀበለውም። እንደገና ይሞክሩ ወይም ኩኪዎቹን ያጽዱ';

  @override
  String get watchFailDismissed => 'ቼኩ ከማለቁ በፊት ተዘግቷል።';

  @override
  String get watchFailCooldown => 'ቼኩን ከአፍታ በፊት ዘግተውታል። እንደገና ለመሞከር መፍታትን ይጫኑ';

  @override
  String get watchFailQuiet => 'ቼኩ እርስዎን ይፈልጋል፣ እና መተግበሪያው በራሱ እየሰራ ነበር።';

  @override
  String get watchFailWebView => 'የበስተጀርባ ድር እይታ መጀመር አልቻለም';

  @override
  String get watchFailUnavailable => 'ቼኩን የሚያሳይ ማያ ገጽ የለም።';

  @override
  String get watchStatusReady => 'ዝግጁ';

  @override
  String get watchStatusChallenge => 'የክላውድፍላር ፍተሻ ያስፈልጋል';

  @override
  String get watchStatusBlocked => 'በጣቢያው ታግዷል';

  @override
  String get watchStatusOffline => 'ጣቢያውን መድረስ አልተቻለም';

  @override
  String get watchStatusUntested => 'እስካሁን አልተፈተነም።';

  @override
  String get watchStatusTesting => 'ግንኙነቱን በመሞከር ላይ…';

  @override
  String get watchStatusSolving => 'የCloudflare ፍተሻን በማለፍ ላይ…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'የክላውድፍላር ፍተሻ ከበስተጀርባ አልፏል ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'የክላውድፍላር ፍተሻ አልፏል';

  @override
  String watchClearanceIssued(String time) {
    return 'ገቢ $time';
  }

  @override
  String get watchClearanceStale =>
      'ማጽዳቱ የተገኘው ከሌላ ተጠቃሚ ወኪል ነው፣ ስለዚህ አልተላከም። አዲስ ለማግኘት ግንኙነቱን ይሞክሩ';

  @override
  String get watchSectionConnection => 'ግንኙነት';

  @override
  String get watchSectionSession => 'ክፍለ ጊዜ';

  @override
  String get watchSectionTools => 'መሳሪያዎች';

  @override
  String get watchMetaSource => 'የክፍል ዝርዝሮች ከ';

  @override
  String get watchMetaAuto => 'ራስ-ሰር';

  @override
  String get watchMetaOff => 'ጠፍቷል';

  @override
  String get playerSettingsTitle => 'የማጫወቻ ቅንብሮች';

  @override
  String get playerSectionPlayback => 'መልሶ ማጫወት';

  @override
  String get playerSectionSkip => 'መዝለል';

  @override
  String get playerSectionGestures => 'መቆጣጠሪያዎች';

  @override
  String get playerSectionSubtitles => 'ንዑስ ርዕሶች';

  @override
  String get playerSectionShaders => 'ሼደሮች';

  @override
  String get playerSectionEngine => 'ሞተር';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'የመልሶ ማጫወት ፍጥነት';

  @override
  String get localSource => 'የአካባቢ ፋይሎች';

  @override
  String get localMissing => 'ይህ ፋይል ወይም አቃፊ ከአሁን በኋላ በአከባቢዎ አቃፊ ውስጥ የለም።';

  @override
  String get playerStickyStage => 'ተለጣፊ ቪዲዮ';

  @override
  String get playerStickyStageDesc =>
      'ከታች ያሉትን ክፍሎች እና አስተያየቶች ሲያሸብልሉ ቪዲዮውን ከላይ ተስተካክለው ያስቀምጡት';

  @override
  String get playerCursedSpeed => 'ተጨማሪ ፍጥነቶች';

  @override
  String get playerCursedSpeedDesc => 'እስከ 10x የሚደርሱ ፍጥነቶችን ወደ ዝርዝሩ ጨምር';

  @override
  String get playerResize => 'የመጠን ሁነታ';

  @override
  String get playerFitFit => 'አስማማ';

  @override
  String get playerFitCover => 'ሽፋን';

  @override
  String get playerFitStretch => 'ዘርጋ';

  @override
  String get playerSkipDuration => 'የመዝለያ አዝራር ርዝመት';

  @override
  String get playerSkipDurationDesc => 'ከመክፈቻና መዝጊያ ውጭ የመዝለያ አዝራሩ የሚዘልለው ሰከንዶች';

  @override
  String get playerSeekDuration => 'በሁለት ጊዜ መታ መዝለል';

  @override
  String get playerSeekDurationDesc => 'በሁለት ጊዜ መታ ወይም በቀስት ቁልፍ የሚዘለሉ ሰከንዶች';

  @override
  String get playerAutoPlay => 'ቀጣዩን በራስ-ሰር አጫውት';

  @override
  String get playerAutoPlayDesc => 'ይህ ሲያልቅ ቀጣዩን ክፍል ጀምር';

  @override
  String get playerResume => 'ካቆምክበት ቀጥል';

  @override
  String get playerResumeDesc => 'ክፍልን ከመጨረሻ ቦታው ቀጥል';

  @override
  String get playerOrientation => 'አቅጣጫ';

  @override
  String get playerOrientationAuto => 'መሣሪያውን ተከተል';

  @override
  String get playerOrientationLandscape => 'አግድም';

  @override
  String get playerOrientationPortrait => 'ቋሚ';

  @override
  String get playerAutoSkipOpening => 'መክፈቻዎችን እለፍ';

  @override
  String get playerAutoSkipEnding => 'መዝጊያዎችን እለፍ';

  @override
  String get playerAutoSkipRecap => 'ሪካፖችን እለፍ';

  @override
  String get playerAutoSkipDesc =>
      'እንደጀመረ ወዲያውኑ እለፍ፣ AniSkip እና የስትሪም የጊዜ ማህተሞችን በመጠቀም';

  @override
  String get playerDisableSkips => 'መዝለሎችን አሰናክል';

  @override
  String get playerDisableSkipsDesc =>
      'በአጫዋቹ ውስጥ ምንም AniSkip ወይም የጊዜ ማህተሞችን፣ የምዕራፎችን ምልክቶችን ወይም የዥረት ማስረከቦችን ዝለል';

  @override
  String get playerSkipOnce => 'አንድ ጊዜ ብቻ እለፍ';

  @override
  String get playerSkipOnceDesc => 'ወደ ኋላ ብትዘል ያንኑ ክፍል እንደገና አትዝለል';

  @override
  String get playerAdjustBrightness => 'የብሩህነት ምልክት';

  @override
  String get playerAdjustBrightnessDesc => 'በስክሪኑ ቀኝ ግማሽ ላይ ወደ ላይና ወደ ታች ጎትት';

  @override
  String get playerAdjustVolume => 'የድምጽ ምልክት';

  @override
  String get playerAdjustVolumeDesc => 'በስክሪኑ ግራ ግማሽ ላይ ወደ ላይና ወደ ታች ጎትት';

  @override
  String get playerHoldToSpeed => 'ለማፍጠን ተጭነህ ያዝ';

  @override
  String get playerHoldToSpeedDesc =>
      'ቪዲዮውን ተጭነህ ያዝና በፍጥነት አጫውት፣ ፍጥነቱን ለመቀየር ወደ ጎን ጎትት';

  @override
  String get playerThumbless => 'ወፍራም የመፈለጊያ አሞሌ';

  @override
  String get playerThumblessDesc => 'ያለ ጣት መያዣ ወፍራም አሞሌ';

  @override
  String get playerShowSubtitles => 'ንዑስ ርዕሶችን አሳይ';

  @override
  String get playerShowSubtitlesDesc => 'ሁሉንም የንዑስ ርዕስ ትራኮች ለመደበቅ አጥፋ';

  @override
  String get playerSubtitleLanguage => 'የተመረጠ የንዑስ ርዕስ ቋንቋ';

  @override
  String get playerSubtitleSize => 'የንዑስ ርዕስ መጠን';

  @override
  String get playerSubtitleWeight => 'የንዑስ ርዕስ ክብደት';

  @override
  String get playerSubtitleBottom => 'የንዑስ ርዕስ የታች ክፍተት';

  @override
  String get playerSubtitleFont => 'የንዑስ ርዕስ ፊደል';

  @override
  String get playerSubtitleColor => 'የንዑስ ርዕስ ቀለም';

  @override
  String get playerSubtitleBackground => 'የንዑስ ርዕስ ዳራ';

  @override
  String get playerSubtitleOutline => 'የንዑስ ርዕስ ዝርዝር ጠርዝ';

  @override
  String get playerSubtitleOutlineWidth => 'የትርጉም ጽሑፍ ዝርዝር ስፋት';

  @override
  String get playerSubtitlePreview => 'የትርጉም ጽሑፍ ቅድመ እይታ';

  @override
  String get playerSubtitlePreviewText => 'የትርጉም ጽሑፍ ቅድመ እይታ';

  @override
  String get playerLibass => 'libass ተጠቀም';

  @override
  String get playerLibassDesc =>
      'የተቀረጹ .ass ንዑስ ርዕሶችን አሳይ። ከላይ ያሉት መጠን፣ ቀለምና ፊደል ከዚያ በኋላ አይተገበሩም';

  @override
  String get playerShaders => 'ሼደሮች';

  @override
  String get playerShadersEnable => 'ሼደሮችን አብራ';

  @override
  String get playerShadersEnableDesc =>
      'ምስሉን እንደ Anime4K ባሉ GLSL ሼደሮች አሳድግና አጽዳ';

  @override
  String get playerShadersOff => 'ሼደሮች ጠፍተዋል';

  @override
  String get playerShadersMissing => 'Anime4K አልተጫነም';

  @override
  String get playerShadersMissingDesc =>
      'አብሮ የተሰሩ ሁነታዎችን ለመጠቀም የAnime4K ሼደር ጥቅል (ወደ 0.8 MB) አውርድ።';

  @override
  String get playerShadersDownload => 'Anime4K አውርድ';

  @override
  String get playerPictureSave => 'ይህን ፍሬም ያስቀምጡ';

  @override
  String get playerPictureOriginal => 'ኦሪጅናል';

  @override
  String get playerPictureOriginalDesc => 'ክፈፉ ቪዲዮው እንዳለው፣ ያለ ሼዶች ወይም ቀለሞች';

  @override
  String get playerPictureProcessed => 'ከሻርዶች እና ቀለሞች ጋር';

  @override
  String get playerPictureProcessedDesc => 'ክፈፉ አሁን እንደሚያዩት።';

  @override
  String get playerPictureSaved => 'ፍሬም ተቀምጧል';

  @override
  String get playerPictureSaveFailed => 'ፍሬሙን ማስቀመጥ አልተቻለም';

  @override
  String get playerShadersPreview => 'በዚህ ፍሬም ላይ ቅድመ እይታ';

  @override
  String get playerShadersUse => 'ይህን ተጠቀም';

  @override
  String get playerPicture => 'ምስል';

  @override
  String get playerColors => 'ቀለሞች';

  @override
  String get playerColorDefault => 'ነባሪ';

  @override
  String get playerColorVivid => 'ደማቅ';

  @override
  String get playerColorPop => 'አኒሜ ፖፕ';

  @override
  String get playerColorSoft => 'ለስላሳ';

  @override
  String get playerColorCinematic => 'ሲኒማቲክ';

  @override
  String get playerColorBright => 'ብሩህ';

  @override
  String get playerColorNight => 'ሌሊት';

  @override
  String get playerColorMono => 'ሞኖ';

  @override
  String get playerColorCustom => 'ብጁ';

  @override
  String get playerColorBrightness => 'ብሩህነት';

  @override
  String get playerColorContrast => 'ንፅፅር';

  @override
  String get playerColorSaturation => 'ሙሌት';

  @override
  String get playerColorGamma => 'ጋማ';

  @override
  String get playerColorHue => 'ሂው';

  @override
  String get playerColorReset => 'ዳግም አስጀምር';

  @override
  String get playerColorAdjust => 'አስተካክል';

  @override
  String get playerShadersOriginal => 'ኦሪጅናል';

  @override
  String get playerShadersPreviewFailed => 'ለቅድመ እይታ ፍሬም መያዝ አልተቻለም';

  @override
  String get playerShadersSoftware =>
      'ሼዶች ሃርድዌር መስራት ያስፈልጋቸዋል፣ እና ተጫዋቹ የሶፍትዌር አቀራረብን እየተጠቀመ ነው። በተጫዋች ቅንብሮች ውስጥ የሶፍትዌር ቀረጻን ያጥፉ።';

  @override
  String get playerSoftwareRender => 'የሶፍትዌር አቀራረብ';

  @override
  String get playerSoftwareRenderDesc =>
      'ለጥቁር ቪዲዮ ብቻ። ሼዶች ከእሱ ጋር አይሰሩም. ተጫዋቹ ሲከፈት በሚቀጥለው ጊዜ ይተገበራል።';

  @override
  String get playerShadersCustomFiles => 'ሼደሮችህ';

  @override
  String get playerShadersCustom => 'ብጁ ሼደሮች';

  @override
  String get playerShadersImport => '.glsl አስገባ';

  @override
  String get playerShadersNone =>
      'የራስህን .glsl ወይም .hook ፋይሎች አስገባና ለማያያዝ ምልክት አድርግባቸው';

  @override
  String get playerShadersBadFile => '.glsl ወይም .hook ሼደር ፋይል ምረጥ';

  @override
  String get playerDecoder => 'ዲኮደር';

  @override
  String get playerDecoderAuto => 'ራስ-ሰር';

  @override
  String get playerDecoderAutoSafe => 'ራስ-ሰር (አስተማማኝ)';

  @override
  String get playerDecoderSoftware => 'ሶፍትዌር';

  @override
  String get playerDecoderHardware => 'ሃርድዌር';

  @override
  String get playerDecoderHardwarePlus => 'ሃርድዌር+';

  @override
  String get playerVideoOutput => 'የቪዲዮ ውጤት';

  @override
  String get playerAudioChannels => 'የድምጽ ቻናሎች';

  @override
  String get playerBuffer => 'የቋት መጠን (MB)';

  @override
  String get playerBufferDesc => 'ማጫወቻው ስትሪምን ለማቆየት ሊጠቀምበት የሚችል ማህደረ ትውስታ';

  @override
  String get playerUseMpvConf => 'mpv.conf ተጠቀም';

  @override
  String get playerUseMpvConfDesc =>
      'መልሶ ማጫወት ሲጀምር በmpv.conf ውስጥ ያሉትን አማራጮች ተግብር';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'የmpv ውቅረትን አርም';

  @override
  String get playerMpvConfDesc =>
      'በአንድ መስመር አንድ አማራጭ፣ በመደበኛ mpv.conf ውስጥ እንዳለ --hwdec=auto። በ[ቅንፍ] ውስጥ ያሉ ፕሮፋይሎች ችላ ይባላሉ።';

  @override
  String get playerMpvConfSaved => 'mpv.conf ተቀምጧል';

  @override
  String get playerUseScripts => 'የmpv ስክሪፕቶችን ተጠቀም';

  @override
  String get playerUseScriptsDesc =>
      'ከscripts አቃፊ ፕለጊኖችን ጫን። Lua ወይም JavaScript ድጋፍ ያለው libmpv ግንባታ ያስፈልጋቸዋል';

  @override
  String get playerScripts => 'የmpv ስክሪፕቶች';

  @override
  String get playerScriptsManage => 'ፕለጊኖችን ጨምር፣ አስወግድ እና ቀይር';

  @override
  String get playerScriptsAdd => 'ስክሪፕት ጨምር';

  @override
  String get playerScriptsDesc =>
      'እዚህ የተቀመጡ Lua፣ JavaScript እና ቤተኛ ፕለጊኖች መልሶ ማጫወት ሲጀምር ይጫናሉ።';

  @override
  String get playerScriptsNone => 'እስካሁን ስክሪፕት የለም';

  @override
  String get playerScriptsBadFile => '.lua፣ .js ወይም ቤተኛ ፕለጊን ፋይል ምረጥ';

  @override
  String get playerTuning => 'የላቀ የቪዲዮ ማስተካከያ';

  @override
  String get playerTuningDesc =>
      'ማመሳሰልን፣ ካሺንግን፣ ማስፋትንና ቶን ማፒንግን ተካ። የተሳሳቱ እሴቶች መልሶ ማጫወትን ሊጎዱ ይችላሉ';

  @override
  String get playerVideoSync => 'የቪዲዮ ማመሳሰል';

  @override
  String get playerInterpolation => 'የፍሬም ኢንተርፖሌሽን';

  @override
  String get playerInterpolationDesc =>
      'ለስላሳ እንቅስቃሴ፣ display-resample ማመሳሰል ያስፈልገዋል';

  @override
  String get playerPitch => 'የድምጽ ቃና ማስተካከያ';

  @override
  String get playerPitchDesc => 'በሌሎች ፍጥነቶች ድምጾች ተፈጥሯዊ እንዲሆኑ አድርግ';

  @override
  String get playerCacheSeconds => 'ካሽ (ሰከንዶች)';

  @override
  String get playerReadahead => 'ወደፊት አንብብ (ሰከንዶች)';

  @override
  String get playerThreads => 'የዲኮደር ክሮች';

  @override
  String get playerDeband => 'ዲባንድ';

  @override
  String get playerDebandDesc => 'በግራዲየንቶች ውስጥ የቀለም ባንዲንግን ቀንስ';

  @override
  String get playerDebandIterations => 'የዲባንድ ድግግሞሾች';

  @override
  String get playerDebandThreshold => 'የዲባንድ ደፍ';

  @override
  String get playerCorrectDownscaling => 'ትክክለኛ ማሳነስ';

  @override
  String get playerSigmoid => 'ሲግሞይድ ማሳደግ';

  @override
  String get playerScale => 'አሳዳጊ';

  @override
  String get playerCscale => 'የክሮማ አሳዳጊ';

  @override
  String get playerDscale => 'አሳናሽ';

  @override
  String get playerToneMapping => 'ቶን ማፒንግ';

  @override
  String get playerTargetPeak => 'ዒላማ ከፍታ';

  @override
  String get playerOpenFiles => 'የቪዲዮ ፋይሎችን ክፈት';

  @override
  String get playerOpenFilesDesc => 'ከዚህ መሣሪያ ፋይሎችን አጫውት';

  @override
  String get playerOpenFolder => 'አቃፊ ክፈት';

  @override
  String get playerOpenFolderDesc => 'በአቃፊ ውስጥ ያለውን ቪዲዮ ሁሉ እንደ ፕሌይሊስት አጫውት';

  @override
  String get playerNetworkStream => 'የኔትወርክ ስትሪም';

  @override
  String get playerNetworkStreamDesc => 'ቀጥተኛ ቪዲዮ ወይም HLS ሊንክ ክፈት';

  @override
  String get playerStreamUrl => 'የስትሪም URL';

  @override
  String get playerStreamReferer => 'Referer (አማራጭ)';

  @override
  String get playerTorrent => 'ቶረንት';

  @override
  String get playerTorrentDesc => 'የማግኔት ሊንክ ወይም .torrent ፋይል ስትሪም አድርግ';

  @override
  String get playerMagnetLink => 'የማግኔት ሊንክ ወይም ቶረንት URL';

  @override
  String get playerPickTorrent => '.torrent ፋይል ምረጥ';

  @override
  String get playerTorrentMissing => 'መጀመሪያ ከቅንብሮች > ተጨማሪዎች የቶረንት ተጨማሪውን ጫን';

  @override
  String get playerNoVideos => 'የሚጫወት ቪዲዮ አልተገኘም';

  @override
  String get playerReset => 'የማጫወቻ ቅንብሮችን ዳግም አስጀምር';

  @override
  String get playerResetDesc => 'እያንዳንዱን የማጫወቻ አማራጭ ወደ ነባሪው መልስ';

  @override
  String get playerResetConfirm => 'ሁሉም የማጫወቻ ቅንብሮች ዳግም ይጀምሩ?';

  @override
  String get playerResetDone => 'የማጫወቻ ቅንብሮች ዳግም ተጀምረዋል';

  @override
  String get playerQuality => 'ጥራት';

  @override
  String get streamGroupSub => 'ንዑስ';

  @override
  String get streamGroupHardSub => 'ጠንካራ ንዑስ';

  @override
  String get streamGroupSoftSub => 'ለስላሳ ንዑስ';

  @override
  String get streamGroupDub => 'ዱብ';

  @override
  String get streamGroupRaw => 'ጥሬ';

  @override
  String get streamGroupOther => 'ሌላ';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ዥረቶች',
      one: '1 ዥረት',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ስትሪሞች';

  @override
  String get playerStreamFailedNext => 'የሚቀጥለውን በመሞከር ያ ዥረት አይጫወትም።';

  @override
  String get playerAutoSelect => 'ስትሪም በራስ-ሰር ምረጥ';

  @override
  String get playerAutoSelectDesc => 'ለዚህ ርዕስ ካለፈው ምርጫህ ጋር የሚመሳሰለውን ስትሪም ምረጥ';

  @override
  String get playerLoadingStreams => 'ስትሪሞችን በመፈለግ ላይ…';

  @override
  String get playerNoStreams => 'ይህ ክፍል ምንም ስትሪም የለውም';

  @override
  String get playerNoStreamsTitle => 'ምንም ስትሪም አልተገኘም';

  @override
  String get playerFailed => 'መልሶ ማጫወት አልተሳካም';

  @override
  String get playerTorrentNeeded => 'ይህ ስትሪም ቶረንት ነው';

  @override
  String get playerTorrentNeededDesc =>
      'የማግኔት ሊንኮችንና .torrent ፋይሎችን ለማጫወት የቶረንት ተጨማሪውን ጫን';

  @override
  String get playerOpenAddons => 'ተጨማሪዎችን ክፈት';

  @override
  String get playerTryAnotherStream => 'ሌላ ስትሪም ሞክር';

  @override
  String get playerEpisodes => 'ክፍሎች';

  @override
  String get playerLock => 'መቆጣጠሪያዎችን ቆልፍ';

  @override
  String get playerFullscreen => 'ሙሉ ስክሪን';

  @override
  String get readerChapters => 'ምዕራፎች';

  @override
  String get readerSettingsTitle => 'የአንባቢ ቅንብሮች';

  @override
  String get readerPreviousChapter => 'ያለፈው ምዕራፍ';

  @override
  String get readerNextChapter => 'ቀጣዩ ምዕራፍ';

  @override
  String get readerFirstChapter => 'ይህ የመጀመሪያው ምዕራፍ ነው';

  @override
  String get readerLastChapter => 'ሁሉንም ጨርሰሃል';

  @override
  String get readerFailed => 'ይህን ምዕራፍ መክፈት አልተቻለም';

  @override
  String get readerOpenBook => 'መጽሐፍ ክፈት';

  @override
  String get readerOpenBookDesc =>
      'ከፋይሎችህ epub (ልቦለድ አንባቢ) ወይም ፒዲኤፍ (ማንጋ አንባቢ) አንብብ';

  @override
  String get readerNoText => 'ይህ ምዕራፍ ጽሑፍ የለውም';

  @override
  String get readerPerTitle => 'ለዚህ ርዕስ ብቻ';

  @override
  String get readerPerTitleDesc => 'እነዚህን የአንባቢ ቅንብሮች ለዚህ ርዕስ ብቻ አቆይ';

  @override
  String get readerSectionReading => 'ንባብ';

  @override
  String get readerSectionControls => 'መቆጣጠሪያዎች';

  @override
  String get readerSectionDisplay => 'ማሳያ';

  @override
  String get readerSectionNovel => 'ኖቭል';

  @override
  String get readerMode => 'የንባብ ሁነታ';

  @override
  String get readerModeAuto => 'ራስ-ሰር (በተከታታይ ዓይነት)';

  @override
  String get readerModeRtl => 'ከቀኝ ወደ ግራ';

  @override
  String get readerModeLtr => 'ከግራ ወደ ቀኝ';

  @override
  String get readerModeVertical => 'ቋሚ ገጾች';

  @override
  String get readerModeWebtoon => 'ዌብቱን';

  @override
  String get readerModeContinuous => 'ቀጣይነት ያለው ማሸብለል';

  @override
  String get readerScale => 'የምስል መጠን';

  @override
  String get readerScaleFit => 'ስክሪኑን ሙላ';

  @override
  String get readerScaleWidth => 'ስፋቱን አስማማ';

  @override
  String get readerScaleHeight => 'ቁመቱን አስማማ';

  @override
  String get readerScaleOriginal => 'ኦሪጅናል መጠን';

  @override
  String get readerScaleSmart => 'ብልህ ማስማማት';

  @override
  String get readerDoublePage => 'ድርብ ገጾች';

  @override
  String get readerDoublePageDesc => 'በአግድም ሁነታ ሁለት ገጾችን ጎን ለጎን አሳይ';

  @override
  String get readerDoubleTapZoom => 'በሁለት ጊዜ መታ ማጉላት';

  @override
  String get readerDoubleTapZoomDesc => 'ገጽን በሁለት ጊዜ መታ አጉላና አሳንስ';

  @override
  String get readerAnimate => 'የገጽ እነማ';

  @override
  String get readerAnimateDesc => 'የገጽ መገልበጥን አንቀሳቅስ';

  @override
  String get readerSidePadding => 'የጎን ክፍተት';

  @override
  String get readerSidePaddingDesc => 'ከገጾቹ ጎን ያለ ክፍተት በመቶኛ';

  @override
  String get readerPageGap => 'የገጽ ክፍተት';

  @override
  String get readerPageGapDesc => 'በገጾች መካከል ያለ ክፍተት';

  @override
  String get readerAutoNext => 'ወደ ቀጣዩ ምዕራፍ ቀጥል';

  @override
  String get readerAutoNextDesc => 'የዚህን ምዕራፍ መጨረሻ ስታነብ ቀጣዩን ምዕራፍ ጫን';

  @override
  String get readerPreload => 'ገጾችን ቀድመህ ጫን';

  @override
  String get readerPreloadDesc => 'ምን ያህል ገጾች ቀድመው ይውረዱ';

  @override
  String get readerTapZones => 'የመታ ቦታዎች';

  @override
  String get readerTapDefault => 'ነባሪ';

  @override
  String get readerTapLShaped => 'L-ቅርጽ';

  @override
  String get readerTapKindle => 'Kindle-መሰል';

  @override
  String get readerTapEdge => 'ጠርዞች ብቻ';

  @override
  String get readerTapOff => 'ጠፍቷል';

  @override
  String get readerInvertTaps => 'የመታ ቦታዎችን ገልብጥ';

  @override
  String get readerInvertTapsDesc => 'የቀዳሚና ቀጣይ ቦታዎችን ቀያይር';

  @override
  String get readerBackground => 'ዳራ';

  @override
  String get readerBackgroundBlack => 'ጥቁር';

  @override
  String get readerBackgroundGray => 'ግራጫ';

  @override
  String get readerBackgroundWhite => 'ነጭ';

  @override
  String get readerBackgroundTheme => 'የመተግበሪያ ጭብጥ';

  @override
  String get readerFilter => 'የቀለም ማጣሪያ';

  @override
  String get readerFilterNone => 'ምንም';

  @override
  String get readerFilterGrayscale => 'ግራጫማ';

  @override
  String get readerFilterInvert => 'ገልብጥ';

  @override
  String get readerFilterSepia => 'ሴፒያ';

  @override
  String get readerFilterQuality => 'የምስል ማጣሪያ ጥራት';

  @override
  String get readerFilterQualityNone => 'የለም (የቅርብ ጎረቤት)';

  @override
  String get readerFilterQualityLow => 'ዝቅተኛ (ቢሊነር)';

  @override
  String get readerFilterQualityMedium => 'መካከለኛ (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'ከፍተኛ (ቢኩቢክ)';

  @override
  String get readerFilterQualityLanczos => 'ላንሶስ (ዝገት ከፍተኛ ጥራት)';

  @override
  String get readerDim => 'ደብዛዛ';

  @override
  String get readerDimDesc => 'ገጾቹን አጨልም';

  @override
  String get readerPageNumber => 'የገጽ ቁጥር';

  @override
  String get readerPageNumberDesc => 'በሚያነብበት ጊዜ የገጽ ቁጥሩን አሳይ';

  @override
  String get readerFullscreen => 'ሙሉ ስክሪን';

  @override
  String get readerFullscreenDesc => 'የሲስተም አሞሌዎችን ደብቅ';

  @override
  String get readerCropBorders => 'ጠርዞችን ቁረጥ';

  @override
  String get readerCropBordersDesc => 'ከገጾች ባዶ ነጭ ወይም ጥቁር ጠርዞችን አስወግድ';

  @override
  String get readerLongPressSave => 'እሱን ለማስቀመጥ ገጽ ይያዙ';

  @override
  String get readerLongPressSaveDesc =>
      'ለማስቀመጥ፣ ለማጋራት እና አማራጮችን ለመቅዳት ገጽን በረጅሙ ይጫኑ';

  @override
  String get readerVolumeKeys => 'የድምጽ ቁልፎች ገጽ ይገልብጣሉ';

  @override
  String get readerVolumeKeysDesc => 'ድምጽ ዝቅ ሲል ወደፊት፣ ድምጽ ከፍ ሲል ወደ ኋላ ይሄዳል';

  @override
  String get readerBookmarks => 'ዕልባቶች';

  @override
  String get readerBookmarkAdd => 'ዕልባት ጨምር';

  @override
  String get readerBookmarkRemove => 'ዕልባት አስወግድ';

  @override
  String get readerBookmarksEmpty => 'እስካሁን ዕልባት የለም';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'ገጽ $page ከ$total';
  }

  @override
  String get readerAutoScroll => 'ራስ-ሰር ማሸብለል';

  @override
  String get readerAutoScrollStop => 'ራስ-ሰር ማሸብለልን አቁም';

  @override
  String get readerAutoScrollSpeed => 'የራስ-ሰር ማሸብለል ፍጥነት';

  @override
  String get readerAutoScrollSpeedDesc =>
      'ገጾች በራሳቸው የሚሸበለሉበት ወይም የሚገለበጡበት ፍጥነት';

  @override
  String get readerKeepOn => 'ስክሪኑን አብርቶ አቆይ';

  @override
  String get readerKeepOnDesc => 'በሚያነብበት ጊዜ ስክሪኑ እንዳይጠፋ ከልክል';

  @override
  String get readerOrientation => 'አቅጣጫ';

  @override
  String get readerOrientationFree => 'ነጻ';

  @override
  String get readerOrientationPortrait => 'ቋሚ';

  @override
  String get readerOrientationLandscape => 'አግድም';

  @override
  String get readerSaveProgress => 'እድገት አስቀምጥ';

  @override
  String get readerSaveProgressDesc => 'ገጽህን አስታውስና ምዕራፎችን እንደተነበቡ ምልክት አድርግ';

  @override
  String get readerReset => 'የአንባቢ ቅንብሮችን ዳግም አስጀምር';

  @override
  String get readerResetDesc => 'ወደ ነባሪዎቹ መልስ';

  @override
  String get readerResetConfirm => 'እያንዳንዱ አንባቢ ቅንብር ወደ ነባሪ ይጀምር?';

  @override
  String get novelSize => 'የጽሑፍ መጠን';

  @override
  String get novelFont => 'ፊደል';

  @override
  String get novelLineHeight => 'የመስመር ከፍታ';

  @override
  String get novelParagraph => 'የአንቀጽ ክፍተት';

  @override
  String get novelMargin => 'ኅዳጎች';

  @override
  String get novelTheme => 'የአንባቢ ጭብጥ';

  @override
  String get novelThemeApp => 'የመተግበሪያ ጭብጥ';

  @override
  String get novelThemeLight => 'ብርሃን';

  @override
  String get novelThemeSepia => 'ሴፒያ';

  @override
  String get novelThemeDark => 'ጨለማ';

  @override
  String get novelThemeBlack => 'ጥቁር';

  @override
  String get novelJustify => 'ጽሑፍ አሰልፍ';

  @override
  String get novelJustifyDesc => 'ጽሑፍን በሁለቱም ጠርዞች አሰልፍ';

  @override
  String get trackProgressTitle => 'እድገት ይቀመጥ?';

  @override
  String trackProgressAnime(String name) {
    return '$nameን እየተመለከትክ በዝርዝርህ ላይ ይከታተል? በዚህ መሣሪያ ብቻ ለማቆየት \"በዚህ መሣሪያ ብቻ\" ምረጥ፣ ምንም ላለማስቀመጥ \"አይ\" ምረጥ።';
  }

  @override
  String trackProgressManga(String name) {
    return 'ምዕራፍ ስትጨርስ $nameን በዝርዝርህ ላይ ይከታተል? በዚህ መሣሪያ ብቻ ለማቆየት \"በዚህ መሣሪያ ብቻ\" ምረጥ፣ ምንም ላለማስቀመጥ \"አይ\" ምረጥ።';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'ሲመለከቱ ሂደትዎን በ$name በዚህ መሣሪያ ላይ ባለው ዝርዝርዎ ውስጥ ይቆጥቡ?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'ምዕራፍ ሲጨርሱ በዚህ መሣሪያ ላይ ያለዎትን ሂደት በ$name ላይ ይቆጥቡ?';
  }

  @override
  String get downloadClearQueue => 'ወረፋ አጽዳ';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'በወረፋው ውስጥ ያሉ ሁሉም የ$count ውርዶች ይሰረዙ? አስቀድሞ የወረደው ተሰርዟል።';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count ተመርጧል';
  }

  @override
  String get downloadSelectAll => 'ሁሉንም ይምረጡ';

  @override
  String get downloadDeleteSelected => 'ሰርዝ ተመርጧል';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'የ$count ውርዶች ይሰረዙ? ፋይሎቻቸው ከመሣሪያው ይወገዳሉ።';
  }

  @override
  String get castTitle => 'ወደ መሳሪያ ውሰድ';

  @override
  String get castSearching => 'በአውታረ መረብዎ ላይ መሣሪያዎችን በመፈለግ ላይ…';

  @override
  String get castNoDevices =>
      'ምንም መሣሪያዎች አልተገኙም። ቴሌቪዥኑ ወይም Chromecast በተመሳሳይ Wi-Fi ላይ መሆናቸውን ያረጋግጡ፣ ከዚያ እንደገና ይፈልጉ።';

  @override
  String get castRefresh => 'እንደገና ፈልግ';

  @override
  String get castFailed => 'መውሰድ መጀመር አልተቻለም';

  @override
  String get castStop => 'መውሰድ አቁም';

  @override
  String castNowCasting(String name) {
    return 'ወደ $name በመውሰድ ላይ';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'ዲኤልኤንኤ / ስማርት ቲቪ';

  @override
  String get castProtocolRoku => 'ሮኩ';

  @override
  String get castRokuNote => 'Roku ቦታውን ሪፖርት ማድረግ ወይም መለወጥ አይችልም።';

  @override
  String get castControls => 'መቆጣጠሪያዎች';

  @override
  String get castVolume => 'የቲቪ መጠን';

  @override
  String castSkipPart(String name) {
    return 'ዝለል $name';
  }

  @override
  String get trackProgressRememberSeries => 'ለዚህ ተከታታይ አስታውስ';

  @override
  String get trackProgressYes => 'አስቀምጥ';

  @override
  String get trackProgressReset =>
      'የእድገት ማስቀመጥ ጥያቄ ለዚህ ዓይነት ዳግም ተጀምሯል፣ እንደገና ይጠይቃል';

  @override
  String get trackProgressNo => 'አይ';

  @override
  String get trackProgressOff => 'ጠፍቷል';

  @override
  String get trackProgressLocal => 'በዚህ መሣሪያ ብቻ';

  @override
  String get trackProgressSettingAnime => 'የአኒሜ እድገት ተከታተል';

  @override
  String get trackProgressSettingManga => 'የማንጋና ኖቭል እድገት ተከታተል';

  @override
  String get trackProgressSettingDesc => 'ክፍል ስትከፍት ወይም ምዕራፍ ስትጨርስ ምን እንደሚሆን';

  @override
  String get trackProgressAsk => 'ጠይቅ';

  @override
  String get trackProgressAlways => 'ሁልጊዜ';

  @override
  String get dantotsuImport => 'ከDantotsu አስገባ';

  @override
  String get dantotsuImportDesc =>
      'የDantotsu የቅንብሮች ምትኬ አንብብ (.ani፣ ወይም የተመሰጠረ .sani)';

  @override
  String get dantotsuPick => 'የDantotsu ምትኬ ምረጥ';

  @override
  String get dantotsuNothing => 'በዚህ ፋይል ውስጥ የሚገባ ምንም ነገር የለም';

  @override
  String get dantotsuApply => 'የተመረጡትን አስገባ';

  @override
  String dantotsuDone(int done, int total) {
    return 'ከ$total $done ገብተዋል';
  }

  @override
  String get dantotsuGroupAccounts => 'መለያዎች';

  @override
  String get dantotsuGroupAppearance => 'ገጽታ';

  @override
  String get dantotsuGroupExtensions => 'ኤክስቴንሽኖች';

  @override
  String get dantotsuGroupApp => 'መተግበሪያ';

  @override
  String get dantotsuGroupPlayer => 'ማጫወቻ';

  @override
  String get dantotsuAnilist => 'የAniList መግቢያ';

  @override
  String get dantotsuMal => 'የMyAnimeList መግቢያ';

  @override
  String get dantotsuDiscord => 'የDiscord Rich Presence ቶከን';

  @override
  String get dantotsuTheme => 'ጭብጥ';

  @override
  String get themePickerTitle => 'ጭብጥ';

  @override
  String get dantotsuReposAnime => 'የአኒሜ ኤክስቴንሽን ማከማቻዎች';

  @override
  String get dantotsuReposManga => 'የማንጋ ኤክስቴንሽን ማከማቻዎች';

  @override
  String get dantotsuReposNovel => 'የኖቭል ኤክስቴንሽን ማከማቻዎች';

  @override
  String get dantotsuUpdates => 'የዝማኔ ፍተሻ';

  @override
  String get dantotsuComments => 'አስተያየቶች';

  @override
  String get dantotsuActivity => 'የAniList ማሳወቂያ ፍተሻ';

  @override
  String get dantotsuDns => 'የDNS አቅራቢ';

  @override
  String get dantotsuPlayer => 'የማጫወቻ ፍጥነትና የንዑስ ርዕስ ቀለሞች';

  @override
  String get dantotsuWarning => 'ይህ ፋይል የመግቢያ ቶከኖችን ይዟል። በሚስጥር ያዘው።';

  @override
  String get novelIndent => 'አንቀጾችን አስገባ';

  @override
  String get novelIndentDesc => 'እያንዳንዱን አንቀጽ በመጀመሪያ መስመር ገባ ብሎ ጀምር';

  @override
  String get novelLetterSpacing => 'የፊደል ክፍተት';

  @override
  String get novelSectionTranslate => 'ትርጉም';

  @override
  String get sectionExperimental => 'ሙከራዊ';

  @override
  String get kitsuGraphqlDetail => 'ፈጣን የዝርዝር ገጾች (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ርዕስን ከገጸ ባህሪያቱ፣ ሠራተኞቹና ከግቤትህ ጋር በአንድ ጥያቄ ጫን';

  @override
  String get togetherTitle => 'አብሮ መመልከት';

  @override
  String get togetherIntro =>
      'ጓደኛህ የላከልህን የክፍል ሊንክ ለጥፍ። ወዲያውኑ ትቀላቀላለህ እና እነሱ መመልከት ሲጀምሩ ማጫወቻው ይከፈታል።';

  @override
  String togetherLinkConfirm(String room) {
    return 'ክፍሉን ይቀላቀሉ $room? አስተናጋጁ የሚጫወተውን ይመርጣል እና ተጫዋቹ መመልከት ሲጀምር በራሱ ይከፍታል።';
  }

  @override
  String get togetherJoin => 'ተቀላቀል';

  @override
  String get togetherName => 'ስምህ';

  @override
  String get togetherConnecting => 'በመገናኘት ላይ…';

  @override
  String get togetherLeave => 'ክፍሉን ልቀቅ';

  @override
  String get togetherYou => 'አንተ';

  @override
  String get togetherNoChat => 'እስካሁን መልዕክት የለም';

  @override
  String get togetherChatHint => 'መልዕክት';

  @override
  String get togetherCopyInvite => 'ግብዣ ቅዳ';

  @override
  String get togetherShareInvite => 'ግብዣ አጋራ';

  @override
  String togetherShareText(String link) {
    return 'ከኔ ጋር በዳርቶትሱ ይመልከቱ፡$link';
  }

  @override
  String get togetherInviteCopied => 'ሰርቨርና ክፍል ተቀድተዋል';

  @override
  String get togetherConnectionLost => 'ግንኙነት ጠፍቷል';

  @override
  String togetherConnectedTo(String room) {
    return 'ከ$room ጋር ተገናኝቷል';
  }

  @override
  String togetherFailed(String error) {
    return 'መገናኘት አልተቻለም፦ $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ተቀላቅሏል';
  }

  @override
  String togetherLeft(String name) {
    return '$name ለቋል';
  }

  @override
  String togetherPaused(String name) {
    return '$name አቁሟል';
  }

  @override
  String togetherResumed(String name) {
    return '$name ቀጥሏል';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ወደ $time ዘሏል';
  }

  @override
  String get togetherFollowFailed => 'የአስተናጋጁን ክፍል መክፈት አልተቻለም። ራስህ ክፈተው።';

  @override
  String get togetherJoinRole => 'ክፍል ተቀላቀል';

  @override
  String get togetherOpenHost => 'የአስተናጋጁን ክፍል ክፈት';

  @override
  String get togetherShowChat => 'ቀጥታ ቻት አሳይ';

  @override
  String get togetherWaitingHost => 'አስተናጋጁ ክፍል እስኪጀምር በመጠበቅ ላይ';

  @override
  String get togetherRoomLink => 'የክፍል ሊንክ';

  @override
  String get togetherBadLink => 'ይህ የክፍል ሊንክ አይደለም';

  @override
  String get togetherHostClosed => 'አስተናጋጁ ክፍሉን ዘግቷል';

  @override
  String get togetherNowPlaying => 'አሁን እየተጫወተ';

  @override
  String togetherWatchingCount(int count) {
    return '$count እየተመለከቱ ነው';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user ማቆም ይፈልጋል';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user መቀጠል ይፈልጋል';
  }

  @override
  String get togetherChip => 'አብረን';

  @override
  String get togetherSettingsDesc => 'በሊንክ የጓደኛህን ክፍል ተቀላቀል';

  @override
  String get novelBilingual => 'ኦሪጅናሉንና ትርጉሙን አሳይ';

  @override
  String get novelBilingualDesc => 'እያንዳንዱ አንቀጽ ኦሪጅናሉን ጽሑፍ ከታች ከትርጉሙ ጋር ያሳያል';

  @override
  String get novelTranslateTo => 'ተርጉም ወደ';

  @override
  String get novelTranslateOff => 'ጠፍቷል';

  @override
  String get novelSectionSpeech => 'ጽሑፍ ወደ ንግግር';

  @override
  String get novelSpeechRate => 'የንግግር ፍጥነት';

  @override
  String get novelSpeechPitch => 'የንግግር ቃና';

  @override
  String get novelSpeak => 'ጮክ ብለህ አንብብ';

  @override
  String get novelSpeakStop => 'ጮክ ብሎ ማንበብን አቁም';

  @override
  String get novelTranslate => 'ምዕራፉን ተርጉም';

  @override
  String get novelTranslateShowOriginal => 'ኦሪጅናሉን አሳይ';

  @override
  String novelTranslateFailed(String error) {
    return 'ትርጉም አልተሳካም፦ $error';
  }

  @override
  String get novelSpeechUnavailable => 'ጽሑፍ ወደ ንግግር በዚህ መሣሪያ ላይ አይገኝም';

  @override
  String get novelSpeechVoice => 'ድምጽ';

  @override
  String get novelSpeechVoiceDefault => 'የሲስተም ነባሪ';

  @override
  String get novelSpeakPrevious => 'ያለፈው መስመር';

  @override
  String get novelSpeakNext => 'ቀጣዩ መስመር';

  @override
  String get novelTapPaging => 'ገጽ ለመገልበጥ ጠርዞችን ንካ';

  @override
  String get novelTapPagingDesc =>
      'ገጽ ለማሸብለል የግራ ወይም የቀኝ ጎን ንካ፣ መሃሉ መቆጣጠሪያዎቹን ያሳያል';

  @override
  String get novelPaged => 'ገጽ መዞር';

  @override
  String get novelPagedDesc =>
      'ምዕራፉን ወደ ገፆች ይከፋፍሉት እና ከማሸብለል ይልቅ ለማዞር ያንሸራትቱ ወይም ነካ ያድርጉ';

  @override
  String novelPageOf(int current, int total) {
    return 'ገጽ $current የ$total';
  }

  @override
  String get novelPaginating => 'ገጾችን መዘርጋት';

  @override
  String get novelTools => 'ይዘቶች፣ ፍለጋ እና ድምቀቶች';

  @override
  String get novelContents => 'ይዘቶች';

  @override
  String get novelContentsEmpty => 'ይህ ምዕራፍ ርዕስ የለውም';

  @override
  String get novelSearch => 'ፈልግ';

  @override
  String get novelSearchHint => 'በዚህ ምዕራፍ ውስጥ ይፈልጉ';

  @override
  String get novelSearchNone => 'ምንም ግጥሚያዎች የሉም';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ግጥሚያዎች',
      one: '1 ግጥሚያ',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'ድምቀቶች';

  @override
  String get novelHighlightsEmpty =>
      'እዚህ ለማስቀመጥ አንዳንድ ጽሑፍ ምረጥ እና ድምቀትን ነካ አድርግ';

  @override
  String get novelHighlight => 'አድምቅ';

  @override
  String get novelHighlightNote => 'ማስታወሻ';

  @override
  String get novelHighlightNoteHint => 'ማስታወሻ ጨምር';

  @override
  String get novelHighlightRemove => 'ድምቀትን ያስወግዱ';

  @override
  String get novelHighlightFailed => 'ምርጫውን ከጽሁፉ ጋር ማዛመድ አልተቻለም';

  @override
  String novelMinutesLeft(int count) {
    return '$count ደቂቃ ቀርቷል';
  }

  @override
  String get novelBold => 'ደማቅ ጽሑፍ';

  @override
  String get novelBoldDesc => 'ከባድ ክብደት ተጠቀም';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter ጨርሰሃል';
  }

  @override
  String readerNextUp(String chapter) {
    return 'ቀጣይ፦ $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'ያለፈ፦ $chapter';
  }

  @override
  String get readerNoPages => 'ይህ ምዕራፍ ገጾች የሉትም';

  @override
  String get readerLoadingPages => 'ገጾችን በመጫን ላይ…';

  @override
  String get readerSlowPage => 'ይህ ገጽ አሁንም በመጫን ላይ ነው…';

  @override
  String get readerPageFailed => 'ይህን ገጽ መጫን አልተቻለም';

  @override
  String get playerShowComments => 'አስተያየቶችን አሳይ';

  @override
  String get playerHideComments => 'አስተያየቶችን ደብቅ';

  @override
  String get playerSubtitles => 'ንዑስ ርዕሶች';

  @override
  String get playerSubtitlesOff => 'ንዑስ ርዕሶች ጠፍተዋል';

  @override
  String get playerAudio => 'ድምጽ';

  @override
  String get playerAddSubtitle => 'የንዑስ ርዕስ ፋይል ጨምር';

  @override
  String get playerAddAudio => 'የድምጽ ፋይል ጨምር';

  @override
  String get playerChapters => 'ምዕራፎች';

  @override
  String get playerSkipSubmit => 'የመዝለል ጊዜዎችን አስገባ';

  @override
  String get playerSkipSubmitDesc =>
      'በዚህ ክፍል ውስጥ የመክፈቻው፣ የሚደመደመው ወይም የድጋሚ ማጠቃለያው የት እንደሚጀመር እና እንደሚያልቅ ምልክት ያድርጉ እና ለአኒስኪፕ ያካፍሉት፣ ስለዚህ ሁሉም ሰው የመዝለል ቁልፍ ያገኛል።';

  @override
  String get playerSkipStart => 'ጀምር';

  @override
  String get playerSkipEnd => 'መጨረሻ';

  @override
  String get playerSkipUseNow => 'የአሁኑን አቀማመጥ ተጠቀም';

  @override
  String get playerSkipSend => 'ለ AniSkip አስገባ';

  @override
  String get playerSkipSent => 'ለ AniSkip የገቡት የመዝለል ጊዜዎች፣ አመሰግናለሁ';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip የመዝለል ጊዜዎችን አልተቀበለም: $error';
  }

  @override
  String get playerUnsupported =>
      'የቪዲዮ ማጫወቻው በዚህ መሳሪያ ላይ መስራት አይችልም (የአንድሮይድ ስሪቱ ለተጠቀለለው የተጫዋች ቤተ-መጽሐፍት በጣም ያረጀ ነው)። ዝርዝሮቹን ለመቅዳት ይንኩ።';

  @override
  String get playerSkipNoMal =>
      'ይህ ርዕስ ምንም MyAnimeList መታወቂያ የለውም፣ AniSkip ሊወስደው አይችልም።';

  @override
  String get playerNoChapters => 'ምዕራፎች የሉም';

  @override
  String get playerTimestamp => 'የጊዜ ማህተም';

  @override
  String get playerAutoPlayDelay => 'የቀጣይ ክፍል ቆጠራ';

  @override
  String get playerWatchedAt => 'እንደታየ ቁጠር በ';

  @override
  String playerNextIn(int seconds) {
    return 'ቀጣዩ ክፍል በ$secondsሰ ውስጥ';
  }

  @override
  String get playerPlayNow => 'አሁን አጫውት';

  @override
  String playerAutoSkipOn(String name) {
    return '$name፦ ለዚህ ርዕስ በራስ-ሰር ይዘላል';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name፦ ለዚህ ርዕስ በራስ-ሰር አይዘልም';
  }

  @override
  String get playerAudioLanguage => 'የተመረጠ የድምጽ ቋንቋ';

  @override
  String get playerLanguageOrderHint =>
      'ቋንቋዎችን በነጠላ ሰረዝ ለይ። መጀመሪያ የተገኘው ይጠቀማል።';

  @override
  String get playerPip => 'ስዕል-በ-ስዕል';

  @override
  String get playerAutoPip => 'ስትወጣ ስዕል-በ-ስዕል';

  @override
  String get playerAutoPipDesc => 'መተግበሪያውን ስትለቅ በትንሽ መስኮት መጫወቱን ቀጥል';

  @override
  String get playerPipPlay => 'ይጫወቱ';

  @override
  String get playerPipPause => 'ለአፍታ አቁም';

  @override
  String get playerPipBack => 'ወደኋላ መመለስ';

  @override
  String get playerPipForward => 'ወደፊት';

  @override
  String get playerPipRestore => 'ወደ ተጫዋቹ ተመለስ';

  @override
  String get playerPipActive => 'በትንሽ መስኮት ውስጥ መጫወት';

  @override
  String get listDateAdded => 'ወደ ዝርዝር ታክሏል።';

  @override
  String get listDateLastWatched => 'መጨረሻ የታዩት።';

  @override
  String playerAutoPlaying(String title) {
    return 'ቀጥሎ $title በመጫወት ላይ…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ሼደሮችን መጫን አልተቻለም፦ $error';
  }

  @override
  String playerChapter(int number) {
    return 'ምዕራፍ $number';
  }

  @override
  String get playerPerTitle => 'ለዚህ ርዕስ ብቻ';

  @override
  String get playerPerTitleDesc => 'እነዚህን አማራጮች ለዚህ ርዕስ አቆይና ነባሪዎችህን ተው';

  @override
  String get playerSwapGestures => 'የማንሸራተቻ ጎኖችን ቀያይር';

  @override
  String get playerSwapGesturesDesc => 'ብሩህነት በግራ እና ድምጽ በቀኝ';

  @override
  String get playerOpenBig => 'በትልቅ እይታ ክፈት';

  @override
  String get playerOpenBigDesc => 'ተጫዋቹን ከትዕይንት ዝርዝር ይልቅ በሙሉ ማያ ጀምር';

  @override
  String get playerPauseOnBlur => 'ትኩረት ሲያጣ ባለበት አቁም';

  @override
  String get playerPauseOnBlurDesc =>
      'መተግበሪያው ሲሸፈን፣ ለምሳሌ በማሳወቂያ ፓነል፣ ባለበት ያቁሙ እና ሲመለሱ ይቀጥሉ';

  @override
  String get playerAudioOutput => 'የድምጽ ውፅዓት';

  @override
  String get fontAppDefault => 'የመተግበሪያ ፊደል';

  @override
  String get fontImport => 'ፊደል አስገባ';

  @override
  String get fontSample => 'ፈጣኗ ቡናማ ቀበሮ ሰነፉን ውሻ ትዘልላለች';

  @override
  String get playerSubtitleDelay => 'የንዑስ ርዕስ መዘግየት';

  @override
  String get playerAudioDelay => 'የድምጽ መዘግየት';

  @override
  String get playerDelayReset => 'ዳግም አስጀምር';

  @override
  String get playerOnlineSubtitles => 'የኦንላይን ንዑስ ርዕሶች';

  @override
  String get playerOnlineSearchHint => 'ርዕስና ክፍል';

  @override
  String get playerOnlineNone => 'ምንም ንዑስ ርዕስ አልተገኘም';

  @override
  String playerOnlineFailed(String error) {
    return 'የንዑስ ርዕስ ፍለጋ አልተሳካም፦ $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ይህን ንዑስ ርዕስ ማውረድ አልተቻለም፦ $error';
  }

  @override
  String get playerOnlineMatch => 'ከዚህ ፋይል ጋር ይዛመዳል';

  @override
  String get playerOnlineEpisode => 'የክፍል ተዛማጅ';

  @override
  String playerOnlineDownloads(int count) {
    return '$count ውርዶች';
  }

  @override
  String get playerSeekPreview => 'የመፈለጊያ ቅድመ እይታ';

  @override
  String get playerSeekPreviewDesc =>
      'በሚፈልግበት ጊዜ ከመፈለጊያ አሞሌው በላይ ትንሽ የፍሬም ቅድመ እይታ አሳይ። ሁለተኛ ዝቅተኛ ጥራት ዲኮደር ይከፍታል፣ ስለዚህ በስትሪሞች ላይ ተጨማሪ ዳታ ይጠቀማል።';

  @override
  String get playerSettingsChip => 'ቅንብሮች';

  @override
  String get playerAudioDevice => 'የድምጽ መሣሪያ';

  @override
  String get settingsDownloads => 'ውርዶች';

  @override
  String get settingsDownloadsDesc => 'ከመስመር ውጭ ክፍሎች፣ ወረፋና ከመስመር ውጭ ሁነታ';

  @override
  String get downloadsTitle => 'ውርዶች';

  @override
  String get widgetContinue => 'ቀጥል';

  @override
  String get widgetReleases => 'በቅርቡ ይለቀቃል';

  @override
  String get widgetMore => 'እንዲሁም በሂደት ላይ';

  @override
  String get widgetNothing => 'እስካሁን ምንም የሚቀጥል ነገር የለም።';

  @override
  String get downloadStorageTitle => 'ማከማቻ';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ውርዶች',
      one: '1 ማውረድ',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size አስቀድሞ ተመልክቷል ወይም አንብቧል';
  }

  @override
  String get downloadFreeUp => 'ቦታ ያስለቅቁ';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ውርዶችን ተመልክቷል።',
      one: '1 ማውረዱን ተመልክቷል።',
    );
    return 'ሰርዝ $_temp0 እና ነፃ $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'ነፃ $size';
  }

  @override
  String get downloadDeleteWatched => 'የታየውን ሰርዝ';

  @override
  String get downloadDeleteAll => 'ሁሉንም ሰርዝ';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'እያንዳንዱ የ$title ማውረድ ይሰረዝ?';
  }

  @override
  String get downloadNothingWatched => 'የጨረሱት ነገር አልወረደም።';

  @override
  String get downloadStorageEmpty => 'ምንም ውርዶች ቦታን እየተጠቀሙ አይደሉም';

  @override
  String get downloadsOpenDesc => 'ወረፋውንና በዚህ መሣሪያ ላይ የተቀመጠውን ሁሉ ተመልከት';

  @override
  String get downloadTitle => 'አውርድ';

  @override
  String get downloadMetaOnly => 'ዲበ ውሂብ ብቻ';

  @override
  String get downloadMetaFailed => 'የርዕስ አቃፊውን መፍጠር አልተቻለም';

  @override
  String downloadMetaSaved(String path) {
    return 'ተቀምጧል። ፋይሎችዎን በ$path ውስጥ ያስገቡ';
  }

  @override
  String get downloadAlready => 'አስቀድሞ ወርዷል ወይም በወረፋ ውስጥ ነው';

  @override
  String get downloadPickStream => 'የትኛው ስትሪም ይውረድ?';

  @override
  String get downloadPickSubtitle => 'የትኛው ንዑስ ርዕስ ይውረድ?';

  @override
  String get downloadPickAudio => 'የትኛው የድምጽ ትራክ ይውረድ?';

  @override
  String get downloadNoAudio => 'ተጨማሪ ድምጽ የለም';

  @override
  String get downloadAudio => 'ድምጽ';

  @override
  String get downloadNoSubtitle => 'ንዑስ ርዕስ የለም';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ይህ ስትሪም የHLS ፕሌይሊስት ነው። ለማውረድ የFFmpeg ተጨማሪ ያስፈልጋል።';

  @override
  String get downloadSourceMissing => 'የዚህ ክፍል ምንጭ አልተጫነም';

  @override
  String get downloadDashDrm => 'ይህ ዥረት በDRM የተጠበቀ ነው።';

  @override
  String get downloadDashNoVideo => 'የDASH አንጸባራቂ ቪዲዮ የለውም';

  @override
  String get downloadWaitingConnection => 'ግንኙነት በመጠበቅ ላይ';

  @override
  String get downloadSubtitles => 'ንዑስ ርዕሶች';

  @override
  String get downloadDownloaded => 'ወርዷል';

  @override
  String get downloadOffline => 'ከመስመር ውጭ';

  @override
  String get downloadDelete => 'ውርዱን ሰርዝ';

  @override
  String get downloadCancel => 'ተው';

  @override
  String get downloadPause => 'አቁም';

  @override
  String get downloadPaused => 'ቆሟል';

  @override
  String get downloadResume => 'ቀጥል';

  @override
  String get downloadPauseAll => 'ሁሉንም አቁም';

  @override
  String get downloadResumeAll => 'ሁሉንም ቀጥል';

  @override
  String get downloadQueuedState => 'በወረፋ ውስጥ በመጠበቅ ላይ';

  @override
  String get downloadResolving => 'ስትሪሙን በማምጣት ላይ…';

  @override
  String get downloadUsedFallback => 'ተዛማጅ ስትሪም የለም፣ የመጀመሪያው ጥቅም ላይ ዋለ';

  @override
  String get downloadTabQueue => 'ወረፋ';

  @override
  String get downloadTabDone => 'ተጠናቋል';

  @override
  String get downloadTabFailed => 'አልተሳካም';

  @override
  String get downloadEmptyQueue => 'ምንም እየወረደ አይደለም';

  @override
  String get downloadEmptyDone => 'እስካሁን ምንም አልወረደም';

  @override
  String get downloadEmptyFailed => 'ያልተሳኩ ውርዶች የሉም';

  @override
  String get downloadNext => 'ቀጣይ ክፍል';

  @override
  String downloadNextN(int count) {
    return 'ቀጣይ $count ክፍሎች';
  }

  @override
  String downloadUnwatched(int count) {
    return 'ሁሉም ያልታዩ ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ይህ ክልል ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'ሁሉም ክፍሎች ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ክፍሎች ወረፋ ገብተዋል',
      one: '1 ክፍል ወረፋ ገብቷል',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ወርዷል';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ማውረድ አልተሳካም';
  }

  @override
  String downloadStorage(String size) {
    return 'ውርዶች $size ተጠቅመዋል';
  }

  @override
  String get downloadQueueHeader => 'ወረፋ';

  @override
  String get downloadParallel => 'በአንድ ጊዜ ውርዶች';

  @override
  String get downloadParallelDesc => 'አንድ ውርድ በአንድ ጊዜ ወይም ብዙዎችን በአንድ ላይ አሂድ';

  @override
  String get downloadOneByOne => 'አንድ በአንድ';

  @override
  String get downloadNotifications => 'የውርድ ማሳወቂያዎች';

  @override
  String get downloadNotificationsDesc =>
      'ሲስተሙ በሚደግፍበት ቀጥታ እድገት፣ ካልሆነ ውርድ ሲያልቅ ማስታወሻ';

  @override
  String get downloadNotifyLive => 'ቀጥታ';

  @override
  String get downloadNotifyDone => 'ሲጠናቀቅ';

  @override
  String get downloadNotifyOff => 'ጠፍቷል';

  @override
  String get downloadInfoFile => 'ከእያንዳንዱ ውርድ ቀጥሎ የመረጃ ፋይል ጻፍ';

  @override
  String get downloadInfoFileDesc =>
      'ስትሪሙን፣ ጥራቱን፣ ንዑስ ርዕሱንና የመዝለያ ጊዜዎችን እንደ ትንሽ .json ፋይል ያስቀምጣል';

  @override
  String get offlineHeader => 'ከመስመር ውጭ';

  @override
  String get offlineModeDesc =>
      '\"ራስ-ሰር\" ከመስመር ውጭ የሚሆነው መተግበሪያው ያለ ግንኙነት ሲጀምር ብቻ ነው። \"ሁልጊዜ\" እስክትቀይር ድረስ ከመስመር ውጭ ይቆያል።';

  @override
  String get offlineModeOff => 'ጠፍቷል';

  @override
  String get offlineModeAlways => 'ሁልጊዜ';

  @override
  String get offlineModeOn =>
      'ከመስመር ውጭ ሁነታ በርቷል። ለውጦች እዚህ ይቀመጣሉ እና ወደ መስመር ላይ ስትመለስ ይላካሉ።';

  @override
  String get offlineSaved => 'በዚህ መሣሪያ ላይ ተቀምጧል፣ መስመር ላይ ስትሆን ይመሳሰላል';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ለውጦች ተመሳስለዋል',
      one: '1 ለውጥ ተመሳስሏል',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ለውጦች ለመመሳሰል እየጠበቁ ነው',
      one: '1 ለውጥ ለመመሳሰል እየጠበቀ ነው',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'ለመመሳሰል የሚጠብቁ ለውጦች';

  @override
  String get offlinePendingNone => 'ምንም የሚጠብቅ የለም';

  @override
  String get offlineSyncNow => 'አሁን አመሳስል';

  @override
  String get offlineDiscard => 'ጣል';

  @override
  String get downloadNotOffline => 'ይህ ክፍል አልወረደም፣ ስለዚህ ከመስመር ውጭ አይገኝም';

  @override
  String get offlineModeChip => 'ከመስመር ውጭ';

  @override
  String get downloadNextChapter => 'ቀጣይ ምዕራፍ';

  @override
  String downloadNextChapters(int count) {
    return 'ቀጣይ $count ምዕራፎች';
  }

  @override
  String downloadUnread(int count) {
    return 'ሁሉም ያልተነበቡ ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'ሁሉም ምዕራፎች ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total ገጾች';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count ገጾች';
  }

  @override
  String get downloadFfmpegTitle => 'የFFmpeg ተጨማሪ ያስፈልጋል';

  @override
  String get downloadFfmpegBody =>
      'ይህ ስትሪም የHLS ፕሌይሊስት ነው። የFFmpeg ተጨማሪ ቁርጥራጮቹን ወደ አንድ mp4 ፋይል ያጣምራል። ያለሱ ቁርጥራጮቹ በክፍል አቃፊ ውስጥ ይቆያሉ እና ከዚያ ይጫወታሉ።';

  @override
  String get downloadFfmpegInstall => 'ጫን';

  @override
  String get downloadFfmpegInstalling => 'FFmpeg በመጫን ላይ፣ ጥቂት ሊወስድ ይችላል…';

  @override
  String get downloadFinishing => 'ቁርጥራጮቹን ወደ አንድ ፋይል በማጣመር ላይ…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total ክፍሎች';
  }

  @override
  String get downloadTorrentNoFile => 'ቶረንቱ የሚወርድ የቪዲዮ ፋይል የለውም';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ንጥሎች በማውረድ ላይ',
      one: '1 ንጥል በማውረድ ላይ',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'የታዩ ውርዶችን ሰርዝ';

  @override
  String get downloadAutoDeleteDesc =>
      'እድገትህ ወደዚያ ክፍል ወይም ምዕራፍ ሲደርስ ውርዱን ያስወግዳል';

  @override
  String get downloadConnections => 'በውርድ ግንኙነቶች';

  @override
  String get downloadConnectionsDesc =>
      'ትልቅ ፋይልን በአንድ ጊዜ በሚመጡ ክፍሎች ይከፍላል። አንዳንድ ሰርቨሮች ይህን ይገድባሉ።';

  @override
  String get downloadPlayChoice => 'ከዚህ አጫውት';

  @override
  String get downloadPlayLocalDesc => 'በዚህ መሣሪያ ላይ የተቀመጠው ፋይል';

  @override
  String get downloadPlayStream => 'በኦንላይን ስትሪም አድርግ';

  @override
  String get downloadPlayStreamDesc => 'ክፍሉን ከምንጩ ጫን';

  @override
  String get offlineFeedTitle => 'በዚህ መሣሪያ ላይ ወርዷል';

  @override
  String get offlineFeedEmpty => 'መስመር ላይ እያለህ የሆነ ነገር አውርድ እና እዚህ ይታያል';

  @override
  String get offlineEnabled => 'ከመስመር ውጭ ሁነታ በርቷል';

  @override
  String get offlineDisabled => 'ከመስመር ውጭ ሁነታ ጠፍቷል';

  @override
  String get downloadReadChoice => 'ከዚህ አንብብ';

  @override
  String get downloadReadLocalDesc => 'በዚህ መሣሪያ ላይ የተቀመጡ ገጾች';

  @override
  String get downloadReadOnline => 'በኦንላይን አንብብ';

  @override
  String get downloadReadOnlineDesc => 'ምዕራፉን ከምንጩ ጫን';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name ከዚህ መሣሪያ ይሰረዝ?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'የ$name ውርድ ይሰረዝ? ቀደም ብሎ የወረደው ይሰረዛል።';
  }

  @override
  String get downloadFfmpegFolder => 'እንደ አቃፊ አቆይ';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ያልተላኩ $count ለውጦችን ጣል? ይህ ሊመለስ አይችልም።',
      one: 'ያልተላከውን ለውጥ ጣል? ይህ ሊመለስ አይችልም።',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'ዋይፋይ በመጠበቅ ላይ';

  @override
  String get downloadWaitingMetered => 'በሜትር በተደረገ ግንኙነት ላይ ቆሟል';

  @override
  String get downloadWifiOnly => 'ዋይፋይ ብቻ';

  @override
  String get downloadWifiOnlyDesc => 'በሞባይል ዳታ ላይ እያለህ ውርዶች ይጠብቃሉ';

  @override
  String get downloadMetered => 'በሜትር በተደረጉ ግንኙነቶች ላይ አቁም';

  @override
  String get downloadMeteredDesc => 'መሣሪያህ እንደ ሜትር የሰየመውን ዋይፋይም ይጠብቃል';

  @override
  String get downloadSpeedLimit => 'የፍጥነት ገደብ';

  @override
  String get downloadSpeedLimitDesc => 'ጠቅላላ የውርድ ፍጥነትን ይገድባል';

  @override
  String get downloadUnlimited => 'ያልተገደበ';

  @override
  String get downloadMoveToTop => 'ወደ ላይ አንቀሳቅስ';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds ሲዶች · $peers ፒሮች';
  }

  @override
  String get downloadTorrentFile => 'የትኛው ፋይል?';

  @override
  String get downloadTorrentAuto => 'ክፍሉን በራስ-ሰር አዛምድ';

  @override
  String get downloadTorrentLoading => 'ቶረንቱን በማንበብ ላይ…';

  @override
  String get watchAutoSource => 'በራስ-ሰር ወደ ቀጣዩ ምንጭ ቀይር';

  @override
  String get watchAutoSourceDesc =>
      'ምንጩ ርዕሱን ካላገኘ ወይም መጫን ካልቻለ ቀጣዩን የተጫነ ምንጭ ሞክር';

  @override
  String get extensionTest => 'ኤክስቴንሽኖችን ሞክር';

  @override
  String get extensionTestCopy => 'ውድቀቶቹን ከሎጎቻቸው ጋር ቅዳ';

  @override
  String get extensionTestQuery => 'የፍለጋ ቃል';

  @override
  String get extensionTestRun => 'አሂድ';

  @override
  String get extensionTestStop => 'አቁም';

  @override
  String get extensionTestNone => 'የዚህ ዓይነት የተጫኑ ኤክስቴንሽኖች የሉም';

  @override
  String get extensionTestNotRun => 'ገና አልተሞከረም';

  @override
  String get extensionTestSearch => 'ፈልግ';

  @override
  String get extensionTestDetail => 'ዝርዝሮች';

  @override
  String get extensionTestUnits => 'ክፍሎች / ምዕራፎች';

  @override
  String get extensionTestLinks => 'ስትሪሞች / ገጾች';

  @override
  String extensionTestFailedAt(String step) {
    return 'በ$step ላይ አልተሳካም';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return 'ከ$total $done ተሞክረዋል · $passed አልፈዋል · $failed አልተሳኩም';
  }

  @override
  String get extensionTestCopyLogs => 'ሁሉንም ከሙሉ ሎጎች ጋር ቅዳ';

  @override
  String get onboardingFeaturesTitle => 'ሁሉም በአንድ ቦታ';

  @override
  String get onboardingFeaturesBody =>
      'የምትከታተለው፣ የምትመለከተውና የምታነበው ሁሉ፣ መተግበሪያዎችን ሳትቀያይር።';

  @override
  String get onboardingFeatureTrack => 'ሁሉንም ተከታተል';

  @override
  String get onboardingFeatureTrackDesc =>
      'በAniList፣ MyAnimeList፣ Simkl፣ Kitsu እና MangaBaka ላይ ዝርዝሮች፣ እድገትና ውጤቶች።';

  @override
  String get onboardingFeatureWatch => 'ተመልከትና አንብብ';

  @override
  String get onboardingFeatureWatchDesc =>
      'ኤክስቴንሽኖችን ጫንና አኒሜን ስትሪም አድርግ ወይም ማንጋና ኖቭሎችን በመተግበሪያው ውስጥ አንብብ።';

  @override
  String get onboardingFeatureOffline => 'ከመስመር ውጭም ተጠቀም';

  @override
  String get onboardingFeatureOfflineDesc =>
      'ክፍሎችንና ምዕራፎችን አውርድ እና ያለ ግንኙነት ቀጥል።';

  @override
  String get onboardingFeatureSync => 'ዝርዝሮችን አመሳስል';

  @override
  String get onboardingFeatureSyncDesc =>
      'ዝርዝርህን በአገልግሎቶች መካከል አንጸባርቅ፣ ወይም ወደፊት ያለው ያሸንፍ።';

  @override
  String get onboardingServices => 'የሚሠራው ከ';

  @override
  String sourceNotifyOn(String source) {
    return '$source አዲስ ነገር ሲኖር ይነገርዎታል';
  }

  @override
  String get sourceNotifyOff => 'የልቀት ማሳወቂያዎች ጠፍተዋል።';

  @override
  String get sourceNotifyNeedsSource => 'መጀመሪያ ግጥሚያ ያለው ምንጭ ይምረጡ';

  @override
  String sourceNotifyAllOut(int count) {
    return 'ሁሉም ነገር ($count) ወጥቷል፣ የሚጠብቀው ምንም የለም።';
  }

  @override
  String get sourceNotifyTooltipOn => 'የመልቀቅ ማሳወቂያዎችን አቁም';

  @override
  String get sourceNotifyTooltipOff => 'ስለ አዲስ የተለቀቁ ነገሮች አሳውቀኝ';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'ክፍል $number በ$source ላይ ወጥቷል';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'ክፍሎች $from–$to በ$source ላይ ወጥተዋል';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'ምዕራፍ $number በ$source ላይ ወጥቷል';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'ምዕራፎች $from–$to በ$source ላይ ወጥተዋል';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count ርዕሶች አዲስ ነገር አላቸው።';
  }

  @override
  String get navSources => 'ምንጮች';

  @override
  String sourceInactiveOpen(String manager) {
    return 'ይህ ምንጭ የ$manager ነው፣ እሱም ንቁ የኤክስቴንሽን አገልግሎት አይደለም።';
  }

  @override
  String get sourceAlertsHeader => 'ማሳወቂያዎችን ልቀቅ';

  @override
  String get sourceAlertsSwitch => 'የተመዘገቡ ርዕሶችን ያረጋግጡ';

  @override
  String get sourceAlertsSwitchDesc =>
      'አንድ ጊዜ መተግበሪያው በተከፈተ ቁጥር ለርዕሶች ደወሉን አብርተዋል።';

  @override
  String get sourceSkipUnstarted => 'ያልጀመርካቸውን ርዕሶች ዝለል';

  @override
  String get sourceSkipUnstartedDesc =>
      'እስካሁን ምንም የታየ ወይም የተነበበ ነገር የለም፣ ግን ክፍሎች አስቀድመው አሉ።';

  @override
  String get sourceSkipUnseen => 'የማይታዩ ክፍሎች እያለዎት ይዝለሉ';

  @override
  String get sourceSkipUnseenDesc => 'አሁንም ለመከታተል ክፍሎችን ለቋል';

  @override
  String get sourceManage => 'የደንበኝነት ምዝገባዎች';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ርዕሶች',
      one: '1 ርዕስ',
      zero: 'ርዕሶች የሉም',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'አሁን ያረጋግጡ';

  @override
  String get sourceCheckNowDesc => 'የጊዜ ሰሌዳውን እና የመዝለል ህጎችን ችላ ይላል።';

  @override
  String get sourceChecking => 'በማጣራት ላይ…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ርዕሶች አዲስ ነገር አላቸው።',
      one: '1 ርዕስ አዲስ ነገር አለው።',
      zero: 'ምንም አዲስ ነገር የለም።',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'እስካሁን ምንም ምዝገባዎች የሉም';

  @override
  String get sourceEmptyMessage =>
      'ስለ አዳዲሶች ለመንገር ከአንድ ርዕስ ክፍሎች በላይ ያለውን ደወሉን ይንኩ።';

  @override
  String get sourceAll => 'ሁሉም';

  @override
  String sourceInactive(String manager) {
    return 'የቦዘነ፡ $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source በዚህ የኤክስቴንሽን አገልግሎት ውስጥ አልተጫነም።';
  }

  @override
  String get sourceUnreachable => 'ምንጭ ምላሽ እየሰጠ አይደለም።';

  @override
  String get sourceFinished => 'ጨርሷል';

  @override
  String get sourceSkippedCompleted => 'ተዘሏል፡ ተጠናቀቀ';

  @override
  String get sourceSkippedUnstarted => 'ተዘለለ፡ አልተጀመረም።';

  @override
  String get sourceSkippedUnseen => 'ተዘሏል፡ የማይታዩ ክፍሎች';

  @override
  String get sourceWaiting => 'የሚቀጥለውን ልቀት በመጠበቅ ላይ';

  @override
  String sourceNextCheck(String when) {
    return 'ቀጣይ ቼክ $when';
  }

  @override
  String get sourceSoon => 'በቅርቡ';

  @override
  String sourceInHours(int count) {
    return 'በ$countሰ';
  }

  @override
  String sourceInDays(int count) {
    return 'በ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'የቅርብ ጊዜ: $number';
  }

  @override
  String get sourceMute => 'ድምጸ-ከል አድርግ';

  @override
  String get sourceUnmute => 'ድምጸ-ከል አንሳ';

  @override
  String get sourceMuted => 'ድምጸ-ከል ተደርጓል';

  @override
  String get sourceUnsubscribe => 'ከደንበኝነት ምዝገባ ይውጡ';

  @override
  String get sourcePickAnother => 'ሌላ ምንጭ ይምረጡ';

  @override
  String get sourceOpenExtensions => 'ቅጥያዎችን ይክፈቱ';

  @override
  String get sourceNoticesEmpty => 'እስካሁን ምንም የመልቀቂያ ማስታወቂያዎች የሉም';

  @override
  String get sourceNoticesEmptyMessage =>
      'ከተመዘገቡት ርዕሶችዎ አዳዲስ ክፍሎች እና ምዕራፎች እዚህ ይታያሉ';

  @override
  String get sourceOpenTitle => 'ርዕስ ክፈት';

  @override
  String get extensionsLoading => 'ቅጥያዎችን በመጫን ላይ…';

  @override
  String get updateWhatsNew => 'ምን አዲስ ነገር አለ';

  @override
  String get updateLater => 'በኋላ';

  @override
  String get updateSkipVersion => 'ይህን ስሪት ይዝለሉት።';

  @override
  String get updatePreparing => 'በማዘጋጀት ላይ…';

  @override
  String get updateDownloading => 'በማውረድ ላይ';

  @override
  String get updateInstalling => 'በመጫን ላይ…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done የ$total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/ሰ';
  }

  @override
  String updateReleased(String date) {
    return 'የተለቀቀው $date';
  }

  @override
  String get updateNoAsset => 'ይህ ልቀት ለመሣሪያዎ ምንም ማውረድ የለውም';

  @override
  String get updateUpToDate => 'በአዲሱ ስሪት ላይ ነዎት';

  @override
  String get updateIosHint =>
      'የiOS ግንባታዎች በApp Store ላይ አይደሉም። .ipaን ከመልቀቂያ ገጹ ያዙት እና በ AltStore ወይም SideStore ይጫኑት።';

  @override
  String get updateOpenedBrowser => 'አሳሽዎን ያረጋግጡ';

  @override
  String get updateTryAgain => 'እንደገና ይሞክሩ';

  @override
  String get settingsNotifications => 'ማሳወቂያዎች';

  @override
  String get settingsNotificationsDesc =>
      'ለዝርዝሮችዎ፣ ለአዳዲስ ክፍሎችዎ እና ምዕራፎችዎ እና ለአስተያየቶችዎ ምላሾች ማንቂያዎች';

  @override
  String get settingsAboutUpdates => 'ስለ እና ዝመናዎች';

  @override
  String get settingsAboutUpdatesDesc =>
      'የመተግበሪያ ዝማኔዎች፣ ሥሪት፣ ምዝግብ ማስታወሻዎች፣ አገናኞች እና ድጋፍ';

  @override
  String get settingsGroupAccount => 'መለያህ';

  @override
  String get settingsGroupContent => 'ይዘት';

  @override
  String get settingsGroupApp => 'መተግበሪያ';

  @override
  String get settingsAnimeDesc =>
      'ተጫዋች፣ የትርጉም ጽሑፎች፣ መዝለል፣ የትዕይንት ክፍል ዝርዝር እና የትዕይንት ክፍል ዝርዝሮች';

  @override
  String get settingsMangaDesc => 'የአንባቢ ሁነታ, መቆጣጠሪያዎች, ማሳያ እና ምዕራፍ መከታተል';

  @override
  String get settingsNovelDesc => 'ጽሑፍ ፣ ገጽ ማዞር ፣ መተርጎም እና ጮክ ብለው ያንብቡ';

  @override
  String get settingsLocalPlay => 'የአካባቢ ጨዋታ';

  @override
  String get settingsLocalPlayDesc =>
      'ፋይሎችን፣ አቃፊዎችን፣ የአውታረ መረብ ዥረቶችን እና ጅረቶችን ይጫወቱ ወይም መጽሐፍ ይክፈቱ';

  @override
  String get settingsLocalPlayVideo => 'ቪዲዮ';

  @override
  String get settingsLocalPlayBooks => 'መጽሐፍት።';

  @override
  String get settingsWatchSections => 'ክፍሎች';

  @override
  String get settingsSectionLists => 'የትዕይንት ክፍል እና የምዕራፍ ዝርዝሮች';

  @override
  String get settingsSectionProgress => 'የሂደት ክትትል';

  @override
  String get updateChannelDesc =>
      'የተረጋጋ የተፈተነ ልቀት ነው። ቅድመ-መለቀቅ እና አልፋ አዳዲስ ባህሪያትን በቅርቡ ያገኛሉ ነገር ግን ሊሰበር ይችላል።';

  @override
  String get checkNowDesc => 'ወዲያውኑ አዲስ ስሪት ይፈልጉ';

  @override
  String get generalSectionBasics => 'ቋንቋ እና ባህሪ';

  @override
  String get generalSectionSecurity => 'ደህንነት';

  @override
  String get generalSectionPrivacy => 'ግላዊነት';

  @override
  String notificationsOtherService(String service) {
    return 'ይህንን ለመክፈት ወደ $service ይቀይሩ';
  }

  @override
  String get secPlayerPlayback =>
      'በሥዕሉ ላይ ያለው ነባሪ ፍጥነት፣ ራስ-አጫውት፣ የቪዲዮ ብቃት፣ አቀማመጥ እና ሥዕል';

  @override
  String get secPlayerSkip => 'ክፍተቶችን ፣ መጨረሻዎችን እና መግለጫዎችን በራስ-ሰር ይዝለሉ';

  @override
  String get secPlayerControls => 'ምልክቶችን ያንሸራትቱ ፣ ይያዙ እና ይንኩ እና ቅድመ እይታን ይፈልጉ';

  @override
  String get secPlayerSubtitles => 'ቋንቋዎች፣ መልክ እና የትርጉም ጽሑፍ አተረጓጎም';

  @override
  String get secPlayerShaders => 'አኒሜ ማደግ እና የእራስዎ ጥላዎች';

  @override
  String get secPlayerEngine =>
      'ዲኮደር ፣ ቪዲዮ እና ኦዲዮ ውፅዓት ፣ ማቋት ። መልሶ ማጫወት ችግር ካጋጠመው ብቻ እነዚህን ይቀይሩ';

  @override
  String get secPlayerMpv => 'mpv.conf፣ ስክሪፕቶች እና የላቀ ማስተካከያ';

  @override
  String get secAnimeList => 'ክፍሎችን መሙላት እና የማይታዩ ድንክዬዎች';

  @override
  String get secProgress => 'የተመለከቱት ወይም ያነበቡት ሂደት ወደ ዝርዝርዎ ሲቀመጥ';

  @override
  String get secAnimeDetails => 'የትዕይንት ክፍል ርዕሶች፣ ድንክዬዎች እና ማጠቃለያዎች ከየት እንደመጡ';

  @override
  String get secReaderReading => 'የንባብ ሁነታ፣ ገጽ መዞር፣ ማጉላት እና ቀጣይ ምዕራፍ';

  @override
  String get secReaderControls => 'ዞኖችን፣የድምጽ ቁልፎችን እና በራስ-ማሸብለልን መታ ያድርጉ';

  @override
  String get secReaderDisplay => 'ዳራ፣ ብሩህነት፣ ሙሉ ማያ ገጽ እና የገጽ ቁጥር';

  @override
  String get secNovelText => 'ቅርጸ-ቁምፊ፣ መጠን፣ ክፍተት፣ ህዳጎች እና ገጽ መዞር';

  @override
  String get secNovelTranslate => 'በምታነብበት ጊዜ ምዕራፎችን ተርጉም።';

  @override
  String get secNovelSpeech => 'ድምጽ፣ ፍጥነት እና ድምጽ ጮክ ብሎ ለማንበብ';

  @override
  String get secNotifyAbout => 'የትኛውን አይነት እንቅስቃሴ ማንቂያ እንደሚልክ ይምረጡ';

  @override
  String get layoutTitle => 'አቀማመጥ';

  @override
  String get layoutDesc => 'በቡናዎቹ ላይ ያሉትን ቁልፎች ይምረጡ ፣ ያንቀሳቅሱ እና ይደብቁ';

  @override
  String get layoutHint =>
      'እሱን ለማንቀሳቀስ አንድ ቁልፍ ይጎትቱ (መጀመሪያ በሚነካ ማያ ገጽ ላይ ይያዙ)። ለመቁረጥ፣ ለማንቀሳቀስ ወይም ለመደበቅ አንዱን ነካ ያድርጉ';

  @override
  String layoutDropInto(String zone) {
    return 'አስገባ፡ $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'በማንቀሳቀስ ላይ $name ለማስቀመጥ የመለጠፍ ቁልፍን ይጫኑ';
  }

  @override
  String get layoutTitleFixed => 'ርዕስ';

  @override
  String get layoutZoneTopStart => 'ከፍተኛ አሞሌ፣ ከርዕሱ በፊት';

  @override
  String get layoutZoneTopEnd => 'ከፍተኛ አሞሌ፣ ከርዕሱ በኋላ';

  @override
  String get layoutZoneBottomStart => 'የታችኛው አሞሌ፣ ግራ';

  @override
  String get layoutZoneBottomEnd => 'የታችኛው አሞሌ፣ ትክክል';

  @override
  String get layoutZoneSecondRow => 'የተደበቀ፡ ሁለተኛ ረድፍ በመደበኛ እይታ';

  @override
  String get layoutZoneOverflow => 'የተደበቀ: በብዙ ምናሌ ውስጥ';

  @override
  String get layoutEmptyZone => 'አዝራሮችን እዚህ ጣል ያድርጉ';

  @override
  String get layoutCut => 'ቁረጥ';

  @override
  String get layoutPaste => 'እዚህ ለጥፍ';

  @override
  String get layoutHide => 'ደብቅ';

  @override
  String layoutMoveTo(String zone) {
    return 'ወደ $zone ውሰድ';
  }

  @override
  String get layoutReset => 'ወደ ነባሪ ዳግም አስጀምር';

  @override
  String get layoutMore => 'ተጨማሪ';

  @override
  String get sourceWhyAction => 'ለምን ማንቂያ የለም?';

  @override
  String get sourceWhyStatus => 'ሁኔታ';

  @override
  String get sourceWhyLastCheck => 'መጨረሻ የተፈተሸ';

  @override
  String get sourceWhyNever => 'ገና አይደለም';

  @override
  String get sourceWhyNextCheck => 'ቀጣይ ቼክ';

  @override
  String get sourceWhyNewest => 'ከምንጩ በጣም አዲስ';

  @override
  String get sourceWhyProgress => 'እድገትህ';

  @override
  String get sourceWhyListStatus => 'የዝርዝር ሁኔታ';

  @override
  String get sourceWhyFailures => 'ያልተሳኩ ቼኮች በተከታታይ';

  @override
  String get sourceWhyLastRelease => 'የመጨረሻው አዲስ ልቀት ታይቷል።';

  @override
  String get sourceWhyVerdictNew =>
      'ምንጩ እንደዘረዘረው እና ቀጣዩ ቼክ እንደቀጠለ አዲስ ልቀት እዚህ ይታያል።';

  @override
  String get sourceWhyVerdictAhead =>
      'ምንጩ ከእድገትህ አስቀድሞ ነው፣ ስለዚህ አንድ ጊዜ ተነግሯችኋል። የሚቀጥለውን ማንቂያ ለማግኘት አንብበው ወይም ይጠብቁት።';

  @override
  String get sourceWhyVerdictSkipped =>
      'ይህ ርዕስ ከላይ ባሉት ደንቦች ተዘሏል. በማሳወቂያ ቅንብሮች ውስጥ ይቀይሯቸው ወይም ለማንኛውም ለማስኬድ አሁኑን ፈትሹን ይጠቀሙ።';

  @override
  String get sourceWhyVerdictBroken =>
      'ምንጩ ሊደረስበት ወይም ሊወገድ አይችልም፣ ስለዚህ ምንም እየተጣራ አይደለም።';

  @override
  String get sourceWhyVerdictMuted => 'ይህ የደንበኝነት ምዝገባ ድምጸ-ከል ተደርጓል።';

  @override
  String get externalPlayerTitle => 'ዥረት ወደ ሌላ ቦታ ክፈት';

  @override
  String get externalCopyUrl => 'የዥረት አገናኝ ቅዳ';

  @override
  String get externalCopied => 'የዥረት ማገናኛ ተቀድቷል።';

  @override
  String get externalChooser => 'በሌላ መተግበሪያ ውስጥ ክፈት';

  @override
  String get externalVlc => 'በVLC ውስጥ ክፈት';

  @override
  String get externalMpv => 'በmpv ውስጥ ክፈት';

  @override
  String get externalWebVideoCast => 'የድር ቪዲዮ ቀረጻ';

  @override
  String get castViaAppHint => 'ዥረቱን ወደ የድር ቪዲዮ ውሰድ መተግበሪያ ላክ';

  @override
  String get externalFailed => 'ዥረቱን መክፈት አልተቻለም። ተጫዋቹ ተጭኗል?';

  @override
  String get addonInstalled => 'ተጭኗል';

  @override
  String get loadFailedActivity => 'እንቅስቃሴን መጫን አልተቻለም';

  @override
  String get loadFailedFavourites => 'ተወዳጆችን መጫን አልተቻለም። እንደገና ይሞክሩ';

  @override
  String get loadFailedStats => 'ስታቲስቲክስን መጫን አልተቻለም';

  @override
  String get loadFailedReplies => 'ምላሾችን መጫን አልተቻለም';

  @override
  String get cantBeUndone => 'ይህ ሊቀለበስ አይችልም።';

  @override
  String get searchTags => 'መለያዎችን ይፈልጉ';

  @override
  String get spoilerTapToView => 'ስፒለር፣ ለማየት ነካ ያድርጉ';

  @override
  String get mediaVideo => 'ቪዲዮ';

  @override
  String get notificationSomeone => 'አንድ ሰው';

  @override
  String get notificationATitle => 'ርዕስ';

  @override
  String get notificationAddedDetail => 'ወደ AniList ታክሏል።';

  @override
  String get updateNoReleases => 'ምንም የተለቀቁ አልተገኙም።';

  @override
  String get updateInvalidResponse => 'የተሳሳተ የዝማኔ ምላሽ';

  @override
  String get commentsRateLimited => 'ተመን ተገድቧል';

  @override
  String get commentsConnectFailed => 'መገናኘት አልተሳካም።';

  @override
  String get dnsNoRecords => 'ምንም A መዝገቦች አልተመለሱም።';

  @override
  String get importTokenRejected => 'ማስመሰያ ተቀባይነት አላገኘም።';

  @override
  String get developerRoleLead => 'መሪ ገንቢ';

  @override
  String get developerRoleModerator => 'ዲስኮርድ አወያይ';

  @override
  String extensionManagerTitle(String type) {
    return '$type አስተዳዳሪ';
  }

  @override
  String extensionsOfType(String type) {
    return '$type ቅጥያዎች';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name ቅንብሮች';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name ምንም ቅንጅቶችን አያቀርብም።';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'የ$title ክፍል $episode ተላልፏል';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'ክፍል $episode ተላልፏል';
  }

  @override
  String notificationAdded(String title) {
    return '$title ወደ AniList ታክሏል።';
  }

  @override
  String updateNotFound(String message) {
    return 'የዝማኔ አገልጋይ ያንን ልቀት ሊያገኘው አልቻለም፡$message';
  }

  @override
  String get installStepJre => 'የጃቫ ሩጫ ጊዜ';

  @override
  String get installStepCore => 'የአሂድ ጊዜ ኮር';

  @override
  String installStepsProgress(int current, int total) {
    return 'ደረጃ $current ከ$total';
  }

  @override
  String get stepWaiting => 'በመጠበቅ ላይ';

  @override
  String get stepChecking => 'በማጣራት ላይ…';

  @override
  String get stepUpToDate => 'የዘመነ';

  @override
  String stepUpToDateWith(String detail) {
    return 'የዘመነ · $detail';
  }

  @override
  String get stepWillInstall => 'ይጫናል';

  @override
  String get stepWillUpdate => 'ይዘመናል።';

  @override
  String stepWillUpdateTo(String version) {
    return 'ወደ $version ይዘምናል';
  }

  @override
  String get stepInstalled => 'ተጭኗል';

  @override
  String get stepNotNeeded => 'እዚህ አያስፈልግም';

  @override
  String get stepFailed => 'አልተሳካም።';

  @override
  String stepFailedWith(String reason) {
    return 'አልተሳካም: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'በJava Runtime እና በጋራ Runtime ኮር ላይ ይሰራል። መጀመሪያ ተጭነዋል፣ እና ከተቀየሩ ይዘምናሉ።';

  @override
  String get installRuntimeNewer => 'ይህ አስተዳዳሪ የሚሠራበት የአሂድ ጊዜ ማሻሻያ አለው።';

  @override
  String get removeJvmTitle => 'የጃቫ አሂድ ጊዜ ይወገድ?';

  @override
  String get removeJvmMessage =>
      'የዴስክቶፕ ኤክስቴንሽን አስተዳዳሪዎች እንደገና እስኪጫኑ ድረስ መስራት ያቆማሉ። በሚቀጥለው ጊዜ ሲጭኑ ወይም ሲከፍቱ እንደገና ይወርዳል።';

  @override
  String get runtimePreparing => 'የማስኬጃ ሰዓቱን በማዘጋጀት ላይ…';

  @override
  String get calendarAll => 'ሁሉም';

  @override
  String get calendarAnime => 'አኒሜ';

  @override
  String get calendarManga => 'ማንጋ';

  @override
  String get readerCloudflare => 'በአሳሽ ውስጥ ክፈት (Cloudflare check)';

  @override
  String get badgeBoardHint =>
      'ባጅ ወደ መጀመሪያው ካርድ ጥግ ይጎትቱት ወይም እሱን ለማንቀሳቀስ ባጅ ቀድሞውን ይጎትቱት። ባጆች ቦታዎችን ይለዋወጣሉ፣ ስለዚህ ማንም በጭራሽ አይደራረብም። እሱን ለማብራት ወይም ለማጥፋት ከታች ያለውን ባጅ ይንኩ።';

  @override
  String get statusAuto => 'መኪና';

  @override
  String get unreadCounter => 'ያልተነበበ ቆጣሪ';

  @override
  String get unreadCounterDesc => 'በፖስተሮች ላይ ስንት ክፍሎች ወይም ምዕራፎች እንደቀሩ አሳይ';

  @override
  String get settingsShortcuts => 'የቁልፍ ሰሌዳ አቋራጮች';

  @override
  String get settingsShortcutsDesc => 'እያንዳንዱን ቁልፍ ይመልከቱ፣ ይቀይሩ እና ያጥፉ';

  @override
  String get shortcutGroupApp => 'መተግበሪያ';

  @override
  String get shortcutGroupPlayer => 'ቪዲዮ ማጫወቻ';

  @override
  String get shortcutGroupReader => 'አንባቢ';

  @override
  String get shortcutsEnableApp => 'የመተግበሪያ አቋራጮች';

  @override
  String get shortcutsEnablePlayer => 'የተጫዋች አቋራጮች';

  @override
  String get shortcutsEnableReader => 'የአንባቢ አቋራጮች';

  @override
  String get shortcutsEnableDesc => 'በዚህ ቡድን ውስጥ ያሉትን ሁሉንም ቁልፎች ያብሩ ወይም ያጥፉ';

  @override
  String get shortcutNotSet => 'አልተዘጋጀም።';

  @override
  String get shortcutAddKey => 'ቁልፍ ጨምር';

  @override
  String get shortcutResetOne => 'ወደ ነባሪ ዳግም አስጀምር';

  @override
  String get shortcutClearKeys => 'ሁሉንም ቁልፎች አስወግድ';

  @override
  String get shortcutResetAll => 'ሁሉንም አቋራጮች ዳግም ያስጀምሩ';

  @override
  String get shortcutResetAllDesc => 'እያንዳንዱን ቁልፍ ወደ ነባሪ ይመልሱ';

  @override
  String get shortcutPress => 'የሚፈልጉትን ቁልፍ ወይም ጥምር ይጫኑ';

  @override
  String get shortcutPressHint =>
      'እያንዳንዱ ጥምረት የአንድ ድርጊት ብቻ ሊሆን ይችላል፣ ስለዚህ አንዱን መውሰድ ያንቀሳቅሰዋል።';

  @override
  String get shortcutSeekPercent => 'ወደ ቪዲዮው ነጥብ ይዝለሉ';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'ተመለስ';

  @override
  String get shortcutAppFullscreen => 'ሙሉ ስክሪን ቀይር';

  @override
  String get shortcutAppGlass => 'የመስታወት ሁነታን ቀይር';

  @override
  String get shortcutAppMaterialYou => 'ቁሳቁስ እርስዎን ይቀያይሩ';

  @override
  String get shortcutAppDark => 'የጨለማ ሁነታን ቀይር';

  @override
  String get shortcutAppOled => 'OLED ጥቁር ቀያይር';

  @override
  String get shortcutAppSearch => 'ፍለጋን ክፈት';

  @override
  String get shortcutAppSettings => 'ቅንብሮችን ይክፈቱ';

  @override
  String get shortcutAppDownloads => 'ውርዶችን ይክፈቱ';

  @override
  String get shortcutAppNotifications => 'ማሳወቂያዎችን ክፈት';

  @override
  String get shortcutAppIncognito => 'ማንነት የማያሳውቅ ቀይር';

  @override
  String get shortcutAppShortcuts => 'የቁልፍ ሰሌዳ አቋራጮችን አሳይ';

  @override
  String get shortcutPlayerPlayPause => 'ይጫወቱ ወይም ለአፍታ ያቁሙ';

  @override
  String get shortcutPlayerSeekForward => 'ወደፊት ይፈልጉ';

  @override
  String get shortcutPlayerSeekBack => 'መልሰው ይፈልጉ';

  @override
  String get shortcutPlayerSeekForwardLong => '30 ሰከንድ ወደፊት ይፈልጉ';

  @override
  String get shortcutPlayerSeekBackLong => '30 ሰከንድ ወደ ኋላ ይፈልጉ';

  @override
  String get shortcutPlayerFrameForward => 'ቀጣይ ፍሬም';

  @override
  String get shortcutPlayerFrameBack => 'የቀድሞ ፍሬም';

  @override
  String get shortcutPlayerVolumeUp => 'ድምጽ ጨምር';

  @override
  String get shortcutPlayerVolumeDown => 'የድምጽ መጠን ይቀንሳል';

  @override
  String get shortcutPlayerMute => 'ድምጸ-ከል አድርግ';

  @override
  String get shortcutPlayerFullscreen => 'ሙሉ ስክሪን';

  @override
  String get shortcutPlayerNext => 'ቀጣይ ክፍል';

  @override
  String get shortcutPlayerPrevious => 'ያለፈው ክፍል';

  @override
  String get shortcutPlayerSkip => 'መግቢያ ወይም መጨረስ ይዝለሉ';

  @override
  String get shortcutPlayerPanel => 'የትዕይንት ክፍል ዝርዝር';

  @override
  String get shortcutPlayerSpeedUp => 'ፈጣን መልሶ ማጫወት';

  @override
  String get shortcutPlayerSpeedDown => 'ቀርፋፋ መልሶ ማጫወት';

  @override
  String get shortcutPlayerSpeedReset => 'መደበኛ ፍጥነት';

  @override
  String get shortcutPlayerSubtitleToggle => 'የትርጉም ጽሑፎች በርተዋል ወይም ጠፍቷል';

  @override
  String get shortcutPlayerSubtitleCycle => 'ቀጣይ የትርጉም ጽሑፍ ትራክ';

  @override
  String get shortcutPlayerAudioCycle => 'ቀጣይ የድምጽ ትራክ';

  @override
  String get shortcutPlayerStreamCycle => 'ቀጣይ ዥረት';

  @override
  String get shortcutPlayerFit => 'የቪዲዮ ተስማሚ ለውጥ';

  @override
  String get shortcutReaderRight => 'ገጽ ወደ ቀኝ';

  @override
  String get shortcutReaderLeft => 'ገጽ ወደ ግራ';

  @override
  String get shortcutReaderNextPage => 'ቀጣይ ገጽ';

  @override
  String get shortcutReaderPreviousPage => 'ያለፈው ገጽ';

  @override
  String get shortcutReaderControls => 'መቆጣጠሪያዎችን አሳይ ወይም ደብቅ';

  @override
  String get shortcutReaderNextChapter => 'ቀጣይ ምዕራፍ';

  @override
  String get shortcutReaderPreviousChapter => 'ያለፈው ምዕራፍ';

  @override
  String shortcutTaken(String action) {
    return 'ከ$action የተወሰደ';
  }

  @override
  String get incognitoTurnedOn => 'ማንነት የማያሳውቅ ሁነታ በርቷል።';

  @override
  String get incognitoTurnedOff => 'ማንነት የማያሳውቅ ሁነታ ጠፍቷል';

  @override
  String get onHoldAnime => 'በማቆያ አኒም ላይ';

  @override
  String get onHoldManga => 'ማንጋ ተይዟል።';

  @override
  String get droppedAnime => 'አኒም ተጥሏል።';

  @override
  String get droppedManga => 'የወረደ ማንጋ';

  @override
  String get generalSectionDesktop => 'ዴስክቶፕ';

  @override
  String get closeAction => 'መስኮቱ ሲዘጋ';

  @override
  String get closeActionQuit => 'መተግበሪያውን ያቋርጡ';

  @override
  String get closeActionWhenBusy => 'የሆነ ነገር እየሄደ እያለ በትሪው ውስጥ መሮጥዎን ይቀጥሉ';

  @override
  String get closeActionAlways => 'ሁልጊዜ በትሪ ውስጥ መሮጥዎን ይቀጥሉ';

  @override
  String get closeActionNoTray => 'የስርዓት መሣቢያው እዚህ የለም፣ ስለዚህ መተግበሪያው ሲዘጋ ያቆማል';

  @override
  String get gamepadNav => 'የጨዋታ ሰሌዳ አሰሳ';

  @override
  String get gamepadNavDesc => 'በመተግበሪያው ዙሪያ ይንቀሳቀሱ እና ተጫዋቹን በጨዋታ መቆጣጠሪያ ይቆጣጠሩ';

  @override
  String get trayShow => 'Dartotsu አሳይ';

  @override
  String get trayQuit => 'አቁም';

  @override
  String get trayIdle => 'ምንም የሚሮጥ የለም።';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ንጥሎችን በማውረድ ላይ',
      one: '$count ንጥል በማውረድ ላይ',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'ዝርዝሮችዎን በማመሳሰል ላይ';

  @override
  String get trayUpdating => 'መተግበሪያውን በማዘመን ላይ';

  @override
  String get trayPlaying => 'በትንሽ መስኮት ውስጥ መጫወት';

  @override
  String get traySearch => 'ፈልግ';

  @override
  String get trayPauseDownloads => 'ውርዶችን ለአፍታ አቁም';

  @override
  String get trayResumeDownloads => 'ማውረዶችን ከቆመበት ቀጥል';

  @override
  String get playerDownloadTitle => 'ማጫወቻውን በማውረድ ላይ';

  @override
  String get playerDownloadBody =>
      'ዳርቶትሱ የቪዲዮ ሞተሩን አንዴ ያመጣል። መልሶ ማጫወት ልክ እንደተዘጋጀ ይጀምራል።';

  @override
  String get playerDownloadStarting => 'ማውረዱን በመጀመር ላይ…';

  @override
  String get playerDownloadFailedTitle => 'ተጫዋቹን ማግኘት አልተቻለም';

  @override
  String get playerDownloadFailedBody =>
      'ግንኙነትዎን ይፈትሹ እና እንደገና ይሞክሩ። ማውረዱ በቆመበት ቦታ ይነሳል።';

  @override
  String get playerDownloadRetry => 'እንደገና ይሞክሩ';

  @override
  String get playerDownloadCopy => 'ዝርዝሮችን ይቅዱ';

  @override
  String get removePlayerTitle => 'ተጫዋቹ ይወገድ?';

  @override
  String get removePlayerMessage => 'ተጫዋቹ እንደገና እስኪወርድ ድረስ ቪዲዮዎች መጫወት አይችሉም።';

  @override
  String get trailerLoading => 'የፊልም ማስታወቂያውን በመጫን ላይ…';

  @override
  String get trailerFailed => 'ተጎታችውን እዚህ ማጫወት አልተቻለም፣ በአሳሹ ውስጥ ይከፍታል።';
}
