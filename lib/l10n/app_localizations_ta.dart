// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Dartotsu';

  @override
  String get appTagline => 'Anime & Manga டிராக் பண்ண\nபுது பெஸ்ட் ஆப்';

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
  String get loadMore => 'இன்னும் லோட் பண்ணு';

  @override
  String get login => 'லாகின்';

  @override
  String get continueAsGuest => 'கெஸ்டா தொடரு';

  @override
  String get getStarted => 'ஆரம்பிக்கலாம்';

  @override
  String get loginWithToken => 'டோக்கன் வச்சு லாகின் பண்ணு';

  @override
  String get pasteTokenHint => 'உன் அக்சஸ் டோக்கனை பேஸ்ட் பண்ணு';

  @override
  String loginTo(String service) {
    return '$service-ல லாகின் பண்ணு';
  }

  @override
  String get settings => 'செட்டிங்ஸ்';

  @override
  String get account => 'அக்கவுண்ட்';

  @override
  String get about => 'பற்றி';

  @override
  String get language => 'மொழி';

  @override
  String get animationSpeed => 'அனிமேஷன்ஸ்';

  @override
  String get animationSpeedDesc =>
      'ஆப் முழுக்க டிரான்சிஷன் & என்ட்ரி எஃபெக்ட்ஸ் ஸ்பீட்';

  @override
  String get animationSpeedOff => 'ஆஃப்';

  @override
  String extension(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'எக்ஸ்டென்ஷன்கள்',
      one: 'எக்ஸ்டென்ஷன்',
    );
    return '$_temp0';
  }

  @override
  String get unknownSource => 'தெரியாத சோர்ஸ்';

  @override
  String get install => 'இன்ஸ்டால்';

  @override
  String get update => 'அப்டேட்';

  @override
  String get uninstall => 'அன்இன்ஸ்டால்';

  @override
  String get updateInstallCancelled =>
      'இன்ஸ்டால் ரத்தானது. நிறுவப்பட்ட ஆப்புடன் முரண்படுவதாக Android சொன்னால், கையெழுத்து (signature) வேறு: முதலில் தற்போதைய வெர்ஷனை அன்இன்ஸ்டால் செய்துவிட்டு அப்டேட்டை இன்ஸ்டால் பண்ணுங்க';

  @override
  String updateInstallFailed(String error) {
    return 'அப்டேட் ஆகலை: $error';
  }

  @override
  String get appLock => 'ஆப் லாக்';

  @override
  String get appLockDesc =>
      'ஆப்பைத் திறக்கும்போது அல்லது கொஞ்ச நேரம் கழித்து திரும்பி வரும்போது பாஸ்கோடு கேட்கும்';

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
  String get appLockUnlock => 'பாஸ்கோடை உள்ளிடுங்க';

  @override
  String get appLockWrong => 'பாஸ்கோடு தவறு';

  @override
  String appLockWait(String seconds) {
    return 'நிறைய முறை முயற்சி பண்ணிட்டீங்க, $seconds வினாடி காத்திருங்க';
  }

  @override
  String get appLockNew => 'ஒரு பாஸ்கோடை தேர்ந்தெடுங்க';

  @override
  String get appLockNewHint => '4 முதல் 8 இலக்கங்கள்';

  @override
  String get appLockConfirm => 'இன்னொரு முறை உள்ளிடுங்க';

  @override
  String get appLockMismatch => 'பாஸ்கோடுகள் பொருந்தலை';

  @override
  String get appLockOn => 'பாஸ்கோடு செட் ஆச்சு';

  @override
  String get appLockRemoveTitle => 'லாக்கை அணைக்க பாஸ்கோடை உள்ளிடுங்க';

  @override
  String get installFailed => 'இன்ஸ்டால் ஆகல';

  @override
  String get updateFailed => 'அப்டேட் ஆகல';

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
  String get noSourceSettings => 'இந்த சோர்ஸ்க்கு செட்டிங்ஸ் எதுவும் இல்ல';

  @override
  String get addPluginRepository => 'பிளகின் ரெப்போ சேர்';

  @override
  String get pluginIndexUrlHint => 'பிளகின் இன்டெக்ஸ் URL';

  @override
  String get addRepository => 'ரெப்போ சேர்';

  @override
  String get pluginRepoUpdated => 'பிளகின் ரெப்போ அப்டேட் ஆயிடுச்சு';

  @override
  String get pluginRepoUpdateFailed => 'பிளகின் ரெப்போவை ரெஃப்ரெஷ் பண்ண முடியல';

  @override
  String get ok => 'சரி';

  @override
  String get cancel => 'கேன்சல்';

  @override
  String get yes => 'ஆமா';

  @override
  String get no => 'இல்ல';

  @override
  String get save => 'சேமி';

  @override
  String get reset => 'ரீசெட்';

  @override
  String get clear => 'கிளியர்';

  @override
  String get test => 'டெஸ்ட்';

  @override
  String get testing => 'டெஸ்ட் பண்றேன்…';

  @override
  String get resolving => 'ரெசால்வ் பண்றேன்…';

  @override
  String get none => 'எதுவும் இல்ல';

  @override
  String get selectMediaService => 'மீடியா சர்வீஸை தேர்ந்தெடு';

  @override
  String get pickColor => 'ஒரு கலரை எடு';

  @override
  String get colorPickerCustom => 'கஸ்டம்';

  @override
  String get colorPickerTransparent => 'டிரான்ஸ்பரன்ட்';

  @override
  String get ltr => 'இடமிருந்து வலம்';

  @override
  String get searchSettings => 'செட்டிங்ஸ் தேடு';

  @override
  String nothingMatches(String query) {
    return '\"$query\"-க்கு எதுவும் மேட்ச் ஆகல';
  }

  @override
  String searchCategory(String category) {
    return '$category தேடு';
  }

  @override
  String get settingsAppearance => 'தோற்றம்';

  @override
  String get settingsAppearanceDesc => 'தீம், கலர்ஸ், கிளாஸ் மோட்';

  @override
  String get settingsGeneral => 'பொதுவானது';

  @override
  String get settingsGeneralDesc => 'மொழி & பிகேவியர்';

  @override
  String get settingsNetwork => 'நெட்வொர்க்';

  @override
  String get settingsNetworkDesc =>
      'யூசர் ஏஜென்ட், சான்றிதழ்கள், DNS மற்றும் ப்ராக்ஸி';

  @override
  String get settingsAccountDesc => 'டிராக்கிங் சர்வீஸ் & சைன்-இன்';

  @override
  String get settingsUpdates => 'அப்டேட்ஸ்';

  @override
  String get amoledBlack => 'AMOLED பிளாக்';

  @override
  String get amoledBlackDesc => 'டார்க் மோடுல ப்யூர் பிளாக் சர்ஃபேஸ்';

  @override
  String get glassMode => 'கிளாஸ் மோட்';

  @override
  String get glassModeDesc => 'உன் லைப்ரரி ஆர்ட் மேல ஃப்ராஸ்டட் சர்ஃபேஸ்';

  @override
  String get shelfFrame => 'செக்ஷன்ஸ் சுத்தி ஃபிரேம்';

  @override
  String get shelfFrameDesc =>
      'ஒவ்வொரு ஷெல்ஃப் பின்னாலயும் கார்டு காட்டு, இல்லன்னா வரிசைகளை நேரா பேஜ்ல இருக்க விடு';

  @override
  String get settingsExtensionsDesc =>
      'சோர்ஸ் மேனேஜர்ஸ், ரெப்போஸ் & எக்ஸ்டென்ஷன் ஆப்ஷன்ஸ்';

  @override
  String get settingsAddons => 'ஆட்-ஆன்ஸ்';

  @override
  String get customPath => 'கஸ்டம் ஸ்டோரேஜ் பாத்';

  @override
  String get customPathDesc =>
      'ஆப் டேட்டா எங்க சேவ் ஆகணும். ரீசெட் பண்ண லாங் பிரஸ் பண்ணு';

  @override
  String get selectDirectory => 'டைரக்டரியை செலக்ட் பண்ணு';

  @override
  String get differentCacheManager => 'ஆல்டர்னேட்டிவ் இமேஜ் கேஷ்';

  @override
  String get differentCacheManagerDesc =>
      'இமேஜ்களுக்கு வேற கேஷ் மேனேஜர் யூஸ் பண்ணு';

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
  String get backupAndRestore => 'பேக்கப் & ரெஸ்டோர்';

  @override
  String get backupAndRestoreDesc =>
      'உன் பிரிஃபரன்ஸ்ஸை சேவ் பண்ணு இல்லன்னா லோட் பண்ணு';

  @override
  String get backup => 'பேக்கப்';

  @override
  String get restore => 'ரெஸ்டோர்';

  @override
  String get loadExtensionsIcon => 'எக்ஸ்டென்ஷன் ஐகான்ஸ் லோட் பண்ணு';

  @override
  String get autoUpdateRuntimes => 'Update extension runtimes automatically';

  @override
  String get autoUpdateRuntimesDesc =>
      'Download new Aniyomi, CloudStream and other runtime versions in the background. Off, an update icon appears next to the manager instead.';

  @override
  String get loadExtensionsIconDesc =>
      'எக்ஸ்டென்ஷன் லிஸ்ட்ல சோர்ஸ் ஐகான்ஸ் காட்டு';

  @override
  String get sectionStorage => 'ஸ்டோரேஜ்';

  @override
  String get sectionManagers => 'மேனேஜர்ஸ்';

  @override
  String get sectionOptions => 'ஆப்ஷன்ஸ்';

  @override
  String get backupTabBackup => 'பேக்கப் எடு';

  @override
  String get backupTabRestore => 'ரெஸ்டோர்';

  @override
  String backupSummary(Object keys, Object categories) {
    return '$categories கேட்டகிரியில $keys செட்டிங்ஸ்';
  }

  @override
  String backupLastBackup(Object time) {
    return 'லாஸ்ட் பேக்கப் $time';
  }

  @override
  String get backupNever => 'இன்னும் பேக்கப் இல்ல';

  @override
  String get backupSelectAll => 'எல்லாத்தையும் தேர்ந்தெடு';

  @override
  String get backupClearAll => 'கிளியர்';

  @override
  String backupKeys(Object count) {
    return '$count செட்டிங்ஸ்';
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
  String get backupPassword => 'பாஸ்வேர்டு (ஆப்ஷனல்)';

  @override
  String get backupPasswordHint => 'டீஃபால்ட் யூஸ் பண்ண காலியா விடு';

  @override
  String get backupSensitive =>
      'லாகின் டோக்கன்ஸ் இதுல இருக்கு. இந்த ஃபைலை பிரைவேட்டா வச்சுக்கோ';

  @override
  String get backupCreate => 'பேக்கப் உருவாக்கு';

  @override
  String backupSaved(Object name) {
    return 'பேக்கப் $name-ல சேவ் ஆயிடுச்சு';
  }

  @override
  String backupFailed(Object error) {
    return 'பேக்கப் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String get backupPickFile => 'ஒரு பேக்கப் ஃபைலை தேர்ந்தெடு';

  @override
  String get backupPickFileDesc => 'Dartotsu உருவாக்கின .json ஃபைலை எடு';

  @override
  String get backupChooseAnother => 'வேற ஃபைலை தேர்ந்தெடு';

  @override
  String get backupCreatedAt => 'உருவாக்கியது';

  @override
  String get backupAppVersion => 'ஆப் வெர்ஷன்';

  @override
  String get backupDevice => 'டிவைஸ்';

  @override
  String get backupAccounts => 'அக்கவுண்ட்ஸ்';

  @override
  String get backupSize => 'சைஸ்';

  @override
  String get backupEncrypted => 'பாஸ்வேர்டு பாதுகாப்பு இருக்கு';

  @override
  String get backupUnlock => 'அன்லாக்';

  @override
  String get backupWrongPassword =>
      'இந்த ஃபைலை படிக்க முடியல. பாஸ்வேர்டை செக் பண்ணு';

  @override
  String get backupRestoreSelected => 'செலக்ட் பண்ணதை ரெஸ்டோர் பண்ணு';

  @override
  String backupRestoreConfirm(Object count) {
    return '$count செட்டிங்ஸை ரெஸ்டோர் பண்ணவா? இந்த கேட்டகிரிகளில் இருக்க வேல்யூஸ் ஓவர்ரைட் ஆகும்.';
  }

  @override
  String get backupRestored =>
      'ரெஸ்டோர் ஆயிடுச்சு. எல்லாம் அப்ளை ஆக ஆப்பை ரீஸ்டார்ட் பண்ணு';

  @override
  String backupRestoreFailed(Object error) {
    return 'ரெஸ்டோர் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String get backupSelectOne => 'குறைஞ்சது ஒரு கேட்டகிரியாவது செலக்ட் பண்ணு';

  @override
  String get backupCatTheme => 'தோற்றம்';

  @override
  String get backupCatThemeDesc =>
      'தீம், கலர்ஸ், கிளாஸ், ஃபாண்ட்ஸ் & கார்டு ஸ்டைல்';

  @override
  String get backupCatCommon => 'பொதுவானது';

  @override
  String get backupCatCommonDesc =>
      'மொழி, ஸ்டோரேஜ், நெட்வொர்க் & எக்ஸ்டென்ஷன் ஆப்ஷன்ஸ்';

  @override
  String get backupCatPlayer => 'பிளேயர்';

  @override
  String get backupCatPlayerDesc => 'பிளேயர் பிரிஃபரன்ஸ்';

  @override
  String get backupCatReader => 'ரீடர்';

  @override
  String get backupCatReaderDesc => 'ரீடர் பிரிஃபரன்ஸ்';

  @override
  String get backupCatProtected => 'அக்கவுண்ட்ஸ்';

  @override
  String get backupCatProtectedDesc => 'லாகின் டோக்கன்ஸ் & சைன்-இன் டேட்டா';

  @override
  String get backupCatOther => 'சர்வீசஸ் & ஃபீட்ஸ்';

  @override
  String get backupCatOtherDesc =>
      'ஃபீட் லேஅவுட்ஸ், லிஸ்ட்ஸ் & சர்வீஸ் ஆப்ஷன்ஸ்';

  @override
  String get logFile => 'லாக் ஃபைல்';

  @override
  String get logFileDesc =>
      'ஆப் லாக்கை ஷேர் பண்ணு, இல்லன்னா Linux-ல அதோட பாத்தை காப்பி பண்ணு';

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
  String get logFileCopied => 'லாக் பாத் காப்பி ஆயிடுச்சு';

  @override
  String get donateSheetTitle => 'Dartotsu பிடிச்சிருக்கா?';

  @override
  String get donateSheetMessage =>
      'Dartotsu-வை ஒருத்தர் மட்டும் தான் உருவாக்கி பராமரிக்கிறார். உனக்கு யூஸ்ஃபுல்லா இருந்தா, டெவலப்மெண்ட்டை சப்போர்ட் பண்ணு.';

  @override
  String get donateLater => 'அப்புறமா பாக்கலாம்';

  @override
  String get glassBackground => 'கிளாஸ் பேக்ரவுண்ட்';

  @override
  String get glassBackgroundDesc =>
      'நீ இமேஜ் லிங்க் செட் பண்ணலன்னா உன் ப்ரொஃபைல் பேனர்';

  @override
  String get glassBackgroundHint => 'இமேஜ் லிங்க் (உன் பேனருக்கு காலியா விடு)';

  @override
  String get followCover => 'கவரை ஃபாலோ பண்ணு';

  @override
  String get followCoverDesc =>
      'கலர்ஸ் பேக்ரவுண்டை ஃபாலோ பண்ணும், டிடெயில் பேஜ்ல கவரை';

  @override
  String get followCoverMediaOnly => 'Only for media';

  @override
  String get followCoverMediaOnlyDesc =>
      'Only follow the cover on media pages, everywhere else keeps the normal colors';

  @override
  String get cardStyle => 'கார்டு ஸ்டைல்';

  @override
  String get cardStyleDesc =>
      'டைட்டில் பிளேஸ்மெண்ட், சைஸ், புரோகிரஸ் & பேட்ஜஸ்';

  @override
  String get customFont => 'ஃபாண்ட்';

  @override
  String get customFontDesc =>
      'டீஃபால்ட், உன் டிவைஸ்ல இருந்து ஒரு ஃபைல், இல்லன்னா Google Fonts';

  @override
  String get customFontError => 'அந்த ஃபாண்ட் ஃபைலை லோட் பண்ண முடியல';

  @override
  String get googleFontError => 'அந்த ஃபாண்டை டவுன்லோட் பண்ண முடியல';

  @override
  String get yourFonts => 'உன் ஃபாண்ட்ஸ்';

  @override
  String get addFontFile => 'ஃபாண்ட் ஃபைல் சேர்…';

  @override
  String get browseGoogleFonts => 'Google Fonts-ல பிரவுஸ் பண்ணு…';

  @override
  String get searchGoogleFonts => 'Google Fonts தேடு';

  @override
  String get defaultFont => 'டீஃபால்ட்';

  @override
  String get materialYou => 'Material You';

  @override
  String get materialYouDesc => 'சிஸ்டத்துல இருந்து டைனமிக் கலர்';

  @override
  String get jsonTheme => 'கஸ்டம் தீம் ஃபைல்';

  @override
  String get jsonThemeDesc =>
      '~/.config/dartotsu/theme.json-ல இருந்து லைவ் கலர்ஸ் (கஸ்டம் ஸ்கிரிப்ட், இல்லன்னா உன் சொந்த எடிட்ஸ்)';

  @override
  String get themeMode => 'தீம் மோட்';

  @override
  String get mode => 'மோட்';

  @override
  String get trackingService => 'டிராக்கிங் சர்வீஸ்';

  @override
  String get signOut => 'சைன் அவுட்';

  @override
  String get signIn => 'சைன் இன்';

  @override
  String get notSignedIn => 'சைன் இன் பண்ணல';

  @override
  String signOutOf(String service) {
    return '$service-ல இருந்து சைன் அவுட் ஆகணுமா?';
  }

  @override
  String get checkForUpdates => 'அப்டேட் இருக்கான்னு செக் பண்ணு';

  @override
  String get checkForUpdatesDesc => 'புது GitHub ரிலீஸ் வந்தா நோட்டிஃபை பண்ணு';

  @override
  String get updateChannel => 'அப்டேட் சேனல்';

  @override
  String get channel => 'சேனல்';

  @override
  String get stable => 'ஸ்டேபிள்';

  @override
  String get preRelease => 'ப்ரீ-ரிலீஸ்';

  @override
  String get alpha => 'ஆல்ஃபா';

  @override
  String get checkNow => 'இப்போ செக் பண்ணு';

  @override
  String get userAgent => 'User-Agent';

  @override
  String get settingDefault => 'டீஃபால்ட்';

  @override
  String currentlyUsing(String value) {
    return 'இப்போ: $value';
  }

  @override
  String get dnsOverHttps => 'DNS-over-HTTPS';

  @override
  String get dnsDefault => 'டீஃபால்ட் (Cloudflare)';

  @override
  String get proxy => 'ப்ராக்ஸி';

  @override
  String get proxyProtocol => 'டைப்';

  @override
  String get proxyHost => 'ஹோஸ்ட்';

  @override
  String get proxyPort => 'போர்ட்';

  @override
  String get proxyUsername => 'யூசர்நேம்';

  @override
  String get proxyPassword => 'பாஸ்வேர்டு';

  @override
  String get optional => 'ஆப்ஷனல்';

  @override
  String get clearCookies => 'குக்கீஸ் கிளியர் பண்ணு';

  @override
  String get clearCookiesDesc => 'சேவ் பண்ண எல்லா குக்கீயையும் நீக்கு';

  @override
  String notImplementedArea(String area) {
    return '$area — சீக்கிரம் வருது';
  }

  @override
  String notImplementedService(String service) {
    return '$service இதை இன்னும் சப்போர்ட் பண்ணல.';
  }

  @override
  String get couldNotLoadResults => 'ரிசல்ட்ஸ் லோட் பண்ண முடியல';

  @override
  String get updateCheckFailed => 'அப்டேட் செக் பண்ண முடியல';

  @override
  String get highRefreshRate => 'ஹை ரெஃப்ரெஷ் ரேட்';

  @override
  String get highRefreshRateDesc =>
      'உன் ஸ்கிரீன் சப்போர்ட் பண்ற ஹைஸ்ட் ரெஃப்ரெஷ் ரேட்டை யூஸ் பண்ணு';

  @override
  String get imageSave => 'இமேஜை சேவ் பண்ணு';

  @override
  String imageSavedTo(String path) {
    return '$path-ல சேவ் ஆயிடுச்சு';
  }

  @override
  String get imageActionFailed => 'இமேஜை டவுன்லோட் பண்ண முடியல';

  @override
  String get imageTitleCover => 'கவர்';

  @override
  String get imageTitlePage => 'Page';

  @override
  String get imageTitleBanner => 'பேனர்';

  @override
  String get imageTitleAvatar => 'ப்ரொஃபைல் பிக்சர்';

  @override
  String get verifyTls => 'சர்டிபிகேட்ஸ் வெரிஃபை பண்ணு';

  @override
  String get verifyTlsDesc =>
      'இன்வேலிட் HTTPS சர்டிபிகேட் இருக்க சர்வர்களை ரிஜெக்ட் பண்ணு. செல்ஃப்-சைன்டு யூஸ் பண்ற சோர்ஸ்க்கு மட்டும் ஆஃப் பண்ணு';

  @override
  String get clearCookiesConfirm =>
      'சேவ் பண்ண எல்லா குக்கீஸையும் நீக்கவா? இதனால சில சோர்ஸ்ல இருந்து சைன் அவுட் ஆகலாம்.';

  @override
  String get version => 'வெர்ஷன்';

  @override
  String get gitHub => 'GitHub';

  @override
  String get gitHubDesc => 'சோர்ஸ், இஷ்யூஸ் & ரிலீஸஸ்';

  @override
  String get discordDesc => 'கம்யூனிட்டி & சப்போர்ட்';

  @override
  String get supportDeveloper => 'Support the developer';

  @override
  String get buyMeCoffee => 'Buy me a coffee';

  @override
  String get upiId => 'UPI ID';

  @override
  String get upiCopied => 'UPI ID copied';

  @override
  String get donateDesc => 'டெவலப்மெண்ட்டை சப்போர்ட் பண்ணு';

  @override
  String get contributors => 'கான்ட்ரிபியூட்டர்ஸ்';

  @override
  String get contributorsDesc => 'Dartotsu-வை உருவாக்கினவங்க';

  @override
  String get contributorsLoadFailed => 'கான்ட்ரிபியூட்டர்ஸை லோட் பண்ண முடியல';

  @override
  String get forks => 'Forks';

  @override
  String get forksDesc => 'Dartotsu மேல உருவாக்கின ப்ராஜெக்ட்ஸ்';

  @override
  String get forksEmpty => 'ஃபோர்க்ஸ் எதுவும் கிடைக்கல';

  @override
  String get sectionColors => 'கலர்ஸ்';

  @override
  String get sectionDisplay => 'டிஸ்ப்ளே';

  @override
  String get sectionStyle => 'ஸ்டைல்';

  @override
  String get sectionCommunity => 'கம்யூனிட்டி';

  @override
  String get sectionAppInfo => 'ஆப் இன்ஃபோ';

  @override
  String get sectionRequests => 'ரெக்வெஸ்ட்ஸ்';

  @override
  String get sectionDnsProxy => 'DNS & ப்ராக்ஸி';

  @override
  String get onboardingBack => 'பேக்';

  @override
  String get onboardingNext => 'நெக்ஸ்ட்';

  @override
  String get onboardingSkip => 'ஸ்கிப்';

  @override
  String get onboardingPaletteTitle => 'உன்னோடதா மாத்திக்கோ';

  @override
  String get onboardingPaletteBody =>
      'ஒரு பேலட்டை எடு. கார்டு முதல் பிளேயர் வரை எல்லா ஆக்சென்ட்டும் அதையே ஃபாலோ பண்ணும்.';

  @override
  String get themeModeAuto => 'ஆட்டோ';

  @override
  String get themeModeLight => 'லைட்';

  @override
  String get themeModeDark => 'டார்க்';

  @override
  String get onboardingSyncTitle => 'உன் லைப்ரரியை சிங்க் பண்ணு';

  @override
  String get onboardingSyncBody =>
      'AniList-ல சைன் இன் பண்ணா உன் லிஸ்ட்ஸ், புரோகிரஸ் & ஸ்கோர்ஸ் எல்லாம் வரும். இல்லன்னா ஸ்கிப் பண்ணி கெஸ்டா பிரவுஸ் பண்ணு.';

  @override
  String get onboardingOpenLinks => 'AniList & ரெப்போ லிங்க்ஸை Dartotsu-ல திற';

  @override
  String get onboardingPermsTitle => 'பெர்மிஷன்ஸ்';

  @override
  String get onboardingPermsBody =>
      'டவுன்லோட்ஸ், அப்டேட்ஸ் & அலர்ட்ஸ் தடங்கல் இல்லாம வேலை செய்ய இப்பவே இதுங்கள அலவ் பண்ணு. அப்புறமா சிஸ்டம் செட்டிங்ஸ்ல மாத்திக்கலாம்.';

  @override
  String get permNotifications => 'நோட்டிபிகேஷன்ஸ்';

  @override
  String get permNotificationsDesc =>
      'டவுன்லோட் புரோகிரஸ், புது எபிசோட்ஸ் & ரிப்ளைஸ்';

  @override
  String get permStorage => 'ஆல் ஃபைல்ஸ் அக்சஸ்';

  @override
  String get permStorageDesc =>
      'டவுன்லோட்ஸை பப்ளிக் Dartotsu ஃபோல்டர்ல சேவ் பண்ணு';

  @override
  String get permInstall => 'அப்டேட்ஸ் இன்ஸ்டால் பண்ணு';

  @override
  String get permInstallDesc =>
      'Dartotsu தன்னோட அப்டேட்ஸை தானே இன்ஸ்டால் பண்ணிக்க விடு';

  @override
  String get permBattery => 'அன்ரெஸ்ட்ரிக்டட் பேட்டரி';

  @override
  String get permBatteryDesc => 'லாங் டவுன்லோட்ஸ் பேக்ரவுண்ட்ல ஓட விடு';

  @override
  String get permGrant => 'அலவ்';

  @override
  String get linkOpenInApp => 'லிங்க்ஸை Dartotsu-ல திற';

  @override
  String get linkOpenInAppDesc => 'AniList & ரெப்போ லிங்க்ஸ் ஆப்பை திறக்க விடு';

  @override
  String get reviewsTitle => 'ரிவ்யூஸ்';

  @override
  String get reviewsEmpty => 'இன்னும் ரிவ்யூ இல்ல';

  @override
  String get reviewsFailed => 'ரிவ்யூஸை லோட் பண்ண முடியல';

  @override
  String get reviewHelpfulQuestion =>
      'இந்த ரிவ்யூ உனக்கு யூஸ்ஃபுல்லா இருந்துச்சா?';

  @override
  String get reviewVoteFailed => 'உன் வோட்டை சேவ் பண்ண முடியல';

  @override
  String reviewHelpful(int n, int total) {
    return '$total-ல $n பேர் இது ஹெல்ப்ஃபுல்னு சொன்னாங்க';
  }

  @override
  String get calendarTitle => 'ஏரிங் ஷெட்யூல்';

  @override
  String get calendarToday => 'இன்னைக்கு';

  @override
  String get calendarEmpty => 'இன்னைக்கு எதுவும் ஏர் ஆகல';

  @override
  String get calendarFailed => 'ஷெட்யூலை லோட் பண்ண முடியல';

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
    return 'எபிசோட் $n';
  }

  @override
  String get shareAnalytics => 'அனானிமஸ் யூசேஜ் டேட்டாவை ஷேர் பண்ணு';

  @override
  String get shareAnalyticsDesc =>
      'அனானிமஸ் யூசர் கவுண்ட் & கிராஷ் ரிப்போர்ட்ஸ். அக்கவுண்ட் அல்லது பெர்சனல் டேட்டா இல்ல';

  @override
  String get linkOpenAnilist => 'AniList லிங்க்ஸை Dartotsu-ல திற';

  @override
  String get linkOpenAnilistDesc =>
      'anilist.co லிங்க்ஸ் ஆப்பை திறக்க லிங்க் ஹேண்ட்லிங் ஆன் பண்ணு';

  @override
  String get linkSettingsFailed => 'சிஸ்டம் செட்டிங்ஸை திறக்க முடியல';

  @override
  String get discordRichPresence => 'Rich Presence';

  @override
  String get discordRichPresenceTokenDesc =>
      'நீ என்ன பண்ணிட்டு இருக்கன்னு உன் Discord ப்ரொஃபைல்ல காட்டு. உன் Discord டோக்கன் வேணும்.';

  @override
  String get discordRichPresenceDesktopDesc =>
      'நீ என்ன பண்ணிட்டு இருக்கன்னு உன் Discord ப்ரொஃபைல்ல காட்டு. Discord டெஸ்க்டாப் ஆப் ஓடிட்டு இருக்கணும்.';

  @override
  String get discordBrowsing => 'பிரவுசிங் ஆக்டிவிட்டியை காட்டு';

  @override
  String get discordBrowsingDesc =>
      'நீ பாக்குற/படிக்கிறது மட்டும் இல்லாம, நீ பாக்கற டேப், பேஜ் அல்லது ப்ரொஃபைலையும் காட்டு.';

  @override
  String get discordLookHeader => 'பிரசென்ஸ் லுக்';

  @override
  String get discordActivityType => 'ஆக்டிவிட்டி டைப்';

  @override
  String get discordActivityTypeDesc =>
      'Discord அதை எப்படி எழுதும்னு: \"Watching …\" அல்லது \"Playing …\". ஆட்டோ அனிமேக்கு Watching, மத்ததுக்கு Playing யூஸ் பண்ணும்.';

  @override
  String get discordWatching => 'Watching';

  @override
  String get discordPlaying => 'Playing';

  @override
  String get discordCovers => 'கவர்ஸ் காட்டு';

  @override
  String get discordCoversDesc => 'கார்டுல கவர் ஆர்ட் & Dartotsu ஐகான்.';

  @override
  String get discordTimer => 'டைமர் காட்டு';

  @override
  String get discordTimerDesc =>
      'டைட்டிலுக்கு கீழ கடந்த அல்லது மீதி இருக்க நேரம்.';

  @override
  String get discordButtons => 'பட்டன்ஸ் காட்டு';

  @override
  String get discordButtonsDesc =>
      '\"View anime / manga\" & \"Open Dartotsu\" பட்டன்ஸ்.';

  @override
  String get discordHideTitles => 'டைட்டில்ஸை மறை';

  @override
  String get discordHideTitlesDesc =>
      'அனிமே & மங்கா பேரை (அதோட கவர் & லிங்க் உட்பட) \"Something private\"-னு மாத்து.';

  @override
  String get discordConnectionHeader => 'கனெக்ஷன்';

  @override
  String get listSearchHint => 'இந்த லிஸ்ட்ல தேடு';

  @override
  String get listSort => 'சார்ட்';

  @override
  String get listFilter => 'ஃபில்டர்';

  @override
  String get listRandom => 'ரேண்டம் டைட்டில்';

  @override
  String get listReverse => 'ஆர்டரை ரிவர்ஸ் பண்ணு';

  @override
  String get listSortDefault => 'லிஸ்ட் ஆர்டர்';

  @override
  String get listSortScore => 'உன் ஸ்கோர்';

  @override
  String get listSortTitle => 'டைட்டில்';

  @override
  String get listSortUpdated => 'லாஸ்ட் அப்டேட்டட்';

  @override
  String get listSortProgress => 'புரோகிரஸ்';

  @override
  String get listSortReleased => 'ரிலீஸ் டேட்';

  @override
  String get listSortAverage => 'ஆவரேஜ் ஸ்கோர்';

  @override
  String get listFilterFormat => 'ஃபார்மேட்';

  @override
  String get listFilterStatus => 'ஸ்டேட்டஸ்';

  @override
  String get listFilterGenres => 'ஜானர்ஸ்';

  @override
  String get listFilterClear => 'ஃபில்டர்ஸை கிளியர் பண்ணு';

  @override
  String get listNoMatches => 'இந்த லிஸ்ட்ல எதுவும் மேட்ச் ஆகல';

  @override
  String get discordLogin => 'Discord-ல லாகின் பண்ணு';

  @override
  String get discordToken => 'Discord டோக்கன்';

  @override
  String get discordTokenSaved =>
      'சேவ் ஆயிடுச்சு. மாத்த டேப் பண்ணு, நீக்க லாங் பிரஸ் பண்ணு.';

  @override
  String get discordTokenNotSet => 'செட் பண்ணல. சேர்க்க டேப் பண்ணு.';

  @override
  String get discordTokenSavedSnack => 'Discord டோக்கன் சேவ் ஆயிடுச்சு';

  @override
  String get discordTokenRemovedSnack => 'Discord டோக்கன் நீக்கப்பட்டுச்சு';

  @override
  String get discordRichPresenceRow => 'Discord Rich Presence';

  @override
  String get discordRichPresenceRowOn =>
      'ஆன் · எப்படி தெரியணும்னு மாத்த டேப் பண்ணு';

  @override
  String get discordRichPresenceRowOff =>
      'நீ என்ன பண்ணிட்டு இருக்கன்னு உன் Discord ப்ரொஃபைல்ல காட்டு';

  @override
  String get loginCancelled => 'லாகின் கேன்சல் ஆயிடுச்சு';

  @override
  String get invalidToken => 'தப்பான டோக்கன்';

  @override
  String loginFailed(String error) {
    return 'லாகின் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String get malLoginFailed => 'MyAnimeList லாகின் ஃபெயில் ஆயிடுச்சு';

  @override
  String get kitsuLoginFailed =>
      'Kitsu லாகின் ஃபெயில் ஆயிடுச்சு. உன் இமெயில் & பாஸ்வேர்டை செக் பண்ணு.';

  @override
  String get kitsuLoginTitle => 'Kitsu-ல சைன் இன் பண்ணு';

  @override
  String get emailOrUsername => 'இமெயில் அல்லது யூசர்நேம்';

  @override
  String get password => 'பாஸ்வேர்டு';

  @override
  String get kitsuProfile => 'Kitsu ப்ரொஃபைல்';

  @override
  String get mangaBakaLoginFailed => 'MangaBaka லாகின் ஃபெயில் ஆயிடுச்சு';

  @override
  String get mangaBakaProfile => 'MangaBaka ப்ரொஃபைல்';

  @override
  String get refreshFromMangaBaka => 'MangaBaka-ல இருந்து ரெஃப்ரெஷ் பண்ணு';

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
  String get artistsLabel => 'ஆர்டிஸ்ட்ஸ்';

  @override
  String get authorsLabel => 'ஆதர்ஸ்';

  @override
  String get publishersLabel => 'பப்ளிஷர்ஸ்';

  @override
  String get licensedLabel => 'லைசென்ஸ்டு';

  @override
  String get contentRatingLabel => 'கன்டென்ட் ரேட்டிங்';

  @override
  String get yesLabel => 'ஆமா';

  @override
  String get noLabel => 'இல்ல';

  @override
  String get ratingSteps => 'ரேட்டிங் ஸ்டெப்ஸ்';

  @override
  String get hideNsfw => 'NSFW மறை';

  @override
  String get hideNsfwDesc =>
      'அடல்ட் டைட்டில்ஸை ஃபீட் & சர்ச்ல இருந்து விலக்கி, உன் சொந்த அடல்ட் என்ட்ரிகளை Hidden Media-ல லிஸ்ட் பண்ணு.';

  @override
  String get kitsuAccountOptions => 'Kitsu அக்கவுண்ட் ஆப்ஷன்ஸ்';

  @override
  String get mangaBakaAccountOptions => 'MangaBaka அக்கவுண்ட் விருப்பங்கள்';

  @override
  String get couldNotUpdateKitsuSettings =>
      'உன் Kitsu செட்டிங்ஸை அப்டேட் பண்ண முடியல';

  @override
  String get titleCanonical => 'கேனானிக்கல்';

  @override
  String get titleRomanized => 'ரோமனைஸ்டு';

  @override
  String get titleLocalized => 'லோக்கலைஸ்டு';

  @override
  String get ratingSystem => 'ரேட்டிங் சிஸ்டம்';

  @override
  String get ratingSimple => 'சிம்பிள் (3 ஃபேசஸ்)';

  @override
  String get ratingRegular => 'ரெகுலர் (5 ஸ்டார்ஸ்)';

  @override
  String get ratingAdvanced => 'அட்வான்ஸ்டு (10 பாயிண்ட்ஸ்)';

  @override
  String get contentFilter => 'கன்டென்ட் ஃபில்டர்';

  @override
  String get contentSfw => 'சேஃப் ஃபார் வொர்க் மட்டும்';

  @override
  String get contentSometimes => 'சர்ச்ல மெச்சூர் கன்டென்ட்';

  @override
  String get contentEverywhere => 'எல்லா இடத்துலயும் மெச்சூர் கன்டென்ட்';

  @override
  String get shareToGlobal => 'குளோபல் ஃபீடுக்கு ஷேர் பண்ணு';

  @override
  String get shareToGlobalDesc =>
      'உன் ஆக்டிவிட்டி Kitsu-வோட குளோபல் ஃபீடுல தெரியட்டும்.';

  @override
  String get memberSince => 'மெம்பர் ஆன தேதி';

  @override
  String get location => 'லொகேஷன்';

  @override
  String get accountType => 'அக்கவுண்ட் டைப்';

  @override
  String get accountSupporter => 'சப்போர்ட்டர்';

  @override
  String get accountFree => 'ஃப்ரீ';

  @override
  String get accountDetails => 'அக்கவுண்ட் டிடெயில்ஸ்';

  @override
  String get refreshFromKitsu => 'Kitsu-ல இருந்து ரெஃப்ரெஷ் பண்ணு';

  @override
  String get simklReadOnly => 'Simkl-க்கு ரீட்-ஒன்லி அக்சஸ் கிடைச்சிருக்கு';

  @override
  String get incognitoEditsBlocked =>
      'இன்காக்னிட்டோ: லிஸ்ட் எடிட்ஸ் பிளாக் ஆகுது';

  @override
  String serviceError(String service, String error) {
    return '$service: $error';
  }

  @override
  String get incognitoProgressNotSaved => 'இன்காக்னிட்டோ: புரோகிரஸ் சேவ் ஆகல';

  @override
  String progressSet(int progress) {
    return 'புரோகிரஸ் $progress-னு செட் ஆயிடுச்சு';
  }

  @override
  String removedFromList(String title) {
    return '$title உன் லிஸ்ட்ல இருந்து நீக்கப்பட்டுச்சு';
  }

  @override
  String get following => 'ஃபாலோயிங்';

  @override
  String get homeSections => 'ஹோம் செக்ஷன்ஸ்';

  @override
  String get homeSectionsHint =>
      'ரீஆர்டர் பண்ண டிராக் பண்ணு. ஹிட்டன் செக்ஷன்ஸ் எப்பவும் ஃபெட்ச் ஆகாது.';

  @override
  String get customListDeleteFailed => 'கஸ்டம் லிஸ்ட்டை டெலீட் பண்ண முடியல';

  @override
  String get customListsSaveFailed => 'கஸ்டம் லிஸ்ட்ஸை சேவ் பண்ண முடியல';

  @override
  String get customListsSaved => 'கஸ்டம் லிஸ்ட்ஸ் சேவ் ஆயிடுச்சு';

  @override
  String get listName => 'லிஸ்ட் பேரு';

  @override
  String get addList => 'லிஸ்ட் சேர்';

  @override
  String voiceActorsIn(String name) {
    return 'வாய்ஸ் ஆக்டர்ஸ் · $name';
  }

  @override
  String get animeAppearances => 'அனிமே அப்பியரன்ஸஸ்';

  @override
  String get mangaAppearances => 'மங்கா அப்பியரன்ஸஸ்';

  @override
  String get voicedCharacters => 'வாய்ஸ் குடுத்த கேரக்டர்ஸ்';

  @override
  String get animeCredits => 'அனிமே கிரெடிட்ஸ்';

  @override
  String get mangaCredits => 'மங்கா கிரெடிட்ஸ்';

  @override
  String get mainProductions => 'மெயின் புரொடக்ஷன்ஸ்';

  @override
  String get otherWorks => 'மத்த வொர்க்ஸ்';

  @override
  String get prequelSequel => 'ப்ரீக்வல் & சீக்வல்';

  @override
  String get previousSeason => 'முந்தின சீசன்';

  @override
  String get thisSeason => 'இந்த சீசன்';

  @override
  String get nextSeason => 'அடுத்த சீசன்';

  @override
  String get voiceRoles => 'வாய்ஸ் ரோல்ஸ்';

  @override
  String get staffPositions => 'ஸ்டாஃப் பொசிஷன்ஸ்';

  @override
  String get mangaWorks => 'மங்கா வொர்க்ஸ்';

  @override
  String get malProfile => 'MyAnimeList ப்ரொஃபைல்';

  @override
  String get refreshFromMal => 'MyAnimeList-ல இருந்து ரெஃப்ரெஷ் பண்ணு';

  @override
  String get repullProfileCounts => 'உன் ப்ரொஃபைல் & கவுண்ட்ஸை மறுபடி இழு';

  @override
  String get refreshed => 'ரெஃப்ரெஷ் ஆயிடுச்சு';

  @override
  String get simklProfile => 'Simkl ப்ரொஃபைல்';

  @override
  String get refreshFromSimkl => 'Simkl-ல இருந்து ரெஃப்ரெஷ் பண்ணு';

  @override
  String get repullProfileLibrary => 'உன் ப்ரொஃபைல் & லைப்ரரியை மறுபடி இழு';

  @override
  String get simklSignInToSearch => 'தேட Simkl-ல சைன் இன் பண்ணு';

  @override
  String get dropRate => 'டிராப் ரேட்';

  @override
  String get simklAttribution =>
      'டேட்டா & ஆர்ட்வொர்க் Simkl தந்தது. Simkl-ல பாரு';

  @override
  String get onHold => 'ஆன் ஹோல்ட்';

  @override
  String get scoredBy => 'ஸ்கோர் பண்ணவங்க';

  @override
  String get planToWatch => 'பாக்க ப்ளான்';

  @override
  String get planToRead => 'படிக்க ப்ளான்';

  @override
  String get timesRewatched => 'மறுபடி பாத்த தடவை';

  @override
  String get timesReread => 'மறுபடி படிச்ச தடவை';

  @override
  String get comments => 'கமெண்ட்ஸ்';

  @override
  String get moviesAndSeries => 'மூவிஸ் & சீரிஸ்';

  @override
  String get trackingOnly => 'டிராக்கிங் மட்டும்';

  @override
  String get signedIn => 'சைன் இன் ஆயிருக்கு';

  @override
  String get searchLanguage => 'சர்ச் மொழி';

  @override
  String get savedToList => 'உன் லிஸ்ட்ல சேவ் ஆயிடுச்சு';

  @override
  String get removedFromYourList => 'உன் லிஸ்ட்ல இருந்து நீக்கப்பட்டுச்சு';

  @override
  String get retry => 'ரிட்ரை';

  @override
  String get synopsis => 'சினாப்சிஸ்';

  @override
  String get details => 'டிடெயில்ஸ்';

  @override
  String get addToList => 'லிஸ்ட்ல சேர்';

  @override
  String get trailer => 'டிரெய்லர்';

  @override
  String get titleCopied => 'டைட்டில் காப்பி ஆயிடுச்சு';

  @override
  String get linkCopied => 'லிங்க் காப்பி ஆயிடுச்சு';

  @override
  String get watchTrailer => 'டிரெய்லர் பாரு';

  @override
  String get copyTitle => 'டைட்டிலை காப்பி பண்ணு';

  @override
  String get copyLink => 'லிங்க்கை காப்பி பண்ணு';

  @override
  String get openInBrowser => 'பிரவுசர்ல திற';

  @override
  String viewOnSource(String source) {
    return '$source-ல பாரு';
  }

  @override
  String episodeAirsIn(int ep, String time) {
    return 'எபிசோட் $ep $time-ல ஏர் ஆகும்';
  }

  @override
  String nextEpisodeIn(String time) {
    return 'அடுத்த எபிசோட் $time-ல';
  }

  @override
  String chapterExpectedIn(int chapter, String time) {
    return 'அத்தியாயம் $chapter சுமார் $time-ல் வரும்';
  }

  @override
  String get logPathCopied =>
      'லாக் ஃபைல் பாத் கிளிப்போர்டுக்கு காப்பி ஆயிடுச்சு';

  @override
  String get animeSource => 'அனிமே சோர்ஸ்';

  @override
  String get mangaSource => 'மங்கா சோர்ஸ்';

  @override
  String get popular => 'பாப்புலர்';

  @override
  String get latest => 'லேட்டஸ்ட்';

  @override
  String get saved => 'சேவ்டு';

  @override
  String get nothingMatched => 'எதுவும் மேட்ச் ஆகல';

  @override
  String get nothingSavedFromSource => 'இந்த சோர்ஸ்ல இன்னும் எதுவும் சேவ் ஆகல';

  @override
  String get sourceReturnedNothing => 'இந்த சோர்ஸ் எதுவும் தரல';

  @override
  String get checkConnectionOrSource =>
      'உன் கனெக்ஷனை செக் பண்ணு இல்லன்னா வேற சோர்ஸை ட்ரை பண்ணு.';

  @override
  String get tryDifferentSearch => 'வேற சர்ச் வார்த்தையை ட்ரை பண்ணு.';

  @override
  String get savedTitlesAppearHere =>
      'நீ உன் லிஸ்ட்ல சேர்க்கிற டைட்டில்ஸ் இங்க வரும்.';

  @override
  String get tryOtherFeed => 'வேற ஃபீடை ட்ரை பண்ணு இல்லன்னா தேடு.';

  @override
  String searchSource(String source) {
    return '$source தேடு';
  }

  @override
  String get animeExtensions => 'அனிமே எக்ஸ்டென்ஷன்ஸ்';

  @override
  String get mangaExtensions => 'மங்கா எக்ஸ்டென்ஷன்ஸ்';

  @override
  String get nothingHereYet => 'இங்க இன்னும் எதுவும் இல்ல';

  @override
  String get savedOnDeviceUntilLogin =>
      'கீழ இருக்க எல்லாம் நீ பண்ணுற வரை இந்த டிவைஸ்லயே சேவ் ஆகி இருக்கும்.';

  @override
  String get yourProfile => 'உன் ப்ரொஃபைல்';

  @override
  String get activity => 'ஆக்டிவிட்டி';

  @override
  String get extensions => 'எக்ஸ்டென்ஷன்ஸ்';

  @override
  String get logOut => 'லாக் அவுட்';

  @override
  String get logIn => 'லாகின்';

  @override
  String get logOutConfirm => 'நிஜமாவே லாக் அவுட் ஆகணுமா?';

  @override
  String get incognitoMode => 'இன்காக்னிட்டோ மோட்';

  @override
  String get alsoBlockListEdits => 'லிஸ்ட் எடிட்ஸையும் பிளாக் பண்ணு';

  @override
  String get offlineMode => 'ஆஃப்லைன் மோட்';

  @override
  String get switchService => 'சர்வீஸ் மாத்து';

  @override
  String logOutOf(String name) {
    return '$name-ல இருந்து லாக் அவுட்';
  }

  @override
  String get loggedIn => 'லாகின் ஆயிருக்கு';

  @override
  String get notifications => 'நோட்டிபிகேஷன்ஸ்';

  @override
  String get nothingNew => 'புதுசா எதுவும் இல்ல';

  @override
  String get thisWeek => 'இந்த வாரம்';

  @override
  String get listOnly => 'லிஸ்ட் மட்டும்';

  @override
  String get filter => 'ஃபில்டர்';

  @override
  String get searchResults => 'சர்ச் ரிசல்ட்ஸ்';

  @override
  String get recentSearches => 'சமீபத்திய சர்ச்ஸ்';

  @override
  String get searchOrSetFilter => 'தேடு இல்லன்னா ஃபில்டர் செட் பண்ணு';

  @override
  String get filters => 'ஃபில்டர்ஸ்';

  @override
  String get showLess => 'குறைவா காட்டு';

  @override
  String get showAll => 'எல்லாத்தையும் காட்டு';

  @override
  String get apply => 'அப்ளை';

  @override
  String get preview => 'ப்ரிவியூ';

  @override
  String get preset => 'ப்ரீசெட்';

  @override
  String get cardNormal => 'நார்மல்';

  @override
  String get cardOnCard => 'கார்டு மேல';

  @override
  String get cardInCard => 'கார்டுக்குள்ள';

  @override
  String get size => 'சைஸ்';

  @override
  String get cardWidth => 'கார்டு அகலம்';

  @override
  String get compact => 'காம்பேக்ட்';

  @override
  String get coverAndTitleOnly => 'கவர் & டைட்டில் மட்டும்';

  @override
  String get titleLines => 'டைட்டில் லைன்ஸ்';

  @override
  String get shape => 'ஷேப்';

  @override
  String get posterShape => 'போஸ்டர் ஷேப்';

  @override
  String get cornerRadius => 'கார்னர் ரேடியஸ்';

  @override
  String get off => 'ஆஃப்';

  @override
  String get topLeft => 'மேல் இடது';

  @override
  String get topRight => 'மேல் வலது';

  @override
  String get bottomLeft => 'கீழ் இடது';

  @override
  String get bottomRight => 'கீழ் வலது';

  @override
  String get overlays => 'ஓவர்லேஸ்';

  @override
  String get progressCount => 'புரோகிரஸ் / கவுண்ட்';

  @override
  String get pill => 'பில்';

  @override
  String get bar => 'பார்';

  @override
  String get outside => 'வெளியே';

  @override
  String get scoreBadge => 'ஸ்கோர் பேட்ஜ்';

  @override
  String get airingDot => 'ஏரிங் டாட்';

  @override
  String get updateAvailable => 'அப்டேட் இருக்கு';

  @override
  String get notInstalled => 'இன்ஸ்டால் ஆகல';

  @override
  String get done => 'முடிஞ்சது';

  @override
  String get searchOrEnterUrl => 'தேடு இல்லன்னா URL போடு';

  @override
  String get refresh => 'ரெஃப்ரெஷ்';

  @override
  String get share => 'ஷேர்';

  @override
  String get characters => 'கேரக்டர்ஸ்';

  @override
  String get staff => 'ஸ்டாஃப்';

  @override
  String get readMore => 'இன்னும் படி';

  @override
  String get couldNotLoadList => 'லிஸ்ட்டை லோட் பண்ண முடியல';

  @override
  String get logInToFavourite => 'ஃபேவரிட் சேர்க்க லாகின் பண்ணு';

  @override
  String get alsoKnownAs => 'இப்படியும் தெரியும்';

  @override
  String get hideSpoilerNames => 'ஸ்பாய்லர் பேர்களை மறை';

  @override
  String get showSpoilerNames => 'ஸ்பாய்லர் பேர்களை காட்டு';

  @override
  String get favourited => 'ஃபேவரிட் ஆக்கிருக்க';

  @override
  String get favourite => 'ஃபேவரிட்';

  @override
  String get couldNotOpenTitle => 'இந்த டைட்டிலை திறக்க முடியல';

  @override
  String get nobodyHereYet => 'இங்க இன்னும் யாரும் இல்ல';

  @override
  String get noMatches => 'மேட்ச் இல்ல';

  @override
  String get gridView => 'கிரிட் வியூ';

  @override
  String get fullWidth => 'ஃபுல் விட்த்';

  @override
  String get userNotFound => 'யூசர் கிடைக்கல';

  @override
  String get couldNotUpdateFollow => 'ஃபாலோவை அப்டேட் பண்ண முடியல';

  @override
  String followedUser(String name) {
    return '$name-ஐ ஃபாலோ பண்ணிட்ட';
  }

  @override
  String unfollowedUser(String name) {
    return '$name-ஐ அன்ஃபாலோ பண்ணிட்ட';
  }

  @override
  String get messages => 'மெசேஜஸ்';

  @override
  String get logInToSeeMessages => 'உன் மெசேஜஸை பாக்க லாகின் பண்ணு';

  @override
  String get editActivity => 'ஆக்டிவிட்டியை எடிட் பண்ணு';

  @override
  String get newActivity => 'புது ஆக்டிவிட்டி';

  @override
  String get editMessage => 'மெசேஜை எடிட் பண்ணு';

  @override
  String get writeMessage => 'ஒரு மெசேஜ் எழுது';

  @override
  String get editReply => 'ரிப்ளையை எடிட் பண்ணு';

  @override
  String get posted => 'போஸ்ட் ஆயிடுச்சு';

  @override
  String get couldNotPost => 'போஸ்ட் பண்ண முடியல';

  @override
  String get nothingToPreview => 'ப்ரிவியூ பண்ண எதுவும் இல்ல';

  @override
  String get writeSomethingHint =>
      'ஏதாவது எழுது… இங்க AniList மார்க்டவுன் வேலை செய்யும்';

  @override
  String get privateMessage => 'பிரைவேட் மெசேஜ்';

  @override
  String get post => 'போஸ்ட்';

  @override
  String get nothingHere => 'இங்க எதுவும் இல்ல';

  @override
  String get noAnimeProgress => 'அனிமே புரோகிரஸ் இல்ல';

  @override
  String get noMangaProgress => 'மங்கா புரோகிரஸ் இல்ல';

  @override
  String get noMessages => 'மெசேஜ் இல்ல';

  @override
  String get writeMessageHint => 'ஒரு மெசேஜ் எழுது…';

  @override
  String get shareSomethingHint => 'ஏதாவது ஷேர் பண்ணு…';

  @override
  String get all => 'எல்லாம்';

  @override
  String get anime => 'அனிமே';

  @override
  String get manga => 'மங்கா';

  @override
  String get count => 'கவுண்ட்';

  @override
  String get hoursWatched => 'பாத்த மணி நேரம்';

  @override
  String get chaptersRead => 'படிச்ச சாப்டர்ஸ்';

  @override
  String get meanScore => 'மீன் ஸ்கோர்';

  @override
  String get noStatsYet => 'இன்னும் ஸ்டாட்ஸ் இல்ல';

  @override
  String get totalEntries => 'மொத்த என்ட்ரிஸ்';

  @override
  String get episodesWatched => 'பாத்த எபிசோட்ஸ்';

  @override
  String get daysWatched => 'பாத்த நாட்கள்';

  @override
  String get volumesRead => 'படிச்ச வால்யூம்ஸ்';

  @override
  String get standardDeviation => 'ஸ்டாண்டர்ட் டீவியேஷன்';

  @override
  String get showMore => 'இன்னும் காட்டு';

  @override
  String get followsYou => 'உன்னை ஃபாலோ பண்றாங்க';

  @override
  String get nobodyYet => 'இன்னும் யாரும் இல்ல';

  @override
  String get logInToLike => 'லைக் பண்ண லாகின் பண்ணு';

  @override
  String get failedToLikeActivity => 'ஆக்டிவிட்டியை லைக் பண்ண முடியல';

  @override
  String get deleteActivityConfirm => 'ஆக்டிவிட்டியை டெலீட் பண்ணவா?';

  @override
  String get deletedActivity => 'ஆக்டிவிட்டி டெலீட் ஆயிடுச்சு';

  @override
  String get failedToDeleteActivity => 'ஆக்டிவிட்டியை டெலீட் பண்ண முடியல';

  @override
  String get subscribed => 'சப்ஸ்கிரைப் ஆயிடுச்சு';

  @override
  String get unsubscribed => 'அன்சப்ஸ்கிரைப் ஆயிடுச்சு';

  @override
  String get failedToUpdateSubscription => 'சப்ஸ்கிரிப்ஷனை அப்டேட் பண்ண முடியல';

  @override
  String get edit => 'எடிட்';

  @override
  String get delete => 'டெலீட்';

  @override
  String get likedBy => 'லைக் பண்ணவங்க';

  @override
  String get follow => 'ஃபாலோ';

  @override
  String get nameCopied => 'பேரு காப்பி ஆயிடுச்சு';

  @override
  String get followsEachOther => 'ரெண்டு பேரும் ஃபாலோ பண்றீங்க';

  @override
  String get unfollow => 'அன்ஃபாலோ';

  @override
  String get userIdCopied => 'யூசர் ஐடி காப்பி ஆயிடுச்சு';

  @override
  String get shareProfile => 'ப்ரொஃபைலை ஷேர் பண்ணு';

  @override
  String get copyUserId => 'யூசர் ஐடியை காப்பி பண்ணு';

  @override
  String get failedToDelete => 'டெலீட் பண்ண முடியல';

  @override
  String get failedToLike => 'லைக் பண்ண முடியல';

  @override
  String get replies => 'ரிப்ளைஸ்';

  @override
  String get reply => 'ரிப்ளை';

  @override
  String get noRepliesYet => 'இன்னும் ரிப்ளை இல்ல';

  @override
  String get favouriteAnime => 'ஃபேவரிட் அனிமே';

  @override
  String get favouriteManga => 'ஃபேவரிட் மங்கா';

  @override
  String get favouriteCharacters => 'ஃபேவரிட் கேரக்டர்ஸ்';

  @override
  String get favouriteStaff => 'ஃபேவரிட் ஸ்டாஃப்';

  @override
  String get favouriteStudios => 'ஃபேவரிட் ஸ்டுடியோஸ்';

  @override
  String get noFavouritesYet => 'இன்னும் ஃபேவரிட்ஸ் இல்ல';

  @override
  String get yourStory => 'உன் ஸ்டோரி';

  @override
  String get copiedToClipboard => 'கிளிப்போர்டுக்கு காப்பி ஆயிடுச்சு';

  @override
  String get justNow => 'இப்பதான்';

  @override
  String get openImage => 'இமேஜை திற';

  @override
  String get hideSpoiler => 'ஸ்பாய்லரை மறை';

  @override
  String get showSpoiler => 'ஸ்பாய்லரை காட்டு';

  @override
  String get status => 'ஸ்டேட்டஸ்';

  @override
  String get score => 'ஸ்கோர்';

  @override
  String get started => 'ஸ்டார்ட் பண்ணது';

  @override
  String get completed => 'முடிச்சது';

  @override
  String get private => 'பிரைவேட்';

  @override
  String get hideFromStatusLists => 'ஸ்டேட்டஸ் லிஸ்ட்ல இருந்து மறை';

  @override
  String get totalRepeats => 'மொத்த ரிப்பீட்ஸ்';

  @override
  String get other => 'மத்தது';

  @override
  String get customLists => 'கஸ்டம் லிஸ்ட்ஸ்';

  @override
  String get activeDays => 'ஆக்டிவ் டேஸ்';

  @override
  String get longestStreak => 'லாங்கஸ்ட் ஸ்ட்ரீக்';

  @override
  String get currentStreak => 'கரண்ட் ஸ்ட்ரீக்';

  @override
  String get tapOrHoverDay => 'ஒரு நாளை டேப் பண்ணு இல்லன்னா ஹோவர் பண்ணு';

  @override
  String get less => 'குறைவு';

  @override
  String get more => 'அதிகம்';

  @override
  String epIn(int ep, String time) {
    return 'எபிசோட் $ep $time-ல';
  }

  @override
  String get sectionLoading => 'லோட் ஆகுது';

  @override
  String get querySize => 'குவரி சைஸ்';

  @override
  String get querySizeDesc =>
      'ஒரு பெரிய குவரி ஒரே ரெக்வெஸ்ட்ல எல்லா வரிசையையும் (முழு ப்ரொஃபைலையும்) லோட் பண்ணும். ஸ்ப்ளிட் குவரிஸ் ஒவ்வொரு வரிசைக்கும் இல்லன்னா ப்ரொஃபைல் பார்ட்டுக்கும் சின்ன ரெக்வெஸ்ட் அனுப்பும்: ஒவ்வொன்னும் வேகம், பார்ட்ஸ் வர வர காட்டும்.';

  @override
  String get oneBig => 'ஒரே பெருசு';

  @override
  String get split => 'ஸ்ப்ளிட்';

  @override
  String get sectionSocial => 'சோஷியல்';

  @override
  String get systemNotifications => 'சிஸ்டம் நோட்டிபிகேஷன்ஸ்';

  @override
  String get feedLayout => 'ஃபீட் லேஅவுட்';

  @override
  String sectionsShown(int shown, int total) {
    return '$total-ல $shown காட்டுது — செலக்ட் பண்ணி ரீஆர்டர் பண்ண டேப் பண்ணு';
  }

  @override
  String labelSections(String label) {
    return '$label செக்ஷன்ஸ்';
  }

  @override
  String get accountOptions => 'அக்கவுண்ட் ஆப்ஷன்ஸ்';

  @override
  String get anilistAccountOptions => 'AniList அக்கவுண்ட் ஆப்ஷன்ஸ்';

  @override
  String get sectionPrivacy => 'பிரைவசி';

  @override
  String get hidePrivateEntries => 'பிரைவேட் என்ட்ரிஸை மறை';

  @override
  String get hidePrivateEntriesDesc =>
      'AniList-ல பிரைவேட்னு மார்க் பண்ண என்ட்ரிஸை ஃபீட்ல இருந்து விலக்கு';

  @override
  String get anilistExcludeList => 'உங்க லிஸ்ட்டை விலக்கு';

  @override
  String get anilistExcludeListDesc =>
      'உங்க AniList-ல் ஏற்கனவே இருக்கும் தலைப்புகளை அனிமே, மாங்கா பக்கங்களில் காட்டாது';

  @override
  String get anilistProfile => 'AniList ப்ரொஃபைல்';

  @override
  String get refreshFromAnilist => 'AniList-ல இருந்து ரெஃப்ரெஷ் பண்ணு';

  @override
  String get couldNotUpdateAnilistSettings =>
      'AniList செட்டிங்ஸை அப்டேட் பண்ண முடியல';

  @override
  String get sectionNames => 'பேர்ஸ்';

  @override
  String get titleLanguage => 'டைட்டில் மொழி';

  @override
  String get titleLanguageDesc =>
      'எல்லா இடத்துலயும் டைட்டில்ஸ் எப்படி எழுதணும், உதா. Attack on Titan / Shingeki no Kyojin / 進撃の巨人.';

  @override
  String get staffCharacterNames => 'ஸ்டாஃப் & கேரக்டர் பேர்ஸ்';

  @override
  String get sectionLists => 'லிஸ்ட்ஸ்';

  @override
  String get scoreFormat => 'ஸ்கோர் ஃபார்மேட்';

  @override
  String get sortListsBy => 'லிஸ்ட்ஸை இதை வச்சு சார்ட் பண்ணு';

  @override
  String labelCustomLists(String label) {
    return '$label கஸ்டம் லிஸ்ட்ஸ்';
  }

  @override
  String customListsCount(int count) {
    return '$count லிஸ்ட்ஸ் — சேர்க்க இல்லன்னா நீக்க டேப் பண்ணு';
  }

  @override
  String get mergeActivities => 'ஆக்டிவிட்டிஸை மெர்ஜ் பண்ணு';

  @override
  String minutesCount(int count) {
    return '$count நிமிஷம்';
  }

  @override
  String get timezone => 'டைம்சோன்';

  @override
  String get notSet => 'செட் பண்ணல';

  @override
  String get airingNotifications => 'ஏரிங் நோட்டிபிகேஷன்ஸ்';

  @override
  String get airingNotificationsDesc =>
      'நீ ஃபாலோ பண்ற ஷோவோட எபிசோட் ஏர் ஆனா நோட்டிபிகேஷன் வரும்';

  @override
  String get displayAdultContent => 'அடல்ட் கன்டென்ட்டை காட்டு';

  @override
  String get displayAdultContentDesc =>
      'பிரவுஸ், சர்ச் & ஃபீட்ஸ்ல 18+ டைட்டில்ஸை சேர்';

  @override
  String get restrictMessages =>
      'மெசேஜஸை ஃபாலோ பண்றவங்களுக்கு மட்டும் லிமிட் பண்ணு';

  @override
  String get restrictMessagesDesc =>
      'நீ ஃபாலோ பண்றவங்க மட்டும் தான் உனக்கு மெசேஜ் பண்ண முடியும்';

  @override
  String get sectionServices => 'சர்வீசஸ்';

  @override
  String get novel => 'நாவல்';

  @override
  String labelService(String label) {
    return '$label சர்வீஸ்';
  }

  @override
  String nameSettings(String name) {
    return '$name செட்டிங்ஸ்';
  }

  @override
  String extensionBridgeOptions(String name) {
    return '$name எக்ஸ்டென்ஷன் பிரிட்ஜ்ல இருந்து ஆப்ஷன்ஸ்';
  }

  @override
  String extensionServiceFailed(String name, String error) {
    return '$name ஸ்டார்ட் ஆகல: $error';
  }

  @override
  String get importLists => 'லிஸ்ட்ஸை இம்போர்ட் பண்ணு';

  @override
  String get importListsDesc =>
      'Aniyomi, Mihon / Tachiyomi அல்லது Kotatsu பேக்கப்ஸ்ல இருந்து';

  @override
  String get exportLists => 'லிஸ்ட்ஸை எக்ஸ்போர்ட் பண்ணு';

  @override
  String get exportListsDesc => 'Aniyomi, Mihon அல்லது Kotatsu பேக்கப்புக்கு';

  @override
  String get sectionBrowse => 'பிரவுஸ்';

  @override
  String get readingTab => 'ரீடிங் டேப்';

  @override
  String get readingTabDesc => 'மூணாவது டேப் எந்த எக்ஸ்டென்ஷன்ஸை காட்டணும்';

  @override
  String get firstTab => 'First tab';

  @override
  String get firstTabDesc =>
      'Which extensions the first tab shows. Pick manga here and novel on the reading tab to drop anime from the bar';

  @override
  String get novelExtensions => 'Novel Extensions';

  @override
  String get defaultFeed => 'டீஃபால்ட் ஃபீட்';

  @override
  String get defaultFeedDesc => 'சோர்ஸ் எந்த லிஸ்ட்டோட ஓபன் ஆகணும்';

  @override
  String noServiceSupports(String type) {
    return '$type-ஐ எந்த சர்வீசும் சப்போர்ட் பண்ணல';
  }

  @override
  String sourcesLoading(String name, int loaded, int installed) {
    return '$name · $installed-ல $loaded சோர்ஸஸ் லோட் ஆகுது';
  }

  @override
  String noExtensionServiceSupportsHere(String type) {
    return 'இங்க $type-ஐ எந்த எக்ஸ்டென்ஷன் சர்வீசும் சப்போர்ட் பண்ணல.';
  }

  @override
  String get loadDataFrom => 'இங்க இருந்து டேட்டா லோட் பண்ணு';

  @override
  String noInstalledSourcesYet(String type) {
    return 'இன்னும் இன்ஸ்டால் பண்ண $type சோர்ஸஸ் இல்ல.';
  }

  @override
  String extensionNotInstalled(String name) {
    return '$name-க்கான எக்ஸ்டென்ஷன் இன்ஸ்டால் ஆகல';
  }

  @override
  String get thisSource => 'இந்த சோர்ஸ்';

  @override
  String failedToAddRepository(String error) {
    return 'ரெப்போ சேர்க்க முடியல: $error';
  }

  @override
  String installedType(String type) {
    return 'இன்ஸ்டால் பண்ண $type';
  }

  @override
  String availableType(String type) {
    return 'கிடைக்கிற $type';
  }

  @override
  String noInstalledExtensions(String type) {
    return 'இன்ஸ்டால் பண்ண $type எக்ஸ்டென்ஷன்ஸ் இல்ல';
  }

  @override
  String noAvailableExtensions(String type) {
    return 'கிடைக்கிற $type எக்ஸ்டென்ஷன்ஸ் இல்ல';
  }

  @override
  String get nothingToShowYet => 'காட்ட இன்னும் எதுவும் இல்ல';

  @override
  String get addTitlesHint => 'உன் லிஸ்ட்ல டைட்டில்ஸ் சேர், அவை இங்க வரும்.';

  @override
  String get couldntLoad => 'லோட் பண்ண முடியல';

  @override
  String get progressStyleHint =>
      'பில் & பார் போஸ்டர் மேல வரும்; அவுட்சைட் அதே கவுண்ட்டை ப்ளெயின் டெக்ஸ்ட்டா காட்டும் — ஒன்னை எடு.';

  @override
  String get nixManagedUpdate =>
      'இந்த பில்ட் Nix-ஆல மேனேஜ் ஆகுது — இங்க இருந்து அப்டேட் பண்ணாம, உன் ஃபிளேக்ல \"nix flake update\" ஓட்டி மறுபடி பில்ட் பண்ணு';

  @override
  String autoUpdateFailed(String error) {
    return 'ஆட்டோ அப்டேட் ஃபெயில் ஆயிடுச்சு ($error) — அதுக்கு பதிலா டவுன்லோட் பேஜை திறக்கிறேன்';
  }

  @override
  String get unknownPreference => 'தெரியாத பிரிஃபரன்ஸ்';

  @override
  String unsupportedPreferenceType(String type) {
    return 'சப்போர்ட் இல்லாத பிரிஃபரன்ஸ் டைப் $type';
  }

  @override
  String get notYetReleased => 'இன்னும் ரிலீஸ் ஆகல';

  @override
  String get notStarted => 'இன்னும் ஸ்டார்ட் ஆகல';

  @override
  String get country => 'நாடு';

  @override
  String get sort => 'சார்ட்';

  @override
  String get chooseBackupDialog =>
      'ஒரு Aniyomi, Mihon அல்லது Kotatsu பேக்கப்பை தேர்ந்தெடு';

  @override
  String get importListsHint =>
      'Aniyomi, Mihon / Tachiyomi அல்லது Kotatsu-ல இருந்து லைப்ரரியை கொண்டு வா. டைட்டில்ஸ், கவர்ஸ், புரோகிரஸ் & கேட்டகிரீஸ் அப்படியே இருக்கும்.';

  @override
  String get chooseBackupFile => 'பேக்கப் ஃபைலை தேர்ந்தெடு';

  @override
  String importAnimeCount(int count) {
    return '$count அனிமேவை இம்போர்ட் பண்ணு';
  }

  @override
  String importMangaCount(int count) {
    return '$count மங்காவை இம்போர்ட் பண்ணு';
  }

  @override
  String get mergeWithExisting => 'இருக்க லிஸ்ட்ஸோட மெர்ஜ் பண்ணு';

  @override
  String get mergeWithExistingDesc =>
      'ஏற்கனவே இருக்கறதை வச்சுக்கும்; ஆஃப்னா மேட்ச் ஆகற டைட்டில்ஸை மாத்தும்';

  @override
  String get chooseAnother => 'வேற ஒன்னை தேர்ந்தெடு';

  @override
  String get import => 'இம்போர்ட்';

  @override
  String animeCount(int count) {
    return '$count அனிமே';
  }

  @override
  String mangaCount(int count) {
    return '$count மங்கா';
  }

  @override
  String get chooseSaveLocation => 'பேக்கப்பை எங்க சேவ் பண்ணணும்னு தேர்ந்தெடு';

  @override
  String savedPath(String path) {
    return '$path சேவ் ஆயிடுச்சு';
  }

  @override
  String exportFailed(String error) {
    return 'எக்ஸ்போர்ட் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String get nothingInLocalLists =>
      'உன் லோக்கல் லிஸ்ட்ஸ்ல இன்னும் எதுவும் இல்ல.';

  @override
  String exportsSummary(int anime, int manga) {
    return 'உன் லோக்கல் லிஸ்ட்ஸ்ல இருந்து $anime அனிமே & $manga மங்காவை எக்ஸ்போர்ட் பண்ணும். Kotatsu மங்காவை மட்டும் தான் சப்போர்ட் பண்ணும்.';
  }

  @override
  String get saveToFolder => 'ஃபோல்டர்ல சேவ் பண்ணு';

  @override
  String get formatAnimeManga => 'அனிமே & மங்கா · .tachibk';

  @override
  String get formatMangaTachibk => 'மங்கா மட்டும் · .tachibk';

  @override
  String get formatMangaZip => 'மங்கா மட்டும் · .zip';

  @override
  String get genres => 'ஜானர்ஸ்';

  @override
  String get relations => 'ரிலேஷன்ஸ்';

  @override
  String get recommendations => 'ரெகமெண்டேஷன்ஸ்';

  @override
  String get openings => 'ஓபனிங்ஸ்';

  @override
  String get endings => 'எண்டிங்ஸ்';

  @override
  String get background => 'பேக்ரவுண்ட்';

  @override
  String get links => 'லிங்க்ஸ்';

  @override
  String get rank => 'ரேங்க்';

  @override
  String get members => 'மெம்பர்ஸ்';

  @override
  String get favorites => 'ஃபேவரிட்ஸ்';

  @override
  String get episodes => 'எபிசோட்ஸ்';

  @override
  String get chapters => 'சாப்டர்ஸ்';

  @override
  String get volumes => 'வால்யூம்ஸ்';

  @override
  String get format => 'ஃபார்மேட்';

  @override
  String get source => 'சோர்ஸ்';

  @override
  String get duration => 'டியூரேஷன்';

  @override
  String minutesPerEpisode(int minutes) {
    return 'ஒரு எபிசோடுக்கு $minutes நிமிஷம்';
  }

  @override
  String get rating => 'ரேட்டிங்';

  @override
  String get studio => 'ஸ்டுடியோ';

  @override
  String get serialization => 'சீரியலைசேஷன்';

  @override
  String get season => 'சீசன்';

  @override
  String get broadcast => 'பிராட்காஸ்ட்';

  @override
  String get aired => 'ஏர் ஆனது';

  @override
  String get published => 'பப்ளிஷ் ஆனது';

  @override
  String get popularity => 'பாப்புலாரிட்டி';

  @override
  String get community => 'கம்யூனிட்டி';

  @override
  String get watching => 'பாத்துட்டு இருக்கவங்க';

  @override
  String get reading => 'படிச்சிட்டு இருக்கவங்க';

  @override
  String get dropped => 'டிராப் பண்ணவங்க';

  @override
  String get planned => 'ப்ளான் பண்ணவங்க';

  @override
  String get trailers => 'டிரெய்லர்ஸ்';

  @override
  String get ratings => 'ரேட்டிங்ஸ்';

  @override
  String get originalTitle => 'ஒரிஜினல்';

  @override
  String get titleLabel => 'டைட்டில்';

  @override
  String get votes => 'வோட்ஸ்';

  @override
  String get watchedStat => 'பாத்தது';

  @override
  String get runtime => 'ரன்டைம்';

  @override
  String get director => 'டைரக்டர்';

  @override
  String get network => 'நெட்வொர்க்';

  @override
  String get certification => 'சர்டிபிகேஷன்';

  @override
  String get airs => 'ஏர் ஆகும்';

  @override
  String get budget => 'பட்ஜெட்';

  @override
  String get revenue => 'ரெவன்யூ';

  @override
  String get released => 'ரிலீஸ் ஆனது';

  @override
  String get tags => 'டேக்ஸ்';

  @override
  String get author => 'ஆதர்';

  @override
  String get born => 'பிறந்தது';

  @override
  String get website => 'வெப்சைட்';

  @override
  String get established => 'தொடங்கியது';

  @override
  String get manhwa => 'மன்ஹ்வா';

  @override
  String get manhua => 'மன்ஹுவா';

  @override
  String get novels => 'நாவல்ஸ்';

  @override
  String get thisMonth => 'இந்த மாசம்';

  @override
  String get movies => 'மூவிஸ்';

  @override
  String get shows => 'ஷோஸ்';

  @override
  String get rewatching => 'மறுபடி பாக்கறேன்';

  @override
  String get rereading => 'மறுபடி படிக்கிறேன்';

  @override
  String get watchedStatus => 'பாத்தது';

  @override
  String get planning => 'ப்ளானிங்';

  @override
  String get paused => 'பாஸ்டு';

  @override
  String get watch => 'பாரு';

  @override
  String get read => 'படி';

  @override
  String get finished => 'முடிஞ்சது';

  @override
  String get releasing => 'ரிலீஸ் ஆகிட்டு இருக்கு';

  @override
  String get cancelled => 'கேன்சல் ஆனது';

  @override
  String get hiatus => 'ஹையட்டஸ்';

  @override
  String get remove => 'நீக்கு';

  @override
  String syncToService(String service) {
    return '$service-க்கு சிங்க் பண்ணு';
  }

  @override
  String syncedToService(String service) {
    return '$service-க்கு சிங்க் ஆயிடுச்சு';
  }

  @override
  String get latestReleases => 'லேட்டஸ்ட் ரிலீஸஸ்';

  @override
  String get topRated => 'டாப் ரேட்டட்';

  @override
  String localSection(String title) {
    return '$title · லோக்கல்';
  }

  @override
  String get localEntryNote =>
      'இந்த டைட்டில் இந்த டிவைஸ்ல உன் லோக்கல் லிஸ்ட்ல மட்டும் இருக்கு. உன் அக்கவுண்ட் லிஸ்ட்டோட மோதலாம்ங்கறதால இங்க எடிட்டிங் ஆஃப்; ஆனா நீக்கலாம்.';

  @override
  String get cardPresetPoster => 'போஸ்டர்';

  @override
  String get cardPresetCard => 'கார்டு';

  @override
  String get cardPresetCozy => 'கோசி';

  @override
  String get sortTopRated => 'டாப் ரேட்டட்';

  @override
  String get sortMostPopular => 'மோஸ்ட் பாப்புலர்';

  @override
  String get sortTrending => 'ட்ரெண்டிங்';

  @override
  String get sortNewest => 'நியூஸ்ட்';

  @override
  String get sortAz => 'A–Z';

  @override
  String get sortMostFavourited => 'மோஸ்ட் ஃபேவரிட்';

  @override
  String get anyCountry => 'எந்த நாடும்';

  @override
  String get orderScore => 'ஸ்கோர்';

  @override
  String get orderTitle => 'டைட்டில்';

  @override
  String get orderLastUpdated => 'லாஸ்ட் அப்டேட்டட்';

  @override
  String get orderLastAdded => 'லாஸ்ட் ஆட் பண்ணது';

  @override
  String get never => 'நெவர்';

  @override
  String get always => 'எப்பவும்';

  @override
  String get scorePoint100 => '100 பாயிண்ட்';

  @override
  String get scorePoint10Decimal => '10 பாயிண்ட் டெசிமல்';

  @override
  String get scorePoint10 => '10 பாயிண்ட்';

  @override
  String get scorePoint5 => '5 ஸ்டார்';

  @override
  String get scorePoint3 => '3 பாயிண்ட் ஸ்மைலி';

  @override
  String hoursCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மணி நேரம்',
      one: '1 மணி நேரம்',
    );
    return '$_temp0';
  }

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாள்',
      one: '1 நாள்',
    );
    return '$_temp0';
  }

  @override
  String weeksCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count வாரம்',
      one: '1 வாரம்',
    );
    return '$_temp0';
  }

  @override
  String get resumeTitle => 'ரிசூம்';

  @override
  String get resumeSourceMissing =>
      'ரிசூம் பண்ண இந்த டைட்டிலோட சோர்ஸை இன்ஸ்டால் பண்ணு';

  @override
  String get resumeRemove => 'ரிசூம்ல இருந்து நீக்கு';

  @override
  String resumeAt(String time) {
    return '$time மீதி';
  }

  @override
  String resumePage(int page, int total) {
    return '$total-ல பேஜ் $page';
  }

  @override
  String get continueWatching => 'பார்த்ததை கன்டினியூ பண்ணு';

  @override
  String get continueReading => 'படிச்சதை கன்டினியூ பண்ணு';

  @override
  String get favouriteAnimeSection => 'ஃபேவரிட் அனிமே';

  @override
  String get favouriteMangaSection => 'ஃபேவரிட் மங்கா';

  @override
  String get plannedAnime => 'ப்ளான் பண்ண அனிமே';

  @override
  String get plannedManga => 'ப்ளான் பண்ண மங்கா';

  @override
  String get completedAnime => 'முடிச்ச அனிமே';

  @override
  String get completedManga => 'முடிச்ச மங்கா';

  @override
  String get hiddenMedia => 'ஹிட்டன் மீடியா';

  @override
  String get recentUpdates => 'ரீசன்ட் அப்டேட்ஸ்';

  @override
  String get trendingNow => 'இப்போ ட்ரெண்டிங்';

  @override
  String get popularThisSeason => 'இந்த சீசன் பாப்புலர்';

  @override
  String get trendingMovies => 'ட்ரெண்டிங் மூவிஸ்';

  @override
  String get topRatedSeries => 'டாப் ரேட்டட் சீரிஸ்';

  @override
  String get mostFavouriteSeries => 'மோஸ்ட் ஃபேவரிட் சீரிஸ்';

  @override
  String get popularAnime => 'பாப்புலர் அனிமே';

  @override
  String get trendingManhwa => 'ட்ரெண்டிங் மன்ஹ்வா';

  @override
  String get trendingNovels => 'ட்ரெண்டிங் நாவல்ஸ்';

  @override
  String get topRatedManga => 'டாப் ரேட்டட் மங்கா';

  @override
  String get mostFavouriteManga => 'மோஸ்ட் ஃபேவரிட் மங்கா';

  @override
  String get popularManga => 'பாப்புலர் மங்கா';

  @override
  String get topMovies => 'டாப் மூவிஸ்';

  @override
  String get topOna => 'டாப் ONA';

  @override
  String get topOva => 'டாப் OVA';

  @override
  String get mostPopular => 'மோஸ்ட் பாப்புலர்';

  @override
  String get mostFavourite => 'மோஸ்ட் ஃபேவரிட்';

  @override
  String get upcoming => 'அப்கமிங்';

  @override
  String get topManga => 'டாப் மங்கா';

  @override
  String get topManhwa => 'டாப் மன்ஹ்வா';

  @override
  String get topManhua => 'டாப் மன்ஹுவா';

  @override
  String get topNovels => 'டாப் நாவல்ஸ்';

  @override
  String get topOneShots => 'டாப் ஒன்-ஷாட்ஸ்';

  @override
  String get trendingMoviesToday => 'இன்னைக்கு ட்ரெண்டிங் மூவிஸ்';

  @override
  String get trendingShowsToday => 'இன்னைக்கு ட்ரெண்டிங் ஷோஸ்';

  @override
  String get trendingMoviesWeek => 'இந்த வாரம் ட்ரெண்டிங் மூவிஸ்';

  @override
  String get trendingShowsWeek => 'இந்த வாரம் ட்ரெண்டிங் ஷோஸ்';

  @override
  String get mostWatchedMoviesMonth => 'இந்த மாசம் அதிகம் பாத்த மூவிஸ்';

  @override
  String get mostWatchedShowsMonth => 'இந்த மாசம் அதிகம் பாத்த ஷோஸ்';

  @override
  String get trendingThisWeek => 'இந்த வாரம் ட்ரெண்டிங்';

  @override
  String get mostWatchedThisMonth => 'இந்த மாசம் அதிகம் பாத்தது';

  @override
  String get repoLinksAdded => 'ரெப்போ லிங்க்ஸ் சக்சஸ்ஃபுல்லா சேர்ந்துடுச்சு!';

  @override
  String repoLinkConfirm(String url) {
    return 'Add this repository?\n\n$url\n\nOnly add repositories from sources you trust.';
  }

  @override
  String get errorGettingAnilistData => 'AniList-ல இருந்து டேட்டா எடுக்க எரர்.';

  @override
  String get navInfo => 'இன்ஃபோ';

  @override
  String get navComments => 'கமெண்ட்ஸ்';

  @override
  String get playerNotAvailable => 'பிளேயர் இன்னும் கிடைக்கல';

  @override
  String deepLinkInitialError(String error) {
    return 'இனிஷியல் டீப் லிங்க் எடுக்க எரர்: $error';
  }

  @override
  String deepLinkOpenError(String error) {
    return 'லிங்க் திறக்க எரர்: $error';
  }

  @override
  String linkCantBeOpened(String link) {
    return 'இந்த லிங்கை திறக்க முடியல: $link';
  }

  @override
  String linkOpenError(String error) {
    return 'லிங்க் திறக்க எரர்: $error';
  }

  @override
  String get forReleasingTitles => 'இப்போ ரிலீஸ் ஆகிட்டு இருக்க டைட்டில்ஸுக்கு';

  @override
  String get progress => 'புரோகிரஸ்';

  @override
  String get notes => 'நோட்ஸ்';

  @override
  String serviceNotFound(String id) {
    return '\"$id\" சர்வீஸ் கிடைக்கல';
  }

  @override
  String get glassEffectEnabled => 'கிளாஸ் எஃபெக்ட் ஆன் ஆயிடுச்சு';

  @override
  String get glassEffectDisabled => 'கிளாஸ் எஃபெக்ட் ஆஃப் ஆயிடுச்சு';

  @override
  String get materialYouEnabled => 'Material You ஆன் ஆயிடுச்சு';

  @override
  String get materialYouDisabled => 'Material You ஆஃப் ஆயிடுச்சு';

  @override
  String get darkModeEnabled => 'டார்க் மோட் ஆன் ஆயிடுச்சு';

  @override
  String get darkModeDisabled => 'டார்க் மோட் ஆஃப் ஆயிடுச்சு';

  @override
  String get animeList => 'அனிமே லிஸ்ட்';

  @override
  String get mangaList => 'மங்கா லிஸ்ட்';

  @override
  String ownerAnimeList(String owner) {
    return '$owner-ஓட அனிமே லிஸ்ட்';
  }

  @override
  String ownerMangaList(String owner) {
    return '$owner-ஓட மங்கா லிஸ்ட்';
  }

  @override
  String get loadingList => 'லிஸ்ட் லோட் ஆகுது';

  @override
  String get earlier => 'முன்னாடி';

  @override
  String daysAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நாள் முன்னாடி',
      one: '1 நாள் முன்னாடி',
    );
    return '$_temp0';
  }

  @override
  String hoursAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மணி நேரம் முன்னாடி',
      one: '1 மணி நேரம் முன்னாடி',
    );
    return '$_temp0';
  }

  @override
  String minutesAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count நிமிஷம் முன்னாடி',
      one: '1 நிமிஷம் முன்னாடி',
    );
    return '$_temp0';
  }

  @override
  String minutesAgoShort(int count) {
    return '$countநி முன்னாடி';
  }

  @override
  String hoursAgoShort(int count) {
    return '$countம முன்னாடி';
  }

  @override
  String daysAgoShort(int count) {
    return '$countநா முன்னாடி';
  }

  @override
  String weeksAgoShort(int count) {
    return '$countவா முன்னாடி';
  }

  @override
  String get couldntLoadSource => 'இந்த சோர்ஸை லோட் பண்ண முடியல';

  @override
  String get followers => 'ஃபாலோயர்ஸ்';

  @override
  String couldntLoadTitle(String title) {
    return '$title-ஐ லோட் பண்ண முடியல';
  }

  @override
  String userTitle(String name, String title) {
    return '$name · $title';
  }

  @override
  String get couldntLoadProfile => 'இந்த ப்ரொஃபைலை லோட் பண்ண முடியல';

  @override
  String get profile => 'ப்ரொஃபைல்';

  @override
  String get feed => 'ஃபீட்';

  @override
  String get stats => 'ஸ்டாட்ஸ்';

  @override
  String get received => 'ரிசீவ்டு';

  @override
  String get sent => 'சென்ட்';

  @override
  String get global => 'குளோபல்';

  @override
  String get couldntLoadPage => 'இந்த பேஜை லோட் பண்ண முடியல';

  @override
  String get couldntLoadAllDetails => 'எல்லா டிடெயில்ஸையும் லோட் பண்ண முடியல';

  @override
  String get series => 'சீரிஸ்';

  @override
  String get studios => 'ஸ்டுடியோஸ்';

  @override
  String get users => 'யூசர்ஸ்';

  @override
  String repositoriesTitle(String type) {
    return '$type ரெப்போசிட்டரீஸ்';
  }

  @override
  String get repositoryUrl => 'ரெப்போசிட்டரி URL';

  @override
  String get downloadingRepository => 'ரெப்போசிட்டரி டவுன்லோட் ஆகுது…';

  @override
  String get noRepositories => 'ரெப்போசிட்டரி எதுவும் சேர்க்கல';

  @override
  String repoExtensionsCount(String count) {
    return '$count எக்ஸ்டென்ஷன்ஸ்';
  }

  @override
  String get searchExtensions => 'எக்ஸ்டென்ஷன்ஸ் தேடு...';

  @override
  String deletePluginTitle(String name) {
    return '$name-ஐ டெலீட் பண்ணவா?';
  }

  @override
  String get deletePluginMessage => 'இந்த பிளகினை நிஜமாவே டெலீட் பண்ணணுமா?';

  @override
  String pluginDeleted(String name) {
    return '$name டெலீட் ஆயிடுச்சு';
  }

  @override
  String pluginNotInRepo(String name) {
    return '$name கான்ஃபிகர் பண்ண ரெப்போல கிடைக்கல';
  }

  @override
  String get pluginFetchFailed => 'பிளகின் இன்ஃபோவை எடுக்க முடியல';

  @override
  String installPluginTitle(String name) {
    return '$name-ஐ இன்ஸ்டால் பண்ணு';
  }

  @override
  String sizeLabel(String size) {
    return 'சைஸ்: $size';
  }

  @override
  String get installedState => 'இன்ஸ்டால் ஆனது';

  @override
  String updatePluginTitle(String name) {
    return 'Update $name';
  }

  @override
  String get errorLabel => 'எரர்:';

  @override
  String get stackTraceDetails => 'டிடெயில்ஸ் (ஸ்டாக் ட்ரேஸ்)';

  @override
  String get shareLogFile => 'லாக் ஃபைலை ஷேர் பண்ணு';

  @override
  String get copyLogs => 'லாக்ஸை காப்பி பண்ணு';

  @override
  String noListToEdit(String service) {
    return '$service-ல எடிட் பண்ண லிஸ்ட் இல்ல';
  }

  @override
  String get couldNotReadFile => 'அந்த ஃபைலை படிக்க முடியல';

  @override
  String importedSummary(int anime, int manga) {
    return '$anime அனிமே & $manga மங்கா இம்போர்ட் ஆயிடுச்சு';
  }

  @override
  String alreadyThere(int count) {
    return ' · $count ஏற்கனவே இருக்கு';
  }

  @override
  String get airingNow => 'இப்போ ஏர் ஆகுது';

  @override
  String get topRatedMovies => 'டாப் ரேட்டட் மூவிஸ்';

  @override
  String get koreanDramas => 'கொரியன் டிராமாக்கள்';

  @override
  String get chineseDramas => 'சீன டிராமாக்கள்';

  @override
  String get japaneseDramas => 'ஜப்பானிய டிராமாக்கள்';

  @override
  String get thaiDramas => 'தாய் டிராமாக்கள்';

  @override
  String get turkishDramas => 'துருக்கிய டிராமாக்கள்';

  @override
  String get miniSeries => 'மினி சீரிஸ்';

  @override
  String get topRatedShows => 'டாப் ரேட்டட் ஷோஸ்';

  @override
  String get recommendedSection => 'ரெகமெண்டட்';

  @override
  String get syncRow => 'லிஸ்ட்ஸ் சிங்க்';

  @override
  String get syncRowDesc =>
      'ஒரு சர்வீஸோட லிஸ்ட்டை உன் மத்த அக்கவுண்ட்ஸ்ல மிரர் பண்ணு';

  @override
  String get syncTitle => 'சிங்க்';

  @override
  String get syncMainService => 'மெயின் சர்வீஸ்';

  @override
  String get syncMainServiceDesc =>
      'இதோட லிஸ்ட் தான் சோர்ஸ் ஆஃப் ட்ரூத்; சைன் இன் ஆன மத்த எல்லா சர்வீஸும் இதுக்கு மேட்ச் ஆகற மாதிரி அப்டேட் ஆகும்';

  @override
  String get syncAuto => 'ஆட்டோ சிங்க்';

  @override
  String get syncAutoDesc =>
      'ஆப் திறக்கும்போதும் ஒவ்வொரு 30 நிமிஷத்துக்கும் பேக்ரவுண்ட்ல ஃபெட்ச் & சிங்க் பண்ணு';

  @override
  String get syncAddMissing => 'விடுபட்ட என்ட்ரிஸை சேர்';

  @override
  String get syncAddMissingDesc => 'மத்த சர்வீஸ்ல இல்லாத என்ட்ரிஸையும் சேர்';

  @override
  String get syncOnlyForward => 'முன்னாடி இருக்க புரோகிரஸை வச்சுக்கோ';

  @override
  String get syncOnlyForwardDesc =>
      'ஏற்கனவே முன்னாடி இருக்க சர்வீஸோட புரோகிரஸை குறைக்காத';

  @override
  String get syncFetch => 'ஃபெட்ச்';

  @override
  String get syncFetchAgain => 'மறுபடி ஃபெட்ச் பண்ணு';

  @override
  String get syncAll => 'எல்லாத்தையும் சிங்க் பண்ணு';

  @override
  String get syncStop => 'ஸ்டாப்';

  @override
  String get syncResume => 'ரிசூம்';

  @override
  String get syncNothingToSync =>
      'இந்த டைப்புக்கு இந்த சர்வீஸை சிங்க் பண்ண முடியாது';

  @override
  String get syncNoTargets => 'சிங்க் பண்ண வேற சர்வீஸ்ல சைன் இன் பண்ணு';

  @override
  String get syncLoadingMap => 'ஐடி மேப்பிங் லோட் ஆகுது';

  @override
  String get syncComparing => 'லிஸ்ட்ஸை கம்பேர் பண்றேன்';

  @override
  String get syncIntro =>
      'ஒரு மெயின் சர்வீஸை எடுத்து ஃபெட்ச் அழுத்து. ஒவ்வொரு சர்வீஸும் உன் லிஸ்ட்டுக்காக ஒரு தடவை குவரி ஆகும், அப்புறம் மெயினோட கம்பேர் ஆகும்.';

  @override
  String get syncStateSynced => 'சிங்க் ஆயிடுச்சு';

  @override
  String get syncStateOutdated => 'சிங்க் ஆகல';

  @override
  String get syncStateMissing => 'லிஸ்ட்ல இல்ல';

  @override
  String get syncStateUnmapped => 'மேட்ச் இல்ல';

  @override
  String syncPaused(String time) {
    return 'ரேட் லிமிட்டுக்கு வெயிட் பண்றேன், $time-ல ரிசூம் ஆகும்';
  }

  @override
  String syncOnlyIn(int count, String name) {
    return '$count $name-ல மட்டும் இருக்கு, தொடலை';
  }

  @override
  String syncProgressOf(int done, int total) {
    return '$total-ல $done';
  }

  @override
  String get syncNothingHere => 'காட்ட எதுவும் இல்ல';

  @override
  String syncLimits(int used, int max, String window) {
    return 'இந்த $window-ல $max-ல $used ரெக்வெஸ்ட்ஸ் யூஸ் ஆயிடுச்சு';
  }

  @override
  String get syncMinute => 'நிமிஷம்';

  @override
  String get syncDay => 'நாள்';

  @override
  String get syncNotInList => 'இன்னும் லிஸ்ட்ல இல்ல';

  @override
  String get syncCleared => 'ப்ளான் கிளியர் ஆயிடுச்சு';

  @override
  String get syncClear => 'கிளியர்';

  @override
  String get syncOptions => 'ஆப்ஷன்ஸ்';

  @override
  String get syncShared => 'இதோட என்ட்ரியை வேற ஒன்னோட ஷேர் பண்ணுது';

  @override
  String syncNotFound(String service) {
    return '$service-ல கிடைக்கல';
  }

  @override
  String syncService(String service, int count) {
    return '$service சிங்க் ($count)';
  }

  @override
  String get syncOnEdit => 'மாற்றங்களை உடனே சிங்க் பண்ணு';

  @override
  String get syncOnEditDesc =>
      'ஒவ்வொரு புரோகிரஸ் அப்டேட் & லிஸ்ட் எடிட்டையும் சைன் இன் ஆன உன் மத்த சர்வீசஸுக்கு உடனே அனுப்பு';

  @override
  String syncPushed(String services) {
    return '$services-க்கு சிங்க் ஆயிடுச்சு';
  }

  @override
  String syncPushFailed(String service, String error) {
    return '$service: $error';
  }

  @override
  String get syncRateLimited =>
      'ரேட் லிமிட் ஆயிடுச்சு, கொஞ்ச நேரம் கழிச்சு ட்ரை பண்ணு';

  @override
  String get syncAhead => 'எது முன்னாடி இருக்கோ அது';

  @override
  String get syncAheadDesc =>
      'டூ-வே: ஒவ்வொரு டைட்டிலுக்கும் அதிகம் முன்னேறின என்ட்ரி ஜெயிக்கும், அது உன் மத்த எல்லா சர்வீசஸுக்கும் காப்பி ஆகும்';

  @override
  String syncAheadFrom(String service) {
    return '$service-ல இருந்து';
  }

  @override
  String get syncConfirm => 'சிங்க் பண்றதுக்கு முன்னாடி ரிவ்யூ பண்ணு';

  @override
  String get syncConfirmDesc =>
      'எல்லாத்தையும் சிங்க் பண்ணா என்ன மாறும், எத்தனை ரெக்வெஸ்ட் தேவைனு காட்டு';

  @override
  String get syncPreviewTitle => 'சிங்க் பண்ண ரெடி';

  @override
  String syncPreviewLine(int updates, int adds) {
    return '$updates அப்டேட்ஸ், $adds சேர்க்கணும்';
  }

  @override
  String syncPreviewRequests(int count) {
    return 'கிட்டத்தட்ட $count ரெக்வெஸ்ட்ஸ்';
  }

  @override
  String syncPreviewLookups(int count) {
    return '$count ஐடிஸை முதல்ல லுக்கப் பண்ணணும்';
  }

  @override
  String get syncPreviewNothing => 'மாத்த எதுவும் இல்ல';

  @override
  String get syncStart => 'ஸ்டார்ட்';

  @override
  String get syncRetry => 'ரிட்ரை';

  @override
  String get syncSkip => 'இந்த ஐட்டத்தை ஸ்கிப் பண்ணு';

  @override
  String get syncInclude => 'இந்த ஐட்டத்தை மறுபடி சேர்';

  @override
  String get syncSkippedLabel => 'ஸ்கிப் ஆனது';

  @override
  String get syncChanges => 'வித்தியாசங்கள்';

  @override
  String get syncChangeStatus => 'ஸ்டேட்டஸ்';

  @override
  String get syncChangeProgress => 'புரோகிரஸ்';

  @override
  String get syncChangeScore => 'ஸ்கோர்';

  @override
  String get syncChangeDates => 'டேட்ஸ்';

  @override
  String get syncChangeRepeat => 'ரீவாட்ச் கவுண்ட்';

  @override
  String get syncFailedReason => 'ஏன் ஃபெயில் ஆச்சு';

  @override
  String get syncSkippedHint =>
      'ஸ்கிப் பண்ண ஐட்டம்ஸ் மறுபடி ஃபெட்ச் பண்ணாலும் தொடப்படாது';

  @override
  String get commentsRules => 'கமெண்ட் ரூல்ஸ்';

  @override
  String get commentsRulesBody =>
      'எந்த ரூலை மீறினாலும் அவ்ளோதான் போ\n\n1. ரேசிசம், பாகுபாடு அல்லது வெறுப்பு பேச்சு கூடாது\n2. ஸ்பேம் அல்லது செல்ஃப்-புரொமோஷன் கூடாது\n3. NSFW கன்டென்ட் சுத்தமா கூடாது\n4. இங்கிலீஷ் மட்டும், விதிவிலக்கு இல்ல\n5. இம்பர்சனேஷன், ஹராஸ்மெண்ட் அல்லது அபியூஸ் கூடாது\n6. சட்டவிரோத கன்டென்ட் அல்லது எந்த ஃபேண்டத்தையும் அதிகமா அவமதிக்கிறது கூடாது\n7. ரெப்போஸ் அல்லது எக்ஸ்டென்ஷன்ஸை கேக்கவோ ஷேர் பண்ணவோ கூடாது\n8. ஸ்பாய்லர் டேக் & வார்னிங்கோட மட்டும் ஸ்பாய்லர்ஸ்\n9. மைனர் கேரக்டர்ஸ பத்தி செக்ஷுவலைஸ் பண்ற அல்லது தகாத கமெண்ட்ஸ் கூடாது\n10. தப்புன்னா போஸ்ட் பண்ணாத!';

  @override
  String get commentsRulesAccept => 'புரிஞ்சுது';

  @override
  String get commentsSortNewest => 'நியூஸ்ட்';

  @override
  String get commentsSortOldest => 'ஓல்டஸ்ட்';

  @override
  String get commentsSortHighest => 'ஹைஸ்ட் ரேட்டட்';

  @override
  String get commentsSortLowest => 'லோயஸ்ட் ரேட்டட்';

  @override
  String commentsEpisodeShort(int number) {
    return 'எப். $number';
  }

  @override
  String commentsChapterShort(int number) {
    return 'சா. $number';
  }

  @override
  String get commentsFilterEpisodeTitle => 'எபிசோட் வச்சு ஃபில்டர் பண்ணு';

  @override
  String get commentsFilterChapterTitle => 'சாப்டர் வச்சு ஃபில்டர் பண்ணு';

  @override
  String get commentsFilterTagTitle => 'எபிசோட் அல்லது சாப்டர் நம்பரை போடு';

  @override
  String get commentsFilterHint => 'நம்பர்';

  @override
  String get commentsFilterApply => 'ஃபில்டர்';

  @override
  String get commentsFilterClear => 'எல்லாத்தையும் காட்டு';

  @override
  String get commentsPlaceholder => 'ஒரு கமெண்ட் சேர்…';

  @override
  String commentsReplyingTo(String name) {
    return '$name-க்கு ரிப்ளை பண்றே';
  }

  @override
  String get commentsSend => 'அனுப்பு';

  @override
  String get commentsTagButton => 'டேக்';

  @override
  String commentsTagTitle(String label) {
    return 'டேக் $label (ஆப்ஷனல்)';
  }

  @override
  String get commentsTagEpisode => 'எபிசோட்';

  @override
  String get commentsTagChapter => 'சாப்டர்';

  @override
  String commentsTagRange(int total) {
    return '1–$total';
  }

  @override
  String commentsTagNumber(String label) {
    return '$label நம்பர்';
  }

  @override
  String commentsTagTooHigh(int total) {
    return 'டேக் மொத்தத்தை ($total) தாண்டக்கூடாது';
  }

  @override
  String get commentsNoTag => 'டேக் இல்ல';

  @override
  String get commentsSpoiler => 'ஸ்பாய்லர்';

  @override
  String get commentsGif => 'GIF';

  @override
  String get commentsGifSearch => 'GIF தேடு';

  @override
  String get commentsGifEmpty => 'GIF கிடைக்கல';

  @override
  String get commentsEmptyText => 'கமெண்ட் காலியா இருக்கக்கூடாது';

  @override
  String get commentsBannedYou => 'நீ கமெண்ட் பண்ண பேன் ஆயிருக்க';

  @override
  String get commentsEdited => 'கமெண்ட் எடிட் ஆயிடுச்சு';

  @override
  String get commentsDeleted => 'கமெண்ட் டெலீட் ஆயிடுச்சு';

  @override
  String get commentsDeletedPlaceholder => '[டெலீட்டட்]';

  @override
  String get commentsReported => 'கமெண்ட் ரிப்போர்ட் ஆயிடுச்சு';

  @override
  String get commentsUserBanned => 'யூசர் பேன் ஆயிடுச்சு';

  @override
  String get commentsReport => 'ரிப்போர்ட்';

  @override
  String get commentsReportAsk =>
      'இந்த கமெண்ட்டை மாடரேட்டர்ஸுக்கு ரிப்போர்ட் பண்ணவா?';

  @override
  String get commentsDelete => 'டெலீட்';

  @override
  String get commentsDeleteAsk => 'இந்த கமெண்ட் எல்லாருக்கும் நீக்கப்படும்.';

  @override
  String get commentsBan => 'பேன்';

  @override
  String get commentsBanAsk => 'இந்த யூசரை கமெண்ட் பண்ணாம பேன் பண்ணவா?';

  @override
  String get commentsCopy => 'காப்பி';

  @override
  String get commentsViewReply => '1 ரிப்ளையை பாரு';

  @override
  String commentsViewReplies(int count) {
    return '$count ரிப்ளைஸை பாரு';
  }

  @override
  String get commentsHideReplies => 'ரிப்ளைஸை மறை';

  @override
  String get commentsLoadMore => 'இன்னும் கமெண்ட்ஸ் லோட் பண்ணு';

  @override
  String get commentsEmpty => 'இன்னும் கமெண்ட் இல்ல. முதல் ஆளா நீ இரு!';

  @override
  String get commentsEmptyFiltered => 'இந்த ஃபில்டருக்கு கமெண்ட்ஸ் இல்ல';

  @override
  String get commentsSignIn =>
      'கமெண்ட்ஸ் படிக்கவும் எழுதவும் AniList-ல சைன் இன் பண்ணு';

  @override
  String get commentsSignInMessage =>
      'கமெண்ட்ஸ் எல்லா சர்வீஸுக்கும் பொதுவானது, உன் AniList அக்கவுண்ட்டை யூஸ் பண்ணும்.';

  @override
  String get commentsUnavailable => 'இந்த டைட்டிலுக்கு கமெண்ட்ஸ் கிடைக்கல';

  @override
  String get commentsUnavailableMessage =>
      'இதை AniList என்ட்ரியோட மேட்ச் பண்ண முடியல.';

  @override
  String get commentsDisabled => 'கமெண்ட்ஸ் ஆஃப்ல இருக்கு';

  @override
  String get commentsDisabledMessage =>
      'Settings › General-ல மறுபடி ஆன் பண்ணிக்கலாம்.';

  @override
  String get commentsOffline => 'கமெண்ட்ஸை லோட் பண்ண முடியல';

  @override
  String get commentsSingleTitle => 'ஒரு கமெண்ட்டை காட்டுது';

  @override
  String get commentsShowAll => 'எல்லா கமெண்ட்ஸையும் காட்டு';

  @override
  String get commentsSettingsHeader => 'கமெண்ட்ஸ்';

  @override
  String get commentsSettingEnabled => 'கமெண்ட்ஸ்';

  @override
  String get commentsSettingEnabledDesc =>
      'டைட்டில்ஸ்ல கமெண்ட்ஸ் டேப்பை காட்டி, உன் AniList அக்கவுண்ட்டால கமெண்ட் சர்வர்ல சைன் இன் பண்ணு';

  @override
  String get commentsSettingAlerts => 'ரிப்ளை நோட்டிபிகேஷன்ஸ்';

  @override
  String get commentsSettingAlertsDesc =>
      'யாராவது என் கமெண்ட்ஸுக்கு ரிப்ளை பண்ணா எனக்கு சொல்லு';

  @override
  String get commentsNoticeReplyTitle => 'புது கமெண்ட் ரிப்ளை';

  @override
  String commentsNoticeReply(String name) {
    return '$name உன் கமெண்ட்டுக்கு ரிப்ளை பண்ணாங்க';
  }

  @override
  String get commentsNoticeWarningTitle => 'உனக்கு ஒரு வார்னிங் வந்திருக்கு';

  @override
  String get commentsNoticeWarning => 'உன் கமெண்ட்ஸ்ல இன்னும் கவனமா இரு';

  @override
  String get commentsNoticeUpdateTitle => 'Dantotsu-ல இருந்து அப்டேட்';

  @override
  String get barcodeTitle => 'பார்கோடை ஸ்கேன் பண்ணு';

  @override
  String get barcodeTooltip => 'பார்கோடை வச்சு மங்கா அல்லது நாவலை கண்டுபிடி';

  @override
  String get barcodeIntro =>
      'வால்யூம் பின்னாடி இருக்க பார்கோடு மேல கேமராவை காட்டு, இல்லன்னா அதோட ISBN-ஐ டைப் பண்ணு.';

  @override
  String get barcodeIntroManual =>
      'வால்யூம் பின்னாடி பார்கோடு மேல பிரிண்ட் ஆன ISBN-ஐ டைப் பண்ணு.';

  @override
  String get barcodeIsbnHint => 'ISBN';

  @override
  String get barcodeInvalid => 'இது சரியான ISBN இல்ல';

  @override
  String barcodeNotFound(String isbn) {
    return '$isbn-க்கு புக் கிடைக்கல';
  }

  @override
  String get barcodeCameraDenied =>
      'கேமரா கிடைக்கல. கேமரா அக்சஸ் குடு இல்லன்னா ISBN-ஐ டைப் பண்ணு.';

  @override
  String get themesTitle => 'ஓபனிங்ஸ் & எண்டிங்ஸ்';

  @override
  String get themesPlayVideo => 'வீடியோ ப்ளே பண்ணு';

  @override
  String get themesPlayAudio => 'ஆடியோ மட்டும் ப்ளே பண்ணு';

  @override
  String get themesOpenSite => 'AnimeThemes-ல திற';

  @override
  String get themesCredit => 'AnimeThemes-ல இருந்து தீம்ஸ்';

  @override
  String get themesVersions => 'வெர்ஷன்ஸ்';

  @override
  String get sauceTitle => 'சோர்ஸை கண்டுபிடி';

  @override
  String get sauceIntro =>
      'ஒரு மங்கா பேஜ் அல்லது ஆர்ட்வொர்க்கை அப்லோட் பண்ணு, இல்லன்னா அதோட லிங்கை பேஸ்ட் பண்ணு, எங்க இருந்து வந்ததுனு கண்டுபிடிக்கலாம்.';

  @override
  String get sauceKeyTitle => 'SauceNAO API கீ';

  @override
  String get sauceKeyHint => 'ஆப்ஷனல், டெய்லி சர்ச் லிமிட்டை உயர்த்தும்';

  @override
  String get sauceKeyDesc => 'saucenao.com/user.php-ல ஃப்ரீ கீ வாங்கு';

  @override
  String get sauceOpen => 'சோர்ஸை திற';

  @override
  String get sauceCredit => 'SauceNAO-வோட இமேஜ் சர்ச்';

  @override
  String get sauceEmpty => 'மேட்ச் கிடைக்கல';

  @override
  String get sauceTooltip =>
      'ஒரு மங்கா பேஜ் அல்லது ஆர்ட்வொர்க்கோட சோர்ஸை கண்டுபிடி';

  @override
  String get trendzTitle => 'அனிமே சார்ட்ஸ்';

  @override
  String get trendzAnime => 'அனிமே';

  @override
  String get trendzFemale => 'பெண் கேரக்டர்ஸ்';

  @override
  String get trendzMale => 'ஆண் கேரக்டர்ஸ்';

  @override
  String get trendzCouple => 'கப்புள்ஸ்';

  @override
  String get trendzCredit => 'AniTrendz-ஓட வீக்லி சார்ட்ஸ்';

  @override
  String get trendzNew => 'புதுசு';

  @override
  String get trendzEmpty => 'சார்ட் காலியா இருக்கு';

  @override
  String get shareCard => 'ஷேர் கார்டு';

  @override
  String get shareCardList => 'லிஸ்ட் கார்டை ஷேர் பண்ணு';

  @override
  String get shareCardSaved => 'கார்டு சேவ் ஆயிடுச்சு';

  @override
  String get shareCardFailed => 'கார்டை உருவாக்க முடியல';

  @override
  String get shareCardListEmpty => 'உன் லிஸ்ட்ல இன்னும் ஷேர் பண்ண எதுவும் இல்ல';

  @override
  String get shareCardTop => 'என் டாப் பிக்ஸ்';

  @override
  String themesEpisodes(String eps) {
    return 'எபிசோட்ஸ் $eps';
  }

  @override
  String sauceSimilarity(String percent) {
    return '$percent% மேட்ச்';
  }

  @override
  String trendzWeek(String week, String season) {
    return 'வாரம் $week · $season';
  }

  @override
  String trendzVotes(String count) {
    return '$count வோட்ஸ்';
  }

  @override
  String trendzPeak(String rank) {
    return 'பீக் #$rank';
  }

  @override
  String trendzWeeks(String count) {
    return 'டாப் டென்ல $count வாரங்கள்';
  }

  @override
  String get imageSearchTitle => 'இமேஜ் வச்சு தேடு';

  @override
  String get imageSearchTooltip => 'ஒரு ஸ்கிரீன்ஷாட்டை வச்சு அனிமேவை கண்டுபிடி';

  @override
  String get imageSearchIntro =>
      'ஒரு ஸ்கிரீன்ஷாட்டை எடு இல்லன்னா இமேஜ் லிங்கை பேஸ்ட் பண்ணு, trace.moe அது எந்த எபிசோட், எந்த நேரம்னு கண்டுபிடிக்கும்.';

  @override
  String get imageSearchPick => 'இமேஜை தேர்ந்தெடு';

  @override
  String get imageSearchLinkHint => 'இமேஜ் லிங்கை பேஸ்ட் பண்ணு';

  @override
  String get imageSearchGo => 'தேடு';

  @override
  String get imageSearchEmpty => 'மேட்ச் கிடைக்கல';

  @override
  String get imageSearchAdult => '18+';

  @override
  String imageSearchEpisode(String number) {
    return 'எபிசோட் $number';
  }

  @override
  String imageSearchAt(String time) {
    return '$time-ல';
  }

  @override
  String get imageSearchPreview => 'ப்ரிவியூ கிளிப்';

  @override
  String imageSearchSimilarity(int percent) {
    return '$percent% மேட்ச்';
  }

  @override
  String get imageSearchCredit => 'trace.moe இயக்குது';

  @override
  String get imageSearchOpenFailed => 'இந்த டைட்டிலை திறக்க முடியல';

  @override
  String get groups => 'குரூப்ஸ்';

  @override
  String get groupsYours => 'உன் குரூப்ஸ்';

  @override
  String get groupsPopular => 'பாப்புலர்';

  @override
  String get groupsNew => 'நியூ';

  @override
  String get groupsFeatured => 'ஃபீச்சர்டு';

  @override
  String get groupsSearch => 'குரூப்ஸ் தேடு';

  @override
  String get groupsAll => 'எல்லாம்';

  @override
  String get groupsEmpty => 'குரூப்ஸ் கிடைக்கல';

  @override
  String get groupsEmptyYours => 'நீ இன்னும் எந்த குரூப்லயும் சேரல';

  @override
  String get groupsSignIn => 'நீ சேர்ந்த குரூப்ஸை பாக்க சைன் இன் பண்ணு';

  @override
  String groupsMembersCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மெம்பர்ஸ்',
      one: '1 மெம்பர்',
    );
    return '$_temp0';
  }

  @override
  String get groupsJoin => 'ஜாயின்';

  @override
  String get groupsJoined => 'ஜாயின் ஆயிட்ட';

  @override
  String get groupsLeave => 'குரூப்ல இருந்து வெளியேறு';

  @override
  String get groupsLeaveAsk => 'இந்த குரூப்போட போஸ்ட்ஸ் உன் ஃபீடுல இனி வராது.';

  @override
  String get groupsJoinFailed =>
      'இந்த குரூப்ல சேர முடியல, இது இன்வைட் ஒன்லியா இருக்கலாம்';

  @override
  String get groupsLeaveFailed => 'இந்த குரூப்ல இருந்து வெளியேற முடியல';

  @override
  String get groupsPosts => 'போஸ்ட்ஸ்';

  @override
  String get groupsMembersTab => 'மெம்பர்ஸ்';

  @override
  String get groupsAbout => 'பற்றி';

  @override
  String get groupsRules => 'ரூல்ஸ்';

  @override
  String get groupsPrivacyOpen => 'ஓபன்';

  @override
  String get groupsPrivacyRestricted => 'ரெஸ்ட்ரிக்டட்';

  @override
  String get groupsPrivacyClosed => 'குளோஸ்டு';

  @override
  String get groupsAdult => '18+';

  @override
  String get groupsRoleAdmin => 'அட்மின்';

  @override
  String get groupsRoleMod => 'மாட்';

  @override
  String get groupsCouldntLoad => 'இந்த குரூப்பை லோட் பண்ண முடியல';

  @override
  String get groupsNewPost => 'குரூப்ல போஸ்ட் பண்ணு';

  @override
  String get groupsPostHint => 'குரூப்போட ஏதாவது ஷேர் பண்ணு';

  @override
  String get groupsOpenInBrowser => 'பிரவுசர்ல திற';

  @override
  String get groupsCategory => 'கேட்டகிரி';

  @override
  String get groupsLanguage => 'மொழி';

  @override
  String get groupsCreated => 'உருவாக்கியது';

  @override
  String groupsLeaders(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count லீடர்ஸ்',
      one: '1 லீடர்',
    );
    return '$_temp0';
  }

  @override
  String get groupsPrivacy => 'பிரைவசி';

  @override
  String get notificationsAll => 'எல்லாம்';

  @override
  String get notificationsAiring => 'ஏரிங்';

  @override
  String get notificationsMedia => 'புது டைட்டில்ஸ்';

  @override
  String get notificationsReplies => 'ரிப்ளைஸ்';

  @override
  String get notificationsMentions => 'மென்ஷன்ஸ்';

  @override
  String get notificationsMessages => 'மெசேஜஸ்';

  @override
  String get notificationsLikes => 'லைக்ஸ்';

  @override
  String get notificationsFollows => 'ஃபாலோஸ்';

  @override
  String get notificationsNoServices =>
      'சைன் இன் ஆன எந்த சர்வீஸுக்கும் நோட்டிபிகேஷன்ஸ் இல்ல';

  @override
  String get notificationsNoServicesMessage =>
      'நோட்டிபிகேஷன்ஸ் அனுப்புற சர்வீஸ்ல சைன் இன் பண்ணா அவை இங்க வரும்.';

  @override
  String get notificationsEmptyKind => 'இந்த கேட்டகிரியில இன்னும் எதுவும் இல்ல';

  @override
  String get notificationsCommentsEmpty => 'கமெண்ட் நோட்டிபிகேஷன்ஸ் இல்ல';

  @override
  String get notificationsCommentsEmptyMessage =>
      'உன் கமெண்ட்ஸுக்கு ரிப்ளைஸ் & Dantotsu அறிவிப்புகள் இங்க வரும்.';

  @override
  String get notificationsSettings => 'நோட்டிபிகேஷன் செட்டிங்ஸ்';

  @override
  String get notificationsPollTitle =>
      'புது நோட்டிபிகேஷன்ஸ் இருக்கான்னு செக் பண்ணு';

  @override
  String notificationsPollDesc(int minutes) {
    return 'ஆப் ஓபன்ல இருக்கும்போது ஒவ்வொரு $minutes நிமிஷத்துக்கும்';
  }

  @override
  String get notificationsNotifyAbout => 'இதை பத்தி எனக்கு சொல்லு';

  @override
  String get notificationsCommentsHeader => 'கமெண்ட் நோட்டிபிகேஷன்ஸ்';

  @override
  String systemNotificationsDescFor(String service) {
    return 'ஆப் ஓடும்போது படிக்காத ஒவ்வொரு $service நோட்டிபிகேஷனுக்கும் சிஸ்டம் நோட்டிபிகேஷன் காட்டு.';
  }

  @override
  String get notificationsTestSent => 'டெஸ்ட் நோட்டிபிகேஷன் அனுப்பியாச்சு';

  @override
  String get notificationsTestDenied =>
      'Dartotsu-க்கு நோட்டிபிகேஷன்ஸ் அலவ் ஆகல. சிஸ்டம் செட்டிங்ஸ்ல ஆன் பண்ணு.';

  @override
  String get notificationsTestHint =>
      'டெஸ்ட் நோட்டிபிகேஷன் அனுப்ப லாங் பிரஸ் பண்ணு';

  @override
  String get notificationsTestSample => 'இது ஒரு டெஸ்ட் நோட்டிபிகேஷன்';

  @override
  String commentsNoticeReplyIn(String name, String media) {
    return '$name $media-ல உன் கமெண்ட்டுக்கு ரிப்ளை பண்ணாங்க';
  }

  @override
  String get imageSearchNotLink => 'இது லிங்க் மாதிரி தெரியல';

  @override
  String get imageSearchQuota => 'சர்ச் கோட்டா முடிஞ்சிடுச்சு';

  @override
  String get imageSearchBusy =>
      'ரொம்ப ரெக்வெஸ்ட்ஸ், கொஞ்ச நேரம் கழிச்சு ட்ரை பண்ணு';

  @override
  String imageSearchFailed(int code) {
    return 'சர்ச் ஃபெயில் ஆயிடுச்சு ($code)';
  }

  @override
  String notificationsNewCount(int count) {
    return '$count புது நோட்டிபிகேஷன்ஸ்';
  }

  @override
  String get reactionsTitle => 'ரியாக்ஷன்ஸ்';

  @override
  String get reactionsNeedEntry =>
      'ரியாக்ட் பண்றதுக்கு முன்னாடி இந்த டைட்டிலை உன் லிஸ்ட்ல சேர்';

  @override
  String get reactionsAdd => 'ஒரு ரியாக்ஷன் சேர்';

  @override
  String get reactionsHint => 'நீ என்ன நினைச்ச? (சின்னதா, ஸ்பாய்லர் இல்லாம)';

  @override
  String get reactionsPost => 'போஸ்ட்';

  @override
  String get reactionsFailed => 'ரியாக்ஷனை அப்டேட் பண்ண முடியல';

  @override
  String get settingsWatch => 'பாரு & படி';

  @override
  String get settingsWatchDesc =>
      'எபிசோட் லிஸ்ட்ஸ், சோர்ஸ் மேட்சிங் & எபிசோட் டிடெயில்ஸ்';

  @override
  String get watchSettingsLayout => 'எபிசோட் லிஸ்ட்';

  @override
  String get watchSettingsSources => 'சோர்ஸஸ்';

  @override
  String get watchSettingsMetadata => 'எபிசோட் டிடெயில்ஸ்';

  @override
  String get watchLayout => 'லேஅவுட்';

  @override
  String get watchListView => 'லிஸ்ட்';

  @override
  String get watchGridView => 'கிரிட்';

  @override
  String get watchCompactView => 'காம்பேக்ட்';

  @override
  String get watchDefaultLayoutDesc =>
      'ஒரு டைட்டிலுக்கு மாத்தாத வரை எபிசோட்ஸ் & சாப்டர்ஸ் எப்படி இருக்கணும்';

  @override
  String get watchChunkSize => 'ரேஞ்ச் சைஸ்';

  @override
  String get watchChunkSizeDesc =>
      'ஒவ்வொரு ரேஞ்ச் டேப்லயும் எத்தனை எபிசோட்ஸ் அல்லது சாப்டர்ஸ்';

  @override
  String get watchShowDescription => 'டிஸ்கிரிப்ஷன்ஸ் காட்டு';

  @override
  String get watchShowDescriptionDesc =>
      'லிஸ்ட் லேஅவுட்ல ஒவ்வொரு டைட்டிலுக்கு கீழயும் எபிசோட் சம்மரியை காட்டு';

  @override
  String get watchShowFiller => 'ஃபில்லர் எபிசோட்ஸ் காட்டு';

  @override
  String get watchShowFillerDesc =>
      'ஃபில்லர்னு மார்க் பண்ண எபிசோட்ஸை மறைக்க ஆஃப் பண்ணு';

  @override
  String get watchBlurUnwatched => 'ஸ்பாய்லர் தம்ப்னெயில்ஸை மறை';

  @override
  String get watchBlurUnwatchedDesc =>
      'நீ இன்னும் பாக்காத எபிசோட்ஸ் தம்ப்னெயிலை ப்ளர் பண்ணு';

  @override
  String get watchResumeShelf => 'ரிசூம் ஷெல்ஃப்';

  @override
  String get watchResumeShelfDesc => 'ஹோம்ல ரிசூம் ரோவை காட்டு';

  @override
  String get watchMarkOnLongPress => 'லாங் பிரஸ் புரோகிரஸ் மார்க் பண்ணும்';

  @override
  String get watchMarkOnLongPressDesc =>
      'ஒரு எபிசோட் அல்லது சாப்டரை லாங் பிரஸ் பண்ணா பாத்தது/பாக்காததுனு மார்க் ஆகும்';

  @override
  String get watchMatching => 'சோர்ஸ் மேட்சிங்';

  @override
  String get watchMatchingDesc =>
      'க்ளோசஸ்ட் பெஸ்ட் சர்ச் ரிசல்ட்டை எடுக்கும். எக்ஸாக்ட் ஒன்லி கிட்டத்தட்ட ஒரே மாதிரி டைட்டிலை மட்டும் ஏத்துக்கும், மீதியை நீ தேர்ந்தெடுக்க விட்டுடும்.';

  @override
  String get watchMatchClosest => 'க்ளோசஸ்ட் மேட்ச்';

  @override
  String get watchMatchExact => 'எக்ஸாக்ட் மேட்ச் மட்டும்';

  @override
  String get watchMetadataDesc =>
      'எபிசோட் டைட்டில்ஸ், சம்மரீஸ், தம்ப்னெயில்ஸ், ஏர் டேட்ஸ் & ஃபில்லர் ஃபிளாக்ஸ் எங்க இருந்து வருது. ப்ரையாரிட்டி செட் பண்ண டிராக் பண்ணு; வேல்யூ இருக்க முதல் சோர்ஸ் ஜெயிக்கும்.';

  @override
  String get watchMetaAniZipDesc =>
      'எபிசோட் டைட்டில்ஸ், சம்மரீஸ், ஸ்டில்ஸ் & ஏர் டேட்ஸ்';

  @override
  String get watchMetaKitsuDesc =>
      'எபிசோட் டைட்டில்ஸ், டிஸ்கிரிப்ஷன்ஸ் & தம்ப்னெயில்ஸ்';

  @override
  String get watchMetaSimklDesc =>
      'எபிசோட் டைட்டில்ஸ், டிஸ்கிரிப்ஷன்ஸ், ஸ்டில்ஸ் & ஏர் டேட்ஸ்';

  @override
  String get watchMetaAniListDesc =>
      'ஸ்ட்ரீமிங் எபிசோட் டைட்டில்ஸ், தம்ப்னெயில்ஸ் & ஏரிங் ஷெட்யூல்';

  @override
  String get watchMetaTenraiDesc =>
      'Tenrai வழியா MyAnimeList எபிசோட் டைட்டில்ஸ், ஏர் டேட்ஸ், ஃபில்லர் & ரீகேப் ஃபிளாக்ஸ்';

  @override
  String get watchClearMetadata => 'எபிசோட் டிடெயில்ஸை ரெஃப்ரெஷ் பண்ணு';

  @override
  String get watchClearMetadataDesc =>
      'கேஷ் ஆன எபிசோட் டிடெயில்ஸை மறந்துடு, மறுபடி ஃபெட்ச் ஆகும்';

  @override
  String get watchMetadataCleared => 'எபிசோட் டிடெயில்ஸ் மறுபடி ஃபெட்ச் ஆகும்';

  @override
  String watchEpisodeCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count எபிசோட்ஸ்',
      one: '1 எபிசோட்',
    );
    return '$_temp0';
  }

  @override
  String watchChapterCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count சாப்டர்ஸ்',
      one: '1 சாப்டர்',
    );
    return '$_temp0';
  }

  @override
  String watchEpisodeNumber(String number) {
    return 'எபிசோட் $number';
  }

  @override
  String watchChapterNumber(String number) {
    return 'சாப்டர் $number';
  }

  @override
  String get watchSearching => 'தேடுறேன்…';

  @override
  String watchSearchingFor(String term) {
    return 'தேடுறேன்: $term';
  }

  @override
  String watchSelected(String title) {
    return 'செலக்ட் ஆனது: $title';
  }

  @override
  String watchFound(String title) {
    return 'கிடைச்சது: $title';
  }

  @override
  String get watchNothingFound => 'இந்த சோர்ஸ்ல எதுவும் கிடைக்கல';

  @override
  String get watchSearchFailed => 'சோர்ஸ் சர்ச் ஃபெயில் ஆயிடுச்சு';

  @override
  String get watchLoadFailed => 'லிஸ்ட்டை லோட் பண்ண முடியல';

  @override
  String get watchSignInToTrack => 'உன் புரோகிரஸை டிராக் பண்ண சைன் இன் பண்ணு';

  @override
  String watchInstallSource(String action) {
    return '$action ஆரம்பிக்க ஒரு எக்ஸ்டென்ஷனை இன்ஸ்டால் பண்ணு';
  }

  @override
  String get watchSourceMissing => 'இந்த சோர்ஸ் இன்ஸ்டால் ஆகல';

  @override
  String get watchWrongTitle => 'தப்பான டைட்டிலா?';

  @override
  String get watchSearchAgain => 'மறுபடி தேடு';

  @override
  String watchSearchSource(String source) {
    return '$source தேடு';
  }

  @override
  String get watchSource => 'சோர்ஸ்';

  @override
  String get watchOptions => 'ஆப்ஷன்ஸ்';

  @override
  String get watchReverse => 'ஆர்டரை ரிவர்ஸ் பண்ணு';

  @override
  String get watchScanlators => 'குரூப்ஸ்';

  @override
  String get watchResetOptions => 'இந்த ஆப்ஷன்ஸை ரீசெட் பண்ணு';

  @override
  String get watchContinue => 'கன்டினியூ';

  @override
  String get watchStart => 'ஸ்டார்ட்';

  @override
  String get watchPlay => 'ப்ளே';

  @override
  String get watchRead => 'ரீட்';

  @override
  String get watchMarkWatched => 'பாத்ததா மார்க் பண்ணு';

  @override
  String get watchMarkUnwatched => 'பாக்கலன்னு மார்க் பண்ணு';

  @override
  String get watchMarkRead => 'படிச்சதா மார்க் பண்ணு';

  @override
  String get watchMarkUnread => 'படிக்கலன்னு மார்க் பண்ணு';

  @override
  String get watchFiller => 'ஃபில்லர்';

  @override
  String get watchRecap => 'ரீகேப்';

  @override
  String get watchNoEpisodes => 'எபிசோட்ஸ் கிடைக்கல';

  @override
  String get watchNoChapters => 'சாப்டர்ஸ் கிடைக்கல';

  @override
  String get watchSourceTools => 'சோர்ஸ் டூல்ஸ்';

  @override
  String get watchSourceSettings => 'சோர்ஸ் செட்டிங்ஸ்';

  @override
  String get watchOpenWebView => 'வெப் வியூவில் திற';

  @override
  String get watchOpenWebViewDesc =>
      'Cloudflare செக்கை சால்வ் பண்ணு இல்லன்னா லாகின் பண்ணு; குக்கீஸ் சோர்ஸ் ரெக்வெஸ்ட்ஸோட ஷேர் ஆகும்';

  @override
  String watchCookieCount(int count, String host) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$host-க்கு $count குக்கீஸ் சேவ் ஆயிருக்கு',
      one: '$host-க்கு 1 குக்கீ சேவ் ஆயிருக்கு',
      zero: '$host-க்கு குக்கீஸ் சேவ் ஆகல',
    );
    return '$_temp0';
  }

  @override
  String watchClearanceActive(String time) {
    return 'Cloudflare கிளியரன்ஸ் ஆக்டிவ், $time';
  }

  @override
  String get watchClearanceMissing => 'Cloudflare கிளியரன்ஸ் குக்கீ இல்ல';

  @override
  String get watchClearanceSession => 'ஆப் க்ளோஸ் ஆகும் வரை இருக்கும்';

  @override
  String get watchAgentShared =>
      'ரெக்வெஸ்ட்ஸ் வெப் வியூவோட யூசர் ஏஜென்ட்டை யூஸ் பண்ணும், Cloudflare அதை செக் பண்ணும்';

  @override
  String get watchAgentCustom =>
      'கஸ்டம் யூசர் ஏஜென்ட் செட் ஆகியிருக்கு, அதனால வெப் வியூ Cloudflare கிளியரன்ஸ் ரிஜெக்ட் ஆகலாம்';

  @override
  String get watchTestConnection => 'கனெக்ஷனை டெஸ்ட் பண்ணு';

  @override
  String get watchSolveChallenge => 'சால்வ் பண்ணு';

  @override
  String watchProbeOk(int code) {
    return 'ரீச்சபிள் (HTTP $code)';
  }

  @override
  String get watchProbeChallenge => 'Cloudflare இன்னும் செக் கேக்குது';

  @override
  String watchProbeBlocked(int code) {
    return 'சைட் பிளாக் பண்ணிடுச்சு (HTTP $code)';
  }

  @override
  String get watchProbeFailed => 'சைட்டை ரீச் பண்ண முடியல';

  @override
  String get watchClearCookies => 'இந்த சைட்டோட குக்கீஸை கிளியர் பண்ணு';

  @override
  String get watchCookiesCleared => 'குக்கீஸ் கிளியர் ஆயிடுச்சு';

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
  String get watchMetaSource => 'எபிசோட் டிடெயில்ஸ் எங்க இருந்து';

  @override
  String get watchMetaAuto => 'ஆட்டோமேட்டிக்';

  @override
  String get watchMetaOff => 'ஆஃப்';

  @override
  String get playerSettingsTitle => 'பிளேயர் செட்டிங்ஸ்';

  @override
  String get playerSectionPlayback => 'ப்ளேபேக்';

  @override
  String get playerSectionSkip => 'ஸ்கிப்பிங்';

  @override
  String get playerSectionGestures => 'கன்ட்ரோல்ஸ்';

  @override
  String get playerSectionSubtitles => 'சப்டைட்டில்ஸ்';

  @override
  String get playerSectionShaders => 'ஷேடர்ஸ்';

  @override
  String get playerSectionEngine => 'என்ஜின்';

  @override
  String get playerSectionMpv => 'mpv';

  @override
  String get playerSpeed => 'ப்ளேபேக் ஸ்பீட்';

  @override
  String get playerCursedSpeed => 'எக்ஸ்ட்ரா ஸ்பீட்ஸ்';

  @override
  String get playerCursedSpeedDesc => '10x வரை ஸ்பீட்ஸை லிஸ்ட்ல சேர்';

  @override
  String get playerResize => 'ரீசைஸ் மோட்';

  @override
  String get playerFitFit => 'ஃபிட்';

  @override
  String get playerFitCover => 'கவர்';

  @override
  String get playerFitStretch => 'ஸ்ட்ரெட்ச்';

  @override
  String get playerSkipDuration => 'ஸ்கிப் பட்டன் லெங்த்';

  @override
  String get playerSkipDurationDesc =>
      'ஓபனிங்ஸ் & எண்டிங்ஸுக்கு வெளியே ஸ்கிப் பட்டன் தாண்டுற செகண்ட்ஸ்';

  @override
  String get playerSeekDuration => 'டபுள் டேப் சீக்';

  @override
  String get playerSeekDurationDesc =>
      'டபுள் டேப் அல்லது ஆரோ கீக்கு தாண்டுற செகண்ட்ஸ்';

  @override
  String get playerAutoPlay => 'அடுத்ததை தானா ப்ளே பண்ணு';

  @override
  String get playerAutoPlayDesc =>
      'இது முடிஞ்சதும் அடுத்த எபிசோடை ஸ்டார்ட் பண்ணு';

  @override
  String get playerResume => 'விட்ட இடத்துல இருந்து ரிசூம் பண்ணு';

  @override
  String get playerResumeDesc =>
      'ஒரு எபிசோடை கடைசியா நிறுத்தின இடத்துல இருந்து கன்டினியூ பண்ணு';

  @override
  String get playerOrientation => 'ஓரியன்டேஷன்';

  @override
  String get playerOrientationAuto => 'டிவைஸை ஃபாலோ பண்ணு';

  @override
  String get playerOrientationLandscape => 'லேண்ட்ஸ்கேப்';

  @override
  String get playerOrientationPortrait => 'போர்ட்ரெய்ட்';

  @override
  String get playerAutoSkipOpening => 'ஓபனிங்ஸை ஸ்கிப் பண்ணு';

  @override
  String get playerAutoSkipEnding => 'எண்டிங்ஸை ஸ்கிப் பண்ணு';

  @override
  String get playerAutoSkipRecap => 'ரீகேப்ஸை ஸ்கிப் பண்ணு';

  @override
  String get playerAutoSkipDesc =>
      'AniSkip & ஸ்ட்ரீம் டைம்ஸ்டாம்ப்ஸை வச்சு, ஆரம்பிச்சதும் தாண்டிடு';

  @override
  String get playerSkipOnce => 'ஒரு தடவை மட்டும் ஸ்கிப் பண்ணு';

  @override
  String get playerSkipOnceDesc =>
      'நீ திரும்ப சீக் பண்ணா அதே பார்ட்டை மறுபடி ஸ்கிப் பண்ணாத';

  @override
  String get playerAdjustBrightness => 'ப்ரைட்னெஸ் ஜெஸ்ச்சர்';

  @override
  String get playerAdjustBrightnessDesc =>
      'ஸ்கிரீனோட வலது பாதில மேல கீழ ஸ்வைப் பண்ணு';

  @override
  String get playerAdjustVolume => 'வால்யூம் ஜெஸ்ச்சர்';

  @override
  String get playerAdjustVolumeDesc =>
      'ஸ்கிரீனோட இடது பாதில மேல கீழ ஸ்வைப் பண்ணு';

  @override
  String get playerHoldToSpeed => 'ஹோல்ட் பண்ணா ஸ்பீடு ஆகும்';

  @override
  String get playerHoldToSpeedDesc =>
      'வீடியோவை பிரஸ் பண்ணி ஹோல்ட் பண்ணா வேகமா ப்ளே ஆகும், ஸ்பீடை மாத்த பக்கவாட்டுல டிராக் பண்ணு';

  @override
  String get playerThumbless => 'தடிமனான சீக் பார்';

  @override
  String get playerThumblessDesc => 'தம்ப் இல்லாத தடிமனான பார்';

  @override
  String get playerShowSubtitles => 'சப்டைட்டில்ஸ் காட்டு';

  @override
  String get playerShowSubtitlesDesc =>
      'எல்லா சப்டைட்டில் டிராக்கையும் மறைக்க ஆஃப் பண்ணு';

  @override
  String get playerSubtitleLanguage => 'விருப்பமான சப்டைட்டில் மொழி';

  @override
  String get playerSubtitleSize => 'சப்டைட்டில் சைஸ்';

  @override
  String get playerSubtitleWeight => 'சப்டைட்டில் வெயிட்';

  @override
  String get playerSubtitleBottom => 'சப்டைட்டில் பாட்டம் பேடிங்';

  @override
  String get playerSubtitleFont => 'சப்டைட்டில் ஃபாண்ட்';

  @override
  String get playerSubtitleColor => 'சப்டைட்டில் கலர்';

  @override
  String get playerSubtitleBackground => 'சப்டைட்டில் பேக்ரவுண்ட்';

  @override
  String get playerSubtitleOutline => 'சப்டைட்டில் அவுட்லைன்';

  @override
  String get playerLibass => 'libass யூஸ் பண்ணு';

  @override
  String get playerLibassDesc =>
      'ஸ்டைல் பண்ண .ass சப்டைட்டில்ஸை ரெண்டர் பண்ணு. மேல இருக்க சைஸ், கலர் & ஃபாண்ட் அப்புறம் அப்ளை ஆகாது';

  @override
  String get playerShaders => 'ஷேடர்ஸ்';

  @override
  String get playerShadersEnable => 'ஷேடர்ஸை என்னேபிள் பண்ணு';

  @override
  String get playerShadersEnableDesc =>
      'Anime4K மாதிரி GLSL ஷேடர்ஸ் வச்சு பிக்சரை அப்ஸ்கேல் பண்ணி க்ளீன் பண்ணு';

  @override
  String get playerShadersOff => 'ஷேடர்ஸ் ஆஃப்';

  @override
  String get playerShadersMissing => 'Anime4K இன்ஸ்டால் ஆகல';

  @override
  String get playerShadersMissingDesc =>
      'பில்ட்-இன் மோட்ஸ் யூஸ் பண்ண Anime4K ஷேடர் பேக்கை (சுமார் 0.8 MB) டவுன்லோட் பண்ணு.';

  @override
  String get playerShadersDownload => 'Anime4K டவுன்லோட் பண்ணு';

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
  String get playerShadersPreview => 'இந்த ஃப்ரேம்ல ப்ரிவியூ பாரு';

  @override
  String get playerShadersUse => 'இதை யூஸ் பண்ணு';

  @override
  String get playerPicture => 'பிக்சர்';

  @override
  String get playerColors => 'கலர்ஸ்';

  @override
  String get playerColorDefault => 'டீஃபால்ட்';

  @override
  String get playerColorVivid => 'விவிட்';

  @override
  String get playerColorPop => 'அனிமே பாப்';

  @override
  String get playerColorSoft => 'சாஃப்ட்';

  @override
  String get playerColorCinematic => 'சினிமாட்டிக்';

  @override
  String get playerColorBright => 'ப்ரைட்';

  @override
  String get playerColorNight => 'நைட்';

  @override
  String get playerColorMono => 'மோனோ';

  @override
  String get playerColorCustom => 'கஸ்டம்';

  @override
  String get playerColorBrightness => 'ப்ரைட்னெஸ்';

  @override
  String get playerColorContrast => 'கான்ட்ராஸ்ட்';

  @override
  String get playerColorSaturation => 'சாச்சுரேஷன்';

  @override
  String get playerColorGamma => 'காமா';

  @override
  String get playerColorHue => 'ஹ்யூ';

  @override
  String get playerColorReset => 'ரீசெட்';

  @override
  String get playerColorAdjust => 'அட்ஜஸ்ட்';

  @override
  String get playerShadersOriginal => 'ஒரிஜினல்';

  @override
  String get playerShadersPreviewFailed =>
      'ப்ரிவியூ பண்ண ஃப்ரேம் எடுக்க முடியல';

  @override
  String get playerShadersSoftware =>
      'Shaders need hardware rendering, and the player is using software rendering. Turn Software rendering off in Player settings.';

  @override
  String get playerSoftwareRender => 'Software rendering';

  @override
  String get playerSoftwareRenderDesc =>
      'Only for a black video. Shaders don\'t work with it. Applies the next time the player opens';

  @override
  String get playerShadersCustomFiles => 'உன் ஷேடர்ஸ்';

  @override
  String get playerShadersCustom => 'கஸ்டம் ஷேடர்ஸ்';

  @override
  String get playerShadersImport => '.glsl இம்போர்ட் பண்ணு';

  @override
  String get playerShadersNone =>
      'உன் சொந்த .glsl அல்லது .hook ஃபைல்ஸை இம்போர்ட் பண்ணி, செயின் பண்ண டிக் பண்ணு';

  @override
  String get playerShadersBadFile =>
      'ஒரு .glsl அல்லது .hook ஷேடர் ஃபைலை தேர்ந்தெடு';

  @override
  String get playerDecoder => 'டிகோடர்';

  @override
  String get playerDecoderAuto => 'ஆட்டோ';

  @override
  String get playerDecoderAutoSafe => 'ஆட்டோ (சேஃப்)';

  @override
  String get playerDecoderSoftware => 'சாஃப்ட்வேர்';

  @override
  String get playerDecoderHardware => 'ஹார்டுவேர்';

  @override
  String get playerDecoderHardwarePlus => 'ஹார்டுவேர்+';

  @override
  String get playerVideoOutput => 'வீடியோ அவுட்புட்';

  @override
  String get playerAudioChannels => 'ஆடியோ சேனல்ஸ்';

  @override
  String get playerBuffer => 'பஃபர் சைஸ் (MB)';

  @override
  String get playerBufferDesc =>
      'ஸ்ட்ரீமை பஃபர் பண்ண பிளேயர் யூஸ் பண்ணக்கூடிய மெமரி';

  @override
  String get playerUseMpvConf => 'mpv.conf யூஸ் பண்ணு';

  @override
  String get playerUseMpvConfDesc =>
      'ப்ளேபேக் ஸ்டார்ட் ஆகும்போது உன் mpv.conf-ல இருக்க ஆப்ஷன்ஸை அப்ளை பண்ணு';

  @override
  String get playerMpvConf => 'mpv.conf';

  @override
  String get playerMpvConfEdit => 'mpv கான்ஃபிகரேஷனை எடிட் பண்ணு';

  @override
  String get playerMpvConfDesc =>
      'ஒரு வரிக்கு ஒரு ஆப்ஷன், சாதாரண mpv.conf-ல --hwdec=auto மாதிரி. [பிராக்கெட்ஸ்]ல இருக்க ப்ரொஃபைல்ஸ் கண்டுக்கப்படாது.';

  @override
  String get playerMpvConfSaved => 'mpv.conf சேவ் ஆயிடுச்சு';

  @override
  String get playerUseScripts => 'mpv ஸ்கிரிப்ட்ஸ் யூஸ் பண்ணு';

  @override
  String get playerUseScriptsDesc =>
      'ஸ்கிரிப்ட்ஸ் ஃபோல்டர்ல இருந்து பிளகின்ஸை லோட் பண்ணு. அவைக்கு Lua அல்லது JavaScript சப்போர்ட் இருக்க libmpv பில்ட் வேணும்';

  @override
  String get playerScripts => 'mpv ஸ்கிரிப்ட்ஸ்';

  @override
  String get playerScriptsManage => 'பிளகின்ஸை சேர், நீக்கு & ஸ்விட்ச் பண்ணு';

  @override
  String get playerScriptsAdd => 'ஸ்கிரிப்ட் சேர்';

  @override
  String get playerScriptsDesc =>
      'இங்க வச்ச Lua, JavaScript & நேட்டிவ் பிளகின்ஸ் ப்ளேபேக் ஸ்டார்ட் ஆகும்போது லோட் ஆகும்.';

  @override
  String get playerScriptsNone => 'இன்னும் ஸ்கிரிப்ட்ஸ் இல்ல';

  @override
  String get playerScriptsBadFile =>
      'ஒரு .lua, .js அல்லது நேட்டிவ் பிளகின் ஃபைலை தேர்ந்தெடு';

  @override
  String get playerTuning => 'அட்வான்ஸ்டு வீடியோ டியூனிங்';

  @override
  String get playerTuningDesc =>
      'சிங்க், கேஷிங், ஸ்கேலிங் & டோன் மேப்பிங்கை ஓவர்ரைட் பண்ணு. தப்பான வேல்யூஸ் ப்ளேபேக்கை கெடுக்கலாம்';

  @override
  String get playerVideoSync => 'வீடியோ சிங்க்';

  @override
  String get playerInterpolation => 'ஃப்ரேம் இன்டர்போலேஷன்';

  @override
  String get playerInterpolationDesc =>
      'ஸ்மூத் மோஷன், display-resample சிங்க் வேணும்';

  @override
  String get playerPitch => 'பிட்ச் கரெக்ஷன்';

  @override
  String get playerPitchDesc => 'வேற ஸ்பீட்ஸ்லயும் குரல்களை நேச்சுரலா வை';

  @override
  String get playerCacheSeconds => 'கேஷ் (செகண்ட்ஸ்)';

  @override
  String get playerReadahead => 'ரீட் அஹெட் (செகண்ட்ஸ்)';

  @override
  String get playerThreads => 'டிகோடர் த்ரெட்ஸ்';

  @override
  String get playerDeband => 'டிபேண்ட்';

  @override
  String get playerDebandDesc => 'கிரேடியன்ட்ஸ்ல கலர் பேண்டிங்கை குறை';

  @override
  String get playerDebandIterations => 'டிபேண்ட் இட்டரேஷன்ஸ்';

  @override
  String get playerDebandThreshold => 'டிபேண்ட் த்ரெஷோல்ட்';

  @override
  String get playerCorrectDownscaling => 'கரெக்ட் டவுன்ஸ்கேலிங்';

  @override
  String get playerSigmoid => 'சிக்மாய்டு அப்ஸ்கேலிங்';

  @override
  String get playerScale => 'அப்ஸ்கேலர்';

  @override
  String get playerCscale => 'க்ரோமா அப்ஸ்கேலர்';

  @override
  String get playerDscale => 'டவுன்ஸ்கேலர்';

  @override
  String get playerToneMapping => 'டோன் மேப்பிங்';

  @override
  String get playerTargetPeak => 'டார்கெட் பீக்';

  @override
  String get playerOpenFiles => 'வீடியோ ஃபைல்ஸை திற';

  @override
  String get playerOpenFilesDesc => 'இந்த டிவைஸ்ல இருக்க ஃபைல்ஸை ப்ளே பண்ணு';

  @override
  String get playerOpenFolder => 'ஒரு ஃபோல்டரை திற';

  @override
  String get playerOpenFolderDesc =>
      'ஃபோல்டர்ல இருக்க எல்லா வீடியோவையும் பிளேலிஸ்ட்டா ப்ளே பண்ணு';

  @override
  String get playerNetworkStream => 'நெட்வொர்க் ஸ்ட்ரீம்';

  @override
  String get playerNetworkStreamDesc => 'டைரக்ட் வீடியோ அல்லது HLS லிங்கை திற';

  @override
  String get playerStreamUrl => 'ஸ்ட்ரீம் URL';

  @override
  String get playerStreamReferer => 'ரெஃபரர் (ஆப்ஷனல்)';

  @override
  String get playerTorrent => 'டொரண்ட்';

  @override
  String get playerTorrentDesc =>
      'மேக்னட் லிங்க் அல்லது .torrent ஃபைலை ஸ்ட்ரீம் பண்ணு';

  @override
  String get playerMagnetLink => 'மேக்னட் லிங்க் அல்லது டொரண்ட் URL';

  @override
  String get playerPickTorrent => 'ஒரு .torrent ஃபைலை தேர்ந்தெடு';

  @override
  String get playerTorrentMissing =>
      'முதல்ல Settings > Addons-ல இருந்து டொரண்ட் ஆட்-ஆனை இன்ஸ்டால் பண்ணு';

  @override
  String get playerNoVideos => 'ப்ளே பண்ற வீடியோஸ் கிடைக்கல';

  @override
  String get playerReset => 'பிளேயர் செட்டிங்ஸை ரீசெட் பண்ணு';

  @override
  String get playerResetDesc =>
      'எல்லா பிளேயர் ஆப்ஷனையும் டீஃபால்ட்டுக்கு மாத்து';

  @override
  String get playerResetConfirm =>
      'எல்லா பிளேயர் செட்டிங்ஸையும் ரீசெட் பண்ணவா?';

  @override
  String get playerResetDone => 'பிளேயர் செட்டிங்ஸ் ரீசெட் ஆயிடுச்சு';

  @override
  String get playerQuality => 'குவாலிட்டி';

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
  String get playerStreams => 'ஸ்ட்ரீம்ஸ்';

  @override
  String get playerAutoSelect => 'ஸ்ட்ரீமை தானா செலக்ட் பண்ணு';

  @override
  String get playerAutoSelectDesc =>
      'இந்த டைட்டிலுக்கு உன் கடைசி தேர்வு மாதிரியே இருக்க ஸ்ட்ரீமை எடு';

  @override
  String get playerLoadingStreams => 'ஸ்ட்ரீம்ஸை தேடுறேன்…';

  @override
  String get playerNoStreams => 'இந்த எபிசோடுக்கு ஸ்ட்ரீம்ஸ் இல்ல';

  @override
  String get playerNoStreamsTitle => 'ஸ்ட்ரீம்ஸ் கிடைக்கல';

  @override
  String get playerFailed => 'ப்ளேபேக் ஃபெயில் ஆயிடுச்சு';

  @override
  String get playerTorrentNeeded => 'இந்த ஸ்ட்ரீம் ஒரு டொரண்ட்';

  @override
  String get playerTorrentNeededDesc =>
      'மேக்னட் லிங்க்ஸ் & .torrent ஃபைல்ஸை ப்ளே பண்ண டொரண்ட் ஆட்-ஆனை இன்ஸ்டால் பண்ணு';

  @override
  String get playerOpenAddons => 'ஆட்-ஆன்ஸை திற';

  @override
  String get playerTryAnotherStream => 'வேற ஸ்ட்ரீமை ட்ரை பண்ணு';

  @override
  String get playerEpisodes => 'எபிசோட்ஸ்';

  @override
  String get playerLock => 'கன்ட்ரோல்ஸை லாக் பண்ணு';

  @override
  String get playerFullscreen => 'ஃபுல்ஸ்கிரீன்';

  @override
  String get readerChapters => 'சாப்டர்ஸ்';

  @override
  String get readerSettingsTitle => 'ரீடர் செட்டிங்ஸ்';

  @override
  String get readerPreviousChapter => 'முந்தின சாப்டர்';

  @override
  String get readerNextChapter => 'அடுத்த சாப்டர்';

  @override
  String get readerFirstChapter => 'இதுதான் முதல் சாப்டர்';

  @override
  String get readerLastChapter => 'எல்லாத்தையும் படிச்சு முடிச்சிட்ட';

  @override
  String get readerFailed => 'இந்த சாப்டரை திறக்க முடியல';

  @override
  String get readerOpenBook => 'Open a book';

  @override
  String get readerOpenBookDesc =>
      'Read an epub (novel reader) or a PDF (manga reader) from your files';

  @override
  String get readerNoText => 'இந்த சாப்டர்ல டெக்ஸ்ட் இல்ல';

  @override
  String get readerPerTitle => 'இந்த டைட்டிலுக்கு மட்டும்';

  @override
  String get readerPerTitleDesc =>
      'இந்த ரீடர் செட்டிங்ஸை இந்த டைட்டிலுக்கு மட்டும் வச்சுக்கோ';

  @override
  String get readerSectionReading => 'ரீடிங்';

  @override
  String get readerSectionControls => 'கன்ட்ரோல்ஸ்';

  @override
  String get readerSectionDisplay => 'டிஸ்ப்ளே';

  @override
  String get readerSectionNovel => 'நாவல்';

  @override
  String get readerMode => 'ரீடிங் மோட்';

  @override
  String get readerModeAuto => 'Auto (by series type)';

  @override
  String get readerModeRtl => 'வலமிருந்து இடம்';

  @override
  String get readerModeLtr => 'இடமிருந்து வலம்';

  @override
  String get readerModeVertical => 'வெர்டிகல் பேஜஸ்';

  @override
  String get readerModeWebtoon => 'வெப்டூன்';

  @override
  String get readerModeContinuous => 'கன்டினியூஸ் ஸ்க்ரோல்';

  @override
  String get readerScale => 'இமேஜ் ஸ்கேல்';

  @override
  String get readerScaleFit => 'ஃபிட் ஸ்கிரீன்';

  @override
  String get readerScaleWidth => 'ஃபிட் விட்த்';

  @override
  String get readerScaleHeight => 'ஃபிட் ஹைட்';

  @override
  String get readerScaleOriginal => 'ஒரிஜினல் சைஸ்';

  @override
  String get readerScaleSmart => 'ஸ்மார்ட் ஃபிட்';

  @override
  String get readerDoublePage => 'டபுள் பேஜஸ்';

  @override
  String get readerDoublePageDesc =>
      'லேண்ட்ஸ்கேப்ல ரெண்டு பேஜை பக்கத்துல பக்கத்துல காட்டு';

  @override
  String get readerDoubleTapZoom => 'டபுள் டேப் பண்ணி ஜூம் பண்ணு';

  @override
  String get readerDoubleTapZoomDesc =>
      'டபுள் டேப் பண்ணி பேஜை ஜூம் இன்/அவுட் பண்ணு';

  @override
  String get readerAnimate => 'பேஜ் அனிமேஷன்';

  @override
  String get readerAnimateDesc => 'பேஜ் டர்ன்ஸை அனிமேட் பண்ணு';

  @override
  String get readerSidePadding => 'சைடு பேடிங்';

  @override
  String get readerSidePaddingDesc => 'பேஜ்ஸ் பக்கத்துல இடம் சதவீதத்துல';

  @override
  String get readerPageGap => 'பேஜ் கேப்';

  @override
  String get readerPageGapDesc => 'பேஜ்ஸ் இடையில இடம்';

  @override
  String get readerAutoNext => 'அடுத்த சாப்டருக்கு தொடர்ந்து போ';

  @override
  String get readerAutoNextDesc =>
      'இந்த சாப்டரோட கடைசியை படிக்கும்போதே அடுத்த சாப்டரை லோட் பண்ணு';

  @override
  String get readerPreload => 'பேஜ்ஸை ப்ரீலோட் பண்ணு';

  @override
  String get readerPreloadDesc => 'எத்தனை பேஜ் முன்னாடியே டவுன்லோட் பண்ணணும்';

  @override
  String get readerTapZones => 'டேப் ஜோன்ஸ்';

  @override
  String get readerTapDefault => 'டீஃபால்ட்';

  @override
  String get readerTapLShaped => 'L-ஷேப்டு';

  @override
  String get readerTapKindle => 'கிண்டில் மாதிரி';

  @override
  String get readerTapEdge => 'எட்ஜஸ் மட்டும்';

  @override
  String get readerTapOff => 'டிசேபிள்டு';

  @override
  String get readerInvertTaps => 'டேப் ஜோன்ஸை இன்வெர்ட் பண்ணு';

  @override
  String get readerInvertTapsDesc => 'முந்தின & அடுத்த ஏரியாவை மாத்து';

  @override
  String get readerBackground => 'பேக்ரவுண்ட்';

  @override
  String get readerBackgroundBlack => 'பிளாக்';

  @override
  String get readerBackgroundGray => 'கிரே';

  @override
  String get readerBackgroundWhite => 'வொயிட்';

  @override
  String get readerBackgroundTheme => 'ஆப் தீம்';

  @override
  String get readerFilter => 'கலர் ஃபில்டர்';

  @override
  String get readerFilterNone => 'எதுவும் இல்ல';

  @override
  String get readerFilterGrayscale => 'கிரேஸ்கேல்';

  @override
  String get readerFilterInvert => 'இன்வெர்ட்';

  @override
  String get readerFilterSepia => 'செபியா';

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
  String get readerDim => 'டிம்';

  @override
  String get readerDimDesc => 'பேஜஸை டார்க் பண்ணு';

  @override
  String get readerPageNumber => 'பேஜ் நம்பர்';

  @override
  String get readerPageNumberDesc => 'படிக்கும்போது பேஜ் நம்பரை காட்டு';

  @override
  String get readerFullscreen => 'ஃபுல்ஸ்கிரீன்';

  @override
  String get readerFullscreenDesc => 'சிஸ்டம் பார்ஸை மறை';

  @override
  String get readerCropBorders => 'கிராப் பார்டர்ஸ்';

  @override
  String get readerCropBordersDesc =>
      'பேஜ்ல இருக்க காலி வெள்ளை அல்லது கருப்பு மார்ஜின்ஸை வெட்டு';

  @override
  String get readerLongPressSave => 'Hold a page to save it';

  @override
  String get readerLongPressSaveDesc =>
      'Long press a page to open save, share and copy options';

  @override
  String get readerVolumeKeys => 'வால்யூம் கீஸ் பேஜ் திருப்பும்';

  @override
  String get readerVolumeKeysDesc =>
      'வால்யூம் டவுன் முன்னாடி போகும், வால்யூம் அப் பின்னாடி போகும்';

  @override
  String get readerBookmarks => 'புக்மார்க்ஸ்';

  @override
  String get readerBookmarkAdd => 'புக்மார்க் சேர்';

  @override
  String get readerBookmarkRemove => 'புக்மார்க்கை நீக்கு';

  @override
  String get readerBookmarksEmpty => 'இன்னும் புக்மார்க்ஸ் இல்ல';

  @override
  String readerBookmarkPage(int page, int total) {
    return '$total-ல பேஜ் $page';
  }

  @override
  String get readerAutoScroll => 'ஆட்டோ ஸ்க்ரோல்';

  @override
  String get readerAutoScrollStop => 'ஆட்டோ ஸ்க்ரோலை நிறுத்து';

  @override
  String get readerAutoScrollSpeed => 'ஆட்டோ ஸ்க்ரோல் ஸ்பீட்';

  @override
  String get readerAutoScrollSpeedDesc =>
      'பேஜ்ஸ் தானா எவ்ளோ வேகமா ஸ்க்ரோல் ஆகணும் அல்லது திரும்பணும்';

  @override
  String get readerKeepOn => 'ஸ்கிரீனை ஆன்லயே வை';

  @override
  String get readerKeepOnDesc => 'படிக்கும்போது ஸ்கிரீன் ஆஃப் ஆகாம பாத்துக்கோ';

  @override
  String get readerOrientation => 'ஓரியன்டேஷன்';

  @override
  String get readerOrientationFree => 'ஃப்ரீ';

  @override
  String get readerOrientationPortrait => 'போர்ட்ரெய்ட்';

  @override
  String get readerOrientationLandscape => 'லேண்ட்ஸ்கேப்';

  @override
  String get readerSaveProgress => 'புரோகிரஸை சேவ் பண்ணு';

  @override
  String get readerSaveProgressDesc =>
      'உன் பேஜை நினைவுல வச்சு சாப்டர்ஸை படிச்சதா மார்க் பண்ணு';

  @override
  String get readerReset => 'ரீடர் செட்டிங்ஸை ரீசெட் பண்ணு';

  @override
  String get readerResetDesc => 'டீஃபால்ட்ஸ்க்கு திரும்பு';

  @override
  String get novelSize => 'டெக்ஸ்ட் சைஸ்';

  @override
  String get novelFont => 'ஃபாண்ட்';

  @override
  String get novelLineHeight => 'லைன் ஹைட்';

  @override
  String get novelParagraph => 'பாராகிராஃப் ஸ்பேசிங்';

  @override
  String get novelMargin => 'மார்ஜின்ஸ்';

  @override
  String get novelTheme => 'ரீடர் தீம்';

  @override
  String get novelThemeApp => 'ஆப் தீம்';

  @override
  String get novelThemeLight => 'லைட்';

  @override
  String get novelThemeSepia => 'செபியா';

  @override
  String get novelThemeDark => 'டார்க்';

  @override
  String get novelThemeBlack => 'பிளாக்';

  @override
  String get novelJustify => 'ஜஸ்டிஃபை டெக்ஸ்ட்';

  @override
  String get novelJustifyDesc => 'டெக்ஸ்ட்டை ரெண்டு ஓரத்துக்கும் அலைன் பண்ணு';

  @override
  String get trackProgressTitle => 'புரோகிரஸை சேவ் பண்ணவா?';

  @override
  String trackProgressAnime(String name) {
    return 'நீ பாக்கும்போது உன் லிஸ்ட்ல $name-ஐ டிராக் பண்ணவா? லோக்கலா வச்சுக்க \"இந்த டிவைஸ் மட்டும்\"-ஐ எடு, இல்லன்னா எதுவும் சேவ் பண்ண வேணாம்னா இல்ல-ன்னு சொல்லு.';
  }

  @override
  String trackProgressManga(String name) {
    return 'நீ ஒரு சாப்டர் முடிக்கும்போது உன் லிஸ்ட்ல $name-ஐ டிராக் பண்ணவா? லோக்கலா வச்சுக்க \"இந்த டிவைஸ் மட்டும்\"-ஐ எடு, இல்லன்னா எதுவும் சேவ் பண்ண வேணாம்னா இல்ல-ன்னு சொல்லு.';
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
  String get trackProgressYes => 'சேமி';

  @override
  String get trackProgressReset =>
      'இந்த டைப்புக்கு சேவ் புரோகிரஸ் ப்ராம்ப்ட் ரீசெட் ஆயிடுச்சு, மறுபடி கேக்கும்';

  @override
  String get trackProgressNo => 'இல்ல';

  @override
  String get trackProgressOff => 'ஆஃப்';

  @override
  String get trackProgressLocal => 'இந்த டிவைஸ் மட்டும்';

  @override
  String get trackProgressSettingAnime => 'அனிமே புரோகிரஸை டிராக் பண்ணு';

  @override
  String get trackProgressSettingManga =>
      'மங்கா & நாவல் புரோகிரஸை டிராக் பண்ணு';

  @override
  String get trackProgressSettingDesc =>
      'ஒரு எபிசோடை திறக்கும்போது அல்லது சாப்டர் முடிக்கும்போது என்ன பண்ணணும்';

  @override
  String get trackProgressAsk => 'கேளு';

  @override
  String get trackProgressAlways => 'எப்பவும்';

  @override
  String get dantotsuImport => 'Dantotsu-ல இருந்து இம்போர்ட் பண்ணு';

  @override
  String get dantotsuImportDesc =>
      'Dantotsu செட்டிங்ஸ் பேக்கப்பை படி (.ani, அல்லது என்கிரிப்ட் ஆன .sani)';

  @override
  String get dantotsuPick => 'ஒரு Dantotsu பேக்கப்பை தேர்ந்தெடு';

  @override
  String get dantotsuNothing => 'இந்த ஃபைல்ல இம்போர்ட் பண்ண எதுவும் இல்ல';

  @override
  String get dantotsuApply => 'செலக்ட் பண்ணதை இம்போர்ட் பண்ணு';

  @override
  String dantotsuDone(int done, int total) {
    return '$total-ல $done இம்போர்ட் ஆயிடுச்சு';
  }

  @override
  String get dantotsuGroupAccounts => 'அக்கவுண்ட்ஸ்';

  @override
  String get dantotsuGroupAppearance => 'தோற்றம்';

  @override
  String get dantotsuGroupExtensions => 'எக்ஸ்டென்ஷன்ஸ்';

  @override
  String get dantotsuGroupApp => 'ஆப்';

  @override
  String get dantotsuGroupPlayer => 'பிளேயர்';

  @override
  String get dantotsuAnilist => 'AniList லாகின்';

  @override
  String get dantotsuMal => 'MyAnimeList லாகின்';

  @override
  String get dantotsuDiscord => 'Discord Rich Presence டோக்கன்';

  @override
  String get dantotsuTheme => 'தீம்';

  @override
  String get dantotsuReposAnime => 'அனிமே எக்ஸ்டென்ஷன் ரெப்போசிட்டரீஸ்';

  @override
  String get dantotsuReposManga => 'மங்கா எக்ஸ்டென்ஷன் ரெப்போசிட்டரீஸ்';

  @override
  String get dantotsuReposNovel => 'நாவல் எக்ஸ்டென்ஷன் ரெப்போசிட்டரீஸ்';

  @override
  String get dantotsuUpdates => 'அப்டேட் செக்';

  @override
  String get dantotsuComments => 'கமெண்ட்ஸ்';

  @override
  String get dantotsuActivity => 'AniList நோட்டிபிகேஷன் போலிங்';

  @override
  String get dantotsuDns => 'DNS ப்ரொவைடர்';

  @override
  String get dantotsuPlayer => 'பிளேயர் ஸ்பீட் & சப்டைட்டில் கலர்ஸ்';

  @override
  String get dantotsuWarning =>
      'இந்த ஃபைல்ல லாகின் டோக்கன்ஸ் இருக்கு. பிரைவேட்டா வச்சுக்கோ.';

  @override
  String get novelIndent => 'பாராகிராஃப்ஸை இண்டென்ட் பண்ணு';

  @override
  String get novelIndentDesc =>
      'ஒவ்வொரு பாராகிராஃபையும் ஃபர்ஸ்ட்-லைன் இண்டென்ட்டோட ஆரம்பி';

  @override
  String get novelLetterSpacing => 'லெட்டர் ஸ்பேசிங்';

  @override
  String get novelSectionTranslate => 'டிரான்ஸ்லேஷன்';

  @override
  String get sectionExperimental => 'எக்ஸ்பெரிமெண்டல்';

  @override
  String get kitsuGraphqlDetail => 'ஃபாஸ்டர் டிடெயில் பேஜஸ் (GraphQL)';

  @override
  String get kitsuGraphqlDetailDesc =>
      'ஒரு டைட்டிலை அதோட கேரக்டர்ஸ், ஸ்டாஃப் & உன் என்ட்ரியோட ஒரே ரெக்வெஸ்ட்ல லோட் பண்ணு';

  @override
  String get togetherTitle => 'சேர்ந்து பாரு';

  @override
  String get togetherIntro =>
      'உன் ஃப்ரெண்ட் அனுப்பின ரூம் லிங்கை பேஸ்ட் பண்ணு. உடனே ஜாயின் ஆயிடுவ, அவங்க பாக்க ஆரம்பிச்சதும் பிளேயர் ஓபன் ஆகும்.';

  @override
  String get togetherName => 'உன் பேரு';

  @override
  String get togetherConnecting => 'கனெக்ட் ஆகுது…';

  @override
  String get togetherLeave => 'ரூம்ல இருந்து வெளியேறு';

  @override
  String get togetherYou => 'நீ';

  @override
  String get togetherNoChat => 'இன்னும் மெசேஜ் இல்ல';

  @override
  String get togetherChatHint => 'மெசேஜ்';

  @override
  String get togetherCopyInvite => 'இன்வைட் காப்பி பண்ணு';

  @override
  String get togetherShareInvite => 'Share invite';

  @override
  String togetherShareText(String link) {
    return 'Watch with me on Dartotsu: $link';
  }

  @override
  String get togetherInviteCopied => 'சர்வர் & ரூம் காப்பி ஆயிடுச்சு';

  @override
  String get togetherConnectionLost => 'கனெக்ஷன் போயிடுச்சு';

  @override
  String togetherConnectedTo(String room) {
    return '$room-ல கனெக்ட் ஆயிடுச்சு';
  }

  @override
  String togetherFailed(String error) {
    return 'கனெக்ட் ஆக முடியல: $error';
  }

  @override
  String togetherJoined(String name) {
    return '$name ஜாயின் ஆனாங்க';
  }

  @override
  String togetherLeft(String name) {
    return '$name வெளியேறினாங்க';
  }

  @override
  String togetherPaused(String name) {
    return '$name பாஸ் பண்ணாங்க';
  }

  @override
  String togetherResumed(String name) {
    return '$name ரிசூம் பண்ணாங்க';
  }

  @override
  String togetherSeeked(String name, String time) {
    return '$name $time-க்கு தாவினாங்க';
  }

  @override
  String get togetherFollowFailed =>
      'ஹோஸ்ட்டோட எபிசோடை திறக்க முடியல. நீயே திற.';

  @override
  String get togetherJoinRole => 'ஒரு ரூம்ல ஜாயின் ஆகு';

  @override
  String get togetherOpenHost => 'ஹோஸ்ட்டோட எபிசோடை திற';

  @override
  String get togetherShowChat => 'லைவ் சாட்டை காட்டு';

  @override
  String get togetherWaitingHost =>
      'ஹோஸ்ட் ஒரு எபிசோடை ஸ்டார்ட் பண்ணுறதுக்காக வெயிட் பண்றோம்';

  @override
  String get togetherRoomLink => 'ரூம் லிங்க்';

  @override
  String get togetherBadLink => 'இது ரூம் லிங்க் இல்ல';

  @override
  String get togetherHostClosed => 'ஹோஸ்ட் ரூமை மூடிட்டாங்க';

  @override
  String get togetherNowPlaying => 'இப்போ ப்ளே ஆகுது';

  @override
  String togetherWatchingCount(int count) {
    return '$count பேர் பாக்குறாங்க';
  }

  @override
  String togetherWantsPause(String user) {
    return '$user பாஸ் பண்ண விரும்புறாங்க';
  }

  @override
  String togetherWantsResume(String user) {
    return '$user ரிசூம் பண்ண விரும்புறாங்க';
  }

  @override
  String get togetherChip => 'டுகெதர்';

  @override
  String get togetherSettingsDesc => 'லிங்க் வச்சு ஃப்ரெண்டோட ரூம்ல ஜாயின் ஆகு';

  @override
  String get novelBilingual => 'ஒரிஜினல் & டிரான்ஸ்லேஷனை காட்டு';

  @override
  String get novelBilingualDesc =>
      'ஒவ்வொரு பாராகிராஃபும் ஒரிஜினல் டெக்ஸ்ட்டை அதுக்கு கீழ டிரான்ஸ்லேஷனோட காட்டும்';

  @override
  String get novelTranslateTo => 'இதுக்கு டிரான்ஸ்லேட் பண்ணு';

  @override
  String get novelTranslateOff => 'ஆஃப்';

  @override
  String get novelSectionSpeech => 'டெக்ஸ்ட் டு ஸ்பீச்';

  @override
  String get novelSpeechRate => 'ஸ்பீச் ஸ்பீட்';

  @override
  String get novelSpeechPitch => 'ஸ்பீச் பிட்ச்';

  @override
  String get novelSpeak => 'சத்தமா படி';

  @override
  String get novelSpeakStop => 'சத்தமா படிக்கிறதை நிறுத்து';

  @override
  String get novelTranslate => 'சாப்டரை டிரான்ஸ்லேட் பண்ணு';

  @override
  String get novelTranslateShowOriginal => 'ஒரிஜினலை காட்டு';

  @override
  String novelTranslateFailed(String error) {
    return 'டிரான்ஸ்லேஷன் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String get novelSpeechUnavailable => 'இந்த டிவைஸ்ல டெக்ஸ்ட் டு ஸ்பீச் இல்ல';

  @override
  String get novelSpeechVoice => 'வாய்ஸ்';

  @override
  String get novelSpeechVoiceDefault => 'சிஸ்டம் டீஃபால்ட்';

  @override
  String get novelSpeakPrevious => 'முந்தின லைன்';

  @override
  String get novelSpeakNext => 'அடுத்த லைன்';

  @override
  String get novelTapPaging => 'பேஜ் திருப்ப எட்ஜஸை டேப் பண்ணு';

  @override
  String get novelTapPagingDesc =>
      'ஒரு பேஜ் ஸ்க்ரோல் பண்ண இடது அல்லது வலது பக்கத்தை டேப் பண்ணு, நடுவுல கன்ட்ரோல்ஸ் வரும்';

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
    return '$count நிமிஷம் மீதி';
  }

  @override
  String get novelBold => 'போல்டு டெக்ஸ்ட்';

  @override
  String get novelBoldDesc => 'கனமான வெயிட்டை யூஸ் பண்ணு';

  @override
  String readerFinishedChapter(String chapter) {
    return '$chapter முடிஞ்சது';
  }

  @override
  String readerNextUp(String chapter) {
    return 'அடுத்தது: $chapter';
  }

  @override
  String readerPreviousUp(String chapter) {
    return 'முந்தினது: $chapter';
  }

  @override
  String get readerNoPages => 'இந்த சாப்டர்ல பேஜஸ் இல்ல';

  @override
  String get readerLoadingPages => 'பேஜஸ் லோட் ஆகுது…';

  @override
  String get readerSlowPage => 'இந்த பேஜ் இன்னும் லோட் ஆகுது…';

  @override
  String get readerPageFailed => 'இந்த பேஜை லோட் பண்ண முடியல';

  @override
  String get playerShowComments => 'கமெண்ட்ஸ் காட்டு';

  @override
  String get playerHideComments => 'கமெண்ட்ஸை மறை';

  @override
  String get playerSubtitles => 'சப்டைட்டில்ஸ்';

  @override
  String get playerSubtitlesOff => 'சப்டைட்டில்ஸ் ஆஃப்';

  @override
  String get playerAudio => 'ஆடியோ';

  @override
  String get playerAddSubtitle => 'சப்டைட்டில் ஃபைல் சேர்';

  @override
  String get playerAddAudio => 'ஆடியோ ஃபைல் சேர்';

  @override
  String get playerChapters => 'சாப்டர்ஸ்';

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
  String get playerNoChapters => 'சாப்டர்ஸ் இல்ல';

  @override
  String get playerTimestamp => 'டைம்ஸ்டாம்ப்';

  @override
  String get playerAutoPlayDelay => 'அடுத்த எபிசோட் கவுண்ட்டவுன்';

  @override
  String get playerWatchedAt => 'இதுல பாத்ததா கணக்கு வை';

  @override
  String playerNextIn(int seconds) {
    return 'அடுத்த எபிசோட் ${seconds}s-ல';
  }

  @override
  String get playerPlayNow => 'இப்பவே ப்ளே பண்ணு';

  @override
  String playerAutoSkipOn(String name) {
    return '$name: இந்த டைட்டிலுக்கு தானா ஸ்கிப் ஆகும்';
  }

  @override
  String playerAutoSkipOff(String name) {
    return '$name: இந்த டைட்டிலுக்கு தானா ஸ்கிப் ஆகாது';
  }

  @override
  String get playerAudioLanguage => 'விருப்பமான ஆடியோ மொழி';

  @override
  String get playerLanguageOrderHint =>
      'மொழிகளை கமாவால பிரி. கிடைக்கிற முதல் ஒன்னு யூஸ் ஆகும்.';

  @override
  String get playerPip => 'பிக்சர் இன் பிக்சர்';

  @override
  String get playerAutoPip => 'வெளியேறும்போது பிக்சர் இன் பிக்சர்';

  @override
  String get playerAutoPipDesc =>
      'ஆப்பை விட்டு வெளியேறும்போது சின்ன விண்டோவுல தொடர்ந்து ப்ளே ஆகட்டும்';

  @override
  String playerAutoPlaying(String title) {
    return 'அடுத்து $title ப்ளே ஆகுது…';
  }

  @override
  String playerShadersFailed(String error) {
    return 'ஷேடர்ஸை இன்ஸ்டால் பண்ண முடியல: $error';
  }

  @override
  String playerChapter(int number) {
    return 'சாப்டர் $number';
  }

  @override
  String get playerPerTitle => 'இந்த டைட்டிலுக்கு மட்டும்';

  @override
  String get playerPerTitleDesc =>
      'இந்த ஆப்ஷன்ஸை இந்த டைட்டிலுக்கு வச்சுக்கோ, உன் டீஃபால்ட்ஸை தொடாத';

  @override
  String get playerSwapGestures => 'ஸ்வைப் பக்கங்களை மாற்று';

  @override
  String get playerSwapGesturesDesc =>
      'இடதுபுறம் பிரைட்னஸ், வலதுபுறம் வால்யூம்';

  @override
  String get playerOpenBig => 'பெரிய வியூவில் திற';

  @override
  String get playerOpenBigDesc =>
      'எபிசோட் லிஸ்ட் இல்லாமல் பிளேயரை நேரடியாக ஃபுல்ஸ்கிரீனில் தொடங்கும்';

  @override
  String get playerPauseOnBlur => 'ஃபோகஸ் போனால் பாஸ்';

  @override
  String get playerPauseOnBlurDesc =>
      'நோட்டிபிகேஷன் பேனல் போல ஆப்பை மறைத்தால் பாஸ் ஆகும், திரும்பி வந்ததும் தொடரும்';

  @override
  String get playerAudioOutput => 'ஆடியோ அவுட்புட்';

  @override
  String get fontAppDefault => 'ஆப் ஃபாண்ட்';

  @override
  String get fontImport => 'ஃபாண்ட் இம்போர்ட் பண்ணு';

  @override
  String get fontSample => 'The quick brown fox jumps over the lazy dog';

  @override
  String get playerSubtitleDelay => 'சப்டைட்டில் டிலே';

  @override
  String get playerAudioDelay => 'ஆடியோ டிலே';

  @override
  String get playerDelayReset => 'ரீசெட்';

  @override
  String get playerOnlineSubtitles => 'ஆன்லைன் சப்டைட்டில்ஸ்';

  @override
  String get playerOnlineSearchHint => 'டைட்டில் & எபிசோட்';

  @override
  String get playerOnlineNone => 'சப்டைட்டில்ஸ் கிடைக்கல';

  @override
  String playerOnlineFailed(String error) {
    return 'சப்டைட்டில் சர்ச் ஃபெயில் ஆயிடுச்சு: $error';
  }

  @override
  String playerOnlineDownloadFailed(String error) {
    return 'இந்த சப்டைட்டிலை டவுன்லோட் பண்ண முடியல: $error';
  }

  @override
  String get playerOnlineMatch => 'இந்த ஃபைலோட மேட்ச் ஆகுது';

  @override
  String get playerOnlineEpisode => 'எபிசோட் மேட்ச்';

  @override
  String playerOnlineDownloads(int count) {
    return '$count டவுன்லோட்ஸ்';
  }

  @override
  String get playerSeekPreview => 'சீக் ப்ரிவியூ';

  @override
  String get playerSeekPreviewDesc =>
      'ஸ்க்ரப் பண்ணும்போது சீக் பாருக்கு மேல சின்ன ஃப்ரேம் ப்ரிவியூ காட்டு. ரெண்டாவது லோ ரெசல்யூஷன் டிகோடரை திறக்கும், அதனால ஸ்ட்ரீம்ஸ்ல எக்ஸ்ட்ரா டேட்டா செலவாகும்.';

  @override
  String get playerSettingsChip => 'செட்டிங்ஸ்';

  @override
  String get playerAudioDevice => 'ஆடியோ டிவைஸ்';

  @override
  String get settingsDownloads => 'டவுன்லோட்ஸ்';

  @override
  String get settingsDownloadsDesc =>
      'ஆஃப்லைன் எபிசோட்ஸ், க்யூ & ஆஃப்லைன் மோட்';

  @override
  String get downloadsTitle => 'டவுன்லோட்ஸ்';

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
      'க்யூவையும் இந்த டிவைஸ்ல சேவ் ஆன எல்லாத்தையும் பாரு';

  @override
  String get downloadTitle => 'டவுன்லோட்';

  @override
  String get downloadAlready =>
      'ஏற்கனவே டவுன்லோட் ஆயிடுச்சு இல்லன்னா க்யூல இருக்கு';

  @override
  String get downloadPickStream => 'எந்த ஸ்ட்ரீமை டவுன்லோட் பண்ணணும்?';

  @override
  String get downloadPickSubtitle => 'எந்த சப்டைட்டிலை டவுன்லோட் பண்ணணும்?';

  @override
  String get downloadPickAudio => 'எந்த ஆடியோ டிராக்கை டவுன்லோட் பண்ணணும்?';

  @override
  String get downloadNoAudio => 'எக்ஸ்ட்ரா ஆடியோ இல்ல';

  @override
  String get downloadAudio => 'ஆடியோ';

  @override
  String get downloadNoSubtitle => 'சப்டைட்டில் இல்ல';

  @override
  String get downloadHlsNeedsFfmpeg =>
      'இந்த ஸ்ட்ரீம் ஒரு HLS பிளேலிஸ்ட். இதை டவுன்லோட் பண்ண FFmpeg ஆட்-ஆன் வேணும்.';

  @override
  String get downloadSourceMissing => 'இந்த எபிசோடோட சோர்ஸ் இன்ஸ்டால் ஆகல';

  @override
  String get downloadWaitingConnection => 'கனெக்ஷனுக்காக வெயிட் பண்றோம்';

  @override
  String get downloadSubtitles => 'சப்டைட்டில்ஸ்';

  @override
  String get downloadDownloaded => 'டவுன்லோட் ஆனது';

  @override
  String get downloadOffline => 'ஆஃப்லைன்';

  @override
  String get downloadDelete => 'டவுன்லோடை டெலீட் பண்ணு';

  @override
  String get downloadCancel => 'கேன்சல்';

  @override
  String get downloadPause => 'பாஸ்';

  @override
  String get downloadPaused => 'பாஸ் ஆனது';

  @override
  String get downloadResume => 'ரிசூம்';

  @override
  String get downloadPauseAll => 'எல்லாத்தையும் பாஸ் பண்ணு';

  @override
  String get downloadResumeAll => 'எல்லாத்தையும் ரிசூம் பண்ணு';

  @override
  String get downloadQueuedState => 'க்யூல வெயிட் பண்றோம்';

  @override
  String get downloadResolving => 'ஸ்ட்ரீமை எடுக்குறேன்…';

  @override
  String get downloadUsedFallback =>
      'மேட்ச் ஆகற ஸ்ட்ரீம் இல்ல, முதலாவதை யூஸ் பண்ணேன்';

  @override
  String get downloadTabQueue => 'க்யூ';

  @override
  String get downloadTabDone => 'முடிஞ்சது';

  @override
  String get downloadTabFailed => 'ஃபெயில் ஆனது';

  @override
  String get downloadEmptyQueue => 'எதுவும் டவுன்லோட் ஆகல';

  @override
  String get downloadEmptyDone => 'இன்னும் எதுவும் டவுன்லோட் ஆகல';

  @override
  String get downloadEmptyFailed => 'ஃபெயில் ஆன டவுன்லோட்ஸ் இல்ல';

  @override
  String get downloadNext => 'அடுத்த எபிசோட்';

  @override
  String downloadNextN(int count) {
    return 'அடுத்த $count எபிசோட்ஸ்';
  }

  @override
  String downloadUnwatched(int count) {
    return 'பாக்காத எல்லாம் ($count)';
  }

  @override
  String downloadRange(int count) {
    return 'இந்த ரேஞ்ச் ($count)';
  }

  @override
  String downloadAll(int count) {
    return 'எல்லா எபிசோட்ஸும் ($count)';
  }

  @override
  String downloadQueued(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count எபிசோட்ஸ் க்யூல இருக்கு',
      one: '1 எபிசோட் க்யூல இருக்கு',
    );
    return '$_temp0';
  }

  @override
  String downloadFinished(String name) {
    return '$name டவுன்லோட் ஆயிடுச்சு';
  }

  @override
  String downloadFailedBody(String name) {
    return '$name டவுன்லோட் ஃபெயில் ஆயிடுச்சு';
  }

  @override
  String downloadStorage(String size) {
    return 'டவுன்லோட்ஸ் $size யூஸ் பண்ணுது';
  }

  @override
  String get downloadQueueHeader => 'க்யூ';

  @override
  String get downloadParallel => 'ஒரே நேரத்துல டவுன்லோட்ஸ்';

  @override
  String get downloadParallelDesc =>
      'ஒன்னொன்னா இல்லன்னா பலதையும் சேர்த்து டவுன்லோட் பண்ணு';

  @override
  String get downloadOneByOne => 'ஒன்னொன்னா';

  @override
  String get downloadNotifications => 'டவுன்லோட் நோட்டிபிகேஷன்ஸ்';

  @override
  String get downloadNotificationsDesc =>
      'சிஸ்டம் சப்போர்ட் பண்ணா லைவ் புரோகிரஸ், இல்லன்னா டவுன்லோட் முடிஞ்சதும் ஒரு நோட்';

  @override
  String get downloadNotifyLive => 'லைவ்';

  @override
  String get downloadNotifyDone => 'முடிஞ்சதும்';

  @override
  String get downloadNotifyOff => 'ஆஃப்';

  @override
  String get downloadInfoFile =>
      'ஒவ்வொரு டவுன்லோடுக்கு பக்கத்துலயும் இன்ஃபோ ஃபைல் எழுது';

  @override
  String get downloadInfoFileDesc =>
      'ஸ்ட்ரீம், குவாலிட்டி, சப்டைட்டில் & ஸ்கிப் டைம்ஸை சின்ன .json ஃபைலா சேவ் பண்ணும்';

  @override
  String get offlineHeader => 'ஆஃப்லைன்';

  @override
  String get offlineModeDesc =>
      'ஆட்டோ-னா கனெக்ஷன் இல்லாம ஆப் ஸ்டார்ட் ஆகும்போது மட்டும் ஆஃப்லைன் போகும். எப்பவும்-னா நீ மாத்தும் வரை ஆஃப்லைன்ல இருக்கும்.';

  @override
  String get offlineModeOff => 'ஆஃப்';

  @override
  String get offlineModeAlways => 'எப்பவும்';

  @override
  String get offlineModeOn =>
      'ஆஃப்லைன் மோட் ஆன்ல இருக்கு. மாற்றங்கள் இங்க சேவ் ஆகும், நீ ஆன்லைன் வந்ததும் அனுப்பப்படும்.';

  @override
  String get offlineSaved =>
      'இந்த டிவைஸ்ல சேவ் ஆயிடுச்சு, நீ ஆன்லைன் வந்ததும் சிங்க் ஆகும்';

  @override
  String offlineSynced(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மாற்றங்கள் சிங்க் ஆயிடுச்சு',
      one: '1 மாற்றம் சிங்க் ஆயிடுச்சு',
    );
    return '$_temp0';
  }

  @override
  String offlinePending(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count மாற்றங்கள் சிங்க்கிற்கு வெயிட்டிங்',
      one: '1 மாற்றம் சிங்க்கிற்கு வெயிட்டிங்',
    );
    return '$_temp0';
  }

  @override
  String get offlinePendingTitle =>
      'சிங்க்கிற்கு வெயிட்டிங்ல இருக்க மாற்றங்கள்';

  @override
  String get offlinePendingNone => 'எதுவும் வெயிட்டிங்ல இல்ல';

  @override
  String get offlineSyncNow => 'இப்பவே சிங்க் பண்ணு';

  @override
  String get offlineDiscard => 'தூக்கிப் போடு';

  @override
  String get downloadNotOffline =>
      'இந்த எபிசோட் டவுன்லோட் ஆகல, அதனால ஆஃப்லைன்ல கிடைக்காது';

  @override
  String get offlineModeChip => 'ஆஃப்லைன்';

  @override
  String get downloadNextChapter => 'அடுத்த சாப்டர்';

  @override
  String downloadNextChapters(int count) {
    return 'அடுத்த $count சாப்டர்ஸ்';
  }

  @override
  String downloadUnread(int count) {
    return 'படிக்காத எல்லாம் ($count)';
  }

  @override
  String downloadAllChapters(int count) {
    return 'எல்லா சாப்டர்ஸும் ($count)';
  }

  @override
  String downloadPagesProgress(int done, int total) {
    return '$done / $total பேஜஸ்';
  }

  @override
  String downloadPagesCount(int count) {
    return '$count பேஜஸ்';
  }

  @override
  String get downloadFfmpegTitle => 'FFmpeg ஆட்-ஆன் வேணும்';

  @override
  String get downloadFfmpegBody =>
      'இந்த ஸ்ட்ரீம் ஒரு HLS பிளேலிஸ்ட். FFmpeg ஆட்-ஆன் அதோட பீசஸை ஒரே mp4 ஃபைலா சேர்க்கும். அது இல்லன்னா பீசஸ் ஒரு எபிசோட் ஃபோல்டர்ல இருக்கும், அங்கிருந்தே ப்ளே ஆகும்.';

  @override
  String get downloadFfmpegInstall => 'இன்ஸ்டால்';

  @override
  String get downloadFfmpegInstalling =>
      'FFmpeg இன்ஸ்டால் ஆகுது, கொஞ்ச நேரம் ஆகலாம்…';

  @override
  String get downloadFinishing => 'பீசஸை ஒரே ஃபைலா சேர்க்கிறேன்…';

  @override
  String downloadSegmentsProgress(int done, int total) {
    return '$done / $total பார்ட்ஸ்';
  }

  @override
  String get downloadTorrentNoFile =>
      'டொரண்ட்ல டவுன்லோட் பண்ண வீடியோ ஃபைல் இல்ல';

  @override
  String downloadServiceText(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ஐட்டம்ஸை டவுன்லோட் பண்றேன்',
      one: '1 ஐட்டத்தை டவுன்லோட் பண்றேன்',
    );
    return '$_temp0';
  }

  @override
  String get downloadAutoDelete => 'பாத்த டவுன்லோட்ஸை டெலீட் பண்ணு';

  @override
  String get downloadAutoDeleteDesc =>
      'உன் புரோகிரஸ் அந்த எபிசோட் அல்லது சாப்டரை அடைஞ்சதும் டவுன்லோடை நீக்கும்';

  @override
  String get downloadConnections => 'ஒரு டவுன்லோடுக்கு கனெக்ஷன்ஸ்';

  @override
  String get downloadConnectionsDesc =>
      'பெரிய ஃபைலை ஒரே நேரத்துல எடுக்கப்படும் பார்ட்ஸா பிரிக்கும். சில சர்வர்ஸ் இதை லிமிட் பண்ணும்.';

  @override
  String get downloadPlayChoice => 'இதுல இருந்து ப்ளே பண்ணு';

  @override
  String get downloadPlayLocalDesc => 'இந்த டிவைஸ்ல சேவ் ஆன ஃபைல்';

  @override
  String get downloadPlayStream => 'ஆன்லைன்ல ஸ்ட்ரீம் பண்ணு';

  @override
  String get downloadPlayStreamDesc => 'சோர்ஸ்ல இருந்து எபிசோடை லோட் பண்ணு';

  @override
  String get offlineFeedTitle => 'இந்த டிவைஸ்ல டவுன்லோட் ஆனது';

  @override
  String get offlineFeedEmpty =>
      'ஆன்லைன்ல இருக்கும்போது எதையாவது டவுன்லோட் பண்ணு, இங்க வரும்';

  @override
  String get offlineEnabled => 'ஆஃப்லைன் மோட் ஆன்ல இருக்கு';

  @override
  String get offlineDisabled => 'ஆஃப்லைன் மோட் ஆஃப்ல இருக்கு';

  @override
  String get downloadReadChoice => 'இதுல இருந்து படி';

  @override
  String get downloadReadLocalDesc => 'இந்த டிவைஸ்ல சேவ் ஆன பேஜஸ்';

  @override
  String get downloadReadOnline => 'ஆன்லைன்ல படி';

  @override
  String get downloadReadOnlineDesc => 'சோர்ஸ்ல இருந்து சாப்டரை லோட் பண்ணு';

  @override
  String downloadDeleteConfirm(String name) {
    return 'இந்த டிவைஸ்ல இருந்து $name-ஐ டெலீட் பண்ணவா?';
  }

  @override
  String downloadCancelConfirm(String name) {
    return '$name டவுன்லோடை கேன்சல் பண்ணவா? ஏற்கனவே டவுன்லோட் ஆனது டெலீட் ஆயிடும்.';
  }

  @override
  String get downloadFfmpegFolder => 'ஃபோல்டரா வச்சுக்கோ';

  @override
  String offlineDiscardConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'அனுப்பாத $count மாற்றங்களை தூக்கி எறியவா? இதை திரும்ப எடுக்க முடியாது.',
      one: 'அனுப்பாத மாற்றத்தை தூக்கி எறியவா? இதை திரும்ப எடுக்க முடியாது.',
    );
    return '$_temp0';
  }

  @override
  String get downloadWaitingWifi => 'Wi-Fi-க்காக வெயிட் பண்றோம்';

  @override
  String get downloadWaitingMetered => 'மீட்டர்டு கனெக்ஷன்ல பாஸ் ஆயிருக்கு';

  @override
  String get downloadWifiOnly => 'Wi-Fi மட்டும்';

  @override
  String get downloadWifiOnlyDesc =>
      'மொபைல் டேட்டால இருக்கும்போது டவுன்லோட்ஸ் வெயிட் பண்ணும்';

  @override
  String get downloadMetered => 'மீட்டர்டு கனெக்ஷன்ஸ்ல பாஸ் பண்ணு';

  @override
  String get downloadMeteredDesc =>
      'உன் டிவைஸ் மீட்டர்டுனு மார்க் பண்ற Wi-Fi-லயும் வெயிட் பண்ணும்';

  @override
  String get downloadSpeedLimit => 'ஸ்பீட் லிமிட்';

  @override
  String get downloadSpeedLimitDesc => 'மொத்த டவுன்லோட் ஸ்பீடுக்கு கேப் போடும்';

  @override
  String get downloadUnlimited => 'அன்லிமிடெட்';

  @override
  String get downloadMoveToTop => 'மேல நகர்த்து';

  @override
  String downloadSwarm(int seeds, int peers) {
    return '$seeds சீட்ஸ் · $peers பீர்ஸ்';
  }

  @override
  String get downloadTorrentFile => 'எந்த ஃபைல்?';

  @override
  String get downloadTorrentAuto => 'எபிசோடை தானா மேட்ச் பண்ணு';

  @override
  String get downloadTorrentLoading => 'டொரண்ட்டை படிக்கிறேன்…';

  @override
  String get watchAutoSource => 'அடுத்த சோர்ஸுக்கு தானா மாறு';

  @override
  String get watchAutoSourceDesc =>
      'சோர்ஸ்ல டைட்டில் கிடைக்கலன்னா அல்லது லோட் ஆகலன்னா, இன்ஸ்டால் ஆன அடுத்த சோர்ஸை ட்ரை பண்ணு';

  @override
  String get extensionTest => 'எக்ஸ்டென்ஷன்ஸை டெஸ்ட் பண்ணு';

  @override
  String get extensionTestCopy =>
      'ஃபெயிலியர்ஸையும் அவற்றின் லாக்ஸையும் காப்பி பண்ணு';

  @override
  String get extensionTestQuery => 'சர்ச் டெர்ம்';

  @override
  String get extensionTestRun => 'ரன்';

  @override
  String get extensionTestStop => 'ஸ்டாப்';

  @override
  String get extensionTestNone =>
      'இந்த டைப்புல இன்ஸ்டால் ஆன எக்ஸ்டென்ஷன்ஸ் இல்ல';

  @override
  String get extensionTestNotRun => 'இன்னும் டெஸ்ட் பண்ணல';

  @override
  String get extensionTestSearch => 'தேடு';

  @override
  String get extensionTestDetail => 'டிடெயில்ஸ்';

  @override
  String get extensionTestUnits => 'எபிசோட்ஸ் / சாப்டர்ஸ்';

  @override
  String get extensionTestLinks => 'ஸ்ட்ரீம்ஸ் / பேஜஸ்';

  @override
  String extensionTestFailedAt(String step) {
    return '$step-ல ஃபெயில் ஆச்சு';
  }

  @override
  String extensionTestSummary(int done, int total, int passed, int failed) {
    return '$total-ல $done டெஸ்ட் ஆச்சு · $passed பாஸ் · $failed ஃபெயில்';
  }

  @override
  String get extensionTestCopyLogs =>
      'ஃபுல் லாக்ஸோட எல்லாத்தையும் காப்பி பண்ணு';

  @override
  String get onboardingFeaturesTitle => 'எல்லாம் ஒரே இடத்துல';

  @override
  String get onboardingFeaturesBody =>
      'நீ டிராக் பண்ற, பாக்கற, படிக்கற எல்லாமே, ஆப்ஸ் மாத்தி மாத்தி போகாம.';

  @override
  String get onboardingFeatureTrack => 'எல்லாத்தையும் டிராக் பண்ணு';

  @override
  String get onboardingFeatureTrackDesc =>
      'AniList, MyAnimeList, Simkl, Kitsu & MangaBaka-ல லிஸ்ட்ஸ், புரோகிரஸ் & ஸ்கோர்ஸ்.';

  @override
  String get onboardingFeatureWatch => 'பாரு & படி';

  @override
  String get onboardingFeatureWatchDesc =>
      'எக்ஸ்டென்ஷன்ஸை இன்ஸ்டால் பண்ணி அனிமே ஸ்ட்ரீம் பண்ணு இல்லன்னா மங்கா & நாவல்ஸை ஆப்புலயே படி.';

  @override
  String get onboardingFeatureOffline => 'ஆஃப்லைன் எடுத்துட்டு போ';

  @override
  String get onboardingFeatureOfflineDesc =>
      'எபிசோட்ஸ் & சாப்டர்ஸை டவுன்லோட் பண்ணி, கனெக்ஷன் இல்லாமலும் தொடரு.';

  @override
  String get onboardingFeatureSync => 'லிஸ்ட்ஸை சிங்க்ல வச்சுக்கோ';

  @override
  String get onboardingFeatureSyncDesc =>
      'உன் லிஸ்ட்டை சர்வீசஸ் முழுக்க மிரர் பண்ணு, இல்லன்னா எது முன்னாடி இருக்கோ அது ஜெயிக்கட்டும்.';

  @override
  String get onboardingServices => 'இவற்றோட வேலை செய்யும்';

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
