// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'अ‍ॅनिमे आणि मांगा ट्रॅक करायला\nनवं बेस्ट अ‍ॅप';

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
  String get loadMore => 'आणखी लोड कर';

  @override
  String get login => 'लॉगिन';

  @override
  String get continueAsGuest => 'गेस्ट म्हणून पुढे जा';

  @override
  String get getStarted => 'सुरू करूया';

  @override
  String get loginWithToken => 'टोकनने लॉगिन कर';

  @override
  String get pasteTokenHint => 'तुझा अ‍ॅक्सेस टोकन पेस्ट कर';

  @override
  String loginTo(String service) {
    return '$service मध्ये लॉगिन कर';
  }

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get account => 'अकाउंट';

  @override
  String get about => 'अ‍ॅपबद्दल';

  @override
  String get language => 'भाषा';

  @override
  String get animationSpeed => 'अ‍ॅनिमेशन्स';

  @override
  String get animationSpeedDesc =>
      'अ‍ॅपमधल्या ट्रान्झिशन्स आणि एंट्री इफेक्ट्सचा वेग';

  @override
  String get animationSpeedOff => 'बंद';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एक्सटेंशन्स',
      one: 'एक्सटेंशन',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'अज्ञात सोर्स';

  @override
  String get install => 'इन्स्टॉल कर';

  @override
  String get update => 'अपडेट कर';

  @override
  String get uninstall => 'अनइन्स्टॉल कर';

  @override
  String get updateInstallCancelled =>
      'इन्स्टॉल रद्द झालं. इन्स्टॉल केलेल्या अ‍ॅपशी कॉन्फ्लिक्ट होतोय असं Android ने सांगितलं, तर सिग्नेचर वेगळी आहे: आधी सध्याचं व्हर्जन अनइन्स्टॉल करा, मग अपडेट इन्स्टॉल करा';

  @override
  String updateInstallFailed(String error) {
    return 'अपडेट झालं नाही: $error';
  }

  @override
  String get appLock => 'अ‍ॅप लॉक';

  @override
  String get appLockDesc =>
      'अ‍ॅप उघडताना किंवा थोड्या वेळाने परत आल्यावर पासकोड विचारेल';

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
  String get appLockUnlock => 'तुमचा पासकोड टाका';

  @override
  String get appLockWrong => 'पासकोड चुकीचा आहे';

  @override
  String appLockWait(String seconds) {
    return 'खूप वेळा प्रयत्न केलात, $seconds सेकंद थांबा';
  }

  @override
  String get appLockNew => 'एक पासकोड निवडा';

  @override
  String get appLockNewHint => '४ ते ८ अंक';

  @override
  String get appLockConfirm => 'पुन्हा टाका';

  @override
  String get appLockMismatch => 'पासकोड जुळत नाहीत';

  @override
  String get appLockOn => 'पासकोड सेट झाला';

  @override
  String get appLockRemoveTitle => 'लॉक बंद करायला पासकोड टाका';

  @override
  String get installFailed => 'इन्स्टॉल झालं नाही';

  @override
  String get updateFailed => 'अपडेट झालं नाही';

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
  String get noSourceSettings => 'या सोर्सला कोणत्याही सेटिंग्ज नाहीत';

  @override
  String get addPluginRepository => 'प्लगिन रिपॉझिटरी जोड';

  @override
  String get pluginIndexUrlHint => 'प्लगिन इंडेक्स URL';

  @override
  String get addRepository => 'रिपॉझिटरी जोड';

  @override
  String get pluginRepoUpdated => 'प्लगिन रिपॉझिटरी अपडेट झाली';

  @override
  String get pluginRepoUpdateFailed => 'प्लगिन रिपॉझिटरी रिफ्रेश करता आली नाही';

  @override
  String get ok => 'ठीक आहे';

  @override
  String get cancel => 'रद्द कर';

  @override
  String get yes => 'हो';

  @override
  String get no => 'नाही';

  @override
  String get save => 'सेव्ह कर';

  @override
  String get reset => 'रीसेट कर';

  @override
  String get clear => 'क्लिअर कर';

  @override
  String get test => 'टेस्ट';

  @override
  String get testing => 'टेस्ट करतोय…';

  @override
  String get resolving => 'रिझॉल्व्ह करतोय…';

  @override
  String get none => 'काहीही नाही';

  @override
  String get selectMediaService => 'मीडिया सर्व्हिस निवड';

  @override
  String get pickColor => 'रंग निवड';

  @override
  String get colorPickerCustom => 'कस्टम';

  @override
  String get colorPickerTransparent => 'पारदर्शक';

  @override
  String get ltr => 'डावीकडून उजवीकडे';

  @override
  String get searchSettings => 'सेटिंग्ज शोध';

  @override
  String nothingMatches(String query) {
    return '\"$query\" शी काहीही जुळत नाही';
  }

  @override
  String searchCategory(String category) {
    return '$category शोध';
  }

  @override
  String get settingsAppearance => 'दिसणं';

  @override
  String get settingsAppearanceDesc => 'थीम, रंग, ग्लास मोड';

  @override
  String get settingsGeneral => 'सामान्य';

  @override
  String get settingsGeneralDesc => 'भाषा आणि वर्तन';

  @override
  String get settingsNetwork => 'नेटवर्क';

  @override
  String get settingsNetworkDesc => 'युजर एजंट, सर्टिफिकेट्स, DNS आणि प्रॉक्सी';

  @override
  String get settingsAccountDesc => 'ट्रॅकिंग सर्व्हिस आणि साइन-इन';

  @override
  String get settingsUpdates => 'अपडेट्स';

  @override
  String get amoledBlack => 'AMOLED ब्लॅक';

  @override
  String get amoledBlackDesc => 'डार्क मोडमध्ये पूर्ण काळे पृष्ठभाग';

  @override
  String get glassMode => 'ग्लास मोड';

  @override
  String get glassModeDesc => 'तुझ्या लायब्ररी आर्टवर धूसर पृष्ठभाग';

  @override
  String get shelfFrame => 'सेक्शन्सभोवती फ्रेम';

  @override
  String get shelfFrameDesc =>
      'प्रत्येक शेल्फमागे कार्ड दाखव, किंवा ओळी थेट पेजवर ठेव';

  @override
  String get settingsExtensionsDesc =>
      'सोर्स मॅनेजर्स, रिपॉझिटरीज आणि एक्स्टेंशन ऑप्शन्स';

  @override
  String get settingsAddons => 'अ‍ॅड-ऑन्स';

  @override
  String get customPath => 'कस्टम स्टोरेज पाथ';

  @override
  String get customPathDesc =>
      'अ‍ॅपचा डेटा कुठे ठेवायचा. रीसेट करायला लाँग-प्रेस कर';

  @override
  String get selectDirectory => 'डिरेक्टरी निवड';

  @override
  String get differentCacheManager => 'पर्यायी इमेज कॅश';

  @override
  String get differentCacheManagerDesc => 'इमेजसाठी वेगळा कॅश मॅनेजर वापर';

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
  String get backupAndRestore => 'बॅकअप आणि रिस्टोअर';

  @override
  String get backupAndRestoreDesc => 'तुझ्या प्रेफरन्सेस सेव्ह किंवा लोड कर';

  @override
  String get backup => 'बॅकअप';

  @override
  String get restore => 'रिस्टोअर';

  @override
  String get loadExtensionsIcon => 'एक्स्टेंशन आयकॉन्स लोड कर';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'एक्स्टेंशन लिस्टमध्ये सोर्स आयकॉन्स दाखव';

  @override
  String get sectionStorage => 'स्टोरेज';

  @override
  String get sectionManagers => 'मॅनेजर्स';

  @override
  String get sectionOptions => 'ऑप्शन्स';

  @override
  String get backupTabBackup => 'बॅकअप घे';

  @override
  String get backupTabRestore => 'रिस्टोअर';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories कॅटेगरींमध्ये $keys सेटिंग्ज';
  }

  @override
  String backupLastBackup(Object time) {
    return 'शेवटचा बॅकअप $time';
  }

  @override
  String get backupNever => 'अजून बॅकअप नाही';

  @override
  String get backupSelectAll => 'सगळं निवड';

  @override
  String get backupClearAll => 'क्लिअर';

  @override
  String backupKeys(Object count) {
    return '$count सेटिंग्ज';
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
  String get backupPassword => 'पासवर्ड (ऐच्छिक)';

  @override
  String get backupPasswordHint => 'डिफॉल्ट वापरायला रिकामं सोड';

  @override
  String get backupSensitive => 'लॉगिन टोकन्स यात आहेत. ही फाइल खाजगी ठेव';

  @override
  String get backupCreate => 'बॅकअप तयार कर';

  @override
  String backupSaved(Object name) {
    return 'बॅकअप $name मध्ये सेव्ह झाला';
  }

  @override
  String backupFailed(Object error) {
    return 'बॅकअप फेल झाला: $error';
  }

  @override
  String get backupPickFile => 'बॅकअप फाइल निवड';

  @override
  String get backupPickFileDesc => 'Dartotsu ने बनवलेली .json फाइल निवड';

  @override
  String get backupChooseAnother => 'दुसरी फाइल निवड';

  @override
  String get backupCreatedAt => 'तयार केलं';

  @override
  String get backupAppVersion => 'अ‍ॅप व्हर्जन';

  @override
  String get backupDevice => 'डिव्हाइस';

  @override
  String get backupAccounts => 'अकाउंट्स';

  @override
  String get backupSize => 'साइज';

  @override
  String get backupEncrypted => 'पासवर्ड प्रोटेक्टेड';

  @override
  String get backupUnlock => 'अनलॉक कर';

  @override
  String get backupWrongPassword => 'ही फाइल वाचता आली नाही. पासवर्ड तपासून बघ';

  @override
  String get backupRestoreSelected => 'निवडलेलं रिस्टोअर कर';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count सेटिंग्ज रिस्टोअर करायच्या? या कॅटेगरींमधली सध्याची व्हॅल्यूज ओव्हरराइट होतील.';
  }

  @override
  String get backupRestored =>
      'रिस्टोअर झालं. सगळं लागू व्हायला अ‍ॅप रीस्टार्ट कर';

  @override
  String backupRestoreFailed(Object error) {
    return 'रिस्टोअर फेल झालं: $error';
  }

  @override
  String get backupSelectOne => 'किमान एक कॅटेगरी निवड';

  @override
  String get backupCatTheme => 'दिसणं';

  @override
  String get backupCatThemeDesc => 'थीम, रंग, ग्लास, फॉन्ट्स आणि कार्ड स्टाइल';

  @override
  String get backupCatCommon => 'सामान्य';

  @override
  String get backupCatCommonDesc =>
      'भाषा, स्टोरेज, नेटवर्क आणि एक्स्टेंशन ऑप्शन्स';

  @override
  String get backupCatPlayer => 'प्लेयर';

  @override
  String get backupCatPlayerDesc => 'प्लेयर प्रेफरन्सेस';

  @override
  String get backupCatReader => 'रीडर';

  @override
  String get backupCatReaderDesc => 'रीडर प्रेफरन्सेस';

  @override
  String get backupCatProtected => 'अकाउंट्स';

  @override
  String get backupCatProtectedDesc => 'लॉगिन टोकन्स आणि साइन-इन डेटा';

  @override
  String get backupCatOther => 'सर्व्हिसेस आणि फीड्स';

  @override
  String get backupCatOtherDesc => 'फीड लेआउट्स, लिस्ट्स आणि सर्व्हिस ऑप्शन्स';

  @override
  String get logFile => 'लॉग फाइल';

  @override
  String get logFileDesc =>
      'अ‍ॅप लॉग शेअर कर, किंवा Linux वर त्याचा पाथ कॉपी कर';

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
  String get logFileCopied => 'लॉग पाथ कॉपी झाला';

  @override
  String get donateSheetTitle => 'Dartotsu आवडतंय का?';

  @override
  String get donateSheetMessage =>
      'Dartotsu एकाच माणसाने बनवलंय आणि तोच सांभाळतो. तुला उपयोगी वाटत असेल तर डेव्हलपमेंटला सपोर्ट कर.';

  @override
  String get donateLater => 'नंतर बघू';

  @override
  String get glassBackground => 'ग्लास बॅकग्राउंड';

  @override
  String get glassBackgroundDesc => 'इमेज लिंक दिली नाही तर तुझा प्रोफाइल बॅनर';

  @override
  String get glassBackgroundHint => 'इमेज लिंक (बॅनरसाठी रिकामं सोड)';

  @override
  String get followCover => 'कव्हर फॉलो कर';

  @override
  String get followCoverDesc =>
      'रंग बॅकग्राउंडला फॉलो करतात, आणि डिटेल पेजवर कव्हरला';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'कार्ड स्टाइल';

  @override
  String get cardStyleDesc => 'टायटल जागा, साइज, प्रोग्रेस आणि बॅजेस';

  @override
  String get customFont => 'फॉन्ट';

  @override
  String get customFontDesc => 'डिफॉल्ट, डिव्हाइसमधली फाइल, किंवा Google Fonts';

  @override
  String get customFontError => 'ती फॉन्ट फाइल लोड करता आली नाही';

  @override
  String get googleFontError => 'तो फॉन्ट डाउनलोड करता आला नाही';

  @override
  String get yourFonts => 'तुझे फॉन्ट्स';

  @override
  String get addFontFile => 'फॉन्ट फाइल जोड…';

  @override
  String get browseGoogleFonts => 'Google Fonts ब्राउझ कर…';

  @override
  String get searchGoogleFonts => 'Google Fonts शोध';

  @override
  String get defaultFont => 'डिफॉल्ट';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'सिस्टममधून डायनॅमिक रंग';

  @override
  String get jsonTheme => 'कस्टम थीम फाइल';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json मधले लाइव्ह रंग (कस्टम स्क्रिप्ट, किंवा तुझे स्वतःचे बदल)';

  @override
  String get themeMode => 'थीम मोड';

  @override
  String get mode => 'मोड';

  @override
  String get trackingService => 'ट्रॅकिंग सर्व्हिस';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signIn => 'साइन इन';

  @override
  String get notSignedIn => 'साइन इन नाही';

  @override
  String signOutOf(String service) {
    return '$service मधून साइन आउट करायचं?';
  }

  @override
  String get checkForUpdates => 'अपडेट्स तपास';

  @override
  String get checkForUpdatesDesc => 'नवीन GitHub रिलीज आला की कळव';

  @override
  String get updateChannel => 'अपडेट चॅनल';

  @override
  String get channel => 'चॅनल';

  @override
  String get stable => 'स्टेबल';

  @override
  String get preRelease => 'प्री-रिलीज';

  @override
  String get alpha => 'अल्फा';

  @override
  String get checkNow => 'आत्ता तपास';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'डिफॉल्ट';

  @override
  String currentlyUsing(String value) {
    return 'सध्या: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'डिफॉल्ट (Cloudflare)';

  @override
  String get proxy => 'प्रॉक्सी';

  @override
  String get proxyProtocol => 'प्रकार';

  @override
  String get proxyHost => 'होस्ट';

  @override
  String get proxyPort => 'पोर्ट';

  @override
  String get proxyUsername => 'युजरनेम';

  @override
  String get proxyPassword => 'पासवर्ड';

  @override
  String get optional => 'ऐच्छिक';

  @override
  String get clearCookies => 'कुकीज क्लिअर कर';

  @override
  String get clearCookiesDesc => 'साठवलेल्या सगळ्या कुकीज काढून टाक';

  @override
  String notImplementedArea(String area) {
    return '$area — लवकरच येतंय';
  }

  @override
  String notImplementedService(String service) {
    return '$service अजून हे सपोर्ट करत नाही.';
  }

  @override
  String get couldNotLoadResults => 'रिझल्ट्स लोड करता आले नाहीत';

  @override
  String get updateCheckFailed => 'अपडेट्स तपासता आले नाहीत';

  @override
  String get highRefreshRate => 'हाय रिफ्रेश रेट';

  @override
  String get highRefreshRateDesc =>
      'तुझी स्क्रीन सपोर्ट करते तो सर्वात जास्त रिफ्रेश रेट वापर';

  @override
  String get imageSave => 'इमेज सेव्ह कर';

  @override
  String imageSavedTo(String path) {
    return '$path मध्ये सेव्ह झालं';
  }

  @override
  String get imageActionFailed => 'इमेज डाउनलोड करता आली नाही';

  @override
  String get imageTitleCover => 'कव्हर';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'बॅनर';

  @override
  String get imageTitleAvatar => 'प्रोफाइल फोटो';

  @override
  String get verifyTls => 'सर्टिफिकेट्स तपास';

  @override
  String get verifyTlsDesc =>
      'अवैध HTTPS सर्टिफिकेट असलेले सर्व्हर नाकार. फक्त सेल्फ-साइन्ड वापरणाऱ्या सोर्ससाठी बंद कर';

  @override
  String get clearCookiesConfirm =>
      'साठवलेल्या सगळ्या कुकीज काढायच्या? यामुळे काही सोर्समधून तू साइन आउट होऊ शकतोस.';

  @override
  String get version => 'व्हर्जन';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'सोर्स, इश्यूज आणि रिलीजेस';

  @override
  String get discordDesc => 'कम्युनिटी आणि सपोर्ट';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'डेव्हलपमेंटला सपोर्ट कर';

  @override
  String get contributors => 'कॉन्ट्रिब्युटर्स';

  @override
  String get contributorsDesc => 'Dartotsu बनवणारी माणसं';

  @override
  String get contributorsLoadFailed => 'कॉन्ट्रिब्युटर्स लोड करता आले नाहीत';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu वर बनवलेले प्रोजेक्ट्स';

  @override
  String get forksEmpty => 'फोर्क्स सापडले नाहीत';

  @override
  String get sectionColors => 'रंग';

  @override
  String get sectionDisplay => 'डिस्प्ले';

  @override
  String get sectionStyle => 'स्टाइल';

  @override
  String get sectionCommunity => 'कम्युनिटी';

  @override
  String get sectionAppInfo => 'अ‍ॅप माहिती';

  @override
  String get sectionRequests => 'रिक्वेस्ट्स';

  @override
  String get sectionDnsProxy => 'DNS आणि प्रॉक्सी';

  @override
  String get onboardingBack => 'मागे';

  @override
  String get onboardingNext => 'पुढे';

  @override
  String get onboardingSkip => 'स्किप कर';

  @override
  String get onboardingPaletteTitle => 'तुझ्या आवडीचं बनव';

  @override
  String get onboardingPaletteBody =>
      'एक पॅलेट निवड. कार्ड्सपासून प्लेयरपर्यंत प्रत्येक ॲक्सेंट तिला फॉलो करतो.';

  @override
  String get themeModeAuto => 'ऑटो';

  @override
  String get themeModeLight => 'लाइट';

  @override
  String get themeModeDark => 'डार्क';

  @override
  String get onboardingSyncTitle => 'तुझी लायब्ररी सिंक कर';

  @override
  String get onboardingSyncBody =>
      'लिस्ट्स, प्रोग्रेस आणि स्कोअर्स सोबत आणायला AniList ने साइन इन कर. किंवा स्किप करून गेस्ट म्हणून बघ.';

  @override
  String get onboardingOpenLinks =>
      'AniList आणि रेपो लिंक्स Dartotsu मध्ये उघड';

  @override
  String get onboardingPermsTitle => 'परवानग्या';

  @override
  String get onboardingPermsBody =>
      'डाउनलोड्स, अपडेट्स आणि अलर्ट्स अडथळ्याविना चालावेत म्हणून आत्ता हे अलाऊ कर. नंतर सिस्टम सेटिंग्जमध्ये बदलता येईल.';

  @override
  String get permNotifications => 'नोटिफिकेशन्स';

  @override
  String get permNotificationsDesc =>
      'डाउनलोड प्रोग्रेस, नवे एपिसोड्स आणि रिप्लाय';

  @override
  String get permStorage => 'सगळ्या फाइल्सचा अ‍ॅक्सेस';

  @override
  String get permStorageDesc =>
      'डाउनलोड्स सार्वजनिक Dartotsu फोल्डरमध्ये सेव्ह कर';

  @override
  String get permInstall => 'अपडेट्स इन्स्टॉल कर';

  @override
  String get permInstallDesc =>
      'Dartotsu ला स्वतःचे अ‍ॅप अपडेट्स इन्स्टॉल करू दे';

  @override
  String get permBattery => 'अनिर्बंध बॅटरी';

  @override
  String get permBatteryDesc => 'मोठे डाउनलोड्स बॅकग्राउंडमध्ये चालू ठेव';

  @override
  String get permGrant => 'अलाऊ कर';

  @override
  String get linkOpenInApp => 'लिंक्स Dartotsu मध्ये उघड';

  @override
  String get linkOpenInAppDesc => 'AniList आणि रेपो लिंक्स अ‍ॅपमध्ये उघडू दे';

  @override
  String get reviewsTitle => 'रिव्ह्यूज';

  @override
  String get reviewsEmpty => 'अजून रिव्ह्यू नाहीत';

  @override
  String get reviewsFailed => 'रिव्ह्यूज लोड करता आले नाहीत';

  @override
  String get reviewHelpfulQuestion => 'हा रिव्ह्यू उपयोगी होता का?';

  @override
  String get reviewVoteFailed => 'तुझं व्होट सेव्ह करता आलं नाही';

  @override
  String reviewHelpful(int n, int total) {
    return '$total पैकी $n जणांना हे उपयोगी वाटलं';
  }

  @override
  String get calendarTitle => 'एअरिंग शेड्यूल';

  @override
  String get calendarToday => 'आज';

  @override
  String get calendarEmpty => 'या दिवशी काहीही प्रसारित होत नाही';

  @override
  String get calendarFailed => 'शेड्यूल लोड करता आलं नाही';

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
    return 'एपिसोड $n';
  }

  @override
  String get shareAnalytics => 'अनामिक वापर डेटा शेअर कर';

  @override
  String get shareAnalyticsDesc =>
      'अनामिक युजर काउंट आणि क्रॅश रिपोर्ट्स. कोणतंही अकाउंट किंवा वैयक्तिक डेटा नाही';

  @override
  String get linkOpenAnilist => 'AniList लिंक्स Dartotsu मध्ये उघड';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co लिंक्स अ‍ॅपमध्ये उघडाव्यात म्हणून लिंक हँडलिंग चालू कर';

  @override
  String get linkSettingsFailed => 'सिस्टम सेटिंग्ज उघडता आल्या नाहीत';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'तू काय करतोयस ते तुझ्या Discord प्रोफाइलवर दाखव. तुझा Discord टोकन लागेल.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'तू काय करतोयस ते तुझ्या Discord प्रोफाइलवर दाखव. Discord डेस्कटॉप अ‍ॅप चालू असायला हवं.';

  @override
  String get discordBrowsing => 'ब्राउझिंग अ‍ॅक्टिव्हिटी दाखव';

  @override
  String get discordBrowsingDesc =>
      'फक्त तू काय बघतोस किंवा वाचतोस तेच नाही, तर तू बघत असलेला टॅब, पेज किंवा प्रोफाइलही दाखव.';

  @override
  String get discordLookHeader => 'प्रेझेन्सचा लूक';

  @override
  String get discordActivityType => 'अ‍ॅक्टिव्हिटी प्रकार';

  @override
  String get discordActivityTypeDesc =>
      'Discord ते कसं लिहितं: \"Watching …\" किंवा \"Playing …\". ऑटो असेल तर अ‍ॅनिमेसाठी Watching आणि बाकी सगळ्यासाठी Playing.';

  @override
  String get discordWatching => 'बघतोय';

  @override
  String get discordPlaying => 'खेळतोय';

  @override
  String get discordCovers => 'कव्हर्स दाखव';

  @override
  String get discordCoversDesc => 'कार्डवर कव्हर आर्ट आणि Dartotsu आयकॉन.';

  @override
  String get discordTimer => 'टायमर दाखव';

  @override
  String get discordTimerDesc => 'टायटलखाली निघून गेलेला किंवा उरलेला वेळ.';

  @override
  String get discordButtons => 'बटणं दाखव';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" आणि \"Open Dartotsu\" बटणं.';

  @override
  String get discordHideTitles => 'टायटल्स लपव';

  @override
  String get discordHideTitlesDesc =>
      'अ‍ॅनिमे आणि मांगाची नावं (त्यांच्या कव्हर आणि लिंकसह) \"Something private\" ने बदल.';

  @override
  String get discordConnectionHeader => 'कनेक्शन';

  @override
  String get listSearchHint => 'ही लिस्ट शोध';

  @override
  String get listSort => 'सॉर्ट';

  @override
  String get listFilter => 'फिल्टर';

  @override
  String get listRandom => 'रँडम टायटल';

  @override
  String get listReverse => 'क्रम उलटा कर';

  @override
  String get listSortDefault => 'लिस्ट क्रम';

  @override
  String get listSortScore => 'तुझा स्कोअर';

  @override
  String get listSortTitle => 'टायटल';

  @override
  String get listSortUpdated => 'शेवटचं अपडेट';

  @override
  String get listSortProgress => 'प्रोग्रेस';

  @override
  String get listSortReleased => 'रिलीज तारीख';

  @override
  String get listSortAverage => 'सरासरी स्कोअर';

  @override
  String get listFilterFormat => 'फॉरमॅट';

  @override
  String get listFilterStatus => 'स्टेटस';

  @override
  String get listFilterGenres => 'जॉनर्स';

  @override
  String get listFilterClear => 'फिल्टर्स क्लिअर कर';

  @override
  String get listNoMatches => 'या लिस्टमध्ये काहीही जुळत नाही';

  @override
  String get discordLogin => 'Discord मध्ये लॉगिन कर';

  @override
  String get discordToken => 'Discord टोकन';

  @override
  String get discordTokenSaved =>
      'सेव्ह केलं. बदलायला टॅप कर, काढायला लाँग-प्रेस कर.';

  @override
  String get discordTokenNotSet => 'सेट केलेलं नाही. जोडायला टॅप कर.';

  @override
  String get discordTokenSavedSnack => 'Discord टोकन सेव्ह झाला';

  @override
  String get discordTokenRemovedSnack => 'Discord टोकन काढला';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'चालू · लूक बदलायला टॅप कर';

  @override
  String get discordRichPresenceRowOff =>
      'तू काय करतोयस ते तुझ्या Discord प्रोफाइलवर दाखव';

  @override
  String get loginCancelled => 'लॉगिन रद्द झालं';

  @override
  String get invalidToken => 'अवैध टोकन';

  @override
  String loginFailed(String error) {
    return 'लॉगिन फेल झालं: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList लॉगिन फेल झालं';

  @override
  String get kitsuLoginFailed =>
      'Kitsu लॉगिन फेल झालं. तुझा ईमेल आणि पासवर्ड तपास.';

  @override
  String get kitsuLoginTitle => 'Kitsu मध्ये साइन इन कर';

  @override
  String get emailOrUsername => 'ईमेल किंवा युजरनेम';

  @override
  String get password => 'पासवर्ड';

  @override
  String get kitsuProfile => 'Kitsu प्रोफाइल';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka लॉगिन फेल झालं';

  @override
  String get mangaBakaProfile => 'MangaBaka प्रोफाइल';

  @override
  String get refreshFromMangaBaka => 'MangaBaka वरून रिफ्रेश कर';

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
  String get artistsLabel => 'आर्टिस्ट्स';

  @override
  String get authorsLabel => 'लेखक';

  @override
  String get publishersLabel => 'प्रकाशक';

  @override
  String get licensedLabel => 'लायसन्स्ड';

  @override
  String get contentRatingLabel => 'कंटेंट रेटिंग';

  @override
  String get yesLabel => 'हो';

  @override
  String get noLabel => 'नाही';

  @override
  String get ratingSteps => 'रेटिंग स्टेप्स';

  @override
  String get hideNsfw => 'NSFW लपव';

  @override
  String get hideNsfwDesc =>
      'अ‍ॅडल्ट टायटल्स फीड्स आणि सर्चमधून बाहेर ठेव, आणि तुझ्या स्वतःच्या अ‍ॅडल्ट एंट्रीज Hidden Media खाली दाखव.';

  @override
  String get kitsuAccountOptions => 'Kitsu अकाउंट ऑप्शन्स';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka अकाउंट पर्याय';

  @override
  String get couldNotUpdateKitsuSettings =>
      'तुझ्या Kitsu सेटिंग्ज अपडेट करता आल्या नाहीत';

  @override
  String get titleCanonical => 'कॅनॉनिकल';

  @override
  String get titleRomanized => 'रोमनाइझ्ड';

  @override
  String get titleLocalized => 'लोकलाइझ्ड';

  @override
  String get ratingSystem => 'रेटिंग सिस्टम';

  @override
  String get ratingSimple => 'सोपी (3 चेहरे)';

  @override
  String get ratingRegular => 'नेहमीची (5 स्टार्स)';

  @override
  String get ratingAdvanced => 'अ‍ॅडव्हान्स्ड (10 पॉइंट्स)';

  @override
  String get contentFilter => 'कंटेंट फिल्टर';

  @override
  String get contentSfw => 'फक्त सुरक्षित (SFW)';

  @override
  String get contentSometimes => 'सर्चमध्ये प्रौढांसाठीचा कंटेंट';

  @override
  String get contentEverywhere => 'सगळीकडे प्रौढांसाठीचा कंटेंट';

  @override
  String get shareToGlobal => 'ग्लोबल फीडवर शेअर कर';

  @override
  String get shareToGlobalDesc =>
      'तुझी अ‍ॅक्टिव्हिटी Kitsu च्या ग्लोबल फीडमध्ये दिसू दे.';

  @override
  String get memberSince => 'सदस्य झाल्यापासून';

  @override
  String get location => 'ठिकाण';

  @override
  String get accountType => 'अकाउंट प्रकार';

  @override
  String get accountSupporter => 'सपोर्टर';

  @override
  String get accountFree => 'फ्री';

  @override
  String get accountDetails => 'अकाउंट डिटेल्स';

  @override
  String get refreshFromKitsu => 'Kitsu वरून रिफ्रेश कर';

  @override
  String get simklReadOnly => 'Simkl ला फक्त-वाचन अ‍ॅक्सेस दिला';

  @override
  String get incognitoEditsBlocked => 'इन्कॉग्निटो: लिस्ट एडिट्स ब्लॉक आहेत';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved =>
      'इन्कॉग्निटो: प्रोग्रेस सेव्ह झाला नाही';

  @override
  String progressSet(int progress) {
    return 'प्रोग्रेस $progress वर सेट केला';
  }

  @override
  String removedFromList(String title) {
    return 'तुझ्या लिस्टमधून $title काढलं';
  }

  @override
  String get following => 'फॉलो करतोय';

  @override
  String get homeSections => 'होम सेक्शन्स';

  @override
  String get homeSectionsHint =>
      'क्रम बदलायला ड्रॅग कर. लपवलेले सेक्शन्स कधीच फेच होत नाहीत.';

  @override
  String get customListDeleteFailed => 'कस्टम लिस्ट डिलीट करता आली नाही';

  @override
  String get customListsSaveFailed => 'कस्टम लिस्ट्स सेव्ह करता आल्या नाहीत';

  @override
  String get customListsSaved => 'कस्टम लिस्ट्स सेव्ह झाल्या';

  @override
  String get listName => 'लिस्टचं नाव';

  @override
  String get addList => 'लिस्ट जोड';

  @override
  String voiceActorsIn(String name) {
    return 'व्हॉइस अ‍ॅक्टर्स · $name';
  }

  @override
  String get animeAppearances => 'अ‍ॅनिमेमधली उपस्थिती';

  @override
  String get mangaAppearances => 'मांगामधली उपस्थिती';

  @override
  String get voicedCharacters => 'आवाज दिलेली पात्रं';

  @override
  String get animeCredits => 'अ‍ॅनिमे क्रेडिट्स';

  @override
  String get mangaCredits => 'मांगा क्रेडिट्स';

  @override
  String get mainProductions => 'मुख्य प्रॉडक्शन्स';

  @override
  String get otherWorks => 'इतर कामं';

  @override
  String get prequelSequel => 'प्रीक्वेल आणि सीक्वेल';

  @override
  String get previousSeason => 'मागचा सीझन';

  @override
  String get thisSeason => 'हा सीझन';

  @override
  String get nextSeason => 'पुढचा सीझन';

  @override
  String get voiceRoles => 'व्हॉइस रोल्स';

  @override
  String get staffPositions => 'स्टाफ पोझिशन्स';

  @override
  String get mangaWorks => 'मांगा कामं';

  @override
  String get malProfile => 'MyAnimeList प्रोफाइल';

  @override
  String get refreshFromMal => 'MyAnimeList वरून रिफ्रेश कर';

  @override
  String get repullProfileCounts => 'तुझं प्रोफाइल आणि काउंट्स पुन्हा घे';

  @override
  String get refreshed => 'रिफ्रेश झालं';

  @override
  String get simklProfile => 'Simkl प्रोफाइल';

  @override
  String get refreshFromSimkl => 'Simkl वरून रिफ्रेश कर';

  @override
  String get repullProfileLibrary => 'तुझं प्रोफाइल आणि लायब्ररी पुन्हा घे';

  @override
  String get simklSignInToSearch => 'सर्च करायला Simkl मध्ये साइन इन कर';

  @override
  String get dropRate => 'ड्रॉप रेट';

  @override
  String get simklAttribution => 'डेटा आणि आर्टवर्क Simkl कडून. Simkl वर बघ';

  @override
  String get onHold => 'ऑन होल्ड';

  @override
  String get scoredBy => 'स्कोअर करणारे';

  @override
  String get planToWatch => 'बघायचं ठरवलेलं';

  @override
  String get planToRead => 'वाचायचं ठरवलेलं';

  @override
  String get timesRewatched => 'किती वेळा पुन्हा बघितलं';

  @override
  String get timesReread => 'किती वेळा पुन्हा वाचलं';

  @override
  String get comments => 'कमेंट्स';

  @override
  String get moviesAndSeries => 'मूव्हीज आणि सीरिज';

  @override
  String get trackingOnly => 'फक्त ट्रॅकिंग';

  @override
  String get signedIn => 'साइन इन आहे';

  @override
  String get searchLanguage => 'सर्च भाषा';

  @override
  String get savedToList => 'तुझ्या लिस्टमध्ये सेव्ह झालं';

  @override
  String get removedFromYourList => 'तुझ्या लिस्टमधून काढलं';

  @override
  String get retry => 'पुन्हा प्रयत्न कर';

  @override
  String get synopsis => 'सिनॉप्सिस';

  @override
  String get details => 'डिटेल्स';

  @override
  String get addToList => 'लिस्टमध्ये जोड';

  @override
  String get trailer => 'ट्रेलर';

  @override
  String get titleCopied => 'टायटल कॉपी झालं';

  @override
  String get linkCopied => 'लिंक कॉपी झाली';

  @override
  String get watchTrailer => 'ट्रेलर बघ';

  @override
  String get copyTitle => 'टायटल कॉपी कर';

  @override
  String get copyLink => 'लिंक कॉपी कर';

  @override
  String get openInBrowser => 'ब्राउझरमध्ये उघड';

  @override
  String viewOnSource(String source) {
    return '$source वर बघ';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'एपिसोड $ep $time नंतर येईल';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'पुढचा एपिसोड $time नंतर';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'धडा $chapter साधारण $time मध्ये येईल';
  }

  @override
  String get logPathCopied => 'लॉग फाइल पाथ क्लिपबोर्डवर कॉपी झाला';

  @override
  String get animeSource => 'अ‍ॅनिमे सोर्स';

  @override
  String get mangaSource => 'मांगा सोर्स';

  @override
  String get popular => 'लोकप्रिय';

  @override
  String get latest => 'ताजं';

  @override
  String get saved => 'सेव्ह केलेलं';

  @override
  String get nothingMatched => 'काहीही जुळलं नाही';

  @override
  String get nothingSavedFromSource =>
      'या सोर्समधून अजून काहीही सेव्ह केलेलं नाही';

  @override
  String get sourceReturnedNothing => 'या सोर्सने काहीच दिलं नाही';

  @override
  String get checkConnectionOrSource =>
      'कनेक्शन तपास किंवा दुसरा सोर्स वापरून बघ.';

  @override
  String get tryDifferentSearch => 'वेगळा सर्च शब्द वापरून बघ.';

  @override
  String get savedTitlesAppearHere => 'लिस्टमध्ये जोडलेले टायटल्स इथे दिसतील.';

  @override
  String get tryOtherFeed => 'त्याऐवजी दुसरा फीड किंवा सर्च वापरून बघ.';

  @override
  String searchSource(String source) {
    return '$source शोध';
  }

  @override
  String get animeExtensions => 'अ‍ॅनिमे एक्स्टेंशन्स';

  @override
  String get mangaExtensions => 'मांगा एक्स्टेंशन्स';

  @override
  String get nothingHereYet => 'इथे अजून काही नाही';

  @override
  String get savedOnDeviceUntilLogin =>
      'तू करेपर्यंत खालचं सगळं या डिव्हाइसवर सेव्ह राहतं.';

  @override
  String get yourProfile => 'तुझं प्रोफाइल';

  @override
  String get activity => 'अ‍ॅक्टिव्हिटी';

  @override
  String get extensions => 'एक्स्टेंशन्स';

  @override
  String get logOut => 'लॉग आउट';

  @override
  String get logIn => 'लॉग इन';

  @override
  String get logOutConfirm => 'खरंच लॉग आउट करायचं आहे का?';

  @override
  String get incognitoMode => 'इन्कॉग्निटो मोड';

  @override
  String get alsoBlockListEdits => 'लिस्ट एडिट्सही ब्लॉक कर';

  @override
  String get offlineMode => 'ऑफलाइन मोड';

  @override
  String get switchService => 'सर्व्हिस बदल';

  @override
  String logOutOf(String name) {
    return '$name मधून लॉग आउट कर';
  }

  @override
  String get loggedIn => 'लॉग इन आहे';

  @override
  String get notifications => 'नोटिफिकेशन्स';

  @override
  String get nothingNew => 'काहीही नवीन नाही';

  @override
  String get thisWeek => 'या आठवड्यात';

  @override
  String get listOnly => 'फक्त लिस्ट';

  @override
  String get filter => 'फिल्टर';

  @override
  String get searchResults => 'सर्च रिझल्ट्स';

  @override
  String get recentSearches => 'अलीकडचे सर्च';

  @override
  String get searchOrSetFilter => 'सर्च कर किंवा फिल्टर लाव';

  @override
  String get filters => 'फिल्टर्स';

  @override
  String get showLess => 'कमी दाखव';

  @override
  String get showAll => 'सगळं दाखव';

  @override
  String get apply => 'लागू कर';

  @override
  String get preview => 'प्रीव्ह्यू';

  @override
  String get preset => 'प्रीसेट';

  @override
  String get cardNormal => 'नॉर्मल';

  @override
  String get cardOnCard => 'कार्डवर';

  @override
  String get cardInCard => 'कार्डमध्ये';

  @override
  String get size => 'साइज';

  @override
  String get cardWidth => 'कार्ड रुंदी';

  @override
  String get compact => 'कॉम्पॅक्ट';

  @override
  String get coverAndTitleOnly => 'फक्त कव्हर आणि टायटल';

  @override
  String get titleLines => 'टायटल ओळी';

  @override
  String get shape => 'आकार';

  @override
  String get posterShape => 'पोस्टर आकार';

  @override
  String get cornerRadius => 'कोपऱ्याची गोलाई';

  @override
  String get off => 'बंद';

  @override
  String get topLeft => 'वर डावीकडे';

  @override
  String get topRight => 'वर उजवीकडे';

  @override
  String get bottomLeft => 'खाली डावीकडे';

  @override
  String get bottomRight => 'खाली उजवीकडे';

  @override
  String get overlays => 'ओव्हरलेज';

  @override
  String get progressCount => 'प्रोग्रेस / काउंट';

  @override
  String get pill => 'पिल';

  @override
  String get bar => 'बार';

  @override
  String get outside => 'बाहेर';

  @override
  String get scoreBadge => 'स्कोअर बॅज';

  @override
  String get airingDot => 'एअरिंग डॉट';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध';

  @override
  String get notInstalled => 'इन्स्टॉल केलेलं नाही';

  @override
  String get done => 'झालं';

  @override
  String get searchOrEnterUrl => 'शोध किंवा URL टाक';

  @override
  String get refresh => 'रिफ्रेश';

  @override
  String get share => 'शेअर';

  @override
  String get characters => 'पात्रं';

  @override
  String get staff => 'स्टाफ';

  @override
  String get readMore => 'आणखी वाच';

  @override
  String get couldNotLoadList => 'लिस्ट लोड करता आली नाही';

  @override
  String get logInToFavourite => 'आवडते जोडायला लॉग इन कर';

  @override
  String get alsoKnownAs => 'इतर नावं';

  @override
  String get hideSpoilerNames => 'स्पॉयलर नावं लपव';

  @override
  String get showSpoilerNames => 'स्पॉयलर नावं दाखव';

  @override
  String get favourited => 'आवडतं केलं';

  @override
  String get favourite => 'आवडतं';

  @override
  String get couldNotOpenTitle => 'हे टायटल उघडता आलं नाही';

  @override
  String get nobodyHereYet => 'इथे अजून कोणी नाही';

  @override
  String get noMatches => 'काहीही जुळलं नाही';

  @override
  String get gridView => 'ग्रिड व्ह्यू';

  @override
  String get fullWidth => 'पूर्ण रुंदी';

  @override
  String get userNotFound => 'युजर सापडला नाही';

  @override
  String get couldNotUpdateFollow => 'फॉलो अपडेट करता आलं नाही';

  @override
  String followedUser(String name) {
    return '$name ला फॉलो केलं';
  }

  @override
  String unfollowedUser(String name) {
    return '$name ला अनफॉलो केलं';
  }

  @override
  String get messages => 'मेसेजेस';

  @override
  String get logInToSeeMessages => 'मेसेजेस बघायला लॉग इन कर';

  @override
  String get editActivity => 'अ‍ॅक्टिव्हिटी एडिट कर';

  @override
  String get newActivity => 'नवीन अ‍ॅक्टिव्हिटी';

  @override
  String get editMessage => 'मेसेज एडिट कर';

  @override
  String get writeMessage => 'मेसेज लिहि';

  @override
  String get editReply => 'रिप्लाय एडिट कर';

  @override
  String get posted => 'पोस्ट केलं';

  @override
  String get couldNotPost => 'पोस्ट करता आलं नाही';

  @override
  String get nothingToPreview => 'प्रीव्ह्यू करायला काही नाही';

  @override
  String get writeSomethingHint => 'काहीतरी लिहि… इथे AniList मार्कडाउन चालतं';

  @override
  String get privateMessage => 'खाजगी मेसेज';

  @override
  String get post => 'पोस्ट कर';

  @override
  String get nothingHere => 'इथे काहीही नाही';

  @override
  String get noAnimeProgress => 'अ‍ॅनिमे प्रोग्रेस नाही';

  @override
  String get noMangaProgress => 'मांगा प्रोग्रेस नाही';

  @override
  String get noMessages => 'मेसेजेस नाहीत';

  @override
  String get writeMessageHint => 'मेसेज लिहि…';

  @override
  String get shareSomethingHint => 'काहीतरी शेअर कर…';

  @override
  String get all => 'सगळं';

  @override
  String get anime => 'अ‍ॅनिमे';

  @override
  String get manga => 'मांगा';

  @override
  String get count => 'काउंट';

  @override
  String get hoursWatched => 'बघितलेले तास';

  @override
  String get chaptersRead => 'वाचलेले चॅप्टर्स';

  @override
  String get meanScore => 'सरासरी स्कोअर';

  @override
  String get noStatsYet => 'अजून स्टॅट्स नाहीत';

  @override
  String get totalEntries => 'एकूण एंट्रीज';

  @override
  String get episodesWatched => 'बघितलेले एपिसोड्स';

  @override
  String get daysWatched => 'बघितलेले दिवस';

  @override
  String get volumesRead => 'वाचलेले व्हॉल्यूम्स';

  @override
  String get standardDeviation => 'स्टँडर्ड डेव्हिएशन';

  @override
  String get showMore => 'आणखी दाखव';

  @override
  String get followsYou => 'तुला फॉलो करतो';

  @override
  String get nobodyYet => 'अजून कोणी नाही';

  @override
  String get logInToLike => 'लाइक करायला लॉग इन कर';

  @override
  String get failedToLikeActivity => 'अ‍ॅक्टिव्हिटी लाइक करता आली नाही';

  @override
  String get deleteActivityConfirm => 'अ‍ॅक्टिव्हिटी डिलीट करायची?';

  @override
  String get deletedActivity => 'अ‍ॅक्टिव्हिटी डिलीट झाली';

  @override
  String get failedToDeleteActivity => 'अ‍ॅक्टिव्हिटी डिलीट करता आली नाही';

  @override
  String get subscribed => 'सबस्क्राइब केलं';

  @override
  String get unsubscribed => 'अनसबस्क्राइब केलं';

  @override
  String get failedToUpdateSubscription => 'सबस्क्रिप्शन अपडेट करता आलं नाही';

  @override
  String get edit => 'एडिट';

  @override
  String get delete => 'डिलीट';

  @override
  String get likedBy => 'यांनी लाइक केलं';

  @override
  String get follow => 'फॉलो';

  @override
  String get nameCopied => 'नाव कॉपी झालं';

  @override
  String get followsEachOther => 'एकमेकांना फॉलो करता';

  @override
  String get unfollow => 'अनफॉलो';

  @override
  String get userIdCopied => 'युजर आयडी कॉपी झाला';

  @override
  String get shareProfile => 'प्रोफाइल शेअर कर';

  @override
  String get copyUserId => 'युजर आयडी कॉपी कर';

  @override
  String get failedToDelete => 'डिलीट करता आलं नाही';

  @override
  String get failedToLike => 'लाइक करता आलं नाही';

  @override
  String get replies => 'रिप्लाय';

  @override
  String get reply => 'रिप्लाय';

  @override
  String get noRepliesYet => 'अजून रिप्लाय नाहीत';

  @override
  String get favouriteAnime => 'आवडते अ‍ॅनिमे';

  @override
  String get favouriteManga => 'आवडते मांगा';

  @override
  String get favouriteCharacters => 'आवडती पात्रं';

  @override
  String get favouriteStaff => 'आवडता स्टाफ';

  @override
  String get favouriteStudios => 'आवडते स्टुडिओज';

  @override
  String get noFavouritesYet => 'अजून आवडते नाहीत';

  @override
  String get yourStory => 'तुझी स्टोरी';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डवर कॉपी झालं';

  @override
  String get justNow => 'आत्ताच';

  @override
  String get openImage => 'इमेज उघड';

  @override
  String get hideSpoiler => 'स्पॉयलर लपव';

  @override
  String get showSpoiler => 'स्पॉयलर दाखव';

  @override
  String get status => 'स्टेटस';

  @override
  String get score => 'स्कोअर';

  @override
  String get started => 'सुरू केलं';

  @override
  String get completed => 'पूर्ण केलं';

  @override
  String get private => 'खाजगी';

  @override
  String get hideFromStatusLists => 'स्टेटस लिस्ट्समधून लपव';

  @override
  String get totalRepeats => 'एकूण रिपीट्स';

  @override
  String get other => 'इतर';

  @override
  String get customLists => 'कस्टम लिस्ट्स';

  @override
  String get activeDays => 'अ‍ॅक्टिव्ह दिवस';

  @override
  String get longestStreak => 'सर्वात मोठी स्ट्रीक';

  @override
  String get currentStreak => 'सध्याची स्ट्रीक';

  @override
  String get tapOrHoverDay => 'एखाद्या दिवसावर टॅप कर किंवा होव्हर कर';

  @override
  String get less => 'कमी';

  @override
  String get more => 'जास्त';

  @override
  String epIn(int ep, String time) {
    return 'एप $ep $time नंतर';
  }

  @override
  String get sectionLoading => 'लोड होतंय';

  @override
  String get querySize => 'क्वेरी साइज';

  @override
  String get querySizeDesc =>
      'एक मोठी क्वेरी सगळ्या ओळी (आणि पूर्ण प्रोफाइल) एकाच रिक्वेस्टमध्ये लोड करते. स्प्लिट क्वेरीज प्रत्येक ओळीसाठी किंवा प्रोफाइलच्या भागासाठी छोटी रिक्वेस्ट पाठवतात: प्रत्येक पटकन होते आणि भाग येतील तसे दिसतात.';

  @override
  String get oneBig => 'एक मोठी';

  @override
  String get split => 'स्प्लिट';

  @override
  String get sectionSocial => 'सोशल';

  @override
  String get systemNotifications => 'सिस्टम नोटिफिकेशन्स';

  @override
  String get feedLayout => 'फीड लेआउट';

  @override
  String sectionsShown(int shown, int total) {
    return '$total पैकी $shown दाखवले — निवडायला आणि क्रम लावायला टॅप कर';
  }

  @override
  String labelSections(String label) {
    return '$label सेक्शन्स';
  }

  @override
  String get accountOptions => 'अकाउंट ऑप्शन्स';

  @override
  String get anilistAccountOptions => 'AniList अकाउंट ऑप्शन्स';

  @override
  String get sectionPrivacy => 'प्रायव्हसी';

  @override
  String get hidePrivateEntries => 'खाजगी एंट्रीज लपव';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList वर खाजगी म्हणून मार्क केलेल्या एंट्रीज फीडमधून बाहेर ठेव';

  @override
  String get anilistExcludeList => 'तुमची लिस्ट वगळा';

  @override
  String get anilistExcludeListDesc =>
      'तुमच्या AniList वर आधीच असलेली टायटल्स अ‍ॅनिमे आणि मांगा पानांवर दाखवू नका';

  @override
  String get anilistProfile => 'AniList प्रोफाइल';

  @override
  String get refreshFromAnilist => 'AniList वरून रिफ्रेश कर';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList सेटिंग्ज अपडेट करता आल्या नाहीत';

  @override
  String get sectionNames => 'नावं';

  @override
  String get titleLanguage => 'टायटल भाषा';

  @override
  String get titleLanguageDesc =>
      'टायटल्स सगळीकडे कसे लिहायचे, उदा. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'स्टाफ आणि पात्रांची नावं';

  @override
  String get sectionLists => 'लिस्ट्स';

  @override
  String get scoreFormat => 'स्कोअर फॉरमॅट';

  @override
  String get sortListsBy => 'लिस्ट्स असे सॉर्ट कर';

  @override
  String labelCustomLists(String label) {
    return '$label कस्टम लिस्ट्स';
  }

  @override
  String customListsCount(int count) {
    return '$count लिस्ट्स — जोडायला किंवा काढायला टॅप कर';
  }

  @override
  String get mergeActivities => 'अ‍ॅक्टिव्हिटीज एकत्र कर';

  @override
  String minutesCount(int count) {
    return '$count मिनिटं';
  }

  @override
  String get timezone => 'टाइमझोन';

  @override
  String get notSet => 'सेट केलेलं नाही';

  @override
  String get airingNotifications => 'एअरिंग नोटिफिकेशन्स';

  @override
  String get airingNotificationsDesc => 'फॉलो केलेल्या शोचा एपिसोड आला की कळव';

  @override
  String get displayAdultContent => 'अ‍ॅडल्ट कंटेंट दाखव';

  @override
  String get displayAdultContentDesc =>
      'ब्राउझ, सर्च आणि फीड्समध्ये 18+ टायटल्स घाल';

  @override
  String get restrictMessages => 'मेसेजेस फक्त फॉलो करणाऱ्यांपुरते मर्यादित कर';

  @override
  String get restrictMessagesDesc =>
      'फक्त तू फॉलो करतोस त्यांनाच तुला मेसेज करता येईल';

  @override
  String get sectionServices => 'सर्व्हिसेस';

  @override
  String get novel => 'नॉव्हेल';

  @override
  String labelService(String label) {
    return '$label सर्व्हिस';
  }

  @override
  String nameSettings(String name) {
    return '$name सेटिंग्ज';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name एक्स्टेंशन ब्रिजमधले ऑप्शन्स';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name सुरू होऊ शकलं नाही: $error';
  }

  @override
  String get importLists => 'लिस्ट्स इम्पोर्ट कर';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi किंवा Kotatsu बॅकअपमधून';

  @override
  String get exportLists => 'लिस्ट्स एक्स्पोर्ट कर';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon किंवा Kotatsu बॅकअपमध्ये';

  @override
  String get sectionBrowse => 'ब्राउझ';

  @override
  String get readingTab => 'रीडिंग टॅब';

  @override
  String get readingTabDesc => 'तिसऱ्या टॅबमध्ये कोणते एक्स्टेंशन्स दिसावेत';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'डिफॉल्ट फीड';

  @override
  String get defaultFeedDesc => 'सोर्स कोणत्या लिस्टसह उघडायचा';

  @override
  String noServiceSupports(String type) {
    return 'कोणतीही सर्व्हिस $type सपोर्ट करत नाही';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed पैकी $loaded सोर्स लोड होतायत';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'इथे कोणतीही एक्स्टेंशन सर्व्हिस $type सपोर्ट करत नाही.';
  }

  @override
  String get loadDataFrom => 'डेटा इथून लोड कर';

  @override
  String noInstalledSourcesYet(String type) {
    return 'अजून कोणतेही इन्स्टॉल केलेले $type सोर्स नाहीत.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name चं एक्स्टेंशन इन्स्टॉल केलेलं नाही';
  }

  @override
  String get thisSource => 'हा सोर्स';

  @override
  String failedToAddRepository(String error) {
    return 'रिपॉझिटरी जोडता आली नाही: $error';
  }

  @override
  String installedType(String type) {
    return 'इन्स्टॉल केलेले $type';
  }

  @override
  String availableType(String type) {
    return 'उपलब्ध $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'इन्स्टॉल केलेले $type एक्स्टेंशन्स नाहीत';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'उपलब्ध $type एक्स्टेंशन्स नाहीत';
  }

  @override
  String get nothingToShowYet => 'अजून दाखवायला काही नाही';

  @override
  String get addTitlesHint => 'लिस्टमध्ये काही टायटल्स जोड, ते इथे दिसतील.';

  @override
  String get couldntLoad => 'लोड करता आलं नाही';

  @override
  String get progressStyleHint =>
      'पिल आणि बार पोस्टरवर येतात; \"बाहेर\" तोच काउंट साध्या मजकुराच्या रूपात दाखवतं — एक निवड.';

  @override
  String get nixManagedUpdate =>
      'हा बिल्ड Nix ने मॅनेज होतो — इथून अपडेट करण्याऐवजी तुझ्या फ्लेकवर \"nix flake update\" चालव आणि रीबिल्ड कर';

  @override
  String autoUpdateFailed(String error) {
    return 'ऑटोमॅटिक अपडेट फेल झालं ($error) — त्याऐवजी डाउनलोड पेज उघडतोय';
  }

  @override
  String get unknownPreference => 'अज्ञात प्रेफरन्स';

  @override
  String unsupportedPreferenceType(String type) {
    return 'असपोर्टेड प्रेफरन्स प्रकार $type';
  }

  @override
  String get notYetReleased => 'अजून रिलीज झालं नाही';

  @override
  String get notStarted => 'सुरू झालं नाही';

  @override
  String get country => 'देश';

  @override
  String get sort => 'सॉर्ट';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon किंवा Kotatsu बॅकअप निवड';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi किंवा Kotatsu मधली लायब्ररी आण. टायटल्स, कव्हर्स, प्रोग्रेस आणि कॅटेगरीज तशाच राहतात.';

  @override
  String get chooseBackupFile => 'बॅकअप फाइल निवड';

  @override
  String importAnimeCount(int count) {
    return '$count अ‍ॅनिमे इम्पोर्ट कर';
  }

  @override
  String importMangaCount(int count) {
    return '$count मांगा इम्पोर्ट कर';
  }

  @override
  String get mergeWithExisting => 'सध्याच्या लिस्ट्सशी मर्ज कर';

  @override
  String get mergeWithExistingDesc =>
      'तुझ्याकडे असलेलं तसंच राहतं; बंद केलं तर जुळणारे टायटल्स बदलले जातात';

  @override
  String get chooseAnother => 'दुसरी निवड';

  @override
  String get import => 'इम्पोर्ट';

  @override
  String animeCount(int count) {
    return '$count अ‍ॅनिमे';
  }

  @override
  String mangaCount(int count) {
    return '$count मांगा';
  }

  @override
  String get chooseSaveLocation => 'बॅकअप कुठे सेव्ह करायचा ते निवड';

  @override
  String savedPath(String path) {
    return '$path सेव्ह झालं';
  }

  @override
  String exportFailed(String error) {
    return 'एक्स्पोर्ट फेल झालं: $error';
  }

  @override
  String get nothingInLocalLists => 'तुझ्या लोकल लिस्ट्समध्ये अजून काही नाही.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'तुझ्या लोकल लिस्ट्समधून $anime अ‍ॅनिमे आणि $manga मांगा एक्स्पोर्ट होतात. Kotatsu फक्त मांगा सपोर्ट करतं.';
  }

  @override
  String get saveToFolder => 'फोल्डरमध्ये सेव्ह कर';

  @override
  String get formatAnimeManga => 'अ‍ॅनिमे आणि मांगा · .tachibk';

  @override
  String get formatMangaTachibk => 'फक्त मांगा · .tachibk';

  @override
  String get formatMangaZip => 'फक्त मांगा · .zip';

  @override
  String get genres => 'जॉनर्स';

  @override
  String get relations => 'रिलेशन्स';

  @override
  String get recommendations => 'रेकमेंडेशन्स';

  @override
  String get openings => 'ओपनिंग्ज';

  @override
  String get endings => 'एंडिंग्ज';

  @override
  String get background => 'पार्श्वभूमी';

  @override
  String get links => 'लिंक्स';

  @override
  String get rank => 'रँक';

  @override
  String get members => 'मेंबर्स';

  @override
  String get favorites => 'आवडते';

  @override
  String get episodes => 'एपिसोड्स';

  @override
  String get chapters => 'चॅप्टर्स';

  @override
  String get volumes => 'व्हॉल्यूम्स';

  @override
  String get format => 'फॉरमॅट';

  @override
  String get source => 'सोर्स';

  @override
  String get duration => 'कालावधी';

  @override
  String minutesPerEpisode(int minutes) {
    return 'प्रति एपिसोड $minutes मिनिटं';
  }

  @override
  String get rating => 'रेटिंग';

  @override
  String get studio => 'स्टुडिओ';

  @override
  String get serialization => 'सिरियलायझेशन';

  @override
  String get season => 'सीझन';

  @override
  String get broadcast => 'ब्रॉडकास्ट';

  @override
  String get aired => 'प्रसारित';

  @override
  String get published => 'प्रकाशित';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get community => 'कम्युनिटी';

  @override
  String get watching => 'बघतोय';

  @override
  String get reading => 'वाचतोय';

  @override
  String get dropped => 'सोडून दिलं';

  @override
  String get planned => 'ठरवलेलं';

  @override
  String get trailers => 'ट्रेलर्स';

  @override
  String get ratings => 'रेटिंग्ज';

  @override
  String get originalTitle => 'ओरिजिनल';

  @override
  String get titleLabel => 'टायटल';

  @override
  String get votes => 'व्होट्स';

  @override
  String get watchedStat => 'बघितलं';

  @override
  String get runtime => 'रनटाइम';

  @override
  String get director => 'दिग्दर्शक';

  @override
  String get network => 'नेटवर्क';

  @override
  String get certification => 'सर्टिफिकेशन';

  @override
  String get airs => 'प्रसारण';

  @override
  String get budget => 'बजेट';

  @override
  String get revenue => 'कमाई';

  @override
  String get released => 'रिलीज झालं';

  @override
  String get tags => 'टॅग्ज';

  @override
  String get author => 'लेखक';

  @override
  String get born => 'जन्म';

  @override
  String get website => 'वेबसाइट';

  @override
  String get established => 'स्थापना';

  @override
  String get manhwa => 'मनहवा';

  @override
  String get manhua => 'मनहुआ';

  @override
  String get novels => 'नॉव्हेल्स';

  @override
  String get thisMonth => 'या महिन्यात';

  @override
  String get movies => 'मूव्हीज';

  @override
  String get shows => 'शोज';

  @override
  String get rewatching => 'पुन्हा बघतोय';

  @override
  String get rereading => 'पुन्हा वाचतोय';

  @override
  String get watchedStatus => 'बघितलं';

  @override
  String get planning => 'प्लॅनिंग';

  @override
  String get paused => 'पॉज केलं';

  @override
  String get watch => 'बघ';

  @override
  String get read => 'वाच';

  @override
  String get finished => 'संपलं';

  @override
  String get releasing => 'रिलीज होतंय';

  @override
  String get cancelled => 'रद्द झालं';

  @override
  String get hiatus => 'हायएटस';

  @override
  String get remove => 'काढ';

  @override
  String syncToService(String service) {
    return '$service वर सिंक कर';
  }

  @override
  String syncedToService(String service) {
    return '$service वर सिंक झालं';
  }

  @override
  String get latestReleases => 'नवीन रिलीजेस';

  @override
  String get topRated => 'टॉप रेटेड';

  @override
  String localSection(String title) {
    return '$title · लोकल';
  }

  @override
  String get localEntryNote =>
      'हे टायटल फक्त या डिव्हाइसवरच्या तुझ्या लोकल लिस्टमध्ये आहे. तुझ्या अकाउंट लिस्टशी भांडण होऊ शकतं म्हणून इथे एडिटिंग बंद आहे; काढता मात्र येईल.';

  @override
  String get cardPresetPoster => 'पोस्टर';

  @override
  String get cardPresetCard => 'कार्ड';

  @override
  String get cardPresetCozy => 'कोझी';

  @override
  String get sortTopRated => 'टॉप रेटेड';

  @override
  String get sortMostPopular => 'सर्वात लोकप्रिय';

  @override
  String get sortTrending => 'ट्रेंडिंग';

  @override
  String get sortNewest => 'नवीन';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'सर्वात जास्त आवडलेले';

  @override
  String get anyCountry => 'कोणताही देश';

  @override
  String get orderScore => 'स्कोअर';

  @override
  String get orderTitle => 'टायटल';

  @override
  String get orderLastUpdated => 'शेवटचं अपडेट';

  @override
  String get orderLastAdded => 'शेवटचं जोडलेलं';

  @override
  String get never => 'कधीच नाही';

  @override
  String get always => 'नेहमी';

  @override
  String get scorePoint100 => '100 पॉइंट';

  @override
  String get scorePoint10Decimal => '10 पॉइंट दशांश';

  @override
  String get scorePoint10 => '10 पॉइंट';

  @override
  String get scorePoint5 => '5 स्टार';

  @override
  String get scorePoint3 => '3 पॉइंट स्मायली';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count तास',
      one: '1 तास',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवस',
      one: '1 दिवस',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आठवडे',
      one: '1 आठवडा',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'पुन्हा सुरू कर';

  @override
  String get resumeSourceMissing =>
      'पुन्हा सुरू करायला या टायटलचा सोर्स इन्स्टॉल कर';

  @override
  String get resumeRemove => 'रिझ्युममधून काढ';

  @override
  String resumeAt(String time) {
    return '$time उरले';
  }

  @override
  String resumePage(int page, int total) {
    return 'पान $page / $total';
  }

  @override
  String get continueWatching => 'बघणं सुरू ठेव';

  @override
  String get continueReading => 'वाचणं सुरू ठेव';

  @override
  String get favouriteAnimeSection => 'आवडते अ‍ॅनिमे';

  @override
  String get favouriteMangaSection => 'आवडते मांगा';

  @override
  String get plannedAnime => 'ठरवलेले अ‍ॅनिमे';

  @override
  String get plannedManga => 'ठरवलेले मांगा';

  @override
  String get completedAnime => 'पूर्ण केलेले अ‍ॅनिमे';

  @override
  String get completedManga => 'पूर्ण केलेले मांगा';

  @override
  String get hiddenMedia => 'लपवलेला मीडिया';

  @override
  String get recentUpdates => 'अलीकडचे अपडेट्स';

  @override
  String get trendingNow => 'आत्ता ट्रेंडिंग';

  @override
  String get popularThisSeason => 'या सीझनमधलं लोकप्रिय';

  @override
  String get trendingMovies => 'ट्रेंडिंग मूव्हीज';

  @override
  String get topRatedSeries => 'टॉप रेटेड सीरिज';

  @override
  String get mostFavouriteSeries => 'सर्वात आवडलेल्या सीरिज';

  @override
  String get popularAnime => 'लोकप्रिय अ‍ॅनिमे';

  @override
  String get trendingManhwa => 'ट्रेंडिंग मनहवा';

  @override
  String get trendingNovels => 'ट्रेंडिंग नॉव्हेल्स';

  @override
  String get topRatedManga => 'टॉप रेटेड मांगा';

  @override
  String get mostFavouriteManga => 'सर्वात आवडलेले मांगा';

  @override
  String get popularManga => 'लोकप्रिय मांगा';

  @override
  String get topMovies => 'टॉप मूव्हीज';

  @override
  String get topOna => 'टॉप ONA';

  @override
  String get topOva => 'टॉप OVA';

  @override
  String get mostPopular => 'सर्वात लोकप्रिय';

  @override
  String get mostFavourite => 'सर्वात आवडलेलं';

  @override
  String get upcoming => 'येणारे';

  @override
  String get topManga => 'टॉप मांगा';

  @override
  String get topManhwa => 'टॉप मनहवा';

  @override
  String get topManhua => 'टॉप मनहुआ';

  @override
  String get topNovels => 'टॉप नॉव्हेल्स';

  @override
  String get topOneShots => 'टॉप वन-शॉट्स';

  @override
  String get trendingMoviesToday => 'आजचे ट्रेंडिंग मूव्हीज';

  @override
  String get trendingShowsToday => 'आजचे ट्रेंडिंग शोज';

  @override
  String get trendingMoviesWeek => 'या आठवड्यातले ट्रेंडिंग मूव्हीज';

  @override
  String get trendingShowsWeek => 'या आठवड्यातले ट्रेंडिंग शोज';

  @override
  String get mostWatchedMoviesMonth =>
      'या महिन्यात सर्वात जास्त बघितलेले मूव्हीज';

  @override
  String get mostWatchedShowsMonth => 'या महिन्यात सर्वात जास्त बघितलेले शोज';

  @override
  String get trendingThisWeek => 'या आठवड्यात ट्रेंडिंग';

  @override
  String get mostWatchedThisMonth => 'या महिन्यात सर्वात जास्त बघितलेलं';

  @override
  String get repoLinksAdded => 'रेपो लिंक्स यशस्वीपणे जोडल्या!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList कडून डेटा घेताना एरर.';

  @override
  String get navInfo => 'माहिती';

  @override
  String get navComments => 'कमेंट्स';

  @override
  String get playerNotAvailable => 'प्लेयर अजून उपलब्ध नाही';

  @override
  String deepLinkInitialError(String error) {
    return 'सुरुवातीची डीप लिंक घेताना एरर: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'लिंक उघडताना एरर: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'ही लिंक उघडता येत नाही: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'लिंक उघडताना एरर: $error';
  }

  @override
  String get forReleasingTitles => 'सध्या रिलीज होत असलेल्या टायटल्ससाठी';

  @override
  String get progress => 'प्रोग्रेस';

  @override
  String get notes => 'नोट्स';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" सर्व्हिस सापडली नाही';
  }

  @override
  String get glassEffectEnabled => 'ग्लास इफेक्ट चालू केला';

  @override
  String get glassEffectDisabled => 'ग्लास इफेक्ट बंद केला';

  @override
  String get materialYouEnabled => 'Material You चालू केलं';

  @override
  String get materialYouDisabled => 'Material You बंद केलं';

  @override
  String get darkModeEnabled => 'डार्क मोड चालू केला';

  @override
  String get darkModeDisabled => 'डार्क मोड बंद केला';

  @override
  String get animeList => 'अ‍ॅनिमे लिस्ट';

  @override
  String get mangaList => 'मांगा लिस्ट';

  @override
  String ownerAnimeList(String owner) {
    return '$owner ची अ‍ॅनिमे लिस्ट';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner ची मांगा लिस्ट';
  }

  @override
  String get loadingList => 'लिस्ट लोड होतेय';

  @override
  String get earlier => 'आधीचं';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिवसांपूर्वी',
      one: '1 दिवसापूर्वी',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count तासांपूर्वी',
      one: '1 तासापूर्वी',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनिटांपूर्वी',
      one: '1 मिनिटापूर्वी',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count मि. पूर्वी';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count ता. पूर्वी';
  }

  @override
  String daysAgoShort(int count) {
    return '$count दि. पूर्वी';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count आ. पूर्वी';
  }

  @override
  String get couldntLoadSource => 'हा सोर्स लोड करता आला नाही';

  @override
  String get followers => 'फॉलोअर्स';

  @override
  String couldntLoadTitle(String title) {
    return '$title लोड करता आलं नाही';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'हे प्रोफाइल लोड करता आलं नाही';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get feed => 'फीड';

  @override
  String get stats => 'स्टॅट्स';

  @override
  String get received => 'मिळालेले';

  @override
  String get sent => 'पाठवलेले';

  @override
  String get global => 'ग्लोबल';

  @override
  String get couldntLoadPage => 'हे पेज लोड करता आलं नाही';

  @override
  String get couldntLoadAllDetails => 'सगळे डिटेल्स लोड करता आले नाहीत';

  @override
  String get series => 'सीरिज';

  @override
  String get studios => 'स्टुडिओज';

  @override
  String get users => 'युजर्स';

  @override
  String repositoriesTitle(String type) {
    return '$type रिपॉझिटरीज';
  }

  @override
  String get repositoryUrl => 'रिपॉझिटरी URL';

  @override
  String get downloadingRepository => 'रिपॉझिटरी डाउनलोड होतेय…';

  @override
  String get noRepositories => 'कोणतीही रिपॉझिटरी जोडलेली नाही';

  @override
  String repoExtensionsCount(String count) {
    return '$count एक्स्टेंशन्स';
  }

  @override
  String get searchExtensions => 'एक्स्टेंशन्स शोध...';

  @override
  String deletePluginTitle(String name) {
    return '$name डिलीट करायचं?';
  }

  @override
  String get deletePluginMessage => 'हा प्लगिन खरंच डिलीट करायचा आहे का?';

  @override
  String pluginDeleted(String name) {
    return '$name डिलीट झालं';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name कॉन्फिगर केलेल्या रेपोमध्ये उपलब्ध नाही';
  }

  @override
  String get pluginFetchFailed => 'प्लगिन माहिती घेता आली नाही';

  @override
  String installPluginTitle(String name) {
    return '$name इन्स्टॉल कर';
  }

  @override
  String sizeLabel(String size) {
    return 'साइज: $size';
  }

  @override
  String get installedState => 'इन्स्टॉल केलेलं';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'एरर:';

  @override
  String get stackTraceDetails => 'डिटेल्स (स्टॅक ट्रेस)';

  @override
  String get shareLogFile => 'लॉग फाइल शेअर कर';

  @override
  String get copyLogs => 'लॉग्स कॉपी कर';

  @override
  String noListToEdit(String service) {
    return '$service मध्ये एडिट करायला लिस्ट नाही';
  }

  @override
  String get couldNotReadFile => 'ती फाइल वाचता आली नाही';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime अ‍ॅनिमे आणि $manga मांगा इम्पोर्ट झाले';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count आधीच आहेत';
  }

  @override
  String get airingNow => 'आत्ता प्रसारित होतंय';

  @override
  String get topRatedMovies => 'टॉप रेटेड मूव्हीज';

  @override
  String get koreanDramas => 'कोरियन ड्रामा';

  @override
  String get chineseDramas => 'चायनीज ड्रामा';

  @override
  String get japaneseDramas => 'जपानी ड्रामा';

  @override
  String get thaiDramas => 'थाई ड्रामा';

  @override
  String get turkishDramas => 'तुर्की ड्रामा';

  @override
  String get miniSeries => 'मिनी सिरीज';

  @override
  String get topRatedShows => 'टॉप रेटेड शोज';

  @override
  String get recommendedSection => 'सुचवलेलं';

  @override
  String get syncRow => 'लिस्ट्स सिंक कर';

  @override
  String get syncRowDesc =>
      'एका सर्व्हिसची लिस्ट तुझ्या इतर अकाउंट्सवर कॉपी कर';

  @override
  String get syncTitle => 'सिंक';

  @override
  String get syncMainService => 'मेन सर्व्हिस';

  @override
  String get syncMainServiceDesc =>
      'तिची लिस्ट हाच आधार; साइन इन असलेल्या इतर सगळ्या सर्व्हिसेस तिच्याशी जुळवल्या जातात';

  @override
  String get syncAuto => 'ऑटो सिंक';

  @override
  String get syncAutoDesc =>
      'अ‍ॅप उघडल्यावर आणि दर 30 मिनिटांनी बॅकग्राउंडमध्ये फेच करून सिंक कर';

  @override
  String get syncAddMissing => 'नसलेल्या एंट्रीज जोड';

  @override
  String get syncAddMissingDesc =>
      'दुसऱ्या सर्व्हिसमध्ये अजून नसलेल्या एंट्रीजही जोड';

  @override
  String get syncOnlyForward => 'जास्त प्रोग्रेस राखून ठेव';

  @override
  String get syncOnlyForwardDesc =>
      'आधीच पुढे असलेल्या सर्व्हिसचा प्रोग्रेस कमी करू नको';

  @override
  String get syncFetch => 'फेच';

  @override
  String get syncFetchAgain => 'पुन्हा फेच कर';

  @override
  String get syncAll => 'सगळं सिंक कर';

  @override
  String get syncStop => 'थांब';

  @override
  String get syncResume => 'पुन्हा सुरू कर';

  @override
  String get syncNothingToSync =>
      'या प्रकारासाठी ही सर्व्हिस सिंक करता येत नाही';

  @override
  String get syncNoTargets => 'सिंक करायला दुसऱ्या सर्व्हिसमध्ये साइन इन कर';

  @override
  String get syncLoadingMap => 'आयडी मॅपिंग लोड होतंय';

  @override
  String get syncComparing => 'लिस्ट्सची तुलना होतेय';

  @override
  String get syncIntro =>
      'एक मेन सर्व्हिस निवड आणि फेच दाब. प्रत्येक सर्व्हिसकडून तुझी लिस्ट एकदा घेतली जाते आणि मेनशी तुलना होते.';

  @override
  String get syncStateSynced => 'सिंक झालं';

  @override
  String get syncStateOutdated => 'सिंक नाही';

  @override
  String get syncStateMissing => 'लिस्टमध्ये नाही';

  @override
  String get syncStateUnmapped => 'जुळत नाही';

  @override
  String syncPaused(String time) {
    return 'रेट लिमिटची वाट बघतोय, $time नंतर पुन्हा सुरू होईल';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count फक्त $name वर आहेत, तसेच ठेवले';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total पैकी $done';
  }

  @override
  String get syncNothingHere => 'दाखवायला काही नाही';

  @override
  String syncLimits(int used, int max, String window) {
    return 'या $window मध्ये $max पैकी $used रिक्वेस्ट्स वापरल्या';
  }

  @override
  String get syncMinute => 'मिनिट';

  @override
  String get syncDay => 'दिवस';

  @override
  String get syncNotInList => 'अजून लिस्टमध्ये नाही';

  @override
  String get syncCleared => 'प्लॅन क्लिअर केला';

  @override
  String get syncClear => 'क्लिअर';

  @override
  String get syncOptions => 'ऑप्शन्स';

  @override
  String get syncShared => 'ही एंट्री दुसऱ्या आयटमशी शेअर होते';

  @override
  String syncNotFound(String service) {
    return '$service वर सापडलं नाही';
  }

  @override
  String syncService(String service, int count) {
    return '$service सिंक कर ($count)';
  }

  @override
  String get syncOnEdit => 'बदल लगेच सिंक कर';

  @override
  String get syncOnEditDesc =>
      'प्रत्येक प्रोग्रेस अपडेट आणि लिस्ट एडिट तुझ्या इतर साइन-इन सर्व्हिसेसना लगेच पाठव';

  @override
  String syncPushed(String services) {
    return '$services वर सिंक झालं';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'रेट लिमिट लागला, थोड्या वेळाने पुन्हा प्रयत्न कर';

  @override
  String get syncAhead => 'जो पुढे आहे तो';

  @override
  String get syncAheadDesc =>
      'दोन्ही बाजूंनी: प्रत्येक टायटलसाठी जी एंट्री सर्वात पुढे आहे ती जिंकते आणि तुझ्या इतर सगळ्या सर्व्हिसेसवर कॉपी होते';

  @override
  String syncAheadFrom(String service) {
    return '$service कडून';
  }

  @override
  String get syncConfirm => 'सिंक करण्याआधी तपास';

  @override
  String get syncConfirmDesc =>
      'सगळं सिंक करताना काय बदलेल आणि किती रिक्वेस्ट्स लागतील ते दाखव';

  @override
  String get syncPreviewTitle => 'सिंकसाठी तयार';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates अपडेट्स, $adds जोडायचे';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'साधारण $count रिक्वेस्ट्स';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count आयडींसाठी आधी लुकअप हवा';
  }

  @override
  String get syncPreviewNothing => 'बदलायला काही नाही';

  @override
  String get syncStart => 'सुरू कर';

  @override
  String get syncRetry => 'पुन्हा प्रयत्न कर';

  @override
  String get syncSkip => 'हा आयटम स्किप कर';

  @override
  String get syncInclude => 'हा आयटम पुन्हा घे';

  @override
  String get syncSkippedLabel => 'स्किप केलं';

  @override
  String get syncChanges => 'फरक';

  @override
  String get syncChangeStatus => 'स्टेटस';

  @override
  String get syncChangeProgress => 'प्रोग्रेस';

  @override
  String get syncChangeScore => 'स्कोअर';

  @override
  String get syncChangeDates => 'तारखा';

  @override
  String get syncChangeRepeat => 'रिवॉच काउंट';

  @override
  String get syncFailedReason => 'का फेल झालं';

  @override
  String get syncSkippedHint =>
      'स्किप केलेल्या आयटम्सना पुन्हा फेच केल्यावरही हात लावला जात नाही';

  @override
  String get commentsRules => 'कमेंटचे नियम';

  @override
  String get commentsRulesBody =>
      'कोणताही नियम मोडलास तर तू बाहेर\n\n1. वर्णद्वेष, भेदभाव किंवा द्वेषपूर्ण भाषा नाही\n2. स्पॅमिंग किंवा स्वतःची जाहिरात नाही\n3. NSFW कंटेंट अजिबात नाही\n4. फक्त इंग्रजी, अपवाद नाही\n5. दुसऱ्याची नक्कल, छळ किंवा शिवीगाळ नाही\n6. बेकायदेशीर कंटेंट किंवा कोणत्याही फॅन्डमबद्दल टोकाचा अनादर नाही\n7. रिपॉझिटरीज किंवा एक्स्टेंशन्स मागू नकोस आणि शेअर करू नकोस\n8. स्पॉयलर्स फक्त स्पॉयलर टॅग आणि इशाऱ्यासह\n9. अल्पवयीन पात्रांबद्दल लैंगिक किंवा अयोग्य कमेंट्स नाहीत\n10. चुकीचं असेल तर पोस्ट करू नकोस!';

  @override
  String get commentsRulesAccept => 'समजलं';

  @override
  String get commentsSortNewest => 'नवीन';

  @override
  String get commentsSortOldest => 'जुनं';

  @override
  String get commentsSortHighest => 'सर्वाधिक रेटिंग';

  @override
  String get commentsSortLowest => 'सर्वात कमी रेटिंग';

  @override
  String commentsEpisodeShort(int number) {
    return 'एप $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'चॅ $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'एपिसोडनुसार फिल्टर कर';

  @override
  String get commentsFilterChapterTitle => 'चॅप्टरनुसार फिल्टर कर';

  @override
  String get commentsFilterTagTitle => 'एपिसोड किंवा चॅप्टर नंबर टाक';

  @override
  String get commentsFilterHint => 'नंबर';

  @override
  String get commentsFilterApply => 'फिल्टर';

  @override
  String get commentsFilterClear => 'सगळं दाखव';

  @override
  String get commentsPlaceholder => 'कमेंट जोड…';

  @override
  String commentsReplyingTo(String name) {
    return '$name ला रिप्लाय देतोय';
  }

  @override
  String get commentsSend => 'पाठव';

  @override
  String get commentsTagButton => 'टॅग';

  @override
  String commentsTagTitle(String label) {
    return 'टॅग $label (ऐच्छिक)';
  }

  @override
  String get commentsTagEpisode => 'एपिसोड';

  @override
  String get commentsTagChapter => 'चॅप्टर';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label नंबर';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'टॅग एकूण संख्येपेक्षा ($total) जास्त असू शकत नाही';
  }

  @override
  String get commentsNoTag => 'टॅग नाही';

  @override
  String get commentsSpoiler => 'स्पॉयलर';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF शोध';

  @override
  String get commentsGifEmpty => 'GIF सापडले नाहीत';

  @override
  String get commentsEmptyText => 'कमेंट रिकामी असू शकत नाही';

  @override
  String get commentsBannedYou => 'तुला कमेंट करायला बंदी आहे';

  @override
  String get commentsEdited => 'कमेंट एडिट झाली';

  @override
  String get commentsDeleted => 'कमेंट डिलीट झाली';

  @override
  String get commentsDeletedPlaceholder => '[डिलीट केलेलं]';

  @override
  String get commentsReported => 'कमेंट रिपोर्ट झाली';

  @override
  String get commentsUserBanned => 'युजर बॅन झाला';

  @override
  String get commentsReport => 'रिपोर्ट';

  @override
  String get commentsReportAsk => 'ही कमेंट मॉडरेटर्सना रिपोर्ट करायची?';

  @override
  String get commentsDelete => 'डिलीट';

  @override
  String get commentsDeleteAsk => 'ही कमेंट सगळ्यांसाठी काढली जाईल.';

  @override
  String get commentsBan => 'बॅन';

  @override
  String get commentsBanAsk => 'या युजरला कमेंट करण्यापासून बॅन करायचं?';

  @override
  String get commentsCopy => 'कॉपी';

  @override
  String get commentsViewReply => '1 रिप्लाय बघ';

  @override
  String commentsViewReplies(int count) {
    return '$count रिप्लाय बघ';
  }

  @override
  String get commentsHideReplies => 'रिप्लाय लपव';

  @override
  String get commentsLoadMore => 'आणखी कमेंट्स लोड कर';

  @override
  String get commentsEmpty => 'अजून कमेंट्स नाहीत. पहिला तूच हो!';

  @override
  String get commentsEmptyFiltered => 'या फिल्टरसाठी कमेंट्स नाहीत';

  @override
  String get commentsSignIn =>
      'कमेंट्स वाचायला आणि लिहायला AniList मध्ये साइन इन कर';

  @override
  String get commentsSignInMessage =>
      'कमेंट्स सगळ्या सर्व्हिसेसमध्ये शेअर होतात आणि तुझं AniList अकाउंट वापरतात.';

  @override
  String get commentsUnavailable => 'या टायटलसाठी कमेंट्स उपलब्ध नाहीत';

  @override
  String get commentsUnavailableMessage =>
      'ते AniList एंट्रीशी जुळवता आलं नाही.';

  @override
  String get commentsDisabled => 'कमेंट्स बंद आहेत';

  @override
  String get commentsDisabledMessage =>
      'सेटिंग्ज › सामान्य मध्ये पुन्हा चालू करू शकतोस.';

  @override
  String get commentsOffline => 'कमेंट्स लोड करता आल्या नाहीत';

  @override
  String get commentsSingleTitle => 'एक कमेंट दाखवतोय';

  @override
  String get commentsShowAll => 'सगळ्या कमेंट्स दाखव';

  @override
  String get commentsSettingsHeader => 'कमेंट्स';

  @override
  String get commentsSettingEnabled => 'कमेंट्स';

  @override
  String get commentsSettingEnabledDesc =>
      'टायटल्सवर कमेंट्स टॅब दाखव आणि तुझ्या AniList अकाउंटने कमेंट सर्व्हरवर साइन इन कर';

  @override
  String get commentsSettingAlerts => 'रिप्लाय नोटिफिकेशन्स';

  @override
  String get commentsSettingAlertsDesc =>
      'कोणी माझ्या कमेंट्सना रिप्लाय दिला की कळव';

  @override
  String get commentsNoticeReplyTitle => 'कमेंटला नवीन रिप्लाय';

  @override
  String commentsNoticeReply(String name) {
    return '$name ने तुझ्या कमेंटला रिप्लाय दिला';
  }

  @override
  String get commentsNoticeWarningTitle => 'तुला एक इशारा मिळाला आहे';

  @override
  String get commentsNoticeWarning => 'कमेंट्स करताना जरा विचार कर';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu कडून अपडेट';

  @override
  String get barcodeTitle => 'बारकोड स्कॅन कर';

  @override
  String get barcodeTooltip => 'बारकोडवरून मांगा किंवा नॉव्हेल शोध';

  @override
  String get barcodeIntro =>
      'व्हॉल्यूमच्या मागच्या बारकोडकडे कॅमेरा धर, किंवा ISBN टाइप कर.';

  @override
  String get barcodeIntroManual =>
      'व्हॉल्यूमच्या मागे बारकोडच्या वर छापलेला ISBN टाइप कर.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'हा वैध ISBN नाही';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn साठी पुस्तक सापडलं नाही';
  }

  @override
  String get barcodeCameraDenied =>
      'कॅमेरा उपलब्ध नाही. कॅमेरा अ‍ॅक्सेस अलाऊ कर किंवा ISBN टाइप कर.';

  @override
  String get themesTitle => 'ओपनिंग्ज आणि एंडिंग्ज';

  @override
  String get themesPlayVideo => 'व्हिडिओ प्ले कर';

  @override
  String get themesPlayAudio => 'फक्त ऑडिओ प्ले कर';

  @override
  String get themesOpenSite => 'AnimeThemes वर उघड';

  @override
  String get themesCredit => 'AnimeThemes कडून थीम्स';

  @override
  String get themesVersions => 'व्हर्जन्स';

  @override
  String get sauceTitle => 'सोर्स शोध';

  @override
  String get sauceIntro =>
      'मांगाचं पान किंवा आर्टवर्क अपलोड कर, किंवा त्याची लिंक पेस्ट कर, ते कुठून आलंय ते शोधू.';

  @override
  String get sauceKeyTitle => 'SauceNAO API की';

  @override
  String get sauceKeyHint => 'ऐच्छिक, रोजची सर्च मर्यादा वाढवते';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php वर फुकट की मिळव';

  @override
  String get sauceOpen => 'सोर्स उघड';

  @override
  String get sauceCredit => 'SauceNAO कडून इमेज सर्च';

  @override
  String get sauceEmpty => 'काहीही जुळलं नाही';

  @override
  String get sauceTooltip => 'मांगा पान किंवा आर्टवर्कचा सोर्स शोध';

  @override
  String get trendzTitle => 'अ‍ॅनिमे चार्ट्स';

  @override
  String get trendzAnime => 'अ‍ॅनिमे';

  @override
  String get trendzFemale => 'स्त्री पात्रं';

  @override
  String get trendzMale => 'पुरुष पात्रं';

  @override
  String get trendzCouple => 'जोड्या';

  @override
  String get trendzCredit => 'AniTrendz चे साप्ताहिक चार्ट्स';

  @override
  String get trendzNew => 'नवीन';

  @override
  String get trendzEmpty => 'चार्ट रिकामा आहे';

  @override
  String get shareCard => 'शेअर कार्ड';

  @override
  String get shareCardList => 'लिस्ट कार्ड शेअर कर';

  @override
  String get shareCardSaved => 'कार्ड सेव्ह झालं';

  @override
  String get shareCardFailed => 'कार्ड बनवता आलं नाही';

  @override
  String get shareCardListEmpty =>
      'तुझ्या लिस्टमध्ये शेअर करायला अजून काही नाही';

  @override
  String get shareCardTop => 'माझे टॉप पिक्स';

  @override
  String themesEpisodes(String eps) {
    return 'एपिसोड्स $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% मॅच';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'आठवडा $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count व्होट्स';
  }

  @override
  String trendzPeak(String rank) {
    return 'पीक #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'टॉप टेनमध्ये $count आठवडे';
  }

  @override
  String get imageSearchTitle => 'इमेजने शोध';

  @override
  String get imageSearchTooltip => 'स्क्रीनशॉटवरून अ‍ॅनिमे शोध';

  @override
  String get imageSearchIntro =>
      'एक स्क्रीनशॉट निवड किंवा इमेज लिंक पेस्ट कर, म्हणजे trace.moe तो एपिसोड आणि तो क्षण शोधेल.';

  @override
  String get imageSearchPick => 'इमेज निवड';

  @override
  String get imageSearchLinkHint => 'इमेज लिंक पेस्ट कर';

  @override
  String get imageSearchGo => 'शोध';

  @override
  String get imageSearchEmpty => 'काहीही जुळलं नाही';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'एपिसोड $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time वर';
  }

  @override
  String get imageSearchPreview => 'प्रीव्ह्यू क्लिप';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% मॅच';
  }

  @override
  String get imageSearchCredit => 'trace.moe कडून';

  @override
  String get imageSearchOpenFailed => 'हे टायटल उघडता आलं नाही';

  @override
  String get groups => 'ग्रुप्स';

  @override
  String get groupsYours => 'तुझे ग्रुप्स';

  @override
  String get groupsPopular => 'लोकप्रिय';

  @override
  String get groupsNew => 'नवीन';

  @override
  String get groupsFeatured => 'फीचर्ड';

  @override
  String get groupsSearch => 'ग्रुप्स शोध';

  @override
  String get groupsAll => 'सगळे';

  @override
  String get groupsEmpty => 'ग्रुप्स सापडले नाहीत';

  @override
  String get groupsEmptyYours =>
      'तू अजून कोणत्याही ग्रुपमध्ये सामील झालेला नाहीस';

  @override
  String get groupsSignIn => 'तू सामील झालेले ग्रुप्स बघायला साइन इन कर';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सदस्य',
      one: '1 सदस्य',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'सामील हो';

  @override
  String get groupsJoined => 'सामील झालास';

  @override
  String get groupsLeave => 'ग्रुप सोड';

  @override
  String get groupsLeaveAsk =>
      'या ग्रुपच्या पोस्ट्स तुझ्या फीडमध्ये दिसणार नाहीत.';

  @override
  String get groupsJoinFailed =>
      'या ग्रुपमध्ये सामील होता आलं नाही, कदाचित फक्त इन्व्हाइटवर असेल';

  @override
  String get groupsLeaveFailed => 'हा ग्रुप सोडता आला नाही';

  @override
  String get groupsPosts => 'पोस्ट्स';

  @override
  String get groupsMembersTab => 'सदस्य';

  @override
  String get groupsAbout => 'माहिती';

  @override
  String get groupsRules => 'नियम';

  @override
  String get groupsPrivacyOpen => 'खुला';

  @override
  String get groupsPrivacyRestricted => 'मर्यादित';

  @override
  String get groupsPrivacyClosed => 'बंद';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'अ‍ॅडमिन';

  @override
  String get groupsRoleMod => 'मॉड';

  @override
  String get groupsCouldntLoad => 'हा ग्रुप लोड करता आला नाही';

  @override
  String get groupsNewPost => 'ग्रुपमध्ये पोस्ट कर';

  @override
  String get groupsPostHint => 'ग्रुपसोबत काहीतरी शेअर कर';

  @override
  String get groupsOpenInBrowser => 'ब्राउझरमध्ये उघड';

  @override
  String get groupsCategory => 'कॅटेगरी';

  @override
  String get groupsLanguage => 'भाषा';

  @override
  String get groupsCreated => 'तयार केला';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count लीडर्स',
      one: '1 लीडर',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'प्रायव्हसी';

  @override
  String get notificationsAll => 'सगळं';

  @override
  String get notificationsAiring => 'एअरिंग';

  @override
  String get notificationsMedia => 'नवीन टायटल्स';

  @override
  String get notificationsReplies => 'रिप्लाय';

  @override
  String get notificationsMentions => 'मेन्शन्स';

  @override
  String get notificationsMessages => 'मेसेजेस';

  @override
  String get notificationsLikes => 'लाइक्स';

  @override
  String get notificationsFollows => 'फॉलोज';

  @override
  String get notificationsNoServices =>
      'साइन इन असलेल्या कोणत्याही सर्व्हिसला नोटिफिकेशन्स नाहीत';

  @override
  String get notificationsNoServicesMessage =>
      'नोटिफिकेशन्स पाठवणाऱ्या सर्व्हिसमध्ये साइन इन कर म्हणजे ते इथे दिसतील.';

  @override
  String get notificationsEmptyKind => 'या कॅटेगरीमध्ये अजून काही नाही';

  @override
  String get notificationsCommentsEmpty => 'कमेंट नोटिफिकेशन्स नाहीत';

  @override
  String get notificationsCommentsEmptyMessage =>
      'तुझ्या कमेंट्सना आलेले रिप्लाय आणि Dantotsu च्या घोषणा इथे दिसतील.';

  @override
  String get notificationsSettings => 'नोटिफिकेशन सेटिंग्ज';

  @override
  String get notificationsPollTitle => 'नवीन नोटिफिकेशन्स तपास';

  @override
  String notificationsPollDesc(int minutes) {
    return 'अ‍ॅप उघडं असताना दर $minutes मिनिटांनी';
  }

  @override
  String get notificationsNotifyAbout => 'याबद्दल कळव';

  @override
  String get notificationsCommentsHeader => 'कमेंट नोटिफिकेशन्स';

  @override
  String systemNotificationsDescFor(String service) {
    return 'अ‍ॅप चालू असताना प्रत्येक न वाचलेल्या $service नोटिफिकेशनसाठी सिस्टम नोटिफिकेशन दाखव.';
  }

  @override
  String get notificationsTestSent => 'टेस्ट नोटिफिकेशन पाठवलं';

  @override
  String get notificationsTestDenied =>
      'Dartotsu साठी नोटिफिकेशन्सना परवानगी नाही. सिस्टम सेटिंग्जमध्ये चालू कर.';

  @override
  String get notificationsTestHint => 'टेस्ट नोटिफिकेशन पाठवायला लाँग-प्रेस कर';

  @override
  String get notificationsTestSample => 'हे टेस्ट नोटिफिकेशन आहे';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ने $media मधल्या तुझ्या कमेंटला रिप्लाय दिला';
  }

  @override
  String get imageSearchNotLink => 'ही लिंकसारखी दिसत नाही';

  @override
  String get imageSearchQuota => 'सर्च कोटा संपला';

  @override
  String get imageSearchBusy =>
      'खूप रिक्वेस्ट्स, थोड्या वेळाने पुन्हा प्रयत्न कर';

  @override
  String imageSearchFailed(int code) {
    return 'सर्च फेल झाला ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count नवीन नोटिफिकेशन्स';
  }

  @override
  String get reactionsTitle => 'रिअ‍ॅक्शन्स';

  @override
  String get reactionsNeedEntry =>
      'रिअ‍ॅक्ट करण्याआधी हे टायटल तुझ्या लिस्टमध्ये जोड';

  @override
  String get reactionsAdd => 'रिअ‍ॅक्शन जोड';

  @override
  String get reactionsHint => 'तुला काय वाटलं? (छोटं आणि स्पॉयलर-फ्री)';

  @override
  String get reactionsPost => 'पोस्ट कर';

  @override
  String get reactionsFailed => 'रिअ‍ॅक्शन अपडेट करता आली नाही';

  @override
  String get settingsWatch => 'बघ आणि वाच';

  @override
  String get settingsWatchDesc =>
      'एपिसोड लिस्ट्स, सोर्स मॅचिंग आणि एपिसोड डिटेल्स';

  @override
  String get watchSettingsLayout => 'एपिसोड लिस्ट';

  @override
  String get watchSettingsSources => 'सोर्सेस';

  @override
  String get watchSettingsMetadata => 'एपिसोड डिटेल्स';

  @override
  String get watchLayout => 'लेआउट';

  @override
  String get watchListView => 'लिस्ट';

  @override
  String get watchGridView => 'ग्रिड';

  @override
  String get watchCompactView => 'कॉम्पॅक्ट';

  @override
  String get watchDefaultLayoutDesc =>
      'एखाद्या टायटलसाठी बदलेपर्यंत एपिसोड्स आणि चॅप्टर्स कसे मांडायचे';

  @override
  String get watchChunkSize => 'रेंज साइज';

  @override
  String get watchChunkSizeDesc =>
      'प्रत्येक रेंज टॅबमध्ये किती एपिसोड्स किंवा चॅप्टर्स';

  @override
  String get watchShowDescription => 'वर्णनं दाखव';

  @override
  String get watchShowDescriptionDesc =>
      'लिस्ट लेआउटमध्ये प्रत्येक टायटलखाली एपिसोडचा सारांश दाखव';

  @override
  String get watchShowFiller => 'फिलर एपिसोड्स दाखव';

  @override
  String get watchShowFillerDesc =>
      'फिलर म्हणून मार्क केलेले एपिसोड्स लपवायला बंद कर';

  @override
  String get watchBlurUnwatched => 'स्पॉयलर थंबनेल्स लपव';

  @override
  String get watchBlurUnwatchedDesc =>
      'अजून न बघितलेल्या एपिसोड्सचं थंबनेल ब्लर कर';

  @override
  String get watchResumeShelf => 'रिझ्युम शेल्फ';

  @override
  String get watchResumeShelfDesc => 'होमवर रिझ्युम ओळ दाखव';

  @override
  String get watchMarkOnLongPress => 'लाँग-प्रेसने प्रोग्रेस मार्क करा';

  @override
  String get watchMarkOnLongPressDesc =>
      'एपिसोड किंवा चॅप्टरवर लाँग-प्रेस करून बघितलेला/न बघितलेला मार्क कर';

  @override
  String get watchMatching => 'सोर्स मॅचिंग';

  @override
  String get watchMatchingDesc =>
      '\"सर्वात जवळचा\" सर्वात चांगला सर्च रिझल्ट घेतो. \"फक्त अचूक\" जवळपास सारखंच टायटल घेतो आणि बाकी तुझ्यावर सोडतो.';

  @override
  String get watchMatchClosest => 'सर्वात जवळची मॅच';

  @override
  String get watchMatchExact => 'फक्त अचूक मॅच';

  @override
  String get watchMetadataDesc =>
      'एपिसोड टायटल्स, सारांश, थंबनेल्स, प्रसारण तारखा आणि फिलर फ्लॅग्ज कुठून यायचे. प्राधान्य ठरवायला ड्रॅग कर; व्हॅल्यू असलेला पहिला सोर्स जिंकतो.';

  @override
  String get watchMetaAniZipDesc =>
      'एपिसोड टायटल्स, सारांश, स्टिल्स आणि प्रसारण तारखा';

  @override
  String get watchMetaKitsuDesc => 'एपिसोड टायटल्स, वर्णनं आणि थंबनेल्स';

  @override
  String get watchMetaSimklDesc =>
      'एपिसोड टायटल्स, वर्णनं, स्टिल्स आणि प्रसारण तारखा';

  @override
  String get watchMetaAniListDesc =>
      'स्ट्रीमिंग एपिसोड टायटल्स, थंबनेल्स आणि एअरिंग शेड्यूल';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai मार्फत MyAnimeList चे एपिसोड टायटल्स, प्रसारण तारखा, फिलर आणि रिकॅप फ्लॅग्ज';

  @override
  String get watchClearMetadata => 'एपिसोड डिटेल्स रिफ्रेश कर';

  @override
  String get watchClearMetadataDesc =>
      'कॅश केलेले एपिसोड डिटेल्स विसर, म्हणजे ते पुन्हा फेच होतील';

  @override
  String get watchMetadataCleared => 'एपिसोड डिटेल्स पुन्हा फेच होतील';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड्स',
      one: '1 एपिसोड',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count चॅप्टर्स',
      one: '1 चॅप्टर',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'एपिसोड $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'चॅप्टर $number';
  }

  @override
  String get watchSearching => 'शोधतोय…';

  @override
  String watchSearchingFor(String term) {
    return 'शोधतोय: $term';
  }

  @override
  String watchSelected(String title) {
    return 'निवडलेलं: $title';
  }

  @override
  String watchFound(String title) {
    return 'सापडलं: $title';
  }

  @override
  String get watchNothingFound => 'या सोर्सवर काहीही सापडलं नाही';

  @override
  String get watchSearchFailed => 'सोर्स सर्च फेल झाला';

  @override
  String get watchLoadFailed => 'लिस्ट लोड करता आली नाही';

  @override
  String get watchSignInToTrack => 'प्रोग्रेस ट्रॅक करायला साइन इन कर';

  @override
  String watchInstallSource(String action) {
    return '$action सुरू करायला एक एक्स्टेंशन इन्स्टॉल कर';
  }

  @override
  String get watchSourceMissing => 'हा सोर्स इन्स्टॉल केलेला नाही';

  @override
  String get watchWrongTitle => 'चुकीचं टायटल?';

  @override
  String get watchSearchAgain => 'पुन्हा शोध';

  @override
  String watchSearchSource(String source) {
    return '$source शोध';
  }

  @override
  String get watchSource => 'सोर्स';

  @override
  String get watchOptions => 'ऑप्शन्स';

  @override
  String get watchReverse => 'क्रम उलटा कर';

  @override
  String get watchScanlators => 'ग्रुप्स';

  @override
  String get watchResetOptions => 'हे ऑप्शन्स रीसेट कर';

  @override
  String get watchContinue => 'पुढे चल';

  @override
  String get watchStart => 'सुरू कर';

  @override
  String get watchPlay => 'प्ले';

  @override
  String get watchRead => 'वाच';

  @override
  String get watchMarkWatched => 'बघितलं म्हणून मार्क कर';

  @override
  String get watchMarkUnwatched => 'न बघितलं म्हणून मार्क कर';

  @override
  String get watchMarkRead => 'वाचलं म्हणून मार्क कर';

  @override
  String get watchMarkUnread => 'न वाचलं म्हणून मार्क कर';

  @override
  String get watchFiller => 'फिलर';

  @override
  String get watchRecap => 'रिकॅप';

  @override
  String get watchNoEpisodes => 'एपिसोड्स सापडले नाहीत';

  @override
  String get watchNoChapters => 'चॅप्टर्स सापडले नाहीत';

  @override
  String get watchSourceTools => 'सोर्स टूल्स';

  @override
  String get watchSourceSettings => 'सोर्स सेटिंग्ज';

  @override
  String get watchOpenWebView => 'वेब व्ह्यूमध्ये उघड';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare चेक सोडव किंवा लॉग इन कर; कुकीज सोर्स रिक्वेस्ट्ससोबत शेअर होतात';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host साठी $count कुकीज सेव्ह आहेत',
      one: '$host साठी 1 कुकी सेव्ह आहे',
      zero: '$host साठी कुकीज सेव्ह नाहीत',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare क्लिअरन्स चालू, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare क्लिअरन्स कुकी नाही';

  @override
  String get watchClearanceSession => 'अ‍ॅप बंद होईपर्यंत टिकते';

  @override
  String get watchAgentShared =>
      'रिक्वेस्ट्स वेब व्ह्यूचा युजर एजंट वापरतात, जो Cloudflare तपासतं';

  @override
  String get watchAgentCustom =>
      'कस्टम युजर एजंट सेट केलेला आहे, त्यामुळे वेब व्ह्यूमधून मिळालेला Cloudflare क्लिअरन्स नाकारला जाऊ शकतो';

  @override
  String get watchTestConnection => 'कनेक्शन टेस्ट कर';

  @override
  String get watchSolveChallenge => 'सोडव';

  @override
  String watchProbeOk(int code) {
    return 'पोहोचता येतं (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare अजूनही चेक मागतंय';

  @override
  String watchProbeBlocked(int code) {
    return 'साइटने ब्लॉक केलं (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'साइटपर्यंत पोहोचता आलं नाही';

  @override
  String get watchClearCookies => 'या साइटच्या कुकीज क्लिअर कर';

  @override
  String get watchCookiesCleared => 'कुकीज क्लिअर झाल्या';

  @override
  String get watchFailTimeout => 'The check didn\'t finish in time';

  @override
  String get watchFailBlocked =>
      'The site blocked this device (access denied). A check won\'t help';

  @override
  String get watchFailTurnstile =>
      'This check needs a tap that the background solver can\'t do';

  @override
  String get watchFailLoad =>
      'The page didn\'t load. Check the connection and the site address';

  @override
  String get watchFailRejected =>
      'The site rejected the clearance it just gave. Try again or clear the cookies';

  @override
  String get watchFailDismissed => 'The check was closed before it finished';

  @override
  String get watchFailCooldown =>
      'You closed the check a moment ago. Press Solve it to try again';

  @override
  String get watchFailQuiet =>
      'The check needs you, and the app was working on its own';

  @override
  String get watchFailWebView => 'The background web view couldn\'t start';

  @override
  String get watchFailUnavailable => 'There is no screen to show the check on';

  @override
  String get watchStatusReady => 'Ready';

  @override
  String get watchStatusChallenge => 'Cloudflare check needed';

  @override
  String get watchStatusBlocked => 'Blocked by the site';

  @override
  String get watchStatusOffline => 'Can\'t reach the site';

  @override
  String get watchStatusUntested => 'Not tested yet';

  @override
  String get watchStatusTesting => 'Testing the connection…';

  @override
  String get watchStatusSolving => 'Passing the Cloudflare check…';

  @override
  String watchSolvedBackground(int seconds) {
    return 'Cloudflare check passed in the background ($seconds s)';
  }

  @override
  String get watchSolvedByUser => 'Cloudflare check passed';

  @override
  String watchClearanceIssued(String time) {
    return 'earned $time';
  }

  @override
  String get watchClearanceStale =>
      'The clearance was earned with another user agent, so it isn\'t sent. Test the connection to get a new one';

  @override
  String get watchSectionConnection => 'Connection';

  @override
  String get watchSectionSession => 'Session';

  @override
  String get watchSectionTools => 'Tools';

  @override
  String get watchMetaSource => 'एपिसोड डिटेल्स कुठून';

  @override
  String get watchMetaAuto => 'ऑटोमॅटिक';

  @override
  String get watchMetaOff => 'बंद';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिंग्ज';

  @override
  String get playerSectionPlayback => 'प्लेबॅक';

  @override
  String get playerSectionSkip => 'स्किपिंग';

  @override
  String get playerSectionGestures => 'कंट्रोल्स';

  @override
  String get playerSectionSubtitles => 'सबटायटल्स';

  @override
  String get playerSectionShaders => 'शेडर्स';

  @override
  String get playerSectionEngine => 'इंजिन';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'प्लेबॅक स्पीड';

  @override
  String get playerCursedSpeed => 'जास्तीचे स्पीड्स';

  @override
  String get playerCursedSpeedDesc => 'लिस्टमध्ये 10x पर्यंत स्पीड्स जोड';

  @override
  String get playerResize => 'रिसाइज मोड';

  @override
  String get playerFitFit => 'फिट';

  @override
  String get playerFitCover => 'कव्हर';

  @override
  String get playerFitStretch => 'स्ट्रेच';

  @override
  String get playerSkipDuration => 'स्किप बटणाची लांबी';

  @override
  String get playerSkipDurationDesc =>
      'ओपनिंग्ज आणि एंडिंग्जच्या बाहेर स्किप बटण किती सेकंद उडी मारतं';

  @override
  String get playerSeekDuration => 'डबल टॅप सीक';

  @override
  String get playerSeekDurationDesc =>
      'डबल टॅप किंवा अ‍ॅरो की वर किती सेकंद उडी मारायची';

  @override
  String get playerAutoPlay => 'पुढचं आपोआप प्ले कर';

  @override
  String get playerAutoPlayDesc => 'हा एपिसोड संपला की पुढचा सुरू कर';

  @override
  String get playerResume => 'जिथे सोडलंस तिथून पुढे चालू कर';

  @override
  String get playerResumeDesc => 'एपिसोड शेवटच्या पोझिशनपासून सुरू ठेव';

  @override
  String get playerOrientation => 'ओरिएंटेशन';

  @override
  String get playerOrientationAuto => 'डिव्हाइसला फॉलो कर';

  @override
  String get playerOrientationLandscape => 'लँडस्केप';

  @override
  String get playerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get playerAutoSkipOpening => 'ओपनिंग्ज स्किप कर';

  @override
  String get playerAutoSkipEnding => 'एंडिंग्ज स्किप कर';

  @override
  String get playerAutoSkipRecap => 'रिकॅप्स स्किप कर';

  @override
  String get playerAutoSkipDesc =>
      'सुरू होताच उडी मार, AniSkip आणि स्ट्रीम टाइमस्टॅम्प्स वापरून';

  @override
  String get playerSkipOnce => 'फक्त एकदाच स्किप कर';

  @override
  String get playerSkipOnceDesc =>
      'मागे सीक केलंस तर तोच भाग पुन्हा स्किप करू नकोस';

  @override
  String get playerAdjustBrightness => 'ब्राइटनेस जेश्चर';

  @override
  String get playerAdjustBrightnessDesc =>
      'स्क्रीनच्या उजव्या अर्ध्या भागात वर-खाली स्वाइप कर';

  @override
  String get playerAdjustVolume => 'व्हॉल्यूम जेश्चर';

  @override
  String get playerAdjustVolumeDesc =>
      'स्क्रीनच्या डाव्या अर्ध्या भागात वर-खाली स्वाइप कर';

  @override
  String get playerHoldToSpeed => 'वेग वाढवायला दाबून ठेव';

  @override
  String get playerHoldToSpeedDesc =>
      'जलद प्ले करायला व्हिडिओवर दाबून ठेव, वेग बदलायला बाजूला ड्रॅग कर';

  @override
  String get playerThumbless => 'जाड सीक बार';

  @override
  String get playerThumblessDesc => 'थंब नसलेला जाड बार';

  @override
  String get playerShowSubtitles => 'सबटायटल्स दाखव';

  @override
  String get playerShowSubtitlesDesc => 'सगळे सबटायटल ट्रॅक लपवायला बंद कर';

  @override
  String get playerSubtitleLanguage => 'पसंतीची सबटायटल भाषा';

  @override
  String get playerSubtitleSize => 'सबटायटल साइज';

  @override
  String get playerSubtitleWeight => 'सबटायटल जाडी';

  @override
  String get playerSubtitleBottom => 'सबटायटल खालचं पॅडिंग';

  @override
  String get playerSubtitleFont => 'सबटायटल फॉन्ट';

  @override
  String get playerSubtitleColor => 'सबटायटल रंग';

  @override
  String get playerSubtitleBackground => 'सबटायटल बॅकग्राउंड';

  @override
  String get playerSubtitleOutline => 'सबटायटल आउटलाइन';

  @override
  String get playerLibass => 'libass वापर';

  @override
  String get playerLibassDesc =>
      'स्टाइल केलेले .ass सबटायटल्स रेंडर कर. मग वरचा साइज, रंग आणि फॉन्ट लागू होत नाहीत';

  @override
  String get playerShaders => 'शेडर्स';

  @override
  String get playerShadersEnable => 'शेडर्स चालू कर';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K सारख्या GLSL शेडर्सनी चित्र अपस्केल आणि स्वच्छ कर';

  @override
  String get playerShadersOff => 'शेडर्स बंद';

  @override
  String get playerShadersMissing => 'Anime4K इन्स्टॉल केलेलं नाही';

  @override
  String get playerShadersMissingDesc =>
      'बिल्ट-इन मोड्स वापरायला Anime4K शेडर पॅक (सुमारे 0.8 MB) डाउनलोड कर.';

  @override
  String get playerShadersDownload => 'Anime4K डाउनलोड कर';

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
  String get playerShadersPreview => 'या फ्रेमवर प्रीव्ह्यू बघ';

  @override
  String get playerShadersUse => 'हे वापर';

  @override
  String get playerPicture => 'पिक्चर';

  @override
  String get playerColors => 'रंग';

  @override
  String get playerColorDefault => 'डिफॉल्ट';

  @override
  String get playerColorVivid => 'व्हिव्हिड';

  @override
  String get playerColorPop => 'अ‍ॅनिमे पॉप';

  @override
  String get playerColorSoft => 'सॉफ्ट';

  @override
  String get playerColorCinematic => 'सिनेमॅटिक';

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
  String get playerColorContrast => 'कॉन्ट्रास्ट';

  @override
  String get playerColorSaturation => 'सॅच्युरेशन';

  @override
  String get playerColorGamma => 'गॅमा';

  @override
  String get playerColorHue => 'ह्यू';

  @override
  String get playerColorReset => 'रीसेट';

  @override
  String get playerColorAdjust => 'अ‍ॅडजस्ट कर';

  @override
  String get playerShadersOriginal => 'ओरिजिनल';

  @override
  String get playerShadersPreviewFailed => 'प्रीव्ह्यूसाठी फ्रेम घेता आली नाही';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'तुझे शेडर्स';

  @override
  String get playerShadersCustom => 'कस्टम शेडर्स';

  @override
  String get playerShadersImport => '.glsl इम्पोर्ट कर';

  @override
  String get playerShadersNone =>
      'तुझ्या स्वतःच्या .glsl किंवा .hook फाइल्स इम्पोर्ट कर आणि चेन करायला टिक कर';

  @override
  String get playerShadersBadFile => '.glsl किंवा .hook शेडर फाइल निवड';

  @override
  String get playerDecoder => 'डिकोडर';

  @override
  String get playerDecoderAuto => 'ऑटो';

  @override
  String get playerDecoderAutoSafe => 'ऑटो (सेफ)';

  @override
  String get playerDecoderSoftware => 'सॉफ्टवेअर';

  @override
  String get playerDecoderHardware => 'हार्डवेअर';

  @override
  String get playerDecoderHardwarePlus => 'हार्डवेअर+';

  @override
  String get playerVideoOutput => 'व्हिडिओ आउटपुट';

  @override
  String get playerAudioChannels => 'ऑडिओ चॅनेल्स';

  @override
  String get playerBuffer => 'बफर साइज (MB)';

  @override
  String get playerBufferDesc =>
      'स्ट्रीम बफर करायला प्लेयर वापरू शकतो ती मेमरी';

  @override
  String get playerUseMpvConf => 'mpv.conf वापर';

  @override
  String get playerUseMpvConfDesc =>
      'प्लेबॅक सुरू होताना तुझ्या mpv.conf मधले ऑप्शन्स लागू कर';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv कॉन्फिगरेशन एडिट कर';

  @override
  String get playerMpvConfDesc =>
      'प्रत्येक ओळीत एक ऑप्शन, साध्या mpv.conf मधल्या --hwdec=auto सारखा. [ब्रॅकेट्स] मधले प्रोफाइल्स दुर्लक्षित केले जातात.';

  @override
  String get playerMpvConfSaved => 'mpv.conf सेव्ह झालं';

  @override
  String get playerUseScripts => 'mpv स्क्रिप्ट्स वापर';

  @override
  String get playerUseScriptsDesc =>
      'स्क्रिप्ट्स फोल्डरमधले प्लगिन्स लोड कर. त्यांना Lua किंवा JavaScript सपोर्ट असलेला libmpv बिल्ड लागतो';

  @override
  String get playerScripts => 'mpv स्क्रिप्ट्स';

  @override
  String get playerScriptsManage => 'प्लगिन्स जोड, काढ आणि बदल';

  @override
  String get playerScriptsAdd => 'स्क्रिप्ट जोड';

  @override
  String get playerScriptsDesc =>
      'इथे ठेवलेले Lua, JavaScript आणि नेटिव्ह प्लगिन्स प्लेबॅक सुरू होताना लोड होतात.';

  @override
  String get playerScriptsNone => 'अजून स्क्रिप्ट्स नाहीत';

  @override
  String get playerScriptsBadFile => '.lua, .js किंवा नेटिव्ह प्लगिन फाइल निवड';

  @override
  String get playerTuning => 'अ‍ॅडव्हान्स्ड व्हिडिओ ट्यूनिंग';

  @override
  String get playerTuningDesc =>
      'सिंक, कॅशिंग, स्केलिंग आणि टोन मॅपिंग ओव्हरराइड कर. चुकीच्या व्हॅल्यूज प्लेबॅक बिघडवू शकतात';

  @override
  String get playerVideoSync => 'व्हिडिओ सिंक';

  @override
  String get playerInterpolation => 'फ्रेम इंटरपोलेशन';

  @override
  String get playerInterpolationDesc =>
      'स्मूथ मोशन, display-resample सिंक लागतो';

  @override
  String get playerPitch => 'पिच करेक्शन';

  @override
  String get playerPitchDesc => 'इतर स्पीड्सवरही आवाज नैसर्गिक ठेव';

  @override
  String get playerCacheSeconds => 'कॅश (सेकंद)';

  @override
  String get playerReadahead => 'रीड अहेड (सेकंद)';

  @override
  String get playerThreads => 'डिकोडर थ्रेड्स';

  @override
  String get playerDeband => 'डिबँड';

  @override
  String get playerDebandDesc => 'ग्रेडियंट्समधलं कलर बँडिंग कमी कर';

  @override
  String get playerDebandIterations => 'डिबँड इटरेशन्स';

  @override
  String get playerDebandThreshold => 'डिबँड थ्रेशोल्ड';

  @override
  String get playerCorrectDownscaling => 'करेक्ट डाउनस्केलिंग';

  @override
  String get playerSigmoid => 'सिग्मॉइड अपस्केलिंग';

  @override
  String get playerScale => 'अपस्केलर';

  @override
  String get playerCscale => 'क्रोमा अपस्केलर';

  @override
  String get playerDscale => 'डाउनस्केलर';

  @override
  String get playerToneMapping => 'टोन मॅपिंग';

  @override
  String get playerTargetPeak => 'टार्गेट पीक';

  @override
  String get playerOpenFiles => 'व्हिडिओ फाइल्स उघड';

  @override
  String get playerOpenFilesDesc => 'या डिव्हाइसवरच्या फाइल्स प्ले कर';

  @override
  String get playerOpenFolder => 'फोल्डर उघड';

  @override
  String get playerOpenFolderDesc =>
      'फोल्डरमधले सगळे व्हिडिओ प्लेलिस्ट म्हणून प्ले कर';

  @override
  String get playerNetworkStream => 'नेटवर्क स्ट्रीम';

  @override
  String get playerNetworkStreamDesc => 'थेट व्हिडिओ किंवा HLS लिंक उघड';

  @override
  String get playerStreamUrl => 'स्ट्रीम URL';

  @override
  String get playerStreamReferer => 'रेफरर (ऐच्छिक)';

  @override
  String get playerTorrent => 'टोरंट';

  @override
  String get playerTorrentDesc => 'मॅग्नेट लिंक किंवा .torrent फाइल स्ट्रीम कर';

  @override
  String get playerMagnetLink => 'मॅग्नेट लिंक किंवा टोरंट URL';

  @override
  String get playerPickTorrent => '.torrent फाइल निवड';

  @override
  String get playerTorrentMissing =>
      'आधी सेटिंग्ज > अ‍ॅड-ऑन्समधून टोरंट अ‍ॅड-ऑन इन्स्टॉल कर';

  @override
  String get playerNoVideos => 'प्ले करता येणारे व्हिडिओ सापडले नाहीत';

  @override
  String get playerReset => 'प्लेयर सेटिंग्ज रीसेट कर';

  @override
  String get playerResetDesc => 'प्लेयरचे सगळे ऑप्शन्स डिफॉल्टवर आण';

  @override
  String get playerResetConfirm => 'प्लेयरच्या सगळ्या सेटिंग्ज रीसेट करायच्या?';

  @override
  String get playerResetDone => 'प्लेयर सेटिंग्ज रीसेट झाल्या';

  @override
  String get playerQuality => 'क्वालिटी';

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
  String get playerStreams => 'स्ट्रीम्स';

  @override
  String get playerAutoSelect => 'स्ट्रीम ऑटो निवड';

  @override
  String get playerAutoSelectDesc =>
      'या टायटलसाठी तुझ्या शेवटच्या निवडीसारखा स्ट्रीम निवड';

  @override
  String get playerLoadingStreams => 'स्ट्रीम्स शोधतोय…';

  @override
  String get playerNoStreams => 'या एपिसोडला स्ट्रीम्स नाहीत';

  @override
  String get playerNoStreamsTitle => 'स्ट्रीम्स सापडले नाहीत';

  @override
  String get playerFailed => 'प्लेबॅक फेल झालं';

  @override
  String get playerTorrentNeeded => 'हा स्ट्रीम टोरंट आहे';

  @override
  String get playerTorrentNeededDesc =>
      'मॅग्नेट लिंक्स आणि .torrent फाइल्स प्ले करायला टोरंट अ‍ॅड-ऑन इन्स्टॉल कर';

  @override
  String get playerOpenAddons => 'अ‍ॅड-ऑन्स उघड';

  @override
  String get playerTryAnotherStream => 'दुसरा स्ट्रीम वापरून बघ';

  @override
  String get playerEpisodes => 'एपिसोड्स';

  @override
  String get playerLock => 'कंट्रोल्स लॉक कर';

  @override
  String get playerFullscreen => 'फुलस्क्रीन';

  @override
  String get readerChapters => 'चॅप्टर्स';

  @override
  String get readerSettingsTitle => 'रीडर सेटिंग्ज';

  @override
  String get readerPreviousChapter => 'मागचा चॅप्टर';

  @override
  String get readerNextChapter => 'पुढचा चॅप्टर';

  @override
  String get readerFirstChapter => 'हा पहिला चॅप्टर आहे';

  @override
  String get readerLastChapter => 'तू सगळं वाचून झालंय';

  @override
  String get readerFailed => 'हा चॅप्टर उघडता आला नाही';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'या चॅप्टरमध्ये मजकूर नाही';

  @override
  String get readerPerTitle => 'फक्त या टायटलसाठी';

  @override
  String get readerPerTitleDesc => 'या रीडर सेटिंग्ज फक्त या टायटलसाठी ठेव';

  @override
  String get readerSectionReading => 'वाचन';

  @override
  String get readerSectionControls => 'कंट्रोल्स';

  @override
  String get readerSectionDisplay => 'डिस्प्ले';

  @override
  String get readerSectionNovel => 'नॉव्हेल';

  @override
  String get readerMode => 'रीडिंग मोड';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'उजवीकडून डावीकडे';

  @override
  String get readerModeLtr => 'डावीकडून उजवीकडे';

  @override
  String get readerModeVertical => 'उभी पानं';

  @override
  String get readerModeWebtoon => 'वेबटून';

  @override
  String get readerModeContinuous => 'सलग स्क्रोल';

  @override
  String get readerScale => 'इमेज स्केल';

  @override
  String get readerScaleFit => 'स्क्रीनला फिट';

  @override
  String get readerScaleWidth => 'रुंदीला फिट';

  @override
  String get readerScaleHeight => 'उंचीला फिट';

  @override
  String get readerScaleOriginal => 'मूळ साइज';

  @override
  String get readerScaleSmart => 'स्मार्ट फिट';

  @override
  String get readerDoublePage => 'दुहेरी पानं';

  @override
  String get readerDoublePageDesc =>
      'लँडस्केपमध्ये दोन पानं शेजारी शेजारी दाखव';

  @override
  String get readerDoubleTapZoom => 'झूमसाठी डबल टॅप';

  @override
  String get readerDoubleTapZoomDesc => 'डबल टॅपने पान झूम इन आणि आउट कर';

  @override
  String get readerAnimate => 'पान अ‍ॅनिमेशन';

  @override
  String get readerAnimateDesc => 'पान पलटताना अ‍ॅनिमेट कर';

  @override
  String get readerSidePadding => 'बाजूचं पॅडिंग';

  @override
  String get readerSidePaddingDesc => 'पानांच्या बाजूची जागा टक्क्यांत';

  @override
  String get readerPageGap => 'पानांमधला गॅप';

  @override
  String get readerPageGapDesc => 'पानांमधली जागा';

  @override
  String get readerAutoNext => 'पुढच्या चॅप्टरमध्ये चालू ठेव';

  @override
  String get readerAutoNextDesc => 'हा चॅप्टर संपत आला की पुढचा चॅप्टर लोड कर';

  @override
  String get readerPreload => 'पानं आधी लोड कर';

  @override
  String get readerPreloadDesc => 'किती पानं पुढे डाउनलोड करायची';

  @override
  String get readerTapZones => 'टॅप झोन्स';

  @override
  String get readerTapDefault => 'डिफॉल्ट';

  @override
  String get readerTapLShaped => 'L-आकाराचे';

  @override
  String get readerTapKindle => 'Kindle सारखे';

  @override
  String get readerTapEdge => 'फक्त कडा';

  @override
  String get readerTapOff => 'बंद';

  @override
  String get readerInvertTaps => 'टॅप झोन्स उलटे कर';

  @override
  String get readerInvertTapsDesc => 'मागचा आणि पुढचा भाग अदलाबदल कर';

  @override
  String get readerBackground => 'बॅकग्राउंड';

  @override
  String get readerBackgroundBlack => 'काळा';

  @override
  String get readerBackgroundGray => 'राखाडी';

  @override
  String get readerBackgroundWhite => 'पांढरा';

  @override
  String get readerBackgroundTheme => 'अ‍ॅप थीम';

  @override
  String get readerFilter => 'कलर फिल्टर';

  @override
  String get readerFilterNone => 'काहीही नाही';

  @override
  String get readerFilterGrayscale => 'ग्रेस्केल';

  @override
  String get readerFilterInvert => 'इन्व्हर्ट';

  @override
  String get readerFilterSepia => 'सेपिया';

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
  String get readerDim => 'डिम';

  @override
  String get readerDimDesc => 'पानं गडद कर';

  @override
  String get readerPageNumber => 'पान क्रमांक';

  @override
  String get readerPageNumberDesc => 'वाचताना पान क्रमांक दाखव';

  @override
  String get readerFullscreen => 'फुलस्क्रीन';

  @override
  String get readerFullscreenDesc => 'सिस्टम बार्स लपव';

  @override
  String get readerCropBorders => 'कडा क्रॉप कर';

  @override
  String get readerCropBordersDesc =>
      'पानांमधले रिकामे पांढरे किंवा काळे मार्जिन कापून टाक';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'व्हॉल्यूम की ने पान पलट';

  @override
  String get readerVolumeKeysDesc =>
      'व्हॉल्यूम डाउनने पुढे, व्हॉल्यूम अपने मागे';

  @override
  String get readerBookmarks => 'बुकमार्क्स';

  @override
  String get readerBookmarkAdd => 'बुकमार्क जोड';

  @override
  String get readerBookmarkRemove => 'बुकमार्क काढ';

  @override
  String get readerBookmarksEmpty => 'अजून बुकमार्क्स नाहीत';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'पान $page / $total';
  }

  @override
  String get readerAutoScroll => 'ऑटो स्क्रोल';

  @override
  String get readerAutoScrollStop => 'ऑटो स्क्रोल थांबव';

  @override
  String get readerAutoScrollSpeed => 'ऑटो स्क्रोल स्पीड';

  @override
  String get readerAutoScrollSpeedDesc =>
      'पानं आपोआप किती वेगाने स्क्रोल होतात किंवा पलटतात';

  @override
  String get readerKeepOn => 'स्क्रीन चालू ठेव';

  @override
  String get readerKeepOnDesc => 'वाचताना स्क्रीन बंद होऊ देऊ नकोस';

  @override
  String get readerOrientation => 'ओरिएंटेशन';

  @override
  String get readerOrientationFree => 'फ्री';

  @override
  String get readerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get readerOrientationLandscape => 'लँडस्केप';

  @override
  String get readerSaveProgress => 'प्रोग्रेस सेव्ह कर';

  @override
  String get readerSaveProgressDesc =>
      'तुझं पान लक्षात ठेव आणि चॅप्टर्स वाचलेले म्हणून मार्क कर';

  @override
  String get readerReset => 'रीडर सेटिंग्ज रीसेट कर';

  @override
  String get readerResetDesc => 'डिफॉल्टवर परत';

  @override
  String get novelSize => 'मजकूर साइज';

  @override
  String get novelFont => 'फॉन्ट';

  @override
  String get novelLineHeight => 'ओळीची उंची';

  @override
  String get novelParagraph => 'परिच्छेद अंतर';

  @override
  String get novelMargin => 'मार्जिन्स';

  @override
  String get novelTheme => 'रीडर थीम';

  @override
  String get novelThemeApp => 'अ‍ॅप थीम';

  @override
  String get novelThemeLight => 'लाइट';

  @override
  String get novelThemeSepia => 'सेपिया';

  @override
  String get novelThemeDark => 'डार्क';

  @override
  String get novelThemeBlack => 'ब्लॅक';

  @override
  String get novelJustify => 'मजकूर जस्टिफाय कर';

  @override
  String get novelJustifyDesc => 'मजकूर दोन्ही कडांना जुळव';

  @override
  String get trackProgressTitle => 'प्रोग्रेस सेव्ह करायचा?';

  @override
  String trackProgressAnime(String name) {
    return 'बघताना $name तुझ्या लिस्टमध्ये ट्रॅक करायचं? लोकल ठेवायला \"फक्त हे डिव्हाइस\" निवड, काहीच सेव्ह करायचं नसेल तर नाही.';
  }

  @override
  String trackProgressManga(String name) {
    return 'चॅप्टर संपवल्यावर $name तुझ्या लिस्टमध्ये ट्रॅक करायचं? लोकल ठेवायला \"फक्त हे डिव्हाइस\" निवड, काहीच सेव्ह करायचं नसेल तर नाही.';
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
  String get trackProgressYes => 'सेव्ह';

  @override
  String get trackProgressReset =>
      'या प्रकारासाठी सेव्ह प्रोग्रेस प्रॉम्प्ट रीसेट केला, तो पुन्हा विचारेल';

  @override
  String get trackProgressNo => 'नाही';

  @override
  String get trackProgressOff => 'बंद';

  @override
  String get trackProgressLocal => 'फक्त हे डिव्हाइस';

  @override
  String get trackProgressSettingAnime => 'अ‍ॅनिमे प्रोग्रेस ट्रॅक कर';

  @override
  String get trackProgressSettingManga =>
      'मांगा आणि नॉव्हेल प्रोग्रेस ट्रॅक कर';

  @override
  String get trackProgressSettingDesc =>
      'एपिसोड उघडताना किंवा चॅप्टर संपवताना काय करायचं';

  @override
  String get trackProgressAsk => 'विचार';

  @override
  String get trackProgressAlways => 'नेहमी';

  @override
  String get dantotsuImport => 'Dantotsu मधून इम्पोर्ट कर';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu सेटिंग्ज बॅकअप वाच (.ani, किंवा एन्क्रिप्टेड .sani)';

  @override
  String get dantotsuPick => 'Dantotsu बॅकअप निवड';

  @override
  String get dantotsuNothing => 'या फाइलमधलं काहीही इम्पोर्ट करता येत नाही';

  @override
  String get dantotsuApply => 'निवडलेलं इम्पोर्ट कर';

  @override
  String dantotsuDone(int done, int total) {
    return '$total पैकी $done इम्पोर्ट झाले';
  }

  @override
  String get dantotsuGroupAccounts => 'अकाउंट्स';

  @override
  String get dantotsuGroupAppearance => 'दिसणं';

  @override
  String get dantotsuGroupExtensions => 'एक्स्टेंशन्स';

  @override
  String get dantotsuGroupApp => 'अ‍ॅप';

  @override
  String get dantotsuGroupPlayer => 'प्लेयर';

  @override
  String get dantotsuAnilist => 'AniList लॉगिन';

  @override
  String get dantotsuMal => 'MyAnimeList लॉगिन';

  @override
  String get dantotsuDiscord => 'Discord रिच प्रेझेन्स टोकन';

  @override
  String get dantotsuTheme => 'थीम';

  @override
  String get dantotsuReposAnime => 'अ‍ॅनिमे एक्स्टेंशन रिपॉझिटरीज';

  @override
  String get dantotsuReposManga => 'मांगा एक्स्टेंशन रिपॉझिटरीज';

  @override
  String get dantotsuReposNovel => 'नॉव्हेल एक्स्टेंशन रिपॉझिटरीज';

  @override
  String get dantotsuUpdates => 'अपडेट तपासणी';

  @override
  String get dantotsuComments => 'कमेंट्स';

  @override
  String get dantotsuActivity => 'AniList नोटिफिकेशन पोलिंग';

  @override
  String get dantotsuDns => 'DNS प्रोव्हायडर';

  @override
  String get dantotsuPlayer => 'प्लेयर स्पीड आणि सबटायटल रंग';

  @override
  String get dantotsuWarning => 'या फाइलमध्ये लॉगिन टोकन्स आहेत. ती खाजगी ठेव.';

  @override
  String get novelIndent => 'परिच्छेद इंडेंट कर';

  @override
  String get novelIndentDesc =>
      'प्रत्येक परिच्छेद पहिल्या ओळीत इंडेंट ठेवून सुरू कर';

  @override
  String get novelLetterSpacing => 'अक्षरांमधलं अंतर';

  @override
  String get novelSectionTranslate => 'भाषांतर';

  @override
  String get sectionExperimental => 'प्रायोगिक';

  @override
  String get kitsuGraphqlDetail => 'जलद डिटेल पेजेस (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'टायटल, त्याची पात्रं, स्टाफ आणि तुझी एंट्री एकाच रिक्वेस्टमध्ये लोड कर';

  @override
  String get togetherTitle => 'एकत्र बघूया';

  @override
  String get togetherIntro =>
      'मित्राने पाठवलेली रूम लिंक पेस्ट कर. तू लगेच सामील होतोस आणि ते बघायला सुरू करतात तेव्हा प्लेयर उघडतो.';

  @override
  String get togetherName => 'तुझं नाव';

  @override
  String get togetherConnecting => 'कनेक्ट होतंय…';

  @override
  String get togetherLeave => 'रूम सोड';

  @override
  String get togetherYou => 'तू';

  @override
  String get togetherNoChat => 'अजून मेसेजेस नाहीत';

  @override
  String get togetherChatHint => 'मेसेज';

  @override
  String get togetherCopyInvite => 'इन्व्हाइट कॉपी कर';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'सर्व्हर आणि रूम कॉपी झाले';

  @override
  String get togetherConnectionLost => 'कनेक्शन तुटलं';

  @override
  String togetherConnectedTo(String room) {
    return '$room शी कनेक्ट झालं';
  }

  @override
  String togetherFailed(String error) {
    return 'कनेक्ट होऊ शकलं नाही: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name सामील झाला';
  }

  @override
  String togetherLeft(String name) {
    return '$name निघून गेला';
  }

  @override
  String togetherPaused(String name) {
    return '$name ने पॉज केलं';
  }

  @override
  String togetherResumed(String name) {
    return '$name ने पुन्हा सुरू केलं';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time वर गेला';
  }

  @override
  String get togetherFollowFailed => 'होस्टचा एपिसोड उघडता आला नाही. तूच उघड.';

  @override
  String get togetherJoinRole => 'रूममध्ये सामील हो';

  @override
  String get togetherOpenHost => 'होस्टचा एपिसोड उघड';

  @override
  String get togetherShowChat => 'लाइव्ह चॅट दाखव';

  @override
  String get togetherWaitingHost => 'होस्टने एपिसोड सुरू करायची वाट बघतोय';

  @override
  String get togetherRoomLink => 'रूम लिंक';

  @override
  String get togetherBadLink => 'ही रूम लिंक नाही';

  @override
  String get togetherHostClosed => 'होस्टने रूम बंद केली';

  @override
  String get togetherNowPlaying => 'आत्ता प्ले होतंय';

  @override
  String togetherWatchingCount(int count) {
    return '$count जण बघतायत';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user ला पॉज करायचंय';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user ला पुन्हा सुरू करायचंय';
  }

  @override
  String get togetherChip => 'एकत्र';

  @override
  String get togetherSettingsDesc => 'लिंकने मित्राच्या रूममध्ये सामील हो';

  @override
  String get novelBilingual => 'ओरिजिनल आणि भाषांतर दाखव';

  @override
  String get novelBilingualDesc =>
      'प्रत्येक परिच्छेदात मूळ मजकूर आणि खाली त्याचं भाषांतर दिसतं';

  @override
  String get novelTranslateTo => 'यात भाषांतर कर';

  @override
  String get novelTranslateOff => 'बंद';

  @override
  String get novelSectionSpeech => 'टेक्स्ट टू स्पीच';

  @override
  String get novelSpeechRate => 'बोलण्याचा वेग';

  @override
  String get novelSpeechPitch => 'बोलण्याचा पिच';

  @override
  String get novelSpeak => 'मोठ्याने वाच';

  @override
  String get novelSpeakStop => 'मोठ्याने वाचणं थांबव';

  @override
  String get novelTranslate => 'चॅप्टरचं भाषांतर कर';

  @override
  String get novelTranslateShowOriginal => 'ओरिजिनल दाखव';

  @override
  String novelTranslateFailed(String error) {
    return 'भाषांतर फेल झालं: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'या डिव्हाइसवर टेक्स्ट टू स्पीच उपलब्ध नाही';

  @override
  String get novelSpeechVoice => 'आवाज';

  @override
  String get novelSpeechVoiceDefault => 'सिस्टम डिफॉल्ट';

  @override
  String get novelSpeakPrevious => 'मागची ओळ';

  @override
  String get novelSpeakNext => 'पुढची ओळ';

  @override
  String get novelTapPaging => 'पान पलटायला कडांवर टॅप कर';

  @override
  String get novelTapPagingDesc =>
      'पान स्क्रोल करायला डाव्या किंवा उजव्या बाजूला टॅप कर, मधला भाग कंट्रोल्स दाखवतो';

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
    return '$count मिनिटं उरली';
  }

  @override
  String get novelBold => 'बोल्ड मजकूर';

  @override
  String get novelBoldDesc => 'जास्त जाडी वापर';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter संपवला';
  }

  @override
  String readerNextUp(String chapter) {
    return 'पुढे: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'मागे: $chapter';
  }

  @override
  String get readerNoPages => 'या चॅप्टरमध्ये पानं नाहीत';

  @override
  String get readerLoadingPages => 'पानं लोड होतायत…';

  @override
  String get readerSlowPage => 'हे पान अजून लोड होतंय…';

  @override
  String get readerPageFailed => 'हे पान लोड करता आलं नाही';

  @override
  String get playerShowComments => 'कमेंट्स दाखव';

  @override
  String get playerHideComments => 'कमेंट्स लपव';

  @override
  String get playerSubtitles => 'सबटायटल्स';

  @override
  String get playerSubtitlesOff => 'सबटायटल्स बंद';

  @override
  String get playerAudio => 'ऑडिओ';

  @override
  String get playerAddSubtitle => 'सबटायटल फाइल जोड';

  @override
  String get playerAddAudio => 'ऑडिओ फाइल जोड';

  @override
  String get playerChapters => 'चॅप्टर्स';

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
  String get playerNoChapters => 'चॅप्टर्स नाहीत';

  @override
  String get playerTimestamp => 'टाइमस्टॅम्प';

  @override
  String get playerAutoPlayDelay => 'पुढच्या एपिसोडचा काउंटडाउन';

  @override
  String get playerWatchedAt => 'इतक्या वेळी बघितलं म्हणून गण';

  @override
  String playerNextIn(int seconds) {
    return 'पुढचा एपिसोड $seconds सेकंदात';
  }

  @override
  String get playerPlayNow => 'आत्ता प्ले कर';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: या टायटलसाठी आपोआप स्किप होईल';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: या टायटलसाठी आपोआप स्किप होणार नाही';
  }

  @override
  String get playerAudioLanguage => 'पसंतीची ऑडिओ भाषा';

  @override
  String get playerLanguageOrderHint =>
      'भाषा स्वल्पविरामाने वेगळ्या कर. सापडलेली पहिली वापरली जाते.';

  @override
  String get playerPip => 'पिक्चर इन पिक्चर';

  @override
  String get playerAutoPip => 'बाहेर पडताना पिक्चर इन पिक्चर';

  @override
  String get playerAutoPipDesc =>
      'अ‍ॅप सोडलंस तरी छोट्या विंडोत प्ले होत राहू दे';

  @override
  String playerAutoPlaying(String title) {
    return 'पुढे $title प्ले होतंय…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'शेडर्स इन्स्टॉल करता आले नाहीत: $error';
  }

  @override
  String playerChapter(int number) {
    return 'चॅप्टर $number';
  }

  @override
  String get playerPerTitle => 'फक्त या टायटलसाठी';

  @override
  String get playerPerTitleDesc =>
      'हे ऑप्शन्स या टायटलसाठी ठेव आणि तुझे डिफॉल्ट्स तसेच राहू दे';

  @override
  String get playerSwapGestures => 'स्वाइपच्या बाजू बदला';

  @override
  String get playerSwapGesturesDesc =>
      'डावीकडे ब्राइटनेस आणि उजवीकडे व्हॉल्यूम';

  @override
  String get playerOpenBig => 'मोठ्या व्ह्यूमध्ये उघडा';

  @override
  String get playerOpenBigDesc =>
      'एपिसोड लिस्टशिवाय प्लेयर थेट फुलस्क्रीनमध्ये सुरू होईल';

  @override
  String get playerPauseOnBlur => 'फोकस गेल्यावर पॉज करा';

  @override
  String get playerPauseOnBlurDesc =>
      'नोटिफिकेशन पॅनेलसारखं काही अ‍ॅप झाकलं तर पॉज होईल, परत आल्यावर सुरू होईल';

  @override
  String get playerAudioOutput => 'ऑडिओ आउटपुट';

  @override
  String get fontAppDefault => 'अ‍ॅप फॉन्ट';

  @override
  String get fontImport => 'फॉन्ट इम्पोर्ट कर';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'सबटायटल डिले';

  @override
  String get playerAudioDelay => 'ऑडिओ डिले';

  @override
  String get playerDelayReset => 'रीसेट';

  @override
  String get playerOnlineSubtitles => 'ऑनलाइन सबटायटल्स';

  @override
  String get playerOnlineSearchHint => 'टायटल आणि एपिसोड';

  @override
  String get playerOnlineNone => 'सबटायटल्स सापडले नाहीत';

  @override
  String playerOnlineFailed(String error) {
    return 'सबटायटल सर्च फेल झाला: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'हे सबटायटल डाउनलोड करता आलं नाही: $error';
  }

  @override
  String get playerOnlineMatch => 'या फाइलशी जुळतं';

  @override
  String get playerOnlineEpisode => 'एपिसोड मॅच';

  @override
  String playerOnlineDownloads(int count) {
    return '$count डाउनलोड्स';
  }

  @override
  String get playerSeekPreview => 'सीक प्रीव्ह्यू';

  @override
  String get playerSeekPreviewDesc =>
      'स्क्रब करताना सीक बारच्या वर छोटा फ्रेम प्रीव्ह्यू दाखव. दुसरा लो-रेझोल्यूशन डिकोडर उघडतो, त्यामुळे स्ट्रीम्सवर जास्त डेटा लागतो.';

  @override
  String get playerSettingsChip => 'सेटिंग्ज';

  @override
  String get playerAudioDevice => 'ऑडिओ डिव्हाइस';

  @override
  String get settingsDownloads => 'डाउनलोड्स';

  @override
  String get settingsDownloadsDesc => 'ऑफलाइन एपिसोड्स, रांग आणि ऑफलाइन मोड';

  @override
  String get downloadsTitle => 'डाउनलोड्स';

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
  String get downloadsOpenDesc => 'रांग आणि या डिव्हाइसवर सेव्ह केलेलं सगळं बघ';

  @override
  String get downloadTitle => 'डाउनलोड';

  @override
  String get downloadAlready => 'आधीच डाउनलोड केलेलं किंवा रांगेत आहे';

  @override
  String get downloadPickStream => 'कोणता स्ट्रीम डाउनलोड करायचा?';

  @override
  String get downloadPickSubtitle => 'कोणतं सबटायटल डाउनलोड करायचं?';

  @override
  String get downloadPickAudio => 'कोणता ऑडिओ ट्रॅक डाउनलोड करायचा?';

  @override
  String get downloadNoAudio => 'जास्तीचा ऑडिओ नको';

  @override
  String get downloadAudio => 'ऑडिओ';

  @override
  String get downloadNoSubtitle => 'सबटायटल नको';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'हा स्ट्रीम HLS प्लेलिस्ट आहे. तो डाउनलोड करायला FFmpeg अ‍ॅड-ऑन लागतो.';

  @override
  String get downloadSourceMissing => 'या एपिसोडचा सोर्स इन्स्टॉल केलेला नाही';

  @override
  String get downloadWaitingConnection => 'कनेक्शनची वाट बघतोय';

  @override
  String get downloadSubtitles => 'सबटायटल्स';

  @override
  String get downloadDownloaded => 'डाउनलोड केलं';

  @override
  String get downloadOffline => 'ऑफलाइन';

  @override
  String get downloadDelete => 'डाउनलोड डिलीट कर';

  @override
  String get downloadCancel => 'रद्द कर';

  @override
  String get downloadPause => 'पॉज';

  @override
  String get downloadPaused => 'पॉज केलं';

  @override
  String get downloadResume => 'पुन्हा सुरू कर';

  @override
  String get downloadPauseAll => 'सगळं पॉज कर';

  @override
  String get downloadResumeAll => 'सगळं पुन्हा सुरू कर';

  @override
  String get downloadQueuedState => 'रांगेत वाट बघतोय';

  @override
  String get downloadResolving => 'स्ट्रीम घेतोय…';

  @override
  String get downloadUsedFallback => 'जुळणारा स्ट्रीम नाही, पहिला वापरला';

  @override
  String get downloadTabQueue => 'रांग';

  @override
  String get downloadTabDone => 'झालं';

  @override
  String get downloadTabFailed => 'फेल झालं';

  @override
  String get downloadEmptyQueue => 'काहीही डाउनलोड होत नाहीये';

  @override
  String get downloadEmptyDone => 'अजून काहीही डाउनलोड केलेलं नाही';

  @override
  String get downloadEmptyFailed => 'फेल झालेले डाउनलोड्स नाहीत';

  @override
  String get downloadNext => 'पुढचा एपिसोड';

  @override
  String downloadNextN(int count) {
    return 'पुढचे $count एपिसोड्स';
  }

  @override
  String downloadUnwatched(int count) {
    return 'न बघितलेले सगळे ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'ही रेंज ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'सगळे एपिसोड्स ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड्स रांगेत टाकले',
      one: '1 एपिसोड रांगेत टाकला',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name डाउनलोड झालं';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name डाउनलोड फेल झालं';
  }

  @override
  String downloadStorage(String size) {
    return 'डाउनलोड्सनी $size वापरलं';
  }

  @override
  String get downloadQueueHeader => 'रांग';

  @override
  String get downloadParallel => 'एकाच वेळी डाउनलोड्स';

  @override
  String get downloadParallelDesc =>
      'एका वेळी एक डाउनलोड चालव किंवा अनेक एकत्र';

  @override
  String get downloadOneByOne => 'एकामागून एक';

  @override
  String get downloadNotifications => 'डाउनलोड नोटिफिकेशन्स';

  @override
  String get downloadNotificationsDesc =>
      'सिस्टम सपोर्ट करत असेल तिथे लाइव्ह प्रोग्रेस, नाहीतर डाउनलोड संपल्यावर एक नोट';

  @override
  String get downloadNotifyLive => 'लाइव्ह';

  @override
  String get downloadNotifyDone => 'संपल्यावर';

  @override
  String get downloadNotifyOff => 'बंद';

  @override
  String get downloadInfoFile => 'प्रत्येक डाउनलोडशेजारी इन्फो फाइल लिही';

  @override
  String get downloadInfoFileDesc =>
      'स्ट्रीम, क्वालिटी, सबटायटल आणि स्किप टाइम्स छोट्या .json फाइलमध्ये सेव्ह करतो';

  @override
  String get offlineHeader => 'ऑफलाइन';

  @override
  String get offlineModeDesc =>
      'ऑटो असेल तर अ‍ॅप कनेक्शनशिवाय सुरू झालं तरच ऑफलाइन जातं. नेहमी असेल तर तू बदलेपर्यंत ऑफलाइनच राहतं.';

  @override
  String get offlineModeOff => 'बंद';

  @override
  String get offlineModeAlways => 'नेहमी';

  @override
  String get offlineModeOn =>
      'ऑफलाइन मोड चालू आहे. बदल इथे सेव्ह होतात आणि ऑनलाइन आलास की पाठवले जातात.';

  @override
  String get offlineSaved =>
      'या डिव्हाइसवर सेव्ह केलं, ऑनलाइन आलास की सिंक होईल';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बदल सिंक झाले',
      one: '1 बदल सिंक झाला',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बदल सिंकची वाट बघतायत',
      one: '1 बदल सिंकची वाट बघतोय',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'सिंकची वाट बघणारे बदल';

  @override
  String get offlinePendingNone => 'काहीही थांबलेलं नाही';

  @override
  String get offlineSyncNow => 'आत्ता सिंक कर';

  @override
  String get offlineDiscard => 'सोडून दे';

  @override
  String get downloadNotOffline =>
      'हा एपिसोड डाउनलोड केलेला नाही, म्हणून तो ऑफलाइन उपलब्ध नाही';

  @override
  String get offlineModeChip => 'ऑफलाइन';

  @override
  String get downloadNextChapter => 'पुढचा चॅप्टर';

  @override
  String downloadNextChapters(int count) {
    return 'पुढचे $count चॅप्टर्स';
  }

  @override
  String downloadUnread(int count) {
    return 'न वाचलेले सगळे ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'सगळे चॅप्टर्स ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total पानं';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count पानं';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg अ‍ॅड-ऑन हवा';

  @override
  String get downloadFfmpegBody =>
      'हा स्ट्रीम HLS प्लेलिस्ट आहे. FFmpeg अ‍ॅड-ऑन त्याचे तुकडे जोडून एक mp4 फाइल बनवतो. तो नसेल तर तुकडे एपिसोड फोल्डरमध्ये राहतात आणि तिथूनच प्ले होतात.';

  @override
  String get downloadFfmpegInstall => 'इन्स्टॉल कर';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg इन्स्टॉल होतंय, थोडा वेळ लागू शकतो…';

  @override
  String get downloadFinishing => 'तुकडे जोडून एक फाइल बनवतोय…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total भाग';
  }

  @override
  String get downloadTorrentNoFile =>
      'या टोरंटमध्ये डाउनलोड करायला व्हिडिओ फाइल नाही';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आयटम्स डाउनलोड होतायत',
      one: '1 आयटम डाउनलोड होतोय',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'बघितलेले डाउनलोड्स डिलीट कर';

  @override
  String get downloadAutoDeleteDesc =>
      'तुझा प्रोग्रेस त्या एपिसोड किंवा चॅप्टरला पोहोचला की डाउनलोड काढून टाकतो';

  @override
  String get downloadConnections => 'प्रति डाउनलोड कनेक्शन्स';

  @override
  String get downloadConnectionsDesc =>
      'मोठी फाइल एकाच वेळी घेतल्या जाणाऱ्या भागांत तोडतो. काही सर्व्हर्स हे मर्यादित करतात.';

  @override
  String get downloadPlayChoice => 'इथून प्ले कर';

  @override
  String get downloadPlayLocalDesc => 'या डिव्हाइसवर सेव्ह केलेली फाइल';

  @override
  String get downloadPlayStream => 'ऑनलाइन स्ट्रीम कर';

  @override
  String get downloadPlayStreamDesc => 'एपिसोड सोर्सवरून लोड कर';

  @override
  String get offlineFeedTitle => 'या डिव्हाइसवर डाउनलोड केलेलं';

  @override
  String get offlineFeedEmpty =>
      'ऑनलाइन असताना काहीतरी डाउनलोड कर, ते इथे दिसेल';

  @override
  String get offlineEnabled => 'ऑफलाइन मोड चालू आहे';

  @override
  String get offlineDisabled => 'ऑफलाइन मोड बंद आहे';

  @override
  String get downloadReadChoice => 'इथून वाच';

  @override
  String get downloadReadLocalDesc => 'या डिव्हाइसवर सेव्ह केलेली पानं';

  @override
  String get downloadReadOnline => 'ऑनलाइन वाच';

  @override
  String get downloadReadOnlineDesc => 'चॅप्टर सोर्सवरून लोड कर';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name या डिव्हाइसवरून डिलीट करायचं?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name चं डाउनलोड रद्द करायचं? जे आधीच डाउनलोड झालंय ते डिलीट होईल.';
  }

  @override
  String get downloadFfmpegFolder => 'फोल्डर म्हणून ठेव';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'कधीच न पाठवलेले $count बदल टाकून द्यायचे? हे परत करता येणार नाही.',
      one: 'कधीच न पाठवलेला बदल टाकून द्यायचा? हे परत करता येणार नाही.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi ची वाट बघतोय';

  @override
  String get downloadWaitingMetered => 'मीटर्ड कनेक्शनवर पॉज केलं';

  @override
  String get downloadWifiOnly => 'फक्त Wi-Fi';

  @override
  String get downloadWifiOnlyDesc => 'मोबाइल डेटावर असताना डाउनलोड्स थांबतात';

  @override
  String get downloadMetered => 'मीटर्ड कनेक्शनवर पॉज कर';

  @override
  String get downloadMeteredDesc =>
      'तुझं डिव्हाइस मीटर्ड म्हणून मार्क करतं त्या Wi-Fi वरही थांबतं';

  @override
  String get downloadSpeedLimit => 'स्पीड लिमिट';

  @override
  String get downloadSpeedLimitDesc => 'एकूण डाउनलोड स्पीडवर मर्यादा घालतो';

  @override
  String get downloadUnlimited => 'अमर्यादित';

  @override
  String get downloadMoveToTop => 'सर्वात वर हलव';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds सीड्स · $peers पीअर्स';
  }

  @override
  String get downloadTorrentFile => 'कोणती फाइल?';

  @override
  String get downloadTorrentAuto => 'एपिसोड आपोआप जुळव';

  @override
  String get downloadTorrentLoading => 'टोरंट वाचतोय…';

  @override
  String get watchAutoSource => 'पुढच्या सोर्सवर आपोआप जा';

  @override
  String get watchAutoSourceDesc =>
      'सोर्सला टायटल सापडलं नाही किंवा तो लोड झाला नाही, तर पुढचा इन्स्टॉल केलेला सोर्स वापर';

  @override
  String get extensionTest => 'एक्स्टेंशन्स टेस्ट कर';

  @override
  String get extensionTestCopy => 'फेल झालेले आणि त्यांचे लॉग्स कॉपी कर';

  @override
  String get extensionTestQuery => 'सर्च शब्द';

  @override
  String get extensionTestRun => 'चालव';

  @override
  String get extensionTestStop => 'थांब';

  @override
  String get extensionTestNone =>
      'या प्रकारचे इन्स्टॉल केलेले एक्स्टेंशन्स नाहीत';

  @override
  String get extensionTestNotRun => 'अजून टेस्ट केलेलं नाही';

  @override
  String get extensionTestSearch => 'शोध';

  @override
  String get extensionTestDetail => 'डिटेल्स';

  @override
  String get extensionTestUnits => 'एपिसोड्स / चॅप्टर्स';

  @override
  String get extensionTestLinks => 'स्ट्रीम्स / पानं';

  @override
  String extensionTestFailedAt(String step) {
    return '$step वर फेल झालं';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total पैकी $done टेस्ट केले · $passed पास · $failed फेल';
  }

  @override
  String get extensionTestCopyLogs => 'पूर्ण लॉग्ससह सगळं कॉपी कर';

  @override
  String get onboardingFeaturesTitle => 'सगळं एकाच ठिकाणी';

  @override
  String get onboardingFeaturesBody =>
      'तू ट्रॅक करतोस, बघतोस आणि वाचतोस ते सगळं, अ‍ॅप्स बदलत बसल्याशिवाय.';

  @override
  String get onboardingFeatureTrack => 'सगळं ट्रॅक कर';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu आणि MangaBaka वर लिस्ट्स, प्रोग्रेस आणि स्कोअर्स.';

  @override
  String get onboardingFeatureWatch => 'बघ आणि वाच';

  @override
  String get onboardingFeatureWatchDesc =>
      'एक्स्टेंशन्स इन्स्टॉल कर आणि अ‍ॅनिमे स्ट्रीम कर किंवा मांगा आणि नॉव्हेल्स थेट अ‍ॅपमध्ये वाच.';

  @override
  String get onboardingFeatureOffline => 'ऑफलाइनही चालू ठेव';

  @override
  String get onboardingFeatureOfflineDesc =>
      'एपिसोड्स आणि चॅप्टर्स डाउनलोड कर आणि कनेक्शनशिवायही पुढे चालू ठेव.';

  @override
  String get onboardingFeatureSync => 'लिस्ट्स सिंकमध्ये ठेव';

  @override
  String get onboardingFeatureSyncDesc =>
      'तुझी लिस्ट सर्व्हिसेसवर कॉपी कर, किंवा जी पुढे असेल तिला जिंकू दे.';

  @override
  String get onboardingServices => 'यांच्यासोबत चालतं';

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
