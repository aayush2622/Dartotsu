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
  String get kitsu => 'Kitsu';

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
  String get noSourceSettings => 'ଏହି ଉତ୍ସରେ କୌଣସି ସେଟିଂସ୍ ନାହିଁ';

  @override
  String get addPluginRepository => 'ପ୍ଲଗଇନ୍ ରିପୋଜିଟୋରି ଯୋଗ କରନ୍ତୁ';

  @override
  String get pluginIndexUrlHint => 'ପ୍ଲଗଇନ୍ ଇଣ୍ଡେକ୍ସ URL';

  @override
  String get addRepository => 'ରିପୋଜିଟୋରି ଯୋଗ କରନ୍ତୁ';

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
  String get settingsNetworkDesc => 'ୟୁଜର୍ ଏଜେଣ୍ଟ, ସର୍ଟିଫିକେଟ୍, DNS ଓ ପ୍ରକ୍ସି';

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
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

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
  String get backupPasswordRequired => 'Password (required for account data)';

  @override
  String get backupProtectedNeedsPassword =>
      'Set a password to back up account data, or untick it';

  @override
  String get backupProtectedSkipped =>
      'This backup has no password, so its account data was skipped';

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
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

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
  String get materialYou => 'Material You';

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
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'ଡିଫଲ୍ଟ';

  @override
  String currentlyUsing(String value) {
    return 'ବର୍ତ୍ତମାନ: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

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
  String get imageTitlePage => 'Page';

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
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'ବିକାଶକୁ ସମର୍ଥନ କରନ୍ତୁ';

  @override
  String get contributors => 'ଯୋଗଦାନକାରୀ';

  @override
  String get contributorsDesc => 'Dartotsu ତିଆରି କରିଥିବା ଲୋକ';

  @override
  String get contributorsLoadFailed => 'ଯୋଗଦାନକାରୀଙ୍କୁ ଲୋଡ୍ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get forks => 'Forks';

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
  String get discordRichPresence => 'Rich Presence';

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
  String get discordRichPresenceRow => 'Discord Rich Presence';

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
  String get mangaBakaProfile => 'MangaBaka ପ୍ରୋଫାଇଲ୍';

  @override
  String get refreshFromMangaBaka => 'MangaBakaରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

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
  String get hideNsfwDesc =>
      'ବୟସ୍କ ଶୀର୍ଷକକୁ ଫିଡ୍ ଓ ସର୍ଚ୍ଚରୁ ଦୂରରେ ରଖନ୍ତୁ, ଓ ତୁମ ନିଜ ବୟସ୍କ ଏଣ୍ଟ୍ରିକୁ ଲୁକ୍କାୟିତ ମିଡିଆ ଅଧୀନରେ ଦେଖାନ୍ତୁ।';

  @override
  String get kitsuAccountOptions => 'Kitsu ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka ଆକାଉଣ୍ଟ ବିକଳ୍ପ';

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
  String get refreshFromSimkl => 'Simklରୁ ରିଫ୍ରେସ୍ କରନ୍ତୁ';

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
  String get titleCopied => 'ଶୀର୍ଷକ କପି ହେଲା';

  @override
  String get linkCopied => 'ଲିଙ୍କ୍ କପି ହେଲା';

  @override
  String get watchTrailer => 'ଟ୍ରେଲର୍ ଦେଖନ୍ତୁ';

  @override
  String get copyTitle => 'ଶୀର୍ଷକ କପି କରନ୍ତୁ';

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
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

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
  String get sortAz => 'A–Z';

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
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
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
  String get syncOnlyForward => 'ଅଧିକ ପ୍ରଗତି ରଖନ୍ତୁ';

  @override
  String get syncOnlyForwardDesc => 'ଆଗରେ ଥିବା ସର୍ଭିସ୍‌ର ପ୍ରଗତି କମାନ୍ତୁ ନାହିଁ';

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
    return '1–$total';
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
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

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
  String get playerStreams => 'ଷ୍ଟ୍ରିମ୍';

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
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

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
  String get readerModeAuto => 'Auto (by series type)';

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
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

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
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
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
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

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
      'କିଉ ଓ ଏହି ଡିଭାଇସ୍‌ରେ ସେଭ୍ ହୋଇଥିବା ସବୁ ଦେଖନ୍ତୁ';

  @override
  String get downloadTitle => 'ଡାଉନଲୋଡ୍';

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
