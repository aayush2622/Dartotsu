// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Programu MPYA bora ya\nkufuatilia Anime na Manga';

  @override
  String get anilist => 'AniList';

  @override
  String get mal => 'MyAnimeList';

  @override
  String get simkl => 'Simkl';

  @override
  String get kitsu => 'Kitsu';

  @override
  String get mangaBaka => 'MangaBaka';

  @override
  String get mangaUpdates => 'MangaUpdates';

  @override
  String get discord => 'Discord';

  @override
  String get loadMore => 'Pakia zaidi';

  @override
  String get login => 'Ingia';

  @override
  String get continueAsGuest => 'Endelea kama mgeni';

  @override
  String get getStarted => 'Anza';

  @override
  String get loginWithToken => 'Ingia kwa tokeni';

  @override
  String get pasteTokenHint => 'Bandika tokeni yako ya ufikiaji';

  @override
  String loginTo(String service) {
    return 'Ingia kwenye $service';
  }

  @override
  String get settings => 'Mipangilio';

  @override
  String get account => 'Akaunti';

  @override
  String get about => 'Kuhusu';

  @override
  String get language => 'Lugha';

  @override
  String get animationSpeed => 'Uhuishaji';

  @override
  String get animationSpeedDesc =>
      'Kasi ya mabadiliko na athari za kuingia kwenye programu nzima';

  @override
  String get animationSpeedOff => 'Zima';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Viendelezi',
      one: 'Kiendelezi',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'Chanzo kisichojulikana';

  @override
  String get install => 'Sakinisha';

  @override
  String get update => 'Sasisha';

  @override
  String get uninstall => 'Ondoa';

  @override
  String get updateInstallCancelled =>
      'Usakinishaji umeghairiwa. Kama Android ilisema programu inagongana na iliyosakinishwa, sahihi ni tofauti: ondoa toleo la sasa kwanza, kisha sakinisha sasisho';

  @override
  String updateInstallFailed(String error) {
    return 'Sasisho limeshindwa: $error';
  }

  @override
  String get appLock => 'Kufuli ya programu';

  @override
  String get appLockDesc =>
      'Omba nambari ya siri programu inapofunguliwa au ukirudi baada ya muda';

  @override
  String get appLockBiometric => 'Unlock with biometrics';

  @override
  String get appLockBiometricDesc =>
      'Use your fingerprint or face instead of typing the passcode';

  @override
  String get appLockBiometricReason => 'Unlock Dartotsu';

  @override
  String get appLockDelay => 'Lock when idle';

  @override
  String get appLockDelayAlways => 'Always';

  @override
  String get appLockDelayNever => 'Never';

  @override
  String appLockDelayAfter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '1 minute',
    );
    return 'After $_temp0';
  }

  @override
  String get appLockUseBiometric => 'Use biometrics';

  @override
  String get appLockUnlock => 'Weka nambari yako ya siri';

  @override
  String get appLockWrong => 'Nambari ya siri si sahihi';

  @override
  String appLockWait(String seconds) {
    return 'Umejaribu mara nyingi, subiri sekunde $seconds';
  }

  @override
  String get appLockNew => 'Chagua nambari ya siri';

  @override
  String get appLockNewHint => 'Tarakimu 4 hadi 8';

  @override
  String get appLockConfirm => 'Iweke tena';

  @override
  String get appLockMismatch => 'Nambari za siri hazifanani';

  @override
  String get appLockOn => 'Nambari ya siri imewekwa';

  @override
  String get appLockRemoveTitle =>
      'Weka nambari yako ya siri ili kuzima kufuli';

  @override
  String get installFailed => 'Kusakinisha kumeshindwa';

  @override
  String get updateFailed => 'Kusasisha kumeshindwa';

  @override
  String extensionUpdates(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count updates available',
      one: '1 update available',
    );
    return '$_temp0';
  }

  @override
  String get updateAll => 'Update all';

  @override
  String extensionsUpdated(int done, int total) {
    return '$done of $total extensions updated';
  }

  @override
  String get updateConflictTitle => 'Update not installed';

  @override
  String updateConflictBody(String names) {
    return '$names could not be installed over the existing version. This usually means the installed copy was signed differently. Uninstall it and install the new version?';
  }

  @override
  String get updateConflictAction => 'Uninstall and reinstall';

  @override
  String get noSourceSettings => 'Chanzo hiki hakina mipangilio yoyote';

  @override
  String get addPluginRepository => 'Ongeza hazina ya programu jalizi';

  @override
  String get pluginIndexUrlHint => 'URL ya faharasa ya programu jalizi';

  @override
  String get addRepository => 'Ongeza hazina';

  @override
  String get pluginRepoUpdated => 'Hazina ya programu jalizi imesasishwa';

  @override
  String get pluginRepoUpdateFailed =>
      'Imeshindwa kuonyesha upya hazina ya programu jalizi';

  @override
  String get ok => 'Sawa';

  @override
  String get cancel => 'Ghairi';

  @override
  String get yes => 'Ndiyo';

  @override
  String get no => 'Hapana';

  @override
  String get save => 'Hifadhi';

  @override
  String get reset => 'Weka upya';

  @override
  String get clear => 'Futa';

  @override
  String get test => 'Jaribu';

  @override
  String get testing => 'Inajaribu…';

  @override
  String get resolving => 'Inatatua…';

  @override
  String get none => 'Hakuna';

  @override
  String get selectMediaService => 'Chagua huduma ya media';

  @override
  String get pickColor => 'Chagua rangi';

  @override
  String get colorPickerCustom => 'Maalum';

  @override
  String get colorPickerTransparent => 'Uwazi';

  @override
  String get ltr => 'Kushoto kwenda kulia';

  @override
  String get searchSettings => 'Tafuta mipangilio';

  @override
  String nothingMatches(String query) {
    return 'Hakuna kinacholingana na \"$query\"';
  }

  @override
  String searchCategory(String category) {
    return 'Tafuta $category';
  }

  @override
  String get settingsAppearance => 'Mwonekano';

  @override
  String get settingsAppearanceDesc => 'Mandhari, rangi, hali ya kioo';

  @override
  String get settingsGeneral => 'Jumla';

  @override
  String get settingsGeneralDesc => 'Lugha na tabia ya programu';

  @override
  String get settingsNetwork => 'Mtandao';

  @override
  String get settingsNetworkDesc => 'User agent, vyeti, DNS na proksi';

  @override
  String get settingsAccountDesc => 'Huduma ya ufuatiliaji na kuingia';

  @override
  String get settingsUpdates => 'Masasisho';

  @override
  String get amoledBlack => 'Nyeusi ya AMOLED';

  @override
  String get amoledBlackDesc => 'Nyuso nyeusi kabisa kwenye hali ya giza';

  @override
  String get glassMode => 'Hali ya kioo';

  @override
  String get glassModeDesc => 'Nyuso zenye ukungu juu ya picha za maktaba yako';

  @override
  String get shelfFrame => 'Fremu kuzunguka sehemu';

  @override
  String get shelfFrameDesc =>
      'Onyesha kadi nyuma ya kila safu, au acha safu zikae moja kwa moja kwenye ukurasa';

  @override
  String get settingsExtensionsDesc =>
      'Wasimamizi wa vyanzo, hazina na chaguo za viendelezi';

  @override
  String get settingsAddons => 'Viongezi';

  @override
  String get customPath => 'Njia maalum ya hifadhi';

  @override
  String get customPathDesc =>
      'Mahali data ya programu inahifadhiwa. Bonyeza kwa muda mrefu kuweka upya';

  @override
  String get selectDirectory => 'Chagua folda';

  @override
  String get differentCacheManager => 'Akiba mbadala ya picha';

  @override
  String get differentCacheManagerDesc =>
      'Tumia kidhibiti tofauti cha akiba kwa picha';

  @override
  String get backupAndRestore => 'Hifadhi nakala na kurejesha';

  @override
  String get backupAndRestoreDesc => 'Hifadhi au pakia mapendeleo yako';

  @override
  String get backup => 'Nakala rudufu';

  @override
  String get restore => 'Rejesha';

  @override
  String get loadExtensionsIcon => 'Pakia aikoni za viendelezi';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'Onyesha aikoni za vyanzo kwenye orodha za viendelezi';

  @override
  String get sectionStorage => 'Hifadhi';

  @override
  String get sectionManagers => 'Wasimamizi';

  @override
  String get sectionOptions => 'Chaguo';

  @override
  String get backupTabBackup => 'Hifadhi nakala';

  @override
  String get backupTabRestore => 'Rejesha';

  @override
  String backupSummary(Object keys, Object categories) {
    return 'Mipangilio $keys katika makundi $categories';
  }

  @override
  String backupLastBackup(Object time) {
    return 'Nakala ya mwisho $time';
  }

  @override
  String get backupNever => 'Bado hakuna nakala';

  @override
  String get backupSelectAll => 'Chagua zote';

  @override
  String get backupClearAll => 'Futa';

  @override
  String backupKeys(Object count) {
    return 'Mipangilio $count';
  }

  @override
  String get backupPassword => 'Nenosiri (hiari)';

  @override
  String get backupPasswordHint => 'Acha wazi kutumia chaguomsingi';

  @override
  String get backupSensitive =>
      'Inajumuisha tokeni za kuingia. Weka faili hii siri';

  @override
  String get backupCreate => 'Tengeneza nakala';

  @override
  String backupSaved(Object name) {
    return 'Nakala imehifadhiwa kwenye $name';
  }

  @override
  String backupFailed(Object error) {
    return 'Kuhifadhi nakala kumeshindwa: $error';
  }

  @override
  String get backupPickFile => 'Chagua faili ya nakala';

  @override
  String get backupPickFileDesc =>
      'Chagua faili ya .json iliyotengenezwa na Dartotsu';

  @override
  String get backupChooseAnother => 'Chagua faili nyingine';

  @override
  String get backupCreatedAt => 'Imeundwa';

  @override
  String get backupAppVersion => 'Toleo la programu';

  @override
  String get backupDevice => 'Kifaa';

  @override
  String get backupAccounts => 'Akaunti';

  @override
  String get backupSize => 'Ukubwa';

  @override
  String get backupEncrypted => 'Imelindwa kwa nenosiri';

  @override
  String get backupUnlock => 'Fungua';

  @override
  String get backupWrongPassword =>
      'Imeshindwa kusoma faili hii. Angalia nenosiri';

  @override
  String get backupRestoreSelected => 'Rejesha vilivyochaguliwa';

  @override
  String backupRestoreConfirm(Object count) {
    return 'Kurejesha mipangilio $count? Thamani zilizopo kwenye makundi haya zitafutwa.';
  }

  @override
  String get backupRestored =>
      'Imerejeshwa. Anzisha upya programu ili kutumia kila kitu';

  @override
  String backupRestoreFailed(Object error) {
    return 'Kurejesha kumeshindwa: $error';
  }

  @override
  String get backupSelectOne => 'Chagua angalau kundi moja';

  @override
  String get backupCatTheme => 'Mwonekano';

  @override
  String get backupCatThemeDesc =>
      'Mandhari, rangi, kioo, fonti na mtindo wa kadi';

  @override
  String get backupCatCommon => 'Jumla';

  @override
  String get backupCatCommonDesc =>
      'Lugha, hifadhi, mtandao na chaguo za viendelezi';

  @override
  String get backupCatPlayer => 'Kicheza';

  @override
  String get backupCatPlayerDesc => 'Mapendeleo ya kicheza';

  @override
  String get backupCatReader => 'Msomaji';

  @override
  String get backupCatReaderDesc => 'Mapendeleo ya msomaji';

  @override
  String get backupCatProtected => 'Akaunti';

  @override
  String get backupCatProtectedDesc => 'Tokeni za kuingia na data ya kuingia';

  @override
  String get backupCatOther => 'Huduma na milisho';

  @override
  String get backupCatOtherDesc =>
      'Mpangilio wa milisho, orodha na chaguo za huduma';

  @override
  String get logFile => 'Faili ya kumbukumbu';

  @override
  String get logFileDesc =>
      'Shiriki kumbukumbu za programu, au nakili njia yake kwenye Linux';

  @override
  String get logDelete => 'Delete log files';

  @override
  String get logDeleteDesc => 'Clear the saved app logs to free up space';

  @override
  String logDeleted(String size) {
    return 'Deleted $size of logs';
  }

  @override
  String get missingSequel => 'Missing Sequel';

  @override
  String get rising => 'Rising';

  @override
  String get stacks => 'Stacks';

  @override
  String get stacksAll => 'All';

  @override
  String get stacksFeatured => 'Featured';

  @override
  String get stacksMine => 'Yours';

  @override
  String get stacksSaved => 'Saved';

  @override
  String get stacksFollowing => 'Following';

  @override
  String get stacksEmpty => 'No stacks here yet';

  @override
  String get stacksSignIn => 'Sign in to MangaBaka to see your stacks';

  @override
  String get stacksScopeNeeded =>
      'Your stacks need a new permission. Sign in to MangaBaka again to allow it.';

  @override
  String get stacksSignInAgain => 'Sign in again';

  @override
  String get stacksCouldntLoad => 'Couldn\'t load the stacks';

  @override
  String stackSeriesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count series',
      one: '1 series',
    );
    return '$_temp0';
  }

  @override
  String stackSavesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count saves',
      one: '1 save',
    );
    return '$_temp0';
  }

  @override
  String stackBy(String name) {
    return 'by $name';
  }

  @override
  String get stackSpoilers => 'Spoilers';

  @override
  String get stackEmptyEntries => 'This stack is empty';

  @override
  String get stackSave => 'Save stack';

  @override
  String get stackUnsave => 'Remove from saved';

  @override
  String get stackSavedToast => 'Saved to your stacks';

  @override
  String get stackRemovedToast => 'Removed from your saved stacks';

  @override
  String userStacks(String name) {
    return 'Stacks by $name';
  }

  @override
  String get newsTitle => 'News';

  @override
  String get newsEmpty => 'No news right now';

  @override
  String get newsCouldntLoad => 'Couldn\'t load the news';

  @override
  String get logFileCopied => 'Njia ya kumbukumbu imenakiliwa';

  @override
  String get donateSheetTitle => 'Unafurahia Dartotsu?';

  @override
  String get donateSheetMessage =>
      'Dartotsu inaundwa na kutunzwa na mtu mmoja. Kama inakusaidia, fikiria kuunga mkono maendeleo yake.';

  @override
  String get donateLater => 'Labda baadaye';

  @override
  String get glassBackground => 'Mandharinyuma ya kioo';

  @override
  String get glassBackgroundDesc =>
      'Bango la wasifu wako isipokuwa uweke kiungo cha picha';

  @override
  String get glassBackgroundHint =>
      'Kiungo cha picha (acha wazi kutumia bango lako)';

  @override
  String get followCover => 'Fuata jalada';

  @override
  String get followCoverDesc =>
      'Rangi hufuata mandharinyuma, na jalada kwenye kurasa za maelezo';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'Mtindo wa kadi';

  @override
  String get cardStyleDesc => 'Mahali pa kichwa, ukubwa, maendeleo na beji';

  @override
  String get customFont => 'Fonti';

  @override
  String get customFontDesc =>
      'Chaguomsingi, faili kutoka kifaa chako, au Google Fonts';

  @override
  String get customFontError => 'Imeshindwa kupakia faili hiyo ya fonti';

  @override
  String get googleFontError => 'Imeshindwa kupakua fonti hiyo';

  @override
  String get yourFonts => 'Fonti zako';

  @override
  String get addFontFile => 'Ongeza faili ya fonti…';

  @override
  String get browseGoogleFonts => 'Vinjari Google Fonts…';

  @override
  String get searchGoogleFonts => 'Tafuta Google Fonts';

  @override
  String get defaultFont => 'Chaguomsingi';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'Rangi zinazobadilika kutoka kwenye mfumo';

  @override
  String get jsonTheme => 'Faili ya mandhari maalum';

  @override
  String get jsonThemeDesc =>
      'Rangi za moja kwa moja kutoka ~/.config/dartotsu/theme.json (skripti yako, au marekebisho yako mwenyewe)';

  @override
  String get themeMode => 'Hali ya mandhari';

  @override
  String get mode => 'Hali';

  @override
  String get trackingService => 'Huduma ya ufuatiliaji';

  @override
  String get signOut => 'Toka';

  @override
  String get signIn => 'Ingia';

  @override
  String get notSignedIn => 'Hujaingia';

  @override
  String signOutOf(String service) {
    return 'Kutoka kwenye $service?';
  }

  @override
  String get checkForUpdates => 'Angalia masasisho';

  @override
  String get checkForUpdatesDesc => 'Arifu kuhusu toleo jipya la GitHub';

  @override
  String get updateChannel => 'Njia ya masasisho';

  @override
  String get channel => 'Njia';

  @override
  String get stable => 'Imara';

  @override
  String get preRelease => 'Toleo la awali';

  @override
  String get alpha => 'Alfa';

  @override
  String get checkNow => 'Angalia sasa';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'Chaguomsingi';

  @override
  String currentlyUsing(String value) {
    return 'Kwa sasa: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'Chaguomsingi (Cloudflare)';

  @override
  String get proxy => 'Proksi';

  @override
  String get proxyProtocol => 'Aina';

  @override
  String get proxyHost => 'Seva';

  @override
  String get proxyPort => 'Mlango';

  @override
  String get proxyUsername => 'Jina la mtumiaji';

  @override
  String get proxyPassword => 'Nenosiri';

  @override
  String get optional => 'Hiari';

  @override
  String get clearCookies => 'Futa vidakuzi';

  @override
  String get clearCookiesDesc => 'Ondoa kila kidakuzi kilichohifadhiwa';

  @override
  String notImplementedArea(String area) {
    return '$area — inakuja hivi karibuni';
  }

  @override
  String notImplementedService(String service) {
    return '$service haitumii hii bado.';
  }

  @override
  String get couldNotLoadResults => 'Imeshindwa kupakia matokeo';

  @override
  String get updateCheckFailed => 'Imeshindwa kuangalia masasisho';

  @override
  String get highRefreshRate => 'Kasi ya juu ya skrini';

  @override
  String get highRefreshRateDesc =>
      'Tumia kasi ya juu zaidi ya kuonyesha upya ambayo skrini yako inaauni';

  @override
  String get imageSave => 'Hifadhi picha';

  @override
  String imageSavedTo(String path) {
    return 'Imehifadhiwa kwenye $path';
  }

  @override
  String get imageActionFailed => 'Imeshindwa kupakua picha';

  @override
  String get imageTitleCover => 'Jalada';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'Bango';

  @override
  String get imageTitleAvatar => 'Picha ya wasifu';

  @override
  String get verifyTls => 'Thibitisha vyeti';

  @override
  String get verifyTlsDesc =>
      'Kataa seva zenye vyeti batili vya HTTPS. Zima tu kwa chanzo kinachotumia cheti kilichojisaini chenyewe';

  @override
  String get clearCookiesConfirm =>
      'Kuondoa vidakuzi vyote vilivyohifadhiwa? Hii inaweza kukutoa kwenye baadhi ya vyanzo.';

  @override
  String get version => 'Toleo';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'Msimbo, matatizo na matoleo';

  @override
  String get discordDesc => 'Jumuiya na msaada';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'Unga mkono maendeleo';

  @override
  String get contributors => 'Wachangiaji';

  @override
  String get contributorsDesc => 'Watu walioijenga Dartotsu';

  @override
  String get contributorsLoadFailed => 'Imeshindwa kupakia wachangiaji';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Miradi iliyojengwa juu ya Dartotsu';

  @override
  String get forksEmpty => 'Hakuna foki zilizopatikana';

  @override
  String get sectionColors => 'Rangi';

  @override
  String get sectionDisplay => 'Onyesho';

  @override
  String get sectionStyle => 'Mtindo';

  @override
  String get sectionCommunity => 'Jumuiya';

  @override
  String get sectionAppInfo => 'Taarifa za programu';

  @override
  String get sectionRequests => 'Maombi';

  @override
  String get sectionDnsProxy => 'DNS na proksi';

  @override
  String get onboardingBack => 'Rudi';

  @override
  String get onboardingNext => 'Mbele';

  @override
  String get onboardingSkip => 'Ruka';

  @override
  String get onboardingPaletteTitle => 'Ifanye yako';

  @override
  String get onboardingPaletteBody =>
      'Chagua rangi. Kila rangi ya msisitizo, kuanzia kadi hadi kicheza, itaifuata.';

  @override
  String get themeModeAuto => 'Otomatiki';

  @override
  String get themeModeLight => 'Mwanga';

  @override
  String get themeModeDark => 'Giza';

  @override
  String get onboardingSyncTitle => 'Sawazisha maktaba yako';

  @override
  String get onboardingSyncBody =>
      'Ingia na AniList ili kuleta orodha, maendeleo na alama zako. Au ruka na uvinjari kama mgeni.';

  @override
  String get onboardingOpenLinks =>
      'Fungua viungo vya AniList na hazina kwenye Dartotsu';

  @override
  String get onboardingPermsTitle => 'Ruhusa';

  @override
  String get onboardingPermsBody =>
      'Ruhusu hizi sasa ili upakuaji, masasisho na arifa vifanye kazi bila kukatizwa. Unaweza kuzibadilisha baadaye kwenye mipangilio ya mfumo.';

  @override
  String get permNotifications => 'Arifa';

  @override
  String get permNotificationsDesc =>
      'Maendeleo ya upakuaji, vipindi vipya na majibu';

  @override
  String get permStorage => 'Ufikiaji wa faili zote';

  @override
  String get permStorageDesc =>
      'Hifadhi upakuaji kwenye folda ya umma ya Dartotsu';

  @override
  String get permInstall => 'Sakinisha masasisho';

  @override
  String get permInstallDesc =>
      'Ruhusu Dartotsu isakinishe masasisho yake yenyewe';

  @override
  String get permBattery => 'Betri bila vikwazo';

  @override
  String get permBatteryDesc => 'Weka upakuaji mrefu ukiendelea chinichini';

  @override
  String get permGrant => 'Ruhusu';

  @override
  String get linkOpenInApp => 'Fungua viungo kwenye Dartotsu';

  @override
  String get linkOpenInAppDesc =>
      'Ruhusu viungo vya AniList na hazina vifungue programu';

  @override
  String get reviewsTitle => 'Maoni';

  @override
  String get reviewsEmpty => 'Bado hakuna maoni';

  @override
  String get reviewsFailed => 'Imeshindwa kupakia maoni';

  @override
  String get reviewHelpfulQuestion => 'Maoni haya yalikusaidia?';

  @override
  String get reviewVoteFailed => 'Imeshindwa kuhifadhi kura yako';

  @override
  String reviewHelpful(int n, int total) {
    return '$n kati ya $total waliona ni muhimu';
  }

  @override
  String get calendarTitle => 'Ratiba ya matangazo';

  @override
  String get calendarToday => 'Leo';

  @override
  String get calendarEmpty => 'Hakuna kinachoonyeshwa siku hii';

  @override
  String get calendarFailed => 'Imeshindwa kupakia ratiba';

  @override
  String calendarChapter(int n) {
    return 'Chapter $n';
  }

  @override
  String get calendarExpected => 'Expected';

  @override
  String get castReceiverFailed => 'The Chromecast did not start its player';

  @override
  String get castPlaybackFailed => 'The device could not play this stream';

  @override
  String get shortcutNothingToContinue => 'Nothing to continue yet';

  @override
  String shortcutNoCalendar(String service) {
    return '$service has no calendar';
  }

  @override
  String calendarEpisode(int n) {
    return 'Kipindi $n';
  }

  @override
  String get shareAnalytics => 'Shiriki data ya matumizi bila kujulikana';

  @override
  String get shareAnalyticsDesc =>
      'Idadi ya watumiaji na ripoti za hitilafu bila kujulikana. Hakuna akaunti wala data binafsi';

  @override
  String get linkOpenAnilist => 'Fungua viungo vya AniList kwenye Dartotsu';

  @override
  String get linkOpenAnilistDesc =>
      'Washa ushughulikiaji wa viungo ili viungo vya anilist.co vifungue programu';

  @override
  String get linkSettingsFailed => 'Imeshindwa kufungua mipangilio ya mfumo';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'Onyesha unachofanya kwenye wasifu wako wa Discord. Inahitaji tokeni yako ya Discord.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'Onyesha unachofanya kwenye wasifu wako wa Discord. Inahitaji programu ya Discord ya kompyuta iwe inafanya kazi.';

  @override
  String get discordBrowsing => 'Onyesha shughuli za kuvinjari';

  @override
  String get discordBrowsingDesc =>
      'Onyesha pia kichupo, ukurasa au wasifu unaoutazama, si tu unachotazama au kusoma.';

  @override
  String get discordLookHeader => 'Mwonekano wa presence';

  @override
  String get discordActivityType => 'Aina ya shughuli';

  @override
  String get discordActivityTypeDesc =>
      'Jinsi Discord inavyoandika: \"Watching …\" au \"Playing …\". Otomatiki hutumia Watching kwa anime na Playing kwa vingine vyote.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'Onyesha majalada';

  @override
  String get discordCoversDesc =>
      'Picha ya jalada na aikoni ya Dartotsu kwenye kadi.';

  @override
  String get discordTimer => 'Onyesha kipima muda';

  @override
  String get discordTimerDesc => 'Muda uliopita au unaobaki chini ya kichwa.';

  @override
  String get discordButtons => 'Onyesha vitufe';

  @override
  String get discordButtonsDesc =>
      'Vitufe vya \"View anime / manga\" na \"Open Dartotsu\".';

  @override
  String get discordHideTitles => 'Ficha vichwa';

  @override
  String get discordHideTitlesDesc =>
      'Badilisha majina ya anime na manga (na jalada na kiungo chake) kuwa \"Something private\".';

  @override
  String get discordConnectionHeader => 'Muunganisho';

  @override
  String get listSearchHint => 'Tafuta kwenye orodha hii';

  @override
  String get listSort => 'Panga';

  @override
  String get listFilter => 'Chuja';

  @override
  String get listRandom => 'Kichwa cha bahati nasibu';

  @override
  String get listReverse => 'Geuza mpangilio';

  @override
  String get listSortDefault => 'Mpangilio wa orodha';

  @override
  String get listSortScore => 'Alama yako';

  @override
  String get listSortTitle => 'Kichwa';

  @override
  String get listSortUpdated => 'Ilisasishwa mwisho';

  @override
  String get listSortProgress => 'Maendeleo';

  @override
  String get listSortReleased => 'Tarehe ya kutolewa';

  @override
  String get listSortAverage => 'Alama ya wastani';

  @override
  String get listFilterFormat => 'Umbizo';

  @override
  String get listFilterStatus => 'Hali';

  @override
  String get listFilterGenres => 'Aina';

  @override
  String get listFilterClear => 'Futa vichujio';

  @override
  String get listNoMatches => 'Hakuna kinacholingana kwenye orodha hii';

  @override
  String get discordLogin => 'Ingia kwenye Discord';

  @override
  String get discordToken => 'Tokeni ya Discord';

  @override
  String get discordTokenSaved =>
      'Imehifadhiwa. Gusa kubadilisha, bonyeza kwa muda mrefu kuondoa.';

  @override
  String get discordTokenNotSet => 'Haijawekwa. Gusa kuongeza.';

  @override
  String get discordTokenSavedSnack => 'Tokeni ya Discord imehifadhiwa';

  @override
  String get discordTokenRemovedSnack => 'Tokeni ya Discord imeondolewa';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'Imewashwa · gusa kubadilisha mwonekano';

  @override
  String get discordRichPresenceRowOff =>
      'Onyesha unachofanya kwenye wasifu wako wa Discord';

  @override
  String get loginCancelled => 'Kuingia kumeghairiwa';

  @override
  String get invalidToken => 'Tokeni si sahihi';

  @override
  String loginFailed(String error) {
    return 'Kuingia kumeshindwa: $error';
  }

  @override
  String get malLoginFailed => 'Kuingia kwenye MyAnimeList kumeshindwa';

  @override
  String get kitsuLoginFailed =>
      'Kuingia kwenye Kitsu kumeshindwa. Angalia barua pepe na nenosiri lako.';

  @override
  String get kitsuLoginTitle => 'Ingia kwenye Kitsu';

  @override
  String get emailOrUsername => 'Barua pepe au jina la mtumiaji';

  @override
  String get password => 'Nenosiri';

  @override
  String get kitsuProfile => 'Wasifu wa Kitsu';

  @override
  String get mangaBakaLoginFailed => 'Kuingia kwenye MangaBaka kumeshindwa';

  @override
  String get mangaBakaProfile => 'Wasifu wa MangaBaka';

  @override
  String get refreshFromMangaBaka => 'Onyesha upya kutoka MangaBaka';

  @override
  String get mangaUpdatesLoginTitle => 'Sign in to MangaUpdates';

  @override
  String get mangaUpdatesProfile => 'MangaUpdates profile';

  @override
  String get mangaUpdatesAnimeStart => 'Anime adaptation starts';

  @override
  String get mangaUpdatesAnimeEnd => 'Anime adaptation ends';

  @override
  String get refreshFromMangaUpdates => 'Refresh from MangaUpdates';

  @override
  String get usernameOnly => 'Username';

  @override
  String get releases => 'Releases';

  @override
  String get artistsLabel => 'Wasanii';

  @override
  String get authorsLabel => 'Waandishi';

  @override
  String get publishersLabel => 'Wachapishaji';

  @override
  String get licensedLabel => 'Yenye leseni';

  @override
  String get contentRatingLabel => 'Ukadiriaji wa maudhui';

  @override
  String get yesLabel => 'Ndiyo';

  @override
  String get noLabel => 'Hapana';

  @override
  String get ratingSteps => 'Hatua za ukadiriaji';

  @override
  String get hideNsfw => 'Ficha NSFW';

  @override
  String get hideNsfwDesc =>
      'Weka vichwa vya watu wazima nje ya milisho na utafutaji, na orodhesha vipengee vyako vya watu wazima chini ya Media Iliyofichwa.';

  @override
  String get kitsuAccountOptions => 'Chaguo za akaunti ya Kitsu';

  @override
  String get mangaBakaAccountOptions => 'Chaguo za akaunti ya MangaBaka';

  @override
  String get couldNotUpdateKitsuSettings =>
      'Imeshindwa kusasisha mipangilio yako ya Kitsu';

  @override
  String get titleCanonical => 'Rasmi';

  @override
  String get titleRomanized => 'Kirumi';

  @override
  String get titleLocalized => 'Ya kienyeji';

  @override
  String get ratingSystem => 'Mfumo wa ukadiriaji';

  @override
  String get ratingSimple => 'Rahisi (nyuso 3)';

  @override
  String get ratingRegular => 'Kawaida (nyota 5)';

  @override
  String get ratingAdvanced => 'Kina (pointi 10)';

  @override
  String get contentFilter => 'Kichujio cha maudhui';

  @override
  String get contentSfw => 'Salama kwa kazini tu';

  @override
  String get contentSometimes => 'Maudhui ya watu wazima kwenye utafutaji';

  @override
  String get contentEverywhere => 'Maudhui ya watu wazima kila mahali';

  @override
  String get shareToGlobal => 'Shiriki kwenye mlisho wa dunia';

  @override
  String get shareToGlobalDesc =>
      'Acha shughuli zako zionekane kwenye mlisho wa dunia wa Kitsu.';

  @override
  String get memberSince => 'Mwanachama tangu';

  @override
  String get location => 'Mahali';

  @override
  String get accountType => 'Aina ya akaunti';

  @override
  String get accountSupporter => 'Mfadhili';

  @override
  String get accountFree => 'Bila malipo';

  @override
  String get accountDetails => 'Maelezo ya akaunti';

  @override
  String get refreshFromKitsu => 'Onyesha upya kutoka Kitsu';

  @override
  String get simklReadOnly => 'Simkl imepewa ufikiaji wa kusoma tu';

  @override
  String get incognitoEditsBlocked => 'Fiche: mabadiliko ya orodha yamezuiwa';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'Fiche: maendeleo hayajahifadhiwa';

  @override
  String progressSet(int progress) {
    return 'Maendeleo yamewekwa kuwa $progress';
  }

  @override
  String removedFromList(String title) {
    return '$title imeondolewa kwenye orodha yako';
  }

  @override
  String get following => 'Unafuata';

  @override
  String get homeSections => 'Sehemu za Mwanzo';

  @override
  String get homeSectionsHint =>
      'Buruta kupanga upya. Sehemu zilizofichwa hazipakuliwi kamwe.';

  @override
  String get customListDeleteFailed => 'Imeshindwa kufuta orodha maalum';

  @override
  String get customListsSaveFailed => 'Imeshindwa kuhifadhi orodha maalum';

  @override
  String get customListsSaved => 'Orodha maalum zimehifadhiwa';

  @override
  String get listName => 'Jina la orodha';

  @override
  String get addList => 'Ongeza orodha';

  @override
  String voiceActorsIn(String name) {
    return 'Waigizaji sauti · $name';
  }

  @override
  String get animeAppearances => 'Kuonekana kwenye anime';

  @override
  String get mangaAppearances => 'Kuonekana kwenye manga';

  @override
  String get voicedCharacters => 'Wahusika waliotolewa sauti';

  @override
  String get animeCredits => 'Kazi za anime';

  @override
  String get mangaCredits => 'Kazi za manga';

  @override
  String get mainProductions => 'Kazi kuu';

  @override
  String get otherWorks => 'Kazi nyingine';

  @override
  String get prequelSequel => 'Awali na Mfululizo';

  @override
  String get previousSeason => 'Msimu uliopita';

  @override
  String get thisSeason => 'Msimu huu';

  @override
  String get nextSeason => 'Msimu ujao';

  @override
  String get voiceRoles => 'Majukumu ya sauti';

  @override
  String get staffPositions => 'Nafasi za wafanyakazi';

  @override
  String get mangaWorks => 'Kazi za manga';

  @override
  String get malProfile => 'Wasifu wa MyAnimeList';

  @override
  String get refreshFromMal => 'Onyesha upya kutoka MyAnimeList';

  @override
  String get repullProfileCounts => 'Vuta upya wasifu na idadi zako';

  @override
  String get refreshed => 'Imeonyeshwa upya';

  @override
  String get simklProfile => 'Wasifu wa Simkl';

  @override
  String get refreshFromSimkl => 'Onyesha upya kutoka Simkl';

  @override
  String get repullProfileLibrary => 'Vuta upya wasifu na maktaba yako';

  @override
  String get simklSignInToSearch => 'Ingia kwenye Simkl ili kutafuta';

  @override
  String get dropRate => 'Kiwango cha kuacha';

  @override
  String get simklAttribution =>
      'Data na picha zimetolewa na Simkl. Tazama kwenye Simkl';

  @override
  String get onHold => 'Imesimamishwa';

  @override
  String get scoredBy => 'Imepigiwa alama na';

  @override
  String get planToWatch => 'Napanga kutazama';

  @override
  String get planToRead => 'Napanga kusoma';

  @override
  String get timesRewatched => 'Mara za kutazama tena';

  @override
  String get timesReread => 'Mara za kusoma tena';

  @override
  String get comments => 'Maoni';

  @override
  String get moviesAndSeries => 'Filamu na Mfululizo';

  @override
  String get trackingOnly => 'Ufuatiliaji tu';

  @override
  String get signedIn => 'Umeingia';

  @override
  String get searchLanguage => 'Lugha ya utafutaji';

  @override
  String get savedToList => 'Imehifadhiwa kwenye orodha yako';

  @override
  String get removedFromYourList => 'Imeondolewa kwenye orodha yako';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get synopsis => 'Muhtasari';

  @override
  String get details => 'Maelezo';

  @override
  String get addToList => 'Ongeza kwenye orodha';

  @override
  String get trailer => 'Trela';

  @override
  String get titleCopied => 'Kichwa kimenakiliwa';

  @override
  String get linkCopied => 'Kiungo kimenakiliwa';

  @override
  String get watchTrailer => 'Tazama trela';

  @override
  String get copyTitle => 'Nakili kichwa';

  @override
  String get copyLink => 'Nakili kiungo';

  @override
  String get openInBrowser => 'Fungua kwenye kivinjari';

  @override
  String viewOnSource(String source) {
    return 'Tazama kwenye $source';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'Kipindi $ep kitaonyeshwa baada ya $time';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'Kipindi kijacho baada ya $time';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'Sura ya $chapter inatarajiwa baada ya takriban $time';
  }

  @override
  String get logPathCopied =>
      'Njia ya faili ya kumbukumbu imenakiliwa kwenye ubao wa kunakili';

  @override
  String get animeSource => 'Chanzo cha anime';

  @override
  String get mangaSource => 'Chanzo cha manga';

  @override
  String get popular => 'Maarufu';

  @override
  String get latest => 'Mpya zaidi';

  @override
  String get saved => 'Zilizohifadhiwa';

  @override
  String get nothingMatched => 'Hakuna kilichopatikana';

  @override
  String get nothingSavedFromSource =>
      'Bado hakuna kilichohifadhiwa kutoka chanzo hiki';

  @override
  String get sourceReturnedNothing => 'Chanzo hiki hakikurudisha chochote';

  @override
  String get checkConnectionOrSource =>
      'Angalia muunganisho wako au jaribu chanzo kingine.';

  @override
  String get tryDifferentSearch => 'Jaribu neno tofauti la utafutaji.';

  @override
  String get savedTitlesAppearHere =>
      'Vichwa unavyoongeza kwenye orodha yako vitaonekana hapa.';

  @override
  String get tryOtherFeed => 'Jaribu mlisho mwingine au tafuta badala yake.';

  @override
  String searchSource(String source) {
    return 'Tafuta $source';
  }

  @override
  String get animeExtensions => 'Viendelezi vya anime';

  @override
  String get mangaExtensions => 'Viendelezi vya manga';

  @override
  String get nothingHereYet => 'Bado hakuna kitu hapa';

  @override
  String get savedOnDeviceUntilLogin =>
      'Kila kitu hapa chini kimehifadhiwa kwenye kifaa hiki hadi utakapofanya hivyo.';

  @override
  String get yourProfile => 'Wasifu wako';

  @override
  String get activity => 'Shughuli';

  @override
  String get extensions => 'Viendelezi';

  @override
  String get logOut => 'Toka';

  @override
  String get logIn => 'Ingia';

  @override
  String get logOutConfirm => 'Una uhakika unataka kutoka?';

  @override
  String get incognitoMode => 'Hali fiche';

  @override
  String get alsoBlockListEdits => 'Zuia pia mabadiliko ya orodha';

  @override
  String get offlineMode => 'Hali ya nje ya mtandao';

  @override
  String get switchService => 'Badilisha huduma';

  @override
  String logOutOf(String name) {
    return 'Toka kwenye $name';
  }

  @override
  String get loggedIn => 'Umeingia';

  @override
  String get notifications => 'Arifa';

  @override
  String get nothingNew => 'Hakuna kipya';

  @override
  String get thisWeek => 'Wiki hii';

  @override
  String get listOnly => 'Orodha tu';

  @override
  String get filter => 'Chuja';

  @override
  String get searchResults => 'Matokeo ya utafutaji';

  @override
  String get recentSearches => 'Utafutaji wa hivi karibuni';

  @override
  String get searchOrSetFilter => 'Tafuta au weka kichujio';

  @override
  String get filters => 'Vichujio';

  @override
  String get showLess => 'Onyesha kidogo';

  @override
  String get showAll => 'Onyesha vyote';

  @override
  String get apply => 'Tumia';

  @override
  String get preview => 'Hakiki';

  @override
  String get preset => 'Mpangilio awali';

  @override
  String get cardNormal => 'Kawaida';

  @override
  String get cardOnCard => 'Juu ya kadi';

  @override
  String get cardInCard => 'Ndani ya kadi';

  @override
  String get size => 'Ukubwa';

  @override
  String get cardWidth => 'Upana wa kadi';

  @override
  String get compact => 'Fupi';

  @override
  String get coverAndTitleOnly => 'Jalada na kichwa tu';

  @override
  String get titleLines => 'Mistari ya kichwa';

  @override
  String get shape => 'Umbo';

  @override
  String get posterShape => 'Umbo la bango';

  @override
  String get cornerRadius => 'Mviringo wa pembe';

  @override
  String get off => 'Zima';

  @override
  String get topLeft => 'Juu kushoto';

  @override
  String get topRight => 'Juu kulia';

  @override
  String get bottomLeft => 'Chini kushoto';

  @override
  String get bottomRight => 'Chini kulia';

  @override
  String get overlays => 'Viwekeleo';

  @override
  String get progressCount => 'Maendeleo / idadi';

  @override
  String get pill => 'Kidonge';

  @override
  String get bar => 'Mstari';

  @override
  String get outside => 'Nje';

  @override
  String get scoreBadge => 'Beji ya alama';

  @override
  String get airingDot => 'Nukta ya matangazo';

  @override
  String get updateAvailable => 'Sasisho linapatikana';

  @override
  String get notInstalled => 'Haijasakinishwa';

  @override
  String get done => 'Imekamilika';

  @override
  String get searchOrEnterUrl => 'Tafuta au weka URL';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String get share => 'Shiriki';

  @override
  String get characters => 'Wahusika';

  @override
  String get staff => 'Wafanyakazi';

  @override
  String get readMore => 'Soma zaidi';

  @override
  String get couldNotLoadList => 'Imeshindwa kupakia orodha';

  @override
  String get logInToFavourite => 'Ingia ili kuongeza vipendwa';

  @override
  String get alsoKnownAs => 'Anajulikana pia kama';

  @override
  String get hideSpoilerNames => 'Ficha majina ya waharibifu';

  @override
  String get showSpoilerNames => 'Onyesha majina ya waharibifu';

  @override
  String get favourited => 'Imependwa';

  @override
  String get favourite => 'Pendwa';

  @override
  String get couldNotOpenTitle => 'Imeshindwa kufungua kichwa hiki';

  @override
  String get nobodyHereYet => 'Hakuna mtu hapa bado';

  @override
  String get noMatches => 'Hakuna zinazolingana';

  @override
  String get gridView => 'Mwonekano wa gridi';

  @override
  String get fullWidth => 'Upana kamili';

  @override
  String get userNotFound => 'Mtumiaji hajapatikana';

  @override
  String get couldNotUpdateFollow => 'Imeshindwa kusasisha ufuatiliaji';

  @override
  String followedUser(String name) {
    return 'Umemfuata $name';
  }

  @override
  String unfollowedUser(String name) {
    return 'Umeacha kumfuata $name';
  }

  @override
  String get messages => 'Ujumbe';

  @override
  String get logInToSeeMessages => 'Ingia ili uone ujumbe wako';

  @override
  String get editActivity => 'Hariri shughuli';

  @override
  String get newActivity => 'Shughuli mpya';

  @override
  String get editMessage => 'Hariri ujumbe';

  @override
  String get writeMessage => 'Andika ujumbe';

  @override
  String get editReply => 'Hariri jibu';

  @override
  String get posted => 'Imechapishwa';

  @override
  String get couldNotPost => 'Imeshindwa kuchapisha';

  @override
  String get nothingToPreview => 'Hakuna cha kuhakiki';

  @override
  String get writeSomethingHint =>
      'Andika kitu… markdown ya AniList inafanya kazi hapa';

  @override
  String get privateMessage => 'Ujumbe wa faragha';

  @override
  String get post => 'Chapisha';

  @override
  String get nothingHere => 'Hakuna kitu hapa';

  @override
  String get noAnimeProgress => 'Hakuna maendeleo ya anime';

  @override
  String get noMangaProgress => 'Hakuna maendeleo ya manga';

  @override
  String get noMessages => 'Hakuna ujumbe';

  @override
  String get writeMessageHint => 'Andika ujumbe…';

  @override
  String get shareSomethingHint => 'Shiriki kitu…';

  @override
  String get all => 'Zote';

  @override
  String get anime => 'Anime';

  @override
  String get manga => 'Manga';

  @override
  String get count => 'Idadi';

  @override
  String get hoursWatched => 'Saa zilizotazamwa';

  @override
  String get chaptersRead => 'Sura zilizosomwa';

  @override
  String get meanScore => 'Alama ya wastani';

  @override
  String get noStatsYet => 'Bado hakuna takwimu';

  @override
  String get totalEntries => 'Jumla ya vipengee';

  @override
  String get episodesWatched => 'Vipindi vilivyotazamwa';

  @override
  String get daysWatched => 'Siku zilizotazamwa';

  @override
  String get volumesRead => 'Juzuu zilizosomwa';

  @override
  String get standardDeviation => 'Mkengeuko sanifu';

  @override
  String get showMore => 'Onyesha zaidi';

  @override
  String get followsYou => 'Anakufuata';

  @override
  String get nobodyYet => 'Hakuna bado';

  @override
  String get logInToLike => 'Ingia ili kupenda';

  @override
  String get failedToLikeActivity => 'Imeshindwa kupenda shughuli';

  @override
  String get deleteActivityConfirm => 'Kufuta shughuli?';

  @override
  String get deletedActivity => 'Shughuli imefutwa';

  @override
  String get failedToDeleteActivity => 'Imeshindwa kufuta shughuli';

  @override
  String get subscribed => 'Umejisajili';

  @override
  String get unsubscribed => 'Umejiondoa';

  @override
  String get failedToUpdateSubscription => 'Imeshindwa kusasisha usajili';

  @override
  String get edit => 'Hariri';

  @override
  String get delete => 'Futa';

  @override
  String get likedBy => 'Wamependa';

  @override
  String get follow => 'Fuata';

  @override
  String get nameCopied => 'Jina limenakiliwa';

  @override
  String get followsEachOther => 'Mnafuatana';

  @override
  String get unfollow => 'Acha kufuata';

  @override
  String get userIdCopied => 'Kitambulisho cha mtumiaji kimenakiliwa';

  @override
  String get shareProfile => 'Shiriki wasifu';

  @override
  String get copyUserId => 'Nakili kitambulisho cha mtumiaji';

  @override
  String get failedToDelete => 'Imeshindwa kufuta';

  @override
  String get failedToLike => 'Imeshindwa kupenda';

  @override
  String get replies => 'Majibu';

  @override
  String get reply => 'Jibu';

  @override
  String get noRepliesYet => 'Bado hakuna majibu';

  @override
  String get favouriteAnime => 'Anime pendwa';

  @override
  String get favouriteManga => 'Manga pendwa';

  @override
  String get favouriteCharacters => 'Wahusika pendwa';

  @override
  String get favouriteStaff => 'Wafanyakazi pendwa';

  @override
  String get favouriteStudios => 'Studio pendwa';

  @override
  String get noFavouritesYet => 'Bado hakuna vipendwa';

  @override
  String get yourStory => 'Hadithi yako';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakili';

  @override
  String get justNow => 'Sasa hivi';

  @override
  String get openImage => 'Fungua picha';

  @override
  String get hideSpoiler => 'Ficha mharibifu';

  @override
  String get showSpoiler => 'Onyesha mharibifu';

  @override
  String get status => 'Hali';

  @override
  String get score => 'Alama';

  @override
  String get started => 'Ilianza';

  @override
  String get completed => 'Imekamilika';

  @override
  String get private => 'Faragha';

  @override
  String get hideFromStatusLists => 'Ficha kwenye orodha za hali';

  @override
  String get totalRepeats => 'Jumla ya marudio';

  @override
  String get other => 'Nyingine';

  @override
  String get customLists => 'Orodha maalum';

  @override
  String get activeDays => 'Siku amilifu';

  @override
  String get longestStreak => 'Mfululizo mrefu zaidi';

  @override
  String get currentStreak => 'Mfululizo wa sasa';

  @override
  String get tapOrHoverDay => 'Gusa au elea juu ya siku';

  @override
  String get less => 'Pungufu';

  @override
  String get more => 'Zaidi';

  @override
  String epIn(int ep, String time) {
    return 'Kipindi $ep baada ya $time';
  }

  @override
  String get sectionLoading => 'Inapakia';

  @override
  String get querySize => 'Ukubwa wa hoja';

  @override
  String get querySizeDesc =>
      'Hoja moja kubwa hupakia kila safu (na wasifu mzima) kwa ombi moja. Hoja zilizogawanywa hutuma ombi dogo kwa kila safu au sehemu ya wasifu: kila moja ni ya haraka na sehemu huonekana zinapofika.';

  @override
  String get oneBig => 'Moja kubwa';

  @override
  String get split => 'Zilizogawanywa';

  @override
  String get sectionSocial => 'Kijamii';

  @override
  String get systemNotifications => 'Arifa za mfumo';

  @override
  String get feedLayout => 'Mpangilio wa mlisho';

  @override
  String sectionsShown(int shown, int total) {
    return '$shown kati ya $total zinaonyeshwa — gusa kuchagua na kupanga upya';
  }

  @override
  String labelSections(String label) {
    return 'Sehemu za $label';
  }

  @override
  String get accountOptions => 'Chaguo za akaunti';

  @override
  String get anilistAccountOptions => 'Chaguo za akaunti ya AniList';

  @override
  String get sectionPrivacy => 'Faragha';

  @override
  String get hidePrivateEntries => 'Ficha vipengee vya faragha';

  @override
  String get hidePrivateEntriesDesc =>
      'Weka vipengee vilivyowekwa faragha kwenye AniList nje ya mlisho';

  @override
  String get anilistExcludeList => 'Ficha orodha yako';

  @override
  String get anilistExcludeListDesc =>
      'Usionyeshe kwenye kurasa za anime na manga vitu vilivyo tayari kwenye AniList yako';

  @override
  String get anilistProfile => 'Wasifu wa AniList';

  @override
  String get refreshFromAnilist => 'Onyesha upya kutoka AniList';

  @override
  String get couldNotUpdateAnilistSettings =>
      'Imeshindwa kusasisha mipangilio ya AniList';

  @override
  String get sectionNames => 'Majina';

  @override
  String get titleLanguage => 'Lugha ya vichwa';

  @override
  String get titleLanguageDesc =>
      'Jinsi vichwa vinavyoandikwa kila mahali, mfano Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'Majina ya wafanyakazi na wahusika';

  @override
  String get sectionLists => 'Orodha';

  @override
  String get scoreFormat => 'Umbizo la alama';

  @override
  String get sortListsBy => 'Panga orodha kwa';

  @override
  String labelCustomLists(String label) {
    return 'Orodha maalum za $label';
  }

  @override
  String customListsCount(int count) {
    return 'Orodha $count — gusa kuongeza au kuondoa';
  }

  @override
  String get mergeActivities => 'Unganisha shughuli';

  @override
  String minutesCount(int count) {
    return 'Dakika $count';
  }

  @override
  String get timezone => 'Saa za eneo';

  @override
  String get notSet => 'Haijawekwa';

  @override
  String get airingNotifications => 'Arifa za matangazo';

  @override
  String get airingNotificationsDesc =>
      'Pata arifa kipindi cha kipindi unachofuata kikionyeshwa';

  @override
  String get displayAdultContent => 'Onyesha maudhui ya watu wazima';

  @override
  String get displayAdultContentDesc =>
      'Jumuisha vichwa vya 18+ kwenye kuvinjari, utafutaji na milisho';

  @override
  String get restrictMessages => 'Zuia ujumbe kwa unaowafuata tu';

  @override
  String get restrictMessagesDesc =>
      'Watu unaowafuata tu ndio wanaweza kukutumia ujumbe';

  @override
  String get sectionServices => 'Huduma';

  @override
  String get novel => 'Riwaya';

  @override
  String labelService(String label) {
    return 'Huduma ya $label';
  }

  @override
  String nameSettings(String name) {
    return 'Mipangilio ya $name';
  }

  @override
  String extensionBridgeOptions(String name) {
    return 'Chaguo kutoka daraja la viendelezi la $name';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name imeshindwa kuanza: $error';
  }

  @override
  String get importLists => 'Ingiza orodha';

  @override
  String get importListsDesc =>
      'Kutoka nakala za Aniyomi, Mihon / Tachiyomi au Kotatsu';

  @override
  String get exportLists => 'Hamisha orodha';

  @override
  String get exportListsDesc => 'Kwenda nakala ya Aniyomi, Mihon au Kotatsu';

  @override
  String get sectionBrowse => 'Vinjari';

  @override
  String get readingTab => 'Kichupo cha kusoma';

  @override
  String get readingTabDesc =>
      'Ni viendelezi gani kichupo cha tatu kinaonyesha';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'Mlisho chaguomsingi';

  @override
  String get defaultFeedDesc => 'Orodha gani chanzo kinafunguka nayo';

  @override
  String noServiceSupports(String type) {
    return 'Hakuna huduma inayotumia $type';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · vyanzo $loaded kati ya $installed vinapakia';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'Hakuna huduma ya viendelezi inayotumia $type hapa.';
  }

  @override
  String get loadDataFrom => 'Pakia data kutoka';

  @override
  String noInstalledSourcesYet(String type) {
    return 'Bado hakuna vyanzo vya $type vilivyosakinishwa.';
  }

  @override
  String extensionNotInstalled(String name) {
    return 'Kiendelezi cha $name hakijasakinishwa';
  }

  @override
  String get thisSource => 'chanzo hiki';

  @override
  String failedToAddRepository(String error) {
    return 'Imeshindwa kuongeza hazina: $error';
  }

  @override
  String installedType(String type) {
    return '$type zilizosakinishwa';
  }

  @override
  String availableType(String type) {
    return '$type zinazopatikana';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'Hakuna viendelezi vya $type vilivyosakinishwa';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'Hakuna viendelezi vya $type vinavyopatikana';
  }

  @override
  String get nothingToShowYet => 'Bado hakuna cha kuonyesha';

  @override
  String get addTitlesHint =>
      'Ongeza vichwa kwenye orodha yako na vitaonekana hapa.';

  @override
  String get couldntLoad => 'Imeshindwa kupakia';

  @override
  String get progressStyleHint =>
      'Kidonge na mstari huwekwa juu ya bango; nje huonyesha idadi ile ile kama maandishi ya kawaida badala yake — chagua moja.';

  @override
  String get nixManagedUpdate =>
      'Toleo hili linasimamiwa na Nix — endesha \"nix flake update\" kwenye flake yako na ujenge upya badala ya kusasisha kutoka hapa';

  @override
  String autoUpdateFailed(String error) {
    return 'Kusasisha kiotomatiki kumeshindwa ($error) — inafungua ukurasa wa kupakua badala yake';
  }

  @override
  String get unknownPreference => 'Mapendeleo yasiyojulikana';

  @override
  String unsupportedPreferenceType(String type) {
    return 'Aina ya mapendeleo isiyoungwa mkono $type';
  }

  @override
  String get notYetReleased => 'Haijatoka bado';

  @override
  String get notStarted => 'Haijaanza';

  @override
  String get country => 'Nchi';

  @override
  String get sort => 'Panga';

  @override
  String get chooseBackupDialog => 'Chagua nakala ya Aniyomi, Mihon au Kotatsu';

  @override
  String get importListsHint =>
      'Leta maktaba kutoka Aniyomi, Mihon / Tachiyomi au Kotatsu. Vichwa, majalada, maendeleo na makundi vinabaki.';

  @override
  String get chooseBackupFile => 'Chagua faili ya nakala';

  @override
  String importAnimeCount(int count) {
    return 'Ingiza anime $count';
  }

  @override
  String importMangaCount(int count) {
    return 'Ingiza manga $count';
  }

  @override
  String get mergeWithExisting => 'Unganisha na orodha zilizopo';

  @override
  String get mergeWithExistingDesc =>
      'Inabaki ulichonacho; ikizimwa inabadilisha vichwa vinavyolingana';

  @override
  String get chooseAnother => 'Chagua nyingine';

  @override
  String get import => 'Ingiza';

  @override
  String animeCount(int count) {
    return 'Anime $count';
  }

  @override
  String mangaCount(int count) {
    return 'Manga $count';
  }

  @override
  String get chooseSaveLocation => 'Chagua mahali pa kuhifadhi nakala';

  @override
  String savedPath(String path) {
    return 'Imehifadhiwa $path';
  }

  @override
  String exportFailed(String error) {
    return 'Kuhamisha kumeshindwa: $error';
  }

  @override
  String get nothingInLocalLists =>
      'Bado hakuna kitu kwenye orodha zako za ndani.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'Inahamisha anime $anime na manga $manga kutoka orodha zako za ndani. Kotatsu inaauni manga tu.';
  }

  @override
  String get saveToFolder => 'Hifadhi kwenye folda';

  @override
  String get formatAnimeManga => 'Anime na manga · .tachibk';

  @override
  String get formatMangaTachibk => 'Manga tu · .tachibk';

  @override
  String get formatMangaZip => 'Manga tu · .zip';

  @override
  String get genres => 'Aina';

  @override
  String get relations => 'Husiano';

  @override
  String get recommendations => 'Mapendekezo';

  @override
  String get openings => 'Nyimbo za mwanzo';

  @override
  String get endings => 'Nyimbo za mwisho';

  @override
  String get background => 'Usuli';

  @override
  String get links => 'Viungo';

  @override
  String get rank => 'Cheo';

  @override
  String get members => 'Wanachama';

  @override
  String get favorites => 'Vipendwa';

  @override
  String get episodes => 'Vipindi';

  @override
  String get chapters => 'Sura';

  @override
  String get volumes => 'Juzuu';

  @override
  String get format => 'Umbizo';

  @override
  String get source => 'Chanzo';

  @override
  String get duration => 'Muda';

  @override
  String minutesPerEpisode(int minutes) {
    return 'Dakika $minutes kwa kipindi';
  }

  @override
  String get rating => 'Ukadiriaji';

  @override
  String get studio => 'Studio';

  @override
  String get serialization => 'Uchapishaji wa mfululizo';

  @override
  String get season => 'Msimu';

  @override
  String get broadcast => 'Matangazo';

  @override
  String get aired => 'Ilionyeshwa';

  @override
  String get published => 'Ilichapishwa';

  @override
  String get popularity => 'Umaarufu';

  @override
  String get community => 'Jumuiya';

  @override
  String get watching => 'Wanatazama';

  @override
  String get reading => 'Wanasoma';

  @override
  String get dropped => 'Walioacha';

  @override
  String get planned => 'Zilizopangwa';

  @override
  String get trailers => 'Trela';

  @override
  String get ratings => 'Ukadiriaji';

  @override
  String get originalTitle => 'Asili';

  @override
  String get titleLabel => 'Kichwa';

  @override
  String get votes => 'Kura';

  @override
  String get watchedStat => 'Vilivyotazamwa';

  @override
  String get runtime => 'Muda wa kipindi';

  @override
  String get director => 'Mkurugenzi';

  @override
  String get network => 'Mtandao';

  @override
  String get certification => 'Uthibitisho';

  @override
  String get airs => 'Huonyeshwa';

  @override
  String get budget => 'Bajeti';

  @override
  String get revenue => 'Mapato';

  @override
  String get released => 'Ilitolewa';

  @override
  String get tags => 'Lebo';

  @override
  String get author => 'Mwandishi';

  @override
  String get born => 'Alizaliwa';

  @override
  String get website => 'Tovuti';

  @override
  String get established => 'Ilianzishwa';

  @override
  String get manhwa => 'Manhwa';

  @override
  String get manhua => 'Manhua';

  @override
  String get novels => 'Riwaya';

  @override
  String get thisMonth => 'Mwezi huu';

  @override
  String get movies => 'Filamu';

  @override
  String get shows => 'Vipindi vya TV';

  @override
  String get rewatching => 'Naangalia tena';

  @override
  String get rereading => 'Nasoma tena';

  @override
  String get watchedStatus => 'Vilivyotazamwa';

  @override
  String get planning => 'Napanga';

  @override
  String get paused => 'Imesimamishwa';

  @override
  String get watch => 'Tazama';

  @override
  String get read => 'Soma';

  @override
  String get finished => 'Imekamilika';

  @override
  String get releasing => 'Inaendelea kutolewa';

  @override
  String get cancelled => 'Imeghairiwa';

  @override
  String get hiatus => 'Imesitishwa';

  @override
  String get remove => 'Ondoa';

  @override
  String syncToService(String service) {
    return 'Sawazisha kwenye $service';
  }

  @override
  String syncedToService(String service) {
    return 'Imesawazishwa kwenye $service';
  }

  @override
  String get latestReleases => 'Matoleo ya hivi karibuni';

  @override
  String get topRated => 'Zilizokadiriwa juu';

  @override
  String localSection(String title) {
    return '$title · Ya ndani';
  }

  @override
  String get localEntryNote =>
      'Kichwa hiki kipo tu kwenye orodha yako ya ndani kwenye kifaa hiki. Kuhariri kumezimwa hapa kwa sababu kunaweza kugongana na orodha ya akaunti yako; bado unaweza kukiondoa.';

  @override
  String get cardPresetPoster => 'Bango';

  @override
  String get cardPresetCard => 'Kadi';

  @override
  String get cardPresetCozy => 'Starehe';

  @override
  String get sortTopRated => 'Zilizokadiriwa juu';

  @override
  String get sortMostPopular => 'Maarufu zaidi';

  @override
  String get sortTrending => 'Zinazovuma';

  @override
  String get sortNewest => 'Mpya zaidi';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'Pendwa zaidi';

  @override
  String get anyCountry => 'Nchi yoyote';

  @override
  String get orderScore => 'Alama';

  @override
  String get orderTitle => 'Kichwa';

  @override
  String get orderLastUpdated => 'Zilizosasishwa mwisho';

  @override
  String get orderLastAdded => 'Zilizoongezwa mwisho';

  @override
  String get never => 'Kamwe';

  @override
  String get always => 'Daima';

  @override
  String get scorePoint100 => 'Pointi 100';

  @override
  String get scorePoint10Decimal => 'Pointi 10 na desimali';

  @override
  String get scorePoint10 => 'Pointi 10';

  @override
  String get scorePoint5 => 'Nyota 5';

  @override
  String get scorePoint3 => 'Nyuso 3';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'saa $count',
      one: 'saa 1',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count',
      one: 'siku 1',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wiki $count',
      one: 'wiki 1',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'Endelea';

  @override
  String get resumeSourceMissing =>
      'Sakinisha chanzo cha kichwa hiki ili kuendelea';

  @override
  String get resumeRemove => 'Ondoa kwenye kuendelea';

  @override
  String resumeAt(String time) {
    return 'Imebaki $time';
  }

  @override
  String resumePage(int page, int total) {
    return 'Ukurasa $page kati ya $total';
  }

  @override
  String get continueWatching => 'Endelea kutazama';

  @override
  String get continueReading => 'Endelea kusoma';

  @override
  String get favouriteAnimeSection => 'Anime pendwa';

  @override
  String get favouriteMangaSection => 'Manga pendwa';

  @override
  String get plannedAnime => 'Anime zilizopangwa';

  @override
  String get plannedManga => 'Manga zilizopangwa';

  @override
  String get completedAnime => 'Anime zilizokamilika';

  @override
  String get completedManga => 'Manga zilizokamilika';

  @override
  String get hiddenMedia => 'Media iliyofichwa';

  @override
  String get recentUpdates => 'Masasisho ya hivi karibuni';

  @override
  String get trendingNow => 'Zinazovuma sasa';

  @override
  String get popularThisSeason => 'Maarufu msimu huu';

  @override
  String get trendingMovies => 'Filamu zinazovuma';

  @override
  String get topRatedSeries => 'Mfululizo uliokadiriwa juu';

  @override
  String get mostFavouriteSeries => 'Mfululizo pendwa zaidi';

  @override
  String get popularAnime => 'Anime maarufu';

  @override
  String get trendingManhwa => 'Manhwa zinazovuma';

  @override
  String get trendingNovels => 'Riwaya zinazovuma';

  @override
  String get topRatedManga => 'Manga zilizokadiriwa juu';

  @override
  String get mostFavouriteManga => 'Manga pendwa zaidi';

  @override
  String get popularManga => 'Manga maarufu';

  @override
  String get topMovies => 'Filamu bora';

  @override
  String get topOna => 'ONA bora';

  @override
  String get topOva => 'OVA bora';

  @override
  String get mostPopular => 'Maarufu zaidi';

  @override
  String get mostFavourite => 'Pendwa zaidi';

  @override
  String get upcoming => 'Zinazokuja';

  @override
  String get topManga => 'Manga bora';

  @override
  String get topManhwa => 'Manhwa bora';

  @override
  String get topManhua => 'Manhua bora';

  @override
  String get topNovels => 'Riwaya bora';

  @override
  String get topOneShots => 'One-shot bora';

  @override
  String get trendingMoviesToday => 'Filamu zinazovuma leo';

  @override
  String get trendingShowsToday => 'Vipindi vinavyovuma leo';

  @override
  String get trendingMoviesWeek => 'Filamu zinazovuma wiki hii';

  @override
  String get trendingShowsWeek => 'Vipindi vinavyovuma wiki hii';

  @override
  String get mostWatchedMoviesMonth => 'Filamu zilizotazamwa zaidi mwezi huu';

  @override
  String get mostWatchedShowsMonth => 'Vipindi vilivyotazamwa zaidi mwezi huu';

  @override
  String get trendingThisWeek => 'Zinazovuma wiki hii';

  @override
  String get mostWatchedThisMonth => 'Zilizotazamwa zaidi mwezi huu';

  @override
  String get repoLinksAdded => 'Viungo vya hazina vimeongezwa!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'Hitilafu ya kupata data kutoka AniList.';

  @override
  String get navInfo => 'TAARIFA';

  @override
  String get navComments => 'MAONI';

  @override
  String get playerNotAvailable => 'Kicheza bado hakipatikani';

  @override
  String deepLinkInitialError(String error) {
    return 'Hitilafu ya kupata kiungo cha awali: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'Hitilafu ya kufungua kiungo: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'Kiungo hiki hakiwezi kufunguliwa: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'Hitilafu ya kufungua kiungo: $error';
  }

  @override
  String get forReleasingTitles => 'kwa vichwa vinavyotolewa sasa';

  @override
  String get progress => 'Maendeleo';

  @override
  String get notes => 'Maelezo';

  @override
  String serviceNotFound(String id) {
    return 'Huduma \"$id\" haipatikani';
  }

  @override
  String get glassEffectEnabled => 'Athari ya kioo imewashwa';

  @override
  String get glassEffectDisabled => 'Athari ya kioo imezimwa';

  @override
  String get materialYouEnabled => 'Material You imewashwa';

  @override
  String get materialYouDisabled => 'Material You imezimwa';

  @override
  String get darkModeEnabled => 'Hali ya giza imewashwa';

  @override
  String get darkModeDisabled => 'Hali ya giza imezimwa';

  @override
  String get animeList => 'Orodha ya anime';

  @override
  String get mangaList => 'Orodha ya manga';

  @override
  String ownerAnimeList(String owner) {
    return 'Orodha ya anime ya $owner';
  }

  @override
  String ownerMangaList(String owner) {
    return 'Orodha ya manga ya $owner';
  }

  @override
  String get loadingList => 'Inapakia orodha';

  @override
  String get earlier => 'Awali';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'siku $count zilizopita',
      one: 'siku 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'saa $count zilizopita',
      one: 'saa 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'dakika $count zilizopita',
      one: 'dakika 1 iliyopita',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return 'dk $count zilizopita';
  }

  @override
  String hoursAgoShort(int count) {
    return 'saa $count zilizopita';
  }

  @override
  String daysAgoShort(int count) {
    return 'siku $count zilizopita';
  }

  @override
  String weeksAgoShort(int count) {
    return 'wiki $count zilizopita';
  }

  @override
  String get couldntLoadSource => 'Imeshindwa kupakia chanzo hiki';

  @override
  String get followers => 'Wafuasi';

  @override
  String couldntLoadTitle(String title) {
    return 'Imeshindwa kupakia $title';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'Imeshindwa kupakia wasifu huu';

  @override
  String get profile => 'Wasifu';

  @override
  String get feed => 'Mlisho';

  @override
  String get stats => 'Takwimu';

  @override
  String get received => 'Zilizopokelewa';

  @override
  String get sent => 'Zilizotumwa';

  @override
  String get global => 'Dunia';

  @override
  String get couldntLoadPage => 'Imeshindwa kupakia ukurasa huu';

  @override
  String get couldntLoadAllDetails => 'Imeshindwa kupakia maelezo yote';

  @override
  String get series => 'Mfululizo';

  @override
  String get studios => 'Studio';

  @override
  String get users => 'Watumiaji';

  @override
  String repositoriesTitle(String type) {
    return 'Hazina za $type';
  }

  @override
  String get repositoryUrl => 'URL ya hazina';

  @override
  String get downloadingRepository => 'Inapakua hazina…';

  @override
  String get noRepositories => 'Hakuna hazina zilizoongezwa';

  @override
  String repoExtensionsCount(String count) {
    return 'Viendelezi $count';
  }

  @override
  String get searchExtensions => 'Tafuta viendelezi...';

  @override
  String deletePluginTitle(String name) {
    return 'Kufuta $name?';
  }

  @override
  String get deletePluginMessage =>
      'Una uhakika unataka kufuta programu jalizi hii?';

  @override
  String pluginDeleted(String name) {
    return '$name imefutwa';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name haipatikani kwenye hazina iliyosanidiwa';
  }

  @override
  String get pluginFetchFailed =>
      'Imeshindwa kupata taarifa za programu jalizi';

  @override
  String installPluginTitle(String name) {
    return 'Sakinisha $name';
  }

  @override
  String sizeLabel(String size) {
    return 'Ukubwa: $size';
  }

  @override
  String get installedState => 'Imesakinishwa';

  @override
  String get errorLabel => 'Hitilafu:';

  @override
  String get stackTraceDetails => 'Maelezo (Stack Trace)';

  @override
  String get shareLogFile => 'Shiriki faili ya kumbukumbu';

  @override
  String get copyLogs => 'Nakili kumbukumbu';

  @override
  String noListToEdit(String service) {
    return '$service haina orodha ya kuhariri';
  }

  @override
  String get couldNotReadFile => 'Imeshindwa kusoma faili hiyo';

  @override
  String importedSummary(int anime, int manga) {
    return 'Zimeingizwa anime $anime na manga $manga';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count tayari zipo';
  }

  @override
  String get airingNow => 'Zinaonyeshwa sasa';

  @override
  String get topRatedMovies => 'Filamu zilizokadiriwa juu';

  @override
  String get koreanDramas => 'Tamthilia za Kikorea';

  @override
  String get chineseDramas => 'Tamthilia za Kichina';

  @override
  String get japaneseDramas => 'Tamthilia za Kijapani';

  @override
  String get thaiDramas => 'Tamthilia za Kithai';

  @override
  String get turkishDramas => 'Tamthilia za Kituruki';

  @override
  String get miniSeries => 'Mfululizo mfupi';

  @override
  String get topRatedShows => 'Vipindi vilivyokadiriwa juu';

  @override
  String get recommendedSection => 'Zinazopendekezwa';

  @override
  String get syncRow => 'Sawazisha orodha';

  @override
  String get syncRowDesc =>
      'Nakili orodha ya huduma moja kwenye akaunti zako nyingine';

  @override
  String get syncTitle => 'Sawazisha';

  @override
  String get syncMainService => 'Huduma kuu';

  @override
  String get syncMainServiceDesc =>
      'Orodha yake ndiyo chanzo cha ukweli; kila huduma nyingine uliyoingia inasasishwa ilingane';

  @override
  String get syncAuto => 'Usawazishaji otomatiki';

  @override
  String get syncAutoDesc =>
      'Pakua na sawazisha chinichini programu inapofunguliwa na kila dakika 30';

  @override
  String get syncAddMissing => 'Ongeza vipengee vinavyokosekana';

  @override
  String get syncAddMissingDesc =>
      'Ongeza pia vipengee ambavyo huduma nyingine haina bado';

  @override
  String get syncOnlyForward => 'Weka maendeleo ya mbele zaidi';

  @override
  String get syncOnlyForwardDesc =>
      'Usipunguze maendeleo ya huduma ambayo tayari iko mbele';

  @override
  String get syncFetch => 'Pakua';

  @override
  String get syncFetchAgain => 'Pakua tena';

  @override
  String get syncAll => 'Sawazisha zote';

  @override
  String get syncStop => 'Simamisha';

  @override
  String get syncResume => 'Endelea';

  @override
  String get syncNothingToSync =>
      'Huduma hii haiwezi kusawazishwa kwa aina hii';

  @override
  String get syncNoTargets =>
      'Ingia kwenye huduma nyingine ili kusawazisha nayo';

  @override
  String get syncLoadingMap => 'Inapakia ramani ya vitambulisho';

  @override
  String get syncComparing => 'Inalinganisha orodha';

  @override
  String get syncIntro =>
      'Chagua huduma kuu kisha bonyeza Pakua. Kila huduma huulizwa mara moja kwa orodha yako, kisha hulinganishwa na kuu.';

  @override
  String get syncStateSynced => 'Imesawazishwa';

  @override
  String get syncStateOutdated => 'Haijasawazishwa';

  @override
  String get syncStateMissing => 'Haipo kwenye orodha';

  @override
  String get syncStateUnmapped => 'Hakuna inayolingana';

  @override
  String syncPaused(String time) {
    return 'Inasubiri kikomo cha maombi, inaendelea baada ya $time';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count tu kwenye $name, hazijaguswa';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$done kati ya $total';
  }

  @override
  String get syncNothingHere => 'Hakuna cha kuonyesha';

  @override
  String syncLimits(int used, int max, String window) {
    return 'Maombi $used kati ya $max yametumika katika $window hii';
  }

  @override
  String get syncMinute => 'dakika';

  @override
  String get syncDay => 'siku';

  @override
  String get syncNotInList => 'Bado haipo kwenye orodha';

  @override
  String get syncCleared => 'Mpango umefutwa';

  @override
  String get syncClear => 'Futa';

  @override
  String get syncOptions => 'Chaguo';

  @override
  String get syncShared => 'Inashiriki kipengee chake na kingine';

  @override
  String syncNotFound(String service) {
    return 'Haipatikani kwenye $service';
  }

  @override
  String syncService(String service, int count) {
    return 'Sawazisha $service ($count)';
  }

  @override
  String get syncOnEdit => 'Sawazisha mabadiliko papo hapo';

  @override
  String get syncOnEditDesc =>
      'Tuma kila sasisho la maendeleo na mabadiliko ya orodha kwenye huduma zako nyingine mara moja';

  @override
  String syncPushed(String services) {
    return 'Imesawazishwa kwenye $services';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'Kikomo cha maombi, jaribu tena baada ya muda mfupi';

  @override
  String get syncAhead => 'Yeyote aliye mbele';

  @override
  String get syncAheadDesc =>
      'Pande mbili: kwa kila kichwa kipengee kilicho mbele zaidi hushinda na kunakiliwa kwenye huduma zako zote nyingine';

  @override
  String syncAheadFrom(String service) {
    return 'Kutoka $service';
  }

  @override
  String get syncConfirm => 'Kagua kabla ya kusawazisha';

  @override
  String get syncConfirmDesc =>
      'Onyesha Sawazisha zote itabadilisha nini na itahitaji maombi mangapi';

  @override
  String get syncPreviewTitle => 'Tayari kusawazisha';

  @override
  String syncPreviewLine(int updates, int adds) {
    return 'Masasisho $updates, ya kuongeza $adds';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'Takriban maombi $count';
  }

  @override
  String syncPreviewLookups(int count) {
    return 'Vitambulisho $count vinahitaji kutafutwa kwanza';
  }

  @override
  String get syncPreviewNothing => 'Hakuna cha kubadilisha';

  @override
  String get syncStart => 'Anza';

  @override
  String get syncRetry => 'Jaribu tena';

  @override
  String get syncSkip => 'Ruka kipengee hiki';

  @override
  String get syncInclude => 'Jumuisha kipengee hiki tena';

  @override
  String get syncSkippedLabel => 'Kimerukwa';

  @override
  String get syncChanges => 'Tofauti';

  @override
  String get syncChangeStatus => 'Hali';

  @override
  String get syncChangeProgress => 'Maendeleo';

  @override
  String get syncChangeScore => 'Alama';

  @override
  String get syncChangeDates => 'Tarehe';

  @override
  String get syncChangeRepeat => 'Idadi ya kutazama tena';

  @override
  String get syncFailedReason => 'Kwa nini imeshindwa';

  @override
  String get syncSkippedHint =>
      'Vipengee vilivyorukwa vinaachwa, hata baada ya kupakua tena';

  @override
  String get commentsRules => 'Sheria za maoni';

  @override
  String get commentsRulesBody =>
      'UKIVUNJA SHERIA YOYOTE UNATOKA\n\n1. Hakuna ubaguzi wa rangi, ubaguzi wala matamshi ya chuki\n2. Hakuna spam wala kujitangaza\n3. Hakuna maudhui ya NSFW kabisa\n4. Kiingereza tu, bila ubaguzi\n5. Hakuna kuiga mtu, unyanyasaji wala matusi\n6. Hakuna maudhui haramu wala kukosea heshima kupita kiasi kwa mashabiki wowote\n7. Usiombe wala kushiriki hazina au viendelezi\n8. Waharibifu tu kwa lebo ya mharibifu na onyo\n9. Hakuna maoni ya kingono au yasiyofaa kuhusu wahusika walio watoto\n10. Kama si sahihi, usiichapishe!';

  @override
  String get commentsRulesAccept => 'Nimeelewa';

  @override
  String get commentsSortNewest => 'Mpya zaidi';

  @override
  String get commentsSortOldest => 'Kongwe zaidi';

  @override
  String get commentsSortHighest => 'Zilizokadiriwa juu zaidi';

  @override
  String get commentsSortLowest => 'Zilizokadiriwa chini zaidi';

  @override
  String commentsEpisodeShort(int number) {
    return 'Kip. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'Sura $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'Chuja kwa kipindi';

  @override
  String get commentsFilterChapterTitle => 'Chuja kwa sura';

  @override
  String get commentsFilterTagTitle => 'Weka namba ya kipindi au sura';

  @override
  String get commentsFilterHint => 'Namba';

  @override
  String get commentsFilterApply => 'Chuja';

  @override
  String get commentsFilterClear => 'Onyesha zote';

  @override
  String get commentsPlaceholder => 'Ongeza maoni…';

  @override
  String commentsReplyingTo(String name) {
    return 'Unamjibu $name';
  }

  @override
  String get commentsSend => 'Tuma';

  @override
  String get commentsTagButton => 'Lebo';

  @override
  String commentsTagTitle(String label) {
    return 'Lebo ya $label (hiari)';
  }

  @override
  String get commentsTagEpisode => 'kipindi';

  @override
  String get commentsTagChapter => 'sura';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return 'Namba ya $label';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'Lebo haiwezi kuzidi jumla ($total)';
  }

  @override
  String get commentsNoTag => 'Hakuna lebo';

  @override
  String get commentsSpoiler => 'Mharibifu';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'Tafuta GIF';

  @override
  String get commentsGifEmpty => 'Hakuna GIF zilizopatikana';

  @override
  String get commentsEmptyText => 'Maoni hayawezi kuwa tupu';

  @override
  String get commentsBannedYou => 'Umepigwa marufuku kutoa maoni';

  @override
  String get commentsEdited => 'Maoni yamehaririwa';

  @override
  String get commentsDeleted => 'Maoni yamefutwa';

  @override
  String get commentsDeletedPlaceholder => '[imefutwa]';

  @override
  String get commentsReported => 'Maoni yameripotiwa';

  @override
  String get commentsUserBanned => 'Mtumiaji amepigwa marufuku';

  @override
  String get commentsReport => 'Ripoti';

  @override
  String get commentsReportAsk => 'Ripoti maoni haya kwa wasimamizi?';

  @override
  String get commentsDelete => 'Futa';

  @override
  String get commentsDeleteAsk => 'Maoni haya yataondolewa kwa kila mtu.';

  @override
  String get commentsBan => 'Piga marufuku';

  @override
  String get commentsBanAsk => 'Kumpiga marufuku mtumiaji huyu kutoa maoni?';

  @override
  String get commentsCopy => 'Nakili';

  @override
  String get commentsViewReply => 'Tazama jibu 1';

  @override
  String commentsViewReplies(int count) {
    return 'Tazama majibu $count';
  }

  @override
  String get commentsHideReplies => 'Ficha majibu';

  @override
  String get commentsLoadMore => 'Pakia maoni zaidi';

  @override
  String get commentsEmpty => 'Bado hakuna maoni. Kuwa wa kwanza!';

  @override
  String get commentsEmptyFiltered => 'Hakuna maoni kwa kichujio hiki';

  @override
  String get commentsSignIn =>
      'Ingia kwenye AniList ili kusoma na kuandika maoni';

  @override
  String get commentsSignInMessage =>
      'Maoni yanashirikiwa kati ya kila huduma na yanatumia akaunti yako ya AniList.';

  @override
  String get commentsUnavailable => 'Maoni hayapatikani kwa kichwa hiki';

  @override
  String get commentsUnavailableMessage =>
      'Hakikuweza kulinganishwa na kipengee cha AniList.';

  @override
  String get commentsDisabled => 'Maoni yamezimwa';

  @override
  String get commentsDisabledMessage =>
      'Unaweza kuyawasha tena kwenye Mipangilio › Jumla.';

  @override
  String get commentsOffline => 'Imeshindwa kupakia maoni';

  @override
  String get commentsSingleTitle => 'Inaonyesha maoni moja';

  @override
  String get commentsShowAll => 'Onyesha maoni yote';

  @override
  String get commentsSettingsHeader => 'Maoni';

  @override
  String get commentsSettingEnabled => 'Maoni';

  @override
  String get commentsSettingEnabledDesc =>
      'Onyesha kichupo cha Maoni kwenye vichwa na uingie kwenye seva ya maoni kwa akaunti yako ya AniList';

  @override
  String get commentsSettingAlerts => 'Arifa za majibu';

  @override
  String get commentsSettingAlertsDesc => 'Niarifu mtu akijibu maoni yangu';

  @override
  String get commentsNoticeReplyTitle => 'Jibu jipya la maoni';

  @override
  String commentsNoticeReply(String name) {
    return '$name amejibu maoni yako';
  }

  @override
  String get commentsNoticeWarningTitle => 'Umepokea onyo';

  @override
  String get commentsNoticeWarning => 'Kuwa makini zaidi na maoni yako';

  @override
  String get commentsNoticeUpdateTitle => 'Sasisho kutoka Dantotsu';

  @override
  String get barcodeTitle => 'Changanua msimbopau';

  @override
  String get barcodeTooltip => 'Tafuta manga au riwaya kwa msimbopau wake';

  @override
  String get barcodeIntro =>
      'Elekeza kamera kwenye msimbopau nyuma ya juzuu, au andika ISBN yake.';

  @override
  String get barcodeIntroManual =>
      'Andika ISBN iliyochapishwa juu ya msimbopau nyuma ya juzuu.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'Hiyo si ISBN halali';

  @override
  String barcodeNotFound(String isbn) {
    return 'Hakuna kitabu kilichopatikana kwa $isbn';
  }

  @override
  String get barcodeCameraDenied =>
      'Kamera haipatikani. Ruhusu ufikiaji wa kamera au andika ISBN badala yake.';

  @override
  String get themesTitle => 'Nyimbo za mwanzo na mwisho';

  @override
  String get themesPlayVideo => 'Cheza video';

  @override
  String get themesPlayAudio => 'Cheza sauti tu';

  @override
  String get themesOpenSite => 'Fungua kwenye AnimeThemes';

  @override
  String get themesCredit => 'Nyimbo kutoka AnimeThemes';

  @override
  String get themesVersions => 'Matoleo';

  @override
  String get sauceTitle => 'Tafuta chanzo';

  @override
  String get sauceIntro =>
      'Pakia ukurasa wa manga au kazi ya sanaa, au bandika kiungo chake, ili kupata inakotoka.';

  @override
  String get sauceKeyTitle => 'Ufunguo wa API wa SauceNAO';

  @override
  String get sauceKeyHint =>
      'Hiari, huongeza kikomo cha utafutaji wa kila siku';

  @override
  String get sauceKeyDesc =>
      'Pata ufunguo bila malipo kwenye saucenao.com/user.php';

  @override
  String get sauceOpen => 'Fungua chanzo';

  @override
  String get sauceCredit => 'Utafutaji wa picha na SauceNAO';

  @override
  String get sauceEmpty => 'Hakuna kinacholingana';

  @override
  String get sauceTooltip =>
      'Tafuta chanzo cha ukurasa wa manga au kazi ya sanaa';

  @override
  String get trendzTitle => 'Chati za anime';

  @override
  String get trendzAnime => 'Anime';

  @override
  String get trendzFemale => 'Wahusika wa kike';

  @override
  String get trendzMale => 'Wahusika wa kiume';

  @override
  String get trendzCouple => 'Wapenzi';

  @override
  String get trendzCredit => 'Chati za kila wiki na AniTrendz';

  @override
  String get trendzNew => 'MPYA';

  @override
  String get trendzEmpty => 'Chati ni tupu';

  @override
  String get shareCard => 'Kadi ya kushiriki';

  @override
  String get shareCardList => 'Shiriki kadi ya orodha';

  @override
  String get shareCardSaved => 'Kadi imehifadhiwa';

  @override
  String get shareCardFailed => 'Imeshindwa kutengeneza kadi';

  @override
  String get shareCardListEmpty => 'Orodha yako haina cha kushiriki bado';

  @override
  String get shareCardTop => 'Chaguo zangu bora';

  @override
  String themesEpisodes(String eps) {
    return 'Vipindi $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return 'Inalingana kwa $percent%';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'Wiki $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return 'Kura $count';
  }

  @override
  String trendzPeak(String rank) {
    return 'Kilele #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'Wiki $count kwenye kumi bora';
  }

  @override
  String get imageSearchTitle => 'Tafuta kwa picha';

  @override
  String get imageSearchTooltip => 'Tafuta anime kutoka kwenye skrinishoti';

  @override
  String get imageSearchIntro =>
      'Chagua skrinishoti au bandika kiungo cha picha na trace.moe itapata kipindi na wakati inakotoka.';

  @override
  String get imageSearchPick => 'Chagua picha';

  @override
  String get imageSearchLinkHint => 'Bandika kiungo cha picha';

  @override
  String get imageSearchGo => 'Tafuta';

  @override
  String get imageSearchEmpty => 'Hakuna kinacholingana';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'Kipindi $number';
  }

  @override
  String imageSearchAt(String time) {
    return 'saa $time';
  }

  @override
  String get imageSearchPreview => 'Hakiki klipu';

  @override
  String imageSearchSimilarity(int percent) {
    return 'Inalingana kwa $percent%';
  }

  @override
  String get imageSearchCredit => 'Inaendeshwa na trace.moe';

  @override
  String get imageSearchOpenFailed => 'Imeshindwa kufungua kichwa hiki';

  @override
  String get groups => 'Vikundi';

  @override
  String get groupsYours => 'Vikundi vyako';

  @override
  String get groupsPopular => 'Maarufu';

  @override
  String get groupsNew => 'Vipya';

  @override
  String get groupsFeatured => 'Vilivyoangaziwa';

  @override
  String get groupsSearch => 'Tafuta vikundi';

  @override
  String get groupsAll => 'Vyote';

  @override
  String get groupsEmpty => 'Hakuna vikundi vilivyopatikana';

  @override
  String get groupsEmptyYours => 'Bado hujajiunga na kikundi chochote';

  @override
  String get groupsSignIn => 'Ingia ili uone vikundi ulivyojiunga';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'wanachama $count',
      one: 'mwanachama 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'Jiunge';

  @override
  String get groupsJoined => 'Umejiunga';

  @override
  String get groupsLeave => 'Ondoka kwenye kikundi';

  @override
  String get groupsLeaveAsk =>
      'Hutaona tena machapisho ya kikundi hiki kwenye mlisho wako.';

  @override
  String get groupsJoinFailed =>
      'Imeshindwa kujiunga na kikundi hiki, huenda ni kwa mwaliko tu';

  @override
  String get groupsLeaveFailed => 'Imeshindwa kuondoka kwenye kikundi hiki';

  @override
  String get groupsPosts => 'Machapisho';

  @override
  String get groupsMembersTab => 'Wanachama';

  @override
  String get groupsAbout => 'Kuhusu';

  @override
  String get groupsRules => 'Sheria';

  @override
  String get groupsPrivacyOpen => 'Wazi';

  @override
  String get groupsPrivacyRestricted => 'Chenye vikwazo';

  @override
  String get groupsPrivacyClosed => 'Kimefungwa';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'Msimamizi';

  @override
  String get groupsRoleMod => 'Msimamizi msaidizi';

  @override
  String get groupsCouldntLoad => 'Imeshindwa kupakia kikundi hiki';

  @override
  String get groupsNewPost => 'Chapisha kwenye kikundi';

  @override
  String get groupsPostHint => 'Shiriki kitu na kikundi';

  @override
  String get groupsOpenInBrowser => 'Fungua kwenye kivinjari';

  @override
  String get groupsCategory => 'Kategoria';

  @override
  String get groupsLanguage => 'Lugha';

  @override
  String get groupsCreated => 'Kiliundwa';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'viongozi $count',
      one: 'kiongozi 1',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'Faragha';

  @override
  String get notificationsAll => 'Zote';

  @override
  String get notificationsAiring => 'Zinazoonyeshwa';

  @override
  String get notificationsMedia => 'Vichwa vipya';

  @override
  String get notificationsReplies => 'Majibu';

  @override
  String get notificationsMentions => 'Kutajwa';

  @override
  String get notificationsMessages => 'Ujumbe';

  @override
  String get notificationsLikes => 'Zilizopendwa';

  @override
  String get notificationsFollows => 'Wanaofuata';

  @override
  String get notificationsNoServices =>
      'Hakuna huduma uliyoingia inayotuma arifa';

  @override
  String get notificationsNoServicesMessage =>
      'Ingia kwenye huduma inayotuma arifa na zitaonekana hapa.';

  @override
  String get notificationsEmptyKind => 'Bado hakuna kitu kwenye kundi hili';

  @override
  String get notificationsCommentsEmpty => 'Hakuna arifa za maoni';

  @override
  String get notificationsCommentsEmptyMessage =>
      'Majibu ya maoni yako na matangazo kutoka Dantotsu yanaonekana hapa.';

  @override
  String get notificationsSettings => 'Mipangilio ya arifa';

  @override
  String get notificationsPollTitle => 'Angalia arifa mpya';

  @override
  String notificationsPollDesc(int minutes) {
    return 'Kila dakika $minutes programu ikiwa wazi';
  }

  @override
  String get notificationsNotifyAbout => 'Niarifu kuhusu';

  @override
  String get notificationsCommentsHeader => 'Arifa za maoni';

  @override
  String systemNotificationsDescFor(String service) {
    return 'Onyesha arifa ya mfumo kwa kila arifa ya $service ambayo haijasomwa programu ikiwa inafanya kazi.';
  }

  @override
  String get notificationsTestSent => 'Arifa ya majaribio imetumwa';

  @override
  String get notificationsTestDenied =>
      'Arifa haziruhusiwi kwa Dartotsu. Ziwashe kwenye mipangilio ya mfumo.';

  @override
  String get notificationsTestHint =>
      'Bonyeza kwa muda mrefu kutuma arifa ya majaribio';

  @override
  String get notificationsTestSample => 'Hii ni arifa ya majaribio';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name amejibu maoni yako kwenye $media';
  }

  @override
  String get imageSearchNotLink => 'Hiyo haionekani kama kiungo';

  @override
  String get imageSearchQuota => 'Kikomo cha utafutaji kimezidi';

  @override
  String get imageSearchBusy =>
      'Maombi mengi mno, jaribu tena baada ya muda mfupi';

  @override
  String imageSearchFailed(int code) {
    return 'Utafutaji umeshindwa ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return 'Arifa mpya $count';
  }

  @override
  String get reactionsTitle => 'Miitikio';

  @override
  String get reactionsNeedEntry =>
      'Ongeza kichwa hiki kwenye orodha yako kabla ya kuitikia';

  @override
  String get reactionsAdd => 'Ongeza mwitikio';

  @override
  String get reactionsHint => 'Ulionaje? (fupi na bila waharibifu)';

  @override
  String get reactionsPost => 'Chapisha';

  @override
  String get reactionsFailed => 'Imeshindwa kusasisha mwitikio';

  @override
  String get settingsWatch => 'Tazama na soma';

  @override
  String get settingsWatchDesc =>
      'Orodha za vipindi, ulinganishaji wa vyanzo na maelezo ya vipindi';

  @override
  String get watchSettingsLayout => 'Orodha ya vipindi';

  @override
  String get watchSettingsSources => 'Vyanzo';

  @override
  String get watchSettingsMetadata => 'Maelezo ya kipindi';

  @override
  String get watchLayout => 'Mpangilio';

  @override
  String get watchListView => 'Orodha';

  @override
  String get watchGridView => 'Gridi';

  @override
  String get watchCompactView => 'Fupi';

  @override
  String get watchDefaultLayoutDesc =>
      'Jinsi vipindi na sura zinavyopangwa hadi ubadilishe kwa kichwa fulani';

  @override
  String get watchChunkSize => 'Ukubwa wa kundi';

  @override
  String get watchChunkSizeDesc =>
      'Vipindi au sura ngapi kila kichupo cha kundi kinashikilia';

  @override
  String get watchShowDescription => 'Onyesha maelezo';

  @override
  String get watchShowDescriptionDesc =>
      'Onyesha muhtasari wa kipindi chini ya kila kichwa kwenye mpangilio wa orodha';

  @override
  String get watchShowFiller => 'Onyesha vipindi vya filler';

  @override
  String get watchShowFillerDesc =>
      'Zima ili kuficha vipindi vilivyowekwa alama ya filler';

  @override
  String get watchBlurUnwatched => 'Ficha vijipicha vya waharibifu';

  @override
  String get watchBlurUnwatchedDesc =>
      'Fifisha kijipicha cha vipindi ambavyo hujatazama bado';

  @override
  String get watchResumeShelf => 'Safu ya kuendelea';

  @override
  String get watchResumeShelfDesc => 'Onyesha safu ya Endelea kwenye Mwanzo';

  @override
  String get watchMarkOnLongPress => 'Bonyeza kwa muda mrefu kuweka maendeleo';

  @override
  String get watchMarkOnLongPressDesc =>
      'Bonyeza kwa muda mrefu kipindi au sura ili kukiweka kimetazamwa au hakijatazamwa';

  @override
  String get watchMatching => 'Ulinganishaji wa chanzo';

  @override
  String get watchMatchingDesc =>
      'Karibu zaidi huchukua matokeo bora ya utafutaji. Kamili tu hukubali kichwa kinacholingana karibu kabisa na kuacha vingine ukichague wewe.';

  @override
  String get watchMatchClosest => 'Ulinganifu wa karibu zaidi';

  @override
  String get watchMatchExact => 'Ulinganifu kamili tu';

  @override
  String get watchMetadataDesc =>
      'Mahali vichwa vya vipindi, muhtasari, vijipicha, tarehe za kuonyeshwa na alama za filler zinapotoka. Buruta kuweka kipaumbele; chanzo cha kwanza chenye thamani hushinda.';

  @override
  String get watchMetaAniZipDesc =>
      'Vichwa vya vipindi, muhtasari, picha na tarehe za kuonyeshwa';

  @override
  String get watchMetaKitsuDesc => 'Vichwa vya vipindi, maelezo na vijipicha';

  @override
  String get watchMetaSimklDesc =>
      'Vichwa vya vipindi, maelezo, picha na tarehe za kuonyeshwa';

  @override
  String get watchMetaAniListDesc =>
      'Vichwa vya vipindi vya streaming, vijipicha na ratiba ya matangazo';

  @override
  String get watchMetaTenraiDesc =>
      'Vichwa vya vipindi vya MyAnimeList, tarehe za kuonyeshwa, filler na alama za recap kupitia Tenrai';

  @override
  String get watchClearMetadata => 'Onyesha upya maelezo ya vipindi';

  @override
  String get watchClearMetadataDesc =>
      'Sahau maelezo ya vipindi yaliyohifadhiwa ili yapakuliwe tena';

  @override
  String get watchMetadataCleared => 'Maelezo ya vipindi yatapakuliwa tena';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vipindi $count',
      one: 'Kipindi 1',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sura $count',
      one: 'Sura 1',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'Kipindi $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'Sura $number';
  }

  @override
  String get watchSearching => 'Inatafuta…';

  @override
  String watchSearchingFor(String term) {
    return 'Inatafuta: $term';
  }

  @override
  String watchSelected(String title) {
    return 'Imechaguliwa: $title';
  }

  @override
  String watchFound(String title) {
    return 'Imepatikana: $title';
  }

  @override
  String get watchNothingFound => 'Hakuna kilichopatikana kwenye chanzo hiki';

  @override
  String get watchSearchFailed => 'Utafutaji wa chanzo umeshindwa';

  @override
  String get watchLoadFailed => 'Imeshindwa kupakia orodha';

  @override
  String get watchSignInToTrack => 'Ingia ili kufuatilia maendeleo yako';

  @override
  String watchInstallSource(String action) {
    return 'Sakinisha kiendelezi ili kuanza $action';
  }

  @override
  String get watchSourceMissing => 'Chanzo hiki hakijasakinishwa';

  @override
  String get watchWrongTitle => 'Kichwa kisicho sahihi?';

  @override
  String get watchSearchAgain => 'Tafuta tena';

  @override
  String watchSearchSource(String source) {
    return 'Tafuta $source';
  }

  @override
  String get watchSource => 'Chanzo';

  @override
  String get watchOptions => 'Chaguo';

  @override
  String get watchReverse => 'Geuza mpangilio';

  @override
  String get watchScanlators => 'Vikundi';

  @override
  String get watchResetOptions => 'Weka upya chaguo hizi';

  @override
  String get watchContinue => 'Endelea';

  @override
  String get watchStart => 'Anza';

  @override
  String get watchPlay => 'Cheza';

  @override
  String get watchRead => 'Soma';

  @override
  String get watchMarkWatched => 'Weka umetazama';

  @override
  String get watchMarkUnwatched => 'Weka hujatazama';

  @override
  String get watchMarkRead => 'Weka umesoma';

  @override
  String get watchMarkUnread => 'Weka hujasoma';

  @override
  String get watchFiller => 'Filler';

  @override
  String get watchRecap => 'Recap';

  @override
  String get watchNoEpisodes => 'Hakuna vipindi vilivyopatikana';

  @override
  String get watchNoChapters => 'Hakuna sura zilizopatikana';

  @override
  String get watchSourceTools => 'Zana za chanzo';

  @override
  String get watchSourceSettings => 'Mipangilio ya chanzo';

  @override
  String get watchOpenWebView => 'Fungua kwenye web view';

  @override
  String get watchOpenWebViewDesc =>
      'Tatua ukaguzi wa Cloudflare au ingia; vidakuzi vinashirikiwa na maombi ya chanzo';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vidakuzi $count vimehifadhiwa vya $host',
      one: 'Kidakuzi 1 kimehifadhiwa cha $host',
      zero: 'Hakuna vidakuzi vilivyohifadhiwa vya $host',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Kibali cha Cloudflare kinatumika, $time';
  }

  @override
  String get watchClearanceMissing =>
      'Hakuna kidakuzi cha kibali cha Cloudflare';

  @override
  String get watchClearanceSession => 'kinadumu hadi programu ifungwe';

  @override
  String get watchAgentShared =>
      'Maombi hutumia user agent ya web view, ambayo Cloudflare huikagua';

  @override
  String get watchAgentCustom =>
      'User agent maalum imewekwa, kwa hivyo kibali cha Cloudflare kutoka web view kinaweza kukataliwa';

  @override
  String get watchTestConnection => 'Jaribu muunganisho';

  @override
  String get watchSolveChallenge => 'Kitatue';

  @override
  String watchProbeOk(int code) {
    return 'Inafikika (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare bado inaomba ukaguzi';

  @override
  String watchProbeBlocked(int code) {
    return 'Imezuiwa na tovuti (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'Tovuti haikuweza kufikiwa';

  @override
  String get watchClearCookies => 'Futa vidakuzi vya tovuti hii';

  @override
  String get watchCookiesCleared => 'Vidakuzi vimefutwa';

  @override
  String get watchMetaSource => 'Maelezo ya kipindi kutoka';

  @override
  String get watchMetaAuto => 'Otomatiki';

  @override
  String get watchMetaOff => 'Zima';

  @override
  String get playerSettingsTitle => 'Mipangilio ya kicheza';

  @override
  String get playerSectionPlayback => 'Uchezaji';

  @override
  String get playerSectionSkip => 'Kuruka';

  @override
  String get playerSectionGestures => 'Vidhibiti';

  @override
  String get playerSectionSubtitles => 'Manukuu';

  @override
  String get playerSectionShaders => 'Shader';

  @override
  String get playerSectionEngine => 'Injini';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'Kasi ya kucheza';

  @override
  String get playerCursedSpeed => 'Kasi za ziada';

  @override
  String get playerCursedSpeedDesc => 'Ongeza kasi hadi 10x kwenye orodha';

  @override
  String get playerResize => 'Hali ya kubadilisha ukubwa';

  @override
  String get playerFitFit => 'Ficha';

  @override
  String get playerFitCover => 'Jalada';

  @override
  String get playerFitStretch => 'Nyoosha';

  @override
  String get playerSkipDuration => 'Urefu wa kitufe cha kuruka';

  @override
  String get playerSkipDurationDesc =>
      'Sekunde ambazo kitufe cha kuruka huruka nje ya nyimbo za mwanzo na mwisho';

  @override
  String get playerSeekDuration => 'Kutafuta kwa kugusa mara mbili';

  @override
  String get playerSeekDurationDesc =>
      'Sekunde za kuruka kwa kugusa mara mbili au kitufe cha mshale';

  @override
  String get playerAutoPlay => 'Cheza kinachofuata kiotomatiki';

  @override
  String get playerAutoPlayDesc => 'Anza kipindi kinachofuata hiki kikiisha';

  @override
  String get playerResume => 'Endelea ulipoishia';

  @override
  String get playerResumeDesc => 'Endelea kipindi kutoka mahali pa mwisho';

  @override
  String get playerOrientation => 'Mwelekeo';

  @override
  String get playerOrientationAuto => 'Fuata kifaa';

  @override
  String get playerOrientationLandscape => 'Mlalo';

  @override
  String get playerOrientationPortrait => 'Wima';

  @override
  String get playerAutoSkipOpening => 'Ruka nyimbo za mwanzo';

  @override
  String get playerAutoSkipEnding => 'Ruka nyimbo za mwisho';

  @override
  String get playerAutoSkipRecap => 'Ruka recap';

  @override
  String get playerAutoSkipDesc =>
      'Ruka mara tu inapoanza, kwa kutumia AniSkip na muda wa stream';

  @override
  String get playerSkipOnce => 'Ruka mara moja tu';

  @override
  String get playerSkipOnceDesc =>
      'Usiruke sehemu ile ile tena ukirudi nyuma ndani yake';

  @override
  String get playerAdjustBrightness => 'Ishara ya mwangaza';

  @override
  String get playerAdjustBrightnessDesc =>
      'Telezesha juu na chini kwenye nusu ya kulia ya skrini';

  @override
  String get playerAdjustVolume => 'Ishara ya sauti';

  @override
  String get playerAdjustVolumeDesc =>
      'Telezesha juu na chini kwenye nusu ya kushoto ya skrini';

  @override
  String get playerHoldToSpeed => 'Shikilia kuharakisha';

  @override
  String get playerHoldToSpeedDesc =>
      'Bonyeza na ushikilie video ili icheze haraka, buruta pembeni kubadilisha kasi';

  @override
  String get playerThumbless => 'Upau mnene wa kutafuta';

  @override
  String get playerThumblessDesc => 'Upau mnene bila kishikio';

  @override
  String get playerShowSubtitles => 'Onyesha manukuu';

  @override
  String get playerShowSubtitlesDesc =>
      'Zima ili kuficha kila wimbo wa manukuu';

  @override
  String get playerSubtitleLanguage => 'Lugha ya manukuu unayopendelea';

  @override
  String get playerSubtitleSize => 'Ukubwa wa manukuu';

  @override
  String get playerSubtitleWeight => 'Unene wa manukuu';

  @override
  String get playerSubtitleBottom => 'Nafasi ya chini ya manukuu';

  @override
  String get playerSubtitleFont => 'Fonti ya manukuu';

  @override
  String get playerSubtitleColor => 'Rangi ya manukuu';

  @override
  String get playerSubtitleBackground => 'Usuli wa manukuu';

  @override
  String get playerSubtitleOutline => 'Mstari wa nje wa manukuu';

  @override
  String get playerLibass => 'Tumia libass';

  @override
  String get playerLibassDesc =>
      'Onyesha manukuu ya .ass yenye mitindo. Ukubwa, rangi na fonti za hapo juu hazitumiki tena';

  @override
  String get playerShaders => 'Shader';

  @override
  String get playerShadersEnable => 'Washa shader';

  @override
  String get playerShadersEnableDesc =>
      'Ongeza ubora na safisha picha kwa shader za GLSL kama Anime4K';

  @override
  String get playerShadersOff => 'Shader zimezimwa';

  @override
  String get playerShadersMissing => 'Anime4K haijasakinishwa';

  @override
  String get playerShadersMissingDesc =>
      'Pakua kifurushi cha shader cha Anime4K (takriban MB 0.8) ili kutumia hali zilizojengewa ndani.';

  @override
  String get playerShadersDownload => 'Pakua Anime4K';

  @override
  String get playerPictureSave => 'Save this frame';

  @override
  String get playerPictureOriginal => 'Original';

  @override
  String get playerPictureOriginalDesc =>
      'The frame as the video has it, without shaders or colors';

  @override
  String get playerPictureProcessed => 'With shaders and colors';

  @override
  String get playerPictureProcessedDesc => 'The frame as you see it now';

  @override
  String get playerPictureSaved => 'Frame saved';

  @override
  String get playerPictureSaveFailed => 'Could not save the frame';

  @override
  String get playerShadersPreview => 'Hakiki kwenye fremu hii';

  @override
  String get playerShadersUse => 'Tumia hii';

  @override
  String get playerPicture => 'Picha';

  @override
  String get playerColors => 'Rangi';

  @override
  String get playerColorDefault => 'Chaguomsingi';

  @override
  String get playerColorVivid => 'Angavu';

  @override
  String get playerColorPop => 'Anime pop';

  @override
  String get playerColorSoft => 'Laini';

  @override
  String get playerColorCinematic => 'Sinema';

  @override
  String get playerColorBright => 'Mwanga';

  @override
  String get playerColorNight => 'Usiku';

  @override
  String get playerColorMono => 'Mono';

  @override
  String get playerColorCustom => 'Maalum';

  @override
  String get playerColorBrightness => 'Mwangaza';

  @override
  String get playerColorContrast => 'Utofautishaji';

  @override
  String get playerColorSaturation => 'Kueneza rangi';

  @override
  String get playerColorGamma => 'Gamma';

  @override
  String get playerColorHue => 'Hue';

  @override
  String get playerColorReset => 'Weka upya';

  @override
  String get playerColorAdjust => 'Rekebisha';

  @override
  String get playerShadersOriginal => 'Asili';

  @override
  String get playerShadersPreviewFailed =>
      'Imeshindwa kunasa fremu ya kuhakiki';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'Shader zako';

  @override
  String get playerShadersCustom => 'Shader maalum';

  @override
  String get playerShadersImport => 'Ingiza .glsl';

  @override
  String get playerShadersNone =>
      'Ingiza faili zako za .glsl au .hook na uziweke alama ili kuziunganisha';

  @override
  String get playerShadersBadFile => 'Chagua faili ya shader ya .glsl au .hook';

  @override
  String get playerDecoder => 'Kisimbuaji';

  @override
  String get playerDecoderAuto => 'Otomatiki';

  @override
  String get playerDecoderAutoSafe => 'Otomatiki (salama)';

  @override
  String get playerDecoderSoftware => 'Programu';

  @override
  String get playerDecoderHardware => 'Maunzi';

  @override
  String get playerDecoderHardwarePlus => 'Maunzi+';

  @override
  String get playerVideoOutput => 'Pato la video';

  @override
  String get playerAudioChannels => 'Chaneli za sauti';

  @override
  String get playerBuffer => 'Ukubwa wa bafa (MB)';

  @override
  String get playerBufferDesc =>
      'Kumbukumbu ambayo kicheza kinaweza kutumia kuhifadhi stream';

  @override
  String get playerUseMpvConf => 'Tumia mpv.conf';

  @override
  String get playerUseMpvConfDesc =>
      'Tumia chaguo za mpv.conf yako uchezaji unapoanza';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'Hariri usanidi wa mpv';

  @override
  String get playerMpvConfDesc =>
      'Chaguo moja kwa mstari, kama --hwdec=auto kwenye mpv.conf ya kawaida. Wasifu ulio kwenye [mabano] hupuuzwa.';

  @override
  String get playerMpvConfSaved => 'mpv.conf imehifadhiwa';

  @override
  String get playerUseScripts => 'Tumia skripti za mpv';

  @override
  String get playerUseScriptsDesc =>
      'Pakia programu jalizi kutoka folda ya skripti. Zinahitaji libmpv yenye usaidizi wa Lua au JavaScript';

  @override
  String get playerScripts => 'Skripti za mpv';

  @override
  String get playerScriptsManage =>
      'Ongeza, ondoa na badilisha programu jalizi';

  @override
  String get playerScriptsAdd => 'Ongeza skripti';

  @override
  String get playerScriptsDesc =>
      'Programu jalizi za Lua, JavaScript na asili zilizowekwa hapa hupakiwa uchezaji unapoanza.';

  @override
  String get playerScriptsNone => 'Bado hakuna skripti';

  @override
  String get playerScriptsBadFile =>
      'Chagua faili ya .lua, .js au programu jalizi asili';

  @override
  String get playerTuning => 'Urekebishaji wa video wa hali ya juu';

  @override
  String get playerTuningDesc =>
      'Badilisha usawazishaji, akiba, ubadilishaji ukubwa na tone mapping. Thamani zisizo sahihi zinaweza kuharibu uchezaji';

  @override
  String get playerVideoSync => 'Usawazishaji wa video';

  @override
  String get playerInterpolation => 'Ukadiriaji wa fremu';

  @override
  String get playerInterpolationDesc =>
      'Mwendo laini, inahitaji usawazishaji wa display-resample';

  @override
  String get playerPitch => 'Usahihishaji wa sauti';

  @override
  String get playerPitchDesc => 'Weka sauti za watu asili kwa kasi nyingine';

  @override
  String get playerCacheSeconds => 'Akiba (sekunde)';

  @override
  String get playerReadahead => 'Soma mbele (sekunde)';

  @override
  String get playerThreads => 'Nyuzi za kisimbuaji';

  @override
  String get playerDeband => 'Deband';

  @override
  String get playerDebandDesc => 'Punguza mikanda ya rangi kwenye gradient';

  @override
  String get playerDebandIterations => 'Mizunguko ya deband';

  @override
  String get playerDebandThreshold => 'Kizingiti cha deband';

  @override
  String get playerCorrectDownscaling => 'Upunguzaji sahihi wa ukubwa';

  @override
  String get playerSigmoid => 'Upanuzi wa sigmoid';

  @override
  String get playerScale => 'Kipanua ukubwa';

  @override
  String get playerCscale => 'Kipanua chroma';

  @override
  String get playerDscale => 'Kipunguza ukubwa';

  @override
  String get playerToneMapping => 'Tone mapping';

  @override
  String get playerTargetPeak => 'Kilele lengwa';

  @override
  String get playerOpenFiles => 'Fungua faili za video';

  @override
  String get playerOpenFilesDesc => 'Cheza faili kutoka kifaa hiki';

  @override
  String get playerOpenFolder => 'Fungua folda';

  @override
  String get playerOpenFolderDesc =>
      'Cheza kila video kwenye folda kama orodha ya kucheza';

  @override
  String get playerNetworkStream => 'Stream ya mtandao';

  @override
  String get playerNetworkStreamDesc =>
      'Fungua kiungo cha video moja kwa moja au HLS';

  @override
  String get playerStreamUrl => 'URL ya stream';

  @override
  String get playerStreamReferer => 'Referer (hiari)';

  @override
  String get playerTorrent => 'Torrent';

  @override
  String get playerTorrentDesc =>
      'Cheza kiungo cha magnet au faili ya .torrent';

  @override
  String get playerMagnetLink => 'Kiungo cha magnet au URL ya torrent';

  @override
  String get playerPickTorrent => 'Chagua faili ya .torrent';

  @override
  String get playerTorrentMissing =>
      'Sakinisha kiongezi cha torrent kutoka Mipangilio > Viongezi kwanza';

  @override
  String get playerNoVideos =>
      'Hakuna video zinazoweza kuchezwa zilizopatikana';

  @override
  String get playerReset => 'Weka upya mipangilio ya kicheza';

  @override
  String get playerResetDesc =>
      'Rudisha kila chaguo la kicheza kwenye chaguomsingi';

  @override
  String get playerResetConfirm => 'Kuweka upya mipangilio yote ya kicheza?';

  @override
  String get playerResetDone => 'Mipangilio ya kicheza imewekwa upya';

  @override
  String get playerQuality => 'Ubora';

  @override
  String get streamGroupSub => 'Sub';

  @override
  String get streamGroupHardSub => 'Hard Sub';

  @override
  String get streamGroupSoftSub => 'Soft Sub';

  @override
  String get streamGroupDub => 'Dub';

  @override
  String get streamGroupRaw => 'Raw';

  @override
  String get streamGroupOther => 'Other';

  @override
  String streamsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count streams',
      one: '1 stream',
    );
    return '$_temp0';
  }

  @override
  String get playerStreams => 'Stream';

  @override
  String get playerAutoSelect => 'Chagua stream kiotomatiki';

  @override
  String get playerAutoSelectDesc =>
      'Chagua stream inayofanana zaidi na chaguo lako la mwisho kwa kichwa hiki';

  @override
  String get playerLoadingStreams => 'Inatafuta stream…';

  @override
  String get playerNoStreams => 'Kipindi hiki hakina stream';

  @override
  String get playerNoStreamsTitle => 'Hakuna stream zilizopatikana';

  @override
  String get playerFailed => 'Uchezaji umeshindwa';

  @override
  String get playerTorrentNeeded => 'Stream hii ni torrent';

  @override
  String get playerTorrentNeededDesc =>
      'Sakinisha kiongezi cha torrent ili kucheza viungo vya magnet na faili za .torrent';

  @override
  String get playerOpenAddons => 'Fungua viongezi';

  @override
  String get playerTryAnotherStream => 'Jaribu stream nyingine';

  @override
  String get playerEpisodes => 'Vipindi';

  @override
  String get playerLock => 'Funga vidhibiti';

  @override
  String get playerFullscreen => 'Skrini nzima';

  @override
  String get readerChapters => 'Sura';

  @override
  String get readerSettingsTitle => 'Mipangilio ya msomaji';

  @override
  String get readerPreviousChapter => 'Sura iliyotangulia';

  @override
  String get readerNextChapter => 'Sura inayofuata';

  @override
  String get readerFirstChapter => 'Hii ni sura ya kwanza';

  @override
  String get readerLastChapter => 'Umefika mwisho wa zote';

  @override
  String get readerFailed => 'Imeshindwa kufungua sura hii';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'Sura hii haina maandishi';

  @override
  String get readerPerTitle => 'Kwa kichwa hiki tu';

  @override
  String get readerPerTitleDesc =>
      'Weka mipangilio hii ya msomaji kwa kichwa hiki tu';

  @override
  String get readerSectionReading => 'Kusoma';

  @override
  String get readerSectionControls => 'Vidhibiti';

  @override
  String get readerSectionDisplay => 'Onyesho';

  @override
  String get readerSectionNovel => 'Riwaya';

  @override
  String get readerMode => 'Hali ya kusoma';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'Kulia kwenda kushoto';

  @override
  String get readerModeLtr => 'Kushoto kwenda kulia';

  @override
  String get readerModeVertical => 'Kurasa wima';

  @override
  String get readerModeWebtoon => 'Webtoon';

  @override
  String get readerModeContinuous => 'Kusogeza bila kikomo';

  @override
  String get readerScale => 'Kipimo cha picha';

  @override
  String get readerScaleFit => 'Ingiza skrini';

  @override
  String get readerScaleWidth => 'Ingiza upana';

  @override
  String get readerScaleHeight => 'Ingiza urefu';

  @override
  String get readerScaleOriginal => 'Ukubwa halisi';

  @override
  String get readerScaleSmart => 'Ingiza kwa busara';

  @override
  String get readerDoublePage => 'Kurasa mbili';

  @override
  String get readerDoublePageDesc =>
      'Onyesha kurasa mbili kando kwa kando kwenye mlalo';

  @override
  String get readerDoubleTapZoom => 'Gusa mara mbili kukuza';

  @override
  String get readerDoubleTapZoomDesc =>
      'Kuza ukurasa ndani na nje kwa kugusa mara mbili';

  @override
  String get readerAnimate => 'Uhuishaji wa ukurasa';

  @override
  String get readerAnimateDesc => 'Huisha kugeuza kurasa';

  @override
  String get readerSidePadding => 'Nafasi ya pembeni';

  @override
  String get readerSidePaddingDesc => 'Nafasi kando ya kurasa kwa asilimia';

  @override
  String get readerPageGap => 'Pengo la kurasa';

  @override
  String get readerPageGapDesc => 'Nafasi kati ya kurasa';

  @override
  String get readerAutoNext => 'Endelea hadi sura inayofuata';

  @override
  String get readerAutoNextDesc =>
      'Pakia sura inayofuata unaposoma mwisho wa hii';

  @override
  String get readerPreload => 'Pakia kurasa mapema';

  @override
  String get readerPreloadDesc => 'Kurasa ngapi za kupakua mbele';

  @override
  String get readerTapZones => 'Maeneo ya kugusa';

  @override
  String get readerTapDefault => 'Chaguomsingi';

  @override
  String get readerTapLShaped => 'Umbo la L';

  @override
  String get readerTapKindle => 'Kama Kindle';

  @override
  String get readerTapEdge => 'Kingo tu';

  @override
  String get readerTapOff => 'Imezimwa';

  @override
  String get readerInvertTaps => 'Geuza maeneo ya kugusa';

  @override
  String get readerInvertTapsDesc =>
      'Badilishana maeneo ya iliyotangulia na inayofuata';

  @override
  String get readerBackground => 'Usuli';

  @override
  String get readerBackgroundBlack => 'Nyeusi';

  @override
  String get readerBackgroundGray => 'Kijivu';

  @override
  String get readerBackgroundWhite => 'Nyeupe';

  @override
  String get readerBackgroundTheme => 'Mandhari ya programu';

  @override
  String get readerFilter => 'Kichujio cha rangi';

  @override
  String get readerFilterNone => 'Hakuna';

  @override
  String get readerFilterGrayscale => 'Rangi za kijivu';

  @override
  String get readerFilterInvert => 'Geuza';

  @override
  String get readerFilterSepia => 'Sepia';

  @override
  String get readerFilterQuality => 'Image filter quality';

  @override
  String get readerFilterQualityNone => 'None (Nearest neighbor)';

  @override
  String get readerFilterQualityLow => 'Low (Bilinear)';

  @override
  String get readerFilterQualityMedium => 'Medium (Trilinear)';

  @override
  String get readerFilterQualityHigh => 'High (Bicubic)';

  @override
  String get readerFilterQualityLanczos => 'Lanczos (Rust high quality)';

  @override
  String get readerDim => 'Punguza mwanga';

  @override
  String get readerDimDesc => 'Weka kurasa giza zaidi';

  @override
  String get readerPageNumber => 'Namba ya ukurasa';

  @override
  String get readerPageNumberDesc => 'Onyesha namba ya ukurasa unaposoma';

  @override
  String get readerFullscreen => 'Skrini nzima';

  @override
  String get readerFullscreenDesc => 'Ficha pau za mfumo';

  @override
  String get readerCropBorders => 'Kata pembezoni';

  @override
  String get readerCropBordersDesc =>
      'Punguza pambizo tupu nyeupe au nyeusi kutoka kurasa';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'Vitufe vya sauti hugeuza kurasa';

  @override
  String get readerVolumeKeysDesc =>
      'Sauti chini inasonga mbele, sauti juu inarudi nyuma';

  @override
  String get readerBookmarks => 'Alamisho';

  @override
  String get readerBookmarkAdd => 'Ongeza alamisho';

  @override
  String get readerBookmarkRemove => 'Ondoa alamisho';

  @override
  String get readerBookmarksEmpty => 'Bado hakuna alamisho';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'Ukurasa $page kati ya $total';
  }

  @override
  String get readerAutoScroll => 'Kusogeza kiotomatiki';

  @override
  String get readerAutoScrollStop => 'Simamisha kusogeza kiotomatiki';

  @override
  String get readerAutoScrollSpeed => 'Kasi ya kusogeza kiotomatiki';

  @override
  String get readerAutoScrollSpeedDesc =>
      'Kasi ambayo kurasa husogea au kugeuka zenyewe';

  @override
  String get readerKeepOn => 'Weka skrini ikiwa imewashwa';

  @override
  String get readerKeepOnDesc => 'Zuia skrini kuzima unaposoma';

  @override
  String get readerOrientation => 'Mwelekeo';

  @override
  String get readerOrientationFree => 'Huru';

  @override
  String get readerOrientationPortrait => 'Wima';

  @override
  String get readerOrientationLandscape => 'Mlalo';

  @override
  String get readerSaveProgress => 'Hifadhi maendeleo';

  @override
  String get readerSaveProgressDesc =>
      'Kumbuka ukurasa wako na uweke sura alama kuwa zimesomwa';

  @override
  String get readerReset => 'Weka upya mipangilio ya msomaji';

  @override
  String get readerResetDesc => 'Rudi kwenye chaguomsingi';

  @override
  String get novelSize => 'Ukubwa wa maandishi';

  @override
  String get novelFont => 'Fonti';

  @override
  String get novelLineHeight => 'Urefu wa mstari';

  @override
  String get novelParagraph => 'Nafasi ya aya';

  @override
  String get novelMargin => 'Pambizo';

  @override
  String get novelTheme => 'Mandhari ya msomaji';

  @override
  String get novelThemeApp => 'Mandhari ya programu';

  @override
  String get novelThemeLight => 'Mwanga';

  @override
  String get novelThemeSepia => 'Sepia';

  @override
  String get novelThemeDark => 'Giza';

  @override
  String get novelThemeBlack => 'Nyeusi';

  @override
  String get novelJustify => 'Sawazisha maandishi';

  @override
  String get novelJustifyDesc => 'Pangilia maandishi pande zote mbili';

  @override
  String get trackProgressTitle => 'Kuhifadhi maendeleo?';

  @override
  String trackProgressAnime(String name) {
    return 'Kufuatilia $name kwenye orodha yako unapotazama? Chagua \"Kifaa hiki tu\" kuweka ndani, au Hapana kutohifadhi chochote.';
  }

  @override
  String trackProgressManga(String name) {
    return 'Kufuatilia $name kwenye orodha yako ukimaliza sura? Chagua \"Kifaa hiki tu\" kuweka ndani, au Hapana kutohifadhi chochote.';
  }

  @override
  String trackProgressAnimeLocal(String name) {
    return 'Save your progress on $name to your list on this device as you watch?';
  }

  @override
  String trackProgressMangaLocal(String name) {
    return 'Save your progress on $name to your list on this device when you finish a chapter?';
  }

  @override
  String get downloadClearQueue => 'Clear queue';

  @override
  String downloadClearQueueConfirm(int count) {
    return 'Cancel all $count downloads in the queue? What was already downloaded is deleted.';
  }

  @override
  String get castTitle => 'Cast to device';

  @override
  String get castSearching => 'Looking for devices on your network…';

  @override
  String get castNoDevices =>
      'No devices found. Make sure the TV or Chromecast is on the same Wi-Fi, then search again.';

  @override
  String get castRefresh => 'Search again';

  @override
  String get castFailed => 'Could not start casting';

  @override
  String get castStop => 'Stop casting';

  @override
  String castNowCasting(String name) {
    return 'Casting to $name';
  }

  @override
  String get castProtocolChromecast => 'Chromecast';

  @override
  String get castProtocolDlna => 'DLNA / Smart TV';

  @override
  String get castProtocolRoku => 'Roku';

  @override
  String get castRokuNote => 'Roku can\'t report or change the position';

  @override
  String get castControls => 'Controls';

  @override
  String get castVolume => 'TV volume';

  @override
  String castSkipPart(String name) {
    return 'Skip $name';
  }

  @override
  String get trackProgressRememberSeries => 'Remember for this series';

  @override
  String get trackProgressYes => 'Hifadhi';

  @override
  String get trackProgressReset =>
      'Swali la kuhifadhi maendeleo limewekwa upya kwa aina hii, litauliza tena';

  @override
  String get trackProgressNo => 'Hapana';

  @override
  String get trackProgressOff => 'Zima';

  @override
  String get trackProgressLocal => 'Kifaa hiki tu';

  @override
  String get trackProgressSettingAnime => 'Fuatilia maendeleo ya anime';

  @override
  String get trackProgressSettingManga =>
      'Fuatilia maendeleo ya manga na riwaya';

  @override
  String get trackProgressSettingDesc =>
      'Cha kufanya unapofungua kipindi au kumaliza sura';

  @override
  String get trackProgressAsk => 'Uliza';

  @override
  String get trackProgressAlways => 'Daima';

  @override
  String get dantotsuImport => 'Ingiza kutoka Dantotsu';

  @override
  String get dantotsuImportDesc =>
      'Soma nakala ya mipangilio ya Dantotsu (.ani, au .sani iliyosimbwa)';

  @override
  String get dantotsuPick => 'Chagua nakala ya Dantotsu';

  @override
  String get dantotsuNothing => 'Hakuna kinachoweza kuingizwa kutoka faili hii';

  @override
  String get dantotsuApply => 'Ingiza vilivyochaguliwa';

  @override
  String dantotsuDone(int done, int total) {
    return 'Zimeingizwa $done kati ya $total';
  }

  @override
  String get dantotsuGroupAccounts => 'Akaunti';

  @override
  String get dantotsuGroupAppearance => 'Mwonekano';

  @override
  String get dantotsuGroupExtensions => 'Viendelezi';

  @override
  String get dantotsuGroupApp => 'Programu';

  @override
  String get dantotsuGroupPlayer => 'Kicheza';

  @override
  String get dantotsuAnilist => 'Kuingia kwa AniList';

  @override
  String get dantotsuMal => 'Kuingia kwa MyAnimeList';

  @override
  String get dantotsuDiscord => 'Tokeni ya Discord Rich Presence';

  @override
  String get dantotsuTheme => 'Mandhari';

  @override
  String get dantotsuReposAnime => 'Hazina za viendelezi vya anime';

  @override
  String get dantotsuReposManga => 'Hazina za viendelezi vya manga';

  @override
  String get dantotsuReposNovel => 'Hazina za viendelezi vya riwaya';

  @override
  String get dantotsuUpdates => 'Ukaguzi wa masasisho';

  @override
  String get dantotsuComments => 'Maoni';

  @override
  String get dantotsuActivity => 'Ukaguzi wa arifa za AniList';

  @override
  String get dantotsuDns => 'Mtoa huduma wa DNS';

  @override
  String get dantotsuPlayer => 'Kasi ya kicheza na rangi za manukuu';

  @override
  String get dantotsuWarning => 'Faili hii ina tokeni za kuingia. Iweke siri.';

  @override
  String get novelIndent => 'Ingiza aya ndani';

  @override
  String get novelIndentDesc => 'Anza kila aya kwa nafasi ya mwanzo';

  @override
  String get novelLetterSpacing => 'Nafasi ya herufi';

  @override
  String get novelSectionTranslate => 'Tafsiri';

  @override
  String get sectionExperimental => 'Majaribio';

  @override
  String get kitsuGraphqlDetail =>
      'Kurasa za maelezo za haraka zaidi (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'Pakia kichwa pamoja na wahusika, wafanyakazi na kipengee chako kwa ombi moja';

  @override
  String get togetherTitle => 'Tazama pamoja';

  @override
  String get togetherIntro =>
      'Bandika kiungo cha chumba ulichotumiwa na rafiki yako. Unajiunga mara moja na kicheza kinafunguka wanapoanza kutazama.';

  @override
  String get togetherName => 'Jina lako';

  @override
  String get togetherConnecting => 'Inaunganisha…';

  @override
  String get togetherLeave => 'Ondoka chumbani';

  @override
  String get togetherYou => 'Wewe';

  @override
  String get togetherNoChat => 'Bado hakuna ujumbe';

  @override
  String get togetherChatHint => 'Ujumbe';

  @override
  String get togetherCopyInvite => 'Nakili mwaliko';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'Seva na chumba vimenakiliwa';

  @override
  String get togetherConnectionLost => 'Muunganisho umepotea';

  @override
  String togetherConnectedTo(String room) {
    return 'Umeunganishwa kwenye $room';
  }

  @override
  String togetherFailed(String error) {
    return 'Imeshindwa kuunganisha: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name amejiunga';
  }

  @override
  String togetherLeft(String name) {
    return '$name ameondoka';
  }

  @override
  String togetherPaused(String name) {
    return '$name amesimamisha';
  }

  @override
  String togetherResumed(String name) {
    return '$name ameendelea';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name ameruka hadi $time';
  }

  @override
  String get togetherFollowFailed =>
      'Imeshindwa kufungua kipindi cha mwenyeji. Kifungue mwenyewe.';

  @override
  String get togetherJoinRole => 'Jiunge na chumba';

  @override
  String get togetherOpenHost => 'Fungua kipindi cha mwenyeji';

  @override
  String get togetherShowChat => 'Onyesha gumzo la moja kwa moja';

  @override
  String get togetherWaitingHost => 'Inasubiri mwenyeji aanze kipindi';

  @override
  String get togetherRoomLink => 'Kiungo cha chumba';

  @override
  String get togetherBadLink => 'Hicho si kiungo cha chumba';

  @override
  String get togetherHostClosed => 'Mwenyeji amefunga chumba';

  @override
  String get togetherNowPlaying => 'Inacheza sasa';

  @override
  String togetherWatchingCount(int count) {
    return '$count wanatazama';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user anataka kusimamisha';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user anataka kuendelea';
  }

  @override
  String get togetherChip => 'Pamoja';

  @override
  String get togetherSettingsDesc => 'Jiunge na chumba cha rafiki kwa kiungo';

  @override
  String get novelBilingual => 'Onyesha asili na tafsiri';

  @override
  String get novelBilingualDesc =>
      'Kila aya inaonyesha maandishi asili na tafsiri yake chini yake';

  @override
  String get novelTranslateTo => 'Tafsiri kwenda';

  @override
  String get novelTranslateOff => 'Zima';

  @override
  String get novelSectionSpeech => 'Maandishi kwa sauti';

  @override
  String get novelSpeechRate => 'Kasi ya sauti';

  @override
  String get novelSpeechPitch => 'Mwinuko wa sauti';

  @override
  String get novelSpeak => 'Soma kwa sauti';

  @override
  String get novelSpeakStop => 'Acha kusoma kwa sauti';

  @override
  String get novelTranslate => 'Tafsiri sura';

  @override
  String get novelTranslateShowOriginal => 'Onyesha asili';

  @override
  String novelTranslateFailed(String error) {
    return 'Kutafsiri kumeshindwa: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'Maandishi kwa sauti hayapatikani kwenye kifaa hiki';

  @override
  String get novelSpeechVoice => 'Sauti';

  @override
  String get novelSpeechVoiceDefault => 'Chaguomsingi la mfumo';

  @override
  String get novelSpeakPrevious => 'Mstari uliotangulia';

  @override
  String get novelSpeakNext => 'Mstari unaofuata';

  @override
  String get novelTapPaging => 'Gusa kingo kugeuza ukurasa';

  @override
  String get novelTapPagingDesc =>
      'Gusa upande wa kushoto au kulia kusogeza ukurasa, katikati huonyesha vidhibiti';

  @override
  String get novelPaged => 'Page turning';

  @override
  String get novelPagedDesc =>
      'Split the chapter into pages and swipe or tap to turn them instead of scrolling';

  @override
  String novelPageOf(int current, int total) {
    return 'Page $current of $total';
  }

  @override
  String get novelPaginating => 'Laying out pages';

  @override
  String get novelTools => 'Contents, search and highlights';

  @override
  String get novelContents => 'Contents';

  @override
  String get novelContentsEmpty => 'This chapter has no headings';

  @override
  String get novelSearch => 'Search';

  @override
  String get novelSearchHint => 'Search in this chapter';

  @override
  String get novelSearchNone => 'No matches';

  @override
  String novelSearchCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count matches',
      one: '1 match',
    );
    return '$_temp0';
  }

  @override
  String get novelHighlights => 'Highlights';

  @override
  String get novelHighlightsEmpty =>
      'Select some text and tap Highlight to keep it here';

  @override
  String get novelHighlight => 'Highlight';

  @override
  String get novelHighlightNote => 'Note';

  @override
  String get novelHighlightNoteHint => 'Add a note';

  @override
  String get novelHighlightRemove => 'Remove highlight';

  @override
  String get novelHighlightFailed =>
      'Couldn\'t match that selection to the text';

  @override
  String novelMinutesLeft(int count) {
    return 'Dakika $count zimebaki';
  }

  @override
  String get novelBold => 'Maandishi mazito';

  @override
  String get novelBoldDesc => 'Tumia unene mkubwa zaidi';

  @override
  String readerFinishedChapter(String chapter) {
    return 'Umemaliza $chapter';
  }

  @override
  String readerNextUp(String chapter) {
    return 'Inayofuata: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'Iliyotangulia: $chapter';
  }

  @override
  String get readerNoPages => 'Sura hii haina kurasa';

  @override
  String get readerLoadingPages => 'Inapakia kurasa…';

  @override
  String get readerSlowPage => 'Bado inapakia ukurasa huu…';

  @override
  String get readerPageFailed => 'Imeshindwa kupakia ukurasa huu';

  @override
  String get playerShowComments => 'Onyesha maoni';

  @override
  String get playerHideComments => 'Ficha maoni';

  @override
  String get playerSubtitles => 'Manukuu';

  @override
  String get playerSubtitlesOff => 'Manukuu yamezimwa';

  @override
  String get playerAudio => 'Sauti';

  @override
  String get playerAddSubtitle => 'Ongeza faili ya manukuu';

  @override
  String get playerAddAudio => 'Ongeza faili ya sauti';

  @override
  String get playerChapters => 'Sura';

  @override
  String get playerSkipSubmit => 'Submit skip times';

  @override
  String get playerSkipSubmitDesc =>
      'Mark where the opening, ending or recap starts and ends in this episode and share it with AniSkip, so everyone gets the skip button.';

  @override
  String get playerSkipStart => 'Start';

  @override
  String get playerSkipEnd => 'End';

  @override
  String get playerSkipUseNow => 'Use current position';

  @override
  String get playerSkipSend => 'Submit to AniSkip';

  @override
  String get playerSkipSent => 'Skip times submitted to AniSkip, thank you';

  @override
  String playerSkipFailed(String error) {
    return 'AniSkip refused the skip times: $error';
  }

  @override
  String get playerUnsupported =>
      'The video player can\'t run on this device (its Android version is too old for the bundled player library). Tap to copy the details.';

  @override
  String get playerSkipNoMal =>
      'This title has no MyAnimeList id, AniSkip can\'t take it';

  @override
  String get playerNoChapters => 'Hakuna sura';

  @override
  String get playerTimestamp => 'Muhuri wa muda';

  @override
  String get playerAutoPlayDelay => 'Hesabu ya kipindi kijacho';

  @override
  String get playerWatchedAt => 'Hesabu kama imetazamwa kwa';

  @override
  String playerNextIn(int seconds) {
    return 'Kipindi kijacho baada ya sekunde $seconds';
  }

  @override
  String get playerPlayNow => 'Cheza sasa';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: itaruka kiotomatiki kwa kichwa hiki';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: haitaruka kiotomatiki kwa kichwa hiki';
  }

  @override
  String get playerAudioLanguage => 'Lugha ya sauti unayopendelea';

  @override
  String get playerLanguageOrderHint =>
      'Tenganisha lugha kwa koma. Ya kwanza itakayopatikana ndiyo hutumika.';

  @override
  String get playerPip => 'Picha ndani ya picha';

  @override
  String get playerAutoPip => 'Picha ndani ya picha unapotoka';

  @override
  String get playerAutoPipDesc =>
      'Endelea kucheza kwenye dirisha dogo unapotoka kwenye programu';

  @override
  String playerAutoPlaying(String title) {
    return 'Inacheza $title inayofuata…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'Imeshindwa kusakinisha shader: $error';
  }

  @override
  String playerChapter(int number) {
    return 'Sura $number';
  }

  @override
  String get playerPerTitle => 'Kwa kichwa hiki tu';

  @override
  String get playerPerTitleDesc =>
      'Weka chaguo hizi kwa kichwa hiki na usiguse chaguomsingi zako';

  @override
  String get playerSwapGestures => 'Badilisha pande za kutelezesha';

  @override
  String get playerSwapGesturesDesc => 'Mwangaza kushoto na sauti kulia';

  @override
  String get playerOpenBig => 'Fungua kwa mwonekano mkubwa';

  @override
  String get playerOpenBigDesc =>
      'Anza kicheza skrini nzima badala ya kuonyesha orodha ya vipindi';

  @override
  String get playerPauseOnBlur => 'Sitisha ukiwa nje ya programu';

  @override
  String get playerPauseOnBlurDesc =>
      'Sitisha programu inapofunikwa, kama paneli ya arifa, na uendelee ukirudi';

  @override
  String get playerAudioOutput => 'Pato la sauti';

  @override
  String get fontAppDefault => 'Fonti ya programu';

  @override
  String get fontImport => 'Ingiza fonti';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'Kuchelewa kwa manukuu';

  @override
  String get playerAudioDelay => 'Kuchelewa kwa sauti';

  @override
  String get playerDelayReset => 'Weka upya';

  @override
  String get playerOnlineSubtitles => 'Manukuu ya mtandaoni';

  @override
  String get playerOnlineSearchHint => 'Kichwa na kipindi';

  @override
  String get playerOnlineNone => 'Hakuna manukuu yaliyopatikana';

  @override
  String playerOnlineFailed(String error) {
    return 'Utafutaji wa manukuu umeshindwa: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'Imeshindwa kupakua manukuu haya: $error';
  }

  @override
  String get playerOnlineMatch => 'Inalingana na faili hii';

  @override
  String get playerOnlineEpisode => 'Ulinganifu wa kipindi';

  @override
  String playerOnlineDownloads(int count) {
    return 'Upakuaji $count';
  }

  @override
  String get playerSeekPreview => 'Hakiki ya kutafuta';

  @override
  String get playerSeekPreviewDesc =>
      'Onyesha hakiki ndogo ya fremu juu ya upau wa kutafuta unapoburuta. Hufungua kisimbuaji cha pili cha ubora wa chini, kwa hivyo hutumia data zaidi kwenye stream.';

  @override
  String get playerSettingsChip => 'Mipangilio';

  @override
  String get playerAudioDevice => 'Kifaa cha sauti';

  @override
  String get settingsDownloads => 'Upakuaji';

  @override
  String get settingsDownloadsDesc =>
      'Vipindi vya nje ya mtandao, foleni na hali ya nje ya mtandao';

  @override
  String get downloadsTitle => 'Upakuaji';

  @override
  String get widgetContinue => 'Continue';

  @override
  String get widgetReleases => 'Releasing soon';

  @override
  String get widgetMore => 'Also in progress';

  @override
  String get widgetNothing => 'Nothing to continue yet';

  @override
  String get downloadStorageTitle => 'Storage';

  @override
  String downloadStorageSummary(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count downloads',
      one: '1 download',
    );
    return '$_temp0 · $size';
  }

  @override
  String downloadStorageWatched(String size) {
    return '$size already watched or read';
  }

  @override
  String get downloadFreeUp => 'Free up space';

  @override
  String downloadFreeUpConfirm(int count, String size) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count watched downloads',
      one: '1 watched download',
    );
    return 'Delete $_temp0 and free $size?';
  }

  @override
  String downloadFreed(String size) {
    return 'Freed $size';
  }

  @override
  String get downloadDeleteWatched => 'Delete watched';

  @override
  String get downloadDeleteAll => 'Delete all';

  @override
  String downloadDeleteAllConfirm(String title) {
    return 'Delete every download of $title?';
  }

  @override
  String get downloadNothingWatched =>
      'Nothing you have finished is downloaded';

  @override
  String get downloadStorageEmpty => 'No downloads are using space';

  @override
  String get downloadsOpenDesc =>
      'Ona foleni na kila kitu kilichohifadhiwa kwenye kifaa hiki';

  @override
  String get downloadTitle => 'Pakua';

  @override
  String get downloadAlready => 'Tayari imepakuliwa au iko kwenye foleni';

  @override
  String get downloadPickStream => 'Pakua stream ipi?';

  @override
  String get downloadPickSubtitle => 'Pakua manukuu yapi?';

  @override
  String get downloadPickAudio => 'Pakua wimbo upi wa sauti?';

  @override
  String get downloadNoAudio => 'Hakuna sauti ya ziada';

  @override
  String get downloadAudio => 'Sauti';

  @override
  String get downloadNoSubtitle => 'Hakuna manukuu';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'Stream hii ni orodha ya kucheza ya HLS. Kuipakua kunahitaji kiongezi cha FFmpeg.';

  @override
  String get downloadSourceMissing =>
      'Chanzo cha kipindi hiki hakijasakinishwa';

  @override
  String get downloadWaitingConnection => 'Inasubiri muunganisho';

  @override
  String get downloadSubtitles => 'Manukuu';

  @override
  String get downloadDownloaded => 'Imepakuliwa';

  @override
  String get downloadOffline => 'Nje ya mtandao';

  @override
  String get downloadDelete => 'Futa upakuaji';

  @override
  String get downloadCancel => 'Ghairi';

  @override
  String get downloadPause => 'Sitisha';

  @override
  String get downloadPaused => 'Imesitishwa';

  @override
  String get downloadResume => 'Endelea';

  @override
  String get downloadPauseAll => 'Sitisha zote';

  @override
  String get downloadResumeAll => 'Endelea zote';

  @override
  String get downloadQueuedState => 'Inasubiri kwenye foleni';

  @override
  String get downloadResolving => 'Inapata stream…';

  @override
  String get downloadUsedFallback =>
      'Hakuna stream inayolingana, imetumia ya kwanza';

  @override
  String get downloadTabQueue => 'Foleni';

  @override
  String get downloadTabDone => 'Imekamilika';

  @override
  String get downloadTabFailed => 'Imeshindwa';

  @override
  String get downloadEmptyQueue => 'Hakuna kinachopakuliwa';

  @override
  String get downloadEmptyDone => 'Bado hakuna kilichopakuliwa';

  @override
  String get downloadEmptyFailed => 'Hakuna upakuaji ulioshindwa';

  @override
  String get downloadNext => 'Kipindi kinachofuata';

  @override
  String downloadNextN(int count) {
    return 'Vipindi $count vinavyofuata';
  }

  @override
  String downloadUnwatched(int count) {
    return 'Vyote ambavyo havijatazamwa ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'Kundi hili ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'Vipindi vyote ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'vipindi $count viko kwenye foleni',
      one: 'kipindi 1 kiko kwenye foleni',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name imepakuliwa';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name imeshindwa kupakuliwa';
  }

  @override
  String downloadStorage(String size) {
    return '$size zimetumika na upakuaji';
  }

  @override
  String get downloadQueueHeader => 'Foleni';

  @override
  String get downloadParallel => 'Upakuaji kwa wakati mmoja';

  @override
  String get downloadParallelDesc =>
      'Pakua moja baada ya nyingine au kadhaa kwa pamoja';

  @override
  String get downloadOneByOne => 'Moja baada ya nyingine';

  @override
  String get downloadNotifications => 'Arifa za upakuaji';

  @override
  String get downloadNotificationsDesc =>
      'Maendeleo ya moja kwa moja pale mfumo unapoauni, vinginevyo ujumbe upakuaji ukiisha';

  @override
  String get downloadNotifyLive => 'Moja kwa moja';

  @override
  String get downloadNotifyDone => 'Ikiisha';

  @override
  String get downloadNotifyOff => 'Zima';

  @override
  String get downloadInfoFile =>
      'Andika faili ya taarifa kando ya kila upakuaji';

  @override
  String get downloadInfoFileDesc =>
      'Huhifadhi stream, ubora, manukuu na nyakati za kuruka kama faili ndogo ya .json';

  @override
  String get offlineHeader => 'Nje ya mtandao';

  @override
  String get offlineModeDesc =>
      'Otomatiki huenda nje ya mtandao tu programu inapoanza bila muunganisho. Daima hubaki nje ya mtandao hadi ubadilishe.';

  @override
  String get offlineModeOff => 'Zima';

  @override
  String get offlineModeAlways => 'Daima';

  @override
  String get offlineModeOn =>
      'Hali ya nje ya mtandao imewashwa. Mabadiliko yanahifadhiwa hapa na kutumwa ukirudi mtandaoni.';

  @override
  String get offlineSaved =>
      'Imehifadhiwa kwenye kifaa hiki, itasawazishwa ukiwa mtandaoni';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mabadiliko $count yamesawazishwa',
      one: 'badiliko 1 limesawazishwa',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mabadiliko $count yanasubiri kusawazishwa',
      one: 'badiliko 1 linasubiri kusawazishwa',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'Mabadiliko yanayosubiri kusawazishwa';

  @override
  String get offlinePendingNone => 'Hakuna kinachosubiri';

  @override
  String get offlineSyncNow => 'Sawazisha sasa';

  @override
  String get offlineDiscard => 'Tupa';

  @override
  String get downloadNotOffline =>
      'Kipindi hiki hakijapakuliwa, kwa hivyo hakipatikani nje ya mtandao';

  @override
  String get offlineModeChip => 'Nje ya mtandao';

  @override
  String get downloadNextChapter => 'Sura inayofuata';

  @override
  String downloadNextChapters(int count) {
    return 'Sura $count zinazofuata';
  }

  @override
  String downloadUnread(int count) {
    return 'Zote ambazo hazijasomwa ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'Sura zote ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return 'Kurasa $done / $total';
  }

  @override
  String downloadPagesCount(int count) {
    return 'Kurasa $count';
  }

  @override
  String get downloadFfmpegTitle => 'Kiongezi cha FFmpeg kinahitajika';

  @override
  String get downloadFfmpegBody =>
      'Stream hii ni orodha ya kucheza ya HLS. Kiongezi cha FFmpeg huunganisha vipande vyake kuwa faili moja ya mp4. Bila hicho vipande vinabaki kwenye folda ya kipindi na vinachezwa kutoka hapo.';

  @override
  String get downloadFfmpegInstall => 'Sakinisha';

  @override
  String get downloadFfmpegInstalling =>
      'Inasakinisha FFmpeg, inaweza kuchukua muda…';

  @override
  String get downloadFinishing => 'Inaunganisha vipande kuwa faili moja…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return 'Sehemu $done / $total';
  }

  @override
  String get downloadTorrentNoFile => 'Torrent haina faili ya video ya kupakua';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Inapakua vipengee $count',
      one: 'Inapakua kipengee 1',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'Futa upakuaji uliotazamwa';

  @override
  String get downloadAutoDeleteDesc =>
      'Huondoa upakuaji maendeleo yako yanapofika kipindi au sura hiyo';

  @override
  String get downloadConnections => 'Miunganisho kwa kila upakuaji';

  @override
  String get downloadConnectionsDesc =>
      'Hugawanya faili kubwa kuwa sehemu zinazopakuliwa kwa wakati mmoja. Baadhi ya seva huweka kikomo.';

  @override
  String get downloadPlayChoice => 'Cheza kutoka';

  @override
  String get downloadPlayLocalDesc => 'Faili iliyohifadhiwa kwenye kifaa hiki';

  @override
  String get downloadPlayStream => 'Stream mtandaoni';

  @override
  String get downloadPlayStreamDesc => 'Pakia kipindi kutoka kwenye chanzo';

  @override
  String get offlineFeedTitle => 'Imepakuliwa kwenye kifaa hiki';

  @override
  String get offlineFeedEmpty =>
      'Pakua kitu ukiwa mtandaoni na kitaonekana hapa';

  @override
  String get offlineEnabled => 'Hali ya nje ya mtandao imewashwa';

  @override
  String get offlineDisabled => 'Hali ya nje ya mtandao imezimwa';

  @override
  String get downloadReadChoice => 'Soma kutoka';

  @override
  String get downloadReadLocalDesc =>
      'Kurasa zilizohifadhiwa kwenye kifaa hiki';

  @override
  String get downloadReadOnline => 'Soma mtandaoni';

  @override
  String get downloadReadOnlineDesc => 'Pakia sura kutoka kwenye chanzo';

  @override
  String downloadDeleteConfirm(String name) {
    return 'Kufuta $name kutoka kifaa hiki?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return 'Kughairi upakuaji wa $name? Kilichokwisha pakuliwa kitafutwa.';
  }

  @override
  String get downloadFfmpegFolder => 'Weka kama folda';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Kutupa mabadiliko $count ambayo hayakutumwa kamwe? Hili haliwezi kutenduliwa.',
      one:
          'Kutupa badiliko ambalo halikutumwa kamwe? Hili haliwezi kutenduliwa.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Inasubiri Wi-Fi';

  @override
  String get downloadWaitingMetered =>
      'Imesitishwa kwenye muunganisho wenye kikomo';

  @override
  String get downloadWifiOnly => 'Wi-Fi tu';

  @override
  String get downloadWifiOnlyDesc =>
      'Upakuaji husubiri ukiwa kwenye data ya simu';

  @override
  String get downloadMetered => 'Sitisha kwenye miunganisho yenye kikomo';

  @override
  String get downloadMeteredDesc =>
      'Pia husubiri kwenye Wi-Fi ambayo kifaa chako kinaiweka alama ya kikomo';

  @override
  String get downloadSpeedLimit => 'Kikomo cha kasi';

  @override
  String get downloadSpeedLimitDesc =>
      'Huweka kikomo cha kasi ya jumla ya upakuaji';

  @override
  String get downloadUnlimited => 'Bila kikomo';

  @override
  String get downloadMoveToTop => 'Peleka juu';

  @override
  String downloadSwarm(int seeds, int peers) {
    return 'Seeds $seeds · peers $peers';
  }

  @override
  String get downloadTorrentFile => 'Faili ipi?';

  @override
  String get downloadTorrentAuto => 'Linganisha kipindi kiotomatiki';

  @override
  String get downloadTorrentLoading => 'Inasoma torrent…';

  @override
  String get watchAutoSource =>
      'Badilisha kwenda chanzo kinachofuata kiotomatiki';

  @override
  String get watchAutoSourceDesc =>
      'Chanzo kikishindwa kupata kichwa au kupakia, jaribu chanzo kinachofuata kilichosakinishwa';

  @override
  String get extensionTest => 'Jaribu viendelezi';

  @override
  String get extensionTestCopy => 'Nakili hitilafu na kumbukumbu zake';

  @override
  String get extensionTestQuery => 'Neno la kutafuta';

  @override
  String get extensionTestRun => 'Endesha';

  @override
  String get extensionTestStop => 'Simamisha';

  @override
  String get extensionTestNone =>
      'Hakuna viendelezi vilivyosakinishwa vya aina hii';

  @override
  String get extensionTestNotRun => 'Bado haijajaribiwa';

  @override
  String get extensionTestSearch => 'Tafuta';

  @override
  String get extensionTestDetail => 'Maelezo';

  @override
  String get extensionTestUnits => 'Vipindi / sura';

  @override
  String get extensionTestLinks => 'Stream / kurasa';

  @override
  String extensionTestFailedAt(String step) {
    return 'Imeshindwa kwenye $step';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$done kati ya $total zimejaribiwa · $passed zimepita · $failed zimeshindwa';
  }

  @override
  String get extensionTestCopyLogs =>
      'Nakili kila kitu pamoja na kumbukumbu kamili';

  @override
  String get onboardingFeaturesTitle => 'Vyote mahali pamoja';

  @override
  String get onboardingFeaturesBody =>
      'Kila kitu unachofuatilia, kutazama na kusoma, bila kuhangaika na programu nyingi.';

  @override
  String get onboardingFeatureTrack => 'Fuatilia kila kitu';

  @override
  String get onboardingFeatureTrackDesc =>
      'Orodha, maendeleo na alama kwenye AniList, MyAnimeList, Simkl, Kitsu na MangaBaka.';

  @override
  String get onboardingFeatureWatch => 'Tazama na soma';

  @override
  String get onboardingFeatureWatchDesc =>
      'Sakinisha viendelezi na utiririshe anime au usome manga na riwaya moja kwa moja kwenye programu.';

  @override
  String get onboardingFeatureOffline => 'Ipeleke nje ya mtandao';

  @override
  String get onboardingFeatureOfflineDesc =>
      'Pakua vipindi na sura, na endelea bila muunganisho.';

  @override
  String get onboardingFeatureSync => 'Weka orodha zikiwa zimesawazishwa';

  @override
  String get onboardingFeatureSyncDesc =>
      'Nakili orodha yako kwenye huduma zote, au acha iliyo mbele ishinde.';

  @override
  String get onboardingServices => 'Inafanya kazi na';

  @override
  String sourceNotifyOn(String source) {
    return 'You\'ll be told when $source has something new';
  }

  @override
  String get sourceNotifyOff => 'Release notifications off';

  @override
  String get sourceNotifyNeedsSource => 'Pick a source with a match first';

  @override
  String sourceNotifyAllOut(int count) {
    return 'Everything ($count) is already out, nothing to wait for';
  }

  @override
  String get sourceNotifyTooltipOn => 'Stop release notifications';

  @override
  String get sourceNotifyTooltipOff => 'Notify me about new releases';

  @override
  String sourceFoundEpisode(String number, String source) {
    return 'Episode $number is out on $source';
  }

  @override
  String sourceFoundEpisodes(String from, String to, String source) {
    return 'Episodes $from–$to are out on $source';
  }

  @override
  String sourceFoundChapter(String number, String source) {
    return 'Chapter $number is out on $source';
  }

  @override
  String sourceFoundChapters(String from, String to, String source) {
    return 'Chapters $from–$to are out on $source';
  }

  @override
  String sourceFoundSummary(int count) {
    return '$count titles have something new';
  }

  @override
  String get navSources => 'Sources';

  @override
  String sourceInactiveOpen(String manager) {
    return 'This source belongs to $manager, which isn\'t the active extension service';
  }

  @override
  String get sourceAlertsHeader => 'Release notifications';

  @override
  String get sourceAlertsSwitch => 'Check subscribed titles';

  @override
  String get sourceAlertsSwitchDesc =>
      'Once each time the app opens, for titles you turned the bell on';

  @override
  String get sourceSkipUnstarted => 'Skip titles you haven\'t started';

  @override
  String get sourceSkipUnstartedDesc =>
      'Nothing watched or read yet, but episodes already exist';

  @override
  String get sourceSkipUnseen => 'Skip while you have unseen episodes';

  @override
  String get sourceSkipUnseenDesc =>
      'You still have released episodes to catch up on';

  @override
  String get sourceManage => 'Subscriptions';

  @override
  String sourceManageDesc(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles',
      one: '1 title',
      zero: 'No titles',
    );
    return '$_temp0';
  }

  @override
  String get sourceCheckNow => 'Check now';

  @override
  String get sourceCheckNowDesc => 'Ignores the schedule and the skip rules';

  @override
  String get sourceChecking => 'Checking…';

  @override
  String sourceCheckResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count titles have something new',
      one: '1 title has something new',
      zero: 'Nothing new',
    );
    return '$_temp0';
  }

  @override
  String get sourceEmpty => 'No subscriptions yet';

  @override
  String get sourceEmptyMessage =>
      'Tap the bell above a title\'s episodes to be told about new ones';

  @override
  String get sourceAll => 'All';

  @override
  String sourceInactive(String manager) {
    return 'Inactive: $manager';
  }

  @override
  String sourceMissingDesc(String source) {
    return '$source isn\'t installed in this extension service';
  }

  @override
  String get sourceUnreachable => 'Source isn\'t responding';

  @override
  String get sourceFinished => 'Finished';

  @override
  String get sourceSkippedCompleted => 'Skipped: completed';

  @override
  String get sourceSkippedUnstarted => 'Skipped: not started';

  @override
  String get sourceSkippedUnseen => 'Skipped: unseen episodes';

  @override
  String get sourceWaiting => 'Waiting for the next release';

  @override
  String sourceNextCheck(String when) {
    return 'Next check $when';
  }

  @override
  String get sourceSoon => 'soon';

  @override
  String sourceInHours(int count) {
    return 'in ${count}h';
  }

  @override
  String sourceInDays(int count) {
    return 'in ${count}d';
  }

  @override
  String sourceLatest(String number) {
    return 'Latest: $number';
  }

  @override
  String get sourceMute => 'Mute';

  @override
  String get sourceUnmute => 'Unmute';

  @override
  String get sourceMuted => 'Muted';

  @override
  String get sourceUnsubscribe => 'Unsubscribe';

  @override
  String get sourcePickAnother => 'Pick another source';

  @override
  String get sourceOpenExtensions => 'Open extensions';

  @override
  String get sourceNoticesEmpty => 'No release notices yet';

  @override
  String get sourceNoticesEmptyMessage =>
      'New episodes and chapters from your subscribed titles show up here';

  @override
  String get sourceOpenTitle => 'Open title';

  @override
  String get extensionsLoading => 'Loading extensions…';

  @override
  String get updateWhatsNew => 'What\'s new';

  @override
  String get updateLater => 'Later';

  @override
  String get updateSkipVersion => 'Skip this version';

  @override
  String get updatePreparing => 'Preparing…';

  @override
  String get updateDownloading => 'Downloading';

  @override
  String get updateInstalling => 'Installing…';

  @override
  String updateSizeOf(String done, String total) {
    return '$done of $total';
  }

  @override
  String updateSpeed(String speed) {
    return '$speed/s';
  }

  @override
  String updateReleased(String date) {
    return 'Released $date';
  }

  @override
  String get updateNoAsset => 'This release has no download for your device';

  @override
  String get updateUpToDate => 'You\'re on the latest version';

  @override
  String get updateIosHint =>
      'iOS builds aren\'t on the App Store. Grab the .ipa from the release page and sideload it with AltStore or SideStore';

  @override
  String get updateOpenedBrowser => 'Check your browser';

  @override
  String get updateTryAgain => 'Try again';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsNotificationsDesc =>
      'Alerts for your lists, new episodes and chapters, and comment replies';

  @override
  String get settingsAboutUpdates => 'About & updates';

  @override
  String get settingsAboutUpdatesDesc =>
      'App updates, version, logs, links and support';

  @override
  String get settingsGroupAccount => 'Your account';

  @override
  String get settingsGroupContent => 'Content';

  @override
  String get settingsGroupApp => 'App';

  @override
  String get settingsAnimeDesc =>
      'Player, subtitles, skipping, episode list and episode details';

  @override
  String get settingsMangaDesc =>
      'Reader mode, controls, display and chapter tracking';

  @override
  String get settingsNovelDesc =>
      'Text, page turning, translation and read aloud';

  @override
  String get settingsLocalPlay => 'Local play';

  @override
  String get settingsLocalPlayDesc =>
      'Play files, folders, network streams and torrents, or open a book';

  @override
  String get settingsLocalPlayVideo => 'Video';

  @override
  String get settingsLocalPlayBooks => 'Books';

  @override
  String get settingsWatchSections => 'Sections';

  @override
  String get settingsSectionLists => 'Episode and chapter lists';

  @override
  String get settingsSectionProgress => 'Progress tracking';

  @override
  String get updateChannelDesc =>
      'Stable is the tested release. Pre-release and Alpha get new features sooner but may break';

  @override
  String get checkNowDesc => 'Look for a newer version right away';

  @override
  String get generalSectionBasics => 'Language & behaviour';

  @override
  String get generalSectionSecurity => 'Security';

  @override
  String get generalSectionPrivacy => 'Privacy';

  @override
  String notificationsOtherService(String service) {
    return 'Switch to $service to open this';
  }

  @override
  String get secPlayerPlayback =>
      'Default speed, auto play, video fit, orientation and picture in picture';

  @override
  String get secPlayerSkip => 'Skip openings, endings and recaps automatically';

  @override
  String get secPlayerControls =>
      'Swipe, hold and tap gestures and seek preview';

  @override
  String get secPlayerSubtitles =>
      'Languages, appearance and subtitle rendering';

  @override
  String get secPlayerShaders => 'Anime upscaling and your own shaders';

  @override
  String get secPlayerEngine =>
      'Decoder, video and audio output, buffering. Only change these if playback has problems';

  @override
  String get secPlayerMpv => 'mpv.conf, scripts and advanced tuning';

  @override
  String get secAnimeList => 'Filler episodes and unwatched thumbnails';

  @override
  String get secProgress =>
      'When your watched or read progress is saved to your list';

  @override
  String get secAnimeDetails =>
      'Where episode titles, thumbnails and summaries come from';

  @override
  String get secReaderReading =>
      'Reading mode, page turning, zoom and next chapter';

  @override
  String get secReaderControls => 'Tap zones, volume keys and auto scroll';

  @override
  String get secReaderDisplay =>
      'Background, brightness, fullscreen and page number';

  @override
  String get secNovelText => 'Font, size, spacing, margins and page turning';

  @override
  String get secNovelTranslate => 'Translate chapters while you read';

  @override
  String get secNovelSpeech => 'Voice, speed and pitch for read aloud';

  @override
  String get secNotifyAbout => 'Pick which kinds of activity send an alert';

  @override
  String get layoutTitle => 'Layout';

  @override
  String get layoutDesc => 'Choose, move and hide the buttons on the bars';

  @override
  String get layoutHint =>
      'Drag a button to move it (hold first on a touch screen). Tap one to cut, move or hide it';

  @override
  String layoutDropInto(String zone) {
    return 'Drop in: $zone';
  }

  @override
  String layoutCutting(String name) {
    return 'Moving $name. Press a paste button to place it';
  }

  @override
  String get layoutTitleFixed => 'Title';

  @override
  String get layoutZoneTopStart => 'Top bar, before the title';

  @override
  String get layoutZoneTopEnd => 'Top bar, after the title';

  @override
  String get layoutZoneBottomStart => 'Bottom bar, left';

  @override
  String get layoutZoneBottomEnd => 'Bottom bar, right';

  @override
  String get layoutZoneSecondRow => 'Hidden: second row in normal view';

  @override
  String get layoutZoneOverflow => 'Hidden: in the more menu';

  @override
  String get layoutEmptyZone => 'Drop buttons here';

  @override
  String get layoutCut => 'Cut';

  @override
  String get layoutPaste => 'Paste here';

  @override
  String get layoutHide => 'Hide';

  @override
  String layoutMoveTo(String zone) {
    return 'Move to $zone';
  }

  @override
  String get layoutReset => 'Reset to default';

  @override
  String get layoutMore => 'More';

  @override
  String get sourceWhyAction => 'Why no alert?';

  @override
  String get sourceWhyStatus => 'Status';

  @override
  String get sourceWhyLastCheck => 'Last checked';

  @override
  String get sourceWhyNever => 'Not yet';

  @override
  String get sourceWhyNextCheck => 'Next check';

  @override
  String get sourceWhyNewest => 'Newest at the source';

  @override
  String get sourceWhyProgress => 'Your progress';

  @override
  String get sourceWhyListStatus => 'List status';

  @override
  String get sourceWhyFailures => 'Failed checks in a row';

  @override
  String get sourceWhyLastRelease => 'Last new release seen';

  @override
  String get sourceWhyVerdictNew =>
      'A new release appears here as soon as the source lists it and the next check runs.';

  @override
  String get sourceWhyVerdictAhead =>
      'The source is already ahead of your progress, so you were told about it once. Read or watch up to it to get the next alert.';

  @override
  String get sourceWhyVerdictSkipped =>
      'This title is skipped by the rules above. Change them in notification settings, or use Check now to run it anyway.';

  @override
  String get sourceWhyVerdictBroken =>
      'The source can\'t be reached or has been removed, so nothing is being checked.';

  @override
  String get sourceWhyVerdictMuted => 'This subscription is muted.';

  @override
  String get externalPlayerTitle => 'Open stream elsewhere';

  @override
  String get externalCopyUrl => 'Copy stream link';

  @override
  String get externalCopied => 'Stream link copied';

  @override
  String get externalChooser => 'Open in another app';

  @override
  String get externalVlc => 'Open in VLC';

  @override
  String get externalMpv => 'Open in mpv';

  @override
  String get externalFailed =>
      'Couldn\'t open the stream. Is the player installed?';

  @override
  String get addonInstalled => 'Installed';

  @override
  String get loadFailedActivity => 'Couldn\'t load activity';

  @override
  String get loadFailedFavourites => 'Couldn\'t load favourites. Retry';

  @override
  String get loadFailedStats => 'Couldn\'t load stats';

  @override
  String get loadFailedReplies => 'Couldn\'t load replies';

  @override
  String get cantBeUndone => 'This can\'t be undone.';

  @override
  String get searchTags => 'Search tags';

  @override
  String get spoilerTapToView => ' Spoiler, tap to view ';

  @override
  String get mediaVideo => 'Video';

  @override
  String get notificationSomeone => 'Someone';

  @override
  String get notificationATitle => 'a title';

  @override
  String get notificationAddedDetail => 'Was added to AniList';

  @override
  String get updateNoReleases => 'No releases found';

  @override
  String get updateInvalidResponse => 'Invalid update response';

  @override
  String get commentsRateLimited => 'Rate limited';

  @override
  String get commentsConnectFailed => 'Failed to connect';

  @override
  String get dnsNoRecords => 'No A records returned';

  @override
  String get importTokenRejected => 'Token rejected';

  @override
  String get developerRoleLead => 'Lead Developer';

  @override
  String get developerRoleModerator => 'Discord Moderator';

  @override
  String extensionManagerTitle(String type) {
    return '$type manager';
  }

  @override
  String extensionsOfType(String type) {
    return '$type extensions';
  }

  @override
  String extensionSettingsTitle(String name) {
    return '$name settings';
  }

  @override
  String extensionNoSettings(String name) {
    return '$name doesn\'t provide any settings.';
  }

  @override
  String notificationAired(String episode, String title) {
    return 'Episode $episode of $title aired';
  }

  @override
  String notificationAiredDetail(String episode) {
    return 'Episode $episode aired';
  }

  @override
  String notificationAdded(String title) {
    return '$title was added to AniList';
  }

  @override
  String updateNotFound(String message) {
    return 'Update server couldn\'t find that release: $message';
  }
}
