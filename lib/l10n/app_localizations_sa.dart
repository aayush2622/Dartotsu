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
  String get appTagline => 'अनिमे-मांगा अनुसरणार्थं\nनूतनं सर्वोत्तमं ऐप्';

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
  String get loadMore => 'अधिकानि आनयतु';

  @override
  String get login => 'लॉगिन';

  @override
  String get continueAsGuest => 'अतिथिरूपेण अग्रे गच्छ';

  @override
  String get getStarted => 'आरभस्व';

  @override
  String get loginWithToken => 'टोकनेन लॉगिन';

  @override
  String get pasteTokenHint => 'स्वस्य एक्सेस् टोकन् अत्र स्थापय';

  @override
  String loginTo(String service) {
    return '$service मध्ये लॉगिन';
  }

  @override
  String get settings => 'सेटिंग्स्';

  @override
  String get account => 'खातम्';

  @override
  String get about => 'विषये';

  @override
  String get language => 'भाषा';

  @override
  String get animationSpeed => 'एनिमेशन्स्';

  @override
  String get animationSpeedDesc =>
      'ऐप्-मध्ये संक्रमणानां प्रवेशप्रभावानां च वेगः';

  @override
  String get animationSpeedOff => 'निष्क्रिय';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'विस्तारकाणि',
      one: 'विस्तारकम्',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'अज्ञातं स्रोतः';

  @override
  String get install => 'स्थापय';

  @override
  String get update => 'अद्यतनं कुरु';

  @override
  String get uninstall => 'अस्थापय';

  @override
  String get updateInstallCancelled =>
      'संस्थापनं निरस्तम्। यदि Android इत्यवदत् यत् एषा एप् संस्थापितया सह विरुध्यते, तर्हि हस्ताक्षरं भिन्नम्: प्रथमं वर्तमानं संस्करणम् अपसारयतु, ततः अद्यतनं संस्थापयतु';

  @override
  String updateInstallFailed(String error) {
    return 'अद्यतनं न सिद्धम्: $error';
  }

  @override
  String get appLock => 'एप्-ताला';

  @override
  String get appLockDesc =>
      'एप् उद्घाटनसमये कियत्कालानन्तरं पुनरागमनसमये वा गुप्तसङ्केतं पृच्छतु';

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
  String get appLockUnlock => 'स्वस्य गुप्तसङ्केतं लिखतु';

  @override
  String get appLockWrong => 'गुप्तसङ्केतः दोषयुक्तः';

  @override
  String appLockWait(String seconds) {
    return 'बहुवारं प्रयत्नः कृतः, $seconds क्षणान् प्रतीक्षस्व';
  }

  @override
  String get appLockNew => 'गुप्तसङ्केतं चिनोतु';

  @override
  String get appLockNewHint => '४ तः ८ अङ्काः';

  @override
  String get appLockConfirm => 'पुनः लिखतु';

  @override
  String get appLockMismatch => 'गुप्तसङ्केतौ न समानौ';

  @override
  String get appLockOn => 'गुप्तसङ्केतः स्थापितः';

  @override
  String get appLockRemoveTitle => 'ताला निवारयितुं स्वस्य गुप्तसङ्केतं लिखतु';

  @override
  String get installFailed => 'स्थापना विफला';

  @override
  String get updateFailed => 'अद्यतनं विफलम्';

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
  String get noSourceSettings => 'अस्य स्रोतसः सेटिंग्स् न सन्ति';

  @override
  String get addPluginRepository => 'प्लगिन्-भण्डारं योजय';

  @override
  String get pluginIndexUrlHint => 'प्लगिन्-सूच्याः URL';

  @override
  String get addRepository => 'भण्डारं योजय';

  @override
  String get pluginRepoUpdated => 'प्लगिन्-भण्डारः अद्यतनितः';

  @override
  String get pluginRepoUpdateFailed => 'प्लगिन्-भण्डारस्य नवीकरणं विफलम्';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'रद्द कुरु';

  @override
  String get yes => 'आम्';

  @override
  String get no => 'न';

  @override
  String get save => 'रक्ष';

  @override
  String get reset => 'पुनःस्थापय';

  @override
  String get clear => 'मार्जय';

  @override
  String get test => 'परीक्षस्व';

  @override
  String get testing => 'परीक्षा चलति…';

  @override
  String get resolving => 'समाधानं चलति…';

  @override
  String get none => 'किमपि न';

  @override
  String get selectMediaService => 'मीडिया-सेवां चिनु';

  @override
  String get pickColor => 'वर्णं चिनु';

  @override
  String get colorPickerCustom => 'स्वनिर्मितम्';

  @override
  String get colorPickerTransparent => 'पारदर्शकम्';

  @override
  String get ltr => 'वामतः दक्षिणम्';

  @override
  String get searchSettings => 'सेटिंग्स् अन्विष्य';

  @override
  String nothingMatches(String query) {
    return '\"$query\" इत्यनेन किमपि न मिलति';
  }

  @override
  String searchCategory(String category) {
    return '$category मध्ये अन्वेषणम्';
  }

  @override
  String get settingsAppearance => 'रूपम्';

  @override
  String get settingsAppearanceDesc => 'थीम्, वर्णाः, काचमोडः';

  @override
  String get settingsGeneral => 'सामान्यम्';

  @override
  String get settingsGeneralDesc => 'भाषा आचरणं च';

  @override
  String get settingsNetwork => 'जालम्';

  @override
  String get settingsNetworkDesc =>
      'उपयोक्तृ-प्रतिनिधिः, प्रमाणपत्राणि, DNS प्रॉक्सी च';

  @override
  String get settingsAccountDesc => 'अनुसरणसेवा लॉगिन् च';

  @override
  String get settingsUpdates => 'अद्यतनानि';

  @override
  String get amoledBlack => 'AMOLED कृष्णम्';

  @override
  String get amoledBlackDesc => 'डार्क्-मोडे शुद्धकृष्णं पृष्ठम्';

  @override
  String get glassMode => 'काचमोडः';

  @override
  String get glassModeDesc => 'तव पुस्तकालयस्य चित्राणां उपरि धूमिलं पृष्ठम्';

  @override
  String get shelfFrame => 'विभागानां परितः चौकटम्';

  @override
  String get shelfFrameDesc =>
      'प्रत्येकस्य पङ्क्तेः पृष्ठतः कार्डं दर्शय, अथवा पङ्क्तीः साक्षात् पृष्ठे तिष्ठन्तु';

  @override
  String get settingsExtensionsDesc =>
      'स्रोतः-प्रबन्धकाः, भण्डाराः, एक्स्टेंशन्-विकल्पाः च';

  @override
  String get settingsAddons => 'ऐड्-ऑन्स्';

  @override
  String get customPath => 'स्वनिर्मितः भण्डारणमार्गः';

  @override
  String get customPathDesc =>
      'ऐप्-दत्तांशः कुत्र रक्ष्यते। पुनःस्थापनार्थं दीर्घं नुद';

  @override
  String get selectDirectory => 'निर्देशिकां चिनु';

  @override
  String get differentCacheManager => 'वैकल्पिकः चित्र-कॅश्';

  @override
  String get differentCacheManagerDesc =>
      'चित्राणां कृते अन्यं कॅश्-प्रबन्धकं प्रयुङ्क्ष्व';

  @override
  String get settingsSync => 'Sync settings';

  @override
  String get settingsSyncDesc =>
      'Keep your settings the same on every device. They are stored in a private gist in your GitHub account';

  @override
  String get settingsSyncSwitch => 'Sync on change';

  @override
  String get settingsSyncModeGithub => 'GitHub';

  @override
  String get settingsSyncSignIn => 'Sign in with GitHub';

  @override
  String get settingsSyncSignInDesc =>
      'Settings are stored in a private gist in your account';

  @override
  String get settingsSyncToken => 'Use a personal access token';

  @override
  String get settingsSyncTokenDesc =>
      'Create one at github.com/settings/tokens with only the gist permission';

  @override
  String get settingsSyncTokenField => 'Token';

  @override
  String settingsSyncSignedIn(Object user) {
    return 'Signed in as $user';
  }

  @override
  String get settingsSyncSignOut => 'Sign out';

  @override
  String settingsSyncCode(Object code) {
    return 'Enter $code on GitHub';
  }

  @override
  String get settingsSyncCodeDesc =>
      'The GitHub page opened in your browser. Tap to copy the code, or tap and hold to cancel.';

  @override
  String get settingsSyncSignInFailed => 'Could not sign in to GitHub';

  @override
  String get settingsSyncOn => 'On';

  @override
  String get settingsSyncNoneChanged =>
      'You haven\'t changed any of these yet, so there is nothing to sync.';

  @override
  String get settingsSyncChangedOnly =>
      'Only settings you have changed are stored. Everything else uses its default on every device. The cloud icon shows what is already on the server.';

  @override
  String get settingsSyncOffCategory =>
      'Not syncing. These stay on this device and the server copy is left as it is.';

  @override
  String get settingsSyncCatOther => 'Watch, read and services';

  @override
  String get settingsSyncTitles => 'Watch progress and titles';

  @override
  String settingsSyncTitlesCount(Object records, Object resume) {
    return '$records titles and $resume resume entries on the server';
  }

  @override
  String get settingsSyncTitlesNone => 'Nothing uploaded yet';

  @override
  String get settingsSyncTitlesNote =>
      'Watch and read positions, the resume shelf, bookmarks, highlights and per-title options. Source matches and streams stay on each device because they depend on your extensions. Titles upload at most every 45 seconds.';

  @override
  String get settingsSyncConnect => 'Not connected';

  @override
  String get settingsSyncConnectDesc =>
      'Sign in with GitHub to keep your settings the same on every device.';

  @override
  String get settingsSyncFailedTitle => 'Sync failed';

  @override
  String get settingsSyncPaused => 'Paused';

  @override
  String get settingsSyncPausedDesc =>
      'Nothing is uploaded or downloaded while this is off.';

  @override
  String get settingsSyncUpToDate => 'Up to date';

  @override
  String get settingsSyncRetry => 'Retry';

  @override
  String get settingsSyncAccount => 'GitHub account';

  @override
  String get settingsSyncAccountDesc =>
      'Your data goes to a private gist in your own account.';

  @override
  String get settingsSyncWaiting => 'Waiting for you to approve on GitHub';

  @override
  String get settingsSyncCopyCode => 'Tap the code to copy it';

  @override
  String get settingsSyncCancel => 'Cancel';

  @override
  String get settingsSyncStatSettings => 'Settings';

  @override
  String get settingsSyncStatTitles => 'Titles';

  @override
  String get settingsSyncStatShelf => 'Resume';

  @override
  String settingsSyncUploaded(Object time, Object device) {
    return 'Uploaded $time from $device';
  }

  @override
  String settingsSyncChanged(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count changed',
      one: '1 changed',
      zero: 'Nothing changed yet',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncSecrets => 'Accounts and passwords';

  @override
  String get settingsSyncSecretsDesc =>
      'Sync your sign-ins (AniList, MAL, Kitsu, Simkl, MangaBaka, MangaUpdates), API keys and app lock between your devices. They are encrypted with a passphrase that stays on your devices, so GitHub never sees them.';

  @override
  String get settingsSyncSecretsOn => 'Accounts are synced and encrypted';

  @override
  String get settingsSyncSecretsOnDesc =>
      'Signing out on one device does not sign you out on the others.';

  @override
  String get settingsSyncSecretsBroken =>
      'The passphrase no longer matches the one on the server. Enter it again to keep syncing accounts.';

  @override
  String get settingsSyncPassphraseSet => 'Set a passphrase';

  @override
  String get settingsSyncPassphraseEnter => 'Enter your passphrase';

  @override
  String get settingsSyncPassphraseField => 'Passphrase';

  @override
  String get settingsSyncPassphraseConfirm => 'Repeat the passphrase';

  @override
  String get settingsSyncPassphraseNew =>
      'Choose a passphrase of at least 6 characters. It is not stored anywhere but your devices and cannot be recovered. If you forget it, delete the server copy and start again.';

  @override
  String get settingsSyncPassphraseExisting =>
      'Enter the passphrase you chose on your other device. Accounts on this device will be replaced by the synced ones.';

  @override
  String get settingsSyncPassphraseWrong => 'Wrong passphrase';

  @override
  String get settingsSyncPassphraseMismatch => 'The passphrases do not match';

  @override
  String get settingsSyncPassphraseShort => 'Use at least 6 characters';

  @override
  String get settingsSyncSecretsStop => 'Stop syncing accounts';

  @override
  String get settingsSyncSecretsDelete => 'Delete from GitHub';

  @override
  String get settingsSyncSecretsDeleteMessage =>
      'This removes the encrypted accounts file from your gist. Other devices keep their sign-ins and can set a new passphrase.';

  @override
  String get settingsSyncWhat => 'What to sync';

  @override
  String get settingsSyncServer => 'On the server';

  @override
  String get settingsSyncServerEmpty => 'Nothing uploaded yet';

  @override
  String settingsSyncServerInfo(Object count, Object time, Object device) {
    return '$count settings, uploaded $time from $device';
  }

  @override
  String get settingsSyncThisDevice => 'this device';

  @override
  String settingsSyncCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count settings on the server',
      one: '1 setting on the server',
      zero: 'Nothing on the server',
    );
    return '$_temp0';
  }

  @override
  String get settingsSyncNow => 'Sync now';

  @override
  String get settingsSyncRunning => 'Syncing…';

  @override
  String get settingsSyncNever => 'Not synced yet';

  @override
  String settingsSyncLast(Object time) {
    return 'Last synced $time';
  }

  @override
  String settingsSyncFailed(Object error) {
    return 'Sync failed: $error';
  }

  @override
  String get settingsSyncScope =>
      'Only settings that work the same everywhere are synced. Accounts, tokens, folders, extensions, notifications, Discord, updates and window size stay on each device.';

  @override
  String get backupAndRestore => 'बैकप् पुनःस्थापनं च';

  @override
  String get backupAndRestoreDesc => 'स्वस्य प्राधान्यानि रक्ष अथवा आनय';

  @override
  String get backup => 'बैकप्';

  @override
  String get restore => 'पुनःस्थापय';

  @override
  String get loadExtensionsIcon => 'एक्स्टेंशन्-चिह्नानि आनय';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'एक्स्टेंशन्-सूचीषु स्रोतसां चिह्नानि दर्शय';

  @override
  String get sectionStorage => 'भण्डारणम्';

  @override
  String get sectionManagers => 'प्रबन्धकाः';

  @override
  String get sectionOptions => 'विकल्पाः';

  @override
  String get backupTabBackup => 'बैकप् कुरु';

  @override
  String get backupTabRestore => 'पुनःस्थापय';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories वर्गेषु $keys सेटिंग्स्';
  }

  @override
  String backupLastBackup(Object time) {
    return 'अन्तिमं बैकप् $time';
  }

  @override
  String get backupNever => 'बैकप् नास्ति';

  @override
  String get backupSelectAll => 'सर्वं चिनु';

  @override
  String get backupClearAll => 'मार्जय';

  @override
  String backupKeys(Object count) {
    return '$count सेटिंग्स्';
  }

  @override
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

  @override
  String get backupPassword => 'पासवर्ड् (वैकल्पिकम्)';

  @override
  String get backupPasswordHint => 'मूलभूतं प्रयोक्तुं रिक्तं त्यज';

  @override
  String get backupSensitive =>
      'लॉगिन्-टोकन्स् अन्तर्भवन्ति। इमां फाइलं गुप्तां रक्ष';

  @override
  String get backupCreate => 'बैकप् निर्मिणु';

  @override
  String backupSaved(Object name) {
    return 'बैकप् $name मध्ये रक्षितम्';
  }

  @override
  String backupFailed(Object error) {
    return 'बैकप् विफलम्: $error';
  }

  @override
  String get backupPickFile => 'बैकप्-फाइलं चिनु';

  @override
  String get backupPickFileDesc => 'Dartotsu-निर्मितां .json फाइलं चिनु';

  @override
  String get backupChooseAnother => 'अन्यां फाइलं चिनु';

  @override
  String get backupCreatedAt => 'निर्मितम्';

  @override
  String get backupAppVersion => 'ऐप्-संस्करणम्';

  @override
  String get backupDevice => 'उपकरणम्';

  @override
  String get backupAccounts => 'खातानि';

  @override
  String get backupSize => 'आकारः';

  @override
  String get backupEncrypted => 'पासवर्ड्-रक्षितम्';

  @override
  String get backupUnlock => 'उद्घाटय';

  @override
  String get backupWrongPassword =>
      'इयं फाइल् पठितुं न शक्यते। पासवर्ड् परीक्षस्व';

  @override
  String get backupRestoreSelected => 'चितानि पुनःस्थापय';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count सेटिंग्स् पुनःस्थापयसि? एतेषु वर्गेषु विद्यमानमूल्यानि अधिलिख्यन्ते।';
  }

  @override
  String get backupRestored =>
      'पुनःस्थापितम्। सर्वं प्रयोक्तुं ऐप् पुनः आरभस्व';

  @override
  String backupRestoreFailed(Object error) {
    return 'पुनःस्थापनं विफलम्: $error';
  }

  @override
  String get backupSelectOne => 'न्यूनातिन्यूनम् एकं वर्गं चिनु';

  @override
  String get backupCatTheme => 'रूपम्';

  @override
  String get backupCatThemeDesc =>
      'थीम्, वर्णाः, काचः, अक्षराणि, कार्ड्-शैली च';

  @override
  String get backupCatCommon => 'सामान्यम्';

  @override
  String get backupCatCommonDesc =>
      'भाषा, भण्डारणम्, जालम्, एक्स्टेंशन्-विकल्पाः च';

  @override
  String get backupCatPlayer => 'प्लेयर्';

  @override
  String get backupCatPlayerDesc => 'प्लेयर्-प्राधान्यानि';

  @override
  String get backupCatReader => 'रीडर्';

  @override
  String get backupCatReaderDesc => 'रीडर्-प्राधान्यानि';

  @override
  String get backupCatProtected => 'खातानि';

  @override
  String get backupCatProtectedDesc => 'लॉगिन्-टोकन्स् सत्रदत्तांशः च';

  @override
  String get backupCatOther => 'सेवाः फीड्स् च';

  @override
  String get backupCatOtherDesc => 'फीड्-विन्यासः, सूच्यः, सेवा-विकल्पाः च';

  @override
  String get logFile => 'लॉग्-फाइल्';

  @override
  String get logFileDesc =>
      'ऐप्-लॉग् साझां कुरु, अथवा Linux मध्ये तस्य मार्गं प्रतिलिख';

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
  String get logFileCopied => 'लॉग्-मार्गः प्रतिलिखितः';

  @override
  String get donateSheetTitle => 'Dartotsu रोचते वा?';

  @override
  String get donateSheetMessage =>
      'Dartotsu एकेन जनेन निर्मितं पालितं च। यदि तव उपयोगि अस्ति, विकासस्य साहाय्यं कुरु।';

  @override
  String get donateLater => 'पश्चात्';

  @override
  String get glassBackground => 'काच-पृष्ठभूमिः';

  @override
  String get glassBackgroundDesc =>
      'चित्र-लिङ्कः न दत्तः चेत् तव प्रोफाइल्-बैनर्';

  @override
  String get glassBackgroundHint => 'चित्र-लिङ्कः (तव बैनर्-कृते रिक्तं त्यज)';

  @override
  String get followCover => 'आवरणम् अनुसर';

  @override
  String get followCoverDesc =>
      'वर्णाः पृष्ठभूमिम् अनुसरन्ति, विवरणपृष्ठेषु आवरणम्';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'कार्ड्-शैली';

  @override
  String get cardStyleDesc => 'शीर्षकस्थानम्, आकारः, प्रगतिः, चिह्नानि च';

  @override
  String get customFont => 'अक्षरशैली';

  @override
  String get customFontDesc => 'मूलभूता, उपकरणात् फाइल्, अथवा Google Fonts';

  @override
  String get customFontError => 'सा अक्षर-फाइल् आनेतुं न शक्यते';

  @override
  String get googleFontError => 'तत् अक्षरं डाउनलोड् कर्तुं न शक्यते';

  @override
  String get yourFonts => 'तव अक्षराणि';

  @override
  String get addFontFile => 'अक्षर-फाइलं योजय…';

  @override
  String get browseGoogleFonts => 'Google Fonts अन्विष्य…';

  @override
  String get searchGoogleFonts => 'Google Fonts मध्ये अन्वेषणम्';

  @override
  String get defaultFont => 'मूलभूतम्';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'सिस्टम्-तः गतिशीलः वर्णः';

  @override
  String get jsonTheme => 'स्वनिर्मिता थीम्-फाइल्';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json तः सजीववर्णाः (स्वस्य स्क्रिप्ट् अथवा स्वयं सम्पादनम्)';

  @override
  String get themeMode => 'थीम्-मोडः';

  @override
  String get mode => 'मोडः';

  @override
  String get trackingService => 'अनुसरणसेवा';

  @override
  String get signOut => 'लॉगआउट्';

  @override
  String get signIn => 'लॉगिन';

  @override
  String get notSignedIn => 'लॉगिन् न कृतम्';

  @override
  String signOutOf(String service) {
    return '$service तः लॉगआउट् करोषि?';
  }

  @override
  String get checkForUpdates => 'अद्यतनानि परीक्षस्व';

  @override
  String get checkForUpdatesDesc => 'नूतने GitHub रिलीज्-काले सूचय';

  @override
  String get updateChannel => 'अद्यतन-चैनल्';

  @override
  String get channel => 'चैनल्';

  @override
  String get stable => 'स्थिरम्';

  @override
  String get preRelease => 'प्री-रिलीज्';

  @override
  String get alpha => 'अल्फा';

  @override
  String get checkNow => 'इदानीं परीक्षस्व';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'मूलभूतम्';

  @override
  String currentlyUsing(String value) {
    return 'सम्प्रति: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'मूलभूतम् (Cloudflare)';

  @override
  String get proxy => 'प्रॉक्सी';

  @override
  String get proxyProtocol => 'प्रकारः';

  @override
  String get proxyHost => 'होस्ट्';

  @override
  String get proxyPort => 'पोर्ट्';

  @override
  String get proxyUsername => 'उपयोक्तृनाम';

  @override
  String get proxyPassword => 'पासवर्ड्';

  @override
  String get optional => 'वैकल्पिकम्';

  @override
  String get clearCookies => 'कुकीज् मार्जय';

  @override
  String get clearCookiesDesc => 'सर्वाः रक्षिताः कुकीज् अपनय';

  @override
  String notImplementedArea(String area) {
    return '$area — शीघ्रम् आगच्छति';
  }

  @override
  String notImplementedService(String service) {
    return '$service इदानीं एतत् न समर्थयति।';
  }

  @override
  String get couldNotLoadResults => 'परिणामाः आनेतुं न शक्यन्ते';

  @override
  String get updateCheckFailed => 'अद्यतनानि परीक्षितुं न शक्यन्ते';

  @override
  String get highRefreshRate => 'उच्च रिफ्रेश्-दरः';

  @override
  String get highRefreshRateDesc =>
      'तव पटलः यावत् उच्चतमं रिफ्रेश्-दरं समर्थयति तावत् प्रयुङ्क्ष्व';

  @override
  String get imageSave => 'चित्रं रक्ष';

  @override
  String imageSavedTo(String path) {
    return '$path मध्ये रक्षितम्';
  }

  @override
  String get imageActionFailed => 'चित्रं डाउनलोड् कर्तुं न शक्यते';

  @override
  String get imageTitleCover => 'आवरणम्';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'बैनर्';

  @override
  String get imageTitleAvatar => 'प्रोफाइल्-चित्रम्';

  @override
  String get verifyTls => 'प्रमाणपत्राणि सत्यापय';

  @override
  String get verifyTlsDesc =>
      'अमान्य-HTTPS-प्रमाणपत्रयुक्तान् सर्वरान् निराकुरु। स्वहस्ताक्षरितं प्रयुञ्जानस्य स्रोतसः कृते एव निष्क्रियं कुरु';

  @override
  String get clearCookiesConfirm =>
      'सर्वाः रक्षिताः कुकीज् अपनयसि? एतेन केषुचित् स्रोतःसु लॉगआउट् भवेत्।';

  @override
  String get version => 'संस्करणम्';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'कोडः, समस्याः, रिलीज्स् च';

  @override
  String get discordDesc => 'समाजः साहाय्यं च';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'विकासम् आश्रय';

  @override
  String get contributors => 'योगदातारः';

  @override
  String get contributorsDesc => 'Dartotsu निर्मितवन्तः जनाः';

  @override
  String get contributorsLoadFailed => 'योगदातारः आनेतुं न शक्यन्ते';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu उपरि निर्मिताः परियोजनाः';

  @override
  String get forksEmpty => 'फोर्क् न प्राप्तः';

  @override
  String get sectionColors => 'वर्णाः';

  @override
  String get sectionDisplay => 'प्रदर्शनम्';

  @override
  String get sectionStyle => 'शैली';

  @override
  String get sectionCommunity => 'समाजः';

  @override
  String get sectionAppInfo => 'ऐप्-सूचना';

  @override
  String get sectionRequests => 'अनुरोधाः';

  @override
  String get sectionDnsProxy => 'DNS प्रॉक्सी च';

  @override
  String get onboardingBack => 'पृष्ठतः';

  @override
  String get onboardingNext => 'अग्रिमम्';

  @override
  String get onboardingSkip => 'त्यज';

  @override
  String get onboardingPaletteTitle => 'स्वकीयं कुरु';

  @override
  String get onboardingPaletteBody =>
      'वर्ण-पटलं चिनु। कार्ड्तः प्लेयर्पर्यन्तं सर्वे वर्णाः तम् अनुसरन्ति।';

  @override
  String get themeModeAuto => 'स्वयम्';

  @override
  String get themeModeLight => 'प्रकाशः';

  @override
  String get themeModeDark => 'अन्धकारः';

  @override
  String get onboardingSyncTitle => 'स्वस्य पुस्तकालयं समकालीनं कुरु';

  @override
  String get onboardingSyncBody =>
      'स्वस्य सूचीः प्रगतिं अङ्कान् च आनेतुं AniList मध्ये लॉगिन् कुरु। अथवा त्यज, अतिथिरूपेण पश्य।';

  @override
  String get onboardingOpenLinks =>
      'AniList भण्डारलिङ्कान् च Dartotsu मध्ये उद्घाटय';

  @override
  String get onboardingPermsTitle => 'अनुमतयः';

  @override
  String get onboardingPermsBody =>
      'डाउनलोड्स्, अद्यतनानि, सूचनाः च निर्विघ्नं चलितुं एताः इदानीं अनुमन्यस्व। पश्चात् सिस्टम्-सेटिंग्स् मध्ये परिवर्तयितुं शक्यते।';

  @override
  String get permNotifications => 'सूचनाः';

  @override
  String get permNotificationsDesc =>
      'डाउनलोड्-प्रगतिः, नूतनाः एपिसोड्स्, उत्तराणि च';

  @override
  String get permStorage => 'सर्वफाइल्-प्रवेशः';

  @override
  String get permStorageDesc => 'डाउनलोड्स् सार्वजनिके Dartotsu-फोल्डरे रक्ष';

  @override
  String get permInstall => 'अद्यतनानि स्थापय';

  @override
  String get permInstallDesc => 'Dartotsu स्वस्य अद्यतनानि स्वयं स्थापयतु';

  @override
  String get permBattery => 'अनियन्त्रितं बैटरी';

  @override
  String get permBatteryDesc => 'दीर्घाणि डाउनलोड्स् पृष्ठभूमौ चलन्तु';

  @override
  String get permGrant => 'अनुमन्यस्व';

  @override
  String get linkOpenInApp => 'Dartotsu मध्ये लिङ्कानि उद्घाटय';

  @override
  String get linkOpenInAppDesc => 'AniList भण्डारलिङ्काः ऐप् उद्घाटयन्तु';

  @override
  String get reviewsTitle => 'समीक्षाः';

  @override
  String get reviewsEmpty => 'समीक्षाः नास्ति';

  @override
  String get reviewsFailed => 'समीक्षाः आनेतुं न शक्यन्ते';

  @override
  String get reviewHelpfulQuestion => 'इयं समीक्षा उपयोगिनी आसीत् वा?';

  @override
  String get reviewVoteFailed => 'तव मतं रक्षितुं न शक्यते';

  @override
  String reviewHelpful(int n, int total) {
    return '$total मध्ये $n जनाः एतत् उपयोगि अमन्यन्त';
  }

  @override
  String get calendarTitle => 'प्रसारण-समयसूची';

  @override
  String get calendarToday => 'अद्य';

  @override
  String get calendarEmpty => 'अस्मिन् दिने किमपि न प्रसार्यते';

  @override
  String get calendarFailed => 'समयसूची आनेतुं न शक्यते';

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
    return 'एपिसोड् $n';
  }

  @override
  String get shareAnalytics => 'निनाम उपयोग-दत्तांशं साझां कुरु';

  @override
  String get shareAnalyticsDesc =>
      'निनाम उपयोक्तृ-गणना क्रैश्-प्रतिवेदनानि च। खातं व्यक्तिगतदत्तांशः च नास्ति';

  @override
  String get linkOpenAnilist => 'AniList लिङ्कान् Dartotsu मध्ये उद्घाटय';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co लिङ्काः ऐप् उद्घाटयन्तु इति लिङ्क्-सञ्चालनं सक्रियं कुरु';

  @override
  String get linkSettingsFailed => 'सिस्टम्-सेटिंग्स् उद्घाटयितुं न शक्यन्ते';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'तव Discord-प्रोफाइल् मध्ये त्वं किं करोषि इति दर्शय। तव Discord-टोकन् आवश्यकम्।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'तव Discord-प्रोफाइल् मध्ये त्वं किं करोषि इति दर्शय। Discord डेस्कटॉप्-ऐप् चलनीयम्।';

  @override
  String get discordBrowsing => 'ब्राउज़िङ्-क्रियां दर्शय';

  @override
  String get discordBrowsingDesc =>
      'यत् पश्यसि पठसि वा तत् केवलं न, यत् टैब्, पृष्ठं प्रोफाइल् वा पश्यसि तदपि दर्शय।';

  @override
  String get discordLookHeader => 'उपस्थिति-रूपम्';

  @override
  String get discordActivityType => 'क्रिया-प्रकारः';

  @override
  String get discordActivityTypeDesc =>
      'Discord कथं लिखति: \"Watching …\" अथवा \"Playing …\"। स्वयम् इत्यत्र अनिमे-कृते Watching, अन्येषां कृते Playing।';

  @override
  String get discordWatching => 'पश्यति';

  @override
  String get discordPlaying => 'क्रीडति';

  @override
  String get discordCovers => 'आवरणानि दर्शय';

  @override
  String get discordCoversDesc => 'कार्ड्-उपरि आवरण-चित्रं Dartotsu-चिह्नं च।';

  @override
  String get discordTimer => 'टाइमर् दर्शय';

  @override
  String get discordTimerDesc => 'शीर्षकस्य अधः व्यतीतः अथवा शेषः समयः।';

  @override
  String get discordButtons => 'बटन्स् दर्शय';

  @override
  String get discordButtonsDesc =>
      '\"अनिमे / मांगा पश्य\" \"Dartotsu उद्घाटय\" च बटन्स्।';

  @override
  String get discordHideTitles => 'शीर्षकाणि गोपय';

  @override
  String get discordHideTitlesDesc =>
      'अनिमे-मांगा-नामानि (आवरणं लिङ्कं च सह) \"किञ्चित् गुप्तम्\" इत्यनेन स्थापय।';

  @override
  String get discordConnectionHeader => 'संयोजनम्';

  @override
  String get listSearchHint => 'एतस्यां सूच्यां अन्विष्य';

  @override
  String get listSort => 'क्रमय';

  @override
  String get listFilter => 'छानय';

  @override
  String get listRandom => 'यादृच्छिकं शीर्षकम्';

  @override
  String get listReverse => 'क्रमं विपरीतं कुरु';

  @override
  String get listSortDefault => 'सूची-क्रमः';

  @override
  String get listSortScore => 'तव अङ्कः';

  @override
  String get listSortTitle => 'शीर्षकम्';

  @override
  String get listSortUpdated => 'अन्तिम-अद्यतनम्';

  @override
  String get listSortProgress => 'प्रगतिः';

  @override
  String get listSortReleased => 'प्रकाशन-दिनाङ्कः';

  @override
  String get listSortAverage => 'मध्यमाङ्कः';

  @override
  String get listFilterFormat => 'प्रारूपम्';

  @override
  String get listFilterStatus => 'स्थितिः';

  @override
  String get listFilterGenres => 'विधाः';

  @override
  String get listFilterClear => 'छानकानि मार्जय';

  @override
  String get listNoMatches => 'अस्यां सूच्यां किमपि न मिलति';

  @override
  String get discordLogin => 'Discord मध्ये लॉगिन';

  @override
  String get discordToken => 'Discord टोकन्';

  @override
  String get discordTokenSaved =>
      'रक्षितम्। परिवर्तनार्थं स्पृश, अपनयनार्थं दीर्घं नुद।';

  @override
  String get discordTokenNotSet => 'न स्थापितम्। योजनार्थं स्पृश।';

  @override
  String get discordTokenSavedSnack => 'Discord टोकन् रक्षितम्';

  @override
  String get discordTokenRemovedSnack => 'Discord टोकन् अपनीतम्';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'सक्रिय · रूपपरिवर्तनार्थं स्पृश';

  @override
  String get discordRichPresenceRowOff =>
      'तव Discord-प्रोफाइल् मध्ये त्वं किं करोषि इति दर्शय';

  @override
  String get loginCancelled => 'लॉगिन् रद्दम्';

  @override
  String get invalidToken => 'अमान्यं टोकन्';

  @override
  String loginFailed(String error) {
    return 'लॉगिन् विफलम्: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList लॉगिन् विफलम्';

  @override
  String get kitsuLoginFailed =>
      'Kitsu लॉगिन् विफलम्। ईमेल् पासवर्ड् च परीक्षस्व।';

  @override
  String get kitsuLoginTitle => 'Kitsu मध्ये लॉगिन';

  @override
  String get emailOrUsername => 'ईमेल् अथवा उपयोक्तृनाम';

  @override
  String get password => 'पासवर्ड्';

  @override
  String get kitsuProfile => 'Kitsu प्रोफाइल्';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka लॉगिन् विफलम्';

  @override
  String get mangaBakaProfile => 'MangaBaka प्रोफाइल्';

  @override
  String get refreshFromMangaBaka => 'MangaBaka तः नवीकुरु';

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
  String get artistsLabel => 'कलाकाराः';

  @override
  String get authorsLabel => 'लेखकाः';

  @override
  String get publishersLabel => 'प्रकाशकाः';

  @override
  String get licensedLabel => 'अनुज्ञापितम्';

  @override
  String get contentRatingLabel => 'आयु-श्रेणी';

  @override
  String get yesLabel => 'आम्';

  @override
  String get noLabel => 'न';

  @override
  String get ratingSteps => 'अङ्क-सोपानानि';

  @override
  String get hideNsfw => 'NSFW गोपय';

  @override
  String get hideNsfwDesc =>
      'वयस्क-शीर्षकाणि फीड्स्-अन्वेषणाभ्यां दूरे स्थापय, तव वयस्क-प्रविष्टीः \"गुप्त मीडिया\" मध्ये सूचय।';

  @override
  String get kitsuAccountOptions => 'Kitsu खाता-विकल्पाः';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka खाता-विकल्पाः';

  @override
  String get couldNotUpdateKitsuSettings =>
      'तव Kitsu सेटिंग्स् अद्यतनितुं न शक्यन्ते';

  @override
  String get titleCanonical => 'मानकम्';

  @override
  String get titleRomanized => 'रोमन-लिप्यन्तरितम्';

  @override
  String get titleLocalized => 'स्थानीकृतम्';

  @override
  String get ratingSystem => 'अङ्कन-पद्धतिः';

  @override
  String get ratingSimple => 'सरला (३ मुखानि)';

  @override
  String get ratingRegular => 'सामान्या (५ तारकाः)';

  @override
  String get ratingAdvanced => 'उन्नता (१० अङ्काः)';

  @override
  String get contentFilter => 'सामग्री-छानकम्';

  @override
  String get contentSfw => 'केवलं सुरक्षितम्';

  @override
  String get contentSometimes => 'अन्वेषणे वयस्क-सामग्री';

  @override
  String get contentEverywhere => 'सर्वत्र वयस्क-सामग्री';

  @override
  String get shareToGlobal => 'वैश्विक-फीड् मध्ये साझां कुरु';

  @override
  String get shareToGlobalDesc =>
      'तव क्रिया Kitsu-वैश्विक-फीड् मध्ये दृश्यताम्।';

  @override
  String get memberSince => 'सदस्यः कालतः';

  @override
  String get location => 'स्थानम्';

  @override
  String get accountType => 'खाता-प्रकारः';

  @override
  String get accountSupporter => 'समर्थकः';

  @override
  String get accountFree => 'निःशुल्कम्';

  @override
  String get accountDetails => 'खाता-विवरणम्';

  @override
  String get refreshFromKitsu => 'Kitsu तः नवीकुरु';

  @override
  String get simklReadOnly => 'Simkl केवल-पठन-प्रवेशं दत्तवान्';

  @override
  String get incognitoEditsBlocked => 'गुप्तमोडः: सूची-सम्पादनानि निरुद्धानि';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'गुप्तमोडः: प्रगतिः न रक्षिता';

  @override
  String progressSet(int progress) {
    return 'प्रगतिः $progress इति स्थापिता';
  }

  @override
  String removedFromList(String title) {
    return '$title तव सूचीतः अपनीतम्';
  }

  @override
  String get following => 'अनुसरन्';

  @override
  String get homeSections => 'मुख्यपृष्ठ-विभागाः';

  @override
  String get homeSectionsHint =>
      'क्रमपरिवर्तनार्थं कर्ष। गुप्ताः विभागाः कदापि न आनीयन्ते।';

  @override
  String get customListDeleteFailed => 'स्वनिर्मितां सूचीं मार्जयितुं न शक्यते';

  @override
  String get customListsSaveFailed => 'स्वनिर्मिताः सूचीः रक्षितुं न शक्यन्ते';

  @override
  String get customListsSaved => 'स्वनिर्मिताः सूचीः रक्षिताः';

  @override
  String get listName => 'सूची-नाम';

  @override
  String get addList => 'सूचीं योजय';

  @override
  String voiceActorsIn(String name) {
    return 'स्वर-कलाकाराः · $name';
  }

  @override
  String get animeAppearances => 'अनिमे-उपस्थितयः';

  @override
  String get mangaAppearances => 'मांगा-उपस्थितयः';

  @override
  String get voicedCharacters => 'स्वरदत्ताः पात्राणि';

  @override
  String get animeCredits => 'अनिमे-श्रेयः';

  @override
  String get mangaCredits => 'मांगा-श्रेयः';

  @override
  String get mainProductions => 'मुख्य-निर्मितयः';

  @override
  String get otherWorks => 'अन्ये कार्यक्रमाः';

  @override
  String get prequelSequel => 'पूर्वभागः उत्तरभागः च';

  @override
  String get previousSeason => 'पूर्व-ऋतुः';

  @override
  String get thisSeason => 'अयम् ऋतुः';

  @override
  String get nextSeason => 'अग्रिम-ऋतुः';

  @override
  String get voiceRoles => 'स्वर-भूमिकाः';

  @override
  String get staffPositions => 'दल-पदानि';

  @override
  String get mangaWorks => 'मांगा-कृतयः';

  @override
  String get malProfile => 'MyAnimeList प्रोफाइल्';

  @override
  String get refreshFromMal => 'MyAnimeList तः नवीकुरु';

  @override
  String get repullProfileCounts => 'तव प्रोफाइल् गणनाः च पुनः आनय';

  @override
  String get refreshed => 'नवीकृतम्';

  @override
  String get simklProfile => 'Simkl प्रोफाइल्';

  @override
  String get refreshFromSimkl => 'Simkl तः नवीकुरु';

  @override
  String get repullProfileLibrary => 'तव प्रोफाइल् पुस्तकालयं च पुनः आनय';

  @override
  String get simklSignInToSearch => 'अन्वेषणार्थं Simkl मध्ये लॉगिन् कुरु';

  @override
  String get dropRate => 'त्याग-दरः';

  @override
  String get simklAttribution =>
      'दत्तांशः चित्राणि च Simkl-प्रदत्तानि। Simkl मध्ये पश्य';

  @override
  String get onHold => 'स्थगितम्';

  @override
  String get scoredBy => 'अङ्कितवन्तः';

  @override
  String get planToWatch => 'द्रष्टुम् अभिप्रेतम्';

  @override
  String get planToRead => 'पठितुम् अभिप्रेतम्';

  @override
  String get timesRewatched => 'पुनर्दृष्टवारम्';

  @override
  String get timesReread => 'पुनःपठितवारम्';

  @override
  String get comments => 'टिप्पण्यः';

  @override
  String get moviesAndSeries => 'चलचित्राणि धारावाहिकाः च';

  @override
  String get trackingOnly => 'केवलम् अनुसरणम्';

  @override
  String get signedIn => 'लॉगिन् कृतम्';

  @override
  String get searchLanguage => 'अन्वेषण-भाषा';

  @override
  String get savedToList => 'तव सूचीयां रक्षितम्';

  @override
  String get removedFromYourList => 'तव सूचीतः अपनीतम्';

  @override
  String get retry => 'पुनः यत्नं कुरु';

  @override
  String get synopsis => 'सारांशः';

  @override
  String get details => 'विवरणम्';

  @override
  String get addToList => 'सूचीयां योजय';

  @override
  String get trailer => 'ट्रेलर्';

  @override
  String get titleCopied => 'शीर्षकं प्रतिलिखितम्';

  @override
  String get linkCopied => 'लिङ्कः प्रतिलिखितः';

  @override
  String get watchTrailer => 'ट्रेलर् पश्य';

  @override
  String get copyTitle => 'शीर्षकं प्रतिलिख';

  @override
  String get copyLink => 'लिङ्कं प्रतिलिख';

  @override
  String get openInBrowser => 'ब्राउज़र् मध्ये उद्घाटय';

  @override
  String viewOnSource(String source) {
    return '$source मध्ये पश्य';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'एपिसोड् $ep $time मध्ये प्रसार्यते';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'अग्रिम एपिसोड् $time मध्ये';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'अध्यायः $chapter प्रायः $time मध्ये आगमिष्यति';
  }

  @override
  String get logPathCopied => 'लॉग्-फाइल्-मार्गः क्लिपबोर्ड् मध्ये प्रतिलिखितः';

  @override
  String get animeSource => 'अनिमे-स्रोतः';

  @override
  String get mangaSource => 'मांगा-स्रोतः';

  @override
  String get popular => 'लोकप्रियम्';

  @override
  String get latest => 'नवीनतमम्';

  @override
  String get saved => 'रक्षितम्';

  @override
  String get nothingMatched => 'किमपि न मिलितम्';

  @override
  String get nothingSavedFromSource => 'अस्मात् स्रोतसः किमपि न रक्षितम्';

  @override
  String get sourceReturnedNothing => 'अयं स्रोतः किमपि न प्रत्यर्पयत्';

  @override
  String get checkConnectionOrSource =>
      'स्वस्य संयोजनं परीक्षस्व अथवा अन्यं स्रोतः प्रयत्नं कुरु।';

  @override
  String get tryDifferentSearch => 'अन्यं अन्वेषण-पदं प्रयत्नं कुरु।';

  @override
  String get savedTitlesAppearHere =>
      'यानि शीर्षकाणि सूचीयां योजयसि तानि अत्र दृश्यन्ते।';

  @override
  String get tryOtherFeed => 'अन्यं फीड् अथवा अन्वेषणं प्रयत्नं कुरु।';

  @override
  String searchSource(String source) {
    return '$source मध्ये अन्वेषणम्';
  }

  @override
  String get animeExtensions => 'अनिमे-एक्स्टेंशन्स्';

  @override
  String get mangaExtensions => 'मांगा-एक्स्टेंशन्स्';

  @override
  String get nothingHereYet => 'अत्र अद्यापि किमपि नास्ति';

  @override
  String get savedOnDeviceUntilLogin =>
      'यावत् त्वं न करोषि तावत् अधः सर्वं अस्मिन् उपकरणे रक्षितम्।';

  @override
  String get yourProfile => 'तव प्रोफाइल्';

  @override
  String get activity => 'क्रिया';

  @override
  String get extensions => 'एक्स्टेंशन्स्';

  @override
  String get logOut => 'लॉगआउट्';

  @override
  String get logIn => 'लॉगिन';

  @override
  String get logOutConfirm => 'निश्चितं लॉगआउट् कर्तुम् इच्छसि वा?';

  @override
  String get incognitoMode => 'गुप्तमोडः';

  @override
  String get alsoBlockListEdits => 'सूची-सम्पादनानि अपि निरुन्धि';

  @override
  String get offlineMode => 'ऑफलाइन्-मोडः';

  @override
  String get switchService => 'सेवां परिवर्तय';

  @override
  String logOutOf(String name) {
    return '$name तः लॉगआउट्';
  }

  @override
  String get loggedIn => 'लॉगिन् कृतम्';

  @override
  String get notifications => 'सूचनाः';

  @override
  String get nothingNew => 'किमपि नूतनं नास्ति';

  @override
  String get thisWeek => 'अस्मिन् सप्ताहे';

  @override
  String get listOnly => 'सूची केवलम्';

  @override
  String get filter => 'छानय';

  @override
  String get searchResults => 'अन्वेषण-परिणामाः';

  @override
  String get recentSearches => 'अद्यतन-अन्वेषणानि';

  @override
  String get searchOrSetFilter => 'अन्विष्य अथवा छानकं स्थापय';

  @override
  String get filters => 'छानकानि';

  @override
  String get showLess => 'न्यूनं दर्शय';

  @override
  String get showAll => 'सर्वं दर्शय';

  @override
  String get apply => 'प्रयुङ्क्ष्व';

  @override
  String get preview => 'पूर्वावलोकनम्';

  @override
  String get preset => 'प्रीसेट्';

  @override
  String get cardNormal => 'सामान्यम्';

  @override
  String get cardOnCard => 'कार्ड्-उपरि';

  @override
  String get cardInCard => 'कार्ड्-अन्तः';

  @override
  String get size => 'आकारः';

  @override
  String get cardWidth => 'कार्ड्-विस्तारः';

  @override
  String get compact => 'संक्षिप्तम्';

  @override
  String get coverAndTitleOnly => 'केवलम् आवरणं शीर्षकं च';

  @override
  String get titleLines => 'शीर्षक-पङ्क्तयः';

  @override
  String get shape => 'आकृतिः';

  @override
  String get posterShape => 'पोस्टर्-आकृतिः';

  @override
  String get cornerRadius => 'कोण-वक्रता';

  @override
  String get off => 'निष्क्रिय';

  @override
  String get topLeft => 'उपरि वामतः';

  @override
  String get topRight => 'उपरि दक्षिणतः';

  @override
  String get bottomLeft => 'अधः वामतः';

  @override
  String get bottomRight => 'अधः दक्षिणतः';

  @override
  String get overlays => 'आवरणानि';

  @override
  String get progressCount => 'प्रगतिः / गणना';

  @override
  String get pill => 'गुटिका';

  @override
  String get bar => 'पट्टिका';

  @override
  String get outside => 'बहिः';

  @override
  String get scoreBadge => 'अङ्क-चिह्नम्';

  @override
  String get airingDot => 'प्रसारण-बिन्दुः';

  @override
  String get updateAvailable => 'अद्यतनम् उपलब्धम्';

  @override
  String get notInstalled => 'न स्थापितम्';

  @override
  String get done => 'समाप्तम्';

  @override
  String get searchOrEnterUrl => 'अन्विष्य अथवा URL लिख';

  @override
  String get refresh => 'नवीकुरु';

  @override
  String get share => 'साझां कुरु';

  @override
  String get characters => 'पात्राणि';

  @override
  String get staff => 'दलम्';

  @override
  String get readMore => 'अधिकं पठ';

  @override
  String get couldNotLoadList => 'सूची आनेतुं न शक्यते';

  @override
  String get logInToFavourite => 'प्रियाणि योजयितुं लॉगिन् कुरु';

  @override
  String get alsoKnownAs => 'अपरनाम';

  @override
  String get hideSpoilerNames => 'स्पॉयलर्-नामानि गोपय';

  @override
  String get showSpoilerNames => 'स्पॉयलर्-नामानि दर्शय';

  @override
  String get favourited => 'प्रियेषु योजितम्';

  @override
  String get favourite => 'प्रियम्';

  @override
  String get couldNotOpenTitle => 'इदं शीर्षकम् उद्घाटयितुं न शक्यते';

  @override
  String get nobodyHereYet => 'अत्र अद्यापि कोऽपि नास्ति';

  @override
  String get noMatches => 'मेलनं नास्ति';

  @override
  String get gridView => 'जालक-दृश्यम्';

  @override
  String get fullWidth => 'पूर्ण-विस्तारः';

  @override
  String get userNotFound => 'उपयोक्ता न प्राप्तः';

  @override
  String get couldNotUpdateFollow => 'अनुसरणं अद्यतनितुं न शक्यते';

  @override
  String followedUser(String name) {
    return '$name अनुसृतः';
  }

  @override
  String unfollowedUser(String name) {
    return '$name अननुसृतः';
  }

  @override
  String get messages => 'सन्देशाः';

  @override
  String get logInToSeeMessages => 'स्वसन्देशान् द्रष्टुं लॉगिन् कुरु';

  @override
  String get editActivity => 'क्रियां सम्पादय';

  @override
  String get newActivity => 'नूतना क्रिया';

  @override
  String get editMessage => 'सन्देशं सम्पादय';

  @override
  String get writeMessage => 'सन्देशं लिख';

  @override
  String get editReply => 'उत्तरं सम्पादय';

  @override
  String get posted => 'प्रकाशितम्';

  @override
  String get couldNotPost => 'प्रकाशयितुं न शक्यते';

  @override
  String get nothingToPreview => 'पूर्वावलोकनार्थं किमपि नास्ति';

  @override
  String get writeSomethingHint =>
      'किञ्चित् लिख… अत्र AniList markdown कार्यं करोति';

  @override
  String get privateMessage => 'व्यक्तिगत-सन्देशः';

  @override
  String get post => 'प्रकाशय';

  @override
  String get nothingHere => 'अत्र किमपि नास्ति';

  @override
  String get noAnimeProgress => 'अनिमे-प्रगतिः नास्ति';

  @override
  String get noMangaProgress => 'मांगा-प्रगतिः नास्ति';

  @override
  String get noMessages => 'सन्देशाः न सन्ति';

  @override
  String get writeMessageHint => 'सन्देशं लिख…';

  @override
  String get shareSomethingHint => 'किञ्चित् साझां कुरु…';

  @override
  String get all => 'सर्वम्';

  @override
  String get anime => 'अनिमे';

  @override
  String get manga => 'मांगा';

  @override
  String get count => 'गणना';

  @override
  String get hoursWatched => 'दृष्टाः होराः';

  @override
  String get chaptersRead => 'पठिताः अध्यायाः';

  @override
  String get meanScore => 'मध्यमाङ्कः';

  @override
  String get noStatsYet => 'सांख्यिकी अद्यापि नास्ति';

  @override
  String get totalEntries => 'कुल-प्रविष्टयः';

  @override
  String get episodesWatched => 'दृष्टाः एपिसोड्स्';

  @override
  String get daysWatched => 'दृष्टानि दिनानि';

  @override
  String get volumesRead => 'पठिताः खण्डाः';

  @override
  String get standardDeviation => 'मानक-विचलनम्';

  @override
  String get showMore => 'अधिकं दर्शयतु';

  @override
  String get followsYou => 'त्वाम् अनुसरति';

  @override
  String get nobodyYet => 'अद्यापि कोऽपि नास्ति';

  @override
  String get logInToLike => 'रोचितुं लॉगिन् कुरु';

  @override
  String get failedToLikeActivity => 'क्रियां रोचयितुं न शक्यते';

  @override
  String get deleteActivityConfirm => 'क्रियां मार्जयसि?';

  @override
  String get deletedActivity => 'क्रिया मार्जिता';

  @override
  String get failedToDeleteActivity => 'क्रियां मार्जयितुं न शक्यते';

  @override
  String get subscribed => 'सदस्यता गृहीता';

  @override
  String get unsubscribed => 'सदस्यता निरस्ता';

  @override
  String get failedToUpdateSubscription => 'सदस्यतां अद्यतनितुं न शक्यते';

  @override
  String get edit => 'सम्पादय';

  @override
  String get delete => 'मार्जय';

  @override
  String get likedBy => 'रोचितवन्तः';

  @override
  String get follow => 'अनुसर';

  @override
  String get nameCopied => 'नाम प्रतिलिखितम्';

  @override
  String get followsEachOther => 'परस्परम् अनुसरतः';

  @override
  String get unfollow => 'अननुसर';

  @override
  String get userIdCopied => 'उपयोक्तृपरिचयः प्रतिलिपीकृतः';

  @override
  String get shareProfile => 'प्रोफाइल् साझां कुरु';

  @override
  String get copyUserId => 'उपयोक्तृपरिचयं प्रतिलिपीकुरुत';

  @override
  String get failedToDelete => 'मार्जनं विफलम्';

  @override
  String get failedToLike => 'रोचनं विफलम्';

  @override
  String get replies => 'उत्तराणि';

  @override
  String get reply => 'उत्तरय';

  @override
  String get noRepliesYet => 'उत्तराणि अद्यापि न सन्ति';

  @override
  String get favouriteAnime => 'प्रियाणि अनिमे';

  @override
  String get favouriteManga => 'प्रियाणि मांगा';

  @override
  String get favouriteCharacters => 'प्रियाणि पात्राणि';

  @override
  String get favouriteStaff => 'प्रियं दलम्';

  @override
  String get favouriteStudios => 'प्रियाणि स्टूडियो';

  @override
  String get noFavouritesYet => 'प्रियाणि अद्यापि न सन्ति';

  @override
  String get yourStory => 'तव कथा';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड् मध्ये प्रतिलिखितम्';

  @override
  String get justNow => 'अधुना एव';

  @override
  String get openImage => 'चित्रम् उद्घाटय';

  @override
  String get hideSpoiler => 'स्पॉयलर् गोपय';

  @override
  String get showSpoiler => 'स्पॉयलर् दर्शय';

  @override
  String get status => 'स्थितिः';

  @override
  String get score => 'अङ्कः';

  @override
  String get started => 'आरब्धम्';

  @override
  String get completed => 'समाप्तम्';

  @override
  String get private => 'व्यक्तिगतम्';

  @override
  String get hideFromStatusLists => 'स्थिति-सूचीभ्यः गोपय';

  @override
  String get totalRepeats => 'कुल-पुनरावृत्तयः';

  @override
  String get other => 'अन्यत्';

  @override
  String get customLists => 'स्वनिर्मिताः सूचयः';

  @override
  String get activeDays => 'सक्रियानि दिनानि';

  @override
  String get longestStreak => 'दीर्घतमा शृङ्खला';

  @override
  String get currentStreak => 'वर्तमाना शृङ्खला';

  @override
  String get tapOrHoverDay => 'दिनं स्पृश अथवा तत्र सूचकं स्थापय';

  @override
  String get less => 'न्यूनम्';

  @override
  String get more => 'अधिकम्';

  @override
  String epIn(int ep, String time) {
    return 'एप. $ep $time मध्ये';
  }

  @override
  String get sectionLoading => 'आनीयते';

  @override
  String get querySize => 'क्वेरी-आकारः';

  @override
  String get querySizeDesc =>
      'एका बृहती क्वेरी सर्वाः पङ्क्तीः (पूर्णं प्रोफाइल् च) एकेनैव अनुरोधेन आनयति। विभक्ताः क्वेरीः प्रतिपङ्क्ति अथवा प्रोफाइल्-भागं लघु अनुरोधं प्रेषयन्ति: प्रत्येकं शीघ्रम्, भागाः आगच्छन्तः दृश्यन्ते।';

  @override
  String get oneBig => 'एका बृहती';

  @override
  String get split => 'विभक्ता';

  @override
  String get sectionSocial => 'सामाजिकम्';

  @override
  String get systemNotifications => 'सिस्टम्-सूचनाः';

  @override
  String get feedLayout => 'फीड्-विन्यासः';

  @override
  String sectionsShown(int shown, int total) {
    return '$total मध्ये $shown दृश्यन्ते — चयनाय क्रमाय च स्पृश';
  }

  @override
  String labelSections(String label) {
    return '$label विभागाः';
  }

  @override
  String get accountOptions => 'खाता-विकल्पाः';

  @override
  String get anilistAccountOptions => 'AniList खाता-विकल्पाः';

  @override
  String get sectionPrivacy => 'गोपनीयता';

  @override
  String get hidePrivateEntries => 'व्यक्तिगत-प्रविष्टीः गोपय';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList मध्ये व्यक्तिगतत्वेन चिह्निताः प्रविष्टीः फीड्तः दूरे स्थापय';

  @override
  String get anilistExcludeList => 'स्वसूचीं वर्जयतु';

  @override
  String get anilistExcludeListDesc =>
      'भवतः AniList मध्ये विद्यमानानि शीर्षकाणि एनिमे-मङ्गा-पृष्ठेभ्यः दूरे स्थापयतु';

  @override
  String get anilistProfile => 'AniList प्रोफाइल्';

  @override
  String get refreshFromAnilist => 'AniList तः नवीकुरु';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList सेटिंग्स् अद्यतनितुं न शक्यन्ते';

  @override
  String get sectionNames => 'नामानि';

  @override
  String get titleLanguage => 'शीर्षक-भाषा';

  @override
  String get titleLanguageDesc =>
      'शीर्षकाणि सर्वत्र कथं लिख्यन्ते, यथा Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'दल-पात्र-नामानि';

  @override
  String get sectionLists => 'सूचयः';

  @override
  String get scoreFormat => 'अङ्क-प्रारूपम्';

  @override
  String get sortListsBy => 'सूचीः एतेन क्रमय';

  @override
  String labelCustomLists(String label) {
    return '$label स्वनिर्मिताः सूचयः';
  }

  @override
  String customListsCount(int count) {
    return '$count सूचयः — योजनार्थं अपनयनार्थं वा स्पृश';
  }

  @override
  String get mergeActivities => 'क्रियाः संयोजय';

  @override
  String minutesCount(int count) {
    return '$count मिनिट्';
  }

  @override
  String get timezone => 'समय-मण्डलम्';

  @override
  String get notSet => 'न स्थापितम्';

  @override
  String get airingNotifications => 'प्रसारण-सूचनाः';

  @override
  String get airingNotificationsDesc =>
      'अनुसृतस्य कार्यक्रमस्य एपिसोड् प्रसारिते सति सूचना प्राप्नुहि';

  @override
  String get displayAdultContent => 'वयस्क-सामग्रीं दर्शय';

  @override
  String get displayAdultContentDesc =>
      'ब्राउज़्, अन्वेषण-फीड्स् च मध्ये 18+ शीर्षकाणि अन्तर्भावय';

  @override
  String get restrictMessages => 'अनुसृतेभ्यः एव सन्देशाः';

  @override
  String get restrictMessagesDesc =>
      'यान् अनुसरसि ते एव त्वां सन्देशं प्रेषयितुं शक्नुवन्ति';

  @override
  String get sectionServices => 'सेवाः';

  @override
  String get novel => 'नॉवल्';

  @override
  String labelService(String label) {
    return '$label सेवा';
  }

  @override
  String nameSettings(String name) {
    return '$name सेटिंग्स्';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name एक्स्टेंशन्-सेतोः विकल्पाः';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name आरब्धुं न शक्तम्: $error';
  }

  @override
  String get importLists => 'सूचीः आनय';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi अथवा Kotatsu बैकप् तः';

  @override
  String get exportLists => 'सूचीः निर्यातय';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon अथवा Kotatsu बैकप् प्रति';

  @override
  String get sectionBrowse => 'ब्राउज़्';

  @override
  String get readingTab => 'पठन-टैब्';

  @override
  String get readingTabDesc => 'तृतीयः टैब् कानि एक्स्टेंशन्स् दर्शयति';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'मूलभूतः फीड्';

  @override
  String get defaultFeedDesc => 'स्रोतः कया सूच्या उद्घाट्यते';

  @override
  String noServiceSupports(String type) {
    return 'कापि सेवा $type न समर्थयति';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed मध्ये $loaded स्रोतांसि आनीयन्ते';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'कापि एक्स्टेंशन्-सेवा अत्र $type न समर्थयति।';
  }

  @override
  String get loadDataFrom => 'दत्तांशम् अत्र आनय';

  @override
  String noInstalledSourcesYet(String type) {
    return '$type स्रोतांसि अद्यापि न स्थापितानि।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name कृते एक्स्टेंशन् न स्थापितम्';
  }

  @override
  String get thisSource => 'अयं स्रोतः';

  @override
  String failedToAddRepository(String error) {
    return 'भण्डारं योजयितुं न शक्तम्: $error';
  }

  @override
  String installedType(String type) {
    return 'स्थापितानि $type';
  }

  @override
  String availableType(String type) {
    return 'उपलब्धानि $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'स्थापिताः $type एक्स्टेंशन्स् न सन्ति';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'उपलब्धाः $type एक्स्टेंशन्स् न सन्ति';
  }

  @override
  String get nothingToShowYet => 'दर्शयितुं किमपि नास्ति';

  @override
  String get addTitlesHint => 'स्वसूचीयां शीर्षकाणि योजय, तानि अत्र दृश्यन्ते।';

  @override
  String get couldntLoad => 'आनेतुं न शक्तम्';

  @override
  String get progressStyleHint =>
      'गुटिका पट्टिका च पोस्टर् उपरि तिष्ठतः; \"बहिः\" समानां गणनां सरलपाठरूपेण दर्शयति — एकं चिनु।';

  @override
  String get nixManagedUpdate =>
      'इदं बिल्ड् Nix द्वारा प्रबन्धितम् — अत्र अद्यतनस्य स्थाने स्वस्य flake मध्ये \"nix flake update\" चालय पुनर्निर्मिणु च';

  @override
  String autoUpdateFailed(String error) {
    return 'स्वयंचालितम् अद्यतनं विफलम् ($error) — डाउनलोड्-पृष्ठम् उद्घाट्यते';
  }

  @override
  String get unknownPreference => 'अज्ञातं प्राधान्यम्';

  @override
  String unsupportedPreferenceType(String type) {
    return 'असमर्थितं प्राधान्य-प्रकारः $type';
  }

  @override
  String get notYetReleased => 'अद्यापि न प्रकाशितम्';

  @override
  String get notStarted => 'न आरब्धम्';

  @override
  String get country => 'देशः';

  @override
  String get sort => 'क्रमय';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon अथवा Kotatsu बैकप् चिनु';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi अथवा Kotatsu तः पुस्तकालयम् आनय। शीर्षकाणि, आवरणानि, प्रगतिः, वर्गाः च रक्ष्यन्ते।';

  @override
  String get chooseBackupFile => 'बैकप्-फाइलं चिनु';

  @override
  String importAnimeCount(int count) {
    return '$count अनिमे आनय';
  }

  @override
  String importMangaCount(int count) {
    return '$count मांगा आनय';
  }

  @override
  String get mergeWithExisting => 'विद्यमानाभिः सूचीभिः सह संयोजय';

  @override
  String get mergeWithExistingDesc =>
      'यत् अस्ति तत् रक्षति; निष्क्रिये समानशीर्षकाणि प्रतिस्थापयति';

  @override
  String get chooseAnother => 'अन्यत् चिनु';

  @override
  String get import => 'आनय';

  @override
  String animeCount(int count) {
    return '$count अनिमे';
  }

  @override
  String mangaCount(int count) {
    return '$count मांगा';
  }

  @override
  String get chooseSaveLocation => 'बैकप् कुत्र रक्षितव्यम् इति चिनु';

  @override
  String savedPath(String path) {
    return '$path मध्ये रक्षितम्';
  }

  @override
  String exportFailed(String error) {
    return 'निर्यातः विफलः: $error';
  }

  @override
  String get nothingInLocalLists => 'तव स्थानीय-सूचीषु अद्यापि किमपि नास्ति।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'तव स्थानीय-सूचीभ्यः $anime अनिमे $manga मांगा च निर्यात्यन्ते। Kotatsu केवलं मांगा समर्थयति।';
  }

  @override
  String get saveToFolder => 'फोल्डरे रक्ष';

  @override
  String get formatAnimeManga => 'अनिमे मांगा च · .tachibk';

  @override
  String get formatMangaTachibk => 'केवलं मांगा · .tachibk';

  @override
  String get formatMangaZip => 'केवलं मांगा · .zip';

  @override
  String get genres => 'विधाः';

  @override
  String get relations => 'सम्बन्धाः';

  @override
  String get recommendations => 'अनुशंसाः';

  @override
  String get openings => 'आरम्भगीतानि';

  @override
  String get endings => 'समापनगीतानि';

  @override
  String get background => 'पृष्ठभूमिः';

  @override
  String get links => 'लिङ्कानि';

  @override
  String get rank => 'क्रमाङ्कः';

  @override
  String get members => 'सदस्याः';

  @override
  String get favorites => 'प्रियाणि';

  @override
  String get episodes => 'एपिसोड्स्';

  @override
  String get chapters => 'अध्यायाः';

  @override
  String get volumes => 'खण्डाः';

  @override
  String get format => 'प्रारूपम्';

  @override
  String get source => 'स्रोतः';

  @override
  String get duration => 'अवधिः';

  @override
  String minutesPerEpisode(int minutes) {
    return 'प्रति एपिसोड् $minutes मिनिट्';
  }

  @override
  String get rating => 'श्रेणी';

  @override
  String get studio => 'स्टूडियो';

  @override
  String get serialization => 'धारावाहिक-प्रकाशनम्';

  @override
  String get season => 'ऋतुः';

  @override
  String get broadcast => 'प्रसारणम्';

  @override
  String get aired => 'प्रसारितम्';

  @override
  String get published => 'प्रकाशितम्';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get community => 'समाजः';

  @override
  String get watching => 'पश्यन्';

  @override
  String get reading => 'पठन्';

  @override
  String get dropped => 'परित्यक्तम्';

  @override
  String get planned => 'योजितम्';

  @override
  String get trailers => 'ट्रेलर्स्';

  @override
  String get ratings => 'अङ्काः';

  @override
  String get originalTitle => 'मूलम्';

  @override
  String get titleLabel => 'शीर्षकम्';

  @override
  String get votes => 'मतानि';

  @override
  String get watchedStat => 'दृष्टम्';

  @override
  String get runtime => 'चलन-काल';

  @override
  String get director => 'निर्देशकः';

  @override
  String get network => 'चैनल्';

  @override
  String get certification => 'प्रमाणीकरणम्';

  @override
  String get airs => 'प्रसार्यते';

  @override
  String get budget => 'बजट्';

  @override
  String get revenue => 'आयः';

  @override
  String get released => 'प्रकाशितम्';

  @override
  String get tags => 'टैग्स्';

  @override
  String get author => 'लेखकः';

  @override
  String get born => 'जन्म';

  @override
  String get website => 'वेबसाइट्';

  @override
  String get established => 'स्थापितम्';

  @override
  String get manhwa => 'मन्ह्वा';

  @override
  String get manhua => 'मन्हुआ';

  @override
  String get novels => 'नॉवल्स्';

  @override
  String get thisMonth => 'अस्मिन् मासे';

  @override
  String get movies => 'चलचित्राणि';

  @override
  String get shows => 'धारावाहिकाः';

  @override
  String get rewatching => 'पुनः पश्यन्';

  @override
  String get rereading => 'पुनः पठन्';

  @override
  String get watchedStatus => 'दृष्टम्';

  @override
  String get planning => 'योजयन्';

  @override
  String get paused => 'विरामे';

  @override
  String get watch => 'पश्य';

  @override
  String get read => 'पठ';

  @override
  String get finished => 'समाप्तम्';

  @override
  String get releasing => 'प्रसार्यमाणम्';

  @override
  String get cancelled => 'रद्दम्';

  @override
  String get hiatus => 'विरामः';

  @override
  String get remove => 'अपनय';

  @override
  String syncToService(String service) {
    return '$service प्रति समकालीनं कुरु';
  }

  @override
  String syncedToService(String service) {
    return '$service प्रति समकालीकृतम्';
  }

  @override
  String get latestReleases => 'नवीनतमानि प्रकाशनानि';

  @override
  String get topRated => 'सर्वोत्तम-श्रेणीयुक्तानि';

  @override
  String localSection(String title) {
    return '$title · स्थानीयम्';
  }

  @override
  String get localEntryNote =>
      'इदं शीर्षकम् अस्मिन् उपकरणे केवलं तव स्थानीय-सूचीयां अस्ति। अत्र सम्पादनं निष्क्रियं यतः तव खाता-सूच्या सह विरोधः भवेत्; अपनेतुं शक्यते।';

  @override
  String get cardPresetPoster => 'पोस्टर्';

  @override
  String get cardPresetCard => 'कार्ड्';

  @override
  String get cardPresetCozy => 'सुखदम्';

  @override
  String get sortTopRated => 'सर्वोत्तम-श्रेणीयुक्तानि';

  @override
  String get sortMostPopular => 'अतिलोकप्रियानि';

  @override
  String get sortTrending => 'प्रवृत्तानि';

  @override
  String get sortNewest => 'नूतनतमानि';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'अतिप्रियानि';

  @override
  String get anyCountry => 'कोऽपि देशः';

  @override
  String get orderScore => 'अङ्कः';

  @override
  String get orderTitle => 'शीर्षकम्';

  @override
  String get orderLastUpdated => 'अन्तिम-अद्यतनम्';

  @override
  String get orderLastAdded => 'अन्तिम-योजितम्';

  @override
  String get never => 'कदापि न';

  @override
  String get always => 'सर्वदा';

  @override
  String get scorePoint100 => '१०० अङ्काः';

  @override
  String get scorePoint10Decimal => '१० अङ्काः दशमिकेन';

  @override
  String get scorePoint10 => '१० अङ्काः';

  @override
  String get scorePoint5 => '५ तारकाः';

  @override
  String get scorePoint3 => '३ मुख-चिह्नानि';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count होराः',
      one: '१ होरा',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनानि',
      one: '१ दिनम्',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सप्ताहाः',
      one: '१ सप्ताहः',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'पुनः आरभस्व';

  @override
  String get resumeSourceMissing =>
      'पुनः आरभ्य कर्तुं अस्य शीर्षकस्य स्रोतः स्थापय';

  @override
  String get resumeRemove => '\"पुनः आरभस्व\" तः अपनय';

  @override
  String resumeAt(String time) {
    return '$time शेषम्';
  }

  @override
  String resumePage(int page, int total) {
    return 'पृष्ठं $page / $total';
  }

  @override
  String get continueWatching => 'दर्शनं चालय';

  @override
  String get continueReading => 'पठनं चालय';

  @override
  String get favouriteAnimeSection => 'प्रियाणि अनिमे';

  @override
  String get favouriteMangaSection => 'प्रियाणि मांगा';

  @override
  String get plannedAnime => 'योजितानि अनिमे';

  @override
  String get plannedManga => 'योजितानि मांगा';

  @override
  String get completedAnime => 'समाप्तानि अनिमे';

  @override
  String get completedManga => 'समाप्तानि मांगा';

  @override
  String get hiddenMedia => 'गुप्त मीडिया';

  @override
  String get recentUpdates => 'अद्यतन-अद्यतनानि';

  @override
  String get trendingNow => 'इदानीं प्रवृत्तानि';

  @override
  String get popularThisSeason => 'अस्मिन् ऋतौ लोकप्रियानि';

  @override
  String get trendingMovies => 'प्रवृत्तानि चलचित्राणि';

  @override
  String get topRatedSeries => 'सर्वोत्तम-श्रेणीयुक्ताः धारावाहिकाः';

  @override
  String get mostFavouriteSeries => 'अतिप्रियाः धारावाहिकाः';

  @override
  String get popularAnime => 'लोकप्रियम् अनिमे';

  @override
  String get trendingManhwa => 'प्रवृत्ताः मन्ह्वाः';

  @override
  String get trendingNovels => 'प्रवृत्ताः नॉवल्स्';

  @override
  String get topRatedManga => 'सर्वोत्तम-श्रेणीयुक्ता मांगा';

  @override
  String get mostFavouriteManga => 'अतिप्रिया मांगा';

  @override
  String get popularManga => 'लोकप्रिया मांगा';

  @override
  String get topMovies => 'शीर्ष चलचित्राणि';

  @override
  String get topOna => 'शीर्ष ONA';

  @override
  String get topOva => 'शीर्ष OVA';

  @override
  String get mostPopular => 'अतिलोकप्रियम्';

  @override
  String get mostFavourite => 'अतिप्रियम्';

  @override
  String get upcoming => 'आगामि';

  @override
  String get topManga => 'शीर्ष मांगा';

  @override
  String get topManhwa => 'शीर्ष मन्ह्वा';

  @override
  String get topManhua => 'शीर्ष मन्हुआ';

  @override
  String get topNovels => 'शीर्ष नॉवल्स्';

  @override
  String get topOneShots => 'शीर्ष वन्-शॉट्स्';

  @override
  String get trendingMoviesToday => 'अद्य प्रवृत्तानि चलचित्राणि';

  @override
  String get trendingShowsToday => 'अद्य प्रवृत्ताः धारावाहिकाः';

  @override
  String get trendingMoviesWeek => 'अस्मिन् सप्ताहे प्रवृत्तानि चलचित्राणि';

  @override
  String get trendingShowsWeek => 'अस्मिन् सप्ताहे प्रवृत्ताः धारावाहिकाः';

  @override
  String get mostWatchedMoviesMonth => 'अस्मिन् मासे अतिदृष्टानि चलचित्राणि';

  @override
  String get mostWatchedShowsMonth => 'अस्मिन् मासे अतिदृष्टाः धारावाहिकाः';

  @override
  String get trendingThisWeek => 'अस्मिन् सप्ताहे प्रवृत्तम्';

  @override
  String get mostWatchedThisMonth => 'अस्मिन् मासे अतिदृष्टम्';

  @override
  String get repoLinksAdded => 'भण्डार-लिङ्काः सफलतया योजिताः!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList तः दत्तांशम् आनेतुं दोषः।';

  @override
  String get navInfo => 'सूचना';

  @override
  String get navComments => 'टिप्पण्यः';

  @override
  String get playerNotAvailable => 'प्लेयर् अद्यापि उपलब्धः नास्ति';

  @override
  String deepLinkInitialError(String error) {
    return 'प्रारम्भिक-डीप्-लिङ्कं प्राप्तुं दोषः: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'लिङ्कम् उद्घाटयितुं दोषः: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'इदं लिङ्कम् उद्घाटयितुं न शक्यते: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'लिङ्कम् उद्घाटयितुं दोषः: $error';
  }

  @override
  String get forReleasingTitles => 'इदानीं प्रसार्यमाणानां शीर्षकाणां कृते';

  @override
  String get progress => 'प्रगतिः';

  @override
  String get notes => 'टिप्पणानि';

  @override
  String serviceNotFound(String id) {
    return 'सेवा \"$id\" न प्राप्ता';
  }

  @override
  String get glassEffectEnabled => 'काचप्रभावः सक्रियः';

  @override
  String get glassEffectDisabled => 'काचप्रभावः निष्क्रियः';

  @override
  String get materialYouEnabled => 'Material You सक्रियम्';

  @override
  String get materialYouDisabled => 'Material You निष्क्रियम्';

  @override
  String get darkModeEnabled => 'डार्क्-मोडः सक्रियः';

  @override
  String get darkModeDisabled => 'डार्क्-मोडः निष्क्रियः';

  @override
  String get animeList => 'अनिमे-सूची';

  @override
  String get mangaList => 'मांगा-सूची';

  @override
  String ownerAnimeList(String owner) {
    return '$owner इत्यस्य अनिमे-सूची';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner इत्यस्य मांगा-सूची';
  }

  @override
  String get loadingList => 'सूची आनीयते';

  @override
  String get earlier => 'पूर्वम्';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिनेभ्यः पूर्वम्',
      one: '१ दिनात् पूर्वम्',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count होराभ्यः पूर्वम्',
      one: '१ होरातः पूर्वम्',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनिट्भ्यः पूर्वम्',
      one: '१ मिनिटात् पूर्वम्',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count मि. पूर्वम्';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count हो. पूर्वम्';
  }

  @override
  String daysAgoShort(int count) {
    return '$count दि. पूर्वम्';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count स. पूर्वम्';
  }

  @override
  String get couldntLoadSource => 'अयं स्रोतः आनेतुं न शक्तः';

  @override
  String get followers => 'अनुयायिनः';

  @override
  String couldntLoadTitle(String title) {
    return '$title आनेतुं न शक्तम्';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'इदं प्रोफाइल् आनेतुं न शक्तम्';

  @override
  String get profile => 'प्रोफाइल्';

  @override
  String get feed => 'फीड्';

  @override
  String get stats => 'सांख्यिकी';

  @override
  String get received => 'प्राप्तम्';

  @override
  String get sent => 'प्रेषितम्';

  @override
  String get global => 'वैश्विकम्';

  @override
  String get couldntLoadPage => 'इदं पृष्ठम् आनेतुं न शक्तम्';

  @override
  String get couldntLoadAllDetails => 'सर्वं विवरणम् आनेतुं न शक्तम्';

  @override
  String get series => 'धारावाहिकाः';

  @override
  String get studios => 'स्टूडियो';

  @override
  String get users => 'उपयोक्तारः';

  @override
  String repositoriesTitle(String type) {
    return '$type भण्डाराः';
  }

  @override
  String get repositoryUrl => 'भण्डार-URL';

  @override
  String get downloadingRepository => 'भण्डारः डाउनलोड् क्रियते…';

  @override
  String get noRepositories => 'भण्डाराः न योजिताः';

  @override
  String repoExtensionsCount(String count) {
    return '$count एक्स्टेंशन्स्';
  }

  @override
  String get searchExtensions => 'एक्स्टेंशन्स् अन्विष्य...';

  @override
  String deletePluginTitle(String name) {
    return '$name मार्जयसि?';
  }

  @override
  String get deletePluginMessage =>
      'निश्चितम् इमं प्लगिन् मार्जयितुम् इच्छसि वा?';

  @override
  String pluginDeleted(String name) {
    return '$name मार्जितम्';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name विन्यस्ते भण्डारे उपलब्धं नास्ति';
  }

  @override
  String get pluginFetchFailed => 'प्लगिन्-सूचनां प्राप्तुं न शक्तम्';

  @override
  String installPluginTitle(String name) {
    return '$name स्थापय';
  }

  @override
  String sizeLabel(String size) {
    return 'आकारः: $size';
  }

  @override
  String get installedState => 'स्थापितम्';

  @override
  String get errorLabel => 'दोषः:';

  @override
  String get stackTraceDetails => 'विवरणम् (स्टैक् ट्रेस्)';

  @override
  String get shareLogFile => 'लॉग्-फाइल् साझां कुरु';

  @override
  String get copyLogs => 'लॉग्स् प्रतिलिख';

  @override
  String noListToEdit(String service) {
    return '$service मध्ये सम्पादनार्थं सूची नास्ति';
  }

  @override
  String get couldNotReadFile => 'सा फाइल् पठितुं न शक्यते';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime अनिमे $manga मांगा च आनीतानि';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count पूर्वमेव सन्ति';
  }

  @override
  String get airingNow => 'इदानीं प्रसार्यते';

  @override
  String get topRatedMovies => 'सर्वोत्तम-श्रेणीयुक्तानि चलचित्राणि';

  @override
  String get koreanDramas => 'कोरियन-नाटकानि';

  @override
  String get chineseDramas => 'चीनी-नाटकानि';

  @override
  String get japaneseDramas => 'जापानी-नाटकानि';

  @override
  String get thaiDramas => 'थाई-नाटकानि';

  @override
  String get turkishDramas => 'तुर्की-नाटकानि';

  @override
  String get miniSeries => 'लघु-श्रृङ्खला';

  @override
  String get topRatedShows => 'सर्वोत्तम-श्रेणीयुक्ताः धारावाहिकाः';

  @override
  String get recommendedSection => 'अनुशंसितम्';

  @override
  String get syncRow => 'सूचीः समकालीनीकुरु';

  @override
  String get syncRowDesc =>
      'एकस्याः सेवायाः सूचीं तव अन्येषु खातेषु प्रतिबिम्बय';

  @override
  String get syncTitle => 'समकालीनं कुरु';

  @override
  String get syncMainService => 'मुख्या सेवा';

  @override
  String get syncMainServiceDesc =>
      'तस्याः सूची सत्यस्रोतः; अन्याः सर्वाः लॉगिन्-कृताः सेवाः तया सह मेलयितुं अद्यतन्यन्ते';

  @override
  String get syncAuto => 'स्वयं समकालीनीकरणम्';

  @override
  String get syncAutoDesc =>
      'ऐप् उद्घाटिते सति प्रत्येकं ३० मिनिट्-अन्तरे च पृष्ठभूमौ आनय समकालीनं च कुरु';

  @override
  String get syncAddMissing => 'अपूर्णाः प्रविष्टीः योजय';

  @override
  String get syncAddMissingDesc =>
      'अन्यसेवायाः समीपे अद्यापि याः न सन्ति ताः अपि योजय';

  @override
  String get syncOnlyForward => 'अग्रिमां प्रगतिं रक्ष';

  @override
  String get syncOnlyForwardDesc =>
      'यस्याः सेवायाः प्रगतिः पूर्वमेव अग्रे अस्ति तस्याः प्रगतिं न न्यूनीकुरु';

  @override
  String get syncFetch => 'आनय';

  @override
  String get syncFetchAgain => 'पुनः आनय';

  @override
  String get syncAll => 'सर्वं समकालीनं कुरु';

  @override
  String get syncStop => 'निरुन्धि';

  @override
  String get syncResume => 'पुनः आरभस्व';

  @override
  String get syncNothingToSync =>
      'एषा सेवा अस्य प्रकारस्य कृते समकालीना कर्तुं न शक्यते';

  @override
  String get syncNoTargets => 'समकालीनीकरणार्थं अन्यस्यां सेवायां लॉगिन् कुरु';

  @override
  String get syncLoadingMap => 'ID-मानचित्रणम् आनीयते';

  @override
  String get syncComparing => 'सूचीः तुल्यन्ते';

  @override
  String get syncIntro =>
      'मुख्यां सेवां चिनु \"आनय\" इति नुद। प्रत्येका सेवा तव सूच्यर्थम् एकवारं पृच्छ्यते, ततः मुख्यया सह तुल्यते।';

  @override
  String get syncStateSynced => 'समकालीनम्';

  @override
  String get syncStateOutdated => 'असमकालीनम्';

  @override
  String get syncStateMissing => 'सूचीयां नास्ति';

  @override
  String get syncStateUnmapped => 'मेलनं नास्ति';

  @override
  String syncPaused(String time) {
    return 'अनुरोध-सीमायाः प्रतीक्षा, $time मध्ये पुनः आरभ्यते';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return 'केवलं $name मध्ये $count, अस्पृष्टाः';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total मध्ये $done';
  }

  @override
  String get syncNothingHere => 'दर्शयितुं किमपि नास्ति';

  @override
  String syncLimits(int used, int max, String window) {
    return 'अस्मिन् $window मध्ये $max मध्ये $used अनुरोधाः प्रयुक्ताः';
  }

  @override
  String get syncMinute => 'मिनिट्';

  @override
  String get syncDay => 'दिनम्';

  @override
  String get syncNotInList => 'अद्यापि सूचीयां नास्ति';

  @override
  String get syncCleared => 'योजना मार्जिता';

  @override
  String get syncClear => 'मार्जय';

  @override
  String get syncOptions => 'विकल्पाः';

  @override
  String get syncShared => 'अन्येन वस्तुना सह प्रविष्टिं साझां करोति';

  @override
  String syncNotFound(String service) {
    return '$service मध्ये न प्राप्तम्';
  }

  @override
  String syncService(String service, int count) {
    return '$service समकालीनं कुरु ($count)';
  }

  @override
  String get syncOnEdit => 'तत्क्षणं समकालीनीकरणम्';

  @override
  String get syncOnEditDesc =>
      'प्रत्येकं प्रगति-अद्यतनं सूची-सम्पादनं च तव अन्येषु लॉगिन्-कृतेषु सेवासु तत्क्षणं प्रेषय';

  @override
  String syncPushed(String services) {
    return '$services प्रति समकालीकृतम्';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'अनुरोध-सीमा प्राप्ता, क्षणानन्तरं पुनः यत्नं कुरु';

  @override
  String get syncAhead => 'यः अग्रे अस्ति सः';

  @override
  String get syncAheadDesc =>
      'उभयदिशि: प्रत्येकस्य शीर्षकस्य कृते या प्रविष्टिः अग्रे सा विजयते तव अन्यासु सर्वासु सेवासु प्रतिलिख्यते च';

  @override
  String syncAheadFrom(String service) {
    return '$service तः';
  }

  @override
  String get syncConfirm => 'समकालीनीकरणात् पूर्वं परीक्षस्व';

  @override
  String get syncConfirmDesc =>
      '\"सर्वं समकालीनं कुरु\" किं परिवर्तयिष्यति कति अनुरोधाः चापेक्षिताः इति दर्शय';

  @override
  String get syncPreviewTitle => 'समकालीनीकरणाय सिद्धम्';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates अद्यतनानि, $adds योजनीयानि';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'प्रायः $count अनुरोधाः';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ID-नाम् प्रथमं अन्वेषणम् आवश्यकम्';
  }

  @override
  String get syncPreviewNothing => 'परिवर्तनीयं किमपि नास्ति';

  @override
  String get syncStart => 'आरभस्व';

  @override
  String get syncRetry => 'पुनः यत्नं कुरु';

  @override
  String get syncSkip => 'इमां वस्तुं त्यज';

  @override
  String get syncInclude => 'इमां वस्तुं पुनः अन्तर्भावय';

  @override
  String get syncSkippedLabel => 'त्यक्तम्';

  @override
  String get syncChanges => 'भेदाः';

  @override
  String get syncChangeStatus => 'स्थितिः';

  @override
  String get syncChangeProgress => 'प्रगतिः';

  @override
  String get syncChangeScore => 'अङ्कः';

  @override
  String get syncChangeDates => 'दिनाङ्काः';

  @override
  String get syncChangeRepeat => 'पुनर्दर्शन-गणना';

  @override
  String get syncFailedReason => 'किमर्थं विफलम्';

  @override
  String get syncSkippedHint =>
      'त्यक्ताः वस्तूनि पुनः आनीतेऽपि अस्पृष्टानि तिष्ठन्ति';

  @override
  String get commentsRules => 'टिप्पणी-नियमाः';

  @override
  String get commentsRulesBody =>
      'कमपि नियमं भङ्क्ष्यसि चेत् = निष्कास्यसे\n\n१. जातिवादः, भेदभावः, द्वेषभाषणं च नास्ति\n२. स्पैमिङ्ग् स्वप्रचारः च नास्ति\n३. NSFW सामग्री सर्वथा नास्ति\n४. केवलम् आङ्ग्लभाषा, अपवादः नास्ति\n५. छद्मरूपं, उत्पीडनं, दुर्व्यवहारः च नास्ति\n६. अवैध-सामग्री कस्यापि फैन्डमस्य प्रति अत्यन्तानादरः च नास्ति\n७. भण्डारान् एक्स्टेंशन्स् वा मा याचस्व मा साझां कुरु\n८. स्पॉयलर्स् केवलं स्पॉयलर्-टैग् चेतावनी च सह\n९. अल्पवयस्क-पात्राणां विषये कामुकीकरणं अनुचिताः टिप्पण्यः च नास्ति\n१०. यदि अनुचितं, मा प्रकाशय!';

  @override
  String get commentsRulesAccept => 'अवगतम्';

  @override
  String get commentsSortNewest => 'नूतनतमम्';

  @override
  String get commentsSortOldest => 'प्राचीनतमम्';

  @override
  String get commentsSortHighest => 'उच्चतम-श्रेणीयुक्तम्';

  @override
  String get commentsSortLowest => 'निम्नतम-श्रेणीयुक्तम्';

  @override
  String commentsEpisodeShort(int number) {
    return 'एप. $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'अ. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'एपिसोड्-अनुसारं छानय';

  @override
  String get commentsFilterChapterTitle => 'अध्याय-अनुसारं छानय';

  @override
  String get commentsFilterTagTitle =>
      'एपिसोड्-सङ्ख्यां अध्याय-सङ्ख्यां वा लिख';

  @override
  String get commentsFilterHint => 'सङ्ख्या';

  @override
  String get commentsFilterApply => 'छानय';

  @override
  String get commentsFilterClear => 'सर्वं दर्शय';

  @override
  String get commentsPlaceholder => 'टिप्पणीं योजय…';

  @override
  String commentsReplyingTo(String name) {
    return '$name प्रति उत्तरम्';
  }

  @override
  String get commentsSend => 'प्रेषय';

  @override
  String get commentsTagButton => 'टैग्';

  @override
  String commentsTagTitle(String label) {
    return 'टैग् $label (वैकल्पिकम्)';
  }

  @override
  String get commentsTagEpisode => 'एपिसोड्';

  @override
  String get commentsTagChapter => 'अध्यायः';

  @override
  String commentsTagRange(int total) {
    return '१–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label सङ्ख्या';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'टैग् कुल-सङ्ख्यां ($total) न अतिक्रामेत्';
  }

  @override
  String get commentsNoTag => 'टैग् नास्ति';

  @override
  String get commentsSpoiler => 'स्पॉयलर्';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF अन्विष्य';

  @override
  String get commentsGifEmpty => 'GIF न प्राप्ताः';

  @override
  String get commentsEmptyText => 'टिप्पणी रिक्ता न भवेत्';

  @override
  String get commentsBannedYou => 'त्वं टिप्पणीतः निषिद्धः असि';

  @override
  String get commentsEdited => 'टिप्पणी सम्पादिता';

  @override
  String get commentsDeleted => 'टिप्पणी मार्जिता';

  @override
  String get commentsDeletedPlaceholder => '[मार्जितम्]';

  @override
  String get commentsReported => 'टिप्पणी निवेदिता';

  @override
  String get commentsUserBanned => 'उपयोक्ता निषिद्धः';

  @override
  String get commentsReport => 'निवेदय';

  @override
  String get commentsReportAsk => 'इमां टिप्पणीं संयोजकेभ्यः निवेदयसि?';

  @override
  String get commentsDelete => 'मार्जय';

  @override
  String get commentsDeleteAsk => 'इयं टिप्पणी सर्वेषां कृते अपनीयते।';

  @override
  String get commentsBan => 'निषेधय';

  @override
  String get commentsBanAsk => 'इमम् उपयोक्तारं टिप्पणीतः निषेधयसि?';

  @override
  String get commentsCopy => 'प्रतिलिख';

  @override
  String get commentsViewReply => '१ उत्तरं पश्य';

  @override
  String commentsViewReplies(int count) {
    return '$count उत्तराणि पश्य';
  }

  @override
  String get commentsHideReplies => 'उत्तराणि गोपय';

  @override
  String get commentsLoadMore => 'अधिकाः टिप्पण्यः आनय';

  @override
  String get commentsEmpty => 'टिप्पण्यः अद्यापि नास्ति। प्रथमः भव!';

  @override
  String get commentsEmptyFiltered => 'अस्य छानकस्य कृते टिप्पण्यः नास्ति';

  @override
  String get commentsSignIn =>
      'टिप्पण्यः पठितुं लेखितुं च AniList मध्ये लॉगिन् कुरु';

  @override
  String get commentsSignInMessage =>
      'टिप्पण्यः सर्वासु सेवासु साझाः तव AniList खातं च प्रयुञ्जते।';

  @override
  String get commentsUnavailable =>
      'अस्य शीर्षकस्य कृते टिप्पण्यः उपलब्धाः न सन्ति';

  @override
  String get commentsUnavailableMessage =>
      'इदं AniList-प्रविष्ट्या सह मेलयितुं न शक्तम्।';

  @override
  String get commentsDisabled => 'टिप्पण्यः निष्क्रियाः';

  @override
  String get commentsDisabledMessage =>
      'सेटिंग्स् › सामान्यम् मध्ये पुनः सक्रियां कर्तुं शक्यते।';

  @override
  String get commentsOffline => 'टिप्पण्यः आनेतुं न शक्याः';

  @override
  String get commentsSingleTitle => 'एका टिप्पणी दृश्यते';

  @override
  String get commentsShowAll => 'सर्वाः टिप्पणीः दर्शय';

  @override
  String get commentsSettingsHeader => 'टिप्पण्यः';

  @override
  String get commentsSettingEnabled => 'टिप्पण्यः';

  @override
  String get commentsSettingEnabledDesc =>
      'शीर्षकेषु टिप्पणी-टैब् दर्शय तव AniList खातेन टिप्पणी-सर्वरे लॉगिन् कुरु च';

  @override
  String get commentsSettingAlerts => 'उत्तर-सूचनाः';

  @override
  String get commentsSettingAlertsDesc =>
      'मम टिप्पणीषु कोऽपि उत्तरं ददाति चेत् मां सूचय';

  @override
  String get commentsNoticeReplyTitle => 'नूतनम् टिप्पणी-उत्तरम्';

  @override
  String commentsNoticeReply(String name) {
    return '$name तव टिप्पणीम् उत्तरितवान्';
  }

  @override
  String get commentsNoticeWarningTitle => 'त्वया चेतावनी प्राप्ता';

  @override
  String get commentsNoticeWarning => 'स्वटिप्पणीषु अधिकं विचारशीलः भव';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu तः अद्यतनम्';

  @override
  String get barcodeTitle => 'बारकोड् स्कैन् कुरु';

  @override
  String get barcodeTooltip => 'बारकोड् द्वारा मांगा अथवा नॉवल् अन्विष्य';

  @override
  String get barcodeIntro =>
      'खण्डस्य पृष्ठतः बारकोड् प्रति कॅमेरां निर्दिश, अथवा ISBN लिख।';

  @override
  String get barcodeIntroManual =>
      'खण्डस्य पृष्ठतः बारकोड्-उपरि मुद्रितं ISBN लिख।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'इदं मान्यं ISBN न अस्ति';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn कृते पुस्तकं न प्राप्तम्';
  }

  @override
  String get barcodeCameraDenied =>
      'कॅमेरा उपलब्धः नास्ति। कॅमेरा-प्रवेशम् अनुमन्यस्व अथवा ISBN लिख।';

  @override
  String get themesTitle => 'आरम्भगीतानि समापनगीतानि च';

  @override
  String get themesPlayVideo => 'वीडियो चालय';

  @override
  String get themesPlayAudio => 'केवलं ध्वनिं चालय';

  @override
  String get themesOpenSite => 'AnimeThemes मध्ये उद्घाटय';

  @override
  String get themesCredit => 'AnimeThemes तः थीम्स्';

  @override
  String get themesVersions => 'संस्करणानि';

  @override
  String get sauceTitle => 'स्रोतः अन्विष्य';

  @override
  String get sauceIntro =>
      'उत्पत्तिस्थानं ज्ञातुं मांगा-पृष्ठं अथवा चित्रं उत्थापय, अथवा तस्य लिङ्कं स्थापय।';

  @override
  String get sauceKeyTitle => 'SauceNAO API कुञ्जी';

  @override
  String get sauceKeyHint => 'वैकल्पिकम्, दैनिक-अन्वेषण-सीमां वर्धयति';

  @override
  String get sauceKeyDesc =>
      'saucenao.com/user.php मध्ये निःशुल्कं कुञ्जीं प्राप्नुहि';

  @override
  String get sauceOpen => 'स्रोतः उद्घाटय';

  @override
  String get sauceCredit => 'SauceNAO द्वारा चित्रान्वेषणम्';

  @override
  String get sauceEmpty => 'मेलनं न प्राप्तम्';

  @override
  String get sauceTooltip => 'मांगा-पृष्ठस्य अथवा चित्रस्य स्रोतः अन्विष्य';

  @override
  String get trendzTitle => 'अनिमे-चार्ट्स्';

  @override
  String get trendzAnime => 'अनिमे';

  @override
  String get trendzFemale => 'स्त्री-पात्राणि';

  @override
  String get trendzMale => 'पुरुष-पात्राणि';

  @override
  String get trendzCouple => 'युग्मानि';

  @override
  String get trendzCredit => 'AniTrendz द्वारा साप्ताहिक-चार्ट्स्';

  @override
  String get trendzNew => 'नूतनम्';

  @override
  String get trendzEmpty => 'चार्ट् रिक्तम् अस्ति';

  @override
  String get shareCard => 'कार्ड् साझां कुरु';

  @override
  String get shareCardList => 'सूची-कार्ड् साझां कुरु';

  @override
  String get shareCardSaved => 'कार्ड् रक्षितम्';

  @override
  String get shareCardFailed => 'कार्ड् निर्मातुं न शक्तम्';

  @override
  String get shareCardListEmpty => 'तव सूचीयां साझां कर्तुं किमपि नास्ति';

  @override
  String get shareCardTop => 'मम शीर्ष-चयनानि';

  @override
  String themesEpisodes(String eps) {
    return 'एपिसोड्स् $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% मेलनम्';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'सप्ताहः $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count मतानि';
  }

  @override
  String trendzPeak(String rank) {
    return 'शिखरम् #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'शीर्ष-दशसु $count सप्ताहाः';
  }

  @override
  String get imageSearchTitle => 'चित्रेण अन्विष्य';

  @override
  String get imageSearchTooltip => 'स्क्रीनशॉट् तः अनिमे अन्विष्य';

  @override
  String get imageSearchIntro =>
      'स्क्रीनशॉट् चिनु अथवा चित्र-लिङ्कं स्थापय, trace.moe च एपिसोड् तं क्षणं च अन्वेषिष्यति।';

  @override
  String get imageSearchPick => 'चित्रं चिनु';

  @override
  String get imageSearchLinkHint => 'चित्र-लिङ्कं स्थापय';

  @override
  String get imageSearchGo => 'अन्विष्य';

  @override
  String get imageSearchEmpty => 'मेलनं न प्राप्तम्';

  @override
  String get imageSearchAdult => '१८+';

  @override
  String imageSearchEpisode(String number) {
    return 'एपिसोड् $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time मध्ये';
  }

  @override
  String get imageSearchPreview => 'क्लिप्-पूर्वावलोकनम्';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% मेलनम्';
  }

  @override
  String get imageSearchCredit => 'trace.moe द्वारा सञ्चालितम्';

  @override
  String get imageSearchOpenFailed => 'इदं शीर्षकम् उद्घाटयितुं न शक्तम्';

  @override
  String get groups => 'समूहाः';

  @override
  String get groupsYours => 'तव समूहाः';

  @override
  String get groupsPopular => 'लोकप्रियाः';

  @override
  String get groupsNew => 'नूतनाः';

  @override
  String get groupsFeatured => 'विशिष्टाः';

  @override
  String get groupsSearch => 'समूहान् अन्विष्य';

  @override
  String get groupsAll => 'सर्वे';

  @override
  String get groupsEmpty => 'समूहाः न प्राप्ताः';

  @override
  String get groupsEmptyYours => 'त्वम् अद्यापि कमपि समूहं न संयुक्तः';

  @override
  String get groupsSignIn => 'संयुक्तान् समूहान् द्रष्टुं लॉगिन् कुरु';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सदस्याः',
      one: '१ सदस्यः',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'संयुज्यस्व';

  @override
  String get groupsJoined => 'संयुक्तः';

  @override
  String get groupsLeave => 'समूहं त्यज';

  @override
  String get groupsLeaveAsk =>
      'तव फीड् मध्ये अस्य समूहस्य पोस्ट्स् द्रष्टुं निवर्तिष्यसे।';

  @override
  String get groupsJoinFailed =>
      'अस्मिन् समूहे संयोक्तुं न शक्तम्, आमन्त्रण-मात्रम् भवेत्';

  @override
  String get groupsLeaveFailed => 'इमं समूहं त्यक्तुं न शक्तम्';

  @override
  String get groupsPosts => 'पोस्ट्स्';

  @override
  String get groupsMembersTab => 'सदस्याः';

  @override
  String get groupsAbout => 'विषये';

  @override
  String get groupsRules => 'नियमाः';

  @override
  String get groupsPrivacyOpen => 'मुक्तः';

  @override
  String get groupsPrivacyRestricted => 'प्रतिबन्धितः';

  @override
  String get groupsPrivacyClosed => 'बद्धः';

  @override
  String get groupsAdult => '१८+';

  @override
  String get groupsRoleAdmin => 'प्रशासकः';

  @override
  String get groupsRoleMod => 'संयोजकः';

  @override
  String get groupsCouldntLoad => 'इमं समूहं आनेतुं न शक्तम्';

  @override
  String get groupsNewPost => 'समूहे पोस्ट् कुरु';

  @override
  String get groupsPostHint => 'समूहेन सह किञ्चित् साझां कुरु';

  @override
  String get groupsOpenInBrowser => 'ब्राउज़र् मध्ये उद्घाटय';

  @override
  String get groupsCategory => 'वर्गः';

  @override
  String get groupsLanguage => 'भाषा';

  @override
  String get groupsCreated => 'निर्मितम्';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नेतारः',
      one: '१ नेता',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'गोपनीयता';

  @override
  String get notificationsAll => 'सर्वम्';

  @override
  String get notificationsAiring => 'प्रसार्यमाणम्';

  @override
  String get notificationsMedia => 'नूतनानि शीर्षकाणि';

  @override
  String get notificationsReplies => 'उत्तराणि';

  @override
  String get notificationsMentions => 'उल्लेखाः';

  @override
  String get notificationsMessages => 'सन्देशाः';

  @override
  String get notificationsLikes => 'रोचनानि';

  @override
  String get notificationsFollows => 'अनुयायिनः';

  @override
  String get notificationsNoServices =>
      'कस्याः अपि लॉगिन्-कृतायाः सेवायाः सूचनाः न सन्ति';

  @override
  String get notificationsNoServicesMessage =>
      'सूचनाः प्रेषयन्तीं सेवां लॉगिन् कुरु, ताः अत्र दृश्यन्ते।';

  @override
  String get notificationsEmptyKind => 'अस्मिन् वर्गे अद्यापि किमपि नास्ति';

  @override
  String get notificationsCommentsEmpty => 'टिप्पणी-सूचनाः न सन्ति';

  @override
  String get notificationsCommentsEmptyMessage =>
      'तव टिप्पणीनाम् उत्तराणि Dantotsu-घोषणाः च अत्र दृश्यन्ते।';

  @override
  String get notificationsSettings => 'सूचना-सेटिंग्स्';

  @override
  String get notificationsPollTitle => 'नूतनाः सूचनाः परीक्षस्व';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ऐप् उद्घाटिते सति प्रत्येकं $minutes मिनिट्';
  }

  @override
  String get notificationsNotifyAbout => 'एतेषां विषये सूचय';

  @override
  String get notificationsCommentsHeader => 'टिप्पणी-सूचनाः';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ऐप् चलति सति प्रत्येकस्य अपठितस्य $service सूचनायाः कृते सिस्टम्-सूचनां दर्शय।';
  }

  @override
  String get notificationsTestSent => 'परीक्षा-सूचना प्रेषिता';

  @override
  String get notificationsTestDenied =>
      'Dartotsu कृते सूचनाः अनुमताः न सन्ति। सिस्टम्-सेटिंग्स् मध्ये सक्रियाः कुरु।';

  @override
  String get notificationsTestHint => 'परीक्षा-सूचना प्रेषयितुं दीर्घं नुद';

  @override
  String get notificationsTestSample => 'इयं परीक्षा-सूचना अस्ति';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media मध्ये तव टिप्पणीम् उत्तरितवान्';
  }

  @override
  String get imageSearchNotLink => 'इदं लिङ्कवत् न दृश्यते';

  @override
  String get imageSearchQuota => 'अन्वेषण-सीमा अतिक्रान्ता';

  @override
  String get imageSearchBusy => 'बहवः अनुरोधाः, क्षणानन्तरं पुनः यत्नं कुरु';

  @override
  String imageSearchFailed(int code) {
    return 'अन्वेषणं विफलम् ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count नूतनाः सूचनाः';
  }

  @override
  String get reactionsTitle => 'प्रतिक्रियाः';

  @override
  String get reactionsNeedEntry =>
      'प्रतिक्रियां दातुं पूर्वम् इदं शीर्षकं स्वसूचीयां योजय';

  @override
  String get reactionsAdd => 'प्रतिक्रियां योजय';

  @override
  String get reactionsHint => 'कथम् आसीत्? (लघु स्पॉयलर्-रहितं च)';

  @override
  String get reactionsPost => 'प्रकाशय';

  @override
  String get reactionsFailed => 'प्रतिक्रियां अद्यतनितुं न शक्तम्';

  @override
  String get settingsWatch => 'पश्य पठ च';

  @override
  String get settingsWatchDesc =>
      'एपिसोड्-सूचयः, स्रोत-मेलनं, एपिसोड्-विवरणं च';

  @override
  String get watchSettingsLayout => 'एपिसोड्-सूची';

  @override
  String get watchSettingsSources => 'स्रोतांसि';

  @override
  String get watchSettingsMetadata => 'एपिसोड्-विवरणम्';

  @override
  String get watchLayout => 'विन्यासः';

  @override
  String get watchListView => 'सूची';

  @override
  String get watchGridView => 'जालकम्';

  @override
  String get watchCompactView => 'संक्षिप्तम्';

  @override
  String get watchDefaultLayoutDesc =>
      'शीर्षके परिवर्तनं यावत् न करोषि तावत् एपिसोड्स् अध्यायाः च कथं विन्यस्ताः';

  @override
  String get watchChunkSize => 'परिसर-आकारः';

  @override
  String get watchChunkSizeDesc =>
      'प्रत्येकस्मिन् परिसर-टैब् मध्ये कति एपिसोड्स् अध्यायाः वा';

  @override
  String get watchShowDescription => 'विवरणानि दर्शय';

  @override
  String get watchShowDescriptionDesc =>
      'सूची-विन्यासे प्रत्येकस्य शीर्षकस्य अधः एपिसोड्-सारांशं दर्शय';

  @override
  String get watchShowFiller => 'फिलर्-एपिसोड्स् दर्शय';

  @override
  String get watchShowFillerDesc =>
      'फिलर्-चिह्नितान् एपिसोड्स् गोपयितुं निष्क्रियं कुरु';

  @override
  String get watchBlurUnwatched => 'स्पॉयलर्-थम्बनेल्स् गोपय';

  @override
  String get watchBlurUnwatchedDesc =>
      'यान् एपिसोड्स् अद्यापि न दृष्टवान् तेषां थम्बनेल् अस्पष्टं कुरु';

  @override
  String get watchResumeShelf => 'पुनः आरम्भ-पङ्क्तिः';

  @override
  String get watchResumeShelfDesc => 'मुख्यपृष्ठे पुनः आरम्भ-पङ्क्तिं दर्शय';

  @override
  String get watchMarkOnLongPress => 'दीर्घ-नोदनं प्रगतिं चिह्नयति';

  @override
  String get watchMarkOnLongPressDesc =>
      'एपिसोड्-अध्यायं दृष्टम् अदृष्टं वा चिह्नयितुं दीर्घं नुद';

  @override
  String get watchMatching => 'स्रोत-मेलनम्';

  @override
  String get watchMatchingDesc =>
      '\"निकटतमम्\" सर्वोत्तमं अन्वेषण-परिणामं गृह्णाति। \"केवलं सटीकम्\" प्रायः समानं शीर्षकमेव स्वीकरोति शेषं त्वया चेतव्यम्।';

  @override
  String get watchMatchClosest => 'निकटतमं मेलनम्';

  @override
  String get watchMatchExact => 'केवलं सटीकं मेलनम्';

  @override
  String get watchMetadataDesc =>
      'एपिसोड्-शीर्षकानि, सारांशाः, थम्बनेल्स्, प्रसारण-दिनाङ्काः, फिलर्-चिह्नानि च कुतः आगच्छन्ति। प्राथमिकतायै कर्ष; मूल्ययुक्तः प्रथमः स्रोतः विजयते।';

  @override
  String get watchMetaAniZipDesc =>
      'एपिसोड्-शीर्षकानि, सारांशाः, चित्राणि, प्रसारण-दिनाङ्काः च';

  @override
  String get watchMetaKitsuDesc => 'एपिसोड्-शीर्षकानि, विवरणानि, थम्बनेल्स् च';

  @override
  String get watchMetaSimklDesc =>
      'एपिसोड्-शीर्षकानि, विवरणानि, चित्राणि, प्रसारण-दिनाङ्काः च';

  @override
  String get watchMetaAniListDesc =>
      'स्ट्रीमिङ्ग्-एपिसोड्-शीर्षकानि, थम्बनेल्स्, प्रसारण-समयसूची च';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai द्वारा MyAnimeList एपिसोड्-शीर्षकानि, प्रसारण-दिनाङ्काः, फिलर् रिकैप्-चिह्नानि च';

  @override
  String get watchClearMetadata => 'एपिसोड्-विवरणं नवीकुरु';

  @override
  String get watchClearMetadataDesc =>
      'कॅश्-कृतं एपिसोड्-विवरणं विस्मर यथा पुनः आनीयते';

  @override
  String get watchMetadataCleared => 'एपिसोड्-विवरणं पुनः आनीयते';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड्स्',
      one: '१ एपिसोड्',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count अध्यायाः',
      one: '१ अध्यायः',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'एपिसोड् $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'अध्यायः $number';
  }

  @override
  String get watchSearching => 'अन्वेषणं चलति…';

  @override
  String watchSearchingFor(String term) {
    return 'अन्वेषणम्: $term';
  }

  @override
  String watchSelected(String title) {
    return 'चितम्: $title';
  }

  @override
  String watchFound(String title) {
    return 'प्राप्तम्: $title';
  }

  @override
  String get watchNothingFound => 'अस्मिन् स्रोतसि किमपि न प्राप्तम्';

  @override
  String get watchSearchFailed => 'स्रोत-अन्वेषणं विफलम्';

  @override
  String get watchLoadFailed => 'सूची आनेतुं न शक्तम्';

  @override
  String get watchSignInToTrack => 'प्रगतिम् अनुसर्तुं लॉगिन् कुरु';

  @override
  String watchInstallSource(String action) {
    return '$action आरब्धुं एक्स्टेंशन् स्थापय';
  }

  @override
  String get watchSourceMissing => 'अयं स्रोतः न स्थापितः';

  @override
  String get watchWrongTitle => 'अशुद्धं शीर्षकम्?';

  @override
  String get watchSearchAgain => 'पुनः अन्विष्य';

  @override
  String watchSearchSource(String source) {
    return '$source मध्ये अन्वेषणम्';
  }

  @override
  String get watchSource => 'स्रोतः';

  @override
  String get watchOptions => 'विकल्पाः';

  @override
  String get watchReverse => 'क्रमं विपरीतं कुरु';

  @override
  String get watchScanlators => 'समूहाः';

  @override
  String get watchResetOptions => 'एतान् विकल्पान् पुनःस्थापय';

  @override
  String get watchContinue => 'अग्रे गच्छ';

  @override
  String get watchStart => 'आरभस्व';

  @override
  String get watchPlay => 'चालय';

  @override
  String get watchRead => 'पठ';

  @override
  String get watchMarkWatched => 'दृष्टम् इति चिह्नय';

  @override
  String get watchMarkUnwatched => 'अदृष्टम् इति चिह्नय';

  @override
  String get watchMarkRead => 'पठितम् इति चिह्नय';

  @override
  String get watchMarkUnread => 'अपठितम् इति चिह्नय';

  @override
  String get watchFiller => 'फिलर्';

  @override
  String get watchRecap => 'रिकैप्';

  @override
  String get watchNoEpisodes => 'एपिसोड्स् न प्राप्ताः';

  @override
  String get watchNoChapters => 'अध्यायाः न प्राप्ताः';

  @override
  String get watchSourceTools => 'स्रोत-साधनानि';

  @override
  String get watchSourceSettings => 'स्रोत-सेटिंग्स्';

  @override
  String get watchOpenWebView => 'वेब्-व्यू मध्ये उद्घाटय';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare-परीक्षां समाधेहि अथवा लॉगिन् कुरु; कुकीज् स्रोत-अनुरोधैः सह साझाः';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host कृते $count कुकीज् रक्षिताः',
      one: '$host कृते १ कुकी रक्षिता',
      zero: '$host कृते कुकीज् रक्षिताः न सन्ति',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare-अनुमतिः सक्रिया, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare-अनुमति-कुकी नास्ति';

  @override
  String get watchClearanceSession => 'ऐप् बन्द-पर्यन्तं स्थायि';

  @override
  String get watchAgentShared =>
      'अनुरोधाः वेब्-व्यू-इत्यस्य user agent प्रयुञ्जते, यं Cloudflare परीक्षते';

  @override
  String get watchAgentCustom =>
      'स्वनिर्मितः user agent स्थापितः, अतः वेब्-व्यू तः Cloudflare-अनुमतिः निराक्रियेत';

  @override
  String get watchTestConnection => 'संयोजनं परीक्षस्व';

  @override
  String get watchSolveChallenge => 'समाधेहि';

  @override
  String watchProbeOk(int code) {
    return 'सुलभम् (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare अद्यापि परीक्षां याचते';

  @override
  String watchProbeBlocked(int code) {
    return 'जालस्थलेन निरुद्धम् (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'जालस्थलं प्राप्तुं न शक्तम्';

  @override
  String get watchClearCookies => 'अस्य जालस्थलस्य कुकीज् मार्जय';

  @override
  String get watchCookiesCleared => 'कुकीज् मार्जिताः';

  @override
  String get watchMetaSource => 'एपिसोड्-विवरणं कुतः';

  @override
  String get watchMetaAuto => 'स्वयंचालितम्';

  @override
  String get watchMetaOff => 'निष्क्रिय';

  @override
  String get playerSettingsTitle => 'प्लेयर्-सेटिंग्स्';

  @override
  String get playerSectionPlayback => 'चालनम्';

  @override
  String get playerSectionSkip => 'त्यजनम्';

  @override
  String get playerSectionGestures => 'नियन्त्रणानि';

  @override
  String get playerSectionSubtitles => 'उपशीर्षकाणि';

  @override
  String get playerSectionShaders => 'शेडर्स्';

  @override
  String get playerSectionEngine => 'इञ्जिन्';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'चालन-वेगः';

  @override
  String get playerCursedSpeed => 'अतिरिक्त-वेगाः';

  @override
  String get playerCursedSpeedDesc => 'सूचीयां १०x पर्यन्तं वेगान् योजय';

  @override
  String get playerResize => 'आकार-परिवर्तन-मोडः';

  @override
  String get playerFitFit => 'योग्यं कुरु';

  @override
  String get playerFitCover => 'आच्छादय';

  @override
  String get playerFitStretch => 'विस्तारय';

  @override
  String get playerSkipDuration => 'त्यजन-बटनस्य दैर्घ्यम्';

  @override
  String get playerSkipDurationDesc =>
      'आरम्भ-समापनगीतेभ्यः बहिः त्यजन-बटनं कति सेकण्ड्स् उत्पतति';

  @override
  String get playerSeekDuration => 'द्विःस्पर्श-अग्रे';

  @override
  String get playerSeekDurationDesc =>
      'द्विःस्पर्शेन अथवा बाण-कुञ्जिकया कति सेकण्ड्स् उत्पतनीयम्';

  @override
  String get playerAutoPlay => 'अग्रिमं स्वयं चालय';

  @override
  String get playerAutoPlayDesc => 'एषः एपिसोड् समाप्ते सति अग्रिमम् आरभस्व';

  @override
  String get playerResume => 'यत्र त्यक्तं तत्र पुनः आरभस्व';

  @override
  String get playerResumeDesc => 'एपिसोड् अन्तिम-स्थानात् अनुवर्तय';

  @override
  String get playerOrientation => 'दिशा';

  @override
  String get playerOrientationAuto => 'उपकरणम् अनुसर';

  @override
  String get playerOrientationLandscape => 'क्षैतिजम्';

  @override
  String get playerOrientationPortrait => 'ऊर्ध्वम्';

  @override
  String get playerAutoSkipOpening => 'आरम्भगीतानि त्यज';

  @override
  String get playerAutoSkipEnding => 'समापनगीतानि त्यज';

  @override
  String get playerAutoSkipRecap => 'रिकैप्स् त्यज';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip स्ट्रीम्-समय-चिह्नानि च प्रयुज्य आरम्भे एव उत्पत';

  @override
  String get playerSkipOnce => 'एकवारमेव त्यज';

  @override
  String get playerSkipOnceDesc =>
      'पुनः तत्र गच्छसि चेत् समानं भागं पुनः मा त्यज';

  @override
  String get playerAdjustBrightness => 'प्रकाश-संकेतः';

  @override
  String get playerAdjustBrightnessDesc =>
      'पटलस्य दक्षिणार्धे ऊर्ध्वम् अधः च कर्ष';

  @override
  String get playerAdjustVolume => 'ध्वनि-संकेतः';

  @override
  String get playerAdjustVolumeDesc => 'पटलस्य वामार्धे ऊर्ध्वम् अधः च कर्ष';

  @override
  String get playerHoldToSpeed => 'वेगाय धारय';

  @override
  String get playerHoldToSpeedDesc =>
      'शीघ्रं चालयितुं वीडियो धारय, वेगपरिवर्तनाय पार्श्वतः कर्ष';

  @override
  String get playerThumbless => 'स्थूला सीक्-पट्टिका';

  @override
  String get playerThumblessDesc => 'अङ्गुलि-चिह्नं विना स्थूला पट्टिका';

  @override
  String get playerShowSubtitles => 'उपशीर्षकाणि दर्शय';

  @override
  String get playerShowSubtitlesDesc =>
      'सर्वान् उपशीर्षक-मार्गान् गोपयितुं निष्क्रियं कुरु';

  @override
  String get playerSubtitleLanguage => 'प्राधान्य-उपशीर्षक-भाषा';

  @override
  String get playerSubtitleSize => 'उपशीर्षक-आकारः';

  @override
  String get playerSubtitleWeight => 'उपशीर्षक-स्थूलता';

  @override
  String get playerSubtitleBottom => 'उपशीर्षकस्य अधः अन्तरम्';

  @override
  String get playerSubtitleFont => 'उपशीर्षक-अक्षरम्';

  @override
  String get playerSubtitleColor => 'उपशीर्षक-वर्णः';

  @override
  String get playerSubtitleBackground => 'उपशीर्षक-पृष्ठभूमिः';

  @override
  String get playerSubtitleOutline => 'उपशीर्षक-रेखा';

  @override
  String get playerLibass => 'libass प्रयुङ्क्ष्व';

  @override
  String get playerLibassDesc =>
      'शैलीयुक्ताः .ass उपशीर्षकाणि चित्रय। उपरि आकारः वर्णः अक्षरं च तदा न प्रयुज्यन्ते';

  @override
  String get playerShaders => 'शेडर्स्';

  @override
  String get playerShadersEnable => 'शेडर्स् सक्रियं कुरु';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K सदृशैः GLSL शेडर्स् द्वारा चित्रं वर्धय शोधय च';

  @override
  String get playerShadersOff => 'शेडर्स् निष्क्रियाः';

  @override
  String get playerShadersMissing => 'Anime4K न स्थापितम्';

  @override
  String get playerShadersMissingDesc =>
      'अन्तर्निहित-मोडान् प्रयोक्तुं Anime4K शेडर्-पैकं (प्रायः ०.८ MB) डाउनलोड् कुरु।';

  @override
  String get playerShadersDownload => 'Anime4K डाउनलोड् कुरु';

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
  String get playerShadersPreview => 'अस्मिन् फ्रेम् मध्ये पूर्वावलोकनम्';

  @override
  String get playerShadersUse => 'इदं प्रयुङ्क्ष्व';

  @override
  String get playerPicture => 'चित्रम्';

  @override
  String get playerColors => 'वर्णाः';

  @override
  String get playerColorDefault => 'मूलभूतम्';

  @override
  String get playerColorVivid => 'उज्ज्वलम्';

  @override
  String get playerColorPop => 'अनिमे-पॉप्';

  @override
  String get playerColorSoft => 'मृदु';

  @override
  String get playerColorCinematic => 'चलचित्रवत्';

  @override
  String get playerColorBright => 'प्रकाशमयम्';

  @override
  String get playerColorNight => 'रात्रिः';

  @override
  String get playerColorMono => 'एकवर्णम्';

  @override
  String get playerColorCustom => 'स्वनिर्मितम्';

  @override
  String get playerColorBrightness => 'प्रकाशः';

  @override
  String get playerColorContrast => 'विषमता';

  @override
  String get playerColorSaturation => 'सघनता';

  @override
  String get playerColorGamma => 'गामा';

  @override
  String get playerColorHue => 'वर्णच्छटा';

  @override
  String get playerColorReset => 'पुनःस्थापय';

  @override
  String get playerColorAdjust => 'समायोजय';

  @override
  String get playerShadersOriginal => 'मूलम्';

  @override
  String get playerShadersPreviewFailed =>
      'पूर्वावलोकनार्थं फ्रेम् ग्रहीतुं न शक्तम्';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'तव शेडर्स्';

  @override
  String get playerShadersCustom => 'स्वनिर्मिताः शेडर्स्';

  @override
  String get playerShadersImport => '.glsl आनय';

  @override
  String get playerShadersNone =>
      'स्वस्य .glsl अथवा .hook फाइल्स् आनय शृङ्खलितुं च चिह्नय';

  @override
  String get playerShadersBadFile => '.glsl अथवा .hook शेडर्-फाइलं चिनु';

  @override
  String get playerDecoder => 'डीकोडर्';

  @override
  String get playerDecoderAuto => 'स्वयम्';

  @override
  String get playerDecoderAutoSafe => 'स्वयम् (सुरक्षितम्)';

  @override
  String get playerDecoderSoftware => 'सॉफ्टवेयर्';

  @override
  String get playerDecoderHardware => 'हार्डवेयर्';

  @override
  String get playerDecoderHardwarePlus => 'हार्डवेयर्+';

  @override
  String get playerVideoOutput => 'वीडियो-निर्गमः';

  @override
  String get playerAudioChannels => 'ध्वनि-मार्गाः';

  @override
  String get playerBuffer => 'बफर्-आकारः (MB)';

  @override
  String get playerBufferDesc =>
      'स्ट्रीम् बफर् कर्तुं प्लेयर् कियत् स्मृतिं प्रयोक्तुं शक्नोति';

  @override
  String get playerUseMpvConf => 'mpv.conf प्रयुङ्क्ष्व';

  @override
  String get playerUseMpvConfDesc =>
      'चालनारम्भे तव mpv.conf-विकल्पान् प्रयुङ्क्ष्व';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv-विन्यासं सम्पादय';

  @override
  String get playerMpvConfDesc =>
      'सामान्ये mpv.conf मध्ये --hwdec=auto इव प्रतिपङ्क्ति एकः विकल्पः। [कोष्ठके] प्रोफाइल्स् उपेक्ष्यन्ते।';

  @override
  String get playerMpvConfSaved => 'mpv.conf रक्षितम्';

  @override
  String get playerUseScripts => 'mpv-स्क्रिप्ट्स् प्रयुङ्क्ष्व';

  @override
  String get playerUseScriptsDesc =>
      'स्क्रिप्ट्-फोल्डरतः प्लगिन्स् आनय। तेषां कृते Lua अथवा JavaScript-समर्थनयुक्तः libmpv बिल्ड् आवश्यकः';

  @override
  String get playerScripts => 'mpv-स्क्रिप्ट्स्';

  @override
  String get playerScriptsManage => 'प्लगिन्स् योजय, अपनय, परिवर्तय च';

  @override
  String get playerScriptsAdd => 'स्क्रिप्ट् योजय';

  @override
  String get playerScriptsDesc =>
      'अत्र स्थापिताः Lua, JavaScript, नेटिव् च प्लगिन्स् चालनारम्भे आनीयन्ते।';

  @override
  String get playerScriptsNone => 'स्क्रिप्ट्स् अद्यापि न सन्ति';

  @override
  String get playerScriptsBadFile => '.lua, .js अथवा नेटिव्-प्लगिन् फाइलं चिनु';

  @override
  String get playerTuning => 'उन्नत-वीडियो-समायोजनम्';

  @override
  String get playerTuningDesc =>
      'सिङ्क्, कॅश्, स्केलिङ्, टोन्-मैपिङ् च अधिलिख। दोषयुक्तानि मूल्यानि चालनं बाधेरन्';

  @override
  String get playerVideoSync => 'वीडियो-सिङ्क्';

  @override
  String get playerInterpolation => 'फ्रेम्-इण्टर्पोलेशन्';

  @override
  String get playerInterpolationDesc =>
      'मृदु गतिः, display-resample सिङ्क् आवश्यकम्';

  @override
  String get playerPitch => 'स्वर-शोधनम्';

  @override
  String get playerPitchDesc => 'अन्यवेगेषु अपि स्वराः स्वाभाविकाः तिष्ठन्तु';

  @override
  String get playerCacheSeconds => 'कॅश् (सेकण्ड्स्)';

  @override
  String get playerReadahead => 'अग्रे पठनम् (सेकण्ड्स्)';

  @override
  String get playerThreads => 'डीकोडर्-थ्रेड्स्';

  @override
  String get playerDeband => 'डीबैण्ड्';

  @override
  String get playerDebandDesc => 'ग्रेडिएण्ट्स् मध्ये वर्णपट्टान् न्यूनीकुरु';

  @override
  String get playerDebandIterations => 'डीबैण्ड्-पुनरावृत्तयः';

  @override
  String get playerDebandThreshold => 'डीबैण्ड्-सीमा';

  @override
  String get playerCorrectDownscaling => 'सम्यक् लघूकरणम्';

  @override
  String get playerSigmoid => 'सिग्मॉयड्-वर्धनम्';

  @override
  String get playerScale => 'वर्धकः';

  @override
  String get playerCscale => 'क्रोमा-वर्धकः';

  @override
  String get playerDscale => 'लघूकारकः';

  @override
  String get playerToneMapping => 'टोन्-मैपिङ्';

  @override
  String get playerTargetPeak => 'लक्ष्य-शिखरम्';

  @override
  String get playerOpenFiles => 'वीडियो-फाइल्स् उद्घाटय';

  @override
  String get playerOpenFilesDesc => 'अस्मात् उपकरणात् फाइल्स् चालय';

  @override
  String get playerOpenFolder => 'फोल्डरं उद्घाटय';

  @override
  String get playerOpenFolderDesc =>
      'फोल्डरस्थान् सर्वान् वीडियोन् प्लेलिस्ट्-रूपेण चालय';

  @override
  String get playerNetworkStream => 'जाल-स्ट्रीम्';

  @override
  String get playerNetworkStreamDesc =>
      'साक्षात् वीडियो अथवा HLS लिङ्कं उद्घाटय';

  @override
  String get playerStreamUrl => 'स्ट्रीम् URL';

  @override
  String get playerStreamReferer => 'रेफरर् (वैकल्पिकम्)';

  @override
  String get playerTorrent => 'टोरेन्ट्';

  @override
  String get playerTorrentDesc =>
      'मैग्नेट्-लिङ्कं अथवा .torrent फाइलं स्ट्रीम् कुरु';

  @override
  String get playerMagnetLink => 'मैग्नेट्-लिङ्कः अथवा टोरेन्ट्-URL';

  @override
  String get playerPickTorrent => '.torrent फाइलं चिनु';

  @override
  String get playerTorrentMissing =>
      'पूर्वं सेटिंग्स् > ऐड्-ऑन्स् मध्ये टोरेन्ट्-ऐड्-ऑनं स्थापय';

  @override
  String get playerNoVideos => 'चालनीयाः वीडियोः न प्राप्ताः';

  @override
  String get playerReset => 'प्लेयर्-सेटिंग्स् पुनःस्थापय';

  @override
  String get playerResetDesc => 'सर्वान् प्लेयर्-विकल्पान् मूलभूतान् कुरु';

  @override
  String get playerResetConfirm => 'सर्वाणि प्लेयर्-सेटिंग्स् पुनःस्थापयसि?';

  @override
  String get playerResetDone => 'प्लेयर्-सेटिंग्स् पुनःस्थापिताः';

  @override
  String get playerQuality => 'गुणवत्ता';

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
  String get playerStreams => 'स्ट्रीम्स्';

  @override
  String get playerAutoSelect => 'स्ट्रीम् स्वयं चिनु';

  @override
  String get playerAutoSelectDesc =>
      'अस्य शीर्षकस्य कृते तव अन्तिम-चयनस्य सदृशं स्ट्रीम् चिनु';

  @override
  String get playerLoadingStreams => 'स्ट्रीम्स् अन्विष्यन्ते…';

  @override
  String get playerNoStreams => 'अस्य एपिसोड्-मध्ये स्ट्रीम्स् न सन्ति';

  @override
  String get playerNoStreamsTitle => 'स्ट्रीम्स् न प्राप्ताः';

  @override
  String get playerFailed => 'चालनं विफलम्';

  @override
  String get playerTorrentNeeded => 'एषः स्ट्रीम् टोरेन्ट् अस्ति';

  @override
  String get playerTorrentNeededDesc =>
      'मैग्नेट्-लिङ्कान् .torrent फाइल्स् च चालयितुं टोरेन्ट्-ऐड्-ऑनं स्थापय';

  @override
  String get playerOpenAddons => 'ऐड्-ऑन्स् उद्घाटय';

  @override
  String get playerTryAnotherStream => 'अन्यं स्ट्रीम् प्रयत्नं कुरु';

  @override
  String get playerEpisodes => 'एपिसोड्स्';

  @override
  String get playerLock => 'नियन्त्रणानि बधान';

  @override
  String get playerFullscreen => 'पूर्ण-पटलम्';

  @override
  String get readerChapters => 'अध्यायाः';

  @override
  String get readerSettingsTitle => 'रीडर्-सेटिंग्स्';

  @override
  String get readerPreviousChapter => 'पूर्वः अध्यायः';

  @override
  String get readerNextChapter => 'अग्रिमः अध्यायः';

  @override
  String get readerFirstChapter => 'एषः प्रथमः अध्यायः';

  @override
  String get readerLastChapter => 'त्वं सर्वं पठितवान्';

  @override
  String get readerFailed => 'इमम् अध्यायम् उद्घाटयितुं न शक्तम्';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'अस्मिन् अध्याये पाठः नास्ति';

  @override
  String get readerPerTitle => 'अस्य शीर्षकस्य कृते केवलम्';

  @override
  String get readerPerTitleDesc =>
      'एताः रीडर्-सेटिंग्स् केवलं अस्य शीर्षकस्य कृते रक्ष';

  @override
  String get readerSectionReading => 'पठनम्';

  @override
  String get readerSectionControls => 'नियन्त्रणानि';

  @override
  String get readerSectionDisplay => 'प्रदर्शनम्';

  @override
  String get readerSectionNovel => 'नॉवल्';

  @override
  String get readerMode => 'पठन-मोडः';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'दक्षिणतः वामम्';

  @override
  String get readerModeLtr => 'वामतः दक्षिणम्';

  @override
  String get readerModeVertical => 'ऊर्ध्व-पृष्ठानि';

  @override
  String get readerModeWebtoon => 'वेबटून्';

  @override
  String get readerModeContinuous => 'निरन्तर-स्क्रोल्';

  @override
  String get readerScale => 'चित्र-मापः';

  @override
  String get readerScaleFit => 'पटलानुसारं योग्यम्';

  @override
  String get readerScaleWidth => 'विस्तारानुसारं योग्यम्';

  @override
  String get readerScaleHeight => 'उच्चतानुसारं योग्यम्';

  @override
  String get readerScaleOriginal => 'मूल-आकारः';

  @override
  String get readerScaleSmart => 'चतुरं योग्यीकरणम्';

  @override
  String get readerDoublePage => 'द्वि-पृष्ठानि';

  @override
  String get readerDoublePageDesc =>
      'क्षैतिजे द्वे पृष्ठे एकस्मिन् पङ्क्तौ दर्शय';

  @override
  String get readerDoubleTapZoom => 'द्विःस्पर्शेन ज़ूम्';

  @override
  String get readerDoubleTapZoomDesc => 'द्विःस्पर्शेन पृष्ठं वर्धय लघूकुरु च';

  @override
  String get readerAnimate => 'पृष्ठ-एनिमेशन्';

  @override
  String get readerAnimateDesc => 'पृष्ठ-परिवर्तनं सचलं कुरु';

  @override
  String get readerSidePadding => 'पार्श्व-अन्तरम्';

  @override
  String get readerSidePaddingDesc => 'पृष्ठानां पार्श्वे स्थानं शतांशे';

  @override
  String get readerPageGap => 'पृष्ठान्तरम्';

  @override
  String get readerPageGapDesc => 'पृष्ठयोः मध्ये स्थानम्';

  @override
  String get readerAutoNext => 'अग्रिमे अध्याये अनुवर्तय';

  @override
  String get readerAutoNextDesc =>
      'अस्य अध्यायस्य अन्तं पठन् अग्रिमम् अध्यायम् आनय';

  @override
  String get readerPreload => 'पृष्ठानि पूर्वम् आनय';

  @override
  String get readerPreloadDesc => 'कति पृष्ठानि पूर्वं डाउनलोड् कर्तव्यानि';

  @override
  String get readerTapZones => 'स्पर्श-क्षेत्राणि';

  @override
  String get readerTapDefault => 'मूलभूतम्';

  @override
  String get readerTapLShaped => 'L-आकारम्';

  @override
  String get readerTapKindle => 'Kindle-सदृशम्';

  @override
  String get readerTapEdge => 'केवलं प्रान्ताः';

  @override
  String get readerTapOff => 'निष्क्रियम्';

  @override
  String get readerInvertTaps => 'स्पर्श-क्षेत्राणि विपरीतानि कुरु';

  @override
  String get readerInvertTapsDesc => 'पूर्व-अग्रिम-क्षेत्रे परिवर्तय';

  @override
  String get readerBackground => 'पृष्ठभूमिः';

  @override
  String get readerBackgroundBlack => 'कृष्णम्';

  @override
  String get readerBackgroundGray => 'धूसरम्';

  @override
  String get readerBackgroundWhite => 'श्वेतम्';

  @override
  String get readerBackgroundTheme => 'ऐप्-थीम्';

  @override
  String get readerFilter => 'वर्ण-छानकम्';

  @override
  String get readerFilterNone => 'किमपि न';

  @override
  String get readerFilterGrayscale => 'धूसरस्तरः';

  @override
  String get readerFilterInvert => 'विपरीतम्';

  @override
  String get readerFilterSepia => 'सीपिया';

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
  String get readerDim => 'मन्दय';

  @override
  String get readerDimDesc => 'पृष्ठानि अन्धकारय';

  @override
  String get readerPageNumber => 'पृष्ठ-सङ्ख्या';

  @override
  String get readerPageNumberDesc => 'पठन्ती समये पृष्ठ-सङ्ख्यां दर्शय';

  @override
  String get readerFullscreen => 'पूर्ण-पटलम्';

  @override
  String get readerFullscreenDesc => 'सिस्टम्-पट्टिकाः गोपय';

  @override
  String get readerCropBorders => 'प्रान्तान् कर्तय';

  @override
  String get readerCropBordersDesc =>
      'पृष्ठेभ्यः रिक्तान् श्वेतान् कृष्णान् वा प्रान्तान् कर्तय';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'ध्वनि-कुञ्जिकाभिः पृष्ठं परिवर्तय';

  @override
  String get readerVolumeKeysDesc => 'ध्वनि-अधः अग्रे, ध्वनि-उपरि पृष्ठतः';

  @override
  String get readerBookmarks => 'पृष्ठचिह्नानि';

  @override
  String get readerBookmarkAdd => 'पृष्ठचिह्नं योजय';

  @override
  String get readerBookmarkRemove => 'पृष्ठचिह्नम् अपनय';

  @override
  String get readerBookmarksEmpty => 'पृष्ठचिह्नानि अद्यापि न सन्ति';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'पृष्ठं $page / $total';
  }

  @override
  String get readerAutoScroll => 'स्वयं-स्क्रोल्';

  @override
  String get readerAutoScrollStop => 'स्वयं-स्क्रोल् निरुन्धि';

  @override
  String get readerAutoScrollSpeed => 'स्वयं-स्क्रोल्-वेगः';

  @override
  String get readerAutoScrollSpeedDesc =>
      'पृष्ठानि स्वयं कियता वेगेन स्क्रोल् भवन्ति परिवर्तन्ते वा';

  @override
  String get readerKeepOn => 'पटलं प्रज्वलितं रक्ष';

  @override
  String get readerKeepOnDesc => 'पठन्ती समये पटलं निर्वापितं मा भवतु';

  @override
  String get readerOrientation => 'दिशा';

  @override
  String get readerOrientationFree => 'मुक्तम्';

  @override
  String get readerOrientationPortrait => 'ऊर्ध्वम्';

  @override
  String get readerOrientationLandscape => 'क्षैतिजम्';

  @override
  String get readerSaveProgress => 'प्रगतिं रक्ष';

  @override
  String get readerSaveProgressDesc =>
      'तव पृष्ठं स्मर अध्यायान् च पठितान् चिह्नय';

  @override
  String get readerReset => 'रीडर्-सेटिंग्स् पुनःस्थापय';

  @override
  String get readerResetDesc => 'मूलभूतानि प्रति प्रत्यागच्छ';

  @override
  String get novelSize => 'पाठ-आकारः';

  @override
  String get novelFont => 'अक्षरशैली';

  @override
  String get novelLineHeight => 'पङ्क्ति-उच्चता';

  @override
  String get novelParagraph => 'अनुच्छेद-अन्तरम्';

  @override
  String get novelMargin => 'प्रान्ताः';

  @override
  String get novelTheme => 'रीडर्-थीम्';

  @override
  String get novelThemeApp => 'ऐप्-थीम्';

  @override
  String get novelThemeLight => 'प्रकाशः';

  @override
  String get novelThemeSepia => 'सीपिया';

  @override
  String get novelThemeDark => 'अन्धकारः';

  @override
  String get novelThemeBlack => 'कृष्णम्';

  @override
  String get novelJustify => 'पाठं समायोजय';

  @override
  String get novelJustifyDesc => 'पाठम् उभयप्रान्तयोः समं कुरु';

  @override
  String get trackProgressTitle => 'प्रगतिं रक्षसि?';

  @override
  String trackProgressAnime(String name) {
    return 'पश्यन्ती समये $name तव सूचीयां अनुसर्तव्यं वा? केवलं स्थानीयं रक्षितुं \"केवलम् अस्मिन् उपकरणे\" चिनु, किमपि न रक्षितुं न इति चिनु।';
  }

  @override
  String trackProgressManga(String name) {
    return 'अध्यायं समाप्य $name तव सूचीयां अनुसर्तव्यं वा? केवलं स्थानीयं रक्षितुं \"केवलम् अस्मिन् उपकरणे\" चिनु, किमपि न रक्षितुं न इति चिनु।';
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
  String get trackProgressYes => 'रक्ष';

  @override
  String get trackProgressReset =>
      'अस्य प्रकारस्य प्रगति-रक्षण-प्रश्नः पुनःस्थापितः, पुनः प्रक्ष्यति';

  @override
  String get trackProgressNo => 'न';

  @override
  String get trackProgressOff => 'निष्क्रिय';

  @override
  String get trackProgressLocal => 'केवलम् अस्मिन् उपकरणे';

  @override
  String get trackProgressSettingAnime => 'अनिमे-प्रगतिम् अनुसर';

  @override
  String get trackProgressSettingManga => 'मांगा-नॉवल्-प्रगतिम् अनुसर';

  @override
  String get trackProgressSettingDesc =>
      'एपिसोड् उद्घाटिते अध्याये समाप्ते वा किं कर्तव्यम्';

  @override
  String get trackProgressAsk => 'पृच्छ';

  @override
  String get trackProgressAlways => 'सर्वदा';

  @override
  String get dantotsuImport => 'Dantotsu तः आनय';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu-सेटिंग्स्-बैकप् पठ (.ani, अथवा गूढलिखितं .sani)';

  @override
  String get dantotsuPick => 'Dantotsu-बैकप् चिनु';

  @override
  String get dantotsuNothing => 'अस्यां फाइल् मध्ये आनेतुं किमपि नास्ति';

  @override
  String get dantotsuApply => 'चितान् आनय';

  @override
  String dantotsuDone(int done, int total) {
    return '$total मध्ये $done आनीताः';
  }

  @override
  String get dantotsuGroupAccounts => 'खातानि';

  @override
  String get dantotsuGroupAppearance => 'रूपम्';

  @override
  String get dantotsuGroupExtensions => 'एक्स्टेंशन्स्';

  @override
  String get dantotsuGroupApp => 'ऐप्';

  @override
  String get dantotsuGroupPlayer => 'प्लेयर्';

  @override
  String get dantotsuAnilist => 'AniList लॉगिन';

  @override
  String get dantotsuMal => 'MyAnimeList लॉगिन';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence टोकन्';

  @override
  String get dantotsuTheme => 'थीम्';

  @override
  String get dantotsuReposAnime => 'अनिमे-एक्स्टेंशन्-भण्डाराः';

  @override
  String get dantotsuReposManga => 'मांगा-एक्स्टेंशन्-भण्डाराः';

  @override
  String get dantotsuReposNovel => 'नॉवल्-एक्स्टेंशन्-भण्डाराः';

  @override
  String get dantotsuUpdates => 'अद्यतन-परीक्षा';

  @override
  String get dantotsuComments => 'टिप्पण्यः';

  @override
  String get dantotsuActivity => 'AniList सूचना-पोलिङ्';

  @override
  String get dantotsuDns => 'DNS प्रदाता';

  @override
  String get dantotsuPlayer => 'प्लेयर्-वेगः उपशीर्षक-वर्णाः च';

  @override
  String get dantotsuWarning =>
      'अस्यां फाइल् मध्ये लॉगिन्-टोकन्स् सन्ति। इमां गुप्तां रक्ष।';

  @override
  String get novelIndent => 'अनुच्छेदान् अन्तःसारय';

  @override
  String get novelIndentDesc =>
      'प्रत्येकम् अनुच्छेदं प्रथम-पङ्क्ति-अन्तःसारणेन आरभस्व';

  @override
  String get novelLetterSpacing => 'अक्षरान्तरम्';

  @override
  String get novelSectionTranslate => 'अनुवादः';

  @override
  String get sectionExperimental => 'प्रायोगिकम्';

  @override
  String get kitsuGraphqlDetail => 'द्रुततराणि विवरणपृष्ठानि (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'शीर्षकं तस्य पात्रैः दलेन तव प्रविष्ट्या च सह एकेन अनुरोधेन आनय';

  @override
  String get togetherTitle => 'सह पश्य';

  @override
  String get togetherIntro =>
      'तव मित्रेण प्रेषितं कक्ष-लिङ्कं स्थापय। त्वं तत्क्षणं संयुज्यसे, सः पश्यति चेत् प्लेयर् उद्घाट्यते।';

  @override
  String get togetherName => 'तव नाम';

  @override
  String get togetherConnecting => 'संयोज्यते…';

  @override
  String get togetherLeave => 'कक्षं त्यज';

  @override
  String get togetherYou => 'त्वम्';

  @override
  String get togetherNoChat => 'सन्देशाः अद्यापि न सन्ति';

  @override
  String get togetherChatHint => 'सन्देशः';

  @override
  String get togetherCopyInvite => 'आमन्त्रणं प्रतिलिख';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'सर्वरः कक्षः च प्रतिलिखितौ';

  @override
  String get togetherConnectionLost => 'संयोजनं नष्टम्';

  @override
  String togetherConnectedTo(String room) {
    return '$room प्रति संयुक्तः';
  }

  @override
  String togetherFailed(String error) {
    return 'संयोजयितुं न शक्तम्: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name संयुक्तः';
  }

  @override
  String togetherLeft(String name) {
    return '$name निर्गतः';
  }

  @override
  String togetherPaused(String name) {
    return '$name विरामं कृतवान्';
  }

  @override
  String togetherResumed(String name) {
    return '$name पुनः आरब्धवान्';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time प्रति उत्पतितवान्';
  }

  @override
  String get togetherFollowFailed =>
      'होस्ट्-एपिसोड् उद्घाटयितुं न शक्तम्। स्वयम् उद्घाटय।';

  @override
  String get togetherJoinRole => 'कक्षे संयुज्यस्व';

  @override
  String get togetherOpenHost => 'होस्ट्-एपिसोड् उद्घाटय';

  @override
  String get togetherShowChat => 'सजीव-चैट् दर्शय';

  @override
  String get togetherWaitingHost => 'होस्ट् एपिसोड् आरभताम् इति प्रतीक्षा';

  @override
  String get togetherRoomLink => 'कक्ष-लिङ्कः';

  @override
  String get togetherBadLink => 'एषः कक्ष-लिङ्कः न अस्ति';

  @override
  String get togetherHostClosed => 'होस्ट् कक्षं पिहितवान्';

  @override
  String get togetherNowPlaying => 'इदानीं चलति';

  @override
  String togetherWatchingCount(int count) {
    return '$count पश्यन्ति';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user विरामं कर्तुम् इच्छति';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user पुनः आरब्धुम् इच्छति';
  }

  @override
  String get togetherChip => 'सह';

  @override
  String get togetherSettingsDesc => 'मित्रस्य कक्षे लिङ्केन संयुज्यस्व';

  @override
  String get novelBilingual => 'मूलम् अनुवादं च दर्शय';

  @override
  String get novelBilingualDesc =>
      'प्रत्येकः अनुच्छेदः मूलपाठं तस्य अधः अनुवादं च दर्शयति';

  @override
  String get novelTranslateTo => 'एतत् प्रति अनुवादय';

  @override
  String get novelTranslateOff => 'निष्क्रिय';

  @override
  String get novelSectionSpeech => 'पाठतः वाणी';

  @override
  String get novelSpeechRate => 'वाणी-वेगः';

  @override
  String get novelSpeechPitch => 'वाणी-स्वरः';

  @override
  String get novelSpeak => 'उच्चैः पठ';

  @override
  String get novelSpeakStop => 'उच्चैः पठनं निरुन्धि';

  @override
  String get novelTranslate => 'अध्यायम् अनुवादय';

  @override
  String get novelTranslateShowOriginal => 'मूलं दर्शय';

  @override
  String novelTranslateFailed(String error) {
    return 'अनुवादः विफलः: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'अस्मिन् उपकरणे पाठतः वाणी उपलब्धा नास्ति';

  @override
  String get novelSpeechVoice => 'स्वरः';

  @override
  String get novelSpeechVoiceDefault => 'सिस्टम्-मूलभूतम्';

  @override
  String get novelSpeakPrevious => 'पूर्वा पङ्क्तिः';

  @override
  String get novelSpeakNext => 'अग्रिमा पङ्क्तिः';

  @override
  String get novelTapPaging => 'पृष्ठ-परिवर्तनाय प्रान्तौ स्पृश';

  @override
  String get novelTapPagingDesc =>
      'पृष्ठं स्क्रोल् कर्तुं वामं दक्षिणं वा पार्श्वं स्पृश, मध्यं नियन्त्रणानि दर्शयति';

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
    return '$count मिनिट्स् शेषाः';
  }

  @override
  String get novelBold => 'स्थूल-पाठः';

  @override
  String get novelBoldDesc => 'स्थूलतरं भारं प्रयुङ्क्ष्व';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter समाप्तम्';
  }

  @override
  String readerNextUp(String chapter) {
    return 'अग्रिमम्: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'पूर्वम्: $chapter';
  }

  @override
  String get readerNoPages => 'अस्मिन् अध्याये पृष्ठानि न सन्ति';

  @override
  String get readerLoadingPages => 'पृष्ठानि आनीयन्ते…';

  @override
  String get readerSlowPage => 'इदं पृष्ठम् अद्यापि आनीयते…';

  @override
  String get readerPageFailed => 'इदं पृष्ठम् आनेतुं न शक्तम्';

  @override
  String get playerShowComments => 'टिप्पण्यः दर्शय';

  @override
  String get playerHideComments => 'टिप्पण्यः गोपय';

  @override
  String get playerSubtitles => 'उपशीर्षकाणि';

  @override
  String get playerSubtitlesOff => 'उपशीर्षकाणि निष्क्रियानि';

  @override
  String get playerAudio => 'ध्वनिः';

  @override
  String get playerAddSubtitle => 'उपशीर्षक-फाइलं योजय';

  @override
  String get playerAddAudio => 'ध्वनि-फाइलं योजय';

  @override
  String get playerChapters => 'अध्यायाः';

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
  String get playerNoChapters => 'अध्यायाः न सन्ति';

  @override
  String get playerTimestamp => 'समय-चिह्नम्';

  @override
  String get playerAutoPlayDelay => 'अग्रिम-एपिसोड्-गणना';

  @override
  String get playerWatchedAt => 'एतस्मिन् समये दृष्टम् इति गणय';

  @override
  String playerNextIn(int seconds) {
    return 'अग्रिम एपिसोड् ${seconds}s मध्ये';
  }

  @override
  String get playerPlayNow => 'इदानीं चालय';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: अस्य शीर्षकस्य कृते स्वयं त्यक्ष्यति';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: अस्य शीर्षकस्य कृते स्वयं न त्यक्ष्यति';
  }

  @override
  String get playerAudioLanguage => 'प्राधान्य-ध्वनि-भाषा';

  @override
  String get playerLanguageOrderHint =>
      'भाषाः अल्पविरामैः पृथक् कुरु। प्रथमा प्राप्ता प्रयुज्यते।';

  @override
  String get playerPip => 'चित्रे चित्रम्';

  @override
  String get playerAutoPip => 'निर्गमने चित्रे चित्रम्';

  @override
  String get playerAutoPipDesc =>
      'ऐप्तः निर्गते सति लघु-वातायने चालनं अनुवर्तय';

  @override
  String playerAutoPlaying(String title) {
    return 'अग्रे $title चाल्यते…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'शेडर्स् स्थापयितुं न शक्तम्: $error';
  }

  @override
  String playerChapter(int number) {
    return 'अध्यायः $number';
  }

  @override
  String get playerPerTitle => 'अस्य शीर्षकस्य कृते केवलम्';

  @override
  String get playerPerTitleDesc =>
      'एतान् विकल्पान् अस्य शीर्षकस्य कृते रक्ष तव मूलभूतानि अस्पृष्टानि तिष्ठन्तु';

  @override
  String get playerSwapGestures => 'स्वाइप्-पार्श्वौ विनिमयतु';

  @override
  String get playerSwapGesturesDesc => 'वामतः दीप्तिः दक्षिणतः ध्वनिमानं च';

  @override
  String get playerOpenBig => 'बृहद्दृश्ये उद्घाटयतु';

  @override
  String get playerOpenBigDesc => 'भागसूचीं विना प्लेयरं पूर्णपटले आरभताम्';

  @override
  String get playerPauseOnBlur => 'ध्यानाभावे विरमतु';

  @override
  String get playerPauseOnBlurDesc =>
      'सूचनाफलकवत् एप् आच्छादिते विरमतु, पुनरागमने च प्रचलतु';

  @override
  String get playerAudioOutput => 'ध्वनि-निर्गमः';

  @override
  String get fontAppDefault => 'ऐप्-अक्षरशैली';

  @override
  String get fontImport => 'अक्षरं आनय';

  @override
  String get fontSample => 'शीघ्रः धूसरः शृगालः आलसं श्वानम् उल्लङ्घते';

  @override
  String get playerSubtitleDelay => 'उपशीर्षक-विलम्बः';

  @override
  String get playerAudioDelay => 'ध्वनि-विलम्बः';

  @override
  String get playerDelayReset => 'पुनःस्थापय';

  @override
  String get playerOnlineSubtitles => 'जाल-उपशीर्षकाणि';

  @override
  String get playerOnlineSearchHint => 'शीर्षकम् एपिसोड् च';

  @override
  String get playerOnlineNone => 'उपशीर्षकाणि न प्राप्तानि';

  @override
  String playerOnlineFailed(String error) {
    return 'उपशीर्षक-अन्वेषणं विफलम्: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'इदम् उपशीर्षकं डाउनलोड् कर्तुं न शक्तम्: $error';
  }

  @override
  String get playerOnlineMatch => 'अस्याः फाइलेन सह मेलति';

  @override
  String get playerOnlineEpisode => 'एपिसोड्-मेलनम्';

  @override
  String playerOnlineDownloads(int count) {
    return '$count डाउनलोड्स्';
  }

  @override
  String get playerSeekPreview => 'सीक्-पूर्वावलोकनम्';

  @override
  String get playerSeekPreviewDesc =>
      'कर्षणसमये सीक्-पट्टिकायाः उपरि लघु फ्रेम्-पूर्वावलोकनं दर्शय। द्वितीयं न्यून-रिजोल्यूशन्-डीकोडर् उद्घाटयति, अतः स्ट्रीम्स् मध्ये अधिकं दत्तांशं प्रयुङ्क्ते।';

  @override
  String get playerSettingsChip => 'सेटिंग्स्';

  @override
  String get playerAudioDevice => 'ध्वनि-उपकरणम्';

  @override
  String get settingsDownloads => 'डाउनलोड्स्';

  @override
  String get settingsDownloadsDesc =>
      'ऑफलाइन्-एपिसोड्स्, पङ्क्तिः, ऑफलाइन्-मोडः च';

  @override
  String get downloadsTitle => 'डाउनलोड्स्';

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
      'पङ्क्तिं अस्मिन् उपकरणे रक्षितं सर्वं च पश्य';

  @override
  String get downloadTitle => 'डाउनलोड्';

  @override
  String get downloadAlready => 'पूर्वमेव डाउनलोडितम् अथवा पङ्क्तौ';

  @override
  String get downloadPickStream => 'कः स्ट्रीम् डाउनलोड् कर्तव्यः?';

  @override
  String get downloadPickSubtitle => 'कानि उपशीर्षकाणि डाउनलोड् कर्तव्यानि?';

  @override
  String get downloadPickAudio => 'कः ध्वनि-मार्गः डाउनलोड् कर्तव्यः?';

  @override
  String get downloadNoAudio => 'अतिरिक्त-ध्वनिः नास्ति';

  @override
  String get downloadAudio => 'ध्वनिः';

  @override
  String get downloadNoSubtitle => 'उपशीर्षकं नास्ति';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'एषः स्ट्रीम् HLS प्लेलिस्ट् अस्ति। तं डाउनलोड् कर्तुं FFmpeg ऐड्-ऑन् आवश्यकम्।';

  @override
  String get downloadSourceMissing => 'अस्य एपिसोड्-स्रोतः न स्थापितः';

  @override
  String get downloadWaitingConnection => 'संयोजनस्य प्रतीक्षा';

  @override
  String get downloadSubtitles => 'उपशीर्षकाणि';

  @override
  String get downloadDownloaded => 'डाउनलोडितम्';

  @override
  String get downloadOffline => 'ऑफलाइन्';

  @override
  String get downloadDelete => 'डाउनलोड् मार्जय';

  @override
  String get downloadCancel => 'रद्द कुरु';

  @override
  String get downloadPause => 'विरामय';

  @override
  String get downloadPaused => 'विरामे';

  @override
  String get downloadResume => 'पुनः आरभस्व';

  @override
  String get downloadPauseAll => 'सर्वं विरामय';

  @override
  String get downloadResumeAll => 'सर्वं पुनः आरभस्व';

  @override
  String get downloadQueuedState => 'पङ्क्तौ प्रतीक्षा';

  @override
  String get downloadResolving => 'स्ट्रीम् प्राप्यते…';

  @override
  String get downloadUsedFallback =>
      'मेलनशीलः स्ट्रीम् नास्ति, प्रथमः प्रयुक्तः';

  @override
  String get downloadTabQueue => 'पङ्क्तिः';

  @override
  String get downloadTabDone => 'समाप्तम्';

  @override
  String get downloadTabFailed => 'विफलम्';

  @override
  String get downloadEmptyQueue => 'किमपि डाउनलोड् न भवति';

  @override
  String get downloadEmptyDone => 'अद्यापि किमपि डाउनलोड् न कृतम्';

  @override
  String get downloadEmptyFailed => 'विफलाः डाउनलोड्स् न सन्ति';

  @override
  String get downloadNext => 'अग्रिम एपिसोड्';

  @override
  String downloadNextN(int count) {
    return 'अग्रिमाः $count एपिसोड्स्';
  }

  @override
  String downloadUnwatched(int count) {
    return 'सर्वे अदृष्टाः ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'अयं परिसरः ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'सर्वे एपिसोड्स् ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड्स् पङ्क्तौ',
      one: '१ एपिसोड् पङ्क्तौ',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name डाउनलोडितम्';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name डाउनलोड् विफलम्';
  }

  @override
  String downloadStorage(String size) {
    return 'डाउनलोड्स्-द्वारा $size प्रयुक्तम्';
  }

  @override
  String get downloadQueueHeader => 'पङ्क्तिः';

  @override
  String get downloadParallel => 'एकदा डाउनलोड्स्';

  @override
  String get downloadParallelDesc => 'एकैकं डाउनलोड् चालय अथवा बहूनि सह';

  @override
  String get downloadOneByOne => 'एकैकम्';

  @override
  String get downloadNotifications => 'डाउनलोड्-सूचनाः';

  @override
  String get downloadNotificationsDesc =>
      'यत्र सिस्टम् समर्थयति तत्र सजीव-प्रगतिः, अन्यथा डाउनलोड् समाप्ते सूचना';

  @override
  String get downloadNotifyLive => 'सजीवम्';

  @override
  String get downloadNotifyDone => 'समाप्ते सति';

  @override
  String get downloadNotifyOff => 'निष्क्रिय';

  @override
  String get downloadInfoFile => 'प्रत्येकस्य डाउनलोड्-पार्श्वे info-फाइलं लिख';

  @override
  String get downloadInfoFileDesc =>
      'स्ट्रीम्, गुणवत्ता, उपशीर्षकं त्यजन-समयाः च लघौ .json फाइल् मध्ये रक्षति';

  @override
  String get offlineHeader => 'ऑफलाइन्';

  @override
  String get offlineModeDesc =>
      'ऐप् संयोजनं विना आरभ्यते चेत् एव स्वयम् ऑफलाइन् भवति। सर्वदा यावत् त्वं न परिवर्तयसि तावत् ऑफलाइन् तिष्ठति।';

  @override
  String get offlineModeOff => 'निष्क्रिय';

  @override
  String get offlineModeAlways => 'सर्वदा';

  @override
  String get offlineModeOn =>
      'ऑफलाइन्-मोडः सक्रियः। परिवर्तनानि अत्र रक्ष्यन्ते पुनः ऑनलाइन् सति प्रेष्यन्ते च।';

  @override
  String get offlineSaved =>
      'अस्मिन् उपकरणे रक्षितम्, ऑनलाइन् सति समकालीनं भविष्यति';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिवर्तनानि समकालीनानि',
      one: '१ परिवर्तनं समकालीनम्',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिवर्तनानि समकालीनीकरणाय प्रतीक्षन्ते',
      one: '१ परिवर्तनं समकालीनीकरणाय प्रतीक्षते',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'समकालीनीकरणाय प्रतीक्षमाणानि परिवर्तनानि';

  @override
  String get offlinePendingNone => 'किमपि न प्रतीक्षते';

  @override
  String get offlineSyncNow => 'इदानीं समकालीनं कुरु';

  @override
  String get offlineDiscard => 'परित्यज';

  @override
  String get downloadNotOffline =>
      'एषः एपिसोड् डाउनलोडितः नास्ति, अतः ऑफलाइन् उपलब्धः नास्ति';

  @override
  String get offlineModeChip => 'ऑफलाइन्';

  @override
  String get downloadNextChapter => 'अग्रिमः अध्यायः';

  @override
  String downloadNextChapters(int count) {
    return 'अग्रिमाः $count अध्यायाः';
  }

  @override
  String downloadUnread(int count) {
    return 'सर्वे अपठिताः ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'सर्वे अध्यायाः ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total पृष्ठानि';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count पृष्ठानि';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ऐड्-ऑन् आवश्यकम्';

  @override
  String get downloadFfmpegBody =>
      'एषः स्ट्रीम् HLS प्लेलिस्ट् अस्ति। FFmpeg ऐड्-ऑन् तस्य खण्डान् एकां mp4 फाइल् मध्ये योजयति। तं विना खण्डाः एपिसोड्-फोल्डरे तिष्ठन्ति ततः एव चाल्यन्ते।';

  @override
  String get downloadFfmpegInstall => 'स्थापय';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg स्थाप्यते, किञ्चित् कालः भवेत्…';

  @override
  String get downloadFinishing => 'खण्डाः एकां फाइल् मध्ये योज्यन्ते…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total खण्डाः';
  }

  @override
  String get downloadTorrentNoFile =>
      'टोरेन्ट् मध्ये डाउनलोड् कर्तुं वीडियो-फाइल् नास्ति';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तूनि डाउनलोड् भवन्ति',
      one: '१ वस्तु डाउनलोड् भवति',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'दृष्टानि डाउनलोड्स् मार्जय';

  @override
  String get downloadAutoDeleteDesc =>
      'तव प्रगतिः तं एपिसोड् अध्यायं वा प्राप्नोति चेत् डाउनलोड् अपनय';

  @override
  String get downloadConnections => 'प्रति डाउनलोड् संयोजनानि';

  @override
  String get downloadConnectionsDesc =>
      'बृहतीं फाइलं युगपत् आनीतेषु खण्डेषु विभजति। केचन सर्वराः एतत् सीमितं कुर्वन्ति।';

  @override
  String get downloadPlayChoice => 'तः चालय';

  @override
  String get downloadPlayLocalDesc => 'अस्मिन् उपकरणे रक्षिता फाइल्';

  @override
  String get downloadPlayStream => 'ऑनलाइन् स्ट्रीम्';

  @override
  String get downloadPlayStreamDesc => 'स्रोततः एपिसोड् आनय';

  @override
  String get offlineFeedTitle => 'अस्मिन् उपकरणे डाउनलोडितम्';

  @override
  String get offlineFeedEmpty =>
      'ऑनलाइन् सति किमपि डाउनलोड् कुरु तद् अत्र दृश्यते';

  @override
  String get offlineEnabled => 'ऑफलाइन्-मोडः सक्रियः';

  @override
  String get offlineDisabled => 'ऑफलाइन्-मोडः निष्क्रियः';

  @override
  String get downloadReadChoice => 'तः पठ';

  @override
  String get downloadReadLocalDesc => 'अस्मिन् उपकरणे रक्षितानि पृष्ठानि';

  @override
  String get downloadReadOnline => 'ऑनलाइन् पठ';

  @override
  String get downloadReadOnlineDesc => 'स्रोततः अध्यायम् आनय';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name अस्मात् उपकरणात् मार्जयसि?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name डाउनलोड् रद्दं करोषि? यत् पूर्वमेव डाउनलोडितं तत् मार्ज्यते।';
  }

  @override
  String get downloadFfmpegFolder => 'फोल्डर्-रूपेण रक्ष';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'यानि $count परिवर्तनानि कदापि न प्रेषितानि तानि परित्यजसि? एतत् पूर्ववत् कर्तुं न शक्यते।',
      one:
          'यत् परिवर्तनं कदापि न प्रेषितं तत् परित्यजसि? एतत् पूर्ववत् कर्तुं न शक्यते।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi प्रतीक्षा';

  @override
  String get downloadWaitingMetered => 'सीमित-संयोजने विरामे';

  @override
  String get downloadWifiOnly => 'केवलं Wi-Fi';

  @override
  String get downloadWifiOnlyDesc =>
      'मोबाइल्-दत्तांशे सति डाउनलोड्स् प्रतीक्षन्ते';

  @override
  String get downloadMetered => 'सीमित-संयोजनेषु विरामय';

  @override
  String get downloadMeteredDesc =>
      'तव उपकरणं यं Wi-Fi सीमितं चिह्नयति तत्रापि प्रतीक्षते';

  @override
  String get downloadSpeedLimit => 'वेग-सीमा';

  @override
  String get downloadSpeedLimitDesc => 'कुल-डाउनलोड्-वेगं सीमितं करोति';

  @override
  String get downloadUnlimited => 'असीमितम्';

  @override
  String get downloadMoveToTop => 'उपरि नय';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds सीड्स् · $peers पीयर्स्';
  }

  @override
  String get downloadTorrentFile => 'का फाइल्?';

  @override
  String get downloadTorrentAuto => 'एपिसोड् स्वयं मेलय';

  @override
  String get downloadTorrentLoading => 'टोरेन्ट् पठ्यते…';

  @override
  String get watchAutoSource => 'अग्रिमं स्रोतः स्वयं परिवर्तय';

  @override
  String get watchAutoSourceDesc =>
      'स्रोतः शीर्षकं न प्राप्नोति आनेतुं वा विफलः चेत् अग्रिमं स्थापितं स्रोतः प्रयत्नं कुरु';

  @override
  String get extensionTest => 'एक्स्टेंशन्स् परीक्षस्व';

  @override
  String get extensionTestCopy => 'विफलताः तेषां लॉग्स् च प्रतिलिख';

  @override
  String get extensionTestQuery => 'अन्वेषण-पदम्';

  @override
  String get extensionTestRun => 'चालय';

  @override
  String get extensionTestStop => 'निरुन्धि';

  @override
  String get extensionTestNone =>
      'अस्य प्रकारस्य स्थापिताः एक्स्टेंशन्स् न सन्ति';

  @override
  String get extensionTestNotRun => 'अद्यापि न परीक्षितम्';

  @override
  String get extensionTestSearch => 'अन्वेषणम्';

  @override
  String get extensionTestDetail => 'विवरणम्';

  @override
  String get extensionTestUnits => 'एपिसोड्स् / अध्यायाः';

  @override
  String get extensionTestLinks => 'स्ट्रीम्स् / पृष्ठानि';

  @override
  String extensionTestFailedAt(String step) {
    return '$step मध्ये विफलम्';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total मध्ये $done परीक्षितानि · $passed उत्तीर्णानि · $failed विफलानि';
  }

  @override
  String get extensionTestCopyLogs => 'सर्वं पूर्ण-लॉग्स् सह प्रतिलिख';

  @override
  String get onboardingFeaturesTitle => 'सर्वं एकत्र';

  @override
  String get onboardingFeaturesBody =>
      'यत् किमपि त्वम् अनुसरसि पश्यसि पठसि च, ऐप्स् मध्ये भ्रमणं विना।';

  @override
  String get onboardingFeatureTrack => 'सर्वम् अनुसर';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu, MangaBaka च मध्ये सूचयः प्रगतिः अङ्काः च।';

  @override
  String get onboardingFeatureWatch => 'पश्य पठ च';

  @override
  String get onboardingFeatureWatchDesc =>
      'एक्स्टेंशन्स् स्थापय अनिमे स्ट्रीम् कुरु अथवा मांगा नॉवल्स् च ऐप् मध्ये एव पठ।';

  @override
  String get onboardingFeatureOffline => 'ऑफलाइन् नय';

  @override
  String get onboardingFeatureOfflineDesc =>
      'एपिसोड्स् अध्यायान् च डाउनलोड् कुरु संयोजनं विना अपि अनुवर्तय।';

  @override
  String get onboardingFeatureSync => 'सूचीः समकालीनाः रक्ष';

  @override
  String get onboardingFeatureSyncDesc =>
      'सेवासु स्वसूचीं प्रतिबिम्बय, अथवा यः अग्रे सः विजयताम्।';

  @override
  String get onboardingServices => 'सह कार्यं करोति';

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
