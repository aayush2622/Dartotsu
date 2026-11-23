// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Anime & Manga ට්‍රැක් කරන්න\nඅලුත්ම හොඳම ඇප් එක';

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
  String get loadMore => 'තවත් ලෝඩ් කරන්න';

  @override
  String get login => 'ලොගින් වෙන්න';

  @override
  String get continueAsGuest => 'ගෙස්ට් විදියට ඉස්සරහට යන්න';

  @override
  String get getStarted => 'පටන් ගමු';

  @override
  String get loginWithToken => 'ටෝකන් එකෙන් ලොගින් වෙන්න';

  @override
  String get pasteTokenHint => 'ඔයාගේ ඇක්සස් ටෝකන් එක පේස්ට් කරන්න';

  @override
  String loginTo(String service) {
    return '$service එකට ලොගින් වෙන්න';
  }

  @override
  String get settings => 'සැකසුම්';

  @override
  String get account => 'ගිණුම';

  @override
  String get about => 'ගැන';

  @override
  String get language => 'භාෂාව';

  @override
  String get animationSpeed => 'ඇනිමේෂන්';

  @override
  String get animationSpeedDesc =>
      'ඇප් එකේ ට්‍රාන්සිෂන් සහ එන්ට්‍රි ඉෆෙක්ට්ස් වල වේගය';

  @override
  String get animationSpeedOff => 'ඕෆ්';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'දිගු',
      one: 'දිගුව',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'නොදන්නා සෝස් එකක්';

  @override
  String get install => 'ඉන්ස්ටෝල් කරන්න';

  @override
  String get update => 'අප්ඩේට් කරන්න';

  @override
  String get uninstall => 'අන්ඉන්ස්ටෝල් කරන්න';

  @override
  String get updateInstallCancelled =>
      'ස්ථාපනය අවලංගු වුණා. ස්ථාපිත ඇප් එක සමඟ ගැටෙනවා කියා Android කිව්වොත්, අත්සන වෙනස්: මුලින් දැන් තියෙන සංස්කරණය අස්ථාපනය කරලා, ඊට පස්සේ යාවත්කාලීනය ස්ථාපනය කරන්න';

  @override
  String updateInstallFailed(String error) {
    return 'යාවත්කාලීනය වුණේ නෑ: $error';
  }

  @override
  String get appLock => 'ඇප් ලොක්';

  @override
  String get appLockDesc =>
      'ඇප් එක ඇරද්දී හෝ ටික වෙලාවකට පස්සේ ආපහු එද්දී පාස්කෝඩ් එක අහනවා';

  @override
  String get appLockBiometric => 'ජෛවමිතික සමඟ අගුළු හරින්න';

  @override
  String get appLockBiometricDesc =>
      'මුරකේතය ටයිප් කරනවා වෙනුවට ඔබේ ඇඟිලි සලකුණ හෝ මුහුණ භාවිත කරන්න';

  @override
  String get appLockBiometricReason => 'Dartotsu අගුළු හරින්න';

  @override
  String get appLockDelay => 'අක්‍රිය විට අගුලු දමන්න';

  @override
  String get appLockDelayAlways => 'සෑම විටම';

  @override
  String get appLockDelayNever => 'කවදාවත් නැහැ';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count විනාඩි',
      one: 'විනාඩි 1 යි',
    );
    return 'පසු $_temp0';
  }

  @override
  String get appLockUseBiometric => 'ජෛවමිතික භාවිතා කරන්න';

  @override
  String get appLockUnlock => 'ඔයාගේ පාස්කෝඩ් එක දාන්න';

  @override
  String get appLockWrong => 'පාස්කෝඩ් එක වැරදියි';

  @override
  String appLockWait(String seconds) {
    return 'උත්සාහ කරලා ඉවරයි, තත්පර $secondsක් ඉන්න';
  }

  @override
  String get appLockNew => 'පාස්කෝඩ් එකක් තෝරන්න';

  @override
  String get appLockNewHint => 'ඉලක්කම් 4 සිට 8 දක්වා';

  @override
  String get appLockConfirm => 'ආයෙත් දාන්න';

  @override
  String get appLockMismatch => 'පාස්කෝඩ් දෙක ගැළපෙන්නෙ නෑ';

  @override
  String get appLockOn => 'පාස්කෝඩ් එක සෙට් වුණා';

  @override
  String get appLockRemoveTitle => 'ලොක් එක ඕෆ් කරන්න පාස්කෝඩ් එක දාන්න';

  @override
  String get installFailed => 'ඉන්ස්ටෝල් කරන්න බැරි වුණා';

  @override
  String get updateFailed => 'අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count යාවත්කාලීන තිබේ',
      one: '1 යාවත්කාලීනයක් තිබේ',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'සියල්ල යාවත්කාලීන කරන්න';

  @override
  String extensionsUpdated(int done, int total) {
    return '$total දිගු වල $done යාවත්කාලීන කරන ලදී';
  }

  @override
  String get updateConflictTitle => 'යාවත්කාලීන ස්ථාපනය කර නැත';

  @override
  String updateConflictBody(String names) {
    return '$names පවතින අනුවාදය මත ස්ථාපනය කළ නොහැක. මෙයින් අදහස් වන්නේ ස්ථාපිත පිටපත වෙනස් ලෙස අත්සන් කර ඇති බවයි. එය අස්ථාපනය කර නව අනුවාදය ස්ථාපනය කරන්නද?';
  }

  @override
  String get updateConflictAction => 'අස්ථාපනය කර නැවත ස්ථාපනය කරන්න';

  @override
  String get noSourceSettings => 'මේ සෝස් එකට සැකසුම් නෑ';

  @override
  String get addPluginRepository => 'ප්ලගින් රෙපෝ එකක් එකතු කරන්න';

  @override
  String get pluginIndexUrlHint => 'ප්ලගින් ඉන්ඩෙක්ස් URL එක';

  @override
  String get addRepository => 'රෙපෝ එක එකතු කරන්න';

  @override
  String get importRepositoryFile => 'ගොනුවක් ආයාත කරන්න';

  @override
  String get pluginRepoUpdated => 'ප්ලගින් රෙපෝ එක අප්ඩේට් වුණා';

  @override
  String get pluginRepoUpdateFailed =>
      'ප්ලගින් රෙපෝ එක රිෆ්‍රෙෂ් කරන්න බැරි වුණා';

  @override
  String get ok => 'හරි';

  @override
  String get cancel => 'අවලංගු කරන්න';

  @override
  String get yes => 'ඔව්';

  @override
  String get no => 'නෑ';

  @override
  String get save => 'සේව් කරන්න';

  @override
  String get reset => 'රීසෙට් කරන්න';

  @override
  String get clear => 'මකන්න';

  @override
  String get test => 'ටෙස්ට් කරන්න';

  @override
  String get testing => 'ටෙස්ට් කරනවා…';

  @override
  String get resolving => 'රිසෝල්ව් කරනවා…';

  @override
  String get none => 'කිසිවක් නෑ';

  @override
  String get selectMediaService => 'මීඩියා සර්විස් එක තෝරන්න';

  @override
  String get manageServices => 'මාධ්ය සේවා';

  @override
  String get manageServicesDesc =>
      'සේවාවන් නැවත ඇණවුම් කර පිකර් තුළ පෙන්වන ඒවා තෝරන්න';

  @override
  String get manageServicesHint =>
      'නැවත ඇණවුම් කිරීමට අදින්න, ඔබ භාවිතා නොකරන ඒවා ක්‍රියා විරහිත කරන්න';

  @override
  String get pickColor => 'පාටක් තෝරන්න';

  @override
  String get colorPickerCustom => 'කස්ටම්';

  @override
  String get colorPickerTransparent => 'විනිවිද පෙනෙන';

  @override
  String get ltr => 'වමේ සිට දකුණට';

  @override
  String get searchSettings => 'සැකසුම් හොයන්න';

  @override
  String nothingMatches(String query) {
    return '\"$query\" එකට ගැලපෙන දෙයක් නෑ';
  }

  @override
  String searchCategory(String category) {
    return '$category හොයන්න';
  }

  @override
  String get settingsAppearance => 'පෙනුම';

  @override
  String get settingsAppearanceDesc => 'තීම්, පාට, ග්ලාස් මෝඩ්';

  @override
  String get settingsGeneral => 'සාමාන්‍ය';

  @override
  String get settingsGeneralDesc => 'භාෂාව සහ ඇප් එකේ හැසිරීම';

  @override
  String get settingsNetwork => 'ජාලය';

  @override
  String get settingsNetworkDesc =>
      'පරිශීලක නියෝජිතයා, සහතික, DNS සහ ප්‍රොක්සි';

  @override
  String get settingsAccountDesc => 'ට්‍රැකින් සර්විස් සහ සයින් ඉන්';

  @override
  String get settingsUpdates => 'අප්ඩේට්ස්';

  @override
  String get amoledBlack => 'AMOLED කළු';

  @override
  String get amoledBlackDesc => 'ඩාර්ක් මෝඩ් එකේදී සම්පූර්ණ කළු පෘෂ්ඨ';

  @override
  String get glassMode => 'ග්ලාස් මෝඩ්';

  @override
  String get glassModeDesc => 'ඔයාගේ ලයිබ්‍රරි ආට් උඩින් මීදුම් පෘෂ්ඨ';

  @override
  String get shelfFrame => 'සෙක්ෂන් වටේ ෆ්‍රේම් එක';

  @override
  String get shelfFrameDesc =>
      'හැම ෂෙල්ෆ් එකක් පිටිපස්සෙම කාඩ් එකක් පෙන්වන්න, නැත්නම් පේළි කෙලින්ම පේජ් එක උඩ තියන්න';

  @override
  String get settingsExtensionsDesc =>
      'සෝස් මැනේජර්ස්, රෙපෝස් සහ එක්ස්ටෙන්ෂන් විකල්ප';

  @override
  String get settingsAddons => 'ඇඩ්-ඔන්ස්';

  @override
  String get customPath => 'කස්ටම් ස්ටෝරේජ් පාත් එක';

  @override
  String get stories => 'කතන්දර';

  @override
  String get watchOrder => 'වොච් ඇණවුම';

  @override
  String get watchOrderOpenSite => 'chiaki.site හි විවෘත කරන්න';

  @override
  String get watchOrderUnavailable =>
      'මෙම මාතෘකාව සඳහා ඔරලෝසු ඇණවුමක් හමු නොවීය';

  @override
  String get watchOrderOpenFailed => 'එම මාතෘකාව විවෘත කිරීමට නොහැකි විය';

  @override
  String get watchOrderCurrent => 'ඔබ මෙහි සිටී';

  @override
  String get watchOrderCredit => 'chiaki.site මගින් ඇණවුම් නරඹන්න';

  @override
  String get customPathDesc =>
      'ඇප් දත්ත තියෙන තැන. රීසෙට් කරන්න ලොංග් ප්‍රෙස් කරන්න';

  @override
  String get selectDirectory => 'ඩිරෙක්ටරි එක තෝරන්න';

  @override
  String get differentCacheManager => 'විකල්ප ඉමේජ් කෑෂ් එක';

  @override
  String get differentCacheManagerDesc =>
      'ඉමේජ් වලට වෙනස් කෑෂ් මැනේජර් කෙනෙක් පාවිච්චි කරන්න';

  @override
  String get settingsSync => 'සමමුහුර්ත සැකසුම්';

  @override
  String get settingsSyncDesc =>
      'සෑම උපාංගයකම ඔබගේ සැකසීම් එලෙසම තබා ගන්න. ඒවා ඔබගේ GitHub ගිණුමේ පුද්ගලික සාරාංශයක ගබඩා කර ඇත';

  @override
  String get settingsSyncSwitch => 'වෙනස් කිරීමේදී සමමුහුර්ත කරන්න';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'GitHub සමඟින් පුරනය වන්න';

  @override
  String get settingsSyncSignInDesc =>
      'සැකසීම් ඔබගේ ගිණුමේ පුද්ගලික සාරාංශයක් තුළ ගබඩා කර ඇත';

  @override
  String get settingsSyncToken => 'පුද්ගලික ප්‍රවේශ ටෝකනයක් භාවිතා කරන්න';

  @override
  String get settingsSyncTokenDesc =>
      'github.com/settings/tokens හි සාරාංශ අවසරය පමණක් ඇතිව එකක් සාදන්න';

  @override
  String get settingsSyncTokenField => 'ටෝකනය';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user ලෙස පුරනය වී ඇත';
  }

  @override
  String get settingsSyncSignOut => 'වරනය වන්න';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub මත $code ඇතුලත් කරන්න';
  }

  @override
  String get settingsSyncCodeDesc =>
      'GitHub පිටුව ඔබගේ බ්‍රවුසරයේ විවෘත විය. කේතය පිටපත් කිරීමට තට්ටු කරන්න, නැතහොත් අවලංගු කිරීමට තට්ටු කර අල්ලාගෙන සිටින්න.';

  @override
  String get settingsSyncSignInFailed => 'GitHub වෙත පුරනය වීමට නොහැකි විය';

  @override
  String get dcPreview => 'පෙරදසුන';

  @override
  String get dcSampleWatching => 'බලනවා';

  @override
  String get dcSampleReading => 'කියවීම';

  @override
  String get dcSampleBrowsing => 'බ්‍රවුස් කිරීම';

  @override
  String get dcSampleLive => 'දැන් හරි';

  @override
  String get dcLiveNothing =>
      'දැන් කිසිවක් පෙන්වන්නේ නැත. මාතෘකාවක් විවෘත කරන්න, කථාංගයක් හෝ පරිච්ඡේදයක් ආරම්භ කරන්න, එය මෙහි දිස්වේ.';

  @override
  String get dcMemberList => 'සාමාජික ලැයිස්තුවේ';

  @override
  String get dcAccount => 'ගිණුම';

  @override
  String get dcSignIn => 'Discord සමඟින් පුරන්න';

  @override
  String get dcSignOut => 'වරනය වන්න';

  @override
  String get dcDesktopHint =>
      'සම්බන්ධ නොවී, Discord ඩෙස්ක්ටොප් යෙදුම හරහා \"Dartotsu නැරඹීම\" පෙන්වයි. ජංගම දුරකථනය ඇතුළුව ඔබේ මාතෘකාවෙන් පසුව ක්‍රියාකාරකම නම් කිරීමට Discord සම්බන්ධ කරන්න.';

  @override
  String get dcMobileHint =>
      'ඔබ නරඹන හෝ කියවන දේ පෙන්වීමට Discord සම්බන්ධ කරන්න. එය ඔබගේ ගිණුම් ටෝකනය නොව Discord\'s අවසර පිටුව භාවිතා කරයි.';

  @override
  String get dcConnect => 'අසමගිය සම්බන්ධ කරන්න';

  @override
  String get dcConnectDesc =>
      'Discord හි අවසර පිටුව විවෘත කර බලයලත් යෙදුම් යටතේ Dartotsu එක් කරයි. Discord ඔබගේ පැමිණීම යාවත්කාලීන කිරීමට අසයි. ඔබගේ ගිණුමේ ටෝකනය නොව නැවුම් ටෝකනයක් පමණක් සුරැකේ.';

  @override
  String get dcConnectFailed => 'Discord සම්බන්ධ කිරීමට නොහැකි විය';

  @override
  String get dcConnectedSnack => 'අසමගිය සම්බන්ධයි';

  @override
  String get dcDisconnect => 'විසන්ධි කරන්න';

  @override
  String get dcDisconnectedSnack => 'අසමගිය විසන්ධි විය';

  @override
  String get dcUseToken => 'ඒ වෙනුවට ටෝකනයක් භාවිතා කරන්න';

  @override
  String get dcRouteDesktop => 'Discord ඩෙස්ක්ටොප් යෙදුම හරහා';

  @override
  String get dcRouteHeadless => 'ඔබගේ ගිණුම හරහා';

  @override
  String get dcRouteGateway => 'ඔබගේ ගිණුම හරහා, සජීවීව';

  @override
  String get dcRouteLinked => 'සම්බන්ධිත යෙදුම';

  @override
  String get dcRouteNone => 'සම්බන්ධ වී නැත';

  @override
  String get dcStatusNeedsToken =>
      'Discord ටෝකනයක් අවශ්‍යයි. යෙදුම සම්බන්ධ කිරීම ඔබගේ සබැඳි තත්ත්වය සකසන්නේ නැත.';

  @override
  String get dcAccountOnly => 'පුරනය වූ ගිණුමක් අවශ්‍යයි';

  @override
  String get dcStatusSection => 'තත්ත්වය';

  @override
  String get dcControlStatus => 'මගේ තත්ත්වය පාලනය කරන්න';

  @override
  String get dcControlStatusDesc =>
      'Rich Presence ක්‍රියාත්මක වන විට Discord වෙත සජීවී සම්බන්ධතාවයක් තබා ගනී, එවිට Dartotsu හට ඔබේ තත්ත්වය සැකසිය හැක.';

  @override
  String get dcStatusOnline => 'ඔන්ලයින්';

  @override
  String get dcStatusIdle => 'නිෂ්ක්‍රීයයි';

  @override
  String get dcStatusDnd => 'බාධා නොකරන්න';

  @override
  String get dcStatusInvisible => 'නොපෙනෙන';

  @override
  String get dcCustomStatus => 'අභිරුචි තත්ත්වය';

  @override
  String get dcCustomStatusHint => 'ඔබ කුමක් කරන්නද?';

  @override
  String get dcActivitySection => 'ක්රියාකාරිත්වය';

  @override
  String get dcShowWatching => 'නරඹන අතරතුර පෙන්වන්න';

  @override
  String get dcShowReading => 'කියවන අතරතුර පෙන්වන්න';

  @override
  String get dcListening => 'සවන් දීම';

  @override
  String get dcCompeting => 'තරග කරනවා';

  @override
  String get dcActivityName => 'ක්‍රියාකාරකම් නම';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'මාතෘකාව';

  @override
  String get dcNameCustom => 'අභිරුචි';

  @override
  String get dcCustomNameHint => '\"නැරඹිම\"ට පසුව පෙන්වන නම';

  @override
  String get dcStatusText => 'තත්ව පෙළ';

  @override
  String get dcStatusTextDesc => 'සාමාජික ලැයිස්තුව ඔබේ නමට යාබදව පෙන්වන දේ';

  @override
  String get dcDisplayName => 'නම';

  @override
  String get dcDisplayState => 'රාජ්ය';

  @override
  String get dcDisplayDetails => 'විස්තර';

  @override
  String get dcTextSection => 'පෙළ';

  @override
  String get dcDetails => 'ඉහළ රේඛාව';

  @override
  String get dcState => 'පහළ රේඛාව';

  @override
  String get dcTemplateHint => 'Empty පෙරනිමිය භාවිතා කරයි';

  @override
  String get dcVariables => 'අගයක් ඇතුළු කිරීමට තට්ටු කරන්න';

  @override
  String get dcImagesSection => 'රූප';

  @override
  String get dcLargeImage => 'විශාල රූපය';

  @override
  String get dcLargeAuto => 'ඔටෝ';

  @override
  String get dcLargeCover => 'ආවරණය කරන්න';

  @override
  String get dcLargeLogo => 'ලාංඡනය';

  @override
  String get dcSmallImage => 'කුඩා රූපය';

  @override
  String get dcSmallAuto => 'ලාංඡනය';

  @override
  String get dcSmallNone => 'කිසිවක් නැත';

  @override
  String get dcTimerStyle => 'ටයිමර් විලාසය';

  @override
  String get dcTimerAuto => 'ඔටෝ';

  @override
  String get dcTimerElapsed => 'ගත විය';

  @override
  String get dcTimerRemaining => 'ඉතිරි';

  @override
  String get dcButtonsSection => 'බොත්තම්';

  @override
  String get dcButtonMedia => 'මාතෘකාවට සබැඳිය';

  @override
  String get dcButtonApp => 'Dartotsu වෙත සබැඳිය';

  @override
  String get dcButtonCustom => 'අභිරුචි බොත්තම';

  @override
  String get dcButtonLabel => 'ලේබලය';

  @override
  String get dcButtonUrl => 'සබැඳිය';

  @override
  String get dcPrivacySection => 'පෞද්ගලිකත්වය';

  @override
  String get dcPrivateText => 'පුද්ගලික පෙළ';

  @override
  String get dcPrivateHint => 'පෞද්ගලික දෙයක්';

  @override
  String get dcTokenWarning =>
      'පුරනය වීම ඔබගේ ගිණුම් ටෝකනය භාවිතා කරයි. Discord හි නීති මෙය අධෛර්යමත් කරයි, එබැවින් ඔබේම අවදානමකින් එය භාවිතා කරන්න.';

  @override
  String get dcConnected => 'සම්බන්ධයි';

  @override
  String get dcConnection => 'සම්බන්ධතාවය';

  @override
  String get dcMethodDesktop => 'Discord ඩෙස්ක්ටොප් යෙදුම';

  @override
  String get dcMethodDesktopDesc =>
      'වෙනත් කිසිවක් සම්බන්ධ නොවූ විට ස්වයංක්‍රීයව භාවිතා වේ. මෙම පරිගණකයේ Discord විවෘත විය යුතුය.';

  @override
  String get dcMethodToken => 'ගිණුම් ටෝකනය';

  @override
  String get dcInUse => 'භාවිතයේ පවතී';

  @override
  String get dcRecommended => 'නිර්දේශ කර ඇත';

  @override
  String get dcConnecting => 'සම්බන්ධ වෙමින්...';

  @override
  String get dcDisconnected => 'සම්බන්ධ වී නැත';

  @override
  String dcSignedInAs(String name) {
    return '$name ලෙස පුරනය වී ඇත';
  }

  @override
  String get settingsSyncOn => 'ක්‍රියාත්මකයි';

  @override
  String get settingsSyncCustom => 'අභිරුචි';

  @override
  String get settingsSyncChangedHeader => 'වෙනස් කළ සැකසුම්';

  @override
  String get settingsSyncNoneChanged =>
      'ඔබ තවමත් මේවායින් කිසිවක් වෙනස් කර නැත, එබැවින් සමමුහුර්ත කිරීමට කිසිවක් නැත.';

  @override
  String get settingsSyncChangedOnly =>
      'ඔබ වෙනස් කළ සැකසුම් පමණක් ගබඩා කර ඇත. අනෙක් සියල්ල සෑම උපාංගයකම එහි පෙරනිමිය භාවිතා කරයි. වලාකුළු නිරූපකය සේවාදායකයේ දැනටමත් ඇති දේ පෙන්වයි.';

  @override
  String get settingsSyncOffCategory =>
      'සමමුහුර්ත නොවේ. මේවා මෙම උපාංගයේ පවතින අතර සේවාදායක පිටපත එලෙසම ඉතිරි වේ.';

  @override
  String get settingsSyncPartsNote =>
      'උපාංගයකට. ක්‍රියාවිරහිත කිරීම සෑම උපාංගයකම තමන්ගේම වටිනාකමක් තබා ගනී, එබැවින් දුරකථනයක් සහ රූපවාහිනියක් වෙනස් විය හැක.';

  @override
  String get settingsSyncPartSubtitles => 'උපසිරැසි ප්රමාණය සහ වර්ණ';

  @override
  String get settingsSyncPartSubtitlesDesc => 'ප්රමාණය, බර, වර්ණ සහ පිහිටීම';

  @override
  String get settingsSyncPartPictureColors => 'පින්තූර වර්ණ';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'දීප්තිය, වෙනස, සන්තෘප්තිය, ගැමා, පැහැය සහ HDR';

  @override
  String get settingsSyncPartPalette => 'තේමා වර්ණ';

  @override
  String get settingsSyncPartPaletteDesc => 'තේමාව, උච්චාරණ වර්ණය සහ OLED කළු';

  @override
  String get settingsSyncCatOther => 'නැරඹීම, කියවීම සහ සේවා';

  @override
  String get settingsSyncTitles => 'ප්‍රගතිය සහ මාතෘකා නරඹන්න';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return 'සේවාදායකයේ $records මාතෘකා සහ $resume නැවත ආරම්භ කිරීම්';
  }

  @override
  String get settingsSyncTitlesNone => 'තවම කිසිවක් උඩුගත කර නැත';

  @override
  String get settingsSyncTitlesNote =>
      'ස්ථාන නැරඹීම සහ කියවීම, නැවත ආරම්භ රාක්කය, ඔබේ දේශීය ලැයිස්තු, පිටුසන්, උද්දීපන සහ එක් මාතෘකාවක් විකල්ප. මූලාශ්‍ර ගැලපීම් සහ ප්‍රවාහයන් ඔබේ දිගු මත රඳා පවතින නිසා එක් එක් උපාංගය මත පවතී. මාතෘකා උපරිම වශයෙන් සෑම තත්පර 45 කට වරක් උඩුගත වේ.';

  @override
  String get settingsSyncConnect => 'සම්බන්ධ වී නැත';

  @override
  String get settingsSyncConnectDesc =>
      'ඔබගේ සැකසීම් සෑම උපාංගයකම සමානව තබා ගැනීමට GitHub සමඟින් පුරන්න.';

  @override
  String get settingsSyncFailedTitle => 'සමමුහුර්ත කිරීම අසාර්ථක විය';

  @override
  String get settingsSyncPaused => 'විරාම කළා';

  @override
  String get settingsSyncPausedDesc =>
      'මෙය අක්‍රියව තිබියදී කිසිවක් උඩුගත කිරීම හෝ බාගත කිරීම සිදු නොවේ.';

  @override
  String get settingsSyncUpToDate => 'යාවත්කාලීනයි';

  @override
  String get settingsSyncRetry => 'නැවත උත්සාහ කරන්න';

  @override
  String get settingsSyncAccount => 'GitHub ගිණුම';

  @override
  String get settingsSyncAccountDesc =>
      'ඔබගේ දත්ත ඔබගේම ගිණුමේ පුද්ගලික සාරාංශයකට යයි.';

  @override
  String get settingsSyncWaiting => 'ඔබ GitHub මත අනුමත කරන තෙක් රැඳී සිටිමින්';

  @override
  String get settingsSyncCopyCode => 'එය පිටපත් කිරීමට කේතය තට්ටු කරන්න';

  @override
  String get settingsSyncCancel => 'අවලංගු කරන්න';

  @override
  String get settingsSyncStatSettings => 'සැකසීම්';

  @override
  String get settingsSyncStatTitles => 'මාතෘකා';

  @override
  String get settingsSyncStatShelf => 'නැවත ආරම්භ කරන්න';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$device වෙතින් $time උඩුගත කරන ලදී';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count වෙනස් විය',
      one: '1 වෙනස් විය',
      zero: 'තවමත් කිසිවක් වෙනස් වී නැත',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'ගිණුම් සහ මුරපද';

  @override
  String get settingsSyncSecretsDesc =>
      'ඔබගේ පිවිසුම් (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API යතුරු සහ ඔබගේ උපාංග අතර යෙදුම් අගුල සමමුහුර්ත කරන්න. ඒවා ඔබගේ උපාංගවල පවතින මුරපදයකින් සංකේතනය කර ඇත, එබැවින් GitHub ඒවා කිසිදා නොදකියි.';

  @override
  String get settingsSyncSecretsOn => 'ගිණුම් සමමුහුර්ත කර සංකේතනය කර ඇත';

  @override
  String get settingsSyncSecretsOnDesc =>
      'එක් උපාංගයකින් වරනය වීම අනෙක් උපාංගයෙන් ඔබව වරනය නොවේ.';

  @override
  String get settingsSyncSecretsBroken =>
      'මුරපදය සේවාදායකයේ ඇති එක සමඟ තවදුරටත් නොගැලපේ. ගිණුම් සමමුහුර්ත කර තබා ගැනීමට එය නැවත ඇතුල් කරන්න.';

  @override
  String get settingsSyncPassphraseSet => 'මුරපදයක් සකසන්න';

  @override
  String get settingsSyncPassphraseEnter => 'ඔබගේ මුර-වැකිකඩ ඇතුලත් කරන්න';

  @override
  String get settingsSyncPassphraseField => 'මුරපදය';

  @override
  String get settingsSyncPassphraseConfirm => 'රහස් පදය නැවත කරන්න';

  @override
  String get settingsSyncPassphraseNew =>
      'අවම වශයෙන් අක්ෂර 6ක මුර-වැකිකඩක් තෝරන්න. එය ඔබගේ උපාංග හැර කොතැනකවත් ගබඩා කර නැති අතර නැවත ලබා ගත නොහැක. ඔබට එය අමතක වුවහොත්, සේවාදායකයේ පිටපත මකා දමා නැවත ආරම්භ කරන්න.';

  @override
  String get settingsSyncPassphraseExisting =>
      'ඔබගේ අනෙක් උපාංගයේ ඔබ තෝරාගත් මුර-වැකිකඩ ඇතුලත් කරන්න. මෙම උපාංගයේ ගිණුම් සමමුහුර්ත කළ ඒවා මගින් ප්‍රතිස්ථාපනය වේ.';

  @override
  String get settingsSyncPassphraseWrong => 'වැරදි මුර-වැකිකඩ';

  @override
  String get settingsSyncPassphraseMismatch => 'මුරපද නොගැලපේ';

  @override
  String get settingsSyncPassphraseShort =>
      'අවම වශයෙන් අක්ෂර 6 ක් භාවිතා කරන්න';

  @override
  String get settingsSyncSecretsStop => 'ගිණුම් සමමුහුර්ත කිරීම නවත්වන්න';

  @override
  String get settingsSyncSecretsDelete => 'GitHub වෙතින් මකන්න';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'මෙය ඔබගේ සාරාංශයෙන් සංකේතනය කළ ගිණුම් ගොනුව ඉවත් කරයි. වෙනත් උපාංග ඔවුන්ගේ පුරනයන් තබා ගන්නා අතර නව මුර-වැකිකඩක් සැකසිය හැක.';

  @override
  String get settingsSyncWhat => 'සමමුහුර්ත කළ යුතු දේ';

  @override
  String get settingsSyncServer => 'සේවාදායකයේ';

  @override
  String get settingsSyncServerEmpty => 'තවම කිසිවක් උඩුගත කර නැත';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count සිටුවම්, $device වෙතින් $time උඩුගත කරන ලදී';
  }

  @override
  String get settingsSyncThisDevice => 'මෙම උපාංගය';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'සේවාදායකයේ $count සැකසුම්',
      one: 'සේවාදායකයේ 1 සැකසුම',
      zero: 'සේවාදායකයේ කිසිවක් නැත',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'දැන් සමමුහුර්ත කරන්න';

  @override
  String get settingsSyncRunning => 'සමමුහුර්ත කරමින්...';

  @override
  String get settingsSyncNever => 'තවම සමමුහුර්ත කර නැත';

  @override
  String settingsSyncLast(Object time) {
    return 'අවසන් වරට සමමුහුර්ත කළේ $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'සමමුහුර්ත කිරීම අසාර්ථක විය: $error';
  }

  @override
  String get settingsSyncScope =>
      'සෑම තැනකම එකම ලෙස ක්‍රියා කරන සැකසුම් පමණක් සමමුහුර්ත කර ඇත. ගිණුම්, ටෝකන, ෆෝල්ඩර, දිගු, දැනුම්දීම්, අසමගිය, යාවත්කාලීන සහ කවුළු ප්‍රමාණය එක් එක් උපාංගයේ පවතී.';

  @override
  String get backupAndRestore => 'බැකප් සහ රිස්ටෝර්';

  @override
  String get backupAndRestoreDesc => 'ඔයාගේ මනාපයන් සේව් කරන්න හෝ ලෝඩ් කරන්න';

  @override
  String get backup => 'බැකප්';

  @override
  String get restore => 'රිස්ටෝර්';

  @override
  String get loadExtensionsIcon => 'එක්ස්ටෙන්ෂන් අයිකන් ලෝඩ් කරන්න';

  @override
  String get autoUpdateRuntimes =>
      'දිගු ධාවන කාලය ස්වයංක්‍රීයව යාවත්කාලීන කරන්න';

  @override
  String get autoUpdateRuntimesDesc =>
      'පසුබිමේ නව Aniyomi, CloudStream සහ අනෙකුත් ධාවන කාල අනුවාද බාගන්න. අක්‍රියයි, ඒ වෙනුවට යාවත්කාලීන නිරූපකයක් කළමනාකරු අසල දිස්වේ.';

  @override
  String get loadExtensionsIconDesc =>
      'එක්ස්ටෙන්ෂන් ලිස්ට් වල සෝස් අයිකන් පෙන්වන්න';

  @override
  String get sectionStorage => 'ස්ටෝරේජ්';

  @override
  String get sectionManagers => 'මැනේජර්ස්';

  @override
  String get sectionOptions => 'විකල්ප';

  @override
  String get backupTabBackup => 'බැකප් කරන්න';

  @override
  String get backupTabRestore => 'රිස්ටෝර්';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories කාණ්ඩ වල සැකසුම් $keysක්';
  }

  @override
  String backupLastBackup(Object time) {
    return 'අන්තිම බැකප් එක $time';
  }

  @override
  String get backupNever => 'තාම බැකප් එකක් නෑ';

  @override
  String get backupSelectAll => 'සියල්ල තෝරන්න';

  @override
  String get backupClearAll => 'මකන්න';

  @override
  String backupKeys(Object count) {
    return 'සැකසුම් $countක්';
  }

  @override
  String get backupPasswordRequired => 'මුරපදය (ගිණුම් දත්ත සඳහා අවශ්‍ය වේ)';

  @override
  String get backupProtectedNeedsPassword =>
      'ගිණුම් දත්ත උපස්ථ කිරීමට මුරපදයක් සකසන්න, නැතහොත් එය සලකුණු නොකරන්න';

  @override
  String get backupProtectedSkipped =>
      'මෙම උපස්ථයට මුරපදයක් නැත, එබැවින් එහි ගිණුම් දත්ත මඟ හරින ලදී';

  @override
  String get backupPassword => 'මුරපදය (අවශ්‍ය නම් විතරයි)';

  @override
  String get backupPasswordHint => 'ඩිෆෝල්ට් එක පාවිච්චි කරන්න හිස්ව තියන්න';

  @override
  String get backupSensitive =>
      'ලොගින් ටෝකන්ස් ඇතුළත්. මේ ෆයිල් එක රහසිගතව තියාගන්න';

  @override
  String get backupCreate => 'බැකප් එකක් හදන්න';

  @override
  String backupSaved(Object name) {
    return 'බැකප් එක $name එකට සේව් වුණා';
  }

  @override
  String backupFailed(Object error) {
    return 'බැකප් එක අසාර්ථකයි: $error';
  }

  @override
  String get backupPickFile => 'බැකප් ෆයිල් එකක් තෝරන්න';

  @override
  String get backupPickFileDesc => 'Dartotsu හදපු .json ෆයිල් එකක් තෝරන්න';

  @override
  String get backupChooseAnother => 'වෙන ෆයිල් එකක් තෝරන්න';

  @override
  String get backupCreatedAt => 'හැදුවේ';

  @override
  String get backupAppVersion => 'ඇප් වර්ෂන් එක';

  @override
  String get backupDevice => 'ඩිවයිස් එක';

  @override
  String get backupAccounts => 'ගිණුම්';

  @override
  String get backupSize => 'ප්‍රමාණය';

  @override
  String get backupEncrypted => 'මුරපදයෙන් ආරක්ෂිතයි';

  @override
  String get backupUnlock => 'අන්ලොක් කරන්න';

  @override
  String get backupWrongPassword =>
      'මේ ෆයිල් එක කියවන්න බැරි වුණා. මුරපදය චෙක් කරන්න';

  @override
  String get backupRestoreSelected => 'තෝරපු ඒවා රිස්ටෝර් කරන්න';

  @override
  String backupRestoreConfirm(Object count) {
    return 'සැකසුම් $countක් රිස්ටෝර් කරන්නද? මේ කාණ්ඩ වල දැනට තියෙන අගයන් උඩින් ලියවෙනවා.';
  }

  @override
  String get backupRestored =>
      'රිස්ටෝර් වුණා. හැමදේම ඇප්ලයි වෙන්න ඇප් එක රීස්ටාර්ට් කරන්න';

  @override
  String backupRestoreFailed(Object error) {
    return 'රිස්ටෝර් කරන්න බැරි වුණා: $error';
  }

  @override
  String get backupSelectOne => 'අඩුම තරමේ කාණ්ඩයක් තෝරන්න';

  @override
  String get backupCatTheme => 'පෙනුම';

  @override
  String get backupCatThemeDesc =>
      'තීම්, පාට, ග්ලාස්, ෆොන්ට්ස් සහ කාඩ් ස්ටයිල්';

  @override
  String get backupCatCommon => 'සාමාන්‍ය';

  @override
  String get backupCatCommonDesc =>
      'භාෂාව, ස්ටෝරේජ්, නෙට්වර්ක් සහ එක්ස්ටෙන්ෂන් විකල්ප';

  @override
  String get backupCatPlayer => 'ප්ලේයර්';

  @override
  String get backupCatPlayerDesc => 'ප්ලේයර් මනාපයන්';

  @override
  String get backupCatReader => 'රීඩර්';

  @override
  String get backupCatReaderDesc => 'රීඩර් මනාපයන්';

  @override
  String get backupCatProtected => 'ගිණුම්';

  @override
  String get backupCatProtectedDesc => 'ලොගින් ටෝකන්ස් සහ සයින්-ඉන් දත්ත';

  @override
  String get backupCatOther => 'සර්විස් සහ ෆීඩ්ස්';

  @override
  String get backupCatOtherDesc => 'ෆීඩ් ලේඅවුට්, ලිස්ට් සහ සර්විස් විකල්ප';

  @override
  String get logFile => 'ලොග් ෆයිල් එක';

  @override
  String get logFileDesc =>
      'ඇප් ලොග් එක ෂෙයාර් කරන්න, නැත්නම් Linux වල ඒකේ පාත් එක කොපි කරන්න';

  @override
  String get logDelete => 'ලොග් ගොනු මකන්න';

  @override
  String get logDeleteDesc =>
      'ඉඩ නිදහස් කර ගැනීමට සුරකින ලද යෙදුම් ලොග හිස් කරන්න';

  @override
  String logDeleted(String size) {
    return 'ලඝු-සටහන් $size මකා දමන ලදී';
  }

  @override
  String get missingSequel => 'අතුරුදහන් වූ අනුක්‍රමය';

  @override
  String get rising => 'නැඟිටිනවා';

  @override
  String get stacks => 'ගොඩවල්';

  @override
  String get stacksAll => 'සියල්ල';

  @override
  String get stacksFeatured => 'විශේෂාංගගත';

  @override
  String get stacksMine => 'ඔබේ';

  @override
  String get stacksSaved => 'සුරකින ලදී';

  @override
  String get stacksFollowing => 'අනුගමනය';

  @override
  String get stacksEmpty => 'තවම මෙහි අට්ටි නැත';

  @override
  String get stacksSignIn => 'ඔබගේ තොග බැලීමට MangaBaka වෙත පුරන්න';

  @override
  String get stacksScopeNeeded =>
      'ඔබේ තොගවලට නව අවසරයක් අවශ්‍යයි. එයට ඉඩ දීමට නැවත MangaBaka වෙත පුරන්න.';

  @override
  String get stacksSignInAgain => 'නැවත පුරන්න';

  @override
  String get stacksCouldntLoad => 'අට්ටි පූරණය කළ නොහැකි විය';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count මාලාව',
      one: '1 මාලාවක්',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count සුරකියි',
      one: '1 ඉතිරි කරන්න',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return '$name විසින්';
  }

  @override
  String get stackSpoilers => 'ස්පොයිලර්';

  @override
  String get stackEmptyEntries => 'මෙම තොගය හිස් ය';

  @override
  String get stackSave => 'තොගය සුරකින්න';

  @override
  String get stackUnsave => 'සුරැකි වලින් ඉවත් කරන්න';

  @override
  String get stackSavedToast => 'ඔබගේ අට්ටි වෙත සුරකින ලදී';

  @override
  String get stackRemovedToast => 'ඔබගේ සුරැකි අට්ටිවලින් ඉවත් කරන ලදී';

  @override
  String userStacks(String name) {
    return '$name විසින් අට්ටි';
  }

  @override
  String get newsTitle => 'පුවත්';

  @override
  String get newsEmpty => 'දැන් ආරංචියක් නෑ';

  @override
  String get newsCouldntLoad => 'පුවත් පූරණය කළ නොහැකි විය';

  @override
  String get logFileCopied => 'ලොග් පාත් එක කොපි වුණා';

  @override
  String get donateSheetTitle => 'Dartotsu කැමතිද?';

  @override
  String get donateSheetMessage =>
      'Dartotsu හදලා බලාගන්නේ එක කෙනෙක් විතරයි. ඔයාට ප්‍රයෝජනවත් නම්, ඩෙවලොප්මන්ට් එකට සහාය වෙන්න.';

  @override
  String get donateLater => 'පස්සේ බලමු';

  @override
  String get glassBackground => 'ග්ලාස් බැක්ග්‍රවුන්ඩ් එක';

  @override
  String get glassBackgroundDesc =>
      'ඔයා ඉමේජ් ලින්ක් එකක් දැම්මේ නැත්නම් ඔයාගේ ප්‍රොෆයිල් බැනර් එක';

  @override
  String get glassBackgroundHint =>
      'ඉමේජ් ලින්ක් එක (ඔයාගේ බැනර් එකට හිස්ව තියන්න)';

  @override
  String get followCover => 'කවර් එක අනුගමනය කරන්න';

  @override
  String get followCoverDesc =>
      'පාට බැක්ග්‍රවුන්ඩ් එකත්, ඩිටේල් පේජ් වල කවර් එකත් අනුගමනය කරනවා';

  @override
  String get followCoverMediaOnly => 'මාධ්‍ය සඳහා පමණයි';

  @override
  String get followCoverMediaOnlyDesc =>
      'මාධ්‍ය පිටුවල කවරය පමණක් අනුගමනය කරන්න, අනෙක් සෑම තැනකම සාමාන්‍ය වර්ණ තබා ගනී';

  @override
  String get cardStyle => 'කාඩ් ස්ටයිල්';

  @override
  String get cardStyleDesc => 'ටයිටල් තැන, ප්‍රමාණය, ප්‍රගතිය සහ බැජ්';

  @override
  String get customFont => 'ෆොන්ට්';

  @override
  String get customFontDesc =>
      'ඩිෆෝල්ට්, ඔයාගේ ඩිවයිස් එකේ ෆයිල් එකක්, නැත්නම් Google Fonts';

  @override
  String get customFontError => 'ඒ ෆොන්ට් ෆයිල් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get googleFontError => 'ඒ ෆොන්ට් එක ඩවුන්ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get yourFonts => 'ඔයාගේ ෆොන්ට්ස්';

  @override
  String get addFontFile => 'ෆොන්ට් ෆයිල් එකක් එකතු කරන්න…';

  @override
  String get browseGoogleFonts => 'Google Fonts බ්‍රවුස් කරන්න…';

  @override
  String get searchGoogleFonts => 'Google Fonts හොයන්න';

  @override
  String get defaultFont => 'ඩිෆෝල්ට්';

  @override
  String get materialYou => 'ද්රව්ය ඔබ';

  @override
  String get materialYouDesc => 'සිස්ටම් එකෙන් ඩයිනමික් පාට';

  @override
  String get jsonTheme => 'කස්ටම් තීම් ෆයිල් එක';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json එකෙන් ලයිව් පාට (කස්ටම් ස්ක්‍රිප්ට් එකක්, නැත්නම් ඔයාගේම වෙනස්කම්)';

  @override
  String get themeMode => 'තීම් මෝඩ්';

  @override
  String get mode => 'මෝඩ්';

  @override
  String get trackingService => 'ට්‍රැකින් සර්විස් එක';

  @override
  String get signOut => 'සයින් අවුට්';

  @override
  String get signIn => 'සයින් ඉන්';

  @override
  String get notSignedIn => 'සයින් ඉන් වෙලා නෑ';

  @override
  String signOutOf(String service) {
    return '$service එකෙන් සයින් අවුට් වෙනවද?';
  }

  @override
  String get checkForUpdates => 'අප්ඩේට්ස් චෙක් කරන්න';

  @override
  String get checkForUpdatesDesc =>
      'අලුත් GitHub රිලීස් එකක් ආවොත් දැනුම් දෙන්න';

  @override
  String get updateChannel => 'අප්ඩේට් චැනල් එක';

  @override
  String get channel => 'චැනල් එක';

  @override
  String get stable => 'ස්ටේබල්';

  @override
  String get preRelease => 'ප්‍රී-රිලීස්';

  @override
  String get alpha => 'ඇල්ෆා';

  @override
  String get checkNow => 'දැන්ම චෙක් කරන්න';

  @override
  String get userAgent => 'පරිශීලක නියෝජිතයා';

  @override
  String get settingDefault => 'ඩිෆෝල්ට්';

  @override
  String currentlyUsing(String value) {
    return 'දැන්: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ඩිෆෝල්ට් (Cloudflare)';

  @override
  String get proxy => 'ප්‍රොක්සි';

  @override
  String get proxyProtocol => 'වර්ගය';

  @override
  String get proxyHost => 'හෝස්ට්';

  @override
  String get proxyPort => 'පෝට්';

  @override
  String get proxyUsername => 'යූසර්නේම්';

  @override
  String get proxyPassword => 'මුරපදය';

  @override
  String get optional => 'අවශ්‍ය නම් විතරයි';

  @override
  String get clearCookies => 'කුකීස් මකන්න';

  @override
  String get clearCookiesDesc => 'සේව් කරලා තියෙන හැම කුකී එකක්ම අයින් කරන්න';

  @override
  String notImplementedArea(String area) {
    return '$area — ඉක්මනින් එනවා';
  }

  @override
  String notImplementedService(String service) {
    return '$service එකෙන් මේක තාම සහාය දක්වන්නේ නෑ.';
  }

  @override
  String get couldNotLoadResults => 'ප්‍රතිඵල ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get updateCheckFailed => 'අප්ඩේට්ස් චෙක් කරන්න බැරි වුණා';

  @override
  String get highRefreshRate => 'ඉහළ රිෆ්‍රෙෂ් රේට් එක';

  @override
  String get highRefreshRateDesc =>
      'ඔයාගේ ස්ක්‍රීන් එකට පුළුවන් ඉහළම රිෆ්‍රෙෂ් රේට් එක පාවිච්චි කරන්න';

  @override
  String get imageSave => 'ඉමේජ් එක සේව් කරන්න';

  @override
  String imageSavedTo(String path) {
    return '$path එකට සේව් වුණා';
  }

  @override
  String get imageActionFailed => 'ඉමේජ් එක ඩවුන්ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get imageTitleCover => 'කවර්';

  @override
  String get imageTitlePage => 'පිටුව';

  @override
  String get imageTitleBanner => 'බැනර්';

  @override
  String get imageTitleAvatar => 'ප්‍රොෆයිල් පින්තූරය';

  @override
  String get verifyTls => 'සහතික තහවුරු කරන්න';

  @override
  String get verifyTlsDesc =>
      'වලංගු නොවන HTTPS සහතික තියෙන සර්වර්ස් ප්‍රතික්ෂේප කරන්න. self-signed එකක් පාවිච්චි කරන සෝස් එකකට විතරක් ඕෆ් කරන්න';

  @override
  String get clearCookiesConfirm =>
      'සේව් කරලා තියෙන හැම කුකී එකක්ම අයින් කරනවද? මේකෙන් සමහර සෝස් වලින් ඔයා සයින් අවුට් වෙන්න පුළුවන්.';

  @override
  String get version => 'වර්ෂන් එක';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'සෝස්, ඉෂූස් සහ රිලීස්ස්';

  @override
  String get discordDesc => 'කොමියුනිටි සහ සහාය';

  @override
  String get supportDeveloper => 'සංවර්ධකයාට සහාය වන්න';

  @override
  String get buyMeCoffee => 'මට කෝපි එකක් අරන් දෙන්න';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID පිටපත් කරන ලදී';

  @override
  String get donateDesc => 'ඩෙවලොප්මන්ට් එකට සහාය වෙන්න';

  @override
  String get contributors => 'කොන්ට්‍රිබියුටර්ස්';

  @override
  String get contributorsDesc => 'Dartotsu හදපු අය';

  @override
  String get contributorsLoadFailed =>
      'කොන්ට්‍රිබියුටර්ස්ව ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get forks => 'ගෑරුප්පු';

  @override
  String get forksDesc => 'Dartotsu උඩ හදපු ප්‍රොජෙක්ට්ස්';

  @override
  String get forksEmpty => 'ෆෝක්ස් හම්බුණේ නෑ';

  @override
  String get sectionColors => 'පාට';

  @override
  String get sectionDisplay => 'ඩිස්ප්ලේ';

  @override
  String get sectionStyle => 'ස්ටයිල්';

  @override
  String get sectionCommunity => 'කොමියුනිටි';

  @override
  String get sectionAppInfo => 'ඇප් තොරතුරු';

  @override
  String get sectionRequests => 'රික්වෙස්ට්ස්';

  @override
  String get sectionDnsProxy => 'DNS සහ ප්‍රොක්සි';

  @override
  String get onboardingBack => 'ආපසු';

  @override
  String get onboardingNext => 'ඊළඟ';

  @override
  String get onboardingSkip => 'ස්කිප්';

  @override
  String get onboardingLanguageBody =>
      'Dartotsu පෙන්වන භාෂාව තෝරන්න. ඔබට එය පසුව සැකසීම් තුළ වෙනස් කළ හැක.';

  @override
  String get onboardingPaletteTitle => 'ඔයාගේම කරගන්න';

  @override
  String get onboardingPaletteBody =>
      'පැලට් එකක් තෝරන්න. කාඩ් වල ඉඳන් ප්ලේයර් එක දක්වා හැම ඇක්සන්ට් එකක්ම ඒක අනුගමනය කරනවා.';

  @override
  String get themeModeAuto => 'ඔටෝ';

  @override
  String get themeModeLight => 'ලයිට්';

  @override
  String get themeModeDark => 'ඩාර්ක්';

  @override
  String get onboardingSyncTitle => 'ඔයාගේ ලයිබ්‍රරිය සින්ක් කරන්න';

  @override
  String get onboardingSyncBody =>
      'ඔයාගේ ලිස්ට්, ප්‍රගතිය සහ ස්කෝර් ගේන්න AniList එකට සයින් ඉන් වෙන්න. නැත්නම් ස්කිප් කරලා ගෙස්ට් විදියට බලන්න.';

  @override
  String get onboardingOpenLinks =>
      'AniList සහ රෙපෝ ලින්ක්ස් Dartotsu එකේ විවෘත කරන්න';

  @override
  String get onboardingPermsTitle => 'අවසර';

  @override
  String get onboardingPermsBody =>
      'ඩවුන්ලෝඩ්ස්, අප්ඩේට්ස් සහ අලර්ට්ස් කිසිම බාධාවක් නැතුව වැඩ කරන්න දැන්ම මේවාට ඉඩ දෙන්න. පස්සේ සිස්ටම් සැකසුම් වලින් වෙනස් කරන්න පුළුවන්.';

  @override
  String get permNotifications => 'නොටිෆිකේෂන්ස්';

  @override
  String get permNotificationsDesc =>
      'ඩවුන්ලෝඩ් ප්‍රගතිය, අලුත් එපිසෝඩ්ස් සහ රිප්ලයි';

  @override
  String get permStorage => 'සියලු ෆයිල්ස් වලට ඇක්සස්';

  @override
  String get permStorageDesc =>
      'ඩවුන්ලෝඩ්ස් පබ්ලික් Dartotsu ෆෝල්ඩර් එකේ සේව් කරන්න';

  @override
  String get permInstall => 'අප්ඩේට්ස් ඉන්ස්ටෝල් කරන්න';

  @override
  String get permInstallDesc =>
      'Dartotsu එකට තමන්ගේම අප්ඩේට්ස් ඉන්ස්ටෝල් කරගන්න දෙන්න';

  @override
  String get permBattery => 'සීමා නැති බැටරි';

  @override
  String get permBatteryDesc =>
      'දිගු ඩවුන්ලෝඩ්ස් බැක්ග්‍රවුන්ඩ් එකේ දිගටම යන්න දෙන්න';

  @override
  String get permGrant => 'ඉඩ දෙන්න';

  @override
  String get linkOpenInApp => 'ලින්ක්ස් Dartotsu එකේ විවෘත කරන්න';

  @override
  String get linkOpenInAppDesc =>
      'AniList සහ රෙපෝ ලින්ක්ස් වලින් ඇප් එක ඕපන් වෙන්න දෙන්න';

  @override
  String get reviewsTitle => 'රිව්යූස්';

  @override
  String get reviewsEmpty => 'තාම රිව්යූස් නෑ';

  @override
  String get reviewsFailed => 'රිව්යූස් ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get reviewHelpfulQuestion => 'මේ රිව්යූ එක ප්‍රයෝජනවත් වුණාද?';

  @override
  String get reviewVoteFailed => 'ඔයාගේ වෝට් එක සේව් කරන්න බැරි වුණා';

  @override
  String reviewHelpful(int n, int total) {
    return '$total න් $n දෙනෙක් මේක ප්‍රයෝජනවත් කියලා හිතුවා';
  }

  @override
  String get calendarTitle => 'ප්‍රචාරණ කාලසටහන';

  @override
  String get calendarToday => 'අද';

  @override
  String get calendarEmpty => 'මේ දවසේ කිසිවක් ප්‍රචාරය වෙන්නේ නෑ';

  @override
  String get calendarFailed => 'කාලසටහන ලෝඩ් කරන්න බැරි වුණා';

  @override
  String calendarChapter(int n) {
    return 'පරිච්ඡේදය $n';
  }

  @override
  String get calendarExpected => 'අපේක්ෂා කෙරේ';

  @override
  String get castReceiverFailed => 'Chromecast එහි වාදකය ආරම්භ කළේ නැත';

  @override
  String get castPlaybackFailed => 'උපාංගයට මෙම ප්‍රවාහය වාදනය කළ නොහැක';

  @override
  String get shortcutNothingToContinue => 'දිගටම කරගෙන යාමට කිසිවක් නැත';

  @override
  String shortcutNoCalendar(String service) {
    return '$service හට දින දර්ශනයක් නොමැත';
  }

  @override
  String calendarEpisode(int n) {
    return 'එපිසෝඩ් $n';
  }

  @override
  String get shareAnalytics => 'නිර්නාමික භාවිත දත්ත ෂෙයාර් කරන්න';

  @override
  String get shareAnalyticsDesc =>
      'නිර්නාමික යූසර් ගණන් සහ ක්‍රෑෂ් රිපෝර්ට්ස්. ගිණුමක් හෝ පෞද්ගලික දත්ත නෑ';

  @override
  String get linkOpenAnilist => 'AniList ලින්ක්ස් Dartotsu එකේ විවෘත කරන්න';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co ලින්ක්ස් වලින් ඇප් එක ඕපන් වෙන්න ලින්ක් හැන්ඩ්ලින් ඔන් කරන්න';

  @override
  String get linkSettingsFailed => 'සිස්ටම් සැකසුම් විවෘත කරන්න බැරි වුණා';

  @override
  String get discordRichPresence => 'පොහොසත් පැමිණීම';

  @override
  String get discordRichPresenceTokenDesc =>
      'ඔයා කරමින් ඉන්න දේ ඔයාගේ Discord ප්‍රොෆයිල් එකේ පෙන්වන්න. ඔයාගේ Discord ටෝකන් එක ඕනේ.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'ඔයා කරමින් ඉන්න දේ ඔයාගේ Discord ප්‍රොෆයිල් එකේ පෙන්වන්න. Discord ඩෙස්ක්ටොප් ඇප් එක දුවමින් තියෙන්න ඕනේ.';

  @override
  String get discordBrowsing => 'බ්‍රවුසින් ඇක්ටිවිටි පෙන්වන්න';

  @override
  String get discordBrowsingDesc =>
      'ඔයා බලන/කියවන දේ විතරක් නෙවෙයි, ඔයා බලන ටැබ් එක, පේජ් එක හෝ ප්‍රොෆයිල් එකත් පෙන්වන්න.';

  @override
  String get discordLookHeader => 'ප්‍රෙසන්ස් පෙනුම';

  @override
  String get discordActivityType => 'ඇක්ටිවිටි වර්ගය';

  @override
  String get discordActivityTypeDesc =>
      'Discord එක ලියන විදිය: \"Watching …\" හෝ \"Playing …\". ඔටෝ කියන්නේ anime වලට Watching, අනිත් හැමදේටම Playing.';

  @override
  String get discordWatching => 'බලනවා';

  @override
  String get discordPlaying => 'සෙල්ලම් කරනවා';

  @override
  String get discordCovers => 'කවර්ස් පෙන්වන්න';

  @override
  String get discordCoversDesc =>
      'කාඩ් එකේ කවර් ආට් එකයි Dartotsu අයිකන් එකයි.';

  @override
  String get discordTimer => 'ටයිමර් එක පෙන්වන්න';

  @override
  String get discordTimerDesc => 'ටයිටල් එක යටින් ගතවුණු හෝ ඉතිරි වෙලාව.';

  @override
  String get discordButtons => 'බට්න්ස් පෙන්වන්න';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" සහ \"Open Dartotsu\" බට්න්ස්.';

  @override
  String get discordHideTitles => 'ටයිටල්ස් හංගන්න';

  @override
  String get discordHideTitlesDesc =>
      'anime සහ manga නම් (ඒවායේ කවර් සහ ලින්ක් එකත් එක්ක) \"Something private\" එකකින් මාරු කරන්න.';

  @override
  String get discordConnectionHeader => 'සම්බන්ධතාව';

  @override
  String get listSearchHint => 'මේ ලිස්ට් එකේ හොයන්න';

  @override
  String get listSort => 'සෝට් කරන්න';

  @override
  String get listFilter => 'ෆිල්ටර්';

  @override
  String get listRandom => 'රැන්ඩම් ටයිටල් එකක්';

  @override
  String get listReverse => 'අනුපිළිවෙල ආපස්සට හරවන්න';

  @override
  String get listSortDefault => 'ලිස්ට් අනුපිළිවෙල';

  @override
  String get listSortScore => 'ඔයාගේ ස්කෝර් එක';

  @override
  String get listSortTitle => 'ටයිටල්';

  @override
  String get listSortUpdated => 'අන්තිමට අප්ඩේට් වුණේ';

  @override
  String get listSortProgress => 'ප්‍රගතිය';

  @override
  String get listSortReleased => 'රිලීස් දිනය';

  @override
  String get listSortAverage => 'සාමාන්‍ය ස්කෝර් එක';

  @override
  String get listFilterFormat => 'ෆෝමැට්';

  @override
  String get listFilterStatus => 'ස්ටේටස්';

  @override
  String get listFilterGenres => 'ජෝනර්ස්';

  @override
  String get listFilterClear => 'ෆිල්ටර්ස් මකන්න';

  @override
  String get listNoMatches => 'මේ ලිස්ට් එකේ කිසිවක් ගැලපෙන්නේ නෑ';

  @override
  String get discordLogin => 'Discord එකට ලොගින් වෙන්න';

  @override
  String get discordToken => 'Discord ටෝකන් එක';

  @override
  String get discordTokenSaved =>
      'සේව් වුණා. මාරු කරන්න ටැප් කරන්න, අයින් කරන්න ලොංග් ප්‍රෙස් කරන්න.';

  @override
  String get discordTokenNotSet => 'සෙට් කරලා නෑ. එකතු කරන්න ටැප් කරන්න.';

  @override
  String get discordTokenSavedSnack => 'Discord ටෝකන් එක සේව් වුණා';

  @override
  String get discordTokenRemovedSnack => 'Discord ටෝකන් එක අයින් වුණා';

  @override
  String get discordRichPresenceRow => 'අසමගිය පොහොසත් පැමිණීම';

  @override
  String get discordRichPresenceRowOn => 'ඔන් · පෙනුම මාරු කරන්න ටැප් කරන්න';

  @override
  String get discordRichPresenceRowOff =>
      'ඔයා කරමින් ඉන්න දේ ඔයාගේ Discord ප්‍රොෆයිල් එකේ පෙන්වන්න';

  @override
  String get loginCancelled => 'ලොගින් එක අවලංගු වුණා';

  @override
  String get invalidToken => 'වලංගු නොවන ටෝකන්';

  @override
  String loginFailed(String error) {
    return 'ලොගින් වෙන්න බැරි වුණා: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList ලොගින් එක අසාර්ථකයි';

  @override
  String get kitsuLoginFailed =>
      'Kitsu ලොගින් එක අසාර්ථකයි. ඔයාගේ ඊමේල් එකයි මුරපදයයි චෙක් කරන්න.';

  @override
  String get kitsuLoginTitle => 'Kitsu එකට සයින් ඉන් වෙන්න';

  @override
  String get emailOrUsername => 'ඊමේල් හෝ යූසර්නේම්';

  @override
  String get password => 'මුරපදය';

  @override
  String get kitsuProfile => 'Kitsu ප්‍රොෆයිල් එක';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka ලොගින් එක අසාර්ථකයි';

  @override
  String get comickLoginFailed => 'විකට පිවිසුම අසාර්ථක විය';

  @override
  String get tagline => 'ටැග්ලයින්';

  @override
  String get trending => 'ප්රවණතා';

  @override
  String get anticipated => 'අපේක්ෂා කරන ලදී';

  @override
  String get watchlist => 'මුර ලැයිස්තුව';

  @override
  String get recommendedShows => 'නිර්දේශිත සංදර්ශන';

  @override
  String get recommendedMovies => 'නිර්දේශිත චිත්‍රපට';

  @override
  String get boxOffice => 'බොක්ස් ඔෆිස්';

  @override
  String get popularMovies => 'ජනප්‍රිය චිත්‍රපට';

  @override
  String get popularShows => 'ජනප්‍රිය සංදර්ශන';

  @override
  String get anticipatedMovies => 'අපේක්ෂිත චිත්‍රපට';

  @override
  String get anticipatedShows => 'අපේක්ෂිත සංදර්ශන';

  @override
  String get trendingShows => 'නැඟී එන සංදර්ශන';

  @override
  String get mostWatchedThisWeek => 'මේ සතියේ වැඩිපුරම නරඹන ලදී';

  @override
  String get sortMostViewed => 'වැඩිපුරම බැලුවා';

  @override
  String get sortMostFollowed => 'බොහෝ දෙනා අනුගමනය කළහ';

  @override
  String get sortLatestUpdates => 'නවතම යාවත්කාලීන';

  @override
  String get translationStatusLabel => 'පරිවර්තනය';

  @override
  String get weeklySchedule => 'සතිපතා කාලසටහන';

  @override
  String get mostFollowed => 'වැඩිපුරම අනුගමනය කරන ලදී';

  @override
  String get latestUpdates => 'නවතම යාවත්කාලීන';

  @override
  String get trendingAnime => 'Trending Anime';

  @override
  String get topRatedAnime => 'ඉහළම ශ්‍රේණිගත ඇනිමෙ';

  @override
  String get mostFollowedAnime => 'වැඩිපුරම අනුගමනය කරන ඇනිමෙ';

  @override
  String get comickProfile => 'විකට පැතිකඩ';

  @override
  String get refreshFromComick => 'Comick වෙතින් නැවුම් කරන්න';

  @override
  String get mangaBakaProfile => 'MangaBaka ප්‍රොෆයිල් එක';

  @override
  String get refreshFromMangaBaka => 'MangaBaka එකෙන් රිෆ්‍රෙෂ් කරන්න';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates වෙත පුරන්න';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates පැතිකඩ';

  @override
  String get mangaUpdatesAnimeStart => 'සජීවිකරණ අනුවර්තනය ආරම්භ වේ';

  @override
  String get mangaUpdatesAnimeEnd => 'සජීවිකරණ අනුවර්තනය අවසන් වේ';

  @override
  String get refreshFromMangaUpdates => 'MangaUpdates වෙතින් නැවුම් කරන්න';

  @override
  String get usernameOnly => 'පරිශීලක නාමය';

  @override
  String get releases => 'නිකුත් කරයි';

  @override
  String get artistsLabel => 'ආටිස්ට්ස්';

  @override
  String get authorsLabel => 'ඔතර්ස්';

  @override
  String get publishersLabel => 'පබ්ලිෂර්ස්';

  @override
  String get licensedLabel => 'ලයිසන්ස් කරපු';

  @override
  String get contentRatingLabel => 'කන්ටෙන්ට් රේටින්';

  @override
  String get yesLabel => 'ඔව්';

  @override
  String get noLabel => 'නෑ';

  @override
  String get ratingSteps => 'රේටින් ස්ටෙප්ස්';

  @override
  String get hideNsfw => 'NSFW හංගන්න';

  @override
  String get hideNsfwSourcesDesc =>
      'සංග්‍රහ සහ ප්‍රභව පිකර් වෙතින් 18+ ලෙස සලකුණු කළ මූලාශ්‍ර සඟවන්න. ඔවුන් ස්ථාපනය කර ඇත.';

  @override
  String get hideNsfwDesc =>
      'වැඩිහිටි ටයිටල්ස් ෆීඩ් සහ සර්ච් වලින් අයින් කරලා, ඔයාගේම වැඩිහිටි එන්ට්‍රීස් Hidden Media යට ලිස්ට් කරන්න.';

  @override
  String get kitsuAccountOptions => 'Kitsu ගිණුම් විකල්ප';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka ගිණුමේ විකල්ප';

  @override
  String get comickAccountOptions => 'කොමික් ගිණුම් විකල්ප';

  @override
  String get comickClientId => 'කොමික් සේවාලාභී ID';

  @override
  String get comickClientIdDesc =>
      'comic.dev හි ලියාපදිංචි වූ අභිරුචි සේවාලාභී ID';

  @override
  String get couldNotUpdateKitsuSettings =>
      'ඔයාගේ Kitsu සැකසුම් අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String get titleCanonical => 'කැනොනිකල්';

  @override
  String get titleRomanized => 'රෝමනයිස්ඩ්';

  @override
  String get titleLocalized => 'ලෝකලයිස්ඩ්';

  @override
  String get ratingSystem => 'රේටින් සිස්ටම් එක';

  @override
  String get ratingSimple => 'සරල (මුහුණු 3)';

  @override
  String get ratingRegular => 'සාමාන්‍ය (තරු 5)';

  @override
  String get ratingAdvanced => 'ඇඩ්වාන්ස්ඩ් (ලකුණු 10)';

  @override
  String get contentFilter => 'කන්ටෙන්ට් ෆිල්ටර් එක';

  @override
  String get contentSfw => 'වැඩට ආරක්ෂිත ඒවා විතරයි';

  @override
  String get contentSometimes => 'සර්ච් වල වැඩිහිටි කන්ටෙන්ට්';

  @override
  String get contentEverywhere => 'හැම තැනම වැඩිහිටි කන්ටෙන්ට්';

  @override
  String get shareToGlobal => 'ග්ලෝබල් ෆීඩ් එකට ෂෙයාර් කරන්න';

  @override
  String get shareToGlobalDesc =>
      'ඔයාගේ ඇක්ටිවිටි Kitsu වල ග්ලෝබල් ෆීඩ් එකේ පේන්න දෙන්න.';

  @override
  String get memberSince => 'සාමාජිකයෙක් වුණු දා සිට';

  @override
  String get location => 'ස්ථානය';

  @override
  String get accountType => 'ගිණුම් වර්ගය';

  @override
  String get accountSupporter => 'සපෝටර්';

  @override
  String get accountFree => 'නොමිලේ';

  @override
  String get accountDetails => 'ගිණුම් විස්තර';

  @override
  String get refreshFromKitsu => 'Kitsu එකෙන් රිෆ්‍රෙෂ් කරන්න';

  @override
  String get simklReadOnly => 'Simkl එකට කියවීමට පමණක් ඇක්සස් දුන්නා';

  @override
  String get traktReadOnly => 'ට්‍රැක්ට කියවීමට පමණක් ප්‍රවේශය ලබා දී ඇත';

  @override
  String get incognitoEditsBlocked => 'ඉන්කොග්නිටෝ: ලිස්ට් වෙනස්කම් අවහිරයි';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ඉන්කොග්නිටෝ: ප්‍රගතිය සේව් වුණේ නෑ';

  @override
  String progressSet(int progress) {
    return 'ප්‍රගතිය $progress විදියට සෙට් වුණා';
  }

  @override
  String removedFromList(String title) {
    return '$title ඔයාගේ ලිස්ට් එකෙන් අයින් වුණා';
  }

  @override
  String get following => 'ෆොලෝ කරන';

  @override
  String get followsMutual => 'අන්යෝන්ය';

  @override
  String get followsNotMutual => 'අන්යෝන්ය නොවේ';

  @override
  String get homeSections => 'හෝම් සෙක්ෂන්ස්';

  @override
  String get homeSectionsHint =>
      'අනුපිළිවෙල වෙනස් කරන්න ඇදලා දාන්න. හංගපු සෙක්ෂන්ස් කවදාවත් ෆෙච් වෙන්නේ නෑ.';

  @override
  String get customListDeleteFailed => 'කස්ටම් ලිස්ට් එක මකන්න බැරි වුණා';

  @override
  String get customListsSaveFailed => 'කස්ටම් ලිස්ට්ස් සේව් කරන්න බැරි වුණා';

  @override
  String get customListsSaved => 'කස්ටම් ලිස්ට්ස් සේව් වුණා';

  @override
  String get listName => 'ලිස්ට් එකේ නම';

  @override
  String get addList => 'ලිස්ට් එකක් එකතු කරන්න';

  @override
  String get voiceActors => 'හඬ නළුවන්';

  @override
  String voiceActorsIn(String name) {
    return 'හඬ ගැයූ අය · $name';
  }

  @override
  String get animeAppearances => 'anime පෙනී සිටීම්';

  @override
  String get mangaAppearances => 'manga පෙනී සිටීම්';

  @override
  String get voicedCharacters => 'හඬ ගැයූ චරිත';

  @override
  String get animeCredits => 'anime ක්‍රෙඩිට්ස්';

  @override
  String get mangaCredits => 'manga ක්‍රෙඩිට්ස්';

  @override
  String get mainProductions => 'ප්‍රධාන නිෂ්පාදන';

  @override
  String get otherWorks => 'වෙනත් වැඩ';

  @override
  String get prequelSequel => 'ප්‍රීක්වල් සහ සීක්වල්';

  @override
  String get prequel => 'පූර්විකාව';

  @override
  String get sequel => 'අනුප්රාප්තිකය';

  @override
  String get previousSeason => 'කලින් සීසන් එක';

  @override
  String get thisSeason => 'මේ සීසන් එක';

  @override
  String get nextSeason => 'ඊළඟ සීසන් එක';

  @override
  String get voiceRoles => 'හඬ භූමිකා';

  @override
  String get staffPositions => 'ස්ටාෆ් තනතුරු';

  @override
  String get mangaWorks => 'manga වැඩ';

  @override
  String get malProfile => 'MyAnimeList ප්‍රොෆයිල් එක';

  @override
  String get refreshFromMal => 'MyAnimeList එකෙන් රිෆ්‍රෙෂ් කරන්න';

  @override
  String get repullProfileCounts => 'ඔයාගේ ප්‍රොෆයිල් එකයි ගණනුත් ආයෙත් අදින්න';

  @override
  String get refreshed => 'රිෆ්‍රෙෂ් වුණා';

  @override
  String get simklProfile => 'Simkl ප්‍රොෆයිල් එක';

  @override
  String get traktProfile => 'ට්රැක්ට් පැතිකඩ';

  @override
  String get refreshFromSimkl => 'Simkl එකෙන් රිෆ්‍රෙෂ් කරන්න';

  @override
  String get refreshFromTrakt => 'Trakt වෙතින් නැවුම් කරන්න';

  @override
  String get repullProfileLibrary =>
      'ඔයාගේ ප්‍රොෆයිල් එකයි ලයිබ්‍රරියයි ආයෙත් අදින්න';

  @override
  String get simklSignInToSearch => 'හොයන්න Simkl එකට සයින් ඉන් වෙන්න';

  @override
  String get dropRate => 'ඩ්‍රොප් රේට් එක';

  @override
  String get simklAttribution =>
      'දත්ත සහ ආට්වර්ක් Simkl එකෙන්. Simkl එකේ බලන්න';

  @override
  String get traktAttribution =>
      'Trakt විසින් සපයන ලද දත්ත සහ කලා කෘති. ට්රැක්ට් මත බලන්න';

  @override
  String get listsLiked => 'කැමති වුණා';

  @override
  String get listsYours => 'ඔබේ';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'Trakt VIP සාමාජික';

  @override
  String get onHold => 'හෝල්ඩ් එකේ';

  @override
  String get scoredBy => 'ස්කෝර් කරපු අය';

  @override
  String get planToWatch => 'බලන්න ප්ලෑන් කරපු';

  @override
  String get planToRead => 'කියවන්න ප්ලෑන් කරපු';

  @override
  String get timesRewatched => 'ආයෙත් බැලූ වාර';

  @override
  String get timesReread => 'ආයෙත් කියවූ වාර';

  @override
  String get comments => 'කමෙන්ට්ස්';

  @override
  String get moviesAndSeries => 'මූවීස් සහ සීරීස්';

  @override
  String get simklMoviesOnly => 'චිත්‍රපට සහ කතා මාලා පමණි';

  @override
  String get simklMoviesOnlyDesc =>
      'Anime ටැබය ප්‍රතිස්ථාපනය කරයි: පළමුව චිත්‍රපට, පසුව සජීවිකරණ පේළි කිහිපයක් සමඟ පෙන්වයි';

  @override
  String get trackingOnly => 'ට්‍රැකින් විතරයි';

  @override
  String get signedIn => 'සයින් ඉන් වෙලා';

  @override
  String get searchLanguage => 'සර්ච් භාෂාව';

  @override
  String get savedToList => 'ඔයාගේ ලිස්ට් එකට සේව් වුණා';

  @override
  String get removedFromYourList => 'ඔයාගේ ලිස්ට් එකෙන් අයින් වුණා';

  @override
  String get retry => 'ආයෙත් උත්සාහ කරන්න';

  @override
  String get synopsis => 'සාරාංශය';

  @override
  String get details => 'විස්තර';

  @override
  String get addToList => 'ලිස්ට් එකට එකතු කරන්න';

  @override
  String get trailer => 'ට්‍රේලර්';

  @override
  String get trailerQuality => 'ට්රේලරයේ ගුණාත්මකභාවය';

  @override
  String get titleCopied => 'ටයිටල් එක කොපි වුණා';

  @override
  String get linkCopied => 'ලින්ක් එක කොපි වුණා';

  @override
  String get watchTrailer => 'ට්‍රේලර් එක බලන්න';

  @override
  String get copyTitle => 'ටයිටල් එක කොපි කරන්න';

  @override
  String get detailStale =>
      'AnList වෙත ළඟා විය නොහැකි විය. මෙය සුරකින ලද තොරතුරු වන අතර එය කල් ඉකුත් විය හැක.';

  @override
  String get copyLink => 'ලින්ක් එක කොපි කරන්න';

  @override
  String get openInBrowser => 'බ්‍රවුසර් එකේ විවෘත කරන්න';

  @override
  String viewOnSource(String source) {
    return '$source එකේ බලන්න';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'එපිසෝඩ් $ep $time කින් ප්‍රචාරය වෙනවා';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'ඊළඟ එපිසෝඩ් එක $time කින්';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return '$chapter වන පරිච්ඡේදය $timeකින් පමණ එනවා';
  }

  @override
  String get logPathCopied => 'ලොග් ෆයිල් පාත් එක ක්ලිප්බෝඩ් එකට කොපි වුණා';

  @override
  String get animeSource => 'anime සෝස් එක';

  @override
  String get mangaSource => 'manga සෝස් එක';

  @override
  String get popular => 'ජනප්‍රිය';

  @override
  String get allCustomLists => 'සියලුම අභිරුචි ලැයිස්තු';

  @override
  String get simklTitleLanguage => 'සජීවිකරණ මාතෘකා භාෂාව';

  @override
  String get titleLanguageEnglish => 'ඉංග්රීසි';

  @override
  String get titleLanguageRomaji => 'රොමාජි';

  @override
  String get simklListsTrending => 'ප්රවණතා';

  @override
  String get simklListsMostLiked => 'වඩාත්ම කැමති';

  @override
  String get simklListsMostFollowed => 'බොහෝ දෙනා අනුගමනය කළහ';

  @override
  String get simklListsOfficial => 'නිල';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count මාතෘකා',
      one: '1 මාතෘකාව',
    );
    return '$_temp0';
  }

  @override
  String get people => 'මිනිස්සු';

  @override
  String get mostComments => 'බොහෝ අදහස්';

  @override
  String get alphabetical => 'අකාරාදී';

  @override
  String get latest => 'අලුත්ම';

  @override
  String get saved => 'සේව් කරපු';

  @override
  String get nothingMatched => 'කිසිවක් ගැලපුණේ නෑ';

  @override
  String get nothingSavedFromSource => 'මේ සෝස් එකෙන් තාම කිසිවක් සේව් කරලා නෑ';

  @override
  String get sourceReturnedNothing => 'මේ සෝස් එකෙන් කිසිවක් ආවේ නෑ';

  @override
  String get checkConnectionOrSource =>
      'ඔයාගේ කනෙක්ෂන් එක චෙක් කරන්න නැත්නම් වෙන සෝස් එකක් බලන්න.';

  @override
  String get tryDifferentSearch => 'වෙනත් සර්ච් වචනයක් උත්සාහ කරන්න.';

  @override
  String get savedTitlesAppearHere =>
      'ඔයා ලිස්ට් එකට එකතු කරන ටයිටල්ස් මෙතන පේනවා.';

  @override
  String get tryOtherFeed => 'වෙන ෆීඩ් එකක් බලන්න නැත්නම් හොයන්න.';

  @override
  String searchSource(String source) {
    return '$source හොයන්න';
  }

  @override
  String get animeExtensions => 'anime එක්ස්ටෙන්ෂන්ස්';

  @override
  String get mangaExtensions => 'manga එක්ස්ටෙන්ෂන්ස්';

  @override
  String get nothingHereYet => 'මෙතන තාම කිසිවක් නෑ';

  @override
  String get savedOnDeviceUntilLogin =>
      'පහළ තියෙන හැමදේම ඔයා කරන තුරු මේ ඩිවයිස් එකේ සේව් වෙලා තියෙනවා.';

  @override
  String get yourProfile => 'ඔයාගේ ප්‍රොෆයිල් එක';

  @override
  String get activity => 'ඇක්ටිවිටි';

  @override
  String get extensions => 'එක්ස්ටෙන්ෂන්ස්';

  @override
  String get logOut => 'ලොග් අවුට්';

  @override
  String get logIn => 'ලොගින්';

  @override
  String get logOutConfirm => 'ඇත්තටම ලොග් අවුට් වෙනවද?';

  @override
  String get incognitoMode => 'ඉන්කොග්නිටෝ මෝඩ් එක';

  @override
  String get alsoBlockListEdits => 'ලිස්ට් වෙනස්කම් වුනත් අවහිර කරන්න';

  @override
  String get offlineMode => 'ඕෆ්ලයින් මෝඩ් එක';

  @override
  String get switchService => 'සර්විස් එක මාරු කරන්න';

  @override
  String logOutOf(String name) {
    return '$name එකෙන් ලොග් අවුට් වෙන්න';
  }

  @override
  String get loggedIn => 'ලොගින් වෙලා';

  @override
  String get notifications => 'නොටිෆිකේෂන්ස්';

  @override
  String get nothingNew => 'අලුත් දෙයක් නෑ';

  @override
  String get thisWeek => 'මේ සතිය';

  @override
  String get listOnly => 'ලිස්ට් එක විතරයි';

  @override
  String get notInList => 'ලැයිස්තුවේ නැත';

  @override
  String get filter => 'ෆිල්ටර්';

  @override
  String get searchResults => 'සර්ච් ප්‍රතිඵල';

  @override
  String get recentSearches => 'මෑත සර්ච්ස්';

  @override
  String get searchOrSetFilter => 'හොයන්න නැත්නම් ෆිල්ටර් එකක් දාන්න';

  @override
  String get filters => 'ෆිල්ටර්ස්';

  @override
  String get showLess => 'අඩුවෙන් පෙන්වන්න';

  @override
  String get showAll => 'ඔක්කොම පෙන්වන්න';

  @override
  String get apply => 'ඇප්ලයි කරන්න';

  @override
  String get preview => 'ප්‍රිවිව්';

  @override
  String get preset => 'ප්‍රීසෙට්';

  @override
  String get cardNormal => 'සාමාන්‍ය';

  @override
  String get cardOnCard => 'කාඩ් එක උඩ';

  @override
  String get cardInCard => 'කාඩ් එක ඇතුළේ';

  @override
  String get size => 'ප්‍රමාණය';

  @override
  String get cardWidth => 'කාඩ් එකේ පළල';

  @override
  String get compact => 'කොම්පැක්ට්';

  @override
  String get coverAndTitleOnly => 'කවර් එකයි ටයිටල් එකයි විතරයි';

  @override
  String get titleLines => 'ටයිටල් පේළි';

  @override
  String get shape => 'හැඩය';

  @override
  String get posterShape => 'පෝස්ටර් හැඩය';

  @override
  String get cornerRadius => 'කෙළවර රවුම් බව';

  @override
  String get off => 'ඕෆ්';

  @override
  String get topLeft => 'උඩ වම';

  @override
  String get topRight => 'උඩ දකුණ';

  @override
  String get bottomLeft => 'පහළ වම';

  @override
  String get bottomRight => 'පහළ දකුණ';

  @override
  String get overlays => 'ඕවර්ලේස්';

  @override
  String get progressCount => 'ප්‍රගතිය / ගණන';

  @override
  String get pill => 'පිල්';

  @override
  String get bar => 'බාර්';

  @override
  String get outside => 'පිටතින්';

  @override
  String get scoreBadge => 'ස්කෝර් බැජ් එක';

  @override
  String get airingDot => 'ප්‍රචාරණ තිත';

  @override
  String get updateAvailable => 'අප්ඩේට් එකක් තියෙනවා';

  @override
  String get notInstalled => 'ඉන්ස්ටෝල් කරලා නෑ';

  @override
  String get done => 'ඉවරයි';

  @override
  String get searchOrEnterUrl => 'හොයන්න නැත්නම් URL එකක් දාන්න';

  @override
  String get refresh => 'රිෆ්‍රෙෂ්';

  @override
  String get animePlanetRank => 'ශ්රේණිගත කරන්න';

  @override
  String get animePlanetMagazine => 'සඟරාව';

  @override
  String get animePlanetRefreshLists => 'ඔබගේ ලැයිස්තු නැවුම් කරන්න';

  @override
  String get animePlanetRefreshListsDesc =>
      'ඔබේ Anime-Planet ලැයිස්තු නැවත කියවන්න';

  @override
  String get animePlanetLocalNote =>
      'ඔබගේ Anime-Planet ගිණුමට වෙනස්කම් සුරැකීමට පුරන්න. එතෙක් ඔවුන් මෙම උපාංගය මත රැඳී සිටියි';

  @override
  String get share => 'ෂෙයාර්';

  @override
  String get characters => 'චරිත';

  @override
  String get staff => 'ස්ටාෆ්';

  @override
  String get readMore => 'තවත් කියවන්න';

  @override
  String get couldNotLoadList => 'ලිස්ට් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get logInToFavourite => 'ෆේවරිට්ස් එකතු කරන්න ලොගින් වෙන්න';

  @override
  String get alsoKnownAs => 'වෙනත් නම්';

  @override
  String get hideSpoilerNames => 'ස්පොයිලර් නම් හංගන්න';

  @override
  String get showSpoilerNames => 'ස්පොයිලර් නම් පෙන්වන්න';

  @override
  String get favourited => 'ෆේවරිට් කරලා';

  @override
  String get favourite => 'ෆේවරිට්';

  @override
  String get couldNotOpenTitle => 'මේ ටයිටල් එක විවෘත කරන්න බැරි වුණා';

  @override
  String get nobodyHereYet => 'මෙතන තාම කවුරුත් නෑ';

  @override
  String get noMatches => 'ගැලපෙන ඒවා නෑ';

  @override
  String get gridView => 'ග්‍රිඩ් වීව්';

  @override
  String get fullWidth => 'සම්පූර්ණ පළල';

  @override
  String get userNotFound => 'යූසර් හම්බුණේ නෑ';

  @override
  String get couldNotUpdateFollow => 'ෆොලෝ අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String followedUser(String name) {
    return '$name ව ෆොලෝ කළා';
  }

  @override
  String unfollowedUser(String name) {
    return '$name ව අන්ෆොලෝ කළා';
  }

  @override
  String get messages => 'මැසේජස්';

  @override
  String get logInToSeeMessages => 'ඔයාගේ මැසේජස් බලන්න ලොගින් වෙන්න';

  @override
  String get editActivity => 'ඇක්ටිවිටි එක එඩිට් කරන්න';

  @override
  String get newActivity => 'අලුත් ඇක්ටිවිටි එකක්';

  @override
  String get editMessage => 'මැසේජ් එක එඩිට් කරන්න';

  @override
  String get writeMessage => 'මැසේජ් එකක් ලියන්න';

  @override
  String get editReply => 'රිප්ලයි එක එඩිට් කරන්න';

  @override
  String get posted => 'පෝස්ට් වුණා';

  @override
  String get couldNotPost => 'පෝස්ට් කරන්න බැරි වුණා';

  @override
  String get nothingToPreview => 'ප්‍රිවිව් කරන්න කිසිවක් නෑ';

  @override
  String get writeSomethingHint =>
      'යමක් ලියන්න… මෙතන AniList මාර්ක්ඩවුන් වැඩ කරනවා';

  @override
  String get privateMessage => 'පුද්ගලික මැසේජ් එකක්';

  @override
  String get post => 'පෝස්ට් කරන්න';

  @override
  String get nothingHere => 'මෙතන කිසිවක් නෑ';

  @override
  String get noAnimeProgress => 'anime ප්‍රගතියක් නෑ';

  @override
  String get noMangaProgress => 'manga ප්‍රගතියක් නෑ';

  @override
  String get noMessages => 'මැසේජස් නෑ';

  @override
  String get writeMessageHint => 'මැසේජ් එකක් ලියන්න…';

  @override
  String get shareSomethingHint => 'යමක් ෂෙයාර් කරන්න…';

  @override
  String get all => 'ඔක්කොම';

  @override
  String get anime => 'ඇනිමෙ';

  @override
  String get manga => 'මංගා';

  @override
  String get count => 'ගණන';

  @override
  String get hoursWatched => 'බැලූ පැය';

  @override
  String get chaptersRead => 'කියවපු චැප්ටර්ස්';

  @override
  String get meanScore => 'මධ්‍යන්‍ය ස්කෝර් එක';

  @override
  String get noStatsYet => 'තාම ස්ටැට්ස් නෑ';

  @override
  String get totalEntries => 'මුළු එන්ට්‍රීස්';

  @override
  String get episodesWatched => 'බැලූ එපිසෝඩ්ස්';

  @override
  String get daysWatched => 'බැලූ දවස්';

  @override
  String get volumesRead => 'කියවපු වෝල්යුම්ස්';

  @override
  String get standardDeviation => 'ස්ටෑන්ඩර්ඩ් ඩිවියේෂන්';

  @override
  String get showMore => 'තවත් පෙන්වන්න';

  @override
  String get followsYou => 'ඔයාව ෆොලෝ කරනවා';

  @override
  String get nobodyYet => 'තාම කවුරුත් නෑ';

  @override
  String get logInToLike => 'ලයික් කරන්න ලොගින් වෙන්න';

  @override
  String get failedToLikeActivity => 'ඇක්ටිවිටි එක ලයික් කරන්න බැරි වුණා';

  @override
  String get deleteActivityConfirm => 'ඇක්ටිවිටි එක මකනවද?';

  @override
  String get deletedActivity => 'ඇක්ටිවිටි එක මැකුණා';

  @override
  String get failedToDeleteActivity => 'ඇක්ටිවිටි එක මකන්න බැරි වුණා';

  @override
  String get subscribed => 'සබ්ස්ක්‍රයිබ් වුණා';

  @override
  String get unsubscribed => 'අන්සබ්ස්ක්‍රයිබ් වුණා';

  @override
  String get failedToUpdateSubscription =>
      'සබ්ස්ක්‍රිප්ෂන් එක අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String get edit => 'එඩිට්';

  @override
  String get delete => 'මකන්න';

  @override
  String get likedBy => 'ලයික් කළ අය';

  @override
  String get follow => 'ෆොලෝ';

  @override
  String get nameCopied => 'නම කොපි වුණා';

  @override
  String get followsEachOther => 'දෙන්නම එකිනෙකා ෆොලෝ කරනවා';

  @override
  String get unfollow => 'අන්ෆොලෝ';

  @override
  String get userIdCopied => 'යූසර් ID එක කොපි වුණා';

  @override
  String get shareProfile => 'ප්‍රොෆයිල් එක ෂෙයාර් කරන්න';

  @override
  String get copyUserId => 'යූසර් ID එක කොපි කරන්න';

  @override
  String get failedToDelete => 'මකන්න බැරි වුණා';

  @override
  String get failedToLike => 'ලයික් කරන්න බැරි වුණා';

  @override
  String get replies => 'රිප්ලයි';

  @override
  String get reply => 'රිප්ලයි කරන්න';

  @override
  String get noRepliesYet => 'තාම රිප්ලයි නෑ';

  @override
  String get favouriteAnime => 'ප්‍රියතම anime';

  @override
  String get favouriteManga => 'ප්‍රියතම manga';

  @override
  String get favouriteCharacters => 'ප්‍රියතම චරිත';

  @override
  String get favouriteStaff => 'ප්‍රියතම ස්ටාෆ්';

  @override
  String get favouriteStudios => 'ප්‍රියතම ස්ටූඩියෝස්';

  @override
  String get noFavouritesYet => 'තාම ෆේවරිට්ස් නෑ';

  @override
  String get yourStory => 'ඔයාගේ ස්ටෝරි එක';

  @override
  String get copiedToClipboard => 'ක්ලිප්බෝඩ් එකට කොපි වුණා';

  @override
  String get justNow => 'මේ දැන්';

  @override
  String get openImage => 'ඉමේජ් එක විවෘත කරන්න';

  @override
  String get hideSpoiler => 'ස්පොයිලර් හංගන්න';

  @override
  String get showSpoiler => 'ස්පොයිලර් පෙන්වන්න';

  @override
  String get status => 'ස්ටේටස්';

  @override
  String get score => 'ස්කෝර්';

  @override
  String get started => 'පටන් ගත්තේ';

  @override
  String get completed => 'ඉවර කළේ';

  @override
  String get private => 'පෞද්ගලික';

  @override
  String get hideFromStatusLists => 'ස්ටේටස් ලිස්ට් වලින් හංගන්න';

  @override
  String get totalRepeats => 'මුළු රිපීට්ස්';

  @override
  String get other => 'වෙනත්';

  @override
  String get customLists => 'කස්ටම් ලිස්ට්ස්';

  @override
  String get activeDays => 'ඇක්ටිව් දවස්';

  @override
  String get longestStreak => 'දිගම ස්ට්‍රීක් එක';

  @override
  String get currentStreak => 'දැන් ස්ට්‍රීක් එක';

  @override
  String get tapOrHoverDay => 'දවසක් ටැප් කරන්න නැත්නම් හෝවර් කරන්න';

  @override
  String get less => 'අඩු';

  @override
  String get more => 'වැඩි';

  @override
  String epIn(int ep, String time) {
    return 'එපිසෝඩ් $ep $time කින්';
  }

  @override
  String get sectionLoading => 'ලෝඩ් වෙනවා';

  @override
  String get querySize => 'ක්වෙරි ප්‍රමාණය';

  @override
  String get querySizeDesc =>
      'එක ලොකු ක්වෙරි එකක් එක රික්වෙස්ට් එකකින් හැම පේළියක්ම (සම්පූර්ණ ප්‍රොෆයිල් එකත්) ලෝඩ් කරනවා. ස්ප්ලිට් ක්වෙරීස් හැම පේළියකටම හෝ ප්‍රොෆයිල් කොටසකටම පොඩි රික්වෙස්ට් එකක් යවනවා: හැම එකක්ම ඉක්මන්, කොටස් එන එන විදියට පේනවා.';

  @override
  String get oneBig => 'එක ලොකුවට';

  @override
  String get split => 'ස්ප්ලිට්';

  @override
  String get sectionSocial => 'සෝෂල්';

  @override
  String get systemNotifications => 'සිස්ටම් නොටිෆිකේෂන්ස්';

  @override
  String get feedLayout => 'ෆීඩ් ලේඅවුට් එක';

  @override
  String sectionsShown(int shown, int total) {
    return '$total න් $shown පෙන්වනවා — තෝරන්න සහ අනුපිළිවෙල වෙනස් කරන්න ටැප් කරන්න';
  }

  @override
  String labelSections(String label) {
    return '$label සෙක්ෂන්ස්';
  }

  @override
  String get accountOptions => 'ගිණුම් විකල්ප';

  @override
  String get anilistAccountOptions => 'AniList ගිණුම් විකල්ප';

  @override
  String get sectionPrivacy => 'පෞද්ගලිකත්වය';

  @override
  String get hidePrivateEntries => 'පෞද්ගලික එන්ට්‍රීස් හංගන්න';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList එකේ පෞද්ගලික කියලා සලකුණු කරපු එන්ට්‍රීස් ෆීඩ් එකෙන් ඈත් කරන්න';

  @override
  String get anilistExcludeList => 'ඔයාගේ ලැයිස්තුව බැහැර කරන්න';

  @override
  String get anilistExcludeListDesc =>
      'ඔයාගේ AniList එකේ දැනටමත් තියෙන ටයිටල් ඇනිමේ සහ මංගා පිටුවල පෙන්නන්න එපා';

  @override
  String get anilistProfile => 'AniList ප්‍රොෆයිල් එක';

  @override
  String get refreshFromAnilist => 'AniList එකෙන් රිෆ්‍රෙෂ් කරන්න';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList සැකසුම් අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String get sectionNames => 'නම්';

  @override
  String get titleLanguage => 'ටයිටල් භාෂාව';

  @override
  String get titleLanguageDesc =>
      'හැම තැනම ටයිටල්ස් ලියන විදිය, උදා: Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'ස්ටාෆ් සහ චරිත නම්';

  @override
  String get sectionLists => 'ලිස්ට්ස්';

  @override
  String get scoreFormat => 'ස්කෝර් ෆෝමැට් එක';

  @override
  String get sortListsBy => 'ලිස්ට්ස් සෝට් කරන්න';

  @override
  String labelCustomLists(String label) {
    return '$label කස්ටම් ලිස්ට්ස්';
  }

  @override
  String customListsCount(int count) {
    return 'ලිස්ට් $countක් — එකතු කරන්න හෝ අයින් කරන්න ටැප් කරන්න';
  }

  @override
  String get mergeActivities => 'ඇක්ටිවිටීස් මර්ජ් කරන්න';

  @override
  String minutesCount(int count) {
    return 'විනාඩි $count';
  }

  @override
  String get timezone => 'ටයිම්සෝන් එක';

  @override
  String get notSet => 'සෙට් කරලා නෑ';

  @override
  String get airingNotifications => 'ප්‍රචාරණ නොටිෆිකේෂන්ස්';

  @override
  String get airingNotificationsDesc =>
      'ඔයා ෆොලෝ කරන ෂෝ එකක එපිසෝඩ් එකක් ප්‍රචාරය වුණාම දැනුම් දෙන්න';

  @override
  String get displayAdultContent => 'වැඩිහිටි කන්ටෙන්ට් පෙන්වන්න';

  @override
  String get displayAdultContentDesc =>
      'බ්‍රවුස්, සර්ච් සහ ෆීඩ්ස් වල 18+ ටයිටල්ස් ඇතුළත් කරන්න';

  @override
  String get restrictMessages => 'මැසේජස් ෆොලෝ කරන අයට විතරක් සීමා කරන්න';

  @override
  String get restrictMessagesDesc =>
      'ඔයා ෆොලෝ කරන අයට විතරයි ඔයාට මැසේජ් කරන්න පුළුවන්';

  @override
  String get sectionServices => 'සර්විසස්';

  @override
  String get novel => 'නවකතා';

  @override
  String labelService(String label) {
    return '$label සර්විස් එක';
  }

  @override
  String nameSettings(String name) {
    return '$name සැකසුම්';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name එක්ස්ටෙන්ෂන් බ්‍රිජ් එකෙන් විකල්ප';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name පටන් ගන්න බැරි වුණා: $error';
  }

  @override
  String get importLists => 'ලිස්ට්ස් ඉම්පෝර්ට් කරන්න';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi හෝ Kotatsu බැකප්ස් වලින්';

  @override
  String get exportLists => 'ලිස්ට්ස් එක්ස්පෝර්ට් කරන්න';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon හෝ Kotatsu බැකප් එකකට';

  @override
  String get sectionBrowse => 'බ්‍රවුස්';

  @override
  String get readingTab => 'රීඩින් ටැබ් එක';

  @override
  String get readingTabDesc =>
      'තුන්වෙනි ටැබ් එකේ පෙන්වන්නේ මොන එක්ස්ටෙන්ෂන්ස්ද';

  @override
  String get firstTab => 'පළමු ටැබය';

  @override
  String get firstTabDesc =>
      'පළමු ටැබය පෙන්වන දිගු මොනවාද. බාර් එකෙන් ඇනිමෙ හැලීමට මෙහි මන්ගා තෝරාගෙන කියවීමේ පටිත්තෙහි නවකතාව තෝරන්න';

  @override
  String get novelExtensions => 'නවකතා දිගු';

  @override
  String get defaultFeed => 'ඩිෆෝල්ට් ෆීඩ් එක';

  @override
  String get defaultFeedDesc => 'සෝස් එකක් ඕපන් වෙන්නේ මොන ලිස්ට් එකත් එක්කද';

  @override
  String noServiceSupports(String type) {
    return '$type වලට කිසිම සර්විස් එකක් සහාය දක්වන්නේ නෑ';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · ඉන්ස්ටෝල් කරපු $installed න් $loaded ලෝඩ් වෙනවා';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'මෙතන $type වලට කිසිම එක්ස්ටෙන්ෂන් සර්විස් එකක් සහාය දක්වන්නේ නෑ.';
  }

  @override
  String get loadDataFrom => 'දත්ත ලෝඩ් කරන්නේ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ඉන්ස්ටෝල් කරපු $type සෝසස් තාම නෑ.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name සඳහා එක්ස්ටෙන්ෂන් එක ඉන්ස්ටෝල් කරලා නෑ';
  }

  @override
  String get thisSource => 'මේ සෝස් එක';

  @override
  String failedToAddRepository(String error) {
    return 'රෙපෝ එක එකතු කරන්න බැරි වුණා: $error';
  }

  @override
  String installedType(String type) {
    return 'ඉන්ස්ටෝල් කරපු $type';
  }

  @override
  String availableType(String type) {
    return 'තියෙන $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ඉන්ස්ටෝල් කරපු $type එක්ස්ටෙන්ෂන්ස් නෑ';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'තියෙන $type එක්ස්ටෙන්ෂන්ස් නෑ';
  }

  @override
  String get nothingToShowYet => 'පෙන්වන්න තාම කිසිවක් නෑ';

  @override
  String get addTitlesHint =>
      'ඔයාගේ ලිස්ට් එකට ටයිටල්ස් එකතු කරන්න, ඒවා මෙතන පේනවා.';

  @override
  String get couldntLoad => 'ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get progressStyleHint =>
      'පිල් සහ බාර් පෝස්ටර් එක උඩින් යනවා; පිටතින් කියන්නේ ඒ ගණනම සාමාන්‍ය අකුරින් පෙන්වනවා — එකක් තෝරන්න.';

  @override
  String get nixManagedUpdate =>
      'මේ බිල්ඩ් එක Nix මගින් මැනේජ් කරන්නේ — මෙතනින් අප්ඩේට් නොකර, ඔයාගේ ෆ්ලේක් එකේ \"nix flake update\" රන් කරලා ආයෙත් බිල්ඩ් කරන්න';

  @override
  String autoUpdateFailed(String error) {
    return 'ඔටෝ අප්ඩේට් එක අසාර්ථකයි ($error) — ඒ වෙනුවට ඩවුන්ලෝඩ් පේජ් එක ඕපන් කරනවා';
  }

  @override
  String get unknownPreference => 'නොදන්නා මනාපයක්';

  @override
  String unsupportedPreferenceType(String type) {
    return 'සහාය නොදක්වන මනාප වර්ගයක් $type';
  }

  @override
  String get notYetReleased => 'තාම රිලීස් වෙලා නෑ';

  @override
  String get notStarted => 'තාම පටන් අරන් නෑ';

  @override
  String get country => 'රට';

  @override
  String get sort => 'සෝට් කරන්න';

  @override
  String get chooseBackupDialog =>
      'Aniyomi, Mihon හෝ Kotatsu බැකප් එකක් තෝරන්න';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi හෝ Kotatsu වලින් ලයිබ්‍රරියක් ගේන්න. ටයිටල්ස්, කවර්ස්, ප්‍රගතිය සහ කාණ්ඩ ඒ විදියටම තියෙනවා.';

  @override
  String get chooseBackupFile => 'බැකප් ෆයිල් එක තෝරන්න';

  @override
  String importAnimeCount(int count) {
    return 'anime $countක් ඉම්පෝර්ට් කරන්න';
  }

  @override
  String importMangaCount(int count) {
    return 'manga $countක් ඉම්පෝර්ට් කරන්න';
  }

  @override
  String get mergeWithExisting => 'දැනට තියෙන ලිස්ට්ස් එක්ක මර්ජ් කරන්න';

  @override
  String get mergeWithExistingDesc =>
      'දැනට තියෙන ඒවා තියාගන්නවා; ඕෆ් කළොත් ගැලපෙන ටයිටල්ස් ප්‍රතිස්ථාපනය වෙනවා';

  @override
  String get chooseAnother => 'වෙන එකක් තෝරන්න';

  @override
  String get import => 'ඉම්පෝර්ට්';

  @override
  String animeCount(int count) {
    return 'anime $count';
  }

  @override
  String mangaCount(int count) {
    return 'manga $count';
  }

  @override
  String get chooseSaveLocation => 'බැකප් එක සේව් කරන්න ඕන තැන තෝරන්න';

  @override
  String savedPath(String path) {
    return '$path සේව් වුණා';
  }

  @override
  String exportFailed(String error) {
    return 'එක්ස්පෝර්ට් කරන්න බැරි වුණා: $error';
  }

  @override
  String get nothingInLocalLists => 'ඔයාගේ ලෝකල් ලිස්ට්ස් වල තාම කිසිවක් නෑ.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ඔයාගේ ලෝකල් ලිස්ට්ස් වලින් anime $animeක් සහ manga $mangaක් එක්ස්පෝර්ට් කරනවා. Kotatsu සහාය දක්වන්නේ manga වලට විතරයි.';
  }

  @override
  String get saveToFolder => 'ෆෝල්ඩර් එකකට සේව් කරන්න';

  @override
  String get formatAnimeManga => 'Anime සහ manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga විතරයි · .tachibk';

  @override
  String get formatMangaZip => 'Manga විතරයි · .zip';

  @override
  String get genres => 'ජෝනර්ස්';

  @override
  String get relations => 'සම්බන්ධතා';

  @override
  String get recommendations => 'නිර්දේශ';

  @override
  String get openings => 'ඕපනිංස්';

  @override
  String get endings => 'එන්ඩිංස්';

  @override
  String get background => 'පසුබිම';

  @override
  String get links => 'ලින්ක්ස්';

  @override
  String get rank => 'රෑන්ක්';

  @override
  String get members => 'සාමාජිකයින්';

  @override
  String get favorites => 'ෆේවරිට්ස්';

  @override
  String get episodes => 'එපිසෝඩ්ස්';

  @override
  String get chapters => 'චැප්ටර්ස්';

  @override
  String get volumes => 'වෝල්යුම්ස්';

  @override
  String get format => 'ෆෝමැට්';

  @override
  String get source => 'සෝස්';

  @override
  String get duration => 'කාල සීමාව';

  @override
  String minutesPerEpisode(int minutes) {
    return 'එපිසෝඩ් එකකට විනාඩි $minutes';
  }

  @override
  String get rating => 'රේටින්';

  @override
  String get studio => 'ස්ටූඩියෝ';

  @override
  String get serialization => 'සීරියලයිසේෂන්';

  @override
  String get season => 'සීසන්';

  @override
  String get year => 'වසර';

  @override
  String get filterAny => 'ඕනෑම';

  @override
  String get broadcast => 'බ්‍රෝඩ්කාස්ට්';

  @override
  String get aired => 'ප්‍රචාරය වුණේ';

  @override
  String get published => 'පබ්ලිෂ් වුණේ';

  @override
  String get popularity => 'ජනප්‍රියත්වය';

  @override
  String get community => 'කොමියුනිටි';

  @override
  String get watching => 'බලමින්';

  @override
  String get reading => 'කියවමින්';

  @override
  String get dropped => 'නැවැත්වූ';

  @override
  String get unfinished => 'නිම නොකළ';

  @override
  String get planned => 'ප්ලෑන් කරපු';

  @override
  String get trailers => 'ට්‍රේලර්ස්';

  @override
  String get ratings => 'රේටින්ස්';

  @override
  String get originalTitle => 'ඔරිජිනල්';

  @override
  String get titleLabel => 'ටයිටල්';

  @override
  String get votes => 'වෝට්ස්';

  @override
  String get watchedStat => 'බැලූ';

  @override
  String get runtime => 'රන්ටයිම්';

  @override
  String get director => 'ඩිරෙක්ටර්';

  @override
  String get network => 'නෙට්වර්ක්';

  @override
  String get certification => 'සහතිකය';

  @override
  String get airs => 'ප්‍රචාරය වෙන්නේ';

  @override
  String get budget => 'අයවැය';

  @override
  String get revenue => 'ආදායම';

  @override
  String get released => 'රිලීස් වුණේ';

  @override
  String get tags => 'ටැග්ස්';

  @override
  String get author => 'ඔතර්';

  @override
  String get born => 'ඉපදුණේ';

  @override
  String get died => 'මිය ගියා';

  @override
  String get birthplace => 'උපන් ස්ථානය';

  @override
  String get department => 'දෙපාර්තමේන්තුව';

  @override
  String get website => 'වෙබ්සයිට්';

  @override
  String get established => 'ආරම්භ කළේ';

  @override
  String get manhwa => 'මන්හ්වා';

  @override
  String get manhua => 'මන්හුවා';

  @override
  String get novels => 'නවකතා';

  @override
  String get thisMonth => 'මේ මාසේ';

  @override
  String get movies => 'මූවීස්';

  @override
  String get shows => 'ෂෝස්';

  @override
  String get moviesWatched => 'චිත්‍රපට නැරඹුවා';

  @override
  String get showsWatched => 'සංදර්ශන නැරඹුවා';

  @override
  String get moviesCollected => 'චිත්‍රපට එකතු කරන ලදී';

  @override
  String get showsCollected => 'සංදර්ශන එකතු කර ඇත';

  @override
  String get rewatching => 'ආයෙත් බලමින්';

  @override
  String get rereading => 'ආයෙත් කියවමින්';

  @override
  String get watchedStatus => 'බැලූ';

  @override
  String get planning => 'ප්ලෑන් කරමින්';

  @override
  String get paused => 'පෝස් කරපු';

  @override
  String get watch => 'බලන්න';

  @override
  String get read => 'කියවන්න';

  @override
  String get finished => 'ඉවර වුණා';

  @override
  String get releasing => 'රිලීස් වෙමින්';

  @override
  String get cancelled => 'අවලංගු කළා';

  @override
  String get hiatus => 'හයියටස්';

  @override
  String get remove => 'අයින් කරන්න';

  @override
  String syncToService(String service) {
    return '$service එකට සින්ක් කරන්න';
  }

  @override
  String syncedToService(String service) {
    return '$service එකට සින්ක් වුණා';
  }

  @override
  String get latestReleases => 'අලුත්ම රිලීස්ස්';

  @override
  String get topRated => 'ඉහළම රේට් කරපු';

  @override
  String localSection(String title) {
    return '$title · ලෝකල්';
  }

  @override
  String get localEntryNote =>
      'මේ ටයිටල් එක තියෙන්නේ මේ ඩිවයිස් එකේ ඔයාගේ ලෝකල් ලිස්ට් එකේ විතරයි. ඔයාගේ ගිණුමේ ලිස්ට් එකත් එක්ක ගැටෙන්න පුළුවන් නිසා මෙතන එඩිට් කරන්න බෑ; ඒත් අයින් කරන්න පුළුවන්.';

  @override
  String get cardPresetPoster => 'පෝස්ටර්';

  @override
  String get cardPresetCard => 'කාඩ්';

  @override
  String get cardPresetCozy => 'කෝසි';

  @override
  String get sortTopRated => 'ඉහළම රේට් කරපු';

  @override
  String get sortMostPopular => 'වැඩියෙන්ම ජනප්‍රිය';

  @override
  String get sortTrending => 'ට්‍රෙන්ඩින්';

  @override
  String get sortNewest => 'අලුත්ම';

  @override
  String get sortAz => 'A-Z';

  @override
  String get sortMostFavourited => 'වැඩියෙන්ම ෆේවරිට් කරපු';

  @override
  String get anyCountry => 'ඕනෑම රටක්';

  @override
  String get orderScore => 'ස්කෝර්';

  @override
  String get orderTitle => 'ටයිටල්';

  @override
  String get orderLastUpdated => 'අන්තිමට අප්ඩේට් වුණේ';

  @override
  String get orderLastAdded => 'අන්තිමට එකතු කළේ';

  @override
  String get never => 'කවදාවත් නෑ';

  @override
  String get always => 'හැමවිටම';

  @override
  String get scorePoint100 => 'ලකුණු 100';

  @override
  String get scorePoint10Decimal => 'දශම සහිත ලකුණු 10';

  @override
  String get scorePoint10 => 'ලකුණු 10';

  @override
  String get scorePoint5 => 'තරු 5';

  @override
  String get scorePoint3 => 'ස්මයිලි 3';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'පැය $count',
      one: 'පැය 1',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'දවස් $count',
      one: 'දවස් 1',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'සති $count',
      one: 'සතිය 1',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'රිස්යූම්';

  @override
  String get resumeSourceMissing =>
      'රිස්යූම් කරන්න මේ ටයිටල් එකේ සෝස් එක ඉන්ස්ටෝල් කරන්න';

  @override
  String get resumeRemove => 'රිස්යූම් එකෙන් අයින් කරන්න';

  @override
  String resumeAt(String time) {
    return '$time ඉතිරියි';
  }

  @override
  String resumePage(int page, int total) {
    return '$total න් පිටුව $page';
  }

  @override
  String get continueWatching => 'බලන එක දිගටම කරන්න';

  @override
  String get continueReading => 'කියවන එක දිගටම කරන්න';

  @override
  String get favouriteAnimeSection => 'ප්‍රියතම anime';

  @override
  String get favouriteMangaSection => 'ප්‍රියතම manga';

  @override
  String get plannedAnime => 'ප්ලෑන් කරපු anime';

  @override
  String get plannedManga => 'ප්ලෑන් කරපු manga';

  @override
  String get completedAnime => 'ඉවර කරපු anime';

  @override
  String get completedManga => 'ඉවර කරපු manga';

  @override
  String get hiddenMedia => 'හංගපු මීඩියා';

  @override
  String get recentUpdates => 'මෑත අප්ඩේට්ස්';

  @override
  String get trendingNow => 'දැන් ට්‍රෙන්ඩින්';

  @override
  String get popularThisSeason => 'මේ සීසන් එකේ ජනප්‍රිය';

  @override
  String get trendingMovies => 'ට්‍රෙන්ඩින් මූවීස්';

  @override
  String get topRatedSeries => 'ඉහළම රේට් කරපු සීරීස්';

  @override
  String get mostFavouriteSeries => 'වැඩියෙන්ම ෆේවරිට් කරපු සීරීස්';

  @override
  String get popularAnime => 'ජනප්‍රිය anime';

  @override
  String get trendingManhwa => 'ට්‍රෙන්ඩින් manhwa';

  @override
  String get trendingNovels => 'ට්‍රෙන්ඩින් නවකතා';

  @override
  String get topRatedManga => 'ඉහළම රේට් කරපු manga';

  @override
  String get mostFavouriteManga => 'වැඩියෙන්ම ෆේවරිට් කරපු manga';

  @override
  String get popularManga => 'ජනප්‍රිය manga';

  @override
  String get topMovies => 'ටොප් මූවීස්';

  @override
  String get topOna => 'ටොප් ONA';

  @override
  String get topOva => 'ටොප් OVA';

  @override
  String get mostPopular => 'වැඩියෙන්ම ජනප්‍රිය';

  @override
  String get mostFavourite => 'වැඩියෙන්ම ෆේවරිට්';

  @override
  String get upcoming => 'එන්න යන';

  @override
  String get topManga => 'ටොප් manga';

  @override
  String get topManhwa => 'ටොප් manhwa';

  @override
  String get topManhua => 'ටොප් manhua';

  @override
  String get topNovels => 'ටොප් නවකතා';

  @override
  String get topOneShots => 'ටොප් වන්-ෂොට්ස්';

  @override
  String get trendingMoviesToday => 'අද ට්‍රෙන්ඩින් මූවීස්';

  @override
  String get trendingShowsToday => 'අද ට්‍රෙන්ඩින් ෂෝස්';

  @override
  String get trendingMoviesWeek => 'මේ සතියේ ට්‍රෙන්ඩින් මූවීස්';

  @override
  String get trendingShowsWeek => 'මේ සතියේ ට්‍රෙන්ඩින් ෂෝස්';

  @override
  String get mostWatchedMoviesMonth => 'මේ මාසේ වැඩියෙන්ම බැලූ මූවීස්';

  @override
  String get mostWatchedShowsMonth => 'මේ මාසේ වැඩියෙන්ම බැලූ ෂෝස්';

  @override
  String get trendingThisWeek => 'මේ සතියේ ට්‍රෙන්ඩින්';

  @override
  String get mostWatchedThisMonth => 'මේ මාසේ වැඩියෙන්ම බැලූ';

  @override
  String get repoLinksAdded => 'රෙපෝ ලින්ක්ස් සාර්ථකව එකතු වුණා!';

  @override
  String repoLinkConfirm(String url) {
    return 'මෙම ගබඩාව එක් කරන්නද?\n\n$url\n\nඔබ විශ්වාස කරන මූලාශ්‍රවලින් පමණක් ගබඩා එකතු කරන්න.';
  }

  @override
  String get errorGettingAnilistData => 'AniList එකෙන් දත්ත ගන්න එරර් එකක්.';

  @override
  String get navInfo => 'තොරතුරු';

  @override
  String get navComments => 'කමෙන්ට්ස්';

  @override
  String get playerNotAvailable => 'ප්ලේයර් එක තාම නෑ';

  @override
  String deepLinkInitialError(String error) {
    return 'ආරම්භක ඩීප් ලින්ක් එක ගන්න එරර් එකක්: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'ලින්ක් එක ඕපන් කරන්න එරර් එකක්: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'මේ ලින්ක් එක ඕපන් කරන්න බෑ: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'ලින්ක් එක ඕපන් කරන්න එරර් එකක්: $error';
  }

  @override
  String get forReleasingTitles => 'දැන් රිලීස් වෙමින් තියෙන ටයිටල්ස් වලට';

  @override
  String get progress => 'ප්‍රගතිය';

  @override
  String get notes => 'සටහන්';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" සර්විස් එක හම්බුණේ නෑ';
  }

  @override
  String get glassEffectEnabled => 'ග්ලාස් ඉෆෙක්ට් එක ඔන් වුණා';

  @override
  String get glassEffectDisabled => 'ග්ලාස් ඉෆෙක්ට් එක ඕෆ් වුණා';

  @override
  String get materialYouEnabled => 'Material You ඔන් වුණා';

  @override
  String get materialYouDisabled => 'Material You ඕෆ් වුණා';

  @override
  String get darkModeEnabled => 'ඩාර්ක් මෝඩ් එක ඔන් වුණා';

  @override
  String get darkModeDisabled => 'ඩාර්ක් මෝඩ් එක ඕෆ් වුණා';

  @override
  String get animeList => 'anime ලිස්ට් එක';

  @override
  String get mangaList => 'manga ලිස්ට් එක';

  @override
  String ownerAnimeList(String owner) {
    return '$owner ගේ anime ලිස්ට් එක';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner ගේ manga ලිස්ට් එක';
  }

  @override
  String get loadingList => 'ලිස්ට් එක ලෝඩ් වෙනවා';

  @override
  String get earlier => 'කලින්';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'දවස් $countකට කලින්',
      one: 'දවසකට කලින්',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'පැය $countකට කලින්',
      one: 'පැයකට කලින්',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'විනාඩි $countකට කලින්',
      one: 'විනාඩියකට කලින්',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'වි.$countකට කලින්';
  }

  @override
  String hoursAgoShort(int count) {
    return 'පැ.$countකට කලින්';
  }

  @override
  String daysAgoShort(int count) {
    return 'ද.$countකට කලින්';
  }

  @override
  String weeksAgoShort(int count) {
    return 'ස.$countකට කලින්';
  }

  @override
  String get couldntLoadSource => 'මේ සෝස් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get followers => 'ෆොලෝවර්ස්';

  @override
  String couldntLoadTitle(String title) {
    return '$title ලෝඩ් කරන්න බැරි වුණා';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'මේ ප්‍රොෆයිල් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get profile => 'ප්‍රොෆයිල්';

  @override
  String get feed => 'ෆීඩ්';

  @override
  String get stats => 'ස්ටැට්ස්';

  @override
  String get received => 'ලැබුණු';

  @override
  String get sent => 'යැවූ';

  @override
  String get global => 'ග්ලෝබල්';

  @override
  String get couldntLoadPage => 'මේ පේජ් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get couldntLoadAllDetails => 'හැම විස්තරයක්ම ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get series => 'සීරීස්';

  @override
  String get studios => 'ස්ටූඩියෝස්';

  @override
  String get users => 'යූසර්ස්';

  @override
  String repositoriesTitle(String type) {
    return '$type රෙපොසිටරීස්';
  }

  @override
  String get repositoryUrl => 'රෙපොසිටරි URL එක';

  @override
  String get downloadingRepository => 'රෙපොසිටරි එක ඩවුන්ලෝඩ් වෙනවා…';

  @override
  String get noRepositories => 'රෙපොසිටරීස් එකතු කරලා නෑ';

  @override
  String repoExtensionsCount(String count) {
    return 'එක්ස්ටෙන්ෂන්ස් $countක්';
  }

  @override
  String get searchExtensions => 'එක්ස්ටෙන්ෂන්ස් හොයන්න...';

  @override
  String deletePluginTitle(String name) {
    return '$name මකනවද?';
  }

  @override
  String get deletePluginMessage => 'ඇත්තටම මේ ප්ලගින් එක මකන්නද?';

  @override
  String pluginDeleted(String name) {
    return '$name මැකුණා';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name කොන්ෆිගර් කරපු රෙපෝ එකේ නෑ';
  }

  @override
  String get pluginFetchFailed => 'ප්ලගින් තොරතුරු ගන්න බැරි වුණා';

  @override
  String installPluginTitle(String name) {
    return '$name ඉන්ස්ටෝල් කරන්න';
  }

  @override
  String sizeLabel(String size) {
    return 'ප්‍රමාණය: $size';
  }

  @override
  String get installedState => 'ඉන්ස්ටෝල් කරලා';

  @override
  String updatePluginTitle(String name) {
    return '$name යාවත්කාලීන කරන්න';
  }

  @override
  String get errorLabel => 'එරර්:';

  @override
  String get stackTraceDetails => 'විස්තර (ස්ටැක් ට්‍රේස්)';

  @override
  String get shareLogFile => 'ලොග් ෆයිල් එක ෂෙයාර් කරන්න';

  @override
  String get copyLogs => 'ලොග්ස් කොපි කරන්න';

  @override
  String noListToEdit(String service) {
    return '$service එකේ එඩිට් කරන්න ලිස්ට් එකක් නෑ';
  }

  @override
  String get couldNotReadFile => 'ඒ ෆයිල් එක කියවන්න බැරි වුණා';

  @override
  String importedSummary(int anime, int manga) {
    return 'anime $animeක් සහ manga $mangaක් ඉම්පෝර්ට් වුණා';
  }

  @override
  String alreadyThere(int count) {
    return ' · $countක් කලින්ම තිබුණා';
  }

  @override
  String get airingNow => 'දැන් ප්‍රචාරය වෙනවා';

  @override
  String get topRatedMovies => 'ඉහළම රේට් කරපු මූවීස්';

  @override
  String get koreanDramas => 'කොරියානු ඩ්‍රාමා';

  @override
  String get chineseDramas => 'චීන ඩ්‍රාමා';

  @override
  String get japaneseDramas => 'ජපන් ඩ්‍රාමා';

  @override
  String get thaiDramas => 'තායි ඩ්‍රාමා';

  @override
  String get turkishDramas => 'තුර්කි ඩ්‍රාමා';

  @override
  String get miniSeries => 'මිනි සීරීස්';

  @override
  String get topRatedShows => 'ඉහළම රේට් කරපු ෂෝස්';

  @override
  String get recommendedSection => 'නිර්දේශිත';

  @override
  String get syncRow => 'ලිස්ට්ස් සින්ක් කරන්න';

  @override
  String get syncRowDesc =>
      'එක සර්විස් එකක ලිස්ට් එක ඔයාගේ අනිත් ගිණුම් වලට කොපි කරන්න';

  @override
  String get syncTitle => 'සින්ක්';

  @override
  String get syncMainService => 'ප්‍රධාන සර්විස් එක';

  @override
  String get syncMainServiceDesc =>
      'ඒකේ ලිස්ට් එක තමයි ඇත්ත; සයින් ඉන් වෙලා තියෙන අනිත් හැම සර්විස් එකක්ම ඒකට ගැලපෙන්න අප්ඩේට් වෙනවා';

  @override
  String get syncAuto => 'ඔටෝ සින්ක්';

  @override
  String get syncAutoDesc =>
      'ඇප් එක ඕපන් වෙද්දීත් හැම විනාඩි 30කටම වරක් බැක්ග්‍රවුන්ඩ් එකේ ෆෙච් කරලා සින්ක් කරන්න';

  @override
  String get syncAddMissing => 'නැති එන්ට්‍රීස් එකතු කරන්න';

  @override
  String get syncAddMissingDesc =>
      'අනිත් සර්විස් එකේ තාම නැති එන්ට්‍රීස් වුනත් එකතු කරන්න';

  @override
  String syncServiceOn(String name) {
    return '$name සමඟ සමමුහුර්ත කරන්න';
  }

  @override
  String get syncDelete => 'ප්‍රධාන සේවාවේ නැති දේ මකන්න';

  @override
  String get syncDeleteDesc =>
      'ප්‍රධාන ලැයිස්තුවේ නොමැති අනෙකුත් සේවාවන්ගෙන් ඇතුළත් කිරීම් ඉවත් කරන්න. මාතෘකාවකට ගැළපිය හැකි ඇතුළත් කිරීම් පමණක් ඉවත් කරනු ලැබේ, එබැවින් Simkl චිත්‍රපට සහ මාලාවන් වැනි දේවල් පවතී';

  @override
  String get syncDeleteTitle => 'ඇතුළත් කිරීම් මකන්නද?';

  @override
  String syncDeleteConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ඇතුළත් කිරීම්',
      one: '1 ඇතුල්වීමක්',
    );
    return '$_temp0 ඔබගේ ප්‍රධාන ලැයිස්තුවේ නැති ඒවා අනෙකුත් සේවාවන්ගෙන් මකා දැමෙනු ඇත. මෙය ආපසු හැරවිය නොහැක.';
  }

  @override
  String get syncDeleteAction => 'මකන්න';

  @override
  String get syncToDelete => 'මකා දැමීමට';

  @override
  String get syncDeletedNote => 'මකා දමනු ඇත';

  @override
  String syncWillRemove(int count, String name) {
    return '$count $name වෙතින් මකනු ඇත';
  }

  @override
  String get syncOnlyForward => 'ඉදිරියෙන් ඉන්න ප්‍රගතිය තියාගන්න';

  @override
  String get syncOnlyForwardDesc =>
      'දැනටමත් ඉදිරියෙන් ඉන්න සර්විස් එකක ප්‍රගතිය අඩු කරන්න එපා';

  @override
  String get animePlanetWontWatch => 'බලන්නේ නැහැ';

  @override
  String get animePlanetWontRead => 'කියවන්නේ නැහැ';

  @override
  String get animePlanetAlreadyOnList => 'දැනටමත් මෙම ලැයිස්තුවේ ඇත';

  @override
  String get animePlanetNewList => 'නව ලැයිස්තුවේ නම';

  @override
  String get syncPrivate => 'පුද්ගලික ඇතුළත් කිරීම්';

  @override
  String get syncPrivateDesc =>
      'ඔබ පුද්ගලිකව තබා ඇති ඇතුළත් කිරීම් සමඟ කළ යුතු දේ. පුද්ගලික විකල්පයක් සහිත සේවාවක් ඔවුන් පුද්ගලික කරයි; අනෙක් අය ඒවා ප්‍රසිද්ධියේ පෙන්වනු ඇත';

  @override
  String get syncPrivateModeAsk => 'අහන්න';

  @override
  String get syncPrivateModeSync => 'ඒවා සමමුහුර්ත කරන්න';

  @override
  String get syncPrivateModeSkip => 'ඒවා මඟ හරින්න';

  @override
  String get syncPrivateTitle => 'පුද්ගලික ඇතුළත් කිරීම්';

  @override
  String syncPrivateAsk(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ඇතුළත් කිරීම් පුද්ගලිකයි',
      one: '1 ඇතුල්වීමක් පුද්ගලිකයි',
    );
    return '$_temp0. පුද්ගලික විකල්පයක් සහිත සේවාවන් (AniList, Kitsu, MangaBaka) ඒවා පුද්ගලික ලෙස ලබා ගනී; අනෙකුත් සේවාවන්ට පුද්ගලික විකල්පයක් නොමැති අතර ඒවා ප්‍රසිද්ධියේ පෙන්වනු ඇත. ඒවා සමමුහුර්ත කරන්නද? ඔබේ පිළිතුර මතකයි; සමමුහුර්ත විකල්ප යටතේ එය වෙනස් කරන්න.';
  }

  @override
  String get syncPrivateInclude => 'ඒවා සමමුහුර්ත කරන්න';

  @override
  String get syncPrivateSkip => 'ඒවා මඟ හරින්න';

  @override
  String get syncFetch => 'ෆෙච්';

  @override
  String get syncFetchAgain => 'ආයෙත් ෆෙච් කරන්න';

  @override
  String get syncAll => 'සියල්ල සින්ක් කරන්න';

  @override
  String get syncStop => 'නවත්වන්න';

  @override
  String get syncResume => 'රිස්යූම්';

  @override
  String get syncNothingToSync => 'මේ වර්ගයට මේ සර්විස් එක සින්ක් කරන්න බෑ';

  @override
  String get syncNoTargets => 'සින්ක් කරන්න වෙන සර්විස් එකකට සයින් ඉන් වෙන්න';

  @override
  String get syncLoadingMap => 'ID මැපින් ලෝඩ් වෙනවා';

  @override
  String get syncComparing => 'ලිස්ට්ස් සසඳනවා';

  @override
  String get syncIntro =>
      'ප්‍රධාන සර්විස් එකක් තෝරලා ෆෙච් එබුවම හැම සර්විස් එකකින්ම ඔයාගේ ලිස්ට් එක එක පාර අහලා, ප්‍රධාන එක එක්ක සසඳනවා.';

  @override
  String get syncStateSynced => 'සින්ක් වුණා';

  @override
  String get syncStateOutdated => 'සින්ක් වෙලා නෑ';

  @override
  String get syncStateMissing => 'ලිස්ට් එකේ නෑ';

  @override
  String get syncStateUnmapped => 'ගැලපීමක් නෑ';

  @override
  String syncPaused(String time) {
    return 'රේට් ලිමිට් එකට බලා ඉන්නවා, $time කින් ආයෙත් පටන් ගනී';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$name එකේ විතරක් $countක් තියෙනවා, ඒවා ඒ විදියටම තියෙනවා';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total න් $done';
  }

  @override
  String get syncNothingHere => 'පෙන්වන්න කිසිවක් නෑ';

  @override
  String syncLimits(int used, int max, String window) {
    return 'මේ $window එකේ රික්වෙස්ට් $max න් $usedක් පාවිච්චි වුණා';
  }

  @override
  String get syncMinute => 'විනාඩිය';

  @override
  String get syncDay => 'දවස';

  @override
  String get syncNotInList => 'තාම ලිස්ට් එකේ නෑ';

  @override
  String get syncCleared => 'ප්ලෑන් එක මැකුණා';

  @override
  String get syncClear => 'මකන්න';

  @override
  String get syncOptions => 'විකල්ප';

  @override
  String get syncShared => 'වෙනත් අයිතමයක් එක්ක තමන්ගේ එන්ට්‍රි එක බෙදාගන්නවා';

  @override
  String syncNotFound(String service) {
    return '$service එකේ හම්බුණේ නෑ';
  }

  @override
  String syncService(String service, int count) {
    return '$service සින්ක් කරන්න ($count)';
  }

  @override
  String get syncOnEdit => 'වෙනස්කම් එක පාරම සින්ක් කරන්න';

  @override
  String get syncOnEditDesc =>
      'හැම ප්‍රගති අප්ඩේට් එකක්ම සහ ලිස්ට් එඩිට් එකක්ම ඔයා සයින් ඉන් වෙලා ඉන්න අනිත් සර්විසස් වලට එක පාරම යවන්න';

  @override
  String syncRemoved(String services) {
    return '$services වෙතින් ඉවත් කරන ලදී';
  }

  @override
  String syncPushed(String services) {
    return '$services වලට සින්ක් වුණා';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'රේට් ලිමිට් වුණා, ටිකකින් ආයෙත් උත්සාහ කරන්න';

  @override
  String get syncAhead => 'ඉදිරියෙන් ඉන්න එක';

  @override
  String get syncAheadDesc =>
      'දෙපැත්තටම: හැම ටයිටල් එකකටම වැඩියෙන්ම ඉදිරියට ගිය එන්ට්‍රි එක දිනලා ඔයාගේ අනිත් හැම සර්විස් එකකටම කොපි වෙනවා';

  @override
  String syncAheadFrom(String service) {
    return '$service එකෙන්';
  }

  @override
  String get syncConfirm => 'සින්ක් කරන්න කලින් රිවිව් කරන්න';

  @override
  String get syncConfirmDesc =>
      'සියල්ල සින්ක් කළාම මොනවද වෙනස් වෙන්නේ, රික්වෙස්ට් කීයක්ද ඕන කියලා පෙන්වන්න';

  @override
  String get syncPreviewTitle => 'සින්ක් කරන්න සූදානම්';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'අප්ඩේට්ස් $updates, එකතු කරන්න $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'රික්වෙස්ට්ස් ආසන්න වශයෙන් $countක්';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'ID $countක් මුලින් ලුක්අප් කරන්න ඕනේ';
  }

  @override
  String get syncPreviewNothing => 'වෙනස් කරන්න දෙයක් නෑ';

  @override
  String get syncStart => 'ස්ටාර්ට්';

  @override
  String get syncRetry => 'ආයෙත් උත්සාහ කරන්න';

  @override
  String get syncSkip => 'මේ අයිතමය ස්කිප් කරන්න';

  @override
  String get syncInclude => 'මේ අයිතමය ආයෙත් ඇතුළත් කරන්න';

  @override
  String get syncSkippedLabel => 'ස්කිප් කළා';

  @override
  String get syncChanges => 'වෙනස්කම්';

  @override
  String get syncChangeStatus => 'ස්ටේටස්';

  @override
  String get syncChangeProgress => 'ප්‍රගතිය';

  @override
  String get syncChangeScore => 'ස්කෝර්';

  @override
  String get syncChangeDates => 'දිනයන්';

  @override
  String get syncChangeRepeat => 'රීවොච් ගණන';

  @override
  String get syncFailedReason => 'අසාර්ථක වුණේ ඇයි';

  @override
  String get syncSkippedHint =>
      'ස්කිප් කරපු අයිතම ආයෙත් ෆෙච් කළත් ඒ විදියටම තියෙනවා';

  @override
  String get commentsRules => 'කමෙන්ට් රූල්ස්';

  @override
  String get commentsRulesBody =>
      'රීතියක් කැඩුවොත් එච්චරයි\n\n1. ජාතිවාදය, වෙනස්කම් කිරීම හෝ වෛර කතා එපා\n2. ස්පෑම් හෝ තමන්ගේම ප්‍රචාරණය එපා\n3. NSFW කන්ටෙන්ට් කොහෙත්ම එපා\n4. ඉංග්‍රීසි විතරයි, ව්‍යතිරේකයක් නෑ\n5. වෙන කෙනෙක් වගේ පෙනී සිටීම, හිරිහැර කිරීම හෝ බනින එක එපා\n6. නීතිවිරෝධී කන්ටෙන්ට් හෝ කිසිම ෆෑන්ඩම් එකකට අධික අගෞරවයක් එපා\n7. රෙපෝස් හෝ එක්ස්ටෙන්ෂන්ස් ඉල්ලන්න හෝ ෂෙයාර් කරන්න එපා\n8. ස්පොයිලර්ස් දාන්න පුළුවන් ස්පොයිලර් ටැග් එකකුයි අනතුරු ඇඟවීමකුයි එක්ක විතරයි\n9. ළමා චරිත ගැන ලිංගිකකරණය කරන හෝ නුසුදුසු කමෙන්ට්ස් එපා\n10. වැරදි නම් පෝස්ට් කරන්න එපා!';

  @override
  String get commentsRulesAccept => 'මට තේරුණා';

  @override
  String get commentsSortNewest => 'අලුත්ම';

  @override
  String get commentsSortOldest => 'පරණම';

  @override
  String get commentsSortHighest => 'ඉහළම රේට් කරපු';

  @override
  String get commentsSortLowest => 'අඩුම රේට් කරපු';

  @override
  String commentsEpisodeShort(int number) {
    return 'එපි. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'චැප්. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'එපිසෝඩ් එකෙන් ෆිල්ටර් කරන්න';

  @override
  String get commentsFilterChapterTitle => 'චැප්ටර් එකෙන් ෆිල්ටර් කරන්න';

  @override
  String get commentsFilterTagTitle => 'එපිසෝඩ් හෝ චැප්ටර් අංකයක් ඇතුළත් කරන්න';

  @override
  String get commentsFilterHint => 'අංකය';

  @override
  String get commentsFilterApply => 'ෆිල්ටර්';

  @override
  String get commentsFilterClear => 'ඔක්කොම පෙන්වන්න';

  @override
  String get commentsPlaceholder => 'කමෙන්ට් එකක් එකතු කරන්න…';

  @override
  String commentsReplyingTo(String name) {
    return '$name ට රිප්ලයි කරනවා';
  }

  @override
  String get commentsSend => 'යවන්න';

  @override
  String get commentsTagButton => 'ටැග්';

  @override
  String commentsTagTitle(String label) {
    return 'ටැග් $label (අවශ්‍ය නම් විතරයි)';
  }

  @override
  String get commentsTagEpisode => 'එපිසෝඩ්';

  @override
  String get commentsTagChapter => 'චැප්ටර්';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label අංකය';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ටැග් එක මුළු ගණන ($total) ඉක්මවන්න බෑ';
  }

  @override
  String get commentsNoTag => 'ටැග් නෑ';

  @override
  String get commentsSpoiler => 'ස්පොයිලර්';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF හොයන්න';

  @override
  String get commentsGifEmpty => 'GIF හම්බුණේ නෑ';

  @override
  String get commentsEmptyText => 'කමෙන්ට් එක හිස් වෙන්න බෑ';

  @override
  String get commentsBannedYou => 'ඔයාට කමෙන්ට් කරන්න තහනම්';

  @override
  String get commentsEdited => 'කමෙන්ට් එක එඩිට් වුණා';

  @override
  String get commentsDeleted => 'කමෙන්ට් එක මැකුණා';

  @override
  String get commentsDeletedPlaceholder => '[මකලා]';

  @override
  String get commentsReported => 'කමෙන්ට් එක රිපෝර්ට් වුණා';

  @override
  String get commentsUserBanned => 'යූසර්ව බෑන් කළා';

  @override
  String get commentsReport => 'රිපෝර්ට්';

  @override
  String get commentsReportAsk => 'මේ කමෙන්ට් එක මොඩරේටර්ස්ලාට රිපෝර්ට් කරනවද?';

  @override
  String get commentsDelete => 'මකන්න';

  @override
  String get commentsDeleteAsk => 'මේ කමෙන්ට් එක හැමෝටම අයින් වෙනවා.';

  @override
  String get commentsBan => 'බෑන්';

  @override
  String get commentsBanAsk => 'මේ යූසර්ව කමෙන්ට් කරන්න බෑන් කරනවද?';

  @override
  String get commentsCopy => 'කොපි';

  @override
  String get commentsViewReply => 'රිප්ලයි 1ක් බලන්න';

  @override
  String commentsViewReplies(int count) {
    return 'රිප්ලයි $countක් බලන්න';
  }

  @override
  String get commentsHideReplies => 'රිප්ලයි හංගන්න';

  @override
  String get commentsLoadMore => 'තවත් කමෙන්ට්ස් ලෝඩ් කරන්න';

  @override
  String get commentsEmpty => 'තාම කමෙන්ට්ස් නෑ. පළවෙනියා වෙන්න!';

  @override
  String get commentsEmptyFiltered => 'මේ ෆිල්ටර් එකට කමෙන්ට්ස් නෑ';

  @override
  String get commentsSignIn =>
      'කමෙන්ට්ස් කියවන්න සහ ලියන්න AniList එකට සයින් ඉන් වෙන්න';

  @override
  String get commentsSignInMessage =>
      'කමෙන්ට්ස් හැම සර්විස් එකක් අතරම බෙදාගන්නවා, ඒවා ඔයාගේ AniList ගිණුම පාවිච්චි කරනවා.';

  @override
  String get commentsUnavailable => 'මේ ටයිටල් එකට කමෙන්ට්ස් නෑ';

  @override
  String get commentsUnavailableMessage =>
      'ඒක AniList එන්ට්‍රි එකකට ගැලපුවේ නෑ.';

  @override
  String get commentsDisabled => 'කමෙන්ට්ස් ඕෆ් කරලා';

  @override
  String get commentsDisabledMessage =>
      'ඒවා ආයෙත් Settings › General වලින් ඔන් කරන්න පුළුවන්.';

  @override
  String get commentsOffline => 'කමෙන්ට්ස් ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get commentsSingleTitle => 'කමෙන්ට් එකක් පෙන්වනවා';

  @override
  String get commentsShowAll => 'සියලු කමෙන්ට්ස් පෙන්වන්න';

  @override
  String get commentsSettingsHeader => 'කමෙන්ට්ස්';

  @override
  String get commentsSettingEnabled => 'කමෙන්ට්ස්';

  @override
  String get commentsSettingEnabledDesc =>
      'ටයිටල්ස් වල කමෙන්ට්ස් ටැබ් එක පෙන්වලා, ඔයාගේ AniList ගිණුමෙන් කමෙන්ට් සර්වර් එකට සයින් ඉන් වෙන්න';

  @override
  String get commentsSettingAlerts => 'රිප්ලයි නොටිෆිකේෂන්ස්';

  @override
  String get commentsSettingAlertsDesc =>
      'කවුරුහරි මගේ කමෙන්ට්ස් වලට රිප්ලයි කළොත් මට දැනුම් දෙන්න';

  @override
  String get commentsNoticeReplyTitle => 'අලුත් කමෙන්ට් රිප්ලයි එකක්';

  @override
  String commentsNoticeReply(String name) {
    return '$name ඔයාගේ කමෙන්ට් එකට රිප්ලයි කළා';
  }

  @override
  String get commentsNoticeWarningTitle => 'ඔයාට අනතුරු ඇඟවීමක් ලැබුණා';

  @override
  String get commentsNoticeWarning =>
      'ඔයාගේ කමෙන්ට්ස් ගැන තව ටිකක් සැලකිලිමත් වෙන්න';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu එකෙන් අප්ඩේට් එකක්';

  @override
  String get barcodeTitle => 'බාර්කෝඩ් එකක් ස්කෑන් කරන්න';

  @override
  String get barcodeTooltip => 'බාර්කෝඩ් එකෙන් manga එකක් හෝ නවකතාවක් හොයන්න';

  @override
  String get barcodeIntro =>
      'වෝල්යුම් එකක පිටිපස්සේ තියෙන බාර්කෝඩ් එකට කැමරාව දාන්න, නැත්නම් ඒකේ ISBN එක ටයිප් කරන්න.';

  @override
  String get barcodeIntroManual =>
      'වෝල්යුම් එකක පිටිපස්සේ බාර්කෝඩ් එකට උඩින් මුද්‍රණය කරලා තියෙන ISBN එක ටයිප් කරන්න.';

  @override
  String get barcodeIsbnHint => 'අයිඑස්බීඑන්';

  @override
  String get barcodeInvalid => 'ඒක වලංගු ISBN එකක් නෙවෙයි';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn සඳහා පොතක් හම්බුණේ නෑ';
  }

  @override
  String get barcodeCameraDenied =>
      'කැමරාව නෑ. කැමරා ඇක්සස් එක දෙන්න නැත්නම් ISBN එක ටයිප් කරන්න.';

  @override
  String get themesTitle => 'ඕපනිංස් සහ එන්ඩිංස්';

  @override
  String get themesPlayVideo => 'වීඩියෝව ප්ලේ කරන්න';

  @override
  String get themesPlayAudio => 'ඕඩියෝ විතරක් ප්ලේ කරන්න';

  @override
  String get themesOpenSite => 'AnimeThemes එකේ විවෘත කරන්න';

  @override
  String get themesCredit => 'AnimeThemes වලින් තීම්ස්';

  @override
  String get themesVersions => 'වර්ෂන්ස්';

  @override
  String get sauceTitle => 'සෝස් එක හොයන්න';

  @override
  String get sauceIntro =>
      'manga පිටුවක් හෝ ආට්වර්ක් එකක් අප්ලෝඩ් කරන්න, නැත්නම් එහි ලින්ක් එක පේස්ට් කරන්න, ඒක ආවේ කොහෙන්ද කියලා හොයන්න.';

  @override
  String get sauceKeyTitle => 'SauceNAO API key එක';

  @override
  String get sauceKeyHint => 'අවශ්‍ය නම් විතරයි, දවසේ සර්ච් සීමාව වැඩි කරයි';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php එකෙන් නොමිලේ key එකක් ගන්න';

  @override
  String get sauceOpen => 'සෝස් එක විවෘත කරන්න';

  @override
  String get sauceCredit => 'SauceNAO මගින් ඉමේජ් සර්ච්';

  @override
  String get sauceEmpty => 'ගැලපීමක් හම්බුණේ නෑ';

  @override
  String get sauceTooltip => 'manga පිටුවක් හෝ ආට්වර්ක් එකක සෝස් එක හොයන්න';

  @override
  String get trendzTitle => 'anime චාර්ට්ස්';

  @override
  String get trendzAnime => 'ඇනිමෙ';

  @override
  String get trendzFemale => 'ගැහැණු චරිත';

  @override
  String get trendzMale => 'පිරිමි චරිත';

  @override
  String get trendzCouple => 'යුවළවල්';

  @override
  String get trendzCredit => 'AniTrendz ගෙන් සතිපතා චාර්ට්ස්';

  @override
  String get trendzNew => 'අලුත්';

  @override
  String get trendzEmpty => 'චාර්ට් එක හිස්';

  @override
  String get shareCard => 'ෂෙයාර් කාඩ් එක';

  @override
  String get shareCardList => 'ලිස්ට් කාඩ් එක ෂෙයාර් කරන්න';

  @override
  String get shareCardSaved => 'කාඩ් එක සේව් වුණා';

  @override
  String get shareCardFailed => 'කාඩ් එක හදන්න බැරි වුණා';

  @override
  String get shareCardListEmpty =>
      'ඔයාගේ ලිස්ට් එකේ ෂෙයාර් කරන්න තාම කිසිවක් නෑ';

  @override
  String get shareCardTop => 'මගේ ටොප් පික්ස්';

  @override
  String themesEpisodes(String eps) {
    return 'එපිසෝඩ්ස් $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ගැලපීමක්';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'සතිය $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'වෝට්ස් $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'පීක් #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'ටොප් ටෙන් එකේ සති $countක්';
  }

  @override
  String get imageSearchTitle => 'ඉමේජ් එකකින් හොයන්න';

  @override
  String get imageSearchTooltip => 'ස්ක්‍රීන්ෂොට් එකකින් anime එකක් හොයන්න';

  @override
  String get imageSearchIntro =>
      'ස්ක්‍රීන්ෂොට් එකක් තෝරන්න නැත්නම් ඉමේජ් ලින්ක් එකක් පේස්ට් කරන්න, trace.moe එක ඒක ආවේ කොයි එපිසෝඩ් එකෙන්ද, කොයි මොහොතෙන්ද කියලා හොයාගන්නවා.';

  @override
  String get imageSearchPick => 'ඉමේජ් එකක් තෝරන්න';

  @override
  String get imageSearchLinkHint => 'ඉමේජ් ලින්ක් එකක් පේස්ට් කරන්න';

  @override
  String get imageSearchGo => 'හොයන්න';

  @override
  String get imageSearchEmpty => 'ගැලපීමක් හම්බුණේ නෑ';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'එපිසෝඩ් $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time දී';
  }

  @override
  String get imageSearchPreview => 'ප්‍රිවිව් ක්ලිප් එක';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ගැලපීමක්';
  }

  @override
  String get imageSearchCredit => 'trace.moe මගින්';

  @override
  String get imageSearchOpenFailed => 'මේ ටයිටල් එක විවෘත කරන්න බැරි වුණා';

  @override
  String get groups => 'ග්‍රෲප්ස්';

  @override
  String get groupsYours => 'ඔයාගේ ග්‍රෲප්ස්';

  @override
  String get groupsPopular => 'ජනප්‍රිය';

  @override
  String get groupsNew => 'අලුත්';

  @override
  String get groupsFeatured => 'ෆීචර්ඩ්';

  @override
  String get groupsSearch => 'ග්‍රෲප්ස් හොයන්න';

  @override
  String get groupsAll => 'ඔක්කොම';

  @override
  String get groupsEmpty => 'ග්‍රෲප්ස් හම්බුණේ නෑ';

  @override
  String get groupsEmptyYours => 'ඔයා තාම කිසිම ග්‍රෲප් එකකට ජොයින් වෙලා නෑ';

  @override
  String get groupsSignIn => 'ඔයා ජොයින් වුණු ග්‍රෲප්ස් බලන්න සයින් ඉන් වෙන්න';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'සාමාජිකයින් $count',
      one: 'සාමාජිකයෙක් 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ජොයින් වෙන්න';

  @override
  String get groupsJoined => 'ජොයින් වෙලා';

  @override
  String get groupsLeave => 'ග්‍රෲප් එකෙන් ඉවත් වෙන්න';

  @override
  String get groupsLeaveAsk =>
      'මේ ග්‍රෲප් එකේ පෝස්ට්ස් ඔයාගේ ෆීඩ් එකේ තවදුරටත් පේන්නේ නෑ.';

  @override
  String get groupsJoinFailed =>
      'මේ ග්‍රෲප් එකට ජොයින් වෙන්න බැරි වුණා, ඒක ආරාධනා මත පමණක් වෙන්න පුළුවන්';

  @override
  String get groupsLeaveFailed => 'මේ ග්‍රෲප් එකෙන් ඉවත් වෙන්න බැරි වුණා';

  @override
  String get groupsPosts => 'පෝස්ට්ස්';

  @override
  String get groupsMembersTab => 'සාමාජිකයින්';

  @override
  String get groupsAbout => 'ගැන';

  @override
  String get groupsRules => 'රූල්ස්';

  @override
  String get groupsPrivacyOpen => 'විවෘත';

  @override
  String get groupsPrivacyRestricted => 'සීමාසහිත';

  @override
  String get groupsPrivacyClosed => 'වසා ඇත';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'ඇඩ්මින්';

  @override
  String get groupsRoleMod => 'මොඩ්';

  @override
  String get groupsCouldntLoad => 'මේ ග්‍රෲප් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get groupsNewPost => 'ග්‍රෲප් එකට පෝස්ට් කරන්න';

  @override
  String get groupsPostHint => 'ග්‍රෲප් එක එක්ක යමක් ෂෙයාර් කරන්න';

  @override
  String get groupsOpenInBrowser => 'බ්‍රවුසර් එකේ විවෘත කරන්න';

  @override
  String get groupsCategory => 'කැටගරි එක';

  @override
  String get groupsLanguage => 'භාෂාව';

  @override
  String get groupsCreated => 'හැදුවේ';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ලීඩර්ස් $count',
      one: 'ලීඩර් කෙනෙක් 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'පෞද්ගලිකත්වය';

  @override
  String get notificationsAll => 'ඔක්කොම';

  @override
  String get notificationsAiring => 'ප්‍රචාරය වෙන';

  @override
  String get notificationsMedia => 'අලුත් ටයිටල්ස්';

  @override
  String get notificationsReplies => 'රිප්ලයි';

  @override
  String get notificationsMentions => 'මෙන්ෂන්ස්';

  @override
  String get notificationsMessages => 'මැසේජස්';

  @override
  String get notificationsLikes => 'ලයික්ස්';

  @override
  String get notificationsFollows => 'ෆොලෝස්';

  @override
  String get notificationsNoServices =>
      'සයින් ඉන් වෙලා තියෙන කිසිම සර්විස් එකකට නොටිෆිකේෂන්ස් නෑ';

  @override
  String get notificationsNoServicesMessage =>
      'නොටිෆිකේෂන්ස් යවන සර්විස් එකකට සයින් ඉන් වුණාම ඒවා මෙතන පේනවා.';

  @override
  String get notificationsEmptyKind => 'මේ කැටගරි එකේ තාම කිසිවක් නෑ';

  @override
  String get notificationsCommentsEmpty => 'කමෙන්ට් නොටිෆිකේෂන්ස් නෑ';

  @override
  String get notificationsCommentsEmptyMessage =>
      'ඔයාගේ කමෙන්ට්ස් වලට රිප්ලයි සහ Dantotsu වලින් නිවේදන මෙතන පේනවා.';

  @override
  String get notificationsSettings => 'නොටිෆිකේෂන් සැකසුම්';

  @override
  String get notificationsPollTitle => 'අලුත් නොටිෆිකේෂන්ස් චෙක් කරන්න';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ඇප් එක ඕපන් වෙලා ඉද්දී හැම විනාඩි $minutesකටම';
  }

  @override
  String get notificationsNotifyAbout => 'මට දැනුම් දෙන්න';

  @override
  String get notificationsCommentsHeader => 'කමෙන්ට් නොටිෆිකේෂන්ස්';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ඇප් එක දුවමින් තියෙද්දී කියවපු නැති හැම $service නොටිෆිකේෂන් එකකටම සිස්ටම් නොටිෆිකේෂන් එකක් පෙන්වන්න.';
  }

  @override
  String get notificationsTestSent => 'ටෙස්ට් නොටිෆිකේෂන් එක යැව්වා';

  @override
  String get notificationsTestDenied =>
      'Dartotsu වලට නොටිෆිකේෂන්ස් ඉඩ දීලා නෑ. සිස්ටම් සැකසුම් වලින් ඔන් කරන්න.';

  @override
  String get notificationsTestHint =>
      'ටෙස්ට් නොටිෆිකේෂන් එකක් යවන්න ලොංග් ප්‍රෙස් කරන්න';

  @override
  String get notificationsTestSample => 'මේක ටෙස්ට් නොටිෆිකේෂන් එකක්';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media හි ඔයාගේ කමෙන්ට් එකට රිප්ලයි කළා';
  }

  @override
  String get imageSearchNotLink => 'ඒක ලින්ක් එකක් වගේ නෙවෙයි';

  @override
  String get imageSearchQuota => 'සර්ච් කෝටාව ඉවරයි';

  @override
  String get imageSearchBusy =>
      'රික්වෙස්ට්ස් වැඩියි, ටිකකින් ආයෙත් උත්සාහ කරන්න';

  @override
  String imageSearchFailed(int code) {
    return 'සර්ච් එක අසාර්ථකයි ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'අලුත් නොටිෆිකේෂන්ස් $countක්';
  }

  @override
  String get reactionsTitle => 'රියැක්ෂන්ස්';

  @override
  String get reactionsNeedEntry =>
      'රියැක්ට් කරන්න කලින් මේ ටයිටල් එක ඔයාගේ ලිස්ට් එකට එකතු කරන්න';

  @override
  String get reactionsAdd => 'රියැක්ෂන් එකක් එකතු කරන්න';

  @override
  String get reactionsHint => 'ඔයාට මොනවා හිතුණාද? (කෙටියෙන්, ස්පොයිලර් නැතුව)';

  @override
  String get reactionsPost => 'පෝස්ට් කරන්න';

  @override
  String get reactionsFailed => 'රියැක්ෂන් එක අප්ඩේට් කරන්න බැරි වුණා';

  @override
  String get settingsWatch => 'බලන්න සහ කියවන්න';

  @override
  String get settingsWatchDesc =>
      'එපිසෝඩ් ලිස්ට්ස්, සෝස් මැච් කිරීම සහ එපිසෝඩ් විස්තර';

  @override
  String get watchSettingsLayout => 'එපිසෝඩ් ලිස්ට් එක';

  @override
  String get watchSettingsSources => 'සෝසස්';

  @override
  String get watchSettingsMetadata => 'එපිසෝඩ් විස්තර';

  @override
  String get watchLayout => 'ලේඅවුට් එක';

  @override
  String get watchListView => 'ලිස්ට්';

  @override
  String get watchGridView => 'ග්‍රිඩ්';

  @override
  String get watchCompactView => 'කොම්පැක්ට්';

  @override
  String get watchDefaultLayoutDesc =>
      'ටයිටල් එකකට වෙනස් කරනකම් එපිසෝඩ්ස් සහ චැප්ටර්ස් පෙන්වන විදිය';

  @override
  String get watchChunkSize => 'රේන්ජ් ප්‍රමාණය';

  @override
  String get watchChunkSizeDesc =>
      'හැම රේන්ජ් ටැබ් එකකම තියෙන එපිසෝඩ්ස් හෝ චැප්ටර්ස් ගණන';

  @override
  String get watchShowDescription => 'විස්තර පෙන්වන්න';

  @override
  String get watchShowDescriptionDesc =>
      'ලිස්ට් ලේඅවුට් එකේ හැම ටයිටල් එකක් යටින්ම එපිසෝඩ් සාරාංශය පෙන්වන්න';

  @override
  String get watchShowFiller => 'ෆිලර් එපිසෝඩ්ස් පෙන්වන්න';

  @override
  String get watchShowFillerDesc =>
      'ෆිලර් කියලා සලකුණු කරපු එපිසෝඩ්ස් හංගන්න ඕෆ් කරන්න';

  @override
  String get watchBlurUnwatched => 'ස්පොයිලර් තම්බ්නේල්ස් හංගන්න';

  @override
  String get watchBlurUnwatchedDesc =>
      'ඔයා තාම බලලා නැති එපිසෝඩ්ස් වල තම්බ්නේල් එක බ්ලර් කරන්න';

  @override
  String get watchResumeShelf => 'රිස්යූම් ෂෙල්ෆ් එක';

  @override
  String get watchResumeShelfDesc => 'හෝම් එකේ රිස්යූම් පේළිය පෙන්වන්න';

  @override
  String get watchMarkOnLongPress =>
      'ලොංග් ප්‍රෙස් එකෙන් ප්‍රගතිය සලකුණු කරනවා';

  @override
  String get watchMarkOnLongPressDesc =>
      'එපිසෝඩ් එකක් හෝ චැප්ටර් එකක් ලොංග් ප්‍රෙස් කළාම බැලූ/නොබැලූ විදියට සලකුණු වෙනවා';

  @override
  String get watchMatching => 'සෝස් මැච් කිරීම';

  @override
  String get watchMatchingDesc =>
      'ක්ලෝසස්ට් කියන්නේ හොඳම සර්ච් ප්‍රතිඵලය ගන්නවා. එක්සැක්ට් ඔන්ලි කියන්නේ ආසන්න වශයෙන් සමාන ටයිටල් එකක් විතරක් පිළිගෙන ඉතිරි ඒවා ඔයාට තෝරන්න ඉතිරි කරනවා.';

  @override
  String get watchMatchClosest => 'ආසන්නතම ගැලපීම';

  @override
  String get watchMatchExact => 'හරියටම ගැලපෙන ඒවා විතරයි';

  @override
  String get watchMetadataDesc =>
      'එපිසෝඩ් ටයිටල්ස්, සාරාංශ, තම්බ්නේල්ස්, ප්‍රචාරණ දින සහ ෆිලර් ෆ්ලැග්ස් එන්නේ කොහෙන්ද. ප්‍රමුඛතාව සෙට් කරන්න ඇදලා දාන්න; අගයක් තියෙන පළවෙනි සෝස් එක දිනනවා.';

  @override
  String get watchMetaAniZipDesc =>
      'එපිසෝඩ් ටයිටල්ස්, සාරාංශ, ස්ටිල්ස් සහ ප්‍රචාරණ දින';

  @override
  String get watchMetaKitsuDesc => 'එපිසෝඩ් ටයිටල්ස්, විස්තර සහ තම්බ්නේල්ස්';

  @override
  String get watchMetaSimklDesc =>
      'එපිසෝඩ් ටයිටල්ස්, විස්තර, ස්ටිල්ස් සහ ප්‍රචාරණ දින';

  @override
  String get watchMetaAniListDesc =>
      'ස්ට්‍රීමින් එපිසෝඩ් ටයිටල්ස්, තම්බ්නේල්ස් සහ ප්‍රචාරණ කාලසටහන';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai හරහා MyAnimeList එපිසෝඩ් ටයිටල්ස්, ප්‍රචාරණ දින, ෆිලර් සහ රීකැප් ෆ්ලැග්ස්';

  @override
  String get watchClearMetadata => 'එපිසෝඩ් විස්තර රිෆ්‍රෙෂ් කරන්න';

  @override
  String get watchClearMetadataDesc =>
      'කෑෂ් කරපු එපිසෝඩ් විස්තර අමතක කරන්න, ඒවා ආයෙත් ෆෙච් වෙනවා';

  @override
  String get watchMetadataCleared => 'එපිසෝඩ් විස්තර ආයෙත් ෆෙච් වෙනවා';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'එපිසෝඩ් $countක්',
      one: 'එපිසෝඩ් 1ක්',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'චැප්ටර් $countක්',
      one: 'චැප්ටර් 1ක්',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'එපිසෝඩ් $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'චැප්ටර් $number';
  }

  @override
  String get watchSearching => 'හොයනවා…';

  @override
  String watchSearchingFor(String term) {
    return 'හොයනවා: $term';
  }

  @override
  String watchSelected(String title) {
    return 'තෝරපු: $title';
  }

  @override
  String watchFound(String title) {
    return 'හම්බුණා: $title';
  }

  @override
  String get watchNothingFound => 'මේ සෝස් එකේ කිසිවක් හම්බුණේ නෑ';

  @override
  String get watchSearchFailed => 'සෝස් සර්ච් එක අසාර්ථකයි';

  @override
  String get watchLoadFailed => 'ලිස්ට් එක ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get watchSignInToTrack =>
      'ඔයාගේ ප්‍රගතිය ට්‍රැක් කරන්න සයින් ඉන් වෙන්න';

  @override
  String watchInstallSource(String action) {
    return '$action පටන් ගන්න එක්ස්ටෙන්ෂන් එකක් ඉන්ස්ටෝල් කරන්න';
  }

  @override
  String get watchSourceMissing => 'මේ සෝස් එක ඉන්ස්ටෝල් කරලා නෑ';

  @override
  String get watchWrongTitle => 'වැරදි ටයිටල් එකක්ද?';

  @override
  String get watchSearchAgain => 'ආයෙත් හොයන්න';

  @override
  String watchSearchSource(String source) {
    return '$source හොයන්න';
  }

  @override
  String get watchSource => 'සෝස්';

  @override
  String get sourceTags => 'ටැග්';

  @override
  String get sourceTagsHint =>
      'මෙම මූලාශ්‍රය කුමක් සඳහාද යන්න ටැග් කරන්න. මාතෘකාවක් එය සඳහා මුලින්ම ටැග් කර ඇති මූලාශ්‍ර ලැයිස්තුගත කරයි, පසුව ටැග් නොකළ ඒවා. 18+ මූලාශ්‍ර පෙන්වන්නේ වැඩිහිටි මාතෘකා සඳහා පමණි.';

  @override
  String get sourceTagAnime => 'ඇනිමෙ';

  @override
  String get sourceTagMovies => 'චිත්‍රපට සහ මාලාවන්';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'ටැග් මගින් සඟවා ඇත';

  @override
  String get watchOptions => 'විකල්ප';

  @override
  String get watchReverse => 'අනුපිළිවෙල ආපස්සට හරවන්න';

  @override
  String get watchScanlators => 'ග්‍රෲප්ස්';

  @override
  String get watchResetOptions => 'මේ විකල්ප රීසෙට් කරන්න';

  @override
  String get watchContinue => 'දිගටම කරන්න';

  @override
  String get watchStart => 'ස්ටාර්ට්';

  @override
  String get watchPlay => 'ප්ලේ';

  @override
  String get watchRead => 'කියවන්න';

  @override
  String get watchMarkWatched => 'බැලූ විදියට සලකුණු කරන්න';

  @override
  String get watchMarkUnwatched => 'නොබැලූ විදියට සලකුණු කරන්න';

  @override
  String get watchMarkRead => 'කියවපු විදියට සලකුණු කරන්න';

  @override
  String get watchMarkUnread => 'නොකියවපු විදියට සලකුණු කරන්න';

  @override
  String get watchFiller => 'ෆිලර්';

  @override
  String get watchRecap => 'රීකැප්';

  @override
  String get watchNoEpisodes => 'එපිසෝඩ්ස් හම්බුණේ නෑ';

  @override
  String get watchNoChapters => 'චැප්ටර්ස් හම්බුණේ නෑ';

  @override
  String get watchSourceTools => 'සෝස් ටූල්ස්';

  @override
  String get watchSourceSettings => 'සෝස් සැකසුම්';

  @override
  String get watchOpenWebView => 'වෙබ් වීව් එකේ විවෘත කරන්න';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare චෙක් එකක් සෝල්ව් කරන්න හෝ ලොගින් වෙන්න; කුකීස් සෝස් රික්වෙස්ට්ස් එක්ක බෙදාගන්නවා';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host සඳහා කුකීස් $countක් සේව් කරලා',
      one: '$host සඳහා කුකී 1ක් සේව් කරලා',
      zero: '$host සඳහා කුකීස් සේව් කරලා නෑ',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ක්ලියරන්ස් ඇක්ටිව්, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ක්ලියරන්ස් කුකී එකක් නෑ';

  @override
  String get watchClearanceSession => 'ඇප් එක වහනකම් පවතිනවා';

  @override
  String get watchAgentShared =>
      'රික්වෙස්ට්ස් වෙබ් වීව් එකේ යූසර් ඒජන්ට් එක පාවිච්චි කරනවා, Cloudflare ඒක චෙක් කරනවා';

  @override
  String get watchAgentCustom =>
      'කස්ටම් යූසර් ඒජන්ට් එකක් සෙට් කරලා තියෙන නිසා, වෙබ් වීව් එකෙන් ගත්ත Cloudflare ක්ලියරන්ස් එක ප්‍රතික්ෂේප වෙන්න පුළුවන්';

  @override
  String get watchTestConnection => 'කනෙක්ෂන් එක ටෙස්ට් කරන්න';

  @override
  String get watchSolveChallenge => 'සෝල්ව් කරන්න';

  @override
  String watchProbeOk(int code) {
    return 'ළඟා විය හැකියි (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare තාම චෙක් එකක් ඉල්ලනවා';

  @override
  String watchProbeBlocked(int code) {
    return 'සයිට් එකෙන් බ්ලොක් කළා (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'සයිට් එකට ළඟා වෙන්න බැරි වුණා';

  @override
  String get watchClearCookies => 'මේ සයිට් එකේ කුකීස් මකන්න';

  @override
  String get watchCookiesCleared => 'කුකීස් මැකුණා';

  @override
  String get watchFailTimeout => 'නියමිත වේලාවට චෙක්පත අවසන් නොවීය';

  @override
  String get watchFailBlocked =>
      'අඩවිය මෙම උපාංගය අවහිර කර ඇත (ප්‍රවේශය ප්‍රතික්ෂේප විය). චෙක්පතක් උදව් නොවනු ඇත';

  @override
  String get watchFailTurnstile =>
      'මෙම චෙක්පතට පසුබිම් විසදුම්කරුට කළ නොහැකි තට්ටු කිරීමක් අවශ්‍ය වේ';

  @override
  String get watchFailLoad =>
      'පිටුව පූරණය නොවීය. සම්බන්ධතාවය සහ අඩවි ලිපිනය පරීක්ෂා කරන්න';

  @override
  String get watchFailRejected =>
      'වෙබ් අඩවිය විසින් ලබා දුන් අවසරය ප්‍රතික්ෂේප කරන ලදී. නැවත උත්සාහ කරන්න හෝ කුකීස් ඉවත් කරන්න';

  @override
  String get watchFailDismissed => 'චෙක්පත අවසන් වීමට පෙර වසා දමන ලදී';

  @override
  String get watchFailCooldown =>
      'ඔබ මොහොතකට පෙර චෙක්පත වසා දැමුවා. නැවත උත්සාහ කිරීමට එය විසඳන්න ඔබන්න';

  @override
  String get watchFailQuiet =>
      'චෙක්පතට ඔබ අවශ්‍ය වන අතර, යෙදුම තනිවම ක්‍රියා කරයි';

  @override
  String get watchFailWebView => 'පසුබිම් වෙබ් දසුන ආරම්භ කළ නොහැකි විය';

  @override
  String get watchFailUnavailable => 'චෙක්පත පෙන්වීමට තිරයක් නොමැත';

  @override
  String get watchStatusReady => 'සූදානම්';

  @override
  String get watchStatusChallenge => 'Cloudflare පරීක්ෂාව අවශ්‍යයි';

  @override
  String get watchStatusBlocked => 'අඩවිය විසින් අවහිර කර ඇත';

  @override
  String get watchStatusOffline => 'අඩවියට ළඟා විය නොහැක';

  @override
  String get watchStatusUntested => 'තවම පරීක්ෂා කර නැත';

  @override
  String get watchStatusTesting => 'සම්බන්ධතාවය පරීක්ෂා කරමින්...';

  @override
  String get watchStatusSolving => 'Cloudflare චෙක්පත සමත් වෙමින්...';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare පරීක්ෂාව පසුබිමෙන් සම්මත විය ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare පරීක්ෂාව සමත් විය';

  @override
  String watchClearanceIssued(String time) {
    return 'උපයාගත් $time';
  }

  @override
  String get watchClearanceStale =>
      'නිෂ්කාශනය වෙනත් පරිශීලක නියෝජිතයෙකු සමඟ උපයා ඇති බැවින් එය යවනු නොලැබේ. නව එකක් ලබා ගැනීමට සම්බන්ධතාවය පරීක්ෂා කරන්න';

  @override
  String get watchSectionConnection => 'සම්බන්ධතාවය';

  @override
  String get watchSectionSession => 'සැසිය';

  @override
  String get watchSectionTools => 'මෙවලම්';

  @override
  String get watchMetaSource => 'එපිසෝඩ් විස්තර ගන්නේ';

  @override
  String get watchMetaAuto => 'ඔටෝමැටික්';

  @override
  String get watchMetaOff => 'ඕෆ්';

  @override
  String get playerSettingsTitle => 'ප්ලේයර් සැකසුම්';

  @override
  String get playerSectionPlayback => 'ප්ලේබැක්';

  @override
  String get playerSectionSkip => 'ස්කිප් කිරීම';

  @override
  String get playerSectionGestures => 'කන්ට්‍රෝල්ස්';

  @override
  String get playerSectionSubtitles => 'සබ්ටයිටල්ස්';

  @override
  String get playerSectionShaders => 'ෂේඩර්ස්';

  @override
  String get playerSectionEngine => 'එන්ජින් එක';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ප්ලේබැක් වේගය';

  @override
  String get localSource => 'දේශීය ගොනු';

  @override
  String get localMissing =>
      'මෙම ගොනුව හෝ ෆෝල්ඩරය තවදුරටත් ඔබගේ දේශීය ෆෝල්ඩරයේ නොමැත';

  @override
  String get playerStickyStage => 'ඇලෙන සුළු වීඩියෝව';

  @override
  String get playerStickyStageDesc =>
      'ඔබ කථාංග සහ පහත අදහස් අනුචලනය කරන අතරතුර වීඩියෝව ඉහළින්ම තබා ගන්න';

  @override
  String get playerCursedSpeed => 'අමතර වේග';

  @override
  String get playerCursedSpeedDesc => 'ලිස්ට් එකට 10x දක්වා වේග එකතු කරන්න';

  @override
  String get playerResize => 'රීසයිස් මෝඩ් එක';

  @override
  String get playerFitFit => 'ෆිට්';

  @override
  String get playerFitCover => 'කවර්';

  @override
  String get playerFitStretch => 'ස්ට්‍රෙච්';

  @override
  String get playerSkipDuration => 'ස්කිප් බට්න් එකේ දිග';

  @override
  String get playerSkipDurationDesc =>
      'ඕපනිංස් සහ එන්ඩිංස් වලින් පිටත ස්කිප් බට්න් එක පනින තත්පර';

  @override
  String get playerSeekDuration => 'ඩබල් ටැප් සීක්';

  @override
  String get playerSeekDurationDesc =>
      'ඩබල් ටැප් එකකට හෝ ඇරෝ කී එකකට පනින තත්පර';

  @override
  String get playerAutoPlay => 'ඊළඟ එක ඔටෝ ප්ලේ කරන්න';

  @override
  String get playerAutoPlayDesc => 'මේක ඉවර වුණාම ඊළඟ එපිසෝඩ් එක පටන් ගන්න';

  @override
  String get playerResume => 'නැවැත්වූ තැනින් දිගටම කරන්න';

  @override
  String get playerResumeDesc =>
      'එපිසෝඩ් එකක් අන්තිමට හිටපු තැනින් දිගටම කරන්න';

  @override
  String get playerOrientation => 'ඕරියන්ටේෂන්';

  @override
  String get playerOrientationAuto => 'ඩිවයිස් එක අනුගමනය කරන්න';

  @override
  String get playerOrientationLandscape => 'ලැන්ඩ්ස්කේප්';

  @override
  String get playerOrientationPortrait => 'පෝට්රේට්';

  @override
  String get playerAutoSkipOpening => 'ඕපනිංස් ස්කිප් කරන්න';

  @override
  String get playerAutoSkipEnding => 'එන්ඩිංස් ස්කිප් කරන්න';

  @override
  String get playerAutoSkipRecap => 'රීකැප්ස් ස්කිප් කරන්න';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip සහ ස්ට්‍රීම් ටයිම්ස්ටැම්ප්ස් පාවිච්චි කරලා, පටන් ගත්ත ගමන් පනින්න';

  @override
  String get playerDisableSkips => 'මඟ හැරීම් අක්‍රිය කරන්න';

  @override
  String get playerDisableSkipsDesc =>
      'ක්‍රීඩකයා තුළ AniSkip හෝ ප්‍රවාහ වේලා මුද්දර, පරිච්ඡේද ලකුණු හෝ ඉදිරිපත් කිරීම් මඟ හරින්න';

  @override
  String get playerSkipOnce => 'එක පාරක් විතරක් ස්කිප් කරන්න';

  @override
  String get playerSkipOnceDesc =>
      'ඔයා ආපහු සීක් කළොත් ඒ කොටසම ආයෙත් ස්කිප් කරන්න එපා';

  @override
  String get playerAdjustBrightness => 'බ්‍රයිට්නස් ජෙස්චර් එක';

  @override
  String get playerAdjustBrightnessDesc =>
      'ස්ක්‍රීන් එකේ දකුණු භාගයේ උඩට පහළට ස්වයිප් කරන්න';

  @override
  String get playerAdjustVolume => 'වෝල්යුම් ජෙස්චර් එක';

  @override
  String get playerAdjustVolumeDesc =>
      'ස්ක්‍රීන් එකේ වම් භාගයේ උඩට පහළට ස්වයිප් කරන්න';

  @override
  String get playerHoldToSpeed => 'හෝල්ඩ් කළාම වේගවත් වෙනවා';

  @override
  String get playerHoldToSpeedDesc =>
      'වීඩියෝව ඔබාගෙන හිටියම වේගයෙන් ප්ලේ වෙනවා, වේගය වෙනස් කරන්න පැත්තට ඇදලා දාන්න';

  @override
  String get playerThumbless => 'ඝන සීක් බාර් එක';

  @override
  String get playerThumblessDesc => 'තම්බ් එකක් නැති ඝන බාර් එකක්';

  @override
  String get playerShowSubtitles => 'සබ්ටයිටල්ස් පෙන්වන්න';

  @override
  String get playerShowSubtitlesDesc =>
      'හැම සබ්ටයිටල් ට්‍රැක් එකක්ම හංගන්න ඕෆ් කරන්න';

  @override
  String get playerSubtitleLanguage => 'කැමති සබ්ටයිටල් භාෂාව';

  @override
  String get playerSubtitleSize => 'සබ්ටයිටල් ප්‍රමාණය';

  @override
  String get playerSubtitleWeight => 'සබ්ටයිටල් බර';

  @override
  String get playerSubtitleBottom => 'සබ්ටයිටල් පහළ පැඩින්';

  @override
  String get playerSubtitleFont => 'සබ්ටයිටල් ෆොන්ට්';

  @override
  String get playerSubtitleColor => 'සබ්ටයිටල් පාට';

  @override
  String get playerSubtitleBackground => 'සබ්ටයිටල් බැක්ග්‍රවුන්ඩ්';

  @override
  String get playerSubtitleOutline => 'සබ්ටයිටල් අවුට්ලයින්';

  @override
  String get playerSubtitleOutlineWidth => 'උපසිරැසි දළ සටහන් පළල';

  @override
  String get playerSubtitlePreview => 'උපසිරැසි පෙරදසුන';

  @override
  String get playerSubtitlePreviewText => 'උපසිරැසි පෙරදසුන් පෙළ';

  @override
  String get playerLibass => 'libass පාවිච්චි කරන්න';

  @override
  String get playerLibassDesc =>
      'ස්ටයිල් කරපු .ass සබ්ටයිටල්ස් රෙන්ඩර් කරන්න. එතකොට උඩ තියෙන ප්‍රමාණය, පාට සහ ෆොන්ට් වැඩ කරන්නේ නෑ';

  @override
  String get playerShaders => 'ෂේඩර්ස්';

  @override
  String get playerShadersEnable => 'ෂේඩර්ස් එනේබල් කරන්න';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K වගේ GLSL ෂේඩර්ස් වලින් පින්තූරය අප්ස්කේල් කරලා පිරිසිදු කරන්න';

  @override
  String get playerShadersOff => 'ෂේඩර්ස් ඕෆ්';

  @override
  String get playerShadersMissing => 'Anime4K ඉන්ස්ටෝල් කරලා නෑ';

  @override
  String get playerShadersMissingDesc =>
      'බිල්ට්-ඉන් මෝඩ්ස් පාවිච්චි කරන්න Anime4K ෂේඩර් පැක් එක (ආසන්න වශයෙන් 0.8 MB) ඩවුන්ලෝඩ් කරන්න.';

  @override
  String get playerShadersDownload => 'Anime4K ඩවුන්ලෝඩ් කරන්න';

  @override
  String get playerPictureSave => 'මෙම රාමුව සුරකින්න';

  @override
  String get playerPictureOriginal => 'මුල්';

  @override
  String get playerPictureOriginalDesc =>
      'වීඩියෝවේ ඇති රාමුව, සෙවන හෝ වර්ණ නොමැතිව';

  @override
  String get playerPictureProcessed => 'සෙවන සහ වර්ණ සමඟ';

  @override
  String get playerPictureProcessedDesc => 'ඔබ දැන් දකින පරිදි රාමුව';

  @override
  String get playerPictureSaved => 'රාමුව සුරකින ලදී';

  @override
  String get playerPictureSaveFailed => 'රාමුව සුරැකීමට නොහැකි විය';

  @override
  String get playerShadersPreview => 'මේ ෆ්‍රේම් එකේ ප්‍රිවිව් කරන්න';

  @override
  String get playerShadersUse => 'මේක පාවිච්චි කරන්න';

  @override
  String get playerPicture => 'පින්තූරය';

  @override
  String get playerColors => 'පාට';

  @override
  String get playerColorDefault => 'ඩිෆෝල්ට්';

  @override
  String get playerColorVivid => 'විවිඩ්';

  @override
  String get playerColorPop => 'ඇනිමේ පොප්';

  @override
  String get playerColorSoft => 'සොෆ්ට්';

  @override
  String get playerColorCinematic => 'සිනමැටික්';

  @override
  String get playerColorBright => 'බ්‍රයිට්';

  @override
  String get playerColorNight => 'නයිට්';

  @override
  String get playerColorMono => 'මොනෝ';

  @override
  String get playerColorCustom => 'කස්ටම්';

  @override
  String get playerColorBrightness => 'බ්‍රයිට්නස්';

  @override
  String get playerColorContrast => 'කොන්ට්‍රාස්ට්';

  @override
  String get playerColorSaturation => 'සැචුරේෂන්';

  @override
  String get playerColorGamma => 'ගැමා';

  @override
  String get playerColorHue => 'හියු';

  @override
  String get playerColorReset => 'රීසෙට්';

  @override
  String get playerColorAdjust => 'ඇඩ්ජස්ට්';

  @override
  String get playerShadersOriginal => 'ඔරිජිනල්';

  @override
  String get playerShadersPreviewFailed =>
      'ප්‍රිවිව් කරන්න ෆ්‍රේම් එකක් ගන්න බැරි වුණා';

  @override
  String get playerShadersSoftware =>
      'Shaders හට දෘඪාංග විදැහුම්කරණය අවශ්‍ය වන අතර ක්‍රීඩකයා මෘදුකාංග විදැහුම්කරණය භාවිතා කරයි. Player සැකසුම් තුළ මෘදුකාංග විදැහුම්කරණය අක්‍රිය කරන්න.';

  @override
  String get playerSoftwareRender => 'මෘදුකාංග විදැහුම්කරණය';

  @override
  String get playerSoftwareRenderDesc =>
      'කළු වීඩියෝවක් සඳහා පමණි. Shaders එය සමඟ වැඩ කරන්නේ නැත. ක්‍රීඩකයා ඊළඟ වතාවේ විවෘත කරන විට අදාළ වේ';

  @override
  String get playerShadersCustomFiles => 'ඔයාගේ ෂේඩර්ස්';

  @override
  String get playerShadersCustom => 'කස්ටම් ෂේඩර්ස්';

  @override
  String get playerShadersImport => '.glsl ඉම්පෝර්ට් කරන්න';

  @override
  String get playerShadersNone =>
      'ඔයාගේම .glsl හෝ .hook ෆයිල්ස් ඉම්පෝර්ට් කරලා, චේන් කරන්න ටික් කරන්න';

  @override
  String get playerShadersBadFile => '.glsl හෝ .hook ෂේඩර් ෆයිල් එකක් තෝරන්න';

  @override
  String get playerDecoder => 'ඩිකෝඩර්';

  @override
  String get playerDecoderAuto => 'ඔටෝ';

  @override
  String get playerDecoderAutoSafe => 'ඔටෝ (සේෆ්)';

  @override
  String get playerDecoderSoftware => 'සොෆ්ට්වෙයාර්';

  @override
  String get playerDecoderHardware => 'හාඩ්වෙයාර්';

  @override
  String get playerDecoderHardwarePlus => 'හාඩ්වෙයාර්+';

  @override
  String get playerVideoOutput => 'වීඩියෝ අවුට්පුට්';

  @override
  String get playerAudioChannels => 'ඕඩියෝ චැනල්ස්';

  @override
  String get playerBuffer => 'බෆර් ප්‍රමාණය (MB)';

  @override
  String get playerBufferDesc =>
      'ස්ට්‍රීම් එකක් බෆර් කරන්න ප්ලේයර් එකට පාවිච්චි කරන්න පුළුවන් මතකය';

  @override
  String get playerUseMpvConf => 'mpv.conf පාවිච්චි කරන්න';

  @override
  String get playerUseMpvConfDesc =>
      'ප්ලේබැක් පටන් ගද්දි ඔයාගේ mpv.conf එකේ විකල්ප ඇප්ලයි කරන්න';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv කොන්ෆිගරේෂන් එක එඩිට් කරන්න';

  @override
  String get playerMpvConfDesc =>
      'පේළියකට එක විකල්පයක්, සාමාන්‍ය mpv.conf එකක --hwdec=auto වගේ. [වරහන්] ඇතුළේ තියෙන ප්‍රොෆයිල්ස් නොසලකා හරිනවා.';

  @override
  String get playerMpvConfSaved => 'mpv.conf සේව් වුණා';

  @override
  String get playerUseScripts => 'mpv ස්ක්‍රිප්ට්ස් පාවිච්චි කරන්න';

  @override
  String get playerUseScriptsDesc =>
      'ස්ක්‍රිප්ට්ස් ෆෝල්ඩර් එකෙන් ප්ලගින්ස් ලෝඩ් කරන්න. ඒවාට Lua හෝ JavaScript සහාය තියෙන libmpv බිල්ඩ් එකක් ඕනේ';

  @override
  String get playerScripts => 'mpv ස්ක්‍රිප්ට්ස්';

  @override
  String get playerScriptsManage =>
      'ප්ලගින්ස් එකතු කරන්න, අයින් කරන්න සහ මාරු කරන්න';

  @override
  String get playerScriptsAdd => 'ස්ක්‍රිප්ට් එකක් එකතු කරන්න';

  @override
  String get playerScriptsDesc =>
      'මෙතන දාපු Lua, JavaScript සහ නේටිව් ප්ලගින්ස් ප්ලේබැක් පටන් ගද්දි ලෝඩ් වෙනවා.';

  @override
  String get playerScriptsNone => 'තාම ස්ක්‍රිප්ට්ස් නෑ';

  @override
  String get playerScriptsBadFile =>
      '.lua, .js හෝ නේටිව් ප්ලගින් ෆයිල් එකක් තෝරන්න';

  @override
  String get playerTuning => 'ඇඩ්වාන්ස්ඩ් වීඩියෝ ටියුනින්';

  @override
  String get playerTuningDesc =>
      'සින්ක්, කෑෂින්, ස්කේලින් සහ ටෝන් මැපින් ඕවර්රයිඩ් කරන්න. වැරදි අගයන් ප්ලේබැක් එක නරක් කරන්න පුළුවන්';

  @override
  String get playerVideoSync => 'වීඩියෝ සින්ක්';

  @override
  String get playerInterpolation => 'ෆ්‍රේම් ඉන්ටර්පොලේෂන්';

  @override
  String get playerInterpolationDesc =>
      'සුමට චලනය, display-resample සින්ක් එකක් ඕනේ';

  @override
  String get playerPitch => 'පිච් කරෙක්ෂන්';

  @override
  String get playerPitchDesc => 'වෙනත් වේග වලදීත් කටහඬවල් ස්වභාවිකව තියාගන්න';

  @override
  String get playerCacheSeconds => 'කෑෂ් (තත්පර)';

  @override
  String get playerReadahead => 'රීඩ් අහෙඩ් (තත්පර)';

  @override
  String get playerThreads => 'ඩිකෝඩර් ත්‍රෙඩ්ස්';

  @override
  String get playerDeband => 'ඩීබෑන්ඩ්';

  @override
  String get playerDebandDesc => 'ග්‍රේඩියන්ට්ස් වල පාට බෑන්ඩින් අඩු කරන්න';

  @override
  String get playerDebandIterations => 'ඩීබෑන්ඩ් ඉටරේෂන්ස්';

  @override
  String get playerDebandThreshold => 'ඩීබෑන්ඩ් තෙරෂෝල්ඩ් එක';

  @override
  String get playerCorrectDownscaling => 'නිවැරදි ඩවුන්ස්කේලින්';

  @override
  String get playerSigmoid => 'සිග්මොයිඩ් අප්ස්කේලින්';

  @override
  String get playerScale => 'අප්ස්කේලර්';

  @override
  String get playerCscale => 'ක්‍රෝමා අප්ස්කේලර්';

  @override
  String get playerDscale => 'ඩවුන්ස්කේලර්';

  @override
  String get playerToneMapping => 'ටෝන් මැපින්';

  @override
  String get playerTargetPeak => 'ටාගට් පීක්';

  @override
  String get playerOpenFiles => 'වීඩියෝ ෆයිල්ස් විවෘත කරන්න';

  @override
  String get playerOpenFilesDesc => 'මේ ඩිවයිස් එකේ ෆයිල්ස් ප්ලේ කරන්න';

  @override
  String get playerOpenFolder => 'ෆෝල්ඩර් එකක් විවෘත කරන්න';

  @override
  String get playerOpenFolderDesc =>
      'ෆෝල්ඩර් එකක තියෙන හැම වීඩියෝවක්ම ප්ලේලිස්ට් එකක් විදියට ප්ලේ කරන්න';

  @override
  String get playerNetworkStream => 'නෙට්වර්ක් ස්ට්‍රීම්';

  @override
  String get playerNetworkStreamDesc =>
      'ඩිරෙක්ට් වීඩියෝ හෝ HLS ලින්ක් එකක් විවෘත කරන්න';

  @override
  String get playerStreamUrl => 'ස්ට්‍රීම් URL එක';

  @override
  String get playerStreamReferer => 'රෙෆරර් (අවශ්‍ය නම් විතරයි)';

  @override
  String get playerTorrent => 'ටොරන්ට්';

  @override
  String get playerTorrentDesc =>
      'මැග්නට් ලින්ක් එකක් හෝ .torrent ෆයිල් එකක් ස්ට්‍රීම් කරන්න';

  @override
  String get playerMagnetLink => 'මැග්නට් ලින්ක් එක හෝ ටොරන්ට් URL එක';

  @override
  String get playerPickTorrent => '.torrent ෆයිල් එකක් තෝරන්න';

  @override
  String get playerTorrentMissing =>
      'මුලින්ම Settings > Addons වලින් ටොරන්ට් ඇඩ්-ඔන් එක ඉන්ස්ටෝල් කරන්න';

  @override
  String get playerNoVideos => 'ප්ලේ කළ හැකි වීඩියෝ හම්බුණේ නෑ';

  @override
  String get playerReset => 'ප්ලේයර් සැකසුම් රීසෙට් කරන්න';

  @override
  String get playerResetDesc => 'හැම ප්ලේයර් විකල්පයක්ම ඩිෆෝල්ට් එකට හරවන්න';

  @override
  String get playerResetConfirm => 'හැම ප්ලේයර් සැකසුමක්ම රීසෙට් කරනවද?';

  @override
  String get playerResetDone => 'ප්ලේයර් සැකසුම් රීසෙට් වුණා';

  @override
  String get playerQuality => 'ක්වාලිටි';

  @override
  String get streamGroupSub => 'උප';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'මෘදු උප';

  @override
  String get streamGroupDub => 'ඩබ්';

  @override
  String get streamGroupRaw => 'අමු';

  @override
  String get streamGroupOther => 'වෙනත්';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ප්‍රවාහ',
      one: '1 ධාරාවක්',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ස්ට්‍රීම්ස්';

  @override
  String get playerStreamFailedNext =>
      'එම ප්‍රවාහය වාදනය නොවනු ඇත, ඊළඟ එක උත්සාහ කරයි';

  @override
  String get playerAutoSelect => 'ස්ට්‍රීම් එක ඔටෝ තෝරන්න';

  @override
  String get playerAutoSelectDesc =>
      'මේ ටයිටල් එකට ඔයාගේ අන්තිම තේරීමට වඩාත්ම සමාන ස්ට්‍රීම් එක තෝරන්න';

  @override
  String get playerLoadingStreams => 'ස්ට්‍රීම්ස් හොයනවා…';

  @override
  String get playerNoStreams => 'මේ එපිසෝඩ් එකට ස්ට්‍රීම්ස් නෑ';

  @override
  String get playerNoStreamsTitle => 'ස්ට්‍රීම්ස් හම්බුණේ නෑ';

  @override
  String get playerFailed => 'ප්ලේබැක් එක අසාර්ථකයි';

  @override
  String get playerTorrentNeeded => 'මේ ස්ට්‍රීම් එක ටොරන්ට් එකක්';

  @override
  String get playerTorrentNeededDesc =>
      'මැග්නට් ලින්ක්ස් සහ .torrent ෆයිල්ස් ප්ලේ කරන්න ටොරන්ට් ඇඩ්-ඔන් එක ඉන්ස්ටෝල් කරන්න';

  @override
  String get playerOpenAddons => 'ඇඩ්-ඔන්ස් විවෘත කරන්න';

  @override
  String get playerTryAnotherStream => 'වෙන ස්ට්‍රීම් එකක් උත්සාහ කරන්න';

  @override
  String get playerEpisodes => 'එපිසෝඩ්ස්';

  @override
  String get playerLock => 'කන්ට්‍රෝල්ස් ලොක් කරන්න';

  @override
  String get playerFullscreen => 'ෆුල්ස්ක්‍රීන්';

  @override
  String get readerChapters => 'චැප්ටර්ස්';

  @override
  String get readerSettingsTitle => 'රීඩර් සැකසුම්';

  @override
  String get readerPreviousChapter => 'කලින් චැප්ටර් එක';

  @override
  String get readerNextChapter => 'ඊළඟ චැප්ටර් එක';

  @override
  String get readerFirstChapter => 'මේක පළවෙනි චැප්ටර් එක';

  @override
  String get readerLastChapter => 'ඔයා හැමදේම කියවලා ඉවරයි';

  @override
  String get readerFailed => 'මේ චැප්ටර් එක විවෘත කරන්න බැරි වුණා';

  @override
  String get readerOpenBook => 'පොතක් අරින්න';

  @override
  String get readerOpenBookDesc =>
      'ඔබගේ ගොනු වලින් epub (නවකතා කියවනය) හෝ PDF (manga reader) කියවන්න';

  @override
  String get readerNoText => 'මේ චැප්ටර් එකේ අකුරු නෑ';

  @override
  String get readerPerTitle => 'මේ ටයිටල් එකට විතරයි';

  @override
  String get readerPerTitleDesc =>
      'මේ රීඩර් සැකසුම් මේ ටයිටල් එකට විතරක් තියාගන්න';

  @override
  String get readerSectionReading => 'කියවීම';

  @override
  String get readerSectionControls => 'කන්ට්‍රෝල්ස්';

  @override
  String get readerSectionDisplay => 'ඩිස්ප්ලේ';

  @override
  String get readerSectionNovel => 'නවකතා';

  @override
  String get readerMode => 'රීඩින් මෝඩ් එක';

  @override
  String get readerModeAuto => 'ස්වයංක්‍රීය (මාලා වර්ගය අනුව)';

  @override
  String get readerModeRtl => 'දකුණේ සිට වමට';

  @override
  String get readerModeLtr => 'වමේ සිට දකුණට';

  @override
  String get readerModeVertical => 'සිරස් පිටු';

  @override
  String get readerModeWebtoon => 'වෙබ්ටූන්';

  @override
  String get readerModeContinuous => 'අඛණ්ඩ ස්ක්‍රෝල්';

  @override
  String get readerScale => 'ඉමේජ් ස්කේල් එක';

  @override
  String get readerScaleFit => 'ස්ක්‍රීන් එකට ෆිට්';

  @override
  String get readerScaleWidth => 'පළලට ෆිට්';

  @override
  String get readerScaleHeight => 'උසට ෆිට්';

  @override
  String get readerScaleOriginal => 'ඔරිජිනල් ප්‍රමාණය';

  @override
  String get readerScaleSmart => 'ස්මාට් ෆිට්';

  @override
  String get readerDoublePage => 'ඩබල් පේජස්';

  @override
  String get readerDoublePageDesc =>
      'ලැන්ඩ්ස්කේප් එකේදී පිටු දෙකක් පැත්තෙන් පැත්තට පෙන්වන්න';

  @override
  String get readerDoubleTapZoom => 'ඩබල් ටැප් කරලා සූම් කරන්න';

  @override
  String get readerDoubleTapZoomDesc =>
      'ඩබල් ටැප් එකකින් පිටුවක් සූම් ඉන් සහ අවුට් කරන්න';

  @override
  String get readerAnimate => 'පේජ් ඇනිමේෂන්';

  @override
  String get readerAnimateDesc => 'පිටු හැරවීම ඇනිමේට් කරන්න';

  @override
  String get readerSidePadding => 'පැති පැඩින්';

  @override
  String get readerSidePaddingDesc => 'පිටු දෙපැත්තේ ඉඩ ප්‍රතිශතයකින්';

  @override
  String get readerPageGap => 'පේජ් ගැප් එක';

  @override
  String get readerPageGapDesc => 'පිටු අතර ඉඩ';

  @override
  String get readerAutoNext => 'ඊළඟ චැප්ටර් එකටත් දිගටම යන්න';

  @override
  String get readerAutoNextDesc =>
      'මේ චැප්ටර් එකේ අන්තිම කියවද්දී ඊළඟ චැප්ටර් එක ලෝඩ් කරන්න';

  @override
  String get readerPreload => 'පිටු ප්‍රීලෝඩ් කරන්න';

  @override
  String get readerPreloadDesc => 'කලින් පිටු කීයක් ඩවුන්ලෝඩ් කරන්නද';

  @override
  String get readerTapZones => 'ටැප් ෂෝන්ස්';

  @override
  String get readerTapDefault => 'ඩිෆෝල්ට්';

  @override
  String get readerTapLShaped => 'L හැඩය';

  @override
  String get readerTapKindle => 'Kindle වගේ';

  @override
  String get readerTapEdge => 'දාර විතරයි';

  @override
  String get readerTapOff => 'ඩිසේබල් කරලා';

  @override
  String get readerInvertTaps => 'ටැප් ෂෝන්ස් ඉන්වර්ට් කරන්න';

  @override
  String get readerInvertTapsDesc => 'කලින් සහ ඊළඟ ප්‍රදේශ මාරු කරන්න';

  @override
  String get readerBackground => 'බැක්ග්‍රවුන්ඩ්';

  @override
  String get readerBackgroundBlack => 'කළු';

  @override
  String get readerBackgroundGray => 'අළු';

  @override
  String get readerBackgroundWhite => 'සුදු';

  @override
  String get readerBackgroundTheme => 'ඇප් තීම් එක';

  @override
  String get readerFilter => 'කලර් ෆිල්ටර් එක';

  @override
  String get readerFilterNone => 'කිසිවක් නෑ';

  @override
  String get readerFilterGrayscale => 'ග්‍රේස්කේල්';

  @override
  String get readerFilterInvert => 'ඉන්වර්ට්';

  @override
  String get readerFilterSepia => 'සෙපියා';

  @override
  String get readerFilterQuality => 'රූප පෙරහන ගුණත්වය';

  @override
  String get readerFilterQualityNone => 'කිසිවක් නැත (ළඟම අසල්වැසි)';

  @override
  String get readerFilterQualityLow => 'අඩු (ද්විත්ව)';

  @override
  String get readerFilterQualityMedium => 'මධ්‍යම (ත්‍රි රේඛීය)';

  @override
  String get readerFilterQualityHigh => 'ඉහළ (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (මලකඩ උසස් තත්ත්වයේ)';

  @override
  String get readerDim => 'ඩිම්';

  @override
  String get readerDimDesc => 'පිටු අඳුරු කරන්න';

  @override
  String get readerPageNumber => 'පිටු අංකය';

  @override
  String get readerPageNumberDesc => 'කියවද්දී පිටු අංකය පෙන්වන්න';

  @override
  String get readerFullscreen => 'ෆුල්ස්ක්‍රීන්';

  @override
  String get readerFullscreenDesc => 'සිස්ටම් බාර්ස් හංගන්න';

  @override
  String get readerCropBorders => 'බෝඩර්ස් කපන්න';

  @override
  String get readerCropBordersDesc =>
      'පිටු වල හිස් සුදු හෝ කළු මාජින් කපා දාන්න';

  @override
  String get readerLongPressSave => 'එය සුරැකීමට පිටුවක් අල්ලාගෙන සිටින්න';

  @override
  String get readerLongPressSaveDesc =>
      'සුරැකීම, බෙදාගැනීම සහ පිටපත් කිරීමේ විකල්ප විවෘත කිරීමට පිටුවක් දිගු වේලාවක් ඔබන්න';

  @override
  String get readerVolumeKeys => 'වෝල්යුම් කී වලින් පිටු හරවන්න';

  @override
  String get readerVolumeKeysDesc =>
      'වෝල්යුම් ඩවුන් එකෙන් ඉස්සරහට යනවා, වෝල්යුම් අප් එකෙන් ආපස්සට යනවා';

  @override
  String get readerBookmarks => 'බුක්මාර්ක්ස්';

  @override
  String get readerBookmarkAdd => 'බුක්මාර්ක් එකක් එකතු කරන්න';

  @override
  String get readerBookmarkRemove => 'බුක්මාර්ක් එක අයින් කරන්න';

  @override
  String get readerBookmarksEmpty => 'තාම බුක්මාර්ක්ස් නෑ';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total න් පිටුව $page';
  }

  @override
  String get readerAutoScroll => 'ඔටෝ ස්ක්‍රෝල්';

  @override
  String get readerAutoScrollStop => 'ඔටෝ ස්ක්‍රෝල් නවත්වන්න';

  @override
  String get readerAutoScrollSpeed => 'ඔටෝ ස්ක්‍රෝල් වේගය';

  @override
  String get readerAutoScrollSpeedDesc =>
      'පිටු තනියම ස්ක්‍රෝල් වෙන හෝ හැරෙන වේගය';

  @override
  String get readerKeepOn => 'ස්ක්‍රීන් එක ඔන් එකේම තියන්න';

  @override
  String get readerKeepOnDesc => 'කියවද්දී ස්ක්‍රීන් එක ඕෆ් වෙන එක නවත්වන්න';

  @override
  String get readerOrientation => 'ඕරියන්ටේෂන්';

  @override
  String get readerOrientationFree => 'ෆ්‍රී';

  @override
  String get readerOrientationPortrait => 'පෝට්රේට්';

  @override
  String get readerOrientationLandscape => 'ලැන්ඩ්ස්කේප්';

  @override
  String get readerSaveProgress => 'ප්‍රගතිය සේව් කරන්න';

  @override
  String get readerSaveProgressDesc =>
      'ඔයාගේ පිටුව මතක තියාගෙන චැප්ටර්ස් කියවපු විදියට සලකුණු කරන්න';

  @override
  String get readerReset => 'රීඩර් සැකසුම් රීසෙට් කරන්න';

  @override
  String get readerResetDesc => 'ඩිෆෝල්ට් වලට ආපහු';

  @override
  String get readerResetConfirm =>
      'සෑම පාඨක සැකසුම එහි පෙරනිමියට යළි පිහිටුවන්නද?';

  @override
  String get novelSize => 'අකුරු ප්‍රමාණය';

  @override
  String get novelFont => 'ෆොන්ට්';

  @override
  String get novelLineHeight => 'පේළි උස';

  @override
  String get novelParagraph => 'ඡේද අතර ඉඩ';

  @override
  String get novelMargin => 'මාජින්ස්';

  @override
  String get novelTheme => 'රීඩර් තීම් එක';

  @override
  String get novelThemeApp => 'ඇප් තීම් එක';

  @override
  String get novelThemeLight => 'ලයිට්';

  @override
  String get novelThemeSepia => 'සෙපියා';

  @override
  String get novelThemeDark => 'ඩාර්ක්';

  @override
  String get novelThemeBlack => 'කළු';

  @override
  String get novelJustify => 'ජස්ටිෆයි ටෙක්ස්ට්';

  @override
  String get novelJustifyDesc => 'අකුරු දෙපැත්තටම ඇලයින් කරන්න';

  @override
  String get trackProgressTitle => 'ප්‍රගතිය සේව් කරනවද?';

  @override
  String trackProgressAnime(String name) {
    return 'ඔයා බලද්දී ඔයාගේ ලිස්ට් එකේ $name ට්‍රැක් කරනවද? ලෝකල් විදියට තියාගන්න \"මේ ඩිවයිස් එක විතරයි\" තෝරන්න, නැත්නම් කිසිවක් සේව් නොකරන්න නෑ තෝරන්න.';
  }

  @override
  String trackProgressManga(String name) {
    return 'ඔයා චැප්ටර් එකක් ඉවර කරද්දී ඔයාගේ ලිස්ට් එකේ $name ට්‍රැක් කරනවද? ලෝකල් විදියට තියාගන්න \"මේ ඩිවයිස් එක විතරයි\" තෝරන්න, නැත්නම් කිසිවක් සේව් නොකරන්න නෑ තෝරන්න.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'ඔබ නරඹන විට $name හි ඔබේ ප්‍රගතිය මෙම උපාංගයේ ඔබේ ලැයිස්තුවට සුරකින්නද?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'ඔබ පරිච්ඡේදයක් අවසන් කරන විට $name හි ඔබේ ප්‍රගතිය මෙම උපාංගයේ ඔබේ ලැයිස්තුවට සුරකින්නද?';
  }

  @override
  String get downloadClearQueue => 'පැහැදිලි පෝලිම';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'පෝලිමේ ඇති සියලුම $count බාගැනීම් අවලංගු කරන්නද? දැනටමත් බාගත කර ඇති දේ මකා ඇත.';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count තෝරා ගන්නා ලදී';
  }

  @override
  String get downloadSelectAll => 'සියල්ල තෝරන්න';

  @override
  String get downloadDeleteSelected => 'තෝරාගත් මකන්න';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return '$count බාගැනීම් මකන්නද? ඔවුන්ගේ ගොනු උපාංගයෙන් ඉවත් කරනු ලැබේ.';
  }

  @override
  String get castTitle => 'උපාංගයට විකාශනය කරන්න';

  @override
  String get castSearching => 'ඔබගේ ජාලයේ උපාංග සොයමින්...';

  @override
  String get castNoDevices =>
      'උපාංග කිසිවක් හමු නොවීය. TV හෝ Chromecast එකම Wi-Fi මත ඇති බව සහතික කර ගෙන, නැවත සොයන්න.';

  @override
  String get castRefresh => 'නැවත සොයන්න';

  @override
  String get castFailed => 'විකාශනය ආරම්භ කිරීමට නොහැකි විය';

  @override
  String get castStop => 'වාත්තු කිරීම නවත්වන්න';

  @override
  String castNowCasting(String name) {
    return '$name වෙත විකාශනය';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'රොකු';

  @override
  String get castRokuNote =>
      'Roku හට වාර්තා කිරීමට හෝ ස්ථානය වෙනස් කිරීමට නොහැකිය';

  @override
  String get castControls => 'පාලනයන්';

  @override
  String get castVolume => 'රූපවාහිනී පරිමාව';

  @override
  String castSkipPart(String name) {
    return '$name මඟ හරින්න';
  }

  @override
  String get trackProgressRememberSeries => 'මෙම මාලාව සඳහා මතක තබා ගන්න';

  @override
  String get trackProgressYes => 'සේව් කරන්න';

  @override
  String get trackProgressReset =>
      'මේ වර්ගයට ප්‍රගතිය සේව් කරන ප්‍රොම්ප්ට් එක රීසෙට් වුණා, ආයෙත් අහනවා';

  @override
  String get trackProgressNo => 'නෑ';

  @override
  String get trackProgressOff => 'ඕෆ්';

  @override
  String get trackProgressLocal => 'මේ ඩිවයිස් එක විතරයි';

  @override
  String get trackProgressSettingAnime => 'anime ප්‍රගතිය ට්‍රැක් කරන්න';

  @override
  String get trackProgressSettingManga =>
      'manga සහ නවකතා ප්‍රගතිය ට්‍රැක් කරන්න';

  @override
  String get trackProgressSettingDesc =>
      'එපිසෝඩ් එකක් ඕපන් කරද්දී හෝ චැප්ටර් එකක් ඉවර කරද්දී මොනවා කරන්නද';

  @override
  String get trackProgressAsk => 'අහන්න';

  @override
  String get trackProgressAlways => 'හැමවිටම';

  @override
  String get dantotsuImport => 'Dantotsu එකෙන් ඉම්පෝර්ට් කරන්න';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu සැකසුම් බැකප් එකක් කියවන්න (.ani, නැත්නම් එන්ක්‍රිප්ට් කරපු .sani)';

  @override
  String get dantotsuPick => 'Dantotsu බැකප් එකක් තෝරන්න';

  @override
  String get dantotsuNothing => 'මේ ෆයිල් එකේ ඉම්පෝර්ට් කරන්න දෙයක් නෑ';

  @override
  String get dantotsuApply => 'තෝරපු ඒවා ඉම්පෝර්ට් කරන්න';

  @override
  String dantotsuDone(int done, int total) {
    return '$total න් $done ඉම්පෝර්ට් වුණා';
  }

  @override
  String get dantotsuGroupAccounts => 'ගිණුම්';

  @override
  String get dantotsuGroupAppearance => 'පෙනුම';

  @override
  String get dantotsuGroupExtensions => 'එක්ස්ටෙන්ෂන්ස්';

  @override
  String get dantotsuGroupApp => 'ඇප්';

  @override
  String get dantotsuGroupPlayer => 'ප්ලේයර්';

  @override
  String get dantotsuAnilist => 'AniList ලොගින්';

  @override
  String get dantotsuMal => 'MyAnimeList ලොගින්';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence ටෝකන් එක';

  @override
  String get dantotsuTheme => 'තීම්';

  @override
  String get themePickerTitle => 'තේමාව';

  @override
  String get dantotsuReposAnime => 'anime එක්ස්ටෙන්ෂන් රෙපොසිටරීස්';

  @override
  String get dantotsuReposManga => 'manga එක්ස්ටෙන්ෂන් රෙපොසිටරීස්';

  @override
  String get dantotsuReposNovel => 'නවකතා එක්ස්ටෙන්ෂන් රෙපොසිටරීස්';

  @override
  String get dantotsuUpdates => 'අප්ඩේට් චෙක් එක';

  @override
  String get dantotsuComments => 'කමෙන්ට්ස්';

  @override
  String get dantotsuActivity => 'AniList නොටිෆිකේෂන් පෝලින්';

  @override
  String get dantotsuDns => 'DNS ප්‍රොවයිඩර්';

  @override
  String get dantotsuPlayer => 'ප්ලේයර් වේගය සහ සබ්ටයිටල් පාට';

  @override
  String get dantotsuWarning =>
      'මේ ෆයිල් එකේ ලොගින් ටෝකන්ස් තියෙනවා. රහසිගතව තියාගන්න.';

  @override
  String get novelIndent => 'ඡේද ඉන්ඩෙන්ට් කරන්න';

  @override
  String get novelIndentDesc =>
      'හැම ඡේදයක්ම පළවෙනි පේළි ඉන්ඩෙන්ට් එකකින් පටන් ගන්න';

  @override
  String get novelLetterSpacing => 'අකුරු අතර ඉඩ';

  @override
  String get novelSectionTranslate => 'පරිවර්තනය';

  @override
  String get sectionExperimental => 'පරීක්ෂණාත්මක';

  @override
  String get kitsuGraphqlDetail => 'වේගවත් ඩිටේල් පේජස් (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ටයිටල් එකක් එහි චරිත, ස්ටාෆ් සහ ඔයාගේ එන්ට්‍රි එක එක්ක එක රික්වෙස්ට් එකකින් ලෝඩ් කරන්න';

  @override
  String get togetherTitle => 'එකට බලමු';

  @override
  String get togetherIntro =>
      'ඔයාගේ යාළුවා එවපු රූම් ලින්ක් එක පේස්ට් කරන්න. එක පාරටම ජොයින් වෙලා, ඒගොල්ලෝ බලන්න පටන් ගත්තම ප්ලේයර් එක ඕපන් වෙනවා.';

  @override
  String togetherLinkConfirm(String room) {
    return 'කාමරයට එකතු වන්න $room? ධාරකය වාදනය කරන දේ තෝරා ගන්නා අතර ක්‍රීඩකයා නැරඹීමට පටන් ගත් විට එයම විවෘත වේ.';
  }

  @override
  String get togetherJoin => 'එක්වන්න';

  @override
  String get togetherName => 'ඔයාගේ නම';

  @override
  String get togetherConnecting => 'කනෙක්ට් වෙනවා…';

  @override
  String get togetherLeave => 'රූම් එකෙන් ඉවත් වෙන්න';

  @override
  String get togetherYou => 'ඔයා';

  @override
  String get togetherNoChat => 'තාම මැසේජස් නෑ';

  @override
  String get togetherChatHint => 'මැසේජ්';

  @override
  String get togetherCopyInvite => 'ඉන්වයිට් එක කොපි කරන්න';

  @override
  String get togetherShareInvite => 'ආරාධනා බෙදාගන්න';

  @override
  String togetherShareText(String link) {
    return 'මා සමඟ Dartotsu හි නරඹන්න: $link';
  }

  @override
  String get togetherInviteCopied => 'සර්වර් එකයි රූම් එකයි කොපි වුණා';

  @override
  String get togetherConnectionLost => 'කනෙක්ෂන් එක නැති වුණා';

  @override
  String togetherConnectedTo(String room) {
    return '$room එකට කනෙක්ට් වුණා';
  }

  @override
  String togetherFailed(String error) {
    return 'කනෙක්ට් වෙන්න බැරි වුණා: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ජොයින් වුණා';
  }

  @override
  String togetherLeft(String name) {
    return '$name ඉවත් වුණා';
  }

  @override
  String togetherPaused(String name) {
    return '$name පෝස් කළා';
  }

  @override
  String togetherResumed(String name) {
    return '$name රිස්යූම් කළා';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time ට පැන්නා';
  }

  @override
  String get togetherFollowFailed =>
      'හෝස්ට්ගේ එපිසෝඩ් එක ඕපන් කරන්න බැරි වුණා. ඔයාම ඕපන් කරන්න.';

  @override
  String get togetherJoinRole => 'රූම් එකකට ජොයින් වෙන්න';

  @override
  String get togetherOpenHost => 'හෝස්ට්ගේ එපිසෝඩ් එක ඕපන් කරන්න';

  @override
  String get togetherShowChat => 'ලයිව් චැට් පෙන්වන්න';

  @override
  String get togetherWaitingHost =>
      'හෝස්ට් එපිසෝඩ් එකක් පටන් ගන්නකම් බලා ඉන්නවා';

  @override
  String get togetherRoomLink => 'රූම් ලින්ක් එක';

  @override
  String get togetherBadLink => 'ඒක රූම් ලින්ක් එකක් නෙවෙයි';

  @override
  String get togetherHostClosed => 'හෝස්ට් රූම් එක වැහුවා';

  @override
  String get togetherNowPlaying => 'දැන් ප්ලේ වෙන්නේ';

  @override
  String togetherWatchingCount(int count) {
    return '$count දෙනෙක් බලනවා';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user පෝස් කරන්න කැමතියි';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user රිස්යූම් කරන්න කැමතියි';
  }

  @override
  String get togetherChip => 'එකට';

  @override
  String get togetherSettingsDesc =>
      'ලින්ක් එකකින් යාළුවෙකුගේ රූම් එකකට ජොයින් වෙන්න';

  @override
  String get novelBilingual => 'ඔරිජිනල් සහ පරිවර්තනය පෙන්වන්න';

  @override
  String get novelBilingualDesc =>
      'හැම ඡේදයක්ම ඔරිජිනල් අකුරු ඒවා යටින් පරිවර්තනයත් එක්ක පෙන්වනවා';

  @override
  String get novelTranslateTo => 'පරිවර්තනය කරන්න';

  @override
  String get novelTranslateOff => 'ඕෆ්';

  @override
  String get novelSectionSpeech => 'ටෙක්ස්ට් ටු ස්පීච්';

  @override
  String get novelSpeechRate => 'ස්පීච් වේගය';

  @override
  String get novelSpeechPitch => 'ස්පීච් පිච්';

  @override
  String get novelSpeak => 'හඬින් කියවන්න';

  @override
  String get novelSpeakStop => 'හඬින් කියවීම නවත්වන්න';

  @override
  String get novelTranslate => 'චැප්ටර් එක පරිවර්තනය කරන්න';

  @override
  String get novelTranslateShowOriginal => 'ඔරිජිනල් එක පෙන්වන්න';

  @override
  String novelTranslateFailed(String error) {
    return 'පරිවර්තනය අසාර්ථකයි: $error';
  }

  @override
  String get novelSpeechUnavailable => 'මේ ඩිවයිස් එකේ ටෙක්ස්ට් ටු ස්පීච් නෑ';

  @override
  String get novelSpeechVoice => 'හඬ';

  @override
  String get novelSpeechVoiceDefault => 'සිස්ටම් ඩිෆෝල්ට්';

  @override
  String get novelSpeakPrevious => 'කලින් පේළිය';

  @override
  String get novelSpeakNext => 'ඊළඟ පේළිය';

  @override
  String get novelTapPaging => 'පිටුව හරවන්න දාර ටැප් කරන්න';

  @override
  String get novelTapPagingDesc =>
      'පිටුවක් ස්ක්‍රෝල් කරන්න වමේ හෝ දකුණේ පැත්ත ටැප් කරන්න, මැද කන්ට්‍රෝල්ස් පෙන්වනවා';

  @override
  String get novelPaged => 'පිටුව හැරවීම';

  @override
  String get novelPagedDesc =>
      'පරිච්ෙඡ්දය පිටුවලට වෙන් කර අනුචලනය කිරීම වෙනුවට ඒවා හැරවීමට ස්වයිප් කරන්න හෝ තට්ටු කරන්න';

  @override
  String novelPageOf(int current, int total) {
    return '$total හි $current පිටුව';
  }

  @override
  String get novelPaginating => 'පිටු තැබීම';

  @override
  String get novelTools => 'අන්තර්ගතය, සෙවීම සහ උද්දීපනය';

  @override
  String get novelContents => 'අන්තර්ගතය';

  @override
  String get novelContentsEmpty => 'මෙම පරිච්ඡේදයේ මාතෘකා නොමැත';

  @override
  String get novelSearch => 'සොයන්න';

  @override
  String get novelSearchHint => 'මෙම පරිච්ඡේදයේ සොයන්න';

  @override
  String get novelSearchNone => 'ගැලපීම් නැත';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ගැලපීම්',
      one: '1 තරගය',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'ඉස්මතු කිරීම්';

  @override
  String get novelHighlightsEmpty =>
      'පෙළ කිහිපයක් තෝරා එය මෙහි තබා ගැනීමට Highlight තට්ටු කරන්න';

  @override
  String get novelHighlight => 'ඉස්මතු කරන්න';

  @override
  String get novelHighlightNote => 'සටහන';

  @override
  String get novelHighlightNoteHint => 'සටහනක් එක් කරන්න';

  @override
  String get novelHighlightRemove => 'උද්දීපනය ඉවත් කරන්න';

  @override
  String get novelHighlightFailed => 'එම තේරීම පෙළට ගැළපීමට නොහැකි විය';

  @override
  String novelMinutesLeft(int count) {
    return 'විනාඩි $countක් ඉතිරියි';
  }

  @override
  String get novelBold => 'බෝල්ඩ් ටෙක්ස්ට්';

  @override
  String get novelBoldDesc => 'බරින් වැඩි වේට් එකක් පාවිච්චි කරන්න';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter ඉවරයි';
  }

  @override
  String readerNextUp(String chapter) {
    return 'ඊළඟට: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'කලින්: $chapter';
  }

  @override
  String get readerNoPages => 'මේ චැප්ටර් එකේ පිටු නෑ';

  @override
  String get readerLoadingPages => 'පිටු ලෝඩ් වෙනවා…';

  @override
  String get readerSlowPage => 'මේ පිටුව තාම ලෝඩ් වෙනවා…';

  @override
  String get readerPageFailed => 'මේ පිටුව ලෝඩ් කරන්න බැරි වුණා';

  @override
  String get playerShowComments => 'කමෙන්ට්ස් පෙන්වන්න';

  @override
  String get playerHideComments => 'කමෙන්ට්ස් හංගන්න';

  @override
  String get playerSubtitles => 'සබ්ටයිටල්ස්';

  @override
  String get playerSubtitlesOff => 'සබ්ටයිටල්ස් ඕෆ්';

  @override
  String get playerAudio => 'ඕඩියෝ';

  @override
  String get playerAddSubtitle => 'සබ්ටයිටල් ෆයිල් එකක් එකතු කරන්න';

  @override
  String get playerAddAudio => 'ඕඩියෝ ෆයිල් එකක් එකතු කරන්න';

  @override
  String get playerChapters => 'චැප්ටර්ස්';

  @override
  String get playerSkipSubmit => 'මඟ හැරීමේ වේලාවන් ඉදිරිපත් කරන්න';

  @override
  String get playerSkipSubmitDesc =>
      'මෙම කථාංගයේ ආරම්භය, අවසානය හෝ නැවත සටහන් කිරීම ආරම්භ වන සහ අවසන් වන ස්ථානය සලකුණු කර එය AniSkip සමඟ බෙදා ගන්න, එවිට සියලු දෙනාටම මඟ හැරීම බොත්තම ලැබේ.';

  @override
  String get playerSkipStart => 'ආරම්භ කරන්න';

  @override
  String get playerSkipEnd => 'අවසානය';

  @override
  String get playerSkipUseNow => 'වත්මන් ස්ථානය භාවිතා කරන්න';

  @override
  String get playerSkipSend => 'AniSkip වෙත ඉදිරිපත් කරන්න';

  @override
  String get playerSkipSent =>
      'AniSkip වෙත ඉදිරිපත් කරන ලද වේලාවන් මඟහරින්න, ස්තූතියි';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip මඟ හැරීමේ වේලාවන් ප්‍රතික්ෂේප කළේය: $error';
  }

  @override
  String get playerUnsupported =>
      'වීඩියෝ වාදකය මෙම උපාංගය මත ධාවනය කළ නොහැක (එහි ඇන්ඩ්‍රොයිඩ් අනුවාදය බණ්ඩල් කරන ලද ක්‍රීඩක පුස්තකාලයට වඩා පැරණිය). විස්තර පිටපත් කිරීමට තට්ටු කරන්න.';

  @override
  String get playerSkipNoMal =>
      'මෙම මාතෘකාවට MyAnimeList id නැත, AniSkip හට එය ගත නොහැක';

  @override
  String get playerNoChapters => 'චැප්ටර්ස් නෑ';

  @override
  String get playerTimestamp => 'ටයිම්ස්ටැම්ප්';

  @override
  String get playerAutoPlayDelay => 'ඊළඟ එපිසෝඩ් කවුන්ට්ඩවුන්';

  @override
  String get playerWatchedAt => 'බැලූ විදියට ගණන් ගන්නේ';

  @override
  String playerNextIn(int seconds) {
    return 'ඊළඟ එපිසෝඩ් එක තත්පර $secondsකින්';
  }

  @override
  String get playerPlayNow => 'දැන්ම ප්ලේ කරන්න';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: මේ ටයිටල් එකට ඔටෝ ස්කිප් වෙනවා';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: මේ ටයිටල් එකට ඔටෝ ස්කිප් වෙන්නේ නෑ';
  }

  @override
  String get playerAudioLanguage => 'කැමති ඕඩියෝ භාෂාව';

  @override
  String get playerLanguageOrderHint =>
      'භාෂා කොමා වලින් වෙන් කරන්න. හම්බවෙන පළවෙනි එක පාවිච්චි වෙනවා.';

  @override
  String get playerPip => 'පික්චර් ඉන් පික්චර්';

  @override
  String get playerAutoPip => 'ඉවත් වෙද්දී පික්චර් ඉන් පික්චර්';

  @override
  String get playerAutoPipDesc =>
      'ඇප් එකෙන් ඉවත් වෙද්දී පොඩි වින්ඩෝ එකකින් ප්ලේ වෙන එක දිගටම කරන්න';

  @override
  String get playerPipPlay => 'සෙල්ලම් කරන්න';

  @override
  String get playerPipPause => 'නවත්වන්න';

  @override
  String get playerPipBack => 'ආපසු හරවන්න';

  @override
  String get playerPipForward => 'ඉදිරියට';

  @override
  String get playerPipRestore => 'ක්‍රීඩකයා වෙත ආපසු';

  @override
  String get playerPipActive => 'කුඩා කවුළුවක සෙල්ලම් කිරීම';

  @override
  String get listDateAdded => 'ලැයිස්තුවට එකතු කරන ලදී';

  @override
  String get listDateLastWatched => 'අන්තිමට බැලුවා';

  @override
  String playerAutoPlaying(String title) {
    return 'ඊළඟට $title ප්ලේ වෙනවා…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ෂේඩර්ස් ඉන්ස්ටෝල් කරන්න බැරි වුණා: $error';
  }

  @override
  String playerChapter(int number) {
    return 'චැප්ටර් $number';
  }

  @override
  String get playerPerTitle => 'මේ ටයිටල් එකට විතරයි';

  @override
  String get playerPerTitleDesc =>
      'මේ විකල්ප මේ ටයිටල් එකට තියාගෙන ඔයාගේ ඩිෆෝල්ට්ස් ඒ විදියටම තියන්න';

  @override
  String get playerSwapGestures => 'ස්වයිප් පැති මාරු කරන්න';

  @override
  String get playerSwapGesturesDesc =>
      'වම පැත්තෙන් බ්‍රයිට්නස්, දකුණු පැත්තෙන් වොලියුම්';

  @override
  String get playerOpenBig => 'ලොකු වීව් එකෙන් අරින්න';

  @override
  String get playerOpenBigDesc =>
      'කථාංග ලැයිස්තුව නැතිව ප්ලේයර් එක කෙලින්ම ෆුල්ස්ක්‍රීන් එකෙන් පටන් ගන්නවා';

  @override
  String get playerPauseOnBlur => 'ෆෝකස් නැති වුණාම පෝස් කරන්න';

  @override
  String get playerPauseOnBlurDesc =>
      'නොටිෆිකේෂන් පැනලය වගේ දෙයක් ඇප් එක වහපුවාම පෝස් වෙනවා, ආපහු ආවම ආයෙත් ධාවනය වෙනවා';

  @override
  String get playerAudioOutput => 'ඕඩියෝ අවුට්පුට්';

  @override
  String get fontAppDefault => 'ඇප් ෆොන්ට් එක';

  @override
  String get fontImport => 'ෆොන්ට් ඉම්පෝර්ට් කරන්න';

  @override
  String get fontSample => 'ඉක්මන් දුඹුරු නරියා කම්මැලි බල්ලා උඩින් පනිනවා';

  @override
  String get playerSubtitleDelay => 'සබ්ටයිටල් ඩිලේ';

  @override
  String get playerAudioDelay => 'ඕඩියෝ ඩිලේ';

  @override
  String get playerDelayReset => 'රීසෙට්';

  @override
  String get playerOnlineSubtitles => 'ඔන්ලයින් සබ්ටයිටල්ස්';

  @override
  String get playerOnlineSearchHint => 'ටයිටල් එක සහ එපිසෝඩ් එක';

  @override
  String get playerOnlineNone => 'සබ්ටයිටල්ස් හම්බුණේ නෑ';

  @override
  String playerOnlineFailed(String error) {
    return 'සබ්ටයිටල් සර්ච් එක අසාර්ථකයි: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'මේ සබ්ටයිටල් එක ඩවුන්ලෝඩ් කරන්න බැරි වුණා: $error';
  }

  @override
  String get playerOnlineMatch => 'මේ ෆයිල් එකට ගැලපෙනවා';

  @override
  String get playerOnlineEpisode => 'එපිසෝඩ් ගැලපීම';

  @override
  String playerOnlineDownloads(int count) {
    return 'ඩවුන්ලෝඩ්ස් $countක්';
  }

  @override
  String get playerSeekPreview => 'සීක් ප්‍රිවිව් එක';

  @override
  String get playerSeekPreviewDesc =>
      'ස්ක්‍රබ් කරද්දී සීක් බාර් එකට උඩින් පොඩි ෆ්‍රේම් ප්‍රිවිව් එකක් පෙන්වන්න. දෙවැනි අඩු රෙසොල්යුෂන් ඩිකෝඩර් එකක් විවෘත කරන නිසා ස්ට්‍රීම්ස් වල අමතර ඩේටා වැය වෙනවා.';

  @override
  String get playerSettingsChip => 'සැකසුම්';

  @override
  String get playerAudioDevice => 'ඕඩියෝ ඩිවයිස් එක';

  @override
  String get settingsDownloads => 'ඩවුන්ලෝඩ්ස්';

  @override
  String get settingsDownloadsDesc =>
      'ඕෆ්ලයින් එපිසෝඩ්ස්, ක්‍යූ සහ ඕෆ්ලයින් මෝඩ් එක';

  @override
  String get downloadsTitle => 'ඩවුන්ලෝඩ්ස්';

  @override
  String get widgetContinue => 'දිගටම කරගෙන යන්න';

  @override
  String get widgetReleases => 'ළඟදීම නිකුත් කරනවා';

  @override
  String get widgetMore => 'එසේම සිදුවෙමින් පවතී';

  @override
  String get widgetNothing => 'දිගටම කරගෙන යාමට කිසිවක් නැත';

  @override
  String get downloadStorageTitle => 'ගබඩා කිරීම';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count බාගැනීම්',
      one: '1 බාගැනීම',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size දැනටමත් නරඹා හෝ කියවා ඇත';
  }

  @override
  String get downloadFreeUp => 'ඉඩ නිදහස් කරන්න';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count බාගැනීම් නැරඹුවා',
      one: '1 බාගැනීම නැරඹුවා',
    );
    return 'මකන්න $_temp0 සහ නොමිලේ $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'නිදහස් $size';
  }

  @override
  String get downloadDeleteWatched => 'මකන්න නැරඹුවා';

  @override
  String get downloadDeleteAll => 'සියල්ල මකන්න';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title හි සෑම බාගැනීමක්ම මකන්නද?';
  }

  @override
  String get downloadNothingWatched => 'ඔබ අවසන් කළ කිසිවක් බාගත නොවේ';

  @override
  String get downloadStorageEmpty => 'බාගැනීම් කිසිවක් ඉඩ භාවිතා නොකරයි';

  @override
  String get downloadsOpenDesc =>
      'ක්‍යූ එකයි මේ ඩිවයිස් එකේ සේව් කරලා තියෙන හැමදේමයි බලන්න';

  @override
  String get downloadTitle => 'ඩවුන්ලෝඩ්';

  @override
  String get downloadMetaOnly => 'පාරදත්ත පමණි';

  @override
  String get downloadMetaFailed => 'මාතෘකා ෆෝල්ඩරය සෑදීමට නොහැකි විය';

  @override
  String downloadMetaSaved(String path) {
    return 'සුරකින ලදී. ඔබේ ගොනු $path තුළ තබන්න';
  }

  @override
  String get downloadAlready =>
      'කලින්ම ඩවුන්ලෝඩ් කරලා නැත්නම් ක්‍යූ එකේ තියෙනවා';

  @override
  String get downloadPickStream => 'ඩවුන්ලෝඩ් කරන්නේ මොන ස්ට්‍රීම් එකද?';

  @override
  String get downloadPickSubtitle => 'ඩවුන්ලෝඩ් කරන්නේ මොන සබ්ටයිටල් එකද?';

  @override
  String get downloadPickAudio => 'ඩවුන්ලෝඩ් කරන්නේ මොන ඕඩියෝ ට්‍රැක් එකද?';

  @override
  String get downloadNoAudio => 'අමතර ඕඩියෝ නෑ';

  @override
  String get downloadAudio => 'ඕඩියෝ';

  @override
  String get downloadNoSubtitle => 'සබ්ටයිටල් නෑ';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'මේ ස්ට්‍රීම් එක HLS ප්ලේලිස්ට් එකක්. ඒක ඩවුන්ලෝඩ් කරන්න FFmpeg ඇඩ්-ඔන් එක ඕනේ.';

  @override
  String get downloadSourceMissing =>
      'මේ එපිසෝඩ් එකේ සෝස් එක ඉන්ස්ටෝල් කරලා නෑ';

  @override
  String get downloadDashDrm => 'මෙම ප්‍රවාහය DRM ආරක්ෂිතයි';

  @override
  String get downloadDashNoVideo => 'DASH මැනිෆෙස්ටයේ වීඩියෝවක් නොමැත';

  @override
  String get downloadWaitingConnection => 'කනෙක්ෂන් එකක් එනකම් බලා ඉන්නවා';

  @override
  String get downloadSubtitles => 'සබ්ටයිටල්ස්';

  @override
  String get downloadDownloaded => 'ඩවුන්ලෝඩ් වුණා';

  @override
  String get downloadOffline => 'ඕෆ්ලයින්';

  @override
  String get downloadDelete => 'ඩවුන්ලෝඩ් එක මකන්න';

  @override
  String get downloadCancel => 'අවලංගු කරන්න';

  @override
  String get downloadPause => 'පෝස්';

  @override
  String get downloadPaused => 'පෝස් කළා';

  @override
  String get downloadResume => 'රිස්යූම්';

  @override
  String get downloadPauseAll => 'සියල්ල පෝස් කරන්න';

  @override
  String get downloadResumeAll => 'සියල්ල රිස්යූම් කරන්න';

  @override
  String get downloadQueuedState => 'ක්‍යූ එකේ බලා ඉන්නවා';

  @override
  String get downloadResolving => 'ස්ට්‍රීම් එක ගන්නවා…';

  @override
  String get downloadUsedFallback =>
      'ගැලපෙන ස්ට්‍රීම් එකක් නෑ, පළවෙනි එක පාවිච්චි කළා';

  @override
  String get downloadTabQueue => 'ක්‍යූ';

  @override
  String get downloadTabDone => 'ඉවරයි';

  @override
  String get downloadTabFailed => 'අසාර්ථකයි';

  @override
  String get downloadEmptyQueue => 'කිසිවක් ඩවුන්ලෝඩ් වෙන්නේ නෑ';

  @override
  String get downloadEmptyDone => 'තාම කිසිවක් ඩවුන්ලෝඩ් කරලා නෑ';

  @override
  String get downloadEmptyFailed => 'අසාර්ථක ඩවුන්ලෝඩ්ස් නෑ';

  @override
  String get downloadNext => 'ඊළඟ එපිසෝඩ් එක';

  @override
  String downloadNextN(int count) {
    return 'ඊළඟ එපිසෝඩ්ස් $count';
  }

  @override
  String downloadUnwatched(int count) {
    return 'නොබැලූ සියල්ල ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'මේ රේන්ජ් එක ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'සියලු එපිසෝඩ්ස් ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'එපිසෝඩ් $countක් ක්‍යූ එකේ',
      one: 'එපිසෝඩ් 1ක් ක්‍යූ එකේ',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ඩවුන්ලෝඩ් වුණා';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ඩවුන්ලෝඩ් වෙන්න බැරි වුණා';
  }

  @override
  String downloadStorage(String size) {
    return 'ඩවුන්ලෝඩ්ස් වලට $sizeක් භාවිතා වෙලා';
  }

  @override
  String get downloadQueueHeader => 'ක්‍යූ';

  @override
  String get downloadParallel => 'එක වර ඩවුන්ලෝඩ්ස්';

  @override
  String get downloadParallelDesc =>
      'එක එක ඩවුන්ලෝඩ් කරන්න හෝ කීපයක් එකට කරන්න';

  @override
  String get downloadOneByOne => 'එකින් එක';

  @override
  String get downloadNotifications => 'ඩවුන්ලෝඩ් නොටිෆිකේෂන්ස්';

  @override
  String get downloadNotificationsDesc =>
      'සිස්ටම් එකෙන් සහාය තියෙනවා නම් ලයිව් ප්‍රගතිය, නැත්නම් ඩවුන්ලෝඩ් එකක් ඉවර වුණාම සටහනක්';

  @override
  String get downloadNotifyLive => 'ලයිව්';

  @override
  String get downloadNotifyDone => 'ඉවර වුණාම';

  @override
  String get downloadNotifyOff => 'ඕෆ්';

  @override
  String get downloadInfoFile =>
      'හැම ඩවුන්ලෝඩ් එකක් ළඟම ඉන්ෆෝ ෆයිල් එකක් ලියන්න';

  @override
  String get downloadInfoFileDesc =>
      'ස්ට්‍රීම් එක, ක්වාලිටි එක, සබ්ටයිටල් එක සහ ස්කිප් ටයිම්ස් පොඩි .json ෆයිල් එකක් විදියට සේව් කරනවා';

  @override
  String get offlineHeader => 'ඕෆ්ලයින්';

  @override
  String get offlineModeDesc =>
      'ඔටෝ කියන්නේ ඇප් එක කනෙක්ෂන් එකක් නැතුව පටන් ගද්දි විතරක් ඕෆ්ලයින් යනවා. හැමවිටම කියන්නේ ඔයා වෙනස් කරනකම් ඕෆ්ලයින් ඉන්නවා.';

  @override
  String get offlineModeOff => 'ඕෆ්';

  @override
  String get offlineModeAlways => 'හැමවිටම';

  @override
  String get offlineModeOn =>
      'ඕෆ්ලයින් මෝඩ් එක ඔන් කරලා. වෙනස්කම් මෙතන සේව් වෙලා ඔයා ආයෙත් ඔන්ලයින් ආවම යවනවා.';

  @override
  String get offlineSaved =>
      'මේ ඩිවයිස් එකේ සේව් වුණා, ඔයා ඔන්ලයින් ආවම සින්ක් වෙනවා';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'වෙනස්කම් $countක් සින්ක් වුණා',
      one: 'වෙනස්කමක් 1ක් සින්ක් වුණා',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'වෙනස්කම් $countක් සින්ක් වෙන්න බලා ඉන්නවා',
      one: 'වෙනස්කමක් 1ක් සින්ක් වෙන්න බලා ඉන්නවා',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'සින්ක් වෙන්න බලා ඉන්න වෙනස්කම්';

  @override
  String get offlinePendingNone => 'බලා ඉන්න කිසිවක් නෑ';

  @override
  String get offlineSyncNow => 'දැන්ම සින්ක් කරන්න';

  @override
  String get offlineDiscard => 'ඉවත දාන්න';

  @override
  String get downloadNotOffline =>
      'මේ එපිසෝඩ් එක ඩවුන්ලෝඩ් කරලා නැති නිසා ඕෆ්ලයින් බලන්න බෑ';

  @override
  String get offlineModeChip => 'ඕෆ්ලයින්';

  @override
  String get downloadNextChapter => 'ඊළඟ චැප්ටර් එක';

  @override
  String downloadNextChapters(int count) {
    return 'ඊළඟ චැප්ටර්ස් $count';
  }

  @override
  String downloadUnread(int count) {
    return 'නොකියවපු සියල්ල ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'සියලු චැප්ටර්ස් ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return 'පිටු $done / $total';
  }

  @override
  String downloadPagesCount(int count) {
    return 'පිටු $countක්';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ඇඩ්-ඔන් එක ඕනේ';

  @override
  String get downloadFfmpegBody =>
      'මේ ස්ට්‍රීම් එක HLS ප්ලේලිස්ට් එකක්. FFmpeg ඇඩ්-ඔන් එක ඒකේ කෑලි එක mp4 ෆයිල් එකකට එකතු කරනවා. ඒක නැතුව කෑලි එපිසෝඩ් ෆෝල්ඩර් එකක තියෙනවා, එතනින්ම ප්ලේ වෙනවා.';

  @override
  String get downloadFfmpegInstall => 'ඉන්ස්ටෝල් කරන්න';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ඉන්ස්ටෝල් කරනවා, ටිකක් වෙලා යයි…';

  @override
  String get downloadFinishing => 'කෑලි එක ෆයිල් එකකට එකතු කරනවා…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return 'කොටස් $done / $total';
  }

  @override
  String get downloadTorrentNoFile =>
      'ටොරන්ට් එකේ ඩවුන්ලෝඩ් කරන්න වීඩියෝ ෆයිල් එකක් නෑ';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'අයිතම $countක් ඩවුන්ලෝඩ් වෙනවා',
      one: 'අයිතමයක් 1ක් ඩවුන්ලෝඩ් වෙනවා',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'බැලූ ඩවුන්ලෝඩ්ස් මකන්න';

  @override
  String get downloadAutoDeleteDesc =>
      'ඔයාගේ ප්‍රගතිය ඒ එපිසෝඩ් එකට හෝ චැප්ටර් එකට ළඟා වුණාම ඩවුන්ලෝඩ් එක අයින් කරනවා';

  @override
  String get downloadConnections => 'ඩවුන්ලෝඩ් එකකට කනෙක්ෂන්ස්';

  @override
  String get downloadConnectionsDesc =>
      'ලොකු ෆයිල් එකක් එකවර ගන්න කොටස් වලට බෙදනවා. සමහර සර්වර්ස් මේක සීමා කරනවා.';

  @override
  String get downloadPlayChoice => 'ප්ලේ කරන්නේ';

  @override
  String get downloadPlayLocalDesc => 'මේ ඩිවයිස් එකේ සේව් කරපු ෆයිල් එක';

  @override
  String get downloadPlayStream => 'ඔන්ලයින් ස්ට්‍රීම් කරන්න';

  @override
  String get downloadPlayStreamDesc => 'සෝස් එකෙන් එපිසෝඩ් එක ලෝඩ් කරන්න';

  @override
  String get offlineFeedTitle => 'මේ ඩිවයිස් එකේ ඩවුන්ලෝඩ් කරපු';

  @override
  String get offlineFeedEmpty =>
      'ඔන්ලයින් ඉද්දී යමක් ඩවුන්ලෝඩ් කරන්න, ඒක මෙතන පේනවා';

  @override
  String get offlineEnabled => 'ඕෆ්ලයින් මෝඩ් එක ඔන්';

  @override
  String get offlineDisabled => 'ඕෆ්ලයින් මෝඩ් එක ඕෆ්';

  @override
  String get downloadReadChoice => 'කියවන්නේ';

  @override
  String get downloadReadLocalDesc => 'මේ ඩිවයිස් එකේ සේව් කරපු පිටු';

  @override
  String get downloadReadOnline => 'ඔන්ලයින් කියවන්න';

  @override
  String get downloadReadOnlineDesc => 'සෝස් එකෙන් චැප්ටර් එක ලෝඩ් කරන්න';

  @override
  String downloadDeleteConfirm(String name) {
    return 'මේ ඩිවයිස් එකෙන් $name මකනවද?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name ඩවුන්ලෝඩ් එක අවලංගු කරනවද? දැනටමත් ඩවුන්ලෝඩ් වෙච්ච දේ මැකෙනවා.';
  }

  @override
  String get downloadFfmpegFolder => 'ෆෝල්ඩර් එකක් විදියට තියාගන්න';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'කවදාවත් නොයවපු වෙනස්කම් $countක් ඉවත දානවද? මේක ආපහු හරවන්න බෑ.',
      one: 'කවදාවත් නොයවපු වෙනස්කම ඉවත දානවද? මේක ආපහු හරවන්න බෑ.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi එකට බලා ඉන්නවා';

  @override
  String get downloadWaitingMetered => 'මීටර් කනෙක්ෂන් එකක පෝස් කරලා';

  @override
  String get downloadWifiOnly => 'Wi-Fi විතරයි';

  @override
  String get downloadWifiOnlyDesc =>
      'මොබයිල් ඩේටා වල ඉන්නකොට ඩවුන්ලෝඩ්ස් බලා ඉන්නවා';

  @override
  String get downloadMetered => 'මීටර් කනෙක්ෂන්ස් වල පෝස් කරන්න';

  @override
  String get downloadMeteredDesc =>
      'ඔයාගේ ඩිවයිස් එක මීටර් කියලා සලකුණු කරපු Wi-Fi එකේත් බලා ඉන්නවා';

  @override
  String get downloadSpeedLimit => 'වේග සීමාව';

  @override
  String get downloadSpeedLimitDesc => 'මුළු ඩවුන්ලෝඩ් වේගයට සීමාවක් දානවා';

  @override
  String get downloadUnlimited => 'සීමා නැති';

  @override
  String get downloadMoveToTop => 'උඩට ගෙනියන්න';

  @override
  String downloadSwarm(int seeds, int peers) {
    return 'සීඩ්ස් $seeds · පීර්ස් $peers';
  }

  @override
  String get downloadTorrentFile => 'මොන ෆයිල් එකද?';

  @override
  String get downloadTorrentAuto => 'එපිසෝඩ් එක ඔටෝ මැච් කරන්න';

  @override
  String get downloadTorrentLoading => 'ටොරන්ට් එක කියවනවා…';

  @override
  String get watchAutoSource => 'ඊළඟ සෝස් එකට ඔටෝ මාරු වෙන්න';

  @override
  String get watchAutoSourceDesc =>
      'සෝස් එකට ටයිටල් එක හොයාගන්න බැරි වුණොත් හෝ ලෝඩ් වෙන්නේ නැත්නම්, ඉන්ස්ටෝල් කරපු ඊළඟ සෝස් එක උත්සාහ කරන්න';

  @override
  String get extensionTest => 'එක්ස්ටෙන්ෂන්ස් ටෙස්ට් කරන්න';

  @override
  String get extensionTestCopy => 'අසාර්ථක ඒවයි ඒවායේ ලොග්ස් වගේ කොපි කරන්න';

  @override
  String get extensionTestQuery => 'සර්ච් වචනය';

  @override
  String get extensionTestRun => 'රන්';

  @override
  String get extensionTestStop => 'නවත්වන්න';

  @override
  String get extensionTestNone => 'මේ වර්ගයේ ඉන්ස්ටෝල් කරපු එක්ස්ටෙන්ෂන්ස් නෑ';

  @override
  String get extensionTestNotRun => 'තාම ටෙස්ට් කරලා නෑ';

  @override
  String get extensionTestSearch => 'හොයන්න';

  @override
  String get extensionTestDetail => 'විස්තර';

  @override
  String get extensionTestUnits => 'එපිසෝඩ්ස් / චැප්ටර්ස්';

  @override
  String get extensionTestLinks => 'ස්ට්‍රීම්ස් / පිටු';

  @override
  String extensionTestFailedAt(String step) {
    return '$step එකේදී අසාර්ථක වුණා';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total න් $doneක් ටෙස්ට් කළා · $passedක් පාස් · $failedක් අසාර්ථක';
  }

  @override
  String get extensionTestCopyLogs => 'හැමදේම සම්පූර්ණ ලොග්ස් එක්ක කොපි කරන්න';

  @override
  String get onboardingFeaturesTitle => 'හැමදේම එක තැනක';

  @override
  String get onboardingFeaturesBody =>
      'ඔයා ට්‍රැක් කරන, බලන, කියවන හැමදේම, ඇප්ස් මාරු කරකර ඉන්න ඕනේ නැතුව.';

  @override
  String get onboardingFeatureTrack => 'හැමදේම ට්‍රැක් කරන්න';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu සහ MangaBaka වල ලිස්ට්ස්, ප්‍රගතිය සහ ස්කෝර්ස්.';

  @override
  String get onboardingFeatureWatch => 'බලන්න සහ කියවන්න';

  @override
  String get onboardingFeatureWatchDesc =>
      'එක්ස්ටෙන්ෂන්ස් ඉන්ස්ටෝල් කරලා anime ස්ට්‍රීම් කරන්න, නැත්නම් manga සහ නවකතා ඇප් එක ඇතුළෙම කියවන්න.';

  @override
  String get onboardingFeatureOffline => 'ඕෆ්ලයින් අරන් යන්න';

  @override
  String get onboardingFeatureOfflineDesc =>
      'එපිසෝඩ්ස් සහ චැප්ටර්ස් ඩවුන්ලෝඩ් කරලා, කනෙක්ෂන් එකක් නැතුවත් දිගටම කරන්න.';

  @override
  String get onboardingFeatureSync => 'ලිස්ට්ස් සින්ක් එකේ තියාගන්න';

  @override
  String get onboardingFeatureSyncDesc =>
      'ඔයාගේ ලිස්ට් එක සර්විසස් හරහා කොපි කරන්න, නැත්නම් ඉදිරියෙන් ඉන්න එක දිනන්න දෙන්න.';

  @override
  String get onboardingServices => 'මේ එක්ක වැඩ කරනවා';

  @override
  String sourceNotifyOn(String source) {
    return '$source ට අලුත් දෙයක් ඇති විට ඔබට කියනු ඇත';
  }

  @override
  String get sourceNotifyOff => 'නිවේදන නිකුත් කිරීම අක්‍රියයි';

  @override
  String get sourceNotifyNeedsSource =>
      'මුලින්ම ගැලපීමක් සහිත මූලාශ්‍රයක් තෝරන්න';

  @override
  String sourceNotifyAllOut(int count) {
    return 'සියල්ල ($count) දැනටමත් අවසන් වී ඇත, බලා සිටීමට කිසිවක් නැත';
  }

  @override
  String get sourceNotifyTooltipOn => 'නිකුත් කිරීමේ දැනුම්දීම් නවත්වන්න';

  @override
  String get sourceNotifyTooltipOff => 'නව නිකුතු ගැන මට දන්වන්න';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'කථාංගය $number $source මත නිකුත් වේ';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'කථාංග $from–$to $source මත නිකුත් වේ';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return '$number පරිච්ඡේදය $source මත අවසන් වේ';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'පරිච්ඡේද $from–$to $source මත අවසන්';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count මාතෘකා වල අලුත් දෙයක් ඇත';
  }

  @override
  String get navSources => 'මූලාශ්ර';

  @override
  String sourceInactiveOpen(String manager) {
    return 'මෙම මූලාශ්‍රය $manager ට අයත් වේ, එය ක්‍රියාකාරී දිගු සේවාව නොවේ';
  }

  @override
  String get sourceAlertsHeader => 'නිවේදන නිකුත් කරන්න';

  @override
  String get sourceAlertsSwitch => 'දායක වූ මාතෘකා පරීක්ෂා කරන්න';

  @override
  String get sourceAlertsSwitchDesc =>
      'යෙදුම විවෘත වන සෑම අවස්ථාවකම, මාතෘකා සඳහා ඔබ සීනුව සක්‍රීය කළා';

  @override
  String get sourceSkipUnstarted => 'ඔබ ආරම්භ කර නැති මාතෘකා මඟ හරින්න';

  @override
  String get sourceSkipUnstartedDesc =>
      'තවමත් කිසිවක් නරඹා හෝ කියවා නැත, නමුත් කථාංග දැනටමත් පවතී';

  @override
  String get sourceSkipUnseen => 'ඔබට නොදුටු කථාංග ඇති අතර මඟ හරින්න';

  @override
  String get sourceSkipUnseenDesc => 'ඔබ තවමත් අල්ලා ගැනීමට කථාංග නිකුත් කර ඇත';

  @override
  String get sourceManage => 'දායකත්ව';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count මාතෘකා',
      one: '1 මාතෘකාව',
      zero: 'මාතෘකා නැත',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'දැන් පරීක්ෂා කරන්න';

  @override
  String get sourceCheckNowDesc => 'කාලසටහන සහ මඟ හැරීමේ නීති නොසලකා හරියි';

  @override
  String get sourceChecking => 'පරීක්ෂා කරමින්...';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count මාතෘකා වල අලුත් දෙයක් ඇත',
      one: '1 මාතෘකාවට අලුත් දෙයක් ඇත',
      zero: 'අලුත් දෙයක් නැහැ',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'තවමත් දායකත්ව නොමැත';

  @override
  String get sourceEmptyMessage =>
      'නව ඒවා ගැන පැවසීමට මාතෘකාවක කථාංගවලට ඉහළින් ඇති සීනුව තට්ටු කරන්න';

  @override
  String get sourceAll => 'සියල්ල';

  @override
  String sourceInactive(String manager) {
    return 'අක්රිය: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return 'මෙම දිගු සේවාව තුළ $source ස්ථාපනය කර නැත';
  }

  @override
  String get sourceUnreachable => 'මූලාශ්‍රය ප්‍රතිචාර නොදක්වයි';

  @override
  String get sourceFinished => 'අවසන්';

  @override
  String get sourceSkippedCompleted => 'මඟ හැරිය: සම්පූර්ණ කරන ලදී';

  @override
  String get sourceSkippedUnstarted => 'මඟ හැරිය: ආරම්භ කර නැත';

  @override
  String get sourceSkippedUnseen => 'මඟ හැරිය: නොදුටු කථාංග';

  @override
  String get sourceWaiting => 'මීළඟ නිකුතුව සඳහා රැඳී සිටිමින්';

  @override
  String sourceNextCheck(String when) {
    return 'මීළඟ පරීක්ෂා කරන්න $when';
  }

  @override
  String get sourceSoon => 'ඉක්මනින්';

  @override
  String sourceInHours(int count) {
    return '${count}h තුළ';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d හි';
  }

  @override
  String sourceLatest(String number) {
    return 'නවතම: $number';
  }

  @override
  String get sourceMute => 'නිහඬ කරන්න';

  @override
  String get sourceUnmute => 'නිහඬ නොකරන්න';

  @override
  String get sourceMuted => 'නිහඬ කළා';

  @override
  String get sourceUnsubscribe => 'දායක නොවන්න';

  @override
  String get sourcePickAnother => 'වෙනත් මූලාශ්රයක් තෝරන්න';

  @override
  String get sourceOpenExtensions => 'දිගු විවෘත කරන්න';

  @override
  String get sourceNoticesEmpty => 'තවමත් නිකුත් කිරීමේ දැන්වීම් නොමැත';

  @override
  String get sourceNoticesEmptyMessage =>
      'ඔබගේ දායක වූ මාතෘකා වලින් නව කථාංග සහ පරිච්ඡේද මෙහි පෙන්වයි';

  @override
  String get sourceOpenTitle => 'මාතෘකාව විවෘත කරන්න';

  @override
  String get extensionsLoading => 'දිගු පූරණය කරමින්...';

  @override
  String get updateWhatsNew => 'මොනවද අලුත්';

  @override
  String get updateLater => 'පසුව';

  @override
  String get updateSkipVersion => 'මෙම අනුවාදය මඟ හරින්න';

  @override
  String get updatePreparing => 'සූදානම් කරමින්...';

  @override
  String get updateDownloading => 'බාගත කිරීම';

  @override
  String get updateInstalling => 'ස්ථාපනය කරමින්...';

  @override
  String updateSizeOf(String done, String total) {
    return '$total හි $done';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'මුදා හරින ලදී $date';
  }

  @override
  String get updateNoAsset => 'මෙම නිකුතුවට ඔබගේ උපාංගය සඳහා බාගැනීමක් නොමැත';

  @override
  String get updateUpToDate => 'ඔබ සිටින්නේ නවතම අනුවාදයේ ය';

  @override
  String get updateIosHint =>
      'iOS ගොඩනැගීම් App Store හි නොමැත. මුදා හැරීමේ පිටුවෙන් .ipa ග්‍රහණය කර එය AltStore හෝ SideStore සමඟ පසෙකට දමන්න';

  @override
  String get updateOpenedBrowser => 'ඔබගේ බ්රවුසරය පරීක්ෂා කරන්න';

  @override
  String get updateTryAgain => 'නැවත උත්සාහ කරන්න';

  @override
  String get settingsNotifications => 'දැනුම්දීම්';

  @override
  String get settingsNotificationsDesc =>
      'ඔබගේ ලැයිස්තු, නව කථාංග සහ පරිච්ඡේද, සහ අදහස් පිළිතුරු සඳහා ඇඟවීම්';

  @override
  String get settingsAboutUpdates => 'ගැන සහ යාවත්කාලීන';

  @override
  String get settingsAboutUpdatesDesc =>
      'යෙදුම් යාවත්කාලීන, අනුවාදය, ලඝු-සටහන්, සබැඳි සහ සහාය';

  @override
  String get settingsGroupAccount => 'ඔබගේ ගිණුම';

  @override
  String get settingsGroupContent => 'අන්තර්ගතය';

  @override
  String get settingsGroupApp => 'යෙදුම';

  @override
  String get settingsAnimeDesc =>
      'වාදකය, උපසිරැසි, මඟ හැරීම, කථාංග ලැයිස්තුව සහ කථාංග විස්තර';

  @override
  String get settingsMangaDesc =>
      'පාඨක මාදිලිය, පාලන, සංදර්ශකය සහ පරිච්ඡේද ලුහුබැඳීම';

  @override
  String get settingsNovelDesc =>
      'පෙළ, පිටු හැරීම, පරිවර්තනය සහ ශබ්ද නඟා කියවන්න';

  @override
  String get settingsLocalPlay => 'දේශීය සෙල්ලම්';

  @override
  String get settingsLocalPlayDesc =>
      'ගොනු, ෆෝල්ඩර, ජාල ප්‍රවාහ සහ ටොරන්ට් වාදනය කරන්න, නැතහොත් පොතක් විවෘත කරන්න';

  @override
  String get settingsLocalPlayVideo => 'වීඩියෝ';

  @override
  String get settingsLocalPlayBooks => 'පොත්';

  @override
  String get settingsWatchSections => 'අංශ';

  @override
  String get settingsSectionLists => 'කථාංග සහ පරිච්ඡේද ලැයිස්තු';

  @override
  String get settingsSectionProgress => 'ප්‍රගති ලුහුබැඳීම';

  @override
  String get updateChannelDesc =>
      'ස්ථායී යනු පරීක්ෂා කරන ලද නිකුතුවයි. පූර්ව නිකුතුව සහ ඇල්ෆා ඉක්මනින් නව විශේෂාංග ලබා ගන්නා නමුත් කැඩී යා හැක';

  @override
  String get checkNowDesc => 'වහාම නව අනුවාදයක් සොයන්න';

  @override
  String get generalSectionBasics => 'භාෂාව සහ හැසිරීම';

  @override
  String get generalSectionSecurity => 'ආරක්ෂාව';

  @override
  String get generalSectionPrivacy => 'පෞද්ගලිකත්වය';

  @override
  String notificationsOtherService(String service) {
    return 'මෙය විවෘත කිරීමට $service වෙත මාරු වන්න';
  }

  @override
  String get secPlayerPlayback =>
      'පෙරනිමි වේගය, ස්වයංක්‍රීය වාදනය, වීඩියෝ යෝග්‍යතාවය, දිශානතිය සහ පින්තූරයේ පින්තූරය';

  @override
  String get secPlayerSkip =>
      'ස්වයංක්‍රීයව විවෘත කිරීම්, අවසන් කිරීම් සහ නැවත සටහන් කිරීම මඟ හරින්න';

  @override
  String get secPlayerControls =>
      'අභිනයන් ස්වයිප් කර අල්ලාගෙන තට්ටු කර පෙරදසුන සොයන්න';

  @override
  String get secPlayerSubtitles => 'භාෂා, පෙනුම සහ උපසිරැසි විදැහුම්කරණය';

  @override
  String get secPlayerShaders => 'සජීවිකරණ ඉහළ නැංවීම සහ ඔබේම සෙවනැලි';

  @override
  String get secPlayerEngine =>
      'විකේතකය, වීඩියෝ සහ ශ්‍රව්‍ය ප්‍රතිදානය, බෆරින්. නැවත ධාවනය ගැටළු ඇත්නම් පමණක් මේවා වෙනස් කරන්න';

  @override
  String get secPlayerMpv => 'mpv.conf, ස්ක්‍රිප්ට් සහ උසස් සුසර කිරීම';

  @override
  String get secAnimeList => 'පිරවුම් කථාංග සහ නොබැලු සිඟිති රූ';

  @override
  String get secProgress =>
      'ඔබ නැරඹූ හෝ කියවූ ප්‍රගතිය ඔබේ ලැයිස්තුවට සුරකින විට';

  @override
  String get secAnimeDetails =>
      'කථාංග මාතෘකා, සිඟිති රූ සහ සාරාංශ පැමිණෙන්නේ කොහෙන්ද';

  @override
  String get secReaderReading =>
      'කියවීමේ මාදිලිය, පිටු හැරීම, විශාලනය සහ ඊළඟ පරිච්ඡේදය';

  @override
  String get secReaderControls =>
      'කලාප, වෙළුම් යතුරු සහ ස්වයංක්‍රීය අනුචලනය තට්ටු කරන්න';

  @override
  String get secReaderDisplay => 'පසුබිම, දීප්තිය, සම්පූර්ණ තිරය සහ පිටු අංකය';

  @override
  String get secNovelText => 'අකුරු, ප්‍රමාණය, පරතරය, මායිම් සහ පිටු හැරීම';

  @override
  String get secNovelTranslate => 'ඔබ කියවන අතරතුර පරිච්ඡේද පරිවර්තනය කරන්න';

  @override
  String get secNovelSpeech => 'ශබ්ද නඟා කියවීම සඳහා හඬ, වේගය සහ තාරතාව';

  @override
  String get secNotifyAbout =>
      'ඇඟවීමක් යවන්නේ කුමන ආකාරයේ ක්‍රියාකාරකම්දැයි තෝරන්න';

  @override
  String get layoutTitle => 'පිරිසැලසුම';

  @override
  String get layoutDesc => 'තීරු වල බොත්තම් තෝරන්න, ගෙන යන්න සහ සඟවන්න';

  @override
  String get layoutHint =>
      'එය ගෙන යාමට බොත්තමක් අදින්න (පළමුවෙන්ම ස්පර්ශ තිරයක අල්ලාගෙන සිටින්න). එය කැපීමට, ගෙනයාමට හෝ සැඟවීමට එකක් තට්ටු කරන්න';

  @override
  String layoutDropInto(String zone) {
    return 'ඇතුල් වන්න: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'චලනය $name. එය තැබීමට පේස්ට් බොත්තමක් ඔබන්න';
  }

  @override
  String get layoutTitleFixed => 'මාතෘකාව';

  @override
  String get layoutZoneTopStart => 'මාතෘකාවට පෙර ඉහළ තීරුව';

  @override
  String get layoutZoneTopEnd => 'මාතෘකාවට පසුව ඉහළ තීරුව';

  @override
  String get layoutZoneBottomStart => 'පහළ තීරුව, වමේ';

  @override
  String get layoutZoneBottomEnd => 'පහළ තීරුව, හරි';

  @override
  String get layoutZoneSecondRow => 'සැඟවුණු: සාමාන්‍ය දර්ශනයේ දෙවන පේළිය';

  @override
  String get layoutZoneOverflow => 'සැඟවුණු: තවත් මෙනුවේ';

  @override
  String get layoutEmptyZone => 'මෙහි බොත්තම් දමන්න';

  @override
  String get layoutCut => 'කපනවා';

  @override
  String get layoutPaste => 'මෙහි අලවන්න';

  @override
  String get layoutHide => 'සඟවන්න';

  @override
  String layoutMoveTo(String zone) {
    return '$zone වෙත ගෙන යන්න';
  }

  @override
  String get layoutReset => 'පෙරනිමියට යළි පිහිටුවන්න';

  @override
  String get layoutMore => 'තවත්';

  @override
  String get sourceWhyAction => 'අනතුරු ඇඟවීමක් නැත්තේ ඇයි?';

  @override
  String get sourceWhyStatus => 'තත්ත්වය';

  @override
  String get sourceWhyLastCheck => 'අවසන් වරට පරීක්ෂා කරන ලදී';

  @override
  String get sourceWhyNever => 'තවම නැහැ';

  @override
  String get sourceWhyNextCheck => 'ඊළඟ චෙක්පත';

  @override
  String get sourceWhyNewest => 'මූලාශ්‍රයේ නවතම';

  @override
  String get sourceWhyProgress => 'ඔබේ ප්රගතිය';

  @override
  String get sourceWhyListStatus => 'ලැයිස්තු තත්ත්වය';

  @override
  String get sourceWhyFailures => 'පේළියක අසාර්ථක චෙක්පත්';

  @override
  String get sourceWhyLastRelease => 'අවසාන නව නිකුතුව දුටුවේය';

  @override
  String get sourceWhyVerdictNew =>
      'මූලාශ්‍රය එය ලැයිස්තුගත කර ඊළඟ චෙක්පත ක්‍රියාත්මක වූ වහාම නව නිකුතුවක් මෙහි දිස්වේ.';

  @override
  String get sourceWhyVerdictAhead =>
      'මූලාශ්‍රය දැනටමත් ඔබේ ප්‍රගතියට වඩා ඉදිරියෙන් ඇත, එබැවින් ඔබට ඒ ගැන වරක් පවසා ඇත. ඊළඟ ඇඟවීම ලබා ගැනීමට එය දක්වා කියවන්න හෝ නරඹන්න.';

  @override
  String get sourceWhyVerdictSkipped =>
      'මෙම මාතෘකාව ඉහත නීති මගින් මඟ හැර ඇත. දැනුම්දීම් සැකසීම් තුළ ඒවා වෙනස් කරන්න, නැතහොත් එය කෙසේ හෝ ධාවනය කිරීමට දැන් පරීක්ෂා කරන්න.';

  @override
  String get sourceWhyVerdictBroken =>
      'මූලාශ්‍රය වෙත ළඟා විය නොහැක හෝ ඉවත් කර ඇත, එබැවින් කිසිවක් පරීක්ෂා නොකෙරේ.';

  @override
  String get sourceWhyVerdictMuted => 'මෙම දායකත්වය නිහඬ කර ඇත.';

  @override
  String get externalPlayerTitle => 'වෙනත් තැනක ප්‍රවාහය විවෘත කරන්න';

  @override
  String get externalCopyUrl => 'ප්‍රවාහ සබැඳිය පිටපත් කරන්න';

  @override
  String get externalCopied => 'ප්‍රවාහ සබැඳිය පිටපත් කරන ලදී';

  @override
  String get externalChooser => 'වෙනත් යෙදුමකින් විවෘත කරන්න';

  @override
  String get externalVlc => 'VLC හි විවෘත කරන්න';

  @override
  String get externalMpv => 'mpv වලින් විවෘත කරන්න';

  @override
  String get externalWebVideoCast => 'වෙබ් වීඩියෝ විකාශනය';

  @override
  String get castViaAppHint => 'ප්‍රවාහය Web Video Cast යෙදුම වෙත යවන්න';

  @override
  String get externalFailed =>
      'ප්‍රවාහය විවෘත කිරීමට නොහැකි විය. ප්ලේයරය ස්ථාපනය කර තිබේද?';

  @override
  String get addonInstalled => 'ස්ථාපනය කර ඇත';

  @override
  String get loadFailedActivity => 'ක්‍රියාකාරකම් පූරණය කළ නොහැකි විය';

  @override
  String get loadFailedFavourites =>
      'ප්‍රියතමයන් පූරණය කළ නොහැකි විය. නැවත උත්සාහ කරන්න';

  @override
  String get loadFailedStats => 'සංඛ්‍යාලේඛන පූරණය කළ නොහැකි විය';

  @override
  String get loadFailedReplies => 'පිළිතුරු පූරණය කළ නොහැකි විය';

  @override
  String get cantBeUndone => 'මෙය පසුගමනය කළ නොහැක.';

  @override
  String get searchTags => 'ටැග් සොයන්න';

  @override
  String get spoilerTapToView => 'ස්පොයිලර්, බැලීමට තට්ටු කරන්න';

  @override
  String get mediaVideo => 'වීඩියෝ';

  @override
  String get notificationSomeone => 'කෙනෙක්';

  @override
  String get notificationATitle => 'මාතෘකාවක්';

  @override
  String get notificationAddedDetail => 'AniList වෙත එක් කරන ලදී';

  @override
  String get updateNoReleases => 'නිකුතු හමු නොවීය';

  @override
  String get updateInvalidResponse => 'වලංගු නොවන යාවත්කාලීන ප්‍රතිචාරයකි';

  @override
  String get commentsRateLimited => 'මිල සීමා සහිතයි';

  @override
  String get commentsConnectFailed => 'සම්බන්ධ වීමට අසමත් විය';

  @override
  String get dnsNoRecords => 'A වාර්තා කිසිවක් ආපසු ලබා දුන්නේ නැත';

  @override
  String get importTokenRejected => 'ටෝකනය ප්‍රතික්ෂේප විය';

  @override
  String get developerRoleLead => 'ප්රධාන සංවර්ධකයා';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type කළමනාකරු';
  }

  @override
  String extensionsOfType(String type) {
    return '$type දිගු';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name සැකසුම්';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name කිසිදු සැකසීමක් සපයන්නේ නැත.';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title හි $episode කථාංගය විකාශය විය';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'කථාංගය $episode විකාශය විය';
  }

  @override
  String notificationAdded(String title) {
    return '$title ඇනිලිස්ට් වෙත එක් කරන ලදී';
  }

  @override
  String updateNotFound(String message) {
    return 'යාවත්කාලීන සේවාදායකයට එම නිකුතුව සොයාගත නොහැකි විය: $message';
  }

  @override
  String get installStepJre => 'ජාවා ධාවන කාලය';

  @override
  String get installStepCore => 'ධාවන කාල හරය';

  @override
  String installStepsProgress(int current, int total) {
    return 'පියවර $total හි $current';
  }

  @override
  String get stepWaiting => 'බලාගෙන ඉන්නවා';

  @override
  String get stepChecking => 'පරීක්ෂා කරමින්...';

  @override
  String get stepUpToDate => 'යාවත්කාලීනයි';

  @override
  String stepUpToDateWith(String detail) {
    return 'යාවත්කාලීන · $detail';
  }

  @override
  String get stepWillInstall => 'ස්ථාපනය කරනු ඇත';

  @override
  String get stepWillUpdate => 'යාවත්කාලීන වනු ඇත';

  @override
  String stepWillUpdateTo(String version) {
    return '$version වෙත යාවත්කාලීන වනු ඇත';
  }

  @override
  String get stepInstalled => 'ස්ථාපනය කර ඇත';

  @override
  String get stepNotNeeded => 'මෙහි අවශ්ය නොවේ';

  @override
  String get stepFailed => 'අසාර්ථකයි';

  @override
  String stepFailedWith(String reason) {
    return 'අසාර්ථකයි: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'එය ජාවා ධාවන කාලය සහ හවුල් ධාවන කාල හරය මත ධාවනය වේ. ඒවා මුලින්ම ස්ථාපනය කර ඇති අතර ඒවා වෙනස් වුවහොත් යාවත්කාලීන වේ.';

  @override
  String get installRuntimeNewer =>
      'මෙම කළමනාකරු ක්‍රියාත්මක වන ධාවන කාලයට යාවත්කාලීනයක් ඇත.';

  @override
  String get removeJvmTitle => 'ජාවා ධාවන කාලය ඉවත් කරන්නද?';

  @override
  String get removeJvmMessage =>
      'ඩෙස්ක්ටොප් දිගු කළමණාකරුවන් එය නැවත ස්ථාපනය කරන තෙක් වැඩ කිරීම නවත්වයි. ඔබ ඊළඟ වතාවේ ස්ථාපනය කරන විට හෝ විවෘත කරන විට එය නැවත බාගත වේ.';

  @override
  String get runtimePreparing => 'ධාවන කාලය සූදානම් කරමින්...';

  @override
  String get calendarAll => 'සියල්ල';

  @override
  String get calendarAnime => 'ඇනිමෙ';

  @override
  String get calendarManga => 'මංගා';

  @override
  String get readerCloudflare => 'බ්‍රවුසරයේ විවෘත කරන්න (Cloudflare පරීක්ෂාව)';

  @override
  String get badgeBoardHint =>
      'පළමු කාඩ්පතේ කොනකට ලාංඡනයක් ඇදගෙන යන්න, නැතහොත් එය ගෙන යාමට දැනටමත් එහි ඇති ලාංඡනයක් ඇදගෙන යන්න. ලාංඡන ස්ථාන මාරු කරයි, එබැවින් කිසිවක් කිසි විටෙක අතිච්ඡාදනය නොවේ. එය සක්‍රිය හෝ අක්‍රිය කිරීමට පහත ලාංඡනයක් තට්ටු කරන්න.';

  @override
  String get statusAuto => 'ඔටෝ';

  @override
  String get unreadCounter => 'නොකියවූ කවුන්ටරය';

  @override
  String get unreadCounterDesc =>
      'පෝස්ටර්වල කථාංග හෝ පරිච්ඡේද කීයක් ඉතිරිව ඇත්දැයි පෙන්වන්න';

  @override
  String get settingsShortcuts => 'යතුරුපුවරු කෙටිමං';

  @override
  String get settingsShortcutsDesc =>
      'සෑම යතුරක්ම බලන්න, වෙනස් කරන්න සහ අක්රිය කරන්න';

  @override
  String get shortcutGroupApp => 'යෙදුම';

  @override
  String get shortcutGroupPlayer => 'වීඩියෝ වාදකය';

  @override
  String get shortcutGroupReader => 'පාඨකයා';

  @override
  String get shortcutsEnableApp => 'යෙදුම් කෙටිමං';

  @override
  String get shortcutsEnablePlayer => 'ක්‍රීඩක කෙටිමං';

  @override
  String get shortcutsEnableReader => 'පාඨක කෙටිමං';

  @override
  String get shortcutsEnableDesc =>
      'මෙම කණ්ඩායමේ සෑම යතුරක්ම සක්‍රිය හෝ අක්‍රිය කරන්න';

  @override
  String get shortcutNotSet => 'සකසා නැත';

  @override
  String get shortcutAddKey => 'යතුරක් එකතු කරන්න';

  @override
  String get shortcutResetOne => 'පෙරනිමියට යළි පිහිටුවන්න';

  @override
  String get shortcutClearKeys => 'සියලුම යතුරු ඉවත් කරන්න';

  @override
  String get shortcutResetAll => 'සියලුම කෙටිමං යළි පිහිටුවන්න';

  @override
  String get shortcutResetAllDesc => 'සෑම යතුරක්ම එහි පෙරනිමියට දමන්න';

  @override
  String get shortcutPress => 'ඔබට අවශ්‍ය යතුර හෝ සංයෝජනය ඔබන්න';

  @override
  String get shortcutPressHint =>
      'සෑම සංයෝජනයකටම අයත් විය හැක්කේ එක් ක්‍රියාවකට පමණි, එබැවින් එකක් ගැනීම එය චලනය කරයි.';

  @override
  String get shortcutSeekPercent => 'වීඩියෝවේ ලක්ෂ්‍යයකට පනින්න';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'ආපසු යන්න';

  @override
  String get shortcutAppFullscreen => 'සම්පූර්ණ තිරය ටොගල් කරන්න';

  @override
  String get shortcutAppGlass => 'වීදුරු මාදිලිය ටොගල් කරන්න';

  @override
  String get shortcutAppMaterialYou => 'ඔබ ද්‍රව්‍ය ටොගල් කරන්න';

  @override
  String get shortcutAppDark => 'අඳුරු මාදිලිය ටොගල් කරන්න';

  @override
  String get shortcutAppOled => 'OLED කළු ටොගල් කරන්න';

  @override
  String get shortcutAppSearch => 'සෙවීම විවෘත කරන්න';

  @override
  String get shortcutAppSettings => 'සැකසුම් විවෘත කරන්න';

  @override
  String get shortcutAppDownloads => 'බාගැනීම් විවෘත කරන්න';

  @override
  String get shortcutAppNotifications => 'දැනුම්දීම් විවෘත කරන්න';

  @override
  String get shortcutAppIncognito => 'අප්‍රකට ටොගල් කරන්න';

  @override
  String get shortcutAppShortcuts => 'යතුරුපුවරු කෙටිමං පෙන්වන්න';

  @override
  String get shortcutPlayerPlayPause => 'සෙල්ලම් කරන්න හෝ විරාම කරන්න';

  @override
  String get shortcutPlayerSeekForward => 'ඉදිරියට සොයන්න';

  @override
  String get shortcutPlayerSeekBack => 'ආපසු සොයන්න';

  @override
  String get shortcutPlayerSeekForwardLong => 'තත්පර 30ක් ඉදිරියට යන්න';

  @override
  String get shortcutPlayerSeekBackLong => 'තත්පර 30ක් ආපසු සොයන්න';

  @override
  String get shortcutPlayerFrameForward => 'ඊළඟ රාමුව';

  @override
  String get shortcutPlayerFrameBack => 'පෙර රාමුව';

  @override
  String get shortcutPlayerVolumeUp => 'ශබ්දය වැඩි කරන්න';

  @override
  String get shortcutPlayerVolumeDown => 'ශබ්දය අඩු කරන්න';

  @override
  String get shortcutPlayerMute => 'නිහඬ කරන්න';

  @override
  String get shortcutPlayerFullscreen => 'සම්පූර්ණ තිරය';

  @override
  String get shortcutPlayerNext => 'ඊළඟ කථාංගය';

  @override
  String get shortcutPlayerPrevious => 'පෙර කථාංගය';

  @override
  String get shortcutPlayerSkip => 'හැඳින්වීම හෝ අවසානය මඟ හරින්න';

  @override
  String get shortcutPlayerPanel => 'කථාංග ලැයිස්තුව';

  @override
  String get shortcutPlayerSpeedUp => 'වේගවත් නැවත ධාවනය';

  @override
  String get shortcutPlayerSpeedDown => 'මන්දගාමී නැවත ධාවනය';

  @override
  String get shortcutPlayerSpeedReset => 'සාමාන්ය වේගය';

  @override
  String get shortcutPlayerSubtitleToggle => 'උපසිරැසි සක්‍රිය හෝ අක්‍රියයි';

  @override
  String get shortcutPlayerSubtitleCycle => 'ඊළඟ උපසිරැසි ඛණ්ඩය';

  @override
  String get shortcutPlayerAudioCycle => 'ඊළඟ ශ්‍රව්‍ය පථය';

  @override
  String get shortcutPlayerStreamCycle => 'ඊළඟ ධාරාව';

  @override
  String get shortcutPlayerFit => 'වීඩියෝ යෝග්‍යතාවය වෙනස් කරන්න';

  @override
  String get shortcutReaderRight => 'පිටුව දකුණට';

  @override
  String get shortcutReaderLeft => 'වම් පැත්තේ පිටුව';

  @override
  String get shortcutReaderNextPage => 'ඊළඟ පිටුව';

  @override
  String get shortcutReaderPreviousPage => 'පෙර පිටුව';

  @override
  String get shortcutReaderControls => 'පාලන පෙන්වන්න හෝ සඟවන්න';

  @override
  String get shortcutReaderNextChapter => 'ඊළඟ පරිච්ඡේදය';

  @override
  String get shortcutReaderPreviousChapter => 'පෙර පරිච්ඡේදය';

  @override
  String shortcutTaken(String action) {
    return '$action වෙතින් ගන්නා ලදී';
  }

  @override
  String get incognitoTurnedOn => 'අප්‍රකට මාදිලිය ක්‍රියාත්මකයි';

  @override
  String get incognitoTurnedOff => 'අප්‍රකට මාදිලිය ක්‍රියාවිරහිතයි';

  @override
  String get onHoldAnime => 'ඇනිමෙ තබා ඇත';

  @override
  String get onHoldManga => 'මංගා හිඳලා';

  @override
  String get droppedAnime => 'ඇනිමෙ දැම්මා';

  @override
  String get droppedManga => 'මංගාව දැම්මා';

  @override
  String get generalSectionDesktop => 'ඩෙස්ක්ටොප්';

  @override
  String get closeAction => 'කවුළුව වසා ඇති විට';

  @override
  String get closeActionQuit => 'යෙදුමෙන් ඉවත් වන්න';

  @override
  String get closeActionWhenBusy =>
      'යමක් ධාවනය වන විට තැටියේ දිගටම ධාවනය කරන්න';

  @override
  String get closeActionAlways => 'සෑම විටම තැටිය තුළ ධාවනය කරන්න';

  @override
  String get closeActionNoTray =>
      'පද්ධති තැටිය මෙහි නොමැත, එබැවින් වසා දැමූ විට යෙදුම ඉවත් වේ';

  @override
  String get gamepadNav => 'Gamepad සංචලනය';

  @override
  String get gamepadNavDesc =>
      'යෙදුම වටා ගමන් කර ක්‍රීඩා පාලකයක් සමඟ ක්‍රීඩකයා පාලනය කරන්න';

  @override
  String get trayShow => 'Dartotsu පෙන්වන්න';

  @override
  String get trayQuit => 'ඉවත් වන්න';

  @override
  String get trayIdle => 'කිසිවක් ධාවනය නොවේ';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count අයිතම බාගනිමින්',
      one: '$count අයිතමය බාගනිමින්',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'ඔබගේ ලැයිස්තු සමමුහුර්ත කිරීම';

  @override
  String get trayUpdating => 'යෙදුම යාවත්කාලීන කිරීම';

  @override
  String get trayPlaying => 'කුඩා කවුළුවක සෙල්ලම් කිරීම';

  @override
  String get traySearch => 'සොයන්න';

  @override
  String get trayPauseDownloads => 'බාගැනීම් විරාම කරන්න';

  @override
  String get trayResumeDownloads => 'බාගැනීම් නැවත ආරම්භ කරන්න';

  @override
  String get playerDownloadTitle => 'ප්ලේයරය බාගත කිරීම';

  @override
  String get playerDownloadBody =>
      'Dartotsu එහි වීඩියෝ එන්ජිම වරක් ලබා ගනී. එය සූදානම් වූ වහාම නැවත ධාවනය ආරම්භ වේ.';

  @override
  String get playerDownloadStarting => 'බාගැනීම ආරම්භ කරමින්...';

  @override
  String get playerDownloadFailedTitle => 'ක්‍රීඩකයා ලබා ගැනීමට නොහැකි විය';

  @override
  String get playerDownloadFailedBody =>
      'ඔබගේ සම්බන්ධතාවය පරීක්ෂා කර නැවත උත්සාහ කරන්න. බාගැනීම නැවැත්වූ තැනින් ගනියි.';

  @override
  String get playerDownloadRetry => 'නැවත උත්සාහ කරන්න';

  @override
  String get playerDownloadCopy => 'විස්තර පිටපත් කරන්න';

  @override
  String get removePlayerTitle => 'ක්‍රීඩකයා ඉවත් කරන්නද?';

  @override
  String get removePlayerMessage =>
      'වාදකය නැවත බාගන්නා තෙක් වීඩියෝ වාදනය කළ නොහැක.';

  @override
  String get trailerLoading => 'ට්‍රේලරය පූරණය වෙමින්...';

  @override
  String get trailerFailed =>
      'බ්‍රවුසරයේ එය විවෘත කරමින් මෙහි ට්‍රේලරය වාදනය කළ නොහැක';
}
