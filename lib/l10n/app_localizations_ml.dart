// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'അനിമെയും മംഗയും ട്രാക്ക് ചെയ്യാൻ\nപുതിയ ബെസ്റ്റ് ആപ്പ്';

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
  String get loadMore => 'കൂടുതൽ കാണിക്കൂ';

  @override
  String get login => 'ലോഗിൻ';

  @override
  String get continueAsGuest => 'ഗസ്റ്റായി തുടരൂ';

  @override
  String get getStarted => 'തുടങ്ങാം';

  @override
  String get loginWithToken => 'ടോക്കൺ ഉപയോഗിച്ച് ലോഗിൻ';

  @override
  String get pasteTokenHint => 'നിന്റെ ആക്സസ് ടോക്കൺ പേസ്റ്റ് ചെയ്യൂ';

  @override
  String loginTo(String service) {
    return '$service-ലേക്ക് ലോഗിൻ ചെയ്യൂ';
  }

  @override
  String get settings => 'സെറ്റിംഗ്സ്';

  @override
  String get account => 'അക്കൗണ്ട്';

  @override
  String get about => 'ആപ്പിനെക്കുറിച്ച്';

  @override
  String get language => 'ഭാഷ';

  @override
  String get animationSpeed => 'ആനിമേഷനുകൾ';

  @override
  String get animationSpeedDesc =>
      'ആപ്പിലെ ട്രാൻസിഷനുകളുടെയും എൻട്രി ഇഫക്റ്റുകളുടെയും വേഗത';

  @override
  String get animationSpeedOff => 'ഓഫ്';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'എക്സ്റ്റൻഷനുകൾ',
      one: 'എക്സ്റ്റൻഷൻ',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'അറിയാത്ത സോഴ്സ്';

  @override
  String get install => 'ഇൻസ്റ്റാൾ';

  @override
  String get update => 'അപ്ഡേറ്റ്';

  @override
  String get uninstall => 'അൺഇൻസ്റ്റാൾ';

  @override
  String get updateInstallCancelled =>
      'ഇൻസ്റ്റാൾ റദ്ദാക്കി. ഇൻസ്റ്റാൾ ചെയ്ത ആപ്പുമായി ഒത്തുപോകുന്നില്ലെന്ന് Android പറഞ്ഞാൽ, സിഗ്നേച്ചർ വ്യത്യസ്തമാണ്: ആദ്യം ഇപ്പോഴത്തെ വേർഷൻ അൺഇൻസ്റ്റാൾ ചെയ്യൂ, എന്നിട്ട് അപ്ഡേറ്റ് ഇൻസ്റ്റാൾ ചെയ്യൂ';

  @override
  String updateInstallFailed(String error) {
    return 'അപ്ഡേറ്റ് ആയില്ല: $error';
  }

  @override
  String get appLock => 'ആപ്പ് ലോക്ക്';

  @override
  String get appLockDesc =>
      'ആപ്പ് തുറക്കുമ്പോഴോ കുറച്ചുനേരം കഴിഞ്ഞ് തിരികെ വരുമ്പോഴോ പാസ്‌കോഡ് ചോദിക്കും';

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
  String get appLockUnlock => 'പാസ്‌കോഡ് നൽകൂ';

  @override
  String get appLockWrong => 'പാസ്‌കോഡ് തെറ്റാണ്';

  @override
  String appLockWait(String seconds) {
    return 'കുറേ തവണ ശ്രമിച്ചു, $seconds സെക്കൻഡ് കാത്തിരിക്കൂ';
  }

  @override
  String get appLockNew => 'ഒരു പാസ്‌കോഡ് തിരഞ്ഞെടുക്കൂ';

  @override
  String get appLockNewHint => '4 മുതൽ 8 അക്കങ്ങൾ';

  @override
  String get appLockConfirm => 'ഒരിക്കൽ കൂടി നൽകൂ';

  @override
  String get appLockMismatch => 'പാസ്‌കോഡുകൾ ചേരുന്നില്ല';

  @override
  String get appLockOn => 'പാസ്‌കോഡ് സെറ്റ് ചെയ്തു';

  @override
  String get appLockRemoveTitle => 'ലോക്ക് ഓഫ് ആക്കാൻ പാസ്‌കോഡ് നൽകൂ';

  @override
  String get installFailed => 'ഇൻസ്റ്റാൾ ചെയ്യാനായില്ല';

  @override
  String get updateFailed => 'അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

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
  String get noSourceSettings => 'ഈ സോഴ്സിന് സെറ്റിംഗ്സ് ഒന്നുമില്ല';

  @override
  String get addPluginRepository => 'പ്ലഗിൻ റിപ്പോസിറ്ററി ചേർക്കൂ';

  @override
  String get pluginIndexUrlHint => 'പ്ലഗിൻ ഇൻഡക്സ് URL';

  @override
  String get addRepository => 'റിപ്പോസിറ്ററി ചേർക്കൂ';

  @override
  String get pluginRepoUpdated => 'പ്ലഗിൻ റിപ്പോസിറ്ററി അപ്ഡേറ്റ് ചെയ്തു';

  @override
  String get pluginRepoUpdateFailed =>
      'പ്ലഗിൻ റിപ്പോസിറ്ററി റിഫ്രഷ് ചെയ്യാനായില്ല';

  @override
  String get ok => 'ശരി';

  @override
  String get cancel => 'റദ്ദാക്കൂ';

  @override
  String get yes => 'അതെ';

  @override
  String get no => 'ഇല്ല';

  @override
  String get save => 'സേവ്';

  @override
  String get reset => 'റീസെറ്റ്';

  @override
  String get clear => 'ക്ലിയർ';

  @override
  String get test => 'ടെസ്റ്റ്';

  @override
  String get testing => 'ടെസ്റ്റ് ചെയ്യുന്നു…';

  @override
  String get resolving => 'റിസോൾവ് ചെയ്യുന്നു…';

  @override
  String get none => 'ഒന്നുമില്ല';

  @override
  String get selectMediaService => 'മീഡിയ സർവീസ് തിരഞ്ഞെടുക്കൂ';

  @override
  String get pickColor => 'ഒരു നിറം തിരഞ്ഞെടുക്കൂ';

  @override
  String get colorPickerCustom => 'കസ്റ്റം';

  @override
  String get colorPickerTransparent => 'ട്രാൻസ്പരന്റ്';

  @override
  String get ltr => 'ഇടത്തു നിന്ന് വലത്തേക്ക്';

  @override
  String get searchSettings => 'സെറ്റിംഗ്സ് തിരയൂ';

  @override
  String nothingMatches(String query) {
    return '\"$query\" ന് ഒന്നും ചേരുന്നില്ല';
  }

  @override
  String searchCategory(String category) {
    return '$category തിരയൂ';
  }

  @override
  String get settingsAppearance => 'രൂപഭാവം';

  @override
  String get settingsAppearanceDesc => 'തീം, നിറങ്ങൾ, ഗ്ലാസ് മോഡ്';

  @override
  String get settingsGeneral => 'പൊതുവായത്';

  @override
  String get settingsGeneralDesc => 'ഭാഷയും പെരുമാറ്റവും';

  @override
  String get settingsNetwork => 'നെറ്റ്‌വർക്ക്';

  @override
  String get settingsNetworkDesc =>
      'യൂസർ ഏജന്റ്, സർട്ടിഫിക്കറ്റുകൾ, DNS, പ്രോക്സി';

  @override
  String get settingsAccountDesc => 'ട്രാക്കിംഗ് സർവീസും സൈൻ ഇനും';

  @override
  String get settingsUpdates => 'അപ്ഡേറ്റുകൾ';

  @override
  String get amoledBlack => 'AMOLED ബ്ലാക്ക്';

  @override
  String get amoledBlackDesc => 'ഡാർക്ക് മോഡിൽ തനി കറുപ്പ് പ്രതലങ്ങൾ';

  @override
  String get glassMode => 'ഗ്ലാസ് മോഡ്';

  @override
  String get glassModeDesc => 'നിന്റെ ലൈബ്രറി ആർട്ടിന് മുകളിൽ മങ്ങിയ പ്രതലങ്ങൾ';

  @override
  String get shelfFrame => 'സെക്ഷനുകൾക്ക് ചുറ്റും ഫ്രെയിം';

  @override
  String get shelfFrameDesc =>
      'ഓരോ ഷെൽഫിനും പിന്നിൽ ഒരു കാർഡ് കാണിക്കൂ, അല്ലെങ്കിൽ വരികൾ നേരിട്ട് പേജിൽ വയ്ക്കൂ';

  @override
  String get settingsExtensionsDesc =>
      'സോഴ്സ് മാനേജർമാർ, റിപ്പോസിറ്ററികൾ, എക്സ്റ്റൻഷൻ ഓപ്ഷനുകൾ';

  @override
  String get settingsAddons => 'ആഡ്-ഓണുകൾ';

  @override
  String get customPath => 'കസ്റ്റം സ്റ്റോറേജ് പാത്ത്';

  @override
  String get customPathDesc =>
      'ആപ്പ് ഡാറ്റ സൂക്ഷിക്കുന്ന സ്ഥലം. റീസെറ്റ് ചെയ്യാൻ ലോങ് പ്രസ് ചെയ്യൂ';

  @override
  String get selectDirectory => 'ഡയറക്ടറി തിരഞ്ഞെടുക്കൂ';

  @override
  String get differentCacheManager => 'ബദൽ ഇമേജ് കാഷെ';

  @override
  String get differentCacheManagerDesc =>
      'ചിത്രങ്ങൾക്ക് വേറൊരു കാഷെ മാനേജർ ഉപയോഗിക്കൂ';

  @override
  String get backupAndRestore => 'ബാക്കപ്പും റീസ്റ്റോറും';

  @override
  String get backupAndRestoreDesc =>
      'നിന്റെ പ്രിഫറൻസുകൾ സേവ് ചെയ്യൂ അല്ലെങ്കിൽ ലോഡ് ചെയ്യൂ';

  @override
  String get backup => 'ബാക്കപ്പ്';

  @override
  String get restore => 'റീസ്റ്റോർ';

  @override
  String get loadExtensionsIcon => 'എക്സ്റ്റൻഷൻ ഐക്കണുകൾ ലോഡ് ചെയ്യൂ';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'എക്സ്റ്റൻഷൻ ലിസ്റ്റുകളിൽ സോഴ്സ് ഐക്കണുകൾ കാണിക്കൂ';

  @override
  String get sectionStorage => 'സ്റ്റോറേജ്';

  @override
  String get sectionManagers => 'മാനേജർമാർ';

  @override
  String get sectionOptions => 'ഓപ്ഷനുകൾ';

  @override
  String get backupTabBackup => 'ബാക്കപ്പ് എടുക്കൂ';

  @override
  String get backupTabRestore => 'റീസ്റ്റോർ';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories വിഭാഗങ്ങളിലായി $keys സെറ്റിംഗ്സ്';
  }

  @override
  String backupLastBackup(Object time) {
    return 'അവസാന ബാക്കപ്പ് $time';
  }

  @override
  String get backupNever => 'ഇതുവരെ ബാക്കപ്പ് ഇല്ല';

  @override
  String get backupSelectAll => 'എല്ലാം തിരഞ്ഞെടുക്കൂ';

  @override
  String get backupClearAll => 'ക്ലിയർ';

  @override
  String backupKeys(Object count) {
    return '$count സെറ്റിംഗ്സ്';
  }

  @override
  String get backupPassword => 'പാസ്‌വേഡ് (ഓപ്ഷണൽ)';

  @override
  String get backupPasswordHint => 'ഡിഫോൾട്ട് ഉപയോഗിക്കാൻ ഒഴിച്ചിടൂ';

  @override
  String get backupSensitive =>
      'ലോഗിൻ ടോക്കണുകൾ ഉൾപ്പെടുന്നു. ഈ ഫയൽ സ്വകാര്യമായി സൂക്ഷിക്കൂ';

  @override
  String get backupCreate => 'ബാക്കപ്പ് ഉണ്ടാക്കൂ';

  @override
  String backupSaved(Object name) {
    return 'ബാക്കപ്പ് $name ആയി സേവ് ചെയ്തു';
  }

  @override
  String backupFailed(Object error) {
    return 'ബാക്കപ്പ് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get backupPickFile => 'ഒരു ബാക്കപ്പ് ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get backupPickFileDesc => 'Dartotsu ഉണ്ടാക്കിയ ഒരു .json ഫയൽ എടുക്കൂ';

  @override
  String get backupChooseAnother => 'വേറൊരു ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get backupCreatedAt => 'ഉണ്ടാക്കിയത്';

  @override
  String get backupAppVersion => 'ആപ്പ് വേർഷൻ';

  @override
  String get backupDevice => 'ഉപകരണം';

  @override
  String get backupAccounts => 'അക്കൗണ്ടുകൾ';

  @override
  String get backupSize => 'വലുപ്പം';

  @override
  String get backupEncrypted => 'പാസ്‌വേഡ് സംരക്ഷിതം';

  @override
  String get backupUnlock => 'അൺലോക്ക്';

  @override
  String get backupWrongPassword =>
      'ഈ ഫയൽ വായിക്കാനായില്ല. പാസ്‌വേഡ് ഒന്നുകൂടി നോക്കൂ';

  @override
  String get backupRestoreSelected => 'തിരഞ്ഞെടുത്തത് റീസ്റ്റോർ ചെയ്യൂ';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count സെറ്റിംഗ്സ് റീസ്റ്റോർ ചെയ്യണോ? ഈ വിഭാഗങ്ങളിലെ നിലവിലെ മൂല്യങ്ങൾ മാറ്റിയെഴുതപ്പെടും.';
  }

  @override
  String get backupRestored =>
      'റീസ്റ്റോർ ചെയ്തു. എല്ലാം ബാധകമാകാൻ ആപ്പ് റീസ്റ്റാർട്ട് ചെയ്യൂ';

  @override
  String backupRestoreFailed(Object error) {
    return 'റീസ്റ്റോർ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get backupSelectOne => 'കുറഞ്ഞത് ഒരു വിഭാഗമെങ്കിലും തിരഞ്ഞെടുക്കൂ';

  @override
  String get backupCatTheme => 'രൂപഭാവം';

  @override
  String get backupCatThemeDesc =>
      'തീം, നിറങ്ങൾ, ഗ്ലാസ്, ഫോണ്ടുകൾ, കാർഡ് സ്റ്റൈൽ';

  @override
  String get backupCatCommon => 'പൊതുവായത്';

  @override
  String get backupCatCommonDesc =>
      'ഭാഷ, സ്റ്റോറേജ്, നെറ്റ്‌വർക്ക്, എക്സ്റ്റൻഷൻ ഓപ്ഷനുകൾ';

  @override
  String get backupCatPlayer => 'പ്ലെയർ';

  @override
  String get backupCatPlayerDesc => 'പ്ലെയർ പ്രിഫറൻസുകൾ';

  @override
  String get backupCatReader => 'റീഡർ';

  @override
  String get backupCatReaderDesc => 'റീഡർ പ്രിഫറൻസുകൾ';

  @override
  String get backupCatProtected => 'അക്കൗണ്ടുകൾ';

  @override
  String get backupCatProtectedDesc => 'ലോഗിൻ ടോക്കണുകളും സൈൻ ഇൻ ഡാറ്റയും';

  @override
  String get backupCatOther => 'സർവീസുകളും ഫീഡുകളും';

  @override
  String get backupCatOtherDesc =>
      'ഫീഡ് ലേഔട്ടുകൾ, ലിസ്റ്റുകൾ, സർവീസ് ഓപ്ഷനുകൾ';

  @override
  String get logFile => 'ലോഗ് ഫയൽ';

  @override
  String get logFileDesc =>
      'ആപ്പ് ലോഗ് ഷെയർ ചെയ്യൂ, അല്ലെങ്കിൽ Linux-ൽ അതിന്റെ പാത്ത് കോപ്പി ചെയ്യൂ';

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
  String get logFileCopied => 'ലോഗ് പാത്ത് കോപ്പി ചെയ്തു';

  @override
  String get donateSheetTitle => 'Dartotsu ഇഷ്ടപ്പെട്ടോ?';

  @override
  String get donateSheetMessage =>
      'Dartotsu ഉണ്ടാക്കുന്നതും നോക്കി നടത്തുന്നതും ഒരാൾ മാത്രമാണ്. ഇത് നിനക്ക് ഉപകാരപ്പെടുന്നുണ്ടെങ്കിൽ, ഡെവലപ്മെന്റിനെ സപ്പോർട്ട് ചെയ്യൂ.';

  @override
  String get donateLater => 'പിന്നീട് ആവാം';

  @override
  String get glassBackground => 'ഗ്ലാസ് ബാക്ക്ഗ്രൗണ്ട്';

  @override
  String get glassBackgroundDesc =>
      'ഒരു ഇമേജ് ലിങ്ക് നൽകിയില്ലെങ്കിൽ നിന്റെ പ്രൊഫൈൽ ബാനർ';

  @override
  String get glassBackgroundHint => 'ഇമേജ് ലിങ്ക് (ബാനറിന് ഒഴിച്ചിടൂ)';

  @override
  String get followCover => 'കവർ പിന്തുടരൂ';

  @override
  String get followCoverDesc =>
      'നിറങ്ങൾ ബാക്ക്ഗ്രൗണ്ടിനെയും, ഡീറ്റെയിൽ പേജുകളിൽ കവറിനെയും പിന്തുടരും';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'കാർഡ് സ്റ്റൈൽ';

  @override
  String get cardStyleDesc => 'ടൈറ്റിൽ സ്ഥാനം, വലുപ്പം, പ്രോഗ്രസ്, ബാഡ്ജുകൾ';

  @override
  String get customFont => 'ഫോണ്ട്';

  @override
  String get customFontDesc =>
      'ഡിഫോൾട്ട്, ഉപകരണത്തിലെ ഫയൽ, അല്ലെങ്കിൽ Google Fonts';

  @override
  String get customFontError => 'ആ ഫോണ്ട് ഫയൽ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get googleFontError => 'ആ ഫോണ്ട് ഡൗൺലോഡ് ചെയ്യാനായില്ല';

  @override
  String get yourFonts => 'നിന്റെ ഫോണ്ടുകൾ';

  @override
  String get addFontFile => 'ഫോണ്ട് ഫയൽ ചേർക്കൂ…';

  @override
  String get browseGoogleFonts => 'Google Fonts ബ്രൗസ് ചെയ്യൂ…';

  @override
  String get searchGoogleFonts => 'Google Fonts തിരയൂ';

  @override
  String get defaultFont => 'ഡിഫോൾട്ട്';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'സിസ്റ്റത്തിൽ നിന്നുള്ള ഡൈനാമിക് നിറം';

  @override
  String get jsonTheme => 'കസ്റ്റം തീം ഫയൽ';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json-ൽ നിന്നുള്ള ലൈവ് നിറങ്ങൾ (കസ്റ്റം സ്ക്രിപ്റ്റ്, അല്ലെങ്കിൽ നിന്റെ സ്വന്തം എഡിറ്റുകൾ)';

  @override
  String get themeMode => 'തീം മോഡ്';

  @override
  String get mode => 'മോഡ്';

  @override
  String get trackingService => 'ട്രാക്കിംഗ് സർവീസ്';

  @override
  String get signOut => 'സൈൻ ഔട്ട്';

  @override
  String get signIn => 'സൈൻ ഇൻ';

  @override
  String get notSignedIn => 'സൈൻ ഇൻ ചെയ്തിട്ടില്ല';

  @override
  String signOutOf(String service) {
    return '$service-ൽ നിന്ന് സൈൻ ഔട്ട് ചെയ്യണോ?';
  }

  @override
  String get checkForUpdates => 'അപ്ഡേറ്റുകൾ പരിശോധിക്കൂ';

  @override
  String get checkForUpdatesDesc => 'പുതിയ GitHub റിലീസ് വരുമ്പോൾ അറിയിക്കൂ';

  @override
  String get updateChannel => 'അപ്ഡേറ്റ് ചാനൽ';

  @override
  String get channel => 'ചാനൽ';

  @override
  String get stable => 'സ്റ്റേബിൾ';

  @override
  String get preRelease => 'പ്രീ-റിലീസ്';

  @override
  String get alpha => 'ആൽഫ';

  @override
  String get checkNow => 'ഇപ്പോൾ പരിശോധിക്കൂ';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ഡിഫോൾട്ട്';

  @override
  String currentlyUsing(String value) {
    return 'ഇപ്പോൾ: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'ഡിഫോൾട്ട് (Cloudflare)';

  @override
  String get proxy => 'പ്രോക്സി';

  @override
  String get proxyProtocol => 'ടൈപ്പ്';

  @override
  String get proxyHost => 'ഹോസ്റ്റ്';

  @override
  String get proxyPort => 'പോർട്ട്';

  @override
  String get proxyUsername => 'യൂസർനെയിം';

  @override
  String get proxyPassword => 'പാസ്‌വേഡ്';

  @override
  String get optional => 'ഓപ്ഷണൽ';

  @override
  String get clearCookies => 'കുക്കികൾ ക്ലിയർ ചെയ്യൂ';

  @override
  String get clearCookiesDesc =>
      'സൂക്ഷിച്ചിരിക്കുന്ന എല്ലാ കുക്കികളും നീക്കം ചെയ്യൂ';

  @override
  String notImplementedArea(String area) {
    return '$area — ഉടൻ വരുന്നു';
  }

  @override
  String notImplementedService(String service) {
    return '$service ഇതുവരെ ഇത് സപ്പോർട്ട് ചെയ്യുന്നില്ല.';
  }

  @override
  String get couldNotLoadResults => 'ഫലങ്ങൾ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get updateCheckFailed => 'അപ്ഡേറ്റുകൾ പരിശോധിക്കാനായില്ല';

  @override
  String get highRefreshRate => 'ഹൈ റിഫ്രഷ് റേറ്റ്';

  @override
  String get highRefreshRateDesc =>
      'നിന്റെ സ്ക്രീൻ സപ്പോർട്ട് ചെയ്യുന്ന ഏറ്റവും ഉയർന്ന റിഫ്രഷ് റേറ്റ് ഉപയോഗിക്കൂ';

  @override
  String get imageSave => 'ചിത്രം സേവ് ചെയ്യൂ';

  @override
  String imageSavedTo(String path) {
    return '$path-ൽ സേവ് ചെയ്തു';
  }

  @override
  String get imageActionFailed => 'ചിത്രം ഡൗൺലോഡ് ചെയ്യാനായില്ല';

  @override
  String get imageTitleCover => 'കവർ';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'ബാനർ';

  @override
  String get imageTitleAvatar => 'പ്രൊഫൈൽ ചിത്രം';

  @override
  String get verifyTls => 'സർട്ടിഫിക്കറ്റുകൾ പരിശോധിക്കൂ';

  @override
  String get verifyTlsDesc =>
      'അസാധുവായ HTTPS സർട്ടിഫിക്കറ്റുള്ള സെർവറുകൾ നിരസിക്കൂ. സെൽഫ്-സൈൻഡ് ഉപയോഗിക്കുന്ന സോഴ്സിന് മാത്രം ഓഫ് ആക്കൂ';

  @override
  String get clearCookiesConfirm =>
      'സൂക്ഷിച്ചിരിക്കുന്ന എല്ലാ കുക്കികളും നീക്കം ചെയ്യണോ? ചില സോഴ്സുകളിൽ നിന്ന് ഇത് നിന്നെ സൈൻ ഔട്ട് ചെയ്തേക്കാം.';

  @override
  String get version => 'വേർഷൻ';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'സോഴ്സ്, ഇഷ്യൂകൾ, റിലീസുകൾ';

  @override
  String get discordDesc => 'കമ്മ്യൂണിറ്റിയും സപ്പോർട്ടും';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'ഡെവലപ്മെന്റിനെ സപ്പോർട്ട് ചെയ്യൂ';

  @override
  String get contributors => 'കോൺട്രിബ്യൂട്ടർമാർ';

  @override
  String get contributorsDesc => 'Dartotsu ഉണ്ടാക്കിയവർ';

  @override
  String get contributorsLoadFailed => 'കോൺട്രിബ്യൂട്ടർമാരെ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu-വിന്റെ മുകളിൽ ഉണ്ടാക്കിയ പ്രോജക്റ്റുകൾ';

  @override
  String get forksEmpty => 'ഫോർക്കുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get sectionColors => 'നിറങ്ങൾ';

  @override
  String get sectionDisplay => 'ഡിസ്പ്ലേ';

  @override
  String get sectionStyle => 'സ്റ്റൈൽ';

  @override
  String get sectionCommunity => 'കമ്മ്യൂണിറ്റി';

  @override
  String get sectionAppInfo => 'ആപ്പ് വിവരങ്ങൾ';

  @override
  String get sectionRequests => 'റിക്വസ്റ്റുകൾ';

  @override
  String get sectionDnsProxy => 'DNS & പ്രോക്സി';

  @override
  String get onboardingBack => 'പിന്നോട്ട്';

  @override
  String get onboardingNext => 'അടുത്തത്';

  @override
  String get onboardingSkip => 'ഒഴിവാക്കൂ';

  @override
  String get onboardingPaletteTitle => 'നിനക്കിഷ്ടമുള്ളതാക്കൂ';

  @override
  String get onboardingPaletteBody =>
      'ഒരു പാലറ്റ് തിരഞ്ഞെടുക്കൂ. കാർഡുകൾ മുതൽ പ്ലെയർ വരെ എല്ലാ ആക്സന്റും അതിനെ പിന്തുടരും.';

  @override
  String get themeModeAuto => 'ഓട്ടോ';

  @override
  String get themeModeLight => 'ലൈറ്റ്';

  @override
  String get themeModeDark => 'ഡാർക്ക്';

  @override
  String get onboardingSyncTitle => 'നിന്റെ ലൈബ്രറി സിങ്ക് ചെയ്യൂ';

  @override
  String get onboardingSyncBody =>
      'ലിസ്റ്റുകളും പ്രോഗ്രസും സ്കോറുകളും കൂടെ കൊണ്ടുവരാൻ AniList-ൽ സൈൻ ഇൻ ചെയ്യൂ. അല്ലെങ്കിൽ ഒഴിവാക്കി ഗസ്റ്റായി ബ്രൗസ് ചെയ്യൂ.';

  @override
  String get onboardingOpenLinks =>
      'AniList, റിപ്പോ ലിങ്കുകൾ Dartotsu-വിൽ തുറക്കൂ';

  @override
  String get onboardingPermsTitle => 'അനുമതികൾ';

  @override
  String get onboardingPermsBody =>
      'ഡൗൺലോഡുകളും അപ്ഡേറ്റുകളും അലർട്ടുകളും തടസ്സമില്ലാതെ പ്രവർത്തിക്കാൻ ഇവ ഇപ്പോൾ അനുവദിക്കൂ. പിന്നീട് സിസ്റ്റം സെറ്റിംഗ്സിൽ മാറ്റാം.';

  @override
  String get permNotifications => 'നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get permNotificationsDesc =>
      'ഡൗൺലോഡ് പ്രോഗ്രസ്, പുതിയ എപ്പിസോഡുകൾ, മറുപടികൾ';

  @override
  String get permStorage => 'എല്ലാ ഫയലുകളിലേക്കും ആക്സസ്';

  @override
  String get permStorageDesc =>
      'ഡൗൺലോഡുകൾ പൊതു Dartotsu ഫോൾഡറിലേക്ക് സേവ് ചെയ്യൂ';

  @override
  String get permInstall => 'അപ്ഡേറ്റുകൾ ഇൻസ്റ്റാൾ ചെയ്യൂ';

  @override
  String get permInstallDesc =>
      'Dartotsu-വിനെ സ്വന്തം ആപ്പ് അപ്ഡേറ്റുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ അനുവദിക്കൂ';

  @override
  String get permBattery => 'നിയന്ത്രണമില്ലാത്ത ബാറ്ററി';

  @override
  String get permBatteryDesc =>
      'നീണ്ട ഡൗൺലോഡുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ ഓടിക്കൊണ്ടിരിക്കട്ടെ';

  @override
  String get permGrant => 'അനുവദിക്കൂ';

  @override
  String get linkOpenInApp => 'ലിങ്കുകൾ Dartotsu-വിൽ തുറക്കൂ';

  @override
  String get linkOpenInAppDesc => 'AniList, റിപ്പോ ലിങ്കുകൾ ആപ്പിൽ തുറക്കട്ടെ';

  @override
  String get reviewsTitle => 'റിവ്യൂകൾ';

  @override
  String get reviewsEmpty => 'ഇതുവരെ റിവ്യൂകൾ ഇല്ല';

  @override
  String get reviewsFailed => 'റിവ്യൂകൾ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get reviewHelpfulQuestion => 'ഈ റിവ്യൂ ഉപകാരപ്പെട്ടോ?';

  @override
  String get reviewVoteFailed => 'നിന്റെ വോട്ട് സേവ് ചെയ്യാനായില്ല';

  @override
  String reviewHelpful(int n, int total) {
    return '$total-ൽ $n പേർക്ക് ഇത് ഉപകാരപ്പെട്ടു';
  }

  @override
  String get calendarTitle => 'എയറിംഗ് ഷെഡ്യൂൾ';

  @override
  String get calendarToday => 'ഇന്ന്';

  @override
  String get calendarEmpty => 'ഈ ദിവസം ഒന്നും സംപ്രേഷണം ഇല്ല';

  @override
  String get calendarFailed => 'ഷെഡ്യൂൾ ലോഡ് ചെയ്യാനായില്ല';

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
    return 'എപ്പിസോഡ് $n';
  }

  @override
  String get shareAnalytics => 'അജ്ഞാത ഉപയോഗ ഡാറ്റ ഷെയർ ചെയ്യൂ';

  @override
  String get shareAnalyticsDesc =>
      'അജ്ഞാത യൂസർ കൗണ്ടും ക്രാഷ് റിപ്പോർട്ടുകളും. അക്കൗണ്ടോ വ്യക്തിഗത ഡാറ്റയോ ഇല്ല';

  @override
  String get linkOpenAnilist => 'AniList ലിങ്കുകൾ Dartotsu-വിൽ തുറക്കൂ';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co ലിങ്കുകൾ ആപ്പിൽ തുറക്കാൻ ലിങ്ക് ഹാൻഡ്ലിംഗ് ഓണാക്കൂ';

  @override
  String get linkSettingsFailed => 'സിസ്റ്റം സെറ്റിംഗ്സ് തുറക്കാനായില്ല';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'നീ എന്തു ചെയ്യുന്നു എന്ന് നിന്റെ Discord പ്രൊഫൈലിൽ കാണിക്കൂ. നിന്റെ Discord ടോക്കൺ വേണം.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'നീ എന്തു ചെയ്യുന്നു എന്ന് നിന്റെ Discord പ്രൊഫൈലിൽ കാണിക്കൂ. Discord ഡെസ്ക്ടോപ്പ് ആപ്പ് ഓടിക്കൊണ്ടിരിക്കണം.';

  @override
  String get discordBrowsing => 'ബ്രൗസിംഗ് ആക്റ്റിവിറ്റി കാണിക്കൂ';

  @override
  String get discordBrowsingDesc =>
      'നീ കാണുന്നതോ വായിക്കുന്നതോ മാത്രമല്ല, നോക്കിക്കൊണ്ടിരിക്കുന്ന ടാബ്, പേജ്, പ്രൊഫൈൽ എന്നിവയും കാണിക്കൂ.';

  @override
  String get discordLookHeader => 'പ്രസൻസ് ലുക്ക്';

  @override
  String get discordActivityType => 'ആക്റ്റിവിറ്റി ടൈപ്പ്';

  @override
  String get discordActivityTypeDesc =>
      'Discord ഇത് എങ്ങനെ എഴുതുന്നു എന്നത്: \"Watching …\" അല്ലെങ്കിൽ \"Playing …\". ഓട്ടോ ആണെങ്കിൽ അനിമെയ്ക്ക് Watching, ബാക്കിയെല്ലാത്തിനും Playing.';

  @override
  String get discordWatching => 'കാണുന്നു';

  @override
  String get discordPlaying => 'കളിക്കുന്നു';

  @override
  String get discordCovers => 'കവറുകൾ കാണിക്കൂ';

  @override
  String get discordCoversDesc => 'കാർഡിൽ കവർ ആർട്ടും Dartotsu ഐക്കണും.';

  @override
  String get discordTimer => 'ടൈമർ കാണിക്കൂ';

  @override
  String get discordTimerDesc =>
      'ടൈറ്റിലിന് താഴെ കഴിഞ്ഞതോ ബാക്കിയുള്ളതോ ആയ സമയം.';

  @override
  String get discordButtons => 'ബട്ടണുകൾ കാണിക്കൂ';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\", \"Open Dartotsu\" ബട്ടണുകൾ.';

  @override
  String get discordHideTitles => 'ടൈറ്റിലുകൾ മറയ്ക്കൂ';

  @override
  String get discordHideTitlesDesc =>
      'അനിമെ, മംഗ പേരുകൾ (കവറും ലിങ്കും സഹിതം) \"Something private\" എന്നാക്കി മാറ്റൂ.';

  @override
  String get discordConnectionHeader => 'കണക്ഷൻ';

  @override
  String get listSearchHint => 'ഈ ലിസ്റ്റിൽ തിരയൂ';

  @override
  String get listSort => 'സോർട്ട്';

  @override
  String get listFilter => 'ഫിൽട്ടർ';

  @override
  String get listRandom => 'റാൻഡം ടൈറ്റിൽ';

  @override
  String get listReverse => 'ക്രമം തിരിച്ചിടൂ';

  @override
  String get listSortDefault => 'ലിസ്റ്റ് ക്രമം';

  @override
  String get listSortScore => 'നിന്റെ സ്കോർ';

  @override
  String get listSortTitle => 'ടൈറ്റിൽ';

  @override
  String get listSortUpdated => 'അവസാനം അപ്ഡേറ്റ് ചെയ്തത്';

  @override
  String get listSortProgress => 'പ്രോഗ്രസ്';

  @override
  String get listSortReleased => 'റിലീസ് തീയതി';

  @override
  String get listSortAverage => 'ശരാശരി സ്കോർ';

  @override
  String get listFilterFormat => 'ഫോർമാറ്റ്';

  @override
  String get listFilterStatus => 'സ്റ്റാറ്റസ്';

  @override
  String get listFilterGenres => 'ജോണറുകൾ';

  @override
  String get listFilterClear => 'ഫിൽട്ടറുകൾ ക്ലിയർ ചെയ്യൂ';

  @override
  String get listNoMatches => 'ഈ ലിസ്റ്റിൽ ഒന്നും ചേരുന്നില്ല';

  @override
  String get discordLogin => 'Discord-ലേക്ക് ലോഗിൻ ചെയ്യൂ';

  @override
  String get discordToken => 'Discord ടോക്കൺ';

  @override
  String get discordTokenSaved =>
      'സേവ് ചെയ്തു. മാറ്റാൻ ടാപ്പ് ചെയ്യൂ, നീക്കാൻ ലോങ് പ്രസ് ചെയ്യൂ.';

  @override
  String get discordTokenNotSet =>
      'സെറ്റ് ചെയ്തിട്ടില്ല. ചേർക്കാൻ ടാപ്പ് ചെയ്യൂ.';

  @override
  String get discordTokenSavedSnack => 'Discord ടോക്കൺ സേവ് ചെയ്തു';

  @override
  String get discordTokenRemovedSnack => 'Discord ടോക്കൺ നീക്കം ചെയ്തു';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'ഓൺ · ലുക്ക് മാറ്റാൻ ടാപ്പ് ചെയ്യൂ';

  @override
  String get discordRichPresenceRowOff =>
      'നീ എന്തു ചെയ്യുന്നു എന്ന് നിന്റെ Discord പ്രൊഫൈലിൽ കാണിക്കൂ';

  @override
  String get loginCancelled => 'ലോഗിൻ റദ്ദാക്കി';

  @override
  String get invalidToken => 'അസാധുവായ ടോക്കൺ';

  @override
  String loginFailed(String error) {
    return 'ലോഗിൻ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList ലോഗിൻ പരാജയപ്പെട്ടു';

  @override
  String get kitsuLoginFailed =>
      'Kitsu ലോഗിൻ പരാജയപ്പെട്ടു. ഇമെയിലും പാസ്‌വേഡും പരിശോധിക്കൂ.';

  @override
  String get kitsuLoginTitle => 'Kitsu-വിൽ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String get emailOrUsername => 'ഇമെയിൽ അല്ലെങ്കിൽ യൂസർനെയിം';

  @override
  String get password => 'പാസ്‌വേഡ്';

  @override
  String get kitsuProfile => 'Kitsu പ്രൊഫൈൽ';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka ലോഗിൻ പരാജയപ്പെട്ടു';

  @override
  String get mangaBakaProfile => 'MangaBaka പ്രൊഫൈൽ';

  @override
  String get refreshFromMangaBaka => 'MangaBaka-യിൽ നിന്ന് റിഫ്രഷ് ചെയ്യൂ';

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
  String get artistsLabel => 'ആർട്ടിസ്റ്റുകൾ';

  @override
  String get authorsLabel => 'രചയിതാക്കൾ';

  @override
  String get publishersLabel => 'പ്രസാധകർ';

  @override
  String get licensedLabel => 'ലൈസൻസ്ഡ്';

  @override
  String get contentRatingLabel => 'കണ്ടന്റ് റേറ്റിംഗ്';

  @override
  String get yesLabel => 'അതെ';

  @override
  String get noLabel => 'ഇല്ല';

  @override
  String get ratingSteps => 'റേറ്റിംഗ് സ്റ്റെപ്പുകൾ';

  @override
  String get hideNsfw => 'NSFW മറയ്ക്കൂ';

  @override
  String get hideNsfwDesc =>
      'അഡൾട്ട് ടൈറ്റിലുകൾ ഫീഡുകളിലും തിരയലിലും നിന്ന് ഒഴിവാക്കൂ, നിന്റെ സ്വന്തം അഡൾട്ട് എൻട്രികൾ Hidden Media-യിൽ കാണിക്കൂ.';

  @override
  String get kitsuAccountOptions => 'Kitsu അക്കൗണ്ട് ഓപ്ഷനുകൾ';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka അക്കൗണ്ട് ഓപ്ഷനുകൾ';

  @override
  String get couldNotUpdateKitsuSettings =>
      'നിന്റെ Kitsu സെറ്റിംഗ്സ് അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

  @override
  String get titleCanonical => 'കാനോനിക്കൽ';

  @override
  String get titleRomanized => 'റോമനൈസ്ഡ്';

  @override
  String get titleLocalized => 'ലോക്കലൈസ്ഡ്';

  @override
  String get ratingSystem => 'റേറ്റിംഗ് സിസ്റ്റം';

  @override
  String get ratingSimple => 'സിമ്പിൾ (3 മുഖങ്ങൾ)';

  @override
  String get ratingRegular => 'റെഗുലർ (5 നക്ഷത്രങ്ങൾ)';

  @override
  String get ratingAdvanced => 'അഡ്വാൻസ്ഡ് (10 പോയിന്റ്)';

  @override
  String get contentFilter => 'കണ്ടന്റ് ഫിൽട്ടർ';

  @override
  String get contentSfw => 'ജോലിസ്ഥലത്തിന് സുരക്ഷിതമായത് മാത്രം';

  @override
  String get contentSometimes => 'തിരയലുകളിൽ മുതിർന്നവർക്കുള്ള കണ്ടന്റ്';

  @override
  String get contentEverywhere => 'എല്ലായിടത്തും മുതിർന്നവർക്കുള്ള കണ്ടന്റ്';

  @override
  String get shareToGlobal => 'ഗ്ലോബൽ ഫീഡിലേക്ക് ഷെയർ ചെയ്യൂ';

  @override
  String get shareToGlobalDesc =>
      'നിന്റെ ആക്റ്റിവിറ്റി Kitsu-വിന്റെ ഗ്ലോബൽ ഫീഡിൽ വരാൻ അനുവദിക്കൂ.';

  @override
  String get memberSince => 'അംഗമായത്';

  @override
  String get location => 'സ്ഥലം';

  @override
  String get accountType => 'അക്കൗണ്ട് തരം';

  @override
  String get accountSupporter => 'സപ്പോർട്ടർ';

  @override
  String get accountFree => 'ഫ്രീ';

  @override
  String get accountDetails => 'അക്കൗണ്ട് വിശദാംശങ്ങൾ';

  @override
  String get refreshFromKitsu => 'Kitsu-വിൽ നിന്ന് റിഫ്രഷ് ചെയ്യൂ';

  @override
  String get simklReadOnly => 'Simkl റീഡ്-ഓൺലി ആക്സസ് അനുവദിച്ചു';

  @override
  String get incognitoEditsBlocked =>
      'ഇൻകോഗ്നിറ്റോ: ലിസ്റ്റ് എഡിറ്റുകൾ തടഞ്ഞിരിക്കുന്നു';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'ഇൻകോഗ്നിറ്റോ: പ്രോഗ്രസ് സേവ് ചെയ്തില്ല';

  @override
  String progressSet(int progress) {
    return 'പ്രോഗ്രസ് $progress ആയി സെറ്റ് ചെയ്തു';
  }

  @override
  String removedFromList(String title) {
    return 'നിന്റെ ലിസ്റ്റിൽ നിന്ന് $title നീക്കം ചെയ്തു';
  }

  @override
  String get following => 'ഫോളോ ചെയ്യുന്നു';

  @override
  String get homeSections => 'ഹോം സെക്ഷനുകൾ';

  @override
  String get homeSectionsHint =>
      'ക്രമം മാറ്റാൻ വലിച്ചിടൂ. മറച്ച സെക്ഷനുകൾ ഒരിക്കലും ലോഡ് ചെയ്യില്ല.';

  @override
  String get customListDeleteFailed =>
      'കസ്റ്റം ലിസ്റ്റ് ഡിലീറ്റ് ചെയ്യാനായില്ല';

  @override
  String get customListsSaveFailed => 'കസ്റ്റം ലിസ്റ്റുകൾ സേവ് ചെയ്യാനായില്ല';

  @override
  String get customListsSaved => 'കസ്റ്റം ലിസ്റ്റുകൾ സേവ് ചെയ്തു';

  @override
  String get listName => 'ലിസ്റ്റിന്റെ പേര്';

  @override
  String get addList => 'ലിസ്റ്റ് ചേർക്കൂ';

  @override
  String voiceActorsIn(String name) {
    return 'വോയ്സ് ആക്ടർമാർ · $name';
  }

  @override
  String get animeAppearances => 'അനിമെ പ്രത്യക്ഷപ്പെടലുകൾ';

  @override
  String get mangaAppearances => 'മംഗ പ്രത്യക്ഷപ്പെടലുകൾ';

  @override
  String get voicedCharacters => 'ശബ്ദം നൽകിയ കഥാപാത്രങ്ങൾ';

  @override
  String get animeCredits => 'അനിമെ ക്രെഡിറ്റുകൾ';

  @override
  String get mangaCredits => 'മംഗ ക്രെഡിറ്റുകൾ';

  @override
  String get mainProductions => 'പ്രധാന പ്രൊഡക്ഷനുകൾ';

  @override
  String get otherWorks => 'മറ്റ് സൃഷ്ടികൾ';

  @override
  String get prequelSequel => 'പ്രീക്വലും സീക്വലും';

  @override
  String get previousSeason => 'മുൻ സീസൺ';

  @override
  String get thisSeason => 'ഈ സീസൺ';

  @override
  String get nextSeason => 'അടുത്ത സീസൺ';

  @override
  String get voiceRoles => 'വോയ്സ് റോളുകൾ';

  @override
  String get staffPositions => 'സ്റ്റാഫ് പൊസിഷനുകൾ';

  @override
  String get mangaWorks => 'മംഗ സൃഷ്ടികൾ';

  @override
  String get malProfile => 'MyAnimeList പ്രൊഫൈൽ';

  @override
  String get refreshFromMal => 'MyAnimeList-ൽ നിന്ന് റിഫ്രഷ് ചെയ്യൂ';

  @override
  String get repullProfileCounts =>
      'നിന്റെ പ്രൊഫൈലും കൗണ്ടുകളും വീണ്ടും എടുക്കൂ';

  @override
  String get refreshed => 'റിഫ്രഷ് ചെയ്തു';

  @override
  String get simklProfile => 'Simkl പ്രൊഫൈൽ';

  @override
  String get refreshFromSimkl => 'Simkl-ൽ നിന്ന് റിഫ്രഷ് ചെയ്യൂ';

  @override
  String get repullProfileLibrary =>
      'നിന്റെ പ്രൊഫൈലും ലൈബ്രറിയും വീണ്ടും എടുക്കൂ';

  @override
  String get simklSignInToSearch => 'തിരയാൻ Simkl-ൽ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String get dropRate => 'ഡ്രോപ്പ് റേറ്റ്';

  @override
  String get simklAttribution =>
      'ഡാറ്റയും ആർട്ട്‌വർക്കും നൽകിയത് Simkl. Simkl-ൽ കാണൂ';

  @override
  String get onHold => 'ഓൺ ഹോൾഡ്';

  @override
  String get scoredBy => 'സ്കോർ ചെയ്തവർ';

  @override
  String get planToWatch => 'കാണാൻ പ്ലാൻ ചെയ്തത്';

  @override
  String get planToRead => 'വായിക്കാൻ പ്ലാൻ ചെയ്തത്';

  @override
  String get timesRewatched => 'വീണ്ടും കണ്ട തവണ';

  @override
  String get timesReread => 'വീണ്ടും വായിച്ച തവണ';

  @override
  String get comments => 'കമന്റുകൾ';

  @override
  String get moviesAndSeries => 'സിനിമകളും സീരീസുകളും';

  @override
  String get trackingOnly => 'ട്രാക്കിംഗ് മാത്രം';

  @override
  String get signedIn => 'സൈൻ ഇൻ ചെയ്തു';

  @override
  String get searchLanguage => 'തിരയൽ ഭാഷ';

  @override
  String get savedToList => 'നിന്റെ ലിസ്റ്റിൽ സേവ് ചെയ്തു';

  @override
  String get removedFromYourList => 'നിന്റെ ലിസ്റ്റിൽ നിന്ന് നീക്കം ചെയ്തു';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കൂ';

  @override
  String get synopsis => 'സിനോപ്സിസ്';

  @override
  String get details => 'വിശദാംശങ്ങൾ';

  @override
  String get addToList => 'ലിസ്റ്റിൽ ചേർക്കൂ';

  @override
  String get trailer => 'ട്രെയിലർ';

  @override
  String get titleCopied => 'ടൈറ്റിൽ കോപ്പി ചെയ്തു';

  @override
  String get linkCopied => 'ലിങ്ക് കോപ്പി ചെയ്തു';

  @override
  String get watchTrailer => 'ട്രെയിലർ കാണൂ';

  @override
  String get copyTitle => 'ടൈറ്റിൽ കോപ്പി ചെയ്യൂ';

  @override
  String get copyLink => 'ലിങ്ക് കോപ്പി ചെയ്യൂ';

  @override
  String get openInBrowser => 'ബ്രൗസറിൽ തുറക്കൂ';

  @override
  String viewOnSource(String source) {
    return '$source-ൽ കാണൂ';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'എപ്പിസോഡ് $ep $time കഴിഞ്ഞ് വരും';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'അടുത്ത എപ്പിസോഡ് $time കഴിഞ്ഞ്';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'അധ്യായം $chapter ഏകദേശം $time കഴിഞ്ഞ് വരും';
  }

  @override
  String get logPathCopied =>
      'ലോഗ് ഫയൽ പാത്ത് ക്ലിപ്പ്ബോർഡിലേക്ക് കോപ്പി ചെയ്തു';

  @override
  String get animeSource => 'അനിമെ സോഴ്സ്';

  @override
  String get mangaSource => 'മംഗ സോഴ്സ്';

  @override
  String get popular => 'ജനപ്രിയം';

  @override
  String get latest => 'ഏറ്റവും പുതിയത്';

  @override
  String get saved => 'സേവ് ചെയ്തത്';

  @override
  String get nothingMatched => 'ഒന്നും ചേരുന്നില്ല';

  @override
  String get nothingSavedFromSource =>
      'ഈ സോഴ്സിൽ നിന്ന് ഇതുവരെ ഒന്നും സേവ് ചെയ്തിട്ടില്ല';

  @override
  String get sourceReturnedNothing => 'ഈ സോഴ്സ് ഒന്നും തന്നില്ല';

  @override
  String get checkConnectionOrSource =>
      'കണക്ഷൻ പരിശോധിക്കൂ, അല്ലെങ്കിൽ വേറൊരു സോഴ്സ് നോക്കൂ.';

  @override
  String get tryDifferentSearch => 'വേറൊരു തിരയൽ വാക്ക് നോക്കൂ.';

  @override
  String get savedTitlesAppearHere =>
      'ലിസ്റ്റിൽ ചേർക്കുന്ന ടൈറ്റിലുകൾ ഇവിടെ വരും.';

  @override
  String get tryOtherFeed => 'പകരം മറ്റേ ഫീഡോ തിരയലോ നോക്കൂ.';

  @override
  String searchSource(String source) {
    return '$source തിരയൂ';
  }

  @override
  String get animeExtensions => 'അനിമെ എക്സ്റ്റൻഷനുകൾ';

  @override
  String get mangaExtensions => 'മംഗ എക്സ്റ്റൻഷനുകൾ';

  @override
  String get nothingHereYet => 'ഇവിടെ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get savedOnDeviceUntilLogin =>
      'നീ ചെയ്യുന്നതുവരെ താഴെയുള്ളതെല്ലാം ഈ ഉപകരണത്തിൽ സേവ് ആയി ഇരിക്കും.';

  @override
  String get yourProfile => 'നിന്റെ പ്രൊഫൈൽ';

  @override
  String get activity => 'ആക്റ്റിവിറ്റി';

  @override
  String get extensions => 'എക്സ്റ്റൻഷനുകൾ';

  @override
  String get logOut => 'ലോഗ് ഔട്ട്';

  @override
  String get logIn => 'ലോഗ് ഇൻ';

  @override
  String get logOutConfirm => 'ലോഗ് ഔട്ട് ചെയ്യണമെന്ന് ഉറപ്പാണോ?';

  @override
  String get incognitoMode => 'ഇൻകോഗ്നിറ്റോ മോഡ്';

  @override
  String get alsoBlockListEdits => 'ലിസ്റ്റ് എഡിറ്റുകളും തടയൂ';

  @override
  String get offlineMode => 'ഓഫ്‌ലൈൻ മോഡ്';

  @override
  String get switchService => 'സർവീസ് മാറ്റൂ';

  @override
  String logOutOf(String name) {
    return '$name-ൽ നിന്ന് ലോഗ് ഔട്ട് ചെയ്യൂ';
  }

  @override
  String get loggedIn => 'ലോഗിൻ ചെയ്തു';

  @override
  String get notifications => 'നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get nothingNew => 'പുതിയതൊന്നുമില്ല';

  @override
  String get thisWeek => 'ഈ ആഴ്ച';

  @override
  String get listOnly => 'ലിസ്റ്റ് മാത്രം';

  @override
  String get filter => 'ഫിൽട്ടർ';

  @override
  String get searchResults => 'തിരയൽ ഫലങ്ങൾ';

  @override
  String get recentSearches => 'സമീപകാല തിരയലുകൾ';

  @override
  String get searchOrSetFilter => 'തിരയൂ അല്ലെങ്കിൽ ഫിൽട്ടർ സെറ്റ് ചെയ്യൂ';

  @override
  String get filters => 'ഫിൽട്ടറുകൾ';

  @override
  String get showLess => 'കുറച്ച് കാണിക്കൂ';

  @override
  String get showAll => 'എല്ലാം കാണിക്കൂ';

  @override
  String get apply => 'ബാധകമാക്കൂ';

  @override
  String get preview => 'പ്രിവ്യൂ';

  @override
  String get preset => 'പ്രീസെറ്റ്';

  @override
  String get cardNormal => 'നോർമൽ';

  @override
  String get cardOnCard => 'കാർഡിന് മുകളിൽ';

  @override
  String get cardInCard => 'കാർഡിനുള്ളിൽ';

  @override
  String get size => 'വലുപ്പം';

  @override
  String get cardWidth => 'കാർഡ് വീതി';

  @override
  String get compact => 'കോംപാക്റ്റ്';

  @override
  String get coverAndTitleOnly => 'കവറും ടൈറ്റിലും മാത്രം';

  @override
  String get titleLines => 'ടൈറ്റിൽ വരികൾ';

  @override
  String get shape => 'ആകൃതി';

  @override
  String get posterShape => 'പോസ്റ്റർ ആകൃതി';

  @override
  String get cornerRadius => 'കോർണർ റേഡിയസ്';

  @override
  String get off => 'ഓഫ്';

  @override
  String get topLeft => 'മുകളിൽ ഇടത്';

  @override
  String get topRight => 'മുകളിൽ വലത്';

  @override
  String get bottomLeft => 'താഴെ ഇടത്';

  @override
  String get bottomRight => 'താഴെ വലത്';

  @override
  String get overlays => 'ഓവർലേകൾ';

  @override
  String get progressCount => 'പ്രോഗ്രസ് / എണ്ണം';

  @override
  String get pill => 'പിൽ';

  @override
  String get bar => 'ബാർ';

  @override
  String get outside => 'പുറത്ത്';

  @override
  String get scoreBadge => 'സ്കോർ ബാഡ്ജ്';

  @override
  String get airingDot => 'എയറിംഗ് ഡോട്ട്';

  @override
  String get updateAvailable => 'അപ്ഡേറ്റ് ലഭ്യമാണ്';

  @override
  String get notInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';

  @override
  String get done => 'കഴിഞ്ഞു';

  @override
  String get searchOrEnterUrl => 'തിരയൂ അല്ലെങ്കിൽ URL നൽകൂ';

  @override
  String get refresh => 'റിഫ്രഷ്';

  @override
  String get share => 'ഷെയർ';

  @override
  String get characters => 'കഥാപാത്രങ്ങൾ';

  @override
  String get staff => 'സ്റ്റാഫ്';

  @override
  String get readMore => 'കൂടുതൽ വായിക്കൂ';

  @override
  String get couldNotLoadList => 'ലിസ്റ്റ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get logInToFavourite => 'പ്രിയപ്പെട്ടവ ചേർക്കാൻ ലോഗിൻ ചെയ്യൂ';

  @override
  String get alsoKnownAs => 'ഇങ്ങനെയും അറിയപ്പെടുന്നു';

  @override
  String get hideSpoilerNames => 'സ്പോയിലർ പേരുകൾ മറയ്ക്കൂ';

  @override
  String get showSpoilerNames => 'സ്പോയിലർ പേരുകൾ കാണിക്കൂ';

  @override
  String get favourited => 'പ്രിയപ്പെട്ടതാക്കി';

  @override
  String get favourite => 'പ്രിയപ്പെട്ടത്';

  @override
  String get couldNotOpenTitle => 'ഈ ടൈറ്റിൽ തുറക്കാനായില്ല';

  @override
  String get nobodyHereYet => 'ഇവിടെ ഇതുവരെ ആരുമില്ല';

  @override
  String get noMatches => 'ചേരുന്നതൊന്നുമില്ല';

  @override
  String get gridView => 'ഗ്രിഡ് വ്യൂ';

  @override
  String get fullWidth => 'ഫുൾ വിഡ്ത്ത്';

  @override
  String get userNotFound => 'യൂസറെ കണ്ടില്ല';

  @override
  String get couldNotUpdateFollow => 'ഫോളോ അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

  @override
  String followedUser(String name) {
    return '$name-നെ ഫോളോ ചെയ്തു';
  }

  @override
  String unfollowedUser(String name) {
    return '$name-നെ അൺഫോളോ ചെയ്തു';
  }

  @override
  String get messages => 'മെസ്സേജുകൾ';

  @override
  String get logInToSeeMessages => 'മെസ്സേജുകൾ കാണാൻ ലോഗിൻ ചെയ്യൂ';

  @override
  String get editActivity => 'ആക്റ്റിവിറ്റി എഡിറ്റ് ചെയ്യൂ';

  @override
  String get newActivity => 'പുതിയ ആക്റ്റിവിറ്റി';

  @override
  String get editMessage => 'മെസ്സേജ് എഡിറ്റ് ചെയ്യൂ';

  @override
  String get writeMessage => 'ഒരു മെസ്സേജ് എഴുതൂ';

  @override
  String get editReply => 'മറുപടി എഡിറ്റ് ചെയ്യൂ';

  @override
  String get posted => 'പോസ്റ്റ് ചെയ്തു';

  @override
  String get couldNotPost => 'പോസ്റ്റ് ചെയ്യാനായില്ല';

  @override
  String get nothingToPreview => 'പ്രിവ്യൂ ചെയ്യാൻ ഒന്നുമില്ല';

  @override
  String get writeSomethingHint =>
      'എന്തെങ്കിലും എഴുതൂ… ഇവിടെ AniList മാർക്ക്ഡൗൺ പ്രവർത്തിക്കും';

  @override
  String get privateMessage => 'പ്രൈവറ്റ് മെസ്സേജ്';

  @override
  String get post => 'പോസ്റ്റ്';

  @override
  String get nothingHere => 'ഇവിടെ ഒന്നുമില്ല';

  @override
  String get noAnimeProgress => 'അനിമെ പ്രോഗ്രസ് ഇല്ല';

  @override
  String get noMangaProgress => 'മംഗ പ്രോഗ്രസ് ഇല്ല';

  @override
  String get noMessages => 'മെസ്സേജുകൾ ഇല്ല';

  @override
  String get writeMessageHint => 'ഒരു മെസ്സേജ് എഴുതൂ…';

  @override
  String get shareSomethingHint => 'എന്തെങ്കിലും ഷെയർ ചെയ്യൂ…';

  @override
  String get all => 'എല്ലാം';

  @override
  String get anime => 'അനിമെ';

  @override
  String get manga => 'മംഗ';

  @override
  String get count => 'എണ്ണം';

  @override
  String get hoursWatched => 'കണ്ട മണിക്കൂറുകൾ';

  @override
  String get chaptersRead => 'വായിച്ച ചാപ്റ്ററുകൾ';

  @override
  String get meanScore => 'ശരാശരി സ്കോർ';

  @override
  String get noStatsYet => 'സ്റ്റാറ്റ്സ് ഒന്നുമില്ല';

  @override
  String get totalEntries => 'ആകെ എൻട്രികൾ';

  @override
  String get episodesWatched => 'കണ്ട എപ്പിസോഡുകൾ';

  @override
  String get daysWatched => 'കണ്ട ദിവസങ്ങൾ';

  @override
  String get volumesRead => 'വായിച്ച വോള്യങ്ങൾ';

  @override
  String get standardDeviation => 'സ്റ്റാൻഡേർഡ് ഡീവിയേഷൻ';

  @override
  String get showMore => 'കൂടുതൽ കാണിക്കൂ';

  @override
  String get followsYou => 'നിന്നെ ഫോളോ ചെയ്യുന്നു';

  @override
  String get nobodyYet => 'ഇതുവരെ ആരുമില്ല';

  @override
  String get logInToLike => 'ലൈക്ക് ചെയ്യാൻ ലോഗിൻ ചെയ്യൂ';

  @override
  String get failedToLikeActivity => 'ആക്റ്റിവിറ്റി ലൈക്ക് ചെയ്യാനായില്ല';

  @override
  String get deleteActivityConfirm => 'ആക്റ്റിവിറ്റി ഡിലീറ്റ് ചെയ്യണോ?';

  @override
  String get deletedActivity => 'ആക്റ്റിവിറ്റി ഡിലീറ്റ് ചെയ്തു';

  @override
  String get failedToDeleteActivity => 'ആക്റ്റിവിറ്റി ഡിലീറ്റ് ചെയ്യാനായില്ല';

  @override
  String get subscribed => 'സബ്സ്ക്രൈബ് ചെയ്തു';

  @override
  String get unsubscribed => 'സബ്സ്ക്രൈബ് റദ്ദാക്കി';

  @override
  String get failedToUpdateSubscription =>
      'സബ്സ്ക്രിപ്ഷൻ അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

  @override
  String get edit => 'എഡിറ്റ്';

  @override
  String get delete => 'ഡിലീറ്റ്';

  @override
  String get likedBy => 'ലൈക്ക് ചെയ്തവർ';

  @override
  String get follow => 'ഫോളോ';

  @override
  String get nameCopied => 'പേര് കോപ്പി ചെയ്തു';

  @override
  String get followsEachOther => 'പരസ്പരം ഫോളോ ചെയ്യുന്നു';

  @override
  String get unfollow => 'അൺഫോളോ';

  @override
  String get userIdCopied => 'യൂസർ ഐഡി കോപ്പി ചെയ്തു';

  @override
  String get shareProfile => 'പ്രൊഫൈൽ ഷെയർ ചെയ്യൂ';

  @override
  String get copyUserId => 'യൂസർ ഐഡി കോപ്പി ചെയ്യൂ';

  @override
  String get failedToDelete => 'ഡിലീറ്റ് ചെയ്യാനായില്ല';

  @override
  String get failedToLike => 'ലൈക്ക് ചെയ്യാനായില്ല';

  @override
  String get replies => 'മറുപടികൾ';

  @override
  String get reply => 'മറുപടി';

  @override
  String get noRepliesYet => 'ഇതുവരെ മറുപടികൾ ഇല്ല';

  @override
  String get favouriteAnime => 'പ്രിയപ്പെട്ട അനിമെ';

  @override
  String get favouriteManga => 'പ്രിയപ്പെട്ട മംഗ';

  @override
  String get favouriteCharacters => 'പ്രിയപ്പെട്ട കഥാപാത്രങ്ങൾ';

  @override
  String get favouriteStaff => 'പ്രിയപ്പെട്ട സ്റ്റാഫ്';

  @override
  String get favouriteStudios => 'പ്രിയപ്പെട്ട സ്റ്റുഡിയോകൾ';

  @override
  String get noFavouritesYet => 'പ്രിയപ്പെട്ടവ ഇതുവരെ ഇല്ല';

  @override
  String get yourStory => 'നിന്റെ സ്റ്റോറി';

  @override
  String get copiedToClipboard => 'ക്ലിപ്പ്ബോർഡിലേക്ക് കോപ്പി ചെയ്തു';

  @override
  String get justNow => 'ഇപ്പോൾ';

  @override
  String get openImage => 'ചിത്രം തുറക്കൂ';

  @override
  String get hideSpoiler => 'സ്പോയിലർ മറയ്ക്കൂ';

  @override
  String get showSpoiler => 'സ്പോയിലർ കാണിക്കൂ';

  @override
  String get status => 'സ്റ്റാറ്റസ്';

  @override
  String get score => 'സ്കോർ';

  @override
  String get started => 'തുടങ്ങിയത്';

  @override
  String get completed => 'പൂർത്തിയാക്കിയത്';

  @override
  String get private => 'പ്രൈവറ്റ്';

  @override
  String get hideFromStatusLists => 'സ്റ്റാറ്റസ് ലിസ്റ്റുകളിൽ നിന്ന് മറയ്ക്കൂ';

  @override
  String get totalRepeats => 'ആകെ ആവർത്തനങ്ങൾ';

  @override
  String get other => 'മറ്റുള്ളവ';

  @override
  String get customLists => 'കസ്റ്റം ലിസ്റ്റുകൾ';

  @override
  String get activeDays => 'ആക്റ്റീവ് ദിവസങ്ങൾ';

  @override
  String get longestStreak => 'ഏറ്റവും നീണ്ട സ്ട്രീക്ക്';

  @override
  String get currentStreak => 'ഇപ്പോഴത്തെ സ്ട്രീക്ക്';

  @override
  String get tapOrHoverDay =>
      'ഒരു ദിവസത്തിൽ ടാപ്പ് ചെയ്യൂ അല്ലെങ്കിൽ ഹോവർ ചെയ്യൂ';

  @override
  String get less => 'കുറവ്';

  @override
  String get more => 'കൂടുതൽ';

  @override
  String epIn(int ep, String time) {
    return 'എപ് $ep $time കഴിഞ്ഞ്';
  }

  @override
  String get sectionLoading => 'ലോഡ് ചെയ്യുന്നു';

  @override
  String get querySize => 'ക്വറി വലുപ്പം';

  @override
  String get querySizeDesc =>
      'ഒരു വലിയ ക്വറി എല്ലാ വരികളും (പ്രൊഫൈൽ മുഴുവനും) ഒറ്റ റിക്വസ്റ്റിൽ ലോഡ് ചെയ്യും. സ്പ്ലിറ്റ് ക്വറികൾ ഓരോ വരിക്കും പ്രൊഫൈൽ ഭാഗത്തിനും ചെറിയ റിക്വസ്റ്റ് അയയ്ക്കും: ഓരോന്നും വേഗത്തിലാണ്, ഭാഗങ്ങൾ വരുന്ന മുറയ്ക്ക് കാണിക്കും.';

  @override
  String get oneBig => 'ഒരു വലിയ ക്വറി';

  @override
  String get split => 'സ്പ്ലിറ്റ്';

  @override
  String get sectionSocial => 'സോഷ്യൽ';

  @override
  String get systemNotifications => 'സിസ്റ്റം നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get feedLayout => 'ഫീഡ് ലേഔട്ട്';

  @override
  String sectionsShown(int shown, int total) {
    return '$total-ൽ $shown കാണിക്കുന്നു — തിരഞ്ഞെടുക്കാനും ക്രമം മാറ്റാനും ടാപ്പ് ചെയ്യൂ';
  }

  @override
  String labelSections(String label) {
    return '$label സെക്ഷനുകൾ';
  }

  @override
  String get accountOptions => 'അക്കൗണ്ട് ഓപ്ഷനുകൾ';

  @override
  String get anilistAccountOptions => 'AniList അക്കൗണ്ട് ഓപ്ഷനുകൾ';

  @override
  String get sectionPrivacy => 'സ്വകാര്യത';

  @override
  String get hidePrivateEntries => 'പ്രൈവറ്റ് എൻട്രികൾ മറയ്ക്കൂ';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList-ൽ പ്രൈവറ്റ് എന്ന് അടയാളപ്പെടുത്തിയ എൻട്രികൾ ഫീഡിൽ നിന്ന് ഒഴിവാക്കൂ';

  @override
  String get anilistExcludeList => 'നിങ്ങളുടെ ലിസ്റ്റ് ഒഴിവാക്കൂ';

  @override
  String get anilistExcludeListDesc =>
      'നിങ്ങളുടെ AniList-ൽ ഇതിനകം ഉള്ള ടൈറ്റിലുകൾ അനിമേ, മംഗ പേജുകളിൽ കാണിക്കില്ല';

  @override
  String get anilistProfile => 'AniList പ്രൊഫൈൽ';

  @override
  String get refreshFromAnilist => 'AniList-ൽ നിന്ന് റിഫ്രഷ് ചെയ്യൂ';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList സെറ്റിംഗ്സ് അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

  @override
  String get sectionNames => 'പേരുകൾ';

  @override
  String get titleLanguage => 'ടൈറ്റിൽ ഭാഷ';

  @override
  String get titleLanguageDesc =>
      'എല്ലായിടത്തും ടൈറ്റിലുകൾ എങ്ങനെ എഴുതണം, ഉദാ. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'സ്റ്റാഫിന്റെയും കഥാപാത്രങ്ങളുടെയും പേരുകൾ';

  @override
  String get sectionLists => 'ലിസ്റ്റുകൾ';

  @override
  String get scoreFormat => 'സ്കോർ ഫോർമാറ്റ്';

  @override
  String get sortListsBy => 'ലിസ്റ്റുകൾ ഇങ്ങനെ സോർട്ട് ചെയ്യൂ';

  @override
  String labelCustomLists(String label) {
    return '$label കസ്റ്റം ലിസ്റ്റുകൾ';
  }

  @override
  String customListsCount(int count) {
    return '$count ലിസ്റ്റുകൾ — ചേർക്കാനോ നീക്കാനോ ടാപ്പ് ചെയ്യൂ';
  }

  @override
  String get mergeActivities => 'ആക്റ്റിവിറ്റികൾ ലയിപ്പിക്കൂ';

  @override
  String minutesCount(int count) {
    return '$count മിനിറ്റ്';
  }

  @override
  String get timezone => 'ടൈംസോൺ';

  @override
  String get notSet => 'സെറ്റ് ചെയ്തിട്ടില്ല';

  @override
  String get airingNotifications => 'എയറിംഗ് നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get airingNotificationsDesc =>
      'ഫോളോ ചെയ്യുന്ന ഷോയുടെ എപ്പിസോഡ് വരുമ്പോൾ അറിയിക്കൂ';

  @override
  String get displayAdultContent => 'അഡൾട്ട് കണ്ടന്റ് കാണിക്കൂ';

  @override
  String get displayAdultContentDesc =>
      'ബ്രൗസ്, തിരയൽ, ഫീഡുകൾ എന്നിവയിൽ 18+ ടൈറ്റിലുകൾ ഉൾപ്പെടുത്തൂ';

  @override
  String get restrictMessages => 'മെസ്സേജുകൾ ഫോളോ ചെയ്യുന്നവർക്ക് മാത്രമാക്കൂ';

  @override
  String get restrictMessagesDesc =>
      'നീ ഫോളോ ചെയ്യുന്നവർക്ക് മാത്രമേ നിനക്ക് മെസ്സേജ് അയയ്ക്കാനാകൂ';

  @override
  String get sectionServices => 'സർവീസുകൾ';

  @override
  String get novel => 'നോവൽ';

  @override
  String labelService(String label) {
    return '$label സർവീസ്';
  }

  @override
  String nameSettings(String name) {
    return '$name സെറ്റിംഗ്സ്';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name എക്സ്റ്റൻഷൻ ബ്രിഡ്ജിൽ നിന്നുള്ള ഓപ്ഷനുകൾ';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name തുടങ്ങാനായില്ല: $error';
  }

  @override
  String get importLists => 'ലിസ്റ്റുകൾ ഇമ്പോർട്ട് ചെയ്യൂ';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi, Kotatsu ബാക്കപ്പുകളിൽ നിന്ന്';

  @override
  String get exportLists => 'ലിസ്റ്റുകൾ എക്സ്പോർട്ട് ചെയ്യൂ';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon, Kotatsu ബാക്കപ്പിലേക്ക്';

  @override
  String get sectionBrowse => 'ബ്രൗസ്';

  @override
  String get readingTab => 'റീഡിംഗ് ടാബ്';

  @override
  String get readingTabDesc =>
      'മൂന്നാമത്തെ ടാബിൽ ഏതൊക്കെ എക്സ്റ്റൻഷനുകൾ കാണിക്കണം';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'ഡിഫോൾട്ട് ഫീഡ്';

  @override
  String get defaultFeedDesc => 'ഒരു സോഴ്സ് ഏത് ലിസ്റ്റുമായി തുറക്കണം';

  @override
  String noServiceSupports(String type) {
    return '$type സപ്പോർട്ട് ചെയ്യുന്ന സർവീസ് ഇല്ല';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed സോഴ്സുകളിൽ $loaded ലോഡ് ആയി';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'ഇവിടെ $type സപ്പോർട്ട് ചെയ്യുന്ന എക്സ്റ്റൻഷൻ സർവീസ് ഇല്ല.';
  }

  @override
  String get loadDataFrom => 'ഡാറ്റ ലോഡ് ചെയ്യേണ്ടത്';

  @override
  String noInstalledSourcesYet(String type) {
    return 'ഇൻസ്റ്റാൾ ചെയ്ത $type സോഴ്സുകൾ ഇതുവരെ ഇല്ല.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name-ന്റെ എക്സ്റ്റൻഷൻ ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';
  }

  @override
  String get thisSource => 'ഈ സോഴ്സ്';

  @override
  String failedToAddRepository(String error) {
    return 'റിപ്പോസിറ്ററി ചേർക്കാനായില്ല: $error';
  }

  @override
  String installedType(String type) {
    return 'ഇൻസ്റ്റാൾ ചെയ്ത $type';
  }

  @override
  String availableType(String type) {
    return 'ലഭ്യമായ $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'ഇൻസ്റ്റാൾ ചെയ്ത $type എക്സ്റ്റൻഷനുകൾ ഇല്ല';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'ലഭ്യമായ $type എക്സ്റ്റൻഷനുകൾ ഇല്ല';
  }

  @override
  String get nothingToShowYet => 'കാണിക്കാൻ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get addTitlesHint =>
      'ലിസ്റ്റിൽ കുറച്ച് ടൈറ്റിലുകൾ ചേർക്കൂ, അവ ഇവിടെ വരും.';

  @override
  String get couldntLoad => 'ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get progressStyleHint =>
      'പിൽ, ബാർ എന്നിവ പോസ്റ്ററിന് മുകളിൽ വരും; \"പുറത്ത്\" അതേ എണ്ണം സാധാരണ ടെക്സ്റ്റായി കാണിക്കും — ഒന്ന് തിരഞ്ഞെടുക്കൂ.';

  @override
  String get nixManagedUpdate =>
      'ഈ ബിൽഡ് Nix ആണ് മാനേജ് ചെയ്യുന്നത് — ഇവിടെ നിന്ന് അപ്ഡേറ്റ് ചെയ്യുന്നതിന് പകരം നിന്റെ ഫ്ലേക്കിൽ \"nix flake update\" ഓടിച്ച് റീബിൽഡ് ചെയ്യൂ';

  @override
  String autoUpdateFailed(String error) {
    return 'ഓട്ടോമാറ്റിക് അപ്ഡേറ്റ് പരാജയപ്പെട്ടു ($error) — പകരം ഡൗൺലോഡ് പേജ് തുറക്കുന്നു';
  }

  @override
  String get unknownPreference => 'അറിയാത്ത പ്രിഫറൻസ്';

  @override
  String unsupportedPreferenceType(String type) {
    return 'സപ്പോർട്ട് ചെയ്യാത്ത പ്രിഫറൻസ് തരം $type';
  }

  @override
  String get notYetReleased => 'ഇതുവരെ റിലീസ് ആയിട്ടില്ല';

  @override
  String get notStarted => 'തുടങ്ങിയിട്ടില്ല';

  @override
  String get country => 'രാജ്യം';

  @override
  String get sort => 'സോർട്ട്';

  @override
  String get chooseBackupDialog =>
      'Aniyomi, Mihon അല്ലെങ്കിൽ Kotatsu ബാക്കപ്പ് തിരഞ്ഞെടുക്കൂ';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi, Kotatsu എന്നിവയിൽ നിന്ന് ലൈബ്രറി കൊണ്ടുവരൂ. ടൈറ്റിലുകൾ, കവറുകൾ, പ്രോഗ്രസ്, കാറ്റഗറികൾ എന്നിവ നിലനിൽക്കും.';

  @override
  String get chooseBackupFile => 'ബാക്കപ്പ് ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String importAnimeCount(int count) {
    return '$count അനിമെ ഇമ്പോർട്ട് ചെയ്യൂ';
  }

  @override
  String importMangaCount(int count) {
    return '$count മംഗ ഇമ്പോർട്ട് ചെയ്യൂ';
  }

  @override
  String get mergeWithExisting => 'നിലവിലുള്ള ലിസ്റ്റുകളുമായി ലയിപ്പിക്കൂ';

  @override
  String get mergeWithExistingDesc =>
      'ഉള്ളത് അതുപോലെ നിലനിർത്തും; ഓഫ് ആക്കിയാൽ ചേരുന്ന ടൈറ്റിലുകൾ മാറ്റിയെഴുതും';

  @override
  String get chooseAnother => 'മറ്റൊന്ന് തിരഞ്ഞെടുക്കൂ';

  @override
  String get import => 'ഇമ്പോർട്ട്';

  @override
  String animeCount(int count) {
    return '$count അനിമെ';
  }

  @override
  String mangaCount(int count) {
    return '$count മംഗ';
  }

  @override
  String get chooseSaveLocation =>
      'ബാക്കപ്പ് എവിടെ സേവ് ചെയ്യണമെന്ന് തിരഞ്ഞെടുക്കൂ';

  @override
  String savedPath(String path) {
    return '$path സേവ് ചെയ്തു';
  }

  @override
  String exportFailed(String error) {
    return 'എക്സ്പോർട്ട് പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get nothingInLocalLists =>
      'നിന്റെ ലോക്കൽ ലിസ്റ്റുകളിൽ ഇതുവരെ ഒന്നുമില്ല.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'നിന്റെ ലോക്കൽ ലിസ്റ്റുകളിൽ നിന്ന് $anime അനിമെയും $manga മംഗയും എക്സ്പോർട്ട് ചെയ്യും. Kotatsu മംഗ മാത്രമേ സപ്പോർട്ട് ചെയ്യൂ.';
  }

  @override
  String get saveToFolder => 'ഫോൾഡറിൽ സേവ് ചെയ്യൂ';

  @override
  String get formatAnimeManga => 'അനിമെയും മംഗയും · .tachibk';

  @override
  String get formatMangaTachibk => 'മംഗ മാത്രം · .tachibk';

  @override
  String get formatMangaZip => 'മംഗ മാത്രം · .zip';

  @override
  String get genres => 'ജോണറുകൾ';

  @override
  String get relations => 'ബന്ധങ്ങൾ';

  @override
  String get recommendations => 'ശുപാർശകൾ';

  @override
  String get openings => 'ഓപ്പണിംഗുകൾ';

  @override
  String get endings => 'എൻഡിംഗുകൾ';

  @override
  String get background => 'പശ്ചാത്തലം';

  @override
  String get links => 'ലിങ്കുകൾ';

  @override
  String get rank => 'റാങ്ക്';

  @override
  String get members => 'അംഗങ്ങൾ';

  @override
  String get favorites => 'പ്രിയപ്പെട്ടവ';

  @override
  String get episodes => 'എപ്പിസോഡുകൾ';

  @override
  String get chapters => 'ചാപ്റ്ററുകൾ';

  @override
  String get volumes => 'വോള്യങ്ങൾ';

  @override
  String get format => 'ഫോർമാറ്റ്';

  @override
  String get source => 'സോഴ്സ്';

  @override
  String get duration => 'ദൈർഘ്യം';

  @override
  String minutesPerEpisode(int minutes) {
    return 'ഒരു എപ്പിസോഡിന് $minutes മിനിറ്റ്';
  }

  @override
  String get rating => 'റേറ്റിംഗ്';

  @override
  String get studio => 'സ്റ്റുഡിയോ';

  @override
  String get serialization => 'സീരിയലൈസേഷൻ';

  @override
  String get season => 'സീസൺ';

  @override
  String get broadcast => 'ബ്രോഡ്കാസ്റ്റ്';

  @override
  String get aired => 'സംപ്രേഷണം ചെയ്തത്';

  @override
  String get published => 'പ്രസിദ്ധീകരിച്ചത്';

  @override
  String get popularity => 'ജനപ്രീതി';

  @override
  String get community => 'കമ്മ്യൂണിറ്റി';

  @override
  String get watching => 'കാണുന്നു';

  @override
  String get reading => 'വായിക്കുന്നു';

  @override
  String get dropped => 'ഉപേക്ഷിച്ചു';

  @override
  String get planned => 'പ്ലാൻ ചെയ്തത്';

  @override
  String get trailers => 'ട്രെയിലറുകൾ';

  @override
  String get ratings => 'റേറ്റിംഗുകൾ';

  @override
  String get originalTitle => 'ഒറിജിനൽ';

  @override
  String get titleLabel => 'ടൈറ്റിൽ';

  @override
  String get votes => 'വോട്ടുകൾ';

  @override
  String get watchedStat => 'കണ്ടത്';

  @override
  String get runtime => 'റൺടൈം';

  @override
  String get director => 'സംവിധായകൻ';

  @override
  String get network => 'നെറ്റ്‌വർക്ക്';

  @override
  String get certification => 'സർട്ടിഫിക്കേഷൻ';

  @override
  String get airs => 'സംപ്രേഷണം';

  @override
  String get budget => 'ബജറ്റ്';

  @override
  String get revenue => 'വരുമാനം';

  @override
  String get released => 'റിലീസ് ചെയ്തത്';

  @override
  String get tags => 'ടാഗുകൾ';

  @override
  String get author => 'രചയിതാവ്';

  @override
  String get born => 'ജനനം';

  @override
  String get website => 'വെബ്സൈറ്റ്';

  @override
  String get established => 'സ്ഥാപിതം';

  @override
  String get manhwa => 'മൻഹ്വ';

  @override
  String get manhua => 'മൻഹുവ';

  @override
  String get novels => 'നോവലുകൾ';

  @override
  String get thisMonth => 'ഈ മാസം';

  @override
  String get movies => 'സിനിമകൾ';

  @override
  String get shows => 'ഷോകൾ';

  @override
  String get rewatching => 'വീണ്ടും കാണുന്നു';

  @override
  String get rereading => 'വീണ്ടും വായിക്കുന്നു';

  @override
  String get watchedStatus => 'കണ്ടത്';

  @override
  String get planning => 'പ്ലാനിംഗ്';

  @override
  String get paused => 'പോസ്ഡ്';

  @override
  String get watch => 'കാണൂ';

  @override
  String get read => 'വായിക്കൂ';

  @override
  String get finished => 'പൂർത്തിയായി';

  @override
  String get releasing => 'റിലീസ് ആകുന്നു';

  @override
  String get cancelled => 'റദ്ദാക്കി';

  @override
  String get hiatus => 'ഹിയാറ്റസ്';

  @override
  String get remove => 'നീക്കം ചെയ്യൂ';

  @override
  String syncToService(String service) {
    return '$service-ലേക്ക് സിങ്ക് ചെയ്യൂ';
  }

  @override
  String syncedToService(String service) {
    return '$service-ലേക്ക് സിങ്ക് ചെയ്തു';
  }

  @override
  String get latestReleases => 'ഏറ്റവും പുതിയ റിലീസുകൾ';

  @override
  String get topRated => 'ടോപ്പ് റേറ്റഡ്';

  @override
  String localSection(String title) {
    return '$title · ലോക്കൽ';
  }

  @override
  String get localEntryNote =>
      'ഈ ടൈറ്റിൽ ഈ ഉപകരണത്തിലെ ലോക്കൽ ലിസ്റ്റിൽ മാത്രമേ ഉള്ളൂ. നിന്റെ അക്കൗണ്ട് ലിസ്റ്റുമായി ഏറ്റുമുട്ടാൻ സാധ്യതയുള്ളതിനാൽ ഇവിടെ എഡിറ്റിംഗ് ഓഫാണ്; നീക്കം ചെയ്യാൻ പറ്റും.';

  @override
  String get cardPresetPoster => 'പോസ്റ്റർ';

  @override
  String get cardPresetCard => 'കാർഡ്';

  @override
  String get cardPresetCozy => 'കോസി';

  @override
  String get sortTopRated => 'ടോപ്പ് റേറ്റഡ്';

  @override
  String get sortMostPopular => 'ഏറ്റവും ജനപ്രിയം';

  @override
  String get sortTrending => 'ട്രെൻഡിംഗ്';

  @override
  String get sortNewest => 'ഏറ്റവും പുതിയത്';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'ഏറ്റവും കൂടുതൽ പ്രിയപ്പെട്ടത്';

  @override
  String get anyCountry => 'ഏത് രാജ്യവും';

  @override
  String get orderScore => 'സ്കോർ';

  @override
  String get orderTitle => 'ടൈറ്റിൽ';

  @override
  String get orderLastUpdated => 'അവസാനം അപ്ഡേറ്റ് ചെയ്തത്';

  @override
  String get orderLastAdded => 'അവസാനം ചേർത്തത്';

  @override
  String get never => 'ഒരിക്കലുമില്ല';

  @override
  String get always => 'എപ്പോഴും';

  @override
  String get scorePoint100 => '100 പോയിന്റ്';

  @override
  String get scorePoint10Decimal => '10 പോയിന്റ് ഡെസിമൽ';

  @override
  String get scorePoint10 => '10 പോയിന്റ്';

  @override
  String get scorePoint5 => '5 സ്റ്റാർ';

  @override
  String get scorePoint3 => '3 പോയിന്റ് സ്മൈലി';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മണിക്കൂർ',
      one: '1 മണിക്കൂർ',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ദിവസം',
      one: '1 ദിവസം',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ആഴ്ച',
      one: '1 ആഴ്ച',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'തുടരൂ';

  @override
  String get resumeSourceMissing =>
      'തുടരാൻ ഈ ടൈറ്റിലിന്റെ സോഴ്സ് ഇൻസ്റ്റാൾ ചെയ്യൂ';

  @override
  String get resumeRemove => 'തുടരുന്നതിൽ നിന്ന് നീക്കം ചെയ്യൂ';

  @override
  String resumeAt(String time) {
    return '$time ബാക്കി';
  }

  @override
  String resumePage(int page, int total) {
    return 'പേജ് $page / $total';
  }

  @override
  String get continueWatching => 'കാണുന്നത് തുടരൂ';

  @override
  String get continueReading => 'വായന തുടരൂ';

  @override
  String get favouriteAnimeSection => 'പ്രിയപ്പെട്ട അനിമെ';

  @override
  String get favouriteMangaSection => 'പ്രിയപ്പെട്ട മംഗ';

  @override
  String get plannedAnime => 'പ്ലാൻ ചെയ്ത അനിമെ';

  @override
  String get plannedManga => 'പ്ലാൻ ചെയ്ത മംഗ';

  @override
  String get completedAnime => 'പൂർത്തിയാക്കിയ അനിമെ';

  @override
  String get completedManga => 'പൂർത്തിയാക്കിയ മംഗ';

  @override
  String get hiddenMedia => 'മറച്ച മീഡിയ';

  @override
  String get recentUpdates => 'സമീപകാല അപ്ഡേറ്റുകൾ';

  @override
  String get trendingNow => 'ഇപ്പോൾ ട്രെൻഡിംഗ്';

  @override
  String get popularThisSeason => 'ഈ സീസണിലെ ജനപ്രിയം';

  @override
  String get trendingMovies => 'ട്രെൻഡിംഗ് സിനിമകൾ';

  @override
  String get topRatedSeries => 'ടോപ്പ് റേറ്റഡ് സീരീസ്';

  @override
  String get mostFavouriteSeries => 'ഏറ്റവും പ്രിയപ്പെട്ട സീരീസ്';

  @override
  String get popularAnime => 'ജനപ്രിയ അനിമെ';

  @override
  String get trendingManhwa => 'ട്രെൻഡിംഗ് മൻഹ്വ';

  @override
  String get trendingNovels => 'ട്രെൻഡിംഗ് നോവലുകൾ';

  @override
  String get topRatedManga => 'ടോപ്പ് റേറ്റഡ് മംഗ';

  @override
  String get mostFavouriteManga => 'ഏറ്റവും പ്രിയപ്പെട്ട മംഗ';

  @override
  String get popularManga => 'ജനപ്രിയ മംഗ';

  @override
  String get topMovies => 'ടോപ്പ് സിനിമകൾ';

  @override
  String get topOna => 'ടോപ്പ് ONA';

  @override
  String get topOva => 'ടോപ്പ് OVA';

  @override
  String get mostPopular => 'ഏറ്റവും ജനപ്രിയം';

  @override
  String get mostFavourite => 'ഏറ്റവും പ്രിയപ്പെട്ടത്';

  @override
  String get upcoming => 'വരാനിരിക്കുന്നത്';

  @override
  String get topManga => 'ടോപ്പ് മംഗ';

  @override
  String get topManhwa => 'ടോപ്പ് മൻഹ്വ';

  @override
  String get topManhua => 'ടോപ്പ് മൻഹുവ';

  @override
  String get topNovels => 'ടോപ്പ് നോവലുകൾ';

  @override
  String get topOneShots => 'ടോപ്പ് വൺ-ഷോട്ടുകൾ';

  @override
  String get trendingMoviesToday => 'ഇന്ന് ട്രെൻഡിംഗ് സിനിമകൾ';

  @override
  String get trendingShowsToday => 'ഇന്ന് ട്രെൻഡിംഗ് ഷോകൾ';

  @override
  String get trendingMoviesWeek => 'ഈ ആഴ്ച ട്രെൻഡിംഗ് സിനിമകൾ';

  @override
  String get trendingShowsWeek => 'ഈ ആഴ്ച ട്രെൻഡിംഗ് ഷോകൾ';

  @override
  String get mostWatchedMoviesMonth => 'ഈ മാസം ഏറ്റവും കൂടുതൽ കണ്ട സിനിമകൾ';

  @override
  String get mostWatchedShowsMonth => 'ഈ മാസം ഏറ്റവും കൂടുതൽ കണ്ട ഷോകൾ';

  @override
  String get trendingThisWeek => 'ഈ ആഴ്ച ട്രെൻഡിംഗ്';

  @override
  String get mostWatchedThisMonth => 'ഈ മാസം ഏറ്റവും കൂടുതൽ കണ്ടത്';

  @override
  String get repoLinksAdded => 'റിപ്പോ ലിങ്കുകൾ വിജയകരമായി ചേർത്തു!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData =>
      'AniList-ൽ നിന്ന് ഡാറ്റ എടുക്കുന്നതിൽ പിശക്.';

  @override
  String get navInfo => 'വിവരം';

  @override
  String get navComments => 'കമന്റുകൾ';

  @override
  String get playerNotAvailable => 'പ്ലെയർ ഇതുവരെ ലഭ്യമല്ല';

  @override
  String deepLinkInitialError(String error) {
    return 'ആദ്യ ഡീപ് ലിങ്ക് എടുക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'ലിങ്ക് തുറക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ഈ ലിങ്ക് തുറക്കാനാവില്ല: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'ലിങ്ക് തുറക്കുന്നതിൽ പിശക്: $error';
  }

  @override
  String get forReleasingTitles => 'ഇപ്പോൾ റിലീസ് ആകുന്ന ടൈറ്റിലുകൾക്ക്';

  @override
  String get progress => 'പ്രോഗ്രസ്';

  @override
  String get notes => 'നോട്ടുകൾ';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" സർവീസ് കണ്ടില്ല';
  }

  @override
  String get glassEffectEnabled => 'ഗ്ലാസ് ഇഫക്റ്റ് ഓൺ ആക്കി';

  @override
  String get glassEffectDisabled => 'ഗ്ലാസ് ഇഫക്റ്റ് ഓഫ് ആക്കി';

  @override
  String get materialYouEnabled => 'Material You ഓൺ ആക്കി';

  @override
  String get materialYouDisabled => 'Material You ഓഫ് ആക്കി';

  @override
  String get darkModeEnabled => 'ഡാർക്ക് മോഡ് ഓൺ ആക്കി';

  @override
  String get darkModeDisabled => 'ഡാർക്ക് മോഡ് ഓഫ് ആക്കി';

  @override
  String get animeList => 'അനിമെ ലിസ്റ്റ്';

  @override
  String get mangaList => 'മംഗ ലിസ്റ്റ്';

  @override
  String ownerAnimeList(String owner) {
    return '$owner-ന്റെ അനിമെ ലിസ്റ്റ്';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner-ന്റെ മംഗ ലിസ്റ്റ്';
  }

  @override
  String get loadingList => 'ലിസ്റ്റ് ലോഡ് ചെയ്യുന്നു';

  @override
  String get earlier => 'മുമ്പത്തേത്';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ദിവസം മുമ്പ്',
      one: '1 ദിവസം മുമ്പ്',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മണിക്കൂർ മുമ്പ്',
      one: '1 മണിക്കൂർ മുമ്പ്',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മിനിറ്റ് മുമ്പ്',
      one: '1 മിനിറ്റ് മുമ്പ്',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$countമി മുമ്പ്';
  }

  @override
  String hoursAgoShort(int count) {
    return '$countമ മുമ്പ്';
  }

  @override
  String daysAgoShort(int count) {
    return '$countദി മുമ്പ്';
  }

  @override
  String weeksAgoShort(int count) {
    return '$countആ മുമ്പ്';
  }

  @override
  String get couldntLoadSource => 'ഈ സോഴ്സ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get followers => 'ഫോളോവർമാർ';

  @override
  String couldntLoadTitle(String title) {
    return '$title ലോഡ് ചെയ്യാനായില്ല';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'ഈ പ്രൊഫൈൽ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get profile => 'പ്രൊഫൈൽ';

  @override
  String get feed => 'ഫീഡ്';

  @override
  String get stats => 'സ്റ്റാറ്റ്സ്';

  @override
  String get received => 'ലഭിച്ചത്';

  @override
  String get sent => 'അയച്ചത്';

  @override
  String get global => 'ഗ്ലോബൽ';

  @override
  String get couldntLoadPage => 'ഈ പേജ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get couldntLoadAllDetails => 'എല്ലാ വിശദാംശങ്ങളും ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get series => 'സീരീസ്';

  @override
  String get studios => 'സ്റ്റുഡിയോകൾ';

  @override
  String get users => 'യൂസർമാർ';

  @override
  String repositoriesTitle(String type) {
    return '$type റിപ്പോസിറ്ററികൾ';
  }

  @override
  String get repositoryUrl => 'റിപ്പോസിറ്ററി URL';

  @override
  String get downloadingRepository => 'റിപ്പോസിറ്ററി ഡൗൺലോഡ് ചെയ്യുന്നു…';

  @override
  String get noRepositories => 'റിപ്പോസിറ്ററികൾ ചേർത്തിട്ടില്ല';

  @override
  String repoExtensionsCount(String count) {
    return '$count എക്സ്റ്റൻഷനുകൾ';
  }

  @override
  String get searchExtensions => 'എക്സ്റ്റൻഷനുകൾ തിരയൂ...';

  @override
  String deletePluginTitle(String name) {
    return '$name ഡിലീറ്റ് ചെയ്യണോ?';
  }

  @override
  String get deletePluginMessage => 'ഈ പ്ലഗിൻ ഡിലീറ്റ് ചെയ്യണമെന്ന് ഉറപ്പാണോ?';

  @override
  String pluginDeleted(String name) {
    return '$name ഡിലീറ്റ് ചെയ്തു';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name കോൺഫിഗർ ചെയ്ത റിപ്പോയിൽ ലഭ്യമല്ല';
  }

  @override
  String get pluginFetchFailed => 'പ്ലഗിൻ വിവരം എടുക്കാനായില്ല';

  @override
  String installPluginTitle(String name) {
    return '$name ഇൻസ്റ്റാൾ ചെയ്യൂ';
  }

  @override
  String sizeLabel(String size) {
    return 'വലുപ്പം: $size';
  }

  @override
  String get installedState => 'ഇൻസ്റ്റാൾ ചെയ്തത്';

  @override
  String get errorLabel => 'പിശക്:';

  @override
  String get stackTraceDetails => 'വിശദാംശങ്ങൾ (സ്റ്റാക്ക് ട്രേസ്)';

  @override
  String get shareLogFile => 'ലോഗ് ഫയൽ ഷെയർ ചെയ്യൂ';

  @override
  String get copyLogs => 'ലോഗുകൾ കോപ്പി ചെയ്യൂ';

  @override
  String noListToEdit(String service) {
    return '$service-ൽ എഡിറ്റ് ചെയ്യാൻ ലിസ്റ്റ് ഇല്ല';
  }

  @override
  String get couldNotReadFile => 'ആ ഫയൽ വായിക്കാനായില്ല';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime അനിമെയും $manga മംഗയും ഇമ്പോർട്ട് ചെയ്തു';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count എണ്ണം നേരത്തേ ഉണ്ട്';
  }

  @override
  String get airingNow => 'ഇപ്പോൾ സംപ്രേഷണം ചെയ്യുന്നു';

  @override
  String get topRatedMovies => 'ടോപ്പ് റേറ്റഡ് സിനിമകൾ';

  @override
  String get koreanDramas => 'കൊറിയൻ ഡ്രാമകൾ';

  @override
  String get chineseDramas => 'ചൈനീസ് ഡ്രാമകൾ';

  @override
  String get japaneseDramas => 'ജാപ്പനീസ് ഡ്രാമകൾ';

  @override
  String get thaiDramas => 'തായ് ഡ്രാമകൾ';

  @override
  String get turkishDramas => 'ടർക്കിഷ് ഡ്രാമകൾ';

  @override
  String get miniSeries => 'മിനി സീരീസ്';

  @override
  String get topRatedShows => 'ടോപ്പ് റേറ്റഡ് ഷോകൾ';

  @override
  String get recommendedSection => 'ശുപാർശ ചെയ്തത്';

  @override
  String get syncRow => 'ലിസ്റ്റുകൾ സിങ്ക് ചെയ്യൂ';

  @override
  String get syncRowDesc =>
      'ഒരു സർവീസിന്റെ ലിസ്റ്റ് നിന്റെ മറ്റ് അക്കൗണ്ടുകളിലേക്ക് പകർത്തൂ';

  @override
  String get syncTitle => 'സിങ്ക്';

  @override
  String get syncMainService => 'മെയിൻ സർവീസ്';

  @override
  String get syncMainServiceDesc =>
      'അതിന്റെ ലിസ്റ്റാണ് അടിസ്ഥാനം; സൈൻ ഇൻ ചെയ്ത മറ്റെല്ലാ സർവീസുകളും അതിനോട് ചേരുംവിധം അപ്ഡേറ്റ് ചെയ്യും';

  @override
  String get syncAuto => 'ഓട്ടോ സിങ്ക്';

  @override
  String get syncAutoDesc =>
      'ആപ്പ് തുറക്കുമ്പോഴും ഓരോ 30 മിനിറ്റിലും ബാക്ക്ഗ്രൗണ്ടിൽ ഫെച്ച് ചെയ്ത് സിങ്ക് ചെയ്യൂ';

  @override
  String get syncAddMissing => 'ഇല്ലാത്ത എൻട്രികൾ ചേർക്കൂ';

  @override
  String get syncAddMissingDesc =>
      'മറ്റേ സർവീസിൽ ഇതുവരെ ഇല്ലാത്ത എൻട്രികളും ചേർക്കൂ';

  @override
  String get syncOnlyForward => 'കൂടുതൽ പ്രോഗ്രസ് നിലനിർത്തൂ';

  @override
  String get syncOnlyForwardDesc =>
      'മുന്നിലുള്ള സർവീസിന്റെ പ്രോഗ്രസ് കുറയ്ക്കരുത്';

  @override
  String get syncFetch => 'ഫെച്ച്';

  @override
  String get syncFetchAgain => 'വീണ്ടും ഫെച്ച് ചെയ്യൂ';

  @override
  String get syncAll => 'എല്ലാം സിങ്ക് ചെയ്യൂ';

  @override
  String get syncStop => 'നിർത്തൂ';

  @override
  String get syncResume => 'തുടരൂ';

  @override
  String get syncNothingToSync => 'ഈ തരത്തിന് ഈ സർവീസ് സിങ്ക് ചെയ്യാനാവില്ല';

  @override
  String get syncNoTargets => 'സിങ്ക് ചെയ്യാൻ മറ്റൊരു സർവീസിൽ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String get syncLoadingMap => 'ഐഡി മാപ്പിംഗ് ലോഡ് ചെയ്യുന്നു';

  @override
  String get syncComparing => 'ലിസ്റ്റുകൾ താരതമ്യം ചെയ്യുന്നു';

  @override
  String get syncIntro =>
      'ഒരു മെയിൻ സർവീസ് തിരഞ്ഞെടുത്ത് ഫെച്ച് അമർത്തൂ. ഓരോ സർവീസിൽ നിന്നും നിന്റെ ലിസ്റ്റ് ഒരു തവണ എടുത്ത് മെയിനുമായി താരതമ്യം ചെയ്യും.';

  @override
  String get syncStateSynced => 'സിങ്ക് ആയി';

  @override
  String get syncStateOutdated => 'സിങ്ക് അല്ല';

  @override
  String get syncStateMissing => 'ലിസ്റ്റിൽ ഇല്ല';

  @override
  String get syncStateUnmapped => 'ചേരുന്നില്ല';

  @override
  String syncPaused(String time) {
    return 'റേറ്റ് ലിമിറ്റിനായി കാത്തിരിക്കുന്നു, $time കഴിഞ്ഞ് തുടരും';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count എണ്ണം $name-ൽ മാത്രം, തൊടാതെ വിട്ടു';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total-ൽ $done';
  }

  @override
  String get syncNothingHere => 'കാണിക്കാൻ ഒന്നുമില്ല';

  @override
  String syncLimits(int used, int max, String window) {
    return 'ഈ $window $max-ൽ $used റിക്വസ്റ്റുകൾ ഉപയോഗിച്ചു';
  }

  @override
  String get syncMinute => 'മിനിറ്റ്';

  @override
  String get syncDay => 'ദിവസം';

  @override
  String get syncNotInList => 'ഇതുവരെ ലിസ്റ്റിൽ ഇല്ല';

  @override
  String get syncCleared => 'പ്ലാൻ ക്ലിയർ ചെയ്തു';

  @override
  String get syncClear => 'ക്ലിയർ';

  @override
  String get syncOptions => 'ഓപ്ഷനുകൾ';

  @override
  String get syncShared => 'മറ്റൊരു ഐറ്റവുമായി എൻട്രി പങ്കിടുന്നു';

  @override
  String syncNotFound(String service) {
    return '$service-ൽ കണ്ടില്ല';
  }

  @override
  String syncService(String service, int count) {
    return '$service സിങ്ക് ചെയ്യൂ ($count)';
  }

  @override
  String get syncOnEdit => 'മാറ്റങ്ങൾ ഉടൻ സിങ്ക് ചെയ്യൂ';

  @override
  String get syncOnEditDesc =>
      'ഓരോ പ്രോഗ്രസ് അപ്ഡേറ്റും ലിസ്റ്റ് എഡിറ്റും സൈൻ ഇൻ ചെയ്ത മറ്റ് സർവീസുകളിലേക്ക് ഉടൻ അയയ്ക്കൂ';

  @override
  String syncPushed(String services) {
    return '$services-ലേക്ക് സിങ്ക് ചെയ്തു';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'റേറ്റ് ലിമിറ്റ് ആയി, അൽപ്പം കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കൂ';

  @override
  String get syncAhead => 'ഏതാണോ മുന്നിൽ അത്';

  @override
  String get syncAheadDesc =>
      'ടു-വേ: ഓരോ ടൈറ്റിലിനും ഏറ്റവും മുന്നിലുള്ള എൻട്രി ജയിക്കുകയും നിന്റെ മറ്റ് എല്ലാ സർവീസുകളിലേക്കും പകർത്തുകയും ചെയ്യും';

  @override
  String syncAheadFrom(String service) {
    return '$service-ൽ നിന്ന്';
  }

  @override
  String get syncConfirm => 'സിങ്ക് ചെയ്യുംമുമ്പ് പരിശോധിക്കൂ';

  @override
  String get syncConfirmDesc =>
      'എല്ലാം സിങ്ക് ചെയ്യുമ്പോൾ എന്തൊക്കെ മാറും, എത്ര റിക്വസ്റ്റ് വേണം എന്ന് കാണിക്കൂ';

  @override
  String get syncPreviewTitle => 'സിങ്ക് ചെയ്യാൻ റെഡി';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates അപ്ഡേറ്റുകൾ, $adds ചേർക്കാൻ';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'ഏകദേശം $count റിക്വസ്റ്റുകൾ';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ഐഡികൾക്ക് ആദ്യം ലുക്കപ്പ് വേണം';
  }

  @override
  String get syncPreviewNothing => 'മാറ്റാൻ ഒന്നുമില്ല';

  @override
  String get syncStart => 'തുടങ്ങൂ';

  @override
  String get syncRetry => 'വീണ്ടും ശ്രമിക്കൂ';

  @override
  String get syncSkip => 'ഈ ഐറ്റം ഒഴിവാക്കൂ';

  @override
  String get syncInclude => 'ഈ ഐറ്റം വീണ്ടും ഉൾപ്പെടുത്തൂ';

  @override
  String get syncSkippedLabel => 'ഒഴിവാക്കി';

  @override
  String get syncChanges => 'വ്യത്യാസങ്ങൾ';

  @override
  String get syncChangeStatus => 'സ്റ്റാറ്റസ്';

  @override
  String get syncChangeProgress => 'പ്രോഗ്രസ്';

  @override
  String get syncChangeScore => 'സ്കോർ';

  @override
  String get syncChangeDates => 'തീയതികൾ';

  @override
  String get syncChangeRepeat => 'റീവാച്ച് എണ്ണം';

  @override
  String get syncFailedReason => 'എന്തുകൊണ്ട് പരാജയപ്പെട്ടു';

  @override
  String get syncSkippedHint =>
      'ഒഴിവാക്കിയ ഐറ്റങ്ങളെ വീണ്ടും ഫെച്ച് ചെയ്താലും തൊടില്ല';

  @override
  String get commentsRules => 'കമന്റിംഗ് നിയമങ്ങൾ';

  @override
  String get commentsRulesBody =>
      'ഏതെങ്കിലും നിയമം ലംഘിച്ചാൽ പുറത്താകും\n\n1. വംശീയതയോ വിവേചനമോ വിദ്വേഷ പ്രസംഗമോ പാടില്ല\n2. സ്പാമിംഗോ സ്വയം പ്രമോഷനോ പാടില്ല\n3. NSFW കണ്ടന്റ് ഒരിക്കലും പാടില്ല\n4. ഇംഗ്ലീഷ് മാത്രം, ഒഴിവില്ല\n5. ആൾമാറാട്ടം, ശല്യപ്പെടുത്തൽ, അധിക്ഷേപം പാടില്ല\n6. നിയമവിരുദ്ധ കണ്ടന്റോ ഏതെങ്കിലും ഫാൻഡത്തോടുള്ള കടുത്ത അനാദരവോ പാടില്ല\n7. റിപ്പോസിറ്ററികളോ എക്സ്റ്റൻഷനുകളോ ചോദിക്കുകയോ ഷെയർ ചെയ്യുകയോ ചെയ്യരുത്\n8. സ്പോയിലർ ടാഗും മുന്നറിയിപ്പും സഹിതം മാത്രം\n9. പ്രായപൂർത്തിയാകാത്ത കഥാപാത്രങ്ങളെക്കുറിച്ച് ലൈംഗികമോ അനുചിതമോ ആയ കമന്റുകൾ പാടില്ല\n10. തെറ്റാണെങ്കിൽ പോസ്റ്റ് ചെയ്യരുത്!';

  @override
  String get commentsRulesAccept => 'മനസ്സിലായി';

  @override
  String get commentsSortNewest => 'ഏറ്റവും പുതിയത്';

  @override
  String get commentsSortOldest => 'ഏറ്റവും പഴയത്';

  @override
  String get commentsSortHighest => 'ഉയർന്ന റേറ്റിംഗ്';

  @override
  String get commentsSortLowest => 'കുറഞ്ഞ റേറ്റിംഗ്';

  @override
  String commentsEpisodeShort(int number) {
    return 'എപ് $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'ചാപ് $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'എപ്പിസോഡ് അനുസരിച്ച് ഫിൽട്ടർ';

  @override
  String get commentsFilterChapterTitle => 'ചാപ്റ്റർ അനുസരിച്ച് ഫിൽട്ടർ';

  @override
  String get commentsFilterTagTitle =>
      'ഒരു എപ്പിസോഡ് അല്ലെങ്കിൽ ചാപ്റ്റർ നമ്പർ നൽകൂ';

  @override
  String get commentsFilterHint => 'നമ്പർ';

  @override
  String get commentsFilterApply => 'ഫിൽട്ടർ';

  @override
  String get commentsFilterClear => 'എല്ലാം കാണിക്കൂ';

  @override
  String get commentsPlaceholder => 'ഒരു കമന്റ് ചേർക്കൂ…';

  @override
  String commentsReplyingTo(String name) {
    return '$name-ന് മറുപടി നൽകുന്നു';
  }

  @override
  String get commentsSend => 'അയയ്ക്കൂ';

  @override
  String get commentsTagButton => 'ടാഗ്';

  @override
  String commentsTagTitle(String label) {
    return 'ടാഗ് $label (ഓപ്ഷണൽ)';
  }

  @override
  String get commentsTagEpisode => 'എപ്പിസോഡ്';

  @override
  String get commentsTagChapter => 'ചാപ്റ്റർ';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label നമ്പർ';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ടാഗ് ആകെ എണ്ണത്തിൽ ($total) കൂടരുത്';
  }

  @override
  String get commentsNoTag => 'ടാഗ് ഇല്ല';

  @override
  String get commentsSpoiler => 'സ്പോയിലർ';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF തിരയൂ';

  @override
  String get commentsGifEmpty => 'GIF ഒന്നും കണ്ടില്ല';

  @override
  String get commentsEmptyText => 'കമന്റ് ശൂന്യമാകരുത്';

  @override
  String get commentsBannedYou =>
      'നിനക്ക് കമന്റ് ചെയ്യുന്നതിൽ നിന്ന് വിലക്കുണ്ട്';

  @override
  String get commentsEdited => 'കമന്റ് എഡിറ്റ് ചെയ്തു';

  @override
  String get commentsDeleted => 'കമന്റ് ഡിലീറ്റ് ചെയ്തു';

  @override
  String get commentsDeletedPlaceholder => '[ഡിലീറ്റ് ചെയ്തത്]';

  @override
  String get commentsReported => 'കമന്റ് റിപ്പോർട്ട് ചെയ്തു';

  @override
  String get commentsUserBanned => 'യൂസറെ ബാൻ ചെയ്തു';

  @override
  String get commentsReport => 'റിപ്പോർട്ട്';

  @override
  String get commentsReportAsk =>
      'ഈ കമന്റ് മോഡറേറ്റർമാർക്ക് റിപ്പോർട്ട് ചെയ്യണോ?';

  @override
  String get commentsDelete => 'ഡിലീറ്റ്';

  @override
  String get commentsDeleteAsk =>
      'ഈ കമന്റ് എല്ലാവർക്കും വേണ്ടി നീക്കം ചെയ്യപ്പെടും.';

  @override
  String get commentsBan => 'ബാൻ';

  @override
  String get commentsBanAsk =>
      'ഈ യൂസറെ കമന്റ് ചെയ്യുന്നതിൽ നിന്ന് ബാൻ ചെയ്യണോ?';

  @override
  String get commentsCopy => 'കോപ്പി';

  @override
  String get commentsViewReply => '1 മറുപടി കാണൂ';

  @override
  String commentsViewReplies(int count) {
    return '$count മറുപടികൾ കാണൂ';
  }

  @override
  String get commentsHideReplies => 'മറുപടികൾ മറയ്ക്കൂ';

  @override
  String get commentsLoadMore => 'കൂടുതൽ കമന്റുകൾ ലോഡ് ചെയ്യൂ';

  @override
  String get commentsEmpty => 'ഇതുവരെ കമന്റുകൾ ഇല്ല. ആദ്യം നീ ആകൂ!';

  @override
  String get commentsEmptyFiltered => 'ഈ ഫിൽട്ടറിന് കമന്റുകൾ ഇല്ല';

  @override
  String get commentsSignIn =>
      'കമന്റുകൾ വായിക്കാനും എഴുതാനും AniList-ൽ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String get commentsSignInMessage =>
      'കമന്റുകൾ എല്ലാ സർവീസുകളിലും പൊതുവാണ്, നിന്റെ AniList അക്കൗണ്ട് ഉപയോഗിക്കുന്നു.';

  @override
  String get commentsUnavailable => 'ഈ ടൈറ്റിലിന് കമന്റുകൾ ലഭ്യമല്ല';

  @override
  String get commentsUnavailableMessage =>
      'ഇത് ഒരു AniList എൻട്രിയുമായി ചേർക്കാനായില്ല.';

  @override
  String get commentsDisabled => 'കമന്റുകൾ ഓഫാണ്';

  @override
  String get commentsDisabledMessage =>
      'സെറ്റിംഗ്സ് › പൊതുവായത് എന്നതിൽ നിന്ന് വീണ്ടും ഓണാക്കാം.';

  @override
  String get commentsOffline => 'കമന്റുകൾ ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get commentsSingleTitle => 'ഒരു കമന്റ് കാണിക്കുന്നു';

  @override
  String get commentsShowAll => 'എല്ലാ കമന്റുകളും കാണിക്കൂ';

  @override
  String get commentsSettingsHeader => 'കമന്റുകൾ';

  @override
  String get commentsSettingEnabled => 'കമന്റുകൾ';

  @override
  String get commentsSettingEnabledDesc =>
      'ടൈറ്റിലുകളിൽ കമന്റ്സ് ടാബ് കാണിക്കൂ, നിന്റെ AniList അക്കൗണ്ട് ഉപയോഗിച്ച് കമന്റ് സെർവറിൽ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String get commentsSettingAlerts => 'മറുപടി നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get commentsSettingAlertsDesc =>
      'എന്റെ കമന്റുകൾക്ക് ആരെങ്കിലും മറുപടി തന്നാൽ അറിയിക്കൂ';

  @override
  String get commentsNoticeReplyTitle => 'കമന്റിന് പുതിയ മറുപടി';

  @override
  String commentsNoticeReply(String name) {
    return '$name നിന്റെ കമന്റിന് മറുപടി നൽകി';
  }

  @override
  String get commentsNoticeWarningTitle => 'നിനക്ക് ഒരു മുന്നറിയിപ്പ് കിട്ടി';

  @override
  String get commentsNoticeWarning => 'കമന്റുകളിൽ കുറച്ചുകൂടി ശ്രദ്ധിക്കൂ';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu-വിൽ നിന്നുള്ള അപ്ഡേറ്റ്';

  @override
  String get barcodeTitle => 'ബാർകോഡ് സ്കാൻ ചെയ്യൂ';

  @override
  String get barcodeTooltip => 'ബാർകോഡ് നോക്കി മംഗയോ നോവലോ കണ്ടെത്തൂ';

  @override
  String get barcodeIntro =>
      'വോള്യത്തിന്റെ പിൻഭാഗത്തെ ബാർകോഡിലേക്ക് ക്യാമറ പിടിക്കൂ, അല്ലെങ്കിൽ ISBN ടൈപ്പ് ചെയ്യൂ.';

  @override
  String get barcodeIntroManual =>
      'വോള്യത്തിന്റെ പിൻഭാഗത്ത് ബാർകോഡിന് മുകളിൽ അച്ചടിച്ച ISBN ടൈപ്പ് ചെയ്യൂ.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'അത് സാധുവായ ISBN അല്ല';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn-ന് പുസ്തകം കണ്ടില്ല';
  }

  @override
  String get barcodeCameraDenied =>
      'ക്യാമറ ലഭ്യമല്ല. ക്യാമറ ആക്സസ് അനുവദിക്കൂ, അല്ലെങ്കിൽ ISBN ടൈപ്പ് ചെയ്യൂ.';

  @override
  String get themesTitle => 'ഓപ്പണിംഗുകളും എൻഡിംഗുകളും';

  @override
  String get themesPlayVideo => 'വീഡിയോ പ്ലേ ചെയ്യൂ';

  @override
  String get themesPlayAudio => 'ഓഡിയോ മാത്രം പ്ലേ ചെയ്യൂ';

  @override
  String get themesOpenSite => 'AnimeThemes-ൽ തുറക്കൂ';

  @override
  String get themesCredit => 'AnimeThemes-ൽ നിന്നുള്ള തീമുകൾ';

  @override
  String get themesVersions => 'വേർഷനുകൾ';

  @override
  String get sauceTitle => 'സോഴ്സ് കണ്ടെത്തൂ';

  @override
  String get sauceIntro =>
      'ഒരു മംഗ പേജോ ആർട്ട്‌വർക്കോ അപ്ലോഡ് ചെയ്യൂ, അല്ലെങ്കിൽ അതിന്റെ ലിങ്ക് പേസ്റ്റ് ചെയ്യൂ, അത് എവിടെ നിന്നാണെന്ന് കണ്ടെത്താം.';

  @override
  String get sauceKeyTitle => 'SauceNAO API കീ';

  @override
  String get sauceKeyHint => 'ഓപ്ഷണൽ, പ്രതിദിന തിരയൽ പരിധി കൂട്ടും';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php-ൽ നിന്ന് സൗജന്യ കീ എടുക്കൂ';

  @override
  String get sauceOpen => 'സോഴ്സ് തുറക്കൂ';

  @override
  String get sauceCredit => 'SauceNAO നൽകുന്ന ഇമേജ് സെർച്ച്';

  @override
  String get sauceEmpty => 'ചേരുന്നത് കണ്ടില്ല';

  @override
  String get sauceTooltip =>
      'ഒരു മംഗ പേജിന്റെയോ ആർട്ട്‌വർക്കിന്റെയോ സോഴ്സ് കണ്ടെത്തൂ';

  @override
  String get trendzTitle => 'അനിമെ ചാർട്ടുകൾ';

  @override
  String get trendzAnime => 'അനിമെ';

  @override
  String get trendzFemale => 'സ്ത്രീ കഥാപാത്രങ്ങൾ';

  @override
  String get trendzMale => 'പുരുഷ കഥാപാത്രങ്ങൾ';

  @override
  String get trendzCouple => 'കപ്പിൾസ്';

  @override
  String get trendzCredit => 'AniTrendz-ന്റെ പ്രതിവാര ചാർട്ടുകൾ';

  @override
  String get trendzNew => 'പുതിയത്';

  @override
  String get trendzEmpty => 'ചാർട്ട് ശൂന്യമാണ്';

  @override
  String get shareCard => 'ഷെയർ കാർഡ്';

  @override
  String get shareCardList => 'ലിസ്റ്റ് കാർഡ് ഷെയർ ചെയ്യൂ';

  @override
  String get shareCardSaved => 'കാർഡ് സേവ് ചെയ്തു';

  @override
  String get shareCardFailed => 'കാർഡ് ഉണ്ടാക്കാനായില്ല';

  @override
  String get shareCardListEmpty =>
      'നിന്റെ ലിസ്റ്റിൽ ഷെയർ ചെയ്യാൻ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get shareCardTop => 'എന്റെ ടോപ്പ് പിക്കുകൾ';

  @override
  String themesEpisodes(String eps) {
    return 'എപ്പിസോഡുകൾ $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% മാച്ച്';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'ആഴ്ച $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count വോട്ടുകൾ';
  }

  @override
  String trendzPeak(String rank) {
    return 'പീക്ക് #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'ടോപ്പ് ടെന്നിൽ $count ആഴ്ച';
  }

  @override
  String get imageSearchTitle => 'ചിത്രം നോക്കി തിരയൂ';

  @override
  String get imageSearchTooltip => 'സ്ക്രീൻഷോട്ടിൽ നിന്ന് ഒരു അനിമെ കണ്ടെത്തൂ';

  @override
  String get imageSearchIntro =>
      'ഒരു സ്ക്രീൻഷോട്ട് എടുക്കൂ അല്ലെങ്കിൽ ഇമേജ് ലിങ്ക് പേസ്റ്റ് ചെയ്യൂ, ഏത് എപ്പിസോഡിലെ ഏത് നിമിഷമാണെന്ന് trace.moe കണ്ടെത്തും.';

  @override
  String get imageSearchPick => 'ചിത്രം തിരഞ്ഞെടുക്കൂ';

  @override
  String get imageSearchLinkHint => 'ഇമേജ് ലിങ്ക് പേസ്റ്റ് ചെയ്യൂ';

  @override
  String get imageSearchGo => 'തിരയൂ';

  @override
  String get imageSearchEmpty => 'ചേരുന്നത് കണ്ടില്ല';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'എപ്പിസോഡ് $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time-ൽ';
  }

  @override
  String get imageSearchPreview => 'പ്രിവ്യൂ ക്ലിപ്പ്';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% മാച്ച്';
  }

  @override
  String get imageSearchCredit => 'trace.moe നൽകുന്നത്';

  @override
  String get imageSearchOpenFailed => 'ഈ ടൈറ്റിൽ തുറക്കാനായില്ല';

  @override
  String get groups => 'ഗ്രൂപ്പുകൾ';

  @override
  String get groupsYours => 'നിന്റെ ഗ്രൂപ്പുകൾ';

  @override
  String get groupsPopular => 'ജനപ്രിയം';

  @override
  String get groupsNew => 'പുതിയത്';

  @override
  String get groupsFeatured => 'ഫീച്ചേഡ്';

  @override
  String get groupsSearch => 'ഗ്രൂപ്പുകൾ തിരയൂ';

  @override
  String get groupsAll => 'എല്ലാം';

  @override
  String get groupsEmpty => 'ഗ്രൂപ്പുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get groupsEmptyYours => 'നീ ഇതുവരെ ഒരു ഗ്രൂപ്പിലും ചേർന്നിട്ടില്ല';

  @override
  String get groupsSignIn => 'ചേർന്ന ഗ്രൂപ്പുകൾ കാണാൻ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count അംഗങ്ങൾ',
      one: '1 അംഗം',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ചേരൂ';

  @override
  String get groupsJoined => 'ചേർന്നു';

  @override
  String get groupsLeave => 'ഗ്രൂപ്പ് വിടൂ';

  @override
  String get groupsLeaveAsk =>
      'ഈ ഗ്രൂപ്പിലെ പോസ്റ്റുകൾ നിന്റെ ഫീഡിൽ ഇനി കാണില്ല.';

  @override
  String get groupsJoinFailed =>
      'ഈ ഗ്രൂപ്പിൽ ചേരാനായില്ല, ഇൻവൈറ്റ് മാത്രമായിരിക്കാം';

  @override
  String get groupsLeaveFailed => 'ഈ ഗ്രൂപ്പ് വിടാനായില്ല';

  @override
  String get groupsPosts => 'പോസ്റ്റുകൾ';

  @override
  String get groupsMembersTab => 'അംഗങ്ങൾ';

  @override
  String get groupsAbout => 'വിവരണം';

  @override
  String get groupsRules => 'നിയമങ്ങൾ';

  @override
  String get groupsPrivacyOpen => 'തുറന്നത്';

  @override
  String get groupsPrivacyRestricted => 'നിയന്ത്രിതം';

  @override
  String get groupsPrivacyClosed => 'അടച്ചത്';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'അഡ്മിൻ';

  @override
  String get groupsRoleMod => 'മോഡ്';

  @override
  String get groupsCouldntLoad => 'ഈ ഗ്രൂപ്പ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get groupsNewPost => 'ഗ്രൂപ്പിൽ പോസ്റ്റ് ചെയ്യൂ';

  @override
  String get groupsPostHint => 'ഗ്രൂപ്പുമായി എന്തെങ്കിലും ഷെയർ ചെയ്യൂ';

  @override
  String get groupsOpenInBrowser => 'ബ്രൗസറിൽ തുറക്കൂ';

  @override
  String get groupsCategory => 'കാറ്റഗറി';

  @override
  String get groupsLanguage => 'ഭാഷ';

  @override
  String get groupsCreated => 'ഉണ്ടാക്കിയത്';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ലീഡർമാർ',
      one: '1 ലീഡർ',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'സ്വകാര്യത';

  @override
  String get notificationsAll => 'എല്ലാം';

  @override
  String get notificationsAiring => 'എയറിംഗ്';

  @override
  String get notificationsMedia => 'പുതിയ ടൈറ്റിലുകൾ';

  @override
  String get notificationsReplies => 'മറുപടികൾ';

  @override
  String get notificationsMentions => 'മെൻഷനുകൾ';

  @override
  String get notificationsMessages => 'മെസ്സേജുകൾ';

  @override
  String get notificationsLikes => 'ലൈക്കുകൾ';

  @override
  String get notificationsFollows => 'ഫോളോകൾ';

  @override
  String get notificationsNoServices =>
      'സൈൻ ഇൻ ചെയ്ത ഒരു സർവീസിനും നോട്ടിഫിക്കേഷൻ ഇല്ല';

  @override
  String get notificationsNoServicesMessage =>
      'നോട്ടിഫിക്കേഷൻ അയയ്ക്കുന്ന ഒരു സർവീസിൽ സൈൻ ഇൻ ചെയ്താൽ അവ ഇവിടെ വരും.';

  @override
  String get notificationsEmptyKind => 'ഈ വിഭാഗത്തിൽ ഇതുവരെ ഒന്നുമില്ല';

  @override
  String get notificationsCommentsEmpty => 'കമന്റ് നോട്ടിഫിക്കേഷനുകൾ ഇല്ല';

  @override
  String get notificationsCommentsEmptyMessage =>
      'നിന്റെ കമന്റുകൾക്കുള്ള മറുപടികളും Dantotsu-വിൽ നിന്നുള്ള അറിയിപ്പുകളും ഇവിടെ വരും.';

  @override
  String get notificationsSettings => 'നോട്ടിഫിക്കേഷൻ സെറ്റിംഗ്സ്';

  @override
  String get notificationsPollTitle => 'പുതിയ നോട്ടിഫിക്കേഷനുകൾ പരിശോധിക്കൂ';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ആപ്പ് തുറന്നിരിക്കുമ്പോൾ ഓരോ $minutes മിനിറ്റിലും';
  }

  @override
  String get notificationsNotifyAbout => 'ഇവയെക്കുറിച്ച് അറിയിക്കൂ';

  @override
  String get notificationsCommentsHeader => 'കമന്റ് നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ആപ്പ് ഓടുമ്പോൾ വായിക്കാത്ത ഓരോ $service നോട്ടിഫിക്കേഷനും ഒരു സിസ്റ്റം നോട്ടിഫിക്കേഷൻ കാണിക്കൂ.';
  }

  @override
  String get notificationsTestSent => 'ടെസ്റ്റ് നോട്ടിഫിക്കേഷൻ അയച്ചു';

  @override
  String get notificationsTestDenied =>
      'Dartotsu-വിന് നോട്ടിഫിക്കേഷൻ അനുവദിച്ചിട്ടില്ല. സിസ്റ്റം സെറ്റിംഗ്സിൽ ഓണാക്കൂ.';

  @override
  String get notificationsTestHint =>
      'ടെസ്റ്റ് നോട്ടിഫിക്കേഷൻ അയയ്ക്കാൻ ലോങ് പ്രസ് ചെയ്യൂ';

  @override
  String get notificationsTestSample => 'ഇതൊരു ടെസ്റ്റ് നോട്ടിഫിക്കേഷനാണ്';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media-ലെ നിന്റെ കമന്റിന് മറുപടി നൽകി';
  }

  @override
  String get imageSearchNotLink => 'ഇത് ഒരു ലിങ്ക് പോലെ തോന്നുന്നില്ല';

  @override
  String get imageSearchQuota => 'തിരയൽ ക്വാട്ട കഴിഞ്ഞു';

  @override
  String get imageSearchBusy =>
      'റിക്വസ്റ്റുകൾ കൂടുതലാണ്, അൽപ്പം കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കൂ';

  @override
  String imageSearchFailed(int code) {
    return 'തിരയൽ പരാജയപ്പെട്ടു ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count പുതിയ നോട്ടിഫിക്കേഷനുകൾ';
  }

  @override
  String get reactionsTitle => 'റിയാക്ഷനുകൾ';

  @override
  String get reactionsNeedEntry =>
      'റിയാക്ട് ചെയ്യുംമുമ്പ് ഈ ടൈറ്റിൽ നിന്റെ ലിസ്റ്റിൽ ചേർക്കൂ';

  @override
  String get reactionsAdd => 'ഒരു റിയാക്ഷൻ ചേർക്കൂ';

  @override
  String get reactionsHint =>
      'നിനക്ക് എങ്ങനെ തോന്നി? (ചെറുതായും സ്പോയിലർ ഇല്ലാതെയും)';

  @override
  String get reactionsPost => 'പോസ്റ്റ്';

  @override
  String get reactionsFailed => 'റിയാക്ഷൻ അപ്ഡേറ്റ് ചെയ്യാനായില്ല';

  @override
  String get settingsWatch => 'കാണൂ & വായിക്കൂ';

  @override
  String get settingsWatchDesc =>
      'എപ്പിസോഡ് ലിസ്റ്റുകൾ, സോഴ്സ് മാച്ചിംഗ്, എപ്പിസോഡ് വിശദാംശങ്ങൾ';

  @override
  String get watchSettingsLayout => 'എപ്പിസോഡ് ലിസ്റ്റ്';

  @override
  String get watchSettingsSources => 'സോഴ്സുകൾ';

  @override
  String get watchSettingsMetadata => 'എപ്പിസോഡ് വിശദാംശങ്ങൾ';

  @override
  String get watchLayout => 'ലേഔട്ട്';

  @override
  String get watchListView => 'ലിസ്റ്റ്';

  @override
  String get watchGridView => 'ഗ്രിഡ്';

  @override
  String get watchCompactView => 'കോംപാക്റ്റ്';

  @override
  String get watchDefaultLayoutDesc =>
      'ഒരു ടൈറ്റിലിന് മാറ്റുന്നതുവരെ എപ്പിസോഡുകളും ചാപ്റ്ററുകളും എങ്ങനെ ക്രമീകരിക്കണം';

  @override
  String get watchChunkSize => 'റേഞ്ച് വലുപ്പം';

  @override
  String get watchChunkSizeDesc =>
      'ഓരോ റേഞ്ച് ടാബിലും എത്ര എപ്പിസോഡുകൾ അല്ലെങ്കിൽ ചാപ്റ്ററുകൾ';

  @override
  String get watchShowDescription => 'വിവരണങ്ങൾ കാണിക്കൂ';

  @override
  String get watchShowDescriptionDesc =>
      'ലിസ്റ്റ് ലേഔട്ടിൽ ഓരോ ടൈറ്റിലിനും താഴെ എപ്പിസോഡ് സംഗ്രഹം കാണിക്കൂ';

  @override
  String get watchShowFiller => 'ഫില്ലർ എപ്പിസോഡുകൾ കാണിക്കൂ';

  @override
  String get watchShowFillerDesc =>
      'ഫില്ലർ ആയി അടയാളപ്പെടുത്തിയ എപ്പിസോഡുകൾ മറയ്ക്കാൻ ഓഫ് ആക്കൂ';

  @override
  String get watchBlurUnwatched => 'സ്പോയിലർ തമ്പ്നെയിലുകൾ മറയ്ക്കൂ';

  @override
  String get watchBlurUnwatchedDesc =>
      'ഇതുവരെ കാണാത്ത എപ്പിസോഡുകളുടെ തമ്പ്നെയിൽ ബ്ലർ ചെയ്യൂ';

  @override
  String get watchResumeShelf => 'റെസ്യൂം ഷെൽഫ്';

  @override
  String get watchResumeShelfDesc => 'ഹോമിൽ റെസ്യൂം വരി കാണിക്കൂ';

  @override
  String get watchMarkOnLongPress =>
      'ലോങ് പ്രസ് ചെയ്താൽ പ്രോഗ്രസ് അടയാളപ്പെടുത്തും';

  @override
  String get watchMarkOnLongPressDesc =>
      'എപ്പിസോഡോ ചാപ്റ്ററോ ലോങ് പ്രസ് ചെയ്ത് കണ്ടത്/കാണാത്തത് ആയി അടയാളപ്പെടുത്തൂ';

  @override
  String get watchMatching => 'സോഴ്സ് മാച്ചിംഗ്';

  @override
  String get watchMatchingDesc =>
      '\"ഏറ്റവും അടുത്ത മാച്ച്\" ഏറ്റവും നല്ല തിരയൽ ഫലം എടുക്കും. \"കൃത്യമായ മാച്ച് മാത്രം\" ഏതാണ്ട് ഒരേ ടൈറ്റിൽ മാത്രം സ്വീകരിക്കും, ബാക്കി നീ തിരഞ്ഞെടുക്കാൻ വിടും.';

  @override
  String get watchMatchClosest => 'ഏറ്റവും അടുത്ത മാച്ച്';

  @override
  String get watchMatchExact => 'കൃത്യമായ മാച്ച് മാത്രം';

  @override
  String get watchMetadataDesc =>
      'എപ്പിസോഡ് ടൈറ്റിലുകൾ, സംഗ്രഹങ്ങൾ, തമ്പ്നെയിലുകൾ, സംപ്രേഷണ തീയതികൾ, ഫില്ലർ ഫ്ലാഗുകൾ എവിടെ നിന്ന് വരണം. മുൻഗണന നിശ്ചയിക്കാൻ വലിച്ചിടൂ; മൂല്യമുള്ള ആദ്യ സോഴ്സ് ജയിക്കും.';

  @override
  String get watchMetaAniZipDesc =>
      'എപ്പിസോഡ് ടൈറ്റിലുകൾ, സംഗ്രഹങ്ങൾ, സ്റ്റില്ലുകൾ, സംപ്രേഷണ തീയതികൾ';

  @override
  String get watchMetaKitsuDesc =>
      'എപ്പിസോഡ് ടൈറ്റിലുകൾ, വിവരണങ്ങൾ, തമ്പ്നെയിലുകൾ';

  @override
  String get watchMetaSimklDesc =>
      'എപ്പിസോഡ് ടൈറ്റിലുകൾ, വിവരണങ്ങൾ, സ്റ്റില്ലുകൾ, സംപ്രേഷണ തീയതികൾ';

  @override
  String get watchMetaAniListDesc =>
      'സ്ട്രീമിംഗ് എപ്പിസോഡ് ടൈറ്റിലുകൾ, തമ്പ്നെയിലുകൾ, എയറിംഗ് ഷെഡ്യൂൾ';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai വഴി MyAnimeList എപ്പിസോഡ് ടൈറ്റിലുകൾ, സംപ്രേഷണ തീയതികൾ, ഫില്ലർ, റീക്യാപ്പ് ഫ്ലാഗുകൾ';

  @override
  String get watchClearMetadata => 'എപ്പിസോഡ് വിശദാംശങ്ങൾ റിഫ്രഷ് ചെയ്യൂ';

  @override
  String get watchClearMetadataDesc =>
      'കാഷെ ചെയ്ത എപ്പിസോഡ് വിശദാംശങ്ങൾ മറക്കൂ, വീണ്ടും ഫെച്ച് ചെയ്യാം';

  @override
  String get watchMetadataCleared =>
      'എപ്പിസോഡ് വിശദാംശങ്ങൾ വീണ്ടും ഫെച്ച് ചെയ്യും';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count എപ്പിസോഡുകൾ',
      one: '1 എപ്പിസോഡ്',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ചാപ്റ്ററുകൾ',
      one: '1 ചാപ്റ്റർ',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'എപ്പിസോഡ് $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'ചാപ്റ്റർ $number';
  }

  @override
  String get watchSearching => 'തിരയുന്നു…';

  @override
  String watchSearchingFor(String term) {
    return 'തിരയുന്നു: $term';
  }

  @override
  String watchSelected(String title) {
    return 'തിരഞ്ഞെടുത്തത്: $title';
  }

  @override
  String watchFound(String title) {
    return 'കണ്ടെത്തി: $title';
  }

  @override
  String get watchNothingFound => 'ഈ സോഴ്സിൽ ഒന്നും കണ്ടില്ല';

  @override
  String get watchSearchFailed => 'സോഴ്സ് തിരയൽ പരാജയപ്പെട്ടു';

  @override
  String get watchLoadFailed => 'ലിസ്റ്റ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get watchSignInToTrack => 'പ്രോഗ്രസ് ട്രാക്ക് ചെയ്യാൻ സൈൻ ഇൻ ചെയ്യൂ';

  @override
  String watchInstallSource(String action) {
    return '$action തുടങ്ങാൻ ഒരു എക്സ്റ്റൻഷൻ ഇൻസ്റ്റാൾ ചെയ്യൂ';
  }

  @override
  String get watchSourceMissing => 'ഈ സോഴ്സ് ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';

  @override
  String get watchWrongTitle => 'ടൈറ്റിൽ മാറിപ്പോയോ?';

  @override
  String get watchSearchAgain => 'വീണ്ടും തിരയൂ';

  @override
  String watchSearchSource(String source) {
    return '$source തിരയൂ';
  }

  @override
  String get watchSource => 'സോഴ്സ്';

  @override
  String get watchOptions => 'ഓപ്ഷനുകൾ';

  @override
  String get watchReverse => 'ക്രമം തിരിച്ചിടൂ';

  @override
  String get watchScanlators => 'ഗ്രൂപ്പുകൾ';

  @override
  String get watchResetOptions => 'ഈ ഓപ്ഷനുകൾ റീസെറ്റ് ചെയ്യൂ';

  @override
  String get watchContinue => 'തുടരൂ';

  @override
  String get watchStart => 'തുടങ്ങൂ';

  @override
  String get watchPlay => 'പ്ലേ';

  @override
  String get watchRead => 'വായിക്കൂ';

  @override
  String get watchMarkWatched => 'കണ്ടതായി അടയാളപ്പെടുത്തൂ';

  @override
  String get watchMarkUnwatched => 'കാണാത്തതായി അടയാളപ്പെടുത്തൂ';

  @override
  String get watchMarkRead => 'വായിച്ചതായി അടയാളപ്പെടുത്തൂ';

  @override
  String get watchMarkUnread => 'വായിക്കാത്തതായി അടയാളപ്പെടുത്തൂ';

  @override
  String get watchFiller => 'ഫില്ലർ';

  @override
  String get watchRecap => 'റീക്യാപ്പ്';

  @override
  String get watchNoEpisodes => 'എപ്പിസോഡുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get watchNoChapters => 'ചാപ്റ്ററുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get watchSourceTools => 'സോഴ്സ് ടൂളുകൾ';

  @override
  String get watchSourceSettings => 'സോഴ്സ് സെറ്റിംഗ്സ്';

  @override
  String get watchOpenWebView => 'വെബ് വ്യൂവിൽ തുറക്കൂ';

  @override
  String get watchOpenWebViewDesc =>
      'ഒരു Cloudflare ചെക്ക് പരിഹരിക്കൂ അല്ലെങ്കിൽ ലോഗിൻ ചെയ്യൂ; കുക്കികൾ സോഴ്സ് റിക്വസ്റ്റുകളുമായി പങ്കിടും';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host-ന് $count കുക്കികൾ സേവ് ചെയ്തു',
      one: '$host-ന് 1 കുക്കി സേവ് ചെയ്തു',
      zero: '$host-ന് കുക്കികൾ ഒന്നും സേവ് ചെയ്തിട്ടില്ല',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare ക്ലിയറൻസ് ആക്റ്റീവ്, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare ക്ലിയറൻസ് കുക്കി ഇല്ല';

  @override
  String get watchClearanceSession => 'ആപ്പ് അടയ്ക്കുംവരെ നിലനിൽക്കും';

  @override
  String get watchAgentShared =>
      'റിക്വസ്റ്റുകൾ വെബ് വ്യൂവിന്റെ യൂസർ ഏജന്റ് ഉപയോഗിക്കുന്നു, Cloudflare അത് പരിശോധിക്കും';

  @override
  String get watchAgentCustom =>
      'കസ്റ്റം യൂസർ ഏജന്റ് സെറ്റ് ചെയ്തിട്ടുണ്ട്, അതിനാൽ വെബ് വ്യൂവിൽ നിന്നുള്ള Cloudflare ക്ലിയറൻസ് നിരസിക്കപ്പെട്ടേക്കാം';

  @override
  String get watchTestConnection => 'കണക്ഷൻ ടെസ്റ്റ് ചെയ്യൂ';

  @override
  String get watchSolveChallenge => 'പരിഹരിക്കൂ';

  @override
  String watchProbeOk(int code) {
    return 'എത്തിച്ചേരാം (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ഇപ്പോഴും ചെക്ക് ചോദിക്കുന്നു';

  @override
  String watchProbeBlocked(int code) {
    return 'സൈറ്റ് തടഞ്ഞു (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'സൈറ്റിൽ എത്താനായില്ല';

  @override
  String get watchClearCookies => 'ഈ സൈറ്റിന്റെ കുക്കികൾ ക്ലിയർ ചെയ്യൂ';

  @override
  String get watchCookiesCleared => 'കുക്കികൾ ക്ലിയർ ചെയ്തു';

  @override
  String get watchMetaSource => 'എപ്പിസോഡ് വിശദാംശങ്ങൾ എവിടെ നിന്ന്';

  @override
  String get watchMetaAuto => 'ഓട്ടോമാറ്റിക്';

  @override
  String get watchMetaOff => 'ഓഫ്';

  @override
  String get playerSettingsTitle => 'പ്ലെയർ സെറ്റിംഗ്സ്';

  @override
  String get playerSectionPlayback => 'പ്ലേബാക്ക്';

  @override
  String get playerSectionSkip => 'സ്കിപ്പിംഗ്';

  @override
  String get playerSectionGestures => 'നിയന്ത്രണങ്ങൾ';

  @override
  String get playerSectionSubtitles => 'സബ്ടൈറ്റിലുകൾ';

  @override
  String get playerSectionShaders => 'ഷെയ്ഡറുകൾ';

  @override
  String get playerSectionEngine => 'എൻജിൻ';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'പ്ലേബാക്ക് വേഗത';

  @override
  String get playerCursedSpeed => 'അധിക വേഗതകൾ';

  @override
  String get playerCursedSpeedDesc =>
      'ലിസ്റ്റിലേക്ക് 10x വരെയുള്ള വേഗതകൾ ചേർക്കൂ';

  @override
  String get playerResize => 'റീസൈസ് മോഡ്';

  @override
  String get playerFitFit => 'ഫിറ്റ്';

  @override
  String get playerFitCover => 'കവർ';

  @override
  String get playerFitStretch => 'സ്ട്രെച്ച്';

  @override
  String get playerSkipDuration => 'സ്കിപ്പ് ബട്ടൺ ദൈർഘ്യം';

  @override
  String get playerSkipDurationDesc =>
      'ഓപ്പണിംഗുകൾക്കും എൻഡിംഗുകൾക്കും പുറത്ത് സ്കിപ്പ് ബട്ടൺ ചാടുന്ന സെക്കൻഡുകൾ';

  @override
  String get playerSeekDuration => 'ഡബിൾ ടാപ്പ് സീക്ക്';

  @override
  String get playerSeekDurationDesc =>
      'ഡബിൾ ടാപ്പിലോ ആരോ കീയിലോ ചാടേണ്ട സെക്കൻഡുകൾ';

  @override
  String get playerAutoPlay => 'അടുത്തത് ഓട്ടോമാറ്റിക്കായി പ്ലേ ചെയ്യൂ';

  @override
  String get playerAutoPlayDesc => 'ഇത് കഴിയുമ്പോൾ അടുത്ത എപ്പിസോഡ് തുടങ്ങൂ';

  @override
  String get playerResume => 'നിർത്തിയിടത്ത് നിന്ന് തുടരൂ';

  @override
  String get playerResumeDesc => 'എപ്പിസോഡ് അവസാന പൊസിഷനിൽ നിന്ന് തുടരൂ';

  @override
  String get playerOrientation => 'ഓറിയന്റേഷൻ';

  @override
  String get playerOrientationAuto => 'ഉപകരണത്തെ പിന്തുടരൂ';

  @override
  String get playerOrientationLandscape => 'ലാൻഡ്സ്കേപ്പ്';

  @override
  String get playerOrientationPortrait => 'പോർട്രെയ്റ്റ്';

  @override
  String get playerAutoSkipOpening => 'ഓപ്പണിംഗുകൾ സ്കിപ്പ് ചെയ്യൂ';

  @override
  String get playerAutoSkipEnding => 'എൻഡിംഗുകൾ സ്കിപ്പ് ചെയ്യൂ';

  @override
  String get playerAutoSkipRecap => 'റീക്യാപ്പുകൾ സ്കിപ്പ് ചെയ്യൂ';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip-ഉം സ്ട്രീം ടൈംസ്റ്റാമ്പുകളും ഉപയോഗിച്ച് തുടങ്ങിയ ഉടൻ ചാടിക്കടക്കൂ';

  @override
  String get playerSkipOnce => 'ഒരു തവണ മാത്രം സ്കിപ്പ് ചെയ്യൂ';

  @override
  String get playerSkipOnceDesc =>
      'പിന്നോട്ട് സീക്ക് ചെയ്താൽ അതേ ഭാഗം വീണ്ടും സ്കിപ്പ് ചെയ്യരുത്';

  @override
  String get playerAdjustBrightness => 'ബ്രൈറ്റ്നസ് ജെസ്ചർ';

  @override
  String get playerAdjustBrightnessDesc =>
      'സ്ക്രീനിന്റെ വലത് പകുതിയിൽ മുകളിലേക്കും താഴേക്കും സ്വൈപ്പ് ചെയ്യൂ';

  @override
  String get playerAdjustVolume => 'വോളിയം ജെസ്ചർ';

  @override
  String get playerAdjustVolumeDesc =>
      'സ്ക്രീനിന്റെ ഇടത് പകുതിയിൽ മുകളിലേക്കും താഴേക്കും സ്വൈപ്പ് ചെയ്യൂ';

  @override
  String get playerHoldToSpeed => 'വേഗത കൂട്ടാൻ അമർത്തിപ്പിടിക്കൂ';

  @override
  String get playerHoldToSpeedDesc =>
      'വേഗത്തിൽ പ്ലേ ചെയ്യാൻ വീഡിയോയിൽ അമർത്തിപ്പിടിക്കൂ, വേഗത മാറ്റാൻ വശത്തേക്ക് വലിക്കൂ';

  @override
  String get playerThumbless => 'കട്ടിയുള്ള സീക്ക് ബാർ';

  @override
  String get playerThumblessDesc => 'തംബ് ഇല്ലാത്ത കട്ടിയുള്ള ബാർ';

  @override
  String get playerShowSubtitles => 'സബ്ടൈറ്റിലുകൾ കാണിക്കൂ';

  @override
  String get playerShowSubtitlesDesc =>
      'എല്ലാ സബ്ടൈറ്റിൽ ട്രാക്കുകളും മറയ്ക്കാൻ ഓഫ് ആക്കൂ';

  @override
  String get playerSubtitleLanguage => 'ഇഷ്ടപ്പെട്ട സബ്ടൈറ്റിൽ ഭാഷ';

  @override
  String get playerSubtitleSize => 'സബ്ടൈറ്റിൽ വലുപ്പം';

  @override
  String get playerSubtitleWeight => 'സബ്ടൈറ്റിൽ വെയ്റ്റ്';

  @override
  String get playerSubtitleBottom => 'സബ്ടൈറ്റിൽ ബോട്ടം പാഡിംഗ്';

  @override
  String get playerSubtitleFont => 'സബ്ടൈറ്റിൽ ഫോണ്ട്';

  @override
  String get playerSubtitleColor => 'സബ്ടൈറ്റിൽ നിറം';

  @override
  String get playerSubtitleBackground => 'സബ്ടൈറ്റിൽ ബാക്ക്ഗ്രൗണ്ട്';

  @override
  String get playerSubtitleOutline => 'സബ്ടൈറ്റിൽ ഔട്ട്‌ലൈൻ';

  @override
  String get playerLibass => 'libass ഉപയോഗിക്കൂ';

  @override
  String get playerLibassDesc =>
      'സ്റ്റൈൽ ചെയ്ത .ass സബ്ടൈറ്റിലുകൾ റെൻഡർ ചെയ്യൂ. മുകളിലെ വലുപ്പം, നിറം, ഫോണ്ട് എന്നിവ അപ്പോൾ ബാധകമല്ല';

  @override
  String get playerShaders => 'ഷെയ്ഡറുകൾ';

  @override
  String get playerShadersEnable => 'ഷെയ്ഡറുകൾ ഓണാക്കൂ';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K പോലുള്ള GLSL ഷെയ്ഡറുകൾ കൊണ്ട് ചിത്രം അപ്സ്കെയിൽ ചെയ്ത് വൃത്തിയാക്കൂ';

  @override
  String get playerShadersOff => 'ഷെയ്ഡറുകൾ ഓഫ്';

  @override
  String get playerShadersMissing => 'Anime4K ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';

  @override
  String get playerShadersMissingDesc =>
      'ബിൽറ്റ്-ഇൻ മോഡുകൾ ഉപയോഗിക്കാൻ Anime4K ഷെയ്ഡർ പാക്ക് (ഏകദേശം 0.8 MB) ഡൗൺലോഡ് ചെയ്യൂ.';

  @override
  String get playerShadersDownload => 'Anime4K ഡൗൺലോഡ് ചെയ്യൂ';

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
  String get playerShadersPreview => 'ഈ ഫ്രെയിമിൽ പ്രിവ്യൂ ചെയ്യൂ';

  @override
  String get playerShadersUse => 'ഇത് ഉപയോഗിക്കൂ';

  @override
  String get playerPicture => 'പിക്ചർ';

  @override
  String get playerColors => 'നിറങ്ങൾ';

  @override
  String get playerColorDefault => 'ഡിഫോൾട്ട്';

  @override
  String get playerColorVivid => 'വിവിഡ്';

  @override
  String get playerColorPop => 'അനിമെ പോപ്പ്';

  @override
  String get playerColorSoft => 'സോഫ്റ്റ്';

  @override
  String get playerColorCinematic => 'സിനിമാറ്റിക്';

  @override
  String get playerColorBright => 'ബ്രൈറ്റ്';

  @override
  String get playerColorNight => 'നൈറ്റ്';

  @override
  String get playerColorMono => 'മോണോ';

  @override
  String get playerColorCustom => 'കസ്റ്റം';

  @override
  String get playerColorBrightness => 'ബ്രൈറ്റ്നസ്';

  @override
  String get playerColorContrast => 'കോൺട്രാസ്റ്റ്';

  @override
  String get playerColorSaturation => 'സാച്ചുറേഷൻ';

  @override
  String get playerColorGamma => 'ഗാമ';

  @override
  String get playerColorHue => 'ഹ്യൂ';

  @override
  String get playerColorReset => 'റീസെറ്റ്';

  @override
  String get playerColorAdjust => 'ക്രമീകരിക്കൂ';

  @override
  String get playerShadersOriginal => 'ഒറിജിനൽ';

  @override
  String get playerShadersPreviewFailed =>
      'പ്രിവ്യൂവിന് ഒരു ഫ്രെയിം എടുക്കാനായില്ല';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'നിന്റെ ഷെയ്ഡറുകൾ';

  @override
  String get playerShadersCustom => 'കസ്റ്റം ഷെയ്ഡറുകൾ';

  @override
  String get playerShadersImport => '.glsl ഇമ്പോർട്ട് ചെയ്യൂ';

  @override
  String get playerShadersNone =>
      'നിന്റെ സ്വന്തം .glsl അല്ലെങ്കിൽ .hook ഫയലുകൾ ഇമ്പോർട്ട് ചെയ്ത് ടിക്ക് ചെയ്ത് ചെയിൻ ചെയ്യൂ';

  @override
  String get playerShadersBadFile =>
      'ഒരു .glsl അല്ലെങ്കിൽ .hook ഷെയ്ഡർ ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get playerDecoder => 'ഡീകോഡർ';

  @override
  String get playerDecoderAuto => 'ഓട്ടോ';

  @override
  String get playerDecoderAutoSafe => 'ഓട്ടോ (സേഫ്)';

  @override
  String get playerDecoderSoftware => 'സോഫ്റ്റ്‌വെയർ';

  @override
  String get playerDecoderHardware => 'ഹാർഡ്‌വെയർ';

  @override
  String get playerDecoderHardwarePlus => 'ഹാർഡ്‌വെയർ+';

  @override
  String get playerVideoOutput => 'വീഡിയോ ഔട്ട്പുട്ട്';

  @override
  String get playerAudioChannels => 'ഓഡിയോ ചാനലുകൾ';

  @override
  String get playerBuffer => 'ബഫർ വലുപ്പം (MB)';

  @override
  String get playerBufferDesc =>
      'ഒരു സ്ട്രീം ബഫർ ചെയ്യാൻ പ്ലെയർക്ക് ഉപയോഗിക്കാവുന്ന മെമ്മറി';

  @override
  String get playerUseMpvConf => 'mpv.conf ഉപയോഗിക്കൂ';

  @override
  String get playerUseMpvConfDesc =>
      'പ്ലേബാക്ക് തുടങ്ങുമ്പോൾ നിന്റെ mpv.conf-ലെ ഓപ്ഷനുകൾ ബാധകമാക്കൂ';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv കോൺഫിഗറേഷൻ എഡിറ്റ് ചെയ്യൂ';

  @override
  String get playerMpvConfDesc =>
      'ഓരോ വരിയിലും ഒരു ഓപ്ഷൻ, സാധാരണ mpv.conf-ലെ --hwdec=auto പോലെ. [ബ്രാക്കറ്റിലെ] പ്രൊഫൈലുകൾ അവഗണിക്കും.';

  @override
  String get playerMpvConfSaved => 'mpv.conf സേവ് ചെയ്തു';

  @override
  String get playerUseScripts => 'mpv സ്ക്രിപ്റ്റുകൾ ഉപയോഗിക്കൂ';

  @override
  String get playerUseScriptsDesc =>
      'സ്ക്രിപ്റ്റ്സ് ഫോൾഡറിലെ പ്ലഗിനുകൾ ലോഡ് ചെയ്യൂ. Lua അല്ലെങ്കിൽ JavaScript സപ്പോർട്ടുള്ള libmpv ബിൽഡ് വേണം';

  @override
  String get playerScripts => 'mpv സ്ക്രിപ്റ്റുകൾ';

  @override
  String get playerScriptsManage => 'പ്ലഗിനുകൾ ചേർക്കൂ, നീക്കൂ, മാറ്റൂ';

  @override
  String get playerScriptsAdd => 'സ്ക്രിപ്റ്റ് ചേർക്കൂ';

  @override
  String get playerScriptsDesc =>
      'ഇവിടെ വയ്ക്കുന്ന Lua, JavaScript, നേറ്റീവ് പ്ലഗിനുകൾ പ്ലേബാക്ക് തുടങ്ങുമ്പോൾ ലോഡ് ആകും.';

  @override
  String get playerScriptsNone => 'സ്ക്രിപ്റ്റുകൾ ഇതുവരെ ഇല്ല';

  @override
  String get playerScriptsBadFile =>
      'ഒരു .lua, .js അല്ലെങ്കിൽ നേറ്റീവ് പ്ലഗിൻ ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get playerTuning => 'അഡ്വാൻസ്ഡ് വീഡിയോ ട്യൂണിംഗ്';

  @override
  String get playerTuningDesc =>
      'സിങ്ക്, കാഷിംഗ്, സ്കെയിലിംഗ്, ടോൺ മാപ്പിംഗ് എന്നിവ ഓവർറൈഡ് ചെയ്യൂ. തെറ്റായ മൂല്യങ്ങൾ പ്ലേബാക്കിനെ ബാധിക്കാം';

  @override
  String get playerVideoSync => 'വീഡിയോ സിങ്ക്';

  @override
  String get playerInterpolation => 'ഫ്രെയിം ഇന്റർപോളേഷൻ';

  @override
  String get playerInterpolationDesc =>
      'സ്മൂത്ത് മോഷൻ, display-resample സിങ്ക് വേണം';

  @override
  String get playerPitch => 'പിച്ച് കറക്ഷൻ';

  @override
  String get playerPitchDesc =>
      'മറ്റ് വേഗതകളിലും ശബ്ദം സ്വാഭാവികമായി നിലനിർത്തൂ';

  @override
  String get playerCacheSeconds => 'കാഷെ (സെക്കൻഡ്)';

  @override
  String get playerReadahead => 'റീഡ് എഹെഡ് (സെക്കൻഡ്)';

  @override
  String get playerThreads => 'ഡീകോഡർ ത്രെഡുകൾ';

  @override
  String get playerDeband => 'ഡിബാൻഡ്';

  @override
  String get playerDebandDesc => 'ഗ്രേഡിയന്റുകളിലെ കളർ ബാൻഡിംഗ് കുറയ്ക്കൂ';

  @override
  String get playerDebandIterations => 'ഡിബാൻഡ് ഇറ്ററേഷനുകൾ';

  @override
  String get playerDebandThreshold => 'ഡിബാൻഡ് ത്രെഷോൾഡ്';

  @override
  String get playerCorrectDownscaling => 'ശരിയായ ഡൗൺസ്കെയിലിംഗ്';

  @override
  String get playerSigmoid => 'സിഗ്മോയ്ഡ് അപ്സ്കെയിലിംഗ്';

  @override
  String get playerScale => 'അപ്സ്കെയിലർ';

  @override
  String get playerCscale => 'ക്രോമ അപ്സ്കെയിലർ';

  @override
  String get playerDscale => 'ഡൗൺസ്കെയിലർ';

  @override
  String get playerToneMapping => 'ടോൺ മാപ്പിംഗ്';

  @override
  String get playerTargetPeak => 'ടാർഗറ്റ് പീക്ക്';

  @override
  String get playerOpenFiles => 'വീഡിയോ ഫയലുകൾ തുറക്കൂ';

  @override
  String get playerOpenFilesDesc => 'ഈ ഉപകരണത്തിലെ ഫയലുകൾ പ്ലേ ചെയ്യൂ';

  @override
  String get playerOpenFolder => 'ഒരു ഫോൾഡർ തുറക്കൂ';

  @override
  String get playerOpenFolderDesc =>
      'ഒരു ഫോൾഡറിലെ എല്ലാ വീഡിയോയും പ്ലേലിസ്റ്റ് ആയി പ്ലേ ചെയ്യൂ';

  @override
  String get playerNetworkStream => 'നെറ്റ്‌വർക്ക് സ്ട്രീം';

  @override
  String get playerNetworkStreamDesc =>
      'ഡയറക്ട് വീഡിയോ അല്ലെങ്കിൽ HLS ലിങ്ക് തുറക്കൂ';

  @override
  String get playerStreamUrl => 'സ്ട്രീം URL';

  @override
  String get playerStreamReferer => 'റഫറർ (ഓപ്ഷണൽ)';

  @override
  String get playerTorrent => 'ടോറന്റ്';

  @override
  String get playerTorrentDesc =>
      'മാഗ്നറ്റ് ലിങ്കോ .torrent ഫയലോ സ്ട്രീം ചെയ്യൂ';

  @override
  String get playerMagnetLink => 'മാഗ്നറ്റ് ലിങ്ക് അല്ലെങ്കിൽ ടോറന്റ് URL';

  @override
  String get playerPickTorrent => 'ഒരു .torrent ഫയൽ തിരഞ്ഞെടുക്കൂ';

  @override
  String get playerTorrentMissing =>
      'ആദ്യം സെറ്റിംഗ്സ് > ആഡ്-ഓണുകളിൽ നിന്ന് ടോറന്റ് ആഡ്-ഓൺ ഇൻസ്റ്റാൾ ചെയ്യൂ';

  @override
  String get playerNoVideos => 'പ്ലേ ചെയ്യാവുന്ന വീഡിയോകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get playerReset => 'പ്ലെയർ സെറ്റിംഗ്സ് റീസെറ്റ് ചെയ്യൂ';

  @override
  String get playerResetDesc =>
      'എല്ലാ പ്ലെയർ ഓപ്ഷനുകളും ഡിഫോൾട്ടിലേക്ക് മാറ്റൂ';

  @override
  String get playerResetConfirm =>
      'എല്ലാ പ്ലെയർ സെറ്റിംഗ്സും റീസെറ്റ് ചെയ്യണോ?';

  @override
  String get playerResetDone => 'പ്ലെയർ സെറ്റിംഗ്സ് റീസെറ്റ് ചെയ്തു';

  @override
  String get playerQuality => 'ക്വാളിറ്റി';

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
  String get playerStreams => 'സ്ട്രീമുകൾ';

  @override
  String get playerAutoSelect => 'സ്ട്രീം ഓട്ടോ സെലക്ട് ചെയ്യൂ';

  @override
  String get playerAutoSelectDesc =>
      'ഈ ടൈറ്റിലിൽ നീ അവസാനം തിരഞ്ഞെടുത്തതിനോട് ഏറ്റവും സാമ്യമുള്ള സ്ട്രീം എടുക്കൂ';

  @override
  String get playerLoadingStreams => 'സ്ട്രീമുകൾ തിരയുന്നു…';

  @override
  String get playerNoStreams => 'ഈ എപ്പിസോഡിന് സ്ട്രീമുകൾ ഇല്ല';

  @override
  String get playerNoStreamsTitle => 'സ്ട്രീമുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String get playerFailed => 'പ്ലേബാക്ക് പരാജയപ്പെട്ടു';

  @override
  String get playerTorrentNeeded => 'ഈ സ്ട്രീം ഒരു ടോറന്റ് ആണ്';

  @override
  String get playerTorrentNeededDesc =>
      'മാഗ്നറ്റ് ലിങ്കുകളും .torrent ഫയലുകളും പ്ലേ ചെയ്യാൻ ടോറന്റ് ആഡ്-ഓൺ ഇൻസ്റ്റാൾ ചെയ്യൂ';

  @override
  String get playerOpenAddons => 'ആഡ്-ഓണുകൾ തുറക്കൂ';

  @override
  String get playerTryAnotherStream => 'മറ്റൊരു സ്ട്രീം നോക്കൂ';

  @override
  String get playerEpisodes => 'എപ്പിസോഡുകൾ';

  @override
  String get playerLock => 'നിയന്ത്രണങ്ങൾ ലോക്ക് ചെയ്യൂ';

  @override
  String get playerFullscreen => 'ഫുൾസ്ക്രീൻ';

  @override
  String get readerChapters => 'ചാപ്റ്ററുകൾ';

  @override
  String get readerSettingsTitle => 'റീഡർ സെറ്റിംഗ്സ്';

  @override
  String get readerPreviousChapter => 'മുൻ ചാപ്റ്റർ';

  @override
  String get readerNextChapter => 'അടുത്ത ചാപ്റ്റർ';

  @override
  String get readerFirstChapter => 'ഇതാണ് ആദ്യ ചാപ്റ്റർ';

  @override
  String get readerLastChapter => 'നീ എല്ലാം വായിച്ചു തീർത്തു';

  @override
  String get readerFailed => 'ഈ ചാപ്റ്റർ തുറക്കാനായില്ല';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'ഈ ചാപ്റ്ററിൽ ടെക്സ്റ്റ് ഇല്ല';

  @override
  String get readerPerTitle => 'ഈ ടൈറ്റിലിന് മാത്രം';

  @override
  String get readerPerTitleDesc =>
      'ഈ റീഡർ സെറ്റിംഗ്സ് ഈ ടൈറ്റിലിന് മാത്രമായി സൂക്ഷിക്കൂ';

  @override
  String get readerSectionReading => 'വായന';

  @override
  String get readerSectionControls => 'നിയന്ത്രണങ്ങൾ';

  @override
  String get readerSectionDisplay => 'ഡിസ്പ്ലേ';

  @override
  String get readerSectionNovel => 'നോവൽ';

  @override
  String get readerMode => 'റീഡിംഗ് മോഡ്';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'വലത്തു നിന്ന് ഇടത്തേക്ക്';

  @override
  String get readerModeLtr => 'ഇടത്തു നിന്ന് വലത്തേക്ക്';

  @override
  String get readerModeVertical => 'വെർട്ടിക്കൽ പേജുകൾ';

  @override
  String get readerModeWebtoon => 'വെബ്ടൂൺ';

  @override
  String get readerModeContinuous => 'തുടർച്ചയായ സ്ക്രോൾ';

  @override
  String get readerScale => 'ഇമേജ് സ്കെയിൽ';

  @override
  String get readerScaleFit => 'സ്ക്രീനിന് ഫിറ്റ്';

  @override
  String get readerScaleWidth => 'വീതിക്ക് ഫിറ്റ്';

  @override
  String get readerScaleHeight => 'ഉയരത്തിന് ഫിറ്റ്';

  @override
  String get readerScaleOriginal => 'ഒറിജിനൽ വലുപ്പം';

  @override
  String get readerScaleSmart => 'സ്മാർട്ട് ഫിറ്റ്';

  @override
  String get readerDoublePage => 'ഇരട്ട പേജുകൾ';

  @override
  String get readerDoublePageDesc =>
      'ലാൻഡ്സ്കേപ്പിൽ രണ്ട് പേജുകൾ അടുത്തടുത്ത് കാണിക്കൂ';

  @override
  String get readerDoubleTapZoom => 'ഡബിൾ ടാപ്പ് സൂം';

  @override
  String get readerDoubleTapZoomDesc =>
      'ഡബിൾ ടാപ്പ് കൊണ്ട് പേജ് സൂം ഇൻ/ഔട്ട് ചെയ്യൂ';

  @override
  String get readerAnimate => 'പേജ് ആനിമേഷൻ';

  @override
  String get readerAnimateDesc => 'പേജ് മറിക്കുമ്പോൾ ആനിമേറ്റ് ചെയ്യൂ';

  @override
  String get readerSidePadding => 'സൈഡ് പാഡിംഗ്';

  @override
  String get readerSidePaddingDesc => 'പേജുകളുടെ വശത്തെ സ്ഥലം ശതമാനത്തിൽ';

  @override
  String get readerPageGap => 'പേജ് ഗ്യാപ്പ്';

  @override
  String get readerPageGapDesc => 'പേജുകൾക്കിടയിലെ സ്ഥലം';

  @override
  String get readerAutoNext => 'അടുത്ത ചാപ്റ്ററിലേക്ക് തുടരൂ';

  @override
  String get readerAutoNextDesc =>
      'ഇതിന്റെ അവസാനം വായിക്കുമ്പോൾ അടുത്ത ചാപ്റ്റർ ലോഡ് ചെയ്യൂ';

  @override
  String get readerPreload => 'പേജുകൾ പ്രീലോഡ് ചെയ്യൂ';

  @override
  String get readerPreloadDesc => 'എത്ര പേജുകൾ മുൻകൂട്ടി ഡൗൺലോഡ് ചെയ്യണം';

  @override
  String get readerTapZones => 'ടാപ്പ് സോണുകൾ';

  @override
  String get readerTapDefault => 'ഡിഫോൾട്ട്';

  @override
  String get readerTapLShaped => 'L-ആകൃതി';

  @override
  String get readerTapKindle => 'Kindle പോലെ';

  @override
  String get readerTapEdge => 'അരികുകൾ മാത്രം';

  @override
  String get readerTapOff => 'ഓഫ്';

  @override
  String get readerInvertTaps => 'ടാപ്പ് സോണുകൾ തിരിച്ചിടൂ';

  @override
  String get readerInvertTapsDesc => 'മുൻ/അടുത്ത ഭാഗങ്ങൾ പരസ്പരം മാറ്റൂ';

  @override
  String get readerBackground => 'ബാക്ക്ഗ്രൗണ്ട്';

  @override
  String get readerBackgroundBlack => 'കറുപ്പ്';

  @override
  String get readerBackgroundGray => 'ചാരനിറം';

  @override
  String get readerBackgroundWhite => 'വെള്ള';

  @override
  String get readerBackgroundTheme => 'ആപ്പ് തീം';

  @override
  String get readerFilter => 'കളർ ഫിൽട്ടർ';

  @override
  String get readerFilterNone => 'ഒന്നുമില്ല';

  @override
  String get readerFilterGrayscale => 'ഗ്രേസ്കെയിൽ';

  @override
  String get readerFilterInvert => 'ഇൻവെർട്ട്';

  @override
  String get readerFilterSepia => 'സെപിയ';

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
  String get readerDim => 'ഡിം';

  @override
  String get readerDimDesc => 'പേജുകൾ ഇരുണ്ടതാക്കൂ';

  @override
  String get readerPageNumber => 'പേജ് നമ്പർ';

  @override
  String get readerPageNumberDesc => 'വായിക്കുമ്പോൾ പേജ് നമ്പർ കാണിക്കൂ';

  @override
  String get readerFullscreen => 'ഫുൾസ്ക്രീൻ';

  @override
  String get readerFullscreenDesc => 'സിസ്റ്റം ബാറുകൾ മറയ്ക്കൂ';

  @override
  String get readerCropBorders => 'ബോർഡറുകൾ ക്രോപ്പ് ചെയ്യൂ';

  @override
  String get readerCropBordersDesc =>
      'പേജുകളിലെ ശൂന്യമായ വെള്ളയോ കറുപ്പോ മാർജിനുകൾ വെട്ടിമാറ്റൂ';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'വോളിയം കീകൾ കൊണ്ട് പേജ് മറിക്കൂ';

  @override
  String get readerVolumeKeysDesc =>
      'വോളിയം ഡൗൺ മുന്നോട്ട്, വോളിയം അപ്പ് പിന്നോട്ട്';

  @override
  String get readerBookmarks => 'ബുക്ക്മാർക്കുകൾ';

  @override
  String get readerBookmarkAdd => 'ബുക്ക്മാർക്ക് ചേർക്കൂ';

  @override
  String get readerBookmarkRemove => 'ബുക്ക്മാർക്ക് നീക്കൂ';

  @override
  String get readerBookmarksEmpty => 'ബുക്ക്മാർക്കുകൾ ഇതുവരെ ഇല്ല';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'പേജ് $page / $total';
  }

  @override
  String get readerAutoScroll => 'ഓട്ടോ സ്ക്രോൾ';

  @override
  String get readerAutoScrollStop => 'ഓട്ടോ സ്ക്രോൾ നിർത്തൂ';

  @override
  String get readerAutoScrollSpeed => 'ഓട്ടോ സ്ക്രോൾ വേഗത';

  @override
  String get readerAutoScrollSpeedDesc =>
      'പേജുകൾ തനിയെ സ്ക്രോൾ ചെയ്യുന്നതോ മറിയുന്നതോ എത്ര വേഗത്തിൽ';

  @override
  String get readerKeepOn => 'സ്ക്രീൻ ഓണാക്കി നിർത്തൂ';

  @override
  String get readerKeepOnDesc => 'വായിക്കുമ്പോൾ സ്ക്രീൻ ഓഫ് ആകാതെ നോക്കൂ';

  @override
  String get readerOrientation => 'ഓറിയന്റേഷൻ';

  @override
  String get readerOrientationFree => 'ഫ്രീ';

  @override
  String get readerOrientationPortrait => 'പോർട്രെയ്റ്റ്';

  @override
  String get readerOrientationLandscape => 'ലാൻഡ്സ്കേപ്പ്';

  @override
  String get readerSaveProgress => 'പ്രോഗ്രസ് സേവ് ചെയ്യൂ';

  @override
  String get readerSaveProgressDesc =>
      'നിന്റെ പേജ് ഓർത്തുവയ്ക്കൂ, ചാപ്റ്ററുകൾ വായിച്ചതായി അടയാളപ്പെടുത്തൂ';

  @override
  String get readerReset => 'റീഡർ സെറ്റിംഗ്സ് റീസെറ്റ് ചെയ്യൂ';

  @override
  String get readerResetDesc => 'ഡിഫോൾട്ടിലേക്ക് തിരിച്ചു പോകൂ';

  @override
  String get novelSize => 'ടെക്സ്റ്റ് വലുപ്പം';

  @override
  String get novelFont => 'ഫോണ്ട്';

  @override
  String get novelLineHeight => 'ലൈൻ ഹൈറ്റ്';

  @override
  String get novelParagraph => 'പാരഗ്രാഫ് സ്പെയ്സിംഗ്';

  @override
  String get novelMargin => 'മാർജിനുകൾ';

  @override
  String get novelTheme => 'റീഡർ തീം';

  @override
  String get novelThemeApp => 'ആപ്പ് തീം';

  @override
  String get novelThemeLight => 'ലൈറ്റ്';

  @override
  String get novelThemeSepia => 'സെപിയ';

  @override
  String get novelThemeDark => 'ഡാർക്ക്';

  @override
  String get novelThemeBlack => 'ബ്ലാക്ക്';

  @override
  String get novelJustify => 'ടെക്സ്റ്റ് ജസ്റ്റിഫൈ ചെയ്യൂ';

  @override
  String get novelJustifyDesc => 'ടെക്സ്റ്റ് രണ്ട് അരികുകളിലേക്കും ഒതുക്കൂ';

  @override
  String get trackProgressTitle => 'പ്രോഗ്രസ് സേവ് ചെയ്യണോ?';

  @override
  String trackProgressAnime(String name) {
    return 'കാണുമ്പോൾ $name നിന്റെ ലിസ്റ്റിൽ ട്രാക്ക് ചെയ്യണോ? ലോക്കൽ ആയി സൂക്ഷിക്കാൻ \"ഈ ഉപകരണത്തിൽ മാത്രം\" തിരഞ്ഞെടുക്കൂ, ഒന്നും സേവ് ചെയ്യേണ്ടെങ്കിൽ ഇല്ല.';
  }

  @override
  String trackProgressManga(String name) {
    return 'ഒരു ചാപ്റ്റർ തീരുമ്പോൾ $name നിന്റെ ലിസ്റ്റിൽ ട്രാക്ക് ചെയ്യണോ? ലോക്കൽ ആയി സൂക്ഷിക്കാൻ \"ഈ ഉപകരണത്തിൽ മാത്രം\" തിരഞ്ഞെടുക്കൂ, ഒന്നും സേവ് ചെയ്യേണ്ടെങ്കിൽ ഇല്ല.';
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
  String get trackProgressYes => 'സേവ്';

  @override
  String get trackProgressReset =>
      'ഈ തരത്തിന് പ്രോഗ്രസ് സേവ് പ്രോംപ്റ്റ് റീസെറ്റ് ചെയ്തു, വീണ്ടും ചോദിക്കും';

  @override
  String get trackProgressNo => 'ഇല്ല';

  @override
  String get trackProgressOff => 'ഓഫ്';

  @override
  String get trackProgressLocal => 'ഈ ഉപകരണത്തിൽ മാത്രം';

  @override
  String get trackProgressSettingAnime => 'അനിമെ പ്രോഗ്രസ് ട്രാക്ക് ചെയ്യൂ';

  @override
  String get trackProgressSettingManga => 'മംഗ, നോവൽ പ്രോഗ്രസ് ട്രാക്ക് ചെയ്യൂ';

  @override
  String get trackProgressSettingDesc =>
      'ഒരു എപ്പിസോഡ് തുറക്കുമ്പോഴോ ചാപ്റ്റർ തീർക്കുമ്പോഴോ എന്തു ചെയ്യണം';

  @override
  String get trackProgressAsk => 'ചോദിക്കൂ';

  @override
  String get trackProgressAlways => 'എപ്പോഴും';

  @override
  String get dantotsuImport => 'Dantotsu-വിൽ നിന്ന് ഇമ്പോർട്ട് ചെയ്യൂ';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu സെറ്റിംഗ്സ് ബാക്കപ്പ് വായിക്കൂ (.ani, അല്ലെങ്കിൽ എൻക്രിപ്റ്റഡ് .sani)';

  @override
  String get dantotsuPick => 'ഒരു Dantotsu ബാക്കപ്പ് തിരഞ്ഞെടുക്കൂ';

  @override
  String get dantotsuNothing => 'ഈ ഫയലിൽ ഇമ്പോർട്ട് ചെയ്യാൻ ഒന്നുമില്ല';

  @override
  String get dantotsuApply => 'തിരഞ്ഞെടുത്തത് ഇമ്പോർട്ട് ചെയ്യൂ';

  @override
  String dantotsuDone(int done, int total) {
    return '$total-ൽ $done ഇമ്പോർട്ട് ചെയ്തു';
  }

  @override
  String get dantotsuGroupAccounts => 'അക്കൗണ്ടുകൾ';

  @override
  String get dantotsuGroupAppearance => 'രൂപഭാവം';

  @override
  String get dantotsuGroupExtensions => 'എക്സ്റ്റൻഷനുകൾ';

  @override
  String get dantotsuGroupApp => 'ആപ്പ്';

  @override
  String get dantotsuGroupPlayer => 'പ്ലെയർ';

  @override
  String get dantotsuAnilist => 'AniList ലോഗിൻ';

  @override
  String get dantotsuMal => 'MyAnimeList ലോഗിൻ';

  @override
  String get dantotsuDiscord => 'Discord റിച്ച് പ്രസൻസ് ടോക്കൺ';

  @override
  String get dantotsuTheme => 'തീം';

  @override
  String get dantotsuReposAnime => 'അനിമെ എക്സ്റ്റൻഷൻ റിപ്പോസിറ്ററികൾ';

  @override
  String get dantotsuReposManga => 'മംഗ എക്സ്റ്റൻഷൻ റിപ്പോസിറ്ററികൾ';

  @override
  String get dantotsuReposNovel => 'നോവൽ എക്സ്റ്റൻഷൻ റിപ്പോസിറ്ററികൾ';

  @override
  String get dantotsuUpdates => 'അപ്ഡേറ്റ് പരിശോധന';

  @override
  String get dantotsuComments => 'കമന്റുകൾ';

  @override
  String get dantotsuActivity => 'AniList നോട്ടിഫിക്കേഷൻ പോളിംഗ്';

  @override
  String get dantotsuDns => 'DNS പ്രൊവൈഡർ';

  @override
  String get dantotsuPlayer => 'പ്ലെയർ വേഗതയും സബ്ടൈറ്റിൽ നിറങ്ങളും';

  @override
  String get dantotsuWarning =>
      'ഈ ഫയലിൽ ലോഗിൻ ടോക്കണുകൾ ഉണ്ട്. സ്വകാര്യമായി സൂക്ഷിക്കൂ.';

  @override
  String get novelIndent => 'പാരഗ്രാഫുകൾ ഇൻഡന്റ് ചെയ്യൂ';

  @override
  String get novelIndentDesc => 'ഓരോ പാരഗ്രാഫും ആദ്യ വരിയിൽ ഇൻഡന്റോടെ തുടങ്ങൂ';

  @override
  String get novelLetterSpacing => 'അക്ഷര അകലം';

  @override
  String get novelSectionTranslate => 'വിവർത്തനം';

  @override
  String get sectionExperimental => 'പരീക്ഷണാത്മകം';

  @override
  String get kitsuGraphqlDetail => 'വേഗമേറിയ ഡീറ്റെയിൽ പേജുകൾ (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ഒരു ടൈറ്റിലിനെ അതിന്റെ കഥാപാത്രങ്ങൾ, സ്റ്റാഫ്, നിന്റെ എൻട്രി എന്നിവയോടൊപ്പം ഒറ്റ റിക്വസ്റ്റിൽ ലോഡ് ചെയ്യൂ';

  @override
  String get togetherTitle => 'ഒരുമിച്ച് കാണാം';

  @override
  String get togetherIntro =>
      'കൂട്ടുകാരൻ അയച്ച റൂം ലിങ്ക് പേസ്റ്റ് ചെയ്യൂ. നീ ഉടൻ ചേരും, അവർ കാണാൻ തുടങ്ങുമ്പോൾ പ്ലെയർ തുറക്കും.';

  @override
  String get togetherName => 'നിന്റെ പേര്';

  @override
  String get togetherConnecting => 'കണക്ട് ചെയ്യുന്നു…';

  @override
  String get togetherLeave => 'റൂം വിടൂ';

  @override
  String get togetherYou => 'നീ';

  @override
  String get togetherNoChat => 'മെസ്സേജുകൾ ഇതുവരെ ഇല്ല';

  @override
  String get togetherChatHint => 'മെസ്സേജ്';

  @override
  String get togetherCopyInvite => 'ഇൻവൈറ്റ് കോപ്പി ചെയ്യൂ';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'സെർവറും റൂമും കോപ്പി ചെയ്തു';

  @override
  String get togetherConnectionLost => 'കണക്ഷൻ പോയി';

  @override
  String togetherConnectedTo(String room) {
    return '$room-ൽ കണക്ട് ആയി';
  }

  @override
  String togetherFailed(String error) {
    return 'കണക്ട് ചെയ്യാനായില്ല: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ചേർന്നു';
  }

  @override
  String togetherLeft(String name) {
    return '$name പോയി';
  }

  @override
  String togetherPaused(String name) {
    return '$name പോസ് ചെയ്തു';
  }

  @override
  String togetherResumed(String name) {
    return '$name തുടർന്നു';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time-ലേക്ക് ചാടി';
  }

  @override
  String get togetherFollowFailed =>
      'ഹോസ്റ്റിന്റെ എപ്പിസോഡ് തുറക്കാനായില്ല. നീ തന്നെ തുറക്കൂ.';

  @override
  String get togetherJoinRole => 'റൂമിൽ ചേരൂ';

  @override
  String get togetherOpenHost => 'ഹോസ്റ്റിന്റെ എപ്പിസോഡ് തുറക്കൂ';

  @override
  String get togetherShowChat => 'ലൈവ് ചാറ്റ് കാണിക്കൂ';

  @override
  String get togetherWaitingHost =>
      'ഹോസ്റ്റ് ഒരു എപ്പിസോഡ് തുടങ്ങാൻ കാത്തിരിക്കുന്നു';

  @override
  String get togetherRoomLink => 'റൂം ലിങ്ക്';

  @override
  String get togetherBadLink => 'അത് ഒരു റൂം ലിങ്ക് അല്ല';

  @override
  String get togetherHostClosed => 'ഹോസ്റ്റ് റൂം അടച്ചു';

  @override
  String get togetherNowPlaying => 'ഇപ്പോൾ പ്ലേ ചെയ്യുന്നത്';

  @override
  String togetherWatchingCount(int count) {
    return '$count പേർ കാണുന്നു';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user പോസ് ചെയ്യാൻ ആഗ്രഹിക്കുന്നു';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user തുടരാൻ ആഗ്രഹിക്കുന്നു';
  }

  @override
  String get togetherChip => 'ഒരുമിച്ച്';

  @override
  String get togetherSettingsDesc => 'ലിങ്ക് വഴി കൂട്ടുകാരന്റെ റൂമിൽ ചേരൂ';

  @override
  String get novelBilingual => 'ഒറിജിനലും വിവർത്തനവും കാണിക്കൂ';

  @override
  String get novelBilingualDesc =>
      'ഓരോ പാരഗ്രാഫിലും ഒറിജിനൽ ടെക്സ്റ്റും താഴെ അതിന്റെ വിവർത്തനവും കാണിക്കും';

  @override
  String get novelTranslateTo => 'ഇതിലേക്ക് വിവർത്തനം ചെയ്യൂ';

  @override
  String get novelTranslateOff => 'ഓഫ്';

  @override
  String get novelSectionSpeech => 'ടെക്സ്റ്റ് ടു സ്പീച്ച്';

  @override
  String get novelSpeechRate => 'സംസാര വേഗത';

  @override
  String get novelSpeechPitch => 'സംസാര പിച്ച്';

  @override
  String get novelSpeak => 'ഉറക്കെ വായിക്കൂ';

  @override
  String get novelSpeakStop => 'ഉറക്കെ വായിക്കുന്നത് നിർത്തൂ';

  @override
  String get novelTranslate => 'ചാപ്റ്റർ വിവർത്തനം ചെയ്യൂ';

  @override
  String get novelTranslateShowOriginal => 'ഒറിജിനൽ കാണിക്കൂ';

  @override
  String novelTranslateFailed(String error) {
    return 'വിവർത്തനം പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'ഈ ഉപകരണത്തിൽ ടെക്സ്റ്റ് ടു സ്പീച്ച് ലഭ്യമല്ല';

  @override
  String get novelSpeechVoice => 'ശബ്ദം';

  @override
  String get novelSpeechVoiceDefault => 'സിസ്റ്റം ഡിഫോൾട്ട്';

  @override
  String get novelSpeakPrevious => 'മുൻ വരി';

  @override
  String get novelSpeakNext => 'അടുത്ത വരി';

  @override
  String get novelTapPaging => 'പേജ് മറിക്കാൻ അരികുകളിൽ ടാപ്പ് ചെയ്യൂ';

  @override
  String get novelTapPagingDesc =>
      'പേജ് സ്ക്രോൾ ചെയ്യാൻ ഇടത്തോ വലത്തോ വശത്ത് ടാപ്പ് ചെയ്യൂ, നടുവിൽ നിയന്ത്രണങ്ങൾ കാണിക്കും';

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
    return '$count മിനിറ്റ് ബാക്കി';
  }

  @override
  String get novelBold => 'ബോൾഡ് ടെക്സ്റ്റ്';

  @override
  String get novelBoldDesc => 'കട്ടിയുള്ള വെയ്റ്റ് ഉപയോഗിക്കൂ';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter തീർത്തു';
  }

  @override
  String readerNextUp(String chapter) {
    return 'അടുത്തത്: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'മുമ്പത്തേത്: $chapter';
  }

  @override
  String get readerNoPages => 'ഈ ചാപ്റ്ററിൽ പേജുകൾ ഇല്ല';

  @override
  String get readerLoadingPages => 'പേജുകൾ ലോഡ് ചെയ്യുന്നു…';

  @override
  String get readerSlowPage => 'ഈ പേജ് ഇപ്പോഴും ലോഡ് ചെയ്യുന്നു…';

  @override
  String get readerPageFailed => 'ഈ പേജ് ലോഡ് ചെയ്യാനായില്ല';

  @override
  String get playerShowComments => 'കമന്റുകൾ കാണിക്കൂ';

  @override
  String get playerHideComments => 'കമന്റുകൾ മറയ്ക്കൂ';

  @override
  String get playerSubtitles => 'സബ്ടൈറ്റിലുകൾ';

  @override
  String get playerSubtitlesOff => 'സബ്ടൈറ്റിലുകൾ ഓഫ്';

  @override
  String get playerAudio => 'ഓഡിയോ';

  @override
  String get playerAddSubtitle => 'സബ്ടൈറ്റിൽ ഫയൽ ചേർക്കൂ';

  @override
  String get playerAddAudio => 'ഓഡിയോ ഫയൽ ചേർക്കൂ';

  @override
  String get playerChapters => 'ചാപ്റ്ററുകൾ';

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
  String get playerNoChapters => 'ചാപ്റ്ററുകൾ ഇല്ല';

  @override
  String get playerTimestamp => 'ടൈംസ്റ്റാമ്പ്';

  @override
  String get playerAutoPlayDelay => 'അടുത്ത എപ്പിസോഡ് കൗണ്ട്ഡൗൺ';

  @override
  String get playerWatchedAt => 'കണ്ടതായി കണക്കാക്കേണ്ട സമയം';

  @override
  String playerNextIn(int seconds) {
    return 'അടുത്ത എപ്പിസോഡ് $seconds സെക്കൻഡിൽ';
  }

  @override
  String get playerPlayNow => 'ഇപ്പോൾ പ്ലേ ചെയ്യൂ';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: ഈ ടൈറ്റിലിന് തനിയെ സ്കിപ്പ് ചെയ്യും';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: ഈ ടൈറ്റിലിന് തനിയെ സ്കിപ്പ് ചെയ്യില്ല';
  }

  @override
  String get playerAudioLanguage => 'ഇഷ്ടപ്പെട്ട ഓഡിയോ ഭാഷ';

  @override
  String get playerLanguageOrderHint =>
      'ഭാഷകളെ കോമ കൊണ്ട് വേർതിരിക്കൂ. ആദ്യം കിട്ടുന്നത് ഉപയോഗിക്കും.';

  @override
  String get playerPip => 'പിക്ചർ ഇൻ പിക്ചർ';

  @override
  String get playerAutoPip => 'വിടുമ്പോൾ പിക്ചർ ഇൻ പിക്ചർ';

  @override
  String get playerAutoPipDesc =>
      'ആപ്പ് വിടുമ്പോൾ ചെറിയ വിൻഡോയിൽ പ്ലേ ചെയ്യുന്നത് തുടരൂ';

  @override
  String playerAutoPlaying(String title) {
    return 'അടുത്തതായി $title പ്ലേ ചെയ്യുന്നു…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ഷെയ്ഡറുകൾ ഇൻസ്റ്റാൾ ചെയ്യാനായില്ല: $error';
  }

  @override
  String playerChapter(int number) {
    return 'ചാപ്റ്റർ $number';
  }

  @override
  String get playerPerTitle => 'ഈ ടൈറ്റിലിന് മാത്രം';

  @override
  String get playerPerTitleDesc =>
      'ഈ ഓപ്ഷനുകൾ ഈ ടൈറ്റിലിന് മാത്രമായി സൂക്ഷിക്കൂ, നിന്റെ ഡിഫോൾട്ടുകൾ തൊടരുത്';

  @override
  String get playerSwapGestures => 'സ്വൈപ്പ് വശങ്ങൾ മാറ്റൂ';

  @override
  String get playerSwapGesturesDesc =>
      'ഇടതുവശത്ത് ബ്രൈറ്റ്‌നെസ്, വലതുവശത്ത് വോളിയം';

  @override
  String get playerOpenBig => 'വലിയ വ്യൂവിൽ തുറക്കൂ';

  @override
  String get playerOpenBigDesc =>
      'എപ്പിസോഡ് ലിസ്റ്റ് ഇല്ലാതെ പ്ലേയർ നേരിട്ട് ഫുൾസ്ക്രീനിൽ തുടങ്ങും';

  @override
  String get playerPauseOnBlur => 'ഫോക്കസ് പോയാൽ പോസ് ചെയ്യൂ';

  @override
  String get playerPauseOnBlurDesc =>
      'നോട്ടിഫിക്കേഷൻ പാനൽ പോലുള്ളവ ആപ്പിനെ മറച്ചാൽ പോസ് ആകും, തിരികെ വരുമ്പോൾ തുടരും';

  @override
  String get playerAudioOutput => 'ഓഡിയോ ഔട്ട്പുട്ട്';

  @override
  String get fontAppDefault => 'ആപ്പ് ഫോണ്ട്';

  @override
  String get fontImport => 'ഫോണ്ട് ഇമ്പോർട്ട് ചെയ്യൂ';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'സബ്ടൈറ്റിൽ ഡിലേ';

  @override
  String get playerAudioDelay => 'ഓഡിയോ ഡിലേ';

  @override
  String get playerDelayReset => 'റീസെറ്റ്';

  @override
  String get playerOnlineSubtitles => 'ഓൺലൈൻ സബ്ടൈറ്റിലുകൾ';

  @override
  String get playerOnlineSearchHint => 'ടൈറ്റിലും എപ്പിസോഡും';

  @override
  String get playerOnlineNone => 'സബ്ടൈറ്റിലുകൾ ഒന്നും കണ്ടില്ല';

  @override
  String playerOnlineFailed(String error) {
    return 'സബ്ടൈറ്റിൽ തിരയൽ പരാജയപ്പെട്ടു: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'ഈ സബ്ടൈറ്റിൽ ഡൗൺലോഡ് ചെയ്യാനായില്ല: $error';
  }

  @override
  String get playerOnlineMatch => 'ഈ ഫയലുമായി ചേരും';

  @override
  String get playerOnlineEpisode => 'എപ്പിസോഡ് മാച്ച്';

  @override
  String playerOnlineDownloads(int count) {
    return '$count ഡൗൺലോഡുകൾ';
  }

  @override
  String get playerSeekPreview => 'സീക്ക് പ്രിവ്യൂ';

  @override
  String get playerSeekPreviewDesc =>
      'സ്ക്രബ് ചെയ്യുമ്പോൾ സീക്ക് ബാറിന് മുകളിൽ ചെറിയ ഫ്രെയിം പ്രിവ്യൂ കാണിക്കൂ. രണ്ടാമതൊരു ലോ റെസല്യൂഷൻ ഡീകോഡർ തുറക്കും, അതിനാൽ സ്ട്രീമുകളിൽ കൂടുതൽ ഡാറ്റ ഉപയോഗിക്കും.';

  @override
  String get playerSettingsChip => 'സെറ്റിംഗ്സ്';

  @override
  String get playerAudioDevice => 'ഓഡിയോ ഡിവൈസ്';

  @override
  String get settingsDownloads => 'ഡൗൺലോഡുകൾ';

  @override
  String get settingsDownloadsDesc => 'ഓഫ്‌ലൈൻ എപ്പിസോഡുകൾ, ക്യൂ, ഓഫ്‌ലൈൻ മോഡ്';

  @override
  String get downloadsTitle => 'ഡൗൺലോഡുകൾ';

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
  String get downloadsOpenDesc => 'ക്യൂവും ഈ ഉപകരണത്തിൽ സേവ് ചെയ്തതെല്ലാം കാണൂ';

  @override
  String get downloadTitle => 'ഡൗൺലോഡ്';

  @override
  String get downloadAlready => 'ഇതിനകം ഡൗൺലോഡ് ചെയ്തു അല്ലെങ്കിൽ ക്യൂവിലുണ്ട്';

  @override
  String get downloadPickStream => 'ഏത് സ്ട്രീം ഡൗൺലോഡ് ചെയ്യണം?';

  @override
  String get downloadPickSubtitle => 'ഏത് സബ്ടൈറ്റിൽ ഡൗൺലോഡ് ചെയ്യണം?';

  @override
  String get downloadPickAudio => 'ഏത് ഓഡിയോ ട്രാക്ക് ഡൗൺലോഡ് ചെയ്യണം?';

  @override
  String get downloadNoAudio => 'അധിക ഓഡിയോ ഇല്ല';

  @override
  String get downloadAudio => 'ഓഡിയോ';

  @override
  String get downloadNoSubtitle => 'സബ്ടൈറ്റിൽ ഇല്ല';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'ഈ സ്ട്രീം ഒരു HLS പ്ലേലിസ്റ്റ് ആണ്. ഡൗൺലോഡ് ചെയ്യാൻ FFmpeg ആഡ്-ഓൺ വേണം.';

  @override
  String get downloadSourceMissing =>
      'ഈ എപ്പിസോഡിന്റെ സോഴ്സ് ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';

  @override
  String get downloadWaitingConnection => 'കണക്ഷനായി കാത്തിരിക്കുന്നു';

  @override
  String get downloadSubtitles => 'സബ്ടൈറ്റിലുകൾ';

  @override
  String get downloadDownloaded => 'ഡൗൺലോഡ് ചെയ്തത്';

  @override
  String get downloadOffline => 'ഓഫ്‌ലൈൻ';

  @override
  String get downloadDelete => 'ഡൗൺലോഡ് ഡിലീറ്റ് ചെയ്യൂ';

  @override
  String get downloadCancel => 'റദ്ദാക്കൂ';

  @override
  String get downloadPause => 'പോസ്';

  @override
  String get downloadPaused => 'പോസ് ചെയ്തു';

  @override
  String get downloadResume => 'തുടരൂ';

  @override
  String get downloadPauseAll => 'എല്ലാം പോസ് ചെയ്യൂ';

  @override
  String get downloadResumeAll => 'എല്ലാം തുടരൂ';

  @override
  String get downloadQueuedState => 'ക്യൂവിൽ കാത്തിരിക്കുന്നു';

  @override
  String get downloadResolving => 'സ്ട്രീം എടുക്കുന്നു…';

  @override
  String get downloadUsedFallback =>
      'ചേരുന്ന സ്ട്രീം ഇല്ല, ആദ്യത്തേത് ഉപയോഗിച്ചു';

  @override
  String get downloadTabQueue => 'ക്യൂ';

  @override
  String get downloadTabDone => 'കഴിഞ്ഞു';

  @override
  String get downloadTabFailed => 'പരാജയപ്പെട്ടു';

  @override
  String get downloadEmptyQueue => 'ഒന്നും ഡൗൺലോഡ് ആകുന്നില്ല';

  @override
  String get downloadEmptyDone => 'ഇതുവരെ ഒന്നും ഡൗൺലോഡ് ചെയ്തിട്ടില്ല';

  @override
  String get downloadEmptyFailed => 'പരാജയപ്പെട്ട ഡൗൺലോഡുകൾ ഇല്ല';

  @override
  String get downloadNext => 'അടുത്ത എപ്പിസോഡ്';

  @override
  String downloadNextN(int count) {
    return 'അടുത്ത $count എപ്പിസോഡുകൾ';
  }

  @override
  String downloadUnwatched(int count) {
    return 'കാണാത്തവ എല്ലാം ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ഈ റേഞ്ച് ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'എല്ലാ എപ്പിസോഡുകളും ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count എപ്പിസോഡുകൾ ക്യൂവിൽ ചേർത്തു',
      one: '1 എപ്പിസോഡ് ക്യൂവിൽ ചേർത്തു',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name ഡൗൺലോഡ് ചെയ്തു';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name ഡൗൺലോഡ് പരാജയപ്പെട്ടു';
  }

  @override
  String downloadStorage(String size) {
    return 'ഡൗൺലോഡുകൾ $size ഉപയോഗിച്ചു';
  }

  @override
  String get downloadQueueHeader => 'ക്യൂ';

  @override
  String get downloadParallel => 'ഒരേസമയം ഡൗൺലോഡുകൾ';

  @override
  String get downloadParallelDesc =>
      'ഒരു സമയം ഒരു ഡൗൺലോഡ് അല്ലെങ്കിൽ പലതും ഒരുമിച്ച് ഓടിക്കൂ';

  @override
  String get downloadOneByOne => 'ഒന്നൊന്നായി';

  @override
  String get downloadNotifications => 'ഡൗൺലോഡ് നോട്ടിഫിക്കേഷനുകൾ';

  @override
  String get downloadNotificationsDesc =>
      'സിസ്റ്റം സപ്പോർട്ട് ചെയ്യുന്നിടത്ത് ലൈവ് പ്രോഗ്രസ്, അല്ലെങ്കിൽ ഡൗൺലോഡ് തീരുമ്പോൾ ഒരു കുറിപ്പ്';

  @override
  String get downloadNotifyLive => 'ലൈവ്';

  @override
  String get downloadNotifyDone => 'തീരുമ്പോൾ';

  @override
  String get downloadNotifyOff => 'ഓഫ്';

  @override
  String get downloadInfoFile => 'ഓരോ ഡൗൺലോഡിനും അടുത്ത് ഒരു ഇൻഫോ ഫയൽ എഴുതൂ';

  @override
  String get downloadInfoFileDesc =>
      'സ്ട്രീം, ക്വാളിറ്റി, സബ്ടൈറ്റിൽ, സ്കിപ്പ് സമയങ്ങൾ എന്നിവ ചെറിയ .json ഫയലായി സേവ് ചെയ്യും';

  @override
  String get offlineHeader => 'ഓഫ്‌ലൈൻ';

  @override
  String get offlineModeDesc =>
      'ഓട്ടോ ആണെങ്കിൽ ആപ്പ് കണക്ഷൻ ഇല്ലാതെ തുടങ്ങുമ്പോൾ മാത്രം ഓഫ്‌ലൈൻ ആകും. എപ്പോഴും ആണെങ്കിൽ നീ മാറ്റുംവരെ ഓഫ്‌ലൈൻ തന്നെ.';

  @override
  String get offlineModeOff => 'ഓഫ്';

  @override
  String get offlineModeAlways => 'എപ്പോഴും';

  @override
  String get offlineModeOn =>
      'ഓഫ്‌ലൈൻ മോഡ് ഓണാണ്. മാറ്റങ്ങൾ ഇവിടെ സേവ് ചെയ്യും, ഓൺലൈൻ ആകുമ്പോൾ അയയ്ക്കും.';

  @override
  String get offlineSaved =>
      'ഈ ഉപകരണത്തിൽ സേവ് ചെയ്തു, ഓൺലൈൻ ആകുമ്പോൾ സിങ്ക് ചെയ്യും';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മാറ്റങ്ങൾ സിങ്ക് ചെയ്തു',
      one: '1 മാറ്റം സിങ്ക് ചെയ്തു',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count മാറ്റങ്ങൾ സിങ്കിനായി കാത്തിരിക്കുന്നു',
      one: '1 മാറ്റം സിങ്കിനായി കാത്തിരിക്കുന്നു',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'സിങ്കിനായി കാത്തിരിക്കുന്ന മാറ്റങ്ങൾ';

  @override
  String get offlinePendingNone => 'ഒന്നും കാത്തിരിക്കുന്നില്ല';

  @override
  String get offlineSyncNow => 'ഇപ്പോൾ സിങ്ക് ചെയ്യൂ';

  @override
  String get offlineDiscard => 'ഉപേക്ഷിക്കൂ';

  @override
  String get downloadNotOffline =>
      'ഈ എപ്പിസോഡ് ഡൗൺലോഡ് ചെയ്തിട്ടില്ല, അതിനാൽ ഓഫ്‌ലൈനിൽ ലഭ്യമല്ല';

  @override
  String get offlineModeChip => 'ഓഫ്‌ലൈൻ';

  @override
  String get downloadNextChapter => 'അടുത്ത ചാപ്റ്റർ';

  @override
  String downloadNextChapters(int count) {
    return 'അടുത്ത $count ചാപ്റ്ററുകൾ';
  }

  @override
  String downloadUnread(int count) {
    return 'വായിക്കാത്തവ എല്ലാം ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'എല്ലാ ചാപ്റ്ററുകളും ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total പേജുകൾ';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count പേജുകൾ';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ആഡ്-ഓൺ വേണം';

  @override
  String get downloadFfmpegBody =>
      'ഈ സ്ട്രീം ഒരു HLS പ്ലേലിസ്റ്റ് ആണ്. FFmpeg ആഡ്-ഓൺ അതിന്റെ കഷ്ണങ്ങൾ ചേർത്ത് ഒറ്റ mp4 ഫയലാക്കും. ഇല്ലെങ്കിൽ കഷ്ണങ്ങൾ ഒരു എപ്പിസോഡ് ഫോൾഡറിൽ സൂക്ഷിച്ച് അവിടെ നിന്ന് പ്ലേ ചെയ്യും.';

  @override
  String get downloadFfmpegInstall => 'ഇൻസ്റ്റാൾ';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg ഇൻസ്റ്റാൾ ചെയ്യുന്നു, കുറച്ച് സമയമെടുക്കാം…';

  @override
  String get downloadFinishing => 'കഷ്ണങ്ങൾ ഒറ്റ ഫയലാക്കുന്നു…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total ഭാഗങ്ങൾ';
  }

  @override
  String get downloadTorrentNoFile =>
      'ഈ ടോറന്റിൽ ഡൗൺലോഡ് ചെയ്യാൻ വീഡിയോ ഫയൽ ഇല്ല';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഐറ്റങ്ങൾ ഡൗൺലോഡ് ചെയ്യുന്നു',
      one: '1 ഐറ്റം ഡൗൺലോഡ് ചെയ്യുന്നു',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'കണ്ട ഡൗൺലോഡുകൾ ഡിലീറ്റ് ചെയ്യൂ';

  @override
  String get downloadAutoDeleteDesc =>
      'നിന്റെ പ്രോഗ്രസ് ആ എപ്പിസോഡിലോ ചാപ്റ്ററിലോ എത്തുമ്പോൾ ഡൗൺലോഡ് നീക്കം ചെയ്യും';

  @override
  String get downloadConnections => 'ഒരു ഡൗൺലോഡിന് കണക്ഷനുകൾ';

  @override
  String get downloadConnectionsDesc =>
      'വലിയ ഫയലിനെ ഒരേസമയം എടുക്കുന്ന ഭാഗങ്ങളായി പിളർത്തും. ചില സെർവറുകൾ ഇത് പരിമിതപ്പെടുത്തും.';

  @override
  String get downloadPlayChoice => 'ഇതിൽ നിന്ന് പ്ലേ ചെയ്യൂ';

  @override
  String get downloadPlayLocalDesc => 'ഈ ഉപകരണത്തിൽ സേവ് ചെയ്ത ഫയൽ';

  @override
  String get downloadPlayStream => 'ഓൺലൈനായി സ്ട്രീം ചെയ്യൂ';

  @override
  String get downloadPlayStreamDesc => 'സോഴ്സിൽ നിന്ന് എപ്പിസോഡ് ലോഡ് ചെയ്യൂ';

  @override
  String get offlineFeedTitle => 'ഈ ഉപകരണത്തിൽ ഡൗൺലോഡ് ചെയ്തത്';

  @override
  String get offlineFeedEmpty =>
      'ഓൺലൈനിൽ ഇരിക്കുമ്പോൾ എന്തെങ്കിലും ഡൗൺലോഡ് ചെയ്താൽ അത് ഇവിടെ കാണും';

  @override
  String get offlineEnabled => 'ഓഫ്‌ലൈൻ മോഡ് ഓണാണ്';

  @override
  String get offlineDisabled => 'ഓഫ്‌ലൈൻ മോഡ് ഓഫാണ്';

  @override
  String get downloadReadChoice => 'ഇതിൽ നിന്ന് വായിക്കൂ';

  @override
  String get downloadReadLocalDesc => 'ഈ ഉപകരണത്തിൽ സേവ് ചെയ്ത പേജുകൾ';

  @override
  String get downloadReadOnline => 'ഓൺലൈനായി വായിക്കൂ';

  @override
  String get downloadReadOnlineDesc => 'സോഴ്സിൽ നിന്ന് ചാപ്റ്റർ ലോഡ് ചെയ്യൂ';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name ഈ ഉപകരണത്തിൽ നിന്ന് ഡിലീറ്റ് ചെയ്യണോ?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name ഡൗൺലോഡ് റദ്ദാക്കണോ? ഇതുവരെ ഡൗൺലോഡ് ചെയ്തത് ഡിലീറ്റ് ചെയ്യപ്പെടും.';
  }

  @override
  String get downloadFfmpegFolder => 'ഫോൾഡറായി സൂക്ഷിക്കൂ';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'അയയ്ക്കാത്ത $count മാറ്റങ്ങൾ ഉപേക്ഷിക്കണോ? ഇത് തിരിച്ചെടുക്കാനാവില്ല.',
      one: 'അയയ്ക്കാത്ത മാറ്റം ഉപേക്ഷിക്കണോ? ഇത് തിരിച്ചെടുക്കാനാവില്ല.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi-ക്കായി കാത്തിരിക്കുന്നു';

  @override
  String get downloadWaitingMetered => 'മീറ്റേർഡ് കണക്ഷനിൽ പോസ് ചെയ്തു';

  @override
  String get downloadWifiOnly => 'Wi-Fi മാത്രം';

  @override
  String get downloadWifiOnlyDesc =>
      'മൊബൈൽ ഡാറ്റയിൽ ഇരിക്കുമ്പോൾ ഡൗൺലോഡുകൾ കാത്തിരിക്കും';

  @override
  String get downloadMetered => 'മീറ്റേർഡ് കണക്ഷനുകളിൽ പോസ് ചെയ്യൂ';

  @override
  String get downloadMeteredDesc =>
      'നിന്റെ ഉപകരണം മീറ്റേർഡ് എന്ന് അടയാളപ്പെടുത്തിയ Wi-Fi-യിലും കാത്തിരിക്കും';

  @override
  String get downloadSpeedLimit => 'സ്പീഡ് ലിമിറ്റ്';

  @override
  String get downloadSpeedLimitDesc => 'ആകെ ഡൗൺലോഡ് വേഗതയ്ക്ക് പരിധി വയ്ക്കും';

  @override
  String get downloadUnlimited => 'അൺലിമിറ്റഡ്';

  @override
  String get downloadMoveToTop => 'മുകളിലേക്ക് മാറ്റൂ';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds സീഡുകൾ · $peers പിയറുകൾ';
  }

  @override
  String get downloadTorrentFile => 'ഏത് ഫയൽ?';

  @override
  String get downloadTorrentAuto => 'എപ്പിസോഡ് തനിയെ ചേർക്കൂ';

  @override
  String get downloadTorrentLoading => 'ടോറന്റ് വായിക്കുന്നു…';

  @override
  String get watchAutoSource => 'അടുത്ത സോഴ്സിലേക്ക് തനിയെ മാറൂ';

  @override
  String get watchAutoSourceDesc =>
      'സോഴ്സിന് ടൈറ്റിൽ കണ്ടെത്താനായില്ലെങ്കിലോ ലോഡ് പരാജയപ്പെട്ടാലോ, ഇൻസ്റ്റാൾ ചെയ്ത അടുത്ത സോഴ്സ് നോക്കൂ';

  @override
  String get extensionTest => 'എക്സ്റ്റൻഷനുകൾ ടെസ്റ്റ് ചെയ്യൂ';

  @override
  String get extensionTestCopy => 'പരാജയങ്ങളും അവയുടെ ലോഗുകളും കോപ്പി ചെയ്യൂ';

  @override
  String get extensionTestQuery => 'തിരയൽ വാക്ക്';

  @override
  String get extensionTestRun => 'ഓടിക്കൂ';

  @override
  String get extensionTestStop => 'നിർത്തൂ';

  @override
  String get extensionTestNone =>
      'ഈ തരത്തിൽ ഇൻസ്റ്റാൾ ചെയ്ത എക്സ്റ്റൻഷനുകൾ ഇല്ല';

  @override
  String get extensionTestNotRun => 'ഇതുവരെ ടെസ്റ്റ് ചെയ്തിട്ടില്ല';

  @override
  String get extensionTestSearch => 'തിരയൂ';

  @override
  String get extensionTestDetail => 'വിശദാംശങ്ങൾ';

  @override
  String get extensionTestUnits => 'എപ്പിസോഡുകൾ / ചാപ്റ്ററുകൾ';

  @override
  String get extensionTestLinks => 'സ്ട്രീമുകൾ / പേജുകൾ';

  @override
  String extensionTestFailedAt(String step) {
    return '$step-ൽ പരാജയപ്പെട്ടു';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total-ൽ $done ടെസ്റ്റ് ചെയ്തു · $passed വിജയിച്ചു · $failed പരാജയപ്പെട്ടു';
  }

  @override
  String get extensionTestCopyLogs => 'മുഴുവൻ ലോഗുകളോടെ എല്ലാം കോപ്പി ചെയ്യൂ';

  @override
  String get onboardingFeaturesTitle => 'എല്ലാം ഒരിടത്ത്';

  @override
  String get onboardingFeaturesBody =>
      'നീ ട്രാക്ക് ചെയ്യുന്നതും കാണുന്നതും വായിക്കുന്നതുമെല്ലാം, ആപ്പുകൾ മാറിമാറി ഉപയോഗിക്കാതെ.';

  @override
  String get onboardingFeatureTrack => 'എല്ലാം ട്രാക്ക് ചെയ്യൂ';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu, MangaBaka എന്നിവയിലെ ലിസ്റ്റുകൾ, പ്രോഗ്രസ്, സ്കോറുകൾ.';

  @override
  String get onboardingFeatureWatch => 'കാണൂ, വായിക്കൂ';

  @override
  String get onboardingFeatureWatchDesc =>
      'എക്സ്റ്റൻഷനുകൾ ഇൻസ്റ്റാൾ ചെയ്ത് അനിമെ സ്ട്രീം ചെയ്യൂ, മംഗയും നോവലുകളും ആപ്പിൽ തന്നെ വായിക്കൂ.';

  @override
  String get onboardingFeatureOffline => 'ഓഫ്‌ലൈനിലും തുടരൂ';

  @override
  String get onboardingFeatureOfflineDesc =>
      'എപ്പിസോഡുകളും ചാപ്റ്ററുകളും ഡൗൺലോഡ് ചെയ്ത് കണക്ഷൻ ഇല്ലാതെയും തുടരൂ.';

  @override
  String get onboardingFeatureSync => 'ലിസ്റ്റുകൾ സിങ്കിൽ നിർത്തൂ';

  @override
  String get onboardingFeatureSyncDesc =>
      'നിന്റെ ലിസ്റ്റ് സർവീസുകളിലുടനീളം പകർത്തൂ, അല്ലെങ്കിൽ ആരാണോ മുന്നിൽ അത് ജയിക്കട്ടെ.';

  @override
  String get onboardingServices => 'ഇവയുമായി പ്രവർത്തിക്കും';

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
      'Hold and drag a button to move it. Tap one to cut it, move it or hide it';

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
