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
  String get kitsu => 'Kitsu';

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
  String get noSourceSettings => 'इस सोर्स में कोई सेटिंग नहीं है';

  @override
  String get addPluginRepository => 'प्लगइन रिपॉज़िटरी जोड़ो';

  @override
  String get pluginIndexUrlHint => 'प्लगइन इंडेक्स URL';

  @override
  String get addRepository => 'रिपॉज़िटरी जोड़ो';

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
  String get settingsNetworkDesc => 'यूज़र एजेंट, सर्टिफिकेट, DNS और प्रॉक्सी';

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
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

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
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

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
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

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
  String get imageTitlePage => 'Page';

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
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

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
  String get mangaBakaProfile => 'MangaBaka प्रोफ़ाइल';

  @override
  String get refreshFromMangaBaka => 'MangaBaka से रीफ़्रेश करो';

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
  String get hideNsfwDesc =>
      'एडल्ट टाइटल को फ़ीड और सर्च से बाहर रखो, और अपनी एडल्ट एंट्री Hidden Media में दिखाओ।';

  @override
  String get kitsuAccountOptions => 'Kitsu अकाउंट ऑप्शन';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka अकाउंट के विकल्प';

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
  String get refreshFromSimkl => 'Simkl से रीफ़्रेश करो';

  @override
  String get repullProfileLibrary => 'अपनी प्रोफ़ाइल और लाइब्रेरी दोबारा खींचो';

  @override
  String get simklSignInToSearch => 'सर्च करने के लिए Simkl में साइन इन करो';

  @override
  String get dropRate => 'ड्रॉप रेट';

  @override
  String get simklAttribution => 'डेटा और आर्टवर्क Simkl से। Simkl पर देखो';

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
  String get titleCopied => 'टाइटल कॉपी हो गया';

  @override
  String get linkCopied => 'लिंक कॉपी हो गया';

  @override
  String get watchTrailer => 'ट्रेलर देखो';

  @override
  String get copyTitle => 'टाइटल कॉपी करो';

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
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

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
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
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
  String get syncOnlyForward => 'आगे की प्रोग्रेस रखो';

  @override
  String get syncOnlyForwardDesc =>
      'जो सर्विस पहले से आगे है उसकी प्रोग्रेस कम मत करो';

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
  String get watchOptions => 'ऑप्शन';

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
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

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
  String get playerStreams => 'स्ट्रीम';

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
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

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
  String get readerModeAuto => 'Auto (by series type)';

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
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

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
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
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
  String get downloadsOpenDesc => 'क्यू और इस डिवाइस पर सेव सब कुछ देखो';

  @override
  String get downloadTitle => 'डाउनलोड करो';

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
      one:
          'जो बदलाव कभी भेजा नहीं गया उसे फेंक दें? इसे वापस नहीं लाया जा सकता।',
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
