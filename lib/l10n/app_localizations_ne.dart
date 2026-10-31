// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline =>
      'एनिमे र मङ्गा ट्र्याक गर्ने\nनयाँ सबैभन्दा राम्रो एप';

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
  String get loadMore => 'थप लोड गर';

  @override
  String get login => 'लगइन';

  @override
  String get continueAsGuest => 'पाहुनाको रूपमा जारी राख';

  @override
  String get getStarted => 'सुरु गरौं';

  @override
  String get loginWithToken => 'टोकनले लगइन गर';

  @override
  String get pasteTokenHint => 'आफ्नो एक्सेस टोकन पेस्ट गर';

  @override
  String loginTo(String service) {
    return '$service मा लगइन गर';
  }

  @override
  String get settings => 'सेटिङ';

  @override
  String get account => 'खाता';

  @override
  String get about => 'बारेमा';

  @override
  String get language => 'भाषा';

  @override
  String get animationSpeed => 'एनिमेसन';

  @override
  String get animationSpeedDesc => 'एपभरि ट्रान्जिसन र इन्ट्री इफेक्टको गति';

  @override
  String get animationSpeedOff => 'बन्द';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'एक्सटेन्सनहरू',
      one: 'एक्सटेन्सन',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'अज्ञात स्रोत';

  @override
  String get install => 'इन्स्टल गर';

  @override
  String get update => 'अपडेट गर';

  @override
  String get uninstall => 'अनइन्स्टल गर';

  @override
  String get updateInstallCancelled =>
      'इन्स्टल रद्द भयो। इन्स्टल गरिएको एपसँग मिलेन भनेर Android ले भन्यो भने सिग्नेचर फरक छ: पहिले अहिलेको भर्सन अनइन्स्टल गर्नुस्, अनि अपडेट इन्स्टल गर्नुस्';

  @override
  String updateInstallFailed(String error) {
    return 'अपडेट भएन: $error';
  }

  @override
  String get appLock => 'एप लक';

  @override
  String get appLockDesc => 'एप खोल्दा वा केही बेरपछि फर्कँदा पासकोड सोध्छ';

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
  String get appLockUnlock => 'आफ्नो पासकोड हाल्नुस्';

  @override
  String get appLockWrong => 'पासकोड मिलेन';

  @override
  String appLockWait(String seconds) {
    return 'धेरै पटक प्रयास भयो, $seconds सेकेन्ड पर्खनुस्';
  }

  @override
  String get appLockNew => 'एउटा पासकोड छान्नुस्';

  @override
  String get appLockNewHint => '४ देखि ८ अङ्क';

  @override
  String get appLockConfirm => 'फेरि हाल्नुस्';

  @override
  String get appLockMismatch => 'पासकोड मिलेन';

  @override
  String get appLockOn => 'पासकोड सेट भयो';

  @override
  String get appLockRemoveTitle => 'लक बन्द गर्न पासकोड हाल्नुस्';

  @override
  String get installFailed => 'इन्स्टल हुन सकेन';

  @override
  String get updateFailed => 'अपडेट हुन सकेन';

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
  String get noSourceSettings => 'यो स्रोतमा कुनै सेटिङ छैन';

  @override
  String get addPluginRepository => 'प्लगइन रिपोजिटरी थप';

  @override
  String get pluginIndexUrlHint => 'प्लगइन इन्डेक्स URL';

  @override
  String get addRepository => 'रिपोजिटरी थप';

  @override
  String get pluginRepoUpdated => 'प्लगइन रिपोजिटरी अपडेट भयो';

  @override
  String get pluginRepoUpdateFailed => 'प्लगइन रिपोजिटरी रिफ्रेस गर्न सकिएन';

  @override
  String get ok => 'ठीक छ';

  @override
  String get cancel => 'रद्द गर';

  @override
  String get yes => 'हो';

  @override
  String get no => 'होइन';

  @override
  String get save => 'सेभ गर';

  @override
  String get reset => 'रिसेट गर';

  @override
  String get clear => 'खाली गर';

  @override
  String get test => 'परीक्षण';

  @override
  String get testing => 'परीक्षण गर्दै…';

  @override
  String get resolving => 'समाधान गर्दै…';

  @override
  String get none => 'कुनै पनि छैन';

  @override
  String get selectMediaService => 'मिडिया सेवा छान';

  @override
  String get pickColor => 'रङ छान';

  @override
  String get colorPickerCustom => 'कस्टम';

  @override
  String get colorPickerTransparent => 'पारदर्शी';

  @override
  String get ltr => 'बायाँबाट दायाँ';

  @override
  String get searchSettings => 'सेटिङ खोज';

  @override
  String nothingMatches(String query) {
    return '\"$query\" सँग केही मिलेन';
  }

  @override
  String searchCategory(String category) {
    return '$category खोज';
  }

  @override
  String get settingsAppearance => 'देखावट';

  @override
  String get settingsAppearanceDesc => 'थिम, रङ, ग्लास मोड';

  @override
  String get settingsGeneral => 'सामान्य';

  @override
  String get settingsGeneralDesc => 'भाषा र व्यवहार';

  @override
  String get settingsNetwork => 'नेटवर्क';

  @override
  String get settingsNetworkDesc => 'युजर एजेन्ट, सर्टिफिकेट, DNS र प्रोक्सी';

  @override
  String get settingsAccountDesc => 'ट्र्याकिङ सेवा र साइन-इन';

  @override
  String get settingsUpdates => 'अपडेट';

  @override
  String get amoledBlack => 'AMOLED कालो';

  @override
  String get amoledBlackDesc => 'डार्क मोडमा पुरै कालो सतह';

  @override
  String get glassMode => 'ग्लास मोड';

  @override
  String get glassModeDesc => 'तिम्रो लाइब्रेरी आर्टमाथि धमिलो सतह';

  @override
  String get shelfFrame => 'सेक्सनको वरिपरि फ्रेम';

  @override
  String get shelfFrameDesc =>
      'हरेक सेल्फपछाडि कार्ड देखाऊ, वा पङ्क्तिहरू सिधै पेजमा राख';

  @override
  String get settingsExtensionsDesc =>
      'स्रोत म्यानेजर, रिपोजिटरी र एक्सटेन्सन विकल्प';

  @override
  String get settingsAddons => 'एडअन';

  @override
  String get customPath => 'कस्टम स्टोरेज पाथ';

  @override
  String get customPathDesc => 'एपको डाटा कहाँ राख्ने। रिसेट गर्न लामो थिच';

  @override
  String get selectDirectory => 'डिरेक्टरी छान';

  @override
  String get differentCacheManager => 'वैकल्पिक इमेज क्यास';

  @override
  String get differentCacheManagerDesc =>
      'इमेजका लागि फरक क्यास म्यानेजर प्रयोग गर';

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
  String get backupAndRestore => 'ब्याकअप र रिस्टोर';

  @override
  String get backupAndRestoreDesc => 'आफ्ना प्राथमिकता सेभ वा लोड गर';

  @override
  String get backup => 'ब्याकअप';

  @override
  String get restore => 'रिस्टोर';

  @override
  String get loadExtensionsIcon => 'एक्सटेन्सन आइकन लोड गर';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc => 'एक्सटेन्सन सूचीमा स्रोत आइकन देखाऊ';

  @override
  String get sectionStorage => 'स्टोरेज';

  @override
  String get sectionManagers => 'म्यानेजर';

  @override
  String get sectionOptions => 'विकल्प';

  @override
  String get backupTabBackup => 'ब्याकअप लेऊ';

  @override
  String get backupTabRestore => 'रिस्टोर';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories वर्गमा $keys सेटिङ';
  }

  @override
  String backupLastBackup(Object time) {
    return 'पछिल्लो ब्याकअप $time';
  }

  @override
  String get backupNever => 'अहिलेसम्म ब्याकअप छैन';

  @override
  String get backupSelectAll => 'सबै छान';

  @override
  String get backupClearAll => 'खाली गर';

  @override
  String backupKeys(Object count) {
    return '$count सेटिङ';
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
  String get backupPasswordHint => 'डिफल्ट प्रयोग गर्न खाली छोड';

  @override
  String get backupSensitive => 'लगइन टोकन समावेश छन्। यो फाइल गोप्य राख';

  @override
  String get backupCreate => 'ब्याकअप बनाऊ';

  @override
  String backupSaved(Object name) {
    return 'ब्याकअप $name मा सेभ भयो';
  }

  @override
  String backupFailed(Object error) {
    return 'ब्याकअप असफल: $error';
  }

  @override
  String get backupPickFile => 'ब्याकअप फाइल छान';

  @override
  String get backupPickFileDesc => 'Dartotsu ले बनाएको .json फाइल छान';

  @override
  String get backupChooseAnother => 'अर्को फाइल छान';

  @override
  String get backupCreatedAt => 'बनाइएको';

  @override
  String get backupAppVersion => 'एप संस्करण';

  @override
  String get backupDevice => 'डिभाइस';

  @override
  String get backupAccounts => 'खाता';

  @override
  String get backupSize => 'साइज';

  @override
  String get backupEncrypted => 'पासवर्ड सुरक्षित';

  @override
  String get backupUnlock => 'अनलक गर';

  @override
  String get backupWrongPassword => 'यो फाइल पढ्न सकिएन। पासवर्ड जाँच';

  @override
  String get backupRestoreSelected => 'छानिएको रिस्टोर गर';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count सेटिङ रिस्टोर गर्ने? यी वर्गका हालका मान ओभरराइट हुन्छन्।';
  }

  @override
  String get backupRestored => 'रिस्टोर भयो। सबै लागू हुन एप रिस्टार्ट गर';

  @override
  String backupRestoreFailed(Object error) {
    return 'रिस्टोर असफल: $error';
  }

  @override
  String get backupSelectOne => 'कम्तीमा एउटा वर्ग छान';

  @override
  String get backupCatTheme => 'देखावट';

  @override
  String get backupCatThemeDesc => 'थिम, रङ, ग्लास, फन्ट र कार्ड शैली';

  @override
  String get backupCatCommon => 'सामान्य';

  @override
  String get backupCatCommonDesc =>
      'भाषा, स्टोरेज, नेटवर्क र एक्सटेन्सन विकल्प';

  @override
  String get backupCatPlayer => 'प्लेयर';

  @override
  String get backupCatPlayerDesc => 'प्लेयर प्राथमिकता';

  @override
  String get backupCatReader => 'रिडर';

  @override
  String get backupCatReaderDesc => 'रिडर प्राथमिकता';

  @override
  String get backupCatProtected => 'खाता';

  @override
  String get backupCatProtectedDesc => 'लगइन टोकन र साइन-इन डाटा';

  @override
  String get backupCatOther => 'सेवा र फिड';

  @override
  String get backupCatOtherDesc => 'फिड लेआउट, सूची र सेवा विकल्प';

  @override
  String get logFile => 'लग फाइल';

  @override
  String get logFileDesc => 'एप लग सेयर गर, वा Linux मा यसको पाथ कपी गर';

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
  String get logFileCopied => 'लग पाथ कपी भयो';

  @override
  String get donateSheetTitle => 'Dartotsu मन पर्यो?';

  @override
  String get donateSheetMessage =>
      'Dartotsu एक जनाले बनाएको र चलाएको हो। उपयोगी लागेको छ भने विकासलाई सहयोग गर।';

  @override
  String get donateLater => 'पछि गरौंला';

  @override
  String get glassBackground => 'ग्लास ब्याकग्राउन्ड';

  @override
  String get glassBackgroundDesc => 'इमेज लिङ्क नराखे तिम्रो प्रोफाइल ब्यानर';

  @override
  String get glassBackgroundHint => 'इमेज लिङ्क (ब्यानरका लागि खाली छोड)';

  @override
  String get followCover => 'कभर पछ्याऊ';

  @override
  String get followCoverDesc =>
      'रङहरू ब्याकग्राउन्डलाई पछ्याउँछन्, र डिटेल पेजमा कभरलाई';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'कार्ड शैली';

  @override
  String get cardStyleDesc => 'शीर्षक स्थान, साइज, प्रगति र ब्याज';

  @override
  String get customFont => 'फन्ट';

  @override
  String get customFontDesc => 'डिफल्ट, डिभाइसको फाइल, वा Google Fonts';

  @override
  String get customFontError => 'त्यो फन्ट फाइल लोड गर्न सकिएन';

  @override
  String get googleFontError => 'त्यो फन्ट डाउनलोड गर्न सकिएन';

  @override
  String get yourFonts => 'तिम्रा फन्ट';

  @override
  String get addFontFile => 'फन्ट फाइल थप…';

  @override
  String get browseGoogleFonts => 'Google Fonts हेर…';

  @override
  String get searchGoogleFonts => 'Google Fonts खोज';

  @override
  String get defaultFont => 'डिफल्ट';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'सिस्टमबाट डायनामिक रङ';

  @override
  String get jsonTheme => 'कस्टम थिम फाइल';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json बाट लाइभ रङ (कस्टम स्क्रिप्ट, वा तिम्रै सम्पादन)';

  @override
  String get themeMode => 'थिम मोड';

  @override
  String get mode => 'मोड';

  @override
  String get trackingService => 'ट्र्याकिङ सेवा';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signIn => 'साइन इन';

  @override
  String get notSignedIn => 'साइन इन गरेको छैन';

  @override
  String signOutOf(String service) {
    return '$service बाट साइन आउट गर्ने?';
  }

  @override
  String get checkForUpdates => 'अपडेट जाँच गर';

  @override
  String get checkForUpdatesDesc => 'नयाँ GitHub रिलिज आएपछि सूचना देऊ';

  @override
  String get updateChannel => 'अपडेट च्यानल';

  @override
  String get channel => 'च्यानल';

  @override
  String get stable => 'स्टेबल';

  @override
  String get preRelease => 'प्री-रिलिज';

  @override
  String get alpha => 'अल्फा';

  @override
  String get checkNow => 'अहिले जाँच गर';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'डिफल्ट';

  @override
  String currentlyUsing(String value) {
    return 'हाल: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'डिफल्ट (Cloudflare)';

  @override
  String get proxy => 'प्रोक्सी';

  @override
  String get proxyProtocol => 'प्रकार';

  @override
  String get proxyHost => 'होस्ट';

  @override
  String get proxyPort => 'पोर्ट';

  @override
  String get proxyUsername => 'प्रयोगकर्ता नाम';

  @override
  String get proxyPassword => 'पासवर्ड';

  @override
  String get optional => 'ऐच्छिक';

  @override
  String get clearCookies => 'कुकी खाली गर';

  @override
  String get clearCookiesDesc => 'सेभ गरिएका सबै कुकी हटाऊ';

  @override
  String notImplementedArea(String area) {
    return '$area — चाँडै आउँदैछ';
  }

  @override
  String notImplementedService(String service) {
    return '$service ले यो अहिलेसम्म सपोर्ट गर्दैन।';
  }

  @override
  String get couldNotLoadResults => 'नतिजा लोड गर्न सकिएन';

  @override
  String get updateCheckFailed => 'अपडेट जाँच गर्न सकिएन';

  @override
  String get highRefreshRate => 'उच्च रिफ्रेस दर';

  @override
  String get highRefreshRateDesc =>
      'तिम्रो स्क्रिनले सपोर्ट गर्ने सबैभन्दा उच्च रिफ्रेस दर प्रयोग गर';

  @override
  String get imageSave => 'इमेज सेभ गर';

  @override
  String imageSavedTo(String path) {
    return '$path मा सेभ भयो';
  }

  @override
  String get imageActionFailed => 'इमेज डाउनलोड गर्न सकिएन';

  @override
  String get imageTitleCover => 'कभर';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'ब्यानर';

  @override
  String get imageTitleAvatar => 'प्रोफाइल फोटो';

  @override
  String get verifyTls => 'सर्टिफिकेट प्रमाणित गर';

  @override
  String get verifyTlsDesc =>
      'अमान्य HTTPS सर्टिफिकेट भएका सर्भर अस्वीकार गर। सेल्फ-साइन्ड प्रयोग गर्ने स्रोतका लागि मात्र बन्द गर';

  @override
  String get clearCookiesConfirm =>
      'सेभ गरिएका सबै कुकी हटाउने? यसले तिमीलाई केही स्रोतबाट साइन आउट गर्न सक्छ।';

  @override
  String get version => 'संस्करण';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'स्रोत, इस्यु र रिलिज';

  @override
  String get discordDesc => 'समुदाय र सहयोग';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'विकासलाई सहयोग गर';

  @override
  String get contributors => 'योगदानकर्ता';

  @override
  String get contributorsDesc => 'Dartotsu बनाउने मान्छेहरू';

  @override
  String get contributorsLoadFailed => 'योगदानकर्ता लोड गर्न सकिएन';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu मा आधारित प्रोजेक्टहरू';

  @override
  String get forksEmpty => 'कुनै फोर्क भेटिएन';

  @override
  String get sectionColors => 'रङ';

  @override
  String get sectionDisplay => 'डिस्प्ले';

  @override
  String get sectionStyle => 'शैली';

  @override
  String get sectionCommunity => 'समुदाय';

  @override
  String get sectionAppInfo => 'एप जानकारी';

  @override
  String get sectionRequests => 'रिक्वेस्ट';

  @override
  String get sectionDnsProxy => 'DNS र प्रोक्सी';

  @override
  String get onboardingBack => 'पछाडि';

  @override
  String get onboardingNext => 'अर्को';

  @override
  String get onboardingSkip => 'छोड';

  @override
  String get onboardingPaletteTitle => 'आफ्नो बनाऊ';

  @override
  String get onboardingPaletteBody =>
      'एउटा प्यालेट छान। कार्डदेखि प्लेयरसम्म हरेक एक्सेन्ट त्यसलाई पछ्याउँछ।';

  @override
  String get themeModeAuto => 'अटो';

  @override
  String get themeModeLight => 'लाइट';

  @override
  String get themeModeDark => 'डार्क';

  @override
  String get onboardingSyncTitle => 'आफ्नो लाइब्रेरी सिङ्क गर';

  @override
  String get onboardingSyncBody =>
      'आफ्ना सूची, प्रगति र स्कोर ल्याउन AniList मा साइन इन गर। वा छोडेर पाहुनाको रूपमा हेर।';

  @override
  String get onboardingOpenLinks => 'AniList र रिपो लिङ्क Dartotsu मा खोल';

  @override
  String get onboardingPermsTitle => 'अनुमति';

  @override
  String get onboardingPermsBody =>
      'डाउनलोड, अपडेट र अलर्ट बिना अवरोध चलून् भनेर अहिले यी अनुमति देऊ। पछि सिस्टम सेटिङमा बदल्न सकिन्छ।';

  @override
  String get permNotifications => 'सूचना';

  @override
  String get permNotificationsDesc => 'डाउनलोड प्रगति, नयाँ एपिसोड र जवाफ';

  @override
  String get permStorage => 'सबै फाइलको एक्सेस';

  @override
  String get permStorageDesc => 'डाउनलोड सार्वजनिक Dartotsu फोल्डरमा सेभ गर';

  @override
  String get permInstall => 'अपडेट इन्स्टल गर';

  @override
  String get permInstallDesc => 'Dartotsu लाई आफ्नै एप अपडेट इन्स्टल गर्न देऊ';

  @override
  String get permBattery => 'बन्देजरहित ब्याट्री';

  @override
  String get permBatteryDesc => 'लामा डाउनलोड ब्याकग्राउन्डमा चलिरहोस्';

  @override
  String get permGrant => 'अनुमति देऊ';

  @override
  String get linkOpenInApp => 'लिङ्क Dartotsu मा खोल';

  @override
  String get linkOpenInAppDesc => 'AniList र रिपो लिङ्कले एप खोलून्';

  @override
  String get reviewsTitle => 'रिभ्यू';

  @override
  String get reviewsEmpty => 'अहिलेसम्म रिभ्यू छैन';

  @override
  String get reviewsFailed => 'रिभ्यू लोड गर्न सकिएन';

  @override
  String get reviewHelpfulQuestion => 'यो रिभ्यू उपयोगी थियो?';

  @override
  String get reviewVoteFailed => 'तिम्रो भोट सेभ गर्न सकिएन';

  @override
  String reviewHelpful(int n, int total) {
    return '$total मध्ये $n जनालाई यो उपयोगी लाग्यो';
  }

  @override
  String get calendarTitle => 'प्रसारण तालिका';

  @override
  String get calendarToday => 'आज';

  @override
  String get calendarEmpty => 'यो दिन केही प्रसारण हुँदैन';

  @override
  String get calendarFailed => 'तालिका लोड गर्न सकिएन';

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
  String get shareAnalytics => 'बेनामी प्रयोग डाटा सेयर गर';

  @override
  String get shareAnalyticsDesc =>
      'बेनामी प्रयोगकर्ता संख्या र क्र्यास रिपोर्ट। कुनै खाता वा व्यक्तिगत डाटा छैन';

  @override
  String get linkOpenAnilist => 'AniList लिङ्क Dartotsu मा खोल';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co लिङ्कले एप खोल्न लिङ्क ह्यान्डलिङ अन गर';

  @override
  String get linkSettingsFailed => 'सिस्टम सेटिङ खोल्न सकिएन';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'तिमी के गर्दैछौ भनेर आफ्नो Discord प्रोफाइलमा देखाऊ। तिम्रो Discord टोकन चाहिन्छ।';

  @override
  String get discordRichPresenceDesktopDesc =>
      'तिमी के गर्दैछौ भनेर आफ्नो Discord प्रोफाइलमा देखाऊ। Discord डेस्कटप एप चलिरहेको हुनुपर्छ।';

  @override
  String get discordBrowsing => 'ब्राउजिङ गतिविधि देखाऊ';

  @override
  String get discordBrowsingDesc =>
      'तिमीले हेरेको वा पढेको मात्र होइन, हेरिरहेको ट्याब, पेज वा प्रोफाइल पनि देखाऊ।';

  @override
  String get discordLookHeader => 'प्रेजेन्सको लुक';

  @override
  String get discordActivityType => 'गतिविधि प्रकार';

  @override
  String get discordActivityTypeDesc =>
      'Discord ले यसलाई कसरी लेख्छ: \"Watching …\" वा \"Playing …\"। अटो भए एनिमेका लागि Watching र बाँकी सबैका लागि Playing।';

  @override
  String get discordWatching => 'हेर्दै';

  @override
  String get discordPlaying => 'खेल्दै';

  @override
  String get discordCovers => 'कभर देखाऊ';

  @override
  String get discordCoversDesc => 'कार्डमा कभर आर्ट र Dartotsu आइकन।';

  @override
  String get discordTimer => 'टाइमर देखाऊ';

  @override
  String get discordTimerDesc => 'शीर्षकमुनि बितेको वा बाँकी समय।';

  @override
  String get discordButtons => 'बटन देखाऊ';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" र \"Open Dartotsu\" बटन।';

  @override
  String get discordHideTitles => 'शीर्षक लुकाऊ';

  @override
  String get discordHideTitlesDesc =>
      'एनिमे र मङ्गाका नाम (तिनका कभर र लिङ्कसहित) \"Something private\" ले बदल।';

  @override
  String get discordConnectionHeader => 'कनेक्सन';

  @override
  String get listSearchHint => 'यो सूचीमा खोज';

  @override
  String get listSort => 'क्रमबद्ध';

  @override
  String get listFilter => 'फिल्टर';

  @override
  String get listRandom => 'अनियमित शीर्षक';

  @override
  String get listReverse => 'क्रम उल्टाऊ';

  @override
  String get listSortDefault => 'सूची क्रम';

  @override
  String get listSortScore => 'तिम्रो स्कोर';

  @override
  String get listSortTitle => 'शीर्षक';

  @override
  String get listSortUpdated => 'पछिल्लो अपडेट';

  @override
  String get listSortProgress => 'प्रगति';

  @override
  String get listSortReleased => 'रिलिज मिति';

  @override
  String get listSortAverage => 'औसत स्कोर';

  @override
  String get listFilterFormat => 'ढाँचा';

  @override
  String get listFilterStatus => 'स्थिति';

  @override
  String get listFilterGenres => 'विधा';

  @override
  String get listFilterClear => 'फिल्टर खाली गर';

  @override
  String get listNoMatches => 'यो सूचीमा केही मिलेन';

  @override
  String get discordLogin => 'Discord मा लगइन गर';

  @override
  String get discordToken => 'Discord टोकन';

  @override
  String get discordTokenSaved => 'सेभ भयो। बदल्न ट्याप गर, हटाउन लामो थिच।';

  @override
  String get discordTokenNotSet => 'सेट गरिएको छैन। थप्न ट्याप गर।';

  @override
  String get discordTokenSavedSnack => 'Discord टोकन सेभ भयो';

  @override
  String get discordTokenRemovedSnack => 'Discord टोकन हटाइयो';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn => 'अन · लुक बदल्न ट्याप गर';

  @override
  String get discordRichPresenceRowOff =>
      'तिमी के गर्दैछौ भनेर आफ्नो Discord प्रोफाइलमा देखाऊ';

  @override
  String get loginCancelled => 'लगइन रद्द भयो';

  @override
  String get invalidToken => 'अमान्य टोकन';

  @override
  String loginFailed(String error) {
    return 'लगइन असफल: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList लगइन असफल भयो';

  @override
  String get kitsuLoginFailed => 'Kitsu लगइन असफल भयो। इमेल र पासवर्ड जाँच।';

  @override
  String get kitsuLoginTitle => 'Kitsu मा साइन इन गर';

  @override
  String get emailOrUsername => 'इमेल वा प्रयोगकर्ता नाम';

  @override
  String get password => 'पासवर्ड';

  @override
  String get kitsuProfile => 'Kitsu प्रोफाइल';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka लगइन असफल भयो';

  @override
  String get mangaBakaProfile => 'MangaBaka प्रोफाइल';

  @override
  String get refreshFromMangaBaka => 'MangaBaka बाट रिफ्रेस गर';

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
  String get artistsLabel => 'कलाकार';

  @override
  String get authorsLabel => 'लेखक';

  @override
  String get publishersLabel => 'प्रकाशक';

  @override
  String get licensedLabel => 'लाइसेन्स प्राप्त';

  @override
  String get contentRatingLabel => 'सामग्री रेटिङ';

  @override
  String get yesLabel => 'हो';

  @override
  String get noLabel => 'होइन';

  @override
  String get ratingSteps => 'रेटिङ चरण';

  @override
  String get hideNsfw => 'NSFW लुकाऊ';

  @override
  String get hideNsfwDesc =>
      'वयस्क शीर्षक फिड र खोजबाट बाहिर राख, र आफ्ना वयस्क इन्ट्री Hidden Media मा देखाऊ।';

  @override
  String get kitsuAccountOptions => 'Kitsu खाता विकल्प';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka खाताका विकल्प';

  @override
  String get couldNotUpdateKitsuSettings =>
      'तिम्रो Kitsu सेटिङ अपडेट गर्न सकिएन';

  @override
  String get titleCanonical => 'क्यानोनिकल';

  @override
  String get titleRomanized => 'रोमनाइज्ड';

  @override
  String get titleLocalized => 'स्थानीयकृत';

  @override
  String get ratingSystem => 'रेटिङ प्रणाली';

  @override
  String get ratingSimple => 'सरल (३ अनुहार)';

  @override
  String get ratingRegular => 'सामान्य (५ तारा)';

  @override
  String get ratingAdvanced => 'उन्नत (१० अङ्क)';

  @override
  String get contentFilter => 'सामग्री फिल्टर';

  @override
  String get contentSfw => 'सुरक्षित (SFW) मात्र';

  @override
  String get contentSometimes => 'खोजमा वयस्क सामग्री';

  @override
  String get contentEverywhere => 'सबै ठाउँमा वयस्क सामग्री';

  @override
  String get shareToGlobal => 'ग्लोबल फिडमा सेयर गर';

  @override
  String get shareToGlobalDesc =>
      'तिम्रो गतिविधि Kitsu को ग्लोबल फिडमा देखिन देऊ।';

  @override
  String get memberSince => 'सदस्य भएको मिति';

  @override
  String get location => 'स्थान';

  @override
  String get accountType => 'खाताको प्रकार';

  @override
  String get accountSupporter => 'सपोर्टर';

  @override
  String get accountFree => 'निःशुल्क';

  @override
  String get accountDetails => 'खाताको विवरण';

  @override
  String get refreshFromKitsu => 'Kitsu बाट रिफ्रेस गर';

  @override
  String get simklReadOnly => 'Simkl लाई पढ्न मात्र पाउने एक्सेस दिइयो';

  @override
  String get incognitoEditsBlocked => 'इन्कोग्निटो: सूची सम्पादन रोकिएको छ';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'इन्कोग्निटो: प्रगति सेभ भएन';

  @override
  String progressSet(int progress) {
    return 'प्रगति $progress मा सेट गरियो';
  }

  @override
  String removedFromList(String title) {
    return 'तिम्रो सूचीबाट $title हटाइयो';
  }

  @override
  String get following => 'फलो गर्दै';

  @override
  String get homeSections => 'होम सेक्सन';

  @override
  String get homeSectionsHint =>
      'क्रम मिलाउन तान। लुकाइएका सेक्सन कहिल्यै लोड हुँदैनन्।';

  @override
  String get customListDeleteFailed => 'कस्टम सूची मेट्न सकिएन';

  @override
  String get customListsSaveFailed => 'कस्टम सूची सेभ गर्न सकिएन';

  @override
  String get customListsSaved => 'कस्टम सूची सेभ भयो';

  @override
  String get listName => 'सूचीको नाम';

  @override
  String get addList => 'सूची थप';

  @override
  String voiceActorsIn(String name) {
    return 'आवाज कलाकार · $name';
  }

  @override
  String get animeAppearances => 'एनिमेमा उपस्थिति';

  @override
  String get mangaAppearances => 'मङ्गामा उपस्थिति';

  @override
  String get voicedCharacters => 'आवाज दिएका पात्र';

  @override
  String get animeCredits => 'एनिमे क्रेडिट';

  @override
  String get mangaCredits => 'मङ्गा क्रेडिट';

  @override
  String get mainProductions => 'मुख्य प्रोडक्सन';

  @override
  String get otherWorks => 'अन्य काम';

  @override
  String get prequelSequel => 'प्रिक्वेल र सिक्वेल';

  @override
  String get previousSeason => 'अघिल्लो सिजन';

  @override
  String get thisSeason => 'यो सिजन';

  @override
  String get nextSeason => 'अर्को सिजन';

  @override
  String get voiceRoles => 'आवाजको भूमिका';

  @override
  String get staffPositions => 'स्टाफ पद';

  @override
  String get mangaWorks => 'मङ्गा काम';

  @override
  String get malProfile => 'MyAnimeList प्रोफाइल';

  @override
  String get refreshFromMal => 'MyAnimeList बाट रिफ्रेस गर';

  @override
  String get repullProfileCounts => 'आफ्नो प्रोफाइल र गणना फेरि तान';

  @override
  String get refreshed => 'रिफ्रेस भयो';

  @override
  String get simklProfile => 'Simkl प्रोफाइल';

  @override
  String get refreshFromSimkl => 'Simkl बाट रिफ्रेस गर';

  @override
  String get repullProfileLibrary => 'आफ्नो प्रोफाइल र लाइब्रेरी फेरि तान';

  @override
  String get simklSignInToSearch => 'खोज्न Simkl मा साइन इन गर';

  @override
  String get dropRate => 'ड्रप दर';

  @override
  String get simklAttribution => 'डाटा र आर्टवर्क Simkl बाट। Simkl मा हेर';

  @override
  String get onHold => 'होल्डमा';

  @override
  String get scoredBy => 'स्कोर गर्ने';

  @override
  String get planToWatch => 'हेर्ने योजना';

  @override
  String get planToRead => 'पढ्ने योजना';

  @override
  String get timesRewatched => 'फेरि हेरेको पटक';

  @override
  String get timesReread => 'फेरि पढेको पटक';

  @override
  String get comments => 'कमेन्ट';

  @override
  String get moviesAndSeries => 'फिल्म र सिरिज';

  @override
  String get trackingOnly => 'ट्र्याकिङ मात्र';

  @override
  String get signedIn => 'साइन इन गरेको';

  @override
  String get searchLanguage => 'खोज भाषा';

  @override
  String get savedToList => 'तिम्रो सूचीमा सेभ भयो';

  @override
  String get removedFromYourList => 'तिम्रो सूचीबाट हटाइयो';

  @override
  String get retry => 'फेरि प्रयास गर';

  @override
  String get synopsis => 'सारांश';

  @override
  String get details => 'विवरण';

  @override
  String get addToList => 'सूचीमा थप';

  @override
  String get trailer => 'ट्रेलर';

  @override
  String get titleCopied => 'शीर्षक कपी भयो';

  @override
  String get linkCopied => 'लिङ्क कपी भयो';

  @override
  String get watchTrailer => 'ट्रेलर हेर';

  @override
  String get copyTitle => 'शीर्षक कपी गर';

  @override
  String get copyLink => 'लिङ्क कपी गर';

  @override
  String get openInBrowser => 'ब्राउजरमा खोल';

  @override
  String viewOnSource(String source) {
    return '$source मा हेर';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'एपिसोड $ep $time पछि प्रसारण हुन्छ';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'अर्को एपिसोड $time पछि';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'अध्याय $chapter करिब $time मा आउँछ';
  }

  @override
  String get logPathCopied => 'लग फाइल पाथ क्लिपबोर्डमा कपी भयो';

  @override
  String get animeSource => 'एनिमे स्रोत';

  @override
  String get mangaSource => 'मङ्गा स्रोत';

  @override
  String get popular => 'लोकप्रिय';

  @override
  String get latest => 'पछिल्लो';

  @override
  String get saved => 'सेभ गरिएको';

  @override
  String get nothingMatched => 'केही मिलेन';

  @override
  String get nothingSavedFromSource =>
      'यो स्रोतबाट अहिलेसम्म केही सेभ गरिएको छैन';

  @override
  String get sourceReturnedNothing => 'यो स्रोतले केही फर्काएन';

  @override
  String get checkConnectionOrSource =>
      'इन्टरनेट जाँच वा अर्को स्रोत प्रयास गर।';

  @override
  String get tryDifferentSearch => 'फरक खोज शब्द प्रयास गर।';

  @override
  String get savedTitlesAppearHere => 'सूचीमा थपेका शीर्षक यहाँ देखिन्छन्।';

  @override
  String get tryOtherFeed => 'बरु अर्को फिड वा खोज प्रयास गर।';

  @override
  String searchSource(String source) {
    return '$source खोज';
  }

  @override
  String get animeExtensions => 'एनिमे एक्सटेन्सन';

  @override
  String get mangaExtensions => 'मङ्गा एक्सटेन्सन';

  @override
  String get nothingHereYet => 'यहाँ अहिलेसम्म केही छैन';

  @override
  String get savedOnDeviceUntilLogin =>
      'तिमीले नगरेसम्म तलका सबै यही डिभाइसमा सेभ रहन्छन्।';

  @override
  String get yourProfile => 'तिम्रो प्रोफाइल';

  @override
  String get activity => 'गतिविधि';

  @override
  String get extensions => 'एक्सटेन्सन';

  @override
  String get logOut => 'लग आउट';

  @override
  String get logIn => 'लग इन';

  @override
  String get logOutConfirm => 'साँच्चै लग आउट गर्ने हो?';

  @override
  String get incognitoMode => 'इन्कोग्निटो मोड';

  @override
  String get alsoBlockListEdits => 'सूची सम्पादन पनि रोक';

  @override
  String get offlineMode => 'अफलाइन मोड';

  @override
  String get switchService => 'सेवा बदल';

  @override
  String logOutOf(String name) {
    return '$name बाट लग आउट गर';
  }

  @override
  String get loggedIn => 'लगइन गरेको';

  @override
  String get notifications => 'सूचना';

  @override
  String get nothingNew => 'केही नयाँ छैन';

  @override
  String get thisWeek => 'यो हप्ता';

  @override
  String get listOnly => 'सूची मात्र';

  @override
  String get filter => 'फिल्टर';

  @override
  String get searchResults => 'खोज नतिजा';

  @override
  String get recentSearches => 'हालका खोज';

  @override
  String get searchOrSetFilter => 'खोज वा फिल्टर सेट गर';

  @override
  String get filters => 'फिल्टर';

  @override
  String get showLess => 'कम देखाऊ';

  @override
  String get showAll => 'सबै देखाऊ';

  @override
  String get apply => 'लागू गर';

  @override
  String get preview => 'पूर्वावलोकन';

  @override
  String get preset => 'प्रिसेट';

  @override
  String get cardNormal => 'सामान्य';

  @override
  String get cardOnCard => 'कार्डमाथि';

  @override
  String get cardInCard => 'कार्डभित्र';

  @override
  String get size => 'साइज';

  @override
  String get cardWidth => 'कार्डको चौडाइ';

  @override
  String get compact => 'कम्प्याक्ट';

  @override
  String get coverAndTitleOnly => 'कभर र शीर्षक मात्र';

  @override
  String get titleLines => 'शीर्षक लाइन';

  @override
  String get shape => 'आकार';

  @override
  String get posterShape => 'पोस्टरको आकार';

  @override
  String get cornerRadius => 'कुनाको गोलाइ';

  @override
  String get off => 'बन्द';

  @override
  String get topLeft => 'माथि बायाँ';

  @override
  String get topRight => 'माथि दायाँ';

  @override
  String get bottomLeft => 'तल बायाँ';

  @override
  String get bottomRight => 'तल दायाँ';

  @override
  String get overlays => 'ओभरले';

  @override
  String get progressCount => 'प्रगति / गणना';

  @override
  String get pill => 'पिल';

  @override
  String get bar => 'बार';

  @override
  String get outside => 'बाहिर';

  @override
  String get scoreBadge => 'स्कोर ब्याज';

  @override
  String get airingDot => 'प्रसारण डट';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध छ';

  @override
  String get notInstalled => 'इन्स्टल गरिएको छैन';

  @override
  String get done => 'भयो';

  @override
  String get searchOrEnterUrl => 'खोज वा URL हाल';

  @override
  String get refresh => 'रिफ्रेस';

  @override
  String get share => 'सेयर';

  @override
  String get characters => 'पात्र';

  @override
  String get staff => 'स्टाफ';

  @override
  String get readMore => 'थप पढ';

  @override
  String get couldNotLoadList => 'सूची लोड गर्न सकिएन';

  @override
  String get logInToFavourite => 'मनपर्ने थप्न लगइन गर';

  @override
  String get alsoKnownAs => 'अर्को नाम';

  @override
  String get hideSpoilerNames => 'स्पोइलर नाम लुकाऊ';

  @override
  String get showSpoilerNames => 'स्पोइलर नाम देखाऊ';

  @override
  String get favourited => 'मनपर्ने बनाइयो';

  @override
  String get favourite => 'मनपर्ने';

  @override
  String get couldNotOpenTitle => 'यो शीर्षक खोल्न सकिएन';

  @override
  String get nobodyHereYet => 'यहाँ अहिलेसम्म कोही छैन';

  @override
  String get noMatches => 'केही मिलेन';

  @override
  String get gridView => 'ग्रिड भ्यू';

  @override
  String get fullWidth => 'पूरा चौडाइ';

  @override
  String get userNotFound => 'प्रयोगकर्ता भेटिएन';

  @override
  String get couldNotUpdateFollow => 'फलो अपडेट गर्न सकिएन';

  @override
  String followedUser(String name) {
    return '$name लाई फलो गरियो';
  }

  @override
  String unfollowedUser(String name) {
    return '$name लाई अनफलो गरियो';
  }

  @override
  String get messages => 'सन्देश';

  @override
  String get logInToSeeMessages => 'सन्देश हेर्न लगइन गर';

  @override
  String get editActivity => 'गतिविधि सम्पादन गर';

  @override
  String get newActivity => 'नयाँ गतिविधि';

  @override
  String get editMessage => 'सन्देश सम्पादन गर';

  @override
  String get writeMessage => 'सन्देश लेख';

  @override
  String get editReply => 'जवाफ सम्पादन गर';

  @override
  String get posted => 'पोस्ट गरियो';

  @override
  String get couldNotPost => 'पोस्ट गर्न सकिएन';

  @override
  String get nothingToPreview => 'पूर्वावलोकन गर्ने केही छैन';

  @override
  String get writeSomethingHint => 'केही लेख… यहाँ AniList मार्कडाउन चल्छ';

  @override
  String get privateMessage => 'निजी सन्देश';

  @override
  String get post => 'पोस्ट गर';

  @override
  String get nothingHere => 'यहाँ केही छैन';

  @override
  String get noAnimeProgress => 'एनिमे प्रगति छैन';

  @override
  String get noMangaProgress => 'मङ्गा प्रगति छैन';

  @override
  String get noMessages => 'सन्देश छैन';

  @override
  String get writeMessageHint => 'सन्देश लेख…';

  @override
  String get shareSomethingHint => 'केही सेयर गर…';

  @override
  String get all => 'सबै';

  @override
  String get anime => 'एनिमे';

  @override
  String get manga => 'मङ्गा';

  @override
  String get count => 'गणना';

  @override
  String get hoursWatched => 'हेरेका घण्टा';

  @override
  String get chaptersRead => 'पढेका च्याप्टर';

  @override
  String get meanScore => 'औसत स्कोर';

  @override
  String get noStatsYet => 'अहिलेसम्म तथ्याङ्क छैन';

  @override
  String get totalEntries => 'कुल इन्ट्री';

  @override
  String get episodesWatched => 'हेरेका एपिसोड';

  @override
  String get daysWatched => 'हेरेका दिन';

  @override
  String get volumesRead => 'पढेका भोल्युम';

  @override
  String get standardDeviation => 'स्ट्यान्डर्ड डिभिएसन';

  @override
  String get showMore => 'थप देखाऊ';

  @override
  String get followsYou => 'तिमीलाई फलो गर्छ';

  @override
  String get nobodyYet => 'अहिलेसम्म कोही छैन';

  @override
  String get logInToLike => 'लाइक गर्न लगइन गर';

  @override
  String get failedToLikeActivity => 'गतिविधि लाइक गर्न सकिएन';

  @override
  String get deleteActivityConfirm => 'गतिविधि मेट्ने?';

  @override
  String get deletedActivity => 'गतिविधि मेटियो';

  @override
  String get failedToDeleteActivity => 'गतिविधि मेट्न सकिएन';

  @override
  String get subscribed => 'सब्सक्राइब गरियो';

  @override
  String get unsubscribed => 'अनसब्सक्राइब गरियो';

  @override
  String get failedToUpdateSubscription => 'सब्सक्रिप्सन अपडेट गर्न सकिएन';

  @override
  String get edit => 'सम्पादन';

  @override
  String get delete => 'मेट';

  @override
  String get likedBy => 'लाइक गर्ने';

  @override
  String get follow => 'फलो';

  @override
  String get nameCopied => 'नाम कपी भयो';

  @override
  String get followsEachOther => 'एकअर्कालाई फलो गर्छौ';

  @override
  String get unfollow => 'अनफलो';

  @override
  String get userIdCopied => 'प्रयोगकर्ता आईडी कपी भयो';

  @override
  String get shareProfile => 'प्रोफाइल सेयर गर';

  @override
  String get copyUserId => 'प्रयोगकर्ता आईडी कपी गर';

  @override
  String get failedToDelete => 'मेट्न सकिएन';

  @override
  String get failedToLike => 'लाइक गर्न सकिएन';

  @override
  String get replies => 'जवाफ';

  @override
  String get reply => 'जवाफ दे';

  @override
  String get noRepliesYet => 'अहिलेसम्म जवाफ छैन';

  @override
  String get favouriteAnime => 'मनपर्ने एनिमे';

  @override
  String get favouriteManga => 'मनपर्ने मङ्गा';

  @override
  String get favouriteCharacters => 'मनपर्ने पात्र';

  @override
  String get favouriteStaff => 'मनपर्ने स्टाफ';

  @override
  String get favouriteStudios => 'मनपर्ने स्टुडियो';

  @override
  String get noFavouritesYet => 'अहिलेसम्म मनपर्ने छैन';

  @override
  String get yourStory => 'तिम्रो स्टोरी';

  @override
  String get copiedToClipboard => 'क्लिपबोर्डमा कपी भयो';

  @override
  String get justNow => 'भर्खरै';

  @override
  String get openImage => 'इमेज खोल';

  @override
  String get hideSpoiler => 'स्पोइलर लुकाऊ';

  @override
  String get showSpoiler => 'स्पोइलर देखाऊ';

  @override
  String get status => 'स्थिति';

  @override
  String get score => 'स्कोर';

  @override
  String get started => 'सुरु गरेको';

  @override
  String get completed => 'सकिएको';

  @override
  String get private => 'निजी';

  @override
  String get hideFromStatusLists => 'स्थिति सूचीबाट लुकाऊ';

  @override
  String get totalRepeats => 'कुल दोहोर्‍याइ';

  @override
  String get other => 'अन्य';

  @override
  String get customLists => 'कस्टम सूची';

  @override
  String get activeDays => 'सक्रिय दिन';

  @override
  String get longestStreak => 'सबैभन्दा लामो स्ट्रिक';

  @override
  String get currentStreak => 'हालको स्ट्रिक';

  @override
  String get tapOrHoverDay => 'कुनै दिनमा ट्याप गर वा होभर गर';

  @override
  String get less => 'कम';

  @override
  String get more => 'बढी';

  @override
  String epIn(int ep, String time) {
    return 'एप $ep $time पछि';
  }

  @override
  String get sectionLoading => 'लोड हुँदै';

  @override
  String get querySize => 'क्वेरी साइज';

  @override
  String get querySizeDesc =>
      'एउटा ठुलो क्वेरीले सबै पङ्क्ति (र पूरा प्रोफाइल) एउटै रिक्वेस्टमा लोड गर्छ। स्प्लिट क्वेरीले हरेक पङ्क्ति वा प्रोफाइलको भागका लागि सानो रिक्वेस्ट पठाउँछ: हरेक छिटो हुन्छ र भाग आउँदै जाँदा देखिन्छन्।';

  @override
  String get oneBig => 'एउटा ठुलो';

  @override
  String get split => 'स्प्लिट';

  @override
  String get sectionSocial => 'सोसल';

  @override
  String get systemNotifications => 'सिस्टम सूचना';

  @override
  String get feedLayout => 'फिड लेआउट';

  @override
  String sectionsShown(int shown, int total) {
    return '$total मध्ये $shown देखाइयो — छान्न र क्रम मिलाउन ट्याप गर';
  }

  @override
  String labelSections(String label) {
    return '$label सेक्सन';
  }

  @override
  String get accountOptions => 'खाता विकल्प';

  @override
  String get anilistAccountOptions => 'AniList खाता विकल्प';

  @override
  String get sectionPrivacy => 'गोपनीयता';

  @override
  String get hidePrivateEntries => 'निजी इन्ट्री लुकाऊ';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList मा निजी चिन्ह लगाएका इन्ट्री फिडबाट बाहिर राख';

  @override
  String get anilistExcludeList => 'आफ्नो लिस्ट हटाउनुस्';

  @override
  String get anilistExcludeListDesc =>
      'तपाईंको AniList मा पहिल्यै भएका टाइटल एनिमे र मांगा पेजमा नदेखाउनुस्';

  @override
  String get anilistProfile => 'AniList प्रोफाइल';

  @override
  String get refreshFromAnilist => 'AniList बाट रिफ्रेस गर';

  @override
  String get couldNotUpdateAnilistSettings => 'AniList सेटिङ अपडेट गर्न सकिएन';

  @override
  String get sectionNames => 'नाम';

  @override
  String get titleLanguage => 'शीर्षक भाषा';

  @override
  String get titleLanguageDesc =>
      'शीर्षक सबै ठाउँमा कसरी लेखिन्छ, जस्तै Attack on Titan / Shingeki no Kyojin / 進撃の巨人।';

  @override
  String get staffCharacterNames => 'स्टाफ र पात्रका नाम';

  @override
  String get sectionLists => 'सूची';

  @override
  String get scoreFormat => 'स्कोर ढाँचा';

  @override
  String get sortListsBy => 'सूची यसरी क्रमबद्ध गर';

  @override
  String labelCustomLists(String label) {
    return '$label कस्टम सूची';
  }

  @override
  String customListsCount(int count) {
    return '$count सूची — थप्न वा हटाउन ट्याप गर';
  }

  @override
  String get mergeActivities => 'गतिविधि मिलाऊ';

  @override
  String minutesCount(int count) {
    return '$count मिनेट';
  }

  @override
  String get timezone => 'समय क्षेत्र';

  @override
  String get notSet => 'सेट गरिएको छैन';

  @override
  String get airingNotifications => 'प्रसारण सूचना';

  @override
  String get airingNotificationsDesc =>
      'फलो गरेको शोको एपिसोड प्रसारण हुँदा सूचना पाऊ';

  @override
  String get displayAdultContent => 'वयस्क सामग्री देखाऊ';

  @override
  String get displayAdultContentDesc =>
      'ब्राउज, खोज र फिडमा १८+ शीर्षक समावेश गर';

  @override
  String get restrictMessages => 'सन्देश फलो गरेकाहरूमा सीमित गर';

  @override
  String get restrictMessagesDesc =>
      'तिमीले फलो गरेका मान्छेले मात्र सन्देश पठाउन सक्छन्';

  @override
  String get sectionServices => 'सेवा';

  @override
  String get novel => 'उपन्यास';

  @override
  String labelService(String label) {
    return '$label सेवा';
  }

  @override
  String nameSettings(String name) {
    return '$name सेटिङ';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name एक्सटेन्सन ब्रिजका विकल्प';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name सुरु हुन सकेन: $error';
  }

  @override
  String get importLists => 'सूची इम्पोर्ट गर';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi वा Kotatsu ब्याकअपबाट';

  @override
  String get exportLists => 'सूची एक्सपोर्ट गर';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon वा Kotatsu ब्याकअपमा';

  @override
  String get sectionBrowse => 'ब्राउज';

  @override
  String get readingTab => 'पढ्ने ट्याब';

  @override
  String get readingTabDesc => 'तेस्रो ट्याबमा कुन एक्सटेन्सन देखाउने';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'डिफल्ट फिड';

  @override
  String get defaultFeedDesc => 'स्रोत कुन सूचीसँग खुल्छ';

  @override
  String noServiceSupports(String type) {
    return 'कुनै सेवाले $type सपोर्ट गर्दैन';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed मध्ये $loaded स्रोत लोड हुँदैछन्';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'यहाँ कुनै एक्सटेन्सन सेवाले $type सपोर्ट गर्दैन।';
  }

  @override
  String get loadDataFrom => 'डाटा यहाँबाट लोड गर';

  @override
  String noInstalledSourcesYet(String type) {
    return 'अहिलेसम्म कुनै इन्स्टल गरिएको $type स्रोत छैन।';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name को एक्सटेन्सन इन्स्टल गरिएको छैन';
  }

  @override
  String get thisSource => 'यो स्रोत';

  @override
  String failedToAddRepository(String error) {
    return 'रिपोजिटरी थप्न सकिएन: $error';
  }

  @override
  String installedType(String type) {
    return 'इन्स्टल गरिएको $type';
  }

  @override
  String availableType(String type) {
    return 'उपलब्ध $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'इन्स्टल गरिएको $type एक्सटेन्सन छैन';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'उपलब्ध $type एक्सटेन्सन छैन';
  }

  @override
  String get nothingToShowYet => 'अहिलेसम्म देखाउने केही छैन';

  @override
  String get addTitlesHint => 'सूचीमा केही शीर्षक थप र ती यहाँ देखिन्छन्।';

  @override
  String get couldntLoad => 'लोड गर्न सकिएन';

  @override
  String get progressStyleHint =>
      'पिल र बार पोस्टरमाथि बस्छन्; \"बाहिर\" ले उही गणना सादा पाठमा देखाउँछ — एउटा छान।';

  @override
  String get nixManagedUpdate =>
      'यो बिल्ड Nix ले व्यवस्थापन गर्छ — यहाँबाट अपडेट गर्नुको सट्टा आफ्नो फ्लेकमा \"nix flake update\" चलाऊ र रिबिल्ड गर';

  @override
  String autoUpdateFailed(String error) {
    return 'स्वचालित अपडेट असफल ($error) — बरु डाउनलोड पेज खोल्दै';
  }

  @override
  String get unknownPreference => 'अज्ञात प्राथमिकता';

  @override
  String unsupportedPreferenceType(String type) {
    return 'असपोर्टेड प्राथमिकता प्रकार $type';
  }

  @override
  String get notYetReleased => 'अझै रिलिज भएको छैन';

  @override
  String get notStarted => 'सुरु भएको छैन';

  @override
  String get country => 'देश';

  @override
  String get sort => 'क्रमबद्ध';

  @override
  String get chooseBackupDialog => 'Aniyomi, Mihon वा Kotatsu ब्याकअप छान';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi वा Kotatsu बाट लाइब्रेरी ल्याऊ। शीर्षक, कभर, प्रगति र वर्ग जस्ताको तस्तै रहन्छन्।';

  @override
  String get chooseBackupFile => 'ब्याकअप फाइल छान';

  @override
  String importAnimeCount(int count) {
    return '$count एनिमे इम्पोर्ट गर';
  }

  @override
  String importMangaCount(int count) {
    return '$count मङ्गा इम्पोर्ट गर';
  }

  @override
  String get mergeWithExisting => 'भएका सूचीसँग मर्ज गर';

  @override
  String get mergeWithExistingDesc =>
      'भएको जस्ताको तस्तै राख्छ; बन्द गरे मिल्ने शीर्षक बदलिन्छन्';

  @override
  String get chooseAnother => 'अर्को छान';

  @override
  String get import => 'इम्पोर्ट';

  @override
  String animeCount(int count) {
    return '$count एनिमे';
  }

  @override
  String mangaCount(int count) {
    return '$count मङ्गा';
  }

  @override
  String get chooseSaveLocation => 'ब्याकअप कहाँ सेभ गर्ने छान';

  @override
  String savedPath(String path) {
    return '$path सेभ भयो';
  }

  @override
  String exportFailed(String error) {
    return 'एक्सपोर्ट असफल: $error';
  }

  @override
  String get nothingInLocalLists => 'तिम्रा लोकल सूचीमा अहिलेसम्म केही छैन।';

  @override
  String exportsSummary(int anime, int manga) {
    return 'तिम्रा लोकल सूचीबाट $anime एनिमे र $manga मङ्गा एक्सपोर्ट हुन्छ। Kotatsu ले मङ्गा मात्र सपोर्ट गर्छ।';
  }

  @override
  String get saveToFolder => 'फोल्डरमा सेभ गर';

  @override
  String get formatAnimeManga => 'एनिमे र मङ्गा · .tachibk';

  @override
  String get formatMangaTachibk => 'मङ्गा मात्र · .tachibk';

  @override
  String get formatMangaZip => 'मङ्गा मात्र · .zip';

  @override
  String get genres => 'विधा';

  @override
  String get relations => 'सम्बन्ध';

  @override
  String get recommendations => 'सिफारिस';

  @override
  String get openings => 'ओपनिङ';

  @override
  String get endings => 'एन्डिङ';

  @override
  String get background => 'पृष्ठभूमि';

  @override
  String get links => 'लिङ्क';

  @override
  String get rank => 'र्‍याङ्क';

  @override
  String get members => 'सदस्य';

  @override
  String get favorites => 'मनपर्ने';

  @override
  String get episodes => 'एपिसोड';

  @override
  String get chapters => 'च्याप्टर';

  @override
  String get volumes => 'भोल्युम';

  @override
  String get format => 'ढाँचा';

  @override
  String get source => 'स्रोत';

  @override
  String get duration => 'अवधि';

  @override
  String minutesPerEpisode(int minutes) {
    return 'प्रति एपिसोड $minutes मिनेट';
  }

  @override
  String get rating => 'रेटिङ';

  @override
  String get studio => 'स्टुडियो';

  @override
  String get serialization => 'सिरियलाइजेसन';

  @override
  String get season => 'सिजन';

  @override
  String get broadcast => 'प्रसारण';

  @override
  String get aired => 'प्रसारित';

  @override
  String get published => 'प्रकाशित';

  @override
  String get popularity => 'लोकप्रियता';

  @override
  String get community => 'समुदाय';

  @override
  String get watching => 'हेर्दै';

  @override
  String get reading => 'पढ्दै';

  @override
  String get dropped => 'छोडेको';

  @override
  String get planned => 'योजनामा';

  @override
  String get trailers => 'ट्रेलर';

  @override
  String get ratings => 'रेटिङ';

  @override
  String get originalTitle => 'मौलिक';

  @override
  String get titleLabel => 'शीर्षक';

  @override
  String get votes => 'भोट';

  @override
  String get watchedStat => 'हेरेको';

  @override
  String get runtime => 'रनटाइम';

  @override
  String get director => 'निर्देशक';

  @override
  String get network => 'नेटवर्क';

  @override
  String get certification => 'प्रमाणीकरण';

  @override
  String get airs => 'प्रसारण';

  @override
  String get budget => 'बजेट';

  @override
  String get revenue => 'आम्दानी';

  @override
  String get released => 'रिलिज भएको';

  @override
  String get tags => 'ट्याग';

  @override
  String get author => 'लेखक';

  @override
  String get born => 'जन्म';

  @override
  String get website => 'वेबसाइट';

  @override
  String get established => 'स्थापना';

  @override
  String get manhwa => 'मान्ह्वा';

  @override
  String get manhua => 'मान्हुआ';

  @override
  String get novels => 'उपन्यास';

  @override
  String get thisMonth => 'यो महिना';

  @override
  String get movies => 'फिल्म';

  @override
  String get shows => 'शो';

  @override
  String get rewatching => 'फेरि हेर्दै';

  @override
  String get rereading => 'फेरि पढ्दै';

  @override
  String get watchedStatus => 'हेरेको';

  @override
  String get planning => 'योजना बनाउँदै';

  @override
  String get paused => 'रोकिएको';

  @override
  String get watch => 'हेर';

  @override
  String get read => 'पढ';

  @override
  String get finished => 'सकियो';

  @override
  String get releasing => 'रिलिज हुँदै';

  @override
  String get cancelled => 'रद्द भयो';

  @override
  String get hiatus => 'हाइएटस';

  @override
  String get remove => 'हटाऊ';

  @override
  String syncToService(String service) {
    return '$service मा सिङ्क गर';
  }

  @override
  String syncedToService(String service) {
    return '$service मा सिङ्क भयो';
  }

  @override
  String get latestReleases => 'पछिल्ला रिलिज';

  @override
  String get topRated => 'उच्च रेटिङ';

  @override
  String localSection(String title) {
    return '$title · लोकल';
  }

  @override
  String get localEntryNote =>
      'यो शीर्षक यो डिभाइसको लोकल सूचीमा मात्र छ। तिम्रो खाताको सूचीसँग बाझिन सक्ने भएकाले यहाँ सम्पादन बन्द छ; तर हटाउन भने सकिन्छ।';

  @override
  String get cardPresetPoster => 'पोस्टर';

  @override
  String get cardPresetCard => 'कार्ड';

  @override
  String get cardPresetCozy => 'कोजी';

  @override
  String get sortTopRated => 'उच्च रेटिङ';

  @override
  String get sortMostPopular => 'सबैभन्दा लोकप्रिय';

  @override
  String get sortTrending => 'ट्रेन्डिङ';

  @override
  String get sortNewest => 'नयाँ';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'सबैभन्दा मनपर्ने';

  @override
  String get anyCountry => 'कुनै पनि देश';

  @override
  String get orderScore => 'स्कोर';

  @override
  String get orderTitle => 'शीर्षक';

  @override
  String get orderLastUpdated => 'पछिल्लो अपडेट';

  @override
  String get orderLastAdded => 'पछिल्लो थपिएको';

  @override
  String get never => 'कहिल्यै होइन';

  @override
  String get always => 'सधैं';

  @override
  String get scorePoint100 => '१०० अङ्क';

  @override
  String get scorePoint10Decimal => '१० अङ्क दशमलव';

  @override
  String get scorePoint10 => '१० अङ्क';

  @override
  String get scorePoint5 => '५ तारा';

  @override
  String get scorePoint3 => '३ अङ्क स्माइली';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घण्टा',
      one: '१ घण्टा',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '१ दिन',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count हप्ता',
      one: '१ हप्ता',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'जारी राख';

  @override
  String get resumeSourceMissing => 'जारी राख्न यो शीर्षकको स्रोत इन्स्टल गर';

  @override
  String get resumeRemove => 'जारी राख्ने सूचीबाट हटाऊ';

  @override
  String resumeAt(String time) {
    return '$time बाँकी';
  }

  @override
  String resumePage(int page, int total) {
    return 'पेज $page / $total';
  }

  @override
  String get continueWatching => 'हेर्न जारी राख';

  @override
  String get continueReading => 'पढ्न जारी राख';

  @override
  String get favouriteAnimeSection => 'मनपर्ने एनिमे';

  @override
  String get favouriteMangaSection => 'मनपर्ने मङ्गा';

  @override
  String get plannedAnime => 'योजनामा रहेका एनिमे';

  @override
  String get plannedManga => 'योजनामा रहेका मङ्गा';

  @override
  String get completedAnime => 'सकिएका एनिमे';

  @override
  String get completedManga => 'सकिएका मङ्गा';

  @override
  String get hiddenMedia => 'लुकाइएको मिडिया';

  @override
  String get recentUpdates => 'हालका अपडेट';

  @override
  String get trendingNow => 'अहिले ट्रेन्डिङ';

  @override
  String get popularThisSeason => 'यो सिजनमा लोकप्रिय';

  @override
  String get trendingMovies => 'ट्रेन्डिङ फिल्म';

  @override
  String get topRatedSeries => 'उच्च रेटिङ सिरिज';

  @override
  String get mostFavouriteSeries => 'सबैभन्दा मनपर्ने सिरिज';

  @override
  String get popularAnime => 'लोकप्रिय एनिमे';

  @override
  String get trendingManhwa => 'ट्रेन्डिङ मान्ह्वा';

  @override
  String get trendingNovels => 'ट्रेन्डिङ उपन्यास';

  @override
  String get topRatedManga => 'उच्च रेटिङ मङ्गा';

  @override
  String get mostFavouriteManga => 'सबैभन्दा मनपर्ने मङ्गा';

  @override
  String get popularManga => 'लोकप्रिय मङ्गा';

  @override
  String get topMovies => 'शीर्ष फिल्म';

  @override
  String get topOna => 'शीर्ष ONA';

  @override
  String get topOva => 'शीर्ष OVA';

  @override
  String get mostPopular => 'सबैभन्दा लोकप्रिय';

  @override
  String get mostFavourite => 'सबैभन्दा मनपर्ने';

  @override
  String get upcoming => 'आउँदै गरेको';

  @override
  String get topManga => 'शीर्ष मङ्गा';

  @override
  String get topManhwa => 'शीर्ष मान्ह्वा';

  @override
  String get topManhua => 'शीर्ष मान्हुआ';

  @override
  String get topNovels => 'शीर्ष उपन्यास';

  @override
  String get topOneShots => 'शीर्ष वन-सट';

  @override
  String get trendingMoviesToday => 'आजका ट्रेन्डिङ फिल्म';

  @override
  String get trendingShowsToday => 'आजका ट्रेन्डिङ शो';

  @override
  String get trendingMoviesWeek => 'यो हप्ताका ट्रेन्डिङ फिल्म';

  @override
  String get trendingShowsWeek => 'यो हप्ताका ट्रेन्डिङ शो';

  @override
  String get mostWatchedMoviesMonth => 'यो महिना सबैभन्दा धेरै हेरिएका फिल्म';

  @override
  String get mostWatchedShowsMonth => 'यो महिना सबैभन्दा धेरै हेरिएका शो';

  @override
  String get trendingThisWeek => 'यो हप्ता ट्रेन्डिङ';

  @override
  String get mostWatchedThisMonth => 'यो महिना सबैभन्दा धेरै हेरिएको';

  @override
  String get repoLinksAdded => 'रिपो लिङ्क सफलतापूर्वक थपियो!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList बाट डाटा ल्याउँदा त्रुटि।';

  @override
  String get navInfo => 'जानकारी';

  @override
  String get navComments => 'कमेन्ट';

  @override
  String get playerNotAvailable => 'प्लेयर अझै उपलब्ध छैन';

  @override
  String deepLinkInitialError(String error) {
    return 'सुरुको डीप लिङ्क ल्याउँदा त्रुटि: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'लिङ्क खोल्दा त्रुटि: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'यो लिङ्क खोल्न मिल्दैन: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'लिङ्क खोल्दा त्रुटि: $error';
  }

  @override
  String get forReleasingTitles => 'हाल रिलिज हुँदै गरेका शीर्षकका लागि';

  @override
  String get progress => 'प्रगति';

  @override
  String get notes => 'नोट';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" सेवा भेटिएन';
  }

  @override
  String get glassEffectEnabled => 'ग्लास इफेक्ट अन गरियो';

  @override
  String get glassEffectDisabled => 'ग्लास इफेक्ट अफ गरियो';

  @override
  String get materialYouEnabled => 'Material You अन गरियो';

  @override
  String get materialYouDisabled => 'Material You अफ गरियो';

  @override
  String get darkModeEnabled => 'डार्क मोड अन गरियो';

  @override
  String get darkModeDisabled => 'डार्क मोड अफ गरियो';

  @override
  String get animeList => 'एनिमे सूची';

  @override
  String get mangaList => 'मङ्गा सूची';

  @override
  String ownerAnimeList(String owner) {
    return '$owner को एनिमे सूची';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner को मङ्गा सूची';
  }

  @override
  String get loadingList => 'सूची लोड हुँदै';

  @override
  String get earlier => 'अघिल्लो';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन अघि',
      one: '१ दिन अघि',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count घण्टा अघि',
      one: '१ घण्टा अघि',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count मिनेट अघि',
      one: '१ मिनेट अघि',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$count मि अघि';
  }

  @override
  String hoursAgoShort(int count) {
    return '$count घ अघि';
  }

  @override
  String daysAgoShort(int count) {
    return '$count दि अघि';
  }

  @override
  String weeksAgoShort(int count) {
    return '$count ह अघि';
  }

  @override
  String get couldntLoadSource => 'यो स्रोत लोड गर्न सकिएन';

  @override
  String get followers => 'फलोअर';

  @override
  String couldntLoadTitle(String title) {
    return '$title लोड गर्न सकिएन';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'यो प्रोफाइल लोड गर्न सकिएन';

  @override
  String get profile => 'प्रोफाइल';

  @override
  String get feed => 'फिड';

  @override
  String get stats => 'तथ्याङ्क';

  @override
  String get received => 'प्राप्त';

  @override
  String get sent => 'पठाइएको';

  @override
  String get global => 'ग्लोबल';

  @override
  String get couldntLoadPage => 'यो पेज लोड गर्न सकिएन';

  @override
  String get couldntLoadAllDetails => 'सबै विवरण लोड गर्न सकिएन';

  @override
  String get series => 'सिरिज';

  @override
  String get studios => 'स्टुडियो';

  @override
  String get users => 'प्रयोगकर्ता';

  @override
  String repositoriesTitle(String type) {
    return '$type रिपोजिटरी';
  }

  @override
  String get repositoryUrl => 'रिपोजिटरी URL';

  @override
  String get downloadingRepository => 'रिपोजिटरी डाउनलोड हुँदै…';

  @override
  String get noRepositories => 'कुनै रिपोजिटरी थपिएको छैन';

  @override
  String repoExtensionsCount(String count) {
    return '$count एक्सटेन्सन';
  }

  @override
  String get searchExtensions => 'एक्सटेन्सन खोज...';

  @override
  String deletePluginTitle(String name) {
    return '$name मेट्ने?';
  }

  @override
  String get deletePluginMessage => 'यो प्लगइन साँच्चै मेट्ने हो?';

  @override
  String pluginDeleted(String name) {
    return '$name मेटियो';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name कन्फिगर गरिएको रिपोमा उपलब्ध छैन';
  }

  @override
  String get pluginFetchFailed => 'प्लगइनको जानकारी ल्याउन सकिएन';

  @override
  String installPluginTitle(String name) {
    return '$name इन्स्टल गर';
  }

  @override
  String sizeLabel(String size) {
    return 'साइज: $size';
  }

  @override
  String get installedState => 'इन्स्टल गरिएको';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'त्रुटि:';

  @override
  String get stackTraceDetails => 'विवरण (स्ट्याक ट्रेस)';

  @override
  String get shareLogFile => 'लग फाइल सेयर गर';

  @override
  String get copyLogs => 'लग कपी गर';

  @override
  String noListToEdit(String service) {
    return '$service मा सम्पादन गर्ने सूची छैन';
  }

  @override
  String get couldNotReadFile => 'त्यो फाइल पढ्न सकिएन';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime एनिमे र $manga मङ्गा इम्पोर्ट भयो';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count पहिल्यै छन्';
  }

  @override
  String get airingNow => 'अहिले प्रसारण हुँदै';

  @override
  String get topRatedMovies => 'उच्च रेटिङ फिल्म';

  @override
  String get koreanDramas => 'कोरियन ड्रामा';

  @override
  String get chineseDramas => 'चिनियाँ ड्रामा';

  @override
  String get japaneseDramas => 'जापानी ड्रामा';

  @override
  String get thaiDramas => 'थाई ड्रामा';

  @override
  String get turkishDramas => 'टर्किस ड्रामा';

  @override
  String get miniSeries => 'मिनी सिरिज';

  @override
  String get topRatedShows => 'उच्च रेटिङ शो';

  @override
  String get recommendedSection => 'सिफारिस गरिएको';

  @override
  String get syncRow => 'सूची सिङ्क गर';

  @override
  String get syncRowDesc => 'एउटा सेवाको सूची आफ्ना अन्य खातामा प्रतिलिपि गर';

  @override
  String get syncTitle => 'सिङ्क';

  @override
  String get syncMainService => 'मुख्य सेवा';

  @override
  String get syncMainServiceDesc =>
      'यसको सूची नै आधार हो; साइन इन गरेका अरू सबै सेवा त्यससँग मिल्ने गरी अपडेट हुन्छन्';

  @override
  String get syncAuto => 'अटो सिङ्क';

  @override
  String get syncAutoDesc =>
      'एप खुल्दा र हरेक ३० मिनेटमा ब्याकग्राउन्डमा तानेर सिङ्क गर';

  @override
  String get syncAddMissing => 'नभएका इन्ट्री थप';

  @override
  String get syncAddMissingDesc => 'अर्को सेवामा अझै नभएका इन्ट्री पनि थप';

  @override
  String get syncOnlyForward => 'अगाडिको प्रगति राख';

  @override
  String get syncOnlyForwardDesc => 'पहिल्यै अगाडि रहेको सेवाको प्रगति नघटाऊ';

  @override
  String get syncFetch => 'तान';

  @override
  String get syncFetchAgain => 'फेरि तान';

  @override
  String get syncAll => 'सबै सिङ्क गर';

  @override
  String get syncStop => 'रोक';

  @override
  String get syncResume => 'जारी राख';

  @override
  String get syncNothingToSync => 'यो प्रकारका लागि यो सेवा सिङ्क गर्न मिल्दैन';

  @override
  String get syncNoTargets => 'सिङ्क गर्न अर्को सेवामा साइन इन गर';

  @override
  String get syncLoadingMap => 'आईडी म्यापिङ लोड हुँदै';

  @override
  String get syncComparing => 'सूची तुलना हुँदै';

  @override
  String get syncIntro =>
      'एउटा मुख्य सेवा छानेर तान थिच। हरेक सेवाबाट तिम्रो सूची एक पटक तानिन्छ, अनि मुख्यसँग तुलना हुन्छ।';

  @override
  String get syncStateSynced => 'सिङ्क भयो';

  @override
  String get syncStateOutdated => 'सिङ्क छैन';

  @override
  String get syncStateMissing => 'सूचीमा छैन';

  @override
  String get syncStateUnmapped => 'मिलेन';

  @override
  String syncPaused(String time) {
    return 'रेट लिमिटको प्रतीक्षा गर्दै, $time मा जारी हुन्छ';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count मात्र $name मा छन्, छोइएन';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total मध्ये $done';
  }

  @override
  String get syncNothingHere => 'देखाउने केही छैन';

  @override
  String syncLimits(int used, int max, String window) {
    return 'यो $window $max मध्ये $used रिक्वेस्ट प्रयोग भयो';
  }

  @override
  String get syncMinute => 'मिनेट';

  @override
  String get syncDay => 'दिन';

  @override
  String get syncNotInList => 'अहिलेसम्म सूचीमा छैन';

  @override
  String get syncCleared => 'योजना खाली गरियो';

  @override
  String get syncClear => 'खाली गर';

  @override
  String get syncOptions => 'विकल्प';

  @override
  String get syncShared => 'यसको इन्ट्री अर्को आइटमसँग साझा छ';

  @override
  String syncNotFound(String service) {
    return '$service मा भेटिएन';
  }

  @override
  String syncService(String service, int count) {
    return '$service सिङ्क गर ($count)';
  }

  @override
  String get syncOnEdit => 'परिवर्तन तुरुन्तै सिङ्क गर';

  @override
  String get syncOnEditDesc =>
      'हरेक प्रगति अपडेट र सूची सम्पादन साइन इन गरेका अन्य सेवामा तुरुन्तै पठाऊ';

  @override
  String syncPushed(String services) {
    return '$services मा सिङ्क भयो';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited => 'रेट लिमिट भयो, केही बेरमा फेरि प्रयास गर';

  @override
  String get syncAhead => 'जो अगाडि छ त्यो';

  @override
  String get syncAheadDesc =>
      'दुई तर्फी: हरेक शीर्षकका लागि सबैभन्दा अगाडिको इन्ट्री जित्छ र तिम्रा अन्य सबै सेवामा प्रतिलिपि हुन्छ';

  @override
  String syncAheadFrom(String service) {
    return '$service बाट';
  }

  @override
  String get syncConfirm => 'सिङ्क गर्नुअघि जाँच';

  @override
  String get syncConfirmDesc =>
      'सबै सिङ्क गर्दा के बदलिन्छ र कति रिक्वेस्ट चाहिन्छ देखाऊ';

  @override
  String get syncPreviewTitle => 'सिङ्कका लागि तयार';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates अपडेट, $adds थप्न';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'करिब $count रिक्वेस्ट';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count आईडीको पहिले लुकअप चाहिन्छ';
  }

  @override
  String get syncPreviewNothing => 'बदल्ने केही छैन';

  @override
  String get syncStart => 'सुरु गर';

  @override
  String get syncRetry => 'फेरि प्रयास गर';

  @override
  String get syncSkip => 'यो आइटम छोड';

  @override
  String get syncInclude => 'यो आइटम फेरि समावेश गर';

  @override
  String get syncSkippedLabel => 'छोडियो';

  @override
  String get syncChanges => 'फरक';

  @override
  String get syncChangeStatus => 'स्थिति';

  @override
  String get syncChangeProgress => 'प्रगति';

  @override
  String get syncChangeScore => 'स्कोर';

  @override
  String get syncChangeDates => 'मिति';

  @override
  String get syncChangeRepeat => 'फेरि हेरेको गणना';

  @override
  String get syncFailedReason => 'किन असफल भयो';

  @override
  String get syncSkippedHint => 'छोडिएका आइटम फेरि तानेपछि पनि छोइँदैनन्';

  @override
  String get commentsRules => 'कमेन्ट नियम';

  @override
  String get commentsRulesBody =>
      'कुनै पनि नियम तोड्यौ भने तिमी बाहिर\n\n1. जातीय भेदभाव, विभेद वा घृणा फैलाउने भाषा हुँदैन\n2. स्प्याम वा आफ्नै प्रचार हुँदैन\n3. NSFW सामग्री बिल्कुल हुँदैन\n4. अङ्ग्रेजी मात्र, कुनै अपवाद छैन\n5. नक्कल, दुर्व्यवहार वा गालीगलोज हुँदैन\n6. गैरकानुनी सामग्री वा कुनै पनि फ्यानडमप्रति चरम अनादर हुँदैन\n7. रिपोजिटरी वा एक्सटेन्सन नमाग, नबाँड\n8. स्पोइलर स्पोइलर ट्याग र चेतावनीसहित मात्र\n9. नाबालिग पात्रबारे यौनिक वा अनुचित कमेन्ट हुँदैन\n10. गलत छ भने पोस्ट नगर!';

  @override
  String get commentsRulesAccept => 'बुझें';

  @override
  String get commentsSortNewest => 'नयाँ';

  @override
  String get commentsSortOldest => 'पुरानो';

  @override
  String get commentsSortHighest => 'सबैभन्दा उच्च रेटिङ';

  @override
  String get commentsSortLowest => 'सबैभन्दा कम रेटिङ';

  @override
  String commentsEpisodeShort(int number) {
    return 'एप $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'च्या $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'एपिसोडअनुसार फिल्टर गर';

  @override
  String get commentsFilterChapterTitle => 'च्याप्टरअनुसार फिल्टर गर';

  @override
  String get commentsFilterTagTitle => 'एपिसोड वा च्याप्टर नम्बर हाल';

  @override
  String get commentsFilterHint => 'नम्बर';

  @override
  String get commentsFilterApply => 'फिल्टर';

  @override
  String get commentsFilterClear => 'सबै देखाऊ';

  @override
  String get commentsPlaceholder => 'कमेन्ट थप…';

  @override
  String commentsReplyingTo(String name) {
    return '$name लाई जवाफ दिँदै';
  }

  @override
  String get commentsSend => 'पठाऊ';

  @override
  String get commentsTagButton => 'ट्याग';

  @override
  String commentsTagTitle(String label) {
    return 'ट्याग $label (ऐच्छिक)';
  }

  @override
  String get commentsTagEpisode => 'एपिसोड';

  @override
  String get commentsTagChapter => 'च्याप्टर';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label नम्बर';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'ट्याग कुल सङ्ख्या ($total) भन्दा बढी हुन सक्दैन';
  }

  @override
  String get commentsNoTag => 'ट्याग छैन';

  @override
  String get commentsSpoiler => 'स्पोइलर';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF खोज';

  @override
  String get commentsGifEmpty => 'GIF भेटिएन';

  @override
  String get commentsEmptyText => 'कमेन्ट खाली हुन सक्दैन';

  @override
  String get commentsBannedYou => 'तिमीलाई कमेन्ट गर्न प्रतिबन्ध लगाइएको छ';

  @override
  String get commentsEdited => 'कमेन्ट सम्पादन भयो';

  @override
  String get commentsDeleted => 'कमेन्ट मेटियो';

  @override
  String get commentsDeletedPlaceholder => '[मेटिएको]';

  @override
  String get commentsReported => 'कमेन्ट रिपोर्ट गरियो';

  @override
  String get commentsUserBanned => 'प्रयोगकर्ता ब्यान गरियो';

  @override
  String get commentsReport => 'रिपोर्ट';

  @override
  String get commentsReportAsk => 'यो कमेन्ट मोडरेटरलाई रिपोर्ट गर्ने?';

  @override
  String get commentsDelete => 'मेट';

  @override
  String get commentsDeleteAsk => 'यो कमेन्ट सबैका लागि हटाइनेछ।';

  @override
  String get commentsBan => 'ब्यान';

  @override
  String get commentsBanAsk => 'यो प्रयोगकर्तालाई कमेन्ट गर्न ब्यान गर्ने?';

  @override
  String get commentsCopy => 'कपी';

  @override
  String get commentsViewReply => '१ जवाफ हेर';

  @override
  String commentsViewReplies(int count) {
    return '$count जवाफ हेर';
  }

  @override
  String get commentsHideReplies => 'जवाफ लुकाऊ';

  @override
  String get commentsLoadMore => 'थप कमेन्ट लोड गर';

  @override
  String get commentsEmpty => 'अहिलेसम्म कमेन्ट छैन। पहिलो तिमी बन!';

  @override
  String get commentsEmptyFiltered => 'यो फिल्टरका लागि कमेन्ट छैन';

  @override
  String get commentsSignIn => 'कमेन्ट पढ्न र लेख्न AniList मा साइन इन गर';

  @override
  String get commentsSignInMessage =>
      'कमेन्ट सबै सेवा बीच साझा हुन्छन् र तिम्रो AniList खाता प्रयोग गर्छन्।';

  @override
  String get commentsUnavailable => 'यो शीर्षकका लागि कमेन्ट उपलब्ध छैन';

  @override
  String get commentsUnavailableMessage =>
      'यसलाई AniList इन्ट्रीसँग मिलाउन सकिएन।';

  @override
  String get commentsDisabled => 'कमेन्ट बन्द छन्';

  @override
  String get commentsDisabledMessage =>
      'सेटिङ › सामान्य मा गएर फेरि अन गर्न सक्छौ।';

  @override
  String get commentsOffline => 'कमेन्ट लोड गर्न सकिएन';

  @override
  String get commentsSingleTitle => 'एउटा कमेन्ट देखाइँदैछ';

  @override
  String get commentsShowAll => 'सबै कमेन्ट देखाऊ';

  @override
  String get commentsSettingsHeader => 'कमेन्ट';

  @override
  String get commentsSettingEnabled => 'कमेन्ट';

  @override
  String get commentsSettingEnabledDesc =>
      'शीर्षकमा कमेन्ट ट्याब देखाऊ र आफ्नो AniList खाताले कमेन्ट सर्भरमा साइन इन गर';

  @override
  String get commentsSettingAlerts => 'जवाफ सूचना';

  @override
  String get commentsSettingAlertsDesc =>
      'कसैले मेरो कमेन्टमा जवाफ दिँदा सूचना देऊ';

  @override
  String get commentsNoticeReplyTitle => 'कमेन्टमा नयाँ जवाफ';

  @override
  String commentsNoticeReply(String name) {
    return '$name ले तिम्रो कमेन्टमा जवाफ दिए';
  }

  @override
  String get commentsNoticeWarningTitle => 'तिमीले चेतावनी पायौ';

  @override
  String get commentsNoticeWarning => 'कमेन्ट गर्दा अलि होसियार बन';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu बाट अपडेट';

  @override
  String get barcodeTitle => 'बारकोड स्क्यान गर';

  @override
  String get barcodeTooltip => 'बारकोडबाट मङ्गा वा उपन्यास खोज';

  @override
  String get barcodeIntro =>
      'भोल्युमको पछाडिको बारकोडमा क्यामेरा तेर्स्याऊ, वा ISBN टाइप गर।';

  @override
  String get barcodeIntroManual =>
      'भोल्युमको पछाडि बारकोडमाथि छापिएको ISBN टाइप गर।';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'त्यो मान्य ISBN होइन';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn का लागि किताब भेटिएन';
  }

  @override
  String get barcodeCameraDenied =>
      'क्यामेरा उपलब्ध छैन। क्यामेरा एक्सेस दिऊ वा ISBN टाइप गर।';

  @override
  String get themesTitle => 'ओपनिङ र एन्डिङ';

  @override
  String get themesPlayVideo => 'भिडियो चलाऊ';

  @override
  String get themesPlayAudio => 'अडियो मात्र चलाऊ';

  @override
  String get themesOpenSite => 'AnimeThemes मा खोल';

  @override
  String get themesCredit => 'AnimeThemes बाट थिम';

  @override
  String get themesVersions => 'संस्करण';

  @override
  String get sauceTitle => 'स्रोत खोज';

  @override
  String get sauceIntro =>
      'मङ्गाको पेज वा आर्टवर्क अपलोड गर, वा यसको लिङ्क पेस्ट गर, अनि यो कहाँबाट आएको हो खोजौं।';

  @override
  String get sauceKeyTitle => 'SauceNAO API की';

  @override
  String get sauceKeyHint => 'ऐच्छिक, दैनिक खोज सीमा बढाउँछ';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php मा निःशुल्क की लेऊ';

  @override
  String get sauceOpen => 'स्रोत खोल';

  @override
  String get sauceCredit => 'SauceNAO द्वारा इमेज खोज';

  @override
  String get sauceEmpty => 'केही मिलेन';

  @override
  String get sauceTooltip => 'मङ्गाको पेज वा आर्टवर्कको स्रोत खोज';

  @override
  String get trendzTitle => 'एनिमे चार्ट';

  @override
  String get trendzAnime => 'एनिमे';

  @override
  String get trendzFemale => 'महिला पात्र';

  @override
  String get trendzMale => 'पुरुष पात्र';

  @override
  String get trendzCouple => 'जोडी';

  @override
  String get trendzCredit => 'AniTrendz का साप्ताहिक चार्ट';

  @override
  String get trendzNew => 'नयाँ';

  @override
  String get trendzEmpty => 'चार्ट खाली छ';

  @override
  String get shareCard => 'सेयर कार्ड';

  @override
  String get shareCardList => 'सूचीको कार्ड सेयर गर';

  @override
  String get shareCardSaved => 'कार्ड सेभ भयो';

  @override
  String get shareCardFailed => 'कार्ड बनाउन सकिएन';

  @override
  String get shareCardListEmpty => 'तिम्रो सूचीमा सेयर गर्ने केही छैन';

  @override
  String get shareCardTop => 'मेरा टप छनोट';

  @override
  String themesEpisodes(String eps) {
    return 'एपिसोड $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% मिलान';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'हप्ता $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count भोट';
  }

  @override
  String trendzPeak(String rank) {
    return 'पिक #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'टप टेनमा $count हप्ता';
  }

  @override
  String get imageSearchTitle => 'इमेजबाट खोज';

  @override
  String get imageSearchTooltip => 'स्क्रिनसटबाट एनिमे खोज';

  @override
  String get imageSearchIntro =>
      'एउटा स्क्रिनसट छान वा इमेज लिङ्क पेस्ट गर, अनि trace.moe ले कुन एपिसोडको कुन क्षण हो भेट्टाउँछ।';

  @override
  String get imageSearchPick => 'इमेज छान';

  @override
  String get imageSearchLinkHint => 'इमेज लिङ्क पेस्ट गर';

  @override
  String get imageSearchGo => 'खोज';

  @override
  String get imageSearchEmpty => 'केही मिलेन';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'एपिसोड $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time मा';
  }

  @override
  String get imageSearchPreview => 'पूर्वावलोकन क्लिप';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% मिलान';
  }

  @override
  String get imageSearchCredit => 'trace.moe द्वारा सञ्चालित';

  @override
  String get imageSearchOpenFailed => 'यो शीर्षक खोल्न सकिएन';

  @override
  String get groups => 'समूह';

  @override
  String get groupsYours => 'तिम्रा समूह';

  @override
  String get groupsPopular => 'लोकप्रिय';

  @override
  String get groupsNew => 'नयाँ';

  @override
  String get groupsFeatured => 'फिचर्ड';

  @override
  String get groupsSearch => 'समूह खोज';

  @override
  String get groupsAll => 'सबै';

  @override
  String get groupsEmpty => 'कुनै समूह भेटिएन';

  @override
  String get groupsEmptyYours => 'तिमी अहिलेसम्म कुनै समूहमा सामेल भएका छैनौ';

  @override
  String get groupsSignIn => 'सामेल भएका समूह हेर्न साइन इन गर';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सदस्य',
      one: '१ सदस्य',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'सामेल हो';

  @override
  String get groupsJoined => 'सामेल भएको';

  @override
  String get groupsLeave => 'समूह छोड';

  @override
  String get groupsLeaveAsk => 'यो समूहका पोस्ट अब तिम्रो फिडमा देखिँदैनन्।';

  @override
  String get groupsJoinFailed =>
      'यो समूहमा सामेल हुन सकिएन, सायद निमन्त्रणा मात्र हो';

  @override
  String get groupsLeaveFailed => 'यो समूह छोड्न सकिएन';

  @override
  String get groupsPosts => 'पोस्ट';

  @override
  String get groupsMembersTab => 'सदस्य';

  @override
  String get groupsAbout => 'बारेमा';

  @override
  String get groupsRules => 'नियम';

  @override
  String get groupsPrivacyOpen => 'खुला';

  @override
  String get groupsPrivacyRestricted => 'सीमित';

  @override
  String get groupsPrivacyClosed => 'बन्द';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'एडमिन';

  @override
  String get groupsRoleMod => 'मोड';

  @override
  String get groupsCouldntLoad => 'यो समूह लोड गर्न सकिएन';

  @override
  String get groupsNewPost => 'समूहमा पोस्ट गर';

  @override
  String get groupsPostHint => 'समूहसँग केही सेयर गर';

  @override
  String get groupsOpenInBrowser => 'ब्राउजरमा खोल';

  @override
  String get groupsCategory => 'वर्ग';

  @override
  String get groupsLanguage => 'भाषा';

  @override
  String get groupsCreated => 'बनाइएको';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count नेता',
      one: '१ नेता',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'गोपनीयता';

  @override
  String get notificationsAll => 'सबै';

  @override
  String get notificationsAiring => 'प्रसारण';

  @override
  String get notificationsMedia => 'नयाँ शीर्षक';

  @override
  String get notificationsReplies => 'जवाफ';

  @override
  String get notificationsMentions => 'उल्लेख';

  @override
  String get notificationsMessages => 'सन्देश';

  @override
  String get notificationsLikes => 'लाइक';

  @override
  String get notificationsFollows => 'फलो';

  @override
  String get notificationsNoServices => 'साइन इन गरेको कुनै सेवामा सूचना छैन';

  @override
  String get notificationsNoServicesMessage =>
      'सूचना पठाउने सेवामा साइन इन गर र ती यहाँ देखिन्छन्।';

  @override
  String get notificationsEmptyKind => 'यो वर्गमा अहिलेसम्म केही छैन';

  @override
  String get notificationsCommentsEmpty => 'कमेन्ट सूचना छैन';

  @override
  String get notificationsCommentsEmptyMessage =>
      'तिम्रा कमेन्टका जवाफ र Dantotsu का घोषणा यहाँ देखिन्छन्।';

  @override
  String get notificationsSettings => 'सूचना सेटिङ';

  @override
  String get notificationsPollTitle => 'नयाँ सूचना जाँच गर';

  @override
  String notificationsPollDesc(int minutes) {
    return 'एप खुला हुँदा हरेक $minutes मिनेटमा';
  }

  @override
  String get notificationsNotifyAbout => 'यसबारे सूचना देऊ';

  @override
  String get notificationsCommentsHeader => 'कमेन्ट सूचना';

  @override
  String systemNotificationsDescFor(String service) {
    return 'एप चलिरहँदा हरेक नपढिएको $service सूचनाका लागि सिस्टम सूचना देखाऊ।';
  }

  @override
  String get notificationsTestSent => 'परीक्षण सूचना पठाइयो';

  @override
  String get notificationsTestDenied =>
      'Dartotsu का लागि सूचना अनुमति छैन। सिस्टम सेटिङमा अन गर।';

  @override
  String get notificationsTestHint => 'परीक्षण सूचना पठाउन लामो थिच';

  @override
  String get notificationsTestSample => 'यो परीक्षण सूचना हो';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name ले $media मा तिम्रो कमेन्टमा जवाफ दिए';
  }

  @override
  String get imageSearchNotLink => 'यो लिङ्क जस्तो देखिँदैन';

  @override
  String get imageSearchQuota => 'खोज कोटा सकियो';

  @override
  String get imageSearchBusy => 'धेरै रिक्वेस्ट, केही बेरमा फेरि प्रयास गर';

  @override
  String imageSearchFailed(int code) {
    return 'खोज असफल ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count नयाँ सूचना';
  }

  @override
  String get reactionsTitle => 'प्रतिक्रिया';

  @override
  String get reactionsNeedEntry =>
      'प्रतिक्रिया दिनुअघि यो शीर्षक आफ्नो सूचीमा थप';

  @override
  String get reactionsAdd => 'प्रतिक्रिया थप';

  @override
  String get reactionsHint => 'कस्तो लाग्यो? (छोटो र स्पोइलरबिना)';

  @override
  String get reactionsPost => 'पोस्ट गर';

  @override
  String get reactionsFailed => 'प्रतिक्रिया अपडेट गर्न सकिएन';

  @override
  String get settingsWatch => 'हेर र पढ';

  @override
  String get settingsWatchDesc => 'एपिसोड सूची, स्रोत मिलान र एपिसोडको विवरण';

  @override
  String get watchSettingsLayout => 'एपिसोड सूची';

  @override
  String get watchSettingsSources => 'स्रोत';

  @override
  String get watchSettingsMetadata => 'एपिसोड विवरण';

  @override
  String get watchLayout => 'लेआउट';

  @override
  String get watchListView => 'सूची';

  @override
  String get watchGridView => 'ग्रिड';

  @override
  String get watchCompactView => 'कम्प्याक्ट';

  @override
  String get watchDefaultLayoutDesc =>
      'शीर्षकका लागि नबदलेसम्म एपिसोड र च्याप्टर कसरी मिलाउने';

  @override
  String get watchChunkSize => 'रेन्ज साइज';

  @override
  String get watchChunkSizeDesc => 'हरेक रेन्ज ट्याबमा कति एपिसोड वा च्याप्टर';

  @override
  String get watchShowDescription => 'विवरण देखाऊ';

  @override
  String get watchShowDescriptionDesc =>
      'सूची लेआउटमा हरेक शीर्षकमुनि एपिसोडको सारांश देखाऊ';

  @override
  String get watchShowFiller => 'फिलर एपिसोड देखाऊ';

  @override
  String get watchShowFillerDesc => 'फिलर चिन्ह लगाएका एपिसोड लुकाउन अफ गर';

  @override
  String get watchBlurUnwatched => 'स्पोइलर थम्बनेल लुकाऊ';

  @override
  String get watchBlurUnwatchedDesc => 'नहेरेका एपिसोडको थम्बनेल धमिलो पार';

  @override
  String get watchResumeShelf => 'रिजुम सेल्फ';

  @override
  String get watchResumeShelfDesc => 'होममा रिजुम पङ्क्ति देखाऊ';

  @override
  String get watchMarkOnLongPress => 'लामो थिचेर प्रगति चिन्ह लगाऊ';

  @override
  String get watchMarkOnLongPressDesc =>
      'एपिसोड वा च्याप्टरमा लामो थिचेर हेरेको/नहेरेको चिन्ह लगाऊ';

  @override
  String get watchMatching => 'स्रोत मिलान';

  @override
  String get watchMatchingDesc =>
      '\"सबैभन्दा नजिकको\" ले सबैभन्दा राम्रो खोज नतिजा लिन्छ। \"ठ्याक्कै मात्र\" ले लगभग उस्तै शीर्षक मात्र मान्छ र बाँकी तिमीलाई छान्न छोड्छ।';

  @override
  String get watchMatchClosest => 'सबैभन्दा नजिकको मिलान';

  @override
  String get watchMatchExact => 'ठ्याक्कै मिलान मात्र';

  @override
  String get watchMetadataDesc =>
      'एपिसोडका शीर्षक, सारांश, थम्बनेल, प्रसारण मिति र फिलर फ्ल्याग कहाँबाट आउने। प्राथमिकता मिलाउन तान्; मान भएको पहिलो स्रोत जित्छ।';

  @override
  String get watchMetaAniZipDesc =>
      'एपिसोडका शीर्षक, सारांश, स्टिल र प्रसारण मिति';

  @override
  String get watchMetaKitsuDesc => 'एपिसोडका शीर्षक, विवरण र थम्बनेल';

  @override
  String get watchMetaSimklDesc =>
      'एपिसोडका शीर्षक, विवरण, स्टिल र प्रसारण मिति';

  @override
  String get watchMetaAniListDesc =>
      'स्ट्रिमिङ एपिसोडका शीर्षक, थम्बनेल र प्रसारण तालिका';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai मार्फत MyAnimeList का एपिसोड शीर्षक, प्रसारण मिति, फिलर र रिक्याप फ्ल्याग';

  @override
  String get watchClearMetadata => 'एपिसोड विवरण रिफ्रेस गर';

  @override
  String get watchClearMetadataDesc =>
      'क्यास गरिएका एपिसोड विवरण बिर्स ताकि फेरि ल्याइयोस्';

  @override
  String get watchMetadataCleared => 'एपिसोड विवरण फेरि ल्याइनेछ';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड',
      one: '१ एपिसोड',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count च्याप्टर',
      one: '१ च्याप्टर',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'एपिसोड $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'च्याप्टर $number';
  }

  @override
  String get watchSearching => 'खोज्दै…';

  @override
  String watchSearchingFor(String term) {
    return 'खोज्दै: $term';
  }

  @override
  String watchSelected(String title) {
    return 'छानिएको: $title';
  }

  @override
  String watchFound(String title) {
    return 'भेटियो: $title';
  }

  @override
  String get watchNothingFound => 'यो स्रोतमा केही भेटिएन';

  @override
  String get watchSearchFailed => 'स्रोत खोज असफल भयो';

  @override
  String get watchLoadFailed => 'सूची लोड गर्न सकिएन';

  @override
  String get watchSignInToTrack => 'प्रगति ट्र्याक गर्न साइन इन गर';

  @override
  String watchInstallSource(String action) {
    return '$action सुरु गर्न एउटा एक्सटेन्सन इन्स्टल गर';
  }

  @override
  String get watchSourceMissing => 'यो स्रोत इन्स्टल गरिएको छैन';

  @override
  String get watchWrongTitle => 'शीर्षक मिलेन?';

  @override
  String get watchSearchAgain => 'फेरि खोज';

  @override
  String watchSearchSource(String source) {
    return '$source खोज';
  }

  @override
  String get watchSource => 'स्रोत';

  @override
  String get watchOptions => 'विकल्प';

  @override
  String get watchReverse => 'क्रम उल्टाऊ';

  @override
  String get watchScanlators => 'समूह';

  @override
  String get watchResetOptions => 'यी विकल्प रिसेट गर';

  @override
  String get watchContinue => 'जारी राख';

  @override
  String get watchStart => 'सुरु गर';

  @override
  String get watchPlay => 'चलाऊ';

  @override
  String get watchRead => 'पढ';

  @override
  String get watchMarkWatched => 'हेरिसकेको चिन्ह लगाऊ';

  @override
  String get watchMarkUnwatched => 'नहेरेको चिन्ह लगाऊ';

  @override
  String get watchMarkRead => 'पढिसकेको चिन्ह लगाऊ';

  @override
  String get watchMarkUnread => 'नपढेको चिन्ह लगाऊ';

  @override
  String get watchFiller => 'फिलर';

  @override
  String get watchRecap => 'रिक्याप';

  @override
  String get watchNoEpisodes => 'एपिसोड भेटिएन';

  @override
  String get watchNoChapters => 'च्याप्टर भेटिएन';

  @override
  String get watchSourceTools => 'स्रोत उपकरण';

  @override
  String get watchSourceSettings => 'स्रोत सेटिङ';

  @override
  String get watchOpenWebView => 'वेब भ्यूमा खोल';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare जाँच समाधान गर वा लगइन गर; कुकी स्रोतका रिक्वेस्टसँग साझा हुन्छन्';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host का लागि $count कुकी सेभ गरिएका छन्',
      one: '$host का लागि १ कुकी सेभ गरिएको छ',
      zero: '$host का लागि कुकी सेभ गरिएको छैन',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare क्लियरेन्स सक्रिय छ, $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare क्लियरेन्स कुकी छैन';

  @override
  String get watchClearanceSession => 'एप बन्द नहुन्जेल रहन्छ';

  @override
  String get watchAgentShared =>
      'रिक्वेस्टले वेब भ्यूको युजर एजेन्ट प्रयोग गर्छन्, जुन Cloudflare ले जाँच्छ';

  @override
  String get watchAgentCustom =>
      'कस्टम युजर एजेन्ट सेट गरिएको छ, त्यसैले वेब भ्यूबाट पाएको Cloudflare क्लियरेन्स अस्वीकार हुन सक्छ';

  @override
  String get watchTestConnection => 'कनेक्सन परीक्षण गर';

  @override
  String get watchSolveChallenge => 'समाधान गर';

  @override
  String watchProbeOk(int code) {
    return 'पुग्न सकिन्छ (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare ले अझै जाँच मागिरहेको छ';

  @override
  String watchProbeBlocked(int code) {
    return 'साइटले रोक्यो (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'साइटमा पुग्न सकिएन';

  @override
  String get watchClearCookies => 'यो साइटका कुकी खाली गर';

  @override
  String get watchCookiesCleared => 'कुकी खाली भयो';

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
  String get watchMetaSource => 'एपिसोड विवरण कहाँबाट';

  @override
  String get watchMetaAuto => 'स्वचालित';

  @override
  String get watchMetaOff => 'बन्द';

  @override
  String get playerSettingsTitle => 'प्लेयर सेटिङ';

  @override
  String get playerSectionPlayback => 'प्लेब्याक';

  @override
  String get playerSectionSkip => 'स्किपिङ';

  @override
  String get playerSectionGestures => 'कन्ट्रोल';

  @override
  String get playerSectionSubtitles => 'सबटाइटल';

  @override
  String get playerSectionShaders => 'सेडर';

  @override
  String get playerSectionEngine => 'इन्जिन';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'प्लेब्याक गति';

  @override
  String get playerCursedSpeed => 'थप गति';

  @override
  String get playerCursedSpeedDesc => 'सूचीमा १०x सम्मका गति थप';

  @override
  String get playerResize => 'रिसाइज मोड';

  @override
  String get playerFitFit => 'फिट';

  @override
  String get playerFitCover => 'कभर';

  @override
  String get playerFitStretch => 'स्ट्रेच';

  @override
  String get playerSkipDuration => 'स्किप बटनको लम्बाइ';

  @override
  String get playerSkipDurationDesc =>
      'ओपनिङ र एन्डिङबाहिर स्किप बटनले कति सेकेन्ड फड्किन्छ';

  @override
  String get playerSeekDuration => 'डबल ट्याप सिक';

  @override
  String get playerSeekDurationDesc =>
      'डबल ट्याप वा एरो की थिच्दा कति सेकेन्ड फड्कने';

  @override
  String get playerAutoPlay => 'अर्को आफैं चलाऊ';

  @override
  String get playerAutoPlayDesc => 'यो सकिएपछि अर्को एपिसोड सुरु गर';

  @override
  String get playerResume => 'छोडेको ठाउँबाट जारी राख';

  @override
  String get playerResumeDesc => 'एपिसोड पछिल्लो स्थानबाट जारी राख';

  @override
  String get playerOrientation => 'ओरिएन्टेसन';

  @override
  String get playerOrientationAuto => 'डिभाइसलाई पछ्याऊ';

  @override
  String get playerOrientationLandscape => 'ल्यान्डस्केप';

  @override
  String get playerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get playerAutoSkipOpening => 'ओपनिङ स्किप गर';

  @override
  String get playerAutoSkipEnding => 'एन्डिङ स्किप गर';

  @override
  String get playerAutoSkipRecap => 'रिक्याप स्किप गर';

  @override
  String get playerAutoSkipDesc =>
      'सुरु हुनेबित्तिकै फड्क, AniSkip र स्ट्रिम टाइमस्ट्याम्प प्रयोग गरेर';

  @override
  String get playerSkipOnce => 'एक पटक मात्र स्किप गर';

  @override
  String get playerSkipOnceDesc =>
      'पछाडि सिक गरेर फेरि त्यही भागमा पुग्यौ भने फेरि स्किप नगर';

  @override
  String get playerAdjustBrightness => 'ब्राइटनेस जेस्चर';

  @override
  String get playerAdjustBrightnessDesc =>
      'स्क्रिनको दायाँ आधा भागमा माथि-तल स्वाइप गर';

  @override
  String get playerAdjustVolume => 'भोल्युम जेस्चर';

  @override
  String get playerAdjustVolumeDesc =>
      'स्क्रिनको बायाँ आधा भागमा माथि-तल स्वाइप गर';

  @override
  String get playerHoldToSpeed => 'छिटो गर्न थिचिराख';

  @override
  String get playerHoldToSpeedDesc =>
      'छिटो चलाउन भिडियोमा थिचिराख, गति बदल्न छेउतिर तान';

  @override
  String get playerThumbless => 'मोटो सिक बार';

  @override
  String get playerThumblessDesc => 'थम्ब नभएको मोटो बार';

  @override
  String get playerShowSubtitles => 'सबटाइटल देखाऊ';

  @override
  String get playerShowSubtitlesDesc => 'सबै सबटाइटल ट्र्याक लुकाउन अफ गर';

  @override
  String get playerSubtitleLanguage => 'मनपर्ने सबटाइटल भाषा';

  @override
  String get playerSubtitleSize => 'सबटाइटल साइज';

  @override
  String get playerSubtitleWeight => 'सबटाइटल मोटाइ';

  @override
  String get playerSubtitleBottom => 'सबटाइटल तलको प्याडिङ';

  @override
  String get playerSubtitleFont => 'सबटाइटल फन्ट';

  @override
  String get playerSubtitleColor => 'सबटाइटल रङ';

  @override
  String get playerSubtitleBackground => 'सबटाइटल ब्याकग्राउन्ड';

  @override
  String get playerSubtitleOutline => 'सबटाइटल आउटलाइन';

  @override
  String get playerLibass => 'libass प्रयोग गर';

  @override
  String get playerLibassDesc =>
      'स्टाइल गरिएका .ass सबटाइटल रेन्डर गर। माथिको साइज, रङ र फन्ट तब लागू हुँदैनन्';

  @override
  String get playerShaders => 'सेडर';

  @override
  String get playerShadersEnable => 'सेडर अन गर';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K जस्ता GLSL सेडरले चित्र अपस्केल र सफा गर';

  @override
  String get playerShadersOff => 'सेडर अफ';

  @override
  String get playerShadersMissing => 'Anime4K इन्स्टल गरिएको छैन';

  @override
  String get playerShadersMissingDesc =>
      'बिल्ट-इन मोड प्रयोग गर्न Anime4K सेडर प्याक (करिब ०.८ MB) डाउनलोड गर।';

  @override
  String get playerShadersDownload => 'Anime4K डाउनलोड गर';

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
  String get playerShadersPreview => 'यो फ्रेममा पूर्वावलोकन गर';

  @override
  String get playerShadersUse => 'यो प्रयोग गर';

  @override
  String get playerPicture => 'चित्र';

  @override
  String get playerColors => 'रङ';

  @override
  String get playerColorDefault => 'डिफल्ट';

  @override
  String get playerColorVivid => 'भिभिड';

  @override
  String get playerColorPop => 'एनिमे पप';

  @override
  String get playerColorSoft => 'सफ्ट';

  @override
  String get playerColorCinematic => 'सिनेम्याटिक';

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
  String get playerColorContrast => 'कन्ट्रास्ट';

  @override
  String get playerColorSaturation => 'सेचुरेसन';

  @override
  String get playerColorGamma => 'गामा';

  @override
  String get playerColorHue => 'ह्यू';

  @override
  String get playerColorReset => 'रिसेट';

  @override
  String get playerColorAdjust => 'मिलाऊ';

  @override
  String get playerShadersOriginal => 'मौलिक';

  @override
  String get playerShadersPreviewFailed => 'पूर्वावलोकनका लागि फ्रेम लिन सकिएन';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'तिम्रा सेडर';

  @override
  String get playerShadersCustom => 'कस्टम सेडर';

  @override
  String get playerShadersImport => '.glsl इम्पोर्ट गर';

  @override
  String get playerShadersNone =>
      'आफ्नै .glsl वा .hook फाइल इम्पोर्ट गर र चेन गर्न टिक लगाऊ';

  @override
  String get playerShadersBadFile => '.glsl वा .hook सेडर फाइल छान';

  @override
  String get playerDecoder => 'डिकोडर';

  @override
  String get playerDecoderAuto => 'अटो';

  @override
  String get playerDecoderAutoSafe => 'अटो (सुरक्षित)';

  @override
  String get playerDecoderSoftware => 'सफ्टवेयर';

  @override
  String get playerDecoderHardware => 'हार्डवेयर';

  @override
  String get playerDecoderHardwarePlus => 'हार्डवेयर+';

  @override
  String get playerVideoOutput => 'भिडियो आउटपुट';

  @override
  String get playerAudioChannels => 'अडियो च्यानल';

  @override
  String get playerBuffer => 'बफर साइज (MB)';

  @override
  String get playerBufferDesc =>
      'स्ट्रिम बफर गर्न प्लेयरले प्रयोग गर्न सक्ने मेमोरी';

  @override
  String get playerUseMpvConf => 'mpv.conf प्रयोग गर';

  @override
  String get playerUseMpvConfDesc =>
      'प्लेब्याक सुरु हुँदा तिम्रो mpv.conf का विकल्प लागू गर';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv कन्फिगरेसन सम्पादन गर';

  @override
  String get playerMpvConfDesc =>
      'हरेक लाइनमा एउटा विकल्प, सामान्य mpv.conf मा जस्तै --hwdec=auto। [ब्र्याकेट] भित्रका प्रोफाइल बेवास्ता गरिन्छन्।';

  @override
  String get playerMpvConfSaved => 'mpv.conf सेभ भयो';

  @override
  String get playerUseScripts => 'mpv स्क्रिप्ट प्रयोग गर';

  @override
  String get playerUseScriptsDesc =>
      'स्क्रिप्ट फोल्डरका प्लगइन लोड गर। तिनलाई Lua वा JavaScript सपोर्ट भएको libmpv बिल्ड चाहिन्छ';

  @override
  String get playerScripts => 'mpv स्क्रिप्ट';

  @override
  String get playerScriptsManage => 'प्लगइन थप, हटाउ र बदल';

  @override
  String get playerScriptsAdd => 'स्क्रिप्ट थप';

  @override
  String get playerScriptsDesc =>
      'यहाँ राखिएका Lua, JavaScript र नेटिभ प्लगइन प्लेब्याक सुरु हुँदा लोड हुन्छन्।';

  @override
  String get playerScriptsNone => 'अहिलेसम्म स्क्रिप्ट छैन';

  @override
  String get playerScriptsBadFile => '.lua, .js वा नेटिभ प्लगइन फाइल छान';

  @override
  String get playerTuning => 'उन्नत भिडियो ट्युनिङ';

  @override
  String get playerTuningDesc =>
      'सिङ्क, क्यासिङ, स्केलिङ र टोन म्यापिङ ओभरराइड गर। गलत मानले प्लेब्याक बिगार्न सक्छ';

  @override
  String get playerVideoSync => 'भिडियो सिङ्क';

  @override
  String get playerInterpolation => 'फ्रेम इन्टरपोलेसन';

  @override
  String get playerInterpolationDesc =>
      'स्मूथ मोसन, display-resample सिङ्क चाहिन्छ';

  @override
  String get playerPitch => 'पिच करेक्सन';

  @override
  String get playerPitchDesc => 'अरू गतिमा पनि आवाज प्राकृतिक राख';

  @override
  String get playerCacheSeconds => 'क्यास (सेकेन्ड)';

  @override
  String get playerReadahead => 'रिड अहेड (सेकेन्ड)';

  @override
  String get playerThreads => 'डिकोडर थ्रेड';

  @override
  String get playerDeband => 'डिब्यान्ड';

  @override
  String get playerDebandDesc => 'ग्रेडियन्टमा रङको धर्सा घटाऊ';

  @override
  String get playerDebandIterations => 'डिब्यान्ड इटरेसन';

  @override
  String get playerDebandThreshold => 'डिब्यान्ड थ्रेसहोल्ड';

  @override
  String get playerCorrectDownscaling => 'सही डाउनस्केलिङ';

  @override
  String get playerSigmoid => 'सिग्मोइड अपस्केलिङ';

  @override
  String get playerScale => 'अपस्केलर';

  @override
  String get playerCscale => 'क्रोमा अपस्केलर';

  @override
  String get playerDscale => 'डाउनस्केलर';

  @override
  String get playerToneMapping => 'टोन म्यापिङ';

  @override
  String get playerTargetPeak => 'टार्गेट पिक';

  @override
  String get playerOpenFiles => 'भिडियो फाइल खोल';

  @override
  String get playerOpenFilesDesc => 'यो डिभाइसका फाइल चलाऊ';

  @override
  String get playerOpenFolder => 'फोल्डर खोल';

  @override
  String get playerOpenFolderDesc =>
      'फोल्डरका सबै भिडियो प्लेलिस्टको रूपमा चलाऊ';

  @override
  String get playerNetworkStream => 'नेटवर्क स्ट्रिम';

  @override
  String get playerNetworkStreamDesc => 'सिधा भिडियो वा HLS लिङ्क खोल';

  @override
  String get playerStreamUrl => 'स्ट्रिम URL';

  @override
  String get playerStreamReferer => 'रेफरर (ऐच्छिक)';

  @override
  String get playerTorrent => 'टोरेन्ट';

  @override
  String get playerTorrentDesc => 'म्याग्नेट लिङ्क वा .torrent फाइल स्ट्रिम गर';

  @override
  String get playerMagnetLink => 'म्याग्नेट लिङ्क वा टोरेन्ट URL';

  @override
  String get playerPickTorrent => '.torrent फाइल छान';

  @override
  String get playerTorrentMissing =>
      'पहिले सेटिङ > एडअनबाट टोरेन्ट एडअन इन्स्टल गर';

  @override
  String get playerNoVideos => 'चलाउन मिल्ने भिडियो भेटिएन';

  @override
  String get playerReset => 'प्लेयर सेटिङ रिसेट गर';

  @override
  String get playerResetDesc => 'प्लेयरका सबै विकल्प डिफल्टमा फर्काऊ';

  @override
  String get playerResetConfirm => 'प्लेयरका सबै सेटिङ रिसेट गर्ने?';

  @override
  String get playerResetDone => 'प्लेयर सेटिङ रिसेट भयो';

  @override
  String get playerQuality => 'गुणस्तर';

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
  String get playerStreams => 'स्ट्रिम';

  @override
  String get playerAutoSelect => 'स्ट्रिम आफैं छान';

  @override
  String get playerAutoSelectDesc =>
      'यो शीर्षकमा तिम्रो अन्तिम छनोटसँग सबैभन्दा मिल्ने स्ट्रिम छान';

  @override
  String get playerLoadingStreams => 'स्ट्रिम खोज्दै…';

  @override
  String get playerNoStreams => 'यो एपिसोडमा स्ट्रिम छैन';

  @override
  String get playerNoStreamsTitle => 'स्ट्रिम भेटिएन';

  @override
  String get playerFailed => 'प्लेब्याक असफल भयो';

  @override
  String get playerTorrentNeeded => 'यो स्ट्रिम टोरेन्ट हो';

  @override
  String get playerTorrentNeededDesc =>
      'म्याग्नेट लिङ्क र .torrent फाइल चलाउन टोरेन्ट एडअन इन्स्टल गर';

  @override
  String get playerOpenAddons => 'एडअन खोल';

  @override
  String get playerTryAnotherStream => 'अर्को स्ट्रिम प्रयास गर';

  @override
  String get playerEpisodes => 'एपिसोड';

  @override
  String get playerLock => 'कन्ट्रोल लक गर';

  @override
  String get playerFullscreen => 'फुलस्क्रिन';

  @override
  String get readerChapters => 'च्याप्टर';

  @override
  String get readerSettingsTitle => 'रिडर सेटिङ';

  @override
  String get readerPreviousChapter => 'अघिल्लो च्याप्टर';

  @override
  String get readerNextChapter => 'अर्को च्याप्टर';

  @override
  String get readerFirstChapter => 'यो पहिलो च्याप्टर हो';

  @override
  String get readerLastChapter => 'तिमीले सबै पढिसक्यौ';

  @override
  String get readerFailed => 'यो च्याप्टर खोल्न सकिएन';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'यो च्याप्टरमा पाठ छैन';

  @override
  String get readerPerTitle => 'यो शीर्षकका लागि मात्र';

  @override
  String get readerPerTitleDesc => 'यी रिडर सेटिङ यही शीर्षकका लागि मात्र राख';

  @override
  String get readerSectionReading => 'पढाइ';

  @override
  String get readerSectionControls => 'कन्ट्रोल';

  @override
  String get readerSectionDisplay => 'डिस्प्ले';

  @override
  String get readerSectionNovel => 'उपन्यास';

  @override
  String get readerMode => 'पढ्ने मोड';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'दायाँबाट बायाँ';

  @override
  String get readerModeLtr => 'बायाँबाट दायाँ';

  @override
  String get readerModeVertical => 'ठाडा पेज';

  @override
  String get readerModeWebtoon => 'वेबटुन';

  @override
  String get readerModeContinuous => 'लगातार स्क्रोल';

  @override
  String get readerScale => 'इमेज स्केल';

  @override
  String get readerScaleFit => 'स्क्रिनमा फिट';

  @override
  String get readerScaleWidth => 'चौडाइमा फिट';

  @override
  String get readerScaleHeight => 'उचाइमा फिट';

  @override
  String get readerScaleOriginal => 'मौलिक साइज';

  @override
  String get readerScaleSmart => 'स्मार्ट फिट';

  @override
  String get readerDoublePage => 'दोहोरो पेज';

  @override
  String get readerDoublePageDesc => 'ल्यान्डस्केपमा दुई पेज छेउछाउ देखाऊ';

  @override
  String get readerDoubleTapZoom => 'जुम गर्न डबल ट्याप';

  @override
  String get readerDoubleTapZoomDesc => 'डबल ट्यापले पेज जुम इन र आउट गर';

  @override
  String get readerAnimate => 'पेज एनिमेसन';

  @override
  String get readerAnimateDesc => 'पेज पल्टाउँदा एनिमेट गर';

  @override
  String get readerSidePadding => 'छेउको प्याडिङ';

  @override
  String get readerSidePaddingDesc => 'पेजका छेउको ठाउँ प्रतिशतमा';

  @override
  String get readerPageGap => 'पेज ग्याप';

  @override
  String get readerPageGapDesc => 'पेजबीचको ठाउँ';

  @override
  String get readerAutoNext => 'अर्को च्याप्टरमा जारी राख';

  @override
  String get readerAutoNextDesc =>
      'यो च्याप्टरको अन्त्य पढ्दा अर्को च्याप्टर लोड गर';

  @override
  String get readerPreload => 'पेज पहिल्यै लोड गर';

  @override
  String get readerPreloadDesc => 'कति पेज अगाडि डाउनलोड गर्ने';

  @override
  String get readerTapZones => 'ट्याप क्षेत्र';

  @override
  String get readerTapDefault => 'डिफल्ट';

  @override
  String get readerTapLShaped => 'L-आकारको';

  @override
  String get readerTapKindle => 'Kindle जस्तो';

  @override
  String get readerTapEdge => 'किनारा मात्र';

  @override
  String get readerTapOff => 'बन्द';

  @override
  String get readerInvertTaps => 'ट्याप क्षेत्र उल्टाऊ';

  @override
  String get readerInvertTapsDesc => 'अघिल्लो र अर्को भाग साटासाट गर';

  @override
  String get readerBackground => 'ब्याकग्राउन्ड';

  @override
  String get readerBackgroundBlack => 'कालो';

  @override
  String get readerBackgroundGray => 'खैरो';

  @override
  String get readerBackgroundWhite => 'सेतो';

  @override
  String get readerBackgroundTheme => 'एप थिम';

  @override
  String get readerFilter => 'रङ फिल्टर';

  @override
  String get readerFilterNone => 'कुनै पनि होइन';

  @override
  String get readerFilterGrayscale => 'ग्रेस्केल';

  @override
  String get readerFilterInvert => 'इन्भर्ट';

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
  String get readerDimDesc => 'पेज गाढा बनाऊ';

  @override
  String get readerPageNumber => 'पेज नम्बर';

  @override
  String get readerPageNumberDesc => 'पढ्दा पेज नम्बर देखाऊ';

  @override
  String get readerFullscreen => 'फुलस्क्रिन';

  @override
  String get readerFullscreenDesc => 'सिस्टम बार लुकाऊ';

  @override
  String get readerCropBorders => 'किनारा काट';

  @override
  String get readerCropBordersDesc => 'पेजका खाली सेता वा कालो मार्जिन काटिदेऊ';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'भोल्युम कीले पेज पल्टाऊ';

  @override
  String get readerVolumeKeysDesc => 'भोल्युम डाउनले अगाडि, भोल्युम अपले पछाडि';

  @override
  String get readerBookmarks => 'बुकमार्क';

  @override
  String get readerBookmarkAdd => 'बुकमार्क थप';

  @override
  String get readerBookmarkRemove => 'बुकमार्क हटाऊ';

  @override
  String get readerBookmarksEmpty => 'अहिलेसम्म बुकमार्क छैन';

  @override
  String readerBookmarkPage(int page, int total) {
    return 'पेज $page / $total';
  }

  @override
  String get readerAutoScroll => 'अटो स्क्रोल';

  @override
  String get readerAutoScrollStop => 'अटो स्क्रोल रोक';

  @override
  String get readerAutoScrollSpeed => 'अटो स्क्रोल गति';

  @override
  String get readerAutoScrollSpeedDesc =>
      'पेज आफैं कति छिटो स्क्रोल वा पल्टिन्छन्';

  @override
  String get readerKeepOn => 'स्क्रिन अन राख';

  @override
  String get readerKeepOnDesc => 'पढ्दा स्क्रिन बन्द हुन नदेऊ';

  @override
  String get readerOrientation => 'ओरिएन्टेसन';

  @override
  String get readerOrientationFree => 'फ्री';

  @override
  String get readerOrientationPortrait => 'पोर्ट्रेट';

  @override
  String get readerOrientationLandscape => 'ल्यान्डस्केप';

  @override
  String get readerSaveProgress => 'प्रगति सेभ गर';

  @override
  String get readerSaveProgressDesc =>
      'तिम्रो पेज सम्झ र च्याप्टर पढिसकेको चिन्ह लगाऊ';

  @override
  String get readerReset => 'रिडर सेटिङ रिसेट गर';

  @override
  String get readerResetDesc => 'डिफल्टमा फर्क';

  @override
  String get novelSize => 'पाठको साइज';

  @override
  String get novelFont => 'फन्ट';

  @override
  String get novelLineHeight => 'लाइन उचाइ';

  @override
  String get novelParagraph => 'अनुच्छेद दूरी';

  @override
  String get novelMargin => 'मार्जिन';

  @override
  String get novelTheme => 'रिडर थिम';

  @override
  String get novelThemeApp => 'एप थिम';

  @override
  String get novelThemeLight => 'लाइट';

  @override
  String get novelThemeSepia => 'सेपिया';

  @override
  String get novelThemeDark => 'डार्क';

  @override
  String get novelThemeBlack => 'ब्ल्याक';

  @override
  String get novelJustify => 'पाठ जस्टिफाइ गर';

  @override
  String get novelJustifyDesc => 'पाठ दुवै किनारामा मिलाऊ';

  @override
  String get trackProgressTitle => 'प्रगति सेभ गर्ने?';

  @override
  String trackProgressAnime(String name) {
    return 'हेर्दा $name तिम्रो सूचीमा ट्र्याक गर्ने? लोकल राख्न \"यो डिभाइस मात्र\" छान, केही सेभ नगर्न होइन छान।';
  }

  @override
  String trackProgressManga(String name) {
    return 'च्याप्टर सकाउँदा $name तिम्रो सूचीमा ट्र्याक गर्ने? लोकल राख्न \"यो डिभाइस मात्र\" छान, केही सेभ नगर्न होइन छान।';
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
  String get trackProgressYes => 'सेभ';

  @override
  String get trackProgressReset =>
      'यो प्रकारका लागि प्रगति सेभ प्रम्प्ट रिसेट भयो, फेरि सोध्नेछ';

  @override
  String get trackProgressNo => 'होइन';

  @override
  String get trackProgressOff => 'बन्द';

  @override
  String get trackProgressLocal => 'यो डिभाइस मात्र';

  @override
  String get trackProgressSettingAnime => 'एनिमे प्रगति ट्र्याक गर';

  @override
  String get trackProgressSettingManga => 'मङ्गा र उपन्यास प्रगति ट्र्याक गर';

  @override
  String get trackProgressSettingDesc =>
      'एपिसोड खोल्दा वा च्याप्टर सकाउँदा के गर्ने';

  @override
  String get trackProgressAsk => 'सोध';

  @override
  String get trackProgressAlways => 'सधैं';

  @override
  String get dantotsuImport => 'Dantotsu बाट इम्पोर्ट गर';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu सेटिङ ब्याकअप पढ (.ani, वा इन्क्रिप्टेड .sani)';

  @override
  String get dantotsuPick => 'Dantotsu ब्याकअप छान';

  @override
  String get dantotsuNothing => 'यो फाइलमा इम्पोर्ट गर्न मिल्ने केही छैन';

  @override
  String get dantotsuApply => 'छानिएको इम्पोर्ट गर';

  @override
  String dantotsuDone(int done, int total) {
    return '$total मध्ये $done इम्पोर्ट भयो';
  }

  @override
  String get dantotsuGroupAccounts => 'खाता';

  @override
  String get dantotsuGroupAppearance => 'देखावट';

  @override
  String get dantotsuGroupExtensions => 'एक्सटेन्सन';

  @override
  String get dantotsuGroupApp => 'एप';

  @override
  String get dantotsuGroupPlayer => 'प्लेयर';

  @override
  String get dantotsuAnilist => 'AniList लगइन';

  @override
  String get dantotsuMal => 'MyAnimeList लगइन';

  @override
  String get dantotsuDiscord => 'Discord रिच प्रेजेन्स टोकन';

  @override
  String get dantotsuTheme => 'थिम';

  @override
  String get dantotsuReposAnime => 'एनिमे एक्सटेन्सन रिपोजिटरी';

  @override
  String get dantotsuReposManga => 'मङ्गा एक्सटेन्सन रिपोजिटरी';

  @override
  String get dantotsuReposNovel => 'उपन्यास एक्सटेन्सन रिपोजिटरी';

  @override
  String get dantotsuUpdates => 'अपडेट जाँच';

  @override
  String get dantotsuComments => 'कमेन्ट';

  @override
  String get dantotsuActivity => 'AniList सूचना पोलिङ';

  @override
  String get dantotsuDns => 'DNS प्रदायक';

  @override
  String get dantotsuPlayer => 'प्लेयर गति र सबटाइटल रङ';

  @override
  String get dantotsuWarning => 'यो फाइलमा लगइन टोकन छन्। यसलाई गोप्य राख।';

  @override
  String get novelIndent => 'अनुच्छेद इन्डेन्ट गर';

  @override
  String get novelIndentDesc =>
      'हरेक अनुच्छेद पहिलो लाइनमा इन्डेन्टसहित सुरु गर';

  @override
  String get novelLetterSpacing => 'अक्षर दूरी';

  @override
  String get novelSectionTranslate => 'अनुवाद';

  @override
  String get sectionExperimental => 'प्रयोगात्मक';

  @override
  String get kitsuGraphqlDetail => 'छिटो डिटेल पेज (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'शीर्षक, यसका पात्र, स्टाफ र तिम्रो इन्ट्री एउटै रिक्वेस्टमा लोड गर';

  @override
  String get togetherTitle => 'सँगै हेरौं';

  @override
  String get togetherIntro =>
      'साथीले पठाएको रुम लिङ्क पेस्ट गर। तिमी तुरुन्तै सामेल हुन्छौ र उनीहरूले हेर्न थालेपछि प्लेयर खुल्छ।';

  @override
  String get togetherName => 'तिम्रो नाम';

  @override
  String get togetherConnecting => 'कनेक्ट हुँदै…';

  @override
  String get togetherLeave => 'रुम छोड';

  @override
  String get togetherYou => 'तिमी';

  @override
  String get togetherNoChat => 'अहिलेसम्म सन्देश छैन';

  @override
  String get togetherChatHint => 'सन्देश';

  @override
  String get togetherCopyInvite => 'निमन्त्रणा कपी गर';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'सर्भर र रुम कपी भयो';

  @override
  String get togetherConnectionLost => 'कनेक्सन टुट्यो';

  @override
  String togetherConnectedTo(String room) {
    return '$room सँग कनेक्ट भयो';
  }

  @override
  String togetherFailed(String error) {
    return 'कनेक्ट हुन सकेन: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name सामेल भए';
  }

  @override
  String togetherLeft(String name) {
    return '$name बाहिरिए';
  }

  @override
  String togetherPaused(String name) {
    return '$name ले रोके';
  }

  @override
  String togetherResumed(String name) {
    return '$name ले फेरि चलाए';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time मा फड्किए';
  }

  @override
  String get togetherFollowFailed => 'होस्टको एपिसोड खोल्न सकिएन। आफैं खोल।';

  @override
  String get togetherJoinRole => 'रुममा सामेल हो';

  @override
  String get togetherOpenHost => 'होस्टको एपिसोड खोल';

  @override
  String get togetherShowChat => 'लाइभ च्याट देखाऊ';

  @override
  String get togetherWaitingHost => 'होस्टले एपिसोड सुरु गर्ने प्रतीक्षा गर्दै';

  @override
  String get togetherRoomLink => 'रुम लिङ्क';

  @override
  String get togetherBadLink => 'त्यो रुम लिङ्क होइन';

  @override
  String get togetherHostClosed => 'होस्टले रुम बन्द गरे';

  @override
  String get togetherNowPlaying => 'अहिले चलिरहेको';

  @override
  String togetherWatchingCount(int count) {
    return '$count जना हेर्दैछन्';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user रोक्न चाहन्छन्';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user फेरि चलाउन चाहन्छन्';
  }

  @override
  String get togetherChip => 'सँगै';

  @override
  String get togetherSettingsDesc => 'लिङ्कले साथीको रुममा सामेल हो';

  @override
  String get novelBilingual => 'मौलिक र अनुवाद देखाऊ';

  @override
  String get novelBilingualDesc =>
      'हरेक अनुच्छेदमा मौलिक पाठ र मुनि यसको अनुवाद देखिन्छ';

  @override
  String get novelTranslateTo => 'यसमा अनुवाद गर';

  @override
  String get novelTranslateOff => 'बन्द';

  @override
  String get novelSectionSpeech => 'टेक्स्ट टु स्पिच';

  @override
  String get novelSpeechRate => 'बोल्ने गति';

  @override
  String get novelSpeechPitch => 'बोल्ने पिच';

  @override
  String get novelSpeak => 'ठुलो स्वरमा पढ';

  @override
  String get novelSpeakStop => 'ठुलो स्वरमा पढ्न रोक';

  @override
  String get novelTranslate => 'च्याप्टर अनुवाद गर';

  @override
  String get novelTranslateShowOriginal => 'मौलिक देखाऊ';

  @override
  String novelTranslateFailed(String error) {
    return 'अनुवाद असफल: $error';
  }

  @override
  String get novelSpeechUnavailable =>
      'यो डिभाइसमा टेक्स्ट टु स्पिच उपलब्ध छैन';

  @override
  String get novelSpeechVoice => 'आवाज';

  @override
  String get novelSpeechVoiceDefault => 'सिस्टम डिफल्ट';

  @override
  String get novelSpeakPrevious => 'अघिल्लो लाइन';

  @override
  String get novelSpeakNext => 'अर्को लाइन';

  @override
  String get novelTapPaging => 'पेज पल्टाउन किनारामा ट्याप गर';

  @override
  String get novelTapPagingDesc =>
      'एक पेज स्क्रोल गर्न बायाँ वा दायाँ छेउमा ट्याप गर, बीचले कन्ट्रोल देखाउँछ';

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
    return '$count मिनेट बाँकी';
  }

  @override
  String get novelBold => 'बोल्ड पाठ';

  @override
  String get novelBoldDesc => 'मोटो तौल प्रयोग गर';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter सकियो';
  }

  @override
  String readerNextUp(String chapter) {
    return 'अर्को: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'अघिल्लो: $chapter';
  }

  @override
  String get readerNoPages => 'यो च्याप्टरमा पेज छैन';

  @override
  String get readerLoadingPages => 'पेज लोड हुँदै…';

  @override
  String get readerSlowPage => 'यो पेज अझै लोड हुँदैछ…';

  @override
  String get readerPageFailed => 'यो पेज लोड गर्न सकिएन';

  @override
  String get playerShowComments => 'कमेन्ट देखाऊ';

  @override
  String get playerHideComments => 'कमेन्ट लुकाऊ';

  @override
  String get playerSubtitles => 'सबटाइटल';

  @override
  String get playerSubtitlesOff => 'सबटाइटल बन्द';

  @override
  String get playerAudio => 'अडियो';

  @override
  String get playerAddSubtitle => 'सबटाइटल फाइल थप';

  @override
  String get playerAddAudio => 'अडियो फाइल थप';

  @override
  String get playerChapters => 'च्याप्टर';

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
  String get playerNoChapters => 'च्याप्टर छैन';

  @override
  String get playerTimestamp => 'टाइमस्ट्याम्प';

  @override
  String get playerAutoPlayDelay => 'अर्को एपिसोड काउन्टडाउन';

  @override
  String get playerWatchedAt => 'हेरिसकेको मान्ने समय';

  @override
  String playerNextIn(int seconds) {
    return 'अर्को एपिसोड $seconds सेकेन्डमा';
  }

  @override
  String get playerPlayNow => 'अहिले चलाऊ';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: यो शीर्षकका लागि आफैं स्किप हुन्छ';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: यो शीर्षकका लागि आफैं स्किप हुँदैन';
  }

  @override
  String get playerAudioLanguage => 'मनपर्ने अडियो भाषा';

  @override
  String get playerLanguageOrderHint =>
      'भाषा कमाले छुट्याऊ। भेटिएको पहिलो प्रयोग हुन्छ।';

  @override
  String get playerPip => 'पिक्चर इन पिक्चर';

  @override
  String get playerAutoPip => 'बाहिरिँदा पिक्चर इन पिक्चर';

  @override
  String get playerAutoPipDesc => 'एपबाट निस्कँदा सानो विन्डोमा चलिरहोस्';

  @override
  String playerAutoPlaying(String title) {
    return 'अब $title चल्दैछ…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'सेडर इन्स्टल गर्न सकिएन: $error';
  }

  @override
  String playerChapter(int number) {
    return 'च्याप्टर $number';
  }

  @override
  String get playerPerTitle => 'यो शीर्षकका लागि मात्र';

  @override
  String get playerPerTitleDesc =>
      'यी विकल्प यही शीर्षकका लागि राख र आफ्ना डिफल्ट नछोऊ';

  @override
  String get playerSwapGestures => 'स्वाइपका साइड साट्नुस्';

  @override
  String get playerSwapGesturesDesc =>
      'बायाँतर्फ ब्राइटनेस र दायाँतर्फ भोल्युम';

  @override
  String get playerOpenBig => 'ठूलो भ्युमा खोल्नुस्';

  @override
  String get playerOpenBigDesc =>
      'एपिसोड लिस्ट बिना प्लेयर सिधै फुलस्क्रिनमा सुरु हुन्छ';

  @override
  String get playerPauseOnBlur => 'फोकस हटेपछि पज गर्नुस्';

  @override
  String get playerPauseOnBlurDesc =>
      'नोटिफिकेसन प्यानल जस्तोले एप छेकेमा पज हुन्छ, फर्किएपछि फेरि चल्छ';

  @override
  String get playerAudioOutput => 'अडियो आउटपुट';

  @override
  String get fontAppDefault => 'एप फन्ट';

  @override
  String get fontImport => 'फन्ट इम्पोर्ट गर';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'सबटाइटल ढिलाइ';

  @override
  String get playerAudioDelay => 'अडियो ढिलाइ';

  @override
  String get playerDelayReset => 'रिसेट';

  @override
  String get playerOnlineSubtitles => 'अनलाइन सबटाइटल';

  @override
  String get playerOnlineSearchHint => 'शीर्षक र एपिसोड';

  @override
  String get playerOnlineNone => 'सबटाइटल भेटिएन';

  @override
  String playerOnlineFailed(String error) {
    return 'सबटाइटल खोज असफल: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'यो सबटाइटल डाउनलोड गर्न सकिएन: $error';
  }

  @override
  String get playerOnlineMatch => 'यो फाइलसँग मिल्छ';

  @override
  String get playerOnlineEpisode => 'एपिसोड मिलान';

  @override
  String playerOnlineDownloads(int count) {
    return '$count डाउनलोड';
  }

  @override
  String get playerSeekPreview => 'सिक पूर्वावलोकन';

  @override
  String get playerSeekPreviewDesc =>
      'स्क्रब गर्दा सिक बारमाथि सानो फ्रेम पूर्वावलोकन देखाऊ। दोस्रो कम रिजोल्युसनको डिकोडर खुल्छ, त्यसैले स्ट्रिममा बढी डाटा खर्च हुन्छ।';

  @override
  String get playerSettingsChip => 'सेटिङ';

  @override
  String get playerAudioDevice => 'अडियो डिभाइस';

  @override
  String get settingsDownloads => 'डाउनलोड';

  @override
  String get settingsDownloadsDesc => 'अफलाइन एपिसोड, लाइन र अफलाइन मोड';

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
  String get downloadsOpenDesc => 'लाइन र यो डिभाइसमा सेभ भएका सबै हेर';

  @override
  String get downloadTitle => 'डाउनलोड';

  @override
  String get downloadAlready => 'पहिल्यै डाउनलोड भएको वा लाइनमा छ';

  @override
  String get downloadPickStream => 'कुन स्ट्रिम डाउनलोड गर्ने?';

  @override
  String get downloadPickSubtitle => 'कुन सबटाइटल डाउनलोड गर्ने?';

  @override
  String get downloadPickAudio => 'कुन अडियो ट्र्याक डाउनलोड गर्ने?';

  @override
  String get downloadNoAudio => 'थप अडियो छैन';

  @override
  String get downloadAudio => 'अडियो';

  @override
  String get downloadNoSubtitle => 'सबटाइटल छैन';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'यो स्ट्रिम HLS प्लेलिस्ट हो। यसलाई डाउनलोड गर्न FFmpeg एडअन चाहिन्छ।';

  @override
  String get downloadSourceMissing => 'यो एपिसोडको स्रोत इन्स्टल गरिएको छैन';

  @override
  String get downloadWaitingConnection => 'कनेक्सनको प्रतीक्षा गर्दै';

  @override
  String get downloadSubtitles => 'सबटाइटल';

  @override
  String get downloadDownloaded => 'डाउनलोड भयो';

  @override
  String get downloadOffline => 'अफलाइन';

  @override
  String get downloadDelete => 'डाउनलोड मेट';

  @override
  String get downloadCancel => 'रद्द गर';

  @override
  String get downloadPause => 'रोक';

  @override
  String get downloadPaused => 'रोकिएको';

  @override
  String get downloadResume => 'जारी राख';

  @override
  String get downloadPauseAll => 'सबै रोक';

  @override
  String get downloadResumeAll => 'सबै जारी राख';

  @override
  String get downloadQueuedState => 'लाइनमा प्रतीक्षा गर्दै';

  @override
  String get downloadResolving => 'स्ट्रिम ल्याउँदै…';

  @override
  String get downloadUsedFallback => 'मिल्ने स्ट्रिम छैन, पहिलो प्रयोग गरियो';

  @override
  String get downloadTabQueue => 'लाइन';

  @override
  String get downloadTabDone => 'भयो';

  @override
  String get downloadTabFailed => 'असफल';

  @override
  String get downloadEmptyQueue => 'केही डाउनलोड भइरहेको छैन';

  @override
  String get downloadEmptyDone => 'अहिलेसम्म केही डाउनलोड गरिएको छैन';

  @override
  String get downloadEmptyFailed => 'असफल डाउनलोड छैन';

  @override
  String get downloadNext => 'अर्को एपिसोड';

  @override
  String downloadNextN(int count) {
    return 'अर्को $count एपिसोड';
  }

  @override
  String downloadUnwatched(int count) {
    return 'नहेरेका सबै ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'यो रेन्ज ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'सबै एपिसोड ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एपिसोड लाइनमा राखियो',
      one: '१ एपिसोड लाइनमा राखियो',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name डाउनलोड भयो';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name डाउनलोड हुन सकेन';
  }

  @override
  String downloadStorage(String size) {
    return 'डाउनलोडले $size प्रयोग गर्यो';
  }

  @override
  String get downloadQueueHeader => 'लाइन';

  @override
  String get downloadParallel => 'एकै पटक डाउनलोड';

  @override
  String get downloadParallelDesc => 'एक पटकमा एउटा डाउनलोड चलाऊ वा धेरै सँगै';

  @override
  String get downloadOneByOne => 'एकपछि अर्को';

  @override
  String get downloadNotifications => 'डाउनलोड सूचना';

  @override
  String get downloadNotificationsDesc =>
      'सिस्टमले सपोर्ट गर्ने ठाउँमा लाइभ प्रगति, नत्र डाउनलोड सकिँदा नोट';

  @override
  String get downloadNotifyLive => 'लाइभ';

  @override
  String get downloadNotifyDone => 'सकिँदा';

  @override
  String get downloadNotifyOff => 'बन्द';

  @override
  String get downloadInfoFile => 'हरेक डाउनलोडको छेउमा जानकारी फाइल लेख';

  @override
  String get downloadInfoFileDesc =>
      'स्ट्रिम, गुणस्तर, सबटाइटल र स्किप समय सानो .json फाइलमा सेभ गर्छ';

  @override
  String get offlineHeader => 'अफलाइन';

  @override
  String get offlineModeDesc =>
      'अटो ले एप इन्टरनेटबिना सुरु हुँदा मात्र अफलाइन जान्छ। सधैं ले तिमीले नबदलेसम्म अफलाइन नै राख्छ।';

  @override
  String get offlineModeOff => 'बन्द';

  @override
  String get offlineModeAlways => 'सधैं';

  @override
  String get offlineModeOn =>
      'अफलाइन मोड अन छ। परिवर्तन यहाँ सेभ हुन्छन् र अनलाइन आएपछि पठाइन्छन्।';

  @override
  String get offlineSaved => 'यो डिभाइसमा सेभ भयो, अनलाइन आएपछि सिङ्क हुन्छ';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिवर्तन सिङ्क भए',
      one: '१ परिवर्तन सिङ्क भयो',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count परिवर्तन सिङ्कको प्रतीक्षामा',
      one: '१ परिवर्तन सिङ्कको प्रतीक्षामा',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle => 'सिङ्कको प्रतीक्षामा रहेका परिवर्तन';

  @override
  String get offlinePendingNone => 'कुनै प्रतीक्षामा छैन';

  @override
  String get offlineSyncNow => 'अहिले सिङ्क गर';

  @override
  String get offlineDiscard => 'त्याग';

  @override
  String get downloadNotOffline =>
      'यो एपिसोड डाउनलोड गरिएको छैन, त्यसैले अफलाइन उपलब्ध छैन';

  @override
  String get offlineModeChip => 'अफलाइन';

  @override
  String get downloadNextChapter => 'अर्को च्याप्टर';

  @override
  String downloadNextChapters(int count) {
    return 'अर्को $count च्याप्टर';
  }

  @override
  String downloadUnread(int count) {
    return 'नपढेका सबै ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'सबै च्याप्टर ($count)';
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
  String get downloadFfmpegTitle => 'FFmpeg एडअन चाहिन्छ';

  @override
  String get downloadFfmpegBody =>
      'यो स्ट्रिम HLS प्लेलिस्ट हो। FFmpeg एडअनले यसका टुक्रा जोडेर एउटै mp4 फाइल बनाउँछ। नभए टुक्रा एपिसोड फोल्डरमा रहन्छन् र त्यहीँबाट चल्छन्।';

  @override
  String get downloadFfmpegInstall => 'इन्स्टल गर';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg इन्स्टल हुँदैछ, केही समय लाग्न सक्छ…';

  @override
  String get downloadFinishing => 'टुक्रा जोडेर एउटै फाइल बनाउँदै…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total भाग';
  }

  @override
  String get downloadTorrentNoFile =>
      'यो टोरेन्टमा डाउनलोड गर्ने भिडियो फाइल छैन';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम डाउनलोड हुँदै',
      one: '१ आइटम डाउनलोड हुँदै',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'हेरिसकेका डाउनलोड मेट';

  @override
  String get downloadAutoDeleteDesc =>
      'तिम्रो प्रगति त्यो एपिसोड वा च्याप्टरमा पुगेपछि डाउनलोड हटाउँछ';

  @override
  String get downloadConnections => 'प्रति डाउनलोड कनेक्सन';

  @override
  String get downloadConnectionsDesc =>
      'ठुलो फाइललाई एकै पटक तानिने भागमा बाँड्छ। केही सर्भरले यसमा सीमा लगाउँछन्।';

  @override
  String get downloadPlayChoice => 'यहाँबाट चलाऊ';

  @override
  String get downloadPlayLocalDesc => 'यो डिभाइसमा सेभ गरिएको फाइल';

  @override
  String get downloadPlayStream => 'अनलाइन स्ट्रिम गर';

  @override
  String get downloadPlayStreamDesc => 'एपिसोड स्रोतबाट लोड गर';

  @override
  String get offlineFeedTitle => 'यो डिभाइसमा डाउनलोड गरिएको';

  @override
  String get offlineFeedEmpty => 'अनलाइन हुँदा केही डाउनलोड गर र यहाँ देखिन्छ';

  @override
  String get offlineEnabled => 'अफलाइन मोड अन छ';

  @override
  String get offlineDisabled => 'अफलाइन मोड अफ छ';

  @override
  String get downloadReadChoice => 'यहाँबाट पढ';

  @override
  String get downloadReadLocalDesc => 'यो डिभाइसमा सेभ गरिएका पेज';

  @override
  String get downloadReadOnline => 'अनलाइन पढ';

  @override
  String get downloadReadOnlineDesc => 'च्याप्टर स्रोतबाट लोड गर';

  @override
  String downloadDeleteConfirm(String name) {
    return '$name यो डिभाइसबाट मेट्ने?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name को डाउनलोड रद्द गर्ने? पहिल्यै डाउनलोड भएको मेटिनेछ।';
  }

  @override
  String get downloadFfmpegFolder => 'फोल्डरको रूपमा राख';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'कहिल्यै नपठाइएका $count परिवर्तन फ्याँक्ने? यसलाई फर्काउन मिल्दैन।',
      one: 'कहिल्यै नपठाइएको परिवर्तन फ्याँक्ने? यसलाई फर्काउन मिल्दैन।',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi को प्रतीक्षा गर्दै';

  @override
  String get downloadWaitingMetered => 'मिटर्ड कनेक्सनमा रोकिएको';

  @override
  String get downloadWifiOnly => 'Wi-Fi मात्र';

  @override
  String get downloadWifiOnlyDesc => 'मोबाइल डाटामा हुँदा डाउनलोड पर्खन्छ';

  @override
  String get downloadMetered => 'मिटर्ड कनेक्सनमा रोक';

  @override
  String get downloadMeteredDesc =>
      'तिम्रो डिभाइसले मिटर्ड चिन्ह लगाएको Wi-Fi मा पनि पर्खन्छ';

  @override
  String get downloadSpeedLimit => 'गति सीमा';

  @override
  String get downloadSpeedLimitDesc => 'कुल डाउनलोड गतिमा सीमा लगाउँछ';

  @override
  String get downloadUnlimited => 'असीमित';

  @override
  String get downloadMoveToTop => 'माथि सार';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds सिड · $peers पियर';
  }

  @override
  String get downloadTorrentFile => 'कुन फाइल?';

  @override
  String get downloadTorrentAuto => 'एपिसोड आफैं मिलाऊ';

  @override
  String get downloadTorrentLoading => 'टोरेन्ट पढ्दै…';

  @override
  String get watchAutoSource => 'अर्को स्रोतमा आफैं जाऊ';

  @override
  String get watchAutoSourceDesc =>
      'स्रोतले शीर्षक भेट्टाएन वा लोड भएन भने इन्स्टल गरिएको अर्को स्रोत प्रयास गर';

  @override
  String get extensionTest => 'एक्सटेन्सन परीक्षण गर';

  @override
  String get extensionTestCopy => 'असफलता र तिनका लग कपी गर';

  @override
  String get extensionTestQuery => 'खोज शब्द';

  @override
  String get extensionTestRun => 'चलाऊ';

  @override
  String get extensionTestStop => 'रोक';

  @override
  String get extensionTestNone => 'यो प्रकारको इन्स्टल गरिएको एक्सटेन्सन छैन';

  @override
  String get extensionTestNotRun => 'अझै परीक्षण गरिएको छैन';

  @override
  String get extensionTestSearch => 'खोज';

  @override
  String get extensionTestDetail => 'विवरण';

  @override
  String get extensionTestUnits => 'एपिसोड / च्याप्टर';

  @override
  String get extensionTestLinks => 'स्ट्रिम / पेज';

  @override
  String extensionTestFailedAt(String step) {
    return '$step मा असफल';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total मध्ये $done परीक्षण · $passed पास · $failed असफल';
  }

  @override
  String get extensionTestCopyLogs => 'पूरा लगसहित सबै कपी गर';

  @override
  String get onboardingFeaturesTitle => 'सबै एकै ठाउँमा';

  @override
  String get onboardingFeaturesBody =>
      'तिमीले ट्र्याक गर्ने, हेर्ने र पढ्ने सबै, एप फेरिरहनु नपरी।';

  @override
  String get onboardingFeatureTrack => 'सबै ट्र्याक गर';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu र MangaBaka मा सूची, प्रगति र स्कोर।';

  @override
  String get onboardingFeatureWatch => 'हेर र पढ';

  @override
  String get onboardingFeatureWatchDesc =>
      'एक्सटेन्सन इन्स्टल गरेर एनिमे स्ट्रिम गर वा मङ्गा र उपन्यास सिधै एपमै पढ।';

  @override
  String get onboardingFeatureOffline => 'अफलाइन पनि चलाऊ';

  @override
  String get onboardingFeatureOfflineDesc =>
      'एपिसोड र च्याप्टर डाउनलोड गर र इन्टरनेटबिना पनि जारी राख।';

  @override
  String get onboardingFeatureSync => 'सूची सिङ्कमा राख';

  @override
  String get onboardingFeatureSyncDesc =>
      'आफ्नो सूची सेवाहरूमा प्रतिलिपि गर, वा जो अगाडि छ त्यसलाई जित्न देऊ।';

  @override
  String get onboardingServices => 'यिनीहरूसँग काम गर्छ';

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
