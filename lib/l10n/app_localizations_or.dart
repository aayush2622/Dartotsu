// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'ଆନିମେ ଓ ମାଙ୍ଗା ଟ୍ରାକ୍ କରିବାକୁ\nନୂଆ ସବୁଠୁ ଭଲ ଆପ୍';

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
  String get loadMore => 'ଆହୁରି ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get login => 'ଲଗ୍ ଇନ୍';

  @override
  String get continueAsGuest => 'ଅତିଥି ଭାବରେ ଆଗକୁ ବଢ଼ନ୍ତୁ';

  @override
  String get getStarted => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get loginWithToken => 'ଟୋକେନ୍ ଦେଇ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get pasteTokenHint => 'ତୁମର ଆକ୍ସେସ୍ ଟୋକେନ୍ ପେଷ୍ଟ କରନ୍ତୁ';

  @override
  String loginTo(String service) {
    return '$serviceରେ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';
  }

  @override
  String get settings => 'ସେଟିଂସ୍';

  @override
  String get account => 'ଆକାଉଣ୍ଟ';

  @override
  String get about => 'ବିଷୟରେ';

  @override
  String get language => 'ଭାଷା';

  @override
  String get animationSpeed => 'ଆନିମେସନ୍';

  @override
  String get animationSpeedDesc =>
      'ସମଗ୍ର ଆପ୍‌ରେ ଟ୍ରାନଜିସନ୍ ଓ ପ୍ରବେଶ ଇଫେକ୍ଟର ବେଗ';

  @override
  String get animationSpeedOff => 'ବନ୍ଦ';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ଏକ୍ସଟେନସନ୍',
      one: 'ଏକ୍ସଟେନସନ୍',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'ଅଜଣା ଉତ୍ସ';

  @override
  String get install => 'ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get update => 'ଅପଡେଟ୍ କରନ୍ତୁ';

  @override
  String get uninstall => 'ଅନଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get updateInstallCancelled =>
      'ଇନଷ୍ଟଲ୍ ବାତିଲ ହେଲା। ଯଦି Android କହିଲା ଆପ୍ ପୂର୍ବରୁ ଥିବା ଆପ୍ ସହ ମେଳ ଖାଉନି, ତେବେ ସିଗ୍ନେଚର ଅଲଗା: ପ୍ରଥମେ ବର୍ତ୍ତମାନର ଭର୍ସନ୍ ଅନଇନଷ୍ଟଲ୍ କରନ୍ତୁ, ତା\'ପରେ ଅପଡେଟ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String updateInstallFailed(String error) {
    return 'ଅପଡେଟ୍ ହେଲା ନାହିଁ: $error';
  }

  @override
  String get appLock => 'ଆପ୍ ଲକ୍';

  @override
  String get appLockDesc =>
      'ଆପ୍ ଖୋଲିଲେ କିମ୍ବା କିଛି ସମୟ ପରେ ଫେରିଲେ ପାସକୋଡ୍ ମାଗିବ';

  @override
  String get appLockBiometric => 'ବାୟୋମେଟ୍ରିକ୍ସ ସହିତ ଅନଲକ୍ କରନ୍ତୁ |';

  @override
  String get appLockBiometricDesc =>
      'ପାସକୋଡ୍ ଟାଇପ୍ କରିବା ପରିବର୍ତ୍ତେ ଆପଣଙ୍କର ଫିଙ୍ଗର ପ୍ରିଣ୍ଟ କିମ୍ବା ଚେହେରା ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get appLockBiometricReason => 'Dartotsu କୁ ଅନଲକ୍ କରନ୍ତୁ |';

  @override
  String get appLockDelay => 'ନିଷ୍କ୍ରିୟ ହେଲେ ଲକ୍ କରନ୍ତୁ |';

  @override
  String get appLockDelayAlways => 'ସର୍ବଦା |';

  @override
  String get appLockDelayNever => 'କଦାପି ନୁହେଁ |';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ମିନିଟ୍ |',
      one: '1 ମିନିଟ୍ |',
    );
    return 'ପରେ $_temp0';
  }

  @override
  String get appLockUseBiometric => 'ବାୟୋମେଟ୍ରିକ୍ସ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get appLockUnlock => 'ଆପଣଙ୍କ ପାସକୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String get appLockWrong => 'ପାସକୋଡ୍ ଭୁଲ';

  @override
  String appLockWait(String seconds) {
    return 'ବହୁତ ଥର ଚେଷ୍ଟା କଲେ, ${seconds}s ଅପେକ୍ଷା କରନ୍ତୁ';
  }

  @override
  String get appLockNew => 'ଏକ ପାସକୋଡ୍ ବାଛନ୍ତୁ';

  @override
  String get appLockNewHint => '୪ ରୁ ୮ ଅଙ୍କ';

  @override
  String get appLockConfirm => 'ଆଉ ଥରେ ଦିଅନ୍ତୁ';

  @override
  String get appLockMismatch => 'ପାସକୋଡ୍ ମେଳ ଖାଉନି';

  @override
  String get appLockOn => 'ପାସକୋଡ୍ ସେଟ୍ ହେଲା';

  @override
  String get appLockRemoveTitle => 'ଲକ୍ ବନ୍ଦ କରିବାକୁ ଆପଣଙ୍କ ପାସକୋଡ୍ ଦିଅନ୍ତୁ';

  @override
  String get installFailed => 'ଇନଷ୍ଟଲ୍ ବିଫଳ ହେଲା';

  @override
  String get updateFailed => 'ଅପଡେଟ୍ ବିଫଳ ହେଲା';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଅଦ୍ୟତନଗୁଡ଼ିକ ଉପଲବ୍ଧ |',
      one: '1 ଅଦ୍ୟତନ ଉପଲବ୍ଧ |',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'ସମସ୍ତ ଅଦ୍ୟତନ କରନ୍ତୁ |';

  @override
  String extensionsUpdated(int done, int total) {
    return '$total ବିସ୍ତୃତକରଣର $done ଅଦ୍ୟତନ ହୋଇଛି |';
  }

  @override
  String get updateConflictTitle => 'ଅଦ୍ୟତନ ସଂସ୍ଥାପିତ ହୋଇନାହିଁ |';

  @override
  String updateConflictBody(String names) {
    return 'ବିଦ୍ୟମାନ ସଂସ୍କରଣ ଉପରେ $names ସଂସ୍ଥାପିତ ହୋଇପାରିଲା ନାହିଁ | ଏହାର ସାଧାରଣତ means ସ୍ଥାପିତ କପି ଭିନ୍ନ ଭାବରେ ଦସ୍ତଖତ କରାଯାଇଥିଲା | ଏହାକୁ ସଂସ୍ଥାପନ କରନ୍ତୁ ଏବଂ ନୂତନ ସଂସ୍କରଣ ସଂସ୍ଥାପନ କରନ୍ତୁ?';
  }

  @override
  String get updateConflictAction => 'ସଂସ୍ଥାପନ ଏବଂ ପୁନ in ସଂସ୍ଥାପନ କରନ୍ତୁ |';

  @override
  String get noSourceSettings => 'ଏହି ଉତ୍ସରେ କୌଣସି ସେଟିଂସ୍ ନାହିଁ';

  @override
  String get addPluginRepository => 'ପ୍ଲଗଇନ୍ ରିପୋଜିଟୋରି ଯୋଗ କରନ୍ତୁ';

  @override
  String get pluginIndexUrlHint => 'ପ୍ଲଗଇନ୍ ଇଣ୍ଡେକ୍ସ URL';

  @override
  String get addRepository => 'ରିପୋଜିଟୋରି ଯୋଗ କରନ୍ତୁ';

  @override
  String get importRepositoryFile => 'ଏକ ଫାଇଲ୍ ଆମଦାନି କରନ୍ତୁ |';

  @override
  String get pluginRepoUpdated => 'ପ୍ଲଗଇନ୍ ରିପୋଜିଟୋରି ଅପଡେଟ୍ ହେଲା';

  @override
  String get pluginRepoUpdateFailed =>
      'ପ୍ଲଗଇନ୍ ରିପୋଜିଟୋରି ରିଫ୍ରେସ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get ok => 'ଠିକ୍ ଅଛି';

  @override
  String get cancel => 'ବାତିଲ୍';

  @override
  String get yes => 'ହଁ';

  @override
  String get no => 'ନା';

  @override
  String get save => 'ସେଭ୍ କରନ୍ତୁ';

  @override
  String get reset => 'ରିସେଟ୍';

  @override
  String get clear => 'ସଫା କରନ୍ତୁ';

  @override
  String get test => 'ଟେଷ୍ଟ୍';

  @override
  String get testing => 'ଟେଷ୍ଟ୍ ଚାଲିଛି…';

  @override
  String get resolving => 'ସମାଧାନ ହେଉଛି…';

  @override
  String get none => 'କିଛି ନୁହେଁ';

  @override
  String get selectMediaService => 'ମିଡିଆ ସର୍ଭିସ୍ ବାଛନ୍ତୁ';

  @override
  String get manageServices => 'ମିଡିଆ ସେବା |';

  @override
  String get manageServicesDesc =>
      'ସେବାଗୁଡିକୁ ରେକର୍ଡ କରନ୍ତୁ ଏବଂ ପିକେରେ କେଉଁଗୁଡିକ ଦେଖାଏ ତାହା ବାଛନ୍ତୁ |';

  @override
  String get manageServicesHint =>
      'ରେକର୍ଡ କରିବାକୁ ଡ୍ରାଗ୍ କରନ୍ତୁ, ଆପଣ ବ୍ୟବହାର କରୁନଥିବାଗୁଡିକୁ ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String get pickColor => 'ଏକ ରଙ୍ଗ ବାଛନ୍ତୁ';

  @override
  String get colorPickerCustom => 'କଷ୍ଟମ୍';

  @override
  String get colorPickerTransparent => 'ସ୍ୱଚ୍ଛ';

  @override
  String get ltr => 'ବାମରୁ ଡାହାଣକୁ';

  @override
  String get searchSettings => 'ସେଟିଂସ୍ ଖୋଜନ୍ତୁ';

  @override
  String nothingMatches(String query) {
    return '\"$query\" ସହ କିଛି ମେଳ ଖାଉନାହିଁ';
  }

  @override
  String searchCategory(String category) {
    return '$category ଖୋଜନ୍ତୁ';
  }

  @override
  String get settingsAppearance => 'ଦେଖଣା';

  @override
  String get settingsAppearanceDesc => 'ଥିମ୍, ରଙ୍ଗ, ଗ୍ଲାସ୍ ମୋଡ୍';

  @override
  String get settingsGeneral => 'ସାଧାରଣ';

  @override
  String get settingsGeneralDesc => 'ଭାଷା ଓ ବ୍ୟବହାର';

  @override
  String get settingsNetwork => 'ନେଟୱାର୍କ';

  @override
  String get settingsNetworkDesc =>
      'ବ୍ୟବହାରକାରୀ ଏଜେଣ୍ଟ, ପ୍ରମାଣପତ୍ର, DNS ଏବଂ ପ୍ରକ୍ସି |';

  @override
  String get settingsAccountDesc => 'ଟ୍ରାକିଂ ସର୍ଭିସ୍ ଓ ସାଇନ୍ ଇନ୍';

  @override
  String get settingsUpdates => 'ଅପଡେଟ୍';

  @override
  String get amoledBlack => 'AMOLED କଳା';

  @override
  String get amoledBlackDesc => 'ଡାର୍କ ମୋଡ୍‌ରେ ଶୁଦ୍ଧ କଳା ପୃଷ୍ଠ';

  @override
  String get glassMode => 'ଗ୍ଲାସ୍ ମୋଡ୍';

  @override
  String get glassModeDesc => 'ତୁମ ଲାଇବ୍ରେରୀର ଆର୍ଟ ଉପରେ ଝାପ୍‌ସା ପୃଷ୍ଠ';

  @override
  String get shelfFrame => 'ବିଭାଗ ଚାରିପାଖେ ଫ୍ରେମ୍';

  @override
  String get shelfFrameDesc =>
      'ପ୍ରତ୍ୟେକ ସେଲ୍ଫ ପଛରେ ଏକ କାର୍ଡ ଦେଖାନ୍ତୁ, ନଚେତ୍ ଧାଡ଼ିକୁ ସିଧାସଳଖ ପୃଷ୍ଠାରେ ରହିବାକୁ ଦିଅନ୍ତୁ';

  @override
  String get settingsExtensionsDesc =>
      'ଉତ୍ସ ମ୍ୟାନେଜର୍, ରିପୋଜିଟୋରି ଓ ଏକ୍ସଟେନସନ୍ ବିକଳ୍ପ';

  @override
  String get settingsAddons => 'ଆଡ୍-ଅନ୍';

  @override
  String get customPath => 'କଷ୍ଟମ୍ ଷ୍ଟୋରେଜ୍ ପାଥ୍';

  @override
  String get stories => 'କାହାଣୀ';

  @override
  String get watchOrder => 'କ୍ରମ ଦେଖନ୍ତୁ |';

  @override
  String get watchOrderOpenSite => 'Chiaki.site ରେ ଖୋଲନ୍ତୁ |';

  @override
  String get watchOrderUnavailable =>
      'ଏହି ଆଖ୍ୟା ପାଇଁ କ watch ଣସି ଘଣ୍ଟା ଅର୍ଡର ମିଳିଲା ନାହିଁ |';

  @override
  String get watchOrderOpenFailed => 'ସେହି ଆଖ୍ୟା ଖୋଲିପାରିଲା ନାହିଁ |';

  @override
  String get watchOrderCurrent => 'ଆପଣ ଏଠାରେ ଅଛନ୍ତି';

  @override
  String get watchOrderCredit => 'Chiaki.site ଦ୍ୱାରା ଅର୍ଡର ଦେଖନ୍ତୁ |';

  @override
  String get customPathDesc =>
      'ଆପ୍ ଡାଟା କେଉଁଠି ରହିବ। ରିସେଟ୍ କରିବାକୁ ଲମ୍ବା ଦବାନ୍ତୁ';

  @override
  String get selectDirectory => 'ଡାଇରେକ୍ଟୋରୀ ବାଛନ୍ତୁ';

  @override
  String get differentCacheManager => 'ବିକଳ୍ପ ଇମେଜ୍ କ୍ୟାଶ୍';

  @override
  String get differentCacheManagerDesc =>
      'ଇମେଜ୍ ପାଇଁ ଅଲଗା କ୍ୟାଶ୍ ମ୍ୟାନେଜର୍ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get settingsSync => 'ସିଙ୍କ୍ ସେଟିଙ୍ଗ୍ |';

  @override
  String get settingsSyncDesc =>
      'ପ୍ରତ୍ୟେକ ଡିଭାଇସରେ ଆପଣଙ୍କର ସେଟିଂସମୂହ ସମାନ ରଖନ୍ତୁ | ସେଗୁଡିକ ତୁମର GitHub ଆକାଉଣ୍ଟରେ ଏକ ବ୍ୟକ୍ତିଗତ ଗିଷ୍ଟରେ ଗଚ୍ଛିତ |';

  @override
  String get settingsSyncSwitch => 'ପରିବର୍ତ୍ତନ ଉପରେ ସିଙ୍କ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'GitHub ସହିତ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncSignInDesc =>
      'ସେଟିଂସମୂହ ଆପଣଙ୍କ ଆକାଉଣ୍ଟରେ ଏକ ବ୍ୟକ୍ତିଗତ ତଥ୍ୟରେ ଗଚ୍ଛିତ ଅଛି |';

  @override
  String get settingsSyncToken => 'ଏକ ବ୍ୟକ୍ତିଗତ ପ୍ରବେଶ ଟୋକନ୍ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get settingsSyncTokenDesc =>
      'କେବଳ ଜିଷ୍ଟ ଅନୁମତି ସହିତ github.com/settings/tokens ରେ ଗୋଟିଏ ସୃଷ୍ଟି କରନ୍ତୁ |';

  @override
  String get settingsSyncTokenField => 'ଟୋକେନ୍ |';

  @override
  String settingsSyncSignedIn(Object user) {
    return '$user ଭାବରେ ସାଇନ୍ ଇନ୍ |';
  }

  @override
  String get settingsSyncSignOut => 'ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ |';

  @override
  String settingsSyncCode(Object code) {
    return 'GitHub ରେ $code ପ୍ରବେଶ କରନ୍ତୁ |';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel।';

  @override
  String get settingsSyncSignInFailed =>
      'GitHub କୁ ସାଇନ୍ ଇନ୍ କରିପାରିଲା ନାହିଁ |';

  @override
  String get dcPreview => 'ପୂର୍ବାବଲୋକନ';

  @override
  String get dcSampleWatching => 'ଦେଖୁଛି |';

  @override
  String get dcSampleReading => 'ପ Reading ିବା |';

  @override
  String get dcSampleBrowsing => 'ବ୍ରାଉଜିଂ';

  @override
  String get dcSampleLive => 'ବର୍ତ୍ତମାନ';

  @override
  String get dcLiveNothing =>
      'Nothing is showing right now. Open a title, start an episode or a chapter and it appears here।';

  @override
  String get dcMemberList => 'ସଦସ୍ୟ ତାଲିକାରେ |';

  @override
  String get dcAccount => 'ଖାତା';

  @override
  String get dcSignIn => 'Discord ସହିତ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ |';

  @override
  String get dcSignOut => 'ସାଇନ୍ ଆଉଟ୍ କରନ୍ତୁ |';

  @override
  String get dcDesktopHint =>
      'Without connecting, Discord shows “Watching Dartotsu” through the desktop app. Connect Discord to name the activity after your title, including on mobile।';

  @override
  String get dcMobileHint =>
      'Connect Discord to show what you are watching or reading. It uses Discord’s authorize page, not your account token।';

  @override
  String get dcConnect => 'ଅସନ୍ତୋଷକୁ ସଂଯୋଗ କରନ୍ତୁ |';

  @override
  String get dcConnectDesc =>
      'Opens Discord’s authorize page and adds Dartotsu under Authorized Apps. Discord asks to update your presence. Only a refresh token is saved, not your account token।';

  @override
  String get dcConnectFailed => 'Discord କୁ ସଂଯୋଗ କରିପାରିଲା ନାହିଁ |';

  @override
  String get dcConnectedSnack => 'ଅସନ୍ତୋଷ ସଂଯୁକ୍ତ |';

  @override
  String get dcDisconnect => 'ବିଚ୍ଛିନ୍ନ କରନ୍ତୁ |';

  @override
  String get dcDisconnectedSnack => 'ଅସନ୍ତୋଷ ବିଚ୍ଛିନ୍ନ ହୋଇଛି |';

  @override
  String get dcUseToken => 'ଏହା ବଦଳରେ ଏକ ଟୋକେନ୍ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get dcRouteDesktop => 'ଡିସକର୍ଡ ଡେସ୍କଟପ୍ ଆପ୍ ମାଧ୍ୟମରେ |';

  @override
  String get dcRouteHeadless => 'ଆପଣଙ୍କ ଖାତା ମାଧ୍ୟମରେ |';

  @override
  String get dcRouteGateway => 'ଆପଣଙ୍କ ଖାତା ମାଧ୍ୟମରେ, ଲାଇଭ୍ କରନ୍ତୁ |';

  @override
  String get dcRouteLinked => 'ସଂଯୋଜିତ ଆପ୍ |';

  @override
  String get dcRouteNone => 'ସଂଯୁକ୍ତ ନୁହେଁ |';

  @override
  String get dcStatusNeedsToken =>
      'Needs a Discord token. Connecting the app does not set your online status।';

  @override
  String get dcAccountOnly => 'ଏକ ସାଇନ୍ ଇନ୍ ଆକାଉଣ୍ଟ୍ ଆବଶ୍ୟକ କରେ |';

  @override
  String get dcStatusSection => 'ସ୍ଥିତି';

  @override
  String get dcControlStatus => 'ମୋ ସ୍ଥିତିକୁ ନିୟନ୍ତ୍ରଣ କରନ୍ତୁ |';

  @override
  String get dcControlStatusDesc =>
      'Keeps a live connection to Discord while Rich Presence is on, so Dartotsu can set your status।';

  @override
  String get dcStatusOnline => 'ଅନଲାଇନ୍ |';

  @override
  String get dcStatusIdle => 'ନିଷ୍କ୍ରିୟ';

  @override
  String get dcStatusDnd => 'ବ୍ୟସ୍ତ ହୁଅନ୍ତୁ ନାହିଁ |';

  @override
  String get dcStatusInvisible => 'ଅଦୃଶ୍ୟ |';

  @override
  String get dcCustomStatus => 'କଷ୍ଟମ୍ ସ୍ଥିତି |';

  @override
  String get dcCustomStatusHint => 'ତୁମେ କଣ କରୁଛ?';

  @override
  String get dcActivitySection => 'କାର୍ଯ୍ୟକଳାପ';

  @override
  String get dcShowWatching => 'ଦେଖିବା ସମୟରେ ଦେଖାନ୍ତୁ |';

  @override
  String get dcShowReading => 'ପ reading ିବା ସମୟରେ ଦେଖାନ୍ତୁ |';

  @override
  String get dcListening => 'ଶୁଣିବା |';

  @override
  String get dcCompeting => 'ପ୍ରତିଯୋଗୀତା |';

  @override
  String get dcActivityName => 'କାର୍ଯ୍ୟକଳାପ ନାମ';

  @override
  String get dcNameApp => 'Dartotsu';

  @override
  String get dcNameTitle => 'ଆଖ୍ୟା';

  @override
  String get dcNameCustom => 'କଷ୍ଟମ୍';

  @override
  String get dcCustomNameHint => '“ଦେଖିବା” ପରେ ଦେଖାଯାଇଥିବା ନାମ |';

  @override
  String get dcStatusText => 'ସ୍ଥିତି ପାଠ';

  @override
  String get dcStatusTextDesc => 'ସଦସ୍ୟ ତାଲିକା ଆପଣଙ୍କ ନାମ ପାଖରେ ଯାହା ଦେଖାଏ |';

  @override
  String get dcDisplayName => 'ନାମ';

  @override
  String get dcDisplayState => 'ରାଜ୍ୟ';

  @override
  String get dcDisplayDetails => 'ବିବରଣୀ';

  @override
  String get dcTextSection => 'ପାଠ';

  @override
  String get dcDetails => 'ଶୀର୍ଷ ରେଖା |';

  @override
  String get dcState => 'ନିମ୍ନ ରେଖା |';

  @override
  String get dcTemplateHint => 'ଖାଲି ଡିଫଲ୍ଟ ବ୍ୟବହାର କରେ |';

  @override
  String get dcVariables => 'ଏକ ଭାଲ୍ୟୁ ସନ୍ନିବେଶ କରିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get dcImagesSection => 'ପ୍ରତିଛବିଗୁଡିକ';

  @override
  String get dcLargeImage => 'ବଡ଼ ପ୍ରତିଛବି |';

  @override
  String get dcLargeAuto => 'ଅଟୋ |';

  @override
  String get dcLargeCover => 'ଆଚ୍ଛାଦନ କରନ୍ତୁ |';

  @override
  String get dcLargeLogo => 'ଲୋଗୋ';

  @override
  String get dcSmallImage => 'ଛୋଟ ପ୍ରତିଛବି |';

  @override
  String get dcSmallAuto => 'ଲୋଗୋ';

  @override
  String get dcSmallNone => 'କିଛି ନୁହେଁ |';

  @override
  String get dcTimerStyle => 'ଟାଇମର୍ ଶ style ଳୀ';

  @override
  String get dcTimerAuto => 'ଅଟୋ |';

  @override
  String get dcTimerElapsed => 'ବିତିଗଲା';

  @override
  String get dcTimerRemaining => 'ଅବଶିଷ୍ଟ |';

  @override
  String get dcButtonsSection => 'ବଟନ୍';

  @override
  String get dcButtonMedia => 'ଆଖ୍ୟା ସହିତ ଲିଙ୍କ୍ |';

  @override
  String get dcButtonApp => 'Dartotsu ସହିତ ଲିଙ୍କ୍ |';

  @override
  String get dcButtonCustom => 'କଷ୍ଟମ୍ ବଟନ୍ |';

  @override
  String get dcButtonLabel => 'ଲେବଲ୍ |';

  @override
  String get dcButtonUrl => 'ଲିଙ୍କ୍ |';

  @override
  String get dcPrivacySection => 'ଗୋପନୀୟତା';

  @override
  String get dcPrivateText => 'ବ୍ୟକ୍ତିଗତ ପାଠ';

  @override
  String get dcPrivateHint => 'କିଛି ବ୍ୟକ୍ତିଗତ |';

  @override
  String get dcTokenWarning =>
      'Signing in uses your account token. Discord’s rules discourage this, so use it at your own risk।';

  @override
  String get dcConnected => 'ସଂଯୋଗ ହୋଇଛି |';

  @override
  String get dcConnection => 'ସଂଯୋଗ';

  @override
  String get dcMethodDesktop => 'ଡିସ୍କର୍ଡ ଡେସ୍କଟପ୍ ଆପ୍ |';

  @override
  String get dcMethodDesktopDesc =>
      'Used automatically when nothing else is connected. Discord has to be open on this computer।';

  @override
  String get dcMethodToken => 'ଖାତା ଟୋକନ୍ |';

  @override
  String get dcInUse => 'ବ୍ୟବହାରରେ |';

  @override
  String get dcRecommended => 'ପରାମର୍ଶିତ';

  @override
  String get dcConnecting => 'ସଂଯୋଗ…';

  @override
  String get dcDisconnected => 'ସଂଯୁକ୍ତ ନୁହେଁ |';

  @override
  String dcSignedInAs(String name) {
    return '$name ଭାବରେ ସାଇନ୍ ଇନ୍ |';
  }

  @override
  String get settingsSyncOn => 'ଅନ୍';

  @override
  String get settingsSyncCustom => 'କଷ୍ଟମ୍';

  @override
  String get settingsSyncChangedHeader => 'ପରିବର୍ତ୍ତିତ ସେଟିଂସମୂହ |';

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
  String get settingsSyncPartSubtitles => 'ସବ୍ଟାଇଟ୍ ଆକାର ଏବଂ ରଙ୍ଗ |';

  @override
  String get settingsSyncPartSubtitlesDesc => 'ଆକାର, ଓଜନ, ରଙ୍ଗ ଏବଂ ସ୍ଥିତି |';

  @override
  String get settingsSyncPartPictureColors => 'ଚିତ୍ର ରଙ୍ଗ |';

  @override
  String get settingsSyncPartPictureColorsDesc =>
      'ଉଜ୍ଜ୍ୱଳତା, ବିପରୀତ, ସାଚୁଚରେସନ୍, ଗାମା, ରଙ୍ଗ ଏବଂ HDR |';

  @override
  String get settingsSyncPartPalette => 'ଥିମ୍ ରଙ୍ଗ |';

  @override
  String get settingsSyncPartPaletteDesc => 'ଥିମ୍, ଉଚ୍ଚାରଣ ରଙ୍ଗ ଏବଂ OLED କଳା |';

  @override
  String get settingsSyncCatOther => 'ଦେଖନ୍ତୁ, ପ read ନ୍ତୁ ଏବଂ ସେବାଗୁଡିକ |';

  @override
  String get settingsSyncTitles => 'ପ୍ରଗତି ଏବଂ ଆଖ୍ୟାଗୁଡିକ ଦେଖନ୍ତୁ |';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records ଶିରୋନାମା ଏବଂ $resume ସର୍ଭରରେ ପୁନ res ପ୍ରାରମ୍ଭ ଏଣ୍ଟ୍ରିଗୁଡିକ |';
  }

  @override
  String get settingsSyncTitlesNone => 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ଅପଲୋଡ୍ ହୋଇନାହିଁ |';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, your local lists, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds।';

  @override
  String get settingsSyncConnect => 'ସଂଯୁକ୍ତ ନୁହେଁ |';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device।';

  @override
  String get settingsSyncFailedTitle => 'ସିଙ୍କ ବିଫଳ ହେଲା |';

  @override
  String get settingsSyncPaused => 'ବିରତ |';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off।';

  @override
  String get settingsSyncUpToDate => 'ଅଦ୍ୟାବଧି';

  @override
  String get settingsSyncRetry => 'ପୁନ ry ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get settingsSyncAccount => 'GitHub ଖାତା |';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account।';

  @override
  String get settingsSyncWaiting => 'GitHub ରେ ଅନୁମୋଦନ କରିବାକୁ ଅପେକ୍ଷା କରିଛି |';

  @override
  String get settingsSyncCopyCode => 'ଏହାକୁ କପି କରିବାକୁ କୋଡ୍ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncCancel => 'ବାତିଲ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncStatSettings => 'ସେଟିଂସମୂହ';

  @override
  String get settingsSyncStatTitles => 'ଆଖ୍ୟାଗୁଡିକ |';

  @override
  String get settingsSyncStatShelf => 'ପୁନ ume କାର୍ଯ୍ୟ ଆରମ୍ଭ କରନ୍ତୁ |';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return '$device ରୁ $time ଅପଲୋଡ୍ ହୋଇଛି |';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ପରିବର୍ତ୍ତିତ |',
      one: '1 ବଦଳିଲା |',
      zero: 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ପରିବର୍ତ୍ତନ ହୋଇନାହିଁ |',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'ଖାତା ଏବଂ ପାସୱାର୍ଡ |';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them।';

  @override
  String get settingsSyncSecretsOn => 'ଖାତାଗୁଡ଼ିକ ସିଙ୍କ୍ ଏବଂ ଏନକ୍ରିପ୍ଟ ହୋଇଛି |';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others।';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts।';

  @override
  String get settingsSyncPassphraseSet => 'ଏକ ପ୍ରବେଶ ସଂକେତ ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncPassphraseEnter => 'ଆପଣଙ୍କର ପାସଫ୍ରେଜ୍ ପ୍ରବେଶ କରନ୍ତୁ |';

  @override
  String get settingsSyncPassphraseField => 'ପ୍ରବେଶ ସଂକେତ';

  @override
  String get settingsSyncPassphraseConfirm => 'ପାସଫ୍ରେଜ୍ ପୁନରାବୃତ୍ତି କରନ୍ତୁ |';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again।';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones।';

  @override
  String get settingsSyncPassphraseWrong => 'ଭୁଲ ପାସଫ୍ରେଜ୍ |';

  @override
  String get settingsSyncPassphraseMismatch =>
      'ପ୍ରବେଶ ସଂକେତଗୁଡ଼ିକ ମେଳ ଖାଉ ନାହିଁ |';

  @override
  String get settingsSyncPassphraseShort =>
      'ଅତିକମରେ 6 ଟି ଅକ୍ଷର ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get settingsSyncSecretsStop => 'ଖାତା ସିଙ୍କ୍ କରିବା ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String get settingsSyncSecretsDelete => 'GitHub ରୁ ଡିଲିଟ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase।';

  @override
  String get settingsSyncWhat => 'କ’ଣ ସିଙ୍କ୍ କରିବେ |';

  @override
  String get settingsSyncServer => 'ସର୍ଭରରେ |';

  @override
  String get settingsSyncServerEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ଅପଲୋଡ୍ ହୋଇନାହିଁ |';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count ସେଟିଂସମୂହ, $device ରୁ $time ଅପଲୋଡ୍ |';
  }

  @override
  String get settingsSyncThisDevice => 'ଏହି ଉପକରଣ';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ସର୍ଭରରେ $count ସେଟିଙ୍ଗ୍ |',
      one: 'ସର୍ଭରରେ 1 ସେଟିଂ',
      zero: 'ସର୍ଭରରେ କିଛି ନାହିଁ |',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'ବର୍ତ୍ତମାନ ସିଙ୍କ୍ କରନ୍ତୁ |';

  @override
  String get settingsSyncRunning => 'ସିଙ୍କ୍…';

  @override
  String get settingsSyncNever => 'ଏପର୍ଯ୍ୟନ୍ତ ସିଙ୍କ୍ ହୋଇନାହିଁ |';

  @override
  String settingsSyncLast(Object time) {
    return 'ଶେଷ ସିଙ୍କ୍ ହୋଇଥିବା $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'ସିଙ୍କ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device।';

  @override
  String get backupAndRestore => 'ବ୍ୟାକଅପ୍ ଓ ରିଷ୍ଟୋର୍';

  @override
  String get backupAndRestoreDesc => 'ତୁମ ପସନ୍ଦ ସେଭ୍ କିମ୍ବା ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get backup => 'ବ୍ୟାକଅପ୍';

  @override
  String get restore => 'ରିଷ୍ଟୋର୍';

  @override
  String get loadExtensionsIcon => 'ଏକ୍ସଟେନସନ୍ ଆଇକନ୍ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get autoUpdateRuntimes =>
      'ସ୍ୱୟଂଚାଳିତ ଭାବରେ ଏକ୍ସଟେନ୍ସନ୍ ରନ୍ ଟାଇମ୍ ଅପଡେଟ୍ କରନ୍ତୁ |';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead।';

  @override
  String get loadExtensionsIconDesc =>
      'ଏକ୍ସଟେନସନ୍ ତାଲିକାରେ ଉତ୍ସ ଆଇକନ୍ ଦେଖାନ୍ତୁ';

  @override
  String get sectionStorage => 'ଷ୍ଟୋରେଜ୍';

  @override
  String get sectionManagers => 'ମ୍ୟାନେଜର୍';

  @override
  String get sectionOptions => 'ବିକଳ୍ପ';

  @override
  String get backupTabBackup => 'ବ୍ୟାକଅପ୍ ନିଅନ୍ତୁ';

  @override
  String get backupTabRestore => 'ରିଷ୍ଟୋର୍ କରନ୍ତୁ';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categoriesଟି ବର୍ଗରେ $keysଟି ସେଟିଂସ୍';
  }

  @override
  String backupLastBackup(Object time) {
    return 'ଶେଷ ବ୍ୟାକଅପ୍ $time';
  }

  @override
  String get backupNever => 'ଏପର୍ଯ୍ୟନ୍ତ ବ୍ୟାକଅପ୍ ନାହିଁ';

  @override
  String get backupSelectAll => 'ସବୁ ବାଛନ୍ତୁ';

  @override
  String get backupClearAll => 'ସଫା କରନ୍ତୁ';

  @override
  String backupKeys(Object count) {
    return '$countଟି ସେଟିଂସ୍';
  }

  @override
  String get backupPasswordRequired => 'ପାସୱାର୍ଡ (ଖାତା ତଥ୍ୟ ପାଇଁ ଆବଶ୍ୟକ)';

  @override
  String get backupProtectedNeedsPassword =>
      'ଖାତା ତଥ୍ୟର ବ୍ୟାକଅପ୍ କରିବାକୁ ଏକ ପାସୱାର୍ଡ ସେଟ୍ କରନ୍ତୁ, କିମ୍ବା ଏହାକୁ ଅନଟିକ କରନ୍ତୁ |';

  @override
  String get backupProtectedSkipped =>
      'ଏହି ବ୍ୟାକଅପ୍ ର କ password ଣସି ପାସୱାର୍ଡ ନାହିଁ, ତେଣୁ ଏହାର ଆକାଉଣ୍ଟ୍ ଡାଟା ଏଡ଼ାଇ ଦିଆଗଲା |';

  @override
  String get backupPassword => 'ପାସୱାର୍ଡ (ବିକଳ୍ପ)';

  @override
  String get backupPasswordHint => 'ଡିଫଲ୍ଟ ବ୍ୟବହାର କରିବାକୁ ଖାଲି ଛାଡ଼ନ୍ତୁ';

  @override
  String get backupSensitive => 'ଲଗ୍ ଇନ୍ ଟୋକେନ୍ ଅଛି। ଏହି ଫାଇଲ୍ ଗୋପନ ରଖନ୍ତୁ';

  @override
  String get backupCreate => 'ବ୍ୟାକଅପ୍ ତିଆରି କରନ୍ତୁ';

  @override
  String backupSaved(Object name) {
    return 'ବ୍ୟାକଅପ୍ $name ରେ ସେଭ୍ ହେଲା';
  }

  @override
  String backupFailed(Object error) {
    return 'ବ୍ୟାକଅପ୍ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get backupPickFile => 'ଏକ ବ୍ୟାକଅପ୍ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get backupPickFileDesc =>
      'Dartotsu ଦ୍ୱାରା ତିଆରି ଏକ .json ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get backupChooseAnother => 'ଅନ୍ୟ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get backupCreatedAt => 'ତିଆରି ହୋଇଛି';

  @override
  String get backupAppVersion => 'ଆପ୍ ସଂସ୍କରଣ';

  @override
  String get backupDevice => 'ଡିଭାଇସ୍';

  @override
  String get backupAccounts => 'ଆକାଉଣ୍ଟ';

  @override
  String get backupSize => 'ଆକାର';

  @override
  String get backupEncrypted => 'ପାସୱାର୍ଡ ସୁରକ୍ଷିତ';

  @override
  String get backupUnlock => 'ଅନଲକ୍ କରନ୍ତୁ';

  @override
  String get backupWrongPassword =>
      'ଏହି ଫାଇଲ୍ ପଢ଼ିପାରିଲୁ ନାହିଁ। ପାସୱାର୍ଡ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get backupRestoreSelected => 'ବଛାଯାଇଥିବା ରିଷ୍ଟୋର୍ କରନ୍ତୁ';

  @override
  String backupRestoreConfirm(Object count) {
    return '$countଟି ସେଟିଂସ୍ ରିଷ୍ଟୋର୍ କରିବେ? ଏହି ବର୍ଗଗୁଡ଼ିକର ବିଦ୍ୟମାନ ମୂଲ୍ୟ ବଦଳିଯିବ।';
  }

  @override
  String get backupRestored =>
      'ରିଷ୍ଟୋର୍ ହେଲା। ସବୁକିଛି ଲାଗୁ କରିବାକୁ ଆପ୍ ପୁଣି ଚଲାନ୍ତୁ';

  @override
  String backupRestoreFailed(Object error) {
    return 'ରିଷ୍ଟୋର୍ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get backupSelectOne => 'ଅତିକମରେ ଗୋଟିଏ ବର୍ଗ ବାଛନ୍ତୁ';

  @override
  String get backupCatTheme => 'ଦେଖଣା';

  @override
  String get backupCatThemeDesc => 'ଥିମ୍, ରଙ୍ଗ, ଗ୍ଲାସ୍, ଫଣ୍ଟ ଓ କାର୍ଡ ଷ୍ଟାଇଲ୍';

  @override
  String get backupCatCommon => 'ସାଧାରଣ';

  @override
  String get backupCatCommonDesc =>
      'ଭାଷା, ଷ୍ଟୋରେଜ୍, ନେଟୱାର୍କ ଓ ଏକ୍ସଟେନସନ୍ ବିକଳ୍ପ';

  @override
  String get backupCatPlayer => 'ପ୍ଲେୟାର୍';

  @override
  String get backupCatPlayerDesc => 'ପ୍ଲେୟାର୍ ପସନ୍ଦ';

  @override
  String get backupCatReader => 'ରିଡର୍';

  @override
  String get backupCatReaderDesc => 'ରିଡର୍ ପସନ୍ଦ';

  @override
  String get backupCatProtected => 'ଆକାଉଣ୍ଟ';

  @override
  String get backupCatProtectedDesc => 'ଲଗ୍ ଇନ୍ ଟୋକେନ୍ ଓ ସାଇନ୍ ଇନ୍ ଡାଟା';

  @override
  String get backupCatOther => 'ସର୍ଭିସ୍ ଓ ଫିଡ୍';

  @override
  String get backupCatOtherDesc => 'ଫିଡ୍ ଲେଆଉଟ୍, ତାଲିକା ଓ ସର୍ଭିସ୍ ବିକଳ୍ପ';

  @override
  String get logFile => 'ଲଗ୍ ଫାଇଲ୍';

  @override
  String get logFileDesc =>
      'ଆପ୍ ଲଗ୍ ସେୟାର୍ କରନ୍ତୁ, ବା Linuxରେ ଏହାର ପାଥ୍ କପି କରନ୍ତୁ';

  @override
  String get logDelete => 'ଲଗ୍ ଫାଇଲ୍ ଡିଲିଟ୍ କରନ୍ତୁ |';

  @override
  String get logDeleteDesc =>
      'ସ୍ଥାନ ଖାଲି କରିବାକୁ ସେଭ୍ ହୋଇଥିବା ଆପ୍ ଲଗ୍ ସଫା କରନ୍ତୁ |';

  @override
  String logDeleted(String size) {
    return 'ଲଗଗୁଡ଼ିକର $size ବିଲୋପ ହେଲା |';
  }

  @override
  String get missingSequel => 'ନିଖୋଜ ସିକ୍ୱେଲ |';

  @override
  String get rising => 'ଉଠିବା';

  @override
  String get stacks => 'ଷ୍ଟାକସ୍ |';

  @override
  String get stacksAll => 'ସମସ୍ତ';

  @override
  String get stacksFeatured => 'ବ Feat ଶିଷ୍ଟ୍ୟ';

  @override
  String get stacksMine => 'ଆପଣଙ୍କର';

  @override
  String get stacksSaved => 'ସଞ୍ଚୟ ହୋଇଛି |';

  @override
  String get stacksFollowing => 'ନିମ୍ନଲିଖିତ';

  @override
  String get stacksEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ ଏଠାରେ କ acks ଣସି ଷ୍ଟାକ ନାହିଁ |';

  @override
  String get stacksSignIn =>
      'ଆପଣଙ୍କର ଷ୍ଟାକ୍ ଦେଖିବାକୁ MangaBaka କୁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ |';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it।';

  @override
  String get stacksSignInAgain => 'ପୁନର୍ବାର ସାଇନ୍ ଇନ୍ କରନ୍ତୁ |';

  @override
  String get stacksCouldntLoad => 'ଷ୍ଟାକଗୁଡିକ ଲୋଡ୍ କରିପାରିଲା ନାହିଁ |';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count କ୍ରମ |',
      one: '1 ସିରିଜ୍ |',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସଞ୍ଚୟ କରେ |',
      one: '1 ସେଭ୍ କରନ୍ତୁ |',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return '$name ଦ୍ୱାରା';
  }

  @override
  String get stackSpoilers => 'ଲୁଟେରା |';

  @override
  String get stackEmptyEntries => 'ଏହି ଷ୍ଟାକଟି ଖାଲି ଅଛି |';

  @override
  String get stackSave => 'ଷ୍ଟାକ ସେଭ୍ କରନ୍ତୁ |';

  @override
  String get stackUnsave => 'ସଞ୍ଚୟରୁ ଅପସାରଣ କରନ୍ତୁ |';

  @override
  String get stackSavedToast => 'ତୁମର ଷ୍ଟାକରେ ସେଭ୍ ହୋଇଛି |';

  @override
  String get stackRemovedToast => 'ତୁମର ସଞ୍ଚିତ ଷ୍ଟାକରୁ ଅପସାରିତ |';

  @override
  String userStacks(String name) {
    return '$name ଦ୍ୱାରା ଷ୍ଟକ୍ |';
  }

  @override
  String get newsTitle => 'ସମ୍ବାଦ';

  @override
  String get newsEmpty => 'ବର୍ତ୍ତମାନ କ No ଣସି ଖବର ନାହିଁ |';

  @override
  String get newsCouldntLoad => 'ସମ୍ବାଦ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ |';

  @override
  String get logFileCopied => 'ଲଗ୍ ପାଥ୍ କପି ହେଲା';

  @override
  String get donateSheetTitle => 'Dartotsu ଭଲ ଲାଗୁଛି?';

  @override
  String get donateSheetMessage =>
      'Dartotsu କେବଳ ଜଣେ ବ୍ୟକ୍ତି ତିଆରି କରନ୍ତି ଓ ସମ୍ଭାଳନ୍ତି। ଯଦି ଏହା କାମରେ ଲାଗୁଛି, ବିକାଶକୁ ସମର୍ଥନ କରିବା କଥା ଭାବନ୍ତୁ।';

  @override
  String get donateLater => 'ପରେ ହୁଏତ';

  @override
  String get glassBackground => 'ଗ୍ଲାସ୍ ପୃଷ୍ଠଭୂମି';

  @override
  String get glassBackgroundDesc =>
      'ତୁମେ ଇମେଜ୍ ଲିଙ୍କ୍ ନଦେଲେ ତୁମ ପ୍ରୋଫାଇଲ୍ ବ୍ୟାନର୍';

  @override
  String get glassBackgroundHint =>
      'ଇମେଜ୍ ଲିଙ୍କ୍ (ତୁମ ବ୍ୟାନର୍ ପାଇଁ ଖାଲି ଛାଡ଼ନ୍ତୁ)';

  @override
  String get followCover => 'କଭର୍ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get followCoverDesc =>
      'ରଙ୍ଗ ପୃଷ୍ଠଭୂମି ଅନୁସରଣ କରେ, ଓ ବିବରଣୀ ପୃଷ୍ଠାରେ କଭର୍';

  @override
  String get followCoverMediaOnly => 'କେବଳ ମିଡିଆ ପାଇଁ |';

  @override
  String get followCoverMediaOnlyDesc =>
      'କେବଳ ମିଡିଆ ପୃଷ୍ଠାଗୁଡ଼ିକରେ କଭର ଅନୁସରଣ କରନ୍ତୁ, ଅନ୍ୟ ସବୁ ସ୍ଥାନରେ ସାଧାରଣ ରଙ୍ଗ ରଖେ |';

  @override
  String get cardStyle => 'କାର୍ଡ ଷ୍ଟାଇଲ୍';

  @override
  String get cardStyleDesc => 'ଶୀର୍ଷକ ସ୍ଥାନ, ଆକାର, ପ୍ରଗତି ଓ ବ୍ୟାଜ୍';

  @override
  String get customFont => 'ଫଣ୍ଟ';

  @override
  String get customFontDesc =>
      'ଡିଫଲ୍ଟ, ତୁମ ଡିଭାଇସ୍‌ର ଏକ ଫାଇଲ୍, କିମ୍ବା Google Fonts';

  @override
  String get customFontError => 'ସେହି ଫଣ୍ଟ ଫାଇଲ୍ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get googleFontError => 'ସେହି ଫଣ୍ଟ ଡାଉନଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get yourFonts => 'ତୁମର ଫଣ୍ଟ';

  @override
  String get addFontFile => 'ଫଣ୍ଟ ଫାଇଲ୍ ଯୋଗ କରନ୍ତୁ…';

  @override
  String get browseGoogleFonts => 'Google Fonts ବ୍ରାଉଜ୍ କରନ୍ତୁ…';

  @override
  String get searchGoogleFonts => 'Google Fonts ଖୋଜନ୍ତୁ';

  @override
  String get defaultFont => 'ଡିଫଲ୍ଟ';

  @override
  String get materialYou => 'ସାମଗ୍ରୀ ତୁମେ |';

  @override
  String get materialYouDesc => 'ସିଷ୍ଟମ୍‌ର ଡାଇନାମିକ୍ ରଙ୍ଗ';

  @override
  String get jsonTheme => 'କଷ୍ଟମ୍ ଥିମ୍ ଫାଇଲ୍';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json ରୁ ଲାଇଭ୍ ରଙ୍ଗ (ଏକ କଷ୍ଟମ୍ ସ୍କ୍ରିପ୍ଟ, ବା ତୁମ ନିଜ ସମ୍ପାଦନା)';

  @override
  String get themeMode => 'ଥିମ୍ ମୋଡ୍';

  @override
  String get mode => 'ମୋଡ୍';

  @override
  String get trackingService => 'ଟ୍ରାକିଂ ସର୍ଭିସ୍';

  @override
  String get signOut => 'ସାଇନ୍ ଆଉଟ୍';

  @override
  String get signIn => 'ସାଇନ୍ ଇନ୍';

  @override
  String get notSignedIn => 'ସାଇନ୍ ଇନ୍ କରାଯାଇନାହିଁ';

  @override
  String signOutOf(String service) {
    return '$serviceରୁ ସାଇନ୍ ଆଉଟ୍ କରିବେ?';
  }

  @override
  String get checkForUpdates => 'ଅପଡେଟ୍ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get checkForUpdatesDesc => 'ନୂଆ GitHub ରିଲିଜ୍ ହେଲେ ଜଣାନ୍ତୁ';

  @override
  String get updateChannel => 'ଅପଡେଟ୍ ଚ୍ୟାନେଲ୍';

  @override
  String get channel => 'ଚ୍ୟାନେଲ୍';

  @override
  String get stable => 'ସ୍ଥିର';

  @override
  String get preRelease => 'ପ୍ରି-ରିଲିଜ୍';

  @override
  String get alpha => 'ଆଲଫା';

  @override
  String get checkNow => 'ଏବେ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get userAgent => 'ଉପଯୋଗକର୍ତ୍ତା-ଏଜେଣ୍ଟ |';

  @override
  String get settingDefault => 'ଡିଫଲ୍ଟ';

  @override
  String currentlyUsing(String value) {
    return 'ବର୍ତ୍ତମାନ: $value';
  }

  @override
  String get dnsOverHttps => 'DNS- ଓଭର- HTTPS |';

  @override
  String get dnsDefault => 'ଡିଫଲ୍ଟ (Cloudflare)';

  @override
  String get proxy => 'ପ୍ରକ୍ସି';

  @override
  String get proxyProtocol => 'ପ୍ରକାର';

  @override
  String get proxyHost => 'ହୋଷ୍ଟ';

  @override
  String get proxyPort => 'ପୋର୍ଟ';

  @override
  String get proxyUsername => 'ୟୁଜରନେମ୍';

  @override
  String get proxyPassword => 'ପାସୱାର୍ଡ';

  @override
  String get optional => 'ବିକଳ୍ପ';

  @override
  String get clearCookies => 'କୁକି ସଫା କରନ୍ତୁ';

  @override
  String get clearCookiesDesc => 'ସବୁ ସେଭ୍ ହୋଇଥିବା କୁକି ହଟାନ୍ତୁ';

  @override
  String notImplementedArea(String area) {
    return '$area — ଶୀଘ୍ର ଆସୁଛି';
  }

  @override
  String notImplementedService(String service) {
    return '$service ଏହାକୁ ଏପର୍ଯ୍ୟନ୍ତ ସମର୍ଥନ କରେ ନାହିଁ।';
  }

  @override
  String get couldNotLoadResults => 'ଫଳାଫଳ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get updateCheckFailed => 'ଅପଡେଟ୍ ଯାଞ୍ଚ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get highRefreshRate => 'ଉଚ୍ଚ ରିଫ୍ରେସ୍ ରେଟ୍';

  @override
  String get highRefreshRateDesc =>
      'ତୁମ ସ୍କ୍ରିନ୍ ସମର୍ଥନ କରୁଥିବା ସର୍ବାଧିକ ରିଫ୍ରେସ୍ ରେଟ୍ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get imageSave => 'ଇମେଜ୍ ସେଭ୍ କରନ୍ତୁ';

  @override
  String imageSavedTo(String path) {
    return '$path ରେ ସେଭ୍ ହେଲା';
  }

  @override
  String get imageActionFailed => 'ଇମେଜ୍ ଡାଉନଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get imageTitleCover => 'କଭର୍';

  @override
  String get imageTitlePage => 'ପୃଷ୍ଠା';

  @override
  String get imageTitleBanner => 'ବ୍ୟାନର୍';

  @override
  String get imageTitleAvatar => 'ପ୍ରୋଫାଇଲ୍ ଫଟୋ';

  @override
  String get verifyTls => 'ସର୍ଟିଫିକେଟ୍ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get verifyTlsDesc =>
      'ଅବୈଧ HTTPS ସର୍ଟିଫିକେଟ୍ ଥିବା ସର୍ଭର୍ ପ୍ରତ୍ୟାଖ୍ୟାନ କରନ୍ତୁ। କେବଳ ସ୍ୱୟଂ-ସ୍ୱାକ୍ଷରିତ ସର୍ଟିଫିକେଟ୍ ବ୍ୟବହାର କରୁଥିବା ଉତ୍ସ ପାଇଁ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get clearCookiesConfirm =>
      'ସବୁ ସେଭ୍ ହୋଇଥିବା କୁକି ହଟାଇବେ? ଏହା କିଛି ଉତ୍ସରୁ ତୁମକୁ ସାଇନ୍ ଆଉଟ୍ କରିପାରେ।';

  @override
  String get version => 'ସଂସ୍କରଣ';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'ସୋର୍ସ, ଇସ୍ୟୁ ଓ ରିଲିଜ୍';

  @override
  String get discordDesc => 'ସମ୍ପ୍ରଦାୟ ଓ ସହାୟତା';

  @override
  String get supportDeveloper => 'ବିକାଶକାରୀଙ୍କୁ ସମର୍ଥନ କରନ୍ତୁ |';

  @override
  String get buyMeCoffee => 'ମୋତେ ଏକ କଫି କିଣ |';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID କପି ହୋଇଛି |';

  @override
  String get donateDesc => 'ବିକାଶକୁ ସମର୍ଥନ କରନ୍ତୁ';

  @override
  String get contributors => 'ଯୋଗଦାନକାରୀ';

  @override
  String get contributorsDesc => 'Dartotsu ତିଆରି କରିଥିବା ଲୋକ';

  @override
  String get contributorsLoadFailed => 'ଯୋଗଦାନକାରୀଙ୍କୁ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get forks => 'ଫର୍କସ୍ |';

  @override
  String get forksDesc => 'Dartotsu ଉପରେ ତିଆରି ପ୍ରୋଜେକ୍ଟ';

  @override
  String get forksEmpty => 'କୌଣସି ଫର୍କ ମିଳିଲା ନାହିଁ';

  @override
  String get sectionColors => 'ରଙ୍ଗ';

  @override
  String get sectionDisplay => 'ଡିସପ୍ଲେ';

  @override
  String get sectionStyle => 'ଷ୍ଟାଇଲ୍';

  @override
  String get sectionCommunity => 'ସମ୍ପ୍ରଦାୟ';

  @override
  String get sectionAppInfo => 'ଆପ୍ ସୂଚନା';

  @override
  String get sectionRequests => 'ଅନୁରୋଧ';

  @override
  String get sectionDnsProxy => 'DNS ଓ ପ୍ରକ୍ସି';

  @override
  String get onboardingBack => 'ପଛକୁ';

  @override
  String get onboardingNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get onboardingSkip => 'ଛାଡ଼ନ୍ତୁ';

  @override
  String get onboardingLanguageBody =>
      'Choose the language Dartotsu is shown in. You can change it later in Settings।';

  @override
  String get onboardingPaletteTitle => 'ନିଜର କରିନିଅ';

  @override
  String get onboardingPaletteBody =>
      'ଏକ ପ୍ୟାଲେଟ୍ ବାଛନ୍ତୁ। କାର୍ଡରୁ ପ୍ଲେୟାର୍ ପର୍ଯ୍ୟନ୍ତ ପ୍ରତ୍ୟେକ ଆକ୍ସେଣ୍ଟ ଏହାକୁ ଅନୁସରଣ କରିବ।';

  @override
  String get themeModeAuto => 'ସ୍ୱୟଂ';

  @override
  String get themeModeLight => 'ହାଲୁକା';

  @override
  String get themeModeDark => 'ଗାଢ଼';

  @override
  String get onboardingSyncTitle => 'ତୁମ ଲାଇବ୍ରେରୀ ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get onboardingSyncBody =>
      'ତୁମ ତାଲିକା, ପ୍ରଗତି ଓ ସ୍କୋର୍ ସାଥିରେ ନେବାକୁ AniList ସହ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ। ନଚେତ୍ ଛାଡ଼ି ଅତିଥି ଭାବରେ ବ୍ରାଉଜ୍ କରନ୍ତୁ।';

  @override
  String get onboardingOpenLinks => 'AniList ଓ ରିପୋ ଲିଙ୍କ୍ Dartotsuରେ ଖୋଲନ୍ତୁ';

  @override
  String get onboardingPermsTitle => 'ଅନୁମତି';

  @override
  String get onboardingPermsBody =>
      'ଡାଉନଲୋଡ୍, ଅପଡେଟ୍ ଓ ଆଲର୍ଟ ବାଧା ବିନା କାମ କରିବାକୁ ଏବେ ଏଗୁଡ଼ିକୁ ଅନୁମତି ଦିଅନ୍ତୁ। ପରେ ସିଷ୍ଟମ୍ ସେଟିଂସ୍‌ରେ ବଦଳାଇପାରିବ।';

  @override
  String get permNotifications => 'ବିଜ୍ଞପ୍ତି';

  @override
  String get permNotificationsDesc => 'ଡାଉନଲୋଡ୍ ପ୍ରଗତି, ନୂଆ ଏପିସୋଡ୍ ଓ ଉତ୍ତର';

  @override
  String get permStorage => 'ସବୁ ଫାଇଲ୍ ଆକ୍ସେସ୍';

  @override
  String get permStorageDesc =>
      'ଡାଉନଲୋଡ୍ ସାର୍ବଜନୀନ Dartotsu ଫୋଲ୍ଡରରେ ସେଭ୍ କରନ୍ତୁ';

  @override
  String get permInstall => 'ଅପଡେଟ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get permInstallDesc =>
      'Dartotsuକୁ ନିଜ ଆପ୍ ଅପଡେଟ୍ ଇନଷ୍ଟଲ୍ କରିବାକୁ ଦିଅନ୍ତୁ';

  @override
  String get permBattery => 'ସୀମାହୀନ ବ୍ୟାଟେରୀ';

  @override
  String get permBatteryDesc => 'ଲମ୍ବା ଡାଉନଲୋଡ୍ ବ୍ୟାକଗ୍ରାଉଣ୍ଡରେ ଚାଲୁ ରଖନ୍ତୁ';

  @override
  String get permGrant => 'ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get linkOpenInApp => 'ଲିଙ୍କ୍ Dartotsuରେ ଖୋଲନ୍ତୁ';

  @override
  String get linkOpenInAppDesc => 'AniList ଓ ରିପୋ ଲିଙ୍କ୍ ଆପ୍ ଖୋଲୁ';

  @override
  String get reviewsTitle => 'ସମୀକ୍ଷା';

  @override
  String get reviewsEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ ସମୀକ୍ଷା ନାହିଁ';

  @override
  String get reviewsFailed => 'ସମୀକ୍ଷା ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get reviewHelpfulQuestion => 'ଏହି ସମୀକ୍ଷା ସହାୟକ ଥିଲା କି?';

  @override
  String get reviewVoteFailed => 'ତୁମ ଭୋଟ୍ ସେଭ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String reviewHelpful(int n, int total) {
    return '$total ମଧ୍ୟରୁ $n ଜଣ ଏହାକୁ ସହାୟକ ମନେ କଲେ';
  }

  @override
  String get calendarTitle => 'ପ୍ରସାରଣ ସୂଚୀ';

  @override
  String get calendarToday => 'ଆଜି';

  @override
  String get calendarEmpty => 'ଏହି ଦିନ କିଛି ପ୍ରସାରିତ ହେଉନାହିଁ';

  @override
  String get calendarFailed => 'ସୂଚୀ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String calendarChapter(int n) {
    return 'ଅଧ୍ୟାୟ $n';
  }

  @override
  String get calendarExpected => 'ଆଶା କରାଯାଏ';

  @override
  String get castReceiverFailed => 'Chromecast ଏହାର ପ୍ଲେୟାର ଆରମ୍ଭ କରିନଥିଲା |';

  @override
  String get castPlaybackFailed => 'ଡିଭାଇସ୍ ଏହି ଷ୍ଟ୍ରିମ୍ ଚଲାଇ ପାରିଲା ନାହିଁ |';

  @override
  String get shortcutNothingToContinue =>
      'ଏପର୍ଯ୍ୟନ୍ତ ଜାରି ରଖିବାକୁ କିଛି ନାହିଁ |';

  @override
  String shortcutNoCalendar(String service) {
    return '$service ର କalendar ଣସି କ୍ୟାଲେଣ୍ଡର ନାହିଁ |';
  }

  @override
  String calendarEpisode(int n) {
    return 'ଏପିସୋଡ୍ $n';
  }

  @override
  String get shareAnalytics => 'ଅଜ୍ଞାତ ବ୍ୟବହାର ଡାଟା ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get shareAnalyticsDesc =>
      'ଅଜ୍ଞାତ ଉପଭୋକ୍ତା ସଂଖ୍ୟା ଓ କ୍ରାସ୍ ରିପୋର୍ଟ। କୌଣସି ଆକାଉଣ୍ଟ ବା ବ୍ୟକ୍ତିଗତ ଡାଟା ନାହିଁ';

  @override
  String get linkOpenAnilist => 'AniList ଲିଙ୍କ୍ Dartotsuରେ ଖୋଲନ୍ତୁ';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co ଲିଙ୍କ୍ ଆପ୍ ଖୋଲିବା ପାଇଁ ଲିଙ୍କ୍ ହ୍ୟାଣ୍ଡଲିଂ ଚାଲୁ କରନ୍ତୁ';

  @override
  String get linkSettingsFailed => 'ସିଷ୍ଟମ୍ ସେଟିଂସ୍ ଖୋଲିପାରିଲୁ ନାହିଁ';

  @override
  String get discordRichPresence => 'ସମୃଦ୍ଧ ଉପସ୍ଥିତି |';

  @override
  String get discordRichPresenceTokenDesc =>
      'ତୁମେ କ\'ଣ କରୁଛ ତାହା ତୁମ Discord ପ୍ରୋଫାଇଲ୍‌ରେ ଦେଖାନ୍ତୁ। ତୁମ Discord ଟୋକେନ୍ ଦରକାର।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'ତୁମେ କ\'ଣ କରୁଛ ତାହା ତୁମ Discord ପ୍ରୋଫାଇଲ୍‌ରେ ଦେଖାନ୍ତୁ। Discord ଡେସ୍କଟପ୍ ଆପ୍ ଚାଲୁ ଥିବା ଦରକାର।';

  @override
  String get discordBrowsing => 'ବ୍ରାଉଜିଂ କାର୍ଯ୍ୟକଳାପ ଦେଖାନ୍ତୁ';

  @override
  String get discordBrowsingDesc =>
      'କେବଳ ତୁମେ ଯାହା ଦେଖୁଛ ବା ପଢ଼ୁଛ ତାହା ନୁହେଁ, ତୁମେ ଯେଉଁ ଟ୍ୟାବ୍, ପୃଷ୍ଠା ବା ପ୍ରୋଫାଇଲ୍ ଦେଖୁଛ ତାହା ମଧ୍ୟ ଦେଖାନ୍ତୁ।';

  @override
  String get discordLookHeader => 'ପ୍ରେଜେନ୍ସ୍ ଦେଖଣା';

  @override
  String get discordActivityType => 'କାର୍ଯ୍ୟକଳାପ ପ୍ରକାର';

  @override
  String get discordActivityTypeDesc =>
      'Discord ଏହାକୁ କିପରି ଲେଖେ: \"Watching …\" ବା \"Playing …\"। ସ୍ୱୟଂ ଆନିମେ ପାଇଁ Watching ଓ ବାକି ସବୁ ପାଇଁ Playing ବ୍ୟବହାର କରେ।';

  @override
  String get discordWatching => 'ଦେଖୁଛି';

  @override
  String get discordPlaying => 'ଖେଳୁଛି';

  @override
  String get discordCovers => 'କଭର୍ ଦେଖାନ୍ତୁ';

  @override
  String get discordCoversDesc => 'କାର୍ଡରେ କଭର୍ ଆର୍ଟ ଓ Dartotsu ଆଇକନ୍।';

  @override
  String get discordTimer => 'ଟାଇମର୍ ଦେଖାନ୍ତୁ';

  @override
  String get discordTimerDesc => 'ଶୀର୍ଷକ ତଳେ ବିତିଯାଇଥିବା ବା ବାକି ଥିବା ସମୟ।';

  @override
  String get discordButtons => 'ବଟନ୍ ଦେଖାନ୍ତୁ';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" ଓ \"Open Dartotsu\" ବଟନ୍।';

  @override
  String get discordHideTitles => 'ଶୀର୍ଷକ ଲୁଚାନ୍ତୁ';

  @override
  String get discordHideTitlesDesc =>
      'ଆନିମେ ଓ ମାଙ୍ଗା ନାମ (ଓ ସେମାନଙ୍କ କଭର୍ ଓ ଲିଙ୍କ୍) \"Something private\" ଦ୍ୱାରା ବଦଳାନ୍ତୁ।';

  @override
  String get discordConnectionHeader => 'ସଂଯୋଗ';

  @override
  String get listSearchHint => 'ଏହି ତାଲିକାରେ ଖୋଜନ୍ତୁ';

  @override
  String get listSort => 'କ୍ରମ';

  @override
  String get listFilter => 'ଫିଲ୍ଟର୍';

  @override
  String get listRandom => 'ଯାଦୃଚ୍ଛିକ ଶୀର୍ଷକ';

  @override
  String get listReverse => 'କ୍ରମ ଓଲଟାନ୍ତୁ';

  @override
  String get listSortDefault => 'ତାଲିକା କ୍ରମ';

  @override
  String get listSortScore => 'ତୁମ ସ୍କୋର୍';

  @override
  String get listSortTitle => 'ଶୀର୍ଷକ';

  @override
  String get listSortUpdated => 'ଶେଷ ଅପଡେଟ୍';

  @override
  String get listSortProgress => 'ପ୍ରଗତି';

  @override
  String get listSortReleased => 'ରିଲିଜ୍ ତାରିଖ';

  @override
  String get listSortAverage => 'ହାରାହାରି ସ୍କୋର୍';

  @override
  String get listFilterFormat => 'ଫର୍ମାଟ୍';

  @override
  String get listFilterStatus => 'ସ୍ଥିତି';

  @override
  String get listFilterGenres => 'ଧରଣ';

  @override
  String get listFilterClear => 'ଫିଲ୍ଟର୍ ସଫା କରନ୍ତୁ';

  @override
  String get listNoMatches => 'ଏହି ତାଲିକାରେ କିଛି ମେଳ ଖାଉନାହିଁ';

  @override
  String get discordLogin => 'Discordରେ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get discordToken => 'Discord ଟୋକେନ୍';

  @override
  String get discordTokenSaved =>
      'ସେଭ୍ ହୋଇଛି। ବଦଳାଇବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ, ହଟାଇବାକୁ ଲମ୍ବା ଦବାନ୍ତୁ।';

  @override
  String get discordTokenNotSet => 'ସେଟ୍ ହୋଇନାହିଁ। ଯୋଗ କରିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ।';

  @override
  String get discordTokenSavedSnack => 'Discord ଟୋକେନ୍ ସେଭ୍ ହେଲା';

  @override
  String get discordTokenRemovedSnack => 'Discord ଟୋକେନ୍ ହଟାଗଲା';

  @override
  String get discordRichPresenceRow => 'ଅସନ୍ତୁଷ୍ଟ ଧନୀ ଉପସ୍ଥିତି |';

  @override
  String get discordRichPresenceRowOn => 'ଚାଲୁ · ଦେଖଣା ବଦଳାଇବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get discordRichPresenceRowOff =>
      'ତୁମେ କ\'ଣ କରୁଛ ତାହା ତୁମ Discord ପ୍ରୋଫାଇଲ୍‌ରେ ଦେଖାନ୍ତୁ';

  @override
  String get loginCancelled => 'ଲଗ୍ ଇନ୍ ବାତିଲ୍ ହେଲା';

  @override
  String get invalidToken => 'ଅବୈଧ ଟୋକେନ୍';

  @override
  String loginFailed(String error) {
    return 'ଲଗ୍ ଇନ୍ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList ଲଗ୍ ଇନ୍ ବିଫଳ ହେଲା';

  @override
  String get kitsuLoginFailed =>
      'Kitsu ଲଗ୍ ଇନ୍ ବିଫଳ ହେଲା। ତୁମ ଇମେଲ୍ ଓ ପାସୱାର୍ଡ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get kitsuLoginTitle => 'Kitsuରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get emailOrUsername => 'ଇମେଲ୍ ବା ୟୁଜରନେମ୍';

  @override
  String get password => 'ପାସୱାର୍ଡ';

  @override
  String get kitsuProfile => 'Kitsu ପ୍ରୋଫାଇଲ୍';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka ଲଗ୍ ଇନ୍ ବିଫଳ ହେଲା';

  @override
  String get comickLoginFailed => 'କମିକ୍ ଲଗଇନ୍ ବିଫଳ ହେଲା |';

  @override
  String get tagline => 'ଟ୍ୟାଗଲାଇନ୍ |';

  @override
  String get trending => 'ଟ୍ରେଣ୍ଡିଂ';

  @override
  String get anticipated => 'ପ୍ରତୀକ୍ଷିତ';

  @override
  String get watchlist => 'ୱାଚଲିଷ୍ଟ |';

  @override
  String get recommendedShows => 'ସୁପାରିଶ କରାଯାଇଥିବା ଶୋ |';

  @override
  String get recommendedMovies => 'ସୁପାରିଶ କରାଯାଇଥିବା ଚଳଚ୍ଚିତ୍ର |';

  @override
  String get boxOffice => 'ବକ୍ସ ଅଫିସ୍ |';

  @override
  String get popularMovies => 'ଲୋକପ୍ରିୟ ଚଳଚ୍ଚିତ୍ର';

  @override
  String get popularShows => 'ଲୋକପ୍ରିୟ ଶୋ |';

  @override
  String get anticipatedMovies => 'ପ୍ରତୀକ୍ଷିତ ଚଳଚ୍ଚିତ୍ର |';

  @override
  String get anticipatedShows => 'ପ୍ରତୀକ୍ଷିତ ଶୋ |';

  @override
  String get trendingShows => 'ଟ୍ରେଣ୍ଡିଂ ଶୋ |';

  @override
  String get mostWatchedThisWeek => 'ଏହି ସପ୍ତାହରେ ଅଧିକାଂଶ ଦେଖାଗଲା |';

  @override
  String get sortMostViewed => 'ଅଧିକାଂଶ ଦେଖାଯାଇଛି |';

  @override
  String get sortMostFollowed => 'ଅଧିକାଂଶ ଅନୁସରଣ କଲେ |';

  @override
  String get sortLatestUpdates => 'ସର୍ବଶେଷ ଅଦ୍ୟତନଗୁଡିକ |';

  @override
  String get translationStatusLabel => 'ଅନୁବାଦ';

  @override
  String get weeklySchedule => 'ସାପ୍ତାହିକ କାର୍ଯ୍ୟସୂଚୀ |';

  @override
  String get mostFollowed => 'ଅଧିକାଂଶ ଅନୁସରଣ';

  @override
  String get latestUpdates => 'ସର୍ବଶେଷ ଅଦ୍ୟତନଗୁଡିକ |';

  @override
  String get trendingAnime => 'ଟ୍ରେଣ୍ଡିଂ ଆନିମ |';

  @override
  String get topRatedAnime => 'ଶୀର୍ଷ ରେଟେଡ୍ ଆନିମ |';

  @override
  String get mostFollowedAnime => 'ଅଧିକାଂଶ ଅନୁକରଣ କରାଯାଇଥିବା ଆନିମ |';

  @override
  String get comickProfile => 'ପ୍ରୋଫାଇଲ୍ ବ୍ୟଙ୍ଗ କରନ୍ତୁ |';

  @override
  String get refreshFromComick => 'କମିକ୍ ରୁ ସତେଜ |';

  @override
  String get mangaBakaProfile => 'MangaBaka ପ୍ରୋଫାଇଲ୍';

  @override
  String get refreshFromMangaBaka => 'MangaBakaରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get mangaUpdatesLoginTitle => 'MangaUpdates କୁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ |';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates ପ୍ରୋଫାଇଲ୍ |';

  @override
  String get mangaUpdatesAnimeStart => 'ଆନିମ ଆଡାପ୍ଟେସନ୍ ଆରମ୍ଭ ହୁଏ |';

  @override
  String get mangaUpdatesAnimeEnd => 'ଆନିମ ଆଡାପ୍ଟେସନ୍ ଶେଷ ହୁଏ |';

  @override
  String get refreshFromMangaUpdates => 'MangaUpdates ରୁ ସତେଜ |';

  @override
  String get usernameOnly => 'ଉପଯୋଗକର୍ତ୍ତା ନାମ';

  @override
  String get releases => 'ରିଲିଜ୍';

  @override
  String get artistsLabel => 'କଳାକାର';

  @override
  String get authorsLabel => 'ଲେଖକ';

  @override
  String get publishersLabel => 'ପ୍ରକାଶକ';

  @override
  String get licensedLabel => 'ଲାଇସେନ୍ସପ୍ରାପ୍ତ';

  @override
  String get contentRatingLabel => 'କଣ୍ଟେଣ୍ଟ ରେଟିଂ';

  @override
  String get yesLabel => 'ହଁ';

  @override
  String get noLabel => 'ନା';

  @override
  String get ratingSteps => 'ରେଟିଂ ସ୍ତର';

  @override
  String get hideNsfw => 'NSFW ଲୁଚାନ୍ତୁ';

  @override
  String get hideNsfwSourcesDesc =>
      'Hide sources marked 18+ from the feeds and the source picker. They stay installed।';

  @override
  String get hideNsfwDesc =>
      'ବୟସ୍କ ଶୀର୍ଷକକୁ ଫିଡ୍ ଓ ସର୍ଚ୍ଚରୁ ଦୂରରେ ରଖନ୍ତୁ, ଓ ତୁମ ନିଜ ବୟସ୍କ ଏଣ୍ଟ୍ରିକୁ ଲୁକ୍କାୟିତ ମିଡିଆ ଅଧୀନରେ ଦେଖାନ୍ତୁ।';

  @override
  String get kitsuAccountOptions => 'Kitsu ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

  @override
  String get comickAccountOptions => 'ଖାତା ବିକଳ୍ପଗୁଡ଼ିକ';

  @override
  String get comickClientId => 'କମିକ୍ କ୍ଲାଏଣ୍ଟ ID |';

  @override
  String get comickClientIdDesc =>
      'Comick.dev ରେ କଷ୍ଟମ୍ କ୍ଲାଏଣ୍ଟ ID ପଞ୍ଜିକୃତ |';

  @override
  String get couldNotUpdateKitsuSettings =>
      'ତୁମ Kitsu ସେଟିଂସ୍ ଅପଡେଟ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get titleCanonical => 'କାନୋନିକାଲ୍';

  @override
  String get titleRomanized => 'ରୋମାନାଇଜ୍ଡ୍';

  @override
  String get titleLocalized => 'ସ୍ଥାନୀୟକୃତ';

  @override
  String get ratingSystem => 'ରେଟିଂ ସିଷ୍ଟମ୍';

  @override
  String get ratingSimple => 'ସରଳ (୩ ମୁହଁ)';

  @override
  String get ratingRegular => 'ସାଧାରଣ (୫ ତାରା)';

  @override
  String get ratingAdvanced => 'ଉନ୍ନତ (୧୦ ପଏଣ୍ଟ)';

  @override
  String get contentFilter => 'କଣ୍ଟେଣ୍ଟ ଫିଲ୍ଟର୍';

  @override
  String get contentSfw => 'କେବଳ କାମ ପାଇଁ ସୁରକ୍ଷିତ';

  @override
  String get contentSometimes => 'ସର୍ଚ୍ଚରେ ବୟସ୍କ କଣ୍ଟେଣ୍ଟ';

  @override
  String get contentEverywhere => 'ସବୁଠି ବୟସ୍କ କଣ୍ଟେଣ୍ଟ';

  @override
  String get shareToGlobal => 'ଗ୍ଲୋବାଲ୍ ଫିଡ୍‌କୁ ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get shareToGlobalDesc =>
      'ତୁମ କାର୍ଯ୍ୟକଳାପ Kitsuର ଗ୍ଲୋବାଲ୍ ଫିଡ୍‌ରେ ଦେଖାଯାଉ।';

  @override
  String get memberSince => 'ସଦସ୍ୟ ହେବା ତାରିଖ';

  @override
  String get location => 'ଅବସ୍ଥାନ';

  @override
  String get accountType => 'ଆକାଉଣ୍ଟ ପ୍ରକାର';

  @override
  String get accountSupporter => 'ସମର୍ଥକ';

  @override
  String get accountFree => 'ମାଗଣା';

  @override
  String get accountDetails => 'ଆକାଉଣ୍ଟ ବିବରଣୀ';

  @override
  String get refreshFromKitsu => 'Kitsuରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get simklReadOnly => 'Simkl କେବଳ ପଢ଼ିବା ଆକ୍ସେସ୍ ଦେଇଛି';

  @override
  String get traktReadOnly => 'ଟ୍ରାକ୍ଟ କେବଳ ପଠନୀୟ ଅନୁମତି ପ୍ରଦାନ କଲା |';

  @override
  String get incognitoEditsBlocked => 'ଇନକଗ୍ନିଟୋ: ତାଲିକା ସମ୍ପାଦନା ଅବରୋଧିତ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'ଇନକଗ୍ନିଟୋ: ପ୍ରଗତି ସେଭ୍ ହେଲା ନାହିଁ';

  @override
  String progressSet(int progress) {
    return 'ପ୍ରଗତି $progressକୁ ସେଟ୍ ହେଲା';
  }

  @override
  String removedFromList(String title) {
    return 'ତୁମ ତାଲିକାରୁ $title ହଟାଗଲା';
  }

  @override
  String get following => 'ଅନୁସରଣ କରୁଛ';

  @override
  String get followsMutual => 'ପାରସ୍ପରିକ';

  @override
  String get followsNotMutual => 'ପାରସ୍ପରିକ ନୁହେଁ |';

  @override
  String get homeSections => 'ହୋମ୍ ବିଭାଗ';

  @override
  String get homeSectionsHint =>
      'କ୍ରମ ବଦଳାଇବାକୁ ଟାଣନ୍ତୁ। ଲୁକ୍କାୟିତ ବିଭାଗ କେବେ ଆଣାଯାଏ ନାହିଁ।';

  @override
  String get customListDeleteFailed => 'କଷ୍ଟମ୍ ତାଲିକା ଡିଲିଟ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get customListsSaveFailed => 'କଷ୍ଟମ୍ ତାଲିକା ସେଭ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get customListsSaved => 'କଷ୍ଟମ୍ ତାଲିକା ସେଭ୍ ହେଲା';

  @override
  String get listName => 'ତାଲିକା ନାମ';

  @override
  String get addList => 'ତାଲିକା ଯୋଗ କରନ୍ତୁ';

  @override
  String get voiceActors => 'ସ୍ୱର ଅଭିନେତା |';

  @override
  String voiceActorsIn(String name) {
    return 'ଭଏସ୍ ଆକ୍ଟର୍ · $name';
  }

  @override
  String get animeAppearances => 'ଆନିମେରେ ଦେଖାଦେବା';

  @override
  String get mangaAppearances => 'ମାଙ୍ଗାରେ ଦେଖାଦେବା';

  @override
  String get voicedCharacters => 'ସ୍ୱର ଦେଇଥିବା ଚରିତ୍ର';

  @override
  String get animeCredits => 'ଆନିମେ କ୍ରେଡିଟ୍';

  @override
  String get mangaCredits => 'ମାଙ୍ଗା କ୍ରେଡିଟ୍';

  @override
  String get mainProductions => 'ମୁଖ୍ୟ ପ୍ରଯୋଜନା';

  @override
  String get otherWorks => 'ଅନ୍ୟ କାମ';

  @override
  String get prequelSequel => 'ପ୍ରିକ୍ୱେଲ୍ ଓ ସିକ୍ୱେଲ୍';

  @override
  String get prequel => 'ପ୍ରିକ୍ୱେଲ୍ |';

  @override
  String get sequel => 'ସିକ୍ୱେଲ୍ |';

  @override
  String get previousSeason => 'ପୂର୍ବ ସିଜନ୍';

  @override
  String get thisSeason => 'ଏହି ସିଜନ୍';

  @override
  String get nextSeason => 'ପରବର୍ତ୍ତୀ ସିଜନ୍';

  @override
  String get voiceRoles => 'ସ୍ୱର ଭୂମିକା';

  @override
  String get staffPositions => 'ଷ୍ଟାଫ୍ ପଦବୀ';

  @override
  String get mangaWorks => 'ମାଙ୍ଗା କାମ';

  @override
  String get malProfile => 'MyAnimeList ପ୍ରୋଫାଇଲ୍';

  @override
  String get refreshFromMal => 'MyAnimeListରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get repullProfileCounts => 'ତୁମ ପ୍ରୋଫାଇଲ୍ ଓ ଗଣତି ପୁଣି ଆଣନ୍ତୁ';

  @override
  String get refreshed => 'ରିଫ୍ରେସ୍ ହେଲା';

  @override
  String get simklProfile => 'Simkl ପ୍ରୋଫାଇଲ୍';

  @override
  String get traktProfile => 'ଟ୍ରାକ୍ଟ ପ୍ରୋଫାଇଲ୍ |';

  @override
  String get refreshFromSimkl => 'Simklରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get refreshFromTrakt => 'ଟ୍ରାକ୍ଟରୁ ସତେଜ |';

  @override
  String get repullProfileLibrary => 'ତୁମ ପ୍ରୋଫାଇଲ୍ ଓ ଲାଇବ୍ରେରୀ ପୁଣି ଆଣନ୍ତୁ';

  @override
  String get simklSignInToSearch => 'ଖୋଜିବାକୁ Simklରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get dropRate => 'ଡ୍ରପ୍ ହାର';

  @override
  String get simklAttribution =>
      'ଡାଟା ଓ ଆର୍ଟୱର୍କ Simkl ଦ୍ୱାରା ପ୍ରଦତ୍ତ। Simklରେ ଦେଖନ୍ତୁ';

  @override
  String get traktAttribution =>
      'ଟ୍ରାକ୍ଟ ଦ୍ୱାରା ପ୍ରଦତ୍ତ ତଥ୍ୟ ଏବଂ ଚିତ୍ରକଳା | ଟ୍ରାକ୍ଟରେ ଦେଖନ୍ତୁ |';

  @override
  String get listsLiked => 'ପସନ୍ଦ';

  @override
  String get listsYours => 'ଆପଣଙ୍କର';

  @override
  String get traktVip => 'VIP';

  @override
  String get traktVipMember => 'ଟ୍ରାକ୍ଟ ଭିଆଇପି ସଦସ୍ୟ |';

  @override
  String get onHold => 'ଅପେକ୍ଷାରେ';

  @override
  String get scoredBy => 'ସ୍କୋର୍ ଦେଇଛନ୍ତି';

  @override
  String get planToWatch => 'ଦେଖିବାକୁ ଯୋଜନା';

  @override
  String get planToRead => 'ପଢ଼ିବାକୁ ଯୋଜନା';

  @override
  String get timesRewatched => 'ଥରେ ଦେଖିସାରି ପୁଣି ଦେଖିଛି';

  @override
  String get timesReread => 'ଥରେ ପଢ଼ିସାରି ପୁଣି ପଢ଼ିଛି';

  @override
  String get comments => 'ମନ୍ତବ୍ୟ';

  @override
  String get moviesAndSeries => 'ସିନେମା ଓ ସିରିଜ୍';

  @override
  String get simklMoviesOnly => 'କେବଳ ଚଳଚ୍ଚିତ୍ର ଏବଂ ସିରିଜ୍ |';

  @override
  String get simklMoviesOnlyDesc =>
      'ଆନିମ ଟ୍ୟାବକୁ ବଦଳାଇଥାଏ: ପ୍ରଥମେ ଚଳଚ୍ଚିତ୍ର, ତାପରେ ଦୁଇଟି ଆନିମ ଧାଡି ସହିତ ଦେଖାଏ |';

  @override
  String get trackingOnly => 'କେବଳ ଟ୍ରାକିଂ';

  @override
  String get signedIn => 'ସାଇନ୍ ଇନ୍ ହୋଇଛି';

  @override
  String get searchLanguage => 'ସର୍ଚ୍ଚ ଭାଷା';

  @override
  String get savedToList => 'ତୁମ ତାଲିକାରେ ସେଭ୍ ହେଲା';

  @override
  String get removedFromYourList => 'ତୁମ ତାଲିକାରୁ ହଟାଗଲା';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା';

  @override
  String get synopsis => 'ସାରାଂଶ';

  @override
  String get details => 'ବିବରଣୀ';

  @override
  String get addToList => 'ତାଲିକାରେ ଯୋଗ କରନ୍ତୁ';

  @override
  String get trailer => 'ଟ୍ରେଲର୍';

  @override
  String get trailerQuality => 'ଟ୍ରେଲର ଗୁଣ';

  @override
  String get titleCopied => 'ଶୀର୍ଷକ କପି ହେଲା';

  @override
  String get linkCopied => 'ଲିଙ୍କ୍ କପି ହେଲା';

  @override
  String get watchTrailer => 'ଟ୍ରେଲର୍ ଦେଖନ୍ତୁ';

  @override
  String get copyTitle => 'ଶୀର୍ଷକ କପି କରନ୍ତୁ';

  @override
  String get detailStale =>
      'AniList could not be reached. This is saved information and may be outdated।';

  @override
  String get copyLink => 'ଲିଙ୍କ୍ କପି କରନ୍ତୁ';

  @override
  String get openInBrowser => 'ବ୍ରାଉଜରରେ ଖୋଲନ୍ତୁ';

  @override
  String viewOnSource(String source) {
    return '$sourceରେ ଦେଖନ୍ତୁ';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'ଏପିସୋଡ୍ $ep $time ପରେ ପ୍ରସାରିତ ହେବ';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'ପରବର୍ତ୍ତୀ ଏପିସୋଡ୍ $time ପରେ';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'ଅଧ୍ୟାୟ $chapter ପ୍ରାୟ $time ମଧ୍ୟରେ ଆସିବ';
  }

  @override
  String get logPathCopied => 'ଲଗ୍ ଫାଇଲ୍ ପାଥ୍ କ୍ଲିପ୍‌ବୋର୍ଡକୁ କପି ହେଲା';

  @override
  String get animeSource => 'ଆନିମେ ଉତ୍ସ';

  @override
  String get mangaSource => 'ମାଙ୍ଗା ଉତ୍ସ';

  @override
  String get popular => 'ଲୋକପ୍ରିୟ';

  @override
  String get allCustomLists => 'ସମସ୍ତ କଷ୍ଟମ୍ ତାଲିକା |';

  @override
  String get simklTitleLanguage => 'ଆନିମ ଟାଇଟଲ୍ ଭାଷା |';

  @override
  String get titleLanguageEnglish => 'ଇଂରାଜୀ |';

  @override
  String get titleLanguageRomaji => 'ରୋମାଜୀ';

  @override
  String get simklListsTrending => 'ଟ୍ରେଣ୍ଡିଂ';

  @override
  String get simklListsMostLiked => 'ଅଧିକାଂଶ ପସନ୍ଦ କରନ୍ତି |';

  @override
  String get simklListsMostFollowed => 'ଅଧିକାଂଶ ଅନୁସରଣ କଲେ |';

  @override
  String get simklListsOfficial => 'ସରକାରୀ';

  @override
  String simklListTitles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଆଖ୍ୟାଗୁଡିକ |',
      one: '1 ଟାଇଟଲ୍ |',
    );
    return '$_temp0';
  }

  @override
  String get people => 'ଲୋକମାନେ';

  @override
  String get mostComments => 'ଅଧିକାଂଶ ମନ୍ତବ୍ୟ';

  @override
  String get alphabetical => 'ବର୍ଣ୍ଣାନୁକ୍ରମିକ';

  @override
  String get latest => 'ସର୍ବଶେଷ';

  @override
  String get saved => 'ସେଭ୍ ହୋଇଛି';

  @override
  String get nothingMatched => 'କିଛି ମେଳ ଖାଇଲା ନାହିଁ';

  @override
  String get nothingSavedFromSource =>
      'ଏହି ଉତ୍ସରୁ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ସେଭ୍ ହୋଇନାହିଁ';

  @override
  String get sourceReturnedNothing => 'ଏହି ଉତ୍ସ କିଛି ଫେରାଇଲା ନାହିଁ';

  @override
  String get checkConnectionOrSource =>
      'ତୁମ ସଂଯୋଗ ଯାଞ୍ଚ କରନ୍ତୁ ବା ଅନ୍ୟ ଉତ୍ସ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get tryDifferentSearch => 'ଅନ୍ୟ ଏକ ସର୍ଚ୍ଚ ଶବ୍ଦ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get savedTitlesAppearHere =>
      'ତୁମେ ତାଲିକାରେ ଯୋଗ କରିଥିବା ଶୀର୍ଷକ ଏଠି ଦେଖାଯିବ।';

  @override
  String get tryOtherFeed => 'ଅନ୍ୟ ଫିଡ୍ ଚେଷ୍ଟା କରନ୍ତୁ ବା ଖୋଜନ୍ତୁ।';

  @override
  String searchSource(String source) {
    return '$source ଖୋଜନ୍ତୁ';
  }

  @override
  String get animeExtensions => 'ଆନିମେ ଏକ୍ସଟେନସନ୍';

  @override
  String get mangaExtensions => 'ମାଙ୍ଗା ଏକ୍ସଟେନସନ୍';

  @override
  String get nothingHereYet => 'ଏପର୍ଯ୍ୟନ୍ତ ଏଠି କିଛି ନାହିଁ';

  @override
  String get savedOnDeviceUntilLogin =>
      'ତୁମେ ନ କରିବା ପର୍ଯ୍ୟନ୍ତ ତଳେ ଥିବା ସବୁକିଛି ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ରହେ।';

  @override
  String get yourProfile => 'ତୁମ ପ୍ରୋଫାଇଲ୍';

  @override
  String get activity => 'କାର୍ଯ୍ୟକଳାପ';

  @override
  String get extensions => 'ଏକ୍ସଟେନସନ୍';

  @override
  String get logOut => 'ଲଗ୍ ଆଉଟ୍';

  @override
  String get logIn => 'ଲଗ୍ ଇନ୍';

  @override
  String get logOutConfirm => 'ତୁମେ ନିଶ୍ଚିତ ଭାବରେ ଲଗ୍ ଆଉଟ୍ କରିବାକୁ ଚାହୁଁଛ?';

  @override
  String get incognitoMode => 'ଇନକଗ୍ନିଟୋ ମୋଡ୍';

  @override
  String get alsoBlockListEdits => 'ତାଲିକା ସମ୍ପାଦନା ମଧ୍ୟ ଅବରୋଧ କରନ୍ତୁ';

  @override
  String get offlineMode => 'ଅଫଲାଇନ୍ ମୋଡ୍';

  @override
  String get switchService => 'ସର୍ଭିସ୍ ବଦଳାନ୍ତୁ';

  @override
  String logOutOf(String name) {
    return '$nameରୁ ଲଗ୍ ଆଉଟ୍ କରନ୍ତୁ';
  }

  @override
  String get loggedIn => 'ଲଗ୍ ଇନ୍ ହୋଇଛି';

  @override
  String get notifications => 'ବିଜ୍ଞପ୍ତି';

  @override
  String get nothingNew => 'ନୂଆ କିଛି ନାହିଁ';

  @override
  String get thisWeek => 'ଏହି ସପ୍ତାହ';

  @override
  String get listOnly => 'କେବଳ ତାଲିକା';

  @override
  String get notInList => 'ତାଲିକାରେ ନାହିଁ |';

  @override
  String get filter => 'ଫିଲ୍ଟର୍';

  @override
  String get searchResults => 'ସର୍ଚ୍ଚ ଫଳାଫଳ';

  @override
  String get recentSearches => 'ସାମ୍ପ୍ରତିକ ସର୍ଚ୍ଚ';

  @override
  String get searchOrSetFilter => 'ଖୋଜନ୍ତୁ ବା ଫିଲ୍ଟର୍ ସେଟ୍ କରନ୍ତୁ';

  @override
  String get filters => 'ଫିଲ୍ଟର୍';

  @override
  String get showLess => 'କମ୍ ଦେଖାନ୍ତୁ';

  @override
  String get showAll => 'ସବୁ ଦେଖାନ୍ତୁ';

  @override
  String get apply => 'ଲାଗୁ କରନ୍ତୁ';

  @override
  String get preview => 'ପ୍ରିଭ୍ୟୁ';

  @override
  String get preset => 'ପ୍ରିସେଟ୍';

  @override
  String get cardNormal => 'ସାଧାରଣ';

  @override
  String get cardOnCard => 'କାର୍ଡ ଉପରେ';

  @override
  String get cardInCard => 'କାର୍ଡ ଭିତରେ';

  @override
  String get size => 'ଆକାର';

  @override
  String get cardWidth => 'କାର୍ଡ ଚଉଡ଼ା';

  @override
  String get compact => 'କମ୍ପାକ୍ଟ';

  @override
  String get coverAndTitleOnly => 'କେବଳ କଭର୍ ଓ ଶୀର୍ଷକ';

  @override
  String get titleLines => 'ଶୀର୍ଷକ ଧାଡ଼ି';

  @override
  String get shape => 'ଆକୃତି';

  @override
  String get posterShape => 'ପୋଷ୍ଟର୍ ଆକୃତି';

  @override
  String get cornerRadius => 'କୋଣ ଗୋଲାଇ';

  @override
  String get off => 'ବନ୍ଦ';

  @override
  String get topLeft => 'ଉପର ବାମ';

  @override
  String get topRight => 'ଉପର ଡାହାଣ';

  @override
  String get bottomLeft => 'ତଳ ବାମ';

  @override
  String get bottomRight => 'ତଳ ଡାହାଣ';

  @override
  String get overlays => 'ଓଭରଲେ';

  @override
  String get progressCount => 'ପ୍ରଗତି / ଗଣତି';

  @override
  String get pill => 'ପିଲ୍';

  @override
  String get bar => 'ବାର୍';

  @override
  String get outside => 'ବାହାରେ';

  @override
  String get scoreBadge => 'ସ୍କୋର୍ ବ୍ୟାଜ୍';

  @override
  String get airingDot => 'ପ୍ରସାରଣ ଡଟ୍';

  @override
  String get updateAvailable => 'ଅପଡେଟ୍ ଉପଲବ୍ଧ';

  @override
  String get notInstalled => 'ଇନଷ୍ଟଲ୍ ହୋଇନାହିଁ';

  @override
  String get done => 'ହୋଇଗଲା';

  @override
  String get searchOrEnterUrl => 'ଖୋଜନ୍ତୁ ବା URL ଦିଅନ୍ତୁ';

  @override
  String get refresh => 'ରିଫ୍ରେସ୍';

  @override
  String get animePlanetRank => 'ରାଙ୍କ୍';

  @override
  String get animePlanetMagazine => 'ପତ୍ରିକା';

  @override
  String get animePlanetRefreshLists => 'ତୁମର ତାଲିକା ସତେଜ କର |';

  @override
  String get animePlanetRefreshListsDesc =>
      'ପୁନର୍ବାର ତୁମର ଆନିମ-ପ୍ଲାନେଟ୍ ତାଲିକା ପ Read |';

  @override
  String get animePlanetLocalNote =>
      'ଆପଣଙ୍କର ଆନିମ-ପ୍ଲାନେଟ୍ ଆକାଉଣ୍ଟରେ ପରିବର୍ତ୍ତନ ସଞ୍ଚୟ କରିବାକୁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ | ସେ ପର୍ଯ୍ୟନ୍ତ ସେମାନେ ଏହି ଡିଭାଇସରେ ରହିଥା’ନ୍ତି |';

  @override
  String get share => 'ସେୟାର୍';

  @override
  String get characters => 'ଚରିତ୍ର';

  @override
  String get staff => 'ଷ୍ଟାଫ୍';

  @override
  String get readMore => 'ଆହୁରି ପଢ଼ନ୍ତୁ';

  @override
  String get couldNotLoadList => 'ତାଲିକା ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get logInToFavourite => 'ପସନ୍ଦ ଯୋଗ କରିବାକୁ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get alsoKnownAs => 'ଅନ୍ୟ ନାମ';

  @override
  String get hideSpoilerNames => 'ସ୍ପଏଲର୍ ନାମ ଲୁଚାନ୍ତୁ';

  @override
  String get showSpoilerNames => 'ସ୍ପଏଲର୍ ନାମ ଦେଖାନ୍ତୁ';

  @override
  String get favourited => 'ପସନ୍ଦରେ ଯୋଗ ହେଲା';

  @override
  String get favourite => 'ପସନ୍ଦ';

  @override
  String get couldNotOpenTitle => 'ଏହି ଶୀର୍ଷକ ଖୋଲିପାରିଲୁ ନାହିଁ';

  @override
  String get nobodyHereYet => 'ଏପର୍ଯ୍ୟନ୍ତ ଏଠି କେହି ନାହାନ୍ତି';

  @override
  String get noMatches => 'କୌଣସି ମେଳ ନାହିଁ';

  @override
  String get gridView => 'ଗ୍ରିଡ୍ ଭ୍ୟୁ';

  @override
  String get fullWidth => 'ପୂର୍ଣ୍ଣ ଚଉଡ଼ା';

  @override
  String get userNotFound => 'ୟୁଜର୍ ମିଳିଲେ ନାହିଁ';

  @override
  String get couldNotUpdateFollow => 'ଫଲୋ ଅପଡେଟ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String followedUser(String name) {
    return '$nameଙ୍କୁ ଫଲୋ କଲ';
  }

  @override
  String unfollowedUser(String name) {
    return '$nameଙ୍କୁ ଅନଫଲୋ କଲ';
  }

  @override
  String get messages => 'ମେସେଜ୍';

  @override
  String get logInToSeeMessages => 'ତୁମ ମେସେଜ୍ ଦେଖିବାକୁ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get editActivity => 'କାର୍ଯ୍ୟକଳାପ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get newActivity => 'ନୂଆ କାର୍ଯ୍ୟକଳାପ';

  @override
  String get editMessage => 'ମେସେଜ୍ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get writeMessage => 'ଏକ ମେସେଜ୍ ଲେଖନ୍ତୁ';

  @override
  String get editReply => 'ଉତ୍ତର ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get posted => 'ପୋଷ୍ଟ ହେଲା';

  @override
  String get couldNotPost => 'ପୋଷ୍ଟ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get nothingToPreview => 'ପ୍ରିଭ୍ୟୁ କରିବାକୁ କିଛି ନାହିଁ';

  @override
  String get writeSomethingHint =>
      'କିଛି ଲେଖନ୍ତୁ… ଏଠି AniList ମାର୍କଡାଉନ୍ କାମ କରେ';

  @override
  String get privateMessage => 'ବ୍ୟକ୍ତିଗତ ମେସେଜ୍';

  @override
  String get post => 'ପୋଷ୍ଟ';

  @override
  String get nothingHere => 'ଏଠି କିଛି ନାହିଁ';

  @override
  String get noAnimeProgress => 'ଆନିମେ ପ୍ରଗତି ନାହିଁ';

  @override
  String get noMangaProgress => 'ମାଙ୍ଗା ପ୍ରଗତି ନାହିଁ';

  @override
  String get noMessages => 'ମେସେଜ୍ ନାହିଁ';

  @override
  String get writeMessageHint => 'ଏକ ମେସେଜ୍ ଲେଖନ୍ତୁ…';

  @override
  String get shareSomethingHint => 'କିଛି ସେୟାର୍ କରନ୍ତୁ…';

  @override
  String get all => 'ସବୁ';

  @override
  String get anime => 'ଆନିମେ';

  @override
  String get manga => 'ମାଙ୍ଗା';

  @override
  String get count => 'ଗଣତି';

  @override
  String get hoursWatched => 'ଦେଖିଥିବା ଘଣ୍ଟା';

  @override
  String get chaptersRead => 'ପଢ଼ିଥିବା ଅଧ୍ୟାୟ';

  @override
  String get meanScore => 'ହାରାହାରି ସ୍କୋର୍';

  @override
  String get noStatsYet => 'ଏପର୍ଯ୍ୟନ୍ତ ପରିସଂଖ୍ୟାନ ନାହିଁ';

  @override
  String get totalEntries => 'ମୋଟ ଏଣ୍ଟ୍ରି';

  @override
  String get episodesWatched => 'ଦେଖିଥିବା ଏପିସୋଡ୍';

  @override
  String get daysWatched => 'ଦେଖିଥିବା ଦିନ';

  @override
  String get volumesRead => 'ପଢ଼ିଥିବା ଖଣ୍ଡ';

  @override
  String get standardDeviation => 'ମାନକ ବିଚ୍ୟୁତି';

  @override
  String get showMore => 'ଆହୁରି ଦେଖାନ୍ତୁ';

  @override
  String get followsYou => 'ତୁମକୁ ଫଲୋ କରୁଛି';

  @override
  String get nobodyYet => 'ଏପର୍ଯ୍ୟନ୍ତ କେହି ନାହାନ୍ତି';

  @override
  String get logInToLike => 'ଲାଇକ୍ କରିବାକୁ ଲଗ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get failedToLikeActivity => 'କାର୍ଯ୍ୟକଳାପ ଲାଇକ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get deleteActivityConfirm => 'କାର୍ଯ୍ୟକଳାପ ଡିଲିଟ୍ କରିବେ?';

  @override
  String get deletedActivity => 'କାର୍ଯ୍ୟକଳାପ ଡିଲିଟ୍ ହେଲା';

  @override
  String get failedToDeleteActivity => 'କାର୍ଯ୍ୟକଳାପ ଡିଲିଟ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get subscribed => 'ସବସ୍କ୍ରାଇବ୍ ହେଲା';

  @override
  String get unsubscribed => 'ଅନସବସ୍କ୍ରାଇବ୍ ହେଲା';

  @override
  String get failedToUpdateSubscription =>
      'ସବସ୍କ୍ରିପସନ୍ ଅପଡେଟ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get edit => 'ସମ୍ପାଦନ';

  @override
  String get delete => 'ଡିଲିଟ୍';

  @override
  String get likedBy => 'ଲାଇକ୍ କରିଛନ୍ତି';

  @override
  String get follow => 'ଫଲୋ';

  @override
  String get nameCopied => 'ନାମ କପି ହେଲା';

  @override
  String get followsEachOther => 'ପରସ୍ପରକୁ ଫଲୋ କରୁଛ';

  @override
  String get unfollow => 'ଅନଫଲୋ';

  @override
  String get userIdCopied => 'ୟୁଜର୍ ଆଇଡି କପି ହେଲା';

  @override
  String get shareProfile => 'ପ୍ରୋଫାଇଲ୍ ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get copyUserId => 'ୟୁଜର୍ ଆଇଡି କପି କରନ୍ତୁ';

  @override
  String get failedToDelete => 'ଡିଲିଟ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get failedToLike => 'ଲାଇକ୍ କରିବା ବିଫଳ ହେଲା';

  @override
  String get replies => 'ଉତ୍ତର';

  @override
  String get reply => 'ଉତ୍ତର ଦିଅନ୍ତୁ';

  @override
  String get noRepliesYet => 'ଏପର୍ଯ୍ୟନ୍ତ ଉତ୍ତର ନାହିଁ';

  @override
  String get favouriteAnime => 'ପସନ୍ଦର ଆନିମେ';

  @override
  String get favouriteManga => 'ପସନ୍ଦର ମାଙ୍ଗା';

  @override
  String get favouriteCharacters => 'ପସନ୍ଦର ଚରିତ୍ର';

  @override
  String get favouriteStaff => 'ପସନ୍ଦର ଷ୍ଟାଫ୍';

  @override
  String get favouriteStudios => 'ପସନ୍ଦର ଷ୍ଟୁଡିଓ';

  @override
  String get noFavouritesYet => 'ଏପର୍ଯ୍ୟନ୍ତ ପସନ୍ଦ ନାହିଁ';

  @override
  String get yourStory => 'ତୁମ କାହାଣୀ';

  @override
  String get copiedToClipboard => 'କ୍ଲିପ୍‌ବୋର୍ଡକୁ କପି ହେଲା';

  @override
  String get justNow => 'ଏହିମାତ୍ର';

  @override
  String get openImage => 'ଇମେଜ୍ ଖୋଲନ୍ତୁ';

  @override
  String get hideSpoiler => 'ସ୍ପଏଲର୍ ଲୁଚାନ୍ତୁ';

  @override
  String get showSpoiler => 'ସ୍ପଏଲର୍ ଦେଖାନ୍ତୁ';

  @override
  String get status => 'ସ୍ଥିତି';

  @override
  String get score => 'ସ୍କୋର୍';

  @override
  String get started => 'ଆରମ୍ଭ ହୋଇଛି';

  @override
  String get completed => 'ସମ୍ପୂର୍ଣ୍ଣ';

  @override
  String get private => 'ବ୍ୟକ୍ତିଗତ';

  @override
  String get hideFromStatusLists => 'ସ୍ଥିତି ତାଲିକାରୁ ଲୁଚାନ୍ତୁ';

  @override
  String get totalRepeats => 'ମୋଟ ପୁନରାବୃତ୍ତି';

  @override
  String get other => 'ଅନ୍ୟ';

  @override
  String get customLists => 'କଷ୍ଟମ୍ ତାଲିକା';

  @override
  String get activeDays => 'ସକ୍ରିୟ ଦିନ';

  @override
  String get longestStreak => 'ସବୁଠୁ ଲମ୍ବା ଧାରା';

  @override
  String get currentStreak => 'ବର୍ତ୍ତମାନ ଧାରା';

  @override
  String get tapOrHoverDay => 'ଏକ ଦିନକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ ବା ହୋଭର୍ କରନ୍ତୁ';

  @override
  String get less => 'କମ୍';

  @override
  String get more => 'ଅଧିକ';

  @override
  String epIn(int ep, String time) {
    return 'ଏପି $ep $time ପରେ';
  }

  @override
  String get sectionLoading => 'ଲୋଡ୍ ହେଉଛି';

  @override
  String get querySize => 'କ୍ୱେରୀ ଆକାର';

  @override
  String get querySizeDesc =>
      'ଗୋଟିଏ ବଡ଼ କ୍ୱେରୀ ଗୋଟିଏ ଅନୁରୋଧରେ ସବୁ ଧାଡ଼ି (ଓ ପୂରା ପ୍ରୋଫାଇଲ୍) ଲୋଡ୍ କରେ। ବିଭକ୍ତ କ୍ୱେରୀ ପ୍ରତି ଧାଡ଼ି ବା ପ୍ରୋଫାଇଲ୍ ଅଂଶ ପାଇଁ ଛୋଟ ଅନୁରୋଧ ପଠାଏ: ପ୍ରତ୍ୟେକ ଦ୍ରୁତ ଓ ଅଂଶ ଆସିବା ମାତ୍ରେ ଦେଖାଯାଏ।';

  @override
  String get oneBig => 'ଗୋଟିଏ ବଡ଼';

  @override
  String get split => 'ବିଭକ୍ତ';

  @override
  String get sectionSocial => 'ସୋସିଆଲ୍';

  @override
  String get systemNotifications => 'ସିଷ୍ଟମ୍ ବିଜ୍ଞପ୍ତି';

  @override
  String get feedLayout => 'ଫିଡ୍ ଲେଆଉଟ୍';

  @override
  String sectionsShown(int shown, int total) {
    return '$total ମଧ୍ୟରୁ $shown ଦେଖାଯାଉଛି — ବାଛିବାକୁ ଓ କ୍ରମ ବଦଳାଇବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';
  }

  @override
  String labelSections(String label) {
    return '$label ବିଭାଗ';
  }

  @override
  String get accountOptions => 'ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

  @override
  String get anilistAccountOptions => 'AniList ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

  @override
  String get sectionPrivacy => 'ଗୋପନୀୟତା';

  @override
  String get hidePrivateEntries => 'ବ୍ୟକ୍ତିଗତ ଏଣ୍ଟ୍ରି ଲୁଚାନ୍ତୁ';

  @override
  String get hidePrivateEntriesDesc =>
      'AniListରେ ବ୍ୟକ୍ତିଗତ ଚିହ୍ନିତ ଏଣ୍ଟ୍ରିକୁ ଫିଡ୍‌ରୁ ଦୂରରେ ରଖନ୍ତୁ';

  @override
  String get anilistExcludeList => 'ଆପଣଙ୍କ ତାଲିକା ବାଦ୍ ଦିଅନ୍ତୁ';

  @override
  String get anilistExcludeListDesc =>
      'ଆପଣଙ୍କ AniList ରେ ଥିବା ଟାଇଟଲ୍ ଗୁଡ଼ିକୁ ଆନିମେ ଓ ମାଙ୍ଗା ପେଜ୍ ରୁ ହଟାନ୍ତୁ';

  @override
  String get anilistProfile => 'AniList ପ୍ରୋଫାଇଲ୍';

  @override
  String get refreshFromAnilist => 'AniListରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList ସେଟିଂସ୍ ଅପଡେଟ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get sectionNames => 'ନାମ';

  @override
  String get titleLanguage => 'ଶୀର୍ଷକ ଭାଷା';

  @override
  String get titleLanguageDesc =>
      'ସବୁଠି ଶୀର୍ଷକ କିପରି ଲେଖାଯିବ, ଯେପରି Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'ଷ୍ଟାଫ୍ ଓ ଚରିତ୍ର ନାମ';

  @override
  String get sectionLists => 'ତାଲିକା';

  @override
  String get scoreFormat => 'ସ୍କୋର୍ ଫର୍ମାଟ୍';

  @override
  String get sortListsBy => 'ତାଲିକା ଏହି ଅନୁସାରେ ସଜାନ୍ତୁ';

  @override
  String labelCustomLists(String label) {
    return '$label କଷ୍ଟମ୍ ତାଲିକା';
  }

  @override
  String customListsCount(int count) {
    return '$countଟି ତାଲିକା — ଯୋଗ ବା ହଟାଇବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';
  }

  @override
  String get mergeActivities => 'କାର୍ଯ୍ୟକଳାପ ମିଶାନ୍ତୁ';

  @override
  String minutesCount(int count) {
    return '$count ମିନିଟ୍';
  }

  @override
  String get timezone => 'ଟାଇମଜୋନ୍';

  @override
  String get notSet => 'ସେଟ୍ ହୋଇନାହିଁ';

  @override
  String get airingNotifications => 'ପ୍ରସାରଣ ବିଜ୍ଞପ୍ତି';

  @override
  String get airingNotificationsDesc =>
      'ଫଲୋ କରିଥିବା ସୋ\'ର ଏପିସୋଡ୍ ପ୍ରସାରିତ ହେଲେ ଜଣାନ୍ତୁ';

  @override
  String get displayAdultContent => 'ବୟସ୍କ କଣ୍ଟେଣ୍ଟ ଦେଖାନ୍ତୁ';

  @override
  String get displayAdultContentDesc =>
      'ବ୍ରାଉଜ୍, ସର୍ଚ୍ଚ ଓ ଫିଡ୍‌ରେ 18+ ଶୀର୍ଷକ ଅନ୍ତର୍ଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get restrictMessages =>
      'ମେସେଜ୍ ଫଲୋ କରିଥିବା ଲୋକଙ୍କ ପର୍ଯ୍ୟନ୍ତ ସୀମିତ କରନ୍ତୁ';

  @override
  String get restrictMessagesDesc =>
      'ତୁମେ ଫଲୋ କରୁଥିବା ଲୋକ କେବଳ ତୁମକୁ ମେସେଜ୍ କରିପାରିବେ';

  @override
  String get sectionServices => 'ସର୍ଭିସ୍';

  @override
  String get novel => 'ନଭେଲ୍';

  @override
  String labelService(String label) {
    return '$label ସର୍ଭିସ୍';
  }

  @override
  String nameSettings(String name) {
    return '$name ସେଟିଂସ୍';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name ଏକ୍ସଟେନସନ୍ ବ୍ରିଜ୍‌ର ବିକଳ୍ପ';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ଆରମ୍ଭ ହୋଇପାରିଲା ନାହିଁ: $error';
  }

  @override
  String get importLists => 'ତାଲିକା ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi ବା Kotatsu ବ୍ୟାକଅପ୍‌ରୁ';

  @override
  String get exportLists => 'ତାଲିକା ଏକ୍ସପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon ବା Kotatsu ବ୍ୟାକଅପ୍‌କୁ';

  @override
  String get sectionBrowse => 'ବ୍ରାଉଜ୍';

  @override
  String get readingTab => 'ପଢ଼ିବା ଟ୍ୟାବ୍';

  @override
  String get readingTabDesc => 'ତୃତୀୟ ଟ୍ୟାବ୍ କେଉଁ ଏକ୍ସଟେନସନ୍ ଦେଖାଏ';

  @override
  String get firstTab => 'ପ୍ରଥମ ଟ୍ୟାବ୍ |';

  @override
  String get firstTabDesc =>
      'ପ୍ରଥମ ଟ୍ୟାବ୍ କେଉଁ ଏକ୍ସଟେନ୍ସନ୍ ଦେଖାଏ | ବାରରୁ ଆନିମ ପକାଇବା ପାଇଁ ଏଠାରେ ମାଙ୍ଗା ଏବଂ ପଠନ ଟ୍ୟାବରେ ଉପନ୍ୟାସ ବାଛ |';

  @override
  String get novelExtensions => 'ଉପନ୍ୟାସ ବିସ୍ତାର';

  @override
  String get defaultFeed => 'ଡିଫଲ୍ଟ ଫିଡ୍';

  @override
  String get defaultFeedDesc => 'ଉତ୍ସ କେଉଁ ତାଲିକା ସହ ଖୋଲେ';

  @override
  String noServiceSupports(String type) {
    return 'କୌଣସି ସର୍ଭିସ୍ $type ସମର୍ଥନ କରେ ନାହିଁ';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed ମଧ୍ୟରୁ $loadedଟି ଉତ୍ସ ଲୋଡ୍ ହେଉଛି';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ଏଠି କୌଣସି ଏକ୍ସଟେନସନ୍ ସର୍ଭିସ୍ $type ସମର୍ଥନ କରେ ନାହିଁ।';
  }

  @override
  String get loadDataFrom => 'ଏଠାରୁ ଡାଟା ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ଏପର୍ଯ୍ୟନ୍ତ ଇନଷ୍ଟଲ୍ ହୋଇଥିବା $type ଉତ୍ସ ନାହିଁ।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name ପାଇଁ ଏକ୍ସଟେନସନ୍ ଇନଷ୍ଟଲ୍ ହୋଇନାହିଁ';
  }

  @override
  String get thisSource => 'ଏହି ଉତ୍ସ';

  @override
  String failedToAddRepository(String error) {
    return 'ରିପୋଜିଟୋରି ଯୋଗ କରିବା ବିଫଳ ହେଲା: $error';
  }

  @override
  String installedType(String type) {
    return 'ଇନଷ୍ଟଲ୍ ହୋଇଥିବା $type';
  }

  @override
  String availableType(String type) {
    return 'ଉପଲବ୍ଧ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ଇନଷ୍ଟଲ୍ ହୋଇଥିବା $type ଏକ୍ସଟେନସନ୍ ନାହିଁ';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ଉପଲବ୍ଧ $type ଏକ୍ସଟେନସନ୍ ନାହିଁ';
  }

  @override
  String get nothingToShowYet => 'ଏପର୍ଯ୍ୟନ୍ତ ଦେଖାଇବାକୁ କିଛି ନାହିଁ';

  @override
  String get addTitlesHint =>
      'ତୁମ ତାଲିକାରେ କିଛି ଶୀର୍ଷକ ଯୋଗ କର, ସେଗୁଡ଼ିକ ଏଠି ଦେଖାଯିବ।';

  @override
  String get couldntLoad => 'ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get progressStyleHint =>
      'ପିଲ୍ ଓ ବାର୍ ପୋଷ୍ଟର୍ ଉପରେ ରହେ; ବାହାରେ ସେହି ଗଣତିକୁ ସାଧାରଣ ଟେକ୍ସଟ୍ ଭାବରେ ଦେଖାଏ — ଗୋଟିଏ ବାଛନ୍ତୁ।';

  @override
  String get nixManagedUpdate =>
      'ଏହି ବିଲ୍ଡ Nix ଦ୍ୱାରା ପରିଚାଳିତ — ଏଠାରୁ ଅପଡେଟ୍ ନକରି ତୁମ flakeରେ \"nix flake update\" ଚଲାଇ ପୁଣି ବିଲ୍ଡ କରନ୍ତୁ';

  @override
  String autoUpdateFailed(String error) {
    return 'ସ୍ୱୟଂଚାଳିତ ଅପଡେଟ୍ ବିଫଳ ହେଲା ($error) — ଏହା ବଦଳରେ ଡାଉନଲୋଡ୍ ପୃଷ୍ଠା ଖୋଲୁଛି';
  }

  @override
  String get unknownPreference => 'ଅଜଣା ପସନ୍ଦ';

  @override
  String unsupportedPreferenceType(String type) {
    return 'ସମର୍ଥିତ ନଥିବା ପସନ୍ଦ ପ୍ରକାର $type';
  }

  @override
  String get notYetReleased => 'ଏପର୍ଯ୍ୟନ୍ତ ରିଲିଜ୍ ହୋଇନାହିଁ';

  @override
  String get notStarted => 'ଆରମ୍ଭ ହୋଇନାହିଁ';

  @override
  String get country => 'ଦେଶ';

  @override
  String get sort => 'କ୍ରମ';

  @override
  String get chooseBackupDialog =>
      'ଏକ Aniyomi, Mihon ବା Kotatsu ବ୍ୟାକଅପ୍ ବାଛନ୍ତୁ';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi ବା Kotatsuରୁ ଏକ ଲାଇବ୍ରେରୀ ଆଣନ୍ତୁ। ଶୀର୍ଷକ, କଭର୍, ପ୍ରଗତି ଓ ବର୍ଗ ରହିଥାଏ।';

  @override
  String get chooseBackupFile => 'ବ୍ୟାକଅପ୍ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String importAnimeCount(int count) {
    return '$countଟି ଆନିମେ ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';
  }

  @override
  String importMangaCount(int count) {
    return '$countଟି ମାଙ୍ଗା ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';
  }

  @override
  String get mergeWithExisting => 'ବିଦ୍ୟମାନ ତାଲିକା ସହ ମିଶାନ୍ତୁ';

  @override
  String get mergeWithExistingDesc =>
      'ତୁମ ପାଖରେ ଥିବା ରଖେ; ବନ୍ଦ ଥିଲେ ମେଳ ଖାଉଥିବା ଶୀର୍ଷକକୁ ବଦଳାଏ';

  @override
  String get chooseAnother => 'ଅନ୍ୟଟି ବାଛନ୍ତୁ';

  @override
  String get import => 'ଇମ୍ପୋର୍ଟ୍';

  @override
  String animeCount(int count) {
    return '$countଟି ଆନିମେ';
  }

  @override
  String mangaCount(int count) {
    return '$countଟି ମାଙ୍ଗା';
  }

  @override
  String get chooseSaveLocation => 'ବ୍ୟାକଅପ୍ କେଉଁଠି ସେଭ୍ କରିବେ ବାଛନ୍ତୁ';

  @override
  String savedPath(String path) {
    return '$path ସେଭ୍ ହେଲା';
  }

  @override
  String exportFailed(String error) {
    return 'ଏକ୍ସପୋର୍ଟ୍ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get nothingInLocalLists =>
      'ତୁମ ଲୋକାଲ୍ ତାଲିକାରେ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'ତୁମ ଲୋକାଲ୍ ତାଲିକାରୁ $animeଟି ଆନିମେ ଓ $mangaଟି ମାଙ୍ଗା ଏକ୍ସପୋର୍ଟ୍ କରେ। Kotatsu କେବଳ ମାଙ୍ଗା ସମର୍ଥନ କରେ।';
  }

  @override
  String get saveToFolder => 'ଫୋଲ୍ଡରରେ ସେଭ୍ କରନ୍ତୁ';

  @override
  String get formatAnimeManga => 'ଆନିମେ ଓ ମାଙ୍ଗା · .tachibk';

  @override
  String get formatMangaTachibk => 'କେବଳ ମାଙ୍ଗା · .tachibk';

  @override
  String get formatMangaZip => 'କେବଳ ମାଙ୍ଗା · .zip';

  @override
  String get genres => 'ଧରଣ';

  @override
  String get relations => 'ସମ୍ପର୍କ';

  @override
  String get recommendations => 'ସୁପାରିଶ';

  @override
  String get openings => 'ଓପନିଂ';

  @override
  String get endings => 'ଏଣ୍ଡିଂ';

  @override
  String get background => 'ପୃଷ୍ଠଭୂମି';

  @override
  String get links => 'ଲିଙ୍କ୍';

  @override
  String get rank => 'ରାଙ୍କ୍';

  @override
  String get members => 'ସଦସ୍ୟ';

  @override
  String get favorites => 'ପସନ୍ଦ';

  @override
  String get episodes => 'ଏପିସୋଡ୍';

  @override
  String get chapters => 'ଅଧ୍ୟାୟ';

  @override
  String get volumes => 'ଖଣ୍ଡ';

  @override
  String get format => 'ଫର୍ମାଟ୍';

  @override
  String get source => 'ଉତ୍ସ';

  @override
  String get duration => 'ଅବଧି';

  @override
  String minutesPerEpisode(int minutes) {
    return 'ପ୍ରତି ଏପିସୋଡ୍ $minutes ମିନିଟ୍';
  }

  @override
  String get rating => 'ରେଟିଂ';

  @override
  String get studio => 'ଷ୍ଟୁଡିଓ';

  @override
  String get serialization => 'ସିରିଆଲାଇଜେସନ୍';

  @override
  String get season => 'ସିଜନ୍';

  @override
  String get year => 'ବର୍ଷ';

  @override
  String get filterAny => 'ଯେକ .ଣସି';

  @override
  String get broadcast => 'ପ୍ରସାରଣ';

  @override
  String get aired => 'ପ୍ରସାରିତ';

  @override
  String get published => 'ପ୍ରକାଶିତ';

  @override
  String get popularity => 'ଲୋକପ୍ରିୟତା';

  @override
  String get community => 'ସମ୍ପ୍ରଦାୟ';

  @override
  String get watching => 'ଦେଖୁଛି';

  @override
  String get reading => 'ପଢ଼ୁଛି';

  @override
  String get dropped => 'ଛାଡ଼ିଦେଇଛି';

  @override
  String get unfinished => 'ଅସମାପ୍ତ';

  @override
  String get planned => 'ଯୋଜନାରେ';

  @override
  String get trailers => 'ଟ୍ରେଲର୍';

  @override
  String get ratings => 'ରେଟିଂ';

  @override
  String get originalTitle => 'ମୂଳ';

  @override
  String get titleLabel => 'ଶୀର୍ଷକ';

  @override
  String get votes => 'ଭୋଟ୍';

  @override
  String get watchedStat => 'ଦେଖିସାରିଛି';

  @override
  String get runtime => 'ରନଟାଇମ୍';

  @override
  String get director => 'ନିର୍ଦ୍ଦେଶକ';

  @override
  String get network => 'ନେଟୱାର୍କ';

  @override
  String get certification => 'ସର୍ଟିଫିକେସନ୍';

  @override
  String get airs => 'ପ୍ରସାରିତ ହୁଏ';

  @override
  String get budget => 'ବଜେଟ୍';

  @override
  String get revenue => 'ରାଜସ୍ୱ';

  @override
  String get released => 'ରିଲିଜ୍ ହୋଇଛି';

  @override
  String get tags => 'ଟ୍ୟାଗ୍';

  @override
  String get author => 'ଲେଖକ';

  @override
  String get born => 'ଜନ୍ମ';

  @override
  String get died => 'ମୃତ୍ୟୁ';

  @override
  String get birthplace => 'ଜନ୍ମସ୍ଥାନ';

  @override
  String get department => 'ବିଭାଗ';

  @override
  String get website => 'ୱେବସାଇଟ୍';

  @override
  String get established => 'ପ୍ରତିଷ୍ଠା';

  @override
  String get manhwa => 'ମାନହ୍ୱା';

  @override
  String get manhua => 'ମାନହୁଆ';

  @override
  String get novels => 'ନଭେଲ୍';

  @override
  String get thisMonth => 'ଏହି ମାସ';

  @override
  String get movies => 'ସିନେମା';

  @override
  String get shows => 'ସୋ';

  @override
  String get moviesWatched => 'ଚଳଚ୍ଚିତ୍ର ଦେଖାଗଲା |';

  @override
  String get showsWatched => 'ଦେଖାଯାଇଥିବା ଦେଖାଏ |';

  @override
  String get moviesCollected => 'ଚଳଚ୍ଚିତ୍ର ସଂଗୃହିତ |';

  @override
  String get showsCollected => 'ସଂଗୃହିତ ଶୋଗୁଡିକ |';

  @override
  String get rewatching => 'ପୁଣି ଦେଖୁଛି';

  @override
  String get rereading => 'ପୁଣି ପଢ଼ୁଛି';

  @override
  String get watchedStatus => 'ଦେଖିସାରିଛି';

  @override
  String get planning => 'ଯୋଜନାରେ';

  @override
  String get paused => 'ବିରତିରେ';

  @override
  String get watch => 'ଦେଖନ୍ତୁ';

  @override
  String get read => 'ପଢ଼ନ୍ତୁ';

  @override
  String get finished => 'ସମାପ୍ତ';

  @override
  String get releasing => 'ପ୍ରସାରିତ ହେଉଛି';

  @override
  String get cancelled => 'ବାତିଲ୍ ହୋଇଛି';

  @override
  String get hiatus => 'ବିରତି';

  @override
  String get remove => 'ହଟାନ୍ତୁ';

  @override
  String syncToService(String service) {
    return '$serviceରେ ସିଙ୍କ୍ କରନ୍ତୁ';
  }

  @override
  String syncedToService(String service) {
    return '$serviceରେ ସିଙ୍କ୍ ହେଲା';
  }

  @override
  String get latestReleases => 'ସର୍ବଶେଷ ରିଲିଜ୍';

  @override
  String get topRated => 'ସର୍ବାଧିକ ରେଟିଂ';

  @override
  String localSection(String title) {
    return '$title · ଲୋକାଲ୍';
  }

  @override
  String get localEntryNote =>
      'ଏହି ଶୀର୍ଷକ କେବଳ ଏହି ଡିଭାଇସ୍‌ର ତୁମ ଲୋକାଲ୍ ତାଲିକାରେ ଅଛି। ଏଠି ସମ୍ପାଦନା ବନ୍ଦ ଅଛି କାରଣ ଏହା ତୁମ ଆକାଉଣ୍ଟ ତାଲିକା ସହ ଟକ୍କର ହୋଇପାରେ; ତଥାପି ତୁମେ ଏହାକୁ ହଟାଇପାରିବ।';

  @override
  String get cardPresetPoster => 'ପୋଷ୍ଟର୍';

  @override
  String get cardPresetCard => 'କାର୍ଡ';

  @override
  String get cardPresetCozy => 'ଆରାମଦାୟକ';

  @override
  String get sortTopRated => 'ସର୍ବାଧିକ ରେଟିଂ';

  @override
  String get sortMostPopular => 'ସବୁଠୁ ଲୋକପ୍ରିୟ';

  @override
  String get sortTrending => 'ଟ୍ରେଣ୍ଡିଂ';

  @override
  String get sortNewest => 'ନୂତନତମ';

  @override
  String get sortAz => 'A - Z';

  @override
  String get sortMostFavourited => 'ସବୁଠୁ ପସନ୍ଦର';

  @override
  String get anyCountry => 'ଯେକୌଣସି ଦେଶ';

  @override
  String get orderScore => 'ସ୍କୋର୍';

  @override
  String get orderTitle => 'ଶୀର୍ଷକ';

  @override
  String get orderLastUpdated => 'ଶେଷ ଅପଡେଟ୍';

  @override
  String get orderLastAdded => 'ଶେଷ ଯୋଗ';

  @override
  String get never => 'କେବେ ନୁହେଁ';

  @override
  String get always => 'ସବୁବେଳେ';

  @override
  String get scorePoint100 => '୧୦୦ ପଏଣ୍ଟ';

  @override
  String get scorePoint10Decimal => '୧୦ ପଏଣ୍ଟ ଦଶମିକ';

  @override
  String get scorePoint10 => '୧୦ ପଏଣ୍ଟ';

  @override
  String get scorePoint5 => '୫ ତାରା';

  @override
  String get scorePoint3 => '୩ ପଏଣ୍ଟ ସ୍ମାଇଲି';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଘଣ୍ଟା',
      one: '୧ ଘଣ୍ଟା',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଦିନ',
      one: '୧ ଦିନ',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସପ୍ତାହ',
      one: '୧ ସପ୍ତାହ',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ପୁନଃଆରମ୍ଭ';

  @override
  String get resumeSourceMissing =>
      'ପୁନଃଆରମ୍ଭ କରିବାକୁ ଏହି ଶୀର୍ଷକର ଉତ୍ସ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get resumeRemove => 'ପୁନଃଆରମ୍ଭରୁ ହଟାନ୍ତୁ';

  @override
  String resumeAt(String time) {
    return '$time ବାକି';
  }

  @override
  String resumePage(int page, int total) {
    return '$total ମଧ୍ୟରୁ ପୃଷ୍ଠା $page';
  }

  @override
  String get continueWatching => 'ଦେଖିବା ଜାରି ରଖନ୍ତୁ';

  @override
  String get continueReading => 'ପଢ଼ିବା ଜାରି ରଖନ୍ତୁ';

  @override
  String get favouriteAnimeSection => 'ପସନ୍ଦର ଆନିମେ';

  @override
  String get favouriteMangaSection => 'ପସନ୍ଦର ମାଙ୍ଗା';

  @override
  String get plannedAnime => 'ଯୋଜନାରେ ଥିବା ଆନିମେ';

  @override
  String get plannedManga => 'ଯୋଜନାରେ ଥିବା ମାଙ୍ଗା';

  @override
  String get completedAnime => 'ସମ୍ପୂର୍ଣ୍ଣ ଆନିମେ';

  @override
  String get completedManga => 'ସମ୍ପୂର୍ଣ୍ଣ ମାଙ୍ଗା';

  @override
  String get hiddenMedia => 'ଲୁକ୍କାୟିତ ମିଡିଆ';

  @override
  String get recentUpdates => 'ସାମ୍ପ୍ରତିକ ଅପଡେଟ୍';

  @override
  String get trendingNow => 'ଏବେ ଟ୍ରେଣ୍ଡିଂ';

  @override
  String get popularThisSeason => 'ଏହି ସିଜନ୍‌ରେ ଲୋକପ୍ରିୟ';

  @override
  String get trendingMovies => 'ଟ୍ରେଣ୍ଡିଂ ସିନେମା';

  @override
  String get topRatedSeries => 'ସର୍ବାଧିକ ରେଟିଂ ସିରିଜ୍';

  @override
  String get mostFavouriteSeries => 'ସବୁଠୁ ପସନ୍ଦର ସିରିଜ୍';

  @override
  String get popularAnime => 'ଲୋକପ୍ରିୟ ଆନିମେ';

  @override
  String get trendingManhwa => 'ଟ୍ରେଣ୍ଡିଂ ମାନହ୍ୱା';

  @override
  String get trendingNovels => 'ଟ୍ରେଣ୍ଡିଂ ନଭେଲ୍';

  @override
  String get topRatedManga => 'ସର୍ବାଧିକ ରେଟିଂ ମାଙ୍ଗା';

  @override
  String get mostFavouriteManga => 'ସବୁଠୁ ପସନ୍ଦର ମାଙ୍ଗା';

  @override
  String get popularManga => 'ଲୋକପ୍ରିୟ ମାଙ୍ଗା';

  @override
  String get topMovies => 'ଶ୍ରେଷ୍ଠ ସିନେମା';

  @override
  String get topOna => 'ଶ୍ରେଷ୍ଠ ONA';

  @override
  String get topOva => 'ଶ୍ରେଷ୍ଠ OVA';

  @override
  String get mostPopular => 'ସବୁଠୁ ଲୋକପ୍ରିୟ';

  @override
  String get mostFavourite => 'ସବୁଠୁ ପସନ୍ଦର';

  @override
  String get upcoming => 'ଆସୁଥିବା';

  @override
  String get topManga => 'ଶ୍ରେଷ୍ଠ ମାଙ୍ଗା';

  @override
  String get topManhwa => 'ଶ୍ରେଷ୍ଠ ମାନହ୍ୱା';

  @override
  String get topManhua => 'ଶ୍ରେଷ୍ଠ ମାନହୁଆ';

  @override
  String get topNovels => 'ଶ୍ରେଷ୍ଠ ନଭେଲ୍';

  @override
  String get topOneShots => 'ଶ୍ରେଷ୍ଠ ୱାନ୍-ଶଟ୍';

  @override
  String get trendingMoviesToday => 'ଆଜି ଟ୍ରେଣ୍ଡିଂ ସିନେମା';

  @override
  String get trendingShowsToday => 'ଆଜି ଟ୍ରେଣ୍ଡିଂ ସୋ';

  @override
  String get trendingMoviesWeek => 'ଏହି ସପ୍ତାହ ଟ୍ରେଣ୍ଡିଂ ସିନେମା';

  @override
  String get trendingShowsWeek => 'ଏହି ସପ୍ତାହ ଟ୍ରେଣ୍ଡିଂ ସୋ';

  @override
  String get mostWatchedMoviesMonth => 'ଏହି ମାସ ସବୁଠୁ ଅଧିକ ଦେଖାଯାଇଥିବା ସିନେମା';

  @override
  String get mostWatchedShowsMonth => 'ଏହି ମାସ ସବୁଠୁ ଅଧିକ ଦେଖାଯାଇଥିବା ସୋ';

  @override
  String get trendingThisWeek => 'ଏହି ସପ୍ତାହ ଟ୍ରେଣ୍ଡିଂ';

  @override
  String get mostWatchedThisMonth => 'ଏହି ମାସ ସବୁଠୁ ଅଧିକ ଦେଖାଯାଇଥିବା';

  @override
  String get repoLinksAdded => 'ରିପୋ ଲିଙ୍କ୍ ସଫଳତାର ସହ ଯୋଗ ହେଲା!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust।';
  }

  @override
  String get errorGettingAnilistData => 'AniListରୁ ଡାଟା ଆଣିବାରେ ତ୍ରୁଟି।';

  @override
  String get navInfo => 'ସୂଚନା';

  @override
  String get navComments => 'ମନ୍ତବ୍ୟ';

  @override
  String get playerNotAvailable => 'ପ୍ଲେୟାର୍ ଏପର୍ଯ୍ୟନ୍ତ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String deepLinkInitialError(String error) {
    return 'ପ୍ରାରମ୍ଭିକ ଡିପ୍ ଲିଙ୍କ୍ ଆଣିବାରେ ତ୍ରୁଟି: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'ଲିଙ୍କ୍ ଖୋଲିବାରେ ତ୍ରୁଟି: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ଏହି ଲିଙ୍କ୍ ଖୋଲିହେବ ନାହିଁ: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'ଲିଙ୍କ୍ ଖୋଲିବାରେ ତ୍ରୁଟି: $error';
  }

  @override
  String get forReleasingTitles => 'ବର୍ତ୍ତମାନ ପ୍ରସାରିତ ହେଉଥିବା ଶୀର୍ଷକ ପାଇଁ';

  @override
  String get progress => 'ପ୍ରଗତି';

  @override
  String get notes => 'ନୋଟ୍';

  @override
  String serviceNotFound(String id) {
    return 'ସର୍ଭିସ୍ \"$id\" ମିଳିଲା ନାହିଁ';
  }

  @override
  String get glassEffectEnabled => 'ଗ୍ଲାସ୍ ଇଫେକ୍ଟ ଚାଲୁ';

  @override
  String get glassEffectDisabled => 'ଗ୍ଲାସ୍ ଇଫେକ୍ଟ ବନ୍ଦ';

  @override
  String get materialYouEnabled => 'Material You ଚାଲୁ';

  @override
  String get materialYouDisabled => 'Material You ବନ୍ଦ';

  @override
  String get darkModeEnabled => 'ଡାର୍କ ମୋଡ୍ ଚାଲୁ';

  @override
  String get darkModeDisabled => 'ଡାର୍କ ମୋଡ୍ ବନ୍ଦ';

  @override
  String get animeList => 'ଆନିମେ ତାଲିକା';

  @override
  String get mangaList => 'ମାଙ୍ଗା ତାଲିକା';

  @override
  String ownerAnimeList(String owner) {
    return '$ownerଙ୍କ ଆନିମେ ତାଲିକା';
  }

  @override
  String ownerMangaList(String owner) {
    return '$ownerଙ୍କ ମାଙ୍ଗା ତାଲିକା';
  }

  @override
  String get loadingList => 'ତାଲିକା ଲୋଡ୍ ହେଉଛି';

  @override
  String get earlier => 'ପୂର୍ବରୁ';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଦିନ ପୂର୍ବେ',
      one: '୧ ଦିନ ପୂର୍ବେ',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଘଣ୍ଟା ପୂର୍ବେ',
      one: '୧ ଘଣ୍ଟା ପୂର୍ବେ',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ମିନିଟ୍ ପୂର୍ବେ',
      one: '୧ ମିନିଟ୍ ପୂର୍ବେ',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count ମି. ପୂର୍ବେ';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ଘଂ. ପୂର୍ବେ';
  }

  @override
  String daysAgoShort(int count) {
    return '$count ଦି. ପୂର୍ବେ';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count ସ. ପୂର୍ବେ';
  }

  @override
  String get couldntLoadSource => 'ଏହି ଉତ୍ସ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get followers => 'ଫଲୋୟର୍';

  @override
  String couldntLoadTitle(String title) {
    return '$title ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ଏହି ପ୍ରୋଫାଇଲ୍ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get profile => 'ପ୍ରୋଫାଇଲ୍';

  @override
  String get feed => 'ଫିଡ୍';

  @override
  String get stats => 'ପରିସଂଖ୍ୟାନ';

  @override
  String get received => 'ପ୍ରାପ୍ତ';

  @override
  String get sent => 'ପଠାଯାଇଛି';

  @override
  String get global => 'ଗ୍ଲୋବାଲ୍';

  @override
  String get couldntLoadPage => 'ଏହି ପୃଷ୍ଠା ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get couldntLoadAllDetails => 'ସବୁ ବିବରଣୀ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get series => 'ସିରିଜ୍';

  @override
  String get studios => 'ଷ୍ଟୁଡିଓ';

  @override
  String get users => 'ୟୁଜର୍';

  @override
  String repositoriesTitle(String type) {
    return '$type ରିପୋଜିଟୋରି';
  }

  @override
  String get repositoryUrl => 'ରିପୋଜିଟୋରି URL';

  @override
  String get downloadingRepository => 'ରିପୋଜିଟୋରି ଡାଉନଲୋଡ୍ ହେଉଛି…';

  @override
  String get noRepositories => 'କୌଣସି ରିପୋଜିଟୋରି ଯୋଗ ହୋଇନାହିଁ';

  @override
  String repoExtensionsCount(String count) {
    return '$countଟି ଏକ୍ସଟେନସନ୍';
  }

  @override
  String get searchExtensions => 'ଏକ୍ସଟେନସନ୍ ଖୋଜନ୍ତୁ...';

  @override
  String deletePluginTitle(String name) {
    return '$name ଡିଲିଟ୍ କରିବେ?';
  }

  @override
  String get deletePluginMessage =>
      'ତୁମେ ଏହି ପ୍ଲଗଇନ୍ ଡିଲିଟ୍ କରିବାକୁ ନିଶ୍ଚିତ କି?';

  @override
  String pluginDeleted(String name) {
    return '$name ଡିଲିଟ୍ ହେଲା';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name କନଫିଗର୍ ହୋଇଥିବା ରିପୋରେ ଉପଲବ୍ଧ ନାହିଁ';
  }

  @override
  String get pluginFetchFailed => 'ପ୍ଲଗଇନ୍ ସୂଚନା ଆଣିବା ବିଫଳ ହେଲା';

  @override
  String installPluginTitle(String name) {
    return '$name ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';
  }

  @override
  String sizeLabel(String size) {
    return 'ଆକାର: $size';
  }

  @override
  String get installedState => 'ଇନଷ୍ଟଲ୍ ହୋଇଛି';

  @override
  String updatePluginTitle(String name) {
    return '$name ଅଦ୍ୟତନ କରନ୍ତୁ |';
  }

  @override
  String get errorLabel => 'ତ୍ରୁଟି:';

  @override
  String get stackTraceDetails => 'ବିବରଣୀ (ଷ୍ଟାକ୍ ଟ୍ରେସ୍)';

  @override
  String get shareLogFile => 'ଲଗ୍ ଫାଇଲ୍ ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get copyLogs => 'ଲଗ୍ କପି କରନ୍ତୁ';

  @override
  String noListToEdit(String service) {
    return '$serviceର ସମ୍ପାଦନ ପାଇଁ କୌଣସି ତାଲିକା ନାହିଁ';
  }

  @override
  String get couldNotReadFile => 'ସେହି ଫାଇଲ୍ ପଢ଼ିପାରିଲୁ ନାହିଁ';

  @override
  String importedSummary(int anime, int manga) {
    return '$animeଟି ଆନିମେ ଓ $mangaଟି ମାଙ୍ଗା ଇମ୍ପୋର୍ଟ୍ ହେଲା';
  }

  @override
  String alreadyThere(int count) {
    return ' · $countଟି ପୂର୍ବରୁ ଅଛି';
  }

  @override
  String get airingNow => 'ଏବେ ପ୍ରସାରିତ ହେଉଛି';

  @override
  String get topRatedMovies => 'ସର୍ବାଧିକ ରେଟିଂ ସିନେମା';

  @override
  String get koreanDramas => 'କୋରିଆନ୍ ଡ୍ରାମା';

  @override
  String get chineseDramas => 'ଚାଇନିଜ୍ ଡ୍ରାମା';

  @override
  String get japaneseDramas => 'ଜାପାନିଜ୍ ଡ୍ରାମା';

  @override
  String get thaiDramas => 'ଥାଇ ଡ୍ରାମା';

  @override
  String get turkishDramas => 'ଟର୍କିସ୍ ଡ୍ରାମା';

  @override
  String get miniSeries => 'ମିନି ସିରିଜ୍';

  @override
  String get topRatedShows => 'ସର୍ବାଧିକ ରେଟିଂ ସୋ';

  @override
  String get recommendedSection => 'ସୁପାରିଶିତ';

  @override
  String get syncRow => 'ତାଲିକା ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get syncRowDesc =>
      'ଗୋଟିଏ ସର୍ଭିସ୍‌ର ତାଲିକାକୁ ତୁମ ଅନ୍ୟ ଆକାଉଣ୍ଟରେ ନକଲ କରନ୍ତୁ';

  @override
  String get syncTitle => 'ସିଙ୍କ୍';

  @override
  String get syncMainService => 'ମୁଖ୍ୟ ସର୍ଭିସ୍';

  @override
  String get syncMainServiceDesc =>
      'ଏହାର ତାଲିକା ହିଁ ଆଧାର; ଅନ୍ୟ ପ୍ରତ୍ୟେକ ସାଇନ୍ ଇନ୍ ହୋଇଥିବା ସର୍ଭିସ୍ ଏହା ସହ ମେଳ ଖାଇବା ପାଇଁ ଅପଡେଟ୍ ହୁଏ';

  @override
  String get syncAuto => 'ଅଟୋ ସିଙ୍କ୍';

  @override
  String get syncAutoDesc =>
      'ଆପ୍ ଖୋଲିଲେ ଓ ପ୍ରତି ୩୦ ମିନିଟ୍‌ରେ ବ୍ୟାକଗ୍ରାଉଣ୍ଡରେ ଆଣନ୍ତୁ ଓ ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get syncAddMissing => 'ନଥିବା ଏଣ୍ଟ୍ରି ଯୋଗ କରନ୍ତୁ';

  @override
  String get syncAddMissingDesc =>
      'ଅନ୍ୟ ସର୍ଭିସ୍‌ରେ ଏପର୍ଯ୍ୟନ୍ତ ନଥିବା ଏଣ୍ଟ୍ରି ମଧ୍ୟ ଯୋଗ କରନ୍ତୁ';

  @override
  String syncServiceOn(String name) {
    return '$name ସହିତ ସିଙ୍କ କରନ୍ତୁ |';
  }

  @override
  String get syncDelete => 'ମୁଖ୍ୟ ସେବା ଯାହା ନାହିଁ ତାହା ବିଲୋପ କରନ୍ତୁ |';

  @override
  String get syncDeleteDesc =>
      'ଅନ୍ୟ ତାଲିକାରେ ଥିବା ଏଣ୍ଟ୍ରିଗୁଡିକ ଅପସାରଣ କରନ୍ତୁ ଯାହା ମୁଖ୍ୟ ତାଲିକାରେ ନାହିଁ | କେବଳ ଏଣ୍ଟ୍ରିଗୁଡିକ ଯାହା ଏକ ଟାଇଟଲ୍ ସହିତ ମେଳ ହୋଇପାରିବ, ଅପସାରିତ ହୁଏ, ତେଣୁ ସିମ୍କଲ୍ ଚଳଚ୍ଚିତ୍ର ଏବଂ ସିରିଜ୍ ପରି ଜିନିଷଗୁଡିକ ରହିଥାଏ |';

  @override
  String get syncDeleteTitle => 'ଏଣ୍ଟ୍ରିଗୁଡିକ ବିଲୋପ କରିବେ କି?';

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
  String get syncDeleteAction => 'ବିଲୋପ କରନ୍ତୁ |';

  @override
  String get syncToDelete => 'ବିଲୋପ କରିବାକୁ';

  @override
  String get syncDeletedNote => 'ଡିଲିଟ୍ ହେବ |';

  @override
  String syncWillRemove(int count, String name) {
    return '$count $name ରୁ ବିଲୋପ ହେବ |';
  }

  @override
  String get syncOnlyForward => 'ଅଧିକ ପ୍ରଗତି ରଖନ୍ତୁ';

  @override
  String get syncOnlyForwardDesc => 'ଆଗରେ ଥିବା ସର୍ଭିସ୍‌ର ପ୍ରଗତି କମାନ୍ତୁ ନାହିଁ';

  @override
  String get animePlanetWontWatch => 'ଦେଖିବ ନାହିଁ |';

  @override
  String get animePlanetWontRead => 'ପ read ିବ ନାହିଁ |';

  @override
  String get animePlanetAlreadyOnList => 'ଏହି ତାଲିକାରେ ପୂର୍ବରୁ |';

  @override
  String get animePlanetNewList => 'ନୂତନ ତାଲିକା ନାମ |';

  @override
  String get syncPrivate => 'ବ୍ୟକ୍ତିଗତ ଏଣ୍ଟ୍ରିଗୁଡିକ |';

  @override
  String get syncPrivateDesc =>
      'ଆପଣ ବ୍ୟକ୍ତିଗତ ରଖୁଥିବା ଏଣ୍ଟ୍ରିଗୁଡିକ ସହିତ କଣ କରିବେ | ଏକ ବ୍ୟକ୍ତିଗତ ବିକଳ୍ପ ସହିତ ଏକ ସେବା ସେମାନଙ୍କୁ ବ୍ୟକ୍ତିଗତ କରିଥାଏ; ଅନ୍ୟମାନେ ସେମାନଙ୍କୁ ସର୍ବସାଧାରଣରେ ଦେଖାଇବେ |';

  @override
  String get syncPrivateModeAsk => 'ପଚାର |';

  @override
  String get syncPrivateModeSync => 'ସେଗୁଡିକୁ ସିଙ୍କ୍ କରନ୍ତୁ |';

  @override
  String get syncPrivateModeSkip => 'ସେମାନଙ୍କୁ ଛାଡିଦିଅ |';

  @override
  String get syncPrivateTitle => 'ବ୍ୟକ୍ତିଗତ ଏଣ୍ଟ୍ରିଗୁଡିକ |';

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
  String get syncPrivateInclude => 'ସେଗୁଡିକୁ ସିଙ୍କ୍ କରନ୍ତୁ |';

  @override
  String get syncPrivateSkip => 'ସେମାନଙ୍କୁ ଛାଡିଦିଅ |';

  @override
  String get syncFetch => 'ଆଣନ୍ତୁ';

  @override
  String get syncFetchAgain => 'ପୁଣି ଆଣନ୍ତୁ';

  @override
  String get syncAll => 'ସବୁ ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get syncStop => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get syncResume => 'ପୁନଃଆରମ୍ଭ';

  @override
  String get syncNothingToSync =>
      'ଏହି ପ୍ରକାର ପାଇଁ ଏହି ସର୍ଭିସ୍ ସିଙ୍କ୍ ହୋଇପାରିବ ନାହିଁ';

  @override
  String get syncNoTargets =>
      'ସିଙ୍କ୍ କରିବାକୁ ଅନ୍ୟ ଏକ ସର୍ଭିସ୍‌ରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get syncLoadingMap => 'ID ମ୍ୟାପିଂ ଲୋଡ୍ ହେଉଛି';

  @override
  String get syncComparing => 'ତାଲିକା ତୁଳନା ହେଉଛି';

  @override
  String get syncIntro =>
      'ଏକ ମୁଖ୍ୟ ସର୍ଭିସ୍ ବାଛି ଆଣନ୍ତୁ ଦବାନ୍ତୁ। ପ୍ରତ୍ୟେକ ସର୍ଭିସ୍‌ରୁ ତୁମ ତାଲିକା ଥରେ ମାଗାଯାଏ, ତା\'ପରେ ମୁଖ୍ୟ ସହ ତୁଳନା ହୁଏ।';

  @override
  String get syncStateSynced => 'ସିଙ୍କ୍ ହୋଇଛି';

  @override
  String get syncStateOutdated => 'ସିଙ୍କ୍ ବାହାରେ';

  @override
  String get syncStateMissing => 'ତାଲିକାରେ ନାହିଁ';

  @override
  String get syncStateUnmapped => 'ମେଳ ନାହିଁ';

  @override
  String syncPaused(String time) {
    return 'ରେଟ୍ ଲିମିଟ୍ ପାଇଁ ଅପେକ୍ଷା, $time ପରେ ପୁନଃଆରମ୍ଭ';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$nameରେ କେବଳ $countଟି, ଅଛୁଆଁ ରହିଲା';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total ମଧ୍ୟରୁ $done';
  }

  @override
  String get syncNothingHere => 'ଦେଖାଇବାକୁ କିଛି ନାହିଁ';

  @override
  String syncLimits(int used, int max, String window) {
    return 'ଏହି $windowରେ $max ମଧ୍ୟରୁ $usedଟି ଅନୁରୋଧ ବ୍ୟବହୃତ';
  }

  @override
  String get syncMinute => 'ମିନିଟ୍';

  @override
  String get syncDay => 'ଦିନ';

  @override
  String get syncNotInList => 'ଏପର୍ଯ୍ୟନ୍ତ ତାଲିକାରେ ନାହିଁ';

  @override
  String get syncCleared => 'ଯୋଜନା ସଫା ହେଲା';

  @override
  String get syncClear => 'ସଫା';

  @override
  String get syncOptions => 'ବିକଳ୍ପ';

  @override
  String get syncShared => 'ଏହାର ଏଣ୍ଟ୍ରି ଅନ୍ୟ ଏକ ଆଇଟମ୍ ସହ ଅଂଶୀଦାର';

  @override
  String syncNotFound(String service) {
    return '$serviceରେ ମିଳିଲା ନାହିଁ';
  }

  @override
  String syncService(String service, int count) {
    return '$service ସିଙ୍କ୍ କରନ୍ତୁ ($count)';
  }

  @override
  String get syncOnEdit => 'ପରିବର୍ତ୍ତନ ତୁରନ୍ତ ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get syncOnEditDesc =>
      'ପ୍ରତ୍ୟେକ ପ୍ରଗତି ଅପଡେଟ୍ ଓ ତାଲିକା ସମ୍ପାଦନା ତୁରନ୍ତ ତୁମ ଅନ୍ୟ ସାଇନ୍ ଇନ୍ ହୋଇଥିବା ସର୍ଭିସ୍‌କୁ ପଠାନ୍ତୁ';

  @override
  String syncRemoved(String services) {
    return '$services ରୁ ଅପସାରିତ |';
  }

  @override
  String syncPushed(String services) {
    return '$servicesରେ ସିଙ୍କ୍ ହେଲା';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'ରେଟ୍ ଲିମିଟ୍ ହୋଇଛି, ଟିକିଏ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get syncAhead => 'ଯିଏ ଆଗରେ ଅଛି';

  @override
  String get syncAheadDesc =>
      'ଦୁଇ-ପଟେ: ପ୍ରତ୍ୟେକ ଶୀର୍ଷକ ପାଇଁ ଯେଉଁ ଏଣ୍ଟ୍ରି ସବୁଠୁ ଆଗରେ ଅଛି ତାହା ଜିତେ ଓ ତୁମ ଅନ୍ୟ ସବୁ ସର୍ଭିସ୍‌ରେ କପି ହୁଏ';

  @override
  String syncAheadFrom(String service) {
    return '$serviceରୁ';
  }

  @override
  String get syncConfirm => 'ସିଙ୍କ୍ ପୂର୍ବରୁ ଦେଖନ୍ତୁ';

  @override
  String get syncConfirmDesc =>
      'ସବୁ ସିଙ୍କ୍ କଣ ବଦଳାଇବ ଓ କେତୋଟି ଅନୁରୋଧ ଦରକାର ତାହା ଦେଖାନ୍ତୁ';

  @override
  String get syncPreviewTitle => 'ସିଙ୍କ୍ ପାଇଁ ପ୍ରସ୍ତୁତ';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updatesଟି ଅପଡେଟ୍, $addsଟି ଯୋଗ କରିବାକୁ';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'ପ୍ରାୟ $countଟି ଅନୁରୋଧ';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$countଟି ID ପ୍ରଥମେ ଖୋଜିବାକୁ ପଡ଼ିବ';
  }

  @override
  String get syncPreviewNothing => 'ବଦଳାଇବାକୁ କିଛି ନାହିଁ';

  @override
  String get syncStart => 'ଆରମ୍ଭ';

  @override
  String get syncRetry => 'ପୁଣି ଚେଷ୍ଟା';

  @override
  String get syncSkip => 'ଏହି ଆଇଟମ୍ ଛାଡ଼ନ୍ତୁ';

  @override
  String get syncInclude => 'ଏହି ଆଇଟମ୍ ପୁଣି ଅନ୍ତର୍ଭୁକ୍ତ କରନ୍ତୁ';

  @override
  String get syncSkippedLabel => 'ଛାଡ଼ିଦିଆଗଲା';

  @override
  String get syncChanges => 'ପାର୍ଥକ୍ୟ';

  @override
  String get syncChangeStatus => 'ସ୍ଥିତି';

  @override
  String get syncChangeProgress => 'ପ୍ରଗତି';

  @override
  String get syncChangeScore => 'ସ୍କୋର୍';

  @override
  String get syncChangeDates => 'ତାରିଖ';

  @override
  String get syncChangeRepeat => 'ପୁଣି ଦେଖିବା ଗଣତି';

  @override
  String get syncFailedReason => 'କାହିଁକି ବିଫଳ ହେଲା';

  @override
  String get syncSkippedHint =>
      'ଛାଡ଼ିଦିଆଯାଇଥିବା ଆଇଟମ୍ ପୁଣି ଆଣିଲେ ମଧ୍ୟ ଛୁଆଁଯାଏ ନାହିଁ';

  @override
  String get commentsRules => 'ମନ୍ତବ୍ୟ ନିୟମ';

  @override
  String get commentsRulesBody =>
      'ଯେକୌଣସି ନିୟମ ଭାଙ୍ଗିଲେ = ତୁମେ ବାହାରକୁ\n\n1. ଜାତିବାଦ, ଭେଦଭାବ ବା ଘୃଣା ଭାଷଣ ନୁହେଁ\n2. ସ୍ପାମ୍ ବା ଆତ୍ମ-ପ୍ରଚାର ନୁହେଁ\n3. ଏକଦମ୍ NSFW କଣ୍ଟେଣ୍ଟ ନୁହେଁ\n4. କେବଳ ଇଂରାଜୀ, କୌଣସି ବ୍ୟତିକ୍ରମ ନାହିଁ\n5. ଛଦ୍ମବେଶ, ହଇରାଣ ବା ଗାଳିଗୁଲଜ ନୁହେଁ\n6. ବେଆଇନ୍ କଣ୍ଟେଣ୍ଟ ବା କୌଣସି ଫ୍ୟାନ୍‌ଡମ୍ ପ୍ରତି ଚରମ ଅସମ୍ମାନ ନୁହେଁ\n7. ରିପୋଜିଟୋରି ବା ଏକ୍ସଟେନସନ୍ ମାଗନ୍ତୁ ବା ସେୟାର୍ କରନ୍ତୁ ନାହିଁ\n8. ସ୍ପଏଲର୍ କେବଳ ସ୍ପଏଲର୍ ଟ୍ୟାଗ୍ ଓ ଚେତାବନୀ ସହ\n9. ନାବାଳକ ଚରିତ୍ର ବିଷୟରେ ଯୌନ ବା ଅନୁପଯୁକ୍ତ ମନ୍ତବ୍ୟ ନୁହେଁ\n10. ଯଦି ଭୁଲ୍, ପୋଷ୍ଟ୍ କର ନାହିଁ!';

  @override
  String get commentsRulesAccept => 'ମୁଁ ବୁଝିଲି';

  @override
  String get commentsSortNewest => 'ନୂତନତମ';

  @override
  String get commentsSortOldest => 'ପୁରାତନତମ';

  @override
  String get commentsSortHighest => 'ସର୍ବାଧିକ ରେଟିଂ';

  @override
  String get commentsSortLowest => 'ସର୍ବନିମ୍ନ ରେଟିଂ';

  @override
  String commentsEpisodeShort(int number) {
    return 'ଏପି $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ଅଧ୍ୟା. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'ଏପିସୋଡ୍ ଅନୁସାରେ ଫିଲ୍ଟର୍';

  @override
  String get commentsFilterChapterTitle => 'ଅଧ୍ୟାୟ ଅନୁସାରେ ଫିଲ୍ଟର୍';

  @override
  String get commentsFilterTagTitle => 'ଏକ ଏପିସୋଡ୍ ବା ଅଧ୍ୟାୟ ନମ୍ବର୍ ଦିଅନ୍ତୁ';

  @override
  String get commentsFilterHint => 'ନମ୍ବର୍';

  @override
  String get commentsFilterApply => 'ଫିଲ୍ଟର୍';

  @override
  String get commentsFilterClear => 'ସବୁ ଦେଖାନ୍ତୁ';

  @override
  String get commentsPlaceholder => 'ଏକ ମନ୍ତବ୍ୟ ଯୋଗ କରନ୍ତୁ…';

  @override
  String commentsReplyingTo(String name) {
    return '$nameଙ୍କୁ ଉତ୍ତର ଦେଉଛ';
  }

  @override
  String get commentsSend => 'ପଠାନ୍ତୁ';

  @override
  String get commentsTagButton => 'ଟ୍ୟାଗ୍';

  @override
  String commentsTagTitle(String label) {
    return 'ଟ୍ୟାଗ୍ $label (ବିକଳ୍ପ)';
  }

  @override
  String get commentsTagEpisode => 'ଏପିସୋଡ୍';

  @override
  String get commentsTagChapter => 'ଅଧ୍ୟାୟ';

  @override
  String commentsTagRange(int total) {
    return '1 –$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label ନମ୍ବର୍';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ଟ୍ୟାଗ୍ ମୋଟ ($total) ଠାରୁ ଅଧିକ ହୋଇପାରିବ ନାହିଁ';
  }

  @override
  String get commentsNoTag => 'ଟ୍ୟାଗ୍ ନାହିଁ';

  @override
  String get commentsSpoiler => 'ସ୍ପଏଲର୍';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF ଖୋଜନ୍ତୁ';

  @override
  String get commentsGifEmpty => 'କୌଣସି GIF ମିଳିଲା ନାହିଁ';

  @override
  String get commentsEmptyText => 'ମନ୍ତବ୍ୟ ଖାଲି ହୋଇପାରିବ ନାହିଁ';

  @override
  String get commentsBannedYou => 'ତୁମକୁ ମନ୍ତବ୍ୟ କରିବାରୁ ବାରଣ କରାଯାଇଛି';

  @override
  String get commentsEdited => 'ମନ୍ତବ୍ୟ ସମ୍ପାଦିତ';

  @override
  String get commentsDeleted => 'ମନ୍ତବ୍ୟ ଡିଲିଟ୍ ହେଲା';

  @override
  String get commentsDeletedPlaceholder => '[ଡିଲିଟ୍ ହୋଇଛି]';

  @override
  String get commentsReported => 'ମନ୍ତବ୍ୟ ରିପୋର୍ଟ୍ ହେଲା';

  @override
  String get commentsUserBanned => 'ୟୁଜର୍ ବ୍ୟାନ୍ ହେଲେ';

  @override
  String get commentsReport => 'ରିପୋର୍ଟ୍';

  @override
  String get commentsReportAsk => 'ଏହି ମନ୍ତବ୍ୟକୁ ମଡରେଟରଙ୍କୁ ରିପୋର୍ଟ୍ କରିବେ?';

  @override
  String get commentsDelete => 'ଡିଲିଟ୍';

  @override
  String get commentsDeleteAsk => 'ଏହି ମନ୍ତବ୍ୟ ସମସ୍ତଙ୍କ ପାଇଁ ହଟାଯିବ।';

  @override
  String get commentsBan => 'ବ୍ୟାନ୍';

  @override
  String get commentsBanAsk => 'ଏହି ୟୁଜରଙ୍କୁ ମନ୍ତବ୍ୟ କରିବାରୁ ବ୍ୟାନ୍ କରିବେ?';

  @override
  String get commentsCopy => 'କପି';

  @override
  String get commentsViewReply => '୧ଟି ଉତ୍ତର ଦେଖନ୍ତୁ';

  @override
  String commentsViewReplies(int count) {
    return '$countଟି ଉତ୍ତର ଦେଖନ୍ତୁ';
  }

  @override
  String get commentsHideReplies => 'ଉତ୍ତର ଲୁଚାନ୍ତୁ';

  @override
  String get commentsLoadMore => 'ଆହୁରି ମନ୍ତବ୍ୟ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get commentsEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ ମନ୍ତବ୍ୟ ନାହିଁ। ପ୍ରଥମ ହୁଅ!';

  @override
  String get commentsEmptyFiltered => 'ଏହି ଫିଲ୍ଟର୍ ପାଇଁ ମନ୍ତବ୍ୟ ନାହିଁ';

  @override
  String get commentsSignIn =>
      'ମନ୍ତବ୍ୟ ପଢ଼ିବାକୁ ଓ ଲେଖିବାକୁ AniListରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get commentsSignInMessage =>
      'ମନ୍ତବ୍ୟ ପ୍ରତ୍ୟେକ ସର୍ଭିସ୍ ମଧ୍ୟରେ ଅଂଶୀଦାର ଓ ତୁମ AniList ଆକାଉଣ୍ଟ ବ୍ୟବହାର କରେ।';

  @override
  String get commentsUnavailable => 'ଏହି ଶୀର୍ଷକ ପାଇଁ ମନ୍ତବ୍ୟ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get commentsUnavailableMessage =>
      'ଏହାକୁ ଏକ AniList ଏଣ୍ଟ୍ରି ସହ ମେଳାଇ ହେଲା ନାହିଁ।';

  @override
  String get commentsDisabled => 'ମନ୍ତବ୍ୟ ବନ୍ଦ ଅଛି';

  @override
  String get commentsDisabledMessage =>
      'ତୁମେ ସେଟିଂସ୍ › ସାଧାରଣରେ ସେଗୁଡ଼ିକୁ ପୁଣି ଚାଲୁ କରିପାରିବ।';

  @override
  String get commentsOffline => 'ମନ୍ତବ୍ୟ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get commentsSingleTitle => 'ଗୋଟିଏ ମନ୍ତବ୍ୟ ଦେଖାଯାଉଛି';

  @override
  String get commentsShowAll => 'ସବୁ ମନ୍ତବ୍ୟ ଦେଖାନ୍ତୁ';

  @override
  String get commentsSettingsHeader => 'ମନ୍ତବ୍ୟ';

  @override
  String get commentsSettingEnabled => 'ମନ୍ତବ୍ୟ';

  @override
  String get commentsSettingEnabledDesc =>
      'ଶୀର୍ଷକରେ ମନ୍ତବ୍ୟ ଟ୍ୟାବ୍ ଦେଖାନ୍ତୁ ଓ ତୁମ AniList ଆକାଉଣ୍ଟ ଦେଇ ମନ୍ତବ୍ୟ ସର୍ଭରରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String get commentsSettingAlerts => 'ଉତ୍ତର ବିଜ୍ଞପ୍ତି';

  @override
  String get commentsSettingAlertsDesc =>
      'କେହି ମୋ ମନ୍ତବ୍ୟର ଉତ୍ତର ଦେଲେ ମୋତେ ଜଣାନ୍ତୁ';

  @override
  String get commentsNoticeReplyTitle => 'ନୂଆ ମନ୍ତବ୍ୟ ଉତ୍ତର';

  @override
  String commentsNoticeReply(String name) {
    return '$name ତୁମ ମନ୍ତବ୍ୟର ଉତ୍ତର ଦେଲେ';
  }

  @override
  String get commentsNoticeWarningTitle => 'ତୁମେ ଏକ ଚେତାବନୀ ପାଇଲ';

  @override
  String get commentsNoticeWarning => 'ତୁମ ମନ୍ତବ୍ୟରେ ଆହୁରି ଭାବି ଲେଖ';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsuରୁ ଅପଡେଟ୍';

  @override
  String get barcodeTitle => 'ବାରକୋଡ୍ ସ୍କାନ୍ କରନ୍ତୁ';

  @override
  String get barcodeTooltip => 'ବାରକୋଡ୍‌ରୁ ଏକ ମାଙ୍ଗା ବା ନଭେଲ୍ ଖୋଜନ୍ତୁ';

  @override
  String get barcodeIntro =>
      'ଖଣ୍ଡର ପଛରେ ଥିବା ବାରକୋଡ୍ ଆଡ଼କୁ କ୍ୟାମେରା ଦେଖାନ୍ତୁ, ବା ଏହାର ISBN ଟାଇପ୍ କରନ୍ତୁ।';

  @override
  String get barcodeIntroManual =>
      'ଖଣ୍ଡର ପଛରେ ବାରକୋଡ୍ ଉପରେ ଛପା ହୋଇଥିବା ISBN ଟାଇପ୍ କରନ୍ତୁ।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'ଏହା ଏକ ବୈଧ ISBN ନୁହେଁ';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn ପାଇଁ କୌଣସି ବହି ମିଳିଲା ନାହିଁ';
  }

  @override
  String get barcodeCameraDenied =>
      'କ୍ୟାମେରା ଉପଲବ୍ଧ ନାହିଁ। କ୍ୟାମେରା ଆକ୍ସେସ୍ ଅନୁମତି ଦିଅନ୍ତୁ ବା ISBN ଟାଇପ୍ କରନ୍ତୁ।';

  @override
  String get themesTitle => 'ଓପନିଂ ଓ ଏଣ୍ଡିଂ';

  @override
  String get themesPlayVideo => 'ଭିଡିଓ ଚଲାନ୍ତୁ';

  @override
  String get themesPlayAudio => 'କେବଳ ଅଡିଓ ଚଲାନ୍ତୁ';

  @override
  String get themesOpenSite => 'AnimeThemesରେ ଖୋଲନ୍ତୁ';

  @override
  String get themesCredit => 'AnimeThemesର ଥିମ୍';

  @override
  String get themesVersions => 'ସଂସ୍କରଣ';

  @override
  String get sauceTitle => 'ଉତ୍ସ ଖୋଜନ୍ତୁ';

  @override
  String get sauceIntro =>
      'ଏହା କେଉଁଠୁ ଆସିଛି ଖୋଜିବାକୁ ଏକ ମାଙ୍ଗା ପୃଷ୍ଠା ବା ଆର୍ଟୱର୍କ ଅପଲୋଡ୍ କରନ୍ତୁ, ବା ଏହାର ଲିଙ୍କ୍ ପେଷ୍ଟ କରନ୍ତୁ।';

  @override
  String get sauceKeyTitle => 'SauceNAO API କି';

  @override
  String get sauceKeyHint => 'ବିକଳ୍ପ, ଦୈନିକ ସର୍ଚ୍ଚ ସୀମା ବଢ଼ାଏ';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php ରୁ ମାଗଣା କି ନିଅନ୍ତୁ';

  @override
  String get sauceOpen => 'ଉତ୍ସ ଖୋଲନ୍ତୁ';

  @override
  String get sauceCredit => 'SauceNAO ଦ୍ୱାରା ଇମେଜ୍ ସର୍ଚ୍ଚ';

  @override
  String get sauceEmpty => 'କୌଣସି ମେଳ ମିଳିଲା ନାହିଁ';

  @override
  String get sauceTooltip => 'ଏକ ମାଙ୍ଗା ପୃଷ୍ଠା ବା ଆର୍ଟୱର୍କର ଉତ୍ସ ଖୋଜନ୍ତୁ';

  @override
  String get trendzTitle => 'ଆନିମେ ଚାର୍ଟ';

  @override
  String get trendzAnime => 'ଆନିମେ';

  @override
  String get trendzFemale => 'ମହିଳା ଚରିତ୍ର';

  @override
  String get trendzMale => 'ପୁରୁଷ ଚରିତ୍ର';

  @override
  String get trendzCouple => 'ଯୁଗଳ';

  @override
  String get trendzCredit => 'AniTrendzର ସାପ୍ତାହିକ ଚାର୍ଟ';

  @override
  String get trendzNew => 'ନୂଆ';

  @override
  String get trendzEmpty => 'ଚାର୍ଟ ଖାଲି ଅଛି';

  @override
  String get shareCard => 'କାର୍ଡ ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get shareCardList => 'ତାଲିକା କାର୍ଡ ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get shareCardSaved => 'କାର୍ଡ ସେଭ୍ ହେଲା';

  @override
  String get shareCardFailed => 'କାର୍ଡ ତିଆରି କରିପାରିଲୁ ନାହିଁ';

  @override
  String get shareCardListEmpty =>
      'ତୁମ ତାଲିକାରେ ଏପର୍ଯ୍ୟନ୍ତ ସେୟାର୍ କରିବାକୁ କିଛି ନାହିଁ';

  @override
  String get shareCardTop => 'ମୋର ସର୍ବଶ୍ରେଷ୍ଠ ପସନ୍ଦ';

  @override
  String themesEpisodes(String eps) {
    return 'ଏପିସୋଡ୍ $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% ମେଳ';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'ସପ୍ତାହ $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$countଟି ଭୋଟ୍';
  }

  @override
  String trendzPeak(String rank) {
    return 'ସର୍ବୋଚ୍ଚ #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'ଶ୍ରେଷ୍ଠ ଦଶରେ $count ସପ୍ତାହ';
  }

  @override
  String get imageSearchTitle => 'ଇମେଜ୍ ଦ୍ୱାରା ଖୋଜନ୍ତୁ';

  @override
  String get imageSearchTooltip => 'ସ୍କ୍ରିନସଟ୍‌ରୁ ଏକ ଆନିମେ ଖୋଜନ୍ତୁ';

  @override
  String get imageSearchIntro =>
      'ଏକ ସ୍କ୍ରିନସଟ୍ ବାଛନ୍ତୁ ବା ଇମେଜ୍ ଲିଙ୍କ୍ ପେଷ୍ଟ କରନ୍ତୁ, trace.moe ଏହା କେଉଁ ଏପିସୋଡ୍ ଓ କେଉଁ ମୁହୂର୍ତ୍ତର ତାହା ଖୋଜିଦେବ।';

  @override
  String get imageSearchPick => 'ଇମେଜ୍ ବାଛନ୍ତୁ';

  @override
  String get imageSearchLinkHint => 'ଏକ ଇମେଜ୍ ଲିଙ୍କ୍ ପେଷ୍ଟ କରନ୍ତୁ';

  @override
  String get imageSearchGo => 'ଖୋଜନ୍ତୁ';

  @override
  String get imageSearchEmpty => 'କୌଣସି ମେଳ ମିଳିଲା ନାହିଁ';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'ଏପିସୋଡ୍ $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time ରେ';
  }

  @override
  String get imageSearchPreview => 'କ୍ଲିପ୍ ପ୍ରିଭ୍ୟୁ';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% ମେଳ';
  }

  @override
  String get imageSearchCredit => 'trace.moe ଦ୍ୱାରା ଚାଳିତ';

  @override
  String get imageSearchOpenFailed => 'ଏହି ଶୀର୍ଷକ ଖୋଲିପାରିଲୁ ନାହିଁ';

  @override
  String get groups => 'ଗ୍ରୁପ୍';

  @override
  String get groupsYours => 'ତୁମ ଗ୍ରୁପ୍';

  @override
  String get groupsPopular => 'ଲୋକପ୍ରିୟ';

  @override
  String get groupsNew => 'ନୂଆ';

  @override
  String get groupsFeatured => 'ବିଶେଷ';

  @override
  String get groupsSearch => 'ଗ୍ରୁପ୍ ଖୋଜନ୍ତୁ';

  @override
  String get groupsAll => 'ସବୁ';

  @override
  String get groupsEmpty => 'କୌଣସି ଗ୍ରୁପ୍ ମିଳିଲା ନାହିଁ';

  @override
  String get groupsEmptyYours => 'ତୁମେ ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଗ୍ରୁପ୍‌ରେ ଯୋଗ ଦେଇନାହଁ';

  @override
  String get groupsSignIn =>
      'ତୁମେ ଯୋଗ ଦେଇଥିବା ଗ୍ରୁପ୍ ଦେଖିବାକୁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ସଦସ୍ୟ',
      one: '୧ ସଦସ୍ୟ',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ଯୋଗ ଦିଅନ୍ତୁ';

  @override
  String get groupsJoined => 'ଯୋଗ ଦେଇଛ';

  @override
  String get groupsLeave => 'ଗ୍ରୁପ୍ ଛାଡ଼ନ୍ତୁ';

  @override
  String get groupsLeaveAsk => 'ତୁମ ଫିଡ୍‌ରେ ଏହି ଗ୍ରୁପ୍‌ର ପୋଷ୍ଟ ଆଉ ଦେଖିବ ନାହିଁ।';

  @override
  String get groupsJoinFailed =>
      'ଏହି ଗ୍ରୁପ୍‌ରେ ଯୋଗ ଦେଇପାରିଲୁ ନାହିଁ, ହୁଏତ ଏହା କେବଳ ନିମନ୍ତ୍ରଣ ଦ୍ୱାରା';

  @override
  String get groupsLeaveFailed => 'ଏହି ଗ୍ରୁପ୍ ଛାଡ଼ିପାରିଲୁ ନାହିଁ';

  @override
  String get groupsPosts => 'ପୋଷ୍ଟ';

  @override
  String get groupsMembersTab => 'ସଦସ୍ୟ';

  @override
  String get groupsAbout => 'ବିଷୟରେ';

  @override
  String get groupsRules => 'ନିୟମ';

  @override
  String get groupsPrivacyOpen => 'ଖୋଲା';

  @override
  String get groupsPrivacyRestricted => 'ସୀମିତ';

  @override
  String get groupsPrivacyClosed => 'ବନ୍ଦ';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'ଆଡମିନ୍';

  @override
  String get groupsRoleMod => 'ମଡ୍';

  @override
  String get groupsCouldntLoad => 'ଏହି ଗ୍ରୁପ୍ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get groupsNewPost => 'ଗ୍ରୁପ୍‌ରେ ପୋଷ୍ଟ କରନ୍ତୁ';

  @override
  String get groupsPostHint => 'ଗ୍ରୁପ୍ ସହ କିଛି ସେୟାର୍ କରନ୍ତୁ';

  @override
  String get groupsOpenInBrowser => 'ବ୍ରାଉଜରରେ ଖୋଲନ୍ତୁ';

  @override
  String get groupsCategory => 'ବର୍ଗ';

  @override
  String get groupsLanguage => 'ଭାଷା';

  @override
  String get groupsCreated => 'ତିଆରି ହୋଇଛି';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ନେତା',
      one: '୧ ନେତା',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'ଗୋପନୀୟତା';

  @override
  String get notificationsAll => 'ସବୁ';

  @override
  String get notificationsAiring => 'ପ୍ରସାରଣ';

  @override
  String get notificationsMedia => 'ନୂଆ ଶୀର୍ଷକ';

  @override
  String get notificationsReplies => 'ଉତ୍ତର';

  @override
  String get notificationsMentions => 'ଉଲ୍ଲେଖ';

  @override
  String get notificationsMessages => 'ମେସେଜ୍';

  @override
  String get notificationsLikes => 'ଲାଇକ୍';

  @override
  String get notificationsFollows => 'ଫଲୋ';

  @override
  String get notificationsNoServices =>
      'କୌଣସି ସାଇନ୍ ଇନ୍ ସର୍ଭିସ୍‌ରେ ବିଜ୍ଞପ୍ତି ନାହିଁ';

  @override
  String get notificationsNoServicesMessage =>
      'ବିଜ୍ଞପ୍ତି ପଠାଉଥିବା ଏକ ସର୍ଭିସ୍‌ରେ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ, ସେଗୁଡ଼ିକ ଏଠି ଦେଖାଯିବ।';

  @override
  String get notificationsEmptyKind => 'ଏହି ବର୍ଗରେ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ';

  @override
  String get notificationsCommentsEmpty => 'ମନ୍ତବ୍ୟ ବିଜ୍ଞପ୍ତି ନାହିଁ';

  @override
  String get notificationsCommentsEmptyMessage =>
      'ତୁମ ମନ୍ତବ୍ୟର ଉତ୍ତର ଓ Dantotsuର ଘୋଷଣା ଏଠି ଦେଖାଯାଏ।';

  @override
  String get notificationsSettings => 'ବିଜ୍ଞପ୍ତି ସେଟିଂସ୍';

  @override
  String get notificationsPollTitle => 'ନୂଆ ବିଜ୍ଞପ୍ତି ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ଆପ୍ ଖୋଲା ଥିବା ବେଳେ ପ୍ରତି $minutes ମିନିଟ୍‌ରେ';
  }

  @override
  String get notificationsNotifyAbout => 'ମୋତେ ଜଣାନ୍ତୁ';

  @override
  String get notificationsCommentsHeader => 'ମନ୍ତବ୍ୟ ବିଜ୍ଞପ୍ତି';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ଆପ୍ ଚାଲୁଥିବା ବେଳେ ପ୍ରତ୍ୟେକ ନପଢ଼ା $service ବିଜ୍ଞପ୍ତି ପାଇଁ ଏକ ସିଷ୍ଟମ୍ ବିଜ୍ଞପ୍ତି ଦେଖାନ୍ତୁ।';
  }

  @override
  String get notificationsTestSent => 'ଟେଷ୍ଟ୍ ବିଜ୍ଞପ୍ତି ପଠାଗଲା';

  @override
  String get notificationsTestDenied =>
      'Dartotsu ପାଇଁ ବିଜ୍ଞପ୍ତି ଅନୁମତିପ୍ରାପ୍ତ ନୁହେଁ। ସିଷ୍ଟମ୍ ସେଟିଂସ୍‌ରେ ଚାଲୁ କରନ୍ତୁ।';

  @override
  String get notificationsTestHint => 'ଟେଷ୍ଟ୍ ବିଜ୍ଞପ୍ତି ପଠାଇବାକୁ ଲମ୍ବା ଦବାନ୍ତୁ';

  @override
  String get notificationsTestSample => 'ଏହା ଏକ ଟେଷ୍ଟ୍ ବିଜ୍ଞପ୍ତି';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $mediaରେ ତୁମ ମନ୍ତବ୍ୟର ଉତ୍ତର ଦେଲେ';
  }

  @override
  String get imageSearchNotLink => 'ଏହା ଲିଙ୍କ୍ ପରି ଲାଗୁନାହିଁ';

  @override
  String get imageSearchQuota => 'ସର୍ଚ୍ଚ କୋଟା ଅତିକ୍ରମ ହେଲା';

  @override
  String get imageSearchBusy => 'ଅତ୍ୟଧିକ ଅନୁରୋଧ, ଟିକିଏ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String imageSearchFailed(int code) {
    return 'ସର୍ଚ୍ଚ ବିଫଳ ହେଲା ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$countଟି ନୂଆ ବିଜ୍ଞପ୍ତି';
  }

  @override
  String get reactionsTitle => 'ପ୍ରତିକ୍ରିୟା';

  @override
  String get reactionsNeedEntry =>
      'ପ୍ରତିକ୍ରିୟା ଦେବା ପୂର୍ବରୁ ଏହି ଶୀର୍ଷକକୁ ତୁମ ତାଲିକାରେ ଯୋଗ କରନ୍ତୁ';

  @override
  String get reactionsAdd => 'ଏକ ପ୍ରତିକ୍ରିୟା ଯୋଗ କରନ୍ତୁ';

  @override
  String get reactionsHint => 'ତୁମର କ\'ଣ ମନେ ହେଲା? (ଛୋଟ ଓ ସ୍ପଏଲର୍ ବିନା)';

  @override
  String get reactionsPost => 'ପୋଷ୍ଟ';

  @override
  String get reactionsFailed => 'ପ୍ରତିକ୍ରିୟା ଅପଡେଟ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get settingsWatch => 'ଦେଖନ୍ତୁ ଓ ପଢ଼ନ୍ତୁ';

  @override
  String get settingsWatchDesc => 'ଏପିସୋଡ୍ ତାଲିକା, ଉତ୍ସ ମେଳ ଓ ଏପିସୋଡ୍ ବିବରଣୀ';

  @override
  String get watchSettingsLayout => 'ଏପିସୋଡ୍ ତାଲିକା';

  @override
  String get watchSettingsSources => 'ଉତ୍ସ';

  @override
  String get watchSettingsMetadata => 'ଏପିସୋଡ୍ ବିବରଣୀ';

  @override
  String get watchLayout => 'ଲେଆଉଟ୍';

  @override
  String get watchListView => 'ତାଲିକା';

  @override
  String get watchGridView => 'ଗ୍ରିଡ୍';

  @override
  String get watchCompactView => 'କମ୍ପାକ୍ଟ';

  @override
  String get watchDefaultLayoutDesc =>
      'ଏକ ଶୀର୍ଷକ ପାଇଁ ବଦଳାଇବା ପର୍ଯ୍ୟନ୍ତ ଏପିସୋଡ୍ ଓ ଅଧ୍ୟାୟ କିପରି ସଜ୍ଜିତ ହେବ';

  @override
  String get watchChunkSize => 'ପରିସର ଆକାର';

  @override
  String get watchChunkSizeDesc =>
      'ପ୍ରତ୍ୟେକ ପରିସର ଟ୍ୟାବ୍‌ରେ କେତୋଟି ଏପିସୋଡ୍ ବା ଅଧ୍ୟାୟ ରହିବ';

  @override
  String get watchShowDescription => 'ବର୍ଣ୍ଣନା ଦେଖାନ୍ତୁ';

  @override
  String get watchShowDescriptionDesc =>
      'ତାଲିକା ଲେଆଉଟ୍‌ରେ ପ୍ରତ୍ୟେକ ଶୀର୍ଷକ ତଳେ ଏପିସୋଡ୍ ସାରାଂଶ ଦେଖାନ୍ତୁ';

  @override
  String get watchShowFiller => 'ଫିଲର୍ ଏପିସୋଡ୍ ଦେଖାନ୍ତୁ';

  @override
  String get watchShowFillerDesc =>
      'ଫିଲର୍ ଚିହ୍ନିତ ଏପିସୋଡ୍ ଲୁଚାଇବାକୁ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get watchBlurUnwatched => 'ସ୍ପଏଲର୍ ଥମ୍ବନେଲ୍ ଲୁଚାନ୍ତୁ';

  @override
  String get watchBlurUnwatchedDesc =>
      'ତୁମେ ଏପର୍ଯ୍ୟନ୍ତ ଦେଖିନଥିବା ଏପିସୋଡ୍‌ର ଥମ୍ବନେଲ୍ ଝାପ୍‌ସା କରନ୍ତୁ';

  @override
  String get watchResumeShelf => 'ପୁନଃଆରମ୍ଭ ସେଲ୍ଫ';

  @override
  String get watchResumeShelfDesc => 'ହୋମ୍‌ରେ ପୁନଃଆରମ୍ଭ ଧାଡ଼ି ଦେଖାନ୍ତୁ';

  @override
  String get watchMarkOnLongPress => 'ଲମ୍ବା ଦବାଇଲେ ପ୍ରଗତି ଚିହ୍ନିତ ହୁଏ';

  @override
  String get watchMarkOnLongPressDesc =>
      'ଏକ ଏପିସୋଡ୍ ବା ଅଧ୍ୟାୟକୁ ଦେଖାଯାଇଛି ବା ଦେଖାଯାଇନାହିଁ ଚିହ୍ନିତ କରିବାକୁ ଲମ୍ବା ଦବାନ୍ତୁ';

  @override
  String get watchMatching => 'ଉତ୍ସ ମେଳ';

  @override
  String get watchMatchingDesc =>
      'ନିକଟତମ ସର୍ବୋତ୍ତମ ସର୍ଚ୍ଚ ଫଳାଫଳ ନିଏ। କେବଳ ସଠିକ୍ ପ୍ରାୟ ସମାନ ଶୀର୍ଷକ ଗ୍ରହଣ କରେ ଓ ବାକି ତୁମ ବାଛିବା ପାଇଁ ଛାଡ଼େ।';

  @override
  String get watchMatchClosest => 'ନିକଟତମ ମେଳ';

  @override
  String get watchMatchExact => 'କେବଳ ସଠିକ୍ ମେଳ';

  @override
  String get watchMetadataDesc =>
      'ଏପିସୋଡ୍ ଶୀର୍ଷକ, ସାରାଂଶ, ଥମ୍ବନେଲ୍, ପ୍ରସାରଣ ତାରିଖ ଓ ଫିଲର୍ ଫ୍ଲାଗ୍ କେଉଁଠୁ ଆସେ। ପ୍ରାଥମିକତା ସେଟ୍ କରିବାକୁ ଟାଣନ୍ତୁ; ମୂଲ୍ୟ ଥିବା ପ୍ରଥମ ଉତ୍ସ ଜିତେ।';

  @override
  String get watchMetaAniZipDesc =>
      'ଏପିସୋଡ୍ ଶୀର୍ଷକ, ସାରାଂଶ, ଷ୍ଟିଲ୍ ଓ ପ୍ରସାରଣ ତାରିଖ';

  @override
  String get watchMetaKitsuDesc => 'ଏପିସୋଡ୍ ଶୀର୍ଷକ, ବର୍ଣ୍ଣନା ଓ ଥମ୍ବନେଲ୍';

  @override
  String get watchMetaSimklDesc =>
      'ଏପିସୋଡ୍ ଶୀର୍ଷକ, ବର୍ଣ୍ଣନା, ଷ୍ଟିଲ୍ ଓ ପ୍ରସାରଣ ତାରିଖ';

  @override
  String get watchMetaAniListDesc =>
      'ଷ୍ଟ୍ରିମିଂ ଏପିସୋଡ୍ ଶୀର୍ଷକ, ଥମ୍ବନେଲ୍ ଓ ପ୍ରସାରଣ ସୂଚୀ';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai ଦ୍ୱାରା MyAnimeList ଏପିସୋଡ୍ ଶୀର୍ଷକ, ପ୍ରସାରଣ ତାରିଖ, ଫିଲର୍ ଓ ରିକ୍ୟାପ୍ ଫ୍ଲାଗ୍';

  @override
  String get watchClearMetadata => 'ଏପିସୋଡ୍ ବିବରଣୀ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

  @override
  String get watchClearMetadataDesc =>
      'କ୍ୟାଶ୍ ହୋଇଥିବା ଏପିସୋଡ୍ ବିବରଣୀ ଭୁଲିଯାଆନ୍ତୁ ଯେପରି ସେଗୁଡ଼ିକ ପୁଣି ଆଣାଯିବ';

  @override
  String get watchMetadataCleared => 'ଏପିସୋଡ୍ ବିବରଣୀ ପୁଣି ଆଣାଯିବ';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଏପିସୋଡ୍',
      one: '୧ ଏପିସୋଡ୍',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଅଧ୍ୟାୟ',
      one: '୧ ଅଧ୍ୟାୟ',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'ଏପିସୋଡ୍ $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'ଅଧ୍ୟାୟ $number';
  }

  @override
  String get watchSearching => 'ଖୋଜୁଛି…';

  @override
  String watchSearchingFor(String term) {
    return 'ଖୋଜୁଛି: $term';
  }

  @override
  String watchSelected(String title) {
    return 'ବଛାଯାଇଛି: $title';
  }

  @override
  String watchFound(String title) {
    return 'ମିଳିଲା: $title';
  }

  @override
  String get watchNothingFound => 'ଏହି ଉତ୍ସରେ କିଛି ମିଳିଲା ନାହିଁ';

  @override
  String get watchSearchFailed => 'ଉତ୍ସ ସର୍ଚ୍ଚ ବିଫଳ ହେଲା';

  @override
  String get watchLoadFailed => 'ତାଲିକା ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get watchSignInToTrack => 'ତୁମ ପ୍ରଗତି ଟ୍ରାକ୍ କରିବାକୁ ସାଇନ୍ ଇନ୍ କରନ୍ତୁ';

  @override
  String watchInstallSource(String action) {
    return '$action ଆରମ୍ଭ କରିବାକୁ ଏକ ଏକ୍ସଟେନସନ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';
  }

  @override
  String get watchSourceMissing => 'ଏହି ଉତ୍ସ ଇନଷ୍ଟଲ୍ ହୋଇନାହିଁ';

  @override
  String get watchWrongTitle => 'ଭୁଲ୍ ଶୀର୍ଷକ?';

  @override
  String get watchSearchAgain => 'ପୁଣି ଖୋଜନ୍ତୁ';

  @override
  String watchSearchSource(String source) {
    return '$source ଖୋଜନ୍ତୁ';
  }

  @override
  String get watchSource => 'ଉତ୍ସ';

  @override
  String get sourceTags => 'ଟ୍ୟାଗ୍ସ';

  @override
  String get sourceTagsHint =>
      'Tag what this source is for. A title lists the sources tagged for it first, then untagged ones. 18+ sources only show for adult titles।';

  @override
  String get sourceTagAnime => 'ଆନିମ';

  @override
  String get sourceTagMovies => 'ଚଳଚ୍ଚିତ୍ର ଏବଂ ସିରିଜ୍ |';

  @override
  String get sourceTagAdult => '18+';

  @override
  String get sourceHiddenByTags => 'ଟ୍ୟାଗ୍ ଦ୍ୱାରା ଲୁକ୍କାୟିତ |';

  @override
  String get watchOptions => 'ବିକଳ୍ପ';

  @override
  String get watchReverse => 'କ୍ରମ ଓଲଟାନ୍ତୁ';

  @override
  String get watchScanlators => 'ଗ୍ରୁପ୍';

  @override
  String get watchResetOptions => 'ଏହି ବିକଳ୍ପ ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get watchContinue => 'ଜାରି ରଖନ୍ତୁ';

  @override
  String get watchStart => 'ଆରମ୍ଭ';

  @override
  String get watchPlay => 'ଚଲାନ୍ତୁ';

  @override
  String get watchRead => 'ପଢ଼ନ୍ତୁ';

  @override
  String get watchMarkWatched => 'ଦେଖିସାରିଛି ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get watchMarkUnwatched => 'ଦେଖିନାହିଁ ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get watchMarkRead => 'ପଢ଼ିସାରିଛି ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get watchMarkUnread => 'ପଢ଼ିନାହିଁ ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get watchFiller => 'ଫିଲର୍';

  @override
  String get watchRecap => 'ରିକ୍ୟାପ୍';

  @override
  String get watchNoEpisodes => 'କୌଣସି ଏପିସୋଡ୍ ମିଳିଲା ନାହିଁ';

  @override
  String get watchNoChapters => 'କୌଣସି ଅଧ୍ୟାୟ ମିଳିଲା ନାହିଁ';

  @override
  String get watchSourceTools => 'ଉତ୍ସ ଟୁଲ୍';

  @override
  String get watchSourceSettings => 'ଉତ୍ସ ସେଟିଂସ୍';

  @override
  String get watchOpenWebView => 'ୱେବ୍ ଭ୍ୟୁରେ ଖୋଲନ୍ତୁ';

  @override
  String get watchOpenWebViewDesc =>
      'ଏକ Cloudflare ଯାଞ୍ଚ ସମାଧାନ କରନ୍ତୁ ବା ଲଗ୍ ଇନ୍ କରନ୍ତୁ; କୁକି ଉତ୍ସ ଅନୁରୋଧ ସହ ଅଂଶୀଦାର ହୁଏ';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host ପାଇଁ $countଟି କୁକି ସେଭ୍ ହୋଇଛି',
      one: '$host ପାଇଁ ୧ଟି କୁକି ସେଭ୍ ହୋଇଛି',
      zero: '$host ପାଇଁ କୌଣସି କୁକି ସେଭ୍ ହୋଇନାହିଁ',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare କ୍ଲିୟରେନ୍ସ୍ ସକ୍ରିୟ, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare କ୍ଲିୟରେନ୍ସ୍ କୁକି ନାହିଁ';

  @override
  String get watchClearanceSession => 'ଆପ୍ ବନ୍ଦ ହେବା ପର୍ଯ୍ୟନ୍ତ ରହେ';

  @override
  String get watchAgentShared =>
      'ଅନୁରୋଧ ୱେବ୍ ଭ୍ୟୁର ୟୁଜର୍ ଏଜେଣ୍ଟ୍ ବ୍ୟବହାର କରେ, ଯାହା Cloudflare ଯାଞ୍ଚ କରେ';

  @override
  String get watchAgentCustom =>
      'ଏକ କଷ୍ଟମ୍ ୟୁଜର୍ ଏଜେଣ୍ଟ୍ ସେଟ୍ ଅଛି, ତେଣୁ ୱେବ୍ ଭ୍ୟୁରୁ Cloudflare କ୍ଲିୟରେନ୍ସ୍ ପ୍ରତ୍ୟାଖ୍ୟାତ ହୋଇପାରେ';

  @override
  String get watchTestConnection => 'ସଂଯୋଗ ଟେଷ୍ଟ୍ କରନ୍ତୁ';

  @override
  String get watchSolveChallenge => 'ସମାଧାନ କରନ୍ତୁ';

  @override
  String watchProbeOk(int code) {
    return 'ପହଞ୍ଚିହେଉଛି (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ଏବେ ବି ଯାଞ୍ଚ ମାଗୁଛି';

  @override
  String watchProbeBlocked(int code) {
    return 'ସାଇଟ୍ ଦ୍ୱାରା ଅବରୋଧିତ (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'ସାଇଟ୍‌ରେ ପହଞ୍ଚିହେଲା ନାହିଁ';

  @override
  String get watchClearCookies => 'ଏହି ସାଇଟ୍ ପାଇଁ କୁକି ସଫା କରନ୍ତୁ';

  @override
  String get watchCookiesCleared => 'କୁକି ସଫା ହେଲା';

  @override
  String get watchFailTimeout => 'ଚେକ୍ ଠିକ୍ ସମୟରେ ଶେଷ ହୋଇନାହିଁ |';

  @override
  String get watchFailBlocked =>
      'ସାଇଟ୍ ଏହି ଉପକରଣକୁ ଅବରୋଧ କଲା (ପ୍ରବେଶ ପ୍ରତ୍ୟାଖ୍ୟାନ) | ଏକ ଚେକ୍ ସାହାଯ୍ୟ କରିବ ନାହିଁ |';

  @override
  String get watchFailTurnstile =>
      'ଏହି ଚେକ୍ ଏକ ଟ୍ୟାପ୍ ଆବଶ୍ୟକ କରେ ଯାହା ପୃଷ୍ଠଭୂମି ସମାଧାନକାରୀ କରିପାରିବ ନାହିଁ |';

  @override
  String get watchFailLoad =>
      'ପୃଷ୍ଠା ଲୋଡ୍ ହୋଇନାହିଁ | ସଂଯୋଗ ଏବଂ ସାଇଟ୍ ଠିକଣା ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get watchFailRejected =>
      'ସାଇଟ୍ ଏହା ଦେଇଥିବା କ୍ଲିୟରାନ୍ସକୁ ପ୍ରତ୍ୟାଖ୍ୟାନ କରିଛି | ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ କିମ୍ବା କୁକିଜକୁ ସଫା କରନ୍ତୁ |';

  @override
  String get watchFailDismissed => 'ଚେକ ଶେଷ ହେବା ପୂର୍ବରୁ ବନ୍ଦ ହୋଇଯାଇଥିଲା |';

  @override
  String get watchFailCooldown =>
      'ଆପଣ କିଛି ସମୟ ପୂର୍ବରୁ ଚେକ୍ ବନ୍ଦ କରିଦେଲେ | ପୁନର୍ବାର ଚେଷ୍ଟା କରିବାକୁ ଏହାକୁ ସମାଧାନ ଦବାନ୍ତୁ |';

  @override
  String get watchFailQuiet =>
      'ଚେକ୍ ଆପଣଙ୍କୁ ଆବଶ୍ୟକ କରେ, ଏବଂ ଆପ୍ ନିଜେ କାମ କରୁଥିଲା |';

  @override
  String get watchFailWebView => 'ପୃଷ୍ଠଭୂମି ୱେବ୍ ଦୃଶ୍ୟ ଆରମ୍ଭ ହୋଇପାରିଲା ନାହିଁ |';

  @override
  String get watchFailUnavailable =>
      'ଚେକ୍ ଅନ୍ ଦେଖାଇବାକୁ କ screen ଣସି ସ୍କ୍ରିନ୍ ନାହିଁ |';

  @override
  String get watchStatusReady => 'ପ୍ରସ୍ତୁତ |';

  @override
  String get watchStatusChallenge => 'କ୍ଲାଉଡ୍ ଫ୍ଲାର୍ ଯାଞ୍ଚ ଆବଶ୍ୟକ |';

  @override
  String get watchStatusBlocked => 'ସାଇଟ୍ ଦ୍ୱାରା ଅବରୋଧିତ |';

  @override
  String get watchStatusOffline => 'ସାଇଟରେ ପହଞ୍ଚିପାରିବ ନାହିଁ |';

  @override
  String get watchStatusUntested => 'ଏପର୍ଯ୍ୟନ୍ତ ପରୀକ୍ଷିତ ହୋଇନାହିଁ |';

  @override
  String get watchStatusTesting => 'ସଂଯୋଗ ପରୀକ୍ଷା…';

  @override
  String get watchStatusSolving => 'କ୍ଲାଉଡ୍ ଫ୍ଲାର୍ ଚେକ୍ ପାସ୍ କରିବା…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'କ୍ଲାଉଡ୍ ଫ୍ଲାର୍ ଚେକ୍ ପୃଷ୍ଠଭୂମିରେ ପାସ୍ ହୋଇଛି ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'କ୍ଲାଉଡ୍ ଫ୍ଲାର୍ ଚେକ୍ ପାସ୍ ହେଲା |';

  @override
  String watchClearanceIssued(String time) {
    return 'ରୋଜଗାର $time';
  }

  @override
  String get watchClearanceStale =>
      'କ୍ଲିୟରାନ୍ସ ଅନ୍ୟ ଉପଭୋକ୍ତା ଏଜେଣ୍ଟ ସହିତ ଅର୍ଜନ କରାଯାଇଥିଲା, ତେଣୁ ଏହା ପଠାଯାଇ ନାହିଁ | ଏକ ନୂତନ ପାଇବାକୁ ସଂଯୋଗକୁ ପରୀକ୍ଷା କରନ୍ତୁ |';

  @override
  String get watchSectionConnection => 'ସଂଯୋଗ';

  @override
  String get watchSectionSession => 'ଅଧିବେଶନ';

  @override
  String get watchSectionTools => 'ସାଧନଗୁଡ଼ିକ |';

  @override
  String get watchMetaSource => 'ଏପିସୋଡ୍ ବିବରଣୀ ଏଠାରୁ';

  @override
  String get watchMetaAuto => 'ସ୍ୱୟଂଚାଳିତ';

  @override
  String get watchMetaOff => 'ବନ୍ଦ';

  @override
  String get playerSettingsTitle => 'ପ୍ଲେୟାର୍ ସେଟିଂସ୍';

  @override
  String get playerSectionPlayback => 'ପ୍ଲେବ୍ୟାକ୍';

  @override
  String get playerSectionSkip => 'ଛାଡ଼ିବା';

  @override
  String get playerSectionGestures => 'ନିୟନ୍ତ୍ରଣ';

  @override
  String get playerSectionSubtitles => 'ସବଟାଇଟଲ୍';

  @override
  String get playerSectionShaders => 'ଶେଡର୍';

  @override
  String get playerSectionEngine => 'ଇଞ୍ଜିନ୍';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ପ୍ଲେବ୍ୟାକ୍ ବେଗ';

  @override
  String get localSource => 'ସ୍ଥାନୀୟ ଫାଇଲ୍ |';

  @override
  String get localMissing =>
      'ଏହି ଫାଇଲ୍ କିମ୍ବା ଫୋଲ୍ଡର୍ ଆଉ ଆପଣଙ୍କର ଲୋକାଲ୍ ଫୋଲ୍ଡରରେ ନାହିଁ |';

  @override
  String get playerStickyStage => 'ଷ୍ଟିକି ଭିଡିଓ |';

  @override
  String get playerStickyStageDesc =>
      'ଆପଣ ନିମ୍ନରେ ଥିବା ଏପିସୋଡ୍ ଏବଂ ମନ୍ତବ୍ୟଗୁଡିକ ସ୍କ୍ରୋଲ୍ କରୁଥିବାବେଳେ ଭିଡିଓକୁ ଶୀର୍ଷରେ ରଖନ୍ତୁ |';

  @override
  String get playerCursedSpeed => 'ଅତିରିକ୍ତ ବେଗ';

  @override
  String get playerCursedSpeedDesc => 'ତାଲିକାରେ ୧୦x ପର୍ଯ୍ୟନ୍ତ ବେଗ ଯୋଗ କରନ୍ତୁ';

  @override
  String get playerResize => 'ରିସାଇଜ୍ ମୋଡ୍';

  @override
  String get playerFitFit => 'ଫିଟ୍';

  @override
  String get playerFitCover => 'କଭର୍';

  @override
  String get playerFitStretch => 'ଷ୍ଟ୍ରେଚ୍';

  @override
  String get playerSkipDuration => 'ସ୍କିପ୍ ବଟନ୍ ଦୈର୍ଘ୍ୟ';

  @override
  String get playerSkipDurationDesc =>
      'ଓପନିଂ ଓ ଏଣ୍ଡିଂ ବାହାରେ ସ୍କିପ୍ ବଟନ୍ ଯେତେ ସେକେଣ୍ଡ ଡେଇଁବ';

  @override
  String get playerSeekDuration => 'ଡବଲ୍ ଟ୍ୟାପ୍ ସିକ୍';

  @override
  String get playerSeekDurationDesc =>
      'ଡବଲ୍ ଟ୍ୟାପ୍ ବା ଆରୋ କି ପାଇଁ ଡେଇଁବାକୁ ସେକେଣ୍ଡ';

  @override
  String get playerAutoPlay => 'ପରବର୍ତ୍ତୀଟି ସ୍ୱୟଂ ଚଲାନ୍ତୁ';

  @override
  String get playerAutoPlayDesc =>
      'ଏହା ଶେଷ ହେଲେ ପରବର୍ତ୍ତୀ ଏପିସୋଡ୍ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get playerResume => 'ଛାଡ଼ିଥିବା ଜାଗାରୁ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get playerResumeDesc => 'ଏକ ଏପିସୋଡ୍‌କୁ ତା\'ର ଶେଷ ସ୍ଥାନରୁ ଜାରି ରଖନ୍ତୁ';

  @override
  String get playerOrientation => 'ଓରିଏଣ୍ଟେସନ୍';

  @override
  String get playerOrientationAuto => 'ଡିଭାଇସ୍ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get playerOrientationLandscape => 'ଲ୍ୟାଣ୍ଡସ୍କେପ୍';

  @override
  String get playerOrientationPortrait => 'ପୋର୍ଟ୍ରେଟ୍';

  @override
  String get playerAutoSkipOpening => 'ଓପନିଂ ଛାଡ଼ନ୍ତୁ';

  @override
  String get playerAutoSkipEnding => 'ଏଣ୍ଡିଂ ଛାଡ଼ନ୍ତୁ';

  @override
  String get playerAutoSkipRecap => 'ରିକ୍ୟାପ୍ ଛାଡ଼ନ୍ତୁ';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip ଓ ଷ୍ଟ୍ରିମ୍ ଟାଇମଷ୍ଟାମ୍ପ ବ୍ୟବହାର କରି ଆରମ୍ଭ ହେବା ମାତ୍ରେ ଏହାକୁ ଡେଇଁଯାଆନ୍ତୁ';

  @override
  String get playerDisableSkips => 'ସ୍କିପ୍ ଅକ୍ଷମ କରନ୍ତୁ |';

  @override
  String get playerDisableSkipsDesc =>
      'କ An ଣସି ଆନିସ୍କିପ୍ କିମ୍ବା ଷ୍ଟ୍ରିମ୍ ଟାଇମଷ୍ଟ୍ୟାମ୍ପ, ଅଧ୍ୟାୟ ମାର୍କ କିମ୍ବା ପ୍ଲେୟାରରେ ସବମିସନ୍ ଛାଡିଦିଅ |';

  @override
  String get playerSkipOnce => 'କେବଳ ଥରେ ଛାଡ଼ନ୍ତୁ';

  @override
  String get playerSkipOnceDesc =>
      'ତୁମେ ପଛକୁ ଗଲେ ସେହି ଅଂଶକୁ ପୁଣି ଛାଡ଼ନ୍ତୁ ନାହିଁ';

  @override
  String get playerAdjustBrightness => 'ଉଜ୍ଜ୍ୱଳତା ଜେଶ୍ଚର୍';

  @override
  String get playerAdjustBrightnessDesc =>
      'ସ୍କ୍ରିନ୍‌ର ଡାହାଣ ଅଧା ଉପରେ ଉପର ଓ ତଳକୁ ସ୍ୱାଇପ୍ କରନ୍ତୁ';

  @override
  String get playerAdjustVolume => 'ଭଲ୍ୟୁମ୍ ଜେଶ୍ଚର୍';

  @override
  String get playerAdjustVolumeDesc =>
      'ସ୍କ୍ରିନ୍‌ର ବାମ ଅଧା ଉପରେ ଉପର ଓ ତଳକୁ ସ୍ୱାଇପ୍ କରନ୍ତୁ';

  @override
  String get playerHoldToSpeed => 'ଦ୍ରୁତ କରିବାକୁ ଧରି ରଖନ୍ତୁ';

  @override
  String get playerHoldToSpeedDesc =>
      'ଦ୍ରୁତ ଚଲାଇବାକୁ ଭିଡିଓ ଦବାଇ ଧରନ୍ତୁ, ବେଗ ବଦଳାଇବାକୁ ପାଖକୁ ଟାଣନ୍ତୁ';

  @override
  String get playerThumbless => 'ମୋଟା ସିକ୍ ବାର୍';

  @override
  String get playerThumblessDesc => 'ଥମ୍ବ ବିନା ଏକ ମୋଟା ବାର୍';

  @override
  String get playerShowSubtitles => 'ସବଟାଇଟଲ୍ ଦେଖାନ୍ତୁ';

  @override
  String get playerShowSubtitlesDesc =>
      'ସବୁ ସବଟାଇଟଲ୍ ଟ୍ରାକ୍ ଲୁଚାଇବାକୁ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get playerSubtitleLanguage => 'ପସନ୍ଦର ସବଟାଇଟଲ୍ ଭାଷା';

  @override
  String get playerSubtitleSize => 'ସବଟାଇଟଲ୍ ଆକାର';

  @override
  String get playerSubtitleWeight => 'ସବଟାଇଟଲ୍ ମୋଟେଇ';

  @override
  String get playerSubtitleBottom => 'ସବଟାଇଟଲ୍ ତଳ ପ୍ୟାଡିଂ';

  @override
  String get playerSubtitleFont => 'ସବଟାଇଟଲ୍ ଫଣ୍ଟ';

  @override
  String get playerSubtitleColor => 'ସବଟାଇଟଲ୍ ରଙ୍ଗ';

  @override
  String get playerSubtitleBackground => 'ସବଟାଇଟଲ୍ ପୃଷ୍ଠଭୂମି';

  @override
  String get playerSubtitleOutline => 'ସବଟାଇଟଲ୍ ଆଉଟଲାଇନ୍';

  @override
  String get playerSubtitleOutlineWidth => 'ସବ୍ଟାଇଟ୍ ବାହ୍ୟରେଖା ମୋଟେଇ |';

  @override
  String get playerSubtitlePreview => 'ସବ୍ଟାଇଟ୍ ପୂର୍ବାବଲୋକନ |';

  @override
  String get playerSubtitlePreviewText => 'ସବ୍ଟାଇଟ୍ ପୂର୍ବାବଲୋକନ ପାଠ୍ୟ |';

  @override
  String get playerLibass => 'libass ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get playerLibassDesc =>
      'ଷ୍ଟାଇଲ୍ ହୋଇଥିବା .ass ସବଟାଇଟଲ୍ ରେଣ୍ଡର୍ କରନ୍ତୁ। ଉପରେ ଥିବା ଆକାର, ରଙ୍ଗ ଓ ଫଣ୍ଟ ତା\'ପରେ ଲାଗୁ ହୁଏ ନାହିଁ';

  @override
  String get playerShaders => 'ଶେଡର୍';

  @override
  String get playerShadersEnable => 'ଶେଡର୍ ସକ୍ଷମ କରନ୍ତୁ';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K ଭଳି GLSL ଶେଡର୍ ଦ୍ୱାରା ଛବିକୁ ଅପସ୍କେଲ୍ ଓ ସଫା କରନ୍ତୁ';

  @override
  String get playerShadersOff => 'ଶେଡର୍ ବନ୍ଦ';

  @override
  String get playerShadersMissing => 'Anime4K ଇନଷ୍ଟଲ୍ ହୋଇନାହିଁ';

  @override
  String get playerShadersMissingDesc =>
      'ବିଲ୍ଟ-ଇନ୍ ମୋଡ୍ ବ୍ୟବହାର କରିବାକୁ Anime4K ଶେଡର୍ ପ୍ୟାକ୍ (ପ୍ରାୟ ୦.୮ MB) ଡାଉନଲୋଡ୍ କରନ୍ତୁ।';

  @override
  String get playerShadersDownload => 'Anime4K ଡାଉନଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get playerPictureSave => 'ଏହି ଫ୍ରେମ୍ ସେଭ୍ କରନ୍ତୁ |';

  @override
  String get playerPictureOriginal => 'ମୂଳ';

  @override
  String get playerPictureOriginalDesc =>
      'ଭିଡିଓ ପରି ଫ୍ରେମ୍, ଛାୟା କିମ୍ବା ରଙ୍ଗ ବିନା |';

  @override
  String get playerPictureProcessed => 'ଛାୟା ଏବଂ ରଙ୍ଗ ସହିତ |';

  @override
  String get playerPictureProcessedDesc =>
      'ଫ୍ରେମ୍ ଯେପରି ଆପଣ ବର୍ତ୍ତମାନ ଦେଖୁଛନ୍ତି |';

  @override
  String get playerPictureSaved => 'ଫ୍ରେମ୍ ସେଭ୍ ହୋଇଛି |';

  @override
  String get playerPictureSaveFailed => 'ଫ୍ରେମ୍ ସେଭ୍ କରିପାରିଲା ନାହିଁ |';

  @override
  String get playerShadersPreview => 'ଏହି ଫ୍ରେମ୍‌ରେ ପ୍ରିଭ୍ୟୁ';

  @override
  String get playerShadersUse => 'ଏହା ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get playerPicture => 'ଛବି';

  @override
  String get playerColors => 'ରଙ୍ଗ';

  @override
  String get playerColorDefault => 'ଡିଫଲ୍ଟ';

  @override
  String get playerColorVivid => 'ଚମକଦାର';

  @override
  String get playerColorPop => 'ଆନିମେ ପପ୍';

  @override
  String get playerColorSoft => 'କୋମଳ';

  @override
  String get playerColorCinematic => 'ସିନେମାଟିକ୍';

  @override
  String get playerColorBright => 'ଉଜ୍ଜ୍ୱଳ';

  @override
  String get playerColorNight => 'ରାତି';

  @override
  String get playerColorMono => 'ମୋନୋ';

  @override
  String get playerColorCustom => 'କଷ୍ଟମ୍';

  @override
  String get playerColorBrightness => 'ଉଜ୍ଜ୍ୱଳତା';

  @override
  String get playerColorContrast => 'କଣ୍ଟ୍ରାଷ୍ଟ';

  @override
  String get playerColorSaturation => 'ସାଚୁରେସନ୍';

  @override
  String get playerColorGamma => 'ଗାମା';

  @override
  String get playerColorHue => 'ହ୍ୟୁ';

  @override
  String get playerColorReset => 'ରିସେଟ୍';

  @override
  String get playerColorAdjust => 'ସମାୟୋଜନ';

  @override
  String get playerShadersOriginal => 'ମୂଳ';

  @override
  String get playerShadersPreviewFailed =>
      'ପ୍ରିଭ୍ୟୁ ପାଇଁ ଏକ ଫ୍ରେମ୍ ନେଇପାରିଲୁ ନାହିଁ';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings।';

  @override
  String get playerSoftwareRender => 'ସଫ୍ଟୱେର୍ ରେଣ୍ଡରିଂ |';

  @override
  String get playerSoftwareRenderDesc =>
      'କେବଳ ଏକ କଳା ଭିଡିଓ ପାଇଁ | ଛାୟାମାନେ ଏହା ସହିତ କାମ କରନ୍ତି ନାହିଁ | ପରବର୍ତ୍ତୀ ଥର ପ୍ଲେୟାର ଖୋଲିବା ସମୟରେ ପ୍ରୟୋଗ ହୁଏ |';

  @override
  String get playerShadersCustomFiles => 'ତୁମ ଶେଡର୍';

  @override
  String get playerShadersCustom => 'କଷ୍ଟମ୍ ଶେଡର୍';

  @override
  String get playerShadersImport => '.glsl ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String get playerShadersNone =>
      'ନିଜର .glsl ବା .hook ଫାଇଲ୍ ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ ଓ ସେଗୁଡ଼ିକୁ ଶୃଙ୍ଖଳିତ କରିବାକୁ ଟିକ୍ କରନ୍ତୁ';

  @override
  String get playerShadersBadFile => 'ଏକ .glsl ବା .hook ଶେଡର୍ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get playerDecoder => 'ଡିକୋଡର୍';

  @override
  String get playerDecoderAuto => 'ସ୍ୱୟଂ';

  @override
  String get playerDecoderAutoSafe => 'ସ୍ୱୟଂ (ସୁରକ୍ଷିତ)';

  @override
  String get playerDecoderSoftware => 'ସଫ୍ଟୱେର୍';

  @override
  String get playerDecoderHardware => 'ହାର୍ଡୱେର୍';

  @override
  String get playerDecoderHardwarePlus => 'ହାର୍ଡୱେର୍+';

  @override
  String get playerVideoOutput => 'ଭିଡିଓ ଆଉଟପୁଟ୍';

  @override
  String get playerAudioChannels => 'ଅଡିଓ ଚ୍ୟାନେଲ୍';

  @override
  String get playerBuffer => 'ବଫର୍ ଆକାର (MB)';

  @override
  String get playerBufferDesc =>
      'ଏକ ଷ୍ଟ୍ରିମ୍ ବଫର୍ କରିବାକୁ ପ୍ଲେୟାର୍ ବ୍ୟବହାର କରିପାରିବା ମେମୋରୀ';

  @override
  String get playerUseMpvConf => 'mpv.conf ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get playerUseMpvConfDesc =>
      'ପ୍ଲେବ୍ୟାକ୍ ଆରମ୍ଭ ହେଲେ ତୁମ mpv.confର ବିକଳ୍ପ ଲାଗୁ କରନ୍ତୁ';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv କନଫିଗରେସନ୍ ସମ୍ପାଦନ କରନ୍ତୁ';

  @override
  String get playerMpvConfDesc =>
      'ପ୍ରତି ଧାଡ଼ିରେ ଗୋଟିଏ ବିକଳ୍ପ, ସାଧାରଣ mpv.confର --hwdec=auto ପରି। [ବ୍ରାକେଟ୍] ଭିତରେ ଥିବା ପ୍ରୋଫାଇଲ୍ ଅଣଦେଖା ହୁଏ।';

  @override
  String get playerMpvConfSaved => 'mpv.conf ସେଭ୍ ହେଲା';

  @override
  String get playerUseScripts => 'mpv ସ୍କ୍ରିପ୍ଟ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get playerUseScriptsDesc =>
      'ସ୍କ୍ରିପ୍ଟ ଫୋଲ୍ଡରରୁ ପ୍ଲଗଇନ୍ ଲୋଡ୍ କରନ୍ତୁ। ସେଥିପାଇଁ Lua ବା JavaScript ସମର୍ଥନ ଥିବା libmpv ବିଲ୍ଡ ଦରକାର';

  @override
  String get playerScripts => 'mpv ସ୍କ୍ରିପ୍ଟ';

  @override
  String get playerScriptsManage => 'ପ୍ଲଗଇନ୍ ଯୋଗ କରନ୍ତୁ, ହଟାନ୍ତୁ ଓ ବଦଳାନ୍ତୁ';

  @override
  String get playerScriptsAdd => 'ସ୍କ୍ରିପ୍ଟ ଯୋଗ କରନ୍ତୁ';

  @override
  String get playerScriptsDesc =>
      'ଏଠି ରଖାଯାଇଥିବା Lua, JavaScript ଓ ନେଟିଭ୍ ପ୍ଲଗଇନ୍ ପ୍ଲେବ୍ୟାକ୍ ଆରମ୍ଭ ହେଲେ ଲୋଡ୍ ହୁଏ।';

  @override
  String get playerScriptsNone => 'ଏପର୍ଯ୍ୟନ୍ତ ସ୍କ୍ରିପ୍ଟ ନାହିଁ';

  @override
  String get playerScriptsBadFile =>
      'ଏକ .lua, .js ବା ନେଟିଭ୍ ପ୍ଲଗଇନ୍ ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get playerTuning => 'ଉନ୍ନତ ଭିଡିଓ ଟ୍ୟୁନିଂ';

  @override
  String get playerTuningDesc =>
      'ସିଙ୍କ୍, କ୍ୟାଶିଂ, ସ୍କେଲିଂ ଓ ଟୋନ୍ ମ୍ୟାପିଂ ଓଭରରାଇଡ୍ କରନ୍ତୁ। ଭୁଲ୍ ମୂଲ୍ୟ ପ୍ଲେବ୍ୟାକ୍‌କୁ ଖରାପ କରିପାରେ';

  @override
  String get playerVideoSync => 'ଭିଡିଓ ସିଙ୍କ୍';

  @override
  String get playerInterpolation => 'ଫ୍ରେମ୍ ଇଣ୍ଟରପୋଲେସନ୍';

  @override
  String get playerInterpolationDesc =>
      'ସୁଗମ ଗତି, display-resample ସିଙ୍କ୍ ଦରକାର';

  @override
  String get playerPitch => 'ପିଚ୍ ସଂଶୋଧନ';

  @override
  String get playerPitchDesc => 'ଅନ୍ୟ ବେଗରେ ସ୍ୱର ସ୍ୱାଭାବିକ ରଖନ୍ତୁ';

  @override
  String get playerCacheSeconds => 'କ୍ୟାଶ୍ (ସେକେଣ୍ଡ)';

  @override
  String get playerReadahead => 'ଆଗରୁ ପଢ଼ନ୍ତୁ (ସେକେଣ୍ଡ)';

  @override
  String get playerThreads => 'ଡିକୋଡର୍ ଥ୍ରେଡ୍';

  @override
  String get playerDeband => 'ଡିବ୍ୟାଣ୍ଡ';

  @override
  String get playerDebandDesc => 'ଗ୍ରାଡିଏଣ୍ଟରେ ରଙ୍ଗ ବ୍ୟାଣ୍ଡିଂ କମାନ୍ତୁ';

  @override
  String get playerDebandIterations => 'ଡିବ୍ୟାଣ୍ଡ ପୁନରାବୃତ୍ତି';

  @override
  String get playerDebandThreshold => 'ଡିବ୍ୟାଣ୍ଡ ସୀମା';

  @override
  String get playerCorrectDownscaling => 'ସଠିକ୍ ଡାଉନସ୍କେଲିଂ';

  @override
  String get playerSigmoid => 'ସିଗ୍ମଏଡ୍ ଅପସ୍କେଲିଂ';

  @override
  String get playerScale => 'ଅପସ୍କେଲର୍';

  @override
  String get playerCscale => 'କ୍ରୋମା ଅପସ୍କେଲର୍';

  @override
  String get playerDscale => 'ଡାଉନସ୍କେଲର୍';

  @override
  String get playerToneMapping => 'ଟୋନ୍ ମ୍ୟାପିଂ';

  @override
  String get playerTargetPeak => 'ଲକ୍ଷ୍ୟ ଶିଖର';

  @override
  String get playerOpenFiles => 'ଭିଡିଓ ଫାଇଲ୍ ଖୋଲନ୍ତୁ';

  @override
  String get playerOpenFilesDesc => 'ଏହି ଡିଭାଇସ୍‌ରୁ ଫାଇଲ୍ ଚଲାନ୍ତୁ';

  @override
  String get playerOpenFolder => 'ଏକ ଫୋଲ୍ଡର ଖୋଲନ୍ତୁ';

  @override
  String get playerOpenFolderDesc =>
      'ଏକ ଫୋଲ୍ଡରର ସବୁ ଭିଡିଓ ପ୍ଲେଲିଷ୍ଟ ଭାବରେ ଚଲାନ୍ତୁ';

  @override
  String get playerNetworkStream => 'ନେଟୱାର୍କ ଷ୍ଟ୍ରିମ୍';

  @override
  String get playerNetworkStreamDesc =>
      'ଏକ ସିଧାସଳଖ ଭିଡିଓ ବା HLS ଲିଙ୍କ୍ ଖୋଲନ୍ତୁ';

  @override
  String get playerStreamUrl => 'ଷ୍ଟ୍ରିମ୍ URL';

  @override
  String get playerStreamReferer => 'ରେଫରର୍ (ବିକଳ୍ପ)';

  @override
  String get playerTorrent => 'ଟୋରେଣ୍ଟ';

  @override
  String get playerTorrentDesc =>
      'ଏକ ମ୍ୟାଗ୍ନେଟ୍ ଲିଙ୍କ୍ ବା .torrent ଫାଇଲ୍ ଷ୍ଟ୍ରିମ୍ କରନ୍ତୁ';

  @override
  String get playerMagnetLink => 'ମ୍ୟାଗ୍ନେଟ୍ ଲିଙ୍କ୍ ବା ଟୋରେଣ୍ଟ URL';

  @override
  String get playerPickTorrent => 'ଏକ .torrent ଫାଇଲ୍ ବାଛନ୍ତୁ';

  @override
  String get playerTorrentMissing =>
      'ପ୍ରଥମେ ସେଟିଂସ୍ > ଆଡ୍-ଅନ୍‌ରୁ ଟୋରେଣ୍ଟ ଆଡ୍-ଅନ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get playerNoVideos => 'ଚଲାଇବାଯୋଗ୍ୟ ଭିଡିଓ ମିଳିଲା ନାହିଁ';

  @override
  String get playerReset => 'ପ୍ଲେୟାର୍ ସେଟିଂସ୍ ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get playerResetDesc => 'ପ୍ରତ୍ୟେକ ପ୍ଲେୟାର୍ ବିକଳ୍ପକୁ ଡିଫଲ୍ଟକୁ ଫେରାନ୍ତୁ';

  @override
  String get playerResetConfirm => 'ସବୁ ପ୍ଲେୟାର୍ ସେଟିଂସ୍ ରିସେଟ୍ କରିବେ?';

  @override
  String get playerResetDone => 'ପ୍ଲେୟାର୍ ସେଟିଂସ୍ ରିସେଟ୍ ହେଲା';

  @override
  String get playerQuality => 'ଗୁଣବତ୍ତା';

  @override
  String get streamGroupSub => 'ସବ୍';

  @override
  String get streamGroupHardSub => 'ହାର୍ଡ ସବ୍ |';

  @override
  String get streamGroupSoftSub => 'ସଫ୍ଟ ସବ୍ |';

  @override
  String get streamGroupDub => 'ଡବ୍ |';

  @override
  String get streamGroupRaw => 'କଞ୍ଚା';

  @override
  String get streamGroupOther => 'ଅନ୍ୟମାନେ |';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଷ୍ଟ୍ରିମ୍ |',
      one: '1 ଷ୍ଟ୍ରିମ୍ |',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'ଷ୍ଟ୍ରିମ୍';

  @override
  String get playerStreamFailedNext =>
      'ପରବର୍ତ୍ତୀ ଷ୍ଟ୍ରିମ୍ ଚେଷ୍ଟା କରି ସେହି ଷ୍ଟ୍ରିମ୍ ଖେଳିବ ନାହିଁ |';

  @override
  String get playerAutoSelect => 'ଷ୍ଟ୍ରିମ୍ ସ୍ୱୟଂ ବାଛନ୍ତୁ';

  @override
  String get playerAutoSelectDesc =>
      'ଏହି ଶୀର୍ଷକ ପାଇଁ ତୁମ ଶେଷ ପସନ୍ଦ ପରି ଷ୍ଟ୍ରିମ୍ ବାଛନ୍ତୁ';

  @override
  String get playerLoadingStreams => 'ଷ୍ଟ୍ରିମ୍ ଖୋଜୁଛି…';

  @override
  String get playerNoStreams => 'ଏହି ଏପିସୋଡ୍‌ରେ ଷ୍ଟ୍ରିମ୍ ନାହିଁ';

  @override
  String get playerNoStreamsTitle => 'କୌଣସି ଷ୍ଟ୍ରିମ୍ ମିଳିଲା ନାହିଁ';

  @override
  String get playerFailed => 'ପ୍ଲେବ୍ୟାକ୍ ବିଫଳ ହେଲା';

  @override
  String get playerTorrentNeeded => 'ଏହି ଷ୍ଟ୍ରିମ୍ ଏକ ଟୋରେଣ୍ଟ';

  @override
  String get playerTorrentNeededDesc =>
      'ମ୍ୟାଗ୍ନେଟ୍ ଲିଙ୍କ୍ ଓ .torrent ଫାଇଲ୍ ଚଲାଇବାକୁ ଟୋରେଣ୍ଟ ଆଡ୍-ଅନ୍ ଇନଷ୍ଟଲ୍ କରନ୍ତୁ';

  @override
  String get playerOpenAddons => 'ଆଡ୍-ଅନ୍ ଖୋଲନ୍ତୁ';

  @override
  String get playerTryAnotherStream => 'ଅନ୍ୟ ଏକ ଷ୍ଟ୍ରିମ୍ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get playerEpisodes => 'ଏପିସୋଡ୍';

  @override
  String get playerLock => 'ନିୟନ୍ତ୍ରଣ ଲକ୍ କରନ୍ତୁ';

  @override
  String get playerFullscreen => 'ଫୁଲ୍‌ସ୍କ୍ରିନ୍';

  @override
  String get readerChapters => 'ଅଧ୍ୟାୟ';

  @override
  String get readerSettingsTitle => 'ରିଡର୍ ସେଟିଂସ୍';

  @override
  String get readerPreviousChapter => 'ପୂର୍ବ ଅଧ୍ୟାୟ';

  @override
  String get readerNextChapter => 'ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟ';

  @override
  String get readerFirstChapter => 'ଏହା ପ୍ରଥମ ଅଧ୍ୟାୟ';

  @override
  String get readerLastChapter => 'ତୁମେ ସବୁ ପଢ଼ିସାରିଛ';

  @override
  String get readerFailed => 'ଏହି ଅଧ୍ୟାୟ ଖୋଲିପାରିଲୁ ନାହିଁ';

  @override
  String get readerOpenBook => 'ଏକ ବହି ଖୋଲ |';

  @override
  String get readerOpenBookDesc =>
      'ଆପଣଙ୍କ ଫାଇଲଗୁଡ଼ିକରୁ ଏକ ଏପବ୍ (ଉପନ୍ୟାସ ପାଠକ) କିମ୍ବା ଏକ PDF (ମାଙ୍ଗା ରିଡର୍) ପ Read ନ୍ତୁ |';

  @override
  String get readerNoText => 'ଏହି ଅଧ୍ୟାୟରେ ଟେକ୍ସଟ୍ ନାହିଁ';

  @override
  String get readerPerTitle => 'କେବଳ ଏହି ଶୀର୍ଷକ ପାଇଁ';

  @override
  String get readerPerTitleDesc =>
      'ଏହି ରିଡର୍ ସେଟିଂସ୍ କେବଳ ଏହି ଶୀର୍ଷକ ପାଇଁ ରଖନ୍ତୁ';

  @override
  String get readerSectionReading => 'ପଢ଼ିବା';

  @override
  String get readerSectionControls => 'ନିୟନ୍ତ୍ରଣ';

  @override
  String get readerSectionDisplay => 'ଡିସପ୍ଲେ';

  @override
  String get readerSectionNovel => 'ନଭେଲ୍';

  @override
  String get readerMode => 'ପଢ଼ିବା ମୋଡ୍';

  @override
  String get readerModeAuto => 'ଅଟୋ (ସିରିଜ୍ ପ୍ରକାର ଅନୁଯାୟୀ)';

  @override
  String get readerModeRtl => 'ଡାହାଣରୁ ବାମକୁ';

  @override
  String get readerModeLtr => 'ବାମରୁ ଡାହାଣକୁ';

  @override
  String get readerModeVertical => 'ଉଲ୍ଲମ୍ବ ପୃଷ୍ଠା';

  @override
  String get readerModeWebtoon => 'ୱେବ୍‌ଟୁନ୍';

  @override
  String get readerModeContinuous => 'ନିରନ୍ତର ସ୍କ୍ରୋଲ୍';

  @override
  String get readerScale => 'ଇମେଜ୍ ସ୍କେଲ୍';

  @override
  String get readerScaleFit => 'ସ୍କ୍ରିନ୍‌ରେ ଫିଟ୍';

  @override
  String get readerScaleWidth => 'ଚଉଡ଼ାରେ ଫିଟ୍';

  @override
  String get readerScaleHeight => 'ଉଚ୍ଚତାରେ ଫିଟ୍';

  @override
  String get readerScaleOriginal => 'ମୂଳ ଆକାର';

  @override
  String get readerScaleSmart => 'ସ୍ମାର୍ଟ ଫିଟ୍';

  @override
  String get readerDoublePage => 'ଡବଲ୍ ପୃଷ୍ଠା';

  @override
  String get readerDoublePageDesc =>
      'ଲ୍ୟାଣ୍ଡସ୍କେପ୍‌ରେ ଦୁଇଟି ପୃଷ୍ଠା ପାଖାପାଖି ଦେଖାନ୍ତୁ';

  @override
  String get readerDoubleTapZoom => 'ଜୁମ୍ କରିବାକୁ ଡବଲ୍ ଟ୍ୟାପ୍';

  @override
  String get readerDoubleTapZoomDesc =>
      'ଡବଲ୍ ଟ୍ୟାପ୍ ଦ୍ୱାରା ଏକ ପୃଷ୍ଠାକୁ ଜୁମ୍ ଇନ୍ ଓ ଆଉଟ୍ କରନ୍ତୁ';

  @override
  String get readerAnimate => 'ପୃଷ୍ଠା ଆନିମେସନ୍';

  @override
  String get readerAnimateDesc => 'ପୃଷ୍ଠା ବଦଳିବା ଆନିମେଟ୍ କରନ୍ତୁ';

  @override
  String get readerSidePadding => 'ପାର୍ଶ୍ୱ ପ୍ୟାଡିଂ';

  @override
  String get readerSidePaddingDesc => 'ପୃଷ୍ଠା ପାଖରେ ଥିବା ସ୍ଥାନ ଶତକଡ଼ାରେ';

  @override
  String get readerPageGap => 'ପୃଷ୍ଠା ଫାଙ୍କ';

  @override
  String get readerPageGapDesc => 'ପୃଷ୍ଠା ମଧ୍ୟରେ ସ୍ଥାନ';

  @override
  String get readerAutoNext => 'ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟକୁ ଜାରି ରଖନ୍ତୁ';

  @override
  String get readerAutoNextDesc =>
      'ତୁମେ ଏହାର ଶେଷ ପଢ଼ୁଥିବା ବେଳେ ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get readerPreload => 'ପୃଷ୍ଠା ପ୍ରିଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get readerPreloadDesc => 'ଆଗରୁ କେତୋଟି ପୃଷ୍ଠା ଡାଉନଲୋଡ୍ କରିବେ';

  @override
  String get readerTapZones => 'ଟ୍ୟାପ୍ ଜୋନ୍';

  @override
  String get readerTapDefault => 'ଡିଫଲ୍ଟ';

  @override
  String get readerTapLShaped => 'L-ଆକୃତିର';

  @override
  String get readerTapKindle => 'କିଣ୍ଡଲ୍ ପରି';

  @override
  String get readerTapEdge => 'କେବଳ ଧାର';

  @override
  String get readerTapOff => 'ଅକ୍ଷମ';

  @override
  String get readerInvertTaps => 'ଟ୍ୟାପ୍ ଜୋନ୍ ଓଲଟାନ୍ତୁ';

  @override
  String get readerInvertTapsDesc => 'ପୂର୍ବ ଓ ପରବର୍ତ୍ତୀ କ୍ଷେତ୍ର ଅଦଳବଦଳ କରନ୍ତୁ';

  @override
  String get readerBackground => 'ପୃଷ୍ଠଭୂମି';

  @override
  String get readerBackgroundBlack => 'କଳା';

  @override
  String get readerBackgroundGray => 'ଧୂସର';

  @override
  String get readerBackgroundWhite => 'ଧଳା';

  @override
  String get readerBackgroundTheme => 'ଆପ୍ ଥିମ୍';

  @override
  String get readerFilter => 'ରଙ୍ଗ ଫିଲ୍ଟର୍';

  @override
  String get readerFilterNone => 'କିଛି ନାହିଁ';

  @override
  String get readerFilterGrayscale => 'ଗ୍ରେସ୍କେଲ୍';

  @override
  String get readerFilterInvert => 'ଓଲଟା';

  @override
  String get readerFilterSepia => 'ସେପିଆ';

  @override
  String get readerFilterQuality => 'ପ୍ରତିଛବି ଫିଲ୍ଟର ଗୁଣ |';

  @override
  String get readerFilterQualityNone => 'କିଛି ନୁହେଁ (ନିକଟ ପଡୋଶୀ)';

  @override
  String get readerFilterQualityLow => 'ନିମ୍ନ (ବିଲିନାର୍)';

  @override
  String get readerFilterQualityMedium => 'ମଧ୍ୟମ (ତ୍ରିଲୋଚନ)';

  @override
  String get readerFilterQualityHigh => 'ଉଚ୍ଚ (ବାଇକ୍ୟୁବିକ୍)';

  @override
  String get readerFilterQualityLanczos => 'ଲଙ୍କଜୋସ୍ (ରୁଷ୍ଟ ଉଚ୍ଚ ଗୁଣ)';

  @override
  String get readerDim => 'ଅନ୍ଧାର';

  @override
  String get readerDimDesc => 'ପୃଷ୍ଠାକୁ ଗାଢ଼ କରନ୍ତୁ';

  @override
  String get readerPageNumber => 'ପୃଷ୍ଠା ନମ୍ବର୍';

  @override
  String get readerPageNumberDesc => 'ପଢ଼ିବା ବେଳେ ପୃଷ୍ଠା ନମ୍ବର୍ ଦେଖାନ୍ତୁ';

  @override
  String get readerFullscreen => 'ଫୁଲ୍‌ସ୍କ୍ରିନ୍';

  @override
  String get readerFullscreenDesc => 'ସିଷ୍ଟମ୍ ବାର୍ ଲୁଚାନ୍ତୁ';

  @override
  String get readerCropBorders => 'ଧାର କାଟନ୍ତୁ';

  @override
  String get readerCropBordersDesc =>
      'ପୃଷ୍ଠାରୁ ଖାଲି ଧଳା ବା କଳା ମାର୍ଜିନ୍ ଛାଣି ଦିଅନ୍ତୁ';

  @override
  String get readerLongPressSave =>
      'ଏହାକୁ ସଞ୍ଚୟ କରିବାକୁ ଏକ ପୃଷ୍ଠା ଧରି ରଖନ୍ତୁ |';

  @override
  String get readerLongPressSaveDesc =>
      'ସେଭ୍, ସେୟାର୍ ଏବଂ କପି ଅପ୍ସନ୍ ଖୋଲିବା ପାଇଁ ଏକ ପୃଷ୍ଠା ଲମ୍ୱା ଦବାନ୍ତୁ |';

  @override
  String get readerVolumeKeys => 'ଭଲ୍ୟୁମ୍ କି ପୃଷ୍ଠା ବଦଳାଏ';

  @override
  String get readerVolumeKeysDesc =>
      'ଭଲ୍ୟୁମ୍ ଡାଉନ୍ ଆଗକୁ ଯାଏ, ଭଲ୍ୟୁମ୍ ଅପ୍ ପଛକୁ ଆସେ';

  @override
  String get readerBookmarks => 'ବୁକ୍‌ମାର୍କ';

  @override
  String get readerBookmarkAdd => 'ବୁକ୍‌ମାର୍କ ଯୋଗ କରନ୍ତୁ';

  @override
  String get readerBookmarkRemove => 'ବୁକ୍‌ମାର୍କ ହଟାନ୍ତୁ';

  @override
  String get readerBookmarksEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ ବୁକ୍‌ମାର୍କ ନାହିଁ';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total ମଧ୍ୟରୁ ପୃଷ୍ଠା $page';
  }

  @override
  String get readerAutoScroll => 'ଅଟୋ ସ୍କ୍ରୋଲ୍';

  @override
  String get readerAutoScrollStop => 'ଅଟୋ ସ୍କ୍ରୋଲ୍ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get readerAutoScrollSpeed => 'ଅଟୋ ସ୍କ୍ରୋଲ୍ ବେଗ';

  @override
  String get readerAutoScrollSpeedDesc =>
      'ପୃଷ୍ଠା ନିଜେ କେତେ ଦ୍ରୁତ ସ୍କ୍ରୋଲ୍ ବା ବଦଳେ';

  @override
  String get readerKeepOn => 'ସ୍କ୍ରିନ୍ ଚାଲୁ ରଖନ୍ତୁ';

  @override
  String get readerKeepOnDesc =>
      'ପଢ଼ିବା ବେଳେ ସ୍କ୍ରିନ୍ ବନ୍ଦ ହେବାକୁ ଦିଅନ୍ତୁ ନାହିଁ';

  @override
  String get readerOrientation => 'ଓରିଏଣ୍ଟେସନ୍';

  @override
  String get readerOrientationFree => 'ମୁକ୍ତ';

  @override
  String get readerOrientationPortrait => 'ପୋର୍ଟ୍ରେଟ୍';

  @override
  String get readerOrientationLandscape => 'ଲ୍ୟାଣ୍ଡସ୍କେପ୍';

  @override
  String get readerSaveProgress => 'ପ୍ରଗତି ସେଭ୍ କରନ୍ତୁ';

  @override
  String get readerSaveProgressDesc =>
      'ତୁମ ପୃଷ୍ଠା ମନେ ରଖନ୍ତୁ ଓ ଅଧ୍ୟାୟକୁ ପଢ଼ିସାରିଛି ଚିହ୍ନିତ କରନ୍ତୁ';

  @override
  String get readerReset => 'ରିଡର୍ ସେଟିଂସ୍ ରିସେଟ୍ କରନ୍ତୁ';

  @override
  String get readerResetDesc => 'ଡିଫଲ୍ଟକୁ ଫେରନ୍ତୁ';

  @override
  String get readerResetConfirm =>
      'ପ୍ରତ୍ୟେକ ପାଠକ ସେଟିଂକୁ ଏହାର ଡିଫଲ୍ଟରେ ପୁନ Res ସେଟ୍ କରିବେ କି?';

  @override
  String get novelSize => 'ଟେକ୍ସଟ୍ ଆକାର';

  @override
  String get novelFont => 'ଫଣ୍ଟ';

  @override
  String get novelLineHeight => 'ଧାଡ଼ି ଉଚ୍ଚତା';

  @override
  String get novelParagraph => 'ଅନୁଚ୍ଛେଦ ଫାଙ୍କ';

  @override
  String get novelMargin => 'ମାର୍ଜିନ୍';

  @override
  String get novelTheme => 'ରିଡର୍ ଥିମ୍';

  @override
  String get novelThemeApp => 'ଆପ୍ ଥିମ୍';

  @override
  String get novelThemeLight => 'ହାଲୁକା';

  @override
  String get novelThemeSepia => 'ସେପିଆ';

  @override
  String get novelThemeDark => 'ଗାଢ଼';

  @override
  String get novelThemeBlack => 'କଳା';

  @override
  String get novelJustify => 'ଟେକ୍ସଟ୍ ଜଷ୍ଟିଫାଏ କରନ୍ତୁ';

  @override
  String get novelJustifyDesc => 'ଟେକ୍ସଟ୍ ଦୁଇ ଧାରରେ ସମାନ କରନ୍ତୁ';

  @override
  String get trackProgressTitle => 'ପ୍ରଗତି ସେଭ୍ କରିବେ?';

  @override
  String trackProgressAnime(String name) {
    return 'ତୁମେ ଦେଖୁଥିବା ବେଳେ $nameକୁ ତୁମ ତାଲିକାରେ ଟ୍ରାକ୍ କରିବେ? ଲୋକାଲ୍ ରଖିବାକୁ \"ଏହି ଡିଭାଇସ୍ ମାତ୍ର\" ବାଛନ୍ତୁ, ବା କିଛି ସେଭ୍ ନକରିବାକୁ ନା।';
  }

  @override
  String trackProgressManga(String name) {
    return 'ତୁମେ ଏକ ଅଧ୍ୟାୟ ଶେଷ କଲେ $nameକୁ ତୁମ ତାଲିକାରେ ଟ୍ରାକ୍ କରିବେ? ଲୋକାଲ୍ ରଖିବାକୁ \"ଏହି ଡିଭାଇସ୍ ମାତ୍ର\" ବାଛନ୍ତୁ, ବା କିଛି ସେଭ୍ ନକରିବାକୁ ନା।';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'ଆପଣ ଦେଖୁଥିବା ସମୟରେ ଏହି ଡିଭାଇସରେ ଆପଣଙ୍କ ତାଲିକାରେ $name ରେ ଆପଣଙ୍କର ଅଗ୍ରଗତି ସଞ୍ଚୟ କରନ୍ତୁ?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'ଯେତେବେଳେ ତୁମେ ଏକ ଅଧ୍ୟାୟ ସମାପ୍ତ କରିବ ଏହି ଉପକରଣରେ ତୁମର ତାଲିକାରେ $name ରେ ତୁମର ଅଗ୍ରଗତି ସଞ୍ଚୟ କର?';
  }

  @override
  String get downloadClearQueue => 'ଧାଡି ସଫା କରନ୍ତୁ |';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted।';
  }

  @override
  String downloadSelectedCount(int count) {
    return '$count ମନୋନୀତ |';
  }

  @override
  String get downloadSelectAll => 'ସମସ୍ତ ଚୟନ କରନ୍ତୁ |';

  @override
  String get downloadDeleteSelected => 'ମନୋନୀତ ବିଲୋପ କରନ୍ତୁ |';

  @override
  String downloadDeleteSelectedConfirm(int count) {
    return 'Delete $count downloads? Their files are removed from the device।';
  }

  @override
  String get castTitle => 'ଡିଭାଇସକୁ କାଷ୍ଟ କରନ୍ତୁ |';

  @override
  String get castSearching => 'ଆପଣଙ୍କ ନେଟୱାର୍କରେ ଡିଭାଇସ୍ ଖୋଜୁଛି…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again।';

  @override
  String get castRefresh => 'ପୁନର୍ବାର ଖୋଜ |';

  @override
  String get castFailed => 'କାଷ୍ଟିଂ ଆରମ୍ଭ କରିପାରିଲା ନାହିଁ |';

  @override
  String get castStop => 'କାଷ୍ଟିଂ ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String castNowCasting(String name) {
    return '$name କୁ କାଷ୍ଟିଂ';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / ସ୍ମାର୍ଟ ଟିଭି |';

  @override
  String get castProtocolRoku => 'ରୋକୁ';

  @override
  String get castRokuNote =>
      'ରୋକୁ ସ୍ଥିତି ରିପୋର୍ଟ କିମ୍ବା ପରିବର୍ତ୍ତନ କରିପାରିବ ନାହିଁ |';

  @override
  String get castControls => 'ନିୟନ୍ତ୍ରଣଗୁଡ଼ିକ |';

  @override
  String get castVolume => 'ଟିଭି ଭଲ୍ୟୁମ୍';

  @override
  String castSkipPart(String name) {
    return '$name କୁ ଛାଡିଦିଅ |';
  }

  @override
  String get trackProgressRememberSeries => 'ଏହି କ୍ରମ ପାଇଁ ମନେରଖ |';

  @override
  String get trackProgressYes => 'ସେଭ୍ କରନ୍ତୁ';

  @override
  String get trackProgressReset =>
      'ଏହି ପ୍ରକାର ପାଇଁ ପ୍ରଗତି ସେଭ୍ ପ୍ରମ୍ପ୍ଟ ରିସେଟ୍ ହେଲା, ଏହା ପୁଣି ପଚାରିବ';

  @override
  String get trackProgressNo => 'ନା';

  @override
  String get trackProgressOff => 'ବନ୍ଦ';

  @override
  String get trackProgressLocal => 'ଏହି ଡିଭାଇସ୍ ମାତ୍ର';

  @override
  String get trackProgressSettingAnime => 'ଆନିମେ ପ୍ରଗତି ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String get trackProgressSettingManga => 'ମାଙ୍ଗା ଓ ନଭେଲ୍ ପ୍ରଗତି ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String get trackProgressSettingDesc =>
      'ଏକ ଏପିସୋଡ୍ ଖୋଲିଲେ ବା ଅଧ୍ୟାୟ ଶେଷ କଲେ କ\'ଣ କରିବେ';

  @override
  String get trackProgressAsk => 'ପଚାରନ୍ତୁ';

  @override
  String get trackProgressAlways => 'ସବୁବେଳେ';

  @override
  String get dantotsuImport => 'Dantotsuରୁ ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String get dantotsuImportDesc =>
      'ଏକ Dantotsu ସେଟିଂସ୍ ବ୍ୟାକଅପ୍ ପଢ଼ନ୍ତୁ (.ani, ବା ଏନକ୍ରିପ୍ଟେଡ୍ .sani)';

  @override
  String get dantotsuPick => 'ଏକ Dantotsu ବ୍ୟାକଅପ୍ ବାଛନ୍ତୁ';

  @override
  String get dantotsuNothing => 'ଏହି ଫାଇଲ୍‌ର କିଛି ଇମ୍ପୋର୍ଟ୍ କରିହେବ ନାହିଁ';

  @override
  String get dantotsuApply => 'ବଛାଯାଇଥିବା ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String dantotsuDone(int done, int total) {
    return '$total ମଧ୍ୟରୁ $done ଇମ୍ପୋର୍ଟ୍ ହେଲା';
  }

  @override
  String get dantotsuGroupAccounts => 'ଆକାଉଣ୍ଟ';

  @override
  String get dantotsuGroupAppearance => 'ଦେଖଣା';

  @override
  String get dantotsuGroupExtensions => 'ଏକ୍ସଟେନସନ୍';

  @override
  String get dantotsuGroupApp => 'ଆପ୍';

  @override
  String get dantotsuGroupPlayer => 'ପ୍ଲେୟାର୍';

  @override
  String get dantotsuAnilist => 'AniList ଲଗ୍ ଇନ୍';

  @override
  String get dantotsuMal => 'MyAnimeList ଲଗ୍ ଇନ୍';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence ଟୋକେନ୍';

  @override
  String get dantotsuTheme => 'ଥିମ୍';

  @override
  String get themePickerTitle => 'ଥିମ୍';

  @override
  String get dantotsuReposAnime => 'ଆନିମେ ଏକ୍ସଟେନସନ୍ ରିପୋଜିଟୋରି';

  @override
  String get dantotsuReposManga => 'ମାଙ୍ଗା ଏକ୍ସଟେନସନ୍ ରିପୋଜିଟୋରି';

  @override
  String get dantotsuReposNovel => 'ନଭେଲ୍ ଏକ୍ସଟେନସନ୍ ରିପୋଜିଟୋରି';

  @override
  String get dantotsuUpdates => 'ଅପଡେଟ୍ ଯାଞ୍ଚ';

  @override
  String get dantotsuComments => 'ମନ୍ତବ୍ୟ';

  @override
  String get dantotsuActivity => 'AniList ବିଜ୍ଞପ୍ତି ପୋଲିଂ';

  @override
  String get dantotsuDns => 'DNS ପ୍ରଦାତା';

  @override
  String get dantotsuPlayer => 'ପ୍ଲେୟାର୍ ବେଗ ଓ ସବଟାଇଟଲ୍ ରଙ୍ଗ';

  @override
  String get dantotsuWarning =>
      'ଏହି ଫାଇଲ୍‌ରେ ଲଗ୍ ଇନ୍ ଟୋକେନ୍ ଅଛି। ଏହାକୁ ଗୋପନ ରଖନ୍ତୁ।';

  @override
  String get novelIndent => 'ଅନୁଚ୍ଛେଦ ଇଣ୍ଡେଣ୍ଟ୍ କରନ୍ତୁ';

  @override
  String get novelIndentDesc =>
      'ପ୍ରତ୍ୟେକ ଅନୁଚ୍ଛେଦକୁ ପ୍ରଥମ ଧାଡ଼ିର ଇଣ୍ଡେଣ୍ଟ୍ ସହ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get novelLetterSpacing => 'ଅକ୍ଷର ଫାଙ୍କ';

  @override
  String get novelSectionTranslate => 'ଅନୁବାଦ';

  @override
  String get sectionExperimental => 'ପରୀକ୍ଷାମୂଳକ';

  @override
  String get kitsuGraphqlDetail => 'ଦ୍ରୁତ ବିବରଣୀ ପୃଷ୍ଠା (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ଏକ ଶୀର୍ଷକକୁ ତା\'ର ଚରିତ୍ର, ଷ୍ଟାଫ୍ ଓ ତୁମ ଏଣ୍ଟ୍ରି ସହ ଗୋଟିଏ ଅନୁରୋଧରେ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get togetherTitle => 'ଏକାଠି ଦେଖନ୍ତୁ';

  @override
  String get togetherIntro =>
      'ତୁମ ସାଙ୍ଗ ପଠାଇଥିବା ରୁମ୍ ଲିଙ୍କ୍ ପେଷ୍ଟ କରନ୍ତୁ। ତୁମେ ତୁରନ୍ତ ଯୋଗ ଦେବ ଓ ସେମାନେ ଦେଖିବା ଆରମ୍ଭ କଲେ ପ୍ଲେୟାର୍ ଖୋଲିବ।';

  @override
  String togetherLinkConfirm(String room) {
    return 'Join the room $room? The host chooses what plays and the player opens by itself when they start watching।';
  }

  @override
  String get togetherJoin => 'ଯୋଗ ଦିଅନ୍ତୁ |';

  @override
  String get togetherName => 'ତୁମ ନାମ';

  @override
  String get togetherConnecting => 'ସଂଯୋଗ ହେଉଛି…';

  @override
  String get togetherLeave => 'ରୁମ୍ ଛାଡ଼ନ୍ତୁ';

  @override
  String get togetherYou => 'ତୁମେ';

  @override
  String get togetherNoChat => 'ଏପର୍ଯ୍ୟନ୍ତ ମେସେଜ୍ ନାହିଁ';

  @override
  String get togetherChatHint => 'ମେସେଜ୍';

  @override
  String get togetherCopyInvite => 'ନିମନ୍ତ୍ରଣ କପି କରନ୍ତୁ';

  @override
  String get togetherShareInvite => 'ନିମନ୍ତ୍ରଣ ଅଂଶୀଦାର କରନ୍ତୁ |';

  @override
  String togetherShareText(String link) {
    return 'Dartotsu ରେ ମୋ ସହିତ ଦେଖନ୍ତୁ: $link';
  }

  @override
  String get togetherInviteCopied => 'ସର୍ଭର୍ ଓ ରୁମ୍ କପି ହେଲା';

  @override
  String get togetherConnectionLost => 'ସଂଯୋଗ ହଜିଗଲା';

  @override
  String togetherConnectedTo(String room) {
    return '$roomରେ ସଂଯୁକ୍ତ';
  }

  @override
  String togetherFailed(String error) {
    return 'ସଂଯୋଗ କରିପାରିଲୁ ନାହିଁ: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ଯୋଗ ଦେଲେ';
  }

  @override
  String togetherLeft(String name) {
    return '$name ଛାଡ଼ିଗଲେ';
  }

  @override
  String togetherPaused(String name) {
    return '$name ପଜ୍ କଲେ';
  }

  @override
  String togetherResumed(String name) {
    return '$name ପୁଣି ଆରମ୍ଭ କଲେ';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $timeକୁ ଡେଇଁଲେ';
  }

  @override
  String get togetherFollowFailed =>
      'ହୋଷ୍ଟଙ୍କ ଏପିସୋଡ୍ ଖୋଲିପାରିଲୁ ନାହିଁ। ନିଜେ ଖୋଲନ୍ତୁ।';

  @override
  String get togetherJoinRole => 'ଏକ ରୁମ୍‌ରେ ଯୋଗ ଦିଅନ୍ତୁ';

  @override
  String get togetherOpenHost => 'ହୋଷ୍ଟଙ୍କ ଏପିସୋଡ୍ ଖୋଲନ୍ତୁ';

  @override
  String get togetherShowChat => 'ଲାଇଭ୍ ଚାଟ୍ ଦେଖାନ୍ତୁ';

  @override
  String get togetherWaitingHost => 'ହୋଷ୍ଟ ଏକ ଏପିସୋଡ୍ ଆରମ୍ଭ କରିବା ପାଇଁ ଅପେକ୍ଷା';

  @override
  String get togetherRoomLink => 'ରୁମ୍ ଲିଙ୍କ୍';

  @override
  String get togetherBadLink => 'ଏହା ଏକ ରୁମ୍ ଲିଙ୍କ୍ ନୁହେଁ';

  @override
  String get togetherHostClosed => 'ହୋଷ୍ଟ ରୁମ୍ ବନ୍ଦ କଲେ';

  @override
  String get togetherNowPlaying => 'ବର୍ତ୍ତମାନ ଚାଲୁଛି';

  @override
  String togetherWatchingCount(int count) {
    return '$count ଜଣ ଦେଖୁଛନ୍ତି';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user ପଜ୍ କରିବାକୁ ଚାହୁଁଛନ୍ତି';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user ପୁଣି ଆରମ୍ଭ କରିବାକୁ ଚାହୁଁଛନ୍ତି';
  }

  @override
  String get togetherChip => 'ଏକାଠି';

  @override
  String get togetherSettingsDesc =>
      'ଏକ ଲିଙ୍କ୍ ଦ୍ୱାରା ସାଙ୍ଗର ରୁମ୍‌ରେ ଯୋଗ ଦିଅନ୍ତୁ';

  @override
  String get novelBilingual => 'ମୂଳ ଓ ଅନୁବାଦ ଦେଖାନ୍ତୁ';

  @override
  String get novelBilingualDesc =>
      'ପ୍ରତ୍ୟେକ ଅନୁଚ୍ଛେଦ ମୂଳ ଟେକ୍ସଟ୍ ଓ ତା\' ତଳେ ଅନୁବାଦ ଦେଖାଏ';

  @override
  String get novelTranslateTo => 'ଏହାକୁ ଅନୁବାଦ କରନ୍ତୁ';

  @override
  String get novelTranslateOff => 'ବନ୍ଦ';

  @override
  String get novelSectionSpeech => 'ଟେକ୍ସଟ୍ ଟୁ ସ୍ପିଚ୍';

  @override
  String get novelSpeechRate => 'କହିବା ବେଗ';

  @override
  String get novelSpeechPitch => 'କହିବା ପିଚ୍';

  @override
  String get novelSpeak => 'ଜୋରରେ ପଢ଼ନ୍ତୁ';

  @override
  String get novelSpeakStop => 'ଜୋରରେ ପଢ଼ିବା ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get novelTranslate => 'ଅଧ୍ୟାୟ ଅନୁବାଦ କରନ୍ତୁ';

  @override
  String get novelTranslateShowOriginal => 'ମୂଳ ଦେଖାନ୍ତୁ';

  @override
  String novelTranslateFailed(String error) {
    return 'ଅନୁବାଦ ବିଫଳ ହେଲା: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'ଏହି ଡିଭାଇସ୍‌ରେ ଟେକ୍ସଟ୍ ଟୁ ସ୍ପିଚ୍ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String get novelSpeechVoice => 'ସ୍ୱର';

  @override
  String get novelSpeechVoiceDefault => 'ସିଷ୍ଟମ୍ ଡିଫଲ୍ଟ';

  @override
  String get novelSpeakPrevious => 'ପୂର୍ବ ଧାଡ଼ି';

  @override
  String get novelSpeakNext => 'ପରବର୍ତ୍ତୀ ଧାଡ଼ି';

  @override
  String get novelTapPaging => 'ପୃଷ୍ଠା ବଦଳାଇବାକୁ ଧାର ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get novelTapPagingDesc =>
      'ଏକ ପୃଷ୍ଠା ସ୍କ୍ରୋଲ୍ କରିବାକୁ ବାମ ବା ଡାହାଣ ପାଖ ଟ୍ୟାପ୍ କରନ୍ତୁ, ମଝି ନିୟନ୍ତ୍ରଣ ଦେଖାଏ';

  @override
  String get novelPaged => 'ପୃଷ୍ଠା ଟର୍ନିଂ |';

  @override
  String get novelPagedDesc =>
      'ପୃଷ୍ଠାଗୁଡ଼ିକୁ ପୃଷ୍ଠାରେ ବିଭକ୍ତ କର ଏବଂ ସ୍କ୍ରୋଲ୍ କରିବା ପରିବର୍ତ୍ତେ ସ୍ୱାଇପ୍ କର କିମ୍ବା ଟ୍ୟାପ୍ କର |';

  @override
  String novelPageOf(int current, int total) {
    return '$total ର ପୃଷ୍ଠା $current |';
  }

  @override
  String get novelPaginating => 'ପୃଷ୍ଠାଗୁଡିକ ରଖିବା';

  @override
  String get novelTools => 'ବିଷୟବସ୍ତୁ, ସନ୍ଧାନ ଏବଂ ହାଇଲାଇଟ୍ |';

  @override
  String get novelContents => 'ବିଷୟବସ୍ତୁ';

  @override
  String get novelContentsEmpty => 'ଏହି ଅଧ୍ୟାୟରେ କ head ଣସି ହେଡିଙ୍ଗ୍ ନାହିଁ |';

  @override
  String get novelSearch => 'ସନ୍ଧାନ କର |';

  @override
  String get novelSearchHint => 'ଏହି ଅଧ୍ୟାୟରେ ସନ୍ଧାନ କରନ୍ତୁ |';

  @override
  String get novelSearchNone => 'କ matches ଣସି ମେଳକ ନାହିଁ |';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ମେଳ |',
      one: '1 ମ୍ୟାଚ୍',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'ହାଇଲାଇଟ୍ସ |';

  @override
  String get novelHighlightsEmpty =>
      'କିଛି ପାଠ୍ୟ ଚୟନ କରନ୍ତୁ ଏବଂ ଏହାକୁ ରଖିବା ପାଇଁ ହାଇଲାଇଟ୍ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get novelHighlight => 'ହାଇଲାଇଟ୍ କରନ୍ତୁ |';

  @override
  String get novelHighlightNote => 'ଟିପ୍ପଣୀ |';

  @override
  String get novelHighlightNoteHint => 'ଏକ ଟିପ୍ପଣୀ ଯୋଡନ୍ତୁ |';

  @override
  String get novelHighlightRemove => 'ହାଇଲାଇଟ୍ ଅପସାରଣ କରନ୍ତୁ |';

  @override
  String get novelHighlightFailed =>
      'ସେହି ଚୟନକୁ ପାଠ ସହିତ ମେଳ କରି ପାରିଲା ନାହିଁ |';

  @override
  String novelMinutesLeft(int count) {
    return '$count ମିନିଟ୍ ବାକି';
  }

  @override
  String get novelBold => 'ମୋଟା ଟେକ୍ସଟ୍';

  @override
  String get novelBoldDesc => 'ଏକ ଭାରୀ ଓଜନ ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter ଶେଷ ହେଲା';
  }

  @override
  String readerNextUp(String chapter) {
    return 'ପରବର୍ତ୍ତୀ: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'ପୂର୍ବ: $chapter';
  }

  @override
  String get readerNoPages => 'ଏହି ଅଧ୍ୟାୟରେ ପୃଷ୍ଠା ନାହିଁ';

  @override
  String get readerLoadingPages => 'ପୃଷ୍ଠା ଲୋଡ୍ ହେଉଛି…';

  @override
  String get readerSlowPage => 'ଏହି ପୃଷ୍ଠା ଏବେ ବି ଲୋଡ୍ ହେଉଛି…';

  @override
  String get readerPageFailed => 'ଏହି ପୃଷ୍ଠା ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get playerShowComments => 'ମନ୍ତବ୍ୟ ଦେଖାନ୍ତୁ';

  @override
  String get playerHideComments => 'ମନ୍ତବ୍ୟ ଲୁଚାନ୍ତୁ';

  @override
  String get playerSubtitles => 'ସବଟାଇଟଲ୍';

  @override
  String get playerSubtitlesOff => 'ସବଟାଇଟଲ୍ ବନ୍ଦ';

  @override
  String get playerAudio => 'ଅଡିଓ';

  @override
  String get playerAddSubtitle => 'ସବଟାଇଟଲ୍ ଫାଇଲ୍ ଯୋଗ କରନ୍ତୁ';

  @override
  String get playerAddAudio => 'ଅଡିଓ ଫାଇଲ୍ ଯୋଗ କରନ୍ତୁ';

  @override
  String get playerChapters => 'ଅଧ୍ୟାୟ';

  @override
  String get playerSkipSubmit => 'ସ୍କିପ୍ ସମୟ ଦାଖଲ କରନ୍ତୁ |';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button।';

  @override
  String get playerSkipStart => 'ଆରମ୍ଭ କରନ୍ତୁ |';

  @override
  String get playerSkipEnd => 'ଶେଷ';

  @override
  String get playerSkipUseNow => 'ସାମ୍ପ୍ରତିକ ସ୍ଥିତିକୁ ବ୍ୟବହାର କରନ୍ତୁ |';

  @override
  String get playerSkipSend => 'AniSkip କୁ ଦାଖଲ କରନ୍ତୁ |';

  @override
  String get playerSkipSent => 'AniSkip କୁ ଦାଖଲ ସମୟ ଛାଡିଦିଅ, ଧନ୍ୟବାଦ |';

  @override
  String playerSkipFailed(String error) {
    return 'ଅନିସ୍କିପ୍ ସ୍କିପ୍ ସମୟକୁ ମନା କରିଦେଲା: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details।';

  @override
  String get playerSkipNoMal =>
      'ଏହି ଟାଇଟଲ୍ ର MyAnimeList id ନାହିଁ, AniSkip ଏହାକୁ ନେଇପାରିବ ନାହିଁ |';

  @override
  String get playerNoChapters => 'ଅଧ୍ୟାୟ ନାହିଁ';

  @override
  String get playerTimestamp => 'ଟାଇମଷ୍ଟାମ୍ପ';

  @override
  String get playerAutoPlayDelay => 'ପରବର୍ତ୍ତୀ ଏପିସୋଡ୍ କାଉଣ୍ଟଡାଉନ୍';

  @override
  String get playerWatchedAt => 'ଦେଖିସାରିଛି ଗଣନା କରନ୍ତୁ';

  @override
  String playerNextIn(int seconds) {
    return 'ପରବର୍ତ୍ତୀ ଏପିସୋଡ୍ ${seconds}s ରେ';
  }

  @override
  String get playerPlayNow => 'ଏବେ ଚଲାନ୍ତୁ';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: ଏହି ଶୀର୍ଷକ ପାଇଁ ସ୍ୱୟଂ ଛାଡ଼ିଯିବ';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: ଏହି ଶୀର୍ଷକ ପାଇଁ ସ୍ୱୟଂ ଛାଡ଼ିବ ନାହିଁ';
  }

  @override
  String get playerAudioLanguage => 'ପସନ୍ଦର ଅଡିଓ ଭାଷା';

  @override
  String get playerLanguageOrderHint =>
      'ଭାଷାକୁ କମା ଦ୍ୱାରା ଅଲଗା କରନ୍ତୁ। ପ୍ରଥମେ ମିଳିଥିବାଟି ବ୍ୟବହୃତ ହେବ।';

  @override
  String get playerPip => 'ପିକଚର୍ ଇନ୍ ପିକଚର୍';

  @override
  String get playerAutoPip => 'ଛାଡ଼ିଲେ ପିକଚର୍ ଇନ୍ ପିକଚର୍';

  @override
  String get playerAutoPipDesc =>
      'ତୁମେ ଆପ୍ ଛାଡ଼ିଲେ ଏକ ଛୋଟ ୱିଣ୍ଡୋରେ ଚାଲୁ ରଖନ୍ତୁ';

  @override
  String get playerPipPlay => 'ଖେଳନ୍ତୁ |';

  @override
  String get playerPipPause => 'ବିରାମ';

  @override
  String get playerPipBack => 'ରିଭାଇଣ୍ଡ୍ |';

  @override
  String get playerPipForward => 'ଅଗ୍ରଗାମୀ';

  @override
  String get playerPipRestore => 'ପ୍ଲେୟାରକୁ ଫେରନ୍ତୁ |';

  @override
  String get playerPipActive => 'ଏକ ଛୋଟ ୱିଣ୍ଡୋରେ ଖେଳିବା |';

  @override
  String get listDateAdded => 'ତାଲିକାରେ ଯୋଡା ଯାଇଛି |';

  @override
  String get listDateLastWatched => 'ଶେଷ ଦେଖାଗଲା |';

  @override
  String playerAutoPlaying(String title) {
    return 'ପରବର୍ତ୍ତୀ $title ଚଲାଉଛି…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ଶେଡର୍ ଇନଷ୍ଟଲ୍ କରିପାରିଲୁ ନାହିଁ: $error';
  }

  @override
  String playerChapter(int number) {
    return 'ଅଧ୍ୟାୟ $number';
  }

  @override
  String get playerPerTitle => 'କେବଳ ଏହି ଶୀର୍ଷକ ପାଇଁ';

  @override
  String get playerPerTitleDesc =>
      'ଏହି ବିକଳ୍ପ ଏହି ଶୀର୍ଷକ ପାଇଁ ରଖନ୍ତୁ ଓ ତୁମ ଡିଫଲ୍ଟକୁ ଛୁଅନ୍ତୁ ନାହିଁ';

  @override
  String get playerSwapGestures => 'ସ୍ୱାଇପ୍ ପାର୍ଶ୍ୱ ବଦଳାନ୍ତୁ';

  @override
  String get playerSwapGesturesDesc => 'ବାମରେ ବ୍ରାଇଟନେସ୍ ଓ ଡାହାଣରେ ଭଲ୍ୟୁମ୍';

  @override
  String get playerOpenBig => 'ବଡ଼ ଭ୍ୟୁରେ ଖୋଲନ୍ତୁ';

  @override
  String get playerOpenBigDesc =>
      'ଏପିସୋଡ୍ ତାଲିକା ବଦଳରେ ପ୍ଲେୟାରକୁ ଫୁଲସ୍କ୍ରିନ୍ ରେ ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get playerPauseOnBlur => 'ଫୋକସ୍ ଛାଡ଼ିଲେ ପଜ୍ କରନ୍ତୁ';

  @override
  String get playerPauseOnBlurDesc =>
      'ଆପ୍ ଢାଙ୍କି ହେଲେ, ଯେପରି ନୋଟିଫିକେସନ୍ ପ୍ୟାନେଲ୍, ପଜ୍ ହେବ ଓ ଫେରିଲେ ଚାଲିବ';

  @override
  String get playerAudioOutput => 'ଅଡିଓ ଆଉଟପୁଟ୍';

  @override
  String get fontAppDefault => 'ଆପ୍ ଫଣ୍ଟ';

  @override
  String get fontImport => 'ଫଣ୍ଟ ଇମ୍ପୋର୍ଟ୍ କରନ୍ତୁ';

  @override
  String get fontSample => 'ଶୀଘ୍ର ବାଦାମୀ ଠେକୁଆ ଅଳସୁଆ କୁକୁର ଉପରେ ଡେଇଁପଡେ |';

  @override
  String get playerSubtitleDelay => 'ସବଟାଇଟଲ୍ ବିଳମ୍ବ';

  @override
  String get playerAudioDelay => 'ଅଡିଓ ବିଳମ୍ବ';

  @override
  String get playerDelayReset => 'ରିସେଟ୍';

  @override
  String get playerOnlineSubtitles => 'ଅନଲାଇନ୍ ସବଟାଇଟଲ୍';

  @override
  String get playerOnlineSearchHint => 'ଶୀର୍ଷକ ଓ ଏପିସୋଡ୍';

  @override
  String get playerOnlineNone => 'କୌଣସି ସବଟାଇଟଲ୍ ମିଳିଲା ନାହିଁ';

  @override
  String playerOnlineFailed(String error) {
    return 'ସବଟାଇଟଲ୍ ସର୍ଚ୍ଚ ବିଫଳ ହେଲା: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ଏହି ସବଟାଇଟଲ୍ ଡାଉନଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ: $error';
  }

  @override
  String get playerOnlineMatch => 'ଏହି ଫାଇଲ୍ ସହ ମେଳ ଖାଏ';

  @override
  String get playerOnlineEpisode => 'ଏପିସୋଡ୍ ମେଳ';

  @override
  String playerOnlineDownloads(int count) {
    return '$countଟି ଡାଉନଲୋଡ୍';
  }

  @override
  String get playerSeekPreview => 'ସିକ୍ ପ୍ରିଭ୍ୟୁ';

  @override
  String get playerSeekPreviewDesc =>
      'ସ୍କ୍ରବ୍ କରିବା ବେଳେ ସିକ୍ ବାର୍ ଉପରେ ଏକ ଛୋଟ ଫ୍ରେମ୍ ପ୍ରିଭ୍ୟୁ ଦେଖାନ୍ତୁ। ଏକ ଦ୍ୱିତୀୟ କମ୍ ରିଜୋଲ୍ୟୁସନ୍ ଡିକୋଡର୍ ଖୋଲେ, ତେଣୁ ଷ୍ଟ୍ରିମରେ ଅତିରିକ୍ତ ଡାଟା ଲାଗେ।';

  @override
  String get playerSettingsChip => 'ସେଟିଂସ୍';

  @override
  String get playerAudioDevice => 'ଅଡିଓ ଡିଭାଇସ୍';

  @override
  String get settingsDownloads => 'ଡାଉନଲୋଡ୍';

  @override
  String get settingsDownloadsDesc => 'ଅଫଲାଇନ୍ ଏପିସୋଡ୍, କିଉ ଓ ଅଫଲାଇନ୍ ମୋଡ୍';

  @override
  String get downloadsTitle => 'ଡାଉନଲୋଡ୍';

  @override
  String get widgetContinue => 'ଜାରି ରଖ |';

  @override
  String get widgetReleases => 'ଶୀଘ୍ର ରିଲିଜ୍ |';

  @override
  String get widgetMore => 'ଆହୁରି ମଧ୍ୟ ଚାଲିଛି |';

  @override
  String get widgetNothing => 'ଏପର୍ଯ୍ୟନ୍ତ ଜାରି ରଖିବାକୁ କିଛି ନାହିଁ |';

  @override
  String get downloadStorageTitle => 'ଭଣ୍ଡାର';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଡାଉନଲୋଡ୍ |',
      one: '1 ଡାଉନଲୋଡ୍ |',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size ପୂର୍ବରୁ ଦେଖିଛି କିମ୍ବା ପ read ିଛି |';
  }

  @override
  String get downloadFreeUp => 'ଖାଲି ସ୍ଥାନ |';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଡାଉନଲୋଡ୍ ଗୁଡିକ ଦେଖିଲା |',
      one: '1 ଡାଉନଲୋଡ୍ ଦେଖିଲି |',
    );
    return 'ବିଲୋପ କରନ୍ତୁ | $_temp0 ଏବଂ ମାଗଣା $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'ମୁକ୍ତ $size';
  }

  @override
  String get downloadDeleteWatched => 'ଦେଖାଯାଇଥିବା ବିଲୋପ କରନ୍ତୁ |';

  @override
  String get downloadDeleteAll => 'ସମସ୍ତ ବିଲୋପ କରନ୍ତୁ |';

  @override
  String downloadDeleteAllConfirm(String title) {
    return '$title ର ପ୍ରତ୍ୟେକ ଡାଉନଲୋଡ୍ ଡିଲିଟ୍ କରନ୍ତୁ?';
  }

  @override
  String get downloadNothingWatched =>
      'ତୁମେ ସମାପ୍ତ କରିଥିବା କିଛି ଡାଉନଲୋଡ୍ ହୋଇନାହିଁ |';

  @override
  String get downloadStorageEmpty =>
      'କ No ଣସି ଡାଉନଲୋଡ୍ ସ୍ପେସ୍ ବ୍ୟବହାର କରୁନାହିଁ |';

  @override
  String get downloadsOpenDesc =>
      'କିଉ ଓ ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ହୋଇଥିବା ସବୁ ଦେଖନ୍ତୁ';

  @override
  String get downloadTitle => 'ଡାଉନଲୋଡ୍';

  @override
  String get downloadMetaOnly => 'କେବଳ ମେଟାଡାଟା |';

  @override
  String get downloadMetaFailed => 'ଟାଇଟଲ୍ ଫୋଲ୍ଡର୍ ସୃଷ୍ଟି କରିପାରିଲା ନାହିଁ |';

  @override
  String downloadMetaSaved(String path) {
    return 'ସଞ୍ଚୟ ହୋଇଛି | ଆପଣଙ୍କର ଫାଇଲଗୁଡ଼ିକୁ $path ରେ ରଖନ୍ତୁ |';
  }

  @override
  String get downloadAlready => 'ପୂର୍ବରୁ ଡାଉନଲୋଡ୍ ହୋଇଛି ବା କିଉରେ ଅଛି';

  @override
  String get downloadPickStream => 'କେଉଁ ଷ୍ଟ୍ରିମ୍ ଡାଉନଲୋଡ୍ କରିବେ?';

  @override
  String get downloadPickSubtitle => 'କେଉଁ ସବଟାଇଟଲ୍ ଡାଉନଲୋଡ୍ କରିବେ?';

  @override
  String get downloadPickAudio => 'କେଉଁ ଅଡିଓ ଟ୍ରାକ୍ ଡାଉନଲୋଡ୍ କରିବେ?';

  @override
  String get downloadNoAudio => 'ଅତିରିକ୍ତ ଅଡିଓ ନାହିଁ';

  @override
  String get downloadAudio => 'ଅଡିଓ';

  @override
  String get downloadNoSubtitle => 'ସବଟାଇଟଲ୍ ନାହିଁ';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ଏହି ଷ୍ଟ୍ରିମ୍ ଏକ HLS ପ୍ଲେଲିଷ୍ଟ। ଏହାକୁ ଡାଉନଲୋଡ୍ କରିବାକୁ FFmpeg ଆଡ୍-ଅନ୍ ଦରକାର।';

  @override
  String get downloadSourceMissing => 'ଏହି ଏପିସୋଡ୍‌ର ଉତ୍ସ ଇନଷ୍ଟଲ୍ ହୋଇନାହିଁ';

  @override
  String get downloadDashDrm => 'ଏହି ଷ୍ଟ୍ରିମ୍ DRM ସୁରକ୍ଷିତ ଅଟେ |';

  @override
  String get downloadDashNoVideo => 'DASH ମନିଫେଷ୍ଟର କ video ଣସି ଭିଡିଓ ନାହିଁ |';

  @override
  String get downloadWaitingConnection => 'ସଂଯୋଗ ପାଇଁ ଅପେକ୍ଷା';

  @override
  String get downloadSubtitles => 'ସବଟାଇଟଲ୍';

  @override
  String get downloadDownloaded => 'ଡାଉନଲୋଡ୍ ହୋଇଛି';

  @override
  String get downloadOffline => 'ଅଫଲାଇନ୍';

  @override
  String get downloadDelete => 'ଡାଉନଲୋଡ୍ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get downloadCancel => 'ବାତିଲ୍';

  @override
  String get downloadPause => 'ପଜ୍';

  @override
  String get downloadPaused => 'ପଜ୍ ହୋଇଛି';

  @override
  String get downloadResume => 'ପୁଣି ଆରମ୍ଭ';

  @override
  String get downloadPauseAll => 'ସବୁ ପଜ୍ କରନ୍ତୁ';

  @override
  String get downloadResumeAll => 'ସବୁ ପୁଣି ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get downloadQueuedState => 'କିଉରେ ଅପେକ୍ଷା';

  @override
  String get downloadResolving => 'ଷ୍ଟ୍ରିମ୍ ଆଣୁଛି…';

  @override
  String get downloadUsedFallback =>
      'ମେଳ ଖାଉଥିବା ଷ୍ଟ୍ରିମ୍ ନାହିଁ, ପ୍ରଥମଟି ବ୍ୟବହାର ହେଲା';

  @override
  String get downloadTabQueue => 'କିଉ';

  @override
  String get downloadTabDone => 'ହୋଇଗଲା';

  @override
  String get downloadTabFailed => 'ବିଫଳ';

  @override
  String get downloadEmptyQueue => 'କିଛି ଡାଉନଲୋଡ୍ ହେଉନାହିଁ';

  @override
  String get downloadEmptyDone => 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ଡାଉନଲୋଡ୍ ହୋଇନାହିଁ';

  @override
  String get downloadEmptyFailed => 'ବିଫଳ ଡାଉନଲୋଡ୍ ନାହିଁ';

  @override
  String get downloadNext => 'ପରବର୍ତ୍ତୀ ଏପିସୋଡ୍';

  @override
  String downloadNextN(int count) {
    return 'ପରବର୍ତ୍ତୀ $countଟି ଏପିସୋଡ୍';
  }

  @override
  String downloadUnwatched(int count) {
    return 'ସବୁ ନଦେଖା ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ଏହି ପରିସର ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'ସବୁ ଏପିସୋଡ୍ ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଏପିସୋଡ୍ କିଉରେ',
      one: '୧ ଏପିସୋଡ୍ କିଉରେ',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ଡାଉନଲୋଡ୍ ହେଲା';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ଡାଉନଲୋଡ୍ ବିଫଳ ହେଲା';
  }

  @override
  String downloadStorage(String size) {
    return 'ଡାଉନଲୋଡ୍ ଦ୍ୱାରା $size ବ୍ୟବହୃତ';
  }

  @override
  String get downloadQueueHeader => 'କିଉ';

  @override
  String get downloadParallel => 'ଏକାସାଙ୍ଗରେ ଡାଉନଲୋଡ୍';

  @override
  String get downloadParallelDesc => 'ଏକ ଏକ ଡାଉନଲୋଡ୍ ଚଲାନ୍ତୁ ବା ଅନେକ ଏକାଠି';

  @override
  String get downloadOneByOne => 'ଗୋଟିଏ ଗୋଟିଏ କରି';

  @override
  String get downloadNotifications => 'ଡାଉନଲୋଡ୍ ବିଜ୍ଞପ୍ତି';

  @override
  String get downloadNotificationsDesc =>
      'ସିଷ୍ଟମ୍ ସମର୍ଥନ କଲେ ଲାଇଭ୍ ପ୍ରଗତି, ନଚେତ୍ ଡାଉନଲୋଡ୍ ଶେଷ ହେଲେ ଏକ ନୋଟ୍';

  @override
  String get downloadNotifyLive => 'ଲାଇଭ୍';

  @override
  String get downloadNotifyDone => 'ଶେଷ ହେଲେ';

  @override
  String get downloadNotifyOff => 'ବନ୍ଦ';

  @override
  String get downloadInfoFile =>
      'ପ୍ରତ୍ୟେକ ଡାଉନଲୋଡ୍ ପାଖରେ ଏକ ସୂଚନା ଫାଇଲ୍ ଲେଖନ୍ତୁ';

  @override
  String get downloadInfoFileDesc =>
      'ଷ୍ଟ୍ରିମ୍, ଗୁଣବତ୍ତା, ସବଟାଇଟଲ୍ ଓ ସ୍କିପ୍ ସମୟକୁ ଏକ ଛୋଟ .json ଫାଇଲ୍ ଭାବରେ ସେଭ୍ କରେ';

  @override
  String get offlineHeader => 'ଅଫଲାଇନ୍';

  @override
  String get offlineModeDesc =>
      'ଆପ୍ ସଂଯୋଗ ବିନା ଆରମ୍ଭ ହେଲେ ହିଁ ସ୍ୱୟଂ ଅଫଲାଇନ୍ ଯାଏ। ତୁମେ ବଦଳାଇବା ପର୍ଯ୍ୟନ୍ତ ସବୁବେଳେ ଅଫଲାଇନ୍ ରହେ।';

  @override
  String get offlineModeOff => 'ବନ୍ଦ';

  @override
  String get offlineModeAlways => 'ସବୁବେଳେ';

  @override
  String get offlineModeOn =>
      'ଅଫଲାଇନ୍ ମୋଡ୍ ଚାଲୁ ଅଛି। ପରିବର୍ତ୍ତନ ଏଠି ସେଭ୍ ହୁଏ ଓ ତୁମେ ପୁଣି ଅନଲାଇନ୍ ହେଲେ ପଠାଯାଏ।';

  @override
  String get offlineSaved =>
      'ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ହୋଇଛି, ତୁମେ ଅନଲାଇନ୍ ହେଲେ ସିଙ୍କ୍ ହେବ';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ପରିବର୍ତ୍ତନ ସିଙ୍କ୍ ହେଲା',
      one: '୧ ପରିବର୍ତ୍ତନ ସିଙ୍କ୍ ହେଲା',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ପରିବର୍ତ୍ତନ ସିଙ୍କ୍ ପାଇଁ ଅପେକ୍ଷାରେ',
      one: '୧ ପରିବର୍ତ୍ତନ ସିଙ୍କ୍ ପାଇଁ ଅପେକ୍ଷାରେ',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'ସିଙ୍କ୍ ପାଇଁ ଅପେକ୍ଷାରେ ଥିବା ପରିବର୍ତ୍ତନ';

  @override
  String get offlinePendingNone => 'କିଛି ଅପେକ୍ଷାରେ ନାହିଁ';

  @override
  String get offlineSyncNow => 'ଏବେ ସିଙ୍କ୍ କରନ୍ତୁ';

  @override
  String get offlineDiscard => 'ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get downloadNotOffline =>
      'ଏହି ଏପିସୋଡ୍ ଡାଉନଲୋଡ୍ ହୋଇନାହିଁ, ତେଣୁ ଅଫଲାଇନ୍‌ରେ ଉପଲବ୍ଧ ନୁହେଁ';

  @override
  String get offlineModeChip => 'ଅଫଲାଇନ୍';

  @override
  String get downloadNextChapter => 'ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟ';

  @override
  String downloadNextChapters(int count) {
    return 'ପରବର୍ତ୍ତୀ $countଟି ଅଧ୍ୟାୟ';
  }

  @override
  String downloadUnread(int count) {
    return 'ସବୁ ନପଢ଼ା ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'ସବୁ ଅଧ୍ୟାୟ ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total ପୃଷ୍ଠା';
  }

  @override
  String downloadPagesCount(int count) {
    return '$countଟି ପୃଷ୍ଠା';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ଆଡ୍-ଅନ୍ ଦରକାର';

  @override
  String get downloadFfmpegBody =>
      'ଏହି ଷ୍ଟ୍ରିମ୍ ଏକ HLS ପ୍ଲେଲିଷ୍ଟ। FFmpeg ଆଡ୍-ଅନ୍ ଏହାର ଖଣ୍ଡଗୁଡ଼ିକୁ ଗୋଟିଏ mp4 ଫାଇଲରେ ଯୋଡ଼େ। ଏହା ବିନା ଖଣ୍ଡଗୁଡ଼ିକ ଏକ ଏପିସୋଡ୍ ଫୋଲ୍ଡରରେ ରହେ ଓ ସେଠାରୁ ଚାଲେ।';

  @override
  String get downloadFfmpegInstall => 'ଇନଷ୍ଟଲ୍';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ଇନଷ୍ଟଲ୍ ହେଉଛି, ଏଥିରେ କିଛି ସମୟ ଲାଗିପାରେ…';

  @override
  String get downloadFinishing => 'ଖଣ୍ଡଗୁଡ଼ିକୁ ଗୋଟିଏ ଫାଇଲରେ ଯୋଡ଼ୁଛି…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total ଅଂଶ';
  }

  @override
  String get downloadTorrentNoFile =>
      'ଟୋରେଣ୍ଟରେ ଡାଉନଲୋଡ୍ କରିବାକୁ ଭିଡିଓ ଫାଇଲ୍ ନାହିଁ';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଆଇଟମ୍ ଡାଉନଲୋଡ୍ ହେଉଛି',
      one: '୧ ଆଇଟମ୍ ଡାଉନଲୋଡ୍ ହେଉଛି',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'ଦେଖାହୋଇଥିବା ଡାଉନଲୋଡ୍ ଡିଲିଟ୍ କରନ୍ତୁ';

  @override
  String get downloadAutoDeleteDesc =>
      'ତୁମ ପ୍ରଗତି ସେହି ଏପିସୋଡ୍ ବା ଅଧ୍ୟାୟରେ ପହଞ୍ଚିଲେ ଏକ ଡାଉନଲୋଡ୍ ହଟାଏ';

  @override
  String get downloadConnections => 'ପ୍ରତି ଡାଉନଲୋଡ୍ ସଂଯୋଗ';

  @override
  String get downloadConnectionsDesc =>
      'ଏକ ବଡ଼ ଫାଇଲ୍‌କୁ ଏକାସାଙ୍ଗରେ ଆଣାଯାଉଥିବା ଅଂଶରେ ଭାଗ କରେ। କିଛି ସର୍ଭର୍ ଏହାକୁ ସୀମିତ କରନ୍ତି।';

  @override
  String get downloadPlayChoice => 'ଏଠାରୁ ଚଲାନ୍ତୁ';

  @override
  String get downloadPlayLocalDesc => 'ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ହୋଇଥିବା ଫାଇଲ୍';

  @override
  String get downloadPlayStream => 'ଅନଲାଇନ୍ ଷ୍ଟ୍ରିମ୍';

  @override
  String get downloadPlayStreamDesc => 'ଉତ୍ସରୁ ଏପିସୋଡ୍ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String get offlineFeedTitle => 'ଏହି ଡିଭାଇସ୍‌ରେ ଡାଉନଲୋଡ୍ ହୋଇଛି';

  @override
  String get offlineFeedEmpty =>
      'ଅନଲାଇନ୍ ଥିବା ବେଳେ କିଛି ଡାଉନଲୋଡ୍ କର, ଏଠି ଦେଖାଯିବ';

  @override
  String get offlineEnabled => 'ଅଫଲାଇନ୍ ମୋଡ୍ ଚାଲୁ ଅଛି';

  @override
  String get offlineDisabled => 'ଅଫଲାଇନ୍ ମୋଡ୍ ବନ୍ଦ ଅଛି';

  @override
  String get downloadReadChoice => 'ଏଠାରୁ ପଢ଼ନ୍ତୁ';

  @override
  String get downloadReadLocalDesc => 'ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ହୋଇଥିବା ପୃଷ୍ଠା';

  @override
  String get downloadReadOnline => 'ଅନଲାଇନ୍ ପଢ଼ନ୍ତୁ';

  @override
  String get downloadReadOnlineDesc => 'ଉତ୍ସରୁ ଅଧ୍ୟାୟ ଲୋଡ୍ କରନ୍ତୁ';

  @override
  String downloadDeleteConfirm(String name) {
    return 'ଏହି ଡିଭାଇସ୍‌ରୁ $name ଡିଲିଟ୍ କରିବେ?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$nameର ଡାଉନଲୋଡ୍ ବାତିଲ୍ କରିବେ? ଯାହା ଡାଉନଲୋଡ୍ ହୋଇସାରିଛି ତାହା ଡିଲିଟ୍ ହେବ।';
  }

  @override
  String get downloadFfmpegFolder => 'ଫୋଲ୍ଡର ଭାବରେ ରଖନ୍ତୁ';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'କେବେ ପଠାଯାଇନଥିବା $countଟି ପରିବର୍ତ୍ତନକୁ ଫିଙ୍ଗିଦେବେ? ଏହାକୁ ଫେରାଇହେବ ନାହିଁ।',
      one: 'କେବେ ପଠାଯାଇନଥିବା ପରିବର୍ତ୍ତନକୁ ଫିଙ୍ଗିଦେବେ? ଏହାକୁ ଫେରାଇହେବ ନାହିଁ।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi ପାଇଁ ଅପେକ୍ଷା';

  @override
  String get downloadWaitingMetered => 'ମିଟର୍ଡ୍ ସଂଯୋଗରେ ପଜ୍ ହୋଇଛି';

  @override
  String get downloadWifiOnly => 'କେବଳ Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'ତୁମେ ମୋବାଇଲ୍ ଡାଟାରେ ଥିବା ବେଳେ ଡାଉନଲୋଡ୍ ଅପେକ୍ଷା କରେ';

  @override
  String get downloadMetered => 'ମିଟର୍ଡ୍ ସଂଯୋଗରେ ପଜ୍ କରନ୍ତୁ';

  @override
  String get downloadMeteredDesc =>
      'ତୁମ ଡିଭାଇସ୍ ମିଟର୍ଡ୍ ଚିହ୍ନିତ କରିଥିବା Wi-Fi ରେ ମଧ୍ୟ ଅପେକ୍ଷା କରେ';

  @override
  String get downloadSpeedLimit => 'ବେଗ ସୀମା';

  @override
  String get downloadSpeedLimitDesc => 'ମୋଟ ଡାଉନଲୋଡ୍ ବେଗକୁ ସୀମିତ କରେ';

  @override
  String get downloadUnlimited => 'ସୀମାହୀନ';

  @override
  String get downloadMoveToTop => 'ଉପରକୁ ନିଅନ୍ତୁ';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seedsଟି ସିଡ୍ · $peersଟି ପିୟର୍';
  }

  @override
  String get downloadTorrentFile => 'କେଉଁ ଫାଇଲ୍?';

  @override
  String get downloadTorrentAuto => 'ଏପିସୋଡ୍ ସ୍ୱୟଂ ମେଳାନ୍ତୁ';

  @override
  String get downloadTorrentLoading => 'ଟୋରେଣ୍ଟ ପଢ଼ୁଛି…';

  @override
  String get watchAutoSource => 'ପରବର୍ତ୍ତୀ ଉତ୍ସକୁ ସ୍ୱୟଂ ବଦଳାନ୍ତୁ';

  @override
  String get watchAutoSourceDesc =>
      'ଉତ୍ସ ଶୀର୍ଷକ ଖୋଜିପାରିଲେ ନାହିଁ ବା ଲୋଡ୍ ହେଲେ ନାହିଁ ତେବେ ପରବର୍ତ୍ତୀ ଇନଷ୍ଟଲ୍ ହୋଇଥିବା ଉତ୍ସ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get extensionTest => 'ଏକ୍ସଟେନସନ୍ ଟେଷ୍ଟ୍ କରନ୍ତୁ';

  @override
  String get extensionTestCopy => 'ବିଫଳତା ଓ ସେଗୁଡ଼ିକର ଲଗ୍ କପି କରନ୍ତୁ';

  @override
  String get extensionTestQuery => 'ସର୍ଚ୍ଚ ଶବ୍ଦ';

  @override
  String get extensionTestRun => 'ଚଲାନ୍ତୁ';

  @override
  String get extensionTestStop => 'ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get extensionTestNone =>
      'ଏହି ପ୍ରକାରର ଇନଷ୍ଟଲ୍ ହୋଇଥିବା ଏକ୍ସଟେନସନ୍ ନାହିଁ';

  @override
  String get extensionTestNotRun => 'ଏପର୍ଯ୍ୟନ୍ତ ଟେଷ୍ଟ୍ ହୋଇନାହିଁ';

  @override
  String get extensionTestSearch => 'ଖୋଜନ୍ତୁ';

  @override
  String get extensionTestDetail => 'ବିବରଣୀ';

  @override
  String get extensionTestUnits => 'ଏପିସୋଡ୍ / ଅଧ୍ୟାୟ';

  @override
  String get extensionTestLinks => 'ଷ୍ଟ୍ରିମ୍ / ପୃଷ୍ଠା';

  @override
  String extensionTestFailedAt(String step) {
    return '$stepରେ ବିଫଳ ହେଲା';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total ମଧ୍ୟରୁ $done ଟେଷ୍ଟ୍ · $passed ପାସ୍ · $failed ଫେଲ୍';
  }

  @override
  String get extensionTestCopyLogs => 'ପୂର୍ଣ୍ଣ ଲଗ୍ ସହ ସବୁ କପି କରନ୍ତୁ';

  @override
  String get onboardingFeaturesTitle => 'ସବୁକିଛି ଗୋଟିଏ ଜାଗାରେ';

  @override
  String get onboardingFeaturesBody =>
      'ତୁମେ ଯାହା ଟ୍ରାକ୍ କର, ଦେଖ ଓ ପଢ଼, ଆପ୍ ବଦଳାଇବା ଝଞ୍ଝଟ ବିନା।';

  @override
  String get onboardingFeatureTrack => 'ସବୁକିଛି ଟ୍ରାକ୍ କରନ୍ତୁ';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu ଓ MangaBakaରେ ତାଲିକା, ପ୍ରଗତି ଓ ସ୍କୋର୍।';

  @override
  String get onboardingFeatureWatch => 'ଦେଖନ୍ତୁ ଓ ପଢ଼ନ୍ତୁ';

  @override
  String get onboardingFeatureWatchDesc =>
      'ଏକ୍ସଟେନସନ୍ ଇନଷ୍ଟଲ୍ କରି ଆପ୍ ଭିତରେ ହିଁ ଆନିମେ ଷ୍ଟ୍ରିମ୍ କରନ୍ତୁ ବା ମାଙ୍ଗା ଓ ନଭେଲ୍ ପଢ଼ନ୍ତୁ।';

  @override
  String get onboardingFeatureOffline => 'ଅଫଲାଇନ୍ ନିଅନ୍ତୁ';

  @override
  String get onboardingFeatureOfflineDesc =>
      'ଏପିସୋଡ୍ ଓ ଅଧ୍ୟାୟ ଡାଉନଲୋଡ୍ କରନ୍ତୁ, ଓ ସଂଯୋଗ ବିନା ମଧ୍ୟ ଚାଲୁ ରଖନ୍ତୁ।';

  @override
  String get onboardingFeatureSync => 'ତାଲିକା ସିଙ୍କରେ ରଖନ୍ତୁ';

  @override
  String get onboardingFeatureSyncDesc =>
      'ତୁମ ତାଲିକାକୁ ସର୍ଭିସ୍ ମଧ୍ୟରେ ମିରର୍ କରନ୍ତୁ, ବା ଯିଏ ଆଗରେ ଅଛି ସେ ଜିତୁ।';

  @override
  String get onboardingServices => 'ସହ କାମ କରେ';

  @override
  String sourceNotifyOn(String source) {
    return 'ଯେତେବେଳେ ଆପଣଙ୍କୁ $source କିଛି ନୂଆ ଅଛି ସେତେବେଳେ ଆପଣଙ୍କୁ କୁହାଯିବ |';
  }

  @override
  String get sourceNotifyOff => 'ବିଜ୍ଞପ୍ତିଗୁଡିକ ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String get sourceNotifyNeedsSource =>
      'ପ୍ରଥମେ ଏକ ମ୍ୟାଚ୍ ସହିତ ଏକ ଉତ୍ସ ବାଛନ୍ତୁ |';

  @override
  String sourceNotifyAllOut(int count) {
    return 'ସବୁକିଛି ($count) ପୂର୍ବରୁ ହୋଇସାରିଛି, ଅପେକ୍ଷା କରିବାକୁ କିଛି ନାହିଁ |';
  }

  @override
  String get sourceNotifyTooltipOn => 'ପ୍ରକାଶନ ବିଜ୍ଞପ୍ତି ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String get sourceNotifyTooltipOff => 'ନୂତନ ପ୍ରକାଶନ ବିଷୟରେ ମୋତେ ଜଣାନ୍ତୁ |';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'ଏପିସୋଡ୍ $number $source ରେ ବାହାରେ ଅଛି |';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'ଏପିସୋଡ୍ $from - $to $source ରେ ବାହାରେ ଅଛି |';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'ଅଧ୍ୟାୟ $number $source ରେ ବାହାରେ ଅଛି |';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'ଅଧ୍ୟାୟ $from - $to $source ରେ ବାହାରେ ଅଛି |';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count ଶିରୋନାମାଗୁଡ଼ିକରେ କିଛି ନୂଆ ଅଛି |';
  }

  @override
  String get navSources => 'ଉତ୍ସ';

  @override
  String sourceInactiveOpen(String manager) {
    return 'ଏହି ଉତ୍ସ $manager ର ଅଟେ, ଯାହା ସକ୍ରିୟ ବିସ୍ତାର ସେବା ନୁହେଁ |';
  }

  @override
  String get sourceAlertsHeader => 'ବିଜ୍ଞପ୍ତିଗୁଡିକ ପ୍ରକାଶ କରନ୍ତୁ |';

  @override
  String get sourceAlertsSwitch => 'ସଦସ୍ୟତା ଆଖ୍ୟାଗୁଡିକ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get sourceAlertsSwitchDesc =>
      'ଥରେ ଆପ୍ ଖୋଲିବା ପରେ, ଟାଇଟଲ୍ ପାଇଁ ଆପଣ ଘଣ୍ଟି ଅନ୍ କରିଦେଲେ |';

  @override
  String get sourceSkipUnstarted =>
      'ଆପଣ ଆରମ୍ଭ କରିନଥିବା ଶିରୋନାମାଗୁଡିକ ଛାଡିଦିଅନ୍ତୁ |';

  @override
  String get sourceSkipUnstartedDesc =>
      'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ଦେଖାଯାଇ ନାହିଁ କିମ୍ବା ପ read ି ନାହିଁ, କିନ୍ତୁ ଏପିସୋଡଗୁଡିକ ପୂର୍ବରୁ ବିଦ୍ୟମାନ ଅଛି |';

  @override
  String get sourceSkipUnseen => 'ତୁମର ଅଦୃଶ୍ୟ ଏପିସୋଡ୍ ଥିବାବେଳେ ଛାଡିଦିଅ |';

  @override
  String get sourceSkipUnseenDesc =>
      'ଆପଣ ଏପର୍ଯ୍ୟନ୍ତ ଧରିବାକୁ ଏପିସୋଡ୍ ମୁକ୍ତ କରିଛନ୍ତି |';

  @override
  String get sourceManage => 'ସଦସ୍ୟତା';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଆଖ୍ୟାଗୁଡିକ |',
      one: '1 ଟାଇଟଲ୍ |',
      zero: 'କ No ଣସି ଆଖ୍ୟା ନାହିଁ |',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'ବର୍ତ୍ତମାନ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get sourceCheckNowDesc =>
      'କାର୍ଯ୍ୟସୂଚୀ ଏବଂ ସ୍କିପ୍ ନିୟମକୁ ଅଣଦେଖା କରନ୍ତୁ |';

  @override
  String get sourceChecking => 'ଯାଞ୍ଚ…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଶିରୋନାମାଗୁଡ଼ିକରେ କିଛି ନୂଆ ଅଛି |',
      one: '1 ଟାଇଟଲ୍ ରେ କିଛି ନୂଆ ଅଛି |',
      zero: 'କିଛି ନୂଆ ନୁହେଁ |',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'ଏପର୍ଯ୍ୟନ୍ତ କ subs ଣସି ସଦସ୍ୟତା ନାହିଁ |';

  @override
  String get sourceEmptyMessage =>
      'ନୂତନ ବିଷୟରେ କହିବାକୁ ଏକ ଟାଇଟଲ୍ ର ଏପିସୋଡ୍ ଉପରେ ଘଣ୍ଟି ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get sourceAll => 'ସମସ୍ତ';

  @override
  String sourceInactive(String manager) {
    return 'ନିଷ୍କ୍ରିୟ: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source ଏହି ବିସ୍ତୃତକରଣ ସେବାରେ ସଂସ୍ଥାପିତ ହୋଇନାହିଁ |';
  }

  @override
  String get sourceUnreachable => 'ଉତ୍ସ ପ୍ରତିକ୍ରିୟା କରୁନାହିଁ |';

  @override
  String get sourceFinished => 'ସମାପ୍ତ';

  @override
  String get sourceSkippedCompleted => 'ପରିତ୍ୟାଗ: ସମାପ୍ତ';

  @override
  String get sourceSkippedUnstarted => 'ଛାଡି ଦିଆଯାଇଛି: ଆରମ୍ଭ ହୋଇନାହିଁ |';

  @override
  String get sourceSkippedUnseen => 'ଛାଡି ଦିଆଯାଇଛି: ଅଦୃଶ୍ୟ ଏପିସୋଡ୍ |';

  @override
  String get sourceWaiting => 'ପରବର୍ତ୍ତୀ ପ୍ରକାଶନକୁ ଅପେକ୍ଷା କରିଛି |';

  @override
  String sourceNextCheck(String when) {
    return 'ପରବର୍ତ୍ତୀ ଯାଞ୍ଚ $when';
  }

  @override
  String get sourceSoon => 'ଶୀଘ୍ର';

  @override
  String sourceInHours(int count) {
    return '${count}h ରେ';
  }

  @override
  String sourceInDays(int count) {
    return '${count}d ରେ';
  }

  @override
  String sourceLatest(String number) {
    return 'ସର୍ବଶେଷ: $number';
  }

  @override
  String get sourceMute => 'ମୂକ';

  @override
  String get sourceUnmute => 'ଅନ୍ମୁଟ୍ କରନ୍ତୁ |';

  @override
  String get sourceMuted => 'ନିରବ |';

  @override
  String get sourceUnsubscribe => 'ସଦସ୍ୟତା ରଦ୍ଦ କରନ୍ତୁ |';

  @override
  String get sourcePickAnother => 'ଅନ୍ୟ ଏକ ଉତ୍ସ ବାଛନ୍ତୁ |';

  @override
  String get sourceOpenExtensions => 'ଏକ୍ସଟେନ୍ସନ୍ ଖୋଲନ୍ତୁ |';

  @override
  String get sourceNoticesEmpty =>
      'ଏପର୍ଯ୍ୟନ୍ତ କ release ଣସି ପ୍ରକାଶନ ବିଜ୍ଞପ୍ତି ନାହିଁ |';

  @override
  String get sourceNoticesEmptyMessage =>
      'ତୁମର ସବସ୍କ୍ରାଇଡ୍ ଟାଇଟଲଗୁଡିକର ନୂତନ ଏପିସୋଡ୍ ଏବଂ ଅଧ୍ୟାୟ ଏଠାରେ ଦେଖାଯାଏ |';

  @override
  String get sourceOpenTitle => 'ଖୋଲା ଆଖ୍ୟା |';

  @override
  String get extensionsLoading => 'ଏକ୍ସଟେନ୍ସନ୍ ଲୋଡ୍ କରୁଛି…';

  @override
  String get updateWhatsNew => 'କଣ ନୂଆ |';

  @override
  String get updateLater => 'ପରେ';

  @override
  String get updateSkipVersion => 'ଏହି ସଂସ୍କରଣକୁ ଏଡ଼ାଇଦିଅ |';

  @override
  String get updatePreparing => 'ପ୍ରସ୍ତୁତି…';

  @override
  String get updateDownloading => 'ଡାଉନଲୋଡ୍ କରୁଛି |';

  @override
  String get updateInstalling => 'ସଂସ୍ଥାପନ…';

  @override
  String updateSizeOf(String done, String total) {
    return '$total ର $done |';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed / s';
  }

  @override
  String updateReleased(String date) {
    return 'ପ୍ରକାଶିତ $date';
  }

  @override
  String get updateNoAsset =>
      'ଏହି ଡିଭାଇସରେ ଆପଣଙ୍କର ଡିଭାଇସ୍ ପାଇଁ କ download ଣସି ଡାଉନଲୋଡ୍ ନାହିଁ |';

  @override
  String get updateUpToDate => 'ଆପଣ ସର୍ବଶେଷ ସଂସ୍କରଣରେ ଅଛନ୍ତି |';

  @override
  String get updateIosHint =>
      'ଆଇଓଏସ୍ ବିଲ୍ଡସ୍ ଆପ୍ ଷ୍ଟୋର୍‌ରେ ନାହିଁ | ରିଲିଜ୍ ପୃଷ୍ଠାରୁ .ipa କୁ ଧରି AltStore କିମ୍ବା SideStore ସହିତ ସାଇଡ୍ଲୋଡ୍ କରନ୍ତୁ |';

  @override
  String get updateOpenedBrowser => 'ଆପଣଙ୍କର ବ୍ରାଉଜର୍ ଯାଞ୍ଚ କରନ୍ତୁ |';

  @override
  String get updateTryAgain => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get settingsNotifications => 'ବିଜ୍ଞପ୍ତିଗୁଡିକ';

  @override
  String get settingsNotificationsDesc =>
      'ତୁମର ତାଲିକା, ନୂତନ ଏପିସୋଡ୍ ଏବଂ ଅଧ୍ୟାୟ, ଏବଂ ମନ୍ତବ୍ୟର ଉତ୍ତର ପାଇଁ ଆଲର୍ଟ |';

  @override
  String get settingsAboutUpdates => 'ବିଷୟରେ ଏବଂ ଅଦ୍ୟତନଗୁଡ଼ିକ ବିଷୟରେ |';

  @override
  String get settingsAboutUpdatesDesc =>
      'ଆପ୍ ଅଦ୍ୟତନ, ସଂସ୍କରଣ, ଲଗ୍, ଲିଙ୍କ୍ ଏବଂ ସମର୍ଥନ |';

  @override
  String get settingsGroupAccount => 'ତୁମର ଖାତା';

  @override
  String get settingsGroupContent => 'ବିଷୟବସ୍ତୁ';

  @override
  String get settingsGroupApp => 'ଆପ୍';

  @override
  String get settingsAnimeDesc =>
      'ପ୍ଲେୟାର୍, ସବ୍ଟାଇଟ୍, ସ୍କିପିଂ, ଏପିସୋଡ୍ ତାଲିକା ଏବଂ ଏପିସୋଡ୍ ବିବରଣୀ |';

  @override
  String get settingsMangaDesc =>
      'ରିଡର୍ ମୋଡ୍, ନିୟନ୍ତ୍ରଣ, ପ୍ରଦର୍ଶନ ଏବଂ ଅଧ୍ୟାୟ ଟ୍ରାକିଂ |';

  @override
  String get settingsNovelDesc =>
      'ପାଠ, ପୃଷ୍ଠା ଟର୍ନିଂ, ଅନୁବାଦ ଏବଂ ଉଚ୍ଚ ସ୍ୱରରେ ପ read |';

  @override
  String get settingsLocalPlay => 'ସ୍ଥାନୀୟ ଖେଳ';

  @override
  String get settingsLocalPlayDesc =>
      'ଫାଇଲ୍, ଫୋଲ୍ଡର୍, ନେଟୱାର୍କ ଷ୍ଟ୍ରିମ୍ ଏବଂ ଟୋରେଣ୍ଟଗୁଡିକ ଖେଳନ୍ତୁ, କିମ୍ବା ଏକ ବହି ଖୋଲନ୍ତୁ |';

  @override
  String get settingsLocalPlayVideo => 'ଭିଡିଓ';

  @override
  String get settingsLocalPlayBooks => 'ପୁସ୍ତକ';

  @override
  String get settingsWatchSections => 'ବିଭାଗଗୁଡିକ';

  @override
  String get settingsSectionLists => 'ଏପିସୋଡ୍ ଏବଂ ଅଧ୍ୟାୟ ତାଲିକା |';

  @override
  String get settingsSectionProgress => 'ପ୍ରଗତି ଟ୍ରାକିଂ |';

  @override
  String get updateChannelDesc =>
      'ସ୍ଥିର ହେଉଛି ପରୀକ୍ଷିତ ପ୍ରକାଶନ | ପ୍ରି-ରିଲିଜ୍ ଏବଂ ଆଲଫା ଶୀଘ୍ର ନୂତନ ବ features ଶିଷ୍ଟ୍ୟ ପାଇଥାଏ କିନ୍ତୁ ଭାଙ୍ଗିପାରେ |';

  @override
  String get checkNowDesc => 'ତୁରନ୍ତ ଏକ ନୂତନ ସଂସ୍କରଣ ଖୋଜ |';

  @override
  String get generalSectionBasics => 'ଭାଷା ଏବଂ ଆଚରଣ';

  @override
  String get generalSectionSecurity => 'ସୁରକ୍ଷା';

  @override
  String get generalSectionPrivacy => 'ଗୋପନୀୟତା';

  @override
  String notificationsOtherService(String service) {
    return 'ଏହାକୁ ଖୋଲିବା ପାଇଁ $service କୁ ସୁଇଚ୍ କରନ୍ତୁ |';
  }

  @override
  String get secPlayerPlayback =>
      'ଡିଫଲ୍ଟ ସ୍ପିଡ୍, ଅଟୋ ପ୍ଲେ, ଭିଡିଓ ଫିଟ୍, ଆରିଏଣ୍ଟେସନ୍ ଏବଂ ଚିତ୍ରରେ ଚିତ୍ର |';

  @override
  String get secPlayerSkip =>
      'ସ୍ୱୟଂଚାଳିତ ଭାବରେ ଖୋଲିବା, ଶେଷ ଏବଂ ରିକାପ୍ସ ଛାଡିଦିଅ |';

  @override
  String get secPlayerControls =>
      'ଅଙ୍ଗଭଙ୍ଗୀକୁ ସ୍ୱାଇପ୍, ଧରି ରଖ ଏବଂ ଟ୍ୟାପ୍ କର ଏବଂ ପୂର୍ବାବଲୋକନ ଖୋଜ |';

  @override
  String get secPlayerSubtitles => 'ଭାଷା, ରୂପ ଏବଂ ସବ୍ଟାଇଟ୍ ରେଣ୍ଡରିଂ |';

  @override
  String get secPlayerShaders => 'ଆନିମ ଅପ୍ସାଲ୍ ଏବଂ ତୁମର ନିଜସ୍ୱ ଛାୟା |';

  @override
  String get secPlayerEngine =>
      'ଡିକୋଡର୍, ଭିଡିଓ ଏବଂ ଅଡିଓ ଆଉଟପୁଟ୍, ବଫରିଂ | ଯଦି ପ୍ଲେ-ବେକରେ ସମସ୍ୟା ଅଛି ତେବେ କେବଳ ଏହାକୁ ପରିବର୍ତ୍ତନ କରନ୍ତୁ |';

  @override
  String get secPlayerMpv => 'mpv.conf, ସ୍କ୍ରିପ୍ଟ ଏବଂ ଉନ୍ନତ ଟ୍ୟୁନିଂ |';

  @override
  String get secAnimeList => 'ଫିଲର୍ ଏପିସୋଡ୍ ଏବଂ ଅନ୍ୱାଚ୍ ହୋଇଥିବା ଥମ୍ na ନେଲ୍ |';

  @override
  String get secProgress =>
      'ଯେତେବେଳେ ତୁମର ଦେଖାଯାଇଥିବା କିମ୍ବା ପ read ଼ିବା ପ୍ରଗତି ତୁମର ତାଲିକାରେ ସେଭ୍ ହୁଏ |';

  @override
  String get secAnimeDetails =>
      'ଯେଉଁଠାରେ ଏପିସୋଡ୍ ଟାଇଟଲ୍, ଥମ୍ na ନେଲ୍ ଏବଂ ସାରାଂଶ ଆସେ |';

  @override
  String get secReaderReading =>
      'ପଠନ ମୋଡ୍, ପୃଷ୍ଠା ଟର୍ନିଂ, ଜୁମ୍ ଏବଂ ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟ |';

  @override
  String get secReaderControls =>
      'ଜୋନ୍, ଭଲ୍ୟୁମ୍ କି ଏବଂ ଅଟୋ ସ୍କ୍ରୋଲ୍ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get secReaderDisplay =>
      'ପୃଷ୍ଠଭୂମି, ଉଜ୍ଜ୍ୱଳତା, ଫୁଲ୍ ସ୍କ୍ରିନ୍ ଏବଂ ପୃଷ୍ଠା ସଂଖ୍ୟା |';

  @override
  String get secNovelText => 'ଫଣ୍ଟ, ଆକାର, ବ୍ୟବଧାନ, ମାର୍ଜିନ ଏବଂ ପୃଷ୍ଠା ଟର୍ନିଂ |';

  @override
  String get secNovelTranslate => 'ଆପଣ ପ read ିବାବେଳେ ଅଧ୍ୟାୟ ଅନୁବାଦ କରନ୍ତୁ |';

  @override
  String get secNovelSpeech =>
      'ଉଚ୍ଚ ସ୍ୱରରେ ପ read ିବା ପାଇଁ ସ୍ୱର, ଗତି ଏବଂ ପିଚ୍ |';

  @override
  String get secNotifyAbout =>
      'କେଉଁ ପ୍ରକାରର କାର୍ଯ୍ୟକଳାପ ଏକ ଆଲର୍ଟ ପଠାନ୍ତୁ ବାଛନ୍ତୁ |';

  @override
  String get layoutTitle => 'ଲେଆଉଟ୍';

  @override
  String get layoutDesc =>
      'ବାରଗୁଡ଼ିକରେ ଥିବା ବଟନ୍ଗୁଡ଼ିକୁ ବାଛ, ଘୁଞ୍ଚାନ୍ତୁ ଏବଂ ଲୁଚାନ୍ତୁ |';

  @override
  String get layoutHint =>
      'ଏହାକୁ ଘୁଞ୍ଚାଇବା ପାଇଁ ଏକ ବଟନ୍ ଟାଣନ୍ତୁ (ପ୍ରଥମେ ଏକ ଟଚ୍ ସ୍କ୍ରିନ୍ ଉପରେ ରଖନ୍ତୁ) | ଏହାକୁ କାଟିବା, ଘୁଞ୍ଚାଇବା କିମ୍ବା ଲୁଚାଇବା ପାଇଁ ଗୋଟିଏ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String layoutDropInto(String zone) {
    return 'ଡ୍ରପ୍ କରନ୍ତୁ: $zone';
  }

  @override
  String layoutCutting(String name) {
    return '$name ଗତି କରୁଛି | ଏହାକୁ ରଖିବା ପାଇଁ ଏକ ପେଷ୍ଟ ବଟନ୍ ଦବାନ୍ତୁ |';
  }

  @override
  String get layoutTitleFixed => 'ଆଖ୍ୟା';

  @override
  String get layoutZoneTopStart => 'ଶୀର୍ଷ ଦଣ୍ଡିକା, ଆଖ୍ୟା ପୂର୍ବରୁ |';

  @override
  String get layoutZoneTopEnd => 'ଟାଇଟଲ୍ ପରେ ଟପ୍ ବାର୍ |';

  @override
  String get layoutZoneBottomStart => 'ତଳ ଦଣ୍ଡ, ବାମ';

  @override
  String get layoutZoneBottomEnd => 'ତଳ ଦଣ୍ଡ, ଡାହାଣ |';

  @override
  String get layoutZoneSecondRow => 'ଲୁକ୍କାୟିତ: ସାଧାରଣ ଦୃଶ୍ୟରେ ଦ୍ୱିତୀୟ ଧାଡି |';

  @override
  String get layoutZoneOverflow => 'ଲୁକ୍କାୟିତ: ଅଧିକ ମେନୁରେ |';

  @override
  String get layoutEmptyZone => 'ଏଠାରେ ବଟନ୍ ଡ୍ରପ୍ କରନ୍ତୁ |';

  @override
  String get layoutCut => 'କାଟ |';

  @override
  String get layoutPaste => 'ଏଠାରେ ଲେପନ କରନ୍ତୁ |';

  @override
  String get layoutHide => 'ଲୁଚାନ୍ତୁ |';

  @override
  String layoutMoveTo(String zone) {
    return '$zone କୁ ଯାଆନ୍ତୁ |';
  }

  @override
  String get layoutReset => 'ଡିଫଲ୍ଟକୁ ପୁନ et ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get layoutMore => 'ଅଧିକ';

  @override
  String get sourceWhyAction => 'କାହିଁକି ସତର୍କ ନାହିଁ?';

  @override
  String get sourceWhyStatus => 'ସ୍ଥିତି';

  @override
  String get sourceWhyLastCheck => 'ଶେଷ ଯାଞ୍ଚ କରାଯାଇଛି |';

  @override
  String get sourceWhyNever => 'ଏପର୍ଯ୍ୟନ୍ତ ନୁହେଁ |';

  @override
  String get sourceWhyNextCheck => 'ପରବର୍ତ୍ତୀ ଯାଞ୍ଚ |';

  @override
  String get sourceWhyNewest => 'ଉତ୍ସରେ ନୂତନ |';

  @override
  String get sourceWhyProgress => 'ତୁମର ଅଗ୍ରଗତି';

  @override
  String get sourceWhyListStatus => 'ତାଲିକା ସ୍ଥିତି';

  @override
  String get sourceWhyFailures => 'ଏକ ଧାଡିରେ ବିଫଳ ଯାଞ୍ଚ |';

  @override
  String get sourceWhyLastRelease => 'ଶେଷ ନୂତନ ରିଲିଜ୍ ଦେଖାଗଲା |';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs।';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert।';

  @override
  String get sourceWhyVerdictSkipped =>
      'This title is skipped by the rules above. Change them in notification settings, or use Check now to run it anyway।';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked।';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted।';

  @override
  String get externalPlayerTitle => 'ଅନ୍ୟତ୍ର ଷ୍ଟ୍ରିମ୍ ଖୋଲନ୍ତୁ |';

  @override
  String get externalCopyUrl => 'ଷ୍ଟ୍ରିମ୍ ଲିଙ୍କ୍ କପି କରନ୍ତୁ |';

  @override
  String get externalCopied => 'ଷ୍ଟ୍ରିମ୍ ଲିଙ୍କ୍ କପି ହୋଇଛି |';

  @override
  String get externalChooser => 'ଅନ୍ୟ ଏକ ଆପରେ ଖୋଲନ୍ତୁ |';

  @override
  String get externalVlc => 'VLC ରେ ଖୋଲନ୍ତୁ |';

  @override
  String get externalMpv => 'Mpv ରେ ଖୋଲନ୍ତୁ |';

  @override
  String get externalWebVideoCast => 'ୱେବ୍ ଭିଡିଓ କାଷ୍ଟ୍ |';

  @override
  String get castViaAppHint => 'ୱେବ୍ ଭିଡିଓ କାଷ୍ଟ୍ ଆପ୍ କୁ ଷ୍ଟ୍ରିମ୍ ପଠାନ୍ତୁ |';

  @override
  String get externalFailed =>
      'ଷ୍ଟ୍ରିମ୍ ଖୋଲିପାରିଲା ନାହିଁ | ପ୍ଲେୟାର ସଂସ୍ଥାପିତ ହୋଇଛି କି?';

  @override
  String get addonInstalled => 'ସଂସ୍ଥାପିତ |';

  @override
  String get loadFailedActivity => 'କାର୍ଯ୍ୟକଳାପ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ |';

  @override
  String get loadFailedFavourites =>
      'ପସନ୍ଦଗୁଡିକ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ | ପୁନ ry ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get loadFailedStats => 'ପରିସଂଖ୍ୟାନ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ |';

  @override
  String get loadFailedReplies => 'ଉତ୍ତରଗୁଡିକ ଲୋଡ୍ ହୋଇପାରିଲା ନାହିଁ |';

  @override
  String get cantBeUndone => 'This can\'t be undone।';

  @override
  String get searchTags => 'ଟ୍ୟାଗ୍ ସନ୍ଧାନ କରନ୍ତୁ |';

  @override
  String get spoilerTapToView => 'ଲୁଟେରା, ଦେଖିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ |';

  @override
  String get mediaVideo => 'ଭିଡିଓ';

  @override
  String get notificationSomeone => 'କେହି ଜଣେ';

  @override
  String get notificationATitle => 'ଏକ ଆଖ୍ୟା';

  @override
  String get notificationAddedDetail => 'AniList ରେ ଯୋଡା ଯାଇଥିଲା |';

  @override
  String get updateNoReleases => 'କ No ଣସି ପ୍ରକାଶନ ମିଳିଲା ନାହିଁ |';

  @override
  String get updateInvalidResponse => 'ଅବ val ଧ ଅଦ୍ୟତନ ପ୍ରତିକ୍ରିୟା |';

  @override
  String get commentsRateLimited => 'ହାର ସୀମିତ |';

  @override
  String get commentsConnectFailed => 'ସଂଯୋଗ କରିବାରେ ବିଫଳ |';

  @override
  String get dnsNoRecords => 'କ A ଣସି ରେକର୍ଡ ଫେରି ନାହିଁ |';

  @override
  String get importTokenRejected => 'ଟୋକେନ୍ ପ୍ରତ୍ୟାଖ୍ୟାନ କଲେ |';

  @override
  String get developerRoleLead => 'ଲିଡ୍ ଡେଭଲପର୍ |';

  @override
  String get developerRoleModerator => 'ଡିସକର୍ଡ ମୋଡରେଟର୍ |';

  @override
  String extensionManagerTitle(String type) {
    return '$type ପରିଚାଳକ |';
  }

  @override
  String extensionsOfType(String type) {
    return '$type ବିସ୍ତୃତକରଣ |';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name ସେଟିଙ୍ଗ୍ |';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings।';
  }

  @override
  String notificationAired(String episode, String title) {
    return '$title ର ଏପିସୋଡ୍ $episode ପ୍ରସାରିତ ହେଲା |';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'ଏପିସୋଡ୍ $episode ପ୍ରସାରିତ ହେଲା |';
  }

  @override
  String notificationAdded(String title) {
    return '$title AniList ରେ ଯୋଡା ଯାଇଛି |';
  }

  @override
  String updateNotFound(String message) {
    return 'ଅଦ୍ୟତନ ସର୍ଭର ସେହି ପ୍ରକାଶନକୁ ଖୋଜି ପାଇଲା ନାହିଁ: $message';
  }

  @override
  String get installStepJre => 'ଜାଭା ଚାଲିବା ସମୟ |';

  @override
  String get installStepCore => 'ରନ୍ଟାଇମ୍ କୋର୍ |';

  @override
  String installStepsProgress(int current, int total) {
    return '$total ର ଷ୍ଟେପ୍ $current |';
  }

  @override
  String get stepWaiting => 'ଅପେକ୍ଷା';

  @override
  String get stepChecking => 'ଯାଞ୍ଚ…';

  @override
  String get stepUpToDate => 'ଅଦ୍ୟାବଧି';

  @override
  String stepUpToDateWith(String detail) {
    return 'ଅଦ୍ୟତନ · $detail';
  }

  @override
  String get stepWillInstall => 'ସଂସ୍ଥାପିତ ହେବ |';

  @override
  String get stepWillUpdate => 'ଅଦ୍ୟତନ ହେବ |';

  @override
  String stepWillUpdateTo(String version) {
    return '$version କୁ ଅଦ୍ୟତନ ହେବ |';
  }

  @override
  String get stepInstalled => 'ସଂସ୍ଥାପିତ |';

  @override
  String get stepNotNeeded => 'ଏଠାରେ ଆବଶ୍ୟକ ନାହିଁ |';

  @override
  String get stepFailed => 'ବିଫଳ';

  @override
  String stepFailedWith(String reason) {
    return 'ବିଫଳ: $reason';
  }

  @override
  String get installNeedsRuntime =>
      'It runs on the Java runtime and the shared runtime core. They are installed first, and updated if they changed।';

  @override
  String get installRuntimeNewer =>
      'The runtime this manager runs on has an update।';

  @override
  String get removeJvmTitle => 'ଜାଭା ଚାଲିବା ସମୟ ହଟାନ୍ତୁ?';

  @override
  String get removeJvmMessage =>
      'Desktop extension managers stop working until it is installed again. It is downloaded again the next time you install or open one।';

  @override
  String get runtimePreparing => 'ଚାଲିବା ସମୟ ପ୍ରସ୍ତୁତ କରିବା…';

  @override
  String get calendarAll => 'ସମସ୍ତ';

  @override
  String get calendarAnime => 'ଆନିମ';

  @override
  String get calendarManga => 'ମାଙ୍ଗା |';

  @override
  String get readerCloudflare => 'ବ୍ରାଉଜରରେ ଖୋଲନ୍ତୁ (କ୍ଲାଉଡ୍ ଫ୍ଲାର୍ ଚେକ୍)';

  @override
  String get badgeBoardHint =>
      'Drag a badge onto a corner of the first card, or drag a badge already on it to move it. Badges swap places, so none ever overlap. Tap a badge below to turn it on or off।';

  @override
  String get statusAuto => 'ଅଟୋ |';

  @override
  String get unreadCounter => 'ପ read ି ନଥିବା କାଉଣ୍ଟର |';

  @override
  String get unreadCounterDesc =>
      'ପୋଷ୍ଟରରେ କେତେ ଏପିସୋଡ୍ ବା ଅଧ୍ୟାୟ ବାକି ଅଛି ଦେଖାନ୍ତୁ |';

  @override
  String get settingsShortcuts => 'କୀବୋର୍ଡ୍ ସର୍ଟକଟ୍ |';

  @override
  String get settingsShortcutsDesc =>
      'ପ୍ରତ୍ୟେକ ଚାବିକୁ ଦେଖନ୍ତୁ, ପରିବର୍ତ୍ତନ କରନ୍ତୁ ଏବଂ ବନ୍ଦ କରନ୍ତୁ |';

  @override
  String get shortcutGroupApp => 'ଆପ୍';

  @override
  String get shortcutGroupPlayer => 'ଭିଡିଓ ପ୍ଲେୟାର |';

  @override
  String get shortcutGroupReader => 'ପାଠକ';

  @override
  String get shortcutsEnableApp => 'ଆପ୍ ସର୍ଟକଟ୍ |';

  @override
  String get shortcutsEnablePlayer => 'ପ୍ଲେୟାର ସର୍ଟକଟ୍ |';

  @override
  String get shortcutsEnableReader => 'ପାଠକ ସର୍ଟକଟ୍ |';

  @override
  String get shortcutsEnableDesc =>
      'ଏହି ଗୋଷ୍ଠୀର ପ୍ରତ୍ୟେକ ଚାବିକୁ ଟର୍ନ୍ ଅନ୍ କିମ୍ବା ଅଫ୍ କରନ୍ତୁ |';

  @override
  String get shortcutNotSet => 'ସେଟ୍ ହୋଇନାହିଁ |';

  @override
  String get shortcutAddKey => 'ଏକ ଚାବି ଯୋଡନ୍ତୁ |';

  @override
  String get shortcutResetOne => 'ଡିଫଲ୍ଟକୁ ପୁନ et ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get shortcutClearKeys => 'ସମସ୍ତ ଚାବି ହଟାନ୍ତୁ |';

  @override
  String get shortcutResetAll => 'ସମସ୍ତ ସର୍ଟକଟ୍ ପୁନ Res ସେଟ୍ କରନ୍ତୁ |';

  @override
  String get shortcutResetAllDesc => 'ପ୍ରତ୍ୟେକ ଚାବିକୁ ଏହାର ଡିଫଲ୍ଟକୁ ଫେରାନ୍ତୁ |';

  @override
  String get shortcutPress => 'ଆପଣ ଚାହୁଁଥିବା ଚାବି କିମ୍ବା ମିଶ୍ରଣକୁ ଦବାନ୍ତୁ |';

  @override
  String get shortcutPressHint =>
      'Each combination can only belong to one action, so taking one moves it।';

  @override
  String get shortcutSeekPercent => 'ଭିଡିଓର ଏକ ବିନ୍ଦୁକୁ ଯାଆନ୍ତୁ |';

  @override
  String get shortcutSeekPercentKeys => '0 - 9';

  @override
  String get shortcutAppBack => 'ଫେରିଯାଅ |';

  @override
  String get shortcutAppFullscreen => 'ଫୁଲ୍ ସ୍କ୍ରିନ୍ ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get shortcutAppGlass => 'ଗ୍ଲାସ୍ ମୋଡ୍ ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get shortcutAppMaterialYou => 'ତୁମକୁ ଟୋଗଲ୍ କର |';

  @override
  String get shortcutAppDark => 'ଡାର୍କ ମୋଡ୍ ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get shortcutAppOled => 'OLED କଳା ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get shortcutAppSearch => 'ସନ୍ଧାନ ଖୋଲନ୍ତୁ |';

  @override
  String get shortcutAppSettings => 'ସେଟିଂସମୂହ ଖୋଲନ୍ତୁ |';

  @override
  String get shortcutAppDownloads => 'ଡାଉନଲୋଡ୍ ଖୋଲନ୍ତୁ |';

  @override
  String get shortcutAppNotifications => 'ବିଜ୍ଞପ୍ତିଗୁଡିକ ଖୋଲନ୍ତୁ |';

  @override
  String get shortcutAppIncognito => 'ଗୁପ୍ତକୁ ଟୋଗଲ୍ କରନ୍ତୁ |';

  @override
  String get shortcutAppShortcuts => 'କୀବୋର୍ଡ୍ ସର୍ଟକଟ୍ ଦେଖାନ୍ତୁ |';

  @override
  String get shortcutPlayerPlayPause => 'ଖେଳ କିମ୍ବା ବିରତି କର |';

  @override
  String get shortcutPlayerSeekForward => 'ଆଗକୁ ଖୋଜ |';

  @override
  String get shortcutPlayerSeekBack => 'ପଛକୁ ଖୋଜ |';

  @override
  String get shortcutPlayerSeekForwardLong => '30 ସେକେଣ୍ଡ ଆଗକୁ ଖୋଜ |';

  @override
  String get shortcutPlayerSeekBackLong => '30 ସେକେଣ୍ଡ ପଛକୁ ଖୋଜ |';

  @override
  String get shortcutPlayerFrameForward => 'ପରବର୍ତ୍ତୀ ଫ୍ରେମ୍ |';

  @override
  String get shortcutPlayerFrameBack => 'ପୂର୍ବ ଫ୍ରେମ୍';

  @override
  String get shortcutPlayerVolumeUp => 'ଭଲ୍ୟୁମ୍ ଅପ୍';

  @override
  String get shortcutPlayerVolumeDown => 'ଭଲ୍ୟୁମ୍ ତଳକୁ |';

  @override
  String get shortcutPlayerMute => 'ମୂକ';

  @override
  String get shortcutPlayerFullscreen => 'ଫୁଲ୍ ସ୍କ୍ରିନ୍ |';

  @override
  String get shortcutPlayerNext => 'ପରବର୍ତ୍ତୀ ପର୍ଯ୍ୟାୟ';

  @override
  String get shortcutPlayerPrevious => 'ପୂର୍ବ ପର୍ଯ୍ୟାୟ';

  @override
  String get shortcutPlayerSkip => 'ଇଣ୍ଟ୍ରୋ କିମ୍ବା ଶେଷକୁ ଏଡ଼ାଇଦିଅ |';

  @override
  String get shortcutPlayerPanel => 'ଏପିସୋଡ୍ ତାଲିକା |';

  @override
  String get shortcutPlayerSpeedUp => 'ଶୀଘ୍ର ଚଲାଇବା |';

  @override
  String get shortcutPlayerSpeedDown => 'ମନ୍ଥର ଖେଳିବା |';

  @override
  String get shortcutPlayerSpeedReset => 'ସାଧାରଣ ଗତି';

  @override
  String get shortcutPlayerSubtitleToggle => 'ସବ୍ଟାଇଟ୍ସ ଅନ୍ କିମ୍ବା ଅଫ୍ |';

  @override
  String get shortcutPlayerSubtitleCycle => 'ପରବର୍ତ୍ତୀ ସବ୍ଟାଇଟ୍ ଟ୍ରାକ୍ |';

  @override
  String get shortcutPlayerAudioCycle => 'ପରବର୍ତ୍ତୀ ଅଡିଓ ଟ୍ରାକ୍ |';

  @override
  String get shortcutPlayerStreamCycle => 'ପରବର୍ତ୍ତୀ ଷ୍ଟ୍ରିମ୍ |';

  @override
  String get shortcutPlayerFit => 'ଭିଡିଓ ଫିଟ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ |';

  @override
  String get shortcutReaderRight => 'ଡାହାଣକୁ ପୃଷ୍ଠା |';

  @override
  String get shortcutReaderLeft => 'ବାମକୁ ପୃଷ୍ଠା |';

  @override
  String get shortcutReaderNextPage => 'ପରବର୍ତ୍ତୀ ପୃଷ୍ଠା |';

  @override
  String get shortcutReaderPreviousPage => 'ପୂର୍ବ ପୃଷ୍ଠା |';

  @override
  String get shortcutReaderControls => 'ନିୟନ୍ତ୍ରଣ ଦେଖାନ୍ତୁ କିମ୍ବା ଲୁଚାନ୍ତୁ |';

  @override
  String get shortcutReaderNextChapter => 'ପରବର୍ତ୍ତୀ ଅଧ୍ୟାୟ |';

  @override
  String get shortcutReaderPreviousChapter => 'ପୂର୍ବ ଅଧ୍ୟାୟ';

  @override
  String shortcutTaken(String action) {
    return '$action ରୁ ନିଆଯାଇଛି';
  }

  @override
  String get incognitoTurnedOn => 'ଗୁପ୍ତ ମୋଡ୍ ଅନ୍ ଅଛି |';

  @override
  String get incognitoTurnedOff => 'ଗୁପ୍ତ ମୋଡ୍ ବନ୍ଦ |';

  @override
  String get onHoldAnime => 'ଧରି ରଖନ୍ତୁ ଆନିମ |';

  @override
  String get onHoldManga => 'ମାଙ୍ଗା ଧରି ରଖନ୍ତୁ |';

  @override
  String get droppedAnime => 'ଡ୍ରପ୍ ଆନିମ |';

  @override
  String get droppedManga => 'ମାଙ୍ଗା ପକାଇଲେ |';

  @override
  String get generalSectionDesktop => 'ଡେସ୍କଟପ୍';

  @override
  String get closeAction => 'ଯେତେବେଳେ ୱିଣ୍ଡୋ ବନ୍ଦ ହୋଇଯାଏ |';

  @override
  String get closeActionQuit => 'ଆପ୍ ଛାଡନ୍ତୁ |';

  @override
  String get closeActionWhenBusy => 'କିଛି ଚାଲୁଥିବାବେଳେ ଟ୍ରେରେ ଚାଲିବା ଜାରି ରଖ |';

  @override
  String get closeActionAlways => 'ସବୁବେଳେ ଟ୍ରେରେ ଚାଲିବା ଜାରି ରଖ |';

  @override
  String get closeActionNoTray =>
      'ସିଷ୍ଟମ୍ ଟ୍ରେ ଏଠାରେ ଉପଲବ୍ଧ ନାହିଁ, ତେଣୁ ବନ୍ଦ ହେବା ପରେ ଆପ୍ ଛାଡିଥାଏ |';

  @override
  String get gamepadNav => 'ଗେମପ୍ୟାଡ୍ ନେଭିଗେସନ୍ |';

  @override
  String get gamepadNavDesc =>
      'ଆପ୍ ଚାରିପାଖେ ବୁଲାନ୍ତୁ ଏବଂ ଏକ ଖେଳ ନିୟନ୍ତ୍ରକ ସହିତ ପ୍ଲେୟାରକୁ ନିୟନ୍ତ୍ରଣ କରନ୍ତୁ |';

  @override
  String get trayShow => 'Dartotsu ଦେଖାନ୍ତୁ |';

  @override
  String get trayQuit => 'ଛାଡ';

  @override
  String get trayIdle => 'କିଛି ଚାଲୁନାହିଁ |';

  @override
  String trayDownloading(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ଆଇଟମ୍ ଗୁଡିକ ଡାଉନଲୋଡ୍ କରୁଛି |',
      one: '$count ଆଇଟମ୍ ଡାଉନଲୋଡ୍ କରୁଛି |',
    );
    return '$_temp0';
  }

  @override
  String get traySyncing => 'ତୁମର ତାଲିକାଗୁଡ଼ିକୁ ସିଙ୍କ୍ କରୁଛି |';

  @override
  String get trayUpdating => 'ଆପ୍ ଅପଡେଟ୍ କରୁଛି |';

  @override
  String get trayPlaying => 'ଏକ ଛୋଟ ୱିଣ୍ଡୋରେ ଖେଳିବା |';

  @override
  String get traySearch => 'ସନ୍ଧାନ କର |';

  @override
  String get trayPauseDownloads => 'ଡାଉନଲୋଡ୍ଗୁଡ଼ିକୁ ବିରତି ଦିଅ |';

  @override
  String get trayResumeDownloads => 'ଡାଉନଲୋଡ୍ ଆରମ୍ଭ କରନ୍ତୁ |';

  @override
  String get playerDownloadTitle => 'ପ୍ଲେୟାର ଡାଉନଲୋଡ୍ କରିବା |';

  @override
  String get playerDownloadBody =>
      'Dartotsu fetches its video engine once. Playback starts as soon as it is ready।';

  @override
  String get playerDownloadStarting => 'ଡାଉନଲୋଡ୍ ଆରମ୍ଭ କରିବା…';

  @override
  String get playerDownloadFailedTitle => 'ପ୍ଲେୟାର ପାଇପାରିଲା ନାହିଁ |';

  @override
  String get playerDownloadFailedBody =>
      'Check your connection and try again. The download picks up where it stopped।';

  @override
  String get playerDownloadRetry => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ |';

  @override
  String get playerDownloadCopy => 'ବିବରଣୀ କପି କରନ୍ତୁ |';

  @override
  String get removePlayerTitle => 'ପ୍ଲେୟାର ଅପସାରଣ କରିବେ କି?';

  @override
  String get removePlayerMessage =>
      'Videos can\'t play until the player is downloaded again।';

  @override
  String get trailerLoading => 'ଟ୍ରେଲରକୁ ଲୋଡ୍ କରୁଛି…';

  @override
  String get trailerFailed =>
      'ବ୍ରାଉଜରରେ ଏହାକୁ ଖୋଲି ଏଠାରେ ଟ୍ରେଲର ଚଲାଇ ପାରିଲା ନାହିଁ |';
}
